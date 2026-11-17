# Readings: `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_compositor.o)`

One entry per routine, filed here from the reading batches by binary.

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
