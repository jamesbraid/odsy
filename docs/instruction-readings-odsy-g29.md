# Instruction readings from hostfacts

Each entry records selected software behavior from its exact binary range. The readings are established for those binaries and do not establish hardware behavior.

- `DeliverEventsToWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10184890 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10184890-0x10185414 (2948 bytes).
  It occupies 2948 bytes.
  2 such `lbu` accesses load 1 byte from a1 (arg1 at entry) +0x0, including `lbu` at 0x10184898, `lbu` at 0x10184ba8.
  3 such `lw` accesses load 4 bytes from abs 0x102d20e0 (redirectedEvents), including `lw` at 0x101848ec, `lw` at 0x10184aac, `lw` at 0x10184c9c.
  24 such `lw` accesses load 4 bytes from ?, including `lw` at 0x101848fc, `lw` at 0x101849dc, `lw` at 0x101849fc.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x78, including `lw` at 0x10184914, `lw` at 0x10184d50, `lw` at 0x10184e0c.
  4 such `lw` accesses load 4 bytes from [a0+120] +0x30, including `lw` at 0x10184924, `lw` at 0x10184e18, `lw` at 0x10184ffc.
  The `lw` at 0x10184938 loads 4 bytes from ((a5 << 0x2) + [[a0+120]+48]) +0x24.
  4 such `lw` accesses load 4 bytes from [[a0+120]+48] +0x6c, including `lw` at 0x1018494c, `lw` at 0x10184e40, `lw` at 0x10185020.
  8 such `lw` accesses load 4 bytes from sym(clients) +0x0, including `lw` at 0x10184970, `lw` at 0x101849ec, `lw` at 0x10184da0.
  The `lbu` at 0x101849a0 loads 1 byte from table(0x102cc360) +0x0.
  The `lw` at 0x10184a3c loads 4 bytes from sym(serverClient) +0x0.
  4 such `lw` accesses load 4 bytes from sym(inputInfo) +0x10, including `lw` at 0x10184b88, `lw` at 0x10184f08, `lw` at 0x10184f84.
  The `lw` at 0x10184b8c loads 4 bytes from a4 (arg4 at entry) +0x4.
  The `lw` at 0x10184ba4 loads 4 bytes from sym(inputInfo) +0x4.
  The `lbu` at 0x10184bb0 loads 1 byte from a1 (arg1 at entry) +0x1f.
  The `lbu` at 0x10184be0 loads 1 byte from [sym(inputInfo)+4] +0x4c.
  The `lbu` at 0x10184bf0 loads 1 byte from ?.
  The `lbu` at 0x10184c00 loads 1 byte from [sym(inputInfo)+16] +0x4c.
  The `lw` at 0x10184c08 loads 4 bytes from sym(inputInfo) +0xc.
  The `lbu` at 0x10184c0c loads 1 byte from [sym(inputInfo)+12] +0x4c.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xc, including `lw` at 0x10184c38, `lw` at 0x10184f64, `lw` at 0x10184f9c.
  4 such `sb` accesses store 1 byte to a1 (arg1 at entry) +0x1, including `sb` at 0x10184c48, `sb` at 0x10184fb4, `sb` at 0x10185280.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0x10184cb4, `sh` at 0x10184cf8.
  The `lw` at 0x10184ce8 loads 4 bytes from [0x102c5f80] +0x1c.
  The `sw` at 0x10184cf0 stores 4 bytes to [0x102c5f80] +0x1c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x68, including `lw` at 0x10184d58, `lw` at 0x10184d78, `lw` at 0x10184df4.
  2 such `lw` accesses load 4 bytes from [a0+120] +0x10, including `lw` at 0x10184d5c, `lw` at 0x10184ec4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0x10184d90, `lw` at 0x10184ddc.
  3 such `lw` accesses load 4 bytes from ([[a0+120]+48] + (a5 << 0x2)) +0x24, including `lw` at 0x10184e30, `lw` at 0x10185010, `lw` at 0x10185080.
  2 such `lw` accesses load 4 bytes from [sym(inputInfo)+16] +0x94, including `lw` at 0x10184f0c, `lw` at 0x10184f90.
  The `sw` at 0x10184f14 stores 4 bytes to [[sym(inputInfo)+16]+148] +0x8.
  2 such `lw` accesses load 4 bytes from abs 0x94, including `lw` at 0x10184f54, `lw` at 0x10184fcc.
  2 such `lw` accesses load 4 bytes from [0x94] +0x8, including `lw` at 0x10184f58, `lw` at 0x10184fd0.
  The `lw` at 0x10184f94 loads 4 bytes from [[sym(inputInfo)+16]+148] +0x8.
  The `lw` at 0x10184fa0 loads 4 bytes from [[[sym(inputInfo)+16]+148]+8] +0x4.
  3 such `lw` accesses load 4 bytes from [a0+120] +0x14, including `lw` at 0x10185144, `lw` at 0x101852b8, `lw` at 0x101852fc.
  The `lw` at 0x101851ec loads 4 bytes from [sym(inputInfo)+16] +0x88.
  The `ld` at 0x101851f8 loads 8 bytes from sym(currentTime) +0x0.
  The `jal` at 0x101849d4 calls WriteEventsToClient [0x10180840] with a0=?, a1=a2 at entry (arg2), a2=a1 at entry (arg1), a3=[a1]:1, a5=table(0x102cc0d0), a6=0xb.
  The `jal` at 0x10184b3c calls CheckDeviceGrabAndHintWindow [0x100d7be0] with a0=a0 at entry (arg0), a1=[a1]:1, a2=a1 at entry (arg1), a3=a4 at entry (arg4).
  The `jal` at 0x10184dc0 calls TryClientEvents [0x10136730] with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0+104], a4=a3 at entry (arg3), a5=a4 at entry (arg4).
  The `jalr` at 0x101851fc calls (unknown callee) with a0=[sym(inputInfo)+16], a1=sp-216, a2=[sym(currentTime)]:8, a3=0x1, a4=0x20000000, a6=0x7fffffff.
  The `beq` branch at 0x101848c0 targets 0x10184d40, is taken when at(=[0x102c5f78]) == 0, and falls through when at(=[0x102c5f78]) != 0.
  The `blez` branch at 0x101848d0 targets 0x10184900, is taken when t8(=[0x102c5f74]) <= 0 (signed), and falls through when t8(=[0x102c5f74]) > 0 (signed).
  The `beq` branch at 0x101848f0 targets 0x10184904, is taken when t0(?) == s0(=a1), and falls through when t0(?) != s0(=a1).
  The `bnel` branch at 0x101848f8 targets 0x101848f0, is taken when v0(?) != t1(=table(0x102d0bb0)), and falls through when v0(?) == t1(=table(0x102d0bb0)); its branch-likely delay slot `lw t0,5424(v0)` at 0x101848fc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x10184904 targets 0x10184d78, is taken when s4(=a3) == 0, and falls through when s4(=a3) != 0.
  The `beq` branch at 0x1018490c targets 0x10184eb8, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x1018491c targets 0x10184e64, is taken when a0(=[a0+120]) == 0, and falls through when a0(=[a0+120]) != 0.
  The `beq` branch at 0x10184928 targets 0x10184e68, is taken when v0(=[[a0+120]+48]) == 0, and falls through when v0(=[[a0+120]+48]) != 0.
  The `beq` branch at 0x10184940 targets 0x10184e64, is taken when (t8(=[((a5 << 0x2) + [[a0+120]+48])+36]) & s4(=a3)) == 0, and falls through when (t8(=[((a5 << 0x2) + [[a0+120]+48])+36]) & s4(=a3)) != 0.
  The `beq` branch at 0x10184950 targets 0x10184cfc, is taken when s3(=[[[a0+120]+48]+108]) == 0, and falls through when s3(=[[[a0+120]+48]+108]) != 0.
  The `beq` branch at 0x10184998 targets 0x10184a2c and is always taken.
  The `beq` branch at 0x101849b0 targets 0x101849c4, is taken when (t8(=entry(0x102cc360)) & ra(?)) == 0, and falls through when (t8(=entry(0x102cc360)) & ra(?)) != 0.
  The `beq` branch at 0x10184a24 targets 0x10184ad8, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `beq` branch at 0x10184a58 targets 0x10184a74, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x10184a60 targets 0x10184a74, is taken when t2(=[sym(serverClient)]) == a0(?), and falls through when t2(=[sym(serverClient)]) != a0(?).
  The `beq` branch at 0x10184a6c targets 0x10184b74, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x10184a74 targets 0x10184a20, is taken when v0(=[0x102c5f78]) == 0, and falls through when v0(=[0x102c5f78]) != 0.
  The `beq` branch at 0x10184a7c targets 0x10184a20, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x10184a84 targets 0x10184a20, is taken when t2(=[sym(serverClient)]) == a0(?), and falls through when t2(=[sym(serverClient)]) != a0(?).
  The `bne` branch at 0x10184a90 targets 0x10184a20, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `blez` branch at 0x10184aa0 targets 0x10184ac0, is taken when t8(=[0x102c5f74]) <= 0 (signed), and falls through when t8(=[0x102c5f74]) > 0 (signed).
  The `beq` branch at 0x10184ab0 targets 0x10184ef0, is taken when t0(?) == s0(=a1), and falls through when t0(?) != s0(=a1).
  The `bnel` branch at 0x10184ab8 targets 0x10184ab0, is taken when v0(?) != t2(=table(0x102d0bb0)), and falls through when v0(?) == t2(=table(0x102d0bb0)); its branch-likely delay slot `lw t0,5424(v0)` at 0x10184abc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x10184ac0 targets 0x10185170, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x10184ac8 targets 0x10184b7c, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x10184ad0 targets 0x10184a24 and is always taken.
  The `beq` branch at 0x10184adc targets 0x10184f18, is taken when s6(=[a1]:1) == t3(=0x4), and falls through when s6(=[a1]:1) != t3(=0x4).
  The `beq` branch at 0x10184b00 targets 0x10184f00, is taken when s6(=[a1]:1) == a0(=0x6), and falls through when s6(=[a1]:1) != a0(=0x6).
  The `beq` branch at 0x10184b08 targets 0x10184b18, is taken when t8(=[0x102c6084]) == s6(=[a1]:1), and falls through when t8(=[0x102c6084]) != s6(=[a1]:1).
  The `bne` branch at 0x10184b10 targets 0x10184b48, is taken when t9(=[0x102c5f70]) != s6(=[a1]:1), and falls through when t9(=[0x102c5f70]) == s6(=[a1]:1).
  The `beq` branch at 0x10184b18 targets 0x10184e94, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10184b48 targets 0x10184e90, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10184b74 targets 0x10184a74, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x10184b84 targets 0x10184b9c, is taken when a4 == 0, and falls through when a4 != 0.
  The `bne` branch at 0x10184b98 targets 0x10184d30, is taken when t9(?) != ra(?), and falls through when t9(?) == ra(?).
  The `beq` branch at 0x10184bb4 targets 0x10184d14, is taken when v1(=[0x102c6080]) == a2(=0x1), and falls through when v1(=[0x102c6080]) != a2(=0x1).
  The `beq` branch at 0x10184bc4 targets 0x10184f7c, is taken when at(=0x6) == a3(=[a1]:1), and falls through when at(=0x6) != a3(=[a1]:1).
  The `bne` branch at 0x10184bcc targets 0x10184c4c, is taken when a2(=[0x102c6084]) != a3(=[a1]:1), and falls through when a2(=[0x102c6084]) == a3(=[a1]:1).
  The `beq` branch at 0x10184bd4 targets 0x10184fb8, is taken when ra(=[sym(inputInfo)+4]) == 0, and falls through when ra(=[sym(inputInfo)+4]) != 0.
  The `beq` branch at 0x10184bdc targets 0x10184bf4 and is always taken.
  The `beq` branch at 0x10184be8 targets 0x10184fb8, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x10184bf4 targets 0x10184be4, is taken when v1(?) != t0(?), and falls through when v1(?) == t0(?).
  The `beq` branch at 0x10184c04 targets 0x10184f44, is taken when a6(=[[sym(inputInfo)+16]+76]:1) == t0(?), and falls through when a6(=[[sym(inputInfo)+16]+76]:1) != t0(?).
  The `beq` branch at 0x10184c10 targets 0x10184f44, is taken when t8(=[[sym(inputInfo)+12]+76]:1) == t0(?), and falls through when t8(=[[sym(inputInfo)+12]+76]:1) != t0(?).
  The `bne` branch at 0x10184c18 targets 0x10184c4c, is taken when a2(=[0x102c6084]) != a3(=[a1]:1), and falls through when a2(=[0x102c6084]) == a3(=[a1]:1).
  The `beq` branch at 0x10184c20 targets 0x1018527c, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x10184c30 targets 0x10184f64, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x10184c3c targets 0x10184f74, is taken when t2(=[a1+12]) == 0, and falls through when t2(=[a1+12]) != 0.
  The `beq` branch at 0x10184c74 targets 0x101849a0, is taken when a6(=0xb) == a7(?), and falls through when a6(=0xb) != a7(?).
  The `beq` branch at 0x10184c7c targets 0x101849a0, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x10184c8c targets 0x10184cc4 and is always taken.
  The `beq` branch at 0x10184ca0 targets 0x10184ce0, is taken when t0(?) == t1(?), and falls through when t0(?) != t1(?).
  The `bnel` branch at 0x10184ca8 targets 0x10184ca0, is taken when v0(?) != t2(=table(0x102d0bb0)), and falls through when v0(?) == t2(=table(0x102d0bb0)); its branch-likely delay slot `lw t1,5424(v0)` at 0x10184cac runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x10184cbc targets 0x101849a0, is taken when t0(?) == s2(=(a1 + (a2 << 0x5))), and falls through when t0(?) != s2(=(a1 + (a2 << 0x5))).
  The `beq` branch at 0x10184cc4 targets 0x10184cb0, is taken when t3(=[0x102c5f78]) == 0, and falls through when t3(=[0x102c5f78]) != 0.
  The `bgtz` branch at 0x10184ccc targets 0x10184c9c, is taken when t8(=[0x102c5f74]) > 0 (signed), and falls through when t8(=[0x102c5f74]) <= 0 (signed).
  The `beq` branch at 0x10184cd4 targets 0x10184cb4 and is always taken.
  The `beq` branch at 0x10184ce0 targets 0x10184cb0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x10184cf4 targets 0x10184cb8 and is always taken.
  The `beq` branch at 0x10184d0c targets 0x10184b00 and is always taken.
  The `bne` branch at 0x10184d18 targets 0x10184bbc, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x10184d20 targets 0x10184bbc, is taken when a6(=0xc) == a3(=[a1]:1), and falls through when a6(=0xc) != a3(=[a1]:1).
  The `beq` branch at 0x10184d28 targets 0x10184bc0, is taken when a7(=0x16) == a3(=[a1]:1), and falls through when a7(=0x16) != a3(=[a1]:1).
  The `beq` branch at 0x10184d38 targets 0x10184a20 and is always taken.
  The `beq` branch at 0x10184d40 targets 0x10184d78, is taken when a3 == 0, and falls through when a3 != 0.
  The `bne` branch at 0x10184d48 targets 0x10184914, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x10184d54 targets 0x1018538c, is taken when a0(=[a0+120]) == 0, and falls through when a0(=[a0+120]) != 0.
  The `bne` branch at 0x10184d68 targets 0x10184ed8, is taken when (s4(=a3) & t2(=([[a0+120]+16] | [a0+104]))) != 0, and falls through when (s4(=a3) & t2(=([[a0+120]+16] | [a0+104]))) == 0.
  The `beq` branch at 0x10184d70 targets 0x101850e4 and is always taken.
  The `beq` branch at 0x10184dcc targets 0x10184fe4, is taken when v0(=ret(TryClientEvents)) == 0, and falls through when v0(=ret(TryClientEvents)) != 0.
  The `blez` branch at 0x10184dd4 targets 0x10185054, is taken when v0(=ret(TryClientEvents)) <= 0 (signed), and falls through when v0(=ret(TryClientEvents)) > 0 (signed).
  The `beq` branch at 0x10184dfc targets 0x10185108, is taken when s4(=a3) == 0, and falls through when s4(=a3) != 0.
  The `beq` branch at 0x10184e08 targets 0x1018513c, is taken when (s6(=[a1]:1) & 0x40) == 0, and falls through when (s6(=[a1]:1) & 0x40) != 0.
  The `beq` branch at 0x10184e10 targets 0x10184e68, is taken when a0(=[a0+120]) == 0, and falls through when a0(=[a0+120]) != 0.
  The `beq` branch at 0x10184e1c targets 0x10184e68, is taken when a1(=[[a0+120]+48]) == 0, and falls through when a1(=[[a0+120]+48]) != 0.
  The `beq` branch at 0x10184e38 targets 0x10184e64, is taken when (a0(=[([[a0+120]+48] + (a5 << 0x2))+36]) & s4(=a3)) == 0, and falls through when (a0(=[([[a0+120]+48] + (a5 << 0x2))+36]) & s4(=a3)) != 0.
  The `beq` branch at 0x10184e48 targets 0x1018520c, is taken when t8(=[[[a0+120]+48]+108]) == 0, and falls through when t8(=[[[a0+120]+48]+108]) != 0.
  The `beq` branch at 0x10184e5c targets 0x10184974 and is always taken.
  The `beq` branch at 0x10184ebc targets 0x101850c4, is taken when a0(=[a0+120]) == 0, and falls through when a0(=[a0+120]) != 0.
  The `beq` branch at 0x10184ed0 targets 0x101850d0, is taken when (s4(=a3) & v1(=([[a0+120]+16] | [a0+104]))) == 0, and falls through when (s4(=a3) & v1(=([[a0+120]+16] | [a0+104]))) != 0.
  The `beq` branch at 0x10184ee8 targets 0x10184d90 and is always taken.
  The `bne` branch at 0x10184ef0 targets 0x10184b7c, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x10184ef8 targets 0x10184ac0 and is always taken.
  The `beq` branch at 0x10184f00 targets 0x10184b04, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10184f10 targets 0x10184b48 and is always taken.
  The `beq` branch at 0x10184f28 targets 0x1018522c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10184f30 targets 0x10185190, is taken when a4 == 0, and falls through when a4 != 0.
  The `beq` branch at 0x10184f3c targets 0x10184b00 and is always taken.
  The `bne` branch at 0x10184f44 targets 0x10184c4c, is taken when a2(=[0x102c6084]) != a3(=[a1]:1), and falls through when a2(=[0x102c6084]) == a3(=[a1]:1).
  The `beq` branch at 0x10184f4c targets 0x1018527c, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x10184f5c targets 0x10184c38, is taken when t0(=[[0x94]+8]) == 0, and falls through when t0(=[[0x94]+8]) != 0.
  The `bne` branch at 0x10184f6c targets 0x10184c44, is taken when t2(?) != t8(=[a1+12]), and falls through when t2(?) == t8(=[a1+12]).
  The `beq` branch at 0x10184f74 targets 0x10184a0c and is always taken.
  The `beq` branch at 0x10184f88 targets 0x10185294, is taken when (t1(?) & 0x80) == 0, and falls through when (t1(?) & 0x80) != 0.
  The `beq` branch at 0x10184f98 targets 0x10185284, is taken when t0(=[[[sym(inputInfo)+16]+148]+8]) == 0, and falls through when t0(=[[[sym(inputInfo)+16]+148]+8]) != 0.
  The `beq` branch at 0x10184fa4 targets 0x10184a08, is taken when t2(=[[[[sym(inputInfo)+16]+148]+8]+4]) == a5(=[a1+12]), and falls through when t2(=[[[[sym(inputInfo)+16]+148]+8]+4]) != a5(=[a1+12]).
  The `beq` branch at 0x10184fb0 targets 0x10184c4c and is always taken.
  The `bne` branch at 0x10184fb8 targets 0x10184c4c, is taken when a2(=[0x102c6084]) != a3(=[a1]:1), and falls through when a2(=[0x102c6084]) == a3(=[a1]:1).
  The `beq` branch at 0x10184fc4 targets 0x1018527c, is taken when (t8(=[0x102cac7c]) & t1(?)) == 0, and falls through when (t8(=[0x102cac7c]) & t1(?)) != 0.
  The `beq` branch at 0x10184fd4 targets 0x10184c38, is taken when t0(=[[0x94]+8]) == 0, and falls through when t0(=[[0x94]+8]) != 0.
  The `beq` branch at 0x10184fdc targets 0x10184f68 and is always taken.
  The `beq` branch at 0x10184fe4 targets 0x10184e8c, is taken when s4(=a3) == 0, and falls through when s4(=a3) != 0.
  The `beq` branch at 0x10184fec targets 0x101852b0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x10184ff4 targets 0x10184e68, is taken when a0(=[a0+120]) == 0, and falls through when a0(=[a0+120]) != 0.
  The `beq` branch at 0x10185000 targets 0x10184e64, is taken when a1(=[[a0+120]+48]) == 0, and falls through when a1(=[[a0+120]+48]) != 0.
  The `beq` branch at 0x10185018 targets 0x10184e64, is taken when (t2(=[([[a0+120]+48] + (a5 << 0x2))+36]) & s4(=a3)) == 0, and falls through when (t2(=[([[a0+120]+48] + (a5 << 0x2))+36]) & s4(=a3)) != 0.
  The `beq` branch at 0x10185028 targets 0x1018534c, is taken when t8(=[[[a0+120]+48]+108]) == 0, and falls through when t8(=[[[a0+120]+48]+108]) != 0.
  The `beq` branch at 0x1018504c targets 0x10184974 and is always taken.
  The `beq` branch at 0x10185054 targets 0x101852a4, is taken when s4(=a3) == 0, and falls through when s4(=a3) != 0.
  The `beq` branch at 0x1018505c targets 0x101852f4, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x10185064 targets 0x10184e68, is taken when a0(=[a0+120]) == 0, and falls through when a0(=[a0+120]) != 0.
  The `beq` branch at 0x10185070 targets 0x10184e64, is taken when a1(=[[a0+120]+48]) == 0, and falls through when a1(=[[a0+120]+48]) != 0.
  The `beq` branch at 0x10185088 targets 0x10184e64, is taken when (t9(=[([[a0+120]+48] + (a5 << 0x2))+36]) & s4(=a3)) == 0, and falls through when (t9(=[([[a0+120]+48] + (a5 << 0x2))+36]) & s4(=a3)) != 0.
  The `beq` branch at 0x10185098 targets 0x10185364, is taken when t8(=[[[a0+120]+48]+108]) == 0, and falls through when t8(=[[[a0+120]+48]+108]) != 0.
  The `beq` branch at 0x101850bc targets 0x10184974 and is always taken.
  The `bne` branch at 0x101850c8 targets 0x10184ed8, is taken when (a3(=[a0+104]) & s4(=a3)) != 0, and falls through when (a3(=[a0+104]) & s4(=a3)) == 0.
  The `bne` branch at 0x101850d8 targets 0x10184d90, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x1018510c targets 0x1018517c, is taken when s6(=[a1]:1) == t9(=0x4), and falls through when s6(=[a1]:1) != t9(=0x4).
  The `beq` branch at 0x10185114 targets 0x10185338, is taken when s6(=[a1]:1) == ra(=0x6), and falls through when s6(=[a1]:1) != ra(=0x6).
  The `beq` branch at 0x1018511c targets 0x1018512c, is taken when at(=[0x102c6084]) == s6(=[a1]:1), and falls through when at(=[0x102c6084]) != s6(=[a1]:1).
  The `bne` branch at 0x10185124 targets 0x1018529c, is taken when v1(=[0x102c5f70]) != s6(=[a1]:1), and falls through when v1(=[0x102c5f70]) == s6(=[a1]:1).
  The `beq` branch at 0x10185134 targets 0x10184b2c and is always taken.
  The `beq` branch at 0x1018513c targets 0x10185344, is taken when a0(=[a0+120]) == 0, and falls through when a0(=[a0+120]) != 0.
  The `beq` branch at 0x1018514c targets 0x10185234, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10185168 targets 0x10184974 and is always taken.
  The `beq` branch at 0x10185174 targets 0x10184ac8 and is always taken.
  The `bne` branch at 0x1018517c targets 0x10185114, is taken when a4 != 0, and falls through when a4 == 0.
  The `beq` branch at 0x10185204 targets 0x10184b48 and is always taken.
  The `beq` branch at 0x10185210 targets 0x10185380, is taken when s6(=[a1]:1) == a1(=0x4), and falls through when s6(=[a1]:1) != a1(=0x4).
  The `beq` branch at 0x10185224 targets 0x10184b00 and is always taken.
  The `beq` branch at 0x1018522c targets 0x10184b00 and is always taken.
  The `beq` branch at 0x10185238 targets 0x101853dc, is taken when s6(=[a1]:1) == a2(=0x4), and falls through when s6(=[a1]:1) != a2(=0x4).
  The `beq` branch at 0x10185250 targets 0x101853b4, is taken when s6(=[a1]:1) == a3(=0x6), and falls through when s6(=[a1]:1) != a3(=0x6).
  The `beq` branch at 0x10185258 targets 0x10185268, is taken when a5(=[0x102c6084]) == s6(=[a1]:1), and falls through when a5(=[0x102c6084]) != s6(=[a1]:1).
  The `bne` branch at 0x10185260 targets 0x10184b48, is taken when a6(=[0x102c5f70]) != s6(=[a1]:1), and falls through when a6(=[0x102c5f70]) == s6(=[a1]:1).
  The `beq` branch at 0x10185268 targets 0x10184e94, is taken when a1(=one of 0x0, 0x1) == 0, and falls through when a1(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x10185274 targets 0x10184b2c and is always taken.
  The `beq` branch at 0x1018527c targets 0x10184c4c and is always taken.
  The `bne` branch at 0x10185284 targets 0x10184fac, is taken when a5(=[a1+12]) != 0, and falls through when a5(=[a1+12]) == 0.
  The `beq` branch at 0x1018528c targets 0x10184a0c and is always taken.
  The `beq` branch at 0x10185294 targets 0x10184c4c and is always taken.
  The `beq` branch at 0x1018529c targets 0x10184b4c and is always taken.
  The `beq` branch at 0x101852a8 targets 0x10184e90 and is always taken.
  The `beq` branch at 0x101852b0 targets 0x10185404, is taken when a0(=[a0+120]) == 0, and falls through when a0(=[a0+120]) != 0.
  The `beq` branch at 0x101852c0 targets 0x101853a0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x101852ec targets 0x10184974 and is always taken.
  The `beq` branch at 0x101852f4 targets 0x1018540c, is taken when a0(=[a0+120]) == 0, and falls through when a0(=[a0+120]) != 0.
  The `beq` branch at 0x10185304 targets 0x101853c4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10185330 targets 0x10184974 and is always taken.
  The `beq` branch at 0x1018533c targets 0x10184f04 and is always taken.
  The `beq` branch at 0x10185344 targets 0x1018514c and is always taken.
  The `beq` branch at 0x1018535c targets 0x10184b00 and is always taken.
  The `beq` branch at 0x10185378 targets 0x10184b00 and is always taken.
  The `beq` branch at 0x10185384 targets 0x10184f30 and is always taken.
  The `bne` branch at 0x10185390 targets 0x10184ed8, is taken when (a3(=[a0+104]) & s4(=a3)) != 0, and falls through when (a3(=[a0+104]) & s4(=a3)) == 0.
  The `beq` branch at 0x10185398 targets 0x101850e4 and is always taken.
  The `beq` branch at 0x101853ac targets 0x1018524c and is always taken.
  The `bne` branch at 0x101853b4 targets 0x10184f08, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x101853bc targets 0x10185258 and is always taken.
  The `beq` branch at 0x101853d4 targets 0x1018524c and is always taken.
  The `bne` branch at 0x101853dc targets 0x101853f4, is taken when a4 != 0, and falls through when a4 == 0.
  The `beq` branch at 0x101853ec targets 0x10185190 and is always taken.
  The `beq` branch at 0x101853fc targets 0x1018524c and is always taken.
  The `beq` branch at 0x10185404 targets 0x101852c0 and is always taken.
  The `beq` branch at 0x1018540c targets 0x10185304 and is always taken.
  The return at 0x10184b6c has v0 = ?.
  The return at 0x10184e84 has v0 = 0x0.
  The return at 0x10184eb0 has v0 = one of ?, -0x1, 0x0.
  The return at 0x10185100 has v0 = 0x0.
  The instructions from 0x10184c94 to 0x10184c98 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x10184cdc to 0x10184cdc are not reached by any path from the entry, and their branches are not listed.
- `__GLwindow` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec696f8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xec696f8-0xec69780 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xec69708 loads 4 bytes from abs 0xecdfba0 (gl_inMoveDraw).
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xec69754, `lw` at 0xec69768.
  The `jalr` at 0xec6972c calls __iglooCloseMoveDrawFromTable [0xec8fc18] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xec69778).
  The `beq` branch at 0xec6970c targets 0xec6974c, is taken when t8(=[0xecdfba0]) == 0, and falls through when t8(=[0xecdfba0]) != 0.
  The `bne` branch at 0xec69758 targets 0xec69778, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `bne` branch at 0xec6976c targets 0xec69778, is taken when t8(?) != 0, and falls through when t8(?) == 0.
- `write_encoder_reg` in `usr/gfx/gfxinfo` at 0x10017380 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinfo`.
  Range: 0x10017380-0x10017400 (128 bytes).
  It occupies 128 bytes.
  The `sw` at 0x100173a0 stores 4 bytes to sym(a) +0xc.
  The `sw` at 0x100173a4 stores 4 bytes to sym(a) +0x0.
  The `sw` at 0x100173ac stores 4 bytes to sym(a) +0x8.
  The `lw` at 0x100173b4 loads 4 bytes from sym(ven_gfxfd) +0x0.
  The `sw` at 0x100173b8 stores 4 bytes to sym(a) +0x4.
  The `jalr` at 0x100173bc calls ioctl with a0=[sym(ven_gfxfd)], a1=0x2726, a2=sym(a), a3=a3 at entry (arg3).
  The `jalr` at 0x100173e4 calls perror with a0=0x10026be8, a1=?, a2=?, a3=?.
  The `jalr` at 0x100173f0 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `beq` branch at 0x100173c8 targets 0x100173dc, is taken when v0(=ret(ioctl)) == a0(=-0x1), and falls through when v0(=ret(ioctl)) != a0(=-0x1).
  The `beq` branch at 0x100173f8 targets 0x100173d0 and is always taken.
  The return at 0x100173d4 has v0 = one of ret(ioctl), ret(exit).
- `read_encoder_reg` in `usr/gfx/gfxinfo` at 0x10017400 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinfo`.
  Range: 0x10017400-0x10017478 (120 bytes).
  It occupies 120 bytes.
  The `sw` at 0x10017424 stores 4 bytes to sym(a) +0x0.
  The `lw` at 0x10017430 loads 4 bytes from sym(ven_gfxfd) +0x0.
  The `lw` at 0x1001744c loads 4 bytes from sym(a) +0x8.
  The `jalr` at 0x1001742c calls ioctl with a0=[sym(ven_gfxfd)], a1=0x2729, a2=sym(a), a3=a3 at entry (arg3).
  The `jalr` at 0x1001745c calls perror with a0=0x10026c18, a1=?, a2=?, a3=?.
  The `jalr` at 0x10017468 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10017438 targets 0x10017458, is taken when v0(=ret(ioctl)) == v1(=-0x1), and falls through when v0(=ret(ioctl)) != v1(=-0x1).
  The `beq` branch at 0x10017470 targets 0x10017444 and is always taken.
  The return at 0x10017450 has v0 = [sym(a)+8].
- `write_encoder_reg` in `usr/gfx/gfxinit` at 0x10017380 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10017380-0x10017400 (128 bytes).
  It occupies 128 bytes.
  The `sw` at 0x100173a0 stores 4 bytes to sym(a) +0xc.
  The `sw` at 0x100173a4 stores 4 bytes to sym(a) +0x0.
  The `sw` at 0x100173ac stores 4 bytes to sym(a) +0x8.
  The `lw` at 0x100173b4 loads 4 bytes from sym(ven_gfxfd) +0x0.
  The `sw` at 0x100173b8 stores 4 bytes to sym(a) +0x4.
  The `jalr` at 0x100173bc calls ioctl with a0=[sym(ven_gfxfd)], a1=0x2726, a2=sym(a), a3=a3 at entry (arg3).
  The `jalr` at 0x100173e4 calls perror with a0=0x10026be8, a1=?, a2=?, a3=?.
  The `jalr` at 0x100173f0 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `beq` branch at 0x100173c8 targets 0x100173dc, is taken when v0(=ret(ioctl)) == a0(=-0x1), and falls through when v0(=ret(ioctl)) != a0(=-0x1).
  The `beq` branch at 0x100173f8 targets 0x100173d0 and is always taken.
  The return at 0x100173d4 has v0 = one of ret(ioctl), ret(exit).
- `read_encoder_reg` in `usr/gfx/gfxinit` at 0x10017400 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10017400-0x10017478 (120 bytes).
  It occupies 120 bytes.
  The `sw` at 0x10017424 stores 4 bytes to sym(a) +0x0.
  The `lw` at 0x10017430 loads 4 bytes from sym(ven_gfxfd) +0x0.
  The `lw` at 0x1001744c loads 4 bytes from sym(a) +0x8.
  The `jalr` at 0x1001742c calls ioctl with a0=[sym(ven_gfxfd)], a1=0x2729, a2=sym(a), a3=a3 at entry (arg3).
  The `jalr` at 0x1001745c calls perror with a0=0x10026c18, a1=?, a2=?, a3=?.
  The `jalr` at 0x10017468 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10017438 targets 0x10017458, is taken when v0(=ret(ioctl)) == v1(=-0x1), and falls through when v0(=ret(ioctl)) != v1(=-0x1).
  The `beq` branch at 0x10017470 targets 0x10017444 and is always taken.
  The return at 0x10017450 has v0 = [sym(a)+8].
- `t1_RegionBounds` in `usr/lib32/libfm.so` at 0xee4a280 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libfm.so`.
  Range: 0xee4a280-0xee4a31c (156 bytes).
  It occupies 156 bytes.
  The `lh` at 0xee4a280 loads 2 bytes from a0 (arg0 at entry) +0x1a.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x16, including `lh` at 0xee4a284, `lh` at 0xee4a2d4.
  The `lh` at 0xee4a288 loads 2 bytes from a0 (arg0 at entry) +0x18.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x14, including `lh` at 0xee4a28c, `lh` at 0xee4a2d0.
  The `lw` at 0xee4a2c4 loads 4 bytes from sym(t1_Identity) +0x0.
  The `lw` at 0xee4a2c8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xee4a2dc loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `jalr` at 0xee4a2c0 calls t1_BoxPath with a0=[sym(t1_Identity)], a1=?, a2=?, a3=[a0+20]:2, a4=[a0+22]:2, a5=0x22e24.
  The `jalr` at 0xee4a2f0 calls t1_PathSegment with a0=0x15, a1=([a0+4] + ([a0+20]:2 << 0x10)), a2=([a0+8] + ([a0+22]:2 << 0x10)), a3=([a0+22]:2 << 0x10), a4=([a0+20]:2 << 0x10).
  The `jalr` at 0xee4a304 calls t1_Join with a0=ret(t1_PathSegment), a1=?, a2=?, a3=?.
  The return at 0xee4a314 has v0 = ret(t1_Join).
