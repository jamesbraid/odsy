# Instruction readings from hostfacts

Each entry reports selected accesses through non-stack pointers, calls and their argument slots, conditional branches, and return values from the exact binary build named in its header. Every claim cites its instruction address. These are software observations, graded Inferred; they do not establish hardware behaviour.

- `gfP_OdsyCompositorRegAccess` (`builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_compositor.o)`, 0xa5c, 284 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x28 into `s1` (`ld` at 0xa7c).
  Stores 4 bytes from `v0` to a3 (arg3 at entry) +0x0: 5 such accesses, including `sw` at 0xac8, 0xb04, 0xb3c.
  Calls `copyin` via direct with a0=a2 at entry (arg2), a1=sp-48, a2=0xc, a3=a3 at entry (arg3) (`jal` at 0xa84).
  Calls `odsyCompositorRegRead` via direct with a0=[a0+40]:8, a1=?, a2=?, a3=sp-44 (`jal` at 0xaa8).
  Calls `copyout` via direct with a0=sp-48, a1=a2 at entry (arg2), a2=0xc, a3=? (`jal` at 0xac4).
  Calls `odsyCompositorRegWrite` via direct with a0=[a0+40]:8, a1=?, a2=?, a3=? (`jal` at 0xaf0).
  Calls `copyout` via direct with a0=sp-48, a1=a2 at entry (arg2), a2=0xc, a3=? (`jal` at 0xb10).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0xb2c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0xb48).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0xb64).
  The `bne` at 0xa8c is taken when v0(=ret(copyin)) != 0 and falls through when v0(=ret(copyin)) == 0.
  The `beq` at 0xa9c is taken when (a1(?) & 0x1) == 0 and falls through when (a1(?) & 0x1) != 0.
  The `beq` at 0xab0 is taken when v0(=ret(odsyCompositorRegRead)) == 0 and falls through when v0(=ret(odsyCompositorRegRead)) != 0.
  The `bne` at 0xacc is taken when v0(=ret(copyout)) != 0 and falls through when v0(=ret(copyout)) == 0.
  The `beq` at 0xaf8 is taken when v0(=ret(odsyCompositorRegWrite)) == 0 and falls through when v0(=ret(odsyCompositorRegWrite)) != 0.
  The `bne` at 0xb18 is taken when v0(=ret(copyout)) != 0 and falls through when v0(=ret(copyout)) == 0.
  The `jr` at 0xae4 returns with v0 = ?.

- `gfP_OdsyI2CPassthrough` (`builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_compositor.o)`, 0xb78, 444 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x28 into `s2` (`ld` at 0xb94).
  Stores 4 bytes from `v0` to a3 (arg3 at entry) +0x0 (`sw` at 0xbc4).
  Loads 4 bytes from [a0+40]:8 +0xb424 into `a2` (`lw` at 0xbd0).
  Loads 8 bytes from [a0+40]:8 +0xb418 into `v0` (`ld` at 0xbd8, 0xc90).
  Stores 1 byte from `a2` to [a0+40]:8 +0xb428 (`sb` at 0xc08).
  Stores 2 bytes from `t9` to [a0+40]:8 +0xb434 (`sh` at 0xc4c).
  Loads 4 bytes from [a0+40]:8 +0xb424 into `a3` (`lw` at 0xc88, 0xce4, 0xd1c).
  Stores 4 bytes from `zero` to a3 (arg3 at entry) +0x0 (`sw` at 0xca8).
  Stores 1 byte from `a3` to [a0+40]:8 +0xb428 (`sb` at 0xcd0).
  Stores 2 bytes from `zero` to [a0+40]:8 +0xb434 (`sh` at 0xcdc).
  Calls `copyin` via direct with a0=a2 at entry (arg2), a1=sp-64, a2=0x8, a3=a3 at entry (arg3) (`jal` at 0xb9c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0xbb4).
  Calls `mutex_lock` via direct with a0=[[a0+40]:8+46104]:8+34080, a1=0x19, a2=[[a0+40]:8+46116], a3=? (`jal` at 0xbe4).
  Calls `mutex_lock` via direct with a0=[[a0+40]:8+46104]:8+34064, a1=0x19, a2=[[a0+40]:8+46116], a3=? (`jal` at 0xbfc).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0xc1c).
  Calls `odsy_i2cDDCRegRead` via direct with a0=[a0+40]:8+46088, a1=0x5, a2=sp-56, a3=? (`jal` at 0xc48).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=[a0+40]:8+46088, a1=0x0, a2=0x20, a3=? (`jal` at 0xc64).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=[a0+40]:8+46088, a1=0x5, a2=?, a3=? (`jal` at 0xc80).
  Calls `mutex_unlock` via direct with a0=[[a0+40]:8+46104]:8+34080, a1=?, a2=?, a3=[[a0+40]:8+46116] (`jal` at 0xc98).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=[a0+40]:8+46088, a1=0x0, a2=0x30, a3=0x1f (`jal` at 0xcd8).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=[a0+40]:8+46088, a1=0x0, a2=0x10, a3=? (`jal` at 0xcf0).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=[a0+40]:8+46088, a1=0x5, a2=?, a3=-0x21 (`jal` at 0xd10).
  Calls `mutex_unlock` via direct with a0=[[a0+40]:8+46104]:8+34064, a1=?, a2=?, a3=[[a0+40]:8+46116] (`jal` at 0xd24).
  The `beq` at 0xba4 is taken when v0(=ret(copyin)) == 0 and falls through when v0(=ret(copyin)) != 0.
  The `beq` at 0xbd4 is taken when a2(=[[a0+40]:8+46116]) == 0 and falls through when a2(=[[a0+40]:8+46116]) != 0.
  The `beq` at 0xc30 is taken when t8(?) == 0 and falls through when t8(?) != 0.
  The `beq` at 0xc54 is taken when ra(?) == 0 and falls through when ra(?) != 0.
  The `beq` at 0xc8c is taken when a3(=[[a0+40]:8+46116]) == 0 and falls through when a3(=[[a0+40]:8+46116]) != 0.
  The `jr` at 0xcbc returns with v0 = one of 0x0, 0xe.

- `gfP_OdsyHPgetTopology` (`builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`, 0x618, 152 bytes) Inferred.
  Loads 4 bytes from [sym(OdsyHpipeState)]:8 +0x0 into `at` (`lw` at 0x644).
  Stores 4 bytes from `s0` to a3 (arg3 at entry) +0x0 (`sw` at 0x668).
  Loads 4 bytes from a3 (arg3 at entry) +0x0 into `v0` (`lw` at 0x680).
  Calls `mutex_spinlock` via direct with a0=sym(odsy_hpipe_state_lock), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x62c).
  Calls `copyout` via direct with a0=[sym(OdsyHpipeState)]:8+4360, a1=a2 at entry (arg2), a2=0x184, a3=[sym(OdsyHpipeState)]:8 (`jal` at 0x658).
  Calls `mutex_spinunlock` via direct with a0=sym(odsy_hpipe_state_lock), a1=?, a2=?, a3=? (`jal` at 0x670).
  Calls `odsy_hpipe_discover` via direct with a0=?, a1=?, a2=?, a3=[sym(OdsyHpipeState)]:8 (`jal` at 0x690).
  The `beq` at 0x63c is taken when a3(=[sym(OdsyHpipeState)]:8) == 0 and falls through when a3(=[sym(OdsyHpipeState)]:8) != 0.
  The `beq` at 0x648 is taken when at(=[[sym(OdsyHpipeState)]:8]) == 0 and falls through when at(=[[sym(OdsyHpipeState)]:8]) != 0.
  The `bne` at 0x6a0 is taken when s0(=one of 0x0, 0x16) != 0 and falls through when s0(=one of 0x0, 0x16) == 0.
  The `jr` at 0x688 returns with v0 = [a3].

- `gfP_OdsyHPqueryBestAttrib` (`builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`, 0x1728, 204 bytes) Inferred.
  Stores 4 bytes from `a0` to a3 (arg3 at entry) +0x0 (`sw` at 0x1768).
  Stores 4 bytes from `at` to a3 (arg3 at entry) +0x0 (`sw` at 0x1790).
  Loads 4 bytes from a3 (arg3 at entry) +0x0 into `v0` (`lw` at 0x17a0).
  Stores 4 bytes from `v0` to a3 (arg3 at entry) +0x0 (`sw` at 0x17d4, 0x17f0).
  Calls `copyin` via direct with a0=a2 at entry (arg2), a1=sp-64, a2=0x20, a3=a3 at entry (arg3) (`jal` at 0x1740).
  Calls `kmem_alloc` via direct with a0=?, a1=0x0, a2=?, a3=? (`jal` at 0x1754).
  Calls `copyin` via direct with a0=?, a1=ret(kmem_alloc), a2=?, a3=? (`jal` at 0x177c).
  Calls `kmem_free` via direct with a0=ret(kmem_alloc), a1=?, a2=?, a3=? (`jal` at 0x1798).
  Calls `copyout` via direct with a0=?, a1=ret(kmem_alloc), a2=?, a3=? (`jal` at 0x17bc).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x17e0).
  The `bne` at 0x1748 is taken when v0(=ret(copyin)) != 0 and falls through when v0(=ret(copyin)) == 0.
  The `bne` at 0x1760 is taken when v0(=ret(kmem_alloc)) != 0 and falls through when v0(=ret(kmem_alloc)) == 0.
  The `beq` at 0x1784 is taken when v0(=ret(copyin)) == 0 and falls through when v0(=ret(copyin)) != 0.
  The `beq` at 0x17c4 is taken when v0(=ret(copyout)) == 0 and falls through when v0(=ret(copyout)) != 0.
  The `jr` at 0x17b0 returns with v0 = ?.

- `gf_OdsyInfo` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy.o)`, 0x0, 92 bytes) Inferred.
  Stores 4 bytes from `a0` to a3 (arg3 at entry) +0x0 (`sw` at 0x58).
  Calls `copyout` via direct with a0=a0+200, a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3) (`jal` at 0x2c).
  The `beq` at 0x34 is taken when v0(=ret(copyout)) == 0 and falls through when v0(=ret(copyout)) != 0.
  The `jr` at 0x40 returns with v0 = one of 0x0, 0xe.

- `gfP_OdsyInvalidIoctl` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy.o)`, 0x5c, 36 bytes) Inferred.
  Calls `cmn_err` via direct with a0=0x5, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x68).
  The `jr` at 0x78 returns with v0 = 0x16.

- `gf_OdsyPrivate` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy.o)`, 0x80, 124 bytes) Inferred.
  Loads 8 bytes from ? (base unknown) into `t0` (`ld` at 0xc0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a3 at entry (arg3), a3=a4 at entry (arg4) (`jalr` at 0xc8).
  Calls `cmn_err` via direct with a0=0x5, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xe8).
  The `bne` at 0x98 is taken when at(?) != v1(=0x6f640000) and falls through when at(?) == v1(=0x6f640000).
  The `beq` at 0xa4 is taken when a7(?) >= 0x2f (signed) and falls through when a7(?) < 0x2f (signed).
  The `jr` at 0xd4 returns with v0 = ?.

- `odsyGctxFromRnid` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy.o)`, 0xfc, 92 bytes) Inferred.
  Loads 8 bytes from ? (base unknown) into `v0` (`ld` at 0x12c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x144).
  The `blez` at 0x100 is taken when a0 <= 0 (signed) and falls through when a0 > 0 (signed).
  The `bne` at 0x10c is taken when at(=[sym(rrm_maxrn)]) < a0 (signed) and falls through when at(=[sym(rrm_maxrn)]) >= a0 (signed).
  The `jr` at 0x130 returns with v0 = ?.

- `OdsyInitCSet` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`, 0x0, 40 bytes) Inferred.
  Stores 4 bytes from `a1` to a0 (arg0 at entry) +0x20 (`sw` at 0x0).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x10 (`sw` at 0x4).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x14 (`sw` at 0x8).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x0 (`sd` at 0x18).
  Calls `OdsyInitCSetCursor` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x14).
  The `jr` at 0x20 returns with v0 = ret(OdsyInitCSetCursor).

- `OdsyDestroyCSet` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`, 0x28, 264 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x20 into `a3` (`lw` at 0x28).
  Loads 4 bytes from a0 (arg0 at entry) +0x10 into `at` (`lw` at 0x3c, 0x94).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `s1` (`ld` at 0x50).
  Loads 8 bytes from ? (base unknown) into `s1` (`ld` at 0x90).
  Loads 8 bytes from ? (base unknown) into `a0` (`ld` at 0xa4, 0xcc).
  Loads 8 bytes from ? (base unknown) into `a1` (`ld` at 0xe0).
  Calls `kmem_free` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x7c).
  Calls `kmem_free` via direct with a0=?, a1=0x20, a2=?, a3=? (`jal` at 0x8c).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xc4).
  Calls `OdsyInitCSet` via direct with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=? (`jal` at 0x118).
  The `blez` at 0x54 is taken when at(=[a0+16]) <= 0 (signed) and falls through when at(=[a0+16]) > 0 (signed).
  The `beq` at 0x9c is taken when s2(?) >= at(=[a0+16]) (signed) and falls through when s2(?) < at(=[a0+16]) (signed).
  The `beq` at 0xac is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `blez` at 0xb4 is taken when s4(?) <= 0 (signed) and falls through when s4(?) > 0 (signed).
  The `beq` at 0xd4 is taken when v0(?) == 0 and falls through when v0(?) != 0.
  The `beq` at 0xe4 is taken when a1(?) == 0 and falls through when a1(?) != 0.
  The `beq` at 0xec is taken when s0(=a1) == 0 and falls through when s0(=a1) != 0.
  The `jr` at 0x128 returns with v0 = ret(OdsyInitCSet).

- `OdsyInitCSetCursor` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`, 0x130, 20 bytes) Inferred.
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x1c (`sw` at 0x130).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x18 (`sw` at 0x134).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `at` (`ld` at 0x138).
  Stores 8 bytes from `at` to a0 (arg0 at entry) +0x8 (`sd` at 0x140).
  The `jr` at 0x13c returns with v0 = ?.

- `OdsyNextCSetElem` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`, 0x144, 240 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `v0` (`ld` at 0x144).
  Loads 4 bytes from a0 (arg0 at entry) +0x1c into `at` (`lw` at 0x154).
  Loads 4 bytes from a0 (arg0 at entry) +0x14 into `v1` (`lw` at 0x160).
  Loads 4 bytes from a0 (arg0 at entry) +0x20 into `a5` (`lw` at 0x16c).
  Loads 4 bytes from a0 (arg0 at entry) +0x18 into `a1` (`lw` at 0x170).
  Stores 4 bytes from `a3` to a0 (arg0 at entry) +0x18 (`sw` at 0x188, 0x200).
  Loads 4 bytes from ? (base unknown) into `at` (`lw` at 0x18c).
  Loads 8 bytes from ? (base unknown) into `a6` (`ld` at 0x1a0, 0x1ac).
  Stores 4 bytes from `v1` to a0 (arg0 at entry) +0x18 (`sw` at 0x1c0).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x18 (`sw` at 0x1c4, 0x204).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `a2` (`ld` at 0x1c8).
  Loads 8 bytes from ? (base unknown) into `a1` (`ld` at 0x1cc).
  Stores 8 bytes from `a1` to a0 (arg0 at entry) +0x8 (`sd` at 0x1d4).
  Stores 4 bytes from `a7` to a0 (arg0 at entry) +0x1c (`sw` at 0x1d8).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x1c (`sw` at 0x1e4).
  Loads 8 bytes from ? (base unknown) into `v0` (`ld` at 0x208, 0x228).
  Stores 8 bytes from `v0` to a0 (arg0 at entry) +0x8 (`sd` at 0x210, 0x230).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `v1` (`ld` at 0x214).
  The `beq` at 0x14c is taken when v0(=[a0+8]:8) == 0 and falls through when v0(=[a0+8]:8) != 0.
  The `bne` at 0x158 is taken when at(=[a0+28]) != 0 and falls through when at(=[a0+28]) == 0.
  The `beq` at 0x164 is taken when v1(=[a0+20]) == 0 and falls through when v1(=[a0+20]) != 0.
  The `beq` at 0x190 is taken when at(?) == 0 and falls through when at(?) != 0.
  The `beq` at 0x198 is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `beq` at 0x1b0 is taken when a6(?) == 0 and falls through when a6(?) != 0.
  The `bne` at 0x1bc is taken when v1(?) != a5(?) and falls through when v1(?) == a5(?).
  The `bne` at 0x1d0 is taken when a2(=[a0]:8) != a1(?) and falls through when a2(=[a0]:8) == a1(?).
  The `bne` at 0x1fc is taken when a3(?) < a5(?) (signed) and falls through when a3(?) >= a5(?) (signed).
  The `bne` at 0x218 is taken when v1(=[a0]:8) != v0(?) and falls through when v1(=[a0]:8) == v0(?).
  The `jr` at 0x1dc returns with v0 = ?.
  The `jr` at 0x1ec returns with v0 = 0x0.
  The `jr` at 0x220 returns with v0 = ?.

- `OdsyFindMatchingCSetElem` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`, 0x234, 296 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x20 into `a5` (`lw` at 0x23c).
  Loads 4 bytes from a0 (arg0 at entry) +0x10 into `v0` (`lw` at 0x26c, 0x29c).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `s4` (`ld` at 0x278).
  Loads 8 bytes from ? (base unknown) into `s4` (`ld` at 0x2a8).
  Loads 4 bytes from ? (base unknown) into `v1` (`lw` at 0x2ac).
  Loads 8 bytes from ? (base unknown) into `s1` (`ld` at 0x2c8, 0x2e4, 0x2f0).
  Calls `(unknown callee)` via register with a0=?, a1=a1 at entry (arg1), a2=?, a3=? (`jalr` at 0x2cc).
  The `beq` at 0x254 is taken when a5(=[a0+32]) == 0 and falls through when a5(=[a0+32]) != 0.
  The `blez` at 0x27c is taken when v0(=[a0+16]) <= 0 (signed) and falls through when v0(=[a0+16]) > 0 (signed).
  The `beq` at 0x2a4 is taken when at(?) == 0 and falls through when at(?) != 0.
  The `beq` at 0x2b4 is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `blez` at 0x2bc is taken when s5(?) <= 0 (signed) and falls through when s5(?) > 0 (signed).
  The `beq` at 0x2d4 is taken when v0(=ret(?)) == 0 and falls through when v0(=ret(?)) != 0.
  The `beq` at 0x2dc is taken when a3(?) == 0 and falls through when a3(?) != 0.
  The `beq` at 0x2f4 is taken when s1(?) == 0 and falls through when s1(?) != 0.
  The `jr` at 0x32c returns with v0 = ?.

- `NewChunkNode` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`, 0x35c, 68 bytes) Inferred.
  Calls `kmem_alloc` via direct with a0=0x20, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x368).
  Calls `bzero` via direct with a0=ret(kmem_alloc), a1=0x20, a2=?, a3=? (`jal` at 0x38c).
  The `bne` at 0x374 is taken when v0(=ret(kmem_alloc)) != 0 and falls through when v0(=ret(kmem_alloc)) == 0.
  The `jr` at 0x380 returns with v0 = ?.

- `OdsyAllocSpecificCSetId` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`, 0x3a0, 460 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x20 into `at` (`lw` at 0x3ac).
  Loads 4 bytes from a0 (arg0 at entry) +0x10 into `v0` (`lw` at 0x3dc).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `s1` (`ld` at 0x410).
  Loads 8 bytes from ? (base unknown) into `s1` (`ld` at 0x438).
  Loads 4 bytes from ? (base unknown) into `v1` (`lw` at 0x43c).
  Loads 8 bytes from ? (base unknown) into `v0` (`ld` at 0x44c).
  Stores 8 bytes from `at` to ? (base unknown) (`sd` at 0x45c).
  Loads 4 bytes from ? (base unknown) into `a4` (`lw` at 0x460).
  Stores 4 bytes from `a4` to ? (base unknown) (`sw` at 0x468).
  Loads 4 bytes from a0 (arg0 at entry) +0x14 into `a3` (`lw` at 0x470).
  Stores 4 bytes from `a3` to a0 (arg0 at entry) +0x14 (`sw` at 0x47c).
  Stores 8 bytes from `a0` to ret(NewChunkNode) +0x10 (`sd` at 0x48c).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `at` (`ld` at 0x490).
  Loads 8 bytes from [a0]:8 +0x18 into `at` (`ld` at 0x494).
  Stores 8 bytes from `at` to ret(NewChunkNode) +0x18 (`sd` at 0x498).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `a4` (`ld` at 0x49c).
  Stores 8 bytes from `v0` to [a0]:8 +0x18 (`sd` at 0x4a0).
  Loads 8 bytes from ret(NewChunkNode) +0x18 into `a3` (`ld` at 0x4a4).
  Stores 8 bytes from `v0` to [ret(NewChunkNode)+24]:8 +0x10 (`sd` at 0x4a8).
  Stores 4 bytes from `zero` to ret(NewChunkNode) +0x8 (`sw` at 0x4ac).
  Loads 4 bytes from a0 (arg0 at entry) +0x10 into `v1` (`lw` at 0x4b4).
  Stores 4 bytes from `v1` to a0 (arg0 at entry) +0x10 (`sw` at 0x4c0).
  Loads 4 bytes from a0 (arg0 at entry) +0x20 into `a0` (`lw` at 0x4c8).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `a0` (`ld` at 0x4d4).
  Stores 8 bytes from `v0` to ret(NewChunkNode) +0x18 (`sd` at 0x4e4).
  Stores 8 bytes from `v0` to ret(NewChunkNode) +0x10 (`sd` at 0x4e8).
  Stores 8 bytes from `v0` to a0 (arg0 at entry) +0x0 (`sd` at 0x4f0).
  Stores 8 bytes from `v0` to ? (base unknown) (`sd` at 0x52c).
  Calls `NewChunkNode` via direct with a0=[a0+32], a1=?, a2=?, a3=? (`jal` at 0x4c4).
  Calls `kmem_alloc` via direct with a0=?, a1=0x0, a2=?, a3=? (`jal` at 0x524).
  Calls `bzero` via direct with a0=ret(kmem_alloc), a1=?, a2=?, a3=? (`jal` at 0x55c).
  The `beq` at 0x3d4 is taken when at(=[a0+32]) == 0 and falls through when at(=[a0+32]) != 0.
  The `bne` at 0x3f4 is taken when s2(?) < v0(=[a0+16]) (signed) and falls through when s2(?) >= v0(=[a0+16]) (signed).
  The `blez` at 0x400 is taken when s4(?) <= 0 (signed) and falls through when s4(?) > 0 (signed).
  The `blez` at 0x41c is taken when s2(?) <= 0 (signed) and falls through when s2(?) > 0 (signed).
  The `bne` at 0x434 is taken when v0(?) < s2(?) (signed) and falls through when v0(?) >= s2(?) (signed).
  The `beq` at 0x440 is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `beq` at 0x4bc is taken when s1(?) >= s4(?) (signed) and falls through when s1(?) < s4(?) (signed).
  The `beq` at 0x4cc is taken when v0(=ret(NewChunkNode)) == 0 and falls through when v0(=ret(NewChunkNode)) != 0.
  The `bne` at 0x4dc is taken when a0(=[a0]:8) != 0 and falls through when a0(=[a0]:8) == 0.
  The `bne` at 0x530 is taken when v0(=ret(kmem_alloc)) != 0 and falls through when v0(=ret(kmem_alloc)) == 0.
  The `jr` at 0x484 returns with v0 = ?.

- `OdsyAllocCSetId` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`, 0x56c, 608 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x20 into `s1` (`lw` at 0x574).
  Loads 4 bytes from a0 (arg0 at entry) +0x10 into `a0` (`lw` at 0x590, 0x5c8, 0x624).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `s0` (`ld` at 0x5a8).
  Loads 8 bytes from ? (base unknown) into `s0` (`ld` at 0x5d8).
  Loads 4 bytes from ? (base unknown) into `v0` (`lw` at 0x5dc).
  Loads 8 bytes from ? (base unknown) into `a0` (`ld` at 0x5fc).
  Loads 8 bytes from ? (base unknown) into `v1` (`ld` at 0x608).
  Stores 8 bytes from `s3` to ? (base unknown) (`sd` at 0x630).
  Loads 4 bytes from ? (base unknown) into `s1` (`lw` at 0x63c).
  Stores 4 bytes from `s1` to ? (base unknown) (`sw` at 0x648).
  Loads 4 bytes from a0 (arg0 at entry) +0x14 into `a3` (`lw` at 0x650).
  Stores 4 bytes from `a3` to a0 (arg0 at entry) +0x14 (`sw` at 0x65c).
  Stores 8 bytes from `v0` to ret(NewChunkNode) +0x0 (`sd` at 0x6bc).
  Stores 4 bytes from `at` to ret(NewChunkNode) +0x8 (`sw` at 0x6d8).
  Loads 4 bytes from a0 (arg0 at entry) +0x10 into `ra` (`lw` at 0x6dc).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `v0` (`ld` at 0x6e0).
  Loads 4 bytes from a0 (arg0 at entry) +0x14 into `s2` (`lw` at 0x6e4).
  Stores 4 bytes from `ra` to a0 (arg0 at entry) +0x10 (`sw` at 0x6ec).
  Stores 4 bytes from `s2` to a0 (arg0 at entry) +0x14 (`sw` at 0x6f4).
  Stores 8 bytes from `v0` to ret(NewChunkNode) +0x10 (`sd` at 0x704).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `a3` (`ld` at 0x708).
  Loads 8 bytes from [a0]:8 +0x18 into `a3` (`ld` at 0x70c).
  Stores 8 bytes from `a3` to ret(NewChunkNode) +0x18 (`sd` at 0x710).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `a2` (`ld` at 0x714).
  Stores 8 bytes from `s0` to [a0]:8 +0x18 (`sd` at 0x718).
  Loads 8 bytes from ret(NewChunkNode) +0x18 into `v1` (`ld` at 0x71c).
  Stores 8 bytes from `s0` to [ret(NewChunkNode)+24]:8 +0x10 (`sd` at 0x720).
  Loads 8 bytes from ret(NewChunkNode) +0x0 into `s5` (`ld` at 0x72c).
  Stores 8 bytes from `s0` to [ret(NewChunkNode)]:8 +0x0 (`sd` at 0x734).
  Stores 8 bytes from `v0` to ? (base unknown) (`sd` at 0x754).
  Stores 8 bytes from `s0` to ret(NewChunkNode) +0x18 (`sd` at 0x798).
  Stores 8 bytes from `s0` to ret(NewChunkNode) +0x10 (`sd` at 0x79c).
  Stores 8 bytes from `s0` to a0 (arg0 at entry) +0x0 (`sd` at 0x7a4).
  Calls `NewChunkNode` via direct with a0=[a0+32], a1=?, a2=?, a3=? (`jal` at 0x670).
  Calls `kmem_alloc` via direct with a0=?, a1=0x0, a2=?, a3=? (`jal` at 0x6b4).
  Calls `bzero` via direct with a0=ret(kmem_alloc), a1=?, a2=?, a3=? (`jal` at 0x6cc).
  Calls `kmem_alloc` via direct with a0=?, a1=0x0, a2=?, a3=? (`jal` at 0x748).
  Calls `bzero` via direct with a0=ret(kmem_alloc), a1=?, a2=?, a3=? (`jal` at 0x75c).
  Calls `kmem_free` via direct with a0=ret(NewChunkNode), a1=0x20, a2=?, a3=? (`jal` at 0x780).
  The `beq` at 0x584 is taken when s1(=[a0+32]) == 0 and falls through when s1(=[a0+32]) != 0.
  The `blez` at 0x5b0 is taken when a0(=[a0+16]) <= 0 (signed) and falls through when a0(=[a0+16]) > 0 (signed).
  The `beq` at 0x5d4 is taken when s4(?) >= a0(=[a0+16]) (signed) and falls through when s4(?) < a0(=[a0+16]) (signed).
  The `beq` at 0x5e4 is taken when v0(?) == s3(?) and falls through when v0(?) != s3(?).
  The `beq` at 0x5ec is taken when v0(?) == 0 and falls through when v0(?) != 0.
  The `blez` at 0x5f4 is taken when s3(?) <= 0 (signed) and falls through when s3(?) > 0 (signed).
  The `beq` at 0x610 is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `bne` at 0x618 is taken when a2(?) != 0 and falls through when a2(?) == 0.
  The `bne` at 0x688 is taken when v0(=ret(NewChunkNode)) != 0 and falls through when v0(=ret(NewChunkNode)) == 0.
  The `beq` at 0x6c0 is taken when v0(=ret(kmem_alloc)) == 0 and falls through when v0(=ret(kmem_alloc)) != 0.
  The `beq` at 0x6fc is taken when v0(=[a0]:8) == 0 and falls through when v0(=[a0]:8) != 0.
  The `beq` at 0x750 is taken when v0(=ret(kmem_alloc)) == 0 and falls through when v0(=ret(kmem_alloc)) != 0.
  The `jr` at 0x664 returns with v0 = ?.

- `OdsyDeallocCSetId` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`, 0x7cc, 164 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x20 into `a6` (`lw` at 0x7cc).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `s0` (`ld` at 0x7e8).
  Loads 8 bytes from ? (base unknown) into `s0` (`ld` at 0x7f8).
  Loads 8 bytes from ? (base unknown) into `at` (`ld` at 0x808).
  Stores 8 bytes from `zero` to ? (base unknown) (`sd` at 0x818, 0x864).
  Loads 4 bytes from ? (base unknown) into `a2` (`lw` at 0x81c).
  Stores 4 bytes from `a2` to ? (base unknown) (`sw` at 0x824).
  Loads 4 bytes from a0 (arg0 at entry) +0x14 into `v1` (`lw` at 0x828).
  Stores 4 bytes from `v1` to a0 (arg0 at entry) +0x14 (`sw` at 0x830).
  Loads 4 bytes from ? (base unknown) into `v0` (`lw` at 0x834).
  Loads 4 bytes from a0 (arg0 at entry) +0x20 into `a1` (`lw` at 0x84c).
  Loads 8 bytes from ? (base unknown) into `a0` (`ld` at 0x858).
  Calls `kmem_free` via direct with a0=?, a1=?, a2=?, a3=0x1, a5=a0 at entry (arg0), a6=[a0+32] (`jal` at 0x85c).
  The `blez` at 0x7e4 is taken when a4(?) <= 0 (signed) and falls through when a4(?) > 0 (signed).
  The `bne` at 0x7f4 is taken when a3(?) < a4(?) (signed) and falls through when a3(?) >= a4(?) (signed).
  The `beq` at 0x838 is taken when v0(?) == 0 and falls through when v0(?) != 0.
  The `jr` at 0x844 returns with v0 = ?.

- `OdsyLookupCSetId` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`, 0x870, 248 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x20 into `a5` (`lw` at 0x870).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `v0` (`ld` at 0x884).
  Loads 8 bytes from ? (base unknown) into `a0`: 6 such accesses, including `ld` at 0x894, 0x8b0, 0x8d4.
  Loads 8 bytes from ? (base unknown) into `v0` (`ld` at 0x940).
  The `beq` at 0x878 is taken when a5(=[a0+32]) == 0 and falls through when a5(=[a0+32]) != 0.
  The `blez` at 0x880 is taken when a6(?) <= 0 (signed) and falls through when a6(?) > 0 (signed).
  The `beq` at 0x888 is taken when v0(=[a0]:8) == 0 and falls through when v0(=[a0]:8) != 0.
  The `beq` at 0x8a0 is taken when a4(?) >= a6(?) (signed) and falls through when a4(?) < a6(?) (signed).
  The `beq` at 0x8a8 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `beq` at 0x8c4 is taken when a4(?) >= a6(?) (signed) and falls through when a4(?) < a6(?) (signed).
  The `beq` at 0x8cc is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `beq` at 0x8d8 is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `beq` at 0x8e0 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `beq` at 0x8f4 is taken when a2(?) == 0 and falls through when a2(?) != 0.
  The `beq` at 0x8fc is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `beq` at 0x908 is taken when a3(?) == 0 and falls through when a3(?) != 0.
  The `bne` at 0x910 is taken when a0(?) != 0 and falls through when a0(?) == 0.
  The `beq` at 0x918 is taken when v0(?) == 0 and falls through when v0(?) != 0.
  The `beq` at 0x930 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `jr` at 0x944 returns with v0 = ?.
  The `jr` at 0x94c returns with v0 = 0x0.
  The `jr` at 0x954 returns with v0 = 0x0.
  The `jr` at 0x960 returns with v0 = 0x0.

- `OdsyInit32kSlotMask` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`, 0x968, 56 bytes) Inferred.
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x8 (`sw` at 0x984).
  Stores 8 bytes from `at` to a0 (arg0 at entry) +0x0 (`sd` at 0x990).
  Calls `bzero` via direct with a0=a0 at entry (arg0), a1=0x1010, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x97c).
  The `jr` at 0x998 returns with v0 = ret(bzero).

- `OdsyAlloc32kSlot` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`, 0x9a0, 312 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `v0`: 4 such accesses, including `ld` at 0x9a0, 0xa30, 0xa5c.
  Loads 4 bytes from a0 (arg0 at entry) +0x8 into `a4` (`lw` at 0x9c8, 0xa80).
  Loads 8 bytes from (([a0+8] << 0x3) + a0) +0x10 into `a3` (`ld` at 0x9e8).
  Stores 8 bytes from `at` to (([a0+8] << 0x3) + a0) +0x10 (`sd` at 0xa20).
  Stores 4 bytes from `a4` to a0 (arg0 at entry) +0x8 (`sw` at 0xa94, 0xab8).
  Loads 8 bytes from (([a0+8]+1 << 0x3) + a0) +0x10 into `at` (`ld` at 0xaa0).
  Loads 8 bytes from ? (base unknown) into `a1` (`ld` at 0xac4).
  Calls `psema` via direct with a0=[a0]:8, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x9bc).
  Calls `vsema` via direct with a0=[a0]:8, a1=?, a2=?, a3=[(([a0+8] << 0x3) + a0)+16]:8, a5=(([a0+8] << 0x3) + a0) (`jal` at 0xa40).
  Calls `vsema` via direct with a0=[a0]:8, a1=?, a2=?, a3=?, a4=[a0+8] (`jal` at 0xa6c).
  The `beq` at 0x9ac is taken when v0(=[a0]:8) == 0 and falls through when v0(=[a0]:8) != 0.
  The `beq` at 0x9d0 is taken when a4(=[a0+8]) >= 0x200 (signed) and falls through when a4(=[a0+8]) < 0x200 (signed).
  The `bltz` at 0x9d8 is taken when a4(=[a0+8]) < 0 (signed) and falls through when a4(=[a0+8]) >= 0 (signed).
  The `beq` at 0x9f4 is taken when (a3(=[(([a0+8] << 0x3) + a0)+16]:8) & 0x1) == 0 and falls through when (a3(=[(([a0+8] << 0x3) + a0)+16]:8) & 0x1) != 0.
  The `beq` at 0xa04 is taken when (a3(=[(([a0+8] << 0x3) + a0)+16]:8) & a0(?)) == 0 and falls through when (a3(=[(([a0+8] << 0x3) + a0)+16]:8) & a0(?)) != 0.
  The `bne` at 0xa10 is taken when v0(?) < 0x40 (signed) and falls through when v0(?) >= 0x40 (signed).
  The `beq` at 0xa28 is taken when a1(?) == 0 and falls through when a1(?) != 0.
  The `beq` at 0xa34 is taken when v0(=[a0]:8) == 0 and falls through when v0(=[a0]:8) != 0.
  The `beq` at 0xa60 is taken when v0(=[a0]:8) == 0 and falls through when v0(=[a0]:8) != 0.
  The `beq` at 0xa98 is taken when a4(=[a0+8]+1) >= 0x200 (signed) and falls through when a4(=[a0+8]+1) < 0x200 (signed).
  The `bne` at 0xaa4 is taken when at(=[(([a0+8]+1 << 0x3) + a0)+16]:8) != v0(=-0x1) and falls through when at(=[(([a0+8]+1 << 0x3) + a0)+16]:8) == v0(=-0x1).
  The `beq` at 0xabc is taken when a4(?) >= 0x200 (signed) and falls through when a4(?) < 0x200 (signed).
  The `beq` at 0xac8 is taken when a1(?) == v0(=-0x1) and falls through when a1(?) != v0(=-0x1).
  The `jr` at 0xa54 returns with v0 = ?.

- `OdsyFree32kSlot` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`, 0xad8, 240 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `a0` (`ld` at 0xb04, 0xb60).
  Loads 8 bytes from ? (base unknown) into `a2` (`ld` at 0xb34).
  Stores 8 bytes from `a2` to ? (base unknown) (`sd` at 0xb40).
  Loads 4 bytes from a0 (arg0 at entry) +0x8 into `v1` (`lw` at 0xb44).
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x8 (`sw` at 0xb5c).
  Calls `psema` via direct with a0=[a0]:8, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xb14).
  Calls `vsema` via direct with a0=[a0]:8, a1=?, a2=?, a3=? (`jal` at 0xb70).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xb94).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xbb8).
  The `beq` at 0xae8 is taken when a0 == 0 and falls through when a0 != 0.
  The `beq` at 0xafc is taken when at(?) >= 0x200 (unsigned) and falls through when at(?) < 0x200 (unsigned).
  The `beq` at 0xb08 is taken when a0(=[a0]:8) == 0 and falls through when a0(=[a0]:8) != 0.
  The `beq` at 0xb4c is taken when v0(?) >= v1(=[a0+8]) (signed) and falls through when v0(?) < v1(=[a0+8]) (signed).
  The `beq` at 0xb64 is taken when a0(=[a0]:8) == 0 and falls through when a0(=[a0]:8) != 0.
  The `jr` at 0xb7c returns with v0 = ?.

- `odsyHashAlloc` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`, 0xbc8, 112 bytes) Inferred.
  Stores 4 bytes from `s0` to ret(kmem_alloc) +0x0 (`sw` at 0xc00).
  Stores 8 bytes from `a1` to ? (base unknown) (`sd` at 0xc20, 0xc28).
  Calls `kmem_alloc` via direct with a0=?, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xbe8).
  The `beq` at 0xbf4 is taken when v0(=ret(kmem_alloc)) == 0 and falls through when v0(=ret(kmem_alloc)) != 0.
  The `blez` at 0xbfc is taken when s0(=a0) <= 0 (signed) and falls through when s0(=a0) > 0 (signed).
  The `bne` at 0xc24 is taken when a0(?) < s0(=a0) (signed) and falls through when a0(?) >= s0(=a0) (signed).
  The `jr` at 0xc30 returns with v0 = ret(kmem_alloc).

- `odsyHashDealloc` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`, 0xc38, 44 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x0 into `a2` (`lw` at 0xc38).
  Calls `kmem_free` via direct with a0=a0 at entry (arg0), a1=?, a2=[a0], a3=a3 at entry (arg3) (`jal` at 0xc50).
  The `jr` at 0xc5c returns with v0 = ret(kmem_free).

- `odsyHashLookup` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`, 0xc64, 76 bytes) Inferred.
  Loads 8 bytes from ? (base unknown) into `a5` (`ld` at 0xc74, 0xc90).
  Loads 4 bytes from ? (base unknown) into `v1` (`lw` at 0xc84).
  The `beq` at 0xc7c is taken when v0(?) == a5(?) and falls through when v0(?) != a5(?).
  The `beq` at 0xc88 is taken when v1(?) == a2 and falls through when v1(?) != a2.
  The `bne` at 0xc94 is taken when v0(?) != a5(?) and falls through when v0(?) == a5(?).
  The `jr` at 0xca0 returns with v0 = 0x0.
  The `jr` at 0xca8 returns with v0 = ?.

- `odsyHashInsert` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`, 0xcb0, 48 bytes) Inferred.
  Loads 8 bytes from ? (base unknown) into `a0` (`ld` at 0xcc0).
  Stores 8 bytes from `a2` to ? (base unknown) (`sd` at 0xcc4, 0xcdc).
  Loads 8 bytes from ? (base unknown) into `v1` (`ld` at 0xcc8).
  Stores 8 bytes from `v0` to a2 (arg2 at entry) +0x8 (`sd` at 0xcd0).
  Stores 8 bytes from `v1` to a2 (arg2 at entry) +0x0 (`sd` at 0xcd4).
  The `jr` at 0xcd8 returns with v0 = ?.
- `odsyHashRemove` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`, 0xce0, 36 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `a1` (`ld` at 0xce0).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `v1` (`ld` at 0xce4).
  Stores 8 bytes from `v1` to [a0+8]:8 +0x0 (`sd` at 0xce8).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `v0` (`ld` at 0xcec).
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `at` (`ld` at 0xcf0).
  Stores 8 bytes from `at` to [a0]:8 +0x8 (`sd` at 0xcf4).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x8 (`sd` at 0xcf8).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x0 (`sd` at 0xd00).
  The `jr` at 0xcfc returns with v0 = [a0]:8.

- `odsy_regmatch` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_attach.o)`, 0x0, 96 bytes) Inferred.
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x48 (`sd` at 0x24).
  Loads 8 bytes from a0 (arg0 at entry) +0x28 into `a0` (`ld` at 0x28).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x28 (`sd` at 0x40).
  Stores 8 bytes from `a1` to a2 (arg2 at entry) +0x28 (`sd` at 0x50).
  Calls `gf_OdsyUnMapGfx` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1c).
  Calls `ddv_destroy_handle` via direct with a0=[a0+40]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=? (`jal` at 0x3c).
  The `beq` at 0x8 is taken when a0 == 0 and falls through when a0 != 0.
  The `beq` at 0x34 is taken when a0(=[a0+40]:8) == 0 and falls through when a0(=[a0+40]:8) != 0.
  The `jr` at 0x58 returns with v0 = ?.

- `gf_OdsyAttach` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_attach.o)`, 0x60, 328 bytes) Inferred.
  Loads 8 bytes from ? (base unknown) into `at` (`ld` at 0x8c).
  Stores 8 bytes from `at` to ? (base unknown) (`sd` at 0x9c).
  Loads 4 bytes from a0 (arg0 at entry) +0x30 into `a3` (`lw` at 0xe8, 0x170).
  Loads 8 bytes from ? (base unknown) into `a3` (`ld` at 0x11c).
  Loads 8 bytes from ? (base unknown) into `a5` (`ld` at 0x124).
  Stores 8 bytes from `a3` to ? (base unknown) (`sd` at 0x12c).
  Stores 8 bytes from `a5` to ? (base unknown) (`sd` at 0x138).
  Stores 4 bytes from `a3` to a0 (arg0 at entry) +0x30 (`sw` at 0x180).
  Calls `gfxdd_recycle` via direct with a0=sym(odsy_regmatch), a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a3 at entry (arg3), a7=sym(.rodata) (`jal` at 0xc8).
  Calls `gfxdd_mmap` via direct with a0=0x1, a1=?, a2=a1 at entry (arg1), a3=sym(gfx_fault), a4=a0 at entry (arg0), a5=sp-304, a6=one of 0x2, 0x8, a7=a0+40 (`jal` at 0x15c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x194).
  The `bgtz` at 0x98 is taken when a6(?) > 0 (signed) and falls through when a6(?) <= 0 (signed).
  The `beq` at 0xa4 is taken when (s0(=a1) & 0x3fff) == 0 and falls through when (s0(=a1) & 0x3fff) != 0.
  The `beq` at 0xd4 is taken when v0(=ret(gfxdd_recycle)) == 0 and falls through when v0(=ret(gfxdd_recycle)) != 0.
  The `beq` at 0xf0 is taken when (a3(=[a0+48]) & 0x24) == 0 and falls through when (a3(=[a0+48]) & 0x24) != 0.
  The `beq` at 0x100 is taken when a6(=one of 0x2, 0x8) == 0 and falls through when a6(=one of 0x2, 0x8) != 0.
  The `bne` at 0x134 is taken when v0(?) < a6(=one of 0x2, 0x8) (unsigned) and falls through when v0(?) >= a6(=one of 0x2, 0x8) (unsigned).
  The `bne` at 0x164 is taken when v0(=ret(gfxdd_mmap)) != 0 and falls through when v0(=ret(gfxdd_mmap)) == 0.
  The `jr` at 0xb4 returns with v0 = one of 0x0, 0xc, 0x16.

- `gf_OdsyDetach` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_attach.o)`, 0x1a8, 100 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x30 into `a1` (`lw` at 0x1a8, 0x1d0).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `a0` (`ld` at 0x1c4).
  Loads 8 bytes from a0 (arg0 at entry) +0x28 into `a0` (`ld` at 0x1ec).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x28 (`sd` at 0x1f4).
  Calls `odsyDiagExit` via direct with a0=[a0+32]:8, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1c8).
  Calls `gf_OdsyUnMapGfx` via direct with a0=a0 at entry (arg0), a1=[a0+48], a2=?, a3=? (`jal` at 0x1e4).
  Calls `gfxdd_munmap` via direct with a0=[a0+40]:8, a1=?, a2=?, a3=? (`jal` at 0x1f0).
  The `beq` at 0x1b8 is taken when (a1(=[a0+48]) & 0x4) == 0 and falls through when (a1(=[a0+48]) & 0x4) != 0.
  The `beq` at 0x1dc is taken when (a1(=[a0+48]) & 0x1) == 0 and falls through when (a1(=[a0+48]) & 0x1) != 0.
  The `jr` at 0x204 returns with v0 = 0x0.

- `odsyConfigFb` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`, 0x6ec, 2056 bytes) Inferred.
  Loads 4 bytes from a1 (arg1 at entry) +0x0 into `v0` (`lw` at 0x6ec).
  Loads 4 bytes from a1 (arg1 at entry) +0x4 into `v1` (`lw` at 0x708, 0x958).
  Loads 4 bytes from a1 (arg1 at entry) +0x8 into `s3` (`lw` at 0x734).
  Loads 4 bytes from a0 (arg0 at entry) +0x4d0 into `t1` (`lw` at 0x764).
  Stores 4 bytes from `a1` to a0 (arg0 at entry) +0x4d0 (`sw` at 0x788).
  Loads 4 bytes from a1 (arg1 at entry) +0x8 into `v1` (`lw` at 0x78c).
  Stores 1 byte from `v1` to a0 (arg0 at entry) +0x4a9 (`sb` at 0x790).
  Loads 4 bytes from a1 (arg1 at entry) +0x0 into `at` (`lw` at 0x794).
  Stores 4 bytes from `at` to a0 (arg0 at entry) +0x4b8 (`sw` at 0x798).
  Loads 4 bytes from a1 (arg1 at entry) +0x4 into `s2` (`lw` at 0x7a0).
  Stores 4 bytes from `s2` to a0 (arg0 at entry) +0x4bc (`sw` at 0x7a4).
  Loads 4 bytes from a1 (arg1 at entry) +0x0 into `t3` (`lw` at 0x7a8).
  Stores 4 bytes from `t3` to a0 (arg0 at entry) +0x4c4 (`sw` at 0x7bc).
  Loads 4 bytes from a1 (arg1 at entry) +0x4 into `a2` (`lw` at 0x7c0, 0x978, 0xb3c).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x4b4 (`sw` at 0x7cc).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x4b0 (`sw` at 0x7d8).
  Stores 8 bytes from `a3` to a0 (arg0 at entry) +0x7d8 (`sd` at 0x7e4).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x4ac (`sw` at 0x7ec).
  Stores 4 bytes from `s2` to a0 (arg0 at entry) +0x4c0 (`sw` at 0x7f4).
  Stores 4 bytes from `a2` to a0 (arg0 at entry) +0x4c8 (`sw` at 0x808).
  Stores 4 bytes from `at` to a0 (arg0 at entry) +0x558 (`sw` at 0x81c).
  Stores 1 byte from `a7` to a0 (arg0 at entry) +0x531 (`sb` at 0x820).
  Loads 4 bytes from a1 (arg1 at entry) +0x0 into `t2` (`lw` at 0x824).
  Stores 4 bytes from `t2` to a0 (arg0 at entry) +0x540 (`sw` at 0x828).
  Loads 4 bytes from a1 (arg1 at entry) +0x4 into `a3` (`lw` at 0x82c).
  Stores 4 bytes from `a3` to a0 (arg0 at entry) +0x544 (`sw` at 0x830).
  Loads 4 bytes from a1 (arg1 at entry) +0x0 into `a2` (`lw` at 0x834, 0x950).
  Stores 4 bytes from `a2` to a0 (arg0 at entry) +0x54c (`sw` at 0x848).
  Loads 4 bytes from a1 (arg1 at entry) +0x4 into `at` (`lw` at 0x850).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x53c (`sw` at 0x854).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x538 (`sw` at 0x85c).
  Stores 8 bytes from `a2` to a0 (arg0 at entry) +0x7e0 (`sd` at 0x86c).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x534 (`sw` at 0x870).
  Stores 4 bytes from `s2` to a0 (arg0 at entry) +0x548 (`sw` at 0x87c).
  Stores 4 bytes from `at` to a0 (arg0 at entry) +0x550 (`sw` at 0x890).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x7e8 (`sd` at 0x8b0).
  Loads 4 bytes from a1 (arg1 at entry) +0xc into `s3` (`lw` at 0x8c0).
  Stores 4 bytes from `zero` to ? (base unknown): 4 such accesses, including `sw` at 0x8fc, 0x994, 0x998.
  Stores 8 bytes from `zero` to ? (base unknown) (`sd` at 0x904).
  Stores 4 bytes from `a2` to ? (base unknown) (`sw` at 0x940, 0x954, 0x98c).
  Stores 8 bytes from `a3` to ? (base unknown) (`sd` at 0x948).
  Stores 1 byte from `t0` to ? (base unknown) (`sb` at 0x94c).
  Stores 4 bytes from `v1` to ? (base unknown) (`sw` at 0x95c).
  Loads 4 bytes from a1 (arg1 at entry) +0x0 into `a3`: 4 such accesses, including `lw` at 0x960, 0xb34, 0xc80.
  Stores 4 bytes from `a3` to ? (base unknown) (`sw` at 0x974).
  Stores 4 bytes from `s2` to ? (base unknown) (`sw` at 0x990).
  Loads 4 bytes from a1 (arg1 at entry) +0xc into `a3` (`lw` at 0x9a8).
  Stores 1 byte from `a3` to ? (base unknown) (`sb` at 0x9b4).
  Loads 4 bytes from a0 (arg0 at entry) +0xfc into `at` (`lw` at 0x9e0).
  Stores 4 bytes from `a2` to a0 (arg0 at entry) +0x3c0 (`sw` at 0x9f0).
  Loads 4 bytes from a0 (arg0 at entry) +0x4d0 into `s3` (`lw` at 0xa08).
  Stores 4 bytes from `s3` to a1 (arg1 at entry) +0x10 (`sw` at 0xa0c).
  Loads 4 bytes from a0 (arg0 at entry) +0x558 into `a3` (`lw` at 0xa10).
  Stores 4 bytes from `v1` to a1 (arg1 at entry) +0x1c (`sw` at 0xa14).
  Stores 4 bytes from `at` to a1 (arg1 at entry) +0x20 (`sw` at 0xa20).
  Stores 4 bytes from `s3` to a1 (arg1 at entry) +0x28 (`sw` at 0xa28).
  Stores 4 bytes from `a3` to a1 (arg1 at entry) +0x14 (`sw` at 0xa2c).
  Stores 4 bytes from `a2` to a1 (arg1 at entry) +0x18 (`sw` at 0xa30).
  Stores 4 bytes from `a3` to a1 (arg1 at entry) +0x24 (`sw` at 0xa3c).
  Loads 4 bytes from a0 (arg0 at entry) +0xfc into `a2` (`lw` at 0xa40).
  Stores 4 bytes from `a2` to a1 (arg1 at entry) +0x2c (`sw` at 0xa48).
  Loads 4 bytes from a0 (arg0 at entry) +0x5720 into `v1` (`lw` at 0xa4c).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `s3` (`ld` at 0xa5c).
  Loads 4 bytes from a0 (arg0 at entry) +0x5720 into `at` (`lw` at 0xa74).
  Loads 4 bytes from a0 (arg0 at entry) +0x558 into `a0` (`lwu` at 0xabc).
  Stores 8 bytes from `a0` to [a0+736]:8 +0x400000 (`sd` at 0xad8).
  Loads 4 bytes from a0 (arg0 at entry) +0x4d0 into `v1` (`lwu` at 0xae0).
  Stores 8 bytes from `v1` to [a0+736]:8 +0x400000: 4 such accesses, including `sd` at 0xaf4, 0xb00, 0xb10.
  Stores 8 bytes from `a5` to [a0+736]:8 +0x400000 (`sd` at 0xb1c).
  Stores 8 bytes from `a2` to [a0+736]:8 +0x400000 (`sd` at 0xb24, 0xcdc, 0xea0).
  Loads 4 bytes from a0 (arg0 at entry) +0x5720 into `a1` (`lw` at 0xb28).
  Stores 2 bytes from `a3` to a0 (arg0 at entry) +0xe8 (`sh` at 0xb38).
  Stores 2 bytes from `s2` to a0 (arg0 at entry) +0x2ce (`sh` at 0xb44).
  Stores 2 bytes from `a2` to a0 (arg0 at entry) +0xea (`sh` at 0xb50).
  Stores 2 bytes from `zero` to a0 (arg0 at entry) +0x2c8 (`sh` at 0xb54).
  Stores 2 bytes from `zero` to a0 (arg0 at entry) +0x2c6 (`sh` at 0xb58).
  Loads 8 bytes from a0 (arg0 at entry) +0x2828 into `a3` (`ld` at 0xba8, 0xc40).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `a0` (`ld` at 0xbcc, 0xc68).
  Loads 4 bytes from a0 (arg0 at entry) +0x55f0 into `a1` (`lw` at 0xc8c, 0xdbc).
  Loads 2 bytes from a0 (arg0 at entry) +0x2830 into `a0` (`lhu` at 0xc90).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `at` (`ld` at 0xcb4, 0xe3c).
  Stores 4 bytes from `a3` to a0 (arg0 at entry) +0x55f0 (`sw` at 0xcbc).
  Loads 4 bytes from a0 (arg0 at entry) +0x55f0 into `a2`: 4 such accesses, including `lw` at 0xce0, 0xd34, 0xe10.
  Loads 2 bytes from a0 (arg0 at entry) +0x2830 into `at` (`lhu` at 0xcec).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `v0` (`ld` at 0xd08, 0xd50).
  Stores 4 bytes from `a2` to a0 (arg0 at entry) +0x55f0: 4 such accesses, including `sw` at 0xd0c, 0xd60, 0xe48.
  Stores 8 bytes from `at` to [a0+736]:8 +0x400000: 4 such accesses, including `sd` at 0xd18, 0xd30, 0xd68.
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `v1` (`ld` at 0xd1c).
  Loads 8 bytes from a0 (arg0 at entry) +0x2828 into `at` (`ld` at 0xd24).
  Loads 4 bytes from a0 (arg0 at entry) +0x55f0 into `a5` (`lw` at 0xd6c, 0xea4).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x2828 (`sd` at 0xd78, 0xea8).
  Stores 4 bytes from `a4` to a0 (arg0 at entry) +0x55f0 (`sw` at 0xd8c, 0xec4).
  Loads 2 bytes from a0 (arg0 at entry) +0x2830 into `a4` (`lhu` at 0xdc0).
  Stores 4 bytes from `at` to a0 (arg0 at entry) +0x55f0 (`sw` at 0xde4).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `a2` (`ld` at 0xdf0, 0xe54).
  Loads 2 bytes from a0 (arg0 at entry) +0x2830 into `a3` (`lhu` at 0xe1c).
  Stores 8 bytes from `a3` to [a0+736]:8 +0x400000 (`sd` at 0xe50).
  Loads 8 bytes from a0 (arg0 at entry) +0x2828 into `v1` (`ld` at 0xe5c).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `a3` (`ld` at 0xe8c).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0xa, a2=?, a3=? (`jal` at 0xa64).
  Calls `bzero` via direct with a0=a0+710, a1=0x8, a2=[a1+4], a3=[a1] (`jal` at 0xb4c).
  Calls `mutex_spinlock` via direct with a0=a0+10272, a1=?, a2=?, a3=? (`jal` at 0xba0).
  Calls `mutex_spinunlock` via direct with a0=a0+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+10280]:8 (`jal` at 0xbbc).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0xbc8).
  Calls `vsema` via direct with a0=a0+10256, a1=?, a2=?, a3=? (`jal` at 0xbd8).
  Calls `psema` via direct with a0=a0+10256, a1=0x19, a2=([a0+252] << 0x14), a3=?, a4=-0x2 (`jal` at 0xc08).
  Calls `vsema` via direct with a0=a0+10256, a1=?, a2=?, a3=[a0+10280]:8 (`jal` at 0xc18).
  Calls `mutex_spinunlock` via direct with a0=a0+10272, a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0xc28).
  Calls `mutex_spinlock` via direct with a0=a0+10272, a1=[a0+22304], a2=?, a3=[a0+736]:8+0x400000, a4=0x3a02400100000000 (`jal` at 0xc38).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=[a0+10280]:8 (`jal` at 0xc58).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0xc64).
  Calls `vsema` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xc74).
  Calls `mutex_spinlock` via direct with a0=a0+10272, a1=?, a2=?, a3=? (`jal` at 0xc84).
  Calls `mutex_spinunlock` via direct with a0=a0+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a5=([a0+22000] | 0x2) (`jal` at 0xd88).
  Calls `vsema` via direct with a0=a0+10256, a1=?, a2=?, a3=[a0+10280]:8 (`jal` at 0xd98).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0xda4).
  Calls `mutex_spinlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xdb4).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a5=([a0+22000] | 0x2) (`jal` at 0xec0).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a4=-0x2 (`jal` at 0xee0).
  The `beq` at 0x74c is taken when s3(=[a1+8]) == at(=0x20) and falls through when s3(=[a1+8]) != at(=0x20).
  The `beq` at 0x754 is taken when s3(=[a1+8]) == v1(=0x10) and falls through when s3(=[a1+8]) != v1(=0x10).
  The `beq` at 0x75c is taken when s3(=[a1+8]) == a2(=0x8) and falls through when s3(=[a1+8]) != a2(=0x8).
  The `beq` at 0x770 is taken when (t1(?) & 0x3) == 0 and falls through when (t1(?) & 0x3) != 0.
  The `beq` at 0x804 is taken when (a1(?) & 0x3) == 0 and falls through when (a1(?) & 0x3) != 0.
  The `beq` at 0x88c is taken when (a0(?) & 0x3) == 0 and falls through when (a0(?) & 0x3) != 0.
  The `beq` at 0x8ac is taken when (t2(?) & 0x3) == 0 and falls through when (t2(?) & 0x3) != 0.
  The `beq` at 0x8c4 is taken when s3(=[a1+12]) == 0 and falls through when s3(=[a1+12]) != 0.
  The `beq` at 0x8cc is taken when s2(=0x1) == s3(=[a1+12]) and falls through when s2(=0x1) != s3(=[a1+12]).
  The `beq` at 0x8d4 is taken when a7(=0x2) == s3(=[a1+12]) and falls through when a7(=0x2) != s3(=[a1+12]).
  The `bne` at 0x900 is taken when a0(?) < 0x4 (signed) and falls through when a0(?) >= 0x4 (signed).
  The `beq` at 0x90c is taken when a7(?) == 0 and falls through when a7(?) != 0.
  The `bne` at 0x9b0 is taken when a0(?) < a7(?) (unsigned) and falls through when a0(?) >= a7(?) (unsigned).
  The `beq` at 0x9c8 is taken when (a1(?) & 0x3) == 0 and falls through when (a1(?) & 0x3) != 0.
  The `beq` at 0xa00 is taken when a3(?) >= at(=([a0+252] << 0x14)) (unsigned) and falls through when a3(?) < at(=([a0+252] << 0x14)) (unsigned).
  The `beq` at 0xa58 is taken when v1(=[a0+22304]) == 0 and falls through when v1(=[a0+22304]) != 0.
  The `beq` at 0xa6c is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0xa78 is taken when at(=[a0+22304]) == 0 and falls through when at(=[a0+22304]) != 0.
  The `beq` at 0xb2c is taken when a1(=[a0+22304]) == 0 and falls through when a1(=[a0+22304]) != 0.
  The `beq` at 0xbb0 is taken when a3(=[a0+10280]:8) == 0 and falls through when a3(=[a0+10280]:8) != 0.
  The `beq` at 0xbd0 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0xc48 is taken when a3(=[a0+10280]:8) == 0 and falls through when a3(=[a0+10280]:8) != 0.
  The `beq` at 0xc6c is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0xca4 is taken when 0 >= a0(?) (unsigned) and falls through when 0 < a0(?) (unsigned).
  The `beq` at 0xd2c is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `beq` at 0xdd4 is taken when 0 >= a4(?) (unsigned) and falls through when 0 < a4(?) (unsigned).
  The `beq` at 0xe64 is taken when a4(?) == 0 and falls through when a4(?) != 0.
  The `jr` at 0xa90 returns with v0 = one of -0x1, 0x0.

- `gfP_OdsyBRDMGRconfigFb` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`, 0xef4, 276 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `v0` (`ld` at 0xef4).
  Stores 4 bytes from `v0` to a3 (arg3 at entry) +0x0 (`sw` at 0xf88).
  Stores 4 bytes from `a5` to a3 (arg3 at entry) +0x0 (`sw` at 0xfb0, 0xfd4, 0xff8).
  Calls `copyin` via direct with a0=a2 at entry (arg2), a1=sp-128, a2=0x30, a3=a3 at entry (arg3) (`jal` at 0xf1c).
  Calls `odsyConfigFb` via direct with a0=?, a1=sp-128, a2=?, a3=?, a5=0x8, a6=0x10 (`jal` at 0xf60).
  Calls `copyout` via direct with a0=sp-128, a1=a2 at entry (arg2), a2=0x30, a3=? (`jal` at 0xf74).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a5=0x8 (`jal` at 0xfa4).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a5=0x8 (`jal` at 0xfc8).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0xfec).
  The `bne` at 0xf24 is taken when v0(=ret(copyin)) != 0 and falls through when v0(=ret(copyin)) == 0.
  The `beq` at 0xf38 is taken when a2(?) >= 0x1000 (unsigned) and falls through when a2(?) < 0x1000 (unsigned).
  The `beq` at 0xf40 is taken when a4(?) == 0 and falls through when a4(?) != 0.
  The `beq` at 0xf48 is taken when a4(?) == a5(=0x8) and falls through when a4(?) != a5(=0x8).
  The `beq` at 0xf50 is taken when a4(?) == a6(=0x10) and falls through when a4(?) != a6(=0x10).
  The `bne` at 0xf58 is taken when a4(?) != at(=0x20) and falls through when a4(?) == at(=0x20).
  The `bne` at 0xf7c is taken when v0(=ret(copyout)) != 0 and falls through when v0(=ret(copyout)) == 0.
  The `jr` at 0xf90 returns with v0 = ?.

- `gf_OdsyPositionCursor` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`, 0x1008, 596 bytes) Inferred.
  Loads 2 bytes from a0 (arg0 at entry) +0x2ce into `at` (`lhu` at 0x100c).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `s2` (`ld` at 0x101c).
  Loads 4 bytes from a0 (arg0 at entry) +0x55f0 into `at` (`lw` at 0x1030).
  Loads 2 bytes from a0 (arg0 at entry) +0x55ee into `a5` (`lhu` at 0x1034).
  Loads 2 bytes from a0 (arg0 at entry) +0x55ec into `a0` (`lhu` at 0x1038).
  Loads 2 bytes from a0 (arg0 at entry) +0x2830 into `v0` (`lhu` at 0x105c).
  Stores 2 bytes from `a2` to a0 (arg0 at entry) +0x55ea (`sh` at 0x1068).
  Stores 2 bytes from `a1` to a0 (arg0 at entry) +0x55e8 (`sh` at 0x1080).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x2828 (`sd` at 0x10d0).
  Stores 2 bytes from `s1` to a0 (arg0 at entry) +0x2830 (`sh` at 0x10fc, 0x1180, 0x122c).
  Stores 8 bytes from `a3` to a0 (arg0 at entry) +0x2828 (`sd` at 0x1108).
  Loads 4 bytes from a0 (arg0 at entry) +0x55f0 into `a4` (`lw` at 0x113c, 0x1168, 0x11dc).
  Stores 4 bytes from `a4` to a0 (arg0 at entry) +0x55f0 (`sw` at 0x1154, 0x1188, 0x11f0).
  Stores 8 bytes from `v1` to [a0+736]:8 +0x400000 (`sd` at 0x1160, 0x119c).
  Stores 8 bytes from `a3` to [a0+736]:8 +0x400000 (`sd` at 0x11b0).
  Loads 4 bytes from a0 (arg0 at entry) +0x55f0 into `a3` (`lw` at 0x11b8).
  Stores 4 bytes from `a3` to a0 (arg0 at entry) +0x55f0 (`sw` at 0x11cc).
  Stores 8 bytes from `at` to [a0+736]:8 +0x400000 (`sd` at 0x11d8).
  Loads 2 bytes from a0 (arg0 at entry) +0x2ca into `v0` (`lhu` at 0x11f4).
  Stores 8 bytes from `v0` to a0 (arg0 at entry) +0x2828 (`sd` at 0x1244).
  Calls `mutex_spinlock` via direct with a0=a0+10272, a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x10b0).
  Calls `cpsema` via direct with a0=a0+10256, a1=?, a2=?, a3=? (`jal` at 0x10c0).
  Calls `mutex_spinunlock` via direct with a0=a0+10272, a1=?, a2=?, a3=? (`jal` at 0x10d8).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x10e8).
  Calls `vsema` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x110c).
  Calls `mutex_spinunlock` via direct with a0=a0+10272, a1=?, a2=?, a3=? (`jal` at 0x1240).
  The `beq` at 0x1020 is taken when at(=[a0+718]:2) == v0(=0x2) and falls through when at(=[a0+718]:2) != v0(=0x2).
  The `beq` at 0x1090 is taken when at(?) == 0 and falls through when at(?) != 0.
  The `beq` at 0x10c8 is taken when v0(=ret(cpsema)) == 0 and falls through when v0(=ret(cpsema)) != 0.
  The `beq` at 0x10f0 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x1130 is taken when a4(?) == 0 and falls through when a4(?) != 0.
  The `beq` at 0x11ac is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `bne` at 0x11fc is taken when a1 < v0(=[a0+714]:2) (signed) and falls through when a1 >= v0(=[a0+714]:2) (signed).
  The `jr` at 0x111c returns with v0 = 0x0.

- `gfP_OdsyBRDMGRcursor` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`, 0x125c, 3380 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `s0` (`ld` at 0x1288).
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `at`: 6 such accesses, including `ld` at 0x129c, 0x1544, 0x17b4.
  Stores 2 bytes from `v1` to [a0+32]:8 +0x55ec (`sh` at 0x12c4).
  Stores 2 bytes from `v0` to [a0+32]:8 +0x55ee (`sh` at 0x12cc).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `a0` (`ld` at 0x12e4).
  Loads 4 bytes from [a0+32]:8 +0x5720 into `a2` (`lw` at 0x12f4).
  Stores 4 bytes from `a5` to [a0+32]:8 +0x55f0 (`sw` at 0x1318, 0x1be0, 0x1f5c).
  Loads 4 bytes from [a0+32]:8 +0x5720 into `v1`: 4 such accesses, including `lw` at 0x1330, 0x1384, 0x1438.
  Stores 4 bytes from `a2` to a3 (arg3 at entry) +0x0 (`sw` at 0x1350, 0x1828).
  Loads 8 bytes from [a0+32]:8 +0x2828 into `a2`: 5 such accesses, including `ld` at 0x13a0, 0x1524, 0x1794.
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `a0`: 5 such accesses, including `ld` at 0x13c4, 0x15c0, 0x1860.
  Stores 8 bytes from `a4` to table(0x400000) +0x0 (`sd` at 0x1404, 0x1ce4, 0x1d68).
  Loads 4 bytes from [a0+32]:8 +0x55f0 into `a6`: 5 such accesses, including `lw` at 0x148c, 0x16fc, 0x1918.
  Loads 2 bytes from [a0+32]:8 +0x2830 into `a7` (`lhu` at 0x1490).
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `t0` (`ld` at 0x14c0).
  Stores 4 bytes from `v1` to [a0+32]:8 +0x55f0: 4 such accesses, including `sw` at 0x14d4, 0x1744, 0x1960.
  Stores 8 bytes from `a2` to [[a0+32]:8+736]:8 +0x400000: 8 such accesses, including `sd` at 0x14dc, 0x1530, 0x174c.
  Loads 2 bytes from [a0+32]:8 +0x2830 into `v1` (`lhu` at 0x14e0, 0x1750, 0x196c).
  Loads 4 bytes from [a0+32]:8 +0x55f0 into `t0` (`lw` at 0x14e4).
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `a2`: 5 such accesses, including `ld` at 0x1500, 0x1770, 0x198c.
  Stores 4 bytes from `t0` to [a0+32]:8 +0x55f0 (`sw` at 0x1510).
  Stores 8 bytes from `v1` to [[a0+32]:8+736]:8 +0x400000: 4 such accesses, including `sd` at 0x1518, 0x1788, 0x19a4.
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `a4`: 5 such accesses, including `ld` at 0x151c, 0x178c, 0x19a8.
  Loads 4 bytes from [a0+32]:8 +0x55f0 into `a2`: 4 such accesses, including `lw` at 0x1534, 0x17a4, 0x19c0.
  Stores 4 bytes from `a2` to [a0+32]:8 +0x55f0: 4 such accesses, including `sw` at 0x1558, 0x17c8, 0x19e4.
  Stores 8 bytes from `a7` to [[a0+32]:8+736]:8 +0x400000 (`sd` at 0x1560).
  Stores 8 bytes from `zero` to [a0+32]:8 +0x2828: 5 such accesses, including `sd` at 0x1564, 0x17d4, 0x19f0.
  Loads 4 bytes from [a0+32]:8 +0x55f0 into `a3`: 4 such accesses, including `lw` at 0x1568, 0x17d8, 0x19f4.
  Stores 4 bytes from `a3` to [a0+32]:8 +0x55f0: 4 such accesses, including `sw` at 0x1580, 0x17f0, 0x1a0c.
  Loads 8 bytes from [a0+32]:8 +0x2828 into `a4` (`ld` at 0x1598).
  Loads 4 bytes from [a0+32]:8 +0x5720 into `a4` (`lw` at 0x1664).
  Stores 8 bytes from `at` to table(0x400000) +0x0 (`sd` at 0x1698, 0x1a50).
  Loads 4 bytes from ? (base unknown) into `a7` (`lw` at 0x16c8).
  Loads 2 bytes from [a0+32]:8 +0x2830 into `a5` (`lhu` at 0x1700, 0x191c, 0x1e8c).
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `a7` (`ld` at 0x1730, 0x194c).
  Loads 4 bytes from [a0+32]:8 +0x55f0 into `a7` (`lw` at 0x1754, 0x1970, 0x1f6c).
  Stores 4 bytes from `a7` to [a0+32]:8 +0x55f0 (`sw` at 0x1780, 0x199c).
  Stores 8 bytes from `a5` to [[a0+32]:8+736]:8 +0x400000 (`sd` at 0x17d0, 0x19ec).
  Loads 8 bytes from [a0+32]:8 +0x2828 into `at`: 4 such accesses, including `ld` at 0x1838, 0x1afc, 0x1c48.
  Stores 4 bytes from `zero` to a3 (arg3 at entry) +0x0 (`sw` at 0x18ec).
  Stores 8 bytes from `a2` to table(0x400000) +0x0 (`sd` at 0x1a90).
  Loads 4 bytes from ? (base unknown) into `v0` (`lw` at 0x1ae0, 0x1db8).
  Loads 2 bytes from [a0+32]:8 +0x2830 into `a3` (`lhu` at 0x1bb4).
  Stores 8 bytes from `a4` to [[a0+32]:8+736]:8 +0x400000 (`sd` at 0x1c00, 0x1c8c).
  Loads 4 bytes from [a0+32]:8 +0x55f0 into `a4` (`lw` at 0x1c04).
  Loads 2 bytes from [a0+32]:8 +0x2830 into `at` (`lhu` at 0x1c10).
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `v1` (`ld` at 0x1c2c, 0x1c40).
  Stores 4 bytes from `a4` to [a0+32]:8 +0x55f0 (`sw` at 0x1c30).
  Stores 8 bytes from `at` to [[a0+32]:8+736]:8 +0x400000 (`sd` at 0x1c3c, 0x1c58, 0x1ed8).
  Stores 8 bytes from `v1` to table(0x400000) +0x0 (`sd` at 0x1d24).
  Loads 4 bytes from [a0+32]:8 +0x55f0 into `at` (`lw` at 0x1edc).
  Loads 2 bytes from [a0+32]:8 +0x2830 into `a2` (`lhu` at 0x1ee8).
  Stores 4 bytes from `at` to [a0+32]:8 +0x55f0 (`sw` at 0x1f08).
  Loads 4 bytes from [a0+32]:8 +0x55f0 into `a5` (`lw` at 0x1f34).
  Stores 4 bytes from `a6` to [a0+32]:8 +0x55f0 (`sw` at 0x1f84).
  Calls `copyin` via direct with a0=a2 at entry (arg2), a1=sp-1040, a2=0x28, a3=a3 at entry (arg3) (`jal` at 0x12a4).
  Calls `gf_OdsyPositionCursor` via direct with a0=[a0+32]:8, a1=?, a2=?, a3=? (`jal` at 0x12ec).
  Calls `odsy_poll_dfifo_level` via direct with a0=?, a1=0xf, a2=?, a3=? (`jal` at 0x1314).
  Calls `copyin` via direct with a0=?, a1=sp-1000, a2=0x3c, a3=? (`jal` at 0x1374).
  Calls `mutex_spinlock` via direct with a0=[a0+32]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x1398).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=[[a0+32]:8+10280]:8, a3=?, a5=[a0+32]:8+10256 (`jal` at 0x13b4).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+32]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x13c0).
  Calls `vsema` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x13d0).
  Calls `copyin` via direct with a0=?, a1=sp-928, a2=0x200, a3=? (`jal` at 0x1428).
  Calls `psema` via direct with a0=[a0+32]:8+10256, a1=0x19, a2=[[a0+32]:8+22304], a3=? (`jal` at 0x1450).
  Calls `vsema` via direct with a0=[a0+32]:8+10256, a1=?, a2=[[a0+32]:8+10280]:8, a3=?, a5=[a0+32]:8+10256 (`jal` at 0x1468).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1474).
  Calls `mutex_spinlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1484).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a5=0x400000, a6=-0x2 (`jal` at 0x157c).
  Calls `mutex_spinlock` via direct with a0=[a0+32]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x1590).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[[a0+32]:8+10280]:8 (`jal` at 0x15b0).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+32]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x15bc).
  Calls `vsema` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x15cc).
  Calls `odsy_poll_dfifo_level` via direct with a0=?, a1=0x7, a2=?, a3=? (`jal` at 0x15e0).
  Calls `odsy_poll_dfifo_level` via direct with a0=?, a1=0xf, a2=?, a3=? (`jal` at 0x1624).
  Calls `copyin` via direct with a0=?, a1=sp-416, a2=0x100, a3=? (`jal` at 0x1654).
  Calls `vsema` via direct with a0=[a0+32]:8+10256, a1=?, a2=?, a3=?, a4=[[a0+32]:8+10280]:8 (`jal` at 0x16d8).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x16e4).
  Calls `mutex_spinlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x16f4).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a6=-0x2 (`jal` at 0x17ec).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x180c).
  Calls `mutex_spinlock` via direct with a0=[a0+32]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x1830).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0x1850).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+32]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x185c).
  Calls `vsema` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x186c).
  Calls `odsy_poll_dfifo_level` via direct with a0=?, a1=0xf, a2=?, a3=? (`jal` at 0x1880).
  Calls `odsy_poll_dfifo_level` via direct with a0=?, a1=0xf, a2=?, a3=? (`jal` at 0x18b0).
  Calls `vsema` via direct with a0=[a0+32]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x18f4).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1900).
  Calls `mutex_spinlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1910).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a6=-0x2 (`jal` at 0x1a08).
  Calls `mutex_spinlock` via direct with a0=[a0+32]:8+10272, a1=?, a2=?, a3=?, a4=[[a0+32]:8+22304] (`jal` at 0x1af4).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0x1b14).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+32]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x1b20).
  Calls `vsema` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1b30).
  Calls `odsy_poll_dfifo_level` via direct with a0=?, a1=0x0, a2=?, a3=0xffffffff, a5=0xffffffff00000000, a7=sp-928 (`jal` at 0x1b4c).
  Calls `vsema` via direct with a0=[a0+32]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x1b8c).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1b98).
  Calls `mutex_spinlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1ba8).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a6=-0x2 (`jal` at 0x1ca8).
  Calls `odsy_poll_dfifo_level` via direct with a0=?, a1=0x0, a2=?, a3=?, a5=0xffffffff00000000, a6=0xffffffff, a7=0x400000 (`jal` at 0x1dd4).
  Calls `mutex_spinlock` via direct with a0=[a0+32]:8+10272, a1=?, a2=a3 at entry (arg3), a3=? (`jal` at 0x1e04).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0x1e24).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+32]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x1e30).
  Calls `vsema` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1e40).
  Calls `vsema` via direct with a0=[a0+32]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x1e64).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1e70).
  Calls `mutex_spinlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1e80).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a7=([[a0+32]:8+22000] | 0x2) (`jal` at 0x1f80).
  The `bne` at 0x12ac is taken when v0(=ret(copyin)) != 0 and falls through when v0(=ret(copyin)) == 0.
  The `beq` at 0x12b8 is taken when (v0(?) & 0x1) == 0 and falls through when (v0(?) & 0x1) != 0.
  The `beq` at 0x12d8 is taken when (v0(?) & 0x2) == 0 and falls through when (v0(?) & 0x2) != 0.
  The `beq` at 0x12f8 is taken when a2(=[[a0+32]:8+22304]) == 0 and falls through when a2(=[[a0+32]:8+22304]) != 0.
  The `beq` at 0x1304 is taken when (a4(?) & 0x4) == 0 and falls through when (a4(?) & 0x4) != 0.
  The `beq` at 0x131c is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x1328 is taken when at(?) == 0 and falls through when at(?) != 0.
  The `beq` at 0x1334 is taken when v1(=[[a0+32]:8+22304]) == 0 and falls through when v1(=[[a0+32]:8+22304]) != 0.
  The `beq` at 0x1364 is taken when (at(?) & 0x8) == 0 and falls through when (at(?) & 0x8) != 0.
  The `beq` at 0x137c is taken when v0(=ret(copyin)) == 0 and falls through when v0(=ret(copyin)) != 0.
  The `beq` at 0x1388 is taken when v1(=[[a0+32]:8+22304]) == 0 and falls through when v1(=[[a0+32]:8+22304]) != 0.
  The `beq` at 0x13a4 is taken when a2(=[[a0+32]:8+10280]:8) == 0 and falls through when a2(=[[a0+32]:8+10280]:8) != 0.
  The `beq` at 0x13c8 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `bne` at 0x1410 is taken when a4(?) != 0 and falls through when a4(?) == 0.
  The `beq` at 0x141c is taken when (at(?) & 0x10) == 0 and falls through when (at(?) & 0x10) != 0.
  The `beq` at 0x1430 is taken when v0(=ret(copyin)) == 0 and falls through when v0(=ret(copyin)) != 0.
  The `beq` at 0x143c is taken when v1(=[[a0+32]:8+22304]) == 0 and falls through when v1(=[[a0+32]:8+22304]) != 0.
  The `beq` at 0x14a8 is taken when 0 >= a7(?) (unsigned) and falls through when 0 < a7(?) (unsigned).
  The `beq` at 0x152c is taken when a7(?) == 0 and falls through when a7(?) != 0.
  The `beq` at 0x15a4 is taken when a4(=[[a0+32]:8+10280]:8) == 0 and falls through when a4(=[[a0+32]:8+10280]:8) != 0.
  The `beq` at 0x15c4 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `bne` at 0x15ec is taken when v0(=ret(odsy_poll_dfifo_level)) != 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) == 0.
  The `beq` at 0x1630 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `bne` at 0x163c is taken when v1(?) != 0 and falls through when v1(?) == 0.
  The `beq` at 0x1648 is taken when (a2(?) & 0x20) == 0 and falls through when (a2(?) & 0x20) != 0.
  The `beq` at 0x165c is taken when v0(=ret(copyin)) == 0 and falls through when v0(=ret(copyin)) != 0.
  The `beq` at 0x1668 is taken when a4(=[[a0+32]:8+22304]) == 0 and falls through when a4(=[[a0+32]:8+22304]) != 0.
  The `beq` at 0x16ac is taken when a1(?) >= 0xf (signed) and falls through when a1(?) < 0xf (signed).
  The `bne` at 0x16c4 is taken when (a4(?) & 0x1) != 0 and falls through when (a4(?) & 0x1) == 0.
  The `beq` at 0x1718 is taken when 0 >= a5(?) (unsigned) and falls through when 0 < a5(?) (unsigned).
  The `beq` at 0x179c is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `beq` at 0x1844 is taken when at(=[[a0+32]:8+10280]:8) == 0 and falls through when at(=[[a0+32]:8+10280]:8) != 0.
  The `beq` at 0x1864 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x188c is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `bne` at 0x1898 is taken when a2(?) != 0 and falls through when a2(?) == 0.
  The `beq` at 0x18a4 is taken when (a4(?) & 0x1) == 0 and falls through when (a4(?) & 0x1) != 0.
  The `beq` at 0x18c0 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `bne` at 0x18cc is taken when at(?) != 0 and falls through when at(?) == 0.
  The `beq` at 0x18d8 is taken when v1(=[[a0+32]:8+22304]) == 0 and falls through when v1(=[[a0+32]:8+22304]) != 0.
  The `beq` at 0x1934 is taken when 0 >= a5(?) (unsigned) and falls through when 0 < a5(?) (unsigned).
  The `beq` at 0x19b8 is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `beq` at 0x1a30 is taken when (a4(?) & 0x1) == 0 and falls through when (a4(?) & 0x1) != 0.
  The `beq` at 0x1aa4 is taken when a6(?) >= 0x80 (signed) and falls through when a6(?) < 0x80 (signed).
  The `beq` at 0x1ac8 is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `bne` at 0x1adc is taken when (a4(?) & 0x1) != 0 and falls through when (a4(?) & 0x1) == 0.
  The `beq` at 0x1b08 is taken when at(=[[a0+32]:8+10280]:8) == 0 and falls through when at(=[[a0+32]:8+10280]:8) != 0.
  The `beq` at 0x1b28 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `bne` at 0x1b6c is taken when v0(=ret(odsy_poll_dfifo_level)) != 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) == 0.
  The `beq` at 0x1bc8 is taken when 0 >= a3(?) (unsigned) and falls through when 0 < a3(?) (unsigned).
  The `beq` at 0x1c54 is taken when a3(?) == 0 and falls through when a3(?) != 0.
  The `beq` at 0x1d00 is taken when (at(?) & 0x1) == 0 and falls through when (at(?) & 0x1) != 0.
  The `beq` at 0x1d7c is taken when a3(?) >= 0x40 (signed) and falls through when a3(?) < 0x40 (signed).
  The `beq` at 0x1da0 is taken when a2(?) == 0 and falls through when a2(?) != 0.
  The `bne` at 0x1db4 is taken when (at(?) & 0x1) != 0 and falls through when (at(?) & 0x1) == 0.
  The `bne` at 0x1df0 is taken when v0(=ret(odsy_poll_dfifo_level)) != 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) == 0.
  The `beq` at 0x1e18 is taken when at(=[[a0+32]:8+10280]:8) == 0 and falls through when at(=[[a0+32]:8+10280]:8) != 0.
  The `beq` at 0x1e38 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x1ea0 is taken when 0 >= a5(?) (unsigned) and falls through when 0 < a5(?) (unsigned).
  The `beq` at 0x1f2c is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `jr` at 0x1354 returns with v0 = one of 0x0, 0x5, 0xe.

- `gfP_OdsyBRDMGRsetDpyMode` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`, 0x1f90, 120 bytes) Inferred.
  Stores 4 bytes from `v0` to a3 (arg3 at entry) +0x0 (`sw` at 0x1fc8).
  Stores 4 bytes from `a2` to a3 (arg3 at entry) +0x0 (`sw` at 0x1ff8).
  Calls `copyin` via direct with a0=a2 at entry (arg2), a1=sp-64, a2=0x8, a3=a3 at entry (arg3) (`jal` at 0x1fac).
  Calls `gf_OdsySetDisplayMode` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x1fc0).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x1fec).
  The `bne` at 0x1fb4 is taken when v0(=ret(copyin)) != 0 and falls through when v0(=ret(copyin)) == 0.
  The `jr` at 0x1fdc returns with v0 = one of 0x0, 0xe.

- `gfP_OdsyBRDMGRsetBlanking` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`, 0x2008, 116 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `v0` (`ld` at 0x2008).
  Stores 4 bytes from `v0` to a3 (arg3 at entry) +0x0 (`sw` at 0x2044).
  Stores 4 bytes from `a2` to a3 (arg3 at entry) +0x0 (`sw` at 0x206c).
  Calls `copyin` via direct with a0=a2 at entry (arg2), a1=sp-64, a2=0x4, a3=a3 at entry (arg3) (`jal` at 0x202c).
  Calls `odsyBlankScreen` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x203c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x2060).
  The `bne` at 0x2034 is taken when v0(=ret(copyin)) != 0 and falls through when v0(=ret(copyin)) == 0.
  The `jr` at 0x2050 returns with v0 = ?.

- `odsyBlankScreen` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`, 0x207c, 3320 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `v0` (`ld` at 0x207c, 0x22ec, 0x272c).
  Loads 2 bytes from a0 (arg0 at entry) +0x12a into `a4` (`lhu` at 0x20b4, 0x2168).
  Loads 4 bytes from a0 (arg0 at entry) +0x5720 into `v1` (`lw` at 0x20c0, 0x2178).
  Loads 4 bytes from a0 (arg0 at entry) +0x5698 into `a3` (`lw` at 0x20c4, 0x217c).
  Stores 4 bytes from `a3` to a0 (arg0 at entry) +0x5698 (`sw` at 0x20d8, 0x2190).
  Loads 4 bytes from a0 (arg0 at entry) +0x5720 into `at`: 4 such accesses, including `lw` at 0x20fc, 0x21b8, 0x2234.
  Loads 2 bytes from a0 (arg0 at entry) +0x12a into `v1` (`lhu` at 0x2114).
  Loads 4 bytes from a0 (arg0 at entry) +0x5720 into `a4` (`lw` at 0x2124).
  Loads 4 bytes from a0 (arg0 at entry) +0x5698 into `at` (`lw` at 0x2128).
  Stores 4 bytes from `at` to a0 (arg0 at entry) +0x5698 (`sw` at 0x213c).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `a0`: 7 such accesses, including `ld` at 0x2148, 0x2278, 0x23a4.
  Loads 4 bytes from a0 (arg0 at entry) +0x5720 into `a3` (`lw` at 0x2154, 0x2364).
  Loads 4 bytes from a0 (arg0 at entry) +0x5694 into `a5` (`lw` at 0x2198).
  Stores 4 bytes from `a5` to a0 (arg0 at entry) +0x5694 (`sw` at 0x21ac).
  Loads 4 bytes from table(0x233604) +0x0 into `at` (`lw` at 0x21d8).
  Stores 8 bytes from `at` to table(0x400000) +0x0 (`sd` at 0x21f8, 0x221c, 0x23e0).
  Loads 4 bytes from a0 (arg0 at entry) +0x5694 into `v0` (`lw` at 0x21fc).
  Loads 4 bytes from a0 (arg0 at entry) +0x5698 into `at` (`lwu` at 0x2204, 0x23c4).
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x5694 (`sw` at 0x220c).
  Loads 4 bytes from a0 (arg0 at entry) +0x5694 into `v0` (`lwu` at 0x2220).
  Stores 8 bytes from `v0` to table(0x400000) +0x0 (`sd` at 0x2230).
  Loads 8 bytes from a0 (arg0 at entry) +0x2828 into `v1`: 5 such accesses, including `ld` at 0x2254, 0x2460, 0x2a88.
  Stores 1 byte from `a3` to a0 (arg0 at entry) +0x56e8 (`sb` at 0x22ac, 0x2578, 0x26ec).
  Loads 4 bytes from table(0x233604) +0x0 into `a4` (`lw` at 0x2300).
  Stores 8 bytes from `a3` to table(0x400000) +0x0 (`sd` at 0x232c, 0x234c).
  Loads 4 bytes from a0 (arg0 at entry) +0x5694 into `a4` (`lw` at 0x2330).
  Loads 4 bytes from a0 (arg0 at entry) +0x5698 into `a3` (`lwu` at 0x2334).
  Stores 4 bytes from `a4` to a0 (arg0 at entry) +0x5694 (`sw` at 0x233c).
  Loads 4 bytes from a0 (arg0 at entry) +0x5694 into `a4` (`lwu` at 0x2350).
  Stores 8 bytes from `a4` to table(0x400000) +0x0 (`sd` at 0x2360).
  Loads 8 bytes from a0 (arg0 at entry) +0x2828 into `at` (`ld` at 0x237c, 0x2410).
  Loads 4 bytes from a0 (arg0 at entry) +0x5694 into `v1` (`lwu` at 0x23e4).
  Stores 8 bytes from `v1` to table(0x400000) +0x0 (`sd` at 0x23f4).
  Loads 8 bytes from a0 (arg0 at entry) +0x2828 into `a4` (`ld` at 0x24ac).
  Loads 8 bytes from a0 (arg0 at entry) +0x2828 into `v0` (`ld` at 0x2520).
  Loads 4 bytes from a0 (arg0 at entry) +0x55f0 into `a2`: 6 such accesses, including `lw` at 0x25c8, 0x27a0, 0x28b4.
  Loads 2 bytes from a0 (arg0 at entry) +0x2830 into `a5`: 6 such accesses, including `lhu` at 0x25cc, 0x27a4, 0x28b8.
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `a3`: 12 such accesses, including `ld` at 0x25f0, 0x268c, 0x27c8.
  Stores 4 bytes from `v1` to a0 (arg0 at entry) +0x55f0 (`sw` at 0x25f8, 0x27d0, 0x28e4).
  Stores 8 bytes from `at` to [a0+736]:8 +0x400000: 6 such accesses, including `sd` at 0x2618, 0x27f0, 0x2904.
  Loads 4 bytes from a0 (arg0 at entry) +0x55f0 into `at`: 6 such accesses, including `lw` at 0x261c, 0x2670, 0x27f4.
  Loads 2 bytes from a0 (arg0 at entry) +0x2830 into `a3` (`lhu` at 0x2628, 0x2800, 0x2914).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `a4`: 9 such accesses, including `ld` at 0x2644, 0x2658, 0x281c.
  Stores 4 bytes from `at` to a0 (arg0 at entry) +0x55f0: 9 such accesses, including `sw` at 0x2648, 0x269c, 0x2820.
  Stores 8 bytes from `a3` to [a0+736]:8 +0x400000: 9 such accesses, including `sd` at 0x2654, 0x266c, 0x282c.
  Loads 8 bytes from a0 (arg0 at entry) +0x2828 into `a3` (`ld` at 0x2660, 0x2838, 0x294c).
  Stores 8 bytes from `a2` to [a0+736]:8 +0x400000 (`sd` at 0x26a4, 0x287c, 0x2990).
  Loads 4 bytes from a0 (arg0 at entry) +0x55f0 into `a1` (`lw` at 0x26a8, 0x2880, 0x2994).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x2828: 6 such accesses, including `sd` at 0x26ac, 0x2884, 0x2998.
  Stores 4 bytes from `a0` to a0 (arg0 at entry) +0x55f0 (`sw` at 0x26bc, 0x2894, 0x29a8).
  Loads 4 bytes from a0 (arg0 at entry) +0x55f0 into `a3`: 6 such accesses, including `lw` at 0x2a3c, 0x2a98, 0x2b98.
  Loads 2 bytes from a0 (arg0 at entry) +0x2830 into `a4` (`lhu` at 0x2a48, 0x2ba4, 0x2cc0).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `at` (`ld` at 0x2a68, 0x2bc4, 0x2ce0).
  Stores 4 bytes from `a3` to a0 (arg0 at entry) +0x55f0: 6 such accesses, including `sw` at 0x2a74, 0x2aa4, 0x2bd0.
  Stores 8 bytes from `a4` to [a0+736]:8 +0x400000 (`sd` at 0x2a7c, 0x2bd8, 0x2cf4).
  Stores 8 bytes from `v1` to [a0+736]:8 +0x400000 (`sd` at 0x2a94, 0x2bf0, 0x2d0c).
  Loads 4 bytes from a0 (arg0 at entry) +0x55f0 into `a6` (`lw` at 0x2ad4, 0x2c30, 0x2d4c).
  Stores 4 bytes from `a5` to a0 (arg0 at entry) +0x55f0 (`sw` at 0x2af0, 0x2c4c, 0x2d68).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x20e0).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x2144).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0xe, a2=?, a3=?, a6=-0x21 (`jal` at 0x21a8).
  Calls `mutex_spinlock` via direct with a0=a0+10272, a1=?, a2=?, a3=?, a4=0xffffffff (`jal` at 0x224c).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0x2268).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x2274).
  Calls `vsema` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2284).
  Calls `odsy_i2cDDCRegRead` via direct with a0=a0+22216, a1=0x0, a2=sp-78, a3=0x17, a4=[a0+298]:2 (`jal` at 0x22a8).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=?, a1=0x0, a2=?, a3=? (`jal` at 0x22c4).
  Calls `psema` via direct with a0=a0+10256, a1=0x19, a2=a1 at entry (arg1), a3=?, a4=-0x21 (`jal` at 0x22e0).
  Calls `mutex_spinlock` via direct with a0=a0+10272, a1=?, a2=?, a3=[a0+22304] (`jal` at 0x2374).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0x2394).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x23a0).
  Calls `vsema` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x23b0).
  Calls `mutex_spinlock` via direct with a0=a0+10272, a1=?, a2=?, a3=table(0x400000), a4=0x3920c00100000000 (`jal` at 0x2408).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0x2428).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x2434).
  Calls `vsema` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2444).
  Calls `mutex_spinlock` via direct with a0=a0+10272, a1=?, a2=?, a3=[a0+22304] (`jal` at 0x2458).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=a0+10256 (`jal` at 0x2474).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x2480).
  Calls `vsema` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2490).
  Calls `mutex_spinlock` via direct with a0=a0+10272, a1=?, a2=?, a3=? (`jal` at 0x24a4).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[a0+10280]:8 (`jal` at 0x24c0).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x24cc).
  Calls `vsema` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x24dc).
  Calls `vsema` via direct with a0=a0+10256, a1=a0+10256, a2=?, a3=? (`jal` at 0x24f4).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2500).
  Calls `mutex_spinlock` via direct with a0=a0+10272, a1=?, a2=?, a3=0x3920c00100000000, a4=0xffffffff (`jal` at 0x2514).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0x2534).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x2540).
  Calls `vsema` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2550).
  Calls `odsy_i2cDDCRegRead` via direct with a0=a0+22216, a1=0x0, a2=sp-80, a3=0x17 (`jal` at 0x2574).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=?, a1=0x0, a2=?, a3=-0xf (`jal` at 0x2590).
  Calls `psema` via direct with a0=a0+10256, a1=0x19, a2=?, a3=?, a4=[a0+22304] (`jal` at 0x25b0).
  Calls `mutex_spinlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x25c0).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0x26c4).
  Calls `odsy_i2cDDCRegRead` via direct with a0=a0+22216, a1=0x0, a2=sp-79, a3=0x17, a4=[a0+298]:2 (`jal` at 0x26e8).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=?, a1=0x0, a2=?, a3=? (`jal` at 0x2704).
  Calls `psema` via direct with a0=a0+10256, a1=0x19, a2=a1 at entry (arg1), a3=?, a4=-0x21 (`jal` at 0x2720).
  Calls `vsema` via direct with a0=a0+10256, a1=?, a2=?, a3=a0+10256 (`jal` at 0x2738).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2744).
  Calls `vsema` via direct with a0=a0+10256, a1=?, a2=?, a3=?, a4=[a0+10280]:8 (`jal` at 0x275c).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2768).
  Calls `vsema` via direct with a0=a0+10256, a1=?, a2=?, a3=? (`jal` at 0x277c).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2788).
  Calls `mutex_spinlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2798).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0x289c).
  Calls `mutex_spinlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x28ac).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0x29b0).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a1 at entry (arg1), a3=0x2 (`jal` at 0x29cc).
  Calls `mutex_spinlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x29e0).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=[a0+22000], a3=?, a6=([a0+22000] | 0x2) (`jal` at 0x2aec).
  Calls `vsema` via direct with a0=a0+10256, a1=?, a2=?, a3=? (`jal` at 0x2b00).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2b0c).
  Calls `vsema` via direct with a0=a0+10256, a1=?, a2=?, a3=? (`jal` at 0x2b20).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2b2c).
  Calls `mutex_spinlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2b3c).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=[a0+22000], a3=?, a6=([a0+22000] | 0x2) (`jal` at 0x2c48).
  Calls `mutex_spinlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2c58).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=[a0+22000], a3=?, a6=([a0+22000] | 0x2) (`jal` at 0x2d64).
  The `beq` at 0x209c is taken when a1 == 0 and falls through when a1 != 0.
  The `beq` at 0x20a4 is taken when a2(=a1) == v1(=0x1) and falls through when a2(=a1) != v1(=0x1).
  The `bne` at 0x20ac is taken when a2(=a1) != a3(=0x2) and falls through when a2(=a1) == a3(=0x2).
  The `beq` at 0x20b8 is taken when a4(=[a0+298]:2) == at(=0x3) and falls through when a4(=[a0+298]:2) != at(=0x3).
  The `beq` at 0x20d4 is taken when v1(=[a0+22304]) == 0 and falls through when v1(=[a0+22304]) != 0.
  The `beq` at 0x20f4 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x2100 is taken when at(=[a0+22304]) == 0 and falls through when at(=[a0+22304]) != 0.
  The `beq` at 0x211c is taken when v1(=[a0+298]:2) == a3(=0x3) and falls through when v1(=[a0+298]:2) != a3(=0x3).
  The `beq` at 0x2138 is taken when a4(=[a0+22304]) == 0 and falls through when a4(=[a0+22304]) != 0.
  The `beq` at 0x214c is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x2158 is taken when a3(=[a0+22304]) == 0 and falls through when a3(=[a0+22304]) != 0.
  The `beq` at 0x2170 is taken when a4(=[a0+298]:2) == at(=0x3) and falls through when a4(=[a0+298]:2) != at(=0x3).
  The `beq` at 0x218c is taken when v1(=[a0+22304]) == 0 and falls through when v1(=[a0+22304]) != 0.
  The `beq` at 0x21b0 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x21bc is taken when at(=[a0+22304]) == 0 and falls through when at(=[a0+22304]) != 0.
  The `beq` at 0x2238 is taken when at(=[a0+22304]) == 0 and falls through when at(=[a0+22304]) != 0.
  The `beq` at 0x2258 is taken when v1(=[a0+10280]:8) == 0 and falls through when v1(=[a0+10280]:8) != 0.
  The `beq` at 0x227c is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x22cc is taken when v0(=ret(odsy_i2cPLLRegWrite)) == 0 and falls through when v0(=ret(odsy_i2cPLLRegWrite)) != 0.
  The `bne` at 0x2368 is taken when a3(=[a0+22304]) != 0 and falls through when a3(=[a0+22304]) == 0.
  The `beq` at 0x2388 is taken when at(=[a0+10280]:8) == 0 and falls through when at(=[a0+10280]:8) != 0.
  The `beq` at 0x23a8 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `bne` at 0x23fc is taken when at(=[a0+22304]) != 0 and falls through when at(=[a0+22304]) == 0.
  The `beq` at 0x241c is taken when at(=[a0+10280]:8) == 0 and falls through when at(=[a0+10280]:8) != 0.
  The `beq` at 0x243c is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x2468 is taken when v1(=[a0+10280]:8) == 0 and falls through when v1(=[a0+10280]:8) != 0.
  The `beq` at 0x2488 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x24b4 is taken when a4(=[a0+10280]:8) == 0 and falls through when a4(=[a0+10280]:8) != 0.
  The `beq` at 0x24d4 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x2528 is taken when v0(=[a0+10280]:8) == 0 and falls through when v0(=[a0+10280]:8) != 0.
  The `beq` at 0x2548 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x2598 is taken when v0(=ret(odsy_i2cPLLRegWrite)) == 0 and falls through when v0(=ret(odsy_i2cPLLRegWrite)) != 0.
  The `beq` at 0x25e0 is taken when 0 >= a5(?) (unsigned) and falls through when 0 < a5(?) (unsigned).
  The `beq` at 0x2668 is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `beq` at 0x270c is taken when v0(=ret(odsy_i2cPLLRegWrite)) == 0 and falls through when v0(=ret(odsy_i2cPLLRegWrite)) != 0.
  The `beq` at 0x27b8 is taken when 0 >= a5(?) (unsigned) and falls through when 0 < a5(?) (unsigned).
  The `beq` at 0x2840 is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `beq` at 0x28cc is taken when 0 >= a5(?) (unsigned) and falls through when 0 < a5(?) (unsigned).
  The `beq` at 0x2954 is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `beq` at 0x2a00 is taken when 0 >= a5(?) (unsigned) and falls through when 0 < a5(?) (unsigned).
  The `beq` at 0x2a90 is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `beq` at 0x2b5c is taken when 0 >= a5(?) (unsigned) and falls through when 0 < a5(?) (unsigned).
  The `beq` at 0x2bec is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `beq` at 0x2c78 is taken when 0 >= a5(?) (unsigned) and falls through when 0 < a5(?) (unsigned).
  The `beq` at 0x2d08 is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `jr` at 0x210c returns with v0 = one of -0x1, 0x0.

- `odsy_copyin_frame_line_tables` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`, 0x2d74, 252 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x8 into `a0` (`lwu` at 0x2d8c).
  Loads 4 bytes from a0 (arg0 at entry) +0x8 into `a2` (`lw` at 0x2db0).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `a0` (`ld` at 0x2db8, 0x2e24, 0x2e60).
  Loads 4 bytes from a0 (arg0 at entry) +0x18 into `a0` (`lwu` at 0x2de4).
  Stores 8 bytes from `s0` to a0 (arg0 at entry) +0x0 (`sd` at 0x2df0).
  Loads 4 bytes from a0 (arg0 at entry) +0x18 into `a2` (`lw` at 0x2e00).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a0` (`ld` at 0x2e08).
  Stores 8 bytes from `s0` to a0 (arg0 at entry) +0x10 (`sd` at 0x2e44).
  Calls `kern_calloc` via direct with a0=[a0+8], a1=0x2, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2d88).
  Calls `copyin` via direct with a0=[a0]:8, a1=ret(kern_calloc), a2=([a0+8] + [a0+8]), a3=? (`jal` at 0x2dbc).
  Calls `kern_free` via direct with a0=ret(kern_calloc), a1=?, a2=a0 at entry (arg0), a3=? (`jal` at 0x2dcc).
  Calls `kern_calloc` via direct with a0=[a0+24], a1=0x2, a2=a0 at entry (arg0), a3=? (`jal` at 0x2dec).
  Calls `copyin` via direct with a0=[a0+16]:8, a1=ret(kern_calloc), a2=([a0+24] + [a0+24]), a3=? (`jal` at 0x2e0c).
  Calls `kern_free` via direct with a0=[a0]:8, a1=?, a2=?, a3=? (`jal` at 0x2e20).
  Calls `kern_free` via direct with a0=ret(kern_calloc), a1=?, a2=?, a3=? (`jal` at 0x2e28).
  Calls `kern_free` via direct with a0=[a0]:8, a1=?, a2=?, a3=? (`jal` at 0x2e5c).
  The `bne` at 0x2d94 is taken when v0(=ret(kern_calloc)) != 0 and falls through when v0(=ret(kern_calloc)) == 0.
  The `beq` at 0x2dc4 is taken when v0(=ret(copyin)) == 0 and falls through when v0(=ret(copyin)) != 0.
  The `beq` at 0x2df4 is taken when v0(=ret(kern_calloc)) == 0 and falls through when v0(=ret(kern_calloc)) != 0.
  The `beq` at 0x2e14 is taken when v0(=ret(copyin)) == 0 and falls through when v0(=ret(copyin)) != 0.
  The `jr` at 0x2da4 returns with v0 = one of 0x0, 0xc, 0xe.

- `setDACreg` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`, 0x2e70, 108 bytes) Inferred.
  Stores 1 byte from `at` to a0 (arg0 at entry) +0x20 (`sb` at 0x2e74).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=a0 at entry (arg0), a1=0x5, a2=?, a3=a3 at entry (arg3), a5=a2 at entry (arg2) (`jal` at 0x2ea4).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=a0 at entry (arg0), a1=0x4, a2=?, a3=a3 at entry (arg3) (`jal` at 0x2ecc).
  The `beq` at 0x2e88 is taken when a1 == 0 and falls through when a1 != 0.
  The `beq` at 0x2eb0 is taken when v0(=ret(odsy_i2cPLLRegWrite)) == 0 and falls through when v0(=ret(odsy_i2cPLLRegWrite)) != 0.
  The `jr` at 0x2ebc returns with v0 = ret(odsy_i2cPLLRegWrite).

- `odsy_initDCD2DAC` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`, 0x2edc, 456 bytes) Inferred.
  Stores 1 byte from `at` to a1 (arg1 at entry) +0x20 (`sb` at 0x2f00).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=a1 at entry (arg1), a1=0x3, a2=0x0, a3=a3 at entry (arg3) (`jal` at 0x2efc).
  Calls `setDACreg` via direct with a0=a1 at entry (arg1), a1=0x1, a2=0x0, a3=0x0 (`jal` at 0x2f24).
  Calls `setDACreg` via direct with a0=a1 at entry (arg1), a1=0x1, a2=0x3, a3=0x9 (`jal` at 0x2f38).
  Calls `setDACreg` via direct with a0=a1 at entry (arg1), a1=0x0, a2=0x3, a3=0x8 (`jal` at 0x2f4c).
  Calls `setDACreg` via direct with a0=a1 at entry (arg1), a1=0x0, a2=0x3, a3=0x9 (`jal` at 0x2f60).
  Calls `setDACreg` via direct with a0=a1 at entry (arg1), a1=0x0, a2=0x3, a3=0x29 (`jal` at 0x2f74).
  Calls `setDACreg` via direct with a0=a1 at entry (arg1), a1=0x0, a2=0x3, a3=0x9 (`jal` at 0x2f88).
  Calls `setDACreg` via direct with a0=a1 at entry (arg1), a1=0x1, a2=0x0, a3=0x4 (`jal` at 0x2f9c).
  Calls `setDACreg` via direct with a0=a1 at entry (arg1), a1=0x1, a2=0x2, a3=0xff (`jal` at 0x2fb0).
  Calls `setDACreg` via direct with a0=a1 at entry (arg1), a1=0x1, a2=0x0, a3=0x5 (`jal` at 0x2fc4).
  Calls `setDACreg` via direct with a0=a1 at entry (arg1), a1=0x1, a2=0x2, a3=0x0 (`jal` at 0x2fd8).
  Calls `setDACreg` via direct with a0=a1 at entry (arg1), a1=0x1, a2=0x0, a3=0x6 (`jal` at 0x2fec).
  Calls `setDACreg` via direct with a0=a1 at entry (arg1), a1=0x1, a2=0x2, a3=0xec (`jal` at 0x3000).
  Calls `setDACreg` via direct with a0=a1 at entry (arg1), a1=0x1, a2=0x0, a3=0x7 (`jal` at 0x3014).
  Calls `setDACreg` via direct with a0=a1 at entry (arg1), a1=0x1, a2=0x2, a3=0x41 (`jal` at 0x3028).
  Calls `setDACreg` via direct with a0=a1 at entry (arg1), a1=0x1, a2=0x0, a3=0x0 (`jal` at 0x3040).
  Calls `setDACreg` via direct with a0=a1 at entry (arg1), a1=0x1, a2=0x1, a3=? (`jal` at 0x3058).
  Calls `setDACreg` via direct with a0=a1 at entry (arg1), a1=0x0, a2=0x1, a3=? (`jal` at 0x306c).
  Calls `setDACreg` via direct with a0=a1 at entry (arg1), a1=0x0, a2=0x1, a3=? (`jal` at 0x3080).
  The `beq` at 0x2f04 is taken when v0(=ret(odsy_i2cPLLRegWrite)) == 0 and falls through when v0(=ret(odsy_i2cPLLRegWrite)) != 0.
  The `bne` at 0x3090 is taken when s1(?) < 0x100 (signed) and falls through when s1(?) >= 0x100 (signed).
  The `jr` at 0x2f10 returns with v0 = ?.

- `odsy_reconfigDCD2FPLD` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`, 0x30a4, 152 bytes) Inferred.
  Stores 1 byte from `at` to a0 (arg0 at entry) +0x20 (`sb` at 0x30c4).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a0` (`ld` at 0x3130).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=a0 at entry (arg0), a1=0x3, a2=0x8, a3=a3 at entry (arg3) (`jal` at 0x30c0).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=a0 at entry (arg0), a1=0x1, a2=0x0, a3=? (`jal` at 0x30e0).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=a0 at entry (arg0), a1=0x2, a2=0x0, a3=? (`jal` at 0x30f8).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=a0 at entry (arg0), a1=0x3, a2=0x1, a3=? (`jal` at 0x3110).
  Calls `odsy_usdelay` via direct with a0=[a0+16]:8, a1=0x927c0, a2=?, a3=? (`jal` at 0x312c).
  The `beq` at 0x30c8 is taken when v0(=ret(odsy_i2cPLLRegWrite)) == 0 and falls through when v0(=ret(odsy_i2cPLLRegWrite)) != 0.
  The `bne` at 0x30e8 is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0 and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `bne` at 0x3100 is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0 and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `bne` at 0x3118 is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0 and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `jr` at 0x30d0 returns with v0 = ?.

- `odsy_LoadDCD2Regs` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`, 0x313c, 484 bytes) Inferred.
  Stores 1 byte from `at` to a1 (arg1 at entry) +0x20 (`sb` at 0x315c).
  Loads 1 byte from a0 (arg0 at entry) +0x117 into `a2` (`lbu` at 0x316c).
  Loads 1 byte from a0 (arg0 at entry) +0x11b into `a2` (`lbu` at 0x318c).
  Loads 1 byte from a0 (arg0 at entry) +0x11f into `a2` (`lbu` at 0x31a4).
  Loads 1 byte from a0 (arg0 at entry) +0x123 into `a2` (`lbu` at 0x31bc).
  Loads 1 byte from a0 (arg0 at entry) +0x127 into `a2` (`lbu` at 0x31d4).
  Loads 1 byte from a0 (arg0 at entry) +0x12b into `a2` (`lbu` at 0x31ec).
  Loads 1 byte from a0 (arg0 at entry) +0x12f into `a2` (`lbu` at 0x3204).
  Loads 1 byte from a0 (arg0 at entry) +0x133 into `a2` (`lbu` at 0x321c).
  Loads 8 bytes from a1 (arg1 at entry) +0x10 into `a0` (`ld` at 0x3234).
  Stores 1 byte from `a2` to a1 (arg1 at entry) +0x20 (`sb` at 0x3244).
  Loads 1 byte from a0 (arg0 at entry) +0xfb into `a2` (`lbu` at 0x3254).
  Loads 1 byte from a0 (arg0 at entry) +0xff into `a2` (`lbu` at 0x3264).
  Stores 1 byte from `a3` to a1 (arg1 at entry) +0x20 (`sb` at 0x3284).
  Loads 1 byte from a0 (arg0 at entry) +0x103 into `a2` (`lbu` at 0x3294).
  Loads 1 byte from a0 (arg0 at entry) +0x107 into `a2` (`lbu` at 0x32a4).
  Loads 1 byte from a0 (arg0 at entry) +0x10b into `a2` (`lbu` at 0x32bc).
  Loads 1 byte from a0 (arg0 at entry) +0x10f into `a2` (`lbu` at 0x32d4).
  Loads 1 byte from a0 (arg0 at entry) +0x113 into `a2` (`lbu` at 0x32ec).
  Loads 4 bytes from a0 (arg0 at entry) +0x110 into `a2` (`lw` at 0x3300).
  Calls `odsy_initDCD2DAC` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x3150).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=a1 at entry (arg1), a1=0x0, a2=[a0+279]:1, a3=? (`jal` at 0x3168).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=a1 at entry (arg1), a1=0x1, a2=[a0+283]:1, a3=? (`jal` at 0x3190).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=a1 at entry (arg1), a1=0x2, a2=[a0+287]:1, a3=? (`jal` at 0x31a8).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=a1 at entry (arg1), a1=0x3, a2=[a0+291]:1, a3=? (`jal` at 0x31c0).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=a1 at entry (arg1), a1=0x4, a2=[a0+295]:1, a3=? (`jal` at 0x31d8).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=a1 at entry (arg1), a1=0x5, a2=[a0+299]:1, a3=? (`jal` at 0x31f0).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=a1 at entry (arg1), a1=0x6, a2=[a0+303]:1, a3=? (`jal` at 0x3208).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=a1 at entry (arg1), a1=0x7, a2=[a0+307]:1, a3=? (`jal` at 0x3220).
  Calls `odsy_usdelay` via direct with a0=[a1+16]:8, a1=0x927c0, a2=?, a3=? (`jal` at 0x3238).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=a1 at entry (arg1), a1=0x5, a2=[a0+251]:1, a3=? (`jal` at 0x3250).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=a1 at entry (arg1), a1=0x6, a2=[a0+255]:1, a3=? (`jal` at 0x3268).
  Calls `odsy_reconfigDCD2FPLD` via direct with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jal` at 0x3278).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=a1 at entry (arg1), a1=0x0, a2=[a0+259]:1, a3=0x17 (`jal` at 0x3290).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=a1 at entry (arg1), a1=0x1, a2=[a0+263]:1, a3=? (`jal` at 0x32a8).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=a1 at entry (arg1), a1=0x2, a2=[a0+267]:1, a3=? (`jal` at 0x32c0).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=a1 at entry (arg1), a1=0x3, a2=[a0+271]:1, a3=? (`jal` at 0x32d8).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=a1 at entry (arg1), a1=0x4, a2=[a0+275]:1, a3=? (`jal` at 0x32f0).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=a1 at entry (arg1), a1=0x5, a2=?, a3=? (`jal` at 0x3310).
  The `beq` at 0x3170 is taken when v0(=ret(odsy_i2cPLLRegWrite)) == 0 and falls through when v0(=ret(odsy_i2cPLLRegWrite)) != 0.
  The `bne` at 0x3198 is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0 and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `bne` at 0x31b0 is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0 and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `bne` at 0x31c8 is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0 and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `bne` at 0x31e0 is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0 and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `bne` at 0x31f8 is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0 and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `bne` at 0x3210 is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0 and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `bne` at 0x3228 is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0 and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `bne` at 0x3258 is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0 and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `bne` at 0x3270 is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0 and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `bne` at 0x3298 is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0 and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `bne` at 0x32b0 is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0 and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `bne` at 0x32c8 is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0 and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `bne` at 0x32e0 is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0 and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `bne` at 0x32f8 is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0 and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `jr` at 0x3180 returns with v0 = ret(odsy_i2cPLLRegWrite).

- `odsyLoadTimingTable` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`, 0x3320, 6944 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `v0` (`ld` at 0x335c, 0x3648, 0x4700).
  Loads 4 bytes from a0 (arg0 at entry) +0x5720 into `at` (`lw` at 0x3360, 0x3504, 0x4734).
  Loads 4 bytes from a0 (arg0 at entry) +0x5720 into `a2` (`lw` at 0x3398, 0x3540, 0x3558).
  Loads 4 bytes from a1 (arg1 at entry) +0xd0 into `a3` (`lw` at 0x33b8).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `v1`: 5 such accesses, including `ld` at 0x33d0, 0x3434, 0x3780.
  Loads 4 bytes from [a0+736]:8 +0x233804 into `t0` (`lw` at 0x33e4).
  Stores 8 bytes from `a3` to [a0+736]:8 +0x400000: 13 such accesses, including `sd` at 0x33f0, 0x3bd0, 0x43b4.
  Loads 4 bytes from a1 (arg1 at entry) +0xd8 into `v1` (`lw` at 0x33fc).
  Loads 4 bytes from a1 (arg1 at entry) +0xd4 into `at` (`lw` at 0x3400).
  Stores 8 bytes from `at` to [a0+736]:8 +0x400000: 9 such accesses, including `sd` at 0x344c, 0x370c, 0x3798.
  Loads 4 bytes from a0 (arg0 at entry) +0x124 into `a3` (`lw` at 0x3450, 0x38f8).
  Stores 1 byte from `t1` to a0 (arg0 at entry) +0x56e8 (`sb` at 0x346c, 0x3650).
  Loads 4 bytes from a1 (arg1 at entry) +0x9c into `a1` (`lw` at 0x3470).
  Loads 4 bytes from a1 (arg1 at entry) +0x98 into `a7` (`lw` at 0x3474).
  Loads 4 bytes from a1 (arg1 at entry) +0x94 into `ra` (`lw` at 0x3478).
  Loads 4 bytes from a1 (arg1 at entry) +0x90 into `t3` (`lw` at 0x347c).
  Loads 4 bytes from a1 (arg1 at entry) +0x8c into `t2` (`lw` at 0x3480).
  Loads 4 bytes from a1 (arg1 at entry) +0x88 into `t1` (`lw` at 0x3484).
  Loads 4 bytes from a1 (arg1 at entry) +0x80 into `a5` (`lw` at 0x3488).
  Loads 4 bytes from a1 (arg1 at entry) +0x84 into `a4` (`lw` at 0x348c).
  Stores 4 bytes from `a4` to a0 (arg0 at entry) +0x28fc (`sw` at 0x3490).
  Loads 4 bytes from a1 (arg1 at entry) +0x88 into `a6` (`lw` at 0x3494).
  Stores 4 bytes from `a6` to a0 (arg0 at entry) +0x2900 (`sw` at 0x3498).
  Loads 4 bytes from a1 (arg1 at entry) +0x98 into `a3` (`lw` at 0x349c).
  Stores 4 bytes from `a3` to a0 (arg0 at entry) +0x2904 (`sw` at 0x34a0).
  Loads 4 bytes from a1 (arg1 at entry) +0xe8 into `a2` (`lw` at 0x34a4).
  Stores 4 bytes from `a2` to a0 (arg0 at entry) +0x2908 (`sw` at 0x34a8).
  Loads 4 bytes from a1 (arg1 at entry) +0xec into `a0` (`lw` at 0x34b0).
  Stores 4 bytes from `a0` to a0 (arg0 at entry) +0x290c (`sw` at 0x34b4).
  Loads 4 bytes from a1 (arg1 at entry) +0xf0 into `at` (`lw` at 0x34c4).
  Stores 4 bytes from `at` to a0 (arg0 at entry) +0x2910 (`sw` at 0x34d0).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `a2`: 17 such accesses, including `ld` at 0x34ec, 0x36e4, 0x3b70.
  Stores 8 bytes from `v1` to [a0+736]:8 +0x400000: 6 such accesses, including `sd` at 0x34fc, 0x3bec, 0x4398.
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `a0`: 16 such accesses, including `ld` at 0x3550, 0x361c, 0x3800.
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `a6` (`ld` at 0x3570).
  Stores 8 bytes from `a5` to [a0+736]:8 +0x400000 (`sd` at 0x3594).
  Stores 8 bytes from `a3` to table(0x400000) +0x0 (`sd` at 0x35ac).
  Loads 8 bytes from a0 (arg0 at entry) +0x2828 into `at` (`ld` at 0x35f8, 0x37d8).
  Loads 4 bytes from a1 (arg1 at entry) +0x7c into `a1` (`lw` at 0x365c).
  Loads 4 bytes from a1 (arg1 at entry) +0x74 into `ra` (`lw` at 0x3660).
  Loads 4 bytes from a1 (arg1 at entry) +0x70 into `t3` (`lw` at 0x3664).
  Loads 4 bytes from a1 (arg1 at entry) +0x6c into `t2` (`lw` at 0x3668).
  Loads 4 bytes from a1 (arg1 at entry) +0x68 into `t1` (`lw` at 0x366c).
  Loads 4 bytes from a1 (arg1 at entry) +0x64 into `a4` (`lw` at 0x3670).
  Loads 4 bytes from a1 (arg1 at entry) +0x78 into `a7` (`lw` at 0x3674).
  Loads 4 bytes from a1 (arg1 at entry) +0x60 into `a5` (`lw` at 0x3684).
  Loads 4 bytes from a0 (arg0 at entry) +0x55f0 into `a4`: 4 such accesses, including `lw` at 0x36bc, 0x3b3c, 0x4bf4.
  Loads 2 bytes from a0 (arg0 at entry) +0x2830 into `a5`: 4 such accesses, including `lhu` at 0x36c0, 0x3b40, 0x4bf8.
  Stores 4 bytes from `v1` to a0 (arg0 at entry) +0x55f0 (`sw` at 0x36ec).
  Loads 4 bytes from a0 (arg0 at entry) +0x55f0 into `at` (`lw` at 0x3710).
  Loads 2 bytes from a0 (arg0 at entry) +0x2830 into `a2` (`lhu` at 0x371c).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `a3`: 13 such accesses, including `ld` at 0x3738, 0x374c, 0x3c0c.
  Stores 4 bytes from `at` to a0 (arg0 at entry) +0x55f0: 4 such accesses, including `sw` at 0x373c, 0x3b64, 0x4c1c.
  Stores 8 bytes from `a2` to [a0+736]:8 +0x400000: 12 such accesses, including `sd` at 0x3748, 0x3764, 0x3c20.
  Loads 8 bytes from a0 (arg0 at entry) +0x2828 into `a2` (`ld` at 0x3754).
  Loads 4 bytes from a0 (arg0 at entry) +0x55f0 into `a3` (`lw` at 0x3768, 0x3c28).
  Stores 4 bytes from `a3` to a0 (arg0 at entry) +0x55f0 (`sw` at 0x3790, 0x3c40, 0x453c).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x2828: 4 such accesses, including `sd` at 0x379c, 0x3c24, 0x4cdc.
  Loads 4 bytes from a0 (arg0 at entry) +0x55f0 into `a5` (`lw` at 0x37a0, 0x4ce0, 0x4e18).
  Stores 4 bytes from `a4` to a0 (arg0 at entry) +0x55f0 (`sw` at 0x37b8, 0x4cfc, 0x4e34).
  Stores 8 bytes from `at` to ? (base unknown): 9 such accesses, including `sd` at 0x395c, 0x3b28, 0x3cb4.
  Loads 2 bytes from ? (base unknown) into `a7` (`lh` at 0x39a0, 0x3fdc).
  Loads 4 bytes from a0 (arg0 at entry) +0x55f0 into `a2`: 6 such accesses, including `lw` at 0x3b90, 0x3bf0, 0x4c48.
  Loads 2 bytes from a0 (arg0 at entry) +0x2830 into `a3` (`lhu` at 0x3b9c, 0x4c54, 0x4d8c).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `at`: 4 such accesses, including `ld` at 0x3bbc, 0x43e0, 0x4c74.
  Stores 4 bytes from `a2` to a0 (arg0 at entry) +0x55f0: 6 such accesses, including `sw` at 0x3bc8, 0x3bf8, 0x4c80.
  Loads 8 bytes from a0 (arg0 at entry) +0x2828 into `v1` (`ld` at 0x3bdc, 0x4c94, 0x4dcc).
  Loads 2 bytes from ? (base unknown) into `a6` (`lh` at 0x3cf8, 0x42a4).
  Loads 4 bytes from a1 (arg1 at entry) +0x8 into `v1` (`lw` at 0x3d98).
  Loads 8 bytes from a1 (arg1 at entry) +0x0 into `at` (`ld` at 0x3da0).
  Stores 8 bytes from `a2` to ? (base unknown) (`sd` at 0x3ec0, 0x3f08, 0x4a24).
  Loads 4 bytes from a1 (arg1 at entry) +0x18 into `v1` (`lw` at 0x4090).
  Loads 8 bytes from a1 (arg1 at entry) +0x10 into `v1` (`ld` at 0x40d8).
  Stores 8 bytes from `a3` to ? (base unknown) (`sd` at 0x4180, 0x41cc, 0x47d0).
  Loads 4 bytes from a1 (arg1 at entry) +0x1c into `v1` (`lw` at 0x4368).
  Stores 4 bytes from `v1` to a0 (arg0 at entry) +0x5690 (`sw` at 0x4370).
  Loads 4 bytes from a1 (arg1 at entry) +0x20 into `a3` (`lwu` at 0x439c).
  Loads 4 bytes from a1 (arg1 at entry) +0x24 into `a3` (`lw` at 0x43b8).
  Loads 4 bytes from a0 (arg0 at entry) +0x5694 into `v1` (`lw` at 0x43c4).
  Stores 4 bytes from `a3` to a0 (arg0 at entry) +0x5694 (`sw` at 0x43d0).
  Loads 4 bytes from a1 (arg1 at entry) +0xc8 into `a2` (`lw` at 0x43f4).
  Loads 2 bytes from a0 (arg0 at entry) +0x12a into `a2` (`lhu` at 0x4404).
  Loads 4 bytes from a1 (arg1 at entry) +0xb0 into `v1` (`lwu` at 0x4418).
  Stores 2 bytes from `zero` to a0 (arg0 at entry) +0x12e (`sh` at 0x4438).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `ra` (`ld` at 0x4444).
  Loads 4 bytes from a1 (arg1 at entry) +0xb4 into `t9` (`lwu` at 0x4448).
  Stores 8 bytes from `t9` to [a0+736]:8 +0x400000 (`sd` at 0x4460).
  Loads 4 bytes from a1 (arg1 at entry) +0xc8 into `t8` (`lw` at 0x4464).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `t9` (`ld` at 0x446c).
  Stores 8 bytes from `t8` to [a0+736]:8 +0x400000 (`sd` at 0x4488).
  Loads 2 bytes from a0 (arg0 at entry) +0x12e into `t3` (`lhu` at 0x448c).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `t8` (`ld` at 0x4490).
  Stores 8 bytes from `t3` to [a0+736]:8 +0x400000 (`sd` at 0x44ac).
  Loads 4 bytes from a1 (arg1 at entry) +0xc8 into `t2` (`lw` at 0x44b0).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `t3` (`ld` at 0x44b8).
  Stores 8 bytes from `t2` to [a0+736]:8 +0x400000 (`sd` at 0x44d4).
  Loads 4 bytes from a1 (arg1 at entry) +0xc8 into `t1` (`lw` at 0x44d8).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `t2` (`ld` at 0x44e0).
  Stores 8 bytes from `t1` to [a0+736]:8 +0x400000 (`sd` at 0x44fc).
  Loads 4 bytes from a0 (arg0 at entry) +0x55f0 into `a6` (`lw` at 0x4500).
  Loads 2 bytes from a0 (arg0 at entry) +0x12e into `a7` (`lhu` at 0x4508).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `a1` (`ld` at 0x4528).
  Stores 8 bytes from `a0` to [a0+736]:8 +0x400000 (`sd` at 0x4548).
  Loads 4 bytes from a1 (arg1 at entry) +0xa0 into `a3` (`lwu` at 0x456c).
  Loads 4 bytes from a1 (arg1 at entry) +0xa4 into `a2` (`lwu` at 0x458c).
  Loads 4 bytes from a1 (arg1 at entry) +0xa8 into `a3` (`lwu` at 0x45a8).
  Loads 4 bytes from a1 (arg1 at entry) +0x28 into `a2` (`lwu` at 0x45c4).
  Loads 4 bytes from a1 (arg1 at entry) +0x2c into `a3` (`lwu` at 0x45e0).
  Loads 4 bytes from a1 (arg1 at entry) +0x30 into `a2` (`lwu` at 0x45fc).
  Loads 4 bytes from a1 (arg1 at entry) +0x34 into `a3` (`lwu` at 0x4618).
  Loads 4 bytes from a1 (arg1 at entry) +0x38 into `a2` (`lwu` at 0x4634).
  Loads 4 bytes from a1 (arg1 at entry) +0x3c into `a3` (`lwu` at 0x4650).
  Loads 4 bytes from a1 (arg1 at entry) +0x40 into `a2` (`lwu` at 0x466c).
  Loads 4 bytes from a1 (arg1 at entry) +0x44 into `a3` (`lwu` at 0x4688).
  Loads 4 bytes from a1 (arg1 at entry) +0x48 into `a2` (`lwu` at 0x46a4).
  Loads 4 bytes from a1 (arg1 at entry) +0x4c into `a3` (`lwu` at 0x46c0).
  Loads 4 bytes from a1 (arg1 at entry) +0x50 into `a2` (`lwu` at 0x46dc).
  Loads 4 bytes from a1 (arg1 at entry) +0x54 into `at` (`lwu` at 0x46f8).
  Loads 4 bytes from a0 (arg0 at entry) +0x5720 into `a3` (`lw` at 0x4714, 0x4778).
  Loads 4 bytes from a1 (arg1 at entry) +0xdc into `a4` (`lw` at 0x4728).
  Loads 4 bytes from a1 (arg1 at entry) +0x58 into `at` (`lwu` at 0x4758).
  Loads 2 bytes from a0 (arg0 at entry) +0x12a into `v1` (`lhu` at 0x4784).
  Stores 8 bytes from `v1` to ? (base unknown) (`sd` at 0x4948).
  Loads 4 bytes from a1 (arg1 at entry) +0xb0 into `at` (`lw` at 0x4a2c).
  Stores 2 bytes from `a2` to a0 (arg0 at entry) +0x2ce (`sh` at 0x4a60).
  Stores 2 bytes from `a3` to a0 (arg0 at entry) +0x12e (`sh` at 0x4a68).
  Loads 4 bytes from a1 (arg1 at entry) +0xb0 into `v1` (`lw` at 0x4a6c).
  Stores 2 bytes from `v1` to a0 (arg0 at entry) +0x2ca (`sh` at 0x4a74).
  Loads 4 bytes from a0 (arg0 at entry) +0x124 into `v1` (`lw` at 0x4a78).
  Loads 4 bytes from a0 (arg0 at entry) +0x124 into `a2` (`lw` at 0x4a8c).
  Loads 1 byte from a1 (arg1 at entry) +0xeb into `a2` (`lbu` at 0x4aa4).
  Loads 1 byte from a1 (arg1 at entry) +0xef into `a2` (`lbu` at 0x4ab8).
  Loads 1 byte from a1 (arg1 at entry) +0xf3 into `a2` (`lbu` at 0x4acc).
  Loads 8 bytes from a0 (arg0 at entry) +0x2828 into `a3` (`ld` at 0x4ae4, 0x4b90).
  Loads 1 byte from a1 (arg1 at entry) +0xe3 into `a2` (`lbu` at 0x4b48).
  Loads 4 bytes from a1 (arg1 at entry) +0x78 into `a2` (`lw` at 0x4b50).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0x0, a2=?, a3=? (`jal` at 0x3380).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=a0+22216, a1=?, a2=?, a3=? (`jal` at 0x3524).
  Calls `odsy_usdelay` via direct with a0=a0 at entry (arg0), a1=0x186a0, a2=?, a3=? (`jal` at 0x3538).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0xd, a2=?, a3=? (`jal` at 0x354c).
  Calls `bzero` via direct with a0=sp-4976, a1=0x200, a2=?, a3=0x3920400100000001, a4=table(0x400000), a6=[a0+736]:8+0x400000, a7=0x39c0000100000000 (`jal` at 0x35a8).
  Calls `bzero` via direct with a0=sp-4464, a1=0x1000, a2=?, a3=? (`jal` at 0x35b4).
  Calls `mutex_spinlock` via direct with a0=a0+10272, a1=?, a2=[a0+22304], a3=? (`jal` at 0x35f0).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0x360c).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x3618).
  Calls `vsema` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3628).
  Calls `psema` via direct with a0=a0+10256, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x363c).
  Calls `vsema` via direct with a0=a0+10256, a1=a0+10256, a2=?, a3=? (`jal` at 0x3698).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x36a4).
  Calls `mutex_spinlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x36b4).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a5=([a0+22000] | 0x2) (`jal` at 0x37b4).
  Calls `mutex_spinlock` via direct with a0=a0+10272, a1=?, a2=[a0+736]:8+0x400000, a3=?, a6=one of 0x0, 0x5, a7=one of 0x1, 0x4 (`jal` at 0x37d0).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0x37f0).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x37fc).
  Calls `vsema` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x380c).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3830).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=?, a1=0x2, a2=?, a3=? (`jal` at 0x384c).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=?, a1=0x3, a2=?, a3=? (`jal` at 0x3868).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3888).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x38a8).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x38c8).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x38e8).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=?, a1=0x8, a2=0x5a, a3=[a0+292] (`jal` at 0x390c).
  Calls `psema` via direct with a0=a0+10256, a1=0x19, a2=[a0+22304], a3=? (`jal` at 0x3920).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0x0, a2=?, a3=? (`jal` at 0x3a94).
  Calls `vsema` via direct with a0=a0+10256, a1=?, a2=?, a3=? (`jal` at 0x3ac8).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3ad4).
  Calls `mutex_spinlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3b34).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a4=-0x2 (`jal` at 0x3c3c).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0x0, a2=?, a3=? (`jal` at 0x3c54).
  Calls `odsy_poll_dfifo_level` via direct with a0=?, a1=0x0, a2=?, a3=? (`jal` at 0x3df0).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0x0, a2=?, a3=0x800 (`jal` at 0x3e28).
  Calls `odsy_poll_dfifo_level` via direct with a0=?, a1=0x0, a2=?, a3=? (`jal` at 0x3f1c).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0x0, a2=?, a3=? (`jal` at 0x40f8).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0xf, a2=?, a3=? (`jal` at 0x4124).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0x0, a2=?, a3=? (`jal` at 0x41e4).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0x3, a2=?, a3=? (`jal` at 0x4358).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0x1, a2=0x3960400100000000, a3=?, a4=0x400000, a5=0xffffffff (`jal` at 0x4550).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0xf, a2=?, a3=? (`jal` at 0x4740).
  Calls `odsy_poll_dfifo_level` via direct with a0=?, a1=0x0, a2=?, a3=? (`jal` at 0x47d8).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0x0, a2=?, a3=? (`jal` at 0x4804).
  Calls `odsy_poll_dfifo_level` via direct with a0=?, a1=0x0, a2=?, a3=? (`jal` at 0x4960).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0xf, a2=?, a3=? (`jal` at 0x4998).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=?, a1=0x1, a2=[a1+235]:1, a3=?, a4=[a1+220] (`jal` at 0x4aa0).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=?, a1=0x2, a2=[a1+239]:1, a3=? (`jal` at 0x4ab4).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=?, a1=0x6, a2=[a1+243]:1, a3=? (`jal` at 0x4ac8).
  Calls `mutex_spinlock` via direct with a0=a0+10272, a1=?, a2=?, a3=[a0+22304] (`jal` at 0x4adc).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=[a0+10280]:8 (`jal` at 0x4afc).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x4b08).
  Calls `vsema` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x4b18).
  Calls `psema` via direct with a0=a0+10256, a1=0x19, a2=?, a3=? (`jal` at 0x4b2c).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=?, a1=0x0, a2=[a1+227]:1, a3=?, a4=[a1+220] (`jal` at 0x4b44).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=?, a1=0x7, a2=?, a3=? (`jal` at 0x4b5c).
  Calls `vsema` via direct with a0=a0+10256, a1=?, a2=?, a3=[a0+10280]:8 (`jal` at 0x4b6c).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x4b78).
  Calls `mutex_spinlock` via direct with a0=a0+10272, a1=?, a2=0x39f3000100000000, a3=[a0+22304] (`jal` at 0x4b88).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=[a0+10280]:8 (`jal` at 0x4ba8).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x4bb4).
  Calls `vsema` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x4bc4).
  Calls `odsy_LoadDCD2Regs` via direct with a0=a1 at entry (arg1), a1=?, a2=0x3, a3=? (`jal` at 0x4bdc).
  Calls `mutex_spinlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x4bec).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a5=([a0+22000] | 0x2) (`jal` at 0x4cf8).
  Calls `vsema` via direct with a0=a0+10256, a1=?, a2=?, a3=[a0+10280]:8 (`jal` at 0x4d08).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x4d14).
  Calls `mutex_spinlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x4d24).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a5=([a0+22000] | 0x2) (`jal` at 0x4e30).
  The `beq` at 0x3374 is taken when at(=[a0+22304]) == 0 and falls through when at(=[a0+22304]) != 0.
  The `beq` at 0x3390 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x339c is taken when a2(=[a0+22304]) == 0 and falls through when a2(=[a0+22304]) != 0.
  The `blez` at 0x3464 is taken when a3(=[a0+292]) <= 0 (signed) and falls through when a3(=[a0+292]) > 0 (signed).
  The `beq` at 0x3510 is taken when at(=[a0+22304]) == 0 and falls through when at(=[a0+22304]) != 0.
  The `beq` at 0x352c is taken when v0(=ret(odsy_i2cPLLRegWrite)) == 0 and falls through when v0(=ret(odsy_i2cPLLRegWrite)) != 0.
  The `beq` at 0x3544 is taken when a2(=[a0+22304]) == 0 and falls through when a2(=[a0+22304]) != 0.
  The `bnel` at 0x3554 is taken when v0(=ret(odsy_poll_dfifo_level)) != 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) == 0.
  The `beq` at 0x35fc is taken when at(=[a0+10280]:8) == 0 and falls through when at(=[a0+10280]:8) != 0.
  The `beq` at 0x3620 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x36d4 is taken when 0 >= a5(?) (unsigned) and falls through when 0 < a5(?) (unsigned).
  The `beq` at 0x3760 is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `beq` at 0x37e4 is taken when at(=[a0+10280]:8) == 0 and falls through when at(=[a0+10280]:8) != 0.
  The `beq` at 0x3804 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `bne` at 0x3838 is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0 and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `bne` at 0x3854 is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0 and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `bne` at 0x3870 is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0 and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `bne` at 0x3890 is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0 and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `bne` at 0x38b0 is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0 and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `bne` at 0x38d0 is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0 and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `bne` at 0x38f0 is taken when v0(=ret(odsy_i2cPLLRegWrite)) != 0 and falls through when v0(=ret(odsy_i2cPLLRegWrite)) == 0.
  The `bgtz` at 0x38fc is taken when a3(=[a0+292]) > 0 (signed) and falls through when a3(=[a0+292]) <= 0 (signed).
  The `blez` at 0x3960 is taken when a6(?) <= 0 (signed) and falls through when a6(?) > 0 (signed).
  The `beq` at 0x3984 is taken when a2(?) == 0 and falls through when a2(?) != 0.
  The `beq` at 0x399c is taken when (a4(?) & 0x3) == 0 and falls through when (a4(?) & 0x3) != 0.
  The `beq` at 0x39a4 is taken when v0(?) == t2(=0x1) and falls through when v0(?) != t2(=0x1).
  The `bne` at 0x39ac is taken when v0(?) != t3(=0x2) and falls through when v0(?) == t3(=0x2).
  The `beq` at 0x39e8 is taken when (a4(?) & 0x1) == 0 and falls through when (a4(?) & 0x1) != 0.
  The `beq` at 0x3a08 is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `beq` at 0x3a14 is taken when a3(?) == 0 and falls through when a3(?) != 0.
  The `bne` at 0x3a20 is taken when v1(?) != 0 and falls through when v1(?) == 0.
  The `beq` at 0x3a44 is taken when a2(?) == 0 and falls through when a2(?) != 0.
  The `bne` at 0x3a50 is taken when at(?) != 0 and falls through when at(?) == 0.
  The `beq` at 0x3a5c is taken when v0(?) == v1(=0x3) and falls through when v0(?) != v1(=0x3).
  The `beq` at 0x3a64 is taken when v0(?) == 0 and falls through when v0(?) != 0.
  The `beq` at 0x3a6c is taken when v0(?) == t2(=0x1) and falls through when v0(?) != t2(=0x1).
  The `beq` at 0x3a74 is taken when v0(?) == t3(=0x2) and falls through when v0(?) != t3(=0x2).
  The `bne` at 0x3ab8 is taken when v0(=ret(odsy_poll_dfifo_level)) != 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) == 0.
  The `beq` at 0x3aec is taken when (a4(?) & 0x3) == 0 and falls through when (a4(?) & 0x3) != 0.
  The `beq` at 0x3af4 is taken when v0(?) == t2(=0x1) and falls through when v0(?) != t2(=0x1).
  The `beq` at 0x3afc is taken when v0(?) == t3(=0x2) and falls through when v0(?) != t3(=0x2).
  The `beq` at 0x3b54 is taken when 0 >= a5(?) (unsigned) and falls through when 0 < a5(?) (unsigned).
  The `beq` at 0x3be8 is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `blez` at 0x3cc8 is taken when a2(?) <= 0 (signed) and falls through when a2(?) > 0 (signed).
  The `beq` at 0x3cec is taken when a3(?) == 0 and falls through when a3(?) != 0.
  The `beq` at 0x3cf4 is taken when v0(?) == 0 and falls through when v0(?) != 0.
  The `beq` at 0x3cfc is taken when v0(?) == t2(=0x1) and falls through when v0(?) != t2(=0x1).
  The `bne` at 0x3d04 is taken when v0(?) != t3(=0x2) and falls through when v0(?) == t3(=0x2).
  The `beq` at 0x3d44 is taken when (a4(?) & 0x1) == 0 and falls through when (a4(?) & 0x1) != 0.
  The `beq` at 0x3d64 is taken when a2(?) == 0 and falls through when a2(?) != 0.
  The `beq` at 0x3d70 is taken when at(?) == 0 and falls through when at(?) != 0.
  The `bne` at 0x3d7c is taken when a2(?) != 0 and falls through when a2(?) == 0.
  The `beq` at 0x3d84 is taken when a3(?) == t3(=0x2) and falls through when a3(?) != t3(=0x2).
  The `bne` at 0x3d90 is taken when at(?) != 0 and falls through when at(?) == 0.
  The `blez` at 0x3dcc is taken when v1(=[a1+8]) <= 0 (signed) and falls through when v1(=[a1+8]) > 0 (signed).
  The `bne` at 0x3e10 is taken when v0(=ret(odsy_poll_dfifo_level)) != 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) == 0.
  The `beq` at 0x3ec8 is taken when (a4(?) & 0x3) == 0 and falls through when (a4(?) & 0x3) != 0.
  The `beq` at 0x3ed4 is taken when at(?) == t2(=0x1) and falls through when at(?) != t2(=0x1).
  The `beq` at 0x3edc is taken when v1(?) == t3(=0x2) and falls through when v1(?) != t3(=0x2).
  The `blez` at 0x3fa0 is taken when a2(?) <= 0 (signed) and falls through when a2(?) > 0 (signed).
  The `beq` at 0x3fc8 is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `beq` at 0x3fd8 is taken when (v0(?) & 0x3) == 0 and falls through when (v0(?) & 0x3) != 0.
  The `beq` at 0x3fe0 is taken when v0(?) == t2(=0x1) and falls through when v0(?) != t2(=0x1).
  The `bne` at 0x3fe8 is taken when v0(?) != t3(=0x2) and falls through when v0(?) == t3(=0x2).
  The `beq` at 0x402c is taken when (v1(?) & 0x1) == 0 and falls through when (v1(?) & 0x1) != 0.
  The `beq` at 0x4050 is taken when a2(?) == 0 and falls through when a2(?) != 0.
  The `beq` at 0x405c is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `bne` at 0x4068 is taken when a3(?) != 0 and falls through when a3(?) == 0.
  The `beq` at 0x4094 is taken when at(?) == 0 and falls through when at(?) != 0.
  The `bne` at 0x40a0 is taken when a3(?) != 0 and falls through when a3(?) == 0.
  The `beq` at 0x40b0 is taken when at(?) == v1(=0x3) and falls through when at(?) != v1(=0x3).
  The `beq` at 0x40bc is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `beq` at 0x40c4 is taken when a2(?) == t2(=0x1) and falls through when a2(?) != t2(=0x1).
  The `beq` at 0x40cc is taken when a3(?) == t3(=0x2) and falls through when a3(?) != t3(=0x2).
  The `blez` at 0x40dc is taken when at(?) <= 0 (signed) and falls through when at(?) > 0 (signed).
  The `bne` at 0x4110 is taken when v0(=ret(odsy_poll_dfifo_level)) != 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) == 0.
  The `bne` at 0x4144 is taken when v0(=ret(odsy_poll_dfifo_level)) != 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) == 0.
  The `beq` at 0x4154 is taken when at(?) == v1(=0x3) and falls through when at(?) != v1(=0x3).
  The `beq` at 0x415c is taken when a2(?) == 0 and falls through when a2(?) != 0.
  The `beq` at 0x418c is taken when (at(?) & 0x3) == 0 and falls through when (at(?) & 0x3) != 0.
  The `beq` at 0x4198 is taken when v1(?) == t2(=0x1) and falls through when v1(?) != t2(=0x1).
  The `beq` at 0x41a0 is taken when a2(?) == t3(=0x2) and falls through when a2(?) != t3(=0x2).
  The `blez` at 0x4264 is taken when a2(?) <= 0 (signed) and falls through when a2(?) > 0 (signed).
  The `beq` at 0x428c is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `beq` at 0x42a0 is taken when (at(?) & 0x3) == 0 and falls through when (at(?) & 0x3) != 0.
  The `beq` at 0x42ac is taken when v1(?) == t2(=0x1) and falls through when v1(?) != t2(=0x1).
  The `bne` at 0x42b4 is taken when a2(?) != t3(=0x2) and falls through when a2(?) == t3(=0x2).
  The `beq` at 0x42fc is taken when (a3(?) & 0x1) == 0 and falls through when (a3(?) & 0x1) != 0.
  The `beq` at 0x4320 is taken when at(?) == 0 and falls through when at(?) != 0.
  The `beq` at 0x432c is taken when a3(?) == 0 and falls through when a3(?) != 0.
  The `bne` at 0x4338 is taken when v1(?) != 0 and falls through when v1(?) == 0.
  The `beq` at 0x4344 is taken when a2(?) == t3(=0x2) and falls through when a2(?) != t3(=0x2).
  The `bne` at 0x4350 is taken when a3(?) != 0 and falls through when a3(?) == 0.
  The `bne` at 0x4360 is taken when v0(=ret(odsy_poll_dfifo_level)) != 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) == 0.
  The `beq` at 0x43fc is taken when (a2(=[a1+200]) & 0x10) == 0 and falls through when (a2(=[a1+200]) & 0x10) != 0.
  The `beq` at 0x440c is taken when a2(=[a0+298]:2) == a3(=0x3) and falls through when a2(=[a0+298]:2) != a3(=0x3).
  The `bne` at 0x4558 is taken when v0(=ret(odsy_poll_dfifo_level)) != 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) == 0.
  The `beq` at 0x4718 is taken when a3(=[a0+22304]) == 0 and falls through when a3(=[a0+22304]) != 0.
  The `beq` at 0x472c is taken when a4(=[a1+220]) == v0(=-0x2) and falls through when a4(=[a1+220]) != v0(=-0x2).
  The `beq` at 0x4738 is taken when at(=[a0+22304]) == 0 and falls through when at(=[a0+22304]) != 0.
  The `bne` at 0x4748 is taken when v0(=ret(odsy_poll_dfifo_level)) != 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) == 0.
  The `beq` at 0x477c is taken when a3(=[a0+22304]) == 0 and falls through when a3(=[a0+22304]) != 0.
  The `beq` at 0x478c is taken when v1(=[a0+298]:2) == a2(=0x3) and falls through when v1(=[a0+298]:2) != a2(=0x3).
  The `bne` at 0x47f0 is taken when v0(=ret(odsy_poll_dfifo_level)) != 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) == 0.
  The `beq` at 0x4908 is taken when (a2(?) & 0x3) == 0 and falls through when (a2(?) & 0x3) != 0.
  The `beq` at 0x4914 is taken when a3(?) == t2(=0x1) and falls through when a3(?) != t2(=0x1).
  The `beq` at 0x491c is taken when at(?) == t3(=0x2) and falls through when at(?) != t3(=0x2).
  The `bne` at 0x49ac is taken when v0(=ret(odsy_poll_dfifo_level)) != 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) == 0.
  The `beq` at 0x49bc is taken when v1(?) == a2(=0x3) and falls through when v1(?) != a2(=0x3).
  The `beq` at 0x49c4 is taken when a3(?) == 0 and falls through when a3(?) != 0.
  The `blez` at 0x4a7c is taken when v1(=[a0+292]) <= 0 (signed) and falls through when v1(=[a0+292]) > 0 (signed).
  The `bne` at 0x4a84 is taken when a4(=[a1+220]) != v0(=-0x2) and falls through when a4(=[a1+220]) == v0(=-0x2).
  The `blez` at 0x4a90 is taken when a2(=[a0+292]) <= 0 (signed) and falls through when a2(=[a0+292]) > 0 (signed).
  The `beq` at 0x4af0 is taken when a3(=[a0+10280]:8) == 0 and falls through when a3(=[a0+10280]:8) != 0.
  The `beq` at 0x4b10 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x4b9c is taken when a3(=[a0+10280]:8) == 0 and falls through when a3(=[a0+10280]:8) != 0.
  The `beq` at 0x4bbc is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x4c0c is taken when 0 >= a5(?) (unsigned) and falls through when 0 < a5(?) (unsigned).
  The `beq` at 0x4c9c is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `beq` at 0x4d44 is taken when 0 >= a5(?) (unsigned) and falls through when 0 < a5(?) (unsigned).
  The `beq` at 0x4dd4 is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `jr` at 0x33ac returns with v0 = one of -0x1, 0x0.

- `gfP_OdsyBRDMGRloadTimingTable` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`, 0x4e40, 324 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `at` (`ld` at 0x4e48).
  Stores 4 bytes from `a3` to a3 (arg3 at entry) +0x0 (`sw` at 0x4e8c).
  Loads 8 bytes from ? (base unknown) into `v1` (`ld` at 0x4ea4).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `a3` (`ld` at 0x4ec0).
  Loads 4 bytes from [a0+32]:8 +0x50 into `a2` (`lw` at 0x4ec4).
  Stores 4 bytes from `a2` to [a0+32]:8 +0x50 (`sw` at 0x4ed8).
  Stores 4 bytes from `v0` to a3 (arg3 at entry) +0x0 (`sw` at 0x4edc).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `a5` (`ld` at 0x4ee4).
  Loads 4 bytes from [a0+32]:8 +0x50 into `a4` (`lw` at 0x4ee8).
  Stores 4 bytes from `a4` to [a0+32]:8 +0x50 (`sw` at 0x4ef0).
  Loads 4 bytes from a3 (arg3 at entry) +0x0 into `v0` (`lw` at 0x4f04).
  Stores 4 bytes from `ra` to a3 (arg3 at entry) +0x0 (`sw` at 0x4f24).
  Stores 4 bytes from `a2` to a3 (arg3 at entry) +0x0 (`sw` at 0x4f44, 0x4f74).
  Calls `copyin` via direct with a0=a2 at entry (arg2), a1=sp-384, a2=0x138, a3=a3 at entry (arg3) (`jal` at 0x4e68).
  Calls `odsy_copyin_frame_line_tables` via direct with a0=sp-384, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x4e78).
  Calls `RRM_CheckValidFault` via direct with a0=a0 at entry (arg0), a1=sym(.rodata), a2=?, a3=ret(odsy_copyin_frame_line_tables) (`jal` at 0x4eb0).
  Calls `odsyLoadTimingTable` via direct with a0=?, a1=sp-384, a2=[[a0+32]:8+80]+1, a3=[a0+32]:8 (`jal` at 0x4ed4).
  Calls `kern_free` via direct with a0=?, a1=?, a2=?, a3=?, a4=[[a0+32]:8+80]-1, a5=[a0+32]:8 (`jal` at 0x4ef4).
  Calls `kern_free` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x4efc).
  Calls `kern_free` via direct with a0=?, a1=?, a2=?, a3=a0 at entry (arg0) (`jal` at 0x4f10).
  Calls `kern_free` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x4f18).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x4f38).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=ret(odsy_copyin_frame_line_tables) (`jal` at 0x4f58).
  Calls `kern_free` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x4f60).
  Calls `kern_free` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x4f68).
  The `bne` at 0x4e70 is taken when v0(=ret(copyin)) != 0 and falls through when v0(=ret(copyin)) == 0.
  The `beq` at 0x4e84 is taken when v0(=ret(odsy_copyin_frame_line_tables)) == 0 and falls through when v0(=ret(odsy_copyin_frame_line_tables)) != 0.
  The `beq` at 0x4ea8 is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `bltz` at 0x4eb8 is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed) and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed).
  The `jr` at 0x4e98 returns with v0 = ?.

- `gfP_OdsyBRDMGRenableVTG` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`, 0x4f84, 1028 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `s0` (`ld` at 0x4f8c).
  Loads 4 bytes from [a0+32]:8 +0x5720 into `at` (`lw` at 0x4f94).
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `s2` (`ld` at 0x4fa8).
  Loads 4 bytes from [a0+32]:8 +0x5720 into `v1` (`lw` at 0x4fc4).
  Stores 4 bytes from `a2` to a3 (arg3 at entry) +0x0 (`sw` at 0x4fd4).
  Loads 4 bytes from [a0+32]:8 +0x5690 into `at` (`lw` at 0x4ff0).
  Stores 4 bytes from `a4` to [a0+32]:8 +0x5690 (`sw` at 0x4ff8).
  Stores 8 bytes from `s2` to [[a0+32]:8+736]:8 +0x400000 (`sd` at 0x5018, 0x5040).
  Loads 4 bytes from [a0+32]:8 +0x5694 into `a2` (`lw` at 0x501c).
  Stores 4 bytes from `a2` to [a0+32]:8 +0x5694 (`sw` at 0x5038).
  Loads 4 bytes from [a0+32]:8 +0x5720 into `a4` (`lw` at 0x5044).
  Stores 4 bytes from `zero` to a3 (arg3 at entry) +0x0 (`sw` at 0x5050).
  Loads 8 bytes from [a0+32]:8 +0x2828 into `v1` (`ld` at 0x506c, 0x5314).
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `a0` (`ld` at 0x5090, 0x511c).
  Loads 8 bytes from [a0+32]:8 +0x2828 into `a2` (`ld` at 0x50f4, 0x51d8).
  Loads 4 bytes from [a0+32]:8 +0x55f0 into `a3` (`lw` at 0x5140, 0x5274).
  Loads 2 bytes from [a0+32]:8 +0x2830 into `a5` (`lhu` at 0x5144, 0x5278).
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `a2` (`ld` at 0x5168, 0x52a8, 0x530c).
  Stores 4 bytes from `v1` to [a0+32]:8 +0x55f0 (`sw` at 0x5170).
  Stores 8 bytes from `at` to [[a0+32]:8+736]:8 +0x400000 (`sd` at 0x5190, 0x52c4).
  Loads 4 bytes from [a0+32]:8 +0x55f0 into `at` (`lw` at 0x5194, 0x51e8).
  Loads 2 bytes from [a0+32]:8 +0x2830 into `a2` (`lhu` at 0x51a0).
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `a4` (`ld` at 0x51bc, 0x51d0, 0x5344).
  Stores 4 bytes from `at` to [a0+32]:8 +0x55f0 (`sw` at 0x51c0, 0x5214, 0x529c).
  Stores 8 bytes from `a2` to [[a0+32]:8+736]:8 +0x400000: 4 such accesses, including `sd` at 0x51cc, 0x51e4, 0x521c.
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `a3` (`ld` at 0x5204).
  Loads 4 bytes from [a0+32]:8 +0x55f0 into `a1` (`lw` at 0x5220).
  Stores 8 bytes from `zero` to [a0+32]:8 +0x2828 (`sd` at 0x5224, 0x535c).
  Stores 4 bytes from `a0` to [a0+32]:8 +0x55f0 (`sw` at 0x5234).
  Loads 4 bytes from [a0+32]:8 +0x55f0 into `a2` (`lw` at 0x52c8, 0x5324).
  Loads 2 bytes from [a0+32]:8 +0x2830 into `a4` (`lhu` at 0x52d4).
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `at` (`ld` at 0x52f4).
  Stores 4 bytes from `a2` to [a0+32]:8 +0x55f0 (`sw` at 0x5300, 0x5330).
  Stores 8 bytes from `a4` to [[a0+32]:8+736]:8 +0x400000 (`sd` at 0x5308).
  Stores 8 bytes from `v1` to [[a0+32]:8+736]:8 +0x400000 (`sd` at 0x5320).
  Loads 4 bytes from [a0+32]:8 +0x55f0 into `a6` (`lw` at 0x5360).
  Stores 4 bytes from `a5` to [a0+32]:8 +0x55f0 (`sw` at 0x537c).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+32]:8+736]:8, a1=0xe, a2=?, a3=? (`jal` at 0x4fb0).
  Calls `mutex_spinlock` via direct with a0=[a0+32]:8+10272, a1=?, a2=?, a3=?, a4=-0x2 (`jal` at 0x5064).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0x5080).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+32]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x508c).
  Calls `vsema` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x509c).
  Calls `psema` via direct with a0=[a0+32]:8+10256, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x50b0).
  Calls `vsema` via direct with a0=[a0+32]:8+10256, a1=[a0+32]:8+10256, a2=?, a3=? (`jal` at 0x50c8).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x50d4).
  Calls `mutex_spinlock` via direct with a0=[a0+32]:8+10272, a1=?, a2=([[a0+32]:8+22164] | 0x20000), a3=?, a4=[[a0+32]:8+22304] (`jal` at 0x50ec).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=[[a0+32]:8+10280]:8, a3=?, a4=[a0+32]:8+10256 (`jal` at 0x510c).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+32]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x5118).
  Calls `vsema` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x5128).
  Calls `mutex_spinlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x5138).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0x523c).
  Calls `vsema` via direct with a0=[a0+32]:8+10256, a1=?, a2=[[a0+32]:8+10280]:8, a3=?, a4=[a0+32]:8+10256 (`jal` at 0x5250).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x525c).
  Calls `mutex_spinlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x526c).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=[[a0+32]:8+22000], a6=([[a0+32]:8+22000] | 0x2) (`jal` at 0x5378).
  The `beq` at 0x4fa4 is taken when at(=[[a0+32]:8+22304]) == 0 and falls through when at(=[[a0+32]:8+22304]) != 0.
  The `beq` at 0x4fbc is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x4fc8 is taken when v1(=[[a0+32]:8+22304]) == 0 and falls through when v1(=[[a0+32]:8+22304]) != 0.
  The `beq` at 0x5048 is taken when a4(=[[a0+32]:8+22304]) == 0 and falls through when a4(=[[a0+32]:8+22304]) != 0.
  The `beq` at 0x5070 is taken when v1(=[[a0+32]:8+10280]:8) == 0 and falls through when v1(=[[a0+32]:8+10280]:8) != 0.
  The `beq` at 0x5094 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x5100 is taken when a2(=[[a0+32]:8+10280]:8) == 0 and falls through when a2(=[[a0+32]:8+10280]:8) != 0.
  The `beq` at 0x5120 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x5158 is taken when 0 >= a5(?) (unsigned) and falls through when 0 < a5(?) (unsigned).
  The `beq` at 0x51e0 is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `beq` at 0x528c is taken when 0 >= a5(?) (unsigned) and falls through when 0 < a5(?) (unsigned).
  The `beq` at 0x531c is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `jr` at 0x4fe4 returns with v0 = one of 0x0, 0x5.

- `gfP_OdsyBRDMGRi2ccmd` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`, 0x5388, 156 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `v0` (`ld` at 0x5388).
  Stores 4 bytes from `v0` to a3 (arg3 at entry) +0x0 (`sw` at 0x53dc).
  Stores 4 bytes from `a4` to a3 (arg3 at entry) +0x0 (`sw` at 0x5414).
  Calls `copyin` via direct with a0=a2 at entry (arg2), a1=sp-128, a2=0x30, a3=a3 at entry (arg3) (`jal` at 0x53b4).
  Calls `odsy_i2c_cmd` via direct with a0=?, a1=sp-128, a2=a2 at entry (arg2), a3=? (`jal` at 0x53c8).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x5404).
  The `bne` at 0x53bc is taken when v0(=ret(copyin)) != 0 and falls through when v0(=ret(copyin)) == 0.
  The `bltz` at 0x53d0 is taken when v0(=ret(odsy_i2c_cmd)) < 0 (signed) and falls through when v0(=ret(odsy_i2c_cmd)) >= 0 (signed).
  The `jr` at 0x53e8 returns with v0 = ?.

- `gfP_OdsyBRDMGRSetDACGain` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`, 0x5424, 116 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `v0` (`ld` at 0x5424).
  Stores 4 bytes from `v0` to a3 (arg3 at entry) +0x0 (`sw` at 0x5460).
  Stores 4 bytes from `a2` to a3 (arg3 at entry) +0x0 (`sw` at 0x5488).
  Calls `copyin` via direct with a0=a2 at entry (arg2), a1=sp-64, a2=0x4, a3=a3 at entry (arg3) (`jal` at 0x5448).
  Calls `odsySetDACGain` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x5458).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x547c).
  The `bne` at 0x5450 is taken when v0(=ret(copyin)) != 0 and falls through when v0(=ret(copyin)) == 0.
  The `jr` at 0x546c returns with v0 = ?.

- `odsySetDACGain` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`, 0x5498, 984 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `v0` (`ld` at 0x54a0, 0x55a8).
  Loads 4 bytes from a0 (arg0 at entry) +0x5720 into `at` (`lw` at 0x54a4).
  Loads 4 bytes from a0 (arg0 at entry) +0x5720 into `a2` (`lw` at 0x54dc).
  Loads 4 bytes from table(0x233604) +0x0 into `v0` (`lw` at 0x550c).
  Stores 8 bytes from `a2` to table(0x400000) +0x0 (`sd` at 0x5534).
  Loads 4 bytes from a0 (arg0 at entry) +0x5720 into `v1` (`lw` at 0x5538).
  Loads 8 bytes from a0 (arg0 at entry) +0x2828 into `a3` (`ld` at 0x5558).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `a0` (`ld` at 0x557c, 0x55e4).
  Loads 8 bytes from a0 (arg0 at entry) +0x2828 into `v1` (`ld` at 0x55c0, 0x5800).
  Loads 4 bytes from a0 (arg0 at entry) +0x55f0 into `a4` (`lw` at 0x562c, 0x5760).
  Loads 2 bytes from a0 (arg0 at entry) +0x2830 into `a5` (`lhu` at 0x5630, 0x5764).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `a2` (`ld` at 0x5654, 0x5794, 0x57f8).
  Stores 4 bytes from `v1` to a0 (arg0 at entry) +0x55f0 (`sw` at 0x565c).
  Stores 8 bytes from `at` to [a0+736]:8 +0x400000 (`sd` at 0x567c, 0x5708, 0x57b0).
  Loads 4 bytes from a0 (arg0 at entry) +0x55f0 into `at` (`lw` at 0x5680).
  Loads 2 bytes from a0 (arg0 at entry) +0x2830 into `a2` (`lhu` at 0x568c).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `a3` (`ld` at 0x56a8, 0x56bc, 0x5830).
  Stores 4 bytes from `at` to a0 (arg0 at entry) +0x55f0 (`sw` at 0x56ac, 0x5788).
  Stores 8 bytes from `a2` to [a0+736]:8 +0x400000 (`sd` at 0x56b8, 0x56d4, 0x5844).
  Loads 8 bytes from a0 (arg0 at entry) +0x2828 into `a2` (`ld` at 0x56c4).
  Loads 4 bytes from a0 (arg0 at entry) +0x55f0 into `a3` (`lw` at 0x56d8, 0x584c).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `v1` (`ld` at 0x56f0).
  Stores 4 bytes from `a3` to a0 (arg0 at entry) +0x55f0 (`sw` at 0x5700, 0x5864).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x2828 (`sd` at 0x570c, 0x5848).
  Loads 4 bytes from a0 (arg0 at entry) +0x55f0 into `a5` (`lw` at 0x5710).
  Stores 4 bytes from `a4` to a0 (arg0 at entry) +0x55f0 (`sw` at 0x5728).
  Loads 4 bytes from a0 (arg0 at entry) +0x55f0 into `a2` (`lw` at 0x57b4, 0x5814).
  Loads 2 bytes from a0 (arg0 at entry) +0x2830 into `a3` (`lhu` at 0x57c0).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `at` (`ld` at 0x57e0).
  Stores 4 bytes from `a2` to a0 (arg0 at entry) +0x55f0 (`sw` at 0x57ec, 0x581c).
  Stores 8 bytes from `a3` to [a0+736]:8 +0x400000 (`sd` at 0x57f4).
  Stores 8 bytes from `v1` to [a0+736]:8 +0x400000 (`sd` at 0x5810).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0xe, a2=?, a3=? (`jal` at 0x54c4).
  Calls `mutex_spinlock` via direct with a0=a0+10272, a1=?, a2=[a0+22304], a3=? (`jal` at 0x5550).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=[a0+10280]:8 (`jal` at 0x556c).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x5578).
  Calls `vsema` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x5588).
  Calls `psema` via direct with a0=a0+10256, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x559c).
  Calls `mutex_spinlock` via direct with a0=a0+10272, a1=?, a2=?, a3=table(0x400000) (`jal` at 0x55b8).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=a0+10256, a3=? (`jal` at 0x55d4).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x55e0).
  Calls `vsema` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x55f0).
  Calls `vsema` via direct with a0=a0+10256, a1=a0+10256, a2=?, a3=[a0+10280]:8 (`jal` at 0x5608).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x5614).
  Calls `mutex_spinlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x5624).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a5=([a0+22000] | 0x2) (`jal` at 0x5724).
  Calls `vsema` via direct with a0=a0+10256, a1=?, a2=a0+10256, a3=? (`jal` at 0x573c).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x5748).
  Calls `mutex_spinlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x5758).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a4=-0x2 (`jal` at 0x5860).
  The `beq` at 0x54b8 is taken when at(=[a0+22304]) == 0 and falls through when at(=[a0+22304]) != 0.
  The `beq` at 0x54d4 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x54e0 is taken when a2(=[a0+22304]) == 0 and falls through when a2(=[a0+22304]) != 0.
  The `beq` at 0x5508 is taken when a3(=a1) == 0 and falls through when a3(=a1) != 0.
  The `beq` at 0x553c is taken when v1(=[a0+22304]) == 0 and falls through when v1(=[a0+22304]) != 0.
  The `beq` at 0x555c is taken when a3(=[a0+10280]:8) == 0 and falls through when a3(=[a0+10280]:8) != 0.
  The `beq` at 0x5580 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x55c8 is taken when v1(=[a0+10280]:8) == 0 and falls through when v1(=[a0+10280]:8) != 0.
  The `beq` at 0x55e8 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x5644 is taken when 0 >= a5(?) (unsigned) and falls through when 0 < a5(?) (unsigned).
  The `beq` at 0x56d0 is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `beq` at 0x5778 is taken when 0 >= a5(?) (unsigned) and falls through when 0 < a5(?) (unsigned).
  The `beq` at 0x580c is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `jr` at 0x54ec returns with v0 = one of -0x1, 0x0.

- `gf_OdsyValidateClip` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)`, 0x0, 1244 bytes) Inferred.
  Loads 8 bytes from a1 (arg1 at entry) +0x80 into `v1` (`ld` at 0x0).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `s1` (`ld` at 0xc).
  Loads 8 bytes from a1 (arg1 at entry) +0x78 into `a6` (`ld` at 0x10).
  Loads 8 bytes from a1 (arg1 at entry) +0x70 into `s0` (`ld` at 0x18).
  Loads 4 bytes from [a1+120]:8 +0x68 into `a3` (`lw` at 0x20).
  Loads 4 bytes from [a1+112]:8 +0x28 into `a4` (`lw` at 0x24).
  Loads 8 bytes from [a1+120]:8 +0x80 into `t0` (`ld` at 0x2c).
  Loads 4 bytes from [a1+120]:8 +0x78 into `a7` (`lw` at 0x30).
  Stores 4 bytes from `a3` to [a1+112]:8 +0x28 (`sw` at 0x40).
  Loads 4 bytes from [a1+112]:8 +0x2c into `at` (`lw` at 0x44).
  Loads 4 bytes from [a1+120]:8 +0x6c into `a5` (`lw` at 0x48).
  Loads 8 bytes from [a1+112]:8 +0x60 into `a4` (`ld` at 0x50).
  Stores 4 bytes from `a5` to [a1+112]:8 +0x2c (`sw` at 0x5c).
  Stores 4 bytes from `a3` to [[a1+112]:8+96]:8 +0x2b60 (`sw` at 0x60).
  Loads 8 bytes from [a1+112]:8 +0x60 into `a2` (`ld` at 0x64).
  Loads 4 bytes from [a1+112]:8 +0x2c into `a1` (`lw` at 0x68).
  Stores 4 bytes from `a1` to [[a1+112]:8+96]:8 +0x2b64 (`sw` at 0x6c).
  Loads 4 bytes from [a1+120]:8 +0x68 into `a0` (`lw` at 0x78, 0x144).
  Loads 4 bytes from [a1+120]:8 +0x6c into `a1` (`lw` at 0x7c).
  Stores 4 bytes from `a0` to [a1+112]:8 +0x48 (`sw` at 0x8c).
  Loads 4 bytes from [a1+128]:8 +0x68 into `at` (`lw` at 0x94).
  Loads 4 bytes from [a1+128]:8 +0x6c into `v1` (`lw` at 0xa0).
  Stores 4 bytes from `at` to [a1+112]:8 +0x4c (`sw` at 0xbc).
  Loads 4 bytes from ? (base unknown) into `at` (`lw` at 0xc8, 0x2fc, 0x328).
  Loads 4 bytes from ? (base unknown) into `a3` (`lw` at 0xd0, 0x304, 0x340).
  Stores 4 bytes from `a3` to ? (base unknown) (`sw` at 0xe8).
  Stores 4 bytes from `at` to ? (base unknown) (`sw` at 0xf8, 0x350).
  Loads 4 bytes from [a1+120]:8 +0x90 into `a2` (`lw` at 0xfc).
  Loads 4 bytes from [a1+112]:8 +0x4 into `v0` (`lw` at 0x104).
  Stores 4 bytes from `a0` to [a1+112]:8 +0x4 (`sw` at 0x10c).
  Loads 4 bytes from [a1+120]:8 +0x98 into `a3` (`lw` at 0x110).
  Stores 4 bytes from `a3` to [a1+112]:8 +0x4 (`sw` at 0x12c, 0x398).
  Loads 4 bytes from [a1+120]:8 +0x88 into `a2` (`lw` at 0x130, 0x39c).
  Stores 4 bytes from `a2` to [a1+112]:8 +0x4 (`sw` at 0x140, 0x3b4).
  Loads 4 bytes from [a1+112]:8 +0x8 into `a2` (`lw` at 0x150).
  Stores 4 bytes from `a1` to [a1+112]:8 +0x8 (`sw` at 0x16c).
  Loads 4 bytes from [a1+120]:8 +0x6c into `a7` (`lw` at 0x170).
  Stores 4 bytes from `t0` to [a1+112]:8 +0x8 (`sw` at 0x188).
  Loads 4 bytes from [a1+120]:8 +0x68 into `at` (`lw` at 0x18c).
  Loads 4 bytes from [a1+120]:8 +0x70 into `t0` (`lw` at 0x190).
  Loads 8 bytes from [a0+32]:8 +0x7d8 into `a7` (`ld` at 0x194, 0x1d4).
  Loads 4 bytes from [[a0+32]:8+2008]:8 +0x20 into `a7` (`lw` at 0x198).
  Loads 4 bytes from [a1+112]:8 +0xc into `a1` (`lw` at 0x1b4).
  Stores 4 bytes from `a1` to [a1+112]:8 +0xc (`sw` at 0x1c8).
  Loads 4 bytes from [a1+120]:8 +0x6c into `at` (`lw` at 0x1cc).
  Loads 4 bytes from [a1+120]:8 +0x74 into `t0` (`lw` at 0x1d0).
  Loads 4 bytes from [[a0+32]:8+2008]:8 +0x24 into `a7` (`lw` at 0x1d8).
  Stores 4 bytes from `a2` to [a1+112]:8 +0xc (`sw` at 0x204, 0x460).
  Loads 8 bytes from [a0+32]:8 +0x2d0 into `a0`: 6 such accesses, including `ld` at 0x210, 0x25c, 0x290.
  Loads 4 bytes from a0 (arg0 at entry) +0x30 into `a0` (`lw` at 0x24c).
  Stores 4 bytes from `a0` to a0 (arg0 at entry) +0x30 (`sw` at 0x258).
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `a5` (`ld` at 0x278).
  Stores 4 bytes from `a4` to [a0+32]:8 +0x28a8 (`sw` at 0x280).
  Stores 4 bytes from `a4` to [[a0+32]:8+736]:8 +0x107c (`sw` at 0x284).
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `a3` (`ld` at 0x288).
  Loads 4 bytes from [[a0+32]:8+736]:8 +0x106c into `a3` (`lw` at 0x28c).
  Stores 4 bytes from `v1` to [a1+112]:8 +0x4 (`sw` at 0x2d0).
  Loads 4 bytes from [a1+120]:8 +0x8c into `at` (`lw` at 0x2d4).
  Stores 4 bytes from `v1` to ? (base unknown) (`sw` at 0x318).
  Loads 4 bytes from ? (base unknown) into `a6` (`lw` at 0x31c).
  Stores 4 bytes from `a6` to ? (base unknown) (`sw` at 0x33c).
  Loads 4 bytes from ? (base unknown) into `a1` (`lw` at 0x354).
  Stores 4 bytes from `a1` to ? (base unknown) (`sw` at 0x378).
  Loads 4 bytes from a0 (arg0 at entry) +0x30 into `a3` (`lw` at 0x3c0).
  Stores 4 bytes from `a3` to a0 (arg0 at entry) +0x30 (`sw` at 0x3c8).
  Loads 4 bytes from [a1+120]:8 +0x78 into `at` (`lw` at 0x3f8).
  Loads 4 bytes from [a1+120]:8 +0x68 into `a2` (`lw` at 0x404, 0x440).
  Loads 4 bytes from [a1+112]:8 +0x8 into `a3` (`lw` at 0x408).
  Stores 4 bytes from `a2` to [a1+112]:8 +0x8 (`sw` at 0x424).
  Loads 4 bytes from [a1+120]:8 +0x6c into `v1` (`lw` at 0x428, 0x468).
  Stores 4 bytes from `v1` to [a1+112]:8 +0x8 (`sw` at 0x438).
  Loads 4 bytes from [a1+120]:8 +0x70 into `a3` (`lw` at 0x43c).
  Loads 4 bytes from [a1+112]:8 +0xc into `a3` (`lw` at 0x448).
  Loads 4 bytes from [a1+120]:8 +0x74 into `a3` (`lw` at 0x464).
  Stores 4 bytes from `v1` to [a1+112]:8 +0xc (`sw` at 0x488).
  Loads 4 bytes from [a0+32]:8 +0x28a4 into `a3` (`lw` at 0x49c).
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `v1` (`ld` at 0x4b0).
  Stores 4 bytes from `v0` to [a0+32]:8 +0x28a4 (`sw` at 0x4c0).
  Stores 4 bytes from `v0` to [[a0+32]:8+736]:8 +0x1074 (`sw` at 0x4c4).
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `at` (`ld` at 0x4cc).
  Stores 4 bytes from `zero` to [a0+32]:8 +0x28a8 (`sw` at 0x4d0).
  Stores 4 bytes from `zero` to [[a0+32]:8+736]:8 +0x107c (`sw` at 0x4d8).
  Calls `odsy_flow_am_i_attached` via direct with a0=[[a0+32]:8+720]:8, a1=?, a2=?, a3=?, a4=0xffffffffff000fff, a5=-0x1000 (`jal` at 0x20c).
  Calls `odsyClipMask` via direct with a0=[a0+32]:8, a1=[a1+112]:8, a2=?, a3=? (`jal` at 0x224).
  Calls `odsyClipPush` via direct with a0=[a0+32]:8, a1=[a1+112]:8, a2=?, a3=? (`jal` at 0x230).
  Calls `splhi` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x244).
  Calls `gfx_flow_am_i_attached` via direct with a0=[[a0+32]:8+720]:8, a1=?, a2=-0x3, a3=? (`jal` at 0x268).
  Calls `gfx_flow_detach_me` via direct with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=?, a3=[[[a0+32]:8+736]:8+4204], a4=0x1, a5=[[a0+32]:8+736]:8 (`jal` at 0x298).
  Calls `splx` via direct with a0=ret(splhi), a1=?, a2=?, a3=? (`jal` at 0x2a0).
  Calls `splhi` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3b8).
  Calls `gfx_flow_am_i_attached` via direct with a0=[[a0+32]:8+720]:8, a1=ret(splhi), a2=?, a3=([a0+48] | 0x2) (`jal` at 0x3d8).
  Calls `splx` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3e8).
  Calls `gfx_flow_attach_me` via direct with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=?, a3=? (`jal` at 0x490).
  Calls `gfx_flow_credit_tnum_get` via direct with a0=[[a0+32]:8+720]:8, a1=?, a2=?, a3=[[a0+32]:8+10404] (`jal` at 0x4a0).
  The `bne` at 0xf4 is taken when v0(?) < 0x4 (signed) and falls through when v0(?) >= 0x4 (signed).
  The `beq` at 0x100 is taken when a2(=[[a1+120]:8+144]) == 0 and falls through when a2(=[[a1+120]:8+144]) != 0.
  The `beq` at 0x120 is taken when (a3(=[[a1+120]:8+152]) & 0x3c00) == 0 and falls through when (a3(=[[a1+120]:8+152]) & 0x3c00) != 0.
  The `bltz` at 0x148 is taken when a0(=[[a1+120]:8+104]) < 0 (signed) and falls through when a0(=[[a1+120]:8+104]) >= 0 (signed).
  The `bltz` at 0x178 is taken when a7(=[[a1+120]:8+108]) < 0 (signed) and falls through when a7(=[[a1+120]:8+108]) >= 0 (signed).
  The `beq` at 0x1a8 is taken when a7(=[[[a0+32]:8+2008]:8+32]) >= t0(=([[a1+120]:8+112] + [[a1+120]:8+104])-1) (unsigned) and falls through when a7(=[[[a0+32]:8+2008]:8+32]) < t0(=([[a1+120]:8+112] + [[a1+120]:8+104])-1) (unsigned).
  The `beq` at 0x1ec is taken when a7(=[[[a0+32]:8+2008]:8+36]) >= t0(=([[a1+120]:8+116] + [[a1+120]:8+108])-1) (unsigned) and falls through when a7(=[[[a0+32]:8+2008]:8+36]) < t0(=([[a1+120]:8+116] + [[a1+120]:8+108])-1) (unsigned).
  The `beq` at 0x218 is taken when v0(=ret(odsy_flow_am_i_attached)) == 0 and falls through when v0(=ret(odsy_flow_am_i_attached)) != 0.
  The `beq` at 0x23c is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `beq` at 0x260 is taken when a0(=[[a0+32]:8+720]:8) == 0 and falls through when a0(=[[a0+32]:8+720]:8) != 0.
  The `beq` at 0x270 is taken when v0(=ret(gfx_flow_am_i_attached)) == 0 and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` at 0x2d8 is taken when at(=[[a1+120]:8+140]) == 0 and falls through when at(=[[a1+120]:8+140]) != 0.
  The `blez` at 0x2e0 is taken when a7(=[[a1+120]:8+120]) <= 0 (signed) and falls through when a7(=[[a1+120]:8+120]) > 0 (signed).
  The `bne` at 0x374 is taken when v0(?) < a7(=[[a1+120]:8+120]) (signed) and falls through when v0(?) >= a7(=[[a1+120]:8+120]) (signed).
  The `beq` at 0x3d0 is taken when a0(=[[a0+32]:8+720]:8) == 0 and falls through when a0(=[[a0+32]:8+720]:8) != 0.
  The `beq` at 0x3e0 is taken when v0(=ret(gfx_flow_am_i_attached)) == 0 and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `bne` at 0x3fc is taken when at(=[[a1+120]:8+120]) != 0 and falls through when at(=[[a1+120]:8+120]) == 0.
  The `jr` at 0x2bc returns with v0 = 0x0.

- `odsyClipMask` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)`, 0x4dc, 296 bytes) Inferred.
  Loads 4 bytes from a1 (arg1 at entry) +0x34 into `t8` (`lw` at 0x4dc).
  Loads 8 bytes from a1 (arg1 at entry) +0x90 into `at` (`ld` at 0x4e0).
  Loads 4 bytes from a1 (arg1 at entry) +0x38 into `t9` (`lw` at 0x4e4).
  Loads 8 bytes from [a1+144]:8 +0x78 into `at` (`ld` at 0x4e8).
  Loads 4 bytes from a1 (arg1 at entry) +0x3c into `t3` (`lw` at 0x4f0).
  Loads 4 bytes from [[a1+144]:8+120]:8 +0x6c into `v0` (`lw` at 0x4fc).
  Loads 4 bytes from [[a1+144]:8+120]:8 +0x68 into `at` (`lw` at 0x508).
  Loads 4 bytes from a1 (arg1 at entry) +0x30 into `t2` (`lw` at 0x510).
  Loads 4 bytes from ? (base unknown) into `a7` (`lw` at 0x544).
  Loads 4 bytes from ? (base unknown) into `a6` (`lw` at 0x54c).
  Stores 4 bytes from `v0` to ? (base unknown) (`sw` at 0x5e8).
  Stores 4 bytes from `a0` to ? (base unknown) (`sw` at 0x5f8).
  The `beq` at 0x53c is taken when v0(?) >= 0x4 (signed) and falls through when v0(?) < 0x4 (signed).
  The `bne` at 0x568 is taken when a5(?) != v1(=0x1) and falls through when a5(?) == v1(=0x1).
  The `bne` at 0x570 is taken when a1(?) != 0 and falls through when a1(?) == 0.
  The `bne` at 0x578 is taken when a3(?) != at(=0x1) and falls through when a3(?) == at(=0x1).
  The `bne` at 0x580 is taken when a4(?) != 0 and falls through when a4(?) == 0.
  The `jr` at 0x5fc returns with v0 = ?.
- `odsyClipPush` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)`, 0x604, 660 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `a6` (`ld` at 0x604).
  Loads 8 bytes from a1 (arg1 at entry) +0x60 into `a7` (`ld` at 0x608).
  Loads 4 bytes from a0 (arg0 at entry) +0x558 into `v0` (`lw` at 0x610).
  Stores 4 bytes from `t2` to [a0+736]:8 +0x110000: 5 such accesses, including `sw` at 0x620, 0x648, 0x664.
  Stores 4 bytes from `v1` to [a0+736]:8 +0x110000: 5 such accesses, including `sw` at 0x62c, 0x668, 0x6a4.
  Stores 4 bytes from `t1` to [a0+736]:8 +0x110000: 14 such accesses, including `sw` at 0x634, 0x63c, 0x654.
  Stores 4 bytes from `t8` to [a0+736]:8 +0x110000: 4 such accesses, including `sw` at 0x644, 0x694, 0x6f0.
  Stores 4 bytes from `a0` to [a0+736]:8 +0x110000 (`sw` at 0x650, 0x7a8).
  Loads 4 bytes from [a1+96]:8 +0x26a0 into `t0` (`lw` at 0x678).
  Stores 4 bytes from `at` to [a0+736]:8 +0x110000 (`sw` at 0x684, 0x6b0, 0x894).
  Stores 4 bytes from `t9` to [a0+736]:8 +0x110000 (`sw` at 0x68c, 0x6b8, 0x798).
  Stores 4 bytes from `t3` to [a0+736]:8 +0x110000 (`sw` at 0x69c, 0x760).
  Loads 4 bytes from a1 (arg1 at entry) +0x28 into `v1` (`lw` at 0x6a0).
  Loads 4 bytes from a1 (arg1 at entry) +0x2c into `at` (`lw` at 0x6a8).
  Loads 4 bytes from a1 (arg1 at entry) +0x4 into `at` (`lwu` at 0x6c8).
  Stores 8 bytes from `at` to [a0+736]:8 +0x110000: 4 such accesses, including `sd` at 0x6e4, 0x720, 0x7f8.
  Loads 4 bytes from ? (base unknown) into `v1` (`lwu` at 0x6fc).
  Loads 4 bytes from ? (base unknown) into `at` (`lwu` at 0x704).
  Loads 4 bytes from [a1+96]:8 +0x1b2c into `v0` (`lw` at 0x740).
  Stores 4 bytes from `zero` to [a0+736]:8 +0x110000: 11 such accesses, including `sw` at 0x764, 0x768, 0x774.
  Stores 4 bytes from `v0` to [a0+736]:8 +0x110000 (`sw` at 0x77c).
  Loads 4 bytes from a1 (arg1 at entry) +0x40 into `v0` (`lwu` at 0x7cc).
  Stores 8 bytes from `v0` to [a0+736]:8 +0x110000 (`sd` at 0x7e0, 0x840).
  Loads 4 bytes from a1 (arg1 at entry) +0x48 into `at` (`lwu` at 0x7e4).
  Loads 4 bytes from a1 (arg1 at entry) +0x44 into `a0` (`lwu` at 0x7fc).
  Stores 8 bytes from `a0` to [a0+736]:8 +0x110000 (`sd` at 0x810, 0x870).
  Loads 4 bytes from a1 (arg1 at entry) +0x4c into `v1` (`lwu` at 0x814).
  Stores 8 bytes from `v1` to [a0+736]:8 +0x110000 (`sd` at 0x828, 0x88c).
  Loads 4 bytes from a1 (arg1 at entry) +0x50 into `v0` (`lwu` at 0x82c).
  Loads 4 bytes from a1 (arg1 at entry) +0x54 into `at` (`lwu` at 0x844).
  Loads 4 bytes from a1 (arg1 at entry) +0x58 into `a0` (`lwu` at 0x85c).
  Loads 4 bytes from a1 (arg1 at entry) +0x5c into `v1` (`lwu` at 0x874).
  The `bne` at 0x71c is taken when a3(?) < 0x4 (signed) and falls through when a3(?) >= 0x4 (signed).
  The `beq` at 0x758 is taken when (v0(?) & 0x1) == 0 and falls through when (v0(?) & 0x1) != 0.
  The `jr` at 0x888 returns with v0 = 0x60d00000000.

- `gf_OdsyValidateBanks` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)`, 0x898, 8 bytes) Inferred.
  The `jr` at 0x898 returns with v0 = 0x0.

- `gf_OdsySetNullClip` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)`, 0x8a0, 56 bytes) Inferred.
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x3c (`sw` at 0x8a0).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x30 (`sw` at 0x8a4).
  Stores 4 bytes from `at` to a0 (arg0 at entry) +0x28 (`sw` at 0x8ac).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x18 (`sw` at 0x8b0).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x14 (`sw` at 0x8b4).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x10 (`sw` at 0x8b8).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0xc (`sw` at 0x8bc).
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x34 (`sw` at 0x8c4).
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x2c (`sw` at 0x8c8).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x8 (`sw` at 0x8cc).
  The `jr` at 0x8d0 returns with v0 = 0x0.

- `gfP_OdsySetClipMask` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)`, 0x8d8, 232 bytes) Inferred.
  Stores 4 bytes from `zero` to a3 (arg3 at entry) +0x0 (`sw` at 0x8e8).
  Loads 8 bytes from a0 (arg0 at entry) +0x48 into `at` (`ld` at 0x8f0).
  Loads 8 bytes from [a0+72]:8 +0x70 into `at` (`ld` at 0x8fc).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `v1` (`ld` at 0x918).
  Loads 4 bytes from [a0+32]:8 +0x50 into `v0` (`lw` at 0x920).
  Stores 4 bytes from `v0` to [a0+32]:8 +0x50 (`sw` at 0x938).
  Loads 8 bytes from a1 (arg1 at entry) +0x78 into `a3` (`ld` at 0x94c).
  Stores 4 bytes from `v0` to a3 (arg3 at entry) +0x0 (`sw` at 0x95c).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `a5` (`ld` at 0x960).
  Loads 4 bytes from [a0+32]:8 +0x50 into `a4` (`lw` at 0x964).
  Stores 4 bytes from `a4` to [a0+32]:8 +0x50 (`sw` at 0x970).
  Loads 4 bytes from a3 (arg3 at entry) +0x0 into `a0` (`lw` at 0x978).
  Stores 4 bytes from `a5` to a3 (arg3 at entry) +0x0 (`sw` at 0x990).
  Stores 4 bytes from `ra` to a3 (arg3 at entry) +0x0 (`sw` at 0x9b0).
  Calls `RRM_CheckValidFault` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x904).
  Calls `copyin` via direct with a0=a2 at entry (arg2), a1=?, a2=0x10, a3=?, a5=0xe (`jal` at 0x934).
  Calls `gf_OdsyValidateClip` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a1 at entry (arg1), a3=[a1+120]:8+96 (`jal` at 0x954).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=a1 at entry (arg1) (`jal` at 0x9a4).
  The `bltz` at 0x910 is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed) and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed).
  The `bne` at 0x93c is taken when v0(=ret(copyin)) != 0 and falls through when v0(=ret(copyin)) == 0.
  The `jr` at 0x984 returns with v0 = ?.

- `odsy_ctxsw_timeout` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`, 0x0, 92 bytes) Inferred.
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x18).
  Calls `odsy_teardown` via direct with a0=a0 at entry (arg0), a1=?, a2=0x5dc, a3=? (`jal` at 0x2c).
  Calls `timeout` via direct with a0=sym(odsy_ctxsw_timeout), a1=a0 at entry (arg0), a2=0x5dc, a3=? (`jal` at 0x48).
  The `beq` at 0x24 is taken when a2(=[sym(odsy_actually_timeout)]) == 0 and falls through when a2(=[sym(odsy_actually_timeout)]) != 0.
  The `jr` at 0x3c returns with v0 = ?.

- `odsy_glget_timeout` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`, 0x5c, 92 bytes) Inferred.
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x74).
  Calls `odsy_teardown` via direct with a0=a0 at entry (arg0), a1=?, a2=0x5dc, a3=? (`jal` at 0x88).
  Calls `timeout` via direct with a0=sym(odsy_glget_timeout), a1=a0 at entry (arg0), a2=0x5dc, a3=? (`jal` at 0xa4).
  The `beq` at 0x80 is taken when a2(=[sym(odsy_actually_timeout)]) == 0 and falls through when a2(=[sym(odsy_actually_timeout)]) != 0.
  The `jr` at 0x98 returns with v0 = ?.

- `gf_OdsyPcxSwitch` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`, 0xb8, 8 bytes) Inferred.
  The `jr` at 0xb8 returns with v0 = -0x1.

- `gfP_OdsySaveHwShadow` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`, 0xc0, 1036 bytes) Inferred.
  Stores 4 bytes from `zero` to a3 (arg3 at entry) +0x0 (`sw` at 0xcc, 0x2cc, 0x3cc).
  Loads 8 bytes from a0 (arg0 at entry) +0x48 into `at` (`ld` at 0xd4).
  Loads 8 bytes from [a0+72]:8 +0x70 into `at` (`ld` at 0xdc).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `s0` (`ld` at 0xf4).
  Loads 4 bytes from [a0+32]:8 +0x2d8 into `v1` (`lw` at 0x108, 0x328).
  Loads 8 bytes from a1 (arg1 at entry) +0x70 into `a5` (`ld` at 0x124).
  Loads 8 bytes from [a1+112]:8 +0x70 into `at` (`ld` at 0x12c).
  Stores 4 bytes from `v1` to a3 (arg3 at entry) +0x0 (`sw` at 0x148, 0x2f8).
  Loads 8 bytes from [a0+32]:8 +0x2d0 into `a0`: 5 such accesses, including `ld` at 0x154, 0x228, 0x394.
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `a5` (`ld` at 0x15c).
  Stores 4 bytes from `zero` to ? (base unknown) (`sw` at 0x194).
  Stores 8 bytes from `v0` to table(0x118000) +0x0 (`sd` at 0x1a0).
  Loads 4 bytes from ? (base unknown) into `a4` (`lw` at 0x1a8).
  Loads 4 bytes from [a0+32]:8 +0x2d8 into `a5` (`lw` at 0x1bc, 0x2fc).
  Loads 4 bytes from a0 (arg0 at entry) +0x30 into `v0` (`lw` at 0x1e0).
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x30 (`sw` at 0x1ec).
  Loads 8 bytes from [a0+32]:8 +0x2d0 into `a1` (`ld` at 0x1f0, 0x360, 0x3e4).
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `a3` (`ld` at 0x20c).
  Stores 4 bytes from `a2` to [a0+32]:8 +0x28a8 (`sw` at 0x214).
  Stores 4 bytes from `a2` to [[a0+32]:8+736]:8 +0x107c (`sw` at 0x218).
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `a1` (`ld` at 0x21c).
  Loads 4 bytes from [[a0+32]:8+736]:8 +0x106c into `a1` (`lw` at 0x220).
  Stores 4 bytes from `a4` to a3 (arg3 at entry) +0x0 (`sw` at 0x260, 0x444, 0x478).
  Stores 4 bytes from `s0` to a3 (arg3 at entry) +0x0 (`sw` at 0x270).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `ra` (`ld` at 0x280).
  Loads 4 bytes from [a0+32]:8 +0x50 into `t9` (`lw` at 0x284).
  Stores 4 bytes from `t9` to [a0+32]:8 +0x50 (`sw` at 0x28c).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `a0` (`ld` at 0x290).
  Loads 8 bytes from a0 (arg0 at entry) +0x18 into `t8` (`ld` at 0x294).
  Loads 8 bytes from [a0+32]:8 +0x8 into `a1` (`ld` at 0x298).
  Loads 8 bytes from [a0+24]:8 +0x78 into `t8` (`ld` at 0x29c).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `v0` (`ld` at 0x2b4).
  Loads 4 bytes from [a0+32]:8 +0x50 into `at` (`lw` at 0x2bc).
  Stores 4 bytes from `at` to [a0+32]:8 +0x50 (`sw` at 0x2c8).
  Loads 4 bytes from ? (base unknown) into `at` (`lw` at 0x31c).
  Loads 4 bytes from a0 (arg0 at entry) +0x30 into `a5` (`lw` at 0x350, 0x3d8).
  Stores 4 bytes from `a5` to a0 (arg0 at entry) +0x30 (`sw` at 0x35c, 0x3e0).
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `a0` (`ld` at 0x37c).
  Stores 4 bytes from `v1` to [a0+32]:8 +0x28a8 (`sw` at 0x384).
  Stores 4 bytes from `v1` to [[a0+32]:8+736]:8 +0x107c (`sw` at 0x388).
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `v0` (`ld` at 0x38c).
  Loads 4 bytes from [[a0+32]:8+736]:8 +0x106c into `v0` (`lw` at 0x390).
  Loads 4 bytes from [a0+32]:8 +0x28a4 into `a6` (`lw` at 0x48c).
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `v1` (`ld` at 0x4a0).
  Stores 4 bytes from `v0` to [a0+32]:8 +0x28a4 (`sw` at 0x4b0).
  Stores 4 bytes from `v0` to [[a0+32]:8+736]:8 +0x1074 (`sw` at 0x4b4).
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `at` (`ld` at 0x4bc).
  Stores 4 bytes from `zero` to [a0+32]:8 +0x28a8 (`sw` at 0x4c0).
  Stores 4 bytes from `zero` to [[a0+32]:8+736]:8 +0x107c (`sw` at 0x4c8).
  Calls `RRM_CheckValidFault` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xf8).
  Calls `odsy_flow_am_i_attached` via direct with a0=[[a0+32]:8+720]:8, a1=?, a2=?, a3=?, a4=a2 at entry (arg2), a5=[[a0+32]:8+736]:8 (`jal` at 0x160).
  Calls `timeout` via direct with a0=sym(odsy_ctxsw_timeout), a1=[a0+32]:8, a2=0x5dc, a3=? (`jal` at 0x19c).
  Calls `untimeout` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1b4).
  Calls `splhi` via direct with a0=?, a1=?, a2=?, a3=?, a5=[[a0+32]:8+728] (`jal` at 0x1d4).
  Calls `gfx_flow_am_i_attached` via direct with a0=[[a0+32]:8+720]:8, a1=[[a0+32]:8+720]:8, a2=?, a3=? (`jal` at 0x1fc).
  Calls `gfx_flow_detach_me` via direct with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=0x1, a3=[[a0+32]:8+736]:8 (`jal` at 0x22c).
  Calls `splx` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x23c).
  Calls `(unknown callee)` via register with a0=[a0+32]:8, a1=[[a0+32]:8+8]:8, a2=[[a0+32]:8+8]:8, a3=[[a0+32]:8+8]:8, a4=a2 at entry (arg2) (`jalr` at 0x2ac).
  Calls `us_delay` via direct with a0=0x1, a1=?, a2=?, a3=? (`jal` at 0x310).
  Calls `splhi` via direct with a0=?, a1=?, a2=?, a3=?, a5=[[a0+32]:8+728] (`jal` at 0x348).
  Calls `gfx_flow_am_i_attached` via direct with a0=[[a0+32]:8+720]:8, a1=[[a0+32]:8+720]:8, a2=?, a3=? (`jal` at 0x36c).
  Calls `gfx_flow_detach_me` via direct with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=?, a3=? (`jal` at 0x39c).
  Calls `splx` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3ac).
  Calls `splhi` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3d0).
  Calls `gfx_flow_am_i_attached` via direct with a0=[[a0+32]:8+720]:8, a1=[[a0+32]:8+720]:8, a2=?, a3=?, a5=([a0+48] | 0x2) (`jal` at 0x3f4).
  Calls `splx` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x404).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x428).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=?, a3=?, a4=a2 at entry (arg2) (`jal` at 0x45c).
  Calls `gfx_flow_attach_me` via direct with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=?, a3=? (`jal` at 0x480).
  Calls `gfx_flow_credit_tnum_get` via direct with a0=[[a0+32]:8+720]:8, a1=?, a2=?, a3=?, a6=[[a0+32]:8+10404] (`jal` at 0x490).
  The `beq` at 0xf0 is taken when at(=[[a0+72]:8+112]:8) == 0 and falls through when at(=[[a0+72]:8+112]:8) != 0.
  The `bltz` at 0x100 is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed) and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed).
  The `bne` at 0x10c is taken when v1(=[[a0+32]:8+728]) != 0 and falls through when v1(=[[a0+32]:8+728]) == 0.
  The `bne` at 0x114 is taken when a4(=a2) != 0 and falls through when a4(=a2) == 0.
  The `beq` at 0x11c is taken when s2(=a1) == 0 and falls through when s2(=a1) != 0.
  The `bne` at 0x130 is taken when a5(=[a1+112]:8) != 0 and falls through when a5(=[a1+112]:8) == 0.
  The `beq` at 0x16c is taken when v0(=ret(odsy_flow_am_i_attached)) == 0 and falls through when v0(=ret(odsy_flow_am_i_attached)) != 0.
  The `beq` at 0x1ac is taken when a4(?) == 0 and falls through when a4(?) != 0.
  The `beq` at 0x1c4 is taken when a5(=[[a0+32]:8+728]) == 0 and falls through when a5(=[[a0+32]:8+728]) != 0.
  The `beq` at 0x1cc is taken when at(?) == 0 and falls through when at(?) != 0.
  The `beq` at 0x1f4 is taken when a1(=[[a0+32]:8+720]:8) == 0 and falls through when a1(=[[a0+32]:8+720]:8) != 0.
  The `beq` at 0x204 is taken when v0(=ret(gfx_flow_am_i_attached)) == 0 and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `bne` at 0x300 is taken when a5(=[[a0+32]:8+728]) != 0 and falls through when a5(=[[a0+32]:8+728]) == 0.
  The `bne` at 0x320 is taken when at(?) != 0 and falls through when at(?) == 0.
  The `beq` at 0x32c is taken when v1(=[[a0+32]:8+728]) == 0 and falls through when v1(=[[a0+32]:8+728]) != 0.
  The `beq` at 0x340 is taken when a4(?) == 0 and falls through when a4(?) != 0.
  The `beq` at 0x364 is taken when a1(=[[a0+32]:8+720]:8) == 0 and falls through when a1(=[[a0+32]:8+720]:8) != 0.
  The `beq` at 0x374 is taken when v0(=ret(gfx_flow_am_i_attached)) == 0 and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` at 0x3e8 is taken when a1(=[[a0+32]:8+720]:8) == 0 and falls through when a1(=[[a0+32]:8+720]:8) != 0.
  The `beq` at 0x3fc is taken when v0(=ret(gfx_flow_am_i_attached)) == 0 and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `jr` at 0x14c returns with v0 = one of 0x0, 0x1, 0xe, 0x16.

- `gf_OdsyPcxSwap` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`, 0x4cc, 1468 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x2d8 into `at` (`lw` at 0x4f4, 0x688).
  Loads 8 bytes from a2 (arg2 at entry) +0x40 into `a0` (`ld` at 0x528, 0x788).
  Loads 8 bytes from a2 (arg2 at entry) +0x70 into `s2` (`ld` at 0x534).
  Loads 4 bytes from [a2+112]:8 +0x0 into `s4` (`lw` at 0x538).
  Loads 8 bytes from [a2+112]:8 +0x70 into `v1` (`ld` at 0x53c).
  Loads 8 bytes from a1 (arg1 at entry) +0x70 into `s3` (`ld` at 0x558).
  Loads 8 bytes from [a1+112]:8 +0x70 into `s6` (`ld` at 0x55c).
  Loads 8 bytes from a0 (arg0 at entry) +0x2d0 into `a0`: 8 such accesses, including `ld` at 0x560, 0x5c4, 0x5f8.
  Loads 8 bytes from a0 (arg0 at entry) +0x48 into `s5` (`ld` at 0x564).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `a1` (`ld` at 0x568, 0x5e0).
  Loads 4 bytes from [a0+72]:8 +0x30 into `at` (`lw` at 0x5b0).
  Stores 4 bytes from `at` to [a0+72]:8 +0x30 (`sw` at 0x5c0).
  Stores 4 bytes from `a0` to a0 (arg0 at entry) +0x28a8 (`sw` at 0x5e8).
  Stores 4 bytes from `a0` to [a0+736]:8 +0x107c (`sw` at 0x5ec).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `v1` (`ld` at 0x5f0).
  Loads 4 bytes from [a0+736]:8 +0x106c into `v1` (`lw` at 0x5f4).
  Stores 4 bytes from `zero` to ? (base unknown) (`sw` at 0x65c, 0x834, 0x86c).
  Stores 8 bytes from `a3` to table(0x118000) +0x0 (`sd` at 0x670).
  Loads 4 bytes from ? (base unknown) into `a5` (`lw` at 0x674).
  Loads 4 bytes from [a0+72]:8 +0x30 into `a0` (`lw` at 0x6b8).
  Stores 4 bytes from `a0` to [a0+72]:8 +0x30 (`sw` at 0x6c4).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `a6` (`ld` at 0x6e4).
  Stores 4 bytes from `a5` to a0 (arg0 at entry) +0x28a8 (`sw` at 0x6ec).
  Stores 4 bytes from `a5` to [a0+736]:8 +0x107c (`sw` at 0x6f0).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `a4` (`ld` at 0x6f4).
  Loads 4 bytes from [a0+736]:8 +0x106c into `a4` (`lw` at 0x6f8).
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x28b0 (`sw` at 0x73c).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `t2` (`ld` at 0x740).
  Stores 4 bytes from `t1` to a0 (arg0 at entry) +0x28ac (`sw` at 0x74c).
  Stores 4 bytes from `t1` to [a0+736]:8 +0x4004 (`sw` at 0x750).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `t0` (`ld` at 0x754).
  Loads 4 bytes from a0 (arg0 at entry) +0x28b0 into `a7` (`lw` at 0x760).
  Stores 4 bytes from `a7` to [a0+736]:8 +0x400c (`sw` at 0x76c).
  Loads 2 bytes from a2 (arg2 at entry) +0x4 into `at` (`lhu` at 0x770).
  Loads 4 bytes from ? (base unknown) into `v1` (`lw` at 0x794).
  Loads 4 bytes from a0 (arg0 at entry) +0x2dc into `v0` (`lw` at 0x7a0, 0x838).
  Stores 4 bytes from `v1` to table(0x110000) +0x0: 5 such accesses, including `sw` at 0x7e8, 0x810, 0x828.
  Stores 4 bytes from `a5` to table(0x110000) +0x0: 4 such accesses, including `sw` at 0x7f0, 0x818, 0x920.
  Stores 4 bytes from `zero` to table(0x110000) +0x0: 5 such accesses, including `sw` at 0x7f8, 0x808, 0x82c.
  Stores 4 bytes from `a3` to table(0x110000) +0x0 (`sw` at 0x800, 0x820, 0x93c).
  Loads 8 bytes from ? (base unknown) into `a0` (`ld` at 0x860).
  Stores 4 bytes from `s4` to a0 (arg0 at entry) +0x2dc (`sw` at 0x874).
  Loads 4 bytes from [a0+72]:8 +0x30 into `a3` (`lw` at 0x880).
  Stores 4 bytes from `a3` to [a0+72]:8 +0x30 (`sw` at 0x888).
  Loads 4 bytes from a0 (arg0 at entry) +0x2d8 into `a5` (`lw` at 0x8b8).
  Loads 4 bytes from ? (base unknown) into `at` (`lw` at 0x8d4, 0x978).
  Loads 4 bytes from a0 (arg0 at entry) +0x2d8 into `v1` (`lw` at 0x8e0).
  Loads 4 bytes from ? (base unknown) into `a3` (`lw` at 0x8f4).
  Stores 4 bytes from `at` to table(0x110000) +0x0 (`sw` at 0x958).
  Stores 4 bytes from `a7` to table(0x110000) +0x0 (`sw` at 0x960).
  Loads 8 bytes from ? (base unknown) into `a7` (`ld` at 0x96c).
  Loads 4 bytes from ? (base unknown) into `a1` (`lw` at 0x984).
  Loads 4 bytes from a0 (arg0 at entry) +0x28a4 into `a2` (`lw` at 0xa10).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `at` (`ld` at 0xa2c).
  Stores 4 bytes from `a5` to a0 (arg0 at entry) +0x28a4 (`sw` at 0xa34).
  Stores 4 bytes from `a5` to [a0+736]:8 +0x1074 (`sw` at 0xa38).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `a3` (`ld` at 0xa40).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x28a8 (`sw` at 0xa44).
  Stores 4 bytes from `zero` to [a0+736]:8 +0x107c (`sw` at 0xa4c).
  Calls `gfx_waitc_on` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x51c).
  Calls `gfx_flow_clean_up_other_gfxp` via direct with a0=[a2+64]:8, a1=?, a2=?, a3=? (`jal` at 0x524).
  Calls `odsy_flow_am_i_attached` via direct with a0=[a0+720]:8, a1=[a0+736]:8, a2=?, a3=? (`jal` at 0x56c).
  Calls `splhi` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x5a8).
  Calls `gfx_flow_am_i_attached` via direct with a0=[a0+720]:8, a1=?, a2=?, a3=? (`jal` at 0x5d0).
  Calls `gfx_flow_detach_me` via direct with a0=[a0+720]:8, a1=[a0+72]:8, a2=?, a3=? (`jal` at 0x600).
  Calls `splx` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x610).
  Calls `gfx_waitc_off` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x61c).
  Calls `timeout` via direct with a0=sym(odsy_ctxsw_timeout), a1=a0 at entry (arg0), a2=0x5dc, a3=?, a4=table(0x118000), a5=0x70000000000 (`jal` at 0x66c).
  Calls `untimeout` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x680).
  Calls `splhi` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x6b0).
  Calls `gfx_flow_am_i_attached` via direct with a0=[a0+720]:8, a1=?, a2=?, a3=-0x3 (`jal` at 0x6d4).
  Calls `gfx_flow_detach_me` via direct with a0=[a0+720]:8, a1=[a0+72]:8, a2=?, a3=?, a4=[[a0+736]:8+4204], a5=0x1, a6=[a0+736]:8 (`jal` at 0x704).
  Calls `splx` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x714).
  Calls `gfx_waitc_off` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x720).
  Calls `kvtophys` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x734).
  Calls `odsyMMvalidatePcxSwap` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a7=[a0+10416] (`jal` at 0x768).
  Calls `gf_OdsyValidateClip` via direct with a0=[a2+64]:8, a1=a2 at entry (arg2), a2=0x0, a3=0x0 (`jal` at 0x78c).
  Calls `splhi` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x878).
  Calls `gfx_flow_am_i_attached` via direct with a0=[a0+720]:8, a1=ret(splhi), a2=?, a3=([[a0+72]:8+48] | 0x2) (`jal` at 0x898).
  Calls `splx` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x8a8).
  Calls `us_delay` via direct with a0=0x1, a1=?, a2=?, a3=? (`jal` at 0x8cc).
  Calls `odsyDownloadUcode` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x1, a4=[a0+72]:8, a5=0x10443 (`jal` at 0x990).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x9a4).
  Calls `curproc` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x9ac).
  Calls `psignal` via direct with a0=ret(curproc), a1=0x9, a2=?, a3=? (`jal` at 0x9b8).
  Calls `odsyRestoreXform` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x9cc).
  Calls `odsyRestoreRaster` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x9d8).
  Calls `odsyRestoreGfe` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x9e4).
  Calls `odsyRestartContext` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x9f0).
  Calls `gfx_flow_attach_me` via direct with a0=[a0+720]:8, a1=[a0+72]:8, a2=?, a3=? (`jal` at 0xa04).
  Calls `gfx_flow_credit_tnum_get` via direct with a0=[a0+720]:8, a1=?, a2=[a0+10404], a3=? (`jal` at 0xa14).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xa74).
  The `bne` at 0x514 is taken when at(=[a0+728]) != 0 and falls through when at(=[a0+728]) == 0.
  The `beq` at 0x52c is taken when s1(=a2) == 0 and falls through when s1(=a2) != 0.
  The `beq` at 0x540 is taken when s5(=a1) == 0 and falls through when s5(=a1) != 0.
  The `beq` at 0x550 is taken when s5(=a1) == 0 and falls through when s5(=a1) != 0.
  The `beq` at 0x578 is taken when v0(=ret(odsy_flow_am_i_attached)) == 0 and falls through when v0(=ret(odsy_flow_am_i_attached)) != 0.
  The `bne` at 0x580 is taken when s3(?) != 0 and falls through when s3(?) == 0.
  The `bne` at 0x588 is taken when s2(?) != 0 and falls through when s2(?) == 0.
  The `beq` at 0x5a0 is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `beq` at 0x5c8 is taken when a0(=[a0+720]:8) == 0 and falls through when a0(=[a0+720]:8) != 0.
  The `beq` at 0x5d8 is taken when v0(=ret(gfx_flow_am_i_attached)) == 0 and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` at 0x678 is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `beq` at 0x68c is taken when at(=[a0+728]) == 0 and falls through when at(=[a0+728]) != 0.
  The `beq` at 0x6a8 is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `beq` at 0x6cc is taken when a0(=[a0+720]:8) == 0 and falls through when a0(=[a0+720]:8) != 0.
  The `beq` at 0x6dc is taken when v0(=ret(gfx_flow_am_i_attached)) == 0 and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` at 0x778 is taken when (at(=[a2+4]:2) & 0x2) == 0 and falls through when (at(=[a2+4]:2) & 0x2) != 0.
  The `beq` at 0x798 is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `beq` at 0x7a8 is taken when v0(=[a0+732]) == a3(=0x7f) and falls through when v0(=[a0+732]) != a3(=0x7f).
  The `beq` at 0x7b0 is taken when v0(=[a0+732]) == 0 and falls through when v0(=[a0+732]) != 0.
  The `beq` at 0x830 is taken when s4(?) == 0 and falls through when s4(?) != 0.
  The `beq` at 0x83c is taken when v0(=[a0+732]) == s4(?) and falls through when v0(=[a0+732]) != s4(?).
  The `beq` at 0x848 is taken when v0(=[a0+732]) == a3(=0x7f) and falls through when v0(=[a0+732]) != a3(=0x7f).
  The `beq` at 0x864 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `beq` at 0x890 is taken when a0(=[a0+720]:8) == 0 and falls through when a0(=[a0+720]:8) != 0.
  The `beq` at 0x8a0 is taken when v0(=ret(gfx_flow_am_i_attached)) == 0 and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `bne` at 0x8bc is taken when a5(=[a0+728]) != 0 and falls through when a5(=[a0+728]) == 0.
  The `bne` at 0x8d8 is taken when at(?) != 0 and falls through when at(?) == 0.
  The `beq` at 0x8e4 is taken when v1(=[a0+728]) == 0 and falls through when v1(=[a0+728]) != 0.
  The `beq` at 0x90c is taken when a3(?) >= 0xb (unsigned) and falls through when a3(?) < 0xb (unsigned).
  The `beq` at 0x970 is taken when a7(?) == 0 and falls through when a7(?) != 0.
  The `beq` at 0x97c is taken when at(?) == 0 and falls through when at(?) != 0.
  The `beq` at 0x998 is taken when v0(=ret(odsyDownloadUcode)) == 0 and falls through when v0(=ret(odsyDownloadUcode)) != 0.
  The `jr` at 0x62c returns with v0 = one of -0x1, 0x0.

- `odsyRestoreRaster` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`, 0xa88, 4996 bytes) Inferred.
  Loads 4 bytes from a1 (arg1 at entry) +0x0 into `a3` (`lw` at 0xa90).
  Loads 8 bytes from a1 (arg1 at entry) +0x60 into `a5` (`ld` at 0xa98).
  Loads 4 bytes from a0 (arg0 at entry) +0x2dc into `at` (`lw` at 0xab8).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `t2` (`ld` at 0xae4).
  Stores 4 bytes from `s1` to [a0+736]:8 +0x110000: 23 such accesses, including `sw` at 0xaf4, 0xb10, 0xb2c.
  Stores 4 bytes from `a1` to [a0+736]:8 +0x110000: 16 such accesses, including `sw` at 0xafc, 0xb30, 0xb84.
  Stores 4 bytes from `s2` to [a0+736]:8 +0x110000: 63 such accesses, including `sw` at 0xb04, 0xb08, 0xb1c.
  Stores 4 bytes from `t3` to [a0+736]:8 +0x110000 (`sw` at 0xb0c, 0x186c, 0x18e4).
  Stores 4 bytes from `a3` to [a0+736]:8 +0x110000: 7 such accesses, including `sw` at 0xb18, 0xb6c, 0x1734.
  Stores 4 bytes from `at` to [a0+736]:8 +0x110000: 96 such accesses, including `sw` at 0xb44, 0xb98, 0xbe0.
  Loads 4 bytes from [a1+96]:8 +0x1b24 into `t8` (`lw` at 0xb48).
  Stores 4 bytes from `t8` to [a0+736]:8 +0x110000: 23 such accesses, including `sw` at 0xb4c, 0xba0, 0xbe8.
  Loads 4 bytes from [a1+96]:8 +0x1b28 into `a6` (`lw` at 0xb50).
  Stores 4 bytes from `a6` to [a0+736]:8 +0x110000: 19 such accesses, including `sw` at 0xb54, 0xba8, 0xbf0.
  Loads 4 bytes from [a1+96]:8 +0x1b2c into `a2` (`lw` at 0xb58).
  Stores 4 bytes from `a2` to [a0+736]:8 +0x110000: 101 such accesses, including `sw` at 0xb5c, 0xbb0, 0xc08.
  Loads 4 bytes from [a1+96]:8 +0x1b30 into `v1` (`lw` at 0xb60).
  Stores 4 bytes from `v1` to [a0+736]:8 +0x110000: 104 such accesses, including `sw` at 0xb64, 0xbcc, 0xc10.
  Stores 4 bytes from `v0` to [a0+736]:8 +0x110000: 109 such accesses, including `sw` at 0xb90, 0xbd8, 0xc18.
  Loads 4 bytes from [a1+96]:8 +0xe8 into `at` (`lw` at 0xb94).
  Loads 4 bytes from [a1+96]:8 +0xec into `t8` (`lw` at 0xb9c).
  Loads 4 bytes from [a1+96]:8 +0xf0 into `a6` (`lw` at 0xba4).
  Loads 4 bytes from [a1+96]:8 +0xf4 into `a2` (`lw` at 0xbac).
  Loads 4 bytes from [a1+96]:8 +0xe4 into `v0` (`lw` at 0xbd0).
  Loads 4 bytes from [a1+96]:8 +0xa8 into `t8` (`lw` at 0xbe4).
  Loads 4 bytes from [a1+96]:8 +0xac into `a6` (`lw` at 0xbec).
  Loads 4 bytes from [a1+96]:8 +0x1b34 into `v1` (`lw` at 0xc0c).
  Loads 4 bytes from [a1+96]:8 +0x1b38 into `v0` (`lw` at 0xc14).
  Loads 4 bytes from [a1+96]:8 +0x1b3c into `at` (`lw` at 0xc1c).
  Loads 4 bytes from [a1+96]:8 +0x1b40 into `t8` (`lw` at 0xc24).
  Loads 4 bytes from [a1+96]:8 +0x1b44 into `a6` (`lw` at 0xc2c).
  Loads 4 bytes from [a1+96]:8 +0x84 into `v1` (`lw` at 0xc50).
  Loads 4 bytes from [a1+96]:8 +0x88 into `at` (`lw` at 0xc64).
  Loads 4 bytes from [a1+96]:8 +0xc8 into `a6` (`lw` at 0xc78).
  Loads 4 bytes from [a1+96]:8 +0x8c into `v1` (`lw` at 0xc8c).
  Loads 4 bytes from [a1+96]:8 +0x1cb0 into `at` (`lw` at 0xca0).
  Loads 4 bytes from [a1+96]:8 +0xcc into `a6` (`lw` at 0xcb4).
  Loads 4 bytes from [a1+96]:8 +0xd0 into `a2` (`lw` at 0xcbc).
  Loads 4 bytes from [a1+96]:8 +0xd4 into `v1` (`lw` at 0xcc4).
  Loads 4 bytes from [a1+96]:8 +0x80 into `at` (`lw` at 0xcd8).
  Loads 4 bytes from [a1+96]:8 +0x0 into `a6` (`lw` at 0xcec).
  Loads 4 bytes from [a1+96]:8 +0x4 into `a2` (`lw` at 0xcf4).
  Loads 4 bytes from [a1+96]:8 +0x8 into `v1` (`lw` at 0xcfc).
  Loads 4 bytes from [a1+96]:8 +0xc into `v0` (`lw` at 0xd04).
  Loads 4 bytes from [a1+96]:8 +0x10 into `at` (`lw` at 0xd0c).
  Loads 4 bytes from [a1+96]:8 +0x14 into `t8` (`lw` at 0xd14).
  Loads 4 bytes from [a1+96]:8 +0x18 into `a6` (`lw` at 0xd1c).
  Loads 4 bytes from [a1+96]:8 +0x1c into `a2` (`lw` at 0xd24).
  Loads 4 bytes from [a1+96]:8 +0x20 into `v1` (`lw` at 0xd2c).
  Loads 4 bytes from [a1+96]:8 +0x24 into `v0` (`lw` at 0xd34).
  Loads 4 bytes from [a1+96]:8 +0x28 into `at` (`lw` at 0xd3c).
  Loads 4 bytes from [a1+96]:8 +0x2c into `t8` (`lw` at 0xd44).
  Loads 4 bytes from [a1+96]:8 +0x30 into `a6` (`lw` at 0xd4c).
  Loads 4 bytes from [a1+96]:8 +0x34 into `a2` (`lw` at 0xd54).
  Loads 4 bytes from [a1+96]:8 +0x38 into `v1` (`lw` at 0xd5c).
  Loads 4 bytes from [a1+96]:8 +0x3c into `v0` (`lw` at 0xd64).
  Loads 4 bytes from [a1+96]:8 +0x40 into `t8` (`lw` at 0xd78).
  Loads 4 bytes from [a1+96]:8 +0x44 into `a6` (`lw` at 0xd80).
  Loads 4 bytes from [a1+96]:8 +0x48 into `a2` (`lw` at 0xd88).
  Loads 4 bytes from [a1+96]:8 +0x4c into `v1` (`lw` at 0xd90).
  Loads 4 bytes from [a1+96]:8 +0x50 into `v0` (`lw` at 0xd98).
  Loads 4 bytes from [a1+96]:8 +0x54 into `at` (`lw` at 0xda0).
  Loads 4 bytes from [a1+96]:8 +0x58 into `t8` (`lw` at 0xda8).
  Loads 4 bytes from [a1+96]:8 +0x5c into `a6` (`lw` at 0xdb0).
  Loads 4 bytes from [a1+96]:8 +0x60 into `a2` (`lw` at 0xdb8).
  Loads 4 bytes from [a1+96]:8 +0x64 into `v1` (`lw` at 0xdc0).
  Loads 4 bytes from [a1+96]:8 +0x68 into `v0` (`lw` at 0xdc8).
  Loads 4 bytes from [a1+96]:8 +0x6c into `at` (`lw` at 0xdd0).
  Loads 4 bytes from [a1+96]:8 +0x70 into `t8` (`lw` at 0xdd8).
  Loads 4 bytes from [a1+96]:8 +0x74 into `a6` (`lw` at 0xde0).
  Loads 4 bytes from [a1+96]:8 +0x78 into `a2` (`lw` at 0xde8).
  Loads 4 bytes from [a1+96]:8 +0x7c into `v1` (`lw` at 0xdf0).
  Loads 4 bytes from [a1+96]:8 +0xdc into `at` (`lw` at 0xe04).
  Loads 4 bytes from [a1+96]:8 +0xe0 into `t8` (`lw` at 0xe0c).
  Loads 4 bytes from [a1+96]:8 +0x138 into `a2` (`lw` at 0xe20).
  Loads 4 bytes from [a1+96]:8 +0x13c into `v1` (`lw` at 0xe28).
  Loads 4 bytes from [a1+96]:8 +0x140 into `v0` (`lw` at 0xe30).
  Loads 4 bytes from [a1+96]:8 +0x144 into `at` (`lw` at 0xe38).
  Loads 4 bytes from [a1+96]:8 +0x148 into `t8` (`lw` at 0xe40).
  Loads 4 bytes from [a1+96]:8 +0x14c into `a2` (`lw` at 0xe54).
  Loads 4 bytes from [a1+96]:8 +0x150 into `v1` (`lw` at 0xe5c).
  Loads 4 bytes from [a1+96]:8 +0x154 into `v0` (`lw` at 0xe64).
  Loads 4 bytes from [a1+96]:8 +0x158 into `at` (`lw` at 0xe6c).
  Loads 4 bytes from [a1+96]:8 +0x15c into `t8` (`lw` at 0xe74).
  Loads 4 bytes from [a1+96]:8 +0x160 into `a6` (`lw` at 0xe7c).
  Loads 4 bytes from [a1+96]:8 +0x164 into `a2` (`lw` at 0xe84).
  Loads 4 bytes from [a1+96]:8 +0x1b20 into `v0` (`lw` at 0xe98).
  Loads 4 bytes from [a1+96]:8 +0x1cac into `t8` (`lw` at 0xeac).
  Loads 4 bytes from [a1+96]:8 +0xbc into `a2` (`lw` at 0xec0).
  Loads 4 bytes from [a1+96]:8 +0xc0 into `v1` (`lw` at 0xec8).
  Loads 4 bytes from [a1+96]:8 +0xc4 into `v0` (`lw` at 0xed0).
  Loads 4 bytes from [a1+96]:8 +0x1170 into `a6` (`lw` at 0xed8).
  Loads 4 bytes from [a1+96]:8 +0x1174 into `at` (`lw` at 0xf00, 0x1cec).
  Loads 4 bytes from [a1+96]:8 +0x1178 into `a2` (`lw` at 0xf08, 0x1cf4).
  Loads 4 bytes from [a1+96]:8 +0x117c into `v1` (`lw` at 0xf10).
  Loads 4 bytes from [a1+96]:8 +0x1180 into `v0` (`lw` at 0xf18).
  Loads 4 bytes from [a1+96]:8 +0x1184 into `at` (`lw` at 0xf20).
  Loads 4 bytes from [a1+96]:8 +0x1188 into `a2` (`lw` at 0xf28).
  Loads 4 bytes from [a1+96]:8 +0x118c into `v1` (`lw` at 0xf30).
  Loads 4 bytes from [a1+96]:8 +0x1190 into `v0` (`lw` at 0xf38).
  Loads 4 bytes from [a1+96]:8 +0x1194 into `a2` (`lw` at 0xf4c).
  Loads 4 bytes from [a1+96]:8 +0x1198 into `v1` (`lw` at 0xf54).
  Loads 4 bytes from [a1+96]:8 +0x119c into `v0` (`lw` at 0xf5c).
  Loads 4 bytes from [a1+96]:8 +0x11a0 into `at` (`lw` at 0xf64).
  Loads 4 bytes from [a1+96]:8 +0x11a4 into `a2` (`lw` at 0xf6c).
  Loads 4 bytes from [a1+96]:8 +0x11a8 into `v1` (`lw` at 0xf74).
  Loads 4 bytes from [a1+96]:8 +0x11ac into `v0` (`lw` at 0xf7c).
  Loads 4 bytes from [a1+96]:8 +0x11b0 into `at` (`lw` at 0xf84).
  Loads 4 bytes from [a1+96]:8 +0x11b4 into `v1` (`lw` at 0xf98).
  Loads 4 bytes from [a1+96]:8 +0x11b8 into `v0` (`lw` at 0xfa0).
  Loads 4 bytes from [a1+96]:8 +0x11bc into `at` (`lw` at 0xfa8).
  Loads 4 bytes from [a1+96]:8 +0x11c0 into `a2` (`lw` at 0xfb0).
  Loads 4 bytes from [a1+96]:8 +0x11c4 into `v1` (`lw` at 0xfb8).
  Loads 4 bytes from [a1+96]:8 +0x11c8 into `v0` (`lw` at 0xfc0).
  Loads 4 bytes from [a1+96]:8 +0x11cc into `at` (`lw` at 0xfc8).
  Loads 4 bytes from [a1+96]:8 +0x11d0 into `a2` (`lw` at 0xfd0).
  Loads 4 bytes from [a1+96]:8 +0x11d4 into `v0` (`lw` at 0xfe4).
  Loads 4 bytes from [a1+96]:8 +0x11d8 into `at` (`lw` at 0xfec).
  Loads 4 bytes from [a1+96]:8 +0x11dc into `a2` (`lw` at 0xff4).
  Loads 4 bytes from [a1+96]:8 +0x11e0 into `v1` (`lw` at 0xffc).
  Loads 4 bytes from [a1+96]:8 +0x11e4 into `v0` (`lw` at 0x1004).
  Loads 4 bytes from [a1+96]:8 +0x11e8 into `at` (`lw` at 0x100c).
  Loads 4 bytes from [a1+96]:8 +0x11ec into `a2` (`lw` at 0x1014).
  Loads 4 bytes from [a1+96]:8 +0x11f0 into `v1` (`lw` at 0x101c).
  Loads 4 bytes from [a1+96]:8 +0x106c into `a6` (`lw` at 0x1024).
  Loads 4 bytes from [a1+96]:8 +0x1070 into `v1` (`lw` at 0x104c).
  Loads 4 bytes from [a1+96]:8 +0x1074 into `v0` (`lw` at 0x1054).
  Loads 4 bytes from [a1+96]:8 +0x1078 into `at` (`lw` at 0x105c).
  Loads 4 bytes from [a1+96]:8 +0x107c into `a2` (`lw` at 0x1064).
  Loads 4 bytes from [a1+96]:8 +0x1080 into `v1` (`lw` at 0x106c).
  Loads 4 bytes from [a1+96]:8 +0x1084 into `v0` (`lw` at 0x1074).
  Loads 4 bytes from [a1+96]:8 +0x1088 into `at` (`lw` at 0x107c).
  Loads 4 bytes from [a1+96]:8 +0x108c into `a2` (`lw` at 0x1084).
  Loads 4 bytes from [a1+96]:8 +0x1090 into `v1` (`lw` at 0x108c).
  Loads 4 bytes from [a1+96]:8 +0x1094 into `v0` (`lw` at 0x1094).
  Loads 4 bytes from [a1+96]:8 +0x1098 into `at` (`lw` at 0x109c).
  Loads 4 bytes from [a1+96]:8 +0x109c into `a2` (`lw` at 0x10a4).
  Loads 4 bytes from [a1+96]:8 +0x10a0 into `v1` (`lw` at 0x10ac).
  Loads 4 bytes from [a1+96]:8 +0x10a4 into `v0` (`lw` at 0x10b4).
  Loads 4 bytes from [a1+96]:8 +0x10a8 into `at` (`lw` at 0x10bc).
  Loads 4 bytes from [a1+96]:8 +0x10ac into `a2` (`lw` at 0x10c4).
  Loads 4 bytes from [a1+96]:8 +0x10b0 into `v0` (`lw` at 0x10d8).
  Loads 4 bytes from [a1+96]:8 +0x10b4 into `at` (`lw` at 0x10e0).
  Loads 4 bytes from [a1+96]:8 +0x10b8 into `a2` (`lw` at 0x10e8).
  Loads 4 bytes from [a1+96]:8 +0x10bc into `v1` (`lw` at 0x10f0).
  Loads 4 bytes from [a1+96]:8 +0x10c0 into `v0` (`lw` at 0x10f8).
  Loads 4 bytes from [a1+96]:8 +0x10c4 into `at` (`lw` at 0x1100).
  Loads 4 bytes from [a1+96]:8 +0x10c8 into `a2` (`lw` at 0x1108).
  Loads 4 bytes from [a1+96]:8 +0x10cc into `v1` (`lw` at 0x1110).
  Loads 4 bytes from [a1+96]:8 +0x10d0 into `v0` (`lw` at 0x1118).
  Loads 4 bytes from [a1+96]:8 +0x10d4 into `at` (`lw` at 0x1120).
  Loads 4 bytes from [a1+96]:8 +0x10d8 into `a2` (`lw` at 0x1128).
  Loads 4 bytes from [a1+96]:8 +0x10dc into `v1` (`lw` at 0x1130).
  Loads 4 bytes from [a1+96]:8 +0x10e0 into `v0` (`lw` at 0x1138).
  Loads 4 bytes from [a1+96]:8 +0x10e4 into `at` (`lw` at 0x1140).
  Loads 4 bytes from [a1+96]:8 +0x10e8 into `a2` (`lw` at 0x1148).
  Loads 4 bytes from [a1+96]:8 +0x10ec into `v1` (`lw` at 0x1150).
  Loads 4 bytes from [a1+96]:8 +0x10f0 into `at` (`lw` at 0x1164).
  Loads 4 bytes from [a1+96]:8 +0x10f4 into `a2` (`lw` at 0x116c).
  Loads 4 bytes from [a1+96]:8 +0x10f8 into `v1` (`lw` at 0x1174).
  Loads 4 bytes from [a1+96]:8 +0x10fc into `v0` (`lw` at 0x117c).
  Loads 4 bytes from [a1+96]:8 +0x1100 into `at` (`lw` at 0x1184).
  Loads 4 bytes from [a1+96]:8 +0x1104 into `a2` (`lw` at 0x118c).
  Loads 4 bytes from [a1+96]:8 +0x1108 into `v1` (`lw` at 0x1194).
  Loads 4 bytes from [a1+96]:8 +0x110c into `v0` (`lw` at 0x119c).
  Loads 4 bytes from [a1+96]:8 +0x1110 into `at` (`lw` at 0x11a4).
  Loads 4 bytes from [a1+96]:8 +0x1114 into `a2` (`lw` at 0x11ac).
  Loads 4 bytes from [a1+96]:8 +0x1118 into `v1` (`lw` at 0x11b4).
  Loads 4 bytes from [a1+96]:8 +0x111c into `v0` (`lw` at 0x11bc).
  Loads 4 bytes from [a1+96]:8 +0x1120 into `at` (`lw` at 0x11c4).
  Loads 4 bytes from [a1+96]:8 +0x1124 into `a2` (`lw` at 0x11cc).
  Loads 4 bytes from [a1+96]:8 +0x1128 into `v1` (`lw` at 0x11d4).
  Loads 4 bytes from [a1+96]:8 +0x112c into `v0` (`lw` at 0x11dc).
  Loads 4 bytes from [a1+96]:8 +0x1130 into `a2` (`lw` at 0x11f0).
  Loads 4 bytes from [a1+96]:8 +0x1134 into `v1` (`lw` at 0x11f8).
  Loads 4 bytes from [a1+96]:8 +0x1138 into `v0` (`lw` at 0x1200).
  Loads 4 bytes from [a1+96]:8 +0x113c into `at` (`lw` at 0x1208).
  Loads 4 bytes from [a1+96]:8 +0x1140 into `a2` (`lw` at 0x1210).
  Loads 4 bytes from [a1+96]:8 +0x1144 into `v1` (`lw` at 0x1218).
  Loads 4 bytes from [a1+96]:8 +0x1148 into `v0` (`lw` at 0x1220).
  Loads 4 bytes from [a1+96]:8 +0x114c into `at` (`lw` at 0x1228).
  Loads 4 bytes from [a1+96]:8 +0x1150 into `a2` (`lw` at 0x1230).
  Loads 4 bytes from [a1+96]:8 +0x1154 into `v1` (`lw` at 0x1238).
  Loads 4 bytes from [a1+96]:8 +0x1158 into `v0` (`lw` at 0x1240).
  Loads 4 bytes from [a1+96]:8 +0x115c into `at` (`lw` at 0x1248).
  Loads 4 bytes from [a1+96]:8 +0x1160 into `a2` (`lw` at 0x1250).
  Loads 4 bytes from [a1+96]:8 +0x1164 into `v1` (`lw` at 0x1258).
  Loads 4 bytes from [a1+96]:8 +0x1168 into `v0` (`lw` at 0x1260).
  Loads 4 bytes from [a1+96]:8 +0x116c into `at` (`lw` at 0x1268).
  Loads 4 bytes from [a1+96]:8 +0xb0 into `at` (`lw` at 0x1288).
  Loads 4 bytes from [a1+96]:8 +0xb4 into `a7` (`lw` at 0x129c).
  Stores 4 bytes from `a7` to [a0+736]:8 +0x110000: 8 such accesses, including `sw` at 0x12a0, 0x12dc, 0x1318.
  Loads 4 bytes from [a1+96]:8 +0xb8 into `a0` (`lw` at 0x12ac).
  Stores 4 bytes from `a0` to [a0+736]:8 +0x110000: 9 such accesses, including `sw` at 0x12b0, 0x12ec, 0x1328.
  Loads 4 bytes from [a1+96]:8 +0xd8 into `v0` (`lw` at 0x12bc).
  Loads 4 bytes from [a1+96]:8 +0x90 into `t8` (`lw` at 0x12d0).
  Loads 4 bytes from [a1+96]:8 +0x94 into `a7` (`lw` at 0x12d8).
  Loads 4 bytes from [a1+96]:8 +0x98 into `a2` (`lw` at 0x12e0).
  Loads 4 bytes from [a1+96]:8 +0x9c into `a0` (`lw` at 0x12e8).
  Loads 4 bytes from [a1+96]:8 +0xa0 into `v1` (`lw` at 0x12f0).
  Loads 4 bytes from [a1+96]:8 +0xa4 into `v0` (`lw` at 0x12f8).
  Loads 4 bytes from [a1+96]:8 +0x1b94 into `t8` (`lw` at 0x130c).
  Loads 4 bytes from [a1+96]:8 +0x1b98 into `a7` (`lw` at 0x1314).
  Loads 4 bytes from [a1+96]:8 +0x1b9c into `a2` (`lw` at 0x131c).
  Loads 4 bytes from [a1+96]:8 +0x1ba0 into `a0` (`lw` at 0x1324).
  Loads 4 bytes from [a1+96]:8 +0x1ba4 into `v1` (`lw` at 0x132c).
  Loads 4 bytes from [a1+96]:8 +0x1ba8 into `v0` (`lw` at 0x1334).
  Loads 4 bytes from [a1+96]:8 +0x1bac into `t8` (`lw` at 0x1348).
  Loads 4 bytes from [a1+96]:8 +0x1bb0 into `a7` (`lw` at 0x1350).
  Loads 4 bytes from [a1+96]:8 +0x1bb4 into `a2` (`lw` at 0x1358).
  Loads 4 bytes from [a1+96]:8 +0x1bb8 into `a0` (`lw` at 0x1360).
  Loads 4 bytes from [a1+96]:8 +0x11f4 into `v0` (`lw` at 0x1374).
  Loads 4 bytes from [a1+96]:8 +0x11f8 into `at` (`lw` at 0x137c).
  Loads 4 bytes from [a1+96]:8 +0x11fc into `at` (`lw` at 0x138c).
  Loads 4 bytes from ? (base unknown) into `a2`: 12 such accesses, including `lw` at 0x13bc, 0x14a4, 0x14bc.
  Loads 4 bytes from ? (base unknown) into `v0`: 15 such accesses, including `lw` at 0x1408, 0x1454, 0x149c.
  Loads 4 bytes from ? (base unknown) into `v1`: 14 such accesses, including `lw` at 0x1494, 0x14ac, 0x14c4.
  Loads 4 bytes from ? (base unknown) into `at` (`lw` at 0x159c, 0x15e8, 0x17bc).
  Loads 4 bytes from [a1+96]:8 +0x468 into `a0` (`lw` at 0x160c).
  Loads 4 bytes from [a1+96]:8 +0x1a04 into `at` (`lw` at 0x164c).
  Loads 4 bytes from [a1+96]:8 +0x1a08 into `t8` (`lw` at 0x1654).
  Loads 4 bytes from [a1+96]:8 +0x1a0c into `a7` (`lw` at 0x165c).
  Loads 4 bytes from [a1+96]:8 +0x1cb4 into `a2` (`lw` at 0x1670).
  Loads 4 bytes from [a1+96]:8 +0xf8 into `v1` (`lw` at 0x1684).
  Loads 4 bytes from [a1+96]:8 +0xfc into `v0` (`lw` at 0x168c).
  Loads 4 bytes from [a1+96]:8 +0x100 into `at` (`lw` at 0x1694).
  Loads 4 bytes from [a1+96]:8 +0x104 into `t8` (`lw` at 0x169c).
  Loads 4 bytes from [a1+96]:8 +0x108 into `a7` (`lw` at 0x16a4).
  Loads 4 bytes from [a1+96]:8 +0x10c into `a6` (`lw` at 0x16ac).
  Loads 4 bytes from [a1+96]:8 +0x110 into `a2` (`lw` at 0x16b4).
  Loads 4 bytes from [a1+96]:8 +0x114 into `a0` (`lw` at 0x16bc).
  Loads 4 bytes from [a1+96]:8 +0x118 into `v1` (`lw` at 0x16c4).
  Loads 4 bytes from [a1+96]:8 +0x11c into `v0` (`lw` at 0x16cc).
  Loads 4 bytes from [a1+96]:8 +0x120 into `at` (`lw` at 0x16d4).
  Loads 4 bytes from [a1+96]:8 +0x124 into `t8` (`lw` at 0x16dc).
  Loads 4 bytes from [a1+96]:8 +0x128 into `a7` (`lw` at 0x16e4).
  Loads 4 bytes from [a1+96]:8 +0x12c into `a6` (`lw` at 0x16ec).
  Loads 4 bytes from [a1+96]:8 +0x130 into `a2` (`lw` at 0x16f4).
  Loads 4 bytes from [a1+96]:8 +0x134 into `a0` (`lw` at 0x16fc).
  Loads 4 bytes from [a1+96]:8 +0x1ca4 into `v0` (`lw` at 0x1720).
  Loads 4 bytes from [a1+96]:8 +0x1ca8 into `at` (`lw` at 0x1728).
  Loads 4 bytes from [a1+96]:8 +0x2b40 into `at` (`lw` at 0x1800).
  Loads 4 bytes from [a1+96]:8 +0x2b44 into `a2` (`lw` at 0x1808).
  Loads 4 bytes from [a1+96]:8 +0x2b48 into `v1` (`lw` at 0x1810).
  Loads 4 bytes from [a1+96]:8 +0x2b4c into `v0` (`lw` at 0x1818).
  Loads 4 bytes from [a1+96]:8 +0x2b50 into `at` (`lw` at 0x1820).
  Loads 4 bytes from [a1+96]:8 +0x2b54 into `a2` (`lw` at 0x1828).
  Loads 4 bytes from [a1+96]:8 +0x2b58 into `v1` (`lw` at 0x1830).
  Loads 4 bytes from [a1+96]:8 +0x2b5c into `v0` (`lw` at 0x1838).
  Loads 4 bytes from [a1+96]:8 +0x2b60 into `a2` (`lw` at 0x184c).
  Loads 4 bytes from [a1+96]:8 +0x2b64 into `v1` (`lw` at 0x1854).
  Loads 4 bytes from [a1+96]:8 +0x2b68 into `at` (`lw` at 0x18a4).
  Loads 4 bytes from [a1+96]:8 +0x2b6c into `v1` (`lw` at 0x191c).
  Loads 4 bytes from [a1+96]:8 +0x2b70 into `v0` (`lw` at 0x1924).
  Stores 4 bytes from `a4` to [a0+736]:8 +0x110000 (`sw` at 0x1968).
  Loads 4 bytes from [a1+96]:8 +0x1174 into `v0` (`lw` at 0x1984).
  Loads 4 bytes from [a1+96]:8 +0x1178 into `at` (`lw` at 0x198c).
  Loads 4 bytes from [a1+96]:8 +0x117c into `a2` (`lw` at 0x1994).
  Loads 4 bytes from [a1+96]:8 +0x1180 into `v1` (`lw` at 0x199c).
  Loads 4 bytes from [a1+96]:8 +0x1184 into `v0` (`lw` at 0x19a4).
  Loads 4 bytes from [a1+96]:8 +0x1188 into `at` (`lw` at 0x19ac).
  Loads 4 bytes from [a1+96]:8 +0x118c into `a2` (`lw` at 0x19b4).
  Loads 4 bytes from [a1+96]:8 +0x1190 into `v1` (`lw` at 0x19bc).
  Loads 4 bytes from [a1+96]:8 +0x1194 into `at` (`lw` at 0x19d0).
  Loads 4 bytes from [a1+96]:8 +0x1198 into `a2` (`lw` at 0x19d8).
  Loads 4 bytes from [a1+96]:8 +0x119c into `v1` (`lw` at 0x19e0).
  Loads 4 bytes from [a1+96]:8 +0x11a0 into `v0` (`lw` at 0x19e8).
  Loads 4 bytes from [a1+96]:8 +0x11a4 into `at` (`lw` at 0x19f0).
  Loads 4 bytes from [a1+96]:8 +0x11a8 into `a2` (`lw` at 0x19f8).
  Loads 4 bytes from [a1+96]:8 +0x11ac into `v1` (`lw` at 0x1a00).
  Loads 4 bytes from [a1+96]:8 +0x11b0 into `v0` (`lw` at 0x1a08).
  Loads 4 bytes from [a1+96]:8 +0x11b4 into `a2` (`lw` at 0x1a1c).
  Loads 4 bytes from [a1+96]:8 +0x11b8 into `v1` (`lw` at 0x1a24).
  Loads 4 bytes from [a1+96]:8 +0x11bc into `v0` (`lw` at 0x1a2c).
  Loads 4 bytes from [a1+96]:8 +0x11c0 into `at` (`lw` at 0x1a34).
  Loads 4 bytes from [a1+96]:8 +0x11c4 into `a2` (`lw` at 0x1a3c).
  Loads 4 bytes from [a1+96]:8 +0x11c8 into `v1` (`lw` at 0x1a44).
  Loads 4 bytes from [a1+96]:8 +0x11cc into `v0` (`lw` at 0x1a4c).
  Loads 4 bytes from [a1+96]:8 +0x11d0 into `at` (`lw` at 0x1a54).
  Loads 4 bytes from [a1+96]:8 +0x11d4 into `v1` (`lw` at 0x1a68).
  Loads 4 bytes from [a1+96]:8 +0x11d8 into `v0` (`lw` at 0x1a70).
  Loads 4 bytes from [a1+96]:8 +0x11dc into `at` (`lw` at 0x1a78).
  Loads 4 bytes from [a1+96]:8 +0x11e0 into `a2` (`lw` at 0x1a80).
  Loads 4 bytes from [a1+96]:8 +0x11e4 into `v1` (`lw` at 0x1a88).
  Loads 4 bytes from [a1+96]:8 +0x11e8 into `v0` (`lw` at 0x1a90).
  Loads 4 bytes from [a1+96]:8 +0x11ec into `at` (`lw` at 0x1a98).
  Loads 4 bytes from [a1+96]:8 +0x11f0 into `a2` (`lw` at 0x1aa0).
  Loads 4 bytes from [a1+96]:8 +0x1070 into `v0` (`lw` at 0x1ab8, 0x1d0c).
  Loads 4 bytes from [a1+96]:8 +0x1074 into `at` (`lw` at 0x1ac0, 0x1d14).
  Loads 4 bytes from [a1+96]:8 +0x1078 into `a2` (`lw` at 0x1ac8, 0x1d1c).
  Loads 4 bytes from [a1+96]:8 +0x107c into `v1` (`lw` at 0x1ad0, 0x1d24).
  Loads 4 bytes from [a1+96]:8 +0x1080 into `v0` (`lw` at 0x1ad8).
  Loads 4 bytes from [a1+96]:8 +0x1084 into `at` (`lw` at 0x1ae0).
  Loads 4 bytes from [a1+96]:8 +0x1088 into `a2` (`lw` at 0x1ae8).
  Loads 4 bytes from [a1+96]:8 +0x108c into `v1` (`lw` at 0x1af0).
  Loads 4 bytes from [a1+96]:8 +0x1090 into `v0` (`lw` at 0x1af8).
  Loads 4 bytes from [a1+96]:8 +0x1094 into `at` (`lw` at 0x1b00).
  Loads 4 bytes from [a1+96]:8 +0x1098 into `a2` (`lw` at 0x1b08).
  Loads 4 bytes from [a1+96]:8 +0x109c into `v1` (`lw` at 0x1b10).
  Loads 4 bytes from [a1+96]:8 +0x10a0 into `v0` (`lw` at 0x1b18).
  Loads 4 bytes from [a1+96]:8 +0x10a4 into `at` (`lw` at 0x1b20).
  Loads 4 bytes from [a1+96]:8 +0x10a8 into `a2` (`lw` at 0x1b28).
  Loads 4 bytes from [a1+96]:8 +0x10ac into `v1` (`lw` at 0x1b30).
  Loads 4 bytes from [a1+96]:8 +0x10b0 into `at` (`lw` at 0x1b44).
  Loads 4 bytes from [a1+96]:8 +0x10b4 into `a2` (`lw` at 0x1b4c).
  Loads 4 bytes from [a1+96]:8 +0x10b8 into `v1` (`lw` at 0x1b54).
  Loads 4 bytes from [a1+96]:8 +0x10bc into `v0` (`lw` at 0x1b5c).
  Loads 4 bytes from [a1+96]:8 +0x10c0 into `at` (`lw` at 0x1b64).
  Loads 4 bytes from [a1+96]:8 +0x10c4 into `a2` (`lw` at 0x1b6c).
  Loads 4 bytes from [a1+96]:8 +0x10c8 into `v1` (`lw` at 0x1b74).
  Loads 4 bytes from [a1+96]:8 +0x10cc into `v0` (`lw` at 0x1b7c).
  Loads 4 bytes from [a1+96]:8 +0x10d0 into `at` (`lw` at 0x1b84).
  Loads 4 bytes from [a1+96]:8 +0x10d4 into `a2` (`lw` at 0x1b8c).
  Loads 4 bytes from [a1+96]:8 +0x10d8 into `v1` (`lw` at 0x1b94).
  Loads 4 bytes from [a1+96]:8 +0x10dc into `v0` (`lw` at 0x1b9c).
  Loads 4 bytes from [a1+96]:8 +0x10e0 into `at` (`lw` at 0x1ba4).
  Loads 4 bytes from [a1+96]:8 +0x10e4 into `a2` (`lw` at 0x1bac).
  Loads 4 bytes from [a1+96]:8 +0x10e8 into `v1` (`lw` at 0x1bb4).
  Loads 4 bytes from [a1+96]:8 +0x10ec into `v0` (`lw` at 0x1bbc).
  Loads 4 bytes from [a1+96]:8 +0x10f0 into `a2` (`lw` at 0x1bd0).
  Loads 4 bytes from [a1+96]:8 +0x10f4 into `v1` (`lw` at 0x1bd8).
  Loads 4 bytes from [a1+96]:8 +0x10f8 into `v0` (`lw` at 0x1be0).
  Loads 4 bytes from [a1+96]:8 +0x10fc into `at` (`lw` at 0x1be8).
  Loads 4 bytes from [a1+96]:8 +0x1100 into `a2` (`lw` at 0x1bf0).
  Loads 4 bytes from [a1+96]:8 +0x1104 into `v1` (`lw` at 0x1bf8).
  Loads 4 bytes from [a1+96]:8 +0x1108 into `v0` (`lw` at 0x1c00).
  Loads 4 bytes from [a1+96]:8 +0x110c into `at` (`lw` at 0x1c08).
  Loads 4 bytes from [a1+96]:8 +0x1110 into `a2` (`lw` at 0x1c10).
  Loads 4 bytes from [a1+96]:8 +0x1114 into `v1` (`lw` at 0x1c18).
  Loads 4 bytes from [a1+96]:8 +0x1118 into `v0` (`lw` at 0x1c20).
  Loads 4 bytes from [a1+96]:8 +0x111c into `at` (`lw` at 0x1c28).
  Loads 4 bytes from [a1+96]:8 +0x1120 into `a2` (`lw` at 0x1c30).
  Loads 4 bytes from [a1+96]:8 +0x1124 into `v1` (`lw` at 0x1c38).
  Loads 4 bytes from [a1+96]:8 +0x1128 into `v0` (`lw` at 0x1c40).
  Loads 4 bytes from [a1+96]:8 +0x112c into `at` (`lw` at 0x1c48).
  Loads 4 bytes from [a1+96]:8 +0x1130 into `v1` (`lw` at 0x1c5c).
  Loads 4 bytes from [a1+96]:8 +0x1134 into `v0` (`lw` at 0x1c64).
  Loads 4 bytes from [a1+96]:8 +0x1138 into `at` (`lw` at 0x1c6c).
  Loads 4 bytes from [a1+96]:8 +0x113c into `a2` (`lw` at 0x1c74).
  Loads 4 bytes from [a1+96]:8 +0x1140 into `v1` (`lw` at 0x1c7c).
  Loads 4 bytes from [a1+96]:8 +0x1144 into `v0` (`lw` at 0x1c84).
  Loads 4 bytes from [a1+96]:8 +0x1148 into `at` (`lw` at 0x1c8c).
  Loads 4 bytes from [a1+96]:8 +0x114c into `a2` (`lw` at 0x1c94).
  Loads 4 bytes from [a1+96]:8 +0x1150 into `v1` (`lw` at 0x1c9c).
  Loads 4 bytes from [a1+96]:8 +0x1154 into `v0` (`lw` at 0x1ca4).
  Loads 4 bytes from [a1+96]:8 +0x1158 into `at` (`lw` at 0x1cac).
  Loads 4 bytes from [a1+96]:8 +0x115c into `a2` (`lw` at 0x1cb4).
  Loads 4 bytes from [a1+96]:8 +0x1160 into `v1` (`lw` at 0x1cbc).
  Loads 4 bytes from [a1+96]:8 +0x1164 into `v0` (`lw` at 0x1cc4).
  Loads 4 bytes from [a1+96]:8 +0x1168 into `at` (`lw` at 0x1ccc).
  Loads 4 bytes from [a1+96]:8 +0x116c into `a2` (`lw` at 0x1cd4).
  Loads 4 bytes from [a1+96]:8 +0x1174 into `v1` (`lw` at 0x1d3c).
  Loads 4 bytes from [a1+96]:8 +0x1178 into `v0` (`lw` at 0x1d44).
  Loads 4 bytes from [a1+96]:8 +0x117c into `at` (`lw` at 0x1d4c).
  Loads 4 bytes from [a1+96]:8 +0x1180 into `a2` (`lw` at 0x1d54).
  Loads 4 bytes from [a1+96]:8 +0x1184 into `v1` (`lw` at 0x1d5c).
  Loads 4 bytes from [a1+96]:8 +0x1188 into `v0` (`lw` at 0x1d64).
  Loads 4 bytes from [a1+96]:8 +0x118c into `at` (`lw` at 0x1d6c).
  Loads 4 bytes from [a1+96]:8 +0x1190 into `a2` (`lw` at 0x1d74).
  Loads 4 bytes from [a1+96]:8 +0x1070 into `a2` (`lw` at 0x1d88).
  Loads 4 bytes from [a1+96]:8 +0x1074 into `v1` (`lw` at 0x1d90).
  Loads 4 bytes from [a1+96]:8 +0x1078 into `v0` (`lw` at 0x1d98).
  Loads 4 bytes from [a1+96]:8 +0x107c into `at` (`lw` at 0x1da0).
  Loads 4 bytes from [a1+96]:8 +0x1080 into `a2` (`lw` at 0x1da8).
  Loads 4 bytes from [a1+96]:8 +0x1084 into `v1` (`lw` at 0x1db0).
  Loads 4 bytes from [a1+96]:8 +0x1088 into `v0` (`lw` at 0x1db8).
  Loads 4 bytes from [a1+96]:8 +0x108c into `at` (`lw` at 0x1dc0).
  Loads 4 bytes from [a1+96]:8 +0x1090 into `a2` (`lw` at 0x1dc8).
  Loads 4 bytes from [a1+96]:8 +0x1094 into `v1` (`lw` at 0x1dd0).
  Loads 4 bytes from [a1+96]:8 +0x1098 into `v0` (`lw` at 0x1dd8).
  Loads 4 bytes from [a1+96]:8 +0x109c into `at` (`lw` at 0x1de0).
  Loads 4 bytes from [a1+96]:8 +0x10a0 into `a2` (`lw` at 0x1de8).
  Loads 4 bytes from [a1+96]:8 +0x10a4 into `v1` (`lw` at 0x1df0).
  Loads 4 bytes from [a1+96]:8 +0x10a8 into `v0` (`lw` at 0x1df8).
  Loads 4 bytes from [a1+96]:8 +0x10ac into `at` (`lw` at 0x1e00).
  Calls `odsyPushBufferSelect` via direct with a0=a1 at entry (arg1), a1=[a0+736]:8, a2=?, a3=0x96, a4=0x110000, a5=[a1+96]:8, a7=one of 0x0, 0x1, 0x10407 (`jal` at 0x17d8).
  The `beq` at 0xab0 is taken when 0 >= a3(=[a1]) (unsigned) and falls through when 0 < a3(=[a1]) (unsigned).
  The `beq` at 0xabc is taken when at(=[a0+732]) == a3(=[a1]) and falls through when at(=[a0+732]) != a3(=[a1]).
  The `beq` at 0xee0 is taken when a6(=[[a1+96]:8+4464]) == t8(=0x1) and falls through when a6(=[[a1+96]:8+4464]) != t8(=0x1).
  The `beq` at 0xee8 is taken when a6(=[[a1+96]:8+4464]) == at(=0x2) and falls through when a6(=[[a1+96]:8+4464]) != at(=0x2).
  The `beq` at 0xef0 is taken when a6(=[[a1+96]:8+4464]) == v0(=0x3) and falls through when a6(=[[a1+96]:8+4464]) != v0(=0x3).
  The `beq` at 0x102c is taken when a6(=[[a1+96]:8+4204]) == t8(=0x1) and falls through when a6(=[[a1+96]:8+4204]) != t8(=0x1).
  The `beq` at 0x1034 is taken when a6(=[[a1+96]:8+4204]) == v1(=0x2) and falls through when a6(=[[a1+96]:8+4204]) != v1(=0x2).
  The `beq` at 0x103c is taken when a6(=[[a1+96]:8+4204]) == a2(=0x3) and falls through when a6(=[[a1+96]:8+4204]) != a2(=0x3).
  The `beq` at 0x1274 is taken when a7(=one of 0x0, 0x1) == 0 and falls through when a7(=one of 0x0, 0x1) != 0.
  The `bne` at 0x13c4 is taken when a6(?) < 0x10 (signed) and falls through when a6(?) >= 0x10 (signed).
  The `bne` at 0x13d0 is taken when a0(?) < 0x10 (signed) and falls through when a0(?) >= 0x10 (signed).
  The `bne` at 0x1410 is taken when a6(?) < 0x10 (signed) and falls through when a6(?) >= 0x10 (signed).
  The `bne` at 0x141c is taken when a0(?) < 0x10 (signed) and falls through when a0(?) >= 0x10 (signed).
  The `bne` at 0x145c is taken when a6(?) < 0x10 (signed) and falls through when a6(?) >= 0x10 (signed).
  The `bne` at 0x1468 is taken when a7(?) < 0x10 (signed) and falls through when a7(?) >= 0x10 (signed).
  The `bne` at 0x15a0 is taken when a0(?) < 0x10 (signed) and falls through when a0(?) >= 0x10 (signed).
  The `bne` at 0x15ec is taken when a0(?) < 0x40 (signed) and falls through when a0(?) >= 0x40 (signed).
  The `bgez` at 0x17c4 is taken when a0(?) >= 0 (signed) and falls through when a0(?) < 0 (signed).
  The `beq` at 0x17cc is taken when t1(?) == 0 and falls through when t1(?) != 0.
  The `jr` at 0x1970 returns with v0 = ?.

- `odsyRestoreXform` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`, 0x1e0c, 1648 bytes) Inferred.
  Loads 4 bytes from a1 (arg1 at entry) +0x0 into `a2` (`lw` at 0x1e0c).
  Loads 8 bytes from a1 (arg1 at entry) +0x60 into `a4` (`ld` at 0x1e10).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `a5` (`ld` at 0x1e24).
  Loads 4 bytes from a0 (arg0 at entry) +0x2dc into `at` (`lw` at 0x1e28).
  Loads 4 bytes from [a1+96]:8 +0x2adc into `a2` (`lw` at 0x1e48).
  Loads 4 bytes from [a1+96]:8 +0x26a0 into `a7` (`lw` at 0x1e84).
  Stores 4 bytes from `v0` to [a0+736]:8 +0x110000: 20 such accesses, including `sw` at 0x1eb4, 0x1f34, 0x2028.
  Stores 4 bytes from `t8` to [a0+736]:8 +0x110000 (`sw` at 0x1eb8).
  Loads 4 bytes from ? (base unknown) into `a1`: 6 such accesses, including `lw` at 0x1ed4, 0x1f84, 0x1fa0.
  Stores 4 bytes from `a1` to [a0+736]:8 +0x110000: 24 such accesses, including `sw` at 0x1ee0, 0x1f88, 0x1fa8.
  Stores 4 bytes from `at` to [a0+736]:8 +0x110000: 29 such accesses, including `sw` at 0x1ef4, 0x1f14, 0x1f3c.
  Stores 4 bytes from `t1` to [a0+736]:8 +0x110000: 4 such accesses, including `sw` at 0x1f1c, 0x20cc, 0x20f4.
  Stores 4 bytes from `t0` to [a0+736]:8 +0x110000: 4 such accesses, including `sw` at 0x1f24, 0x1f74, 0x1fb4.
  Loads 4 bytes from [a1+96]:8 +0x263c into `v1` (`lw` at 0x1f28).
  Stores 4 bytes from `v1` to [a0+736]:8 +0x110000: 26 such accesses, including `sw` at 0x1f2c, 0x1f54, 0x1f6c.
  Loads 4 bytes from [a1+96]:8 +0x2640 into `v0` (`lw` at 0x1f30).
  Loads 4 bytes from [a1+96]:8 +0x2644 into `at` (`lw` at 0x1f38).
  Loads 4 bytes from [a1+96]:8 +0x2648 into `v1` (`lw` at 0x1f48).
  Loads 4 bytes from ? (base unknown) into `at`: 5 such accesses, including `lw` at 0x1f7c, 0x1fb8, 0x1ff4.
  Loads 4 bytes from ? (base unknown) into `v1` (`lw` at 0x1f8c, 0x1fc8, 0x2004).
  Loads 4 bytes from ? (base unknown) into `v0` (`lw` at 0x201c).
  Loads 4 bytes from [a1+96]:8 +0x26ac into `t3` (`lw` at 0x2088).
  Stores 4 bytes from `zero` to [a1+96]:8 +0x26ac: 5 such accesses, including `sw` at 0x208c, 0x2180, 0x221c.
  Stores 4 bytes from `a2` to [a0+736]:8 +0x110000: 5 such accesses, including `sw` at 0x209c, 0x218c, 0x2220.
  Stores 4 bytes from `a0` to [a0+736]:8 +0x110000: 4 such accesses, including `sw` at 0x20a4, 0x2198, 0x2238.
  Loads 4 bytes from [a1+96]:8 +0x1a10 into `a1` (`lw` at 0x20a8).
  Loads 4 bytes from [a1+96]:8 +0x1a14 into `v1` (`lw` at 0x20b0).
  Loads 4 bytes from [a1+96]:8 +0x1a18 into `v0` (`lw` at 0x20b8).
  Loads 4 bytes from [a1+96]:8 +0x1a1c into `at` (`lw` at 0x20c0).
  Loads 4 bytes from [a1+96]:8 +0x1a20 into `t1` (`lw` at 0x20c8).
  Loads 4 bytes from [a1+96]:8 +0x1a24 into `a1` (`lw` at 0x20d0).
  Loads 4 bytes from [a1+96]:8 +0x1a28 into `v1` (`lw` at 0x20d8).
  Loads 4 bytes from [a1+96]:8 +0x1a2c into `v0` (`lw` at 0x20e0).
  Loads 4 bytes from [a1+96]:8 +0x1a30 into `at` (`lw` at 0x20e8).
  Loads 4 bytes from [a1+96]:8 +0x1a34 into `t1` (`lw` at 0x20f0).
  Loads 4 bytes from [a1+96]:8 +0x1a38 into `a1` (`lw` at 0x20f8).
  Loads 4 bytes from [a1+96]:8 +0x1a3c into `v1` (`lw` at 0x2100).
  Loads 4 bytes from [a1+96]:8 +0x1a40 into `v0` (`lw` at 0x2108).
  Loads 4 bytes from [a1+96]:8 +0x1a44 into `at` (`lw` at 0x2110).
  Loads 4 bytes from [a1+96]:8 +0x1a48 into `t1` (`lw` at 0x2118).
  Loads 4 bytes from [a1+96]:8 +0x1a4c into `a1` (`lw` at 0x2120).
  Stores 4 bytes from `t1` to [a1+96]:8 +0x26ac (`sw` at 0x2130).
  Loads 4 bytes from [a1+96]:8 +0x1a50 into `at` (`lw` at 0x2148).
  Loads 4 bytes from [a1+96]:8 +0x1a54 into `a1` (`lw` at 0x2150).
  Loads 4 bytes from [a1+96]:8 +0x1a58 into `v1` (`lw` at 0x2158).
  Loads 4 bytes from [a1+96]:8 +0x1a5c into `v0` (`lw` at 0x2168).
  Stores 4 bytes from `v0` to [a1+96]:8 +0x26ac (`sw` at 0x2190, 0x22cc).
  Loads 4 bytes from [a1+96]:8 +0x1a60 into `a1` (`lw` at 0x219c).
  Loads 4 bytes from [a1+96]:8 +0x1a64 into `v1` (`lw` at 0x21a4).
  Loads 4 bytes from [a1+96]:8 +0x1a68 into `v0` (`lw` at 0x21ac).
  Loads 4 bytes from [a1+96]:8 +0x1a6c into `at` (`lw` at 0x21b4).
  Loads 4 bytes from [a1+96]:8 +0x1a70 into `a1` (`lw` at 0x21bc).
  Loads 4 bytes from [a1+96]:8 +0x1a74 into `v1` (`lw` at 0x21c4).
  Loads 4 bytes from [a1+96]:8 +0x1a78 into `v0` (`lw` at 0x21cc).
  Loads 4 bytes from [a1+96]:8 +0x1a7c into `at` (`lw` at 0x21d4).
  Loads 4 bytes from [a1+96]:8 +0x1a80 into `a1` (`lw` at 0x21dc).
  Loads 4 bytes from [a1+96]:8 +0x1a84 into `v1` (`lw` at 0x21e4).
  Loads 4 bytes from [a1+96]:8 +0x1a88 into `v0` (`lw` at 0x21ec).
  Loads 4 bytes from [a1+96]:8 +0x1a8c into `at` (`lw` at 0x21f4).
  Loads 4 bytes from [a1+96]:8 +0x1a90 into `a1` (`lw` at 0x21fc).
  Loads 4 bytes from [a1+96]:8 +0x1a94 into `v1` (`lw` at 0x2204).
  Loads 4 bytes from [a1+96]:8 +0x1a98 into `v0` (`lw` at 0x220c).
  Loads 4 bytes from [a1+96]:8 +0x1a9c into `at` (`lw` at 0x2214).
  Stores 4 bytes from `a1` to [a1+96]:8 +0x26ac (`sw` at 0x222c).
  Loads 4 bytes from [a1+96]:8 +0x1aa0 into `v0` (`lw` at 0x223c).
  Loads 4 bytes from [a1+96]:8 +0x1aa4 into `at` (`lw` at 0x2244).
  Loads 4 bytes from [a1+96]:8 +0x1aa8 into `a1` (`lw` at 0x224c).
  Loads 4 bytes from [a1+96]:8 +0x1aac into `v1` (`lw` at 0x2254).
  Loads 4 bytes from [a1+96]:8 +0x1ab0 into `v0` (`lw` at 0x225c).
  Loads 4 bytes from [a1+96]:8 +0x1ab4 into `at` (`lw` at 0x2264).
  Loads 4 bytes from [a1+96]:8 +0x1ab8 into `a1` (`lw` at 0x226c).
  Loads 4 bytes from [a1+96]:8 +0x1abc into `v1` (`lw` at 0x2274).
  Loads 4 bytes from [a1+96]:8 +0x1ac0 into `v0` (`lw` at 0x227c).
  Loads 4 bytes from [a1+96]:8 +0x1ac4 into `at` (`lw` at 0x2284).
  Loads 4 bytes from [a1+96]:8 +0x1ac8 into `a1` (`lw` at 0x228c).
  Loads 4 bytes from [a1+96]:8 +0x1acc into `v1` (`lw` at 0x2294).
  Loads 4 bytes from [a1+96]:8 +0x1ad0 into `v0` (`lw` at 0x229c).
  Loads 4 bytes from [a1+96]:8 +0x1ad4 into `at` (`lw` at 0x22a4).
  Loads 4 bytes from [a1+96]:8 +0x1ad8 into `a1` (`lw` at 0x22ac).
  Loads 4 bytes from [a1+96]:8 +0x1adc into `v1` (`lw` at 0x22b4).
  Loads 4 bytes from [a1+96]:8 +0x1ae0 into `a1` (`lw` at 0x22dc).
  Loads 4 bytes from [a1+96]:8 +0x1ae4 into `v1` (`lw` at 0x22e4).
  Loads 4 bytes from [a1+96]:8 +0x1ae8 into `v0` (`lw` at 0x22ec).
  Loads 4 bytes from [a1+96]:8 +0x1aec into `at` (`lw` at 0x22f4).
  Loads 4 bytes from [a1+96]:8 +0x1af0 into `a1` (`lw` at 0x22fc).
  Loads 4 bytes from [a1+96]:8 +0x1af4 into `v1` (`lw` at 0x2304).
  Loads 4 bytes from [a1+96]:8 +0x1af8 into `v0` (`lw` at 0x230c).
  Loads 4 bytes from [a1+96]:8 +0x1afc into `at` (`lw` at 0x2314).
  Loads 4 bytes from [a1+96]:8 +0x1b00 into `a1` (`lw` at 0x231c).
  Loads 4 bytes from [a1+96]:8 +0x1b04 into `v1` (`lw` at 0x2324).
  Loads 4 bytes from [a1+96]:8 +0x1b08 into `v0` (`lw` at 0x232c).
  Loads 4 bytes from [a1+96]:8 +0x1b0c into `at` (`lw` at 0x2334).
  Loads 4 bytes from [a1+96]:8 +0x1b10 into `a1` (`lw` at 0x233c).
  Loads 4 bytes from [a1+96]:8 +0x1b14 into `v1` (`lw` at 0x2344).
  Loads 4 bytes from [a1+96]:8 +0x1b18 into `v0` (`lw` at 0x234c).
  Loads 4 bytes from [a1+96]:8 +0x1b1c into `at` (`lw` at 0x2354).
  Stores 4 bytes from `t3` to [a1+96]:8 +0x26ac (`sw` at 0x2374).
  Loads 4 bytes from ? (base unknown) into `t8` (`lw` at 0x23f4).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=[[a1+96]:8+10972], a3=[a0+736]:8+0x110000, a4=[a1+96]:8, a6=0xd, a7=0xb (`jal` at 0x2458).
  Calls `curproc` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2460).
  Calls `psignal` via direct with a0=ret(curproc), a1=0x9, a2=?, a3=? (`jal` at 0x246c).
  The `beq` at 0x1e20 is taken when a2(=[a1]) == 0 and falls through when a2(=[a1]) != 0.
  The `beq` at 0x1e2c is taken when at(=[a0+732]) == a2(=[a1]) and falls through when at(=[a0+732]) != a2(=[a1]).
  The `beq` at 0x1e4c is taken when t2(=one of 0x0, 0x1) == 0 and falls through when t2(=one of 0x0, 0x1) != 0.
  The `beq` at 0x1e78 is taken when a0(?) >= 0x200 (signed) and falls through when a0(?) < 0x200 (signed).
  The `beq` at 0x1e80 is taken when a0(?) == t0(=0x1e0) and falls through when a0(?) != t0(=0x1e0).
  The `bne` at 0x1e88 is taken when a0(?) != t1(=0x140) and falls through when a0(?) == t1(=0x140).
  The `beq` at 0x1eb0 is taken when a0(?) == t9(=0xa0) and falls through when a0(?) != t9(=0xa0).
  The `bne` at 0x1edc is taken when a5(?) < 0x10 (signed) and falls through when a5(?) >= 0x10 (signed).
  The `beq` at 0x1f00 is taken when t2(=one of 0x0, 0x1) == 0 and falls through when t2(=one of 0x0, 0x1) != 0.
  The `bne` at 0x2024 is taken when a7(?) < 0x8 (signed) and falls through when a7(?) >= 0x8 (signed).
  The `beq` at 0x2040 is taken when a2(=[[a1+96]:8+10972]) >= 0xff (unsigned) and falls through when a2(=[[a1+96]:8+10972]) < 0xff (unsigned).
  The `beq` at 0x204c is taken when a2(=[[a1+96]:8+10972]) == 0 and falls through when a2(=[[a1+96]:8+10972]) != 0.
  The `bne` at 0x2080 is taken when a0(?) < a2(=[[a1+96]:8+10972]) (unsigned) and falls through when a0(?) >= a2(=[[a1+96]:8+10972]) (unsigned).
  The `beq` at 0x2188 is taken when t2(=one of 0x0, 0x1) == 0 and falls through when t2(=one of 0x0, 0x1) != 0.
  The `beq` at 0x23ac is taken when a0(?) >= 0x16 (signed) and falls through when a0(?) < 0x16 (signed).
  The `beq` at 0x23b4 is taken when a0(?) == a2(=0xe) and falls through when a0(?) != a2(=0xe).
  The `beq` at 0x23bc is taken when a0(?) == a6(=0xd) and falls through when a0(?) != a6(=0xd).
  The `beq` at 0x23c4 is taken when a0(?) == a7(=0xb) and falls through when a0(?) != a7(=0xb).
  The `beq` at 0x23cc is taken when a0(?) == t0(=0xf) and falls through when a0(?) != t0(=0xf).
  The `beq` at 0x23d4 is taken when a0(?) == t1(=0x10) and falls through when a0(?) != t1(=0x10).
  The `beq` at 0x23dc is taken when a0(?) == t2(=0x6) and falls through when a0(?) != t2(=0x6).
  The `beq` at 0x23fc is taken when t8(?) == 0 and falls through when t8(?) != 0.
  The `jr` at 0x2420 returns with v0 = ?.

- `odsyRestoreVB` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`, 0x247c, 4136 bytes) Inferred.
  Loads 4 bytes from a1 (arg1 at entry) +0x0 into `a3` (`lw` at 0x2484).
  Loads 8 bytes from a1 (arg1 at entry) +0x70 into `s0` (`ld` at 0x2488).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `s3` (`ld` at 0x2498).
  Loads 4 bytes from a0 (arg0 at entry) +0x2dc into `at` (`lw` at 0x24a4).
  Loads 4 bytes from a2 (arg2 at entry) +0x0 into `a3`: 4 such accesses, including `lw` at 0x24c4, 0x2a9c, 0x2e04.
  Loads 4 bytes from ? (base unknown) into `a3`: 17 such accesses, including `lw` at 0x24dc, 0x25a0, 0x2658.
  Stores 4 bytes from `a3` to [a0+736]:8 +0x110000: 17 such accesses, including `sw` at 0x2520, 0x25d8, 0x2690.
  Loads 4 bytes from a2 (arg2 at entry) +0x0 into `a0`: 38 such accesses, including `lw` at 0x2524, 0x2560, 0x25dc.
  Loads 4 bytes from ? (base unknown) into `at`: 33 such accesses, including `lw` at 0x2538, 0x2558, 0x2574.
  Stores 4 bytes from `at` to [a0+736]:8 +0x110000: 15 such accesses, including `sw` at 0x255c, 0x2614, 0x26cc.
  Loads 4 bytes from ? (base unknown) into `a2`: 9 such accesses, including `lw` at 0x25f0, 0x26a8, 0x28d0.
  Loads 4 bytes from ? (base unknown) into `a4` (`lw` at 0x2760, 0x2818, 0x2d48).
  Loads 4 bytes from a2 (arg2 at entry) +0x0 into `a2`: 4 such accesses, including `lw` at 0x2978, 0x29b8, 0x3174.
  Loads 4 bytes from a2 (arg2 at entry) +0x4 into `a3` (`lw` at 0x29ec, 0x2ec0).
  Loads 4 bytes from a2 (arg2 at entry) +0x4 into `a0`: 4 such accesses, including `lw` at 0x2a38, 0x2a70, 0x2f10.
  Loads 4 bytes from ? (base unknown) into `a1`: 6 such accesses, including `lw` at 0x2a68, 0x2a80, 0x2e88.
  Stores 4 bytes from `a1` to [a0+736]:8 +0x110000: 4 such accesses, including `sw` at 0x2a6c, 0x2de4, 0x2e8c.
  Loads 4 bytes from a2 (arg2 at entry) +0x4 into `v0` (`lw` at 0x2dac).
  Loads 4 bytes from ? (base unknown) into `v1` (`lw` at 0x2dd0).
  Loads 4 bytes from ? (base unknown) into `v0` (`lw` at 0x2ddc).
  Stores 4 bytes from `v1` to [a0+736]:8 +0x110000 (`sw` at 0x2dec, 0x2df4).
  Stores 4 bytes from `v0` to [a0+736]:8 +0x110000 (`sw` at 0x2df8).
  Calls `cmn_err` via direct with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?, a4=0x0 (`jal` at 0x3244).
  Calls `cmn_err` via direct with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?, a4=0x0 (`jal` at 0x3270).
  Calls `cmn_err` via direct with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?, a4=0xfffff (`jal` at 0x32a4).
  Calls `cmn_err` via direct with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?, a5=0x3ffff (`jal` at 0x32cc).
  Calls `cmn_err` via direct with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=? (`jal` at 0x32f8).
  Calls `cmn_err` via direct with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=? (`jal` at 0x331c).
  Calls `cmn_err` via direct with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=? (`jal` at 0x3340).
  Calls `cmn_err` via direct with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=? (`jal` at 0x3364).
  Calls `cmn_err` via direct with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=? (`jal` at 0x3388).
  Calls `cmn_err` via direct with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=? (`jal` at 0x33ac).
  Calls `cmn_err` via direct with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=? (`jal` at 0x33cc).
  Calls `cmn_err` via direct with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?, a5=0xfffffff (`jal` at 0x33ec).
  Calls `cmn_err` via direct with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?, a5=0x3ffffff (`jal` at 0x3410).
  Calls `cmn_err` via direct with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?, a5=0xffffff (`jal` at 0x3430).
  Calls `cmn_err` via direct with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?, a5=0x3fffff (`jal` at 0x3450).
  Calls `cmn_err` via direct with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=? (`jal` at 0x3474).
  Calls `cmn_err` via direct with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=? (`jal` at 0x3494).
  The `beq` at 0x249c is taken when 0 >= a3(=[a1]) (unsigned) and falls through when 0 < a3(=[a1]) (unsigned).
  The `beq` at 0x24a8 is taken when at(=[a0+732]) == a3(=[a1]) and falls through when at(=[a0+732]) != a3(=[a1]).
  The `beq` at 0x24bc is taken when a0(=one of 0x0, 0x1) == 0 and falls through when a0(=one of 0x0, 0x1) != 0.
  The `bne` at 0x24e8 is taken when (v0(?) & 0xf) != 0 and falls through when (v0(?) & 0xf) == 0.
  The `beq` at 0x2500 is taken when a0(?) == at(=0x3000c02e) and falls through when a0(?) != at(=0x3000c02e).
  The `bne` at 0x250c is taken when a0(?) != a1(=0x2f00c02e) and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` at 0x2544 is taken when (at(?) & 0xf) == 0 and falls through when (at(?) & 0xf) != 0.
  The `bne` at 0x2588 is taken when a2(?) < at(?) (unsigned) and falls through when a2(?) >= at(?) (unsigned).
  The `bne` at 0x25ac is taken when (v0(?) & 0xf) != 0 and falls through when (v0(?) & 0xf) == 0.
  The `beq` at 0x25c4 is taken when a0(?) == at(=0x3000c02e) and falls through when a0(?) != at(=0x3000c02e).
  The `bne` at 0x25d0 is taken when a0(?) != a1(=0x2f00c02e) and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` at 0x25fc is taken when (a2(?) & 0xf) == 0 and falls through when (a2(?) & 0xf) != 0.
  The `bne` at 0x2640 is taken when a2(?) < at(?) (unsigned) and falls through when a2(?) >= at(?) (unsigned).
  The `bne` at 0x2664 is taken when (v0(?) & 0xf) != 0 and falls through when (v0(?) & 0xf) == 0.
  The `beq` at 0x267c is taken when a0(?) == at(=0x3000c02e) and falls through when a0(?) != at(=0x3000c02e).
  The `bne` at 0x2688 is taken when a0(?) != a1(=0x2f00c02e) and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` at 0x26b4 is taken when (a2(?) & 0xf) == 0 and falls through when (a2(?) & 0xf) != 0.
  The `bne` at 0x26f8 is taken when a2(?) < at(?) (unsigned) and falls through when a2(?) >= at(?) (unsigned).
  The `bne` at 0x271c is taken when (v0(?) & 0xf) != 0 and falls through when (v0(?) & 0xf) == 0.
  The `beq` at 0x2734 is taken when a0(?) == at(=0x3000c02e) and falls through when a0(?) != at(=0x3000c02e).
  The `bne` at 0x2740 is taken when a0(?) != a1(=0x2f00c02e) and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` at 0x276c is taken when (a4(?) & 0xf) == 0 and falls through when (a4(?) & 0xf) != 0.
  The `bne` at 0x27b0 is taken when a4(?) < at(?) (unsigned) and falls through when a4(?) >= at(?) (unsigned).
  The `bne` at 0x27d4 is taken when (v0(?) & 0xf) != 0 and falls through when (v0(?) & 0xf) == 0.
  The `beq` at 0x27ec is taken when a0(?) == at(=0x3000c02e) and falls through when a0(?) != at(=0x3000c02e).
  The `bne` at 0x27f8 is taken when a0(?) != a1(=0x2f00c02e) and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` at 0x2824 is taken when (a4(?) & 0xf) == 0 and falls through when (a4(?) & 0xf) != 0.
  The `bne` at 0x2868 is taken when a4(?) < at(?) (unsigned) and falls through when a4(?) >= at(?) (unsigned).
  The `bne` at 0x288c is taken when (v0(?) & 0xf) != 0 and falls through when (v0(?) & 0xf) == 0.
  The `beq` at 0x28a4 is taken when a0(?) == at(=0x3000c02e) and falls through when a0(?) != at(=0x3000c02e).
  The `bne` at 0x28b0 is taken when a0(?) != a1(=0x2f00c02e) and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` at 0x28dc is taken when (a2(?) & 0xf) == 0 and falls through when (a2(?) & 0xf) != 0.
  The `bne` at 0x2920 is taken when a2(?) < at(?) (unsigned) and falls through when a2(?) >= at(?) (unsigned).
  The `bne` at 0x2948 is taken when (v0(?) & 0xf) != 0 and falls through when (v0(?) & 0xf) == 0.
  The `beq` at 0x2960 is taken when a0(?) == at(=0x3000c02e) and falls through when a0(?) != at(=0x3000c02e).
  The `bne` at 0x296c is taken when a0(?) != a1(=0x2f00c02e) and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` at 0x299c is taken when (at(?) & 0xf) == 0 and falls through when (at(?) & 0xf) != 0.
  The `bne` at 0x29e4 is taken when a0(?) < at(?) (unsigned) and falls through when a0(?) >= at(?) (unsigned).
  The `bne` at 0x2a08 is taken when (v0(?) & 0xf) != 0 and falls through when (v0(?) & 0xf) == 0.
  The `beq` at 0x2a20 is taken when a0(?) == at(=0x3000c02e) and falls through when a0(?) != at(=0x3000c02e).
  The `bne` at 0x2a2c is taken when a0(?) != a1(=0x2f00c02e) and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` at 0x2a54 is taken when (a2(?) & 0xf) == 0 and falls through when (a2(?) & 0xf) != 0.
  The `bne` at 0x2a94 is taken when a2(?) < a1(?) (unsigned) and falls through when a2(?) >= a1(?) (unsigned).
  The `bne` at 0x2ac4 is taken when (at(?) & 0xf) != 0 and falls through when (at(?) & 0xf) == 0.
  The `beq` at 0x2adc is taken when a0(?) == at(=0x3000c02e) and falls through when a0(?) != at(=0x3000c02e).
  The `bne` at 0x2ae8 is taken when a0(?) != a1(=0x2f00c02e) and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` at 0x2b14 is taken when (a2(?) & 0xf) == 0 and falls through when (a2(?) & 0xf) != 0.
  The `bne` at 0x2b58 is taken when a2(?) < at(?) (unsigned) and falls through when a2(?) >= at(?) (unsigned).
  The `bne` at 0x2b84 is taken when (v0(?) & 0xf) != 0 and falls through when (v0(?) & 0xf) == 0.
  The `beq` at 0x2b9c is taken when a0(?) == at(=0x3000c02e) and falls through when a0(?) != at(=0x3000c02e).
  The `bne` at 0x2ba8 is taken when a0(?) != a1(=0x2f00c02e) and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` at 0x2bd4 is taken when (a2(?) & 0xf) == 0 and falls through when (a2(?) & 0xf) != 0.
  The `bne` at 0x2c18 is taken when a2(?) < at(?) (unsigned) and falls through when a2(?) >= at(?) (unsigned).
  The `bne` at 0x2c44 is taken when (v0(?) & 0xf) != 0 and falls through when (v0(?) & 0xf) == 0.
  The `beq` at 0x2c5c is taken when a0(?) == at(=0x3000c02e) and falls through when a0(?) != at(=0x3000c02e).
  The `bne` at 0x2c68 is taken when a0(?) != a1(=0x2f00c02e) and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` at 0x2c94 is taken when (a2(?) & 0xf) == 0 and falls through when (a2(?) & 0xf) != 0.
  The `bne` at 0x2cd8 is taken when a2(?) < at(?) (unsigned) and falls through when a2(?) >= at(?) (unsigned).
  The `bne` at 0x2d04 is taken when (v0(?) & 0xf) != 0 and falls through when (v0(?) & 0xf) == 0.
  The `beq` at 0x2d1c is taken when a0(?) == at(=0x3000c02e) and falls through when a0(?) != at(=0x3000c02e).
  The `bne` at 0x2d28 is taken when a0(?) != a1(=0x2f00c02e) and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` at 0x2d54 is taken when (a4(?) & 0xf) == 0 and falls through when (a4(?) & 0xf) != 0.
  The `bne` at 0x2d98 is taken when a4(?) < at(?) (unsigned) and falls through when a4(?) >= at(?) (unsigned).
  The `bne` at 0x2e24 is taken when (v0(?) & 0xf) != 0 and falls through when (v0(?) & 0xf) == 0.
  The `beq` at 0x2e3c is taken when a0(?) == a1(=0x3000c02e) and falls through when a0(?) != a1(=0x3000c02e).
  The `bne` at 0x2e48 is taken when a0(?) != a1(=0x2f00c02e) and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` at 0x2e74 is taken when (a2(?) & 0xf) == 0 and falls through when (a2(?) & 0xf) != 0.
  The `bne` at 0x2eb8 is taken when a2(?) < a1(?) (unsigned) and falls through when a2(?) >= a1(?) (unsigned).
  The `bne` at 0x2ee0 is taken when (at(?) & 0xf) != 0 and falls through when (at(?) & 0xf) == 0.
  The `beq` at 0x2ef8 is taken when a0(?) == at(=0x3000c02e) and falls through when a0(?) != at(=0x3000c02e).
  The `bne` at 0x2f04 is taken when a0(?) != a1(=0x2f00c02e) and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` at 0x2f30 is taken when (a2(?) & 0xf) == 0 and falls through when (a2(?) & 0xf) != 0.
  The `bne` at 0x2f74 is taken when a2(?) < a1(?) (unsigned) and falls through when a2(?) >= a1(?) (unsigned).
  The `bne` at 0x2f9c is taken when (at(?) & 0xf) != 0 and falls through when (at(?) & 0xf) == 0.
  The `beq` at 0x2fb8 is taken when a0(?) == at(=0x3000c02e) and falls through when a0(?) != at(=0x3000c02e).
  The `bne` at 0x2fc4 is taken when a0(?) != a1(=0x2f00c02e) and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` at 0x2ff8 is taken when (at(?) & 0xf) == 0 and falls through when (at(?) & 0xf) != 0.
  The `bne` at 0x3038 is taken when a4(?) < at(?) (unsigned) and falls through when a4(?) >= at(?) (unsigned).
  The `bne` at 0x3060 is taken when (v0(?) & 0xf) != 0 and falls through when (v0(?) & 0xf) == 0.
  The `beq` at 0x307c is taken when a0(?) == at(=0x3000c02e) and falls through when a0(?) != at(=0x3000c02e).
  The `bne` at 0x3088 is taken when a0(?) != a1(=0x2f00c02e) and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` at 0x30c0 is taken when (at(?) & 0xf) == 0 and falls through when (at(?) & 0xf) != 0.
  The `bne` at 0x3104 is taken when a4(?) < at(?) (unsigned) and falls through when a4(?) >= at(?) (unsigned).
  The `bne` at 0x3134 is taken when (v0(?) & 0xf) != 0 and falls through when (v0(?) & 0xf) == 0.
  The `beq` at 0x3150 is taken when a0(?) == at(=0x3000c02e) and falls through when a0(?) != at(=0x3000c02e).
  The `bne` at 0x315c is taken when a0(?) != a1(=0x2f00c02e) and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` at 0x3198 is taken when (at(?) & 0xf) == 0 and falls through when (at(?) & 0xf) != 0.
  The `bne` at 0x31e0 is taken when a0(?) < at(?) (unsigned) and falls through when a0(?) >= at(?) (unsigned).
  The `beq` at 0x31fc is taken when a6(?) == 0 and falls through when a6(?) != 0.
  The `bgtz` at 0x3204 is taken when a4 > 0 (signed) and falls through when a4 <= 0 (signed).
  The `jr` at 0x31f4 returns with v0 = ?.

- `odsyRestoreGfe` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`, 0x34a4, 1096 bytes) Inferred.
  Loads 8 bytes from a1 (arg1 at entry) +0x60 into `a4` (`ld` at 0x34a4).
  Loads 4 bytes from a1 (arg1 at entry) +0x0 into `a5` (`lw` at 0x34a8).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `a3` (`ld` at 0x34ac).
  Loads 8 bytes from a1 (arg1 at entry) +0x70 into `s0` (`ld` at 0x34cc).
  Loads 4 bytes from a0 (arg0 at entry) +0x2dc into `at` (`lw` at 0x34d0).
  Stores 4 bytes from `v1` to [a0+736]:8 +0x110000: 8 such accesses, including `sw` at 0x34f8, 0x3518, 0x3540.
  Stores 4 bytes from `zero` to [a0+736]:8 +0x110000: 67 such accesses, including `sw` at 0x34fc, 0x3524, 0x3528.
  Stores 4 bytes from `v0` to [a0+736]:8 +0x110000: 4 such accesses, including `sw` at 0x3500, 0x3520, 0x354c.
  Stores 4 bytes from `at` to [a0+736]:8 +0x110000 (`sw` at 0x3508, 0x3530, 0x37d4).
  Stores 4 bytes from `a1` to [a0+736]:8 +0x110000 (`sw` at 0x3510, 0x3538, 0x381c).
  Loads 4 bytes from [a1+112]:8 +0xac into `v0` (`lw` at 0x351c).
  Loads 4 bytes from [a1+112]:8 +0xb8 into `a1` (`lw` at 0x3534).
  Loads 4 bytes from [a1+96]:8 +0x1b8c into `v0` (`lw` at 0x3544).
  Loads 4 bytes from [a1+112]:8 +0x240 into `a3` (`lw` at 0x3550).
  Stores 4 bytes from `a3` to [a0+736]:8 +0x110000: 4 such accesses, including `sw` at 0x3588, 0x3604, 0x3680.
  Loads 4 bytes from [a1+112]:8 +0x240 into `at` (`lw` at 0x358c).
  Loads 4 bytes from ? (base unknown) into `v1`: 4 such accesses, including `lw` at 0x35a8, 0x3624, 0x36a0.
  Loads 4 bytes from [a1+112]:8 +0x240 into `v0` (`lw` at 0x35b0).
  Loads 4 bytes from [a1+112]:8 +0x250 into `a3` (`lw` at 0x35cc).
  Loads 4 bytes from [a1+112]:8 +0x250 into `at` (`lw` at 0x3608).
  Loads 4 bytes from [a1+112]:8 +0x250 into `v0` (`lw` at 0x362c).
  Loads 4 bytes from [a1+112]:8 +0x260 into `a3` (`lw` at 0x3648).
  Loads 4 bytes from [a1+112]:8 +0x260 into `at` (`lw` at 0x3684).
  Loads 4 bytes from [a1+112]:8 +0x260 into `v0` (`lw` at 0x36a8).
  Loads 4 bytes from [a1+112]:8 +0x270 into `a3` (`lw` at 0x36c4).
  Loads 4 bytes from [a1+112]:8 +0x270 into `at` (`lw` at 0x3700).
  Loads 4 bytes from [a1+112]:8 +0x270 into `v0` (`lw` at 0x3724).
  Calls `cmn_err` via direct with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=[[a1+112]:8+576], a4=[a1+96]:8, a5=[a1] (`jal` at 0x387c).
  Calls `cmn_err` via direct with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=[[a1+112]:8+592] (`jal` at 0x3898).
  Calls `cmn_err` via direct with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=[[a1+112]:8+608] (`jal` at 0x38b8).
  Calls `cmn_err` via direct with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=[[a1+112]:8+624] (`jal` at 0x38dc).
  The `beq` at 0x34c8 is taken when a5(=[a1]) == 0 and falls through when a5(=[a1]) != 0.
  The `beq` at 0x34d4 is taken when at(=[a0+732]) == a5(=[a1]) and falls through when at(=[a0+732]) != a5(=[a1]).
  The `beq` at 0x3548 is taken when a0(=one of 0x0, 0x1) == 0 and falls through when a0(=one of 0x0, 0x1) != 0.
  The `bne` at 0x355c is taken when (at(?) & 0xf) != 0 and falls through when (at(?) & 0xf) == 0.
  The `beq` at 0x3574 is taken when a0(?) == v0(=0x3000c02e) and falls through when a0(?) != v0(=0x3000c02e).
  The `bne` at 0x3580 is taken when a0(?) != a1(=0x2f00c02e) and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` at 0x3598 is taken when (at(?) & 0xf) == 0 and falls through when (at(?) & 0xf) != 0.
  The `bne` at 0x35c4 is taken when a0(?) < v0(?) (unsigned) and falls through when a0(?) >= v0(?) (unsigned).
  The `bne` at 0x35d8 is taken when (a1(?) & 0xf) != 0 and falls through when (a1(?) & 0xf) == 0.
  The `beq` at 0x35f0 is taken when a0(?) == at(=0x3000c02e) and falls through when a0(?) != at(=0x3000c02e).
  The `bne` at 0x35fc is taken when a0(?) != a1(=0x2f00c02e) and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` at 0x3614 is taken when (at(?) & 0xf) == 0 and falls through when (at(?) & 0xf) != 0.
  The `bne` at 0x3640 is taken when a0(?) < v0(?) (unsigned) and falls through when a0(?) >= v0(?) (unsigned).
  The `bne` at 0x3660 is taken when (a1(?) & 0xf) != 0 and falls through when (a1(?) & 0xf) == 0.
  The `beq` at 0x366c is taken when a0(?) == at(=0x3000c02e) and falls through when a0(?) != at(=0x3000c02e).
  The `bne` at 0x3678 is taken when a0(?) != a1(=0x2f00c02e) and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` at 0x3690 is taken when (at(?) & 0xf) == 0 and falls through when (at(?) & 0xf) != 0.
  The `bne` at 0x36bc is taken when a0(?) < v0(?) (unsigned) and falls through when a0(?) >= v0(?) (unsigned).
  The `bne` at 0x36dc is taken when (a1(?) & 0xf) != 0 and falls through when (a1(?) & 0xf) == 0.
  The `beq` at 0x36e8 is taken when a0(?) == at(=0x3000c02e) and falls through when a0(?) != at(=0x3000c02e).
  The `bne` at 0x36f4 is taken when a0(?) != a1(=0x2f00c02e) and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` at 0x370c is taken when (at(?) & 0xf) == 0 and falls through when (at(?) & 0xf) != 0.
  The `bne` at 0x3738 is taken when a0(?) < v0(?) (unsigned) and falls through when a0(?) >= v0(?) (unsigned).
  The `jr` at 0x3868 returns with v0 = ?.

- `odsyRestorePIOPixel` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`, 0x38ec, 404 bytes) Inferred.
  Loads 8 bytes from a1 (arg1 at entry) +0x70 into `a5` (`ld` at 0x38ec).
  Loads 4 bytes from [a1+112]:8 +0xb8 into `t0` (`lw` at 0x38f4).
  Loads 8 bytes from a1 (arg1 at entry) +0x60 into `a6` (`ld` at 0x3910).
  Loads 4 bytes from [a1+96]:8 +0x1b84 into `t2` (`lw` at 0x3924).
  Loads 4 bytes from ? (base unknown) into `a4` (`lw` at 0x3944, 0x3964).
  Loads 4 bytes from ? (base unknown) into `a3` (`lw` at 0x3948).
  Loads 4 bytes from [a1+112]:8 +0x80 into `at` (`lw` at 0x3980).
  Loads 4 bytes from [a1+96]:8 +0x1b78 into `a3` (`lw` at 0x3994).
  Loads 4 bytes from [a1+96]:8 +0x1b74 into `a2` (`lw` at 0x3998).
  Loads 4 bytes from [a1+112]:8 +0xac into `a0` (`lw` at 0x39c8).
  Stores 4 bytes from `v0` to a2 (arg2 at entry) +0x0 (`sw` at 0x39fc).
  Stores 4 bytes from `a0` to a3 (arg3 at entry) +0x0 (`sw` at 0x3a04).
  Stores 4 bytes from `zero` to a3 (arg3 at entry) +0x0 (`sw` at 0x3a08).
  Loads 4 bytes from [a1+96]:8 +0x1b80 into `a4` (`lw` at 0x3a18).
  Loads 4 bytes from [a1+96]:8 +0x1b88 into `t2` (`lw` at 0x3a20).
  Loads 4 bytes from [a1+112]:8 +0x310 into `a3` (`lw` at 0x3a24).
  Loads 4 bytes from [a1+112]:8 +0x300 into `a6` (`lw` at 0x3a28).
  Loads 4 bytes from [a1+112]:8 +0x314 into `a6` (`lw` at 0x3a38).
  Loads 4 bytes from [a1+112]:8 +0x304 into `t3` (`lw` at 0x3a3c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a5=[a1+112]:8, a7=a3 at entry (arg3) (`jal` at 0x3a70).
  The `beq` at 0x391c is taken when (at(?) & 0x1) == 0 and falls through when (at(?) & 0x1) != 0.
  The `beq` at 0x3928 is taken when a2(?) == 0 and falls through when a2(?) != 0.
  The `beq` at 0x3930 is taken when a1(?) == 0 and falls through when a1(?) != 0.
  The `beq` at 0x394c is taken when a4(?) == 0 and falls through when a4(?) != 0.
  The `beq` at 0x3978 is taken when a4(?) == 0 and falls through when a4(?) != 0.
  The `beq` at 0x398c is taken when at(?) == v0(=0x2) and falls through when at(?) != v0(=0x2).
  The `blez` at 0x399c is taken when a2(?) <= 0 (signed) and falls through when a2(?) > 0 (signed).
  The `beq` at 0x39a8 is taken when a2(?) >= 0x801 (signed) and falls through when a2(?) < 0x801 (signed).
  The `blez` at 0x39b0 is taken when a3(?) <= 0 (signed) and falls through when a3(?) > 0 (signed).
  The `beq` at 0x39b8 is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `blez` at 0x39c0 is taken when a4(?) <= 0 (signed) and falls through when a4(?) > 0 (signed).
  The `bne` at 0x3a00 is taken when a0(?) < a3(?) (unsigned) and falls through when a0(?) >= a3(?) (unsigned).
  The `bltz` at 0x3a30 is taken when a2(?) < 0 (signed) and falls through when a2(?) >= 0 (signed).
  The `bltz` at 0x3a44 is taken when a3(?) < 0 (signed) and falls through when a3(?) >= 0 (signed).
  The `jr` at 0x3a0c returns with v0 = ?.

- `odsySetProgram` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`, 0x3a80, 888 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `a3` (`ld` at 0x3a80).
  Loads 8 bytes from a0 (arg0 at entry) +0x48 into `s3` (`ld` at 0x3a8c).
  Loads 8 bytes from a1 (arg1 at entry) +0x60 into `s4` (`ld` at 0x3a94).
  Loads 4 bytes from ((a2 << 0x5) + [a1+96]:8) +0x2af0 into `s5` (`lw` at 0x3ab8).
  Loads 4 bytes from ((a2 << 0x5) + [a1+96]:8) +0x2af4 into `s0` (`lw` at 0x3acc).
  Loads 4 bytes from [a1+96]:8 +0x2b38 into `a1` (`lw` at 0x3ad0).
  Loads 4 bytes from [a1+96]:8 +0x2b34 into `a0` (`lw` at 0x3ad4).
  Loads 4 bytes from a0 (arg0 at entry) +0x2834 into `a0` (`lw` at 0x3b34).
  Stores 4 bytes from `s0` to [a1+96]:8 +0x2b34 (`sw` at 0x3b68).
  Loads 4 bytes from ((a2 << 0x5) + [a1+96]:8) +0x2afc into `a2` (`lw` at 0x3b6c).
  Loads 4 bytes from ((a2 << 0x5) + [a1+96]:8) +0x2af8 into `a1` (`lw` at 0x3b78).
  Loads 4 bytes from ((a2 << 0x5) + [a1+96]:8) +0x2af8 into `v0` (`lw` at 0x3bc0).
  Stores 4 bytes from `v0` to [a1+96]:8 +0x2b38 (`sw` at 0x3bc8).
  Stores 4 bytes from `a5` to table(0x110000) +0x0 (`sw` at 0x3bd8, 0x3c98).
  Loads 4 bytes from ? (base unknown) into `a0` (`lw` at 0x3be0).
  Stores 4 bytes from `v1` to table(0x110000) +0x0 (`sw` at 0x3c04).
  Stores 4 bytes from `v0` to table(0x110000) +0x0 (`sw` at 0x3c0c).
  Stores 4 bytes from `zero` to table(0x110000) +0x0 (`sw` at 0x3c10, 0x3c14).
  Loads 4 bytes from ((a2 << 0x5) + [a1+96]:8) +0x2aec into `s4` (`lw` at 0x3c18).
  Stores 4 bytes from `s4` to table(0x110000) +0x0 (`sw` at 0x3c30).
  Loads 4 bytes from ((a2 << 0x5) + [a1+96]:8) +0x2ae0 into `a0` (`lw` at 0x3c34).
  Stores 4 bytes from `a0` to table(0x110000) +0x0 (`sw` at 0x3c4c).
  Loads 4 bytes from ((a2 << 0x5) + [a1+96]:8) +0x2ae4 into `v1` (`lw` at 0x3c50).
  Stores 4 bytes from `at` to table(0x110000) +0x0 (`sw` at 0x3c70).
  Loads 4 bytes from ((a2 << 0x5) + [a1+96]:8) +0x2ae8 into `s4` (`lw` at 0x3c74).
  Calls `odsyDownloadUcode` via direct with a0=a0 at entry (arg0), a1=[[a1+96]:8+11064], a2=?, a3=0x1, a4=[a0+72]:8 (`jal` at 0x3b14).
  Calls `odsyDownloadUcode` via direct with a0=a0 at entry (arg0), a1=0x738, a2=[((a2 << 0x5) + [a1+96]:8)+10996], a3=?, a4=[a0+72]:8 (`jal` at 0x3b58).
  Calls `odsyDownloadUcode` via direct with a0=a0 at entry (arg0), a1=[((a2 << 0x5) + [a1+96]:8)+11000], a2=[((a2 << 0x5) + [a1+96]:8)+11004], a3=0x1, a4=[a0+72]:8 (`jal` at 0x3b80).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=0x2 (`jal` at 0x3cd0).
  Calls `curproc` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3cd8).
  Calls `psignal` via direct with a0=ret(curproc), a1=0x9, a2=?, a3=? (`jal` at 0x3ce4).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=[((a2 << 0x5) + [a1+96]:8)+10992], a3=[a0+736]:8 (`jal` at 0x3d14).
  Calls `curproc` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3d1c).
  Calls `psignal` via direct with a0=ret(curproc), a1=0x9, a2=?, a3=? (`jal` at 0x3d28).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x3d58).
  Calls `curproc` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3d60).
  Calls `psignal` via direct with a0=ret(curproc), a1=0x9, a2=?, a3=? (`jal` at 0x3d6c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x3d90).
  Calls `curproc` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3d98).
  Calls `psignal` via direct with a0=ret(curproc), a1=0x9, a2=?, a3=? (`jal` at 0x3da4).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x3dd4).
  Calls `curproc` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3ddc).
  Calls `psignal` via direct with a0=ret(curproc), a1=0x9, a2=?, a3=? (`jal` at 0x3de8).
  The `beq` at 0x3ab4 is taken when a2 >= 0x2 (signed) and falls through when a2 < 0x2 (signed).
  The `beq` at 0x3ac0 is taken when s5(=[((a2 << 0x5) + [a1+96]:8)+10992]) >= 0xfe (unsigned) and falls through when s5(=[((a2 << 0x5) + [a1+96]:8)+10992]) < 0xfe (unsigned).
  The `beq` at 0x3ad8 is taken when s0(=[((a2 << 0x5) + [a1+96]:8)+10996]) == 0 and falls through when s0(=[((a2 << 0x5) + [a1+96]:8)+10996]) != 0.
  The `bne` at 0x3ae4 is taken when v0(?) != 0 and falls through when v0(?) == 0.
  The `bne` at 0x3b1c is taken when v0(=ret(odsyDownloadUcode)) != 0 and falls through when v0(=ret(odsyDownloadUcode)) == 0.
  The `beq` at 0x3b24 is taken when s0(=[((a2 << 0x5) + [a1+96]:8)+10996]) == 0 and falls through when s0(=[((a2 << 0x5) + [a1+96]:8)+10996]) != 0.
  The `beq` at 0x3b2c is taken when s0(=[((a2 << 0x5) + [a1+96]:8)+10996]) == a5(?) and falls through when s0(=[((a2 << 0x5) + [a1+96]:8)+10996]) != a5(?).
  The `bne` at 0x3b40 is taken when a0(?) < 0xc8 (unsigned) and falls through when a0(?) >= 0xc8 (unsigned).
  The `bne` at 0x3b60 is taken when v0(=ret(odsyDownloadUcode)) != 0 and falls through when v0(=ret(odsyDownloadUcode)) == 0.
  The `bne` at 0x3ba4 is taken when v0(=ret(odsyDownloadUcode)) != 0 and falls through when v0(=ret(odsyDownloadUcode)) == 0.
  The `jr` at 0x3ca4 returns with v0 = ?.

- `odsyRestartContext` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`, 0x3df8, 1984 bytes) Inferred.
  Loads 8 bytes from a1 (arg1 at entry) +0x60 into `s4` (`ld` at 0x3e08).
  Loads 8 bytes from a1 (arg1 at entry) +0x70 into `s1` (`ld` at 0x3e0c).
  Loads 4 bytes from [a1+112]:8 +0x80 into `s5` (`lw` at 0x3e1c).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `a2` (`ld` at 0x3e50).
  Loads 4 bytes from [a1+112]:8 +0x80 into `s2` (`lw` at 0x3e54).
  Loads 4 bytes from [a1+112]:8 +0x80 into `s3` (`lw` at 0x3e70).
  Loads 4 bytes from [a1+112]:8 +0x80 into `a3` (`lw` at 0x3e78).
  Stores 4 bytes from `a5` to [a0+736]:8 +0x110000: 8 such accesses, including `sw` at 0x3e90, 0x4054, 0x4088.
  Loads 4 bytes from [a1+112]:8 +0x80 into `at`: 4 such accesses, including `lw` at 0x3e9c, 0x3f08, 0x3f50.
  Stores 4 bytes from `at` to [a1+112]:8 +0x80 (`sw` at 0x3ed0, 0x3f14).
  Loads 4 bytes from [a1+112]:8 +0x80 into `v1`: 4 such accesses, including `lw` at 0x3ed4, 0x3f18, 0x3f54.
  Loads 4 bytes from [a1+112]:8 +0x80 into `a5` (`lw` at 0x3ed8, 0x3f4c, 0x42f8).
  Stores 4 bytes from `v1` to [a1+112]:8 +0x80 (`sw` at 0x3f04, 0x3fcc).
  Loads 4 bytes from [a1+112]:8 +0x80 into `a4` (`lw` at 0x3f58).
  Stores 4 bytes from `a6` to [a1+112]:8 +0x80 (`sw` at 0x3fe0).
  Loads 4 bytes from a1 (arg1 at entry) +0x0 into `a1` (`lw` at 0x3ff4).
  Stores 4 bytes from `at` to [a0+736]:8 +0x110000: 11 such accesses, including `sw` at 0x4044, 0x4084, 0x4110.
  Stores 4 bytes from `s2` to [a0+736]:8 +0x110000 (`sw` at 0x404c).
  Stores 4 bytes from `zero` to [a0+736]:8 +0x110000 (`sw` at 0x4058, 0x40a8, 0x40ac).
  Stores 4 bytes from `v0` to [a0+736]:8 +0x110000: 7 such accesses, including `sw` at 0x4064, 0x4080, 0x4180.
  Stores 4 bytes from `a1` to [a0+736]:8 +0x110000 (`sw` at 0x4070).
  Stores 4 bytes from `a2` to [a0+736]:8 +0x110000 (`sw` at 0x407c).
  Stores 4 bytes from `v1` to [a0+736]:8 +0x110000: 8 such accesses, including `sw` at 0x4094, 0x40a4, 0x4134.
  Loads 4 bytes from [a1+96]:8 +0x2adc into `a5` (`lw` at 0x40d0).
  Loads 4 bytes from [a1+96]:8 +0x2b30 into `a2` (`lw` at 0x40ec, 0x440c).
  Loads 4 bytes from [a1+96]:8 +0x26a8 into `v1` (`lw` at 0x40f0).
  Loads 4 bytes from [a1+96]:8 +0x2680 into `ra` (`lw` at 0x4114).
  Loads 4 bytes from [a1+96]:8 +0x2684 into `v0` (`lw` at 0x4138).
  Stores 4 bytes from `ra` to [a0+736]:8 +0x110000 (`sw` at 0x4158, 0x4194).
  Loads 4 bytes from [a1+96]:8 +0x268c into `a5` (`lw` at 0x415c, 0x4504).
  Loads 4 bytes from [a1+112]:8 +0xb4 into `a6` (`lw` at 0x41b8).
  Loads 4 bytes from [a1+112]:8 +0xbc into `a2` (`lw` at 0x41c8).
  Stores 8 bytes from `v1` to [a0+736]:8 +0x110000 (`sd` at 0x41f4, 0x4564).
  Loads 4 bytes from [a1+112]:8 +0xb4 into `v0` (`lwu` at 0x41f8).
  Loads 4 bytes from [a1+112]:8 +0xb0 into `at` (`lwu` at 0x41fc).
  Stores 8 bytes from `at` to [a0+736]:8 +0x110000 (`sd` at 0x4210).
  Stores 8 bytes from `zero` to [a0+736]:8 +0x110000: 4 such accesses, including `sd` at 0x4214, 0x4218, 0x4578.
  Loads 4 bytes from [a1+112]:8 +0x4 into `a5` (`lwu` at 0x421c).
  Stores 8 bytes from `a5` to [a0+736]:8 +0x110000 (`sd` at 0x4228, 0x4294).
  Loads 4 bytes from [a1+96]:8 +0x26ac into `at` (`lw` at 0x4230).
  Loads 4 bytes from ? (base unknown) into `v0` (`lwu` at 0x4270).
  Loads 4 bytes from ? (base unknown) into `a5` (`lwu` at 0x4278).
  Loads 4 bytes from ? (base unknown) into `v1` (`lw` at 0x42a0).
  Loads 8 bytes from ? (base unknown) into `a5` (`ld` at 0x42c8).
  Loads 4 bytes from [a1+112]:8 +0x80 into `t9` (`lw` at 0x42f4).
  Loads 4 bytes from [a1+96]:8 +0x1b34 into `at` (`lw` at 0x43bc).
  Loads 4 bytes from [a1+112]:8 +0x80 into `v0` (`lw` at 0x43d4).
  Loads 4 bytes from [a1+112]:8 +0xac into `v1` (`lw` at 0x43f0).
  Loads 4 bytes from [a1+96]:8 +0x1b4c into `v0` (`lw` at 0x4448).
  Loads 4 bytes from [a1+96]:8 +0x1b50 into `at` (`lw` at 0x4450).
  Loads 4 bytes from [a1+96]:8 +0x1b54 into `a5` (`lw` at 0x4458).
  Loads 4 bytes from [a1+96]:8 +0x1b58 into `v1` (`lw` at 0x4460).
  Loads 4 bytes from [a1+96]:8 +0x1b5c into `v0` (`lw` at 0x4468).
  Loads 4 bytes from [a1+96]:8 +0x1b60 into `at` (`lw` at 0x4470).
  Loads 4 bytes from [a1+96]:8 +0x1b64 into `a5` (`lw` at 0x4478).
  Loads 4 bytes from [a1+96]:8 +0x1b68 into `v1` (`lw` at 0x4480).
  Loads 4 bytes from [a1+96]:8 +0x1b6c into `v0` (`lw` at 0x4488).
  Loads 4 bytes from [a1+96]:8 +0x1b70 into `at` (`lw` at 0x4490).
  Loads 4 bytes from [a1+96]:8 +0x26a8 into `at` (`lw` at 0x4498).
  Loads 4 bytes from [a1+96]:8 +0x2680 into `v0` (`lw` at 0x44bc).
  Loads 4 bytes from [a1+96]:8 +0x2684 into `v1` (`lw` at 0x44e0).
  Loads 4 bytes from [a1+112]:8 +0xb0 into `v0` (`lwu` at 0x4568).
  Stores 8 bytes from `v0` to [a0+736]:8 +0x110000 (`sd` at 0x4574).
  Calls `odsyRestoreVB` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+112]:8+132, a3=? (`jal` at 0x40c8).
  Calls `odsySetProgram` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[[a1+96]:8+11056], a3=?, a5=[[a1+96]:8+10972] (`jal` at 0x40e8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a4=sp-128, a6=sym(.data) (`jalr` at 0x42dc).
  Calls `odsySetProgram` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[[a1+96]:8+11056], a3=? (`jal` at 0x4408).
  Calls `odsyRestoreVB` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+112]:8+132, a3=?, a4=0x0 (`jal` at 0x4420).
  Calls `odsyRestorePIOPixel` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-120, a3=sp-116, a5=0x34008000 (`jal` at 0x45a8).
  The `beq` at 0x3e4c is taken when s5(?) >= 0xb (unsigned) and falls through when s5(?) < 0xb (unsigned).
  The `beq` at 0x3e94 is taken when t1(=0xa) == s2(?) and falls through when t1(=0xa) != s2(?).
  The `beq` at 0x3ecc is taken when v0(?) >= 0x7 (unsigned) and falls through when v0(?) < 0x7 (unsigned).
  The `beq` at 0x3f24 is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `beq` at 0x3f30 is taken when s2(?) == a5(=0x2) and falls through when s2(?) != a5(=0x2).
  The `beq` at 0x3f38 is taken when s2(?) == at(=0x6) and falls through when s2(?) != at(=0x6).
  The `beq` at 0x3f40 is taken when s2(?) == v0(=0x9) and falls through when s2(?) != v0(=0x9).
  The `beq` at 0x4030 is taken when s7(=one of 0x0, 0x1) == 0 and falls through when s7(=one of 0x0, 0x1) != 0.
  The `beq` at 0x4038 is taken when s5(?) == 0 and falls through when s5(?) != 0.
  The `beq` at 0x4078 is taken when s5(?) == 0 and falls through when s5(?) != 0.
  The `bne` at 0x4090 is taken when s3(?) != 0 and falls through when s3(?) == 0.
  The `beq` at 0x4098 is taken when s7(=one of 0x0, 0x1) == 0 and falls through when s7(=one of 0x0, 0x1) != 0.
  The `beq` at 0x40b0 is taken when t1(=0xa) == s2(?) and falls through when t1(=0xa) != s2(?).
  The `beq` at 0x40d8 is taken when a5(=[[a1+96]:8+10972]) == 0 and falls through when a5(=[[a1+96]:8+10972]) != 0.
  The `beq` at 0x419c is taken when s5(?) == 0 and falls through when s5(?) != 0.
  The `beq` at 0x41c4 is taken when a6(=[[a1+112]:8+180]) == 0 and falls through when a6(=[[a1+112]:8+180]) != 0.
  The `beq` at 0x41cc is taken when a2(=[[a1+112]:8+188]) == 0 and falls through when a2(=[[a1+112]:8+188]) != 0.
  The `beq` at 0x41e8 is taken when (a4(?) & 0x1) == 0 and falls through when (a4(?) & 0x1) != 0.
  The `bne` at 0x4264 is taken when a0(?) < 0x2 (signed) and falls through when a0(?) >= 0x2 (signed).
  The `beq` at 0x4290 is taken when a0(?) >= 0x2 (signed) and falls through when a0(?) < 0x2 (signed).
  The `beq` at 0x4298 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `beq` at 0x43ac is taken when s5(?) == 0 and falls through when s5(?) != 0.
  The `beq` at 0x43cc is taken when (at(=[[a1+96]:8+6964]) & 0x7) == 0 and falls through when (at(=[[a1+96]:8+6964]) & 0x7) != 0.
  The `beq` at 0x43e0 is taken when v0(?) == 0 and falls through when v0(?) != 0.
  The `bne` at 0x43f8 is taken when v1(=[[a1+112]:8+172]) != 0 and falls through when v1(=[[a1+112]:8+172]) == 0.
  The `beq` at 0x4434 is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `jr` at 0x42ac returns with v0 = ?.

- `odsyRestoreVertex` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`, 0x45b8, 356 bytes) Inferred.
  Loads 8 bytes from a4 (arg4 at entry) +0x0 into `a3` (`ld` at 0x45b8).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `v0` (`ld` at 0x45dc).
  Loads 8 bytes from a1 (arg1 at entry) +0x70 into `s0` (`ld` at 0x45f0).
  Loads 8 bytes from a1 (arg1 at entry) +0x60 into `s1` (`ld` at 0x4604).
  Stores 8 bytes from `ra` to a4 (arg4 at entry) +0x0 (`sd` at 0x461c).
  Loads 4 bytes from [a1+96]:8 +0x2adc into `a6` (`lw` at 0x4620).
  Loads 4 bytes from ((a5 << 0x2) + [a1+96]:8) +0x2b20 into `a2` (`lw` at 0x464c).
  Loads 4 bytes from ((a5 << 0x2) + [a1+112]:8) +0x100 into `a3` (`lw` at 0x4658).
  Stores 4 bytes from `a3` to table(0x110000) +0x0 (`sw` at 0x469c).
  Loads 4 bytes from ((a5 << 0x2) + [a1+112]:8) +0x100 into `at` (`lw` at 0x46a0, 0x46c8).
  Loads 4 bytes from ? (base unknown) into `v0` (`lw` at 0x46c0).
  Stores 4 bytes from `v0` to table(0x110000) +0x0 (`sw` at 0x46c4).
  Calls `odsyRestoreVB` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=((a5 << 0x3) + [a1+112]:8)+140, a3=[a4]:8, a4=a2 at entry (arg2) (`jal` at 0x4610).
  Calls `odsySetProgram` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[((a5 << 0x2) + [a1+96]:8)+11040], a3=?, a6=[[a1+96]:8+10972] (`jal` at 0x4648).
  Calls `cmn_err` via direct with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=[((a5 << 0x2) + [a1+112]:8)+256], a6=0x110000 (`jal` at 0x470c).
  The `beq` at 0x4630 is taken when a6(=[[a1+96]:8+10972]) == 0 and falls through when a6(=[[a1+96]:8+10972]) != 0.
  The `bne` at 0x4678 is taken when (a6(?) & 0xf) != 0 and falls through when (a6(?) & 0xf) == 0.
  The `beq` at 0x4688 is taken when a0(?) == at(=0x3000c02e) and falls through when a0(?) != at(=0x3000c02e).
  The `bne` at 0x4690 is taken when a0(?) != a6(=0x2f00c02e) and falls through when a0(?) == a6(=0x2f00c02e).
  The `beq` at 0x46ac is taken when (at(?) & 0xf) == 0 and falls through when (at(?) & 0xf) != 0.
  The `bne` at 0x46dc is taken when a0(?) < at(?) (unsigned) and falls through when a0(?) >= at(?) (unsigned).
  The `jr` at 0x46ec returns with v0 = ?.

- `restorePoints` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`, 0x471c, 8 bytes) Inferred.
  The `jr` at 0x471c returns with v0 = ?.

- `restoreLines` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`, 0x4724, 56 bytes) Inferred.
  Calls `odsyRestoreVertex` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x4748).
  The `jr` at 0x4754 returns with v0 = ret(odsyRestoreVertex).

- `restoreLineLoop` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`, 0x475c, 124 bytes) Inferred.
  Calls `odsyRestoreVertex` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=0x0 (`jal` at 0x477c).
  Calls `odsyRestoreVertex` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=0x3, a7=a3+1 (`jal` at 0x47c8).
  The `beq` at 0x4788 is taken when s0(=a2) >= 0x2 (signed) and falls through when s0(=a2) < 0x2 (signed).
  The `jr` at 0x4794 returns with v0 = ret(odsyRestoreVertex).

- `restoreLineStrip` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`, 0x47d8, 56 bytes) Inferred.
  Calls `odsyRestoreVertex` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x47fc).
  The `jr` at 0x4808 returns with v0 = ret(odsyRestoreVertex).

- `restoreTriangles` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`, 0x4810, 212 bytes) Inferred.
  Calls `odsyRestoreVertex` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x488c).
  The `blez` at 0x4868 is taken when a2 <= 0 (signed) and falls through when a2 > 0 (signed).
  The `bne` at 0x48b4 is taken when s2(?) < s1(=a2) (signed) and falls through when s2(?) >= s1(=a2) (signed).
  The `jr` at 0x48dc returns with v0 = ?.

- `restoreTriStrip` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`, 0x48e4, 212 bytes) Inferred.
  Calls `odsyRestoreVertex` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x4960).
  The `blez` at 0x493c is taken when a2 <= 0 (signed) and falls through when a2 > 0 (signed).
  The `bne` at 0x4988 is taken when s2(?) < s1(=a2) (signed) and falls through when s2(?) >= s1(=a2) (signed).
  The `jr` at 0x49b0 returns with v0 = ?.

- `restoreTriFan` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`, 0x49b8, 124 bytes) Inferred.
  Calls `odsyRestoreVertex` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=0x0 (`jal` at 0x49d8).
  Calls `odsyRestoreVertex` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=0x3, a7=a3+1 (`jal` at 0x4a24).
  The `beq` at 0x49e4 is taken when s0(=a2) >= 0x2 (signed) and falls through when s0(=a2) < 0x2 (signed).
  The `jr` at 0x49f0 returns with v0 = ret(odsyRestoreVertex).

- `restoreQuads` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`, 0x4a34, 212 bytes) Inferred.
  Calls `odsyRestoreVertex` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x4ab0).
  The `blez` at 0x4a8c is taken when a2 <= 0 (signed) and falls through when a2 > 0 (signed).
  The `bne` at 0x4ad8 is taken when s2(?) < s1(=a2) (signed) and falls through when s2(?) >= s1(=a2) (signed).
  The `jr` at 0x4b00 returns with v0 = ?.
- `restoreQuadStrip` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`, 0x4b08, 212 bytes) Inferred.
  Calls `odsyRestoreVertex` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x4b84).
  The `blez` at 0x4b60 is taken when a2 <= 0 (signed) and falls through when a2 > 0 (signed).
  The `bne` at 0x4bac is taken when s2(?) < s1(=a2) (signed) and falls through when s2(?) >= s1(=a2) (signed).
  The `jr` at 0x4bd4 returns with v0 = ?.

- `restorePolygon` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`, 0x4bdc, 220 bytes) Inferred.
  Calls `odsyRestoreVertex` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=0x0 (`jal` at 0x4c24).
  Calls `odsyRestoreVertex` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x4c68).
  The `blez` at 0x4c48 is taken when s6(=a2-1) <= 0 (signed) and falls through when s6(=a2-1) > 0 (signed).
  The `bne` at 0x4c80 is taken when s2(?) < s6(=a2-1) (signed) and falls through when s2(?) >= s6(=a2-1) (signed).
  The `jr` at 0x4cb0 returns with v0 = ret(odsyRestoreVertex).

- `restoreRect` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`, 0x4cb8, 728 bytes) Inferred.
  Loads 8 bytes from a1 (arg1 at entry) +0x70 into `s0` (`ld` at 0x4cc0).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `s2` (`ld` at 0x4cd4).
  Loads 4 bytes from ? (base unknown) into `a3` (`lw` at 0x4d08, 0x4dc4, 0x4e88).
  Stores 4 bytes from `a3` to [a0+736]:8 +0x110000 (`sw` at 0x4d50, 0x4e08, 0x4ec8).
  Loads 4 bytes from ? (base unknown) into `v0`: 6 such accesses, including `lw` at 0x4d54, 0x4d74, 0x4e0c.
  Stores 4 bytes from `v0` to [a0+736]:8 +0x110000 (`sw` at 0x4d78, 0x4e34, 0x4ef4).
  Loads 4 bytes from ? (base unknown) into `at` (`lw` at 0x4d7c, 0x4e38, 0x4ef8).
  Calls `cmn_err` via direct with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=? (`jal` at 0x4f30).
  Calls `cmn_err` via direct with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?, a5=sym(.rodata) (`jal` at 0x4f58).
  Calls `cmn_err` via direct with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=? (`jal` at 0x4f80).
  The `bne` at 0x4cd8 is taken when a2 < 0x2 (signed) and falls through when a2 >= 0x2 (signed).
  The `bne` at 0x4d2c is taken when (v0(?) & 0xf) != 0 and falls through when (v0(?) & 0xf) == 0.
  The `beq` at 0x4d3c is taken when a1(?) == v1(=0x3000c02e) and falls through when a1(?) != v1(=0x3000c02e).
  The `bne` at 0x4d44 is taken when a1(?) != at(=0x2f00c02e) and falls through when a1(?) == at(=0x2f00c02e).
  The `beq` at 0x4d60 is taken when (v0(?) & 0xf) == 0 and falls through when (v0(?) & 0xf) != 0.
  The `bne` at 0x4d90 is taken when a2(?) < at(?) (unsigned) and falls through when a2(?) >= at(?) (unsigned).
  The `bne` at 0x4dec is taken when (v1(?) & 0xf) != 0 and falls through when (v1(?) & 0xf) == 0.
  The `beq` at 0x4df4 is taken when a1(?) == v0(=0x3000c02e) and falls through when a1(?) != v0(=0x3000c02e).
  The `bne` at 0x4dfc is taken when a1(?) != at(=0x2f00c02e) and falls through when a1(?) == at(=0x2f00c02e).
  The `beq` at 0x4e18 is taken when (v0(?) & 0xf) == 0 and falls through when (v0(?) & 0xf) != 0.
  The `bne` at 0x4e4c is taken when a2(?) < at(?) (unsigned) and falls through when a2(?) >= at(?) (unsigned).
  The `bne` at 0x4eac is taken when (v1(?) & 0xf) != 0 and falls through when (v1(?) & 0xf) == 0.
  The `beq` at 0x4eb4 is taken when a1(?) == v0(=0x3000c02e) and falls through when a1(?) != v0(=0x3000c02e).
  The `bne` at 0x4ebc is taken when a1(?) != at(=0x2f00c02e) and falls through when a1(?) == at(=0x2f00c02e).
  The `beq` at 0x4ed8 is taken when (v0(?) & 0xf) == 0 and falls through when (v0(?) & 0xf) != 0.
  The `bne` at 0x4f0c is taken when a2(?) < at(?) (unsigned) and falls through when a2(?) >= at(?) (unsigned).
  The `jr` at 0x4f18 returns with v0 = ?.

- `odsyResetHwShadow` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`, 0x4f90, 320 bytes) Inferred.
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0xbc (`sw` at 0x4fa8).
  Stores 4 bytes from `a0` to a0 (arg0 at entry) +0x250 (`sw` at 0x4fb8).
  Stores 4 bytes from `v1` to a0 (arg0 at entry) +0x240 (`sw` at 0x4fc0).
  Stores 4 bytes from `a0` to a0 (arg0 at entry) +0x120 (`sw` at 0x4fc4).
  Stores 4 bytes from `at` to a0 (arg0 at entry) +0x270 (`sw` at 0x4fd0).
  Stores 4 bytes from `at` to a0 (arg0 at entry) +0x160 (`sw` at 0x4fd4).
  Loads 4 bytes from a0 (arg0 at entry) +0x80 into `at` (`lw` at 0x4fd8).
  Stores 4 bytes from `v1` to a0 (arg0 at entry) +0x110 (`sw` at 0x4fdc).
  Stores 4 bytes from `at` to a0 (arg0 at entry) +0x80 (`sw` at 0x4fe4).
  Stores 4 bytes from `ra` to a0 (arg0 at entry) +0x260 (`sw` at 0x4ff0).
  Stores 4 bytes from `ra` to a0 (arg0 at entry) +0x150 (`sw` at 0x4ff4).
  Stores 4 bytes from `a1` to a0 (arg0 at entry) +0x210 (`sw` at 0x5008).
  Stores 4 bytes from `a2` to a0 (arg0 at entry) +0x220 (`sw` at 0x5010).
  Stores 4 bytes from `a1` to a0 (arg0 at entry) +0x1e0 (`sw` at 0x5020).
  Stores 4 bytes from `a2` to a0 (arg0 at entry) +0x1f0 (`sw` at 0x5028).
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0xb0 (`sw` at 0x5034).
  Stores 4 bytes from `a2` to a0 (arg0 at entry) +0x1c0 (`sw` at 0x503c).
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x230 (`sw` at 0x504c).
  Stores 4 bytes from `a1` to a0 (arg0 at entry) +0x1b0 (`sw` at 0x5054).
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x200 (`sw` at 0x5064).
  Stores 4 bytes from `a1` to a0 (arg0 at entry) +0x180 (`sw` at 0x506c).
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x1d0 (`sw` at 0x507c).
  Stores 4 bytes from `a2` to a0 (arg0 at entry) +0x190 (`sw` at 0x5084).
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x1a0 (`sw` at 0x5094).
  Stores 4 bytes from `a2` to a0 (arg0 at entry) +0x140 (`sw` at 0x509c).
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x170 (`sw` at 0x50ac).
  Stores 4 bytes from `a1` to a0 (arg0 at entry) +0x130 (`sw` at 0x50b4).
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x100 (`sw` at 0x50c0).
  Calls `bzero` via direct with a0=a0 at entry (arg0), a1=0x900, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x4fa0).
  The `jr` at 0x50c8 returns with v0 = 0xffffffff8080c800.

- `gfP_OdsyGLGet` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`, 0x50d0, 584 bytes) Inferred.
  Stores 4 bytes from `zero` to a3 (arg3 at entry) +0x0 (`sw` at 0x50d4).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `s1` (`ld` at 0x50dc).
  Loads 4 bytes from [a0+32]:8 +0x2d8 into `at` (`lw` at 0x50e4).
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `v1` (`ld` at 0x50f4).
  Loads 8 bytes from a0 (arg0 at entry) +0x48 into `a4` (`ld` at 0x5108).
  Loads 8 bytes from [a0+72]:8 +0x70 into `a4` (`ld` at 0x510c).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `a4` (`ld` at 0x5148).
  Loads 4 bytes from [a0+32]:8 +0x50 into `a0` (`lw` at 0x514c).
  Stores 4 bytes from `a0` to [a0+32]:8 +0x50 (`sw` at 0x5154).
  Loads 4 bytes from [a0+32]:8 +0x28e8 into `v1` (`lw` at 0x5158).
  Loads 8 bytes from ? (base unknown) into `v0` (`ld` at 0x516c).
  Stores 4 bytes from `zero` to ? (base unknown) (`sw` at 0x5180).
  Stores 8 bytes from `v0` to table(0x110000) +0x0 (`sd` at 0x51dc).
  Loads 4 bytes from ? (base unknown) into `a4` (`lw` at 0x51e4, 0x5260).
  Loads 4 bytes from [a0+32]:8 +0x2d8 into `a5` (`lw` at 0x51f8, 0x526c).
  Stores 4 bytes from `at` to a3 (arg3 at entry) +0x0 (`sw` at 0x5208, 0x52ac).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `v1` (`ld` at 0x520c).
  Loads 4 bytes from [a0+32]:8 +0x50 into `v0` (`lw` at 0x5210).
  Stores 4 bytes from `v0` to [a0+32]:8 +0x50 (`sw` at 0x5218).
  Loads 4 bytes from a3 (arg3 at entry) +0x0 into `v0` (`lw` at 0x521c).
  Loads 4 bytes from [a0+32]:8 +0x2d8 into `v1` (`lw` at 0x5240).
  Stores 4 bytes from `a4` to a3 (arg3 at entry) +0x0 (`sw` at 0x52e8, 0x5308).
  Calls `copyin` via direct with a0=a2 at entry (arg2), a1=sp-128, a2=0x4, a3=?, a4=[[a0+72]:8+112]:8 (`jal` at 0x5124).
  Calls `RRM_CheckValidFault` via direct with a0=a0 at entry (arg0), a1=sym(.rodata), a2=?, a3=? (`jal` at 0x5134).
  Calls `timeout` via direct with a0=sym(odsy_glget_timeout), a1=[a0+32]:8, a2=0x5dc, a3=?, a4=0x1, a5=0x2 (`jal` at 0x51d8).
  Calls `untimeout` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x51f0).
  Calls `us_delay` via direct with a0=0x1, a1=?, a2=?, a3=? (`jal` at 0x5254).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x52c0).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=?, a4=[[a0+72]:8+112]:8 (`jal` at 0x52dc).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x52fc).
  The `bne` at 0x50fc is taken when at(=[[a0+32]:8+728]) != 0 and falls through when at(=[[a0+32]:8+728]) == 0.
  The `beq` at 0x5114 is taken when a4(=[[a0+72]:8+112]:8) == 0 and falls through when a4(=[[a0+72]:8+112]:8) != 0.
  The `bne` at 0x512c is taken when v0(=ret(copyin)) != 0 and falls through when v0(=ret(copyin)) == 0.
  The `bltz` at 0x5140 is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed) and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed).
  The `beq` at 0x5188 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `beq` at 0x5190 is taken when a0(?) == a4(=0x1) and falls through when a0(?) != a4(=0x1).
  The `beq` at 0x5198 is taken when a0(?) == a5(=0x2) and falls through when a0(?) != a5(=0x2).
  The `beq` at 0x51a0 is taken when a0(?) == at(=0x3) and falls through when a0(?) != at(=0x3).
  The `beq` at 0x51e8 is taken when a4(?) == 0 and falls through when a4(?) != 0.
  The `beq` at 0x5200 is taken when a5(=[[a0+32]:8+728]) == 0 and falls through when a5(=[[a0+32]:8+728]) != 0.
  The `bne` at 0x5244 is taken when v1(=[[a0+32]:8+728]) != 0 and falls through when v1(=[[a0+32]:8+728]) == 0.
  The `bne` at 0x5264 is taken when a4(?) != 0 and falls through when a4(?) == 0.
  The `beq` at 0x5270 is taken when a5(=[[a0+32]:8+728]) == 0 and falls through when a5(=[[a0+32]:8+728]) != 0.
  The `jr` at 0x522c returns with v0 = ?.

- `odsy_i2cFixupAfterErr` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`, 0x0, 76 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a0` (`ld` at 0x18, 0x38).
  Calls `odsy_usdelay` via direct with a0=[a0+16]:8, a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x20).
  Calls `odsy_i2cReset` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x28).
  Calls `odsy_usdelay` via direct with a0=[a0+16]:8, a1=[sym(.sdata)+8], a2=?, a3=? (`jal` at 0x34).
  The `jr` at 0x44 returns with v0 = ret(odsy_usdelay).

- `odsy_i2cPLLRegWrite` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`, 0x4c, 140 bytes) Inferred.
  Loads 1 byte from a0 (arg0 at entry) +0x20 into `a1` (`lbu` at 0x5c).
  Calls `odsy_i2c_start` via direct with a0=a0 at entry (arg0), a1=?, a2=0x1, a3=a3 at entry (arg3) (`jal` at 0x70).
  Calls `odsy_i2c_sendbyte` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x1, a3=0x0 (`jal` at 0x88).
  Calls `odsy_i2c_sendbyte` via direct with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=0x1, a3=0x1 (`jal` at 0xa0).
  Calls `odsy_i2cReset` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0xbc).
  The `bne` at 0x78 is taken when v0(=ret(odsy_i2c_start)) != 0 and falls through when v0(=ret(odsy_i2c_start)) == 0.
  The `bne` at 0x90 is taken when v0(=ret(odsy_i2c_sendbyte)) != 0 and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` at 0xa8 is taken when v0(=ret(odsy_i2c_sendbyte)) != 0 and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `jr` at 0xd0 returns with v0 = one of 0x0, 0x1.

- `odsy_i2cPLLRegRead` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`, 0xd8, 176 bytes) Inferred.
  Loads 1 byte from a0 (arg0 at entry) +0x20 into `a1` (`lbu` at 0xe8, 0x124).
  Calls `odsy_i2c_start` via direct with a0=a0 at entry (arg0), a1=?, a2=0x1, a3=a3 at entry (arg3) (`jal` at 0xfc).
  Calls `odsy_i2c_sendbyte` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x1, a3=0x0 (`jal` at 0x114).
  Calls `odsy_i2c_start` via direct with a0=a0 at entry (arg0), a1=?, a2=0x1, a3=? (`jal` at 0x138).
  Calls `odsy_i2c_long_recvbyte` via direct with a0=a0 at entry (arg0), a1=0x0, a2=0x1, a3=a2 at entry (arg2) (`jal` at 0x150).
  Calls `odsy_i2cReset` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x16c).
  The `bne` at 0x104 is taken when v0(=ret(odsy_i2c_start)) != 0 and falls through when v0(=ret(odsy_i2c_start)) == 0.
  The `bne` at 0x11c is taken when v0(=ret(odsy_i2c_sendbyte)) != 0 and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` at 0x140 is taken when v0(=ret(odsy_i2c_start)) != 0 and falls through when v0(=ret(odsy_i2c_start)) == 0.
  The `bne` at 0x158 is taken when v0(=ret(odsy_i2c_long_recvbyte)) != 0 and falls through when v0(=ret(odsy_i2c_long_recvbyte)) == 0.
  The `jr` at 0x180 returns with v0 = one of 0x0, 0x1.

- `odsy_i2cDDCRegRead` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`, 0x188, 144 bytes) Inferred.
  Loads 1 byte from a0 (arg0 at entry) +0x20 into `a1` (`lbu` at 0x198).
  Calls `odsy_i2c_start` via direct with a0=a0 at entry (arg0), a1=?, a2=0x1, a3=a3 at entry (arg3) (`jal` at 0x1b0).
  Calls `odsy_i2c_sendbyte` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x1, a3=0x0 (`jal` at 0x1c8).
  Calls `odsy_i2c_long_recvbyte` via direct with a0=a0 at entry (arg0), a1=0x0, a2=0x1, a3=a2 at entry (arg2) (`jal` at 0x1e0).
  Calls `odsy_i2cReset` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x1fc).
  The `bne` at 0x1b8 is taken when v0(=ret(odsy_i2c_start)) != 0 and falls through when v0(=ret(odsy_i2c_start)) == 0.
  The `bne` at 0x1d0 is taken when v0(=ret(odsy_i2c_sendbyte)) != 0 and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` at 0x1e8 is taken when v0(=ret(odsy_i2c_long_recvbyte)) != 0 and falls through when v0(=ret(odsy_i2c_long_recvbyte)) == 0.
  The `jr` at 0x210 returns with v0 = one of 0x0, 0x1.

- `odsy_i2cPLLSeqRegWrite` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`, 0x218, 240 bytes) Inferred.
  Loads 1 byte from a0 (arg0 at entry) +0x20 into `a1` (`lbu` at 0x228).
  Loads 1 byte from ? (base unknown) into `a1` (`lbu` at 0x298, 0x2cc).
  Calls `odsy_i2c_start` via direct with a0=a0 at entry (arg0), a1=?, a2=0x1, a3=a3 at entry (arg3) (`jal` at 0x240).
  Calls `odsy_i2c_sendbyte` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x1, a3=0x0 (`jal` at 0x25c).
  Calls `odsy_i2c_sendbyte` via direct with a0=a0 at entry (arg0), a1=?, a2=0x1, a3=0x0 (`jal` at 0x294).
  Calls `odsy_i2c_sendbyte` via direct with a0=a0 at entry (arg0), a1=?, a2=0x1, a3=0x1 (`jal` at 0x2c8).
  Calls `odsy_i2cReset` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x2e8).
  The `bne` at 0x248 is taken when v0(=ret(odsy_i2c_start)) != 0 and falls through when v0(=ret(odsy_i2c_start)) == 0.
  The `bne` at 0x264 is taken when v0(=ret(odsy_i2c_sendbyte)) != 0 and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `beq` at 0x278 is taken when a4(=a3-1) == 0 and falls through when a4(=a3-1) != 0.
  The `bne` at 0x29c is taken when v0(=ret(odsy_i2c_sendbyte)) != 0 and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` at 0x2ac is taken when s1(?) < a4(?) (unsigned) and falls through when s1(?) >= a4(?) (unsigned).
  The `bne` at 0x2d4 is taken when v0(=ret(odsy_i2c_sendbyte)) != 0 and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `jr` at 0x300 returns with v0 = one of 0x0, 0x1.

- `odsy_i2cPLLSeqRegRead` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`, 0x308, 276 bytes) Inferred.
  Loads 1 byte from a0 (arg0 at entry) +0x20 into `a1` (`lbu` at 0x318).
  Calls `odsy_i2c_start` via direct with a0=a0 at entry (arg0), a1=?, a2=0x1, a3=a3 at entry (arg3) (`jal` at 0x330).
  Calls `odsy_i2c_sendbyte` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x1, a3=0x0 (`jal` at 0x348).
  Calls `odsy_i2c_start` via direct with a0=a0 at entry (arg0), a1=0x4d, a2=0x1, a3=? (`jal` at 0x35c).
  Calls `odsy_i2c_long_recvbyte` via direct with a0=a0 at entry (arg0), a1=0x1, a2=0x0, a3=a2 at entry (arg2) (`jal` at 0x374).
  Calls `odsy_i2c_short_recvbyte` via direct with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=? (`jal` at 0x3b0).
  Calls `odsy_i2c_long_recvbyte` via direct with a0=a0 at entry (arg0), a1=0x0, a2=0x1, a3=? (`jal` at 0x3e4).
  Calls `odsy_i2cReset` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x400).
  The `bne` at 0x338 is taken when v0(=ret(odsy_i2c_start)) != 0 and falls through when v0(=ret(odsy_i2c_start)) == 0.
  The `bne` at 0x350 is taken when v0(=ret(odsy_i2c_sendbyte)) != 0 and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` at 0x364 is taken when v0(=ret(odsy_i2c_start)) != 0 and falls through when v0(=ret(odsy_i2c_start)) == 0.
  The `bne` at 0x37c is taken when v0(=ret(odsy_i2c_long_recvbyte)) != 0 and falls through when v0(=ret(odsy_i2c_long_recvbyte)) == 0.
  The `bne` at 0x394 is taken when a4(=a3-1) < 0x2 (signed) and falls through when a4(=a3-1) >= 0x2 (signed).
  The `bne` at 0x3b8 is taken when v0(=ret(odsy_i2c_short_recvbyte)) != 0 and falls through when v0(=ret(odsy_i2c_short_recvbyte)) == 0.
  The `bne` at 0x3cc is taken when a6(?) < a4(?) (signed) and falls through when a6(?) >= a4(?) (signed).
  The `bne` at 0x3ec is taken when v0(=ret(odsy_i2c_long_recvbyte)) != 0 and falls through when v0(=ret(odsy_i2c_long_recvbyte)) == 0.
  The `jr` at 0x414 returns with v0 = one of 0x0, 0x1.

- `odsy_i2cProbe2b` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`, 0x41c, 5748 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `s7` (`ld` at 0x434).
  Stores 2 bytes from `zero` to a1 (arg1 at entry) +0x0 (`sh` at 0x444, 0x494).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a3`: 63 such accesses, including `ld` at 0x458, 0x478, 0x51c.
  Loads 4 bytes from [a0+16]:8 +0x5720 into `at` (`lw` at 0x45c, 0x6e0, 0xd30).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `a0`: 15 such accesses, including `ld` at 0x46c, 0x5b0, 0x5fc.
  Loads 4 bytes from [a0+16]:8 +0x5720 into `v1`: 7 such accesses, including `lw` at 0x484, 0x564, 0x6b0.
  Stores 4 bytes from `a0` to [a0+16]:8 +0x130 (`sw` at 0x490).
  Loads 4 bytes from a0 (arg0 at entry) +0x1c into `v1` (`lw` at 0x4bc).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `t1` (`ld` at 0x4c0).
  Loads 4 bytes from [[a0+16]:8+736]:8 +0x233804 into `v0` (`lw` at 0x4dc).
  Stores 8 bytes from `v1` to [[a0+16]:8+736]:8 +0x400000 (`sd` at 0x4f8, 0x9b4).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `v1` (`ld` at 0x4fc).
  Loads 4 bytes from [a0]:8 +0x0 into `at` (`lw` at 0x500).
  Stores 4 bytes from `at` to [a0]:8 +0x0 (`sw` at 0x508).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `a6` (`ld` at 0x50c).
  Loads 4 bytes from [a0]:8 +0x0 into `a5` (`lw` at 0x510).
  Stores 4 bytes from `a5` to [a0]:8 +0x0 (`sw` at 0x518).
  Loads 2 bytes from a0 (arg0 at entry) +0x18 into `a4`: 4 such accesses, including `lhu` at 0x520, 0x668, 0x774.
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `a2`: 5 such accesses, including `ld` at 0x52c, 0x674, 0x6c4.
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `a3`: 4 such accesses, including `ld` at 0x534, 0x694, 0x79c.
  Loads 4 bytes from [a0]:8 +0x0 into `a2`: 4 such accesses, including `lwu` at 0x540, 0x684, 0x78c.
  Stores 8 bytes from `a2` to [[a0+16]:8+736]:8 +0x400000: 4 such accesses, including `sd` at 0x55c, 0x6a8, 0x7b0.
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `a4` (`ld` at 0x588).
  Loads 4 bytes from [a0]:8 +0x0 into `a3` (`lw` at 0x58c).
  Stores 4 bytes from `a3` to [a0]:8 +0x0 (`sw` at 0x594).
  Loads 4 bytes from [a0+16]:8 +0x5720 into `a2` (`lw` at 0x59c, 0x1324).
  Loads 4 bytes from [a0+16]:8 +0x5720 into `a4` (`lw` at 0x5c0, 0x700, 0x810).
  Loads 8 bytes from [a0+16]:8 +0x2828 into `at`: 4 such accesses, including `ld` at 0x5d8, 0x718, 0x828.
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a0`: 60 such accesses, including `ld` at 0x5f0, 0x608, 0x63c.
  Loads 8 bytes from [a0+16]:8 +0x2828 into `a2`: 6 such accesses, including `ld` at 0x628, 0x8d0, 0xae4.
  Loads 4 bytes from [a0]:8 +0x0 into `v1` (`lw` at 0x6cc).
  Stores 4 bytes from `v1` to [a0]:8 +0x0 (`sw` at 0x6d8).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `a3` (`ld` at 0x7e0).
  Loads 4 bytes from [a0]:8 +0x0 into `a2` (`lw` at 0x7e4).
  Stores 4 bytes from `a2` to [a0]:8 +0x0 (`sw` at 0x7ec).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a0`: 10 such accesses, including `lw` at 0x924, 0xb78, 0xdb8.
  Loads 2 bytes from [a0+16]:8 +0x2830 into `a5`: 10 such accesses, including `lhu` at 0x928, 0xb7c, 0xdbc.
  Stores 4 bytes from `a2` to [a0+16]:8 +0x55f0: 30 such accesses, including `sw` at 0x94c, 0x9e4, 0xa30.
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `v1`: 29 such accesses, including `ld` at 0x950, 0x978, 0xba4.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `at`: 19 such accesses, including `lwu` at 0x958, 0xbac, 0xbf8.
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `v1`: 19 such accesses, including `ld` at 0x95c, 0xbb0, 0xbfc.
  Stores 8 bytes from `at` to [[a0+16]:8+736]:8 +0x400000: 19 such accesses, including `sd` at 0x974, 0xbc8, 0xc0c.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `at`: 10 such accesses, including `lw` at 0x97c, 0xbd0, 0xe10.
  Loads 2 bytes from [a0+16]:8 +0x2830 into `a2` (`lhu` at 0x988).
  Stores 4 bytes from `at` to [a0+16]:8 +0x55f0: 10 such accesses, including `sw` at 0x998, 0xbec, 0xe2c.
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a2` (`ld` at 0x99c).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `v1` (`lwu` at 0x9a0).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `a2` (`ld` at 0x9a4).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `at`: 20 such accesses, including `ld` at 0x9bc, 0x9f4, 0xc14.
  Loads 8 bytes from [a0+16]:8 +0x2828 into `a4`: 10 such accesses, including `ld` at 0x9c4, 0xc1c, 0xe5c.
  Stores 8 bytes from `a4` to [[a0+16]:8+736]:8 +0x400000: 20 such accesses, including `sd` at 0x9d0, 0xa0c, 0xc28.
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a4`: 10 such accesses, including `ld` at 0x9d4, 0xc2c, 0xe6c.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a2`: 20 such accesses, including `lw` at 0x9d8, 0xa24, 0xc30.
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `at`: 10 such accesses, including `ld` at 0x9e8, 0xc40, 0xe80.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a4`: 10 such accesses, including `lwu` at 0x9f0, 0xc48, 0xe88.
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a6`: 10 such accesses, including `ld` at 0xa10, 0xc68, 0xea8.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a5`: 10 such accesses, including `lw` at 0xa14, 0xc6c, 0xeac.
  Stores 4 bytes from `a5` to [a0+16]:8 +0x55f0: 10 such accesses, including `sw` at 0xa1c, 0xc74, 0xeb4.
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a1`: 10 such accesses, including `ld` at 0xa34, 0xc8c, 0xecc.
  Stores 8 bytes from `zero` to [a0+16]:8 +0x2828: 10 such accesses, including `sd` at 0xa38, 0xc90, 0xed0.
  Loads 2 bytes from [a0+16]:8 +0x2830 into `a4`: 9 such accesses, including `lhu` at 0xbdc, 0xe1c, 0xf60.
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `a4` (`ld` at 0x1300).
  Stores 8 bytes from `a3` to [[a0+16]:8+736]:8 +0x400000 (`sd` at 0x131c).
  Stores 4 bytes from `at` to [a0+16]:8 +0x130 (`sw` at 0x143c).
  Stores 2 bytes from `a4` to a1 (arg1 at entry) +0x0 (`sh` at 0x1448).
  Calls `bzero` via direct with a0=a1 at entry (arg1), a1=0x80, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x448).
  Calls `odsy_i2cReset` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x450).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xd, a2=?, a3=[a0+16]:8 (`jal` at 0x468).
  Calls `odsy_i2cReset` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x498).
  Calls `odsy_usdelay` via direct with a0=[a0+16]:8, a1=0xa, a2=?, a3=[a0+16]:8 (`jal` at 0x578).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=[a0+16]:8 (`jal` at 0x5ac).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=[a0+16]:8, a4=[[a0+16]:8+22304] (`jal` at 0x5cc).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8 (`jal` at 0x5e8).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x5f8).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x60c).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=[a0+16]:8, a7=0xfffffffffffeffff (`jal` at 0x61c).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=[[a0+16]:8+10280]:8, a3=[a0+16]:8 (`jal` at 0x634).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x644).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x658).
  Calls `us_delay` via direct with a0=0xa, a1=?, a2=?, a3=? (`jal` at 0x6bc).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=[a0+16]:8 (`jal` at 0x6ec).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=[a0+16]:8, a4=[[a0+16]:8+22304] (`jal` at 0x70c).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8 (`jal` at 0x728).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x738).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x74c).
  Calls `psema` via direct with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=[a0+16]:8 (`jal` at 0x760).
  Calls `us_delay` via direct with a0=0xa, a1=?, a2=?, a3=? (`jal` at 0x7c4).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=[a0+16]:8 (`jal` at 0x800).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=[a0+16]:8, a4=[[a0+16]:8+22304] (`jal` at 0x81c).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8 (`jal` at 0x838).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x848).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x85c).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=[[a0+16]:8+10280]:8, a3=[a0+16]:8 (`jal` at 0x88c).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x89c).
  Calls `psema` via direct with a0=[a0+16]:8+10256, a1=0x19, a2=[[a0+16]:8+22304], a3=[a0+16]:8, a4=[a0]:8 (`jal` at 0x8b0).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=0xffffffff, a2=?, a3=[a0+16]:8, a5=0xffffffff00000000, a6=0x30000001, a7=0xfffffffffffeffff (`jal` at 0x8c4).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=[[a0+16]:8+10280]:8, a3=[a0+16]:8 (`jal` at 0x8e0).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x8f0).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x904).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x918).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8 (`jal` at 0xa44).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=[a0+16]:8 (`jal` at 0xa54).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8 (`jal` at 0xa70).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0xa80).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0xa94).
  Calls `psema` via direct with a0=[a0+16]:8+10256, a1=0x19, a2=[a0]:8, a3=[a0+16]:8 (`jal` at 0xaa8).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=[a0+16]:8 (`jal` at 0xab8).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0xac8).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=[a0+16]:8 (`jal` at 0xad8).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=[[a0+16]:8+10280]:8, a3=[a0+16]:8 (`jal` at 0xaf4).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0xb04).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0xb18).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=[[a0+16]:8+10280]:8, a3=[a0+16]:8 (`jal` at 0xb28).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0xb38).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=[a0+16]:8 (`jal` at 0xb48).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0xb58).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0xb6c).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8 (`jal` at 0xc9c).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=[a0+16]:8 (`jal` at 0xcac).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0xcbc).
  Calls `odsy_usdelay` via direct with a0=[a0+16]:8, a1=0xa, a2=?, a3=[a0+16]:8 (`jal` at 0xd24).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=[a0+16]:8 (`jal` at 0xd3c).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=[a0+16]:8 (`jal` at 0xd58).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=[[a0+16]:8+10280]:8, a3=[a0+16]:8 (`jal` at 0xd74).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0xd84).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0xd98).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0xdac).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8 (`jal` at 0xedc).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0xef0).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8 (`jal` at 0x1020).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=[[a0+16]:8+10280]:8, a3=[a0+16]:8 (`jal` at 0x1030).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x1040).
  Calls `psema` via direct with a0=[a0+16]:8+10256, a1=0x19, a2=([[a0]:8] | 0x10000), a3=[a0+16]:8 (`jal` at 0x1054).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x1068).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8 (`jal` at 0x1198).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x11ac).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8 (`jal` at 0x12dc).
  Calls `odsy_i2cReset` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x1338).
  Calls `odsy_i2c_start` via direct with a0=a0 at entry (arg0), a1=0x60, a2=0x0, a3=? (`jal` at 0x135c).
  Calls `odsy_i2c_sendbyte` via direct with a0=a0 at entry (arg0), a1=0x0, a2=0x0, a3=0x0 (`jal` at 0x1370).
  Calls `odsy_i2c_start` via direct with a0=a0 at entry (arg0), a1=0xa0, a2=0x1, a3=? (`jal` at 0x1380).
  Calls `odsy_i2c_sendbyte` via direct with a0=a0 at entry (arg0), a1=0x0, a2=0x1, a3=0x0 (`jal` at 0x1398).
  Calls `odsy_i2c_start` via direct with a0=a0 at entry (arg0), a1=0xa1, a2=0x1, a3=? (`jal` at 0x13ac).
  Calls `odsy_i2c_long_recvbyte` via direct with a0=a0 at entry (arg0), a1=0x1, a2=0x0, a3=a1+2 (`jal` at 0x13c8).
  Calls `odsy_i2c_short_recvbyte` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x13e8).
  Calls `odsy_i2c_long_recvbyte` via direct with a0=a0 at entry (arg0), a1=0x0, a2=0x1, a3=? (`jal` at 0x1418).
  Calls `odsy_validate_ddc_data` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1428).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=[a0+16]:8 (`jal` at 0x144c).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x145c).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=[a0+16]:8 (`jal` at 0x146c).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=[[a0+16]:8+10280]:8, a3=[a0+16]:8 (`jal` at 0x1488).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x1498).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x14ac).
  Calls `psema` via direct with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=[a0+16]:8 (`jal` at 0x14c0).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x14d4).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8 (`jal` at 0x1604).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=[[a0+16]:8+10280]:8, a3=[a0+16]:8 (`jal` at 0x1614).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x1624).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=[[a0+16]:8+10280]:8, a3=[a0+16]:8 (`jal` at 0x1634).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x1644).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=[[a0+16]:8+22304], a3=[a0+16]:8, a4=[[a0+16]:8+736]:8+0x400000 (`jal` at 0x1654).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=[[a0+16]:8+10280]:8, a3=[a0+16]:8 (`jal` at 0x1670).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x1680).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x1694).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x16a8).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8 (`jal` at 0x17d8).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x17ec).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8 (`jal` at 0x191c).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=[[a0+16]:8+10280]:8, a3=[a0+16]:8 (`jal` at 0x192c).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x193c).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x1950).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8 (`jal` at 0x1a80).
  The `beq` at 0x460 is taken when at(=[[a0+16]:8+22304]) == 0 and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x47c is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x488 is taken when v1(=[[a0+16]:8+22304]) == 0 and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x4d8 is taken when v1(=[a0+28]) == 0 and falls through when v1(=[a0+28]) != 0.
  The `beq` at 0x568 is taken when v1(=[[a0+16]:8+22304]) == 0 and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x5a0 is taken when a2(=[[a0+16]:8+22304]) == 0 and falls through when a2(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x5b8 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `bne` at 0x5c4 is taken when a4(=[[a0+16]:8+22304]) != 0 and falls through when a4(=[[a0+16]:8+22304]) == 0.
  The `beq` at 0x5dc is taken when at(=[[a0+16]:8+10280]:8) == 0 and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x600 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x62c is taken when a2(=[[a0+16]:8+10280]:8) == 0 and falls through when a2(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x64c is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x6b4 is taken when v1(=[[a0+16]:8+22304]) == 0 and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x6e4 is taken when at(=[[a0+16]:8+22304]) == 0 and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x6f8 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `bne` at 0x704 is taken when a4(=[[a0+16]:8+22304]) != 0 and falls through when a4(=[[a0+16]:8+22304]) == 0.
  The `beq` at 0x71c is taken when at(=[[a0+16]:8+10280]:8) == 0 and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x740 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x7bc is taken when v1(=[[a0+16]:8+22304]) == 0 and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `bne` at 0x7d8 is taken when a0(?) < 0x9 (signed) and falls through when a0(?) >= 0x9 (signed).
  The `beq` at 0x7f8 is taken when v1(=[[a0+16]:8+22304]) == 0 and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x808 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `bne` at 0x814 is taken when a4(=[[a0+16]:8+22304]) != 0 and falls through when a4(=[[a0+16]:8+22304]) == 0.
  The `beq` at 0x82c is taken when at(=[[a0+16]:8+10280]:8) == 0 and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x850 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x8d4 is taken when a2(=[[a0+16]:8+10280]:8) == 0 and falls through when a2(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x8f8 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x93c is taken when 0 >= a5(?) (unsigned) and falls through when 0 < a5(?) (unsigned).
  The `beq` at 0x9cc is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `beq` at 0xa64 is taken when at(=[[a0+16]:8+10280]:8) == 0 and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0xa88 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0xae8 is taken when a2(=[[a0+16]:8+10280]:8) == 0 and falls through when a2(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0xb0c is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0xb90 is taken when 0 >= a5(?) (unsigned) and falls through when 0 < a5(?) (unsigned).
  The `beq` at 0xc24 is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `beq` at 0xd1c is taken when v1(=[[a0+16]:8+22304]) == 0 and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0xd34 is taken when at(=[[a0+16]:8+22304]) == 0 and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0xd44 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `bne` at 0xd50 is taken when v1(=[[a0+16]:8+22304]) != 0 and falls through when v1(=[[a0+16]:8+22304]) == 0.
  The `beq` at 0xd68 is taken when a2(=[[a0+16]:8+10280]:8) == 0 and falls through when a2(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0xd8c is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0xdd0 is taken when 0 >= a5(?) (unsigned) and falls through when 0 < a5(?) (unsigned).
  The `beq` at 0xe64 is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `beq` at 0xf14 is taken when 0 >= a5(?) (unsigned) and falls through when 0 < a5(?) (unsigned).
  The `beq` at 0xfa8 is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `beq` at 0x108c is taken when 0 >= a5(?) (unsigned) and falls through when 0 < a5(?) (unsigned).
  The `beq` at 0x1120 is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `beq` at 0x11d0 is taken when 0 >= a5(?) (unsigned) and falls through when 0 < a5(?) (unsigned).
  The `beq` at 0x1264 is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `beq` at 0x1328 is taken when a2(=[[a0+16]:8+22304]) == 0 and falls through when a2(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x1350 is taken when at(?) >= 0x4 (signed) and falls through when at(?) < 0x4 (signed).
  The `bne` at 0x1388 is taken when v0(=ret(odsy_i2c_start)) != 0 and falls through when v0(=ret(odsy_i2c_start)) == 0.
  The `bne` at 0x13a0 is taken when v0(=ret(odsy_i2c_sendbyte)) != 0 and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` at 0x13b4 is taken when v0(=ret(odsy_i2c_start)) != 0 and falls through when v0(=ret(odsy_i2c_start)) == 0.
  The `bne` at 0x13d0 is taken when v0(=ret(odsy_i2c_long_recvbyte)) != 0 and falls through when v0(=ret(odsy_i2c_long_recvbyte)) == 0.
  The `bne` at 0x13f0 is taken when v0(=ret(odsy_i2c_short_recvbyte)) != 0 and falls through when v0(=ret(odsy_i2c_short_recvbyte)) == 0.
  The `bne` at 0x1400 is taken when a6(?) < 0x7f (signed) and falls through when a6(?) >= 0x7f (signed).
  The `bne` at 0x1420 is taken when v0(=ret(odsy_i2c_long_recvbyte)) != 0 and falls through when v0(=ret(odsy_i2c_long_recvbyte)) == 0.
  The `beq` at 0x1430 is taken when v0(=ret(odsy_validate_ddc_data)) == 0 and falls through when v0(=ret(odsy_validate_ddc_data)) != 0.
  The `beq` at 0x147c is taken when a2(=[[a0+16]:8+10280]:8) == 0 and falls through when a2(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x14a0 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x14f8 is taken when 0 >= a5(?) (unsigned) and falls through when 0 < a5(?) (unsigned).
  The `beq` at 0x158c is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `beq` at 0x1664 is taken when a2(=[[a0+16]:8+10280]:8) == 0 and falls through when a2(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x1688 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x16cc is taken when 0 >= a5(?) (unsigned) and falls through when 0 < a5(?) (unsigned).
  The `beq` at 0x1760 is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `beq` at 0x1810 is taken when 0 >= a5(?) (unsigned) and falls through when 0 < a5(?) (unsigned).
  The `beq` at 0x18a4 is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `beq` at 0x1974 is taken when 0 >= a5(?) (unsigned) and falls through when 0 < a5(?) (unsigned).
  The `beq` at 0x1a08 is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `jr` at 0x4b4 returns with v0 = one of 0x0, 0x1.

- `odsy_validate_ddc_data` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`, 0x1a90, 44 bytes) Inferred.
  Calls `odsy_i2cValidEdid` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1a98).
  The `beq` at 0x1aa0 is taken when v0(=ret(odsy_i2cValidEdid)) == 0 and falls through when v0(=ret(odsy_i2cValidEdid)) != 0.
  The `jr` at 0x1aac returns with v0 = one of 0x0, 0x1.

- `odsy_EdidCksum` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`, 0x1abc, 44 bytes) Inferred.
  Loads 1 byte from ? (base unknown) into `a1` (`lbu` at 0x1acc).
  The `bne` at 0x1ad8 is taken when a3(?) < 0x80 (signed) and falls through when a3(?) >= 0x80 (signed).
  The `jr` at 0x1ae0 returns with v0 = ?.

- `odsy_i2cValidEdid` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`, 0x1ae8, 156 bytes) Inferred.
  Loads 1 byte from a0 (arg0 at entry) +0x0 into `at` (`lbu` at 0x1ae8).
  Loads 1 byte from a0 (arg0 at entry) +0x1 into `v1` (`lbu` at 0x1b1c).
  Loads 1 byte from a0 (arg0 at entry) +0x2 into `a1` (`lbu` at 0x1b28).
  Loads 1 byte from a0 (arg0 at entry) +0x3 into `a2` (`lbu` at 0x1b34).
  Loads 1 byte from a0 (arg0 at entry) +0x4 into `at` (`lbu` at 0x1b40).
  Loads 1 byte from a0 (arg0 at entry) +0x5 into `v1` (`lbu` at 0x1b4c).
  Loads 1 byte from a0 (arg0 at entry) +0x6 into `a1` (`lbu` at 0x1b58).
  Loads 1 byte from a0 (arg0 at entry) +0x7 into `a2` (`lbu` at 0x1b64).
  Calls `odsy_EdidCksum` via direct with a0=a0 at entry (arg0), a1=[a0+6]:1, a2=[a0+7]:1, a3=a3 at entry (arg3) (`jal` at 0x1b00).
  The `beq` at 0x1af0 is taken when at(=[a0]:1) == 0 and falls through when at(=[a0]:1) != 0.
  The `beq` at 0x1b08 is taken when v0(=ret(odsy_EdidCksum)) == 0 and falls through when v0(=ret(odsy_EdidCksum)) != 0.
  The `bne` at 0x1b20 is taken when v1(=[a0+1]:1) != v0(=0xff) and falls through when v1(=[a0+1]:1) == v0(=0xff).
  The `bne` at 0x1b2c is taken when a1(=[a0+2]:1) != v0(=0xff) and falls through when a1(=[a0+2]:1) == v0(=0xff).
  The `bne` at 0x1b38 is taken when a2(=[a0+3]:1) != v0(=0xff) and falls through when a2(=[a0+3]:1) == v0(=0xff).
  The `bne` at 0x1b44 is taken when at(=[a0+4]:1) != v0(=0xff) and falls through when at(=[a0+4]:1) == v0(=0xff).
  The `bne` at 0x1b50 is taken when v1(=[a0+5]:1) != v0(=0xff) and falls through when v1(=[a0+5]:1) == v0(=0xff).
  The `bne` at 0x1b5c is taken when a1(=[a0+6]:1) != v0(=0xff) and falls through when a1(=[a0+6]:1) == v0(=0xff).
  The `bne` at 0x1b68 is taken when a2(=[a0+7]:1) != 0 and falls through when a2(=[a0+7]:1) == 0.
  The `jr` at 0x1b14 returns with v0 = one of 0x0, 0x1.

- `sgiEdid` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`, 0x1b84, 56 bytes) Inferred.
  Loads 1 byte from a0 (arg0 at entry) +0x8 into `at` (`lbu` at 0x1b84).
  Loads 1 byte from a0 (arg0 at entry) +0x9 into `v0` (`lbu` at 0x1b98).
  The `bne` at 0x1b90 is taken when at(=[a0+8]:1) != v0(=0x4c) and falls through when at(=[a0+8]:1) == v0(=0x4c).
  The `beq` at 0x1b9c is taken when v0(=[a0+9]:1) == v1(=0xf8) and falls through when v0(=[a0+9]:1) != v1(=0xf8).
  The `beq` at 0x1ba4 is taken when v0(=[a0+9]:1) == a1(=0xe9) and falls through when v0(=[a0+9]:1) != a1(=0xe9).
  The `jr` at 0x1bac returns with v0 = 0x0.
  The `jr` at 0x1bb4 returns with v0 = 0x1.

- `odsy_i2c2abReset` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`, 0x1bbc, 304 bytes) Inferred.
  Calls `odsy_i2c_start` via direct with a0=a0 at entry (arg0), a1=0x6e, a2=0x1, a3=a3 at entry (arg3) (`jal` at 0x1bd0).
  Calls `odsy_i2c_sendbyte` via direct with a0=a0 at entry (arg0), a1=0x50, a2=0x1, a3=0x0 (`jal` at 0x1be8).
  Calls `odsy_i2c_sendbyte` via direct with a0=a0 at entry (arg0), a1=0x81, a2=0x1, a3=0x0 (`jal` at 0x1c00).
  Calls `odsy_i2c_sendbyte` via direct with a0=a0 at entry (arg0), a1=0xf0, a2=0x1, a3=0x0 (`jal` at 0x1c18).
  Calls `odsy_i2c_sendbyte` via direct with a0=a0 at entry (arg0), a1=0x4f, a2=0x1, a3=0x0 (`jal` at 0x1c30).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x1c5c).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x1c7c).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x1c9c).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x1cbc).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x1cd8).
  The `bne` at 0x1bd8 is taken when v0(=ret(odsy_i2c_start)) != 0 and falls through when v0(=ret(odsy_i2c_start)) == 0.
  The `bne` at 0x1bf0 is taken when v0(=ret(odsy_i2c_sendbyte)) != 0 and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` at 0x1c08 is taken when v0(=ret(odsy_i2c_sendbyte)) != 0 and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` at 0x1c20 is taken when v0(=ret(odsy_i2c_sendbyte)) != 0 and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` at 0x1c3c is taken when v0(=ret(odsy_i2c_sendbyte)) != 0 and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `jr` at 0x1c48 returns with v0 = one of 0x0, 0x1.

- `odsy_i2c2abAttention` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`, 0x1cec, 148 bytes) Inferred.
  Calls `odsy_i2c_becomeSlaveRecv` via direct with a0=a0 at entry (arg0), a1=0x1, a2=0x50, a3=sp-48 (`jal` at 0x1d14).
  Calls `odsy_i2c_slave_recvbyte` via direct with a0=a0 at entry (arg0), a1=0x1, a2=0x4, a3=sp-47 (`jal` at 0x1d2c).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=?, a3=sp-47 (`jal` at 0x1d50).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x1d6c).
  The `bne` at 0x1d1c is taken when v0(=ret(odsy_i2c_becomeSlaveRecv)) != 0 and falls through when v0(=ret(odsy_i2c_becomeSlaveRecv)) == 0.
  The `bne` at 0x1d34 is taken when v0(=ret(odsy_i2c_slave_recvbyte)) != 0 and falls through when v0(=ret(odsy_i2c_slave_recvbyte)) == 0.
  The `jr` at 0x1d40 returns with v0 = one of 0x0, 0x1.

- `odsy_i2c2abIDRequest` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`, 0x1d80, 304 bytes) Inferred.
  Calls `odsy_i2c_start` via direct with a0=a0 at entry (arg0), a1=0x6e, a2=0x1, a3=a3 at entry (arg3) (`jal` at 0x1d94).
  Calls `odsy_i2c_sendbyte` via direct with a0=a0 at entry (arg0), a1=0x50, a2=0x1, a3=0x0 (`jal` at 0x1dac).
  Calls `odsy_i2c_sendbyte` via direct with a0=a0 at entry (arg0), a1=0x81, a2=0x1, a3=0x0 (`jal` at 0x1dc4).
  Calls `odsy_i2c_sendbyte` via direct with a0=a0 at entry (arg0), a1=0xf1, a2=0x1, a3=0x0 (`jal` at 0x1ddc).
  Calls `odsy_i2c_sendbyte` via direct with a0=a0 at entry (arg0), a1=0x4e, a2=0x1, a3=0x1 (`jal` at 0x1df4).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x1e20).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x1e40).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x1e60).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x1e80).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x1e9c).
  The `bne` at 0x1d9c is taken when v0(=ret(odsy_i2c_start)) != 0 and falls through when v0(=ret(odsy_i2c_start)) == 0.
  The `bne` at 0x1db4 is taken when v0(=ret(odsy_i2c_sendbyte)) != 0 and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` at 0x1dcc is taken when v0(=ret(odsy_i2c_sendbyte)) != 0 and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` at 0x1de4 is taken when v0(=ret(odsy_i2c_sendbyte)) != 0 and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` at 0x1e00 is taken when v0(=ret(odsy_i2c_sendbyte)) != 0 and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `jr` at 0x1e0c returns with v0 = one of 0x0, 0x1.

- `odsy_i2c2abPresencechk` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`, 0x1eb0, 304 bytes) Inferred.
  Calls `odsy_i2c_start` via direct with a0=a0 at entry (arg0), a1=0x6e, a2=0x1, a3=a3 at entry (arg3) (`jal` at 0x1ec4).
  Calls `odsy_i2c_sendbyte` via direct with a0=a0 at entry (arg0), a1=0x50, a2=0x1, a3=0x0 (`jal` at 0x1edc).
  Calls `odsy_i2c_sendbyte` via direct with a0=a0 at entry (arg0), a1=0x81, a2=0x1, a3=0x0 (`jal` at 0x1ef4).
  Calls `odsy_i2c_sendbyte` via direct with a0=a0 at entry (arg0), a1=0xf1, a2=0x1, a3=0x0 (`jal` at 0x1f0c).
  Calls `odsy_i2c_sendbyte` via direct with a0=a0 at entry (arg0), a1=0x48, a2=0x1, a3=0x1 (`jal` at 0x1f24).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x1f50).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x1f70).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x1f90).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x1fb0).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x1fcc).
  The `bne` at 0x1ecc is taken when v0(=ret(odsy_i2c_start)) != 0 and falls through when v0(=ret(odsy_i2c_start)) == 0.
  The `bne` at 0x1ee4 is taken when v0(=ret(odsy_i2c_sendbyte)) != 0 and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` at 0x1efc is taken when v0(=ret(odsy_i2c_sendbyte)) != 0 and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` at 0x1f14 is taken when v0(=ret(odsy_i2c_sendbyte)) != 0 and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` at 0x1f30 is taken when v0(=ret(odsy_i2c_sendbyte)) != 0 and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `jr` at 0x1f3c returns with v0 = one of 0x0, 0x1.

- `odsy_i2c2abIDReply` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`, 0x1fe0, 8 bytes) Inferred.
  The `jr` at 0x1fe0 returns with v0 = 0x0.

- `odsy_i2c2abAssignAddr` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`, 0x1fe8, 8 bytes) Inferred.
  The `jr` at 0x1fe8 returns with v0 = 0x0.

- `odsy_i2cProbe2ab` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`, 0x1ff0, 364 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a0` (`ld` at 0x2064, 0x2078, 0x20cc).
  Calls `odsy_usdelay` via direct with a0=[a0+16]:8, a1=0x64, a2=?, a3=? (`jal` at 0x201c).
  Calls `odsy_i2c2abReset` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x2030).
  Calls `odsy_i2c2abAttention` via direct with a0=a0 at entry (arg0), a1=0x64, a2=?, a3=? (`jal` at 0x2058).
  Calls `odsy_usdelay` via direct with a0=[a0+16]:8, a1=0x64, a2=?, a3=? (`jal` at 0x2068).
  Calls `odsy_usdelay` via direct with a0=[a0+16]:8, a1=0x64, a2=?, a3=? (`jal` at 0x207c).
  Calls `odsy_i2c2abIDRequest` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x2084).
  Calls `odsy_i2c2abIDReply` via direct with a0=a0 at entry (arg0), a1=sp-128, a2=?, a3=? (`jal` at 0x2094).
  Calls `odsy_i2c2abAssignAddr` via direct with a0=a0 at entry (arg0), a1=sp-128, a2=?, a3=? (`jal` at 0x20ac).
  Calls `odsy_usdelay` via direct with a0=[a0+16]:8, a1=0x64, a2=?, a3=? (`jal` at 0x20d0).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x2120).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x2134).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x214c).
  The `beq` at 0x2028 is taken when at(?) == 0 and falls through when at(?) != 0.
  The `beq` at 0x2038 is taken when v0(=ret(odsy_i2c2abReset)) == 0 and falls through when v0(=ret(odsy_i2c2abReset)) != 0.
  The `bne` at 0x2048 is taken when s4(?) < 0x3 (signed) and falls through when s4(?) >= 0x3 (signed).
  The `beq` at 0x2050 is taken when s4(?) == s2(=0x3) and falls through when s4(?) != s2(=0x3).
  The `bne` at 0x2060 is taken when v0(=ret(odsy_i2c2abAttention)) != 0 and falls through when v0(=ret(odsy_i2c2abAttention)) == 0.
  The `bne` at 0x208c is taken when v0(=ret(odsy_i2c2abIDRequest)) != 0 and falls through when v0(=ret(odsy_i2c2abIDRequest)) == 0.
  The `bne` at 0x209c is taken when v0(=ret(odsy_i2c2abIDReply)) != 0 and falls through when v0(=ret(odsy_i2c2abIDReply)) == 0.
  The `bne` at 0x20b4 is taken when v0(=ret(odsy_i2c2abAssignAddr)) != 0 and falls through when v0(=ret(odsy_i2c2abAssignAddr)) == 0.
  The `bne` at 0x20bc is taken when a1(?) != 0 and falls through when a1(?) == 0.
  The `bne` at 0x20f4 is taken when s1(?) < 0x1e (signed) and falls through when s1(?) >= 0x1e (signed).
  The `jr` at 0x2110 returns with v0 = one of 0x0, 0x1.

- `odsy_copyin_cmd` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`, 0x215c, 136 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x10 into `a2` (`lw` at 0x215c).
  Loads 8 bytes from a0 (arg0 at entry) +0x18 into `v0` (`ld` at 0x2174).
  Calls `copyin` via direct with a0=[a0+24]:8, a1=a1 at entry (arg1), a2=[a0+16], a3=a3 at entry (arg3) (`jal` at 0x2184).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=[a0+16], a3=a3 at entry (arg3) (`jal` at 0x21b4).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x21d0).
  The `blez` at 0x2164 is taken when a2(=[a0+16]) <= 0 (signed) and falls through when a2(=[a0+16]) > 0 (signed).
  The `beq` at 0x216c is taken when at(?) == 0 and falls through when at(?) != 0.
  The `beq` at 0x2178 is taken when v0(=[a0+24]:8) == 0 and falls through when v0(=[a0+24]:8) != 0.
  The `bne` at 0x218c is taken when v0(=ret(copyin)) != 0 and falls through when v0(=ret(copyin)) == 0.
  The `jr` at 0x2198 returns with v0 = one of -0x16, -0xe, 0x0.

- `odsy_i2c_cmd` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`, 0x21e4, 2284 bytes) Inferred.
  Loads 2 bytes from a1 (arg1 at entry) +0x2 into `a6` (`lhu` at 0x21e4).
  Loads 4 bytes from a1 (arg1 at entry) +0x8 into `v0` (`lw` at 0x2200).
  Loads 4 bytes from (a0 + one of 0x56bc, 0x56e4) +0x0 into `v1` (`lw` at 0x2268).
  Loads 8 bytes from (a0 + one of 0x56b0, 0x56d8) +0x0 into `a4` (`ld` at 0x2270).
  Loads 8 bytes from ? (base unknown) into `a4` (`ld` at 0x22a8).
  Loads 4 bytes from ? (base unknown) into `at` (`lw` at 0x22c8).
  Loads 8 bytes from ? (base unknown) into `a1` (`ld` at 0x22d0).
  Calls `mutex_lock` via direct with a0=?, a1=0x19, a2=a2 at entry (arg2), a3=0x0, a6=[a1+2]:2, a7=0x0 (`jal` at 0x2284).
  Calls `(unknown callee)` via register with a0=a1 at entry (arg1), a1=?, a2=?, a3=?, a5=sym(.rodata) (`jr` at 0x22ac).
  Calls `mutex_unlock` via direct with a0=?, a1=?, a2=?, a3=?, a5=sym(.rodata) (`jal` at 0x22d4).
  Calls `mutex_lock` via direct with a0=?, a1=0x19, a2=a2 at entry (arg2), a3=0x0, a6=[a1+2]:2, a7=0x0 (`jal` at 0x22f8).
  Calls `mutex_unlock` via direct with a0=?, a1=?, a2=?, a3=?, a5=sym(.rodata) (`jal` at 0x2308).
  The `beq` at 0x2220 is taken when v0(=[a1+8]) == 0 and falls through when v0(=[a1+8]) != 0.
  The `bne` at 0x2228 is taken when v0(=[a1+8]) != at(=0x1) and falls through when v0(=[a1+8]) == at(=0x1).
  The `beq` at 0x2274 is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `beq` at 0x22a0 is taken when a3(?) >= 0xd (unsigned) and falls through when a3(?) < 0xd (unsigned).
  The `beq` at 0x22cc is taken when at(?) == 0 and falls through when at(?) != 0.
  The `beq` at 0x2320 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x2354 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x2370 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bltz` at 0x2384 is taken when condition not analyzed and falls through when condition not analyzed.
  The `blez` at 0x2394 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bne` at 0x23d8 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bne` at 0x23e8 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x23f0 is taken when condition not analyzed and falls through when condition not analyzed.
  The `blez` at 0x2400 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x240c is taken when condition not analyzed and falls through when condition not analyzed.
  The `bne` at 0x2414 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x241c is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x242c is taken when condition not analyzed and falls through when condition not analyzed.
  The `blez` at 0x2438 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x2444 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bne` at 0x244c is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x2458 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x2464 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x2478 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x2494 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x24bc is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x24d8 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bne` at 0x2504 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x251c is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x2538 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bne` at 0x2564 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x257c is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x2598 is taken when condition not analyzed and falls through when condition not analyzed.
  The `blez` at 0x25a8 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x25b4 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bne` at 0x25bc is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x25dc is taken when condition not analyzed and falls through when condition not analyzed.
  The `bne` at 0x2624 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x2668 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bltz` at 0x2678 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x269c is taken when condition not analyzed and falls through when condition not analyzed.
  The `blez` at 0x26ac is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x26bc is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x26c4 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x26ec is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x2708 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bne` at 0x273c is taken when condition not analyzed and falls through when condition not analyzed.
  The `bne` at 0x2758 is taken when condition not analyzed and falls through when condition not analyzed.
  The `blez` at 0x2764 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x277c is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x2784 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x2790 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x279c is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x27a4 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bne` at 0x27f4 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x2818 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x2828 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bne` at 0x283c is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x2844 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x2858 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x2870 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x2880 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x2890 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x28a4 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x28c0 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x28f4 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bne` at 0x290c is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x2914 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x2938 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x2954 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x2978 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x2994 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x29b0 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x29cc is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x29e8 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x2a0c is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x2a28 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x2a44 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x2a68 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x2a84 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x2aa8 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x2ac8 is taken when condition not analyzed and falls through when condition not analyzed -> end of routine.
  The `jr` at 0x22b4 returns with v0 = ?.
- `odsy_Probe2AB` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`, 0x2ad0, 796 bytes) Inferred.
  Stores 1 byte from `s8` to sym(odsy_i2cRcvBuf) +0x80 (`sb` at 0x2b5c).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a0`: 6 such accesses, including `ld` at 0x2bb4, 0x2c20, 0x2c54.
  Loads 1 byte from a1 (arg1 at entry) +0x0 into `at` (`lbu` at 0x2bc0).
  Loads 1 byte from a1 (arg1 at entry) +0x0 into `v1` (`lbu` at 0x2c8c).
  Stores 1 byte from `a5` to sym(odsy_i2cRcvBuf) +0x80 (`sb` at 0x2cc8).
  Stores 1 byte from `v0` to sym(odsy_i2cRcvBuf) +0x80 (`sb` at 0x2d2c).
  Stores 1 byte from `v1` to ? (base unknown) (`sb` at 0x2d64).
  Loads 8 bytes from ? (base unknown) into `a0` (`ld` at 0x2dc8).
  Calls `odsy_i2cReset` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2af8).
  Calls `odsy_2abGetReply` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-256, a3=? (`jal` at 0x2b34).
  Calls `odsy_2abSendCmd` via direct with a0=a0 at entry (arg0), a1=0x1, a2=sym(odsy_i2cRcvBuf), a3=0x0 (`jal` at 0x2b74).
  Calls `odsy_i2c_stop` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x2b9c).
  Calls `odsy_usdelay` via direct with a0=[a0+16]:8, a1=[sym(.sdata)+32], a2=?, a3=? (`jal` at 0x2bb0).
  Calls `odsy_i2c_stop` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x2c10).
  Calls `odsy_usdelay` via direct with a0=[a0+16]:8, a1=[sym(.sdata)+32], a2=?, a3=? (`jal` at 0x2c1c).
  Calls `odsy_usdelay` via direct with a0=[a0+16]:8, a1=[sym(.sdata)+32], a2=?, a3=0x1, a6=0x6e (`jal` at 0x2c5c).
  Calls `bcopy` via direct with a0=a1+1, a1=sp-248, a2=ret(odsy_2abGetReply)-1, a3=?, a6=ret(odsy_2abGetReply)-1 (`jal` at 0x2c78).
  Calls `odsy_usdelay` via direct with a0=[a0+16]:8, a1=[sym(.sdata)+32], a2=?, a3=? (`jal` at 0x2cac).
  Calls `odsy_2abSendCmd` via direct with a0=a0 at entry (arg0), a1=0x1, a2=sym(odsy_i2cRcvBuf), a3=0x0, a5=0xf1 (`jal` at 0x2ccc).
  Calls `odsy_2abGetReply` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-256, a3=? (`jal` at 0x2ce0).
  Calls `odsy_usdelay` via direct with a0=[a0+16]:8, a1=[sym(.sdata)+32], a2=?, a3=? (`jal` at 0x2d10).
  Calls `odsy_usdelay` via direct with a0=[a0+16]:8, a1=[sym(.sdata)+32], a2=?, a3=0xe1 (`jal` at 0x2d20).
  Calls `bcopy` via direct with a0=sp-248, a1=?, a2=?, a3=? (`jal` at 0x2d3c).
  Calls `odsy_2abSendCmd` via direct with a0=a0 at entry (arg0), a1=?, a2=sym(odsy_i2cRcvBuf), a3=0x1 (`jal` at 0x2d60).
  Calls `strncmp` via direct with a0=?, a1=sp-248, a2=0x13, a3=? (`jal` at 0x2dc4).
  The `beq` at 0x2b28 is taken when s1(?) == s7(=0x3) and falls through when s1(?) != s7(=0x3).
  The `blez` at 0x2b40 is taken when v0(=ret(odsy_2abGetReply)) <= 0 (signed) and falls through when v0(=ret(odsy_2abGetReply)) > 0 (signed).
  The `beq` at 0x2b4c is taken when v1(?) == a3(=0x1) and falls through when v1(?) != a3(=0x1).
  The `beq` at 0x2b54 is taken when s1(?) == 0 and falls through when s1(?) != 0.
  The `bne` at 0x2b7c is taken when v0(=ret(odsy_2abSendCmd)) != 0 and falls through when v0(=ret(odsy_2abSendCmd)) == 0.
  The `bne` at 0x2b8c is taken when s1(?) < 0x3 (signed) and falls through when s1(?) >= 0x3 (signed).
  The `beq` at 0x2bc8 is taken when at(=[a1]:1) == v1(=0xe0) and falls through when at(=[a1]:1) != v1(=0xe0).
  The `bne` at 0x2bd0 is taken when s1(?) != 0 and falls through when s1(?) == 0.
  The `bltz` at 0x2c24 is taken when s5(=ret(odsy_2abGetReply)) < 0 (signed) and falls through when s5(=ret(odsy_2abGetReply)) >= 0 (signed).
  The `beq` at 0x2c84 is taken when at(?) == 0 and falls through when at(?) != 0.
  The `beq` at 0x2c90 is taken when v1(=[a1]:1) == a3(=0xe1) and falls through when v1(=[a1]:1) != a3(=0xe1).
  The `beq` at 0x2ca0 is taken when s1(?) >= 0x2 (signed) and falls through when s1(?) < 0x2 (signed).
  The `beq` at 0x2cd4 is taken when v0(=ret(odsy_2abSendCmd)) == 0 and falls through when v0(=ret(odsy_2abSendCmd)) != 0.
  The `blez` at 0x2ce8 is taken when v0(=ret(odsy_2abGetReply)) <= 0 (signed) and falls through when v0(=ret(odsy_2abGetReply)) > 0 (signed).
  The `beq` at 0x2cf4 is taken when s5(=ret(odsy_2abGetReply)) >= 0x80 (signed) and falls through when s5(=ret(odsy_2abGetReply)) < 0x80 (signed).
  The `beq` at 0x2d08 is taken when s0(?) >= 0x1e (signed) and falls through when s0(?) < 0x1e (signed).
  The `beq` at 0x2d68 is taken when v0(=ret(odsy_2abSendCmd)) == 0 and falls through when v0(=ret(odsy_2abSendCmd)) != 0.
  The `beq` at 0x2d8c is taken when at(?) == 0 and falls through when at(?) != 0.
  The `beq` at 0x2dcc is taken when v0(=ret(strncmp)) == 0 and falls through when v0(=ret(strncmp)) != 0.
  The `bne` at 0x2dd8 is taken when s1(?) < 0x3 (signed) and falls through when s1(?) >= 0x3 (signed).
  The `jr` at 0x2c08 returns with v0 = one of 0x0, 0x1.

- `odsy_2abCmdWrapper` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`, 0x2dec, 288 bytes) Inferred.
  Loads 8 bytes from a1 (arg1 at entry) +0x20 into `a3` (`ld` at 0x2e30).
  Loads 4 bytes from a1 (arg1 at entry) +0x10 into `a1` (`lw` at 0x2e38).
  Stores 2 bytes from `zero` to a1 (arg1 at entry) +0x14 (`sh` at 0x2e40).
  Loads 8 bytes from a1 (arg1 at entry) +0x20 into `a4` (`ld` at 0x2e54).
  Stores 2 bytes from `a5` to a1 (arg1 at entry) +0x14 (`sh` at 0x2e80).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a0` (`ld` at 0x2ea0).
  Calls `odsy_2abSendCmd` via direct with a0=a0 at entry (arg0), a1=[a1+16], a2=a2 at entry (arg2), a3=? (`jal` at 0x2e44).
  Calls `odsy_2abGetReply` via direct with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=sp-96, a3=?, a4=[a1+32]:8 (`jal` at 0x2e64).
  Calls `odsy_usdelay` via direct with a0=[a0+16]:8, a1=[sym(.sdata)+20], a2=?, a3=?, a4=-0x91 (`jal` at 0x2eac).
  Calls `odsy_usdelay` via direct with a0=[a0+16]:8, a1=[sym(.sdata)+16], a2=?, a3=?, a4=-0x91 (`jal` at 0x2eec).
  Calls `odsy_usdelay` via direct with a0=[a0+16]:8, a1=[sym(.sdata)+12], a2=?, a3=?, a4=-0x91 (`jal` at 0x2efc).
  The `bgez` at 0x2e24 is taken when s2(?) >= 0 (signed) and falls through when s2(?) < 0 (signed).
  The `beq` at 0x2e4c is taken when v0(=ret(odsy_2abSendCmd)) == 0 and falls through when v0(=ret(odsy_2abSendCmd)) != 0.
  The `beq` at 0x2e58 is taken when a4(=[a1+32]:8) == 0 and falls through when a4(=[a1+32]:8) != 0.
  The `bgtz` at 0x2e7c is taken when v0(=ret(odsy_2abGetReply)) > 0 (signed) and falls through when v0(=ret(odsy_2abGetReply)) <= 0 (signed).
  The `bne` at 0x2e90 is taken when at(=[sym(.sdata)+36]) < s1(?) (signed) and falls through when at(=[sym(.sdata)+36]) >= s1(?) (signed).
  The `beq` at 0x2e9c is taken when s1(?) == 0 and falls through when s1(?) != 0.
  The `beq` at 0x2ea4 is taken when s1(?) == v1(=0x1) and falls through when s1(?) != v1(=0x1).
  The `blez` at 0x2ebc is taken when s1(?) <= 0 (signed) and falls through when s1(?) > 0 (signed).
  The `jr` at 0x2ee4 returns with v0 = ?.

- `odsy_2abSendCmd` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`, 0x2f0c, 732 bytes) Inferred.
  Loads 1 byte from a2 (arg2 at entry) +0x0 into `at` (`lbu` at 0x2fac).
  Loads 1 byte from ? (base unknown) into `a1` (`lbu` at 0x3108).
  Calls `odsy_i2c_start` via direct with a0=a0 at entry (arg0), a1=[sym(.sdata)+29]:1, a2=0x1, a3=?, a6=0xf0, a7=0x6e (`jal` at 0x2fec).
  Calls `odsy_i2cFixupAfterErr` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x3000).
  Calls `odsy_i2c_sendbyte` via direct with a0=a0 at entry (arg0), a1=[sym(.sdata)+28]:1, a2=0x1, a3=0x0 (`jal` at 0x3068).
  Calls `odsy_i2cFixupAfterErr` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x3078).
  Calls `odsy_i2c_sendbyte` via direct with a0=a0 at entry (arg0), a1=?, a2=0x1, a3=0x0 (`jal` at 0x30a0).
  Calls `odsy_i2cFixupAfterErr` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x30b0).
  Calls `odsy_i2c_sendbyte` via direct with a0=a0 at entry (arg0), a1=?, a2=0x1, a3=0x0 (`jal` at 0x3110).
  Calls `odsy_i2c_sendbyte` via direct with a0=a0 at entry (arg0), a1=?, a2=0x1, a3=0x0 (`jal` at 0x3148).
  Calls `odsy_i2cFixupAfterErr` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x3158).
  Calls `odsy_i2cFixupAfterErr` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x3178).
  Calls `odsy_i2c_stop` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=a3 at entry (arg3) (`jal` at 0x31d4).
  The `beq` at 0x2f78 is taken when a0(=one of 0x0, 0x1) == 0 and falls through when a0(=one of 0x0, 0x1) != 0.
  The `bne` at 0x2f9c is taken when s0(?) < 0x4 (signed) and falls through when s0(?) >= 0x4 (signed).
  The `bne` at 0x2fa4 is taken when s5(?) != v0(=0x3) and falls through when s5(?) == v0(=0x3).
  The `beq` at 0x2fb0 is taken when at(=[a2]:1) == a6(=0xf0) and falls through when at(=[a2]:1) != a6(=0xf0).
  The `beq` at 0x2ff4 is taken when v0(=ret(odsy_i2c_start)) == 0 and falls through when v0(=ret(odsy_i2c_start)) != 0.
  The `bne` at 0x301c is taken when s1(=one of 0x0, 0x1) != 0 and falls through when s1(=one of 0x0, 0x1) == 0.
  The `bne` at 0x3024 is taken when s2(=one of 0x0, 0x1) != 0 and falls through when s2(=one of 0x0, 0x1) == 0.
  The `bne` at 0x302c is taken when s3(=one of 0x0, 0x1) != 0 and falls through when s3(=one of 0x0, 0x1) == 0.
  The `bne` at 0x3034 is taken when s4(=one of 0x0, 0x1) != 0 and falls through when s4(=one of 0x0, 0x1) == 0.
  The `beq` at 0x3070 is taken when v0(=ret(odsy_i2c_sendbyte)) == 0 and falls through when v0(=ret(odsy_i2c_sendbyte)) != 0.
  The `beq` at 0x30a8 is taken when v0(=ret(odsy_i2c_sendbyte)) == 0 and falls through when v0(=ret(odsy_i2c_sendbyte)) != 0.
  The `blez` at 0x30ec is taken when v1(=a1) <= 0 (signed) and falls through when v1(=a1) > 0 (signed).
  The `bne` at 0x3118 is taken when v0(=ret(odsy_i2c_sendbyte)) != 0 and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` at 0x3134 is taken when s4(?) < a4(=a1) (signed) and falls through when s4(?) >= a4(=a1) (signed).
  The `beq` at 0x3150 is taken when v0(=ret(odsy_i2c_sendbyte)) == 0 and falls through when v0(=ret(odsy_i2c_sendbyte)) != 0.
  The `beq` at 0x31b0 is taken when a5(=a3) == 0 and falls through when a5(=a3) != 0.
  The `jr` at 0x2fdc returns with v0 = one of 0x0, 0x1, 0x3.

- `odsy_2abGetReply` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`, 0x31e8, 560 bytes) Inferred.
  Stores 4 bytes from `zero` to a2 (arg2 at entry) +0x0 (`sw` at 0x321c).
  Stores 1 byte from `v1` to ? (base unknown) (`sb` at 0x3360).
  Loads 4 bytes from a2 (arg2 at entry) +0x0 into `a4` (`lw` at 0x3378).
  Stores 4 bytes from `a4` to a2 (arg2 at entry) +0x0 (`sw` at 0x338c).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a0` (`ld` at 0x33e8).
  Loads 4 bytes from a2 (arg2 at entry) +0x0 into `v0` (`lw` at 0x340c).
  Calls `odsy_i2c_stop` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x3200).
  Calls `odsy_i2c_becomeSlaveRecv` via direct with a0=a0 at entry (arg0), a1=0x1, a2=0x28, a3=sp-112 (`jal` at 0x3218).
  Calls `odsy_i2cFixupAfterErr` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x322c).
  Calls `odsy_i2cFixupAfterErr` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x3264).
  Calls `odsy_i2c_slave_recvbyte` via direct with a0=a0 at entry (arg0), a1=0x1, a2=0x1, a3=sp-112 (`jal` at 0x328c).
  Calls `odsy_i2cFixupAfterErr` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x329c).
  Calls `odsy_i2c_slave_recvbyte` via direct with a0=a0 at entry (arg0), a1=0x1, a2=0x80, a3=sp-112 (`jal` at 0x32dc).
  Calls `odsy_i2cFixupAfterErr` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x32f0).
  Calls `odsy_i2c_slave_recvbyte` via direct with a0=a0 at entry (arg0), a1=0x1, a2=?, a3=sp-112 (`jal` at 0x3340).
  Calls `odsy_i2c_slave_recvbyte` via direct with a0=a0 at entry (arg0), a1=0x1, a2=0x1, a3=sp-112 (`jal` at 0x339c).
  Calls `odsy_i2cFixupAfterErr` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x33ac).
  Calls `odsy_i2cFixupAfterErr` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x33c4).
  Calls `odsy_usdelay` via direct with a0=[a0+16]:8, a1=[sym(.sdata)+24], a2=?, a3=? (`jal` at 0x33e4).
  The `beq` at 0x3220 is taken when v0(=ret(odsy_i2c_becomeSlaveRecv)) == 0 and falls through when v0(=ret(odsy_i2c_becomeSlaveRecv)) != 0.
  The `beq` at 0x3244 is taken when at(?) == v1(=0x2) and falls through when at(?) != v1(=0x2).
  The `beq` at 0x325c is taken when (v0(?) & 0x1) == 0 and falls through when (v0(?) & 0x1) != 0.
  The `beq` at 0x3294 is taken when v0(=ret(odsy_i2c_slave_recvbyte)) == 0 and falls through when v0(=ret(odsy_i2c_slave_recvbyte)) != 0.
  The `beq` at 0x32e4 is taken when v0(=ret(odsy_i2c_slave_recvbyte)) == 0 and falls through when v0(=ret(odsy_i2c_slave_recvbyte)) != 0.
  The `blez` at 0x3320 is taken when at(?) <= 0 (signed) and falls through when at(?) > 0 (signed).
  The `bne` at 0x334c is taken when v0(=ret(odsy_i2c_slave_recvbyte)) != 0 and falls through when v0(=ret(odsy_i2c_slave_recvbyte)) == 0.
  The `bne` at 0x3388 is taken when a3(?) < a4(?) (signed) and falls through when a3(?) >= a4(?) (signed).
  The `beq` at 0x33a4 is taken when v0(=ret(odsy_i2c_slave_recvbyte)) == 0 and falls through when v0(=ret(odsy_i2c_slave_recvbyte)) != 0.
  The `beq` at 0x33f8 is taken when v1(?) == a3(?) and falls through when v1(?) != a3(?).
  The `jr` at 0x324c returns with v0 = ?.

- `odsyInitDDRNs` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddrn.o)`, 0x0, 84 bytes) Inferred.
  Stores 4 bytes from `a2` to ? (base unknown) (`sw` at 0x44).
  Calls `bzero` via direct with a0=sym(ODSYddrn), a1=0xee20, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x14).
  The `bne` at 0x40 is taken when a0(?) < 0x7f (signed) and falls through when a0(?) >= 0x7f (signed).
  The `jr` at 0x4c returns with v0 = ?.

- `gf_OdsyCreateDDRN` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddrn.o)`, 0x54, 888 bytes) Inferred.
  Loads 8 bytes from a1 (arg1 at entry) +0x40 into `at` (`ld` at 0x54).
  Loads 4 bytes from [a1+64]:8 +0x30 into `at` (`lw` at 0x58).
  Loads 2 bytes from a0 (arg0 at entry) +0x2c4 into `v1` (`lh` at 0x78).
  Loads 4 bytes from a0 (arg0 at entry) +0x2d8 into `a3` (`lw` at 0x84).
  Loads 4 bytes from sym(ODSYddrn) +0x0 into `a4` (`lw` at 0xa8).
  Loads 4 bytes from ? (base unknown) into `v1` (`lw` at 0xd8, 0x244).
  Stores 8 bytes from `s2` to a1 (arg1 at entry) +0x70 (`sd` at 0x100).
  Stores 4 bytes from `v0` to ? (base unknown) (`sw` at 0x104, 0x174).
  Loads 4 bytes from a0 (arg0 at entry) +0x1220 into `a4` (`lw` at 0x108).
  Stores 4 bytes from `a4` to a0 (arg0 at entry) +0x1220 (`sw` at 0x118).
  Stores 4 bytes from `zero` to ? (base unknown): 6 such accesses, including `sw` at 0x11c, 0x140, 0x144.
  Stores 4 bytes from `s4` to ? (base unknown): 5 such accesses, including `sw` at 0x120, 0x280, 0x288.
  Stores 8 bytes from `zero` to ? (base unknown): 4 such accesses, including `sd` at 0x124, 0x130, 0x13c.
  Stores 8 bytes from `s0` to ? (base unknown) (`sd` at 0x128).
  Stores 4 bytes from `t8` to ? (base unknown) (`sw` at 0x154, 0x15c).
  Stores 8 bytes from `s4` to ? (base unknown) (`sd` at 0x160, 0x16c).
  Loads 8 bytes from a0 (arg0 at entry) +0x2f0 into `t9` (`ld` at 0x178).
  Stores 2 bytes from `zero` to ([a0+752]:8 + (ret(OdsyAlloc32kSlot) + ret(OdsyAlloc32kSlot))) +0x0 (`sh` at 0x190).
  Stores 8 bytes from `v0` to ? (base unknown) (`sd` at 0x198, 0x1f8).
  Loads 8 bytes from ? (base unknown) into `a0` (`ld` at 0x1ec, 0x270, 0x398).
  Loads 4 bytes from ? (base unknown) into `at` (`lw` at 0x208).
  Loads 4 bytes from ? (base unknown) into `a3` (`lw` at 0x214).
  Stores 4 bytes from `at` to ? (base unknown) (`sw` at 0x220).
  Stores 4 bytes from `a3` to ? (base unknown) (`sw` at 0x22c).
  Loads 4 bytes from ? (base unknown) into `a4` (`lw` at 0x238).
  Stores 4 bytes from `a4` to ? (base unknown) (`sw` at 0x254, 0x278, 0x27c).
  Stores 4 bytes from `v1` to ? (base unknown) (`sw` at 0x264).
  Stores 4 bytes from `a5` to ? (base unknown) (`sw` at 0x26c).
  Loads 4 bytes from a0 (arg0 at entry) +0x28e8 into `at` (`lw` at 0x28c).
  Loads 8 bytes from ? (base unknown) into `ra` (`ld` at 0x29c).
  Stores 8 bytes from `zero` to a1 (arg1 at entry) +0x38: 4 such accesses, including `sd` at 0x2e8, 0x32c, 0x388.
  Loads 4 bytes from a0 (arg0 at entry) +0x1220 into `a3` (`lw` at 0x34c).
  Stores 4 bytes from `a3` to a0 (arg0 at entry) +0x1220 (`sw` at 0x358).
  Calls `psema` via direct with a0=a0+6032, a1=0x19, a2=a2 at entry (arg2), a3=[a0+728] (`jal` at 0x9c).
  Calls `vsema` via direct with a0=?, a1=sym(ODSYddrn), a2=?, a3=0x7f, a4=[a0+4640]+1 (`jal` at 0x114).
  Calls `OdsyInitCSet` via direct with a0=?, a1=0x4, a2=?, a3=? (`jal` at 0x138).
  Calls `OdsyAlloc32kSlot` via direct with a0=a0+6112, a1=?, a2=?, a3=? (`jal` at 0x168).
  Calls `kmem_zalloc` via direct with a0=0x4000, a1=0x8800, a2=?, a3=? (`jal` at 0x18c).
  Calls `odsyMapPages` via direct with a0=0x0, a1=?, a2=ret(kmem_zalloc), a3=0x4000, a4=sp-96, a5=0x1 (`jal` at 0x1d8).
  Calls `ddv_getaddr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1e8).
  Calls `odsyResetHwShadow` via direct with a0=?, a1=0xffffffffff000fff, a2=0xfff000, a3=?, a4=0x1001, a5=0xffffffffff00ff00, a6=-0x1000 (`jal` at 0x284).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=? (`jal` at 0x2e0).
  Calls `cmn_err` via direct with a0=0x5, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x300).
  Calls `vsema` via direct with a0=?, a1=sym(ODSYddrn), a2=?, a3=0x7f, a4=[sym(ODSYddrn)] (`jal` at 0x314).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x324).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x344).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x380).
  Calls `kmem_free` via direct with a0=?, a1=0x4000, a2=?, a3=? (`jal` at 0x3a0).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x3b4).
  The `bne` at 0x70 is taken when (at(=[[a1+64]:8+48]) & 0x4) != 0 and falls through when (at(=[[a1+64]:8+48]) & 0x4) == 0.
  The `beq` at 0x7c is taken when v1(=[a0+708]:2) == 0 and falls through when v1(=[a0+708]:2) != 0.
  The `bne` at 0x88 is taken when a3(=[a0+728]) != 0 and falls through when a3(=[a0+728]) == 0.
  The `beq` at 0xb4 is taken when a4(=[sym(ODSYddrn)]) == s4(=-0x1) and falls through when a4(=[sym(ODSYddrn)]) != s4(=-0x1).
  The `beq` at 0xcc is taken when v0(?) >= 0x7f (signed) and falls through when v0(?) < 0x7f (signed).
  The `bne` at 0xdc is taken when v1(?) != s4(=-0x1) and falls through when v1(?) == s4(=-0x1).
  The `beq` at 0xe4 is taken when v0(?) == a3(=0x7f) and falls through when v0(?) != a3(=0x7f).
  The `bltz` at 0x170 is taken when v0(=ret(OdsyAlloc32kSlot)) < 0 (signed) and falls through when v0(=ret(OdsyAlloc32kSlot)) >= 0 (signed).
  The `beq` at 0x194 is taken when v0(=ret(kmem_zalloc)) == 0 and falls through when v0(=ret(kmem_zalloc)) != 0.
  The `bne` at 0x1e0 is taken when v0(=ret(odsyMapPages)) != 0 and falls through when v0(=ret(odsyMapPages)) == 0.
  The `bne` at 0x268 is taken when a0(?) < 0x4 (signed) and falls through when a0(?) >= 0x4 (signed).
  The `jr` at 0x2cc returns with v0 = one of 0x0, 0x1.

- `gf_OdsyDestroyDDRN` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddrn.o)`, 0x3cc, 564 bytes) Inferred.
  Loads 8 bytes from a2 (arg2 at entry) +0x70 into `s0` (`ld` at 0x3d4).
  Loads 8 bytes from a1 (arg1 at entry) +0x20 into `v0` (`ld` at 0x3dc).
  Loads 8 bytes from [a1+32]:8 +0x8 into `a3` (`ld` at 0x3e4).
  Loads 4 bytes from a0 (arg0 at entry) +0x2d8 into `at` (`lw` at 0x404).
  Loads 4 bytes from a0 (arg0 at entry) +0x28e8 into `a4` (`lw` at 0x418).
  Loads 8 bytes from [a2+112]:8 +0x70 into `v1` (`ld` at 0x428).
  Loads 4 bytes from ? (base unknown) into `v1` (`lw` at 0x438).
  Stores 2 bytes from `zero` to a0 (arg0 at entry) +0x2c4 (`sh` at 0x444).
  Loads 4 bytes from a0 (arg0 at entry) +0x2dc into `at` (`lw` at 0x448, 0x5b4).
  Loads 4 bytes from [a2+112]:8 +0x0 into `a5` (`lw` at 0x44c).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x2dc (`sw` at 0x458).
  Loads 4 bytes from a2 (arg2 at entry) +0x1c into `a2` (`lw` at 0x45c).
  Loads 4 bytes from [a2+112]:8 +0x130 into `a5` (`lw` at 0x4a0).
  Stores 8 bytes from `zero` to [a2+112]:8 +0x90 (`sd` at 0x4ac).
  Stores 8 bytes from `zero` to a2 (arg2 at entry) +0x70 (`sd` at 0x4b0).
  Loads 8 bytes from [a2+112]:8 +0x70 into `a0` (`ld` at 0x4b4).
  Loads 4 bytes from [a2+112]:8 +0xa4 into `a1` (`lw` at 0x4cc).
  Loads 4 bytes from a0 (arg0 at entry) +0x1220 into `at` (`lw` at 0x4e0).
  Loads 8 bytes from a0 (arg0 at entry) +0x2d0 into `a0` (`ld` at 0x4ec).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x2d0 (`sd` at 0x500).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `a4` (`ld` at 0x508).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x28a4 (`sw` at 0x50c).
  Stores 4 bytes from `zero` to [a0+736]:8 +0x1074 (`sw` at 0x510).
  Stores 4 bytes from `at` to [a2+112]:8 +0x0 (`sw` at 0x518).
  Loads 4 bytes from a0 (arg0 at entry) +0x1220 into `a5` (`lw` at 0x520).
  Stores 4 bytes from `a5` to a0 (arg0 at entry) +0x1220 (`sw` at 0x52c).
  Loads 8 bytes from a1 (arg1 at entry) +0x0 into `v1` (`ld` at 0x53c).
  Loads 8 bytes from [a1]:8 +0x8 into `v1` (`ld` at 0x540).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `a4` (`ld` at 0x54c).
  Stores 4 bytes from `v0` to [a2+112]:8 +0x130 (`sw` at 0x584).
  Loads 8 bytes from a1 (arg1 at entry) +0x18 into `a5` (`ld` at 0x58c).
  Loads 8 bytes from [a1+24]:8 +0x78 into `a5` (`ld` at 0x590).
  Calls `gf_OdsyUnSchedSwapBuf` via direct with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=[a2+28], a3=?, a5=[[a2+112]:8] (`jal` at 0x46c).
  Calls `gf_OdsyUnSchedRetraceEvent` via direct with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=?, a3=? (`jal` at 0x478).
  Calls `kmem_free` via direct with a0=[[a2+112]:8+112]:8, a1=0x4000, a2=?, a3=? (`jal` at 0x4c4).
  Calls `OdsyFree32kSlot` via direct with a0=a0+6112, a1=[[a2+112]:8+164], a2=?, a3=? (`jal` at 0x4d0).
  Calls `gfx_flow_dealloc` via direct with a0=[a0+720]:8, a1=?, a2=?, a3=? (`jal` at 0x4f8).
  Calls `odsyDMAFinish` via direct with a0=a0 at entry (arg0), a1=[a2+112]:8, a2=?, a3=?, a5=[[a2+112]:8+304] (`jal` at 0x560).
  Calls `odsyMMdetach` via direct with a0=a1 at entry (arg1), a1=[a2+112]:8, a2=?, a3=? (`jal` at 0x56c).
  Calls `odsyUnpinAndUnmapGctxRegions` via direct with a0=[a2+112]:8, a1=?, a2=?, a3=? (`jal` at 0x574).
  Calls `(unknown callee)` via register with a0=[a1+32]:8, a1=a2 at entry (arg2), a2=0x0, a3=[[a1+32]:8+8]:8, a5=[[a1+24]:8+120]:8 (`jalr` at 0x5a0).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x5cc).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x5e8).
  The `bne` at 0x3fc is taken when a3(=[[a1+32]:8+8]:8) != a2 and falls through when a3(=[[a1+32]:8+8]:8) == a2.
  The `beq` at 0x408 is taken when at(=[a0+728]) == 0 and falls through when at(=[a0+728]) != 0.
  The `beq` at 0x410 is taken when a0(=one of 0x0, 0x1) == 0 and falls through when a0(=one of 0x0, 0x1) != 0.
  The `beq` at 0x43c is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `bne` at 0x450 is taken when a5(=[[a2+112]:8]) != at(=[a0+732]) and falls through when a5(=[[a2+112]:8]) == at(=[a0+732]).
  The `bltz` at 0x460 is taken when a2(=[a2+28]) < 0 (signed) and falls through when a2(=[a2+28]) >= 0 (signed).
  The `bne` at 0x490 is taken when s0(=[a2+112]:8) < v1(=sym(ODSYddrn)) (unsigned) and falls through when s0(=[a2+112]:8) >= v1(=sym(ODSYddrn)) (unsigned).
  The `bne` at 0x498 is taken when a4(?) != 0 and falls through when a4(?) == 0.
  The `beq` at 0x4a4 is taken when a5(=[[a2+112]:8+304]) == 0 and falls through when a5(=[[a2+112]:8+304]) != 0.
  The `beq` at 0x4b8 is taken when a0(=[[a2+112]:8+112]:8) == 0 and falls through when a0(=[[a2+112]:8+112]:8) != 0.
  The `bne` at 0x4e4 is taken when at(=[a0+4640]) != v1(=0x1) and falls through when at(=[a0+4640]) == v1(=0x1).
  The `beq` at 0x4f0 is taken when a0(=[a0+720]:8) == 0 and falls through when a0(=[a0+720]:8) != 0.
  The `beq` at 0x544 is taken when v1(=[[a1]:8+8]:8) == a4(=a1) and falls through when v1(=[[a1]:8+8]:8) != a4(=a1).
  The `beq` at 0x550 is taken when a4(=[a0]:8) == 0 and falls through when a4(=[a0]:8) != 0.
  The `bne` at 0x5a8 is taken when v0(=ret(?)) != 0 and falls through when v0(=ret(?)) == 0.
  The `jr` at 0x534 returns with v0 = ?.

- `gfP_OdsyDIAGallocScanbuf` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`, 0x0, 532 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `s0` (`ld` at 0x2c).
  Loads 8 bytes from [a0+32]:8 +0x5628 into `at` (`ld` at 0x44).
  Stores 8 bytes from `v0` to [a0+32]:8 +0x5608 (`sd` at 0x78).
  Loads 8 bytes from [a0+32]:8 +0x5608 into `a0` (`ld` at 0xa8, 0xf4).
  Stores 4 bytes from `a1` to [a0+32]:8 +0x5620 (`sw` at 0xc4).
  Stores 8 bytes from `v0` to [a0+32]:8 +0x5628 (`sd` at 0xd4).
  Loads 8 bytes from [a0+32]:8 +0x5618 into `a0` (`ld` at 0xdc, 0xe0).
  Stores 8 bytes from `v0` to [a0+32]:8 +0x5610 (`sd` at 0xe8).
  Stores 4 bytes from `zero` to a3 (arg3 at entry) +0x0 (`sw` at 0x114).
  Loads 4 bytes from [a0+32]:8 +0x5620 into `a2` (`lw` at 0x118).
  Stores 4 bytes from `zero` to ? (base unknown) (`sw` at 0x160).
  Stores 4 bytes from `at` to ? (base unknown) (`sw` at 0x170).
  Loads 4 bytes from [a0+32]:8 +0x5620 into `a1` (`lw` at 0x174, 0x188).
  Stores 4 bytes from `v1` to ? (base unknown) (`sw` at 0x184).
  Stores 4 bytes from `a4` to a3 (arg3 at entry) +0x0 (`sw` at 0x1e4, 0x210).
  Calls `copyin` via direct with a0=a2 at entry (arg2), a1=sp-128, a2=0x18, a3=a3 at entry (arg3) (`jal` at 0x28).
  Calls `mutex_lock` via direct with a0=[a0+32]:8+22008, a1=0x19, a2=?, a3=? (`jal` at 0x3c).
  Calls `mutex_unlock` via direct with a0=?, a1=0x8100, a2=?, a3=? (`jal` at 0x54).
  Calls `kmem_alloc` via direct with a0=?, a1=0x8100, a2=?, a3=? (`jal` at 0x6c).
  Calls `odsyMapPages` via direct with a0=0x0, a1=0x0, a2=ret(kmem_alloc), a3=?, a4=0x0, a5=0x0, a6=[a0+32]:8+22040 (`jal` at 0x94).
  Calls `kmem_free` via direct with a0=[[a0+32]:8+22024]:8, a1=?, a2=?, a3=? (`jal` at 0xa4).
  Calls `mutex_unlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xb0).
  Calls `mutex_unlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xd0).
  Calls `ddv_getaddr` via direct with a0=[[a0+32]:8+22040]:8, a1=?, a2=?, a3=? (`jal` at 0xd8).
  Calls `ddv_getaddr` via direct with a0=[[a0+32]:8+22040]:8, a1=?, a2=?, a3=? (`jal` at 0xe4).
  Calls `kvtophys` via direct with a0=[[a0+32]:8+22024]:8, a1=?, a2=?, a3=? (`jal` at 0xf0).
  Calls `copyout` via direct with a0=sp-128, a1=a2 at entry (arg2), a2=0x18, a3=? (`jal` at 0x104).
  Calls `printf` via direct with a0=sym(.rodata), a1=?, a2=[[a0+32]:8+22048], a3=? (`jal` at 0x140).
  Calls `dki_dcache_wb` via direct with a0=?, a1=[[a0+32]:8+22048], a2=?, a3=? (`jal` at 0x190).
  Calls `mutex_unlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1ac).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x1c8).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x1f4).
  The `bne` at 0x30 is taken when v0(=ret(copyin)) != 0 and falls through when v0(=ret(copyin)) == 0.
  The `beq` at 0x48 is taken when at(=[[a0+32]:8+22056]:8) == 0 and falls through when at(=[[a0+32]:8+22056]:8) != 0.
  The `beq` at 0x74 is taken when v0(=ret(kmem_alloc)) == 0 and falls through when v0(=ret(kmem_alloc)) != 0.
  The `beq` at 0x9c is taken when v0(=ret(odsyMapPages)) == 0 and falls through when v0(=ret(odsyMapPages)) != 0.
  The `bne` at 0x10c is taken when v0(=ret(copyout)) != 0 and falls through when v0(=ret(copyout)) == 0.
  The `blez` at 0x150 is taken when v0(?) <= 0 (signed) and falls through when v0(?) > 0 (signed).
  The `bne` at 0x164 is taken when a0(?) < v0(?) (signed) and falls through when a0(?) >= v0(?) (signed).
  The `bne` at 0x17c is taken when a1(=[[a0+32]:8+22048]) < 0x4001 (signed) and falls through when a1(=[[a0+32]:8+22048]) >= 0x4001 (signed).
  The `jr` at 0x64 returns with v0 = ?.

- `gfP_OdsyDIAGfreeScanbuf` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`, 0x214, 144 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `s0` (`ld` at 0x220).
  Loads 8 bytes from [a0+32]:8 +0x5628 into `at` (`ld` at 0x244).
  Loads 4 bytes from [a0+32]:8 +0x5620 into `a1` (`lw` at 0x260).
  Loads 8 bytes from [a0+32]:8 +0x5608 into `a0` (`ld` at 0x268).
  Stores 8 bytes from `zero` to [a0+32]:8 +0x5628 (`sd` at 0x26c).
  Stores 4 bytes from `zero` to [a0+32]:8 +0x5620 (`sw` at 0x270).
  Stores 8 bytes from `zero` to [a0+32]:8 +0x5618 (`sd` at 0x274).
  Stores 8 bytes from `zero` to [a0+32]:8 +0x5608 (`sd` at 0x278).
  Stores 4 bytes from `zero` to a3 (arg3 at entry) +0x0 (`sw` at 0x2a0).
  Calls `mutex_lock` via direct with a0=[a0+32]:8+22008, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x23c).
  Calls `odsyUnmapPages` via direct with a0=[a0+32]:8+22040, a1=?, a2=?, a3=? (`jal` at 0x258).
  Calls `kmem_free` via direct with a0=[[a0+32]:8+22024]:8, a1=[[a0+32]:8+22048], a2=?, a3=? (`jal` at 0x264).
  Calls `mutex_unlock` via direct with a0=[a0+32]:8+22008, a1=?, a2=?, a3=? (`jal` at 0x280).
  The `bne` at 0x24c is taken when at(=[[a0+32]:8+22056]:8) != v0(=a0) and falls through when at(=[[a0+32]:8+22056]:8) == v0(=a0).
  The `jr` at 0x29c returns with v0 = 0x0.

- `gfP_OdsyDIAGgetShadowPtrs` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`, 0x2a4, 664 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `s1` (`ld` at 0x2dc).
  Loads 8 bytes from [a0+32]:8 +0x5640 into `at` (`ld` at 0x2f4).
  Stores 4 bytes from `v1` to a3 (arg3 at entry) +0x0 (`sw` at 0x314, 0x410).
  Loads 8 bytes from [a0+32]:8 +0x2f0 into `a2` (`ld` at 0x32c).
  Stores 4 bytes from `a4` to a3 (arg3 at entry) +0x0 (`sw` at 0x350, 0x508, 0x52c).
  Loads 8 bytes from ? (base unknown) into `a2` (`ld` at 0x3a0).
  Stores 4 bytes from `v0` to ? (base unknown) (`sw` at 0x3bc).
  Loads 4 bytes from ? (base unknown) into `a5` (`lw` at 0x3d4).
  Stores 8 bytes from `a1` to [a0+32]:8 +0x5640 (`sd` at 0x448).
  Loads 8 bytes from [a0+32]:8 +0x5688 into `a0` (`ld` at 0x450).
  Loads 8 bytes from [a0+32]:8 +0x2f0 into `a4` (`ld` at 0x45c).
  Loads 8 bytes from ? (base unknown) into `a0` (`ld` at 0x488).
  Stores 8 bytes from `v0` to ? (base unknown) (`sd` at 0x498, 0x4a0).
  Loads 8 bytes from ? (base unknown) into `a5` (`ld` at 0x4ac).
  Stores 8 bytes from `a5` to ? (base unknown) (`sd` at 0x4bc).
  Stores 4 bytes from `zero` to a3 (arg3 at entry) +0x0 (`sw` at 0x4e0).
  Calls `copyin` via direct with a0=a2 at entry (arg2), a1=sp-224, a2=0x50, a3=a3 at entry (arg3) (`jal` at 0x2d8).
  Calls `mutex_lock` via direct with a0=[a0+32]:8+22064, a1=0x19, a2=?, a3=? (`jal` at 0x2ec).
  Calls `mutex_unlock` via direct with a0=?, a1=?, a2=?, a3=0x10000 (`jal` at 0x308).
  Calls `odsyMapPages` via direct with a0=0x0, a1=0x0, a2=[[a0+32]:8+752]:8, a3=0x10000, a4=0x0, a5=0x0, a6=[a0+32]:8+22152 (`jal` at 0x33c).
  Calls `odsyMapPages` via direct with a0=0x0, a1=0x0, a2=?, a3=0x4000, a4=0x0, a5=0x0 (`jal` at 0x39c).
  Calls `odsyUnmapPages` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3f0).
  Calls `mutex_unlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x404).
  Calls `odsyUnmapPages` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x424).
  Calls `mutex_unlock` via direct with a0=?, a1=a0 at entry (arg0), a2=?, a3=? (`jal` at 0x444).
  Calls `ddv_getaddr` via direct with a0=[[a0+32]:8+22152]:8, a1=?, a2=?, a3=? (`jal` at 0x44c).
  Calls `ddv_getaddr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x484).
  Calls `copyout` via direct with a0=sp-224, a1=a2 at entry (arg2), a2=0x50, a3=? (`jal` at 0x4c8).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x4fc).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x520).
  The `bne` at 0x2e0 is taken when v0(=ret(copyin)) != 0 and falls through when v0(=ret(copyin)) == 0.
  The `beq` at 0x2f8 is taken when at(=[[a0+32]:8+22080]:8) == 0 and falls through when at(=[[a0+32]:8+22080]:8) != 0.
  The `beq` at 0x348 is taken when v0(=ret(odsyMapPages)) == 0 and falls through when v0(=ret(odsyMapPages)) != 0.
  The `bne` at 0x3b8 is taken when s3(?) < 0x4 (unsigned) and falls through when s3(?) >= 0x4 (unsigned).
  The `beq` at 0x3c0 is taken when s2(?) == 0 and falls through when s2(?) != 0.
  The `beq` at 0x3d8 is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `bne` at 0x3e8 is taken when s3(?) < 0x4 (unsigned) and falls through when s3(?) >= 0x4 (unsigned).
  The `bne` at 0x4b8 is taken when s3(?) < 0x4 (unsigned) and falls through when s3(?) >= 0x4 (unsigned).
  The `bne` at 0x4d8 is taken when v0(=ret(copyout)) != 0 and falls through when v0(=ret(copyout)) == 0.
  The `jr` at 0x364 returns with v0 = ?.

- `gfP_OdsyDIAGreleaseShadowPtrs` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`, 0x53c, 212 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `s0` (`ld` at 0x54c).
  Loads 8 bytes from [a0+32]:8 +0x5640 into `at` (`ld` at 0x570).
  Stores 4 bytes from `v1` to a3 (arg3 at entry) +0x0 (`sw` at 0x58c).
  Stores 8 bytes from `zero` to ? (base unknown) (`sd` at 0x5d8).
  Stores 8 bytes from `zero` to [a0+32]:8 +0x5640 (`sd` at 0x5dc).
  Stores 4 bytes from `zero` to a3 (arg3 at entry) +0x0 (`sw` at 0x600).
  Calls `mutex_lock` via direct with a0=[a0+32]:8+22064, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x568).
  Calls `mutex_unlock` via direct with a0=[a0+32]:8+22064, a1=?, a2=?, a3=? (`jal` at 0x580).
  Calls `odsyUnmapPages` via direct with a0=[a0+32]:8+22152, a1=?, a2=?, a3=? (`jal` at 0x5ac).
  Calls `odsyUnmapPages` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x5c8).
  Calls `mutex_unlock` via direct with a0=[a0+32]:8+22064, a1=?, a2=?, a3=? (`jal` at 0x5e0).
  The `beq` at 0x574 is taken when at(=[[a0+32]:8+22080]:8) == s1(=a0) and falls through when at(=[[a0+32]:8+22080]:8) != s1(=a0).
  The `bne` at 0x5d4 is taken when s5(?) < 0x4 (unsigned) and falls through when s5(?) >= 0x4 (unsigned).
  The `jr` at 0x608 returns with v0 = one of 0x0, 0x1.

- `odsyInitPfRgn` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`, 0x610, 184 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x2848 into `at` (`ld` at 0x610).
  Stores 8 bytes from `v0` to a0 (arg0 at entry) +0x2848 (`sd` at 0x648).
  Stores 4 bytes from `a1` to a0 (arg0 at entry) +0x2840 (`sw` at 0x664).
  Loads 8 bytes from a0 (arg0 at entry) +0x2848 into `a0` (`ld` at 0x670).
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x28c8 (`sw` at 0x678).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `ra` (`ld` at 0x680).
  Stores 4 bytes from `a3` to a0 (arg0 at entry) +0x28c4 (`sw` at 0x688).
  Stores 4 bytes from `a3` to [a0+736]:8 +0x401c (`sw` at 0x68c).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `a3` (`ld` at 0x694).
  Loads 4 bytes from a0 (arg0 at entry) +0x28c8 into `a2` (`lw` at 0x698).
  Stores 4 bytes from `a2` to [a0+736]:8 +0x4024 (`sw` at 0x6a0).
  Calls `kmem_zalloc` via direct with a0=0x4000, a1=0x8800, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x638).
  Calls `odsyPinAndMapPfStatRegions` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=a1 at entry (arg1) (`jal` at 0x660).
  Calls `kvtophys` via direct with a0=[a0+10312]:8, a1=?, a2=?, a3=? (`jal` at 0x66c).
  Calls `printf` via direct with a0=sym(.rodata), a1=?, a2=?, a3=? (`jal` at 0x6a8).
  Calls `mutex_unlock` via direct with a0=a0+10336, a1=?, a2=?, a3=? (`jal` at 0x6b4).
  The `beq` at 0x61c is taken when at(=[a0+10312]:8) == 0 and falls through when at(=[a0+10312]:8) != 0.
  The `beq` at 0x644 is taken when v0(=ret(kmem_zalloc)) == 0 and falls through when v0(=ret(kmem_zalloc)) != 0.
  The `jr` at 0x628 returns with v0 = one of 0x0, 0x1.

- `odsyDestroyPfRgn` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`, 0x6c8, 112 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x2848 into `at` (`ld` at 0x6c8).
  Loads 4 bytes from a0 (arg0 at entry) +0x2840 into `v0` (`lw` at 0x6dc).
  Loads 4 bytes from a0 (arg0 at entry) +0x2840 into `a1` (`lw` at 0x6f4).
  Loads 8 bytes from a0 (arg0 at entry) +0x2848 into `a0` (`ld` at 0x6fc).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x28c8 (`sw` at 0x700).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x28c4 (`sw` at 0x704).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x2850 (`sd` at 0x708).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x2848 (`sd` at 0x70c).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `ra` (`ld` at 0x710).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x2840 (`sw` at 0x714).
  Stores 4 bytes from `zero` to [a0+736]:8 +0x401c (`sw` at 0x718).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `a1` (`ld` at 0x720).
  Loads 4 bytes from a0 (arg0 at entry) +0x28c8 into `v1` (`lw` at 0x724).
  Stores 4 bytes from `v1` to [a0+736]:8 +0x4024 (`sw` at 0x728).
  Calls `odsyUnpinAndUnmapPfStatRegions` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x6ec).
  Calls `kmem_free` via direct with a0=[a0+10312]:8, a1=[a0+10304], a2=?, a3=? (`jal` at 0x6f8).
  The `beq` at 0x6d4 is taken when at(=[a0+10312]:8) == 0 and falls through when at(=[a0+10312]:8) != 0.
  The `beq` at 0x6e0 is taken when v0(=[a0+10304]) == 0 and falls through when v0(=[a0+10304]) != 0.
  The `jr` at 0x730 returns with v0 = ?.

- `gfP_OdsyPerfStat` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`, 0x738, 512 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `s0` (`ld` at 0x744).
  Stores 4 bytes from `zero` to a3 (arg3 at entry) +0x0 (`sw` at 0x75c).
  Loads 8 bytes from [a0+32]:8 +0x2848 into `a5` (`ld` at 0x7ac, 0x7fc).
  Loads 8 bytes from [a0+32]:8 +0x2850 into `a3` (`ld` at 0x7d8).
  Stores 4 bytes from `s0` to a3 (arg3 at entry) +0x0 (`sw` at 0x844).
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `a4` (`ld` at 0x8c4).
  Stores 4 bytes from `v1` to [a0+32]:8 +0x28cc (`sw` at 0x8d0).
  Stores 4 bytes from `v1` to [[a0+32]:8+736]:8 +0x402c (`sw` at 0x8d8).
  Stores 4 bytes from `a4` to a3 (arg3 at entry) +0x0 (`sw` at 0x904, 0x934).
  Calls `copyin` via direct with a0=a2 at entry (arg2), a1=sp-112, a2=0x18, a3=a3 at entry (arg3) (`jal` at 0x760).
  Calls `mutex_lock` via direct with a0=[a0+32]:8+10336, a1=0x19, a2=?, a3=?, a4=0x5 (`jal` at 0x798).
  Calls `odsyInitPfRgn` via direct with a0=[a0+32]:8, a1=?, a2=?, a3=? (`jal` at 0x7c8).
  Calls `copyout` via direct with a0=sp-112, a1=a2 at entry (arg2), a2=0x18, a3=[[a0+32]:8+10320]:8 (`jal` at 0x7e0).
  Calls `odsyDestroyPfRgn` via direct with a0=[a0+32]:8, a1=?, a2=?, a3=?, a5=[[a0+32]:8+10312]:8 (`jal` at 0x808).
  Calls `mutex_unlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x814).
  Calls `odsyDestroyPfRgn` via direct with a0=[a0+32]:8, a1=?, a2=?, a3=?, a5=[[a0+32]:8+10312]:8 (`jal` at 0x82c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a4=0x5 (`jal` at 0x8e8).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x918).
  The `bne` at 0x76c is taken when v0(=ret(copyin)) != 0 and falls through when v0(=ret(copyin)) == 0.
  The `beq` at 0x788 is taken when v1(?) == a4(=0x5) and falls through when v1(?) != a4(=0x5).
  The `beq` at 0x7a4 is taken when (s1(?) & 0x1) == 0 and falls through when (s1(?) & 0x1) != 0.
  The `bne` at 0x7b0 is taken when a5(=[[a0+32]:8+10312]:8) != 0 and falls through when a5(=[[a0+32]:8+10312]:8) == 0.
  The `bne` at 0x7e8 is taken when v0(=ret(copyout)) != 0 and falls through when v0(=ret(copyout)) == 0.
  The `beq` at 0x7f4 is taken when a4(?) == 0 and falls through when a4(?) != 0.
  The `beq` at 0x800 is taken when a5(=[[a0+32]:8+10312]:8) == 0 and falls through when a5(=[[a0+32]:8+10312]:8) != 0.
  The `beq` at 0x858 is taken when at(?) == 0 and falls through when at(?) != 0.
  The `jr` at 0x824 returns with v0 = one of -0x1, 0x0, 0xe.

- `gfP_OdsyDIAGreset` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`, 0x938, 72 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `s8` (`ld` at 0x948).
  Stores 4 bytes from `zero` to a3 (arg3 at entry) +0x0 (`sw` at 0x97c).
  Calls `odsyReset` via direct with a0=(a2 << 0x0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x94c).
  Calls `odsyInitDBE` via direct with a0=[a0+32]:8, a1=[sym(default_timing)]:8, a2=0x0, a3=? (`jal` at 0x95c).
  The `jr` at 0x978 returns with v0 = 0x0.

- `odsy_NewDmaRegion` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`, 0x0, 400 bytes) Inferred.
  Stores 8 bytes from `zero` to ret(kmem_alloc) +0x0 (`sd` at 0x4c).
  Stores 4 bytes from `s2` to ret(kmem_alloc) +0x30 (`sw` at 0x50).
  Stores 8 bytes from `s3` to ret(kmem_alloc) +0x28 (`sd` at 0x54).
  Stores 8 bytes from `s4` to ret(kmem_alloc) +0x20 (`sd` at 0x58).
  Stores 8 bytes from `v0` to ret(kmem_alloc) +0x18 (`sd` at 0x6c).
  Stores 8 bytes from `at` to ret(kmem_alloc) +0x10 (`sd` at 0x78).
  Stores 4 bytes from `v0` to a7 (arg7 at entry) +0x0 (`sw` at 0xa0, 0xbc).
  Stores 4 bytes from `v1` to ret(kmem_alloc) +0x34 (`sw` at 0xa8).
  Stores 4 bytes from `zero` to ret(kmem_alloc) +0x34 (`sw` at 0xf4, 0x16c).
  Stores 4 bytes from `zero` to a7 (arg7 at entry) +0x0 (`sw` at 0x104).
  Stores 4 bytes from `a4` to a7 (arg7 at entry) +0x0 (`sw` at 0x13c).
  Calls `kmem_alloc` via direct with a0=0x58, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x3c).
  Calls `bcopy` via direct with a0=a6 at entry (arg6), a1=ret(kmem_alloc)+56, a2=0x20, a3=? (`jal` at 0x74).
  Calls `useracc` via direct with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=0x110, a3=0x0 (`jal` at 0x94).
  Calls `odsy_DmaRegion_BuildXlatTbl` via direct with a0=ret(kmem_alloc), a1=?, a2=?, a3=? (`jal` at 0xb4).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0xd4).
  Calls `odsy_DeleteDmaRegion` via direct with a0=ret(kmem_alloc), a1=?, a2=?, a3=? (`jal` at 0xdc).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x130).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x164).
  Calls `odsy_DeleteDmaRegion` via direct with a0=ret(kmem_alloc), a1=?, a2=?, a3=? (`jal` at 0x178).
  The `beq` at 0x44 is taken when v0(=ret(kmem_alloc)) == 0 and falls through when v0(=ret(kmem_alloc)) != 0.
  The `beq` at 0x7c is taken when s2(=a5) == 0 and falls through when s2(=a5) != 0.
  The `bne` at 0x9c is taken when v0(=ret(useracc)) != 0 and falls through when v0(=ret(useracc)) == 0.
  The `beq` at 0xc0 is taken when v0(=ret(odsy_DmaRegion_BuildXlatTbl)) == 0 and falls through when v0(=ret(odsy_DmaRegion_BuildXlatTbl)) != 0.
  The `jr` at 0x114 returns with v0 = ?.

- `odsy_DeleteDmaRegion` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`, 0x190, 88 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x34 into `at` (`lw` at 0x190).
  Loads 8 bytes from a0 (arg0 at entry) +0x28 into `a1` (`ld` at 0x1a8).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `a0` (`ld` at 0x1b4).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `a0` (`ld` at 0x1b8).
  Loads 4 bytes from a0 (arg0 at entry) +0x8 into `a1` (`lw` at 0x1c8).
  Calls `unuseracc` via direct with a0=[a0+32]:8, a1=[a0+40]:8, a2=0x110, a3=a3 at entry (arg3) (`jal` at 0x1b0).
  Calls `kmem_free` via direct with a0=[a0]:8, a1=[a0+8], a2=?, a3=? (`jal` at 0x1c4).
  Calls `kmem_free` via direct with a0=a0 at entry (arg0), a1=0x58, a2=?, a3=? (`jal` at 0x1d0).
  The `beq` at 0x1a0 is taken when at(=[a0+52]) == 0 and falls through when at(=[a0+52]) != 0.
  The `beq` at 0x1bc is taken when a0(=[a0]:8) == 0 and falls through when a0(=[a0]:8) != 0.
  The `jr` at 0x1e0 returns with v0 = ret(kmem_free).

- `odsy_DmaRegion_Pin` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`, 0x1e8, 104 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x34 into `at` (`lw` at 0x1e8).
  Loads 8 bytes from a0 (arg0 at entry) +0x28 into `a1` (`ld` at 0x210).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `a0` (`ld` at 0x21c).
  Stores 4 bytes from `a1` to a0 (arg0 at entry) +0x34 (`sw` at 0x240).
  Calls `useracc` via direct with a0=[a0+32]:8, a1=[a0+40]:8, a2=0x110, a3=0x0 (`jal` at 0x218).
  Calls `odsy_DmaRegion_BuildXlatTbl` via direct with a0=a0 at entry (arg0), a1=0x1, a2=?, a3=ret(useracc) (`jal` at 0x23c).
  The `beq` at 0x1f4 is taken when at(=[a0+52]) == 0 and falls through when at(=[a0+52]) != 0.
  The `beq` at 0x224 is taken when v0(=ret(useracc)) == 0 and falls through when v0(=ret(useracc)) != 0.
  The `jr` at 0x1fc returns with v0 = ?.

- `odsy_DmaRegion_UnPin` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`, 0x250, 88 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x34 into `at` (`lw` at 0x250).
  Loads 8 bytes from a0 (arg0 at entry) +0x28 into `a1` (`ld` at 0x264).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `a0` (`ld` at 0x268).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x34 (`sw` at 0x278).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `a0` (`ld` at 0x27c).
  Loads 4 bytes from a0 (arg0 at entry) +0x8 into `a1` (`lw` at 0x28c).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x8 (`sw` at 0x290).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x0 (`sd` at 0x294).
  Calls `unuseracc` via direct with a0=[a0+32]:8, a1=[a0+40]:8, a2=0x110, a3=a3 at entry (arg3) (`jal` at 0x274).
  Calls `kmem_free` via direct with a0=[a0]:8, a1=[a0+8], a2=?, a3=? (`jal` at 0x288).
  The `beq` at 0x25c is taken when at(=[a0+52]) == 0 and falls through when at(=[a0+52]) != 0.
  The `beq` at 0x280 is taken when a0(=[a0]:8) == 0 and falls through when a0(=[a0]:8) != 0.
  The `jr` at 0x2a0 returns with v0 = ?.

- `odsy_DmaRegion_DoTransfer` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`, 0x2a8, 188 bytes) Inferred.
  Loads 8 bytes from a1 (arg1 at entry) +0x0 into `a0` (`ld` at 0x2c0).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `a0` (`ld` at 0x2e8).
  Stores 8 bytes from `a2` to [a0+736]:8 +0x110000 (`sd` at 0x340).
  Stores 8 bytes from `a3` to [a0+736]:8 +0x110000 (`sd` at 0x34c).
  Calls `kvtophys` via direct with a0=[a1]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2bc).
  The `beq` at 0x310 is taken when (at(=a2) & 0x4) == 0 and falls through when (at(=a2) & 0x4) != 0.
  The `jr` at 0x348 returns with v0 = 0x0.

- `odsy_DmaRegion_BuildXlatTbl` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`, 0x364, 204 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `v0` (`ld` at 0x364).
  Loads 4 bytes from a0 (arg0 at entry) +0x8 into `a1` (`lw` at 0x37c).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x8 (`sw` at 0x390).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x0 (`sd` at 0x394).
  Loads 8 bytes from a0 (arg0 at entry) +0x28 into `a0` (`ld` at 0x398).
  Stores 8 bytes from `v0` to a0 (arg0 at entry) +0x0 (`sd` at 0x3c4).
  Stores 4 bytes from `a3` to a0 (arg0 at entry) +0x8 (`sw` at 0x3e0).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `a3` (`ld` at 0x3e8).
  Loads 8 bytes from a0 (arg0 at entry) +0x28 into `a2` (`ld` at 0x3ec).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `a1` (`ld` at 0x3f4).
  Calls `kmem_free` via direct with a0=[a0]:8, a1=[a0+8], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x388).
  Calls `kmem_zalloc` via direct with a0=?, a1=0x8800, a2=?, a3=? (`jal` at 0x3b8).
  Calls `bcopy` via direct with a0=a0+56, a1=ret(kmem_zalloc), a2=0x20, a3=? (`jal` at 0x3dc).
  Calls `generatePageTable` via direct with a0=?, a1=[a0+32]:8, a2=[a0+40]:8, a3=[a0]:8+32, a4=0x0 (`jal` at 0x3f8).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x41c).
  The `beq` at 0x374 is taken when v0(=[a0]:8) == 0 and falls through when v0(=[a0]:8) != 0.
  The `beq` at 0x380 is taken when a1(=[a0+8]) == 0 and falls through when a1(=[a0+8]) != 0.
  The `beq` at 0x3c0 is taken when v0(=ret(kmem_zalloc)) == 0 and falls through when v0(=ret(kmem_zalloc)) != 0.
  The `jr` at 0x408 returns with v0 = ?.

- `generatePageTable` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`, 0x430, 1076 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0xc into `t9` (`lw` at 0x4c8).
  Loads 4 bytes from a0 (arg0 at entry) +0x18 into `s1` (`lw` at 0x4d8).
  Loads 4 bytes from a0 (arg0 at entry) +0x14 into `at` (`lwu` at 0x4fc).
  Loads 4 bytes from ? (base unknown) into `a6` (`lw` at 0x64c, 0x750).
  Stores 4 bytes from `at` to ? (base unknown) (`sw` at 0x660).
  Stores 4 bytes from `a5` to ? (base unknown) (`sw` at 0x670).
  Stores 4 bytes from `zero` to ? (base unknown) (`sw` at 0x728).
  Loads 4 bytes from ? (base unknown) into `a5` (`lw` at 0x754).
  Stores 4 bytes from `s2` to ? (base unknown) (`sw` at 0x75c).
  Stores 4 bytes from `a6` to ? (base unknown) (`sw` at 0x770).
  Stores 4 bytes from `v1` to ? (base unknown) (`sw` at 0x78c).
  Calls `alenlist_destroy` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x4a0).
  Calls `alenlist_cursor_init` via direct with a0=?, a1=0x0, a2=0x0, a3=? (`jal` at 0x51c).
  Calls `alenlist_get` via direct with a0=?, a1=0x0, a2=0x4000, a3=sp-224, a4=sp-216, a5=0x0 (`jal` at 0x53c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a7=ret(alenlist_get) (`jal` at 0x5d0).
  Calls `alenlist_get` via direct with a0=?, a1=0x0, a2=0x4000, a3=sp-224, a4=sp-216, a5=0x0, a7=ret(alenlist_get) (`jal` at 0x614).
  Calls `alenlist_create` via direct with a0=0x3, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a7=0x0 (`jal` at 0x69c).
  Calls `uvaddr_to_alenlist` via direct with a0=ret(alenlist_create), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x0 (`jal` at 0x6cc).
  Calls `kvaddr_to_alenlist` via direct with a0=ret(alenlist_create), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x0 (`jal` at 0x6fc).
  Calls `alenlist_cursor_init` via direct with a0=?, a1=a1 at entry (arg1), a2=0x0, a3=? (`jal` at 0x798).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a7=ret(alenlist_get) (`jal` at 0x7b4).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a1 at entry (arg1), a3=(a1 + a2) (`jal` at 0x7f0).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a7=ret(alenlist_get) (`jal` at 0x81c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a6=a1 at entry (arg1) (`jal` at 0x838).
  The `beq` at 0x45c is taken when a4 == 0 and falls through when a4 != 0.
  The `beq` at 0x46c is taken when t3(?) == 0 and falls through when t3(?) != 0.
  The `bne` at 0x474 is taken when s6(=a4) != 0 and falls through when s6(=a4) == 0.
  The `bne` at 0x47c is taken when s7(?) != 0 and falls through when s7(?) == 0.
  The `beq` at 0x4b4 is taken when s7(?) == 0 and falls through when s7(?) != 0.
  The `bne` at 0x524 is taken when s6(=a4) != 0 and falls through when s6(=a4) == 0.
  The `bne` at 0x544 is taken when v0(=ret(alenlist_get)) != 0 and falls through when v0(=ret(alenlist_get)) == 0.
  The `blez` at 0x570 is taken when v0(?) <= 0 (signed) and falls through when v0(?) > 0 (signed).
  The `bne` at 0x598 is taken when s1(?) != 0 and falls through when s1(?) == 0.
  The `beq` at 0x5b8 is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `bne` at 0x5c0 is taken when at(?) != 0 and falls through when at(?) == 0.
  The `bne` at 0x634 is taken when v0(=ret(alenlist_get)) != 0 and falls through when v0(=ret(alenlist_get)) == 0.
  The `beq` at 0x6a8 is taken when v0(=ret(alenlist_create)) == 0 and falls through when v0(=ret(alenlist_create)) != 0.
  The `beq` at 0x6bc is taken when a6(=a1) >= at(=0x10000000000) (unsigned) and falls through when a6(=a1) < at(=0x10000000000) (unsigned).
  The `jr` at 0x490 returns with v0 = ?.

- `odsy_dma_poll_timer` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`, 0x864, 28 bytes) Inferred.
  Calls `vsema` via direct with a0=sym(.bss), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x86c).
  The `jr` at 0x878 returns with v0 = ret(vsema).

- `DmaFinishedPollDelay` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`, 0x880, 80 bytes) Inferred.
  Calls `init_sema` via direct with a0=sym(.bss), a1=0x0, a2=0x0, a3=-0x1 (`jal` at 0x89c).
  Calls `timeout` via direct with a0=sym(odsy_dma_poll_timer), a1=a0 at entry (arg0), a2=0x19, a3=? (`jal` at 0x8ac).
  Calls `psema` via direct with a0=sym(.bss), a1=0x19, a2=?, a3=? (`jal` at 0x8bc).
  The `jr` at 0x8c8 returns with v0 = ret(psema).

- `gfP_OdsyDIAGdma` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`, 0x8d0, 548 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `at` (`ld` at 0x8e0).
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `at` (`ld` at 0x8f4).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `v0`: 4 such accesses, including `ld` at 0x938, 0xa58, 0xa60.
  Loads 8 bytes from [a0+32]:8 +0x48 into `v1` (`ld` at 0x93c).
  Loads 4 bytes from [a0+32]:8 +0x50 into `a0` (`lw` at 0x948, 0xa8c).
  Stores 4 bytes from `a0` to [a0+32]:8 +0x50 (`sw` at 0x954).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `a5` (`ld` at 0x984).
  Loads 4 bytes from [a0+32]:8 +0x50 into `a4` (`lw` at 0x988).
  Stores 4 bytes from `a4` to [a0+32]:8 +0x50 (`sw` at 0x990).
  Loads 4 bytes from a3 (arg3 at entry) +0x0 into `v0` (`lw` at 0x99c).
  Loads 4 bytes from ? (base unknown) into `a5` (`lw` at 0x9a4).
  Stores 4 bytes from `a5` to ? (base unknown) (`sw` at 0x9b0).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `a0` (`ld` at 0x9c0).
  Loads 4 bytes from ? (base unknown) into `a4` (`lw` at 0x9f8).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `ra` (`ld` at 0xa24).
  Loads 4 bytes from [a0+32]:8 +0x50 into `s0` (`lw` at 0xa28).
  Stores 4 bytes from `s0` to [a0+32]:8 +0x50 (`sw` at 0xa30).
  Stores 4 bytes from `zero` to a3 (arg3 at entry) +0x0 (`sw` at 0xa40).
  Stores 8 bytes from `s0` to [a0+32]:8 +0x48 (`sd` at 0xa5c).
  Loads 4 bytes from [a0+32]:8 +0x68 into `at` (`lw` at 0xa64).
  Loads 4 bytes from [a0+32]:8 +0x68 into `v1` (`lw` at 0xa7c).
  Stores 4 bytes from `a4` to a3 (arg3 at entry) +0x0 (`sw` at 0xa90, 0xab4).
  Calls `RRM_CheckValidFault` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=a2 at entry (arg2) (`jal` at 0x908).
  Calls `copyin` via direct with a0=a2 at entry (arg2), a1=sp-160, a2=0x30, a3=?, a6=a2 at entry (arg2) (`jal` at 0x928).
  Calls `odsy_NewDmaRegion` via direct with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?, a4=-0x1, a5=0x1, a6=sp-148, a7=a3 at entry (arg3) (`jal` at 0x970).
  Calls `odsy_DmaRegion_DoTransfer` via direct with a0=[a0+32]:8, a1=ret(odsy_NewDmaRegion), a2=?, a3=?, a7=-0x801 (`jal` at 0x9bc).
  Calls `DmaFinishedPollDelay` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x9ec).
  Calls `odsy_DeleteDmaRegion` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xa1c).
  Calls `psema` via direct with a0=[a0+32]:8+56, a1=0x219, a2=?, a3=? (`jal` at 0xa50).
  Calls `us_delay` via direct with a0=0x2, a1=?, a2=?, a3=? (`jal` at 0xa70).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0xaa8).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0xac8).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0xadc).
  Calls `odsy_teardown` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xae4).
  The `beq` at 0x8fc is taken when a1 == 0 and falls through when a1 != 0.
  The `bltz` at 0x918 is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed) and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed).
  The `bne` at 0x930 is taken when v0(=ret(copyin)) != 0 and falls through when v0(=ret(copyin)) == 0.
  The `bne` at 0x940 is taken when v1(=[[a0+32]:8+72]:8) != s0(=a0) and falls through when v1(=[[a0+32]:8+72]:8) == s0(=a0).
  The `bne` at 0x97c is taken when v0(=ret(odsy_NewDmaRegion)) != 0 and falls through when v0(=ret(odsy_NewDmaRegion)) == 0.
  The `bne` at 0x9c4 is taken when v0(=ret(odsy_DmaRegion_DoTransfer)) != 0 and falls through when v0(=ret(odsy_DmaRegion_DoTransfer)) == 0.
  The `bne` at 0x9d0 is taken when at(?) != 0 and falls through when at(?) == 0.
  The `beq` at 0x9e0 is taken when a2(?) >= 0x28 (signed) and falls through when a2(?) < 0x28 (signed).
  The `beq` at 0xa08 is taken when a4(?) == 0 and falls through when a4(?) != 0.
  The `beq` at 0xa14 is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `beq` at 0xa68 is taken when at(=[[a0+32]:8+104]) == 0 and falls through when at(=[[a0+32]:8+104]) != 0.
  The `bne` at 0xa80 is taken when v1(=[[a0+32]:8+104]) != 0 and falls through when v1(=[[a0+32]:8+104]) == 0.
  The `jr` at 0xa48 returns with v0 = ?.
- `odsyDMAOps` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`, 0xaf4, 3240 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `t8` (`ld` at 0xb18).
  Loads 8 bytes from a3 (arg3 at entry) +0x10 into `a0` (`ld` at 0xb1c).
  Loads 4 bytes from a3 (arg3 at entry) +0x18 into `a1` (`lw` at 0xb20).
  Loads 8 bytes from a2 (arg2 at entry) +0x60 into `s7` (`ld` at 0xb34).
  Loads 4 bytes from a3 (arg3 at entry) +0x3c into `v0` (`lw` at 0xb58).
  Loads 8 bytes from a2 (arg2 at entry) +0x90 into `a0` (`ld` at 0xb6c).
  Loads 8 bytes from [a2+144]:8 +0x78 into `a0` (`ld` at 0xb70).
  Loads 4 bytes from [[a2+144]:8+120]:8 +0x8c into `v1` (`lw` at 0xb78).
  Stores 4 bytes from `at` to table(0x110000) +0x0: 5 such accesses, including `sw` at 0xba4, 0x11c4, 0x1228.
  Stores 4 bytes from `a6` to table(0x110000) +0x0: 6 such accesses, including `sw` at 0xba8, 0x118c, 0x1200.
  Loads 4 bytes from a3 (arg3 at entry) +0x3c into `a5` (`lw` at 0xbac).
  Loads 8 bytes from a2 (arg2 at entry) +0x60 into `at` (`ld` at 0xbc4).
  Loads 4 bytes from a3 (arg3 at entry) +0x28 into `s0` (`lw` at 0xbcc).
  Loads 4 bytes from a3 (arg3 at entry) +0x38 into `a5` (`lw` at 0xbd0, 0x143c).
  Stores 8 bytes from `t1` to a3 (arg3 at entry) +0x48 (`sd` at 0xbdc).
  Loads 4 bytes from a0 (arg0 at entry) +0x118 into `v0` (`lw` at 0xbec).
  Loads 4 bytes from ? (base unknown) into `a5` (`lw` at 0xc04).
  Loads 4 bytes from a2 (arg2 at entry) +0x0 into `a6` (`lw` at 0xc2c).
  Loads 4 bytes from a3 (arg3 at entry) +0x1c into `at` (`lw` at 0xc38).
  Loads 8 bytes from a2 (arg2 at entry) +0x90 into `t0` (`ld` at 0xc54).
  Loads 8 bytes from [a2+144]:8 +0x80 into `t0` (`ld` at 0xc58).
  Loads 4 bytes from [[a2+144]:8+128]:8 +0x6c into `a0` (`lw` at 0xc5c).
  Loads 4 bytes from [[a2+144]:8+128]:8 +0x68 into `t0` (`lw` at 0xc60).
  Loads 4 bytes from a3 (arg3 at entry) +0x20 into `at` (`lw` at 0xc68).
  Loads 4 bytes from a4 (arg4 at entry) +0x20 into `v1` (`lw` at 0xca4).
  Loads 4 bytes from a4 (arg4 at entry) +0x14 into `v0` (`lw` at 0xca8).
  Loads 4 bytes from [a2+96]:8 +0x1b60 into `v0` (`lw` at 0xcc8).
  Loads 4 bytes from [a2+96]:8 +0x1b6c into `a1` (`lw` at 0xd14).
  Loads 4 bytes from a4 (arg4 at entry) +0x24 into `a6` (`lw` at 0xd60).
  Loads 4 bytes from a4 (arg4 at entry) +0x18 into `a3` (`lw` at 0xd64).
  Loads 4 bytes from ? (base unknown) into `v1` (`lw` at 0xe9c, 0x120c).
  Stores 4 bytes from `v1` to ? (base unknown) (`sw` at 0xea8).
  Loads 4 bytes from a3 (arg3 at entry) +0x20 into `t3` (`lw` at 0xfd8).
  Stores 4 bytes from `a6` to a3 (arg3 at entry) +0x20 (`sw` at 0xff0).
  Loads 4 bytes from a3 (arg3 at entry) +0x28 into `a4` (`lw` at 0x1008).
  Loads 4 bytes from a3 (arg3 at entry) +0x30 into `a6` (`lw` at 0x1030).
  Stores 4 bytes from `a7` to table(0x110000) +0x0 (`sw` at 0x1174, 0x16fc).
  Loads 4 bytes from ? (base unknown) into `t9` (`lw` at 0x1178, 0x11d4).
  Stores 4 bytes from `t9` to table(0x110000) +0x0: 4 such accesses, including `sw` at 0x117c, 0x11c8, 0x11dc.
  Loads 4 bytes from ? (base unknown) into `t8` (`lw` at 0x1180, 0x11b0).
  Stores 4 bytes from `t8` to table(0x110000) +0x0 (`sw` at 0x1184, 0x11b8, 0x1644).
  Loads 4 bytes from ? (base unknown) into `a6` (`lw` at 0x1188).
  Stores 4 bytes from `a5` to table(0x110000) +0x0: 5 such accesses, including `sw` at 0x1204, 0x1534, 0x1538.
  Stores 4 bytes from `v1` to table(0x110000) +0x0: 4 such accesses, including `sw` at 0x1210, 0x13dc, 0x1568.
  Stores 4 bytes from `t0` to table(0x110000) +0x0 (`sw` at 0x121c).
  Stores 4 bytes from `a1` to table(0x110000) +0x0 (`sw` at 0x1234, 0x15fc).
  Stores 4 bytes from `zero` to table(0x110000) +0x0: 5 such accesses, including `sw` at 0x123c, 0x1248, 0x1658.
  Stores 4 bytes from `t1` to table(0x110000) +0x0 (`sw` at 0x12c8).
  Loads 8 bytes from a3 (arg3 at entry) +0x48 into `a5` (`ld` at 0x12d4).
  Stores 4 bytes from `s3` to table(0x110000) +0x0 (`sw` at 0x1390).
  Stores 4 bytes from `s2` to table(0x110000) +0x0 (`sw` at 0x139c, 0x16b0).
  Stores 4 bytes from `s1` to table(0x110000) +0x0 (`sw` at 0x13b0, 0x13b4).
  Loads 4 bytes from a2 (arg2 at entry) +0x28 into `a5` (`lwu` at 0x13bc).
  Stores 8 bytes from `a5` to table(0x110000) +0x0 (`sd` at 0x13d0).
  Loads 4 bytes from a2 (arg2 at entry) +0x2c into `v1` (`lw` at 0x13d8, 0x1560).
  Loads 4 bytes from a3 (arg3 at entry) +0x20 into `a1` (`lw` at 0x13f0).
  Loads 4 bytes from a3 (arg3 at entry) +0x28 into `a3` (`lw` at 0x1408).
  Loads 4 bytes from [[a2+144]:8+120]:8 +0x70 into `a5` (`lw` at 0x140c).
  Loads 4 bytes from [[a2+144]:8+120]:8 +0x74 into `at` (`lw` at 0x1424).
  Stores 4 bytes from `a5` to a3 (arg3 at entry) +0x38 (`sw` at 0x1460).
  Loads 4 bytes from [a2+96]:8 +0x1cb8 into `v1` (`lw` at 0x1508).
  Stores 4 bytes from `at` to [a2+96]:8 +0x1cb8 (`sw` at 0x1550).
  Stores 8 bytes from `a6` to table(0x110000) +0x0 (`sd` at 0x1554).
  Loads 4 bytes from [a2+96]:8 +0x1b4c into `a5` (`lw` at 0x15d8).
  Loads 4 bytes from [a2+96]:8 +0x1b50 into `a4` (`lw` at 0x15e0).
  Stores 4 bytes from `a4` to table(0x110000) +0x0 (`sw` at 0x15e4, 0x1734).
  Loads 4 bytes from [a2+96]:8 +0x1b54 into `a3` (`lw` at 0x15e8).
  Stores 4 bytes from `a3` to table(0x110000) +0x0 (`sw` at 0x15ec).
  Loads 4 bytes from [a2+96]:8 +0x1b58 into `a2` (`lw` at 0x15f0).
  Stores 4 bytes from `a2` to table(0x110000) +0x0 (`sw` at 0x15f4).
  Loads 4 bytes from [a2+96]:8 +0x1b5c into `a1` (`lw` at 0x15f8).
  Loads 4 bytes from [a2+96]:8 +0x1b60 into `a0` (`lw` at 0x1600).
  Stores 4 bytes from `a0` to table(0x110000) +0x0 (`sw` at 0x1604).
  Loads 4 bytes from [a2+96]:8 +0x1b64 into `v1` (`lw` at 0x1608).
  Loads 4 bytes from [a2+96]:8 +0x1b5c into `v0` (`lw` at 0x1610).
  Stores 4 bytes from `v0` to table(0x110000) +0x0 (`sw` at 0x1614).
  Loads 4 bytes from [a2+96]:8 +0x1b6c into `at` (`lw` at 0x161c).
  Loads 4 bytes from [a2+96]:8 +0x1b70 into `ra` (`lw` at 0x1628).
  Stores 4 bytes from `ra` to table(0x110000) +0x0 (`sw` at 0x1630).
  Stores 4 bytes from `s4` to table(0x110000) +0x0 (`sw` at 0x164c).
  Loads 4 bytes from a0 (arg0 at entry) +0x5700 into `a5` (`lw` at 0x1714).
  Calls `useracc` via direct with a0=[a3+16]:8, a1=[a3+24], a2=0x110, a3=0x0 (`jal` at 0xb48).
  Calls `odsyDMAOp` via direct with a0=a2 at entry (arg2), a1=a0 at entry (arg0), a2=0x0, a3=?, a5=sp-384, a6=sp-360 (`jal` at 0x127c).
  Calls `odsyDMAOp` via direct with a0=a2 at entry (arg2), a1=a0 at entry (arg0), a2=0x0, a3=?, a5=sp-384, a6=a3+28, a7=a3+72 (`jal` at 0x14a4).
  Calls `unuseracc` via direct with a0=?, a1=?, a2=0x110, a3=-0x2 (`jal` at 0x15a4).
  Calls `odsyDMAOp` via direct with a0=a2 at entry (arg2), a1=a0 at entry (arg0), a2=0x0, a3=?, a5=sp-384, a6=a3+28, a7=a3+72 (`jal` at 0x1690).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=-0x2, a7=0xffffffffcf80a92f (`jal` at 0x16cc).
  Calls `odsyDMAWait` via direct with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=0x1, a3=sp-376, a4=0xd0a, a5=([a0+22272] | 0x8000), a6=0x10a5a, a7=0x10444 (`jal` at 0x1730).
  Calls `unuseracc` via direct with a0=?, a1=?, a2=0x110, a3=? (`jal` at 0x1744).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x1788).
  The `bne` at 0xb50 is taken when v0(=ret(useracc)) != 0 and falls through when v0(=ret(useracc)) == 0.
  The `beq` at 0xb64 is taken when (v0(=[a3+60]) & 0x10) == 0 and falls through when (v0(=[a3+60]) & 0x10) != 0.
  The `beq` at 0xb7c is taken when v1(=[[[a2+144]:8+120]:8+140]) == 0 and falls through when v1(=[[[a2+144]:8+120]:8+140]) != 0.
  The `beq` at 0xb88 is taken when v0(?) == 0 and falls through when v0(?) != 0.
  The `beq` at 0xbb8 is taken when (a5(=[a3+60]) & 0x8) == 0 and falls through when (a5(=[a3+60]) & 0x8) != 0.
  The `beq` at 0xc0c is taken when v0(=[a0+280]) == 0 and falls through when v0(=[a0+280]) != 0.
  The `beq` at 0xc18 is taken when v0(=[a0+280]) == v1(=0x1) and falls through when v0(=[a0+280]) != v1(=0x1).
  The `beq` at 0xc24 is taken when s2(=a2) == 0 and falls through when s2(=a2) != 0.
  The `beq` at 0xc30 is taken when a6(=[a2]) == 0 and falls through when a6(=[a2]) != 0.
  The `beq` at 0xc4c is taken when at(?) == 0 and falls through when at(?) != 0.
  The `beq` at 0xc78 is taken when (at(?) & 0x8000) == 0 and falls through when (at(?) & 0x8000) != 0.
  The `bltz` at 0xc9c is taken when v0(?) < 0 (signed) and falls through when v0(?) >= 0 (signed).
  The `beq` at 0xcb8 is taken when v0(=([a4+20] + [a4+32])) >= v1(?) (unsigned) and falls through when v0(=([a4+20] + [a4+32])) < v1(?) (unsigned).
  The `beq` at 0xcd0 is taken when v0(=[[a2+96]:8+7008]) == 0 and falls through when v0(=[[a2+96]:8+7008]) != 0.
  The `beq` at 0xd04 is taken when (s1(=0xffffffff80000000) & v0(=[[a2+96]:8+7008])) == 0 and falls through when (s1(=0xffffffff80000000) & v0(=[[a2+96]:8+7008])) != 0.
  The `beq` at 0xd1c is taken when a1(=[[a2+96]:8+7020]) == 0 and falls through when a1(=[[a2+96]:8+7020]) != 0.
  The `beq` at 0xd50 is taken when (s1(=0xffffffff80000000) & a1(=[[a2+96]:8+7020])) == 0 and falls through when (s1(=0xffffffff80000000) & a1(=[[a2+96]:8+7020])) != 0.
  The `beq` at 0xd78 is taken when a3(=([a4+24] + [a4+36])) >= a7(?) (unsigned) and falls through when a3(=([a4+24] + [a4+36])) < a7(?) (unsigned).
  The `beq` at 0xd94 is taken when a3(=([a4+24] + [a4+36])) >= a1(?) (unsigned) and falls through when a3(=([a4+24] + [a4+36])) < a1(?) (unsigned).
  The `beq` at 0xda4 is taken when a2(?) == a7(?) and falls through when a2(?) != a7(?).
  The `bltz` at 0xdb0 is taken when a5(?) < 0 (signed) and falls through when a5(?) >= 0 (signed).
  The `beq` at 0xdb8 is taken when v0(?) == a1(?) and falls through when v0(?) != a1(?).
  The `bltz` at 0xdc4 is taken when t8(?) < 0 (signed) and falls through when t8(?) >= 0 (signed).
  The `beq` at 0xde0 is taken when (a7(?) & s1(=0xffffffff80000000)) == 0 and falls through when (a7(?) & s1(=0xffffffff80000000)) != 0.
  The `beq` at 0xdf4 is taken when (t3(?) & a3(=-0x2)) == 0 and falls through when (t3(?) & a3(=-0x2)) != 0.
  The `beq` at 0xe08 is taken when t2(?) >= 0x20 (signed) and falls through when t2(?) < 0x20 (signed).
  The `bne` at 0xe18 is taken when (a5(?) & t3(?)) != 0 and falls through when (a5(?) & t3(?)) == 0.
  The `beq` at 0xe24 is taken when t3(?) == 0 and falls through when t3(?) != 0.
  The `beq` at 0xe38 is taken when at(?) == 0 and falls through when at(?) != 0.
  The `beq` at 0xe50 is taken when (a4(?) & a3(=-0x2)) == 0 and falls through when (a4(?) & a3(=-0x2)) != 0.
  The `beq` at 0xe64 is taken when v0(?) >= 0x20 (signed) and falls through when v0(?) < 0x20 (signed).
  The `bne` at 0xe74 is taken when (a6(?) & a4(?)) != 0 and falls through when (a6(?) & a4(?)) == 0.
  The `beq` at 0xe7c is taken when a4(?) == 0 and falls through when a4(?) != 0.
  The `bgtz` at 0xea4 is taken when a2(?) > 0 (signed) and falls through when a2(?) <= 0 (signed).
  The `blez` at 0xf14 is taken when s0(?) <= 0 (signed) and falls through when s0(?) > 0 (signed).
  The `beq` at 0xf1c is taken when a7(?) == a1(?) and falls through when a7(?) != a1(?).
  The `bltz` at 0xf24 is taken when t0(?) < 0 (signed) and falls through when t0(?) >= 0 (signed).
  The `beq` at 0x10bc is taken when (at(?) & s1(=0xffffffff80000000)) == 0 and falls through when (at(?) & s1(=0xffffffff80000000)) != 0.
  The `beq` at 0x10d4 is taken when (t3(?) & a3(=-0x2)) == 0 and falls through when (t3(?) & a3(=-0x2)) != 0.
  The `beq` at 0x10e8 is taken when t1(?) >= 0x20 (signed) and falls through when t1(?) < 0x20 (signed).
  The `bne` at 0x10f8 is taken when (v1(?) & t3(?)) != 0 and falls through when (v1(?) & t3(?)) == 0.
  The `beq` at 0x1100 is taken when t3(?) == 0 and falls through when t3(?) != 0.
  The `beq` at 0x1118 is taken when (s7(?) & s1(=0xffffffff80000000)) == 0 and falls through when (s7(?) & s1(=0xffffffff80000000)) != 0.
  The `beq` at 0x112c is taken when (t2(?) & a3(=-0x2)) == 0 and falls through when (t2(?) & a3(=-0x2)) != 0.
  The `beq` at 0x1148 is taken when v0(?) >= 0x20 (signed) and falls through when v0(?) < 0x20 (signed).
  The `bne` at 0x115c is taken when (v1(?) & t2(?)) != 0 and falls through when (v1(?) & t2(?)) == 0.
  The `beq` at 0x1168 is taken when t2(?) == 0 and falls through when t2(?) != 0.
  The `blez` at 0x1244 is taken when s0(?) <= 0 (signed) and falls through when s0(?) > 0 (signed).
  The `bne` at 0x12b0 is taken when v0(=ret(odsyDMAOp)) != 0 and falls through when v0(=ret(odsyDMAOp)) == 0.
  The `blez` at 0x12dc is taken when s0(?) <= 0 (signed) and falls through when s0(?) > 0 (signed).
  The `beq` at 0x1308 is taken when s0(?) >= t2(?) (signed) and falls through when s0(?) < t2(?) (signed).
  The `beq` at 0x136c is taken when at(?) == 0 and falls through when at(?) != 0.
  The `bltz` at 0x13f8 is taken when a2(?) < 0 (signed) and falls through when a2(?) >= 0 (signed).
  The `bltz` at 0x1400 is taken when a1(?) < 0 (signed) and falls through when a1(?) >= 0 (signed).
  The `bne` at 0x141c is taken when a5(=[[[a2+144]:8+120]:8+112]) < a6(?) (signed) and falls through when a5(=[[[a2+144]:8+120]:8+112]) >= a6(?) (signed).
  The `bne` at 0x1434 is taken when at(=[[[a2+144]:8+120]:8+116]) < v1(?) (signed) and falls through when at(=[[[a2+144]:8+120]:8+116]) >= v1(?) (signed).
  The `beq` at 0x1510 is taken when v1(=[[a2+96]:8+7352]) == 0 and falls through when v1(=[[a2+96]:8+7352]) != 0.
  The `jr` at 0x13e8 returns with v0 = ?.

- `odsyDMAOp` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`, 0x179c, 1692 bytes) Inferred.
  Loads 8 bytes from a1 (arg1 at entry) +0x2e0 into `at` (`ld` at 0x179c).
  Stores 4 bytes from `zero` to a5 (arg5 at entry) +0x0 (`sw` at 0x17a0).
  Stores 4 bytes from `v0` to ret(kmem_alloc) +0x0 (`sw` at 0x182c).
  Stores 8 bytes from `zero` to ret(kmem_alloc) +0x8 (`sd` at 0x1830).
  Stores 8 bytes from `s2` to ret(kmem_alloc) +0x20 (`sd` at 0x183c).
  Stores 4 bytes from `v0` to ret(kmem_alloc) +0x28 (`sw` at 0x1864).
  Stores 8 bytes from `t1` to ret(kmem_alloc) +0x30 (`sd` at 0x186c).
  Stores 8 bytes from `at` to ret(kmem_alloc) +0x38 (`sd` at 0x1874).
  Stores 4 bytes from `a6` to ret(kmem_alloc) +0x28 (`sw` at 0x1878, 0x193c).
  Loads 4 bytes from ? (base unknown) into `a1` (`lw` at 0x18c8, 0x18ec).
  Loads 8 bytes from ? (base unknown) into `a0` (`ld` at 0x18dc).
  Stores 8 bytes from `zero` to ret(kmem_alloc) +0x38 (`sd` at 0x1930).
  Stores 8 bytes from `v0` to ret(kmem_alloc) +0x30 (`sd` at 0x1934).
  Stores 8 bytes from `v0` to ret(kmem_alloc) +0x8 (`sd` at 0x1950).
  Stores 4 bytes from `at` to ret(kmem_alloc) +0x10 (`sw` at 0x1964).
  Loads 8 bytes from ret(kmem_alloc) +0x8 into `a1` (`ld` at 0x1970).
  Loads 4 bytes from ? (base unknown) into `t2` (`lw` at 0x1990, 0x19c0).
  Loads 4 bytes from ? (base unknown) into `t8` (`lw` at 0x1994, 0x19ac).
  Stores 4 bytes from `t2` to ? (base unknown) (`sw` at 0x19a8, 0x19bc).
  Loads 4 bytes from ? (base unknown) into `a7` (`lw` at 0x19c4, 0x1a10).
  Loads 4 bytes from ? (base unknown) into `a6` (`lw` at 0x19cc, 0x1a0c).
  Stores 4 bytes from `a7` to ? (base unknown) (`sw` at 0x19e0, 0x1a08).
  Loads 4 bytes from ? (base unknown) into `t0` (`lw` at 0x19ec).
  Loads 4 bytes from ? (base unknown) into `a2` (`lw` at 0x1a20).
  Stores 4 bytes from `a2` to ? (base unknown) (`sw` at 0x1a38).
  Loads 8 bytes from ? (base unknown) into `a2` (`ld` at 0x1a40).
  Loads 8 bytes from ? (base unknown) into `a1` (`ld` at 0x1a4c).
  Loads 8 bytes from ? (base unknown) into `t0` (`ld` at 0x1a60).
  Loads 8 bytes from a1 (arg1 at entry) +0xde0 into `a1` (`ld` at 0x1a88, 0x1d34).
  Loads 8 bytes from a1 (arg1 at entry) +0xdd8 into `a0` (`ld` at 0x1a8c, 0x1d38).
  Loads 8 bytes from a1 (arg1 at entry) +0x2f8 into `a0` (`ld` at 0x1ae8).
  Stores 8 bytes from `a1` to [a1+760]:8 +0x0 (`sd` at 0x1af0).
  Stores 8 bytes from `a1` to ret(kmem_alloc) +0x40 (`sd` at 0x1af4).
  Stores 8 bytes from `a1` to a7 (arg7 at entry) +0x0 (`sd` at 0x1af8).
  Loads 8 bytes from a1 (arg1 at entry) +0xde0 into `v0` (`ld` at 0x1afc).
  Loads 4 bytes from a1 (arg1 at entry) +0x9cc into `v1` (`lw` at 0x1b04).
  Stores 8 bytes from `v0` to a1 (arg1 at entry) +0xde0 (`sd` at 0x1b18).
  Stores 8 bytes from `s0` to (([a1+2508] << 0x3) + a1) +0x9d8 (`sd` at 0x1b20).
  Loads 4 bytes from a1 (arg1 at entry) +0x9cc into `t1` (`lw` at 0x1b24).
  Stores 4 bytes from `t0` to a1 (arg1 at entry) +0x9cc (`sw` at 0x1b6c).
  Stores 4 bytes from `v1` to ? (base unknown) (`sw` at 0x1b78, 0x1cb8, 0x1da0).
  Loads 4 bytes from a6 (arg6 at entry) +0x1c into `t0` (`lw` at 0x1b7c).
  Stores 8 bytes from `v0` to ? (base unknown) (`sd` at 0x1bd0).
  Stores 8 bytes from `v1` to ? (base unknown) (`sd` at 0x1bd8).
  Loads 8 bytes from ? (base unknown) into `a3` (`ld` at 0x1bdc).
  Loads 8 bytes from ret(kmem_alloc) +0x8 into `a0` (`ld` at 0x1bf0).
  Loads 4 bytes from a5 (arg5 at entry) +0x0 into `t0` (`lw` at 0x1c2c).
  Loads 4 bytes from a6 (arg6 at entry) +0x1c into `v1` (`lw` at 0x1c64).
  Stores 4 bytes from `t0` to ? (base unknown) (`sw` at 0x1c8c).
  Stores 4 bytes from `v0` to ? (base unknown) (`sw` at 0x1ca4, 0x1d94).
  Loads 4 bytes from a1 (arg1 at entry) +0x9c8 into `t1` (`lw` at 0x1ca8).
  Stores 4 bytes from `t1` to ? (base unknown) (`sw` at 0x1cb4, 0x1da8).
  Loads 4 bytes from a5 (arg5 at entry) +0x0 into `at` (`lw` at 0x1cc8).
  Loads 8 bytes from a7 (arg7 at entry) +0x0 into `v0` (`ld` at 0x1cd4).
  Stores 8 bytes from `v0` to a0 (arg0 at entry) +0xb0 (`sd` at 0x1cd8).
  Loads 4 bytes from a1 (arg1 at entry) +0x9c8 into `v1` (`lw` at 0x1d9c).
  Stores 4 bytes from `at` to table(0x110000) +0x0 (`sw` at 0x1db8).
  Stores 4 bytes from `t0` to table(0x110000) +0x0 (`sw` at 0x1dc4).
  Stores 8 bytes from `v0` to a0 (arg0 at entry) +0xa8 (`sd` at 0x1e08).
  Calls `kmem_alloc` via direct with a0=0x48, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x17e8).
  Calls `init_sv` via direct with a0=ret(kmem_alloc)+24, a1=0x0, a2=sym(.rodata), a3=-0x1 (`jal` at 0x1820).
  Calls `OdsyAllocCSetId` via direct with a0=a0+312, a1=ret(kmem_alloc), a2=?, a3=?, a6=-0x1 (`jal` at 0x1850).
  Calls `ConstructTftchWarList` via direct with a0=sp-320, a1=a6 at entry (arg6), a2=sp-272, a3=a3 at entry (arg3), a6=-0x1 (`jal` at 0x1890).
  Calls `OdsyDeallocCSetId` via direct with a0=a0+312, a1=?, a2=?, a3=? (`jal` at 0x18d4).
  Calls `kmem_free` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x18e8).
  Calls `kmem_free` via direct with a0=?, a1=0x58, a2=?, a3=? (`jal` at 0x18f4).
  Calls `mutex_mine` via direct with a0=a1+2472, a1=?, a2=?, a3=? (`jal` at 0x1904).
  Calls `mutex_unlock` via direct with a0=a1+2472, a1=?, a2=?, a3=? (`jal` at 0x1914).
  Calls `kmem_alloc` via direct with a0=?, a1=0x8801, a2=?, a3=? (`jal` at 0x1944).
  Calls `bcopy` via direct with a0=a6 at entry (arg6), a1=?, a2=0x20, a3=? (`jal` at 0x1980).
  Calls `generatePageTable` via direct with a0=?, a1=?, a2=?, a3=?, a4=a2 at entry (arg2), a5=0xfffffffffff00000 (`jal` at 0x1a48).
  Calls `ddi_mutex_lock` via direct with a0=a1+2472, a1=-0x1, a2=?, a3=? (`jal` at 0x1a80).
  Calls `kvtophys` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1bf8).
  Calls `ReleaseTftchWarList` via direct with a0=sp-320, a1=0x1ffff, a2=?, a3=?, a4=0xffffffff00000000 (`jal` at 0x1c5c).
  Calls `mutex_unlock` via direct with a0=a1+2472, a1=[a1+3552]:8, a2=?, a3=? (`jal` at 0x1d0c).
  Calls `odsyDMAWait` via direct with a0=a1 at entry (arg1), a1=0x0, a2=0x0, a3=0x0 (`jal` at 0x1d20).
  Calls `ddi_mutex_lock` via direct with a0=a1+2472, a1=-0x1, a2=?, a3=? (`jal` at 0x1d2c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x1d6c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a6=-0x1 (`jal` at 0x1de0).
  Calls `kmem_free` via direct with a0=ret(kmem_alloc), a1=0x48, a2=?, a3=? (`jal` at 0x1dec).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x1e1c).
  The `beq` at 0x17f8 is taken when v0(=ret(kmem_alloc)) == 0 and falls through when v0(=ret(kmem_alloc)) != 0.
  The `beq` at 0x1808 is taken when (v1(?) & 0x2) == 0 and falls through when (v1(?) & 0x2) != 0.
  The `beq` at 0x1838 is taken when s2(=a0) == 0 and falls through when s2(=a0) != 0.
  The `beq` at 0x1844 is taken when t0(?) == 0 and falls through when t0(?) != 0.
  The `beq` at 0x1860 is taken when v0(=ret(OdsyAllocCSetId)) == a6(=-0x1) and falls through when v0(=ret(OdsyAllocCSetId)) != a6(=-0x1).
  The `beq` at 0x1898 is taken when v0(=ret(ConstructTftchWarList)) == 0 and falls through when v0(=ret(ConstructTftchWarList)) != 0.
  The `beq` at 0x18b4 is taken when s0(?) == 0 and falls through when s0(?) != 0.
  The `beq` at 0x18c0 is taken when t0(?) == 0 and falls through when t0(?) != 0.
  The `beq` at 0x18cc is taken when a1(?) == t1(=-0x1) and falls through when a1(?) != t1(=-0x1).
  The `beq` at 0x18e0 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `beq` at 0x190c is taken when v0(=ret(mutex_mine)) == 0 and falls through when v0(=ret(mutex_mine)) != 0.
  The `beq` at 0x194c is taken when v0(=ret(kmem_alloc)) == 0 and falls through when v0(=ret(kmem_alloc)) != 0.
  The `bne` at 0x1a50 is taken when v0(=ret(generatePageTable)) != 0 and falls through when v0(=ret(generatePageTable)) == 0.
  The `bne` at 0x1a6c is taken when t0(?) != 0 and falls through when t0(?) == 0.
  The `bne` at 0x1a94 is taken when a1(=[a1+3552]:8) < a0(=[a1+3544]:8) (unsigned) and falls through when a1(=[a1+3552]:8) >= a0(=[a1+3544]:8) (unsigned).
  The `bne` at 0x1ad8 is taken when v1(?) < t0(?) (unsigned) and falls through when v1(?) >= t0(?) (unsigned).
  The `beq` at 0x1b74 is taken when (at(?) & 0x1) == 0 and falls through when (at(?) & 0x1) != 0.
  The `beq` at 0x1b90 is taken when (t0(?) & 0x8) == 0 and falls through when (t0(?) & 0x8) != 0.
  The `beq` at 0x1be4 is taken when a3(?) == 0 and falls through when a3(?) != 0.
  The `beq` at 0x1c48 is taken when t0(=[a5]) == 0 and falls through when t0(=[a5]) != 0.
  The `beq` at 0x1c74 is taken when (v1(?) & 0x8) == 0 and falls through when (v1(?) & 0x8) != 0.
  The `beq` at 0x1c98 is taken when t1(?) == 0 and falls through when t1(?) != 0.
  The `beq` at 0x1cbc is taken when s2(=a0) == 0 and falls through when s2(=a0) != 0.
  The `beq` at 0x1cd0 is taken when at(=[a5]) == 0 and falls through when at(=[a5]) != 0.
  The `bne` at 0x1d04 is taken when v1(?) < t0(?) (unsigned) and falls through when v1(?) >= t0(?) (unsigned).
  The `bne` at 0x1d40 is taken when a1(=[a1+3552]:8) < a0(=[a1+3544]:8) (unsigned) and falls through when a1(=[a1+3552]:8) >= a0(=[a1+3544]:8) (unsigned).
  The `jr` at 0x1928 returns with v0 = ?.

- `odsy_dmawait_timeout` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`, 0x1e38, 56 bytes) Inferred.
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1e50).
  Calls `odsy_teardown` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x1e58).
  The `jr` at 0x1e68 returns with v0 = ret(odsy_teardown).

- `odsy_dmawait_harmless_timeout` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`, 0x1e70, 56 bytes) Inferred.
  Calls `cmn_err` via direct with a0=0x7, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1e88).
  Calls `sv_broadcast` via direct with a0=a0+2488, a1=?, a2=?, a3=? (`jal` at 0x1e90).
  The `jr` at 0x1ea0 returns with v0 = ret(sv_broadcast).

- `odsyDMAWait` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`, 0x1ea8, 984 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x2d8 into `at` (`lw` at 0x1ec0).
  Loads 8 bytes from a3 (arg3 at entry) +0x0 into `a3` (`ld` at 0x1f10, 0x2064).
  Loads 8 bytes from a0 (arg0 at entry) +0xde0 into `v0` (`ld` at 0x1f1c).
  Loads 8 bytes from a0 (arg0 at entry) +0xdd8 into `a2` (`ld` at 0x1f20, 0x2124).
  Loads 4 bytes from ret(OdsyNextCSetElem) +0x0 into `a4` (`lw` at 0x1fc0, 0x200c).
  Stores 8 bytes from `a4` to a3 (arg3 at entry) +0x0 (`sd` at 0x1fe0).
  Loads 4 bytes from ret(OdsyNextCSetElem) +0x28 into `a5` (`lw` at 0x2018).
  Loads 8 bytes from ret(OdsyNextCSetElem) +0x38 into `a1` (`ld` at 0x2028).
  Loads 8 bytes from ret(OdsyNextCSetElem) +0x30 into `a0` (`ld` at 0x2034).
  Loads 4 bytes from ? (base unknown) into `a1` (`lw` at 0x2044).
  Loads 4 bytes from a0 (arg0 at entry) +0x2d8 into `a5` (`lw` at 0x20e8, 0x21c0).
  Loads 4 bytes from a0 (arg0 at entry) +0x9d0 into `a6` (`lw` at 0x2114).
  Loads 8 bytes from (([a0+2512] << 0x3) + a0) +0x9d8 into `a7` (`ld` at 0x2120).
  Loads 8 bytes from [(([a0+2512] << 0x3) + a0)+2520]:8 +0x40 into `a7` (`ld` at 0x2128).
  Loads 8 bytes from ? (base unknown) into `a2` (`ld` at 0x2148, 0x2150).
  Loads 4 bytes from ? (base unknown) into `a4` (`lw` at 0x216c).
  Stores 8 bytes from `at` to a3 (arg3 at entry) +0x0 (`sd` at 0x21d8).
  Calls `ddi_mutex_lock` via direct with a0=a0+2472, a1=-0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1ef0).
  Calls `mutex_unlock` via direct with a0=?, a1=?, a2=[a0+3544]:8, a3=[a3]:8 (`jal` at 0x1f4c).
  Calls `ddi_mutex_lock` via direct with a0=?, a1=-0x1, a2=?, a3=? (`jal` at 0x1f94).
  Calls `OdsyInitCSetCursor` via direct with a0=a1+312, a1=?, a2=?, a3=? (`jal` at 0x1fa4).
  Calls `OdsyNextCSetElem` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1fac).
  Calls `mutex_unlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1fc4).
  Calls `sv_destroy` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1fe8).
  Calls `kmem_free` via direct with a0=?, a1=0x48, a2=?, a3=? (`jal` at 0x1ff4).
  Calls `OdsyNextCSetElem` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1ffc).
  Calls `unuseracc` via direct with a0=[ret(OdsyNextCSetElem)+48]:8, a1=[ret(OdsyNextCSetElem)+56]:8, a2=0x110, a3=?, a4=[ret(OdsyNextCSetElem)], a5=[ret(OdsyNextCSetElem)+40] (`jal` at 0x2030).
  Calls `OdsyDeallocCSetId` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2040).
  Calls `mutex_unlock` via direct with a0=?, a1=?, a2=[a0+3544]:8, a3=[a3]:8 (`jal` at 0x207c).
  Calls `timeout` via direct with a0=sym(odsy_dmawait_harmless_timeout), a1=a0 at entry (arg0), a2=0x5dc, a3=a3 at entry (arg3), a4=a2 at entry (arg2), a5=-0x1 (`jal` at 0x209c).
  Calls `hold_nonfatalsig` via direct with a0=sp-176, a1=?, a2=?, a3=? (`jal` at 0x20a8).
  Calls `ddi_sv_wait_sig` via direct with a0=a0+2488, a1=?, a2=0x0, a3=? (`jal` at 0x20bc).
  Calls `release_nonfatalsig` via direct with a0=sp-176, a1=?, a2=?, a3=? (`jal` at 0x20c8).
  Calls `untimeout` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x20d0).
  Calls `timeout` via direct with a0=sym(odsy_dmawait_timeout), a1=a0 at entry (arg0), a2=0x5dc, a3=[a3]:8, a4=a0 at entry (arg0), a6=[a0+2512], a7=[[(([a0+2512] << 0x3) + a0)+2520]:8+64]:8 (`jal` at 0x2160).
  Calls `hold_nonfatalsig` via direct with a0=sp-176, a1=?, a2=?, a3=?, a5=ret(timeout) (`jal` at 0x2180).
  Calls `ddi_sv_wait_sig` via direct with a0=?, a1=?, a2=0x0, a3=? (`jal` at 0x2194).
  Calls `release_nonfatalsig` via direct with a0=sp-176, a1=?, a2=?, a3=? (`jal` at 0x21a0).
  Calls `untimeout` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x21a8).
  Calls `mutex_unlock` via direct with a0=?, a1=?, a2=a0 at entry (arg0), a3=[a3]:8, a4=a2 at entry (arg2), a5=-0x1 (`jal` at 0x21dc).
  Calls `untimeout` via direct with a0=ret(timeout), a1=?, a2=?, a3=?, a5=ret(timeout) (`jal` at 0x21f8).
  Calls `mutex_unlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2200).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=[a3]:8 (`jal` at 0x221c).
  Calls `mutex_unlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2224).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=[a0+3544]:8, a3=[[(([a0+2512] << 0x3) + a0)+2520]:8+64]:8, a6=[a0+2512], a7=[[(([a0+2512] << 0x3) + a0)+2520]:8+64]:8 (`jal` at 0x2240).
  Calls `mutex_unlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2248).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=[a3]:8, a4=a0 at entry (arg0), a6=[a0+2512], a7=[[(([a0+2512] << 0x3) + a0)+2520]:8+64]:8 (`jal` at 0x2264).
  Calls `mutex_unlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x226c).
  The `beq` at 0x1ed0 is taken when at(=[a0+728]) == 0 and falls through when at(=[a0+728]) != 0.
  The `beq` at 0x1f08 is taken when a4(=a2) == 0 and falls through when a4(=a2) != 0.
  The `beq` at 0x1f14 is taken when a5(=-0x1) == a3(=[a3]:8) and falls through when a5(=-0x1) != a3(=[a3]:8).
  The `bne` at 0x1f30 is taken when v0(=[a0+3552]:8) < a2(=[a0+3544]:8) (unsigned) and falls through when v0(=[a0+3552]:8) >= a2(=[a0+3544]:8) (unsigned).
  The `bne` at 0x1f3c is taken when a3(=[a3]:8) < a2(=[a0+3544]:8) (unsigned) and falls through when a3(=[a3]:8) >= a2(=[a0+3544]:8) (unsigned).
  The `beq` at 0x1f44 is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `beq` at 0x1f6c is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `bne` at 0x1f74 is taken when a4(?) != 0 and falls through when a4(?) == 0.
  The `beq` at 0x1f84 is taken when at(?) == 0 and falls through when at(?) != 0.
  The `beq` at 0x1f8c is taken when v1(=a1) == 0 and falls through when v1(=a1) != 0.
  The `beq` at 0x1fb4 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x2004 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `bne` at 0x2010 is taken when a4(=[ret(OdsyNextCSetElem)]) != 0 and falls through when a4(=[ret(OdsyNextCSetElem)]) == 0.
  The `beq` at 0x201c is taken when a5(=[ret(OdsyNextCSetElem)+40]) == at(=-0x1) and falls through when a5(=[ret(OdsyNextCSetElem)+40]) != at(=-0x1).
  The `bne` at 0x2054 is taken when a4(?) != 0 and falls through when a4(?) == 0.
  The `bne` at 0x206c is taken when a3(=[a3]:8) < a2(?) (unsigned) and falls through when a3(=[a3]:8) >= a2(?) (unsigned).
  The `beq` at 0x20dc is taken when a4(?) == 0 and falls through when a4(?) != 0.
  The `beq` at 0x20ec is taken when a5(=[a0+728]) == 0 and falls through when a5(=[a0+728]) != 0.
  The `beq` at 0x210c is taken when v0(?) >= 0x80 (unsigned) and falls through when v0(?) < 0x80 (unsigned).
  The `bne` at 0x212c is taken when a2(=[a0+3544]:8) != a7(=[[(([a0+2512] << 0x3) + a0)+2520]:8+64]:8) and falls through when a2(=[a0+3544]:8) == a7(=[[(([a0+2512] << 0x3) + a0)+2520]:8+64]:8).
  The `bne` at 0x2154 is taken when a3(=[a3]:8) != a2(?) and falls through when a3(=[a3]:8) == a2(?).
  The `beq` at 0x2178 is taken when a4(?) == 0 and falls through when a4(?) != 0.
  The `beq` at 0x21b4 is taken when a4(?) == 0 and falls through when a4(?) != 0.
  The `beq` at 0x21c4 is taken when a5(=[a0+728]) == 0 and falls through when a5(=[a0+728]) != 0.
  The `jr` at 0x1ed8 returns with v0 = one of 0x0, 0x9, 0x16.

- `odsyDMAWakeup` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`, 0x2280, 720 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0xdd8 into `at` (`ld` at 0x22bc).
  Loads 8 bytes from a0 (arg0 at entry) +0xde0 into `a5` (`ld` at 0x22c0).
  Loads 8 bytes from a0 (arg0 at entry) +0x9c0 into `s6` (`ld` at 0x22c4).
  Loads 2 bytes from [a0+2496]:8 +0x0 into `s6` (`lhu` at 0x22d0).
  Loads 4 bytes from a0 (arg0 at entry) +0x9d0 into `t0` (`lw` at 0x22f0, 0x249c).
  Loads 4 bytes from a0 (arg0 at entry) +0x9cc into `t1` (`lw` at 0x22f4).
  Loads 8 bytes from a0 (arg0 at entry) +0xdd8 into `v1` (`ld` at 0x237c).
  Loads 4 bytes from a0 (arg0 at entry) +0x9d0 into `v0` (`lw` at 0x2380).
  Stores 8 bytes from `v1` to a0 (arg0 at entry) +0xdd8 (`sd` at 0x2390).
  Loads 8 bytes from (([a0+2512] << 0x3) + a0) +0x9d8 into `s0` (`ld` at 0x2398).
  Stores 8 bytes from `zero` to (([a0+2512] << 0x3) + a0) +0x9d8 (`sd` at 0x23a0).
  Loads 4 bytes from a0 (arg0 at entry) +0x9d0 into `a1` (`lw` at 0x23a4, 0x24ec).
  Stores 4 bytes from `a0` to a0 (arg0 at entry) +0x9d0 (`sw` at 0x23c8).
  Loads 8 bytes from [(([a0+2512] << 0x3) + a0)+2520]:8 +0x8 into `a0` (`ld` at 0x23cc).
  Loads 4 bytes from [(([a0+2512] << 0x3) + a0)+2520]:8 +0x10 into `a1` (`lw` at 0x23e0).
  Stores 4 bytes from `zero` to [(([a0+2512] << 0x3) + a0)+2520]:8 +0x10 (`sw` at 0x23e4, 0x2504).
  Stores 8 bytes from `zero` to [(([a0+2512] << 0x3) + a0)+2520]:8 +0x8 (`sd` at 0x23e8).
  Stores 4 bytes from `zero` to [(([a0+2512] << 0x3) + a0)+2520]:8 +0x0 (`sw` at 0x23ec).
  Loads 8 bytes from a0 (arg0 at entry) +0x2f8 into `v1` (`ld` at 0x23f0).
  Loads 8 bytes from [(([a0+2512] << 0x3) + a0)+2520]:8 +0x40 into `v0` (`ld` at 0x23f4).
  Stores 8 bytes from `v0` to [a0+760]:8 +0x8 (`sd` at 0x23f8).
  Loads 8 bytes from [(([a0+2512] << 0x3) + a0)+2520]:8 +0x20 into `at` (`ld` at 0x23fc).
  Loads 8 bytes from [(([a0+2512] << 0x3) + a0)+2520]:8 +0x38 into `a1` (`ld` at 0x2408).
  Loads 4 bytes from a0 (arg0 at entry) +0x9d0 into `at` (`lw` at 0x251c).
  Loads 8 bytes from a0 (arg0 at entry) +0x9c0 into `v0` (`ld` at 0x2534).
  Stores 2 bytes from `at` to [a0+2496]:8 +0x0 (`sh` at 0x254c).
  Calls `ddi_mutex_lock` via direct with a0=a0+2472, a1=-0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x229c).
  Calls `sv_broadcast` via direct with a0=[(([a0+2512] << 0x3) + a0)+2520]:8+24, a1=[[(([a0+2512] << 0x3) + a0)+2520]:8+56]:8, a2=?, a3=? (`jal` at 0x2360).
  Calls `sv_destroy` via direct with a0=[(([a0+2512] << 0x3) + a0)+2520]:8+24, a1=?, a2=?, a3=? (`jal` at 0x2368).
  Calls `kmem_free` via direct with a0=[[(([a0+2512] << 0x3) + a0)+2520]:8+8]:8, a1=[[(([a0+2512] << 0x3) + a0)+2520]:8+16], a2=?, a3=? (`jal` at 0x23dc).
  Calls `kmem_free` via direct with a0=[(([a0+2512] << 0x3) + a0)+2520]:8, a1=0x48, a2=?, a3=? (`jal` at 0x2414).
  Calls `sv_broadcast` via direct with a0=[(([a0+2512] << 0x3) + a0)+2520]:8+24, a1=?, a2=?, a3=? (`jal` at 0x2428).
  Calls `sv_destroy` via direct with a0=[(([a0+2512] << 0x3) + a0)+2520]:8+24, a1=?, a2=?, a3=? (`jal` at 0x2430).
  Calls `kmem_free` via direct with a0=[(([a0+2512] << 0x3) + a0)+2520]:8, a1=0x48, a2=?, a3=? (`jal` at 0x243c).
  Calls `sv_broadcast` via direct with a0=a0+2488, a1=?, a2=?, a3=? (`jal` at 0x244c).
  Calls `mutex_unlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2470).
  Calls `mutex_unlock` via direct with a0=?, a1=?, a2=0x2000000000000000, a3=0x7f, a4=-0x1 (`jal` at 0x24a0).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x24c4).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x24e0).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x24f8).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a4=-0x1 (`jal` at 0x2514).
  The `beq` at 0x22e0 is taken when a6(?) == 0 and falls through when a6(?) != 0.
  The `beq` at 0x22e8 is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `beq` at 0x2304 is taken when t1(=[a0+2508]) >= t0(=[a0+2512]) (signed) and falls through when t1(=[a0+2508]) < t0(=[a0+2512]) (signed).
  The `bne` at 0x2314 is taken when a6(?) != 0 and falls through when a6(?) == 0.
  The `beq` at 0x2324 is taken when a6(?) == 0 and falls through when a6(?) != 0.
  The `bne` at 0x2330 is taken when a6(?) < s5(?) (unsigned) and falls through when a6(?) >= s5(?) (unsigned).
  The `blez` at 0x2338 is taken when s5(?) <= 0 (signed) and falls through when s5(?) > 0 (signed).
  The `beq` at 0x2374 is taken when at(?) == 0 and falls through when at(?) != 0.
  The `beq` at 0x239c is taken when s0(=[(([a0+2512] << 0x3) + a0)+2520]:8) == 0 and falls through when s0(=[(([a0+2512] << 0x3) + a0)+2520]:8) != 0.
  The `beq` at 0x23d4 is taken when a0(=[[(([a0+2512] << 0x3) + a0)+2520]:8+8]:8) == 0 and falls through when a0(=[[(([a0+2512] << 0x3) + a0)+2520]:8+8]:8) != 0.
  The `beq` at 0x2400 is taken when at(=[[(([a0+2512] << 0x3) + a0)+2520]:8+32]:8) == 0 and falls through when at(=[[(([a0+2512] << 0x3) + a0)+2520]:8+32]:8) != 0.
  The `bne` at 0x240c is taken when a1(=[[(([a0+2512] << 0x3) + a0)+2520]:8+56]:8) != 0 and falls through when a1(=[[(([a0+2512] << 0x3) + a0)+2520]:8+56]:8) == 0.
  The `bne` at 0x2488 is taken when t1(=[a0+2508]) < s6(?) (signed) and falls through when t1(=[a0+2508]) >= s6(?) (signed).
  The `bnel` at 0x2498 is taken when v0(=table(0x2000000000000000)) != 0 and falls through when v0(=table(0x2000000000000000)) == 0.
  The `jr` at 0x247c returns with v0 = ret(mutex_unlock).

- `odsyDMAFinish` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`, 0x2550, 268 bytes) Inferred.
  Loads 4 bytes from ret(OdsyNextCSetElem) +0x0 into `at` (`lw` at 0x25bc, 0x25dc).
  Loads 4 bytes from a0 (arg0 at entry) +0x2d8 into `v1` (`lw` at 0x25e8).
  Loads 4 bytes from ret(OdsyNextCSetElem) +0x10 into `a1` (`lw` at 0x25f4, 0x2658).
  Loads 8 bytes from ret(OdsyNextCSetElem) +0x8 into `a0` (`ld` at 0x25fc).
  Loads 8 bytes from ret(OdsyNextCSetElem) +0x38 into `a1` (`ld` at 0x2600).
  Loads 8 bytes from ret(OdsyNextCSetElem) +0x30 into `a0` (`ld` at 0x2610).
  Calls `odsyDMAWait` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x1, a3=a1+168 (`jal` at 0x256c).
  Calls `odsyDMAWait` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x1, a3=a1+176 (`jal` at 0x2580).
  Calls `ddi_mutex_lock` via direct with a0=a0+2472, a1=-0x1, a2=?, a3=? (`jal` at 0x2598).
  Calls `OdsyInitCSetCursor` via direct with a0=a1+312, a1=?, a2=?, a3=? (`jal` at 0x25a0).
  Calls `OdsyNextCSetElem` via direct with a0=a1+312, a1=?, a2=?, a3=? (`jal` at 0x25a8).
  Calls `kmem_free` via direct with a0=ret(OdsyNextCSetElem), a1=0x48, a2=?, a3=? (`jal` at 0x25c4).
  Calls `OdsyNextCSetElem` via direct with a0=a1+312, a1=?, a2=?, a3=? (`jal` at 0x25cc).
  Calls `kmem_free` via direct with a0=[ret(OdsyNextCSetElem)+8]:8, a1=[ret(OdsyNextCSetElem)+16], a2=?, a3=? (`jal` at 0x25f8).
  Calls `unuseracc` via direct with a0=[ret(OdsyNextCSetElem)+48]:8, a1=[ret(OdsyNextCSetElem)+56]:8, a2=0x110, a3=? (`jal` at 0x260c).
  Calls `OdsyDestroyCSet` via direct with a0=a1+312, a1=0x0, a2=?, a3=? (`jal` at 0x2628).
  Calls `mutex_unlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2634).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x264c).
  The `beq` at 0x25b0 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x25d4 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x25e0 is taken when at(=[ret(OdsyNextCSetElem)]) == 0 and falls through when at(=[ret(OdsyNextCSetElem)]) != 0.
  The `beq` at 0x25ec is taken when v1(=[a0+728]) == 0 and falls through when v1(=[a0+728]) != 0.
  The `beq` at 0x2604 is taken when a1(=[ret(OdsyNextCSetElem)+56]:8) == 0 and falls through when a1(=[ret(OdsyNextCSetElem)+56]:8) != 0.
  The `jr` at 0x2640 returns with v0 = ret(mutex_unlock).

- `gfP_OdsyMMwaitXfr` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`, 0x265c, 248 bytes) Inferred.
  Stores 4 bytes from `zero` to a3 (arg3 at entry) +0x0 (`sw` at 0x265c).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `at` (`ld` at 0x2664).
  Loads 4 bytes from [a0+32]:8 +0x2d8 into `at` (`lw` at 0x266c).
  Loads 8 bytes from a0 (arg0 at entry) +0x48 into `v1` (`ld` at 0x2688).
  Loads 8 bytes from [a0+72]:8 +0x70 into `v1` (`ld` at 0x268c).
  Stores 4 bytes from `v0` to a3 (arg3 at entry) +0x0 (`sw` at 0x26d0).
  Stores 4 bytes from `a4` to a3 (arg3 at entry) +0x0 (`sw` at 0x2728, 0x2750).
  Calls `copyin` via direct with a0=a2 at entry (arg2), a1=sp-96, a2=0x8, a3=? (`jal` at 0x26a8).
  Calls `odsyDMAWait` via direct with a0=?, a1=?, a2=0x1, a3=sp-96 (`jal` at 0x26c0).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=a3 at entry (arg3) (`jal` at 0x26ec).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=? (`jal` at 0x270c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x2734).
  The `bne` at 0x2680 is taken when at(=[[a0+32]:8+728]) != 0 and falls through when at(=[[a0+32]:8+728]) == 0.
  The `beq` at 0x2694 is taken when v1(=[[a0+72]:8+112]:8) == 0 and falls through when v1(=[[a0+72]:8+112]:8) != 0.
  The `bne` at 0x26b0 is taken when v0(=ret(copyin)) != 0 and falls through when v0(=ret(copyin)) == 0.
  The `jr` at 0x26d4 returns with v0 = ?.

- `ConstructTftchWarList` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`, 0x2754, 760 bytes) Inferred.
  Loads 4 bytes from a1 (arg1 at entry) +0x1c into `s1` (`lw` at 0x2778).
  Loads 4 bytes from a1 (arg1 at entry) +0x18 into `a5` (`lw` at 0x279c).
  Loads 4 bytes from a1 (arg1 at entry) +0x14 into `a0` (`lw` at 0x27a0).
  Loads 4 bytes from a1 (arg1 at entry) +0xc into `v1` (`lw` at 0x27bc, 0x28a8).
  Stores 4 bytes from `s5` to a0 (arg0 at entry) +0x0 (`sw` at 0x2810).
  Stores 4 bytes from `a1` to a2 (arg2 at entry) +0x0 (`sw` at 0x281c).
  Stores 8 bytes from `v0` to a0 (arg0 at entry) +0x8 (`sd` at 0x2850).
  Stores 8 bytes from `a5` to ? (base unknown) (`sd` at 0x2884).
  Loads 4 bytes from a1 (arg1 at entry) +0x4 into `at` (`lw` at 0x2888, 0x28f8, 0x2998).
  Stores 4 bytes from `at` to ? (base unknown) (`sw` at 0x2890, 0x2900).
  Loads 4 bytes from a1 (arg1 at entry) +0x4 into `t1` (`lw` at 0x2898).
  Stores 4 bytes from `v1` to ? (base unknown) (`sw` at 0x28b8).
  Loads 4 bytes from a1 (arg1 at entry) +0xc into `a5` (`lw` at 0x28bc).
  Stores 8 bytes from `a7` to ? (base unknown) (`sd` at 0x28c0).
  Stores 8 bytes from `a6` to ? (base unknown) (`sd` at 0x28c4).
  Stores 4 bytes from `s4` to ? (base unknown) (`sw` at 0x28c8).
  Stores 4 bytes from `a5` to ? (base unknown) (`sw` at 0x28d8, 0x2958).
  Loads 4 bytes from a1 (arg1 at entry) +0xc into `t1` (`lw` at 0x28dc).
  Stores 4 bytes from `t1` to ? (base unknown) (`sw` at 0x28e8).
  Loads 4 bytes from a1 (arg1 at entry) +0x14 into `a5` (`lw` at 0x2904).
  Stores 8 bytes from `v1` to ? (base unknown) (`sd` at 0x2918).
  Stores 8 bytes from `zero` to ? (base unknown) (`sd` at 0x294c).
  Stores 4 bytes from `v1` to a0 (arg0 at entry) +0x0 (`sw` at 0x2984).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x8 (`sd` at 0x2988).
  Loads 4 bytes from a1 (arg1 at entry) +0x4 into `v0` (`lw` at 0x298c).
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x18 (`sw` at 0x2994).
  Stores 4 bytes from `at` to a0 (arg0 at entry) +0x1c (`sw` at 0x29a0).
  Loads 4 bytes from a1 (arg1 at entry) +0xc into `s1` (`lw` at 0x29a4).
  Stores 4 bytes from `s1` to a0 (arg0 at entry) +0x10 (`sw` at 0x29ac).
  Loads 4 bytes from a1 (arg1 at entry) +0xc into `s0` (`lw` at 0x29b4).
  Stores 8 bytes from `s2` to a0 (arg0 at entry) +0x20 (`sd` at 0x29b8).
  Stores 8 bytes from `a4` to a0 (arg0 at entry) +0x28 (`sd` at 0x29c0).
  Stores 4 bytes from `s0` to a0 (arg0 at entry) +0x14 (`sw` at 0x29c8).
  Stores 4 bytes from `a6` to a2 (arg2 at entry) +0x0 (`sw` at 0x29e0).
  Calls `kmem_alloc` via direct with a0=?, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=0xfffff (`jal` at 0x2830).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=0xfffff (`jal` at 0x2a00).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a4=0x0 (`jal` at 0x2a38).
  The `beq` at 0x2794 is taken when v0(=0x24000) >= a4 (unsigned) and falls through when v0(=0x24000) < a4 (unsigned).
  The `bne` at 0x27b0 is taken when v0(=0x24000) < a0(?) (unsigned) and falls through when v0(=0x24000) >= a0(?) (unsigned).
  The `beq` at 0x2800 is taken when at(?) >= v1(?) (unsigned) and falls through when at(?) < v1(?) (unsigned).
  The `beq` at 0x2844 is taken when v0(=ret(kmem_alloc)) == 0 and falls through when v0(=ret(kmem_alloc)) != 0.
  The `blez` at 0x284c is taken when s5(?) <= 0 (signed) and falls through when s5(?) > 0 (signed).
  The `beq` at 0x286c is taken when t0(?) == a1(?) and falls through when t0(?) != a1(?).
  The `beq` at 0x28a0 is taken when s1(?) == 0 and falls through when s1(?) != 0.
  The `bne` at 0x28d4 is taken when t0(?) != a1(?) and falls through when t0(?) == a1(?).
  The `beq` at 0x28ec is taken when s1(?) == 0 and falls through when s1(?) != 0.
  The `beq` at 0x2924 is taken when a1(?) >= s5(?) (signed) and falls through when a1(?) < s5(?) (signed).
  The `beq` at 0x292c is taken when a1(?) == 0 and falls through when a1(?) != 0.
  The `bne` at 0x2940 is taken when t0(?) != a1(?) and falls through when t0(?) == a1(?).
  The `jr` at 0x297c returns with v0 = one of 0x0, 0x1.

- `ReleaseTftchWarList` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`, 0x2a4c, 80 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x0 into `a3` (`lw` at 0x2a4c).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x0 (`sw` at 0x2a64).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x8 (`sd` at 0x2a68).
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `a0` (`ld` at 0x2a88).
  Calls `kmem_free` via direct with a0=[a0+8]:8, a1=?, a2=a2 at entry (arg2), a3=[a0] (`jal` at 0x2a8c).
  The `beq` at 0x2a5c is taken when a3(=[a0]) >= 0x2 (signed) and falls through when a3(=[a0]) < 0x2 (signed).
  The `jr` at 0x2a70 returns with v0 = ?.

- `odsyInitDrawables` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`, 0x0, 92 bytes) Inferred.
  Stores 8 bytes from `v0` to a0 (arg0 at entry) +0x2918 (`sd` at 0x1c).
  Calls `odsyHashAlloc` via direct with a0=0xd, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x10).
  Calls `mrlock_init` via direct with a0=a0+10528, a1=0x1, a2=sym(.rodata), a3=-0x1, a5=sym(.rodata) (`jal` at 0x30).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x4c).
  The `beq` at 0x18 is taken when v0(=ret(odsyHashAlloc)) == 0 and falls through when v0(=ret(odsyHashAlloc)) != 0.
  The `jr` at 0x40 returns with v0 = ret(mrlock_init).

- `odsyFindDrawable` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`, 0x5c, 108 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x2918 into `a0` (`ld` at 0x98).
  Calls `mraccessf` via direct with a0=a0+10528, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x78).
  Calls `odsyHashLookup` via direct with a0=[a0+10520]:8, a1=?, a2=a1 at entry (arg1), a3=? (`jal` at 0xa0).
  Calls `mrunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xac).
  The `jr` at 0xc0 returns with v0 = ret(odsyHashLookup).

- `odsyCreateDrawable` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`, 0xc8, 68 bytes) Inferred.
  Stores 4 bytes from `zero` to ret(kmem_alloc) +0x20 (`sw` at 0xf8).
  Stores 4 bytes from `at` to ret(kmem_alloc) +0x10 (`sw` at 0x100).
  Calls `kmem_alloc` via direct with a0=0x28, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xd8).
  The `bne` at 0xe4 is taken when v0(=ret(kmem_alloc)) != 0 and falls through when v0(=ret(kmem_alloc)) == 0.
  The `jr` at 0x104 returns with v0 = ?.

- `odsyDestroyDrawable` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`, 0x10c, 32 bytes) Inferred.
  Calls `kmem_free` via direct with a0=a1 at entry (arg1), a1=0x28, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x118).
  The `jr` at 0x124 returns with v0 = ret(kmem_free).

- `odsyBindDrawable` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`, 0x12c, 684 bytes) Inferred.
  Loads 8 bytes from a1 (arg1 at entry) +0x90 into `a7` (`ld` at 0x12c).
  Loads 4 bytes from a1 (arg1 at entry) +0x190 into `v1` (`lw` at 0x158).
  Loads 8 bytes from [a1+144]:8 +0x80 into `at` (`ld` at 0x15c).
  Loads 4 bytes from [[a1+144]:8+128]:8 +0x64 into `at` (`lw` at 0x160).
  Stores 4 bytes from `v1` to a1 (arg1 at entry) +0x190 (`sw` at 0x16c).
  Stores 4 bytes from `at` to a1 (arg1 at entry) +0x194 (`sw` at 0x174).
  Loads 4 bytes from (a1 + one of 0x164, 0x194) +0x0 into `a7` (`lw` at 0x178).
  Loads 4 bytes from (a1 + one of 0x164, 0x194) +0x0 into `a2` (`lw` at 0x1c4).
  Loads 8 bytes from a0 (arg0 at entry) +0x2918 into `a0` (`ld` at 0x1d0).
  Loads 4 bytes from (a1 + one of 0x160, 0x190) +0x0 into `a4` (`lw` at 0x1dc).
  Stores 4 bytes from `a4` to (a1 + one of 0x160, 0x190) +0x0 (`sw` at 0x1ec).
  Loads 4 bytes from ? (base unknown) into `a5` (`lw` at 0x1f8, 0x244).
  Stores 4 bytes from `a5` to ? (base unknown) (`sw` at 0x200).
  Loads 4 bytes from (a1 + one of 0x160, 0x190) +0x0 into `at` (`lw` at 0x20c, 0x2dc).
  Loads 8 bytes from ? (base unknown) into `a0` (`ld` at 0x22c).
  Stores 4 bytes from `a4` to (a1 + one of 0x168, 0x198) +0x0 (`sw` at 0x238).
  Loads 8 bytes from ? (base unknown) into `a5` (`ld` at 0x23c, 0x260, 0x390).
  Stores 1 byte from `zero` to (a1 + one of 0x18b, 0x1bb) +0x0 (`sb` at 0x248).
  Stores 2 bytes from `a5` to (a1 + one of 0x188, 0x1b8) +0x0 (`sh` at 0x250).
  Loads 8 bytes from ? (base unknown) into `at` (`ld` at 0x254, 0x34c, 0x384).
  Loads 4 bytes from ? (base unknown) into `at` (`lw` at 0x258, 0x350).
  Stores 4 bytes from `at` to (a1 + one of 0x16c, 0x19c) +0x0 (`sw` at 0x25c).
  Loads 1 byte from ? (base unknown) into `a5` (`lbu` at 0x264, 0x394).
  Stores 4 bytes from `zero` to (a1 + one of 0x170, 0x1a0) +0x0 (`sw` at 0x268).
  Stores 1 byte from `a5` to (a1 + one of 0x18a, 0x1ba) +0x0 (`sb` at 0x26c).
  Stores 4 bytes from `zero` to ? (base unknown) (`sw` at 0x284).
  Loads 4 bytes from (a1 + one of 0x16c, 0x19c) +0x0 into `v0` (`lw` at 0x28c).
  Loads 4 bytes from a1 (arg1 at entry) +0x44 into `a4` (`lw` at 0x2a8).
  Stores 4 bytes from `a4` to a1 (arg1 at entry) +0x44 (`sw` at 0x2b4).
  Loads 4 bytes from (a1 + one of 0x160, 0x190) +0x0 into `a5` (`lw` at 0x2b8).
  Stores 4 bytes from `a5` to (a1 + one of 0x160, 0x190) +0x0 (`sw` at 0x2c0).
  Stores 4 bytes from `at` to (a1 + one of 0x160, 0x190) +0x0 (`sw` at 0x2e4).
  Loads 4 bytes from a1 (arg1 at entry) +0x160 into `a4` (`lw` at 0x2f4).
  Loads 8 bytes from [a1+144]:8 +0x78 into `v1` (`ld` at 0x2f8).
  Loads 4 bytes from [[a1+144]:8+120]:8 +0x64 into `v1` (`lw` at 0x2fc).
  Stores 4 bytes from `a4` to a1 (arg1 at entry) +0x160 (`sw` at 0x308).
  Stores 4 bytes from `v1` to a1 (arg1 at entry) +0x164 (`sw` at 0x314).
  Loads 4 bytes from a1 (arg1 at entry) +0x40 into `a5` (`lw` at 0x320).
  Stores 4 bytes from `a5` to a1 (arg1 at entry) +0x40 (`sw` at 0x330).
  Loads 8 bytes from ? (base unknown) into `v1` (`ld` at 0x334).
  Loads 4 bytes from ? (base unknown) into `v1` (`lw` at 0x338).
  Stores 4 bytes from `v1` to (a1 + one of 0x16c, 0x19c) +0x0 (`sw` at 0x33c).
  Loads 8 bytes from ? (base unknown) into `v0` (`ld` at 0x340).
  Loads 1 byte from ? (base unknown) into `v0` (`lbu` at 0x344).
  Stores 1 byte from `v0` to (a1 + one of 0x18a, 0x1ba) +0x0 (`sb` at 0x348).
  Stores 4 bytes from `at` to (a1 + one of 0x170, 0x1a0) +0x0 (`sw` at 0x358).
  Loads 8 bytes from ? (base unknown) into `a4` (`ld` at 0x36c).
  Loads 4 bytes from ? (base unknown) into `a4` (`lw` at 0x378).
  Stores 4 bytes from `a4` to ? (base unknown) (`sw` at 0x380).
  Loads 1 byte from ? (base unknown) into `at` (`lbu` at 0x388).
  Stores 1 byte from `at` to (a1 + one of 0x18c, 0x1bc) +0x0 (`sb` at 0x38c).
  Stores 1 byte from `a5` to (a1 + one of 0x18d, 0x1bd) +0x0 (`sb` at 0x39c).
  Calls `mraccessf` via direct with a0=a0+10528, a1=0x0, a2=?, a3=?, a6=0x1 (`jal` at 0x1bc).
  Calls `odsyHashLookup` via direct with a0=[a0+10520]:8, a1=?, a2=?, a3=? (`jal` at 0x1cc).
  Calls `mrtrypromote` via direct with a0=a0+10528, a1=?, a2=?, a3=? (`jal` at 0x1e8).
  Calls `mrunlock` via direct with a0=a0+10528, a1=?, a2=?, a3=? (`jal` at 0x204).
  Calls `mrunlock` via direct with a0=a0+10528, a1=?, a2=?, a3=? (`jal` at 0x3a4).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a4=a3 at entry (arg3) (`jal` at 0x3c4).
  The `beq` at 0x150 is taken when a2 == a6(=0x1) and falls through when a2 != a6(=0x1).
  The `beq` at 0x184 is taken when a7(?) == 0 and falls through when a7(?) != 0.
  The `beq` at 0x1d4 is taken when v0(=ret(odsyHashLookup)) == 0 and falls through when v0(=ret(odsyHashLookup)) != 0.
  The `beq` at 0x1f0 is taken when v0(=ret(mrtrypromote)) == 0 and falls through when v0(=ret(mrtrypromote)) != 0.
  The `beq` at 0x224 is taken when (at(?) & 0x4) == 0 and falls through when (at(?) & 0x4) != 0.
  The `beq` at 0x230 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `beq` at 0x24c is taken when (a4(=a3) & 0x2) == 0 and falls through when (a4(=a3) & 0x2) != 0.
  The `bne` at 0x280 is taken when v0(?) < 0x4 (signed) and falls through when v0(?) >= 0x4 (signed).
  The `beq` at 0x2a0 is taken when a4(=a2) == a5(=0x1) and falls through when a4(=a2) != a5(=0x1).
  The `bne` at 0x37c is taken when v0(?) < 0x4 (signed) and falls through when v0(?) >= 0x4 (signed).
  The `jr` at 0x2d4 returns with v0 = one of 0x0, 0xd, 0x16.

- `odsyUnbindDrawable` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`, 0x3d8, 388 bytes) Inferred.
  Loads 4 bytes from (a1 + one of 0x160, 0x190) +0x0 into `a0` (`lw` at 0x3f4, 0x4a0).
  Loads 4 bytes from (a1 + one of 0x164, 0x194) +0x0 into `a6` (`lw` at 0x410).
  Loads 4 bytes from (a1 + one of 0x164, 0x194) +0x0 into `a2` (`lw` at 0x450).
  Loads 8 bytes from a0 (arg0 at entry) +0x2918 into `a0` (`ld` at 0x45c).
  Loads 4 bytes from ret(odsyHashLookup) +0x20 into `at` (`lw` at 0x478).
  Stores 4 bytes from `at` to ret(odsyHashLookup) +0x20 (`sw` at 0x484).
  Loads 4 bytes from ret(odsyHashLookup) +0x20 into `v1` (`lw` at 0x490).
  Stores 4 bytes from `zero` to (a1 + one of 0x164, 0x194) +0x0 (`sw` at 0x4ac).
  Stores 4 bytes from `a2` to (a1 + one of 0x160, 0x190) +0x0 (`sw` at 0x4b8).
  Loads 8 bytes from ret(odsyHashLookup) +0x0 into `a3` (`ld` at 0x4fc).
  Calls `mraccessf` via direct with a0=a0+10528, a1=0x0, a2=?, a3=?, a4=0xd (`jal` at 0x444).
  Calls `odsyHashLookup` via direct with a0=[a0+10520]:8, a1=?, a2=?, a3=? (`jal` at 0x458).
  Calls `mrtrypromote` via direct with a0=a0+10528, a1=?, a2=?, a3=? (`jal` at 0x468).
  Calls `mrunlock` via direct with a0=a0+10528, a1=?, a2=?, a3=? (`jal` at 0x488).
  Calls `mrunlock` via direct with a0=a0+10528, a1=?, a2=?, a3=? (`jal` at 0x4e4).
  Calls `odsyHashRemove` via direct with a0=ret(odsyHashLookup), a1=?, a2=?, a3=[ret(odsyHashLookup)]:8 (`jal` at 0x508).
  Calls `odsyDestroyDrawable` via direct with a0=a0 at entry (arg0), a1=ret(odsyHashLookup), a2=?, a3=? (`jal` at 0x528).
  Calls `mrunlock` via direct with a0=a0+10528, a1=?, a2=?, a3=? (`jal` at 0x544).
  The `beq` at 0x3e8 is taken when a2 == at(=0x1) and falls through when a2 != at(=0x1).
  The `beq` at 0x400 is taken when (a0(?) & 0x2) == 0 and falls through when (a0(?) & 0x2) != 0.
  The `beq` at 0x408 is taken when a2(?) == 0 and falls through when a2(?) != 0.
  The `beq` at 0x460 is taken when v0(=ret(odsyHashLookup)) == 0 and falls through when v0(=ret(odsyHashLookup)) != 0.
  The `beq` at 0x470 is taken when v0(=ret(mrtrypromote)) == 0 and falls through when v0(=ret(mrtrypromote)) != 0.
  The `beq` at 0x480 is taken when at(=[ret(odsyHashLookup)+32]-1) == 0 and falls through when at(=[ret(odsyHashLookup)+32]-1) != 0.
  The `beq` at 0x498 is taken when v1(=[ret(odsyHashLookup)+32]) == 0 and falls through when v1(=[ret(odsyHashLookup)+32]) != 0.
  The `beq` at 0x500 is taken when a3(=[ret(odsyHashLookup)]:8) == 0 and falls through when a3(=[ret(odsyHashLookup)]:8) != 0.
  The `jr` at 0x4c4 returns with v0 = one of 0x0, 0xd, 0x16.

- `gfP_OdsySetDrawBuffer` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`, 0x55c, 564 bytes) Inferred.
  Stores 4 bytes from `zero` to a3 (arg3 at entry) +0x0 (`sw` at 0x56c).
  Loads 8 bytes from a0 (arg0 at entry) +0x48 into `s1` (`ld` at 0x574).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `s2` (`ld` at 0x578).
  Loads 8 bytes from [a0+72]:8 +0x70 into `s1` (`ld` at 0x57c).
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `at` (`ld` at 0x588).
  Stores 4 bytes from `t8` to [[a0+72]:8+112]:8 +0x1c8 (`sw` at 0x5b8).
  Loads 8 bytes from [a0+32]:8 +0x2d0 into `a0`: 6 such accesses, including `ld` at 0x5c8, 0x60c, 0x640.
  Loads 4 bytes from a0 (arg0 at entry) +0x30 into `a0` (`lw` at 0x5fc).
  Stores 4 bytes from `a0` to a0 (arg0 at entry) +0x30 (`sw` at 0x608).
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `a7` (`ld` at 0x628).
  Stores 4 bytes from `a6` to [a0+32]:8 +0x28a8 (`sw` at 0x630).
  Stores 4 bytes from `a6` to [[a0+32]:8+736]:8 +0x107c (`sw` at 0x634).
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `a5` (`ld` at 0x638).
  Loads 4 bytes from [[a0+32]:8+736]:8 +0x106c into `a5` (`lw` at 0x63c).
  Stores 4 bytes from `s0` to a3 (arg3 at entry) +0x0 (`sw` at 0x684).
  Loads 4 bytes from a0 (arg0 at entry) +0x30 into `at` (`lw` at 0x6a0).
  Stores 4 bytes from `at` to a0 (arg0 at entry) +0x30 (`sw` at 0x6a8).
  Loads 4 bytes from [a0+32]:8 +0x28a4 into `v0` (`lw` at 0x6e8).
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `a4` (`ld` at 0x704).
  Stores 4 bytes from `a2` to [a0+32]:8 +0x28a4 (`sw` at 0x70c).
  Stores 4 bytes from `a2` to [[a0+32]:8+736]:8 +0x1074 (`sw` at 0x710).
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `v1` (`ld` at 0x718).
  Stores 4 bytes from `zero` to [a0+32]:8 +0x28a8 (`sw` at 0x71c).
  Stores 4 bytes from `zero` to [[a0+32]:8+736]:8 +0x107c (`sw` at 0x724).
  Stores 4 bytes from `a4` to a3 (arg3 at entry) +0x0 (`sw` at 0x758, 0x78c).
  Calls `copyin` via direct with a0=a2 at entry (arg2), a1=sp-128, a2=0x4, a3=a3 at entry (arg3) (`jal` at 0x5a0).
  Calls `RRM_CheckValidFault` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x5b4).
  Calls `odsy_flow_am_i_attached` via direct with a0=[[a0+32]:8+720]:8, a1=?, a2=?, a3=? (`jal` at 0x5c4).
  Calls `odsyPushBufferSelect` via direct with a0=[[a0+72]:8+112]:8, a1=?, a2=?, a3=? (`jal` at 0x5dc).
  Calls `splhi` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x5f4).
  Calls `gfx_flow_am_i_attached` via direct with a0=[[a0+32]:8+720]:8, a1=?, a2=?, a3=?, a4=-0x3 (`jal` at 0x618).
  Calls `gfx_flow_detach_me` via direct with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=?, a3=?, a5=[[[a0+32]:8+736]:8+4204], a6=0x1, a7=[[a0+32]:8+736]:8 (`jal` at 0x648).
  Calls `splx` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x658).
  Calls `splhi` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x698).
  Calls `gfx_flow_am_i_attached` via direct with a0=[[a0+32]:8+720]:8, a1=?, a2=ret(splhi), a3=? (`jal` at 0x6b8).
  Calls `splx` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x6c8).
  Calls `gfx_flow_attach_me` via direct with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=?, a3=? (`jal` at 0x6dc).
  Calls `gfx_flow_credit_tnum_get` via direct with a0=[[a0+32]:8+720]:8, a1=?, a2=?, a3=? (`jal` at 0x6ec).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x73c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x770).
  The `beq` at 0x590 is taken when s1(=[[a0+72]:8+112]:8) == 0 and falls through when s1(=[[a0+72]:8+112]:8) != 0.
  The `bne` at 0x5a8 is taken when v0(=ret(copyin)) != 0 and falls through when v0(=ret(copyin)) == 0.
  The `bltz` at 0x5bc is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed) and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed).
  The `beq` at 0x5d0 is taken when v0(=ret(odsy_flow_am_i_attached)) == 0 and falls through when v0(=ret(odsy_flow_am_i_attached)) != 0.
  The `beq` at 0x5ec is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `beq` at 0x610 is taken when a0(=[[a0+32]:8+720]:8) == 0 and falls through when a0(=[[a0+32]:8+720]:8) != 0.
  The `beq` at 0x620 is taken when v0(=ret(gfx_flow_am_i_attached)) == 0 and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` at 0x6b0 is taken when a0(=[[a0+32]:8+720]:8) == 0 and falls through when a0(=[[a0+32]:8+720]:8) != 0.
  The `beq` at 0x6c0 is taken when v0(=ret(gfx_flow_am_i_attached)) == 0 and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `jr` at 0x670 returns with v0 = one of 0x0, 0x1, 0xe.

- `odsyPushBufferSelect` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`, 0x790, 544 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x90 into `a7` (`ld` at 0x790).
  Loads 8 bytes from [a0+144]:8 +0x40 into `a5` (`ld` at 0x794).
  Loads 4 bytes from a0 (arg0 at entry) +0x1c8 into `a6` (`lw` at 0x798).
  Loads 8 bytes from [[a0+144]:8+64]:8 +0x20 into `a5` (`ld` at 0x7a8).
  Loads 8 bytes from [a0+144]:8 +0x78 into `t0` (`ld` at 0x7ac).
  Loads 4 bytes from [[a0+144]:8+120]:8 +0x20 into `a4` (`lw` at 0x7b8).
  Loads 8 bytes from [a0+144]:8 +0x78 into `a7` (`ld` at 0x7d0).
  Loads 2 bytes from [[a0+144]:8+120]:8 +0x12 into `at` (`lh` at 0x7dc).
  Stores 4 bytes from `a4` to [[[a0+144]:8+64]:8+32]:8 +0x5590 (`sw` at 0x800).
  Loads 8 bytes from a0 (arg0 at entry) +0x60 into `t0` (`ld` at 0x804).
  Loads 4 bytes from [a0+96]:8 +0x1b24 into `v1` (`lw` at 0x808).
  Stores 4 bytes from `v1` to [[[a0+144]:8+64]:8+32]:8 +0x454c (`sw` at 0x80c).
  Loads 4 bytes from [a0+96]:8 +0x1b28 into `v0` (`lw` at 0x810).
  Stores 4 bytes from `v0` to [[[a0+144]:8+64]:8+32]:8 +0x4550 (`sw` at 0x814).
  Loads 4 bytes from [a0+96]:8 +0x1b2c into `at` (`lw` at 0x818).
  Stores 4 bytes from `at` to [[[a0+144]:8+64]:8+32]:8 +0x4554 (`sw` at 0x81c).
  Loads 4 bytes from [a0+96]:8 +0x1b30 into `t0` (`lw` at 0x824).
  Stores 4 bytes from `t0` to [[[a0+144]:8+64]:8+32]:8 +0x4558 (`sw` at 0x830).
  Stores 4 bytes from `a2` to a1 (arg1 at entry) +0x110000: 5 such accesses, including `sw` at 0x838, 0x860, 0x87c.
  Stores 4 bytes from `v1` to a1 (arg1 at entry) +0x110000 (`sw` at 0x844, 0x880, 0x8c0).
  Stores 4 bytes from `v0` to a1 (arg1 at entry) +0x110000: 14 such accesses, including `sw` at 0x84c, 0x854, 0x86c.
  Stores 4 bytes from `t0` to a1 (arg1 at entry) +0x110000 (`sw` at 0x85c, 0x868, 0x8a4).
  Stores 4 bytes from `at` to a1 (arg1 at entry) +0x110000 (`sw` at 0x894, 0x89c).
  Loads 4 bytes from [[[a0+144]:8+64]:8+32]:8 +0x5590 into `at` (`lw` at 0x898).
  Loads 8 bytes from [a0+144]:8 +0x80 into `a1` (`ld` at 0x8dc).
  Loads 2 bytes from [[a0+144]:8+128]:8 +0x12 into `a2` (`lh` at 0x8e8).
  Loads 4 bytes from a0 (arg0 at entry) +0x40 into `a3` (`lw` at 0x8f8).
  Loads 4 bytes from a0 (arg0 at entry) +0x44 into `at` (`lw` at 0x914).
  Stores 4 bytes from `a3` to a0 (arg0 at entry) +0x40 (`sw` at 0x928).
  Stores 4 bytes from `at` to a0 (arg0 at entry) +0x44 (`sw` at 0x934).
  Stores 8 bytes from `t0` to a1 (arg1 at entry) +0x110000 (`sd` at 0x940).
  Loads 4 bytes from a0 (arg0 at entry) +0x44 into `a3` (`lwu` at 0x944).
  Stores 8 bytes from `a3` to a1 (arg1 at entry) +0x110000 (`sd` at 0x95c).
  The `beq` at 0x7a4 is taken when a7(=[a0+144]:8) == 0 and falls through when a7(=[a0+144]:8) != 0.
  The `beq` at 0x7b0 is taken when t0(=[[a0+144]:8+120]:8) == 0 and falls through when t0(=[[a0+144]:8+120]:8) != 0.
  The `beq` at 0x7c8 is taken when a3(=[a0+144]:8) == 0 and falls through when a3(=[a0+144]:8) != 0.
  The `beq` at 0x7d4 is taken when a7(=[[a0+144]:8+120]:8) == 0 and falls through when a7(=[[a0+144]:8+120]:8) != 0.
  The `beq` at 0x7e0 is taken when at(=[[[a0+144]:8+120]:8+18]:2) == 0 and falls through when at(=[[[a0+144]:8+120]:8+18]:2) != 0.
  The `beq` at 0x7f4 is taken when a4(?) == 0 and falls through when a4(?) != 0.
  The `beq` at 0x8d4 is taken when a3(=[a0+144]:8) == 0 and falls through when a3(=[a0+144]:8) != 0.
  The `beq` at 0x8e0 is taken when a1(=[[a0+144]:8+128]:8) == 0 and falls through when a1(=[[a0+144]:8+128]:8) != 0.
  The `beq` at 0x8ec is taken when a2(=[[[a0+144]:8+128]:8+18]:2) == 0 and falls through when a2(=[[[a0+144]:8+128]:8+18]:2) != 0.
  The `beq` at 0x978 is taken when t0(?) == 0 and falls through when t0(?) != 0.
  The `beq` at 0x980 is taken when t3(?) == 0 and falls through when t3(?) != 0.
  The `beq` at 0x988 is taken when t2(?) == 0 and falls through when t2(?) != 0.
  The `bne` at 0x998 is taken when t3(?) != 0 and falls through when t3(?) == 0.
  The `beq` at 0x9a0 is taken when t2(?) == 0 and falls through when t2(?) != 0.
  The `jr` at 0x958 returns with v0 = one of 0xffffffff80000000, 0x0.

- `gfP_OdsyMakeCurrent` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`, 0x9b0, 784 bytes) Inferred.
  Stores 4 bytes from `zero` to a3 (arg3 at entry) +0x0 (`sw` at 0x9bc).
  Loads 8 bytes from a0 (arg0 at entry) +0x48 into `s1` (`ld` at 0x9c4).
  Loads 8 bytes from [a0+72]:8 +0x70 into `s1` (`ld` at 0x9cc).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `s0` (`ld` at 0x9e8).
  Loads 8 bytes from [a0+32]:8 +0x2d0 into `a0`: 6 such accesses, including `ld` at 0xa1c, 0xb00, 0xb38.
  Loads 8 bytes from [[a0+72]:8+112]:8 +0x168 into `t1` (`ld` at 0xa78).
  Loads 8 bytes from [[a0+72]:8+112]:8 +0x170 into `t0` (`ld` at 0xa80).
  Loads 8 bytes from [[a0+72]:8+112]:8 +0x178 into `a7` (`ld` at 0xa88).
  Loads 8 bytes from [[a0+72]:8+112]:8 +0x180 into `a6` (`ld` at 0xa90).
  Loads 8 bytes from [[a0+72]:8+112]:8 +0x188 into `a4` (`ld` at 0xa98).
  Loads 8 bytes from [[a0+72]:8+112]:8 +0x198 into `a3` (`ld` at 0xaa4).
  Loads 8 bytes from [[a0+72]:8+112]:8 +0x1a0 into `a2` (`ld` at 0xaac).
  Loads 8 bytes from [[a0+72]:8+112]:8 +0x1a8 into `a1` (`ld` at 0xab4).
  Loads 8 bytes from [[a0+72]:8+112]:8 +0x1b0 into `a0` (`ld` at 0xabc).
  Loads 8 bytes from [[a0+72]:8+112]:8 +0x1b8 into `v0` (`ld` at 0xac8).
  Loads 4 bytes from a0 (arg0 at entry) +0x30 into `v0` (`lw` at 0xaf0).
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x30 (`sw` at 0xafc).
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `a3` (`ld` at 0xb1c).
  Stores 4 bytes from `a2` to [a0+32]:8 +0x28a8 (`sw` at 0xb24).
  Stores 4 bytes from `a2` to [[a0+32]:8+736]:8 +0x107c (`sw` at 0xb28).
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `a1` (`ld` at 0xb2c).
  Loads 4 bytes from [[a0+32]:8+736]:8 +0x106c into `a1` (`lw` at 0xb30).
  Loads 4 bytes from a3 (arg3 at entry) +0x0 into `v0` (`lw` at 0xb78).
  Stores 4 bytes from `a4` to a3 (arg3 at entry) +0x0: 4 such accesses, including `sw` at 0xb88, 0xc58, 0xc8c.
  Loads 4 bytes from a0 (arg0 at entry) +0x30 into `a5` (`lw` at 0xbac).
  Stores 4 bytes from `a5` to a0 (arg0 at entry) +0x30 (`sw` at 0xbb4).
  Loads 4 bytes from [a0+32]:8 +0x28a4 into `a6` (`lw` at 0xbf4).
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `v1` (`ld` at 0xc08).
  Stores 4 bytes from `v0` to [a0+32]:8 +0x28a4 (`sw` at 0xc18).
  Stores 4 bytes from `v0` to [[a0+32]:8+736]:8 +0x1074 (`sw` at 0xc1c).
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `at` (`ld` at 0xc24).
  Stores 4 bytes from `zero` to [a0+32]:8 +0x28a8 (`sw` at 0xc28).
  Stores 4 bytes from `zero` to [[a0+32]:8+736]:8 +0x107c (`sw` at 0xc30).
  Calls `copyin` via direct with a0=a2 at entry (arg2), a1=sp-208, a2=0x50, a3=a3 at entry (arg3) (`jal` at 0x9f4).
  Calls `RRM_CheckValidFault` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0xa04).
  Calls `odsy_flow_am_i_attached` via direct with a0=[[a0+32]:8+720]:8, a1=?, a2=?, a3=?, a4=0xe (`jal` at 0xa18).
  Calls `odsyUnbindDrawable` via direct with a0=[a0+32]:8, a1=[[a0+72]:8+112]:8, a2=0x1, a3=? (`jal` at 0xa34).
  Calls `odsyUnbindDrawable` via direct with a0=[a0+32]:8, a1=[[a0+72]:8+112]:8, a2=0x2, a3=? (`jal` at 0xa44).
  Calls `odsyBindDrawable` via direct with a0=[a0+32]:8, a1=[[a0+72]:8+112]:8, a2=0x1, a3=? (`jal` at 0xa58).
  Calls `odsyBindDrawable` via direct with a0=[a0+32]:8, a1=[[a0+72]:8+112]:8, a2=0x2, a3=? (`jal` at 0xa6c).
  Calls `odsyClipPush` via direct with a0=[a0+32]:8, a1=[[a0+72]:8+112]:8, a2=[[[a0+72]:8+112]:8+416]:8, a3=[[[a0+72]:8+112]:8+408]:8, a4=[[[a0+72]:8+112]:8+392]:8, a5=sp-208, a6=[[[a0+72]:8+112]:8+384]:8, a7=[[[a0+72]:8+112]:8+376]:8 (`jal` at 0xad0).
  Calls `splhi` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xae4).
  Calls `gfx_flow_am_i_attached` via direct with a0=[[a0+32]:8+720]:8, a1=?, a2=?, a3=? (`jal` at 0xb0c).
  Calls `gfx_flow_detach_me` via direct with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=0x1, a3=[[a0+32]:8+736]:8 (`jal` at 0xb3c).
  Calls `splx` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xb4c).
  Calls `copyout` via direct with a0=sp-208, a1=a2 at entry (arg2), a2=0x50, a3=? (`jal` at 0xb64).
  Calls `splhi` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xba4).
  Calls `gfx_flow_am_i_attached` via direct with a0=[[a0+32]:8+720]:8, a1=ret(splhi), a2=?, a3=?, a5=([a0+48] | 0x2) (`jal` at 0xbc4).
  Calls `splx` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xbd4).
  Calls `gfx_flow_attach_me` via direct with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=?, a3=? (`jal` at 0xbe8).
  Calls `gfx_flow_credit_tnum_get` via direct with a0=[[a0+32]:8+720]:8, a1=?, a2=?, a3=?, a6=[[a0+32]:8+10404] (`jal` at 0xbf8).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xc4c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0xc80).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0xca4).
  The `beq` at 0x9e4 is taken when s1(=[[a0+72]:8+112]:8) == 0 and falls through when s1(=[[a0+72]:8+112]:8) != 0.
  The `bne` at 0x9fc is taken when v0(=ret(copyin)) != 0 and falls through when v0(=ret(copyin)) == 0.
  The `bltz` at 0xa10 is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed) and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed).
  The `beq` at 0xa24 is taken when v0(=ret(odsy_flow_am_i_attached)) == 0 and falls through when v0(=ret(odsy_flow_am_i_attached)) != 0.
  The `beq` at 0xadc is taken when at(?) == 0 and falls through when at(?) != 0.
  The `beq` at 0xb04 is taken when a0(=[[a0+32]:8+720]:8) == 0 and falls through when a0(=[[a0+32]:8+720]:8) != 0.
  The `beq` at 0xb14 is taken when v0(=ret(gfx_flow_am_i_attached)) == 0 and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `bne` at 0xb70 is taken when v0(=ret(copyout)) != 0 and falls through when v0(=ret(copyout)) == 0.
  The `beq` at 0xbbc is taken when a0(=[[a0+32]:8+720]:8) == 0 and falls through when a0(=[[a0+32]:8+720]:8) != 0.
  The `beq` at 0xbcc is taken when v0(=ret(gfx_flow_am_i_attached)) == 0 and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `jr` at 0xb80 returns with v0 = ?.

- `gfP_OdsyPbufAssoc` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`, 0xcc0, 576 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `s0` (`ld` at 0xcdc).
  Loads 8 bytes from [a0+32]:8 +0x2918 into `a0` (`ld` at 0xd6c, 0xdd0).
  Stores 4 bytes from `t2` to ret(odsyCreateDrawable) +0x24 (`sw` at 0xdac).
  Stores 4 bytes from `t0` to ret(odsyCreateDrawable) +0x20 (`sw` at 0xdb4).
  Stores 8 bytes from `t1` to ret(odsyCreateDrawable) +0x18 (`sd` at 0xdc4).
  Stores 4 bytes from `a4` to a3 (arg3 at entry) +0x0: 4 such accesses, including `sw` at 0xe74, 0xea0, 0xed0.
  Calls `copyin` via direct with a0=a2 at entry (arg2), a1=sp-96, a2=0x8, a3=a3 at entry (arg3) (`jal` at 0xce0).
  Calls `OdsyLookupCSetId` via direct with a0=[a0+32]:8+2232, a1=0x0, a2=?, a3=?, a4=-0x1 (`jal` at 0xd00).
  Calls `OdsyLookupCSetId` via direct with a0=ret(OdsyLookupCSetId)+64, a1=?, a2=?, a3=? (`jal` at 0xd14).
  Calls `mraccessf` via direct with a0=[a0+32]:8+10528, a1=0x0, a2=?, a3=?, a5=0xd (`jal` at 0xd58).
  Calls `odsyHashLookup` via direct with a0=[[a0+32]:8+10520]:8, a1=?, a2=?, a3=? (`jal` at 0xd68).
  Calls `mrunlock` via direct with a0=[a0+32]:8+10528, a1=?, a2=?, a3=? (`jal` at 0xd80).
  Calls `odsyCreateDrawable` via direct with a0=[a0+32]:8, a1=?, a2=?, a3=? (`jal` at 0xd98).
  Calls `mrtrypromote` via direct with a0=[a0+32]:8+10528, a1=?, a2=?, a3=? (`jal` at 0xdc0).
  Calls `odsyHashInsert` via direct with a0=[[a0+32]:8+10520]:8, a1=?, a2=ret(odsyCreateDrawable), a3=? (`jal` at 0xdd4).
  Calls `mrunlock` via direct with a0=[a0+32]:8+10528, a1=?, a2=?, a3=? (`jal` at 0xde8).
  Calls `mrunlock` via direct with a0=[a0+32]:8+10528, a1=?, a2=?, a3=? (`jal` at 0xe10).
  Calls `mrunlock` via direct with a0=[a0+32]:8+10528, a1=?, a2=?, a3=? (`jal` at 0xe34).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0xe58).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a4=-0x1 (`jal` at 0xe84).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0xeb4).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0xee0).
  The `bne` at 0xce8 is taken when v0(=ret(copyin)) != 0 and falls through when v0(=ret(copyin)) == 0.
  The `beq` at 0xcf4 is taken when v1(?) == a4(=-0x1) and falls through when v1(?) != a4(=-0x1).
  The `beq` at 0xd08 is taken when v0(=ret(OdsyLookupCSetId)) == 0 and falls through when v0(=ret(OdsyLookupCSetId)) != 0.
  The `beq` at 0xd20 is taken when v0(=ret(OdsyLookupCSetId)) == 0 and falls through when v0(=ret(OdsyLookupCSetId)) != 0.
  The `beq` at 0xd70 is taken when v0(=ret(odsyHashLookup)) == 0 and falls through when v0(=ret(odsyHashLookup)) != 0.
  The `beq` at 0xda0 is taken when v0(=ret(odsyCreateDrawable)) == 0 and falls through when v0(=ret(odsyCreateDrawable)) != 0.
  The `beq` at 0xdc8 is taken when v0(=ret(mrtrypromote)) == 0 and falls through when v0(=ret(mrtrypromote)) != 0.
  The `jr` at 0xdfc returns with v0 = ?.

- `gfP_OdsyPbufDeassoc` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`, 0xf00, 456 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `s0` (`ld` at 0xf08).
  Loads 8 bytes from [a0+32]:8 +0x2918 into `a0` (`ld` at 0xf78).
  Loads 8 bytes from ret(odsyHashLookup) +0x18 into `v0` (`ld` at 0xf84).
  Loads 4 bytes from [ret(odsyHashLookup)+24]:8 +0x0 into `a2` (`lw` at 0xf90).
  Loads 4 bytes from ret(odsyHashLookup) +0x20 into `a5` (`lw` at 0xfb0).
  Stores 4 bytes from `a4` to ret(odsyHashLookup) +0x24 (`sw` at 0xfbc).
  Stores 4 bytes from `a4` to a3 (arg3 at entry) +0x0 (`sw` at 0x1074, 0x10c4).
  Calls `copyin` via direct with a0=a2 at entry (arg2), a1=sp-96, a2=0x8, a3=a3 at entry (arg3) (`jal` at 0xf24).
  Calls `mraccessf` via direct with a0=[a0+32]:8+10528, a1=0x0, a2=?, a3=? (`jal` at 0xf60).
  Calls `odsyHashLookup` via direct with a0=[[a0+32]:8+10520]:8, a1=?, a2=?, a3=? (`jal` at 0xf74).
  Calls `mrtrypromote` via direct with a0=[a0+32]:8+10528, a1=?, a2=[[ret(odsyHashLookup)+24]:8], a3=? (`jal` at 0xf98).
  Calls `odsyHashRemove` via direct with a0=ret(odsyHashLookup), a1=?, a2=?, a3=? (`jal` at 0xfa8).
  Calls `mrunlock` via direct with a0=[a0+32]:8+10528, a1=?, a2=?, a3=? (`jal` at 0xfc8).
  Calls `copyout` via direct with a0=sp-96, a1=a2 at entry (arg2), a2=0x8, a3=? (`jal` at 0xfdc).
  Calls `mrunlock` via direct with a0=[a0+32]:8+10528, a1=?, a2=?, a3=? (`jal` at 0x1000).
  Calls `mrunlock` via direct with a0=[a0+32]:8+10528, a1=?, a2=?, a3=? (`jal` at 0x1020).
  Calls `odsyDestroyDrawable` via direct with a0=[a0+32]:8, a1=ret(odsyHashLookup), a2=?, a3=?, a4=0x1, a5=[ret(odsyHashLookup)+32] (`jal` at 0x103c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x1058).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x108c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x10a8).
  The `bne` at 0xf2c is taken when v0(=ret(copyin)) != 0 and falls through when v0(=ret(copyin)) == 0.
  The `beq` at 0xf7c is taken when v0(=ret(odsyHashLookup)) == 0 and falls through when v0(=ret(odsyHashLookup)) != 0.
  The `beq` at 0xf88 is taken when v0(=[ret(odsyHashLookup)+24]:8) == 0 and falls through when v0(=[ret(odsyHashLookup)+24]:8) != 0.
  The `beq` at 0xfa0 is taken when v0(=ret(mrtrypromote)) == 0 and falls through when v0(=ret(mrtrypromote)) != 0.
  The `beq` at 0xfb8 is taken when a5(=[ret(odsyHashLookup)+32]) == 0 and falls through when a5(=[ret(odsyHashLookup)+32]) != 0.
  The `bne` at 0xfe4 is taken when v0(=ret(copyout)) != 0 and falls through when v0(=ret(copyout)) == 0.
  The `jr` at 0xff0 returns with v0 = one of 0x0, 0xd, 0xe, 0x16.

- `odsy_poll_dfifo_level` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)`, 0x0, 156 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x106c into `s5` (`lw` at 0x24).
  Calls `us_delay` via direct with a0=0x5, a1=?, a2=?, a3=? (`jal` at 0x38).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x88).
  The `beq` at 0x30 is taken when s4(=a1) >= s5(?) (unsigned) and falls through when s4(=a1) < s5(?) (unsigned).
  The `beq` at 0x40 is taken when s5(?) == 0 and falls through when s5(?) != 0.
  The `bne` at 0x48 is taken when at(?) != 0 and falls through when at(?) == 0.
  The `bne` at 0x50 is taken when s5(?) != 0 and falls through when s5(?) == 0.
  The `jr` at 0x6c returns with v0 = one of 0x0, 0x1.

- `odsy_flow_am_i_attached` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)`, 0x9c, 64 bytes) Inferred.
  Calls `splhi` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xa8).
  Calls `gfx_flow_am_i_attached` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0xb4).
  Calls `splx` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xc0).
  The `jr` at 0xd4 returns with v0 = ret(gfx_flow_am_i_attached).

- `odsyHiwaterInterrupt` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)`, 0xdc, 464 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `at` (`ld` at 0xdc, 0x1f8).
  Loads 4 bytes from a0 (arg0 at entry) +0x68 into `v0` (`lw` at 0x114).
  Loads 8 bytes from a0 (arg0 at entry) +0x2d0 into `a0` (`ld` at 0x144, 0x164, 0x170).
  Loads 4 bytes from a0 (arg0 at entry) +0x2d8 into `a2` (`lw` at 0x148).
  Loads 2 bytes from abs 0xffffffffffffc3a0 into `a6` (`lh` at 0x194).
  Loads 4 bytes from ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0x18 into `a4` (`lw` at 0x1a4).
  Stores 4 bytes from `a4` to ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0x18 (`sw` at 0x1b0).
  Stores 4 bytes from `t1` to a0 (arg0 at entry) +0x68 (`sw` at 0x1b8).
  Loads 8 bytes from a0 (arg0 at entry) +0x48 into `t0` (`ld` at 0x1bc).
  Loads 8 bytes from [a0+72]:8 +0x20 into `t0` (`ld` at 0x1c0).
  Loads 4 bytes from [[a0+72]:8+32]:8 +0x50 into `a7` (`lw` at 0x1c8).
  Stores 4 bytes from `a7` to [[a0+72]:8+32]:8 +0x50 (`sw` at 0x1d8).
  Stores 4 bytes from `t2` to a0 (arg0 at entry) +0x78 (`sw` at 0x1ec).
  Stores 4 bytes from `v0` to ? (base unknown) (`sw` at 0x1f4, 0x218, 0x234).
  Loads 4 bytes from [a0+736]:8 +0x1064 into `at` (`lw` at 0x200).
  Loads 4 bytes from a0 (arg0 at entry) +0x2890 into `v1` (`lw` at 0x21c).
  Stores 4 bytes from `v1` to a0 (arg0 at entry) +0x2890 (`sw` at 0x228).
  Loads 2 bytes from abs 0xffffffffffffc3a0 into `a2` (`lh` at 0x240).
  Loads 4 bytes from ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0x1c into `a0` (`lw` at 0x250).
  Stores 4 bytes from `a0` to ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0x1c (`sw` at 0x25c).
  Calls `mutex_spinlock` via direct with a0=a0+22260, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x100).
  Calls `mutex_spinunlock` via direct with a0=a0+22260, a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0x120).
  Calls `gfx_flow_pipe_head` via direct with a0=[a0+720]:8, a1=?, a2=?, a3=? (`jal` at 0x140).
  Calls `gfx_waitf_on` via direct with a0=?, a1=?, a2=[a0+728], a3=? (`jal` at 0x154).
  Calls `gfx_flow_credit_count_get` via direct with a0=[a0+720]:8, a1=?, a2=?, a3=? (`jal` at 0x160).
  Calls `gfx_flow_credit_bias_get` via direct with a0=[a0+720]:8, a1=?, a2=?, a3=? (`jal` at 0x16c).
  Calls `us_delay` via direct with a0=0x1, a1=?, a2=?, a3=? (`jal` at 0x180).
  Calls `gfx_waitf_off` via direct with a0=?, a1=?, a2=?, a3=?, a4=[([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5))+24]+1, a5=([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)), a6=([-0x3c60]:2 << 0x5) (`jal` at 0x1ac).
  Calls `force_resched` via direct with a0=?, a1=?, a2=?, a3=?, a7=[[[a0+72]:8+32]:8+80]+1 (`jal` at 0x1d4).
  Calls `odsyFifoTimer` via direct with a0=a0 at entry (arg0), a1=0x1, a2=?, a3=? (`jal` at 0x1e8).
  Calls `mutex_spinunlock` via direct with a0=a0+22260, a1=?, a2=?, a3=? (`jal` at 0x230).
  Calls `gfx_waitf_off` via direct with a0=[([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5))+28]+1, a1=([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)), a2=([-0x3c60]:2 << 0x5), a3=? (`jal` at 0x258).
  Calls `mutex_spinunlock` via direct with a0=a0+22260, a1=?, a2=?, a3=? (`jal` at 0x26c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=[a0+728], a3=? (`jal` at 0x284).
  Calls `heart_flow_control_disable` via direct with a0=ret(gfx_flow_pipe_head), a1=?, a2=?, a3=? (`jal` at 0x28c).
  Calls `mutex_spinunlock` via direct with a0=a0+22260, a1=?, a2=?, a3=? (`jal` at 0x29c).
  The `beq` at 0x118 is taken when v0(=[a0+104]) == 0 and falls through when v0(=[a0+104]) != 0.
  The `bne` at 0x14c is taken when a2(=[a0+728]) != 0 and falls through when a2(=[a0+728]) == 0.
  The `beq` at 0x178 is taken when s1(=ret(gfx_flow_credit_count_get)) >= v0(=ret(gfx_flow_credit_bias_get)) (unsigned) and falls through when s1(=ret(gfx_flow_credit_count_get)) < v0(=ret(gfx_flow_credit_bias_get)) (unsigned).
  The `bgtz` at 0x18c is taken when s2(?) > 0 (signed) and falls through when s2(?) <= 0 (signed).
  The `beq` at 0x210 is taken when at(?) == 0 and falls through when at(?) != 0.
  The `jr` at 0x138 returns with v0 = ret(mutex_spinunlock).

- `odsyLowaterInterrupt` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)`, 0x2ac, 128 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `s8` (`ld` at 0x2c0).
  Loads 4 bytes from a0 (arg0 at entry) +0x2890 into `a0` (`lw` at 0x2cc).
  Stores 4 bytes from `a0` to a0 (arg0 at entry) +0x2890 (`sw` at 0x2d8).
  Stores 4 bytes from `v1` to [a0+736]:8 +0x103c (`sw` at 0x2e0).
  Loads 8 bytes from a0 (arg0 at entry) +0x48 into `v0` (`ld` at 0x2e4).
  Loads 8 bytes from [a0+72]:8 +0x20 into `v0` (`ld` at 0x2e8).
  Loads 4 bytes from [[a0+72]:8+32]:8 +0x50 into `at` (`lw` at 0x2ec).
  Stores 4 bytes from `at` to [[a0+72]:8+32]:8 +0x50 (`sw` at 0x300).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x68 (`sw` at 0x304).
  Calls `odsyFifoTimer` via direct with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2c4).
  Calls `mutex_spinlock` via direct with a0=a0+22260, a1=-0x201, a2=?, a3=? (`jal` at 0x2fc).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0x310).
  Calls `force_resched` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x318).
  The `jr` at 0x324 returns with v0 = ret(force_resched).
- `odsyFifoTimer` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)`, 0x32c, 100 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x56f8 into `a4` (`lw` at 0x338).
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x56f8 (`sw` at 0x36c).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x56f8 (`sw` at 0x38c).
  Calls `timeout` via direct with a0=sym(odsyFifoTimeout), a1=a0 at entry (arg0), a2=0x5dc, a3=a0 at entry (arg0), a4=[a0+22264] (`jal` at 0x358).
  Calls `untimeout` via direct with a0=[a0+22264], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a0 at entry (arg0), a4=[a0+22264] (`jal` at 0x378).
  The `beq` at 0x334 is taken when a1 == 0 and falls through when a1 != 0.
  The `beq` at 0x33c is taken when a4(=[a0+22264]) == 0 and falls through when a4(=[a0+22264]) != 0.
  The `jr` at 0x344 returns with v0 = ?.

- `odsyFifoTimeout` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)`, 0x390, 88 bytes) Inferred.
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x68 (`sw` at 0x3a4).
  Loads 8 bytes from a0 (arg0 at entry) +0x48 into `v0` (`ld` at 0x3b0).
  Loads 8 bytes from [a0+72]:8 +0x20 into `v0` (`ld` at 0x3b4).
  Loads 4 bytes from [[a0+72]:8+32]:8 +0x50 into `at` (`lw` at 0x3bc).
  Stores 4 bytes from `at` to [[a0+72]:8+32]:8 +0x50 (`sw` at 0x3d0).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x56f8 (`sw` at 0x3d8).
  Calls `odsy_teardown` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x39c).
  Calls `odsyDisableInterrupts` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x3a8).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x3cc).
  The `jr` at 0x3e0 returns with v0 = ret(cmn_err).

- `odsy_i2c_start` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`, 0x0, 3392 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a5`: 34 such accesses, including `ld` at 0x4, 0x3c, 0x78.
  Loads 4 bytes from [a0+16]:8 +0x5720 into `at`: 4 such accesses, including `lw` at 0xc, 0xcc, 0x1c4.
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `a0`: 9 such accesses, including `ld` at 0x2c, 0xdc, 0x12c.
  Loads 4 bytes from [a0+16]:8 +0x5720 into `v1` (`lw` at 0x40, 0xec).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `at`: 5 such accesses, including `ld` at 0x58, 0x160, 0x43c.
  Loads 4 bytes from [a0]:8 +0x0 into `a5`: 4 such accesses, including `lw` at 0x5c, 0x164, 0x470.
  Stores 4 bytes from `a5` to [a0]:8 +0x0: 5 such accesses, including `sw` at 0x64, 0x170, 0x448.
  Loads 2 bytes from a0 (arg0 at entry) +0x18 into `at` (`lhu` at 0x6c).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `a4` (`ld` at 0x70, 0x48c).
  Loads 4 bytes from [a0]:8 +0x0 into `a4` (`lwu` at 0x84).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `a5` (`ld` at 0x8c, 0x314).
  Stores 8 bytes from `a4` to [[a0+16]:8+736]:8 +0x400000 (`sd` at 0xac, 0x324).
  Loads 4 bytes from [a0+16]:8 +0x5720 into `a3` (`lw` at 0xb4, 0x1dc).
  Loads 8 bytes from [a0+16]:8 +0x2828 into `a3`: 8 such accesses, including `ld` at 0x10c, 0x240, 0x56c.
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a0`: 36 such accesses, including `ld` at 0x120, 0x138, 0x21c.
  Loads 2 bytes from a0 (arg0 at entry) +0x18 into `a4` (`lhu` at 0x174, 0x4b0).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `v1` (`ld` at 0x184, 0x44c, 0x4c0).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a3`: 17 such accesses, including `ld` at 0x18c, 0x390, 0x4c8.
  Loads 4 bytes from [a0]:8 +0x0 into `v1` (`lwu` at 0x198, 0x4d4).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `a3`: 9 such accesses, including `ld` at 0x1a8, 0x4e4, 0x5f8.
  Stores 8 bytes from `v1` to [[a0+16]:8+736]:8 +0x400000: 9 such accesses, including `sd` at 0x1bc, 0x4f8, 0x610.
  Loads 4 bytes from [a0+16]:8 +0x5720 into `a4` (`lw` at 0x1fc).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a0`: 6 such accesses, including `lw` at 0x294, 0x5c0, 0x7a4.
  Loads 2 bytes from [a0+16]:8 +0x2830 into `a2` (`lhu` at 0x298, 0x5c4, 0x8e8).
  Stores 4 bytes from `a6` to [a0+16]:8 +0x55f0 (`sw` at 0x2bc).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a4`: 8 such accesses, including `ld` at 0x2c0, 0x2e8, 0x380.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a3` (`lwu` at 0x2c8).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `a4`: 4 such accesses, including `ld` at 0x2cc, 0x840, 0xb4c.
  Stores 8 bytes from `a3` to [[a0+16]:8+736]:8 +0x400000: 4 such accesses, including `sd` at 0x2e4, 0x858, 0xb64.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a3`: 7 such accesses, including `lw` at 0x2ec, 0x384, 0x6b4.
  Loads 2 bytes from [a0+16]:8 +0x2830 into `a5` (`lhu` at 0x2f8).
  Stores 4 bytes from `a3` to [a0+16]:8 +0x55f0: 7 such accesses, including `sw` at 0x308, 0x38c, 0x6bc.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a4` (`lwu` at 0x310).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `v1`: 7 such accesses, including `ld` at 0x32c, 0x364, 0x428.
  Loads 8 bytes from [a0+16]:8 +0x2828 into `at` (`ld` at 0x334, 0x664, 0x988).
  Stores 8 bytes from `at` to [[a0+16]:8+736]:8 +0x400000: 6 such accesses, including `sd` at 0x344, 0x37c, 0x674.
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `at`: 12 such accesses, including `ld` at 0x348, 0x678, 0x7d0.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a4` (`lw` at 0x34c, 0x67c, 0x9a0).
  Stores 4 bytes from `a4` to [a0+16]:8 +0x55f0: 5 such accesses, including `sw` at 0x354, 0x5e8, 0x684.
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `v1`: 6 such accesses, including `ld` at 0x358, 0x688, 0x85c.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `at` (`lwu` at 0x360, 0x690, 0x9b4).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a2`: 6 such accesses, including `lw` at 0x394, 0x6c4, 0x8a8.
  Stores 4 bytes from `a2` to [a0+16]:8 +0x55f0: 6 such accesses, including `sw` at 0x39c, 0x6cc, 0x8b0.
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a1`: 6 such accesses, including `ld` at 0x3a0, 0x6d0, 0x8b4.
  Stores 8 bytes from `zero` to [a0+16]:8 +0x2828: 6 such accesses, including `sd` at 0x3a4, 0x6d4, 0x8b8.
  Loads 8 bytes from [a0+16]:8 +0x2828 into `a4` (`ld` at 0x3cc).
  Loads 2 bytes from a0 (arg0 at entry) +0x18 into `a3` (`lhu` at 0x424).
  Loads 4 bytes from ([[a0+16]:8+736]:8 + (([a0+24]:2 + [a0+24]:2) << 0x2)) +0x220000 into `a5` (`lw` at 0x444).
  Loads 4 bytes from [a0]:8 +0x0 into `at` (`lw` at 0x454).
  Stores 4 bytes from `at` to [a0]:8 +0x0 (`sw` at 0x468).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `a5`: 4 such accesses, including `ld` at 0x47c, 0x50c, 0xa80.
  Loads 4 bytes from [a0]:8 +0x0 into `a4` (`lw` at 0x480, 0x510).
  Stores 4 bytes from `a4` to [a0]:8 +0x0 (`sw` at 0x488, 0x524).
  Loads 4 bytes from [a0]:8 +0x0 into `a3` (`lw` at 0x490).
  Stores 4 bytes from `a3` to [a0]:8 +0x0 (`sw` at 0x498).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `v1`: 7 such accesses, including `lwu` at 0x5f4, 0x640, 0x874.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `v1` (`lw` at 0x618, 0x93c).
  Loads 2 bytes from [a0+16]:8 +0x2830 into `at` (`lhu` at 0x624, 0x948).
  Stores 4 bytes from `v1` to [a0+16]:8 +0x55f0: 5 such accesses, including `sw` at 0x634, 0x7cc, 0x958.
  Loads 2 bytes from [a0+16]:8 +0x2830 into `a7` (`lhu` at 0x7a8, 0xab4, 0xc14).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a5`: 6 such accesses, including `lwu` at 0x7d8, 0x824, 0xae4.
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `at`: 6 such accesses, including `ld` at 0x7dc, 0x828, 0xae8.
  Stores 8 bytes from `a5` to [[a0+16]:8+736]:8 +0x400000: 6 such accesses, including `sd` at 0x7f4, 0x838, 0xb00.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a5` (`lw` at 0x7fc, 0xb08, 0xc68).
  Loads 2 bytes from [a0+16]:8 +0x2830 into `a4` (`lhu` at 0x808, 0xb14, 0xc74).
  Stores 4 bytes from `a5` to [a0+16]:8 +0x55f0 (`sw` at 0x818, 0xb24, 0xc84).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `at` (`lw` at 0x860, 0xb6c, 0xccc).
  Stores 4 bytes from `at` to [a0+16]:8 +0x55f0 (`sw` at 0x868, 0xb74, 0xcd4).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xe, a2=?, a3=?, a5=[a0+16]:8 (`jal` at 0x28).
  Calls `odsy_usdelay` via direct with a0=[a0+16]:8, a1=0xa, a2=?, a3=?, a5=[a0+16]:8 (`jal` at 0xc0).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a5=[a0+16]:8 (`jal` at 0xd8).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a5=[a0+16]:8 (`jal` at 0x100).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[[a0+16]:8+10280]:8, a5=[a0+16]:8 (`jal` at 0x118).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x128).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x13c).
  Calls `psema` via direct with a0=[a0+16]:8+10256, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[a0+16]:8 (`jal` at 0x150).
  Calls `odsy_usdelay` via direct with a0=[a0+16]:8, a1=0xa, a2=?, a3=?, a5=[a0+16]:8 (`jal` at 0x1d0).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xe, a2=?, a3=?, a5=[a0+16]:8 (`jal` at 0x1e8).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=[[a0+16]:8+10280]:8, a5=[a0+16]:8 (`jal` at 0x214).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x224).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a5=[a0+16]:8 (`jal` at 0x234).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[[a0+16]:8+10280]:8, a5=[a0+16]:8 (`jal` at 0x250).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x260).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x274).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x288).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=[a0+16]:8, a6=-0x2 (`jal` at 0x3b0).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=[[a0+16]:8+22304], a5=[a0+16]:8 (`jal` at 0x3c0).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a5=[a0+16]:8 (`jal` at 0x3dc).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x3ec).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x400).
  Calls `psema` via direct with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=?, a5=[a0+16]:8 (`jal` at 0x414).
  Calls `odsy_i2c_xfer_done_loop` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0]:8, a6=-0x101 (`jal` at 0x520).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=[[a0+16]:8+10280]:8, a5=[a0+16]:8 (`jal` at 0x540).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x550).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=[[a0+16]:8+22304], a5=[a0+16]:8 (`jal` at 0x560).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[[a0+16]:8+10280]:8, a5=[a0+16]:8 (`jal` at 0x57c).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x58c).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x5a0).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x5b4).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=[a0+16]:8, a6=-0x2 (`jal` at 0x6e0).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a5=[a0+16]:8 (`jal` at 0x6f0).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x700).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=[[a0+16]:8+736]:8+0x400000, a5=[a0+16]:8 (`jal` at 0x710).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[[a0+16]:8+10280]:8, a5=[a0+16]:8 (`jal` at 0x72c).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x73c).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x750).
  Calls `psema` via direct with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=[[a0+16]:8+22304], a5=[a0+16]:8 (`jal` at 0x764).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=[[a0+16]:8+10280]:8, a5=[a0+16]:8 (`jal` at 0x774).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x784).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x798).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=[a0+16]:8, a6=-0x2 (`jal` at 0x8c4).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x8d8).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=[a0+16]:8, a6=-0x2 (`jal` at 0xa04).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=[[a0+16]:8+10280]:8, a5=[a0+16]:8 (`jal` at 0xa14).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0xa24).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=[[a0+16]:8+736]:8+0x400000, a5=[a0+16]:8 (`jal` at 0xa34).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[[a0+16]:8+10280]:8, a5=[a0+16]:8 (`jal` at 0xa50).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0xa60).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0xa74).
  Calls `odsy_i2c_recv_ack` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0xa8c).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0xaa4).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=[a0+16]:8, a6=-0x2 (`jal` at 0xbd0).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=[[a0+16]:8+10280]:8, a5=[a0+16]:8 (`jal` at 0xbe0).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0xbf0).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0xc04).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=[a0+16]:8, a6=-0x2 (`jal` at 0xd30).
  The `beq` at 0x1c is taken when at(=[[a0+16]:8+22304]) == 0 and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x34 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x44 is taken when v1(=[[a0+16]:8+22304]) == 0 and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0xb8 is taken when a3(=[[a0+16]:8+22304]) == 0 and falls through when a3(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0xd0 is taken when at(=[[a0+16]:8+22304]) == 0 and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0xe0 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0xf0 is taken when v1(=[[a0+16]:8+22304]) == 0 and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x110 is taken when a3(=[[a0+16]:8+10280]:8) == 0 and falls through when a3(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x130 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x1c8 is taken when at(=[[a0+16]:8+22304]) == 0 and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x1e0 is taken when a3(=[[a0+16]:8+22304]) == 0 and falls through when a3(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x1f4 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x200 is taken when a4(=[[a0+16]:8+22304]) == 0 and falls through when a4(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x244 is taken when a3(=[[a0+16]:8+10280]:8) == 0 and falls through when a3(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x268 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x2ac is taken when 0 >= a2(?) (unsigned) and falls through when 0 < a2(?) (unsigned).
  The `beq` at 0x340 is taken when a2(?) == 0 and falls through when a2(?) != 0.
  The `beq` at 0x3d0 is taken when a4(=[[a0+16]:8+10280]:8) == 0 and falls through when a4(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x3f4 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x504 is taken when at(=[[a0+16]:8+22304]) == 0 and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x52c is taken when v0(=ret(odsy_i2c_xfer_done_loop)) == 0 and falls through when v0(=ret(odsy_i2c_xfer_done_loop)) != 0.
  The `beq` at 0x570 is taken when a3(=[[a0+16]:8+10280]:8) == 0 and falls through when a3(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x594 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x5d8 is taken when 0 >= a2(?) (unsigned) and falls through when 0 < a2(?) (unsigned).
  The `beq` at 0x670 is taken when a2(?) == 0 and falls through when a2(?) != 0.
  The `beq` at 0x720 is taken when a3(=[[a0+16]:8+10280]:8) == 0 and falls through when a3(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x744 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x7bc is taken when 0 >= a7(?) (unsigned) and falls through when 0 < a7(?) (unsigned).
  The `beq` at 0x854 is taken when a7(?) == 0 and falls through when a7(?) != 0.
  The `beq` at 0x8fc is taken when 0 >= a2(?) (unsigned) and falls through when 0 < a2(?) (unsigned).
  The `beq` at 0x994 is taken when a2(?) == 0 and falls through when a2(?) != 0.
  The `beq` at 0xa44 is taken when a3(=[[a0+16]:8+10280]:8) == 0 and falls through when a3(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0xa68 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0xac8 is taken when 0 >= a7(?) (unsigned) and falls through when 0 < a7(?) (unsigned).
  The `beq` at 0xb60 is taken when a7(?) == 0 and falls through when a7(?) != 0.
  The `beq` at 0xc28 is taken when 0 >= a7(?) (unsigned) and falls through when 0 < a7(?) (unsigned).
  The `beq` at 0xcc0 is taken when a7(?) == 0 and falls through when a7(?) != 0.
  The `jr` at 0x50 returns with v0 = ?.

- `odsy_i2c_stop` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`, 0xd40, 2164 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a4`: 26 such accesses, including `ld` at 0xd40, 0xd74, 0xdc4.
  Loads 4 bytes from [a0+16]:8 +0x5720 into `at` (`lw` at 0xd44, 0xeb4).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `a0`: 6 such accesses, including `ld` at 0xd64, 0xe54, 0xea4.
  Loads 4 bytes from [a0+16]:8 +0x5720 into `v1` (`lw` at 0xd78).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `a3` (`ld` at 0xd90, 0xdbc, 0xe88).
  Loads 4 bytes from [a0]:8 +0x0 into `a2` (`lw` at 0xd94).
  Stores 4 bytes from `a2` to [a0]:8 +0x0 (`sw` at 0xd9c).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `at` (`ld` at 0xda0).
  Loads 4 bytes from [a0]:8 +0x0 into `a4` (`lw` at 0xda4).
  Stores 4 bytes from `a4` to [a0]:8 +0x0 (`sw` at 0xdac).
  Loads 2 bytes from a0 (arg0 at entry) +0x18 into `at` (`lhu` at 0xdb4).
  Loads 4 bytes from [a0]:8 +0x0 into `a3` (`lwu` at 0xdd0).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `a4` (`ld` at 0xdd8, 0xf7c, 0x107c).
  Stores 8 bytes from `a3` to [[a0+16]:8+736]:8 +0x400000 (`sd` at 0xdf8, 0xf8c).
  Loads 4 bytes from [a0+16]:8 +0x5720 into `a2` (`lw` at 0xe00, 0xe94, 0x10a4).
  Loads 8 bytes from [a0+16]:8 +0x2828 into `a3` (`ld` at 0xe34).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a0`: 24 such accesses, including `ld` at 0xe48, 0xe60, 0xed4.
  Stores 4 bytes from `zero` to [a0]:8 +0x0 (`sw` at 0xe8c).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a5`: 4 such accesses, including `lw` at 0xefc, 0x1194, 0x12d4.
  Loads 2 bytes from [a0+16]:8 +0x2830 into `a0`: 4 such accesses, including `lhu` at 0xf00, 0x1198, 0x12d8.
  Stores 4 bytes from `a6` to [a0+16]:8 +0x55f0 (`sw` at 0xf24).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a3`: 6 such accesses, including `ld` at 0xf28, 0xf50, 0xff8.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a2` (`lwu` at 0xf30).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `a3` (`ld` at 0xf34).
  Stores 8 bytes from `a2` to [[a0+16]:8+736]:8 +0x400000 (`sd` at 0xf4c).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a2`: 5 such accesses, including `lw` at 0xf54, 0xffc, 0x1298.
  Loads 2 bytes from [a0+16]:8 +0x2830 into `a4` (`lhu` at 0xf60).
  Stores 4 bytes from `a2` to [a0+16]:8 +0x55f0: 5 such accesses, including `sw` at 0xf70, 0x1004, 0x12a0.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a3` (`lwu` at 0xf78).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `v1`: 8 such accesses, including `ld` at 0xf94, 0xfcc, 0x1230.
  Loads 8 bytes from [a0+16]:8 +0x2828 into `at`: 6 such accesses, including `ld` at 0xf9c, 0x1034, 0x1238.
  Stores 8 bytes from `at` to [[a0+16]:8+736]:8 +0x400000: 8 such accesses, including `sd` at 0xfac, 0xfe4, 0x1248.
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `at`: 4 such accesses, including `ld` at 0xfb0, 0x124c, 0x138c.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a3`: 8 such accesses, including `lw` at 0xfb4, 0xfec, 0x1250.
  Stores 4 bytes from `a3` to [a0+16]:8 +0x55f0: 11 such accesses, including `sw` at 0xfbc, 0xff4, 0x11bc.
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `v1`: 4 such accesses, including `ld` at 0xfc0, 0x125c, 0x139c.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `at`: 4 such accesses, including `lwu` at 0xfc8, 0x1264, 0x13a4.
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a1`: 4 such accesses, including `ld` at 0x1008, 0x12a4, 0x13e4.
  Stores 8 bytes from `zero` to [a0+16]:8 +0x2828: 4 such accesses, including `sd` at 0x100c, 0x12a8, 0x13e8.
  Loads 2 bytes from a0 (arg0 at entry) +0x1a into `at` (`lhu` at 0x1078).
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `a4` (`ld` at 0x1094).
  Loads 4 bytes from ([[a0+16]:8+736]:8 + (([a0+26]:2 + [a0+26]:2) << 0x2)) +0x220000 into `a3` (`lw` at 0x1098).
  Stores 4 bytes from `a3` to [a0+8]:8 +0x0 (`sw` at 0x109c).
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `v1` (`ld` at 0x10b0).
  Loads 4 bytes from [a0+8]:8 +0x0 into `v1` (`lw` at 0x10b4).
  Loads 8 bytes from [a0+16]:8 +0x2828 into `a2` (`ld` at 0x10e4).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a2`: 9 such accesses, including `ld` at 0x11c0, 0x11e8, 0x120c.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `v1`: 6 such accesses, including `lwu` at 0x11c8, 0x1214, 0x1308.
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `a2`: 6 such accesses, including `ld` at 0x11cc, 0x1218, 0x130c.
  Stores 8 bytes from `v1` to [[a0+16]:8+736]:8 +0x400000: 6 such accesses, including `sd` at 0x11e4, 0x1228, 0x1324.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `v1` (`lw` at 0x11ec, 0x132c, 0x14dc).
  Loads 2 bytes from [a0+16]:8 +0x2830 into `at` (`lhu` at 0x11f8, 0x1338, 0x14e8).
  Stores 4 bytes from `v1` to [a0+16]:8 +0x55f0 (`sw` at 0x1208, 0x1348, 0x14f8).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a4=[a0+16]:8 (`jal` at 0xd60).
  Calls `odsy_i2c_xfer_done_loop` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0xe0c).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=[a0+16]:8 (`jal` at 0xe28).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[[a0+16]:8+10280]:8, a4=[a0+16]:8 (`jal` at 0xe40).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0xe50).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0xe64).
  Calls `psema` via direct with a0=[a0+16]:8+10256, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[a0+16]:8 (`jal` at 0xe78).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a4=[a0+16]:8 (`jal` at 0xea0).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=[[a0+16]:8+10280]:8, a4=[a0+16]:8 (`jal` at 0xecc).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0xedc).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0xef0).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=-0x2 (`jal` at 0x1018).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=[[a0+16]:8+22304], a3=?, a4=[a0+16]:8 (`jal` at 0x1028).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[a0+16]:8 (`jal` at 0x1044).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x1054).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x1068).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=[a0+16]:8 (`jal` at 0x10d8).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=[[a0+16]:8+10280]:8, a3=?, a4=[a0+16]:8 (`jal` at 0x10f4).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x1104).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x1118).
  Calls `psema` via direct with a0=[a0+16]:8+10256, a1=0x19, a2=[[a0+16]:8+22304], a3=[a0]:8, a4=[a0+16]:8 (`jal` at 0x112c).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[a0+16]:8 (`jal` at 0x113c).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x114c).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=[[a0+16]:8+10280]:8, a3=?, a4=[a0+16]:8 (`jal` at 0x1164).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x1174).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x1188).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=-0x2 (`jal` at 0x12b4).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x12c8).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=-0x2 (`jal` at 0x13f4).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=[[a0+16]:8+22304], a3=[([[a0+16]:8+736]:8 + (([a0+26]:2 + [a0+26]:2) << 0x2))+2228224], a4=[a0+16]:8 (`jal` at 0x1404).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[a0+16]:8 (`jal` at 0x1420).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x1430).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x1444).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[a0+16]:8 (`jal` at 0x1454).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x1464).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x1478).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=-0x2 (`jal` at 0x15a4).
  The `beq` at 0xd54 is taken when at(=[[a0+16]:8+22304]) == 0 and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0xd6c is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0xd7c is taken when v1(=[[a0+16]:8+22304]) == 0 and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0xe04 is taken when a2(=[[a0+16]:8+22304]) == 0 and falls through when a2(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0xe18 is taken when v0(=ret(odsy_i2c_xfer_done_loop)) == 0 and falls through when v0(=ret(odsy_i2c_xfer_done_loop)) != 0.
  The `beq` at 0xe38 is taken when a3(=[[a0+16]:8+10280]:8) == 0 and falls through when a3(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0xe58 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0xe98 is taken when a2(=[[a0+16]:8+22304]) == 0 and falls through when a2(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0xeac is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0xeb8 is taken when at(=[[a0+16]:8+22304]) == 0 and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0xf14 is taken when 0 >= a0(?) (unsigned) and falls through when 0 < a0(?) (unsigned).
  The `beq` at 0xfa8 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `beq` at 0x1038 is taken when at(=[[a0+16]:8+10280]:8) == 0 and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x105c is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x10a8 is taken when a2(=[[a0+16]:8+22304]) == 0 and falls through when a2(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x10c8 is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `beq` at 0x10e8 is taken when a2(=[[a0+16]:8+10280]:8) == 0 and falls through when a2(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x110c is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x11ac is taken when 0 >= a0(?) (unsigned) and falls through when 0 < a0(?) (unsigned).
  The `beq` at 0x1244 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `beq` at 0x12ec is taken when 0 >= a0(?) (unsigned) and falls through when 0 < a0(?) (unsigned).
  The `beq` at 0x1384 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `beq` at 0x1414 is taken when at(=[[a0+16]:8+10280]:8) == 0 and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x1438 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x149c is taken when 0 >= a0(?) (unsigned) and falls through when 0 < a0(?) (unsigned).
  The `beq` at 0x1534 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `jr` at 0xd88 returns with v0 = ?.

- `odsy_i2c_sendbyte` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`, 0x15b4, 1272 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `a0` (`ld` at 0x15f4).
  Loads 4 bytes from [a0]:8 +0x0 into `a1` (`lw` at 0x1600).
  Stores 4 bytes from `v1` to [a0]:8 +0x0 (`sw` at 0x160c, 0x161c).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `a4` (`ld` at 0x1610).
  Loads 4 bytes from [a0]:8 +0x0 into `v1` (`lw` at 0x1614).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `a6` (`ld` at 0x1620).
  Loads 4 bytes from [a0]:8 +0x0 into `a5` (`lw` at 0x1624).
  Stores 4 bytes from `a5` to [a0]:8 +0x0 (`sw` at 0x163c, 0x1688).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a6`: 11 such accesses, including `ld` at 0x1640, 0x1658, 0x16cc.
  Loads 4 bytes from [a0+16]:8 +0x5720 into `a4` (`lw` at 0x1644, 0x166c).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `a0` (`ld` at 0x1654, 0x1728, 0x192c).
  Loads 2 bytes from a0 (arg0 at entry) +0x18 into `a5` (`lhu` at 0x168c).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `v1` (`ld` at 0x1690).
  Loads 4 bytes from [a0]:8 +0x0 into `v1` (`lwu` at 0x169c).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `a4`: 5 such accesses, including `ld` at 0x16b0, 0x1868, 0x18a0.
  Stores 8 bytes from `v1` to [[a0+16]:8+736]:8 +0x400000: 5 such accesses, including `sd` at 0x16c8, 0x1880, 0x18b8.
  Loads 4 bytes from [a0+16]:8 +0x5720 into `at` (`lw` at 0x16d0).
  Loads 8 bytes from [a0+16]:8 +0x2828 into `a4` (`ld` at 0x1708, 0x1908).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a0`: 12 such accesses, including `ld` at 0x171c, 0x1734, 0x1790.
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `a5` (`ld` at 0x17a8).
  Loads 4 bytes from [a0]:8 +0x0 into `a4` (`lw` at 0x17ac).
  Stores 4 bytes from `a4` to [a0]:8 +0x0 (`sw` at 0x17bc).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a7` (`lw` at 0x17d0, 0x197c).
  Loads 2 bytes from [a0+16]:8 +0x2830 into `a0` (`lhu` at 0x17d4, 0x1980).
  Stores 4 bytes from `at` to [a0+16]:8 +0x55f0 (`sw` at 0x17f8, 0x1890).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a5` (`ld` at 0x17fc, 0x1824).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a4` (`lwu` at 0x1804).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `a5` (`ld` at 0x1808).
  Stores 8 bytes from `a4` to [[a0+16]:8+736]:8 +0x400000 (`sd` at 0x1820).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a4` (`lw` at 0x1828).
  Loads 2 bytes from [a0+16]:8 +0x2830 into `a6` (`lhu` at 0x1834).
  Stores 4 bytes from `a4` to [a0+16]:8 +0x55f0 (`sw` at 0x1844).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a5` (`lwu` at 0x184c).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `a6` (`ld` at 0x1850).
  Stores 8 bytes from `a5` to [[a0+16]:8+736]:8 +0x400000 (`sd` at 0x1860).
  Loads 8 bytes from [a0+16]:8 +0x2828 into `v1` (`ld` at 0x1870).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `v1` (`ld` at 0x1884, 0x1a44).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `at` (`lw` at 0x1888).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a4`: 6 such accesses, including `ld` at 0x1894, 0x18bc, 0x19a8.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `v1` (`lwu` at 0x189c, 0x19b0, 0x19fc).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a3` (`lw` at 0x18c0, 0x1a70).
  Stores 4 bytes from `a3` to [a0+16]:8 +0x55f0 (`sw` at 0x18c8, 0x1a78).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a3` (`ld` at 0x18cc, 0x1a7c).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a2` (`lw` at 0x18d0, 0x1a80).
  Stores 4 bytes from `a2` to [a0+16]:8 +0x55f0 (`sw` at 0x18d8, 0x1a88).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a1` (`ld` at 0x18dc, 0x1a8c).
  Stores 8 bytes from `zero` to [a0+16]:8 +0x2828 (`sd` at 0x18e0, 0x1a90).
  Stores 4 bytes from `a5` to [a0+16]:8 +0x55f0 (`sw` at 0x19a4, 0x1a40).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `v1` (`lw` at 0x19d4).
  Loads 2 bytes from [a0+16]:8 +0x2830 into `at` (`lhu` at 0x19e0).
  Stores 4 bytes from `v1` to [a0+16]:8 +0x55f0 (`sw` at 0x19f0).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `v1` (`ld` at 0x1a18, 0x1a50).
  Loads 8 bytes from [a0+16]:8 +0x2828 into `at` (`ld` at 0x1a20).
  Stores 8 bytes from `at` to [[a0+16]:8+736]:8 +0x400000 (`sd` at 0x1a30, 0x1a68).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `at` (`ld` at 0x1a34).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a5` (`lw` at 0x1a38).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `at` (`lwu` at 0x1a4c).
  Calls `odsy_i2c_busy_high_loop` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x15cc).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a6=[a0+16]:8 (`jal` at 0x1650).
  Calls `odsy_i2c_xfer_done_loop` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x16dc).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=[[a0+16]:8+22304], a6=[a0+16]:8 (`jal` at 0x16fc).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8 (`jal` at 0x1714).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x1724).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x1738).
  Calls `psema` via direct with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=?, a4=[[a0+16]:8+22304], a6=[a0+16]:8 (`jal` at 0x174c).
  Calls `odsy_i2c_recv_ack` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x1770).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8 (`jal` at 0x1788).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x1798).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x17c4).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=one of 0x400000, 0x7960400100000000, a6=[a0+16]:8, a7=-0x2 (`jal` at 0x18ec).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=[[a0+16]:8+736]:8+0x400000, a6=[a0+16]:8 (`jal` at 0x18fc).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8 (`jal` at 0x1918).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x1928).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x193c).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8 (`jal` at 0x194c).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x195c).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x1970).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a6=[a0+16]:8, a7=-0x2 (`jal` at 0x1a9c).
  The `beq` at 0x15d8 is taken when v0(=ret(odsy_i2c_busy_high_loop)) == 0 and falls through when v0(=ret(odsy_i2c_busy_high_loop)) != 0.
  The `beq` at 0x15fc is taken when v0(=0x1) == at(=a3) and falls through when v0(=0x1) != at(=a3).
  The `beq` at 0x1648 is taken when a4(=[[a0+16]:8+22304]) == 0 and falls through when a4(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x1664 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x1670 is taken when a4(=[[a0+16]:8+22304]) == 0 and falls through when a4(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x16d4 is taken when at(=[[a0+16]:8+22304]) == 0 and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x16e8 is taken when v0(=ret(odsy_i2c_xfer_done_loop)) == 0 and falls through when v0(=ret(odsy_i2c_xfer_done_loop)) != 0.
  The `beq` at 0x170c is taken when a4(=[[a0+16]:8+10280]:8) == 0 and falls through when a4(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x172c is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x1764 is taken when a4(=0x1) == a5(=a3) and falls through when a4(=0x1) != a5(=a3).
  The `beq` at 0x17e8 is taken when 0 >= a0(?) (unsigned) and falls through when 0 < a0(?) (unsigned).
  The `beq` at 0x187c is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `beq` at 0x190c is taken when a4(=[[a0+16]:8+10280]:8) == 0 and falls through when a4(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x1930 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x1994 is taken when 0 >= a0(?) (unsigned) and falls through when 0 < a0(?) (unsigned).
  The `beq` at 0x1a2c is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `jr` at 0x15e8 returns with v0 = ?.

- `odsy_i2c_short_recvbyte` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`, 0x1aac, 104 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `a0` (`ld` at 0x1adc).
  Loads 4 bytes from [a0+8]:8 +0x0 into `a0` (`lw` at 0x1ae4).
  Stores 1 byte from `a0` to a1 (arg1 at entry) +0x0 (`sb` at 0x1b08).
  Calls `odsy_i2c_xfer_done_loop` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1ab8).
  The `beq` at 0x1ac4 is taken when v0(=ret(odsy_i2c_xfer_done_loop)) == 0 and falls through when v0(=ret(odsy_i2c_xfer_done_loop)) != 0.
  The `beq` at 0x1af4 is taken when at(?) == 0 and falls through when at(?) != 0.
  The `jr` at 0x1ad0 returns with v0 = ?.

- `odsy_i2c_long_recvbyte` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`, 0x1b14, 3288 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a6`: 32 such accesses, including `ld` at 0x1b1c, 0x1b48, 0x1b94.
  Loads 4 bytes from [a0+16]:8 +0x5720 into `at` (`lw` at 0x1b24).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `a0`: 9 such accesses, including `ld` at 0x1b44, 0x1c00, 0x1c50.
  Loads 4 bytes from [a0+16]:8 +0x5720 into `v1` (`lw` at 0x1b58, 0x1d14).
  Loads 2 bytes from a0 (arg0 at entry) +0x18 into `at` (`lhu` at 0x1b70, 0x1f6c).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `a6`: 4 such accesses, including `ld` at 0x1b74, 0x1e50, 0x1f9c.
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `a6` (`ld` at 0x1b88).
  Loads 4 bytes from ([[a0+16]:8+736]:8 + (([a0+24]:2 + [a0+24]:2) << 0x2)) +0x220000 into `a5` (`lw` at 0x1b8c).
  Stores 4 bytes from `a5` to [a0]:8 +0x0 (`sw` at 0x1b90, 0x21c0).
  Loads 4 bytes from [a0+16]:8 +0x5720 into `a4`: 4 such accesses, including `lw` at 0x1b98, 0x1bf0, 0x1d38.
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `at`: 4 such accesses, including `ld` at 0x1ba4, 0x1f48, 0x21a8.
  Loads 4 bytes from [a0]:8 +0x0 into `a6` (`lw` at 0x1ba8, 0x1be0, 0x1d00).
  Stores 4 bytes from `a6` to [a0]:8 +0x0 (`sw` at 0x1bb4).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `a4` (`ld` at 0x1bb8).
  Loads 4 bytes from [a0]:8 +0x0 into `a0` (`lw` at 0x1bbc).
  Stores 4 bytes from `a0` to [a0]:8 +0x0 (`sw` at 0x1bc8).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `a0` (`ld` at 0x1bd4, 0x1cf4).
  Stores 4 bytes from `v1` to [a0]:8 +0x0 (`sw` at 0x1be8).
  Loads 4 bytes from [a0+16]:8 +0x5720 into `a5` (`lw` at 0x1c10, 0x1cdc).
  Loads 8 bytes from [a0+16]:8 +0x2828 into `at` (`ld` at 0x1c30, 0x2450, 0x2760).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a0`: 36 such accesses, including `ld` at 0x1c44, 0x1c5c, 0x1d58.
  Stores 4 bytes from `a4` to [a0]:8 +0x0 (`sw` at 0x1c8c, 0x1f68).
  Loads 2 bytes from a0 (arg0 at entry) +0x18 into `a5` (`lhu` at 0x1c90).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `v1` (`ld` at 0x1c98, 0x21c4).
  Loads 4 bytes from [a0]:8 +0x0 into `v1` (`lwu` at 0x1cac).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `at`: 5 such accesses, including `ld` at 0x1cb4, 0x2308, 0x2340.
  Stores 8 bytes from `a6` to [[a0+16]:8+736]:8 +0x400000 (`sd` at 0x1cd4, 0x25ac, 0x25f0).
  Stores 4 bytes from `at` to [a0]:8 +0x0 (`sw` at 0x1d0c, 0x21d8).
  Loads 8 bytes from [a0+16]:8 +0x2828 into `a4`: 5 such accesses, including `ld` at 0x1d7c, 0x1f08, 0x200c.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a0`: 6 such accesses, including `lw` at 0x1dd0, 0x2060, 0x2270.
  Loads 2 bytes from [a0+16]:8 +0x2830 into `a2` (`lhu` at 0x1dd4, 0x2064, 0x23b0).
  Stores 4 bytes from `at` to [a0+16]:8 +0x55f0: 6 such accesses, including `sw` at 0x1df8, 0x1e90, 0x2088.
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a5`: 5 such accesses, including `ld` at 0x1dfc, 0x1e24, 0x208c.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a4` (`lwu` at 0x1e04, 0x2094).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `a5` (`ld` at 0x1e08, 0x2098, 0x25f8).
  Stores 8 bytes from `a4` to [[a0+16]:8+736]:8 +0x400000 (`sd` at 0x1e20, 0x20b0, 0x2610).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a4` (`lw` at 0x1e28, 0x20b8, 0x2328).
  Loads 2 bytes from [a0+16]:8 +0x2830 into `a6` (`lhu` at 0x1e34, 0x20c4).
  Stores 4 bytes from `a4` to [a0+16]:8 +0x55f0: 4 such accesses, including `sw` at 0x1e44, 0x20d4, 0x2298.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a5` (`lwu` at 0x1e4c, 0x20dc, 0x233c).
  Stores 8 bytes from `a5` to [[a0+16]:8+736]:8 +0x400000: 5 such accesses, including `sd` at 0x1e60, 0x1fb0, 0x20f0.
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `a4`: 10 such accesses, including `ld` at 0x1e68, 0x1ea0, 0x20f8.
  Loads 8 bytes from [a0+16]:8 +0x2828 into `v1` (`ld` at 0x1e70, 0x2100).
  Stores 8 bytes from `v1` to [[a0+16]:8+736]:8 +0x400000: 10 such accesses, including `sd` at 0x1e80, 0x1eb8, 0x2110.
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `v1`: 7 such accesses, including `ld` at 0x1e84, 0x2114, 0x229c.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `at`: 4 such accesses, including `lw` at 0x1e88, 0x2118, 0x22c8.
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a4`: 16 such accesses, including `ld` at 0x1e94, 0x1ebc, 0x2124.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `v1`: 8 such accesses, including `lwu` at 0x1e9c, 0x212c, 0x22ec.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a3`: 6 such accesses, including `lw` at 0x1ec0, 0x2150, 0x2360.
  Stores 4 bytes from `a3` to [a0+16]:8 +0x55f0: 6 such accesses, including `sw` at 0x1ec8, 0x2158, 0x2368.
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a3`: 6 such accesses, including `ld` at 0x1ecc, 0x215c, 0x236c.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a2`: 6 such accesses, including `lw` at 0x1ed0, 0x2160, 0x2370.
  Stores 4 bytes from `a2` to [a0+16]:8 +0x55f0: 6 such accesses, including `sw` at 0x1ed8, 0x2168, 0x2378.
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a1`: 6 such accesses, including `ld` at 0x1edc, 0x216c, 0x237c.
  Stores 8 bytes from `zero` to [a0+16]:8 +0x2828: 6 such accesses, including `sd` at 0x1ee0, 0x2170, 0x2380.
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `a5` (`ld` at 0x1f7c).
  Loads 4 bytes from [a0]:8 +0x0 into `a5` (`lwu` at 0x1f8c).
  Loads 4 bytes from [a0]:8 +0x0 into `a5` (`lw` at 0x21b4).
  Loads 4 bytes from [a0]:8 +0x0 into `at` (`lw` at 0x21c8).
  Loads 8 bytes from [a0+16]:8 +0x2828 into `a5` (`ld` at 0x21e8, 0x2310).
  Loads 2 bytes from [a0+16]:8 +0x2830 into `t0` (`lhu` at 0x2274, 0x2560).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `at` (`lwu` at 0x22a4, 0x247c, 0x278c).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `v1`: 5 such accesses, including `ld` at 0x22a8, 0x2448, 0x2480.
  Stores 8 bytes from `at` to [[a0+16]:8+736]:8 +0x400000: 5 such accesses, including `sd` at 0x22c0, 0x2460, 0x2498.
  Loads 2 bytes from [a0+16]:8 +0x2830 into `a4` (`lhu` at 0x22d4).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `at`: 6 such accesses, including `ld` at 0x2334, 0x2464, 0x2588.
  Stores 4 bytes from `a5` to [a0+16]:8 +0x55f0: 4 such accesses, including `sw` at 0x23d4, 0x2470, 0x26e4.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `v1` (`lw` at 0x2404, 0x2714).
  Loads 2 bytes from [a0+16]:8 +0x2830 into `at` (`lhu` at 0x2410, 0x2720).
  Stores 4 bytes from `v1` to [a0+16]:8 +0x55f0 (`sw` at 0x2420, 0x2584, 0x2730).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a5` (`lw` at 0x2468, 0x2778).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a6` (`lwu` at 0x2590, 0x25dc).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a6` (`lw` at 0x25b4).
  Loads 2 bytes from [a0+16]:8 +0x2830 into `a5` (`lhu` at 0x25c0).
  Stores 4 bytes from `a6` to [a0+16]:8 +0x55f0 (`sw` at 0x25d0).
  Loads 2 bytes from [a0+16]:8 +0x2830 into `a3` (`lhu` at 0x26c0).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a6=[a0+16]:8 (`jal` at 0x1b40).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a6=[a0+16]:8 (`jal` at 0x1bfc).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a5=0x220000, a6=[a0+16]:8 (`jal` at 0x1c24).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a6=[a0+16]:8 (`jal` at 0x1c3c).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x1c4c).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x1c60).
  Calls `psema` via direct with a0=[a0+16]:8+10256, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=[a0+16]:8 (`jal` at 0x1c74).
  Calls `odsy_i2c_short_recvbyte` via direct with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=?, a3=? (`jal` at 0x1ce8).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a6=[a0+16]:8 (`jal` at 0x1d24).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a6=[a0+16]:8 (`jal` at 0x1d50).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x1d60).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a5=[[a0+16]:8+22304], a6=[a0+16]:8 (`jal` at 0x1d70).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8 (`jal` at 0x1d8c).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x1d9c).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x1db0).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x1dc4).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=one of 0x400000, 0x7960400100000000, a6=[a0+16]:8, a7=-0x2 (`jal` at 0x1eec).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=[[a0+16]:8+22304], a5=[([[a0+16]:8+736]:8 + (([a0+24]:2 + [a0+24]:2) << 0x2))+2228224], a6=[a0+16]:8 (`jal` at 0x1efc).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8 (`jal` at 0x1f18).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x1f28).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x1f3c).
  Calls `psema` via direct with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=?, a4=[[a0+16]:8+22304], a5=-0x101, a6=[a0+16]:8 (`jal` at 0x1f50).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8 (`jal` at 0x1fe0).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x1ff0).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=[[a0+16]:8+22304], a6=[a0+16]:8 (`jal` at 0x2000).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8 (`jal` at 0x201c).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x202c).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x2040).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x2054).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=one of 0x400000, 0x7960400100000000, a6=[a0+16]:8, a7=-0x2 (`jal` at 0x217c).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8 (`jal` at 0x218c).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x219c).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=0x400000, a5=[[a0+16]:8+22304], a6=[a0+16]:8 (`jal` at 0x21dc).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a5=[[a0+16]:8+10280]:8, a6=[a0+16]:8 (`jal` at 0x21f8).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x2208).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x221c).
  Calls `psema` via direct with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=?, a5=a2 at entry (arg2), a6=[a0+16]:8 (`jal` at 0x2230).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8 (`jal` at 0x2240).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x2250).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x2264).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a6=[a0+16]:8, a7=-0x2 (`jal` at 0x238c).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x23a0).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a6=[a0+16]:8, a7=-0x2 (`jal` at 0x24cc).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a5=[[a0+16]:8+10280]:8, a6=[a0+16]:8 (`jal` at 0x24dc).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x24ec).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=a2 at entry (arg2), a6=[a0+16]:8 (`jal` at 0x24fc).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8 (`jal` at 0x2518).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x2528).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x253c).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x2550).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a6=[a0+16]:8, a7=-0x2 (`jal` at 0x267c).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8 (`jal` at 0x268c).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x269c).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x26b0).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a6=[a0+16]:8, a7=-0x2 (`jal` at 0x27dc).
  The `beq` at 0x1b34 is taken when at(=[[a0+16]:8+22304]) == 0 and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x1b50 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x1b5c is taken when v1(=[[a0+16]:8+22304]) == 0 and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x1b9c is taken when a4(=[[a0+16]:8+22304]) == 0 and falls through when a4(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x1bdc is taken when v0(=0x1) == v1(=a1) and falls through when v0(=0x1) != v1(=a1).
  The `beq` at 0x1bf4 is taken when a4(=[[a0+16]:8+22304]) == 0 and falls through when a4(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x1c08 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x1c14 is taken when a5(=[[a0+16]:8+22304]) == 0 and falls through when a5(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x1c34 is taken when at(=[[a0+16]:8+10280]:8) == 0 and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x1c54 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x1ce0 is taken when a5(=[[a0+16]:8+22304]) == 0 and falls through when a5(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x1cfc is taken when a4(=0x1) == a5(=a2) and falls through when a4(=0x1) != a5(=a2).
  The `beq` at 0x1d18 is taken when v1(=[[a0+16]:8+22304]) == 0 and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x1d30 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x1d3c is taken when a4(=[[a0+16]:8+22304]) == 0 and falls through when a4(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x1d80 is taken when a4(=[[a0+16]:8+10280]:8) == 0 and falls through when a4(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x1da4 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x1de8 is taken when 0 >= a2(?) (unsigned) and falls through when 0 < a2(?) (unsigned).
  The `beq` at 0x1e7c is taken when a2(?) == 0 and falls through when a2(?) != 0.
  The `beq` at 0x1f0c is taken when a4(=[[a0+16]:8+10280]:8) == 0 and falls through when a4(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x1f30 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x1fbc is taken when a4(=[[a0+16]:8+22304]) == 0 and falls through when a4(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x1fc8 is taken when v1(=0x1) == a4(=a2) and falls through when v1(=0x1) != a4(=a2).
  The `beq` at 0x1fd0 is taken when a5(=a1) == 0 and falls through when a5(=a1) != 0.
  The `beq` at 0x2010 is taken when a4(=[[a0+16]:8+10280]:8) == 0 and falls through when a4(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x2034 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x2078 is taken when 0 >= a2(?) (unsigned) and falls through when 0 < a2(?) (unsigned).
  The `beq` at 0x210c is taken when a2(?) == 0 and falls through when a2(?) != 0.
  The `bne` at 0x21bc is taken when a4(=a1) != 0 and falls through when a4(=a1) == 0.
  The `beq` at 0x21ec is taken when a5(=[[a0+16]:8+10280]:8) == 0 and falls through when a5(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x2210 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x2288 is taken when 0 >= t0(?) (unsigned) and falls through when 0 < t0(?) (unsigned).
  The `beq` at 0x231c is taken when t0(?) == 0 and falls through when t0(?) != 0.
  The `beq` at 0x23c4 is taken when 0 >= a2(?) (unsigned) and falls through when 0 < a2(?) (unsigned).
  The `beq` at 0x245c is taken when a2(?) == 0 and falls through when a2(?) != 0.
  The `beq` at 0x250c is taken when a4(=[[a0+16]:8+10280]:8) == 0 and falls through when a4(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x2530 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x2574 is taken when 0 >= t0(?) (unsigned) and falls through when 0 < t0(?) (unsigned).
  The `beq` at 0x260c is taken when t0(?) == 0 and falls through when t0(?) != 0.
  The `beq` at 0x26d4 is taken when 0 >= a3(?) (unsigned) and falls through when 0 < a3(?) (unsigned).
  The `beq` at 0x276c is taken when a3(?) == 0 and falls through when a3(?) != 0.
  The `jr` at 0x1b68 returns with v0 = ?.

- `odsy_i2c_becomeSlaveRecv` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`, 0x27ec, 2372 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a6`: 22 such accesses, including `ld` at 0x2828, 0x2840, 0x2888.
  Loads 4 bytes from [a0+16]:8 +0x5720 into `at` (`lw` at 0x282c).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `a0`: 6 such accesses, including `ld` at 0x283c, 0x2924, 0x2974.
  Loads 4 bytes from [a0+16]:8 +0x5720 into `v1` (`lw` at 0x2850, 0x2a0c).
  Loads 2 bytes from a0 (arg0 at entry) +0x18 into `at` (`lhu` at 0x2864).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `a6` (`ld` at 0x2868, 0x2b50, 0x2d50).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `a6` (`ld` at 0x287c).
  Loads 4 bytes from ([[a0+16]:8+736]:8 + (([a0+24]:2 + [a0+24]:2) << 0x2)) +0x220000 into `a5` (`lw` at 0x2880).
  Stores 4 bytes from `a5` to [a0]:8 +0x0 (`sw` at 0x2884, 0x28d8).
  Loads 4 bytes from [a0+16]:8 +0x5720 into `a4` (`lw` at 0x288c).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `a4`: 4 such accesses, including `ld` at 0x2898, 0x29c8, 0x2c48.
  Loads 4 bytes from [a0]:8 +0x0 into `v1` (`lw` at 0x289c).
  Stores 4 bytes from `v1` to [a0]:8 +0x0 (`sw` at 0x28a4).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `a5`: 4 such accesses, including `ld` at 0x28a8, 0x29a8, 0x2a5c.
  Loads 4 bytes from [a0]:8 +0x0 into `a4`: 4 such accesses, including `lw` at 0x28ac, 0x29ac, 0x2a60.
  Stores 4 bytes from `a4` to [a0]:8 +0x0: 4 such accesses, including `sw` at 0x28b8, 0x29bc, 0x2a6c.
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `at` (`ld` at 0x28bc, 0x28e8).
  Loads 4 bytes from [a0]:8 +0x0 into `a5` (`lw` at 0x28c0).
  Loads 4 bytes from [a0]:8 +0x0 into `a6` (`lw` at 0x28f4).
  Stores 4 bytes from `a6` to [a0]:8 +0x0 (`sw` at 0x290c).
  Loads 4 bytes from [a0+16]:8 +0x5720 into `a5` (`lw` at 0x2914, 0x2934).
  Loads 8 bytes from [a0+16]:8 +0x2828 into `at` (`ld` at 0x2954, 0x30a4).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a0`: 24 such accesses, including `ld` at 0x2968, 0x2980, 0x2a44.
  Loads 2 bytes from a0 (arg0 at entry) +0x18 into `v1` (`lhu` at 0x29c0).
  Loads 4 bytes from [a0]:8 +0x0 into `a4` (`lwu` at 0x29dc).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `a5` (`ld` at 0x29e4, 0x2b08, 0x2d08).
  Stores 8 bytes from `a4` to [[a0+16]:8+736]:8 +0x400000 (`sd` at 0x2a04, 0x2b20, 0x2d20).
  Loads 8 bytes from [a0+16]:8 +0x2828 into `a5` (`ld` at 0x2a7c, 0x2f1c).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a0`: 4 such accesses, including `lw` at 0x2ad0, 0x2cd0, 0x2e7c.
  Loads 2 bytes from [a0+16]:8 +0x2830 into `a2` (`lhu` at 0x2ad4, 0x2cd4, 0x3004).
  Stores 4 bytes from `at` to [a0+16]:8 +0x55f0: 5 such accesses, including `sw` at 0x2af8, 0x2b90, 0x2cf8.
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a5`: 5 such accesses, including `ld` at 0x2afc, 0x2b24, 0x2cfc.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a4` (`lwu` at 0x2b04, 0x2d04).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a4` (`lw` at 0x2b28, 0x2d28, 0x2f34).
  Loads 2 bytes from [a0+16]:8 +0x2830 into `a6` (`lhu` at 0x2b34, 0x2d34).
  Stores 4 bytes from `a4` to [a0+16]:8 +0x55f0: 4 such accesses, including `sw` at 0x2b44, 0x2d44, 0x2ea4.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a5` (`lwu` at 0x2b4c, 0x2d4c, 0x2f48).
  Stores 8 bytes from `a5` to [[a0+16]:8+736]:8 +0x400000: 4 such accesses, including `sd` at 0x2b60, 0x2d60, 0x2f2c.
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `a4`: 7 such accesses, including `ld` at 0x2b68, 0x2ba0, 0x2d68.
  Loads 8 bytes from [a0+16]:8 +0x2828 into `v1` (`ld` at 0x2b70, 0x2d70).
  Stores 8 bytes from `v1` to [[a0+16]:8+736]:8 +0x400000: 7 such accesses, including `sd` at 0x2b80, 0x2bb8, 0x2d80.
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `v1`: 5 such accesses, including `ld` at 0x2b84, 0x2d84, 0x2ea8.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `at` (`lw` at 0x2b88, 0x2d88, 0x2ed4).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a4`: 10 such accesses, including `ld` at 0x2b94, 0x2bbc, 0x2d94.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `v1`: 5 such accesses, including `lwu` at 0x2b9c, 0x2d9c, 0x2ef8.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a3`: 4 such accesses, including `lw` at 0x2bc0, 0x2dc0, 0x2f6c.
  Stores 4 bytes from `a3` to [a0+16]:8 +0x55f0: 4 such accesses, including `sw` at 0x2bc8, 0x2dc8, 0x2f74.
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a3`: 4 such accesses, including `ld` at 0x2bcc, 0x2dcc, 0x2f78.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a2`: 4 such accesses, including `lw` at 0x2bd0, 0x2dd0, 0x2f7c.
  Stores 4 bytes from `a2` to [a0+16]:8 +0x55f0: 4 such accesses, including `sw` at 0x2bd8, 0x2dd8, 0x2f84.
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a1`: 4 such accesses, including `ld` at 0x2bdc, 0x2ddc, 0x2f88.
  Stores 8 bytes from `zero` to [a0+16]:8 +0x2828: 4 such accesses, including `sd` at 0x2be0, 0x2de0, 0x2f8c.
  Loads 8 bytes from [a0+16]:8 +0x2828 into `a4` (`ld` at 0x2c08, 0x2e28).
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `a0` (`ld` at 0x2c60).
  Loads 4 bytes from [a0+8]:8 +0x0 into `a0` (`lw` at 0x2c64).
  Loads 2 bytes from [a0+16]:8 +0x2830 into `t0` (`lhu` at 0x2e80).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `at` (`lwu` at 0x2eb0, 0x30d0).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `v1` (`ld` at 0x2eb4, 0x309c, 0x30d4).
  Stores 8 bytes from `at` to [[a0+16]:8+736]:8 +0x400000 (`sd` at 0x2ecc, 0x30b4, 0x30ec).
  Loads 2 bytes from [a0+16]:8 +0x2830 into `a4` (`lhu` at 0x2ee0).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `at` (`ld` at 0x2f14, 0x2f4c).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `at` (`ld` at 0x2f40, 0x30b8).
  Stores 1 byte from `a0` to a3 (arg3 at entry) +0x0 (`sb` at 0x2fac).
  Stores 4 bytes from `a5` to [a0+16]:8 +0x55f0 (`sw` at 0x3028, 0x30c4).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `v1` (`lw` at 0x3058).
  Loads 2 bytes from [a0+16]:8 +0x2830 into `at` (`lhu` at 0x3064).
  Stores 4 bytes from `v1` to [a0+16]:8 +0x55f0 (`sw` at 0x3074).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a5` (`lw` at 0x30bc).
  Calls `odsy_i2c_busy_high_loop` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2804).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a6=[a0+16]:8 (`jal` at 0x2838).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a6=[a0+16]:8 (`jal` at 0x2920).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a5=0x220000, a6=[a0+16]:8 (`jal` at 0x2948).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a6=[a0+16]:8 (`jal` at 0x2960).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x2970).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x2984).
  Calls `psema` via direct with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=?, a6=[a0+16]:8 (`jal` at 0x2998).
  Calls `odsy_i2c_xfer_done_loop` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x2a18).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a6=[a0+16]:8 (`jal` at 0x2a3c).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x2a4c).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a5=[[a0+16]:8+22304], a6=[a0+16]:8 (`jal` at 0x2a70).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a5=[[a0+16]:8+10280]:8, a6=[a0+16]:8 (`jal` at 0x2a8c).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x2a9c).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x2ab0).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x2ac4).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=one of 0x400000, 0x7960400100000000, a6=[a0+16]:8, a7=-0x2 (`jal` at 0x2bec).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=[[a0+16]:8+22304], a5=[([[a0+16]:8+736]:8 + (([a0+24]:2 + [a0+24]:2) << 0x2))+2228224], a6=[a0+16]:8 (`jal` at 0x2bfc).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8 (`jal` at 0x2c18).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x2c28).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x2c3c).
  Calls `psema` via direct with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=?, a4=0xfffffffffe03ffff, a5=[[a0+16]:8+22304], a6=[a0+16]:8 (`jal` at 0x2c50).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a5=[[a0+16]:8+10280]:8, a6=[a0+16]:8 (`jal` at 0x2ca0).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x2cb0).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x2cc4).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=one of 0x400000, 0x7960400100000000, a6=[a0+16]:8, a7=-0x2 (`jal` at 0x2dec).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8 (`jal` at 0x2dfc).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x2e0c).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a5=[[a0+16]:8+736]:8+0x400000, a6=[a0+16]:8 (`jal` at 0x2e1c).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8 (`jal` at 0x2e38).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x2e48).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x2e5c).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x2e70).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a6=[a0+16]:8, a7=-0x2 (`jal` at 0x2f98).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8 (`jal` at 0x2fd0).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x2fe0).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x2ff4).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a6=[a0+16]:8, a7=-0x2 (`jal` at 0x3120).
  The `beq` at 0x2810 is taken when v0(=ret(odsy_i2c_busy_high_loop)) == 0 and falls through when v0(=ret(odsy_i2c_busy_high_loop)) != 0.
  The `beq` at 0x2830 is taken when at(=[[a0+16]:8+22304]) == 0 and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x2848 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x2854 is taken when v1(=[[a0+16]:8+22304]) == 0 and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x2890 is taken when a4(=[[a0+16]:8+22304]) == 0 and falls through when a4(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x28d4 is taken when v1(=a1) == a4(=0x1) and falls through when v1(=a1) != a4(=0x1).
  The `beq` at 0x28e0 is taken when a4(=a1) == 0 and falls through when a4(=a1) != 0.
  The `beq` at 0x2918 is taken when a5(=[[a0+16]:8+22304]) == 0 and falls through when a5(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x292c is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x2938 is taken when a5(=[[a0+16]:8+22304]) == 0 and falls through when a5(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x2958 is taken when at(=[[a0+16]:8+10280]:8) == 0 and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x2978 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x2a10 is taken when v1(=[[a0+16]:8+22304]) == 0 and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x2a24 is taken when v0(=ret(odsy_i2c_xfer_done_loop)) == 0 and falls through when v0(=ret(odsy_i2c_xfer_done_loop)) != 0.
  The `beq` at 0x2a80 is taken when a5(=[[a0+16]:8+10280]:8) == 0 and falls through when a5(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x2aa4 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x2ae8 is taken when 0 >= a2(?) (unsigned) and falls through when 0 < a2(?) (unsigned).
  The `beq` at 0x2b7c is taken when a2(?) == 0 and falls through when a2(?) != 0.
  The `beq` at 0x2c0c is taken when a4(=[[a0+16]:8+10280]:8) == 0 and falls through when a4(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x2c30 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `bne` at 0x2c78 is taken when a4(?) != 0 and falls through when a4(?) == 0.
  The `beq` at 0x2c90 is taken when a4(?) == 0 and falls through when a4(?) != 0.
  The `beq` at 0x2ce8 is taken when 0 >= a2(?) (unsigned) and falls through when 0 < a2(?) (unsigned).
  The `beq` at 0x2d7c is taken when a2(?) == 0 and falls through when a2(?) != 0.
  The `beq` at 0x2e2c is taken when a4(=[[a0+16]:8+10280]:8) == 0 and falls through when a4(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x2e50 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x2e94 is taken when 0 >= t0(?) (unsigned) and falls through when 0 < t0(?) (unsigned).
  The `beq` at 0x2f28 is taken when t0(?) == 0 and falls through when t0(?) != 0.
  The `beq` at 0x3018 is taken when 0 >= a2(?) (unsigned) and falls through when 0 < a2(?) (unsigned).
  The `beq` at 0x30b0 is taken when a2(?) == 0 and falls through when a2(?) != 0.
  The `jr` at 0x2820 returns with v0 = ?.

- `odsy_i2c_slave_recvbyte` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`, 0x3130, 2352 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `a7` (`ld` at 0x3130).
  Loads 4 bytes from [a0]:8 +0x0 into `a6` (`lw` at 0x3138).
  Stores 4 bytes from `v1` to [a0]:8 +0x0 (`sw` at 0x3168).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a6`: 25 such accesses, including `ld` at 0x316c, 0x3194, 0x31e0.
  Loads 4 bytes from [a0+16]:8 +0x5720 into `a4` (`lw` at 0x3174, 0x32c0).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `a0`: 6 such accesses, including `ld` at 0x3190, 0x325c, 0x32d0.
  Loads 4 bytes from [a0+16]:8 +0x5720 into `a5` (`lw` at 0x31a0, 0x32dc).
  Loads 2 bytes from a0 (arg0 at entry) +0x1a into `a4` (`lhu` at 0x31b8).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `v1`: 5 such accesses, including `ld` at 0x31bc, 0x3314, 0x36c0.
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `a4` (`ld` at 0x31d4, 0x332c).
  Loads 4 bytes from ([[a0+16]:8+736]:8 + (([a0+26]:2 + [a0+26]:2) << 0x2)) +0x220000 into `v1` (`lw` at 0x31d8, 0x3330).
  Stores 4 bytes from `v1` to [a0+8]:8 +0x0 (`sw` at 0x31dc, 0x3334).
  Loads 4 bytes from [a0+16]:8 +0x5720 into `at` (`lw` at 0x31e4, 0x333c).
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `a5`: 4 such accesses, including `ld` at 0x31f0, 0x334c, 0x3548.
  Loads 4 bytes from [a0+8]:8 +0x0 into `a5` (`lw` at 0x31f8, 0x3354).
  Loads 8 bytes from [a0+16]:8 +0x2828 into `at`: 4 such accesses, including `ld` at 0x323c, 0x3508, 0x3590.
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a0`: 24 such accesses, including `ld` at 0x3250, 0x3268, 0x33a4.
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `v0` (`ld` at 0x327c).
  Loads 4 bytes from [a0+8]:8 +0x0 into `v0` (`lw` at 0x3284).
  Loads 2 bytes from a0 (arg0 at entry) +0x1a into `a5` (`lhu` at 0x3310).
  Stores 1 byte from `a5` to ? (base unknown) (`sb` at 0x335c).
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `v1` (`ld` at 0x3360).
  Loads 4 bytes from [a0+8]:8 +0x0 into `v1` (`lw` at 0x3368).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a0`: 4 such accesses, including `lw` at 0x33cc, 0x3688, 0x37c8.
  Loads 2 bytes from [a0+16]:8 +0x2830 into `a2` (`lhu` at 0x33d0, 0x37cc).
  Stores 4 bytes from `at` to [a0+16]:8 +0x55f0 (`sw` at 0x33f4, 0x348c, 0x36fc).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a5`: 4 such accesses, including `ld` at 0x33f8, 0x3420, 0x3738.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a4` (`lwu` at 0x3400, 0x39fc).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `a5` (`ld` at 0x3404, 0x39c8, 0x3a00).
  Stores 8 bytes from `a4` to [[a0+16]:8+736]:8 +0x400000 (`sd` at 0x341c, 0x39dc, 0x3a18).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a4` (`lw` at 0x3424, 0x373c).
  Loads 2 bytes from [a0+16]:8 +0x2830 into `a6` (`lhu` at 0x3430).
  Stores 4 bytes from `a4` to [a0+16]:8 +0x55f0 (`sw` at 0x3440, 0x36b0, 0x3748).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a5` (`lwu` at 0x3448, 0x3754).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `a6` (`ld` at 0x344c).
  Stores 8 bytes from `a5` to [[a0+16]:8+736]:8 +0x400000 (`sd` at 0x345c, 0x3734, 0x3770).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `a4`: 5 such accesses, including `ld` at 0x3464, 0x349c, 0x3708.
  Loads 8 bytes from [a0+16]:8 +0x2828 into `v1` (`ld` at 0x346c).
  Stores 8 bytes from `v1` to [[a0+16]:8+736]:8 +0x400000: 5 such accesses, including `sd` at 0x3478, 0x34b4, 0x3718.
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `v1`: 4 such accesses, including `ld` at 0x347c, 0x36b4, 0x36dc.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `at` (`lw` at 0x3480, 0x36e0).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a4`: 6 such accesses, including `ld` at 0x3490, 0x3700, 0x37f4.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `v1`: 4 such accesses, including `lwu` at 0x3498, 0x3704, 0x37fc.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a5`: 5 such accesses, including `lw` at 0x34bc, 0x3778, 0x3880.
  Stores 4 bytes from `a5` to [a0+16]:8 +0x55f0: 6 such accesses, including `sw` at 0x34c4, 0x3780, 0x37f0.
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a3`: 4 such accesses, including `ld` at 0x34c8, 0x3784, 0x38c8.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a2`: 4 such accesses, including `lw` at 0x34cc, 0x3788, 0x38cc.
  Stores 4 bytes from `a2` to [a0+16]:8 +0x55f0: 4 such accesses, including `sw` at 0x34d8, 0x3794, 0x38d8.
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a1`: 4 such accesses, including `ld` at 0x34dc, 0x3798, 0x38dc.
  Stores 8 bytes from `zero` to [a0+16]:8 +0x2828: 4 such accesses, including `sd` at 0x34e0, 0x379c, 0x38e0.
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `a5` (`ld` at 0x354c).
  Loads 4 bytes from [a0]:8 +0x0 into `a4` (`lw` at 0x3550).
  Stores 4 bytes from `a4` to [a0]:8 +0x0 (`sw` at 0x3574).
  Loads 8 bytes from [a0+16]:8 +0x2828 into `a4` (`ld` at 0x3614, 0x39d0).
  Loads 2 bytes from [a0+16]:8 +0x2830 into `a7` (`lhu` at 0x368c, 0x3930).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `at` (`lwu` at 0x36bc, 0x3898).
  Stores 8 bytes from `at` to [[a0+16]:8+736]:8 +0x400000 (`sd` at 0x36d8, 0x3878, 0x38b4).
  Loads 2 bytes from [a0+16]:8 +0x2830 into `a4` (`lhu` at 0x36ec).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `at`: 4 such accesses, including `ld` at 0x3720, 0x3758, 0x3964.
  Loads 8 bytes from [a0+16]:8 +0x2828 into `a5` (`ld` at 0x3728).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `at`: 5 such accesses, including `ld` at 0x374c, 0x387c, 0x3958.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `v1` (`lw` at 0x3820, 0x39e4).
  Loads 2 bytes from [a0+16]:8 +0x2830 into `at` (`lhu` at 0x382c).
  Stores 4 bytes from `v1` to [a0+16]:8 +0x55f0 (`sw` at 0x383c, 0x3954, 0x39f0).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a6` (`lwu` at 0x3960, 0x39ac).
  Stores 8 bytes from `a6` to [[a0+16]:8+736]:8 +0x400000 (`sd` at 0x397c, 0x39c0).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a6` (`lw` at 0x3984).
  Loads 2 bytes from [a0+16]:8 +0x2830 into `a5` (`lhu` at 0x3990).
  Stores 4 bytes from `a6` to [a0+16]:8 +0x55f0 (`sw` at 0x39a0).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a6=[a0+16]:8 (`jal` at 0x318c).
  Calls `odsy_i2c_xfer_done_loop` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x3210).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a5=[[a0+16]:8+22304], a6=[a0+16]:8 (`jal` at 0x3230).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a6=[a0+16]:8 (`jal` at 0x3248).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x3258).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x326c).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a6=[a0+16]:8 (`jal` at 0x32cc).
  Calls `psema` via direct with a0=[a0+16]:8+10256, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[[a0+16]:8+22304], a6=[a0+16]:8, a7=[a0]:8 (`jal` at 0x32f4).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a6=[a0+16]:8 (`jal` at 0x339c).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x33ac).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x33c0).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8 (`jal` at 0x34ec).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=[a0+8]:8, a6=[a0+16]:8 (`jal` at 0x34fc).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a6=[a0+16]:8 (`jal` at 0x3518).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x3528).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x353c).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a5=[[a0+16]:8+22304], a6=[a0+16]:8 (`jal` at 0x3584).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a6=[a0+16]:8 (`jal` at 0x35a0).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x35b0).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x35c4).
  Calls `psema` via direct with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=?, a4=[[a0+16]:8+22304], a6=[a0+16]:8 (`jal` at 0x35d8).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a6=[a0+16]:8 (`jal` at 0x35e8).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x35f8).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=[a0+8]:8, a5=(([a0+26]:2 + [a0+26]:2) << 0x2), a6=[a0+16]:8 (`jal` at 0x3608).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8 (`jal` at 0x3624).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x3634).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x3648).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a6=[a0+16]:8 (`jal` at 0x3658).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x3668).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x367c).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8 (`jal` at 0x37a8).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x37bc).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8 (`jal` at 0x38ec).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8 (`jal` at 0x38fc).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x390c).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x3920).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8 (`jal` at 0x3a50).
  The `beq` at 0x3160 is taken when at(?) == a1 and falls through when at(?) != a1.
  The `beq` at 0x3180 is taken when a4(=[[a0+16]:8+22304]) == 0 and falls through when a4(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x3198 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x31a4 is taken when a5(=[[a0+16]:8+22304]) == 0 and falls through when a5(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x31e8 is taken when at(=[[a0+16]:8+22304]) == 0 and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x3208 is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `beq` at 0x321c is taken when v0(=ret(odsy_i2c_xfer_done_loop)) == 0 and falls through when v0(=ret(odsy_i2c_xfer_done_loop)) != 0.
  The `beq` at 0x3240 is taken when at(=[[a0+16]:8+10280]:8) == 0 and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x3260 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `bne` at 0x32a0 is taken when a4(?) != 0 and falls through when a4(?) == 0.
  The `bne` at 0x32a8 is taken when a5(?) != 0 and falls through when a5(?) == 0.
  The `bne` at 0x32b4 is taken when at(=a2) < v1(?) (signed) and falls through when at(=a2) >= v1(?) (signed).
  The `beq` at 0x32c4 is taken when a4(=[[a0+16]:8+22304]) == 0 and falls through when a4(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x32d4 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x32e0 is taken when a5(=[[a0+16]:8+22304]) == 0 and falls through when a5(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x3340 is taken when at(=[[a0+16]:8+22304]) == 0 and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `bne` at 0x3384 is taken when v1(?) != 0 and falls through when v1(?) == 0.
  The `beq` at 0x33e4 is taken when 0 >= a2(?) (unsigned) and falls through when 0 < a2(?) (unsigned).
  The `beq` at 0x3474 is taken when a2(?) == 0 and falls through when a2(?) != 0.
  The `beq` at 0x350c is taken when at(=[[a0+16]:8+10280]:8) == 0 and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x3530 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x3594 is taken when at(=[[a0+16]:8+10280]:8) == 0 and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x35b8 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x3618 is taken when a4(=[[a0+16]:8+10280]:8) == 0 and falls through when a4(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x363c is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x36a0 is taken when 0 >= a7(?) (unsigned) and falls through when 0 < a7(?) (unsigned).
  The `beq` at 0x3730 is taken when a7(?) == 0 and falls through when a7(?) != 0.
  The `beq` at 0x37e0 is taken when 0 >= a2(?) (unsigned) and falls through when 0 < a2(?) (unsigned).
  The `beq` at 0x3874 is taken when a2(?) == 0 and falls through when a2(?) != 0.
  The `beq` at 0x3944 is taken when 0 >= a7(?) (unsigned) and falls through when 0 < a7(?) (unsigned).
  The `beq` at 0x39d8 is taken when a7(?) == 0 and falls through when a7(?) != 0.
  The `jr` at 0x31b0 returns with v0 = ?.

- `odsy_i2c_xfer_done_loop` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`, 0x3a60, 1108 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a4`: 10 such accesses, including `ld` at 0x3a88, 0x3aa8, 0x3af0.
  Loads 4 bytes from [a0+16]:8 +0x5720 into `v1` (`lw` at 0x3a8c).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `a0` (`ld` at 0x3a9c, 0x3b6c, 0x3bcc).
  Loads 4 bytes from [a0+16]:8 +0x5720 into `a2` (`lw` at 0x3aac).
  Loads 2 bytes from a0 (arg0 at entry) +0x1a into `v1` (`lhu` at 0x3acc).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `a4` (`ld` at 0x3ad0).
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `at` (`ld` at 0x3ae4).
  Loads 4 bytes from ([[a0+16]:8+736]:8 + (([a0+26]:2 + [a0+26]:2) << 0x2)) +0x220000 into `a4` (`lw` at 0x3ae8).
  Stores 4 bytes from `a4` to [a0+8]:8 +0x0 (`sw` at 0x3aec).
  Loads 4 bytes from [a0+16]:8 +0x5720 into `a3` (`lw` at 0x3af4).
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `a2` (`ld` at 0x3b00, 0x3be8, 0x3d6c).
  Loads 4 bytes from [a0+8]:8 +0x0 into `a2` (`lw` at 0x3b04).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a0`: 13 such accesses, including `ld` at 0x3b20, 0x3b60, 0x3b78.
  Loads 8 bytes from [a0+16]:8 +0x2828 into `a3` (`ld` at 0x3b48).
  Loads 8 bytes from [a0+16]:8 +0x2828 into `a2` (`ld` at 0x3bac, 0x3e24).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a0` (`lw` at 0x3c1c, 0x3d80).
  Loads 2 bytes from [a0+16]:8 +0x2830 into `a1` (`lhu` at 0x3c20).
  Stores 4 bytes from `a3` to [a0+16]:8 +0x55f0 (`sw` at 0x3c40, 0x3cdc).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a2`: 4 such accesses, including `ld` at 0x3c44, 0x3c6c, 0x3c90.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `v1` (`lwu` at 0x3c4c, 0x3c98).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `a2` (`ld` at 0x3c50, 0x3c9c).
  Stores 8 bytes from `v1` to [[a0+16]:8+736]:8 +0x400000 (`sd` at 0x3c68, 0x3cac).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `v1` (`lw` at 0x3c70, 0x3e38).
  Loads 2 bytes from [a0+16]:8 +0x2830 into `at` (`lhu` at 0x3c7c).
  Stores 4 bytes from `v1` to [a0+16]:8 +0x55f0 (`sw` at 0x3c8c, 0x3da8, 0x3e44).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `v1` (`ld` at 0x3cb4, 0x3cec).
  Loads 8 bytes from [a0+16]:8 +0x2828 into `at` (`ld` at 0x3cbc).
  Stores 8 bytes from `at` to [[a0+16]:8+736]:8 +0x400000 (`sd` at 0x3cc8, 0x3d04).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `at`: 4 such accesses, including `ld` at 0x3ccc, 0x3dac, 0x3dd4.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a3` (`lw` at 0x3cd0).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `v1` (`ld` at 0x3ce0).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `at` (`lwu` at 0x3ce8).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a6` (`ld` at 0x3d08, 0x3e70).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a5` (`lw` at 0x3d0c, 0x3e74).
  Stores 4 bytes from `a5` to [a0+16]:8 +0x55f0 (`sw` at 0x3d14, 0x3e7c).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a3` (`ld` at 0x3d18, 0x3e48, 0x3e80).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a2` (`lw` at 0x3d1c, 0x3e84).
  Stores 4 bytes from `a2` to [a0+16]:8 +0x55f0 (`sw` at 0x3d28, 0x3e90).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a1` (`ld` at 0x3d2c, 0x3e94).
  Stores 8 bytes from `zero` to [a0+16]:8 +0x2828 (`sd` at 0x3d30, 0x3e98).
  Loads 2 bytes from [a0+16]:8 +0x2830 into `a5` (`lhu` at 0x3d84).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a4` (`lwu` at 0x3db4, 0x3e00).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `at` (`ld` at 0x3db8, 0x3e04).
  Stores 8 bytes from `a4` to [[a0+16]:8+736]:8 +0x400000 (`sd` at 0x3dd0, 0x3e14).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a4` (`lw` at 0x3dd8).
  Loads 2 bytes from [a0+16]:8 +0x2830 into `a3` (`lhu` at 0x3de4).
  Stores 4 bytes from `a4` to [a0+16]:8 +0x55f0 (`sw` at 0x3df4).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `a3` (`ld` at 0x3e1c, 0x3e54).
  Stores 8 bytes from `a2` to [[a0+16]:8+736]:8 +0x400000 (`sd` at 0x3e30, 0x3e6c).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a2` (`lwu` at 0x3e50).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a4=[a0+16]:8 (`jal` at 0x3a98).
  Calls `odsy_usdelay` via direct with a0=[a0+16]:8, a1=0x1f4, a2=?, a3=? (`jal` at 0x3b1c).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=[[a0+16]:8+22304], a3=?, a4=[a0+16]:8 (`jal` at 0x3b3c).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[[a0+16]:8+10280]:8, a4=[a0+16]:8 (`jal` at 0x3b58).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x3b68).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x3b7c).
  Calls `psema` via direct with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=?, a4=[a0+16]:8 (`jal` at 0x3b90).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=[[a0+16]:8+22304], a4=[a0+16]:8 (`jal` at 0x3ba0).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=[[a0+16]:8+10280]:8, a3=?, a4=[a0+16]:8 (`jal` at 0x3bb8).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x3bc8).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x3bdc).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=[[a0+16]:8+10280]:8, a4=[a0+16]:8 (`jal` at 0x3bec).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0x3bfc).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x3c10).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8 (`jal` at 0x3d3c).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=[[a0+16]:8+10280]:8, a3=?, a4=[a0+16]:8 (`jal` at 0x3d50).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x3d60).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x3d74).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8 (`jal` at 0x3ea4).
  The `beq` at 0x3a80 is taken when s1(?) >= 0x1f4 (unsigned) and falls through when s1(?) < 0x1f4 (unsigned).
  The `beq` at 0x3a90 is taken when v1(=[[a0+16]:8+22304]) == 0 and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x3aa4 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x3ab0 is taken when a2(=[[a0+16]:8+22304]) == 0 and falls through when a2(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x3af8 is taken when a3(=[[a0+16]:8+22304]) == 0 and falls through when a3(=[[a0+16]:8+22304]) != 0.
  The `bne` at 0x3b10 is taken when a2(?) != 0 and falls through when a2(?) == 0.
  The `beq` at 0x3b4c is taken when a3(=[[a0+16]:8+10280]:8) == 0 and falls through when a3(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x3b70 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x3bb0 is taken when a2(=[[a0+16]:8+10280]:8) == 0 and falls through when a2(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x3bd0 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x3c34 is taken when 0 >= a1(?) (unsigned) and falls through when 0 < a1(?) (unsigned).
  The `beq` at 0x3cc4 is taken when a1(?) == 0 and falls through when a1(?) != 0.
  The `beq` at 0x3d98 is taken when 0 >= a5(?) (unsigned) and falls through when 0 < a5(?) (unsigned).
  The `beq` at 0x3e2c is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `jr` at 0x3ac4 returns with v0 = one of 0x0, 0x2, 0x3.

- `odsy_i2c_busy_high_loop` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`, 0x3eb4, 1116 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a4`: 10 such accesses, including `ld` at 0x3edc, 0x3efc, 0x3f44.
  Loads 4 bytes from [a0+16]:8 +0x5720 into `v1` (`lw` at 0x3ee0).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `a0` (`ld` at 0x3ef0, 0x3fc8, 0x4028).
  Loads 4 bytes from [a0+16]:8 +0x5720 into `a2` (`lw` at 0x3f00).
  Loads 2 bytes from a0 (arg0 at entry) +0x1a into `v1` (`lhu` at 0x3f20).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `a4` (`ld` at 0x3f24).
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `at` (`ld` at 0x3f38).
  Loads 4 bytes from ([[a0+16]:8+736]:8 + (([a0+26]:2 + [a0+26]:2) << 0x2)) +0x220000 into `a4` (`lw` at 0x3f3c).
  Stores 4 bytes from `a4` to [a0+8]:8 +0x0 (`sw` at 0x3f40).
  Loads 4 bytes from [a0+16]:8 +0x5720 into `a3` (`lw` at 0x3f48).
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `a2` (`ld` at 0x3f54, 0x4044, 0x41c8).
  Loads 4 bytes from [a0+8]:8 +0x0 into `a2` (`lw` at 0x3f5c).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a0`: 13 such accesses, including `ld` at 0x3f7c, 0x3fbc, 0x3fd4.
  Loads 8 bytes from [a0+16]:8 +0x2828 into `at` (`ld` at 0x3fa4, 0x4118).
  Loads 8 bytes from [a0+16]:8 +0x2828 into `a2` (`ld` at 0x4008, 0x4280).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a0` (`lw` at 0x4078, 0x41dc).
  Loads 2 bytes from [a0+16]:8 +0x2830 into `a1` (`lhu` at 0x407c).
  Stores 4 bytes from `a3` to [a0+16]:8 +0x55f0 (`sw` at 0x409c, 0x4138).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a2`: 4 such accesses, including `ld` at 0x40a0, 0x40c8, 0x40ec.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `v1` (`lwu` at 0x40a8, 0x40f4).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `a2` (`ld` at 0x40ac, 0x40f8).
  Stores 8 bytes from `v1` to [[a0+16]:8+736]:8 +0x400000 (`sd` at 0x40c4, 0x4108).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `v1` (`lw` at 0x40cc, 0x4294).
  Loads 2 bytes from [a0+16]:8 +0x2830 into `at` (`lhu` at 0x40d8).
  Stores 4 bytes from `v1` to [a0+16]:8 +0x55f0 (`sw` at 0x40e8, 0x4204, 0x42a0).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `v1` (`ld` at 0x4110, 0x4148).
  Stores 8 bytes from `at` to [[a0+16]:8+736]:8 +0x400000 (`sd` at 0x4124, 0x4160).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `at`: 4 such accesses, including `ld` at 0x4128, 0x4208, 0x4230.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a3` (`lw` at 0x412c).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `v1` (`ld` at 0x413c).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `at` (`lwu` at 0x4144).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a6` (`ld` at 0x4164, 0x42cc).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a5` (`lw` at 0x4168, 0x42d0).
  Stores 4 bytes from `a5` to [a0+16]:8 +0x55f0 (`sw` at 0x4170, 0x42d8).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a3` (`ld` at 0x4174, 0x42a4, 0x42dc).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a2` (`lw` at 0x4178, 0x42e0).
  Stores 4 bytes from `a2` to [a0+16]:8 +0x55f0 (`sw` at 0x4184, 0x42ec).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a1` (`ld` at 0x4188, 0x42f0).
  Stores 8 bytes from `zero` to [a0+16]:8 +0x2828 (`sd` at 0x418c, 0x42f4).
  Loads 2 bytes from [a0+16]:8 +0x2830 into `a5` (`lhu` at 0x41e0).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a4` (`lwu` at 0x4210, 0x425c).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `at` (`ld` at 0x4214, 0x4260).
  Stores 8 bytes from `a4` to [[a0+16]:8+736]:8 +0x400000 (`sd` at 0x422c, 0x4270).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a4` (`lw` at 0x4234).
  Loads 2 bytes from [a0+16]:8 +0x2830 into `a3` (`lhu` at 0x4240).
  Stores 4 bytes from `a4` to [a0+16]:8 +0x55f0 (`sw` at 0x4250).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `a3` (`ld` at 0x4278, 0x42b0).
  Stores 8 bytes from `a2` to [[a0+16]:8+736]:8 +0x400000 (`sd` at 0x428c, 0x42c8).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a2` (`lwu` at 0x42ac).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a4=[a0+16]:8 (`jal` at 0x3eec).
  Calls `odsy_usdelay` via direct with a0=[a0+16]:8, a1=0x1f4, a2=?, a3=0x7fffff (`jal` at 0x3f78).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=[[a0+16]:8+22304], a3=?, a4=[a0+16]:8 (`jal` at 0x3f98).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[a0+16]:8 (`jal` at 0x3fb4).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x3fc4).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x3fd8).
  Calls `psema` via direct with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=?, a4=[a0+16]:8 (`jal` at 0x3fec).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=[[a0+16]:8+22304], a4=[a0+16]:8 (`jal` at 0x3ffc).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=[[a0+16]:8+10280]:8, a3=?, a4=[a0+16]:8 (`jal` at 0x4014).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x4024).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x4038).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[a0+16]:8 (`jal` at 0x4048).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0x4058).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x406c).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8 (`jal` at 0x4198).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=[[a0+16]:8+10280]:8, a3=?, a4=[a0+16]:8 (`jal` at 0x41ac).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x41bc).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x41d0).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8 (`jal` at 0x4300).
  The `beq` at 0x3ed4 is taken when s1(?) >= 0x1f4 (unsigned) and falls through when s1(?) < 0x1f4 (unsigned).
  The `beq` at 0x3ee4 is taken when v1(=[[a0+16]:8+22304]) == 0 and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x3ef8 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x3f04 is taken when a2(=[[a0+16]:8+22304]) == 0 and falls through when a2(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x3f4c is taken when a3(=[[a0+16]:8+22304]) == 0 and falls through when a3(=[[a0+16]:8+22304]) != 0.
  The `bne` at 0x3f6c is taken when a2(?) != 0 and falls through when a2(?) == 0.
  The `beq` at 0x3fa8 is taken when at(=[[a0+16]:8+10280]:8) == 0 and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x3fcc is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x400c is taken when a2(=[[a0+16]:8+10280]:8) == 0 and falls through when a2(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x402c is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x4090 is taken when 0 >= a1(?) (unsigned) and falls through when 0 < a1(?) (unsigned).
  The `beq` at 0x4120 is taken when a1(?) == 0 and falls through when a1(?) != 0.
  The `beq` at 0x41f4 is taken when 0 >= a5(?) (unsigned) and falls through when 0 < a5(?) (unsigned).
  The `beq` at 0x4288 is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `jr` at 0x3f18 returns with v0 = one of 0x0, 0x2, 0x3.

- `odsy_i2c_recv_ack` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`, 0x4310, 1132 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `at` (`ld` at 0x432c, 0x43a8).
  Loads 4 bytes from [a0+8]:8 +0x0 into `at` (`lw` at 0x4330).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a0`: 13 such accesses, including `ld` at 0x4348, 0x4420, 0x4438.
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a4`: 10 such accesses, including `ld` at 0x434c, 0x436c, 0x43b4.
  Loads 4 bytes from [a0+16]:8 +0x5720 into `v1` (`lw` at 0x4350).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `a0` (`ld` at 0x4360, 0x442c, 0x448c).
  Loads 4 bytes from [a0+16]:8 +0x5720 into `a2` (`lw` at 0x4370).
  Loads 2 bytes from a0 (arg0 at entry) +0x1a into `v1` (`lhu` at 0x4390).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `a4` (`ld` at 0x4394).
  Loads 4 bytes from ([[a0+16]:8+736]:8 + (([a0+26]:2 + [a0+26]:2) << 0x2)) +0x220000 into `a4` (`lw` at 0x43ac).
  Stores 4 bytes from `a4` to [a0+8]:8 +0x0 (`sw` at 0x43b0).
  Loads 4 bytes from [a0+16]:8 +0x5720 into `a3` (`lw` at 0x43b8).
  Loads 8 bytes from [a0+16]:8 +0x2828 into `a3` (`ld` at 0x440c).
  Loads 8 bytes from [a0+16]:8 +0x2828 into `a2` (`ld` at 0x446c, 0x4584, 0x46ec).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a0` (`lw` at 0x44e0, 0x4648).
  Loads 2 bytes from [a0+16]:8 +0x2830 into `a5` (`lhu` at 0x44e4, 0x464c).
  Stores 4 bytes from `v1` to [a0+16]:8 +0x55f0: 4 such accesses, including `sw` at 0x4508, 0x45a4, 0x4670.
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `at`: 6 such accesses, including `ld` at 0x450c, 0x4534, 0x4558.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a4`: 4 such accesses, including `lwu` at 0x4514, 0x4560, 0x467c.
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `at`: 4 such accesses, including `ld` at 0x4518, 0x4564, 0x4680.
  Stores 8 bytes from `a4` to [[a0+16]:8+736]:8 +0x400000: 4 such accesses, including `sd` at 0x4530, 0x4574, 0x4698.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a4` (`lw` at 0x4538, 0x46a0).
  Loads 2 bytes from [a0+16]:8 +0x2830 into `a3` (`lhu` at 0x4544, 0x46ac).
  Stores 4 bytes from `a4` to [a0+16]:8 +0x55f0 (`sw` at 0x4554, 0x46bc).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `a3`: 4 such accesses, including `ld` at 0x457c, 0x45b4, 0x46e4.
  Stores 8 bytes from `a2` to [[a0+16]:8+736]:8 +0x400000: 4 such accesses, including `sd` at 0x4590, 0x45cc, 0x46f8.
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a2` (`ld` at 0x4594, 0x46fc).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `v1` (`lw` at 0x4598, 0x4700).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a3`: 4 such accesses, including `ld` at 0x45a8, 0x45e0, 0x4710.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a2` (`lwu` at 0x45b0, 0x4718).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a6` (`ld` at 0x45d0, 0x4738).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a5` (`lw` at 0x45d4, 0x473c).
  Stores 4 bytes from `a5` to [a0+16]:8 +0x55f0 (`sw` at 0x45dc, 0x4744).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a2` (`lw` at 0x45e4, 0x474c).
  Stores 4 bytes from `a2` to [a0+16]:8 +0x55f0 (`sw` at 0x45f0, 0x4758).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a1` (`ld` at 0x45f4, 0x475c).
  Stores 8 bytes from `zero` to [a0+16]:8 +0x2828 (`sd` at 0x45f8, 0x4760).
  Calls `odsy_usdelay` via direct with a0=[a0+16]:8, a1=0x1f4, a2=?, a3=? (`jal` at 0x4344).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a4=[a0+16]:8 (`jal` at 0x435c).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=[[a0+16]:8+22304], a3=?, a4=[a0+16]:8 (`jal` at 0x4400).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[[a0+16]:8+10280]:8, a4=[a0+16]:8 (`jal` at 0x4418).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x4428).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x443c).
  Calls `psema` via direct with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=?, a4=[a0+16]:8 (`jal` at 0x4450).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=[[a0+16]:8+22304], a4=[a0+16]:8 (`jal` at 0x4460).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=[[a0+16]:8+10280]:8, a3=?, a4=[a0+16]:8 (`jal` at 0x4478).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x4488).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x449c).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=[[a0+16]:8+10280]:8, a4=[a0+16]:8 (`jal` at 0x44b0).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x44c0).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x44d4).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8 (`jal` at 0x4604).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=[[a0+16]:8+10280]:8, a3=?, a4=[a0+16]:8 (`jal` at 0x4618).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x4628).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x463c).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8 (`jal` at 0x476c).
  The `beq` at 0x433c is taken when at(?) == s1(=a1) and falls through when at(?) != s1(=a1).
  The `beq` at 0x4354 is taken when v1(=[[a0+16]:8+22304]) == 0 and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x4368 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x4374 is taken when a2(=[[a0+16]:8+22304]) == 0 and falls through when a2(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x43bc is taken when a3(=[[a0+16]:8+22304]) == 0 and falls through when a3(=[[a0+16]:8+22304]) != 0.
  The `bne` at 0x43d0 is taken when a2(?) < 0x1f4 (unsigned) and falls through when a2(?) >= 0x1f4 (unsigned).
  The `beq` at 0x4410 is taken when a3(=[[a0+16]:8+10280]:8) == 0 and falls through when a3(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x4430 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x4470 is taken when a2(=[[a0+16]:8+10280]:8) == 0 and falls through when a2(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x4490 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x44f8 is taken when 0 >= a5(?) (unsigned) and falls through when 0 < a5(?) (unsigned).
  The `beq` at 0x458c is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `beq` at 0x4660 is taken when 0 >= a5(?) (unsigned) and falls through when 0 < a5(?) (unsigned).
  The `beq` at 0x46f4 is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `jr` at 0x4388 returns with v0 = one of 0x0, 0x2, 0x3.

- `odsy_i2c_init_port_handle` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`, 0x477c, 1076 bytes) Inferred.
  Stores 4 bytes from `a2` to a0 (arg0 at entry) +0x1c (`sw` at 0x47b4).
  Stores 8 bytes from `s0` to a0 (arg0 at entry) +0x10 (`sd` at 0x47b8).
  Loads 4 bytes from a1 (arg1 at entry) +0x5720 into `a3` (`lw` at 0x47bc).
  Loads 8 bytes from a1 (arg1 at entry) +0x2e0 into `a0` (`ld` at 0x47d4, 0x48dc, 0x4964).
  Loads 4 bytes from a1 (arg1 at entry) +0x5720 into `a4` (`lw` at 0x47e4).
  Stores 8 bytes from `a4` to a0 (arg0 at entry) +0x8 (`sd` at 0x4810).
  Stores 8 bytes from `a3` to a0 (arg0 at entry) +0x0 (`sd` at 0x4814).
  Stores 2 bytes from `v1` to a0 (arg0 at entry) +0x1a (`sh` at 0x481c).
  Stores 2 bytes from `at` to a0 (arg0 at entry) +0x18 (`sh` at 0x4824).
  Loads 2 bytes from a0 (arg0 at entry) +0x18 into `v1` (`lhu` at 0x482c).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `at` (`ld` at 0x4830).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `at` (`ld` at 0x4834).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `v1` (`ld` at 0x4844).
  Loads 4 bytes from ([[a0+16]:8+736]:8 + (([a0+24]:2 + [a0+24]:2) << 0x2)) +0x220000 into `at` (`lw` at 0x484c).
  Stores 4 bytes from `at` to [a0]:8 +0x0 (`sw` at 0x4850).
  Loads 2 bytes from a0 (arg0 at entry) +0x1a into `at` (`lhu` at 0x4854).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `v1` (`ld` at 0x4858).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `v1` (`ld` at 0x485c).
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `a3` (`ld` at 0x486c).
  Loads 4 bytes from ([[a0+16]:8+736]:8 + (([a0+26]:2 + [a0+26]:2) << 0x2)) +0x220000 into `v1` (`lw` at 0x4874).
  Stores 4 bytes from `v1` to [a0+8]:8 +0x0 (`sw` at 0x4878).
  Loads 4 bytes from a1 (arg1 at entry) +0x5720 into `at` (`lw` at 0x487c).
  Stores 8 bytes from `at` to a0 (arg0 at entry) +0x8 (`sd` at 0x4890).
  Stores 8 bytes from `a4` to a0 (arg0 at entry) +0x0 (`sd` at 0x4898).
  Stores 2 bytes from `a3` to a0 (arg0 at entry) +0x1a (`sh` at 0x489c).
  Stores 2 bytes from `v1` to a0 (arg0 at entry) +0x18 (`sh` at 0x48a8).
  Loads 8 bytes from a1 (arg1 at entry) +0x2828 into `v1` (`ld` at 0x48b8).
  Loads 8 bytes from a1 (arg1 at entry) +0x2828 into `a3` (`ld` at 0x493c, 0x4a20, 0x4b48).
  Loads 4 bytes from a1 (arg1 at entry) +0x55f0 into `a5` (`lw` at 0x4988, 0x4ab0).
  Loads 2 bytes from a1 (arg1 at entry) +0x2830 into `a6` (`lhu` at 0x498c, 0x4ab4).
  Loads 8 bytes from a1 (arg1 at entry) +0x2e0 into `a7` (`ld` at 0x49bc, 0x4ae4).
  Stores 4 bytes from `v1` to a1 (arg1 at entry) +0x55f0 (`sw` at 0x49d0, 0x4af8).
  Stores 8 bytes from `a3` to [a1+736]:8 +0x400000: 4 such accesses, including `sd` at 0x49d8, 0x4a2c, 0x4b00.
  Loads 2 bytes from a1 (arg1 at entry) +0x2830 into `v1` (`lhu` at 0x49dc, 0x4b04).
  Loads 4 bytes from a1 (arg1 at entry) +0x55f0 into `a7` (`lw` at 0x49e0, 0x4b08).
  Loads 8 bytes from a1 (arg1 at entry) +0x2e0 into `a3` (`ld` at 0x49fc, 0x4b24).
  Stores 4 bytes from `a7` to a1 (arg1 at entry) +0x55f0 (`sw` at 0x4a0c, 0x4b34).
  Stores 8 bytes from `v1` to [a1+736]:8 +0x400000 (`sd` at 0x4a14, 0x4b3c).
  Loads 8 bytes from a1 (arg1 at entry) +0x2e0 into `a4` (`ld` at 0x4a18, 0x4b40).
  Loads 4 bytes from a1 (arg1 at entry) +0x55f0 into `a3` (`lw` at 0x4a30, 0x4b58).
  Loads 8 bytes from a1 (arg1 at entry) +0x2e0 into `at` (`ld` at 0x4a40, 0x4b68).
  Stores 4 bytes from `a3` to a1 (arg1 at entry) +0x55f0 (`sw` at 0x4a54, 0x4b7c).
  Stores 8 bytes from `a6` to [a1+736]:8 +0x400000 (`sd` at 0x4a5c, 0x4b84).
  Stores 8 bytes from `zero` to a1 (arg1 at entry) +0x2828 (`sd` at 0x4a60, 0x4b88).
  Loads 4 bytes from a1 (arg1 at entry) +0x55f0 into `a4` (`lw` at 0x4a64, 0x4b8c).
  Stores 4 bytes from `a4` to a1 (arg1 at entry) +0x55f0 (`sw` at 0x4a7c, 0x4ba4).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a1+736]:8, a1=0xe, a2=?, a3=? (`jal` at 0x47d0).
  Calls `mutex_spinlock` via direct with a0=a1+10272, a1=?, a2=?, a3=?, a4=[a1+22304] (`jal` at 0x48b0).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0x48cc).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a1+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x48d8).
  Calls `vsema` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x48e8).
  Calls `psema` via direct with a0=a1+10256, a1=0x19, a2=a2 at entry (arg2), a3=[a1+22304] (`jal` at 0x48fc).
  Calls `vsema` via direct with a0=a1+10256, a1=a1+10256, a2=?, a3=? (`jal` at 0x4914).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x4920).
  Calls `mutex_spinlock` via direct with a0=a1+10272, a1=?, a2=?, a3=[a0+8]:8, a4=0x220000 (`jal` at 0x4934).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=[a1+10280]:8, a4=a1+10256 (`jal` at 0x4954).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a1+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x4960).
  Calls `vsema` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x4970).
  Calls `mutex_spinlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x4980).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=0x400000, a3=?, a5=-0x2 (`jal` at 0x4a78).
  Calls `vsema` via direct with a0=a1+10256, a1=?, a2=?, a3=[a1+10280]:8, a4=a1+10256 (`jal` at 0x4a8c).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x4a98).
  Calls `mutex_spinlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x4aa8).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=0x400000, a3=?, a5=-0x2 (`jal` at 0x4ba0).
  The `bltz` at 0x4790 is taken when a2 < 0 (signed) and falls through when a2 >= 0 (signed).
  The `beq` at 0x4798 is taken when at(?) == 0 and falls through when at(?) != 0.
  The `beq` at 0x47a0 is taken when a2 == 0 and falls through when a2 != 0.
  The `beq` at 0x47ac is taken when a2 == v1(=0x1) and falls through when a2 != v1(=0x1).
  The `beq` at 0x47c4 is taken when a3(=[a1+22304]) == 0 and falls through when a3(=[a1+22304]) != 0.
  The `beq` at 0x47dc is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x47e8 is taken when a4(=[a1+22304]) == 0 and falls through when a4(=[a1+22304]) != 0.
  The `beq` at 0x4880 is taken when at(=[a1+22304]) == 0 and falls through when at(=[a1+22304]) != 0.
  The `beq` at 0x48bc is taken when v1(=[a1+10280]:8) == 0 and falls through when v1(=[a1+10280]:8) != 0.
  The `beq` at 0x48e0 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x4948 is taken when a3(=[a1+10280]:8) == 0 and falls through when a3(=[a1+10280]:8) != 0.
  The `beq` at 0x4968 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x49a4 is taken when 0 >= a6(?) (unsigned) and falls through when 0 < a6(?) (unsigned).
  The `beq` at 0x4a28 is taken when a6(?) == 0 and falls through when a6(?) != 0.
  The `beq` at 0x4acc is taken when 0 >= a6(?) (unsigned) and falls through when 0 < a6(?) (unsigned).
  The `beq` at 0x4b50 is taken when a6(?) == 0 and falls through when a6(?) != 0.
  The `jr` at 0x47f4 returns with v0 = one of 0x0, 0x1, 0x3.

- `odsy_i2cReset` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`, 0x4bb0, 2292 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `a3` (`ld` at 0x4bc4, 0x4bcc).
  Stores 4 bytes from `zero` to [a0]:8 +0x0 (`sw` at 0x4bc8).
  Loads 4 bytes from [a0]:8 +0x0 into `a2` (`lw` at 0x4bd0).
  Stores 4 bytes from `a2` to [a0]:8 +0x0 (`sw` at 0x4bd8).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `at` (`ld` at 0x4bdc).
  Loads 4 bytes from [a0]:8 +0x0 into `a4` (`lw` at 0x4be0).
  Stores 4 bytes from `a4` to [a0]:8 +0x0 (`sw` at 0x4bec).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `a2` (`ld` at 0x4bf0, 0x4df4).
  Loads 4 bytes from [a0]:8 +0x0 into `v1` (`lw` at 0x4bf4).
  Stores 4 bytes from `v1` to [a0]:8 +0x0 (`sw` at 0x4c00).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a4`: 23 such accesses, including `ld` at 0x4c04, 0x4c24, 0x4ce4.
  Loads 4 bytes from [a0+16]:8 +0x5720 into `at`: 4 such accesses, including `lw` at 0x4c08, 0x4c30, 0x4e20.
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `a0`: 8 such accesses, including `ld` at 0x4c18, 0x4c58, 0x4cdc.
  Loads 2 bytes from a0 (arg0 at entry) +0x18 into `a2` (`lhu` at 0x4c4c).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `v1` (`ld` at 0x4c54, 0x4fdc).
  Loads 4 bytes from [a0]:8 +0x0 into `v1` (`lwu` at 0x4c64, 0x4ff0).
  Stores 8 bytes from `v1` to [[a0+16]:8+736]:8 +0x400000: 5 such accesses, including `sd` at 0x4c80, 0x501c, 0x517c.
  Loads 2 bytes from a0 (arg0 at entry) +0x1a into `v1` (`lhu` at 0x4c84).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `at`: 11 such accesses, including `ld` at 0x4c88, 0x4f3c, 0x50bc.
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `at`: 7 such accesses, including `ld` at 0x4c8c, 0x50c8, 0x5114.
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `v1` (`ld` at 0x4ca0).
  Loads 4 bytes from ([[a0+16]:8+736]:8 + (([a0+26]:2 + [a0+26]:2) << 0x2)) +0x220000 into `at` (`lw` at 0x4ca8).
  Stores 4 bytes from `at` to [a0+8]:8 +0x0 (`sw` at 0x4cac).
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `t0` (`ld` at 0x4cb0, 0x4dd4).
  Loads 4 bytes from [a0+8]:8 +0x0 into `t0` (`lw` at 0x4cb4, 0x4dd8).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a0`: 27 such accesses, including `ld` at 0x4cd0, 0x4d14, 0x4d2c.
  Loads 4 bytes from [a0+16]:8 +0x5720 into `a2` (`lw` at 0x4ce8).
  Loads 8 bytes from [a0+16]:8 +0x2828 into `a3` (`ld` at 0x4d00).
  Loads 8 bytes from [a0+16]:8 +0x2828 into `a2`: 4 such accesses, including `ld` at 0x4d4c, 0x5134, 0x5298.
  Loads 2 bytes from a0 (arg0 at entry) +0x1a into `a3` (`lhu` at 0x4da0).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `a1` (`ld` at 0x4da4).
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `a2` (`ld` at 0x4dbc).
  Loads 4 bytes from ([[a0+16]:8+736]:8 + (([a0+26]:2 + [a0+26]:2) << 0x2)) +0x220000 into `a1` (`lw` at 0x4dc0).
  Stores 4 bytes from `a1` to [a0+8]:8 +0x0 (`sw` at 0x4dc4).
  Loads 4 bytes from [a0]:8 +0x0 into `a1` (`lw` at 0x4df8).
  Stores 4 bytes from `a1` to [a0]:8 +0x0 (`sw` at 0x4e04).
  Loads 8 bytes from [a0+16]:8 +0x2828 into `v0` (`ld` at 0x4e3c).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a0`: 4 such accesses, including `lw` at 0x4e8c, 0x5090, 0x51f4.
  Loads 2 bytes from [a0+16]:8 +0x2830 into `a1` (`lhu` at 0x4e90).
  Stores 4 bytes from `a5` to [a0+16]:8 +0x55f0 (`sw` at 0x4eb0).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a3`: 6 such accesses, including `ld` at 0x4eb4, 0x4edc, 0x4f84.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a2` (`lwu` at 0x4ebc).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `a3`: 4 such accesses, including `ld` at 0x4ec0, 0x512c, 0x5290.
  Stores 8 bytes from `a2` to [[a0+16]:8+736]:8 +0x400000: 4 such accesses, including `sd` at 0x4ed8, 0x5144, 0x52a8.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a2`: 5 such accesses, including `lw` at 0x4ee0, 0x4f88, 0x5194.
  Loads 2 bytes from [a0+16]:8 +0x2830 into `a4` (`lhu` at 0x4eec).
  Stores 4 bytes from `a2` to [a0+16]:8 +0x55f0: 5 such accesses, including `sw` at 0x4efc, 0x4f90, 0x519c.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a3` (`lwu` at 0x4f04).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `a4` (`ld` at 0x4f08).
  Stores 8 bytes from `a3` to [[a0+16]:8+736]:8 +0x400000 (`sd` at 0x4f18).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `v1` (`ld` at 0x4f20, 0x4f58).
  Loads 8 bytes from [a0+16]:8 +0x2828 into `at` (`ld` at 0x4f28, 0x503c).
  Stores 8 bytes from `at` to [[a0+16]:8+736]:8 +0x400000 (`sd` at 0x4f38, 0x4f70).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a3`: 5 such accesses, including `lw` at 0x4f40, 0x4f78, 0x5184.
  Stores 4 bytes from `a3` to [a0+16]:8 +0x55f0: 5 such accesses, including `sw` at 0x4f48, 0x4f80, 0x518c.
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `v1`: 4 such accesses, including `ld` at 0x4f4c, 0x5148, 0x52ac.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `at` (`lwu` at 0x4f54).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a1`: 4 such accesses, including `ld` at 0x4f94, 0x51a0, 0x5304.
  Stores 8 bytes from `zero` to [a0+16]:8 +0x2828: 4 such accesses, including `sd` at 0x4f98, 0x51a4, 0x5308.
  Loads 2 bytes from a0 (arg0 at entry) +0x18 into `a3` (`lhu` at 0x4fd8).
  Loads 8 bytes from [a0+16]:8 +0x2e0 into `a2`: 4 such accesses, including `ld` at 0x5004, 0x5164, 0x52c8.
  Loads 2 bytes from [a0+16]:8 +0x2830 into `a6` (`lhu` at 0x5094, 0x51f8, 0x5358).
  Stores 4 bytes from `v1` to [a0+16]:8 +0x55f0 (`sw` at 0x50b8, 0x521c, 0x537c).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a4`: 6 such accesses, including `lwu` at 0x50c4, 0x5110, 0x5228.
  Stores 8 bytes from `a4` to [[a0+16]:8+736]:8 +0x400000: 6 such accesses, including `sd` at 0x50e0, 0x5124, 0x5244.
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `a4` (`lw` at 0x50e8, 0x524c, 0x53ac).
  Loads 2 bytes from [a0+16]:8 +0x2830 into `a3` (`lhu` at 0x50f4, 0x5258, 0x53b8).
  Stores 4 bytes from `a4` to [a0+16]:8 +0x55f0 (`sw` at 0x5104, 0x5268, 0x53c8).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `at` (`lw` at 0x514c, 0x52b0, 0x5410).
  Stores 4 bytes from `at` to [a0+16]:8 +0x55f0 (`sw` at 0x5154, 0x52b8, 0x5418).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a2` (`ld` at 0x5158, 0x52bc, 0x541c).
  Loads 4 bytes from [a0+16]:8 +0x55f0 into `v1` (`lwu` at 0x5160, 0x52c4, 0x5424).
  Calls `odsy_i2c_stop` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x4bbc).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xe, a2=?, a3=?, a4=[a0+16]:8 (`jal` at 0x4c14).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=? (`jal` at 0x4cd8).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=[[a0+16]:8+22304], a3=?, a4=[a0+16]:8 (`jal` at 0x4cf4).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[[a0+16]:8+10280]:8, a4=[a0+16]:8 (`jal` at 0x4d0c).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x4d1c).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x4d30).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=[a0+16]:8, a6=-0x1, a7=0x30000001 (`jal` at 0x4d40).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=[[a0+16]:8+10280]:8, a3=?, a4=[a0+16]:8 (`jal` at 0x4d58).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x4d68).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x4d7c).
  Calls `psema` via direct with a0=[a0+16]:8+10256, a1=0x19, a2=[a0]:8, a3=-0x201, a4=[a0+16]:8 (`jal` at 0x4d90).
  Calls `odsy_usdelay` via direct with a0=[a0+16]:8, a1=0xa, a2=[a0+8]:8, a3=(([a0+26]:2 + [a0+26]:2) << 0x2), a4=[a0+16]:8 (`jal` at 0x4dcc).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xf, a2=[a0]:8, a3=-0x4001 (`jal` at 0x4e10).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=[a0+16]:8 (`jal` at 0x4e2c).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[a0+16]:8 (`jal` at 0x4e48).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x4e58).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x4e6c).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x4e80).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=-0x2 (`jal` at 0x4fa4).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=[[a0+16]:8+10280]:8, a3=?, a4=[a0+16]:8 (`jal` at 0x4fb8).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x4fc8).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=[[a0+16]:8+736]:8+0x400000, a3=?, a4=[a0+16]:8 (`jal` at 0x5030).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[a0+16]:8 (`jal` at 0x504c).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x505c).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x5070).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x5084).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=-0x2 (`jal` at 0x51b0).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=[[a0+16]:8+10280]:8, a4=[a0+16]:8 (`jal` at 0x51c4).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x51d4).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x51e8).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=-0x2 (`jal` at 0x5314).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[a0+16]:8 (`jal` at 0x5324).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x5334).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x5348).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=-0x2 (`jal` at 0x5474).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[a0+16]:8 (`jal` at 0x5484).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x5494).
  The `beq` at 0x4c0c is taken when at(=[[a0+16]:8+22304]) == 0 and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x4c28 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x4c34 is taken when at(=[[a0+16]:8+22304]) == 0 and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x4cc0 is taken when t0(?) == 0 and falls through when t0(?) != 0.
  The `beq` at 0x4cc8 is taken when a1(=0xa) == t0(?) and falls through when a1(=0xa) != t0(?).
  The `beq` at 0x4ce0 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `bne` at 0x4cec is taken when a2(=[[a0+16]:8+22304]) != 0 and falls through when a2(=[[a0+16]:8+22304]) == 0.
  The `beq` at 0x4d04 is taken when a3(=[[a0+16]:8+10280]:8) == 0 and falls through when a3(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x4d24 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x4d50 is taken when a2(=[[a0+16]:8+10280]:8) == 0 and falls through when a2(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x4d70 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x4de4 is taken when t0(?) == 0 and falls through when t0(?) != 0.
  The `bne` at 0x4dec is taken when at(=0xa) != t0(?) and falls through when at(=0xa) == t0(?).
  The `beq` at 0x4e18 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `bne` at 0x4e24 is taken when at(=[[a0+16]:8+22304]) != 0 and falls through when at(=[[a0+16]:8+22304]) == 0.
  The `beq` at 0x4e40 is taken when v0(=[[a0+16]:8+10280]:8) == 0 and falls through when v0(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x4e60 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x4ea4 is taken when 0 >= a1(?) (unsigned) and falls through when 0 < a1(?) (unsigned).
  The `beq` at 0x4f34 is taken when a1(?) == 0 and falls through when a1(?) != 0.
  The `bne` at 0x5028 is taken when at(=[[a0+16]:8+22304]) != 0 and falls through when at(=[[a0+16]:8+22304]) == 0.
  The `beq` at 0x5040 is taken when at(=[[a0+16]:8+10280]:8) == 0 and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x5064 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x50a8 is taken when 0 >= a6(?) (unsigned) and falls through when 0 < a6(?) (unsigned).
  The `beq` at 0x5140 is taken when a6(?) == 0 and falls through when a6(?) != 0.
  The `beq` at 0x520c is taken when 0 >= a6(?) (unsigned) and falls through when 0 < a6(?) (unsigned).
  The `beq` at 0x52a4 is taken when a6(?) == 0 and falls through when a6(?) != 0.
  The `beq` at 0x536c is taken when 0 >= a6(?) (unsigned) and falls through when 0 < a6(?) (unsigned).
  The `beq` at 0x5404 is taken when a6(?) == 0 and falls through when a6(?) != 0.
  The `jr` at 0x4c40 returns with v0 = ?.

- `odsy_usdelay` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`, 0x0, 148 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x5720 into `at` (`lw` at 0x0).
  Calls `in_panic_mode` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x18).
  Calls `us_delay` via direct with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jal` at 0x28).
  Calls `nano_delay` via direct with a0=sp-48, a1=0xf4240, a2=?, a3=? (`jal` at 0x80).
  The `bne` at 0x10 is taken when at(=[a0+22304]) != 0 and falls through when at(=[a0+22304]) == 0.
  The `beq` at 0x20 is taken when v0(=ret(in_panic_mode)) == 0 and falls through when v0(=ret(in_panic_mode)) != 0.
  The `jr` at 0x38 returns with v0 = ?.

- `odsyPipeNrFromBase` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`, 0x94, 72 bytes) Inferred.
  Loads 8 bytes from ? (base unknown) into `at` (`ld` at 0xac).
  The `beq` at 0xb0 is taken when at(?) == a0 and falls through when at(?) != a0.
  The `bne` at 0xc0 is taken when a3(?) < 0x2 (signed) and falls through when a3(?) >= 0x2 (signed).
  The `jr` at 0xcc returns with v0 = -0x1.
  The `jr` at 0xd4 returns with v0 = ?.

- `odsy_earlyinit` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`, 0xdc, 512 bytes) Inferred.
  Loads 2 bytes from ? (base unknown) into `a3` (`lhu` at 0x178).
  Loads 2 bytes from ? (base unknown) into `a2` (`lhu` at 0x17c).
  Loads 8 bytes from ? (base unknown) into `a0` (`ld` at 0x188).
  Stores 2 bytes from `s3` to ? (base unknown) (`sh` at 0x1ac).
  Stores 4 bytes from `s6` to ? (base unknown) (`sw` at 0x1b0, 0x2b8).
  Loads 4 bytes from ? (base unknown) into `a2` (`lw` at 0x1ec).
  Loads 4 bytes from ? (base unknown) into `a3` (`lw` at 0x1f8).
  Loads 4 bytes from ? (base unknown) into `at` (`lw` at 0x234).
  Loads 4 bytes from ? (base unknown) into `v1` (`lw` at 0x2a8).
  Calls `bzero` via direct with a0=sym(OdsyBoards), a1=0xae50, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x110).
  Calls `odsyReset` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x164).
  Calls `odsy_tport_lock_init` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x16c).
  Calls `htp_register_board` via direct with a0=?, a1=sym(odsy_htp_fncs), a2=?, a3=? (`jal` at 0x184).
  Calls `odsyFindBoardAddr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1b4).
  Calls `in_panic_mode` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1dc).
  Calls `init_sema` via direct with a0=?, a1=0x0, a2=0x0, a3=-0x1 (`jal` at 0x210).
  Calls `timeout` via direct with a0=sym(odsy_earlyinit_timeout), a1=?, a2=0xc8, a3=? (`jal` at 0x220).
  Calls `psema` via direct with a0=?, a1=0x19, a2=?, a3=? (`jal` at 0x22c).
  Calls `cmn_err` via direct with a0=0x5, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x24c).
  Calls `in_panic_mode` via direct with a0=?, a1=?, a2=?, a3=[sym(.sdata)+8] (`jal` at 0x298).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2c8).
  The `bne` at 0xe4 is taken when at(=[sym(.sdata)+12]) != 0 and falls through when at(=[sym(.sdata)+12]) == 0.
  The `beq` at 0xfc is taken when v1(=[sym(.sdata)+8]) == 0 and falls through when v1(=[sym(.sdata)+8]) != 0.
  The `beq` at 0x190 is taken when s0(?) >= 0x2 (signed) and falls through when s0(?) < 0x2 (signed).
  The `beq` at 0x1a8 is taken when a3(=[sym(.sdata)+8]) == 0 and falls through when a3(=[sym(.sdata)+8]) != 0.
  The `beq` at 0x1bc is taken when v0(=ret(odsyFindBoardAddr)) == 0 and falls through when v0(=ret(odsyFindBoardAddr)) != 0.
  The `bne` at 0x1d4 is taken when v1(=[sym(.sdata)+8]) != 0 and falls through when v1(=[sym(.sdata)+8]) == 0.
  The `bne` at 0x1e4 is taken when v0(=ret(in_panic_mode)) != 0 and falls through when v0(=ret(in_panic_mode)) == 0.
  The `bne` at 0x1f0 is taken when a2(?) != 0 and falls through when a2(?) == 0.
  The `bne` at 0x200 is taken when a3(?) < 0x2 (signed) and falls through when a3(?) >= 0x2 (signed).
  The `bne` at 0x23c is taken when at(?) < 0x2 (signed) and falls through when at(?) >= 0x2 (signed).
  The `bne` at 0x2a0 is taken when v0(=ret(in_panic_mode)) != 0 and falls through when v0(=ret(in_panic_mode)) == 0.
  The `beq` at 0x2ac is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `jr` at 0x290 returns with v0 = ?.

- `odsy_init` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`, 0x2dc, 44 bytes) Inferred.
  Calls `xwidget_driver_register` via direct with a0=0xc013, a1=0x23, a2=sym(.rodata), a3=0x0 (`jal` at 0x2f4).
  The `jr` at 0x300 returns with v0 = ret(xwidget_driver_register).

- `odsy_attach` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`, 0x308, 288 bytes) Inferred.
  Loads 8 bytes from ? (base unknown) into `at` (`ld` at 0x388).
  Loads 8 bytes from ? (base unknown) into `v0` (`ld` at 0x3b4, 0x3c4).
  Loads 4 bytes from ? (base unknown) into `a3` (`lw` at 0x3c8).
  Stores 8 bytes from `v0` to ? (base unknown) (`sd` at 0x424).
  Calls `hwgraph_char_device_add` via direct with a0=a0 at entry (arg0), a1=sym(.rodata), a2=sym(.rodata), a3=sp-64 (`jal` at 0x328).
  Calls `xtalk_piotrans_addr` via direct with a0=a0 at entry (arg0), a1=0x0, a2=0x0, a3=0x401000, a4=0x0 (`jal` at 0x344).
  Calls `odsyPipeNrFromBase` via direct with a0=ret(xtalk_piotrans_addr), a1=?, a2=?, a3=? (`jal` at 0x354).
  Calls `odsyInitBoardGfx` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3dc).
  Calls `odsyInitIntr` via direct with a0=?, a1=a0 at entry (arg0), a2=?, a3=? (`jal` at 0x3ec).
  Calls `nic_vertex_info_set` via direct with a0=sym(nic_access_mcr32), a1=?, a2=a0 at entry (arg0), a3=?, a4=-0x1 (`jal` at 0x410).
  The `bne` at 0x36c is taken when v0(=ret(odsyPipeNrFromBase)) != a4(=-0x1) and falls through when v0(=ret(odsyPipeNrFromBase)) == a4(=-0x1).
  The `beq` at 0x38c is taken when at(?) == 0 and falls through when at(?) != 0.
  The `bne` at 0x39c is taken when s1(?) < 0x2 (signed) and falls through when s1(?) >= 0x2 (signed).
  The `beq` at 0x3d4 is taken when a3(?) >= 0x2 (unsigned) and falls through when a3(?) < 0x2 (unsigned).
  The `jr` at 0x404 returns with v0 = 0x0.

- `odsyInitIntr` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`, 0x428, 428 bytes) Inferred.
  Stores 4 bytes from `a1` to ? (base unknown) (`sw` at 0x464).
  Stores 8 bytes from `v0` to ? (base unknown): 7 such accesses, including `sd` at 0x484, 0x498, 0x4ac.
  Loads 8 bytes from ? (base unknown) into `a0`: 12 such accesses, including `ld` at 0x4e0, 0x4ec, 0x4f8.
  Stores 2 bytes from `v0` to ? (base unknown): 5 such accesses, including `sh` at 0x4f4, 0x500, 0x50c.
  Calls `device_desc_dup` via direct with a0=a2 at entry (arg2), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x460).
  Calls `xtalk_intr_alloc` via direct with a0=a1 at entry (arg1), a1=ret(device_desc_dup), a2=a2 at entry (arg2), a3=? (`jal` at 0x474).
  Calls `xtalk_intr_alloc` via direct with a0=a1 at entry (arg1), a1=ret(device_desc_dup), a2=a2 at entry (arg2), a3=? (`jal` at 0x488).
  Calls `xtalk_intr_alloc` via direct with a0=a1 at entry (arg1), a1=ret(device_desc_dup), a2=a2 at entry (arg2), a3=? (`jal` at 0x49c).
  Calls `xtalk_intr_alloc` via direct with a0=a1 at entry (arg1), a1=ret(device_desc_dup), a2=a2 at entry (arg2), a3=? (`jal` at 0x4b0).
  Calls `xtalk_intr_alloc` via direct with a0=a1 at entry (arg1), a1=ret(device_desc_dup), a2=a2 at entry (arg2), a3=? (`jal` at 0x4c4).
  Calls `device_desc_free` via direct with a0=ret(device_desc_dup), a1=?, a2=?, a3=? (`jal` at 0x4d8).
  Calls `xtalk_intr_vector_get` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x4e4).
  Calls `xtalk_intr_vector_get` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x4f0).
  Calls `xtalk_intr_vector_get` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x4fc).
  Calls `xtalk_intr_vector_get` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x508).
  Calls `xtalk_intr_vector_get` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x514).
  Calls `xtalk_intr_connect` via direct with a0=?, a1=sym(odsyXtErrorInterrupt), a2=?, a3=0x0, a4=0x0, a5=0x0 (`jal` at 0x534).
  Calls `xtalk_intr_connect` via direct with a0=?, a1=sym(odsyFlagInterrupt), a2=?, a3=0x0, a4=0x0, a5=0x0 (`jal` at 0x550).
  Calls `xtalk_intr_connect` via direct with a0=?, a1=sym(odsyDmaInterrupt), a2=?, a3=0x0, a4=0x0, a5=0x0 (`jal` at 0x56c).
  Calls `xtalk_intr_connect` via direct with a0=?, a1=sym(odsyRetraceHandler), a2=?, a3=0x0, a4=0x0, a5=0x0 (`jal` at 0x588).
  Calls `xtalk_intr_connect` via direct with a0=?, a1=sym(odsySsyncInterrupt), a2=?, a3=0x0, a4=0x0, a5=0x0 (`jal` at 0x5a4).
  Calls `xtalk_intr_addr_get` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x5ac).
  Calls `xtalk_intr_addr_get` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x5b8).
  The `jr` at 0x5cc returns with v0 = ret(xtalk_intr_addr_get).

- `odsyFindBoardAddr` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`, 0x5d4, 208 bytes) Inferred.
  Loads 2 bytes from ? (base unknown) into `at` (`lh` at 0x5f0).
  Loads 4 bytes from ret(xtalk_early_piotrans_addr) +0x24 into `v1` (`lw` at 0x638).
  Stores 8 bytes from `v0` to ? (base unknown) (`sd` at 0x63c).
  Stores 2 bytes from `s1` to ? (base unknown) (`sh` at 0x640).
  Stores 4 bytes from `a3` to ? (base unknown) (`sw` at 0x648).
  Stores 4 bytes from `v1` to ? (base unknown) (`sw` at 0x650).
  Loads 4 bytes from ret(xtalk_early_piotrans_addr) +0x24 into `at` (`lw` at 0x654).
  Stores 4 bytes from `at` to ? (base unknown) (`sw` at 0x660).
  Stores 2 bytes from `a0` to ? (base unknown) (`sh` at 0x664).
  Loads 8 bytes from ? (base unknown) into `a2` (`ld` at 0x688).
  Loads 8 bytes from ? (base unknown) into `a0` (`ld` at 0x698).
  Calls `xtalk_early_piotrans_addr` via direct with a0=0xc013, a1=0x23, a2=a0 at entry (arg0), a3=0x0, a4=0x401000, a5=0x0 (`jal` at 0x620).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=a3 at entry (arg3) (`jal` at 0x690).
  The `bne` at 0x600 is taken when at(?) != v0(=-0x1) and falls through when at(?) == v0(=-0x1).
  The `beq` at 0x630 is taken when v0(=ret(xtalk_early_piotrans_addr)) == 0 and falls through when v0(=ret(xtalk_early_piotrans_addr)) != 0.
  The `jr` at 0x678 returns with v0 = ?.

- `odsyInitBoardGfx` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`, 0x6a4, 536 bytes) Inferred.
  Stores 4 bytes from `zero` to ? (base unknown): 4 such accesses, including `sw` at 0x72c, 0x730, 0x744.
  Loads 4 bytes from ? (base unknown) into `a0` (`lw` at 0x7b8, 0x7e8).
  Stores 8 bytes from `v1` to ? (base unknown) (`sd` at 0x7c4, 0x820).
  Stores 8 bytes from `v0` to ? (base unknown) (`sd` at 0x7d4).
  Stores 4 bytes from `s7` to ? (base unknown) (`sw` at 0x814, 0x838).
  Stores 4 bytes from `v0` to ? (base unknown) (`sw` at 0x82c).
  Calls `bzero` via direct with a0=?, a1=0xc8, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x6d8).
  Calls `init_sema` via direct with a0=?, a1=0x1, a2=0x0, a3=-0x1 (`jal` at 0x6ec).
  Calls `OdsyInit32kSlotMask` via direct with a0=?, a1=0x0, a2=?, a3=? (`jal` at 0x6f8).
  Calls `init_mutex` via direct with a0=?, a1=0x0, a2=0x0, a3=-0x1 (`jal` at 0x70c).
  Calls `init_sv` via direct with a0=?, a1=0x0, a2=0x0, a3=-0x1 (`jal` at 0x724).
  Calls `init_sema` via direct with a0=?, a1=0x1, a2=sym(.rodata), a3=-0x1 (`jal` at 0x74c).
  Calls `spinlock_init` via direct with a0=?, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x758).
  Calls `init_mutex` via direct with a0=?, a1=0x0, a2=0x0, a3=-0x1 (`jal` at 0x76c).
  Calls `init_mutex` via direct with a0=?, a1=0x0, a2=0x0, a3=-0x1 (`jal` at 0x780).
  Calls `init_sema` via direct with a0=?, a1=0x1, a2=0x0, a3=-0x1 (`jal` at 0x794).
  Calls `odsyInitDDRNs` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x79c).
  Calls `odsyInitHwWrRgn` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x7a4).
  Calls `kmem_zalloc` via direct with a0=0xc000, a1=0x8800, a2=?, a3=? (`jal` at 0x7b0).
  Calls `add_to_inventory` via direct with a0=0x7, a1=0x15, a2=0x0, a3=0x0 (`jal` at 0x808).
  Calls `init_mutex` via direct with a0=?, a1=0x0, a2=sym(.rodata), a3=-0x1 (`jal` at 0x834).
  Calls `init_mutex` via direct with a0=?, a1=0x0, a2=sym(.rodata), a3=-0x1 (`jal` at 0x848).
  Calls `init_mutex` via direct with a0=?, a1=0x0, a2=sym(.rodata), a3=-0x1 (`jal` at 0x85c).
  Calls `GfxRegisterBoard` via direct with a0=sym(odsy_gfx_fncs), a1=?, a2=?, a3=? (`jal` at 0x870).
  The `beq` at 0x7d0 is taken when a0(?) == at(=0x20) and falls through when a0(?) != at(=0x20).
  The `beq` at 0x7d8 is taken when a0(?) == a2(=0x40) and falls through when a0(?) != a2(=0x40).
  The `beq` at 0x7e0 is taken when a0(?) == at(=0x80) and falls through when a0(?) != at(=0x80).
  The `beq` at 0x7ec is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `beq` at 0x7f4 is taken when s7(=0x1) == a0(?) and falls through when s7(=0x1) != a0(?).
  The `jr` at 0x888 returns with v0 = ret(GfxRegisterBoard).

- `odsyGatherInfo` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`, 0x8bc, 1448 bytes) Inferred.
  Loads 8 bytes from ? (base unknown) into `a5` (`ld` at 0x8e4).
  Loads 4 bytes from ? (base unknown) into `v0` (`lw` at 0x908, 0xe40).
  Stores 4 bytes from `v1` to ? (base unknown): 5 such accesses, including `sw` at 0x924, 0x9c4, 0xa48.
  Stores 4 bytes from `a3` to ? (base unknown): 5 such accesses, including `sw` at 0x938, 0x958, 0x97c.
  Loads 4 bytes from ? (base unknown) into `a2` (`lw` at 0x980).
  Stores 4 bytes from `a2` to ? (base unknown) (`sw` at 0x998).
  Loads 8 bytes from ? (base unknown) into `a3`: 4 such accesses, including `ld` at 0x9a4, 0xbbc, 0xbe0.
  Stores 4 bytes from `a4` to ? (base unknown) (`sw` at 0x9b4, 0xc3c, 0xdac).
  Stores 4 bytes from `at` to ? (base unknown) (`sw` at 0x9bc, 0xe30).
  Loads 4 bytes from ? (base unknown) into `v1` (`lw` at 0x9e8, 0xdbc).
  Loads 4 bytes from ? (base unknown) into `a0` (`lw` at 0xa08).
  Loads 4 bytes from table(0x23380c) +0x0 into `v0` (`lw` at 0xa3c).
  Loads 8 bytes from ? (base unknown) into `v1` (`ld` at 0xac8, 0xd98, 0xdf4).
  Loads 8 bytes from ? (base unknown) into `a0` (`ld` at 0xaec, 0xc80).
  Loads 4 bytes from ? (base unknown) into `a7` (`lw` at 0xb44, 0xd64).
  Loads 2 bytes from ? (base unknown) into `a6` (`lhu` at 0xb48).
  Loads 8 bytes from ? (base unknown) into `t0` (`ld` at 0xb7c).
  Stores 8 bytes from `a3` to table(0x400000) +0x0 (`sd` at 0xb98, 0xbec).
  Loads 2 bytes from ? (base unknown) into `v1` (`lhu` at 0xb9c).
  Loads 4 bytes from ? (base unknown) into `t0` (`lw` at 0xba0).
  Stores 4 bytes from `t0` to ? (base unknown) (`sw` at 0xbcc).
  Stores 8 bytes from `v1` to table(0x400000) +0x0 (`sd` at 0xbd4).
  Loads 8 bytes from ? (base unknown) into `a4` (`ld` at 0xbd8).
  Loads 4 bytes from ? (base unknown) into `a3` (`lw` at 0xbf0).
  Loads 8 bytes from ? (base unknown) into `at` (`ld` at 0xc00, 0xc58, 0xdfc).
  Stores 8 bytes from `a6` to table(0x400000) +0x0 (`sd` at 0xc1c, 0xdb4).
  Loads 4 bytes from ? (base unknown) into `a4` (`lw` at 0xc20).
  Stores 8 bytes from `zero` to ? (base unknown) (`sd` at 0xc24, 0xe3c).
  Loads 2 bytes from ? (base unknown) into `a2` (`lhu` at 0xd68).
  Loads 2 bytes from ? (base unknown) into `a4` (`lhu` at 0xdb8).
  Loads 8 bytes from ? (base unknown) into `a6` (`ld` at 0xdd8).
  Stores 8 bytes from `a4` to table(0x400000) +0x0 (`sd` at 0xdf0).
  Stores 8 bytes from `at` to table(0x400000) +0x0 (`sd` at 0xe08).
  Loads 4 bytes from ? (base unknown) into `at` (`lw` at 0xe0c).
  Stores 8 bytes from `a2` to table(0x400000) +0x0 (`sd` at 0xe38).
  Stores 4 bytes from `v0` to ? (base unknown) (`sw` at 0xe58).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=? (`jr` at 0x9a8).
  Calls `odsy_poll_dfifo_level` via direct with a0=?, a1=0x0, a2=?, a3=? (`jal` at 0xa00).
  Calls `mutex_spinlock` via direct with a0=?, a1=a1 at entry (arg1), a2=?, a3=? (`jal` at 0xac0).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0xadc).
  Calls `odsy_poll_dfifo_level` via direct with a0=?, a1=0xc, a2=?, a3=? (`jal` at 0xae8).
  Calls `vsema` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xaf8).
  Calls `psema` via direct with a0=?, a1=0x19, a2=?, a3=? (`jal` at 0xb0c).
  Calls `vsema` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xb20).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xb2c).
  Calls `mutex_spinlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xb3c).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a5=0x400000, a7=-0x2 (`jal` at 0xc38).
  Calls `mutex_spinlock` via direct with a0=?, a1=a1 at entry (arg1), a2=?, a3=? (`jal` at 0xc50).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0xc70).
  Calls `odsy_poll_dfifo_level` via direct with a0=?, a1=0xc, a2=?, a3=? (`jal` at 0xc7c).
  Calls `vsema` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xc8c).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=?, a3=0x3 (`jal` at 0xcb4).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=?, a3=0x4 (`jal` at 0xcd4).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=?, a3=0x80, a4=0x20 (`jal` at 0xcf0).
  Calls `vsema` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xd08).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xd14).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=?, a3=? (`jal` at 0xd44).
  Calls `mutex_spinlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xd5c).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a5=0x400000, a7=-0x2 (`jal` at 0xe54).
  The `beq` at 0x8e0 is taken when a1 == 0 and falls through when a1 != 0.
  The `beq` at 0x8f0 is taken when a1 == a0(=0x1) and falls through when a1 != a0(=0x1).
  The `beq` at 0x920 is taken when a1(?) == 0 and falls through when a1(?) != 0.
  The `beq` at 0x928 is taken when a0(=0x1) == a1(?) and falls through when a0(=0x1) != a1(?).
  The `bne` at 0x930 is taken when a1(?) != v1(=0x2) and falls through when a1(?) == v1(=0x2).
  The `beq` at 0x948 is taken when a0(=0x1) == a1(?) and falls through when a0(=0x1) != a1(?).
  The `bne` at 0x950 is taken when a1(?) != 0 and falls through when a1(?) == 0.
  The `beq` at 0x968 is taken when a1(?) == 0 and falls through when a1(?) != 0.
  The `bne` at 0x970 is taken when a0(=0x1) != a1(?) and falls through when a0(=0x1) == a1(?).
  The `beq` at 0x99c is taken when v0(?) >= 0x10 (unsigned) and falls through when v0(?) < 0x10 (unsigned).
  The `beq` at 0x9d4 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x9f4 is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `beq` at 0xa14 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0xa1c is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `beq` at 0xa38 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `beq` at 0xa54 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xa68 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xa7c is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xa90 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xaa4 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xab8 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xacc is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `beq` at 0xaf0 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0xb64 is taken when 0 >= a6(?) (unsigned) and falls through when 0 < a6(?) (unsigned).
  The `beq` at 0xbe8 is taken when a6(?) == 0 and falls through when a6(?) != 0.
  The `beq` at 0xc64 is taken when at(?) == 0 and falls through when at(?) != 0.
  The `beq` at 0xc84 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0xd80 is taken when 0 >= a2(?) (unsigned) and falls through when 0 < a2(?) (unsigned).
  The `beq` at 0xe04 is taken when a2(?) == 0 and falls through when a2(?) != 0.
  The `jr` at 0x900 returns with v0 = one of -0x1, 0x0.

- `odsy_init_ddrncount_timeout` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`, 0xe64, 56 bytes) Inferred.
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xe7c).
  Calls `vsema` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0xe84).
  The `jr` at 0xe94 returns with v0 = ret(vsema).

- `odsy_earlyinit_timeout` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`, 0xe9c, 28 bytes) Inferred.
  Calls `vsema` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xea4).
  The `jr` at 0xeb0 returns with v0 = ret(vsema).
- `odsyZeroOut` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`, 0xeb8, 196 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `a2` (`ld` at 0xecc).
  Stores 4 bytes from `v0` to [a0+736]:8 +0x110000 (`sw` at 0xee4).
  Stores 4 bytes from `at` to [a0+736]:8 +0x110000 (`sw` at 0xef0, 0xefc).
  Stores 4 bytes from `zero` to [a0+736]:8 +0x110000: 5 such accesses, including `sw` at 0xf1c, 0xf4c, 0xf50.
  Stores 4 bytes from `t0` to [a0+736]:8 +0x110000 (`sw` at 0xf40).
  Stores 4 bytes from `a0` to [a0+736]:8 +0x110000 (`sw` at 0xf48).
  Stores 4 bytes from `t1` to [a0+736]:8 +0x110000 (`sw` at 0xf78).
  The `beq` at 0xef4 is taken when a4(?) == a7(=0x231) and falls through when a4(?) != a7(=0x231).
  The `blez` at 0xf0c is taken when a6(?) <= 0 (signed) and falls through when a6(?) > 0 (signed).
  The `bgtz` at 0xf18 is taken when a1(?) > 0 (signed) and falls through when a1(?) <= 0 (signed).
  The `beq` at 0xf24 is taken when v0(?) == 0 and falls through when v0(?) != 0.
  The `beq` at 0xf30 is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `jr` at 0xf5c returns with v0 = 0x0.

- `gf_OdsyInitialize` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`, 0xf7c, 1184 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `a5`: 5 such accesses, including `ld` at 0xf7c, 0x130c, 0x1314.
  Loads 4 bytes from [a0+32]:8 +0x1220 into `a2` (`lw` at 0xf84, 0x13f4).
  Loads 8 bytes from [a0+32]:8 +0x48 into `at` (`ld` at 0xfa0).
  Loads 4 bytes from [a0+32]:8 +0x50 into `v0` (`lw` at 0xfb4).
  Stores 4 bytes from `v0` to [a0+32]:8 +0x50 (`sw` at 0xfc8).
  Loads 4 bytes from a0 (arg0 at entry) +0x30 into `v1` (`lw` at 0xfcc).
  Loads 4 bytes from a0 (arg0 at entry) +0x30 into `a1` (`lw` at 0xfe8).
  Stores 4 bytes from `a1` to a0 (arg0 at entry) +0x30 (`sw` at 0xff4).
  Loads 8 bytes from [a0+32]:8 +0x2d0 into `a1`: 5 such accesses, including `ld` at 0xff8, 0x1060, 0x106c.
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `a5` (`ld` at 0x1020).
  Stores 4 bytes from `s8` to [a0+32]:8 +0x28a8 (`sw` at 0x1024, 0x127c).
  Stores 4 bytes from `s8` to [[a0+32]:8+736]:8 +0x107c (`sw` at 0x1028, 0x1280).
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `a4` (`ld` at 0x102c).
  Loads 4 bytes from [[a0+32]:8+736]:8 +0x106c into `a4` (`lw` at 0x1030).
  Loads 8 bytes from [a0+32]:8 +0x2d0 into `a0`: 5 such accesses, including `ld` at 0x1034, 0x1100, 0x1290.
  Stores 4 bytes from `zero` to [[a0+32]:8+736]:8 +0x1084 (`sw` at 0x10c4, 0x10d4).
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `ra` (`ld` at 0x10c8).
  Stores 4 bytes from `s8` to [[a0+32]:8+736]:8 +0x1084 (`sw` at 0x10cc).
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `t9` (`ld` at 0x10d0).
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `t8` (`ld` at 0x10d8).
  Stores 4 bytes from `s4` to [a0+32]:8 +0x28a4 (`sw` at 0x10dc).
  Stores 4 bytes from `s4` to [[a0+32]:8+736]:8 +0x1074 (`sw` at 0x10e0).
  Loads 2 bytes from [a0+32]:8 +0x2be into `a0`: 4 such accesses, including `lh` at 0x10ec, 0x1120, 0x11dc.
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `a1` (`ld` at 0x1138, 0x1284).
  Loads 4 bytes from [a0+32]:8 +0x56f0 into `a0` (`lw` at 0x1144).
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `a2` (`ld` at 0x1150, 0x1178, 0x1278).
  Stores 8 bytes from `v0` to [a0+32]:8 +0x2d0 (`sd` at 0x1154).
  Loads 4 bytes from [[a0+32]:8+736]:8 +0x106c into `s6` (`lw` at 0x1158).
  Loads 8 bytes from [a0+32]:8 +0x2f0 into `t8` (`ld` at 0x11b8).
  Stores 4 bytes from `v0` to [a0+32]:8 +0x5700 (`sw` at 0x11bc).
  Stores 8 bytes from `t8` to [a0+32]:8 +0x5708 (`sd` at 0x11c8).
  Stores 2 bytes from `zero` to ([[a0+32]:8+752]:8 + (ret(OdsyAlloc32kSlot) + ret(OdsyAlloc32kSlot))) +0x0 (`sh` at 0x11d4).
  Stores 2 bytes from `zero` to [a0+32]:8 +0x2c4 (`sh` at 0x11e0).
  Stores 8 bytes from `zero` to [a0+32]:8 +0x5640 (`sd` at 0x11e4).
  Stores 8 bytes from `zero` to [a0+32]:8 +0x5628 (`sd` at 0x11e8).
  Loads 4 bytes from a0 (arg0 at entry) +0x30 into `at` (`lw` at 0x1204).
  Stores 4 bytes from `at` to a0 (arg0 at entry) +0x30 (`sw` at 0x120c).
  Loads 4 bytes from a0 (arg0 at entry) +0x30 into `v0` (`lw` at 0x124c).
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x30 (`sw` at 0x1258).
  Loads 4 bytes from [[a0+32]:8+736]:8 +0x106c into `a1` (`lw` at 0x1288).
  Stores 4 bytes from `zero` to [a0+32]:8 +0x5720 (`sw` at 0x12ac).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `a4` (`ld` at 0x12b0).
  Loads 4 bytes from [a0+32]:8 +0x50 into `a3` (`lw` at 0x12b4).
  Stores 4 bytes from `a3` to [a0+32]:8 +0x50 (`sw` at 0x12c4).
  Stores 8 bytes from `s7` to [a0+32]:8 +0x48 (`sd` at 0x1310).
  Loads 4 bytes from [a0+32]:8 +0x68 into `a4` (`lw` at 0x1318).
  Loads 4 bytes from [a0+32]:8 +0x68 into `at` (`lw` at 0x1330).
  Loads 4 bytes from [a0+32]:8 +0x28a4 into `v0` (`lw` at 0x1354).
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `a3` (`ld` at 0x1370).
  Stores 4 bytes from `a0` to [a0+32]:8 +0x28a4 (`sw` at 0x1378).
  Stores 4 bytes from `a0` to [[a0+32]:8+736]:8 +0x1074 (`sw` at 0x137c).
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `v1` (`ld` at 0x1384).
  Stores 4 bytes from `zero` to [a0+32]:8 +0x28a8 (`sw` at 0x1388).
  Stores 4 bytes from `zero` to [[a0+32]:8+736]:8 +0x107c (`sw` at 0x1390).
  Calls `htp_register_board` via direct with a0=0x0, a1=0x0, a2=0x0, a3=0x0, a5=[a0+32]:8 (`jal` at 0xfc4).
  Calls `splhi` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xfdc).
  Calls `gfx_flow_am_i_attached` via direct with a0=[[a0+32]:8+720]:8, a1=[[a0+32]:8+720]:8, a2=?, a3=? (`jal` at 0x100c).
  Calls `gfx_flow_detach_me` via direct with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=?, a3=?, a4=[[[a0+32]:8+736]:8+4204], a5=[[a0+32]:8+736]:8 (`jal` at 0x103c).
  Calls `splx` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1054).
  Calls `gfx_flow_dealloc` via direct with a0=[[a0+32]:8+720]:8, a1=[[a0+32]:8+720]:8, a2=?, a3=? (`jal` at 0x1078).
  Calls `odsyInitCfifo` via direct with a0=[[a0+32]:8+702]:2, a1=0x1, a2=[[a0+32]:8+736]:8, a3=? (`jal` at 0x10e8).
  Calls `gfx_flow_dealloc` via direct with a0=[[a0+32]:8+720]:8, a1=?, a2=?, a3=? (`jal` at 0x10fc).
  Calls `odsyReset` via direct with a0=[[a0+32]:8+702]:2, a1=?, a2=?, a3=? (`jal` at 0x111c).
  Calls `gfx_flow_alloc` via direct with a0=[[a0+32]:8+22256], a1=([[a0+32]:8+736]:8 | 0x100000), a2=0x1ffff, a3=0x800, a4=0x2710, a5=sym(odsyHiwaterInterrupt), a6=[a0+32]:8, a7=0x1 (`jal` at 0x1148).
  Calls `us_delay` via direct with a0=0x5, a1=?, a2=[[a0+32]:8+736]:8, a3=? (`jal` at 0x116c).
  Calls `OdsyInit32kSlotMask` via direct with a0=[a0+32]:8+6112, a1=0x0, a2=?, a3=? (`jal` at 0x118c).
  Calls `OdsyAlloc32kSlot` via direct with a0=[a0+32]:8+6112, a1=?, a2=?, a3=? (`jal` at 0x11a4).
  Calls `OdsyAlloc32kSlot` via direct with a0=[a0+32]:8+6112, a1=?, a2=?, a3=? (`jal` at 0x11ac).
  Calls `odsyInitMM` via direct with a0=[a0+32]:8, a1=?, a2=?, a3=? (`jal` at 0x11d0).
  Calls `odsyInitDMA` via direct with a0=[[a0+32]:8+702]:2, a1=?, a2=?, a3=? (`jal` at 0x11d8).
  Calls `odsyInitRetrace` via direct with a0=[a0+32]:8, a1=?, a2=?, a3=? (`jal` at 0x11ec).
  Calls `odsyInitInterrupts` via direct with a0=[[a0+32]:8+702]:2, a1=?, a2=?, a3=? (`jal` at 0x11f4).
  Calls `splhi` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x11fc).
  Calls `gfx_flow_am_i_attached` via direct with a0=[[a0+32]:8+720]:8, a1=[[a0+32]:8+720]:8, a2=?, a3=? (`jal` at 0x1220).
  Calls `splx` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1230).
  Calls `odsyZeroOut` via direct with a0=[a0+32]:8, a1=?, a2=?, a3=? (`jal` at 0x1238).
  Calls `splhi` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1240).
  Calls `gfx_flow_am_i_attached` via direct with a0=[[a0+32]:8+720]:8, a1=[[a0+32]:8+720]:8, a2=?, a3=? (`jal` at 0x1268).
  Calls `gfx_flow_detach_me` via direct with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=[[a0+32]:8+736]:8, a3=? (`jal` at 0x1294).
  Calls `splx` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x12a0).
  Calls `psema` via direct with a0=[a0+32]:8+56, a1=0x219, a2=[[a0+32]:8+4640], a3=?, a5=[a0+32]:8 (`jal` at 0x1304).
  Calls `us_delay` via direct with a0=0x2, a1=?, a2=?, a3=?, a5=[a0+32]:8 (`jal` at 0x1324).
  Calls `gfx_flow_attach_me` via direct with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=?, a3=? (`jal` at 0x1348).
  Calls `gfx_flow_credit_tnum_get` via direct with a0=[[a0+32]:8+720]:8, a1=?, a2=?, a3=? (`jal` at 0x1358).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=[[a0+32]:8+4640], a3=? (`jal` at 0x13ac).
  Calls `init_sema` via direct with a0=?, a1=0x0, a2=0x0, a3=-0x1 (`jal` at 0x13c0).
  Calls `timeout` via direct with a0=sym(odsy_init_ddrncount_timeout), a1=?, a2=0x1f4, a3=? (`jal` at 0x13d0).
  Calls `psema` via direct with a0=?, a1=0x19, a2=?, a3=? (`jal` at 0x13dc).
  The `bne` at 0xf98 is taken when a2(=[[a0+32]:8+4640]) != 0 and falls through when a2(=[[a0+32]:8+4640]) == 0.
  The `bne` at 0xfa4 is taken when at(=[[a0+32]:8+72]:8) != s7(=a0) and falls through when at(=[[a0+32]:8+72]:8) == s7(=a0).
  The `beq` at 0xfd4 is taken when (v1(=[a0+48]) & 0x3) == 0 and falls through when (v1(=[a0+48]) & 0x3) != 0.
  The `beq` at 0xffc is taken when a1(=[[a0+32]:8+720]:8) == 0 and falls through when a1(=[[a0+32]:8+720]:8) != 0.
  The `beq` at 0x1018 is taken when v0(=ret(gfx_flow_am_i_attached)) == 0 and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` at 0x1070 is taken when a1(=[[a0+32]:8+720]:8) == 0 and falls through when a1(=[[a0+32]:8+720]:8) != 0.
  The `beq` at 0x10f0 is taken when v0(=ret(odsyInitCfifo)) == 0 and falls through when v0(=ret(odsyInitCfifo)) != 0.
  The `beq` at 0x110c is taken when s5(?) >= 0x5 (signed) and falls through when s5(?) < 0x5 (signed).
  The `beq` at 0x1114 is taken when s1(?) == 0 and falls through when s1(?) != 0.
  The `beq` at 0x1164 is taken when s6(?) == 0 and falls through when s6(?) != 0.
  The `bne` at 0x1174 is taken when s6(?) != 0 and falls through when s6(?) == 0.
  The `beq` at 0x1214 is taken when a1(=[[a0+32]:8+720]:8) == 0 and falls through when a1(=[[a0+32]:8+720]:8) != 0.
  The `beq` at 0x1228 is taken when v0(=ret(gfx_flow_am_i_attached)) == 0 and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` at 0x1260 is taken when a1(=[[a0+32]:8+720]:8) == 0 and falls through when a1(=[[a0+32]:8+720]:8) != 0.
  The `beq` at 0x1270 is taken when v0(=ret(gfx_flow_am_i_attached)) == 0 and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` at 0x131c is taken when a4(=[[a0+32]:8+104]) == 0 and falls through when a4(=[[a0+32]:8+104]) != 0.
  The `bne` at 0x1334 is taken when at(=[[a0+32]:8+104]) != 0 and falls through when at(=[[a0+32]:8+104]) == 0.
  The `beq` at 0x13ec is taken when v0(?) >= 0xb (signed) and falls through when v0(?) < 0xb (signed).
  The `bne` at 0x13fc is taken when a2(=[[a0+32]:8+4640]) != 0 and falls through when a2(=[[a0+32]:8+4640]) == 0.
  The `jr` at 0x12d0 returns with v0 = ?.

- `gf_OdsyStart` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`, 0x141c, 128 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `s7` (`ld` at 0x1424).
  Stores 4 bytes from `v0` to [a0+32]:8 +0x2dc (`sw` at 0x1430).
  Stores 2 bytes from `at` to [a0+32]:8 +0x2c4 (`sh` at 0x1438).
  Stores 4 bytes from `zero` to [a0+32]:8 +0x2d8 (`sw` at 0x143c).
  Stores 4 bytes from `zero` to [a0+32]:8 +0x54 (`sw` at 0x1440).
  Stores 4 bytes from `zero` to [a0+32]:8 +0x78 (`sw` at 0x1444).
  Stores 4 bytes from `zero` to [a0+32]:8 +0x68 (`sw` at 0x1448).
  Stores 4 bytes from `zero` to [a0+32]:8 +0x10 (`sw` at 0x144c).
  Stores 8 bytes from `zero` to [a0+32]:8 +0x8 (`sd` at 0x1450).
  Loads 8 bytes from [a0+32]:8 +0x2f0 into `a0` (`ld` at 0x1460).
  Stores 4 bytes from `v0` to [a0+32]:8 +0x28d4 (`sw` at 0x1464).
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `a2` (`ld` at 0x1468).
  Stores 4 bytes from `a1` to [a0+32]:8 +0x28d0 (`sw` at 0x1474).
  Stores 4 bytes from `a1` to [[a0+32]:8+736]:8 +0x4034 (`sw` at 0x1478).
  Loads 4 bytes from [a0+32]:8 +0x28d4 into `v1` (`lw` at 0x1480).
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `a0` (`ld` at 0x1484).
  Stores 4 bytes from `v1` to [[a0+32]:8+736]:8 +0x403c (`sw` at 0x1498).
  Calls `odsyInitDrawables` via direct with a0=[a0+32]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1454).
  Calls `kvtophys` via direct with a0=[[a0+32]:8+752]:8, a1=?, a2=?, a3=? (`jal` at 0x145c).
  The `jr` at 0x1494 returns with v0 = 0x0.

- `odsyLLPReset` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`, 0x149c, 128 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x56f0 into `a2` (`lw` at 0x149c).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `at` (`ld` at 0x14a4).
  Loads 4 bytes from [a0+736]:8 +0x24 into `at` (`lw` at 0x14ac).
  Stores 4 bytes from `v0` to ? (base unknown) (`sw` at 0x14d8).
  Loads 4 bytes from a0 (arg0 at entry) +0x2c0 into `a2` (`lw` at 0x14dc).
  Loads 4 bytes from table(0x900000001000010c) +0x0 into `a3` (`lw` at 0x14f0).
  Stores 4 bytes from `zero` to table(0x9000000010000134) +0x0 (`sw` at 0x1504).
  Stores 4 bytes from `ra` to ? (base unknown) (`sw` at 0x1510).
  Calls `xwidget_reset` via direct with a0=[a0+22256], a1=a1 at entry (arg1), a2=[a0+22256], a3=a3 at entry (arg3) (`jal` at 0x14bc).
  Calls `odsy_usdelay` via direct with a0=a0 at entry (arg0), a1=0x2710, a2=table(0x9000000010000000), a3=entry(0x900000001000010c) (`jal` at 0x1500).
  The `beq` at 0x14b4 is taken when a2(=[a0+22256]) == 0 and falls through when a2(=[a0+22256]) != 0.
  The `jr` at 0x14d4 returns with v0 = ?.

- `odsyLowLevelReset` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`, 0x151c, 740 bytes) Inferred.
  Loads 4 bytes from abs 0x9000000010000004 into `at` (`lw` at 0x1528).
  Loads 4 bytes from a0 (arg0 at entry) +0x2874 into `a6` (`lw` at 0x153c).
  Loads 4 bytes from abs 0x900000001000007c into `v0` (`lw` at 0x156c).
  Stores 4 bytes from `v0` to abs 0x900000001000007c (`sw` at 0x1584).
  Loads 4 bytes from ? (base unknown) into `v0` (`lw` at 0x1590).
  Stores 4 bytes from `v0` to ? (base unknown) (`sw` at 0x1598).
  Loads 4 bytes from ? (base unknown) into `a2` (`lw` at 0x15c0).
  Loads 4 bytes from ? (base unknown) into `at` (`lw` at 0x15d0).
  Loads 4 bytes from abs 0x9000000010000024 into `a4` (`lw` at 0x1600).
  Stores 4 bytes from `a1` to abs 0x9000000010000024 (`sw` at 0x164c).
  Loads 4 bytes from table(0x900000001000010c) +0x0 into `v1` (`lw` at 0x1650).
  Stores 4 bytes from `a2` to table(0x900000001000010c) +0x0 (`sw` at 0x1708).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x2888 (`sw` at 0x1710, 0x173c, 0x17cc).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `a7` (`ld` at 0x171c).
  Stores 4 bytes from `a5` to a0 (arg0 at entry) +0x2888 (`sw` at 0x1728).
  Stores 4 bytes from `a5` to [a0+736]:8 +0x100c (`sw` at 0x1734).
  Stores 4 bytes from `a2` to ? (base unknown) (`sw` at 0x174c).
  Stores 4 bytes from `v1` to abs 0x9000000010000024 (`sw` at 0x1754).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `v0` (`ld` at 0x1758).
  Loads 4 bytes from a0 (arg0 at entry) +0x2884 into `at` (`lw` at 0x175c).
  Stores 4 bytes from `at` to [a0+736]:8 +0x1004 (`sw` at 0x1760).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `a2` (`ld` at 0x1764).
  Loads 4 bytes from a0 (arg0 at entry) +0x2874 into `a0` (`lw` at 0x1768).
  Stores 4 bytes from `a0` to [a0+736]:8 +0x24 (`sw` at 0x176c).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `v1` (`ld` at 0x1770).
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x2884 (`sw` at 0x1778).
  Stores 4 bytes from `v0` to [a0+736]:8 +0x1004 (`sw` at 0x177c).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `at` (`ld` at 0x1780).
  Loads 4 bytes from a0 (arg0 at entry) +0x2874 into `s0` (`lw` at 0x1784).
  Stores 4 bytes from `s0` to [a0+736]:8 +0x24 (`sw` at 0x1788).
  Stores 4 bytes from `a0` to a0 (arg0 at entry) +0x2888 (`sw` at 0x17ac).
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x2888 (`sw` at 0x17b8).
  Stores 4 bytes from `v0` to [a0+736]:8 +0x100c (`sw` at 0x17c4).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `a1` (`ld` at 0x17c8).
  Stores 4 bytes from `zero` to [a0+736]:8 +0x100c (`sw` at 0x17d8).
  Calls `odsy_usdelay` via direct with a0=a0 at entry (arg0), a1=0x30d40, a2=?, a3=0x9000000010000024, a4=table(0x9000000010000000), a5=0x200, a7=[a0+736]:8 (`jal` at 0x1730).
  Calls `us_delay` via direct with a0=0x30d40, a1=0x30d40, a2=?, a3=0x9000000010000024, a4=table(0x9000000010000000), a5=0x9000000010000000, a7=[a0+736]:8 (`jal` at 0x17c0).
  Calls `odsyLLPReset` via direct with a0=a0 at entry (arg0), a1=[a0+736]:8, a2=?, a3=? (`jal` at 0x17d4).
  Calls `odsy_usdelay` via direct with a0=a0 at entry (arg0), a1=0x3e8, a2=?, a3=? (`jal` at 0x17e0).
  The `beq` at 0x1564 is taken when t0(=0x4) >= at(?) (unsigned) and falls through when t0(=0x4) < at(?) (unsigned).
  The `beq` at 0x15a4 is taken when a0(?) >= 0x10 (signed) and falls through when a0(?) < 0x10 (signed).
  The `beq` at 0x15ac is taken when a6(?) == a0(?) and falls through when a6(?) != a0(?).
  The `beq` at 0x15c8 is taken when (a2(?) & a4(=0xffffffff80000000)) == 0 and falls through when (a2(?) & a4(=0xffffffff80000000)) != 0.
  The `beq` at 0x15d8 is taken when (at(?) & 0x20) == 0 and falls through when (at(?) & 0x20) != 0.
  The `bne` at 0x15e0 is taken when v0(?) != 0 and falls through when v0(?) == 0.
  The `beq` at 0x15ec is taken when a0(?) >= 0x10 (signed) and falls through when a0(?) < 0x10 (signed).
  The `beq` at 0x1718 is taken when t0(?) == 0 and falls through when t0(?) != 0.
  The `jr` at 0x1790 returns with v0 = 0x400000.

- `odsyReset` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`, 0x1800, 1092 bytes) Inferred.
  Stores 4 bytes from `zero` to ? (base unknown): 46 such accesses, including `sw` at 0x1828, 0x18cc, 0x18dc.
  Stores 2 bytes from `zero` to ? (base unknown) (`sh` at 0x1830).
  Loads 8 bytes from ? (base unknown) into `at`: 4 such accesses, including `ld` at 0x183c, 0x18fc, 0x1944.
  Stores 4 bytes from `a5` to ? (base unknown): 5 such accesses, including `sw` at 0x1864, 0x1868, 0x186c.
  Stores 4 bytes from `a4` to ? (base unknown) (`sw` at 0x1874, 0x1b18, 0x1b24).
  Stores 2 bytes from `a3` to ? (base unknown) (`sh` at 0x187c).
  Stores 2 bytes from `a2` to ? (base unknown) (`sh` at 0x1884).
  Loads 8 bytes from ? (base unknown) into `a0`: 7 such accesses, including `ld` at 0x18a8, 0x18d8, 0x1920.
  Loads 8 bytes from ? (base unknown) into `a1` (`ld` at 0x18c8, 0x1914, 0x195c).
  Stores 4 bytes from `s1` to ? (base unknown): 5 such accesses, including `sw` at 0x18d4, 0x18e0, 0x1a5c.
  Loads 8 bytes from ? (base unknown) into `v1`: 5 such accesses, including `ld` at 0x18e4, 0x192c, 0x1974.
  Loads 8 bytes from ? (base unknown) into `v0`: 5 such accesses, including `ld` at 0x18f0, 0x1938, 0x1980.
  Loads 8 bytes from ? (base unknown) into `a2`: 4 such accesses, including `ld` at 0x1908, 0x1950, 0x1a24.
  Loads 4 bytes from ? (base unknown) into `a1`: 4 such accesses, including `lw` at 0x1998, 0x1a60, 0x1a84.
  Stores 4 bytes from `a1` to ? (base unknown) (`sw` at 0x19c0, 0x1a2c, 0x1a30).
  Stores 4 bytes from `v1` to ? (base unknown) (`sw` at 0x19e0, 0x19e4, 0x1c40).
  Loads 4 bytes from ? (base unknown) into `at` (`lw` at 0x19e8, 0x1bb8, 0x1c18).
  Loads 4 bytes from ? (base unknown) into `a3` (`lw` at 0x1ae4).
  Loads 8 bytes from ? (base unknown) into `a4` (`ld` at 0x1ae8).
  Stores 4 bytes from `a3` to ? (base unknown) (`sw` at 0x1af8, 0x1b04).
  Loads 4 bytes from ? (base unknown) into `a4` (`lw` at 0x1b08).
  Loads 8 bytes from ? (base unknown) into `a5` (`ld` at 0x1b0c).
  Loads 8 bytes from ? (base unknown) into `a7` (`ld` at 0x1b28).
  Loads 4 bytes from ? (base unknown) into `a6` (`lw` at 0x1b2c).
  Stores 4 bytes from `a6` to ? (base unknown) (`sw` at 0x1b30).
  Loads 4 bytes from ? (base unknown) into `a5` (`lw` at 0x1b34).
  Loads 8 bytes from ? (base unknown) into `a6` (`ld` at 0x1b38).
  Loads 8 bytes from ? (base unknown) into `ra` (`ld` at 0x1b54, 0x1b88).
  Loads 8 bytes from ? (base unknown) into `s2` (`ld` at 0x1b5c, 0x1b90).
  Stores 4 bytes from `at` to ? (base unknown) (`sw` at 0x1b84, 0x1bc4, 0x1c28).
  Loads 8 bytes from ? (base unknown) into `s0` (`ld` at 0x1ba0).
  Loads 4 bytes from ? (base unknown) into `v0` (`lw` at 0x1bc8, 0x1bf4).
  Stores 4 bytes from `v0` to ? (base unknown) (`sw` at 0x1bd8, 0x1c04).
  Loads 4 bytes from ? (base unknown) into `a2` (`lw` at 0x1bdc, 0x1c08).
  Stores 4 bytes from `a2` to ? (base unknown) (`sw` at 0x1bf0, 0x1c14).
  Loads 4 bytes from ? (base unknown) into `v1` (`lw` at 0x1c2c).
  Calls `bzero` via direct with a0=?, a1=0x1f4, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1844).
  Calls `strncpy` via direct with a0=?, a1=sym(.rodata), a2=0x10, a3=? (`jal` at 0x1858).
  Calls `odsyLowLevelReset` via direct with a0=?, a1=?, a2=0x500, a3=0x400, a4=0x1f4, a5=-0x1 (`jal` at 0x188c).
  Calls `odsyGatherInfo` via direct with a0=a0 at entry (arg0), a1=0x1, a2=?, a3=? (`jal` at 0x1898).
  Calls `odsyMMinit` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x18a4).
  Calls `odsyInitDBE` via direct with a0=?, a1=sym(odsy_default_timing1), a2=0x1, a3=? (`jal` at 0x18b4).
  Calls `odsyGatherInfo` via direct with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=? (`jal` at 0x18c0).
  Calls `printf` via direct with a0=sym(.rodata), a1=?, a2=0x4, a3=? (`jal` at 0x1a7c).
  Calls `printf` via direct with a0=sym(.rodata), a1=?, a2=0x2, a3=? (`jal` at 0x1aa4).
  Calls `printf` via direct with a0=sym(.rodata), a1=?, a2=0x80, a3=? (`jal` at 0x1ad0).
  Calls `odsy_usdelay` via direct with a0=?, a1=0x190, a2=?, a3=? (`jal` at 0x1adc).
  Calls `odsy_usdelay` via direct with a0=?, a1=0x190, a2=?, a3=? (`jal` at 0x1b00).
  Calls `odsy_usdelay` via direct with a0=?, a1=0x190, a2=?, a3=? (`jal` at 0x1b20).
  Calls `odsy_usdelay` via direct with a0=?, a1=0x190, a2=?, a3=? (`jal` at 0x1b4c).
  The `beq` at 0x1a6c is taken when a1(?) == at(=0x2) and falls through when a1(?) != at(=0x2).
  The `beq` at 0x1a74 is taken when a0(?) == a2(=0x4) and falls through when a0(?) != a2(=0x4).
  The `beq` at 0x1a94 is taken when a1(?) == a2(=0x2) and falls through when a1(?) != a2(=0x2).
  The `beq` at 0x1a9c is taken when a0(?) == at(=0x3) and falls through when a0(?) != at(=0x3).
  The `beq` at 0x1ab8 is taken when a1(?) == v0(=0x20) and falls through when a1(?) != v0(=0x20).
  The `beq` at 0x1ac0 is taken when a0(?) == v1(=0x40) and falls through when a0(?) != v1(=0x40).
  The `beq` at 0x1ac8 is taken when a0(?) == a2(=0x80) and falls through when a0(?) != a2(=0x80).
  The `jr` at 0x1bb0 returns with v0 = ?.

- `odsyInitCfifo` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`, 0x1c44, 764 bytes) Inferred.
  Loads 8 bytes from ? (base unknown) into `s1` (`ld` at 0x1c6c).
  Loads 8 bytes from ? (base unknown) into `v0` (`ld` at 0x1c78).
  Loads 4 bytes from ? (base unknown) into `v0` (`lw` at 0x1c88).
  Stores 4 bytes from `v0` to ? (base unknown) (`sw` at 0x1c90, 0x1f24, 0x1f28).
  Loads 8 bytes from ? (base unknown) into `a0`: 7 such accesses, including `ld` at 0x1c94, 0x1e10, 0x1e44.
  Stores 4 bytes from `a6` to table(0x110000) +0x0 (`sw` at 0x1ce4).
  Stores 4 bytes from `zero` to table(0x110000) +0x0 (`sw` at 0x1cec).
  Stores 4 bytes from `a5` to table(0x110000) +0x0 (`sw` at 0x1cf8).
  Stores 8 bytes from `a4` to table(0x110000) +0x0 (`sd` at 0x1d00).
  Stores 8 bytes from `a3` to table(0x110000) +0x0 (`sd` at 0x1d04).
  Stores 8 bytes from `a2` to table(0x110000) +0x0 (`sd` at 0x1d08, 0x1df0).
  Stores 8 bytes from `a1` to table(0x110000) +0x0 (`sd` at 0x1d0c).
  Stores 8 bytes from `a0` to table(0x110000) +0x0 (`sd` at 0x1d14).
  Stores 4 bytes from `v1` to table(0x110000) +0x0 (`sw` at 0x1d1c, 0x1d8c).
  Loads 8 bytes from ? (base unknown) into `v1` (`ld` at 0x1d48, 0x1e3c, 0x1f14).
  Loads 4 bytes from table(0x201594) +0x0 into `at` (`lw` at 0x1d5c).
  Stores 4 bytes from `a3` to table(0x110000) +0x0 (`sw` at 0x1d70).
  Stores 4 bytes from `a2` to table(0x110000) +0x0 (`sw` at 0x1d78).
  Loads 2 bytes from ? (base unknown) into `at` (`lhu` at 0x1da8).
  Stores 4 bytes from `at` to table(0x110000) +0x0 (`sw` at 0x1dcc).
  Loads 8 bytes from ? (base unknown) into `a3` (`ld` at 0x1ddc).
  Loads 4 bytes from ? (base unknown) into `at` (`lw` at 0x1dfc).
  Stores 4 bytes from `at` to ? (base unknown) (`sw` at 0x1e0c).
  Loads 8 bytes from ? (base unknown) into `a1` (`ld` at 0x1e2c).
  Stores 4 bytes from `a0` to ? (base unknown) (`sw` at 0x1e34, 0x1e38).
  Loads 4 bytes from ? (base unknown) into `v1` (`lw` at 0x1e40).
  Loads 4 bytes from ? (base unknown) into `a2` (`lw` at 0x1e88).
  Stores 4 bytes from `a2` to ? (base unknown) (`sw` at 0x1e94).
  Loads 8 bytes from ? (base unknown) into `a6` (`ld` at 0x1eb4).
  Stores 4 bytes from `a5` to ? (base unknown) (`sw` at 0x1ebc, 0x1ec0).
  Loads 8 bytes from ? (base unknown) into `a4` (`ld` at 0x1ec4).
  Loads 4 bytes from ? (base unknown) into `a4` (`lw` at 0x1ec8).
  Loads 4 bytes from ? (base unknown) into `a7` (`lw` at 0x1f00).
  Loads 8 bytes from ? (base unknown) into `at` (`ld` at 0x1f30).
  Stores 4 bytes from `zero` to ? (base unknown) (`sw` at 0x1f34, 0x1f3c).
  Calls `splhi` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1c7c).
  Calls `gfx_flow_am_i_attached` via direct with a0=?, a1=ret(splhi), a2=?, a3=? (`jal` at 0x1ca0).
  Calls `splx` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1cb0).
  Calls `odsy_usdelay` via direct with a0=?, a1=0x7d0, a2=0x6b300005e50, a3=0x6b100000100, a4=0x6b000000000, a5=0xfffffff, a6=0x10854 (`jal` at 0x1d28).
  Calls `splhi` via direct with a0=0x5, a1=0x40008000, a2=0x7f03b9aca00, a3=table(0x110000), a4=sym(flag_desc) (`jal` at 0x1df4).
  Calls `gfx_flow_am_i_attached` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1e1c).
  Calls `gfx_flow_detach_me` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1e4c).
  Calls `splx` via direct with a0=ret(splhi), a1=?, a2=?, a3=? (`jal` at 0x1e54).
  Calls `splhi` via direct with a0=?, a1=0x40008000, a2=0x26000000, a3=0x2e000000, a4=sym(flag_desc), a6=0x0 (`jal` at 0x1e80).
  Calls `gfx_flow_am_i_attached` via direct with a0=?, a1=?, a2=?, a3=-0x3 (`jal` at 0x1ea4).
  Calls `gfx_flow_detach_me` via direct with a0=?, a1=?, a2=?, a3=?, a5=0x1 (`jal` at 0x1ed4).
  Calls `splx` via direct with a0=ret(splhi), a1=?, a2=?, a3=? (`jal` at 0x1edc).
  Calls `gfx_flow_attach_me` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1ef4).
  Calls `gfx_flow_credit_tnum_get` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1f04).
  The `beq` at 0x1c74 is taken when a1 == 0 and falls through when a1 != 0.
  The `beq` at 0x1c98 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `beq` at 0x1ca8 is taken when v0(=ret(gfx_flow_am_i_attached)) == 0 and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `bne` at 0x1d64 is taken when at(=entry(0x201594)) != v1(=0x3d0046) and falls through when at(=entry(0x201594)) == v1(=0x3d0046).
  The `bgez` at 0x1dc8 is taken when a0(?) >= 0 (signed) and falls through when a0(?) < 0 (signed).
  The `bne` at 0x1dd4 is taken when a6(?) < 0x800 (signed) and falls through when a6(?) >= 0x800 (signed).
  The `beq` at 0x1dec is taken when s2(=a1) == 0 and falls through when s2(=a1) != 0.
  The `beq` at 0x1e14 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `beq` at 0x1e24 is taken when v0(=ret(gfx_flow_am_i_attached)) == 0 and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` at 0x1e78 is taken when s2(=a1) == 0 and falls through when s2(=a1) != 0.
  The `beq` at 0x1e9c is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `beq` at 0x1eac is taken when v0(=ret(gfx_flow_am_i_attached)) == 0 and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `jr` at 0x1e70 returns with v0 = one of 0x0, 0x1.

- `odsyInitDMA` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`, 0x1f40, 240 bytes) Inferred.
  Loads 8 bytes from ? (base unknown) into `v1` (`ld` at 0x1f90).
  Stores 8 bytes from `zero` to ? (base unknown): 8 such accesses, including `sd` at 0x1f94, 0x1f9c, 0x1fa4.
  Loads 8 bytes from ? (base unknown) into `v0` (`ld` at 0x1f98).
  Loads 8 bytes from ? (base unknown) into `at` (`ld` at 0x1fa0, 0x1fdc).
  Loads 8 bytes from ? (base unknown) into `ra` (`ld` at 0x1fa8, 0x1fe4).
  Loads 8 bytes from ? (base unknown) into `a1` (`ld` at 0x1fb8).
  Stores 4 bytes from `v0` to ? (base unknown) (`sw` at 0x1fbc, 0x1fe0).
  Stores 8 bytes from `a1` to ? (base unknown) (`sd` at 0x1fc8).
  Stores 2 bytes from `a0` to ? (base unknown) (`sh` at 0x1fd0).
  Stores 8 bytes from `at` to ? (base unknown) (`sd` at 0x1ff0).
  Stores 2 bytes from `s3` to ? (base unknown) (`sh` at 0x1ff8).
  Stores 4 bytes from `zero` to ? (base unknown): 4 such accesses, including `sw` at 0x2000, 0x2004, 0x2008.
  Calls `init_mutex` via direct with a0=?, a1=0x0, a2=0x0, a3=-0x1 (`jal` at 0x1f6c).
  Calls `init_sv` via direct with a0=?, a1=0x0, a2=0x0, a3=-0x1 (`jal` at 0x1f88).
  Calls `OdsyAlloc32kSlot` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1fb0).
  Calls `OdsyAlloc32kSlot` via direct with a0=?, a1=?, a2=(ret(OdsyAlloc32kSlot) + ret(OdsyAlloc32kSlot)), a3=? (`jal` at 0x1fd4).
  The `jr` at 0x2028 returns with v0 = (ret(OdsyAlloc32kSlot) + ret(OdsyAlloc32kSlot)).

- `odsyInitInterrupts` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`, 0x2030, 752 bytes) Inferred.
  Loads 8 bytes from ? (base unknown) into `t1` (`ld` at 0x2044, 0x20bc, 0x2164).
  Loads 8 bytes from ? (base unknown) into `t2` (`ld` at 0x2048).
  Stores 4 bytes from `t1` to ? (base unknown): 4 such accesses, including `sw` at 0x2054, 0x2058, 0x2158.
  Loads 4 bytes from ? (base unknown) into `v0` (`lw` at 0x2060).
  Loads 2 bytes from ? (base unknown) into `a0` (`lh` at 0x206c, 0x2100, 0x211c).
  Loads 8 bytes from ? (base unknown) into `t0` (`ld` at 0x2094, 0x2160).
  Stores 4 bytes from `v0` to ? (base unknown) (`sw` at 0x20b0, 0x22fc).
  Stores 4 bytes from `t0` to ? (base unknown): 5 such accesses, including `sw` at 0x20c8, 0x20cc, 0x2170.
  Loads 4 bytes from ? (base unknown) into `a7` (`lw` at 0x20d0).
  Loads 8 bytes from ? (base unknown) into `a7` (`ld` at 0x20e0).
  Stores 4 bytes from `a0` to ? (base unknown): 5 such accesses, including `sw` at 0x20ec, 0x20f0, 0x21d8.
  Loads 4 bytes from ? (base unknown) into `at` (`lw` at 0x20f8).
  Loads 2 bytes from ? (base unknown) into `a3` (`lh` at 0x210c).
  Loads 2 bytes from ? (base unknown) into `t1` (`lh` at 0x2134).
  Loads 8 bytes from ? (base unknown) into `at` (`ld` at 0x214c).
  Loads 4 bytes from ? (base unknown) into `a3` (`lw` at 0x2178).
  Stores 4 bytes from `a3` to ? (base unknown) (`sw` at 0x21d0, 0x22ec).
  Loads 8 bytes from ? (base unknown) into `a0` (`ld` at 0x21e4, 0x2230).
  Stores 4 bytes from `at` to ? (base unknown): 4 such accesses, including `sw` at 0x21f0, 0x21f4, 0x2314.
  Loads 4 bytes from ? (base unknown) into `t1` (`lw` at 0x21f8, 0x226c).
  Stores 4 bytes from `a6` to ? (base unknown) (`sw` at 0x2244).
  Loads 8 bytes from ? (base unknown) into `a1` (`ld` at 0x2258).
  Stores 4 bytes from `a5` to ? (base unknown) (`sw` at 0x22e4).
  Stores 4 bytes from `a1` to ? (base unknown) (`sw` at 0x22f4).
  Loads 8 bytes from ? (base unknown) into `v0` (`ld` at 0x2308).
  The `jr` at 0x2318 returns with v0 = ?.

- `odsyDisableInterrupts` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`, 0x2320, 96 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x2878 into `at` (`lw` at 0x2320).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `v0` (`ld` at 0x2328, 0x2370).
  Stores 4 bytes from `at` to a0 (arg0 at entry) +0x2878 (`sw` at 0x2334).
  Stores 4 bytes from `at` to [a0+736]:8 +0x34 (`sw` at 0x2338).
  Loads 4 bytes from a0 (arg0 at entry) +0x2894 into `v1` (`lw` at 0x2340).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `a1` (`ld` at 0x2360).
  Stores 4 bytes from `v1` to a0 (arg0 at entry) +0x2894 (`sw` at 0x2368).
  Stores 4 bytes from `v1` to [a0+736]:8 +0x1044 (`sw` at 0x236c).
  Stores 4 bytes from `at` to [a0+736]:8 +0x103c (`sw` at 0x237c).
  The `jr` at 0x2378 returns with v0 = [a0+736]:8.

- `odsy_DCDResetDone` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`, 0x2380, 120 bytes) Inferred.
  Stores 1 byte from `at` to a0 (arg0 at entry) +0x20 (`sb` at 0x2384).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a0` (`ld` at 0x23e0).
  Calls `odsy_i2cDDCRegRead` via direct with a0=a0 at entry (arg0), a1=0x3, a2=sp-48, a3=? (`jal` at 0x23a8).
  Calls `odsy_usdelay` via direct with a0=[a0+16]:8, a1=0x1f4, a2=?, a3=? (`jal` at 0x23dc).
  The `beq` at 0x23b8 is taken when (v1(?) & 0x2) == 0 and falls through when (v1(?) & 0x2) != 0.
  The `bne` at 0x23e8 is taken when s5(?) < 0x1388 (signed) and falls through when s5(?) >= 0x1388 (signed).
  The `jr` at 0x23d0 returns with v0 = one of 0x0, 0x1.

- `odsyInitDBE` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`, 0x23f8, 3960 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `s2` (`ld` at 0x2408).
  Loads 4 bytes from a0 (arg0 at entry) +0x5720 into `at` (`lw` at 0x2414, 0x26e8).
  Stores 8 bytes from `a5` to [a0+736]:8 +0x400000 (`sd` at 0x2454, 0x2464).
  Stores 8 bytes from `a0` to [a0+736]:8 +0x400000 (`sd` at 0x246c).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `a0`: 8 such accesses, including `ld` at 0x2478, 0x24ec, 0x275c.
  Loads 4 bytes from a0 (arg0 at entry) +0x5720 into `a5`: 10 such accesses, including `lw` at 0x247c, 0x24f0, 0x256c.
  Loads 4 bytes from [a0+736]:8 +0x23241c into `a4` (`lw` at 0x2490).
  Stores 4 bytes from `a4` to a0 (arg0 at entry) +0x5694 (`sw` at 0x2494).
  Loads 4 bytes from [a0+736]:8 +0x232414 into `a3` (`lw` at 0x2498).
  Stores 4 bytes from `a3` to a0 (arg0 at entry) +0x5698 (`sw` at 0x24a0).
  Loads 4 bytes from a0 (arg0 at entry) +0x5720 into `a4` (`lw` at 0x24dc, 0x2db4).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `v0` (`ld` at 0x24fc).
  Loads 4 bytes from [a0+736]:8 +0x23380c into `v0` (`lw` at 0x250c).
  Loads 2 bytes from a0 (arg0 at entry) +0x12a into `a4` (`lhu` at 0x2520).
  Loads 2 bytes from a0 (arg0 at entry) +0x134 into `at` (`lhu` at 0x2530).
  Stores 8 bytes from `a4` to [a0+736]:8 +0x400000: 6 such accesses, including `sd` at 0x2638, 0x26a0, 0x2820.
  Stores 8 bytes from `a3` to [a0+736]:8 +0x400000: 11 such accesses, including `sd` at 0x26c0, 0x2870, 0x2a04.
  Stores 8 bytes from `v1` to [a0+736]:8 +0x400000: 7 such accesses, including `sd` at 0x26c4, 0x26e4, 0x27e4.
  Stores 8 bytes from `at` to [a0+736]:8 +0x400000: 9 such accesses, including `sd` at 0x26c8, 0x2c14, 0x2ca0.
  Stores 8 bytes from `s2` to [a0+736]:8 +0x400000 (`sd` at 0x26cc).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `a3`: 5 such accesses, including `ld` at 0x26d0, 0x2bec, 0x2de8.
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x55f0 (`sw` at 0x26dc).
  Loads 8 bytes from a0 (arg0 at entry) +0x2828 into `a4`: 5 such accesses, including `ld` at 0x2738, 0x282c, 0x2a24.
  Loads 4 bytes from a0 (arg0 at entry) +0x55f0 into `a5`: 6 such accesses, including `lw` at 0x2794, 0x2bc4, 0x2dc0.
  Loads 2 bytes from a0 (arg0 at entry) +0x2830 into `a1` (`lhu` at 0x2798).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `a4`: 6 such accesses, including `ld` at 0x27bc, 0x2858, 0x2c40.
  Stores 4 bytes from `a3` to a0 (arg0 at entry) +0x55f0: 5 such accesses, including `sw` at 0x27c4, 0x309c, 0x30f0.
  Loads 4 bytes from a0 (arg0 at entry) +0x55f0 into `v1` (`lw` at 0x27e8, 0x2840).
  Loads 2 bytes from a0 (arg0 at entry) +0x2830 into `a4` (`lhu` at 0x27f4).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `a6` (`ld` at 0x2810, 0x3044).
  Stores 4 bytes from `v1` to a0 (arg0 at entry) +0x55f0: 4 such accesses, including `sw` at 0x2814, 0x2868, 0x2bf4.
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `at`: 6 such accesses, including `ld` at 0x2824, 0x3098, 0x3160.
  Loads 4 bytes from a0 (arg0 at entry) +0x55f0 into `a0` (`lw` at 0x2874).
  Stores 4 bytes from `a0` to a0 (arg0 at entry) +0x55f0 (`sw` at 0x2884).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x2828: 6 such accesses, including `sd` at 0x2888, 0x2ca4, 0x2ea0.
  Loads 8 bytes from a0 (arg0 at entry) +0x2828 into `a3`: 4 such accesses, including `ld` at 0x28cc, 0x2c5c, 0x2e58.
  Loads 2 bytes from a0 (arg0 at entry) +0x128 into `at` (`lhu` at 0x2924).
  Stores 1 byte from `v1` to a0 (arg0 at entry) +0x56e8 (`sb` at 0x2948).
  Stores 2 bytes from `v0` to a0 (arg0 at entry) +0x128 (`sh` at 0x2954).
  Stores 2 bytes from `a5` to a0 (arg0 at entry) +0x12a (`sh` at 0x2984).
  Stores 2 bytes from `a6` to a0 (arg0 at entry) +0x12c (`sh` at 0x29a4).
  Loads 4 bytes from a0 (arg0 at entry) +0x124 into `at` (`lw` at 0x29dc).
  Loads 8 bytes from a0 (arg0 at entry) +0x2828 into `v0` (`ld` at 0x2a80).
  Stores 1 byte from `a3` to a0 (arg0 at entry) +0x56e8 (`sb` at 0x2aec).
  Loads 2 bytes from a0 (arg0 at entry) +0x1b6 into `a4` (`lhu` at 0x2b00).
  Loads 2 bytes from a0 (arg0 at entry) +0x238 into `at` (`lhu` at 0x2b18).
  Loads 4 bytes from a0 (arg0 at entry) +0x5720 into `v1` (`lw` at 0x2ba0).
  Loads 2 bytes from a0 (arg0 at entry) +0x2830 into `a6` (`lhu` at 0x2bc8, 0x2dc4, 0x307c).
  Loads 4 bytes from a0 (arg0 at entry) +0x55f0 into `at`: 6 such accesses, including `lw` at 0x2c18, 0x2e14, 0x3180.
  Loads 2 bytes from a0 (arg0 at entry) +0x2830 into `a3` (`lhu` at 0x2c24, 0x2e20).
  Stores 4 bytes from `at` to a0 (arg0 at entry) +0x55f0: 6 such accesses, including `sw` at 0x2c44, 0x2e40, 0x31b8.
  Loads 4 bytes from a0 (arg0 at entry) +0x55f0 into `a4` (`lw` at 0x2c70, 0x2e6c, 0x3100).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `v1`: 6 such accesses, including `ld` at 0x2c88, 0x2e84, 0x30ac.
  Stores 4 bytes from `a4` to a0 (arg0 at entry) +0x55f0: 4 such accesses, including `sw` at 0x2c98, 0x2e94, 0x304c.
  Loads 4 bytes from a0 (arg0 at entry) +0x55f0 into `a6` (`lw` at 0x2ca8, 0x2ea4).
  Stores 4 bytes from `a5` to a0 (arg0 at entry) +0x55f0 (`sw` at 0x2cc0, 0x2ebc).
  Loads 8 bytes from a0 (arg0 at entry) +0x2828 into `at` (`ld` at 0x2ed8, 0x30b4).
  Loads 2 bytes from a0 (arg0 at entry) +0x2830 into `a2` (`lhu` at 0x3020, 0x3130, 0x3264).
  Loads 4 bytes from a0 (arg0 at entry) +0x55f0 into `a3` (`lw` at 0x3070, 0x30c8).
  Stores 8 bytes from `a6` to [a0+736]:8 +0x400000 (`sd` at 0x30a8).
  Loads 2 bytes from a0 (arg0 at entry) +0x2830 into `v1` (`lhu` at 0x318c, 0x32c0).
  Loads 4 bytes from a0 (arg0 at entry) +0x55f0 into `v0` (`lw` at 0x3218, 0x334c).
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x55f0 (`sw` at 0x3230, 0x3364).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0xa, a2=?, a3=? (`jal` at 0x2430).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0x0, a2=?, a3=?, a5=0x3ac0000100000000 (`jal` at 0x2474).
  Calls `odsy_i2c_init_port_handle` via direct with a0=a0+22176, a1=a0 at entry (arg0), a2=0x0, a3=? (`jal` at 0x24b0).
  Calls `odsy_i2c_init_port_handle` via direct with a0=a0+22216, a1=a0 at entry (arg0), a2=0x1, a3=? (`jal` at 0x24cc).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0xf, a2=?, a3=? (`jal` at 0x24e8).
  Calls `odsyConfigFb` via direct with a0=a0 at entry (arg0), a1=sp-248, a2=?, a3=?, a5=0x400, a6=0x500 (`jal` at 0x255c).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0xe, a2=?, a3=? (`jal` at 0x2578).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0xb, a2=0x30000001, a3=?, a7=0xffffffff (`jal` at 0x26a8).
  Calls `odsyBlankScreen` via direct with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=? (`jal` at 0x26fc).
  Calls `mutex_spinlock` via direct with a0=a0+10272, a1=?, a2=?, a3=?, a5=[a0+22304] (`jal` at 0x2730).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[a0+10280]:8 (`jal` at 0x274c).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x2758).
  Calls `vsema` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2768).
  Calls `psema` via direct with a0=a0+10256, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x277c).
  Calls `mutex_spinlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x278c).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a5=-0x2 (`jal` at 0x288c).
  Calls `vsema` via direct with a0=a0+10256, a1=a0+10256, a2=?, a3=?, a4=[a0+10280]:8 (`jal` at 0x28a4).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x28b0).
  Calls `mutex_spinlock` via direct with a0=a0+10272, a1=?, a2=?, a3=[[a0+736]:8+2302996], a4=[[a0+736]:8+2303004], a5=[a0+22304] (`jal` at 0x28c4).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=[a0+10280]:8, a4=a0+10256 (`jal` at 0x28e4).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x28f0).
  Calls `vsema` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2900).
  Calls `psema` via direct with a0=a0+10256, a1=0x19, a2=?, a3=?, a4=[a0+22304] (`jal` at 0x2914).
  Calls `odsy_i2cDDCRegRead` via direct with a0=?, a1=0x0, a2=sp-254, a3=? (`jal` at 0x2950).
  Calls `odsy_i2cDDCRegRead` via direct with a0=?, a1=0x7, a2=sp-255, a3=? (`jal` at 0x2980).
  Calls `add_to_inventory` via direct with a0=0x11, a1=0x3, a2=0x0, a3=0x0, a4=0x0 (`jal` at 0x29a0).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0xe, a2=?, a3=? (`jal` at 0x29bc).
  Calls `odsy_i2cProbe2b` via direct with a0=?, a1=a0+308, a2=?, a3=?, a4=[a0+298]:2, a5=0x400, a6=0x500 (`jal` at 0x29e8).
  Calls `mutex_spinlock` via direct with a0=a0+10272, a1=?, a2=?, a3=0x3a00800100000000, a5=[a0+22304] (`jal` at 0x2a1c).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[a0+10280]:8 (`jal` at 0x2a3c).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x2a48).
  Calls `vsema` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2a58).
  Calls `mutex_spinlock` via direct with a0=a0+10272, a1=?, a2=?, a3=?, a5=[a0+22304] (`jal` at 0x2a74).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0x2a94).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x2aa0).
  Calls `vsema` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2ab0).
  Calls `odsy_DCDResetDone` via direct with a0=?, a1=?, a2=?, a3=?, a4=[a0+298]:2, a5=0x400, a6=0x500 (`jal` at 0x2ac4).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=?, a1=0x0, a2=0x10, a3=0x1f, a5=0x400, a6=0x500 (`jal` at 0x2ae8).
  Calls `odsy_i2cDDCRegRead` via direct with a0=?, a1=0x5, a2=sp-256, a3=? (`jal` at 0x2af8).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=?, a1=0x0, a2=0x20, a3=? (`jal` at 0x2b10).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=?, a1=0x0, a2=0x30, a3=? (`jal` at 0x2b28).
  Calls `vsema` via direct with a0=a0+10256, a1=?, a2=?, a3=[a0+10280]:8, a4=a0+10256 (`jal` at 0x2b44).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2b50).
  Calls `psema` via direct with a0=a0+10256, a1=0x19, a2=?, a3=?, a5=[a0+22304] (`jal` at 0x2b64).
  Calls `odsyLoadTimingTable` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=? (`jal` at 0x2bac).
  Calls `mutex_spinlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2bbc).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a6=([a0+22000] | 0x2) (`jal` at 0x2cbc).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0x0, a2=0x30000001, a3=?, a7=0xffffffff (`jal` at 0x2cdc).
  Calls `psema` via direct with a0=a0+10256, a1=0x19, a2=?, a3=?, a5=[a0+22304] (`jal` at 0x2d18).
  Calls `vsema` via direct with a0=a0+10256, a1=?, a2=?, a3=? (`jal` at 0x2d28).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2d34).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0x0, a2=0x30000001, a3=?, a7=0xffffffff (`jal` at 0x2d58).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x2d94).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x2da8).
  Calls `mutex_spinlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2db8).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a6=([a0+22000] | 0x2) (`jal` at 0x2eb8).
  Calls `mutex_spinlock` via direct with a0=a0+10272, a1=?, a2=?, a3=[a0+736]:8+0x400000, a4=0x400000 (`jal` at 0x2ed0).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0x2ef0).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x2efc).
  Calls `vsema` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2f0c).
  Calls `psema` via direct with a0=a0+10256, a1=0x19, a2=?, a3=?, a5=[a0+22304] (`jal` at 0x2f20).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=?, a1=0x5, a2=?, a3=-0x21, a4=[a0+438]:2 (`jal` at 0x2f44).
  Calls `odsy_i2cProbe2b` via direct with a0=?, a1=a0+438, a2=?, a3=? (`jal` at 0x2f50).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=?, a1=0x5, a2=?, a3=? (`jal` at 0x2f70).
  Calls `odsy_i2cProbe2b` via direct with a0=?, a1=a0+568, a2=?, a3=? (`jal` at 0x2f7c).
  Calls `mutex_spinlock` via direct with a0=a0+10272, a1=?, a2=?, a3=?, a4=0x3a00c00100000000 (`jal` at 0x2f90).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=[a0+10280]:8, a4=a0+10256 (`jal` at 0x2fb0).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x2fbc).
  Calls `vsema` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2fcc).
  Calls `vsema` via direct with a0=a0+10256, a1=?, a2=?, a3=?, a4=[a0+10280]:8 (`jal` at 0x2fdc).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2fe8).
  Calls `vsema` via direct with a0=a0+10256, a1=?, a2=?, a3=? (`jal` at 0x2ff8).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3004).
  Calls `mutex_spinlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3014).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a5=-0x2 (`jal` at 0x3114).
  Calls `mutex_spinlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3124).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[a0+10280]:8, a5=-0x2 (`jal` at 0x322c).
  Calls `vsema` via direct with a0=a0+10256, a1=?, a2=?, a3=[a0+10280]:8, a4=a0+10256 (`jal` at 0x323c).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3248).
  Calls `mutex_spinlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3258).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[a0+10280]:8, a5=-0x2 (`jal` at 0x3360).
  The `beq` at 0x2424 is taken when at(=[a0+22304]) == 0 and falls through when at(=[a0+22304]) != 0.
  The `bne` at 0x243c is taken when v0(=ret(odsy_poll_dfifo_level)) != 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) == 0.
  The `bne` at 0x2460 is taken when a0(?) < 0x4 (signed) and falls through when a0(?) >= 0x4 (signed).
  The `bne` at 0x2480 is taken when v0(=ret(odsy_poll_dfifo_level)) != 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) == 0.
  The `beq` at 0x249c is taken when a5(=[a0+22304]) == 0 and falls through when a5(=[a0+22304]) != 0.
  The `bne` at 0x24b8 is taken when v0(=ret(odsy_i2c_init_port_handle)) != 0 and falls through when v0(=ret(odsy_i2c_init_port_handle)) == 0.
  The `bne` at 0x24d4 is taken when v0(=ret(odsy_i2c_init_port_handle)) != 0 and falls through when v0(=ret(odsy_i2c_init_port_handle)) == 0.
  The `beq` at 0x24e0 is taken when a4(=[a0+22304]) == 0 and falls through when a4(=[a0+22304]) != 0.
  The `bne` at 0x24f4 is taken when v0(=ret(odsy_poll_dfifo_level)) != 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) == 0.
  The `beq` at 0x2508 is taken when a5(=[a0+22304]) == 0 and falls through when a5(=[a0+22304]) != 0.
  The `beq` at 0x2518 is taken when a3(?) == 0 and falls through when a3(?) != 0.
  The `beq` at 0x2528 is taken when a4(=[a0+298]:2) == v0(=0x3) and falls through when a4(=[a0+298]:2) != v0(=0x3).
  The `beq` at 0x2534 is taken when at(=[a0+308]:2) == 0 and falls through when at(=[a0+308]:2) != 0.
  The `beq` at 0x2568 is taken when v1(=a2) == 0 and falls through when v1(=a2) != 0.
  The `beq` at 0x2570 is taken when a5(=[a0+22304]) == 0 and falls through when a5(=[a0+22304]) != 0.
  The `beq` at 0x2588 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `bne` at 0x2598 is taken when a4(?) != 0 and falls through when a4(?) == 0.
  The `bne` at 0x25a0 is taken when at(?) != 0 and falls through when at(?) == 0.
  The `beq` at 0x25a8 is taken when a5(=[a0+22304]) == 0 and falls through when a5(=[a0+22304]) != 0.
  The `beq` at 0x2610 is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `bne` at 0x2634 is taken when a0(?) < 0x20 (signed) and falls through when a0(?) >= 0x20 (signed).
  The `beq` at 0x2678 is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `bne` at 0x269c is taken when a0(?) < 0x8 (signed) and falls through when a0(?) >= 0x8 (signed).
  The `beq` at 0x26f0 is taken when at(=[a0+22304]) == 0 and falls through when at(=[a0+22304]) != 0.
  The `beq` at 0x2718 is taken when a5(=[a0+22304]) == 0 and falls through when a5(=[a0+22304]) != 0.
  The `beq` at 0x273c is taken when a4(=[a0+10280]:8) == 0 and falls through when a4(=[a0+10280]:8) != 0.
  The `beq` at 0x2760 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x27ac is taken when 0 >= a1(?) (unsigned) and falls through when 0 < a1(?) (unsigned).
  The `beq` at 0x2838 is taken when a1(?) == 0 and falls through when a1(?) != 0.
  The `beq` at 0x28d8 is taken when a3(=[a0+10280]:8) == 0 and falls through when a3(=[a0+10280]:8) != 0.
  The `beq` at 0x28f8 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `bne` at 0x2928 is taken when at(=[a0+296]:2) != 0 and falls through when at(=[a0+296]:2) == 0.
  The `bne` at 0x296c is taken when v0(=0x3) != a5(?) and falls through when v0(=0x3) == a5(?).
  The `beq` at 0x29b4 is taken when a5(=[a0+22304]) == 0 and falls through when a5(=[a0+22304]) != 0.
  The `beq` at 0x29cc is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `blez` at 0x29e0 is taken when at(=[a0+292]) <= 0 (signed) and falls through when at(=[a0+292]) > 0 (signed).
  The `bne` at 0x2a10 is taken when a5(=[a0+22304]) != 0 and falls through when a5(=[a0+22304]) == 0.
  The `beq` at 0x2a30 is taken when a4(=[a0+10280]:8) == 0 and falls through when a4(=[a0+10280]:8) != 0.
  The `beq` at 0x2a50 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x2a88 is taken when v0(=[a0+10280]:8) == 0 and falls through when v0(=[a0+10280]:8) != 0.
  The `beq` at 0x2aa8 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x2ad0 is taken when v0(=ret(odsy_DCDResetDone)) == 0 and falls through when v0(=ret(odsy_DCDResetDone)) != 0.
  The `beq` at 0x2b04 is taken when a4(=[a0+438]:2) == 0 and falls through when a4(=[a0+438]:2) != 0.
  The `beq` at 0x2b1c is taken when at(=[a0+568]:2) == 0 and falls through when at(=[a0+568]:2) != 0.
  The `beq` at 0x2ba4 is taken when v1(=[a0+22304]) == 0 and falls through when v1(=[a0+22304]) != 0.
  The `beq` at 0x2bdc is taken when 0 >= a6(?) (unsigned) and falls through when 0 < a6(?) (unsigned).
  The `beq` at 0x2c68 is taken when a6(?) == 0 and falls through when a6(?) != 0.
  The `beq` at 0x2d00 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x2d7c is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x2dd8 is taken when 0 >= a6(?) (unsigned) and falls through when 0 < a6(?) (unsigned).
  The `beq` at 0x2e64 is taken when a6(?) == 0 and falls through when a6(?) != 0.
  The `beq` at 0x2ee4 is taken when at(=[a0+10280]:8) == 0 and falls through when at(=[a0+10280]:8) != 0.
  The `beq` at 0x2f04 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x2fa4 is taken when a3(=[a0+10280]:8) == 0 and falls through when a3(=[a0+10280]:8) != 0.
  The `beq` at 0x2fc4 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x3034 is taken when 0 >= a2(?) (unsigned) and falls through when 0 < a2(?) (unsigned).
  The `beq` at 0x30c0 is taken when a2(?) == 0 and falls through when a2(?) != 0.
  The `beq` at 0x3144 is taken when 0 >= a2(?) (unsigned) and falls through when 0 < a2(?) (unsigned).
  The `beq` at 0x31d8 is taken when a2(?) == 0 and falls through when a2(?) != 0.
  The `beq` at 0x3278 is taken when 0 >= a2(?) (unsigned) and falls through when 0 < a2(?) (unsigned).
  The `beq` at 0x330c is taken when a2(?) == 0 and falls through when a2(?) != 0.
  The `jr` at 0x2724 returns with v0 = ?.

- `odsyInitHwWrRgn` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`, 0x3370, 296 bytes) Inferred.
  Loads 8 bytes from ((a0 << 0x3) + sym(flag_desc)) +0x7210 into `v0` (`ld` at 0x337c).
  Stores 8 bytes from `zero` to ? (base unknown) (`sd` at 0x33ac, 0x33d0).
  Stores 4 bytes from `zero` to ? (base unknown) (`sw` at 0x33c8).
  Stores 8 bytes from `a0` to ? (base unknown) (`sd` at 0x3400, 0x3418, 0x3434).
  Loads 8 bytes from ? (base unknown) into `v0` (`ld` at 0x346c).
  Stores 8 bytes from `v0` to ? (base unknown) (`sd` at 0x3494).
  Calls `printf` via direct with a0=sym(.rodata), a1=a0 at entry (arg0), a2=?, a3=? (`jal` at 0x3458).
  Calls `kmem_zalloc` via direct with a0=0x20000, a1=0x8800, a2=sym(flag_desc), a3=a3 at entry (arg3) (`jal` at 0x347c).
  The `beq` at 0x3388 is taken when v0(=[((a0 << 0x3) + sym(flag_desc))+29200]:8) == 0 and falls through when v0(=[((a0 << 0x3) + sym(flag_desc))+29200]:8) != 0.
  The `bne` at 0x33cc is taken when a0(?) < 0x4 (unsigned) and falls through when a0(?) >= 0x4 (unsigned).
  The `beq` at 0x33d4 is taken when v0(?) == 0 and falls through when v0(?) != 0.
  The `beq` at 0x33ec is taken when (v0(?) & 0xffff) == 0 and falls through when (v0(?) & 0xffff) != 0.
  The `bne` at 0x340c is taken when (a0(?) & 0xffff) != 0 and falls through when (a0(?) & 0xffff) == 0.
  The `beq` at 0x341c is taken when a1(?) >= 0x4 (unsigned) and falls through when a1(?) < 0x4 (unsigned).
  The `bne` at 0x3438 is taken when a1(?) < 0x4 (unsigned) and falls through when a1(?) >= 0x4 (unsigned).
  The `jr` at 0x3444 returns with v0 = ?.

- `odsy_teardown` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`, 0x3498, 160 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x2d8 into `at` (`lw` at 0x34bc).
  Stores 4 bytes from `at` to a0 (arg0 at entry) +0x2d8 (`sw` at 0x34cc).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `a0` (`ld` at 0x3500).
  Calls `psema` via direct with a0=a0+4648, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x34b4).
  Calls `vsema` via direct with a0=a0+4648, a1=?, a2=?, a3=? (`jal` at 0x34d4).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x34f4).
  Calls `odsyPrintRegs` via direct with a0=[a0+736]:8, a1=?, a2=?, a3=? (`jal` at 0x34fc).
  Calls `gthread_scan` via direct with a0=sym(GfxKiller), a1=sp-64, a2=0x9, a3=? (`jal` at 0x3518).
  Calls `vsema` via direct with a0=a0+4648, a1=?, a2=?, a3=? (`jal` at 0x3524).
  The `beq` at 0x34c8 is taken when at(=[a0+728]+1) == v0(=0x1) and falls through when at(=[a0+728]+1) != v0(=0x1).
  The `jr` at 0x34e4 returns with v0 = ret(vsema).

- `odsyPrintRegs` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`, 0x3538, 84 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x1064 into `s0` (`lw` at 0x3548).
  Loads 4 bytes from a0 (arg0 at entry) +0x1014 into `a2` (`lw` at 0x354c).
  Calls `cmn_err` via direct with a0=0x7, a1=sym(.rodata), a2=[a0+4116], a3=sym(flag_desc) (`jal` at 0x3558).
  Calls `cmn_err` via direct with a0=0x7, a1=sym(.rodata), a2=[a0+4196], a3=sym(flag_desc) (`jal` at 0x3574).
  The `jr` at 0x3584 returns with v0 = ret(cmn_err).

- `odsyXtErrorInterrupt` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)`, 0x0, 284 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `a0` (`ld` at 0x10).
  Loads 2 bytes from abs 0xffffffffffffc3a0 into `a3` (`lh` at 0x14).
  Loads 4 bytes from [a0+736]:8 +0xc into `a1` (`lw` at 0x18).
  Loads 4 bytes from [a0+736]:8 +0x44 into `a0` (`lw` at 0x24).
  Loads 4 bytes from ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0x10 into `v0` (`lw` at 0x30).
  Stores 4 bytes from `v0` to ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0x10 (`sw` at 0x48).
  Stores 4 bytes from `zero` to ? (base unknown) (`sw` at 0xa8).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `a3` (`ld` at 0xf4).
  Loads 4 bytes from [a0+736]:8 +0x1c into `a2` (`lw` at 0x100).
  Loads 4 bytes from [a0+736]:8 +0x44 into `a3` (`lw` at 0x10c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=([-0x3c60]:2 << 0x5), a5=a0 at entry (arg0) (`jal` at 0x70).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=([-0x3c60]:2 << 0x5), a5=a0 at entry (arg0) (`jal` at 0x8c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=([-0x3c60]:2 << 0x5), a5=a0 at entry (arg0) (`jal` at 0xbc).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata), a2=?, a3=one of 0x0, 0x1 (`jal` at 0xe0).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=[[a0+736]:8+28], a3=[[a0+736]:8+68], a5=a0 at entry (arg0) (`jal` at 0x108).
  The `bne` at 0x44 is taken when at(?) != 0 and falls through when at(?) == 0.
  The `bne` at 0x58 is taken when at(?) != 0 and falls through when at(?) == 0.
  The `beq` at 0x60 is taken when v0(?) == 0 and falls through when v0(?) != 0.
  The `bne` at 0xa4 is taken when a3(=one of 0x0, 0x1) != 0 and falls through when a3(=one of 0x0, 0x1) == 0.
  The `jr` at 0xac returns with v0 = ret(cmn_err).

- `odsyFlagInterrupt` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)`, 0x11c, 1048 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `at` (`ld` at 0x124).
  Loads 2 bytes from abs 0xffffffffffffc3a0 into `a0` (`lh` at 0x138).
  Loads 4 bytes from [a0+736]:8 +0x1014 into `s1` (`lw` at 0x13c).
  Loads 4 bytes from [a0+736]:8 +0x1034 into `at` (`lw` at 0x140).
  Loads 4 bytes from ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0x10 into `v0` (`lw` at 0x158).
  Stores 4 bytes from `v0` to ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0x10 (`sw` at 0x164).
  Stores 4 bytes from `s1` to ? (base unknown) (`sw` at 0x294).
  Loads 4 bytes from a0 (arg0 at entry) +0x56fc into `a3` (`lw` at 0x49c).
  Stores 4 bytes from `a3` to a0 (arg0 at entry) +0x56fc (`sw` at 0x4a8).
  Calls `odsyLowaterInterrupt` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x16c).
  Calls `odsyGenlockInterrupt` via direct with a0=a0 at entry (arg0), a1=0x40000000, a2=?, a3=? (`jal` at 0x19c).
  Calls `odsy_teardown` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x2a8).
  Calls `cmn_err` via direct with a0=0x5, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x2c8).
  Calls `cmn_err` via direct with a0=0x5, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x2e4).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x300).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x31c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x338).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x354).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x370).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x38c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x3a8).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x3c4).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x3e0).
  Calls `cmn_err` via direct with a0=0x5, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x3fc).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x418).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x434).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x450).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x46c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x488).
  Calls `cmn_err` via direct with a0=0x5, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+22268]+1 (`jal` at 0x4c0).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x4dc).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x4f8).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x514).
  The `beq` at 0x160 is taken when (s1(?) & 0x200) == 0 and falls through when (s1(?) & 0x200) != 0.
  The `bne` at 0x180 is taken when (s1(?) & v0(=0x2000000)) != 0 and falls through when (s1(?) & v0(=0x2000000)) == 0.
  The `beq` at 0x190 is taken when (s1(?) & v1(=0xffffffff80000000)) == 0 and falls through when (s1(?) & v1(=0xffffffff80000000)) != 0.
  The `bne` at 0x1b0 is taken when (s1(?) & a1(=0x40000000)) != 0 and falls through when (s1(?) & a1(=0x40000000)) == 0.
  The `bne` at 0x1bc is taken when (s1(?) & at(=0x20000000)) != 0 and falls through when (s1(?) & at(=0x20000000)) == 0.
  The `bne` at 0x1c8 is taken when (s1(?) & v0(=0x10000000)) != 0 and falls through when (s1(?) & v0(=0x10000000)) == 0.
  The `bne` at 0x1d4 is taken when (s1(?) & v1(=0x8000000)) != 0 and falls through when (s1(?) & v1(=0x8000000)) == 0.
  The `bne` at 0x1e0 is taken when (s1(?) & a1(=0x1000000)) != 0 and falls through when (s1(?) & a1(=0x1000000)) == 0.
  The `bne` at 0x1ec is taken when (s1(?) & at(=0x800000)) != 0 and falls through when (s1(?) & at(=0x800000)) == 0.
  The `bne` at 0x1f8 is taken when (s1(?) & v0(=0x400000)) != 0 and falls through when (s1(?) & v0(=0x400000)) == 0.
  The `bne` at 0x204 is taken when (s1(?) & v1(=0x200000)) != 0 and falls through when (s1(?) & v1(=0x200000)) == 0.
  The `bne` at 0x210 is taken when (s1(?) & a1(=0x100000)) != 0 and falls through when (s1(?) & a1(=0x100000)) == 0.
  The `bne` at 0x21c is taken when (s1(?) & at(=0x40000)) != 0 and falls through when (s1(?) & at(=0x40000)) == 0.
  The `bne` at 0x22c is taken when (s1(?) & v0(=0x3c000)) != 0 and falls through when (s1(?) & v0(=0x3c000)) == 0.
  The `bne` at 0x234 is taken when v1(?) != 0 and falls through when v1(?) == 0.
  The `bne` at 0x23c is taken when a1(?) != 0 and falls through when a1(?) == 0.
  The `bne` at 0x244 is taken when at(?) != 0 and falls through when at(?) == 0.
  The `bne` at 0x24c is taken when v0(?) != 0 and falls through when v0(?) == 0.
  The `bne` at 0x254 is taken when v1(?) != 0 and falls through when v1(?) == 0.
  The `bne` at 0x25c is taken when a1(?) != 0 and falls through when a1(?) == 0.
  The `bne` at 0x264 is taken when at(?) != 0 and falls through when at(?) == 0.
  The `bne` at 0x26c is taken when v0(?) != 0 and falls through when v0(?) == 0.
  The `bne` at 0x274 is taken when v1(?) != 0 and falls through when v1(?) == 0.
  The `bne` at 0x288 is taken when (a1(?) & at(=0x39f02587)) != 0 and falls through when (a1(?) & at(=0x39f02587)) == 0.
  The `beq` at 0x4a4 is taken when (s1(?) & 0x8) == 0 and falls through when (s1(?) & 0x8) != 0.
  The `jr` at 0x2b8 returns with v0 = ?.

- `odsyDmaInterrupt` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)`, 0x534, 64 bytes) Inferred.
  Loads 2 bytes from abs 0xffffffffffffc3a0 into `v0` (`lh` at 0x54c).
  Loads 4 bytes from ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0x10 into `ra` (`lw` at 0x55c).
  Stores 4 bytes from `ra` to ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0x10 (`sw` at 0x564).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x544).
  The `jr` at 0x56c returns with v0 = ([-0x3c60]:2 << 0x5).

- `odsySsyncInterrupt` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)`, 0x574, 72 bytes) Inferred.
  Loads 2 bytes from abs 0xffffffffffffc3a0 into `v1` (`lh` at 0x590).
  Loads 4 bytes from ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0x10 into `at` (`lw` at 0x5a4).
  Stores 4 bytes from `at` to ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0x10 (`sw` at 0x5b8).
  Calls `odsySwap_softsync_intr` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x580).
  Calls `odsyDMAWakeup` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x588).
  The `jr` at 0x5b4 returns with v0 = ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)).

- `odsyGenlockInterrupt` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)`, 0x5bc, 2888 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x5720 into `a1`: 4 such accesses, including `lw` at 0x5d0, 0x614, 0x910.
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `s2` (`ld` at 0x5f4).
  Loads 4 bytes from [a0+736]:8 +0x233e6c into `s2` (`lw` at 0x604).
  Loads 4 bytes from a0 (arg0 at entry) +0x5690 into `v1` (`lw` at 0x61c).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `v0` (`ld` at 0x628).
  Loads 4 bytes from [a0+736]:8 +0x233e64 into `v0` (`lw` at 0x634).
  Loads 4 bytes from a0 (arg0 at entry) +0x124 into `a2` (`lw` at 0x644, 0x670, 0x734).
  Loads 1 byte from a0 (arg0 at entry) +0x28ff into `a2` (`lbu` at 0x67c).
  Stores 1 byte from `a3` to a0 (arg0 at entry) +0x56e8 (`sb` at 0x690, 0x754).
  Loads 1 byte from a0 (arg0 at entry) +0x2903 into `a2` (`lbu` at 0x698).
  Loads 1 byte from a0 (arg0 at entry) +0x2907 into `a2` (`lbu` at 0x6a8).
  Loads 4 bytes from a0 (arg0 at entry) +0x5720 into `at`: 6 such accesses, including `lw` at 0x6b4, 0x778, 0x7c0.
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `a0`: 9 such accesses, including `ld` at 0x6c0, 0x784, 0x848.
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `v1` (`ld` at 0x6f4, 0xacc, 0xb00).
  Stores 8 bytes from `at` to [a0+736]:8 +0x400000: 7 such accesses, including `sd` at 0x708, 0xae4, 0xb18.
  Loads 4 bytes from a0 (arg0 at entry) +0x5720 into `a3` (`lw` at 0x70c).
  Stores 4 bytes from `s1` to a0 (arg0 at entry) +0x5690 (`sw` at 0x71c).
  Loads 1 byte from a0 (arg0 at entry) +0x290b into `a2` (`lbu` at 0x740).
  Loads 1 byte from a0 (arg0 at entry) +0x290f into `a2` (`lbu` at 0x75c).
  Loads 1 byte from a0 (arg0 at entry) +0x2913 into `a2` (`lbu` at 0x76c).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `a0` (`ld` at 0x808).
  Loads 8 bytes from a0 (arg0 at entry) +0x2828 into `at` (`ld` at 0x824, 0xad4, 0xbb8).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `a3`: 7 such accesses, including `ld` at 0x8d0, 0xcd8, 0xcec.
  Stores 8 bytes from `a2` to [a0+736]:8 +0x400000: 8 such accesses, including `sd` at 0x8e4, 0xa8c, 0xce8.
  Loads 4 bytes from a0 (arg0 at entry) +0x5720 into `v1` (`lw` at 0x8e8).
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x5690 (`sw` at 0x8f8).
  Loads 8 bytes from a0 (arg0 at entry) +0x2828 into `v1`: 4 such accesses, including `ld` at 0x92c, 0xc0c, 0xf7c.
  Loads 8 bytes from a0 (arg0 at entry) +0x2828 into `a3` (`ld` at 0x9a4).
  Stores 1 byte from `v0` to a0 (arg0 at entry) +0x56e8 (`sb` at 0xa00).
  Loads 4 bytes from a0 (arg0 at entry) +0x55f0 into `a5`: 5 such accesses, including `lw` at 0xa3c, 0xc5c, 0xd6c.
  Loads 2 bytes from a0 (arg0 at entry) +0x2830 into `a1` (`lhu` at 0xa40).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `a6` (`ld` at 0xa64).
  Stores 4 bytes from `a3` to a0 (arg0 at entry) +0x55f0: 4 such accesses, including `sw` at 0xa6c, 0xb38, 0xfe0.
  Loads 4 bytes from a0 (arg0 at entry) +0x55f0 into `a2`: 6 such accesses, including `lw` at 0xa90, 0xae8, 0xf30.
  Loads 2 bytes from a0 (arg0 at entry) +0x2830 into `a6` (`lhu` at 0xa9c).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `at` (`ld` at 0xab8, 0xf5c, 0x1074).
  Stores 4 bytes from `a2` to a0 (arg0 at entry) +0x55f0: 6 such accesses, including `sw` at 0xabc, 0xb10, 0xf68.
  Stores 8 bytes from `a6` to [a0+736]:8 +0x400000 (`sd` at 0xac8).
  Loads 4 bytes from a0 (arg0 at entry) +0x55f0 into `a3` (`lw` at 0xb1c, 0xfc8, 0x10e0).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x2828: 5 such accesses, including `sd` at 0xb24, 0xd3c, 0xe4c.
  Loads 2 bytes from a0 (arg0 at entry) +0x2830 into `a4`: 4 such accesses, including `lhu` at 0xc60, 0xd70, 0xee0.
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `a2`: 8 such accesses, including `ld` at 0xc84, 0xd20, 0xd94.
  Stores 4 bytes from `v1` to a0 (arg0 at entry) +0x55f0 (`sw` at 0xc8c, 0xd9c).
  Loads 4 bytes from a0 (arg0 at entry) +0x55f0 into `at` (`lw` at 0xcb0, 0xdc0).
  Loads 2 bytes from a0 (arg0 at entry) +0x2830 into `a2` (`lhu` at 0xcbc, 0xdcc).
  Stores 4 bytes from `at` to a0 (arg0 at entry) +0x55f0: 4 such accesses, including `sw` at 0xcdc, 0xdec, 0xf04.
  Loads 8 bytes from a0 (arg0 at entry) +0x2828 into `a2` (`ld` at 0xcf4, 0xe04).
  Loads 4 bytes from a0 (arg0 at entry) +0x55f0 into `a4` (`lw` at 0xd08, 0xe18).
  Stores 4 bytes from `a4` to a0 (arg0 at entry) +0x55f0 (`sw` at 0xd30, 0xe40).
  Stores 8 bytes from `v1` to [a0+736]:8 +0x400000: 4 such accesses, including `sd` at 0xd38, 0xe48, 0xf8c.
  Loads 4 bytes from a0 (arg0 at entry) +0x55f0 into `a6` (`lw` at 0xd40, 0xe50).
  Stores 4 bytes from `a5` to a0 (arg0 at entry) +0x55f0 (`sw` at 0xd58, 0xe68).
  Loads 2 bytes from a0 (arg0 at entry) +0x2830 into `a3` (`lhu` at 0xf3c, 0x1054).
  Stores 8 bytes from `a3` to [a0+736]:8 +0x400000 (`sd` at 0xf70, 0x1088).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x668).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=a0+22216, a1=0x1, a2=[a0+10495]:1, a3=0x58 (`jal` at 0x68c).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=a0+22216, a1=0x2, a2=[a0+10499]:1, a3=? (`jal` at 0x69c).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=a0+22216, a1=0x6, a2=[a0+10503]:1, a3=? (`jal` at 0x6ac).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0x0, a2=?, a3=? (`jal` at 0x6c4).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x72c).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=a0+22216, a1=0x1, a2=[a0+10507]:1, a3=0x58 (`jal` at 0x750).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=a0+22216, a1=0x2, a2=[a0+10511]:1, a3=? (`jal` at 0x760).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=a0+22216, a1=0x6, a2=[a0+10515]:1, a3=? (`jal` at 0x770).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0x0, a2=?, a3=? (`jal` at 0x788).
  Calls `rrmGenlockNotify` via direct with a0=[a0]:8, a1=0x0, a2=?, a3=? (`jal` at 0x80c).
  Calls `mutex_spinlock` via direct with a0=a0+10272, a1=?, a2=?, a3=? (`jal` at 0x81c).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0x838).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x844).
  Calls `vsema` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x854).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=a0+22216, a1=0x0, a2=0x1, a3=? (`jal` at 0x868).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=a0+22216, a1=0x7, a2=?, a3=? (`jal` at 0x880).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=a0+22216, a1=0x0, a2=0x11, a3=? (`jal` at 0x894).
  Calls `odsy_i2cPLLRegWrite` via direct with a0=a0+22216, a1=0x7, a2=?, a3=? (`jal` at 0x8a8).
  Calls `psema` via direct with a0=a0+10256, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x904).
  Calls `mutex_spinlock` via direct with a0=a0+10272, a1=[a0+22304], a2=?, a3=? (`jal` at 0x924).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=a0+10256, a3=? (`jal` at 0x940).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x94c).
  Calls `vsema` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x95c).
  Calls `psema` via direct with a0=a0+10256, a1=0x19, a2=?, a3=? (`jal` at 0x978).
  Calls `mutex_spinlock` via direct with a0=a0+10272, a1=[a0+22304], a2=?, a3=? (`jal` at 0x99c).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=[a0+10280]:8 (`jal` at 0x9b8).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x9c4).
  Calls `vsema` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x9d4).
  Calls `odsy_i2cPLLRegRead` via direct with a0=a0+22216, a1=0x7, a2=sp-144, a3=? (`jal` at 0x9fc).
  Calls `psema` via direct with a0=a0+10256, a1=0x19, a2=?, a3=? (`jal` at 0xa14).
  Calls `psema` via direct with a0=a0+10256, a1=0x19, a2=?, a3=? (`jal` at 0xa24).
  Calls `mutex_spinlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xa34).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a5=-0x2 (`jal` at 0xb34).
  Calls `vsema` via direct with a0=a0+10256, a1=?, a2=a0+10256, a3=? (`jal` at 0xb48).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xb54).
  Calls `vsema` via direct with a0=a0+10256, a1=?, a2=?, a3=[a0+10280]:8 (`jal` at 0xb6c).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xb78).
  Calls `vsema` via direct with a0=a0+10256, a1=a0+10256, a2=?, a3=? (`jal` at 0xb94).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xba0).
  Calls `mutex_spinlock` via direct with a0=a0+10272, a1=?, a2=0x3920400100000000, a3=[a0+22304] (`jal` at 0xbb0).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0xbd0).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0xbdc).
  Calls `vsema` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xbec).
  Calls `mutex_spinlock` via direct with a0=a0+10272, a1=?, a2=?, a3=[a0+736]:8+0x400000 (`jal` at 0xc04).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=a0+10256, a3=? (`jal` at 0xc24).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a0+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0xc30).
  Calls `vsema` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xc40).
  Calls `mutex_spinlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xc54).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a6=([a0+22000] | 0x2) (`jal` at 0xd54).
  Calls `mutex_spinlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xd64).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a6=([a0+22000] | 0x2) (`jal` at 0xe64).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=?, a3=? (`jal` at 0xe88).
  Calls `vsema` via direct with a0=a0+10256, a1=?, a2=?, a3=? (`jal` at 0xe98).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xea4).
  Calls `vsema` via direct with a0=a0+10256, a1=?, a2=a0+10256, a3=? (`jal` at 0xeb4).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xec0).
  Calls `mutex_spinlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xed4).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a5=-0x2 (`jal` at 0xfdc).
  Calls `mutex_spinlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xfec).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a5=-0x2 (`jal` at 0x10f4).
  The `beq` at 0x5e8 is taken when a1(=[a0+22304]) == 0 and falls through when a1(=[a0+22304]) != 0.
  The `beq` at 0x600 is taken when a1(=[a0+22304]) == 0 and falls through when a1(=[a0+22304]) != 0.
  The `beq` at 0x60c is taken when (s2(=[[a0+736]:8+2309740]) & 0x1) == 0 and falls through when (s2(=[[a0+736]:8+2309740]) & 0x1) != 0.
  The `beq` at 0x620 is taken when a1(=[a0+22304]) == 0 and falls through when a1(=[a0+22304]) != 0.
  The `beq` at 0x630 is taken when a1(=[a0+22304]) == 0 and falls through when a1(=[a0+22304]) != 0.
  The `beq` at 0x63c is taken when (v0(?) & 0x40) == 0 and falls through when (v0(?) & 0x40) != 0.
  The `blez` at 0x648 is taken when a2(=[a0+292]) <= 0 (signed) and falls through when a2(=[a0+292]) > 0 (signed).
  The `beq` at 0x654 is taken when (s2(=[[a0+736]:8+2309740]) & 0x2) == 0 and falls through when (s2(=[[a0+736]:8+2309740]) & 0x2) != 0.
  The `blez` at 0x674 is taken when a2(=[a0+292]) <= 0 (signed) and falls through when a2(=[a0+292]) > 0 (signed).
  The `beq` at 0x6b8 is taken when at(=[a0+22304]) == 0 and falls through when at(=[a0+22304]) != 0.
  The `bne` at 0x6d0 is taken when v0(=ret(odsy_poll_dfifo_level)) != 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) == 0.
  The `beq` at 0x710 is taken when a3(=[a0+22304]) == 0 and falls through when a3(=[a0+22304]) != 0.
  The `blez` at 0x738 is taken when a2(=[a0+292]) <= 0 (signed) and falls through when a2(=[a0+292]) > 0 (signed).
  The `beq` at 0x77c is taken when at(=[a0+22304]) == 0 and falls through when at(=[a0+22304]) != 0.
  The `beq` at 0x794 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x7ac is taken when a2(?) == 0 and falls through when a2(?) != 0.
  The `beq` at 0x7b8 is taken when a3(?) == 0 and falls through when a3(?) != 0.
  The `beq` at 0x7c4 is taken when at(=[a0+22304]) == 0 and falls through when at(=[a0+22304]) != 0.
  The `beq` at 0x7e4 is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `bne` at 0x800 is taken when a2(?) != 0 and falls through when a2(?) == 0.
  The `beq` at 0x828 is taken when at(=[a0+10280]:8) == 0 and falls through when at(=[a0+10280]:8) != 0.
  The `beq` at 0x84c is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x8ec is taken when v1(=[a0+22304]) == 0 and falls through when v1(=[a0+22304]) != 0.
  The `beq` at 0x934 is taken when v1(=[a0+10280]:8) == 0 and falls through when v1(=[a0+10280]:8) != 0.
  The `beq` at 0x954 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x9ac is taken when a3(=[a0+10280]:8) == 0 and falls through when a3(=[a0+10280]:8) != 0.
  The `beq` at 0x9cc is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0xa54 is taken when 0 >= a1(?) (unsigned) and falls through when 0 < a1(?) (unsigned).
  The `beq` at 0xae0 is taken when a1(?) == 0 and falls through when a1(?) != 0.
  The `beq` at 0xbc4 is taken when at(=[a0+10280]:8) == 0 and falls through when at(=[a0+10280]:8) != 0.
  The `beq` at 0xbe4 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0xc18 is taken when v1(=[a0+10280]:8) == 0 and falls through when v1(=[a0+10280]:8) != 0.
  The `beq` at 0xc38 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0xc74 is taken when 0 >= a4(?) (unsigned) and falls through when 0 < a4(?) (unsigned).
  The `beq` at 0xd00 is taken when a4(?) == 0 and falls through when a4(?) != 0.
  The `beq` at 0xd84 is taken when 0 >= a4(?) (unsigned) and falls through when 0 < a4(?) (unsigned).
  The `beq` at 0xe10 is taken when a4(?) == 0 and falls through when a4(?) != 0.
  The `beq` at 0xef4 is taken when 0 >= a4(?) (unsigned) and falls through when 0 < a4(?) (unsigned).
  The `beq` at 0xf88 is taken when a4(?) == 0 and falls through when a4(?) != 0.
  The `beq` at 0x100c is taken when 0 >= a4(?) (unsigned) and falls through when 0 < a4(?) (unsigned).
  The `beq` at 0x10a0 is taken when a4(?) == 0 and falls through when a4(?) != 0.
  The `jr` at 0x7d8 returns with v0 = ?.

- `gf_OdsyMapGfx` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`, 0x0, 652 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `s1` (`ld` at 0x1c).
  Loads 8 bytes from a0 (arg0 at entry) +0x28 into `s3` (`ld` at 0x28).
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `a2`: 9 such accesses, including `ld` at 0x4c, 0x78, 0xb8.
  Loads 4 bytes from a0 (arg0 at entry) +0x30 into `at` (`lw` at 0x94).
  Loads 4 bytes from a0 (arg0 at entry) +0x30 into `s2` (`lw` at 0x1d0).
  Stores 4 bytes from `s2` to a0 (arg0 at entry) +0x30 (`sw` at 0x1d8).
  Loads 8 bytes from [a0+32]:8 +0x2d0 into `a0` (`ld` at 0x1dc, 0x23c, 0x248).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x38 (`sw` at 0x208).
  Loads 2 bytes from abs 0xffffffffffffc3a0 into `at` (`lh` at 0x20c).
  Stores 4 bytes from `ra` to a0 (arg0 at entry) +0x38 (`sw` at 0x218).
  Loads 4 bytes from [a0+32]:8 +0x28a4 into `a1` (`lw` at 0x24c).
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `at` (`ld` at 0x268).
  Stores 4 bytes from `a3` to [a0+32]:8 +0x28a4 (`sw` at 0x270).
  Stores 4 bytes from `a3` to [[a0+32]:8+736]:8 +0x1074 (`sw` at 0x274).
  Stores 4 bytes from `zero` to [a0+32]:8 +0x28a8 (`sw` at 0x280).
  Stores 4 bytes from `zero` to [[a0+32]:8+736]:8 +0x107c (`sw` at 0x288).
  Calls `gfx_flow_clean_up_other_gfxp` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x20).
  Calls `ddv_getaddr` via direct with a0=[a0+40]:8, a1=?, a2=?, a3=? (`jal` at 0x34).
  Calls `v_mapkvsegment` via direct with a0=[a0+40]:8, a1=ret(ddv_getaddr), a2=[[a0+32]:8+736]:8+0x100000, a3=0x1, a4=0x0 (`jal` at 0x64).
  Calls `v_mapkvsegment` via direct with a0=[a0+40]:8, a1=ret(ddv_getaddr)+16384, a2=[[a0+32]:8+736]:8+0x120000, a3=0x1, a4=0x2 (`jal` at 0x8c).
  Calls `v_mapkvsegment` via direct with a0=[a0+40]:8, a1=ret(ddv_getaddr)+32768, a2=[[a0+32]:8+736]:8, a3=0x2, a4=0x2 (`jal` at 0xbc).
  Calls `v_mapkvsegment` via direct with a0=[a0+40]:8, a1=ret(ddv_getaddr)+65536, a2=[[a0+32]:8+736]:8+0x110000, a3=0x1, a4=0x2 (`jal` at 0xe8).
  Calls `v_mapkvsegment` via direct with a0=[a0+40]:8, a1=ret(ddv_getaddr)+81920, a2=[[a0+32]:8+736]:8+0x118000, a3=0x1, a4=0x0 (`jal` at 0x11c).
  Calls `v_mapkvsegment` via direct with a0=[a0+40]:8, a1=ret(ddv_getaddr)+98304, a2=[[a0+32]:8+736]:8+0x200000, a3=0x1, a4=0x2 (`jal` at 0x14c).
  Calls `v_mapkvsegment` via direct with a0=[a0+40]:8, a1=ret(ddv_getaddr)+114688, a2=[[a0+32]:8+736]:8+0x220000, a3=0x8, a4=0x2 (`jal` at 0x17c).
  Calls `v_mapkvsegment` via direct with a0=[a0+40]:8, a1=ret(ddv_getaddr)+245760, a2=[[a0+32]:8+736]:8+0x400000, a3=0x1, a4=0x2 (`jal` at 0x1ac).
  Calls `splhi` via direct with a0=?, a1=?, a2=?, a3=0x1 (`jal` at 0x1c8).
  Calls `gfx_flow_am_i_attached` via direct with a0=[[a0+32]:8+720]:8, a1=ret(splhi), a2=?, a3=? (`jal` at 0x1ec).
  Calls `splx` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x200).
  Calls `gfx_flow_attach_me` via direct with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=?, a3=? (`jal` at 0x240).
  Calls `gfx_flow_credit_tnum_get` via direct with a0=[[a0+32]:8+720]:8, a1=[[a0+32]:8+10404], a2=?, a3=? (`jal` at 0x250).
  The `beq` at 0x9c is taken when (at(=[a0+48]) & 0x20) == 0 and falls through when (at(=[a0+48]) & 0x20) != 0.
  The `beq` at 0x1e4 is taken when a0(=[[a0+32]:8+720]:8) == 0 and falls through when a0(=[[a0+32]:8+720]:8) != 0.
  The `beq` at 0x1f4 is taken when v0(=ret(gfx_flow_am_i_attached)) == 0 and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `jr` at 0x234 returns with v0 = one of -0x1, 0x0.

- `gf_OdsyUnMapGfx` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`, 0x28c, 380 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `s2` (`ld` at 0x2a0).
  Loads 8 bytes from [a0+32]:8 +0x48 into `at` (`ld` at 0x2ac).
  Loads 4 bytes from a0 (arg0 at entry) +0x30 into `a1` (`lw` at 0x2bc, 0x338).
  Loads 4 bytes from a0 (arg0 at entry) +0x30 into `v1` (`lw` at 0x2d4).
  Stores 4 bytes from `v1` to a0 (arg0 at entry) +0x30 (`sw` at 0x2e0).
  Loads 8 bytes from [a0+32]:8 +0x2d0 into `a0` (`ld` at 0x2e4, 0x31c).
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `a3` (`ld` at 0x300).
  Stores 4 bytes from `a2` to [a0+32]:8 +0x28a8 (`sw` at 0x308).
  Stores 4 bytes from `a2` to [[a0+32]:8+736]:8 +0x107c (`sw` at 0x30c).
  Loads 8 bytes from [a0+32]:8 +0x2e0 into `a1` (`ld` at 0x310).
  Loads 4 bytes from [[a0+32]:8+736]:8 +0x106c into `a1` (`lw` at 0x314).
  Stores 4 bytes from `a4` to a0 (arg0 at entry) +0x30 (`sw` at 0x340).
  Loads 8 bytes from a0 (arg0 at entry) +0x28 into `at` (`ld` at 0x350).
  Loads 4 bytes from ret(gthread_find) +0x8 into `v1` (`lw` at 0x380).
  Loads 8 bytes from ret(gthread_find) +0x0 into `a0` (`ld` at 0x394).
  Loads 8 bytes from a0 (arg0 at entry) +0x28 into `a0` (`ld` at 0x3b8).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x38 (`sw` at 0x3e4).
  Calls `splhi` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2a4).
  Calls `splhi` via direct with a0=?, a1=[a0+48], a2=?, a3=? (`jal` at 0x2cc).
  Calls `gfx_flow_am_i_attached` via direct with a0=[[a0+32]:8+720]:8, a1=?, a2=?, a3=? (`jal` at 0x2f0).
  Calls `gfx_flow_detach_me` via direct with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=0x1, a3=[[a0+32]:8+736]:8 (`jal` at 0x320).
  Calls `splx` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x32c).
  Calls `splx` via direct with a0=ret(splhi), a1=[a0+48], a2=?, a3=? (`jal` at 0x348).
  Calls `curthreadhandle` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x370).
  Calls `gthread_find` via direct with a0=ret(curthreadhandle), a1=?, a2=?, a3=? (`jal` at 0x378).
  Calls `thread_issproc` via direct with a0=[ret(gthread_find)]:8, a1=?, a2=-0x1, a3=? (`jal` at 0x390).
  Calls `ddv_invalphys_fal` via direct with a0=[a0+40]:8, a1=0x0, a2=-0x1, a3=? (`jal` at 0x3b4).
  Calls `gf_OdsyInvalTLB` via direct with a0=a0 at entry (arg0), a1=?, a2=0x2, a3=? (`jal` at 0x3e0).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=0x2, a3=? (`jal` at 0x3f8).
  The `bne` at 0x2b8 is taken when at(=[[a0+32]:8+72]:8) != s0(=a0) and falls through when at(=[[a0+32]:8+72]:8) == s0(=a0).
  The `beq` at 0x2c4 is taken when (a1(=[a0+48]) & 0x1) == 0 and falls through when (a1(=[a0+48]) & 0x1) != 0.
  The `beq` at 0x2e8 is taken when a0(=[[a0+32]:8+720]:8) == 0 and falls through when a0(=[[a0+32]:8+720]:8) != 0.
  The `beq` at 0x2f8 is taken when v0(=ret(gfx_flow_am_i_attached)) == 0 and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `bne` at 0x35c is taken when at(=[a0+40]:8) != 0 and falls through when at(=[a0+40]:8) == 0.
  The `beq` at 0x388 is taken when (v1(=[ret(gthread_find)+8]) & 0x4) == 0 and falls through when (v1(=[ret(gthread_find)+8]) & 0x4) != 0.
  The `beq` at 0x398 is taken when v0(=ret(thread_issproc)) == 0 and falls through when v0(=ret(thread_issproc)) != 0.
  The `beq` at 0x3c0 is taken when v0(=ret(ddv_invalphys_fal)) == 0 and falls through when v0(=ret(ddv_invalphys_fal)) != 0.
  The `bne` at 0x3c8 is taken when v0(=ret(ddv_invalphys_fal)) != a2(=0x2) and falls through when v0(=ret(ddv_invalphys_fal)) == a2(=0x2).
  The `jr` at 0x368 returns with v0 = 0x0.

- `gf_OdsyInvalTLB` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`, 0x408, 128 bytes) Inferred.
  Loads 4 bytes from ret(gthread_find) +0x8 into `at` (`lw` at 0x420).
  Loads 8 bytes from ret(gthread_find) +0x0 into `a0` (`ld` at 0x434).
  Loads 8 bytes from a0 (arg0 at entry) +0x28 into `a0` (`ld` at 0x45c).
  Loads 2 bytes from abs 0xffffffffffffc3a0 into `at` (`lh` at 0x464).
  Loads 4 bytes from a0 (arg0 at entry) +0x38 into `a1` (`lw` at 0x46c).
  Stores 4 bytes from `a1` to a0 (arg0 at entry) +0x38 (`sw` at 0x478).
  Calls `curthreadhandle` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x410).
  Calls `gthread_find` via direct with a0=ret(curthreadhandle), a1=?, a2=?, a3=? (`jal` at 0x418).
  Calls `thread_issproc` via direct with a0=[ret(gthread_find)]:8, a1=?, a2=?, a3=? (`jal` at 0x430).
  Calls `ddv_invaltlb` via direct with a0=[a0+40]:8, a1=0x0, a2=-0x1, a3=? (`jal` at 0x458).
  The `beq` at 0x428 is taken when (at(=[ret(gthread_find)+8]) & 0x4) == 0 and falls through when (at(=[ret(gthread_find)+8]) & 0x4) != 0.
  The `beq` at 0x438 is taken when v0(=ret(thread_issproc)) == 0 and falls through when v0(=ret(thread_issproc)) != 0.
  The `jr` at 0x444 returns with v0 = 0x0.

- `odsyPinAndMapGctxSwShadowRgn` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`, 0x488, 232 bytes) Inferred.
  Stores 8 bytes from `v0` to a0 (arg0 at entry) +0x60 (`sd` at 0x4e0).
  Stores 8 bytes from `s0` to a0 (arg0 at entry) +0x68 (`sd` at 0x4ec).
  Stores 4 bytes from `zero` to a1 (arg1 at entry) +0x0 (`sw` at 0x4fc).
  Stores 4 bytes from `v0` to a1 (arg1 at entry) +0x0 (`sw` at 0x530).
  Loads 8 bytes from a0 (arg0 at entry) +0x68 into `a0` (`ld` at 0x538).
  Stores 4 bytes from `a3` to a1 (arg1 at entry) +0x0 (`sw` at 0x560).
  Calls `pte_cachebits` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x4a4).
  Calls `useracc` via direct with a0=a2 at entry (arg2), a1=0x2b78, a2=0x111, a3=0x0 (`jal` at 0x4c0).
  Calls `maputokv` via direct with a0=a2 at entry (arg2), a1=0x2b78, a2=?, a3=? (`jal` at 0x4d8).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x51c).
  Calls `unuseracc` via direct with a0=[a0+104]:8, a1=0x2b78, a2=0x111, a3=? (`jal` at 0x540).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x554).
  The `bne` at 0x4c8 is taken when v0(=ret(useracc)) != 0 and falls through when v0(=ret(useracc)) == 0.
  The `beq` at 0x4e4 is taken when v0(=ret(maputokv)) == 0 and falls through when v0(=ret(maputokv)) != 0.
  The `jr` at 0x504 returns with v0 = ?.

- `odsyUnpinAndUnmapGctxRegions` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`, 0x570, 236 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x78 into `at` (`ld` at 0x570).
  Loads 8 bytes from a0 (arg0 at entry) +0x60 into `a0` (`ld` at 0x584).
  Loads 8 bytes from a0 (arg0 at entry) +0x68 into `a0` (`ld` at 0x5a4).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x68 (`sd` at 0x5ac).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x60 (`sd` at 0x5b0).
  Loads 8 bytes from ret(OdsyNextCSetElem) +0x10 into `v1` (`ld` at 0x5d8, 0x600).
  Loads 8 bytes from ret(OdsyNextCSetElem) +0x8 into `a0` (`ld` at 0x5e0).
  Loads 8 bytes from ret(OdsyNextCSetElem) +0x10 into `a1` (`ld` at 0x614).
  Calls `unmaputokv` via direct with a0=[a0+96]:8, a1=0x2b78, a2=?, a3=? (`jal` at 0x590).
  Calls `unuseracc` via direct with a0=[a0+104]:8, a1=0x2b78, a2=0x111, a3=? (`jal` at 0x5a0).
  Calls `OdsyInitCSetCursor` via direct with a0=a0+224, a1=?, a2=?, a3=? (`jal` at 0x5bc).
  Calls `OdsyNextCSetElem` via direct with a0=a0+224, a1=?, a2=?, a3=? (`jal` at 0x5c4).
  Calls `kmem_free` via direct with a0=[ret(OdsyNextCSetElem)+8]:8, a1=0x4000, a2=?, a3=? (`jal` at 0x5dc).
  Calls `kmem_free` via direct with a0=ret(OdsyNextCSetElem), a1=0x20, a2=?, a3=? (`jal` at 0x5e8).
  Calls `OdsyNextCSetElem` via direct with a0=a0+224, a1=?, a2=?, a3=? (`jal` at 0x5f0).
  Calls `odsyUnmapPages` via direct with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=? (`jal` at 0x60c).
  Calls `OdsyDestroyCSet` via direct with a0=a0+224, a1=0x0, a2=?, a3=? (`jal` at 0x630).
  Calls `odsyUnmapPages` via direct with a0=a0+128, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x64c).
  The `bne` at 0x57c is taken when at(=[a0+120]:8) != 0 and falls through when at(=[a0+120]:8) == 0.
  The `beq` at 0x588 is taken when a0(=[a0+96]:8) == 0 and falls through when a0(=[a0+96]:8) != 0.
  The `beq` at 0x5cc is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x5f8 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x604 is taken when v1(=[ret(OdsyNextCSetElem)+16]:8) == 0 and falls through when v1(=[ret(OdsyNextCSetElem)+16]:8) != 0.
  The `beq` at 0x618 is taken when a1(=[ret(OdsyNextCSetElem)+16]:8) == 0 and falls through when a1(=[ret(OdsyNextCSetElem)+16]:8) != 0.
  The `jr` at 0x640 returns with v0 = ret(OdsyDestroyCSet).
- `odsyUnmap` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`, 0x65c, 96 bytes) Inferred.
  Loads 8 bytes from ? (base unknown) into `a0` (`ld` at 0x690).
  Loads 8 bytes from ? (base unknown) into `at` (`ld` at 0x694, 0x698).
  Calls `as_lookup_current` via direct with a0=sp-96, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x670).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=sp-80, a3=0x0 (`jalr` at 0x6a4).
  The `jr` at 0x6b4 returns with v0 = ret(?).

- `odsyUnpinAndUnmapSGRegions` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`, 0x6bc, 160 bytes) Inferred.
  Loads 8 bytes from ret(OdsyNextCSetElem) +0x8 into `a0` (`ld` at 0x6ec, 0x714, 0x738).
  Loads 8 bytes from ret(OdsyNextCSetElem) +0x10 into `at` (`ld` at 0x720).
  Calls `OdsyInitCSetCursor` via direct with a0=a0+104, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x6cc).
  Calls `OdsyNextCSetElem` via direct with a0=a0+104, a1=?, a2=?, a3=? (`jal` at 0x6d8).
  Calls `kmem_free` via direct with a0=[ret(OdsyNextCSetElem)+8]:8, a1=0x4000, a2=?, a3=? (`jal` at 0x6f0).
  Calls `kmem_free` via direct with a0=ret(OdsyNextCSetElem), a1=0x20, a2=?, a3=? (`jal` at 0x6fc).
  Calls `OdsyNextCSetElem` via direct with a0=a0+104, a1=?, a2=?, a3=? (`jal` at 0x704).
  Calls `odsyUnmapPages` via direct with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=? (`jal` at 0x72c).
  Calls `OdsyDestroyCSet` via direct with a0=a0+104, a1=0x0, a2=?, a3=? (`jal` at 0x744).
  The `beq` at 0x6e0 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x70c is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x718 is taken when a0(=[ret(OdsyNextCSetElem)+8]:8) == 0 and falls through when a0(=[ret(OdsyNextCSetElem)+8]:8) != 0.
  The `beq` at 0x724 is taken when at(=[ret(OdsyNextCSetElem)+16]:8) == 0 and falls through when at(=[ret(OdsyNextCSetElem)+16]:8) != 0.
  The `jr` at 0x754 returns with v0 = ret(OdsyDestroyCSet).

- `odsyPinAndMapASRegions` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`, 0x75c, 132 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `a2` (`ld` at 0x760, 0x7c0).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x38 (`sd` at 0x764).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x28 (`sd` at 0x768).
  Loads 8 bytes from [a0+8]:8 +0x8 into `a2` (`ld` at 0x790).
  Loads 8 bytes from [a0+8]:8 +0x10 into `a2` (`ld` at 0x7d4).
  Calls `odsyMapPages` via direct with a0=0x0, a1=a0+32, a2=[[a0+8]:8+8]:8, a3=0x10000, a4=sym(.data), a5=0x1, a6=a0+40 (`jal` at 0x78c).
  Calls `odsyMapPages` via direct with a0=0x0, a1=a0+48, a2=[[a0+8]:8+16]:8, a3=0xc000, a4=sym(.data), a5=0x1, a6=a0+56 (`jal` at 0x7d0).
  The `beq` at 0x798 is taken when v0(=ret(odsyMapPages)) == 0 and falls through when v0(=ret(odsyMapPages)) != 0.
  The `jr` at 0x7a4 returns with v0 = ret(odsyMapPages).

- `odsyUnpinAndUnmapASRegions` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`, 0x7e0, 104 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x28 into `at` (`ld` at 0x7e4).
  Loads 8 bytes from a0 (arg0 at entry) +0x38 into `v1` (`ld` at 0x7fc).
  Calls `odsyUnmapPages` via direct with a0=a0+40, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x81c).
  Calls `odsyUnmapPages` via direct with a0=a0+56, a1=?, a2=?, a3=? (`jal` at 0x834).
  The `bne` at 0x7f4 is taken when at(=[a0+40]:8) != 0 and falls through when at(=[a0+40]:8) == 0.
  The `bne` at 0x800 is taken when v1(=[a0+56]:8) != 0 and falls through when v1(=[a0+56]:8) == 0.
  The `jr` at 0x810 returns with v0 = ?.

- `odsyPinAndMapPfStatRegions` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`, 0x848, 96 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x2840 into `a3` (`lw` at 0x86c, 0x88c).
  Loads 8 bytes from a0 (arg0 at entry) +0x2848 into `a2` (`ld` at 0x898).
  Calls `odsyMapPages` via direct with a0=0x0, a1=a0+10320, a2=[a0+10312]:8, a3=[a0+10304], a4=sp-64, a5=0x1, a6=a0+10328 (`jal` at 0x894).
  The `jr` at 0x8a0 returns with v0 = ret(odsyMapPages).

- `odsyUnpinAndUnmapPfStatRegions` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`, 0x8a8, 48 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x2848 into `at` (`ld` at 0x8a8).
  Calls `odsyUnmapPages` via direct with a0=a0+10328, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x8c8).
  The `bne` at 0x8b0 is taken when at(=[a0+10312]:8) != 0 and falls through when at(=[a0+10312]:8) == 0.
  The `jr` at 0x8bc returns with v0 = ?.

- `odsyMapPages` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`, 0x8d8, 228 bytes) Inferred.
  Loads 8 bytes from a6 (arg6 at entry) +0x0 into `a0`: 5 such accesses, including `ld` at 0x92c, 0x948, 0x970.
  Stores 8 bytes from `v0` to a1 (arg1 at entry) +0x0 (`sd` at 0x9b8).
  Calls `gfxdd_mmap_mem_ex` via direct with a0=0x0, a1=a3 at entry (arg3), a2=a0 at entry (arg0), a3=a4 at entry (arg4), a4=a5 at entry (arg5), a5=a6 at entry (arg6) (`jal` at 0x908).
  Calls `ddv_lock` via direct with a0=[a6]:8, a1=?, a2=?, a3=? (`jal` at 0x928).
  Calls `ddv_mappages` via direct with a0=[a6]:8, a1=0x0, a2=a2 at entry (arg2), a3=? (`jal` at 0x94c).
  Calls `ddv_unlock` via direct with a0=[a6]:8, a1=?, a2=?, a3=?, a4=a1 at entry (arg1) (`jal` at 0x96c).
  Calls `gfxdd_munmap` via direct with a0=[a6]:8, a1=?, a2=?, a3=? (`jal` at 0x988).
  Calls `ddv_getaddr` via direct with a0=[a6]:8, a1=?, a2=?, a3=?, a4=a1 at entry (arg1) (`jal` at 0x9a8).
  The `beq` at 0x910 is taken when v0(=ret(gfxdd_mmap_mem_ex)) == 0 and falls through when v0(=ret(gfxdd_mmap_mem_ex)) != 0.
  The `beq` at 0x958 is taken when a4(=a1) == 0 and falls through when a4(=a1) != 0.
  The `beq` at 0x964 is taken when at(=ret(ddv_mappages)) == 0 and falls through when at(=ret(ddv_mappages)) != 0.
  The `beq` at 0x97c is taken when a4(?) == 0 and falls through when a4(?) != 0.
  The `jr` at 0x91c returns with v0 = ?.

- `odsyUnmapPages` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`, 0x9bc, 40 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `at` (`ld` at 0x9bc).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x0 (`sd` at 0x9c8).
  Calls `gfxdd_munmap` via direct with a0=[a0]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x9cc).
  The `jr` at 0x9dc returns with v0 = 0x0.

- `odsyMMinit` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x0, 448 bytes) Inferred.
  Stores 8 bytes from `zero` to a1 (arg1 at entry) +0x4e8 (`sd` at 0x2c).
  Stores 4 bytes from `v1` to a1 (arg1 at entry) +0x4e0 (`sw` at 0x40).
  Stores 8 bytes from `at` to a1 (arg1 at entry) +0x0 (`sd` at 0x50).
  Stores 8 bytes from `zero` to ? (base unknown) (`sd` at 0x68, 0xbc).
  Stores 8 bytes from `v1` to a1 (arg1 at entry) +0x4f8 (`sd` at 0x6c).
  Stores 8 bytes from `v0` to a1 (arg1 at entry) +0x4f0 (`sd` at 0x74).
  Stores 8 bytes from `a0` to ? (base unknown) (`sd` at 0xa4).
  Stores 8 bytes from `zero` to a1 (arg1 at entry) +0x578 (`sd` at 0xa8).
  Stores 4 bytes from `a6` to a1 (arg1 at entry) +0x570 (`sw` at 0xb4).
  Stores 8 bytes from `a5` to ? (base unknown) (`sd` at 0xb8).
  Loads 4 bytes from ? (base unknown) into `v0` (`lw` at 0xc0).
  Stores 4 bytes from `zero` to ? (base unknown) (`sw` at 0xc4, 0xc8).
  Stores 2 bytes from `a1` to ? (base unknown) (`sh` at 0xd0).
  Stores 8 bytes from `v1` to ? (base unknown) (`sd` at 0xd8).
  Stores 4 bytes from `at` to ? (base unknown) (`sw` at 0xe4).
  Loads 8 bytes from ? (base unknown) into `a2` (`ld` at 0xfc).
  Stores 1 byte from `a6` to a1 (arg1 at entry) +0x248 (`sb` at 0x118).
  Stores 1 byte from `a5` to a1 (arg1 at entry) +0x1c0 (`sb` at 0x124).
  Stores 1 byte from `a2` to ? (base unknown) (`sb` at 0x144).
  Stores 1 byte from `at` to a1 (arg1 at entry) +0xb0 (`sb` at 0x14c).
  Stores 4 bytes from `zero` to a1 (arg1 at entry) +0x34 (`sw` at 0x150).
  Stores 4 bytes from `zero` to a1 (arg1 at entry) +0x30 (`sw` at 0x154).
  Stores 4 bytes from `zero` to a1 (arg1 at entry) +0x2c (`sw` at 0x158).
  Stores 4 bytes from `a5` to a1 (arg1 at entry) +0x40 (`sw` at 0x15c).
  Stores 4 bytes from `a1` to a1 (arg1 at entry) +0x3c (`sw` at 0x164).
  Stores 4 bytes from `a0` to a1 (arg1 at entry) +0x38 (`sw` at 0x168).
  Stores 1 byte from `a6` to a1 (arg1 at entry) +0x29 (`sb` at 0x16c).
  Stores 4 bytes from `zero` to a1 (arg1 at entry) +0x50 (`sw` at 0x170).
  Stores 2 bytes from `zero` to a1 (arg1 at entry) +0x18 (`sh` at 0x174).
  Stores 8 bytes from `zero` to a1 (arg1 at entry) +0x20 (`sd` at 0x178).
  Stores 4 bytes from `v0` to a1 (arg1 at entry) +0xd8 (`sw` at 0x180).
  Stores 4 bytes from `v0` to a1 (arg1 at entry) +0x270 (`sw` at 0x184).
  Stores 4 bytes from `v0` to a1 (arg1 at entry) +0x1e8 (`sw` at 0x188).
  Loads 4 bytes from a1 (arg1 at entry) +0x58 into `v1` (`lw` at 0x18c).
  Stores 4 bytes from `ra` to a1 (arg1 at entry) +0x48 (`sw` at 0x190).
  Stores 4 bytes from `ra` to a1 (arg1 at entry) +0x44 (`sw` at 0x194).
  Stores 1 byte from `zero` to a1 (arg1 at entry) +0x28 (`sb` at 0x1a4).
  Stores 4 bytes from `v0` to a1 (arg1 at entry) +0x58 (`sw` at 0x1b0).
  Calls `odsyPipeNrFromBase` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xc).
  The `bne` at 0x64 is taken when a1(?) < 0x10 (signed) and falls through when a1(?) >= 0x10 (signed).
  The `bne` at 0xa0 is taken when a1(?) < 0x4 (signed) and falls through when a1(?) >= 0x4 (signed).
  The `beq` at 0xf0 is taken when a1(?) >= 0x10 (signed) and falls through when a1(?) < 0x10 (signed).
  The `beq` at 0x100 is taken when a2(?) == 0 and falls through when a2(?) != 0.
  The `bne` at 0x140 is taken when a1(?) < 0x4 (signed) and falls through when a1(?) >= 0x4 (signed).
  The `jr` at 0x1b8 returns with v0 = ?.

- `odsyInitMM` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x1c0, 116 bytes) Inferred.
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x950 (`sd` at 0x1e8).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x948 (`sd` at 0x1ec).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x93c (`sw` at 0x1f0).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x938 (`sw` at 0x1f4).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x940 (`sd` at 0x1f8).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x984 (`sw` at 0x1fc).
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x97c (`sw` at 0x204).
  Stores 4 bytes from `at` to a0 (arg0 at entry) +0x974 (`sw` at 0x20c).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x96c (`sw` at 0x210).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x978 (`sw` at 0x214).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x970 (`sw` at 0x218).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x968 (`sw` at 0x220).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x960 (`sd` at 0x224).
  Calls `OdsyInitCSet` via direct with a0=a0+2232, a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1d4).
  Calls `OdsyInitCSet` via direct with a0=a0+2272, a1=0x4, a2=?, a3=? (`jal` at 0x1e0).
  The `jr` at 0x22c returns with v0 = 0xc80.

- `mm_init_freespace` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x234, 316 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x694 into `v1` (`lw` at 0x234).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `a1` (`ld` at 0x238).
  Loads 4 bytes from a0 (arg0 at entry) +0xd8 into `a3` (`lw` at 0x23c, 0x360).
  Loads 4 bytes from [a0]:8 +0xfc into `a1` (`lw` at 0x240).
  Loads 4 bytes from a0 (arg0 at entry) +0x68c into `v0` (`lw` at 0x244).
  Loads 4 bytes from a0 (arg0 at entry) +0x684 into `at` (`lw` at 0x250).
  Stores 4 bytes from `a1` to a0 (arg0 at entry) +0x698 (`sw` at 0x27c).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x668 (`sd` at 0x280).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x660 (`sd` at 0x284).
  Stores 4 bytes from `a1` to a0 (arg0 at entry) +0x654 (`sw` at 0x288).
  Stores 4 bytes from `a3` to a0 (arg0 at entry) +0x650 (`sw` at 0x28c).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x658 (`sd` at 0x290).
  Stores 8 bytes from `a6` to a0 (arg0 at entry) +0x6a0 (`sd` at 0x2ec).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x6bc (`sw` at 0x308).
  Stores 8 bytes from `ra` to a0 (arg0 at entry) +0x6a8 (`sd` at 0x314).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x6b0 (`sd` at 0x31c).
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x6b8 (`sw` at 0x324).
  Loads 4 bytes from a0 (arg0 at entry) +0x698 into `a1` (`lw` at 0x354).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x684 (`sw` at 0x358).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x68c (`sw` at 0x35c).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x694 (`sw` at 0x364).
  Calls `kabi_num_lockable_pages` via direct with a0=?, a1=?, a2=?, a3=?, a4=0x64 (`jal` at 0x2ac).
  Calls `kabi_num_lockable_pages` via direct with a0=?, a1=?, a2=?, a3=?, a7=0x64 (`jal` at 0x2e8).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=a2 at entry (arg2), a3=? (`jal` at 0x33c).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x34c).
  The `bne` at 0x278 is taken when a1(?) < at(=([a0+1668] + ([a0+1676] + [a0+1684]))) (signed) and falls through when a1(?) >= at(=([a0+1668] + ([a0+1676] + [a0+1684]))) (signed).
  The `jr` at 0x330 returns with v0 = 0x1.

- `gfP_OdsyMMdebug` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x370, 852 bytes) Inferred.
  Stores 4 bytes from `zero` to a3 (arg3 at entry) +0x0 (`sw` at 0x378).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `s2` (`ld` at 0x3a0).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `t0`: 4 such accesses, including `ld` at 0x3d8, 0x5f8, 0x600.
  Loads 8 bytes from [a0+32]:8 +0x48 into `a4` (`ld` at 0x3dc).
  Loads 4 bytes from [a0+32]:8 +0x50 into `a6` (`lw` at 0x3f8).
  Stores 4 bytes from `a6` to [a0+32]:8 +0x50 (`sw` at 0x40c).
  Stores 4 bytes from `v0` to a3 (arg3 at entry) +0x0 (`sw` at 0x414, 0x498, 0x550).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `v0` (`ld` at 0x418).
  Loads 4 bytes from [a0+32]:8 +0x50 into `at` (`lw` at 0x41c, 0x5a0).
  Stores 4 bytes from `at` to [a0+32]:8 +0x50 (`sw` at 0x424, 0x5a8).
  Loads 4 bytes from a3 (arg3 at entry) +0x0 into `v0` (`lw` at 0x428, 0x4b4, 0x5d8).
  Loads 8 bytes from ? (base unknown) into `a0` (`ld` at 0x464, 0x514).
  Loads 4 bytes from ? (base unknown) into `a1` (`lw` at 0x470, 0x548).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `s4` (`ld` at 0x49c).
  Loads 4 bytes from [a0+32]:8 +0x50 into `a4` (`lw` at 0x4a0).
  Stores 4 bytes from `a4` to [a0+32]:8 +0x50 (`sw` at 0x4a8).
  Loads 4 bytes from ? (base unknown) into `a2` (`lw` at 0x53c).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `v1` (`ld` at 0x59c, 0x6c0).
  Loads 4 bytes from a3 (arg3 at entry) +0x0 into `a0` (`lw` at 0x5b0).
  Stores 4 bytes from `v1` to a3 (arg3 at entry) +0x0 (`sw` at 0x5c0).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `a4` (`ld` at 0x5c4).
  Loads 4 bytes from [a0+32]:8 +0x50 into `a1` (`lw` at 0x5c8).
  Stores 4 bytes from `a1` to [a0+32]:8 +0x50 (`sw` at 0x5d0).
  Stores 4 bytes from `a0` to a3 (arg3 at entry) +0x0 (`sw` at 0x5e0).
  Stores 8 bytes from `s1` to [a0+32]:8 +0x48 (`sd` at 0x5fc).
  Loads 4 bytes from [a0+32]:8 +0x68 into `a4` (`lw` at 0x604).
  Loads 4 bytes from [a0+32]:8 +0x68 into `at` (`lw` at 0x61c).
  Stores 4 bytes from `a4` to a3 (arg3 at entry) +0x0 (`sw` at 0x64c, 0x66c, 0x6a0).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `a6` (`ld` at 0x670).
  Loads 4 bytes from [a0+32]:8 +0x50 into `a5` (`lw` at 0x678).
  Stores 4 bytes from `a5` to [a0+32]:8 +0x50 (`sw` at 0x690).
  Stores 4 bytes from `a2` to a3 (arg3 at entry) +0x0 (`sw` at 0x6b0).
  Calls `copyin` via direct with a0=a2 at entry (arg2), a1=sp-160, a2=0x18, a3=a3 at entry (arg3) (`jal` at 0x39c).
  Calls `SpewObjectToUser` via direct with a0=[a0+32]:8+768, a1=-0x1, a2=-0x1, a3=0x0, a4=sp-128, a5=sp-136, a6=[[a0+32]:8+80]+1 (`jal` at 0x408).
  Calls `SpewObjectToUser` via direct with a0=?, a1=0x0, a2=-0x2, a3=?, a4=sp-128, a5=sp-136 (`jal` at 0x48c).
  Calls `OdsyInitCSetCursor` via direct with a0=[a0+32]:8+2232, a1=?, a2=?, a3=? (`jal` at 0x4bc).
  Calls `OdsyNextCSetElem` via direct with a0=[a0+32]:8+2232, a1=?, a2=?, a3=? (`jal` at 0x4c4).
  Calls `OdsyInitCSetCursor` via direct with a0=ret(OdsyNextCSetElem)+64, a1=?, a2=?, a3=? (`jal` at 0x4e4).
  Calls `OdsyNextCSetElem` via direct with a0=ret(OdsyNextCSetElem)+64, a1=?, a2=?, a3=? (`jal` at 0x4f0).
  Calls `SpewObjectToUser` via direct with a0=?, a1=?, a2=?, a3=?, a4=sp-128, a5=sp-136 (`jal` at 0x544).
  Calls `OdsyNextCSetElem` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x564).
  Calls `OdsyNextCSetElem` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x574).
  Calls `copyout` via direct with a0=sp-136, a1=?, a2=0x4, a3=? (`jal` at 0x58c).
  Calls `psema` via direct with a0=[a0+32]:8+56, a1=0x219, a2=?, a3=?, a4=[[a0+32]:8+72]:8 (`jal` at 0x5f0).
  Calls `us_delay` via direct with a0=0x2, a1=?, a2=?, a3=? (`jal` at 0x610).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x638).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x658).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a5=[[a0+32]:8+80]-1, a6=[a0+32]:8 (`jal` at 0x68c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=0xe, a3=? (`jal` at 0x6b4).
  The `bne` at 0x3a4 is taken when v0(=ret(copyin)) != 0 and falls through when v0(=ret(copyin)) == 0.
  The `beq` at 0x3b0 is taken when v0(?) == at(=0x2) and falls through when v0(?) != at(=0x2).
  The `bne` at 0x3b8 is taken when v0(?) != v1(=0x1) and falls through when v0(?) == v1(=0x1).
  The `bne` at 0x3d0 is taken when v0(?) < 0x11 (signed) and falls through when v0(?) >= 0x11 (signed).
  The `bne` at 0x3e0 is taken when a4(=[[a0+32]:8+72]:8) != s1(=a0) and falls through when a4(=[[a0+32]:8+72]:8) == s1(=a0).
  The `beq` at 0x410 is taken when v0(=ret(SpewObjectToUser)) == 0 and falls through when v0(=ret(SpewObjectToUser)) != 0.
  The `beq` at 0x458 is taken when s4(?) >= 0x10 (signed) and falls through when s4(?) < 0x10 (signed).
  The `beq` at 0x468 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `beq` at 0x478 is taken when (a1(?) & 0x1) == 0 and falls through when (a1(?) & 0x1) != 0.
  The `beq` at 0x494 is taken when v0(=ret(SpewObjectToUser)) == 0 and falls through when v0(=ret(SpewObjectToUser)) != 0.
  The `beq` at 0x4cc is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x4f8 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x51c is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `beq` at 0x528 is taken when a4(?) >= at(?) (unsigned) and falls through when a4(?) < at(?) (unsigned).
  The `bne` at 0x54c is taken when v0(=ret(SpewObjectToUser)) != 0 and falls through when v0(=ret(SpewObjectToUser)) == 0.
  The `bne` at 0x55c is taken when s2(?) < 0x10 (signed) and falls through when s2(?) >= 0x10 (signed).
  The `bne` at 0x56c is taken when v0(=ret(OdsyNextCSetElem)) != 0 and falls through when v0(=ret(OdsyNextCSetElem)) == 0.
  The `bne` at 0x57c is taken when v0(=ret(OdsyNextCSetElem)) != 0 and falls through when v0(=ret(OdsyNextCSetElem)) == 0.
  The `bne` at 0x594 is taken when v0(=ret(copyout)) != 0 and falls through when v0(=ret(copyout)) == 0.
  The `beq` at 0x608 is taken when a4(=[[a0+32]:8+104]) == 0 and falls through when a4(=[[a0+32]:8+104]) != 0.
  The `bne` at 0x620 is taken when at(=[[a0+32]:8+104]) != 0 and falls through when at(=[[a0+32]:8+104]) == 0.
  The `jr` at 0x43c returns with v0 = ?.

- `SpewObjectToUser` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x6c4, 232 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x38 into `at` (`lw` at 0x6cc).
  Loads 4 bytes from ? (base unknown) into `v1` (`lw` at 0x704).
  Stores 4 bytes from `v1` to ? (base unknown) (`sw` at 0x710).
  Loads 4 bytes from a0 (arg0 at entry) +0x3c into `a4` (`lw` at 0x714).
  Loads 4 bytes from a0 (arg0 at entry) +0x40 into `a2` (`lw` at 0x728).
  Loads 4 bytes from a0 (arg0 at entry) +0x40 into `a1` (`lw` at 0x734).
  Loads 4 bytes from a0 (arg0 at entry) +0x68 into `a0` (`lw` at 0x740).
  Loads 8 bytes from a4 (arg4 at entry) +0x0 into `a1` (`ld` at 0x758).
  Loads 4 bytes from a5 (arg5 at entry) +0x0 into `a7` (`lw` at 0x768).
  Stores 4 bytes from `a7` to a5 (arg5 at entry) +0x0 (`sw` at 0x770).
  Loads 8 bytes from a4 (arg4 at entry) +0x0 into `a6` (`ld` at 0x774).
  Stores 8 bytes from `a6` to a4 (arg4 at entry) +0x0 (`sd` at 0x780).
  Calls `copyout` via direct with a0=sp-144, a1=[a4]:8, a2=0x44, a3=a3 at entry (arg3), a4=[a0+60] (`jal` at 0x754).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x798).
  The `bgtz` at 0x70c is taken when v0(?) > 0 (signed) and falls through when v0(?) <= 0 (signed).
  The `bne` at 0x75c is taken when v0(=ret(copyout)) != 0 and falls through when v0(=ret(copyout)) == 0.
  The `jr` at 0x788 returns with v0 = one of 0x0, 0xe.

- `gfP_OdsyMMattach` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x7ac, 1088 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `at` (`ld` at 0x7b4).
  Loads 8 bytes from ret(odsyGctxFromRnid) +0x68 into `v1` (`ld` at 0x808).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `a4` (`ld` at 0x818).
  Loads 8 bytes from [a0]:8 +0x8 into `a4` (`ld` at 0x81c).
  Stores 4 bytes from `zero` to a3 (arg3 at entry) +0x0 (`sw` at 0x828, 0xa04).
  Stores 4 bytes from `a3` to a3 (arg3 at entry) +0x0 (`sw` at 0x854).
  Stores 8 bytes from `zero` to ret(odsyGctxFromRnid) +0x98 (`sd` at 0x864).
  Stores 4 bytes from `a5` to ret(odsyGctxFromRnid) +0xa0 (`sw` at 0x87c).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `v0` (`ld` at 0x8c4, 0xa24, 0xa40).
  Loads 8 bytes from [a0+32]:8 +0x48 into `v1` (`ld` at 0x8c8).
  Loads 4 bytes from [a0+32]:8 +0x50 into `a5`: 4 such accesses, including `lw` at 0x8d4, 0x920, 0xa54.
  Stores 4 bytes from `a5` to [a0+32]:8 +0x50 (`sw` at 0x8dc, 0x928, 0xb3c).
  Loads 8 bytes from ret(odsyGctxFromRnid) +0x98 into `v1` (`ld` at 0x908).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `s1` (`ld` at 0x91c).
  Stores 4 bytes from `a4` to a3 (arg3 at entry) +0x0: 7 such accesses, including `sw` at 0x93c, 0xabc, 0xae4.
  Stores 8 bytes from `a6` to ? (base unknown) (`sd` at 0x964).
  Stores 4 bytes from `a3` to ? (base unknown) (`sw` at 0x968).
  Loads 4 bytes from ? (base unknown) into `at` (`lw` at 0x96c, 0xb58).
  Loads 8 bytes from ? (base unknown) into `ra` (`ld` at 0x970, 0x980).
  Stores 4 bytes from `at` to ? (base unknown) (`sw` at 0x978).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `t9` (`ld` at 0x988).
  Loads 4 bytes from [a0+32]:8 +0x50 into `t8` (`lw` at 0x98c).
  Stores 4 bytes from `t8` to [a0+32]:8 +0x50 (`sw` at 0x994).
  Loads 4 bytes from ? (base unknown) into `t2` (`lw` at 0x99c).
  Stores 4 bytes from `t3` to ? (base unknown) (`sw` at 0x9a8).
  Loads 4 bytes from ? (base unknown) into `t1` (`lw` at 0x9b0).
  Loads 8 bytes from ? (base unknown) into `t0` (`ld` at 0x9b8).
  Loads 8 bytes from ? (base unknown) into `a7` (`ld` at 0x9c4, 0x9c8).
  Loads 8 bytes from ? (base unknown) into `a6` (`ld` at 0x9d0, 0x9d4).
  Loads 4 bytes from ? (base unknown) into `a5` (`lw` at 0x9ec).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `v1` (`ld` at 0xa1c, 0xb70).
  Stores 8 bytes from `v0` to [a0+32]:8 +0x48 (`sd` at 0xa20).
  Loads 4 bytes from [a0+32]:8 +0x68 into `v1` (`lw` at 0xa28).
  Loads 4 bytes from [a0+32]:8 +0x68 into `a4` (`lw` at 0xa44).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `a4` (`ld` at 0xa78).
  Loads 4 bytes from [a0+32]:8 +0x50 into `a3` (`lw` at 0xa7c).
  Stores 4 bytes from `a3` to [a0+32]:8 +0x50 (`sw` at 0xa8c).
  Loads 4 bytes from a3 (arg3 at entry) +0x0 into `v0` (`lw` at 0xaa8).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `a6` (`ld` at 0xb1c).
  Stores 4 bytes from `ra` to a3 (arg3 at entry) +0x0 (`sw` at 0xb44).
  Loads 4 bytes from [a0+32]:8 +0x50 into `v0` (`lw` at 0xb78).
  Stores 4 bytes from `v0` to [a0+32]:8 +0x50 (`sw` at 0xb8c).
  Calls `copyin` via direct with a0=a2 at entry (arg2), a1=sp-192, a2=0x48, a3=a3 at entry (arg3) (`jal` at 0x7d8).
  Calls `odsyGctxFromRnid` via direct with a0=?, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x7ec).
  Calls `odsyPinAndMapGctxSwShadowRgn` via direct with a0=ret(odsyGctxFromRnid), a1=a3 at entry (arg3), a2=?, a3=?, a5=a0 at entry (arg0) (`jal` at 0x840).
  Calls `OdsyInitCSet` via direct with a0=ret(odsyGctxFromRnid)+184, a1=0x4, a2=?, a3=ret(odsyPinAndMapGctxSwShadowRgn), a5=-0x1 (`jal` at 0x878).
  Calls `OdsyInitCSet` via direct with a0=ret(odsyGctxFromRnid)+224, a1=0x4, a2=?, a3=? (`jal` at 0x884).
  Calls `OdsyInitCSet` via direct with a0=ret(odsyGctxFromRnid)+264, a1=0x4, a2=?, a3=? (`jal` at 0x890).
  Calls `OdsyAllocSpecificCSetId` via direct with a0=?, a1=?, a2=0x1, a3=? (`jal` at 0x8a8).
  Calls `odsyGctxFromRnid` via direct with a0=?, a1=?, a2=?, a3=?, a5=[[a0+32]:8+80]+1 (`jal` at 0x8f4).
  Calls `OdsyAllocCSetId` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x948).
  Calls `copyout` via direct with a0=sp-192, a1=a2 at entry (arg2), a2=0x48, a3=ret(OdsyAllocCSetId), a4=-0x1 (`jal` at 0x9f4).
  Calls `psema` via direct with a0=[a0+32]:8+56, a1=0x219, a2=?, a3=?, a4=a0 at entry (arg0) (`jal` at 0xa10).
  Calls `us_delay` via direct with a0=0x2, a1=?, a2=?, a3=? (`jal` at 0xa34).
  Calls `odsy_mm_sg_new` via direct with a0=a0 at entry (arg0), a1=?, a2=a3 at entry (arg3), a3=?, a5=[[a0+32]:8+80]+1 (`jal` at 0xa64).
  Calls `copyout` via direct with a0=sp-192, a1=a2 at entry (arg2), a2=0x48, a3=[[a0+32]:8+80]-1, a4=[a0+32]:8 (`jal` at 0xa94).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0xab0).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a5=a0 at entry (arg0) (`jal` at 0xad8).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a4=[[a0]:8+8]:8, a5=a0 at entry (arg0) (`jal` at 0xafc).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a5=[[a0+32]:8+80]-1, a6=[a0+32]:8 (`jal` at 0xb38).
  Calls `odsy_mm_sg_destroy` via direct with a0=?, a1=?, a2=?, a3=ret(OdsyAllocCSetId), a4=-0x1 (`jal` at 0xb64).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0xb88).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0xbac).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0xbd0).
  The `bne` at 0x7e0 is taken when v0(=ret(copyin)) != 0 and falls through when v0(=ret(copyin)) == 0.
  The `beq` at 0x800 is taken when v0(=ret(odsyGctxFromRnid)) == 0 and falls through when v0(=ret(odsyGctxFromRnid)) != 0.
  The `beq` at 0x810 is taken when v1(=[ret(odsyGctxFromRnid)+104]:8) == 0 and falls through when v1(=[ret(odsyGctxFromRnid)+104]:8) != 0.
  The `bne` at 0x820 is taken when a4(=[[a0]:8+8]:8) != a5(=a0) and falls through when a4(=[[a0]:8+8]:8) == a5(=a0).
  The `beq` at 0x84c is taken when v0(=ret(odsyPinAndMapGctxSwShadowRgn)) == 0 and falls through when v0(=ret(odsyPinAndMapGctxSwShadowRgn)) != 0.
  The `beq` at 0x8b8 is taken when at(?) == 0 and falls through when at(?) != 0.
  The `bne` at 0x8cc is taken when v1(=[[a0+32]:8+72]:8) != a4(=a0) and falls through when v1(=[[a0+32]:8+72]:8) == a4(=a0).
  The `beq` at 0x8e4 is taken when a3(?) == 0 and falls through when a3(?) != 0.
  The `beq` at 0x8ec is taken when at(=-0x1) == a3(?) and falls through when at(=-0x1) != a3(?).
  The `beq` at 0x900 is taken when v0(=ret(odsyGctxFromRnid)) == 0 and falls through when v0(=ret(odsyGctxFromRnid)) != 0.
  The `bne` at 0x910 is taken when v1(=[ret(odsyGctxFromRnid)+152]:8) != 0 and falls through when v1(=[ret(odsyGctxFromRnid)+152]:8) == 0.
  The `beq` at 0x954 is taken when v0(=ret(OdsyAllocCSetId)) == a4(=-0x1) and falls through when v0(=ret(OdsyAllocCSetId)) != a4(=-0x1).
  The `bne` at 0x9fc is taken when v0(=ret(copyout)) != 0 and falls through when v0(=ret(copyout)) == 0.
  The `beq` at 0xa2c is taken when v1(=[[a0+32]:8+104]) == 0 and falls through when v1(=[[a0+32]:8+104]) != 0.
  The `bne` at 0xa48 is taken when a4(=[[a0+32]:8+104]) != 0 and falls through when a4(=[[a0+32]:8+104]) == 0.
  The `bne` at 0xa6c is taken when v0(=ret(odsy_mm_sg_new)) != 0 and falls through when v0(=ret(odsy_mm_sg_new)) == 0.
  The `bne` at 0xa9c is taken when v0(=ret(copyout)) != 0 and falls through when v0(=ret(copyout)) == 0.
  The `bne` at 0xb5c is taken when at(?) != 0 and falls through when at(?) == 0.
  The `jr` at 0x830 returns with v0 = ?.

- `odsyMMdetach` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0xbec, 224 bytes) Inferred.
  Loads 8 bytes from a1 (arg1 at entry) +0x98 into `s1` (`ld` at 0xbf4).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `a3` (`ld` at 0xc0c, 0xc88, 0xca0).
  Loads 8 bytes from [a0+32]:8 +0x48 into `at` (`ld` at 0xc10).
  Loads 4 bytes from [a0+32]:8 +0x50 into `v0` (`lw` at 0xc1c, 0xcb4).
  Stores 4 bytes from `v0` to [a0+32]:8 +0x50 (`sw` at 0xc30).
  Stores 8 bytes from `zero` to a1 (arg1 at entry) +0x98 (`sd` at 0xc34).
  Loads 4 bytes from [a1+152]:8 +0x10 into `v1` (`lw` at 0xc38).
  Stores 4 bytes from `v1` to [a1+152]:8 +0x10 (`sw` at 0xc4c).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `at` (`ld` at 0xc50).
  Loads 4 bytes from [a0+32]:8 +0x50 into `a2` (`lw` at 0xc54).
  Stores 4 bytes from `a2` to [a0+32]:8 +0x50 (`sw` at 0xc5c).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `v0` (`ld` at 0xc80).
  Stores 8 bytes from `s0` to [a0+32]:8 +0x48 (`sd` at 0xc84).
  Loads 4 bytes from [a0+32]:8 +0x68 into `at` (`lw` at 0xc8c).
  Loads 4 bytes from [a0+32]:8 +0x68 into `v1` (`lw` at 0xca4).
  Calls `odsy_mm_sg_remove_gctx` via direct with a0=[a1+152]:8, a1=a1 at entry (arg1), a2=?, a3=[a0+32]:8 (`jal` at 0xc2c).
  Calls `psema` via direct with a0=[a0+32]:8+56, a1=0x219, a2=a2 at entry (arg2), a3=[a0+32]:8 (`jal` at 0xc78).
  Calls `us_delay` via direct with a0=0x2, a1=?, a2=?, a3=[a0+32]:8 (`jal` at 0xc98).
  Calls `odsy_mm_sg_destroy` via direct with a0=[a1+152]:8, a1=?, a2=?, a3=? (`jal` at 0xcbc).
  The `beq` at 0xc04 is taken when s1(=[a1+152]:8) == 0 and falls through when s1(=[a1+152]:8) != 0.
  The `bne` at 0xc14 is taken when at(=[[a0+32]:8+72]:8) != s0(=a0) and falls through when at(=[[a0+32]:8+72]:8) == s0(=a0).
  The `beq` at 0xc48 is taken when v1(=[[a1+152]:8+16]-1) == 0 and falls through when v1(=[[a1+152]:8+16]-1) != 0.
  The `beq` at 0xc90 is taken when at(=[[a0+32]:8+104]) == 0 and falls through when at(=[[a0+32]:8+104]) != 0.
  The `bne` at 0xca8 is taken when v1(=[[a0+32]:8+104]) != 0 and falls through when v1(=[[a0+32]:8+104]) == 0.
  The `jr` at 0xc6c returns with v0 = ?.

- `odsy_mm_sg_remove_gctx` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0xccc, 432 bytes) Inferred.
  Loads 4 bytes from a1 (arg1 at entry) +0xa0 into `a1` (`lw` at 0xdf0, 0xe08, 0xe54).
  Loads 4 bytes from a1 (arg1 at entry) +0xcc into `v1` (`lw` at 0xe18).
  Stores 4 bytes from `a2` to a1 (arg1 at entry) +0xa0 (`sw` at 0xe6c).
  Calls `OdsyInitCSetCursor` via direct with a0=a1+264, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xcec).
  Calls `OdsyNextCSetElem` via direct with a0=a1+264, a1=?, a2=?, a3=? (`jal` at 0xcf4).
  Calls `odsy_mm_grp_destroy` via direct with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=? (`jal` at 0xd04).
  Calls `OdsyInitCSetCursor` via direct with a0=a1+264, a1=?, a2=?, a3=? (`jal` at 0xd0c).
  Calls `OdsyNextCSetElem` via direct with a0=a1+264, a1=?, a2=?, a3=? (`jal` at 0xd14).
  Calls `OdsyDestroyCSet` via direct with a0=a1+264, a1=0x0, a2=?, a3=? (`jal` at 0xd2c).
  Calls `OdsyInitCSetCursor` via direct with a0=a1+184, a1=?, a2=?, a3=? (`jal` at 0xd34).
  Calls `OdsyNextCSetElem` via direct with a0=a1+184, a1=?, a2=?, a3=? (`jal` at 0xd3c).
  Calls `OdsyDeallocCSetId` via direct with a0=a1+184, a1=?, a2=?, a3=? (`jal` at 0xd64).
  Calls `OdsyNextCSetElem` via direct with a0=a1+184, a1=?, a2=?, a3=? (`jal` at 0xd6c).
  Calls `OdsyInitCSetCursor` via direct with a0=a1+184, a1=?, a2=?, a3=? (`jal` at 0xd7c).
  Calls `OdsyNextCSetElem` via direct with a0=a1+184, a1=?, a2=?, a3=? (`jal` at 0xd84).
  Calls `odsy_mm_cores_destroy` via direct with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=? (`jal` at 0xd94).
  Calls `OdsyInitCSetCursor` via direct with a0=a1+184, a1=?, a2=?, a3=? (`jal` at 0xd9c).
  Calls `OdsyNextCSetElem` via direct with a0=a1+184, a1=?, a2=?, a3=? (`jal` at 0xda4).
  Calls `OdsyInitCSetCursor` via direct with a0=a0+64, a1=?, a2=?, a3=? (`jal` at 0xdc0).
  Calls `OdsyNextCSetElem` via direct with a0=a0+64, a1=?, a2=?, a3=? (`jal` at 0xdc8).
  Calls `OdsyNextCSetElem` via direct with a0=a0+64, a1=?, a2=?, a3=? (`jal` at 0xde0).
  Calls `OdsyLookupCSetId` via direct with a0=ret(OdsyNextCSetElem)+160, a1=[a1+160], a2=?, a3=? (`jal` at 0xdf4).
  Calls `OdsyDeallocCSetId` via direct with a0=ret(OdsyNextCSetElem)+160, a1=[a1+160], a2=?, a3=? (`jal` at 0xe04).
  Calls `conbuf_flush` via direct with a0=0x3, a1=?, a2=[sym(kdebug)]:2, a3=? (`jal` at 0xe30).
  Calls `debug` via direct with a0=sym(.rodata), a1=?, a2=?, a3=? (`jal` at 0xe3c).
  Calls `OdsyDestroyCSet` via direct with a0=a1+184, a1=0x0, a2=?, a3=? (`jal` at 0xe48).
  Calls `OdsyDeallocCSetId` via direct with a0=a0+24, a1=[a1+160], a2=?, a3=? (`jal` at 0xe58).
  The `beq` at 0xcfc is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `bne` at 0xd1c is taken when v0(=ret(OdsyNextCSetElem)) != 0 and falls through when v0(=ret(OdsyNextCSetElem)) == 0.
  The `beq` at 0xd44 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `bne` at 0xd54 is taken when a1(=0x1) != v0(=ret(OdsyNextCSetElem)) and falls through when a1(=0x1) == v0(=ret(OdsyNextCSetElem)).
  The `bne` at 0xd74 is taken when v0(=ret(OdsyNextCSetElem)) != 0 and falls through when v0(=ret(OdsyNextCSetElem)) == 0.
  The `beq` at 0xd8c is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `bne` at 0xdac is taken when v0(=ret(OdsyNextCSetElem)) != 0 and falls through when v0(=ret(OdsyNextCSetElem)) == 0.
  The `beq` at 0xdd0 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0xde8 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0xdfc is taken when v0(=ret(OdsyLookupCSetId)) == 0 and falls through when v0(=ret(OdsyLookupCSetId)) != 0.
  The `beq` at 0xe20 is taken when v1(=[a1+204]) == 0 and falls through when v1(=[a1+204]) != 0.
  The `beq` at 0xe28 is taken when a2(=[sym(kdebug)]:2) == 0 and falls through when a2(=[sym(kdebug)]:2) != 0.
  The `jr` at 0xe74 returns with v0 = ret(OdsyDeallocCSetId).

- `gfP_OdsyMMalloc` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0xe7c, 960 bytes) Inferred.
  Stores 4 bytes from `zero` to a3 (arg3 at entry) +0x0 (`sw` at 0xe80).
  Loads 8 bytes from a0 (arg0 at entry) +0x48 into `s2` (`ld` at 0xe88).
  Loads 8 bytes from [a0+72]:8 +0x70 into `s2` (`ld` at 0xe98).
  Loads 8 bytes from [[a0+72]:8+112]:8 +0x98 into `at` (`ld` at 0xec8).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `v0`: 4 such accesses, including `ld` at 0xf04, 0x103c, 0x1044.
  Loads 8 bytes from [a0+32]:8 +0x48 into `a4` (`ld` at 0xf08).
  Loads 4 bytes from [a0+32]:8 +0x50 into `at` (`lw` at 0xf14, 0x1070).
  Stores 4 bytes from `at` to [a0+32]:8 +0x50 (`sw` at 0xf1c).
  Loads 8 bytes from ? (base unknown) into `v0` (`ld` at 0xf54).
  Loads 4 bytes from ? (base unknown) into `a4` (`lw` at 0xf64, 0xf7c, 0xf94).
  Loads 4 bytes from ? (base unknown) into `at`: 4 such accesses, including `lw` at 0xf70, 0xf88, 0xfa0.
  Loads 1 byte from ? (base unknown) into `a4` (`lbu` at 0xfb0).
  Loads 1 byte from ? (base unknown) into `at` (`lbu` at 0xfc0).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `a7` (`ld` at 0xff0).
  Loads 4 bytes from [a0+32]:8 +0x50 into `a6` (`lw` at 0xff8).
  Stores 4 bytes from `a6` to [a0+32]:8 +0x50 (`sw` at 0x1010).
  Loads 4 bytes from a3 (arg3 at entry) +0x0 into `v0` (`lw` at 0x1024).
  Stores 8 bytes from `s0` to [a0+32]:8 +0x48 (`sd` at 0x1040).
  Loads 4 bytes from [a0+32]:8 +0x68 into `at` (`lw` at 0x1048).
  Loads 4 bytes from [a0+32]:8 +0x68 into `v1` (`lw` at 0x1060).
  Loads 4 bytes from ? (base unknown) into `v1` (`lw` at 0x10d4).
  Stores 4 bytes from `a4` to a3 (arg3 at entry) +0x0: 7 such accesses, including `sw` at 0x10ec, 0x1114, 0x1144.
  Stores 4 bytes from `at` to a3 (arg3 at entry) +0x0 (`sw` at 0x11f8).
  Calls `copyin` via direct with a0=a2 at entry (arg2), a1=sp-208, a2=0x48, a3=a3 at entry (arg3), a6=0x0, a7=0x0 (`jal` at 0xee4).
  Calls `OdsyLookupCSetId` via direct with a0=?, a1=?, a2=?, a3=?, a5=-0x1 (`jal` at 0xf34).
  Calls `odsy_mm_obj_destroy` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xfd0).
  Calls `copyout` via direct with a0=sp-208, a1=a2 at entry (arg2), a2=0x48, a3=?, a6=[[a0+32]:8+80]-1, a7=[a0+32]:8 (`jal` at 0x100c).
  Calls `psema` via direct with a0=[a0+32]:8+56, a1=0x219, a2=?, a3=?, a4=[[a0+32]:8+72]:8 (`jal` at 0x1034).
  Calls `us_delay` via direct with a0=0x2, a1=?, a2=?, a3=? (`jal` at 0x1054).
  Calls `odsy_mm_grp_new` via direct with a0=[[a0+72]:8+112]:8, a1=?, a2=sp-208, a3=?, a5=-0x1 (`jal` at 0x107c).
  Calls `odsy_mm_obj_new` via direct with a0=?, a1=?, a2=?, a3=sp-196 (`jal` at 0x10c4).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=0x0, a7=0x0 (`jal` at 0x1108).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=0x0, a7=0x0 (`jal` at 0x1138).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x1168).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x119c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x11c0).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a4=ret(OdsyLookupCSetId) (`jal` at 0x11e4).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x1210).
  Calls `odsy_mm_grp_destroy` via direct with a0=?, a1=?, a2=?, a3=?, a5=-0x1 (`jal` at 0x122c).
  The `beq` at 0xeb4 is taken when s2(=[[a0+72]:8+112]:8) == 0 and falls through when s2(=[[a0+72]:8+112]:8) != 0.
  The `beq` at 0xed4 is taken when at(=[[[a0+72]:8+112]:8+152]:8) == 0 and falls through when at(=[[[a0+72]:8+112]:8+152]:8) != 0.
  The `bne` at 0xeec is taken when v0(=ret(copyin)) != 0 and falls through when v0(=ret(copyin)) == 0.
  The `beq` at 0xefc is taken when a2(?) >= 0x10 (signed) and falls through when a2(?) < 0x10 (signed).
  The `bne` at 0xf0c is taken when a4(=[[a0+32]:8+72]:8) != s0(=a0) and falls through when a4(=[[a0+32]:8+72]:8) == s0(=a0).
  The `beq` at 0xf28 is taken when a5(=-0x1) == a1(?) and falls through when a5(=-0x1) != a1(?).
  The `beq` at 0xf40 is taken when v0(=ret(OdsyLookupCSetId)) == 0 and falls through when v0(=ret(OdsyLookupCSetId)) != 0.
  The `beq` at 0xf5c is taken when v0(?) == 0 and falls through when v0(?) != 0.
  The `bne` at 0xf68 is taken when a4(?) != a5(?) and falls through when a4(?) == a5(?).
  The `bne` at 0xf74 is taken when at(?) != v1(?) and falls through when at(?) == v1(?).
  The `bne` at 0xf80 is taken when a4(?) != a5(?) and falls through when a4(?) == a5(?).
  The `bne` at 0xf8c is taken when at(?) != v1(?) and falls through when at(?) == v1(?).
  The `bne` at 0xf98 is taken when a4(?) != a5(?) and falls through when a4(?) == a5(?).
  The `bne` at 0xfa8 is taken when at(?) != v1(?) and falls through when at(?) == v1(?).
  The `bne` at 0xfb8 is taken when a4(?) != a5(?) and falls through when a4(?) == a5(?).
  The `beq` at 0xfc8 is taken when at(?) == v1(?) and falls through when at(?) != v1(?).
  The `beq` at 0xfe8 is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `bne` at 0x101c is taken when v0(=ret(copyout)) != 0 and falls through when v0(=ret(copyout)) == 0.
  The `beq` at 0x104c is taken when at(=[[a0+32]:8+104]) == 0 and falls through when at(=[[a0+32]:8+104]) != 0.
  The `bne` at 0x1064 is taken when v1(=[[a0+32]:8+104]) != 0 and falls through when v1(=[[a0+32]:8+104]) == 0.
  The `beq` at 0x1088 is taken when v0(=ret(odsy_mm_grp_new)) == 0 and falls through when v0(=ret(odsy_mm_grp_new)) != 0.
  The `bne` at 0x1094 is taken when a4(?) != 0 and falls through when a4(?) == 0.
  The `bne` at 0x10a0 is taken when a5(?) != 0 and falls through when a5(?) == 0.
  The `bne` at 0x10ac is taken when s3(?) != 0 and falls through when s3(?) == 0.
  The `bne` at 0x10cc is taken when v0(=ret(odsy_mm_obj_new)) != 0 and falls through when v0(=ret(odsy_mm_obj_new)) == 0.
  The `beq` at 0x10d8 is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `jr` at 0x102c returns with v0 = ?.

- `gfP_OdsyMMdealloc` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x123c, 656 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x48 into `a1` (`ld` at 0x123c).
  Loads 8 bytes from [a0+72]:8 +0x70 into `a1` (`ld` at 0x1244).
  Loads 8 bytes from [[a0+72]:8+112]:8 +0x98 into `a4` (`ld` at 0x1260).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `v0`: 4 such accesses, including `ld` at 0x128c, 0x133c, 0x1344.
  Loads 8 bytes from [a0+32]:8 +0x48 into `a5` (`ld` at 0x1290).
  Loads 4 bytes from [a0+32]:8 +0x50 into `a1` (`lw` at 0x129c, 0x1370).
  Stores 4 bytes from `a1` to [a0+32]:8 +0x50 (`sw` at 0x12a8).
  Loads 8 bytes from ? (base unknown) into `v0` (`ld` at 0x12e4).
  Loads 4 bytes from ? (base unknown) into `a4` (`lw` at 0x12fc).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `at` (`ld` at 0x1308).
  Loads 4 bytes from [a0+32]:8 +0x50 into `s0` (`lw` at 0x130c, 0x1378).
  Stores 4 bytes from `s0` to [a0+32]:8 +0x50 (`sw` at 0x1314, 0x1384).
  Stores 8 bytes from `s0` to [a0+32]:8 +0x48 (`sd` at 0x1340).
  Loads 4 bytes from [a0+32]:8 +0x68 into `at` (`lw` at 0x1348).
  Loads 4 bytes from [a0+32]:8 +0x68 into `v1` (`lw` at 0x1360).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `s1` (`ld` at 0x1374).
  Stores 4 bytes from `a4` to a3 (arg3 at entry) +0x0: 6 such accesses, including `sw` at 0x1398, 0x13e0, 0x143c.
  Calls `copyin` via direct with a0=a2 at entry (arg2), a1=sp-160, a2=0x48, a3=a3 at entry (arg3), a4=[[[a0+72]:8+112]:8+152]:8 (`jal` at 0x127c).
  Calls `OdsyLookupCSetId` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x12b0).
  Calls `odsy_mm_obj_destroy` via direct with a0=?, a1=ret(OdsyLookupCSetId), a2=?, a3=? (`jal` at 0x12f0).
  Calls `psema` via direct with a0=[a0+32]:8+56, a1=0x219, a2=?, a3=?, a5=[[a0+32]:8+72]:8 (`jal` at 0x1334).
  Calls `us_delay` via direct with a0=0x2, a1=?, a2=?, a3=? (`jal` at 0x1354).
  Calls `copyout` via direct with a0=sp-160, a1=a2 at entry (arg2), a2=0x48, a3=? (`jal` at 0x13a8).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x13c4).
  Calls `odsy_mm_grp_destroy` via direct with a0=ret(OdsyLookupCSetId), a1=ret(OdsyLookupCSetId), a2=?, a3=? (`jal` at 0x13e4).
  Calls `odsy_mm_grp_destroy` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x13f8).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1420).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[[[a0+72]:8+112]:8+152]:8 (`jal` at 0x1450).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x147c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x14ac).
  The `beq` at 0x1258 is taken when a1(=[[a0+72]:8+112]:8) == 0 and falls through when a1(=[[a0+72]:8+112]:8) != 0.
  The `beq` at 0x126c is taken when a4(=[[[a0+72]:8+112]:8+152]:8) == 0 and falls through when a4(=[[[a0+72]:8+112]:8+152]:8) != 0.
  The `bne` at 0x1284 is taken when v0(=ret(copyin)) != 0 and falls through when v0(=ret(copyin)) == 0.
  The `bne` at 0x1294 is taken when a5(=[[a0+32]:8+72]:8) != s0(=a0) and falls through when a5(=[[a0+32]:8+72]:8) == s0(=a0).
  The `beq` at 0x12c0 is taken when v0(=ret(OdsyLookupCSetId)) == 0 and falls through when v0(=ret(OdsyLookupCSetId)) != 0.
  The `beq` at 0x12cc is taken when a4(?) == 0 and falls through when a4(?) != 0.
  The `beq` at 0x12dc is taken when a2(?) >= 0x10 (signed) and falls through when a2(?) < 0x10 (signed).
  The `beq` at 0x12e8 is taken when v0(?) == 0 and falls through when v0(?) != 0.
  The `beq` at 0x1300 is taken when a4(?) == 0 and falls through when a4(?) != 0.
  The `beq` at 0x131c is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `beq` at 0x134c is taken when at(=[[a0+32]:8+104]) == 0 and falls through when at(=[[a0+32]:8+104]) != 0.
  The `bne` at 0x1364 is taken when v1(=[[a0+32]:8+104]) != 0 and falls through when v1(=[[a0+32]:8+104]) == 0.
  The `beq` at 0x13b4 is taken when v0(=ret(copyout)) == 0 and falls through when v0(=ret(copyout)) != 0.
  The `jr` at 0x132c returns with v0 = one of 0x0, 0x1, 0xe, 0x16.

- `odsy_mm_mkres_timeout` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x14cc, 56 bytes) Inferred.
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x14e4).
  Calls `odsy_teardown` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x14ec).
  The `jr` at 0x14fc returns with v0 = ret(odsy_teardown).

- `gfP_OdsyMMmakeResident` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x1504, 916 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x48 into `s1` (`ld` at 0x150c).
  Loads 8 bytes from [a0+72]:8 +0x70 into `s1` (`ld` at 0x1510).
  Loads 8 bytes from [[a0+72]:8+112]:8 +0x98 into `s4` (`ld` at 0x1530).
  Loads 8 bytes from [[[a0+72]:8+112]:8+152]:8 +0x8 into `t8` (`ld` at 0x1544).
  Stores 4 bytes from `zero` to a3 (arg3 at entry) +0x0 (`sw` at 0x157c).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `v0`: 4 such accesses, including `ld` at 0x1590, 0x16e4, 0x16ec.
  Loads 8 bytes from [a0+32]:8 +0x48 into `a4` (`ld` at 0x1594).
  Loads 4 bytes from [a0+32]:8 +0x50 into `a5` (`lw` at 0x15a0, 0x1718).
  Stores 4 bytes from `a5` to [a0+32]:8 +0x50 (`sw` at 0x15a8).
  Loads 4 bytes from [[a0+72]:8+112]:8 +0xa0 into `a1` (`lw` at 0x15c8).
  Loads 8 bytes from ret(OdsyFindMatchingCSetElem) +0x28 into `v1` (`ld` at 0x160c).
  Loads 8 bytes from ret(OdsyFindMatchingCSetElem) +0x20 into `at` (`ld` at 0x1610).
  Loads 2 bytes from [ret(OdsyFindMatchingCSetElem)+40]:8 +0x4 into `v1` (`lhu` at 0x1614).
  Loads 2 bytes from [ret(OdsyFindMatchingCSetElem)+32]:8 +0x0 into `at` (`lhu` at 0x1618).
  Loads 4 bytes from ret(OdsyFindMatchingCSetElem) +0x0 into `v0` (`lw` at 0x1624).
  Loads 4 bytes from ret(OdsyFindMatchingCSetElem) +0x4 into `a2` (`lw` at 0x1628, 0x1644).
  Stores 4 bytes from `a1` to ? (base unknown) (`sw` at 0x1640).
  Loads 8 bytes from ? (base unknown) into `a0` (`ld` at 0x1658).
  Loads 4 bytes from ? (base unknown) into `a3` (`lw` at 0x1664).
  Loads 8 bytes from ? (base unknown) into `a1` (`ld` at 0x1690).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `at` (`ld` at 0x16b4).
  Loads 4 bytes from [a0+32]:8 +0x50 into `a4` (`lw` at 0x16b8).
  Stores 4 bytes from `a4` to [a0+32]:8 +0x50 (`sw` at 0x16c0).
  Loads 4 bytes from a3 (arg3 at entry) +0x0 into `v0` (`lw` at 0x16c4).
  Stores 8 bytes from `s0` to [a0+32]:8 +0x48 (`sd` at 0x16e8).
  Loads 4 bytes from [a0+32]:8 +0x68 into `at` (`lw` at 0x16f0).
  Loads 4 bytes from [a0+32]:8 +0x68 into `v1` (`lw` at 0x1708).
  Stores 4 bytes from `a1` to a3 (arg3 at entry) +0x0 (`sw` at 0x1720).
  Stores 4 bytes from `a4` to a3 (arg3 at entry) +0x0: 9 such accesses, including `sw` at 0x1748, 0x1770, 0x1798.
  Loads 4 bytes from [[a0+72]:8+112]:8 +0xa0 into `a2` (`lw` at 0x17f8).
  Calls `copyin` via direct with a0=a2 at entry (arg2), a1=sp-112, a2=0x8, a3=a3 at entry (arg3) (`jal` at 0x154c).
  Calls `RRM_CheckValidFault` via direct with a0=a0 at entry (arg0), a1=sym(.rodata), a2=?, a3=? (`jal` at 0x1580).
  Calls `OdsyLookupCSetId` via direct with a0=[[[a0+72]:8+112]:8+152]:8+64, a1=?, a2=?, a3=?, a5=[[a0+32]:8+80]+1 (`jal` at 0x15b4).
  Calls `OdsyLookupCSetId` via direct with a0=ret(OdsyLookupCSetId)+160, a1=[[[a0+72]:8+112]:8+160], a2=?, a3=? (`jal` at 0x15cc).
  Calls `OdsyFindMatchingCSetElem` via direct with a0=ret(OdsyLookupCSetId), a1=sp-104, a2=sym(CoresidRangeFinder), a3=? (`jal` at 0x15fc).
  Calls `timeout` via direct with a0=sym(odsy_mm_mkres_timeout), a1=?, a2=0x5dc, a3=? (`jal` at 0x168c).
  Calls `odsy_mm_commit` via direct with a0=ret(OdsyFindMatchingCSetElem), a1=?, a2=?, a3=? (`jal` at 0x1698).
  Calls `untimeout` via direct with a0=ret(timeout), a1=?, a2=?, a3=? (`jal` at 0x16a8).
  Calls `psema` via direct with a0=[a0+32]:8+56, a1=0x219, a2=?, a3=?, a4=[[a0+32]:8+72]:8 (`jal` at 0x16dc).
  Calls `us_delay` via direct with a0=0x2, a1=?, a2=?, a3=? (`jal` at 0x16fc).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x173c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1764).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x178c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x17b4).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x17e0).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=[[[a0+72]:8+112]:8+160], a3=? (`jal` at 0x180c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x1834).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x1858).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x1878).
  Calls `untimeout` via direct with a0=ret(timeout), a1=?, a2=?, a3=? (`jal` at 0x1880).
  The `beq` at 0x1524 is taken when s1(=[[a0+72]:8+112]:8) == 0 and falls through when s1(=[[a0+72]:8+112]:8) != 0.
  The `beq` at 0x1534 is taken when s4(=[[[a0+72]:8+112]:8+152]:8) == 0 and falls through when s4(=[[[a0+72]:8+112]:8+152]:8) != 0.
  The `bne` at 0x1554 is taken when v0(=ret(copyin)) != 0 and falls through when v0(=ret(copyin)) == 0.
  The `beq` at 0x1560 is taken when v0(?) >= 0x10 (signed) and falls through when v0(?) < 0x10 (signed).
  The `beq` at 0x156c is taken when a0(?) >= 0x10 (signed) and falls through when a0(?) < 0x10 (signed).
  The `bne` at 0x1574 is taken when a1(?) != 0 and falls through when a1(?) == 0.
  The `bltz` at 0x1588 is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed) and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed).
  The `bne` at 0x1598 is taken when a4(=[[a0+32]:8+72]:8) != s0(=a0) and falls through when a4(=[[a0+32]:8+72]:8) == s0(=a0).
  The `beq` at 0x15c0 is taken when v0(=ret(OdsyLookupCSetId)) == 0 and falls through when v0(=ret(OdsyLookupCSetId)) != 0.
  The `beq` at 0x15d4 is taken when v0(=ret(OdsyLookupCSetId)) == 0 and falls through when v0(=ret(OdsyLookupCSetId)) != 0.
  The `beq` at 0x1604 is taken when v0(=ret(OdsyFindMatchingCSetElem)) == 0 and falls through when v0(=ret(OdsyFindMatchingCSetElem)) != 0.
  The `beq` at 0x161c is taken when at(=[[ret(OdsyFindMatchingCSetElem)+32]:8]:2) == v1(=[[ret(OdsyFindMatchingCSetElem)+40]:8+4]:2) and falls through when at(=[[ret(OdsyFindMatchingCSetElem)+32]:8]:2) != v1(=[[ret(OdsyFindMatchingCSetElem)+40]:8+4]:2).
  The `bne` at 0x1630 is taken when a2(=[ret(OdsyFindMatchingCSetElem)+4]) < v0(=[ret(OdsyFindMatchingCSetElem)]) (signed) and falls through when a2(=[ret(OdsyFindMatchingCSetElem)+4]) >= v0(=[ret(OdsyFindMatchingCSetElem)]) (signed).
  The `bne` at 0x164c is taken when a4(?) != 0 and falls through when a4(?) == 0.
  The `beq` at 0x165c is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `beq` at 0x166c is taken when (a3(?) & 0x2) == 0 and falls through when (a3(?) & 0x2) != 0.
  The `bne` at 0x16a0 is taken when v0(=ret(odsy_mm_commit)) != 0 and falls through when v0(=ret(odsy_mm_commit)) == 0.
  The `beq` at 0x16f4 is taken when at(=[[a0+32]:8+104]) == 0 and falls through when at(=[[a0+32]:8+104]) != 0.
  The `bne` at 0x170c is taken when v1(=[[a0+32]:8+104]) != 0 and falls through when v1(=[[a0+32]:8+104]) == 0.
  The `jr` at 0x16d4 returns with v0 = ?.

- `MapKernelRegionIntoUserSpace` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x1898, 92 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x18 into `at` (`ld` at 0x18b8).
  Loads 4 bytes from a0 (arg0 at entry) +0x1c into `a3` (`lw` at 0x18d8).
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `a2` (`ld` at 0x18e4).
  Calls `odsyMapPages` via direct with a0=0x0, a1=a0+16, a2=[a0+8]:8, a3=[a0+28], a4=sp-64, a5=0x1, a6=a0 at entry (arg0) (`jal` at 0x18e0).
  The `jr` at 0x18ec returns with v0 = ret(odsyMapPages).

- `CoresidRangeFinder` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x18f4, 72 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `v0` (`ld` at 0x18f4).
  Loads 4 bytes from a1 (arg1 at entry) +0x8 into `at` (`lw` at 0x18f8).
  Loads 4 bytes from [a0+8]:8 +0x0 into `v0` (`lw` at 0x18fc).
  Loads 4 bytes from a0 (arg0 at entry) +0x4 into `a2` (`lw` at 0x1908).
  Loads 4 bytes from a1 (arg1 at entry) +0x0 into `v1` (`lw` at 0x190c).
  Loads 4 bytes from a1 (arg1 at entry) +0x4 into `at` (`lw` at 0x191c).
  Loads 4 bytes from a0 (arg0 at entry) +0x0 into `a3` (`lw` at 0x1920).
  The `bne` at 0x1900 is taken when at(=[a1+8]) != v0(=[[a0+8]:8]) and falls through when at(=[a1+8]) == v0(=[[a0+8]:8]).
  The `bne` at 0x1914 is taken when v1(=[a1]) != a2(=[a0+4]) and falls through when v1(=[a1]) == a2(=[a0+4]).
  The `bne` at 0x1924 is taken when a3(=[a0]) != at(=[a1+4]) and falls through when a3(=[a0]) == at(=[a1+4]).
  The `jr` at 0x192c returns with v0 = 0x0.
  The `jr` at 0x1934 returns with v0 = 0x1.

- `CoresidSubRangeFinder` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x193c, 80 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `v0` (`ld` at 0x193c).
  Loads 4 bytes from a1 (arg1 at entry) +0x8 into `at` (`lw` at 0x1940).
  Loads 4 bytes from [a0+8]:8 +0x0 into `v0` (`lw` at 0x1944).
  Loads 4 bytes from a1 (arg1 at entry) +0x0 into `a2` (`lw` at 0x1950).
  Loads 4 bytes from a0 (arg0 at entry) +0x4 into `v1` (`lw` at 0x1954).
  Loads 4 bytes from a0 (arg0 at entry) +0x0 into `at` (`lw` at 0x1968).
  Loads 4 bytes from a1 (arg1 at entry) +0x4 into `a3` (`lw` at 0x196c).
  The `bne` at 0x1948 is taken when at(=[a1+8]) != v0(=[[a0+8]:8]) and falls through when at(=[a1+8]) == v0(=[[a0+8]:8]).
  The `bne` at 0x1960 is taken when v1(=[a0+4]) < a2(=[a1]) (signed) and falls through when v1(=[a0+4]) >= a2(=[a1]) (signed).
  The `bne` at 0x1974 is taken when a3(=[a1+4]) < at(=[a0]) (signed) and falls through when a3(=[a1+4]) >= at(=[a0]) (signed).
  The `jr` at 0x197c returns with v0 = 0x0.
  The `jr` at 0x1984 returns with v0 = 0x1.

- `odsy_mm_cores_exists` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x198c, 124 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `a0` (`ld` at 0x1998).
  Loads 4 bytes from a1 (arg1 at entry) +0xa0 into `a1` (`lw` at 0x19a0).
  Loads 2 bytes from a0 (arg0 at entry) +0x0 into `a5` (`lh` at 0x19c4).
  Loads 2 bytes from a0 (arg0 at entry) +0x0 into `a4` (`lh` at 0x19d0).
  Loads 4 bytes from ? (base unknown) into `a3` (`lw` at 0x19e0).
  Calls `OdsyLookupCSetId` via direct with a0=[a0+8]:8+160, a1=[a1+160], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x19a4).
  Calls `OdsyFindMatchingCSetElem` via direct with a0=ret(OdsyLookupCSetId), a1=sp-64, a2=sym(CoresidSubRangeFinder), a3=?, a4=[a0]:2, a5=[a0]:2 (`jal` at 0x19e8).
  The `bne` at 0x19ac is taken when v0(=ret(OdsyLookupCSetId)) != 0 and falls through when v0(=ret(OdsyLookupCSetId)) == 0.
  The `beq` at 0x19f0 is taken when v0(=ret(OdsyFindMatchingCSetElem)) == 0 and falls through when v0(=ret(OdsyFindMatchingCSetElem)) != 0.
  The `jr` at 0x19b8 returns with v0 = one of 0x0, 0x1.

- `odsy_mm_cores_obj_in` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x1a08, 60 bytes) Inferred.
  Loads 8 bytes from a1 (arg1 at entry) +0x8 into `a4` (`ld` at 0x1a0c).
  Loads 8 bytes from ? (base unknown) into `at` (`ld` at 0x1a18).
  The `beq` at 0x1a20 is taken when at(?) == a0 and falls through when at(?) != a0.
  The `bne` at 0x1a28 is taken when v1(?) != 0 and falls through when v1(?) == 0.
  The `jr` at 0x1a34 returns with v0 = 0x0.
  The `jr` at 0x1a3c returns with v0 = 0x1.
- `gfP_OdsyMMquery` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x1a44, 1048 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x48 into `s3` (`ld` at 0x1a4c).
  Loads 8 bytes from [a0+72]:8 +0x70 into `s3` (`ld` at 0x1a64).
  Loads 8 bytes from [[a0+72]:8+112]:8 +0x98 into `at` (`ld` at 0x1a9c).
  Stores 4 bytes from `zero` to a3 (arg3 at entry) +0x0 (`sw` at 0x1ac0).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `a4` (`ld` at 0x1b0c, 0x1c30, 0x1c48).
  Loads 8 bytes from [a0+32]:8 +0x48 into `at` (`ld` at 0x1b10).
  Loads 4 bytes from [a0+32]:8 +0x50 into `v0` (`lw` at 0x1b28).
  Stores 4 bytes from `v0` to [a0+32]:8 +0x50 (`sw` at 0x1b3c).
  Stores 4 bytes from `a6` to a3 (arg3 at entry) +0x0 (`sw` at 0x1b50, 0x1dec).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `t0` (`ld` at 0x1b54).
  Loads 4 bytes from [a0+32]:8 +0x50 into `a7` (`lw` at 0x1b5c).
  Stores 4 bytes from `a7` to [a0+32]:8 +0x50 (`sw` at 0x1b74).
  Loads 4 bytes from a3 (arg3 at entry) +0x0 into `v0` (`lw` at 0x1b88).
  Loads 4 bytes from ret(OdsyLookupCSetId) +0x0 into `t1` (`lw` at 0x1b98).
  Loads 4 bytes from ret(OdsyLookupCSetId) +0xc8 into `t0` (`lw` at 0x1ba0).
  Loads 4 bytes from [[a0+72]:8+112]:8 +0xa0 into `a1` (`lw` at 0x1bb0, 0x1ca0).
  Loads 4 bytes from ? (base unknown) into `v1` (`lw` at 0x1c08).
  Loads 4 bytes from ? (base unknown) into `at` (`lw` at 0x1c10).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `a6` (`ld` at 0x1c28).
  Stores 8 bytes from `s0` to [a0+32]:8 +0x48 (`sd` at 0x1c2c).
  Loads 4 bytes from [a0+32]:8 +0x68 into `a5` (`lw` at 0x1c34).
  Loads 4 bytes from [a0+32]:8 +0x68 into `at` (`lw` at 0x1c4c).
  Stores 4 bytes from `v1` to a3 (arg3 at entry) +0x0 (`sw` at 0x1c88).
  Stores 4 bytes from `a5` to a3 (arg3 at entry) +0x0: 5 such accesses, including `sw` at 0x1cf0, 0x1d24, 0x1d54.
  Stores 1 byte from `t0` to ? (base unknown) (`sb` at 0x1e34).
  Stores 4 bytes from `at` to a3 (arg3 at entry) +0x0 (`sw` at 0x1e50).
  Calls `copyin` via direct with a0=a2 at entry (arg2), a1=sp-240, a2=0x28, a3=a3 at entry (arg3), a4=0x0, a7=0x0 (`jal` at 0x1abc).
  Calls `OdsyLookupCSetId` via direct with a0=?, a1=?, a2=?, a3=?, a4=[a0+32]:8 (`jal` at 0x1b38).
  Calls `copyout` via direct with a0=sp-240, a1=a2 at entry (arg2), a2=0x28, a3=?, a7=[[a0+32]:8+80]-1 (`jal` at 0x1b70).
  Calls `OdsyLookupCSetId` via direct with a0=ret(OdsyLookupCSetId)+160, a1=[[[a0+72]:8+112]:8+160], a2=?, a3=?, a5=ret(OdsyLookupCSetId) (`jal` at 0x1bac).
  Calls `OdsyFindMatchingCSetElem` via direct with a0=?, a1=sp-200, a2=sym(CoresidRangeFinder), a3=? (`jal` at 0x1bf0).
  Calls `psema` via direct with a0=[a0+32]:8+56, a1=0x219, a2=?, a3=?, a4=[a0+32]:8 (`jal` at 0x1c20).
  Calls `us_delay` via direct with a0=0x2, a1=?, a2=?, a3=?, a4=[a0+32]:8 (`jal` at 0x1c40).
  Calls `kmem_alloc` via direct with a0=0x28, a1=0x0, a2=?, a3=?, a4=ret(OdsyLookupCSetId) (`jal` at 0x1c64).
  Calls `OdsyInitCSet` via direct with a0=ret(kmem_alloc), a1=0x2, a2=?, a3=?, a4=ret(kmem_alloc) (`jal` at 0x1c94).
  Calls `OdsyAllocSpecificCSetId` via direct with a0=?, a1=[[[a0+72]:8+112]:8+160], a2=?, a3=? (`jal` at 0x1ca8).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x1ce4).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x0, a7=0x0 (`jal` at 0x1d18).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x0, a7=0x0 (`jal` at 0x1d48).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x1d78).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x1d9c).
  Calls `odsy_mm_cores_new` via direct with a0=[[a0+72]:8+112]:8, a1=?, a2=?, a3=?, a5=[[a0+72]:8+112]:8+184, a6=sp-240 (`jal` at 0x1dd0).
  Calls `cmn_err` via direct with a0=0x7, a1=sym(.rodata), a2=?, a3=?, a5=-0x1 (`jal` at 0x1e04).
  Calls `OdsyDestroyCSet` via direct with a0=?, a1=0x0, a2=?, a3=? (`jal` at 0x1e10).
  Calls `kmem_free` via direct with a0=?, a1=0x28, a2=?, a3=? (`jal` at 0x1e3c).
  The `beq` at 0x1a80 is taken when s3(=[[a0+72]:8+112]:8) == 0 and falls through when s3(=[[a0+72]:8+112]:8) != 0.
  The `beq` at 0x1aa8 is taken when at(=[[[a0+72]:8+112]:8+152]:8) == 0 and falls through when at(=[[[a0+72]:8+112]:8+152]:8) != 0.
  The `bne` at 0x1ac4 is taken when v0(=ret(copyin)) != 0 and falls through when v0(=ret(copyin)) == 0.
  The `bltz` at 0x1ae4 is taken when a3(?) < 0 (signed) and falls through when a3(?) >= 0 (signed).
  The `beq` at 0x1aec is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `bltz` at 0x1af4 is taken when a2(?) < 0 (signed) and falls through when a2(?) >= 0 (signed).
  The `beq` at 0x1afc is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `bne` at 0x1b04 is taken when a6(?) != 0 and falls through when a6(?) == 0.
  The `bne` at 0x1b1c is taken when at(=[[a0+32]:8+72]:8) != s0(=a0) and falls through when at(=[[a0+32]:8+72]:8) == s0(=a0).
  The `bne` at 0x1b44 is taken when v0(=ret(OdsyLookupCSetId)) != 0 and falls through when v0(=ret(OdsyLookupCSetId)) == 0.
  The `bne` at 0x1b80 is taken when v0(=ret(copyout)) != 0 and falls through when v0(=ret(copyout)) == 0.
  The `beq` at 0x1bb4 is taken when v0(=ret(OdsyLookupCSetId)) == 0 and falls through when v0(=ret(OdsyLookupCSetId)) != 0.
  The `bne` at 0x1bc0 is taken when at(?) != 0 and falls through when at(?) == 0.
  The `bne` at 0x1bc8 is taken when v1(?) != 0 and falls through when v1(?) == 0.
  The `beq` at 0x1bf8 is taken when v0(=ret(OdsyFindMatchingCSetElem)) == 0 and falls through when v0(=ret(OdsyFindMatchingCSetElem)) != 0.
  The `bne` at 0x1c00 is taken when a6(?) != 0 and falls through when a6(?) == 0.
  The `beq` at 0x1c38 is taken when a5(=[[a0+32]:8+104]) == 0 and falls through when a5(=[[a0+32]:8+104]) != 0.
  The `bne` at 0x1c50 is taken when at(=[[a0+32]:8+104]) != 0 and falls through when at(=[[a0+32]:8+104]) == 0.
  The `bne` at 0x1c70 is taken when v0(=ret(kmem_alloc)) != 0 and falls through when v0(=ret(kmem_alloc)) == 0.
  The `beq` at 0x1cb4 is taken when v0(=ret(OdsyAllocSpecificCSetId)) == a5(=-0x1) and falls through when v0(=ret(OdsyAllocSpecificCSetId)) != a5(=-0x1).
  The `bne` at 0x1dd8 is taken when v0(=ret(odsy_mm_cores_new)) != 0 and falls through when v0(=ret(odsy_mm_cores_new)) == 0.
  The `bne` at 0x1e30 is taken when a7(?) < 0x28 (unsigned) and falls through when a7(?) >= 0x28 (unsigned).
  The `jr` at 0x1b90 returns with v0 = ?.

- `gfP_OdsyMMxfr` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x1e5c, 1976 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x48 into `s1` (`ld` at 0x1e78).
  Loads 8 bytes from [a0+72]:8 +0x70 into `s1` (`ld` at 0x1e90).
  Loads 8 bytes from [[a0+72]:8+112]:8 +0x98 into `at` (`ld` at 0x1ed4).
  Loads 8 bytes from [[a0+72]:8+112]:8 +0x90 into `a7` (`ld` at 0x1f20).
  Loads 8 bytes from [[[a0+72]:8+112]:8+144]:8 +0x40 into `a7` (`ld` at 0x1f24).
  Loads 8 bytes from [[[[a0+72]:8+112]:8+144]:8+64]:8 +0x20 into `a7` (`ld` at 0x1f28).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `v0`: 4 such accesses, including `ld` at 0x1f40, 0x1fc8, 0x1fd0.
  Loads 8 bytes from [a0+32]:8 +0x48 into `at` (`ld` at 0x1f44).
  Loads 4 bytes from [a0+32]:8 +0x50 into `v1` (`lw` at 0x1f50).
  Stores 4 bytes from `v1` to [a0+32]:8 +0x50 (`sw` at 0x1f60).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `s1` (`ld` at 0x1f84).
  Loads 4 bytes from [a0+32]:8 +0x50 into `s0` (`lw` at 0x1f8c).
  Stores 4 bytes from `s0` to [a0+32]:8 +0x50 (`sw` at 0x1f98).
  Stores 4 bytes from `s3` to a3 (arg3 at entry) +0x0 (`sw` at 0x1fa4, 0x2488).
  Stores 8 bytes from `s0` to [a0+32]:8 +0x48 (`sd` at 0x1fcc).
  Loads 4 bytes from [a0+32]:8 +0x68 into `at` (`lw` at 0x1fd4).
  Loads 4 bytes from [a0+32]:8 +0x68 into `v1` (`lw` at 0x1fec).
  Stores 4 bytes from `zero` to a3 (arg3 at entry) +0x0 (`sw` at 0x2000).
  Loads 8 bytes from ? (base unknown) into `a6` (`ld` at 0x202c, 0x2174).
  Loads 4 bytes from ? (base unknown) into `at` (`lw` at 0x2050, 0x23a4).
  Loads 4 bytes from ([[a0+72]:8+112]:8 + one of 0x160, 0x190) +0x0 into `a0` (`lw` at 0x20ec).
  Loads 4 bytes from ? (base unknown) into `a2` (`lw` at 0x211c, 0x25b4).
  Loads 8 bytes from ? (base unknown) into `a0` (`ld` at 0x2138, 0x2160).
  Loads 8 bytes from [[a0+72]:8+112]:8 +0x90 into `at` (`ld` at 0x2188).
  Loads 8 bytes from [[[a0+72]:8+112]:8+144]:8 +0x40 into `at` (`ld` at 0x218c).
  Loads 8 bytes from [[[[a0+72]:8+112]:8+144]:8+64]:8 +0x20 into `at` (`ld` at 0x2194).
  Loads 8 bytes from ? (base unknown) into `at` (`ld` at 0x21a0).
  Loads 8 bytes from ? (base unknown) into `v0` (`ld` at 0x21ec).
  Stores 1 byte from `a6` to ? (base unknown) (`sb` at 0x2204).
  Stores 4 bytes from `a7` to a3 (arg3 at entry) +0x0 (`sw` at 0x22e0).
  Loads 4 bytes from ? (base unknown) into `a6` (`lw` at 0x2384).
  Loads 8 bytes from a0 (arg0 at entry) +0x20 into `s0` (`ld` at 0x242c).
  Loads 4 bytes from [a0+32]:8 +0x50 into `a7` (`lw` at 0x2430).
  Stores 4 bytes from `a7` to [a0+32]:8 +0x50 (`sw` at 0x2438).
  Stores 4 bytes from `a6` to a3 (arg3 at entry) +0x0: 4 such accesses, including `sw` at 0x24c8, 0x24fc, 0x2530.
  Loads 2 bytes from ? (base unknown) into `a4` (`lh` at 0x2594).
  Loads 8 bytes from ? (base unknown) into `a3` (`ld` at 0x2598).
  Loads 8 bytes from ? (base unknown) into `a2` (`ld` at 0x25a0).
  Loads 4 bytes from ? (base unknown) into `a3` (`lw` at 0x25a8).
  Calls `copyin` via direct with a0=a2 at entry (arg2), a1=sp-304, a2=0x50, a3=a3 at entry (arg3), a4=0x0, a5=0x0 (`jal` at 0x1ef0).
  Calls `RRM_CheckValidFault` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a7=[[[[[a0+72]:8+112]:8+144]:8+64]:8+32]:8 (`jal` at 0x1f30).
  Calls `psema` via direct with a0=[a0+32]:8+56, a1=0x219, a2=?, a3=?, a6=-0x2 (`jal` at 0x1fc0).
  Calls `us_delay` via direct with a0=0x2, a1=?, a2=?, a3=? (`jal` at 0x1fe0).
  Calls `mraccessf` via direct with a0=?, a1=0x0, a2=?, a3=? (`jal` at 0x2110).
  Calls `odsyHashLookup` via direct with a0=?, a1=?, a2=?, a3=0xd (`jal` at 0x2140).
  Calls `mrunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x214c).
  Calls `OdsyLookupCSetId` via direct with a0=?, a1=?, a2=?, a3=?, a6=-0x4 (`jal` at 0x21c8).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x2228).
  Calls `odsyMMvalidatePcxSwap` via direct with a0=?, a1=[[a0+72]:8+112]:8, a2=0x0, a3=?, a7=-0x4 (`jal` at 0x2378).
  Calls `odsyDMAOps` via direct with a0=?, a1=a0 at entry (arg0), a2=[[a0+72]:8+112]:8, a3=sp-304 (`jal` at 0x241c).
  Calls `odsyDMAWait` via direct with a0=?, a1=[[a0+72]:8+112]:8, a2=0x1, a3=sp-232, a7=[[a0+32]:8+80]-1 (`jal` at 0x245c).
  Calls `copyout` via direct with a0=sp-304, a1=a2 at entry (arg2), a2=0x50, a3=? (`jal` at 0x2474).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x0, a5=0x0 (`jal` at 0x24bc).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x0, a5=0x0 (`jal` at 0x24f0).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x2524).
  Calls `cmn_err` via direct with a0=0x5, a1=sym(.rodata), a2=?, a3=?, a5=one of 0x2, 0x3 (`jal` at 0x254c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a7=-0x4 (`jal` at 0x2574).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x25b0).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x25dc).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x25f8).
  The `beq` at 0x1eac is taken when s1(=[[a0+72]:8+112]:8) == 0 and falls through when s1(=[[a0+72]:8+112]:8) != 0.
  The `beq` at 0x1ee0 is taken when at(=[[[a0+72]:8+112]:8+152]:8) == 0 and falls through when at(=[[[a0+72]:8+112]:8+152]:8) != 0.
  The `bne` at 0x1efc is taken when v0(=ret(copyin)) != 0 and falls through when v0(=ret(copyin)) == 0.
  The `beq` at 0x1f18 is taken when s2(?) == v1(=-0x1) and falls through when s2(?) != v1(=-0x1).
  The `bltz` at 0x1f38 is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed) and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed).
  The `bne` at 0x1f48 is taken when at(=[[a0+32]:8+72]:8) != s0(=a0) and falls through when at(=[[a0+32]:8+72]:8) == s0(=a0).
  The `beq` at 0x1f5c is taken when s2(?) == a6(=-0x2) and falls through when s2(?) != a6(=-0x2).
  The `beq` at 0x1f68 is taken when s2(?) == a6(=-0x4) and falls through when s2(?) != a6(=-0x4).
  The `beq` at 0x1f70 is taken when v0(=-0x3) == s2(?) and falls through when v0(=-0x3) != s2(?).
  The `bne` at 0x1f78 is taken when a7(?) != 0 and falls through when a7(?) == 0.
  The `beq` at 0x1fd8 is taken when at(=[[a0+32]:8+104]) == 0 and falls through when at(=[[a0+32]:8+104]) != 0.
  The `bne` at 0x1ff0 is taken when v1(=[[a0+32]:8+104]) != 0 and falls through when v1(=[[a0+32]:8+104]) == 0.
  The `beq` at 0x2030 is taken when a6(?) == 0 and falls through when a6(?) != 0.
  The `beq` at 0x2040 is taken when v0(=-0x3) == s2(?) and falls through when v0(=-0x3) != s2(?).
  The `beq` at 0x2048 is taken when s2(?) == a7(=-0x4) and falls through when s2(?) != a7(=-0x4).
  The `beq` at 0x2058 is taken when (at(?) & 0x1) == 0 and falls through when (at(?) & 0x1) != 0.
  The `beq` at 0x2068 is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `bne` at 0x2074 is taken when a7(?) != 0 and falls through when a7(?) == 0.
  The `bne` at 0x207c is taken when at(?) != 0 and falls through when at(?) == 0.
  The `bne` at 0x2084 is taken when v1(?) != 0 and falls through when v1(?) == 0.
  The `beq` at 0x2090 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `beq` at 0x20d4 is taken when a6(?) >= a7(?) (unsigned) and falls through when a6(?) < a7(?) (unsigned).
  The `beq` at 0x20e4 is taken when v0(=-0x3) == s2(?) and falls through when v0(=-0x3) != s2(?).
  The `beq` at 0x20f4 is taken when (a0(?) & 0x2) == 0 and falls through when (a0(?) & 0x2) != 0.
  The `beq` at 0x20fc is taken when a6(?) == 0 and falls through when a6(?) != 0.
  The `beq` at 0x2158 is taken when v0(?) == 0 and falls through when v0(?) != 0.
  The `beq` at 0x2164 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `bne` at 0x21ac is taken when v1(?) != 0 and falls through when v1(?) == 0.
  The `bne` at 0x21d0 is taken when v0(=ret(OdsyLookupCSetId)) != 0 and falls through when v0(=ret(OdsyLookupCSetId)) == 0.
  The `beq` at 0x21f4 is taken when v0(?) == 0 and falls through when v0(?) != 0.
  The `bne` at 0x220c is taken when a7(?) != 0 and falls through when a7(?) == 0.
  The `beq` at 0x2258 is taken when a2(?) == 0 and falls through when a2(?) != 0.
  The `beq` at 0x2260 is taken when a3(?) == 0 and falls through when a3(?) != 0.
  The `beq` at 0x2268 is taken when v0(=-0x3) == s2(?) and falls through when v0(=-0x3) != s2(?).
  The `bne` at 0x2290 is taken when a5(=one of 0x2, 0x3) != a3(?) and falls through when a5(=one of 0x2, 0x3) == a3(?).
  The `bne` at 0x22a8 is taken when a6(?) != v0(=one of 0x0, 0x1) and falls through when a6(?) == v0(=one of 0x0, 0x1).
  The `bne` at 0x22b0 is taken when a4(?) != a2(?) and falls through when a4(?) == a2(?).
  The `beq` at 0x2318 is taken when (a2(=0x1fffffff) & a0(?)) == 0 and falls through when (a2(=0x1fffffff) & a0(?)) != 0.
  The `beq` at 0x234c is taken when a7(?) >= 0x3 (signed) and falls through when a7(?) < 0x3 (signed).
  The `beq` at 0x238c is taken when (a6(?) & 0x1) == 0 and falls through when (a6(?) & 0x1) != 0.
  The `bne` at 0x2424 is taken when v0(=ret(odsyDMAOps)) != 0 and falls through when v0(=ret(odsyDMAOps)) == 0.
  The `beq` at 0x2444 is taken when (a6(?) & 0x2) == 0 and falls through when (a6(?) & 0x2) != 0.
  The `bne` at 0x2480 is taken when v0(=ret(copyout)) != 0 and falls through when v0(=ret(copyout)) == 0.
  The `jr` at 0x1fb4 returns with v0 = ?.

- `odsy_mm_ctxsw_timeout` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x2614, 56 bytes) Inferred.
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x262c).
  Calls `odsy_teardown` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x2634).
  The `jr` at 0x2644 returns with v0 = ret(odsy_teardown).

- `odsyMMvalidatePcxSwap` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x264c, 236 bytes) Inferred.
  Loads 4 bytes from a1 (arg1 at entry) +0x0 into `at` (`lw` at 0x264c).
  Loads 8 bytes from a1 (arg1 at entry) +0x98 into `v1` (`ld` at 0x265c).
  Loads 8 bytes from ret(OdsyNextCSetElem) +0x28 into `a2` (`ld` at 0x2700).
  Loads 2 bytes from [ret(OdsyNextCSetElem)+40]:8 +0x6 into `a2` (`lhu` at 0x2704).
  Loads 4 bytes from ret(OdsyNextCSetElem) +0x40 into `a3` (`lw` at 0x2710).
  Calls `OdsyLookupCSetId` via direct with a0=a1+224, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2694).
  Calls `timeout` via direct with a0=sym(odsy_mm_ctxsw_timeout), a1=a0 at entry (arg0), a2=0x5dc, a3=? (`jal` at 0x26ac).
  Calls `OdsyInitCSetCursor` via direct with a0=a1+184, a1=?, a2=?, a3=? (`jal` at 0x26c0).
  Calls `OdsyNextCSetElem` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x26c8).
  Calls `odsy_mm_commit` via direct with a0=ret(OdsyNextCSetElem), a1=0x1, a2=[[ret(OdsyNextCSetElem)+40]:8+6]:2, a3=[ret(OdsyNextCSetElem)+64] (`jal` at 0x26e0).
  Calls `OdsyNextCSetElem` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x26e8).
  Calls `untimeout` via direct with a0=?, a1=0x1, a2=?, a3=? (`jal` at 0x2724).
  The `beq` at 0x2654 is taken when at(=[a1]) == 0 and falls through when at(=[a1]) != 0.
  The `beq` at 0x2660 is taken when v1(=[a1+152]:8) == 0 and falls through when v1(=[a1+152]:8) != 0.
  The `beq` at 0x269c is taken when v0(=ret(OdsyLookupCSetId)) == 0 and falls through when v0(=ret(OdsyLookupCSetId)) != 0.
  The `beq` at 0x26d0 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x26f0 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x26f8 is taken when a1(=0x1) == v0(=ret(OdsyNextCSetElem)) and falls through when a1(=0x1) != v0(=ret(OdsyNextCSetElem)).
  The `beq` at 0x2708 is taken when a2(=[[ret(OdsyNextCSetElem)+40]:8+6]:2) == 0 and falls through when a2(=[[ret(OdsyNextCSetElem)+40]:8+6]:2) != 0.
  The `bne` at 0x2714 is taken when a3(=[ret(OdsyNextCSetElem)+64]) != 0 and falls through when a3(=[ret(OdsyNextCSetElem)+64]) == 0.
  The `jr` at 0x2678 returns with v0 = 0x0.

- `odsy_mm_find_current_as` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x2738, 404 bytes) Inferred.
  Loads 8 bytes from ret(OdsyNextCSetElem) +0x18 into `at` (`ld` at 0x2788).
  Loads 8 bytes from ret(OdsyNextCSetElem) +0x10 into `a2` (`ld` at 0x2794).
  Stores 4 bytes from `a4` to ret(kmem_alloc) +0x0 (`sw` at 0x27e8).
  Stores 4 bytes from `v0` to ? (base unknown) (`sw` at 0x27f8).
  Stores 8 bytes from `v1` to ? (base unknown) (`sd` at 0x2800).
  Stores 8 bytes from `zero` to ? (base unknown) (`sd` at 0x2808).
  Stores 4 bytes from `zero` to ? (base unknown) (`sw` at 0x280c).
  Stores 8 bytes from `s1` to ? (base unknown) (`sd` at 0x2810).
  Stores 8 bytes from `v0` to ? (base unknown) (`sd` at 0x2818).
  Stores 1 byte from `a5` to ? (base unknown) (`sb` at 0x285c, 0x28b4).
  Loads 4 bytes from ? (base unknown) into `a1` (`lw` at 0x2890).
  Calls `as_lookup_current` via direct with a0=sp-64, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2750).
  Calls `OdsyInitCSetCursor` via direct with a0=a0+1528, a1=?, a2=?, a3=? (`jal` at 0x2758).
  Calls `OdsyNextCSetElem` via direct with a0=a0+1528, a1=?, a2=?, a3=? (`jal` at 0x2760).
  Calls `OdsyNextCSetElem` via direct with a0=a0+1528, a1=?, a2=?, a3=? (`jal` at 0x2778).
  Calls `kmem_alloc` via direct with a0=0x40, a1=0x0, a2=?, a3=? (`jal` at 0x27bc).
  Calls `OdsyAllocCSetId` via direct with a0=a0+1528, a1=ret(kmem_alloc), a2=?, a3=?, a4=-0x1 (`jal` at 0x27e4).
  Calls `odsyPinAndMapASRegions` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2814).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x2838).
  Calls `kmem_free` via direct with a0=?, a1=0x40, a2=?, a3=?, a5=0x1 (`jal` at 0x2864).
  Calls `cmn_err` via direct with a0=0x5, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x287c).
  Calls `OdsyDeallocCSetId` via direct with a0=a0+1528, a1=?, a2=?, a3=? (`jal` at 0x288c).
  Calls `kmem_free` via direct with a0=?, a1=0x40, a2=?, a3=?, a5=0x1 (`jal` at 0x28bc).
  The `beq` at 0x2768 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x2780 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `bne` at 0x278c is taken when at(=[ret(OdsyNextCSetElem)+24]:8) != v1(?) and falls through when at(=[ret(OdsyNextCSetElem)+24]:8) == v1(?).
  The `bne` at 0x2798 is taken when a2(=[ret(OdsyNextCSetElem)+16]:8) != a3(?) and falls through when a2(=[ret(OdsyNextCSetElem)+16]:8) == a3(?).
  The `bne` at 0x27c8 is taken when v0(=ret(kmem_alloc)) != 0 and falls through when v0(=ret(kmem_alloc)) == 0.
  The `beq` at 0x27f0 is taken when v0(=ret(OdsyAllocCSetId)) == at(=-0x1) and falls through when v0(=ret(OdsyAllocCSetId)) != at(=-0x1).
  The `bne` at 0x281c is taken when v0(=ret(odsyPinAndMapASRegions)) != 0 and falls through when v0(=ret(odsyPinAndMapASRegions)) == 0.
  The `bne` at 0x2858 is taken when a4(?) < 0x40 (unsigned) and falls through when a4(?) >= 0x40 (unsigned).
  The `bne` at 0x28b0 is taken when a4(?) < 0x40 (unsigned) and falls through when a4(?) >= 0x40 (unsigned).
  The `jr` at 0x27b0 returns with v0 = ?.

- `mm_as_remove_sg` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x28cc, 120 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x4 into `v0` (`lw` at 0x28cc).
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x4 (`sw` at 0x28e0).
  Stores 8 bytes from `zero` to a1 (arg1 at entry) +0x0 (`sd` at 0x28ec).
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `a0` (`ld` at 0x28f0).
  Loads 4 bytes from a0 (arg0 at entry) +0x0 into `a1` (`lw` at 0x28f8).
  Stores 1 byte from `a2` to ? (base unknown) (`sb` at 0x2924).
  Calls `OdsyDeallocCSetId` via direct with a0=[a0+8]:8+1528, a1=[a0], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x28fc).
  Calls `odsyUnpinAndUnmapASRegions` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x2904).
  Calls `kmem_free` via direct with a0=a0 at entry (arg0), a1=0x40, a2=0x5, a3=? (`jal` at 0x292c).
  The `beq` at 0x28e8 is taken when v0(=[a0+4]-1) >= 0x1 (unsigned) and falls through when v0(=[a0+4]-1) < 0x1 (unsigned).
  The `bne` at 0x2920 is taken when a0(?) < 0x40 (unsigned) and falls through when a0(?) >= 0x40 (unsigned).
  The `jr` at 0x293c returns with v0 = ?.

- `odsy_mm_sg_new` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x2944, 288 bytes) Inferred.
  Stores 4 bytes from `zero` to ret(kmem_alloc) +0x10 (`sw` at 0x298c).
  Stores 8 bytes from `zero` to ret(kmem_alloc) +0x0 (`sd` at 0x2990).
  Stores 8 bytes from `s1` to ret(kmem_alloc) +0x8 (`sd` at 0x299c).
  Stores 4 bytes from `v0` to ret(kmem_alloc) +0x14 (`sw` at 0x29a8, 0x29e8).
  Stores 4 bytes from `zero` to ret(kmem_alloc) +0xa0 (`sw` at 0x29c4).
  Stores 4 bytes from `zero` to ret(kmem_alloc) +0x98 (`sw` at 0x29c8).
  Stores 8 bytes from `zero` to ret(kmem_alloc) +0x90 (`sd` at 0x29d0).
  Loads 4 bytes from ret(odsy_mm_find_current_as) +0x4 into `a2` (`lw` at 0x2a04).
  Stores 4 bytes from `a2` to ret(odsy_mm_find_current_as) +0x4 (`sw` at 0x2a10).
  Stores 8 bytes from `s0` to ? (base unknown) (`sd` at 0x2a14).
  Calls `kmem_alloc` via direct with a0=0xa8, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x295c).
  Calls `OdsyInitCSet` via direct with a0=ret(kmem_alloc)+24, a1=0x4, a2=?, a3=? (`jal` at 0x29a4).
  Calls `OdsyInitCSet` via direct with a0=ret(kmem_alloc)+64, a1=0x4, a2=?, a3=? (`jal` at 0x29b0).
  Calls `OdsyInitCSet` via direct with a0=ret(kmem_alloc)+104, a1=0x4, a2=?, a3=? (`jal` at 0x29bc).
  Calls `OdsyAllocCSetId` via direct with a0=a1+1488, a1=ret(kmem_alloc), a2=?, a3=? (`jal` at 0x29d4).
  Calls `odsy_mm_find_current_as` via direct with a0=a1 at entry (arg1), a1=sym(.rodata), a2=?, a3=? (`jal` at 0x29ec).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x2a2c).
  Calls `odsy_mm_sg_destroy` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2a34).
  Calls `cmn_err` via direct with a0=0x5, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x2a54).
  The `bne` at 0x2970 is taken when v0(=ret(kmem_alloc)) != 0 and falls through when v0(=ret(kmem_alloc)) == 0.
  The `beq` at 0x29e0 is taken when v0(=ret(OdsyAllocCSetId)) == v1(=-0x1) and falls through when v0(=ret(OdsyAllocCSetId)) != v1(=-0x1).
  The `beq` at 0x29fc is taken when v0(=ret(odsy_mm_find_current_as)) == 0 and falls through when v0(=ret(odsy_mm_find_current_as)) != 0.
  The `jr` at 0x2984 returns with v0 = ?.

- `odsy_mm_sg_destroy` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x2a64, 212 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `a0` (`ld` at 0x2ab4).
  Loads 4 bytes from a0 (arg0 at entry) +0x14 into `a1` (`lw` at 0x2ab8).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `a0` (`ld` at 0x2acc).
  Stores 1 byte from `a0` to ? (base unknown) (`sb` at 0x2b14).
  Calls `OdsyInitCSetCursor` via direct with a0=a0+64, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2a7c).
  Calls `OdsyNextCSetElem` via direct with a0=a0+64, a1=?, a2=?, a3=? (`jal` at 0x2a84).
  Calls `odsy_mm_grp_destroy` via direct with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=? (`jal` at 0x2a94).
  Calls `OdsyInitCSetCursor` via direct with a0=a0+64, a1=?, a2=?, a3=? (`jal` at 0x2a9c).
  Calls `OdsyNextCSetElem` via direct with a0=a0+64, a1=?, a2=?, a3=? (`jal` at 0x2aa4).
  Calls `OdsyDeallocCSetId` via direct with a0=[a0+8]:8+1488, a1=[a0+20], a2=?, a3=? (`jal` at 0x2abc).
  Calls `odsyUnpinAndUnmapSGRegions` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x2ac4).
  Calls `mm_as_remove_sg` via direct with a0=[a0]:8, a1=a0 at entry (arg0), a2=?, a3=? (`jal` at 0x2ad0).
  Calls `OdsyDestroyCSet` via direct with a0=a0+64, a1=0x0, a2=?, a3=? (`jal` at 0x2adc).
  Calls `OdsyDestroyCSet` via direct with a0=a0+24, a1=0x0, a2=?, a3=? (`jal` at 0x2ae8).
  Calls `OdsyDestroyCSet` via direct with a0=a0+104, a1=0x0, a2=?, a3=? (`jal` at 0x2af4).
  Calls `kmem_free` via direct with a0=a0 at entry (arg0), a1=0xa8, a2=?, a3=? (`jal` at 0x2b1c).
  The `beq` at 0x2a8c is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `bne` at 0x2aac is taken when v0(=ret(OdsyNextCSetElem)) != 0 and falls through when v0(=ret(OdsyNextCSetElem)) == 0.
  The `bne` at 0x2b10 is taken when v0(?) < 0xa8 (unsigned) and falls through when v0(?) >= 0xa8 (unsigned).
  The `jr` at 0x2b30 returns with v0 = ret(kmem_free).

- `odsy_mm_obj_new` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x2b38, 744 bytes) Inferred.
  Loads 1 byte from a3 (arg3 at entry) +0x1 into `a0` (`lbu` at 0x2b40).
  Loads 4 bytes from a3 (arg3 at entry) +0x10 into `a0` (`lw` at 0x2b88).
  Loads 4 bytes from a3 (arg3 at entry) +0x14 into `a4` (`lw` at 0x2ba0).
  Loads 4 bytes from a3 (arg3 at entry) +0x18 into `a5` (`lw` at 0x2bac).
  Loads 4 bytes from ret(kmem_alloc) +0x40 into `a5` (`lw` at 0x2be0).
  Stores 8 bytes from `s0` to ret(kmem_alloc) +0x8 (`sd` at 0x2be4).
  Stores 2 bytes from `t2` to ret(kmem_alloc) +0x0 (`sh` at 0x2bf4).
  Stores 8 bytes from `zero` to ret(kmem_alloc) +0x80 (`sd` at 0x2bfc).
  Stores 4 bytes from `a3` to ret(kmem_alloc) +0x40 (`sw` at 0x2c0c).
  Loads 1 byte from a3 (arg3 at entry) +0x0 into `a1` (`lbu` at 0x2c10).
  Stores 1 byte from `a1` to ret(kmem_alloc) +0x10 (`sb` at 0x2c14).
  Loads 1 byte from a3 (arg3 at entry) +0x2 into `a0` (`lbu` at 0x2c18).
  Stores 1 byte from `a0` to ret(kmem_alloc) +0x12 (`sb` at 0x2c1c).
  Loads 1 byte from a3 (arg3 at entry) +0x1 into `v1` (`lbu` at 0x2c20).
  Stores 1 byte from `v1` to ret(kmem_alloc) +0x11 (`sb` at 0x2c24).
  Loads 4 bytes from a3 (arg3 at entry) +0x10 into `t1` (`lw` at 0x2c28).
  Stores 4 bytes from `t1` to ret(kmem_alloc) +0x20 (`sw` at 0x2c2c).
  Loads 4 bytes from a3 (arg3 at entry) +0x14 into `a3` (`lw` at 0x2c30).
  Stores 4 bytes from `a3` to ret(kmem_alloc) +0x24 (`sw` at 0x2c34).
  Loads 4 bytes from a3 (arg3 at entry) +0x18 into `t0` (`lw` at 0x2c38).
  Stores 4 bytes from `t0` to ret(kmem_alloc) +0x28 (`sw` at 0x2c3c).
  Loads 4 bytes from a3 (arg3 at entry) +0x4 into `v0` (`lw` at 0x2c40).
  Stores 4 bytes from `v0` to ret(kmem_alloc) +0x14 (`sw` at 0x2c44).
  Loads 4 bytes from a3 (arg3 at entry) +0x8 into `a6` (`lw` at 0x2c48).
  Stores 4 bytes from `a6` to ret(kmem_alloc) +0x18 (`sw` at 0x2c4c).
  Loads 4 bytes from a3 (arg3 at entry) +0xc into `a7` (`lw` at 0x2c50).
  Stores 4 bytes from `a7` to ret(kmem_alloc) +0x1c (`sw` at 0x2c58).
  Loads 4 bytes from a3 (arg3 at entry) +0x1c into `a0` (`lw` at 0x2c68).
  Stores 4 bytes from `a0` to ret(kmem_alloc) +0x2c (`sw` at 0x2c70).
  Loads 4 bytes from a3 (arg3 at entry) +0x20 into `a1` (`lw` at 0x2c78).
  Stores 4 bytes from `a1` to ret(kmem_alloc) +0x30 (`sw` at 0x2c80).
  Loads 1 byte from ret(kmem_alloc) +0x11 into `a2` (`lbu` at 0x2cd4).
  Stores 4 bytes from `zero` to ret(kmem_alloc) +0x68 (`sw` at 0x2ce0).
  Stores 8 bytes from `t2` to ret(kmem_alloc) +0x60 (`sd` at 0x2ce8).
  Stores 4 bytes from `zero` to ret(kmem_alloc) +0x58 (`sw` at 0x2cf0).
  Stores 8 bytes from `zero` to ret(kmem_alloc) +0x50 (`sd` at 0x2cf8).
  Loads 4 bytes from (([ret(kmem_alloc)+17]:1 << 0x2) + sym(.data)) +0x0 into `a2` (`lw` at 0x2d00).
  Stores 4 bytes from `zero` to ret(kmem_alloc) +0x4c (`sw` at 0x2d04).
  Stores 4 bytes from `a0` to ret(kmem_alloc) +0x48 (`sw` at 0x2d10).
  Stores 4 bytes from `a1` to ret(kmem_alloc) +0x3c (`sw` at 0x2d14).
  Stores 2 bytes from `v0` to ret(kmem_alloc) +0x0 (`sh` at 0x2d54).
  Stores 8 bytes from `s2` to ((a2 << 0x3) + a1) +0x10 (`sd` at 0x2d5c).
  Loads 4 bytes from a1 (arg1 at entry) +0x90 into `a5` (`lw` at 0x2d60).
  Stores 4 bytes from `a5` to a1 (arg1 at entry) +0x90 (`sw` at 0x2d74).
  Stores 4 bytes from `v0` to ret(kmem_alloc) +0x2c (`sw` at 0x2d94).
  Stores 4 bytes from `v0` to ret(kmem_alloc) +0x30 (`sw` at 0x2da0).
  Calls `kmem_alloc` via direct with a0=0x88, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[a3+20], a5=[a3+24] (`jal` at 0x2bc4).
  Calls `odsy_mm_reserve` via direct with a0=ret(kmem_alloc), a1=?, a2=[(([ret(kmem_alloc)+17]:1 << 0x2) + sym(.data))], a3=sym(.data), a4=([a3+24] + [a3+12]), a6=[a3+8], a7=[a3+12] (`jal` at 0x2d18).
  Calls `odsy_mm_obj_destroy` via direct with a0=ret(kmem_alloc), a1=?, a2=?, a3=? (`jal` at 0x2d28).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2db0).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=[a3+20], a4=-0x9, a6=[a3+8], a7=[a3+12] (`jal` at 0x2dd0).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=[a3+20], a4=([a3+24] + [a3+12]), a6=[a3+8], a7=[a3+12] (`jal` at 0x2df0).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x8, a5=0x4 (`jal` at 0x2e0c).
  The `beq` at 0x2b5c is taken when a0(=[a3+1]:1) == at(=0x20) and falls through when a0(=[a3+1]:1) != at(=0x20).
  The `beq` at 0x2b68 is taken when a0(=[a3+1]:1) == v1(=0x10) and falls through when a0(=[a3+1]:1) != v1(=0x10).
  The `beq` at 0x2b70 is taken when a0(=[a3+1]:1) == a4(=0x8) and falls through when a0(=[a3+1]:1) != a4(=0x8).
  The `beq` at 0x2b78 is taken when a0(=[a3+1]:1) == a5(=0x4) and falls through when a0(=[a3+1]:1) != a5(=0x4).
  The `bne` at 0x2b80 is taken when a0(=[a3+1]:1) != at(=0x2) and falls through when a0(=[a3+1]:1) == at(=0x2).
  The `beq` at 0x2b90 is taken when a0(=[a3+16]) == 0 and falls through when a0(=[a3+16]) != 0.
  The `bne` at 0x2b98 is taken when v1(?) != 0 and falls through when v1(?) == 0.
  The `beq` at 0x2ba4 is taken when a4(=[a3+20]) == 0 and falls through when a4(=[a3+20]) != 0.
  The `beq` at 0x2bb4 is taken when a5(=[a3+24]) == 0 and falls through when a5(=[a3+24]) != 0.
  The `beq` at 0x2bd8 is taken when v0(=ret(kmem_alloc)) == 0 and falls through when v0(=ret(kmem_alloc)) != 0.
  The `beq` at 0x2c7c is taken when (v0(?) & 0x1) == 0 and falls through when (v0(?) & 0x1) != 0.
  The `beq` at 0x2c84 is taken when a0(=[a3+28]) == 0 and falls through when a0(=[a3+28]) != 0.
  The `bne` at 0x2c90 is taken when at(?) != 0 and falls through when at(?) == 0.
  The `beq` at 0x2cb0 is taken when a1(=[a3+32]) == 0 and falls through when a1(=[a3+32]) != 0.
  The `bne` at 0x2cb8 is taken when v1(?) != 0 and falls through when v1(?) == 0.
  The `beq` at 0x2d20 is taken when v0(=ret(odsy_mm_reserve)) == 0 and falls through when v0(=ret(odsy_mm_reserve)) != 0.
  The `bne` at 0x2d84 is taken when a0(=[a3+28]) != 0 and falls through when a0(=[a3+28]) == 0.
  The `jr` at 0x2d44 returns with v0 = ?.

- `odsy_mm_obj_destroy` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x2e20, 300 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `v0` (`ld` at 0x2e20).
  Loads 4 bytes from a0 (arg0 at entry) +0x40 into `a2` (`lw` at 0x2e24, 0x2e54).
  Loads 8 bytes from [a0+8]:8 +0x8 into `v0` (`ld` at 0x2e2c).
  Loads 8 bytes from [[a0+8]:8+8]:8 +0x8 into `v0` (`ld` at 0x2e38).
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `a0` (`ld` at 0x2e70).
  Loads 8 bytes from [a0+8]:8 +0x8 into `a0` (`ld` at 0x2e74).
  Loads 8 bytes from [[a0+8]:8+8]:8 +0x8 into `a0` (`ld` at 0x2e78).
  Loads 8 bytes from [[[a0+8]:8+8]:8+8]:8 +0x0 into `a0` (`ld` at 0x2e8c).
  Loads 8 bytes from a0 (arg0 at entry) +0x50 into `a1` (`ld` at 0x2e90).
  Loads 4 bytes from a0 (arg0 at entry) +0x58 into `a1` (`lw` at 0x2ea0, 0x2eb8).
  Loads 8 bytes from ? (base unknown) into `a0` (`ld` at 0x2ea4).
  Loads 4 bytes from ? (base unknown) into `at` (`lw` at 0x2ea8).
  Stores 8 bytes from `a0` to ? (base unknown) (`sd` at 0x2eb4).
  Loads 8 bytes from a0 (arg0 at entry) +0x50 into `a0` (`ld` at 0x2ec0).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x58 (`sw` at 0x2ec4).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x50 (`sd` at 0x2ec8).
  Loads 2 bytes from a0 (arg0 at entry) +0x0 into `a0` (`lh` at 0x2ecc).
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `v1` (`ld` at 0x2ee0, 0x2eec).
  Stores 8 bytes from `zero` to ([a0+8]:8 + ([a0]:2 << 0x3)) +0x10 (`sd` at 0x2ee8).
  Loads 4 bytes from [a0+8]:8 +0x90 into `v0` (`lw` at 0x2ef0).
  Stores 4 bytes from `v0` to [a0+8]:8 +0x90 (`sw` at 0x2ef8).
  Stores 1 byte from `a2` to ? (base unknown) (`sb` at 0x2f10).
  Loads 8 bytes from ? (base unknown) into `v1` (`ld` at 0x2f30).
  Stores 4 bytes from `a1` to ? (base unknown) (`sw` at 0x2f48).
  Calls `odsy_mm_decommit` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+64], a3=a3 at entry (arg3) (`jal` at 0x2e4c).
  Calls `odsy_mm_release` via direct with a0=a0 at entry (arg0), a1=?, a2=[a0+64], a3=? (`jal` at 0x2e68).
  Calls `odsyDMAWait` via direct with a0=[[[[a0+8]:8+8]:8+8]:8]:8, a1=0x0, a2=0x1, a3=a0+96 (`jal` at 0x2e88).
  Calls `kmem_free` via direct with a0=[a0+80]:8, a1=[a0+88], a2=?, a3=? (`jal` at 0x2ebc).
  Calls `kmem_free` via direct with a0=a0 at entry (arg0), a1=0x88, a2=0x11, a3=? (`jal` at 0x2f18).
  The `beq` at 0x2e40 is taken when (a2(=[a0+64]) & 0x8) == 0 and falls through when (a2(=[a0+64]) & 0x8) != 0.
  The `beq` at 0x2e60 is taken when (a2(=[a0+64]) & 0x4) == 0 and falls through when (a2(=[a0+64]) & 0x4) != 0.
  The `beq` at 0x2e98 is taken when a1(=[a0+80]:8) == 0 and falls through when a1(=[a0+80]:8) != 0.
  The `beq` at 0x2eb0 is taken when at(?) == 0 and falls through when at(?) != 0.
  The `beq` at 0x2ed8 is taken when a0(=[a0]:2) == at(=-0x1) and falls through when a0(=[a0]:2) != at(=-0x1).
  The `bne` at 0x2f0c is taken when a0(?) < 0x88 (unsigned) and falls through when a0(?) >= 0x88 (unsigned).
  The `bne` at 0x2f38 is taken when v1(?) < a0(?) (signed) and falls through when v1(?) >= a0(?) (signed).
  The `jr` at 0x2f28 returns with v0 = ret(kmem_free).

- `odsy_mm_sg_remove_grp` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x2f4c, 64 bytes) Inferred.
  Loads 4 bytes from a1 (arg1 at entry) +0x0 into `a3` (`lw` at 0x2f4c).
  Stores 4 bytes from `v0` to a1 (arg1 at entry) +0x0 (`sw` at 0x2f80).
  Calls `OdsyDeallocCSetId` via direct with a0=a0+64, a1=[a1], a2=a2 at entry (arg2), a3=[a1], a4=a0 at entry (arg0) (`jal` at 0x2f6c).
  The `beq` at 0x2f5c is taken when at(=-0x1) == a3(=[a1]) and falls through when at(=-0x1) != a3(=[a1]).
  The `jr` at 0x2f84 returns with v0 = ?.

- `odsy_mm_sg_add_grp` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x2f8c, 640 bytes) Inferred.
  Stores 4 bytes from `v0` to a1 (arg1 at entry) +0x0 (`sw` at 0x2ff8).
  Stores 8 bytes from `v0` to ret(kmem_alloc) +0x8 (`sd` at 0x305c).
  Stores 8 bytes from `zero` to ret(kmem_alloc) +0x10 (`sd` at 0x3080).
  Stores 8 bytes from `a5` to ret(kmem_alloc) +0x18 (`sd` at 0x308c).
  Loads 4 bytes from a2 (arg2 at entry) +0x34 into `a4` (`lw` at 0x3098).
  Stores 4 bytes from `a4` to a2 (arg2 at entry) +0x34 (`sw` at 0x30a0).
  Loads 8 bytes from ret(kmem_alloc) +0x10 into `at` (`ld` at 0x30a8).
  Stores 2 bytes from `a3` to a2 (arg2 at entry) +0x40 (`sh` at 0x30ac).
  Stores 8 bytes from `at` to a2 (arg2 at entry) +0x38 (`sd` at 0x30b0).
  Loads 4 bytes from a1 (arg1 at entry) +0x0 into `v0` (`lw` at 0x30e0).
  Stores 4 bytes from `a3` to a1 (arg1 at entry) +0x0 (`sw` at 0x3114).
  Loads 4 bytes from a1 (arg1 at entry) +0x0 into `at` (`lwu` at 0x315c).
  Loads 8 bytes from ? (base unknown) into `a4` (`ld` at 0x3160).
  Stores 8 bytes from `a4` to a1 (arg1 at entry) +0x98 (`sd` at 0x3174).
  Calls `OdsyAllocCSetId` via direct with a0=a0+64, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2fd4).
  Calls `OdsyLookupCSetId` via direct with a0=a0+104, a1=?, a2=?, a3=? (`jal` at 0x3014).
  Calls `kmem_alloc` via direct with a0=0x20, a1=0x0, a2=?, a3=? (`jal` at 0x303c).
  Calls `kmem_alloc` via direct with a0=0x4000, a1=0x0, a2=?, a3=? (`jal` at 0x3050).
  Calls `OdsyAllocSpecificCSetId` via direct with a0=?, a1=?, a2=ret(kmem_alloc), a3=? (`jal` at 0x3068).
  Calls `MapKernelRegionIntoUserSpace` via direct with a0=ret(kmem_alloc), a1=0x1, a2=?, a3=?, a4=-0x1, a5=0x4000 (`jal` at 0x3088).
  Calls `OdsyDeallocCSetId` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3108).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x3188).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x31a4).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x31c0).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a4=-0x1 (`jal` at 0x31dc).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x31f8).
  The `beq` at 0x2fe0 is taken when v0(=ret(OdsyAllocCSetId)) == at(=-0x1) and falls through when v0(=ret(OdsyAllocCSetId)) != at(=-0x1).
  The `bne` at 0x3020 is taken when v0(=ret(OdsyLookupCSetId)) != 0 and falls through when v0(=ret(OdsyLookupCSetId)) == 0.
  The `beq` at 0x3034 is taken when a3(?) >= 0x80 (unsigned) and falls through when a3(?) < 0x80 (unsigned).
  The `beq` at 0x3044 is taken when v0(=ret(kmem_alloc)) == 0 and falls through when v0(=ret(kmem_alloc)) != 0.
  The `beq` at 0x3058 is taken when v0(=ret(kmem_alloc)) == 0 and falls through when v0(=ret(kmem_alloc)) != 0.
  The `beq` at 0x3074 is taken when v0(=ret(OdsyAllocSpecificCSetId)) == a4(=-0x1) and falls through when v0(=ret(OdsyAllocSpecificCSetId)) != a4(=-0x1).
  The `bne` at 0x3090 is taken when v0(=ret(MapKernelRegionIntoUserSpace)) != 0 and falls through when v0(=ret(MapKernelRegionIntoUserSpace)) == 0.
  The `beq` at 0x30d8 is taken when s1(?) == 0 and falls through when s1(?) != 0.
  The `beq` at 0x30f4 is taken when at(?) == v1(=-0x1) and falls through when at(?) != v1(=-0x1).
  The `bne` at 0x313c is taken when a4(?) != 0 and falls through when a4(?) == 0.
  The `bne` at 0x3144 is taken when at(?) != 0 and falls through when at(?) == 0.
  The `bne` at 0x314c is taken when v1(?) != 0 and falls through when v1(?) == 0.
  The `bne` at 0x3154 is taken when a3(?) != 0 and falls through when a3(?) == 0.
  The `jr` at 0x312c returns with v0 = ?.

- `odsy_mm_grp_new` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x320c, 280 bytes) Inferred.
  Stores 4 bytes from `at` to ret(kmem_alloc) +0xcc (`sw` at 0x3258).
  Stores 4 bytes from `at` to ret(kmem_alloc) +0x0 (`sw` at 0x3264).
  Stores 4 bytes from `zero` to ret(kmem_alloc) +0x90 (`sw` at 0x3268).
  Stores 4 bytes from `zero` to ret(kmem_alloc) +0xd0 (`sw` at 0x326c).
  Stores 8 bytes from `zero` to ret(kmem_alloc) +0xe8 (`sd` at 0x3274).
  Stores 8 bytes from `zero` to ret(kmem_alloc) +0xe0 (`sd` at 0x3280).
  Stores 8 bytes from `v1` to ret(kmem_alloc) +0xd8 (`sd` at 0x3290).
  Stores 8 bytes from `a0` to ret(kmem_alloc) +0x8 (`sd` at 0x3294).
  Loads 1 byte from a2 (arg2 at entry) +0xc into `v0` (`lbu` at 0x3298).
  Stores 4 bytes from `v0` to ret(kmem_alloc) +0xc8 (`sw` at 0x32ac).
  Loads 4 bytes from ret(kmem_alloc) +0x0 into `a3` (`lw` at 0x32b0).
  Loads 4 bytes from ret(kmem_alloc) +0xc8 into `a4` (`lw` at 0x32c4).
  Stores 4 bytes from `v0` to ret(kmem_alloc) +0xcc (`sw` at 0x32f8).
  Calls `kmem_alloc` via direct with a0=0xf0, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x322c).
  Calls `bzero` via direct with a0=ret(kmem_alloc)+16, a1=0x80, a2=?, a3=? (`jal` at 0x3260).
  Calls `OdsyInitCSet` via direct with a0=ret(kmem_alloc)+160, a1=0x2, a2=?, a3=? (`jal` at 0x327c).
  Calls `odsy_mm_sg_add_grp` via direct with a0=a1 at entry (arg1), a1=ret(kmem_alloc), a2=a2 at entry (arg2), a3=? (`jal` at 0x32a8).
  Calls `OdsyAllocCSetId` via direct with a0=a0+264, a1=ret(kmem_alloc), a2=?, a3=[ret(kmem_alloc)], a4=[ret(kmem_alloc)+200] (`jal` at 0x32d8).
  Calls `odsy_mm_grp_destroy` via direct with a0=ret(kmem_alloc), a1=?, a2=?, a3=? (`jal` at 0x32fc).
  The `bne` at 0x3238 is taken when v0(=ret(kmem_alloc)) != 0 and falls through when v0(=ret(kmem_alloc)) == 0.
  The `beq` at 0x32bc is taken when a3(=[ret(kmem_alloc)]) == v0(=-0x1) and falls through when a3(=[ret(kmem_alloc)]) != v0(=-0x1).
  The `beq` at 0x32c8 is taken when a4(=[ret(kmem_alloc)+200]) == 0 and falls through when a4(=[ret(kmem_alloc)+200]) != 0.
  The `beq` at 0x32ec is taken when v0(=ret(OdsyAllocCSetId)) == a3(=-0x1) and falls through when v0(=ret(OdsyAllocCSetId)) != a3(=-0x1).
  The `beq` at 0x32f4 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `bne` at 0x3314 is taken when a0(?) != 0 and falls through when a0(?) == 0.
  The `jr` at 0x3248 returns with v0 = ?.

- `odsy_mm_grp_destroy` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x3324, 432 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x0 into `at` (`lw` at 0x3324).
  Loads 8 bytes from ? (base unknown) into `a0` (`ld` at 0x3360).
  Stores 8 bytes from `zero` to ? (base unknown) (`sd` at 0x3378).
  Stores 1 byte from `s2` to ? (base unknown) (`sb` at 0x33c4).
  Loads 8 bytes from ret(OdsyNextCSetElem) +0x10 into `s1` (`ld` at 0x3408).
  Loads 4 bytes from [ret(OdsyNextCSetElem)+16]:8 +0xa0 into `a1` (`lw` at 0x3448).
  Loads 4 bytes from a0 (arg0 at entry) +0xcc into `a1` (`lw` at 0x346c).
  Loads 8 bytes from a0 (arg0 at entry) +0xd8 into `a0` (`ld` at 0x347c).
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `a0` (`ld` at 0x3488).
  Stores 1 byte from `a0` to ? (base unknown) (`sb` at 0x34b0).
  Calls `odsy_mm_obj_destroy` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x336c).
  Calls `OdsyInitCSetCursor` via direct with a0=a0+160, a1=?, a2=?, a3=? (`jal` at 0x3384).
  Calls `OdsyNextCSetElem` via direct with a0=a0+160, a1=?, a2=?, a3=? (`jal` at 0x3390).
  Calls `kmem_free` via direct with a0=ret(OdsyNextCSetElem), a1=0x28, a2=?, a3=? (`jal` at 0x33cc).
  Calls `OdsyInitCSetCursor` via direct with a0=a0+160, a1=?, a2=?, a3=? (`jal` at 0x33d4).
  Calls `OdsyNextCSetElem` via direct with a0=a0+160, a1=?, a2=?, a3=? (`jal` at 0x33dc).
  Calls `OdsyInitCSetCursor` via direct with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=? (`jal` at 0x33f0).
  Calls `OdsyNextCSetElem` via direct with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=? (`jal` at 0x33f8).
  Calls `odsy_mm_cores_destroy` via direct with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=? (`jal` at 0x340c).
  Calls `OdsyInitCSetCursor` via direct with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=? (`jal` at 0x3414).
  Calls `OdsyNextCSetElem` via direct with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=? (`jal` at 0x341c).
  Calls `OdsyDestroyCSet` via direct with a0=ret(OdsyNextCSetElem), a1=0x0, a2=?, a3=? (`jal` at 0x3438).
  Calls `OdsyDeallocCSetId` via direct with a0=a0+160, a1=[[ret(OdsyNextCSetElem)+16]:8+160], a2=?, a3=? (`jal` at 0x3444).
  Calls `OdsyDestroyCSet` via direct with a0=a0+160, a1=0x0, a2=?, a3=? (`jal` at 0x3464).
  Calls `OdsyDeallocCSetId` via direct with a0=[a0+216]:8+264, a1=[a0+204], a2=-0x1, a3=? (`jal` at 0x3480).
  Calls `odsy_mm_sg_remove_grp` via direct with a0=[a0+8]:8, a1=a0 at entry (arg0), a2=?, a3=? (`jal` at 0x348c).
  Calls `kmem_free` via direct with a0=a0 at entry (arg0), a1=0xf0, a2=?, a3=? (`jal` at 0x34bc).
  The `beq` at 0x3334 is taken when at(=[a0]) == v0(=-0x1) and falls through when at(=[a0]) != v0(=-0x1).
  The `beq` at 0x3354 is taken when s0(?) >= 0x10 (signed) and falls through when s0(?) < 0x10 (signed).
  The `beq` at 0x3364 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `beq` at 0x339c is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `bne` at 0x33c0 is taken when v0(?) < 0x28 (unsigned) and falls through when v0(?) >= 0x28 (unsigned).
  The `beq` at 0x33e4 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x3400 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `bne` at 0x3424 is taken when v0(=ret(OdsyNextCSetElem)) != 0 and falls through when v0(=ret(OdsyNextCSetElem)) == 0.
  The `beq` at 0x342c is taken when s1(=[ret(OdsyNextCSetElem)+16]:8) == 0 and falls through when s1(=[ret(OdsyNextCSetElem)+16]:8) != 0.
  The `beq` at 0x3474 is taken when a2(=-0x1) == a1(=[a0+204]) and falls through when a2(=-0x1) != a1(=[a0+204]).
  The `bne` at 0x34ac is taken when v0(?) < 0xf0 (unsigned) and falls through when v0(?) >= 0xf0 (unsigned).
  The `jr` at 0x34cc returns with v0 = ret(kmem_free).

- `odsy_mm_cores_destroy` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x34d4, 192 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x34 into `a1` (`lw` at 0x34d4).
  Loads 8 bytes from a0 (arg0 at entry) +0x38 into `a0` (`ld` at 0x34f8).
  Stores 4 bytes from `s1` to a0 (arg0 at entry) +0x34 (`sw` at 0x34fc).
  Loads 4 bytes from a0 (arg0 at entry) +0x30 into `a1` (`lw` at 0x3504).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a0` (`ld` at 0x3510).
  Stores 4 bytes from `s1` to a0 (arg0 at entry) +0x30 (`sw` at 0x3520).
  Loads 4 bytes from a0 (arg0 at entry) +0x18 into `a1` (`lw` at 0x3528).
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `a0` (`ld` at 0x3534).
  Loads 8 bytes from [a0+8]:8 +0x8 into `a0` (`ld` at 0x3538).
  Loads 8 bytes from [[a0+8]:8+8]:8 +0x8 into `a0` (`ld` at 0x353c).
  Loads 8 bytes from [[[a0+8]:8+8]:8+8]:8 +0x0 into `a0` (`ld` at 0x3540).
  Stores 1 byte from `a1` to ? (base unknown) (`sb` at 0x356c).
  Calls `OdsyDeallocCSetId` via direct with a0=[a0+56]:8, a1=[a0+52], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x34f4).
  Calls `OdsyDeallocCSetId` via direct with a0=[a0+16]:8+184, a1=[a0+48], a2=?, a3=? (`jal` at 0x3518).
  Calls `OdsyFree32kSlot` via direct with a0=[[[[a0+8]:8+8]:8+8]:8]:8+6112, a1=[a0+24], a2=?, a3=? (`jal` at 0x3548).
  Calls `kmem_free` via direct with a0=a0 at entry (arg0), a1=0x48, a2=?, a3=? (`jal` at 0x3578).
  The `beq` at 0x34e8 is taken when a1(=[a0+52]) == s1(=-0x1) and falls through when a1(=[a0+52]) != s1(=-0x1).
  The `beq` at 0x3508 is taken when a1(=[a0+48]) == s1(=-0x1) and falls through when a1(=[a0+48]) != s1(=-0x1).
  The `beq` at 0x352c is taken when a1(=[a0+24]) == s1(=-0x1) and falls through when a1(=[a0+24]) != s1(=-0x1).
  The `bne` at 0x3568 is taken when a0(?) < 0x48 (unsigned) and falls through when a0(?) >= 0x48 (unsigned).
  The `jr` at 0x358c returns with v0 = ret(kmem_free).

- `odsy_mm_cores_new` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x3594, 1004 bytes) Inferred.
  Loads 8 bytes from a1 (arg1 at entry) +0x8 into `at` (`ld` at 0x35dc).
  Loads 8 bytes from [a1+8]:8 +0x8 into `at` (`ld` at 0x35e4).
  Loads 8 bytes from [[a1+8]:8+8]:8 +0x0 into `at` (`ld` at 0x35f0).
  Stores 4 bytes from `zero` to ret(kmem_alloc) +0x40 (`sw` at 0x3620).
  Stores 4 bytes from `a4` to ret(kmem_alloc) +0x18 (`sw` at 0x3628).
  Stores 4 bytes from `a4` to ret(kmem_alloc) +0x34 (`sw` at 0x362c).
  Stores 4 bytes from `a4` to ret(kmem_alloc) +0x30 (`sw` at 0x3630).
  Stores 8 bytes from `a3` to ret(kmem_alloc) +0x38 (`sd` at 0x3644).
  Stores 4 bytes from `a2` to ret(kmem_alloc) +0x4 (`sw` at 0x3648).
  Stores 8 bytes from `v1` to ret(kmem_alloc) +0x10 (`sd` at 0x364c).
  Stores 8 bytes from `a0` to ret(kmem_alloc) +0x8 (`sd` at 0x3650).
  Stores 4 bytes from `a1` to ret(kmem_alloc) +0x0 (`sw` at 0x3658).
  Stores 4 bytes from `v0` to ret(kmem_alloc) +0x30 (`sw` at 0x3674).
  Stores 4 bytes from `v0` to ret(kmem_alloc) +0x34 (`sw` at 0x3690).
  Loads 4 bytes from ret(kmem_alloc) +0x30 into `a1` (`lw` at 0x36a8).
  Stores 4 bytes from `v0` to ret(kmem_alloc) +0x18 (`sw` at 0x36b0).
  Stores 8 bytes from `v0` to ? (base unknown) (`sd` at 0x371c).
  Stores 8 bytes from `t1` to ? (base unknown) (`sd` at 0x3734).
  Loads 8 bytes from ? (base unknown) into `v1` (`ld` at 0x3774).
  Stores 4 bytes from `at` to ? (base unknown) (`sw` at 0x3790).
  Loads 4 bytes from a6 (arg6 at entry) +0x0 into `a7` (`lw` at 0x379c).
  Stores 2 bytes from `v1` to a6 (arg6 at entry) +0x20 (`sh` at 0x37a0).
  Stores 4 bytes from `a7` to a6 (arg6 at entry) +0x0 (`sw` at 0x37a8).
  Loads 8 bytes from ? (base unknown) into `t0` (`ld` at 0x37ac, 0x391c).
  Stores 8 bytes from `t0` to a6 (arg6 at entry) +0x18 (`sd` at 0x37b0).
  Loads 4 bytes from ? (base unknown) into `a5` (`lw` at 0x3820).
  Loads 8 bytes from ? (base unknown) into `a4` (`ld` at 0x3824).
  Stores 8 bytes from `a4` to ? (base unknown) (`sd` at 0x3830).
  Stores 2 bytes from `zero` to ? (base unknown) (`sh` at 0x3834).
  Loads 4 bytes from ? (base unknown) into `a3` (`lw` at 0x3838).
  Loads 8 bytes from ? (base unknown) into `a0` (`ld` at 0x383c, 0x3940).
  Stores 8 bytes from `a0` to ? (base unknown) (`sd` at 0x3854).
  Stores 1 byte from `a3` to ? (base unknown) (`sb` at 0x38d4, 0x3930, 0x3960).
  Calls `kmem_alloc` via direct with a0=0x48, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x35f8).
  Calls `OdsyAllocCSetId` via direct with a0=a5 at entry (arg5), a1=ret(kmem_alloc), a2=a2 at entry (arg2), a3=a4 at entry (arg4), a4=-0x1 (`jal` at 0x3660).
  Calls `OdsyAllocCSetId` via direct with a0=a4 at entry (arg4), a1=ret(kmem_alloc), a2=?, a3=?, a7=-0x1 (`jal` at 0x367c).
  Calls `OdsyAlloc32kSlot` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3694).
  Calls `OdsyLookupCSetId` via direct with a0=a0+224, a1=?, a2=?, a3=?, a7=-0x1 (`jal` at 0x36c4).
  Calls `kmem_alloc` via direct with a0=0x20, a1=0x0, a2=ret(OdsyLookupCSetId), a3=? (`jal` at 0x36ec).
  Calls `bzero` via direct with a0=ret(kmem_alloc), a1=0x20, a2=?, a3=? (`jal` at 0x3700).
  Calls `kmem_alloc` via direct with a0=0x4000, a1=0x0, a2=?, a3=? (`jal` at 0x370c).
  Calls `OdsyAllocSpecificCSetId` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3730).
  Calls `MapKernelRegionIntoUserSpace` via direct with a0=?, a1=0x3, a2=?, a3=? (`jal` at 0x3754).
  Calls `odsy_mm_cores_destroy` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3804).
  Calls `bzero` via direct with a0=?, a1=0x10, a2=?, a3=? (`jal` at 0x3850).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=ret(OdsyLookupCSetId), a3=? (`jal` at 0x386c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x3890).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x38b0).
  Calls `kmem_free` via direct with a0=?, a1=0x20, a2=?, a3=0x25 (`jal` at 0x38dc).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x38fc).
  Calls `OdsyDeallocCSetId` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3908).
  Calls `kmem_free` via direct with a0=?, a1=0x4000, a2=?, a3=0x27 (`jal` at 0x393c).
  Calls `kmem_free` via direct with a0=?, a1=0x20, a2=?, a3=0x29 (`jal` at 0x3968).
  The `bne` at 0x360c is taken when s0(=ret(kmem_alloc)) != 0 and falls through when s0(=ret(kmem_alloc)) == 0.
  The `beq` at 0x366c is taken when v0(=ret(OdsyAllocCSetId)) == a7(=-0x1) and falls through when v0(=ret(OdsyAllocCSetId)) != a7(=-0x1).
  The `beq` at 0x3688 is taken when v0(=ret(OdsyAllocCSetId)) == t0(=-0x1) and falls through when v0(=ret(OdsyAllocCSetId)) != t0(=-0x1).
  The `beq` at 0x36a0 is taken when v0(=ret(OdsyAlloc32kSlot)) == a7(=-0x1) and falls through when v0(=ret(OdsyAlloc32kSlot)) != a7(=-0x1).
  The `bne` at 0x36d0 is taken when v0(=ret(OdsyLookupCSetId)) != 0 and falls through when v0(=ret(OdsyLookupCSetId)) == 0.
  The `beq` at 0x36e0 is taken when a7(?) >= 0x20 (unsigned) and falls through when a7(?) < 0x20 (unsigned).
  The `beq` at 0x36f4 is taken when v0(=ret(kmem_alloc)) == 0 and falls through when v0(=ret(kmem_alloc)) != 0.
  The `beq` at 0x3718 is taken when v0(=ret(kmem_alloc)) == 0 and falls through when v0(=ret(kmem_alloc)) != 0.
  The `beq` at 0x3748 is taken when v0(=ret(OdsyAllocSpecificCSetId)) == at(=-0x1) and falls through when v0(=ret(OdsyAllocSpecificCSetId)) != at(=-0x1).
  The `bne` at 0x375c is taken when v0(=ret(MapKernelRegionIntoUserSpace)) != 0 and falls through when v0(=ret(MapKernelRegionIntoUserSpace)) == 0.
  The `bne` at 0x3768 is taken when a7(?) != 0 and falls through when a7(?) == 0.
  The `bne` at 0x378c is taken when v0(?) < 0x2 (signed) and falls through when v0(?) >= 0x2 (signed).
  The `bne` at 0x37dc is taken when t0(?) != 0 and falls through when t0(?) == 0.
  The `bne` at 0x37e4 is taken when at(?) != 0 and falls through when at(?) == 0.
  The `bne` at 0x37ec is taken when v1(?) != 0 and falls through when v1(?) == 0.
  The `bne` at 0x37f4 is taken when a7(?) != 0 and falls through when a7(?) == 0.
  The `beq` at 0x37fc is taken when t0(?) == 0 and falls through when t0(?) != 0.
  The `bne` at 0x38d0 is taken when a1(?) < 0x20 (unsigned) and falls through when a1(?) >= 0x20 (unsigned).
  The `bne` at 0x392c is taken when a1(?) < 0x4000 (signed) and falls through when a1(?) >= 0x4000 (signed).
  The `bne` at 0x395c is taken when a1(?) < 0x20 (unsigned) and falls through when a1(?) >= 0x20 (unsigned).
  The `jr` at 0x3618 returns with v0 = ?.

- `SetupDMAParams` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x3980, 516 bytes) Inferred.
  Loads 4 bytes from a1 (arg1 at entry) +0x0 into `v1` (`lw` at 0x39ac).
  Loads 4 bytes from a0 (arg0 at entry) +0x38 into `a0` (`lw` at 0x39b0).
  Stores 4 bytes from `v1` to a1 (arg1 at entry) +0x0 (`sw` at 0x39cc).
  Loads 4 bytes from a1 (arg1 at entry) +0x8 into `ra` (`lw` at 0x39d0).
  Loads 4 bytes from a0 (arg0 at entry) +0x2c into `at` (`lw` at 0x39d4).
  Stores 4 bytes from `ra` to a1 (arg1 at entry) +0x8 (`sw` at 0x39e8).
  Loads 4 bytes from a1 (arg1 at entry) +0xc into `a3` (`lw` at 0x39ec).
  Loads 4 bytes from a0 (arg0 at entry) +0x20 into `ra` (`lw` at 0x39f0).
  Stores 4 bytes from `a3` to a1 (arg1 at entry) +0xc (`sw` at 0x3a04, 0x3a18).
  Loads 4 bytes from a0 (arg0 at entry) +0x24 into `ra` (`lw` at 0x3a08).
  Loads 4 bytes from a1 (arg1 at entry) +0x4 into `v0` (`lw` at 0x3a1c).
  Loads 4 bytes from a0 (arg0 at entry) +0x14 into `v1` (`lw` at 0x3a20).
  Stores 4 bytes from `v0` to a1 (arg1 at entry) +0x4 (`sw` at 0x3a30, 0x3a44).
  Loads 4 bytes from a0 (arg0 at entry) +0x18 into `v1` (`lw` at 0x3a34).
  Loads 1 byte from a0 (arg0 at entry) +0x11 into `a0` (`lbu` at 0x3a48).
  Loads 4 bytes from a1 (arg1 at entry) +0x10 into `a1` (`lw` at 0x3a94).
  Loads 4 bytes from ? (base unknown) into `a3` (`lw` at 0x3ac4).
  Stores 4 bytes from `a1` to a1 (arg1 at entry) +0x10 (`sw` at 0x3ad4).
  Stores 4 bytes from `a3` to a1 (arg1 at entry) +0x10 (`sw` at 0x3ae4).
  Loads 4 bytes from a0 (arg0 at entry) +0x20 into `a0` (`lw` at 0x3ae8).
  Loads 1 byte from a0 (arg0 at entry) +0x11 into `v1` (`lbu` at 0x3aec).
  Loads 4 bytes from a1 (arg1 at entry) +0x1c into `a1` (`lw` at 0x3af0).
  Loads 4 bytes from a1 (arg1 at entry) +0x18 into `a0` (`lw` at 0x3b34).
  Stores 4 bytes from `a4` to a1 (arg1 at entry) +0x1c (`sw` at 0x3b48).
  Stores 4 bytes from `a0` to a1 (arg1 at entry) +0x18 (`sw` at 0x3b54).
  Calls `bzero` via direct with a0=a1 at entry (arg1), a1=0x20, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x39a4).
  The `beq` at 0x3a64 is taken when a0(=[a0+17]:1) == at(=0x10) and falls through when a0(=[a0+17]:1) != at(=0x10).
  The `beq` at 0x3a70 is taken when a0(=[a0+17]:1) == at(=0x8) and falls through when a0(=[a0+17]:1) != at(=0x8).
  The `beq` at 0x3a78 is taken when a0(=[a0+17]:1) == v0(=0x4) and falls through when a0(=[a0+17]:1) != v0(=0x4).
  The `beq` at 0x3a80 is taken when a0(=[a0+17]:1) == v1(=0x2) and falls through when a0(=[a0+17]:1) != v1(=0x2).
  The `jr` at 0x3b5c returns with v0 = ((a2 | 0x32) << 0x18).

- `mm_okay_to_swap_in` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x3b84, 364 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x38 into `s0` (`lw` at 0x3b90).
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `s4` (`ld` at 0x3b98).
  Loads 8 bytes from [a0+8]:8 +0x8 into `s4` (`ld` at 0x3ba0).
  Loads 4 bytes from a0 (arg0 at entry) +0x3c into `s2` (`lw` at 0x3ba4).
  Loads 8 bytes from [[a0+8]:8+8]:8 +0x8 into `s4` (`ld` at 0x3ba8).
  Loads 8 bytes from ? (base unknown) into `t2` (`ld` at 0x3c34).
  Loads 4 bytes from ? (base unknown) into `at` (`lw` at 0x3c48).
  Loads 4 bytes from ? (base unknown) into `a4` (`lw` at 0x3c58).
  Loads 4 bytes from ? (base unknown) into `a3` (`lw` at 0x3c5c).
  Loads 2 bytes from ? (base unknown) into `a7` (`lh` at 0x3c88).
  Loads 2 bytes from a0 (arg0 at entry) +0x0 into `a4` (`lh` at 0x3c8c).
  Loads 8 bytes from ? (base unknown) into `a5` (`ld` at 0x3c90, 0x3ca4).
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `a2` (`ld` at 0x3c94).
  Loads 4 bytes from ? (base unknown) into `a6` (`lw` at 0x3c98).
  Loads 4 bytes from [a0+8]:8 +0x0 into `a3` (`lw` at 0x3c9c).
  Loads 8 bytes from [a0+8]:8 +0x8 into `a2` (`ld` at 0x3ca8).
  Loads 4 bytes from ? (base unknown) into `a5` (`lw` at 0x3cb0).
  Loads 4 bytes from [[a0+8]:8+8]:8 +0x14 into `a2` (`lw` at 0x3cbc).
  Calls `OdsyInitCSetCursor` via direct with a0=[[[a0+8]:8+8]:8+8]:8+1488, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x3bbc).
  Calls `OdsyNextCSetElem` via direct with a0=[[[a0+8]:8+8]:8+8]:8+1488, a1=?, a2=?, a3=? (`jal` at 0x3bc4).
  Calls `OdsyNextCSetElem` via direct with a0=[[[a0+8]:8+8]:8+8]:8+1488, a1=?, a2=?, a3=? (`jal` at 0x3bdc).
  Calls `OdsyInitCSetCursor` via direct with a0=ret(OdsyNextCSetElem)+64, a1=?, a2=?, a3=? (`jal` at 0x3bec).
  Calls `OdsyNextCSetElem` via direct with a0=ret(OdsyNextCSetElem)+64, a1=?, a2=?, a3=? (`jal` at 0x3bf4).
  Calls `OdsyNextCSetElem` via direct with a0=ret(OdsyNextCSetElem)+64, a1=?, a2=?, a3=? (`jal` at 0x3c0c).
  Calls `cmn_err` via direct with a0=0x7, a1=sym(.rodata), a2=[[[a0+8]:8+8]:8+20], a3=[[a0+8]:8], a4=[a0]:2 (`jal` at 0x3cb8).
  The `beq` at 0x3bcc is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x3be4 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x3bfc is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x3c14 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x3c28 is taken when at(?) == 0 and falls through when at(?) != 0.
  The `beq` at 0x3c38 is taken when t2(?) == 0 and falls through when t2(?) != 0.
  The `beq` at 0x3c40 is taken when t2(?) == s1(=a0) and falls through when t2(?) != s1(=a0).
  The `beq` at 0x3c50 is taken when (at(?) & 0x1) == 0 and falls through when (at(?) & 0x1) != 0.
  The `bne` at 0x3c68 is taken when a4(?) < s0(=[a0+56]) (signed) and falls through when a4(?) >= s0(=[a0+56]) (signed).
  The `bne` at 0x3c70 is taken when v1(?) != 0 and falls through when v1(?) == 0.
  The `beq` at 0x3c78 is taken when a1(?) == 0 and falls through when a1(?) != 0.
  The `bne` at 0x3c80 is taken when a2(?) != 0 and falls through when a2(?) == 0.
  The `jr` at 0x3ce8 returns with v0 = one of 0x0, 0x1.

- `odsy_mm_check_for_mutations` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x3cf0, 260 bytes) Inferred.
  Loads 8 bytes from ? (base unknown) into `a0` (`ld` at 0x3d90).
  Loads 4 bytes from ? (base unknown) into `a1` (`lw` at 0x3d9c).
  Loads 8 bytes from ? (base unknown) into `a2` (`ld` at 0x3dac).
  Calls `OdsyInitCSetCursor` via direct with a0=a0+1488, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x3d08).
  Calls `OdsyNextCSetElem` via direct with a0=a0+1488, a1=?, a2=?, a3=? (`jal` at 0x3d10).
  Calls `OdsyNextCSetElem` via direct with a0=a0+1488, a1=?, a2=?, a3=? (`jal` at 0x3d38).
  Calls `OdsyInitCSetCursor` via direct with a0=ret(OdsyNextCSetElem)+64, a1=?, a2=?, a3=? (`jal` at 0x3d48).
  Calls `OdsyNextCSetElem` via direct with a0=ret(OdsyNextCSetElem)+64, a1=?, a2=?, a3=? (`jal` at 0x3d50).
  Calls `OdsyNextCSetElem` via direct with a0=ret(OdsyNextCSetElem)+64, a1=?, a2=?, a3=? (`jal` at 0x3d68).
  Calls `odsy_mm_obj_xfr_backing_store` via direct with a0=?, a1=sp-80, a2=0x1, a3=? (`jal` at 0x3dc0).
  The `beq` at 0x3d20 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x3d40 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x3d58 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x3d70 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x3d84 is taken when at(?) == 0 and falls through when at(?) != 0.
  The `beq` at 0x3d94 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `beq` at 0x3da4 is taken when (a1(?) & 0x1) == 0 and falls through when (a1(?) & 0x1) != 0.
  The `beq` at 0x3db0 is taken when a2(?) == 0 and falls through when a2(?) != 0.
  The `jr` at 0x3dec returns with v0 = ?.

- `odsy_mm_jettison_freerun_backing_store` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x3df4, 316 bytes) Inferred.
  Loads 8 bytes from ? (base unknown) into `a0`: 5 such accesses, including `ld` at 0x3e90, 0x3ee4, 0x3ee8.
  Loads 4 bytes from ? (base unknown) into `v1` (`lw` at 0x3e94).
  Loads 8 bytes from a0 (arg0 at entry) +0x6b0 into `at` (`ld` at 0x3e98).
  Stores 8 bytes from `at` to a0 (arg0 at entry) +0x6b0 (`sd` at 0x3ea0).
  Stores 4 bytes from `zero` to ? (base unknown) (`sw` at 0x3ea4).
  Stores 8 bytes from `zero` to ? (base unknown) (`sd` at 0x3ea8).
  Loads 8 bytes from ? (base unknown) into `s5` (`ld` at 0x3ebc).
  Loads 4 bytes from ? (base unknown) into `at` (`lw` at 0x3ec8).
  Loads 8 bytes from ? (base unknown) into `v1` (`ld` at 0x3ed8).
  Loads 4 bytes from ? (base unknown) into `a1` (`lw` at 0x3f08).
  Calls `OdsyInitCSetCursor` via direct with a0=a0+1488, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x3e0c).
  Calls `OdsyNextCSetElem` via direct with a0=a0+1488, a1=?, a2=?, a3=? (`jal` at 0x3e14).
  Calls `OdsyNextCSetElem` via direct with a0=a0+1488, a1=?, a2=?, a3=? (`jal` at 0x3e44).
  Calls `OdsyInitCSetCursor` via direct with a0=ret(OdsyNextCSetElem)+64, a1=?, a2=?, a3=? (`jal` at 0x3e54).
  Calls `OdsyNextCSetElem` via direct with a0=ret(OdsyNextCSetElem)+64, a1=?, a2=?, a3=? (`jal` at 0x3e5c).
  Calls `OdsyNextCSetElem` via direct with a0=ret(OdsyNextCSetElem)+64, a1=?, a2=?, a3=? (`jal` at 0x3e74).
  Calls `kmem_free` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3e8c).
  Calls `odsyDMAWait` via direct with a0=?, a1=0x0, a2=0x1, a3=? (`jal` at 0x3efc).
  The `beq` at 0x3e28 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x3e4c is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x3e64 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x3e7c is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x3eb0 is taken when a1(?) == 0 and falls through when a1(?) != 0.
  The `beq` at 0x3ec0 is taken when s5(?) == 0 and falls through when s5(?) != 0.
  The `beq` at 0x3ed0 is taken when (at(?) & 0x1) == 0 and falls through when (at(?) & 0x1) != 0.
  The `beq` at 0x3edc is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `jr` at 0x3f28 returns with v0 = ret(OdsyNextCSetElem).

- `odsy_mm_B_warn` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x3f30, 64 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x6bc into `at` (`lw` at 0x3f30).
  Stores 4 bytes from `ra` to a0 (arg0 at entry) +0x6bc (`sw` at 0x3f64).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x3f54).
  The `beq` at 0x3f38 is taken when at(=[a0+1724]) == 0 and falls through when at(=[a0+1724]) != 0.
  The `jr` at 0x3f40 returns with v0 = ?.

- `odsy_mm_B_okay` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x3f70, 8 bytes) Inferred.
  The `jr` at 0x3f70 returns with v0 = ?.

- `odsy_mm_obj_xfr_backing_store` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x3f78, 1336 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x28 into `at` (`lw` at 0x3f80, 0x4228).
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `s1` (`ld` at 0x3f88).
  Loads 4 bytes from a0 (arg0 at entry) +0x48 into `s7` (`lw` at 0x3f90).
  Loads 8 bytes from [a0+8]:8 +0x8 into `s1` (`ld` at 0x3f9c).
  Loads 8 bytes from [[a0+8]:8+8]:8 +0x8 into `s1` (`ld` at 0x3fa4).
  Loads 8 bytes from a0 (arg0 at entry) +0x50 into `at` (`ld` at 0x3fa8).
  Loads 8 bytes from [[[a0+8]:8+8]:8+8]:8 +0x0 into `v0` (`ld` at 0x3fac).
  Loads 8 bytes from [[[[a0+8]:8+8]:8+8]:8]:8 +0x2e0 into `v0` (`ld` at 0x3fc0).
  Loads 8 bytes from [[[a0+8]:8+8]:8+8]:8 +0x6b0 into `v0` (`ld` at 0x3fd8, 0x4010).
  Loads 8 bytes from [[[a0+8]:8+8]:8+8]:8 +0x6a0 into `v1` (`ld` at 0x3fdc, 0x4020).
  Loads 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x6b8 into `v1` (`lw` at 0x3ff0).
  Stores 4 bytes from `zero` to [[[a0+8]:8+8]:8+8]:8 +0x6b8 (`sw` at 0x4000).
  Loads 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x6b8 into `a3` (`lw` at 0x400c, 0x4290).
  Stores 8 bytes from `v0` to a0 (arg0 at entry) +0x50 (`sd` at 0x4074).
  Stores 4 bytes from `s7` to a0 (arg0 at entry) +0x58 (`sw` at 0x4080).
  Stores 8 bytes from `a3` to [[[a0+8]:8+8]:8+8]:8 +0x6b0 (`sd` at 0x4088).
  Stores 4 bytes from `at` to a0 (arg0 at entry) +0x4c (`sw` at 0x40dc).
  Stores 4 bytes from `a3` to table(0x110000) +0x0: 8 such accesses, including `sw` at 0x40e0, 0x40fc, 0x4118.
  Stores 4 bytes from `v1` to table(0x110000) +0x0: 17 such accesses, including `sw` at 0x40e8, 0x411c, 0x4148.
  Stores 4 bytes from `at` to table(0x110000) +0x0: 14 such accesses, including `sw` at 0x40f0, 0x40f4, 0x4108.
  Stores 4 bytes from `a1` to table(0x110000) +0x0 (`sw` at 0x40f8, 0x4380).
  Stores 4 bytes from `s4` to table(0x110000) +0x0: 4 such accesses, including `sw` at 0x4104, 0x412c, 0x438c.
  Stores 4 bytes from `v0` to table(0x110000) +0x0 (`sw` at 0x4154, 0x43dc).
  Stores 4 bytes from `a0` to table(0x110000) +0x0 (`sw` at 0x4158, 0x43e4).
  Loads 4 bytes from a0 (arg0 at entry) +0x28 into `v1` (`lw` at 0x4160).
  Loads 1 byte from a0 (arg0 at entry) +0x11 into `a7` (`lbu` at 0x4184).
  Loads 4 bytes from a0 (arg0 at entry) +0x30 into `a6` (`lw` at 0x4188).
  Loads 4 bytes from a0 (arg0 at entry) +0x1c into `a5` (`lw` at 0x4194).
  Loads 4 bytes from a0 (arg0 at entry) +0x38 into `a2` (`lw` at 0x41ac).
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `a1` (`ld` at 0x41d0).
  Loads 4 bytes from a0 (arg0 at entry) +0x48 into `a4` (`lw` at 0x41d4).
  Loads 8 bytes from [a0+8]:8 +0x8 into `a1` (`ld` at 0x41d8).
  Loads 8 bytes from [[a0+8]:8+8]:8 +0x8 into `a1` (`ld` at 0x41e0).
  Loads 8 bytes from a0 (arg0 at entry) +0x50 into `a3` (`ld` at 0x41e4).
  Loads 8 bytes from [[[a0+8]:8+8]:8+8]:8 +0x0 into `a1` (`ld` at 0x41ec).
  Loads 4 bytes from a0 (arg0 at entry) +0x68 into `a4` (`lw` at 0x427c).
  Stores 4 bytes from `a4` to a0 (arg0 at entry) +0x68 (`sw` at 0x4288).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x4c (`sw` at 0x42a4, 0x4464).
  Stores 4 bytes from `a4` to ? (base unknown): 4 such accesses, including `sw` at 0x42bc, 0x42e4, 0x42f8.
  Stores 4 bytes from `a3` to ? (base unknown): 5 such accesses, including `sw` at 0x42c8, 0x42e0, 0x42ec.
  Stores 4 bytes from `at` to ? (base unknown): 10 such accesses, including `sw` at 0x42d0, 0x42d8, 0x42f0.
  Stores 4 bytes from `a4` to table(0x110000) +0x0: 5 such accesses, including `sw` at 0x4364, 0x4384, 0x43a0.
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `a0` (`ld` at 0x4404).
  Loads 8 bytes from [a0+8]:8 +0x8 into `a0` (`ld` at 0x4408).
  Loads 8 bytes from [[a0+8]:8+8]:8 +0x8 into `a0` (`ld` at 0x440c).
  Loads 8 bytes from [[[a0+8]:8+8]:8+8]:8 +0x0 into `a0` (`ld` at 0x4420).
  Loads 8 bytes from a0 (arg0 at entry) +0x50 into `a0` (`ld` at 0x4424).
  Loads 8 bytes from [[[a0+8]:8+8]:8+8]:8 +0x6b0 into `a4` (`ld` at 0x4430).
  Loads 8 bytes from [[[a0+8]:8+8]:8+8]:8 +0x6a8 into `a3` (`ld` at 0x4434).
  Stores 8 bytes from `a4` to [[[a0+8]:8+8]:8+8]:8 +0x6b0 (`sd` at 0x4444).
  Stores 4 bytes from `s7` to [[[a0+8]:8+8]:8+8]:8 +0x6b8 (`sw` at 0x4454).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x50 (`sd` at 0x445c).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x58 (`sw` at 0x4460).
  Calls `odsy_mm_jettison_freerun_backing_store` via direct with a0=[[[a0+8]:8+8]:8+8]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x4004).
  Calls `odsy_mm_B_warn` via direct with a0=[[[a0+8]:8+8]:8+8]:8, a1=?, a2=?, a3=? (`jal` at 0x4044).
  Calls `kmem_alloc` via direct with a0=?, a1=0x2000, a2=?, a3=? (`jal` at 0x4068).
  Calls `odsy_mm_B_okay` via direct with a0=[[[a0+8]:8+8]:8+8]:8, a1=?, a2=?, a3=? (`jal` at 0x4078).
  Calls `SetupDMAParams` via direct with a0=a0 at entry (arg0), a1=sp-176, a2=a2 at entry (arg2), a3=? (`jal` at 0x4094).
  Calls `odsyDMAOp` via direct with a0=0x0, a1=[[[[a0+8]:8+8]:8+8]:8]:8, a2=0x0, a3=?, a4=[a0+72], a5=a1 at entry (arg1), a6=sp-176, a7=a0+96 (`jal` at 0x4218).
  Calls `odsy_mm_B_warn` via direct with a0=[[[a0+8]:8+8]:8+8]:8, a1=?, a2=?, a3=? (`jal` at 0x433c).
  Calls `odsyDMAWait` via direct with a0=[[[[a0+8]:8+8]:8+8]:8]:8, a1=0x0, a2=0x1, a3=a0+96, a4=[a0+104]+1 (`jal` at 0x441c).
  Calls `kmem_free` via direct with a0=[a0+80]:8, a1=?, a2=?, a3=? (`jal` at 0x4428).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x4478).
  The `bne` at 0x3fc8 is taken when at(=[a0+80]:8) != 0 and falls through when at(=[a0+80]:8) == 0.
  The `beq` at 0x3fd0 is taken when s2(=a2) == 0 and falls through when s2(=a2) != 0.
  The `beq` at 0x3fe8 is taken when v1(=[[[[a0+8]:8+8]:8+8]:8+1696]:8) >= v0(?) (signed) and falls through when v1(=[[[[a0+8]:8+8]:8+8]:8+1696]:8) < v0(?) (signed).
  The `beq` at 0x3ff4 is taken when v1(=[[[[a0+8]:8+8]:8+8]:8+1720]) == 0 and falls through when v1(=[[[[a0+8]:8+8]:8+8]:8+1720]) != 0.
  The `bne` at 0x4018 is taken when a3(=[[[[a0+8]:8+8]:8+8]:8+1720]) != 0 and falls through when a3(=[[[[a0+8]:8+8]:8+8]:8+1720]) == 0.
  The `beq` at 0x402c is taken when v1(=[[[[a0+8]:8+8]:8+8]:8+1696]:8) >= v0(?) (signed) and falls through when v1(=[[[[a0+8]:8+8]:8+8]:8+1696]:8) < v0(?) (signed).
  The `beq` at 0x4070 is taken when v0(=ret(kmem_alloc)) == 0 and falls through when v0(=ret(kmem_alloc)) != 0.
  The `beq` at 0x40c4 is taken when s2(=a2) == 0 and falls through when s2(=a2) != 0.
  The `beq` at 0x4178 is taken when v1(=[a0+40]) == 0 and falls through when v1(=[a0+40]) != 0.
  The `bne` at 0x4220 is taken when v0(=ret(odsyDMAOp)) != 0 and falls through when v0(=ret(odsyDMAOp)) == 0.
  The `bne` at 0x4230 is taken when s4(?) < at(=[a0+40]) (unsigned) and falls through when s4(?) >= at(=[a0+40]) (unsigned).
  The `beq` at 0x4254 is taken when v1(=a2) == 0 and falls through when v1(=a2) != 0.
  The `beq` at 0x429c is taken when a3(=[[[[a0+8]:8+8]:8+8]:8+1720]) == 0 and falls through when a3(=[[[[a0+8]:8+8]:8+8]:8+1720]) != 0.
  The `bne` at 0x4448 is taken when a3(=[[[[a0+8]:8+8]:8+8]:8+1704]:8) < a4(?) (signed) and falls through when a3(=[[[[a0+8]:8+8]:8+8]:8+1704]:8) >= a4(?) (signed).
  The `jr` at 0x426c returns with v0 = one of 0x0, 0xc, 0x16.

- `odsy_mm_reserve` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x44b0, 464 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `v0` (`ld` at 0x44b4).
  Loads 8 bytes from [a0+8]:8 +0x8 into `v0` (`ld` at 0x44bc).
  Loads 8 bytes from [[a0+8]:8+8]:8 +0x8 into `v0` (`ld` at 0x44c0).
  Loads 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x69c into `at` (`lw` at 0x44c4).
  Stores 4 bytes from `at` to [[[a0+8]:8+8]:8+8]:8 +0x69c (`sw` at 0x44e4).
  Loads 1 byte from a0 (arg0 at entry) +0x10 into `v0` (`lbu` at 0x44e8).
  Loads 4 bytes from ? (base unknown) into `s1` (`lw` at 0x4520).
  Stores 4 bytes from `s1` to ? (base unknown) (`sw` at 0x4528).
  Loads 4 bytes from a0 (arg0 at entry) +0x40 into `at` (`lw` at 0x4570).
  Stores 4 bytes from `at` to a0 (arg0 at entry) +0x40 (`sw` at 0x4584).
  Loads 8 bytes from ret(OdsyNextCSetElem) +0x28 into `a3` (`ld` at 0x45d0).
  Stores 2 bytes from `s2` to [ret(OdsyNextCSetElem)+40]:8 +0x2 (`sh` at 0x45d4).
  Loads 8 bytes from ret(OdsyNextCSetElem) +0x28 into `a2` (`ld` at 0x45dc).
  Stores 2 bytes from `zero` to [ret(OdsyNextCSetElem)+40]:8 +0x0 (`sh` at 0x45e0).
  Loads 8 bytes from ret(OdsyNextCSetElem) +0x28 into `a1` (`ld` at 0x45e8).
  Stores 2 bytes from `zero` to [ret(OdsyNextCSetElem)+40]:8 +0x2 (`sh` at 0x45ec).
  Stores 4 bytes from `zero` to ret(OdsyNextCSetElem) +0x40 (`sw` at 0x45fc).
  Calls `odsy_mm_reserve_pbuffer` via direct with a0=a0 at entry (arg0), a1=0x4, a2=0x6, a3=? (`jal` at 0x454c).
  Calls `OdsyInitCSetCursor` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x4580).
  Calls `OdsyNextCSetElem` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x4588).
  Calls `OdsyNextCSetElem` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x45a4).
  Calls `OdsyInitCSetCursor` via direct with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=? (`jal` at 0x45b4).
  Calls `OdsyNextCSetElem` via direct with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=? (`jal` at 0x45bc).
  Calls `OdsyNextCSetElem` via direct with a0=ret(OdsyNextCSetElem), a1=[ret(OdsyNextCSetElem)+40]:8, a2=[ret(OdsyNextCSetElem)+40]:8, a3=[ret(OdsyNextCSetElem)+40]:8 (`jal` at 0x45f8).
  Calls `mm_init_freespace` via direct with a0=[[[a0+8]:8+8]:8+8]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x4628).
  Calls `odsy_mm_reserve_texture` via direct with a0=a0 at entry (arg0), a1=0x4, a2=0x6, a3=? (`jal` at 0x4640).
  Calls `odsy_mm_reserve_scratch` via direct with a0=a0 at entry (arg0), a1=0x4, a2=0x6, a3=? (`jal` at 0x4664).
  The `beq` at 0x44e0 is taken when s2(=0x1) == at(=[[[[a0+8]:8+8]:8+8]:8+1692]+1) and falls through when s2(=0x1) != at(=[[[[a0+8]:8+8]:8+8]:8+1692]+1).
  The `beq` at 0x44f4 is taken when v0(=[a0+16]:1) == v1(=0x3) and falls through when v0(=[a0+16]:1) != v1(=0x3).
  The `beq` at 0x44fc is taken when v0(=[a0+16]:1) == a1(=0x4) and falls through when v0(=[a0+16]:1) != a1(=0x4).
  The `beq` at 0x4504 is taken when v0(=[a0+16]:1) == a2(=0x6) and falls through when v0(=[a0+16]:1) != a2(=0x6).
  The `beq` at 0x4514 is taken when s0(=one of 0x0, 0xc) == 0 and falls through when s0(=one of 0x0, 0xc) != 0.
  The `bne` at 0x4560 is taken when s0(=one of 0x0, 0xc) != 0 and falls through when s0(=one of 0x0, 0xc) == 0.
  The `beq` at 0x4594 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x45ac is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x45c4 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `bne` at 0x4600 is taken when v0(=ret(OdsyNextCSetElem)) != 0 and falls through when v0(=ret(OdsyNextCSetElem)) == 0.
  The `jr` at 0x453c returns with v0 = one of 0x0, 0xc.

- `odsy_mm_release` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x4680, 156 bytes) Inferred.
  Loads 1 byte from a0 (arg0 at entry) +0x10 into `a2` (`lbu` at 0x4680).
  Loads 4 bytes from a0 (arg0 at entry) +0x40 into `v0` (`lw` at 0x46dc).
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `at` (`ld` at 0x46e4).
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x40 (`sw` at 0x46ec).
  Loads 8 bytes from [a0+8]:8 +0x8 into `at` (`ld` at 0x46f0).
  Loads 8 bytes from [[a0+8]:8+8]:8 +0x8 into `at` (`ld` at 0x46f4).
  Loads 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x69c into `a1` (`lw` at 0x46f8).
  Stores 4 bytes from `a1` to [[[a0+8]:8+8]:8+8]:8 +0x69c (`sw` at 0x4704).
  Calls `odsy_mm_release_pbuffer` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+16]:1, a3=a3 at entry (arg3) (`jal` at 0x46b8).
  Calls `odsy_mm_release_scratch` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+16]:1, a3=a3 at entry (arg3) (`jal` at 0x46cc).
  Calls `odsy_mm_release_texture` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+16]:1, a3=a3 at entry (arg3) (`jal` at 0x470c).
  The `beq` at 0x4694 is taken when a2(=[a0+16]:1) == at(=0x3) and falls through when a2(=[a0+16]:1) != at(=0x3).
  The `beq` at 0x469c is taken when a2(=[a0+16]:1) == v0(=0x4) and falls through when a2(=[a0+16]:1) != v0(=0x4).
  The `beq` at 0x46a4 is taken when a2(=[a0+16]:1) == v1(=0x6) and falls through when a2(=[a0+16]:1) != v1(=0x6).
  The `jr` at 0x46ac returns with v0 = ?.

## Skipped routines

One routine has no reading: `gfP_OdsyBRDMGRsetColors` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`. hostfacts fails on it in condition rendering with `KeyError: 26`.
