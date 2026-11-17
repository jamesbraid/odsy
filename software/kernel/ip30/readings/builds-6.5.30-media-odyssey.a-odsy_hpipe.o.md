# Readings: `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`

One entry per routine, filed here from the reading batches by binary.

## `gfP_OdsyHPgetTopology` at `0x618`
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`.
  Range: 0x618-0x6b0 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0x644 loads 4 bytes from [sym(OdsyHpipeState)]:8 +0x0.
  The `sw` at 0x668 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lw` at 0x680 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `jal` at 0x62c calls mutex_spinlock with a0=sym(odsy_hpipe_state_lock), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x658 calls copyout with a0=[sym(OdsyHpipeState)]:8+4360, a1=a2 at entry (arg2), a2=0x184, a3=[sym(OdsyHpipeState)]:8.
  The `jal` at 0x670 calls mutex_spinunlock with a0=sym(odsy_hpipe_state_lock), a1=?, a2=?, a3=?.
  The `jal` at 0x690 calls odsy_hpipe_discover with a0=?, a1=?, a2=?, a3=[sym(OdsyHpipeState)]:8.
  The `beq` branch at 0x63c targets 0x690, is taken when a3(=[sym(OdsyHpipeState)]:8) == 0, and falls through when a3(=[sym(OdsyHpipeState)]:8) != 0.
  The `beq` branch at 0x648 targets 0x690, is taken when at(=[[sym(OdsyHpipeState)]:8]) == 0, and falls through when at(=[[sym(OdsyHpipeState)]:8]) != 0.
  The `bne` branch at 0x6a0 targets 0x668, is taken when s0(=one of 0x0, 0x16) != 0, and falls through when s0(=one of 0x0, 0x16) == 0.
  The `beq` branch at 0x6a8 targets 0x654 and is always taken.
  The return at 0x688 has v0 = [a3].

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

- `odsy_usb_comp_update_tiles` in `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` at 0x7f4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`.
  Range: 0x7f4-0x81c (40 bytes).
  It occupies 40 bytes.
  The `jal` at 0x804 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x814 has v0 = -0x1.

- `odsy_usb_comp_readwrite_register` in `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` at 0x81c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`.
  Range: 0x81c-0x844 (40 bytes).
  It occupies 40 bytes.
  The `jal` at 0x82c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x83c has v0 = -0x1.

## `gfP_OdsyHPqueryBestAttrib` at `0x1728`
  Evidence grade: established.
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
