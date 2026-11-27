# Readings: `usr/cpu/sysgen/IP30boot/rrm.o`

One entry per routine, filed here from the reading batches by binary.

- `rrmSuspend` in `usr/cpu/sysgen/IP30boot/rrm.o` at 0x2170
  **Inferred.** Finds the graphics thread with `gthread_find` at 0x2184 and then makes six indirect calls (0x223c, 0x230c, 0x232c, 0x238c, 0x2434, 0x24b8) that the facts do not resolve. On some paths it calls `mutex_spinunlock` at 0x22c0 and `GfxListReaderUnlock` at 0x22c8, and it calls `GfxListReaderLock` at 0x23b8 and `GfxListReaderUnlock` again at 0x2460. `splhi`/`splx` sections around a `vsema` appear, for example at 0x2374 to 0x23a8 and 0x241c to 0x2450. It also calls `cmn_err` at 0x2508. The sequence may be a graphics-resource suspend, but the individual steps are not named.
  Reviewed: 2026-11-12

- `rrmResume` in `usr/cpu/sysgen/IP30boot/rrm.o` at 0x2518
  **Inferred.** Pins the thread with `rt_pin_thread` at 0x252c, looks up a graphics thread with `gthread_find` at 0x2544, and on its paths calls `GfxListReaderUnlock` (0x2688, 0x2968) and `rt_unpin_thread` (0x2690, 0x27d8, 0x2970). It calls `GfxListReaderLock` at 0x2770 and `rrmDoUnMapGfx` at 0x27a0, 0x28c4 and 0x2918, with several unresolved indirect calls between. It also uses `mutex_spinlock`/`mutex_spinunlock`, `cpsema`, and a `splhi`/`splx` section around `vsema`. The meaning of the `rrmDoUnMapGfx` calls is not settled by the facts.
  Reviewed: 2026-11-12

- `RRM_SwapBuf` in `usr/cpu/sysgen/IP30boot/rrm.o` at 0x3828
  Evidence grade: inferred.
  It calls `rrmGetResourceMask` first and branches past most of the routine to the final `rrmSetResourceMask` call when bit 0x8 of the result is clear. Otherwise it calls `rrmSwapWait` (returning early at 0x38bc when that returns nonzero), then `RRM_CheckValidFault`, which sends a negative result to a separate exit. Next come `invalidate_pane`, one call through an unnamed callee, `validate_pane_buffer`, `rrmUnMapGfx`, a `psema` and two `vsema` calls on a .bss semaphore, and `rrmSetResourceMask`. The return value is one of 0x0, 0x4, 0xe or a callee result. The unnamed callee is not resolved in the facts.
  Role (from name): the callee names suggest a buffer swap that waits for the swap, checks the fault state, refreshes the pane and drops the graphics mapping; the call order is the evidence and the arguments mostly are not followed.
  Reviewed: 2026-11-12

- `RRM_SwapBuf` in `usr/cpu/sysgen/IP30boot/rrm.o` at 0x3828
  **Inferred.** Resource-manager handler that swaps the front and back buffer of a pane. It reads the resource mask with `rrmGetResourceMask` at 0x3850 and sets bit 8 with `rrmSetResourceMask` at 0x3aac when it is missing, waits for an earlier swap with `rrmSwapWait` at 0x3898 (a failed wait returns 4) and fails with 14 when `RRM_CheckValidFault` at 0x38c4 reports a fault. The buffer selector halfword at +18 of the pane's buffer record is toggled with `xori` at 0x3900 and the select word's bit 2 is set or cleared accordingly (stored at 0x391c and 0x3924). The routine then invalidates the pane with `invalidate_pane` at 0x398c, calls the board's swap hook through the table entry at +136 at 0x39a8, and revalidates the buffer with `validate_pane_buffer` at 0x39cc, unmapping the graphics window with `rrmUnMapGfx` at 0x3a00 when the hook fails. The semaphore pair `psema` at 0x3a30 and `vsema` at 0x3a60 brackets a locked record.
