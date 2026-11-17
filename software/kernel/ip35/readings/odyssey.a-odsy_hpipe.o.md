# Readings: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)`

One entry per routine, filed here from the reading batches by binary.

- `gfP_OdsyHPgetTopology` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` at 0x618 (n64)
  **Inferred.** Takes `odsy_hpipe_state_lock` with `mutex_spinlock` at 0x62c and reads the state pointer `OdsyHpipeState` at 0x644. If the state or its first word is zero it calls `odsy_hpipe_discover` at 0x690; a nonzero discover result (the render shows 0x16 as one possible value) branches at 0x6a0 to 0x668, past the `copyout`. Otherwise it copies 0x184 bytes from the state block at +4360 to the caller's buffer (the `copyout` at 0x658), releases the lock with `mutex_spinunlock` at 0x670 and returns the first word of the state block. Role (from name): the 388-byte copy fits a topology query, but the layout of that block is not traced.
  Reviewed: 2026-11-12

- `odsy_usb_comp_update_tiles` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` at 0x7f4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)`.
  Range: 0x7f4-0x81c (40 bytes).
  It occupies 40 bytes.
  The `jal` at 0x804 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x814 has v0 = -0x1.

- `usb_comp_update_tiles` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` at 0x7f4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)`.
  Range: 0x7f4-0x81c (40 bytes).
  It occupies 40 bytes.
  The `jal` at 0x804 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x814 has v0 = -0x1.

- `odsy_usb_comp_readwrite_register` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` at 0x81c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)`.
  Range: 0x81c-0x844 (40 bytes).
  It occupies 40 bytes.
  The `jal` at 0x82c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x83c has v0 = -0x1.

- `usb_comp_readwrite_register` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` at 0x81c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)`.
  Range: 0x81c-0x844 (40 bytes).
  It occupies 40 bytes.
  The `jal` at 0x82c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x83c has v0 = -0x1.

- `gfP_OdsyHPqueryBestAttrib` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` at 0x1728 (n64)
  **Inferred.** Copies a 32-byte request in at 0x1740. If that copy fails (the branch at 0x1748 goes to 0x17d8), it goes to the `cmn_err` call at 0x17e0. Otherwise it allocates a temporary buffer with `kmem_alloc` at 0x1754. When the allocation returns zero (the branch at 0x1760 falls through) it stores at 0x1768, a value the render does not show, and the facts show no `kmem_free` for that path. When the allocation succeeds it copies a second block in at 0x177c. A failed second copy stores at 0x1790 and frees the buffer with `kmem_free` at 0x1798. A successful one copies a result out at 0x17bc, and a successful `copyout` goes to the `kmem_free` at 0x1798. A failed `copyout` stores at 0x17d4 and reaches the `cmn_err` at 0x17e0; the facts do not show a free on that path. The returns are one of 0xc, a word loaded at 0x17a0 and 0xe. Role (from name): the query result is not traced, and the facts do not establish what 0xc and 0xe mean.
  Reviewed: 2026-11-12