- `__GLconvolutionParameter` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda4c974 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda4c974-0xda4cc44 (720 bytes).
  It occupies 720 bytes.
  The `lw` at 0xda4c990 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda4c998 loads 4 bytes from abs 0x1010.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lw` at 0xda4ca50, `lw` at 0xda4cb24, `lw` at 0xda4cba8.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xda4ca68, `lwc1` at 0xda4cb20, `lwc1` at 0xda4cba4.
  The `sw` at 0xda4cafc stores 4 bytes to ([0x1010] + one of 0x304, 0x358, 0x3ac) +0x0.
  2 such `swc1` accesses store 4 bytes to ([0x1010] + one of 0x310, 0x364, 0x3b8) +0x0, including `swc1` at 0xda4cb34, `swc1` at 0xda4cb7c.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0xda4cb38, `lw` at 0xda4cbbc.
  2 such `swc1` accesses store 4 bytes to ([0x1010] + one of 0x314, 0x368, 0x3bc) +0x0, including `swc1` at 0xda4cb48, `swc1` at 0xda4cb84.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lw` at 0xda4cb4c, `lw` at 0xda4cbd0.
  2 such `swc1` accesses store 4 bytes to ([0x1010] + one of 0x318, 0x36c, 0x3c0) +0x0, including `swc1` at 0xda4cb5c, `swc1` at 0xda4cb8c.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lw` at 0xda4cb60, `lw` at 0xda4cbe4.
  2 such `swc1` accesses store 4 bytes to ([0x1010] + one of 0x31c, 0x370, 0x3c4) +0x0, including `swc1` at 0xda4cb74, `swc1` at 0xda4cb98.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda4cb80, `lwc1` at 0xda4cc04.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xda4cb88, `lwc1` at 0xda4cc0c.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lwc1` at 0xda4cb90, `lwc1` at 0xda4cc14.
  2 such `swc1` accesses store 4 bytes to ([0x1010] + one of 0x320, 0x374, 0x3c8) +0x0, including `swc1` at 0xda4cbb8, `swc1` at 0xda4cc00.
  2 such `swc1` accesses store 4 bytes to ([0x1010] + one of 0x324, 0x378, 0x3cc) +0x0, including `swc1` at 0xda4cbcc, `swc1` at 0xda4cc08.
  2 such `swc1` accesses store 4 bytes to ([0x1010] + one of 0x328, 0x37c, 0x3d0) +0x0, including `swc1` at 0xda4cbe0, `swc1` at 0xda4cc10.
  2 such `swc1` accesses store 4 bytes to ([0x1010] + one of 0x32c, 0x380, 0x3d4) +0x0, including `swc1` at 0xda4cbf8, `swc1` at 0xda4cc1c.
  The `jalr` at 0xda4c9ac calls __glSetError [0xda4b3d8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4ca00 calls __glSetError [0xda4b3d8] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4cb08 calls __glSetError [0xda4b3d8] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4cc28 calls __glSetError [0xda4b3d8] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bnel` branch at 0xda4c99c targets 0xda4c9c0, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1); its branch-likely delay slot `ori at,zero,0x8010` at 0xda4c9a0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda4c9b4 targets 0xda4cc34 and is always taken.
  The `beq` branch at 0xda4c9c0 targets 0xda4c9e0, is taken when a0 == at(=0x8010), and falls through when a0 != at(=0x8010).
  The `beq` branch at 0xda4c9c8 targets 0xda4c9e8, is taken when a0 == at(=0x8011), and falls through when a0 != at(=0x8011).
  The `beq` branch at 0xda4c9d0 targets 0xda4c9f0, is taken when a0 == at(=0x8012), and falls through when a0 != at(=0x8012).
  The `beq` branch at 0xda4c9d8 targets 0xda4c9f8 and is always taken.
  The `beq` branch at 0xda4c9e0 targets 0xda4ca10 and is always taken.
  The `beq` branch at 0xda4c9e8 targets 0xda4ca10 and is always taken.
  The `beq` branch at 0xda4c9f0 targets 0xda4ca10 and is always taken.
  The `beq` branch at 0xda4ca08 targets 0xda4cc34 and is always taken.
  The `beq` branch at 0xda4ca14 targets 0xda4ca34, is taken when a1 == at(=0x8013), and falls through when a1 != at(=0x8013).
  The `beq` branch at 0xda4ca1c targets 0xda4cb18, is taken when a1 == at(=0x8014), and falls through when a1 != at(=0x8014).
  The `beql` branch at 0xda4ca24 targets 0xda4cba0, is taken when a1 == at(=0x8015), and falls through when a1 != at(=0x8015); its branch-likely delay slot `addiu at,zero,5124` at 0xda4ca28 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda4ca2c targets 0xda4cc20 and is always taken.
  The `beq` branch at 0xda4ca38 targets 0xda4ca50, is taken when a3 == at(=0x1404), and falls through when a3 != at(=0x1404).
  The `beql` branch at 0xda4ca40 targets 0xda4ca60, is taken when a3 == at(=0x1406), and falls through when a3 != at(=0x1406); its branch-likely delay slot `cfc1 t8,$31` at 0xda4ca44 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda4ca48 targets 0xda4caec and is always taken.
  The `beq` branch at 0xda4ca54 targets 0xda4cae8 and is always taken.
  The `beql` branch at 0xda4ca80 targets 0xda4cad0, is taken when (t9(?) & 0x78) == 0, and falls through when (t9(?) & 0x78) != 0; its branch-likely delay slot `mfc1 t9,$f6` at 0xda4ca84 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda4caac targets 0xda4cac4, is taken when (t9(?) & 0x78) != 0, and falls through when (t9(?) & 0x78) == 0.
  The `beq` branch at 0xda4cabc targets 0xda4cadc and is always taken.
  The `beq` branch at 0xda4cac4 targets 0xda4cadc and is always taken.
  The `bltz` branch at 0xda4cad4 targets 0xda4cac4, is taken when t9(?) < 0 (signed), and falls through when t9(?) >= 0 (signed).
  The `bne` branch at 0xda4caf0 targets 0xda4cb00, is taken when t0(?) != v1(=0x8016), and falls through when t0(?) == v1(=0x8016).
  The `beq` branch at 0xda4caf8 targets 0xda4cc34 and is always taken.
  The `beq` branch at 0xda4cb10 targets 0xda4cc34 and is always taken.
  The `bnel` branch at 0xda4cb1c targets 0xda4cb7c, is taken when a3 != at(=0x1404), and falls through when a3 == at(=0x1404); its branch-likely delay slot `lwc1 $f16,0(a2)` at 0xda4cb20 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda4cb70 targets 0xda4cc34 and is always taken.
  The `beq` branch at 0xda4cb94 targets 0xda4cc34 and is always taken.
  The `bnel` branch at 0xda4cba0 targets 0xda4cc00, is taken when a3 != at(=0x1404), and falls through when a3 == at(=0x1404); its branch-likely delay slot `lwc1 $f16,0(a2)` at 0xda4cba4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda4cbf4 targets 0xda4cc34 and is always taken.
  The `beq` branch at 0xda4cc18 targets 0xda4cc34 and is always taken.
  The return at 0xda4cc3c has v0 = one of ret(__glSetError), ([0x1010] + one of 0x300, 0x354, 0x3a8).
  The instructions from 0xda4c9bc to 0xda4c9bc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda4ca5c to 0xda4ca5c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda4cacc to 0xda4cacc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda4cb78 to 0xda4cb78 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda4cb9c to 0xda4cb9c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda4cbfc to 0xda4cbfc are not reached by any path from the entry, and their branches are not listed.
- `__GLgetConvolutionParameter` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda4cdec (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda4cdec-0xda4d144 (856 bytes).
  It occupies 856 bytes.
  The `lw` at 0xda4ce08 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda4ce10 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda4cea8 loads 4 bytes from table(0xdaf1e24) +0x0.
  2 such `lw` accesses load 4 bytes from ([0x1010] + one of 0x308, 0x35c, 0x3b0) +0x0, including `lw` at 0xda4cee8, `lw` at 0xda4ceec.
  8 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0xda4cef4, `sw` at 0xda4cf34, `sw` at 0xda4cf64.
  8 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xda4cf1c, `swc1` at 0xda4cf4c, `swc1` at 0xda4cf7c.
  2 such `lw` accesses load 4 bytes from ([0x1010] + one of 0x340, 0x394, 0x3e8) +0x0, including `lw` at 0xda4cf28, `lw` at 0xda4cf2c.
  2 such `lw` accesses load 4 bytes from ([0x1010] + one of 0x344, 0x398, 0x3ec) +0x0, including `lw` at 0xda4cf58, `lw` at 0xda4cf5c.
  2 such `lw` accesses load 4 bytes from ([0x1010] + one of 0x348, 0x39c, 0x3f0) +0x0, including `lw` at 0xda4cf88, `lw` at 0xda4cf8c.
  2 such `lw` accesses load 4 bytes from ([0x1010] + one of 0x34c, 0x3a0, 0x3f4) +0x0, including `lw` at 0xda4cfb8, `lw` at 0xda4cfbc.
  2 such `lw` accesses load 4 bytes from ([0x1010] + one of 0x304, 0x358, 0x3ac) +0x0, including `lw` at 0xda4cfe8, `lw` at 0xda4cfec.
  2 such `lwc1` accesses load 4 bytes from ([0x1010] + one of 0x310, 0x364, 0x3b8) +0x0, including `lwc1` at 0xda4d028, `lwc1` at 0xda4d02c.
  2 such `lwc1` accesses load 4 bytes from ([0x1010] + one of 0x314, 0x368, 0x3bc) +0x0, including `lwc1` at 0xda4d040, `lwc1` at 0xda4d084.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `sw` at 0xda4d050, `sw` at 0xda4d0d0.
  2 such `lwc1` accesses load 4 bytes from ([0x1010] + one of 0x318, 0x36c, 0x3c0) +0x0, including `lwc1` at 0xda4d054, `lwc1` at 0xda4d08c.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `sw` at 0xda4d064, `sw` at 0xda4d0e4.
  2 such `lwc1` accesses load 4 bytes from ([0x1010] + one of 0x31c, 0x370, 0x3c4) +0x0, including `lwc1` at 0xda4d068, `lwc1` at 0xda4d094.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0xc, including `sw` at 0xda4d078, `sw` at 0xda4d0f8.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xda4d088, `swc1` at 0xda4d108.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0xda4d090, `swc1` at 0xda4d110.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0xc, including `swc1` at 0xda4d09c, `swc1` at 0xda4d11c.
  2 such `lwc1` accesses load 4 bytes from ([0x1010] + one of 0x320, 0x374, 0x3c8) +0x0, including `lwc1` at 0xda4d0a8, `lwc1` at 0xda4d0ac.
  2 such `lwc1` accesses load 4 bytes from ([0x1010] + one of 0x324, 0x378, 0x3cc) +0x0, including `lwc1` at 0xda4d0c0, `lwc1` at 0xda4d104.
  2 such `lwc1` accesses load 4 bytes from ([0x1010] + one of 0x328, 0x37c, 0x3d0) +0x0, including `lwc1` at 0xda4d0d4, `lwc1` at 0xda4d10c.
  2 such `lwc1` accesses load 4 bytes from ([0x1010] + one of 0x32c, 0x380, 0x3d4) +0x0, including `lwc1` at 0xda4d0e8, `lwc1` at 0xda4d114.
  The `jalr` at 0xda4ce24 calls __glSetError [0xda4b3d8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4ce74 calls __glSetError [0xda4b3d8] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4ced0 calls __glSetError [0xda4b3d8] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4d128 calls __glSetError [0xda4b3d8] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bnel` branch at 0xda4ce14 targets 0xda4ce38, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1); its branch-likely delay slot `ori at,zero,0x8010` at 0xda4ce18 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda4ce2c targets 0xda4d134 and is always taken.
  The `beq` branch at 0xda4ce38 targets 0xda4ce58, is taken when a0 == at(=0x8010), and falls through when a0 != at(=0x8010).
  The `beq` branch at 0xda4ce40 targets 0xda4ceb8, is taken when a0 == at(=0x8011), and falls through when a0 != at(=0x8011).
  The `beq` branch at 0xda4ce48 targets 0xda4cec0, is taken when a0 == at(=0x8012), and falls through when a0 != at(=0x8012).
  The `beq` branch at 0xda4ce50 targets 0xda4cec8 and is always taken.
  The `beq` branch at 0xda4ce5c targets 0xda4ce6c, is taken when a1 == at(=0x8019), and falls through when a1 != at(=0x8019).
  The `bne` branch at 0xda4ce64 targets 0xda4ce84, is taken when a1 != at(=0x801b), and falls through when a1 == at(=0x801b).
  The `beq` branch at 0xda4ce7c targets 0xda4d134 and is always taken.
  The `beq` branch at 0xda4ce94 targets 0xda4d120, is taken when t7(=a1-32787) >= 0x9 (unsigned), and falls through when t7(=a1-32787) < 0x9 (unsigned).
  The `beq` branch at 0xda4ceb8 targets 0xda4ce84 and is always taken.
  The `beq` branch at 0xda4cec0 targets 0xda4ce84 and is always taken.
  The `beq` branch at 0xda4ced8 targets 0xda4d134 and is always taken.
  The `bnel` branch at 0xda4cee4 targets 0xda4cefc, is taken when a3 != at(=0x1404), and falls through when a3 == at(=0x1404); its branch-likely delay slot `lw t9,8(v0)` at 0xda4cee8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda4cef0 targets 0xda4d134 and is always taken.
  The `bgez` branch at 0xda4cf04 targets 0xda4cf18, is taken when t9(?) >= 0 (signed), and falls through when t9(?) < 0 (signed).
  The `beq` branch at 0xda4cf18 targets 0xda4d134 and is always taken.
  The `bnel` branch at 0xda4cf24 targets 0xda4cf3c, is taken when a3 != at(=0x1404), and falls through when a3 == at(=0x1404); its branch-likely delay slot `lw t1,64(v0)` at 0xda4cf28 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda4cf30 targets 0xda4d134 and is always taken.
  The `beq` branch at 0xda4cf48 targets 0xda4d134 and is always taken.
  The `bnel` branch at 0xda4cf54 targets 0xda4cf6c, is taken when a3 != at(=0x1404), and falls through when a3 == at(=0x1404); its branch-likely delay slot `lw t3,68(v0)` at 0xda4cf58 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda4cf60 targets 0xda4d134 and is always taken.
  The `beq` branch at 0xda4cf78 targets 0xda4d134 and is always taken.
  The `bnel` branch at 0xda4cf84 targets 0xda4cf9c, is taken when a3 != at(=0x1404), and falls through when a3 == at(=0x1404); its branch-likely delay slot `lw t5,72(v0)` at 0xda4cf88 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda4cf90 targets 0xda4d134 and is always taken.
  The `beq` branch at 0xda4cfa8 targets 0xda4d134 and is always taken.
  The `bnel` branch at 0xda4cfb4 targets 0xda4cfcc, is taken when a3 != at(=0x1404), and falls through when a3 == at(=0x1404); its branch-likely delay slot `lw t7,76(v0)` at 0xda4cfb8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda4cfc0 targets 0xda4d134 and is always taken.
  The `beq` branch at 0xda4cfd8 targets 0xda4d134 and is always taken.
  The `bnel` branch at 0xda4cfe4 targets 0xda4cffc, is taken when a3 != at(=0x1404), and falls through when a3 == at(=0x1404); its branch-likely delay slot `lw t9,4(v0)` at 0xda4cfe8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda4cff0 targets 0xda4d134 and is always taken.
  The `bgez` branch at 0xda4d004 targets 0xda4d018, is taken when t9(?) >= 0 (signed), and falls through when t9(?) < 0 (signed).
  The `beq` branch at 0xda4d018 targets 0xda4d134 and is always taken.
  The `bnel` branch at 0xda4d024 targets 0xda4d080, is taken when a3 != at(=0x1404), and falls through when a3 == at(=0x1404); its branch-likely delay slot `lwc1 $f16,16(v0)` at 0xda4d028 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda4d074 targets 0xda4d134 and is always taken.
  The `beq` branch at 0xda4d098 targets 0xda4d134 and is always taken.
  The `bnel` branch at 0xda4d0a4 targets 0xda4d100, is taken when a3 != at(=0x1404), and falls through when a3 == at(=0x1404); its branch-likely delay slot `lwc1 $f16,32(v0)` at 0xda4d0a8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda4d0f4 targets 0xda4d134 and is always taken.
  The `beq` branch at 0xda4d118 targets 0xda4d134 and is always taken.
  The return at 0xda4d13c has v0 = one of ret(__glSetError), ([0x1010] + one of 0x300, 0x354, 0x3a8).
  The instructions from 0xda4ce34 to 0xda4ce34 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda4cef8 to 0xda4cef8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda4cf38 to 0xda4cf38 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda4cf68 to 0xda4cf68 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda4cf98 to 0xda4cf98 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda4cfc8 to 0xda4cfc8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda4cff8 to 0xda4cff8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda4d07c to 0xda4d07c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda4d0fc to 0xda4d0fc are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xda4ceb0 uses the jump table at 0xdaf1e24 with targets 0xda4cfe0, 0xda4d020, 0xda4d0a0, 0xda4d120, 0xda4cee0, 0xda4cf20, 0xda4cf50, 0xda4cf80, 0xda4cfb0.
  The indirect jump at 0xda4ceb0 uses the jump table at 0xdaf1e24 with targets 0xda4cfe0, 0xda4d020, 0xda4d0a0, 0xda4d120, 0xda4cee0, 0xda4cf20, 0xda4cf50, 0xda4cf80, 0xda4cfb0.
  The indirect jump at 0xda4ceb0 uses the jump table at 0xdaf1e24 with targets 0xda4cfe0, 0xda4d020, 0xda4d0a0, 0xda4d120, 0xda4cee0, 0xda4cf20, 0xda4cf50, 0xda4cf80, 0xda4cfb0.
