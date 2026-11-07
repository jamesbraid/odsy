# Instruction readings from hostfacts

Each entry reports selected accesses through non-stack pointers, calls and their argument slots, conditional branches, and return values from the exact binary build named in its header. Every claim cites its instruction address. These are software observations, graded Inferred; they do not establish hardware behaviour.

- `gfP_OdsyCompositorRegAccess` in `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_compositor.o)` at 0xa5c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_compositor.o)`.
  Range: 0xa5c-0xb78 (284 bytes).
  It occupies 284 bytes.
  The `ld` at 0xa7c loads 8 bytes from a0 (arg0 at entry) +0x28.
  5 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0xac8, `sw` at 0xb04, `sw` at 0xb3c.
  The `jal` at 0xa84 calls copyin with a0=a2 at entry (arg2), a1=sp-48, a2=0xc, a3=a3 at entry (arg3).
  The `jal` at 0xaa8 calls odsyCompositorRegRead with a0=[a0+40]:8, a1=?, a2=?, a3=sp-44.
  The `jal` at 0xac4 calls copyout with a0=sp-48, a1=a2 at entry (arg2), a2=0xc, a3=?.
  The `jal` at 0xaf0 calls odsyCompositorRegWrite with a0=[a0+40]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xb10 calls copyout with a0=sp-48, a1=a2 at entry (arg2), a2=0xc, a3=?.
  The `jal` at 0xb2c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0xb48 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0xb64 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0xa8c targets 0xb28, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `beq` branch at 0xa9c targets 0xaec, is taken when (a1(?) & 0x1) == 0, and falls through when (a1(?) & 0x1) != 0.
  The `beq` branch at 0xab0 targets 0xb08, is taken when v0(=ret(odsyCompositorRegRead)) == 0, and falls through when v0(=ret(odsyCompositorRegRead)) != 0.
  The `bne` branch at 0xacc targets 0xb40, is taken when v0(=ret(copyout)) != 0, and falls through when v0(=ret(copyout)) == 0.
  The `beq` branch at 0xaf8 targets 0xad0, is taken when v0(=ret(odsyCompositorRegWrite)) == 0, and falls through when v0(=ret(odsyCompositorRegWrite)) != 0.
  The `beq` branch at 0xb00 targets 0xad0 and is always taken.
  The `bne` branch at 0xb18 targets 0xb5c, is taken when v0(=ret(copyout)) != 0, and falls through when v0(=ret(copyout)) == 0.
  The `beq` branch at 0xb20 targets 0xad4 and is always taken.
  The `beq` branch at 0xb38 targets 0xad4 and is always taken.
  The `beq` branch at 0xb54 targets 0xad4 and is always taken.
  The `beq` branch at 0xb70 targets 0xad4 and is always taken.
  The return at 0xae4 has v0 = one of ret(odsyCompositorRegRead), ?, 0x0, 0xe.
- `gfP_OdsyI2CPassthrough` in `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_compositor.o)` at 0xb78 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_compositor.o)`.
  Range: 0xb78-0xd34 (444 bytes).
  It occupies 444 bytes.
  The `ld` at 0xb94 loads 8 bytes from a0 (arg0 at entry) +0x28.
  2 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0xbc4, `sw` at 0xca8.
  4 such `lw` accesses load 4 bytes from [a0+40]:8 +0xb424, including `lw` at 0xbd0, `lw` at 0xc88, `lw` at 0xce4.
  2 such `ld` accesses load 8 bytes from [a0+40]:8 +0xb418, including `ld` at 0xbd8, `ld` at 0xc90.
  2 such `sb` accesses store 1 byte to [a0+40]:8 +0xb428, including `sb` at 0xc08, `sb` at 0xcd0.
  2 such `sh` accesses store 2 bytes to [a0+40]:8 +0xb434, including `sh` at 0xc4c, `sh` at 0xcdc.
  The `jal` at 0xb9c calls copyin with a0=a2 at entry (arg2), a1=sp-64, a2=0x8, a3=a3 at entry (arg3).
  The `jal` at 0xbb4 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0xbe4 calls mutex_lock with a0=[[a0+40]:8+46104]:8+34080, a1=0x19, a2=[[a0+40]:8+46116], a3=?.
  The `jal` at 0xbfc calls mutex_lock with a0=[[a0+40]:8+46104]:8+34064, a1=0x19, a2=[[a0+40]:8+46116], a3=?.
  The `jal` at 0xc1c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0xc48 calls odsy_i2cDDCRegRead with a0=[a0+40]:8+46088, a1=0x5, a2=sp-56, a3=?.
  The `jal` at 0xc64 calls odsy_i2cPLLRegWrite with a0=[a0+40]:8+46088, a1=0x0, a2=0x20, a3=?.
  The `jal` at 0xc80 calls odsy_i2cPLLRegWrite with a0=[a0+40]:8+46088, a1=0x5, a2=?, a3=?.
  The `jal` at 0xc98 calls mutex_unlock with a0=[[a0+40]:8+46104]:8+34080, a1=?, a2=?, a3=[[a0+40]:8+46116].
  The `jal` at 0xcd8 calls odsy_i2cPLLRegWrite with a0=[a0+40]:8+46088, a1=0x0, a2=0x30, a3=0x1f.
  The `jal` at 0xcf0 calls odsy_i2cPLLRegWrite with a0=[a0+40]:8+46088, a1=0x0, a2=0x10, a3=?.
  The `jal` at 0xd10 calls odsy_i2cPLLRegWrite with a0=[a0+40]:8+46088, a1=0x5, a2=?, a3=-0x21.
  The `jal` at 0xd24 calls mutex_unlock with a0=[[a0+40]:8+46104]:8+34064, a1=?, a2=?, a3=[[a0+40]:8+46116].
  The `beq` branch at 0xba4 targets 0xbc8, is taken when v0(=ret(copyin)) == 0, and falls through when v0(=ret(copyin)) != 0.
  The `beq` branch at 0xbc0 targets 0xcb0 and is always taken.
  The `beq` branch at 0xbd4 targets 0xbf4, is taken when a2(=[[a0+40]:8+46116]) == 0, and falls through when a2(=[[a0+40]:8+46116]) != 0.
  The `beq` branch at 0xbec targets 0xc04 and is always taken.
  The `beq` branch at 0xc30 targets 0xcc4, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0xc54 targets 0xce8, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0xc8c targets 0xd20, is taken when a3(=[[a0+40]:8+46116]) == 0, and falls through when a3(=[[a0+40]:8+46116]) != 0.
  The `beq` branch at 0xce0 targets 0xc8c and is always taken.
  The `beq` branch at 0xd18 targets 0xc8c and is always taken.
  The `beq` branch at 0xd2c targets 0xca4 and is always taken.
  The return at 0xcbc has v0 = one of 0x0, 0xe.
- `gfP_OdsyHPgetTopology` in `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` at 0x618 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`.
  Range: 0x618-0x6b0 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0x644 loads 4 bytes from [sym(OdsyHpipeState)]:8 +0x0.
  The `sw` at 0x668 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lw` at 0x680 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `jal` at 0x62c calls mutex_spinlock with a0=sym(odsy_hpipe_state_lock), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x658 calls copyout with a0=[sym(OdsyHpipeState)]:8+4360, a1=a2 at entry (arg2), a2=0x184, a3=[sym(OdsyHpipeState)]:8.
  The `jal` at 0x670 calls mutex_spinunlock with a0=sym(odsy_hpipe_state_lock), a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x690 calls odsy_hpipe_discover with a0=?, a1=?, a2=?, a3=[sym(OdsyHpipeState)]:8.
  The `beq` branch at 0x63c targets 0x690, is taken when a3(=[sym(OdsyHpipeState)]:8) == 0, and falls through when a3(=[sym(OdsyHpipeState)]:8) != 0.
  The `beq` branch at 0x648 targets 0x690, is taken when at(=[[sym(OdsyHpipeState)]:8]) == 0, and falls through when at(=[[sym(OdsyHpipeState)]:8]) != 0.
  The `bne` branch at 0x6a0 targets 0x668, is taken when s0(=one of 0x0, 0x16) != 0, and falls through when s0(=one of 0x0, 0x16) == 0.
  The `beq` branch at 0x6a8 targets 0x654 and is always taken.
  The return at 0x688 has v0 = [a3].
- `gfP_OdsyHPqueryBestAttrib` in `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` at 0x1728 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`.
  Range: 0x1728-0x17f4 (204 bytes).
  It occupies 204 bytes.
  4 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x1768, `sw` at 0x1790, `sw` at 0x17d4.
  The `lw` at 0x17a0 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `jal` at 0x1740 calls copyin with a0=a2 at entry (arg2), a1=sp-64, a2=0x20, a3=a3 at entry (arg3).
  The `jal` at 0x1754 calls kmem_alloc with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0x177c calls copyin with a0=?, a1=ret(kmem_alloc), a2=?, a3=?.
  The `jal` at 0x1798 calls kmem_free with a0=ret(kmem_alloc), a1=?, a2=?, a3=?.
  The `jal` at 0x17bc calls copyout with a0=?, a1=ret(kmem_alloc), a2=?, a3=?.
  The `jal` at 0x17e0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0x1748 targets 0x17d8, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `bne` branch at 0x1760 targets 0x1774, is taken when v0(=ret(kmem_alloc)) != 0, and falls through when v0(=ret(kmem_alloc)) == 0.
  The `beq` branch at 0x176c targets 0x17a4 and is always taken.
  The `beq` branch at 0x1784 targets 0x17b8, is taken when v0(=ret(copyin)) == 0, and falls through when v0(=ret(copyin)) != 0.
  The `beq` branch at 0x17c4 targets 0x1798, is taken when v0(=ret(copyout)) == 0, and falls through when v0(=ret(copyout)) != 0.
  The `beq` branch at 0x17d0 targets 0x1794 and is always taken.
  The `beq` branch at 0x17ec targets 0x17a4 and is always taken.
  The return at 0x17b0 has v0 = one of 0xc, [a3], 0xe.
- `gf_OdsyInfo` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy.o)`.
  Range: 0x0-0x5c (92 bytes).
  It occupies 92 bytes.
  The `sw` at 0x58 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `jal` at 0x2c calls copyout with a0=a0+200, a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3).
  The `beq` branch at 0x34 targets 0x48, is taken when v0(=ret(copyout)) == 0, and falls through when v0(=ret(copyout)) != 0.
  The `beq` branch at 0x54 targets 0x40 and is always taken.
  The return at 0x40 has v0 = one of 0x0, 0xe.
- `gfP_OdsyInvalidIoctl` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy.o)` at 0x5c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy.o)`.
  Range: 0x5c-0x80 (36 bytes).
  It occupies 36 bytes.
  The `jal` at 0x68 calls cmn_err with a0=0x5, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x78 has v0 = 0x16.
- `gf_OdsyPrivate` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy.o)` at 0x80 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy.o)`.
  Range: 0x80-0xfc (124 bytes).
  It occupies 124 bytes.
  The `ld` at 0xc0 loads 8 bytes from ?.
  The `jalr` at 0xc8 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a3 at entry (arg3), a3=a4 at entry (arg4).
  The `jal` at 0xe8 calls cmn_err with a0=0x5, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x98 targets 0xdc, is taken when at(?) != v1(=0x6f640000), and falls through when at(?) == v1(=0x6f640000).
  The `beq` branch at 0xa4 targets 0xdc, is taken when a7(?) >= 0x2f (signed), and falls through when a7(?) < 0x2f (signed).
  The `beq` branch at 0xf4 targets 0xd4 and is always taken.
  The return at 0xd4 has v0 = one of ret(?), 0x16.
- `odsyGctxFromRnid` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy.o)` at 0xfc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy.o)`.
  Range: 0xfc-0x158 (92 bytes).
  It occupies 92 bytes.
  The `ld` at 0x12c loads 8 bytes from ?.
  The `jal` at 0x144 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `blez` branch at 0x100 targets 0x138, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `bne` branch at 0x10c targets 0x138, is taken when at(=[sym(rrm_maxrn)]) < a0 (signed), and falls through when at(=[sym(rrm_maxrn)]) >= a0 (signed).
  The `beq` branch at 0x150 targets 0x130 and is always taken.
  The return at 0x130 has v0 = one of ?, 0x0.
- `OdsyInitCSet` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Range: 0x0-0x28 (40 bytes).
  It occupies 40 bytes.
  The `sw` at 0x0 stores 4 bytes to a0 (arg0 at entry) +0x20.
  The `sw` at 0x4 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0x8 stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `sd` at 0x18 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `jal` at 0x14 calls OdsyInitCSetCursor with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x20 has v0 = ret(OdsyInitCSetCursor).
- `OdsyDestroyCSet` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)` at 0x28 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Range: 0x28-0x130 (264 bytes).
  It occupies 264 bytes.
  The `lw` at 0x28 loads 4 bytes from a0 (arg0 at entry) +0x20.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x3c, `lw` at 0x94.
  The `ld` at 0x50 loads 8 bytes from a0 (arg0 at entry) +0x0.
  4 such `ld` accesses load 8 bytes from ?, including `ld` at 0x90, `ld` at 0xa4, `ld` at 0xcc.
  The `jal` at 0x7c calls kmem_free with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x8c calls kmem_free with a0=?, a1=0x20, a2=?, a3=?.
  The `jalr` at 0xc4 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x118 calls OdsyInitCSet with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `blez` branch at 0x54 targets 0x108, is taken when at(=[a0+16]) <= 0 (signed), and falls through when at(=[a0+16]) > 0 (signed).
  The `beq` branch at 0x74 targets 0xa4 and is always taken.
  The `beq` branch at 0x9c targets 0xfc, is taken when s2(?) >= at(=[a0+16]) (signed), and falls through when s2(?) < at(=[a0+16]) (signed).
  The `beq` branch at 0xac targets 0x84, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `blez` branch at 0xb4 targets 0x7c, is taken when s4(?) <= 0 (signed), and falls through when s4(?) > 0 (signed).
  The `beq` branch at 0xbc targets 0xdc and is always taken.
  The `beq` branch at 0xd4 targets 0x7c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xe4 targets 0xd0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0xec targets 0xd4, is taken when s0(=a1) == 0, and falls through when s0(=a1) != 0.
  The `beq` branch at 0xf4 targets 0xc4 and is always taken.
  The return at 0x128 has v0 = ret(OdsyInitCSet).
- `OdsyInitCSetCursor` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)` at 0x130 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Range: 0x130-0x144 (20 bytes).
  It occupies 20 bytes.
  The `sw` at 0x130 stores 4 bytes to a0 (arg0 at entry) +0x1c.
  The `sw` at 0x134 stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `ld` at 0x138 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sd` at 0x140 stores 8 bytes to a0 (arg0 at entry) +0x8.
  The return at 0x13c has v0 = ?.
- `OdsyNextCSetElem` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)` at 0x144 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Range: 0x144-0x234 (240 bytes).
  It occupies 240 bytes.
  The `ld` at 0x144 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x154 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0x160 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `lw` at 0x16c loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `lw` at 0x170 loads 4 bytes from a0 (arg0 at entry) +0x18.
  5 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x18, including `sw` at 0x188, `sw` at 0x1c0, `sw` at 0x1c4.
  The `lw` at 0x18c loads 4 bytes from ?.
  5 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1a0, `ld` at 0x1ac, `ld` at 0x1cc.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0x1c8, `ld` at 0x214.
  3 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x8, including `sd` at 0x1d4, `sd` at 0x210, `sd` at 0x230.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x1c, including `sw` at 0x1d8, `sw` at 0x1e4.
  The `beq` branch at 0x14c targets 0x1e4, is taken when v0(=[a0+8]:8) == 0, and falls through when v0(=[a0+8]:8) != 0.
  The `bne` branch at 0x158 targets 0x1e4, is taken when at(=[a0+28]) != 0, and falls through when at(=[a0+28]) == 0.
  The `beq` branch at 0x164 targets 0x1e4, is taken when v1(=[a0+20]) == 0, and falls through when v1(=[a0+20]) != 0.
  The `beq` branch at 0x190 targets 0x228, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x198 targets 0x204, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x1b0 targets 0x1f4, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x1bc targets 0x1dc, is taken when v1(?) != a5(?), and falls through when v1(?) == a5(?).
  The `bne` branch at 0x1d0 targets 0x1dc, is taken when a2(=[a0]:8) != a1(?), and falls through when a2(=[a0]:8) == a1(?).
  The `bne` branch at 0x1fc targets 0x1a0, is taken when a3(?) < a5(?) (signed), and falls through when a3(?) >= a5(?) (signed).
  The `bne` branch at 0x218 targets 0x18c, is taken when v1(=[a0]:8) != v0(?), and falls through when v1(=[a0]:8) == v0(?).
  The `beq` branch at 0x22c targets 0x214 and is always taken.
  The return at 0x1dc has v0 = ?.
  The return at 0x1ec has v0 = 0x0.
  The return at 0x220 has v0 = ?.
- `OdsyFindMatchingCSetElem` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)` at 0x234 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Range: 0x234-0x35c (296 bytes).
  It occupies 296 bytes.
  The `lw` at 0x23c loads 4 bytes from a0 (arg0 at entry) +0x20.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x26c, `lw` at 0x29c.
  The `ld` at 0x278 loads 8 bytes from a0 (arg0 at entry) +0x0.
  4 such `ld` accesses load 8 bytes from ?, including `ld` at 0x2a8, `ld` at 0x2c8, `ld` at 0x2e4.
  The `lw` at 0x2ac loads 4 bytes from ?.
  The `jalr` at 0x2cc calls (unknown callee) with a0=?, a1=a1 at entry (arg1), a2=?, a3=?.
  The `beq` branch at 0x254 targets 0x354, is taken when a5(=[a0+32]) == 0, and falls through when a5(=[a0+32]) != 0.
  The `blez` branch at 0x27c targets 0x304, is taken when v0(=[a0+16]) <= 0 (signed), and falls through when v0(=[a0+16]) > 0 (signed).
  The `beq` branch at 0x294 targets 0x2ac and is always taken.
  The `beq` branch at 0x2a4 targets 0x304, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x2b4 targets 0x2a0, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `blez` branch at 0x2bc targets 0x2a4, is taken when s5(?) <= 0 (signed), and falls through when s5(?) > 0 (signed).
  The `beq` branch at 0x2c4 targets 0x2e8 and is always taken.
  The `beq` branch at 0x2d4 targets 0x334, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x2dc targets 0x29c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x2f4 targets 0x2d8, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x2fc targets 0x2cc and is always taken.
  The `beq` branch at 0x34c targets 0x320 and is always taken.
  The `beq` branch at 0x354 targets 0x324 and is always taken.
  The return at 0x32c has v0 = one of ?, 0x0.
- `NewChunkNode` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)` at 0x35c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Range: 0x35c-0x3a0 (68 bytes).
  It occupies 68 bytes.
  The `jal` at 0x368 calls kmem_alloc with a0=0x20, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x38c calls bzero with a0=ret(kmem_alloc), a1=0x20, a2=?, a3=?.
  The `bne` branch at 0x374 targets 0x388, is taken when v0(=ret(kmem_alloc)) != 0, and falls through when v0(=ret(kmem_alloc)) == 0.
  The `beq` branch at 0x398 targets 0x380 and is always taken.
  The return at 0x380 has v0 = one of 0x0, ret(kmem_alloc).
- `OdsyAllocSpecificCSetId` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)` at 0x3a0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Range: 0x3a0-0x56c (460 bytes).
  It occupies 460 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x20, including `lw` at 0x3ac, `lw` at 0x4c8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x3dc, `lw` at 0x4b4.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0x410, `ld` at 0x490, `ld` at 0x49c.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x438, `ld` at 0x44c.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x43c, `lw` at 0x460.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0x45c, `sd` at 0x52c.
  The `sw` at 0x468 stores 4 bytes to ?.
  The `lw` at 0x470 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `sw` at 0x47c stores 4 bytes to a0 (arg0 at entry) +0x14.
  2 such `sd` accesses store 8 bytes to ret(NewChunkNode) +0x10, including `sd` at 0x48c, `sd` at 0x4e8.
  The `ld` at 0x494 loads 8 bytes from [a0]:8 +0x18.
  2 such `sd` accesses store 8 bytes to ret(NewChunkNode) +0x18, including `sd` at 0x498, `sd` at 0x4e4.
  The `sd` at 0x4a0 stores 8 bytes to [a0]:8 +0x18.
  The `ld` at 0x4a4 loads 8 bytes from ret(NewChunkNode) +0x18.
  The `sd` at 0x4a8 stores 8 bytes to [ret(NewChunkNode)+24]:8 +0x10.
  The `sw` at 0x4ac stores 4 bytes to ret(NewChunkNode) +0x8.
  The `sw` at 0x4c0 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sd` at 0x4f0 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `jal` at 0x4c4 calls NewChunkNode with a0=[a0+32], a1=?, a2=?, a3=?.
  The `jal` at 0x524 calls kmem_alloc with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0x55c calls bzero with a0=ret(kmem_alloc), a1=?, a2=?, a3=?.
  The `beq` branch at 0x3d4 targets 0x548, is taken when at(=[a0+32]) == 0, and falls through when at(=[a0+32]) != 0.
  The `bne` branch at 0x3f4 targets 0x410, is taken when s2(?) < v0(=[a0+16]) (signed), and falls through when s2(?) >= v0(=[a0+16]) (signed).
  The `blez` branch at 0x400 targets 0x410, is taken when s4(?) <= 0 (signed), and falls through when s4(?) > 0 (signed).
  The `beq` branch at 0x408 targets 0x4c4 and is always taken.
  The `blez` branch at 0x41c targets 0x43c, is taken when s2(?) <= 0 (signed), and falls through when s2(?) > 0 (signed).
  The `bne` branch at 0x434 targets 0x42c, is taken when v0(?) < s2(?) (signed), and falls through when v0(?) >= s2(?) (signed).
  The `beq` branch at 0x440 targets 0x510, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x4bc targets 0x410, is taken when s1(?) >= s4(?) (signed), and falls through when s1(?) < s4(?) (signed).
  The `beq` branch at 0x4cc targets 0x4f4, is taken when v0(=ret(NewChunkNode)) == 0, and falls through when v0(=ret(NewChunkNode)) != 0.
  The `bne` branch at 0x4dc targets 0x48c, is taken when a0(=[a0]:8) != 0, and falls through when a0(=[a0]:8) == 0.
  The `beq` branch at 0x4ec targets 0x4ac and is always taken.
  The `beq` branch at 0x508 targets 0x484 and is always taken.
  The `bne` branch at 0x530 targets 0x558, is taken when v0(=ret(kmem_alloc)) != 0, and falls through when v0(=ret(kmem_alloc)) == 0.
  The `beq` branch at 0x540 targets 0x484 and is always taken.
  The `beq` branch at 0x550 targets 0x484 and is always taken.
  The `beq` branch at 0x564 targets 0x448 and is always taken.
  The return at 0x484 has v0 = one of a1, -0x1.
- `OdsyAllocCSetId` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)` at 0x56c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Range: 0x56c-0x7cc (608 bytes).
  It occupies 608 bytes.
  The `lw` at 0x574 loads 4 bytes from a0 (arg0 at entry) +0x20.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x590, `lw` at 0x5c8, `lw` at 0x624.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0x5a8, `ld` at 0x6e0, `ld` at 0x708.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x5d8, `ld` at 0x5fc, `ld` at 0x608.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x5dc, `lw` at 0x63c.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0x630, `sd` at 0x754.
  The `sw` at 0x648 stores 4 bytes to ?.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x14, including `lw` at 0x650, `lw` at 0x6e4.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14, including `sw` at 0x65c, `sw` at 0x6f4.
  The `sd` at 0x6bc stores 8 bytes to ret(NewChunkNode) +0x0.
  The `sw` at 0x6d8 stores 4 bytes to ret(NewChunkNode) +0x8.
  The `sw` at 0x6ec stores 4 bytes to a0 (arg0 at entry) +0x10.
  2 such `sd` accesses store 8 bytes to ret(NewChunkNode) +0x10, including `sd` at 0x704, `sd` at 0x79c.
  The `ld` at 0x70c loads 8 bytes from [a0]:8 +0x18.
  2 such `sd` accesses store 8 bytes to ret(NewChunkNode) +0x18, including `sd` at 0x710, `sd` at 0x798.
  The `sd` at 0x718 stores 8 bytes to [a0]:8 +0x18.
  The `ld` at 0x71c loads 8 bytes from ret(NewChunkNode) +0x18.
  The `sd` at 0x720 stores 8 bytes to [ret(NewChunkNode)+24]:8 +0x10.
  The `ld` at 0x72c loads 8 bytes from ret(NewChunkNode) +0x0.
  The `sd` at 0x734 stores 8 bytes to [ret(NewChunkNode)]:8 +0x0.
  The `sd` at 0x7a4 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `jal` at 0x670 calls NewChunkNode with a0=[a0+32], a1=?, a2=?, a3=?.
  The `jal` at 0x6b4 calls kmem_alloc with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0x6cc calls bzero with a0=ret(kmem_alloc), a1=?, a2=?, a3=?.
  The `jal` at 0x748 calls kmem_alloc with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0x75c calls bzero with a0=ret(kmem_alloc), a1=?, a2=?, a3=?.
  The `jal` at 0x780 calls kmem_free with a0=ret(NewChunkNode), a1=0x20, a2=?, a3=?.
  The `beq` branch at 0x584 targets 0x76c, is taken when s1(=[a0+32]) == 0, and falls through when s1(=[a0+32]) != 0.
  The `blez` branch at 0x5b0 targets 0x66c, is taken when a0(=[a0+16]) <= 0 (signed), and falls through when a0(=[a0+16]) > 0 (signed).
  The `beq` branch at 0x5c0 targets 0x5dc and is always taken.
  The `beq` branch at 0x5d4 targets 0x66c, is taken when s4(?) >= a0(=[a0+16]) (signed), and falls through when s4(?) < a0(=[a0+16]) (signed).
  The `beq` branch at 0x5e4 targets 0x5cc, is taken when v0(?) == s3(?), and falls through when v0(?) != s3(?).
  The `beq` branch at 0x5ec targets 0x744, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `blez` branch at 0x5f4 targets 0x5c8, is taken when s3(?) <= 0 (signed), and falls through when s3(?) > 0 (signed).
  The `beq` branch at 0x610 targets 0x628, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x618 targets 0x600, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x620 targets 0x5cc and is always taken.
  The `bne` branch at 0x688 targets 0x6a4, is taken when v0(=ret(NewChunkNode)) != 0, and falls through when v0(=ret(NewChunkNode)) == 0.
  The `beq` branch at 0x69c targets 0x664 and is always taken.
  The `beq` branch at 0x6c0 targets 0x778, is taken when v0(=ret(kmem_alloc)) == 0, and falls through when v0(=ret(kmem_alloc)) != 0.
  The `beq` branch at 0x6fc targets 0x798, is taken when v0(=[a0]:8) == 0, and falls through when v0(=[a0]:8) != 0.
  The `beq` branch at 0x73c targets 0x664 and is always taken.
  The `beq` branch at 0x750 targets 0x7a8, is taken when v0(=ret(kmem_alloc)) == 0, and falls through when v0(=ret(kmem_alloc)) != 0.
  The `beq` branch at 0x764 targets 0x5f4 and is always taken.
  The `beq` branch at 0x770 targets 0x664 and is always taken.
  The `beq` branch at 0x790 targets 0x664 and is always taken.
  The `beq` branch at 0x7a0 targets 0x724 and is always taken.
  The `beq` branch at 0x7c4 targets 0x664 and is always taken.
  The return at 0x664 has v0 = one of ?, -0x1, [a0+20].
- `OdsyDeallocCSetId` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)` at 0x7cc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Range: 0x7cc-0x870 (164 bytes).
  It occupies 164 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x20, including `lw` at 0x7cc, `lw` at 0x84c.
  The `ld` at 0x7e8 loads 8 bytes from a0 (arg0 at entry) +0x0.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x7f8, `ld` at 0x808, `ld` at 0x858.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0x818, `sd` at 0x864.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x81c, `lw` at 0x834.
  The `sw` at 0x824 stores 4 bytes to ?.
  The `lw` at 0x828 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `sw` at 0x830 stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `jal` at 0x85c calls kmem_free with a0=?, a1=?, a2=?, a3=0x1, a5=a0 at entry (arg0), a6=[a0+32].
  The `blez` branch at 0x7e4 targets 0x7fc, is taken when a4(?) <= 0 (signed), and falls through when a4(?) > 0 (signed).
  The `bne` branch at 0x7f4 targets 0x7ec, is taken when a3(?) < a4(?) (signed), and falls through when a3(?) >= a4(?) (signed).
  The `beq` branch at 0x838 targets 0x84c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x868 targets 0x840 and is always taken.
  The return at 0x844 has v0 = one of ?, ret(kmem_free).
- `OdsyLookupCSetId` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)` at 0x870 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Range: 0x870-0x968 (248 bytes).
  It occupies 248 bytes.
  The `lw` at 0x870 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0x884 loads 8 bytes from a0 (arg0 at entry) +0x0.
  7 such `ld` accesses load 8 bytes from ?, including `ld` at 0x894, `ld` at 0x8b0, `ld` at 0x8d4.
  The `beq` branch at 0x878 targets 0x95c, is taken when a5(=[a0+32]) == 0, and falls through when a5(=[a0+32]) != 0.
  The `blez` branch at 0x880 targets 0x918, is taken when a6(?) <= 0 (signed), and falls through when a6(?) > 0 (signed).
  The `beq` branch at 0x888 targets 0x94c, is taken when v0(=[a0]:8) == 0, and falls through when v0(=[a0]:8) != 0.
  The `beq` branch at 0x8a0 targets 0x918, is taken when a4(?) >= a6(?) (signed), and falls through when a4(?) < a6(?) (signed).
  The `beq` branch at 0x8a8 targets 0x918, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x8c4 targets 0x918, is taken when a4(?) >= a6(?) (signed), and falls through when a4(?) < a6(?) (signed).
  The `beq` branch at 0x8cc targets 0x918, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x8d8 targets 0x918, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x8e0 targets 0x918, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x8f4 targets 0x918, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x8fc targets 0x918, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x908 targets 0x918, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x910 targets 0x894, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x918 targets 0x94c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x930 targets 0x954, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The return at 0x944 has v0 = ?.
  The return at 0x94c has v0 = 0x0.
  The return at 0x954 has v0 = 0x0.
  The return at 0x960 has v0 = 0x0.
- `OdsyInit32kSlotMask` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)` at 0x968 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Range: 0x968-0x9a0 (56 bytes).
  It occupies 56 bytes.
  The `sw` at 0x984 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sd` at 0x990 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `jal` at 0x97c calls bzero with a0=a0 at entry (arg0), a1=0x1010, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x998 has v0 = ret(bzero).
- `OdsyAlloc32kSlot` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)` at 0x9a0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Range: 0x9a0-0xad8 (312 bytes).
  It occupies 312 bytes.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0x9a0, `ld` at 0xa30, `ld` at 0xa5c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x9c8, `lw` at 0xa80.
  The `ld` at 0x9e8 loads 8 bytes from (([a0+8] << 0x3) + a0) +0x10.
  The `sd` at 0xa20 stores 8 bytes to (([a0+8] << 0x3) + a0) +0x10.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x8, including `sw` at 0xa94, `sw` at 0xab8.
  The `ld` at 0xaa0 loads 8 bytes from (([a0+8]+1 << 0x3) + a0) +0x10.
  The `ld` at 0xac4 loads 8 bytes from ?.
  The `jal` at 0x9bc calls psema with a0=[a0]:8, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa40 calls vsema with a0=[a0]:8, a1=?, a2=?, a3=[(([a0+8] << 0x3) + a0)+16]:8, a5=(([a0+8] << 0x3) + a0).
  The `jal` at 0xa6c calls vsema with a0=[a0]:8, a1=?, a2=?, a3=?, a4=[a0+8].
  The `beq` branch at 0x9ac targets 0x9c8, is taken when v0(=[a0]:8) == 0, and falls through when v0(=[a0]:8) != 0.
  The `beq` branch at 0x9d0 targets 0xa5c, is taken when a4(=[a0+8]) >= 0x200 (signed), and falls through when a4(=[a0+8]) < 0x200 (signed).
  The `bltz` branch at 0x9d8 targets 0xa5c, is taken when a4(=[a0+8]) < 0 (signed), and falls through when a4(=[a0+8]) >= 0 (signed).
  The `beq` branch at 0x9f4 targets 0xa18, is taken when (a3(=[(([a0+8] << 0x3) + a0)+16]:8) & 0x1) == 0, and falls through when (a3(=[(([a0+8] << 0x3) + a0)+16]:8) & 0x1) != 0.
  The `beq` branch at 0xa04 targets 0xa18, is taken when (a3(=[(([a0+8] << 0x3) + a0)+16]:8) & a0(?)) == 0, and falls through when (a3(=[(([a0+8] << 0x3) + a0)+16]:8) & a0(?)) != 0.
  The `bne` branch at 0xa10 targets 0x9fc, is taken when v0(?) < 0x40 (signed), and falls through when v0(?) >= 0x40 (signed).
  The `beq` branch at 0xa28 targets 0xa80, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0xa34 targets 0xa4c, is taken when v0(=[a0]:8) == 0, and falls through when v0(=[a0]:8) != 0.
  The `beq` branch at 0xa60 targets 0xa78, is taken when v0(=[a0]:8) == 0, and falls through when v0(=[a0]:8) != 0.
  The `beq` branch at 0xa78 targets 0xa50 and is always taken.
  The `beq` branch at 0xa98 targets 0xa30, is taken when a4(=[a0+8]+1) >= 0x200 (signed), and falls through when a4(=[a0+8]+1) < 0x200 (signed).
  The `bne` branch at 0xaa4 targets 0xa30, is taken when at(=[(([a0+8]+1 << 0x3) + a0)+16]:8) != v0(=-0x1), and falls through when at(=[(([a0+8]+1 << 0x3) + a0)+16]:8) == v0(=-0x1).
  The `beq` branch at 0xabc targets 0xad0, is taken when a4(?) >= 0x200 (signed), and falls through when a4(?) < 0x200 (signed).
  The `beq` branch at 0xac8 targets 0xab0, is taken when a1(?) == v0(=-0x1), and falls through when a1(?) != v0(=-0x1).
  The `beq` branch at 0xad0 targets 0xa34 and is always taken.
  The return at 0xa54 has v0 = one of ?, -0x1.
- `OdsyFree32kSlot` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)` at 0xad8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Range: 0xad8-0xbc8 (240 bytes).
  It occupies 240 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0xb04, `ld` at 0xb60.
  The `ld` at 0xb34 loads 8 bytes from ?.
  The `sd` at 0xb40 stores 8 bytes to ?.
  The `lw` at 0xb44 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xb5c stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0xb14 calls psema with a0=[a0]:8, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xb70 calls vsema with a0=[a0]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xb94 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xbb8 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xae8 targets 0xb84, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0xafc targets 0xba4, is taken when at(?) >= 0x200 (unsigned), and falls through when at(?) < 0x200 (unsigned).
  The `beq` branch at 0xb08 targets 0xb24, is taken when a0(=[a0]:8) == 0, and falls through when a0(=[a0]:8) != 0.
  The `beq` branch at 0xb4c targets 0xb60, is taken when v0(?) >= v1(=[a0+8]) (signed), and falls through when v0(?) < v1(=[a0+8]) (signed).
  The `beq` branch at 0xb64 targets 0xb7c, is taken when a0(=[a0]:8) == 0, and falls through when a0(=[a0]:8) != 0.
  The `beq` branch at 0xb9c targets 0xb7c and is always taken.
  The `beq` branch at 0xbc0 targets 0xb7c and is always taken.
  The return at 0xb7c has v0 = one of ?, ret(vsema), ret(cmn_err).
- `odsyHashAlloc` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)` at 0xbc8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Range: 0xbc8-0xc38 (112 bytes).
  It occupies 112 bytes.
  The `sw` at 0xc00 stores 4 bytes to ret(kmem_alloc) +0x0.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0xc20, `sd` at 0xc28.
  The `jal` at 0xbe8 calls kmem_alloc with a0=?, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xbf4 targets 0xc2c, is taken when v0(=ret(kmem_alloc)) == 0, and falls through when v0(=ret(kmem_alloc)) != 0.
  The `blez` branch at 0xbfc targets 0xc2c, is taken when s0(=a0) <= 0 (signed), and falls through when s0(=a0) > 0 (signed).
  The `bne` branch at 0xc24 targets 0xc04, is taken when a0(?) < s0(=a0) (signed), and falls through when a0(?) >= s0(=a0) (signed).
  The return at 0xc30 has v0 = ret(kmem_alloc).
- `odsyHashDealloc` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)` at 0xc38 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Range: 0xc38-0xc64 (44 bytes).
  It occupies 44 bytes.
  The `lw` at 0xc38 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jal` at 0xc50 calls kmem_free with a0=a0 at entry (arg0), a1=?, a2=[a0], a3=a3 at entry (arg3).
  The return at 0xc5c has v0 = ret(kmem_free).
- `odsyHashLookup` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)` at 0xc64 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Range: 0xc64-0xcb0 (76 bytes).
  It occupies 76 bytes.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0xc74, `ld` at 0xc90.
  The `lw` at 0xc84 loads 4 bytes from ?.
  The `beq` branch at 0xc7c targets 0xc9c, is taken when v0(?) == a5(?), and falls through when v0(?) != a5(?).
  The `beq` branch at 0xc88 targets 0xca8, is taken when v1(?) == a2, and falls through when v1(?) != a2.
  The `bne` branch at 0xc94 targets 0xc84, is taken when v0(?) != a5(?), and falls through when v0(?) == a5(?).
  The return at 0xca0 has v0 = 0x0.
  The return at 0xca8 has v0 = ?.
- `odsyHashInsert` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)` at 0xcb0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Range: 0xcb0-0xce0 (48 bytes).
  It occupies 48 bytes.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0xcc0, `ld` at 0xcc8.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0xcc4, `sd` at 0xcdc.
  The `sd` at 0xcd0 stores 8 bytes to a2 (arg2 at entry) +0x8.
  The `sd` at 0xcd4 stores 8 bytes to a2 (arg2 at entry) +0x0.
  The return at 0xcd8 has v0 = ?.
- `odsyHashRemove` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)` at 0xce0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Range: 0xce0-0xd04 (36 bytes).
  It occupies 36 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8, including `ld` at 0xce0, `ld` at 0xcf0.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0xce4, `ld` at 0xcec.
  The `sd` at 0xce8 stores 8 bytes to [a0+8]:8 +0x0.
  The `sd` at 0xcf4 stores 8 bytes to [a0]:8 +0x8.
  The `sd` at 0xcf8 stores 8 bytes to a0 (arg0 at entry) +0x8.
  The `sd` at 0xd00 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The return at 0xcfc has v0 = [a0]:8.
- `odsy_regmatch` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_attach.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_attach.o)`.
  Range: 0x0-0x60 (96 bytes).
  It occupies 96 bytes.
  The `sd` at 0x24 stores 8 bytes to a0 (arg0 at entry) +0x48.
  The `ld` at 0x28 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `sd` at 0x40 stores 8 bytes to a0 (arg0 at entry) +0x28.
  The `sd` at 0x50 stores 8 bytes to a2 (arg2 at entry) +0x28.
  The `jal` at 0x1c calls gf_OdsyUnMapGfx with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3c calls ddv_destroy_handle with a0=[a0+40]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `beq` branch at 0x8 targets 0x50, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x34 targets 0x50, is taken when a0(=[a0+40]:8) == 0, and falls through when a0(=[a0+40]:8) != 0.
  The return at 0x58 has v0 = one of ?, ret(gf_OdsyUnMapGfx), ret(ddv_destroy_handle).
- `gf_OdsyAttach` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_attach.o)` at 0x60 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_attach.o)`.
  Range: 0x60-0x1a8 (328 bytes).
  It occupies 328 bytes.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x8c, `ld` at 0x11c, `ld` at 0x124.
  3 such `sd` accesses store 8 bytes to ?, including `sd` at 0x9c, `sd` at 0x12c, `sd` at 0x138.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0xe8, `lw` at 0x170.
  The `sw` at 0x180 stores 4 bytes to a0 (arg0 at entry) +0x30.
  The `jal` at 0xc8 calls gfxdd_recycle with a0=sym(odsy_regmatch), a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a3 at entry (arg3), a7=sym(.rodata).
  The `jal` at 0x15c calls gfxdd_mmap with a0=0x1, a1=?, a2=a1 at entry (arg1), a3=sym(gfx_fault), a4=a0 at entry (arg0), a5=sp-304, a6=one of 0x2, 0x8, a7=a0+40.
  The `jal` at 0x194 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `bgtz` branch at 0x98 targets 0x84, is taken when a6(?) > 0 (signed), and falls through when a6(?) <= 0 (signed).
  The `beq` branch at 0xa4 targets 0xbc, is taken when (s0(=a1) & 0x3fff) == 0, and falls through when (s0(=a1) & 0x3fff) != 0.
  The `beq` branch at 0xd4 targets 0xe4, is taken when v0(=ret(gfxdd_recycle)) == 0, and falls through when v0(=ret(gfxdd_recycle)) != 0.
  The `beq` branch at 0xdc targets 0xb0 and is always taken.
  The `beq` branch at 0xf0 targets 0x184, is taken when (a3(=[a0+48]) & 0x24) == 0, and falls through when (a3(=[a0+48]) & 0x24) != 0.
  The `beq` branch at 0x100 targets 0x13c, is taken when a6(=one of 0x2, 0x8) == 0, and falls through when a6(=one of 0x2, 0x8) != 0.
  The `bne` branch at 0x134 targets 0x108, is taken when v0(?) < a6(=one of 0x2, 0x8) (unsigned), and falls through when v0(?) >= a6(=one of 0x2, 0x8) (unsigned).
  The `bne` branch at 0x164 targets 0x18c, is taken when v0(=ret(gfxdd_mmap)) != 0, and falls through when v0(=ret(gfxdd_mmap)) == 0.
  The `beq` branch at 0x17c targets 0xb0 and is always taken.
  The `beq` branch at 0x184 targets 0x100 and is always taken.
  The `beq` branch at 0x1a0 targets 0xb0 and is always taken.
  The return at 0xb4 has v0 = one of 0x0, 0xc, 0x16.
- `gf_OdsyDetach` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_attach.o)` at 0x1a8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_attach.o)`.
  Range: 0x1a8-0x20c (100 bytes).
  It occupies 100 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0x1a8, `lw` at 0x1d0.
  The `ld` at 0x1c4 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0x1ec loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `sd` at 0x1f4 stores 8 bytes to a0 (arg0 at entry) +0x28.
  The `jal` at 0x1c8 calls odsyDiagExit with a0=[a0+32]:8, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1e4 calls gf_OdsyUnMapGfx with a0=a0 at entry (arg0), a1=[a0+48], a2=?, a3=?.
  The `jal` at 0x1f0 calls gfxdd_munmap with a0=[a0+40]:8, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1b8 targets 0x1d8, is taken when (a1(=[a0+48]) & 0x4) == 0, and falls through when (a1(=[a0+48]) & 0x4) != 0.
  The `beq` branch at 0x1dc targets 0x1ec, is taken when (a1(=[a0+48]) & 0x1) == 0, and falls through when (a1(=[a0+48]) & 0x1) != 0.
  The return at 0x204 has v0 = 0x0.
- `odsyConfigFb` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)` at 0x6ec (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Range: 0x6ec-0xef4 (2056 bytes).
  It occupies 2056 bytes.
  10 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0x6ec, `lw` at 0x794, `lw` at 0x7a8.
  8 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x4, including `lw` at 0x708, `lw` at 0x7a0, `lw` at 0x7c0.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x734, `lw` at 0x78c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0x764, `lw` at 0xa08.
  The `sw` at 0x788 stores 4 bytes to a0 (arg0 at entry) +0x4d0.
  The `sb` at 0x790 stores 1 byte to a0 (arg0 at entry) +0x4a9.
  The `sw` at 0x798 stores 4 bytes to a0 (arg0 at entry) +0x4b8.
  The `sw` at 0x7a4 stores 4 bytes to a0 (arg0 at entry) +0x4bc.
  The `sw` at 0x7bc stores 4 bytes to a0 (arg0 at entry) +0x4c4.
  The `sw` at 0x7cc stores 4 bytes to a0 (arg0 at entry) +0x4b4.
  The `sw` at 0x7d8 stores 4 bytes to a0 (arg0 at entry) +0x4b0.
  The `sd` at 0x7e4 stores 8 bytes to a0 (arg0 at entry) +0x7d8.
  The `sw` at 0x7ec stores 4 bytes to a0 (arg0 at entry) +0x4ac.
  The `sw` at 0x7f4 stores 4 bytes to a0 (arg0 at entry) +0x4c0.
  The `sw` at 0x808 stores 4 bytes to a0 (arg0 at entry) +0x4c8.
  The `sw` at 0x81c stores 4 bytes to a0 (arg0 at entry) +0x558.
  The `sb` at 0x820 stores 1 byte to a0 (arg0 at entry) +0x531.
  The `sw` at 0x828 stores 4 bytes to a0 (arg0 at entry) +0x540.
  The `sw` at 0x830 stores 4 bytes to a0 (arg0 at entry) +0x544.
  The `sw` at 0x848 stores 4 bytes to a0 (arg0 at entry) +0x54c.
  The `sw` at 0x854 stores 4 bytes to a0 (arg0 at entry) +0x53c.
  The `sw` at 0x85c stores 4 bytes to a0 (arg0 at entry) +0x538.
  The `sd` at 0x86c stores 8 bytes to a0 (arg0 at entry) +0x7e0.
  The `sw` at 0x870 stores 4 bytes to a0 (arg0 at entry) +0x534.
  The `sw` at 0x87c stores 4 bytes to a0 (arg0 at entry) +0x548.
  The `sw` at 0x890 stores 4 bytes to a0 (arg0 at entry) +0x550.
  The `sd` at 0x8b0 stores 8 bytes to a0 (arg0 at entry) +0x7e8.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xc, including `lw` at 0x8c0, `lw` at 0x9a8.
  10 such `sw` accesses store 4 bytes to ?, including `sw` at 0x8fc, `sw` at 0x940, `sw` at 0x954.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0x904, `sd` at 0x948.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x94c, `sb` at 0x9b4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xfc, including `lw` at 0x9e0, `lw` at 0xa40.
  The `sw` at 0x9f0 stores 4 bytes to a0 (arg0 at entry) +0x3c0.
  The `sw` at 0xa0c stores 4 bytes to a1 (arg1 at entry) +0x10.
  The `lw` at 0xa10 loads 4 bytes from a0 (arg0 at entry) +0x558.
  The `sw` at 0xa14 stores 4 bytes to a1 (arg1 at entry) +0x1c.
  The `sw` at 0xa20 stores 4 bytes to a1 (arg1 at entry) +0x20.
  The `sw` at 0xa28 stores 4 bytes to a1 (arg1 at entry) +0x28.
  The `sw` at 0xa2c stores 4 bytes to a1 (arg1 at entry) +0x14.
  The `sw` at 0xa30 stores 4 bytes to a1 (arg1 at entry) +0x18.
  The `sw` at 0xa3c stores 4 bytes to a1 (arg1 at entry) +0x24.
  The `sw` at 0xa48 stores 4 bytes to a1 (arg1 at entry) +0x2c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x5720, including `lw` at 0xa4c, `lw` at 0xa74, `lw` at 0xb28.
  11 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2e0, including `ld` at 0xa5c, `ld` at 0xbcc, `ld` at 0xc68.
  The `lwu` at 0xabc loads 4 bytes from a0 (arg0 at entry) +0x558.
  14 such `sd` accesses store 8 bytes to [a0+736]:8 +0x400000, including `sd` at 0xad8, `sd` at 0xaf4, `sd` at 0xb00.
  The `lwu` at 0xae0 loads 4 bytes from a0 (arg0 at entry) +0x4d0.
  The `sh` at 0xb38 stores 2 bytes to a0 (arg0 at entry) +0xe8.
  The `sh` at 0xb44 stores 2 bytes to a0 (arg0 at entry) +0x2ce.
  The `sh` at 0xb50 stores 2 bytes to a0 (arg0 at entry) +0xea.
  The `sh` at 0xb54 stores 2 bytes to a0 (arg0 at entry) +0x2c8.
  The `sh` at 0xb58 stores 2 bytes to a0 (arg0 at entry) +0x2c6.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2828, including `ld` at 0xba8, `ld` at 0xc40, `ld` at 0xd24.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x55f0, including `lw` at 0xc8c, `lw` at 0xce0, `lw` at 0xd34.
  4 such `lhu` accesses load 2 bytes from a0 (arg0 at entry) +0x2830, including `lhu` at 0xc90, `lhu` at 0xcec, `lhu` at 0xdc0.
  8 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x55f0, including `sw` at 0xcbc, `sw` at 0xd0c, `sw` at 0xd60.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x2828, including `sd` at 0xd78, `sd` at 0xea8.
  The `jal` at 0xa64 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xa, a2=?, a3=?.
  The `jal` at 0xb4c calls bzero with a0=a0+710, a1=0x8, a2=[a1+4], a3=[a1].
  The `jal` at 0xba0 calls mutex_spinlock with a0=a0+10272, a1=?, a2=?, a3=?.
  The `jal` at 0xbbc calls mutex_spinunlock with a0=a0+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+10280]:8.
  The `jal` at 0xbc8 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0xbd8 calls vsema with a0=a0+10256, a1=?, a2=?, a3=?.
  The `jal` at 0xc08 calls psema with a0=a0+10256, a1=0x19, a2=([a0+252] << 0x14), a3=?, a4=-0x2.
  The `jal` at 0xc18 calls vsema with a0=a0+10256, a1=?, a2=?, a3=[a0+10280]:8.
  The `jal` at 0xc28 calls mutex_spinunlock with a0=a0+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xc38 calls mutex_spinlock with a0=a0+10272, a1=[a0+22304], a2=?, a3=[a0+736]:8+0x400000, a4=0x3a02400100000000.
  The `jal` at 0xc58 calls mutex_spinunlock with a0=a0+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+10280]:8.
  The `jal` at 0xc64 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0xc74 calls vsema with a0=a0+10256, a1=?, a2=?, a3=?.
  The `jal` at 0xc84 calls mutex_spinlock with a0=a0+10272, a1=?, a2=?, a3=?.
  The `jal` at 0xd88 calls mutex_spinunlock with a0=a0+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a5=([a0+22000] | 0x2).
  The `jal` at 0xd98 calls vsema with a0=a0+10256, a1=?, a2=?, a3=[a0+10280]:8.
  The `jal` at 0xda4 calls mutex_spinunlock with a0=a0+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xdb4 calls mutex_spinlock with a0=a0+10272, a1=?, a2=?, a3=?.
  The `jal` at 0xec0 calls mutex_spinunlock with a0=a0+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a5=([a0+22000] | 0x2).
  The `jal` at 0xee0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a4=-0x2.
  The `beq` branch at 0x74c targets 0xaa0, is taken when s3(=[a1+8]) == at(=0x20), and falls through when s3(=[a1+8]) != at(=0x20).
  The `beq` branch at 0x754 targets 0xb74, is taken when s3(=[a1+8]) == v1(=0x10), and falls through when s3(=[a1+8]) != v1(=0x10).
  The `beq` branch at 0x75c targets 0xbec, is taken when s3(=[a1+8]) == a2(=0x8), and falls through when s3(=[a1+8]) != a2(=0x8).
  The `beq` branch at 0x770 targets 0x784, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `beq` branch at 0x804 targets 0x818, is taken when (a1(?) & 0x3) == 0, and falls through when (a1(?) & 0x3) != 0.
  The `beq` branch at 0x88c targets 0x8a0, is taken when (a0(?) & 0x3) == 0, and falls through when (a0(?) & 0x3) != 0.
  The `beq` branch at 0x8ac targets 0x8c0, is taken when (t2(?) & 0x3) == 0, and falls through when (t2(?) & 0x3) != 0.
  The `beq` branch at 0x8c4 targets 0xa98, is taken when s3(=[a1+12]) == 0, and falls through when s3(=[a1+12]) != 0.
  The `beq` branch at 0x8cc targets 0xb6c, is taken when s2(=0x1) == s3(=[a1+12]), and falls through when s2(=0x1) != s3(=[a1+12]).
  The `beq` branch at 0x8d4 targets 0xb94, is taken when a7(=0x2) == s3(=[a1+12]), and falls through when a7(=0x2) != s3(=[a1+12]).
  The `bne` branch at 0x900 targets 0x8dc, is taken when a0(?) < 0x4 (signed), and falls through when a0(?) >= 0x4 (signed).
  The `beq` branch at 0x90c targets 0x9b8, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x9b0 targets 0x91c, is taken when a0(?) < a7(?) (unsigned), and falls through when a0(?) >= a7(?) (unsigned).
  The `beq` branch at 0x9c8 targets 0x9dc, is taken when (a1(?) & 0x3) == 0, and falls through when (a1(?) & 0x3) != 0.
  The `beq` branch at 0xa00 targets 0xed0, is taken when a3(?) >= at(=([a0+252] << 0x14)) (unsigned), and falls through when a3(?) < at(=([a0+252] << 0x14)) (unsigned).
  The `beq` branch at 0xa58 targets 0xc04, is taken when v1(=[a0+22304]) == 0, and falls through when v1(=[a0+22304]) != 0.
  The `beq` branch at 0xa6c targets 0xab4, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0xa78 targets 0xb9c, is taken when at(=[a0+22304]) == 0, and falls through when at(=[a0+22304]) != 0.
  The `beq` branch at 0xa98 targets 0x8dc and is always taken.
  The `beq` branch at 0xaac targets 0x764 and is always taken.
  The `beq` branch at 0xb2c targets 0xc38, is taken when a1(=[a0+22304]) == 0, and falls through when a1(=[a0+22304]) != 0.
  The `beq` branch at 0xb64 targets 0xa84 and is always taken.
  The `beq` branch at 0xb6c targets 0x8dc and is always taken.
  The `beq` branch at 0xb8c targets 0x764 and is always taken.
  The `beq` branch at 0xb94 targets 0x8dc and is always taken.
  The `beq` branch at 0xbb0 targets 0xc18, is taken when a3(=[a0+10280]:8) == 0, and falls through when a3(=[a0+10280]:8) != 0.
  The `beq` branch at 0xbd0 targets 0xc84, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0xbe4 targets 0xa80 and is always taken.
  The `beq` branch at 0xbfc targets 0x764 and is always taken.
  The `beq` branch at 0xc10 targets 0xa64 and is always taken.
  The `beq` branch at 0xc30 targets 0xa80 and is always taken.
  The `beq` branch at 0xc48 targets 0xd98, is taken when a3(=[a0+10280]:8) == 0, and falls through when a3(=[a0+10280]:8) != 0.
  The `beq` branch at 0xc6c targets 0xdb4, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0xc7c targets 0xb38 and is always taken.
  The `beq` branch at 0xca4 targets 0xd1c, is taken when 0 >= a0(?) (unsigned), and falls through when 0 < a0(?) (unsigned).
  The `beq` branch at 0xd2c targets 0xd6c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0xd90 targets 0xbd8 and is always taken.
  The `beq` branch at 0xdac targets 0xb38 and is always taken.
  The `beq` branch at 0xdd4 targets 0xe54, is taken when 0 >= a4(?) (unsigned), and falls through when 0 < a4(?) (unsigned).
  The `beq` branch at 0xe64 targets 0xea4, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xec8 targets 0xc74 and is always taken.
  The `beq` branch at 0xeec targets 0xa84 and is always taken.
  The return at 0xa90 has v0 = one of -0x1, 0x0.
- `gfP_OdsyBRDMGRconfigFb` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)` at 0xef4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Range: 0xef4-0x1008 (276 bytes).
  It occupies 276 bytes.
  The `ld` at 0xef4 loads 8 bytes from a0 (arg0 at entry) +0x20.
  4 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0xf88, `sw` at 0xfb0, `sw` at 0xfd4.
  The `jal` at 0xf1c calls copyin with a0=a2 at entry (arg2), a1=sp-128, a2=0x30, a3=a3 at entry (arg3).
  The `jal` at 0xf60 calls odsyConfigFb with a0=?, a1=sp-128, a2=?, a3=?, a5=0x8, a6=0x10.
  The `jal` at 0xf74 calls copyout with a0=sp-128, a1=a2 at entry (arg2), a2=0x30, a3=?.
  The `jal` at 0xfa4 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a5=0x8.
  The `jal` at 0xfc8 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a5=0x8.
  The `jal` at 0xfec calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0xf24 targets 0xfc0, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `beq` branch at 0xf38 targets 0xf98, is taken when a2(?) >= 0x1000 (unsigned), and falls through when a2(?) < 0x1000 (unsigned).
  The `beq` branch at 0xf40 targets 0xf9c, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xf48 targets 0xf5c, is taken when a4(?) == a5(=0x8), and falls through when a4(?) != a5(=0x8).
  The `beq` branch at 0xf50 targets 0xf5c, is taken when a4(?) == a6(=0x10), and falls through when a4(?) != a6(=0x10).
  The `bne` branch at 0xf58 targets 0xf9c, is taken when a4(?) != at(=0x20), and falls through when a4(?) == at(=0x20).
  The `bne` branch at 0xf7c targets 0xfe4, is taken when v0(=ret(copyout)) != 0, and falls through when v0(=ret(copyout)) == 0.
  The `beq` branch at 0xfb8 targets 0xf8c and is always taken.
  The `beq` branch at 0xfdc targets 0xf8c and is always taken.
  The `beq` branch at 0x1000 targets 0xf8c and is always taken.
  The return at 0xf90 has v0 = one of ?, -0x1, 0xe.
- `gf_OdsyPositionCursor` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)` at 0x1008 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Range: 0x1008-0x125c (596 bytes).
  It occupies 596 bytes.
  The `lhu` at 0x100c loads 2 bytes from a0 (arg0 at entry) +0x2ce.
  The `ld` at 0x101c loads 8 bytes from a0 (arg0 at entry) +0x2e0.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x55f0, including `lw` at 0x1030, `lw` at 0x113c, `lw` at 0x1168.
  The `lhu` at 0x1034 loads 2 bytes from a0 (arg0 at entry) +0x55ee.
  The `lhu` at 0x1038 loads 2 bytes from a0 (arg0 at entry) +0x55ec.
  The `lhu` at 0x105c loads 2 bytes from a0 (arg0 at entry) +0x2830.
  The `sh` at 0x1068 stores 2 bytes to a0 (arg0 at entry) +0x55ea.
  The `sh` at 0x1080 stores 2 bytes to a0 (arg0 at entry) +0x55e8.
  3 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x2828, including `sd` at 0x10d0, `sd` at 0x1108, `sd` at 0x1244.
  3 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x2830, including `sh` at 0x10fc, `sh` at 0x1180, `sh` at 0x122c.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x55f0, including `sw` at 0x1154, `sw` at 0x1188, `sw` at 0x11cc.
  4 such `sd` accesses store 8 bytes to [a0+736]:8 +0x400000, including `sd` at 0x1160, `sd` at 0x119c, `sd` at 0x11b0.
  The `lhu` at 0x11f4 loads 2 bytes from a0 (arg0 at entry) +0x2ca.
  The `jal` at 0x10b0 calls mutex_spinlock with a0=a0+10272, a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10c0 calls cpsema with a0=a0+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x10d8 calls mutex_spinunlock with a0=a0+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x10e8 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x110c calls vsema with a0=a0+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x1240 calls mutex_spinunlock with a0=a0+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `beq` branch at 0x1020 targets 0x11f4, is taken when at(=[a0+718]:2) == v0(=0x2), and falls through when at(=[a0+718]:2) != v0(=0x2).
  The `beq` branch at 0x1090 targets 0x1210, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x10c8 targets 0x122c, is taken when v0(=ret(cpsema)) == 0, and falls through when v0(=ret(cpsema)) != 0.
  The `beq` branch at 0x10f0 targets 0x1124, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x1130 targets 0x11a0, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x11ac targets 0x110c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x11ec targets 0x110c and is always taken.
  The `bne` branch at 0x11fc targets 0x1028, is taken when a1 < v0(=[a0+714]:2) (signed), and falls through when a1 >= v0(=[a0+714]:2) (signed).
  The `beq` branch at 0x1208 targets 0x1030 and is always taken.
  The `beq` branch at 0x1224 targets 0x10ac and is always taken.
  The `beq` branch at 0x1254 targets 0x1118 and is always taken.
  The return at 0x111c has v0 = 0x0.
- `gfP_OdsyBRDMGRcursor` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)` at 0x125c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Range: 0x125c-0x1f90 (3380 bytes).
  It occupies 3380 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x20, including `ld` at 0x1288, `ld` at 0x12e4.
  26 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2e0, including `ld` at 0x129c, `ld` at 0x13c4, `ld` at 0x14c0.
  The `sh` at 0x12c4 stores 2 bytes to [a0+32]:8 +0x55ec.
  The `sh` at 0x12cc stores 2 bytes to [a0+32]:8 +0x55ee.
  6 such `lw` accesses load 4 bytes from [a0+32]:8 +0x5720, including `lw` at 0x12f4, `lw` at 0x1330, `lw` at 0x1384.
  21 such `sw` accesses store 4 bytes to [a0+32]:8 +0x55f0, including `sw` at 0x1318, `sw` at 0x14d4, `sw` at 0x1510.
  3 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x1350, `sw` at 0x1828, `sw` at 0x18ec.
  10 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2828, including `ld` at 0x13a0, `ld` at 0x1524, `ld` at 0x1598.
  7 such `sd` accesses store 8 bytes to table(0x400000) +0x0, including `sd` at 0x1404, `sd` at 0x1698, `sd` at 0x1a50.
  20 such `lw` accesses load 4 bytes from [a0+32]:8 +0x55f0, including `lw` at 0x148c, `lw` at 0x14e4, `lw` at 0x1534.
  10 such `lhu` accesses load 2 bytes from [a0+32]:8 +0x2830, including `lhu` at 0x1490, `lhu` at 0x14e0, `lhu` at 0x1700.
  20 such `sd` accesses store 8 bytes to [[a0+32]:8+736]:8 +0x400000, including `sd` at 0x14dc, `sd` at 0x1518, `sd` at 0x1530.
  5 such `sd` accesses store 8 bytes to [a0+32]:8 +0x2828, including `sd` at 0x1564, `sd` at 0x17d4, `sd` at 0x19f0.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x16c8, `lw` at 0x1ae0, `lw` at 0x1db8.
  The `jal` at 0x12a4 calls copyin with a0=a2 at entry (arg2), a1=sp-1040, a2=0x28, a3=a3 at entry (arg3).
  The `jal` at 0x12ec calls gf_OdsyPositionCursor with a0=[a0+32]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x1314 calls odsy_poll_dfifo_level with a0=?, a1=0xf, a2=?, a3=?.
  The `jal` at 0x1374 calls copyin with a0=?, a1=sp-1000, a2=0x3c, a3=?.
  The `jal` at 0x1398 calls mutex_spinlock with a0=[a0+32]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x13b4 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=[[a0+32]:8+10280]:8, a3=?, a5=[a0+32]:8+10256.
  The `jal` at 0x13c0 calls odsy_poll_dfifo_level with a0=[[a0+32]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x13d0 calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1428 calls copyin with a0=?, a1=sp-928, a2=0x200, a3=?.
  The `jal` at 0x1450 calls psema with a0=[a0+32]:8+10256, a1=0x19, a2=[[a0+32]:8+22304], a3=?.
  The `jal` at 0x1468 calls vsema with a0=[a0+32]:8+10256, a1=?, a2=[[a0+32]:8+10280]:8, a3=?, a5=[a0+32]:8+10256.
  The `jal` at 0x1474 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1484 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x157c calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a5=0x400000, a6=-0x2.
  The `jal` at 0x1590 calls mutex_spinlock with a0=[a0+32]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x15b0 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[[a0+32]:8+10280]:8.
  The `jal` at 0x15bc calls odsy_poll_dfifo_level with a0=[[a0+32]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x15cc calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x15e0 calls odsy_poll_dfifo_level with a0=?, a1=0x7, a2=?, a3=?.
  The `jal` at 0x1624 calls odsy_poll_dfifo_level with a0=?, a1=0xf, a2=?, a3=?.
  The `jal` at 0x1654 calls copyin with a0=?, a1=sp-416, a2=0x100, a3=?.
  The `jal` at 0x16d8 calls vsema with a0=[a0+32]:8+10256, a1=?, a2=?, a3=?, a4=[[a0+32]:8+10280]:8.
  The `jal` at 0x16e4 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x16f4 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x17ec calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a6=-0x2.
  The `jal` at 0x180c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1830 calls mutex_spinlock with a0=[a0+32]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x1850 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x185c calls odsy_poll_dfifo_level with a0=[[a0+32]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x186c calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1880 calls odsy_poll_dfifo_level with a0=?, a1=0xf, a2=?, a3=?.
  The `jal` at 0x18b0 calls odsy_poll_dfifo_level with a0=?, a1=0xf, a2=?, a3=?.
  The `jal` at 0x18f4 calls vsema with a0=[a0+32]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x1900 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1910 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1a08 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a6=-0x2.
  The `jal` at 0x1af4 calls mutex_spinlock with a0=[a0+32]:8+10272, a1=?, a2=?, a3=?, a4=[[a0+32]:8+22304].
  The `jal` at 0x1b14 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x1b20 calls odsy_poll_dfifo_level with a0=[[a0+32]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x1b30 calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1b4c calls odsy_poll_dfifo_level with a0=?, a1=0x0, a2=?, a3=0xffffffff, a5=0xffffffff00000000, a7=sp-928.
  The `jal` at 0x1b8c calls vsema with a0=[a0+32]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x1b98 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1ba8 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1ca8 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a6=-0x2.
  The `jal` at 0x1dd4 calls odsy_poll_dfifo_level with a0=?, a1=0x0, a2=?, a3=?, a5=0xffffffff00000000, a6=0xffffffff, a7=0x400000.
  The `jal` at 0x1e04 calls mutex_spinlock with a0=[a0+32]:8+10272, a1=?, a2=a3 at entry (arg3), a3=?.
  The `jal` at 0x1e24 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x1e30 calls odsy_poll_dfifo_level with a0=[[a0+32]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x1e40 calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1e64 calls vsema with a0=[a0+32]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x1e70 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1e80 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1f80 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a7=([[a0+32]:8+22000] | 0x2).
  The `bne` branch at 0x12ac targets 0x17fc, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `beq` branch at 0x12b8 targets 0x12d4, is taken when (v0(?) & 0x1) == 0, and falls through when (v0(?) & 0x1) != 0.
  The `beq` branch at 0x12d8 targets 0x12f4, is taken when (v0(?) & 0x2) == 0, and falls through when (v0(?) & 0x2) != 0.
  The `beq` branch at 0x12f8 targets 0x144c, is taken when a2(=[[a0+32]:8+22304]) == 0, and falls through when a2(=[[a0+32]:8+22304]) != 0.
  The `beq` branch at 0x1304 targets 0x1324, is taken when (a4(?) & 0x4) == 0, and falls through when (a4(?) & 0x4) != 0.
  The `beq` branch at 0x131c targets 0x13e0, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x1328 targets 0x135c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x1334 targets 0x1398, is taken when v1(=[[a0+32]:8+22304]) == 0, and falls through when v1(=[[a0+32]:8+22304]) != 0.
  The `beq` branch at 0x1364 targets 0x140c, is taken when (at(?) & 0x8) == 0, and falls through when (at(?) & 0x8) != 0.
  The `beq` branch at 0x137c targets 0x15dc, is taken when v0(=ret(copyin)) == 0, and falls through when v0(=ret(copyin)) != 0.
  The `beq` branch at 0x1388 targets 0x158c, is taken when v1(=[[a0+32]:8+22304]) == 0, and falls through when v1(=[[a0+32]:8+22304]) != 0.
  The `beq` branch at 0x1390 targets 0x1354 and is always taken.
  The `beq` branch at 0x13a4 targets 0x1460, is taken when a2(=[[a0+32]:8+10280]:8) == 0, and falls through when a2(=[[a0+32]:8+10280]:8) != 0.
  The `beq` branch at 0x13c8 targets 0x1484, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x13d8 targets 0x1340 and is always taken.
  The `beq` branch at 0x1400 targets 0x1324 and is always taken.
  The `bne` branch at 0x1410 targets 0x1330, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x141c targets 0x1638, is taken when (at(?) & 0x10) == 0, and falls through when (at(?) & 0x10) != 0.
  The `beq` branch at 0x1430 targets 0x1620, is taken when v0(=ret(copyin)) == 0, and falls through when v0(=ret(copyin)) != 0.
  The `beq` branch at 0x143c targets 0x182c, is taken when v1(=[[a0+32]:8+22304]) == 0, and falls through when v1(=[[a0+32]:8+22304]) != 0.
  The `beq` branch at 0x1444 targets 0x1354 and is always taken.
  The `beq` branch at 0x1458 targets 0x1300 and is always taken.
  The `beq` branch at 0x147c targets 0x1340 and is always taken.
  The `beq` branch at 0x14a8 targets 0x151c, is taken when 0 >= a7(?) (unsigned), and falls through when 0 < a7(?) (unsigned).
  The `beq` branch at 0x152c targets 0x1564, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x1584 targets 0x13d0 and is always taken.
  The `beq` branch at 0x15a4 targets 0x16d4, is taken when a4(=[[a0+32]:8+10280]:8) == 0, and falls through when a4(=[[a0+32]:8+10280]:8) != 0.
  The `beq` branch at 0x15c4 targets 0x16f4, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x15d4 targets 0x138c and is always taken.
  The `bne` branch at 0x15ec targets 0x140c, is taken when v0(=ret(odsy_poll_dfifo_level)) != 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) == 0.
  The `beq` branch at 0x1618 targets 0x16b4 and is always taken.
  The `beq` branch at 0x1630 targets 0x1a18, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `bne` branch at 0x163c targets 0x1330, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x1648 targets 0x1894, is taken when (a2(?) & 0x20) == 0, and falls through when (a2(?) & 0x20) != 0.
  The `beq` branch at 0x165c targets 0x187c, is taken when v0(=ret(copyin)) == 0, and falls through when v0(=ret(copyin)) != 0.
  The `beq` branch at 0x1668 targets 0x1af0, is taken when a4(=[[a0+32]:8+22304]) == 0, and falls through when a4(=[[a0+32]:8+22304]) != 0.
  The `beq` branch at 0x1670 targets 0x1354 and is always taken.
  The `beq` branch at 0x16ac targets 0x1408, is taken when a1(?) >= 0xf (signed), and falls through when a1(?) < 0xf (signed).
  The `bne` branch at 0x16c4 targets 0x1678, is taken when (a4(?) & 0x1) != 0, and falls through when (a4(?) & 0x1) == 0.
  The `beq` branch at 0x16cc targets 0x169c and is always taken.
  The `beq` branch at 0x16ec targets 0x138c and is always taken.
  The `beq` branch at 0x1718 targets 0x178c, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x179c targets 0x17d4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x17f4 targets 0x15cc and is always taken.
  The `beq` branch at 0x1824 targets 0x1354 and is always taken.
  The `beq` branch at 0x1844 targets 0x18f0, is taken when at(=[[a0+32]:8+10280]:8) == 0, and falls through when at(=[[a0+32]:8+10280]:8) != 0.
  The `beq` branch at 0x1864 targets 0x1910, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x1874 targets 0x1440 and is always taken.
  The `beq` branch at 0x188c targets 0x1ce8, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `bne` branch at 0x1898 targets 0x1330, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x18a4 targets 0x18c8, is taken when (a4(?) & 0x1) == 0, and falls through when (a4(?) & 0x1) != 0.
  The `beq` branch at 0x18c0 targets 0x1cb8, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `bne` branch at 0x18cc targets 0x1330, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x18d8 targets 0x1e00, is taken when v1(=[[a0+32]:8+22304]) == 0, and falls through when v1(=[[a0+32]:8+22304]) != 0.
  The `beq` branch at 0x18e8 targets 0x1354 and is always taken.
  The `beq` branch at 0x1908 targets 0x1440 and is always taken.
  The `beq` branch at 0x1934 targets 0x19a8, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x19b8 targets 0x19f0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x1a10 targets 0x186c and is always taken.
  The `beq` branch at 0x1a30 targets 0x1b7c, is taken when (a4(?) & 0x1) == 0, and falls through when (a4(?) & 0x1) != 0.
  The `beq` branch at 0x1a68 targets 0x1aac and is always taken.
  The `beq` branch at 0x1aa4 targets 0x1638, is taken when a6(?) >= 0x80 (signed), and falls through when a6(?) < 0x80 (signed).
  The `beq` branch at 0x1ac8 targets 0x1b40, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x1adc targets 0x1a70, is taken when (a4(?) & 0x1) != 0, and falls through when (a4(?) & 0x1) == 0.
  The `beq` branch at 0x1ae8 targets 0x1a94 and is always taken.
  The `beq` branch at 0x1b08 targets 0x1b88, is taken when at(=[[a0+32]:8+10280]:8) == 0, and falls through when at(=[[a0+32]:8+10280]:8) != 0.
  The `beq` branch at 0x1b28 targets 0x1ba8, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x1b38 targets 0x166c and is always taken.
  The `bne` branch at 0x1b6c targets 0x1330, is taken when v0(=ret(odsy_poll_dfifo_level)) != 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) == 0.
  The `beq` branch at 0x1b74 targets 0x1ad0 and is always taken.
  The `beq` branch at 0x1b80 targets 0x1a54 and is always taken.
  The `beq` branch at 0x1ba0 targets 0x166c and is always taken.
  The `beq` branch at 0x1bc8 targets 0x1c40, is taken when 0 >= a3(?) (unsigned), and falls through when 0 < a3(?) (unsigned).
  The `beq` branch at 0x1c54 targets 0x1c90, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x1cb0 targets 0x1b30 and is always taken.
  The `beq` branch at 0x1ce0 targets 0x18c8 and is always taken.
  The `beq` branch at 0x1d00 targets 0x1e50, is taken when (at(?) & 0x1) == 0, and falls through when (at(?) & 0x1) != 0.
  The `beq` branch at 0x1d3c targets 0x1d84 and is always taken.
  The `beq` branch at 0x1d7c targets 0x1894, is taken when a3(?) >= 0x40 (signed), and falls through when a3(?) < 0x40 (signed).
  The `beq` branch at 0x1da0 targets 0x1dcc, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x1db4 targets 0x1d44, is taken when (at(?) & 0x1) != 0, and falls through when (at(?) & 0x1) == 0.
  The `beq` branch at 0x1dc4 targets 0x1d6c and is always taken.
  The `bne` branch at 0x1df0 targets 0x1330, is taken when v0(=ret(odsy_poll_dfifo_level)) != 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) == 0.
  The `beq` branch at 0x1df8 targets 0x1da8 and is always taken.
  The `beq` branch at 0x1e18 targets 0x1e60, is taken when at(=[[a0+32]:8+10280]:8) == 0, and falls through when at(=[[a0+32]:8+10280]:8) != 0.
  The `beq` branch at 0x1e38 targets 0x1e80, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x1e48 targets 0x18dc and is always taken.
  The `beq` branch at 0x1e58 targets 0x1d28 and is always taken.
  The `beq` branch at 0x1e78 targets 0x18dc and is always taken.
  The `beq` branch at 0x1ea0 targets 0x1f18, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x1f2c targets 0x1f68, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x1f88 targets 0x1e40 and is always taken.
  The return at 0x1354 has v0 = one of 0x0, 0x5, 0xe.
- `gfP_OdsyBRDMGRsetDpyMode` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)` at 0x1f90 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Range: 0x1f90-0x2008 (120 bytes).
  It occupies 120 bytes.
  2 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x1fc8, `sw` at 0x1ff8.
  The `jal` at 0x1fac calls copyin with a0=a2 at entry (arg2), a1=sp-64, a2=0x8, a3=a3 at entry (arg3).
  The `jal` at 0x1fc0 calls gf_OdsySetDisplayMode with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1fec calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0x1fb4 targets 0x1fe4, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `beq` branch at 0x2000 targets 0x1fd4 and is always taken.
  The return at 0x1fdc has v0 = one of 0x0, 0xe.
- `gfP_OdsyBRDMGRsetBlanking` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)` at 0x2008 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Range: 0x2008-0x207c (116 bytes).
  It occupies 116 bytes.
  The `ld` at 0x2008 loads 8 bytes from a0 (arg0 at entry) +0x20.
  2 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x2044, `sw` at 0x206c.
  The `jal` at 0x202c calls copyin with a0=a2 at entry (arg2), a1=sp-64, a2=0x4, a3=a3 at entry (arg3).
  The `jal` at 0x203c calls odsyBlankScreen with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2060 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0x2034 targets 0x2058, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `beq` branch at 0x2074 targets 0x204c and is always taken.
  The return at 0x2050 has v0 = one of ret(odsyBlankScreen), 0xe.
- `odsyBlankScreen` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)` at 0x207c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Range: 0x207c-0x2d74 (3320 bytes).
  It occupies 3320 bytes.
  34 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2e0, including `ld` at 0x207c, `ld` at 0x2148, `ld` at 0x2278.
  3 such `lhu` accesses load 2 bytes from a0 (arg0 at entry) +0x12a, including `lhu` at 0x20b4, `lhu` at 0x2114, `lhu` at 0x2168.
  9 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x5720, including `lw` at 0x20c0, `lw` at 0x20fc, `lw` at 0x2124.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x5698, including `lw` at 0x20c4, `lw` at 0x2128, `lw` at 0x217c.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x5698, including `sw` at 0x20d8, `sw` at 0x213c, `sw` at 0x2190.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x5694, including `lw` at 0x2198, `lw` at 0x21fc, `lw` at 0x2330.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x5694, including `sw` at 0x21ac, `sw` at 0x220c, `sw` at 0x233c.
  2 such `lw` accesses load 4 bytes from table(0x233604) +0x0, including `lw` at 0x21d8, `lw` at 0x2300.
  8 such `sd` accesses store 8 bytes to table(0x400000) +0x0, including `sd` at 0x21f8, `sd` at 0x221c, `sd` at 0x2230.
  3 such `lwu` accesses load 4 bytes from a0 (arg0 at entry) +0x5698, including `lwu` at 0x2204, `lwu` at 0x2334, `lwu` at 0x23c4.
  3 such `lwu` accesses load 4 bytes from a0 (arg0 at entry) +0x5694, including `lwu` at 0x2220, `lwu` at 0x2350, `lwu` at 0x23e4.
  12 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2828, including `ld` at 0x2254, `ld` at 0x237c, `ld` at 0x2410.
  3 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x56e8, including `sb` at 0x22ac, `sb` at 0x2578, `sb` at 0x26ec.
  24 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x55f0, including `lw` at 0x25c8, `lw` at 0x261c, `lw` at 0x2670.
  12 such `lhu` accesses load 2 bytes from a0 (arg0 at entry) +0x2830, including `lhu` at 0x25cc, `lhu` at 0x2628, `lhu` at 0x27a4.
  24 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x55f0, including `sw` at 0x25f8, `sw` at 0x2648, `sw` at 0x269c.
  24 such `sd` accesses store 8 bytes to [a0+736]:8 +0x400000, including `sd` at 0x2618, `sd` at 0x2654, `sd` at 0x266c.
  6 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x2828, including `sd` at 0x26ac, `sd` at 0x2884, `sd` at 0x2998.
  The `jal` at 0x20e0 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x2144 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x21a8 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xe, a2=?, a3=?, a6=-0x21.
  The `jal` at 0x224c calls mutex_spinlock with a0=a0+10272, a1=?, a2=?, a3=?, a4=0xffffffff.
  The `jal` at 0x2268 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x2274 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x2284 calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x22a8 calls odsy_i2cDDCRegRead with a0=a0+22216, a1=0x0, a2=sp-78, a3=0x17, a4=[a0+298]:2.
  The `jal` at 0x22c4 calls odsy_i2cPLLRegWrite with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0x22e0 calls psema with a0=a0+10256, a1=0x19, a2=a1 at entry (arg1), a3=?, a4=-0x21.
  The `jal` at 0x2374 calls mutex_spinlock with a0=a0+10272, a1=?, a2=?, a3=[a0+22304].
  The `jal` at 0x2394 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x23a0 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x23b0 calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2408 calls mutex_spinlock with a0=a0+10272, a1=?, a2=?, a3=table(0x400000), a4=0x3920c00100000000.
  The `jal` at 0x2428 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x2434 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x2444 calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2458 calls mutex_spinlock with a0=a0+10272, a1=?, a2=?, a3=[a0+22304].
  The `jal` at 0x2474 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=a0+10256.
  The `jal` at 0x2480 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x2490 calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x24a4 calls mutex_spinlock with a0=a0+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x24c0 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[a0+10280]:8.
  The `jal` at 0x24cc calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x24dc calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x24f4 calls vsema with a0=a0+10256, a1=a0+10256, a2=?, a3=?.
  The `jal` at 0x2500 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2514 calls mutex_spinlock with a0=a0+10272, a1=?, a2=?, a3=0x3920c00100000000, a4=0xffffffff.
  The `jal` at 0x2534 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x2540 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x2550 calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2574 calls odsy_i2cDDCRegRead with a0=a0+22216, a1=0x0, a2=sp-80, a3=0x17.
  The `jal` at 0x2590 calls odsy_i2cPLLRegWrite with a0=?, a1=0x0, a2=?, a3=-0xf.
  The `jal` at 0x25b0 calls psema with a0=a0+10256, a1=0x19, a2=?, a3=?, a4=[a0+22304].
  The `jal` at 0x25c0 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x26c4 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x26e8 calls odsy_i2cDDCRegRead with a0=a0+22216, a1=0x0, a2=sp-79, a3=0x17, a4=[a0+298]:2.
  The `jal` at 0x2704 calls odsy_i2cPLLRegWrite with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0x2720 calls psema with a0=a0+10256, a1=0x19, a2=a1 at entry (arg1), a3=?, a4=-0x21.
  The `jal` at 0x2738 calls vsema with a0=a0+10256, a1=?, a2=?, a3=a0+10256.
  The `jal` at 0x2744 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x275c calls vsema with a0=a0+10256, a1=?, a2=?, a3=?, a4=[a0+10280]:8.
  The `jal` at 0x2768 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x277c calls vsema with a0=a0+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x2788 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2798 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x289c calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x28ac calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x29b0 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x29cc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a1 at entry (arg1), a3=0x2.
  The `jal` at 0x29e0 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2aec calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=[a0+22000], a3=?, a6=([a0+22000] | 0x2).
  The `jal` at 0x2b00 calls vsema with a0=a0+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x2b0c calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2b20 calls vsema with a0=a0+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x2b2c calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2b3c calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2c48 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=[a0+22000], a3=?, a6=([a0+22000] | 0x2).
  The `jal` at 0x2c58 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2d64 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=[a0+22000], a3=?, a6=([a0+22000] | 0x2).
  The `beq` branch at 0x209c targets 0x2114, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x20a4 targets 0x2168, is taken when a2(=a1) == v1(=0x1), and falls through when a2(=a1) != v1(=0x1).
  The `bne` branch at 0x20ac targets 0x29c0, is taken when a2(=a1) != a3(=0x2), and falls through when a2(=a1) == a3(=0x2).
  The `beq` branch at 0x20b8 targets 0x2294, is taken when a4(=[a0+298]:2) == at(=0x3), and falls through when a4(=[a0+298]:2) != at(=0x3).
  The `beq` branch at 0x20d4 targets 0x22dc, is taken when v1(=[a0+22304]) == 0, and falls through when v1(=[a0+22304]) != 0.
  The `beq` branch at 0x20f4 targets 0x21cc, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x2100 targets 0x2248, is taken when at(=[a0+22304]) == 0, and falls through when at(=[a0+22304]) != 0.
  The `beq` branch at 0x211c targets 0x2560, is taken when v1(=[a0+298]:2) == a3(=0x3), and falls through when v1(=[a0+298]:2) != a3(=0x3).
  The `beq` branch at 0x2138 targets 0x25ac, is taken when a4(=[a0+22304]) == 0, and falls through when a4(=[a0+22304]) != 0.
  The `beq` branch at 0x214c targets 0x22f0, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x2158 targets 0x2454, is taken when a3(=[a0+22304]) == 0, and falls through when a3(=[a0+22304]) != 0.
  The `beq` branch at 0x2160 targets 0x210c and is always taken.
  The `beq` branch at 0x2170 targets 0x26d4, is taken when a4(=[a0+298]:2) == at(=0x3), and falls through when a4(=[a0+298]:2) != at(=0x3).
  The `beq` branch at 0x218c targets 0x271c, is taken when v1(=[a0+22304]) == 0, and falls through when v1(=[a0+22304]) != 0.
  The `beq` branch at 0x21b0 targets 0x23c0, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x21bc targets 0x24a0, is taken when at(=[a0+22304]) == 0, and falls through when at(=[a0+22304]) != 0.
  The `beq` branch at 0x21c4 targets 0x210c and is always taken.
  The `beq` branch at 0x2238 targets 0x2510, is taken when at(=[a0+22304]) == 0, and falls through when at(=[a0+22304]) != 0.
  The `beq` branch at 0x2240 targets 0x210c and is always taken.
  The `beq` branch at 0x2258 targets 0x24ec, is taken when v1(=[a0+10280]:8) == 0, and falls through when v1(=[a0+10280]:8) != 0.
  The `beq` branch at 0x227c targets 0x25c0, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x228c targets 0x2104 and is always taken.
  The `beq` branch at 0x22cc targets 0x223c, is taken when v0(=ret(odsy_i2cPLLRegWrite)) == 0, and falls through when v0(=ret(odsy_i2cPLLRegWrite)) != 0.
  The `beq` branch at 0x22d4 targets 0x210c and is always taken.
  The `beq` branch at 0x22e8 targets 0x20dc and is always taken.
  The `bne` branch at 0x2368 targets 0x2240, is taken when a3(=[a0+22304]) != 0, and falls through when a3(=[a0+22304]) == 0.
  The `beq` branch at 0x2388 targets 0x2afc, is taken when at(=[a0+10280]:8) == 0, and falls through when at(=[a0+10280]:8) != 0.
  The `beq` branch at 0x23a8 targets 0x2b3c, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x23b8 targets 0x223c and is always taken.
  The `bne` branch at 0x23fc targets 0x2240, is taken when at(=[a0+22304]) != 0, and falls through when at(=[a0+22304]) == 0.
  The `beq` branch at 0x241c targets 0x2b1c, is taken when at(=[a0+10280]:8) == 0, and falls through when at(=[a0+10280]:8) != 0.
  The `beq` branch at 0x243c targets 0x2c58, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x244c targets 0x223c and is always taken.
  The `beq` branch at 0x2468 targets 0x2730, is taken when v1(=[a0+10280]:8) == 0, and falls through when v1(=[a0+10280]:8) != 0.
  The `beq` branch at 0x2488 targets 0x2798, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x2498 targets 0x215c and is always taken.
  The `beq` branch at 0x24b4 targets 0x2754, is taken when a4(=[a0+10280]:8) == 0, and falls through when a4(=[a0+10280]:8) != 0.
  The `beq` branch at 0x24d4 targets 0x28ac, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x24e4 targets 0x21c0 and is always taken.
  The `beq` branch at 0x2508 targets 0x2104 and is always taken.
  The `beq` branch at 0x2528 targets 0x2778, is taken when v0(=[a0+10280]:8) == 0, and falls through when v0(=[a0+10280]:8) != 0.
  The `beq` branch at 0x2548 targets 0x29e0, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x2558 targets 0x223c and is always taken.
  The `beq` branch at 0x2598 targets 0x2124, is taken when v0(=ret(odsy_i2cPLLRegWrite)) == 0, and falls through when v0(=ret(odsy_i2cPLLRegWrite)) != 0.
  The `beq` branch at 0x25a4 targets 0x210c and is always taken.
  The `beq` branch at 0x25b8 targets 0x2144 and is always taken.
  The `beq` branch at 0x25e0 targets 0x2658, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x2668 targets 0x26a8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x26cc targets 0x2284 and is always taken.
  The `beq` branch at 0x270c targets 0x223c, is taken when v0(=ret(odsy_i2cPLLRegWrite)) == 0, and falls through when v0(=ret(odsy_i2cPLLRegWrite)) != 0.
  The `beq` branch at 0x2714 targets 0x210c and is always taken.
  The `beq` branch at 0x2728 targets 0x2194 and is always taken.
  The `beq` branch at 0x274c targets 0x215c and is always taken.
  The `beq` branch at 0x2770 targets 0x21c0 and is always taken.
  The `beq` branch at 0x2790 targets 0x223c and is always taken.
  The `beq` branch at 0x27b8 targets 0x2830, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x2840 targets 0x2880, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x28a4 targets 0x2490 and is always taken.
  The `beq` branch at 0x28cc targets 0x2944, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x2954 targets 0x2994, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x29b8 targets 0x24dc and is always taken.
  The `beq` branch at 0x29d8 targets 0x210c and is always taken.
  The `beq` branch at 0x2a00 targets 0x2a80, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x2a90 targets 0x2ad0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x2af4 targets 0x2550 and is always taken.
  The `beq` branch at 0x2b14 targets 0x223c and is always taken.
  The `beq` branch at 0x2b34 targets 0x223c and is always taken.
  The `beq` branch at 0x2b5c targets 0x2bdc, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x2bec targets 0x2c2c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x2c50 targets 0x23b0 and is always taken.
  The `beq` branch at 0x2c78 targets 0x2cf8, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x2d08 targets 0x2d48, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x2d6c targets 0x2444 and is always taken.
  The return at 0x210c has v0 = one of -0x1, 0x0.
- `odsy_copyin_frame_line_tables` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)` at 0x2d74 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Range: 0x2d74-0x2e70 (252 bytes).
  It occupies 252 bytes.
  The `lwu` at 0x2d8c loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x2db0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0x2db8, `ld` at 0x2e24, `ld` at 0x2e60.
  The `lwu` at 0x2de4 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `sd` at 0x2df0 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `lw` at 0x2e00 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `ld` at 0x2e08 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `sd` at 0x2e44 stores 8 bytes to a0 (arg0 at entry) +0x10.
  The `jal` at 0x2d88 calls kern_calloc with a0=[a0+8], a1=0x2, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2dbc calls copyin with a0=[a0]:8, a1=ret(kern_calloc), a2=([a0+8] + [a0+8]), a3=?.
  The `jal` at 0x2dcc calls kern_free with a0=ret(kern_calloc), a1=?, a2=a0 at entry (arg0), a3=?.
  The `jal` at 0x2dec calls kern_calloc with a0=[a0+24], a1=0x2, a2=a0 at entry (arg0), a3=?.
  The `jal` at 0x2e0c calls copyin with a0=[a0+16]:8, a1=ret(kern_calloc), a2=([a0+24] + [a0+24]), a3=?.
  The `jal` at 0x2e20 calls kern_free with a0=[a0]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2e28 calls kern_free with a0=ret(kern_calloc), a1=?, a2=?, a3=?.
  The `jal` at 0x2e5c calls kern_free with a0=[a0]:8, a1=?, a2=?, a3=?.
  The `bne` branch at 0x2d94 targets 0x2dac, is taken when v0(=ret(kern_calloc)) != 0, and falls through when v0(=ret(kern_calloc)) == 0.
  The `beq` branch at 0x2dc4 targets 0x2de4, is taken when v0(=ret(copyin)) == 0, and falls through when v0(=ret(copyin)) != 0.
  The `beq` branch at 0x2ddc targets 0x2da4 and is always taken.
  The `beq` branch at 0x2df4 targets 0x2e54, is taken when v0(=ret(kern_calloc)) == 0, and falls through when v0(=ret(kern_calloc)) != 0.
  The `beq` branch at 0x2e14 targets 0x2e40, is taken when v0(=ret(copyin)) == 0, and falls through when v0(=ret(copyin)) != 0.
  The `beq` branch at 0x2e38 targets 0x2da4 and is always taken.
  The `beq` branch at 0x2e4c targets 0x2da4 and is always taken.
  The `beq` branch at 0x2e68 targets 0x2da4 and is always taken.
  The return at 0x2da4 has v0 = one of 0x0, 0xc, 0xe.
- `setDACreg` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)` at 0x2e70 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Range: 0x2e70-0x2edc (108 bytes).
  It occupies 108 bytes.
  The `sb` at 0x2e74 stores 1 byte to a0 (arg0 at entry) +0x20.
  The `jal` at 0x2ea4 calls odsy_i2cPLLRegWrite with a0=a0 at entry (arg0), a1=0x5, a2=?, a3=a3 at entry (arg3), a5=a2 at entry (arg2).
  The `jal` at 0x2ecc calls odsy_i2cPLLRegWrite with a0=a0 at entry (arg0), a1=0x4, a2=?, a3=a3 at entry (arg3).
  The `beq` branch at 0x2e88 targets 0x2ec4, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x2eb0 targets 0x2ec4, is taken when v0(=ret(odsy_i2cPLLRegWrite)) == 0, and falls through when v0(=ret(odsy_i2cPLLRegWrite)) != 0.
  The `beq` branch at 0x2ed4 targets 0x2eb8 and is always taken.
  The return at 0x2ebc has v0 = ret(odsy_i2cPLLRegWrite).
- `odsy_initDCD2DAC` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)` at 0x2edc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Range: 0x2edc-0x30a4 (456 bytes).
  It occupies 456 bytes.
  The `sb` at 0x2f00 stores 1 byte to a1 (arg1 at entry) +0x20.
  The `jal` at 0x2efc calls odsy_i2cPLLRegWrite with a0=a1 at entry (arg1), a1=0x3, a2=0x0, a3=a3 at entry (arg3).
  The `jal` at 0x2f24 calls setDACreg with a0=a1 at entry (arg1), a1=0x1, a2=0x0, a3=0x0.
  The `jal` at 0x2f38 calls setDACreg with a0=a1 at entry (arg1), a1=0x1, a2=0x3, a3=0x9.
  The `jal` at 0x2f4c calls setDACreg with a0=a1 at entry (arg1), a1=0x0, a2=0x3, a3=0x8.
  The `jal` at 0x2f60 calls setDACreg with a0=a1 at entry (arg1), a1=0x0, a2=0x3, a3=0x9.
  The `jal` at 0x2f74 calls setDACreg with a0=a1 at entry (arg1), a1=0x0, a2=0x3, a3=0x29.
  The `jal` at 0x2f88 calls setDACreg with a0=a1 at entry (arg1), a1=0x0, a2=0x3, a3=0x9.
  The `jal` at 0x2f9c calls setDACreg with a0=a1 at entry (arg1), a1=0x1, a2=0x0, a3=0x4.
  The `jal` at 0x2fb0 calls setDACreg with a0=a1 at entry (arg1), a1=0x1, a2=0x2, a3=0xff.
  The `jal` at 0x2fc4 calls setDACreg with a0=a1 at entry (arg1), a1=0x1, a2=0x0, a3=0x5.
  The `jal` at 0x2fd8 calls setDACreg with a0=a1 at entry (arg1), a1=0x1, a2=0x2, a3=0x0.
  The `jal` at 0x2fec calls setDACreg with a0=a1 at entry (arg1), a1=0x1, a2=0x0, a3=0x6.
  The `jal` at 0x3000 calls setDACreg with a0=a1 at entry (arg1), a1=0x1, a2=0x2, a3=0xec.
  The `jal` at 0x3014 calls setDACreg with a0=a1 at entry (arg1), a1=0x1, a2=0x0, a3=0x7.
  The `jal` at 0x3028 calls setDACreg with a0=a1 at entry (arg1), a1=0x1, a2=0x2, a3=0x41.
  The `jal` at 0x3040 calls setDACreg with a0=a1 at entry (arg1), a1=0x1, a2=0x0, a3=0x0.
  The `jal` at 0x3058 calls setDACreg with a0=a1 at entry (arg1), a1=0x1, a2=0x1, a3=?.
  The `jal` at 0x306c calls setDACreg with a0=a1 at entry (arg1), a1=0x0, a2=0x1, a3=?.
  The `jal` at 0x3080 calls setDACreg with a0=a1 at entry (arg1), a1=0x0, a2=0x1, a3=?.
  The `beq` branch at 0x2f04 targets 0x2f18, is taken when v0(=ret(odsy_i2cPLLRegWrite)) == 0, and falls through when v0(=ret(odsy_i2cPLLRegWrite)) != 0.
  The `bne` branch at 0x3090 targets 0x3050, is taken when s1(?) < 0x100 (signed), and falls through when s1(?) >= 0x100 (signed).
  The `beq` branch at 0x309c targets 0x2f0c and is always taken.
  The return at 0x2f10 has v0 = one of ret(odsy_i2cPLLRegWrite), ?.
- `odsy_reconfigDCD2FPLD` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)` at 0x30a4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Range: 0x30a4-0x313c (152 bytes).
  It occupies 152 bytes.
  The `sb` at 0x30c4 stores 1 byte to a0 (arg0 at entry) +0x20.
  The `ld` at 0x3130 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `jal` at 0x30c0 calls odsy_i2cPLLRegWrite with a0=a0 at entry (arg0), a1=0x3, a2=0x8, a3=a3 at entry (arg3).
  The `jal` at 0x30e0 calls odsy_i2cPLLRegWrite with a0=a0 at entry (arg0), a1=0x1, a2=0x0, a3=?.
  The `jal` at 0x30f8 calls odsy_i2cPLLRegWrite with a0=a0 at entry (arg0), a1=0x2, a2=0x0, a3=?.
  The `jal` at 0x3110 calls odsy_i2cPLLRegWrite with a0=a0 at entry (arg0), a1=0x3, a2=0x1, a3=?.
  The `jal` at 0x312c calls odsy_usdelay with a0=[a0+16]:8, a1=0x927c0, a2=?, a3=?.
  The `beq` branch at 0x30c8 targets 0x30d8, is taken when v0(=ret(odsy_i2cPLLRegWrite)) == 0, and falls through when v0(=ret(odsy_i2cPLLRegWrite)) != 0.
  The `bne` branch at 0x30e8 targets 0x30d0, is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0, and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `bne` branch at 0x3100 targets 0x30d0, is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0, and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `bne` branch at 0x3118 targets 0x30d0, is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0, and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `beq` branch at 0x3134 targets 0x30d0 and is always taken.
  The return at 0x30d0 has v0 = one of ret(odsy_i2cPLLRegWrite), ret(odsy_usdelay).
- `odsy_LoadDCD2Regs` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)` at 0x313c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Range: 0x313c-0x3320 (484 bytes).
  It occupies 484 bytes.
  3 such `sb` accesses store 1 byte to a1 (arg1 at entry) +0x20, including `sb` at 0x315c, `sb` at 0x3244, `sb` at 0x3284.
  The `lbu` at 0x316c loads 1 byte from a0 (arg0 at entry) +0x117.
  The `lbu` at 0x318c loads 1 byte from a0 (arg0 at entry) +0x11b.
  The `lbu` at 0x31a4 loads 1 byte from a0 (arg0 at entry) +0x11f.
  The `lbu` at 0x31bc loads 1 byte from a0 (arg0 at entry) +0x123.
  The `lbu` at 0x31d4 loads 1 byte from a0 (arg0 at entry) +0x127.
  The `lbu` at 0x31ec loads 1 byte from a0 (arg0 at entry) +0x12b.
  The `lbu` at 0x3204 loads 1 byte from a0 (arg0 at entry) +0x12f.
  The `lbu` at 0x321c loads 1 byte from a0 (arg0 at entry) +0x133.
  The `ld` at 0x3234 loads 8 bytes from a1 (arg1 at entry) +0x10.
  The `lbu` at 0x3254 loads 1 byte from a0 (arg0 at entry) +0xfb.
  The `lbu` at 0x3264 loads 1 byte from a0 (arg0 at entry) +0xff.
  The `lbu` at 0x3294 loads 1 byte from a0 (arg0 at entry) +0x103.
  The `lbu` at 0x32a4 loads 1 byte from a0 (arg0 at entry) +0x107.
  The `lbu` at 0x32bc loads 1 byte from a0 (arg0 at entry) +0x10b.
  The `lbu` at 0x32d4 loads 1 byte from a0 (arg0 at entry) +0x10f.
  The `lbu` at 0x32ec loads 1 byte from a0 (arg0 at entry) +0x113.
  The `lw` at 0x3300 loads 4 bytes from a0 (arg0 at entry) +0x110.
  The `jal` at 0x3150 calls odsy_initDCD2DAC with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3168 calls odsy_i2cPLLRegWrite with a0=a1 at entry (arg1), a1=0x0, a2=[a0+279]:1, a3=?.
  The `jal` at 0x3190 calls odsy_i2cPLLRegWrite with a0=a1 at entry (arg1), a1=0x1, a2=[a0+283]:1, a3=?.
  The `jal` at 0x31a8 calls odsy_i2cPLLRegWrite with a0=a1 at entry (arg1), a1=0x2, a2=[a0+287]:1, a3=?.
  The `jal` at 0x31c0 calls odsy_i2cPLLRegWrite with a0=a1 at entry (arg1), a1=0x3, a2=[a0+291]:1, a3=?.
  The `jal` at 0x31d8 calls odsy_i2cPLLRegWrite with a0=a1 at entry (arg1), a1=0x4, a2=[a0+295]:1, a3=?.
  The `jal` at 0x31f0 calls odsy_i2cPLLRegWrite with a0=a1 at entry (arg1), a1=0x5, a2=[a0+299]:1, a3=?.
  The `jal` at 0x3208 calls odsy_i2cPLLRegWrite with a0=a1 at entry (arg1), a1=0x6, a2=[a0+303]:1, a3=?.
  The `jal` at 0x3220 calls odsy_i2cPLLRegWrite with a0=a1 at entry (arg1), a1=0x7, a2=[a0+307]:1, a3=?.
  The `jal` at 0x3238 calls odsy_usdelay with a0=[a1+16]:8, a1=0x927c0, a2=?, a3=?.
  The `jal` at 0x3250 calls odsy_i2cPLLRegWrite with a0=a1 at entry (arg1), a1=0x5, a2=[a0+251]:1, a3=?.
  The `jal` at 0x3268 calls odsy_i2cPLLRegWrite with a0=a1 at entry (arg1), a1=0x6, a2=[a0+255]:1, a3=?.
  The `jal` at 0x3278 calls odsy_reconfigDCD2FPLD with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x3290 calls odsy_i2cPLLRegWrite with a0=a1 at entry (arg1), a1=0x0, a2=[a0+259]:1, a3=0x17.
  The `jal` at 0x32a8 calls odsy_i2cPLLRegWrite with a0=a1 at entry (arg1), a1=0x1, a2=[a0+263]:1, a3=?.
  The `jal` at 0x32c0 calls odsy_i2cPLLRegWrite with a0=a1 at entry (arg1), a1=0x2, a2=[a0+267]:1, a3=?.
  The `jal` at 0x32d8 calls odsy_i2cPLLRegWrite with a0=a1 at entry (arg1), a1=0x3, a2=[a0+271]:1, a3=?.
  The `jal` at 0x32f0 calls odsy_i2cPLLRegWrite with a0=a1 at entry (arg1), a1=0x4, a2=[a0+275]:1, a3=?.
  The `jal` at 0x3310 calls odsy_i2cPLLRegWrite with a0=a1 at entry (arg1), a1=0x5, a2=?, a3=?.
  The `beq` branch at 0x3170 targets 0x3188, is taken when v0(=ret(odsy_i2cPLLRegWrite)) == 0, and falls through when v0(=ret(odsy_i2cPLLRegWrite)) != 0.
  The `bne` branch at 0x3198 targets 0x3178, is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0, and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `bne` branch at 0x31b0 targets 0x3178, is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0, and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `bne` branch at 0x31c8 targets 0x3178, is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0, and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `bne` branch at 0x31e0 targets 0x3178, is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0, and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `bne` branch at 0x31f8 targets 0x3178, is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0, and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `bne` branch at 0x3210 targets 0x3178, is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0, and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `bne` branch at 0x3228 targets 0x3178, is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0, and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `bne` branch at 0x3258 targets 0x3178, is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0, and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `bne` branch at 0x3270 targets 0x3178, is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0, and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `bne` branch at 0x3298 targets 0x3178, is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0, and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `bne` branch at 0x32b0 targets 0x3178, is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0, and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `bne` branch at 0x32c8 targets 0x3178, is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0, and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `bne` branch at 0x32e0 targets 0x3178, is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0, and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `bne` branch at 0x32f8 targets 0x3178, is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0, and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `beq` branch at 0x3318 targets 0x3178 and is always taken.
  The return at 0x3180 has v0 = ret(odsy_i2cPLLRegWrite).
- `odsyLoadTimingTable` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)` at 0x3320 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Range: 0x3320-0x4e40 (6944 bytes).
  It occupies 6944 bytes.
  65 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2e0, including `ld` at 0x335c, `ld` at 0x33d0, `ld` at 0x3434.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x5720, including `lw` at 0x3360, `lw` at 0x3398, `lw` at 0x3504.
  The `lw` at 0x33b8 loads 4 bytes from a1 (arg1 at entry) +0xd0.
  The `lw` at 0x33e4 loads 4 bytes from [a0+736]:8 +0x233804.
  47 such `sd` accesses store 8 bytes to [a0+736]:8 +0x400000, including `sd` at 0x33f0, `sd` at 0x344c, `sd` at 0x34fc.
  The `lw` at 0x33fc loads 4 bytes from a1 (arg1 at entry) +0xd8.
  The `lw` at 0x3400 loads 4 bytes from a1 (arg1 at entry) +0xd4.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x124, including `lw` at 0x3450, `lw` at 0x38f8, `lw` at 0x4a78.
  2 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x56e8, including `sb` at 0x346c, `sb` at 0x3650.
  The `lw` at 0x3470 loads 4 bytes from a1 (arg1 at entry) +0x9c.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x98, including `lw` at 0x3474, `lw` at 0x349c.
  The `lw` at 0x3478 loads 4 bytes from a1 (arg1 at entry) +0x94.
  The `lw` at 0x347c loads 4 bytes from a1 (arg1 at entry) +0x90.
  The `lw` at 0x3480 loads 4 bytes from a1 (arg1 at entry) +0x8c.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x88, including `lw` at 0x3484, `lw` at 0x3494.
  The `lw` at 0x3488 loads 4 bytes from a1 (arg1 at entry) +0x80.
  The `lw` at 0x348c loads 4 bytes from a1 (arg1 at entry) +0x84.
  The `sw` at 0x3490 stores 4 bytes to a0 (arg0 at entry) +0x28fc.
  The `sw` at 0x3498 stores 4 bytes to a0 (arg0 at entry) +0x2900.
  The `sw` at 0x34a0 stores 4 bytes to a0 (arg0 at entry) +0x2904.
  The `lw` at 0x34a4 loads 4 bytes from a1 (arg1 at entry) +0xe8.
  The `sw` at 0x34a8 stores 4 bytes to a0 (arg0 at entry) +0x2908.
  The `lw` at 0x34b0 loads 4 bytes from a1 (arg1 at entry) +0xec.
  The `sw` at 0x34b4 stores 4 bytes to a0 (arg0 at entry) +0x290c.
  The `lw` at 0x34c4 loads 4 bytes from a1 (arg1 at entry) +0xf0.
  The `sw` at 0x34d0 stores 4 bytes to a0 (arg0 at entry) +0x2910.
  The `sd` at 0x35ac stores 8 bytes to table(0x400000) +0x0.
  8 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2828, including `ld` at 0x35f8, `ld` at 0x3754, `ld` at 0x37d8.
  The `lw` at 0x365c loads 4 bytes from a1 (arg1 at entry) +0x7c.
  The `lw` at 0x3660 loads 4 bytes from a1 (arg1 at entry) +0x74.
  The `lw` at 0x3664 loads 4 bytes from a1 (arg1 at entry) +0x70.
  The `lw` at 0x3668 loads 4 bytes from a1 (arg1 at entry) +0x6c.
  The `lw` at 0x366c loads 4 bytes from a1 (arg1 at entry) +0x68.
  The `lw` at 0x3670 loads 4 bytes from a1 (arg1 at entry) +0x64.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x78, including `lw` at 0x3674, `lw` at 0x4b50.
  The `lw` at 0x3684 loads 4 bytes from a1 (arg1 at entry) +0x60.
  17 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x55f0, including `lw` at 0x36bc, `lw` at 0x3710, `lw` at 0x3768.
  8 such `lhu` accesses load 2 bytes from a0 (arg0 at entry) +0x2830, including `lhu` at 0x36c0, `lhu` at 0x371c, `lhu` at 0x3b40.
  17 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x55f0, including `sw` at 0x36ec, `sw` at 0x373c, `sw` at 0x3790.
  4 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x2828, including `sd` at 0x379c, `sd` at 0x3c24, `sd` at 0x4cdc.
  16 such `sd` accesses store 8 bytes to ?, including `sd` at 0x395c, `sd` at 0x3b28, `sd` at 0x3cb4.
  4 such `lh` accesses load 2 bytes from ?, including `lh` at 0x39a0, `lh` at 0x3cf8, `lh` at 0x3fdc.
  The `lw` at 0x3d98 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `ld` at 0x3da0 loads 8 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0x4090 loads 4 bytes from a1 (arg1 at entry) +0x18.
  The `ld` at 0x40d8 loads 8 bytes from a1 (arg1 at entry) +0x10.
  The `lw` at 0x4368 loads 4 bytes from a1 (arg1 at entry) +0x1c.
  The `sw` at 0x4370 stores 4 bytes to a0 (arg0 at entry) +0x5690.
  The `lwu` at 0x439c loads 4 bytes from a1 (arg1 at entry) +0x20.
  The `lw` at 0x43b8 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `lw` at 0x43c4 loads 4 bytes from a0 (arg0 at entry) +0x5694.
  The `sw` at 0x43d0 stores 4 bytes to a0 (arg0 at entry) +0x5694.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xc8, including `lw` at 0x43f4, `lw` at 0x4464, `lw` at 0x44b0.
  2 such `lhu` accesses load 2 bytes from a0 (arg0 at entry) +0x12a, including `lhu` at 0x4404, `lhu` at 0x4784.
  The `lwu` at 0x4418 loads 4 bytes from a1 (arg1 at entry) +0xb0.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x12e, including `sh` at 0x4438, `sh` at 0x4a68.
  The `lwu` at 0x4448 loads 4 bytes from a1 (arg1 at entry) +0xb4.
  2 such `lhu` accesses load 2 bytes from a0 (arg0 at entry) +0x12e, including `lhu` at 0x448c, `lhu` at 0x4508.
  The `lwu` at 0x456c loads 4 bytes from a1 (arg1 at entry) +0xa0.
  The `lwu` at 0x458c loads 4 bytes from a1 (arg1 at entry) +0xa4.
  The `lwu` at 0x45a8 loads 4 bytes from a1 (arg1 at entry) +0xa8.
  The `lwu` at 0x45c4 loads 4 bytes from a1 (arg1 at entry) +0x28.
  The `lwu` at 0x45e0 loads 4 bytes from a1 (arg1 at entry) +0x2c.
  The `lwu` at 0x45fc loads 4 bytes from a1 (arg1 at entry) +0x30.
  The `lwu` at 0x4618 loads 4 bytes from a1 (arg1 at entry) +0x34.
  The `lwu` at 0x4634 loads 4 bytes from a1 (arg1 at entry) +0x38.
  The `lwu` at 0x4650 loads 4 bytes from a1 (arg1 at entry) +0x3c.
  The `lwu` at 0x466c loads 4 bytes from a1 (arg1 at entry) +0x40.
  The `lwu` at 0x4688 loads 4 bytes from a1 (arg1 at entry) +0x44.
  The `lwu` at 0x46a4 loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `lwu` at 0x46c0 loads 4 bytes from a1 (arg1 at entry) +0x4c.
  The `lwu` at 0x46dc loads 4 bytes from a1 (arg1 at entry) +0x50.
  The `lwu` at 0x46f8 loads 4 bytes from a1 (arg1 at entry) +0x54.
  The `lw` at 0x4728 loads 4 bytes from a1 (arg1 at entry) +0xdc.
  The `lwu` at 0x4758 loads 4 bytes from a1 (arg1 at entry) +0x58.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xb0, including `lw` at 0x4a2c, `lw` at 0x4a6c.
  The `sh` at 0x4a60 stores 2 bytes to a0 (arg0 at entry) +0x2ce.
  The `sh` at 0x4a74 stores 2 bytes to a0 (arg0 at entry) +0x2ca.
  The `lbu` at 0x4aa4 loads 1 byte from a1 (arg1 at entry) +0xeb.
  The `lbu` at 0x4ab8 loads 1 byte from a1 (arg1 at entry) +0xef.
  The `lbu` at 0x4acc loads 1 byte from a1 (arg1 at entry) +0xf3.
  The `lbu` at 0x4b48 loads 1 byte from a1 (arg1 at entry) +0xe3.
  The `jal` at 0x3380 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0x0, a2=?, a3=?.
  The `jal` at 0x3524 calls odsy_i2cPLLRegWrite with a0=a0+22216, a1=?, a2=?, a3=?.
  The `jal` at 0x3538 calls odsy_usdelay with a0=a0 at entry (arg0), a1=0x186a0, a2=?, a3=?.
  The `jal` at 0x354c calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xd, a2=?, a3=?.
  The `jal` at 0x35a8 calls bzero with a0=sp-4976, a1=0x200, a2=?, a3=0x3920400100000001, a4=table(0x400000), a6=[a0+736]:8+0x400000, a7=0x39c0000100000000.
  The `jal` at 0x35b4 calls bzero with a0=sp-4464, a1=0x1000, a2=?, a3=?.
  The `jal` at 0x35f0 calls mutex_spinlock with a0=a0+10272, a1=?, a2=[a0+22304], a3=?.
  The `jal` at 0x360c calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x3618 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x3628 calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x363c calls psema with a0=a0+10256, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3698 calls vsema with a0=a0+10256, a1=a0+10256, a2=?, a3=?.
  The `jal` at 0x36a4 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x36b4 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x37b4 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a5=([a0+22000] | 0x2).
  The `jal` at 0x37d0 calls mutex_spinlock with a0=a0+10272, a1=?, a2=[a0+736]:8+0x400000, a3=?, a6=one of 0x0, 0x5, a7=one of 0x1, 0x4.
  The `jal` at 0x37f0 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x37fc calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x380c calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3830 calls odsy_i2cPLLRegWrite with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x384c calls odsy_i2cPLLRegWrite with a0=?, a1=0x2, a2=?, a3=?.
  The `jal` at 0x3868 calls odsy_i2cPLLRegWrite with a0=?, a1=0x3, a2=?, a3=?.
  The `jal` at 0x3888 calls odsy_i2cPLLRegWrite with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x38a8 calls odsy_i2cPLLRegWrite with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x38c8 calls odsy_i2cPLLRegWrite with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x38e8 calls odsy_i2cPLLRegWrite with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x390c calls odsy_i2cPLLRegWrite with a0=?, a1=0x8, a2=0x5a, a3=[a0+292].
  The `jal` at 0x3920 calls psema with a0=a0+10256, a1=0x19, a2=[a0+22304], a3=?.
  The `jal` at 0x3a94 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0x0, a2=?, a3=?.
  The `jal` at 0x3ac8 calls vsema with a0=a0+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x3ad4 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3b34 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3c3c calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a4=-0x2.
  The `jal` at 0x3c54 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0x0, a2=?, a3=?.
  The `jal` at 0x3df0 calls odsy_poll_dfifo_level with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0x3e28 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0x0, a2=?, a3=0x800.
  The `jal` at 0x3f1c calls odsy_poll_dfifo_level with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0x40f8 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0x0, a2=?, a3=?.
  The `jal` at 0x4124 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xf, a2=?, a3=?.
  The `jal` at 0x41e4 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0x0, a2=?, a3=?.
  The `jal` at 0x4358 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0x3, a2=?, a3=?.
  The `jal` at 0x4550 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0x1, a2=0x3960400100000000, a3=?, a4=0x400000, a5=0xffffffff.
  The `jal` at 0x4740 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xf, a2=?, a3=?.
  The `jal` at 0x47d8 calls odsy_poll_dfifo_level with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0x4804 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0x0, a2=?, a3=?.
  The `jal` at 0x4960 calls odsy_poll_dfifo_level with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0x4998 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xf, a2=?, a3=?.
  The `jal` at 0x4aa0 calls odsy_i2cPLLRegWrite with a0=?, a1=0x1, a2=[a1+235]:1, a3=?, a4=[a1+220].
  The `jal` at 0x4ab4 calls odsy_i2cPLLRegWrite with a0=?, a1=0x2, a2=[a1+239]:1, a3=?.
  The `jal` at 0x4ac8 calls odsy_i2cPLLRegWrite with a0=?, a1=0x6, a2=[a1+243]:1, a3=?.
  The `jal` at 0x4adc calls mutex_spinlock with a0=a0+10272, a1=?, a2=?, a3=[a0+22304].
  The `jal` at 0x4afc calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=[a0+10280]:8.
  The `jal` at 0x4b08 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x4b18 calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x4b2c calls psema with a0=a0+10256, a1=0x19, a2=?, a3=?.
  The `jal` at 0x4b44 calls odsy_i2cPLLRegWrite with a0=?, a1=0x0, a2=[a1+227]:1, a3=?, a4=[a1+220].
  The `jal` at 0x4b5c calls odsy_i2cPLLRegWrite with a0=?, a1=0x7, a2=?, a3=?.
  The `jal` at 0x4b6c calls vsema with a0=a0+10256, a1=?, a2=?, a3=[a0+10280]:8.
  The `jal` at 0x4b78 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x4b88 calls mutex_spinlock with a0=a0+10272, a1=?, a2=0x39f3000100000000, a3=[a0+22304].
  The `jal` at 0x4ba8 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=[a0+10280]:8.
  The `jal` at 0x4bb4 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x4bc4 calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x4bdc calls odsy_LoadDCD2Regs with a0=a1 at entry (arg1), a1=?, a2=0x3, a3=?.
  The `jal` at 0x4bec calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x4cf8 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a5=([a0+22000] | 0x2).
  The `jal` at 0x4d08 calls vsema with a0=a0+10256, a1=?, a2=?, a3=[a0+10280]:8.
  The `jal` at 0x4d14 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x4d24 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x4e30 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a5=([a0+22000] | 0x2).
  The `beq` branch at 0x3374 targets 0x3638, is taken when at(=[a0+22304]) == 0, and falls through when at(=[a0+22304]) != 0.
  The `beq` branch at 0x3390 targets 0x33b4, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x339c targets 0x35ec, is taken when a2(=[a0+22304]) == 0, and falls through when a2(=[a0+22304]) != 0.
  The `blez` branch at 0x3464 targets 0x364c, is taken when a3(=[a0+292]) <= 0 (signed), and falls through when a3(=[a0+292]) > 0 (signed).
  The `beq` branch at 0x3510 targets 0x37c4, is taken when at(=[a0+22304]) == 0, and falls through when at(=[a0+22304]) != 0.
  The `beq` branch at 0x352c targets 0x3820, is taken when v0(=ret(odsy_i2cPLLRegWrite)) == 0, and falls through when v0(=ret(odsy_i2cPLLRegWrite)) != 0.
  The `beq` branch at 0x3544 targets 0x391c, is taken when a2(=[a0+22304]) == 0, and falls through when a2(=[a0+22304]) != 0.
  The `bnel` branch at 0x3554 targets 0x339c, is taken when v0(=ret(odsy_poll_dfifo_level)) != 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) == 0; its branch-likely delay slot `lw a2,22304(s0)` at 0x3558 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x35e4 targets 0x3968 and is always taken.
  The `beq` branch at 0x35fc targets 0x3690, is taken when at(=[a0+10280]:8) == 0, and falls through when at(=[a0+10280]:8) != 0.
  The `beq` branch at 0x3620 targets 0x36b4, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x3630 targets 0x33a4 and is always taken.
  The `beq` branch at 0x3644 targets 0x337c and is always taken.
  The `beq` branch at 0x3688 targets 0x34d4 and is always taken.
  The `beq` branch at 0x36ac targets 0x33a4 and is always taken.
  The `beq` branch at 0x36d4 targets 0x374c, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x3760 targets 0x379c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x37bc targets 0x3628 and is always taken.
  The `beq` branch at 0x37e4 targets 0x3ac8, is taken when at(=[a0+10280]:8) == 0, and falls through when at(=[a0+10280]:8) != 0.
  The `beq` branch at 0x3804 targets 0x3b34, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x3818 targets 0x3518 and is always taken.
  The `bne` branch at 0x3838 targets 0x3534, is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0, and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `bne` branch at 0x3854 targets 0x3534, is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0, and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `bne` branch at 0x3870 targets 0x3534, is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0, and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `bne` branch at 0x3890 targets 0x3534, is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0, and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `bne` branch at 0x38b0 targets 0x3534, is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0, and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `bne` branch at 0x38d0 targets 0x3534, is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0, and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `bne` branch at 0x38f0 targets 0x3534, is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0, and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `bgtz` branch at 0x38fc targets 0x3534, is taken when a3(=[a0+292]) > 0 (signed), and falls through when a3(=[a0+292]) <= 0 (signed).
  The `beq` branch at 0x3914 targets 0x3534 and is always taken.
  The `beq` branch at 0x3928 targets 0x354c and is always taken.
  The `blez` branch at 0x3960 targets 0x39e4, is taken when a6(?) <= 0 (signed), and falls through when a6(?) > 0 (signed).
  The `beq` branch at 0x3984 targets 0x3a84, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x399c targets 0x39c0, is taken when (a4(?) & 0x3) == 0, and falls through when (a4(?) & 0x3) != 0.
  The `beq` branch at 0x39a4 targets 0x39cc, is taken when v0(?) == t2(=0x1), and falls through when v0(?) != t2(=0x1).
  The `bne` branch at 0x39ac targets 0x3930, is taken when v0(?) != t3(=0x2), and falls through when v0(?) == t3(=0x2).
  The `beq` branch at 0x39b8 targets 0x3960 and is always taken.
  The `beq` branch at 0x39c4 targets 0x3960 and is always taken.
  The `beq` branch at 0x39dc targets 0x3960 and is always taken.
  The `beq` branch at 0x39e8 targets 0x3a1c, is taken when (a4(?) & 0x1) == 0, and falls through when (a4(?) & 0x1) != 0.
  The `beq` branch at 0x3a08 targets 0x3c4c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x3a14 targets 0x3ae8, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x3a20 targets 0x3398, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x3a44 targets 0x3e20, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x3a50 targets 0x3398, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x3a5c targets 0x3e54, is taken when v0(?) == v1(=0x3), and falls through when v0(?) != v1(=0x3).
  The `beq` branch at 0x3a64 targets 0x3e80, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x3a6c targets 0x3e94, is taken when v0(?) == t2(=0x1), and falls through when v0(?) != t2(=0x1).
  The `beq` branch at 0x3a74 targets 0x3e9c, is taken when v0(?) == t3(=0x2), and falls through when v0(?) != t3(=0x2).
  The `beq` branch at 0x3a7c targets 0x3cd0 and is always taken.
  The `bne` branch at 0x3ab8 targets 0x3398, is taken when v0(=ret(odsy_poll_dfifo_level)) != 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) == 0.
  The `beq` branch at 0x3ac0 targets 0x398c and is always taken.
  The `beq` branch at 0x3ae0 targets 0x3518 and is always taken.
  The `beq` branch at 0x3aec targets 0x3d38, is taken when (a4(?) & 0x3) == 0, and falls through when (a4(?) & 0x3) != 0.
  The `beq` branch at 0x3af4 targets 0x3b2c, is taken when v0(?) == t2(=0x1), and falls through when v0(?) != t2(=0x1).
  The `beq` branch at 0x3afc targets 0x3ddc, is taken when v0(?) == t3(=0x2), and falls through when v0(?) != t3(=0x2).
  The `beq` branch at 0x3b2c targets 0x3a1c and is always taken.
  The `beq` branch at 0x3b54 targets 0x3bd4, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x3be8 targets 0x3c24, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x3c44 targets 0x380c and is always taken.
  The `beq` branch at 0x3c78 targets 0x3a0c and is always taken.
  The `blez` branch at 0x3cc8 targets 0x3d40, is taken when a2(?) <= 0 (signed), and falls through when a2(?) > 0 (signed).
  The `beq` branch at 0x3cec targets 0x3de4, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x3cf4 targets 0x3d18, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x3cfc targets 0x3d24, is taken when v0(?) == t2(=0x1), and falls through when v0(?) != t2(=0x1).
  The `bne` branch at 0x3d04 targets 0x3c80, is taken when v0(?) != t3(=0x2), and falls through when v0(?) == t3(=0x2).
  The `beq` branch at 0x3d10 targets 0x3cb8 and is always taken.
  The `beq` branch at 0x3d1c targets 0x3cb8 and is always taken.
  The `beq` branch at 0x3d30 targets 0x3cb8 and is always taken.
  The `beq` branch at 0x3d38 targets 0x3b2c and is always taken.
  The `beq` branch at 0x3d44 targets 0x3d78, is taken when (a4(?) & 0x1) == 0, and falls through when (a4(?) & 0x1) != 0.
  The `beq` branch at 0x3d64 targets 0x3f14, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x3d70 targets 0x3ec4, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x3d7c targets 0x3398, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x3d84 targets 0x4120, is taken when a3(?) == t3(=0x2), and falls through when a3(?) != t3(=0x2).
  The `bne` branch at 0x3d90 targets 0x3398, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `blez` branch at 0x3dcc targets 0x4024, is taken when v1(=[a1+8]) <= 0 (signed), and falls through when v1(=[a1+8]) > 0 (signed).
  The `beq` branch at 0x3dd4 targets 0x3fac and is always taken.
  The `beq` branch at 0x3ddc targets 0x3b2c and is always taken.
  The `bne` branch at 0x3e10 targets 0x3398, is taken when v0(=ret(odsy_poll_dfifo_level)) != 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) == 0.
  The `beq` branch at 0x3e18 targets 0x3cf4 and is always taken.
  The `beq` branch at 0x3e4c targets 0x3a4c and is always taken.
  The `beq` branch at 0x3e8c targets 0x3a7c and is always taken.
  The `beq` branch at 0x3ebc targets 0x3a7c and is always taken.
  The `beq` branch at 0x3ec8 targets 0x401c, is taken when (a4(?) & 0x3) == 0, and falls through when (a4(?) & 0x3) != 0.
  The `beq` branch at 0x3ed4 targets 0x3f0c, is taken when at(?) == t2(=0x1), and falls through when at(?) != t2(=0x1).
  The `beq` branch at 0x3edc targets 0x40ec, is taken when v1(?) == t3(=0x2), and falls through when v1(?) != t3(=0x2).
  The `beq` branch at 0x3f0c targets 0x3d78 and is always taken.
  The `beq` branch at 0x3f40 targets 0x3d68 and is always taken.
  The `blez` branch at 0x3fa0 targets 0x4024, is taken when a2(?) <= 0 (signed), and falls through when a2(?) > 0 (signed).
  The `beq` branch at 0x3fc8 targets 0x40f4, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x3fd8 targets 0x3ffc, is taken when (v0(?) & 0x3) == 0, and falls through when (v0(?) & 0x3) != 0.
  The `beq` branch at 0x3fe0 targets 0x4008, is taken when v0(?) == t2(=0x1), and falls through when v0(?) != t2(=0x1).
  The `bne` branch at 0x3fe8 targets 0x3f48, is taken when v0(?) != t3(=0x2), and falls through when v0(?) == t3(=0x2).
  The `beq` branch at 0x3ff4 targets 0x3f80 and is always taken.
  The `beq` branch at 0x4000 targets 0x3f80 and is always taken.
  The `beq` branch at 0x4014 targets 0x3f80 and is always taken.
  The `beq` branch at 0x401c targets 0x3f0c and is always taken.
  The `beq` branch at 0x402c targets 0x4064, is taken when (v1(?) & 0x1) == 0, and falls through when (v1(?) & 0x1) != 0.
  The `beq` branch at 0x4050 targets 0x41e0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x405c targets 0x4184, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x4068 targets 0x3398, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x4094 targets 0x4800, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x40a0 targets 0x3398, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x40b0 targets 0x482c, is taken when at(?) == v1(=0x3), and falls through when at(?) != v1(=0x3).
  The `beq` branch at 0x40bc targets 0x4864, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x40c4 targets 0x4898, is taken when a2(?) == t2(=0x1), and falls through when a2(?) != t2(=0x1).
  The `beq` branch at 0x40cc targets 0x48a4, is taken when a3(?) == t3(=0x2), and falls through when a3(?) != t3(=0x2).
  The `blez` branch at 0x40dc targets 0x42f4, is taken when at(?) <= 0 (signed), and falls through when at(?) > 0 (signed).
  The `beq` branch at 0x40e4 targets 0x4270 and is always taken.
  The `beq` branch at 0x40ec targets 0x3f0c and is always taken.
  The `bne` branch at 0x4110 targets 0x3398, is taken when v0(=ret(odsy_poll_dfifo_level)) != 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) == 0.
  The `beq` branch at 0x4118 targets 0x3fd0 and is always taken.
  The `bne` branch at 0x4144 targets 0x3d8c, is taken when v0(=ret(odsy_poll_dfifo_level)) != 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) == 0.
  The `beq` branch at 0x4154 targets 0x47a4, is taken when at(?) == v1(=0x3), and falls through when at(?) != v1(=0x3).
  The `beq` branch at 0x415c targets 0x3d8c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x417c targets 0x3d8c and is always taken.
  The `beq` branch at 0x418c targets 0x42ec, is taken when (at(?) & 0x3) == 0, and falls through when (at(?) & 0x3) != 0.
  The `beq` branch at 0x4198 targets 0x41d0, is taken when v1(?) == t2(=0x1), and falls through when v1(?) != t2(=0x1).
  The `beq` branch at 0x41a0 targets 0x479c, is taken when a2(?) == t3(=0x2), and falls through when a2(?) != t3(=0x2).
  The `beq` branch at 0x41d8 targets 0x4064 and is always taken.
  The `beq` branch at 0x4204 targets 0x4054 and is always taken.
  The `blez` branch at 0x4264 targets 0x42f4, is taken when a2(?) <= 0 (signed), and falls through when a2(?) > 0 (signed).
  The `beq` branch at 0x428c targets 0x47d4, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x42a0 targets 0x42c8, is taken when (at(?) & 0x3) == 0, and falls through when (at(?) & 0x3) != 0.
  The `beq` branch at 0x42ac targets 0x42d4, is taken when v1(?) == t2(=0x1), and falls through when v1(?) != t2(=0x1).
  The `bne` branch at 0x42b4 targets 0x420c, is taken when a2(?) != t3(=0x2), and falls through when a2(?) == t3(=0x2).
  The `beq` branch at 0x42c0 targets 0x4244 and is always taken.
  The `beq` branch at 0x42cc targets 0x4244 and is always taken.
  The `beq` branch at 0x42e4 targets 0x4244 and is always taken.
  The `beq` branch at 0x42ec targets 0x41d0 and is always taken.
  The `beq` branch at 0x42fc targets 0x4334, is taken when (a3(?) & 0x1) == 0, and falls through when (a3(?) & 0x1) != 0.
  The `beq` branch at 0x4320 targets 0x495c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x432c targets 0x4900, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x4338 targets 0x3398, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x4344 targets 0x4994, is taken when a2(?) == t3(=0x2), and falls through when a2(?) != t3(=0x2).
  The `bne` branch at 0x4350 targets 0x3398, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `bne` branch at 0x4360 targets 0x3398, is taken when v0(=ret(odsy_poll_dfifo_level)) != 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) == 0.
  The `beq` branch at 0x43fc targets 0x4410, is taken when (a2(=[a1+200]) & 0x10) == 0, and falls through when (a2(=[a1+200]) & 0x10) != 0.
  The `beq` branch at 0x440c targets 0x4a28, is taken when a2(=[a0+298]:2) == a3(=0x3), and falls through when a2(=[a0+298]:2) != a3(=0x3).
  The `bne` branch at 0x4558 targets 0x3398, is taken when v0(=ret(odsy_poll_dfifo_level)) != 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) == 0.
  The `beq` branch at 0x4718 targets 0x4ad8, is taken when a3(=[a0+22304]) == 0, and falls through when a3(=[a0+22304]) != 0.
  The `beq` branch at 0x472c targets 0x4a78, is taken when a4(=[a1+220]) == v0(=-0x2), and falls through when a4(=[a1+220]) != v0(=-0x2).
  The `beq` branch at 0x4738 targets 0x4b28, is taken when at(=[a0+22304]) == 0, and falls through when at(=[a0+22304]) != 0.
  The `bne` branch at 0x4748 targets 0x3398, is taken when v0(=ret(odsy_poll_dfifo_level)) != 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) == 0.
  The `beq` branch at 0x477c targets 0x4b88, is taken when a3(=[a0+22304]) == 0, and falls through when a3(=[a0+22304]) != 0.
  The `beq` branch at 0x478c targets 0x4bd4, is taken when v1(=[a0+298]:2) == a2(=0x3), and falls through when v1(=[a0+298]:2) != a2(=0x3).
  The `beq` branch at 0x4794 targets 0x33ac and is always taken.
  The `beq` branch at 0x479c targets 0x41d0 and is always taken.
  The `beq` branch at 0x47cc targets 0x3d8c and is always taken.
  The `bne` branch at 0x47f0 targets 0x3398, is taken when v0(=ret(odsy_poll_dfifo_level)) != 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) == 0.
  The `beq` branch at 0x47f8 targets 0x4294 and is always taken.
  The `beq` branch at 0x4824 targets 0x409c and is always taken.
  The `beq` branch at 0x4890 targets 0x40d0 and is always taken.
  The `beq` branch at 0x48f8 targets 0x40d0 and is always taken.
  The `beq` branch at 0x4908 targets 0x4984, is taken when (a2(?) & 0x3) == 0, and falls through when (a2(?) & 0x3) != 0.
  The `beq` branch at 0x4914 targets 0x494c, is taken when a3(?) == t2(=0x1), and falls through when a3(?) != t2(=0x1).
  The `beq` branch at 0x491c targets 0x498c, is taken when at(?) == t3(=0x2), and falls through when at(?) != t3(=0x2).
  The `beq` branch at 0x4954 targets 0x4334 and is always taken.
  The `beq` branch at 0x497c targets 0x4324 and is always taken.
  The `beq` branch at 0x4984 targets 0x494c and is always taken.
  The `beq` branch at 0x498c targets 0x494c and is always taken.
  The `bne` branch at 0x49ac targets 0x434c, is taken when v0(=ret(odsy_poll_dfifo_level)) != 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) == 0.
  The `beq` branch at 0x49bc targets 0x49f0, is taken when v1(?) == a2(=0x3), and falls through when v1(?) != a2(=0x3).
  The `beq` branch at 0x49c4 targets 0x434c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x49e8 targets 0x434c and is always taken.
  The `beq` branch at 0x4a20 targets 0x434c and is always taken.
  The `beq` branch at 0x4a70 targets 0x443c and is always taken.
  The `blez` branch at 0x4a7c targets 0x4b3c, is taken when v1(=[a0+292]) <= 0 (signed), and falls through when v1(=[a0+292]) > 0 (signed).
  The `bne` branch at 0x4a84 targets 0x4734, is taken when a4(=[a1+220]) != v0(=-0x2), and falls through when a4(=[a1+220]) == v0(=-0x2).
  The `blez` branch at 0x4a90 targets 0x4734, is taken when a2(=[a0+292]) <= 0 (signed), and falls through when a2(=[a0+292]) > 0 (signed).
  The `beq` branch at 0x4ad0 targets 0x4734 and is always taken.
  The `beq` branch at 0x4af0 targets 0x4b6c, is taken when a3(=[a0+10280]:8) == 0, and falls through when a3(=[a0+10280]:8) != 0.
  The `beq` branch at 0x4b10 targets 0x4bec, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x4b20 targets 0x4724 and is always taken.
  The `beq` branch at 0x4b34 targets 0x4740 and is always taken.
  The `beq` branch at 0x4b64 targets 0x4734 and is always taken.
  The `beq` branch at 0x4b80 targets 0x4724 and is always taken.
  The `beq` branch at 0x4b9c targets 0x4d08, is taken when a3(=[a0+10280]:8) == 0, and falls through when a3(=[a0+10280]:8) != 0.
  The `beq` branch at 0x4bbc targets 0x4d24, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x4bcc targets 0x4784 and is always taken.
  The `beq` branch at 0x4be4 targets 0x4794 and is always taken.
  The `beq` branch at 0x4c0c targets 0x4c8c, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x4c9c targets 0x4cdc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x4d00 targets 0x4b18 and is always taken.
  The `beq` branch at 0x4d1c targets 0x4784 and is always taken.
  The `beq` branch at 0x4d44 targets 0x4dc4, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x4dd4 targets 0x4e14, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x4e38 targets 0x4bc4 and is always taken.
  The return at 0x33ac has v0 = one of -0x1, 0x0.
- `gfP_OdsyBRDMGRloadTimingTable` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)` at 0x4e40 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Range: 0x4e40-0x4f84 (324 bytes).
  It occupies 324 bytes.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x20, including `ld` at 0x4e48, `ld` at 0x4ec0, `ld` at 0x4ee4.
  5 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x4e8c, `sw` at 0x4edc, `sw` at 0x4f24.
  The `ld` at 0x4ea4 loads 8 bytes from ?.
  2 such `lw` accesses load 4 bytes from [a0+32]:8 +0x50, including `lw` at 0x4ec4, `lw` at 0x4ee8.
  2 such `sw` accesses store 4 bytes to [a0+32]:8 +0x50, including `sw` at 0x4ed8, `sw` at 0x4ef0.
  The `lw` at 0x4f04 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `jal` at 0x4e68 calls copyin with a0=a2 at entry (arg2), a1=sp-384, a2=0x138, a3=a3 at entry (arg3).
  The `jal` at 0x4e78 calls odsy_copyin_frame_line_tables with a0=sp-384, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x4eb0 calls RRM_CheckValidFault with a0=a0 at entry (arg0), a1=sym(.rodata), a2=?, a3=ret(odsy_copyin_frame_line_tables).
  The `jal` at 0x4ed4 calls odsyLoadTimingTable with a0=?, a1=sp-384, a2=[[a0+32]:8+80]+1, a3=[a0+32]:8.
  The `jal` at 0x4ef4 calls kern_free with a0=?, a1=?, a2=?, a3=?, a4=[[a0+32]:8+80]-1, a5=[a0+32]:8.
  The `jal` at 0x4efc calls kern_free with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x4f10 calls kern_free with a0=?, a1=?, a2=?, a3=a0 at entry (arg0).
  The `jal` at 0x4f18 calls kern_free with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x4f38 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x4f58 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=ret(odsy_copyin_frame_line_tables).
  The `jal` at 0x4f60 calls kern_free with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x4f68 calls kern_free with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x4e70 targets 0x4f34, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `beq` branch at 0x4e84 targets 0x4ea0, is taken when v0(=ret(odsy_copyin_frame_line_tables)) == 0, and falls through when v0(=ret(odsy_copyin_frame_line_tables)) != 0.
  The `beq` branch at 0x4ea8 targets 0x4f54, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bltz` branch at 0x4eb8 targets 0x4f10, is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed), and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed).
  The `beq` branch at 0x4f08 targets 0x4e94 and is always taken.
  The `beq` branch at 0x4f2c targets 0x4e94 and is always taken.
  The `beq` branch at 0x4f4c targets 0x4e94 and is always taken.
  The `beq` branch at 0x4f7c targets 0x4e94 and is always taken.
  The return at 0x4e98 has v0 = one of ret(odsy_copyin_frame_line_tables), [a3], 0xe.
- `gfP_OdsyBRDMGRenableVTG` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)` at 0x4f84 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Range: 0x4f84-0x5388 (1028 bytes).
  It occupies 1028 bytes.
  The `ld` at 0x4f8c loads 8 bytes from a0 (arg0 at entry) +0x20.
  3 such `lw` accesses load 4 bytes from [a0+32]:8 +0x5720, including `lw` at 0x4f94, `lw` at 0x4fc4, `lw` at 0x5044.
  11 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2e0, including `ld` at 0x4fa8, `ld` at 0x5090, `ld` at 0x511c.
  2 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x4fd4, `sw` at 0x5050.
  The `lw` at 0x4ff0 loads 4 bytes from [a0+32]:8 +0x5690.
  The `sw` at 0x4ff8 stores 4 bytes to [a0+32]:8 +0x5690.
  10 such `sd` accesses store 8 bytes to [[a0+32]:8+736]:8 +0x400000, including `sd` at 0x5018, `sd` at 0x5040, `sd` at 0x5190.
  The `lw` at 0x501c loads 4 bytes from [a0+32]:8 +0x5694.
  The `sw` at 0x5038 stores 4 bytes to [a0+32]:8 +0x5694.
  4 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2828, including `ld` at 0x506c, `ld` at 0x50f4, `ld` at 0x51d8.
  8 such `lw` accesses load 4 bytes from [a0+32]:8 +0x55f0, including `lw` at 0x5140, `lw` at 0x5194, `lw` at 0x51e8.
  4 such `lhu` accesses load 2 bytes from [a0+32]:8 +0x2830, including `lhu` at 0x5144, `lhu` at 0x51a0, `lhu` at 0x5278.
  8 such `sw` accesses store 4 bytes to [a0+32]:8 +0x55f0, including `sw` at 0x5170, `sw` at 0x51c0, `sw` at 0x5214.
  2 such `sd` accesses store 8 bytes to [a0+32]:8 +0x2828, including `sd` at 0x5224, `sd` at 0x535c.
  The `jal` at 0x4fb0 calls odsy_poll_dfifo_level with a0=[[a0+32]:8+736]:8, a1=0xe, a2=?, a3=?.
  The `jal` at 0x5064 calls mutex_spinlock with a0=[a0+32]:8+10272, a1=?, a2=?, a3=?, a4=-0x2.
  The `jal` at 0x5080 calls mutex_spinunlock with a0=[a0+32]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x508c calls odsy_poll_dfifo_level with a0=[[a0+32]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x509c calls vsema with a0=[a0+32]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x50b0 calls psema with a0=[a0+32]:8+10256, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x50c8 calls vsema with a0=[a0+32]:8+10256, a1=[a0+32]:8+10256, a2=?, a3=?.
  The `jal` at 0x50d4 calls mutex_spinunlock with a0=[a0+32]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x50ec calls mutex_spinlock with a0=[a0+32]:8+10272, a1=?, a2=([[a0+32]:8+22164] | 0x20000), a3=?, a4=[[a0+32]:8+22304].
  The `jal` at 0x510c calls mutex_spinunlock with a0=[a0+32]:8+10272, a1=ret(mutex_spinlock), a2=[[a0+32]:8+10280]:8, a3=?, a4=[a0+32]:8+10256.
  The `jal` at 0x5118 calls odsy_poll_dfifo_level with a0=[[a0+32]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x5128 calls vsema with a0=[a0+32]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x5138 calls mutex_spinlock with a0=[a0+32]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x523c calls mutex_spinunlock with a0=[a0+32]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x5250 calls vsema with a0=[a0+32]:8+10256, a1=?, a2=[[a0+32]:8+10280]:8, a3=?, a4=[a0+32]:8+10256.
  The `jal` at 0x525c calls mutex_spinunlock with a0=[a0+32]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x526c calls mutex_spinlock with a0=[a0+32]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x5378 calls mutex_spinunlock with a0=[a0+32]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[[a0+32]:8+22000], a6=([[a0+32]:8+22000] | 0x2).
  The `beq` branch at 0x4fa4 targets 0x50ac, is taken when at(=[[a0+32]:8+22304]) == 0, and falls through when at(=[[a0+32]:8+22304]) != 0.
  The `beq` branch at 0x4fbc targets 0x4fec, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x4fc8 targets 0x5060, is taken when v1(=[[a0+32]:8+22304]) == 0, and falls through when v1(=[[a0+32]:8+22304]) != 0.
  The `beq` branch at 0x5048 targets 0x50e4, is taken when a4(=[[a0+32]:8+22304]) == 0, and falls through when a4(=[[a0+32]:8+22304]) != 0.
  The `beq` branch at 0x5058 targets 0x4fe0 and is always taken.
  The `beq` branch at 0x5070 targets 0x50c0, is taken when v1(=[[a0+32]:8+10280]:8) == 0, and falls through when v1(=[[a0+32]:8+10280]:8) != 0.
  The `beq` branch at 0x5094 targets 0x5138, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x50a4 targets 0x4fd0 and is always taken.
  The `beq` branch at 0x50b8 targets 0x4fb0 and is always taken.
  The `beq` branch at 0x50dc targets 0x4fd0 and is always taken.
  The `beq` branch at 0x5100 targets 0x524c, is taken when a2(=[[a0+32]:8+10280]:8) == 0, and falls through when a2(=[[a0+32]:8+10280]:8) != 0.
  The `beq` branch at 0x5120 targets 0x526c, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x5130 targets 0x5050 and is always taken.
  The `beq` branch at 0x5158 targets 0x51d0, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x51e0 targets 0x5220, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x5244 targets 0x509c and is always taken.
  The `beq` branch at 0x5264 targets 0x5050 and is always taken.
  The `beq` branch at 0x528c targets 0x530c, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x531c targets 0x535c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x5380 targets 0x5128 and is always taken.
  The return at 0x4fe4 has v0 = one of 0x0, 0x5.
- `gfP_OdsyBRDMGRi2ccmd` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)` at 0x5388 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Range: 0x5388-0x5424 (156 bytes).
  It occupies 156 bytes.
  The `ld` at 0x5388 loads 8 bytes from a0 (arg0 at entry) +0x20.
  2 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x53dc, `sw` at 0x5414.
  The `jal` at 0x53b4 calls copyin with a0=a2 at entry (arg2), a1=sp-128, a2=0x30, a3=a3 at entry (arg3).
  The `jal` at 0x53c8 calls odsy_i2c_cmd with a0=?, a1=sp-128, a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x5404 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0x53bc targets 0x53f8, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `bltz` branch at 0x53d0 targets 0x53f0, is taken when v0(=ret(odsy_i2c_cmd)) < 0 (signed), and falls through when v0(=ret(odsy_i2c_cmd)) >= 0 (signed).
  The `beq` branch at 0x53f0 targets 0x53e0 and is always taken.
  The `beq` branch at 0x541c targets 0x53e8 and is always taken.
  The return at 0x53e8 has v0 = one of ?, 0xe.
- `gfP_OdsyBRDMGRSetDACGain` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)` at 0x5424 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Range: 0x5424-0x5498 (116 bytes).
  It occupies 116 bytes.
  The `ld` at 0x5424 loads 8 bytes from a0 (arg0 at entry) +0x20.
  2 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x5460, `sw` at 0x5488.
  The `jal` at 0x5448 calls copyin with a0=a2 at entry (arg2), a1=sp-64, a2=0x4, a3=a3 at entry (arg3).
  The `jal` at 0x5458 calls odsySetDACGain with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x547c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0x5450 targets 0x5474, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `beq` branch at 0x5490 targets 0x5468 and is always taken.
  The return at 0x546c has v0 = one of ret(odsySetDACGain), 0xe.
- `odsySetDACGain` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)` at 0x5498 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Range: 0x5498-0x5870 (984 bytes).
  It occupies 984 bytes.
  12 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2e0, including `ld` at 0x54a0, `ld` at 0x557c, `ld` at 0x55a8.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x5720, including `lw` at 0x54a4, `lw` at 0x54dc, `lw` at 0x5538.
  The `lw` at 0x550c loads 4 bytes from [a0+736]:8 +0x233604.
  9 such `sd` accesses store 8 bytes to [a0+736]:8 +0x400000, including `sd` at 0x5534, `sd` at 0x567c, `sd` at 0x56b8.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2828, including `ld` at 0x5558, `ld` at 0x55c0, `ld` at 0x56c4.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x55f0, including `lw` at 0x562c, `lw` at 0x5680, `lw` at 0x56d8.
  4 such `lhu` accesses load 2 bytes from a0 (arg0 at entry) +0x2830, including `lhu` at 0x5630, `lhu` at 0x568c, `lhu` at 0x5764.
  8 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x55f0, including `sw` at 0x565c, `sw` at 0x56ac, `sw` at 0x5700.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x2828, including `sd` at 0x570c, `sd` at 0x5848.
  The `jal` at 0x54c4 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xe, a2=?, a3=?.
  The `jal` at 0x5550 calls mutex_spinlock with a0=a0+10272, a1=?, a2=[a0+22304], a3=?.
  The `jal` at 0x556c calls mutex_spinunlock with a0=a0+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+10280]:8.
  The `jal` at 0x5578 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x5588 calls vsema with a0=a0+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x559c calls psema with a0=a0+10256, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x55b8 calls mutex_spinlock with a0=a0+10272, a1=?, a2=?, a3=[a0+736]:8+0x400000.
  The `jal` at 0x55d4 calls mutex_spinunlock with a0=a0+10272, a1=ret(mutex_spinlock), a2=a0+10256, a3=?.
  The `jal` at 0x55e0 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x55f0 calls vsema with a0=a0+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x5608 calls vsema with a0=a0+10256, a1=a0+10256, a2=?, a3=[a0+10280]:8.
  The `jal` at 0x5614 calls mutex_spinunlock with a0=a0+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x5624 calls mutex_spinlock with a0=a0+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x5724 calls mutex_spinunlock with a0=a0+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a5=([a0+22000] | 0x2).
  The `jal` at 0x573c calls vsema with a0=a0+10256, a1=?, a2=a0+10256, a3=?.
  The `jal` at 0x5748 calls mutex_spinunlock with a0=a0+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x5758 calls mutex_spinlock with a0=a0+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x5860 calls mutex_spinunlock with a0=a0+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=-0x2.
  The `beq` branch at 0x54b8 targets 0x5598, is taken when at(=[a0+22304]) == 0, and falls through when at(=[a0+22304]) != 0.
  The `beq` branch at 0x54d4 targets 0x54f4, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x54e0 targets 0x554c, is taken when a2(=[a0+22304]) == 0, and falls through when a2(=[a0+22304]) != 0.
  The `beq` branch at 0x5508 targets 0x55ac, is taken when a3(=a1) == 0, and falls through when a3(=a1) != 0.
  The `beq` branch at 0x553c targets 0x55b4, is taken when v1(=[a0+22304]) == 0, and falls through when v1(=[a0+22304]) != 0.
  The `beq` branch at 0x5544 targets 0x54ec and is always taken.
  The `beq` branch at 0x555c targets 0x5600, is taken when a3(=[a0+10280]:8) == 0, and falls through when a3(=[a0+10280]:8) != 0.
  The `beq` branch at 0x5580 targets 0x5624, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x5590 targets 0x54e4 and is always taken.
  The `beq` branch at 0x55a4 targets 0x54c0 and is always taken.
  The `beq` branch at 0x55ac targets 0x5514 and is always taken.
  The `beq` branch at 0x55c8 targets 0x5734, is taken when v1(=[a0+10280]:8) == 0, and falls through when v1(=[a0+10280]:8) != 0.
  The `beq` branch at 0x55e8 targets 0x5758, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x55f8 targets 0x5540 and is always taken.
  The `beq` branch at 0x561c targets 0x54e4 and is always taken.
  The `beq` branch at 0x5644 targets 0x56bc, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x56d0 targets 0x570c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x572c targets 0x5588 and is always taken.
  The `beq` branch at 0x5750 targets 0x5540 and is always taken.
  The `beq` branch at 0x5778 targets 0x57f8, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x580c targets 0x5848, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x5868 targets 0x55f0 and is always taken.
  The return at 0x54ec has v0 = one of -0x1, 0x0.
- `gf_OdsyValidateClip` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)`.
  Range: 0x0-0x4dc (1244 bytes).
  It occupies 1244 bytes.
  The `ld` at 0x0 loads 8 bytes from a1 (arg1 at entry) +0x80.
  The `ld` at 0xc loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0x10 loads 8 bytes from a1 (arg1 at entry) +0x78.
  The `ld` at 0x18 loads 8 bytes from a1 (arg1 at entry) +0x70.
  6 such `lw` accesses load 4 bytes from [a1+120]:8 +0x68, including `lw` at 0x20, `lw` at 0x78, `lw` at 0x144.
  The `lw` at 0x24 loads 4 bytes from [a1+112]:8 +0x28.
  The `ld` at 0x2c loads 8 bytes from [a1+120]:8 +0x80.
  2 such `lw` accesses load 4 bytes from [a1+120]:8 +0x78, including `lw` at 0x30, `lw` at 0x3f8.
  The `sw` at 0x40 stores 4 bytes to [a1+112]:8 +0x28.
  2 such `lw` accesses load 4 bytes from [a1+112]:8 +0x2c, including `lw` at 0x44, `lw` at 0x68.
  6 such `lw` accesses load 4 bytes from [a1+120]:8 +0x6c, including `lw` at 0x48, `lw` at 0x7c, `lw` at 0x170.
  2 such `ld` accesses load 8 bytes from [a1+112]:8 +0x60, including `ld` at 0x50, `ld` at 0x64.
  The `sw` at 0x5c stores 4 bytes to [a1+112]:8 +0x2c.
  The `sw` at 0x60 stores 4 bytes to [[a1+112]:8+96]:8 +0x2b60.
  The `sw` at 0x6c stores 4 bytes to [[a1+112]:8+96]:8 +0x2b64.
  The `sw` at 0x8c stores 4 bytes to [a1+112]:8 +0x48.
  The `lw` at 0x94 loads 4 bytes from [a1+128]:8 +0x68.
  The `lw` at 0xa0 loads 4 bytes from [a1+128]:8 +0x6c.
  The `sw` at 0xbc stores 4 bytes to [a1+112]:8 +0x4c.
  8 such `lw` accesses load 4 bytes from ?, including `lw` at 0xc8, `lw` at 0xd0, `lw` at 0x2fc.
  6 such `sw` accesses store 4 bytes to ?, including `sw` at 0xe8, `sw` at 0xf8, `sw` at 0x318.
  The `lw` at 0xfc loads 4 bytes from [a1+120]:8 +0x90.
  The `lw` at 0x104 loads 4 bytes from [a1+112]:8 +0x4.
  6 such `sw` accesses store 4 bytes to [a1+112]:8 +0x4, including `sw` at 0x10c, `sw` at 0x12c, `sw` at 0x140.
  The `lw` at 0x110 loads 4 bytes from [a1+120]:8 +0x98.
  2 such `lw` accesses load 4 bytes from [a1+120]:8 +0x88, including `lw` at 0x130, `lw` at 0x39c.
  2 such `lw` accesses load 4 bytes from [a1+112]:8 +0x8, including `lw` at 0x150, `lw` at 0x408.
  4 such `sw` accesses store 4 bytes to [a1+112]:8 +0x8, including `sw` at 0x16c, `sw` at 0x188, `sw` at 0x424.
  2 such `lw` accesses load 4 bytes from [a1+120]:8 +0x70, including `lw` at 0x190, `lw` at 0x43c.
  2 such `ld` accesses load 8 bytes from [a0+32]:8 +0x7d8, including `ld` at 0x194, `ld` at 0x1d4.
  The `lw` at 0x198 loads 4 bytes from [[a0+32]:8+2008]:8 +0x20.
  2 such `lw` accesses load 4 bytes from [a1+112]:8 +0xc, including `lw` at 0x1b4, `lw` at 0x448.
  4 such `sw` accesses store 4 bytes to [a1+112]:8 +0xc, including `sw` at 0x1c8, `sw` at 0x204, `sw` at 0x460.
  2 such `lw` accesses load 4 bytes from [a1+120]:8 +0x74, including `lw` at 0x1d0, `lw` at 0x464.
  The `lw` at 0x1d8 loads 4 bytes from [[a0+32]:8+2008]:8 +0x24.
  6 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2d0, including `ld` at 0x210, `ld` at 0x25c, `ld` at 0x290.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0x24c, `lw` at 0x3c0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x30, including `sw` at 0x258, `sw` at 0x3c8.
  4 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2e0, including `ld` at 0x278, `ld` at 0x288, `ld` at 0x4b0.
  2 such `sw` accesses store 4 bytes to [a0+32]:8 +0x28a8, including `sw` at 0x280, `sw` at 0x4d0.
  2 such `sw` accesses store 4 bytes to [[a0+32]:8+736]:8 +0x107c, including `sw` at 0x284, `sw` at 0x4d8.
  The `lw` at 0x28c loads 4 bytes from [[a0+32]:8+736]:8 +0x106c.
  The `lw` at 0x2d4 loads 4 bytes from [a1+120]:8 +0x8c.
  The `lw` at 0x49c loads 4 bytes from [a0+32]:8 +0x28a4.
  The `sw` at 0x4c0 stores 4 bytes to [a0+32]:8 +0x28a4.
  The `sw` at 0x4c4 stores 4 bytes to [[a0+32]:8+736]:8 +0x1074.
  The `jal` at 0x20c calls odsy_flow_am_i_attached with a0=[[a0+32]:8+720]:8, a1=?, a2=?, a3=?, a4=0xffffffffff000fff, a5=-0x1000.
  The `jal` at 0x224 calls odsyClipMask with a0=[a0+32]:8, a1=[a1+112]:8, a2=?, a3=?.
  The `jal` at 0x230 calls odsyClipPush with a0=[a0+32]:8, a1=[a1+112]:8, a2=?, a3=?.
  The `jal` at 0x244 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x268 calls gfx_flow_am_i_attached with a0=[[a0+32]:8+720]:8, a1=?, a2=-0x3, a3=?.
  The `jal` at 0x298 calls gfx_flow_detach_me with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=?, a3=[[[a0+32]:8+736]:8+4204], a4=0x1, a5=[[a0+32]:8+736]:8.
  The `jal` at 0x2a0 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x3b8 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3d8 calls gfx_flow_am_i_attached with a0=[[a0+32]:8+720]:8, a1=ret(splhi), a2=?, a3=([a0+48] | 0x2).
  The `jal` at 0x3e8 calls splx with a0=ret(splhi), a1=ret(splhi), a2=?, a3=?.
  The `jal` at 0x490 calls gfx_flow_attach_me with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x4a0 calls gfx_flow_credit_tnum_get with a0=[[a0+32]:8+720]:8, a1=?, a2=?, a3=[[a0+32]:8+10404].
  The `bne` branch at 0xf4 targets 0xc0, is taken when v0(?) < 0x4 (signed), and falls through when v0(?) >= 0x4 (signed).
  The `beq` branch at 0x100 targets 0x2c4, is taken when a2(=[[a1+120]:8+144]) == 0, and falls through when a2(=[[a1+120]:8+144]) != 0.
  The `beq` branch at 0x120 targets 0x394, is taken when (a3(=[[a1+120]:8+152]) & 0x3c00) == 0, and falls through when (a3(=[[a1+120]:8+152]) & 0x3c00) != 0.
  The `bltz` branch at 0x148 targets 0x384, is taken when a0(=[[a1+120]:8+104]) < 0 (signed), and falls through when a0(=[[a1+120]:8+104]) >= 0 (signed).
  The `bltz` branch at 0x178 targets 0x38c, is taken when a7(=[[a1+120]:8+108]) < 0 (signed), and falls through when a7(=[[a1+120]:8+108]) >= 0 (signed).
  The `beq` branch at 0x1a8 targets 0x1b4, is taken when a7(=[[[a0+32]:8+2008]:8+32]) >= t0(=([[a1+120]:8+112] + [[a1+120]:8+104])-1) (unsigned), and falls through when a7(=[[[a0+32]:8+2008]:8+32]) < t0(=([[a1+120]:8+112] + [[a1+120]:8+104])-1) (unsigned).
  The `beq` branch at 0x1ec targets 0x1f8, is taken when a7(=[[[a0+32]:8+2008]:8+36]) >= t0(=([[a1+120]:8+116] + [[a1+120]:8+108])-1) (unsigned), and falls through when a7(=[[[a0+32]:8+2008]:8+36]) < t0(=([[a1+120]:8+116] + [[a1+120]:8+108])-1) (unsigned).
  The `beq` branch at 0x218 targets 0x3b8, is taken when v0(=ret(odsy_flow_am_i_attached)) == 0, and falls through when v0(=ret(odsy_flow_am_i_attached)) != 0.
  The `beq` branch at 0x23c targets 0x2ac, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x260 targets 0x2a0, is taken when a0(=[[a0+32]:8+720]:8) == 0, and falls through when a0(=[[a0+32]:8+720]:8) != 0.
  The `beq` branch at 0x270 targets 0x2a0, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x2d8 targets 0x3f8, is taken when at(=[[a1+120]:8+140]) == 0, and falls through when at(=[[a1+120]:8+140]) != 0.
  The `blez` branch at 0x2e0 targets 0x208, is taken when a7(=[[a1+120]:8+120]) <= 0 (signed), and falls through when a7(=[[a1+120]:8+120]) > 0 (signed).
  The `bne` branch at 0x374 targets 0x2f0, is taken when v0(?) < a7(=[[a1+120]:8+120]) (signed), and falls through when v0(?) >= a7(=[[a1+120]:8+120]) (signed).
  The `beq` branch at 0x37c targets 0x208 and is always taken.
  The `beq` branch at 0x384 targets 0x150 and is always taken.
  The `beq` branch at 0x38c targets 0x180 and is always taken.
  The `beq` branch at 0x3b0 targets 0x144 and is always taken.
  The `beq` branch at 0x3d0 targets 0x3e8, is taken when a0(=[[a0+32]:8+720]:8) == 0, and falls through when a0(=[[a0+32]:8+720]:8) != 0.
  The `beq` branch at 0x3e0 targets 0x48c, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x3f0 targets 0x224 and is always taken.
  The `bne` branch at 0x3fc targets 0x2e0, is taken when at(=[[a1+120]:8+120]) != 0, and falls through when at(=[[a1+120]:8+120]) == 0.
  The `beq` branch at 0x484 targets 0x208 and is always taken.
  The `beq` branch at 0x4d4 targets 0x3e8 and is always taken.
  The return at 0x2bc has v0 = 0x0.
- `odsyClipMask` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)` at 0x4dc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)`.
  Range: 0x4dc-0x604 (296 bytes).
  It occupies 296 bytes.
  The `lw` at 0x4dc loads 4 bytes from a1 (arg1 at entry) +0x34.
  The `ld` at 0x4e0 loads 8 bytes from a1 (arg1 at entry) +0x90.
  The `lw` at 0x4e4 loads 4 bytes from a1 (arg1 at entry) +0x38.
  The `ld` at 0x4e8 loads 8 bytes from [a1+144]:8 +0x78.
  The `lw` at 0x4f0 loads 4 bytes from a1 (arg1 at entry) +0x3c.
  The `lw` at 0x4fc loads 4 bytes from [[a1+144]:8+120]:8 +0x6c.
  The `lw` at 0x508 loads 4 bytes from [[a1+144]:8+120]:8 +0x68.
  The `lw` at 0x510 loads 4 bytes from a1 (arg1 at entry) +0x30.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x544, `lw` at 0x54c.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x5e8, `sw` at 0x5f8.
  The `beq` branch at 0x524 targets 0x544 and is always taken.
  The `beq` branch at 0x53c targets 0x5fc, is taken when v0(?) >= 0x4 (signed), and falls through when v0(?) < 0x4 (signed).
  The `bne` branch at 0x568 targets 0x594, is taken when a5(?) != v1(=0x1), and falls through when a5(?) == v1(=0x1).
  The `bne` branch at 0x570 targets 0x598, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0x578 targets 0x598, is taken when a3(?) != at(=0x1), and falls through when a3(?) == at(=0x1).
  The `bne` branch at 0x580 targets 0x598, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x58c targets 0x52c and is always taken.
  The `beq` branch at 0x5f4 targets 0x52c and is always taken.
  The return at 0x5fc has v0 = ?.
- `odsyClipPush` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)` at 0x604 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)`.
  Range: 0x604-0x898 (660 bytes).
  It occupies 660 bytes.
  The `ld` at 0x604 loads 8 bytes from a0 (arg0 at entry) +0x2e0.
  The `ld` at 0x608 loads 8 bytes from a1 (arg1 at entry) +0x60.
  The `lw` at 0x610 loads 4 bytes from a0 (arg0 at entry) +0x558.
  50 such `sw` accesses store 4 bytes to [a0+736]:8 +0x110000, including `sw` at 0x620, `sw` at 0x62c, `sw` at 0x634.
  The `lw` at 0x678 loads 4 bytes from [a1+96]:8 +0x26a0.
  The `lw` at 0x6a0 loads 4 bytes from a1 (arg1 at entry) +0x28.
  The `lw` at 0x6a8 loads 4 bytes from a1 (arg1 at entry) +0x2c.
  The `lwu` at 0x6c8 loads 4 bytes from a1 (arg1 at entry) +0x4.
  10 such `sd` accesses store 8 bytes to [a0+736]:8 +0x110000, including `sd` at 0x6e4, `sd` at 0x720, `sd` at 0x7e0.
  2 such `lwu` accesses load 4 bytes from ?, including `lwu` at 0x6fc, `lwu` at 0x704.
  The `lw` at 0x740 loads 4 bytes from [a1+96]:8 +0x1b2c.
  The `lwu` at 0x7cc loads 4 bytes from a1 (arg1 at entry) +0x40.
  The `lwu` at 0x7e4 loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `lwu` at 0x7fc loads 4 bytes from a1 (arg1 at entry) +0x44.
  The `lwu` at 0x814 loads 4 bytes from a1 (arg1 at entry) +0x4c.
  The `lwu` at 0x82c loads 4 bytes from a1 (arg1 at entry) +0x50.
  The `lwu` at 0x844 loads 4 bytes from a1 (arg1 at entry) +0x54.
  The `lwu` at 0x85c loads 4 bytes from a1 (arg1 at entry) +0x58.
  The `lwu` at 0x874 loads 4 bytes from a1 (arg1 at entry) +0x5c.
  The `bne` branch at 0x71c targets 0x6f4, is taken when a3(?) < 0x4 (signed), and falls through when a3(?) >= 0x4 (signed).
  The `beq` branch at 0x758 targets 0x890, is taken when (v0(?) & 0x1) == 0, and falls through when (v0(?) & 0x1) != 0.
  The `beq` branch at 0x890 targets 0x7a4 and is always taken.
  The return at 0x888 has v0 = 0x60d00000000.
- `gf_OdsyValidateBanks` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)` at 0x898 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)`.
  Range: 0x898-0x8a0 (8 bytes).
  It occupies 8 bytes.
  The return at 0x898 has v0 = 0x0.
- `gf_OdsySetNullClip` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)` at 0x8a0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)`.
  Range: 0x8a0-0x8d8 (56 bytes).
  It occupies 56 bytes.
  The `sw` at 0x8a0 stores 4 bytes to a0 (arg0 at entry) +0x3c.
  The `sw` at 0x8a4 stores 4 bytes to a0 (arg0 at entry) +0x30.
  The `sw` at 0x8ac stores 4 bytes to a0 (arg0 at entry) +0x28.
  The `sw` at 0x8b0 stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `sw` at 0x8b4 stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `sw` at 0x8b8 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0x8bc stores 4 bytes to a0 (arg0 at entry) +0xc.
  The `sw` at 0x8c4 stores 4 bytes to a0 (arg0 at entry) +0x34.
  The `sw` at 0x8c8 stores 4 bytes to a0 (arg0 at entry) +0x2c.
  The `sw` at 0x8cc stores 4 bytes to a0 (arg0 at entry) +0x8.
  The return at 0x8d0 has v0 = 0x0.
- `gfP_OdsySetClipMask` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)` at 0x8d8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)`.
  Range: 0x8d8-0x9c0 (232 bytes).
  It occupies 232 bytes.
  4 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x8e8, `sw` at 0x95c, `sw` at 0x990.
  The `ld` at 0x8f0 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0x8fc loads 8 bytes from [a0+72]:8 +0x70.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x20, including `ld` at 0x918, `ld` at 0x960.
  2 such `lw` accesses load 4 bytes from [a0+32]:8 +0x50, including `lw` at 0x920, `lw` at 0x964.
  2 such `sw` accesses store 4 bytes to [a0+32]:8 +0x50, including `sw` at 0x938, `sw` at 0x970.
  The `ld` at 0x94c loads 8 bytes from a1 (arg1 at entry) +0x78.
  The `lw` at 0x978 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `jal` at 0x904 calls RRM_CheckValidFault with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x934 calls copyin with a0=a2 at entry (arg2), a1=[[a0+72]:8+112]:8+48, a2=0x10, a3=?, a5=0xe.
  The `jal` at 0x954 calls gf_OdsyValidateClip with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a1 at entry (arg1), a3=[a1+120]:8+96.
  The `jal` at 0x9a4 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=a1 at entry (arg1).
  The `bltz` branch at 0x910 targets 0x98c, is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed), and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed).
  The `bne` branch at 0x93c targets 0x99c, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `beq` branch at 0x994 targets 0x97c and is always taken.
  The `beq` branch at 0x9b8 targets 0x97c and is always taken.
  The return at 0x984 has v0 = one of [a3], 0xe.
- `odsy_ctxsw_timeout` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x0-0x5c (92 bytes).
  It occupies 92 bytes.
  The `jal` at 0x18 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2c calls odsy_teardown with a0=a0 at entry (arg0), a1=?, a2=0x5dc, a3=?.
  The `jal` at 0x48 calls timeout with a0=sym(odsy_ctxsw_timeout), a1=a0 at entry (arg0), a2=0x5dc, a3=?.
  The `beq` branch at 0x24 targets 0x44, is taken when a2(=[sym(odsy_actually_timeout)]) == 0, and falls through when a2(=[sym(odsy_actually_timeout)]) != 0.
  The `beq` branch at 0x54 targets 0x3c and is always taken.
  The return at 0x3c has v0 = one of ret(odsy_teardown), ret(timeout).
- `odsy_glget_timeout` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x5c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x5c-0xb8 (92 bytes).
  It occupies 92 bytes.
  The `jal` at 0x74 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x88 calls odsy_teardown with a0=a0 at entry (arg0), a1=?, a2=0x5dc, a3=?.
  The `jal` at 0xa4 calls timeout with a0=sym(odsy_glget_timeout), a1=a0 at entry (arg0), a2=0x5dc, a3=?.
  The `beq` branch at 0x80 targets 0xa0, is taken when a2(=[sym(odsy_actually_timeout)]) == 0, and falls through when a2(=[sym(odsy_actually_timeout)]) != 0.
  The `beq` branch at 0xb0 targets 0x98 and is always taken.
  The return at 0x98 has v0 = one of ret(odsy_teardown), ret(timeout).
- `gf_OdsyPcxSwitch` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0xb8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0xb8-0xc0 (8 bytes).
  It occupies 8 bytes.
  The return at 0xb8 has v0 = -0x1.
- `gfP_OdsySaveHwShadow` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0xc0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0xc0-0x4cc (1036 bytes).
  It occupies 1036 bytes.
  9 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0xcc, `sw` at 0x148, `sw` at 0x260.
  The `ld` at 0xd4 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0xdc loads 8 bytes from [a0+72]:8 +0x70.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x20, including `ld` at 0xf4, `ld` at 0x280, `ld` at 0x290.
  4 such `lw` accesses load 4 bytes from [a0+32]:8 +0x2d8, including `lw` at 0x108, `lw` at 0x1bc, `lw` at 0x2fc.
  The `ld` at 0x124 loads 8 bytes from a1 (arg1 at entry) +0x70.
  The `ld` at 0x12c loads 8 bytes from [a1+112]:8 +0x70.
  8 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2d0, including `ld` at 0x154, `ld` at 0x1f0, `ld` at 0x228.
  7 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2e0, including `ld` at 0x15c, `ld` at 0x20c, `ld` at 0x21c.
  The `sw` at 0x194 stores 4 bytes to [[a1+112]:8+112]:8 +0x8fc.
  The `sd` at 0x1a0 stores 8 bytes to [[a0+32]:8+736]:8 +0x118000.
  2 such `lw` accesses load 4 bytes from [[a1+112]:8+112]:8 +0x8fc, including `lw` at 0x1a8, `lw` at 0x31c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0x1e0, `lw` at 0x350, `lw` at 0x3d8.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x30, including `sw` at 0x1ec, `sw` at 0x35c, `sw` at 0x3e0.
  3 such `sw` accesses store 4 bytes to [a0+32]:8 +0x28a8, including `sw` at 0x214, `sw` at 0x384, `sw` at 0x4c0.
  3 such `sw` accesses store 4 bytes to [[a0+32]:8+736]:8 +0x107c, including `sw` at 0x218, `sw` at 0x388, `sw` at 0x4c8.
  2 such `lw` accesses load 4 bytes from [[a0+32]:8+736]:8 +0x106c, including `lw` at 0x220, `lw` at 0x390.
  2 such `lw` accesses load 4 bytes from [a0+32]:8 +0x50, including `lw` at 0x284, `lw` at 0x2bc.
  2 such `sw` accesses store 4 bytes to [a0+32]:8 +0x50, including `sw` at 0x28c, `sw` at 0x2c8.
  The `ld` at 0x294 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `ld` at 0x298 loads 8 bytes from [a0+32]:8 +0x8.
  The `ld` at 0x29c loads 8 bytes from [a0+24]:8 +0x78.
  The `lw` at 0x48c loads 4 bytes from [a0+32]:8 +0x28a4.
  The `sw` at 0x4b0 stores 4 bytes to [a0+32]:8 +0x28a4.
  The `sw` at 0x4b4 stores 4 bytes to [[a0+32]:8+736]:8 +0x1074.
  The `jal` at 0xf8 calls RRM_CheckValidFault with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x160 calls odsy_flow_am_i_attached with a0=[[a0+32]:8+720]:8, a1=?, a2=?, a3=?, a4=a2 at entry (arg2), a5=[[a0+32]:8+736]:8.
  The `jal` at 0x19c calls timeout with a0=sym(odsy_ctxsw_timeout), a1=[a0+32]:8, a2=0x5dc, a3=?.
  The `jal` at 0x1b4 calls untimeout with a0=ret(timeout), a1=?, a2=?, a3=?.
  The `jal` at 0x1d4 calls splhi with a0=?, a1=?, a2=?, a3=?, a5=[[a0+32]:8+728].
  The `jal` at 0x1fc calls gfx_flow_am_i_attached with a0=[[a0+32]:8+720]:8, a1=[[a0+32]:8+720]:8, a2=?, a3=?.
  The `jal` at 0x22c calls gfx_flow_detach_me with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=0x1, a3=[[a0+32]:8+736]:8.
  The `jal` at 0x23c calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jalr` at 0x2ac calls (unknown callee) with a0=[a0+32]:8, a1=[[a0+32]:8+8]:8, a2=[[a0+32]:8+8]:8, a3=[[a0+32]:8+8]:8, a4=a2 at entry (arg2).
  The `jal` at 0x310 calls us_delay with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x348 calls splhi with a0=?, a1=?, a2=?, a3=?, a5=[[a0+32]:8+728].
  The `jal` at 0x36c calls gfx_flow_am_i_attached with a0=[[a0+32]:8+720]:8, a1=[[a0+32]:8+720]:8, a2=?, a3=?.
  The `jal` at 0x39c calls gfx_flow_detach_me with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x3ac calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x3d0 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3f4 calls gfx_flow_am_i_attached with a0=[[a0+32]:8+720]:8, a1=[[a0+32]:8+720]:8, a2=?, a3=?, a5=([a0+48] | 0x2).
  The `jal` at 0x404 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x428 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x45c calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?, a4=a2 at entry (arg2).
  The `jal` at 0x480 calls gfx_flow_attach_me with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x490 calls gfx_flow_credit_tnum_get with a0=[[a0+32]:8+720]:8, a1=?, a2=?, a3=?, a6=[[a0+32]:8+10404].
  The `beq` branch at 0xf0 targets 0x414, is taken when at(=[[a0+72]:8+112]:8) == 0, and falls through when at(=[[a0+72]:8+112]:8) != 0.
  The `bltz` branch at 0x100 targets 0x2dc, is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed), and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed).
  The `bne` branch at 0x10c targets 0x448, is taken when v1(=[[a0+32]:8+728]) != 0, and falls through when v1(=[[a0+32]:8+728]) == 0.
  The `bne` branch at 0x114 targets 0x280, is taken when a4(=a2) != 0, and falls through when a4(=a2) == 0.
  The `beq` branch at 0x11c targets 0x264, is taken when s2(=a1) == 0, and falls through when s2(=a1) != 0.
  The `bne` branch at 0x130 targets 0x154, is taken when a5(=[a1+112]:8) != 0, and falls through when a5(=[a1+112]:8) == 0.
  The `beq` branch at 0x16c targets 0x3d0, is taken when v0(=ret(odsy_flow_am_i_attached)) == 0, and falls through when v0(=ret(odsy_flow_am_i_attached)) != 0.
  The `beq` branch at 0x1ac targets 0x2fc, is taken when a4(=[[[a1+112]:8+112]:8+2300]) == 0, and falls through when a4(=[[[a1+112]:8+112]:8+2300]) != 0.
  The `beq` branch at 0x1c4 targets 0x33c, is taken when a5(=[[a0+32]:8+728]) == 0, and falls through when a5(=[[a0+32]:8+728]) != 0.
  The `beq` branch at 0x1cc targets 0x248, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x1f4 targets 0x238, is taken when a1(=[[a0+32]:8+720]:8) == 0, and falls through when a1(=[[a0+32]:8+720]:8) != 0.
  The `beq` branch at 0x204 targets 0x238, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x25c targets 0x14c and is always taken.
  The `beq` branch at 0x278 targets 0x14c and is always taken.
  The `beq` branch at 0x2d4 targets 0x14c and is always taken.
  The `beq` branch at 0x2f4 targets 0x14c and is always taken.
  The `bne` branch at 0x300 targets 0x1b4, is taken when a5(=[[a0+32]:8+728]) != 0, and falls through when a5(=[[a0+32]:8+728]) == 0.
  The `bne` branch at 0x320 targets 0x334, is taken when at(=[[[a1+112]:8+112]:8+2300]) != 0, and falls through when at(=[[[a1+112]:8+112]:8+2300]) == 0.
  The `beq` branch at 0x32c targets 0x30c, is taken when v1(=[[a0+32]:8+728]) == 0, and falls through when v1(=[[a0+32]:8+728]) != 0.
  The `beq` branch at 0x334 targets 0x1b4 and is always taken.
  The `beq` branch at 0x340 targets 0x3b8, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x364 targets 0x3a4, is taken when a1(=[[a0+32]:8+720]:8) == 0, and falls through when a1(=[[a0+32]:8+720]:8) != 0.
  The `beq` branch at 0x374 targets 0x3a8, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x3c8 targets 0x14c and is always taken.
  The `beq` branch at 0x3e8 targets 0x404, is taken when a1(=[[a0+32]:8+720]:8) == 0, and falls through when a1(=[[a0+32]:8+720]:8) != 0.
  The `beq` branch at 0x3fc targets 0x47c, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x40c targets 0x178 and is always taken.
  The `beq` branch at 0x440 targets 0x14c and is always taken.
  The `beq` branch at 0x474 targets 0x14c and is always taken.
  The `beq` branch at 0x4c4 targets 0x404 and is always taken.
  The return at 0x14c has v0 = one of 0x0, 0x1, 0xe, 0x16.
- `gf_OdsyPcxSwap` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x4cc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x4cc-0xa88 (1468 bytes).
  It occupies 1468 bytes.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2d8, including `lw` at 0x4f4, `lw` at 0x688, `lw` at 0x8b8.
  2 such `ld` accesses load 8 bytes from a2 (arg2 at entry) +0x40, including `ld` at 0x528, `ld` at 0x788.
  The `ld` at 0x534 loads 8 bytes from a2 (arg2 at entry) +0x70.
  The `lw` at 0x538 loads 4 bytes from [a2+112]:8 +0x0.
  The `ld` at 0x53c loads 8 bytes from [a2+112]:8 +0x70.
  The `ld` at 0x558 loads 8 bytes from a1 (arg1 at entry) +0x70.
  The `ld` at 0x55c loads 8 bytes from [a1+112]:8 +0x70.
  8 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2d0, including `ld` at 0x560, `ld` at 0x5c4, `ld` at 0x5f8.
  The `ld` at 0x564 loads 8 bytes from a0 (arg0 at entry) +0x48.
  9 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2e0, including `ld` at 0x568, `ld` at 0x5e0, `ld` at 0x5f0.
  3 such `lw` accesses load 4 bytes from [a0+72]:8 +0x30, including `lw` at 0x5b0, `lw` at 0x6b8, `lw` at 0x880.
  3 such `sw` accesses store 4 bytes to [a0+72]:8 +0x30, including `sw` at 0x5c0, `sw` at 0x6c4, `sw` at 0x888.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x28a8, including `sw` at 0x5e8, `sw` at 0x6ec, `sw` at 0xa44.
  3 such `sw` accesses store 4 bytes to [a0+736]:8 +0x107c, including `sw` at 0x5ec, `sw` at 0x6f0, `sw` at 0xa4c.
  2 such `lw` accesses load 4 bytes from [a0+736]:8 +0x106c, including `lw` at 0x5f4, `lw` at 0x6f8.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0x65c, `sw` at 0x834, `sw` at 0x86c.
  The `sd` at 0x670 stores 8 bytes to [a0+736]:8 +0x118000.
  6 such `lw` accesses load 4 bytes from ?, including `lw` at 0x674, `lw` at 0x794, `lw` at 0x8d4.
  The `sw` at 0x73c stores 4 bytes to a0 (arg0 at entry) +0x28b0.
  The `sw` at 0x74c stores 4 bytes to a0 (arg0 at entry) +0x28ac.
  The `sw` at 0x750 stores 4 bytes to [a0+736]:8 +0x4004.
  The `lw` at 0x760 loads 4 bytes from a0 (arg0 at entry) +0x28b0.
  The `sw` at 0x76c stores 4 bytes to [a0+736]:8 +0x400c.
  The `lhu` at 0x770 loads 2 bytes from a2 (arg2 at entry) +0x4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2dc, including `lw` at 0x7a0, `lw` at 0x838.
  19 such `sw` accesses store 4 bytes to [a0+736]:8 +0x110000, including `sw` at 0x7e8, `sw` at 0x7f0, `sw` at 0x7f8.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x860, `ld` at 0x96c.
  The `sw` at 0x874 stores 4 bytes to a0 (arg0 at entry) +0x2dc.
  The `lw` at 0xa10 loads 4 bytes from a0 (arg0 at entry) +0x28a4.
  The `sw` at 0xa34 stores 4 bytes to a0 (arg0 at entry) +0x28a4.
  The `sw` at 0xa38 stores 4 bytes to [a0+736]:8 +0x1074.
  The `jal` at 0x51c calls gfx_waitc_on with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x524 calls gfx_flow_clean_up_other_gfxp with a0=[a2+64]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x56c calls odsy_flow_am_i_attached with a0=[a0+720]:8, a1=[a0+736]:8, a2=?, a3=?.
  The `jal` at 0x5a8 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x5d0 calls gfx_flow_am_i_attached with a0=[a0+720]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x600 calls gfx_flow_detach_me with a0=[a0+720]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x610 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x61c calls gfx_waitc_off with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x66c calls timeout with a0=sym(odsy_ctxsw_timeout), a1=a0 at entry (arg0), a2=0x5dc, a3=?, a4=[a0+736]:8+0x118000, a5=0x70000000000, a6=[a0+736]:8.
  The `jal` at 0x680 calls untimeout with a0=ret(timeout), a1=?, a2=?, a3=?.
  The `jal` at 0x6b0 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x6d4 calls gfx_flow_am_i_attached with a0=[a0+720]:8, a1=?, a2=?, a3=-0x3.
  The `jal` at 0x704 calls gfx_flow_detach_me with a0=[a0+720]:8, a1=[a0+72]:8, a2=?, a3=?, a4=[[a0+736]:8+4204], a5=0x1, a6=[a0+736]:8.
  The `jal` at 0x714 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x720 calls gfx_waitc_off with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x734 calls kvtophys with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x768 calls odsyMMvalidatePcxSwap with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a7=[a0+10416].
  The `jal` at 0x78c calls gf_OdsyValidateClip with a0=[a2+64]:8, a1=a2 at entry (arg2), a2=0x0, a3=0x0.
  The `jal` at 0x878 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x898 calls gfx_flow_am_i_attached with a0=[a0+720]:8, a1=ret(splhi), a2=?, a3=([[a0+72]:8+48] | 0x2).
  The `jal` at 0x8a8 calls splx with a0=ret(splhi), a1=ret(splhi), a2=?, a3=?.
  The `jal` at 0x8cc calls us_delay with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x990 calls odsyDownloadUcode with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x1, a4=[a0+72]:8, a5=0x10443.
  The `jal` at 0x9a4 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x9ac calls curproc with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x9b8 calls psignal with a0=ret(curproc), a1=0x9, a2=?, a3=?.
  The `jal` at 0x9cc calls odsyRestoreXform with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x9d8 calls odsyRestoreRaster with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x9e4 calls odsyRestoreGfe with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x9f0 calls odsyRestartContext with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xa04 calls gfx_flow_attach_me with a0=[a0+720]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0xa14 calls gfx_flow_credit_tnum_get with a0=[a0+720]:8, a1=?, a2=[a0+10404], a3=?.
  The `jal` at 0xa74 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x514 targets 0xa50, is taken when at(=[a0+728]) != 0, and falls through when at(=[a0+728]) == 0.
  The `beq` branch at 0x52c targets 0x550, is taken when s1(=a2) == 0, and falls through when s1(=a2) != 0.
  The `beq` branch at 0x540 targets 0x560, is taken when s5(=a1) == 0, and falls through when s5(=a1) != 0.
  The `beq` branch at 0x548 targets 0x558 and is always taken.
  The `beq` branch at 0x550 targets 0x560, is taken when s5(=a1) == 0, and falls through when s5(=a1) != 0.
  The `beq` branch at 0x578 targets 0x878, is taken when v0(=ret(odsy_flow_am_i_attached)) == 0, and falls through when v0(=ret(odsy_flow_am_i_attached)) != 0.
  The `bne` branch at 0x580 targets 0x634, is taken when s3(?) != 0, and falls through when s3(?) == 0.
  The `bne` branch at 0x588 targets 0x734, is taken when s2(?) != 0, and falls through when s2(?) == 0.
  The `beq` branch at 0x5a0 targets 0x618, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x5c8 targets 0x608, is taken when a0(=[a0+720]:8) == 0, and falls through when a0(=[a0+720]:8) != 0.
  The `beq` branch at 0x5d8 targets 0x60c, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x678 targets 0x8b8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x68c targets 0x8f4, is taken when at(=[a0+728]) == 0, and falls through when at(=[a0+728]) != 0.
  The `beq` branch at 0x6a8 targets 0x71c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x6cc targets 0x70c, is taken when a0(=[a0+720]:8) == 0, and falls through when a0(=[a0+720]:8) != 0.
  The `beq` branch at 0x6dc targets 0x710, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x72c targets 0x62c and is always taken.
  The `beq` branch at 0x778 targets 0x794, is taken when (at(=[a2+4]:2) & 0x2) == 0, and falls through when (at(=[a2+4]:2) & 0x2) != 0.
  The `beq` branch at 0x798 targets 0x9c8, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x7a8 targets 0x9cc, is taken when v0(=[a0+732]) == a3(=0x7f), and falls through when v0(=[a0+732]) != a3(=0x7f).
  The `beq` branch at 0x7b0 targets 0x9c8, is taken when v0(=[a0+732]) == 0, and falls through when v0(=[a0+732]) != 0.
  The `beq` branch at 0x830 targets 0x590, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0x83c targets 0x590, is taken when v0(=[a0+732]) == s4(?), and falls through when v0(=[a0+732]) != s4(?).
  The `beq` branch at 0x848 targets 0x870, is taken when v0(=[a0+732]) == a3(=0x7f), and falls through when v0(=[a0+732]) != a3(=0x7f).
  The `beq` branch at 0x864 targets 0x870, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x870 targets 0x590 and is always taken.
  The `beq` branch at 0x890 targets 0x8a8, is taken when a0(=[a0+720]:8) == 0, and falls through when a0(=[a0+720]:8) != 0.
  The `beq` branch at 0x8a0 targets 0xa00, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x8b0 targets 0x580 and is always taken.
  The `bne` branch at 0x8bc targets 0x680, is taken when a5(=[a0+728]) != 0, and falls through when a5(=[a0+728]) == 0.
  The `bne` branch at 0x8d8 targets 0x8ec, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x8e4 targets 0x8c8, is taken when v1(=[a0+728]) == 0, and falls through when v1(=[a0+728]) != 0.
  The `beq` branch at 0x8ec targets 0x680 and is always taken.
  The `beq` branch at 0x90c targets 0x928, is taken when a3(?) >= 0xb (unsigned), and falls through when a3(?) < 0xb (unsigned).
  The `beq` branch at 0x970 targets 0x588, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x97c targets 0x588, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x998 targets 0x588, is taken when v0(=ret(odsyDownloadUcode)) == 0, and falls through when v0(=ret(odsyDownloadUcode)) != 0.
  The `beq` branch at 0x9c0 targets 0x588 and is always taken.
  The `beq` branch at 0x9f8 targets 0x830 and is always taken.
  The `beq` branch at 0xa48 targets 0x8a8 and is always taken.
  The `beq` branch at 0xa80 targets 0x62c and is always taken.
  The return at 0x62c has v0 = one of -0x1, 0x0.
- `odsyRestoreRaster` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0xa88 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0xa88-0x1e0c (4996 bytes).
  It occupies 4996 bytes.
  The `lw` at 0xa90 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `ld` at 0xa98 loads 8 bytes from a1 (arg1 at entry) +0x60.
  The `lw` at 0xab8 loads 4 bytes from a0 (arg0 at entry) +0x2dc.
  The `ld` at 0xae4 loads 8 bytes from a0 (arg0 at entry) +0x2e0.
  582 such `sw` accesses store 4 bytes to [a0+736]:8 +0x110000, including `sw` at 0xaf4, `sw` at 0xafc, `sw` at 0xb04.
  The `lw` at 0xb48 loads 4 bytes from [a1+96]:8 +0x1b24.
  The `lw` at 0xb50 loads 4 bytes from [a1+96]:8 +0x1b28.
  The `lw` at 0xb58 loads 4 bytes from [a1+96]:8 +0x1b2c.
  The `lw` at 0xb60 loads 4 bytes from [a1+96]:8 +0x1b30.
  The `lw` at 0xb94 loads 4 bytes from [a1+96]:8 +0xe8.
  The `lw` at 0xb9c loads 4 bytes from [a1+96]:8 +0xec.
  The `lw` at 0xba4 loads 4 bytes from [a1+96]:8 +0xf0.
  The `lw` at 0xbac loads 4 bytes from [a1+96]:8 +0xf4.
  The `lw` at 0xbd0 loads 4 bytes from [a1+96]:8 +0xe4.
  The `lw` at 0xbe4 loads 4 bytes from [a1+96]:8 +0xa8.
  The `lw` at 0xbec loads 4 bytes from [a1+96]:8 +0xac.
  The `lw` at 0xc0c loads 4 bytes from [a1+96]:8 +0x1b34.
  The `lw` at 0xc14 loads 4 bytes from [a1+96]:8 +0x1b38.
  The `lw` at 0xc1c loads 4 bytes from [a1+96]:8 +0x1b3c.
  The `lw` at 0xc24 loads 4 bytes from [a1+96]:8 +0x1b40.
  The `lw` at 0xc2c loads 4 bytes from [a1+96]:8 +0x1b44.
  The `lw` at 0xc50 loads 4 bytes from [a1+96]:8 +0x84.
  The `lw` at 0xc64 loads 4 bytes from [a1+96]:8 +0x88.
  The `lw` at 0xc78 loads 4 bytes from [a1+96]:8 +0xc8.
  The `lw` at 0xc8c loads 4 bytes from [a1+96]:8 +0x8c.
  The `lw` at 0xca0 loads 4 bytes from [a1+96]:8 +0x1cb0.
  The `lw` at 0xcb4 loads 4 bytes from [a1+96]:8 +0xcc.
  The `lw` at 0xcbc loads 4 bytes from [a1+96]:8 +0xd0.
  The `lw` at 0xcc4 loads 4 bytes from [a1+96]:8 +0xd4.
  The `lw` at 0xcd8 loads 4 bytes from [a1+96]:8 +0x80.
  The `lw` at 0xcec loads 4 bytes from [a1+96]:8 +0x0.
  The `lw` at 0xcf4 loads 4 bytes from [a1+96]:8 +0x4.
  The `lw` at 0xcfc loads 4 bytes from [a1+96]:8 +0x8.
  The `lw` at 0xd04 loads 4 bytes from [a1+96]:8 +0xc.
  The `lw` at 0xd0c loads 4 bytes from [a1+96]:8 +0x10.
  The `lw` at 0xd14 loads 4 bytes from [a1+96]:8 +0x14.
  The `lw` at 0xd1c loads 4 bytes from [a1+96]:8 +0x18.
  The `lw` at 0xd24 loads 4 bytes from [a1+96]:8 +0x1c.
  The `lw` at 0xd2c loads 4 bytes from [a1+96]:8 +0x20.
  The `lw` at 0xd34 loads 4 bytes from [a1+96]:8 +0x24.
  The `lw` at 0xd3c loads 4 bytes from [a1+96]:8 +0x28.
  The `lw` at 0xd44 loads 4 bytes from [a1+96]:8 +0x2c.
  The `lw` at 0xd4c loads 4 bytes from [a1+96]:8 +0x30.
  The `lw` at 0xd54 loads 4 bytes from [a1+96]:8 +0x34.
  The `lw` at 0xd5c loads 4 bytes from [a1+96]:8 +0x38.
  The `lw` at 0xd64 loads 4 bytes from [a1+96]:8 +0x3c.
  The `lw` at 0xd78 loads 4 bytes from [a1+96]:8 +0x40.
  The `lw` at 0xd80 loads 4 bytes from [a1+96]:8 +0x44.
  The `lw` at 0xd88 loads 4 bytes from [a1+96]:8 +0x48.
  The `lw` at 0xd90 loads 4 bytes from [a1+96]:8 +0x4c.
  The `lw` at 0xd98 loads 4 bytes from [a1+96]:8 +0x50.
  The `lw` at 0xda0 loads 4 bytes from [a1+96]:8 +0x54.
  The `lw` at 0xda8 loads 4 bytes from [a1+96]:8 +0x58.
  The `lw` at 0xdb0 loads 4 bytes from [a1+96]:8 +0x5c.
  The `lw` at 0xdb8 loads 4 bytes from [a1+96]:8 +0x60.
  The `lw` at 0xdc0 loads 4 bytes from [a1+96]:8 +0x64.
  The `lw` at 0xdc8 loads 4 bytes from [a1+96]:8 +0x68.
  The `lw` at 0xdd0 loads 4 bytes from [a1+96]:8 +0x6c.
  The `lw` at 0xdd8 loads 4 bytes from [a1+96]:8 +0x70.
  The `lw` at 0xde0 loads 4 bytes from [a1+96]:8 +0x74.
  The `lw` at 0xde8 loads 4 bytes from [a1+96]:8 +0x78.
  The `lw` at 0xdf0 loads 4 bytes from [a1+96]:8 +0x7c.
  The `lw` at 0xe04 loads 4 bytes from [a1+96]:8 +0xdc.
  The `lw` at 0xe0c loads 4 bytes from [a1+96]:8 +0xe0.
  The `lw` at 0xe20 loads 4 bytes from [a1+96]:8 +0x138.
  The `lw` at 0xe28 loads 4 bytes from [a1+96]:8 +0x13c.
  The `lw` at 0xe30 loads 4 bytes from [a1+96]:8 +0x140.
  The `lw` at 0xe38 loads 4 bytes from [a1+96]:8 +0x144.
  The `lw` at 0xe40 loads 4 bytes from [a1+96]:8 +0x148.
  The `lw` at 0xe54 loads 4 bytes from [a1+96]:8 +0x14c.
  The `lw` at 0xe5c loads 4 bytes from [a1+96]:8 +0x150.
  The `lw` at 0xe64 loads 4 bytes from [a1+96]:8 +0x154.
  The `lw` at 0xe6c loads 4 bytes from [a1+96]:8 +0x158.
  The `lw` at 0xe74 loads 4 bytes from [a1+96]:8 +0x15c.
  The `lw` at 0xe7c loads 4 bytes from [a1+96]:8 +0x160.
  The `lw` at 0xe84 loads 4 bytes from [a1+96]:8 +0x164.
  The `lw` at 0xe98 loads 4 bytes from [a1+96]:8 +0x1b20.
  The `lw` at 0xeac loads 4 bytes from [a1+96]:8 +0x1cac.
  The `lw` at 0xec0 loads 4 bytes from [a1+96]:8 +0xbc.
  The `lw` at 0xec8 loads 4 bytes from [a1+96]:8 +0xc0.
  The `lw` at 0xed0 loads 4 bytes from [a1+96]:8 +0xc4.
  The `lw` at 0xed8 loads 4 bytes from [a1+96]:8 +0x1170.
  4 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1174, including `lw` at 0xf00, `lw` at 0x1984, `lw` at 0x1cec.
  4 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1178, including `lw` at 0xf08, `lw` at 0x198c, `lw` at 0x1cf4.
  3 such `lw` accesses load 4 bytes from [a1+96]:8 +0x117c, including `lw` at 0xf10, `lw` at 0x1994, `lw` at 0x1d4c.
  3 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1180, including `lw` at 0xf18, `lw` at 0x199c, `lw` at 0x1d54.
  3 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1184, including `lw` at 0xf20, `lw` at 0x19a4, `lw` at 0x1d5c.
  3 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1188, including `lw` at 0xf28, `lw` at 0x19ac, `lw` at 0x1d64.
  3 such `lw` accesses load 4 bytes from [a1+96]:8 +0x118c, including `lw` at 0xf30, `lw` at 0x19b4, `lw` at 0x1d6c.
  3 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1190, including `lw` at 0xf38, `lw` at 0x19bc, `lw` at 0x1d74.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1194, including `lw` at 0xf4c, `lw` at 0x19d0.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1198, including `lw` at 0xf54, `lw` at 0x19d8.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x119c, including `lw` at 0xf5c, `lw` at 0x19e0.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x11a0, including `lw` at 0xf64, `lw` at 0x19e8.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x11a4, including `lw` at 0xf6c, `lw` at 0x19f0.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x11a8, including `lw` at 0xf74, `lw` at 0x19f8.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x11ac, including `lw` at 0xf7c, `lw` at 0x1a00.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x11b0, including `lw` at 0xf84, `lw` at 0x1a08.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x11b4, including `lw` at 0xf98, `lw` at 0x1a1c.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x11b8, including `lw` at 0xfa0, `lw` at 0x1a24.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x11bc, including `lw` at 0xfa8, `lw` at 0x1a2c.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x11c0, including `lw` at 0xfb0, `lw` at 0x1a34.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x11c4, including `lw` at 0xfb8, `lw` at 0x1a3c.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x11c8, including `lw` at 0xfc0, `lw` at 0x1a44.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x11cc, including `lw` at 0xfc8, `lw` at 0x1a4c.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x11d0, including `lw` at 0xfd0, `lw` at 0x1a54.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x11d4, including `lw` at 0xfe4, `lw` at 0x1a68.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x11d8, including `lw` at 0xfec, `lw` at 0x1a70.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x11dc, including `lw` at 0xff4, `lw` at 0x1a78.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x11e0, including `lw` at 0xffc, `lw` at 0x1a80.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x11e4, including `lw` at 0x1004, `lw` at 0x1a88.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x11e8, including `lw` at 0x100c, `lw` at 0x1a90.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x11ec, including `lw` at 0x1014, `lw` at 0x1a98.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x11f0, including `lw` at 0x101c, `lw` at 0x1aa0.
  The `lw` at 0x1024 loads 4 bytes from [a1+96]:8 +0x106c.
  4 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1070, including `lw` at 0x104c, `lw` at 0x1ab8, `lw` at 0x1d0c.
  4 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1074, including `lw` at 0x1054, `lw` at 0x1ac0, `lw` at 0x1d14.
  4 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1078, including `lw` at 0x105c, `lw` at 0x1ac8, `lw` at 0x1d1c.
  4 such `lw` accesses load 4 bytes from [a1+96]:8 +0x107c, including `lw` at 0x1064, `lw` at 0x1ad0, `lw` at 0x1d24.
  3 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1080, including `lw` at 0x106c, `lw` at 0x1ad8, `lw` at 0x1da8.
  3 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1084, including `lw` at 0x1074, `lw` at 0x1ae0, `lw` at 0x1db0.
  3 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1088, including `lw` at 0x107c, `lw` at 0x1ae8, `lw` at 0x1db8.
  3 such `lw` accesses load 4 bytes from [a1+96]:8 +0x108c, including `lw` at 0x1084, `lw` at 0x1af0, `lw` at 0x1dc0.
  3 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1090, including `lw` at 0x108c, `lw` at 0x1af8, `lw` at 0x1dc8.
  3 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1094, including `lw` at 0x1094, `lw` at 0x1b00, `lw` at 0x1dd0.
  3 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1098, including `lw` at 0x109c, `lw` at 0x1b08, `lw` at 0x1dd8.
  3 such `lw` accesses load 4 bytes from [a1+96]:8 +0x109c, including `lw` at 0x10a4, `lw` at 0x1b10, `lw` at 0x1de0.
  3 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10a0, including `lw` at 0x10ac, `lw` at 0x1b18, `lw` at 0x1de8.
  3 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10a4, including `lw` at 0x10b4, `lw` at 0x1b20, `lw` at 0x1df0.
  3 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10a8, including `lw` at 0x10bc, `lw` at 0x1b28, `lw` at 0x1df8.
  3 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10ac, including `lw` at 0x10c4, `lw` at 0x1b30, `lw` at 0x1e00.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10b0, including `lw` at 0x10d8, `lw` at 0x1b44.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10b4, including `lw` at 0x10e0, `lw` at 0x1b4c.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10b8, including `lw` at 0x10e8, `lw` at 0x1b54.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10bc, including `lw` at 0x10f0, `lw` at 0x1b5c.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10c0, including `lw` at 0x10f8, `lw` at 0x1b64.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10c4, including `lw` at 0x1100, `lw` at 0x1b6c.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10c8, including `lw` at 0x1108, `lw` at 0x1b74.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10cc, including `lw` at 0x1110, `lw` at 0x1b7c.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10d0, including `lw` at 0x1118, `lw` at 0x1b84.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10d4, including `lw` at 0x1120, `lw` at 0x1b8c.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10d8, including `lw` at 0x1128, `lw` at 0x1b94.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10dc, including `lw` at 0x1130, `lw` at 0x1b9c.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10e0, including `lw` at 0x1138, `lw` at 0x1ba4.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10e4, including `lw` at 0x1140, `lw` at 0x1bac.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10e8, including `lw` at 0x1148, `lw` at 0x1bb4.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10ec, including `lw` at 0x1150, `lw` at 0x1bbc.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10f0, including `lw` at 0x1164, `lw` at 0x1bd0.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10f4, including `lw` at 0x116c, `lw` at 0x1bd8.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10f8, including `lw` at 0x1174, `lw` at 0x1be0.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10fc, including `lw` at 0x117c, `lw` at 0x1be8.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1100, including `lw` at 0x1184, `lw` at 0x1bf0.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1104, including `lw` at 0x118c, `lw` at 0x1bf8.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1108, including `lw` at 0x1194, `lw` at 0x1c00.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x110c, including `lw` at 0x119c, `lw` at 0x1c08.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1110, including `lw` at 0x11a4, `lw` at 0x1c10.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1114, including `lw` at 0x11ac, `lw` at 0x1c18.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1118, including `lw` at 0x11b4, `lw` at 0x1c20.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x111c, including `lw` at 0x11bc, `lw` at 0x1c28.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1120, including `lw` at 0x11c4, `lw` at 0x1c30.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1124, including `lw` at 0x11cc, `lw` at 0x1c38.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1128, including `lw` at 0x11d4, `lw` at 0x1c40.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x112c, including `lw` at 0x11dc, `lw` at 0x1c48.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1130, including `lw` at 0x11f0, `lw` at 0x1c5c.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1134, including `lw` at 0x11f8, `lw` at 0x1c64.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1138, including `lw` at 0x1200, `lw` at 0x1c6c.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x113c, including `lw` at 0x1208, `lw` at 0x1c74.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1140, including `lw` at 0x1210, `lw` at 0x1c7c.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1144, including `lw` at 0x1218, `lw` at 0x1c84.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1148, including `lw` at 0x1220, `lw` at 0x1c8c.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x114c, including `lw` at 0x1228, `lw` at 0x1c94.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1150, including `lw` at 0x1230, `lw` at 0x1c9c.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1154, including `lw` at 0x1238, `lw` at 0x1ca4.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1158, including `lw` at 0x1240, `lw` at 0x1cac.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x115c, including `lw` at 0x1248, `lw` at 0x1cb4.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1160, including `lw` at 0x1250, `lw` at 0x1cbc.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1164, including `lw` at 0x1258, `lw` at 0x1cc4.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1168, including `lw` at 0x1260, `lw` at 0x1ccc.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x116c, including `lw` at 0x1268, `lw` at 0x1cd4.
  The `lw` at 0x1288 loads 4 bytes from [a1+96]:8 +0xb0.
  The `lw` at 0x129c loads 4 bytes from [a1+96]:8 +0xb4.
  The `lw` at 0x12ac loads 4 bytes from [a1+96]:8 +0xb8.
  The `lw` at 0x12bc loads 4 bytes from [a1+96]:8 +0xd8.
  The `lw` at 0x12d0 loads 4 bytes from [a1+96]:8 +0x90.
  The `lw` at 0x12d8 loads 4 bytes from [a1+96]:8 +0x94.
  The `lw` at 0x12e0 loads 4 bytes from [a1+96]:8 +0x98.
  The `lw` at 0x12e8 loads 4 bytes from [a1+96]:8 +0x9c.
  The `lw` at 0x12f0 loads 4 bytes from [a1+96]:8 +0xa0.
  The `lw` at 0x12f8 loads 4 bytes from [a1+96]:8 +0xa4.
  The `lw` at 0x130c loads 4 bytes from [a1+96]:8 +0x1b94.
  The `lw` at 0x1314 loads 4 bytes from [a1+96]:8 +0x1b98.
  The `lw` at 0x131c loads 4 bytes from [a1+96]:8 +0x1b9c.
  The `lw` at 0x1324 loads 4 bytes from [a1+96]:8 +0x1ba0.
  The `lw` at 0x132c loads 4 bytes from [a1+96]:8 +0x1ba4.
  The `lw` at 0x1334 loads 4 bytes from [a1+96]:8 +0x1ba8.
  The `lw` at 0x1348 loads 4 bytes from [a1+96]:8 +0x1bac.
  The `lw` at 0x1350 loads 4 bytes from [a1+96]:8 +0x1bb0.
  The `lw` at 0x1358 loads 4 bytes from [a1+96]:8 +0x1bb4.
  The `lw` at 0x1360 loads 4 bytes from [a1+96]:8 +0x1bb8.
  The `lw` at 0x1374 loads 4 bytes from [a1+96]:8 +0x11f4.
  The `lw` at 0x137c loads 4 bytes from [a1+96]:8 +0x11f8.
  The `lw` at 0x138c loads 4 bytes from [a1+96]:8 +0x11fc.
  44 such `lw` accesses load 4 bytes from ?, including `lw` at 0x13bc, `lw` at 0x1408, `lw` at 0x1454.
  The `lw` at 0x160c loads 4 bytes from [a1+96]:8 +0x468.
  The `lw` at 0x164c loads 4 bytes from [a1+96]:8 +0x1a04.
  The `lw` at 0x1654 loads 4 bytes from [a1+96]:8 +0x1a08.
  The `lw` at 0x165c loads 4 bytes from [a1+96]:8 +0x1a0c.
  The `lw` at 0x1670 loads 4 bytes from [a1+96]:8 +0x1cb4.
  The `lw` at 0x1684 loads 4 bytes from [a1+96]:8 +0xf8.
  The `lw` at 0x168c loads 4 bytes from [a1+96]:8 +0xfc.
  The `lw` at 0x1694 loads 4 bytes from [a1+96]:8 +0x100.
  The `lw` at 0x169c loads 4 bytes from [a1+96]:8 +0x104.
  The `lw` at 0x16a4 loads 4 bytes from [a1+96]:8 +0x108.
  The `lw` at 0x16ac loads 4 bytes from [a1+96]:8 +0x10c.
  The `lw` at 0x16b4 loads 4 bytes from [a1+96]:8 +0x110.
  The `lw` at 0x16bc loads 4 bytes from [a1+96]:8 +0x114.
  The `lw` at 0x16c4 loads 4 bytes from [a1+96]:8 +0x118.
  The `lw` at 0x16cc loads 4 bytes from [a1+96]:8 +0x11c.
  The `lw` at 0x16d4 loads 4 bytes from [a1+96]:8 +0x120.
  The `lw` at 0x16dc loads 4 bytes from [a1+96]:8 +0x124.
  The `lw` at 0x16e4 loads 4 bytes from [a1+96]:8 +0x128.
  The `lw` at 0x16ec loads 4 bytes from [a1+96]:8 +0x12c.
  The `lw` at 0x16f4 loads 4 bytes from [a1+96]:8 +0x130.
  The `lw` at 0x16fc loads 4 bytes from [a1+96]:8 +0x134.
  The `lw` at 0x1720 loads 4 bytes from [a1+96]:8 +0x1ca4.
  The `lw` at 0x1728 loads 4 bytes from [a1+96]:8 +0x1ca8.
  The `lw` at 0x1800 loads 4 bytes from [a1+96]:8 +0x2b40.
  The `lw` at 0x1808 loads 4 bytes from [a1+96]:8 +0x2b44.
  The `lw` at 0x1810 loads 4 bytes from [a1+96]:8 +0x2b48.
  The `lw` at 0x1818 loads 4 bytes from [a1+96]:8 +0x2b4c.
  The `lw` at 0x1820 loads 4 bytes from [a1+96]:8 +0x2b50.
  The `lw` at 0x1828 loads 4 bytes from [a1+96]:8 +0x2b54.
  The `lw` at 0x1830 loads 4 bytes from [a1+96]:8 +0x2b58.
  The `lw` at 0x1838 loads 4 bytes from [a1+96]:8 +0x2b5c.
  The `lw` at 0x184c loads 4 bytes from [a1+96]:8 +0x2b60.
  The `lw` at 0x1854 loads 4 bytes from [a1+96]:8 +0x2b64.
  The `lw` at 0x18a4 loads 4 bytes from [a1+96]:8 +0x2b68.
  The `lw` at 0x191c loads 4 bytes from [a1+96]:8 +0x2b6c.
  The `lw` at 0x1924 loads 4 bytes from [a1+96]:8 +0x2b70.
  The `jal` at 0x17d8 calls odsyPushBufferSelect with a0=a1 at entry (arg1), a1=[a0+736]:8, a2=?, a3=0x96, a4=0x110000, a5=[a1+96]:8, a7=one of 0x0, 0x1, 0x10407.
  The `beq` branch at 0xab0 targets 0xad4, is taken when 0 >= a3(=[a1]) (unsigned), and falls through when 0 < a3(=[a1]) (unsigned).
  The `beq` branch at 0xabc targets 0xad4, is taken when at(=[a0+732]) == a3(=[a1]), and falls through when at(=[a0+732]) != a3(=[a1]).
  The `beq` branch at 0xacc targets 0xae4 and is always taken.
  The `beq` branch at 0xee0 targets 0x1978, is taken when a6(=[[a1+96]:8+4464]) == t8(=0x1), and falls through when a6(=[[a1+96]:8+4464]) != t8(=0x1).
  The `beq` branch at 0xee8 targets 0x1d30, is taken when a6(=[[a1+96]:8+4464]) == at(=0x2), and falls through when a6(=[[a1+96]:8+4464]) != at(=0x2).
  The `beq` branch at 0xef0 targets 0x1ce0, is taken when a6(=[[a1+96]:8+4464]) == v0(=0x3), and falls through when a6(=[[a1+96]:8+4464]) != v0(=0x3).
  The `beq` branch at 0x102c targets 0x1aac, is taken when a6(=[[a1+96]:8+4204]) == t8(=0x1), and falls through when a6(=[[a1+96]:8+4204]) != t8(=0x1).
  The `beq` branch at 0x1034 targets 0x1d80, is taken when a6(=[[a1+96]:8+4204]) == v1(=0x2), and falls through when a6(=[[a1+96]:8+4204]) != v1(=0x2).
  The `beq` branch at 0x103c targets 0x1d00, is taken when a6(=[[a1+96]:8+4204]) == a2(=0x3), and falls through when a6(=[[a1+96]:8+4204]) != a2(=0x3).
  The `beq` branch at 0x1274 targets 0x17cc, is taken when a7(=one of 0x0, 0x1) == 0, and falls through when a7(=one of 0x0, 0x1) != 0.
  The `bne` branch at 0x13c4 targets 0x13ac, is taken when a6(?) < 0x10 (signed), and falls through when a6(?) >= 0x10 (signed).
  The `bne` branch at 0x13d0 targets 0x13a0, is taken when a0(?) < 0x10 (signed), and falls through when a0(?) >= 0x10 (signed).
  The `bne` branch at 0x1410 targets 0x13f8, is taken when a6(?) < 0x10 (signed), and falls through when a6(?) >= 0x10 (signed).
  The `bne` branch at 0x141c targets 0x13ec, is taken when a0(?) < 0x10 (signed), and falls through when a0(?) >= 0x10 (signed).
  The `bne` branch at 0x145c targets 0x1444, is taken when a6(?) < 0x10 (signed), and falls through when a6(?) >= 0x10 (signed).
  The `bne` branch at 0x1468 targets 0x1438, is taken when a7(?) < 0x10 (signed), and falls through when a7(?) >= 0x10 (signed).
  The `bne` branch at 0x15a0 targets 0x1484, is taken when a0(?) < 0x10 (signed), and falls through when a0(?) >= 0x10 (signed).
  The `bne` branch at 0x15ec targets 0x15b8, is taken when a0(?) < 0x40 (signed), and falls through when a0(?) >= 0x40 (signed).
  The `bgez` branch at 0x17c4 targets 0x1770, is taken when a0(?) >= 0 (signed), and falls through when a0(?) < 0 (signed).
  The `beq` branch at 0x17cc targets 0x17f4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x17ec targets 0x192c and is always taken.
  The `beq` branch at 0x1aa4 targets 0x1024 and is always taken.
  The `beq` branch at 0x1cd8 targets 0x1270 and is always taken.
  The `beq` branch at 0x1cf8 targets 0x1024 and is always taken.
  The `beq` branch at 0x1d28 targets 0x1270 and is always taken.
  The `beq` branch at 0x1d78 targets 0x1024 and is always taken.
  The `beq` branch at 0x1e04 targets 0x1270 and is always taken.
  The return at 0x1970 has v0 = one of ret(odsyPushBufferSelect), [[a1+96]:8+11120].
- `odsyRestoreXform` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x1e0c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x1e0c-0x247c (1648 bytes).
  It occupies 1648 bytes.
  The `lw` at 0x1e0c loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `ld` at 0x1e10 loads 8 bytes from a1 (arg1 at entry) +0x60.
  The `ld` at 0x1e24 loads 8 bytes from a0 (arg0 at entry) +0x2e0.
  The `lw` at 0x1e28 loads 4 bytes from a0 (arg0 at entry) +0x2dc.
  The `lw` at 0x1e48 loads 4 bytes from [a1+96]:8 +0x2adc.
  The `lw` at 0x1e84 loads 4 bytes from [a1+96]:8 +0x26a0.
  117 such `sw` accesses store 4 bytes to [a0+736]:8 +0x110000, including `sw` at 0x1eb4, `sw` at 0x1eb8, `sw` at 0x1ee0.
  16 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1ed4, `lw` at 0x1f7c, `lw` at 0x1f84.
  The `lw` at 0x1f28 loads 4 bytes from [a1+96]:8 +0x263c.
  The `lw` at 0x1f30 loads 4 bytes from [a1+96]:8 +0x2640.
  The `lw` at 0x1f38 loads 4 bytes from [a1+96]:8 +0x2644.
  The `lw` at 0x1f48 loads 4 bytes from [a1+96]:8 +0x2648.
  The `lw` at 0x2088 loads 4 bytes from [a1+96]:8 +0x26ac.
  10 such `sw` accesses store 4 bytes to [a1+96]:8 +0x26ac, including `sw` at 0x208c, `sw` at 0x2130, `sw` at 0x2180.
  The `lw` at 0x20a8 loads 4 bytes from [a1+96]:8 +0x1a10.
  The `lw` at 0x20b0 loads 4 bytes from [a1+96]:8 +0x1a14.
  The `lw` at 0x20b8 loads 4 bytes from [a1+96]:8 +0x1a18.
  The `lw` at 0x20c0 loads 4 bytes from [a1+96]:8 +0x1a1c.
  The `lw` at 0x20c8 loads 4 bytes from [a1+96]:8 +0x1a20.
  The `lw` at 0x20d0 loads 4 bytes from [a1+96]:8 +0x1a24.
  The `lw` at 0x20d8 loads 4 bytes from [a1+96]:8 +0x1a28.
  The `lw` at 0x20e0 loads 4 bytes from [a1+96]:8 +0x1a2c.
  The `lw` at 0x20e8 loads 4 bytes from [a1+96]:8 +0x1a30.
  The `lw` at 0x20f0 loads 4 bytes from [a1+96]:8 +0x1a34.
  The `lw` at 0x20f8 loads 4 bytes from [a1+96]:8 +0x1a38.
  The `lw` at 0x2100 loads 4 bytes from [a1+96]:8 +0x1a3c.
  The `lw` at 0x2108 loads 4 bytes from [a1+96]:8 +0x1a40.
  The `lw` at 0x2110 loads 4 bytes from [a1+96]:8 +0x1a44.
  The `lw` at 0x2118 loads 4 bytes from [a1+96]:8 +0x1a48.
  The `lw` at 0x2120 loads 4 bytes from [a1+96]:8 +0x1a4c.
  The `lw` at 0x2148 loads 4 bytes from [a1+96]:8 +0x1a50.
  The `lw` at 0x2150 loads 4 bytes from [a1+96]:8 +0x1a54.
  The `lw` at 0x2158 loads 4 bytes from [a1+96]:8 +0x1a58.
  The `lw` at 0x2168 loads 4 bytes from [a1+96]:8 +0x1a5c.
  The `lw` at 0x219c loads 4 bytes from [a1+96]:8 +0x1a60.
  The `lw` at 0x21a4 loads 4 bytes from [a1+96]:8 +0x1a64.
  The `lw` at 0x21ac loads 4 bytes from [a1+96]:8 +0x1a68.
  The `lw` at 0x21b4 loads 4 bytes from [a1+96]:8 +0x1a6c.
  The `lw` at 0x21bc loads 4 bytes from [a1+96]:8 +0x1a70.
  The `lw` at 0x21c4 loads 4 bytes from [a1+96]:8 +0x1a74.
  The `lw` at 0x21cc loads 4 bytes from [a1+96]:8 +0x1a78.
  The `lw` at 0x21d4 loads 4 bytes from [a1+96]:8 +0x1a7c.
  The `lw` at 0x21dc loads 4 bytes from [a1+96]:8 +0x1a80.
  The `lw` at 0x21e4 loads 4 bytes from [a1+96]:8 +0x1a84.
  The `lw` at 0x21ec loads 4 bytes from [a1+96]:8 +0x1a88.
  The `lw` at 0x21f4 loads 4 bytes from [a1+96]:8 +0x1a8c.
  The `lw` at 0x21fc loads 4 bytes from [a1+96]:8 +0x1a90.
  The `lw` at 0x2204 loads 4 bytes from [a1+96]:8 +0x1a94.
  The `lw` at 0x220c loads 4 bytes from [a1+96]:8 +0x1a98.
  The `lw` at 0x2214 loads 4 bytes from [a1+96]:8 +0x1a9c.
  The `lw` at 0x223c loads 4 bytes from [a1+96]:8 +0x1aa0.
  The `lw` at 0x2244 loads 4 bytes from [a1+96]:8 +0x1aa4.
  The `lw` at 0x224c loads 4 bytes from [a1+96]:8 +0x1aa8.
  The `lw` at 0x2254 loads 4 bytes from [a1+96]:8 +0x1aac.
  The `lw` at 0x225c loads 4 bytes from [a1+96]:8 +0x1ab0.
  The `lw` at 0x2264 loads 4 bytes from [a1+96]:8 +0x1ab4.
  The `lw` at 0x226c loads 4 bytes from [a1+96]:8 +0x1ab8.
  The `lw` at 0x2274 loads 4 bytes from [a1+96]:8 +0x1abc.
  The `lw` at 0x227c loads 4 bytes from [a1+96]:8 +0x1ac0.
  The `lw` at 0x2284 loads 4 bytes from [a1+96]:8 +0x1ac4.
  The `lw` at 0x228c loads 4 bytes from [a1+96]:8 +0x1ac8.
  The `lw` at 0x2294 loads 4 bytes from [a1+96]:8 +0x1acc.
  The `lw` at 0x229c loads 4 bytes from [a1+96]:8 +0x1ad0.
  The `lw` at 0x22a4 loads 4 bytes from [a1+96]:8 +0x1ad4.
  The `lw` at 0x22ac loads 4 bytes from [a1+96]:8 +0x1ad8.
  The `lw` at 0x22b4 loads 4 bytes from [a1+96]:8 +0x1adc.
  The `lw` at 0x22dc loads 4 bytes from [a1+96]:8 +0x1ae0.
  The `lw` at 0x22e4 loads 4 bytes from [a1+96]:8 +0x1ae4.
  The `lw` at 0x22ec loads 4 bytes from [a1+96]:8 +0x1ae8.
  The `lw` at 0x22f4 loads 4 bytes from [a1+96]:8 +0x1aec.
  The `lw` at 0x22fc loads 4 bytes from [a1+96]:8 +0x1af0.
  The `lw` at 0x2304 loads 4 bytes from [a1+96]:8 +0x1af4.
  The `lw` at 0x230c loads 4 bytes from [a1+96]:8 +0x1af8.
  The `lw` at 0x2314 loads 4 bytes from [a1+96]:8 +0x1afc.
  The `lw` at 0x231c loads 4 bytes from [a1+96]:8 +0x1b00.
  The `lw` at 0x2324 loads 4 bytes from [a1+96]:8 +0x1b04.
  The `lw` at 0x232c loads 4 bytes from [a1+96]:8 +0x1b08.
  The `lw` at 0x2334 loads 4 bytes from [a1+96]:8 +0x1b0c.
  The `lw` at 0x233c loads 4 bytes from [a1+96]:8 +0x1b10.
  The `lw` at 0x2344 loads 4 bytes from [a1+96]:8 +0x1b14.
  The `lw` at 0x234c loads 4 bytes from [a1+96]:8 +0x1b18.
  The `lw` at 0x2354 loads 4 bytes from [a1+96]:8 +0x1b1c.
  The `jal` at 0x2458 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=[[a1+96]:8+10972], a3=[a0+736]:8+0x110000, a4=[a1+96]:8, a6=0xd, a7=0xb.
  The `jal` at 0x2460 calls curproc with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x246c calls psignal with a0=ret(curproc), a1=0x9, a2=?, a3=?.
  The `beq` branch at 0x1e20 targets 0x1e38, is taken when a2(=[a1]) == 0, and falls through when a2(=[a1]) != 0.
  The `beq` branch at 0x1e2c targets 0x1e38, is taken when at(=[a0+732]) == a2(=[a1]), and falls through when at(=[a0+732]) != a2(=[a1]).
  The `beq` branch at 0x1e4c targets 0x2440, is taken when t2(=one of 0x0, 0x1) == 0, and falls through when t2(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x1e60 targets 0x1e7c and is always taken.
  The `beq` branch at 0x1e68 targets 0x1e98 and is always taken.
  The `beq` branch at 0x1e78 targets 0x1ef8, is taken when a0(?) >= 0x200 (signed), and falls through when a0(?) < 0x200 (signed).
  The `beq` branch at 0x1e80 targets 0x1e90, is taken when a0(?) == t0(=0x1e0), and falls through when a0(?) != t0(=0x1e0).
  The `bne` branch at 0x1e88 targets 0x1e68, is taken when a0(?) != t1(=0x140), and falls through when a0(?) == t1(=0x140).
  The `beq` branch at 0x1e90 targets 0x1e70 and is always taken.
  The `beq` branch at 0x1eb0 targets 0x2430, is taken when a0(?) == t9(=0xa0), and falls through when a0(?) != t9(=0xa0).
  The `bne` branch at 0x1edc targets 0x1ec4, is taken when a5(?) < 0x10 (signed), and falls through when a5(?) >= 0x10 (signed).
  The `beq` branch at 0x1ef0 targets 0x1e70 and is always taken.
  The `beq` branch at 0x1f00 targets 0x202c, is taken when t2(=one of 0x0, 0x1) == 0, and falls through when t2(=one of 0x0, 0x1) != 0.
  The `bne` branch at 0x2024 targets 0x1f58, is taken when a7(?) < 0x8 (signed), and falls through when a7(?) >= 0x8 (signed).
  The `beq` branch at 0x2040 targets 0x244c, is taken when a2(=[[a1+96]:8+10972]) >= 0xff (unsigned), and falls through when a2(=[[a1+96]:8+10972]) < 0xff (unsigned).
  The `beq` branch at 0x204c targets 0x2088, is taken when a2(=[[a1+96]:8+10972]) == 0, and falls through when a2(=[[a1+96]:8+10972]) != 0.
  The `bne` branch at 0x2080 targets 0x2058, is taken when a0(?) < a2(=[[a1+96]:8+10972]) (unsigned), and falls through when a0(?) >= a2(=[[a1+96]:8+10972]) (unsigned).
  The `beq` branch at 0x2188 targets 0x2364, is taken when t2(=one of 0x0, 0x1) == 0, and falls through when t2(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x2370 targets 0x23b0 and is always taken.
  The `beq` branch at 0x23ac targets 0x2420, is taken when a0(?) >= 0x16 (signed), and falls through when a0(?) < 0x16 (signed).
  The `beq` branch at 0x23b4 targets 0x23ec, is taken when a0(?) == a2(=0xe), and falls through when a0(?) != a2(=0xe).
  The `beq` branch at 0x23bc targets 0x23a4, is taken when a0(?) == a6(=0xd), and falls through when a0(?) != a6(=0xd).
  The `beq` branch at 0x23c4 targets 0x23a4, is taken when a0(?) == a7(=0xb), and falls through when a0(?) != a7(=0xb).
  The `beq` branch at 0x23cc targets 0x23a4, is taken when a0(?) == t0(=0xf), and falls through when a0(?) != t0(=0xf).
  The `beq` branch at 0x23d4 targets 0x23a4, is taken when a0(?) == t1(=0x10), and falls through when a0(?) != t1(=0x10).
  The `beq` branch at 0x23dc targets 0x23a4, is taken when a0(?) == t2(=0x6), and falls through when a0(?) != t2(=0x6).
  The `beq` branch at 0x23e4 targets 0x2378 and is always taken.
  The `beq` branch at 0x23fc targets 0x2428, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x2418 targets 0x23a4 and is always taken.
  The `beq` branch at 0x2428 targets 0x23a4 and is always taken.
  The `beq` branch at 0x2438 targets 0x1ebc and is always taken.
  The `beq` branch at 0x2444 targets 0x1ef8 and is always taken.
  The `beq` branch at 0x2474 targets 0x2420 and is always taken.
  The return at 0x2420 has v0 = one of ?, ret(psignal).
- `odsyRestoreVB` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x247c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x247c-0x34a4 (4136 bytes).
  It occupies 4136 bytes.
  The `lw` at 0x2484 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `ld` at 0x2488 loads 8 bytes from a1 (arg1 at entry) +0x70.
  The `ld` at 0x2498 loads 8 bytes from a0 (arg0 at entry) +0x2e0.
  The `lw` at 0x24a4 loads 4 bytes from a0 (arg0 at entry) +0x2dc.
  46 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lw` at 0x24c4, `lw` at 0x2524, `lw` at 0x2560.
  70 such `lw` accesses load 4 bytes from ?, including `lw` at 0x24dc, `lw` at 0x2538, `lw` at 0x2558.
  39 such `sw` accesses store 4 bytes to [a0+736]:8 +0x110000, including `sw` at 0x2520, `sw` at 0x255c, `sw` at 0x25d8.
  7 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0x29ec, `lw` at 0x2a38, `lw` at 0x2a70.
  The `jal` at 0x3244 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?, a4=0x0.
  The `jal` at 0x3270 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?, a4=0x0.
  The `jal` at 0x32a4 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?, a4=0xfffff.
  The `jal` at 0x32cc calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?, a5=0x3ffff.
  The `jal` at 0x32f8 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?.
  The `jal` at 0x331c calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?.
  The `jal` at 0x3340 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?.
  The `jal` at 0x3364 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?.
  The `jal` at 0x3388 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?.
  The `jal` at 0x33ac calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?.
  The `jal` at 0x33cc calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?.
  The `jal` at 0x33ec calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?, a5=0xfffffff.
  The `jal` at 0x3410 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?, a5=0x3ffffff.
  The `jal` at 0x3430 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?, a5=0xffffff.
  The `jal` at 0x3450 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?, a5=0x3fffff.
  The `jal` at 0x3474 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?.
  The `jal` at 0x3494 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?.
  The `beq` branch at 0x249c targets 0x24b8, is taken when 0 >= a3(=[a1]) (unsigned), and falls through when 0 < a3(=[a1]) (unsigned).
  The `beq` branch at 0x24a8 targets 0x24bc, is taken when at(=[a0+732]) == a3(=[a1]), and falls through when at(=[a0+732]) != a3(=[a1]).
  The `beq` branch at 0x24b0 targets 0x24bc and is always taken.
  The `beq` branch at 0x24bc targets 0x31fc, is taken when a0(=one of 0x0, 0x1) == 0, and falls through when a0(=one of 0x0, 0x1) != 0.
  The `bne` branch at 0x24e8 targets 0x2514, is taken when (v0(?) & 0xf) != 0, and falls through when (v0(?) & 0xf) == 0.
  The `beq` branch at 0x2500 targets 0x2514, is taken when a0(?) == at(=0x3000c02e), and falls through when a0(?) != at(=0x3000c02e).
  The `bne` branch at 0x250c targets 0x32b8, is taken when a0(?) != a1(=0x2f00c02e), and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` branch at 0x2544 targets 0x2590, is taken when (at(?) & 0xf) == 0, and falls through when (at(?) & 0xf) != 0.
  The `bne` branch at 0x2588 targets 0x2550, is taken when a2(?) < at(?) (unsigned), and falls through when a2(?) >= at(?) (unsigned).
  The `bne` branch at 0x25ac targets 0x25d8, is taken when (v0(?) & 0xf) != 0, and falls through when (v0(?) & 0xf) == 0.
  The `beq` branch at 0x25c4 targets 0x25d8, is taken when a0(?) == at(=0x3000c02e), and falls through when a0(?) != at(=0x3000c02e).
  The `bne` branch at 0x25d0 targets 0x32e8, is taken when a0(?) != a1(=0x2f00c02e), and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` branch at 0x25fc targets 0x2648, is taken when (a2(?) & 0xf) == 0, and falls through when (a2(?) & 0xf) != 0.
  The `bne` branch at 0x2640 targets 0x2608, is taken when a2(?) < at(?) (unsigned), and falls through when a2(?) >= at(?) (unsigned).
  The `bne` branch at 0x2664 targets 0x2690, is taken when (v0(?) & 0xf) != 0, and falls through when (v0(?) & 0xf) == 0.
  The `beq` branch at 0x267c targets 0x2690, is taken when a0(?) == at(=0x3000c02e), and falls through when a0(?) != at(=0x3000c02e).
  The `bne` branch at 0x2688 targets 0x330c, is taken when a0(?) != a1(=0x2f00c02e), and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` branch at 0x26b4 targets 0x2700, is taken when (a2(?) & 0xf) == 0, and falls through when (a2(?) & 0xf) != 0.
  The `bne` branch at 0x26f8 targets 0x26c0, is taken when a2(?) < at(?) (unsigned), and falls through when a2(?) >= at(?) (unsigned).
  The `bne` branch at 0x271c targets 0x2748, is taken when (v0(?) & 0xf) != 0, and falls through when (v0(?) & 0xf) == 0.
  The `beq` branch at 0x2734 targets 0x2748, is taken when a0(?) == at(=0x3000c02e), and falls through when a0(?) != at(=0x3000c02e).
  The `bne` branch at 0x2740 targets 0x3330, is taken when a0(?) != a1(=0x2f00c02e), and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` branch at 0x276c targets 0x27b8, is taken when (a4(?) & 0xf) == 0, and falls through when (a4(?) & 0xf) != 0.
  The `bne` branch at 0x27b0 targets 0x2778, is taken when a4(?) < at(?) (unsigned), and falls through when a4(?) >= at(?) (unsigned).
  The `bne` branch at 0x27d4 targets 0x2800, is taken when (v0(?) & 0xf) != 0, and falls through when (v0(?) & 0xf) == 0.
  The `beq` branch at 0x27ec targets 0x2800, is taken when a0(?) == at(=0x3000c02e), and falls through when a0(?) != at(=0x3000c02e).
  The `bne` branch at 0x27f8 targets 0x3354, is taken when a0(?) != a1(=0x2f00c02e), and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` branch at 0x2824 targets 0x2870, is taken when (a4(?) & 0xf) == 0, and falls through when (a4(?) & 0xf) != 0.
  The `bne` branch at 0x2868 targets 0x2830, is taken when a4(?) < at(?) (unsigned), and falls through when a4(?) >= at(?) (unsigned).
  The `bne` branch at 0x288c targets 0x28b8, is taken when (v0(?) & 0xf) != 0, and falls through when (v0(?) & 0xf) == 0.
  The `beq` branch at 0x28a4 targets 0x28b8, is taken when a0(?) == at(=0x3000c02e), and falls through when a0(?) != at(=0x3000c02e).
  The `bne` branch at 0x28b0 targets 0x3378, is taken when a0(?) != a1(=0x2f00c02e), and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` branch at 0x28dc targets 0x2928, is taken when (a2(?) & 0xf) == 0, and falls through when (a2(?) & 0xf) != 0.
  The `bne` branch at 0x2920 targets 0x28e8, is taken when a2(?) < at(?) (unsigned), and falls through when a2(?) >= at(?) (unsigned).
  The `bne` branch at 0x2948 targets 0x2974, is taken when (v0(?) & 0xf) != 0, and falls through when (v0(?) & 0xf) == 0.
  The `beq` branch at 0x2960 targets 0x2974, is taken when a0(?) == at(=0x3000c02e), and falls through when a0(?) != at(=0x3000c02e).
  The `bne` branch at 0x296c targets 0x339c, is taken when a0(?) != a1(=0x2f00c02e), and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` branch at 0x299c targets 0x29ec, is taken when (at(?) & 0xf) == 0, and falls through when (at(?) & 0xf) != 0.
  The `bne` branch at 0x29e4 targets 0x29a8, is taken when a0(?) < at(?) (unsigned), and falls through when a0(?) >= at(?) (unsigned).
  The `bne` branch at 0x2a08 targets 0x2a34, is taken when (v0(?) & 0xf) != 0, and falls through when (v0(?) & 0xf) == 0.
  The `beq` branch at 0x2a20 targets 0x2a34, is taken when a0(?) == at(=0x3000c02e), and falls through when a0(?) != at(=0x3000c02e).
  The `bne` branch at 0x2a2c targets 0x33bc, is taken when a0(?) != a1(=0x2f00c02e), and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` branch at 0x2a54 targets 0x2a9c, is taken when (a2(?) & 0xf) == 0, and falls through when (a2(?) & 0xf) != 0.
  The `bne` branch at 0x2a94 targets 0x2a60, is taken when a2(?) < a1(?) (unsigned), and falls through when a2(?) >= a1(?) (unsigned).
  The `bne` branch at 0x2ac4 targets 0x2af0, is taken when (at(?) & 0xf) != 0, and falls through when (at(?) & 0xf) == 0.
  The `beq` branch at 0x2adc targets 0x2af0, is taken when a0(?) == at(=0x3000c02e), and falls through when a0(?) != at(=0x3000c02e).
  The `bne` branch at 0x2ae8 targets 0x33dc, is taken when a0(?) != a1(=0x2f00c02e), and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` branch at 0x2b14 targets 0x2b60, is taken when (a2(?) & 0xf) == 0, and falls through when (a2(?) & 0xf) != 0.
  The `bne` branch at 0x2b58 targets 0x2b20, is taken when a2(?) < at(?) (unsigned), and falls through when a2(?) >= at(?) (unsigned).
  The `bne` branch at 0x2b84 targets 0x2bb0, is taken when (v0(?) & 0xf) != 0, and falls through when (v0(?) & 0xf) == 0.
  The `beq` branch at 0x2b9c targets 0x2bb0, is taken when a0(?) == at(=0x3000c02e), and falls through when a0(?) != at(=0x3000c02e).
  The `bne` branch at 0x2ba8 targets 0x3400, is taken when a0(?) != a1(=0x2f00c02e), and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` branch at 0x2bd4 targets 0x2c20, is taken when (a2(?) & 0xf) == 0, and falls through when (a2(?) & 0xf) != 0.
  The `bne` branch at 0x2c18 targets 0x2be0, is taken when a2(?) < at(?) (unsigned), and falls through when a2(?) >= at(?) (unsigned).
  The `bne` branch at 0x2c44 targets 0x2c70, is taken when (v0(?) & 0xf) != 0, and falls through when (v0(?) & 0xf) == 0.
  The `beq` branch at 0x2c5c targets 0x2c70, is taken when a0(?) == at(=0x3000c02e), and falls through when a0(?) != at(=0x3000c02e).
  The `bne` branch at 0x2c68 targets 0x3424, is taken when a0(?) != a1(=0x2f00c02e), and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` branch at 0x2c94 targets 0x2ce0, is taken when (a2(?) & 0xf) == 0, and falls through when (a2(?) & 0xf) != 0.
  The `bne` branch at 0x2cd8 targets 0x2ca0, is taken when a2(?) < at(?) (unsigned), and falls through when a2(?) >= at(?) (unsigned).
  The `bne` branch at 0x2d04 targets 0x2d30, is taken when (v0(?) & 0xf) != 0, and falls through when (v0(?) & 0xf) == 0.
  The `beq` branch at 0x2d1c targets 0x2d30, is taken when a0(?) == at(=0x3000c02e), and falls through when a0(?) != at(=0x3000c02e).
  The `bne` branch at 0x2d28 targets 0x3444, is taken when a0(?) != a1(=0x2f00c02e), and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` branch at 0x2d54 targets 0x2da4, is taken when (a4(?) & 0xf) == 0, and falls through when (a4(?) & 0xf) != 0.
  The `bne` branch at 0x2d98 targets 0x2d60, is taken when a4(?) < at(?) (unsigned), and falls through when a4(?) >= at(?) (unsigned).
  The `bne` branch at 0x2e24 targets 0x2e50, is taken when (v0(?) & 0xf) != 0, and falls through when (v0(?) & 0xf) == 0.
  The `beq` branch at 0x2e3c targets 0x2e50, is taken when a0(?) == a1(=0x3000c02e), and falls through when a0(?) != a1(=0x3000c02e).
  The `bne` branch at 0x2e48 targets 0x3468, is taken when a0(?) != a1(=0x2f00c02e), and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` branch at 0x2e74 targets 0x2ec0, is taken when (a2(?) & 0xf) == 0, and falls through when (a2(?) & 0xf) != 0.
  The `bne` branch at 0x2eb8 targets 0x2e80, is taken when a2(?) < a1(?) (unsigned), and falls through when a2(?) >= a1(?) (unsigned).
  The `bne` branch at 0x2ee0 targets 0x2f0c, is taken when (at(?) & 0xf) != 0, and falls through when (at(?) & 0xf) == 0.
  The `beq` branch at 0x2ef8 targets 0x2f0c, is taken when a0(?) == at(=0x3000c02e), and falls through when a0(?) != at(=0x3000c02e).
  The `bne` branch at 0x2f04 targets 0x3484, is taken when a0(?) != a1(=0x2f00c02e), and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` branch at 0x2f30 targets 0x2f7c, is taken when (a2(?) & 0xf) == 0, and falls through when (a2(?) & 0xf) != 0.
  The `bne` branch at 0x2f74 targets 0x2f3c, is taken when a2(?) < a1(?) (unsigned), and falls through when a2(?) >= a1(?) (unsigned).
  The `bne` branch at 0x2f9c targets 0x2fcc, is taken when (at(?) & 0xf) != 0, and falls through when (at(?) & 0xf) == 0.
  The `beq` branch at 0x2fb8 targets 0x2fcc, is taken when a0(?) == at(=0x3000c02e), and falls through when a0(?) != at(=0x3000c02e).
  The `bne` branch at 0x2fc4 targets 0x3234, is taken when a0(?) != a1(=0x2f00c02e), and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` branch at 0x2ff8 targets 0x3044, is taken when (at(?) & 0xf) == 0, and falls through when (at(?) & 0xf) != 0.
  The `bne` branch at 0x3038 targets 0x3004, is taken when a4(?) < at(?) (unsigned), and falls through when a4(?) >= at(?) (unsigned).
  The `bne` branch at 0x3060 targets 0x3090, is taken when (v0(?) & 0xf) != 0, and falls through when (v0(?) & 0xf) == 0.
  The `beq` branch at 0x307c targets 0x3090, is taken when a0(?) == at(=0x3000c02e), and falls through when a0(?) != at(=0x3000c02e).
  The `bne` branch at 0x3088 targets 0x325c, is taken when a0(?) != a1(=0x2f00c02e), and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` branch at 0x30c0 targets 0x310c, is taken when (at(?) & 0xf) == 0, and falls through when (at(?) & 0xf) != 0.
  The `bne` branch at 0x3104 targets 0x30cc, is taken when a4(?) < at(?) (unsigned), and falls through when a4(?) >= at(?) (unsigned).
  The `bne` branch at 0x3134 targets 0x3164, is taken when (v0(?) & 0xf) != 0, and falls through when (v0(?) & 0xf) == 0.
  The `beq` branch at 0x3150 targets 0x3164, is taken when a0(?) == at(=0x3000c02e), and falls through when a0(?) != at(=0x3000c02e).
  The `bne` branch at 0x315c targets 0x3288, is taken when a0(?) != a1(=0x2f00c02e), and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` branch at 0x3198 targets 0x31e8, is taken when (at(?) & 0xf) == 0, and falls through when (at(?) & 0xf) != 0.
  The `bne` branch at 0x31e0 targets 0x31a8, is taken when a0(?) < at(?) (unsigned), and falls through when a0(?) >= at(?) (unsigned).
  The `beq` branch at 0x31fc targets 0x3220, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bgtz` branch at 0x3204 targets 0x24c4, is taken when a4 > 0 (signed), and falls through when a4 <= 0 (signed).
  The `beq` branch at 0x3218 targets 0x2f7c and is always taken.
  The `beq` branch at 0x322c targets 0x2f7c and is always taken.
  The `beq` branch at 0x3254 targets 0x3040 and is always taken.
  The `beq` branch at 0x3280 targets 0x310c and is always taken.
  The `beq` branch at 0x32b0 targets 0x31e8 and is always taken.
  The `beq` branch at 0x32e0 targets 0x2590 and is always taken.
  The `beq` branch at 0x3304 targets 0x2648 and is always taken.
  The `beq` branch at 0x3328 targets 0x2700 and is always taken.
  The `beq` branch at 0x334c targets 0x27b8 and is always taken.
  The `beq` branch at 0x3370 targets 0x2870 and is always taken.
  The `beq` branch at 0x3394 targets 0x2928 and is always taken.
  The `beq` branch at 0x33b4 targets 0x29ec and is always taken.
  The `beq` branch at 0x33d4 targets 0x2a9c and is always taken.
  The `beq` branch at 0x33f8 targets 0x2b60 and is always taken.
  The `beq` branch at 0x341c targets 0x2c20 and is always taken.
  The `beq` branch at 0x343c targets 0x2ce0 and is always taken.
  The `beq` branch at 0x3460 targets 0x2da4 and is always taken.
  The `beq` branch at 0x347c targets 0x2ec0 and is always taken.
  The `beq` branch at 0x349c targets 0x2f7c and is always taken.
  The return at 0x31f4 has v0 = one of ?, ret(cmn_err).
- `odsyRestoreGfe` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x34a4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x34a4-0x38ec (1096 bytes).
  It occupies 1096 bytes.
  The `ld` at 0x34a4 loads 8 bytes from a1 (arg1 at entry) +0x60.
  The `lw` at 0x34a8 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `ld` at 0x34ac loads 8 bytes from a0 (arg0 at entry) +0x2e0.
  The `ld` at 0x34cc loads 8 bytes from a1 (arg1 at entry) +0x70.
  The `lw` at 0x34d0 loads 4 bytes from a0 (arg0 at entry) +0x2dc.
  89 such `sw` accesses store 4 bytes to [a0+736]:8 +0x110000, including `sw` at 0x34f8, `sw` at 0x34fc, `sw` at 0x3500.
  The `lw` at 0x351c loads 4 bytes from [a1+112]:8 +0xac.
  The `lw` at 0x3534 loads 4 bytes from [a1+112]:8 +0xb8.
  The `lw` at 0x3544 loads 4 bytes from [a1+96]:8 +0x1b8c.
  3 such `lw` accesses load 4 bytes from [a1+112]:8 +0x240, including `lw` at 0x3550, `lw` at 0x358c, `lw` at 0x35b0.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x35a8, `lw` at 0x3624, `lw` at 0x36a0.
  3 such `lw` accesses load 4 bytes from [a1+112]:8 +0x250, including `lw` at 0x35cc, `lw` at 0x3608, `lw` at 0x362c.
  3 such `lw` accesses load 4 bytes from [a1+112]:8 +0x260, including `lw` at 0x3648, `lw` at 0x3684, `lw` at 0x36a8.
  3 such `lw` accesses load 4 bytes from [a1+112]:8 +0x270, including `lw` at 0x36c4, `lw` at 0x3700, `lw` at 0x3724.
  The `jal` at 0x387c calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=[[a1+112]:8+576], a4=[a1+96]:8, a5=[a1].
  The `jal` at 0x3898 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=[[a1+112]:8+592].
  The `jal` at 0x38b8 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=[[a1+112]:8+608].
  The `jal` at 0x38dc calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=[[a1+112]:8+624].
  The `beq` branch at 0x34c8 targets 0x34e8, is taken when a5(=[a1]) == 0, and falls through when a5(=[a1]) != 0.
  The `beq` branch at 0x34d4 targets 0x34e8, is taken when at(=[a0+732]) == a5(=[a1]), and falls through when at(=[a0+732]) != a5(=[a1]).
  The `beq` branch at 0x34e0 targets 0x34f0 and is always taken.
  The `beq` branch at 0x3548 targets 0x3860, is taken when a0(=one of 0x0, 0x1) == 0, and falls through when a0(=one of 0x0, 0x1) != 0.
  The `bne` branch at 0x355c targets 0x3588, is taken when (at(?) & 0xf) != 0, and falls through when (at(?) & 0xf) == 0.
  The `beq` branch at 0x3574 targets 0x3588, is taken when a0(?) == v0(=0x3000c02e), and falls through when a0(?) != v0(=0x3000c02e).
  The `bne` branch at 0x3580 targets 0x3870, is taken when a0(?) != a1(=0x2f00c02e), and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` branch at 0x3598 targets 0x35cc, is taken when (at(?) & 0xf) == 0, and falls through when (at(?) & 0xf) != 0.
  The `bne` branch at 0x35c4 targets 0x35a4, is taken when a0(?) < v0(?) (unsigned), and falls through when a0(?) >= v0(?) (unsigned).
  The `bne` branch at 0x35d8 targets 0x3604, is taken when (a1(?) & 0xf) != 0, and falls through when (a1(?) & 0xf) == 0.
  The `beq` branch at 0x35f0 targets 0x3604, is taken when a0(?) == at(=0x3000c02e), and falls through when a0(?) != at(=0x3000c02e).
  The `bne` branch at 0x35fc targets 0x388c, is taken when a0(?) != a1(=0x2f00c02e), and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` branch at 0x3614 targets 0x3648, is taken when (at(?) & 0xf) == 0, and falls through when (at(?) & 0xf) != 0.
  The `bne` branch at 0x3640 targets 0x3620, is taken when a0(?) < v0(?) (unsigned), and falls through when a0(?) >= v0(?) (unsigned).
  The `bne` branch at 0x3660 targets 0x3680, is taken when (a1(?) & 0xf) != 0, and falls through when (a1(?) & 0xf) == 0.
  The `beq` branch at 0x366c targets 0x3680, is taken when a0(?) == at(=0x3000c02e), and falls through when a0(?) != at(=0x3000c02e).
  The `bne` branch at 0x3678 targets 0x38a8, is taken when a0(?) != a1(=0x2f00c02e), and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` branch at 0x3690 targets 0x36c4, is taken when (at(?) & 0xf) == 0, and falls through when (at(?) & 0xf) != 0.
  The `bne` branch at 0x36bc targets 0x369c, is taken when a0(?) < v0(?) (unsigned), and falls through when a0(?) >= v0(?) (unsigned).
  The `bne` branch at 0x36dc targets 0x36fc, is taken when (a1(?) & 0xf) != 0, and falls through when (a1(?) & 0xf) == 0.
  The `beq` branch at 0x36e8 targets 0x36fc, is taken when a0(?) == at(=0x3000c02e), and falls through when a0(?) != at(=0x3000c02e).
  The `bne` branch at 0x36f4 targets 0x38c8, is taken when a0(?) != a1(=0x2f00c02e), and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` branch at 0x370c targets 0x3740, is taken when (at(?) & 0xf) == 0, and falls through when (at(?) & 0xf) != 0.
  The `bne` branch at 0x3738 targets 0x3718, is taken when a0(?) < v0(?) (unsigned), and falls through when a0(?) >= v0(?) (unsigned).
  The `beq` branch at 0x3884 targets 0x35cc and is always taken.
  The `beq` branch at 0x38a0 targets 0x3648 and is always taken.
  The `beq` branch at 0x38c0 targets 0x36c4 and is always taken.
  The `beq` branch at 0x38e4 targets 0x3740 and is always taken.
  The return at 0x3868 has v0 = one of [[a1+96]:8+7052], 0x3cf9.
- `odsyRestorePIOPixel` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x38ec (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x38ec-0x3a80 (404 bytes).
  It occupies 404 bytes.
  The `ld` at 0x38ec loads 8 bytes from a1 (arg1 at entry) +0x70.
  The `lw` at 0x38f4 loads 4 bytes from [a1+112]:8 +0xb8.
  The `ld` at 0x3910 loads 8 bytes from a1 (arg1 at entry) +0x60.
  The `lw` at 0x3924 loads 4 bytes from [a1+96]:8 +0x1b84.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x3944, `lw` at 0x3948, `lw` at 0x3964.
  The `lw` at 0x3980 loads 4 bytes from [a1+112]:8 +0x80.
  The `lw` at 0x3994 loads 4 bytes from [a1+96]:8 +0x1b78.
  The `lw` at 0x3998 loads 4 bytes from [a1+96]:8 +0x1b74.
  The `lw` at 0x39c8 loads 4 bytes from [a1+112]:8 +0xac.
  The `sw` at 0x39fc stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x3a04, `sw` at 0x3a08.
  The `lw` at 0x3a18 loads 4 bytes from [a1+96]:8 +0x1b80.
  The `lw` at 0x3a20 loads 4 bytes from [a1+96]:8 +0x1b88.
  The `lw` at 0x3a24 loads 4 bytes from [a1+112]:8 +0x310.
  The `lw` at 0x3a28 loads 4 bytes from [a1+112]:8 +0x300.
  The `lw` at 0x3a38 loads 4 bytes from [a1+112]:8 +0x314.
  The `lw` at 0x3a3c loads 4 bytes from [a1+112]:8 +0x304.
  The `jal` at 0x3a70 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a5=[a1+112]:8, a7=a3 at entry (arg3).
  The `beq` branch at 0x391c targets 0x3a1c, is taken when (at(?) & 0x1) == 0, and falls through when (at(?) & 0x1) != 0.
  The `beq` branch at 0x3928 targets 0x3978, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x3930 targets 0x3978, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x394c targets 0x3978, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x3978 targets 0x3a14, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x398c targets 0x3a24, is taken when at(?) == v0(=0x2), and falls through when at(?) != v0(=0x2).
  The `blez` branch at 0x399c targets 0x3a68, is taken when a2(?) <= 0 (signed), and falls through when a2(?) > 0 (signed).
  The `beq` branch at 0x39a8 targets 0x3a6c, is taken when a2(?) >= 0x801 (signed), and falls through when a2(?) < 0x801 (signed).
  The `blez` branch at 0x39b0 targets 0x3a6c, is taken when a3(?) <= 0 (signed), and falls through when a3(?) > 0 (signed).
  The `beq` branch at 0x39b8 targets 0x3a6c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `blez` branch at 0x39c0 targets 0x3a6c, is taken when a4(?) <= 0 (signed), and falls through when a4(?) > 0 (signed).
  The `bne` branch at 0x3a00 targets 0x3a0c, is taken when a0(?) < a3(?) (unsigned), and falls through when a0(?) >= a3(?) (unsigned).
  The `beq` branch at 0x3a14 targets 0x3980 and is always taken.
  The `beq` branch at 0x3a1c targets 0x3928 and is always taken.
  The `bltz` branch at 0x3a30 targets 0x3a58, is taken when a2(?) < 0 (signed), and falls through when a2(?) >= 0 (signed).
  The `bltz` branch at 0x3a44 targets 0x3a60, is taken when a3(?) < 0 (signed), and falls through when a3(?) >= 0 (signed).
  The `beq` branch at 0x3a50 targets 0x399c and is always taken.
  The `beq` branch at 0x3a58 targets 0x3a38 and is always taken.
  The `beq` branch at 0x3a60 targets 0x3a50 and is always taken.
  The `beq` branch at 0x3a78 targets 0x3a0c and is always taken.
  The return at 0x3a0c has v0 = one of ?, ret(cmn_err).
- `odsySetProgram` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x3a80 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x3a80-0x3df8 (888 bytes).
  It occupies 888 bytes.
  The `ld` at 0x3a80 loads 8 bytes from a0 (arg0 at entry) +0x2e0.
  The `ld` at 0x3a8c loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0x3a94 loads 8 bytes from a1 (arg1 at entry) +0x60.
  The `lw` at 0x3ab8 loads 4 bytes from ((a2 << 0x5) + [a1+96]:8) +0x2af0.
  The `lw` at 0x3acc loads 4 bytes from ((a2 << 0x5) + [a1+96]:8) +0x2af4.
  The `lw` at 0x3ad0 loads 4 bytes from [a1+96]:8 +0x2b38.
  The `lw` at 0x3ad4 loads 4 bytes from [a1+96]:8 +0x2b34.
  The `lw` at 0x3b34 loads 4 bytes from a0 (arg0 at entry) +0x2834.
  The `sw` at 0x3b68 stores 4 bytes to [a1+96]:8 +0x2b34.
  The `lw` at 0x3b6c loads 4 bytes from ((a2 << 0x5) + [a1+96]:8) +0x2afc.
  2 such `lw` accesses load 4 bytes from ((a2 << 0x5) + [a1+96]:8) +0x2af8, including `lw` at 0x3b78, `lw` at 0x3bc0.
  The `sw` at 0x3bc8 stores 4 bytes to [a1+96]:8 +0x2b38.
  9 such `sw` accesses store 4 bytes to [a0+736]:8 +0x110000, including `sw` at 0x3bd8, `sw` at 0x3c04, `sw` at 0x3c0c.
  The `lw` at 0x3be0 loads 4 bytes from ?.
  The `lw` at 0x3c18 loads 4 bytes from ((a2 << 0x5) + [a1+96]:8) +0x2aec.
  The `lw` at 0x3c34 loads 4 bytes from ((a2 << 0x5) + [a1+96]:8) +0x2ae0.
  The `lw` at 0x3c50 loads 4 bytes from ((a2 << 0x5) + [a1+96]:8) +0x2ae4.
  The `lw` at 0x3c74 loads 4 bytes from ((a2 << 0x5) + [a1+96]:8) +0x2ae8.
  The `jal` at 0x3b14 calls odsyDownloadUcode with a0=a0 at entry (arg0), a1=[[a1+96]:8+11064], a2=?, a3=0x1, a4=[a0+72]:8.
  The `jal` at 0x3b58 calls odsyDownloadUcode with a0=a0 at entry (arg0), a1=0x738, a2=[((a2 << 0x5) + [a1+96]:8)+10996], a3=?, a4=[a0+72]:8, a5=[[a1+96]:8+11060].
  The `jal` at 0x3b80 calls odsyDownloadUcode with a0=a0 at entry (arg0), a1=[((a2 << 0x5) + [a1+96]:8)+11000], a2=[((a2 << 0x5) + [a1+96]:8)+11004], a3=0x1, a4=[a0+72]:8.
  The `jal` at 0x3cd0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=0x2.
  The `jal` at 0x3cd8 calls curproc with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3ce4 calls psignal with a0=ret(curproc), a1=0x9, a2=?, a3=?.
  The `jal` at 0x3d14 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=[((a2 << 0x5) + [a1+96]:8)+10992], a3=[a0+736]:8.
  The `jal` at 0x3d1c calls curproc with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3d28 calls psignal with a0=ret(curproc), a1=0x9, a2=?, a3=?.
  The `jal` at 0x3d58 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x3d60 calls curproc with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3d6c calls psignal with a0=ret(curproc), a1=0x9, a2=?, a3=?.
  The `jal` at 0x3d90 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x3d98 calls curproc with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3da4 calls psignal with a0=ret(curproc), a1=0x9, a2=?, a3=?.
  The `jal` at 0x3dd4 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x3ddc calls curproc with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3de8 calls psignal with a0=ret(curproc), a1=0x9, a2=?, a3=?.
  The `beq` branch at 0x3ab4 targets 0x3cac, is taken when a2 >= 0x2 (signed), and falls through when a2 < 0x2 (signed).
  The `beq` branch at 0x3ac0 targets 0x3cf4, is taken when s5(=[((a2 << 0x5) + [a1+96]:8)+10992]) >= 0xfe (unsigned), and falls through when s5(=[((a2 << 0x5) + [a1+96]:8)+10992]) < 0xfe (unsigned).
  The `beq` branch at 0x3ad8 targets 0x3afc, is taken when s0(=[((a2 << 0x5) + [a1+96]:8)+10996]) == 0, and falls through when s0(=[((a2 << 0x5) + [a1+96]:8)+10996]) != 0.
  The `bne` branch at 0x3ae4 targets 0x3afc, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x3af4 targets 0x3b0c and is always taken.
  The `bne` branch at 0x3b1c targets 0x3d38, is taken when v0(=ret(odsyDownloadUcode)) != 0, and falls through when v0(=ret(odsyDownloadUcode)) == 0.
  The `beq` branch at 0x3b24 targets 0x3b6c, is taken when s0(=[((a2 << 0x5) + [a1+96]:8)+10996]) == 0, and falls through when s0(=[((a2 << 0x5) + [a1+96]:8)+10996]) != 0.
  The `beq` branch at 0x3b2c targets 0x3b6c, is taken when s0(=[((a2 << 0x5) + [a1+96]:8)+10996]) == a5(=[[a1+96]:8+11060]), and falls through when s0(=[((a2 << 0x5) + [a1+96]:8)+10996]) != a5(=[[a1+96]:8+11060]).
  The `bne` branch at 0x3b40 targets 0x3b4c, is taken when a0(?) < 0xc8 (unsigned), and falls through when a0(?) >= 0xc8 (unsigned).
  The `bne` branch at 0x3b60 targets 0x3db4, is taken when v0(=ret(odsyDownloadUcode)) != 0, and falls through when v0(=ret(odsyDownloadUcode)) == 0.
  The `bne` branch at 0x3ba4 targets 0x3d7c, is taken when v0(=ret(odsyDownloadUcode)) != 0, and falls through when v0(=ret(odsyDownloadUcode)) == 0.
  The `beq` branch at 0x3cec targets 0x3ca4 and is always taken.
  The `beq` branch at 0x3d30 targets 0x3ca4 and is always taken.
  The `beq` branch at 0x3d74 targets 0x3ca4 and is always taken.
  The `beq` branch at 0x3dac targets 0x3ca4 and is always taken.
  The `beq` branch at 0x3df0 targets 0x3ca4 and is always taken.
  The return at 0x3ca4 has v0 = one of 0x2a008000, ret(psignal).
- `odsyRestartContext` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x3df8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x3df8-0x45b8 (1984 bytes).
  It occupies 1984 bytes.
  The `ld` at 0x3e08 loads 8 bytes from a1 (arg1 at entry) +0x60.
  The `ld` at 0x3e0c loads 8 bytes from a1 (arg1 at entry) +0x70.
  18 such `lw` accesses load 4 bytes from [a1+112]:8 +0x80, including `lw` at 0x3e1c, `lw` at 0x3e54, `lw` at 0x3e70.
  The `ld` at 0x3e50 loads 8 bytes from a0 (arg0 at entry) +0x2e0.
  42 such `sw` accesses store 4 bytes to [a0+736]:8 +0x110000, including `sw` at 0x3e90, `sw` at 0x4044, `sw` at 0x404c.
  5 such `sw` accesses store 4 bytes to [a1+112]:8 +0x80, including `sw` at 0x3ed0, `sw` at 0x3f04, `sw` at 0x3f14.
  The `lw` at 0x3ff4 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0x40d0 loads 4 bytes from [a1+96]:8 +0x2adc.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x2b30, including `lw` at 0x40ec, `lw` at 0x440c.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x26a8, including `lw` at 0x40f0, `lw` at 0x4498.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x2680, including `lw` at 0x4114, `lw` at 0x44bc.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x2684, including `lw` at 0x4138, `lw` at 0x44e0.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x268c, including `lw` at 0x415c, `lw` at 0x4504.
  The `lw` at 0x41b8 loads 4 bytes from [a1+112]:8 +0xb4.
  The `lw` at 0x41c8 loads 4 bytes from [a1+112]:8 +0xbc.
  10 such `sd` accesses store 8 bytes to [a0+736]:8 +0x110000, including `sd` at 0x41f4, `sd` at 0x4210, `sd` at 0x4214.
  The `lwu` at 0x41f8 loads 4 bytes from [a1+112]:8 +0xb4.
  2 such `lwu` accesses load 4 bytes from [a1+112]:8 +0xb0, including `lwu` at 0x41fc, `lwu` at 0x4568.
  The `lwu` at 0x421c loads 4 bytes from [a1+112]:8 +0x4.
  The `lw` at 0x4230 loads 4 bytes from [a1+96]:8 +0x26ac.
  2 such `lwu` accesses load 4 bytes from ?, including `lwu` at 0x4270, `lwu` at 0x4278.
  The `lw` at 0x42a0 loads 4 bytes from ?.
  The `ld` at 0x42c8 loads 8 bytes from ?.
  The `lw` at 0x43bc loads 4 bytes from [a1+96]:8 +0x1b34.
  The `lw` at 0x43f0 loads 4 bytes from [a1+112]:8 +0xac.
  The `lw` at 0x4448 loads 4 bytes from [a1+96]:8 +0x1b4c.
  The `lw` at 0x4450 loads 4 bytes from [a1+96]:8 +0x1b50.
  The `lw` at 0x4458 loads 4 bytes from [a1+96]:8 +0x1b54.
  The `lw` at 0x4460 loads 4 bytes from [a1+96]:8 +0x1b58.
  The `lw` at 0x4468 loads 4 bytes from [a1+96]:8 +0x1b5c.
  The `lw` at 0x4470 loads 4 bytes from [a1+96]:8 +0x1b60.
  The `lw` at 0x4478 loads 4 bytes from [a1+96]:8 +0x1b64.
  The `lw` at 0x4480 loads 4 bytes from [a1+96]:8 +0x1b68.
  The `lw` at 0x4488 loads 4 bytes from [a1+96]:8 +0x1b6c.
  The `lw` at 0x4490 loads 4 bytes from [a1+96]:8 +0x1b70.
  The `jal` at 0x40c8 calls odsyRestoreVB with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+112]:8+132, a3=?.
  The `jal` at 0x40e8 calls odsySetProgram with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[[a1+96]:8+11056], a3=?, a5=[[a1+96]:8+10972].
  The `jalr` at 0x42dc calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a4=sp-128, a6=sym(.data).
  The `jal` at 0x4408 calls odsySetProgram with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[[a1+96]:8+11056], a3=?.
  The `jal` at 0x4420 calls odsyRestoreVB with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+112]:8+132, a3=?, a4=0x0.
  The `jal` at 0x45a8 calls odsyRestorePIOPixel with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-120, a3=sp-116, a5=0x34008000.
  The `beq` branch at 0x3e4c targets 0x3e64, is taken when s5(?) >= 0xb (unsigned), and falls through when s5(?) < 0xb (unsigned).
  The `beq` branch at 0x3e94 targets 0x43bc, is taken when t1(=0xa) == s2(?), and falls through when t1(=0xa) != s2(?).
  The `beq` branch at 0x3ecc targets 0x3f08, is taken when v0(?) >= 0x7 (unsigned), and falls through when v0(?) < 0x7 (unsigned).
  The `beq` branch at 0x3f00 targets 0x3f18 and is always taken.
  The `beq` branch at 0x3f24 targets 0x3f4c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x3f30 targets 0x3f4c, is taken when s2(?) == a5(=0x2), and falls through when s2(?) != a5(=0x2).
  The `beq` branch at 0x3f38 targets 0x3f4c, is taken when s2(?) == at(=0x6), and falls through when s2(?) != at(=0x6).
  The `beq` branch at 0x3f40 targets 0x3f4c, is taken when s2(?) == v0(=0x9), and falls through when s2(?) != v0(=0x9).
  The `beq` branch at 0x4030 targets 0x42f0, is taken when s7(=one of 0x0, 0x1) == 0, and falls through when s7(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x4038 targets 0x405c, is taken when s5(?) == 0, and falls through when s5(?) != 0.
  The `beq` branch at 0x4078 targets 0x40b0, is taken when s5(?) == 0, and falls through when s5(?) != 0.
  The `bne` branch at 0x4090 targets 0x42b4, is taken when s3(?) != 0, and falls through when s3(?) == 0.
  The `beq` branch at 0x4098 targets 0x40b0, is taken when s7(=one of 0x0, 0x1) == 0, and falls through when s7(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x40b0 targets 0x41a0, is taken when t1(=0xa) == s2(?), and falls through when t1(=0xa) != s2(?).
  The `beq` branch at 0x40d8 targets 0x419c, is taken when a5(=[[a1+96]:8+10972]) == 0, and falls through when a5(=[[a1+96]:8+10972]) != 0.
  The `beq` branch at 0x419c targets 0x4584, is taken when s5(?) == 0, and falls through when s5(?) != 0.
  The `beq` branch at 0x41c4 targets 0x4540, is taken when a6(=[[a1+112]:8+180]) == 0, and falls through when a6(=[[a1+112]:8+180]) != 0.
  The `beq` branch at 0x41cc targets 0x41d8, is taken when a2(=[[a1+112]:8+188]) == 0, and falls through when a2(=[[a1+112]:8+188]) != 0.
  The `beq` branch at 0x41e8 targets 0x454c, is taken when (a4(?) & 0x1) == 0, and falls through when (a4(?) & 0x1) != 0.
  The `bne` branch at 0x4264 targets 0x4298, is taken when a0(?) < 0x2 (signed), and falls through when a0(?) >= 0x2 (signed).
  The `beq` branch at 0x4290 targets 0x426c, is taken when a0(?) >= 0x2 (signed), and falls through when a0(?) < 0x2 (signed).
  The `beq` branch at 0x4298 targets 0x42a8, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x42e8 targets 0x40b0 and is always taken.
  The `beq` branch at 0x43ac targets 0x405c, is taken when s5(?) == 0, and falls through when s5(?) != 0.
  The `beq` branch at 0x43b4 targets 0x4040 and is always taken.
  The `beq` branch at 0x43cc targets 0x4400, is taken when (at(=[[a1+96]:8+6964]) & 0x7) == 0, and falls through when (at(=[[a1+96]:8+6964]) & 0x7) != 0.
  The `beq` branch at 0x43e0 targets 0x43f0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x43f8 targets 0x459c, is taken when v1(=[[a1+112]:8+172]) != 0, and falls through when v1(=[[a1+112]:8+172]) == 0.
  The `beq` branch at 0x4434 targets 0x4498, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x4538 targets 0x3e9c and is always taken.
  The `beq` branch at 0x4544 targets 0x422c and is always taken.
  The `beq` branch at 0x457c targets 0x422c and is always taken.
  The `beq` branch at 0x4594 targets 0x41a0 and is always taken.
  The `beq` branch at 0x45b0 targets 0x4404 and is always taken.
  The return at 0x42ac has v0 = ?.
- `odsyRestoreVertex` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x45b8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x45b8-0x471c (356 bytes).
  It occupies 356 bytes.
  The `ld` at 0x45b8 loads 8 bytes from a4 (arg4 at entry) +0x0.
  The `ld` at 0x45dc loads 8 bytes from a0 (arg0 at entry) +0x2e0.
  The `ld` at 0x45f0 loads 8 bytes from a1 (arg1 at entry) +0x70.
  The `ld` at 0x4604 loads 8 bytes from a1 (arg1 at entry) +0x60.
  The `sd` at 0x461c stores 8 bytes to a4 (arg4 at entry) +0x0.
  The `lw` at 0x4620 loads 4 bytes from [a1+96]:8 +0x2adc.
  The `lw` at 0x464c loads 4 bytes from ((a5 << 0x2) + [a1+96]:8) +0x2b20.
  3 such `lw` accesses load 4 bytes from ((a5 << 0x2) + [a1+112]:8) +0x100, including `lw` at 0x4658, `lw` at 0x46a0, `lw` at 0x46c8.
  2 such `sw` accesses store 4 bytes to [a0+736]:8 +0x110000, including `sw` at 0x469c, `sw` at 0x46c4.
  The `lw` at 0x46c0 loads 4 bytes from ?.
  The `jal` at 0x4610 calls odsyRestoreVB with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=((a5 << 0x3) + [a1+112]:8)+140, a3=[a4]:8, a4=a2 at entry (arg2).
  The `jal` at 0x4648 calls odsySetProgram with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[((a5 << 0x2) + [a1+96]:8)+11040], a3=?, a6=[[a1+96]:8+10972].
  The `jal` at 0x470c calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=[((a5 << 0x2) + [a1+112]:8)+256], a6=0x110000.
  The `beq` branch at 0x4630 targets 0x4654, is taken when a6(=[[a1+96]:8+10972]) == 0, and falls through when a6(=[[a1+96]:8+10972]) != 0.
  The `bne` branch at 0x4678 targets 0x4694, is taken when (a6(?) & 0xf) != 0, and falls through when (a6(?) & 0xf) == 0.
  The `beq` branch at 0x4688 targets 0x4694, is taken when a0(?) == at(=0x3000c02e), and falls through when a0(?) != at(=0x3000c02e).
  The `bne` branch at 0x4690 targets 0x46f4, is taken when a0(?) != a6(=0x2f00c02e), and falls through when a0(?) == a6(=0x2f00c02e).
  The `beq` branch at 0x46ac targets 0x46e4, is taken when (at(?) & 0xf) == 0, and falls through when (at(?) & 0xf) != 0.
  The `bne` branch at 0x46dc targets 0x46b8, is taken when a0(?) < at(?) (unsigned), and falls through when a0(?) >= at(?) (unsigned).
  The `beq` branch at 0x4714 targets 0x46e4 and is always taken.
  The return at 0x46ec has v0 = one of ?, ret(cmn_err).
- `restorePoints` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x471c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x471c-0x4724 (8 bytes).
  It occupies 8 bytes.
  The return at 0x471c has v0 = ?.
- `restoreLines` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x4724 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x4724-0x475c (56 bytes).
  It occupies 56 bytes.
  The `jal` at 0x4748 calls odsyRestoreVertex with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x4754 has v0 = ret(odsyRestoreVertex).
- `restoreLineLoop` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x475c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x475c-0x47d8 (124 bytes).
  It occupies 124 bytes.
  The `jal` at 0x477c calls odsyRestoreVertex with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=0x0.
  The `jal` at 0x47c8 calls odsyRestoreVertex with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=0x3, a7=a3+1.
  The `beq` branch at 0x4788 targets 0x479c, is taken when s0(=a2) >= 0x2 (signed), and falls through when s0(=a2) < 0x2 (signed).
  The `beq` branch at 0x47d0 targets 0x4790 and is always taken.
  The return at 0x4794 has v0 = ret(odsyRestoreVertex).
- `restoreLineStrip` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x47d8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x47d8-0x4810 (56 bytes).
  It occupies 56 bytes.
  The `jal` at 0x47fc calls odsyRestoreVertex with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x4808 has v0 = ret(odsyRestoreVertex).
- `restoreTriangles` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x4810 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x4810-0x48e4 (212 bytes).
  It occupies 212 bytes.
  The `jal` at 0x488c calls odsyRestoreVertex with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `blez` branch at 0x4868 targets 0x48c0, is taken when a2 <= 0 (signed), and falls through when a2 > 0 (signed).
  The `bne` branch at 0x48b4 targets 0x4874, is taken when s2(?) < s1(=a2) (signed), and falls through when s2(?) >= s1(=a2) (signed).
  The return at 0x48dc has v0 = ?.
- `restoreTriStrip` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x48e4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x48e4-0x49b8 (212 bytes).
  It occupies 212 bytes.
  The `jal` at 0x4960 calls odsyRestoreVertex with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `blez` branch at 0x493c targets 0x4994, is taken when a2 <= 0 (signed), and falls through when a2 > 0 (signed).
  The `bne` branch at 0x4988 targets 0x4948, is taken when s2(?) < s1(=a2) (signed), and falls through when s2(?) >= s1(=a2) (signed).
  The return at 0x49b0 has v0 = ?.
- `restoreTriFan` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x49b8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x49b8-0x4a34 (124 bytes).
  It occupies 124 bytes.
  The `jal` at 0x49d8 calls odsyRestoreVertex with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=0x0.
  The `jal` at 0x4a24 calls odsyRestoreVertex with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=0x3, a7=a3+1.
  The `beq` branch at 0x49e4 targets 0x49f8, is taken when s0(=a2) >= 0x2 (signed), and falls through when s0(=a2) < 0x2 (signed).
  The `beq` branch at 0x4a2c targets 0x49ec and is always taken.
  The return at 0x49f0 has v0 = ret(odsyRestoreVertex).
- `restoreQuads` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x4a34 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x4a34-0x4b08 (212 bytes).
  It occupies 212 bytes.
  The `jal` at 0x4ab0 calls odsyRestoreVertex with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `blez` branch at 0x4a8c targets 0x4ae4, is taken when a2 <= 0 (signed), and falls through when a2 > 0 (signed).
  The `bne` branch at 0x4ad8 targets 0x4a98, is taken when s2(?) < s1(=a2) (signed), and falls through when s2(?) >= s1(=a2) (signed).
  The return at 0x4b00 has v0 = ?.
- `restoreQuadStrip` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x4b08 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x4b08-0x4bdc (212 bytes).
  It occupies 212 bytes.
  The `jal` at 0x4b84 calls odsyRestoreVertex with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `blez` branch at 0x4b60 targets 0x4bb8, is taken when a2 <= 0 (signed), and falls through when a2 > 0 (signed).
  The `bne` branch at 0x4bac targets 0x4b6c, is taken when s2(?) < s1(=a2) (signed), and falls through when s2(?) >= s1(=a2) (signed).
  The return at 0x4bd4 has v0 = ?.
- `restorePolygon` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x4bdc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x4bdc-0x4cb8 (220 bytes).
  It occupies 220 bytes.
  The `jal` at 0x4c24 calls odsyRestoreVertex with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=0x0.
  The `jal` at 0x4c68 calls odsyRestoreVertex with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `blez` branch at 0x4c48 targets 0x4c8c, is taken when s6(=a2-1) <= 0 (signed), and falls through when s6(=a2-1) > 0 (signed).
  The `bne` branch at 0x4c80 targets 0x4c50, is taken when s2(?) < s6(=a2-1) (signed), and falls through when s2(?) >= s6(=a2-1) (signed).
  The return at 0x4cb0 has v0 = ret(odsyRestoreVertex).
- `restoreRect` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x4cb8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x4cb8-0x4f90 (728 bytes).
  It occupies 728 bytes.
  The `ld` at 0x4cc0 loads 8 bytes from a1 (arg1 at entry) +0x70.
  The `ld` at 0x4cd4 loads 8 bytes from a0 (arg0 at entry) +0x2e0.
  12 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4d08, `lw` at 0x4d54, `lw` at 0x4d74.
  6 such `sw` accesses store 4 bytes to [a0+736]:8 +0x110000, including `sw` at 0x4d50, `sw` at 0x4d78, `sw` at 0x4e08.
  The `jal` at 0x4f30 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?.
  The `jal` at 0x4f58 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?, a5=sym(.rodata).
  The `jal` at 0x4f80 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?.
  The `bne` branch at 0x4cd8 targets 0x4e5c, is taken when a2 < 0x2 (signed), and falls through when a2 >= 0x2 (signed).
  The `bne` branch at 0x4d2c targets 0x4d48, is taken when (v0(?) & 0xf) != 0, and falls through when (v0(?) & 0xf) == 0.
  The `beq` branch at 0x4d3c targets 0x4d48, is taken when a1(?) == v1(=0x3000c02e), and falls through when a1(?) != v1(=0x3000c02e).
  The `bne` branch at 0x4d44 targets 0x4f20, is taken when a1(?) != at(=0x2f00c02e), and falls through when a1(?) == at(=0x2f00c02e).
  The `beq` branch at 0x4d60 targets 0x4d98, is taken when (v0(?) & 0xf) == 0, and falls through when (v0(?) & 0xf) != 0.
  The `bne` branch at 0x4d90 targets 0x4d6c, is taken when a2(?) < at(?) (unsigned), and falls through when a2(?) >= at(?) (unsigned).
  The `bne` branch at 0x4dec targets 0x4e00, is taken when (v1(?) & 0xf) != 0, and falls through when (v1(?) & 0xf) == 0.
  The `beq` branch at 0x4df4 targets 0x4e00, is taken when a1(?) == v0(=0x3000c02e), and falls through when a1(?) != v0(=0x3000c02e).
  The `bne` branch at 0x4dfc targets 0x4f44, is taken when a1(?) != at(=0x2f00c02e), and falls through when a1(?) == at(=0x2f00c02e).
  The `beq` branch at 0x4e18 targets 0x4f14, is taken when (v0(?) & 0xf) == 0, and falls through when (v0(?) & 0xf) != 0.
  The `bne` branch at 0x4e4c targets 0x4e28, is taken when a2(?) < at(?) (unsigned), and falls through when a2(?) >= at(?) (unsigned).
  The `beq` branch at 0x4e54 targets 0x4f18 and is always taken.
  The `bne` branch at 0x4eac targets 0x4ec0, is taken when (v1(?) & 0xf) != 0, and falls through when (v1(?) & 0xf) == 0.
  The `beq` branch at 0x4eb4 targets 0x4ec0, is taken when a1(?) == v0(=0x3000c02e), and falls through when a1(?) != v0(=0x3000c02e).
  The `bne` branch at 0x4ebc targets 0x4f68, is taken when a1(?) != at(=0x2f00c02e), and falls through when a1(?) == at(=0x2f00c02e).
  The `beq` branch at 0x4ed8 targets 0x4f14, is taken when (v0(?) & 0xf) == 0, and falls through when (v0(?) & 0xf) != 0.
  The `bne` branch at 0x4f0c targets 0x4ee8, is taken when a2(?) < at(?) (unsigned), and falls through when a2(?) >= at(?) (unsigned).
  The `beq` branch at 0x4f3c targets 0x4d9c and is always taken.
  The `beq` branch at 0x4f60 targets 0x4f14 and is always taken.
  The `beq` branch at 0x4f88 targets 0x4f14 and is always taken.
  The return at 0x4f18 has v0 = ?.
- `odsyResetHwShadow` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x4f90 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x4f90-0x50d0 (320 bytes).
  It occupies 320 bytes.
  The `sw` at 0x4fa8 stores 4 bytes to a0 (arg0 at entry) +0xbc.
  The `sw` at 0x4fb8 stores 4 bytes to a0 (arg0 at entry) +0x250.
  The `sw` at 0x4fc0 stores 4 bytes to a0 (arg0 at entry) +0x240.
  The `sw` at 0x4fc4 stores 4 bytes to a0 (arg0 at entry) +0x120.
  The `sw` at 0x4fd0 stores 4 bytes to a0 (arg0 at entry) +0x270.
  The `sw` at 0x4fd4 stores 4 bytes to a0 (arg0 at entry) +0x160.
  The `lw` at 0x4fd8 loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `sw` at 0x4fdc stores 4 bytes to a0 (arg0 at entry) +0x110.
  The `sw` at 0x4fe4 stores 4 bytes to a0 (arg0 at entry) +0x80.
  The `sw` at 0x4ff0 stores 4 bytes to a0 (arg0 at entry) +0x260.
  The `sw` at 0x4ff4 stores 4 bytes to a0 (arg0 at entry) +0x150.
  The `sw` at 0x5008 stores 4 bytes to a0 (arg0 at entry) +0x210.
  The `sw` at 0x5010 stores 4 bytes to a0 (arg0 at entry) +0x220.
  The `sw` at 0x5020 stores 4 bytes to a0 (arg0 at entry) +0x1e0.
  The `sw` at 0x5028 stores 4 bytes to a0 (arg0 at entry) +0x1f0.
  The `sw` at 0x5034 stores 4 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x503c stores 4 bytes to a0 (arg0 at entry) +0x1c0.
  The `sw` at 0x504c stores 4 bytes to a0 (arg0 at entry) +0x230.
  The `sw` at 0x5054 stores 4 bytes to a0 (arg0 at entry) +0x1b0.
  The `sw` at 0x5064 stores 4 bytes to a0 (arg0 at entry) +0x200.
  The `sw` at 0x506c stores 4 bytes to a0 (arg0 at entry) +0x180.
  The `sw` at 0x507c stores 4 bytes to a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x5084 stores 4 bytes to a0 (arg0 at entry) +0x190.
  The `sw` at 0x5094 stores 4 bytes to a0 (arg0 at entry) +0x1a0.
  The `sw` at 0x509c stores 4 bytes to a0 (arg0 at entry) +0x140.
  The `sw` at 0x50ac stores 4 bytes to a0 (arg0 at entry) +0x170.
  The `sw` at 0x50b4 stores 4 bytes to a0 (arg0 at entry) +0x130.
  The `sw` at 0x50c0 stores 4 bytes to a0 (arg0 at entry) +0x100.
  The `jal` at 0x4fa0 calls bzero with a0=a0 at entry (arg0), a1=0x900, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x50c8 has v0 = 0xffffffff8080c800.
- `gfP_OdsyGLGet` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x50d0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x50d0-0x5318 (584 bytes).
  It occupies 584 bytes.
  5 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x50d4, `sw` at 0x5208, `sw` at 0x52ac.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x20, including `ld` at 0x50dc, `ld` at 0x5148, `ld` at 0x520c.
  4 such `lw` accesses load 4 bytes from [a0+32]:8 +0x2d8, including `lw` at 0x50e4, `lw` at 0x51f8, `lw` at 0x5240.
  The `ld` at 0x50f4 loads 8 bytes from [a0+32]:8 +0x2e0.
  The `ld` at 0x5108 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0x510c loads 8 bytes from [a0+72]:8 +0x70.
  2 such `lw` accesses load 4 bytes from [a0+32]:8 +0x50, including `lw` at 0x514c, `lw` at 0x5210.
  2 such `sw` accesses store 4 bytes to [a0+32]:8 +0x50, including `sw` at 0x5154, `sw` at 0x5218.
  The `lw` at 0x5158 loads 4 bytes from [a0+32]:8 +0x28e8.
  The `ld` at 0x516c loads 8 bytes from ?.
  The `sw` at 0x5180 stores 4 bytes to ?.
  The `sd` at 0x51dc stores 8 bytes to table(0x110000) +0x0.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x51e4, `lw` at 0x5260.
  The `lw` at 0x521c loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `jal` at 0x5124 calls copyin with a0=a2 at entry (arg2), a1=sp-128, a2=0x4, a3=?, a4=[[a0+72]:8+112]:8.
  The `jal` at 0x5134 calls RRM_CheckValidFault with a0=a0 at entry (arg0), a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x51d8 calls timeout with a0=sym(odsy_glget_timeout), a1=[a0+32]:8, a2=0x5dc, a3=?, a4=0x1, a5=0x2.
  The `jal` at 0x51f0 calls untimeout with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x5254 calls us_delay with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x52c0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x52dc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=?, a4=[[a0+72]:8+112]:8.
  The `jal` at 0x52fc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0x50fc targets 0x52b0, is taken when at(=[[a0+32]:8+728]) != 0, and falls through when at(=[[a0+32]:8+728]) == 0.
  The `beq` branch at 0x5114 targets 0x52d8, is taken when a4(=[[a0+72]:8+112]:8) == 0, and falls through when a4(=[[a0+72]:8+112]:8) != 0.
  The `bne` branch at 0x512c targets 0x52f8, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `bltz` branch at 0x5140 targets 0x52a0, is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed), and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed).
  The `beq` branch at 0x5188 targets 0x5234, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x5190 targets 0x5280, is taken when a0(?) == a4(=0x1), and falls through when a0(?) != a4(=0x1).
  The `beq` branch at 0x5198 targets 0x5288, is taken when a0(?) == a5(=0x2), and falls through when a0(?) != a5(=0x2).
  The `beq` branch at 0x51a0 targets 0x5294, is taken when a0(?) == at(=0x3), and falls through when a0(?) != at(=0x3).
  The `beq` branch at 0x51e8 targets 0x5240, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x5200 targets 0x520c, is taken when a5(=[[a0+32]:8+728]) == 0, and falls through when a5(=[[a0+32]:8+728]) != 0.
  The `beq` branch at 0x5238 targets 0x51ac and is always taken.
  The `bne` branch at 0x5244 targets 0x51f0, is taken when v1(=[[a0+32]:8+728]) != 0, and falls through when v1(=[[a0+32]:8+728]) == 0.
  The `bne` branch at 0x5264 targets 0x5278, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x5270 targets 0x5250, is taken when a5(=[[a0+32]:8+728]) == 0, and falls through when a5(=[[a0+32]:8+728]) != 0.
  The `beq` branch at 0x5278 targets 0x51f0 and is always taken.
  The `beq` branch at 0x5280 targets 0x51ac and is always taken.
  The `beq` branch at 0x528c targets 0x51ac and is always taken.
  The `beq` branch at 0x5298 targets 0x51ac and is always taken.
  The `beq` branch at 0x52a8 targets 0x5220 and is always taken.
  The `beq` branch at 0x52d0 targets 0x5108 and is always taken.
  The `beq` branch at 0x52f0 targets 0x5220 and is always taken.
  The `beq` branch at 0x5310 targets 0x5220 and is always taken.
  The return at 0x522c has v0 = one of [a3], 0xe, 0x1.
- `odsy_i2cFixupAfterErr` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x0-0x4c (76 bytes).
  It occupies 76 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x10, including `ld` at 0x18, `ld` at 0x38.
  The `jal` at 0x20 calls odsy_usdelay with a0=[a0+16]:8, a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x28 calls odsy_i2cReset with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x34 calls odsy_usdelay with a0=[a0+16]:8, a1=[sym(.sdata)+8], a2=?, a3=?.
  The return at 0x44 has v0 = ret(odsy_usdelay).
- `odsy_i2cPLLRegWrite` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x4c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x4c-0xd8 (140 bytes).
  It occupies 140 bytes.
  The `lbu` at 0x5c loads 1 byte from a0 (arg0 at entry) +0x20.
  The `jal` at 0x70 calls odsy_i2c_start with a0=a0 at entry (arg0), a1=?, a2=0x1, a3=a3 at entry (arg3).
  The `jal` at 0x88 calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x1, a3=0x0.
  The `jal` at 0xa0 calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=0x1, a3=0x1.
  The `jal` at 0xbc calls odsy_i2cReset with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0x78 targets 0xbc, is taken when v0(=ret(odsy_i2c_start)) != 0, and falls through when v0(=ret(odsy_i2c_start)) == 0.
  The `bne` branch at 0x90 targets 0xbc, is taken when v0(=ret(odsy_i2c_sendbyte)) != 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` branch at 0xa8 targets 0xbc, is taken when v0(=ret(odsy_i2c_sendbyte)) != 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `beq` branch at 0xb4 targets 0xd0 and is always taken.
  The return at 0xd0 has v0 = one of 0x0, 0x1.
- `odsy_i2cPLLRegRead` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0xd8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0xd8-0x188 (176 bytes).
  It occupies 176 bytes.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x20, including `lbu` at 0xe8, `lbu` at 0x124.
  The `jal` at 0xfc calls odsy_i2c_start with a0=a0 at entry (arg0), a1=?, a2=0x1, a3=a3 at entry (arg3).
  The `jal` at 0x114 calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x1, a3=0x0.
  The `jal` at 0x138 calls odsy_i2c_start with a0=a0 at entry (arg0), a1=?, a2=0x1, a3=?.
  The `jal` at 0x150 calls odsy_i2c_long_recvbyte with a0=a0 at entry (arg0), a1=0x0, a2=0x1, a3=a2 at entry (arg2).
  The `jal` at 0x16c calls odsy_i2cReset with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0x104 targets 0x16c, is taken when v0(=ret(odsy_i2c_start)) != 0, and falls through when v0(=ret(odsy_i2c_start)) == 0.
  The `bne` branch at 0x11c targets 0x16c, is taken when v0(=ret(odsy_i2c_sendbyte)) != 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` branch at 0x140 targets 0x16c, is taken when v0(=ret(odsy_i2c_start)) != 0, and falls through when v0(=ret(odsy_i2c_start)) == 0.
  The `bne` branch at 0x158 targets 0x16c, is taken when v0(=ret(odsy_i2c_long_recvbyte)) != 0, and falls through when v0(=ret(odsy_i2c_long_recvbyte)) == 0.
  The `beq` branch at 0x164 targets 0x180 and is always taken.
  The return at 0x180 has v0 = one of 0x0, 0x1.
- `odsy_i2cDDCRegRead` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x188 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x188-0x218 (144 bytes).
  It occupies 144 bytes.
  The `lbu` at 0x198 loads 1 byte from a0 (arg0 at entry) +0x20.
  The `jal` at 0x1b0 calls odsy_i2c_start with a0=a0 at entry (arg0), a1=?, a2=0x1, a3=a3 at entry (arg3).
  The `jal` at 0x1c8 calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x1, a3=0x0.
  The `jal` at 0x1e0 calls odsy_i2c_long_recvbyte with a0=a0 at entry (arg0), a1=0x0, a2=0x1, a3=a2 at entry (arg2).
  The `jal` at 0x1fc calls odsy_i2cReset with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0x1b8 targets 0x1fc, is taken when v0(=ret(odsy_i2c_start)) != 0, and falls through when v0(=ret(odsy_i2c_start)) == 0.
  The `bne` branch at 0x1d0 targets 0x1fc, is taken when v0(=ret(odsy_i2c_sendbyte)) != 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` branch at 0x1e8 targets 0x1fc, is taken when v0(=ret(odsy_i2c_long_recvbyte)) != 0, and falls through when v0(=ret(odsy_i2c_long_recvbyte)) == 0.
  The `beq` branch at 0x1f4 targets 0x210 and is always taken.
  The return at 0x210 has v0 = one of 0x0, 0x1.
- `odsy_i2cPLLSeqRegWrite` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x218 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x218-0x308 (240 bytes).
  It occupies 240 bytes.
  The `lbu` at 0x228 loads 1 byte from a0 (arg0 at entry) +0x20.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x298, `lbu` at 0x2cc.
  The `jal` at 0x240 calls odsy_i2c_start with a0=a0 at entry (arg0), a1=?, a2=0x1, a3=a3 at entry (arg3).
  The `jal` at 0x25c calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x1, a3=0x0.
  The `jal` at 0x294 calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=?, a2=0x1, a3=0x0.
  The `jal` at 0x2c8 calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=?, a2=0x1, a3=0x1.
  The `jal` at 0x2e8 calls odsy_i2cReset with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0x248 targets 0x2e8, is taken when v0(=ret(odsy_i2c_start)) != 0, and falls through when v0(=ret(odsy_i2c_start)) == 0.
  The `bne` branch at 0x264 targets 0x2e8, is taken when v0(=ret(odsy_i2c_sendbyte)) != 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `beq` branch at 0x278 targets 0x2b4, is taken when a4(=a3-1) == 0, and falls through when a4(=a3-1) != 0.
  The `bne` branch at 0x29c targets 0x2e8, is taken when v0(=ret(odsy_i2c_sendbyte)) != 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` branch at 0x2ac targets 0x284, is taken when s1(?) < a4(=a3-1) (unsigned), and falls through when s1(?) >= a4(=a3-1) (unsigned).
  The `bne` branch at 0x2d4 targets 0x2e8, is taken when v0(=ret(odsy_i2c_sendbyte)) != 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `beq` branch at 0x2e0 targets 0x300 and is always taken.
  The return at 0x300 has v0 = one of 0x0, 0x1.
- `odsy_i2cPLLSeqRegRead` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x308 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x308-0x41c (276 bytes).
  It occupies 276 bytes.
  The `lbu` at 0x318 loads 1 byte from a0 (arg0 at entry) +0x20.
  The `jal` at 0x330 calls odsy_i2c_start with a0=a0 at entry (arg0), a1=?, a2=0x1, a3=a3 at entry (arg3).
  The `jal` at 0x348 calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x1, a3=0x0.
  The `jal` at 0x35c calls odsy_i2c_start with a0=a0 at entry (arg0), a1=0x4d, a2=0x1, a3=?.
  The `jal` at 0x374 calls odsy_i2c_long_recvbyte with a0=a0 at entry (arg0), a1=0x1, a2=0x0, a3=a2 at entry (arg2).
  The `jal` at 0x3b0 calls odsy_i2c_short_recvbyte with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x3e4 calls odsy_i2c_long_recvbyte with a0=a0 at entry (arg0), a1=0x0, a2=0x1, a3=?.
  The `jal` at 0x400 calls odsy_i2cReset with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0x338 targets 0x400, is taken when v0(=ret(odsy_i2c_start)) != 0, and falls through when v0(=ret(odsy_i2c_start)) == 0.
  The `bne` branch at 0x350 targets 0x400, is taken when v0(=ret(odsy_i2c_sendbyte)) != 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` branch at 0x364 targets 0x400, is taken when v0(=ret(odsy_i2c_start)) != 0, and falls through when v0(=ret(odsy_i2c_start)) == 0.
  The `bne` branch at 0x37c targets 0x400, is taken when v0(=ret(odsy_i2c_long_recvbyte)) != 0, and falls through when v0(=ret(odsy_i2c_long_recvbyte)) == 0.
  The `bne` branch at 0x394 targets 0x3d8, is taken when a4(=a3-1) < 0x2 (signed), and falls through when a4(=a3-1) >= 0x2 (signed).
  The `bne` branch at 0x3b8 targets 0x400, is taken when v0(=ret(odsy_i2c_short_recvbyte)) != 0, and falls through when v0(=ret(odsy_i2c_short_recvbyte)) == 0.
  The `bne` branch at 0x3cc targets 0x3a4, is taken when a6(?) < a4(=a3-1) (signed), and falls through when a6(?) >= a4(=a3-1) (signed).
  The `bne` branch at 0x3ec targets 0x400, is taken when v0(=ret(odsy_i2c_long_recvbyte)) != 0, and falls through when v0(=ret(odsy_i2c_long_recvbyte)) == 0.
  The `beq` branch at 0x3f8 targets 0x414 and is always taken.
  The return at 0x414 has v0 = one of 0x0, 0x1.
- `odsy_i2cProbe2b` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x41c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x41c-0x1a90 (5748 bytes).
  It occupies 5748 bytes.
  194 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x10, including `ld` at 0x434, `ld` at 0x458, `ld` at 0x478.
  3 such `sh` accesses store 2 bytes to a1 (arg1 at entry) +0x0, including `sh` at 0x444, `sh` at 0x494, `sh` at 0x1448.
  15 such `lw` accesses load 4 bytes from [a0+16]:8 +0x5720, including `lw` at 0x45c, `lw` at 0x484, `lw` at 0x564.
  61 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2e0, including `ld` at 0x46c, `ld` at 0x4c0, `ld` at 0x534.
  2 such `sw` accesses store 4 bytes to [a0+16]:8 +0x130, including `sw` at 0x490, `sw` at 0x143c.
  The `lw` at 0x4bc loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0x4dc loads 4 bytes from [[a0+16]:8+736]:8 +0x233804.
  46 such `sd` accesses store 8 bytes to [[a0+16]:8+736]:8 +0x400000, including `sd` at 0x4f8, `sd` at 0x55c, `sd` at 0x6a8.
  9 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0x4fc, `ld` at 0x50c, `ld` at 0x52c.
  5 such `lw` accesses load 4 bytes from [a0]:8 +0x0, including `lw` at 0x500, `lw` at 0x510, `lw` at 0x58c.
  5 such `sw` accesses store 4 bytes to [a0]:8 +0x0, including `sw` at 0x508, `sw` at 0x518, `sw` at 0x594.
  4 such `lhu` accesses load 2 bytes from a0 (arg0 at entry) +0x18, including `lhu` at 0x520, `lhu` at 0x668, `lhu` at 0x774.
  4 such `lwu` accesses load 4 bytes from [a0]:8 +0x0, including `lwu` at 0x540, `lwu` at 0x684, `lwu` at 0x78c.
  20 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2828, including `ld` at 0x5d8, `ld` at 0x628, `ld` at 0x718.
  50 such `lw` accesses load 4 bytes from [a0+16]:8 +0x55f0, including `lw` at 0x924, `lw` at 0x97c, `lw` at 0x9d8.
  20 such `lhu` accesses load 2 bytes from [a0+16]:8 +0x2830, including `lhu` at 0x928, `lhu` at 0x988, `lhu` at 0xb7c.
  50 such `sw` accesses store 4 bytes to [a0+16]:8 +0x55f0, including `sw` at 0x94c, `sw` at 0x998, `sw` at 0x9e4.
  30 such `lwu` accesses load 4 bytes from [a0+16]:8 +0x55f0, including `lwu` at 0x958, `lwu` at 0x9a0, `lwu` at 0x9f0.
  10 such `sd` accesses store 8 bytes to [a0+16]:8 +0x2828, including `sd` at 0xa38, `sd` at 0xc90, `sd` at 0xed0.
  The `jal` at 0x448 calls bzero with a0=a1 at entry (arg1), a1=0x80, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x450 calls odsy_i2cReset with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x468 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xd, a2=?, a3=[a0+16]:8.
  The `jal` at 0x498 calls odsy_i2cReset with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x578 calls odsy_usdelay with a0=[a0+16]:8, a1=0xa, a2=?, a3=[a0+16]:8.
  The `jal` at 0x5ac calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=[a0+16]:8.
  The `jal` at 0x5cc calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=[a0+16]:8, a4=[[a0+16]:8+22304].
  The `jal` at 0x5e8 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8.
  The `jal` at 0x5f8 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x60c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x61c calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=[a0+16]:8, a7=0xfffffffffffeffff.
  The `jal` at 0x634 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=[[a0+16]:8+10280]:8, a3=[a0+16]:8.
  The `jal` at 0x644 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x658 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x6bc calls us_delay with a0=0xa, a1=?, a2=?, a3=?.
  The `jal` at 0x6ec calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=[a0+16]:8.
  The `jal` at 0x70c calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=[a0+16]:8, a4=[[a0+16]:8+22304].
  The `jal` at 0x728 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8.
  The `jal` at 0x738 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x74c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x760 calls psema with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=[a0+16]:8.
  The `jal` at 0x7c4 calls us_delay with a0=0xa, a1=?, a2=?, a3=?.
  The `jal` at 0x800 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=[a0+16]:8.
  The `jal` at 0x81c calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=[a0+16]:8, a4=[[a0+16]:8+22304].
  The `jal` at 0x838 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8.
  The `jal` at 0x848 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x85c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x88c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=[[a0+16]:8+10280]:8, a3=[a0+16]:8.
  The `jal` at 0x89c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x8b0 calls psema with a0=[a0+16]:8+10256, a1=0x19, a2=[[a0+16]:8+22304], a3=[a0+16]:8, a4=[a0]:8.
  The `jal` at 0x8c4 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=0xffffffff, a2=?, a3=[a0+16]:8, a5=0xffffffff00000000, a6=0x30000001, a7=0xfffffffffffeffff.
  The `jal` at 0x8e0 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=[[a0+16]:8+10280]:8, a3=[a0+16]:8.
  The `jal` at 0x8f0 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x904 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x918 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0xa44 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8.
  The `jal` at 0xa54 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=[a0+16]:8.
  The `jal` at 0xa70 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8.
  The `jal` at 0xa80 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0xa94 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0xaa8 calls psema with a0=[a0+16]:8+10256, a1=0x19, a2=[a0]:8, a3=[a0+16]:8.
  The `jal` at 0xab8 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=[a0+16]:8.
  The `jal` at 0xac8 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xad8 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=[a0+16]:8.
  The `jal` at 0xaf4 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=[[a0+16]:8+10280]:8, a3=[a0+16]:8.
  The `jal` at 0xb04 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0xb18 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0xb28 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=[[a0+16]:8+10280]:8, a3=[a0+16]:8.
  The `jal` at 0xb38 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xb48 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=[a0+16]:8.
  The `jal` at 0xb58 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xb6c calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0xc9c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8.
  The `jal` at 0xcac calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=[a0+16]:8.
  The `jal` at 0xcbc calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xd24 calls odsy_usdelay with a0=[a0+16]:8, a1=0xa, a2=?, a3=[a0+16]:8.
  The `jal` at 0xd3c calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=[a0+16]:8.
  The `jal` at 0xd58 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=[a0+16]:8.
  The `jal` at 0xd74 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=[[a0+16]:8+10280]:8, a3=[a0+16]:8.
  The `jal` at 0xd84 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0xd98 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0xdac calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0xedc calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8.
  The `jal` at 0xef0 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x1020 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8.
  The `jal` at 0x1030 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=[[a0+16]:8+10280]:8, a3=[a0+16]:8.
  The `jal` at 0x1040 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x1054 calls psema with a0=[a0+16]:8+10256, a1=0x19, a2=([[a0]:8] | 0x10000), a3=[a0+16]:8.
  The `jal` at 0x1068 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x1198 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8.
  The `jal` at 0x11ac calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x12dc calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8.
  The `jal` at 0x1338 calls odsy_i2cReset with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x135c calls odsy_i2c_start with a0=a0 at entry (arg0), a1=0x60, a2=0x0, a3=?.
  The `jal` at 0x1370 calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=0x0, a2=0x0, a3=0x0.
  The `jal` at 0x1380 calls odsy_i2c_start with a0=a0 at entry (arg0), a1=0xa0, a2=0x1, a3=?.
  The `jal` at 0x1398 calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=0x0, a2=0x1, a3=0x0.
  The `jal` at 0x13ac calls odsy_i2c_start with a0=a0 at entry (arg0), a1=0xa1, a2=0x1, a3=?.
  The `jal` at 0x13c8 calls odsy_i2c_long_recvbyte with a0=a0 at entry (arg0), a1=0x1, a2=0x0, a3=a1+2.
  The `jal` at 0x13e8 calls odsy_i2c_short_recvbyte with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1418 calls odsy_i2c_long_recvbyte with a0=a0 at entry (arg0), a1=0x0, a2=0x1, a3=?.
  The `jal` at 0x1428 calls odsy_validate_ddc_data with a0=a1+2, a1=?, a2=?, a3=?.
  The `jal` at 0x144c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=[a0+16]:8.
  The `jal` at 0x145c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x146c calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=[a0+16]:8.
  The `jal` at 0x1488 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=[[a0+16]:8+10280]:8, a3=[a0+16]:8.
  The `jal` at 0x1498 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x14ac calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x14c0 calls psema with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=[a0+16]:8.
  The `jal` at 0x14d4 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x1604 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8.
  The `jal` at 0x1614 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=[[a0+16]:8+10280]:8, a3=[a0+16]:8.
  The `jal` at 0x1624 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x1634 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=[[a0+16]:8+10280]:8, a3=[a0+16]:8.
  The `jal` at 0x1644 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x1654 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=[[a0+16]:8+22304], a3=[a0+16]:8, a4=[[a0+16]:8+736]:8+0x400000.
  The `jal` at 0x1670 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=[[a0+16]:8+10280]:8, a3=[a0+16]:8.
  The `jal` at 0x1680 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x1694 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x16a8 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x17d8 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8.
  The `jal` at 0x17ec calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x191c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8.
  The `jal` at 0x192c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=[[a0+16]:8+10280]:8, a3=[a0+16]:8.
  The `jal` at 0x193c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x1950 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x1a80 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8.
  The `beq` branch at 0x460 targets 0x75c, is taken when at(=[[a0+16]:8+22304]) == 0, and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x47c targets 0x4bc, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x488 targets 0x61c, is taken when v1(=[[a0+16]:8+22304]) == 0, and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x4d8 targets 0x86c, is taken when v1(=[a0+28]) == 0, and falls through when v1(=[a0+28]) != 0.
  The `beq` branch at 0x568 targets 0x8c0, is taken when v1(=[[a0+16]:8+22304]) == 0, and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x5a0 targets 0x8ac, is taken when a2(=[[a0+16]:8+22304]) == 0, and falls through when a2(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x5b8 targets 0x668, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `bne` branch at 0x5c4 targets 0x490, is taken when a4(=[[a0+16]:8+22304]) != 0, and falls through when a4(=[[a0+16]:8+22304]) == 0.
  The `beq` branch at 0x5dc targets 0xab8, is taken when at(=[[a0+16]:8+10280]:8) == 0, and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x600 targets 0xb68, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x614 targets 0x490 and is always taken.
  The `beq` branch at 0x62c targets 0x888, is taken when a2(=[[a0+16]:8+10280]:8) == 0, and falls through when a2(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x64c targets 0x914, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x660 targets 0x490 and is always taken.
  The `beq` branch at 0x6b4 targets 0xa54, is taken when v1(=[[a0+16]:8+22304]) == 0, and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x6e4 targets 0xaa4, is taken when at(=[[a0+16]:8+22304]) == 0, and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x6f8 targets 0x770, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `bne` branch at 0x704 targets 0x490, is taken when a4(=[[a0+16]:8+22304]) != 0, and falls through when a4(=[[a0+16]:8+22304]) == 0.
  The `beq` branch at 0x71c targets 0xb48, is taken when at(=[[a0+16]:8+10280]:8) == 0, and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x740 targets 0xeec, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x754 targets 0x490 and is always taken.
  The `beq` branch at 0x768 targets 0x464 and is always taken.
  The `beq` branch at 0x7bc targets 0xad8, is taken when v1(=[[a0+16]:8+22304]) == 0, and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `bne` branch at 0x7d8 targets 0x588, is taken when a0(?) < 0x9 (signed), and falls through when a0(?) >= 0x9 (signed).
  The `beq` branch at 0x7f8 targets 0x1050, is taken when v1(=[[a0+16]:8+22304]) == 0, and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x808 targets 0xccc, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `bne` branch at 0x814 targets 0x490, is taken when a4(=[[a0+16]:8+22304]) != 0, and falls through when a4(=[[a0+16]:8+22304]) == 0.
  The `beq` branch at 0x82c targets 0x144c, is taken when at(=[[a0+16]:8+10280]:8) == 0, and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x850 targets 0x14d0, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x864 targets 0x490 and is always taken.
  The `beq` branch at 0x880 targets 0x4e4 and is always taken.
  The `beq` branch at 0x8a4 targets 0x490 and is always taken.
  The `beq` branch at 0x8b8 targets 0x5a8 and is always taken.
  The `beq` branch at 0x8d4 targets 0xb28, is taken when a2(=[[a0+16]:8+10280]:8) == 0, and falls through when a2(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x8f8 targets 0xda8, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x90c targets 0x574 and is always taken.
  The `beq` branch at 0x93c targets 0x9bc, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x9cc targets 0xa10, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xa4c targets 0x658 and is always taken.
  The `beq` branch at 0xa64 targets 0xcac, is taken when at(=[[a0+16]:8+10280]:8) == 0, and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0xa88 targets 0x1064, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0xa9c targets 0x6bc and is always taken.
  The `beq` branch at 0xab0 targets 0x6e8 and is always taken.
  The `beq` branch at 0xad0 targets 0x490 and is always taken.
  The `beq` branch at 0xae8 targets 0x1030, is taken when a2(=[[a0+16]:8+10280]:8) == 0, and falls through when a2(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0xb0c targets 0x11a8, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0xb20 targets 0x7c4 and is always taken.
  The `beq` branch at 0xb40 targets 0x90c and is always taken.
  The `beq` branch at 0xb60 targets 0x490 and is always taken.
  The `beq` branch at 0xb90 targets 0xc14, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0xc24 targets 0xc68, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xca4 targets 0x60c and is always taken.
  The `beq` branch at 0xcc4 targets 0x6bc and is always taken.
  The `beq` branch at 0xd1c targets 0x146c, is taken when v1(=[[a0+16]:8+22304]) == 0, and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0xd34 targets 0x14bc, is taken when at(=[[a0+16]:8+22304]) == 0, and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0xd44 targets 0x12ec, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `bne` branch at 0xd50 targets 0x490, is taken when v1(=[[a0+16]:8+22304]) != 0, and falls through when v1(=[[a0+16]:8+22304]) == 0.
  The `beq` branch at 0xd68 targets 0x1614, is taken when a2(=[[a0+16]:8+10280]:8) == 0, and falls through when a2(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0xd8c targets 0x16a4, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0xda0 targets 0x490 and is always taken.
  The `beq` branch at 0xdd0 targets 0xe54, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0xe64 targets 0xea8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xee4 targets 0x904 and is always taken.
  The `beq` branch at 0xf14 targets 0xf98, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0xfa8 targets 0xfec, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x1028 targets 0x74c and is always taken.
  The `beq` branch at 0x1048 targets 0x7c4 and is always taken.
  The `beq` branch at 0x105c targets 0x7fc and is always taken.
  The `beq` branch at 0x108c targets 0x1110, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x1120 targets 0x1164, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x11a0 targets 0xa94 and is always taken.
  The `beq` branch at 0x11d0 targets 0x1254, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x1264 targets 0x12a8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x12e4 targets 0xb18 and is always taken.
  The `beq` branch at 0x1328 targets 0x1654, is taken when a2(=[[a0+16]:8+22304]) == 0, and falls through when a2(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x1330 targets 0x1354 and is always taken.
  The `beq` branch at 0x1350 targets 0x48c, is taken when at(?) >= 0x4 (signed), and falls through when at(?) < 0x4 (signed).
  The `bne` branch at 0x1388 targets 0x1338, is taken when v0(=ret(odsy_i2c_start)) != 0, and falls through when v0(=ret(odsy_i2c_start)) == 0.
  The `bne` branch at 0x13a0 targets 0x1338, is taken when v0(=ret(odsy_i2c_sendbyte)) != 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` branch at 0x13b4 targets 0x1338, is taken when v0(=ret(odsy_i2c_start)) != 0, and falls through when v0(=ret(odsy_i2c_start)) == 0.
  The `bne` branch at 0x13d0 targets 0x1338, is taken when v0(=ret(odsy_i2c_long_recvbyte)) != 0, and falls through when v0(=ret(odsy_i2c_long_recvbyte)) == 0.
  The `bne` branch at 0x13f0 targets 0x48c, is taken when v0(=ret(odsy_i2c_short_recvbyte)) != 0, and falls through when v0(=ret(odsy_i2c_short_recvbyte)) == 0.
  The `bne` branch at 0x1400 targets 0x13dc, is taken when a6(?) < 0x7f (signed), and falls through when a6(?) >= 0x7f (signed).
  The `bne` branch at 0x1420 targets 0x1338, is taken when v0(=ret(odsy_i2c_long_recvbyte)) != 0, and falls through when v0(=ret(odsy_i2c_long_recvbyte)) == 0.
  The `beq` branch at 0x1430 targets 0x1338, is taken when v0(=ret(odsy_validate_ddc_data)) == 0, and falls through when v0(=ret(odsy_validate_ddc_data)) != 0.
  The `beq` branch at 0x1444 targets 0x4a4 and is always taken.
  The `beq` branch at 0x1464 targets 0x490 and is always taken.
  The `beq` branch at 0x147c targets 0x1634, is taken when a2(=[[a0+16]:8+10280]:8) == 0, and falls through when a2(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x14a0 targets 0x17e8, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x14b4 targets 0xd20 and is always taken.
  The `beq` branch at 0x14c8 targets 0xd38 and is always taken.
  The `beq` branch at 0x14f8 targets 0x157c, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x158c targets 0x15d0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x160c targets 0x85c and is always taken.
  The `beq` branch at 0x162c targets 0x490 and is always taken.
  The `beq` branch at 0x164c targets 0x14b4 and is always taken.
  The `beq` branch at 0x1664 targets 0x192c, is taken when a2(=[[a0+16]:8+10280]:8) == 0, and falls through when a2(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x1688 targets 0x194c, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x169c targets 0x1330 and is always taken.
  The `beq` branch at 0x16cc targets 0x1750, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x1760 targets 0x17a4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x17e0 targets 0xd98 and is always taken.
  The `beq` branch at 0x1810 targets 0x1894, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x18a4 targets 0x18e8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x1924 targets 0x14ac and is always taken.
  The `beq` branch at 0x1944 targets 0x1330 and is always taken.
  The `beq` branch at 0x1974 targets 0x19f8, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x1a08 targets 0x1a4c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x1a88 targets 0x1694 and is always taken.
  The return at 0x4b4 has v0 = one of 0x0, 0x1.
- `odsy_validate_ddc_data` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x1a90 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x1a90-0x1abc (44 bytes).
  It occupies 44 bytes.
  The `jal` at 0x1a98 calls odsy_i2cValidEdid with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1aa0 targets 0x1ab4, is taken when v0(=ret(odsy_i2cValidEdid)) == 0, and falls through when v0(=ret(odsy_i2cValidEdid)) != 0.
  The `beq` branch at 0x1ab4 targets 0x1aac and is always taken.
  The return at 0x1aac has v0 = one of 0x0, 0x1.
- `odsy_EdidCksum` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x1abc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x1abc-0x1ae8 (44 bytes).
  It occupies 44 bytes.
  The `lbu` at 0x1acc loads 1 byte from ?.
  The `bne` branch at 0x1ad8 targets 0x1ac4, is taken when a3(?) < 0x80 (signed), and falls through when a3(?) >= 0x80 (signed).
  The return at 0x1ae0 has v0 = ?.
- `odsy_i2cValidEdid` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x1ae8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x1ae8-0x1b84 (156 bytes).
  It occupies 156 bytes.
  The `lbu` at 0x1ae8 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lbu` at 0x1b1c loads 1 byte from a0 (arg0 at entry) +0x1.
  The `lbu` at 0x1b28 loads 1 byte from a0 (arg0 at entry) +0x2.
  The `lbu` at 0x1b34 loads 1 byte from a0 (arg0 at entry) +0x3.
  The `lbu` at 0x1b40 loads 1 byte from a0 (arg0 at entry) +0x4.
  The `lbu` at 0x1b4c loads 1 byte from a0 (arg0 at entry) +0x5.
  The `lbu` at 0x1b58 loads 1 byte from a0 (arg0 at entry) +0x6.
  The `lbu` at 0x1b64 loads 1 byte from a0 (arg0 at entry) +0x7.
  The `jal` at 0x1b00 calls odsy_EdidCksum with a0=a0 at entry (arg0), a1=[a0+6]:1, a2=[a0+7]:1, a3=a3 at entry (arg3).
  The `beq` branch at 0x1af0 targets 0x1b1c, is taken when at(=[a0]:1) == 0, and falls through when at(=[a0]:1) != 0.
  The `beq` branch at 0x1af8 targets 0x1b14 and is always taken.
  The `beq` branch at 0x1b08 targets 0x1b7c, is taken when v0(=ret(odsy_EdidCksum)) == 0, and falls through when v0(=ret(odsy_EdidCksum)) != 0.
  The `bne` branch at 0x1b20 targets 0x1b10, is taken when v1(=[a0+1]:1) != v0(=0xff), and falls through when v1(=[a0+1]:1) == v0(=0xff).
  The `bne` branch at 0x1b2c targets 0x1b10, is taken when a1(=[a0+2]:1) != v0(=0xff), and falls through when a1(=[a0+2]:1) == v0(=0xff).
  The `bne` branch at 0x1b38 targets 0x1b10, is taken when a2(=[a0+3]:1) != v0(=0xff), and falls through when a2(=[a0+3]:1) == v0(=0xff).
  The `bne` branch at 0x1b44 targets 0x1b10, is taken when at(=[a0+4]:1) != v0(=0xff), and falls through when at(=[a0+4]:1) == v0(=0xff).
  The `bne` branch at 0x1b50 targets 0x1b10, is taken when v1(=[a0+5]:1) != v0(=0xff), and falls through when v1(=[a0+5]:1) == v0(=0xff).
  The `bne` branch at 0x1b5c targets 0x1b14, is taken when a1(=[a0+6]:1) != v0(=0xff), and falls through when a1(=[a0+6]:1) == v0(=0xff).
  The `bne` branch at 0x1b68 targets 0x1b14, is taken when a2(=[a0+7]:1) != 0, and falls through when a2(=[a0+7]:1) == 0.
  The `beq` branch at 0x1b74 targets 0x1b00 and is always taken.
  The `beq` branch at 0x1b7c targets 0x1b14 and is always taken.
  The return at 0x1b14 has v0 = one of 0x0, 0x1.
- `sgiEdid` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x1b84 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x1b84-0x1bbc (56 bytes).
  It occupies 56 bytes.
  The `lbu` at 0x1b84 loads 1 byte from a0 (arg0 at entry) +0x8.
  The `lbu` at 0x1b98 loads 1 byte from a0 (arg0 at entry) +0x9.
  The `bne` branch at 0x1b90 targets 0x1ba8, is taken when at(=[a0+8]:1) != v0(=0x4c), and falls through when at(=[a0+8]:1) == v0(=0x4c).
  The `beq` branch at 0x1b9c targets 0x1bb4, is taken when v0(=[a0+9]:1) == v1(=0xf8), and falls through when v0(=[a0+9]:1) != v1(=0xf8).
  The `beq` branch at 0x1ba4 targets 0x1bb4, is taken when v0(=[a0+9]:1) == a1(=0xe9), and falls through when v0(=[a0+9]:1) != a1(=0xe9).
  The return at 0x1bac has v0 = 0x0.
  The return at 0x1bb4 has v0 = 0x1.
- `odsy_i2c2abReset` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x1bbc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x1bbc-0x1cec (304 bytes).
  It occupies 304 bytes.
  The `jal` at 0x1bd0 calls odsy_i2c_start with a0=a0 at entry (arg0), a1=0x6e, a2=0x1, a3=a3 at entry (arg3).
  The `jal` at 0x1be8 calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=0x50, a2=0x1, a3=0x0.
  The `jal` at 0x1c00 calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=0x81, a2=0x1, a3=0x0.
  The `jal` at 0x1c18 calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=0xf0, a2=0x1, a3=0x0.
  The `jal` at 0x1c30 calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=0x4f, a2=0x1, a3=0x0.
  The `jal` at 0x1c5c calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1c7c calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1c9c calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1cbc calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1cd8 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0x1bd8 targets 0x1c50, is taken when v0(=ret(odsy_i2c_start)) != 0, and falls through when v0(=ret(odsy_i2c_start)) == 0.
  The `bne` branch at 0x1bf0 targets 0x1c70, is taken when v0(=ret(odsy_i2c_sendbyte)) != 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` branch at 0x1c08 targets 0x1c90, is taken when v0(=ret(odsy_i2c_sendbyte)) != 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` branch at 0x1c20 targets 0x1cb0, is taken when v0(=ret(odsy_i2c_sendbyte)) != 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` branch at 0x1c3c targets 0x1cd0, is taken when v0(=ret(odsy_i2c_sendbyte)) != 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `beq` branch at 0x1c68 targets 0x1c48 and is always taken.
  The `beq` branch at 0x1c88 targets 0x1c48 and is always taken.
  The `beq` branch at 0x1ca8 targets 0x1c48 and is always taken.
  The `beq` branch at 0x1cc8 targets 0x1c48 and is always taken.
  The `beq` branch at 0x1ce4 targets 0x1c48 and is always taken.
  The return at 0x1c48 has v0 = one of 0x0, 0x1.
- `odsy_i2c2abAttention` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x1cec (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x1cec-0x1d80 (148 bytes).
  It occupies 148 bytes.
  The `jal` at 0x1d14 calls odsy_i2c_becomeSlaveRecv with a0=a0 at entry (arg0), a1=0x1, a2=0x50, a3=sp-48.
  The `jal` at 0x1d2c calls odsy_i2c_slave_recvbyte with a0=a0 at entry (arg0), a1=0x1, a2=0x4, a3=sp-47.
  The `jal` at 0x1d50 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=sp-47.
  The `jal` at 0x1d6c calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0x1d1c targets 0x1d48, is taken when v0(=ret(odsy_i2c_becomeSlaveRecv)) != 0, and falls through when v0(=ret(odsy_i2c_becomeSlaveRecv)) == 0.
  The `bne` branch at 0x1d34 targets 0x1d64, is taken when v0(=ret(odsy_i2c_slave_recvbyte)) != 0, and falls through when v0(=ret(odsy_i2c_slave_recvbyte)) == 0.
  The `beq` branch at 0x1d5c targets 0x1d40 and is always taken.
  The `beq` branch at 0x1d78 targets 0x1d40 and is always taken.
  The return at 0x1d40 has v0 = one of 0x0, 0x1.
- `odsy_i2c2abIDRequest` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x1d80 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x1d80-0x1eb0 (304 bytes).
  It occupies 304 bytes.
  The `jal` at 0x1d94 calls odsy_i2c_start with a0=a0 at entry (arg0), a1=0x6e, a2=0x1, a3=a3 at entry (arg3).
  The `jal` at 0x1dac calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=0x50, a2=0x1, a3=0x0.
  The `jal` at 0x1dc4 calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=0x81, a2=0x1, a3=0x0.
  The `jal` at 0x1ddc calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=0xf1, a2=0x1, a3=0x0.
  The `jal` at 0x1df4 calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=0x4e, a2=0x1, a3=0x1.
  The `jal` at 0x1e20 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1e40 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1e60 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1e80 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1e9c calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0x1d9c targets 0x1e14, is taken when v0(=ret(odsy_i2c_start)) != 0, and falls through when v0(=ret(odsy_i2c_start)) == 0.
  The `bne` branch at 0x1db4 targets 0x1e34, is taken when v0(=ret(odsy_i2c_sendbyte)) != 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` branch at 0x1dcc targets 0x1e54, is taken when v0(=ret(odsy_i2c_sendbyte)) != 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` branch at 0x1de4 targets 0x1e74, is taken when v0(=ret(odsy_i2c_sendbyte)) != 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` branch at 0x1e00 targets 0x1e94, is taken when v0(=ret(odsy_i2c_sendbyte)) != 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `beq` branch at 0x1e2c targets 0x1e0c and is always taken.
  The `beq` branch at 0x1e4c targets 0x1e0c and is always taken.
  The `beq` branch at 0x1e6c targets 0x1e0c and is always taken.
  The `beq` branch at 0x1e8c targets 0x1e0c and is always taken.
  The `beq` branch at 0x1ea8 targets 0x1e0c and is always taken.
  The return at 0x1e0c has v0 = one of 0x0, 0x1.
- `odsy_i2c2abPresencechk` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x1eb0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x1eb0-0x1fe0 (304 bytes).
  It occupies 304 bytes.
  The `jal` at 0x1ec4 calls odsy_i2c_start with a0=a0 at entry (arg0), a1=0x6e, a2=0x1, a3=a3 at entry (arg3).
  The `jal` at 0x1edc calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=0x50, a2=0x1, a3=0x0.
  The `jal` at 0x1ef4 calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=0x81, a2=0x1, a3=0x0.
  The `jal` at 0x1f0c calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=0xf1, a2=0x1, a3=0x0.
  The `jal` at 0x1f24 calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=0x48, a2=0x1, a3=0x1.
  The `jal` at 0x1f50 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1f70 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1f90 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1fb0 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1fcc calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0x1ecc targets 0x1f44, is taken when v0(=ret(odsy_i2c_start)) != 0, and falls through when v0(=ret(odsy_i2c_start)) == 0.
  The `bne` branch at 0x1ee4 targets 0x1f64, is taken when v0(=ret(odsy_i2c_sendbyte)) != 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` branch at 0x1efc targets 0x1f84, is taken when v0(=ret(odsy_i2c_sendbyte)) != 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` branch at 0x1f14 targets 0x1fa4, is taken when v0(=ret(odsy_i2c_sendbyte)) != 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` branch at 0x1f30 targets 0x1fc4, is taken when v0(=ret(odsy_i2c_sendbyte)) != 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `beq` branch at 0x1f5c targets 0x1f3c and is always taken.
  The `beq` branch at 0x1f7c targets 0x1f3c and is always taken.
  The `beq` branch at 0x1f9c targets 0x1f3c and is always taken.
  The `beq` branch at 0x1fbc targets 0x1f3c and is always taken.
  The `beq` branch at 0x1fd8 targets 0x1f3c and is always taken.
  The return at 0x1f3c has v0 = one of 0x0, 0x1.
- `odsy_i2c2abIDReply` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x1fe0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x1fe0-0x1fe8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1fe0 has v0 = 0x0.
- `odsy_i2c2abAssignAddr` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x1fe8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x1fe8-0x1ff0 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1fe8 has v0 = 0x0.
- `odsy_i2cProbe2ab` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x1ff0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x1ff0-0x215c (364 bytes).
  It occupies 364 bytes.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x10, including `ld` at 0x2064, `ld` at 0x2078, `ld` at 0x20cc.
  The `jal` at 0x201c calls odsy_usdelay with a0=[a0+16]:8, a1=0x64, a2=?, a3=?.
  The `jal` at 0x2030 calls odsy_i2c2abReset with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x2058 calls odsy_i2c2abAttention with a0=a0 at entry (arg0), a1=0x64, a2=?, a3=?.
  The `jal` at 0x2068 calls odsy_usdelay with a0=[a0+16]:8, a1=0x64, a2=?, a3=?.
  The `jal` at 0x207c calls odsy_usdelay with a0=[a0+16]:8, a1=0x64, a2=?, a3=?.
  The `jal` at 0x2084 calls odsy_i2c2abIDRequest with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x2094 calls odsy_i2c2abIDReply with a0=a0 at entry (arg0), a1=sp-128, a2=?, a3=?.
  The `jal` at 0x20ac calls odsy_i2c2abAssignAddr with a0=a0 at entry (arg0), a1=sp-128, a2=?, a3=?.
  The `jal` at 0x20d0 calls odsy_usdelay with a0=[a0+16]:8, a1=0x64, a2=?, a3=?.
  The `jal` at 0x2120 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x2134 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x214c calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x2010 targets 0x202c and is always taken.
  The `beq` branch at 0x2028 targets 0x20e0, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x2038 targets 0x2050, is taken when v0(=ret(odsy_i2c2abReset)) == 0, and falls through when v0(=ret(odsy_i2c2abReset)) != 0.
  The `bne` branch at 0x2048 targets 0x2030, is taken when s4(?) < 0x3 (signed), and falls through when s4(?) >= 0x3 (signed).
  The `beq` branch at 0x2050 targets 0x20cc, is taken when s4(?) == s2(=0x3), and falls through when s4(?) != s2(=0x3).
  The `bne` branch at 0x2060 targets 0x2018, is taken when v0(=ret(odsy_i2c2abAttention)) != 0, and falls through when v0(=ret(odsy_i2c2abAttention)) == 0.
  The `bne` branch at 0x208c targets 0x2118, is taken when v0(=ret(odsy_i2c2abIDRequest)) != 0, and falls through when v0(=ret(odsy_i2c2abIDRequest)) == 0.
  The `bne` branch at 0x209c targets 0x2130, is taken when v0(=ret(odsy_i2c2abIDReply)) != 0, and falls through when v0(=ret(odsy_i2c2abIDReply)) == 0.
  The `bne` branch at 0x20b4 targets 0x2144, is taken when v0(=ret(odsy_i2c2abAssignAddr)) != 0, and falls through when v0(=ret(odsy_i2c2abAssignAddr)) == 0.
  The `bne` branch at 0x20bc targets 0x2078, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x20c4 targets 0x2028 and is always taken.
  The `beq` branch at 0x20d8 targets 0x2028 and is always taken.
  The `bne` branch at 0x20f4 targets 0x2108, is taken when s1(?) < 0x1e (signed), and falls through when s1(?) >= 0x1e (signed).
  The `beq` branch at 0x2100 targets 0x2110 and is always taken.
  The `beq` branch at 0x2128 targets 0x2094 and is always taken.
  The `beq` branch at 0x213c targets 0x20a8 and is always taken.
  The `beq` branch at 0x2154 targets 0x20bc and is always taken.
  The return at 0x2110 has v0 = one of 0x0, 0x1.
- `odsy_copyin_cmd` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x215c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x215c-0x21e4 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0x215c loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `ld` at 0x2174 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `jal` at 0x2184 calls copyin with a0=[a0+24]:8, a1=a1 at entry (arg1), a2=[a0+16], a3=a3 at entry (arg3).
  The `jal` at 0x21b4 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=[a0+16], a3=a3 at entry (arg3).
  The `jal` at 0x21d0 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `blez` branch at 0x2164 targets 0x21a8, is taken when a2(=[a0+16]) <= 0 (signed), and falls through when a2(=[a0+16]) > 0 (signed).
  The `beq` branch at 0x216c targets 0x21a8, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x2178 targets 0x21a0, is taken when v0(=[a0+24]:8) == 0, and falls through when v0(=[a0+24]:8) != 0.
  The `bne` branch at 0x218c targets 0x21c8, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `beq` branch at 0x21a0 targets 0x2198 and is always taken.
  The `beq` branch at 0x21c0 targets 0x2198 and is always taken.
  The `beq` branch at 0x21dc targets 0x2198 and is always taken.
  The return at 0x2198 has v0 = one of -0x16, -0xe, 0x0.
- `odsy_i2c_cmd` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x21e4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x21e4-0x2ad0 (2284 bytes).
  It occupies 2284 bytes.
  The `lhu` at 0x21e4 loads 2 bytes from a1 (arg1 at entry) +0x2.
  The `lw` at 0x2200 loads 4 bytes from a1 (arg1 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from (a0 + one of 0x56bc, 0x56e4) +0x0, including `lw` at 0x2268, `lw` at 0x22c8.
  2 such `ld` accesses load 8 bytes from (a0 + one of 0x56b0, 0x56d8) +0x0, including `ld` at 0x2270, `ld` at 0x22d0.
  The `ld` at 0x22a8 loads 8 bytes from (([a1+2]:2 << 0x3) + sym(.rodata)) +0x0.
  The `jal` at 0x2284 calls mutex_lock with a0=?, a1=0x19, a2=a2 at entry (arg2), a3=0x0, a6=[a1+2]:2, a7=0x0.
  Calls (unknown callee) via register with a0=a1 at entry (arg1), a1=?, a2=?, a3=(([a1+2]:2 << 0x3) + sym(.rodata)), a4=[(([a1+2]:2 << 0x3) + sym(.rodata))]:8, a5=sym(.rodata) (`jr` at 0x22ac).
  The `jal` at 0x22d4 calls mutex_unlock with a0=?, a1=?, a2=?, a3=(([a1+2]:2 << 0x3) + sym(.rodata)), a5=sym(.rodata).
  The `jal` at 0x22f8 calls mutex_lock with a0=?, a1=0x19, a2=a2 at entry (arg2), a3=0x0, a6=[a1+2]:2, a7=0x0.
  The `jal` at 0x2308 calls mutex_unlock with a0=?, a1=?, a2=?, a3=(([a1+2]:2 << 0x3) + sym(.rodata)), a5=sym(.rodata).
  The `beq` branch at 0x2220 targets 0x22e8, is taken when v0(=[a1+8]) == 0, and falls through when v0(=[a1+8]) != 0.
  The `bne` branch at 0x2228 targets 0x22b4, is taken when v0(=[a1+8]) != at(=0x1), and falls through when v0(=[a1+8]) == at(=0x1).
  The `beq` branch at 0x2274 targets 0x22f0, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x22a0 targets 0x22c4, is taken when a3(=[a1+2]:2) >= 0xd (unsigned), and falls through when a3(=[a1+2]:2) < 0xd (unsigned).
  The `beq` branch at 0x22cc targets 0x2308, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x22e0 targets 0x22b4 and is always taken.
  The `beq` branch at 0x22e8 targets 0x2234 and is always taken.
  The `beq` branch at 0x2300 targets 0x2290 and is always taken.
  The `beq` branch at 0x2310 targets 0x22e0 and is always taken.
  The return at 0x22b4 has v0 = one of -0x16, 0x0.
  The instructions from 0x22bc to 0x22c0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x2318 to 0x2acc are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x22ac uses a jump table whose successors are unresolved.
- `odsy_Probe2AB` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x2ad0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x2ad0-0x2dec (796 bytes).
  It occupies 796 bytes.
  3 such `sb` accesses store 1 byte to sym(odsy_i2cRcvBuf) +0x80, including `sb` at 0x2b5c, `sb` at 0x2cc8, `sb` at 0x2d2c.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x10, including `ld` at 0x2bb4, `ld` at 0x2c20, `ld` at 0x2c54.
  2 such `lbu` accesses load 1 byte from a1 (arg1 at entry) +0x0, including `lbu` at 0x2bc0, `lbu` at 0x2c8c.
  The `sb` at 0x2d64 stores 1 byte to ?.
  The `ld` at 0x2dc8 loads 8 bytes from ?.
  The `jal` at 0x2af8 calls odsy_i2cReset with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2b34 calls odsy_2abGetReply with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-256, a3=?.
  The `jal` at 0x2b74 calls odsy_2abSendCmd with a0=a0 at entry (arg0), a1=0x1, a2=sym(odsy_i2cRcvBuf), a3=0x0.
  The `jal` at 0x2b9c calls odsy_i2c_stop with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x2bb0 calls odsy_usdelay with a0=[a0+16]:8, a1=[sym(.sdata)+32], a2=?, a3=?.
  The `jal` at 0x2c10 calls odsy_i2c_stop with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x2c1c calls odsy_usdelay with a0=[a0+16]:8, a1=[sym(.sdata)+32], a2=?, a3=?.
  The `jal` at 0x2c5c calls odsy_usdelay with a0=[a0+16]:8, a1=[sym(.sdata)+32], a2=?, a3=0x1, a6=0x6e.
  The `jal` at 0x2c78 calls bcopy with a0=a1+1, a1=sp-248, a2=ret(odsy_2abGetReply)-1, a3=?, a6=ret(odsy_2abGetReply)-1.
  The `jal` at 0x2cac calls odsy_usdelay with a0=[a0+16]:8, a1=[sym(.sdata)+32], a2=?, a3=?.
  The `jal` at 0x2ccc calls odsy_2abSendCmd with a0=a0 at entry (arg0), a1=0x1, a2=sym(odsy_i2cRcvBuf), a3=0x0, a5=0xf1.
  The `jal` at 0x2ce0 calls odsy_2abGetReply with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-256, a3=?.
  The `jal` at 0x2d10 calls odsy_usdelay with a0=[a0+16]:8, a1=[sym(.sdata)+32], a2=?, a3=?.
  The `jal` at 0x2d20 calls odsy_usdelay with a0=[a0+16]:8, a1=[sym(.sdata)+32], a2=?, a3=0xe1.
  The `jal` at 0x2d3c calls bcopy with a0=sp-248, a1=?, a2=?, a3=?.
  The `jal` at 0x2d60 calls odsy_2abSendCmd with a0=a0 at entry (arg0), a1=?, a2=sym(odsy_i2cRcvBuf), a3=0x1.
  The `jal` at 0x2dc4 calls strncmp with a0=?, a1=sp-248, a2=0x13, a3=?.
  The `beq` branch at 0x2b20 targets 0x2b5c and is always taken.
  The `beq` branch at 0x2b28 targets 0x2b9c, is taken when s1(?) == s7(=0x3), and falls through when s1(?) != s7(=0x3).
  The `blez` branch at 0x2b40 targets 0x2c10, is taken when v0(=ret(odsy_2abGetReply)) <= 0 (signed), and falls through when v0(=ret(odsy_2abGetReply)) > 0 (signed).
  The `beq` branch at 0x2b4c targets 0x2bc0, is taken when v1(?) == a3(=0x1), and falls through when v1(?) != a3(=0x1).
  The `beq` branch at 0x2b54 targets 0x2bd8, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `bne` branch at 0x2b7c targets 0x2b28, is taken when v0(=ret(odsy_2abSendCmd)) != 0, and falls through when v0(=ret(odsy_2abSendCmd)) == 0.
  The `bne` branch at 0x2b8c targets 0x2b68, is taken when s1(?) < 0x3 (signed), and falls through when s1(?) >= 0x3 (signed).
  The `beq` branch at 0x2b94 targets 0x2b28 and is always taken.
  The `beq` branch at 0x2bb8 targets 0x2b54 and is always taken.
  The `beq` branch at 0x2bc8 targets 0x2c3c, is taken when at(=[a1]:1) == v1(=0xe0), and falls through when at(=[a1]:1) != v1(=0xe0).
  The `bne` branch at 0x2bd0 targets 0x2b5c, is taken when s1(?) != 0, and falls through when s1(?) == 0.
  The `bltz` branch at 0x2c24 targets 0x2c34, is taken when s5(=ret(odsy_2abGetReply)) < 0 (signed), and falls through when s5(=ret(odsy_2abGetReply)) >= 0 (signed).
  The `beq` branch at 0x2c2c targets 0x2b54 and is always taken.
  The `beq` branch at 0x2c34 targets 0x2c2c and is always taken.
  The `beq` branch at 0x2c64 targets 0x2ca4 and is always taken.
  The `beq` branch at 0x2c84 targets 0x2c98, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x2c90 targets 0x2d20, is taken when v1(=[a1]:1) == a3(=0xe1), and falls through when v1(=[a1]:1) != a3(=0xe1).
  The `beq` branch at 0x2ca0 targets 0x2d04, is taken when s1(?) >= 0x2 (signed), and falls through when s1(?) < 0x2 (signed).
  The `beq` branch at 0x2cd4 targets 0x2c80, is taken when v0(=ret(odsy_2abSendCmd)) == 0, and falls through when v0(=ret(odsy_2abSendCmd)) != 0.
  The `blez` branch at 0x2ce8 targets 0x2c80, is taken when v0(=ret(odsy_2abGetReply)) <= 0 (signed), and falls through when v0(=ret(odsy_2abGetReply)) > 0 (signed).
  The `beq` branch at 0x2cf4 targets 0x2c84, is taken when s5(=ret(odsy_2abGetReply)) >= 0x80 (signed), and falls through when s5(=ret(odsy_2abGetReply)) < 0x80 (signed).
  The `beq` branch at 0x2cfc targets 0x2c6c and is always taken.
  The `beq` branch at 0x2d08 targets 0x2b54, is taken when s0(?) >= 0x1e (signed), and falls through when s0(?) < 0x1e (signed).
  The `beq` branch at 0x2d18 targets 0x2b54 and is always taken.
  The `beq` branch at 0x2d68 targets 0x2c98, is taken when v0(=ret(odsy_2abSendCmd)) == 0, and falls through when v0(=ret(odsy_2abSendCmd)) != 0.
  The `beq` branch at 0x2d8c targets 0x2de0, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x2dcc targets 0x2de0, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `bne` branch at 0x2dd8 targets 0x2db8, is taken when s1(?) < 0x3 (signed), and falls through when s1(?) >= 0x3 (signed).
  The `beq` branch at 0x2de4 targets 0x2bfc and is always taken.
  The return at 0x2c08 has v0 = one of 0x0, 0x1.
- `odsy_2abCmdWrapper` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x2dec (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x2dec-0x2f0c (288 bytes).
  It occupies 288 bytes.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x20, including `ld` at 0x2e30, `ld` at 0x2e54.
  The `lw` at 0x2e38 loads 4 bytes from a1 (arg1 at entry) +0x10.
  2 such `sh` accesses store 2 bytes to a1 (arg1 at entry) +0x14, including `sh` at 0x2e40, `sh` at 0x2e80.
  The `ld` at 0x2ea0 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `jal` at 0x2e44 calls odsy_2abSendCmd with a0=a0 at entry (arg0), a1=[a1+16], a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x2e64 calls odsy_2abGetReply with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=sp-96, a3=?, a4=[a1+32]:8.
  The `jal` at 0x2eac calls odsy_usdelay with a0=[a0+16]:8, a1=[sym(.sdata)+20], a2=?, a3=?, a4=-0x91.
  The `jal` at 0x2eec calls odsy_usdelay with a0=[a0+16]:8, a1=[sym(.sdata)+16], a2=?, a3=?, a4=-0x91.
  The `jal` at 0x2efc calls odsy_usdelay with a0=[a0+16]:8, a1=[sym(.sdata)+12], a2=?, a3=?, a4=-0x91.
  The `beq` branch at 0x2e1c targets 0x2e2c and is always taken.
  The `bgez` branch at 0x2e24 targets 0x2ec4, is taken when s2(?) >= 0 (signed), and falls through when s2(?) < 0 (signed).
  The `beq` branch at 0x2e4c targets 0x2ebc, is taken when v0(=ret(odsy_2abSendCmd)) == 0, and falls through when v0(=ret(odsy_2abSendCmd)) != 0.
  The `beq` branch at 0x2e58 targets 0x2e24, is taken when a4(=[a1+32]:8) == 0, and falls through when a4(=[a1+32]:8) != 0.
  The `bgtz` branch at 0x2e7c targets 0x2e24, is taken when v0(=ret(odsy_2abGetReply)) > 0 (signed), and falls through when v0(=ret(odsy_2abGetReply)) <= 0 (signed).
  The `bne` branch at 0x2e90 targets 0x2ec4, is taken when at(=[sym(.sdata)+36]) < s1(?) (signed), and falls through when at(=[sym(.sdata)+36]) >= s1(?) (signed).
  The `beq` branch at 0x2e9c targets 0x2efc, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x2ea4 targets 0x2eec, is taken when s1(?) == v1(=0x1), and falls through when s1(?) != v1(=0x1).
  The `beq` branch at 0x2eb4 targets 0x2e24 and is always taken.
  The `blez` branch at 0x2ebc targets 0x2e24, is taken when s1(?) <= 0 (signed), and falls through when s1(?) > 0 (signed).
  The `beq` branch at 0x2ef4 targets 0x2e24 and is always taken.
  The `beq` branch at 0x2f04 targets 0x2e24 and is always taken.
  The return at 0x2ee4 has v0 = one of ?, -0x91, -0x5.
- `odsy_2abSendCmd` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x2f0c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x2f0c-0x31e8 (732 bytes).
  It occupies 732 bytes.
  The `lbu` at 0x2fac loads 1 byte from a2 (arg2 at entry) +0x0.
  The `lbu` at 0x3108 loads 1 byte from ?.
  The `jal` at 0x2fec calls odsy_i2c_start with a0=a0 at entry (arg0), a1=[sym(.sdata)+29]:1, a2=0x1, a3=?, a6=0xf0, a7=0x6e.
  The `jal` at 0x3000 calls odsy_i2cFixupAfterErr with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x3068 calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=[sym(.sdata)+28]:1, a2=0x1, a3=0x0.
  The `jal` at 0x3078 calls odsy_i2cFixupAfterErr with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x30a0 calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=?, a2=0x1, a3=0x0.
  The `jal` at 0x30b0 calls odsy_i2cFixupAfterErr with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x3110 calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=?, a2=0x1, a3=0x0.
  The `jal` at 0x3148 calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=?, a2=0x1, a3=0x0.
  The `jal` at 0x3158 calls odsy_i2cFixupAfterErr with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x3178 calls odsy_i2cFixupAfterErr with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x31d4 calls odsy_i2c_stop with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=a3 at entry (arg3).
  The `beq` branch at 0x2f60 targets 0x2f7c and is always taken.
  The `beq` branch at 0x2f78 targets 0x2fe4, is taken when a0(=one of 0x0, 0x1) == 0, and falls through when a0(=one of 0x0, 0x1) != 0.
  The `bne` branch at 0x2f9c targets 0x2f78, is taken when s0(?) < 0x4 (signed), and falls through when s0(?) >= 0x4 (signed).
  The `bne` branch at 0x2fa4 targets 0x2fb8, is taken when s5(?) != v0(=0x3), and falls through when s5(?) == v0(=0x3).
  The `beq` branch at 0x2fb0 targets 0x2f68, is taken when at(=[a2]:1) == a6(=0xf0), and falls through when at(=[a2]:1) != a6(=0xf0).
  The `beq` branch at 0x2ff4 targets 0x3060, is taken when v0(=ret(odsy_i2c_start)) == 0, and falls through when v0(=ret(odsy_i2c_start)) != 0.
  The `bne` branch at 0x301c targets 0x2f80, is taken when s1(=one of 0x0, 0x1) != 0, and falls through when s1(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0x3024 targets 0x2f80, is taken when s2(=one of 0x0, 0x1) != 0, and falls through when s2(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0x302c targets 0x2f80, is taken when s3(=one of 0x0, 0x1) != 0, and falls through when s3(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0x3034 targets 0x2f80, is taken when s4(=one of 0x0, 0x1) != 0, and falls through when s4(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x3058 targets 0x2fdc and is always taken.
  The `beq` branch at 0x3070 targets 0x3098, is taken when v0(=ret(odsy_i2c_sendbyte)) == 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) != 0.
  The `beq` branch at 0x3090 targets 0x301c and is always taken.
  The `beq` branch at 0x30a8 targets 0x30d0, is taken when v0(=ret(odsy_i2c_sendbyte)) == 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) != 0.
  The `beq` branch at 0x30c8 targets 0x301c and is always taken.
  The `blez` branch at 0x30ec targets 0x313c, is taken when v1(=a1) <= 0 (signed), and falls through when v1(=a1) > 0 (signed).
  The `bne` branch at 0x3118 targets 0x3178, is taken when v0(=ret(odsy_i2c_sendbyte)) != 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` branch at 0x3134 targets 0x30f8, is taken when s4(?) < a4(=a1) (signed), and falls through when s4(?) >= a4(=a1) (signed).
  The `beq` branch at 0x3150 targets 0x3194, is taken when v0(=ret(odsy_i2c_sendbyte)) == 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) != 0.
  The `beq` branch at 0x3170 targets 0x301c and is always taken.
  The `beq` branch at 0x318c targets 0x2f7c and is always taken.
  The `beq` branch at 0x31b0 targets 0x31dc, is taken when a5(=a3) == 0, and falls through when a5(=a3) != 0.
  The `beq` branch at 0x31e0 targets 0x2fdc and is always taken.
  The return at 0x2fdc has v0 = one of 0x0, 0x1, 0x3.
- `odsy_2abGetReply` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x31e8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x31e8-0x3418 (560 bytes).
  It occupies 560 bytes.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0x321c, `sw` at 0x338c.
  The `sb` at 0x3360 stores 1 byte to ?.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lw` at 0x3378, `lw` at 0x340c.
  The `ld` at 0x33e8 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `jal` at 0x3200 calls odsy_i2c_stop with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3218 calls odsy_i2c_becomeSlaveRecv with a0=a0 at entry (arg0), a1=0x1, a2=0x28, a3=sp-112.
  The `jal` at 0x322c calls odsy_i2cFixupAfterErr with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x3264 calls odsy_i2cFixupAfterErr with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x328c calls odsy_i2c_slave_recvbyte with a0=a0 at entry (arg0), a1=0x1, a2=0x1, a3=sp-112.
  The `jal` at 0x329c calls odsy_i2cFixupAfterErr with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x32dc calls odsy_i2c_slave_recvbyte with a0=a0 at entry (arg0), a1=0x1, a2=0x80, a3=sp-112.
  The `jal` at 0x32f0 calls odsy_i2cFixupAfterErr with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x3340 calls odsy_i2c_slave_recvbyte with a0=a0 at entry (arg0), a1=0x1, a2=?, a3=sp-112.
  The `jal` at 0x339c calls odsy_i2c_slave_recvbyte with a0=a0 at entry (arg0), a1=0x1, a2=0x1, a3=sp-112.
  The `jal` at 0x33ac calls odsy_i2cFixupAfterErr with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x33c4 calls odsy_i2cFixupAfterErr with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x33e4 calls odsy_usdelay with a0=[a0+16]:8, a1=[sym(.sdata)+24], a2=?, a3=?.
  The `beq` branch at 0x3220 targets 0x3254, is taken when v0(=ret(odsy_i2c_becomeSlaveRecv)) == 0, and falls through when v0(=ret(odsy_i2c_becomeSlaveRecv)) != 0.
  The `beq` branch at 0x3244 targets 0x32b4, is taken when at(?) == v1(=0x2), and falls through when at(?) != v1(=0x2).
  The `beq` branch at 0x325c targets 0x327c, is taken when (v0(?) & 0x1) == 0, and falls through when (v0(?) & 0x1) != 0.
  The `beq` branch at 0x3274 targets 0x324c and is always taken.
  The `beq` branch at 0x3294 targets 0x32bc, is taken when v0(=ret(odsy_i2c_slave_recvbyte)) == 0, and falls through when v0(=ret(odsy_i2c_slave_recvbyte)) != 0.
  The `beq` branch at 0x32ac targets 0x324c and is always taken.
  The `beq` branch at 0x32b4 targets 0x324c and is always taken.
  The `beq` branch at 0x32e4 targets 0x3308, is taken when v0(=ret(odsy_i2c_slave_recvbyte)) == 0, and falls through when v0(=ret(odsy_i2c_slave_recvbyte)) != 0.
  The `beq` branch at 0x3300 targets 0x324c and is always taken.
  The `blez` branch at 0x3320 targets 0x3390, is taken when at(?) <= 0 (signed), and falls through when at(?) > 0 (signed).
  The `bne` branch at 0x334c targets 0x33c4, is taken when v0(=ret(odsy_i2c_slave_recvbyte)) != 0, and falls through when v0(=ret(odsy_i2c_slave_recvbyte)) == 0.
  The `bne` branch at 0x3388 targets 0x3334, is taken when a3(?) < a4(?) (signed), and falls through when a3(?) >= a4(?) (signed).
  The `beq` branch at 0x33a4 targets 0x33e0, is taken when v0(=ret(odsy_i2c_slave_recvbyte)) == 0, and falls through when v0(=ret(odsy_i2c_slave_recvbyte)) != 0.
  The `beq` branch at 0x33bc targets 0x324c and is always taken.
  The `beq` branch at 0x33d8 targets 0x324c and is always taken.
  The `beq` branch at 0x33f8 targets 0x340c, is taken when v1(?) == a3(?), and falls through when v1(?) != a3(?).
  The `beq` branch at 0x3404 targets 0x324c and is always taken.
  The `beq` branch at 0x3410 targets 0x324c and is always taken.
  The return at 0x324c has v0 = one of -0x1, 0x0, [a2].
- `odsyInitDDRNs` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddrn.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddrn.o)`.
  Range: 0x0-0x54 (84 bytes).
  It occupies 84 bytes.
  The `sw` at 0x44 stores 4 bytes to ?.
  The `jal` at 0x14 calls bzero with a0=sym(ODSYddrn), a1=0xee20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x40 targets 0x28, is taken when a0(?) < 0x7f (signed), and falls through when a0(?) >= 0x7f (signed).
  The return at 0x4c has v0 = ?.
- `gf_OdsyCreateDDRN` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddrn.o)` at 0x54 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddrn.o)`.
  Range: 0x54-0x3cc (888 bytes).
  It occupies 888 bytes.
  The `ld` at 0x54 loads 8 bytes from a1 (arg1 at entry) +0x40.
  The `lw` at 0x58 loads 4 bytes from [a1+64]:8 +0x30.
  The `lh` at 0x78 loads 2 bytes from a0 (arg0 at entry) +0x2c4.
  The `lw` at 0x84 loads 4 bytes from a0 (arg0 at entry) +0x2d8.
  The `lw` at 0xa8 loads 4 bytes from sym(ODSYddrn) +0x0.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd8, `lw` at 0x208, `lw` at 0x214.
  The `sd` at 0x100 stores 8 bytes to a1 (arg1 at entry) +0x70.
  22 such `sw` accesses store 4 bytes to ?, including `sw` at 0x104, `sw` at 0x11c, `sw` at 0x120.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1220, including `lw` at 0x108, `lw` at 0x34c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x1220, including `sw` at 0x118, `sw` at 0x358.
  9 such `sd` accesses store 8 bytes to ?, including `sd` at 0x124, `sd` at 0x128, `sd` at 0x130.
  The `ld` at 0x178 loads 8 bytes from a0 (arg0 at entry) +0x2f0.
  The `sh` at 0x190 stores 2 bytes to ([a0+752]:8 + (ret(OdsyAlloc32kSlot) + ret(OdsyAlloc32kSlot))) +0x0.
  4 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1ec, `ld` at 0x270, `ld` at 0x29c.
  The `lw` at 0x28c loads 4 bytes from a0 (arg0 at entry) +0x28e8.
  4 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0x38, including `sd` at 0x2e8, `sd` at 0x32c, `sd` at 0x388.
  The `jal` at 0x9c calls psema with a0=a0+6032, a1=0x19, a2=a2 at entry (arg2), a3=[a0+728].
  The `jal` at 0x114 calls vsema with a0=?, a1=sym(ODSYddrn), a2=?, a3=0x7f, a4=[a0+4640]+1.
  The `jal` at 0x138 calls OdsyInitCSet with a0=?, a1=0x4, a2=?, a3=?.
  The `jal` at 0x168 calls OdsyAlloc32kSlot with a0=a0+6112, a1=?, a2=?, a3=?.
  The `jal` at 0x18c calls kmem_zalloc with a0=0x4000, a1=0x8800, a2=?, a3=?.
  The `jal` at 0x1d8 calls odsyMapPages with a0=0x0, a1=?, a2=ret(kmem_zalloc), a3=0x4000, a4=sp-96, a5=0x1.
  The `jal` at 0x1e8 calls ddv_getaddr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x284 calls odsyResetHwShadow with a0=?, a1=0xffffffffff000fff, a2=0xfff000, a3=?, a4=0x1001, a5=0xffffffffff00ff00, a6=-0x1000.
  The `jal` at 0x2e0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x300 calls cmn_err with a0=0x5, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x314 calls vsema with a0=?, a1=sym(ODSYddrn), a2=?, a3=0x7f, a4=[sym(ODSYddrn)].
  The `jal` at 0x324 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x344 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x380 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x3a0 calls kmem_free with a0=?, a1=0x4000, a2=?, a3=?.
  The `jal` at 0x3b4 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0x70 targets 0x2f8, is taken when (at(=[[a1+64]:8+48]) & 0x4) != 0, and falls through when (at(=[[a1+64]:8+48]) & 0x4) == 0.
  The `beq` branch at 0x7c targets 0x2d8, is taken when v1(=[a0+708]:2) == 0, and falls through when v1(=[a0+708]:2) != 0.
  The `bne` branch at 0x88 targets 0x2d4, is taken when a3(=[a0+728]) != 0, and falls through when a3(=[a0+728]) == 0.
  The `beq` branch at 0xb4 targets 0xe4, is taken when a4(=[sym(ODSYddrn)]) == s4(=-0x1), and falls through when a4(=[sym(ODSYddrn)]) != s4(=-0x1).
  The `beq` branch at 0xcc targets 0xe4, is taken when v0(?) >= 0x7f (signed), and falls through when v0(?) < 0x7f (signed).
  The `bne` branch at 0xdc targets 0xbc, is taken when v1(?) != s4(=-0x1), and falls through when v1(?) == s4(=-0x1).
  The `beq` branch at 0xe4 targets 0x314, is taken when v0(?) == a3(=0x7f), and falls through when v0(?) != a3(=0x7f).
  The `bltz` branch at 0x170 targets 0x33c, is taken when v0(=ret(OdsyAlloc32kSlot)) < 0 (signed), and falls through when v0(=ret(OdsyAlloc32kSlot)) >= 0 (signed).
  The `beq` branch at 0x194 targets 0x370, is taken when v0(=ret(kmem_zalloc)) == 0, and falls through when v0(=ret(kmem_zalloc)) != 0.
  The `bne` branch at 0x1e0 targets 0x398, is taken when v0(=ret(odsyMapPages)) != 0, and falls through when v0(=ret(odsyMapPages)) == 0.
  The `bne` branch at 0x268 targets 0x230, is taken when a0(?) < 0x4 (signed), and falls through when a0(?) >= 0x4 (signed).
  The `beq` branch at 0x2f0 targets 0x2c4 and is always taken.
  The `beq` branch at 0x30c targets 0x2c4 and is always taken.
  The `beq` branch at 0x334 targets 0x2c4 and is always taken.
  The `beq` branch at 0x368 targets 0x2c4 and is always taken.
  The `beq` branch at 0x390 targets 0x2c4 and is always taken.
  The `beq` branch at 0x3c4 targets 0x2c4 and is always taken.
  The return at 0x2cc has v0 = one of 0x0, 0x1.
- `gf_OdsyDestroyDDRN` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddrn.o)` at 0x3cc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddrn.o)`.
  Range: 0x3cc-0x600 (564 bytes).
  It occupies 564 bytes.
  The `ld` at 0x3d4 loads 8 bytes from a2 (arg2 at entry) +0x70.
  The `ld` at 0x3dc loads 8 bytes from a1 (arg1 at entry) +0x20.
  The `ld` at 0x3e4 loads 8 bytes from [a1+32]:8 +0x8.
  The `lw` at 0x404 loads 4 bytes from a0 (arg0 at entry) +0x2d8.
  The `lw` at 0x418 loads 4 bytes from a0 (arg0 at entry) +0x28e8.
  2 such `ld` accesses load 8 bytes from [a2+112]:8 +0x70, including `ld` at 0x428, `ld` at 0x4b4.
  The `lw` at 0x438 loads 4 bytes from ?.
  The `sh` at 0x444 stores 2 bytes to a0 (arg0 at entry) +0x2c4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2dc, including `lw` at 0x448, `lw` at 0x5b4.
  The `lw` at 0x44c loads 4 bytes from [a2+112]:8 +0x0.
  The `sw` at 0x458 stores 4 bytes to a0 (arg0 at entry) +0x2dc.
  The `lw` at 0x45c loads 4 bytes from a2 (arg2 at entry) +0x1c.
  The `lw` at 0x4a0 loads 4 bytes from [a2+112]:8 +0x130.
  The `sd` at 0x4ac stores 8 bytes to [a2+112]:8 +0x90.
  The `sd` at 0x4b0 stores 8 bytes to a2 (arg2 at entry) +0x70.
  The `lw` at 0x4cc loads 4 bytes from [a2+112]:8 +0xa4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1220, including `lw` at 0x4e0, `lw` at 0x520.
  The `ld` at 0x4ec loads 8 bytes from a0 (arg0 at entry) +0x2d0.
  The `sd` at 0x500 stores 8 bytes to a0 (arg0 at entry) +0x2d0.
  The `ld` at 0x508 loads 8 bytes from a0 (arg0 at entry) +0x2e0.
  The `sw` at 0x50c stores 4 bytes to a0 (arg0 at entry) +0x28a4.
  The `sw` at 0x510 stores 4 bytes to [a0+736]:8 +0x1074.
  The `sw` at 0x518 stores 4 bytes to [a2+112]:8 +0x0.
  The `sw` at 0x52c stores 4 bytes to a0 (arg0 at entry) +0x1220.
  The `ld` at 0x53c loads 8 bytes from a1 (arg1 at entry) +0x0.
  The `ld` at 0x540 loads 8 bytes from [a1]:8 +0x8.
  The `ld` at 0x54c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0x584 stores 4 bytes to [a2+112]:8 +0x130.
  The `ld` at 0x58c loads 8 bytes from a1 (arg1 at entry) +0x18.
  The `ld` at 0x590 loads 8 bytes from [a1+24]:8 +0x78.
  The `jal` at 0x46c calls gf_OdsyUnSchedSwapBuf with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=[a2+28], a3=?, a5=[[a2+112]:8].
  The `jal` at 0x478 calls gf_OdsyUnSchedRetraceEvent with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=?, a3=?.
  The `jal` at 0x4c4 calls kmem_free with a0=[[a2+112]:8+112]:8, a1=0x4000, a2=?, a3=?.
  The `jal` at 0x4d0 calls OdsyFree32kSlot with a0=a0+6112, a1=[[a2+112]:8+164], a2=?, a3=?.
  The `jal` at 0x4f8 calls gfx_flow_dealloc with a0=[a0+720]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x560 calls odsyDMAFinish with a0=a0 at entry (arg0), a1=[a2+112]:8, a2=?, a3=?, a5=[[a2+112]:8+304].
  The `jal` at 0x56c calls odsyMMdetach with a0=a1 at entry (arg1), a1=[a2+112]:8, a2=?, a3=?.
  The `jal` at 0x574 calls odsyUnpinAndUnmapGctxRegions with a0=[a2+112]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x5a0 calls (unknown callee) with a0=[a1+32]:8, a1=a2 at entry (arg2), a2=0x0, a3=[[a1+32]:8+8]:8, a5=[[a1+24]:8+120]:8.
  The `jal` at 0x5cc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x5e8 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0x3fc targets 0x448, is taken when a3(=[[a1+32]:8+8]:8) != a2, and falls through when a3(=[[a1+32]:8+8]:8) == a2.
  The `beq` branch at 0x408 targets 0x53c, is taken when at(=[a0+728]) == 0, and falls through when at(=[a0+728]) != 0.
  The `beq` branch at 0x410 targets 0x58c, is taken when a0(=one of 0x0, 0x1) == 0, and falls through when a0(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x43c targets 0x58c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x450 targets 0x45c, is taken when a5(=[[a2+112]:8]) != at(=[a0+732]), and falls through when a5(=[[a2+112]:8]) == at(=[a0+732]).
  The `bltz` branch at 0x460 targets 0x474, is taken when a2(=[a2+28]) < 0 (signed), and falls through when a2(=[a2+28]) >= 0 (signed).
  The `bne` branch at 0x490 targets 0x5b8, is taken when s0(=[a2+112]:8) < v1(=sym(ODSYddrn)) (unsigned), and falls through when s0(=[a2+112]:8) >= v1(=sym(ODSYddrn)) (unsigned).
  The `bne` branch at 0x498 targets 0x5b8, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x4a4 targets 0x560, is taken when a5(=[[a2+112]:8+304]) == 0, and falls through when a5(=[[a2+112]:8+304]) != 0.
  The `beq` branch at 0x4b8 targets 0x4cc, is taken when a0(=[[a2+112]:8+112]:8) == 0, and falls through when a0(=[[a2+112]:8+112]:8) != 0.
  The `bne` branch at 0x4e4 targets 0x518, is taken when at(=[a0+4640]) != v1(=0x1), and falls through when at(=[a0+4640]) == v1(=0x1).
  The `beq` branch at 0x4f0 targets 0x508, is taken when a0(=[a0+720]:8) == 0, and falls through when a0(=[a0+720]:8) != 0.
  The `beq` branch at 0x544 targets 0x410, is taken when v1(=[[a1]:8+8]:8) == a4(=a1), and falls through when v1(=[[a1]:8+8]:8) != a4(=a1).
  The `beq` branch at 0x550 targets 0x410, is taken when a4(=[a0]:8) == 0, and falls through when a4(=[a0]:8) != 0.
  The `beq` branch at 0x558 targets 0x410 and is always taken.
  The `beq` branch at 0x580 targets 0x4ac and is always taken.
  The `bne` branch at 0x5a8 targets 0x5e0, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0.
  The `beq` branch at 0x5b0 targets 0x44c and is always taken.
  The `beq` branch at 0x5d8 targets 0x534 and is always taken.
  The `beq` branch at 0x5f8 targets 0x448 and is always taken.
  The return at 0x534 has v0 = one of 0x0, 0x1.
  The instructions from 0x588 to 0x588 are not reached by any path from the entry, and their branches are not listed.
- `gfP_OdsyDIAGallocScanbuf` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`.
  Range: 0x0-0x214 (532 bytes).
  It occupies 532 bytes.
  The `ld` at 0x2c loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0x44 loads 8 bytes from [a0+32]:8 +0x5628.
  The `sd` at 0x78 stores 8 bytes to [a0+32]:8 +0x5608.
  2 such `ld` accesses load 8 bytes from [a0+32]:8 +0x5608, including `ld` at 0xa8, `ld` at 0xf4.
  The `sw` at 0xc4 stores 4 bytes to [a0+32]:8 +0x5620.
  The `sd` at 0xd4 stores 8 bytes to [a0+32]:8 +0x5628.
  2 such `ld` accesses load 8 bytes from [a0+32]:8 +0x5618, including `ld` at 0xdc, `ld` at 0xe0.
  The `sd` at 0xe8 stores 8 bytes to [a0+32]:8 +0x5610.
  3 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x114, `sw` at 0x1e4, `sw` at 0x210.
  3 such `lw` accesses load 4 bytes from [a0+32]:8 +0x5620, including `lw` at 0x118, `lw` at 0x174, `lw` at 0x188.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0x160, `sw` at 0x170, `sw` at 0x184.
  The `jal` at 0x28 calls copyin with a0=a2 at entry (arg2), a1=sp-128, a2=0x18, a3=a3 at entry (arg3).
  The `jal` at 0x3c calls mutex_lock with a0=[a0+32]:8+22008, a1=0x19, a2=?, a3=?.
  The `jal` at 0x54 calls mutex_unlock with a0=?, a1=0x8100, a2=?, a3=?.
  The `jal` at 0x6c calls kmem_alloc with a0=?, a1=0x8100, a2=?, a3=?.
  The `jal` at 0x94 calls odsyMapPages with a0=0x0, a1=0x0, a2=ret(kmem_alloc), a3=?, a4=0x0, a5=0x0, a6=[a0+32]:8+22040.
  The `jal` at 0xa4 calls kmem_free with a0=[[a0+32]:8+22024]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xb0 calls mutex_unlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xd0 calls mutex_unlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xd8 calls ddv_getaddr with a0=[[a0+32]:8+22040]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xe4 calls ddv_getaddr with a0=[[a0+32]:8+22040]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xf0 calls kvtophys with a0=[[a0+32]:8+22024]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x104 calls copyout with a0=sp-128, a1=a2 at entry (arg2), a2=0x18, a3=?.
  The `jal` at 0x140 calls printf with a0=sym(.rodata), a1=?, a2=[[a0+32]:8+22048], a3=?.
  The `jal` at 0x190 calls dki_dcache_wb with a0=?, a1=[[a0+32]:8+22048], a2=?, a3=?.
  The `jal` at 0x1ac calls mutex_unlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1c8 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1f4 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0x30 targets 0x1c0, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `beq` branch at 0x48 targets 0x6c, is taken when at(=[[a0+32]:8+22056]:8) == 0, and falls through when at(=[[a0+32]:8+22056]:8) != 0.
  The `beq` branch at 0x74 targets 0x1a8, is taken when v0(=ret(kmem_alloc)) == 0, and falls through when v0(=ret(kmem_alloc)) != 0.
  The `beq` branch at 0x9c targets 0xc4, is taken when v0(=ret(odsyMapPages)) == 0, and falls through when v0(=ret(odsyMapPages)) != 0.
  The `beq` branch at 0xbc targets 0x64 and is always taken.
  The `bne` branch at 0x10c targets 0x1e8, is taken when v0(=ret(copyout)) != 0, and falls through when v0(=ret(copyout)) == 0.
  The `blez` branch at 0x150 targets 0x16c, is taken when v0(?) <= 0 (signed), and falls through when v0(?) > 0 (signed).
  The `bne` branch at 0x164 targets 0x158, is taken when a0(?) < v0(?) (signed), and falls through when a0(?) >= v0(?) (signed).
  The `bne` branch at 0x17c targets 0x18c, is taken when a1(=[[a0+32]:8+22048]) < 0x4001 (signed), and falls through when a1(=[[a0+32]:8+22048]) >= 0x4001 (signed).
  The `beq` branch at 0x1a0 targets 0x64 and is always taken.
  The `beq` branch at 0x1b8 targets 0x64 and is always taken.
  The `beq` branch at 0x1e0 targets 0x64 and is always taken.
  The `beq` branch at 0x20c targets 0x64 and is always taken.
  The return at 0x64 has v0 = one of 0x10, 0xb, 0x0, 0xc, 0xe.
- `gfP_OdsyDIAGfreeScanbuf` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)` at 0x214 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`.
  Range: 0x214-0x2a4 (144 bytes).
  It occupies 144 bytes.
  The `ld` at 0x220 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0x244 loads 8 bytes from [a0+32]:8 +0x5628.
  The `lw` at 0x260 loads 4 bytes from [a0+32]:8 +0x5620.
  The `ld` at 0x268 loads 8 bytes from [a0+32]:8 +0x5608.
  The `sd` at 0x26c stores 8 bytes to [a0+32]:8 +0x5628.
  The `sw` at 0x270 stores 4 bytes to [a0+32]:8 +0x5620.
  The `sd` at 0x274 stores 8 bytes to [a0+32]:8 +0x5618.
  The `sd` at 0x278 stores 8 bytes to [a0+32]:8 +0x5608.
  The `sw` at 0x2a0 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `jal` at 0x23c calls mutex_lock with a0=[a0+32]:8+22008, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x258 calls odsyUnmapPages with a0=[a0+32]:8+22040, a1=?, a2=?, a3=?.
  The `jal` at 0x264 calls kmem_free with a0=[[a0+32]:8+22024]:8, a1=[[a0+32]:8+22048], a2=?, a3=?.
  The `jal` at 0x280 calls mutex_unlock with a0=[a0+32]:8+22008, a1=?, a2=?, a3=?.
  The `bne` branch at 0x24c targets 0x27c, is taken when at(=[[a0+32]:8+22056]:8) != v0(=a0), and falls through when at(=[[a0+32]:8+22056]:8) == v0(=a0).
  The return at 0x29c has v0 = 0x0.
- `gfP_OdsyDIAGgetShadowPtrs` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)` at 0x2a4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`.
  Range: 0x2a4-0x53c (664 bytes).
  It occupies 664 bytes.
  The `ld` at 0x2dc loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0x2f4 loads 8 bytes from [a0+32]:8 +0x5640.
  6 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x314, `sw` at 0x350, `sw` at 0x410.
  2 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2f0, including `ld` at 0x32c, `ld` at 0x45c.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x3a0, `ld` at 0x488, `ld` at 0x4ac.
  The `sw` at 0x3bc stores 4 bytes to ?.
  The `lw` at 0x3d4 loads 4 bytes from ?.
  The `sd` at 0x448 stores 8 bytes to [a0+32]:8 +0x5640.
  The `ld` at 0x450 loads 8 bytes from [a0+32]:8 +0x5688.
  3 such `sd` accesses store 8 bytes to ?, including `sd` at 0x498, `sd` at 0x4a0, `sd` at 0x4bc.
  The `jal` at 0x2d8 calls copyin with a0=a2 at entry (arg2), a1=sp-224, a2=0x50, a3=a3 at entry (arg3).
  The `jal` at 0x2ec calls mutex_lock with a0=[a0+32]:8+22064, a1=0x19, a2=?, a3=?.
  The `jal` at 0x308 calls mutex_unlock with a0=?, a1=?, a2=?, a3=0x10000.
  The `jal` at 0x33c calls odsyMapPages with a0=0x0, a1=0x0, a2=[[a0+32]:8+752]:8, a3=0x10000, a4=0x0, a5=0x0, a6=[a0+32]:8+22152.
  The `jal` at 0x39c calls odsyMapPages with a0=0x0, a1=0x0, a2=?, a3=0x4000, a4=0x0, a5=0x0.
  The `jal` at 0x3f0 calls odsyUnmapPages with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x404 calls mutex_unlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x424 calls odsyUnmapPages with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x444 calls mutex_unlock with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x44c calls ddv_getaddr with a0=[[a0+32]:8+22152]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x484 calls ddv_getaddr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x4c8 calls copyout with a0=sp-224, a1=a2 at entry (arg2), a2=0x50, a3=?.
  The `jal` at 0x4fc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x520 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0x2e0 targets 0x4ec, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `beq` branch at 0x2f8 targets 0x324, is taken when at(=[[a0+32]:8+22080]:8) == 0, and falls through when at(=[[a0+32]:8+22080]:8) != 0.
  The `beq` branch at 0x31c targets 0x360 and is always taken.
  The `beq` branch at 0x348 targets 0x36c, is taken when v0(=ret(odsyMapPages)) == 0, and falls through when v0(=ret(odsyMapPages)) != 0.
  The `bne` branch at 0x3b8 targets 0x37c, is taken when s3(?) < 0x4 (unsigned), and falls through when s3(?) >= 0x4 (unsigned).
  The `beq` branch at 0x3c0 targets 0x434, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x3d8 targets 0x420, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x3e8 targets 0x3d0, is taken when s3(?) < 0x4 (unsigned), and falls through when s3(?) >= 0x4 (unsigned).
  The `beq` branch at 0x418 targets 0x360 and is always taken.
  The `beq` branch at 0x42c targets 0x3e4 and is always taken.
  The `bne` branch at 0x4b8 targets 0x470, is taken when s3(?) < 0x4 (unsigned), and falls through when s3(?) >= 0x4 (unsigned).
  The `bne` branch at 0x4d8 targets 0x518, is taken when v0(=ret(copyout)) != 0, and falls through when v0(=ret(copyout)) == 0.
  The `beq` branch at 0x4e4 targets 0x360 and is always taken.
  The `beq` branch at 0x510 targets 0x360 and is always taken.
  The `beq` branch at 0x534 targets 0x360 and is always taken.
  The return at 0x364 has v0 = one of 0x10, 0xc, 0xb, 0x0, 0xe.
- `gfP_OdsyDIAGreleaseShadowPtrs` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)` at 0x53c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`.
  Range: 0x53c-0x610 (212 bytes).
  It occupies 212 bytes.
  The `ld` at 0x54c loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0x570 loads 8 bytes from [a0+32]:8 +0x5640.
  2 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x58c, `sw` at 0x600.
  The `sd` at 0x5d8 stores 8 bytes to ?.
  The `sd` at 0x5dc stores 8 bytes to [a0+32]:8 +0x5640.
  The `jal` at 0x568 calls mutex_lock with a0=[a0+32]:8+22064, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x580 calls mutex_unlock with a0=[a0+32]:8+22064, a1=?, a2=?, a3=?.
  The `jal` at 0x5ac calls odsyUnmapPages with a0=[a0+32]:8+22152, a1=?, a2=?, a3=?.
  The `jal` at 0x5c8 calls odsyUnmapPages with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x5e0 calls mutex_unlock with a0=[a0+32]:8+22064, a1=?, a2=?, a3=?.
  The `beq` branch at 0x574 targets 0x5a4, is taken when at(=[[a0+32]:8+22080]:8) == s1(=a0), and falls through when at(=[[a0+32]:8+22080]:8) != s1(=a0).
  The `beq` branch at 0x59c targets 0x608 and is always taken.
  The `bne` branch at 0x5d4 targets 0x5bc, is taken when s5(?) < 0x4 (unsigned), and falls through when s5(?) >= 0x4 (unsigned).
  The return at 0x608 has v0 = one of 0x0, 0x1.
- `odsyInitPfRgn` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)` at 0x610 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`.
  Range: 0x610-0x6c8 (184 bytes).
  It occupies 184 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2848, including `ld` at 0x610, `ld` at 0x670.
  The `sd` at 0x648 stores 8 bytes to a0 (arg0 at entry) +0x2848.
  The `sw` at 0x664 stores 4 bytes to a0 (arg0 at entry) +0x2840.
  The `sw` at 0x678 stores 4 bytes to a0 (arg0 at entry) +0x28c8.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2e0, including `ld` at 0x680, `ld` at 0x694.
  The `sw` at 0x688 stores 4 bytes to a0 (arg0 at entry) +0x28c4.
  The `sw` at 0x68c stores 4 bytes to [a0+736]:8 +0x401c.
  The `lw` at 0x698 loads 4 bytes from a0 (arg0 at entry) +0x28c8.
  The `sw` at 0x6a0 stores 4 bytes to [a0+736]:8 +0x4024.
  The `jal` at 0x638 calls kmem_zalloc with a0=0x4000, a1=0x8800, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x660 calls odsyPinAndMapPfStatRegions with a0=a0 at entry (arg0), a1=?, a2=?, a3=a1 at entry (arg1).
  The `jal` at 0x66c calls kvtophys with a0=[a0+10312]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x6a8 calls printf with a0=sym(.rodata), a1=?, a2=?, a3=?.
  The `jal` at 0x6b4 calls mutex_unlock with a0=a0+10336, a1=?, a2=?, a3=?.
  The `beq` branch at 0x61c targets 0x630, is taken when at(=[a0+10312]:8) == 0, and falls through when at(=[a0+10312]:8) != 0.
  The `beq` branch at 0x644 targets 0x6a4, is taken when v0(=ret(kmem_zalloc)) == 0, and falls through when v0(=ret(kmem_zalloc)) != 0.
  The `beq` branch at 0x69c targets 0x624 and is always taken.
  The `beq` branch at 0x6c0 targets 0x628 and is always taken.
  The return at 0x628 has v0 = one of 0x0, 0x1.
- `odsyDestroyPfRgn` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)` at 0x6c8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`.
  Range: 0x6c8-0x738 (112 bytes).
  It occupies 112 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2848, including `ld` at 0x6c8, `ld` at 0x6fc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2840, including `lw` at 0x6dc, `lw` at 0x6f4.
  The `sw` at 0x700 stores 4 bytes to a0 (arg0 at entry) +0x28c8.
  The `sw` at 0x704 stores 4 bytes to a0 (arg0 at entry) +0x28c4.
  The `sd` at 0x708 stores 8 bytes to a0 (arg0 at entry) +0x2850.
  The `sd` at 0x70c stores 8 bytes to a0 (arg0 at entry) +0x2848.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2e0, including `ld` at 0x710, `ld` at 0x720.
  The `sw` at 0x714 stores 4 bytes to a0 (arg0 at entry) +0x2840.
  The `sw` at 0x718 stores 4 bytes to [a0+736]:8 +0x401c.
  The `lw` at 0x724 loads 4 bytes from a0 (arg0 at entry) +0x28c8.
  The `sw` at 0x728 stores 4 bytes to [a0+736]:8 +0x4024.
  The `jal` at 0x6ec calls odsyUnpinAndUnmapPfStatRegions with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x6f8 calls kmem_free with a0=[a0+10312]:8, a1=[a0+10304], a2=?, a3=?.
  The `beq` branch at 0x6d4 targets 0x72c, is taken when at(=[a0+10312]:8) == 0, and falls through when at(=[a0+10312]:8) != 0.
  The `beq` branch at 0x6e0 targets 0x72c, is taken when v0(=[a0+10304]) == 0, and falls through when v0(=[a0+10304]) != 0.
  The return at 0x730 has v0 = one of ?, [a0+10304], ret(kmem_free).
- `gfP_OdsyPerfStat` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)` at 0x738 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`.
  Range: 0x738-0x938 (512 bytes).
  It occupies 512 bytes.
  The `ld` at 0x744 loads 8 bytes from a0 (arg0 at entry) +0x20.
  4 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x75c, `sw` at 0x844, `sw` at 0x904.
  2 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2848, including `ld` at 0x7ac, `ld` at 0x7fc.
  The `ld` at 0x7d8 loads 8 bytes from [a0+32]:8 +0x2850.
  The `ld` at 0x8c4 loads 8 bytes from [a0+32]:8 +0x2e0.
  The `sw` at 0x8d0 stores 4 bytes to [a0+32]:8 +0x28cc.
  The `sw` at 0x8d8 stores 4 bytes to [[a0+32]:8+736]:8 +0x402c.
  The `jal` at 0x760 calls copyin with a0=a2 at entry (arg2), a1=sp-112, a2=0x18, a3=a3 at entry (arg3).
  The `jal` at 0x798 calls mutex_lock with a0=[a0+32]:8+10336, a1=0x19, a2=?, a3=?, a4=0x5.
  The `jal` at 0x7c8 calls odsyInitPfRgn with a0=[a0+32]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x7e0 calls copyout with a0=sp-112, a1=a2 at entry (arg2), a2=0x18, a3=[[a0+32]:8+10320]:8.
  The `jal` at 0x808 calls odsyDestroyPfRgn with a0=[a0+32]:8, a1=?, a2=?, a3=?, a5=[[a0+32]:8+10312]:8.
  The `jal` at 0x814 calls mutex_unlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x82c calls odsyDestroyPfRgn with a0=[a0+32]:8, a1=?, a2=?, a3=?, a5=[[a0+32]:8+10312]:8.
  The `jal` at 0x8e8 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a4=0x5.
  The `jal` at 0x918 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0x76c targets 0x8dc, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `beq` branch at 0x788 targets 0x83c, is taken when v1(?) == a4(=0x5), and falls through when v1(?) != a4(=0x5).
  The `beq` branch at 0x7a4 targets 0x7f0, is taken when (s1(?) & 0x1) == 0, and falls through when (s1(?) & 0x1) != 0.
  The `bne` branch at 0x7b0 targets 0x82c, is taken when a5(=[[a0+32]:8+10312]:8) != 0, and falls through when a5(=[[a0+32]:8+10312]:8) == 0.
  The `bne` branch at 0x7e8 targets 0x908, is taken when v0(=ret(copyout)) != 0, and falls through when v0(=ret(copyout)) == 0.
  The `beq` branch at 0x7f4 targets 0x854, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x800 targets 0x810, is taken when a5(=[[a0+32]:8+10312]:8) == 0, and falls through when a5(=[[a0+32]:8+10312]:8) != 0.
  The `beq` branch at 0x834 targets 0x7b8 and is always taken.
  The `beq` branch at 0x84c targets 0x824 and is always taken.
  The `beq` branch at 0x858 targets 0x810, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x8d4 targets 0x810 and is always taken.
  The `beq` branch at 0x900 targets 0x824 and is always taken.
  The `beq` branch at 0x930 targets 0x824 and is always taken.
  The return at 0x824 has v0 = one of -0x1, 0x0, 0xe.
- `gfP_OdsyDIAGreset` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)` at 0x938 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`.
  Range: 0x938-0x980 (72 bytes).
  It occupies 72 bytes.
  The `ld` at 0x948 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `sw` at 0x97c stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `jal` at 0x94c calls odsyReset with a0=(a2 << 0x0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x95c calls odsyInitDBE with a0=[a0+32]:8, a1=[sym(default_timing)]:8, a2=0x0, a3=?.
  The return at 0x978 has v0 = 0x0.
- `odsy_NewDmaRegion` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Range: 0x0-0x190 (400 bytes).
  It occupies 400 bytes.
  The `sd` at 0x4c stores 8 bytes to ret(kmem_alloc) +0x0.
  The `sw` at 0x50 stores 4 bytes to ret(kmem_alloc) +0x30.
  The `sd` at 0x54 stores 8 bytes to ret(kmem_alloc) +0x28.
  The `sd` at 0x58 stores 8 bytes to ret(kmem_alloc) +0x20.
  The `sd` at 0x6c stores 8 bytes to ret(kmem_alloc) +0x18.
  The `sd` at 0x78 stores 8 bytes to ret(kmem_alloc) +0x10.
  4 such `sw` accesses store 4 bytes to a7 (arg7 at entry) +0x0, including `sw` at 0xa0, `sw` at 0xbc, `sw` at 0x104.
  3 such `sw` accesses store 4 bytes to ret(kmem_alloc) +0x34, including `sw` at 0xa8, `sw` at 0xf4, `sw` at 0x16c.
  The `jal` at 0x3c calls kmem_alloc with a0=0x58, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x74 calls bcopy with a0=a6 at entry (arg6), a1=ret(kmem_alloc)+56, a2=0x20, a3=?.
  The `jal` at 0x94 calls useracc with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=0x110, a3=0x0.
  The `jal` at 0xb4 calls odsy_DmaRegion_BuildXlatTbl with a0=ret(kmem_alloc), a1=?, a2=?, a3=?.
  The `jal` at 0xd4 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0xdc calls odsy_DeleteDmaRegion with a0=ret(kmem_alloc), a1=?, a2=?, a3=?.
  The `jal` at 0x130 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x164 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x178 calls odsy_DeleteDmaRegion with a0=ret(kmem_alloc), a1=?, a2=?, a3=?.
  The `beq` branch at 0x44 targets 0x11c, is taken when v0(=ret(kmem_alloc)) == 0, and falls through when v0(=ret(kmem_alloc)) != 0.
  The `beq` branch at 0x7c targets 0xf4, is taken when s2(=a5) == 0, and falls through when s2(=a5) != 0.
  The `bne` branch at 0x9c targets 0x150, is taken when v0(=ret(useracc)) != 0, and falls through when v0(=ret(useracc)) == 0.
  The `beq` branch at 0xc0 targets 0x104, is taken when v0(=ret(odsy_DmaRegion_BuildXlatTbl)) == 0, and falls through when v0(=ret(odsy_DmaRegion_BuildXlatTbl)) != 0.
  The `beq` branch at 0xec targets 0x114 and is always taken.
  The `beq` branch at 0x148 targets 0x114 and is always taken.
  The `beq` branch at 0x188 targets 0x114 and is always taken.
  The return at 0x114 has v0 = one of 0x0, ret(kmem_alloc).
- `odsy_DeleteDmaRegion` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)` at 0x190 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Range: 0x190-0x1e8 (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0x190 loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `ld` at 0x1a8 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x1b4 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0x1b8 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x1c8 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `jal` at 0x1b0 calls unuseracc with a0=[a0+32]:8, a1=[a0+40]:8, a2=0x110, a3=a3 at entry (arg3).
  The `jal` at 0x1c4 calls kmem_free with a0=[a0]:8, a1=[a0+8], a2=?, a3=?.
  The `jal` at 0x1d0 calls kmem_free with a0=a0 at entry (arg0), a1=0x58, a2=?, a3=?.
  The `beq` branch at 0x1a0 targets 0x1cc, is taken when at(=[a0+52]) == 0, and falls through when at(=[a0+52]) != 0.
  The `beq` branch at 0x1bc targets 0x1cc, is taken when a0(=[a0]:8) == 0, and falls through when a0(=[a0]:8) != 0.
  The return at 0x1e0 has v0 = ret(kmem_free).
- `odsy_DmaRegion_Pin` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)` at 0x1e8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Range: 0x1e8-0x250 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0x1e8 loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `ld` at 0x210 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x21c loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `sw` at 0x240 stores 4 bytes to a0 (arg0 at entry) +0x34.
  The `jal` at 0x218 calls useracc with a0=[a0+32]:8, a1=[a0+40]:8, a2=0x110, a3=0x0.
  The `jal` at 0x23c calls odsy_DmaRegion_BuildXlatTbl with a0=a0 at entry (arg0), a1=0x1, a2=?, a3=ret(useracc).
  The `beq` branch at 0x1f4 targets 0x204, is taken when at(=[a0+52]) == 0, and falls through when at(=[a0+52]) != 0.
  The `beq` branch at 0x224 targets 0x234, is taken when v0(=ret(useracc)) == 0, and falls through when v0(=ret(useracc)) != 0.
  The `beq` branch at 0x22c targets 0x1fc and is always taken.
  The `beq` branch at 0x248 targets 0x1fc and is always taken.
  The return at 0x1fc has v0 = one of 0x0, ret(useracc).
- `odsy_DmaRegion_UnPin` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)` at 0x250 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Range: 0x250-0x2a8 (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0x250 loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `ld` at 0x264 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x268 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `sw` at 0x278 stores 4 bytes to a0 (arg0 at entry) +0x34.
  The `ld` at 0x27c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x28c loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0x290 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sd` at 0x294 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `jal` at 0x274 calls unuseracc with a0=[a0+32]:8, a1=[a0+40]:8, a2=0x110, a3=a3 at entry (arg3).
  The `jal` at 0x288 calls kmem_free with a0=[a0]:8, a1=[a0+8], a2=?, a3=?.
  The `beq` branch at 0x25c targets 0x29c, is taken when at(=[a0+52]) == 0, and falls through when at(=[a0+52]) != 0.
  The `beq` branch at 0x280 targets 0x29c, is taken when a0(=[a0]:8) == 0, and falls through when a0(=[a0]:8) != 0.
  The return at 0x2a0 has v0 = one of ?, ret(unuseracc), ret(kmem_free).
- `odsy_DmaRegion_DoTransfer` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)` at 0x2a8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Range: 0x2a8-0x364 (188 bytes).
  It occupies 188 bytes.
  The `ld` at 0x2c0 loads 8 bytes from a1 (arg1 at entry) +0x0.
  The `ld` at 0x2e8 loads 8 bytes from a0 (arg0 at entry) +0x2e0.
  2 such `sd` accesses store 8 bytes to [a0+736]:8 +0x110000, including `sd` at 0x340, `sd` at 0x34c.
  The `jal` at 0x2bc calls kvtophys with a0=[a1]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x310 targets 0x350, is taken when (at(=a2) & 0x4) == 0, and falls through when (at(=a2) & 0x4) != 0.
  The `beq` branch at 0x35c targets 0x31c and is always taken.
  The return at 0x348 has v0 = 0x0.
- `odsy_DmaRegion_BuildXlatTbl` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)` at 0x364 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Range: 0x364-0x430 (204 bytes).
  It occupies 204 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0x364, `ld` at 0x3e8.
  The `lw` at 0x37c loads 4 bytes from a0 (arg0 at entry) +0x8.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x8, including `sw` at 0x390, `sw` at 0x3e0.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x0, including `sd` at 0x394, `sd` at 0x3c4.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x28, including `ld` at 0x398, `ld` at 0x3ec.
  The `ld` at 0x3f4 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `jal` at 0x388 calls kmem_free with a0=[a0]:8, a1=[a0+8], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3b8 calls kmem_zalloc with a0=?, a1=0x8800, a2=?, a3=?.
  The `jal` at 0x3dc calls bcopy with a0=a0+56, a1=ret(kmem_zalloc), a2=0x20, a3=?.
  The `jal` at 0x3f8 calls generatePageTable with a0=a0+56, a1=[a0+32]:8, a2=[a0+40]:8, a3=[a0]:8+32, a4=0x0.
  The `jal` at 0x41c calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x374 targets 0x398, is taken when v0(=[a0]:8) == 0, and falls through when v0(=[a0]:8) != 0.
  The `beq` branch at 0x380 targets 0x398, is taken when a1(=[a0+8]) == 0, and falls through when a1(=[a0+8]) != 0.
  The `beq` branch at 0x3c0 targets 0x410, is taken when v0(=ret(kmem_zalloc)) == 0, and falls through when v0(=ret(kmem_zalloc)) != 0.
  The `beq` branch at 0x428 targets 0x408 and is always taken.
  The return at 0x408 has v0 = one of ret(generatePageTable), 0xc.
- `generatePageTable` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)` at 0x430 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Range: 0x430-0x864 (1076 bytes).
  It occupies 1076 bytes.
  The `lw` at 0x4c8 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0x4d8 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lwu` at 0x4fc loads 4 bytes from a0 (arg0 at entry) +0x14.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x64c, `lw` at 0x750, `lw` at 0x754.
  6 such `sw` accesses store 4 bytes to ?, including `sw` at 0x660, `sw` at 0x670, `sw` at 0x728.
  The `jal` at 0x4a0 calls alenlist_destroy with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x51c calls alenlist_cursor_init with a0=?, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x53c calls alenlist_get with a0=?, a1=0x0, a2=0x4000, a3=sp-224, a4=sp-216, a5=0x0.
  The `jal` at 0x5d0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a7=ret(alenlist_get).
  The `jal` at 0x614 calls alenlist_get with a0=?, a1=0x0, a2=0x4000, a3=sp-224, a4=sp-216, a5=0x0, a7=ret(alenlist_get).
  The `jal` at 0x69c calls alenlist_create with a0=0x3, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a7=0x0.
  The `jal` at 0x6cc calls uvaddr_to_alenlist with a0=ret(alenlist_create), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x0.
  The `jal` at 0x6fc calls kvaddr_to_alenlist with a0=ret(alenlist_create), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x0.
  The `jal` at 0x798 calls alenlist_cursor_init with a0=?, a1=a1 at entry (arg1), a2=0x0, a3=?.
  The `jal` at 0x7b4 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a7=ret(alenlist_get).
  The `jal` at 0x7f0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a1 at entry (arg1), a3=(a1 + a2).
  The `jal` at 0x81c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a7=ret(alenlist_get).
  The `jal` at 0x838 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a6=a1 at entry (arg1).
  The `beq` branch at 0x45c targets 0x684, is taken when a4 == 0, and falls through when a4 != 0.
  The `beq` branch at 0x46c targets 0x4b4, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0x474 targets 0x484, is taken when s6(=a4) != 0, and falls through when s6(=a4) == 0.
  The `bne` branch at 0x47c targets 0x498, is taken when s7(?) != 0, and falls through when s7(?) == 0.
  The `beq` branch at 0x4ac targets 0x480 and is always taken.
  The `beq` branch at 0x4b4 targets 0x7e4, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `bne` branch at 0x524 targets 0x790, is taken when s6(=a4) != 0, and falls through when s6(=a4) == 0.
  The `bne` branch at 0x544 targets 0x804, is taken when v0(=ret(alenlist_get)) != 0, and falls through when v0(=ret(alenlist_get)) == 0.
  The `beq` branch at 0x568 targets 0x578 and is always taken.
  The `blez` branch at 0x570 targets 0x600, is taken when v0(?) <= 0 (signed), and falls through when v0(?) > 0 (signed).
  The `bne` branch at 0x598 targets 0x570, is taken when s1(?) != 0, and falls through when s1(?) == 0.
  The `beq` branch at 0x5b8 targets 0x728, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x5c0 targets 0x570, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x5f8 targets 0x474 and is always taken.
  The `bne` branch at 0x634 targets 0x7a8, is taken when v0(=ret(alenlist_get)) != 0, and falls through when v0(=ret(alenlist_get)) == 0.
  The `beq` branch at 0x67c targets 0x578 and is always taken.
  The `beq` branch at 0x6a8 targets 0x830, is taken when v0(=ret(alenlist_create)) == 0, and falls through when v0(=ret(alenlist_create)) != 0.
  The `beq` branch at 0x6bc targets 0x6f0, is taken when a6(=a1) >= at(=0x10000000000) (unsigned), and falls through when a6(=a1) < at(=0x10000000000) (unsigned).
  The `beq` branch at 0x6e8 targets 0x71c and is always taken.
  The `beq` branch at 0x720 targets 0x46c and is always taken.
  The `beq` branch at 0x788 targets 0x474 and is always taken.
  The `beq` branch at 0x7a0 targets 0x52c and is always taken.
  The `beq` branch at 0x7dc targets 0x474 and is always taken.
  The `beq` branch at 0x7fc targets 0x474 and is always taken.
  The `beq` branch at 0x828 targets 0x474 and is always taken.
  The `beq` branch at 0x85c targets 0x720 and is always taken.
  The return at 0x490 has v0 = ?.
- `odsy_dma_poll_timer` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)` at 0x864 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Range: 0x864-0x880 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x86c calls vsema with a0=sym(.bss), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x878 has v0 = ret(vsema).
- `DmaFinishedPollDelay` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)` at 0x880 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Range: 0x880-0x8d0 (80 bytes).
  It occupies 80 bytes.
  The `jal` at 0x89c calls init_sema with a0=sym(.bss), a1=0x0, a2=0x0, a3=-0x1.
  The `jal` at 0x8ac calls timeout with a0=sym(odsy_dma_poll_timer), a1=a0 at entry (arg0), a2=0x19, a3=?.
  The `jal` at 0x8bc calls psema with a0=sym(.bss), a1=0x19, a2=?, a3=?.
  The return at 0x8c8 has v0 = ret(psema).
- `gfP_OdsyDIAGdma` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)` at 0x8d0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Range: 0x8d0-0xaf4 (548 bytes).
  It occupies 548 bytes.
  8 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x20, including `ld` at 0x8e0, `ld` at 0x938, `ld` at 0x984.
  The `ld` at 0x8f4 loads 8 bytes from [a0+32]:8 +0x2e0.
  The `ld` at 0x93c loads 8 bytes from [a0+32]:8 +0x48.
  4 such `lw` accesses load 4 bytes from [a0+32]:8 +0x50, including `lw` at 0x948, `lw` at 0x988, `lw` at 0xa28.
  3 such `sw` accesses store 4 bytes to [a0+32]:8 +0x50, including `sw` at 0x954, `sw` at 0x990, `sw` at 0xa30.
  The `lw` at 0x99c loads 4 bytes from a3 (arg3 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x9a4, `lw` at 0x9f8.
  The `sw` at 0x9b0 stores 4 bytes to ?.
  3 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0xa40, `sw` at 0xa90, `sw` at 0xab4.
  The `sd` at 0xa5c stores 8 bytes to [a0+32]:8 +0x48.
  2 such `lw` accesses load 4 bytes from [a0+32]:8 +0x68, including `lw` at 0xa64, `lw` at 0xa7c.
  The `jal` at 0x908 calls RRM_CheckValidFault with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=a2 at entry (arg2).
  The `jal` at 0x928 calls copyin with a0=a2 at entry (arg2), a1=sp-160, a2=0x30, a3=?, a6=a2 at entry (arg2).
  The `jal` at 0x970 calls odsy_NewDmaRegion with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?, a4=-0x1, a5=0x1, a6=sp-148, a7=a3 at entry (arg3).
  The `jal` at 0x9bc calls odsy_DmaRegion_DoTransfer with a0=[a0+32]:8, a1=ret(odsy_NewDmaRegion), a2=?, a3=?, a7=-0x801.
  The `jal` at 0x9ec calls DmaFinishedPollDelay with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa1c calls odsy_DeleteDmaRegion with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa50 calls psema with a0=[a0+32]:8+56, a1=0x219, a2=?, a3=?.
  The `jal` at 0xa70 calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0xaa8 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0xac8 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0xadc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0xae4 calls odsy_teardown with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x8fc targets 0x920, is taken when a1 == 0, and falls through when a1 != 0.
  The `bltz` branch at 0x918 targets 0xa90, is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed), and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed).
  The `bne` branch at 0x930 targets 0xaa0, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `bne` branch at 0x940 targets 0xa50, is taken when v1(=[[a0+32]:8+72]:8) != s0(=a0), and falls through when v1(=[[a0+32]:8+72]:8) == s0(=a0).
  The `bne` branch at 0x97c targets 0x9a0, is taken when v0(=ret(odsy_NewDmaRegion)) != 0, and falls through when v0(=ret(odsy_NewDmaRegion)) == 0.
  The `beq` branch at 0x998 targets 0xa44 and is always taken.
  The `bne` branch at 0x9c4 targets 0xac4, is taken when v0(=ret(odsy_DmaRegion_DoTransfer)) != 0, and falls through when v0(=ret(odsy_DmaRegion_DoTransfer)) == 0.
  The `bne` branch at 0x9d0 targets 0xa10, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x9e0 targets 0xa14, is taken when a2(?) >= 0x28 (signed), and falls through when a2(?) < 0x28 (signed).
  The `beq` branch at 0xa08 targets 0x9d8, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xa14 targets 0xad8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xa68 targets 0x948, is taken when at(=[[a0+32]:8+104]) == 0, and falls through when at(=[[a0+32]:8+104]) != 0.
  The `bne` branch at 0xa80 targets 0xa70, is taken when v1(=[[a0+32]:8+104]) != 0, and falls through when v1(=[[a0+32]:8+104]) == 0.
  The `beq` branch at 0xa88 targets 0x94c and is always taken.
  The `beq` branch at 0xa98 targets 0xa44 and is always taken.
  The `beq` branch at 0xabc targets 0xa44 and is always taken.
  The `beq` branch at 0xad0 targets 0x9d0 and is always taken.
  The `beq` branch at 0xaec targets 0xa1c and is always taken.
  The return at 0xa48 has v0 = one of [a3], 0x0, 0xe.
- `odsyDMAOps` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)` at 0xaf4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Range: 0xaf4-0x179c (3240 bytes).
  It occupies 3240 bytes.
  The `ld` at 0xb18 loads 8 bytes from a0 (arg0 at entry) +0x2e0.
  The `ld` at 0xb1c loads 8 bytes from a3 (arg3 at entry) +0x10.
  The `lw` at 0xb20 loads 4 bytes from a3 (arg3 at entry) +0x18.
  2 such `ld` accesses load 8 bytes from a2 (arg2 at entry) +0x60, including `ld` at 0xb34, `ld` at 0xbc4.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x3c, including `lw` at 0xb58, `lw` at 0xbac.
  2 such `ld` accesses load 8 bytes from a2 (arg2 at entry) +0x90, including `ld` at 0xb6c, `ld` at 0xc54.
  The `ld` at 0xb70 loads 8 bytes from [a2+144]:8 +0x78.
  The `lw` at 0xb78 loads 4 bytes from [[a2+144]:8+120]:8 +0x8c.
  51 such `sw` accesses store 4 bytes to table(0x110000) +0x0, including `sw` at 0xba4, `sw` at 0xba8, `sw` at 0x1174.
  3 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x28, including `lw` at 0xbcc, `lw` at 0x1008, `lw` at 0x1408.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x38, including `lw` at 0xbd0, `lw` at 0x143c.
  The `sd` at 0xbdc stores 8 bytes to a3 (arg3 at entry) +0x48.
  The `lw` at 0xbec loads 4 bytes from a0 (arg0 at entry) +0x118.
  8 such `lw` accesses load 4 bytes from ?, including `lw` at 0xc04, `lw` at 0xe9c, `lw` at 0x1178.
  The `lw` at 0xc2c loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lw` at 0xc38 loads 4 bytes from a3 (arg3 at entry) +0x1c.
  The `ld` at 0xc58 loads 8 bytes from [a2+144]:8 +0x80.
  The `lw` at 0xc5c loads 4 bytes from [[a2+144]:8+128]:8 +0x6c.
  The `lw` at 0xc60 loads 4 bytes from [[a2+144]:8+128]:8 +0x68.
  3 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x20, including `lw` at 0xc68, `lw` at 0xfd8, `lw` at 0x13f0.
  The `lw` at 0xca4 loads 4 bytes from a4 (arg4 at entry) +0x20.
  The `lw` at 0xca8 loads 4 bytes from a4 (arg4 at entry) +0x14.
  2 such `lw` accesses load 4 bytes from [a2+96]:8 +0x1b60, including `lw` at 0xcc8, `lw` at 0x1600.
  2 such `lw` accesses load 4 bytes from [a2+96]:8 +0x1b6c, including `lw` at 0xd14, `lw` at 0x161c.
  The `lw` at 0xd60 loads 4 bytes from a4 (arg4 at entry) +0x24.
  The `lw` at 0xd64 loads 4 bytes from a4 (arg4 at entry) +0x18.
  The `sw` at 0xea8 stores 4 bytes to ?.
  The `sw` at 0xff0 stores 4 bytes to a3 (arg3 at entry) +0x20.
  The `lw` at 0x1030 loads 4 bytes from a3 (arg3 at entry) +0x30.
  The `ld` at 0x12d4 loads 8 bytes from a3 (arg3 at entry) +0x48.
  The `lwu` at 0x13bc loads 4 bytes from a2 (arg2 at entry) +0x28.
  2 such `sd` accesses store 8 bytes to table(0x110000) +0x0, including `sd` at 0x13d0, `sd` at 0x1554.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x2c, including `lw` at 0x13d8, `lw` at 0x1560.
  The `lw` at 0x140c loads 4 bytes from [[a2+144]:8+120]:8 +0x70.
  The `lw` at 0x1424 loads 4 bytes from [[a2+144]:8+120]:8 +0x74.
  The `sw` at 0x1460 stores 4 bytes to a3 (arg3 at entry) +0x38.
  The `lw` at 0x1508 loads 4 bytes from [a2+96]:8 +0x1cb8.
  The `sw` at 0x1550 stores 4 bytes to [a2+96]:8 +0x1cb8.
  The `lw` at 0x15d8 loads 4 bytes from [a2+96]:8 +0x1b4c.
  The `lw` at 0x15e0 loads 4 bytes from [a2+96]:8 +0x1b50.
  The `lw` at 0x15e8 loads 4 bytes from [a2+96]:8 +0x1b54.
  The `lw` at 0x15f0 loads 4 bytes from [a2+96]:8 +0x1b58.
  2 such `lw` accesses load 4 bytes from [a2+96]:8 +0x1b5c, including `lw` at 0x15f8, `lw` at 0x1610.
  The `lw` at 0x1608 loads 4 bytes from [a2+96]:8 +0x1b64.
  The `lw` at 0x1628 loads 4 bytes from [a2+96]:8 +0x1b70.
  The `lw` at 0x1714 loads 4 bytes from a0 (arg0 at entry) +0x5700.
  The `jal` at 0xb48 calls useracc with a0=[a3+16]:8, a1=[a3+24], a2=0x110, a3=0x0.
  The `jal` at 0x127c calls odsyDMAOp with a0=a2 at entry (arg2), a1=a0 at entry (arg0), a2=0x0, a3=?, a5=sp-384, a6=sp-360.
  The `jal` at 0x14a4 calls odsyDMAOp with a0=a2 at entry (arg2), a1=a0 at entry (arg0), a2=0x0, a3=?, a5=sp-384, a6=a3+28, a7=a3+72.
  The `jal` at 0x15a4 calls unuseracc with a0=?, a1=?, a2=0x110, a3=-0x2.
  The `jal` at 0x1690 calls odsyDMAOp with a0=a2 at entry (arg2), a1=a0 at entry (arg0), a2=0x0, a3=?, a5=sp-384, a6=a3+28, a7=a3+72.
  The `jal` at 0x16cc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=-0x2, a7=0xffffffffcf80a92f.
  The `jal` at 0x1730 calls odsyDMAWait with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=0x1, a3=sp-376, a4=0xd0a, a5=([a0+22272] | 0x8000), a6=0x10a5a, a7=0x10444.
  The `jal` at 0x1744 calls unuseracc with a0=?, a1=?, a2=0x110, a3=?.
  The `jal` at 0x1788 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0xb50 targets 0x1758, is taken when v0(=ret(useracc)) != 0, and falls through when v0(=ret(useracc)) == 0.
  The `beq` branch at 0xb64 targets 0xb80, is taken when (v0(=[a3+60]) & 0x10) == 0, and falls through when (v0(=[a3+60]) & 0x10) != 0.
  The `beq` branch at 0xb7c targets 0x13f0, is taken when v1(=[[[a2+144]:8+120]:8+140]) == 0, and falls through when v1(=[[[a2+144]:8+120]:8+140]) != 0.
  The `beq` branch at 0xb88 targets 0x1464, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xbb8 targets 0x15cc, is taken when (a5(=[a3+60]) & 0x8) == 0, and falls through when (a5(=[a3+60]) & 0x8) != 0.
  The `beq` branch at 0xc0c targets 0x14f8, is taken when v0(=[a0+280]) == 0, and falls through when v0(=[a0+280]) != 0.
  The `beq` branch at 0xc18 targets 0x156c, is taken when v0(=[a0+280]) == v1(=0x1), and falls through when v0(=[a0+280]) != v1(=0x1).
  The `beq` branch at 0xc24 targets 0xc68, is taken when s2(=a2) == 0, and falls through when s2(=a2) != 0.
  The `beq` branch at 0xc30 targets 0xc68, is taken when a6(=[a2]) == 0, and falls through when a6(=[a2]) != 0.
  The `beq` branch at 0xc4c targets 0xc68, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xc78 targets 0xc90, is taken when (at(?) & 0x8000) == 0, and falls through when (at(?) & 0x8000) != 0.
  The `bltz` branch at 0xc9c targets 0x14c0, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `beq` branch at 0xcb8 targets 0xcc8, is taken when v0(=([a4+20] + [a4+32])) >= v1(?) (unsigned), and falls through when v0(=([a4+20] + [a4+32])) < v1(?) (unsigned).
  The `beq` branch at 0xcd0 targets 0x14e8, is taken when v0(=[[a2+96]:8+7008]) == 0, and falls through when v0(=[[a2+96]:8+7008]) != 0.
  The `beq` branch at 0xd04 targets 0xd14, is taken when (s1(=0xffffffff80000000) & v0(=[[a2+96]:8+7008])) == 0, and falls through when (s1(=0xffffffff80000000) & v0(=[[a2+96]:8+7008])) != 0.
  The `beq` branch at 0xd1c targets 0x14f0, is taken when a1(=[[a2+96]:8+7020]) == 0, and falls through when a1(=[[a2+96]:8+7020]) != 0.
  The `beq` branch at 0xd50 targets 0xd60, is taken when (s1(=0xffffffff80000000) & a1(=[[a2+96]:8+7020])) == 0, and falls through when (s1(=0xffffffff80000000) & a1(=[[a2+96]:8+7020])) != 0.
  The `beq` branch at 0xd78 targets 0xd84, is taken when a3(=([a4+24] + [a4+36])) >= a7(?) (unsigned), and falls through when a3(=([a4+24] + [a4+36])) < a7(?) (unsigned).
  The `beq` branch at 0xd94 targets 0xda0, is taken when a3(=([a4+24] + [a4+36])) >= a1(?) (unsigned), and falls through when a3(=([a4+24] + [a4+36])) < a1(?) (unsigned).
  The `beq` branch at 0xda4 targets 0xdb8, is taken when a2(?) == a7(?), and falls through when a2(?) != a7(?).
  The `bltz` branch at 0xdb0 targets 0x15b8, is taken when a5(?) < 0 (signed), and falls through when a5(?) >= 0 (signed).
  The `beq` branch at 0xdb8 targets 0xdcc, is taken when v0(?) == a1(?), and falls through when v0(?) != a1(?).
  The `bltz` branch at 0xdc4 targets 0x15c4, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `beq` branch at 0xde0 targets 0xdf0, is taken when (a7(?) & s1(=0xffffffff80000000)) == 0, and falls through when (a7(?) & s1(=0xffffffff80000000)) != 0.
  The `beq` branch at 0xdf4 targets 0xe20, is taken when (t3(?) & a3(=-0x2)) == 0, and falls through when (t3(?) & a3(=-0x2)) != 0.
  The `beq` branch at 0xe08 targets 0xe20, is taken when t2(?) >= 0x20 (signed), and falls through when t2(?) < 0x20 (signed).
  The `bne` branch at 0xe18 targets 0xdfc, is taken when (a5(?) & t3(?)) != 0, and falls through when (a5(?) & t3(?)) == 0.
  The `beq` branch at 0xe24 targets 0x14d8, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0xe38 targets 0xe48, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xe50 targets 0xe7c, is taken when (a4(?) & a3(=-0x2)) == 0, and falls through when (a4(?) & a3(=-0x2)) != 0.
  The `beq` branch at 0xe64 targets 0xe7c, is taken when v0(?) >= 0x20 (signed), and falls through when v0(?) < 0x20 (signed).
  The `bne` branch at 0xe74 targets 0xe58, is taken when (a6(?) & a4(?)) != 0, and falls through when (a6(?) & a4(?)) == 0.
  The `beq` branch at 0xe7c targets 0x14e0, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bgtz` branch at 0xea4 targets 0xe90, is taken when a2(?) > 0 (signed), and falls through when a2(?) <= 0 (signed).
  The `blez` branch at 0xf14 targets 0x1578, is taken when s0(?) <= 0 (signed), and falls through when s0(?) > 0 (signed).
  The `beq` branch at 0xf1c targets 0x157c, is taken when a7(?) == a1(?), and falls through when a7(?) != a1(?).
  The `bltz` branch at 0xf24 targets 0x1504, is taken when t0(?) < 0 (signed), and falls through when t0(?) >= 0 (signed).
  The `beq` branch at 0xfb8 targets 0x12e4 and is always taken.
  The `beq` branch at 0x10bc targets 0x10d0, is taken when (at(?) & s1(=0xffffffff80000000)) == 0, and falls through when (at(?) & s1(=0xffffffff80000000)) != 0.
  The `beq` branch at 0x10d4 targets 0x1100, is taken when (t3(?) & a3(=-0x2)) == 0, and falls through when (t3(?) & a3(=-0x2)) != 0.
  The `beq` branch at 0x10e8 targets 0x1100, is taken when t1(?) >= 0x20 (signed), and falls through when t1(?) < 0x20 (signed).
  The `bne` branch at 0x10f8 targets 0x10dc, is taken when (v1(?) & t3(?)) != 0, and falls through when (v1(?) & t3(?)) == 0.
  The `beq` branch at 0x1100 targets 0x1334, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x1118 targets 0x1128, is taken when (s7(?) & s1(=0xffffffff80000000)) == 0, and falls through when (s7(?) & s1(=0xffffffff80000000)) != 0.
  The `beq` branch at 0x112c targets 0x1164, is taken when (t2(?) & a3(=-0x2)) == 0, and falls through when (t2(?) & a3(=-0x2)) != 0.
  The `beq` branch at 0x1148 targets 0x1164, is taken when v0(?) >= 0x20 (signed), and falls through when v0(?) < 0x20 (signed).
  The `bne` branch at 0x115c targets 0x1138, is taken when (v1(?) & t2(?)) != 0, and falls through when (v1(?) & t2(?)) == 0.
  The `beq` branch at 0x1168 targets 0x133c, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `blez` branch at 0x1244 targets 0x1328, is taken when s0(?) <= 0 (signed), and falls through when s0(?) > 0 (signed).
  The `bne` branch at 0x12b0 targets 0x16c0, is taken when v0(=ret(odsyDMAOp)) != 0, and falls through when v0(=ret(odsyDMAOp)) == 0.
  The `blez` branch at 0x12dc targets 0x1344, is taken when s0(?) <= 0 (signed), and falls through when s0(?) > 0 (signed).
  The `beq` branch at 0x1308 targets 0xfc0, is taken when s0(?) >= t2(?) (signed), and falls through when s0(?) < t2(?) (signed).
  The `beq` branch at 0x1320 targets 0xfc4 and is always taken.
  The `beq` branch at 0x132c targets 0x1250 and is always taken.
  The `beq` branch at 0x1334 targets 0x1108 and is always taken.
  The `beq` branch at 0x133c targets 0x1174 and is always taken.
  The `beq` branch at 0x136c targets 0x13e0, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bltz` branch at 0x13f8 targets 0xb80, is taken when a2(?) < 0 (signed), and falls through when a2(?) >= 0 (signed).
  The `bltz` branch at 0x1400 targets 0xb84, is taken when a1(?) < 0 (signed), and falls through when a1(?) >= 0 (signed).
  The `bne` branch at 0x141c targets 0xb84, is taken when a5(=[[[a2+144]:8+120]:8+112]) < a6(?) (signed), and falls through when a5(=[[[a2+144]:8+120]:8+112]) >= a6(?) (signed).
  The `bne` branch at 0x1434 targets 0xb84, is taken when at(=[[[a2+144]:8+120]:8+116]) < v1(?) (signed), and falls through when at(=[[[a2+144]:8+120]:8+116]) >= v1(?) (signed).
  The `beq` branch at 0x14b8 targets 0x13e8 and is always taken.
  The `beq` branch at 0x14d0 targets 0xca4 and is always taken.
  The `beq` branch at 0x14d8 targets 0xe34 and is always taken.
  The `beq` branch at 0x14e0 targets 0xe8c and is always taken.
  The `beq` branch at 0x14e8 targets 0xd14 and is always taken.
  The `beq` branch at 0x14f0 targets 0xd60 and is always taken.
  The `beq` branch at 0x14fc targets 0xc24 and is always taken.
  The `beq` branch at 0x1510 targets 0x153c, is taken when v1(=[[a2+96]:8+7352]) == 0, and falls through when v1(=[[a2+96]:8+7352]) != 0.
  The `beq` branch at 0x1564 targets 0xf28 and is always taken.
  The `beq` branch at 0x1570 targets 0xc24 and is always taken.
  The `beq` branch at 0x15b0 targets 0x13e8 and is always taken.
  The `beq` branch at 0x15bc targets 0xdb8 and is always taken.
  The `beq` branch at 0x15c4 targets 0xdcc and is always taken.
  The `beq` branch at 0x16b8 targets 0x13e0 and is always taken.
  The `beq` branch at 0x1750 targets 0x13e8 and is always taken.
  The `beq` branch at 0x1794 targets 0x13e8 and is always taken.
  The return at 0x13e8 has v0 = one of ret(odsyDMAOp), 0x0, ?, 0xc.
- `odsyDMAOp` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)` at 0x179c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Range: 0x179c-0x1e38 (1692 bytes).
  It occupies 1692 bytes.
  The `ld` at 0x179c loads 8 bytes from a1 (arg1 at entry) +0x2e0.
  The `sw` at 0x17a0 stores 4 bytes to a5 (arg5 at entry) +0x0.
  The `sw` at 0x182c stores 4 bytes to ret(kmem_alloc) +0x0.
  2 such `sd` accesses store 8 bytes to ret(kmem_alloc) +0x8, including `sd` at 0x1830, `sd` at 0x1950.
  The `sd` at 0x183c stores 8 bytes to ret(kmem_alloc) +0x20.
  3 such `sw` accesses store 4 bytes to ret(kmem_alloc) +0x28, including `sw` at 0x1864, `sw` at 0x1878, `sw` at 0x193c.
  2 such `sd` accesses store 8 bytes to ret(kmem_alloc) +0x30, including `sd` at 0x186c, `sd` at 0x1934.
  2 such `sd` accesses store 8 bytes to ret(kmem_alloc) +0x38, including `sd` at 0x1874, `sd` at 0x1930.
  12 such `lw` accesses load 4 bytes from ?, including `lw` at 0x18c8, `lw` at 0x18ec, `lw` at 0x1990.
  5 such `ld` accesses load 8 bytes from ?, including `ld` at 0x18dc, `ld` at 0x1a40, `ld` at 0x1a4c.
  The `sw` at 0x1964 stores 4 bytes to ret(kmem_alloc) +0x10.
  2 such `ld` accesses load 8 bytes from ret(kmem_alloc) +0x8, including `ld` at 0x1970, `ld` at 0x1bf0.
  13 such `sw` accesses store 4 bytes to ?, including `sw` at 0x19a8, `sw` at 0x19bc, `sw` at 0x19e0.
  3 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0xde0, including `ld` at 0x1a88, `ld` at 0x1afc, `ld` at 0x1d34.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0xdd8, including `ld` at 0x1a8c, `ld` at 0x1d38.
  The `ld` at 0x1ae8 loads 8 bytes from a1 (arg1 at entry) +0x2f8.
  The `sd` at 0x1af0 stores 8 bytes to [a1+760]:8 +0x0.
  The `sd` at 0x1af4 stores 8 bytes to ret(kmem_alloc) +0x40.
  The `sd` at 0x1af8 stores 8 bytes to a7 (arg7 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x9cc, including `lw` at 0x1b04, `lw` at 0x1b24.
  The `sd` at 0x1b18 stores 8 bytes to a1 (arg1 at entry) +0xde0.
  The `sd` at 0x1b20 stores 8 bytes to (([a1+2508] << 0x3) + a1) +0x9d8.
  The `sw` at 0x1b6c stores 4 bytes to a1 (arg1 at entry) +0x9cc.
  2 such `lw` accesses load 4 bytes from a6 (arg6 at entry) +0x1c, including `lw` at 0x1b7c, `lw` at 0x1c64.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0x1bd0, `sd` at 0x1bd8.
  2 such `lw` accesses load 4 bytes from a5 (arg5 at entry) +0x0, including `lw` at 0x1c2c, `lw` at 0x1cc8.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x9c8, including `lw` at 0x1ca8, `lw` at 0x1d9c.
  The `ld` at 0x1cd4 loads 8 bytes from a7 (arg7 at entry) +0x0.
  The `sd` at 0x1cd8 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  2 such `sw` accesses store 4 bytes to table(0x110000) +0x0, including `sw` at 0x1db8, `sw` at 0x1dc4.
  The `sd` at 0x1e08 stores 8 bytes to a0 (arg0 at entry) +0xa8.
  The `jal` at 0x17e8 calls kmem_alloc with a0=0x48, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1820 calls init_sv with a0=ret(kmem_alloc)+24, a1=0x0, a2=sym(.rodata), a3=-0x1.
  The `jal` at 0x1850 calls OdsyAllocCSetId with a0=a0+312, a1=ret(kmem_alloc), a2=?, a3=?, a6=-0x1.
  The `jal` at 0x1890 calls ConstructTftchWarList with a0=sp-320, a1=a6 at entry (arg6), a2=sp-272, a3=a3 at entry (arg3), a6=-0x1.
  The `jal` at 0x18d4 calls OdsyDeallocCSetId with a0=a0+312, a1=?, a2=?, a3=?.
  The `jal` at 0x18e8 calls kmem_free with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x18f4 calls kmem_free with a0=?, a1=0x58, a2=?, a3=?.
  The `jal` at 0x1904 calls mutex_mine with a0=a1+2472, a1=?, a2=?, a3=?.
  The `jal` at 0x1914 calls mutex_unlock with a0=a1+2472, a1=?, a2=?, a3=?.
  The `jal` at 0x1944 calls kmem_alloc with a0=?, a1=0x8801, a2=?, a3=?.
  The `jal` at 0x1980 calls bcopy with a0=a6 at entry (arg6), a1=?, a2=0x20, a3=?.
  The `jal` at 0x1a48 calls generatePageTable with a0=?, a1=?, a2=?, a3=?, a4=a2 at entry (arg2), a5=0xfffffffffff00000.
  The `jal` at 0x1a80 calls ddi_mutex_lock with a0=a1+2472, a1=-0x1, a2=?, a3=?.
  The `jal` at 0x1bf8 calls kvtophys with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1c5c calls ReleaseTftchWarList with a0=sp-320, a1=0x1ffff, a2=?, a3=?, a4=0xffffffff00000000.
  The `jal` at 0x1d0c calls mutex_unlock with a0=a1+2472, a1=[a1+3552]:8, a2=?, a3=?.
  The `jal` at 0x1d20 calls odsyDMAWait with a0=a1 at entry (arg1), a1=0x0, a2=0x0, a3=0x0.
  The `jal` at 0x1d2c calls ddi_mutex_lock with a0=a1+2472, a1=-0x1, a2=?, a3=?.
  The `jal` at 0x1d6c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1de0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a6=-0x1.
  The `jal` at 0x1dec calls kmem_free with a0=ret(kmem_alloc), a1=0x48, a2=?, a3=?.
  The `jal` at 0x1e1c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x17f8 targets 0x1d50, is taken when v0(=ret(kmem_alloc)) == 0, and falls through when v0(=ret(kmem_alloc)) != 0.
  The `beq` branch at 0x1808 targets 0x1828, is taken when (v1(?) & 0x2) == 0, and falls through when (v1(?) & 0x2) != 0.
  The `beq` branch at 0x1838 targets 0x1878, is taken when s2(=a0) == 0, and falls through when s2(=a0) != 0.
  The `beq` branch at 0x1844 targets 0x1930, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x1860 targets 0x1dc8, is taken when v0(=ret(OdsyAllocCSetId)) == a6(=-0x1), and falls through when v0(=ret(OdsyAllocCSetId)) != a6(=-0x1).
  The `beq` branch at 0x1870 targets 0x187c and is always taken.
  The `beq` branch at 0x1898 targets 0x1940, is taken when v0(=ret(ConstructTftchWarList)) == 0, and falls through when v0(=ret(ConstructTftchWarList)) != 0.
  The `beq` branch at 0x18b4 targets 0x18fc, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x18c0 targets 0x18dc, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x18cc targets 0x18dc, is taken when a1(?) == t1(=-0x1), and falls through when a1(?) != t1(=-0x1).
  The `beq` branch at 0x18e0 targets 0x18f0, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x190c targets 0x1920, is taken when v0(=ret(mutex_mine)) == 0, and falls through when v0(=ret(mutex_mine)) != 0.
  The `beq` branch at 0x1938 targets 0x187c and is always taken.
  The `beq` branch at 0x194c targets 0x1e0c, is taken when v0(=ret(kmem_alloc)) == 0, and falls through when v0(=ret(kmem_alloc)) != 0.
  The `bne` branch at 0x1a50 targets 0x1aa4, is taken when v0(=ret(generatePageTable)) != 0, and falls through when v0(=ret(generatePageTable)) == 0.
  The `bne` branch at 0x1a6c targets 0x1968, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `bne` branch at 0x1a94 targets 0x1ab8, is taken when a1(=[a1+3552]:8) < a0(=[a1+3544]:8) (unsigned), and falls through when a1(=[a1+3552]:8) >= a0(=[a1+3544]:8) (unsigned).
  The `beq` branch at 0x1a9c targets 0x1ac4 and is always taken.
  The `beq` branch at 0x1ab0 targets 0x18b4 and is always taken.
  The `bne` branch at 0x1ad8 targets 0x1ae8, is taken when v1(?) < t0(?) (unsigned), and falls through when v1(?) >= t0(?) (unsigned).
  The `beq` branch at 0x1ae0 targets 0x1d0c and is always taken.
  The `beq` branch at 0x1b74 targets 0x1d80, is taken when (at(?) & 0x1) == 0, and falls through when (at(?) & 0x1) != 0.
  The `beq` branch at 0x1b90 targets 0x1dac, is taken when (t0(?) & 0x8) == 0, and falls through when (t0(?) & 0x8) != 0.
  The `beq` branch at 0x1ba4 targets 0x1bec and is always taken.
  The `beq` branch at 0x1be4 targets 0x1c5c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x1c48 targets 0x1bac, is taken when t0(=[a5]) == 0, and falls through when t0(=[a5]) != 0.
  The `beq` branch at 0x1c54 targets 0x1bb8 and is always taken.
  The `beq` branch at 0x1c74 targets 0x1c90, is taken when (v1(?) & 0x8) == 0, and falls through when (v1(?) & 0x8) != 0.
  The `beq` branch at 0x1c98 targets 0x1d90, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x1cbc targets 0x1cdc, is taken when s2(=a0) == 0, and falls through when s2(=a0) != 0.
  The `beq` branch at 0x1cd0 targets 0x1e04, is taken when at(=[a5]) == 0, and falls through when at(=[a5]) != 0.
  The `beq` branch at 0x1ce4 targets 0x18b4 and is always taken.
  The `bne` branch at 0x1d04 targets 0x1ae8, is taken when v1(?) < t0(?) (unsigned), and falls through when v1(?) >= t0(?) (unsigned).
  The `bne` branch at 0x1d40 targets 0x1cec, is taken when a1(=[a1+3552]:8) < a0(=[a1+3544]:8) (unsigned), and falls through when a1(=[a1+3552]:8) >= a0(=[a1+3544]:8) (unsigned).
  The `beq` branch at 0x1d48 targets 0x1cf8 and is always taken.
  The `beq` branch at 0x1d78 targets 0x1928 and is always taken.
  The `beq` branch at 0x1d88 targets 0x1b98 and is always taken.
  The `beq` branch at 0x1da4 targets 0x1cbc and is always taken.
  The `beq` branch at 0x1dc0 targets 0x1b98 and is always taken.
  The `beq` branch at 0x1dfc targets 0x1928 and is always taken.
  The `beq` branch at 0x1e04 targets 0x1cdc and is always taken.
  The `beq` branch at 0x1e30 targets 0x18b4 and is always taken.
  The return at 0x1928 has v0 = one of ?, 0xc.
- `odsy_dmawait_timeout` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)` at 0x1e38 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Range: 0x1e38-0x1e70 (56 bytes).
  It occupies 56 bytes.
  The `jal` at 0x1e50 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1e58 calls odsy_teardown with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The return at 0x1e68 has v0 = ret(odsy_teardown).
- `odsy_dmawait_harmless_timeout` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)` at 0x1e70 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Range: 0x1e70-0x1ea8 (56 bytes).
  It occupies 56 bytes.
  The `jal` at 0x1e88 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1e90 calls sv_broadcast with a0=a0+2488, a1=?, a2=?, a3=?.
  The return at 0x1ea0 has v0 = ret(sv_broadcast).
- `odsyDMAWait` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)` at 0x1ea8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Range: 0x1ea8-0x2280 (984 bytes).
  It occupies 984 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2d8, including `lw` at 0x1ec0, `lw` at 0x20e8, `lw` at 0x21c0.
  2 such `ld` accesses load 8 bytes from a3 (arg3 at entry) +0x0, including `ld` at 0x1f10, `ld` at 0x2064.
  The `ld` at 0x1f1c loads 8 bytes from a0 (arg0 at entry) +0xde0.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xdd8, including `ld` at 0x1f20, `ld` at 0x2124.
  2 such `lw` accesses load 4 bytes from ret(OdsyNextCSetElem) +0x0, including `lw` at 0x1fc0, `lw` at 0x200c.
  2 such `sd` accesses store 8 bytes to a3 (arg3 at entry) +0x0, including `sd` at 0x1fe0, `sd` at 0x21d8.
  The `lw` at 0x2018 loads 4 bytes from ret(OdsyNextCSetElem) +0x28.
  The `ld` at 0x2028 loads 8 bytes from ret(OdsyNextCSetElem) +0x38.
  The `ld` at 0x2034 loads 8 bytes from ret(OdsyNextCSetElem) +0x30.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x2044, `lw` at 0x216c.
  The `lw` at 0x2114 loads 4 bytes from a0 (arg0 at entry) +0x9d0.
  The `ld` at 0x2120 loads 8 bytes from (([a0+2512] << 0x3) + a0) +0x9d8.
  The `ld` at 0x2128 loads 8 bytes from [(([a0+2512] << 0x3) + a0)+2520]:8 +0x40.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x2148, `ld` at 0x2150.
  The `jal` at 0x1ef0 calls ddi_mutex_lock with a0=a0+2472, a1=-0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1f4c calls mutex_unlock with a0=?, a1=?, a2=[a0+3544]:8, a3=[a3]:8.
  The `jal` at 0x1f94 calls ddi_mutex_lock with a0=?, a1=-0x1, a2=?, a3=?.
  The `jal` at 0x1fa4 calls OdsyInitCSetCursor with a0=a1+312, a1=?, a2=?, a3=?.
  The `jal` at 0x1fac calls OdsyNextCSetElem with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1fc4 calls mutex_unlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1fe8 calls sv_destroy with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1ff4 calls kmem_free with a0=?, a1=0x48, a2=?, a3=?.
  The `jal` at 0x1ffc calls OdsyNextCSetElem with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2030 calls unuseracc with a0=[ret(OdsyNextCSetElem)+48]:8, a1=[ret(OdsyNextCSetElem)+56]:8, a2=0x110, a3=?, a4=[ret(OdsyNextCSetElem)], a5=[ret(OdsyNextCSetElem)+40].
  The `jal` at 0x2040 calls OdsyDeallocCSetId with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x207c calls mutex_unlock with a0=?, a1=?, a2=[a0+3544]:8, a3=[a3]:8.
  The `jal` at 0x209c calls timeout with a0=sym(odsy_dmawait_harmless_timeout), a1=a0 at entry (arg0), a2=0x5dc, a3=a3 at entry (arg3), a4=a2 at entry (arg2), a5=-0x1.
  The `jal` at 0x20a8 calls hold_nonfatalsig with a0=sp-176, a1=?, a2=?, a3=?.
  The `jal` at 0x20bc calls ddi_sv_wait_sig with a0=a0+2488, a1=?, a2=0x0, a3=?.
  The `jal` at 0x20c8 calls release_nonfatalsig with a0=sp-176, a1=?, a2=?, a3=?.
  The `jal` at 0x20d0 calls untimeout with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2160 calls timeout with a0=sym(odsy_dmawait_timeout), a1=a0 at entry (arg0), a2=0x5dc, a3=[a3]:8, a4=a0 at entry (arg0), a6=[a0+2512], a7=[[(([a0+2512] << 0x3) + a0)+2520]:8+64]:8.
  The `jal` at 0x2180 calls hold_nonfatalsig with a0=sp-176, a1=?, a2=?, a3=?, a5=ret(timeout).
  The `jal` at 0x2194 calls ddi_sv_wait_sig with a0=?, a1=?, a2=0x0, a3=?.
  The `jal` at 0x21a0 calls release_nonfatalsig with a0=sp-176, a1=?, a2=?, a3=?.
  The `jal` at 0x21a8 calls untimeout with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x21dc calls mutex_unlock with a0=?, a1=?, a2=a0 at entry (arg0), a3=[a3]:8, a4=a2 at entry (arg2), a5=-0x1.
  The `jal` at 0x21f8 calls untimeout with a0=ret(timeout), a1=?, a2=?, a3=?, a5=ret(timeout).
  The `jal` at 0x2200 calls mutex_unlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x221c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=[a3]:8.
  The `jal` at 0x2224 calls mutex_unlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2240 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=[a0+3544]:8, a3=[[(([a0+2512] << 0x3) + a0)+2520]:8+64]:8, a6=[a0+2512], a7=[[(([a0+2512] << 0x3) + a0)+2520]:8+64]:8.
  The `jal` at 0x2248 calls mutex_unlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2264 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=[a3]:8, a4=a0 at entry (arg0), a6=[a0+2512], a7=[[(([a0+2512] << 0x3) + a0)+2520]:8+64]:8.
  The `jal` at 0x226c calls mutex_unlock with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1ed0 targets 0x1ee0, is taken when at(=[a0+728]) == 0, and falls through when at(=[a0+728]) != 0.
  The `beq` branch at 0x1f08 targets 0x2094, is taken when a4(=a2) == 0, and falls through when a4(=a2) != 0.
  The `beq` branch at 0x1f14 targets 0x21dc, is taken when a5(=-0x1) == a3(=[a3]:8), and falls through when a5(=-0x1) != a3(=[a3]:8).
  The `bne` branch at 0x1f30 targets 0x1f6c, is taken when v0(=[a0+3552]:8) < a2(=[a0+3544]:8) (unsigned), and falls through when v0(=[a0+3552]:8) >= a2(=[a0+3544]:8) (unsigned).
  The `bne` branch at 0x1f3c targets 0x1f4c, is taken when a3(=[a3]:8) < a2(=[a0+3544]:8) (unsigned), and falls through when a3(=[a3]:8) >= a2(=[a0+3544]:8) (unsigned).
  The `beq` branch at 0x1f44 targets 0x1f64, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x1f64 targets 0x1f80 and is always taken.
  The `beq` branch at 0x1f6c targets 0x1f78, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x1f74 targets 0x207c, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x1f84 targets 0x2050, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x1f8c targets 0x1fd0, is taken when v1(=a1) == 0, and falls through when v1(=a1) != 0.
  The `beq` branch at 0x1fb4 targets 0x1fc4, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x1fbc targets 0x2010 and is always taken.
  The `beq` branch at 0x1fdc targets 0x1ed8 and is always taken.
  The `beq` branch at 0x2004 targets 0x1fc4, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `bne` branch at 0x2010 targets 0x1ffc, is taken when a4(=[ret(OdsyNextCSetElem)]) != 0, and falls through when a4(=[ret(OdsyNextCSetElem)]) == 0.
  The `beq` branch at 0x201c targets 0x1fe4, is taken when a5(=[ret(OdsyNextCSetElem)+40]) == at(=-0x1), and falls through when a5(=[ret(OdsyNextCSetElem)+40]) != at(=-0x1).
  The `beq` branch at 0x2048 targets 0x1fe8 and is always taken.
  The `bne` branch at 0x2054 targets 0x1f8c, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `bne` branch at 0x206c targets 0x20fc, is taken when a3(=[a3]:8) < a2(?) (unsigned), and falls through when a3(=[a3]:8) >= a2(?) (unsigned).
  The `beq` branch at 0x2074 targets 0x2108 and is always taken.
  The `beq` branch at 0x208c targets 0x1f78 and is always taken.
  The `beq` branch at 0x20dc targets 0x20f4, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x20ec targets 0x21f0, is taken when a5(=[a0+728]) == 0, and falls through when a5(=[a0+728]) != 0.
  The `beq` branch at 0x20f4 targets 0x1ed8 and is always taken.
  The `beq` branch at 0x210c targets 0x2210, is taken when v0(?) >= 0x80 (unsigned), and falls through when v0(?) < 0x80 (unsigned).
  The `bne` branch at 0x212c targets 0x2238, is taken when a2(=[a0+3544]:8) != a7(=[[(([a0+2512] << 0x3) + a0)+2520]:8+64]:8), and falls through when a2(=[a0+3544]:8) == a7(=[[(([a0+2512] << 0x3) + a0)+2520]:8+64]:8).
  The `bne` branch at 0x2154 targets 0x225c, is taken when a3(=[a3]:8) != a2(?), and falls through when a3(=[a3]:8) == a2(?).
  The `beq` branch at 0x2178 targets 0x21f8, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x21b4 targets 0x21c8, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x21c4 targets 0x1f88, is taken when a5(=[a0+728]) == 0, and falls through when a5(=[a0+728]) != 0.
  The `beq` branch at 0x21d4 targets 0x1ed8 and is always taken.
  The `beq` branch at 0x21e8 targets 0x1ed8 and is always taken.
  The `beq` branch at 0x21f0 targets 0x1ed8 and is always taken.
  The `beq` branch at 0x2208 targets 0x1f88 and is always taken.
  The `beq` branch at 0x2230 targets 0x1ed8 and is always taken.
  The `beq` branch at 0x2254 targets 0x1ed8 and is always taken.
  The `beq` branch at 0x2278 targets 0x1ed8 and is always taken.
  The return at 0x1ed8 has v0 = one of 0x0, 0x9, 0x16.
- `odsyDMAWakeup` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)` at 0x2280 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Range: 0x2280-0x2550 (720 bytes).
  It occupies 720 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xdd8, including `ld` at 0x22bc, `ld` at 0x237c.
  The `ld` at 0x22c0 loads 8 bytes from a0 (arg0 at entry) +0xde0.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x9c0, including `ld` at 0x22c4, `ld` at 0x2534.
  The `lhu` at 0x22d0 loads 2 bytes from [a0+2496]:8 +0x0.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9d0, including `lw` at 0x22f0, `lw` at 0x2380, `lw` at 0x23a4.
  The `lw` at 0x22f4 loads 4 bytes from a0 (arg0 at entry) +0x9cc.
  The `sd` at 0x2390 stores 8 bytes to a0 (arg0 at entry) +0xdd8.
  The `ld` at 0x2398 loads 8 bytes from (([a0+2512] << 0x3) + a0) +0x9d8.
  The `sd` at 0x23a0 stores 8 bytes to (([a0+2512] << 0x3) + a0) +0x9d8.
  The `sw` at 0x23c8 stores 4 bytes to a0 (arg0 at entry) +0x9d0.
  The `ld` at 0x23cc loads 8 bytes from [(([a0+2512] << 0x3) + a0)+2520]:8 +0x8.
  The `lw` at 0x23e0 loads 4 bytes from [(([a0+2512] << 0x3) + a0)+2520]:8 +0x10.
  2 such `sw` accesses store 4 bytes to [(([a0+2512] << 0x3) + a0)+2520]:8 +0x10, including `sw` at 0x23e4, `sw` at 0x2504.
  The `sd` at 0x23e8 stores 8 bytes to [(([a0+2512] << 0x3) + a0)+2520]:8 +0x8.
  The `sw` at 0x23ec stores 4 bytes to [(([a0+2512] << 0x3) + a0)+2520]:8 +0x0.
  The `ld` at 0x23f0 loads 8 bytes from a0 (arg0 at entry) +0x2f8.
  The `ld` at 0x23f4 loads 8 bytes from [(([a0+2512] << 0x3) + a0)+2520]:8 +0x40.
  The `sd` at 0x23f8 stores 8 bytes to [a0+760]:8 +0x8.
  The `ld` at 0x23fc loads 8 bytes from [(([a0+2512] << 0x3) + a0)+2520]:8 +0x20.
  The `ld` at 0x2408 loads 8 bytes from [(([a0+2512] << 0x3) + a0)+2520]:8 +0x38.
  The `sh` at 0x254c stores 2 bytes to [a0+2496]:8 +0x0.
  The `jal` at 0x229c calls ddi_mutex_lock with a0=a0+2472, a1=-0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2360 calls sv_broadcast with a0=[(([a0+2512] << 0x3) + a0)+2520]:8+24, a1=[[(([a0+2512] << 0x3) + a0)+2520]:8+56]:8, a2=?, a3=?.
  The `jal` at 0x2368 calls sv_destroy with a0=[(([a0+2512] << 0x3) + a0)+2520]:8+24, a1=?, a2=?, a3=?.
  The `jal` at 0x23dc calls kmem_free with a0=[[(([a0+2512] << 0x3) + a0)+2520]:8+8]:8, a1=[[(([a0+2512] << 0x3) + a0)+2520]:8+16], a2=?, a3=?.
  The `jal` at 0x2414 calls kmem_free with a0=[(([a0+2512] << 0x3) + a0)+2520]:8, a1=0x48, a2=?, a3=?.
  The `jal` at 0x2428 calls sv_broadcast with a0=[(([a0+2512] << 0x3) + a0)+2520]:8+24, a1=?, a2=?, a3=?.
  The `jal` at 0x2430 calls sv_destroy with a0=[(([a0+2512] << 0x3) + a0)+2520]:8+24, a1=?, a2=?, a3=?.
  The `jal` at 0x243c calls kmem_free with a0=[(([a0+2512] << 0x3) + a0)+2520]:8, a1=0x48, a2=?, a3=?.
  The `jal` at 0x244c calls sv_broadcast with a0=a0+2488, a1=?, a2=?, a3=?.
  The `jal` at 0x2470 calls mutex_unlock with a0=a0+2472, a1=?, a2=?, a3=?.
  The `jal` at 0x24a0 calls mutex_unlock with a0=a0+2472, a1=?, a2=0x2000000000000000, a3=0x7f, a4=-0x1.
  The `jal` at 0x24c4 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x24e0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x24f8 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x2514 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a4=-0x1.
  The `beq` branch at 0x22e0 targets 0x2498, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x22e8 targets 0x24a0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x2304 targets 0x2484, is taken when t1(=[a0+2508]) >= t0(=[a0+2512]) (signed), and falls through when t1(=[a0+2508]) < t0(=[a0+2512]) (signed).
  The `bne` branch at 0x2314 targets 0x2328, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x231c targets 0x232c and is always taken.
  The `beq` branch at 0x2324 targets 0x231c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x2330 targets 0x2508, is taken when a6(?) < s5(?) (unsigned), and falls through when a6(?) >= s5(?) (unsigned).
  The `blez` branch at 0x2338 targets 0x2468, is taken when s5(?) <= 0 (signed), and falls through when s5(?) > 0 (signed).
  The `beq` branch at 0x2358 targets 0x237c and is always taken.
  The `beq` branch at 0x2374 targets 0x244c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x239c targets 0x24bc, is taken when s0(=[(([a0+2512] << 0x3) + a0)+2520]:8) == 0, and falls through when s0(=[(([a0+2512] << 0x3) + a0)+2520]:8) != 0.
  The `beq` branch at 0x23d4 targets 0x24f0, is taken when a0(=[[(([a0+2512] << 0x3) + a0)+2520]:8+8]:8) == 0, and falls through when a0(=[[(([a0+2512] << 0x3) + a0)+2520]:8+8]:8) != 0.
  The `beq` branch at 0x2400 targets 0x2424, is taken when at(=[[(([a0+2512] << 0x3) + a0)+2520]:8+32]:8) == 0, and falls through when at(=[[(([a0+2512] << 0x3) + a0)+2520]:8+32]:8) != 0.
  The `bne` branch at 0x240c targets 0x2360, is taken when a1(=[[(([a0+2512] << 0x3) + a0)+2520]:8+56]:8) != 0, and falls through when a1(=[[(([a0+2512] << 0x3) + a0)+2520]:8+56]:8) == 0.
  The `beq` branch at 0x241c targets 0x2374 and is always taken.
  The `beq` branch at 0x2444 targets 0x2374 and is always taken.
  The `bne` branch at 0x2488 targets 0x2324, is taken when t1(=[a0+2508]) < s6(?) (signed), and falls through when t1(=[a0+2508]) >= s6(?) (signed).
  The `beq` branch at 0x2490 targets 0x2324 and is always taken.
  The `bnel` branch at 0x2498 targets 0x22f4, is taken when v0(=table(0x2000000000000000)) != 0, and falls through when v0(=table(0x2000000000000000)) == 0; its branch-likely delay slot `lw t0,2512(s1)` at 0x249c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x24b4 targets 0x247c and is always taken.
  The `beq` branch at 0x24e8 targets 0x23a8 and is always taken.
  The `beq` branch at 0x2500 targets 0x23e8 and is always taken.
  The `beq` branch at 0x2548 targets 0x22bc and is always taken.
  The return at 0x247c has v0 = ret(mutex_unlock).
- `odsyDMAFinish` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)` at 0x2550 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Range: 0x2550-0x265c (268 bytes).
  It occupies 268 bytes.
  2 such `lw` accesses load 4 bytes from ret(OdsyNextCSetElem) +0x0, including `lw` at 0x25bc, `lw` at 0x25dc.
  The `lw` at 0x25e8 loads 4 bytes from a0 (arg0 at entry) +0x2d8.
  2 such `lw` accesses load 4 bytes from ret(OdsyNextCSetElem) +0x10, including `lw` at 0x25f4, `lw` at 0x2658.
  The `ld` at 0x25fc loads 8 bytes from ret(OdsyNextCSetElem) +0x8.
  The `ld` at 0x2600 loads 8 bytes from ret(OdsyNextCSetElem) +0x38.
  The `ld` at 0x2610 loads 8 bytes from ret(OdsyNextCSetElem) +0x30.
  The `jal` at 0x256c calls odsyDMAWait with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x1, a3=a1+168.
  The `jal` at 0x2580 calls odsyDMAWait with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x1, a3=a1+176.
  The `jal` at 0x2598 calls ddi_mutex_lock with a0=a0+2472, a1=-0x1, a2=?, a3=?.
  The `jal` at 0x25a0 calls OdsyInitCSetCursor with a0=a1+312, a1=?, a2=?, a3=?.
  The `jal` at 0x25a8 calls OdsyNextCSetElem with a0=a1+312, a1=?, a2=?, a3=?.
  The `jal` at 0x25c4 calls kmem_free with a0=ret(OdsyNextCSetElem), a1=0x48, a2=?, a3=?.
  The `jal` at 0x25cc calls OdsyNextCSetElem with a0=a1+312, a1=?, a2=?, a3=?.
  The `jal` at 0x25f8 calls kmem_free with a0=[ret(OdsyNextCSetElem)+8]:8, a1=[ret(OdsyNextCSetElem)+16], a2=?, a3=?.
  The `jal` at 0x260c calls unuseracc with a0=[ret(OdsyNextCSetElem)+48]:8, a1=[ret(OdsyNextCSetElem)+56]:8, a2=0x110, a3=?.
  The `jal` at 0x2628 calls OdsyDestroyCSet with a0=a1+312, a1=0x0, a2=?, a3=?.
  The `jal` at 0x2634 calls mutex_unlock with a0=a0+2472, a1=?, a2=?, a3=?.
  The `jal` at 0x264c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x25b0 targets 0x261c, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x25b8 targets 0x25e0 and is always taken.
  The `beq` branch at 0x25d4 targets 0x261c, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x25e0 targets 0x2600, is taken when at(=[ret(OdsyNextCSetElem)]) == 0, and falls through when at(=[ret(OdsyNextCSetElem)]) != 0.
  The `beq` branch at 0x25ec targets 0x2648, is taken when v1(=[a0+728]) == 0, and falls through when v1(=[a0+728]) != 0.
  The `beq` branch at 0x2604 targets 0x25c0, is taken when a1(=[ret(OdsyNextCSetElem)+56]:8) == 0, and falls through when a1(=[ret(OdsyNextCSetElem)+56]:8) != 0.
  The `beq` branch at 0x2614 targets 0x25c4 and is always taken.
  The `beq` branch at 0x2654 targets 0x25f8 and is always taken.
  The return at 0x2640 has v0 = ret(mutex_unlock).
- `gfP_OdsyMMwaitXfr` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)` at 0x265c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Range: 0x265c-0x2754 (248 bytes).
  It occupies 248 bytes.
  4 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x265c, `sw` at 0x26d0, `sw` at 0x2728.
  The `ld` at 0x2664 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `lw` at 0x266c loads 4 bytes from [a0+32]:8 +0x2d8.
  The `ld` at 0x2688 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0x268c loads 8 bytes from [a0+72]:8 +0x70.
  The `jal` at 0x26a8 calls copyin with a0=a2 at entry (arg2), a1=sp-96, a2=0x8, a3=?.
  The `jal` at 0x26c0 calls odsyDMAWait with a0=?, a1=?, a2=0x1, a3=sp-96.
  The `jal` at 0x26ec calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=a3 at entry (arg3).
  The `jal` at 0x270c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=?.
  The `jal` at 0x2734 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0x2680 targets 0x26dc, is taken when at(=[[a0+32]:8+728]) != 0, and falls through when at(=[[a0+32]:8+728]) == 0.
  The `beq` branch at 0x2694 targets 0x2704, is taken when v1(=[[a0+72]:8+112]:8) == 0, and falls through when v1(=[[a0+72]:8+112]:8) != 0.
  The `bne` branch at 0x26b0 targets 0x272c, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `beq` branch at 0x26fc targets 0x2688 and is always taken.
  The `beq` branch at 0x2724 targets 0x26d4 and is always taken.
  The `beq` branch at 0x274c targets 0x26d4 and is always taken.
  The return at 0x26d4 has v0 = one of ret(odsyDMAWait), 0x1, 0xe.
- `ConstructTftchWarList` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)` at 0x2754 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Range: 0x2754-0x2a4c (760 bytes).
  It occupies 760 bytes.
  The `lw` at 0x2778 loads 4 bytes from a1 (arg1 at entry) +0x1c.
  The `lw` at 0x279c loads 4 bytes from a1 (arg1 at entry) +0x18.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x14, including `lw` at 0x27a0, `lw` at 0x2904.
  6 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xc, including `lw` at 0x27bc, `lw` at 0x28a8, `lw` at 0x28bc.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x0, including `sw` at 0x2810, `sw` at 0x2984.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0x281c, `sw` at 0x29e0.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x8, including `sd` at 0x2850, `sd` at 0x2988.
  5 such `sd` accesses store 8 bytes to ?, including `sd` at 0x2884, `sd` at 0x28c0, `sd` at 0x28c4.
  5 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x4, including `lw` at 0x2888, `lw` at 0x2898, `lw` at 0x28f8.
  7 such `sw` accesses store 4 bytes to ?, including `sw` at 0x2890, `sw` at 0x28b8, `sw` at 0x28c8.
  The `sw` at 0x2994 stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `sw` at 0x29a0 stores 4 bytes to a0 (arg0 at entry) +0x1c.
  The `sw` at 0x29ac stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sd` at 0x29b8 stores 8 bytes to a0 (arg0 at entry) +0x20.
  The `sd` at 0x29c0 stores 8 bytes to a0 (arg0 at entry) +0x28.
  The `sw` at 0x29c8 stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `jal` at 0x2830 calls kmem_alloc with a0=?, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=0xfffff.
  The `jal` at 0x2a00 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=0xfffff.
  The `jal` at 0x2a38 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a4=0x0.
  The `beq` branch at 0x2794 targets 0x2984, is taken when v0(=0x24000) >= a4 (unsigned), and falls through when v0(=0x24000) < a4 (unsigned).
  The `bne` branch at 0x27b0 targets 0x29e4, is taken when v0(=0x24000) < a0(?) (unsigned), and falls through when v0(=0x24000) >= a0(?) (unsigned).
  The `beq` branch at 0x2800 targets 0x2810, is taken when at(?) >= v1(?) (unsigned), and falls through when at(?) < v1(?) (unsigned).
  The `beq` branch at 0x2844 targets 0x2a14, is taken when v0(=ret(kmem_alloc)) == 0, and falls through when v0(=ret(kmem_alloc)) != 0.
  The `blez` branch at 0x284c targets 0x295c, is taken when s5(?) <= 0 (signed), and falls through when s5(?) > 0 (signed).
  The `bne` branch at 0x2864 targets 0x2934 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x286c targets 0x2948, is taken when t0(?) == a1(?), and falls through when t0(?) != a1(?).
  The `beq` branch at 0x28a0 targets 0x2950, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `bne` branch at 0x28d4 targets 0x291c, is taken when t0(?) != a1(?), and falls through when t0(?) == a1(?).
  The `beq` branch at 0x28ec targets 0x2904, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x2924 targets 0x295c, is taken when a1(?) >= s5(?) (signed), and falls through when a1(?) < s5(?) (signed).
  The `beq` branch at 0x292c targets 0x286c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x2940 targets 0x2874, is taken when t0(?) != a1(?), and falls through when t0(?) == a1(?).
  The `beq` branch at 0x2948 targets 0x2888 and is always taken.
  The `beq` branch at 0x2954 targets 0x28bc and is always taken.
  The `beq` branch at 0x29dc targets 0x297c and is always taken.
  The `beq` branch at 0x2a0c targets 0x297c and is always taken.
  The `beq` branch at 0x2a44 targets 0x297c and is always taken.
  The return at 0x297c has v0 = one of 0x0, 0x1.
- `ReleaseTftchWarList` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)` at 0x2a4c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Range: 0x2a4c-0x2a9c (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0x2a4c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0x2a64 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `sd` at 0x2a68 stores 8 bytes to a0 (arg0 at entry) +0x8.
  The `ld` at 0x2a88 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `jal` at 0x2a8c calls kmem_free with a0=[a0+8]:8, a1=?, a2=a2 at entry (arg2), a3=[a0].
  The `beq` branch at 0x2a5c targets 0x2a78, is taken when a3(=[a0]) >= 0x2 (signed), and falls through when a3(=[a0]) < 0x2 (signed).
  The `beq` branch at 0x2a94 targets 0x2a64 and is always taken.
  The return at 0x2a70 has v0 = one of ?, ret(kmem_free).
- `odsyInitDrawables` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  Range: 0x0-0x5c (92 bytes).
  It occupies 92 bytes.
  The `sd` at 0x1c stores 8 bytes to a0 (arg0 at entry) +0x2918.
  The `jal` at 0x10 calls odsyHashAlloc with a0=0xd, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x30 calls mrlock_init with a0=a0+10528, a1=0x1, a2=sym(.rodata), a3=-0x1, a5=sym(.rodata).
  The `jal` at 0x4c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x18 targets 0x48, is taken when v0(=ret(odsyHashAlloc)) == 0, and falls through when v0(=ret(odsyHashAlloc)) != 0.
  The `beq` branch at 0x54 targets 0x24 and is always taken.
  The return at 0x40 has v0 = ret(mrlock_init).
- `odsyFindDrawable` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)` at 0x5c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  Range: 0x5c-0xc8 (108 bytes).
  It occupies 108 bytes.
  The `ld` at 0x98 loads 8 bytes from a0 (arg0 at entry) +0x2918.
  The `jal` at 0x78 calls mraccessf with a0=a0+10528, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa0 calls odsyHashLookup with a0=[a0+10520]:8, a1=?, a2=a1 at entry (arg1), a3=?.
  The `jal` at 0xac calls mrunlock with a0=a0+10528, a1=?, a2=?, a3=?.
  The return at 0xc0 has v0 = ret(odsyHashLookup).
- `odsyCreateDrawable` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)` at 0xc8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  Range: 0xc8-0x10c (68 bytes).
  It occupies 68 bytes.
  The `sw` at 0xf8 stores 4 bytes to ret(kmem_alloc) +0x20.
  The `sw` at 0x100 stores 4 bytes to ret(kmem_alloc) +0x10.
  The `jal` at 0xd8 calls kmem_alloc with a0=0x28, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xe4 targets 0xf4, is taken when v0(=ret(kmem_alloc)) != 0, and falls through when v0(=ret(kmem_alloc)) == 0.
  The `beq` branch at 0xec targets 0x104 and is always taken.
  The return at 0x104 has v0 = one of 0x0, ret(kmem_alloc).
- `odsyDestroyDrawable` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)` at 0x10c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  Range: 0x10c-0x12c (32 bytes).
  It occupies 32 bytes.
  The `jal` at 0x118 calls kmem_free with a0=a1 at entry (arg1), a1=0x28, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x124 has v0 = ret(kmem_free).
- `odsyBindDrawable` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)` at 0x12c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  Range: 0x12c-0x3d8 (684 bytes).
  It occupies 684 bytes.
  The `ld` at 0x12c loads 8 bytes from a1 (arg1 at entry) +0x90.
  The `lw` at 0x158 loads 4 bytes from a1 (arg1 at entry) +0x190.
  The `ld` at 0x15c loads 8 bytes from [a1+144]:8 +0x80.
  The `lw` at 0x160 loads 4 bytes from [[a1+144]:8+128]:8 +0x64.
  The `sw` at 0x16c stores 4 bytes to a1 (arg1 at entry) +0x190.
  The `sw` at 0x174 stores 4 bytes to a1 (arg1 at entry) +0x194.
  2 such `lw` accesses load 4 bytes from (a1 + one of 0x164, 0x194) +0x0, including `lw` at 0x178, `lw` at 0x1c4.
  The `ld` at 0x1d0 loads 8 bytes from a0 (arg0 at entry) +0x2918.
  4 such `lw` accesses load 4 bytes from (a1 + one of 0x160, 0x190) +0x0, including `lw` at 0x1dc, `lw` at 0x20c, `lw` at 0x2b8.
  3 such `sw` accesses store 4 bytes to (a1 + one of 0x160, 0x190) +0x0, including `sw` at 0x1ec, `sw` at 0x2c0, `sw` at 0x2e4.
  The `lw` at 0x1f8 loads 4 bytes from ret(odsyHashLookup) +0x20.
  The `sw` at 0x200 stores 4 bytes to ret(odsyHashLookup) +0x20.
  The `ld` at 0x22c loads 8 bytes from ret(odsyHashLookup) +0x18.
  The `sw` at 0x238 stores 4 bytes to (a1 + one of 0x168, 0x198) +0x0.
  9 such `ld` accesses load 8 bytes from ?, including `ld` at 0x23c, `ld` at 0x254, `ld` at 0x260.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0x244, `lw` at 0x258, `lw` at 0x338.
  The `sb` at 0x248 stores 1 byte to (a1 + one of 0x18b, 0x1bb) +0x0.
  The `sh` at 0x250 stores 2 bytes to (a1 + one of 0x188, 0x1b8) +0x0.
  2 such `sw` accesses store 4 bytes to (a1 + one of 0x16c, 0x19c) +0x0, including `sw` at 0x25c, `sw` at 0x33c.
  4 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x264, `lbu` at 0x344, `lbu` at 0x388.
  2 such `sw` accesses store 4 bytes to (a1 + one of 0x170, 0x1a0) +0x0, including `sw` at 0x268, `sw` at 0x358.
  2 such `sb` accesses store 1 byte to (a1 + one of 0x18a, 0x1ba) +0x0, including `sb` at 0x26c, `sb` at 0x348.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x284, `sw` at 0x380.
  The `lw` at 0x28c loads 4 bytes from (a1 + one of 0x16c, 0x19c) +0x0.
  The `lw` at 0x2a8 loads 4 bytes from a1 (arg1 at entry) +0x44.
  The `sw` at 0x2b4 stores 4 bytes to a1 (arg1 at entry) +0x44.
  The `lw` at 0x2f4 loads 4 bytes from a1 (arg1 at entry) +0x160.
  The `ld` at 0x2f8 loads 8 bytes from [a1+144]:8 +0x78.
  The `lw` at 0x2fc loads 4 bytes from [[a1+144]:8+120]:8 +0x64.
  The `sw` at 0x308 stores 4 bytes to a1 (arg1 at entry) +0x160.
  The `sw` at 0x314 stores 4 bytes to a1 (arg1 at entry) +0x164.
  The `lw` at 0x320 loads 4 bytes from a1 (arg1 at entry) +0x40.
  The `sw` at 0x330 stores 4 bytes to a1 (arg1 at entry) +0x40.
  The `sb` at 0x38c stores 1 byte to (a1 + one of 0x18c, 0x1bc) +0x0.
  The `sb` at 0x39c stores 1 byte to (a1 + one of 0x18d, 0x1bd) +0x0.
  The `jal` at 0x1bc calls mraccessf with a0=a0+10528, a1=0x0, a2=?, a3=?, a6=0x1.
  The `jal` at 0x1cc calls odsyHashLookup with a0=[a0+10520]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x1e8 calls mrtrypromote with a0=a0+10528, a1=?, a2=?, a3=?.
  The `jal` at 0x204 calls mrunlock with a0=a0+10528, a1=?, a2=?, a3=?.
  The `jal` at 0x3a4 calls mrunlock with a0=a0+10528, a1=?, a2=?, a3=?.
  The `jal` at 0x3c4 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a4=a3 at entry (arg3).
  The `beq` branch at 0x150 targets 0x2f4, is taken when a2 == a6(=0x1), and falls through when a2 != a6(=0x1).
  The `beq` branch at 0x184 targets 0x2dc, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x1d4 targets 0x204, is taken when v0(=ret(odsyHashLookup)) == 0, and falls through when v0(=ret(odsyHashLookup)) != 0.
  The `beq` branch at 0x1f0 targets 0x3a0, is taken when v0(=ret(mrtrypromote)) == 0, and falls through when v0(=ret(mrtrypromote)) != 0.
  The `beq` branch at 0x224 targets 0x318, is taken when (at(?) & 0x4) == 0, and falls through when (at(?) & 0x4) != 0.
  The `beq` branch at 0x230 targets 0x3bc, is taken when a0(=[ret(odsyHashLookup)+24]:8) == 0, and falls through when a0(=[ret(odsyHashLookup)+24]:8) != 0.
  The `beq` branch at 0x24c targets 0x334, is taken when (a4(=a3) & 0x2) == 0, and falls through when (a4(=a3) & 0x2) != 0.
  The `bne` branch at 0x280 targets 0x270, is taken when v0(?) < 0x4 (signed), and falls through when v0(?) >= 0x4 (signed).
  The `beq` branch at 0x2a0 targets 0x320, is taken when a4(=a2) == a5(=0x1), and falls through when a4(=a2) != a5(=0x1).
  The `beq` branch at 0x2ec targets 0x2cc and is always taken.
  The `beq` branch at 0x310 targets 0x178 and is always taken.
  The `beq` branch at 0x318 targets 0x238 and is always taken.
  The `beq` branch at 0x32c targets 0x2b8 and is always taken.
  The `bne` branch at 0x37c targets 0x35c, is taken when v0(?) < 0x4 (signed), and falls through when v0(?) >= 0x4 (signed).
  The `beq` branch at 0x398 targets 0x288 and is always taken.
  The `beq` branch at 0x3b4 targets 0x2cc and is always taken.
  The `beq` branch at 0x3d0 targets 0x2cc and is always taken.
  The return at 0x2d4 has v0 = one of 0x0, 0xd, 0x16.
- `odsyUnbindDrawable` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)` at 0x3d8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  Range: 0x3d8-0x55c (388 bytes).
  It occupies 388 bytes.
  2 such `lw` accesses load 4 bytes from (a1 + one of 0x160, 0x190) +0x0, including `lw` at 0x3f4, `lw` at 0x4a0.
  2 such `lw` accesses load 4 bytes from (a1 + one of 0x164, 0x194) +0x0, including `lw` at 0x410, `lw` at 0x450.
  The `ld` at 0x45c loads 8 bytes from a0 (arg0 at entry) +0x2918.
  2 such `lw` accesses load 4 bytes from ret(odsyHashLookup) +0x20, including `lw` at 0x478, `lw` at 0x490.
  The `sw` at 0x484 stores 4 bytes to ret(odsyHashLookup) +0x20.
  The `sw` at 0x4ac stores 4 bytes to (a1 + one of 0x164, 0x194) +0x0.
  The `sw` at 0x4b8 stores 4 bytes to (a1 + one of 0x160, 0x190) +0x0.
  The `ld` at 0x4fc loads 8 bytes from ret(odsyHashLookup) +0x0.
  The `jal` at 0x444 calls mraccessf with a0=a0+10528, a1=0x0, a2=?, a3=?, a4=0xd.
  The `jal` at 0x458 calls odsyHashLookup with a0=[a0+10520]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x468 calls mrtrypromote with a0=a0+10528, a1=?, a2=?, a3=?.
  The `jal` at 0x488 calls mrunlock with a0=a0+10528, a1=?, a2=?, a3=?.
  The `jal` at 0x4e4 calls mrunlock with a0=a0+10528, a1=?, a2=?, a3=?.
  The `jal` at 0x508 calls odsyHashRemove with a0=ret(odsyHashLookup), a1=?, a2=?, a3=[ret(odsyHashLookup)]:8.
  The `jal` at 0x528 calls odsyDestroyDrawable with a0=a0 at entry (arg0), a1=ret(odsyHashLookup), a2=?, a3=?.
  The `jal` at 0x544 calls mrunlock with a0=a0+10528, a1=?, a2=?, a3=?.
  The `beq` branch at 0x3e8 targets 0x4cc, is taken when a2 == at(=0x1), and falls through when a2 != at(=0x1).
  The `beq` branch at 0x400 targets 0x518, is taken when (a0(?) & 0x2) == 0, and falls through when (a0(?) & 0x2) != 0.
  The `beq` branch at 0x408 targets 0x4a8, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x460 targets 0x4d8, is taken when v0(=ret(odsyHashLookup)) == 0, and falls through when v0(=ret(odsyHashLookup)) != 0.
  The `beq` branch at 0x470 targets 0x538, is taken when v0(=ret(mrtrypromote)) == 0, and falls through when v0(=ret(mrtrypromote)) != 0.
  The `beq` branch at 0x480 targets 0x4fc, is taken when at(=[ret(odsyHashLookup)+32]-1) == 0, and falls through when at(=[ret(odsyHashLookup)+32]-1) != 0.
  The `beq` branch at 0x498 targets 0x524, is taken when v1(=[ret(odsyHashLookup)+32]) == 0, and falls through when v1(=[ret(odsyHashLookup)+32]) != 0.
  The `beq` branch at 0x4d0 targets 0x3f4 and is always taken.
  The `beq` branch at 0x4f4 targets 0x4c4 and is always taken.
  The `beq` branch at 0x500 targets 0x488, is taken when a3(=[ret(odsyHashLookup)]:8) == 0, and falls through when a3(=[ret(odsyHashLookup)]:8) != 0.
  The `beq` branch at 0x510 targets 0x488 and is always taken.
  The `beq` branch at 0x51c targets 0x4c4 and is always taken.
  The `beq` branch at 0x530 targets 0x4a0 and is always taken.
  The `beq` branch at 0x554 targets 0x4c4 and is always taken.
  The return at 0x4c4 has v0 = one of 0x0, 0xd, 0x16.
- `gfP_OdsySetDrawBuffer` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)` at 0x55c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  Range: 0x55c-0x790 (564 bytes).
  It occupies 564 bytes.
  4 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x56c, `sw` at 0x684, `sw` at 0x758.
  The `ld` at 0x574 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0x578 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0x57c loads 8 bytes from [a0+72]:8 +0x70.
  5 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2e0, including `ld` at 0x588, `ld` at 0x628, `ld` at 0x638.
  The `sw` at 0x5b8 stores 4 bytes to [[a0+72]:8+112]:8 +0x1c8.
  6 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2d0, including `ld` at 0x5c8, `ld` at 0x60c, `ld` at 0x640.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0x5fc, `lw` at 0x6a0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x30, including `sw` at 0x608, `sw` at 0x6a8.
  2 such `sw` accesses store 4 bytes to [a0+32]:8 +0x28a8, including `sw` at 0x630, `sw` at 0x71c.
  2 such `sw` accesses store 4 bytes to [[a0+32]:8+736]:8 +0x107c, including `sw` at 0x634, `sw` at 0x724.
  The `lw` at 0x63c loads 4 bytes from [[a0+32]:8+736]:8 +0x106c.
  The `lw` at 0x6e8 loads 4 bytes from [a0+32]:8 +0x28a4.
  The `sw` at 0x70c stores 4 bytes to [a0+32]:8 +0x28a4.
  The `sw` at 0x710 stores 4 bytes to [[a0+32]:8+736]:8 +0x1074.
  The `jal` at 0x5a0 calls copyin with a0=a2 at entry (arg2), a1=sp-128, a2=0x4, a3=a3 at entry (arg3).
  The `jal` at 0x5b4 calls RRM_CheckValidFault with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x5c4 calls odsy_flow_am_i_attached with a0=[[a0+32]:8+720]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x5dc calls odsyPushBufferSelect with a0=[[a0+72]:8+112]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x5f4 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x618 calls gfx_flow_am_i_attached with a0=[[a0+32]:8+720]:8, a1=?, a2=?, a3=?, a4=-0x3.
  The `jal` at 0x648 calls gfx_flow_detach_me with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=?, a3=?, a5=[[[a0+32]:8+736]:8+4204], a6=0x1, a7=[[a0+32]:8+736]:8.
  The `jal` at 0x658 calls splx with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x698 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x6b8 calls gfx_flow_am_i_attached with a0=[[a0+32]:8+720]:8, a1=?, a2=ret(splhi), a3=?.
  The `jal` at 0x6c8 calls splx with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x6dc calls gfx_flow_attach_me with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x6ec calls gfx_flow_credit_tnum_get with a0=[[a0+32]:8+720]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x73c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x770 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x590 targets 0x728, is taken when s1(=[[a0+72]:8+112]:8) == 0, and falls through when s1(=[[a0+72]:8+112]:8) != 0.
  The `bne` branch at 0x5a8 targets 0x75c, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `bltz` branch at 0x5bc targets 0x678, is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed), and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed).
  The `beq` branch at 0x5d0 targets 0x698, is taken when v0(=ret(odsy_flow_am_i_attached)) == 0, and falls through when v0(=ret(odsy_flow_am_i_attached)) != 0.
  The `beq` branch at 0x5ec targets 0x664, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x610 targets 0x650, is taken when a0(=[[a0+32]:8+720]:8) == 0, and falls through when a0(=[[a0+32]:8+720]:8) != 0.
  The `beq` branch at 0x620 targets 0x654, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x690 targets 0x670 and is always taken.
  The `beq` branch at 0x6b0 targets 0x6c8, is taken when a0(=[[a0+32]:8+720]:8) == 0, and falls through when a0(=[[a0+32]:8+720]:8) != 0.
  The `beq` branch at 0x6c0 targets 0x6d8, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x6d0 targets 0x5dc and is always taken.
  The `beq` branch at 0x720 targets 0x6c8 and is always taken.
  The `beq` branch at 0x754 targets 0x670 and is always taken.
  The `beq` branch at 0x788 targets 0x670 and is always taken.
  The return at 0x670 has v0 = one of 0x0, 0x1, 0xe.
- `odsyPushBufferSelect` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)` at 0x790 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  Range: 0x790-0x9b0 (544 bytes).
  It occupies 544 bytes.
  The `ld` at 0x790 loads 8 bytes from a0 (arg0 at entry) +0x90.
  The `ld` at 0x794 loads 8 bytes from [a0+144]:8 +0x40.
  The `lw` at 0x798 loads 4 bytes from a0 (arg0 at entry) +0x1c8.
  The `ld` at 0x7a8 loads 8 bytes from [[a0+144]:8+64]:8 +0x20.
  2 such `ld` accesses load 8 bytes from [a0+144]:8 +0x78, including `ld` at 0x7ac, `ld` at 0x7d0.
  The `lw` at 0x7b8 loads 4 bytes from [[a0+144]:8+120]:8 +0x20.
  The `lh` at 0x7dc loads 2 bytes from [[a0+144]:8+120]:8 +0x12.
  The `sw` at 0x800 stores 4 bytes to [[[a0+144]:8+64]:8+32]:8 +0x5590.
  The `ld` at 0x804 loads 8 bytes from a0 (arg0 at entry) +0x60.
  The `lw` at 0x808 loads 4 bytes from [a0+96]:8 +0x1b24.
  The `sw` at 0x80c stores 4 bytes to [[[a0+144]:8+64]:8+32]:8 +0x454c.
  The `lw` at 0x810 loads 4 bytes from [a0+96]:8 +0x1b28.
  The `sw` at 0x814 stores 4 bytes to [[[a0+144]:8+64]:8+32]:8 +0x4550.
  The `lw` at 0x818 loads 4 bytes from [a0+96]:8 +0x1b2c.
  The `sw` at 0x81c stores 4 bytes to [[[a0+144]:8+64]:8+32]:8 +0x4554.
  The `lw` at 0x824 loads 4 bytes from [a0+96]:8 +0x1b30.
  The `sw` at 0x830 stores 4 bytes to [[[a0+144]:8+64]:8+32]:8 +0x4558.
  27 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x110000, including `sw` at 0x838, `sw` at 0x844, `sw` at 0x84c.
  The `lw` at 0x898 loads 4 bytes from [[[a0+144]:8+64]:8+32]:8 +0x5590.
  The `ld` at 0x8dc loads 8 bytes from [a0+144]:8 +0x80.
  The `lh` at 0x8e8 loads 2 bytes from [[a0+144]:8+128]:8 +0x12.
  The `lw` at 0x8f8 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `lw` at 0x914 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `sw` at 0x928 stores 4 bytes to a0 (arg0 at entry) +0x40.
  The `sw` at 0x934 stores 4 bytes to a0 (arg0 at entry) +0x44.
  2 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0x110000, including `sd` at 0x940, `sd` at 0x95c.
  The `lwu` at 0x944 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `beq` branch at 0x7a4 targets 0x7c0, is taken when a7(=[a0+144]:8) == 0, and falls through when a7(=[a0+144]:8) != 0.
  The `beq` branch at 0x7b0 targets 0x7c4, is taken when t0(=[[a0+144]:8+120]:8) == 0, and falls through when t0(=[[a0+144]:8+120]:8) != 0.
  The `beq` branch at 0x7c8 targets 0x960, is taken when a3(=[a0+144]:8) == 0, and falls through when a3(=[a0+144]:8) != 0.
  The `beq` branch at 0x7d4 targets 0x960, is taken when a7(=[[a0+144]:8+120]:8) == 0, and falls through when a7(=[[a0+144]:8+120]:8) != 0.
  The `beq` branch at 0x7e0 targets 0x960, is taken when at(=[[[a0+144]:8+120]:8+18]:2) == 0, and falls through when at(=[[[a0+144]:8+120]:8+18]:2) != 0.
  The `beq` branch at 0x7f4 targets 0x978, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x8d4 targets 0x970, is taken when a3(=[a0+144]:8) == 0, and falls through when a3(=[a0+144]:8) != 0.
  The `beq` branch at 0x8e0 targets 0x970, is taken when a1(=[[a0+144]:8+128]:8) == 0, and falls through when a1(=[[a0+144]:8+128]:8) != 0.
  The `beq` branch at 0x8ec targets 0x970, is taken when a2(=[[[a0+144]:8+128]:8+18]:2) == 0, and falls through when a2(=[[[a0+144]:8+128]:8+18]:2) != 0.
  The `beq` branch at 0x968 targets 0x7f4 and is always taken.
  The `beq` branch at 0x970 targets 0x8f4 and is always taken.
  The `beq` branch at 0x978 targets 0x998, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x980 targets 0x9a0, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x988 targets 0x800, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x990 targets 0x800 and is always taken.
  The `bne` branch at 0x998 targets 0x988, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0x9a0 targets 0x800, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x9a8 targets 0x990 and is always taken.
  The return at 0x958 has v0 = one of 0xffffffff80000000, 0x0.
- `gfP_OdsyMakeCurrent` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)` at 0x9b0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  Range: 0x9b0-0xcc0 (784 bytes).
  It occupies 784 bytes.
  5 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x9bc, `sw` at 0xb88, `sw` at 0xc58.
  The `ld` at 0x9c4 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0x9cc loads 8 bytes from [a0+72]:8 +0x70.
  The `ld` at 0x9e8 loads 8 bytes from a0 (arg0 at entry) +0x20.
  6 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2d0, including `ld` at 0xa1c, `ld` at 0xb00, `ld` at 0xb38.
  The `ld` at 0xa78 loads 8 bytes from [[a0+72]:8+112]:8 +0x168.
  The `ld` at 0xa80 loads 8 bytes from [[a0+72]:8+112]:8 +0x170.
  The `ld` at 0xa88 loads 8 bytes from [[a0+72]:8+112]:8 +0x178.
  The `ld` at 0xa90 loads 8 bytes from [[a0+72]:8+112]:8 +0x180.
  The `ld` at 0xa98 loads 8 bytes from [[a0+72]:8+112]:8 +0x188.
  The `ld` at 0xaa4 loads 8 bytes from [[a0+72]:8+112]:8 +0x198.
  The `ld` at 0xaac loads 8 bytes from [[a0+72]:8+112]:8 +0x1a0.
  The `ld` at 0xab4 loads 8 bytes from [[a0+72]:8+112]:8 +0x1a8.
  The `ld` at 0xabc loads 8 bytes from [[a0+72]:8+112]:8 +0x1b0.
  The `ld` at 0xac8 loads 8 bytes from [[a0+72]:8+112]:8 +0x1b8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0xaf0, `lw` at 0xbac.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x30, including `sw` at 0xafc, `sw` at 0xbb4.
  4 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2e0, including `ld` at 0xb1c, `ld` at 0xb2c, `ld` at 0xc08.
  2 such `sw` accesses store 4 bytes to [a0+32]:8 +0x28a8, including `sw` at 0xb24, `sw` at 0xc28.
  2 such `sw` accesses store 4 bytes to [[a0+32]:8+736]:8 +0x107c, including `sw` at 0xb28, `sw` at 0xc30.
  The `lw` at 0xb30 loads 4 bytes from [[a0+32]:8+736]:8 +0x106c.
  The `lw` at 0xb78 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `lw` at 0xbf4 loads 4 bytes from [a0+32]:8 +0x28a4.
  The `sw` at 0xc18 stores 4 bytes to [a0+32]:8 +0x28a4.
  The `sw` at 0xc1c stores 4 bytes to [[a0+32]:8+736]:8 +0x1074.
  The `jal` at 0x9f4 calls copyin with a0=a2 at entry (arg2), a1=sp-208, a2=0x50, a3=a3 at entry (arg3).
  The `jal` at 0xa04 calls RRM_CheckValidFault with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xa18 calls odsy_flow_am_i_attached with a0=[[a0+32]:8+720]:8, a1=?, a2=?, a3=?, a4=0xe.
  The `jal` at 0xa34 calls odsyUnbindDrawable with a0=[a0+32]:8, a1=[[a0+72]:8+112]:8, a2=0x1, a3=?.
  The `jal` at 0xa44 calls odsyUnbindDrawable with a0=[a0+32]:8, a1=[[a0+72]:8+112]:8, a2=0x2, a3=?.
  The `jal` at 0xa58 calls odsyBindDrawable with a0=[a0+32]:8, a1=[[a0+72]:8+112]:8, a2=0x1, a3=?.
  The `jal` at 0xa6c calls odsyBindDrawable with a0=[a0+32]:8, a1=[[a0+72]:8+112]:8, a2=0x2, a3=?.
  The `jal` at 0xad0 calls odsyClipPush with a0=[a0+32]:8, a1=[[a0+72]:8+112]:8, a2=[[[a0+72]:8+112]:8+416]:8, a3=[[[a0+72]:8+112]:8+408]:8, a4=[[[a0+72]:8+112]:8+392]:8, a5=sp-208, a6=[[[a0+72]:8+112]:8+384]:8, a7=[[[a0+72]:8+112]:8+376]:8.
  The `jal` at 0xae4 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xb0c calls gfx_flow_am_i_attached with a0=[[a0+32]:8+720]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xb3c calls gfx_flow_detach_me with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=0x1, a3=[[a0+32]:8+736]:8.
  The `jal` at 0xb4c calls splx with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xb64 calls copyout with a0=sp-208, a1=a2 at entry (arg2), a2=0x50, a3=?.
  The `jal` at 0xba4 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xbc4 calls gfx_flow_am_i_attached with a0=[[a0+32]:8+720]:8, a1=ret(splhi), a2=?, a3=?, a5=([a0+48] | 0x2).
  The `jal` at 0xbd4 calls splx with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xbe8 calls gfx_flow_attach_me with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0xbf8 calls gfx_flow_credit_tnum_get with a0=[[a0+32]:8+720]:8, a1=?, a2=?, a3=?, a6=[[a0+32]:8+10404].
  The `jal` at 0xc4c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xc80 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0xca4 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x9e4 targets 0xc34, is taken when s1(=[[a0+72]:8+112]:8) == 0, and falls through when s1(=[[a0+72]:8+112]:8) != 0.
  The `bne` branch at 0x9fc targets 0xc68, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `bltz` branch at 0xa10 targets 0xb88, is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed), and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed).
  The `beq` branch at 0xa24 targets 0xba4, is taken when v0(=ret(odsy_flow_am_i_attached)) == 0, and falls through when v0(=ret(odsy_flow_am_i_attached)) != 0.
  The `beq` branch at 0xadc targets 0xb54, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xb04 targets 0xb44, is taken when a0(=[[a0+32]:8+720]:8) == 0, and falls through when a0(=[[a0+32]:8+720]:8) != 0.
  The `beq` branch at 0xb14 targets 0xb48, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `bne` branch at 0xb70 targets 0xc9c, is taken when v0(=ret(copyout)) != 0, and falls through when v0(=ret(copyout)) == 0.
  The `beq` branch at 0xb9c targets 0xb7c and is always taken.
  The `beq` branch at 0xbbc targets 0xbd4, is taken when a0(=[[a0+32]:8+720]:8) == 0, and falls through when a0(=[[a0+32]:8+720]:8) != 0.
  The `beq` branch at 0xbcc targets 0xbe4, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0xbdc targets 0xa30 and is always taken.
  The `beq` branch at 0xc2c targets 0xbd4 and is always taken.
  The `beq` branch at 0xc60 targets 0xb7c and is always taken.
  The `beq` branch at 0xc94 targets 0xb7c and is always taken.
  The `beq` branch at 0xcb8 targets 0xb7c and is always taken.
  The return at 0xb80 has v0 = one of [a3], 0xe, 0x1.
- `gfP_OdsyPbufAssoc` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)` at 0xcc0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  Range: 0xcc0-0xf00 (576 bytes).
  It occupies 576 bytes.
  The `ld` at 0xcdc loads 8 bytes from a0 (arg0 at entry) +0x20.
  2 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2918, including `ld` at 0xd6c, `ld` at 0xdd0.
  The `sw` at 0xdac stores 4 bytes to ret(odsyCreateDrawable) +0x24.
  The `sw` at 0xdb4 stores 4 bytes to ret(odsyCreateDrawable) +0x20.
  The `sd` at 0xdc4 stores 8 bytes to ret(odsyCreateDrawable) +0x18.
  4 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0xe74, `sw` at 0xea0, `sw` at 0xed0.
  The `jal` at 0xce0 calls copyin with a0=a2 at entry (arg2), a1=sp-96, a2=0x8, a3=a3 at entry (arg3).
  The `jal` at 0xd00 calls OdsyLookupCSetId with a0=[a0+32]:8+2232, a1=0x0, a2=?, a3=?, a4=-0x1.
  The `jal` at 0xd14 calls OdsyLookupCSetId with a0=ret(OdsyLookupCSetId)+64, a1=?, a2=?, a3=?.
  The `jal` at 0xd58 calls mraccessf with a0=[a0+32]:8+10528, a1=0x0, a2=?, a3=?, a5=0xd.
  The `jal` at 0xd68 calls odsyHashLookup with a0=[[a0+32]:8+10520]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xd80 calls mrunlock with a0=[a0+32]:8+10528, a1=?, a2=?, a3=?.
  The `jal` at 0xd98 calls odsyCreateDrawable with a0=[a0+32]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xdc0 calls mrtrypromote with a0=[a0+32]:8+10528, a1=?, a2=?, a3=?.
  The `jal` at 0xdd4 calls odsyHashInsert with a0=[[a0+32]:8+10520]:8, a1=?, a2=ret(odsyCreateDrawable), a3=?.
  The `jal` at 0xde8 calls mrunlock with a0=[a0+32]:8+10528, a1=?, a2=?, a3=?.
  The `jal` at 0xe10 calls mrunlock with a0=[a0+32]:8+10528, a1=?, a2=?, a3=?.
  The `jal` at 0xe34 calls mrunlock with a0=[a0+32]:8+10528, a1=?, a2=?, a3=?.
  The `jal` at 0xe58 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0xe84 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a4=-0x1.
  The `jal` at 0xeb4 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0xee0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0xce8 targets 0xe4c, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `beq` branch at 0xcf4 targets 0xe78, is taken when v1(?) == a4(=-0x1), and falls through when v1(?) != a4(=-0x1).
  The `beq` branch at 0xd08 targets 0xea4, is taken when v0(=ret(OdsyLookupCSetId)) == 0, and falls through when v0(=ret(OdsyLookupCSetId)) != 0.
  The `beq` branch at 0xd20 targets 0xed4, is taken when v0(=ret(OdsyLookupCSetId)) == 0, and falls through when v0(=ret(OdsyLookupCSetId)) != 0.
  The `beq` branch at 0xd70 targets 0xd98, is taken when v0(=ret(odsyHashLookup)) == 0, and falls through when v0(=ret(odsyHashLookup)) != 0.
  The `beq` branch at 0xd90 targets 0xdfc and is always taken.
  The `beq` branch at 0xda0 targets 0xe04, is taken when v0(=ret(odsyCreateDrawable)) == 0, and falls through when v0(=ret(odsyCreateDrawable)) != 0.
  The `beq` branch at 0xdc8 targets 0xe28, is taken when v0(=ret(mrtrypromote)) == 0, and falls through when v0(=ret(mrtrypromote)) != 0.
  The `beq` branch at 0xe20 targets 0xdfc and is always taken.
  The `beq` branch at 0xe44 targets 0xdfc and is always taken.
  The `beq` branch at 0xe70 targets 0xdfc and is always taken.
  The `beq` branch at 0xe9c targets 0xdfc and is always taken.
  The `beq` branch at 0xecc targets 0xdfc and is always taken.
  The `beq` branch at 0xef8 targets 0xdfc and is always taken.
  The return at 0xdfc has v0 = one of 0xb, 0x0, 0xc, 0xd, 0xe, 0x16.
- `gfP_OdsyPbufDeassoc` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)` at 0xf00 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  Range: 0xf00-0x10c8 (456 bytes).
  It occupies 456 bytes.
  The `ld` at 0xf08 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0xf78 loads 8 bytes from [a0+32]:8 +0x2918.
  The `ld` at 0xf84 loads 8 bytes from ret(odsyHashLookup) +0x18.
  The `lw` at 0xf90 loads 4 bytes from [ret(odsyHashLookup)+24]:8 +0x0.
  The `lw` at 0xfb0 loads 4 bytes from ret(odsyHashLookup) +0x20.
  The `sw` at 0xfbc stores 4 bytes to ret(odsyHashLookup) +0x24.
  2 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x1074, `sw` at 0x10c4.
  The `jal` at 0xf24 calls copyin with a0=a2 at entry (arg2), a1=sp-96, a2=0x8, a3=a3 at entry (arg3).
  The `jal` at 0xf60 calls mraccessf with a0=[a0+32]:8+10528, a1=0x0, a2=?, a3=?.
  The `jal` at 0xf74 calls odsyHashLookup with a0=[[a0+32]:8+10520]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xf98 calls mrtrypromote with a0=[a0+32]:8+10528, a1=?, a2=[[ret(odsyHashLookup)+24]:8], a3=?.
  The `jal` at 0xfa8 calls odsyHashRemove with a0=ret(odsyHashLookup), a1=?, a2=?, a3=?.
  The `jal` at 0xfc8 calls mrunlock with a0=[a0+32]:8+10528, a1=?, a2=?, a3=?.
  The `jal` at 0xfdc calls copyout with a0=sp-96, a1=a2 at entry (arg2), a2=0x8, a3=?.
  The `jal` at 0x1000 calls mrunlock with a0=[a0+32]:8+10528, a1=?, a2=?, a3=?.
  The `jal` at 0x1020 calls mrunlock with a0=[a0+32]:8+10528, a1=?, a2=?, a3=?.
  The `jal` at 0x103c calls odsyDestroyDrawable with a0=[a0+32]:8, a1=ret(odsyHashLookup), a2=?, a3=?, a4=0x1, a5=[ret(odsyHashLookup)+32].
  The `jal` at 0x1058 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x108c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x10a8 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0xf2c targets 0x104c, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `beq` branch at 0xf7c targets 0x1018, is taken when v0(=ret(odsyHashLookup)) == 0, and falls through when v0(=ret(odsyHashLookup)) != 0.
  The `beq` branch at 0xf88 targets 0x1078, is taken when v0(=[ret(odsyHashLookup)+24]:8) == 0, and falls through when v0(=[ret(odsyHashLookup)+24]:8) != 0.
  The `beq` branch at 0xfa0 targets 0xff8, is taken when v0(=ret(mrtrypromote)) == 0, and falls through when v0(=ret(mrtrypromote)) != 0.
  The `beq` branch at 0xfb8 targets 0x1038, is taken when a5(=[ret(odsyHashLookup)+32]) == 0, and falls through when a5(=[ret(odsyHashLookup)+32]) != 0.
  The `bne` branch at 0xfe4 targets 0x10a0, is taken when v0(=ret(copyout)) != 0, and falls through when v0(=ret(copyout)) == 0.
  The `beq` branch at 0x1010 targets 0xff0 and is always taken.
  The `beq` branch at 0x1030 targets 0xff0 and is always taken.
  The `beq` branch at 0x1044 targets 0xfc4 and is always taken.
  The `beq` branch at 0x1070 targets 0xff0 and is always taken.
  The `beq` branch at 0x1098 targets 0xff0 and is always taken.
  The `beq` branch at 0x10c0 targets 0xff0 and is always taken.
  The return at 0xff0 has v0 = one of 0x0, 0xd, 0xe, 0x16.
- `odsy_poll_dfifo_level` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)`.
  Range: 0x0-0x9c (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0x24 loads 4 bytes from a0 (arg0 at entry) +0x106c.
  The `jal` at 0x38 calls us_delay with a0=0x5, a1=?, a2=?, a3=?.
  The `jal` at 0x88 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x30 targets 0x54, is taken when s4(=a1) >= s5(?) (unsigned), and falls through when s4(=a1) < s5(?) (unsigned).
  The `beq` branch at 0x40 targets 0x54, is taken when s5(?) == 0, and falls through when s5(?) != 0.
  The `bne` branch at 0x48 targets 0x24, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0x50 targets 0x74, is taken when s5(?) != 0, and falls through when s5(?) == 0.
  The `beq` branch at 0x94 targets 0x6c and is always taken.
  The return at 0x6c has v0 = one of 0x0, 0x1.
- `odsy_flow_am_i_attached` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)` at 0x9c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)`.
  Range: 0x9c-0xdc (64 bytes).
  It occupies 64 bytes.
  The `jal` at 0xa8 calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xb4 calls gfx_flow_am_i_attached with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xc0 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The return at 0xd4 has v0 = ret(gfx_flow_am_i_attached).
- `odsyHiwaterInterrupt` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)` at 0xdc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)`.
  Range: 0xdc-0x2ac (464 bytes).
  It occupies 464 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2e0, including `ld` at 0xdc, `ld` at 0x1f8.
  The `lw` at 0x114 loads 4 bytes from a0 (arg0 at entry) +0x68.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2d0, including `ld` at 0x144, `ld` at 0x164, `ld` at 0x170.
  The `lw` at 0x148 loads 4 bytes from a0 (arg0 at entry) +0x2d8.
  2 such `lh` accesses load 2 bytes from abs 0xffffffffffffc3a0, including `lh` at 0x194, `lh` at 0x240.
  The `lw` at 0x1a4 loads 4 bytes from ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0x18.
  The `sw` at 0x1b0 stores 4 bytes to ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0x18.
  The `sw` at 0x1b8 stores 4 bytes to a0 (arg0 at entry) +0x68.
  The `ld` at 0x1bc loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0x1c0 loads 8 bytes from [a0+72]:8 +0x20.
  The `lw` at 0x1c8 loads 4 bytes from [[a0+72]:8+32]:8 +0x50.
  The `sw` at 0x1d8 stores 4 bytes to [[a0+72]:8+32]:8 +0x50.
  The `sw` at 0x1ec stores 4 bytes to a0 (arg0 at entry) +0x78.
  The `sw` at 0x1f4 stores 4 bytes to [a0+736]:8 +0x101c.
  The `lw` at 0x200 loads 4 bytes from [a0+736]:8 +0x1064.
  The `sw` at 0x218 stores 4 bytes to [a0+736]:8 +0x1014.
  The `lw` at 0x21c loads 4 bytes from a0 (arg0 at entry) +0x2890.
  The `sw` at 0x228 stores 4 bytes to a0 (arg0 at entry) +0x2890.
  The `sw` at 0x234 stores 4 bytes to [a0+736]:8 +0x1034.
  The `lw` at 0x250 loads 4 bytes from ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0x1c.
  The `sw` at 0x25c stores 4 bytes to ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0x1c.
  The `jal` at 0x100 calls mutex_spinlock with a0=a0+22260, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x120 calls mutex_spinunlock with a0=a0+22260, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x140 calls gfx_flow_pipe_head with a0=[a0+720]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x154 calls gfx_waitf_on with a0=?, a1=?, a2=[a0+728], a3=?.
  The `jal` at 0x160 calls gfx_flow_credit_count_get with a0=[a0+720]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x16c calls gfx_flow_credit_bias_get with a0=[a0+720]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x180 calls us_delay with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x1ac calls gfx_waitf_off with a0=?, a1=?, a2=?, a3=?, a4=[([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5))+24]+1, a5=([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)), a6=([-0x3c60]:2 << 0x5).
  The `jal` at 0x1d4 calls force_resched with a0=?, a1=?, a2=?, a3=?, a7=[[[a0+72]:8+32]:8+80]+1.
  The `jal` at 0x1e8 calls odsyFifoTimer with a0=a0 at entry (arg0), a1=0x1, a2=?, a3=?.
  The `jal` at 0x230 calls mutex_spinunlock with a0=a0+22260, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x258 calls gfx_waitf_off with a0=[([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5))+28]+1, a1=([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)), a2=([-0x3c60]:2 << 0x5), a3=?.
  The `jal` at 0x26c calls mutex_spinunlock with a0=a0+22260, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x284 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=[a0+728], a3=?.
  The `jal` at 0x28c calls heart_flow_control_disable with a0=ret(gfx_flow_pipe_head), a1=?, a2=?, a3=?.
  The `jal` at 0x29c calls mutex_spinunlock with a0=a0+22260, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `beq` branch at 0x118 targets 0x140, is taken when v0(=[a0+104]) == 0, and falls through when v0(=[a0+104]) != 0.
  The `bne` branch at 0x14c targets 0x27c, is taken when a2(=[a0+728]) != 0, and falls through when a2(=[a0+728]) == 0.
  The `beq` branch at 0x178 targets 0x240, is taken when s1(=ret(gfx_flow_credit_count_get)) >= v0(=ret(gfx_flow_credit_bias_get)) (unsigned), and falls through when s1(=ret(gfx_flow_credit_count_get)) < v0(=ret(gfx_flow_credit_bias_get)) (unsigned).
  The `bgtz` branch at 0x18c targets 0x160, is taken when s2(?) > 0 (signed), and falls through when s2(?) <= 0 (signed).
  The `beq` branch at 0x210 targets 0x21c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x238 targets 0x12c and is always taken.
  The `beq` branch at 0x274 targets 0x130 and is always taken.
  The `beq` branch at 0x2a4 targets 0x130 and is always taken.
  The return at 0x138 has v0 = ret(mutex_spinunlock).
- `odsyLowaterInterrupt` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)` at 0x2ac (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)`.
  Range: 0x2ac-0x32c (128 bytes).
  It occupies 128 bytes.
  The `ld` at 0x2c0 loads 8 bytes from a0 (arg0 at entry) +0x2e0.
  The `lw` at 0x2cc loads 4 bytes from a0 (arg0 at entry) +0x2890.
  The `sw` at 0x2d8 stores 4 bytes to a0 (arg0 at entry) +0x2890.
  The `sw` at 0x2e0 stores 4 bytes to [a0+736]:8 +0x103c.
  The `ld` at 0x2e4 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0x2e8 loads 8 bytes from [a0+72]:8 +0x20.
  The `lw` at 0x2ec loads 4 bytes from [[a0+72]:8+32]:8 +0x50.
  The `sw` at 0x300 stores 4 bytes to [[a0+72]:8+32]:8 +0x50.
  The `sw` at 0x304 stores 4 bytes to a0 (arg0 at entry) +0x68.
  The `jal` at 0x2c4 calls odsyFifoTimer with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2fc calls mutex_spinlock with a0=a0+22260, a1=-0x201, a2=?, a3=?.
  The `jal` at 0x310 calls mutex_spinunlock with a0=a0+22260, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x318 calls force_resched with a0=?, a1=?, a2=?, a3=?.
  The return at 0x324 has v0 = ret(force_resched).
- `odsyFifoTimer` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)` at 0x32c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)`.
  Range: 0x32c-0x390 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0x338 loads 4 bytes from a0 (arg0 at entry) +0x56f8.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x56f8, including `sw` at 0x36c, `sw` at 0x38c.
  The `jal` at 0x358 calls timeout with a0=sym(odsyFifoTimeout), a1=a0 at entry (arg0), a2=0x5dc, a3=a0 at entry (arg0), a4=[a0+22264].
  The `jal` at 0x378 calls untimeout with a0=[a0+22264], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a0 at entry (arg0), a4=[a0+22264].
  The `beq` branch at 0x334 targets 0x370, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x33c targets 0x34c, is taken when a4(=[a0+22264]) == 0, and falls through when a4(=[a0+22264]) != 0.
  The `beq` branch at 0x368 targets 0x344 and is always taken.
  The `beq` branch at 0x388 targets 0x344 and is always taken.
  The return at 0x344 has v0 = one of ?, ret(timeout), a0.
- `odsyFifoTimeout` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)` at 0x390 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)`.
  Range: 0x390-0x3e8 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0x3a4 stores 4 bytes to a0 (arg0 at entry) +0x68.
  The `ld` at 0x3b0 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0x3b4 loads 8 bytes from [a0+72]:8 +0x20.
  The `lw` at 0x3bc loads 4 bytes from [[a0+72]:8+32]:8 +0x50.
  The `sw` at 0x3d0 stores 4 bytes to [[a0+72]:8+32]:8 +0x50.
  The `sw` at 0x3d8 stores 4 bytes to a0 (arg0 at entry) +0x56f8.
  The `jal` at 0x39c calls odsy_teardown with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3a8 calls odsyDisableInterrupts with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x3cc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The return at 0x3e0 has v0 = ret(cmn_err).
- `odsy_i2c_start` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Range: 0x0-0xd40 (3392 bytes).
  It occupies 3392 bytes.
  119 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x10, including `ld` at 0x4, `ld` at 0x3c, `ld` at 0x78.
  9 such `lw` accesses load 4 bytes from [a0+16]:8 +0x5720, including `lw` at 0xc, `lw` at 0x40, `lw` at 0xb4.
  37 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2e0, including `ld` at 0x2c, `ld` at 0x8c, `ld` at 0xdc.
  14 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0x58, `ld` at 0x70, `ld` at 0x160.
  8 such `lw` accesses load 4 bytes from [a0]:8 +0x0, including `lw` at 0x5c, `lw` at 0x164, `lw` at 0x454.
  9 such `sw` accesses store 4 bytes to [a0]:8 +0x0, including `sw` at 0x64, `sw` at 0x170, `sw` at 0x448.
  4 such `lhu` accesses load 2 bytes from a0 (arg0 at entry) +0x18, including `lhu` at 0x6c, `lhu` at 0x174, `lhu` at 0x424.
  3 such `lwu` accesses load 4 bytes from [a0]:8 +0x0, including `lwu` at 0x84, `lwu` at 0x198, `lwu` at 0x4d4.
  27 such `sd` accesses store 8 bytes to [[a0+16]:8+736]:8 +0x400000, including `sd` at 0xac, `sd` at 0x1bc, `sd` at 0x2e4.
  12 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2828, including `ld` at 0x10c, `ld` at 0x240, `ld` at 0x334.
  30 such `lw` accesses load 4 bytes from [a0+16]:8 +0x55f0, including `lw` at 0x294, `lw` at 0x2ec, `lw` at 0x34c.
  12 such `lhu` accesses load 2 bytes from [a0+16]:8 +0x2830, including `lhu` at 0x298, `lhu` at 0x2f8, `lhu` at 0x5c4.
  30 such `sw` accesses store 4 bytes to [a0+16]:8 +0x55f0, including `sw` at 0x2bc, `sw` at 0x308, `sw` at 0x354.
  18 such `lwu` accesses load 4 bytes from [a0+16]:8 +0x55f0, including `lwu` at 0x2c8, `lwu` at 0x310, `lwu` at 0x360.
  6 such `sd` accesses store 8 bytes to [a0+16]:8 +0x2828, including `sd` at 0x3a4, `sd` at 0x6d4, `sd` at 0x8b8.
  The `lw` at 0x444 loads 4 bytes from ([[a0+16]:8+736]:8 + (([a0+24]:2 + [a0+24]:2) << 0x2)) +0x220000.
  The `jal` at 0x28 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xe, a2=?, a3=?, a5=[a0+16]:8.
  The `jal` at 0xc0 calls odsy_usdelay with a0=[a0+16]:8, a1=0xa, a2=?, a3=?, a5=[a0+16]:8.
  The `jal` at 0xd8 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a5=[a0+16]:8.
  The `jal` at 0x100 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a5=[a0+16]:8.
  The `jal` at 0x118 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[[a0+16]:8+10280]:8, a5=[a0+16]:8.
  The `jal` at 0x128 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x13c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x150 calls psema with a0=[a0+16]:8+10256, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[a0+16]:8.
  The `jal` at 0x1d0 calls odsy_usdelay with a0=[a0+16]:8, a1=0xa, a2=?, a3=?, a5=[a0+16]:8.
  The `jal` at 0x1e8 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xe, a2=?, a3=?, a5=[a0+16]:8.
  The `jal` at 0x214 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=[[a0+16]:8+10280]:8, a5=[a0+16]:8.
  The `jal` at 0x224 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x234 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a5=[a0+16]:8.
  The `jal` at 0x250 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[[a0+16]:8+10280]:8, a5=[a0+16]:8.
  The `jal` at 0x260 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x274 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x288 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x3b0 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=[a0+16]:8, a6=-0x2.
  The `jal` at 0x3c0 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=[[a0+16]:8+22304], a5=[a0+16]:8.
  The `jal` at 0x3dc calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a5=[a0+16]:8.
  The `jal` at 0x3ec calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x400 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x414 calls psema with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=?, a5=[a0+16]:8.
  The `jal` at 0x520 calls odsy_i2c_xfer_done_loop with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0]:8, a6=-0x101.
  The `jal` at 0x540 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=[[a0+16]:8+10280]:8, a5=[a0+16]:8.
  The `jal` at 0x550 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x560 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=[[a0+16]:8+22304], a5=[a0+16]:8.
  The `jal` at 0x57c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[[a0+16]:8+10280]:8, a5=[a0+16]:8.
  The `jal` at 0x58c calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x5a0 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x5b4 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x6e0 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=[a0+16]:8, a6=-0x2.
  The `jal` at 0x6f0 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a5=[a0+16]:8.
  The `jal` at 0x700 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x710 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=[[a0+16]:8+736]:8+0x400000, a5=[a0+16]:8.
  The `jal` at 0x72c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[[a0+16]:8+10280]:8, a5=[a0+16]:8.
  The `jal` at 0x73c calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x750 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x764 calls psema with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=[[a0+16]:8+22304], a5=[a0+16]:8.
  The `jal` at 0x774 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=[[a0+16]:8+10280]:8, a5=[a0+16]:8.
  The `jal` at 0x784 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x798 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x8c4 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=[a0+16]:8, a6=-0x2.
  The `jal` at 0x8d8 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0xa04 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=[a0+16]:8, a6=-0x2.
  The `jal` at 0xa14 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=[[a0+16]:8+10280]:8, a5=[a0+16]:8.
  The `jal` at 0xa24 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xa34 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=[[a0+16]:8+736]:8+0x400000, a5=[a0+16]:8.
  The `jal` at 0xa50 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[[a0+16]:8+10280]:8, a5=[a0+16]:8.
  The `jal` at 0xa60 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0xa74 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0xa8c calls odsy_i2c_recv_ack with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xaa4 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0xbd0 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=[a0+16]:8, a6=-0x2.
  The `jal` at 0xbe0 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=[[a0+16]:8+10280]:8, a5=[a0+16]:8.
  The `jal` at 0xbf0 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xc04 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0xd30 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=[a0+16]:8, a6=-0x2.
  The `beq` branch at 0x1c targets 0x14c, is taken when at(=[[a0+16]:8+22304]) == 0, and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x34 targets 0x58, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x44 targets 0x100, is taken when v1(=[[a0+16]:8+22304]) == 0, and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0xb8 targets 0x3c0, is taken when a3(=[[a0+16]:8+22304]) == 0, and falls through when a3(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0xd0 targets 0x410, is taken when at(=[[a0+16]:8+22304]) == 0, and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0xe0 targets 0x160, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0xf0 targets 0x234, is taken when v1(=[[a0+16]:8+22304]) == 0, and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0xf8 targets 0x50 and is always taken.
  The `beq` branch at 0x110 targets 0x210, is taken when a3(=[[a0+16]:8+10280]:8) == 0, and falls through when a3(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x130 targets 0x284, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x144 targets 0x48 and is always taken.
  The `beq` branch at 0x158 targets 0x24 and is always taken.
  The `beq` branch at 0x1c8 targets 0x710, is taken when at(=[[a0+16]:8+22304]) == 0, and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x1e0 targets 0x760, is taken when a3(=[[a0+16]:8+22304]) == 0, and falls through when a3(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x1f4 targets 0x424, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x200 targets 0x560, is taken when a4(=[[a0+16]:8+22304]) == 0, and falls through when a4(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x208 targets 0x50 and is always taken.
  The `beq` branch at 0x22c targets 0x48 and is always taken.
  The `beq` branch at 0x244 targets 0x540, is taken when a3(=[[a0+16]:8+10280]:8) == 0, and falls through when a3(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x268 targets 0x5b0, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x27c targets 0xf4 and is always taken.
  The `beq` branch at 0x2ac targets 0x32c, is taken when 0 >= a2(?) (unsigned), and falls through when 0 < a2(?) (unsigned).
  The `beq` branch at 0x340 targets 0x380, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x3b8 targets 0x13c and is always taken.
  The `beq` branch at 0x3d0 targets 0x6f0, is taken when a4(=[[a0+16]:8+10280]:8) == 0, and falls through when a4(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x3f4 targets 0x794, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x408 targets 0xbc and is always taken.
  The `beq` branch at 0x41c targets 0xd4 and is always taken.
  The `beq` branch at 0x504 targets 0xa34, is taken when at(=[[a0+16]:8+22304]) == 0, and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x52c targets 0xa84, is taken when v0(=ret(odsy_i2c_xfer_done_loop)) == 0, and falls through when v0(=ret(odsy_i2c_xfer_done_loop)) != 0.
  The `beq` branch at 0x538 targets 0x50 and is always taken.
  The `beq` branch at 0x558 targets 0xf4 and is always taken.
  The `beq` branch at 0x570 targets 0x774, is taken when a3(=[[a0+16]:8+10280]:8) == 0, and falls through when a3(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x594 targets 0x8d4, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x5a8 targets 0x204 and is always taken.
  The `beq` branch at 0x5d8 targets 0x65c, is taken when 0 >= a2(?) (unsigned), and falls through when 0 < a2(?) (unsigned).
  The `beq` branch at 0x670 targets 0x6b0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x6e8 targets 0x274 and is always taken.
  The `beq` branch at 0x708 targets 0x408 and is always taken.
  The `beq` branch at 0x720 targets 0xa14, is taken when a3(=[[a0+16]:8+10280]:8) == 0, and falls through when a3(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x744 targets 0xaa0, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x758 targets 0x1cc and is always taken.
  The `beq` branch at 0x76c targets 0x1e4 and is always taken.
  The `beq` branch at 0x78c targets 0x204 and is always taken.
  The `beq` branch at 0x7bc targets 0x840, is taken when 0 >= a7(?) (unsigned), and falls through when 0 < a7(?) (unsigned).
  The `beq` branch at 0x854 targets 0x894, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x8cc targets 0x400 and is always taken.
  The `beq` branch at 0x8fc targets 0x980, is taken when 0 >= a2(?) (unsigned), and falls through when 0 < a2(?) (unsigned).
  The `beq` branch at 0x994 targets 0x9d4, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0xa0c targets 0x5a0 and is always taken.
  The `beq` branch at 0xa2c targets 0x758 and is always taken.
  The `beq` branch at 0xa44 targets 0xbe0, is taken when a3(=[[a0+16]:8+10280]:8) == 0, and falls through when a3(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0xa68 targets 0xc00, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0xa7c targets 0x510 and is always taken.
  The `beq` branch at 0xa98 targets 0x50 and is always taken.
  The `beq` branch at 0xac8 targets 0xb4c, is taken when 0 >= a7(?) (unsigned), and falls through when 0 < a7(?) (unsigned).
  The `beq` branch at 0xb60 targets 0xba0, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0xbd8 targets 0x750 and is always taken.
  The `beq` branch at 0xbf8 targets 0x510 and is always taken.
  The `beq` branch at 0xc28 targets 0xcac, is taken when 0 >= a7(?) (unsigned), and falls through when 0 < a7(?) (unsigned).
  The `beq` branch at 0xcc0 targets 0xd00, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0xd38 targets 0xa74 and is always taken.
  The return at 0x50 has v0 = one of 0x3, ret(odsy_i2c_xfer_done_loop), ret(odsy_i2c_recv_ack).
- `odsy_i2c_stop` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)` at 0xd40 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Range: 0xd40-0x15b4 (2164 bytes).
  It occupies 2164 bytes.
  77 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x10, including `ld` at 0xd40, `ld` at 0xd74, `ld` at 0xdc4.
  6 such `lw` accesses load 4 bytes from [a0+16]:8 +0x5720, including `lw` at 0xd44, `lw` at 0xd78, `lw` at 0xe00.
  24 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2e0, including `ld` at 0xd64, `ld` at 0xdd8, `ld` at 0xe54.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0xd90, `ld` at 0xda0, `ld` at 0xdbc.
  2 such `lw` accesses load 4 bytes from [a0]:8 +0x0, including `lw` at 0xd94, `lw` at 0xda4.
  3 such `sw` accesses store 4 bytes to [a0]:8 +0x0, including `sw` at 0xd9c, `sw` at 0xdac, `sw` at 0xe8c.
  The `lhu` at 0xdb4 loads 2 bytes from a0 (arg0 at entry) +0x18.
  The `lwu` at 0xdd0 loads 4 bytes from [a0]:8 +0x0.
  17 such `sd` accesses store 8 bytes to [[a0+16]:8+736]:8 +0x400000, including `sd` at 0xdf8, `sd` at 0xf4c, `sd` at 0xf8c.
  8 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2828, including `ld` at 0xe34, `ld` at 0xf9c, `ld` at 0x1034.
  20 such `lw` accesses load 4 bytes from [a0+16]:8 +0x55f0, including `lw` at 0xefc, `lw` at 0xf54, `lw` at 0xfb4.
  8 such `lhu` accesses load 2 bytes from [a0+16]:8 +0x2830, including `lhu` at 0xf00, `lhu` at 0xf60, `lhu` at 0x1198.
  20 such `sw` accesses store 4 bytes to [a0+16]:8 +0x55f0, including `sw` at 0xf24, `sw` at 0xf70, `sw` at 0xfbc.
  12 such `lwu` accesses load 4 bytes from [a0+16]:8 +0x55f0, including `lwu` at 0xf30, `lwu` at 0xf78, `lwu` at 0xfc8.
  4 such `sd` accesses store 8 bytes to [a0+16]:8 +0x2828, including `sd` at 0x100c, `sd` at 0x12a8, `sd` at 0x13e8.
  The `lhu` at 0x1078 loads 2 bytes from a0 (arg0 at entry) +0x1a.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8, including `ld` at 0x1094, `ld` at 0x10b0.
  The `lw` at 0x1098 loads 4 bytes from ([[a0+16]:8+736]:8 + (([a0+26]:2 + [a0+26]:2) << 0x2)) +0x220000.
  The `sw` at 0x109c stores 4 bytes to [a0+8]:8 +0x0.
  The `lw` at 0x10b4 loads 4 bytes from [a0+8]:8 +0x0.
  The `jal` at 0xd60 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a4=[a0+16]:8.
  The `jal` at 0xe0c calls odsy_i2c_xfer_done_loop with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xe28 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=[a0+16]:8.
  The `jal` at 0xe40 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[[a0+16]:8+10280]:8, a4=[a0+16]:8.
  The `jal` at 0xe50 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0xe64 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0xe78 calls psema with a0=[a0+16]:8+10256, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[a0+16]:8.
  The `jal` at 0xea0 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a4=[a0+16]:8.
  The `jal` at 0xecc calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=[[a0+16]:8+10280]:8, a4=[a0+16]:8.
  The `jal` at 0xedc calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xef0 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x1018 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=-0x2.
  The `jal` at 0x1028 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=[[a0+16]:8+22304], a3=?, a4=[a0+16]:8.
  The `jal` at 0x1044 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[a0+16]:8.
  The `jal` at 0x1054 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x1068 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x10d8 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=[a0+16]:8.
  The `jal` at 0x10f4 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=[[a0+16]:8+10280]:8, a3=?, a4=[a0+16]:8.
  The `jal` at 0x1104 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x1118 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x112c calls psema with a0=[a0+16]:8+10256, a1=0x19, a2=[[a0+16]:8+22304], a3=[a0]:8, a4=[a0+16]:8.
  The `jal` at 0x113c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[a0+16]:8.
  The `jal` at 0x114c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x1164 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=[[a0+16]:8+10280]:8, a3=?, a4=[a0+16]:8.
  The `jal` at 0x1174 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x1188 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x12b4 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=-0x2.
  The `jal` at 0x12c8 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x13f4 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=-0x2.
  The `jal` at 0x1404 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=[[a0+16]:8+22304], a3=[([[a0+16]:8+736]:8 + (([a0+26]:2 + [a0+26]:2) << 0x2))+2228224], a4=[a0+16]:8.
  The `jal` at 0x1420 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[a0+16]:8.
  The `jal` at 0x1430 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x1444 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x1454 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[a0+16]:8.
  The `jal` at 0x1464 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x1478 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x15a4 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=-0x2.
  The `beq` branch at 0xd54 targets 0xe74, is taken when at(=[[a0+16]:8+22304]) == 0, and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0xd6c targets 0xd90, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0xd7c targets 0xe28, is taken when v1(=[[a0+16]:8+22304]) == 0, and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0xe04 targets 0x1028, is taken when a2(=[[a0+16]:8+22304]) == 0, and falls through when a2(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0xe18 targets 0xe88, is taken when v0(=ret(odsy_i2c_xfer_done_loop)) == 0, and falls through when v0(=ret(odsy_i2c_xfer_done_loop)) != 0.
  The `beq` branch at 0xe20 targets 0xd84 and is always taken.
  The `beq` branch at 0xe38 targets 0xec8, is taken when a3(=[[a0+16]:8+10280]:8) == 0, and falls through when a3(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0xe58 targets 0xeec, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0xe6c targets 0xd80 and is always taken.
  The `beq` branch at 0xe80 targets 0xd5c and is always taken.
  The `beq` branch at 0xe98 targets 0x1128, is taken when a2(=[[a0+16]:8+22304]) == 0, and falls through when a2(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0xeac targets 0x1078, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0xeb8 targets 0x10d8, is taken when at(=[[a0+16]:8+22304]) == 0, and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0xec0 targets 0xd84 and is always taken.
  The `beq` branch at 0xee4 targets 0xd80 and is always taken.
  The `beq` branch at 0xf14 targets 0xf94, is taken when 0 >= a0(?) (unsigned), and falls through when 0 < a0(?) (unsigned).
  The `beq` branch at 0xfa8 targets 0xfe8, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x1020 targets 0xe64 and is always taken.
  The `beq` branch at 0x1038 targets 0x113c, is taken when at(=[[a0+16]:8+10280]:8) == 0, and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x105c targets 0x12c4, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x1070 targets 0xe0c and is always taken.
  The `beq` branch at 0x10a8 targets 0x1404, is taken when a2(=[[a0+16]:8+22304]) == 0, and falls through when a2(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x10c8 targets 0x115c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x10d0 targets 0xd84 and is always taken.
  The `beq` branch at 0x10e8 targets 0x1164, is taken when a2(=[[a0+16]:8+10280]:8) == 0, and falls through when a2(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x110c targets 0x1184, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x1120 targets 0xec0 and is always taken.
  The `beq` branch at 0x1134 targets 0xe9c and is always taken.
  The `beq` branch at 0x1154 targets 0xe0c and is always taken.
  The `beq` branch at 0x115c targets 0xd84 and is always taken.
  The `beq` branch at 0x117c targets 0xec0 and is always taken.
  The `beq` branch at 0x11ac targets 0x1230, is taken when 0 >= a0(?) (unsigned), and falls through when 0 < a0(?) (unsigned).
  The `beq` branch at 0x1244 targets 0x1284, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x12bc targets 0x1118 and is always taken.
  The `beq` branch at 0x12ec targets 0x1370, is taken when 0 >= a0(?) (unsigned), and falls through when 0 < a0(?) (unsigned).
  The `beq` branch at 0x1384 targets 0x13c4, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x13fc targets 0x1068 and is always taken.
  The `beq` branch at 0x1414 targets 0x1454, is taken when at(=[[a0+16]:8+10280]:8) == 0, and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x1438 targets 0x1474, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x144c targets 0x10b0 and is always taken.
  The `beq` branch at 0x146c targets 0x10b0 and is always taken.
  The `beq` branch at 0x149c targets 0x1520, is taken when 0 >= a0(?) (unsigned), and falls through when 0 < a0(?) (unsigned).
  The `beq` branch at 0x1534 targets 0x1574, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x15ac targets 0x1444 and is always taken.
  The return at 0xd88 has v0 = one of 0x3, ret(odsy_i2c_xfer_done_loop), 0x1, 0x0.
- `odsy_i2c_sendbyte` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)` at 0x15b4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Range: 0x15b4-0x1aac (1272 bytes).
  It occupies 1272 bytes.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0x15f4, `ld` at 0x1610, `ld` at 0x1620.
  4 such `lw` accesses load 4 bytes from [a0]:8 +0x0, including `lw` at 0x1600, `lw` at 0x1614, `lw` at 0x1624.
  5 such `sw` accesses store 4 bytes to [a0]:8 +0x0, including `sw` at 0x160c, `sw` at 0x161c, `sw` at 0x163c.
  38 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x10, including `ld` at 0x1640, `ld` at 0x1658, `ld` at 0x16cc.
  3 such `lw` accesses load 4 bytes from [a0+16]:8 +0x5720, including `lw` at 0x1644, `lw` at 0x166c, `lw` at 0x16d0.
  12 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2e0, including `ld` at 0x1654, `ld` at 0x16b0, `ld` at 0x1728.
  The `lhu` at 0x168c loads 2 bytes from a0 (arg0 at entry) +0x18.
  The `lwu` at 0x169c loads 4 bytes from [a0]:8 +0x0.
  9 such `sd` accesses store 8 bytes to [[a0+16]:8+736]:8 +0x400000, including `sd` at 0x16c8, `sd` at 0x1820, `sd` at 0x1860.
  4 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2828, including `ld` at 0x1708, `ld` at 0x1870, `ld` at 0x1908.
  10 such `lw` accesses load 4 bytes from [a0+16]:8 +0x55f0, including `lw` at 0x17d0, `lw` at 0x1828, `lw` at 0x1888.
  4 such `lhu` accesses load 2 bytes from [a0+16]:8 +0x2830, including `lhu` at 0x17d4, `lhu` at 0x1834, `lhu` at 0x1980.
  10 such `sw` accesses store 4 bytes to [a0+16]:8 +0x55f0, including `sw` at 0x17f8, `sw` at 0x1844, `sw` at 0x1890.
  6 such `lwu` accesses load 4 bytes from [a0+16]:8 +0x55f0, including `lwu` at 0x1804, `lwu` at 0x184c, `lwu` at 0x189c.
  2 such `sd` accesses store 8 bytes to [a0+16]:8 +0x2828, including `sd` at 0x18e0, `sd` at 0x1a90.
  The `jal` at 0x15cc calls odsy_i2c_busy_high_loop with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1650 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a6=[a0+16]:8.
  The `jal` at 0x16dc calls odsy_i2c_xfer_done_loop with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x16fc calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=[[a0+16]:8+22304], a6=[a0+16]:8.
  The `jal` at 0x1714 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8.
  The `jal` at 0x1724 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x1738 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x174c calls psema with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=?, a4=[[a0+16]:8+22304], a6=[a0+16]:8.
  The `jal` at 0x1770 calls odsy_i2c_recv_ack with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1788 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8.
  The `jal` at 0x1798 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x17c4 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x18ec calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=one of 0x400000, 0x7960400100000000, a6=[a0+16]:8, a7=-0x2.
  The `jal` at 0x18fc calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=[[a0+16]:8+736]:8+0x400000, a6=[a0+16]:8.
  The `jal` at 0x1918 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8.
  The `jal` at 0x1928 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x193c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x194c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8.
  The `jal` at 0x195c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x1970 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x1a9c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a6=[a0+16]:8, a7=-0x2.
  The `beq` branch at 0x15d8 targets 0x15f0, is taken when v0(=ret(odsy_i2c_busy_high_loop)) == 0, and falls through when v0(=ret(odsy_i2c_busy_high_loop)) != 0.
  The `beq` branch at 0x15fc targets 0x1680, is taken when v0(=0x1) == at(=a3), and falls through when v0(=0x1) != at(=a3).
  The `beq` branch at 0x1648 targets 0x1748, is taken when a4(=[[a0+16]:8+22304]) == 0, and falls through when a4(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x1664 targets 0x168c, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x1670 targets 0x16fc, is taken when a4(=[[a0+16]:8+22304]) == 0, and falls through when a4(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x1678 targets 0x15e8 and is always taken.
  The `beq` branch at 0x1684 targets 0x1610 and is always taken.
  The `beq` branch at 0x16d4 targets 0x18fc, is taken when at(=[[a0+16]:8+22304]) == 0, and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x16e8 targets 0x175c, is taken when v0(=ret(odsy_i2c_xfer_done_loop)) == 0, and falls through when v0(=ret(odsy_i2c_xfer_done_loop)) != 0.
  The `beq` branch at 0x16f4 targets 0x15e8 and is always taken.
  The `beq` branch at 0x170c targets 0x1784, is taken when a4(=[[a0+16]:8+10280]:8) == 0, and falls through when a4(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x172c targets 0x17c0, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x1740 targets 0x1674 and is always taken.
  The `beq` branch at 0x1754 targets 0x164c and is always taken.
  The `beq` branch at 0x1764 targets 0x17a8, is taken when a4(=0x1) == a5(=a3), and falls through when a4(=0x1) != a5(=a3).
  The `beq` branch at 0x177c targets 0x15e8 and is always taken.
  The `beq` branch at 0x17a0 targets 0x1674 and is always taken.
  The `beq` branch at 0x17b8 targets 0x1768 and is always taken.
  The `beq` branch at 0x17e8 targets 0x1868, is taken when 0 >= a0(?) (unsigned), and falls through when 0 < a0(?) (unsigned).
  The `beq` branch at 0x187c targets 0x18bc, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x18f4 targets 0x1738 and is always taken.
  The `beq` branch at 0x190c targets 0x194c, is taken when a4(=[[a0+16]:8+10280]:8) == 0, and falls through when a4(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x1930 targets 0x196c, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x1944 targets 0x16dc and is always taken.
  The `beq` branch at 0x1964 targets 0x16dc and is always taken.
  The `beq` branch at 0x1994 targets 0x1a18, is taken when 0 >= a0(?) (unsigned), and falls through when 0 < a0(?) (unsigned).
  The `beq` branch at 0x1a2c targets 0x1a6c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x1aa4 targets 0x193c and is always taken.
  The return at 0x15e8 has v0 = one of ret(odsy_i2c_busy_high_loop), 0x3, ret(odsy_i2c_xfer_done_loop), ret(odsy_i2c_recv_ack).
- `odsy_i2c_short_recvbyte` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)` at 0x1aac (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Range: 0x1aac-0x1b14 (104 bytes).
  It occupies 104 bytes.
  The `ld` at 0x1adc loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x1ae4 loads 4 bytes from [a0+8]:8 +0x0.
  The `sb` at 0x1b08 stores 1 byte to a1 (arg1 at entry) +0x0.
  The `jal` at 0x1ab8 calls odsy_i2c_xfer_done_loop with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1ac4 targets 0x1ad8, is taken when v0(=ret(odsy_i2c_xfer_done_loop)) == 0, and falls through when v0(=ret(odsy_i2c_xfer_done_loop)) != 0.
  The `beq` branch at 0x1af4 targets 0x1b0c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x1b04 targets 0x1ad0 and is always taken.
  The `beq` branch at 0x1b0c targets 0x1ad0 and is always taken.
  The return at 0x1ad0 has v0 = one of ret(odsy_i2c_xfer_done_loop), 0x0, 0x1.
- `odsy_i2c_long_recvbyte` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)` at 0x1b14 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Range: 0x1b14-0x27ec (3288 bytes).
  It occupies 3288 bytes.
  114 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x10, including `ld` at 0x1b1c, `ld` at 0x1b48, `ld` at 0x1b94.
  9 such `lw` accesses load 4 bytes from [a0+16]:8 +0x5720, including `lw` at 0x1b24, `lw` at 0x1b58, `lw` at 0x1b98.
  36 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2e0, including `ld` at 0x1b44, `ld` at 0x1b74, `ld` at 0x1c00.
  3 such `lhu` accesses load 2 bytes from a0 (arg0 at entry) +0x18, including `lhu` at 0x1b70, `lhu` at 0x1c90, `lhu` at 0x1f6c.
  11 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0x1b88, `ld` at 0x1ba4, `ld` at 0x1bb8.
  The `lw` at 0x1b8c loads 4 bytes from ([[a0+16]:8+736]:8 + (([a0+24]:2 + [a0+24]:2) << 0x2)) +0x220000.
  9 such `sw` accesses store 4 bytes to [a0]:8 +0x0, including `sw` at 0x1b90, `sw` at 0x1bb4, `sw` at 0x1bc8.
  6 such `lw` accesses load 4 bytes from [a0]:8 +0x0, including `lw` at 0x1ba8, `lw` at 0x1bbc, `lw` at 0x1be0.
  12 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2828, including `ld` at 0x1c30, `ld` at 0x1d7c, `ld` at 0x1e70.
  2 such `lwu` accesses load 4 bytes from [a0]:8 +0x0, including `lwu` at 0x1cac, `lwu` at 0x1f8c.
  26 such `sd` accesses store 8 bytes to [[a0+16]:8+736]:8 +0x400000, including `sd` at 0x1cd4, `sd` at 0x1e20, `sd` at 0x1e60.
  30 such `lw` accesses load 4 bytes from [a0+16]:8 +0x55f0, including `lw` at 0x1dd0, `lw` at 0x1e28, `lw` at 0x1e88.
  12 such `lhu` accesses load 2 bytes from [a0+16]:8 +0x2830, including `lhu` at 0x1dd4, `lhu` at 0x1e34, `lhu` at 0x2064.
  30 such `sw` accesses store 4 bytes to [a0+16]:8 +0x55f0, including `sw` at 0x1df8, `sw` at 0x1e44, `sw` at 0x1e90.
  18 such `lwu` accesses load 4 bytes from [a0+16]:8 +0x55f0, including `lwu` at 0x1e04, `lwu` at 0x1e4c, `lwu` at 0x1e9c.
  6 such `sd` accesses store 8 bytes to [a0+16]:8 +0x2828, including `sd` at 0x1ee0, `sd` at 0x2170, `sd` at 0x2380.
  The `jal` at 0x1b40 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a6=[a0+16]:8.
  The `jal` at 0x1bfc calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a6=[a0+16]:8.
  The `jal` at 0x1c24 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a5=0x220000, a6=[a0+16]:8.
  The `jal` at 0x1c3c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a6=[a0+16]:8.
  The `jal` at 0x1c4c calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x1c60 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x1c74 calls psema with a0=[a0+16]:8+10256, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=[a0+16]:8.
  The `jal` at 0x1ce8 calls odsy_i2c_short_recvbyte with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=?, a3=?.
  The `jal` at 0x1d24 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a6=[a0+16]:8.
  The `jal` at 0x1d50 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a6=[a0+16]:8.
  The `jal` at 0x1d60 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x1d70 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a5=[[a0+16]:8+22304], a6=[a0+16]:8.
  The `jal` at 0x1d8c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8.
  The `jal` at 0x1d9c calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x1db0 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x1dc4 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x1eec calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=one of 0x400000, 0x7960400100000000, a6=[a0+16]:8, a7=-0x2.
  The `jal` at 0x1efc calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=[[a0+16]:8+22304], a5=[([[a0+16]:8+736]:8 + (([a0+24]:2 + [a0+24]:2) << 0x2))+2228224], a6=[a0+16]:8.
  The `jal` at 0x1f18 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8.
  The `jal` at 0x1f28 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x1f3c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x1f50 calls psema with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=?, a4=[[a0+16]:8+22304], a5=-0x101, a6=[a0+16]:8.
  The `jal` at 0x1fe0 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8.
  The `jal` at 0x1ff0 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x2000 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=[[a0+16]:8+22304], a6=[a0+16]:8.
  The `jal` at 0x201c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8.
  The `jal` at 0x202c calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x2040 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x2054 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x217c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=one of 0x400000, 0x7960400100000000, a6=[a0+16]:8, a7=-0x2.
  The `jal` at 0x218c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8.
  The `jal` at 0x219c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x21dc calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=0x400000, a5=[[a0+16]:8+22304], a6=[a0+16]:8.
  The `jal` at 0x21f8 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a5=[[a0+16]:8+10280]:8, a6=[a0+16]:8.
  The `jal` at 0x2208 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x221c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x2230 calls psema with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=?, a5=a2 at entry (arg2), a6=[a0+16]:8.
  The `jal` at 0x2240 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8.
  The `jal` at 0x2250 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x2264 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x238c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a6=[a0+16]:8, a7=-0x2.
  The `jal` at 0x23a0 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x24cc calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a6=[a0+16]:8, a7=-0x2.
  The `jal` at 0x24dc calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a5=[[a0+16]:8+10280]:8, a6=[a0+16]:8.
  The `jal` at 0x24ec calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x24fc calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=a2 at entry (arg2), a6=[a0+16]:8.
  The `jal` at 0x2518 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8.
  The `jal` at 0x2528 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x253c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x2550 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x267c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a6=[a0+16]:8, a7=-0x2.
  The `jal` at 0x268c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8.
  The `jal` at 0x269c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x26b0 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x27dc calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a6=[a0+16]:8, a7=-0x2.
  The `beq` branch at 0x1b34 targets 0x1c70, is taken when at(=[[a0+16]:8+22304]) == 0, and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x1b50 targets 0x1b70, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x1b5c targets 0x1c24, is taken when v1(=[[a0+16]:8+22304]) == 0, and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x1b9c targets 0x1efc, is taken when a4(=[[a0+16]:8+22304]) == 0, and falls through when a4(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x1bdc targets 0x1c84, is taken when v0(=0x1) == v1(=a1), and falls through when v0(=0x1) != v1(=a1).
  The `beq` branch at 0x1bf4 targets 0x1f4c, is taken when a4(=[[a0+16]:8+22304]) == 0, and falls through when a4(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x1c08 targets 0x1c90, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x1c14 targets 0x1d70, is taken when a5(=[[a0+16]:8+22304]) == 0, and falls through when a5(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x1c1c targets 0x1b68 and is always taken.
  The `beq` branch at 0x1c34 targets 0x1d4c, is taken when at(=[[a0+16]:8+10280]:8) == 0, and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x1c54 targets 0x1dc0, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x1c68 targets 0x1b60 and is always taken.
  The `beq` branch at 0x1c7c targets 0x1b3c and is always taken.
  The `beq` branch at 0x1c88 targets 0x1bec and is always taken.
  The `beq` branch at 0x1ce0 targets 0x21dc, is taken when a5(=[[a0+16]:8+22304]) == 0, and falls through when a5(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x1cfc targets 0x1f60, is taken when a4(=0x1) == a5(=a2), and falls through when a4(=0x1) != a5(=a2).
  The `beq` branch at 0x1d18 targets 0x222c, is taken when v1(=[[a0+16]:8+22304]) == 0, and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x1d30 targets 0x1f6c, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x1d3c targets 0x2000, is taken when a4(=[[a0+16]:8+22304]) == 0, and falls through when a4(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x1d44 targets 0x1b68 and is always taken.
  The `beq` branch at 0x1d68 targets 0x1b60 and is always taken.
  The `beq` branch at 0x1d80 targets 0x1fe0, is taken when a4(=[[a0+16]:8+10280]:8) == 0, and falls through when a4(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x1da4 targets 0x2050, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x1db8 targets 0x1c18 and is always taken.
  The `beq` branch at 0x1de8 targets 0x1e68, is taken when 0 >= a2(?) (unsigned), and falls through when 0 < a2(?) (unsigned).
  The `beq` branch at 0x1e7c targets 0x1ebc, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x1ef4 targets 0x1c60 and is always taken.
  The `beq` branch at 0x1f0c targets 0x218c, is taken when a4(=[[a0+16]:8+10280]:8) == 0, and falls through when a4(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x1f30 targets 0x2260, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x1f44 targets 0x1ba8 and is always taken.
  The `beq` branch at 0x1f58 targets 0x1bf8 and is always taken.
  The `beq` branch at 0x1f64 targets 0x1d10 and is always taken.
  The `beq` branch at 0x1fbc targets 0x24fc, is taken when a4(=[[a0+16]:8+22304]) == 0, and falls through when a4(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x1fc8 targets 0x21ac, is taken when v1(=0x1) == a4(=a2), and falls through when v1(=0x1) != a4(=a2).
  The `beq` branch at 0x1fd0 targets 0x21c4, is taken when a5(=a1) == 0, and falls through when a5(=a1) != 0.
  The `beq` branch at 0x1fd8 targets 0x1b68 and is always taken.
  The `beq` branch at 0x1ff8 targets 0x1c18 and is always taken.
  The `beq` branch at 0x2010 targets 0x2240, is taken when a4(=[[a0+16]:8+10280]:8) == 0, and falls through when a4(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x2034 targets 0x239c, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x2048 targets 0x1d40 and is always taken.
  The `beq` branch at 0x2078 targets 0x20f8, is taken when 0 >= a2(?) (unsigned), and falls through when 0 < a2(?) (unsigned).
  The `beq` branch at 0x210c targets 0x214c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x2184 targets 0x1db0 and is always taken.
  The `beq` branch at 0x21a4 targets 0x1ba8 and is always taken.
  The `bne` branch at 0x21bc targets 0x1fd4, is taken when a4(=a1) != 0, and falls through when a4(=a1) == 0.
  The `beq` branch at 0x21d4 targets 0x1fd4 and is always taken.
  The `beq` branch at 0x21ec targets 0x24dc, is taken when a5(=[[a0+16]:8+10280]:8) == 0, and falls through when a5(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x2210 targets 0x254c, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x2224 targets 0x1ce8 and is always taken.
  The `beq` branch at 0x2238 targets 0x1d20 and is always taken.
  The `beq` branch at 0x2258 targets 0x1d40 and is always taken.
  The `beq` branch at 0x2288 targets 0x2308, is taken when 0 >= t0(?) (unsigned), and falls through when 0 < t0(?) (unsigned).
  The `beq` branch at 0x231c targets 0x235c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x2394 targets 0x1f3c and is always taken.
  The `beq` branch at 0x23c4 targets 0x2448, is taken when 0 >= a2(?) (unsigned), and falls through when 0 < a2(?) (unsigned).
  The `beq` branch at 0x245c targets 0x249c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x24d4 targets 0x2040 and is always taken.
  The `beq` branch at 0x24f4 targets 0x1ce8 and is always taken.
  The `beq` branch at 0x250c targets 0x268c, is taken when a4(=[[a0+16]:8+10280]:8) == 0, and falls through when a4(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x2530 targets 0x26ac, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x2544 targets 0x1fc0 and is always taken.
  The `beq` branch at 0x2574 targets 0x25f8, is taken when 0 >= t0(?) (unsigned), and falls through when 0 < t0(?) (unsigned).
  The `beq` branch at 0x260c targets 0x264c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x2684 targets 0x221c and is always taken.
  The `beq` branch at 0x26a4 targets 0x1fc0 and is always taken.
  The `beq` branch at 0x26d4 targets 0x2758, is taken when 0 >= a3(?) (unsigned), and falls through when 0 < a3(?) (unsigned).
  The `beq` branch at 0x276c targets 0x27ac, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x27e4 targets 0x253c and is always taken.
  The return at 0x1b68 has v0 = one of 0x3, ret(odsy_i2c_short_recvbyte).
- `odsy_i2c_becomeSlaveRecv` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)` at 0x27ec (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Range: 0x27ec-0x3130 (2372 bytes).
  It occupies 2372 bytes.
  76 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x10, including `ld` at 0x2828, `ld` at 0x2840, `ld` at 0x2888.
  6 such `lw` accesses load 4 bytes from [a0+16]:8 +0x5720, including `lw` at 0x282c, `lw` at 0x2850, `lw` at 0x288c.
  24 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2e0, including `ld` at 0x283c, `ld` at 0x2868, `ld` at 0x2924.
  2 such `lhu` accesses load 2 bytes from a0 (arg0 at entry) +0x18, including `lhu` at 0x2864, `lhu` at 0x29c0.
  11 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0x287c, `ld` at 0x2898, `ld` at 0x28a8.
  The `lw` at 0x2880 loads 4 bytes from ([[a0+16]:8+736]:8 + (([a0+24]:2 + [a0+24]:2) << 0x2)) +0x220000.
  8 such `sw` accesses store 4 bytes to [a0]:8 +0x0, including `sw` at 0x2884, `sw` at 0x28a4, `sw` at 0x28b8.
  7 such `lw` accesses load 4 bytes from [a0]:8 +0x0, including `lw` at 0x289c, `lw` at 0x28ac, `lw` at 0x28c0.
  8 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2828, including `ld` at 0x2954, `ld` at 0x2a7c, `ld` at 0x2b70.
  The `lwu` at 0x29dc loads 4 bytes from [a0]:8 +0x0.
  17 such `sd` accesses store 8 bytes to [[a0+16]:8+736]:8 +0x400000, including `sd` at 0x2a04, `sd` at 0x2b20, `sd` at 0x2b60.
  20 such `lw` accesses load 4 bytes from [a0+16]:8 +0x55f0, including `lw` at 0x2ad0, `lw` at 0x2b28, `lw` at 0x2b88.
  8 such `lhu` accesses load 2 bytes from [a0+16]:8 +0x2830, including `lhu` at 0x2ad4, `lhu` at 0x2b34, `lhu` at 0x2cd4.
  20 such `sw` accesses store 4 bytes to [a0+16]:8 +0x55f0, including `sw` at 0x2af8, `sw` at 0x2b44, `sw` at 0x2b90.
  12 such `lwu` accesses load 4 bytes from [a0+16]:8 +0x55f0, including `lwu` at 0x2b04, `lwu` at 0x2b4c, `lwu` at 0x2b9c.
  4 such `sd` accesses store 8 bytes to [a0+16]:8 +0x2828, including `sd` at 0x2be0, `sd` at 0x2de0, `sd` at 0x2f8c.
  The `ld` at 0x2c60 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x2c64 loads 4 bytes from [a0+8]:8 +0x0.
  The `sb` at 0x2fac stores 1 byte to a3 (arg3 at entry) +0x0.
  The `jal` at 0x2804 calls odsy_i2c_busy_high_loop with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2838 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a6=[a0+16]:8.
  The `jal` at 0x2920 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a6=[a0+16]:8.
  The `jal` at 0x2948 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a5=0x220000, a6=[a0+16]:8.
  The `jal` at 0x2960 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a6=[a0+16]:8.
  The `jal` at 0x2970 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x2984 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x2998 calls psema with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=?, a6=[a0+16]:8.
  The `jal` at 0x2a18 calls odsy_i2c_xfer_done_loop with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x2a3c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a6=[a0+16]:8.
  The `jal` at 0x2a4c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x2a70 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a5=[[a0+16]:8+22304], a6=[a0+16]:8.
  The `jal` at 0x2a8c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a5=[[a0+16]:8+10280]:8, a6=[a0+16]:8.
  The `jal` at 0x2a9c calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x2ab0 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x2ac4 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x2bec calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=one of 0x400000, 0x7960400100000000, a6=[a0+16]:8, a7=-0x2.
  The `jal` at 0x2bfc calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=[[a0+16]:8+22304], a5=[([[a0+16]:8+736]:8 + (([a0+24]:2 + [a0+24]:2) << 0x2))+2228224], a6=[a0+16]:8.
  The `jal` at 0x2c18 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8.
  The `jal` at 0x2c28 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x2c3c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x2c50 calls psema with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=?, a4=0xfffffffffe03ffff, a5=[[a0+16]:8+22304], a6=[a0+16]:8.
  The `jal` at 0x2ca0 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a5=[[a0+16]:8+10280]:8, a6=[a0+16]:8.
  The `jal` at 0x2cb0 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x2cc4 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x2dec calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=one of 0x400000, 0x7960400100000000, a6=[a0+16]:8, a7=-0x2.
  The `jal` at 0x2dfc calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8.
  The `jal` at 0x2e0c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x2e1c calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a5=[[a0+16]:8+736]:8+0x400000, a6=[a0+16]:8.
  The `jal` at 0x2e38 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8.
  The `jal` at 0x2e48 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x2e5c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x2e70 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x2f98 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a6=[a0+16]:8, a7=-0x2.
  The `jal` at 0x2fd0 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8.
  The `jal` at 0x2fe0 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x2ff4 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x3120 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a6=[a0+16]:8, a7=-0x2.
  The `beq` branch at 0x2810 targets 0x2828, is taken when v0(=ret(odsy_i2c_busy_high_loop)) == 0, and falls through when v0(=ret(odsy_i2c_busy_high_loop)) != 0.
  The `beq` branch at 0x2830 targets 0x2994, is taken when at(=[[a0+16]:8+22304]) == 0, and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x2848 targets 0x2864, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x2854 targets 0x2948, is taken when v1(=[[a0+16]:8+22304]) == 0, and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x285c targets 0x2820 and is always taken.
  The `beq` branch at 0x2890 targets 0x2bfc, is taken when a4(=[[a0+16]:8+22304]) == 0, and falls through when a4(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x28d4 targets 0x29a8, is taken when v1(=a1) == a4(=0x1), and falls through when v1(=a1) != a4(=0x1).
  The `beq` branch at 0x28e0 targets 0x2a5c, is taken when a4(=a1) == 0, and falls through when a4(=a1) != 0.
  The `beq` branch at 0x2918 targets 0x2c4c, is taken when a5(=[[a0+16]:8+22304]) == 0, and falls through when a5(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x292c targets 0x29c0, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x2938 targets 0x2a70, is taken when a5(=[[a0+16]:8+22304]) == 0, and falls through when a5(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x2940 targets 0x2820 and is always taken.
  The `beq` branch at 0x2958 targets 0x2a38, is taken when at(=[[a0+16]:8+10280]:8) == 0, and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x2978 targets 0x2ac0, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x298c targets 0x2858 and is always taken.
  The `beq` branch at 0x29a0 targets 0x2834 and is always taken.
  The `beq` branch at 0x29b8 targets 0x28e8 and is always taken.
  The `beq` branch at 0x2a10 targets 0x2e1c, is taken when v1(=[[a0+16]:8+22304]) == 0, and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x2a24 targets 0x2c60, is taken when v0(=ret(odsy_i2c_xfer_done_loop)) == 0, and falls through when v0(=ret(odsy_i2c_xfer_done_loop)) != 0.
  The `beq` branch at 0x2a30 targets 0x2820 and is always taken.
  The `beq` branch at 0x2a54 targets 0x2858 and is always taken.
  The `beq` branch at 0x2a68 targets 0x28e8 and is always taken.
  The `beq` branch at 0x2a80 targets 0x2ca0, is taken when a5(=[[a0+16]:8+10280]:8) == 0, and falls through when a5(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x2aa4 targets 0x2cc0, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x2ab8 targets 0x293c and is always taken.
  The `beq` branch at 0x2ae8 targets 0x2b68, is taken when 0 >= a2(?) (unsigned), and falls through when 0 < a2(?) (unsigned).
  The `beq` branch at 0x2b7c targets 0x2bbc, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x2bf4 targets 0x2984 and is always taken.
  The `beq` branch at 0x2c0c targets 0x2dfc, is taken when a4(=[[a0+16]:8+10280]:8) == 0, and falls through when a4(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x2c30 targets 0x2e6c, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x2c44 targets 0x289c and is always taken.
  The `beq` branch at 0x2c58 targets 0x291c and is always taken.
  The `bne` branch at 0x2c78 targets 0x2c98, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x2c90 targets 0x2fa8, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x2c98 targets 0x2820 and is always taken.
  The `beq` branch at 0x2cb8 targets 0x293c and is always taken.
  The `beq` branch at 0x2ce8 targets 0x2d68, is taken when 0 >= a2(?) (unsigned), and falls through when 0 < a2(?) (unsigned).
  The `beq` branch at 0x2d7c targets 0x2dbc, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x2df4 targets 0x2ab0 and is always taken.
  The `beq` branch at 0x2e14 targets 0x289c and is always taken.
  The `beq` branch at 0x2e2c targets 0x2fd0, is taken when a4(=[[a0+16]:8+10280]:8) == 0, and falls through when a4(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x2e50 targets 0x2ff0, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x2e64 targets 0x2a18 and is always taken.
  The `beq` branch at 0x2e94 targets 0x2f14, is taken when 0 >= t0(?) (unsigned), and falls through when 0 < t0(?) (unsigned).
  The `beq` branch at 0x2f28 targets 0x2f68, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x2fa0 targets 0x2c3c and is always taken.
  The `beq` branch at 0x2fc8 targets 0x2820 and is always taken.
  The `beq` branch at 0x2fe8 targets 0x2a18 and is always taken.
  The `beq` branch at 0x3018 targets 0x309c, is taken when 0 >= a2(?) (unsigned), and falls through when 0 < a2(?) (unsigned).
  The `beq` branch at 0x30b0 targets 0x30f0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x3128 targets 0x2e5c and is always taken.
  The return at 0x2820 has v0 = one of ret(odsy_i2c_busy_high_loop), 0x3, ret(odsy_i2c_xfer_done_loop), 0x1, 0x0.
- `odsy_i2c_slave_recvbyte` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)` at 0x3130 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Range: 0x3130-0x3a60 (2352 bytes).
  It occupies 2352 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0x3130, `ld` at 0x354c.
  2 such `lw` accesses load 4 bytes from [a0]:8 +0x0, including `lw` at 0x3138, `lw` at 0x3550.
  2 such `sw` accesses store 4 bytes to [a0]:8 +0x0, including `sw` at 0x3168, `sw` at 0x3574.
  76 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x10, including `ld` at 0x316c, `ld` at 0x3194, `ld` at 0x31e0.
  6 such `lw` accesses load 4 bytes from [a0+16]:8 +0x5720, including `lw` at 0x3174, `lw` at 0x31a0, `lw` at 0x31e4.
  24 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2e0, including `ld` at 0x3190, `ld` at 0x31bc, `ld` at 0x325c.
  2 such `lhu` accesses load 2 bytes from a0 (arg0 at entry) +0x1a, including `lhu` at 0x31b8, `lhu` at 0x3310.
  8 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8, including `ld` at 0x31d4, `ld` at 0x31f0, `ld` at 0x327c.
  2 such `lw` accesses load 4 bytes from ([[a0+16]:8+736]:8 + (([a0+26]:2 + [a0+26]:2) << 0x2)) +0x220000, including `lw` at 0x31d8, `lw` at 0x3330.
  2 such `sw` accesses store 4 bytes to [a0+8]:8 +0x0, including `sw` at 0x31dc, `sw` at 0x3334.
  4 such `lw` accesses load 4 bytes from [a0+8]:8 +0x0, including `lw` at 0x31f8, `lw` at 0x3284, `lw` at 0x3354.
  8 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2828, including `ld` at 0x323c, `ld` at 0x346c, `ld` at 0x3508.
  The `sb` at 0x335c stores 1 byte to ?.
  20 such `lw` accesses load 4 bytes from [a0+16]:8 +0x55f0, including `lw` at 0x33cc, `lw` at 0x3424, `lw` at 0x3480.
  8 such `lhu` accesses load 2 bytes from [a0+16]:8 +0x2830, including `lhu` at 0x33d0, `lhu` at 0x3430, `lhu` at 0x368c.
  20 such `sw` accesses store 4 bytes to [a0+16]:8 +0x55f0, including `sw` at 0x33f4, `sw` at 0x3440, `sw` at 0x348c.
  12 such `lwu` accesses load 4 bytes from [a0+16]:8 +0x55f0, including `lwu` at 0x3400, `lwu` at 0x3448, `lwu` at 0x3498.
  16 such `sd` accesses store 8 bytes to [[a0+16]:8+736]:8 +0x400000, including `sd` at 0x341c, `sd` at 0x345c, `sd` at 0x3478.
  4 such `sd` accesses store 8 bytes to [a0+16]:8 +0x2828, including `sd` at 0x34e0, `sd` at 0x379c, `sd` at 0x38e0.
  The `jal` at 0x318c calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a6=[a0+16]:8.
  The `jal` at 0x3210 calls odsy_i2c_xfer_done_loop with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x3230 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a5=[[a0+16]:8+22304], a6=[a0+16]:8.
  The `jal` at 0x3248 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a6=[a0+16]:8.
  The `jal` at 0x3258 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x326c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x32cc calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a6=[a0+16]:8.
  The `jal` at 0x32f4 calls psema with a0=[a0+16]:8+10256, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[[a0+16]:8+22304], a6=[a0+16]:8, a7=[a0]:8.
  The `jal` at 0x339c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a6=[a0+16]:8.
  The `jal` at 0x33ac calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x33c0 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x34ec calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8.
  The `jal` at 0x34fc calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=[a0+8]:8, a6=[a0+16]:8.
  The `jal` at 0x3518 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a6=[a0+16]:8.
  The `jal` at 0x3528 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x353c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x3584 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a5=[[a0+16]:8+22304], a6=[a0+16]:8.
  The `jal` at 0x35a0 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a6=[a0+16]:8.
  The `jal` at 0x35b0 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x35c4 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x35d8 calls psema with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=?, a4=[[a0+16]:8+22304], a6=[a0+16]:8.
  The `jal` at 0x35e8 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a6=[a0+16]:8.
  The `jal` at 0x35f8 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x3608 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=[a0+8]:8, a5=(([a0+26]:2 + [a0+26]:2) << 0x2), a6=[a0+16]:8.
  The `jal` at 0x3624 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8.
  The `jal` at 0x3634 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x3648 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x3658 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a6=[a0+16]:8.
  The `jal` at 0x3668 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x367c calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x37a8 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8.
  The `jal` at 0x37bc calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x38ec calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8.
  The `jal` at 0x38fc calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8.
  The `jal` at 0x390c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x3920 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x3a50 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8.
  The `beq` branch at 0x3160 targets 0x316c, is taken when at(?) == a1, and falls through when at(?) != a1.
  The `beq` branch at 0x3180 targets 0x32f0, is taken when a4(=[[a0+16]:8+22304]) == 0, and falls through when a4(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x3198 targets 0x31b8, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x31a4 targets 0x3230, is taken when a5(=[[a0+16]:8+22304]) == 0, and falls through when a5(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x31e8 targets 0x34fc, is taken when at(=[[a0+16]:8+22304]) == 0, and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x3208 targets 0x3390, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x321c targets 0x327c, is taken when v0(=ret(odsy_i2c_xfer_done_loop)) == 0, and falls through when v0(=ret(odsy_i2c_xfer_done_loop)) != 0.
  The `beq` branch at 0x3228 targets 0x31ac and is always taken.
  The `beq` branch at 0x3240 targets 0x3398, is taken when at(=[[a0+16]:8+10280]:8) == 0, and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x3260 targets 0x33bc, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x3274 targets 0x31a8 and is always taken.
  The `bne` branch at 0x32a0 targets 0x3304, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `bne` branch at 0x32a8 targets 0x3304, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bne` branch at 0x32b4 targets 0x354c, is taken when at(=a2) < v1(?) (signed), and falls through when at(=a2) >= v1(?) (signed).
  The `beq` branch at 0x32c4 targets 0x35d4, is taken when a4(=[[a0+16]:8+22304]) == 0, and falls through when a4(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x32d4 targets 0x3310, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x32e0 targets 0x3584, is taken when a5(=[[a0+16]:8+22304]) == 0, and falls through when a5(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x32e8 targets 0x31ac and is always taken.
  The `beq` branch at 0x32fc targets 0x3188 and is always taken.
  The `beq` branch at 0x3308 targets 0x31ac and is always taken.
  The `beq` branch at 0x3340 targets 0x3608, is taken when at(=[[a0+16]:8+22304]) == 0, and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `bne` branch at 0x3384 targets 0x3210, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x3390 targets 0x31ac and is always taken.
  The `beq` branch at 0x33b4 targets 0x31a8 and is always taken.
  The `beq` branch at 0x33e4 targets 0x3464, is taken when 0 >= a2(?) (unsigned), and falls through when 0 < a2(?) (unsigned).
  The `beq` branch at 0x3474 targets 0x34b8, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x34f4 targets 0x326c and is always taken.
  The `beq` branch at 0x350c targets 0x35e8, is taken when at(=[[a0+16]:8+10280]:8) == 0, and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x3530 targets 0x3678, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x3544 targets 0x31f4 and is always taken.
  The `beq` branch at 0x357c targets 0x31ac and is always taken.
  The `beq` branch at 0x3594 targets 0x3658, is taken when at(=[[a0+16]:8+10280]:8) == 0, and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x35b8 targets 0x37b8, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x35cc targets 0x32e8 and is always taken.
  The `beq` branch at 0x35e0 targets 0x32c8 and is always taken.
  The `beq` branch at 0x3600 targets 0x31f4 and is always taken.
  The `beq` branch at 0x3618 targets 0x38fc, is taken when a4(=[[a0+16]:8+10280]:8) == 0, and falls through when a4(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x363c targets 0x391c, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x3650 targets 0x3348 and is always taken.
  The `beq` branch at 0x3670 targets 0x32e8 and is always taken.
  The `beq` branch at 0x36a0 targets 0x3720, is taken when 0 >= a7(?) (unsigned), and falls through when 0 < a7(?) (unsigned).
  The `beq` branch at 0x3730 targets 0x3774, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x37b0 targets 0x353c and is always taken.
  The `beq` branch at 0x37e0 targets 0x3864, is taken when 0 >= a2(?) (unsigned), and falls through when 0 < a2(?) (unsigned).
  The `beq` branch at 0x3874 targets 0x38b8, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x38f4 targets 0x35c4 and is always taken.
  The `beq` branch at 0x3914 targets 0x3348 and is always taken.
  The `beq` branch at 0x3944 targets 0x39c8, is taken when 0 >= a7(?) (unsigned), and falls through when 0 < a7(?) (unsigned).
  The `beq` branch at 0x39d8 targets 0x3a1c, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x3a58 targets 0x3648 and is always taken.
  The return at 0x31b0 has v0 = one of 0x3, ret(odsy_i2c_xfer_done_loop), 0x1, 0x0.
- `odsy_i2c_xfer_done_loop` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)` at 0x3a60 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Range: 0x3a60-0x3eb4 (1108 bytes).
  It occupies 1108 bytes.
  39 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x10, including `ld` at 0x3a88, `ld` at 0x3aa8, `ld` at 0x3af0.
  3 such `lw` accesses load 4 bytes from [a0+16]:8 +0x5720, including `lw` at 0x3a8c, `lw` at 0x3aac, `lw` at 0x3af4.
  12 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2e0, including `ld` at 0x3a9c, `ld` at 0x3ad0, `ld` at 0x3b6c.
  The `lhu` at 0x3acc loads 2 bytes from a0 (arg0 at entry) +0x1a.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8, including `ld` at 0x3ae4, `ld` at 0x3b00, `ld` at 0x3be8.
  The `lw` at 0x3ae8 loads 4 bytes from ([[a0+16]:8+736]:8 + (([a0+26]:2 + [a0+26]:2) << 0x2)) +0x220000.
  The `sw` at 0x3aec stores 4 bytes to [a0+8]:8 +0x0.
  The `lw` at 0x3b04 loads 4 bytes from [a0+8]:8 +0x0.
  4 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2828, including `ld` at 0x3b48, `ld` at 0x3bac, `ld` at 0x3cbc.
  10 such `lw` accesses load 4 bytes from [a0+16]:8 +0x55f0, including `lw` at 0x3c1c, `lw` at 0x3c70, `lw` at 0x3cd0.
  4 such `lhu` accesses load 2 bytes from [a0+16]:8 +0x2830, including `lhu` at 0x3c20, `lhu` at 0x3c7c, `lhu` at 0x3d84.
  10 such `sw` accesses store 4 bytes to [a0+16]:8 +0x55f0, including `sw` at 0x3c40, `sw` at 0x3c8c, `sw` at 0x3cdc.
  6 such `lwu` accesses load 4 bytes from [a0+16]:8 +0x55f0, including `lwu` at 0x3c4c, `lwu` at 0x3c98, `lwu` at 0x3ce8.
  8 such `sd` accesses store 8 bytes to [[a0+16]:8+736]:8 +0x400000, including `sd` at 0x3c68, `sd` at 0x3cac, `sd` at 0x3cc8.
  2 such `sd` accesses store 8 bytes to [a0+16]:8 +0x2828, including `sd` at 0x3d30, `sd` at 0x3e98.
  The `jal` at 0x3a98 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a4=[a0+16]:8.
  The `jal` at 0x3b1c calls odsy_usdelay with a0=[a0+16]:8, a1=0x1f4, a2=?, a3=?.
  The `jal` at 0x3b3c calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=[[a0+16]:8+22304], a3=?, a4=[a0+16]:8.
  The `jal` at 0x3b58 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[[a0+16]:8+10280]:8, a4=[a0+16]:8.
  The `jal` at 0x3b68 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x3b7c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x3b90 calls psema with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=?, a4=[a0+16]:8.
  The `jal` at 0x3ba0 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=[[a0+16]:8+22304], a4=[a0+16]:8.
  The `jal` at 0x3bb8 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=[[a0+16]:8+10280]:8, a3=?, a4=[a0+16]:8.
  The `jal` at 0x3bc8 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x3bdc calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x3bec calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=[[a0+16]:8+10280]:8, a4=[a0+16]:8.
  The `jal` at 0x3bfc calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x3c10 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x3d3c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8.
  The `jal` at 0x3d50 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=[[a0+16]:8+10280]:8, a3=?, a4=[a0+16]:8.
  The `jal` at 0x3d60 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x3d74 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x3ea4 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8.
  The `beq` branch at 0x3a80 targets 0x3b34, is taken when s1(?) >= 0x1f4 (unsigned), and falls through when s1(?) < 0x1f4 (unsigned).
  The `beq` branch at 0x3a90 targets 0x3b8c, is taken when v1(=[[a0+16]:8+22304]) == 0, and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x3aa4 targets 0x3acc, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x3ab0 targets 0x3b3c, is taken when a2(=[[a0+16]:8+22304]) == 0, and falls through when a2(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x3af8 targets 0x3ba0, is taken when a3(=[[a0+16]:8+22304]) == 0, and falls through when a3(=[[a0+16]:8+22304]) != 0.
  The `bne` branch at 0x3b10 targets 0x3b2c, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x3b24 targets 0x3a7c and is always taken.
  The `beq` branch at 0x3b2c targets 0x3abc and is always taken.
  The `beq` branch at 0x3b34 targets 0x3abc and is always taken.
  The `beq` branch at 0x3b4c targets 0x3bec, is taken when a3(=[[a0+16]:8+10280]:8) == 0, and falls through when a3(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x3b70 targets 0x3c0c, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x3b84 targets 0x3ab8 and is always taken.
  The `beq` branch at 0x3b98 targets 0x3a94 and is always taken.
  The `beq` branch at 0x3bb0 targets 0x3d4c, is taken when a2(=[[a0+16]:8+10280]:8) == 0, and falls through when a2(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x3bd0 targets 0x3d70, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x3be4 targets 0x3b04 and is always taken.
  The `beq` branch at 0x3c04 targets 0x3ab8 and is always taken.
  The `beq` branch at 0x3c34 targets 0x3cb4, is taken when 0 >= a1(?) (unsigned), and falls through when 0 < a1(?) (unsigned).
  The `beq` branch at 0x3cc4 targets 0x3d08, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x3d44 targets 0x3b7c and is always taken.
  The `beq` branch at 0x3d68 targets 0x3b04 and is always taken.
  The `beq` branch at 0x3d98 targets 0x3e1c, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x3e2c targets 0x3e70, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x3eac targets 0x3bdc and is always taken.
  The return at 0x3ac4 has v0 = one of 0x0, 0x2, 0x3.
- `odsy_i2c_busy_high_loop` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)` at 0x3eb4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Range: 0x3eb4-0x4310 (1116 bytes).
  It occupies 1116 bytes.
  39 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x10, including `ld` at 0x3edc, `ld` at 0x3efc, `ld` at 0x3f44.
  3 such `lw` accesses load 4 bytes from [a0+16]:8 +0x5720, including `lw` at 0x3ee0, `lw` at 0x3f00, `lw` at 0x3f48.
  12 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2e0, including `ld` at 0x3ef0, `ld` at 0x3f24, `ld` at 0x3fc8.
  The `lhu` at 0x3f20 loads 2 bytes from a0 (arg0 at entry) +0x1a.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8, including `ld` at 0x3f38, `ld` at 0x3f54, `ld` at 0x4044.
  The `lw` at 0x3f3c loads 4 bytes from ([[a0+16]:8+736]:8 + (([a0+26]:2 + [a0+26]:2) << 0x2)) +0x220000.
  The `sw` at 0x3f40 stores 4 bytes to [a0+8]:8 +0x0.
  The `lw` at 0x3f5c loads 4 bytes from [a0+8]:8 +0x0.
  4 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2828, including `ld` at 0x3fa4, `ld` at 0x4008, `ld` at 0x4118.
  10 such `lw` accesses load 4 bytes from [a0+16]:8 +0x55f0, including `lw` at 0x4078, `lw` at 0x40cc, `lw` at 0x412c.
  4 such `lhu` accesses load 2 bytes from [a0+16]:8 +0x2830, including `lhu` at 0x407c, `lhu` at 0x40d8, `lhu` at 0x41e0.
  10 such `sw` accesses store 4 bytes to [a0+16]:8 +0x55f0, including `sw` at 0x409c, `sw` at 0x40e8, `sw` at 0x4138.
  6 such `lwu` accesses load 4 bytes from [a0+16]:8 +0x55f0, including `lwu` at 0x40a8, `lwu` at 0x40f4, `lwu` at 0x4144.
  8 such `sd` accesses store 8 bytes to [[a0+16]:8+736]:8 +0x400000, including `sd` at 0x40c4, `sd` at 0x4108, `sd` at 0x4124.
  2 such `sd` accesses store 8 bytes to [a0+16]:8 +0x2828, including `sd` at 0x418c, `sd` at 0x42f4.
  The `jal` at 0x3eec calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a4=[a0+16]:8.
  The `jal` at 0x3f78 calls odsy_usdelay with a0=[a0+16]:8, a1=0x1f4, a2=?, a3=0x7fffff.
  The `jal` at 0x3f98 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=[[a0+16]:8+22304], a3=?, a4=[a0+16]:8.
  The `jal` at 0x3fb4 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[a0+16]:8.
  The `jal` at 0x3fc4 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x3fd8 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x3fec calls psema with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=?, a4=[a0+16]:8.
  The `jal` at 0x3ffc calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=[[a0+16]:8+22304], a4=[a0+16]:8.
  The `jal` at 0x4014 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=[[a0+16]:8+10280]:8, a3=?, a4=[a0+16]:8.
  The `jal` at 0x4024 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x4038 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x4048 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[a0+16]:8.
  The `jal` at 0x4058 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x406c calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x4198 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8.
  The `jal` at 0x41ac calls vsema with a0=[a0+16]:8+10256, a1=?, a2=[[a0+16]:8+10280]:8, a3=?, a4=[a0+16]:8.
  The `jal` at 0x41bc calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x41d0 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x4300 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8.
  The `beq` branch at 0x3ed4 targets 0x3f90, is taken when s1(?) >= 0x1f4 (unsigned), and falls through when s1(?) < 0x1f4 (unsigned).
  The `beq` branch at 0x3ee4 targets 0x3fe8, is taken when v1(=[[a0+16]:8+22304]) == 0, and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x3ef8 targets 0x3f20, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x3f04 targets 0x3f98, is taken when a2(=[[a0+16]:8+22304]) == 0, and falls through when a2(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x3f4c targets 0x3ffc, is taken when a3(=[[a0+16]:8+22304]) == 0, and falls through when a3(=[[a0+16]:8+22304]) != 0.
  The `bne` branch at 0x3f6c targets 0x3f88, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x3f80 targets 0x3ed0 and is always taken.
  The `beq` branch at 0x3f88 targets 0x3f10 and is always taken.
  The `beq` branch at 0x3f90 targets 0x3f10 and is always taken.
  The `beq` branch at 0x3fa8 targets 0x4048, is taken when at(=[[a0+16]:8+10280]:8) == 0, and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x3fcc targets 0x4068, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x3fe0 targets 0x3f0c and is always taken.
  The `beq` branch at 0x3ff4 targets 0x3ee8 and is always taken.
  The `beq` branch at 0x400c targets 0x41a8, is taken when a2(=[[a0+16]:8+10280]:8) == 0, and falls through when a2(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x402c targets 0x41cc, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x4040 targets 0x3f58 and is always taken.
  The `beq` branch at 0x4060 targets 0x3f0c and is always taken.
  The `beq` branch at 0x4090 targets 0x4110, is taken when 0 >= a1(?) (unsigned), and falls through when 0 < a1(?) (unsigned).
  The `beq` branch at 0x4120 targets 0x4164, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x41a0 targets 0x3fd8 and is always taken.
  The `beq` branch at 0x41c4 targets 0x3f58 and is always taken.
  The `beq` branch at 0x41f4 targets 0x4278, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x4288 targets 0x42cc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x4308 targets 0x4038 and is always taken.
  The return at 0x3f18 has v0 = one of 0x0, 0x2, 0x3.
- `odsy_i2c_recv_ack` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)` at 0x4310 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Range: 0x4310-0x477c (1132 bytes).
  It occupies 1132 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8, including `ld` at 0x432c, `ld` at 0x43a8.
  The `lw` at 0x4330 loads 4 bytes from [a0+8]:8 +0x0.
  39 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x10, including `ld` at 0x4348, `ld` at 0x434c, `ld` at 0x436c.
  3 such `lw` accesses load 4 bytes from [a0+16]:8 +0x5720, including `lw` at 0x4350, `lw` at 0x4370, `lw` at 0x43b8.
  12 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2e0, including `ld` at 0x4360, `ld` at 0x4394, `ld` at 0x442c.
  The `lhu` at 0x4390 loads 2 bytes from a0 (arg0 at entry) +0x1a.
  The `lw` at 0x43ac loads 4 bytes from ([[a0+16]:8+736]:8 + (([a0+26]:2 + [a0+26]:2) << 0x2)) +0x220000.
  The `sw` at 0x43b0 stores 4 bytes to [a0+8]:8 +0x0.
  4 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2828, including `ld` at 0x440c, `ld` at 0x446c, `ld` at 0x4584.
  10 such `lw` accesses load 4 bytes from [a0+16]:8 +0x55f0, including `lw` at 0x44e0, `lw` at 0x4538, `lw` at 0x4598.
  4 such `lhu` accesses load 2 bytes from [a0+16]:8 +0x2830, including `lhu` at 0x44e4, `lhu` at 0x4544, `lhu` at 0x464c.
  10 such `sw` accesses store 4 bytes to [a0+16]:8 +0x55f0, including `sw` at 0x4508, `sw` at 0x4554, `sw` at 0x45a4.
  6 such `lwu` accesses load 4 bytes from [a0+16]:8 +0x55f0, including `lwu` at 0x4514, `lwu` at 0x4560, `lwu` at 0x45b0.
  8 such `sd` accesses store 8 bytes to [[a0+16]:8+736]:8 +0x400000, including `sd` at 0x4530, `sd` at 0x4574, `sd` at 0x4590.
  2 such `sd` accesses store 8 bytes to [a0+16]:8 +0x2828, including `sd` at 0x45f8, `sd` at 0x4760.
  The `jal` at 0x4344 calls odsy_usdelay with a0=[a0+16]:8, a1=0x1f4, a2=?, a3=?.
  The `jal` at 0x435c calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a4=[a0+16]:8.
  The `jal` at 0x4400 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=[[a0+16]:8+22304], a3=?, a4=[a0+16]:8.
  The `jal` at 0x4418 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[[a0+16]:8+10280]:8, a4=[a0+16]:8.
  The `jal` at 0x4428 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x443c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x4450 calls psema with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=?, a4=[a0+16]:8.
  The `jal` at 0x4460 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=[[a0+16]:8+22304], a4=[a0+16]:8.
  The `jal` at 0x4478 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=[[a0+16]:8+10280]:8, a3=?, a4=[a0+16]:8.
  The `jal` at 0x4488 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x449c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x44b0 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=[[a0+16]:8+10280]:8, a4=[a0+16]:8.
  The `jal` at 0x44c0 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x44d4 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x4604 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8.
  The `jal` at 0x4618 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=[[a0+16]:8+10280]:8, a3=?, a4=[a0+16]:8.
  The `jal` at 0x4628 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x463c calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x476c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8.
  The `beq` branch at 0x433c targets 0x43e8, is taken when at(?) == s1(=a1), and falls through when at(?) != s1(=a1).
  The `beq` branch at 0x4354 targets 0x444c, is taken when v1(=[[a0+16]:8+22304]) == 0, and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x4368 targets 0x4390, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x4374 targets 0x43fc, is taken when a2(=[[a0+16]:8+22304]) == 0, and falls through when a2(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x43bc targets 0x4460, is taken when a3(=[[a0+16]:8+22304]) == 0, and falls through when a3(=[[a0+16]:8+22304]) != 0.
  The `bne` branch at 0x43d0 targets 0x432c, is taken when a2(?) < 0x1f4 (unsigned), and falls through when a2(?) >= 0x1f4 (unsigned).
  The `beq` branch at 0x43e0 targets 0x4388 and is always taken.
  The `beq` branch at 0x43f4 targets 0x4388 and is always taken.
  The `beq` branch at 0x4410 targets 0x44ac, is taken when a3(=[[a0+16]:8+10280]:8) == 0, and falls through when a3(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x4430 targets 0x44d0, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x4444 targets 0x4380 and is always taken.
  The `beq` branch at 0x4458 targets 0x4358 and is always taken.
  The `beq` branch at 0x4470 targets 0x4614, is taken when a2(=[[a0+16]:8+10280]:8) == 0, and falls through when a2(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x4490 targets 0x4638, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x44a4 targets 0x43c4 and is always taken.
  The `beq` branch at 0x44c8 targets 0x4380 and is always taken.
  The `beq` branch at 0x44f8 targets 0x457c, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x458c targets 0x45d0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x460c targets 0x443c and is always taken.
  The `beq` branch at 0x4630 targets 0x43c4 and is always taken.
  The `beq` branch at 0x4660 targets 0x46e4, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x46f4 targets 0x4738, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x4774 targets 0x449c and is always taken.
  The return at 0x4388 has v0 = one of 0x0, 0x2, 0x3.
- `odsy_i2c_init_port_handle` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)` at 0x477c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Range: 0x477c-0x4bb0 (1076 bytes).
  It occupies 1076 bytes.
  The `sw` at 0x47b4 stores 4 bytes to a0 (arg0 at entry) +0x1c.
  The `sd` at 0x47b8 stores 8 bytes to a0 (arg0 at entry) +0x10.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x5720, including `lw` at 0x47bc, `lw` at 0x47e4, `lw` at 0x487c.
  11 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x2e0, including `ld` at 0x47d4, `ld` at 0x48dc, `ld` at 0x4964.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x8, including `sd` at 0x4810, `sd` at 0x4890.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x0, including `sd` at 0x4814, `sd` at 0x4898.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x1a, including `sh` at 0x481c, `sh` at 0x489c.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x18, including `sh` at 0x4824, `sh` at 0x48a8.
  The `lhu` at 0x482c loads 2 bytes from a0 (arg0 at entry) +0x18.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x10, including `ld` at 0x4830, `ld` at 0x4858.
  2 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2e0, including `ld` at 0x4834, `ld` at 0x485c.
  The `ld` at 0x4844 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x484c loads 4 bytes from ([[a0+16]:8+736]:8 + (([a0+24]:2 + [a0+24]:2) << 0x2)) +0x220000.
  The `sw` at 0x4850 stores 4 bytes to [a0]:8 +0x0.
  The `lhu` at 0x4854 loads 2 bytes from a0 (arg0 at entry) +0x1a.
  The `ld` at 0x486c loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x4874 loads 4 bytes from ([[a0+16]:8+736]:8 + (([a0+26]:2 + [a0+26]:2) << 0x2)) +0x220000.
  The `sw` at 0x4878 stores 4 bytes to [a0+8]:8 +0x0.
  4 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x2828, including `ld` at 0x48b8, `ld` at 0x493c, `ld` at 0x4a20.
  8 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x55f0, including `lw` at 0x4988, `lw` at 0x49e0, `lw` at 0x4a30.
  4 such `lhu` accesses load 2 bytes from a1 (arg1 at entry) +0x2830, including `lhu` at 0x498c, `lhu` at 0x49dc, `lhu` at 0x4ab4.
  8 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x55f0, including `sw` at 0x49d0, `sw` at 0x4a0c, `sw` at 0x4a54.
  8 such `sd` accesses store 8 bytes to [a1+736]:8 +0x400000, including `sd` at 0x49d8, `sd` at 0x4a14, `sd` at 0x4a2c.
  2 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0x2828, including `sd` at 0x4a60, `sd` at 0x4b88.
  The `jal` at 0x47d0 calls odsy_poll_dfifo_level with a0=[a1+736]:8, a1=0xe, a2=?, a3=?.
  The `jal` at 0x48b0 calls mutex_spinlock with a0=a1+10272, a1=?, a2=?, a3=?, a4=[a1+22304].
  The `jal` at 0x48cc calls mutex_spinunlock with a0=a1+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x48d8 calls odsy_poll_dfifo_level with a0=[a1+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x48e8 calls vsema with a0=a1+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x48fc calls psema with a0=a1+10256, a1=0x19, a2=a2 at entry (arg2), a3=[a1+22304].
  The `jal` at 0x4914 calls vsema with a0=a1+10256, a1=a1+10256, a2=?, a3=?.
  The `jal` at 0x4920 calls mutex_spinunlock with a0=a1+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x4934 calls mutex_spinlock with a0=a1+10272, a1=?, a2=?, a3=[a0+8]:8, a4=0x220000.
  The `jal` at 0x4954 calls mutex_spinunlock with a0=a1+10272, a1=ret(mutex_spinlock), a2=?, a3=[a1+10280]:8, a4=a1+10256.
  The `jal` at 0x4960 calls odsy_poll_dfifo_level with a0=[a1+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x4970 calls vsema with a0=a1+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x4980 calls mutex_spinlock with a0=a1+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x4a78 calls mutex_spinunlock with a0=a1+10272, a1=ret(mutex_spinlock), a2=0x400000, a3=?, a5=-0x2.
  The `jal` at 0x4a8c calls vsema with a0=a1+10256, a1=?, a2=?, a3=[a1+10280]:8, a4=a1+10256.
  The `jal` at 0x4a98 calls mutex_spinunlock with a0=a1+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x4aa8 calls mutex_spinlock with a0=a1+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x4ba0 calls mutex_spinunlock with a0=a1+10272, a1=ret(mutex_spinlock), a2=0x400000, a3=?, a5=-0x2.
  The `bltz` branch at 0x4790 targets 0x47fc, is taken when a2 < 0 (signed), and falls through when a2 >= 0 (signed).
  The `beq` branch at 0x4798 targets 0x47fc, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x47a0 targets 0x4808, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0x47ac targets 0x4890, is taken when a2 == v1(=0x1), and falls through when a2 != v1(=0x1).
  The `beq` branch at 0x47c4 targets 0x48f8, is taken when a3(=[a1+22304]) == 0, and falls through when a3(=[a1+22304]) != 0.
  The `beq` branch at 0x47dc targets 0x4828, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x47e8 targets 0x48ac, is taken when a4(=[a1+22304]) == 0, and falls through when a4(=[a1+22304]) != 0.
  The `beq` branch at 0x4800 targets 0x47f4 and is always taken.
  The `beq` branch at 0x4820 targets 0x47b4 and is always taken.
  The `beq` branch at 0x4880 targets 0x4930, is taken when at(=[a1+22304]) == 0, and falls through when at(=[a1+22304]) != 0.
  The `beq` branch at 0x4888 targets 0x47f4 and is always taken.
  The `beq` branch at 0x48a4 targets 0x47b4 and is always taken.
  The `beq` branch at 0x48bc targets 0x490c, is taken when v1(=[a1+10280]:8) == 0, and falls through when v1(=[a1+10280]:8) != 0.
  The `beq` branch at 0x48e0 targets 0x4980, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x48f0 targets 0x47ec and is always taken.
  The `beq` branch at 0x4904 targets 0x47d0 and is always taken.
  The `beq` branch at 0x4928 targets 0x47ec and is always taken.
  The `beq` branch at 0x4948 targets 0x4a88, is taken when a3(=[a1+10280]:8) == 0, and falls through when a3(=[a1+10280]:8) != 0.
  The `beq` branch at 0x4968 targets 0x4aa8, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x4978 targets 0x4884 and is always taken.
  The `beq` branch at 0x49a4 targets 0x4a18, is taken when 0 >= a6(?) (unsigned), and falls through when 0 < a6(?) (unsigned).
  The `beq` branch at 0x4a28 targets 0x4a60, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x4a80 targets 0x48e8 and is always taken.
  The `beq` branch at 0x4aa0 targets 0x4884 and is always taken.
  The `beq` branch at 0x4acc targets 0x4b40, is taken when 0 >= a6(?) (unsigned), and falls through when 0 < a6(?) (unsigned).
  The `beq` branch at 0x4b50 targets 0x4b88, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x4ba8 targets 0x4970 and is always taken.
  The return at 0x47f4 has v0 = one of 0x0, 0x1, 0x3.
- `odsy_i2cReset` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)` at 0x4bb0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Range: 0x4bb0-0x54a4 (2292 bytes).
  It occupies 2292 bytes.
  7 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0x4bc4, `ld` at 0x4bcc, `ld` at 0x4bdc.
  5 such `sw` accesses store 4 bytes to [a0]:8 +0x0, including `sw` at 0x4bc8, `sw` at 0x4bd8, `sw` at 0x4bec.
  4 such `lw` accesses load 4 bytes from [a0]:8 +0x0, including `lw` at 0x4bd0, `lw` at 0x4be0, `lw` at 0x4bf4.
  78 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x10, including `ld` at 0x4c04, `ld` at 0x4c24, `ld` at 0x4c88.
  5 such `lw` accesses load 4 bytes from [a0+16]:8 +0x5720, including `lw` at 0x4c08, `lw` at 0x4c30, `lw` at 0x4ce8.
  27 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2e0, including `ld` at 0x4c18, `ld` at 0x4c58, `ld` at 0x4c8c.
  2 such `lhu` accesses load 2 bytes from a0 (arg0 at entry) +0x18, including `lhu` at 0x4c4c, `lhu` at 0x4fd8.
  2 such `lwu` accesses load 4 bytes from [a0]:8 +0x0, including `lwu` at 0x4c64, `lwu` at 0x4ff0.
  18 such `sd` accesses store 8 bytes to [[a0+16]:8+736]:8 +0x400000, including `sd` at 0x4c80, `sd` at 0x4ed8, `sd` at 0x4f18.
  2 such `lhu` accesses load 2 bytes from a0 (arg0 at entry) +0x1a, including `lhu` at 0x4c84, `lhu` at 0x4da0.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8, including `ld` at 0x4ca0, `ld` at 0x4cb0, `ld` at 0x4dbc.
  2 such `lw` accesses load 4 bytes from ([[a0+16]:8+736]:8 + (([a0+26]:2 + [a0+26]:2) << 0x2)) +0x220000, including `lw` at 0x4ca8, `lw` at 0x4dc0.
  2 such `sw` accesses store 4 bytes to [a0+8]:8 +0x0, including `sw` at 0x4cac, `sw` at 0x4dc4.
  2 such `lw` accesses load 4 bytes from [a0+8]:8 +0x0, including `lw` at 0x4cb4, `lw` at 0x4dd8.
  8 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2828, including `ld` at 0x4d00, `ld` at 0x4d4c, `ld` at 0x4e3c.
  20 such `lw` accesses load 4 bytes from [a0+16]:8 +0x55f0, including `lw` at 0x4e8c, `lw` at 0x4ee0, `lw` at 0x4f40.
  8 such `lhu` accesses load 2 bytes from [a0+16]:8 +0x2830, including `lhu` at 0x4e90, `lhu` at 0x4eec, `lhu` at 0x5094.
  20 such `sw` accesses store 4 bytes to [a0+16]:8 +0x55f0, including `sw` at 0x4eb0, `sw` at 0x4efc, `sw` at 0x4f48.
  12 such `lwu` accesses load 4 bytes from [a0+16]:8 +0x55f0, including `lwu` at 0x4ebc, `lwu` at 0x4f04, `lwu` at 0x4f54.
  4 such `sd` accesses store 8 bytes to [a0+16]:8 +0x2828, including `sd` at 0x4f98, `sd` at 0x51a4, `sd` at 0x5308.
  The `jal` at 0x4bbc calls odsy_i2c_stop with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4c14 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xe, a2=?, a3=?, a4=[a0+16]:8.
  The `jal` at 0x4cd8 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?.
  The `jal` at 0x4cf4 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=[[a0+16]:8+22304], a3=?, a4=[a0+16]:8.
  The `jal` at 0x4d0c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[[a0+16]:8+10280]:8, a4=[a0+16]:8.
  The `jal` at 0x4d1c calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x4d30 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x4d40 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=[a0+16]:8, a6=-0x1, a7=0x30000001.
  The `jal` at 0x4d58 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=[[a0+16]:8+10280]:8, a3=?, a4=[a0+16]:8.
  The `jal` at 0x4d68 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x4d7c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x4d90 calls psema with a0=[a0+16]:8+10256, a1=0x19, a2=[a0]:8, a3=-0x201, a4=[a0+16]:8.
  The `jal` at 0x4dcc calls odsy_usdelay with a0=[a0+16]:8, a1=0xa, a2=[a0+8]:8, a3=(([a0+26]:2 + [a0+26]:2) << 0x2), a4=[a0+16]:8.
  The `jal` at 0x4e10 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xf, a2=[a0]:8, a3=-0x4001.
  The `jal` at 0x4e2c calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=[a0+16]:8.
  The `jal` at 0x4e48 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[a0+16]:8.
  The `jal` at 0x4e58 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x4e6c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x4e80 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x4fa4 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=-0x2.
  The `jal` at 0x4fb8 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=[[a0+16]:8+10280]:8, a3=?, a4=[a0+16]:8.
  The `jal` at 0x4fc8 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x5030 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=[[a0+16]:8+736]:8+0x400000, a3=?, a4=[a0+16]:8.
  The `jal` at 0x504c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[a0+16]:8.
  The `jal` at 0x505c calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x5070 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x5084 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x51b0 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=-0x2.
  The `jal` at 0x51c4 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=[[a0+16]:8+10280]:8, a4=[a0+16]:8.
  The `jal` at 0x51d4 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x51e8 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x5314 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=-0x2.
  The `jal` at 0x5324 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[a0+16]:8.
  The `jal` at 0x5334 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x5348 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x5474 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=-0x2.
  The `jal` at 0x5484 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[a0+16]:8.
  The `jal` at 0x5494 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `beq` branch at 0x4c0c targets 0x4d8c, is taken when at(=[[a0+16]:8+22304]) == 0, and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x4c28 targets 0x4c48, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x4c34 targets 0x4d40, is taken when at(=[[a0+16]:8+22304]) == 0, and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x4cc0 targets 0x4df4, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x4cc8 targets 0x4df4, is taken when a1(=0xa) == t0(?), and falls through when a1(=0xa) != t0(?).
  The `beq` branch at 0x4ce0 targets 0x4da0, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `bne` branch at 0x4cec targets 0x4c3c, is taken when a2(=[[a0+16]:8+22304]) != 0, and falls through when a2(=[[a0+16]:8+22304]) == 0.
  The `beq` branch at 0x4d04 targets 0x51c0, is taken when a3(=[[a0+16]:8+10280]:8) == 0, and falls through when a3(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x4d24 targets 0x5080, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x4d38 targets 0x4c3c and is always taken.
  The `beq` branch at 0x4d50 targets 0x4fb4, is taken when a2(=[[a0+16]:8+10280]:8) == 0, and falls through when a2(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x4d70 targets 0x4e7c, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x4d84 targets 0x4c3c and is always taken.
  The `beq` branch at 0x4d98 targets 0x4c10 and is always taken.
  The `beq` branch at 0x4de4 targets 0x4df4, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x4dec targets 0x4cd0, is taken when at(=0xa) != t0(?), and falls through when at(=0xa) == t0(?).
  The `beq` branch at 0x4e18 targets 0x4fd8, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `bne` branch at 0x4e24 targets 0x4c3c, is taken when at(=[[a0+16]:8+22304]) != 0, and falls through when at(=[[a0+16]:8+22304]) == 0.
  The `beq` branch at 0x4e40 targets 0x5324, is taken when v0(=[[a0+16]:8+10280]:8) == 0, and falls through when v0(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x4e60 targets 0x51e4, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x4e74 targets 0x4c3c and is always taken.
  The `beq` branch at 0x4ea4 targets 0x4f20, is taken when 0 >= a1(?) (unsigned), and falls through when 0 < a1(?) (unsigned).
  The `beq` branch at 0x4f34 targets 0x4f74, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x4fac targets 0x4d7c and is always taken.
  The `beq` branch at 0x4fd0 targets 0x4c3c and is always taken.
  The `bne` branch at 0x5028 targets 0x4c3c, is taken when at(=[[a0+16]:8+22304]) != 0, and falls through when at(=[[a0+16]:8+22304]) == 0.
  The `beq` branch at 0x5040 targets 0x5484, is taken when at(=[[a0+16]:8+10280]:8) == 0, and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x5064 targets 0x5344, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x5078 targets 0x4c3c and is always taken.
  The `beq` branch at 0x50a8 targets 0x512c, is taken when 0 >= a6(?) (unsigned), and falls through when 0 < a6(?) (unsigned).
  The `beq` branch at 0x5140 targets 0x5180, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x51b8 targets 0x4d30 and is always taken.
  The `beq` branch at 0x51dc targets 0x4c3c and is always taken.
  The `beq` branch at 0x520c targets 0x5290, is taken when 0 >= a6(?) (unsigned), and falls through when 0 < a6(?) (unsigned).
  The `beq` branch at 0x52a4 targets 0x52e4, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x531c targets 0x4e6c and is always taken.
  The `beq` branch at 0x533c targets 0x4c3c and is always taken.
  The `beq` branch at 0x536c targets 0x53f0, is taken when 0 >= a6(?) (unsigned), and falls through when 0 < a6(?) (unsigned).
  The `beq` branch at 0x5404 targets 0x5444, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x547c targets 0x5070 and is always taken.
  The `beq` branch at 0x549c targets 0x4c3c and is always taken.
  The return at 0x4c40 has v0 = one of ret(odsy_poll_dfifo_level), ret(vsema), ret(mutex_spinunlock).
- `odsy_usdelay` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0x0-0x94 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0x0 loads 4 bytes from a0 (arg0 at entry) +0x5720.
  The `jal` at 0x18 calls in_panic_mode with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x28 calls us_delay with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x80 calls nano_delay with a0=sp-48, a1=0xf4240, a2=?, a3=?.
  The `bne` branch at 0x10 targets 0x28, is taken when at(=[a0+22304]) != 0, and falls through when at(=[a0+22304]) == 0.
  The `beq` branch at 0x20 targets 0x40, is taken when v0(=ret(in_panic_mode)) == 0, and falls through when v0(=ret(in_panic_mode)) != 0.
  The `beq` branch at 0x8c targets 0x38 and is always taken.
  The return at 0x38 has v0 = one of ret(us_delay), ret(nano_delay).
- `odsyPipeNrFromBase` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0x94 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0x94-0xdc (72 bytes).
  It occupies 72 bytes.
  The `ld` at 0xac loads 8 bytes from ?.
  The `beq` branch at 0xb0 targets 0xd4, is taken when at(?) == a0, and falls through when at(?) != a0.
  The `bne` branch at 0xc0 targets 0xa0, is taken when a3(?) < 0x2 (signed), and falls through when a3(?) >= 0x2 (signed).
  The return at 0xcc has v0 = -0x1.
  The return at 0xd4 has v0 = ?.
- `odsy_earlyinit` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0xdc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0xdc-0x2dc (512 bytes).
  It occupies 512 bytes.
  2 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x178, `lhu` at 0x17c.
  The `ld` at 0x188 loads 8 bytes from ?.
  The `sh` at 0x1ac stores 2 bytes to ?.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1b0, `sw` at 0x2b8.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1ec, `lw` at 0x1f8, `lw` at 0x234.
  The `jal` at 0x110 calls bzero with a0=sym(OdsyBoards), a1=0xae50, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x164 calls odsyReset with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x16c calls odsy_tport_lock_init with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x184 calls htp_register_board with a0=?, a1=sym(odsy_htp_fncs), a2=?, a3=?.
  The `jal` at 0x1b4 calls odsyFindBoardAddr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1dc calls in_panic_mode with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x210 calls init_sema with a0=?, a1=0x0, a2=0x0, a3=-0x1.
  The `jal` at 0x220 calls timeout with a0=sym(odsy_earlyinit_timeout), a1=?, a2=0xc8, a3=?.
  The `jal` at 0x22c calls psema with a0=?, a1=0x19, a2=?, a3=?.
  The `jal` at 0x24c calls cmn_err with a0=0x5, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x298 calls in_panic_mode with a0=?, a1=?, a2=?, a3=[sym(.sdata)+8].
  The `jal` at 0x2c8 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xe4 targets 0x2bc, is taken when at(=[sym(.sdata)+12]) != 0, and falls through when at(=[sym(.sdata)+12]) == 0.
  The `beq` branch at 0xfc targets 0x130, is taken when v1(=[sym(.sdata)+8]) == 0, and falls through when v1(=[sym(.sdata)+8]) != 0.
  The `beq` branch at 0x128 targets 0x144 and is always taken.
  The `beq` branch at 0x15c targets 0x198 and is always taken.
  The `beq` branch at 0x190 targets 0x25c, is taken when s0(?) >= 0x2 (signed), and falls through when s0(?) < 0x2 (signed).
  The `beq` branch at 0x1a8 targets 0x298, is taken when a3(=[sym(.sdata)+8]) == 0, and falls through when a3(=[sym(.sdata)+8]) != 0.
  The `beq` branch at 0x1bc targets 0x25c, is taken when v0(=ret(odsyFindBoardAddr)) == 0, and falls through when v0(=ret(odsyFindBoardAddr)) != 0.
  The `bne` branch at 0x1d4 targets 0x164, is taken when v1(=[sym(.sdata)+8]) != 0, and falls through when v1(=[sym(.sdata)+8]) == 0.
  The `bne` branch at 0x1e4 targets 0x164, is taken when v0(=ret(in_panic_mode)) != 0, and falls through when v0(=ret(in_panic_mode)) == 0.
  The `bne` branch at 0x1f0 targets 0x164, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x200 targets 0x164, is taken when a3(?) < 0x2 (signed), and falls through when a3(?) >= 0x2 (signed).
  The `bne` branch at 0x23c targets 0x1d4, is taken when at(?) < 0x2 (signed), and falls through when at(?) >= 0x2 (signed).
  The `beq` branch at 0x254 targets 0x1d4 and is always taken.
  The `bne` branch at 0x2a0 targets 0x1b0, is taken when v0(=ret(in_panic_mode)) != 0, and falls through when v0(=ret(in_panic_mode)) == 0.
  The `beq` branch at 0x2ac targets 0x1b4, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x2b4 targets 0x1b4 and is always taken.
  The `beq` branch at 0x2d4 targets 0x290 and is always taken.
  The return at 0x290 has v0 = one of ?, 0x0.
- `odsy_init` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0x2dc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0x2dc-0x308 (44 bytes).
  It occupies 44 bytes.
  The `jal` at 0x2f4 calls xwidget_driver_register with a0=0xc013, a1=0x23, a2=sym(.rodata), a3=0x0.
  The return at 0x300 has v0 = ret(xwidget_driver_register).
- `odsy_attach` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0x308 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0x308-0x428 (288 bytes).
  It occupies 288 bytes.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x388, `ld` at 0x3b4, `ld` at 0x3c4.
  The `lw` at 0x3c8 loads 4 bytes from ?.
  The `sd` at 0x424 stores 8 bytes to ?.
  The `jal` at 0x328 calls hwgraph_char_device_add with a0=a0 at entry (arg0), a1=sym(.rodata), a2=sym(.rodata), a3=sp-64.
  The `jal` at 0x344 calls xtalk_piotrans_addr with a0=a0 at entry (arg0), a1=0x0, a2=0x0, a3=0x401000, a4=0x0.
  The `jal` at 0x354 calls odsyPipeNrFromBase with a0=ret(xtalk_piotrans_addr), a1=?, a2=?, a3=?.
  The `jal` at 0x3dc calls odsyInitBoardGfx with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3ec calls odsyInitIntr with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x410 calls nic_vertex_info_set with a0=sym(nic_access_mcr32), a1=?, a2=a0 at entry (arg0), a3=?, a4=-0x1.
  The `bne` branch at 0x36c targets 0x3b8, is taken when v0(=ret(odsyPipeNrFromBase)) != a4(=-0x1), and falls through when v0(=ret(odsyPipeNrFromBase)) == a4(=-0x1).
  The `beq` branch at 0x38c targets 0x420, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x39c targets 0x37c, is taken when s1(?) < 0x2 (signed), and falls through when s1(?) >= 0x2 (signed).
  The `beq` branch at 0x3b0 targets 0x3c8 and is always taken.
  The `beq` branch at 0x3d4 targets 0x40c, is taken when a3(?) >= 0x2 (unsigned), and falls through when a3(?) < 0x2 (unsigned).
  The `beq` branch at 0x418 targets 0x3dc and is always taken.
  The `beq` branch at 0x420 targets 0x3c8 and is always taken.
  The return at 0x404 has v0 = 0x0.
- `odsyInitIntr` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0x428 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0x428-0x5d4 (428 bytes).
  It occupies 428 bytes.
  The `sw` at 0x464 stores 4 bytes to ?.
  7 such `sd` accesses store 8 bytes to ?, including `sd` at 0x484, `sd` at 0x498, `sd` at 0x4ac.
  12 such `ld` accesses load 8 bytes from ?, including `ld` at 0x4e0, `ld` at 0x4ec, `ld` at 0x4f8.
  5 such `sh` accesses store 2 bytes to ?, including `sh` at 0x4f4, `sh` at 0x500, `sh` at 0x50c.
  The `jal` at 0x460 calls device_desc_dup with a0=a2 at entry (arg2), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x474 calls xtalk_intr_alloc with a0=a1 at entry (arg1), a1=ret(device_desc_dup), a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x488 calls xtalk_intr_alloc with a0=a1 at entry (arg1), a1=ret(device_desc_dup), a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x49c calls xtalk_intr_alloc with a0=a1 at entry (arg1), a1=ret(device_desc_dup), a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x4b0 calls xtalk_intr_alloc with a0=a1 at entry (arg1), a1=ret(device_desc_dup), a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x4c4 calls xtalk_intr_alloc with a0=a1 at entry (arg1), a1=ret(device_desc_dup), a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x4d8 calls device_desc_free with a0=ret(device_desc_dup), a1=?, a2=?, a3=?.
  The `jal` at 0x4e4 calls xtalk_intr_vector_get with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x4f0 calls xtalk_intr_vector_get with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x4fc calls xtalk_intr_vector_get with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x508 calls xtalk_intr_vector_get with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x514 calls xtalk_intr_vector_get with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x534 calls xtalk_intr_connect with a0=?, a1=sym(odsyXtErrorInterrupt), a2=?, a3=0x0, a4=0x0, a5=0x0.
  The `jal` at 0x550 calls xtalk_intr_connect with a0=?, a1=sym(odsyFlagInterrupt), a2=?, a3=0x0, a4=0x0, a5=0x0.
  The `jal` at 0x56c calls xtalk_intr_connect with a0=?, a1=sym(odsyDmaInterrupt), a2=?, a3=0x0, a4=0x0, a5=0x0.
  The `jal` at 0x588 calls xtalk_intr_connect with a0=?, a1=sym(odsyRetraceHandler), a2=?, a3=0x0, a4=0x0, a5=0x0.
  The `jal` at 0x5a4 calls xtalk_intr_connect with a0=?, a1=sym(odsySsyncInterrupt), a2=?, a3=0x0, a4=0x0, a5=0x0.
  The `jal` at 0x5ac calls xtalk_intr_addr_get with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x5b8 calls xtalk_intr_addr_get with a0=?, a1=?, a2=?, a3=?.
  The return at 0x5cc has v0 = ret(xtalk_intr_addr_get).
- `odsyFindBoardAddr` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0x5d4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0x5d4-0x6a4 (208 bytes).
  It occupies 208 bytes.
  The `lh` at 0x5f0 loads 2 bytes from ?.
  2 such `lw` accesses load 4 bytes from ret(xtalk_early_piotrans_addr) +0x24, including `lw` at 0x638, `lw` at 0x654.
  The `sd` at 0x63c stores 8 bytes to ?.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0x640, `sh` at 0x664.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0x648, `sw` at 0x650, `sw` at 0x660.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x688, `ld` at 0x698.
  The `jal` at 0x620 calls xtalk_early_piotrans_addr with a0=0xc013, a1=0x23, a2=a0 at entry (arg0), a3=0x0, a4=0x401000, a5=0x0.
  The `jal` at 0x690 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=a3 at entry (arg3).
  The `bne` branch at 0x600 targets 0x680, is taken when at(?) != v0(=-0x1), and falls through when at(?) == v0(=-0x1).
  The `beq` branch at 0x630 targets 0x664, is taken when v0(=ret(xtalk_early_piotrans_addr)) == 0, and falls through when v0(=ret(xtalk_early_piotrans_addr)) != 0.
  The `beq` branch at 0x69c targets 0x670 and is always taken.
  The return at 0x678 has v0 = one of ret(xtalk_early_piotrans_addr), ?.
- `odsyInitBoardGfx` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0x6a4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0x6a4-0x8bc (536 bytes).
  It occupies 536 bytes.
  7 such `sw` accesses store 4 bytes to ?, including `sw` at 0x72c, `sw` at 0x730, `sw` at 0x744.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x7b8, `lw` at 0x7e8.
  3 such `sd` accesses store 8 bytes to ?, including `sd` at 0x7c4, `sd` at 0x7d4, `sd` at 0x820.
  The `jal` at 0x6d8 calls bzero with a0=?, a1=0xc8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x6ec calls init_sema with a0=?, a1=0x1, a2=0x0, a3=-0x1.
  The `jal` at 0x6f8 calls OdsyInit32kSlotMask with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0x70c calls init_mutex with a0=?, a1=0x0, a2=0x0, a3=-0x1.
  The `jal` at 0x724 calls init_sv with a0=?, a1=0x0, a2=0x0, a3=-0x1.
  The `jal` at 0x74c calls init_sema with a0=?, a1=0x1, a2=sym(.rodata), a3=-0x1.
  The `jal` at 0x758 calls spinlock_init with a0=?, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x76c calls init_mutex with a0=?, a1=0x0, a2=0x0, a3=-0x1.
  The `jal` at 0x780 calls init_mutex with a0=?, a1=0x0, a2=0x0, a3=-0x1.
  The `jal` at 0x794 calls init_sema with a0=?, a1=0x1, a2=0x0, a3=-0x1.
  The `jal` at 0x79c calls odsyInitDDRNs with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x7a4 calls odsyInitHwWrRgn with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x7b0 calls kmem_zalloc with a0=0xc000, a1=0x8800, a2=?, a3=?.
  The `jal` at 0x808 calls add_to_inventory with a0=0x7, a1=0x15, a2=0x0, a3=0x0.
  The `jal` at 0x834 calls init_mutex with a0=?, a1=0x0, a2=sym(.rodata), a3=-0x1.
  The `jal` at 0x848 calls init_mutex with a0=?, a1=0x0, a2=sym(.rodata), a3=-0x1.
  The `jal` at 0x85c calls init_mutex with a0=?, a1=0x0, a2=sym(.rodata), a3=-0x1.
  The `jal` at 0x870 calls GfxRegisterBoard with a0=sym(odsy_gfx_fncs), a1=?, a2=?, a3=?.
  The `beq` branch at 0x7d0 targets 0x890, is taken when a0(?) == at(=0x20), and falls through when a0(?) != at(=0x20).
  The `beq` branch at 0x7d8 targets 0x8a0, is taken when a0(?) == a2(=0x40), and falls through when a0(?) != a2(=0x40).
  The `beq` branch at 0x7e0 targets 0x8b4, is taken when a0(?) == at(=0x80), and falls through when a0(?) != at(=0x80).
  The `beq` branch at 0x7ec targets 0x898, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x7f4 targets 0x8a8, is taken when s7(=0x1) == a0(?), and falls through when s7(=0x1) != a0(?).
  The `beq` branch at 0x890 targets 0x7e8 and is always taken.
  The `beq` branch at 0x898 targets 0x7f8 and is always taken.
  The `beq` branch at 0x8a0 targets 0x7e8 and is always taken.
  The `beq` branch at 0x8ac targets 0x7f8 and is always taken.
  The `beq` branch at 0x8b4 targets 0x7e8 and is always taken.
  The return at 0x888 has v0 = ret(GfxRegisterBoard).
- `odsyGatherInfo` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0x8bc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0x8bc-0xe64 (1448 bytes).
  It occupies 1448 bytes.
  16 such `ld` accesses load 8 bytes from ?, including `ld` at 0x8e4, `ld` at 0x9a4, `ld` at 0xac8.
  12 such `lw` accesses load 4 bytes from ?, including `lw` at 0x908, `lw` at 0x980, `lw` at 0x9e8.
  18 such `sw` accesses store 4 bytes to ?, including `sw` at 0x924, `sw` at 0x938, `sw` at 0x958.
  The `lw` at 0xa3c loads 4 bytes from table(0x23380c) +0x0.
  4 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0xb48, `lhu` at 0xb9c, `lhu` at 0xd68.
  8 such `sd` accesses store 8 bytes to table(0x400000) +0x0, including `sd` at 0xb98, `sd` at 0xbd4, `sd` at 0xbec.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0xc24, `sd` at 0xe3c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=? (`jr` at 0x9a8).
  The `jal` at 0xa00 calls odsy_poll_dfifo_level with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0xac0 calls mutex_spinlock with a0=?, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0xadc calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xae8 calls odsy_poll_dfifo_level with a0=?, a1=0xc, a2=?, a3=?.
  The `jal` at 0xaf8 calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xb0c calls psema with a0=?, a1=0x19, a2=?, a3=?.
  The `jal` at 0xb20 calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xb2c calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xb3c calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xc38 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a5=0x400000, a7=-0x2.
  The `jal` at 0xc50 calls mutex_spinlock with a0=?, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0xc70 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xc7c calls odsy_poll_dfifo_level with a0=?, a1=0xc, a2=?, a3=?.
  The `jal` at 0xc8c calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xcb4 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=0x3.
  The `jal` at 0xcd4 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=0x4.
  The `jal` at 0xcf0 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=0x80, a4=0x20.
  The `jal` at 0xd08 calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xd14 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xd44 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0xd5c calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xe54 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a5=0x400000, a7=-0x2.
  The `beq` branch at 0x8e0 targets 0x980, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x8f0 targets 0x908, is taken when a1 == a0(=0x1), and falls through when a1 != a0(=0x1).
  The `beq` branch at 0x920 targets 0x9b0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x928 targets 0x9c8, is taken when a0(=0x1) == a1(?), and falls through when a0(=0x1) != a1(?).
  The `bne` branch at 0x930 targets 0xce4, is taken when a1(?) != v1(=0x2), and falls through when a1(?) == v1(=0x2).
  The `beq` branch at 0x948 targets 0x9b8, is taken when a0(=0x1) == a1(?), and falls through when a0(=0x1) != a1(?).
  The `bne` branch at 0x950 targets 0xca8, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x968 targets 0x9c0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x970 targets 0xccc, is taken when a0(=0x1) != a1(?), and falls through when a0(=0x1) == a1(?).
  The `beq` branch at 0x978 targets 0x8f8 and is always taken.
  The `beq` branch at 0x99c targets 0xd30, is taken when v0(?) >= 0x10 (unsigned), and falls through when v0(?) < 0x10 (unsigned).
  The `beq` branch at 0x9b0 targets 0x93c and is always taken.
  The `beq` branch at 0x9b8 targets 0x95c and is always taken.
  The `beq` branch at 0x9c0 targets 0x8f8 and is always taken.
  The `beq` branch at 0x9cc targets 0x93c and is always taken.
  The `beq` branch at 0x9f4 targets 0xb08, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xa14 targets 0xa2c, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0xa1c targets 0xac0, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0xa24 targets 0x8fc and is always taken.
  The `beq` branch at 0xa38 targets 0xc48, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0xa44 targets 0x8e8 and is always taken.
  The `beq` branch at 0xacc targets 0xb1c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xaf0 targets 0xb3c, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0xb00 targets 0xa24 and is always taken.
  The `beq` branch at 0xb14 targets 0xa00 and is always taken.
  The `beq` branch at 0xb34 targets 0xa24 and is always taken.
  The `beq` branch at 0xb64 targets 0xbd8, is taken when 0 >= a6(?) (unsigned), and falls through when 0 < a6(?) (unsigned).
  The `beq` branch at 0xbe8 targets 0xc20, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xc40 targets 0xaf8 and is always taken.
  The `beq` branch at 0xc64 targets 0xd08, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xc84 targets 0xd5c, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0xca0 targets 0xa40 and is always taken.
  The `beq` branch at 0xcc4 targets 0x95c and is always taken.
  The `beq` branch at 0xcdc targets 0x8f8 and is always taken.
  The `beq` branch at 0xd00 targets 0x93c and is always taken.
  The `beq` branch at 0xd28 targets 0xa40 and is always taken.
  The `beq` branch at 0xd54 targets 0x9e8 and is always taken.
  The `beq` branch at 0xd80 targets 0xdf4, is taken when 0 >= a2(?) (unsigned), and falls through when 0 < a2(?) (unsigned).
  The `beq` branch at 0xe04 targets 0xe3c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0xe5c targets 0xc8c and is always taken.
  The return at 0x900 has v0 = one of -0x1, 0x0.
  The instructions from 0x9d4 to 0x9e4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xa4c to 0xabc are not reached by any path from the entry, and their branches are not listed.
- `odsy_init_ddrncount_timeout` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0xe64 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0xe64-0xe9c (56 bytes).
  It occupies 56 bytes.
  The `jal` at 0xe7c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xe84 calls vsema with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The return at 0xe94 has v0 = ret(vsema).
- `odsy_earlyinit_timeout` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0xe9c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0xe9c-0xeb8 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0xea4 calls vsema with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xeb0 has v0 = ret(vsema).
- `odsyZeroOut` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0xeb8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0xeb8-0xf7c (196 bytes).
  It occupies 196 bytes.
  The `ld` at 0xecc loads 8 bytes from a0 (arg0 at entry) +0x2e0.
  11 such `sw` accesses store 4 bytes to [a0+736]:8 +0x110000, including `sw` at 0xee4, `sw` at 0xef0, `sw` at 0xefc.
  The `beq` branch at 0xeec targets 0xf28 and is always taken.
  The `beq` branch at 0xef4 targets 0xf64, is taken when a4(?) == a7(=0x231), and falls through when a4(?) != a7(=0x231).
  The `blez` branch at 0xf0c targets 0xf20, is taken when a6(?) <= 0 (signed), and falls through when a6(?) > 0 (signed).
  The `bgtz` branch at 0xf18 targets 0xf14, is taken when a1(?) > 0 (signed), and falls through when a1(?) <= 0 (signed).
  The `beq` branch at 0xf24 targets 0xf44, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xf30 targets 0xef4, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xf3c targets 0xf00 and is always taken.
  The `beq` branch at 0xf74 targets 0xf00 and is always taken.
  The return at 0xf5c has v0 = 0x0.
- `gf_OdsyInitialize` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0xf7c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0xf7c-0x141c (1184 bytes).
  It occupies 1184 bytes.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x20, including `ld` at 0xf7c, `ld` at 0x12b0, `ld` at 0x130c.
  2 such `lw` accesses load 4 bytes from [a0+32]:8 +0x1220, including `lw` at 0xf84, `lw` at 0x13f4.
  The `ld` at 0xfa0 loads 8 bytes from [a0+32]:8 +0x48.
  2 such `lw` accesses load 4 bytes from [a0+32]:8 +0x50, including `lw` at 0xfb4, `lw` at 0x12b4.
  2 such `sw` accesses store 4 bytes to [a0+32]:8 +0x50, including `sw` at 0xfc8, `sw` at 0x12c4.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0xfcc, `lw` at 0xfe8, `lw` at 0x1204.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x30, including `sw` at 0xff4, `sw` at 0x120c, `sw` at 0x1258.
  10 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2d0, including `ld` at 0xff8, `ld` at 0x1034, `ld` at 0x1060.
  12 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2e0, including `ld` at 0x1020, `ld` at 0x102c, `ld` at 0x10c8.
  3 such `sw` accesses store 4 bytes to [a0+32]:8 +0x28a8, including `sw` at 0x1024, `sw` at 0x127c, `sw` at 0x1388.
  3 such `sw` accesses store 4 bytes to [[a0+32]:8+736]:8 +0x107c, including `sw` at 0x1028, `sw` at 0x1280, `sw` at 0x1390.
  3 such `lw` accesses load 4 bytes from [[a0+32]:8+736]:8 +0x106c, including `lw` at 0x1030, `lw` at 0x1158, `lw` at 0x1288.
  3 such `sw` accesses store 4 bytes to [[a0+32]:8+736]:8 +0x1084, including `sw` at 0x10c4, `sw` at 0x10cc, `sw` at 0x10d4.
  2 such `sw` accesses store 4 bytes to [a0+32]:8 +0x28a4, including `sw` at 0x10dc, `sw` at 0x1378.
  2 such `sw` accesses store 4 bytes to [[a0+32]:8+736]:8 +0x1074, including `sw` at 0x10e0, `sw` at 0x137c.
  4 such `lh` accesses load 2 bytes from [a0+32]:8 +0x2be, including `lh` at 0x10ec, `lh` at 0x1120, `lh` at 0x11dc.
  The `lw` at 0x1144 loads 4 bytes from [a0+32]:8 +0x56f0.
  The `sd` at 0x1154 stores 8 bytes to [a0+32]:8 +0x2d0.
  The `ld` at 0x11b8 loads 8 bytes from [a0+32]:8 +0x2f0.
  The `sw` at 0x11bc stores 4 bytes to [a0+32]:8 +0x5700.
  The `sd` at 0x11c8 stores 8 bytes to [a0+32]:8 +0x5708.
  The `sh` at 0x11d4 stores 2 bytes to ([[a0+32]:8+752]:8 + (ret(OdsyAlloc32kSlot) + ret(OdsyAlloc32kSlot))) +0x0.
  The `sh` at 0x11e0 stores 2 bytes to [a0+32]:8 +0x2c4.
  The `sd` at 0x11e4 stores 8 bytes to [a0+32]:8 +0x5640.
  The `sd` at 0x11e8 stores 8 bytes to [a0+32]:8 +0x5628.
  The `sw` at 0x12ac stores 4 bytes to [a0+32]:8 +0x5720.
  The `sd` at 0x1310 stores 8 bytes to [a0+32]:8 +0x48.
  2 such `lw` accesses load 4 bytes from [a0+32]:8 +0x68, including `lw` at 0x1318, `lw` at 0x1330.
  The `lw` at 0x1354 loads 4 bytes from [a0+32]:8 +0x28a4.
  The `jal` at 0xfc4 calls htp_register_board with a0=0x0, a1=0x0, a2=0x0, a3=0x0, a5=[a0+32]:8.
  The `jal` at 0xfdc calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100c calls gfx_flow_am_i_attached with a0=[[a0+32]:8+720]:8, a1=[[a0+32]:8+720]:8, a2=?, a3=?.
  The `jal` at 0x103c calls gfx_flow_detach_me with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=?, a3=?, a4=[[[a0+32]:8+736]:8+4204], a5=[[a0+32]:8+736]:8.
  The `jal` at 0x1054 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x1078 calls gfx_flow_dealloc with a0=[[a0+32]:8+720]:8, a1=[[a0+32]:8+720]:8, a2=?, a3=?.
  The `jal` at 0x10e8 calls odsyInitCfifo with a0=[[a0+32]:8+702]:2, a1=0x1, a2=[[a0+32]:8+736]:8, a3=?.
  The `jal` at 0x10fc calls gfx_flow_dealloc with a0=[[a0+32]:8+720]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x111c calls odsyReset with a0=[[a0+32]:8+702]:2, a1=?, a2=?, a3=?.
  The `jal` at 0x1148 calls gfx_flow_alloc with a0=[[a0+32]:8+22256], a1=([[a0+32]:8+736]:8 | 0x100000), a2=0x1ffff, a3=0x800, a4=0x2710, a5=sym(odsyHiwaterInterrupt), a6=[a0+32]:8, a7=0x1.
  The `jal` at 0x116c calls us_delay with a0=0x5, a1=?, a2=[[a0+32]:8+736]:8, a3=?.
  The `jal` at 0x118c calls OdsyInit32kSlotMask with a0=[a0+32]:8+6112, a1=0x0, a2=?, a3=?.
  The `jal` at 0x11a4 calls OdsyAlloc32kSlot with a0=[a0+32]:8+6112, a1=?, a2=?, a3=?.
  The `jal` at 0x11ac calls OdsyAlloc32kSlot with a0=[a0+32]:8+6112, a1=?, a2=?, a3=?.
  The `jal` at 0x11d0 calls odsyInitMM with a0=[a0+32]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x11d8 calls odsyInitDMA with a0=[[a0+32]:8+702]:2, a1=?, a2=?, a3=?.
  The `jal` at 0x11ec calls odsyInitRetrace with a0=[a0+32]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x11f4 calls odsyInitInterrupts with a0=[[a0+32]:8+702]:2, a1=?, a2=?, a3=?.
  The `jal` at 0x11fc calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1220 calls gfx_flow_am_i_attached with a0=[[a0+32]:8+720]:8, a1=[[a0+32]:8+720]:8, a2=?, a3=?.
  The `jal` at 0x1230 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x1238 calls odsyZeroOut with a0=[a0+32]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x1240 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1268 calls gfx_flow_am_i_attached with a0=[[a0+32]:8+720]:8, a1=[[a0+32]:8+720]:8, a2=?, a3=?.
  The `jal` at 0x1294 calls gfx_flow_detach_me with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=[[a0+32]:8+736]:8, a3=?.
  The `jal` at 0x12a0 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x1304 calls psema with a0=[a0+32]:8+56, a1=0x219, a2=[[a0+32]:8+4640], a3=?, a5=[a0+32]:8.
  The `jal` at 0x1324 calls us_delay with a0=0x2, a1=?, a2=?, a3=?, a5=[a0+32]:8.
  The `jal` at 0x1348 calls gfx_flow_attach_me with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x1358 calls gfx_flow_credit_tnum_get with a0=[[a0+32]:8+720]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x13ac calls cmn_err with a0=0x4, a1=sym(.rodata), a2=[[a0+32]:8+4640], a3=?.
  The `jal` at 0x13c0 calls init_sema with a0=[a0+32]:8+4624, a1=0x0, a2=0x0, a3=-0x1.
  The `jal` at 0x13d0 calls timeout with a0=sym(odsy_init_ddrncount_timeout), a1=[a0+32]:8+4624, a2=0x1f4, a3=?.
  The `jal` at 0x13dc calls psema with a0=[a0+32]:8+4624, a1=0x19, a2=?, a3=?.
  The `bne` branch at 0xf98 targets 0x1394, is taken when a2(=[[a0+32]:8+4640]) != 0, and falls through when a2(=[[a0+32]:8+4640]) == 0.
  The `bne` branch at 0xfa4 targets 0x1300, is taken when at(=[[a0+32]:8+72]:8) != s7(=a0), and falls through when at(=[[a0+32]:8+72]:8) == s7(=a0).
  The `beq` branch at 0xfd4 targets 0x1064, is taken when (v1(=[a0+48]) & 0x3) == 0, and falls through when (v1(=[a0+48]) & 0x3) != 0.
  The `beq` branch at 0xffc targets 0x104c, is taken when a1(=[[a0+32]:8+720]:8) == 0, and falls through when a1(=[[a0+32]:8+720]:8) != 0.
  The `beq` branch at 0x1018 targets 0x1054, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x1044 targets 0x1054 and is always taken.
  The `beq` branch at 0x105c targets 0x1070 and is always taken.
  The `beq` branch at 0x1070 targets 0x1090, is taken when a1(=[[a0+32]:8+720]:8) == 0, and falls through when a1(=[[a0+32]:8+720]:8) != 0.
  The `beq` branch at 0x10bc targets 0x1118 and is always taken.
  The `beq` branch at 0x10f0 targets 0x1114, is taken when v0(=ret(odsyInitCfifo)) == 0, and falls through when v0(=ret(odsyInitCfifo)) != 0.
  The `beq` branch at 0x110c targets 0x12d8, is taken when s5(?) >= 0x5 (signed), and falls through when s5(?) < 0x5 (signed).
  The `beq` branch at 0x1114 targets 0x1184, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x1164 targets 0x10c4, is taken when s6(?) == 0, and falls through when s6(?) != 0.
  The `bne` branch at 0x1174 targets 0x1158, is taken when s6(?) != 0, and falls through when s6(?) == 0.
  The `beq` branch at 0x117c targets 0x10c4 and is always taken.
  The `beq` branch at 0x1214 targets 0x1230, is taken when a1(=[[a0+32]:8+720]:8) == 0, and falls through when a1(=[[a0+32]:8+720]:8) != 0.
  The `beq` branch at 0x1228 targets 0x1344, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x1260 targets 0x12a0, is taken when a1(=[[a0+32]:8+720]:8) == 0, and falls through when a1(=[[a0+32]:8+720]:8) != 0.
  The `beq` branch at 0x1270 targets 0x12a0, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x12f8 targets 0x12c8 and is always taken.
  The `beq` branch at 0x131c targets 0xfb0, is taken when a4(=[[a0+32]:8+104]) == 0, and falls through when a4(=[[a0+32]:8+104]) != 0.
  The `bne` branch at 0x1334 targets 0x1324, is taken when at(=[[a0+32]:8+104]) != 0, and falls through when at(=[[a0+32]:8+104]) == 0.
  The `beq` branch at 0x133c targets 0xfb0 and is always taken.
  The `beq` branch at 0x138c targets 0x1230 and is always taken.
  The `beq` branch at 0x13ec targets 0x1410, is taken when v0(?) >= 0xb (signed), and falls through when v0(?) < 0xb (signed).
  The `bne` branch at 0x13fc targets 0x13a4, is taken when a2(=[[a0+32]:8+4640]) != 0, and falls through when a2(=[[a0+32]:8+4640]) == 0.
  The `beq` branch at 0x1408 targets 0xfa0 and is always taken.
  The `beq` branch at 0x1414 targets 0x12c8 and is always taken.
  The return at 0x12d0 has v0 = one of ret(odsyInitCfifo), -0x1.
- `gf_OdsyStart` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0x141c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0x141c-0x149c (128 bytes).
  It occupies 128 bytes.
  The `ld` at 0x1424 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `sw` at 0x1430 stores 4 bytes to [a0+32]:8 +0x2dc.
  The `sh` at 0x1438 stores 2 bytes to [a0+32]:8 +0x2c4.
  The `sw` at 0x143c stores 4 bytes to [a0+32]:8 +0x2d8.
  The `sw` at 0x1440 stores 4 bytes to [a0+32]:8 +0x54.
  The `sw` at 0x1444 stores 4 bytes to [a0+32]:8 +0x78.
  The `sw` at 0x1448 stores 4 bytes to [a0+32]:8 +0x68.
  The `sw` at 0x144c stores 4 bytes to [a0+32]:8 +0x10.
  The `sd` at 0x1450 stores 8 bytes to [a0+32]:8 +0x8.
  The `ld` at 0x1460 loads 8 bytes from [a0+32]:8 +0x2f0.
  The `sw` at 0x1464 stores 4 bytes to [a0+32]:8 +0x28d4.
  2 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2e0, including `ld` at 0x1468, `ld` at 0x1484.
  The `sw` at 0x1474 stores 4 bytes to [a0+32]:8 +0x28d0.
  The `sw` at 0x1478 stores 4 bytes to [[a0+32]:8+736]:8 +0x4034.
  The `lw` at 0x1480 loads 4 bytes from [a0+32]:8 +0x28d4.
  The `sw` at 0x1498 stores 4 bytes to [[a0+32]:8+736]:8 +0x403c.
  The `jal` at 0x1454 calls odsyInitDrawables with a0=[a0+32]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x145c calls kvtophys with a0=[[a0+32]:8+752]:8, a1=?, a2=?, a3=?.
  The return at 0x1494 has v0 = 0x0.
- `odsyLLPReset` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0x149c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0x149c-0x151c (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0x149c loads 4 bytes from a0 (arg0 at entry) +0x56f0.
  The `ld` at 0x14a4 loads 8 bytes from a0 (arg0 at entry) +0x2e0.
  The `lw` at 0x14ac loads 4 bytes from [a0+736]:8 +0x24.
  The `sw` at 0x14d8 stores 4 bytes to [a0+736]:8 +0x24.
  The `lw` at 0x14dc loads 4 bytes from a0 (arg0 at entry) +0x2c0.
  The `lw` at 0x14f0 loads 4 bytes from table(0x900000001000010c) +0x0.
  The `sw` at 0x1504 stores 4 bytes to table(0x9000000010000134) +0x0.
  The `sw` at 0x1510 stores 4 bytes to table(0x900000001000010c) +0x0.
  The `jal` at 0x14bc calls xwidget_reset with a0=[a0+22256], a1=a1 at entry (arg1), a2=[a0+22256], a3=a3 at entry (arg3).
  The `jal` at 0x1500 calls odsy_usdelay with a0=a0 at entry (arg0), a1=0x2710, a2=table(0x9000000010000000), a3=entry(0x900000001000010c).
  The `beq` branch at 0x14b4 targets 0x14dc, is taken when a2(=[a0+22256]) == 0, and falls through when a2(=[a0+22256]) != 0.
  The `beq` branch at 0x1514 targets 0x14c8 and is always taken.
  The return at 0x14d4 has v0 = [[a0+736]:8+36].
- `odsyLowLevelReset` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0x151c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0x151c-0x1800 (740 bytes).
  It occupies 740 bytes.
  The `lw` at 0x1528 loads 4 bytes from abs 0x9000000010000004.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2874, including `lw` at 0x153c, `lw` at 0x1768, `lw` at 0x1784.
  The `lw` at 0x156c loads 4 bytes from abs 0x900000001000007c.
  The `sw` at 0x1584 stores 4 bytes to abs 0x900000001000007c.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1590, `lw` at 0x15c0, `lw` at 0x15d0.
  The `sw` at 0x1598 stores 4 bytes to ?.
  The `lw` at 0x1600 loads 4 bytes from abs 0x9000000010000024.
  2 such `sw` accesses store 4 bytes to abs 0x9000000010000024, including `sw` at 0x164c, `sw` at 0x1754.
  The `lw` at 0x1650 loads 4 bytes from table(0x900000001000010c) +0x0.
  2 such `sw` accesses store 4 bytes to table(0x900000001000010c) +0x0, including `sw` at 0x1708, `sw` at 0x174c.
  6 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x2888, including `sw` at 0x1710, `sw` at 0x1728, `sw` at 0x173c.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2e0, including `ld` at 0x171c, `ld` at 0x1758, `ld` at 0x1764.
  3 such `sw` accesses store 4 bytes to [a0+736]:8 +0x100c, including `sw` at 0x1734, `sw` at 0x17c4, `sw` at 0x17d8.
  The `lw` at 0x175c loads 4 bytes from a0 (arg0 at entry) +0x2884.
  2 such `sw` accesses store 4 bytes to [a0+736]:8 +0x1004, including `sw` at 0x1760, `sw` at 0x177c.
  2 such `sw` accesses store 4 bytes to [a0+736]:8 +0x24, including `sw` at 0x176c, `sw` at 0x1788.
  The `sw` at 0x1778 stores 4 bytes to a0 (arg0 at entry) +0x2884.
  The `jal` at 0x1730 calls odsy_usdelay with a0=a0 at entry (arg0), a1=0x30d40, a2=?, a3=0x9000000010000024, a4=table(0x9000000010000000), a5=0x200, a7=[a0+736]:8.
  The `jal` at 0x17c0 calls us_delay with a0=0x30d40, a1=0x30d40, a2=?, a3=0x9000000010000024, a4=table(0x9000000010000000), a5=0x9000000010000000, a7=[a0+736]:8.
  The `jal` at 0x17d4 calls odsyLLPReset with a0=a0 at entry (arg0), a1=[a0+736]:8, a2=?, a3=?.
  The `jal` at 0x17e0 calls odsy_usdelay with a0=a0 at entry (arg0), a1=0x3e8, a2=?, a3=?.
  The `beq` branch at 0x1564 targets 0x17f8, is taken when t0(=0x4) >= at(?) (unsigned), and falls through when t0(=0x4) < at(?) (unsigned).
  The `beq` branch at 0x1580 targets 0x15ac and is always taken.
  The `beq` branch at 0x15a4 targets 0x15fc, is taken when a0(?) >= 0x10 (signed), and falls through when a0(?) < 0x10 (signed).
  The `beq` branch at 0x15ac targets 0x159c, is taken when a6(?) == a0(?), and falls through when a6(?) != a0(?).
  The `beq` branch at 0x15c8 targets 0x159c, is taken when (a2(?) & a4(=0xffffffff80000000)) == 0, and falls through when (a2(?) & a4(=0xffffffff80000000)) != 0.
  The `beq` branch at 0x15d8 targets 0x159c, is taken when (at(?) & 0x20) == 0, and falls through when (at(?) & 0x20) != 0.
  The `bne` branch at 0x15e0 targets 0x1798, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x15ec targets 0x179c, is taken when a0(?) >= 0x10 (signed), and falls through when a0(?) < 0x10 (signed).
  The `beq` branch at 0x15f4 targets 0x1588 and is always taken.
  The `beq` branch at 0x1718 targets 0x17a4, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x179c targets 0x1590 and is always taken.
  The `beq` branch at 0x17f0 targets 0x1748 and is always taken.
  The `beq` branch at 0x17f8 targets 0x15fc and is always taken.
  The return at 0x1790 has v0 = 0x400000.
- `odsyReset` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0x1800 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0x1800-0x1c44 (1092 bytes).
  It occupies 1092 bytes.
  75 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1828, `sw` at 0x1864, `sw` at 0x1868.
  3 such `sh` accesses store 2 bytes to ?, including `sh` at 0x1830, `sh` at 0x187c, `sh` at 0x1884.
  37 such `ld` accesses load 8 bytes from ?, including `ld` at 0x183c, `ld` at 0x18a8, `ld` at 0x18c8.
  16 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1998, `lw` at 0x19e8, `lw` at 0x1a60.
  The `jal` at 0x1844 calls bzero with a0=?, a1=0x1f4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1858 calls strncpy with a0=?, a1=sym(.rodata), a2=0x10, a3=?.
  The `jal` at 0x188c calls odsyLowLevelReset with a0=?, a1=?, a2=0x500, a3=0x400, a4=0x1f4, a5=-0x1.
  The `jal` at 0x1898 calls odsyGatherInfo with a0=a0 at entry (arg0), a1=0x1, a2=?, a3=?.
  The `jal` at 0x18a4 calls odsyMMinit with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x18b4 calls odsyInitDBE with a0=?, a1=sym(odsy_default_timing1), a2=0x1, a3=?.
  The `jal` at 0x18c0 calls odsyGatherInfo with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jal` at 0x1a7c calls printf with a0=sym(.rodata), a1=?, a2=0x4, a3=?.
  The `jal` at 0x1aa4 calls printf with a0=sym(.rodata), a1=?, a2=0x2, a3=?.
  The `jal` at 0x1ad0 calls printf with a0=sym(.rodata), a1=?, a2=0x80, a3=?.
  The `jal` at 0x1adc calls odsy_usdelay with a0=?, a1=0x190, a2=?, a3=?.
  The `jal` at 0x1b00 calls odsy_usdelay with a0=?, a1=0x190, a2=?, a3=?.
  The `jal` at 0x1b20 calls odsy_usdelay with a0=?, a1=0x190, a2=?, a3=?.
  The `jal` at 0x1b4c calls odsy_usdelay with a0=?, a1=0x190, a2=?, a3=?.
  The `beq` branch at 0x1a6c targets 0x1bf4, is taken when a1(?) == at(=0x2), and falls through when a1(?) != at(=0x2).
  The `beq` branch at 0x1a74 targets 0x1bb8, is taken when a0(?) == a2(=0x4), and falls through when a0(?) != a2(=0x4).
  The `beq` branch at 0x1a94 targets 0x1c08, is taken when a1(?) == a2(=0x2), and falls through when a1(?) != a2(=0x2).
  The `beq` branch at 0x1a9c targets 0x1bc8, is taken when a0(?) == at(=0x3), and falls through when a0(?) != at(=0x3).
  The `beq` branch at 0x1ab8 targets 0x1c18, is taken when a1(?) == v0(=0x20), and falls through when a1(?) != v0(=0x20).
  The `beq` branch at 0x1ac0 targets 0x1c2c, is taken when a0(?) == v1(=0x40), and falls through when a0(?) != v1(=0x40).
  The `beq` branch at 0x1ac8 targets 0x1bdc, is taken when a0(?) == a2(=0x80), and falls through when a0(?) != a2(=0x80).
  The `beq` branch at 0x1bc0 targets 0x1a84 and is always taken.
  The `beq` branch at 0x1bd4 targets 0x1aac and is always taken.
  The `beq` branch at 0x1bec targets 0x1ad8 and is always taken.
  The `beq` branch at 0x1c00 targets 0x1a84 and is always taken.
  The `beq` branch at 0x1c10 targets 0x1aac and is always taken.
  The `beq` branch at 0x1c24 targets 0x1ad8 and is always taken.
  The `beq` branch at 0x1c3c targets 0x1ad8 and is always taken.
  The return at 0x1bb0 has v0 = ?.
- `odsyInitCfifo` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0x1c44 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0x1c44-0x1f40 (764 bytes).
  It occupies 764 bytes.
  17 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1c6c, `ld` at 0x1c78, `ld` at 0x1c94.
  6 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1c88, `lw` at 0x1dfc, `lw` at 0x1e40.
  11 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1c90, `sw` at 0x1e0c, `sw` at 0x1e34.
  8 such `sw` accesses store 4 bytes to table(0x110000) +0x0, including `sw` at 0x1ce4, `sw` at 0x1cec, `sw` at 0x1cf8.
  6 such `sd` accesses store 8 bytes to table(0x110000) +0x0, including `sd` at 0x1d00, `sd` at 0x1d04, `sd` at 0x1d08.
  The `lw` at 0x1d5c loads 4 bytes from table(0x201594) +0x0.
  The `lhu` at 0x1da8 loads 2 bytes from ?.
  The `jal` at 0x1c7c calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1ca0 calls gfx_flow_am_i_attached with a0=?, a1=ret(splhi), a2=?, a3=?.
  The `jal` at 0x1cb0 calls splx with a0=ret(splhi), a1=ret(splhi), a2=?, a3=?.
  The `jal` at 0x1d28 calls odsy_usdelay with a0=?, a1=0x7d0, a2=0x6b300005e50, a3=0x6b100000100, a4=0x6b000000000, a5=0xfffffff, a6=0x10854.
  The `jal` at 0x1df4 calls splhi with a0=0x5, a1=0x40008000, a2=0x7f03b9aca00, a3=table(0x110000), a4=sym(flag_desc).
  The `jal` at 0x1e1c calls gfx_flow_am_i_attached with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1e4c calls gfx_flow_detach_me with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1e54 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x1e80 calls splhi with a0=?, a1=0x40008000, a2=0x26000000, a3=0x2e000000, a4=sym(flag_desc), a6=0x0.
  The `jal` at 0x1ea4 calls gfx_flow_am_i_attached with a0=?, a1=?, a2=?, a3=-0x3.
  The `jal` at 0x1ed4 calls gfx_flow_detach_me with a0=?, a1=?, a2=?, a3=?, a5=0x1.
  The `jal` at 0x1edc calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x1ef4 calls gfx_flow_attach_me with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1f04 calls gfx_flow_credit_tnum_get with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1c74 targets 0x1cc0, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x1c98 targets 0x1cb0, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x1ca8 targets 0x1ef0, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `bne` branch at 0x1d64 targets 0x1e78, is taken when at(=entry(0x201594)) != v1(=0x3d0046), and falls through when at(=entry(0x201594)) == v1(=0x3d0046).
  The `bgez` branch at 0x1dc8 targets 0x1da0, is taken when a0(?) >= 0 (signed), and falls through when a0(?) < 0 (signed).
  The `bne` branch at 0x1dd4 targets 0x1d94, is taken when a6(?) < 0x800 (signed), and falls through when a6(?) >= 0x800 (signed).
  The `beq` branch at 0x1dec targets 0x1e60, is taken when s2(=a1) == 0, and falls through when s2(=a1) != 0.
  The `beq` branch at 0x1e14 targets 0x1e54, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x1e24 targets 0x1e54, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x1e78 targets 0x1ee8, is taken when s2(=a1) == 0, and falls through when s2(=a1) != 0.
  The `beq` branch at 0x1e9c targets 0x1edc, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x1eac targets 0x1edc, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x1ee8 targets 0x1e64 and is always taken.
  The `beq` branch at 0x1f38 targets 0x1cb0 and is always taken.
  The return at 0x1e70 has v0 = one of 0x0, 0x1.
- `odsyInitDMA` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0x1f40 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0x1f40-0x2030 (240 bytes).
  It occupies 240 bytes.
  7 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1f90, `ld` at 0x1f98, `ld` at 0x1fa0.
  10 such `sd` accesses store 8 bytes to ?, including `sd` at 0x1f94, `sd` at 0x1f9c, `sd` at 0x1fa4.
  6 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1fbc, `sw` at 0x1fe0, `sw` at 0x2000.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0x1fd0, `sh` at 0x1ff8.
  The `jal` at 0x1f6c calls init_mutex with a0=?, a1=0x0, a2=0x0, a3=-0x1.
  The `jal` at 0x1f88 calls init_sv with a0=?, a1=0x0, a2=0x0, a3=-0x1.
  The `jal` at 0x1fb0 calls OdsyAlloc32kSlot with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1fd4 calls OdsyAlloc32kSlot with a0=?, a1=?, a2=(ret(OdsyAlloc32kSlot) + ret(OdsyAlloc32kSlot)), a3=?.
  The return at 0x2028 has v0 = (ret(OdsyAlloc32kSlot) + ret(OdsyAlloc32kSlot)).
- `odsyInitInterrupts` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0x2030 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0x2030-0x2320 (752 bytes).
  It occupies 752 bytes.
  12 such `ld` accesses load 8 bytes from ?, including `ld` at 0x2044, `ld` at 0x2048, `ld` at 0x2094.
  25 such `sw` accesses store 4 bytes to ?, including `sw` at 0x2054, `sw` at 0x2058, `sw` at 0x20b0.
  6 such `lw` accesses load 4 bytes from ?, including `lw` at 0x2060, `lw` at 0x20d0, `lw` at 0x20f8.
  5 such `lh` accesses load 2 bytes from ?, including `lh` at 0x206c, `lh` at 0x2100, `lh` at 0x210c.
  The return at 0x2318 has v0 = ?.
- `odsyDisableInterrupts` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0x2320 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0x2320-0x2380 (96 bytes).
  It occupies 96 bytes.
  The `lw` at 0x2320 loads 4 bytes from a0 (arg0 at entry) +0x2878.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2e0, including `ld` at 0x2328, `ld` at 0x2360, `ld` at 0x2370.
  The `sw` at 0x2334 stores 4 bytes to a0 (arg0 at entry) +0x2878.
  The `sw` at 0x2338 stores 4 bytes to [a0+736]:8 +0x34.
  The `lw` at 0x2340 loads 4 bytes from a0 (arg0 at entry) +0x2894.
  The `sw` at 0x2368 stores 4 bytes to a0 (arg0 at entry) +0x2894.
  The `sw` at 0x236c stores 4 bytes to [a0+736]:8 +0x1044.
  The `sw` at 0x237c stores 4 bytes to [a0+736]:8 +0x103c.
  The return at 0x2378 has v0 = [a0+736]:8.
- `odsy_DCDResetDone` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0x2380 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0x2380-0x23f8 (120 bytes).
  It occupies 120 bytes.
  The `sb` at 0x2384 stores 1 byte to a0 (arg0 at entry) +0x20.
  The `ld` at 0x23e0 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `jal` at 0x23a8 calls odsy_i2cDDCRegRead with a0=a0 at entry (arg0), a1=0x3, a2=sp-48, a3=?.
  The `jal` at 0x23dc calls odsy_usdelay with a0=[a0+16]:8, a1=0x1f4, a2=?, a3=?.
  The `beq` branch at 0x23b8 targets 0x23d8, is taken when (v1(?) & 0x2) == 0, and falls through when (v1(?) & 0x2) != 0.
  The `bne` branch at 0x23e8 targets 0x23a4, is taken when s5(?) < 0x1388 (signed), and falls through when s5(?) >= 0x1388 (signed).
  The `beq` branch at 0x23f0 targets 0x23c4 and is always taken.
  The return at 0x23d0 has v0 = one of 0x0, 0x1.
- `odsyInitDBE` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0x23f8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0x23f8-0x3370 (3960 bytes).
  It occupies 3960 bytes.
  35 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2e0, including `ld` at 0x2408, `ld` at 0x2478, `ld` at 0x24ec.
  15 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x5720, including `lw` at 0x2414, `lw` at 0x247c, `lw` at 0x24dc.
  38 such `sd` accesses store 8 bytes to [a0+736]:8 +0x400000, including `sd` at 0x2454, `sd` at 0x2464, `sd` at 0x246c.
  The `lw` at 0x2490 loads 4 bytes from [a0+736]:8 +0x23241c.
  The `sw` at 0x2494 stores 4 bytes to a0 (arg0 at entry) +0x5694.
  The `lw` at 0x2498 loads 4 bytes from [a0+736]:8 +0x232414.
  The `sw` at 0x24a0 stores 4 bytes to a0 (arg0 at entry) +0x5698.
  The `lw` at 0x250c loads 4 bytes from [a0+736]:8 +0x23380c.
  The `lhu` at 0x2520 loads 2 bytes from a0 (arg0 at entry) +0x12a.
  The `lhu` at 0x2530 loads 2 bytes from a0 (arg0 at entry) +0x134.
  25 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x55f0, including `sw` at 0x26dc, `sw` at 0x27c4, `sw` at 0x2814.
  12 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2828, including `ld` at 0x2738, `ld` at 0x282c, `ld` at 0x28cc.
  24 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x55f0, including `lw` at 0x2794, `lw` at 0x27e8, `lw` at 0x2840.
  12 such `lhu` accesses load 2 bytes from a0 (arg0 at entry) +0x2830, including `lhu` at 0x2798, `lhu` at 0x27f4, `lhu` at 0x2bc8.
  6 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x2828, including `sd` at 0x2888, `sd` at 0x2ca4, `sd` at 0x2ea0.
  The `lhu` at 0x2924 loads 2 bytes from a0 (arg0 at entry) +0x128.
  2 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x56e8, including `sb` at 0x2948, `sb` at 0x2aec.
  The `sh` at 0x2954 stores 2 bytes to a0 (arg0 at entry) +0x128.
  The `sh` at 0x2984 stores 2 bytes to a0 (arg0 at entry) +0x12a.
  The `sh` at 0x29a4 stores 2 bytes to a0 (arg0 at entry) +0x12c.
  The `lw` at 0x29dc loads 4 bytes from a0 (arg0 at entry) +0x124.
  The `lhu` at 0x2b00 loads 2 bytes from a0 (arg0 at entry) +0x1b6.
  The `lhu` at 0x2b18 loads 2 bytes from a0 (arg0 at entry) +0x238.
  The `jal` at 0x2430 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xa, a2=?, a3=?.
  The `jal` at 0x2474 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0x0, a2=?, a3=?, a5=0x3ac0000100000000.
  The `jal` at 0x24b0 calls odsy_i2c_init_port_handle with a0=a0+22176, a1=a0 at entry (arg0), a2=0x0, a3=?.
  The `jal` at 0x24cc calls odsy_i2c_init_port_handle with a0=a0+22216, a1=a0 at entry (arg0), a2=0x1, a3=?.
  The `jal` at 0x24e8 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xf, a2=?, a3=?.
  The `jal` at 0x255c calls odsyConfigFb with a0=a0 at entry (arg0), a1=sp-248, a2=?, a3=?, a5=0x400, a6=0x500.
  The `jal` at 0x2578 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xe, a2=?, a3=?.
  The `jal` at 0x26a8 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xb, a2=0x30000001, a3=?, a7=0xffffffff.
  The `jal` at 0x26fc calls odsyBlankScreen with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jal` at 0x2730 calls mutex_spinlock with a0=a0+10272, a1=?, a2=?, a3=?, a5=[a0+22304].
  The `jal` at 0x274c calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[a0+10280]:8.
  The `jal` at 0x2758 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x2768 calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x277c calls psema with a0=a0+10256, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x278c calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x288c calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a5=-0x2.
  The `jal` at 0x28a4 calls vsema with a0=a0+10256, a1=a0+10256, a2=?, a3=?, a4=[a0+10280]:8.
  The `jal` at 0x28b0 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x28c4 calls mutex_spinlock with a0=a0+10272, a1=?, a2=?, a3=[[a0+736]:8+2302996], a4=[[a0+736]:8+2303004], a5=[a0+22304].
  The `jal` at 0x28e4 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=[a0+10280]:8, a4=a0+10256.
  The `jal` at 0x28f0 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x2900 calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2914 calls psema with a0=a0+10256, a1=0x19, a2=?, a3=?, a4=[a0+22304].
  The `jal` at 0x2950 calls odsy_i2cDDCRegRead with a0=?, a1=0x0, a2=sp-254, a3=?.
  The `jal` at 0x2980 calls odsy_i2cDDCRegRead with a0=?, a1=0x7, a2=sp-255, a3=?.
  The `jal` at 0x29a0 calls add_to_inventory with a0=0x11, a1=0x3, a2=0x0, a3=0x0, a4=0x0.
  The `jal` at 0x29bc calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xe, a2=?, a3=?.
  The `jal` at 0x29e8 calls odsy_i2cProbe2b with a0=?, a1=a0+308, a2=?, a3=?, a4=[a0+298]:2, a5=0x400, a6=0x500.
  The `jal` at 0x2a1c calls mutex_spinlock with a0=a0+10272, a1=?, a2=?, a3=0x3a00800100000000, a5=[a0+22304].
  The `jal` at 0x2a3c calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[a0+10280]:8.
  The `jal` at 0x2a48 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x2a58 calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2a74 calls mutex_spinlock with a0=a0+10272, a1=?, a2=?, a3=?, a5=[a0+22304].
  The `jal` at 0x2a94 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x2aa0 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x2ab0 calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2ac4 calls odsy_DCDResetDone with a0=?, a1=?, a2=?, a3=?, a4=[a0+298]:2, a5=0x400, a6=0x500.
  The `jal` at 0x2ae8 calls odsy_i2cPLLRegWrite with a0=?, a1=0x0, a2=0x10, a3=0x1f, a5=0x400, a6=0x500.
  The `jal` at 0x2af8 calls odsy_i2cDDCRegRead with a0=?, a1=0x5, a2=sp-256, a3=?.
  The `jal` at 0x2b10 calls odsy_i2cPLLRegWrite with a0=?, a1=0x0, a2=0x20, a3=?.
  The `jal` at 0x2b28 calls odsy_i2cPLLRegWrite with a0=?, a1=0x0, a2=0x30, a3=?.
  The `jal` at 0x2b44 calls vsema with a0=a0+10256, a1=?, a2=?, a3=[a0+10280]:8, a4=a0+10256.
  The `jal` at 0x2b50 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2b64 calls psema with a0=a0+10256, a1=0x19, a2=?, a3=?, a5=[a0+22304].
  The `jal` at 0x2bac calls odsyLoadTimingTable with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x2bbc calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2cbc calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a6=([a0+22000] | 0x2).
  The `jal` at 0x2cdc calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0x0, a2=0x30000001, a3=?, a7=0xffffffff.
  The `jal` at 0x2d18 calls psema with a0=a0+10256, a1=0x19, a2=?, a3=?, a5=[a0+22304].
  The `jal` at 0x2d28 calls vsema with a0=a0+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x2d34 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2d58 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0x0, a2=0x30000001, a3=?, a7=0xffffffff.
  The `jal` at 0x2d94 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x2da8 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x2db8 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2eb8 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a6=([a0+22000] | 0x2).
  The `jal` at 0x2ed0 calls mutex_spinlock with a0=a0+10272, a1=?, a2=?, a3=[a0+736]:8+0x400000, a4=0x400000.
  The `jal` at 0x2ef0 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x2efc calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x2f0c calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2f20 calls psema with a0=a0+10256, a1=0x19, a2=?, a3=?, a5=[a0+22304].
  The `jal` at 0x2f44 calls odsy_i2cPLLRegWrite with a0=?, a1=0x5, a2=?, a3=-0x21, a4=[a0+438]:2.
  The `jal` at 0x2f50 calls odsy_i2cProbe2b with a0=?, a1=a0+438, a2=?, a3=?.
  The `jal` at 0x2f70 calls odsy_i2cPLLRegWrite with a0=?, a1=0x5, a2=?, a3=?.
  The `jal` at 0x2f7c calls odsy_i2cProbe2b with a0=?, a1=a0+568, a2=?, a3=?.
  The `jal` at 0x2f90 calls mutex_spinlock with a0=a0+10272, a1=?, a2=?, a3=?, a4=0x3a00c00100000000.
  The `jal` at 0x2fb0 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=[a0+10280]:8, a4=a0+10256.
  The `jal` at 0x2fbc calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x2fcc calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2fdc calls vsema with a0=a0+10256, a1=?, a2=?, a3=?, a4=[a0+10280]:8.
  The `jal` at 0x2fe8 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2ff8 calls vsema with a0=a0+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x3004 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3014 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3114 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a5=-0x2.
  The `jal` at 0x3124 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x322c calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[a0+10280]:8, a5=-0x2.
  The `jal` at 0x323c calls vsema with a0=a0+10256, a1=?, a2=?, a3=[a0+10280]:8, a4=a0+10256.
  The `jal` at 0x3248 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3258 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3360 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[a0+10280]:8, a5=-0x2.
  The `beq` branch at 0x2424 targets 0x2778, is taken when at(=[a0+22304]) == 0, and falls through when at(=[a0+22304]) != 0.
  The `bne` branch at 0x243c targets 0x270c, is taken when v0(=ret(odsy_poll_dfifo_level)) != 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) == 0.
  The `bne` branch at 0x2460 targets 0x2458, is taken when a0(?) < 0x4 (signed), and falls through when a0(?) >= 0x4 (signed).
  The `bne` branch at 0x2480 targets 0x2714, is taken when v0(=ret(odsy_poll_dfifo_level)) != 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) == 0.
  The `beq` branch at 0x249c targets 0x28c0, is taken when a5(=[a0+22304]) == 0, and falls through when a5(=[a0+22304]) != 0.
  The `bne` branch at 0x24b8 targets 0x2d90, is taken when v0(=ret(odsy_i2c_init_port_handle)) != 0, and falls through when v0(=ret(odsy_i2c_init_port_handle)) == 0.
  The `bne` branch at 0x24d4 targets 0x2da4, is taken when v0(=ret(odsy_i2c_init_port_handle)) != 0, and falls through when v0(=ret(odsy_i2c_init_port_handle)) == 0.
  The `beq` branch at 0x24e0 targets 0x2910, is taken when a4(=[a0+22304]) == 0, and falls through when a4(=[a0+22304]) != 0.
  The `bne` branch at 0x24f4 targets 0x2714, is taken when v0(=ret(odsy_poll_dfifo_level)) != 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) == 0.
  The `beq` branch at 0x2508 targets 0x2a6c, is taken when a5(=[a0+22304]) == 0, and falls through when a5(=[a0+22304]) != 0.
  The `beq` branch at 0x2518 targets 0x2924, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x2528 targets 0x2ac4, is taken when a4(=[a0+298]:2) == v0(=0x3), and falls through when a4(=[a0+298]:2) != v0(=0x3).
  The `beq` branch at 0x2534 targets 0x29dc, is taken when at(=[a0+308]:2) == 0, and falls through when at(=[a0+308]:2) != 0.
  The `beq` branch at 0x2568 targets 0x29b4, is taken when v1(=a2) == 0, and falls through when v1(=a2) != 0.
  The `beq` branch at 0x2570 targets 0x2b60, is taken when a5(=[a0+22304]) == 0, and falls through when a5(=[a0+22304]) != 0.
  The `beq` branch at 0x2588 targets 0x29fc, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `bne` branch at 0x2598 targets 0x2714, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `bne` branch at 0x25a0 targets 0x2714, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x25a8 targets 0x2f1c, is taken when a5(=[a0+22304]) == 0, and falls through when a5(=[a0+22304]) != 0.
  The `beq` branch at 0x2610 targets 0x2ccc, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x2634 targets 0x25f4, is taken when a0(?) < 0x20 (signed), and falls through when a0(?) >= 0x20 (signed).
  The `beq` branch at 0x2678 targets 0x2d48, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x269c targets 0x265c, is taken when a0(?) < 0x8 (signed), and falls through when a0(?) >= 0x8 (signed).
  The `beq` branch at 0x26f0 targets 0x2ec8, is taken when at(=[a0+22304]) == 0, and falls through when at(=[a0+22304]) != 0.
  The `beq` branch at 0x2704 targets 0x2720 and is always taken.
  The `beq` branch at 0x2718 targets 0x272c, is taken when a5(=[a0+22304]) == 0, and falls through when a5(=[a0+22304]) != 0.
  The `beq` branch at 0x273c targets 0x289c, is taken when a4(=[a0+10280]:8) == 0, and falls through when a4(=[a0+10280]:8) != 0.
  The `beq` branch at 0x2760 targets 0x278c, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x2770 targets 0x2720 and is always taken.
  The `beq` branch at 0x2784 targets 0x2430 and is always taken.
  The `beq` branch at 0x27ac targets 0x2824, is taken when 0 >= a1(?) (unsigned), and falls through when 0 < a1(?) (unsigned).
  The `beq` branch at 0x2838 targets 0x2874, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x2894 targets 0x2768 and is always taken.
  The `beq` branch at 0x28b8 targets 0x2720 and is always taken.
  The `beq` branch at 0x28d8 targets 0x2b44, is taken when a3(=[a0+10280]:8) == 0, and falls through when a3(=[a0+10280]:8) != 0.
  The `beq` branch at 0x28f8 targets 0x2bbc, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x2908 targets 0x24a8 and is always taken.
  The `beq` branch at 0x291c targets 0x24e8 and is always taken.
  The `bne` branch at 0x2928 targets 0x2520, is taken when at(=[a0+296]:2) != 0, and falls through when at(=[a0+296]:2) == 0.
  The `bne` branch at 0x296c targets 0x2520, is taken when v0(=0x3) != a5(?), and falls through when v0(=0x3) == a5(?).
  The `beq` branch at 0x29ac targets 0x2520 and is always taken.
  The `beq` branch at 0x29b4 targets 0x2d14, is taken when a5(=[a0+22304]) == 0, and falls through when a5(=[a0+22304]) != 0.
  The `beq` branch at 0x29cc targets 0x2b74, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x29d4 targets 0x2594 and is always taken.
  The `blez` branch at 0x29e0 targets 0x253c, is taken when at(=[a0+292]) <= 0 (signed), and falls through when at(=[a0+292]) > 0 (signed).
  The `beq` branch at 0x29f4 targets 0x253c and is always taken.
  The `bne` branch at 0x2a10 targets 0x2598, is taken when a5(=[a0+22304]) != 0, and falls through when a5(=[a0+22304]) == 0.
  The `beq` branch at 0x2a30 targets 0x2fdc, is taken when a4(=[a0+10280]:8) == 0, and falls through when a4(=[a0+10280]:8) != 0.
  The `beq` branch at 0x2a50 targets 0x3014, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x2a64 targets 0x2594 and is always taken.
  The `beq` branch at 0x2a88 targets 0x2d28, is taken when v0(=[a0+10280]:8) == 0, and falls through when v0(=[a0+10280]:8) != 0.
  The `beq` branch at 0x2aa8 targets 0x2db8, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x2abc targets 0x2510 and is always taken.
  The `beq` branch at 0x2ad0 targets 0x2b38, is taken when v0(=ret(odsy_DCDResetDone)) == 0, and falls through when v0(=ret(odsy_DCDResetDone)) != 0.
  The `beq` branch at 0x2b04 targets 0x2f30, is taken when a4(=[a0+438]:2) == 0, and falls through when a4(=[a0+438]:2) != 0.
  The `beq` branch at 0x2b1c targets 0x2f60, is taken when at(=[a0+568]:2) == 0, and falls through when at(=[a0+568]:2) != 0.
  The `beq` branch at 0x2b3c targets 0x2544 and is always taken.
  The `beq` branch at 0x2b58 targets 0x24a8 and is always taken.
  The `beq` branch at 0x2b6c targets 0x2578 and is always taken.
  The `beq` branch at 0x2ba4 targets 0x2f8c, is taken when v1(=[a0+22304]) == 0, and falls through when v1(=[a0+22304]) != 0.
  The `beq` branch at 0x2bb4 targets 0x29d4 and is always taken.
  The `beq` branch at 0x2bdc targets 0x2c54, is taken when 0 >= a6(?) (unsigned), and falls through when 0 < a6(?) (unsigned).
  The `beq` branch at 0x2c68 targets 0x2ca4, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x2cc4 targets 0x2900 and is always taken.
  The `beq` branch at 0x2d00 targets 0x2614, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x2d0c targets 0x2714 and is always taken.
  The `beq` branch at 0x2d20 targets 0x29bc and is always taken.
  The `beq` branch at 0x2d40 targets 0x2510 and is always taken.
  The `beq` branch at 0x2d7c targets 0x267c, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x2d88 targets 0x2714 and is always taken.
  The `beq` branch at 0x2d9c targets 0x24c4 and is always taken.
  The `beq` branch at 0x2db0 targets 0x24e0 and is always taken.
  The `beq` branch at 0x2dd8 targets 0x2e50, is taken when 0 >= a6(?) (unsigned), and falls through when 0 < a6(?) (unsigned).
  The `beq` branch at 0x2e64 targets 0x2ea0, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x2ec0 targets 0x2ab0 and is always taken.
  The `beq` branch at 0x2ee4 targets 0x2ff8, is taken when at(=[a0+10280]:8) == 0, and falls through when at(=[a0+10280]:8) != 0.
  The `beq` branch at 0x2f04 targets 0x3124, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x2f14 targets 0x26fc and is always taken.
  The `beq` branch at 0x2f28 targets 0x25b0 and is always taken.
  The `beq` branch at 0x2f58 targets 0x2b0c and is always taken.
  The `beq` branch at 0x2f84 targets 0x2b24 and is always taken.
  The `beq` branch at 0x2fa4 targets 0x323c, is taken when a3(=[a0+10280]:8) == 0, and falls through when a3(=[a0+10280]:8) != 0.
  The `beq` branch at 0x2fc4 targets 0x3258, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x2fd4 targets 0x2bac and is always taken.
  The `beq` branch at 0x2ff0 targets 0x2a64 and is always taken.
  The `beq` branch at 0x300c targets 0x26fc and is always taken.
  The `beq` branch at 0x3034 targets 0x30ac, is taken when 0 >= a2(?) (unsigned), and falls through when 0 < a2(?) (unsigned).
  The `beq` branch at 0x30c0 targets 0x30fc, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x311c targets 0x2a58 and is always taken.
  The `beq` branch at 0x3144 targets 0x31c4, is taken when 0 >= a2(?) (unsigned), and falls through when 0 < a2(?) (unsigned).
  The `beq` branch at 0x31d8 targets 0x3214, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x3234 targets 0x2f0c and is always taken.
  The `beq` branch at 0x3250 targets 0x2bac and is always taken.
  The `beq` branch at 0x3278 targets 0x32f8, is taken when 0 >= a2(?) (unsigned), and falls through when 0 < a2(?) (unsigned).
  The `beq` branch at 0x330c targets 0x3348, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x3368 targets 0x2fcc and is always taken.
  The return at 0x2724 has v0 = one of ret(odsyBlankScreen), ?, ret(vsema), ret(mutex_spinunlock).
- `odsyInitHwWrRgn` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0x3370 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0x3370-0x3498 (296 bytes).
  It occupies 296 bytes.
  2 such `ld` accesses load 8 bytes from ((a0 << 0x3) + sym(flag_desc)) +0x7210, including `ld` at 0x337c, `ld` at 0x346c.
  5 such `sd` accesses store 8 bytes to ?, including `sd` at 0x33ac, `sd` at 0x33d0, `sd` at 0x3400.
  The `sw` at 0x33c8 stores 4 bytes to ?.
  The `sd` at 0x3494 stores 8 bytes to ((a0 << 0x3) + sym(flag_desc)) +0x7210.
  The `jal` at 0x3458 calls printf with a0=sym(.rodata), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x347c calls kmem_zalloc with a0=0x20000, a1=0x8800, a2=sym(flag_desc), a3=a3 at entry (arg3).
  The `beq` branch at 0x3388 targets 0x3470, is taken when v0(=[((a0 << 0x3) + sym(flag_desc))+29200]:8) == 0, and falls through when v0(=[((a0 << 0x3) + sym(flag_desc))+29200]:8) != 0.
  The `bne` branch at 0x33cc targets 0x33b0, is taken when a0(?) < 0x4 (unsigned), and falls through when a0(?) >= 0x4 (unsigned).
  The `beq` branch at 0x33d4 targets 0x344c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x33ec targets 0x3414, is taken when (v0(?) & 0xffff) == 0, and falls through when (v0(?) & 0xffff) != 0.
  The `bne` branch at 0x340c targets 0x33f4, is taken when (a0(?) & 0xffff) != 0, and falls through when (a0(?) & 0xffff) == 0.
  The `beq` branch at 0x341c targets 0x3440, is taken when a1(?) >= 0x4 (unsigned), and falls through when a1(?) < 0x4 (unsigned).
  The `bne` branch at 0x3438 targets 0x3424, is taken when a1(?) < 0x4 (unsigned), and falls through when a1(?) >= 0x4 (unsigned).
  The `beq` branch at 0x3468 targets 0x33dc and is always taken.
  The `beq` branch at 0x3490 targets 0x3390 and is always taken.
  The return at 0x3444 has v0 = ?.
- `odsy_teardown` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0x3498 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0x3498-0x3538 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0x34bc loads 4 bytes from a0 (arg0 at entry) +0x2d8.
  The `sw` at 0x34cc stores 4 bytes to a0 (arg0 at entry) +0x2d8.
  The `ld` at 0x3500 loads 8 bytes from a0 (arg0 at entry) +0x2e0.
  The `jal` at 0x34b4 calls psema with a0=a0+4648, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x34d4 calls vsema with a0=a0+4648, a1=?, a2=?, a3=?.
  The `jal` at 0x34f4 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x34fc calls odsyPrintRegs with a0=[a0+736]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x3518 calls gthread_scan with a0=sym(GfxKiller), a1=sp-64, a2=0x9, a3=?.
  The `jal` at 0x3524 calls vsema with a0=a0+4648, a1=?, a2=?, a3=?.
  The `beq` branch at 0x34c8 targets 0x34ec, is taken when at(=[a0+728]+1) == v0(=0x1), and falls through when at(=[a0+728]+1) != v0(=0x1).
  The `beq` branch at 0x3530 targets 0x34e4 and is always taken.
  The return at 0x34e4 has v0 = ret(vsema).
- `odsyPrintRegs` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0x3538 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0x3538-0x358c (84 bytes).
  It occupies 84 bytes.
  The `lw` at 0x3548 loads 4 bytes from a0 (arg0 at entry) +0x1064.
  The `lw` at 0x354c loads 4 bytes from a0 (arg0 at entry) +0x1014.
  The `jal` at 0x3558 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=[a0+4116], a3=sym(flag_desc).
  The `jal` at 0x3574 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=[a0+4196], a3=sym(flag_desc).
  The return at 0x3584 has v0 = ret(cmn_err).
- `odsyXtErrorInterrupt` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)`.
  Range: 0x0-0x11c (284 bytes).
  It occupies 284 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2e0, including `ld` at 0x10, `ld` at 0xf4.
  The `lh` at 0x14 loads 2 bytes from abs 0xffffffffffffc3a0.
  The `lw` at 0x18 loads 4 bytes from [a0+736]:8 +0xc.
  2 such `lw` accesses load 4 bytes from [a0+736]:8 +0x44, including `lw` at 0x24, `lw` at 0x10c.
  The `lw` at 0x30 loads 4 bytes from ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0x10.
  The `sw` at 0x48 stores 4 bytes to ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0x10.
  The `sw` at 0xa8 stores 4 bytes to [a0+736]:8 +0x44.
  The `lw` at 0x100 loads 4 bytes from [a0+736]:8 +0x1c.
  The `jal` at 0x70 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=([-0x3c60]:2 << 0x5), a5=a0 at entry (arg0).
  The `jal` at 0x8c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=([-0x3c60]:2 << 0x5), a5=a0 at entry (arg0).
  The `jal` at 0xbc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=([-0x3c60]:2 << 0x5), a5=a0 at entry (arg0).
  The `jal` at 0xe0 calls cmn_err with a0=0x0, a1=sym(.rodata), a2=[[a0+736]:8+68], a3=one of 0x0, 0x1.
  The `jal` at 0x108 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=[[a0+736]:8+28], a3=[[a0+736]:8+68], a5=a0 at entry (arg0).
  The `bne` branch at 0x44 targets 0xb4, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0x58 targets 0xf0, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x60 targets 0x84, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x7c targets 0x98 and is always taken.
  The `bne` branch at 0xa4 targets 0xd0, is taken when a3(=one of 0x0, 0x1) != 0, and falls through when a3(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xc8 targets 0x98 and is always taken.
  The `beq` branch at 0xe8 targets 0xac and is always taken.
  The `beq` branch at 0x114 targets 0x98 and is always taken.
  The return at 0xac has v0 = ret(cmn_err).
- `odsyFlagInterrupt` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)` at 0x11c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)`.
  Range: 0x11c-0x534 (1048 bytes).
  It occupies 1048 bytes.
  The `ld` at 0x124 loads 8 bytes from a0 (arg0 at entry) +0x2e0.
  The `lh` at 0x138 loads 2 bytes from abs 0xffffffffffffc3a0.
  The `lw` at 0x13c loads 4 bytes from [a0+736]:8 +0x1014.
  The `lw` at 0x140 loads 4 bytes from [a0+736]:8 +0x1034.
  The `lw` at 0x158 loads 4 bytes from ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0x10.
  The `sw` at 0x164 stores 4 bytes to ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0x10.
  The `sw` at 0x294 stores 4 bytes to [a0+736]:8 +0x101c.
  The `lw` at 0x49c loads 4 bytes from a0 (arg0 at entry) +0x56fc.
  The `sw` at 0x4a8 stores 4 bytes to a0 (arg0 at entry) +0x56fc.
  The `jal` at 0x16c calls odsyLowaterInterrupt with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x19c calls odsyGenlockInterrupt with a0=a0 at entry (arg0), a1=0x40000000, a2=?, a3=?.
  The `jal` at 0x2a8 calls odsy_teardown with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x2c8 calls cmn_err with a0=0x5, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x2e4 calls cmn_err with a0=0x5, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x300 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x31c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x338 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x354 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x370 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x38c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x3a8 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x3c4 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x3e0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x3fc calls cmn_err with a0=0x5, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x418 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x434 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x450 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x46c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x488 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x4c0 calls cmn_err with a0=0x5, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+22268]+1.
  The `jal` at 0x4dc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x4f8 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x514 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x160 targets 0x178, is taken when (s1(?) & 0x200) == 0, and falls through when (s1(?) & 0x200) != 0.
  The `bne` branch at 0x180 targets 0x2c0, is taken when (s1(?) & v0(=0x2000000)) != 0, and falls through when (s1(?) & v0(=0x2000000)) == 0.
  The `beq` branch at 0x190 targets 0x1ac, is taken when (s1(?) & v1(=0xffffffff80000000)) == 0, and falls through when (s1(?) & v1(=0xffffffff80000000)) != 0.
  The `bne` branch at 0x1b0 targets 0x2d8, is taken when (s1(?) & a1(=0x40000000)) != 0, and falls through when (s1(?) & a1(=0x40000000)) == 0.
  The `bne` branch at 0x1bc targets 0x2f4, is taken when (s1(?) & at(=0x20000000)) != 0, and falls through when (s1(?) & at(=0x20000000)) == 0.
  The `bne` branch at 0x1c8 targets 0x310, is taken when (s1(?) & v0(=0x10000000)) != 0, and falls through when (s1(?) & v0(=0x10000000)) == 0.
  The `bne` branch at 0x1d4 targets 0x32c, is taken when (s1(?) & v1(=0x8000000)) != 0, and falls through when (s1(?) & v1(=0x8000000)) == 0.
  The `bne` branch at 0x1e0 targets 0x348, is taken when (s1(?) & a1(=0x1000000)) != 0, and falls through when (s1(?) & a1(=0x1000000)) == 0.
  The `bne` branch at 0x1ec targets 0x364, is taken when (s1(?) & at(=0x800000)) != 0, and falls through when (s1(?) & at(=0x800000)) == 0.
  The `bne` branch at 0x1f8 targets 0x380, is taken when (s1(?) & v0(=0x400000)) != 0, and falls through when (s1(?) & v0(=0x400000)) == 0.
  The `bne` branch at 0x204 targets 0x39c, is taken when (s1(?) & v1(=0x200000)) != 0, and falls through when (s1(?) & v1(=0x200000)) == 0.
  The `bne` branch at 0x210 targets 0x3b8, is taken when (s1(?) & a1(=0x100000)) != 0, and falls through when (s1(?) & a1(=0x100000)) == 0.
  The `bne` branch at 0x21c targets 0x3d4, is taken when (s1(?) & at(=0x40000)) != 0, and falls through when (s1(?) & at(=0x40000)) == 0.
  The `bne` branch at 0x22c targets 0x3f0, is taken when (s1(?) & v0(=0x3c000)) != 0, and falls through when (s1(?) & v0(=0x3c000)) == 0.
  The `bne` branch at 0x234 targets 0x40c, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0x23c targets 0x428, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0x244 targets 0x444, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0x24c targets 0x460, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0x254 targets 0x47c, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0x25c targets 0x498, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0x264 targets 0x4d0, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0x26c targets 0x4ec, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0x274 targets 0x508, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0x288 targets 0x2a0, is taken when (a1(=[[a0+736]:8+4116]) & at(=0x39f02587)) != 0, and falls through when (a1(=[[a0+736]:8+4116]) & at(=0x39f02587)) == 0.
  The `beq` branch at 0x298 targets 0x2b8 and is always taken.
  The `beq` branch at 0x2d0 targets 0x188 and is always taken.
  The `beq` branch at 0x2ec targets 0x1b4 and is always taken.
  The `beq` branch at 0x308 targets 0x1c0 and is always taken.
  The `beq` branch at 0x324 targets 0x1cc and is always taken.
  The `beq` branch at 0x340 targets 0x1d8 and is always taken.
  The `beq` branch at 0x35c targets 0x1e4 and is always taken.
  The `beq` branch at 0x378 targets 0x1f0 and is always taken.
  The `beq` branch at 0x394 targets 0x1fc and is always taken.
  The `beq` branch at 0x3b0 targets 0x208 and is always taken.
  The `beq` branch at 0x3cc targets 0x214 and is always taken.
  The `beq` branch at 0x3e8 targets 0x220 and is always taken.
  The `beq` branch at 0x404 targets 0x230 and is always taken.
  The `beq` branch at 0x420 targets 0x238 and is always taken.
  The `beq` branch at 0x43c targets 0x240 and is always taken.
  The `beq` branch at 0x458 targets 0x248 and is always taken.
  The `beq` branch at 0x474 targets 0x250 and is always taken.
  The `beq` branch at 0x490 targets 0x258 and is always taken.
  The `beq` branch at 0x4a4 targets 0x524, is taken when (s1(?) & 0x8) == 0, and falls through when (s1(?) & 0x8) != 0.
  The `beq` branch at 0x4c8 targets 0x260 and is always taken.
  The `beq` branch at 0x4e4 targets 0x268 and is always taken.
  The `beq` branch at 0x500 targets 0x270 and is always taken.
  The `beq` branch at 0x51c targets 0x278 and is always taken.
  The `beq` branch at 0x52c targets 0x4b8 and is always taken.
  The return at 0x2b8 has v0 = one of [a0+736]:8, ret(odsy_teardown).
- `odsyDmaInterrupt` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)` at 0x534 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)`.
  Range: 0x534-0x574 (64 bytes).
  It occupies 64 bytes.
  The `lh` at 0x54c loads 2 bytes from abs 0xffffffffffffc3a0.
  The `lw` at 0x55c loads 4 bytes from ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0x10.
  The `sw` at 0x564 stores 4 bytes to ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0x10.
  The `jal` at 0x544 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x56c has v0 = ([-0x3c60]:2 << 0x5).
- `odsySsyncInterrupt` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)` at 0x574 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)`.
  Range: 0x574-0x5bc (72 bytes).
  It occupies 72 bytes.
  The `lh` at 0x590 loads 2 bytes from abs 0xffffffffffffc3a0.
  The `lw` at 0x5a4 loads 4 bytes from ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0x10.
  The `sw` at 0x5b8 stores 4 bytes to ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0x10.
  The `jal` at 0x580 calls odsySwap_softsync_intr with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x588 calls odsyDMAWakeup with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The return at 0x5b4 has v0 = ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)).
- `odsyGenlockInterrupt` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)` at 0x5bc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)`.
  Range: 0x5bc-0x1104 (2888 bytes).
  It occupies 2888 bytes.
  12 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x5720, including `lw` at 0x5d0, `lw` at 0x614, `lw` at 0x6b4.
  33 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2e0, including `ld` at 0x5f4, `ld` at 0x628, `ld` at 0x6c0.
  The `lw` at 0x604 loads 4 bytes from [a0+736]:8 +0x233e6c.
  The `lw` at 0x61c loads 4 bytes from a0 (arg0 at entry) +0x5690.
  The `lw` at 0x634 loads 4 bytes from [a0+736]:8 +0x233e64.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x124, including `lw` at 0x644, `lw` at 0x670, `lw` at 0x734.
  The `lbu` at 0x67c loads 1 byte from a0 (arg0 at entry) +0x28ff.
  3 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x56e8, including `sb` at 0x690, `sb` at 0x754, `sb` at 0xa00.
  The `lbu` at 0x698 loads 1 byte from a0 (arg0 at entry) +0x2903.
  The `lbu` at 0x6a8 loads 1 byte from a0 (arg0 at entry) +0x2907.
  22 such `sd` accesses store 8 bytes to [a0+736]:8 +0x400000, including `sd` at 0x708, `sd` at 0x8e4, `sd` at 0xa8c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x5690, including `sw` at 0x71c, `sw` at 0x8f8.
  The `lbu` at 0x740 loads 1 byte from a0 (arg0 at entry) +0x290b.
  The `lbu` at 0x75c loads 1 byte from a0 (arg0 at entry) +0x290f.
  The `lbu` at 0x76c loads 1 byte from a0 (arg0 at entry) +0x2913.
  The `ld` at 0x808 loads 8 bytes from a0 (arg0 at entry) +0x0.
  10 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2828, including `ld` at 0x824, `ld` at 0x92c, `ld` at 0x9a4.
  20 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x55f0, including `lw` at 0xa3c, `lw` at 0xa90, `lw` at 0xae8.
  10 such `lhu` accesses load 2 bytes from a0 (arg0 at entry) +0x2830, including `lhu` at 0xa40, `lhu` at 0xa9c, `lhu` at 0xc60.
  20 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x55f0, including `sw` at 0xa6c, `sw` at 0xabc, `sw` at 0xb10.
  5 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x2828, including `sd` at 0xb24, `sd` at 0xd3c, `sd` at 0xe4c.
  The `jal` at 0x668 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x68c calls odsy_i2cPLLRegWrite with a0=a0+22216, a1=0x1, a2=[a0+10495]:1, a3=0x58.
  The `jal` at 0x69c calls odsy_i2cPLLRegWrite with a0=a0+22216, a1=0x2, a2=[a0+10499]:1, a3=?.
  The `jal` at 0x6ac calls odsy_i2cPLLRegWrite with a0=a0+22216, a1=0x6, a2=[a0+10503]:1, a3=?.
  The `jal` at 0x6c4 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0x0, a2=?, a3=?.
  The `jal` at 0x72c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x750 calls odsy_i2cPLLRegWrite with a0=a0+22216, a1=0x1, a2=[a0+10507]:1, a3=0x58.
  The `jal` at 0x760 calls odsy_i2cPLLRegWrite with a0=a0+22216, a1=0x2, a2=[a0+10511]:1, a3=?.
  The `jal` at 0x770 calls odsy_i2cPLLRegWrite with a0=a0+22216, a1=0x6, a2=[a0+10515]:1, a3=?.
  The `jal` at 0x788 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0x0, a2=?, a3=?.
  The `jal` at 0x80c calls rrmGenlockNotify with a0=[a0]:8, a1=0x0, a2=?, a3=?.
  The `jal` at 0x81c calls mutex_spinlock with a0=a0+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x838 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x844 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x854 calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x868 calls odsy_i2cPLLRegWrite with a0=a0+22216, a1=0x0, a2=0x1, a3=?.
  The `jal` at 0x880 calls odsy_i2cPLLRegWrite with a0=a0+22216, a1=0x7, a2=?, a3=?.
  The `jal` at 0x894 calls odsy_i2cPLLRegWrite with a0=a0+22216, a1=0x0, a2=0x11, a3=?.
  The `jal` at 0x8a8 calls odsy_i2cPLLRegWrite with a0=a0+22216, a1=0x7, a2=?, a3=?.
  The `jal` at 0x904 calls psema with a0=a0+10256, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x924 calls mutex_spinlock with a0=a0+10272, a1=[a0+22304], a2=?, a3=?.
  The `jal` at 0x940 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=a0+10256, a3=?.
  The `jal` at 0x94c calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x95c calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x978 calls psema with a0=a0+10256, a1=0x19, a2=?, a3=?.
  The `jal` at 0x99c calls mutex_spinlock with a0=a0+10272, a1=[a0+22304], a2=?, a3=?.
  The `jal` at 0x9b8 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=[a0+10280]:8.
  The `jal` at 0x9c4 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x9d4 calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x9fc calls odsy_i2cPLLRegRead with a0=a0+22216, a1=0x7, a2=sp-144, a3=?.
  The `jal` at 0xa14 calls psema with a0=a0+10256, a1=0x19, a2=?, a3=?.
  The `jal` at 0xa24 calls psema with a0=a0+10256, a1=0x19, a2=?, a3=?.
  The `jal` at 0xa34 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xb34 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a5=-0x2.
  The `jal` at 0xb48 calls vsema with a0=a0+10256, a1=?, a2=a0+10256, a3=?.
  The `jal` at 0xb54 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xb6c calls vsema with a0=a0+10256, a1=?, a2=?, a3=[a0+10280]:8.
  The `jal` at 0xb78 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xb94 calls vsema with a0=a0+10256, a1=a0+10256, a2=?, a3=?.
  The `jal` at 0xba0 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xbb0 calls mutex_spinlock with a0=a0+10272, a1=?, a2=0x3920400100000000, a3=[a0+22304].
  The `jal` at 0xbd0 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xbdc calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0xbec calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xc04 calls mutex_spinlock with a0=a0+10272, a1=?, a2=?, a3=[a0+736]:8+0x400000.
  The `jal` at 0xc24 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=a0+10256, a3=?.
  The `jal` at 0xc30 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0xc40 calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xc54 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xd54 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a6=([a0+22000] | 0x2).
  The `jal` at 0xd64 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xe64 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a6=([a0+22000] | 0x2).
  The `jal` at 0xe88 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0xe98 calls vsema with a0=a0+10256, a1=?, a2=?, a3=?.
  The `jal` at 0xea4 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xeb4 calls vsema with a0=a0+10256, a1=?, a2=a0+10256, a3=?.
  The `jal` at 0xec0 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xed4 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xfdc calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a5=-0x2.
  The `jal` at 0xfec calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10f4 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a5=-0x2.
  The `beq` branch at 0x5e8 targets 0x8fc, is taken when a1(=[a0+22304]) == 0, and falls through when a1(=[a0+22304]) != 0.
  The `beq` branch at 0x600 targets 0x91c, is taken when a1(=[a0+22304]) == 0, and falls through when a1(=[a0+22304]) != 0.
  The `beq` branch at 0x60c targets 0xe74, is taken when (s2(=[[a0+736]:8+2309740]) & 0x1) == 0, and falls through when (s2(=[[a0+736]:8+2309740]) & 0x1) != 0.
  The `beq` branch at 0x620 targets 0x970, is taken when a1(=[a0+22304]) == 0, and falls through when a1(=[a0+22304]) != 0.
  The `beq` branch at 0x630 targets 0x990, is taken when a1(=[a0+22304]) == 0, and falls through when a1(=[a0+22304]) != 0.
  The `beq` branch at 0x63c targets 0x7cc, is taken when (v0(?) & 0x40) == 0, and falls through when (v0(?) & 0x40) != 0.
  The `blez` branch at 0x648 targets 0x9e8, is taken when a2(=[a0+292]) <= 0 (signed), and falls through when a2(=[a0+292]) > 0 (signed).
  The `beq` branch at 0x654 targets 0x720, is taken when (s2(=[[a0+736]:8+2309740]) & 0x2) == 0, and falls through when (s2(=[[a0+736]:8+2309740]) & 0x2) != 0.
  The `blez` branch at 0x674 targets 0x864, is taken when a2(=[a0+292]) <= 0 (signed), and falls through when a2(=[a0+292]) > 0 (signed).
  The `beq` branch at 0x6b8 targets 0xa14, is taken when at(=[a0+22304]) == 0, and falls through when at(=[a0+22304]) != 0.
  The `bne` branch at 0x6d0 targets 0x7a4, is taken when v0(=ret(odsy_poll_dfifo_level)) != 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) == 0.
  The `beq` branch at 0x710 targets 0xbb0, is taken when a3(=[a0+22304]) == 0, and falls through when a3(=[a0+22304]) != 0.
  The `beq` branch at 0x718 targets 0x7a4 and is always taken.
  The `blez` branch at 0x738 targets 0x890, is taken when a2(=[a0+292]) <= 0 (signed), and falls through when a2(=[a0+292]) > 0 (signed).
  The `beq` branch at 0x77c targets 0xa24, is taken when at(=[a0+22304]) == 0, and falls through when at(=[a0+22304]) != 0.
  The `beq` branch at 0x794 targets 0x8b8, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x7ac targets 0x7f4, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x7b8 targets 0x7e0, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x7c4 targets 0x81c, is taken when at(=[a0+22304]) == 0, and falls through when at(=[a0+22304]) != 0.
  The `beq` branch at 0x7e4 targets 0x7cc, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x7ec targets 0x7c4 and is always taken.
  The `bne` branch at 0x800 targets 0x7b4, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x814 targets 0x7b4 and is always taken.
  The `beq` branch at 0x828 targets 0xb8c, is taken when at(=[a0+10280]:8) == 0, and falls through when at(=[a0+10280]:8) != 0.
  The `beq` branch at 0x84c targets 0xa34, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x85c targets 0x7cc and is always taken.
  The `beq` branch at 0x888 targets 0x6b8 and is always taken.
  The `beq` branch at 0x8b0 targets 0x77c and is always taken.
  The `beq` branch at 0x8ec targets 0xbfc, is taken when v1(=[a0+22304]) == 0, and falls through when v1(=[a0+22304]) != 0.
  The `beq` branch at 0x8f4 targets 0x79c and is always taken.
  The `beq` branch at 0x914 targets 0x5f0 and is always taken.
  The `beq` branch at 0x934 targets 0xb44, is taken when v1(=[a0+10280]:8) == 0, and falls through when v1(=[a0+10280]:8) != 0.
  The `beq` branch at 0x954 targets 0xc54, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x968 targets 0x608 and is always taken.
  The `beq` branch at 0x988 targets 0x628 and is always taken.
  The `beq` branch at 0x9ac targets 0xb68, is taken when a3(=[a0+10280]:8) == 0, and falls through when a3(=[a0+10280]:8) != 0.
  The `beq` branch at 0x9cc targets 0xd64, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x9e0 targets 0x638 and is always taken.
  The `beq` branch at 0xa0c targets 0x650 and is always taken.
  The `beq` branch at 0xa1c targets 0x6c4 and is always taken.
  The `beq` branch at 0xa2c targets 0x788 and is always taken.
  The `beq` branch at 0xa54 targets 0xacc, is taken when 0 >= a1(?) (unsigned), and falls through when 0 < a1(?) (unsigned).
  The `beq` branch at 0xae0 targets 0xb1c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0xb3c targets 0x854 and is always taken.
  The `beq` branch at 0xb60 targets 0x608 and is always taken.
  The `beq` branch at 0xb84 targets 0x638 and is always taken.
  The `beq` branch at 0xba8 targets 0x7cc and is always taken.
  The `beq` branch at 0xbc4 targets 0xe98, is taken when at(=[a0+10280]:8) == 0, and falls through when at(=[a0+10280]:8) != 0.
  The `beq` branch at 0xbe4 targets 0xed4, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0xbf4 targets 0x718 and is always taken.
  The `beq` branch at 0xc18 targets 0xeb4, is taken when v1(=[a0+10280]:8) == 0, and falls through when v1(=[a0+10280]:8) != 0.
  The `beq` branch at 0xc38 targets 0xfec, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0xc4c targets 0x8f4 and is always taken.
  The `beq` branch at 0xc74 targets 0xcec, is taken when 0 >= a4(?) (unsigned), and falls through when 0 < a4(?) (unsigned).
  The `beq` branch at 0xd00 targets 0xd3c, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xd5c targets 0x95c and is always taken.
  The `beq` branch at 0xd84 targets 0xdfc, is taken when 0 >= a4(?) (unsigned), and falls through when 0 < a4(?) (unsigned).
  The `beq` branch at 0xe10 targets 0xe4c, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xe6c targets 0x9d4 and is always taken.
  The `beq` branch at 0xe90 targets 0x7b4 and is always taken.
  The `beq` branch at 0xeac targets 0x718 and is always taken.
  The `beq` branch at 0xecc targets 0x8f4 and is always taken.
  The `beq` branch at 0xef4 targets 0xf74, is taken when 0 >= a4(?) (unsigned), and falls through when 0 < a4(?) (unsigned).
  The `beq` branch at 0xf88 targets 0xfc4, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xfe4 targets 0xbec and is always taken.
  The `beq` branch at 0x100c targets 0x108c, is taken when 0 >= a4(?) (unsigned), and falls through when 0 < a4(?) (unsigned).
  The `beq` branch at 0x10a0 targets 0x10dc, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x10fc targets 0xc40 and is always taken.
  The return at 0x7d8 has v0 = one of ?, ret(vsema), ret(mutex_spinunlock).
- `gf_OdsyMapGfx` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Range: 0x0-0x28c (652 bytes).
  It occupies 652 bytes.
  The `ld` at 0x1c loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0x28 loads 8 bytes from a0 (arg0 at entry) +0x28.
  10 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2e0, including `ld` at 0x4c, `ld` at 0x78, `ld` at 0xb8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0x94, `lw` at 0x1d0.
  The `sw` at 0x1d8 stores 4 bytes to a0 (arg0 at entry) +0x30.
  3 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2d0, including `ld` at 0x1dc, `ld` at 0x23c, `ld` at 0x248.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x38, including `sw` at 0x208, `sw` at 0x218.
  The `lh` at 0x20c loads 2 bytes from abs 0xffffffffffffc3a0.
  The `lw` at 0x24c loads 4 bytes from [a0+32]:8 +0x28a4.
  The `sw` at 0x270 stores 4 bytes to [a0+32]:8 +0x28a4.
  The `sw` at 0x274 stores 4 bytes to [[a0+32]:8+736]:8 +0x1074.
  The `sw` at 0x280 stores 4 bytes to [a0+32]:8 +0x28a8.
  The `sw` at 0x288 stores 4 bytes to [[a0+32]:8+736]:8 +0x107c.
  The `jal` at 0x20 calls gfx_flow_clean_up_other_gfxp with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x34 calls ddv_getaddr with a0=[a0+40]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x64 calls v_mapkvsegment with a0=[a0+40]:8, a1=ret(ddv_getaddr), a2=[[a0+32]:8+736]:8+0x100000, a3=0x1, a4=0x0.
  The `jal` at 0x8c calls v_mapkvsegment with a0=[a0+40]:8, a1=ret(ddv_getaddr)+16384, a2=[[a0+32]:8+736]:8+0x120000, a3=0x1, a4=0x2.
  The `jal` at 0xbc calls v_mapkvsegment with a0=[a0+40]:8, a1=ret(ddv_getaddr)+32768, a2=[[a0+32]:8+736]:8, a3=0x2, a4=0x2.
  The `jal` at 0xe8 calls v_mapkvsegment with a0=[a0+40]:8, a1=ret(ddv_getaddr)+65536, a2=[[a0+32]:8+736]:8+0x110000, a3=0x1, a4=0x2.
  The `jal` at 0x11c calls v_mapkvsegment with a0=[a0+40]:8, a1=ret(ddv_getaddr)+81920, a2=[[a0+32]:8+736]:8+0x118000, a3=0x1, a4=0x0.
  The `jal` at 0x14c calls v_mapkvsegment with a0=[a0+40]:8, a1=ret(ddv_getaddr)+98304, a2=[[a0+32]:8+736]:8+0x200000, a3=0x1, a4=0x2.
  The `jal` at 0x17c calls v_mapkvsegment with a0=[a0+40]:8, a1=ret(ddv_getaddr)+114688, a2=[[a0+32]:8+736]:8+0x220000, a3=0x8, a4=0x2.
  The `jal` at 0x1ac calls v_mapkvsegment with a0=[a0+40]:8, a1=ret(ddv_getaddr)+245760, a2=[[a0+32]:8+736]:8+0x400000, a3=0x1, a4=0x2.
  The `jal` at 0x1c8 calls splhi with a0=?, a1=?, a2=?, a3=0x1.
  The `jal` at 0x1ec calls gfx_flow_am_i_attached with a0=[[a0+32]:8+720]:8, a1=ret(splhi), a2=?, a3=?.
  The `jal` at 0x200 calls splx with a0=ret(splhi), a1=ret(splhi), a2=?, a3=?.
  The `jal` at 0x240 calls gfx_flow_attach_me with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x250 calls gfx_flow_credit_tnum_get with a0=[[a0+32]:8+720]:8, a1=[[a0+32]:8+10404], a2=?, a3=?.
  The `beq` branch at 0x9c targets 0x1b8, is taken when (at(=[a0+48]) & 0x20) == 0, and falls through when (at(=[a0+48]) & 0x20) != 0.
  The `beq` branch at 0x1e4 targets 0x1fc, is taken when a0(=[[a0+32]:8+720]:8) == 0, and falls through when a0(=[[a0+32]:8+720]:8) != 0.
  The `beq` branch at 0x1f4 targets 0x23c, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x284 targets 0x1fc and is always taken.
  The return at 0x234 has v0 = one of -0x1, 0x0.
- `gf_OdsyUnMapGfx` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)` at 0x28c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Range: 0x28c-0x408 (380 bytes).
  It occupies 380 bytes.
  The `ld` at 0x2a0 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0x2ac loads 8 bytes from [a0+32]:8 +0x48.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0x2bc, `lw` at 0x2d4, `lw` at 0x338.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x30, including `sw` at 0x2e0, `sw` at 0x340.
  2 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2d0, including `ld` at 0x2e4, `ld` at 0x31c.
  2 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2e0, including `ld` at 0x300, `ld` at 0x310.
  The `sw` at 0x308 stores 4 bytes to [a0+32]:8 +0x28a8.
  The `sw` at 0x30c stores 4 bytes to [[a0+32]:8+736]:8 +0x107c.
  The `lw` at 0x314 loads 4 bytes from [[a0+32]:8+736]:8 +0x106c.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x28, including `ld` at 0x350, `ld` at 0x3b8.
  The `lw` at 0x380 loads 4 bytes from ret(gthread_find) +0x8.
  The `ld` at 0x394 loads 8 bytes from ret(gthread_find) +0x0.
  The `sw` at 0x3e4 stores 4 bytes to a0 (arg0 at entry) +0x38.
  The `jal` at 0x2a4 calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2cc calls splhi with a0=?, a1=[a0+48], a2=?, a3=?.
  The `jal` at 0x2f0 calls gfx_flow_am_i_attached with a0=[[a0+32]:8+720]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x320 calls gfx_flow_detach_me with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=0x1, a3=[[a0+32]:8+736]:8.
  The `jal` at 0x32c calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x348 calls splx with a0=ret(splhi), a1=[a0+48], a2=?, a3=?.
  The `jal` at 0x370 calls curthreadhandle with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x378 calls gthread_find with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x390 calls thread_issproc with a0=[ret(gthread_find)]:8, a1=?, a2=-0x1, a3=?.
  The `jal` at 0x3b4 calls ddv_invalphys_fal with a0=[a0+40]:8, a1=0x0, a2=-0x1, a3=?.
  The `jal` at 0x3e0 calls gf_OdsyInvalTLB with a0=a0 at entry (arg0), a1=?, a2=0x2, a3=?.
  The `jal` at 0x3f8 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=0x2, a3=?.
  The `bne` branch at 0x2b8 targets 0x33c, is taken when at(=[[a0+32]:8+72]:8) != s0(=a0), and falls through when at(=[[a0+32]:8+72]:8) == s0(=a0).
  The `beq` branch at 0x2c4 targets 0x33c, is taken when (a1(=[a0+48]) & 0x1) == 0, and falls through when (a1(=[a0+48]) & 0x1) != 0.
  The `beq` branch at 0x2e8 targets 0x328, is taken when a0(=[[a0+32]:8+720]:8) == 0, and falls through when a0(=[[a0+32]:8+720]:8) != 0.
  The `beq` branch at 0x2f8 targets 0x32c, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `bne` branch at 0x35c targets 0x370, is taken when at(=[a0+40]:8) != 0, and falls through when at(=[a0+40]:8) == 0.
  The `beq` branch at 0x388 targets 0x3b0, is taken when (v1(=[ret(gthread_find)+8]) & 0x4) == 0, and falls through when (v1(=[ret(gthread_find)+8]) & 0x4) != 0.
  The `beq` branch at 0x398 targets 0x3ac, is taken when v0(=ret(thread_issproc)) == 0, and falls through when v0(=ret(thread_issproc)) != 0.
  The `beq` branch at 0x3a4 targets 0x368 and is always taken.
  The `beq` branch at 0x3c0 targets 0x3d8, is taken when v0(=ret(ddv_invalphys_fal)) == 0, and falls through when v0(=ret(ddv_invalphys_fal)) != 0.
  The `bne` branch at 0x3c8 targets 0x3f4, is taken when v0(=ret(ddv_invalphys_fal)) != a2(=0x2), and falls through when v0(=ret(ddv_invalphys_fal)) == a2(=0x2).
  The `beq` branch at 0x3d0 targets 0x368 and is always taken.
  The `beq` branch at 0x3ec targets 0x3d0 and is always taken.
  The `beq` branch at 0x400 targets 0x3d0 and is always taken.
  The return at 0x368 has v0 = 0x0.
- `gf_OdsyInvalTLB` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)` at 0x408 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Range: 0x408-0x488 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0x420 loads 4 bytes from ret(gthread_find) +0x8.
  The `ld` at 0x434 loads 8 bytes from ret(gthread_find) +0x0.
  The `ld` at 0x45c loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `lh` at 0x464 loads 2 bytes from abs 0xffffffffffffc3a0.
  The `lw` at 0x46c loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `sw` at 0x478 stores 4 bytes to a0 (arg0 at entry) +0x38.
  The `jal` at 0x410 calls curthreadhandle with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x418 calls gthread_find with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x430 calls thread_issproc with a0=[ret(gthread_find)]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x458 calls ddv_invaltlb with a0=[a0+40]:8, a1=0x0, a2=-0x1, a3=?.
  The `beq` branch at 0x428 targets 0x450, is taken when (at(=[ret(gthread_find)+8]) & 0x4) == 0, and falls through when (at(=[ret(gthread_find)+8]) & 0x4) != 0.
  The `beq` branch at 0x438 targets 0x44c, is taken when v0(=ret(thread_issproc)) == 0, and falls through when v0(=ret(thread_issproc)) != 0.
  The `beq` branch at 0x480 targets 0x444 and is always taken.
  The return at 0x444 has v0 = 0x0.
- `odsyPinAndMapGctxSwShadowRgn` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)` at 0x488 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Range: 0x488-0x570 (232 bytes).
  It occupies 232 bytes.
  The `sd` at 0x4e0 stores 8 bytes to a0 (arg0 at entry) +0x60.
  The `sd` at 0x4ec stores 8 bytes to a0 (arg0 at entry) +0x68.
  3 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0x4fc, `sw` at 0x530, `sw` at 0x560.
  The `ld` at 0x538 loads 8 bytes from a0 (arg0 at entry) +0x68.
  The `jal` at 0x4a4 calls pte_cachebits with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4c0 calls useracc with a0=a2 at entry (arg2), a1=0x2b78, a2=0x111, a3=0x0.
  The `jal` at 0x4d8 calls maputokv with a0=a2 at entry (arg2), a1=0x2b78, a2=(ret(pte_cachebits) | 0x7), a3=?.
  The `jal` at 0x51c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x540 calls unuseracc with a0=[a0+104]:8, a1=0x2b78, a2=0x111, a3=?.
  The `jal` at 0x554 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0x4c8 targets 0x50c, is taken when v0(=ret(useracc)) != 0, and falls through when v0(=ret(useracc)) == 0.
  The `beq` branch at 0x4e4 targets 0x534, is taken when v0(=ret(maputokv)) == 0, and falls through when v0(=ret(maputokv)) != 0.
  The `beq` branch at 0x52c targets 0x500 and is always taken.
  The `beq` branch at 0x568 targets 0x500 and is always taken.
  The return at 0x504 has v0 = one of 0x0, ret(useracc), 0x16.
- `odsyUnpinAndUnmapGctxRegions` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)` at 0x570 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Range: 0x570-0x65c (236 bytes).
  It occupies 236 bytes.
  The `ld` at 0x570 loads 8 bytes from a0 (arg0 at entry) +0x78.
  The `ld` at 0x584 loads 8 bytes from a0 (arg0 at entry) +0x60.
  The `ld` at 0x5a4 loads 8 bytes from a0 (arg0 at entry) +0x68.
  The `sd` at 0x5ac stores 8 bytes to a0 (arg0 at entry) +0x68.
  The `sd` at 0x5b0 stores 8 bytes to a0 (arg0 at entry) +0x60.
  3 such `ld` accesses load 8 bytes from ret(OdsyNextCSetElem) +0x10, including `ld` at 0x5d8, `ld` at 0x600, `ld` at 0x614.
  The `ld` at 0x5e0 loads 8 bytes from ret(OdsyNextCSetElem) +0x8.
  The `jal` at 0x590 calls unmaputokv with a0=[a0+96]:8, a1=0x2b78, a2=?, a3=?.
  The `jal` at 0x5a0 calls unuseracc with a0=[a0+104]:8, a1=0x2b78, a2=0x111, a3=?.
  The `jal` at 0x5bc calls OdsyInitCSetCursor with a0=a0+224, a1=?, a2=?, a3=?.
  The `jal` at 0x5c4 calls OdsyNextCSetElem with a0=a0+224, a1=?, a2=?, a3=?.
  The `jal` at 0x5dc calls kmem_free with a0=[ret(OdsyNextCSetElem)+8]:8, a1=0x4000, a2=?, a3=?.
  The `jal` at 0x5e8 calls kmem_free with a0=ret(OdsyNextCSetElem), a1=0x20, a2=?, a3=?.
  The `jal` at 0x5f0 calls OdsyNextCSetElem with a0=a0+224, a1=?, a2=?, a3=?.
  The `jal` at 0x60c calls odsyUnmapPages with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=?.
  The `jal` at 0x630 calls OdsyDestroyCSet with a0=a0+224, a1=0x0, a2=?, a3=?.
  The `jal` at 0x64c calls odsyUnmapPages with a0=a0+128, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x57c targets 0x648, is taken when at(=[a0+120]:8) != 0, and falls through when at(=[a0+120]:8) == 0.
  The `beq` branch at 0x588 targets 0x5b4, is taken when a0(=[a0+96]:8) == 0, and falls through when a0(=[a0+96]:8) != 0.
  The `beq` branch at 0x5cc targets 0x628, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x5d4 targets 0x604 and is always taken.
  The `beq` branch at 0x5f8 targets 0x628, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x604 targets 0x5e8, is taken when v1(=[ret(OdsyNextCSetElem)+16]:8) == 0, and falls through when v1(=[ret(OdsyNextCSetElem)+16]:8) != 0.
  The `beq` branch at 0x618 targets 0x5e8, is taken when a1(=[ret(OdsyNextCSetElem)+16]:8) == 0, and falls through when a1(=[ret(OdsyNextCSetElem)+16]:8) != 0.
  The `beq` branch at 0x620 targets 0x5dc and is always taken.
  The `beq` branch at 0x654 targets 0x584 and is always taken.
  The return at 0x640 has v0 = ret(OdsyDestroyCSet).
- `odsyUnmap` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)` at 0x65c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Range: 0x65c-0x6bc (96 bytes).
  It occupies 96 bytes.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x690, `ld` at 0x694, `ld` at 0x698.
  The `jal` at 0x670 calls as_lookup_current with a0=sp-96, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x6a4 calls (unknown callee) with a0=?, a1=?, a2=sp-80, a3=0x0.
  The return at 0x6b4 has v0 = ret(?).
- `odsyUnpinAndUnmapSGRegions` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)` at 0x6bc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Range: 0x6bc-0x75c (160 bytes).
  It occupies 160 bytes.
  3 such `ld` accesses load 8 bytes from ret(OdsyNextCSetElem) +0x8, including `ld` at 0x6ec, `ld` at 0x714, `ld` at 0x738.
  The `ld` at 0x720 loads 8 bytes from ret(OdsyNextCSetElem) +0x10.
  The `jal` at 0x6cc calls OdsyInitCSetCursor with a0=a0+104, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x6d8 calls OdsyNextCSetElem with a0=a0+104, a1=?, a2=?, a3=?.
  The `jal` at 0x6f0 calls kmem_free with a0=[ret(OdsyNextCSetElem)+8]:8, a1=0x4000, a2=?, a3=?.
  The `jal` at 0x6fc calls kmem_free with a0=ret(OdsyNextCSetElem), a1=0x20, a2=?, a3=?.
  The `jal` at 0x704 calls OdsyNextCSetElem with a0=a0+104, a1=?, a2=?, a3=?.
  The `jal` at 0x72c calls odsyUnmapPages with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=?.
  The `jal` at 0x744 calls OdsyDestroyCSet with a0=a0+104, a1=0x0, a2=?, a3=?.
  The `beq` branch at 0x6e0 targets 0x73c, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x6e8 targets 0x718 and is always taken.
  The `beq` branch at 0x70c targets 0x73c, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x718 targets 0x6f0, is taken when a0(=[ret(OdsyNextCSetElem)+8]:8) == 0, and falls through when a0(=[ret(OdsyNextCSetElem)+8]:8) != 0.
  The `beq` branch at 0x724 targets 0x6f0, is taken when at(=[ret(OdsyNextCSetElem)+16]:8) == 0, and falls through when at(=[ret(OdsyNextCSetElem)+16]:8) != 0.
  The `beq` branch at 0x734 targets 0x6f0 and is always taken.
  The return at 0x754 has v0 = ret(OdsyDestroyCSet).
- `odsyPinAndMapASRegions` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)` at 0x75c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Range: 0x75c-0x7e0 (132 bytes).
  It occupies 132 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8, including `ld` at 0x760, `ld` at 0x7c0.
  The `sd` at 0x764 stores 8 bytes to a0 (arg0 at entry) +0x38.
  The `sd` at 0x768 stores 8 bytes to a0 (arg0 at entry) +0x28.
  The `ld` at 0x790 loads 8 bytes from [a0+8]:8 +0x8.
  The `ld` at 0x7d4 loads 8 bytes from [a0+8]:8 +0x10.
  The `jal` at 0x78c calls odsyMapPages with a0=0x0, a1=a0+32, a2=[[a0+8]:8+8]:8, a3=0x10000, a4=sym(.data), a5=0x1, a6=a0+40.
  The `jal` at 0x7d0 calls odsyMapPages with a0=0x0, a1=a0+48, a2=[[a0+8]:8+16]:8, a3=0xc000, a4=sym(.data), a5=0x1, a6=a0+56.
  The `beq` branch at 0x798 targets 0x7ac, is taken when v0(=ret(odsyMapPages)) == 0, and falls through when v0(=ret(odsyMapPages)) != 0.
  The `beq` branch at 0x7d8 targets 0x7a4 and is always taken.
  The return at 0x7a4 has v0 = ret(odsyMapPages).
- `odsyUnpinAndUnmapASRegions` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)` at 0x7e0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Range: 0x7e0-0x848 (104 bytes).
  It occupies 104 bytes.
  The `ld` at 0x7e4 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x7fc loads 8 bytes from a0 (arg0 at entry) +0x38.
  The `jal` at 0x81c calls odsyUnmapPages with a0=a0+40, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x834 calls odsyUnmapPages with a0=a0+56, a1=?, a2=?, a3=?.
  The `bne` branch at 0x7f4 targets 0x818, is taken when at(=[a0+40]:8) != 0, and falls through when at(=[a0+40]:8) == 0.
  The `bne` branch at 0x800 targets 0x830, is taken when v1(=[a0+56]:8) != 0, and falls through when v1(=[a0+56]:8) == 0.
  The `beq` branch at 0x828 targets 0x7fc and is always taken.
  The `beq` branch at 0x840 targets 0x804 and is always taken.
  The return at 0x810 has v0 = ?.
- `odsyPinAndMapPfStatRegions` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)` at 0x848 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Range: 0x848-0x8a8 (96 bytes).
  It occupies 96 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2840, including `lw` at 0x86c, `lw` at 0x88c.
  The `ld` at 0x898 loads 8 bytes from a0 (arg0 at entry) +0x2848.
  The `jal` at 0x894 calls odsyMapPages with a0=0x0, a1=a0+10320, a2=[a0+10312]:8, a3=[a0+10304], a4=sp-64, a5=0x1, a6=a0+10328.
  The return at 0x8a0 has v0 = ret(odsyMapPages).
- `odsyUnpinAndUnmapPfStatRegions` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)` at 0x8a8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Range: 0x8a8-0x8d8 (48 bytes).
  It occupies 48 bytes.
  The `ld` at 0x8a8 loads 8 bytes from a0 (arg0 at entry) +0x2848.
  The `jal` at 0x8c8 calls odsyUnmapPages with a0=a0+10328, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x8b0 targets 0x8c4, is taken when at(=[a0+10312]:8) != 0, and falls through when at(=[a0+10312]:8) == 0.
  The `beq` branch at 0x8d0 targets 0x8bc and is always taken.
  The return at 0x8bc has v0 = one of 0x0, ret(odsyUnmapPages).
- `odsyMapPages` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)` at 0x8d8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Range: 0x8d8-0x9bc (228 bytes).
  It occupies 228 bytes.
  5 such `ld` accesses load 8 bytes from a6 (arg6 at entry) +0x0, including `ld` at 0x92c, `ld` at 0x948, `ld` at 0x970.
  The `sd` at 0x9b8 stores 8 bytes to a1 (arg1 at entry) +0x0.
  The `jal` at 0x908 calls gfxdd_mmap_mem_ex with a0=0x0, a1=a3 at entry (arg3), a2=a0 at entry (arg0), a3=a4 at entry (arg4), a4=a5 at entry (arg5), a5=a6 at entry (arg6).
  The `jal` at 0x928 calls ddv_lock with a0=[a6]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x94c calls ddv_mappages with a0=[a6]:8, a1=0x0, a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x96c calls ddv_unlock with a0=[a6]:8, a1=?, a2=?, a3=?, a4=a1 at entry (arg1).
  The `jal` at 0x988 calls gfxdd_munmap with a0=[a6]:8, a1=?, a2=?, a3=?, a4=ret(ddv_mappages).
  The `jal` at 0x9a8 calls ddv_getaddr with a0=[a6]:8, a1=?, a2=?, a3=?, a4=a1 at entry (arg1).
  The `beq` branch at 0x910 targets 0x924, is taken when v0(=ret(gfxdd_mmap_mem_ex)) == 0, and falls through when v0(=ret(gfxdd_mmap_mem_ex)) != 0.
  The `beq` branch at 0x958 targets 0x968, is taken when a4(=a1) == 0, and falls through when a4(=a1) != 0.
  The `beq` branch at 0x964 targets 0x9a4, is taken when at(=ret(ddv_mappages)) == 0, and falls through when at(=ret(ddv_mappages)) != 0.
  The `beq` branch at 0x97c targets 0x99c, is taken when a4(=ret(ddv_mappages)) == 0, and falls through when a4(=ret(ddv_mappages)) != 0.
  The `beq` branch at 0x994 targets 0x91c and is always taken.
  The `beq` branch at 0x99c targets 0x91c and is always taken.
  The `beq` branch at 0x9b4 targets 0x968 and is always taken.
  The return at 0x91c has v0 = one of 0xc, ret(ddv_mappages), 0x0.
- `odsyUnmapPages` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)` at 0x9bc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Range: 0x9bc-0x9e4 (40 bytes).
  It occupies 40 bytes.
  The `ld` at 0x9bc loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sd` at 0x9c8 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `jal` at 0x9cc calls gfxdd_munmap with a0=[a0]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x9dc has v0 = 0x0.
- `odsyMMinit` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x0-0x1c0 (448 bytes).
  It occupies 448 bytes.
  The `sd` at 0x2c stores 8 bytes to a1 (arg1 at entry) +0x4e8.
  The `sw` at 0x40 stores 4 bytes to a1 (arg1 at entry) +0x4e0.
  The `sd` at 0x50 stores 8 bytes to a1 (arg1 at entry) +0x0.
  5 such `sd` accesses store 8 bytes to ?, including `sd` at 0x68, `sd` at 0xa4, `sd` at 0xb8.
  The `sd` at 0x6c stores 8 bytes to a1 (arg1 at entry) +0x4f8.
  The `sd` at 0x74 stores 8 bytes to a1 (arg1 at entry) +0x4f0.
  The `sd` at 0xa8 stores 8 bytes to a1 (arg1 at entry) +0x578.
  The `sw` at 0xb4 stores 4 bytes to a1 (arg1 at entry) +0x570.
  The `lw` at 0xc0 loads 4 bytes from ?.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0xc4, `sw` at 0xc8, `sw` at 0xe4.
  The `sh` at 0xd0 stores 2 bytes to ?.
  The `ld` at 0xfc loads 8 bytes from ?.
  The `sb` at 0x118 stores 1 byte to a1 (arg1 at entry) +0x248.
  The `sb` at 0x124 stores 1 byte to a1 (arg1 at entry) +0x1c0.
  The `sb` at 0x144 stores 1 byte to ?.
  The `sb` at 0x14c stores 1 byte to a1 (arg1 at entry) +0xb0.
  The `sw` at 0x150 stores 4 bytes to a1 (arg1 at entry) +0x34.
  The `sw` at 0x154 stores 4 bytes to a1 (arg1 at entry) +0x30.
  The `sw` at 0x158 stores 4 bytes to a1 (arg1 at entry) +0x2c.
  The `sw` at 0x15c stores 4 bytes to a1 (arg1 at entry) +0x40.
  The `sw` at 0x164 stores 4 bytes to a1 (arg1 at entry) +0x3c.
  The `sw` at 0x168 stores 4 bytes to a1 (arg1 at entry) +0x38.
  The `sb` at 0x16c stores 1 byte to a1 (arg1 at entry) +0x29.
  The `sw` at 0x170 stores 4 bytes to a1 (arg1 at entry) +0x50.
  The `sh` at 0x174 stores 2 bytes to a1 (arg1 at entry) +0x18.
  The `sd` at 0x178 stores 8 bytes to a1 (arg1 at entry) +0x20.
  The `sw` at 0x180 stores 4 bytes to a1 (arg1 at entry) +0xd8.
  The `sw` at 0x184 stores 4 bytes to a1 (arg1 at entry) +0x270.
  The `sw` at 0x188 stores 4 bytes to a1 (arg1 at entry) +0x1e8.
  The `lw` at 0x18c loads 4 bytes from a1 (arg1 at entry) +0x58.
  The `sw` at 0x190 stores 4 bytes to a1 (arg1 at entry) +0x48.
  The `sw` at 0x194 stores 4 bytes to a1 (arg1 at entry) +0x44.
  The `sb` at 0x1a4 stores 1 byte to a1 (arg1 at entry) +0x28.
  The `sw` at 0x1b0 stores 4 bytes to a1 (arg1 at entry) +0x58.
  The `jal` at 0xc calls odsyPipeNrFromBase with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x64 targets 0x54, is taken when a1(?) < 0x10 (signed), and falls through when a1(?) >= 0x10 (signed).
  The `bne` branch at 0xa0 targets 0x7c, is taken when a1(?) < 0x4 (signed), and falls through when a1(?) >= 0x4 (signed).
  The `beq` branch at 0xb0 targets 0xf4 and is always taken.
  The `beq` branch at 0xf0 targets 0x110, is taken when a1(?) >= 0x10 (signed), and falls through when a1(?) < 0x10 (signed).
  The `beq` branch at 0x100 targets 0xe8, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x108 targets 0xb8 and is always taken.
  The `bne` branch at 0x140 targets 0x128, is taken when a1(?) < 0x4 (signed), and falls through when a1(?) >= 0x4 (signed).
  The return at 0x1b8 has v0 = ?.
- `odsyInitMM` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x1c0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x1c0-0x234 (116 bytes).
  It occupies 116 bytes.
  The `sd` at 0x1e8 stores 8 bytes to a0 (arg0 at entry) +0x950.
  The `sd` at 0x1ec stores 8 bytes to a0 (arg0 at entry) +0x948.
  The `sw` at 0x1f0 stores 4 bytes to a0 (arg0 at entry) +0x93c.
  The `sw` at 0x1f4 stores 4 bytes to a0 (arg0 at entry) +0x938.
  The `sd` at 0x1f8 stores 8 bytes to a0 (arg0 at entry) +0x940.
  The `sw` at 0x1fc stores 4 bytes to a0 (arg0 at entry) +0x984.
  The `sw` at 0x204 stores 4 bytes to a0 (arg0 at entry) +0x97c.
  The `sw` at 0x20c stores 4 bytes to a0 (arg0 at entry) +0x974.
  The `sw` at 0x210 stores 4 bytes to a0 (arg0 at entry) +0x96c.
  The `sw` at 0x214 stores 4 bytes to a0 (arg0 at entry) +0x978.
  The `sw` at 0x218 stores 4 bytes to a0 (arg0 at entry) +0x970.
  The `sw` at 0x220 stores 4 bytes to a0 (arg0 at entry) +0x968.
  The `sd` at 0x224 stores 8 bytes to a0 (arg0 at entry) +0x960.
  The `jal` at 0x1d4 calls OdsyInitCSet with a0=a0+2232, a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1e0 calls OdsyInitCSet with a0=a0+2272, a1=0x4, a2=?, a3=?.
  The return at 0x22c has v0 = 0xc80.
- `mm_init_freespace` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x234 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x234-0x370 (316 bytes).
  It occupies 316 bytes.
  The `lw` at 0x234 loads 4 bytes from a0 (arg0 at entry) +0x694.
  The `ld` at 0x238 loads 8 bytes from a0 (arg0 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xd8, including `lw` at 0x23c, `lw` at 0x360.
  The `lw` at 0x240 loads 4 bytes from [a0]:8 +0xfc.
  The `lw` at 0x244 loads 4 bytes from a0 (arg0 at entry) +0x68c.
  The `lw` at 0x250 loads 4 bytes from a0 (arg0 at entry) +0x684.
  The `sw` at 0x27c stores 4 bytes to a0 (arg0 at entry) +0x698.
  The `sd` at 0x280 stores 8 bytes to a0 (arg0 at entry) +0x668.
  The `sd` at 0x284 stores 8 bytes to a0 (arg0 at entry) +0x660.
  The `sw` at 0x288 stores 4 bytes to a0 (arg0 at entry) +0x654.
  The `sw` at 0x28c stores 4 bytes to a0 (arg0 at entry) +0x650.
  The `sd` at 0x290 stores 8 bytes to a0 (arg0 at entry) +0x658.
  The `sd` at 0x2ec stores 8 bytes to a0 (arg0 at entry) +0x6a0.
  The `sw` at 0x308 stores 4 bytes to a0 (arg0 at entry) +0x6bc.
  The `sd` at 0x314 stores 8 bytes to a0 (arg0 at entry) +0x6a8.
  The `sd` at 0x31c stores 8 bytes to a0 (arg0 at entry) +0x6b0.
  The `sw` at 0x324 stores 4 bytes to a0 (arg0 at entry) +0x6b8.
  The `lw` at 0x354 loads 4 bytes from a0 (arg0 at entry) +0x698.
  The `sw` at 0x358 stores 4 bytes to a0 (arg0 at entry) +0x684.
  The `sw` at 0x35c stores 4 bytes to a0 (arg0 at entry) +0x68c.
  The `sw` at 0x364 stores 4 bytes to a0 (arg0 at entry) +0x694.
  The `jal` at 0x2ac calls kabi_num_lockable_pages with a0=?, a1=?, a2=?, a3=?, a4=0x64.
  The `jal` at 0x2e8 calls kabi_num_lockable_pages with a0=?, a1=?, a2=?, a3=?, a7=0x64.
  The `jal` at 0x33c calls cmn_err with a0=0x1, a1=sym(.rodata), a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x34c calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0x278 targets 0x338, is taken when a1(?) < at(=([a0+1668] + ([a0+1676] + [a0+1684]))) (signed), and falls through when a1(?) >= at(=([a0+1668] + ([a0+1676] + [a0+1684]))) (signed).
  The `beq` branch at 0x368 targets 0x280 and is always taken.
  The return at 0x330 has v0 = 0x1.
- `gfP_OdsyMMdebug` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x370 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x370-0x6c4 (852 bytes).
  It occupies 852 bytes.
  10 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x378, `sw` at 0x414, `sw` at 0x498.
  11 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x20, including `ld` at 0x3a0, `ld` at 0x3d8, `ld` at 0x418.
  The `ld` at 0x3dc loads 8 bytes from [a0+32]:8 +0x48.
  6 such `lw` accesses load 4 bytes from [a0+32]:8 +0x50, including `lw` at 0x3f8, `lw` at 0x41c, `lw` at 0x4a0.
  6 such `sw` accesses store 4 bytes to [a0+32]:8 +0x50, including `sw` at 0x40c, `sw` at 0x424, `sw` at 0x4a8.
  4 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x0, including `lw` at 0x428, `lw` at 0x4b4, `lw` at 0x5b0.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x464, `ld` at 0x514.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x470, `lw` at 0x53c, `lw` at 0x548.
  The `sd` at 0x5fc stores 8 bytes to [a0+32]:8 +0x48.
  2 such `lw` accesses load 4 bytes from [a0+32]:8 +0x68, including `lw` at 0x604, `lw` at 0x61c.
  The `jal` at 0x39c calls copyin with a0=a2 at entry (arg2), a1=sp-160, a2=0x18, a3=a3 at entry (arg3).
  The `jal` at 0x408 calls SpewObjectToUser with a0=[a0+32]:8+768, a1=-0x1, a2=-0x1, a3=0x0, a4=sp-128, a5=sp-136, a6=[[a0+32]:8+80]+1.
  The `jal` at 0x48c calls SpewObjectToUser with a0=?, a1=0x0, a2=-0x2, a3=?, a4=sp-128, a5=sp-136.
  The `jal` at 0x4bc calls OdsyInitCSetCursor with a0=[a0+32]:8+2232, a1=?, a2=?, a3=?.
  The `jal` at 0x4c4 calls OdsyNextCSetElem with a0=[a0+32]:8+2232, a1=?, a2=?, a3=?.
  The `jal` at 0x4e4 calls OdsyInitCSetCursor with a0=ret(OdsyNextCSetElem)+64, a1=?, a2=?, a3=?.
  The `jal` at 0x4f0 calls OdsyNextCSetElem with a0=ret(OdsyNextCSetElem)+64, a1=?, a2=?, a3=?.
  The `jal` at 0x544 calls SpewObjectToUser with a0=?, a1=?, a2=?, a3=?, a4=sp-128, a5=sp-136.
  The `jal` at 0x564 calls OdsyNextCSetElem with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x574 calls OdsyNextCSetElem with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x58c calls copyout with a0=sp-136, a1=?, a2=0x4, a3=?.
  The `jal` at 0x5f0 calls psema with a0=[a0+32]:8+56, a1=0x219, a2=?, a3=?, a4=[[a0+32]:8+72]:8.
  The `jal` at 0x610 calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x638 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x658 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x68c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a5=[[a0+32]:8+80]-1, a6=[a0+32]:8.
  The `jal` at 0x6b4 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=0xe, a3=?.
  The `bne` branch at 0x3a4 targets 0x630, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `beq` branch at 0x3b0 targets 0x5dc, is taken when v0(?) == at(=0x2), and falls through when v0(?) != at(=0x2).
  The `bne` branch at 0x3b8 targets 0x650, is taken when v0(?) != v1(=0x1), and falls through when v0(?) == v1(=0x1).
  The `bne` branch at 0x3d0 targets 0x5b4, is taken when v0(?) < 0x11 (signed), and falls through when v0(?) >= 0x11 (signed).
  The `bne` branch at 0x3e0 targets 0x5ec, is taken when a4(=[[a0+32]:8+72]:8) != s1(=a0), and falls through when a4(=[[a0+32]:8+72]:8) == s1(=a0).
  The `beq` branch at 0x410 targets 0x444, is taken when v0(=ret(SpewObjectToUser)) == 0, and falls through when v0(=ret(SpewObjectToUser)) != 0.
  The `beq` branch at 0x448 targets 0x45c and is always taken.
  The `beq` branch at 0x458 targets 0x4b8, is taken when s4(?) >= 0x10 (signed), and falls through when s4(?) < 0x10 (signed).
  The `beq` branch at 0x468 targets 0x450, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x478 targets 0x450, is taken when (a1(?) & 0x1) == 0, and falls through when (a1(?) & 0x1) != 0.
  The `beq` branch at 0x494 targets 0x450, is taken when v0(=ret(SpewObjectToUser)) == 0, and falls through when v0(=ret(SpewObjectToUser)) != 0.
  The `beq` branch at 0x4b0 targets 0x42c and is always taken.
  The `beq` branch at 0x4cc targets 0x588, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x4f8 targets 0x574, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x51c targets 0x554, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x528 targets 0x670, is taken when a4(?) >= at(?) (unsigned), and falls through when a4(?) < at(?) (unsigned).
  The `bne` branch at 0x54c targets 0x5c4, is taken when v0(=ret(SpewObjectToUser)) != 0, and falls through when v0(=ret(SpewObjectToUser)) == 0.
  The `bne` branch at 0x55c targets 0x50c, is taken when s2(?) < 0x10 (signed), and falls through when s2(?) >= 0x10 (signed).
  The `bne` branch at 0x56c targets 0x504, is taken when v0(=ret(OdsyNextCSetElem)) != 0, and falls through when v0(=ret(OdsyNextCSetElem)) == 0.
  The `bne` branch at 0x57c targets 0x4dc, is taken when v0(=ret(OdsyNextCSetElem)) != 0, and falls through when v0(=ret(OdsyNextCSetElem)) == 0.
  The `bne` branch at 0x594 targets 0x6a4, is taken when v0(=ret(copyout)) != 0, and falls through when v0(=ret(copyout)) == 0.
  The `beq` branch at 0x5ac targets 0x5e4 and is always taken.
  The `beq` branch at 0x5bc targets 0x42c and is always taken.
  The `beq` branch at 0x5d4 targets 0x42c and is always taken.
  The `beq` branch at 0x5e4 targets 0x42c and is always taken.
  The `beq` branch at 0x608 targets 0x3ec, is taken when a4(=[[a0+32]:8+104]) == 0, and falls through when a4(=[[a0+32]:8+104]) != 0.
  The `bne` branch at 0x620 targets 0x610, is taken when at(=[[a0+32]:8+104]) != 0, and falls through when at(=[[a0+32]:8+104]) == 0.
  The `beq` branch at 0x628 targets 0x3ec and is always taken.
  The `beq` branch at 0x648 targets 0x42c and is always taken.
  The `beq` branch at 0x668 targets 0x42c and is always taken.
  The `beq` branch at 0x69c targets 0x42c and is always taken.
  The `beq` branch at 0x6bc targets 0x5a0 and is always taken.
  The return at 0x43c has v0 = one of [a3], 0xe, ?, 0x16, 0xb.
- `SpewObjectToUser` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x6c4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x6c4-0x7ac (232 bytes).
  It occupies 232 bytes.
  The `lw` at 0x6cc loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `lw` at 0x704 loads 4 bytes from ?.
  The `sw` at 0x710 stores 4 bytes to ?.
  The `lw` at 0x714 loads 4 bytes from a0 (arg0 at entry) +0x3c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x728, `lw` at 0x734.
  The `lw` at 0x740 loads 4 bytes from a0 (arg0 at entry) +0x68.
  2 such `ld` accesses load 8 bytes from a4 (arg4 at entry) +0x0, including `ld` at 0x758, `ld` at 0x774.
  The `lw` at 0x768 loads 4 bytes from a5 (arg5 at entry) +0x0.
  The `sw` at 0x770 stores 4 bytes to a5 (arg5 at entry) +0x0.
  The `sd` at 0x780 stores 8 bytes to a4 (arg4 at entry) +0x0.
  The `jal` at 0x754 calls copyout with a0=sp-144, a1=[a4]:8, a2=0x44, a3=a3 at entry (arg3), a4=[a0+60].
  The `jal` at 0x798 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `bgtz` branch at 0x70c targets 0x6f8, is taken when v0(?) > 0 (signed), and falls through when v0(?) <= 0 (signed).
  The `bne` branch at 0x75c targets 0x790, is taken when v0(=ret(copyout)) != 0, and falls through when v0(=ret(copyout)) == 0.
  The `beq` branch at 0x7a4 targets 0x784 and is always taken.
  The return at 0x788 has v0 = one of 0x0, 0xe.
- `gfP_OdsyMMattach` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x7ac (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x7ac-0xbec (1088 bytes).
  It occupies 1088 bytes.
  10 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x20, including `ld` at 0x7b4, `ld` at 0x8c4, `ld` at 0x91c.
  The `ld` at 0x808 loads 8 bytes from ret(odsyGctxFromRnid) +0x68.
  The `ld` at 0x818 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ld` at 0x81c loads 8 bytes from [a0]:8 +0x8.
  11 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x828, `sw` at 0x854, `sw` at 0x93c.
  The `sd` at 0x864 stores 8 bytes to ret(odsyGctxFromRnid) +0x98.
  The `sw` at 0x87c stores 4 bytes to ret(odsyGctxFromRnid) +0xa0.
  The `ld` at 0x8c8 loads 8 bytes from [a0+32]:8 +0x48.
  7 such `lw` accesses load 4 bytes from [a0+32]:8 +0x50, including `lw` at 0x8d4, `lw` at 0x920, `lw` at 0x98c.
  6 such `sw` accesses store 4 bytes to [a0+32]:8 +0x50, including `sw` at 0x8dc, `sw` at 0x928, `sw` at 0x994.
  The `ld` at 0x908 loads 8 bytes from ret(odsyGctxFromRnid) +0x98.
  The `sd` at 0x964 stores 8 bytes to ?.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0x968, `sw` at 0x978, `sw` at 0x9a8.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0x96c, `lw` at 0x99c, `lw` at 0x9b0.
  7 such `ld` accesses load 8 bytes from ?, including `ld` at 0x970, `ld` at 0x980, `ld` at 0x9b8.
  The `sd` at 0xa20 stores 8 bytes to [a0+32]:8 +0x48.
  2 such `lw` accesses load 4 bytes from [a0+32]:8 +0x68, including `lw` at 0xa28, `lw` at 0xa44.
  The `lw` at 0xaa8 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `jal` at 0x7d8 calls copyin with a0=a2 at entry (arg2), a1=sp-192, a2=0x48, a3=a3 at entry (arg3).
  The `jal` at 0x7ec calls odsyGctxFromRnid with a0=?, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x840 calls odsyPinAndMapGctxSwShadowRgn with a0=ret(odsyGctxFromRnid), a1=a3 at entry (arg3), a2=?, a3=?, a5=a0 at entry (arg0).
  The `jal` at 0x878 calls OdsyInitCSet with a0=ret(odsyGctxFromRnid)+184, a1=0x4, a2=?, a3=ret(odsyPinAndMapGctxSwShadowRgn), a5=-0x1.
  The `jal` at 0x884 calls OdsyInitCSet with a0=ret(odsyGctxFromRnid)+224, a1=0x4, a2=?, a3=?.
  The `jal` at 0x890 calls OdsyInitCSet with a0=ret(odsyGctxFromRnid)+264, a1=0x4, a2=?, a3=?.
  The `jal` at 0x8a8 calls OdsyAllocSpecificCSetId with a0=?, a1=?, a2=0x1, a3=?.
  The `jal` at 0x8f4 calls odsyGctxFromRnid with a0=?, a1=?, a2=?, a3=?, a5=[[a0+32]:8+80]+1.
  The `jal` at 0x948 calls OdsyAllocCSetId with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x9f4 calls copyout with a0=sp-192, a1=a2 at entry (arg2), a2=0x48, a3=ret(OdsyAllocCSetId), a4=-0x1.
  The `jal` at 0xa10 calls psema with a0=[a0+32]:8+56, a1=0x219, a2=?, a3=?, a4=a0 at entry (arg0).
  The `jal` at 0xa34 calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0xa64 calls odsy_mm_sg_new with a0=a0 at entry (arg0), a1=?, a2=a3 at entry (arg3), a3=?, a5=[[a0+32]:8+80]+1.
  The `jal` at 0xa94 calls copyout with a0=sp-192, a1=a2 at entry (arg2), a2=0x48, a3=[[a0+32]:8+80]-1, a4=[a0+32]:8.
  The `jal` at 0xab0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0xad8 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a5=a0 at entry (arg0).
  The `jal` at 0xafc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a4=[[a0]:8+8]:8, a5=a0 at entry (arg0).
  The `jal` at 0xb38 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a5=[[a0+32]:8+80]-1, a6=[a0+32]:8.
  The `jal` at 0xb64 calls odsy_mm_sg_destroy with a0=?, a1=?, a2=?, a3=ret(OdsyAllocCSetId), a4=-0x1.
  The `jal` at 0xb88 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0xbac calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0xbd0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0x7e0 targets 0xaac, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `beq` branch at 0x800 targets 0xacc, is taken when v0(=ret(odsyGctxFromRnid)) == 0, and falls through when v0(=ret(odsyGctxFromRnid)) != 0.
  The `beq` branch at 0x810 targets 0x838, is taken when v1(=[ret(odsyGctxFromRnid)+104]:8) == 0, and falls through when v1(=[ret(odsyGctxFromRnid)+104]:8) != 0.
  The `bne` branch at 0x820 targets 0xaf4, is taken when a4(=[[a0]:8+8]:8) != a5(=a0), and falls through when a4(=[[a0]:8+8]:8) == a5(=a0).
  The `beq` branch at 0x84c targets 0x864, is taken when v0(=ret(odsyPinAndMapGctxSwShadowRgn)) == 0, and falls through when v0(=ret(odsyPinAndMapGctxSwShadowRgn)) != 0.
  The `beq` branch at 0x85c targets 0x82c and is always taken.
  The `beq` branch at 0x8b8 targets 0x8a0, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x8cc targets 0xa10, is taken when v1(=[[a0+32]:8+72]:8) != a4(=a0), and falls through when v1(=[[a0+32]:8+72]:8) == a4(=a0).
  The `beq` branch at 0x8e4 targets 0xa58, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x8ec targets 0xa5c, is taken when at(=-0x1) == a3(?), and falls through when at(=-0x1) != a3(?).
  The `beq` branch at 0x900 targets 0xb18, is taken when v0(=ret(odsyGctxFromRnid)) == 0, and falls through when v0(=ret(odsyGctxFromRnid)) != 0.
  The `bne` branch at 0x910 targets 0x940, is taken when v1(=[ret(odsyGctxFromRnid)+152]:8) != 0, and falls through when v1(=[ret(odsyGctxFromRnid)+152]:8) == 0.
  The `beq` branch at 0x938 targets 0x82c and is always taken.
  The `beq` branch at 0x954 targets 0xb54, is taken when v0(=ret(OdsyAllocCSetId)) == a4(=-0x1), and falls through when v0(=ret(OdsyAllocCSetId)) != a4(=-0x1).
  The `bne` branch at 0x9fc targets 0xba4, is taken when v0(=ret(copyout)) != 0, and falls through when v0(=ret(copyout)) == 0.
  The `beq` branch at 0xa08 targets 0x82c and is always taken.
  The `beq` branch at 0xa2c targets 0x8d4, is taken when v1(=[[a0+32]:8+104]) == 0, and falls through when v1(=[[a0+32]:8+104]) != 0.
  The `bne` branch at 0xa48 targets 0xa34, is taken when a4(=[[a0+32]:8+104]) != 0, and falls through when a4(=[[a0+32]:8+104]) == 0.
  The `beq` branch at 0xa50 targets 0x8d8 and is always taken.
  The `bne` branch at 0xa6c targets 0x940, is taken when v0(=ret(odsy_mm_sg_new)) != 0, and falls through when v0(=ret(odsy_mm_sg_new)) == 0.
  The `bne` branch at 0xa9c targets 0xbc8, is taken when v0(=ret(copyout)) != 0, and falls through when v0(=ret(copyout)) == 0.
  The `beq` branch at 0xaa4 targets 0x82c and is always taken.
  The `beq` branch at 0xac4 targets 0x82c and is always taken.
  The `beq` branch at 0xaec targets 0x82c and is always taken.
  The `beq` branch at 0xb10 targets 0x82c and is always taken.
  The `beq` branch at 0xb4c targets 0x82c and is always taken.
  The `bne` branch at 0xb5c targets 0xb70, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xb9c targets 0x82c and is always taken.
  The `beq` branch at 0xbc0 targets 0x82c and is always taken.
  The `beq` branch at 0xbe4 targets 0x82c and is always taken.
  The return at 0x830 has v0 = one of 0x0, ret(odsyPinAndMapGctxSwShadowRgn), 0x16, [a3], 0xe, 0xc.
- `odsyMMdetach` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0xbec (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0xbec-0xccc (224 bytes).
  It occupies 224 bytes.
  The `ld` at 0xbf4 loads 8 bytes from a1 (arg1 at entry) +0x98.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x20, including `ld` at 0xc0c, `ld` at 0xc50, `ld` at 0xc80.
  The `ld` at 0xc10 loads 8 bytes from [a0+32]:8 +0x48.
  3 such `lw` accesses load 4 bytes from [a0+32]:8 +0x50, including `lw` at 0xc1c, `lw` at 0xc54, `lw` at 0xcb4.
  2 such `sw` accesses store 4 bytes to [a0+32]:8 +0x50, including `sw` at 0xc30, `sw` at 0xc5c.
  The `sd` at 0xc34 stores 8 bytes to a1 (arg1 at entry) +0x98.
  The `lw` at 0xc38 loads 4 bytes from [a1+152]:8 +0x10.
  The `sw` at 0xc4c stores 4 bytes to [a1+152]:8 +0x10.
  The `sd` at 0xc84 stores 8 bytes to [a0+32]:8 +0x48.
  2 such `lw` accesses load 4 bytes from [a0+32]:8 +0x68, including `lw` at 0xc8c, `lw` at 0xca4.
  The `jal` at 0xc2c calls odsy_mm_sg_remove_gctx with a0=[a1+152]:8, a1=a1 at entry (arg1), a2=?, a3=[a0+32]:8.
  The `jal` at 0xc78 calls psema with a0=[a0+32]:8+56, a1=0x219, a2=a2 at entry (arg2), a3=[a0+32]:8.
  The `jal` at 0xc98 calls us_delay with a0=0x2, a1=?, a2=?, a3=[a0+32]:8.
  The `jal` at 0xcbc calls odsy_mm_sg_destroy with a0=[a1+152]:8, a1=?, a2=?, a3=?.
  The `beq` branch at 0xc04 targets 0xc60, is taken when s1(=[a1+152]:8) == 0, and falls through when s1(=[a1+152]:8) != 0.
  The `bne` branch at 0xc14 targets 0xc74, is taken when at(=[[a0+32]:8+72]:8) != s0(=a0), and falls through when at(=[[a0+32]:8+72]:8) == s0(=a0).
  The `beq` branch at 0xc48 targets 0xcb8, is taken when v1(=[[a1+152]:8+16]-1) == 0, and falls through when v1(=[[a1+152]:8+16]-1) != 0.
  The `beq` branch at 0xc90 targets 0xc1c, is taken when at(=[[a0+32]:8+104]) == 0, and falls through when at(=[[a0+32]:8+104]) != 0.
  The `bne` branch at 0xca8 targets 0xc98, is taken when v1(=[[a0+32]:8+104]) != 0, and falls through when v1(=[[a0+32]:8+104]) == 0.
  The `beq` branch at 0xcb0 targets 0xc20 and is always taken.
  The `beq` branch at 0xcc4 targets 0xc50 and is always taken.
  The return at 0xc6c has v0 = ?.
- `odsy_mm_sg_remove_gctx` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0xccc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0xccc-0xe7c (432 bytes).
  It occupies 432 bytes.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xa0, including `lw` at 0xdf0, `lw` at 0xe08, `lw` at 0xe54.
  The `lw` at 0xe18 loads 4 bytes from a1 (arg1 at entry) +0xcc.
  The `sw` at 0xe6c stores 4 bytes to a1 (arg1 at entry) +0xa0.
  The `jal` at 0xcec calls OdsyInitCSetCursor with a0=a1+264, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xcf4 calls OdsyNextCSetElem with a0=a1+264, a1=?, a2=?, a3=?.
  The `jal` at 0xd04 calls odsy_mm_grp_destroy with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=?.
  The `jal` at 0xd0c calls OdsyInitCSetCursor with a0=a1+264, a1=?, a2=?, a3=?.
  The `jal` at 0xd14 calls OdsyNextCSetElem with a0=a1+264, a1=?, a2=?, a3=?.
  The `jal` at 0xd2c calls OdsyDestroyCSet with a0=a1+264, a1=0x0, a2=?, a3=?.
  The `jal` at 0xd34 calls OdsyInitCSetCursor with a0=a1+184, a1=?, a2=?, a3=?.
  The `jal` at 0xd3c calls OdsyNextCSetElem with a0=a1+184, a1=?, a2=?, a3=?.
  The `jal` at 0xd64 calls OdsyDeallocCSetId with a0=a1+184, a1=?, a2=?, a3=?.
  The `jal` at 0xd6c calls OdsyNextCSetElem with a0=a1+184, a1=?, a2=?, a3=?.
  The `jal` at 0xd7c calls OdsyInitCSetCursor with a0=a1+184, a1=?, a2=?, a3=?.
  The `jal` at 0xd84 calls OdsyNextCSetElem with a0=a1+184, a1=?, a2=?, a3=?.
  The `jal` at 0xd94 calls odsy_mm_cores_destroy with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=?.
  The `jal` at 0xd9c calls OdsyInitCSetCursor with a0=a1+184, a1=?, a2=?, a3=?.
  The `jal` at 0xda4 calls OdsyNextCSetElem with a0=a1+184, a1=?, a2=?, a3=?.
  The `jal` at 0xdc0 calls OdsyInitCSetCursor with a0=a0+64, a1=?, a2=?, a3=?.
  The `jal` at 0xdc8 calls OdsyNextCSetElem with a0=a0+64, a1=?, a2=?, a3=?.
  The `jal` at 0xde0 calls OdsyNextCSetElem with a0=a0+64, a1=?, a2=?, a3=?.
  The `jal` at 0xdf4 calls OdsyLookupCSetId with a0=ret(OdsyNextCSetElem)+160, a1=[a1+160], a2=?, a3=?.
  The `jal` at 0xe04 calls OdsyDeallocCSetId with a0=ret(OdsyNextCSetElem)+160, a1=[a1+160], a2=?, a3=?.
  The `jal` at 0xe30 calls conbuf_flush with a0=0x3, a1=?, a2=[sym(kdebug)]:2, a3=?.
  The `jal` at 0xe3c calls debug with a0=sym(.rodata), a1=?, a2=?, a3=?.
  The `jal` at 0xe48 calls OdsyDestroyCSet with a0=a1+184, a1=0x0, a2=?, a3=?.
  The `jal` at 0xe58 calls OdsyDeallocCSetId with a0=a0+24, a1=[a1+160], a2=?, a3=?.
  The `beq` branch at 0xcfc targets 0xd28, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `bne` branch at 0xd1c targets 0xd04, is taken when v0(=ret(OdsyNextCSetElem)) != 0, and falls through when v0(=ret(OdsyNextCSetElem)) == 0.
  The `beq` branch at 0xd44 targets 0xd7c, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `bne` branch at 0xd54 targets 0xd7c, is taken when a1(=0x1) != v0(=ret(OdsyNextCSetElem)), and falls through when a1(=0x1) == v0(=ret(OdsyNextCSetElem)).
  The `bne` branch at 0xd74 targets 0xd54, is taken when v0(=ret(OdsyNextCSetElem)) != 0, and falls through when v0(=ret(OdsyNextCSetElem)) == 0.
  The `beq` branch at 0xd8c targets 0xdb8, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `bne` branch at 0xdac targets 0xd94, is taken when v0(=ret(OdsyNextCSetElem)) != 0, and falls through when v0(=ret(OdsyNextCSetElem)) == 0.
  The `beq` branch at 0xdd0 targets 0xe18, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0xdd8 targets 0xdec and is always taken.
  The `beq` branch at 0xde8 targets 0xe14, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0xdfc targets 0xde0, is taken when v0(=ret(OdsyLookupCSetId)) == 0, and falls through when v0(=ret(OdsyLookupCSetId)) != 0.
  The `beq` branch at 0xe0c targets 0xde0 and is always taken.
  The `beq` branch at 0xe20 targets 0xe44, is taken when v1(=[a1+204]) == 0, and falls through when v1(=[a1+204]) != 0.
  The `beq` branch at 0xe28 targets 0xe48, is taken when a2(=[sym(kdebug)]:2) == 0, and falls through when a2(=[sym(kdebug)]:2) != 0.
  The return at 0xe74 has v0 = ret(OdsyDeallocCSetId).
- `gfP_OdsyMMalloc` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0xe7c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0xe7c-0x123c (960 bytes).
  It occupies 960 bytes.
  9 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0xe80, `sw` at 0x10ec, `sw` at 0x1114.
  The `ld` at 0xe88 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0xe98 loads 8 bytes from [a0+72]:8 +0x70.
  The `ld` at 0xec8 loads 8 bytes from [[a0+72]:8+112]:8 +0x98.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x20, including `ld` at 0xf04, `ld` at 0xff0, `ld` at 0x103c.
  The `ld` at 0xf08 loads 8 bytes from [a0+32]:8 +0x48.
  3 such `lw` accesses load 4 bytes from [a0+32]:8 +0x50, including `lw` at 0xf14, `lw` at 0xff8, `lw` at 0x1070.
  2 such `sw` accesses store 4 bytes to [a0+32]:8 +0x50, including `sw` at 0xf1c, `sw` at 0x1010.
  The `ld` at 0xf54 loads 8 bytes from ?.
  8 such `lw` accesses load 4 bytes from ?, including `lw` at 0xf64, `lw` at 0xf70, `lw` at 0xf7c.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xfb0, `lbu` at 0xfc0.
  The `lw` at 0x1024 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `sd` at 0x1040 stores 8 bytes to [a0+32]:8 +0x48.
  2 such `lw` accesses load 4 bytes from [a0+32]:8 +0x68, including `lw` at 0x1048, `lw` at 0x1060.
  The `jal` at 0xee4 calls copyin with a0=a2 at entry (arg2), a1=sp-208, a2=0x48, a3=a3 at entry (arg3), a6=0x0, a7=0x0.
  The `jal` at 0xf34 calls OdsyLookupCSetId with a0=?, a1=?, a2=?, a3=?, a5=-0x1.
  The `jal` at 0xfd0 calls odsy_mm_obj_destroy with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100c calls copyout with a0=sp-208, a1=a2 at entry (arg2), a2=0x48, a3=?, a6=[[a0+32]:8+80]-1, a7=[a0+32]:8.
  The `jal` at 0x1034 calls psema with a0=[a0+32]:8+56, a1=0x219, a2=?, a3=?, a4=[[a0+32]:8+72]:8.
  The `jal` at 0x1054 calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x107c calls odsy_mm_grp_new with a0=[[a0+72]:8+112]:8, a1=?, a2=sp-208, a3=?, a5=-0x1.
  The `jal` at 0x10c4 calls odsy_mm_obj_new with a0=?, a1=?, a2=?, a3=sp-196.
  The `jal` at 0x1108 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=0x0, a7=0x0.
  The `jal` at 0x1138 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=0x0, a7=0x0.
  The `jal` at 0x1168 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x119c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x11c0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x11e4 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a4=ret(OdsyLookupCSetId).
  The `jal` at 0x1210 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x122c calls odsy_mm_grp_destroy with a0=?, a1=?, a2=?, a3=?, a5=-0x1.
  The `beq` branch at 0xeb4 targets 0x10f0, is taken when s2(=[[a0+72]:8+112]:8) == 0, and falls through when s2(=[[a0+72]:8+112]:8) != 0.
  The `beq` branch at 0xed4 targets 0x1124, is taken when at(=[[[a0+72]:8+112]:8+152]:8) == 0, and falls through when at(=[[[a0+72]:8+112]:8+152]:8) != 0.
  The `bne` branch at 0xeec targets 0x1154, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `beq` branch at 0xefc targets 0x1184, is taken when a2(?) >= 0x10 (signed), and falls through when a2(?) < 0x10 (signed).
  The `bne` branch at 0xf0c targets 0x1034, is taken when a4(=[[a0+32]:8+72]:8) != s0(=a0), and falls through when a4(=[[a0+32]:8+72]:8) == s0(=a0).
  The `beq` branch at 0xf28 targets 0x1074, is taken when a5(=-0x1) == a1(?), and falls through when a5(=-0x1) != a1(?).
  The `beq` branch at 0xf40 targets 0x11dc, is taken when v0(=ret(OdsyLookupCSetId)) == 0, and falls through when v0(=ret(OdsyLookupCSetId)) != 0.
  The `beq` branch at 0xf5c targets 0xfdc, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xf68 targets 0xfd0, is taken when a4(?) != a5(?), and falls through when a4(?) == a5(?).
  The `bne` branch at 0xf74 targets 0xfd0, is taken when at(?) != v1(?), and falls through when at(?) == v1(?).
  The `bne` branch at 0xf80 targets 0xfd0, is taken when a4(?) != a5(?), and falls through when a4(?) == a5(?).
  The `bne` branch at 0xf8c targets 0xfd0, is taken when at(?) != v1(?), and falls through when at(?) == v1(?).
  The `bne` branch at 0xf98 targets 0xfd0, is taken when a4(?) != a5(?), and falls through when a4(?) == a5(?).
  The `bne` branch at 0xfa8 targets 0xfd0, is taken when at(?) != v1(?), and falls through when at(?) == v1(?).
  The `bne` branch at 0xfb8 targets 0xfd0, is taken when a4(?) != a5(?), and falls through when a4(?) == a5(?).
  The `beq` branch at 0xfc8 targets 0xfdc, is taken when at(?) == v1(?), and falls through when at(?) != v1(?).
  The `beq` branch at 0xfe8 targets 0x10a0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x101c targets 0x11b8, is taken when v0(=ret(copyout)) != 0, and falls through when v0(=ret(copyout)) == 0.
  The `beq` branch at 0x104c targets 0xf14, is taken when at(=[[a0+32]:8+104]) == 0, and falls through when at(=[[a0+32]:8+104]) != 0.
  The `bne` branch at 0x1064 targets 0x1054, is taken when v1(=[[a0+32]:8+104]) != 0, and falls through when v1(=[[a0+32]:8+104]) == 0.
  The `beq` branch at 0x106c targets 0xf18 and is always taken.
  The `beq` branch at 0x1088 targets 0x1208, is taken when v0(=ret(odsy_mm_grp_new)) == 0, and falls through when v0(=ret(odsy_mm_grp_new)) != 0.
  The `bne` branch at 0x1094 targets 0xff0, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `bne` branch at 0x10a0 targets 0xff0, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bne` branch at 0x10ac targets 0xff0, is taken when s3(?) != 0, and falls through when s3(?) == 0.
  The `bne` branch at 0x10cc targets 0xff0, is taken when v0(=ret(odsy_mm_obj_new)) != 0, and falls through when v0(=ret(odsy_mm_obj_new)) == 0.
  The `beq` branch at 0x10d8 targets 0x122c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x10e8 targets 0xff0 and is always taken.
  The `beq` branch at 0x111c targets 0x1028 and is always taken.
  The `beq` branch at 0x114c targets 0x1028 and is always taken.
  The `beq` branch at 0x117c targets 0x1028 and is always taken.
  The `beq` branch at 0x11b0 targets 0x1028 and is always taken.
  The `beq` branch at 0x11d4 targets 0x1028 and is always taken.
  The `beq` branch at 0x1200 targets 0xfdc and is always taken.
  The `beq` branch at 0x1224 targets 0x1090 and is always taken.
  The `beq` branch at 0x1234 targets 0x10e0 and is always taken.
  The return at 0x102c has v0 = one of [a3], 0x1, 0xe, 0x16.
- `gfP_OdsyMMdealloc` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x123c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x123c-0x14cc (656 bytes).
  It occupies 656 bytes.
  The `ld` at 0x123c loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0x1244 loads 8 bytes from [a0+72]:8 +0x70.
  The `ld` at 0x1260 loads 8 bytes from [[a0+72]:8+112]:8 +0x98.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x20, including `ld` at 0x128c, `ld` at 0x1308, `ld` at 0x133c.
  The `ld` at 0x1290 loads 8 bytes from [a0+32]:8 +0x48.
  4 such `lw` accesses load 4 bytes from [a0+32]:8 +0x50, including `lw` at 0x129c, `lw` at 0x130c, `lw` at 0x1370.
  3 such `sw` accesses store 4 bytes to [a0+32]:8 +0x50, including `sw` at 0x12a8, `sw` at 0x1314, `sw` at 0x1384.
  The `ld` at 0x12e4 loads 8 bytes from ?.
  The `lw` at 0x12fc loads 4 bytes from ?.
  The `sd` at 0x1340 stores 8 bytes to [a0+32]:8 +0x48.
  2 such `lw` accesses load 4 bytes from [a0+32]:8 +0x68, including `lw` at 0x1348, `lw` at 0x1360.
  6 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x1398, `sw` at 0x13e0, `sw` at 0x143c.
  The `jal` at 0x127c calls copyin with a0=a2 at entry (arg2), a1=sp-160, a2=0x48, a3=a3 at entry (arg3), a4=[[[a0+72]:8+112]:8+152]:8.
  The `jal` at 0x12b0 calls OdsyLookupCSetId with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x12f0 calls odsy_mm_obj_destroy with a0=?, a1=ret(OdsyLookupCSetId), a2=?, a3=?.
  The `jal` at 0x1334 calls psema with a0=[a0+32]:8+56, a1=0x219, a2=?, a3=?, a5=[[a0+32]:8+72]:8.
  The `jal` at 0x1354 calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x13a8 calls copyout with a0=sp-160, a1=a2 at entry (arg2), a2=0x48, a3=?.
  The `jal` at 0x13c4 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x13e4 calls odsy_mm_grp_destroy with a0=ret(OdsyLookupCSetId), a1=ret(OdsyLookupCSetId), a2=?, a3=?.
  The `jal` at 0x13f8 calls odsy_mm_grp_destroy with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1420 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1450 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[[[a0+72]:8+112]:8+152]:8.
  The `jal` at 0x147c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x14ac calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x1258 targets 0x1408, is taken when a1(=[[a0+72]:8+112]:8) == 0, and falls through when a1(=[[a0+72]:8+112]:8) != 0.
  The `beq` branch at 0x126c targets 0x1440, is taken when a4(=[[[a0+72]:8+112]:8+152]:8) == 0, and falls through when a4(=[[[a0+72]:8+112]:8+152]:8) != 0.
  The `bne` branch at 0x1284 targets 0x1470, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `bne` branch at 0x1294 targets 0x1334, is taken when a5(=[[a0+32]:8+72]:8) != s0(=a0), and falls through when a5(=[[a0+32]:8+72]:8) == s0(=a0).
  The `beq` branch at 0x12c0 targets 0x1374, is taken when v0(=ret(OdsyLookupCSetId)) == 0, and falls through when v0(=ret(OdsyLookupCSetId)) != 0.
  The `beq` branch at 0x12cc targets 0x13e4, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x12dc targets 0x149c, is taken when a2(?) >= 0x10 (signed), and falls through when a2(?) < 0x10 (signed).
  The `beq` branch at 0x12e8 targets 0x1308, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x1300 targets 0x13f4, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x131c targets 0x139c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x134c targets 0x129c, is taken when at(=[[a0+32]:8+104]) == 0, and falls through when at(=[[a0+32]:8+104]) != 0.
  The `bne` branch at 0x1364 targets 0x1354, is taken when v1(=[[a0+32]:8+104]) != 0, and falls through when v1(=[[a0+32]:8+104]) == 0.
  The `beq` branch at 0x136c targets 0x12a0 and is always taken.
  The `beq` branch at 0x1394 targets 0x132c and is always taken.
  The `beq` branch at 0x13b4 targets 0x1324, is taken when v0(=ret(copyout)) == 0, and falls through when v0(=ret(copyout)) != 0.
  The `beq` branch at 0x13dc targets 0x132c and is always taken.
  The `beq` branch at 0x13ec targets 0x1308 and is always taken.
  The `beq` branch at 0x1400 targets 0x1308 and is always taken.
  The `beq` branch at 0x1438 targets 0x132c and is always taken.
  The `beq` branch at 0x1468 targets 0x132c and is always taken.
  The `beq` branch at 0x1494 targets 0x132c and is always taken.
  The `beq` branch at 0x14c4 targets 0x132c and is always taken.
  The return at 0x132c has v0 = one of 0x0, 0x1, 0xe, 0x16.
- `odsy_mm_mkres_timeout` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x14cc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x14cc-0x1504 (56 bytes).
  It occupies 56 bytes.
  The `jal` at 0x14e4 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x14ec calls odsy_teardown with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The return at 0x14fc has v0 = ret(odsy_teardown).
- `gfP_OdsyMMmakeResident` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x1504 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x1504-0x1898 (916 bytes).
  It occupies 916 bytes.
  The `ld` at 0x150c loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0x1510 loads 8 bytes from [a0+72]:8 +0x70.
  The `ld` at 0x1530 loads 8 bytes from [[a0+72]:8+112]:8 +0x98.
  The `ld` at 0x1544 loads 8 bytes from [[[a0+72]:8+112]:8+152]:8 +0x8.
  11 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x157c, `sw` at 0x1720, `sw` at 0x1748.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x20, including `ld` at 0x1590, `ld` at 0x16b4, `ld` at 0x16e4.
  The `ld` at 0x1594 loads 8 bytes from [a0+32]:8 +0x48.
  3 such `lw` accesses load 4 bytes from [a0+32]:8 +0x50, including `lw` at 0x15a0, `lw` at 0x16b8, `lw` at 0x1718.
  2 such `sw` accesses store 4 bytes to [a0+32]:8 +0x50, including `sw` at 0x15a8, `sw` at 0x16c0.
  2 such `lw` accesses load 4 bytes from [[a0+72]:8+112]:8 +0xa0, including `lw` at 0x15c8, `lw` at 0x17f8.
  The `ld` at 0x160c loads 8 bytes from ret(OdsyFindMatchingCSetElem) +0x28.
  The `ld` at 0x1610 loads 8 bytes from ret(OdsyFindMatchingCSetElem) +0x20.
  The `lhu` at 0x1614 loads 2 bytes from [ret(OdsyFindMatchingCSetElem)+40]:8 +0x4.
  The `lhu` at 0x1618 loads 2 bytes from [ret(OdsyFindMatchingCSetElem)+32]:8 +0x0.
  The `lw` at 0x1624 loads 4 bytes from ret(OdsyFindMatchingCSetElem) +0x0.
  2 such `lw` accesses load 4 bytes from ret(OdsyFindMatchingCSetElem) +0x4, including `lw` at 0x1628, `lw` at 0x1644.
  The `sw` at 0x1640 stores 4 bytes to ?.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1658, `ld` at 0x1690.
  The `lw` at 0x1664 loads 4 bytes from ?.
  The `lw` at 0x16c4 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `sd` at 0x16e8 stores 8 bytes to [a0+32]:8 +0x48.
  2 such `lw` accesses load 4 bytes from [a0+32]:8 +0x68, including `lw` at 0x16f0, `lw` at 0x1708.
  The `jal` at 0x154c calls copyin with a0=a2 at entry (arg2), a1=sp-112, a2=0x8, a3=a3 at entry (arg3).
  The `jal` at 0x1580 calls RRM_CheckValidFault with a0=a0 at entry (arg0), a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x15b4 calls OdsyLookupCSetId with a0=[[[a0+72]:8+112]:8+152]:8+64, a1=?, a2=?, a3=?, a5=[[a0+32]:8+80]+1.
  The `jal` at 0x15cc calls OdsyLookupCSetId with a0=ret(OdsyLookupCSetId)+160, a1=[[[a0+72]:8+112]:8+160], a2=?, a3=?.
  The `jal` at 0x15fc calls OdsyFindMatchingCSetElem with a0=ret(OdsyLookupCSetId), a1=sp-104, a2=sym(CoresidRangeFinder), a3=?.
  The `jal` at 0x168c calls timeout with a0=sym(odsy_mm_mkres_timeout), a1=?, a2=0x5dc, a3=?.
  The `jal` at 0x1698 calls odsy_mm_commit with a0=ret(OdsyFindMatchingCSetElem), a1=?, a2=?, a3=?.
  The `jal` at 0x16a8 calls untimeout with a0=ret(timeout), a1=?, a2=?, a3=?.
  The `jal` at 0x16dc calls psema with a0=[a0+32]:8+56, a1=0x219, a2=?, a3=?, a4=[[a0+32]:8+72]:8.
  The `jal` at 0x16fc calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x173c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1764 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x178c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x17b4 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x17e0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x180c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=[[[a0+72]:8+112]:8+160], a3=?.
  The `jal` at 0x1834 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1858 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1878 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1880 calls untimeout with a0=ret(timeout), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1524 targets 0x1758, is taken when s1(=[[a0+72]:8+112]:8) == 0, and falls through when s1(=[[a0+72]:8+112]:8) != 0.
  The `beq` branch at 0x1534 targets 0x1780, is taken when s4(=[[[a0+72]:8+112]:8+152]:8) == 0, and falls through when s4(=[[[a0+72]:8+112]:8+152]:8) != 0.
  The `bne` branch at 0x1554 targets 0x17a8, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `beq` branch at 0x1560 targets 0x1730, is taken when v0(?) >= 0x10 (signed), and falls through when v0(?) < 0x10 (signed).
  The `beq` branch at 0x156c targets 0x1730, is taken when a0(?) >= 0x10 (signed), and falls through when a0(?) < 0x10 (signed).
  The `bne` branch at 0x1574 targets 0x1734, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bltz` branch at 0x1588 targets 0x171c, is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed), and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed).
  The `bne` branch at 0x1598 targets 0x16dc, is taken when a4(=[[a0+32]:8+72]:8) != s0(=a0), and falls through when a4(=[[a0+32]:8+72]:8) == s0(=a0).
  The `beq` branch at 0x15c0 targets 0x17d0, is taken when v0(=ret(OdsyLookupCSetId)) == 0, and falls through when v0(=ret(OdsyLookupCSetId)) != 0.
  The `beq` branch at 0x15d4 targets 0x17f8, is taken when v0(=ret(OdsyLookupCSetId)) == 0, and falls through when v0(=ret(OdsyLookupCSetId)) != 0.
  The `beq` branch at 0x1604 targets 0x1824, is taken when v0(=ret(OdsyFindMatchingCSetElem)) == 0, and falls through when v0(=ret(OdsyFindMatchingCSetElem)) != 0.
  The `beq` branch at 0x161c targets 0x184c, is taken when at(=[[ret(OdsyFindMatchingCSetElem)+32]:8]:2) == v1(=[[ret(OdsyFindMatchingCSetElem)+40]:8+4]:2), and falls through when at(=[[ret(OdsyFindMatchingCSetElem)+32]:8]:2) != v1(=[[ret(OdsyFindMatchingCSetElem)+40]:8+4]:2).
  The `bne` branch at 0x1630 targets 0x1680, is taken when a2(=[ret(OdsyFindMatchingCSetElem)+4]) < v0(=[ret(OdsyFindMatchingCSetElem)]) (signed), and falls through when a2(=[ret(OdsyFindMatchingCSetElem)+4]) >= v0(=[ret(OdsyFindMatchingCSetElem)]) (signed).
  The `beq` branch at 0x1638 targets 0x1650 and is always taken.
  The `bne` branch at 0x164c targets 0x167c, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x165c targets 0x1648, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x166c targets 0x164c, is taken when (a3(?) & 0x2) == 0, and falls through when (a3(?) & 0x2) != 0.
  The `beq` branch at 0x1674 targets 0x1640 and is always taken.
  The `bne` branch at 0x16a0 targets 0x1870, is taken when v0(=ret(odsy_mm_commit)) != 0, and falls through when v0(=ret(odsy_mm_commit)) == 0.
  The `beq` branch at 0x16f4 targets 0x15a0, is taken when at(=[[a0+32]:8+104]) == 0, and falls through when at(=[[a0+32]:8+104]) != 0.
  The `bne` branch at 0x170c targets 0x16fc, is taken when v1(=[[a0+32]:8+104]) != 0, and falls through when v1(=[[a0+32]:8+104]) == 0.
  The `beq` branch at 0x1714 targets 0x15a4 and is always taken.
  The `beq` branch at 0x1728 targets 0x16c8 and is always taken.
  The `beq` branch at 0x1750 targets 0x16c8 and is always taken.
  The `beq` branch at 0x1778 targets 0x16c8 and is always taken.
  The `beq` branch at 0x17a0 targets 0x16c8 and is always taken.
  The `beq` branch at 0x17c8 targets 0x16c8 and is always taken.
  The `beq` branch at 0x17f0 targets 0x16b4 and is always taken.
  The `beq` branch at 0x181c targets 0x16b4 and is always taken.
  The `beq` branch at 0x1844 targets 0x16b4 and is always taken.
  The `beq` branch at 0x1868 targets 0x16b4 and is always taken.
  The `beq` branch at 0x1890 targets 0x16b4 and is always taken.
  The return at 0x16d4 has v0 = one of [a3], 0xe, 0x16, 0x1.
- `MapKernelRegionIntoUserSpace` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x1898 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x1898-0x18f4 (92 bytes).
  It occupies 92 bytes.
  The `ld` at 0x18b8 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x18d8 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `ld` at 0x18e4 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `jal` at 0x18e0 calls odsyMapPages with a0=0x0, a1=a0+16, a2=[a0+8]:8, a3=[a0+28], a4=sp-64, a5=0x1, a6=a0 at entry (arg0).
  The return at 0x18ec has v0 = ret(odsyMapPages).
- `CoresidRangeFinder` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x18f4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x18f4-0x193c (72 bytes).
  It occupies 72 bytes.
  The `ld` at 0x18f4 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x18f8 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x18fc loads 4 bytes from [a0+8]:8 +0x0.
  The `lw` at 0x1908 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x190c loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0x191c loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0x1920 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `bne` branch at 0x1900 targets 0x1934, is taken when at(=[a1+8]) != v0(=[[a0+8]:8]), and falls through when at(=[a1+8]) == v0(=[[a0+8]:8]).
  The `bne` branch at 0x1914 targets 0x1934, is taken when v1(=[a1]) != a2(=[a0+4]), and falls through when v1(=[a1]) == a2(=[a0+4]).
  The `bne` branch at 0x1924 targets 0x1934, is taken when a3(=[a0]) != at(=[a1+4]), and falls through when a3(=[a0]) == at(=[a1+4]).
  The return at 0x192c has v0 = 0x0.
  The return at 0x1934 has v0 = 0x1.
- `CoresidSubRangeFinder` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x193c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x193c-0x198c (80 bytes).
  It occupies 80 bytes.
  The `ld` at 0x193c loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x1940 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1944 loads 4 bytes from [a0+8]:8 +0x0.
  The `lw` at 0x1950 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0x1954 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x1968 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x196c loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `bne` branch at 0x1948 targets 0x1984, is taken when at(=[a1+8]) != v0(=[[a0+8]:8]), and falls through when at(=[a1+8]) == v0(=[[a0+8]:8]).
  The `bne` branch at 0x1960 targets 0x1984, is taken when v1(=[a0+4]) < a2(=[a1]) (signed), and falls through when v1(=[a0+4]) >= a2(=[a1]) (signed).
  The `bne` branch at 0x1974 targets 0x1984, is taken when a3(=[a1+4]) < at(=[a0]) (signed), and falls through when a3(=[a1+4]) >= at(=[a0]) (signed).
  The return at 0x197c has v0 = 0x0.
  The return at 0x1984 has v0 = 0x1.
- `odsy_mm_cores_exists` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x198c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x198c-0x1a08 (124 bytes).
  It occupies 124 bytes.
  The `ld` at 0x1998 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x19a0 loads 4 bytes from a1 (arg1 at entry) +0xa0.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x0, including `lh` at 0x19c4, `lh` at 0x19d0.
  The `lw` at 0x19e0 loads 4 bytes from ?.
  The `jal` at 0x19a4 calls OdsyLookupCSetId with a0=[a0+8]:8+160, a1=[a1+160], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x19e8 calls OdsyFindMatchingCSetElem with a0=ret(OdsyLookupCSetId), a1=sp-64, a2=sym(CoresidSubRangeFinder), a3=?, a4=[a0]:2, a5=[a0]:2.
  The `bne` branch at 0x19ac targets 0x19c0, is taken when v0(=ret(OdsyLookupCSetId)) != 0, and falls through when v0(=ret(OdsyLookupCSetId)) == 0.
  The `beq` branch at 0x19f0 targets 0x1a00, is taken when v0(=ret(OdsyFindMatchingCSetElem)) == 0, and falls through when v0(=ret(OdsyFindMatchingCSetElem)) != 0.
  The `beq` branch at 0x19f8 targets 0x19b8 and is always taken.
  The `beq` branch at 0x1a00 targets 0x19b8 and is always taken.
  The return at 0x19b8 has v0 = one of 0x0, 0x1.
- `odsy_mm_cores_obj_in` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x1a08 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x1a08-0x1a44 (60 bytes).
  It occupies 60 bytes.
  The `ld` at 0x1a0c loads 8 bytes from a1 (arg1 at entry) +0x8.
  The `ld` at 0x1a18 loads 8 bytes from ?.
  The `beq` branch at 0x1a20 targets 0x1a3c, is taken when at(?) == a0, and falls through when at(?) != a0.
  The `bne` branch at 0x1a28 targets 0x1a14, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The return at 0x1a34 has v0 = 0x0.
  The return at 0x1a3c has v0 = 0x1.
- `gfP_OdsyMMquery` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x1a44 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x1a44-0x1e5c (1048 bytes).
  It occupies 1048 bytes.
  The `ld` at 0x1a4c loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0x1a64 loads 8 bytes from [a0+72]:8 +0x70.
  The `ld` at 0x1a9c loads 8 bytes from [[a0+72]:8+112]:8 +0x98.
  10 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x1ac0, `sw` at 0x1b50, `sw` at 0x1c88.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x20, including `ld` at 0x1b0c, `ld` at 0x1b54, `ld` at 0x1c28.
  The `ld` at 0x1b10 loads 8 bytes from [a0+32]:8 +0x48.
  2 such `lw` accesses load 4 bytes from [a0+32]:8 +0x50, including `lw` at 0x1b28, `lw` at 0x1b5c.
  2 such `sw` accesses store 4 bytes to [a0+32]:8 +0x50, including `sw` at 0x1b3c, `sw` at 0x1b74.
  The `lw` at 0x1b88 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `lw` at 0x1b98 loads 4 bytes from ret(OdsyLookupCSetId) +0x0.
  The `lw` at 0x1ba0 loads 4 bytes from ret(OdsyLookupCSetId) +0xc8.
  2 such `lw` accesses load 4 bytes from [[a0+72]:8+112]:8 +0xa0, including `lw` at 0x1bb0, `lw` at 0x1ca0.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1c08, `lw` at 0x1c10.
  The `sd` at 0x1c2c stores 8 bytes to [a0+32]:8 +0x48.
  2 such `lw` accesses load 4 bytes from [a0+32]:8 +0x68, including `lw` at 0x1c34, `lw` at 0x1c4c.
  The `sb` at 0x1e34 stores 1 byte to ?.
  The `jal` at 0x1abc calls copyin with a0=a2 at entry (arg2), a1=sp-240, a2=0x28, a3=a3 at entry (arg3), a4=0x0, a7=0x0.
  The `jal` at 0x1b38 calls OdsyLookupCSetId with a0=?, a1=?, a2=?, a3=?, a4=[a0+32]:8.
  The `jal` at 0x1b70 calls copyout with a0=sp-240, a1=a2 at entry (arg2), a2=0x28, a3=?, a7=[[a0+32]:8+80]-1.
  The `jal` at 0x1bac calls OdsyLookupCSetId with a0=ret(OdsyLookupCSetId)+160, a1=[[[a0+72]:8+112]:8+160], a2=?, a3=?, a5=ret(OdsyLookupCSetId).
  The `jal` at 0x1bf0 calls OdsyFindMatchingCSetElem with a0=?, a1=sp-200, a2=sym(CoresidRangeFinder), a3=?.
  The `jal` at 0x1c20 calls psema with a0=[a0+32]:8+56, a1=0x219, a2=?, a3=?, a4=[a0+32]:8.
  The `jal` at 0x1c40 calls us_delay with a0=0x2, a1=?, a2=?, a3=?, a4=[a0+32]:8.
  The `jal` at 0x1c64 calls kmem_alloc with a0=0x28, a1=0x0, a2=?, a3=?, a4=ret(OdsyLookupCSetId).
  The `jal` at 0x1c94 calls OdsyInitCSet with a0=ret(kmem_alloc), a1=0x2, a2=?, a3=?, a4=ret(kmem_alloc).
  The `jal` at 0x1ca8 calls OdsyAllocSpecificCSetId with a0=?, a1=[[[a0+72]:8+112]:8+160], a2=?, a3=?.
  The `jal` at 0x1ce4 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1d18 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x0, a7=0x0.
  The `jal` at 0x1d48 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x0, a7=0x0.
  The `jal` at 0x1d78 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1d9c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1dd0 calls odsy_mm_cores_new with a0=[[a0+72]:8+112]:8, a1=?, a2=?, a3=?, a5=[[a0+72]:8+112]:8+184, a6=sp-240.
  The `jal` at 0x1e04 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=?, a3=?, a5=-0x1.
  The `jal` at 0x1e10 calls OdsyDestroyCSet with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0x1e3c calls kmem_free with a0=?, a1=0x28, a2=?, a3=?.
  The `beq` branch at 0x1a80 targets 0x1d00, is taken when s3(=[[a0+72]:8+112]:8) == 0, and falls through when s3(=[[a0+72]:8+112]:8) != 0.
  The `beq` branch at 0x1aa8 targets 0x1d34, is taken when at(=[[[a0+72]:8+112]:8+152]:8) == 0, and falls through when at(=[[[a0+72]:8+112]:8+152]:8) != 0.
  The `bne` branch at 0x1ac4 targets 0x1d64, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `bltz` branch at 0x1ae4 targets 0x1cd0, is taken when a3(?) < 0 (signed), and falls through when a3(?) >= 0 (signed).
  The `beq` branch at 0x1aec targets 0x1cd0, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bltz` branch at 0x1af4 targets 0x1cd0, is taken when a2(?) < 0 (signed), and falls through when a2(?) >= 0 (signed).
  The `beq` branch at 0x1afc targets 0x1cd0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x1b04 targets 0x1cd0, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bne` branch at 0x1b1c targets 0x1c1c, is taken when at(=[[a0+32]:8+72]:8) != s0(=a0), and falls through when at(=[[a0+32]:8+72]:8) == s0(=a0).
  The `bne` branch at 0x1b44 targets 0x1b98, is taken when v0(=ret(OdsyLookupCSetId)) != 0, and falls through when v0(=ret(OdsyLookupCSetId)) == 0.
  The `bne` branch at 0x1b80 targets 0x1d94, is taken when v0(=ret(copyout)) != 0, and falls through when v0(=ret(copyout)) == 0.
  The `beq` branch at 0x1bb4 targets 0x1c60, is taken when v0(=ret(OdsyLookupCSetId)) == 0, and falls through when v0(=ret(OdsyLookupCSetId)) != 0.
  The `bne` branch at 0x1bc0 targets 0x1b54, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0x1bc8 targets 0x1b54, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x1bf8 targets 0x1db8, is taken when v0(=ret(OdsyFindMatchingCSetElem)) == 0, and falls through when v0(=ret(OdsyFindMatchingCSetElem)) != 0.
  The `bne` branch at 0x1c00 targets 0x1b54, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x1c14 targets 0x1b54 and is always taken.
  The `beq` branch at 0x1c38 targets 0x1b28, is taken when a5(=[[a0+32]:8+104]) == 0, and falls through when a5(=[[a0+32]:8+104]) != 0.
  The `bne` branch at 0x1c50 targets 0x1c40, is taken when at(=[[a0+32]:8+104]) != 0, and falls through when at(=[[a0+32]:8+104]) == 0.
  The `beq` branch at 0x1c58 targets 0x1b28 and is always taken.
  The `bne` branch at 0x1c70 targets 0x1c8c, is taken when v0(=ret(kmem_alloc)) != 0, and falls through when v0(=ret(kmem_alloc)) == 0.
  The `beq` branch at 0x1c84 targets 0x1cc4 and is always taken.
  The `beq` branch at 0x1cb4 targets 0x1dfc, is taken when v0(=ret(OdsyAllocSpecificCSetId)) == a5(=-0x1), and falls through when v0(=ret(OdsyAllocSpecificCSetId)) != a5(=-0x1).
  The `beq` branch at 0x1cc8 targets 0x1bbc and is always taken.
  The `beq` branch at 0x1cf8 targets 0x1b8c and is always taken.
  The `beq` branch at 0x1d2c targets 0x1b8c and is always taken.
  The `beq` branch at 0x1d5c targets 0x1b8c and is always taken.
  The `beq` branch at 0x1d8c targets 0x1b8c and is always taken.
  The `beq` branch at 0x1db0 targets 0x1b8c and is always taken.
  The `bne` branch at 0x1dd8 targets 0x1df0, is taken when v0(=ret(odsy_mm_cores_new)) != 0, and falls through when v0(=ret(odsy_mm_cores_new)) == 0.
  The `beq` branch at 0x1df4 targets 0x1bfc and is always taken.
  The `bne` branch at 0x1e30 targets 0x1e20, is taken when a7(?) < 0x28 (unsigned), and falls through when a7(?) >= 0x28 (unsigned).
  The `beq` branch at 0x1e54 targets 0x1cbc and is always taken.
  The return at 0x1b90 has v0 = one of [a3], 0x16, 0x1, 0xe.
- `gfP_OdsyMMxfr` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x1e5c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x1e5c-0x2614 (1976 bytes).
  It occupies 1976 bytes.
  The `ld` at 0x1e78 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0x1e90 loads 8 bytes from [a0+72]:8 +0x70.
  The `ld` at 0x1ed4 loads 8 bytes from [[a0+72]:8+112]:8 +0x98.
  2 such `ld` accesses load 8 bytes from [[a0+72]:8+112]:8 +0x90, including `ld` at 0x1f20, `ld` at 0x2188.
  2 such `ld` accesses load 8 bytes from [[[a0+72]:8+112]:8+144]:8 +0x40, including `ld` at 0x1f24, `ld` at 0x218c.
  2 such `ld` accesses load 8 bytes from [[[[a0+72]:8+112]:8+144]:8+64]:8 +0x20, including `ld` at 0x1f28, `ld` at 0x2194.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x20, including `ld` at 0x1f40, `ld` at 0x1f84, `ld` at 0x1fc8.
  The `ld` at 0x1f44 loads 8 bytes from [a0+32]:8 +0x48.
  3 such `lw` accesses load 4 bytes from [a0+32]:8 +0x50, including `lw` at 0x1f50, `lw` at 0x1f8c, `lw` at 0x2430.
  3 such `sw` accesses store 4 bytes to [a0+32]:8 +0x50, including `sw` at 0x1f60, `sw` at 0x1f98, `sw` at 0x2438.
  8 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x1fa4, `sw` at 0x2000, `sw` at 0x22e0.
  The `sd` at 0x1fcc stores 8 bytes to [a0+32]:8 +0x48.
  2 such `lw` accesses load 4 bytes from [a0+32]:8 +0x68, including `lw` at 0x1fd4, `lw` at 0x1fec.
  8 such `ld` accesses load 8 bytes from ?, including `ld` at 0x202c, `ld` at 0x2138, `ld` at 0x2160.
  6 such `lw` accesses load 4 bytes from ?, including `lw` at 0x2050, `lw` at 0x211c, `lw` at 0x2384.
  The `lw` at 0x20ec loads 4 bytes from ([[a0+72]:8+112]:8 + one of 0x160, 0x190) +0x0.
  The `sb` at 0x2204 stores 1 byte to ?.
  The `lh` at 0x2594 loads 2 bytes from ?.
  The `jal` at 0x1ef0 calls copyin with a0=a2 at entry (arg2), a1=sp-304, a2=0x50, a3=a3 at entry (arg3), a4=0x0, a5=0x0.
  The `jal` at 0x1f30 calls RRM_CheckValidFault with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a7=[[[[[a0+72]:8+112]:8+144]:8+64]:8+32]:8.
  The `jal` at 0x1fc0 calls psema with a0=[a0+32]:8+56, a1=0x219, a2=?, a3=?, a6=-0x2.
  The `jal` at 0x1fe0 calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x2110 calls mraccessf with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0x2140 calls odsyHashLookup with a0=?, a1=?, a2=?, a3=0xd.
  The `jal` at 0x214c calls mrunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x21c8 calls OdsyLookupCSetId with a0=?, a1=?, a2=?, a3=?, a6=-0x4.
  The `jal` at 0x2228 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x2378 calls odsyMMvalidatePcxSwap with a0=?, a1=[[a0+72]:8+112]:8, a2=0x0, a3=?, a7=-0x4.
  The `jal` at 0x241c calls odsyDMAOps with a0=?, a1=a0 at entry (arg0), a2=[[a0+72]:8+112]:8, a3=sp-304.
  The `jal` at 0x245c calls odsyDMAWait with a0=?, a1=[[a0+72]:8+112]:8, a2=0x1, a3=sp-232, a7=[[a0+32]:8+80]-1.
  The `jal` at 0x2474 calls copyout with a0=sp-304, a1=a2 at entry (arg2), a2=0x50, a3=?.
  The `jal` at 0x24bc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x0, a5=0x0.
  The `jal` at 0x24f0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x0, a5=0x0.
  The `jal` at 0x2524 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x254c calls cmn_err with a0=0x5, a1=sym(.rodata), a2=?, a3=?, a5=one of 0x2, 0x3.
  The `jal` at 0x2574 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a7=-0x4.
  The `jal` at 0x25b0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x25dc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x25f8 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x1eac targets 0x24a0, is taken when s1(=[[a0+72]:8+112]:8) == 0, and falls through when s1(=[[a0+72]:8+112]:8) != 0.
  The `beq` branch at 0x1ee0 targets 0x24d8, is taken when at(=[[[a0+72]:8+112]:8+152]:8) == 0, and falls through when at(=[[[a0+72]:8+112]:8+152]:8) != 0.
  The `bne` branch at 0x1efc targets 0x250c, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `beq` branch at 0x1f18 targets 0x2000, is taken when s2(?) == v1(=-0x1), and falls through when s2(?) != v1(=-0x1).
  The `bltz` branch at 0x1f38 targets 0x22dc, is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed), and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed).
  The `bne` branch at 0x1f48 targets 0x1fbc, is taken when at(=[[a0+32]:8+72]:8) != s0(=a0), and falls through when at(=[[a0+32]:8+72]:8) == s0(=a0).
  The `beq` branch at 0x1f5c targets 0x201c, is taken when s2(?) == a6(=-0x2), and falls through when s2(?) != a6(=-0x2).
  The `beq` branch at 0x1f68 targets 0x20e4, is taken when s2(?) == a6(=-0x4), and falls through when s2(?) != a6(=-0x4).
  The `beq` branch at 0x1f70 targets 0x21bc, is taken when v0(=-0x3) == s2(?), and falls through when v0(=-0x3) != s2(?).
  The `bne` branch at 0x1f78 targets 0x21c4, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x1fd8 targets 0x1f4c, is taken when at(=[[a0+32]:8+104]) == 0, and falls through when at(=[[a0+32]:8+104]) != 0.
  The `bne` branch at 0x1ff0 targets 0x1fe0, is taken when v1(=[[a0+32]:8+104]) != 0, and falls through when v1(=[[a0+32]:8+104]) == 0.
  The `beq` branch at 0x1ff8 targets 0x1f4c and is always taken.
  The `beq` branch at 0x2014 targets 0x1fb0 and is always taken.
  The `beq` branch at 0x2030 targets 0x2214, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x2040 targets 0x223c, is taken when v0(=-0x3) == s2(?), and falls through when v0(=-0x3) != s2(?).
  The `beq` branch at 0x2048 targets 0x2240, is taken when s2(?) == a7(=-0x4), and falls through when s2(?) != a7(=-0x4).
  The `beq` branch at 0x2058 targets 0x2370, is taken when (at(?) & 0x1) == 0, and falls through when (at(?) & 0x1) != 0.
  The `beq` branch at 0x2068 targets 0x2308, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x2074 targets 0x1f84, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `bne` branch at 0x207c targets 0x1f84, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0x2084 targets 0x1f84, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x2090 targets 0x2498, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x20d4 targets 0x23c0, is taken when a6(?) >= a7(?) (unsigned), and falls through when a6(?) < a7(?) (unsigned).
  The `beq` branch at 0x20dc targets 0x1f84 and is always taken.
  The `beq` branch at 0x20e4 targets 0x21bc, is taken when v0(=-0x3) == s2(?), and falls through when v0(=-0x3) != s2(?).
  The `beq` branch at 0x20f4 targets 0x2300, is taken when (a0(?) & 0x2) == 0, and falls through when (a0(?) & 0x2) != 0.
  The `beq` branch at 0x20fc targets 0x2188, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x2158 targets 0x22cc, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x2164 targets 0x22cc, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x2180 targets 0x21a8 and is always taken.
  The `bne` branch at 0x21ac targets 0x1f84, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x21b4 targets 0x220c and is always taken.
  The `beq` branch at 0x21bc targets 0x20ec and is always taken.
  The `bne` branch at 0x21d0 targets 0x21e0, is taken when v0(=ret(OdsyLookupCSetId)) != 0, and falls through when v0(=ret(OdsyLookupCSetId)) == 0.
  The `beq` branch at 0x21d8 targets 0x1f84 and is always taken.
  The `beq` branch at 0x21f4 targets 0x233c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x220c targets 0x203c, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x2234 targets 0x1f84 and is always taken.
  The `beq` branch at 0x2258 targets 0x2568, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x2260 targets 0x256c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x2268 targets 0x2344, is taken when v0(=-0x3) == s2(?), and falls through when v0(=-0x3) != s2(?).
  The `bne` branch at 0x2290 targets 0x2540, is taken when a5(=one of 0x2, 0x3) != a3(?), and falls through when a5(=one of 0x2, 0x3) == a3(?).
  The `bne` branch at 0x22a8 targets 0x2544, is taken when a6(?) != v0(=one of 0x0, 0x1), and falls through when a6(?) == v0(=one of 0x0, 0x1).
  The `bne` branch at 0x22b0 targets 0x2548, is taken when a4(?) != a2(?), and falls through when a4(?) == a2(?).
  The `beq` branch at 0x22c4 targets 0x2070 and is always taken.
  The `beq` branch at 0x22d4 targets 0x217c and is always taken.
  The `beq` branch at 0x22f8 targets 0x1fb0 and is always taken.
  The `beq` branch at 0x2300 targets 0x1f84 and is always taken.
  The `beq` branch at 0x2318 targets 0x23a0, is taken when (a2(=0x1fffffff) & a0(?)) == 0, and falls through when (a2(=0x1fffffff) & a0(?)) != 0.
  The `beq` branch at 0x2334 targets 0x2070 and is always taken.
  The `beq` branch at 0x233c targets 0x1f84 and is always taken.
  The `beq` branch at 0x234c targets 0x235c, is taken when a7(?) >= 0x3 (signed), and falls through when a7(?) < 0x3 (signed).
  The `beq` branch at 0x2354 targets 0x2364 and is always taken.
  The `beq` branch at 0x2368 targets 0x227c and is always taken.
  The `beq` branch at 0x238c targets 0x2590, is taken when (a6(?) & 0x1) == 0, and falls through when (a6(?) & 0x1) != 0.
  The `beq` branch at 0x2398 targets 0x2060 and is always taken.
  The `beq` branch at 0x23b8 targets 0x2320 and is always taken.
  The `bne` branch at 0x2424 targets 0x25cc, is taken when v0(=ret(odsyDMAOps)) != 0, and falls through when v0(=ret(odsyDMAOps)) == 0.
  The `beq` branch at 0x2444 targets 0x2468, is taken when (a6(?) & 0x2) == 0, and falls through when (a6(?) & 0x2) != 0.
  The `bne` branch at 0x2480 targets 0x25ec, is taken when v0(=ret(copyout)) != 0, and falls through when v0(=ret(copyout)) == 0.
  The `beq` branch at 0x2490 targets 0x1fb0 and is always taken.
  The `beq` branch at 0x2498 targets 0x2098 and is always taken.
  The `beq` branch at 0x24d0 targets 0x1fb0 and is always taken.
  The `beq` branch at 0x2504 targets 0x1fb0 and is always taken.
  The `beq` branch at 0x2538 targets 0x1fb0 and is always taken.
  The `beq` branch at 0x2560 targets 0x22b8 and is always taken.
  The `beq` branch at 0x2588 targets 0x22c0 and is always taken.
  The `beq` branch at 0x25c4 targets 0x2394 and is always taken.
  The `beq` branch at 0x25e4 targets 0x1f84 and is always taken.
  The `beq` branch at 0x260c targets 0x1fb0 and is always taken.
  The return at 0x1fb4 has v0 = one of ?, 0x0, 0xe, 0x1.
- `odsy_mm_ctxsw_timeout` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x2614 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x2614-0x264c (56 bytes).
  It occupies 56 bytes.
  The `jal` at 0x262c calls cmn_err with a0=0x1, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2634 calls odsy_teardown with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The return at 0x2644 has v0 = ret(odsy_teardown).
- `odsyMMvalidatePcxSwap` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x264c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x264c-0x2738 (236 bytes).
  It occupies 236 bytes.
  The `lw` at 0x264c loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `ld` at 0x265c loads 8 bytes from a1 (arg1 at entry) +0x98.
  The `ld` at 0x2700 loads 8 bytes from ret(OdsyNextCSetElem) +0x28.
  The `lhu` at 0x2704 loads 2 bytes from [ret(OdsyNextCSetElem)+40]:8 +0x6.
  The `lw` at 0x2710 loads 4 bytes from ret(OdsyNextCSetElem) +0x40.
  The `jal` at 0x2694 calls OdsyLookupCSetId with a0=a1+224, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x26ac calls timeout with a0=sym(odsy_mm_ctxsw_timeout), a1=a0 at entry (arg0), a2=0x5dc, a3=?.
  The `jal` at 0x26c0 calls OdsyInitCSetCursor with a0=a1+184, a1=?, a2=?, a3=?.
  The `jal` at 0x26c8 calls OdsyNextCSetElem with a0=a1+184, a1=?, a2=?, a3=?.
  The `jal` at 0x26e0 calls odsy_mm_commit with a0=ret(OdsyNextCSetElem), a1=0x1, a2=[[ret(OdsyNextCSetElem)+40]:8+6]:2, a3=[ret(OdsyNextCSetElem)+64].
  The `jal` at 0x26e8 calls OdsyNextCSetElem with a0=a1+184, a1=?, a2=?, a3=?.
  The `jal` at 0x2724 calls untimeout with a0=ret(timeout), a1=0x1, a2=?, a3=?.
  The `beq` branch at 0x2654 targets 0x2680, is taken when at(=[a1]) == 0, and falls through when at(=[a1]) != 0.
  The `beq` branch at 0x2660 targets 0x2680, is taken when v1(=[a1+152]:8) == 0, and falls through when v1(=[a1+152]:8) != 0.
  The `beq` branch at 0x266c targets 0x2688 and is always taken.
  The `beq` branch at 0x2680 targets 0x2674 and is always taken.
  The `beq` branch at 0x269c targets 0x2674, is taken when v0(=ret(OdsyLookupCSetId)) == 0, and falls through when v0(=ret(OdsyLookupCSetId)) != 0.
  The `beq` branch at 0x26d0 targets 0x2724, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x26d8 targets 0x26f8 and is always taken.
  The `beq` branch at 0x26f0 targets 0x2724, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x26f8 targets 0x26e8, is taken when a1(=0x1) == v0(=ret(OdsyNextCSetElem)), and falls through when a1(=0x1) != v0(=ret(OdsyNextCSetElem)).
  The `beq` branch at 0x2708 targets 0x26e8, is taken when a2(=[[ret(OdsyNextCSetElem)+40]:8+6]:2) == 0, and falls through when a2(=[[ret(OdsyNextCSetElem)+40]:8+6]:2) != 0.
  The `bne` branch at 0x2714 targets 0x26e8, is taken when a3(=[ret(OdsyNextCSetElem)+64]) != 0, and falls through when a3(=[ret(OdsyNextCSetElem)+64]) == 0.
  The `beq` branch at 0x271c targets 0x26e0 and is always taken.
  The `beq` branch at 0x2730 targets 0x2678 and is always taken.
  The return at 0x2678 has v0 = 0x0.
- `odsy_mm_find_current_as` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x2738 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x2738-0x28cc (404 bytes).
  It occupies 404 bytes.
  The `ld` at 0x2788 loads 8 bytes from ret(OdsyNextCSetElem) +0x18.
  The `ld` at 0x2794 loads 8 bytes from ret(OdsyNextCSetElem) +0x10.
  The `sw` at 0x27e8 stores 4 bytes to ret(kmem_alloc) +0x0.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x27f8, `sw` at 0x280c.
  4 such `sd` accesses store 8 bytes to ?, including `sd` at 0x2800, `sd` at 0x2808, `sd` at 0x2810.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x285c, `sb` at 0x28b4.
  The `lw` at 0x2890 loads 4 bytes from ?.
  The `jal` at 0x2750 calls as_lookup_current with a0=sp-64, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2758 calls OdsyInitCSetCursor with a0=a0+1528, a1=?, a2=?, a3=?.
  The `jal` at 0x2760 calls OdsyNextCSetElem with a0=a0+1528, a1=?, a2=?, a3=?.
  The `jal` at 0x2778 calls OdsyNextCSetElem with a0=a0+1528, a1=?, a2=?, a3=?.
  The `jal` at 0x27bc calls kmem_alloc with a0=0x40, a1=0x0, a2=?, a3=?.
  The `jal` at 0x27e4 calls OdsyAllocCSetId with a0=a0+1528, a1=ret(kmem_alloc), a2=?, a3=?, a4=-0x1.
  The `jal` at 0x2814 calls odsyPinAndMapASRegions with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2838 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x2864 calls kmem_free with a0=?, a1=0x40, a2=?, a3=?, a5=0x1.
  The `jal` at 0x287c calls cmn_err with a0=0x5, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x288c calls OdsyDeallocCSetId with a0=a0+1528, a1=?, a2=?, a3=?.
  The `jal` at 0x28bc calls kmem_free with a0=?, a1=0x40, a2=?, a3=?, a5=0x1.
  The `beq` branch at 0x2768 targets 0x27bc, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x2770 targets 0x2788 and is always taken.
  The `beq` branch at 0x2780 targets 0x27b8, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `bne` branch at 0x278c targets 0x2778, is taken when at(=[ret(OdsyNextCSetElem)+24]:8) != v1(?), and falls through when at(=[ret(OdsyNextCSetElem)+24]:8) == v1(?).
  The `bne` branch at 0x2798 targets 0x2778, is taken when a2(=[ret(OdsyNextCSetElem)+16]:8) != a3(?), and falls through when a2(=[ret(OdsyNextCSetElem)+16]:8) == a3(?).
  The `bne` branch at 0x27c8 targets 0x27d8, is taken when v0(=ret(kmem_alloc)) != 0, and falls through when v0(=ret(kmem_alloc)) == 0.
  The `beq` branch at 0x27d0 targets 0x27a4 and is always taken.
  The `beq` branch at 0x27f0 targets 0x282c, is taken when v0(=ret(OdsyAllocCSetId)) == at(=-0x1), and falls through when v0(=ret(OdsyAllocCSetId)) != at(=-0x1).
  The `bne` branch at 0x281c targets 0x2874, is taken when v0(=ret(odsyPinAndMapASRegions)) != 0, and falls through when v0(=ret(odsyPinAndMapASRegions)) == 0.
  The `beq` branch at 0x2824 targets 0x27a4 and is always taken.
  The `bne` branch at 0x2858 targets 0x2848, is taken when a4(?) < 0x40 (unsigned), and falls through when a4(?) >= 0x40 (unsigned).
  The `beq` branch at 0x286c targets 0x27a4 and is always taken.
  The `bne` branch at 0x28b0 targets 0x28a0, is taken when a4(?) < 0x40 (unsigned), and falls through when a4(?) >= 0x40 (unsigned).
  The `beq` branch at 0x28c4 targets 0x27a4 and is always taken.
  The return at 0x27b0 has v0 = one of ret(OdsyNextCSetElem), 0x0, ?.
- `mm_as_remove_sg` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x28cc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x28cc-0x2944 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0x28cc loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0x28e0 stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `sd` at 0x28ec stores 8 bytes to a1 (arg1 at entry) +0x0.
  The `ld` at 0x28f0 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x28f8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sb` at 0x2924 stores 1 byte to ?.
  The `jal` at 0x28fc calls OdsyDeallocCSetId with a0=[a0+8]:8+1528, a1=[a0], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2904 calls odsyUnpinAndUnmapASRegions with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x292c calls kmem_free with a0=a0 at entry (arg0), a1=0x40, a2=0x5, a3=?.
  The `beq` branch at 0x28e8 targets 0x2938, is taken when v0(=[a0+4]-1) >= 0x1 (unsigned), and falls through when v0(=[a0+4]-1) < 0x1 (unsigned).
  The `bne` branch at 0x2920 targets 0x2914, is taken when a0(?) < 0x40 (unsigned), and falls through when a0(?) >= 0x40 (unsigned).
  The return at 0x293c has v0 = one of [a0+4]-1, ret(kmem_free).
- `odsy_mm_sg_new` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x2944 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x2944-0x2a64 (288 bytes).
  It occupies 288 bytes.
  The `sw` at 0x298c stores 4 bytes to ret(kmem_alloc) +0x10.
  2 such `sd` accesses store 8 bytes to ret(kmem_alloc) +0x0, including `sd` at 0x2990, `sd` at 0x2a14.
  The `sd` at 0x299c stores 8 bytes to ret(kmem_alloc) +0x8.
  2 such `sw` accesses store 4 bytes to ret(kmem_alloc) +0x14, including `sw` at 0x29a8, `sw` at 0x29e8.
  The `sw` at 0x29c4 stores 4 bytes to ret(kmem_alloc) +0xa0.
  The `sw` at 0x29c8 stores 4 bytes to ret(kmem_alloc) +0x98.
  The `sd` at 0x29d0 stores 8 bytes to ret(kmem_alloc) +0x90.
  The `lw` at 0x2a04 loads 4 bytes from ret(odsy_mm_find_current_as) +0x4.
  The `sw` at 0x2a10 stores 4 bytes to ret(odsy_mm_find_current_as) +0x4.
  The `jal` at 0x295c calls kmem_alloc with a0=0xa8, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x29a4 calls OdsyInitCSet with a0=ret(kmem_alloc)+24, a1=0x4, a2=?, a3=?.
  The `jal` at 0x29b0 calls OdsyInitCSet with a0=ret(kmem_alloc)+64, a1=0x4, a2=?, a3=?.
  The `jal` at 0x29bc calls OdsyInitCSet with a0=ret(kmem_alloc)+104, a1=0x4, a2=?, a3=?.
  The `jal` at 0x29d4 calls OdsyAllocCSetId with a0=a1+1488, a1=ret(kmem_alloc), a2=?, a3=?.
  The `jal` at 0x29ec calls odsy_mm_find_current_as with a0=a1 at entry (arg1), a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x2a2c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x2a34 calls odsy_mm_sg_destroy with a0=ret(kmem_alloc), a1=?, a2=?, a3=?.
  The `jal` at 0x2a54 calls cmn_err with a0=0x5, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0x2970 targets 0x298c, is taken when v0(=ret(kmem_alloc)) != 0, and falls through when v0(=ret(kmem_alloc)) == 0.
  The `beq` branch at 0x29e0 targets 0x2a20, is taken when v0(=ret(OdsyAllocCSetId)) == v1(=-0x1), and falls through when v0(=ret(OdsyAllocCSetId)) != v1(=-0x1).
  The `beq` branch at 0x29fc targets 0x2a48, is taken when v0(=ret(odsy_mm_find_current_as)) == 0, and falls through when v0(=ret(odsy_mm_find_current_as)) != 0.
  The `beq` branch at 0x2a18 targets 0x2984 and is always taken.
  The `beq` branch at 0x2a40 targets 0x2984 and is always taken.
  The `beq` branch at 0x2a5c targets 0x2a34 and is always taken.
  The return at 0x2984 has v0 = one of 0x0, ret(kmem_alloc).
- `odsy_mm_sg_destroy` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x2a64 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x2a64-0x2b38 (212 bytes).
  It occupies 212 bytes.
  The `ld` at 0x2ab4 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x2ab8 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `ld` at 0x2acc loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sb` at 0x2b14 stores 1 byte to ?.
  The `jal` at 0x2a7c calls OdsyInitCSetCursor with a0=a0+64, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2a84 calls OdsyNextCSetElem with a0=a0+64, a1=?, a2=?, a3=?.
  The `jal` at 0x2a94 calls odsy_mm_grp_destroy with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=?.
  The `jal` at 0x2a9c calls OdsyInitCSetCursor with a0=a0+64, a1=?, a2=?, a3=?.
  The `jal` at 0x2aa4 calls OdsyNextCSetElem with a0=a0+64, a1=?, a2=?, a3=?.
  The `jal` at 0x2abc calls OdsyDeallocCSetId with a0=[a0+8]:8+1488, a1=[a0+20], a2=?, a3=?.
  The `jal` at 0x2ac4 calls odsyUnpinAndUnmapSGRegions with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x2ad0 calls mm_as_remove_sg with a0=[a0]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x2adc calls OdsyDestroyCSet with a0=a0+64, a1=0x0, a2=?, a3=?.
  The `jal` at 0x2ae8 calls OdsyDestroyCSet with a0=a0+24, a1=0x0, a2=?, a3=?.
  The `jal` at 0x2af4 calls OdsyDestroyCSet with a0=a0+104, a1=0x0, a2=?, a3=?.
  The `jal` at 0x2b1c calls kmem_free with a0=a0 at entry (arg0), a1=0xa8, a2=?, a3=?.
  The `beq` branch at 0x2a8c targets 0x2ab4, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `bne` branch at 0x2aac targets 0x2a94, is taken when v0(=ret(OdsyNextCSetElem)) != 0, and falls through when v0(=ret(OdsyNextCSetElem)) == 0.
  The `bne` branch at 0x2b10 targets 0x2b04, is taken when v0(?) < 0xa8 (unsigned), and falls through when v0(?) >= 0xa8 (unsigned).
  The return at 0x2b30 has v0 = ret(kmem_free).
- `odsy_mm_obj_new` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x2b38 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x2b38-0x2e20 (744 bytes).
  It occupies 744 bytes.
  2 such `lbu` accesses load 1 byte from a3 (arg3 at entry) +0x1, including `lbu` at 0x2b40, `lbu` at 0x2c20.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x10, including `lw` at 0x2b88, `lw` at 0x2c28.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x14, including `lw` at 0x2ba0, `lw` at 0x2c30.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x18, including `lw` at 0x2bac, `lw` at 0x2c38.
  The `lw` at 0x2be0 loads 4 bytes from ret(kmem_alloc) +0x40.
  The `sd` at 0x2be4 stores 8 bytes to ret(kmem_alloc) +0x8.
  2 such `sh` accesses store 2 bytes to ret(kmem_alloc) +0x0, including `sh` at 0x2bf4, `sh` at 0x2d54.
  The `sd` at 0x2bfc stores 8 bytes to ret(kmem_alloc) +0x80.
  The `sw` at 0x2c0c stores 4 bytes to ret(kmem_alloc) +0x40.
  The `lbu` at 0x2c10 loads 1 byte from a3 (arg3 at entry) +0x0.
  The `sb` at 0x2c14 stores 1 byte to ret(kmem_alloc) +0x10.
  The `lbu` at 0x2c18 loads 1 byte from a3 (arg3 at entry) +0x2.
  The `sb` at 0x2c1c stores 1 byte to ret(kmem_alloc) +0x12.
  The `sb` at 0x2c24 stores 1 byte to ret(kmem_alloc) +0x11.
  The `sw` at 0x2c2c stores 4 bytes to ret(kmem_alloc) +0x20.
  The `sw` at 0x2c34 stores 4 bytes to ret(kmem_alloc) +0x24.
  The `sw` at 0x2c3c stores 4 bytes to ret(kmem_alloc) +0x28.
  The `lw` at 0x2c40 loads 4 bytes from a3 (arg3 at entry) +0x4.
  The `sw` at 0x2c44 stores 4 bytes to ret(kmem_alloc) +0x14.
  The `lw` at 0x2c48 loads 4 bytes from a3 (arg3 at entry) +0x8.
  The `sw` at 0x2c4c stores 4 bytes to ret(kmem_alloc) +0x18.
  The `lw` at 0x2c50 loads 4 bytes from a3 (arg3 at entry) +0xc.
  The `sw` at 0x2c58 stores 4 bytes to ret(kmem_alloc) +0x1c.
  The `lw` at 0x2c68 loads 4 bytes from a3 (arg3 at entry) +0x1c.
  2 such `sw` accesses store 4 bytes to ret(kmem_alloc) +0x2c, including `sw` at 0x2c70, `sw` at 0x2d94.
  The `lw` at 0x2c78 loads 4 bytes from a3 (arg3 at entry) +0x20.
  2 such `sw` accesses store 4 bytes to ret(kmem_alloc) +0x30, including `sw` at 0x2c80, `sw` at 0x2da0.
  The `lbu` at 0x2cd4 loads 1 byte from ret(kmem_alloc) +0x11.
  The `sw` at 0x2ce0 stores 4 bytes to ret(kmem_alloc) +0x68.
  The `sd` at 0x2ce8 stores 8 bytes to ret(kmem_alloc) +0x60.
  The `sw` at 0x2cf0 stores 4 bytes to ret(kmem_alloc) +0x58.
  The `sd` at 0x2cf8 stores 8 bytes to ret(kmem_alloc) +0x50.
  The `lw` at 0x2d00 loads 4 bytes from (([ret(kmem_alloc)+17]:1 << 0x2) + sym(.data)) +0x0.
  The `sw` at 0x2d04 stores 4 bytes to ret(kmem_alloc) +0x4c.
  The `sw` at 0x2d10 stores 4 bytes to ret(kmem_alloc) +0x48.
  The `sw` at 0x2d14 stores 4 bytes to ret(kmem_alloc) +0x3c.
  The `sd` at 0x2d5c stores 8 bytes to ((a2 << 0x3) + a1) +0x10.
  The `lw` at 0x2d60 loads 4 bytes from a1 (arg1 at entry) +0x90.
  The `sw` at 0x2d74 stores 4 bytes to a1 (arg1 at entry) +0x90.
  The `jal` at 0x2bc4 calls kmem_alloc with a0=0x88, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[a3+20], a5=[a3+24].
  The `jal` at 0x2d18 calls odsy_mm_reserve with a0=ret(kmem_alloc), a1=?, a2=[(([ret(kmem_alloc)+17]:1 << 0x2) + sym(.data))], a3=sym(.data), a4=([a3+24] + [a3+12]), a6=[a3+8], a7=[a3+12].
  The `jal` at 0x2d28 calls odsy_mm_obj_destroy with a0=ret(kmem_alloc), a1=?, a2=?, a3=?.
  The `jal` at 0x2db0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2dd0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=[a3+20], a4=-0x9, a6=[a3+8], a7=[a3+12].
  The `jal` at 0x2df0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=[a3+20], a4=([a3+24] + [a3+12]), a6=[a3+8], a7=[a3+12].
  The `jal` at 0x2e0c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x8, a5=0x4.
  The `beq` branch at 0x2b5c targets 0x2b88, is taken when a0(=[a3+1]:1) == at(=0x20), and falls through when a0(=[a3+1]:1) != at(=0x20).
  The `beq` branch at 0x2b68 targets 0x2b88, is taken when a0(=[a3+1]:1) == v1(=0x10), and falls through when a0(=[a3+1]:1) != v1(=0x10).
  The `beq` branch at 0x2b70 targets 0x2b88, is taken when a0(=[a3+1]:1) == a4(=0x8), and falls through when a0(=[a3+1]:1) != a4(=0x8).
  The `beq` branch at 0x2b78 targets 0x2b88, is taken when a0(=[a3+1]:1) == a5(=0x4), and falls through when a0(=[a3+1]:1) != a5(=0x4).
  The `bne` branch at 0x2b80 targets 0x2e04, is taken when a0(=[a3+1]:1) != at(=0x2), and falls through when a0(=[a3+1]:1) == at(=0x2).
  The `beq` branch at 0x2b90 targets 0x2da4, is taken when a0(=[a3+16]) == 0, and falls through when a0(=[a3+16]) != 0.
  The `bne` branch at 0x2b98 targets 0x2da8, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x2ba4 targets 0x2da8, is taken when a4(=[a3+20]) == 0, and falls through when a4(=[a3+20]) != 0.
  The `beq` branch at 0x2bb4 targets 0x2da4, is taken when a5(=[a3+24]) == 0, and falls through when a5(=[a3+24]) != 0.
  The `beq` branch at 0x2bd8 targets 0x2d78, is taken when v0(=ret(kmem_alloc)) == 0, and falls through when v0(=ret(kmem_alloc)) != 0.
  The `beq` branch at 0x2c7c targets 0x2d84, is taken when (v0(?) & 0x1) == 0, and falls through when (v0(?) & 0x1) != 0.
  The `beq` branch at 0x2c84 targets 0x2d8c, is taken when a0(=[a3+28]) == 0, and falls through when a0(=[a3+28]) != 0.
  The `bne` branch at 0x2c90 targets 0x2dc4, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x2cb0 targets 0x2d98, is taken when a1(=[a3+32]) == 0, and falls through when a1(=[a3+32]) != 0.
  The `bne` branch at 0x2cb8 targets 0x2de4, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x2d20 targets 0x2d4c, is taken when v0(=ret(odsy_mm_reserve)) == 0, and falls through when v0(=ret(odsy_mm_reserve)) != 0.
  The `beq` branch at 0x2d70 targets 0x2d3c and is always taken.
  The `beq` branch at 0x2d7c targets 0x2d3c and is always taken.
  The `bne` branch at 0x2d84 targets 0x2c90, is taken when a0(=[a3+28]) != 0, and falls through when a0(=[a3+28]) == 0.
  The `beq` branch at 0x2d90 targets 0x2c94 and is always taken.
  The `beq` branch at 0x2d9c targets 0x2cbc and is always taken.
  The `beq` branch at 0x2dbc targets 0x2d3c and is always taken.
  The `beq` branch at 0x2ddc targets 0x2d3c and is always taken.
  The `beq` branch at 0x2dfc targets 0x2d3c and is always taken.
  The `beq` branch at 0x2e18 targets 0x2d3c and is always taken.
  The return at 0x2d44 has v0 = one of 0x0, ret(kmem_alloc).
- `odsy_mm_obj_destroy` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x2e20 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x2e20-0x2f4c (300 bytes).
  It occupies 300 bytes.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8, including `ld` at 0x2e20, `ld` at 0x2e70, `ld` at 0x2ee0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x2e24, `lw` at 0x2e54.
  2 such `ld` accesses load 8 bytes from [a0+8]:8 +0x8, including `ld` at 0x2e2c, `ld` at 0x2e74.
  2 such `ld` accesses load 8 bytes from [[a0+8]:8+8]:8 +0x8, including `ld` at 0x2e38, `ld` at 0x2e78.
  The `ld` at 0x2e8c loads 8 bytes from [[[a0+8]:8+8]:8+8]:8 +0x0.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x50, including `ld` at 0x2e90, `ld` at 0x2ec0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x58, including `lw` at 0x2ea0, `lw` at 0x2eb8.
  The `ld` at 0x2ea4 loads 8 bytes from [[[a0+8]:8+8]:8+8]:8 +0x6b0.
  The `lw` at 0x2ea8 loads 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x6b8.
  The `sd` at 0x2eb4 stores 8 bytes to [[[a0+8]:8+8]:8+8]:8 +0x6b0.
  The `sw` at 0x2ec4 stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `sd` at 0x2ec8 stores 8 bytes to a0 (arg0 at entry) +0x50.
  The `lh` at 0x2ecc loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sd` at 0x2ee8 stores 8 bytes to ([a0+8]:8 + ([a0]:2 << 0x3)) +0x10.
  The `lw` at 0x2ef0 loads 4 bytes from [a0+8]:8 +0x90.
  The `sw` at 0x2ef8 stores 4 bytes to [a0+8]:8 +0x90.
  The `sb` at 0x2f10 stores 1 byte to ?.
  The `ld` at 0x2f30 loads 8 bytes from [[[a0+8]:8+8]:8+8]:8 +0x6a8.
  The `sw` at 0x2f48 stores 4 bytes to [[[a0+8]:8+8]:8+8]:8 +0x6b8.
  The `jal` at 0x2e4c calls odsy_mm_decommit with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+64], a3=a3 at entry (arg3).
  The `jal` at 0x2e68 calls odsy_mm_release with a0=a0 at entry (arg0), a1=?, a2=[a0+64], a3=?.
  The `jal` at 0x2e88 calls odsyDMAWait with a0=[[[[a0+8]:8+8]:8+8]:8]:8, a1=0x0, a2=0x1, a3=a0+96.
  The `jal` at 0x2ebc calls kmem_free with a0=[a0+80]:8, a1=[a0+88], a2=?, a3=?.
  The `jal` at 0x2f18 calls kmem_free with a0=a0 at entry (arg0), a1=0x88, a2=0x11, a3=?.
  The `beq` branch at 0x2e40 targets 0x2e5c, is taken when (a2(=[a0+64]) & 0x8) == 0, and falls through when (a2(=[a0+64]) & 0x8) != 0.
  The `beq` branch at 0x2e60 targets 0x2e70, is taken when (a2(=[a0+64]) & 0x4) == 0, and falls through when (a2(=[a0+64]) & 0x4) != 0.
  The `beq` branch at 0x2e98 targets 0x2ecc, is taken when a1(=[a0+80]:8) == 0, and falls through when a1(=[a0+80]:8) != 0.
  The `beq` branch at 0x2eb0 targets 0x2f30, is taken when at(=[[[[a0+8]:8+8]:8+8]:8+1720]) == 0, and falls through when at(=[[[[a0+8]:8+8]:8+8]:8+1720]) != 0.
  The `beq` branch at 0x2ed8 targets 0x2efc, is taken when a0(=[a0]:2) == at(=-0x1), and falls through when a0(=[a0]:2) != at(=-0x1).
  The `bne` branch at 0x2f0c targets 0x2f00, is taken when a0(?) < 0x88 (unsigned), and falls through when a0(?) >= 0x88 (unsigned).
  The `bne` branch at 0x2f38 targets 0x2eb8, is taken when v1(=[[[[a0+8]:8+8]:8+8]:8+1704]:8) < a0(?) (signed), and falls through when v1(=[[[[a0+8]:8+8]:8+8]:8+1704]:8) >= a0(?) (signed).
  The `beq` branch at 0x2f44 targets 0x2eb8 and is always taken.
  The return at 0x2f28 has v0 = ret(kmem_free).
- `odsy_mm_sg_remove_grp` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x2f4c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x2f4c-0x2f8c (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x2f4c loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `sw` at 0x2f80 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jal` at 0x2f6c calls OdsyDeallocCSetId with a0=a0+64, a1=[a1], a2=a2 at entry (arg2), a3=[a1], a4=a0 at entry (arg0).
  The `beq` branch at 0x2f5c targets 0x2f84, is taken when at(=-0x1) == a3(=[a1]), and falls through when at(=-0x1) != a3(=[a1]).
  The return at 0x2f84 has v0 = one of ?, -0x1.
- `odsy_mm_sg_add_grp` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x2f8c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x2f8c-0x320c (640 bytes).
  It occupies 640 bytes.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0x2ff8, `sw` at 0x3114.
  The `sd` at 0x305c stores 8 bytes to ret(kmem_alloc) +0x8.
  The `sd` at 0x3080 stores 8 bytes to ret(kmem_alloc) +0x10.
  The `sd` at 0x308c stores 8 bytes to ret(kmem_alloc) +0x18.
  The `lw` at 0x3098 loads 4 bytes from a2 (arg2 at entry) +0x34.
  The `sw` at 0x30a0 stores 4 bytes to a2 (arg2 at entry) +0x34.
  The `ld` at 0x30a8 loads 8 bytes from ret(kmem_alloc) +0x10.
  The `sh` at 0x30ac stores 2 bytes to a2 (arg2 at entry) +0x40.
  The `sd` at 0x30b0 stores 8 bytes to a2 (arg2 at entry) +0x38.
  The `lw` at 0x30e0 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwu` at 0x315c loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `ld` at 0x3160 loads 8 bytes from ?.
  The `sd` at 0x3174 stores 8 bytes to a1 (arg1 at entry) +0x98.
  The `jal` at 0x2fd4 calls OdsyAllocCSetId with a0=a0+64, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3014 calls OdsyLookupCSetId with a0=a0+104, a1=?, a2=?, a3=?.
  The `jal` at 0x303c calls kmem_alloc with a0=0x20, a1=0x0, a2=?, a3=?.
  The `jal` at 0x3050 calls kmem_alloc with a0=0x4000, a1=0x0, a2=?, a3=?.
  The `jal` at 0x3068 calls OdsyAllocSpecificCSetId with a0=a0+104, a1=?, a2=ret(kmem_alloc), a3=?.
  The `jal` at 0x3088 calls MapKernelRegionIntoUserSpace with a0=ret(kmem_alloc), a1=0x1, a2=?, a3=?, a4=-0x1, a5=0x4000.
  The `jal` at 0x3108 calls OdsyDeallocCSetId with a0=a0+64, a1=?, a2=?, a3=?, a4=one of 0x0, 0x1.
  The `jal` at 0x3188 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x31a4 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x31c0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x31dc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a4=-0x1.
  The `jal` at 0x31f8 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x2fe0 targets 0x3134, is taken when v0(=ret(OdsyAllocCSetId)) == at(=-0x1), and falls through when v0(=ret(OdsyAllocCSetId)) != at(=-0x1).
  The `bne` branch at 0x3020 targets 0x30d8, is taken when v0(=ret(OdsyLookupCSetId)) != 0, and falls through when v0(=ret(OdsyLookupCSetId)) == 0.
  The `beq` branch at 0x3034 targets 0x3180, is taken when a3(?) >= 0x80 (unsigned), and falls through when a3(?) < 0x80 (unsigned).
  The `beq` branch at 0x3044 targets 0x319c, is taken when v0(=ret(kmem_alloc)) == 0, and falls through when v0(=ret(kmem_alloc)) != 0.
  The `beq` branch at 0x3058 targets 0x31b8, is taken when v0(=ret(kmem_alloc)) == 0, and falls through when v0(=ret(kmem_alloc)) != 0.
  The `beq` branch at 0x3074 targets 0x31d4, is taken when v0(=ret(OdsyAllocSpecificCSetId)) == a4(=-0x1), and falls through when v0(=ret(OdsyAllocSpecificCSetId)) != a4(=-0x1).
  The `bne` branch at 0x3090 targets 0x31f0, is taken when v0(=ret(MapKernelRegionIntoUserSpace)) != 0, and falls through when v0(=ret(MapKernelRegionIntoUserSpace)) == 0.
  The `beq` branch at 0x30d8 targets 0x313c, is taken when s1(=one of 0x0, 0x1) == 0, and falls through when s1(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x30f4 targets 0x3118, is taken when at(?) == v1(=-0x1), and falls through when at(?) != v1(=-0x1).
  The `beq` branch at 0x3134 targets 0x311c and is always taken.
  The `bne` branch at 0x313c targets 0x30e0, is taken when a4(=one of 0x0, 0x1) != 0, and falls through when a4(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0x3144 targets 0x30e0, is taken when at(=one of 0x0, 0x1) != 0, and falls through when at(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0x314c targets 0x30e0, is taken when v1(=one of 0x0, 0x1) != 0, and falls through when v1(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0x3154 targets 0x30e0, is taken when a3(=one of 0x0, 0x1) != 0, and falls through when a3(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x3178 targets 0x311c and is always taken.
  The `beq` branch at 0x3194 targets 0x30d4 and is always taken.
  The `beq` branch at 0x31b0 targets 0x30cc and is always taken.
  The `beq` branch at 0x31cc targets 0x30c4 and is always taken.
  The `beq` branch at 0x31e8 targets 0x30bc and is always taken.
  The `beq` branch at 0x3204 targets 0x30b4 and is always taken.
  The return at 0x312c has v0 = one of -0x1, ret(OdsyAllocCSetId), ?.
- `odsy_mm_grp_new` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x320c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x320c-0x3324 (280 bytes).
  It occupies 280 bytes.
  2 such `sw` accesses store 4 bytes to ret(kmem_alloc) +0xcc, including `sw` at 0x3258, `sw` at 0x32f8.
  The `sw` at 0x3264 stores 4 bytes to ret(kmem_alloc) +0x0.
  The `sw` at 0x3268 stores 4 bytes to ret(kmem_alloc) +0x90.
  The `sw` at 0x326c stores 4 bytes to ret(kmem_alloc) +0xd0.
  The `sd` at 0x3274 stores 8 bytes to ret(kmem_alloc) +0xe8.
  The `sd` at 0x3280 stores 8 bytes to ret(kmem_alloc) +0xe0.
  The `sd` at 0x3290 stores 8 bytes to ret(kmem_alloc) +0xd8.
  The `sd` at 0x3294 stores 8 bytes to ret(kmem_alloc) +0x8.
  The `lbu` at 0x3298 loads 1 byte from a2 (arg2 at entry) +0xc.
  The `sw` at 0x32ac stores 4 bytes to ret(kmem_alloc) +0xc8.
  The `lw` at 0x32b0 loads 4 bytes from ret(kmem_alloc) +0x0.
  The `lw` at 0x32c4 loads 4 bytes from ret(kmem_alloc) +0xc8.
  The `jal` at 0x322c calls kmem_alloc with a0=0xf0, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3260 calls bzero with a0=ret(kmem_alloc)+16, a1=0x80, a2=?, a3=?.
  The `jal` at 0x327c calls OdsyInitCSet with a0=ret(kmem_alloc)+160, a1=0x2, a2=?, a3=?.
  The `jal` at 0x32a8 calls odsy_mm_sg_add_grp with a0=a1 at entry (arg1), a1=ret(kmem_alloc), a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x32d8 calls OdsyAllocCSetId with a0=a0+264, a1=ret(kmem_alloc), a2=?, a3=[ret(kmem_alloc)], a4=[ret(kmem_alloc)+200].
  The `jal` at 0x32fc calls odsy_mm_grp_destroy with a0=ret(kmem_alloc), a1=?, a2=?, a3=?.
  The `bne` branch at 0x3238 targets 0x3250, is taken when v0(=ret(kmem_alloc)) != 0, and falls through when v0(=ret(kmem_alloc)) == 0.
  The `beq` branch at 0x32bc targets 0x32fc, is taken when a3(=[ret(kmem_alloc)]) == v0(=-0x1), and falls through when a3(=[ret(kmem_alloc)]) != v0(=-0x1).
  The `beq` branch at 0x32c8 targets 0x3314, is taken when a4(=[ret(kmem_alloc)+200]) == 0, and falls through when a4(=[ret(kmem_alloc)+200]) != 0.
  The `beq` branch at 0x32ec targets 0x3314, is taken when v0(=ret(OdsyAllocCSetId)) == a3(=-0x1), and falls through when v0(=ret(OdsyAllocCSetId)) != a3(=-0x1).
  The `beq` branch at 0x32f4 targets 0x3318, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x330c targets 0x3248 and is always taken.
  The `bne` branch at 0x3314 targets 0x32fc, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x331c targets 0x3248 and is always taken.
  The return at 0x3248 has v0 = one of 0x0, ret(kmem_alloc).
- `odsy_mm_grp_destroy` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x3324 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x3324-0x34d4 (432 bytes).
  It occupies 432 bytes.
  The `lw` at 0x3324 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `ld` at 0x3360 loads 8 bytes from ?.
  The `sd` at 0x3378 stores 8 bytes to ?.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x33c4, `sb` at 0x34b0.
  The `ld` at 0x3408 loads 8 bytes from ret(OdsyNextCSetElem) +0x10.
  The `lw` at 0x3448 loads 4 bytes from [ret(OdsyNextCSetElem)+16]:8 +0xa0.
  The `lw` at 0x346c loads 4 bytes from a0 (arg0 at entry) +0xcc.
  The `ld` at 0x347c loads 8 bytes from a0 (arg0 at entry) +0xd8.
  The `ld` at 0x3488 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `jal` at 0x336c calls odsy_mm_obj_destroy with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3384 calls OdsyInitCSetCursor with a0=a0+160, a1=?, a2=?, a3=?.
  The `jal` at 0x3390 calls OdsyNextCSetElem with a0=a0+160, a1=?, a2=?, a3=?.
  The `jal` at 0x33cc calls kmem_free with a0=ret(OdsyNextCSetElem), a1=0x28, a2=?, a3=?.
  The `jal` at 0x33d4 calls OdsyInitCSetCursor with a0=a0+160, a1=?, a2=?, a3=?.
  The `jal` at 0x33dc calls OdsyNextCSetElem with a0=a0+160, a1=?, a2=?, a3=?.
  The `jal` at 0x33f0 calls OdsyInitCSetCursor with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=?.
  The `jal` at 0x33f8 calls OdsyNextCSetElem with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=?.
  The `jal` at 0x340c calls odsy_mm_cores_destroy with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=?.
  The `jal` at 0x3414 calls OdsyInitCSetCursor with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=?.
  The `jal` at 0x341c calls OdsyNextCSetElem with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=?.
  The `jal` at 0x3438 calls OdsyDestroyCSet with a0=ret(OdsyNextCSetElem), a1=0x0, a2=?, a3=?.
  The `jal` at 0x3444 calls OdsyDeallocCSetId with a0=a0+160, a1=[[ret(OdsyNextCSetElem)+16]:8+160], a2=?, a3=?.
  The `jal` at 0x3464 calls OdsyDestroyCSet with a0=a0+160, a1=0x0, a2=?, a3=?.
  The `jal` at 0x3480 calls OdsyDeallocCSetId with a0=[a0+216]:8+264, a1=[a0+204], a2=-0x1, a3=?.
  The `jal` at 0x348c calls odsy_mm_sg_remove_grp with a0=[a0+8]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x34bc calls kmem_free with a0=a0 at entry (arg0), a1=0xf0, a2=?, a3=?.
  The `beq` branch at 0x3334 targets 0x3498, is taken when at(=[a0]) == v0(=-0x1), and falls through when at(=[a0]) != v0(=-0x1).
  The `beq` branch at 0x3348 targets 0x3358 and is always taken.
  The `beq` branch at 0x3354 targets 0x337c, is taken when s0(?) >= 0x10 (signed), and falls through when s0(?) < 0x10 (signed).
  The `beq` branch at 0x3364 targets 0x3350, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x3374 targets 0x3350 and is always taken.
  The `beq` branch at 0x339c targets 0x345c, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x33a4 targets 0x33ec and is always taken.
  The `bne` branch at 0x33ac targets 0x3434 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x33c0 targets 0x33b4, is taken when v0(?) < 0x28 (unsigned), and falls through when v0(?) >= 0x28 (unsigned).
  The `beq` branch at 0x33e4 targets 0x3454, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x3400 targets 0x33ac, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `bne` branch at 0x3424 targets 0x3408, is taken when v0(=ret(OdsyNextCSetElem)) != 0, and falls through when v0(=ret(OdsyNextCSetElem)) == 0.
  The `beq` branch at 0x342c targets 0x33b4, is taken when s1(=[ret(OdsyNextCSetElem)+16]:8) == 0, and falls through when s1(=[ret(OdsyNextCSetElem)+16]:8) != 0.
  The `beq` branch at 0x344c targets 0x33b4 and is always taken.
  The `beq` branch at 0x3474 targets 0x3488, is taken when a2(=-0x1) == a1(=[a0+204]), and falls through when a2(=-0x1) != a1(=[a0+204]).
  The `bne` branch at 0x34ac targets 0x34a0, is taken when v0(?) < 0xf0 (unsigned), and falls through when v0(?) >= 0xf0 (unsigned).
  The return at 0x34cc has v0 = ret(kmem_free).
- `odsy_mm_cores_destroy` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x34d4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x34d4-0x3594 (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0x34d4 loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `ld` at 0x34f8 loads 8 bytes from a0 (arg0 at entry) +0x38.
  The `sw` at 0x34fc stores 4 bytes to a0 (arg0 at entry) +0x34.
  The `lw` at 0x3504 loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `ld` at 0x3510 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `sw` at 0x3520 stores 4 bytes to a0 (arg0 at entry) +0x30.
  The `lw` at 0x3528 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `ld` at 0x3534 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ld` at 0x3538 loads 8 bytes from [a0+8]:8 +0x8.
  The `ld` at 0x353c loads 8 bytes from [[a0+8]:8+8]:8 +0x8.
  The `ld` at 0x3540 loads 8 bytes from [[[a0+8]:8+8]:8+8]:8 +0x0.
  The `sb` at 0x356c stores 1 byte to ?.
  The `jal` at 0x34f4 calls OdsyDeallocCSetId with a0=[a0+56]:8, a1=[a0+52], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3518 calls OdsyDeallocCSetId with a0=[a0+16]:8+184, a1=[a0+48], a2=?, a3=?.
  The `jal` at 0x3548 calls OdsyFree32kSlot with a0=[[[[a0+8]:8+8]:8+8]:8]:8+6112, a1=[a0+24], a2=?, a3=?.
  The `jal` at 0x3578 calls kmem_free with a0=a0 at entry (arg0), a1=0x48, a2=?, a3=?.
  The `beq` branch at 0x34e8 targets 0x3504, is taken when a1(=[a0+52]) == s1(=-0x1), and falls through when a1(=[a0+52]) != s1(=-0x1).
  The `beq` branch at 0x3508 targets 0x3528, is taken when a1(=[a0+48]) == s1(=-0x1), and falls through when a1(=[a0+48]) != s1(=-0x1).
  The `beq` branch at 0x352c targets 0x3558, is taken when a1(=[a0+24]) == s1(=-0x1), and falls through when a1(=[a0+24]) != s1(=-0x1).
  The `bne` branch at 0x3568 targets 0x355c, is taken when a0(?) < 0x48 (unsigned), and falls through when a0(?) >= 0x48 (unsigned).
  The return at 0x358c has v0 = ret(kmem_free).
- `odsy_mm_cores_new` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x3594 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x3594-0x3980 (1004 bytes).
  It occupies 1004 bytes.
  The `ld` at 0x35dc loads 8 bytes from a1 (arg1 at entry) +0x8.
  The `ld` at 0x35e4 loads 8 bytes from [a1+8]:8 +0x8.
  The `ld` at 0x35f0 loads 8 bytes from [[a1+8]:8+8]:8 +0x0.
  The `sw` at 0x3620 stores 4 bytes to ret(kmem_alloc) +0x40.
  2 such `sw` accesses store 4 bytes to ret(kmem_alloc) +0x18, including `sw` at 0x3628, `sw` at 0x36b0.
  2 such `sw` accesses store 4 bytes to ret(kmem_alloc) +0x34, including `sw` at 0x362c, `sw` at 0x3690.
  2 such `sw` accesses store 4 bytes to ret(kmem_alloc) +0x30, including `sw` at 0x3630, `sw` at 0x3674.
  The `sd` at 0x3644 stores 8 bytes to ret(kmem_alloc) +0x38.
  The `sw` at 0x3648 stores 4 bytes to ret(kmem_alloc) +0x4.
  The `sd` at 0x364c stores 8 bytes to ret(kmem_alloc) +0x10.
  2 such `sd` accesses store 8 bytes to ret(kmem_alloc) +0x8, including `sd` at 0x3650, `sd` at 0x371c.
  The `sw` at 0x3658 stores 4 bytes to ret(kmem_alloc) +0x0.
  2 such `lw` accesses load 4 bytes from ret(kmem_alloc) +0x30, including `lw` at 0x36a8, `lw` at 0x3838.
  The `sd` at 0x3734 stores 8 bytes to ret(kmem_alloc) +0x18.
  3 such `ld` accesses load 8 bytes from ret(kmem_alloc) +0x8, including `ld` at 0x3774, `ld` at 0x391c, `ld` at 0x3940.
  The `sw` at 0x3790 stores 4 bytes to ?.
  The `lw` at 0x379c loads 4 bytes from a6 (arg6 at entry) +0x0.
  The `sh` at 0x37a0 stores 2 bytes to a6 (arg6 at entry) +0x20.
  The `sw` at 0x37a8 stores 4 bytes to a6 (arg6 at entry) +0x0.
  The `ld` at 0x37ac loads 8 bytes from ret(kmem_alloc) +0x10.
  The `sd` at 0x37b0 stores 8 bytes to a6 (arg6 at entry) +0x18.
  The `lw` at 0x3820 loads 4 bytes from ret(kmem_alloc) +0x18.
  The `ld` at 0x3824 loads 8 bytes from [[a1+8]:8+8]:8 +0x8.
  The `sd` at 0x3830 stores 8 bytes to ret(kmem_alloc) +0x20.
  The `sh` at 0x3834 stores 2 bytes to ([[[a1+8]:8+8]:8+8]:8 + ([ret(kmem_alloc)+24] + [ret(kmem_alloc)+24])) +0x0.
  The `ld` at 0x383c loads 8 bytes from ?.
  The `sd` at 0x3854 stores 8 bytes to ret(kmem_alloc) +0x28.
  3 such `sb` accesses store 1 byte to ?, including `sb` at 0x38d4, `sb` at 0x3930, `sb` at 0x3960.
  The `jal` at 0x35f8 calls kmem_alloc with a0=0x48, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3660 calls OdsyAllocCSetId with a0=a5 at entry (arg5), a1=ret(kmem_alloc), a2=a2 at entry (arg2), a3=a4 at entry (arg4), a4=-0x1.
  The `jal` at 0x367c calls OdsyAllocCSetId with a0=a4 at entry (arg4), a1=ret(kmem_alloc), a2=?, a3=?, a7=-0x1.
  The `jal` at 0x3694 calls OdsyAlloc32kSlot with a0=[[[a1+8]:8+8]:8]:8+6112, a1=?, a2=?, a3=?.
  The `jal` at 0x36c4 calls OdsyLookupCSetId with a0=a0+224, a1=?, a2=?, a3=?, a7=-0x1.
  The `jal` at 0x36ec calls kmem_alloc with a0=0x20, a1=0x0, a2=ret(OdsyLookupCSetId), a3=?.
  The `jal` at 0x3700 calls bzero with a0=ret(kmem_alloc), a1=0x20, a2=?, a3=?.
  The `jal` at 0x370c calls kmem_alloc with a0=0x4000, a1=0x0, a2=?, a3=?.
  The `jal` at 0x3730 calls OdsyAllocSpecificCSetId with a0=a0+224, a1=?, a2=ret(kmem_alloc), a3=?.
  The `jal` at 0x3754 calls MapKernelRegionIntoUserSpace with a0=ret(kmem_alloc), a1=0x3, a2=ret(kmem_alloc), a3=?.
  The `jal` at 0x3804 calls odsy_mm_cores_destroy with a0=ret(kmem_alloc), a1=?, a2=?, a3=?.
  The `jal` at 0x3850 calls bzero with a0=?, a1=0x10, a2=?, a3=?, a4=([[[a1+8]:8+8]:8+8]:8 + ([ret(kmem_alloc)+24] + [ret(kmem_alloc)+24])), a5=([ret(kmem_alloc)+24] + [ret(kmem_alloc)+24]).
  The `jal` at 0x386c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=ret(OdsyLookupCSetId), a3=?.
  The `jal` at 0x3890 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x38b0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x38dc calls kmem_free with a0=ret(kmem_alloc), a1=0x20, a2=?, a3=0x25.
  The `jal` at 0x38fc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=ret(kmem_alloc), a3=?.
  The `jal` at 0x3908 calls OdsyDeallocCSetId with a0=a0+224, a1=?, a2=?, a3=?.
  The `jal` at 0x393c calls kmem_free with a0=[ret(kmem_alloc)+8]:8, a1=0x4000, a2=?, a3=0x27.
  The `jal` at 0x3968 calls kmem_free with a0=ret(kmem_alloc), a1=0x20, a2=?, a3=0x29.
  The `bne` branch at 0x360c targets 0x3620, is taken when s0(=ret(kmem_alloc)) != 0, and falls through when s0(=ret(kmem_alloc)) == 0.
  The `beq` branch at 0x366c targets 0x3804, is taken when v0(=ret(OdsyAllocCSetId)) == a7(=-0x1), and falls through when v0(=ret(OdsyAllocCSetId)) != a7(=-0x1).
  The `beq` branch at 0x3688 targets 0x3800, is taken when v0(=ret(OdsyAllocCSetId)) == t0(=-0x1), and falls through when v0(=ret(OdsyAllocCSetId)) != t0(=-0x1).
  The `beq` branch at 0x36a0 targets 0x3804, is taken when v0(=ret(OdsyAlloc32kSlot)) == a7(=-0x1), and falls through when v0(=ret(OdsyAlloc32kSlot)) != a7(=-0x1).
  The `bne` branch at 0x36d0 targets 0x37d4, is taken when v0(=ret(OdsyLookupCSetId)) != 0, and falls through when v0(=ret(OdsyLookupCSetId)) == 0.
  The `beq` branch at 0x36e0 targets 0x3864, is taken when a7(?) >= 0x20 (unsigned), and falls through when a7(?) < 0x20 (unsigned).
  The `beq` branch at 0x36f4 targets 0x3884, is taken when v0(=ret(kmem_alloc)) == 0, and falls through when v0(=ret(kmem_alloc)) != 0.
  The `beq` branch at 0x3718 targets 0x38a8, is taken when v0(=ret(kmem_alloc)) == 0, and falls through when v0(=ret(kmem_alloc)) != 0.
  The `beq` branch at 0x3748 targets 0x37bc, is taken when v0(=ret(OdsyAllocSpecificCSetId)) == at(=-0x1), and falls through when v0(=ret(OdsyAllocSpecificCSetId)) != at(=-0x1).
  The `bne` branch at 0x375c targets 0x38f4, is taken when v0(=ret(MapKernelRegionIntoUserSpace)) != 0, and falls through when v0(=ret(MapKernelRegionIntoUserSpace)) == 0.
  The `bne` branch at 0x3768 targets 0x3798, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `bne` branch at 0x378c targets 0x3774, is taken when v0(?) < 0x2 (signed), and falls through when v0(?) >= 0x2 (signed).
  The `bne` branch at 0x37dc targets 0x3800, is taken when t0(=one of 0x0, 0x1) != 0, and falls through when t0(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0x37e4 targets 0x3804, is taken when at(=one of 0x0, 0x1) != 0, and falls through when at(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0x37ec targets 0x3800, is taken when v1(=one of 0x0, 0x1) != 0, and falls through when v1(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0x37f4 targets 0x3800, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x37fc targets 0x3818, is taken when t0(=one of 0x0, 0x1) == 0, and falls through when t0(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x3810 targets 0x3618 and is always taken.
  The `beq` branch at 0x385c targets 0x3618 and is always taken.
  The `beq` branch at 0x387c targets 0x37cc and is always taken.
  The `beq` branch at 0x38a0 targets 0x37c4 and is always taken.
  The `bne` branch at 0x38d0 targets 0x38c0, is taken when a1(?) < 0x20 (unsigned), and falls through when a1(?) >= 0x20 (unsigned).
  The `beq` branch at 0x38ec targets 0x37bc and is always taken.
  The `bne` branch at 0x392c targets 0x3918, is taken when a1(?) < 0x4000 (signed), and falls through when a1(?) >= 0x4000 (signed).
  The `bne` branch at 0x395c targets 0x394c, is taken when a1(?) < 0x20 (unsigned), and falls through when a1(?) >= 0x20 (unsigned).
  The `beq` branch at 0x3978 targets 0x37b4 and is always taken.
  The return at 0x3618 has v0 = one of 0x0, ret(kmem_alloc).
- `SetupDMAParams` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x3980 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x3980-0x3b84 (516 bytes).
  It occupies 516 bytes.
  The `lw` at 0x39ac loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0x39b0 loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `sw` at 0x39cc stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lw` at 0x39d0 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x39d4 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `sw` at 0x39e8 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `lw` at 0x39ec loads 4 bytes from a1 (arg1 at entry) +0xc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x20, including `lw` at 0x39f0, `lw` at 0x3ae8.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0xc, including `sw` at 0x3a04, `sw` at 0x3a18.
  The `lw` at 0x3a08 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lw` at 0x3a1c loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0x3a20 loads 4 bytes from a0 (arg0 at entry) +0x14.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x4, including `sw` at 0x3a30, `sw` at 0x3a44.
  The `lw` at 0x3a34 loads 4 bytes from a0 (arg0 at entry) +0x18.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x11, including `lbu` at 0x3a48, `lbu` at 0x3aec.
  The `lw` at 0x3a94 loads 4 bytes from a1 (arg1 at entry) +0x10.
  The `lw` at 0x3ac4 loads 4 bytes from ?.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x10, including `sw` at 0x3ad4, `sw` at 0x3ae4.
  The `lw` at 0x3af0 loads 4 bytes from a1 (arg1 at entry) +0x1c.
  The `lw` at 0x3b34 loads 4 bytes from a1 (arg1 at entry) +0x18.
  The `sw` at 0x3b48 stores 4 bytes to a1 (arg1 at entry) +0x1c.
  The `sw` at 0x3b54 stores 4 bytes to a1 (arg1 at entry) +0x18.
  The `jal` at 0x39a4 calls bzero with a0=a1 at entry (arg1), a1=0x20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x3a64 targets 0x3b6c, is taken when a0(=[a0+17]:1) == at(=0x10), and falls through when a0(=[a0+17]:1) != at(=0x10).
  The `beq` branch at 0x3a70 targets 0x3b74, is taken when a0(=[a0+17]:1) == at(=0x8), and falls through when a0(=[a0+17]:1) != at(=0x8).
  The `beq` branch at 0x3a78 targets 0x3b7c, is taken when a0(=[a0+17]:1) == v0(=0x4), and falls through when a0(=[a0+17]:1) != v0(=0x4).
  The `beq` branch at 0x3a80 targets 0x3b64, is taken when a0(=[a0+17]:1) == v1(=0x2), and falls through when a0(=[a0+17]:1) != v1(=0x2).
  The `beq` branch at 0x3b64 targets 0x3a88 and is always taken.
  The `beq` branch at 0x3b6c targets 0x3a88 and is always taken.
  The `beq` branch at 0x3b74 targets 0x3a88 and is always taken.
  The `beq` branch at 0x3b7c targets 0x3a88 and is always taken.
  The return at 0x3b5c has v0 = ((a2 | 0x32) << 0x18).
- `mm_okay_to_swap_in` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x3b84 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x3b84-0x3cf0 (364 bytes).
  It occupies 364 bytes.
  The `lw` at 0x3b90 loads 4 bytes from a0 (arg0 at entry) +0x38.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8, including `ld` at 0x3b98, `ld` at 0x3c94.
  2 such `ld` accesses load 8 bytes from [a0+8]:8 +0x8, including `ld` at 0x3ba0, `ld` at 0x3ca8.
  The `lw` at 0x3ba4 loads 4 bytes from a0 (arg0 at entry) +0x3c.
  The `ld` at 0x3ba8 loads 8 bytes from [[a0+8]:8+8]:8 +0x8.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x3c34, `ld` at 0x3c90, `ld` at 0x3ca4.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0x3c48, `lw` at 0x3c58, `lw` at 0x3c5c.
  The `lh` at 0x3c88 loads 2 bytes from ?.
  The `lh` at 0x3c8c loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x3c9c loads 4 bytes from [a0+8]:8 +0x0.
  The `lw` at 0x3cbc loads 4 bytes from [[a0+8]:8+8]:8 +0x14.
  The `jal` at 0x3bbc calls OdsyInitCSetCursor with a0=[[[a0+8]:8+8]:8+8]:8+1488, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3bc4 calls OdsyNextCSetElem with a0=[[[a0+8]:8+8]:8+8]:8+1488, a1=?, a2=?, a3=?.
  The `jal` at 0x3bdc calls OdsyNextCSetElem with a0=[[[a0+8]:8+8]:8+8]:8+1488, a1=?, a2=?, a3=?.
  The `jal` at 0x3bec calls OdsyInitCSetCursor with a0=ret(OdsyNextCSetElem)+64, a1=?, a2=?, a3=?.
  The `jal` at 0x3bf4 calls OdsyNextCSetElem with a0=ret(OdsyNextCSetElem)+64, a1=?, a2=?, a3=?.
  The `jal` at 0x3c0c calls OdsyNextCSetElem with a0=ret(OdsyNextCSetElem)+64, a1=?, a2=?, a3=?.
  The `jal` at 0x3cb8 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=[[[a0+8]:8+8]:8+20], a3=[[a0+8]:8], a4=[a0]:2.
  The `beq` branch at 0x3bcc targets 0x3ccc, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x3bd4 targets 0x3be8 and is always taken.
  The `beq` branch at 0x3be4 targets 0x3ccc, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x3bfc targets 0x3bdc, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x3c04 targets 0x3c1c and is always taken.
  The `beq` branch at 0x3c14 targets 0x3bdc, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x3c1c targets 0x3c2c and is always taken.
  The `beq` branch at 0x3c28 targets 0x3c0c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x3c38 targets 0x3c24, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x3c40 targets 0x3c28, is taken when t2(?) == s1(=a0), and falls through when t2(?) != s1(=a0).
  The `beq` branch at 0x3c50 targets 0x3c28, is taken when (at(?) & 0x1) == 0, and falls through when (at(?) & 0x1) != 0.
  The `bne` branch at 0x3c68 targets 0x3c74, is taken when a4(?) < s0(=[a0+56]) (signed), and falls through when a4(?) >= s0(=[a0+56]) (signed).
  The `bne` branch at 0x3c70 targets 0x3c88, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x3c78 targets 0x3c24, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x3c80 targets 0x3c28, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x3cc4 targets 0x3cd4 and is always taken.
  The return at 0x3ce8 has v0 = one of 0x0, 0x1.
- `odsy_mm_check_for_mutations` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x3cf0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x3cf0-0x3df4 (260 bytes).
  It occupies 260 bytes.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x3d90, `ld` at 0x3dac.
  The `lw` at 0x3d9c loads 4 bytes from ?.
  The `jal` at 0x3d08 calls OdsyInitCSetCursor with a0=a0+1488, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3d10 calls OdsyNextCSetElem with a0=a0+1488, a1=?, a2=?, a3=?.
  The `jal` at 0x3d38 calls OdsyNextCSetElem with a0=a0+1488, a1=?, a2=?, a3=?.
  The `jal` at 0x3d48 calls OdsyInitCSetCursor with a0=ret(OdsyNextCSetElem)+64, a1=?, a2=?, a3=?.
  The `jal` at 0x3d50 calls OdsyNextCSetElem with a0=ret(OdsyNextCSetElem)+64, a1=?, a2=?, a3=?.
  The `jal` at 0x3d68 calls OdsyNextCSetElem with a0=ret(OdsyNextCSetElem)+64, a1=?, a2=?, a3=?.
  The `jal` at 0x3dc0 calls odsy_mm_obj_xfr_backing_store with a0=?, a1=sp-80, a2=0x1, a3=?.
  The `beq` branch at 0x3d20 targets 0x3dd0, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x3d30 targets 0x3d44 and is always taken.
  The `beq` branch at 0x3d40 targets 0x3dd0, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x3d58 targets 0x3d38, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x3d60 targets 0x3d78 and is always taken.
  The `beq` branch at 0x3d70 targets 0x3d38, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x3d78 targets 0x3d88 and is always taken.
  The `beq` branch at 0x3d84 targets 0x3d68, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x3d94 targets 0x3d80, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x3da4 targets 0x3d84, is taken when (a1(?) & 0x1) == 0, and falls through when (a1(?) & 0x1) != 0.
  The `beq` branch at 0x3db0 targets 0x3d84, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x3dc8 targets 0x3d80 and is always taken.
  The return at 0x3dec has v0 = one of 0x0, ?.
- `odsy_mm_jettison_freerun_backing_store` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x3df4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x3df4-0x3f30 (316 bytes).
  It occupies 316 bytes.
  7 such `ld` accesses load 8 bytes from ?, including `ld` at 0x3e90, `ld` at 0x3ebc, `ld` at 0x3ed8.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x3e94, `lw` at 0x3ec8, `lw` at 0x3f08.
  The `ld` at 0x3e98 loads 8 bytes from a0 (arg0 at entry) +0x6b0.
  The `sd` at 0x3ea0 stores 8 bytes to a0 (arg0 at entry) +0x6b0.
  The `sw` at 0x3ea4 stores 4 bytes to ?.
  The `sd` at 0x3ea8 stores 8 bytes to ?.
  The `jal` at 0x3e0c calls OdsyInitCSetCursor with a0=a0+1488, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3e14 calls OdsyNextCSetElem with a0=a0+1488, a1=?, a2=?, a3=?.
  The `jal` at 0x3e44 calls OdsyNextCSetElem with a0=a0+1488, a1=?, a2=?, a3=?.
  The `jal` at 0x3e54 calls OdsyInitCSetCursor with a0=ret(OdsyNextCSetElem)+64, a1=?, a2=?, a3=?.
  The `jal` at 0x3e5c calls OdsyNextCSetElem with a0=ret(OdsyNextCSetElem)+64, a1=?, a2=?, a3=?.
  The `jal` at 0x3e74 calls OdsyNextCSetElem with a0=ret(OdsyNextCSetElem)+64, a1=?, a2=?, a3=?.
  The `jal` at 0x3e8c calls kmem_free with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3efc calls odsyDMAWait with a0=?, a1=0x0, a2=0x1, a3=?.
  The `beq` branch at 0x3e28 targets 0x3f0c, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x3e3c targets 0x3e50 and is always taken.
  The `beq` branch at 0x3e4c targets 0x3f0c, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x3e64 targets 0x3e44, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x3e6c targets 0x3e84 and is always taken.
  The `beq` branch at 0x3e7c targets 0x3e44, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x3e84 targets 0x3eb4 and is always taken.
  The `beq` branch at 0x3eb0 targets 0x3e74, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x3ec0 targets 0x3eac, is taken when s5(?) == 0, and falls through when s5(?) != 0.
  The `beq` branch at 0x3ed0 targets 0x3eb0, is taken when (at(?) & 0x1) == 0, and falls through when (at(?) & 0x1) != 0.
  The `beq` branch at 0x3edc targets 0x3eb0, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x3f04 targets 0x3e8c and is always taken.
  The return at 0x3f28 has v0 = ret(OdsyNextCSetElem).
- `odsy_mm_B_warn` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x3f30 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x3f30-0x3f70 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x3f30 loads 4 bytes from a0 (arg0 at entry) +0x6bc.
  The `sw` at 0x3f64 stores 4 bytes to a0 (arg0 at entry) +0x6bc.
  The `jal` at 0x3f54 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x3f38 targets 0x3f48, is taken when at(=[a0+1724]) == 0, and falls through when at(=[a0+1724]) != 0.
  The `beq` branch at 0x3f68 targets 0x3f40 and is always taken.
  The return at 0x3f40 has v0 = one of ?, ret(cmn_err).
- `odsy_mm_B_okay` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x3f70 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x3f70-0x3f78 (8 bytes).
  It occupies 8 bytes.
  The return at 0x3f70 has v0 = ?.
- `odsy_mm_obj_xfr_backing_store` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x3f78 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x3f78-0x44b0 (1336 bytes).
  It occupies 1336 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x28, including `lw` at 0x3f80, `lw` at 0x4160, `lw` at 0x4228.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8, including `ld` at 0x3f88, `ld` at 0x41d0, `ld` at 0x4404.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x3f90, `lw` at 0x41d4.
  3 such `ld` accesses load 8 bytes from [a0+8]:8 +0x8, including `ld` at 0x3f9c, `ld` at 0x41d8, `ld` at 0x4408.
  3 such `ld` accesses load 8 bytes from [[a0+8]:8+8]:8 +0x8, including `ld` at 0x3fa4, `ld` at 0x41e0, `ld` at 0x440c.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x50, including `ld` at 0x3fa8, `ld` at 0x41e4, `ld` at 0x4424.
  3 such `ld` accesses load 8 bytes from [[[a0+8]:8+8]:8+8]:8 +0x0, including `ld` at 0x3fac, `ld` at 0x41ec, `ld` at 0x4420.
  The `ld` at 0x3fc0 loads 8 bytes from [[[[a0+8]:8+8]:8+8]:8]:8 +0x2e0.
  3 such `ld` accesses load 8 bytes from [[[a0+8]:8+8]:8+8]:8 +0x6b0, including `ld` at 0x3fd8, `ld` at 0x4010, `ld` at 0x4430.
  2 such `ld` accesses load 8 bytes from [[[a0+8]:8+8]:8+8]:8 +0x6a0, including `ld` at 0x3fdc, `ld` at 0x4020.
  3 such `lw` accesses load 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x6b8, including `lw` at 0x3ff0, `lw` at 0x400c, `lw` at 0x4290.
  2 such `sw` accesses store 4 bytes to [[[a0+8]:8+8]:8+8]:8 +0x6b8, including `sw` at 0x4000, `sw` at 0x4454.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x50, including `sd` at 0x4074, `sd` at 0x445c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x58, including `sw` at 0x4080, `sw` at 0x4460.
  2 such `sd` accesses store 8 bytes to [[[a0+8]:8+8]:8+8]:8 +0x6b0, including `sd` at 0x4088, `sd` at 0x4444.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x4c, including `sw` at 0x40dc, `sw` at 0x42a4, `sw` at 0x4464.
  54 such `sw` accesses store 4 bytes to table(0x110000) +0x0, including `sw` at 0x40e0, `sw` at 0x40e8, `sw` at 0x40f0.
  The `lbu` at 0x4184 loads 1 byte from a0 (arg0 at entry) +0x11.
  The `lw` at 0x4188 loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `lw` at 0x4194 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0x41ac loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `lw` at 0x427c loads 4 bytes from a0 (arg0 at entry) +0x68.
  The `sw` at 0x4288 stores 4 bytes to a0 (arg0 at entry) +0x68.
  19 such `sw` accesses store 4 bytes to ?, including `sw` at 0x42bc, `sw` at 0x42c8, `sw` at 0x42d0.
  The `ld` at 0x4434 loads 8 bytes from [[[a0+8]:8+8]:8+8]:8 +0x6a8.
  The `jal` at 0x4004 calls odsy_mm_jettison_freerun_backing_store with a0=[[[a0+8]:8+8]:8+8]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4044 calls odsy_mm_B_warn with a0=[[[a0+8]:8+8]:8+8]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x4068 calls kmem_alloc with a0=?, a1=0x2000, a2=?, a3=?.
  The `jal` at 0x4078 calls odsy_mm_B_okay with a0=[[[a0+8]:8+8]:8+8]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x4094 calls SetupDMAParams with a0=a0 at entry (arg0), a1=sp-176, a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x4218 calls odsyDMAOp with a0=0x0, a1=[[[[a0+8]:8+8]:8+8]:8]:8, a2=0x0, a3=?, a4=[a0+72], a5=a1 at entry (arg1), a6=sp-176, a7=a0+96.
  The `jal` at 0x433c calls odsy_mm_B_warn with a0=[[[a0+8]:8+8]:8+8]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x441c calls odsyDMAWait with a0=[[[[a0+8]:8+8]:8+8]:8]:8, a1=0x0, a2=0x1, a3=a0+96, a4=[a0+104]+1.
  The `jal` at 0x4428 calls kmem_free with a0=[a0+80]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x4478 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0x3fc8 targets 0x408c, is taken when at(=[a0+80]:8) != 0, and falls through when at(=[a0+80]:8) == 0.
  The `beq` branch at 0x3fd0 targets 0x43e8, is taken when s2(=a2) == 0, and falls through when s2(=a2) != 0.
  The `beq` branch at 0x3fe8 targets 0x4060, is taken when v1(=[[[[a0+8]:8+8]:8+8]:8+1696]:8) >= v0(?) (signed), and falls through when v1(=[[[[a0+8]:8+8]:8+8]:8+1696]:8) < v0(?) (signed).
  The `beq` branch at 0x3ff4 targets 0x4020, is taken when v1(=[[[[a0+8]:8+8]:8+8]:8+1720]) == 0, and falls through when v1(=[[[[a0+8]:8+8]:8+8]:8+1720]) != 0.
  The `bne` branch at 0x4018 targets 0x405c, is taken when a3(=[[[[a0+8]:8+8]:8+8]:8+1720]) != 0, and falls through when a3(=[[[[a0+8]:8+8]:8+8]:8+1720]) == 0.
  The `beq` branch at 0x402c targets 0x405c, is taken when v1(=[[[[a0+8]:8+8]:8+8]:8+1696]:8) >= v0(?) (signed), and falls through when v1(=[[[[a0+8]:8+8]:8+8]:8+1696]:8) < v0(?) (signed).
  The `beq` branch at 0x4054 targets 0x426c and is always taken.
  The `beq` branch at 0x4070 targets 0x432c, is taken when v0(=ret(kmem_alloc)) == 0, and falls through when v0(=ret(kmem_alloc)) != 0.
  The `beq` branch at 0x40c4 targets 0x4354, is taken when s2(=a2) == 0, and falls through when s2(=a2) != 0.
  The `beq` branch at 0x4178 targets 0x4238, is taken when v1(=[a0+40]) == 0, and falls through when v1(=[a0+40]) != 0.
  The `bne` branch at 0x4220 targets 0x4470, is taken when v0(=ret(odsyDMAOp)) != 0, and falls through when v0(=ret(odsyDMAOp)) == 0.
  The `bne` branch at 0x4230 targets 0x4184, is taken when s4(?) < at(=[a0+40]) (unsigned), and falls through when s4(?) >= at(=[a0+40]) (unsigned).
  The `beq` branch at 0x4254 targets 0x4274, is taken when v1(=a2) == 0, and falls through when v1(=a2) != 0.
  The `beq` branch at 0x429c targets 0x4404, is taken when a3(=[[[[a0+8]:8+8]:8+8]:8+1720]) == 0, and falls through when a3(=[[[[a0+8]:8+8]:8+8]:8+1720]) != 0.
  The `beq` branch at 0x4324 targets 0x425c and is always taken.
  The `beq` branch at 0x434c targets 0x426c and is always taken.
  The `beq` branch at 0x43e0 targets 0x415c and is always taken.
  The `beq` branch at 0x43fc targets 0x426c and is always taken.
  The `bne` branch at 0x4448 targets 0x445c, is taken when a3(=[[[[a0+8]:8+8]:8+8]:8+1704]:8) < a4(?) (signed), and falls through when a3(=[[[[a0+8]:8+8]:8+8]:8+1704]:8) >= a4(?) (signed).
  The `beq` branch at 0x4468 targets 0x42b0 and is always taken.
  The `beq` branch at 0x44a8 targets 0x426c and is always taken.
  The return at 0x426c has v0 = one of 0x0, 0xc, 0x16.
- `odsy_mm_reserve` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x44b0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x44b0-0x4680 (464 bytes).
  It occupies 464 bytes.
  The `ld` at 0x44b4 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ld` at 0x44bc loads 8 bytes from [a0+8]:8 +0x8.
  The `ld` at 0x44c0 loads 8 bytes from [[a0+8]:8+8]:8 +0x8.
  2 such `lw` accesses load 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x69c, including `lw` at 0x44c4, `lw` at 0x4520.
  2 such `sw` accesses store 4 bytes to [[[a0+8]:8+8]:8+8]:8 +0x69c, including `sw` at 0x44e4, `sw` at 0x4528.
  The `lbu` at 0x44e8 loads 1 byte from a0 (arg0 at entry) +0x10.
  The `lw` at 0x4570 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `sw` at 0x4584 stores 4 bytes to a0 (arg0 at entry) +0x40.
  3 such `ld` accesses load 8 bytes from ret(OdsyNextCSetElem) +0x28, including `ld` at 0x45d0, `ld` at 0x45dc, `ld` at 0x45e8.
  2 such `sh` accesses store 2 bytes to [ret(OdsyNextCSetElem)+40]:8 +0x2, including `sh` at 0x45d4, `sh` at 0x45ec.
  The `sh` at 0x45e0 stores 2 bytes to [ret(OdsyNextCSetElem)+40]:8 +0x0.
  The `sw` at 0x45fc stores 4 bytes to ret(OdsyNextCSetElem) +0x40.
  The `jal` at 0x454c calls odsy_mm_reserve_pbuffer with a0=a0 at entry (arg0), a1=0x4, a2=0x6, a3=?.
  The `jal` at 0x4580 calls OdsyInitCSetCursor with a0=[a0+8]:8+160, a1=?, a2=?, a3=?.
  The `jal` at 0x4588 calls OdsyNextCSetElem with a0=[a0+8]:8+160, a1=?, a2=?, a3=?.
  The `jal` at 0x45a4 calls OdsyNextCSetElem with a0=[a0+8]:8+160, a1=?, a2=?, a3=?.
  The `jal` at 0x45b4 calls OdsyInitCSetCursor with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=?.
  The `jal` at 0x45bc calls OdsyNextCSetElem with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=?.
  The `jal` at 0x45f8 calls OdsyNextCSetElem with a0=ret(OdsyNextCSetElem), a1=[ret(OdsyNextCSetElem)+40]:8, a2=[ret(OdsyNextCSetElem)+40]:8, a3=[ret(OdsyNextCSetElem)+40]:8.
  The `jal` at 0x4628 calls mm_init_freespace with a0=[[[a0+8]:8+8]:8+8]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4640 calls odsy_mm_reserve_texture with a0=a0 at entry (arg0), a1=0x4, a2=0x6, a3=?.
  The `jal` at 0x4664 calls odsy_mm_reserve_scratch with a0=a0 at entry (arg0), a1=0x4, a2=0x6, a3=?.
  The `beq` branch at 0x44e0 targets 0x4624, is taken when s2(=0x1) == at(=[[[[a0+8]:8+8]:8+8]:8+1692]+1), and falls through when s2(=0x1) != at(=[[[[a0+8]:8+8]:8+8]:8+1692]+1).
  The `beq` branch at 0x44f4 targets 0x4544, is taken when v0(=[a0+16]:1) == v1(=0x3), and falls through when v0(=[a0+16]:1) != v1(=0x3).
  The `beq` branch at 0x44fc targets 0x4638, is taken when v0(=[a0+16]:1) == a1(=0x4), and falls through when v0(=[a0+16]:1) != a1(=0x4).
  The `beq` branch at 0x4504 targets 0x465c, is taken when v0(=[a0+16]:1) == a2(=0x6), and falls through when v0(=[a0+16]:1) != a2(=0x6).
  The `beq` branch at 0x4514 targets 0x4568, is taken when s0(=one of 0x0, 0xc) == 0, and falls through when s0(=one of 0x0, 0xc) != 0.
  The `bne` branch at 0x4560 targets 0x451c, is taken when s0(=one of 0x0, 0xc) != 0, and falls through when s0(=one of 0x0, 0xc) == 0.
  The `beq` branch at 0x4594 targets 0x4614, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x459c targets 0x45b4 and is always taken.
  The `beq` branch at 0x45ac targets 0x4610, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x45c4 targets 0x45a4, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `bne` branch at 0x4600 targets 0x45cc, is taken when v0(=ret(OdsyNextCSetElem)) != 0, and falls through when v0(=ret(OdsyNextCSetElem)) == 0.
  The `beq` branch at 0x4608 targets 0x45a4 and is always taken.
  The `beq` branch at 0x461c targets 0x4538 and is always taken.
  The `beq` branch at 0x4630 targets 0x44e8 and is always taken.
  The `beq` branch at 0x4654 targets 0x4514 and is always taken.
  The `beq` branch at 0x4678 targets 0x4514 and is always taken.
  The return at 0x453c has v0 = one of 0x0, 0xc.
- `odsy_mm_release` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x4680 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x4680-0x471c (156 bytes).
  It occupies 156 bytes.
  The `lbu` at 0x4680 loads 1 byte from a0 (arg0 at entry) +0x10.
  The `lw` at 0x46dc loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `ld` at 0x46e4 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0x46ec stores 4 bytes to a0 (arg0 at entry) +0x40.
  The `ld` at 0x46f0 loads 8 bytes from [a0+8]:8 +0x8.
  The `ld` at 0x46f4 loads 8 bytes from [[a0+8]:8+8]:8 +0x8.
  The `lw` at 0x46f8 loads 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x69c.
  The `sw` at 0x4704 stores 4 bytes to [[[a0+8]:8+8]:8+8]:8 +0x69c.
  The `jal` at 0x46b8 calls odsy_mm_release_pbuffer with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+16]:1, a3=a3 at entry (arg3).
  The `jal` at 0x46cc calls odsy_mm_release_scratch with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+16]:1, a3=a3 at entry (arg3).
  The `jal` at 0x470c calls odsy_mm_release_texture with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+16]:1, a3=a3 at entry (arg3).
  The `beq` branch at 0x4694 targets 0x46b4, is taken when a2(=[a0+16]:1) == at(=0x3), and falls through when a2(=[a0+16]:1) != at(=0x3).
  The `beq` branch at 0x469c targets 0x4708, is taken when a2(=[a0+16]:1) == v0(=0x4), and falls through when a2(=[a0+16]:1) != v0(=0x4).
  The `beq` branch at 0x46a4 targets 0x46c8, is taken when a2(=[a0+16]:1) == v1(=0x6), and falls through when a2(=[a0+16]:1) != v1(=0x6).
  The `beq` branch at 0x46c0 targets 0x46d8 and is always taken.
  The `beq` branch at 0x4700 targets 0x46ac and is always taken.
  The `beq` branch at 0x4714 targets 0x46d8 and is always taken.
  The return at 0x46ac has v0 = one of 0x4, ?.
## Skipped routines

One routine has no reading: `gfP_OdsyBRDMGRsetColors` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`. hostfacts fails on it in condition rendering with `KeyError: 26`.
