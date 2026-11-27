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

- `gfP_OdsyI2CPassthrough` in `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_compositor.o)` at 0xb78
  **Established.** Compositor DDC pass-through ioctl handler (arguments: the device record in a0, a user pointer in a2 and the result word in a3; the board record is the pointer at device +40). It calls `copyin` at 0xb9c for two words, an on flag and a direction flag, and a failed copy logs through `cmn_err` at 0xbb4 and stores 14 in the result word. It then takes the board's I2C mutex with `mutex_lock` at 0xbe4 (lock at +0x8520 of the record at board +46104 when the word at board +46116 is nonzero) or at 0xbfc (lock at +0x8510 otherwise), stores 31 at board +46120 and logs both words with `cmn_err` at 0xc1c. With the on flag set it stores 1 at board +46132 and reads DDC register 5 with `odsy_i2cDDCRegRead` at 0xc48. With the direction flag also set it calls `odsy_i2cPLLRegWrite` at 0xc64 to write PLL register 0 with 32 and at 0xc80 to write register 5 with the DDC byte ORed with 0x20; with the direction flag clear it writes register 0 with 16 at 0xcf0 and register 5 with the byte ANDed with 0xdf at 0xd10. With the on flag clear it stores 31 at board +46120 again, writes PLL register 0 with 48 at 0xcd8 and clears the halfword at board +46132. It releases the same mutex with `mutex_unlock` at 0xc98 or 0xd24 and returns 0 in the result word. All PLL and DDC accesses use the I2C port at board +46088.
