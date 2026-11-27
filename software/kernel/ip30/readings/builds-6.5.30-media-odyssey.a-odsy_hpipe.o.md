# Readings: `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`

One entry per routine, filed here from the reading batches by binary.

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

- `gfP_OdsyHPgetTopology` in `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` at 0x618
  **Established.** Hyperpipe topology ioctl handler (arguments: a user pointer in a2 and the result word in a3). It takes the lock `odsy_hpipe_state_lock` with `mutex_spinlock` at 0x62c. When the state pointer is null, or the first word of the state is zero, it calls `odsy_hpipe_discover` at 0x690 first and, when that call returns nonzero, skips the copy and stores 22 in the result word. Otherwise it calls `copyout` at 0x658 to send the 388 bytes at state +4360 to the user pointer, and stores 14 in the result word when the copy fails. It stores the status in the result word, releases the lock with `mutex_spinunlock` at 0x670 and returns the result word. It touches no board register: the data it hands back is whatever the discovery left in the state record.

- `gfP_OdsyHPqueryBestAttrib` in `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` at 0x1728
  **Established.** Hyperpipe best-attribute ioctl handler (arguments: a user pointer in a2 and the result word in a3). It calls `copyin` at 0x1740 for a 32-byte request, takes a length from request +12 and allocates that many bytes with `kmem_alloc` at 0x1754, then calls `copyin` at 0x177c to read that many bytes from the user pointer at request +16 into the buffer and `copyout` at 0x17bc to write the buffer to the user pointer at request +24. The buffer is freed with `kmem_free` at 0x1798. Nothing in the routine looks at the contents or reads the board: the reply is a copy of the request payload. A failed first copy logs through `cmn_err` at 0x17e0 and stores 14; a failed allocation stores 12; a failed later copy stores 14.
