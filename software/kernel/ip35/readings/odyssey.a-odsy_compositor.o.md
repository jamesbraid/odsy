# Readings: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_compositor.o)`

One entry per routine, filed here from the reading batches by binary.

- `gfP_OdsyCompositorRegAccess` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_compositor.o)` at 0xa5c (n64)
  **Inferred.** Copies a 12-byte request in from the caller at 0xa84, and a failed copy goes to a `cmn_err` log path (the `cmn_err` at 0xb2c). It then tests bit 0 of a1 at 0xa9c. When the bit is set it falls through to `odsyCompositorRegRead` at 0xaa8, and then copies 12 bytes back with `copyout` at 0xac4. When the bit is clear it branches to 0xaec and calls `odsyCompositorRegWrite` at 0xaf0. The write path also has a `copyout` of 12 bytes at 0xb10. The first argument of both calls is the pointer at a0+40. The return is one of the read status, 0, 0xe or a value the render does not resolve. The render does not say what 0xe means.
  Reviewed: 2026-11-12

- `gfP_OdsyI2CPassthrough` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_compositor.o)` at 0xb78 (n64)
  **Inferred.** Copies an 8-byte request in at 0xb9c; a failed copy goes to a `cmn_err` call at 0xbb4. Otherwise it locks the mutex at offset 34064 of the state block (`mutex_lock` at 0xbfc) and, only when the word at +46116 is nonzero, first locks the one at offset 34080 (`mutex_lock` at 0xbe4). Branches at 0xc30 and 0xc54 on registers the render leaves unresolved choose among the later calls. `odsy_i2cDDCRegRead` at 0xc48 is on the fall side of 0xc30. `odsy_i2cPLLRegWrite` at 0xc64 (a2 = 0x20) and 0xc80 are on the fall side of 0xc54. Calls at 0xcd8 (a2 = 0x30, a3 = 0x1f), 0xcf0 (a2 = 0x10) and 0xd10 (a3 = -0x21) are on the other sides. The render shows `mutex_unlock` calls at 0xc98 for the 34080 mutex, skipped when the +46116 word is zero, and at 0xd24 for the 34064 one. The render shows returns of 0 or 0xe. Role (from name): the PLL register writes suggest a clock-synthesizer setup, which the facts do not confirm.
  Reviewed: 2026-11-12
