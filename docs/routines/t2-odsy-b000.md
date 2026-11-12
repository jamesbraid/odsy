# Tier-2 routine roles, odsy batch 0

- `gfP_OdsyBRDMGRVTGcontrol` in `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)` at 0x5e3c
  **Inferred.** Copies an 8-byte argument block in with `copyin` (jal at 0x5e68) and sends a nonzero copyin result to a `cmn_err` call at 0x62d8 (bne at 0x5e70). The body polls `odsy_poll_dfifo_level` at levels 0xd and 0xc (calls at 0x5e90, 0x5f90, 0x6048) and brackets state at a0+40 with `mutex_spinlock`/`mutex_spinunlock` on offset +34112 and `psema`/`vsema` on +34096. The facts show a control request that waits on the display FIFO before updating register state; they do not show which timing registers it writes.

- `gf_OdsySetDisplayMode` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)` at 0xb68
  **Inferred.** Walks a display-state record through a0 (loads at 0xb74 and 0xc3c, +0x1250 and +0x1270 from [a0+32]) and calls `odsyValidateBuffer` at 0xc98 with a0, a1 and two fields from the record before any write. The body waits on `odsy_poll_dfifo_level` (levels 0xf, 0xc at 0xb94 and 0xcec) and serialises through `mutex_lock` on +4664 and spinlocks on +10272 with `vsema`/`psema` on +10256. The name says it sets the mode; the facts show validation and locking but not which mode fields are written.

- `gfP_OdsyBRDMGRcursor` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)` at 0x125c
  **Inferred.** Makes three `copyin` calls from the caller's argument at 0x12a4, 0x1374 and 0x1428 with sizes 0x28, 0x3c and 0x200 bytes, and calls `gf_OdsyPositionCursor` at 0x12ec on [a0+32]. Like the mode routine above it polls `odsy_poll_dfifo_level` and passes through the spinlock and `psema`/`vsema` pair on +10272 and +10256. Its return values are 0x0, 0x5 or 0xe (return at 0x1354). The 0x200-byte copy fits a cursor image, but that is a guess from the size; the facts do not show the layout.

- `odsyBlankScreen` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)` at 0x207c
  **Inferred.** Polls the DFIFO at three points (calls at 0x20e0, 0x2144, 0x21a8), reads a DDC register with `odsy_i2cDDCRegRead` at 0x22a8 (argument 0x0 and argument 0x17), and writes a PLL register with `odsy_i2cPLLRegWrite` at 0x22c4 with value 0x0. The spinlock call at 0x224c passes 0xffffffff as its fifth argument (in a4), which would make the lock wait unbounded if that argument is a timeout. The facts do not show what the argument means. The I2C writes to the PLL are consistent with stopping the pixel clock during a blank, which is what the name suggests, but the facts do not confirm the register meanings. Return is -1 or 0 at 0x210c.

- `odsyLoadTimingTable` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)` at 0x3320
  **Inferred.** Reads a series of 32-bit fields from its argument at offsets 0x80 through 0xe8 (loads at 0x3470 to 0x34a4) and writes them out through `odsy_i2cPLLRegWrite`, which is called 14 times, with `odsy_poll_dfifo_level` called 21 times alongside them. It also calls `odsy_LoadDCD2Regs` once and `odsy_usdelay` once, and clears two areas with `bzero`. The structure of the argument table is not identified; the return at 0x33ac is -1 or 0.