- `__gllc_EvalCoord1f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac17f8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac17f8-0xdac186c (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xdac180c loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac183c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xdac1848 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xdac1820 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac1850 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac7af8, a3=?.
  The `beq` branch at 0xdac1830 targets 0xdac185c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac1864 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_EvalCoord1fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac186c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac186c-0xdac18e4 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xdac1884 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac18b0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lwc1` at 0xdac18bc loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xdac18c0 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xdac1894 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac18c8 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac7af8, a3=?.
  The `beq` branch at 0xdac18a4 targets 0xdac18d4, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac18dc has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_EvalCoord2d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac18e4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac18e4-0xdac196c (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xdac18f8 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac1930 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xdac1934 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sdc1` at 0xdac1940 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sdc1` at 0xdac1948 stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `jalr` at 0xdac1910 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac1950 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac7b34, a3=?.
  The `beq` branch at 0xdac1920 targets 0xdac195c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac1964 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_EvalCoord2dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac196c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac196c-0xdac19f4 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xdac1984 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac19b8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xdac19bc stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `ldc1` at 0xdac19c0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xdac19c8 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `ldc1` at 0xdac19cc loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sdc1` at 0xdac19d0 stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `jalr` at 0xdac1994 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac19d8 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac7b34, a3=?.
  The `beq` branch at 0xdac19a8 targets 0xdac19e4, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac19ec has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_EvalCoord2f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac19f4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac19f4-0xdac1a74 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xdac1a08 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac1a3c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xdac1a48 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xdac1a50 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xdac1a20 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac1a58 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac7b70, a3=?.
  The `beq` branch at 0xdac1a30 targets 0xdac1a64, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac1a6c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_EvalCoord2fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac1a74 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac1a74-0xdac1af4 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xdac1a8c loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac1abc stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lwc1` at 0xdac1ac0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xdac1ac8 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lwc1` at 0xdac1acc loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xdac1ad0 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xdac1a9c calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac1ad8 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac7b70, a3=?.
  The `beq` branch at 0xdac1ab0 targets 0xdac1ae4, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac1aec has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_EvalMesh1` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac1af4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac1af4-0xdac1b80 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xdac1b0c loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac1b40 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac1b4c stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xdac1b54 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xdac1b5c stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `jalr` at 0xdac1b24 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac1b64 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac7bac, a3=?.
  The `beq` branch at 0xdac1b34 targets 0xdac1b70, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac1b78 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_EvalPoint1` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac1b80 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac1b80-0xdac1bf4 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xdac1b98 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac1bc4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac1bd0 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xdac1ba8 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac1bd8 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac7bf8, a3=?.
  The `beq` branch at 0xdac1bb8 targets 0xdac1be4, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac1bec has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_EvalMesh2` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac1bf4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac1bf4-0xdac1c94 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xdac1c0c loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac1c44 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac1c50 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xdac1c58 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xdac1c60 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sw` at 0xdac1c68 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `sw` at 0xdac1c70 stores 4 bytes to ret(__glDlistAllocOp2) +0x20.
  The `jalr` at 0xdac1c28 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x14, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac1c78 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac7c38, a3=?.
  The `beq` branch at 0xdac1c38 targets 0xdac1c84, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac1c8c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_EvalPoint2` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac1c94 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac1c94-0xdac1d14 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xdac1cac loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac1cdc stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac1ce8 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xdac1cf0 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xdac1cc0 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac1cf8 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac7c90, a3=?.
  The `beq` branch at 0xdac1cd0 targets 0xdac1d04, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac1d0c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_AlphaFunc` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac1d14 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac1d14-0xdac1d94 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xdac1d2c loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac1d5c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac1d68 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xdac1d70 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xdac1d40 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac1d78 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac7cd8, a3=?.
  The `beq` branch at 0xdac1d50 targets 0xdac1d84, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac1d8c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_LogicOp` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac1e14 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac1e14-0xdac1e88 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xdac1e2c loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac1e58 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac1e64 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xdac1e3c calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac1e6c calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac7d68, a3=?.
  The `beq` branch at 0xdac1e4c targets 0xdac1e78, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac1e80 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_StencilFunc` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac1e88 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac1e88-0xdac1f14 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xdac1ea0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac1ed4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac1ee0 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xdac1ee8 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xdac1ef0 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `jalr` at 0xdac1eb8 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac1ef8 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac7da8, a3=?.
  The `beq` branch at 0xdac1ec8 targets 0xdac1f04, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac1f0c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_StencilOp` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac1f14 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac1f14-0xdac1fa0 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xdac1f2c loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac1f60 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac1f6c stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xdac1f74 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xdac1f7c stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `jalr` at 0xdac1f44 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac1f84 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac7df4, a3=?.
  The `beq` branch at 0xdac1f54 targets 0xdac1f90, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac1f98 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_DepthFunc` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac1fa0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac1fa0-0xdac2014 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xdac1fb8 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac1fe4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac1ff0 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xdac1fc8 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac1ff8 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac7e40, a3=?.
  The `beq` branch at 0xdac1fd8 targets 0xdac2004, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac200c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_DepthRange` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac250c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac250c-0xdac2594 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xdac2520 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac2558 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xdac255c stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sdc1` at 0xdac2568 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sdc1` at 0xdac2570 stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `jalr` at 0xdac2538 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac2578 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac8100, a3=?.
  The `beq` branch at 0xdac2548 targets 0xdac2584, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac258c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_Frustum` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac2594 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac2594-0xdac263c (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0xdac25a8 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac25e0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xdac25e4 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sdc1` at 0xdac25f0 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sdc1` at 0xdac25f8 stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sdc1` at 0xdac2600 stores 8 bytes to ret(__glDlistAllocOp2) +0x20.
  The `sdc1` at 0xdac2608 stores 8 bytes to ret(__glDlistAllocOp2) +0x28.
  The `sdc1` at 0xdac2610 stores 8 bytes to ret(__glDlistAllocOp2) +0x30.
  The `sdc1` at 0xdac2618 stores 8 bytes to ret(__glDlistAllocOp2) +0x38.
  The `jalr` at 0xdac25c0 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x30, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac2620 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac8144, a3=?.
  The `beq` branch at 0xdac25d0 targets 0xdac262c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac2634 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_LoadIdentity` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac263c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac263c-0xdac26a4 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xdac264c loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac267c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `jalr` at 0xdac2660 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac2688 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac81a8, a3=?.
  The `beq` branch at 0xdac2670 targets 0xdac2694, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac269c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_MatrixMode` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac27bc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac27bc-0xdac2830 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xdac27d4 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac2800 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac280c stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xdac27e4 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac2814 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac8258, a3=?.
  The `beq` branch at 0xdac27f4 targets 0xdac2820, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac2828 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_MultMatrixf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac2830 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac2830-0xdac28b8 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xdac2848 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac286c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `jalr` at 0xdac2858 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x40, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac2880 calls memcpy with a0=ret(__glDlistAllocOp2)+16, a1=a0 at entry (arg0), a2=0x40, a3=?.
  The `jalr` at 0xdac289c calls __glDlistAppendOp [0xda0b538] with a0=?, a1=?, a2=0xdac8298, a3=?.
  The `beq` branch at 0xdac2860 targets 0xdac28a8, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac28b0 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_MultMatrixd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac28b8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac28b8-0xdac2948 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xdac28d0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac28f8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xdac28fc stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `jalr` at 0xdac28e0 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x80, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac2910 calls memcpy with a0=ret(__glDlistAllocOp2)+16, a1=a0 at entry (arg0), a2=0x80, a3=?.
  The `jalr` at 0xdac292c calls __glDlistAppendOp [0xda0b538] with a0=?, a1=?, a2=0xdac82d4, a3=?.
  The `beq` branch at 0xdac28e8 targets 0xdac2938, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac2940 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_Ortho` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac2948 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac2948-0xdac29f0 (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0xdac295c loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac2994 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xdac2998 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sdc1` at 0xdac29a4 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sdc1` at 0xdac29ac stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sdc1` at 0xdac29b4 stores 8 bytes to ret(__glDlistAllocOp2) +0x20.
  The `sdc1` at 0xdac29bc stores 8 bytes to ret(__glDlistAllocOp2) +0x28.
  The `sdc1` at 0xdac29c4 stores 8 bytes to ret(__glDlistAllocOp2) +0x30.
  The `sdc1` at 0xdac29cc stores 8 bytes to ret(__glDlistAllocOp2) +0x38.
  The `jalr` at 0xdac2974 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x30, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac29d4 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac8310, a3=?.
  The `beq` branch at 0xdac2984 targets 0xdac29e0, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac29e8 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_PopMatrix` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac29f0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac29f0-0xdac2a58 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xdac2a00 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac2a30 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `jalr` at 0xdac2a14 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac2a3c calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac8374, a3=?.
  The `beq` branch at 0xdac2a24 targets 0xdac2a48, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac2a50 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_PushMatrix` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac2a58 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac2a58-0xdac2ac0 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xdac2a68 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac2a98 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `jalr` at 0xdac2a7c calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac2aa4 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac83ac, a3=?.
  The `beq` branch at 0xdac2a8c targets 0xdac2ab0, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac2ab8 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_Rotated` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac2ac0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac2ac0-0xdac2b58 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xdac2ad4 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac2b0c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xdac2b10 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sdc1` at 0xdac2b1c stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sdc1` at 0xdac2b24 stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sdc1` at 0xdac2b2c stores 8 bytes to ret(__glDlistAllocOp2) +0x20.
  The `sdc1` at 0xdac2b34 stores 8 bytes to ret(__glDlistAllocOp2) +0x28.
  The `jalr` at 0xdac2aec calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac2b3c calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac83e4, a3=?.
  The `beq` branch at 0xdac2afc targets 0xdac2b48, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac2b50 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_Rotatef` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac2b58 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac2b58-0xdac2bf0 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xdac2b6c loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac2ba8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xdac2bb4 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xdac2bbc stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `swc1` at 0xdac2bc4 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `swc1` at 0xdac2bcc stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `jalr` at 0xdac2b8c calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac2bd4 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac8438, a3=?.
  The `beq` branch at 0xdac2b9c targets 0xdac2be0, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac2be8 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_Scaled` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac2bf0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac2bf0-0xdac2c80 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xdac2c04 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac2c3c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xdac2c40 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sdc1` at 0xdac2c4c stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sdc1` at 0xdac2c54 stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sdc1` at 0xdac2c5c stores 8 bytes to ret(__glDlistAllocOp2) +0x20.
  The `jalr` at 0xdac2c1c calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x18, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac2c64 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac8484, a3=?.
  The `beq` branch at 0xdac2c2c targets 0xdac2c70, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac2c78 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_Scalef` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac2c80 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac2c80-0xdac2d0c (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xdac2c94 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac2ccc stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xdac2cd8 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xdac2ce0 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `swc1` at 0xdac2ce8 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `jalr` at 0xdac2cb0 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac2cf0 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac84d0, a3=?.
  The `beq` branch at 0xdac2cc0 targets 0xdac2cfc, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac2d04 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_Translated` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac2d0c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac2d0c-0xdac2d9c (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xdac2d20 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac2d58 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xdac2d5c stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sdc1` at 0xdac2d68 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sdc1` at 0xdac2d70 stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sdc1` at 0xdac2d78 stores 8 bytes to ret(__glDlistAllocOp2) +0x20.
  The `jalr` at 0xdac2d38 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x18, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac2d80 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac8518, a3=?.
  The `beq` branch at 0xdac2d48 targets 0xdac2d8c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac2d94 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_Translatef` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac2d9c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac2d9c-0xdac2e28 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xdac2db0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac2de8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xdac2df4 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xdac2dfc stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `swc1` at 0xdac2e04 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `jalr` at 0xdac2dcc calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac2e0c calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac8564, a3=?.
  The `beq` branch at 0xdac2ddc targets 0xdac2e18, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac2e20 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_Viewport` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac2e28 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac2e28-0xdac2ec0 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xdac2e40 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac2e78 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac2e84 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xdac2e8c stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xdac2e94 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sw` at 0xdac2e9c stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `jalr` at 0xdac2e5c calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac2ea4 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac85ac, a3=?.
  The `beq` branch at 0xdac2e6c targets 0xdac2eb0, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac2eb8 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_BlendColorEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac2ec0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac2ec0-0xdac2f58 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xdac2ed4 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac2f10 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xdac2f1c stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xdac2f24 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `swc1` at 0xdac2f2c stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `swc1` at 0xdac2f34 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `jalr` at 0xdac2ef4 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac2f3c calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac85fc, a3=?.
  The `beq` branch at 0xdac2f04 targets 0xdac2f48, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac2f50 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_BlendEquationEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac2f58 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac2f58-0xdac2fcc (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xdac2f70 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac2f9c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac2fa8 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xdac2f80 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac2fb0 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac8648, a3=?.
  The `beq` branch at 0xdac2f90 targets 0xdac2fbc, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac2fc4 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_PolygonOffsetEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac2fcc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac2fcc-0xdac304c (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xdac2fe0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac3014 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xdac3020 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xdac3028 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xdac2ff8 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac3030 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac8688, a3=?.
  The `beq` branch at 0xdac3008 targets 0xdac303c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac3044 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_ConvolutionParameterfEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac304c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac304c-0xdac30d8 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xdac3064 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac3098 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac30a4 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xdac30ac stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `swc1` at 0xdac30b4 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `jalr` at 0xdac307c calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac30bc calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac86cc, a3=?.
  The `beq` branch at 0xdac308c targets 0xdac30c8, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac30d0 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_ConvolutionParameterfvEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac30d8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac30d8-0xdac31b4 (220 bytes).
  It occupies 220 bytes.
  The `lw` at 0xdac30ec loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac3158 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac3164 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xdac316c stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xdac3108 calls __glConvolutionParameterfvEXT_size [0xda4d1b4] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac3124 calls __gllc_InvalidEnum [0xda0ba64] with a0=?, a1=?, a2=(ret(__glConvolutionParameterfvEXT_size) << 0x2), a3=?.
  The `jalr` at 0xdac3140 calls __glDlistAllocOp2 [0xda0b4a0] with a0=?, a1=(ret(__glConvolutionParameterfvEXT_size) << 0x2)+8, a2=(ret(__glConvolutionParameterfvEXT_size) << 0x2), a3=?.
  The `jalr` at 0xdac317c calls memcpy with a0=ret(__glDlistAllocOp2)+24, a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xdac3198 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=?, a2=0xdac8718, a3=?.
  The `bgez` branch at 0xdac3114 targets 0xdac3134, is taken when a2(=(ret(__glConvolutionParameterfvEXT_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glConvolutionParameterfvEXT_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xdac312c targets 0xdac31a4 and is always taken.
  The `beq` branch at 0xdac314c targets 0xdac31a4, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac31ac has v0 = one of ret(__gllc_InvalidEnum), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_ConvolutionParameteriEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac31b4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac31b4-0xdac3240 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xdac31cc loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac3200 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac320c stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xdac3214 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xdac321c stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `jalr` at 0xdac31e4 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac3224 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac8784, a3=?.
  The `beq` branch at 0xdac31f4 targets 0xdac3230, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac3238 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_ConvolutionParameterivEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac3240 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac3240-0xdac331c (220 bytes).
  It occupies 220 bytes.
  The `lw` at 0xdac3254 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac32c0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac32cc stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xdac32d4 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xdac3270 calls __glConvolutionParameterivEXT_size [0xda4d1f8] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac328c calls __gllc_InvalidEnum [0xda0ba64] with a0=?, a1=?, a2=(ret(__glConvolutionParameterivEXT_size) << 0x2), a3=?.
  The `jalr` at 0xdac32a8 calls __glDlistAllocOp2 [0xda0b4a0] with a0=?, a1=(ret(__glConvolutionParameterivEXT_size) << 0x2)+8, a2=(ret(__glConvolutionParameterivEXT_size) << 0x2), a3=?.
  The `jalr` at 0xdac32e4 calls memcpy with a0=ret(__glDlistAllocOp2)+24, a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xdac3300 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=?, a2=0xdac87d0, a3=?.
  The `bgez` branch at 0xdac327c targets 0xdac329c, is taken when a2(=(ret(__glConvolutionParameterivEXT_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glConvolutionParameterivEXT_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xdac3294 targets 0xdac330c and is always taken.
  The `beq` branch at 0xdac32b4 targets 0xdac330c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac3314 has v0 = one of ret(__gllc_InvalidEnum), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_HistogramEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac3464 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac3464-0xdac3528 (196 bytes).
  It occupies 196 bytes.
  The `lw` at 0xdac3474 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdac34a0 loads 4 bytes from [0x1010] +0x17f4.
  The `lw` at 0xdac34a4 loads 4 bytes from [[0x1010]+6132] +0x300.
  The `sh` at 0xdac34e0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac34ec stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xdac34f4 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sb` at 0xdac34fc stores 1 byte to ret(__glDlistAllocOp2) +0x1c.
  The `sw` at 0xdac3500 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `jalr` at 0xdac34a8 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xdac34c4 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xdac350c calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac88f4, a3=?.
  The `bne` branch at 0xdac3498 targets 0xdac34b8, is taken when a0 != at(=0x8025), and falls through when a0 == at(=0x8025).
  The `beq` branch at 0xdac34b0 targets 0xdac3518 and is always taken.
  The `beq` branch at 0xdac34d4 targets 0xdac3518, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac3520 has v0 = one of ret(?), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_MinmaxEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac3528 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac3528-0xdac35b4 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xdac3540 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac3574 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac3580 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xdac3588 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sb` at 0xdac3590 stores 1 byte to ret(__glDlistAllocOp2) +0x18.
  The `jalr` at 0xdac3558 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac3598 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac8944, a3=?.
  The `beq` branch at 0xdac3568 targets 0xdac35a4, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac35ac has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_PolygonOffset` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac3bb0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac3bb0-0xdac3c30 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xdac3bc4 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac3bf8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xdac3c04 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xdac3c0c stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xdac3bdc calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac3c14 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac8ce4, a3=?.
  The `beq` branch at 0xdac3bec targets 0xdac3c20, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac3c28 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_Indexub` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac3c30 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac3c30-0xdac3cb0 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xdac3c48 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac3c74 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xdac3c80 stores 1 byte to ret(__glDlistAllocOp2) +0x10.
  The `lw` at 0xdac3c84 loads 4 bytes from ?.
  The `sw` at 0xdac3c8c stores 4 bytes to ?.
  The `jalr` at 0xdac3c58 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac3c94 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac8d28, a3=?.
  The `beq` branch at 0xdac3c68 targets 0xdac3ca0, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac3ca8 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_Indexubv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac3cb0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac3cb0-0xdac3d34 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xdac3cc8 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac3cf4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lbu` at 0xdac3d00 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `sb` at 0xdac3d04 stores 1 byte to ret(__glDlistAllocOp2) +0x10.
  The `lw` at 0xdac3d08 loads 4 bytes from ?.
  The `sw` at 0xdac3d10 stores 4 bytes to ?.
  The `jalr` at 0xdac3cd8 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac3d18 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac8d28, a3=?.
  The `beq` branch at 0xdac3ce8 targets 0xdac3d24, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac3d2c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_SampleMaskSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac3d34 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac3d34-0xdac3db4 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xdac3d48 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac3d7c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xdac3d88 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sb` at 0xdac3d90 stores 1 byte to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xdac3d60 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac3d98 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac8d64, a3=?.
  The `beq` branch at 0xdac3d70 targets 0xdac3da4, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac3dac has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_SamplePatternSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac3db4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac3db4-0xdac3e28 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xdac3dcc loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac3df8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac3e04 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xdac3ddc calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac3e0c calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac8da8, a3=?.
  The `beq` branch at 0xdac3dec targets 0xdac3e18, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac3e20 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_DetailTexFuncSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac3e90 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac3e90-0xdac3f58 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xdac3ebc loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac3efc stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac3f08 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xdac3f10 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xdac3ec8 calls __gllc_InvalidValue [0xda0ba00] with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1010].
  The `jalr` at 0xdac3ee8 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=(a1 << 0x3)+8, a2=a2 at entry (arg2), a3=[0x1010].
  The `jalr` at 0xdac3f20 calls memcpy with a0=ret(__glDlistAllocOp2)+24, a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xdac3f3c calls __glDlistAppendOp [0xda0b538] with a0=?, a1=?, a2=0xdac8e20, a3=?.
  The `bgez` branch at 0xdac3eb8 targets 0xdac3ed8, is taken when v0(=(a1 << 0x3)) >= 0 (signed), and falls through when v0(=(a1 << 0x3)) < 0 (signed).
  The `beq` branch at 0xdac3ed0 targets 0xdac3f48 and is always taken.
  The `beq` branch at 0xdac3ef0 targets 0xdac3f48, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac3f50 has v0 = one of ret(__gllc_InvalidValue), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_SharpenTexFuncSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac3f58 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac3f58-0xdac4020 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xdac3f84 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac3fc4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac3fd0 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xdac3fd8 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xdac3f90 calls __gllc_InvalidValue [0xda0ba00] with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1010].
  The `jalr` at 0xdac3fb0 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=(a1 << 0x3)+8, a2=a2 at entry (arg2), a3=[0x1010].
  The `jalr` at 0xdac3fe8 calls memcpy with a0=ret(__glDlistAllocOp2)+24, a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xdac4004 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=?, a2=0xdac8e78, a3=?.
  The `bgez` branch at 0xdac3f80 targets 0xdac3fa0, is taken when v0(=(a1 << 0x3)) >= 0 (signed), and falls through when v0(=(a1 << 0x3)) < 0 (signed).
  The `beq` branch at 0xdac3f98 targets 0xdac4010 and is always taken.
  The `beq` branch at 0xdac3fb8 targets 0xdac4010, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac4018 has v0 = one of ret(__gllc_InvalidValue), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_SpriteParameterfSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac42ec (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac42ec-0xdac436c (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xdac4304 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac4334 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac4340 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xdac4348 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xdac4318 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac4350 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac9040, a3=?.
  The `beq` branch at 0xdac4328 targets 0xdac435c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac4364 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_SpriteParameterfvSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac436c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac436c-0xdac4438 (204 bytes).
  It occupies 204 bytes.
  The `lw` at 0xdac4380 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac43e4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac43f0 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xdac4394 calls __glSpriteParameterfvSGIX_size [0xda81380] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac43b0 calls __gllc_InvalidEnum [0xda0ba64] with a0=?, a1=?, a2=(ret(__glSpriteParameterfvSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xdac43cc calls __glDlistAllocOp2 [0xda0b4a0] with a0=?, a1=(ret(__glSpriteParameterfvSGIX_size) << 0x2)+4, a2=(ret(__glSpriteParameterfvSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xdac4400 calls memcpy with a0=ret(__glDlistAllocOp2)+20, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xdac441c calls __glDlistAppendOp [0xda0b538] with a0=?, a1=?, a2=0xdac9088, a3=?.
  The `bgez` branch at 0xdac43a0 targets 0xdac43c0, is taken when a2(=(ret(__glSpriteParameterfvSGIX_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glSpriteParameterfvSGIX_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xdac43b8 targets 0xdac4428 and is always taken.
  The `beq` branch at 0xdac43d8 targets 0xdac4428, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac4430 has v0 = one of ret(__gllc_InvalidEnum), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_SpriteParameteriSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac4438 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac4438-0xdac44b8 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xdac4450 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac4480 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac448c stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xdac4494 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xdac4464 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac449c calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac90f0, a3=?.
  The `beq` branch at 0xdac4474 targets 0xdac44a8, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac44b0 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_SpriteParameterivSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac44b8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac44b8-0xdac4584 (204 bytes).
  It occupies 204 bytes.
  The `lw` at 0xdac44cc loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac4530 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac453c stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xdac44e0 calls __glSpriteParameterivSGIX_size [0xda813c4] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac44fc calls __gllc_InvalidEnum [0xda0ba64] with a0=?, a1=?, a2=(ret(__glSpriteParameterivSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xdac4518 calls __glDlistAllocOp2 [0xda0b4a0] with a0=?, a1=(ret(__glSpriteParameterivSGIX_size) << 0x2)+4, a2=(ret(__glSpriteParameterivSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xdac454c calls memcpy with a0=ret(__glDlistAllocOp2)+20, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xdac4568 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=?, a2=0xdac9138, a3=?.
  The `bgez` branch at 0xdac44ec targets 0xdac450c, is taken when a2(=(ret(__glSpriteParameterivSGIX_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glSpriteParameterivSGIX_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xdac4504 targets 0xdac4574 and is always taken.
  The `beq` branch at 0xdac4524 targets 0xdac4574, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac457c has v0 = one of ret(__gllc_InvalidEnum), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_PointParameterfSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac4658 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac4658-0xdac46d8 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xdac4670 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac46a0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac46ac stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xdac46b4 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xdac4684 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac46bc calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac91fc, a3=?.
  The `beq` branch at 0xdac4694 targets 0xdac46c8, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac46d0 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_PointParameterfvSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac46d8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac46d8-0xdac47a4 (204 bytes).
  It occupies 204 bytes.
  The `lw` at 0xdac46ec loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac4750 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac475c stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xdac4700 calls __glPointParameterfvSGIS_size [0xda813f8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac471c calls __gllc_InvalidEnum [0xda0ba64] with a0=?, a1=?, a2=(ret(__glPointParameterfvSGIS_size) << 0x2), a3=?.
  The `jalr` at 0xdac4738 calls __glDlistAllocOp2 [0xda0b4a0] with a0=?, a1=(ret(__glPointParameterfvSGIS_size) << 0x2)+4, a2=(ret(__glPointParameterfvSGIS_size) << 0x2), a3=?.
  The `jalr` at 0xdac476c calls memcpy with a0=ret(__glDlistAllocOp2)+20, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xdac4788 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=?, a2=0xdac9244, a3=?.
  The `bgez` branch at 0xdac470c targets 0xdac472c, is taken when a2(=(ret(__glPointParameterfvSGIS_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glPointParameterfvSGIS_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xdac4724 targets 0xdac4794 and is always taken.
  The `beq` branch at 0xdac4744 targets 0xdac4794, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac479c has v0 = one of ret(__gllc_InvalidEnum), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_FogFuncSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac47a4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac47a4-0xdac4864 (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0xdac47cc loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac4810 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac481c stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xdac47d8 calls __gllc_InvalidValue [0xda0ba00] with a0=[0x1010], a1=a1 at entry (arg1), a2=(a0 << 0x3), a3=[0x1010].
  The `jalr` at 0xdac47f8 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=(a0 << 0x3)+4, a2=(a0 << 0x3), a3=[0x1010].
  The `jalr` at 0xdac482c calls memcpy with a0=ret(__glDlistAllocOp2)+20, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xdac4848 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=?, a2=0xdac92ac, a3=?.
  The `bgez` branch at 0xdac47c8 targets 0xdac47e8, is taken when a2(=(a0 << 0x3)) >= 0 (signed), and falls through when a2(=(a0 << 0x3)) < 0 (signed).
  The `beq` branch at 0xdac47e0 targets 0xdac4854 and is always taken.
  The `beq` branch at 0xdac4804 targets 0xdac4854, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac485c has v0 = one of ret(__gllc_InvalidValue), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_StartInstrumentsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac48d8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac48d8-0xdac4940 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xdac48e8 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac4918 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `jalr` at 0xdac48fc calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac4924 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac9340, a3=?.
  The `beq` branch at 0xdac490c targets 0xdac4930, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac4938 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_StopInstrumentsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac4940 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac4940-0xdac49b4 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xdac4958 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac4984 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac4990 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xdac4968 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac4998 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac9378, a3=?.
  The `beq` branch at 0xdac4978 targets 0xdac49a4, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac49ac has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_ReferencePlaneSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac49b4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac49b4-0xdac4a50 (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xdac49cc loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac4a04 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xdac4a08 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `ldc1` at 0xdac4a0c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xdac4a14 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `ldc1` at 0xdac4a18 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sdc1` at 0xdac4a1c stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `ldc1` at 0xdac4a20 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `sdc1` at 0xdac4a24 stores 8 bytes to ret(__glDlistAllocOp2) +0x20.
  The `ldc1` at 0xdac4a28 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `sdc1` at 0xdac4a2c stores 8 bytes to ret(__glDlistAllocOp2) +0x28.
  The `jalr` at 0xdac49e0 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x20, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xdac4a34 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac93b8, a3=a0 at entry (arg0).
  The `beq` branch at 0xdac49f4 targets 0xdac4a40, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac4a48 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_FrameZoomSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac4a50 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac4a50-0xdac4ac4 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xdac4a68 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac4a94 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac4aa0 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xdac4a78 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac4aa8 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac93f4, a3=?.
  The `beq` branch at 0xdac4a88 targets 0xdac4ab4, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac4abc has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_DeformSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac4ac4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac4ac4-0xdac4b38 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xdac4adc loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac4b08 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac4b14 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xdac4aec calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac4b1c calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac9434, a3=?.
  The `beq` branch at 0xdac4afc targets 0xdac4b28, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac4b30 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_LoadIdentityDeformationMapSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac4b38 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac4b38-0xdac4bac (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xdac4b50 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac4b7c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac4b88 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xdac4b60 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac4b90 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac9474, a3=?.
  The `beq` branch at 0xdac4b70 targets 0xdac4b9c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac4ba4 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_AsyncMarkerSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac4ee4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac4ee4-0xdac4f58 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xdac4efc loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac4f28 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac4f34 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xdac4f0c calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac4f3c calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac966c, a3=?.
  The `beq` branch at 0xdac4f1c targets 0xdac4f48, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac4f50 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_FragmentColorMaterialSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac4f58 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac4f58-0xdac4fd8 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xdac4f70 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac4fa0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac4fac stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xdac4fb4 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xdac4f84 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac4fbc calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac96ac, a3=?.
  The `beq` branch at 0xdac4f94 targets 0xdac4fc8, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac4fd0 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_FragmentLightfSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac4fd8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac4fd8-0xdac5064 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xdac4ff0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac5024 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac5030 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xdac5038 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `swc1` at 0xdac5040 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `jalr` at 0xdac5008 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac5048 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac96f4, a3=?.
  The `beq` branch at 0xdac5018 targets 0xdac5054, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac505c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_FragmentLightfvSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac5064 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac5064-0xdac5140 (220 bytes).
  It occupies 220 bytes.
  The `lw` at 0xdac5078 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac50e4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac50f0 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xdac50f8 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xdac5094 calls __glFragmentLightfvSGIX_size [0xda8162c] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac50b0 calls __gllc_InvalidEnum [0xda0ba64] with a0=?, a1=?, a2=(ret(__glFragmentLightfvSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xdac50cc calls __glDlistAllocOp2 [0xda0b4a0] with a0=?, a1=(ret(__glFragmentLightfvSGIX_size) << 0x2)+8, a2=(ret(__glFragmentLightfvSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xdac5108 calls memcpy with a0=ret(__glDlistAllocOp2)+24, a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xdac5124 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=?, a2=0xdac9740, a3=?.
  The `bgez` branch at 0xdac50a0 targets 0xdac50c0, is taken when a2(=(ret(__glFragmentLightfvSGIX_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glFragmentLightfvSGIX_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xdac50b8 targets 0xdac5130 and is always taken.
  The `beq` branch at 0xdac50d8 targets 0xdac5130, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac5138 has v0 = one of ret(__gllc_InvalidEnum), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_FragmentLightiSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac5140 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac5140-0xdac51cc (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xdac5158 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac518c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac5198 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xdac51a0 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xdac51a8 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `jalr` at 0xdac5170 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac51b0 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac97ac, a3=?.
  The `beq` branch at 0xdac5180 targets 0xdac51bc, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac51c4 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_FragmentLightivSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac51cc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac51cc-0xdac52a8 (220 bytes).
  It occupies 220 bytes.
  The `lw` at 0xdac51e0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac524c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac5258 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xdac5260 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xdac51fc calls __glFragmentLightivSGIX_size [0xda816e4] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac5218 calls __gllc_InvalidEnum [0xda0ba64] with a0=?, a1=?, a2=(ret(__glFragmentLightivSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xdac5234 calls __glDlistAllocOp2 [0xda0b4a0] with a0=?, a1=(ret(__glFragmentLightivSGIX_size) << 0x2)+8, a2=(ret(__glFragmentLightivSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xdac5270 calls memcpy with a0=ret(__glDlistAllocOp2)+24, a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xdac528c calls __glDlistAppendOp [0xda0b538] with a0=?, a1=?, a2=0xdac97f8, a3=?.
  The `bgez` branch at 0xdac5208 targets 0xdac5228, is taken when a2(=(ret(__glFragmentLightivSGIX_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glFragmentLightivSGIX_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xdac5220 targets 0xdac5298 and is always taken.
  The `beq` branch at 0xdac5240 targets 0xdac5298, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac52a0 has v0 = one of ret(__gllc_InvalidEnum), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_FragmentLightModelfSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac52a8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac52a8-0xdac5328 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xdac52c0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac52f0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac52fc stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xdac5304 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xdac52d4 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac530c calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac9864, a3=?.
  The `beq` branch at 0xdac52e4 targets 0xdac5318, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac5320 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_FragmentLightModelfvSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac5328 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac5328-0xdac53f4 (204 bytes).
  It occupies 204 bytes.
  The `lw` at 0xdac533c loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac53a0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac53ac stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xdac5350 calls __glFragmentLightModelfvSGIX_size [0xda81718] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac536c calls __gllc_InvalidEnum [0xda0ba64] with a0=?, a1=?, a2=(ret(__glFragmentLightModelfvSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xdac5388 calls __glDlistAllocOp2 [0xda0b4a0] with a0=?, a1=(ret(__glFragmentLightModelfvSGIX_size) << 0x2)+4, a2=(ret(__glFragmentLightModelfvSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xdac53bc calls memcpy with a0=ret(__glDlistAllocOp2)+20, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xdac53d8 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=?, a2=0xdac98ac, a3=?.
  The `bgez` branch at 0xdac535c targets 0xdac537c, is taken when a2(=(ret(__glFragmentLightModelfvSGIX_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glFragmentLightModelfvSGIX_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xdac5374 targets 0xdac53e4 and is always taken.
  The `beq` branch at 0xdac5394 targets 0xdac53e4, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac53ec has v0 = one of ret(__gllc_InvalidEnum), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_FragmentLightModeliSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac53f4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac53f4-0xdac5474 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xdac540c loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac543c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac5448 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xdac5450 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xdac5420 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac5458 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac9914, a3=?.
  The `beq` branch at 0xdac5430 targets 0xdac5464, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac546c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_FragmentLightModelivSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac5474 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac5474-0xdac5540 (204 bytes).
  It occupies 204 bytes.
  The `lw` at 0xdac5488 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac54ec stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac54f8 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xdac549c calls __glFragmentLightModelivSGIX_size [0xda8176c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac54b8 calls __gllc_InvalidEnum [0xda0ba64] with a0=?, a1=?, a2=(ret(__glFragmentLightModelivSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xdac54d4 calls __glDlistAllocOp2 [0xda0b4a0] with a0=?, a1=(ret(__glFragmentLightModelivSGIX_size) << 0x2)+4, a2=(ret(__glFragmentLightModelivSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xdac5508 calls memcpy with a0=ret(__glDlistAllocOp2)+20, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xdac5524 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=?, a2=0xdac995c, a3=?.
  The `bgez` branch at 0xdac54a8 targets 0xdac54c8, is taken when a2(=(ret(__glFragmentLightModelivSGIX_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glFragmentLightModelivSGIX_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xdac54c0 targets 0xdac5530 and is always taken.
  The `beq` branch at 0xdac54e0 targets 0xdac5530, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac5538 has v0 = one of ret(__gllc_InvalidEnum), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_FragmentMaterialfSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac5540 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac5540-0xdac55cc (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xdac5558 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac558c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac5598 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xdac55a0 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `swc1` at 0xdac55a8 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `jalr` at 0xdac5570 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac55b0 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac99c4, a3=?.
  The `beq` branch at 0xdac5580 targets 0xdac55bc, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac55c4 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_FragmentMaterialfvSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac55cc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac55cc-0xdac56e0 (276 bytes).
  It occupies 276 bytes.
  The `lw` at 0xdac55f8 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdac5600 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `sh` at 0xdac5680 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac568c stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xdac5694 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xdac55fc calls __glErrorCheckMaterial [0xda3cc7c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a2], a3=a3 at entry (arg3).
  The `jalr` at 0xdac5618 calls __gllc_Error [0xda0bbf8] with a0=[0x1010], a1=ret(__glErrorCheckMaterial), a2=?, a3=?.
  The `jalr` at 0xdac5630 calls __glFragmentMaterialfvSGIX_size [0xda81584] with a0=a1 at entry (arg1), a1=ret(__glErrorCheckMaterial), a2=?, a3=?.
  The `jalr` at 0xdac564c calls __gllc_InvalidEnum [0xda0ba64] with a0=[0x1010], a1=?, a2=(ret(__glFragmentMaterialfvSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xdac5668 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=(ret(__glFragmentMaterialfvSGIX_size) << 0x2)+8, a2=(ret(__glFragmentMaterialfvSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xdac56a4 calls memcpy with a0=ret(__glDlistAllocOp2)+24, a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xdac56c0 calls __glDlistAppendOp [0xda0b538] with a0=[0x1010], a1=?, a2=0xdac9a10, a3=?.
  The `beq` branch at 0xdac5608 targets 0xdac5628, is taken when v0(=ret(__glErrorCheckMaterial)) == 0, and falls through when v0(=ret(__glErrorCheckMaterial)) != 0.
  The `beq` branch at 0xdac5620 targets 0xdac56cc and is always taken.
  The `bgez` branch at 0xdac563c targets 0xdac565c, is taken when a2(=(ret(__glFragmentMaterialfvSGIX_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glFragmentMaterialfvSGIX_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xdac5654 targets 0xdac56cc and is always taken.
  The `beq` branch at 0xdac5674 targets 0xdac56cc, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac56d8 has v0 = one of ret(__gllc_Error), ret(__gllc_InvalidEnum), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_FragmentMaterialiSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac56e0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac56e0-0xdac576c (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xdac56f8 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac572c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac5738 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xdac5740 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xdac5748 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `jalr` at 0xdac5710 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac5750 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac9a7c, a3=?.
  The `beq` branch at 0xdac5720 targets 0xdac575c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac5764 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_FragmentMaterialivSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac576c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac576c-0xdac5894 (296 bytes).
  It occupies 296 bytes.
  The `lw` at 0xdac5794 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lw` at 0xdac579c loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac5834 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac5840 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xdac5848 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xdac57b0 calls __glErrorCheckMaterial [0xda3cc7c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0xdac57cc calls __gllc_Error [0xda0bbf8] with a0=[0x1010], a1=ret(__glErrorCheckMaterial), a2=?, a3=?.
  The `jalr` at 0xdac57e4 calls __glFragmentMaterialivSGIX_size [0xda815f8] with a0=a1 at entry (arg1), a1=ret(__glErrorCheckMaterial), a2=?, a3=?.
  The `jalr` at 0xdac5800 calls __gllc_InvalidEnum [0xda0ba64] with a0=[0x1010], a1=?, a2=(ret(__glFragmentMaterialivSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xdac581c calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=(ret(__glFragmentMaterialivSGIX_size) << 0x2)+8, a2=(ret(__glFragmentMaterialivSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xdac5858 calls memcpy with a0=ret(__glDlistAllocOp2)+24, a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xdac5874 calls __glDlistAppendOp [0xda0b538] with a0=[0x1010], a1=?, a2=0xdac9ac8, a3=?.
  The `beq` branch at 0xdac57bc targets 0xdac57dc, is taken when v0(=ret(__glErrorCheckMaterial)) == 0, and falls through when v0(=ret(__glErrorCheckMaterial)) != 0.
  The `beq` branch at 0xdac57d4 targets 0xdac5880 and is always taken.
  The `bgez` branch at 0xdac57f0 targets 0xdac5810, is taken when a2(=(ret(__glFragmentMaterialivSGIX_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glFragmentMaterialivSGIX_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xdac5808 targets 0xdac5880 and is always taken.
  The `beq` branch at 0xdac5828 targets 0xdac5880, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac588c has v0 = one of ret(__gllc_Error), ret(__gllc_InvalidEnum), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_LightEnviSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac5894 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac5894-0xdac5914 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xdac58ac loads 4 bytes from abs 0x1010.
  The `sh` at 0xdac58dc stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdac58e8 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xdac58f0 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xdac58c0 calls __glDlistAllocOp2 [0xda0b4a0] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac58f8 calls __glDlistAppendOp [0xda0b538] with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdac9b34, a3=?.
  The `beq` branch at 0xdac58d0 targets 0xdac5904, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdac590c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__glle_ListBase` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac59c0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac59c0-0xdac5a00 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xdac59d0 loads 4 bytes from abs 0x1068.
  The `lw` at 0xdac59e4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac59e0 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac59f8 has v0 = a0+4.
- `__glle_Color3bv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac5a00 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac5a00-0xdac5a3c (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac5a0c loads 4 bytes from abs 0x15dc.
  The `jalr` at 0xdac5a1c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac5a34 has v0 = a0+4.
- `__glle_Color3dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac5a3c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac5a3c-0xdac5a78 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac5a48 loads 4 bytes from abs 0x15e4.
  The `jalr` at 0xdac5a58 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac5a70 has v0 = a0+24.
- `__glle_Color3fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac5a78 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac5a78-0xdac5ab4 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac5a84 loads 4 bytes from abs 0x15ec.
  The `jalr` at 0xdac5a94 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac5aac has v0 = a0+12.
- `__glle_Color3iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac5ab4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac5ab4-0xdac5af0 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac5ac0 loads 4 bytes from abs 0x15f4.
  The `jalr` at 0xdac5ad0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac5ae8 has v0 = a0+12.
- `__glle_Color3sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac5af0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac5af0-0xdac5b2c (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac5afc loads 4 bytes from abs 0x15fc.
  The `jalr` at 0xdac5b0c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac5b24 has v0 = a0+8.
- `__glle_Color3ubv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac5b2c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac5b2c-0xdac5b68 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac5b38 loads 4 bytes from abs 0x1604.
  The `jalr` at 0xdac5b48 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac5b60 has v0 = a0+4.
- `__glle_Color3uiv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac5b68 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac5b68-0xdac5ba4 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac5b74 loads 4 bytes from abs 0x160c.
  The `jalr` at 0xdac5b84 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac5b9c has v0 = a0+12.
- `__glle_Color3usv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac5ba4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac5ba4-0xdac5be0 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac5bb0 loads 4 bytes from abs 0x1614.
  The `jalr` at 0xdac5bc0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac5bd8 has v0 = a0+8.
- `__glle_Color4bv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac5be0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac5be0-0xdac5c1c (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac5bec loads 4 bytes from abs 0x161c.
  The `jalr` at 0xdac5bfc calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac5c14 has v0 = a0+4.
- `__glle_Color4dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac5c1c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac5c1c-0xdac5c58 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac5c28 loads 4 bytes from abs 0x1624.
  The `jalr` at 0xdac5c38 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac5c50 has v0 = a0+32.
- `__glle_Color4fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac5c58 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac5c58-0xdac5c94 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac5c64 loads 4 bytes from abs 0x162c.
  The `jalr` at 0xdac5c74 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac5c8c has v0 = a0+16.
- `__glle_Color4iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac5c94 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac5c94-0xdac5cd0 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac5ca0 loads 4 bytes from abs 0x1634.
  The `jalr` at 0xdac5cb0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac5cc8 has v0 = a0+16.
- `__glle_Color4sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac5cd0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac5cd0-0xdac5d0c (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac5cdc loads 4 bytes from abs 0x163c.
  The `jalr` at 0xdac5cec calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac5d04 has v0 = a0+8.
- `__glle_Color4ubv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac5d0c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac5d0c-0xdac5d48 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac5d18 loads 4 bytes from abs 0x1644.
  The `jalr` at 0xdac5d28 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac5d40 has v0 = a0+4.
- `__glle_Color4uiv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac5d48 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac5d48-0xdac5d84 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac5d54 loads 4 bytes from abs 0x164c.
  The `jalr` at 0xdac5d64 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac5d7c has v0 = a0+16.
- `__glle_Color4usv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac5d84 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac5d84-0xdac5dc0 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac5d90 loads 4 bytes from abs 0x1654.
  The `jalr` at 0xdac5da0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac5db8 has v0 = a0+8.
- `__glle_EdgeFlagv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac5dc0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac5dc0-0xdac5dfc (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac5dcc loads 4 bytes from abs 0x1078.
  The `jalr` at 0xdac5ddc calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac5df4 has v0 = a0+4.
- `__glle_End` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac5dfc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac5dfc-0xdac5e34 (56 bytes).
  It occupies 56 bytes.
  The `lw` at 0xdac5e08 loads 4 bytes from abs 0x107c.
  The `jalr` at 0xdac5e18 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac5e2c has v0 = a0.
- `__glle_Indexdv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac5e34 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac5e34-0xdac5e70 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac5e40 loads 4 bytes from abs 0x165c.
  The `jalr` at 0xdac5e50 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac5e68 has v0 = a0+8.
- `__glle_Indexfv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac5e70 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac5e70-0xdac5eac (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac5e7c loads 4 bytes from abs 0x1664.
  The `jalr` at 0xdac5e8c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac5ea4 has v0 = a0+4.
- `__glle_Indexiv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac5eac (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac5eac-0xdac5ee8 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac5eb8 loads 4 bytes from abs 0x166c.
  The `jalr` at 0xdac5ec8 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac5ee0 has v0 = a0+4.
- `__glle_Indexsv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac5ee8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac5ee8-0xdac5f24 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac5ef4 loads 4 bytes from abs 0x1674.
  The `jalr` at 0xdac5f04 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac5f1c has v0 = a0+4.
- `__glle_Normal3bv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac5f24 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac5f24-0xdac5f60 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac5f30 loads 4 bytes from abs 0x1684.
  The `jalr` at 0xdac5f40 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac5f58 has v0 = a0+4.
- `__glle_Normal3dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac5f60 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac5f60-0xdac5f9c (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac5f6c loads 4 bytes from abs 0x168c.
  The `jalr` at 0xdac5f7c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac5f94 has v0 = a0+24.
- `__glle_Normal3fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac5f9c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac5f9c-0xdac5fd8 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac5fa8 loads 4 bytes from abs 0x1694.
  The `jalr` at 0xdac5fb8 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac5fd0 has v0 = a0+12.
- `__glle_Normal3iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac5fd8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac5fd8-0xdac6014 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac5fe4 loads 4 bytes from abs 0x169c.
  The `jalr` at 0xdac5ff4 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac600c has v0 = a0+12.
- `__glle_Normal3sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac6014 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac6014-0xdac6050 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac6020 loads 4 bytes from abs 0x16a4.
  The `jalr` at 0xdac6030 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac6048 has v0 = a0+8.
- `__glle_RasterPos2dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac6050 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac6050-0xdac608c (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac605c loads 4 bytes from abs 0x172c.
  The `jalr` at 0xdac606c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac6084 has v0 = a0+16.
- `__glle_RasterPos2fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac608c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac608c-0xdac60c8 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac6098 loads 4 bytes from abs 0x1734.
  The `jalr` at 0xdac60a8 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac60c0 has v0 = a0+8.
- `__glle_RasterPos2iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac60c8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac60c8-0xdac6104 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac60d4 loads 4 bytes from abs 0x173c.
  The `jalr` at 0xdac60e4 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac60fc has v0 = a0+8.
- `__glle_RasterPos2sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac6104 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac6104-0xdac6140 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac6110 loads 4 bytes from abs 0x1744.
  The `jalr` at 0xdac6120 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac6138 has v0 = a0+4.
- `__glle_RasterPos3dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac6140 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac6140-0xdac617c (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac614c loads 4 bytes from abs 0x174c.
  The `jalr` at 0xdac615c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac6174 has v0 = a0+24.
- `__glle_RasterPos3fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac617c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac617c-0xdac61b8 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac6188 loads 4 bytes from abs 0x1754.
  The `jalr` at 0xdac6198 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac61b0 has v0 = a0+12.
- `__glle_RasterPos3iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac61b8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac61b8-0xdac61f4 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac61c4 loads 4 bytes from abs 0x175c.
  The `jalr` at 0xdac61d4 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac61ec has v0 = a0+12.
- `__glle_RasterPos3sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac61f4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac61f4-0xdac6230 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac6200 loads 4 bytes from abs 0x1764.
  The `jalr` at 0xdac6210 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac6228 has v0 = a0+8.
- `__glle_RasterPos4dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac6230 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac6230-0xdac626c (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac623c loads 4 bytes from abs 0x176c.
  The `jalr` at 0xdac624c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac6264 has v0 = a0+32.
- `__glle_RasterPos4fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac626c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac626c-0xdac62a8 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac6278 loads 4 bytes from abs 0x1774.
  The `jalr` at 0xdac6288 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac62a0 has v0 = a0+16.
- `__glle_RasterPos4iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac62a8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac62a8-0xdac62e4 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac62b4 loads 4 bytes from abs 0x177c.
  The `jalr` at 0xdac62c4 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac62dc has v0 = a0+16.
- `__glle_RasterPos4sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac62e4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac62e4-0xdac6320 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac62f0 loads 4 bytes from abs 0x1784.
  The `jalr` at 0xdac6300 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac6318 has v0 = a0+8.
- `__glle_Rectdv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac6320 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac6320-0xdac6360 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xdac632c loads 4 bytes from abs 0x178c.
  The `jalr` at 0xdac6340 calls (unknown callee) with a0=a0 at entry (arg0), a1=a0+16, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac6358 has v0 = a0+32.
- `__glle_Rectfv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac6360 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac6360-0xdac63a0 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xdac636c loads 4 bytes from abs 0x1794.
  The `jalr` at 0xdac6380 calls (unknown callee) with a0=a0 at entry (arg0), a1=a0+8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac6398 has v0 = a0+16.
- `__glle_Rectiv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac63a0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac63a0-0xdac63e0 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xdac63ac loads 4 bytes from abs 0x179c.
  The `jalr` at 0xdac63c0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a0+8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac63d8 has v0 = a0+16.
- `__glle_Rectsv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac63e0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac63e0-0xdac6420 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xdac63ec loads 4 bytes from abs 0x17a4.
  The `jalr` at 0xdac6400 calls (unknown callee) with a0=a0 at entry (arg0), a1=a0+4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac6418 has v0 = a0+8.
- `__glle_Vertex2dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac67e0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac67e0-0xdac681c (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac67ec loads 4 bytes from abs 0x157c.
  The `jalr` at 0xdac67fc calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac6814 has v0 = a0+16.
- `__glle_Vertex2fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac681c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac681c-0xdac6858 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac6828 loads 4 bytes from abs 0x1584.
  The `jalr` at 0xdac6838 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac6850 has v0 = a0+8.
- `__glle_Vertex2iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac6858 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac6858-0xdac6894 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac6864 loads 4 bytes from abs 0x158c.
  The `jalr` at 0xdac6874 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac688c has v0 = a0+8.
- `__glle_Vertex2sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac6894 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac6894-0xdac68d0 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac68a0 loads 4 bytes from abs 0x1594.
  The `jalr` at 0xdac68b0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac68c8 has v0 = a0+4.
- `__glle_Vertex3dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac68d0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac68d0-0xdac690c (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac68dc loads 4 bytes from abs 0x159c.
  The `jalr` at 0xdac68ec calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac6904 has v0 = a0+24.
- `__glle_Vertex3fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac690c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac690c-0xdac6948 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac6918 loads 4 bytes from abs 0x15a4.
  The `jalr` at 0xdac6928 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac6940 has v0 = a0+12.
- `__glle_Vertex3iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac6948 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac6948-0xdac6984 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac6954 loads 4 bytes from abs 0x15ac.
  The `jalr` at 0xdac6964 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac697c has v0 = a0+12.
- `__glle_Vertex3sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac6984 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac6984-0xdac69c0 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac6990 loads 4 bytes from abs 0x15b4.
  The `jalr` at 0xdac69a0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac69b8 has v0 = a0+8.
- `__glle_Vertex4dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac69c0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac69c0-0xdac69fc (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac69cc loads 4 bytes from abs 0x15bc.
  The `jalr` at 0xdac69dc calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac69f4 has v0 = a0+32.
- `__glle_Vertex4fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac69fc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac69fc-0xdac6a38 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac6a08 loads 4 bytes from abs 0x15c4.
  The `jalr` at 0xdac6a18 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac6a30 has v0 = a0+16.
- `__glle_Vertex4iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac6a38 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac6a38-0xdac6a74 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac6a44 loads 4 bytes from abs 0x15cc.
  The `jalr` at 0xdac6a54 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac6a6c has v0 = a0+16.
- `__glle_Vertex4sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac6a74 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac6a74-0xdac6ab0 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac6a80 loads 4 bytes from abs 0x15d4.
  The `jalr` at 0xdac6a90 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac6aa8 has v0 = a0+8.
- `__glle_ClipPlane` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac6ab0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac6ab0-0xdac6af4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0xdac6ac0 loads 4 bytes from abs 0x1080.
  The `lw` at 0xdac6ad0 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `jalr` at 0xdac6ad4 calls (unknown callee) with a0=[a0+32], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac6aec has v0 = a0+40.
- `__glle_ColorMaterial` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac6af4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac6af4-0xdac6b3c (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xdac6b04 loads 4 bytes from abs 0x1084.
  The `lw` at 0xdac6b14 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xdac6b18 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac6b1c calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0xdac6b34 has v0 = a0+8.
- `__glle_CullFace` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac6b3c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac6b3c-0xdac6b7c (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xdac6b4c loads 4 bytes from abs 0x1088.
  The `lw` at 0xdac6b60 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac6b5c calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac6b74 has v0 = a0+4.
- `__glle_Fogf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac6b7c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac6b7c-0xdac6bc4 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xdac6b8c loads 4 bytes from abs 0x108c.
  The `lw` at 0xdac6b9c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xdac6ba0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac6ba4 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0xdac6bbc has v0 = a0+8.
- `__glle_Fogfv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac6bc4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac6bc4-0xdac6c2c (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xdac6bd4 loads 4 bytes from abs 0x1090.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0xdac6be4, `lw` at 0xdac6c00.
  The `jalr` at 0xdac6bec calls (unknown callee) with a0=[a0], a1=a0+4, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0xdac6c04 calls __glFogfv_size [0xda810f0] with a0=[a0], a1=?, a2=?, a3=?.
  The return at 0xdac6c24 has v0 = (a0 + (ret(__glFogfv_size) << 0x2))+4.
- `__glle_Fogi` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac6c2c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac6c2c-0xdac6c74 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xdac6c3c loads 4 bytes from abs 0x1094.
  The `lw` at 0xdac6c4c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xdac6c50 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac6c54 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0xdac6c6c has v0 = a0+8.
- `__glle_Fogiv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac6c74 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac6c74-0xdac6cdc (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xdac6c84 loads 4 bytes from abs 0x1098.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0xdac6c94, `lw` at 0xdac6cb0.
  The `jalr` at 0xdac6c9c calls (unknown callee) with a0=[a0], a1=a0+4, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0xdac6cb4 calls __glFogiv_size [0xda81080] with a0=[a0], a1=?, a2=?, a3=?.
  The return at 0xdac6cd4 has v0 = (a0 + (ret(__glFogiv_size) << 0x2))+4.
- `__glle_FrontFace` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac6cdc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac6cdc-0xdac6d1c (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xdac6cec loads 4 bytes from abs 0x109c.
  The `lw` at 0xdac6d00 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac6cfc calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac6d14 has v0 = a0+4.
- `__glle_Hint` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac6d1c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac6d1c-0xdac6d64 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xdac6d2c loads 4 bytes from abs 0x10a0.
  The `lw` at 0xdac6d3c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xdac6d40 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac6d44 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0xdac6d5c has v0 = a0+8.
- `__glle_Lightfv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac6d64 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac6d64-0xdac6dd0 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xdac6d74 loads 4 bytes from abs 0x10a8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xdac6d84, `lw` at 0xdac6da4.
  The `lw` at 0xdac6d88 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac6d90 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0+8, a3=a0 at entry (arg0).
  The `jalr` at 0xdac6da8 calls __glLightfv_size [0xda81124] with a0=[a0+4], a1=?, a2=?, a3=a0 at entry (arg0).
  The return at 0xdac6dc8 has v0 = (a0 + (ret(__glLightfv_size) << 0x2))+8.
- `__glle_Lightiv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac6dd0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac6dd0-0xdac6e3c (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xdac6de0 loads 4 bytes from abs 0x10b0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xdac6df0, `lw` at 0xdac6e10.
  The `lw` at 0xdac6df4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac6dfc calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0+8, a3=a0 at entry (arg0).
  The `jalr` at 0xdac6e14 calls __glLightiv_size [0xda811b4] with a0=[a0+4], a1=?, a2=?, a3=a0 at entry (arg0).
  The return at 0xdac6e34 has v0 = (a0 + (ret(__glLightiv_size) << 0x2))+8.
- `__glle_LightModelfv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac6e3c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac6e3c-0xdac6ea4 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xdac6e4c loads 4 bytes from abs 0x10b8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0xdac6e5c, `lw` at 0xdac6e78.
  The `jalr` at 0xdac6e64 calls (unknown callee) with a0=[a0], a1=a0+4, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0xdac6e7c calls __glLightModelfv_size [0xda811e8] with a0=[a0], a1=?, a2=?, a3=?.
  The return at 0xdac6e9c has v0 = (a0 + (ret(__glLightModelfv_size) << 0x2))+4.
- `__glle_LightModeliv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac6ea4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac6ea4-0xdac6f0c (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xdac6eb4 loads 4 bytes from abs 0x10c0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0xdac6ec4, `lw` at 0xdac6ee0.
  The `jalr` at 0xdac6ecc calls (unknown callee) with a0=[a0], a1=a0+4, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0xdac6ee4 calls __glLightModeliv_size [0xda8123c] with a0=[a0], a1=?, a2=?, a3=?.
  The return at 0xdac6f04 has v0 = (a0 + (ret(__glLightModeliv_size) << 0x2))+4.
- `__glle_LineStipple` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac6f0c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac6f0c-0xdac6f54 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xdac6f1c loads 4 bytes from abs 0x10c4.
  The `lhu` at 0xdac6f2c loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xdac6f30 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac6f34 calls (unknown callee) with a0=[a0], a1=[a0+4]:2, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0xdac6f4c has v0 = a0+8.
- `__glle_LineWidth` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac6f54 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac6f54-0xdac6f94 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xdac6f64 loads 4 bytes from abs 0x10c8.
  The `lwc1` at 0xdac6f78 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac6f74 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f12=[a0].
  The return at 0xdac6f8c has v0 = a0+4.
- `__glle_Materialfv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac6f94 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac6f94-0xdac7000 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xdac6fa4 loads 4 bytes from abs 0x10d0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xdac6fb4, `lw` at 0xdac6fd4.
  The `lw` at 0xdac6fb8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac6fc0 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0+8, a3=a0 at entry (arg0).
  The `jalr` at 0xdac6fd8 calls __glMaterialfv_size [0xda81270] with a0=[a0+4], a1=?, a2=?, a3=a0 at entry (arg0).
  The return at 0xdac6ff8 has v0 = (a0 + (ret(__glMaterialfv_size) << 0x2))+8.
- `__glle_Materialiv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac7000 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac7000-0xdac706c (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xdac7010 loads 4 bytes from abs 0x10d8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xdac7020, `lw` at 0xdac7040.
  The `lw` at 0xdac7024 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac702c calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0+8, a3=a0 at entry (arg0).
  The `jalr` at 0xdac7044 calls __glMaterialiv_size [0xda812f4] with a0=[a0+4], a1=?, a2=?, a3=a0 at entry (arg0).
  The return at 0xdac7064 has v0 = (a0 + (ret(__glMaterialiv_size) << 0x2))+8.
- `__glle_PointSize` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac706c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac706c-0xdac70ac (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xdac707c loads 4 bytes from abs 0x10dc.
  The `lwc1` at 0xdac7090 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac708c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f12=[a0].
  The return at 0xdac70a4 has v0 = a0+4.
- `__glle_PolygonMode` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac70ac (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac70ac-0xdac70f4 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xdac70bc loads 4 bytes from abs 0x10e0.
  The `lw` at 0xdac70cc loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xdac70d0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac70d4 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0xdac70ec has v0 = a0+8.
- `__glle_Scissor` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac70f4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac70f4-0xdac7144 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0xdac710c loads 4 bytes from abs 0x10e8.
  The `lw` at 0xdac7118 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0xdac711c loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xdac7120 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xdac7128 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac7124 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=[a0+12].
  The return at 0xdac713c has v0 = a0+16.
- `__glle_ShadeModel` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac7144 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac7144-0xdac7184 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xdac7154 loads 4 bytes from abs 0x10ec.
  The `lw` at 0xdac7168 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac7164 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac717c has v0 = a0+4.
- `__glle_InitNames` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac7478 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac7478-0xdac74b0 (56 bytes).
  It occupies 56 bytes.
  The `lw` at 0xdac7484 loads 4 bytes from abs 0x113c.
  The `jalr` at 0xdac7494 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac74a8 has v0 = a0.
- `__glle_LoadName` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac74b0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac74b0-0xdac74f0 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xdac74c0 loads 4 bytes from abs 0x1140.
  The `lw` at 0xdac74d4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac74d0 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac74e8 has v0 = a0+4.
- `__glle_PassThrough` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac74f0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac74f0-0xdac7530 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xdac7500 loads 4 bytes from abs 0x1144.
  The `lwc1` at 0xdac7514 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac7510 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f12=[a0].
  The return at 0xdac7528 has v0 = a0+4.
- `__glle_PopName` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac7530 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac7530-0xdac7568 (56 bytes).
  It occupies 56 bytes.
  The `lw` at 0xdac753c loads 4 bytes from abs 0x1148.
  The `jalr` at 0xdac754c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac7560 has v0 = a0.
- `__glle_PushName` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac7568 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac7568-0xdac75a8 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xdac7578 loads 4 bytes from abs 0x114c.
  The `lw` at 0xdac758c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac7588 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac75a0 has v0 = a0+4.
- `__glle_Clear` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac75e8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac75e8-0xdac7628 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xdac75f8 loads 4 bytes from abs 0x1154.
  The `lw` at 0xdac760c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac7608 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac7620 has v0 = a0+4.
- `__glle_ClearAccum` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac7628 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac7628-0xdac7674 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xdac7640 loads 4 bytes from abs 0x1158.
  The `lw` at 0xdac7644 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0xdac7648 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lwc1` at 0xdac764c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lwc1` at 0xdac7650 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac7654 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+8], a3=[a0+12]; fp f12=[a0], f14=[a0+4].
  The return at 0xdac766c has v0 = a0+16.
- `__glle_ClearIndex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac7674 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac7674-0xdac76b4 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xdac7684 loads 4 bytes from abs 0x115c.
  The `lwc1` at 0xdac7698 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac7694 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f12=[a0].
  The return at 0xdac76ac has v0 = a0+4.
- `__glle_ClearColor` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac76b4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac76b4-0xdac7700 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xdac76cc loads 4 bytes from abs 0x1160.
  The `lw` at 0xdac76d0 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0xdac76d4 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lwc1` at 0xdac76d8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lwc1` at 0xdac76dc loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac76e0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+8], a3=[a0+12]; fp f12=[a0], f14=[a0+4].
  The return at 0xdac76f8 has v0 = a0+16.
- `__glle_ClearStencil` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac7700 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac7700-0xdac7740 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xdac7710 loads 4 bytes from abs 0x1164.
  The `lw` at 0xdac7724 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac7720 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac7738 has v0 = a0+4.
- `__glle_ClearDepth` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac7740 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac7740-0xdac7780 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xdac7750 loads 4 bytes from abs 0x1168.
  The `ldc1` at 0xdac7764 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac7760 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f12=[a0]:8.
  The return at 0xdac7778 has v0 = a0+8.
- `__glle_StencilMask` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac7780 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac7780-0xdac77c0 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xdac7790 loads 4 bytes from abs 0x116c.
  The `lw` at 0xdac77a4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac77a0 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac77b8 has v0 = a0+4.
- `__glle_ColorMask` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac77c0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac77c0-0xdac7810 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0xdac77d8 loads 4 bytes from abs 0x1170.
  The `lbu` at 0xdac77e4 loads 1 byte from a0 (arg0 at entry) +0x3.
  The `lbu` at 0xdac77e8 loads 1 byte from a0 (arg0 at entry) +0x2.
  The `lbu` at 0xdac77ec loads 1 byte from a0 (arg0 at entry) +0x1.
  The `lbu` at 0xdac77f4 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac77f0 calls (unknown callee) with a0=[a0]:1, a1=[a0+1]:1, a2=[a0+2]:1, a3=[a0+3]:1.
  The return at 0xdac7808 has v0 = a0+4.
- `__glle_DepthMask` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac7810 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac7810-0xdac7850 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xdac7820 loads 4 bytes from abs 0x1174.
  The `lbu` at 0xdac7834 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac7830 calls (unknown callee) with a0=[a0]:1, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac7848 has v0 = a0+4.
- `__glle_IndexMask` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac7850 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac7850-0xdac7890 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xdac7860 loads 4 bytes from abs 0x1178.
  The `lw` at 0xdac7874 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac7870 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac7888 has v0 = a0+4.
- `__glle_Accum` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac7890 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac7890-0xdac78d8 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xdac78a0 loads 4 bytes from abs 0x117c.
  The `lw` at 0xdac78b0 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xdac78b4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac78b8 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0xdac78d0 has v0 = a0+8.
- `__glle_PopAttrib` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac78d8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac78d8-0xdac7910 (56 bytes).
  It occupies 56 bytes.
  The `lw` at 0xdac78e4 loads 4 bytes from abs 0x1190.
  The `jalr` at 0xdac78f4 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac7908 has v0 = a0.
- `__glle_PushAttrib` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac7910 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac7910-0xdac7950 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xdac7920 loads 4 bytes from abs 0x1194.
  The `lw` at 0xdac7934 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac7930 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac7948 has v0 = a0+4.
- `__glle_MapGrid1d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac7950 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac7950-0xdac79a4 (84 bytes).
  It occupies 84 bytes.
  The `lw` at 0xdac796c loads 4 bytes from abs 0x11a8.
  The `ldc1` at 0xdac7970 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xdac7974 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdac7978 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xdac797c loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `jalr` at 0xdac7984 calls (unknown callee) with a0=[a0+16], a1=a0 at entry (arg0), a2=[a0], a3=[a0+4].
  The return at 0xdac799c has v0 = a0+24.
- `__glle_MapGrid1f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac79a4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac79a4-0xdac79f0 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xdac79c0 loads 4 bytes from abs 0x11ac.
  The `lw` at 0xdac79c4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xdac79c8 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xdac79cc loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac79d0 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=a0 at entry (arg0).
  The return at 0xdac79e8 has v0 = a0+12.
- `__glle_MapGrid2d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac79f0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac79f0-0xdac7a5c (108 bytes).
  It occupies 108 bytes.
  The `ldc1` at 0xdac7a0c loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xdac7a10 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdac7a14 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xdac7a18 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `lw` at 0xdac7a20 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lw` at 0xdac7a24 loads 4 bytes from abs 0x11b0.
  The `ldc1` at 0xdac7a2c loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ldc1` at 0xdac7a34 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `jalr` at 0xdac7a3c calls (unknown callee) with a0=[a0+32], a1=a0 at entry (arg0), a2=[a0], a3=[a0+4].
  The return at 0xdac7a54 has v0 = a0+40.
- `__glle_MapGrid2f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac7a5c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac7a5c-0xdac7abc (96 bytes).
  It occupies 96 bytes.
  The `lwc1` at 0xdac7a7c loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdac7a80 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0xdac7a84 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xdac7a88 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xdac7a8c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdac7a90 loads 4 bytes from abs 0x11b4.
  The `lwc1` at 0xdac7a98 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `jalr` at 0xdac7a9c calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=[a0+12].
  The return at 0xdac7ab4 has v0 = a0+24.
- `__glle_EvalCoord1dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac7abc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac7abc-0xdac7af8 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac7ac8 loads 4 bytes from abs 0x11bc.
  The `jalr` at 0xdac7ad8 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac7af0 has v0 = a0+8.
- `__glle_EvalCoord1fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac7af8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac7af8-0xdac7b34 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac7b04 loads 4 bytes from abs 0x11c4.
  The `jalr` at 0xdac7b14 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac7b2c has v0 = a0+4.
- `__glle_EvalCoord2dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac7b34 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac7b34-0xdac7b70 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac7b40 loads 4 bytes from abs 0x11cc.
  The `jalr` at 0xdac7b50 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac7b68 has v0 = a0+16.
- `__glle_EvalCoord2fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac7b70 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac7b70-0xdac7bac (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac7b7c loads 4 bytes from abs 0x11d4.
  The `jalr` at 0xdac7b8c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac7ba4 has v0 = a0+8.
- `__glle_EvalMesh1` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac7bac (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac7bac-0xdac7bf8 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xdac7bc8 loads 4 bytes from abs 0x11d8.
  The `lw` at 0xdac7bcc loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xdac7bd0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xdac7bd4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac7bd8 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=a0 at entry (arg0).
  The return at 0xdac7bf0 has v0 = a0+12.
- `__glle_EvalPoint1` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac7bf8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac7bf8-0xdac7c38 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xdac7c08 loads 4 bytes from abs 0x11dc.
  The `lw` at 0xdac7c1c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac7c18 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac7c30 has v0 = a0+4.
- `__glle_EvalMesh2` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac7c38 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac7c38-0xdac7c90 (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0xdac7c58 loads 4 bytes from abs 0x11e0.
  The `lw` at 0xdac7c5c loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdac7c60 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0xdac7c64 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xdac7c68 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xdac7c6c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac7c70 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=[a0+12].
  The return at 0xdac7c88 has v0 = a0+20.
- `__glle_EvalPoint2` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac7c90 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac7c90-0xdac7cd8 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xdac7ca0 loads 4 bytes from abs 0x11e4.
  The `lw` at 0xdac7cb0 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xdac7cb4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac7cb8 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0xdac7cd0 has v0 = a0+8.
- `__glle_AlphaFunc` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac7cd8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac7cd8-0xdac7d20 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xdac7ce8 loads 4 bytes from abs 0x11e8.
  The `lw` at 0xdac7cf8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xdac7cfc loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac7d00 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0xdac7d18 has v0 = a0+8.
- `__glle_BlendFunc` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac7d20 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac7d20-0xdac7d68 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xdac7d30 loads 4 bytes from abs 0x11ec.
  The `lw` at 0xdac7d40 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xdac7d44 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac7d48 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0xdac7d60 has v0 = a0+8.
- `__glle_LogicOp` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac7d68 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac7d68-0xdac7da8 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xdac7d78 loads 4 bytes from abs 0x11f0.
  The `lw` at 0xdac7d8c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac7d88 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac7da0 has v0 = a0+4.
- `__glle_StencilFunc` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac7da8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac7da8-0xdac7df4 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xdac7dc4 loads 4 bytes from abs 0x11f4.
  The `lw` at 0xdac7dc8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xdac7dcc loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xdac7dd0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac7dd4 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=a0 at entry (arg0).
  The return at 0xdac7dec has v0 = a0+12.
- `__glle_StencilOp` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac7df4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac7df4-0xdac7e40 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xdac7e10 loads 4 bytes from abs 0x11f8.
  The `lw` at 0xdac7e14 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xdac7e18 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xdac7e1c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac7e20 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=a0 at entry (arg0).
  The return at 0xdac7e38 has v0 = a0+12.
- `__glle_DepthFunc` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac7e40 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac7e40-0xdac7e80 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xdac7e50 loads 4 bytes from abs 0x11fc.
  The `lw` at 0xdac7e64 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac7e60 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac7e78 has v0 = a0+4.
- `__glle_DepthRange` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac8100 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac8100-0xdac8144 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0xdac8110 loads 4 bytes from abs 0x12a8.
  The `ldc1` at 0xdac811c loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ldc1` at 0xdac8120 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac8124 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f12=[a0]:8, f14=[a0+8]:8.
  The return at 0xdac813c has v0 = a0+16.
- `__glle_Frustum` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac8144 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac8144-0xdac81a8 (100 bytes).
  It occupies 100 bytes.
  The `ldc1` at 0xdac815c loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ldc1` at 0xdac8160 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ldc1` at 0xdac8164 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ldc1` at 0xdac816c loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0xdac8170 loads 4 bytes from abs 0x12ac.
  The `ldc1` at 0xdac8178 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ldc1` at 0xdac8180 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `jalr` at 0xdac8188 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f12=[a0]:8, f14=[a0+8]:8.
  The return at 0xdac81a0 has v0 = a0+48.
- `__glle_LoadIdentity` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac81a8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac81a8-0xdac81e0 (56 bytes).
  It occupies 56 bytes.
  The `lw` at 0xdac81b4 loads 4 bytes from abs 0x12b0.
  The `jalr` at 0xdac81c4 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac81d8 has v0 = a0.
- `__glle_MatrixMode` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac8258 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac8258-0xdac8298 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xdac8268 loads 4 bytes from abs 0x12bc.
  The `lw` at 0xdac827c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac8278 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac8290 has v0 = a0+4.
- `__glle_MultMatrixf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac8298 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac8298-0xdac82d4 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac82a4 loads 4 bytes from abs 0x12c0.
  The `jalr` at 0xdac82b4 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac82cc has v0 = a0+64.
- `__glle_MultMatrixd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac82d4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac82d4-0xdac8310 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac82e0 loads 4 bytes from abs 0x12c4.
  The `jalr` at 0xdac82f0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac8308 has v0 = a0+128.
- `__glle_Ortho` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac8310 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac8310-0xdac8374 (100 bytes).
  It occupies 100 bytes.
  The `ldc1` at 0xdac8328 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ldc1` at 0xdac832c loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ldc1` at 0xdac8330 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ldc1` at 0xdac8338 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0xdac833c loads 4 bytes from abs 0x12c8.
  The `ldc1` at 0xdac8344 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ldc1` at 0xdac834c loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `jalr` at 0xdac8354 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f12=[a0]:8, f14=[a0+8]:8.
  The return at 0xdac836c has v0 = a0+48.
- `__glle_PopMatrix` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac8374 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac8374-0xdac83ac (56 bytes).
  It occupies 56 bytes.
  The `lw` at 0xdac8380 loads 4 bytes from abs 0x12cc.
  The `jalr` at 0xdac8390 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac83a4 has v0 = a0.
- `__glle_PushMatrix` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac83ac (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac83ac-0xdac83e4 (56 bytes).
  It occupies 56 bytes.
  The `lw` at 0xdac83b8 loads 4 bytes from abs 0x12d0.
  The `jalr` at 0xdac83c8 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac83dc has v0 = a0.
- `__glle_Rotated` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac83e4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac83e4-0xdac8438 (84 bytes).
  It occupies 84 bytes.
  The `ldc1` at 0xdac83fc loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ldc1` at 0xdac8400 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ldc1` at 0xdac8404 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdac8408 loads 4 bytes from abs 0x12d4.
  The `ldc1` at 0xdac8410 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `jalr` at 0xdac8418 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f12=[a0]:8, f14=[a0+8]:8.
  The return at 0xdac8430 has v0 = a0+32.
- `__glle_Rotatef` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac8438 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac8438-0xdac8484 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xdac8450 loads 4 bytes from abs 0x12d8.
  The `lw` at 0xdac8454 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0xdac8458 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lwc1` at 0xdac845c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lwc1` at 0xdac8460 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac8464 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+8], a3=[a0+12]; fp f12=[a0], f14=[a0+4].
  The return at 0xdac847c has v0 = a0+16.
- `__glle_Scaled` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac8484 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac8484-0xdac84d0 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xdac849c loads 4 bytes from abs 0x12dc.
  The `ldc1` at 0xdac84a0 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ldc1` at 0xdac84a4 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ldc1` at 0xdac84a8 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac84b0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f12=[a0]:8, f14=[a0+8]:8.
  The return at 0xdac84c8 has v0 = a0+24.
- `__glle_Scalef` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac84d0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac84d0-0xdac8518 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xdac84e8 loads 4 bytes from abs 0x12e0.
  The `lw` at 0xdac84ec loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lwc1` at 0xdac84f0 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lwc1` at 0xdac84f4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac84f8 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+8], a3=a3 at entry (arg3); fp f12=[a0], f14=[a0+4].
  The return at 0xdac8510 has v0 = a0+12.
- `__glle_Translated` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac8518 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac8518-0xdac8564 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xdac8530 loads 4 bytes from abs 0x12e4.
  The `ldc1` at 0xdac8534 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ldc1` at 0xdac8538 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ldc1` at 0xdac853c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac8544 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f12=[a0]:8, f14=[a0+8]:8.
  The return at 0xdac855c has v0 = a0+24.
- `__glle_Translatef` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac8564 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac8564-0xdac85ac (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xdac857c loads 4 bytes from abs 0x12e8.
  The `lw` at 0xdac8580 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lwc1` at 0xdac8584 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lwc1` at 0xdac8588 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac858c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+8], a3=a3 at entry (arg3); fp f12=[a0], f14=[a0+4].
  The return at 0xdac85a4 has v0 = a0+12.
- `__glle_Viewport` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac85ac (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac85ac-0xdac85fc (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0xdac85c4 loads 4 bytes from abs 0x12ec.
  The `lw` at 0xdac85d0 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0xdac85d4 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xdac85d8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xdac85e0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac85dc calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=[a0+12].
  The return at 0xdac85f4 has v0 = a0+16.
- `__glle_BlendColorEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac85fc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac85fc-0xdac8648 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xdac8614 loads 4 bytes from abs 0x12f0.
  The `lw` at 0xdac8618 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0xdac861c loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lwc1` at 0xdac8620 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lwc1` at 0xdac8624 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac8628 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+8], a3=[a0+12]; fp f12=[a0], f14=[a0+4].
  The return at 0xdac8640 has v0 = a0+16.
- `__glle_BlendEquationEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac8648 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac8648-0xdac8688 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xdac8658 loads 4 bytes from abs 0x12f4.
  The `lw` at 0xdac866c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac8668 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac8680 has v0 = a0+4.
- `__glle_PolygonOffsetEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac8688 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac8688-0xdac86cc (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0xdac8698 loads 4 bytes from abs 0x12f8.
  The `lwc1` at 0xdac86a4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lwc1` at 0xdac86a8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac86ac calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f12=[a0], f14=[a0+4].
  The return at 0xdac86c4 has v0 = a0+8.
- `__glle_ConvolutionParameterfEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac86cc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac86cc-0xdac8718 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xdac86e8 loads 4 bytes from abs 0x130c.
  The `lw` at 0xdac86ec loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xdac86f0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xdac86f4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac86f8 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=a0 at entry (arg0).
  The return at 0xdac8710 has v0 = a0+12.
- `__glle_ConvolutionParameterfvEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac8718 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac8718-0xdac8784 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xdac8728 loads 4 bytes from abs 0x1310.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xdac8738, `lw` at 0xdac8758.
  The `lw` at 0xdac873c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac8744 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0+8, a3=a0 at entry (arg0).
  The `jalr` at 0xdac875c calls __glConvolutionParameterfvEXT_size [0xda4d1b4] with a0=[a0+4], a1=?, a2=?, a3=a0 at entry (arg0).
  The return at 0xdac877c has v0 = (a0 + (ret(__glConvolutionParameterfvEXT_size) << 0x2))+8.
- `__glle_ConvolutionParameteriEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac8784 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac8784-0xdac87d0 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xdac87a0 loads 4 bytes from abs 0x1314.
  The `lw` at 0xdac87a4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xdac87a8 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xdac87ac loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac87b0 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=a0 at entry (arg0).
  The return at 0xdac87c8 has v0 = a0+12.
- `__glle_ConvolutionParameterivEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac87d0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac87d0-0xdac883c (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xdac87e0 loads 4 bytes from abs 0x1318.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xdac87f0, `lw` at 0xdac8810.
  The `lw` at 0xdac87f4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac87fc calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0+8, a3=a0 at entry (arg0).
  The `jalr` at 0xdac8814 calls __glConvolutionParameterivEXT_size [0xda4d1f8] with a0=[a0+4], a1=?, a2=?, a3=a0 at entry (arg0).
  The return at 0xdac8834 has v0 = (a0 + (ret(__glConvolutionParameterivEXT_size) << 0x2))+8.
- `__glle_HistogramEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac88f4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac88f4-0xdac8944 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0xdac890c loads 4 bytes from abs 0x1350.
  The `lbu` at 0xdac8918 loads 1 byte from a0 (arg0 at entry) +0xc.
  The `lw` at 0xdac891c loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xdac8920 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xdac8928 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac8924 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=[a0+12]:1.
  The return at 0xdac893c has v0 = a0+16.
- `__glle_MinmaxEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac8944 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac8944-0xdac8990 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xdac8960 loads 4 bytes from abs 0x1354.
  The `lw` at 0xdac8964 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lbu` at 0xdac8968 loads 1 byte from a0 (arg0 at entry) +0x8.
  The `lw` at 0xdac896c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac8970 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8]:1, a3=a0 at entry (arg0).
  The return at 0xdac8988 has v0 = a0+12.
- `__glle_CopyTexImage1DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac8abc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac8abc-0xdac8b24 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xdac8adc loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdac8ae0 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0xdac8ae4 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xdac8ae8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xdac8aec loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdac8af4 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `lw` at 0xdac8af8 loads 4 bytes from abs 0x13a4.
  The `lw` at 0xdac8b00 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `jalr` at 0xdac8b04 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=[a0+12].
  The return at 0xdac8b1c has v0 = a0+28.
- `__glle_CopyTexImage2DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac8b24 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac8b24-0xdac8b98 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xdac8b44 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdac8b48 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0xdac8b4c loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xdac8b50 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xdac8b54 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdac8b5c loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `lw` at 0xdac8b64 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0xdac8b6c loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xdac8b74 loads 4 bytes from abs 0x13a8.
  The `jalr` at 0xdac8b78 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=[a0+12].
  The return at 0xdac8b90 has v0 = a0+32.
- `__glle_CopyTexSubImage1DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac8b98 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac8b98-0xdac8bf8 (96 bytes).
  It occupies 96 bytes.
  The `lw` at 0xdac8bb8 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdac8bbc loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0xdac8bc0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xdac8bc4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xdac8bc8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdac8bcc loads 4 bytes from abs 0x13ac.
  The `lw` at 0xdac8bd4 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `jalr` at 0xdac8bd8 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=[a0+12].
  The return at 0xdac8bf0 has v0 = a0+24.
- `__glle_CopyTexSubImage2DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac8bf8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac8bf8-0xdac8c6c (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xdac8c18 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdac8c1c loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0xdac8c20 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xdac8c24 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xdac8c28 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdac8c30 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `lw` at 0xdac8c38 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0xdac8c40 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xdac8c48 loads 4 bytes from abs 0x13b0.
  The `jalr` at 0xdac8c4c calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=[a0+12].
  The return at 0xdac8c64 has v0 = a0+32.
- `__glle_CopyTexSubImage3DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac8c6c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac8c6c-0xdac8ce4 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xdac8c8c loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdac8c90 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0xdac8c94 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xdac8c98 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xdac8c9c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdac8ca4 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `lw` at 0xdac8cac loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0xdac8cb4 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xdac8cbc loads 4 bytes from abs 0x13b4.
  The `lw` at 0xdac8cc0 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `jalr` at 0xdac8cc4 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=[a0+12].
  The return at 0xdac8cdc has v0 = a0+36.
- `__glle_PolygonOffset` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac8ce4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac8ce4-0xdac8d28 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0xdac8cf4 loads 4 bytes from abs 0x13e0.
  The `lwc1` at 0xdac8d00 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lwc1` at 0xdac8d04 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac8d08 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f12=[a0], f14=[a0+4].
  The return at 0xdac8d20 has v0 = a0+8.
- `__glle_Indexubv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac8d28 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac8d28-0xdac8d64 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac8d34 loads 4 bytes from abs 0x167c.
  The `jalr` at 0xdac8d44 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac8d5c has v0 = a0+4.
- `__glle_SampleMaskSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac8d64 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac8d64-0xdac8da8 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0xdac8d74 loads 4 bytes from abs 0x13ec.
  The `lbu` at 0xdac8d80 loads 1 byte from a0 (arg0 at entry) +0x4.
  The `lwc1` at 0xdac8d84 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac8d88 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+4]:1, a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f12=[a0].
  The return at 0xdac8da0 has v0 = a0+8.
- `__glle_SamplePatternSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac8da8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac8da8-0xdac8de8 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xdac8db8 loads 4 bytes from abs 0x13f0.
  The `lw` at 0xdac8dcc loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac8dc8 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac8de0 has v0 = a0+4.
- `__glle_DetailTexFuncSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac8e20 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac8e20-0xdac8e78 (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0xdac8e30 loads 4 bytes from abs 0x13f8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xdac8e40, `lw` at 0xdac8e60.
  The `lw` at 0xdac8e44 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac8e4c calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0+8, a3=a0 at entry (arg0).
  The return at 0xdac8e70 has v0 = (a0 + ([a0+4] << 0x3))+8.
- `__glle_SharpenTexFuncSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac8e78 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac8e78-0xdac8ed0 (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0xdac8e88 loads 4 bytes from abs 0x1400.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xdac8e98, `lw` at 0xdac8eb8.
  The `lw` at 0xdac8e9c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac8ea4 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0+8, a3=a0 at entry (arg0).
  The return at 0xdac8ec8 has v0 = (a0 + ([a0+4] << 0x3))+8.
- `__glle_SpriteParameterfSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac9040 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac9040-0xdac9088 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xdac9050 loads 4 bytes from abs 0x1430.
  The `lw` at 0xdac9060 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xdac9064 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac9068 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0xdac9080 has v0 = a0+8.
- `__glle_SpriteParameterfvSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac9088 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac9088-0xdac90f0 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xdac9098 loads 4 bytes from abs 0x1434.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0xdac90a8, `lw` at 0xdac90c4.
  The `jalr` at 0xdac90b0 calls (unknown callee) with a0=[a0], a1=a0+4, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0xdac90c8 calls __glSpriteParameterfvSGIX_size [0xda81380] with a0=[a0], a1=?, a2=?, a3=?.
  The return at 0xdac90e8 has v0 = (a0 + (ret(__glSpriteParameterfvSGIX_size) << 0x2))+4.
- `__glle_SpriteParameteriSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac90f0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac90f0-0xdac9138 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xdac9100 loads 4 bytes from abs 0x1438.
  The `lw` at 0xdac9110 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xdac9114 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac9118 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0xdac9130 has v0 = a0+8.
- `__glle_SpriteParameterivSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac9138 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac9138-0xdac91a0 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xdac9148 loads 4 bytes from abs 0x143c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0xdac9158, `lw` at 0xdac9174.
  The `jalr` at 0xdac9160 calls (unknown callee) with a0=[a0], a1=a0+4, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0xdac9178 calls __glSpriteParameterivSGIX_size [0xda813c4] with a0=[a0], a1=?, a2=?, a3=?.
  The return at 0xdac9198 has v0 = (a0 + (ret(__glSpriteParameterivSGIX_size) << 0x2))+4.
- `__glle_PointParameterfSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac91fc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac91fc-0xdac9244 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xdac920c loads 4 bytes from abs 0x1448.
  The `lw` at 0xdac921c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xdac9220 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac9224 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0xdac923c has v0 = a0+8.
- `__glle_PointParameterfvSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac9244 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac9244-0xdac92ac (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xdac9254 loads 4 bytes from abs 0x144c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0xdac9264, `lw` at 0xdac9280.
  The `jalr` at 0xdac926c calls (unknown callee) with a0=[a0], a1=a0+4, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0xdac9284 calls __glPointParameterfvSGIS_size [0xda813f8] with a0=[a0], a1=?, a2=?, a3=?.
  The return at 0xdac92a4 has v0 = (a0 + (ret(__glPointParameterfvSGIS_size) << 0x2))+4.
- `__glle_FogFuncSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac92ac (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac92ac-0xdac9300 (84 bytes).
  It occupies 84 bytes.
  The `lw` at 0xdac92bc loads 4 bytes from abs 0x1450.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0xdac92cc, `lw` at 0xdac92e8.
  The `jalr` at 0xdac92d4 calls (unknown callee) with a0=[a0], a1=a0+4, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0xdac92f8 has v0 = (a0 + ([a0] << 0x3))+4.
- `__glle_StartInstrumentsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac9340 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac9340-0xdac9378 (56 bytes).
  It occupies 56 bytes.
  The `lw` at 0xdac934c loads 4 bytes from abs 0x1464.
  The `jalr` at 0xdac935c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac9370 has v0 = a0.
- `__glle_StopInstrumentsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac9378 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac9378-0xdac93b8 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xdac9388 loads 4 bytes from abs 0x1468.
  The `lw` at 0xdac939c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac9398 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac93b0 has v0 = a0+4.
- `__glle_ReferencePlaneSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac93b8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac93b8-0xdac93f4 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdac93c4 loads 4 bytes from abs 0x1470.
  The `jalr` at 0xdac93d4 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac93ec has v0 = a0+32.
- `__glle_FrameZoomSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac93f4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac93f4-0xdac9434 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xdac9404 loads 4 bytes from abs 0x1474.
  The `lw` at 0xdac9418 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac9414 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac942c has v0 = a0+4.
- `__glle_DeformSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac9434 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac9434-0xdac9474 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xdac9444 loads 4 bytes from abs 0x1484.
  The `lw` at 0xdac9458 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac9454 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac946c has v0 = a0+4.
- `__glle_LoadIdentityDeformationMapSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac9474 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac9474-0xdac94b4 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xdac9484 loads 4 bytes from abs 0x1488.
  The `lw` at 0xdac9498 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac9494 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac94ac has v0 = a0+4.
- `__glle_AsyncMarkerSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac966c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac966c-0xdac96ac (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xdac967c loads 4 bytes from abs 0x14cc.
  The `lw` at 0xdac9690 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac968c calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac96a4 has v0 = a0+4.
- `__glle_FragmentColorMaterialSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac96ac (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac96ac-0xdac96f4 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xdac96bc loads 4 bytes from abs 0x14e4.
  The `lw` at 0xdac96cc loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xdac96d0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac96d4 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0xdac96ec has v0 = a0+8.
- `__glle_FragmentLightfSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac96f4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac96f4-0xdac9740 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xdac9710 loads 4 bytes from abs 0x14e8.
  The `lw` at 0xdac9714 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xdac9718 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xdac971c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac9720 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=a0 at entry (arg0).
  The return at 0xdac9738 has v0 = a0+12.
- `__glle_FragmentLightfvSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac9740 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac9740-0xdac97ac (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xdac9750 loads 4 bytes from abs 0x14ec.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xdac9760, `lw` at 0xdac9780.
  The `lw` at 0xdac9764 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac976c calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0+8, a3=a0 at entry (arg0).
  The `jalr` at 0xdac9784 calls __glFragmentLightfvSGIX_size [0xda8162c] with a0=[a0+4], a1=?, a2=?, a3=a0 at entry (arg0).
  The return at 0xdac97a4 has v0 = (a0 + (ret(__glFragmentLightfvSGIX_size) << 0x2))+8.
- `__glle_FragmentLightiSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac97ac (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac97ac-0xdac97f8 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xdac97c8 loads 4 bytes from abs 0x14f0.
  The `lw` at 0xdac97cc loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xdac97d0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xdac97d4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac97d8 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=a0 at entry (arg0).
  The return at 0xdac97f0 has v0 = a0+12.
- `__glle_FragmentLightivSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac97f8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac97f8-0xdac9864 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xdac9808 loads 4 bytes from abs 0x14f4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xdac9818, `lw` at 0xdac9838.
  The `lw` at 0xdac981c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac9824 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0+8, a3=a0 at entry (arg0).
  The `jalr` at 0xdac983c calls __glFragmentLightivSGIX_size [0xda816e4] with a0=[a0+4], a1=?, a2=?, a3=a0 at entry (arg0).
  The return at 0xdac985c has v0 = (a0 + (ret(__glFragmentLightivSGIX_size) << 0x2))+8.
- `__glle_FragmentLightModelfSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac9864 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac9864-0xdac98ac (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xdac9874 loads 4 bytes from abs 0x14f8.
  The `lw` at 0xdac9884 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xdac9888 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac988c calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0xdac98a4 has v0 = a0+8.
- `__glle_FragmentLightModelfvSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac98ac (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac98ac-0xdac9914 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xdac98bc loads 4 bytes from abs 0x14fc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0xdac98cc, `lw` at 0xdac98e8.
  The `jalr` at 0xdac98d4 calls (unknown callee) with a0=[a0], a1=a0+4, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0xdac98ec calls __glFragmentLightModelfvSGIX_size [0xda81718] with a0=[a0], a1=?, a2=?, a3=?.
  The return at 0xdac990c has v0 = (a0 + (ret(__glFragmentLightModelfvSGIX_size) << 0x2))+4.
- `__glle_FragmentLightModeliSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac9914 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac9914-0xdac995c (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xdac9924 loads 4 bytes from abs 0x1500.
  The `lw` at 0xdac9934 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xdac9938 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac993c calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0xdac9954 has v0 = a0+8.
- `__glle_FragmentLightModelivSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac995c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac995c-0xdac99c4 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xdac996c loads 4 bytes from abs 0x1504.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0xdac997c, `lw` at 0xdac9998.
  The `jalr` at 0xdac9984 calls (unknown callee) with a0=[a0], a1=a0+4, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0xdac999c calls __glFragmentLightModelivSGIX_size [0xda8176c] with a0=[a0], a1=?, a2=?, a3=?.
  The return at 0xdac99bc has v0 = (a0 + (ret(__glFragmentLightModelivSGIX_size) << 0x2))+4.
- `__glle_FragmentMaterialfSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac99c4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac99c4-0xdac9a10 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xdac99e0 loads 4 bytes from abs 0x1508.
  The `lw` at 0xdac99e4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xdac99e8 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xdac99ec loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac99f0 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=a0 at entry (arg0).
  The return at 0xdac9a08 has v0 = a0+12.
- `__glle_FragmentMaterialfvSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac9a10 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac9a10-0xdac9a7c (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xdac9a20 loads 4 bytes from abs 0x150c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xdac9a30, `lw` at 0xdac9a50.
  The `lw` at 0xdac9a34 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac9a3c calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0+8, a3=a0 at entry (arg0).
  The `jalr` at 0xdac9a54 calls __glFragmentMaterialfvSGIX_size [0xda81584] with a0=[a0+4], a1=?, a2=?, a3=a0 at entry (arg0).
  The return at 0xdac9a74 has v0 = (a0 + (ret(__glFragmentMaterialfvSGIX_size) << 0x2))+8.
- `__glle_FragmentMaterialiSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac9a7c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac9a7c-0xdac9ac8 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xdac9a98 loads 4 bytes from abs 0x1510.
  The `lw` at 0xdac9a9c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xdac9aa0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xdac9aa4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac9aa8 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=a0 at entry (arg0).
  The return at 0xdac9ac0 has v0 = a0+12.
- `__glle_FragmentMaterialivSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac9ac8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac9ac8-0xdac9b34 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xdac9ad8 loads 4 bytes from abs 0x1514.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xdac9ae8, `lw` at 0xdac9b08.
  The `lw` at 0xdac9aec loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac9af4 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0+8, a3=a0 at entry (arg0).
  The `jalr` at 0xdac9b0c calls __glFragmentMaterialivSGIX_size [0xda815f8] with a0=[a0+4], a1=?, a2=?, a3=a0 at entry (arg0).
  The return at 0xdac9b2c has v0 = (a0 + (ret(__glFragmentMaterialivSGIX_size) << 0x2))+8.
- `__glle_LightEnviSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac9b34 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac9b34-0xdac9b7c (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xdac9b44 loads 4 bytes from abs 0x1528.
  The `lw` at 0xdac9b54 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xdac9b58 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdac9b5c calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0xdac9b74 has v0 = a0+8.
- `__glsplc_ListBase` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac9bd0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac9bd0-0xdac9c1c (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xdac9c08 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdac9bf4 calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0x2, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdac9bfc targets 0xdac9c0c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdac9c14 has v0 = ret(__glSPDlalloc).
- `__glsplc_Color3b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac9c1c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac9c1c-0xdac9c80 (100 bytes).
  It occupies 100 bytes.
  The `sb` at 0xdac9c5c stores 1 byte to ret(__glSPDlalloc) +0x0.
  The `sb` at 0xdac9c64 stores 1 byte to ret(__glSPDlalloc) +0x1.
  The `sb` at 0xdac9c6c stores 1 byte to ret(__glSPDlalloc) +0x2.
  The `jalr` at 0xdac9c48 calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0x5, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdac9c50 targets 0xdac9c70, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdac9c78 has v0 = ret(__glSPDlalloc).
- `__glsplc_Color3bv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac9c80 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac9c80-0xdac9ce4 (100 bytes).
  It occupies 100 bytes.
  The `lb` at 0xdac9cbc loads 1 byte from a0 (arg0 at entry) +0x0.
  The `sb` at 0xdac9cc0 stores 1 byte to ret(__glSPDlalloc) +0x0.
  The `lb` at 0xdac9cc4 loads 1 byte from a0 (arg0 at entry) +0x1.
  The `sb` at 0xdac9cc8 stores 1 byte to ret(__glSPDlalloc) +0x1.
  The `lb` at 0xdac9ccc loads 1 byte from a0 (arg0 at entry) +0x2.
  The `sb` at 0xdac9cd0 stores 1 byte to ret(__glSPDlalloc) +0x2.
  The `jalr` at 0xdac9ca8 calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0x5, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xdac9cb4 targets 0xdac9cd4, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdac9cdc has v0 = ret(__glSPDlalloc).
- `__glsplc_Color3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac9ce4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac9ce4-0xdac9d44 (96 bytes).
  It occupies 96 bytes.
  The `sdc1` at 0xdac9d20 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `sdc1` at 0xdac9d28 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `sdc1` at 0xdac9d30 stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `jalr` at 0xdac9d0c calls __glSPDlalloc2 [0xd97687c] with a0=0x18, a1=0x6, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdac9d14 targets 0xdac9d34, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xdac9d3c has v0 = ret(__glSPDlalloc2).
- `__glsplc_Color3dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac9d44 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac9d44-0xdac9da8 (100 bytes).
  It occupies 100 bytes.
  The `ldc1` at 0xdac9d80 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xdac9d84 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `ldc1` at 0xdac9d88 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sdc1` at 0xdac9d8c stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `ldc1` at 0xdac9d90 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `sdc1` at 0xdac9d94 stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `jalr` at 0xdac9d6c calls __glSPDlalloc2 [0xd97687c] with a0=0x18, a1=0x6, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xdac9d78 targets 0xdac9d98, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xdac9da0 has v0 = ret(__glSPDlalloc2).
- `__glsplc_Color3f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac9da8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac9da8-0xdac9e0c (100 bytes).
  It occupies 100 bytes.
  The `swc1` at 0xdac9de8 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xdac9df0 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `swc1` at 0xdac9df8 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xdac9dd4 calls __glSPDlalloc [0xd976680] with a0=0xc, a1=0x7, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdac9ddc targets 0xdac9dfc, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdac9e04 has v0 = ret(__glSPDlalloc).
- `__glsplc_Color3fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac9e0c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac9e0c-0xdac9e70 (100 bytes).
  It occupies 100 bytes.
  The `lwc1` at 0xdac9e48 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xdac9e4c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lwc1` at 0xdac9e50 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xdac9e54 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `lwc1` at 0xdac9e58 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `swc1` at 0xdac9e5c stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xdac9e34 calls __glSPDlalloc [0xd976680] with a0=0xc, a1=0x7, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xdac9e40 targets 0xdac9e60, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdac9e68 has v0 = ret(__glSPDlalloc).
- `__glsplc_Color3i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac9e70 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac9e70-0xdac9ed4 (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0xdac9eb0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdac9eb8 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xdac9ec0 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xdac9e9c calls __glSPDlalloc [0xd976680] with a0=0xc, a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdac9ea4 targets 0xdac9ec4, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdac9ecc has v0 = ret(__glSPDlalloc).
- `__glsplc_Color3iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac9ed4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac9ed4-0xdac9f38 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0xdac9f10 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xdac9f14 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lw` at 0xdac9f18 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xdac9f1c stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `lw` at 0xdac9f20 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xdac9f24 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xdac9efc calls __glSPDlalloc [0xd976680] with a0=0xc, a1=0x8, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xdac9f08 targets 0xdac9f28, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdac9f30 has v0 = ret(__glSPDlalloc).
- `__glsplc_Color3s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac9f38 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac9f38-0xdac9f9c (100 bytes).
  It occupies 100 bytes.
  The `sh` at 0xdac9f78 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `sh` at 0xdac9f80 stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `sh` at 0xdac9f88 stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdac9f64 calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0x9, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdac9f6c targets 0xdac9f8c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdac9f94 has v0 = ret(__glSPDlalloc).
- `__glsplc_Color3sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac9f9c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac9f9c-0xdaca000 (100 bytes).
  It occupies 100 bytes.
  The `lh` at 0xdac9fd8 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xdac9fdc stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `lh` at 0xdac9fe0 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xdac9fe4 stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `lh` at 0xdac9fe8 loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xdac9fec stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdac9fc4 calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0x9, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xdac9fd0 targets 0xdac9ff0, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdac9ff8 has v0 = ret(__glSPDlalloc).
- `__glsplc_Color3ub` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaca000 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaca000-0xdaca064 (100 bytes).
  It occupies 100 bytes.
  The `sb` at 0xdaca040 stores 1 byte to ret(__glSPDlalloc) +0x0.
  The `sb` at 0xdaca048 stores 1 byte to ret(__glSPDlalloc) +0x1.
  The `sb` at 0xdaca050 stores 1 byte to ret(__glSPDlalloc) +0x2.
  The `jalr` at 0xdaca02c calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0xa, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaca034 targets 0xdaca054, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdaca05c has v0 = ret(__glSPDlalloc).
- `__glsplc_Color3ubv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaca064 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaca064-0xdaca0c8 (100 bytes).
  It occupies 100 bytes.
  The `lbu` at 0xdaca0a0 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `sb` at 0xdaca0a4 stores 1 byte to ret(__glSPDlalloc) +0x0.
  The `lbu` at 0xdaca0a8 loads 1 byte from a0 (arg0 at entry) +0x1.
  The `sb` at 0xdaca0ac stores 1 byte to ret(__glSPDlalloc) +0x1.
  The `lbu` at 0xdaca0b0 loads 1 byte from a0 (arg0 at entry) +0x2.
  The `sb` at 0xdaca0b4 stores 1 byte to ret(__glSPDlalloc) +0x2.
  The `jalr` at 0xdaca08c calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0xa, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaca098 targets 0xdaca0b8, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdaca0c0 has v0 = ret(__glSPDlalloc).
- `__glsplc_Color3ui` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaca0c8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaca0c8-0xdaca12c (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0xdaca108 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdaca110 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xdaca118 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xdaca0f4 calls __glSPDlalloc [0xd976680] with a0=0xc, a1=0xb, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaca0fc targets 0xdaca11c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdaca124 has v0 = ret(__glSPDlalloc).
- `__glsplc_Color3uiv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaca12c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaca12c-0xdaca190 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0xdaca168 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xdaca16c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lw` at 0xdaca170 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xdaca174 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `lw` at 0xdaca178 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xdaca17c stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xdaca154 calls __glSPDlalloc [0xd976680] with a0=0xc, a1=0xb, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaca160 targets 0xdaca180, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdaca188 has v0 = ret(__glSPDlalloc).
- `__glsplc_Color3us` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaca190 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaca190-0xdaca1f4 (100 bytes).
  It occupies 100 bytes.
  The `sh` at 0xdaca1d0 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `sh` at 0xdaca1d8 stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `sh` at 0xdaca1e0 stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdaca1bc calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaca1c4 targets 0xdaca1e4, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdaca1ec has v0 = ret(__glSPDlalloc).
- `__glsplc_Color3usv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaca1f4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaca1f4-0xdaca258 (100 bytes).
  It occupies 100 bytes.
  The `lhu` at 0xdaca230 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xdaca234 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `lhu` at 0xdaca238 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xdaca23c stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `lhu` at 0xdaca240 loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xdaca244 stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdaca21c calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0xc, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaca228 targets 0xdaca248, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdaca250 has v0 = ret(__glSPDlalloc).
- `__glsplc_Color4b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaca258 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaca258-0xdaca2c8 (112 bytes).
  It occupies 112 bytes.
  The `sb` at 0xdaca29c stores 1 byte to ret(__glSPDlalloc) +0x0.
  The `sb` at 0xdaca2a4 stores 1 byte to ret(__glSPDlalloc) +0x1.
  The `sb` at 0xdaca2ac stores 1 byte to ret(__glSPDlalloc) +0x2.
  The `sb` at 0xdaca2b4 stores 1 byte to ret(__glSPDlalloc) +0x3.
  The `jalr` at 0xdaca288 calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0xd, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaca290 targets 0xdaca2b8, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdaca2c0 has v0 = ret(__glSPDlalloc).
- `__glsplc_Color4bv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaca2c8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaca2c8-0xdaca334 (108 bytes).
  It occupies 108 bytes.
  The `lb` at 0xdaca304 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `sb` at 0xdaca308 stores 1 byte to ret(__glSPDlalloc) +0x0.
  The `lb` at 0xdaca30c loads 1 byte from a0 (arg0 at entry) +0x1.
  The `sb` at 0xdaca310 stores 1 byte to ret(__glSPDlalloc) +0x1.
  The `lb` at 0xdaca314 loads 1 byte from a0 (arg0 at entry) +0x2.
  The `sb` at 0xdaca318 stores 1 byte to ret(__glSPDlalloc) +0x2.
  The `lb` at 0xdaca31c loads 1 byte from a0 (arg0 at entry) +0x3.
  The `sb` at 0xdaca320 stores 1 byte to ret(__glSPDlalloc) +0x3.
  The `jalr` at 0xdaca2f0 calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0xd, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaca2fc targets 0xdaca324, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdaca32c has v0 = ret(__glSPDlalloc).
- `__glsplc_Color4d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaca334 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaca334-0xdaca39c (104 bytes).
  It occupies 104 bytes.
  The `sdc1` at 0xdaca370 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `sdc1` at 0xdaca378 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `sdc1` at 0xdaca380 stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `sdc1` at 0xdaca388 stores 8 bytes to ret(__glSPDlalloc2) +0x18.
  The `jalr` at 0xdaca35c calls __glSPDlalloc2 [0xd97687c] with a0=0x20, a1=0xe, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaca364 targets 0xdaca38c, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xdaca394 has v0 = ret(__glSPDlalloc2).
- `__glsplc_Color4dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaca39c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaca39c-0xdaca408 (108 bytes).
  It occupies 108 bytes.
  The `ldc1` at 0xdaca3d8 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xdaca3dc stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `ldc1` at 0xdaca3e0 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sdc1` at 0xdaca3e4 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `ldc1` at 0xdaca3e8 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `sdc1` at 0xdaca3ec stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `ldc1` at 0xdaca3f0 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `sdc1` at 0xdaca3f4 stores 8 bytes to ret(__glSPDlalloc2) +0x18.
  The `jalr` at 0xdaca3c4 calls __glSPDlalloc2 [0xd97687c] with a0=0x20, a1=0xe, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaca3d0 targets 0xdaca3f8, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xdaca400 has v0 = ret(__glSPDlalloc2).
- `__glsplc_Color4f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaca408 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaca408-0xdaca478 (112 bytes).
  It occupies 112 bytes.
  The `swc1` at 0xdaca44c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xdaca454 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `swc1` at 0xdaca45c stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `swc1` at 0xdaca464 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xdaca438 calls __glSPDlalloc [0xd976680] with a0=0x10, a1=0xf, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaca440 targets 0xdaca468, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdaca470 has v0 = ret(__glSPDlalloc).
- `__glsplc_Color4fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaca478 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaca478-0xdaca4e4 (108 bytes).
  It occupies 108 bytes.
  The `lwc1` at 0xdaca4b4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xdaca4b8 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lwc1` at 0xdaca4bc loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xdaca4c0 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `lwc1` at 0xdaca4c4 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `swc1` at 0xdaca4c8 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `lwc1` at 0xdaca4cc loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `swc1` at 0xdaca4d0 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xdaca4a0 calls __glSPDlalloc [0xd976680] with a0=0x10, a1=0xf, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaca4ac targets 0xdaca4d4, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdaca4dc has v0 = ret(__glSPDlalloc).
- `__glsplc_Color4i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaca4e4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaca4e4-0xdaca554 (112 bytes).
  It occupies 112 bytes.
  The `sw` at 0xdaca528 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdaca530 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xdaca538 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `sw` at 0xdaca540 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xdaca514 calls __glSPDlalloc [0xd976680] with a0=0x10, a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaca51c targets 0xdaca544, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdaca54c has v0 = ret(__glSPDlalloc).
- `__glsplc_Color4iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaca554 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaca554-0xdaca5c0 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xdaca590 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xdaca594 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lw` at 0xdaca598 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xdaca59c stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `lw` at 0xdaca5a0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xdaca5a4 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `lw` at 0xdaca5a8 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0xdaca5ac stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xdaca57c calls __glSPDlalloc [0xd976680] with a0=0x10, a1=0x10, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaca588 targets 0xdaca5b0, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdaca5b8 has v0 = ret(__glSPDlalloc).
- `__glsplc_Color4s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaca5c0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaca5c0-0xdaca630 (112 bytes).
  It occupies 112 bytes.
  The `sh` at 0xdaca604 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `sh` at 0xdaca60c stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `sh` at 0xdaca614 stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `sh` at 0xdaca61c stores 2 bytes to ret(__glSPDlalloc) +0x6.
  The `jalr` at 0xdaca5f0 calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0x11, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaca5f8 targets 0xdaca620, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdaca628 has v0 = ret(__glSPDlalloc).
- `__glsplc_Color4sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaca630 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaca630-0xdaca69c (108 bytes).
  It occupies 108 bytes.
  The `lh` at 0xdaca66c loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xdaca670 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `lh` at 0xdaca674 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xdaca678 stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `lh` at 0xdaca67c loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xdaca680 stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `lh` at 0xdaca684 loads 2 bytes from a0 (arg0 at entry) +0x6.
  The `sh` at 0xdaca688 stores 2 bytes to ret(__glSPDlalloc) +0x6.
  The `jalr` at 0xdaca658 calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0x11, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaca664 targets 0xdaca68c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdaca694 has v0 = ret(__glSPDlalloc).
- `__glsplc_Color4ub` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaca69c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaca69c-0xdaca70c (112 bytes).
  It occupies 112 bytes.
  The `sb` at 0xdaca6e0 stores 1 byte to ret(__glSPDlalloc) +0x0.
  The `sb` at 0xdaca6e8 stores 1 byte to ret(__glSPDlalloc) +0x1.
  The `sb` at 0xdaca6f0 stores 1 byte to ret(__glSPDlalloc) +0x2.
  The `sb` at 0xdaca6f8 stores 1 byte to ret(__glSPDlalloc) +0x3.
  The `jalr` at 0xdaca6cc calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0x12, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaca6d4 targets 0xdaca6fc, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdaca704 has v0 = ret(__glSPDlalloc).
- `__glsplc_Color4ubv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaca70c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaca70c-0xdaca778 (108 bytes).
  It occupies 108 bytes.
  The `lbu` at 0xdaca748 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `sb` at 0xdaca74c stores 1 byte to ret(__glSPDlalloc) +0x0.
  The `lbu` at 0xdaca750 loads 1 byte from a0 (arg0 at entry) +0x1.
  The `sb` at 0xdaca754 stores 1 byte to ret(__glSPDlalloc) +0x1.
  The `lbu` at 0xdaca758 loads 1 byte from a0 (arg0 at entry) +0x2.
  The `sb` at 0xdaca75c stores 1 byte to ret(__glSPDlalloc) +0x2.
  The `lbu` at 0xdaca760 loads 1 byte from a0 (arg0 at entry) +0x3.
  The `sb` at 0xdaca764 stores 1 byte to ret(__glSPDlalloc) +0x3.
  The `jalr` at 0xdaca734 calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0x12, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaca740 targets 0xdaca768, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdaca770 has v0 = ret(__glSPDlalloc).
- `__glsplc_Color4ui` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaca778 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaca778-0xdaca7e8 (112 bytes).
  It occupies 112 bytes.
  The `sw` at 0xdaca7bc stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdaca7c4 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xdaca7cc stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `sw` at 0xdaca7d4 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xdaca7a8 calls __glSPDlalloc [0xd976680] with a0=0x10, a1=0x13, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaca7b0 targets 0xdaca7d8, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdaca7e0 has v0 = ret(__glSPDlalloc).
- `__glsplc_Color4uiv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaca7e8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaca7e8-0xdaca854 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xdaca824 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xdaca828 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lw` at 0xdaca82c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xdaca830 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `lw` at 0xdaca834 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xdaca838 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `lw` at 0xdaca83c loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0xdaca840 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xdaca810 calls __glSPDlalloc [0xd976680] with a0=0x10, a1=0x13, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaca81c targets 0xdaca844, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdaca84c has v0 = ret(__glSPDlalloc).
- `__glsplc_Color4us` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaca854 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaca854-0xdaca8c4 (112 bytes).
  It occupies 112 bytes.
  The `sh` at 0xdaca898 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `sh` at 0xdaca8a0 stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `sh` at 0xdaca8a8 stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `sh` at 0xdaca8b0 stores 2 bytes to ret(__glSPDlalloc) +0x6.
  The `jalr` at 0xdaca884 calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0x14, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaca88c targets 0xdaca8b4, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdaca8bc has v0 = ret(__glSPDlalloc).
- `__glsplc_Color4usv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaca8c4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaca8c4-0xdaca930 (108 bytes).
  It occupies 108 bytes.
  The `lhu` at 0xdaca900 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xdaca904 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `lhu` at 0xdaca908 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xdaca90c stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `lhu` at 0xdaca910 loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xdaca914 stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `lhu` at 0xdaca918 loads 2 bytes from a0 (arg0 at entry) +0x6.
  The `sh` at 0xdaca91c stores 2 bytes to ret(__glSPDlalloc) +0x6.
  The `jalr` at 0xdaca8ec calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0x14, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaca8f8 targets 0xdaca920, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdaca928 has v0 = ret(__glSPDlalloc).
- `__glsplc_EdgeFlag` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaca930 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaca930-0xdaca97c (76 bytes).
  It occupies 76 bytes.
  The `sb` at 0xdaca968 stores 1 byte to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdaca954 calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0x15, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaca95c targets 0xdaca96c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdaca974 has v0 = ret(__glSPDlalloc).
- `__glsplc_EdgeFlagv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaca97c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaca97c-0xdaca9cc (80 bytes).
  It occupies 80 bytes.
  The `lbu` at 0xdaca9b4 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `sb` at 0xdaca9b8 stores 1 byte to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdaca9a0 calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0x15, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaca9a8 targets 0xdaca9bc, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdaca9c4 has v0 = ret(__glSPDlalloc).
- `__glsplc_End` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaca9cc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaca9cc-0xdacaa08 (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0xdaca9ec calls __glSPDlalloc [0xd976680] with a0=0x0, a1=0x16, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdacaa00 has v0 = ret(__glSPDlalloc).
- `__glsplc_Indexd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacaa08 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacaa08-0xdacaa54 (76 bytes).
  It occupies 76 bytes.
  The `sdc1` at 0xdacaa40 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `jalr` at 0xdacaa2c calls __glSPDlalloc2 [0xd97687c] with a0=0x8, a1=0x17, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacaa34 targets 0xdacaa44, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xdacaa4c has v0 = ret(__glSPDlalloc2).
- `__glsplc_Indexdv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacaa54 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacaa54-0xdacaaa4 (80 bytes).
  It occupies 80 bytes.
  The `ldc1` at 0xdacaa8c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xdacaa90 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `jalr` at 0xdacaa78 calls __glSPDlalloc2 [0xd97687c] with a0=0x8, a1=0x17, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacaa80 targets 0xdacaa94, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xdacaa9c has v0 = ret(__glSPDlalloc2).
- `__glsplc_Indexf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacaaa4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacaaa4-0xdacaaf0 (76 bytes).
  It occupies 76 bytes.
  The `swc1` at 0xdacaadc stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdacaac8 calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0x18, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacaad0 targets 0xdacaae0, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacaae8 has v0 = ret(__glSPDlalloc).
- `__glsplc_Indexfv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacaaf0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacaaf0-0xdacab40 (80 bytes).
  It occupies 80 bytes.
  The `lwc1` at 0xdacab28 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xdacab2c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdacab14 calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0x18, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacab1c targets 0xdacab30, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacab38 has v0 = ret(__glSPDlalloc).
- `__glsplc_Indexi` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacab40 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacab40-0xdacab8c (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xdacab78 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdacab64 calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacab6c targets 0xdacab7c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacab84 has v0 = ret(__glSPDlalloc).
- `__glsplc_Indexiv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacab8c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacab8c-0xdacabdc (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0xdacabc4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xdacabc8 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdacabb0 calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacabb8 targets 0xdacabcc, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacabd4 has v0 = ret(__glSPDlalloc).
- `__glsplc_Indexs` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacabdc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacabdc-0xdacac28 (76 bytes).
  It occupies 76 bytes.
  The `sh` at 0xdacac14 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdacac00 calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0x1a, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacac08 targets 0xdacac18, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacac20 has v0 = ret(__glSPDlalloc).
- `__glsplc_Indexsv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacac28 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacac28-0xdacac78 (80 bytes).
  It occupies 80 bytes.
  The `lh` at 0xdacac60 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xdacac64 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdacac4c calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0x1a, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacac54 targets 0xdacac68, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacac70 has v0 = ret(__glSPDlalloc).
- `__glsplc_Normal3b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacac78 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacac78-0xdacacdc (100 bytes).
  It occupies 100 bytes.
  The `sb` at 0xdacacb8 stores 1 byte to ret(__glSPDlalloc) +0x0.
  The `sb` at 0xdacacc0 stores 1 byte to ret(__glSPDlalloc) +0x1.
  The `sb` at 0xdacacc8 stores 1 byte to ret(__glSPDlalloc) +0x2.
  The `jalr` at 0xdacaca4 calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0x1b, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacacac targets 0xdacaccc, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacacd4 has v0 = ret(__glSPDlalloc).
- `__glsplc_Normal3bv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacacdc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacacdc-0xdacad40 (100 bytes).
  It occupies 100 bytes.
  The `lb` at 0xdacad18 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `sb` at 0xdacad1c stores 1 byte to ret(__glSPDlalloc) +0x0.
  The `lb` at 0xdacad20 loads 1 byte from a0 (arg0 at entry) +0x1.
  The `sb` at 0xdacad24 stores 1 byte to ret(__glSPDlalloc) +0x1.
  The `lb` at 0xdacad28 loads 1 byte from a0 (arg0 at entry) +0x2.
  The `sb` at 0xdacad2c stores 1 byte to ret(__glSPDlalloc) +0x2.
  The `jalr` at 0xdacad04 calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0x1b, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacad10 targets 0xdacad30, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacad38 has v0 = ret(__glSPDlalloc).
- `__glsplc_Normal3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacad40 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacad40-0xdacada0 (96 bytes).
  It occupies 96 bytes.
  The `sdc1` at 0xdacad7c stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `sdc1` at 0xdacad84 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `sdc1` at 0xdacad8c stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `jalr` at 0xdacad68 calls __glSPDlalloc2 [0xd97687c] with a0=0x18, a1=0x1c, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacad70 targets 0xdacad90, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xdacad98 has v0 = ret(__glSPDlalloc2).
- `__glsplc_Normal3dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacada0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacada0-0xdacae04 (100 bytes).
  It occupies 100 bytes.
  The `ldc1` at 0xdacaddc loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xdacade0 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `ldc1` at 0xdacade4 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sdc1` at 0xdacade8 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `ldc1` at 0xdacadec loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `sdc1` at 0xdacadf0 stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `jalr` at 0xdacadc8 calls __glSPDlalloc2 [0xd97687c] with a0=0x18, a1=0x1c, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacadd4 targets 0xdacadf4, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xdacadfc has v0 = ret(__glSPDlalloc2).
- `__glsplc_Normal3f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacae04 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacae04-0xdacae68 (100 bytes).
  It occupies 100 bytes.
  The `swc1` at 0xdacae44 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xdacae4c stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `swc1` at 0xdacae54 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xdacae30 calls __glSPDlalloc [0xd976680] with a0=0xc, a1=0x1d, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacae38 targets 0xdacae58, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacae60 has v0 = ret(__glSPDlalloc).
- `__glsplc_Normal3fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacae68 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacae68-0xdacaecc (100 bytes).
  It occupies 100 bytes.
  The `lwc1` at 0xdacaea4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xdacaea8 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lwc1` at 0xdacaeac loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xdacaeb0 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `lwc1` at 0xdacaeb4 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `swc1` at 0xdacaeb8 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xdacae90 calls __glSPDlalloc [0xd976680] with a0=0xc, a1=0x1d, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacae9c targets 0xdacaebc, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacaec4 has v0 = ret(__glSPDlalloc).
- `__glsplc_Normal3i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacaecc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacaecc-0xdacaf30 (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0xdacaf0c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdacaf14 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xdacaf1c stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xdacaef8 calls __glSPDlalloc [0xd976680] with a0=0xc, a1=0x1e, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacaf00 targets 0xdacaf20, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacaf28 has v0 = ret(__glSPDlalloc).
- `__glsplc_Normal3iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacaf30 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacaf30-0xdacaf94 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0xdacaf6c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xdacaf70 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lw` at 0xdacaf74 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xdacaf78 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `lw` at 0xdacaf7c loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xdacaf80 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xdacaf58 calls __glSPDlalloc [0xd976680] with a0=0xc, a1=0x1e, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacaf64 targets 0xdacaf84, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacaf8c has v0 = ret(__glSPDlalloc).
- `__glsplc_Normal3s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacaf94 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacaf94-0xdacaff8 (100 bytes).
  It occupies 100 bytes.
  The `sh` at 0xdacafd4 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `sh` at 0xdacafdc stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `sh` at 0xdacafe4 stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdacafc0 calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0x1f, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacafc8 targets 0xdacafe8, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacaff0 has v0 = ret(__glSPDlalloc).
- `__glsplc_Normal3sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacaff8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacaff8-0xdacb05c (100 bytes).
  It occupies 100 bytes.
  The `lh` at 0xdacb034 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xdacb038 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `lh` at 0xdacb03c loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xdacb040 stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `lh` at 0xdacb044 loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xdacb048 stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdacb020 calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0x1f, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacb02c targets 0xdacb04c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacb054 has v0 = ret(__glSPDlalloc).
- `__glsplc_RasterPos2d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacb05c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacb05c-0xdacb0b4 (88 bytes).
  It occupies 88 bytes.
  The `sdc1` at 0xdacb098 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `sdc1` at 0xdacb0a0 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `jalr` at 0xdacb084 calls __glSPDlalloc2 [0xd97687c] with a0=0x10, a1=0x20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacb08c targets 0xdacb0a4, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xdacb0ac has v0 = ret(__glSPDlalloc2).
- `__glsplc_RasterPos2dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacb0b4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacb0b4-0xdacb10c (88 bytes).
  It occupies 88 bytes.
  The `ldc1` at 0xdacb0ec loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xdacb0f0 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `ldc1` at 0xdacb0f4 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sdc1` at 0xdacb0f8 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `jalr` at 0xdacb0d8 calls __glSPDlalloc2 [0xd97687c] with a0=0x10, a1=0x20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacb0e4 targets 0xdacb0fc, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xdacb104 has v0 = ret(__glSPDlalloc2).
- `__glsplc_RasterPos2f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacb10c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacb10c-0xdacb164 (88 bytes).
  It occupies 88 bytes.
  The `swc1` at 0xdacb148 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xdacb150 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdacb134 calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0x21, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacb13c targets 0xdacb154, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacb15c has v0 = ret(__glSPDlalloc).
- `__glsplc_RasterPos2fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacb164 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacb164-0xdacb1bc (88 bytes).
  It occupies 88 bytes.
  The `lwc1` at 0xdacb19c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xdacb1a0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lwc1` at 0xdacb1a4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xdacb1a8 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdacb188 calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0x21, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacb194 targets 0xdacb1ac, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacb1b4 has v0 = ret(__glSPDlalloc).
- `__glsplc_RasterPos2i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacb1bc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacb1bc-0xdacb214 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xdacb1f8 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdacb200 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdacb1e4 calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0x22, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacb1ec targets 0xdacb204, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacb20c has v0 = ret(__glSPDlalloc).
- `__glsplc_RasterPos2iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacb214 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacb214-0xdacb26c (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0xdacb24c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xdacb250 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lw` at 0xdacb254 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xdacb258 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdacb238 calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0x22, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacb244 targets 0xdacb25c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacb264 has v0 = ret(__glSPDlalloc).
- `__glsplc_RasterPos2s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacb26c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacb26c-0xdacb2c4 (88 bytes).
  It occupies 88 bytes.
  The `sh` at 0xdacb2a8 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `sh` at 0xdacb2b0 stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `jalr` at 0xdacb294 calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0x23, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacb29c targets 0xdacb2b4, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacb2bc has v0 = ret(__glSPDlalloc).
- `__glsplc_RasterPos2sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacb2c4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacb2c4-0xdacb31c (88 bytes).
  It occupies 88 bytes.
  The `lh` at 0xdacb2fc loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xdacb300 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `lh` at 0xdacb304 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xdacb308 stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `jalr` at 0xdacb2e8 calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0x23, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacb2f4 targets 0xdacb30c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacb314 has v0 = ret(__glSPDlalloc).
- `__glsplc_RasterPos3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacb31c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacb31c-0xdacb37c (96 bytes).
  It occupies 96 bytes.
  The `sdc1` at 0xdacb358 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `sdc1` at 0xdacb360 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `sdc1` at 0xdacb368 stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `jalr` at 0xdacb344 calls __glSPDlalloc2 [0xd97687c] with a0=0x18, a1=0x24, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacb34c targets 0xdacb36c, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xdacb374 has v0 = ret(__glSPDlalloc2).
- `__glsplc_RasterPos3dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacb37c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacb37c-0xdacb3e0 (100 bytes).
  It occupies 100 bytes.
  The `ldc1` at 0xdacb3b8 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xdacb3bc stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `ldc1` at 0xdacb3c0 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sdc1` at 0xdacb3c4 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `ldc1` at 0xdacb3c8 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `sdc1` at 0xdacb3cc stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `jalr` at 0xdacb3a4 calls __glSPDlalloc2 [0xd97687c] with a0=0x18, a1=0x24, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacb3b0 targets 0xdacb3d0, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xdacb3d8 has v0 = ret(__glSPDlalloc2).
- `__glsplc_RasterPos3f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacb3e0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacb3e0-0xdacb444 (100 bytes).
  It occupies 100 bytes.
  The `swc1` at 0xdacb420 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xdacb428 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `swc1` at 0xdacb430 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xdacb40c calls __glSPDlalloc [0xd976680] with a0=0xc, a1=0x25, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacb414 targets 0xdacb434, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacb43c has v0 = ret(__glSPDlalloc).
- `__glsplc_RasterPos3fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacb444 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacb444-0xdacb4a8 (100 bytes).
  It occupies 100 bytes.
  The `lwc1` at 0xdacb480 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xdacb484 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lwc1` at 0xdacb488 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xdacb48c stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `lwc1` at 0xdacb490 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `swc1` at 0xdacb494 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xdacb46c calls __glSPDlalloc [0xd976680] with a0=0xc, a1=0x25, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacb478 targets 0xdacb498, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacb4a0 has v0 = ret(__glSPDlalloc).
- `__glsplc_RasterPos3i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacb4a8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacb4a8-0xdacb50c (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0xdacb4e8 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdacb4f0 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xdacb4f8 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xdacb4d4 calls __glSPDlalloc [0xd976680] with a0=0xc, a1=0x26, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacb4dc targets 0xdacb4fc, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacb504 has v0 = ret(__glSPDlalloc).
- `__glsplc_RasterPos3iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacb50c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacb50c-0xdacb570 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0xdacb548 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xdacb54c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lw` at 0xdacb550 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xdacb554 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `lw` at 0xdacb558 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xdacb55c stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xdacb534 calls __glSPDlalloc [0xd976680] with a0=0xc, a1=0x26, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacb540 targets 0xdacb560, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacb568 has v0 = ret(__glSPDlalloc).
- `__glsplc_RasterPos3s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacb570 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacb570-0xdacb5d4 (100 bytes).
  It occupies 100 bytes.
  The `sh` at 0xdacb5b0 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `sh` at 0xdacb5b8 stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `sh` at 0xdacb5c0 stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdacb59c calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0x27, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacb5a4 targets 0xdacb5c4, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacb5cc has v0 = ret(__glSPDlalloc).
- `__glsplc_RasterPos3sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacb5d4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacb5d4-0xdacb638 (100 bytes).
  It occupies 100 bytes.
  The `lh` at 0xdacb610 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xdacb614 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `lh` at 0xdacb618 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xdacb61c stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `lh` at 0xdacb620 loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xdacb624 stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdacb5fc calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0x27, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacb608 targets 0xdacb628, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacb630 has v0 = ret(__glSPDlalloc).
- `__glsplc_RasterPos4d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacb638 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacb638-0xdacb6a0 (104 bytes).
  It occupies 104 bytes.
  The `sdc1` at 0xdacb674 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `sdc1` at 0xdacb67c stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `sdc1` at 0xdacb684 stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `sdc1` at 0xdacb68c stores 8 bytes to ret(__glSPDlalloc2) +0x18.
  The `jalr` at 0xdacb660 calls __glSPDlalloc2 [0xd97687c] with a0=0x20, a1=0x28, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacb668 targets 0xdacb690, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xdacb698 has v0 = ret(__glSPDlalloc2).
- `__glsplc_RasterPos4dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacb6a0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacb6a0-0xdacb70c (108 bytes).
  It occupies 108 bytes.
  The `ldc1` at 0xdacb6dc loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xdacb6e0 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `ldc1` at 0xdacb6e4 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sdc1` at 0xdacb6e8 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `ldc1` at 0xdacb6ec loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `sdc1` at 0xdacb6f0 stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `ldc1` at 0xdacb6f4 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `sdc1` at 0xdacb6f8 stores 8 bytes to ret(__glSPDlalloc2) +0x18.
  The `jalr` at 0xdacb6c8 calls __glSPDlalloc2 [0xd97687c] with a0=0x20, a1=0x28, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacb6d4 targets 0xdacb6fc, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xdacb704 has v0 = ret(__glSPDlalloc2).
- `__glsplc_RasterPos4f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacb70c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacb70c-0xdacb77c (112 bytes).
  It occupies 112 bytes.
  The `swc1` at 0xdacb750 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xdacb758 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `swc1` at 0xdacb760 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `swc1` at 0xdacb768 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xdacb73c calls __glSPDlalloc [0xd976680] with a0=0x10, a1=0x29, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacb744 targets 0xdacb76c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacb774 has v0 = ret(__glSPDlalloc).
- `__glsplc_RasterPos4fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacb77c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacb77c-0xdacb7e8 (108 bytes).
  It occupies 108 bytes.
  The `lwc1` at 0xdacb7b8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xdacb7bc stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lwc1` at 0xdacb7c0 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xdacb7c4 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `lwc1` at 0xdacb7c8 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `swc1` at 0xdacb7cc stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `lwc1` at 0xdacb7d0 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `swc1` at 0xdacb7d4 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xdacb7a4 calls __glSPDlalloc [0xd976680] with a0=0x10, a1=0x29, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacb7b0 targets 0xdacb7d8, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacb7e0 has v0 = ret(__glSPDlalloc).
- `__glsplc_RasterPos4i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacb7e8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacb7e8-0xdacb858 (112 bytes).
  It occupies 112 bytes.
  The `sw` at 0xdacb82c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdacb834 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xdacb83c stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `sw` at 0xdacb844 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xdacb818 calls __glSPDlalloc [0xd976680] with a0=0x10, a1=0x2a, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacb820 targets 0xdacb848, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacb850 has v0 = ret(__glSPDlalloc).
- `__glsplc_RasterPos4iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacb858 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacb858-0xdacb8c4 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xdacb894 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xdacb898 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lw` at 0xdacb89c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xdacb8a0 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `lw` at 0xdacb8a4 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xdacb8a8 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `lw` at 0xdacb8ac loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0xdacb8b0 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xdacb880 calls __glSPDlalloc [0xd976680] with a0=0x10, a1=0x2a, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacb88c targets 0xdacb8b4, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacb8bc has v0 = ret(__glSPDlalloc).
- `__glsplc_RasterPos4s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacb8c4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacb8c4-0xdacb934 (112 bytes).
  It occupies 112 bytes.
  The `sh` at 0xdacb908 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `sh` at 0xdacb910 stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `sh` at 0xdacb918 stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `sh` at 0xdacb920 stores 2 bytes to ret(__glSPDlalloc) +0x6.
  The `jalr` at 0xdacb8f4 calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0x2b, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacb8fc targets 0xdacb924, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacb92c has v0 = ret(__glSPDlalloc).
- `__glsplc_RasterPos4sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacb934 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacb934-0xdacb9a0 (108 bytes).
  It occupies 108 bytes.
  The `lh` at 0xdacb970 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xdacb974 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `lh` at 0xdacb978 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xdacb97c stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `lh` at 0xdacb980 loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xdacb984 stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `lh` at 0xdacb988 loads 2 bytes from a0 (arg0 at entry) +0x6.
  The `sh` at 0xdacb98c stores 2 bytes to ret(__glSPDlalloc) +0x6.
  The `jalr` at 0xdacb95c calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0x2b, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacb968 targets 0xdacb990, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacb998 has v0 = ret(__glSPDlalloc).
- `__glsplc_Rectd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacb9a0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacb9a0-0xdacba08 (104 bytes).
  It occupies 104 bytes.
  The `sdc1` at 0xdacb9dc stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `sdc1` at 0xdacb9e4 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `sdc1` at 0xdacb9ec stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `sdc1` at 0xdacb9f4 stores 8 bytes to ret(__glSPDlalloc2) +0x18.
  The `jalr` at 0xdacb9c8 calls __glSPDlalloc2 [0xd97687c] with a0=0x20, a1=0x2c, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacb9d0 targets 0xdacb9f8, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xdacba00 has v0 = ret(__glSPDlalloc2).
- `__glsplc_Rectdv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacba08 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacba08-0xdacba78 (112 bytes).
  It occupies 112 bytes.
  The `ldc1` at 0xdacba48 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xdacba4c stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `ldc1` at 0xdacba50 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sdc1` at 0xdacba54 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `ldc1` at 0xdacba58 loads 8 bytes from a1 (arg1 at entry) +0x0.
  The `sdc1` at 0xdacba5c stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `ldc1` at 0xdacba60 loads 8 bytes from a1 (arg1 at entry) +0x8.
  The `sdc1` at 0xdacba64 stores 8 bytes to ret(__glSPDlalloc2) +0x18.
  The `jalr` at 0xdacba30 calls __glSPDlalloc2 [0xd97687c] with a0=0x20, a1=0x2c, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacba40 targets 0xdacba68, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xdacba70 has v0 = ret(__glSPDlalloc2).
- `__glsplc_Rectf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacba78 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacba78-0xdacbae8 (112 bytes).
  It occupies 112 bytes.
  The `swc1` at 0xdacbabc stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xdacbac4 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `swc1` at 0xdacbacc stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `swc1` at 0xdacbad4 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xdacbaa8 calls __glSPDlalloc [0xd976680] with a0=0x10, a1=0x2d, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacbab0 targets 0xdacbad8, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacbae0 has v0 = ret(__glSPDlalloc).
- `__glsplc_Rectfv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacbae8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacbae8-0xdacbb58 (112 bytes).
  It occupies 112 bytes.
  The `lwc1` at 0xdacbb28 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xdacbb2c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lwc1` at 0xdacbb30 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xdacbb34 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `lwc1` at 0xdacbb38 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `swc1` at 0xdacbb3c stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `lwc1` at 0xdacbb40 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `swc1` at 0xdacbb44 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xdacbb10 calls __glSPDlalloc [0xd976680] with a0=0x10, a1=0x2d, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacbb20 targets 0xdacbb48, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacbb50 has v0 = ret(__glSPDlalloc).
- `__glsplc_Recti` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacbb58 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacbb58-0xdacbbc8 (112 bytes).
  It occupies 112 bytes.
  The `sw` at 0xdacbb9c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdacbba4 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xdacbbac stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `sw` at 0xdacbbb4 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xdacbb88 calls __glSPDlalloc [0xd976680] with a0=0x10, a1=0x2e, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacbb90 targets 0xdacbbb8, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacbbc0 has v0 = ret(__glSPDlalloc).
- `__glsplc_Rectiv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacbbc8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacbbc8-0xdacbc38 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xdacbc08 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xdacbc0c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lw` at 0xdacbc10 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xdacbc14 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `lw` at 0xdacbc18 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `sw` at 0xdacbc1c stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `lw` at 0xdacbc20 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `sw` at 0xdacbc24 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xdacbbf0 calls __glSPDlalloc [0xd976680] with a0=0x10, a1=0x2e, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacbc00 targets 0xdacbc28, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacbc30 has v0 = ret(__glSPDlalloc).
- `__glsplc_Rects` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacbc38 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacbc38-0xdacbca8 (112 bytes).
  It occupies 112 bytes.
  The `sh` at 0xdacbc7c stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `sh` at 0xdacbc84 stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `sh` at 0xdacbc8c stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `sh` at 0xdacbc94 stores 2 bytes to ret(__glSPDlalloc) +0x6.
  The `jalr` at 0xdacbc68 calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0x2f, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacbc70 targets 0xdacbc98, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacbca0 has v0 = ret(__glSPDlalloc).
- `__glsplc_Rectsv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacbca8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacbca8-0xdacbd18 (112 bytes).
  It occupies 112 bytes.
  The `lh` at 0xdacbce8 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xdacbcec stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `lh` at 0xdacbcf0 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xdacbcf4 stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `lh` at 0xdacbcf8 loads 2 bytes from a1 (arg1 at entry) +0x0.
  The `sh` at 0xdacbcfc stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `lh` at 0xdacbd00 loads 2 bytes from a1 (arg1 at entry) +0x2.
  The `sh` at 0xdacbd04 stores 2 bytes to ret(__glSPDlalloc) +0x6.
  The `jalr` at 0xdacbcd0 calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0x2f, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacbce0 targets 0xdacbd08, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacbd10 has v0 = ret(__glSPDlalloc).
- `__glsplc_Vertex2d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacc8cc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacc8cc-0xdacc924 (88 bytes).
  It occupies 88 bytes.
  The `sdc1` at 0xdacc908 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `sdc1` at 0xdacc910 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `jalr` at 0xdacc8f4 calls __glSPDlalloc2 [0xd97687c] with a0=0x10, a1=0x40, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacc8fc targets 0xdacc914, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xdacc91c has v0 = ret(__glSPDlalloc2).
- `__glsplc_Vertex2dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacc924 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacc924-0xdacc97c (88 bytes).
  It occupies 88 bytes.
  The `ldc1` at 0xdacc95c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xdacc960 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `ldc1` at 0xdacc964 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sdc1` at 0xdacc968 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `jalr` at 0xdacc948 calls __glSPDlalloc2 [0xd97687c] with a0=0x10, a1=0x40, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacc954 targets 0xdacc96c, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xdacc974 has v0 = ret(__glSPDlalloc2).
- `__glsplc_Vertex2f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacc97c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacc97c-0xdacc9d4 (88 bytes).
  It occupies 88 bytes.
  The `swc1` at 0xdacc9b8 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xdacc9c0 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdacc9a4 calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0x41, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacc9ac targets 0xdacc9c4, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacc9cc has v0 = ret(__glSPDlalloc).
- `__glsplc_Vertex2fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacc9d4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacc9d4-0xdacca2c (88 bytes).
  It occupies 88 bytes.
  The `lwc1` at 0xdacca0c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xdacca10 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lwc1` at 0xdacca14 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xdacca18 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdacc9f8 calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0x41, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacca04 targets 0xdacca1c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacca24 has v0 = ret(__glSPDlalloc).
- `__glsplc_Vertex2i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacca2c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacca2c-0xdacca84 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xdacca68 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdacca70 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdacca54 calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0x42, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacca5c targets 0xdacca74, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacca7c has v0 = ret(__glSPDlalloc).
- `__glsplc_Vertex2iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacca84 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacca84-0xdaccadc (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0xdaccabc loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xdaccac0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lw` at 0xdaccac4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xdaccac8 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdaccaa8 calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0x42, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaccab4 targets 0xdaccacc, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdaccad4 has v0 = ret(__glSPDlalloc).
- `__glsplc_Vertex2s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaccadc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaccadc-0xdaccb34 (88 bytes).
  It occupies 88 bytes.
  The `sh` at 0xdaccb18 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `sh` at 0xdaccb20 stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `jalr` at 0xdaccb04 calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0x43, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaccb0c targets 0xdaccb24, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdaccb2c has v0 = ret(__glSPDlalloc).
- `__glsplc_Vertex2sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaccb34 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaccb34-0xdaccb8c (88 bytes).
  It occupies 88 bytes.
  The `lh` at 0xdaccb6c loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xdaccb70 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `lh` at 0xdaccb74 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xdaccb78 stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `jalr` at 0xdaccb58 calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0x43, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaccb64 targets 0xdaccb7c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdaccb84 has v0 = ret(__glSPDlalloc).
- `__glsplc_Vertex3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaccb8c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaccb8c-0xdaccbec (96 bytes).
  It occupies 96 bytes.
  The `sdc1` at 0xdaccbc8 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `sdc1` at 0xdaccbd0 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `sdc1` at 0xdaccbd8 stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `jalr` at 0xdaccbb4 calls __glSPDlalloc2 [0xd97687c] with a0=0x18, a1=0x44, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaccbbc targets 0xdaccbdc, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xdaccbe4 has v0 = ret(__glSPDlalloc2).
- `__glsplc_Vertex3dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaccbec (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaccbec-0xdaccc50 (100 bytes).
  It occupies 100 bytes.
  The `ldc1` at 0xdaccc28 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xdaccc2c stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `ldc1` at 0xdaccc30 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sdc1` at 0xdaccc34 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `ldc1` at 0xdaccc38 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `sdc1` at 0xdaccc3c stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `jalr` at 0xdaccc14 calls __glSPDlalloc2 [0xd97687c] with a0=0x18, a1=0x44, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaccc20 targets 0xdaccc40, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xdaccc48 has v0 = ret(__glSPDlalloc2).
- `__glsplc_Vertex3f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaccc50 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaccc50-0xdacccb4 (100 bytes).
  It occupies 100 bytes.
  The `swc1` at 0xdaccc90 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xdaccc98 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `swc1` at 0xdaccca0 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xdaccc7c calls __glSPDlalloc [0xd976680] with a0=0xc, a1=0x45, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaccc84 targets 0xdaccca4, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacccac has v0 = ret(__glSPDlalloc).
- `__glsplc_Vertex3fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacccb4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacccb4-0xdaccd18 (100 bytes).
  It occupies 100 bytes.
  The `lwc1` at 0xdacccf0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xdacccf4 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lwc1` at 0xdacccf8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xdacccfc stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `lwc1` at 0xdaccd00 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `swc1` at 0xdaccd04 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xdacccdc calls __glSPDlalloc [0xd976680] with a0=0xc, a1=0x45, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaccce8 targets 0xdaccd08, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdaccd10 has v0 = ret(__glSPDlalloc).
- `__glsplc_Vertex3i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaccd18 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaccd18-0xdaccd7c (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0xdaccd58 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdaccd60 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xdaccd68 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xdaccd44 calls __glSPDlalloc [0xd976680] with a0=0xc, a1=0x46, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaccd4c targets 0xdaccd6c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdaccd74 has v0 = ret(__glSPDlalloc).
- `__glsplc_Vertex3iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaccd7c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaccd7c-0xdaccde0 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0xdaccdb8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xdaccdbc stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lw` at 0xdaccdc0 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xdaccdc4 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `lw` at 0xdaccdc8 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xdaccdcc stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xdaccda4 calls __glSPDlalloc [0xd976680] with a0=0xc, a1=0x46, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaccdb0 targets 0xdaccdd0, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdaccdd8 has v0 = ret(__glSPDlalloc).
- `__glsplc_Vertex3s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaccde0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaccde0-0xdacce44 (100 bytes).
  It occupies 100 bytes.
  The `sh` at 0xdacce20 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `sh` at 0xdacce28 stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `sh` at 0xdacce30 stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdacce0c calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0x47, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacce14 targets 0xdacce34, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacce3c has v0 = ret(__glSPDlalloc).
- `__glsplc_Vertex3sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacce44 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacce44-0xdaccea8 (100 bytes).
  It occupies 100 bytes.
  The `lh` at 0xdacce80 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xdacce84 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `lh` at 0xdacce88 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xdacce8c stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `lh` at 0xdacce90 loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xdacce94 stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdacce6c calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0x47, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacce78 targets 0xdacce98, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdaccea0 has v0 = ret(__glSPDlalloc).
- `__glsplc_Vertex4d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaccea8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaccea8-0xdaccf10 (104 bytes).
  It occupies 104 bytes.
  The `sdc1` at 0xdaccee4 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `sdc1` at 0xdacceec stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `sdc1` at 0xdaccef4 stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `sdc1` at 0xdaccefc stores 8 bytes to ret(__glSPDlalloc2) +0x18.
  The `jalr` at 0xdacced0 calls __glSPDlalloc2 [0xd97687c] with a0=0x20, a1=0x48, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacced8 targets 0xdaccf00, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xdaccf08 has v0 = ret(__glSPDlalloc2).
- `__glsplc_Vertex4dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaccf10 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaccf10-0xdaccf7c (108 bytes).
  It occupies 108 bytes.
  The `ldc1` at 0xdaccf4c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xdaccf50 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `ldc1` at 0xdaccf54 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sdc1` at 0xdaccf58 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `ldc1` at 0xdaccf5c loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `sdc1` at 0xdaccf60 stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `ldc1` at 0xdaccf64 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `sdc1` at 0xdaccf68 stores 8 bytes to ret(__glSPDlalloc2) +0x18.
  The `jalr` at 0xdaccf38 calls __glSPDlalloc2 [0xd97687c] with a0=0x20, a1=0x48, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaccf44 targets 0xdaccf6c, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xdaccf74 has v0 = ret(__glSPDlalloc2).
- `__glsplc_Vertex4f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaccf7c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaccf7c-0xdaccfec (112 bytes).
  It occupies 112 bytes.
  The `swc1` at 0xdaccfc0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xdaccfc8 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `swc1` at 0xdaccfd0 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `swc1` at 0xdaccfd8 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xdaccfac calls __glSPDlalloc [0xd976680] with a0=0x10, a1=0x49, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaccfb4 targets 0xdaccfdc, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdaccfe4 has v0 = ret(__glSPDlalloc).
- `__glsplc_Vertex4fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaccfec (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaccfec-0xdacd058 (108 bytes).
  It occupies 108 bytes.
  The `lwc1` at 0xdacd028 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xdacd02c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lwc1` at 0xdacd030 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xdacd034 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `lwc1` at 0xdacd038 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `swc1` at 0xdacd03c stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `lwc1` at 0xdacd040 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `swc1` at 0xdacd044 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xdacd014 calls __glSPDlalloc [0xd976680] with a0=0x10, a1=0x49, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacd020 targets 0xdacd048, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacd050 has v0 = ret(__glSPDlalloc).
- `__glsplc_Vertex4i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacd058 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacd058-0xdacd0c8 (112 bytes).
  It occupies 112 bytes.
  The `sw` at 0xdacd09c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdacd0a4 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xdacd0ac stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `sw` at 0xdacd0b4 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xdacd088 calls __glSPDlalloc [0xd976680] with a0=0x10, a1=0x4a, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacd090 targets 0xdacd0b8, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacd0c0 has v0 = ret(__glSPDlalloc).
- `__glsplc_Vertex4iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacd0c8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacd0c8-0xdacd134 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xdacd104 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xdacd108 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lw` at 0xdacd10c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xdacd110 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `lw` at 0xdacd114 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xdacd118 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `lw` at 0xdacd11c loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0xdacd120 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xdacd0f0 calls __glSPDlalloc [0xd976680] with a0=0x10, a1=0x4a, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacd0fc targets 0xdacd124, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacd12c has v0 = ret(__glSPDlalloc).
- `__glsplc_Vertex4s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacd134 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacd134-0xdacd1a4 (112 bytes).
  It occupies 112 bytes.
  The `sh` at 0xdacd178 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `sh` at 0xdacd180 stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `sh` at 0xdacd188 stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `sh` at 0xdacd190 stores 2 bytes to ret(__glSPDlalloc) +0x6.
  The `jalr` at 0xdacd164 calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0x4b, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacd16c targets 0xdacd194, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacd19c has v0 = ret(__glSPDlalloc).
- `__glsplc_Vertex4sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacd1a4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacd1a4-0xdacd210 (108 bytes).
  It occupies 108 bytes.
  The `lh` at 0xdacd1e0 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xdacd1e4 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `lh` at 0xdacd1e8 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xdacd1ec stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `lh` at 0xdacd1f0 loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xdacd1f4 stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `lh` at 0xdacd1f8 loads 2 bytes from a0 (arg0 at entry) +0x6.
  The `sh` at 0xdacd1fc stores 2 bytes to ret(__glSPDlalloc) +0x6.
  The `jalr` at 0xdacd1cc calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0x4b, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacd1d8 targets 0xdacd200, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacd208 has v0 = ret(__glSPDlalloc).
- `__glsplc_ClipPlane` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacd210 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacd210-0xdacd288 (120 bytes).
  It occupies 120 bytes.
  The `sw` at 0xdacd254 stores 4 bytes to ret(__glSPDlalloc2) +0x20.
  The `ldc1` at 0xdacd258 loads 8 bytes from a1 (arg1 at entry) +0x0.
  The `sdc1` at 0xdacd25c stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `ldc1` at 0xdacd260 loads 8 bytes from a1 (arg1 at entry) +0x8.
  The `sdc1` at 0xdacd264 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `ldc1` at 0xdacd268 loads 8 bytes from a1 (arg1 at entry) +0x10.
  The `sdc1` at 0xdacd26c stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `ldc1` at 0xdacd270 loads 8 bytes from a1 (arg1 at entry) +0x18.
  The `sdc1` at 0xdacd274 stores 8 bytes to ret(__glSPDlalloc2) +0x18.
  The `jalr` at 0xdacd23c calls __glSPDlalloc2 [0xd97687c] with a0=0x28, a1=0x4c, a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacd248 targets 0xdacd278, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xdacd280 has v0 = ret(__glSPDlalloc2).
- `__glsplc_ColorMaterial` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacd288 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacd288-0xdacd2e0 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xdacd2c4 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdacd2cc stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdacd2b0 calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0x4d, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacd2b8 targets 0xdacd2d0, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacd2d8 has v0 = ret(__glSPDlalloc).
- `__glsplc_CullFace` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacd2e0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacd2e0-0xdacd32c (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xdacd318 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdacd304 calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0x4e, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacd30c targets 0xdacd31c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacd324 has v0 = ret(__glSPDlalloc).
- `__glsplc_Fogf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacd32c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacd32c-0xdacd384 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xdacd368 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xdacd370 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdacd354 calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0x4f, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacd35c targets 0xdacd374, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacd37c has v0 = ret(__glSPDlalloc).
- `__glsplc_Fogfv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacd384 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacd384-0xdacd41c (152 bytes).
  It occupies 152 bytes.
  The `sw` at 0xdacd3f4 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdacd3a4 calls __glFogfv_size [0xda810f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdacd3bc calls __glsplc_InvalidEnum [0xda0cb60] with a0=?, a1=?, a2=(ret(__glFogfv_size) << 0x2), a3=?.
  The `jalr` at 0xdacd3d8 calls __glSPDlalloc [0xd976680] with a0=(ret(__glFogfv_size) << 0x2)+4, a1=0x50, a2=(ret(__glFogfv_size) << 0x2), a3=?.
  The `jalr` at 0xdacd400 calls memcpy with a0=ret(__glSPDlalloc)+4, a1=a1 at entry (arg1), a2=?, a3=?.
  The `bgez` branch at 0xdacd3b0 targets 0xdacd3cc, is taken when a2(=(ret(__glFogfv_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glFogfv_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xdacd3c4 targets 0xdacd40c and is always taken.
  The `beq` branch at 0xdacd3e4 targets 0xdacd40c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacd414 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).
- `__glsplc_Fogi` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacd41c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacd41c-0xdacd474 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xdacd458 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdacd460 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdacd444 calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0x51, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacd44c targets 0xdacd464, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacd46c has v0 = ret(__glSPDlalloc).
- `__glsplc_Fogiv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacd474 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacd474-0xdacd50c (152 bytes).
  It occupies 152 bytes.
  The `sw` at 0xdacd4e4 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdacd494 calls __glFogiv_size [0xda81080] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdacd4ac calls __glsplc_InvalidEnum [0xda0cb60] with a0=?, a1=?, a2=(ret(__glFogiv_size) << 0x2), a3=?.
  The `jalr` at 0xdacd4c8 calls __glSPDlalloc [0xd976680] with a0=(ret(__glFogiv_size) << 0x2)+4, a1=0x52, a2=(ret(__glFogiv_size) << 0x2), a3=?.
  The `jalr` at 0xdacd4f0 calls memcpy with a0=ret(__glSPDlalloc)+4, a1=a1 at entry (arg1), a2=?, a3=?.
  The `bgez` branch at 0xdacd4a0 targets 0xdacd4bc, is taken when a2(=(ret(__glFogiv_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glFogiv_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xdacd4b4 targets 0xdacd4fc and is always taken.
  The `beq` branch at 0xdacd4d4 targets 0xdacd4fc, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacd504 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).
- `__glsplc_FrontFace` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacd50c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacd50c-0xdacd558 (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xdacd544 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdacd530 calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0x53, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacd538 targets 0xdacd548, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacd550 has v0 = ret(__glSPDlalloc).
- `__glsplc_Hint` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacd558 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacd558-0xdacd5b0 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xdacd594 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdacd59c stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdacd580 calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0x54, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacd588 targets 0xdacd5a0, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacd5a8 has v0 = ret(__glSPDlalloc).
- `__glsplc_Lightf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacd5b0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacd5b0-0xdacd628 (120 bytes).
  It occupies 120 bytes.
  The `jalr` at 0xdacd5d8 calls __glLightfv_size [0xda81124] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdacd5f0 calls __glsplc_InvalidEnum [0xda0cb60] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xdacd60c calls __glsplc_Lightfv [0xdacd628] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=?.
  The `beq` branch at 0xdacd5e4 targets 0xdacd600, is taken when v0(=ret(__glLightfv_size)) == at(=0x1), and falls through when v0(=ret(__glLightfv_size)) != at(=0x1).
  The `beq` branch at 0xdacd5f8 targets 0xdacd618 and is always taken.
  The return at 0xdacd620 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glsplc_Lightfv).
- `__glsplc_Lightfv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacd628 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacd628-0xdacd6d0 (168 bytes).
  It occupies 168 bytes.
  The `sw` at 0xdacd6a0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdacd6a8 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdacd650 calls __glLightfv_size [0xda81124] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdacd668 calls __glsplc_InvalidEnum [0xda0cb60] with a0=?, a1=?, a2=(ret(__glLightfv_size) << 0x2), a3=?.
  The `jalr` at 0xdacd684 calls __glSPDlalloc [0xd976680] with a0=(ret(__glLightfv_size) << 0x2)+8, a1=0x56, a2=(ret(__glLightfv_size) << 0x2), a3=?.
  The `jalr` at 0xdacd6b4 calls memcpy with a0=ret(__glSPDlalloc)+8, a1=a2 at entry (arg2), a2=?, a3=?.
  The `bgez` branch at 0xdacd65c targets 0xdacd678, is taken when a2(=(ret(__glLightfv_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glLightfv_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xdacd670 targets 0xdacd6c0 and is always taken.
  The `beq` branch at 0xdacd690 targets 0xdacd6c0, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacd6c8 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).
- `__glsplc_Lighti` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacd6d0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacd6d0-0xdacd748 (120 bytes).
  It occupies 120 bytes.
  The `jalr` at 0xdacd6f8 calls __glLightiv_size [0xda811b4] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdacd710 calls __glsplc_InvalidEnum [0xda0cb60] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xdacd72c calls __glsplc_Lightiv [0xdacd748] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=?.
  The `beq` branch at 0xdacd704 targets 0xdacd720, is taken when v0(=ret(__glLightiv_size)) == at(=0x1), and falls through when v0(=ret(__glLightiv_size)) != at(=0x1).
  The `beq` branch at 0xdacd718 targets 0xdacd738 and is always taken.
  The return at 0xdacd740 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glsplc_Lightiv).
- `__glsplc_Lightiv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacd748 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacd748-0xdacd7f0 (168 bytes).
  It occupies 168 bytes.
  The `sw` at 0xdacd7c0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdacd7c8 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdacd770 calls __glLightiv_size [0xda811b4] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdacd788 calls __glsplc_InvalidEnum [0xda0cb60] with a0=?, a1=?, a2=(ret(__glLightiv_size) << 0x2), a3=?.
  The `jalr` at 0xdacd7a4 calls __glSPDlalloc [0xd976680] with a0=(ret(__glLightiv_size) << 0x2)+8, a1=0x58, a2=(ret(__glLightiv_size) << 0x2), a3=?.
  The `jalr` at 0xdacd7d4 calls memcpy with a0=ret(__glSPDlalloc)+8, a1=a2 at entry (arg2), a2=?, a3=?.
  The `bgez` branch at 0xdacd77c targets 0xdacd798, is taken when a2(=(ret(__glLightiv_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glLightiv_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xdacd790 targets 0xdacd7e0 and is always taken.
  The `beq` branch at 0xdacd7b0 targets 0xdacd7e0, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacd7e8 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).
- `__glsplc_LightModelf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacd7f0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacd7f0-0xdacd860 (112 bytes).
  It occupies 112 bytes.
  The `jalr` at 0xdacd810 calls __glLightModelfv_size [0xda811e8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdacd828 calls __glsplc_InvalidEnum [0xda0cb60] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xdacd844 calls __glsplc_LightModelfv [0xdacd860] with a0=a0 at entry (arg0), a1=sp+4, a2=?, a3=?.
  The `beq` branch at 0xdacd81c targets 0xdacd838, is taken when v0(=ret(__glLightModelfv_size)) == at(=0x1), and falls through when v0(=ret(__glLightModelfv_size)) != at(=0x1).
  The `beq` branch at 0xdacd830 targets 0xdacd850 and is always taken.
  The return at 0xdacd858 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glsplc_LightModelfv).
- `__glsplc_LightModelfv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacd860 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacd860-0xdacd8f8 (152 bytes).
  It occupies 152 bytes.
  The `sw` at 0xdacd8d0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdacd880 calls __glLightModelfv_size [0xda811e8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdacd898 calls __glsplc_InvalidEnum [0xda0cb60] with a0=?, a1=?, a2=(ret(__glLightModelfv_size) << 0x2), a3=?.
  The `jalr` at 0xdacd8b4 calls __glSPDlalloc [0xd976680] with a0=(ret(__glLightModelfv_size) << 0x2)+4, a1=0x5a, a2=(ret(__glLightModelfv_size) << 0x2), a3=?.
  The `jalr` at 0xdacd8dc calls memcpy with a0=ret(__glSPDlalloc)+4, a1=a1 at entry (arg1), a2=?, a3=?.
  The `bgez` branch at 0xdacd88c targets 0xdacd8a8, is taken when a2(=(ret(__glLightModelfv_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glLightModelfv_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xdacd8a0 targets 0xdacd8e8 and is always taken.
  The `beq` branch at 0xdacd8c0 targets 0xdacd8e8, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacd8f0 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).
- `__glsplc_LightModeli` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacd8f8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacd8f8-0xdacd968 (112 bytes).
  It occupies 112 bytes.
  The `jalr` at 0xdacd918 calls __glLightModeliv_size [0xda8123c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdacd930 calls __glsplc_InvalidEnum [0xda0cb60] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xdacd94c calls __glsplc_LightModeliv [0xdacd968] with a0=a0 at entry (arg0), a1=sp+4, a2=?, a3=?.
  The `beq` branch at 0xdacd924 targets 0xdacd940, is taken when v0(=ret(__glLightModeliv_size)) == at(=0x1), and falls through when v0(=ret(__glLightModeliv_size)) != at(=0x1).
  The `beq` branch at 0xdacd938 targets 0xdacd958 and is always taken.
  The return at 0xdacd960 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glsplc_LightModeliv).
- `__glsplc_LightModeliv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacd968 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacd968-0xdacda00 (152 bytes).
  It occupies 152 bytes.
  The `sw` at 0xdacd9d8 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdacd988 calls __glLightModeliv_size [0xda8123c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdacd9a0 calls __glsplc_InvalidEnum [0xda0cb60] with a0=?, a1=?, a2=(ret(__glLightModeliv_size) << 0x2), a3=?.
  The `jalr` at 0xdacd9bc calls __glSPDlalloc [0xd976680] with a0=(ret(__glLightModeliv_size) << 0x2)+4, a1=0x5c, a2=(ret(__glLightModeliv_size) << 0x2), a3=?.
  The `jalr` at 0xdacd9e4 calls memcpy with a0=ret(__glSPDlalloc)+4, a1=a1 at entry (arg1), a2=?, a3=?.
  The `bgez` branch at 0xdacd994 targets 0xdacd9b0, is taken when a2(=(ret(__glLightModeliv_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glLightModeliv_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xdacd9a8 targets 0xdacd9f0 and is always taken.
  The `beq` branch at 0xdacd9c8 targets 0xdacd9f0, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacd9f8 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).
- `__glsplc_LineStipple` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacda00 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacda00-0xdacda58 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xdacda3c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sh` at 0xdacda44 stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdacda28 calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0x5d, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacda30 targets 0xdacda48, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacda50 has v0 = ret(__glSPDlalloc).
- `__glsplc_LineWidth` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacda58 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacda58-0xdacdaa4 (76 bytes).
  It occupies 76 bytes.
  The `swc1` at 0xdacda90 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdacda7c calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0x5e, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacda84 targets 0xdacda94, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacda9c has v0 = ret(__glSPDlalloc).
- `__glsplc_Materialf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacdaa4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacdaa4-0xdacdb1c (120 bytes).
  It occupies 120 bytes.
  The `jalr` at 0xdacdacc calls __glMaterialfv_size [0xda81270] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdacdae4 calls __glsplc_InvalidEnum [0xda0cb60] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xdacdb00 calls __glsplc_Materialfv [0xdacdb1c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=?.
  The `beq` branch at 0xdacdad8 targets 0xdacdaf4, is taken when v0(=ret(__glMaterialfv_size)) == at(=0x1), and falls through when v0(=ret(__glMaterialfv_size)) != at(=0x1).
  The `beq` branch at 0xdacdaec targets 0xdacdb0c and is always taken.
  The return at 0xdacdb14 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glsplc_Materialfv).
- `__glsplc_Materialfv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacdb1c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacdb1c-0xdacdbf4 (216 bytes).
  It occupies 216 bytes.
  The `lw` at 0xdacdb48 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `sw` at 0xdacdbc4 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdacdbcc stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdacdb44 calls __glErrorCheckMaterial [0xda3cc7c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a2], a3=a3 at entry (arg3).
  The `jalr` at 0xdacdb5c calls __glsplc_Error [0xda0cbe0] with a0=ret(__glErrorCheckMaterial), a1=?, a2=?, a3=?.
  The `jalr` at 0xdacdb74 calls __glMaterialfv_size [0xda81270] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xdacdb8c calls __glsplc_InvalidEnum [0xda0cb60] with a0=?, a1=?, a2=(ret(__glMaterialfv_size) << 0x2), a3=?.
  The `jalr` at 0xdacdba8 calls __glSPDlalloc [0xd976680] with a0=(ret(__glMaterialfv_size) << 0x2)+8, a1=0x60, a2=(ret(__glMaterialfv_size) << 0x2), a3=?.
  The `jalr` at 0xdacdbd8 calls memcpy with a0=ret(__glSPDlalloc)+8, a1=a2 at entry (arg2), a2=?, a3=?.
  The `beq` branch at 0xdacdb50 targets 0xdacdb6c, is taken when v0(=ret(__glErrorCheckMaterial)) == 0, and falls through when v0(=ret(__glErrorCheckMaterial)) != 0.
  The `beq` branch at 0xdacdb64 targets 0xdacdbe4 and is always taken.
  The `bgez` branch at 0xdacdb80 targets 0xdacdb9c, is taken when a2(=(ret(__glMaterialfv_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glMaterialfv_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xdacdb94 targets 0xdacdbe4 and is always taken.
  The `beq` branch at 0xdacdbb4 targets 0xdacdbe4, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacdbec has v0 = one of ret(__glsplc_Error), ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).
- `__glsplc_Materiali` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacdbf4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacdbf4-0xdacdc6c (120 bytes).
  It occupies 120 bytes.
  The `jalr` at 0xdacdc1c calls __glMaterialiv_size [0xda812f4] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdacdc34 calls __glsplc_InvalidEnum [0xda0cb60] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xdacdc50 calls __glsplc_Materialiv [0xdacdc6c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=?.
  The `beq` branch at 0xdacdc28 targets 0xdacdc44, is taken when v0(=ret(__glMaterialiv_size)) == at(=0x1), and falls through when v0(=ret(__glMaterialiv_size)) != at(=0x1).
  The `beq` branch at 0xdacdc3c targets 0xdacdc5c and is always taken.
  The return at 0xdacdc64 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glsplc_Materialiv).
- `__glsplc_Materialiv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacdc6c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacdc6c-0xdacdd58 (236 bytes).
  It occupies 236 bytes.
  The `lw` at 0xdacdc90 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `sw` at 0xdacdd28 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdacdd30 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdacdca8 calls __glErrorCheckMaterial [0xda3cc7c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0xdacdcc0 calls __glsplc_Error [0xda0cbe0] with a0=ret(__glErrorCheckMaterial), a1=?, a2=?, a3=?.
  The `jalr` at 0xdacdcd8 calls __glMaterialiv_size [0xda812f4] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xdacdcf0 calls __glsplc_InvalidEnum [0xda0cb60] with a0=?, a1=?, a2=(ret(__glMaterialiv_size) << 0x2), a3=?.
  The `jalr` at 0xdacdd0c calls __glSPDlalloc [0xd976680] with a0=(ret(__glMaterialiv_size) << 0x2)+8, a1=0x62, a2=(ret(__glMaterialiv_size) << 0x2), a3=?.
  The `jalr` at 0xdacdd3c calls memcpy with a0=ret(__glSPDlalloc)+8, a1=a2 at entry (arg2), a2=?, a3=?.
  The `beq` branch at 0xdacdcb4 targets 0xdacdcd0, is taken when v0(=ret(__glErrorCheckMaterial)) == 0, and falls through when v0(=ret(__glErrorCheckMaterial)) != 0.
  The `beq` branch at 0xdacdcc8 targets 0xdacdd48 and is always taken.
  The `bgez` branch at 0xdacdce4 targets 0xdacdd00, is taken when a2(=(ret(__glMaterialiv_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glMaterialiv_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xdacdcf8 targets 0xdacdd48 and is always taken.
  The `beq` branch at 0xdacdd18 targets 0xdacdd48, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacdd50 has v0 = one of ret(__glsplc_Error), ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).
- `__glsplc_PointSize` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacdd58 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacdd58-0xdacdda4 (76 bytes).
  It occupies 76 bytes.
  The `swc1` at 0xdacdd90 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdacdd7c calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0x63, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacdd84 targets 0xdacdd94, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacdd9c has v0 = ret(__glSPDlalloc).
- `__glsplc_PolygonMode` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacdda4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacdda4-0xdacddfc (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xdacdde0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdacdde8 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdacddcc calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0x64, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacddd4 targets 0xdacddec, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacddf4 has v0 = ret(__glSPDlalloc).
- `__glsplc_Scissor` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacddfc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacddfc-0xdacde6c (112 bytes).
  It occupies 112 bytes.
  The `sw` at 0xdacde40 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdacde48 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xdacde50 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `sw` at 0xdacde58 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xdacde2c calls __glSPDlalloc [0xd976680] with a0=0x10, a1=0x66, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacde34 targets 0xdacde5c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacde64 has v0 = ret(__glSPDlalloc).
- `__glsplc_ShadeModel` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacde6c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacde6c-0xdacdeb8 (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xdacdea4 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdacde90 calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0x67, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacde98 targets 0xdacdea8, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacdeb0 has v0 = ret(__glSPDlalloc).
- `__glsplc_InitNames` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdace69c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdace69c-0xdace6d8 (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0xdace6bc calls __glSPDlalloc [0xd976680] with a0=0x0, a1=0x78, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdace6d0 has v0 = ret(__glSPDlalloc).
- `__glsplc_LoadName` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdace6d8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdace6d8-0xdace724 (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xdace710 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdace6fc calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0x79, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdace704 targets 0xdace714, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdace71c has v0 = ret(__glSPDlalloc).
- `__glsplc_PassThrough` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdace724 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdace724-0xdace770 (76 bytes).
  It occupies 76 bytes.
  The `swc1` at 0xdace75c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdace748 calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0x7a, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdace750 targets 0xdace760, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdace768 has v0 = ret(__glSPDlalloc).
- `__glsplc_PopName` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdace770 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdace770-0xdace7ac (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0xdace790 calls __glSPDlalloc [0xd976680] with a0=0x0, a1=0x7b, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdace7a4 has v0 = ret(__glSPDlalloc).
- `__glsplc_PushName` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdace7ac (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdace7ac-0xdace7f8 (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xdace7e4 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdace7d0 calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0x7c, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdace7d8 targets 0xdace7e8, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdace7f0 has v0 = ret(__glSPDlalloc).
- `__glsplc_Clear` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdace844 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdace844-0xdace890 (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xdace87c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdace868 calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0x7e, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdace870 targets 0xdace880, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdace888 has v0 = ret(__glSPDlalloc).
- `__glsplc_ClearAccum` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdace890 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdace890-0xdace900 (112 bytes).
  It occupies 112 bytes.
  The `swc1` at 0xdace8d4 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xdace8dc stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `swc1` at 0xdace8e4 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `swc1` at 0xdace8ec stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xdace8c0 calls __glSPDlalloc [0xd976680] with a0=0x10, a1=0x7f, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdace8c8 targets 0xdace8f0, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdace8f8 has v0 = ret(__glSPDlalloc).
- `__glsplc_ClearIndex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdace900 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdace900-0xdace94c (76 bytes).
  It occupies 76 bytes.
  The `swc1` at 0xdace938 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdace924 calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0x80, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdace92c targets 0xdace93c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdace944 has v0 = ret(__glSPDlalloc).
- `__glsplc_ClearColor` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdace94c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdace94c-0xdace9bc (112 bytes).
  It occupies 112 bytes.
  The `swc1` at 0xdace990 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xdace998 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `swc1` at 0xdace9a0 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `swc1` at 0xdace9a8 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xdace97c calls __glSPDlalloc [0xd976680] with a0=0x10, a1=0x81, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdace984 targets 0xdace9ac, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdace9b4 has v0 = ret(__glSPDlalloc).
- `__glsplc_ClearStencil` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdace9bc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdace9bc-0xdacea08 (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xdace9f4 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdace9e0 calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0x82, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdace9e8 targets 0xdace9f8, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacea00 has v0 = ret(__glSPDlalloc).
- `__glsplc_ClearDepth` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacea08 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacea08-0xdacea54 (76 bytes).
  It occupies 76 bytes.
  The `sdc1` at 0xdacea40 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `jalr` at 0xdacea2c calls __glSPDlalloc2 [0xd97687c] with a0=0x8, a1=0x83, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacea34 targets 0xdacea44, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xdacea4c has v0 = ret(__glSPDlalloc2).
- `__glsplc_StencilMask` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacea54 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacea54-0xdaceaa0 (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xdacea8c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdacea78 calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0x84, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacea80 targets 0xdacea90, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacea98 has v0 = ret(__glSPDlalloc).
- `__glsplc_ColorMask` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaceaa0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaceaa0-0xdaceb10 (112 bytes).
  It occupies 112 bytes.
  The `sb` at 0xdaceae4 stores 1 byte to ret(__glSPDlalloc) +0x0.
  The `sb` at 0xdaceaec stores 1 byte to ret(__glSPDlalloc) +0x1.
  The `sb` at 0xdaceaf4 stores 1 byte to ret(__glSPDlalloc) +0x2.
  The `sb` at 0xdaceafc stores 1 byte to ret(__glSPDlalloc) +0x3.
  The `jalr` at 0xdacead0 calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0x85, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacead8 targets 0xdaceb00, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdaceb08 has v0 = ret(__glSPDlalloc).
- `__glsplc_DepthMask` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaceb10 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaceb10-0xdaceb5c (76 bytes).
  It occupies 76 bytes.
  The `sb` at 0xdaceb48 stores 1 byte to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdaceb34 calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0x86, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaceb3c targets 0xdaceb4c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdaceb54 has v0 = ret(__glSPDlalloc).
- `__glsplc_IndexMask` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaceb5c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaceb5c-0xdaceba8 (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xdaceb94 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdaceb80 calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0x87, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaceb88 targets 0xdaceb98, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdaceba0 has v0 = ret(__glSPDlalloc).
- `__glsplc_Accum` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaceba8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaceba8-0xdacec00 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xdacebe4 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xdacebec stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdacebd0 calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0x88, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacebd8 targets 0xdacebf0, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacebf8 has v0 = ret(__glSPDlalloc).
- `__glsplc_PopAttrib` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacec00 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacec00-0xdacec3c (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0xdacec20 calls __glSPDlalloc [0xd976680] with a0=0x0, a1=0x8b, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdacec34 has v0 = ret(__glSPDlalloc).
- `__glsplc_PushAttrib` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacec3c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacec3c-0xdacec88 (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xdacec74 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdacec60 calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0x8c, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacec68 targets 0xdacec78, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacec80 has v0 = ret(__glSPDlalloc).
- `__glsplc_MapGrid1d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacec88 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacec88-0xdacecec (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0xdacecc8 stores 4 bytes to ret(__glSPDlalloc2) +0x10.
  The `sdc1` at 0xdacecd0 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `sdc1` at 0xdacecd8 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `jalr` at 0xdacecb4 calls __glSPDlalloc2 [0xd97687c] with a0=0x18, a1=0x91, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacecbc targets 0xdacecdc, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xdacece4 has v0 = ret(__glSPDlalloc2).
- `__glsplc_MapGrid1f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacecec (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacecec-0xdaced50 (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0xdaced2c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xdaced34 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `swc1` at 0xdaced3c stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xdaced18 calls __glSPDlalloc [0xd976680] with a0=0xc, a1=0x92, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaced20 targets 0xdaced40, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdaced48 has v0 = ret(__glSPDlalloc).
- `__glsplc_MapGrid2d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaced50 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaced50-0xdacedcc (124 bytes).
  It occupies 124 bytes.
  The `sw` at 0xdaced90 stores 4 bytes to ret(__glSPDlalloc2) +0x20.
  The `sdc1` at 0xdaced98 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `sdc1` at 0xdaceda0 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `sw` at 0xdaceda8 stores 4 bytes to ret(__glSPDlalloc2) +0x24.
  The `sdc1` at 0xdacedb0 stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `sdc1` at 0xdacedb8 stores 8 bytes to ret(__glSPDlalloc2) +0x18.
  The `jalr` at 0xdaced7c calls __glSPDlalloc2 [0xd97687c] with a0=0x28, a1=0x93, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaced84 targets 0xdacedbc, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xdacedc4 has v0 = ret(__glSPDlalloc2).
- `__glsplc_MapGrid2f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacedcc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacedcc-0xdacee4c (128 bytes).
  It occupies 128 bytes.
  The `sw` at 0xdacee10 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xdacee18 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `swc1` at 0xdacee20 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `sw` at 0xdacee28 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `swc1` at 0xdacee30 stores 4 bytes to ret(__glSPDlalloc) +0x10.
  The `swc1` at 0xdacee38 stores 4 bytes to ret(__glSPDlalloc) +0x14.
  The `jalr` at 0xdacedfc calls __glSPDlalloc [0xd976680] with a0=0x18, a1=0x94, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacee04 targets 0xdacee3c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacee44 has v0 = ret(__glSPDlalloc).
- `__glsplc_EvalCoord1d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacee4c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacee4c-0xdacee98 (76 bytes).
  It occupies 76 bytes.
  The `sdc1` at 0xdacee84 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `jalr` at 0xdacee70 calls __glSPDlalloc2 [0xd97687c] with a0=0x8, a1=0x95, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacee78 targets 0xdacee88, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xdacee90 has v0 = ret(__glSPDlalloc2).
- `__glsplc_EvalCoord1dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacee98 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacee98-0xdaceee8 (80 bytes).
  It occupies 80 bytes.
  The `ldc1` at 0xdaceed0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xdaceed4 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `jalr` at 0xdaceebc calls __glSPDlalloc2 [0xd97687c] with a0=0x8, a1=0x95, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaceec4 targets 0xdaceed8, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xdaceee0 has v0 = ret(__glSPDlalloc2).
- `__glsplc_EvalCoord1f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaceee8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaceee8-0xdacef34 (76 bytes).
  It occupies 76 bytes.
  The `swc1` at 0xdacef20 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdacef0c calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0x96, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacef14 targets 0xdacef24, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacef2c has v0 = ret(__glSPDlalloc).
- `__glsplc_EvalCoord1fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacef34 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacef34-0xdacef84 (80 bytes).
  It occupies 80 bytes.
  The `lwc1` at 0xdacef6c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xdacef70 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdacef58 calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0x96, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacef60 targets 0xdacef74, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacef7c has v0 = ret(__glSPDlalloc).
- `__glsplc_EvalCoord2d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacef84 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacef84-0xdacefdc (88 bytes).
  It occupies 88 bytes.
  The `sdc1` at 0xdacefc0 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `sdc1` at 0xdacefc8 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `jalr` at 0xdacefac calls __glSPDlalloc2 [0xd97687c] with a0=0x10, a1=0x97, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacefb4 targets 0xdacefcc, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xdacefd4 has v0 = ret(__glSPDlalloc2).
- `__glsplc_EvalCoord2dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacefdc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacefdc-0xdacf034 (88 bytes).
  It occupies 88 bytes.
  The `ldc1` at 0xdacf014 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xdacf018 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `ldc1` at 0xdacf01c loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sdc1` at 0xdacf020 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `jalr` at 0xdacf000 calls __glSPDlalloc2 [0xd97687c] with a0=0x10, a1=0x97, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacf00c targets 0xdacf024, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xdacf02c has v0 = ret(__glSPDlalloc2).
- `__glsplc_EvalCoord2f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacf034 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacf034-0xdacf08c (88 bytes).
  It occupies 88 bytes.
  The `swc1` at 0xdacf070 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xdacf078 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdacf05c calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0x98, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacf064 targets 0xdacf07c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacf084 has v0 = ret(__glSPDlalloc).
- `__glsplc_EvalCoord2fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacf08c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacf08c-0xdacf0e4 (88 bytes).
  It occupies 88 bytes.
  The `lwc1` at 0xdacf0c4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xdacf0c8 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lwc1` at 0xdacf0cc loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xdacf0d0 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdacf0b0 calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0x98, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacf0bc targets 0xdacf0d4, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacf0dc has v0 = ret(__glSPDlalloc).
- `__glsplc_EvalMesh1` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacf0e4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacf0e4-0xdacf148 (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0xdacf124 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdacf12c stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xdacf134 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xdacf110 calls __glSPDlalloc [0xd976680] with a0=0xc, a1=0x99, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacf118 targets 0xdacf138, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacf140 has v0 = ret(__glSPDlalloc).
- `__glsplc_EvalPoint1` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacf148 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacf148-0xdacf194 (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xdacf180 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdacf16c calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0x9a, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacf174 targets 0xdacf184, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacf18c has v0 = ret(__glSPDlalloc).
- `__glsplc_EvalMesh2` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacf194 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacf194-0xdacf20c (120 bytes).
  It occupies 120 bytes.
  The `sw` at 0xdacf1d8 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdacf1e0 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xdacf1e8 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `sw` at 0xdacf1f0 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `sw` at 0xdacf1f8 stores 4 bytes to ret(__glSPDlalloc) +0x10.
  The `jalr` at 0xdacf1c4 calls __glSPDlalloc [0xd976680] with a0=0x14, a1=0x9b, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacf1cc targets 0xdacf1fc, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacf204 has v0 = ret(__glSPDlalloc).
- `__glsplc_EvalPoint2` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacf20c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacf20c-0xdacf264 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xdacf248 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdacf250 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdacf234 calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0x9c, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacf23c targets 0xdacf254, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacf25c has v0 = ret(__glSPDlalloc).
- `__glsplc_AlphaFunc` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacf264 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacf264-0xdacf2bc (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xdacf2a0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xdacf2a8 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdacf28c calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0x9d, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacf294 targets 0xdacf2ac, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacf2b4 has v0 = ret(__glSPDlalloc).
- `__glsplc_BlendFunc` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacf2bc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacf2bc-0xdacf314 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xdacf2f8 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdacf300 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdacf2e4 calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0x9e, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacf2ec targets 0xdacf304, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacf30c has v0 = ret(__glSPDlalloc).
- `__glsplc_LogicOp` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacf314 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacf314-0xdacf360 (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xdacf34c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdacf338 calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0x9f, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacf340 targets 0xdacf350, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacf358 has v0 = ret(__glSPDlalloc).
- `__glsplc_StencilFunc` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacf360 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacf360-0xdacf3c4 (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0xdacf3a0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdacf3a8 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xdacf3b0 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xdacf38c calls __glSPDlalloc [0xd976680] with a0=0xc, a1=0xa0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacf394 targets 0xdacf3b4, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacf3bc has v0 = ret(__glSPDlalloc).
- `__glsplc_StencilOp` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacf3c4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacf3c4-0xdacf428 (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0xdacf404 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdacf40c stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xdacf414 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xdacf3f0 calls __glSPDlalloc [0xd976680] with a0=0xc, a1=0xa1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacf3f8 targets 0xdacf418, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacf420 has v0 = ret(__glSPDlalloc).
- `__glsplc_DepthFunc` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacf428 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacf428-0xdacf474 (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xdacf460 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdacf44c calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0xa2, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacf454 targets 0xdacf464, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacf46c has v0 = ret(__glSPDlalloc).
- `__glsplc_DepthRange` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacf820 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacf820-0xdacf878 (88 bytes).
  It occupies 88 bytes.
  The `sdc1` at 0xdacf85c stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `sdc1` at 0xdacf864 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `jalr` at 0xdacf848 calls __glSPDlalloc2 [0xd97687c] with a0=0x10, a1=0xac, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacf850 targets 0xdacf868, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xdacf870 has v0 = ret(__glSPDlalloc2).
- `__glsplc_Frustum` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacf878 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacf878-0xdacf8f0 (120 bytes).
  It occupies 120 bytes.
  The `sdc1` at 0xdacf8b4 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `sdc1` at 0xdacf8bc stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `sdc1` at 0xdacf8c4 stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `sdc1` at 0xdacf8cc stores 8 bytes to ret(__glSPDlalloc2) +0x18.
  The `sdc1` at 0xdacf8d4 stores 8 bytes to ret(__glSPDlalloc2) +0x20.
  The `sdc1` at 0xdacf8dc stores 8 bytes to ret(__glSPDlalloc2) +0x28.
  The `jalr` at 0xdacf8a0 calls __glSPDlalloc2 [0xd97687c] with a0=0x30, a1=0xad, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacf8a8 targets 0xdacf8e0, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xdacf8e8 has v0 = ret(__glSPDlalloc2).
- `__glsplc_LoadIdentity` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacf8f0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacf8f0-0xdacf92c (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0xdacf910 calls __glSPDlalloc [0xd976680] with a0=0x0, a1=0xae, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdacf924 has v0 = ret(__glSPDlalloc).
- `__glsplc_MatrixMode` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacf9ec (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacf9ec-0xdacfa38 (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xdacfa24 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdacfa10 calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0xb1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacfa18 targets 0xdacfa28, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacfa30 has v0 = ret(__glSPDlalloc).
- `__glsplc_MultMatrixf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacfa38 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacfa38-0xdacfa98 (96 bytes).
  It occupies 96 bytes.
  The `jalr` at 0xdacfa5c calls __glSPDlalloc [0xd976680] with a0=0x40, a1=0xb2, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdacfa7c calls memcpy with a0=ret(__glSPDlalloc), a1=a0 at entry (arg0), a2=0x40, a3=?.
  The `beq` branch at 0xdacfa68 targets 0xdacfa88, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacfa90 has v0 = one of ret(__glSPDlalloc), ret(memcpy).
- `__glsplc_MultMatrixd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacfa98 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacfa98-0xdacfaf8 (96 bytes).
  It occupies 96 bytes.
  The `jalr` at 0xdacfabc calls __glSPDlalloc2 [0xd97687c] with a0=0x80, a1=0xb3, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdacfadc calls memcpy with a0=ret(__glSPDlalloc2), a1=a0 at entry (arg0), a2=0x80, a3=?.
  The `beq` branch at 0xdacfac8 targets 0xdacfae8, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xdacfaf0 has v0 = one of ret(__glSPDlalloc2), ret(memcpy).
- `__glsplc_Ortho` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacfaf8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacfaf8-0xdacfb70 (120 bytes).
  It occupies 120 bytes.
  The `sdc1` at 0xdacfb34 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `sdc1` at 0xdacfb3c stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `sdc1` at 0xdacfb44 stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `sdc1` at 0xdacfb4c stores 8 bytes to ret(__glSPDlalloc2) +0x18.
  The `sdc1` at 0xdacfb54 stores 8 bytes to ret(__glSPDlalloc2) +0x20.
  The `sdc1` at 0xdacfb5c stores 8 bytes to ret(__glSPDlalloc2) +0x28.
  The `jalr` at 0xdacfb20 calls __glSPDlalloc2 [0xd97687c] with a0=0x30, a1=0xb4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacfb28 targets 0xdacfb60, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xdacfb68 has v0 = ret(__glSPDlalloc2).
- `__glsplc_PopMatrix` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacfb70 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacfb70-0xdacfbac (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0xdacfb90 calls __glSPDlalloc [0xd976680] with a0=0x0, a1=0xb5, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdacfba4 has v0 = ret(__glSPDlalloc).
- `__glsplc_PushMatrix` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacfbac (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacfbac-0xdacfbe8 (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0xdacfbcc calls __glSPDlalloc [0xd976680] with a0=0x0, a1=0xb6, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdacfbe0 has v0 = ret(__glSPDlalloc).
- `__glsplc_Rotated` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacfbe8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacfbe8-0xdacfc50 (104 bytes).
  It occupies 104 bytes.
  The `sdc1` at 0xdacfc24 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `sdc1` at 0xdacfc2c stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `sdc1` at 0xdacfc34 stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `sdc1` at 0xdacfc3c stores 8 bytes to ret(__glSPDlalloc2) +0x18.
  The `jalr` at 0xdacfc10 calls __glSPDlalloc2 [0xd97687c] with a0=0x20, a1=0xb7, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacfc18 targets 0xdacfc40, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xdacfc48 has v0 = ret(__glSPDlalloc2).
- `__glsplc_Rotatef` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacfc50 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacfc50-0xdacfcc0 (112 bytes).
  It occupies 112 bytes.
  The `swc1` at 0xdacfc94 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xdacfc9c stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `swc1` at 0xdacfca4 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `swc1` at 0xdacfcac stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xdacfc80 calls __glSPDlalloc [0xd976680] with a0=0x10, a1=0xb8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacfc88 targets 0xdacfcb0, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacfcb8 has v0 = ret(__glSPDlalloc).
- `__glsplc_Scaled` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacfcc0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacfcc0-0xdacfd20 (96 bytes).
  It occupies 96 bytes.
  The `sdc1` at 0xdacfcfc stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `sdc1` at 0xdacfd04 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `sdc1` at 0xdacfd0c stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `jalr` at 0xdacfce8 calls __glSPDlalloc2 [0xd97687c] with a0=0x18, a1=0xb9, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacfcf0 targets 0xdacfd10, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xdacfd18 has v0 = ret(__glSPDlalloc2).
- `__glsplc_Scalef` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacfd20 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacfd20-0xdacfd84 (100 bytes).
  It occupies 100 bytes.
  The `swc1` at 0xdacfd60 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xdacfd68 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `swc1` at 0xdacfd70 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xdacfd4c calls __glSPDlalloc [0xd976680] with a0=0xc, a1=0xba, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacfd54 targets 0xdacfd74, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacfd7c has v0 = ret(__glSPDlalloc).
- `__glsplc_Translated` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacfd84 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacfd84-0xdacfde4 (96 bytes).
  It occupies 96 bytes.
  The `sdc1` at 0xdacfdc0 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `sdc1` at 0xdacfdc8 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `sdc1` at 0xdacfdd0 stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `jalr` at 0xdacfdac calls __glSPDlalloc2 [0xd97687c] with a0=0x18, a1=0xbb, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacfdb4 targets 0xdacfdd4, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xdacfddc has v0 = ret(__glSPDlalloc2).
- `__glsplc_Translatef` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacfde4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacfde4-0xdacfe48 (100 bytes).
  It occupies 100 bytes.
  The `swc1` at 0xdacfe24 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xdacfe2c stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `swc1` at 0xdacfe34 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xdacfe10 calls __glSPDlalloc [0xd976680] with a0=0xc, a1=0xbc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacfe18 targets 0xdacfe38, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacfe40 has v0 = ret(__glSPDlalloc).
- `__glsplc_Viewport` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacfe48 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacfe48-0xdacfeb8 (112 bytes).
  It occupies 112 bytes.
  The `sw` at 0xdacfe8c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdacfe94 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xdacfe9c stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `sw` at 0xdacfea4 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xdacfe78 calls __glSPDlalloc [0xd976680] with a0=0x10, a1=0xbd, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacfe80 targets 0xdacfea8, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacfeb0 has v0 = ret(__glSPDlalloc).
- `__glsplc_BlendColorEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacfeb8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacfeb8-0xdacff28 (112 bytes).
  It occupies 112 bytes.
  The `swc1` at 0xdacfefc stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xdacff04 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `swc1` at 0xdacff0c stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `swc1` at 0xdacff14 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xdacfee8 calls __glSPDlalloc [0xd976680] with a0=0x10, a1=0xbe, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacfef0 targets 0xdacff18, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacff20 has v0 = ret(__glSPDlalloc).
- `__glsplc_BlendEquationEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacff28 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacff28-0xdacff74 (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xdacff60 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdacff4c calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0xbf, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacff54 targets 0xdacff64, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacff6c has v0 = ret(__glSPDlalloc).
- `__glsplc_PolygonOffsetEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacff74 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacff74-0xdacffcc (88 bytes).
  It occupies 88 bytes.
  The `swc1` at 0xdacffb0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xdacffb8 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdacff9c calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0xc0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdacffa4 targets 0xdacffbc, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdacffc4 has v0 = ret(__glSPDlalloc).
- `__glsplc_ConvolutionParameterfEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacffcc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacffcc-0xdad0030 (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0xdad000c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdad0014 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `swc1` at 0xdad001c stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xdacfff8 calls __glSPDlalloc [0xd976680] with a0=0xc, a1=0xc5, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdad0000 targets 0xdad0020, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdad0028 has v0 = ret(__glSPDlalloc).
- `__glsplc_ConvolutionParameterfvEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad0030 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad0030-0xdad00d8 (168 bytes).
  It occupies 168 bytes.
  The `sw` at 0xdad00a8 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdad00b0 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdad0058 calls __glConvolutionParameterfvEXT_size [0xda4d1b4] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdad0070 calls __glsplc_InvalidEnum [0xda0cb60] with a0=?, a1=?, a2=(ret(__glConvolutionParameterfvEXT_size) << 0x2), a3=?.
  The `jalr` at 0xdad008c calls __glSPDlalloc [0xd976680] with a0=(ret(__glConvolutionParameterfvEXT_size) << 0x2)+8, a1=0xc6, a2=(ret(__glConvolutionParameterfvEXT_size) << 0x2), a3=?.
  The `jalr` at 0xdad00bc calls memcpy with a0=ret(__glSPDlalloc)+8, a1=a2 at entry (arg2), a2=?, a3=?.
  The `bgez` branch at 0xdad0064 targets 0xdad0080, is taken when a2(=(ret(__glConvolutionParameterfvEXT_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glConvolutionParameterfvEXT_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xdad0078 targets 0xdad00c8 and is always taken.
  The `beq` branch at 0xdad0098 targets 0xdad00c8, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdad00d0 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).
- `__glsplc_ConvolutionParameteriEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad00d8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad00d8-0xdad013c (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0xdad0118 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdad0120 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xdad0128 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xdad0104 calls __glSPDlalloc [0xd976680] with a0=0xc, a1=0xc7, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdad010c targets 0xdad012c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdad0134 has v0 = ret(__glSPDlalloc).
- `__glsplc_ConvolutionParameterivEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad013c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad013c-0xdad01e4 (168 bytes).
  It occupies 168 bytes.
  The `sw` at 0xdad01b4 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdad01bc stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdad0164 calls __glConvolutionParameterivEXT_size [0xda4d1f8] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdad017c calls __glsplc_InvalidEnum [0xda0cb60] with a0=?, a1=?, a2=(ret(__glConvolutionParameterivEXT_size) << 0x2), a3=?.
  The `jalr` at 0xdad0198 calls __glSPDlalloc [0xd976680] with a0=(ret(__glConvolutionParameterivEXT_size) << 0x2)+8, a1=0xc8, a2=(ret(__glConvolutionParameterivEXT_size) << 0x2), a3=?.
  The `jalr` at 0xdad01c8 calls memcpy with a0=ret(__glSPDlalloc)+8, a1=a2 at entry (arg2), a2=?, a3=?.
  The `bgez` branch at 0xdad0170 targets 0xdad018c, is taken when a2(=(ret(__glConvolutionParameterivEXT_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glConvolutionParameterivEXT_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xdad0184 targets 0xdad01d4 and is always taken.
  The `beq` branch at 0xdad01a4 targets 0xdad01d4, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdad01dc has v0 = one of ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).
- `__glsplc_HistogramEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad02dc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad02dc-0xdad0378 (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xdad030c loads 4 bytes from abs 0x1010.
  The `lw` at 0xdad0310 loads 4 bytes from [0x1010] +0x17f4.
  The `lw` at 0xdad0314 loads 4 bytes from [[0x1010]+6132] +0x300.
  The `sw` at 0xdad0354 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdad035c stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `sb` at 0xdad0360 stores 1 byte to ret(__glSPDlalloc) +0xc.
  The `sw` at 0xdad0364 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdad0318 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xdad0338 calls __glSPDlalloc [0xd976680] with a0=0x10, a1=0xcc, a2=a2 at entry (arg2), a3=?.
  The `bne` branch at 0xdad0304 targets 0xdad0328, is taken when a0 != at(=0x8025), and falls through when a0 == at(=0x8025).
  The `beq` branch at 0xdad0320 targets 0xdad0368 and is always taken.
  The `beq` branch at 0xdad0348 targets 0xdad0368, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdad0370 has v0 = one of ret(?), ret(__glSPDlalloc).
- `__glsplc_MinmaxEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad0378 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad0378-0xdad03dc (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0xdad03b8 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdad03c0 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sb` at 0xdad03c8 stores 1 byte to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xdad03a4 calls __glSPDlalloc [0xd976680] with a0=0xc, a1=0xcd, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdad03ac targets 0xdad03cc, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdad03d4 has v0 = ret(__glSPDlalloc).
- `__glsplc_CopyTexImage1DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad0574 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad0574-0xdad05fc (136 bytes).
  It occupies 136 bytes.
  The `sw` at 0xdad05b8 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdad05c0 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xdad05c8 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `sw` at 0xdad05d0 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `sw` at 0xdad05d8 stores 4 bytes to ret(__glSPDlalloc) +0x10.
  The `sw` at 0xdad05e0 stores 4 bytes to ret(__glSPDlalloc) +0x14.
  The `sw` at 0xdad05e8 stores 4 bytes to ret(__glSPDlalloc) +0x18.
  The `jalr` at 0xdad05a4 calls __glSPDlalloc [0xd976680] with a0=0x1c, a1=0xd6, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdad05ac targets 0xdad05ec, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdad05f4 has v0 = ret(__glSPDlalloc).
- `__glsplc_CopyTexImage2DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad05fc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad05fc-0xdad068c (144 bytes).
  It occupies 144 bytes.
  The `sw` at 0xdad0640 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdad0648 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xdad0650 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `sw` at 0xdad0658 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `sw` at 0xdad0660 stores 4 bytes to ret(__glSPDlalloc) +0x10.
  The `sw` at 0xdad0668 stores 4 bytes to ret(__glSPDlalloc) +0x14.
  The `sw` at 0xdad0670 stores 4 bytes to ret(__glSPDlalloc) +0x18.
  The `sw` at 0xdad0678 stores 4 bytes to ret(__glSPDlalloc) +0x1c.
  The `jalr` at 0xdad062c calls __glSPDlalloc [0xd976680] with a0=0x20, a1=0xd7, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdad0634 targets 0xdad067c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdad0684 has v0 = ret(__glSPDlalloc).
- `__glsplc_CopyTexSubImage1DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad068c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad068c-0xdad070c (128 bytes).
  It occupies 128 bytes.
  The `sw` at 0xdad06d0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdad06d8 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xdad06e0 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `sw` at 0xdad06e8 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `sw` at 0xdad06f0 stores 4 bytes to ret(__glSPDlalloc) +0x10.
  The `sw` at 0xdad06f8 stores 4 bytes to ret(__glSPDlalloc) +0x14.
  The `jalr` at 0xdad06bc calls __glSPDlalloc [0xd976680] with a0=0x18, a1=0xd8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdad06c4 targets 0xdad06fc, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdad0704 has v0 = ret(__glSPDlalloc).
- `__glsplc_CopyTexSubImage2DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad070c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad070c-0xdad079c (144 bytes).
  It occupies 144 bytes.
  The `sw` at 0xdad0750 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdad0758 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xdad0760 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `sw` at 0xdad0768 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `sw` at 0xdad0770 stores 4 bytes to ret(__glSPDlalloc) +0x10.
  The `sw` at 0xdad0778 stores 4 bytes to ret(__glSPDlalloc) +0x14.
  The `sw` at 0xdad0780 stores 4 bytes to ret(__glSPDlalloc) +0x18.
  The `sw` at 0xdad0788 stores 4 bytes to ret(__glSPDlalloc) +0x1c.
  The `jalr` at 0xdad073c calls __glSPDlalloc [0xd976680] with a0=0x20, a1=0xd9, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdad0744 targets 0xdad078c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdad0794 has v0 = ret(__glSPDlalloc).
- `__glsplc_CopyTexSubImage3DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad079c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad079c-0xdad0834 (152 bytes).
  It occupies 152 bytes.
  The `sw` at 0xdad07e0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdad07e8 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xdad07f0 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `sw` at 0xdad07f8 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `sw` at 0xdad0800 stores 4 bytes to ret(__glSPDlalloc) +0x10.
  The `sw` at 0xdad0808 stores 4 bytes to ret(__glSPDlalloc) +0x14.
  The `sw` at 0xdad0810 stores 4 bytes to ret(__glSPDlalloc) +0x18.
  The `sw` at 0xdad0818 stores 4 bytes to ret(__glSPDlalloc) +0x1c.
  The `sw` at 0xdad0820 stores 4 bytes to ret(__glSPDlalloc) +0x20.
  The `jalr` at 0xdad07cc calls __glSPDlalloc [0xd976680] with a0=0x24, a1=0xda, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdad07d4 targets 0xdad0824, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdad082c has v0 = ret(__glSPDlalloc).
- `__glsplc_PolygonOffset` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad0834 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad0834-0xdad088c (88 bytes).
  It occupies 88 bytes.
  The `swc1` at 0xdad0870 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xdad0878 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdad085c calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0xdc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdad0864 targets 0xdad087c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdad0884 has v0 = ret(__glSPDlalloc).
- `__glsplc_Indexub` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad088c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad088c-0xdad08d8 (76 bytes).
  It occupies 76 bytes.
  The `sb` at 0xdad08c4 stores 1 byte to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdad08b0 calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0xdd, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdad08b8 targets 0xdad08c8, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdad08d0 has v0 = ret(__glSPDlalloc).
- `__glsplc_Indexubv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad08d8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad08d8-0xdad0928 (80 bytes).
  It occupies 80 bytes.
  The `lbu` at 0xdad0910 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `sb` at 0xdad0914 stores 1 byte to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdad08fc calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0xdd, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdad0904 targets 0xdad0918, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdad0920 has v0 = ret(__glSPDlalloc).
- `__glsplc_SampleMaskSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad0928 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad0928-0xdad0980 (88 bytes).
  It occupies 88 bytes.
  The `swc1` at 0xdad0964 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sb` at 0xdad096c stores 1 byte to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdad0950 calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0xde, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdad0958 targets 0xdad0970, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdad0978 has v0 = ret(__glSPDlalloc).
- `__glsplc_SamplePatternSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad0980 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad0980-0xdad09cc (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xdad09b8 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdad09a4 calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0xdf, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdad09ac targets 0xdad09bc, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdad09c4 has v0 = ret(__glSPDlalloc).
- `__glsplc_DetailTexFuncSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad0a08 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad0a08-0xdad0aa4 (156 bytes).
  It occupies 156 bytes.
  The `sw` at 0xdad0a74 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdad0a7c stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdad0a38 calls __glsplc_InvalidValue [0xda0cb20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=(a1 << 0x3).
  The `jalr` at 0xdad0a54 calls __glSPDlalloc [0xd976680] with a0=(a1 << 0x3)+8, a1=0xe1, a2=a2 at entry (arg2), a3=(a1 << 0x3).
  The `jalr` at 0xdad0a88 calls memcpy with a0=ret(__glSPDlalloc)+8, a1=a2 at entry (arg2), a2=?, a3=?.
  The `bgez` branch at 0xdad0a2c targets 0xdad0a48, is taken when a3(=(a1 << 0x3)) >= 0 (signed), and falls through when a3(=(a1 << 0x3)) < 0 (signed).
  The `beq` branch at 0xdad0a40 targets 0xdad0a94 and is always taken.
  The `beq` branch at 0xdad0a60 targets 0xdad0a94, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdad0a9c has v0 = one of ret(__glsplc_InvalidValue), ret(__glSPDlalloc), ret(memcpy).
- `__glsplc_SharpenTexFuncSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad0aa4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad0aa4-0xdad0b40 (156 bytes).
  It occupies 156 bytes.
  The `sw` at 0xdad0b10 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdad0b18 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdad0ad4 calls __glsplc_InvalidValue [0xda0cb20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=(a1 << 0x3).
  The `jalr` at 0xdad0af0 calls __glSPDlalloc [0xd976680] with a0=(a1 << 0x3)+8, a1=0xe2, a2=a2 at entry (arg2), a3=(a1 << 0x3).
  The `jalr` at 0xdad0b24 calls memcpy with a0=ret(__glSPDlalloc)+8, a1=a2 at entry (arg2), a2=?, a3=?.
  The `bgez` branch at 0xdad0ac8 targets 0xdad0ae4, is taken when a3(=(a1 << 0x3)) >= 0 (signed), and falls through when a3(=(a1 << 0x3)) < 0 (signed).
  The `beq` branch at 0xdad0adc targets 0xdad0b30 and is always taken.
  The `beq` branch at 0xdad0afc targets 0xdad0b30, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdad0b38 has v0 = one of ret(__glsplc_InvalidValue), ret(__glSPDlalloc), ret(memcpy).
- `__glsplc_SpriteParameterfSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad0d54 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad0d54-0xdad0dac (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xdad0d90 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xdad0d98 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdad0d7c calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0xea, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdad0d84 targets 0xdad0d9c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdad0da4 has v0 = ret(__glSPDlalloc).
- `__glsplc_SpriteParameterfvSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad0dac (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad0dac-0xdad0e44 (152 bytes).
  It occupies 152 bytes.
  The `sw` at 0xdad0e1c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdad0dcc calls __glSpriteParameterfvSGIX_size [0xda81380] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdad0de4 calls __glsplc_InvalidEnum [0xda0cb60] with a0=?, a1=?, a2=(ret(__glSpriteParameterfvSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xdad0e00 calls __glSPDlalloc [0xd976680] with a0=(ret(__glSpriteParameterfvSGIX_size) << 0x2)+4, a1=0xeb, a2=(ret(__glSpriteParameterfvSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xdad0e28 calls memcpy with a0=ret(__glSPDlalloc)+4, a1=a1 at entry (arg1), a2=?, a3=?.
  The `bgez` branch at 0xdad0dd8 targets 0xdad0df4, is taken when a2(=(ret(__glSpriteParameterfvSGIX_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glSpriteParameterfvSGIX_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xdad0dec targets 0xdad0e34 and is always taken.
  The `beq` branch at 0xdad0e0c targets 0xdad0e34, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdad0e3c has v0 = one of ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).
- `__glsplc_SpriteParameteriSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad0e44 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad0e44-0xdad0e9c (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xdad0e80 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdad0e88 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdad0e6c calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0xec, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdad0e74 targets 0xdad0e8c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdad0e94 has v0 = ret(__glSPDlalloc).
- `__glsplc_SpriteParameterivSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad0e9c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad0e9c-0xdad0f34 (152 bytes).
  It occupies 152 bytes.
  The `sw` at 0xdad0f0c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdad0ebc calls __glSpriteParameterivSGIX_size [0xda813c4] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdad0ed4 calls __glsplc_InvalidEnum [0xda0cb60] with a0=?, a1=?, a2=(ret(__glSpriteParameterivSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xdad0ef0 calls __glSPDlalloc [0xd976680] with a0=(ret(__glSpriteParameterivSGIX_size) << 0x2)+4, a1=0xed, a2=(ret(__glSpriteParameterivSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xdad0f18 calls memcpy with a0=ret(__glSPDlalloc)+4, a1=a1 at entry (arg1), a2=?, a3=?.
  The `bgez` branch at 0xdad0ec8 targets 0xdad0ee4, is taken when a2(=(ret(__glSpriteParameterivSGIX_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glSpriteParameterivSGIX_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xdad0edc targets 0xdad0f24 and is always taken.
  The `beq` branch at 0xdad0efc targets 0xdad0f24, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdad0f2c has v0 = one of ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).
- `__glsplc_PointParameterfSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad0fd8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad0fd8-0xdad1030 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xdad1014 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xdad101c stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdad1000 calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0xef, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdad1008 targets 0xdad1020, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdad1028 has v0 = ret(__glSPDlalloc).
- `__glsplc_PointParameterfvSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad1030 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad1030-0xdad10c8 (152 bytes).
  It occupies 152 bytes.
  The `sw` at 0xdad10a0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdad1050 calls __glPointParameterfvSGIS_size [0xda813f8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdad1068 calls __glsplc_InvalidEnum [0xda0cb60] with a0=?, a1=?, a2=(ret(__glPointParameterfvSGIS_size) << 0x2), a3=?.
  The `jalr` at 0xdad1084 calls __glSPDlalloc [0xd976680] with a0=(ret(__glPointParameterfvSGIS_size) << 0x2)+4, a1=0xf0, a2=(ret(__glPointParameterfvSGIS_size) << 0x2), a3=?.
  The `jalr` at 0xdad10ac calls memcpy with a0=ret(__glSPDlalloc)+4, a1=a1 at entry (arg1), a2=?, a3=?.
  The `bgez` branch at 0xdad105c targets 0xdad1078, is taken when a2(=(ret(__glPointParameterfvSGIS_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glPointParameterfvSGIS_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xdad1070 targets 0xdad10b8 and is always taken.
  The `beq` branch at 0xdad1090 targets 0xdad10b8, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdad10c0 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).
- `__glsplc_FogFuncSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad10c8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad10c8-0xdad1158 (144 bytes).
  It occupies 144 bytes.
  The `sw` at 0xdad112c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdad10f4 calls __glsplc_InvalidValue [0xda0cb20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=(a0 << 0x3), a3=a0 at entry (arg0).
  The `jalr` at 0xdad1114 calls __glSPDlalloc [0xd976680] with a0=(a0 << 0x3)+4, a1=0xf1, a2=(a0 << 0x3), a3=a0 at entry (arg0).
  The `jalr` at 0xdad113c calls memcpy with a0=ret(__glSPDlalloc)+4, a1=a1 at entry (arg1), a2=?, a3=a0 at entry (arg0).
  The `bgez` branch at 0xdad10e8 targets 0xdad1104, is taken when a2(=(a0 << 0x3)) >= 0 (signed), and falls through when a2(=(a0 << 0x3)) < 0 (signed).
  The `beq` branch at 0xdad10fc targets 0xdad1148 and is always taken.
  The `beq` branch at 0xdad1124 targets 0xdad1148, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdad1150 has v0 = one of ret(__glsplc_InvalidValue), ret(__glSPDlalloc), ret(memcpy).
- `__glsplc_StartInstrumentsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad11a4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad11a4-0xdad11e0 (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0xdad11c4 calls __glSPDlalloc [0xd976680] with a0=0x0, a1=0xf3, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdad11d8 has v0 = ret(__glSPDlalloc).
- `__glsplc_StopInstrumentsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad11e0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad11e0-0xdad122c (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xdad1218 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdad1204 calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0xf4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdad120c targets 0xdad121c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdad1224 has v0 = ret(__glSPDlalloc).
- `__glsplc_ReferencePlaneSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad122c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad122c-0xdad1298 (108 bytes).
  It occupies 108 bytes.
  The `ldc1` at 0xdad1268 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xdad126c stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `ldc1` at 0xdad1270 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sdc1` at 0xdad1274 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `ldc1` at 0xdad1278 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `sdc1` at 0xdad127c stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `ldc1` at 0xdad1280 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `sdc1` at 0xdad1284 stores 8 bytes to ret(__glSPDlalloc2) +0x18.
  The `jalr` at 0xdad1254 calls __glSPDlalloc2 [0xd97687c] with a0=0x20, a1=0xf5, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xdad1260 targets 0xdad1288, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xdad1290 has v0 = ret(__glSPDlalloc2).
- `__glsplc_FrameZoomSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad1298 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad1298-0xdad12e4 (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xdad12d0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdad12bc calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0xf6, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdad12c4 targets 0xdad12d4, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdad12dc has v0 = ret(__glSPDlalloc).
- `__glsplc_DeformSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad12e4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad12e4-0xdad1330 (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xdad131c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdad1308 calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0xf9, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdad1310 targets 0xdad1320, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdad1328 has v0 = ret(__glSPDlalloc).
- `__glsplc_LoadIdentityDeformationMapSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad1330 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad1330-0xdad137c (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xdad1368 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdad1354 calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0xfa, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdad135c targets 0xdad136c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdad1374 has v0 = ret(__glSPDlalloc).
- `__glsplc_AsyncMarkerSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad15d4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad15d4-0xdad1620 (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xdad160c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdad15f8 calls __glSPDlalloc [0xd976680] with a0=0x4, a1=0x102, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdad1600 targets 0xdad1610, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdad1618 has v0 = ret(__glSPDlalloc).
- `__glsplc_FragmentColorMaterialSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad1620 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad1620-0xdad1678 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xdad165c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdad1664 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdad1648 calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0x103, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdad1650 targets 0xdad1668, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdad1670 has v0 = ret(__glSPDlalloc).
- `__glsplc_FragmentLightfSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad1678 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad1678-0xdad16dc (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0xdad16b8 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdad16c0 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `swc1` at 0xdad16c8 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xdad16a4 calls __glSPDlalloc [0xd976680] with a0=0xc, a1=0x104, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdad16ac targets 0xdad16cc, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdad16d4 has v0 = ret(__glSPDlalloc).
- `__glsplc_FragmentLightfvSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad16dc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad16dc-0xdad1784 (168 bytes).
  It occupies 168 bytes.
  The `sw` at 0xdad1754 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdad175c stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdad1704 calls __glFragmentLightfvSGIX_size [0xda8162c] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdad171c calls __glsplc_InvalidEnum [0xda0cb60] with a0=?, a1=?, a2=(ret(__glFragmentLightfvSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xdad1738 calls __glSPDlalloc [0xd976680] with a0=(ret(__glFragmentLightfvSGIX_size) << 0x2)+8, a1=0x105, a2=(ret(__glFragmentLightfvSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xdad1768 calls memcpy with a0=ret(__glSPDlalloc)+8, a1=a2 at entry (arg2), a2=?, a3=?.
  The `bgez` branch at 0xdad1710 targets 0xdad172c, is taken when a2(=(ret(__glFragmentLightfvSGIX_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glFragmentLightfvSGIX_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xdad1724 targets 0xdad1774 and is always taken.
  The `beq` branch at 0xdad1744 targets 0xdad1774, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdad177c has v0 = one of ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).
- `__glsplc_FragmentLightiSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad1784 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad1784-0xdad17e8 (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0xdad17c4 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdad17cc stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xdad17d4 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xdad17b0 calls __glSPDlalloc [0xd976680] with a0=0xc, a1=0x106, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdad17b8 targets 0xdad17d8, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdad17e0 has v0 = ret(__glSPDlalloc).
- `__glsplc_FragmentLightivSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad17e8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad17e8-0xdad1890 (168 bytes).
  It occupies 168 bytes.
  The `sw` at 0xdad1860 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdad1868 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdad1810 calls __glFragmentLightivSGIX_size [0xda816e4] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdad1828 calls __glsplc_InvalidEnum [0xda0cb60] with a0=?, a1=?, a2=(ret(__glFragmentLightivSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xdad1844 calls __glSPDlalloc [0xd976680] with a0=(ret(__glFragmentLightivSGIX_size) << 0x2)+8, a1=0x107, a2=(ret(__glFragmentLightivSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xdad1874 calls memcpy with a0=ret(__glSPDlalloc)+8, a1=a2 at entry (arg2), a2=?, a3=?.
  The `bgez` branch at 0xdad181c targets 0xdad1838, is taken when a2(=(ret(__glFragmentLightivSGIX_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glFragmentLightivSGIX_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xdad1830 targets 0xdad1880 and is always taken.
  The `beq` branch at 0xdad1850 targets 0xdad1880, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdad1888 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).
- `__glsplc_FragmentLightModelfSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad1890 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad1890-0xdad18e8 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xdad18cc stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xdad18d4 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdad18b8 calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0x108, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdad18c0 targets 0xdad18d8, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdad18e0 has v0 = ret(__glSPDlalloc).
- `__glsplc_FragmentLightModelfvSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad18e8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad18e8-0xdad1980 (152 bytes).
  It occupies 152 bytes.
  The `sw` at 0xdad1958 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdad1908 calls __glFragmentLightModelfvSGIX_size [0xda81718] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdad1920 calls __glsplc_InvalidEnum [0xda0cb60] with a0=?, a1=?, a2=(ret(__glFragmentLightModelfvSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xdad193c calls __glSPDlalloc [0xd976680] with a0=(ret(__glFragmentLightModelfvSGIX_size) << 0x2)+4, a1=0x109, a2=(ret(__glFragmentLightModelfvSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xdad1964 calls memcpy with a0=ret(__glSPDlalloc)+4, a1=a1 at entry (arg1), a2=?, a3=?.
  The `bgez` branch at 0xdad1914 targets 0xdad1930, is taken when a2(=(ret(__glFragmentLightModelfvSGIX_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glFragmentLightModelfvSGIX_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xdad1928 targets 0xdad1970 and is always taken.
  The `beq` branch at 0xdad1948 targets 0xdad1970, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdad1978 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).

No routines were skipped (0 total); the renderer succeeded for all 500 selected targets.