- `gf_OdsyCreateDDRN` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddrn.o)` at 0x54
  **Inferred.** Allocates zeroed memory with `kmem_zalloc` at 0x18c (size 0x4000) and calls `OdsyAlloc32kSlot`, `OdsyInitCSet`, `odsyMapPages` and `odsyResetHwShadow` to set up the node's resources. It takes `psema`/`vsema` on a0+6032 and on the ODSYddrn symbol, has six `cmn_err` calls, and makes one `kmem_free` call. The return at 0x2cc is 0 or 1. The name indicates creation of a DDRN node; the facts give the setup calls but not the node's purpose.

- `odsyGatherInfo` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0x8bc
  **Inferred.** Reads a table at the fixed address 0x23380c (load at 0xa3c) and polls the DFIFO three times with `odsy_poll_dfifo_level`. The shared state is guarded by four `mutex_spinlock` calls with matching unlocks and by `psema`/`vsema` calls, and failures are reported with four `cmn_err` calls. The return at 0x900 is -1 or 0. This reads as a probe that collects board information at init, but the facts do not show which fields it stores.

- `odsyFlagInterrupt` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)` at 0x11c
  **Inferred.** Reads two status words from the device block at [a0+736] (+0x1014 and +0x1034, at 0x13c and 0x140) and an entry from the `gfxinfo` table indexed by a 16-bit value (loads and a store at 0x158 and 0x164). It then dispatches to `odsyLowaterInterrupt` at 0x16c with its arguments passed through, and to `odsyGenlockInterrupt` at 0x19c with cause 0x40000000. The error paths call `odsy_teardown` at 0x2a8 and `cmn_err` at 0x2c8 and 0x2e4. The return is either the device pointer or the result of `odsy_teardown`.

- `odsyGenlockInterrupt` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)` at 0x5bc
  **Inferred.** Reads genlock state from the device block at [a0+736] (+0x233e6c and +0x233e64, at 0x604 and 0x634) and from a0+0x5690 at 0x61c, and reports unexpected states with `cmn_err` at 0x668 and 0x72c. It rewrites PLL registers through `odsy_i2cPLLRegWrite`: registers 0x1, 0x2 and 0x6 at 0x68c, 0x69c and 0x6ac, and 0x1 again at 0x750, with 0x58 as the device address argument on the first and last. The return at 0x7d8 is the result of `vsema` or `mutex_spinunlock`. The facts show a PLL resync after genlock, but they do not identify what each register holds.

- `gf_OdsySetDisplayMode` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)` at 0xb68
  **Inferred.** The rendered body matches the patch-4103 build at the same address (same size, same branch and call targets), so the reading in the entry above applies here. It validates the buffer through `odsyValidateBuffer` at 0xc98 and waits on `odsy_poll_dfifo_level`, with the same locks. The return values are 0x0 or 0x5 (return at 0xbc4).

- `gfx_disp` in `usr/cpu/sysgen/IP30boot/gfx.o` at 0xc28
  **Inferred.** Looks up a graphics thread with `gthread_find` at 0xc30, passing its four arguments through, and checks the result and its list pointer at +16 before walking a list whose entries are tested for a flag bit at 0xc90 (0x8) and for a value at 0xd24 (0x4 on the word at +8). It makes an indirect call at 0xc6c and signals a semaphore with `valusema` at 0xd44, using a count loaded from the thread's record at +24 and +12. The return is 0 or 1. The facts say how the thread record is walked; they do not name the request being handled.

- `gfx_fault` in `usr/cpu/sysgen/IP30boot/gfx.o` at 0xd5c
  **Inferred.** Gets the current thread handle with `curthreadhandle` at 0xd6c and looks up its graphics record with `gthread_find` at 0xd78. It validates the fault through `RRM_ValidFault` at 0xdc4, makes an indirect call at 0xdb8 with the record's field at +112, and brackets the update with `psema` and `vsema` on a1+80 (calls at 0xe14 and 0xe24). The return at 0xe00 is 0 or 1. The name and the `RRM_ValidFault` call point to fault handling for the graphics thread, but the facts do not show what a valid fault leads to.

- `gfx_shcheck` in `usr/cpu/sysgen/IP30boot/gfx.o` at 0xfe0
  **Inferred.** Looks up a graphics thread with `gthread_find` at 0xfec and then runs a teardown sequence: `ddv_destroy_handle` at 0x105c, `gthread_detach_list` at 0x10a0, `gthread_detach_group` at 0x10a8, `cleargfxsched_thread` at 0x10b0 and `gthread_destroy` at 0x10b8. The list is held by `GfxListWriterLock` at 0x10dc, and an `splhi`/`splx` section surrounds a `vsema` at 0x1164. This reads as tearing down a stale graphics thread on a failed check. The name suggests a shared-resource check, but the facts show the teardown path only.

- `gfx_shdup` in `usr/cpu/sysgen/IP30boot/gfx.o` at 0x1234
  **Inferred.** Finds an existing graphics thread with `gthread_find` at 0x1240, creates a new one with `gthread_create` at 0x1284 using the list's field at +24 as an attribute, attaches it to the same list with `gthread_attach_list` at 0x1298, and schedules it with `setgfxsched_thread` at 0x12a0. The return at 0x127c is one of several values, none of them named. The name suggests a shared duplicate of the thread; the facts show the create-and-attach sequence.

- `gfx_disp` in `usr/cpu/sysgen/IP30boot/gfxs.a(gfx.o)` at 0xc28
  **Inferred.** The rendered body matches the standalone `gfx.o` build at the same address, so the reading of `gfx_disp` above applies. It calls `gthread_find` at 0xc30, makes an indirect call at 0xc6c, and signals with `valusema` at 0xd44. The return is 0 or 1.

- `gfx_fault` in `usr/cpu/sysgen/IP30boot/gfxs.a(gfx.o)` at 0xd5c
  **Inferred.** The rendered body matches the standalone `gfx.o` build at the same address, so the reading of `gfx_fault` above applies. It calls `RRM_ValidFault` at 0xdc4 after `gthread_find`, and brackets the update with `psema` and `vsema` on a1+80. The return is 0 or 1.

- `gfx_shcheck` in `usr/cpu/sysgen/IP30boot/gfxs.a(gfx.o)` at 0xfe0
  **Inferred.** The rendered body matches the standalone `gfx.o` build at the same address, so the reading of `gfx_shcheck` above applies. It runs the same teardown sequence (`gthread_detach_list` at 0x10a0, `gthread_destroy` at 0x10b8) under `GfxListWriterLock` at 0x10dc.

- `gfx_shdup` in `usr/cpu/sysgen/IP30boot/gfxs.a(gfx.o)` at 0x1234
  **Inferred.** The rendered body matches the standalone `gfx.o` build at the same address, so the reading of `gfx_shdup` above applies. It creates a thread with `gthread_create` at 0x1284 and attaches it with `gthread_attach_list` at 0x1298.

- `prom_autoboot` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x2e4
  **Inferred.** Is a short wrapper: it calls `silence_bell` at 0x2ec, `prom_reinit` at 0x300 and then makes an indirect call at 0x314 with no arguments set up in the facts. Its return at 0x320 is the value of an unnamed call. The name points to starting the PROM autoboot path, but the facts do not show what the indirect call reaches.

- `rrmSuspend` in `usr/cpu/sysgen/IP30boot/rrm.o` at 0x2170
  **Inferred.** Finds the graphics thread with `gthread_find` at 0x2184 and then makes four indirect calls (0x223c, 0x230c, 0x232c, 0x238c) that the facts do not resolve. It releases the thread's list state with `mutex_spinunlock` at 0x22c0 and `GfxListReaderUnlock` at 0x22c8, and runs a `splhi`/`splx` section around a `vsema` at 0x23a0 before retaking the list with `GfxListReaderLock` at 0x23b8. The sequence fits a graphics-resource suspend that drops and reacquires the reader lock, but the individual steps are not named.

- `rrmResume` in `usr/cpu/sysgen/IP30boot/rrm.o` at 0x2518
  **Inferred.** Pins the thread with `rt_pin_thread` at 0x252c, looks it up with `gthread_find` at 0x2544, and releases the list reader with `GfxListReaderUnlock` at 0x2688 before unpinning with `rt_unpin_thread` at 0x2690. It takes the reader lock again at 0x2770 with `GfxListReaderLock` and calls `rrmDoUnMapGfx` at 0x27a0, with several unresolved indirect calls between. The facts fit the resume side of the suspend routine above, but the meaning of the `rrmDoUnMapGfx` call is not settled by them.
