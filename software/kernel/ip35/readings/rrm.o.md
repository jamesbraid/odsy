# Readings: `usr/cpu/sysgen/IP35boot/rrm.o`

One entry per routine, filed here from the reading batches by binary.

- `rrmResume` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x2518 (n64)
  **Inferred.** Calls `rt_pin_thread` at 0x252c and looks up a thread with `gthread_find` at 0x2540. When the lookup returns zero it branches to 0x27e8, which calls `rt_unpin_thread`. For a found thread whose word at +16 is nonzero it takes `GfxListReaderLock` at 0x2780 and later `GfxListReaderUnlock` at 0x269c or 0x2978. A `mutex_spinlock` on the object at +24 of the thread (+16 within it) appears at 0x2954, with another at 0x2848. `rrmDoUnMapGfx` is called at 0x27b0, 0x28d4 and 0x2928. `cpsema` at 0x28b4 is separate from a `splhi` at 0x28ec, `vsema` at 0x2918 and `splx` at 0x2920; the `splhi`/`splx` pair brackets the `vsema`. One path returns the result of `rt_unpin_thread` at 0x26d4. Role (from name): the name says resume, and the callees fit a graphics remap, but the thread-state fields are not traced well enough to settle the sequence.
  Reviewed: 2026-11-12

- `RRM_SwapBuf` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x3838
  Evidence grade: inferred.
  The facts for this build match the IP30boot build at 0x3828 call for call, shifted by 0x10, so the description there holds here.
  It calls `rrmGetResourceMask` first and branches past most of the routine to the final `rrmSetResourceMask` call when bit 0x8 of the result is clear. Otherwise it calls `rrmSwapWait` (returning early at 0x38cc when that returns nonzero), then `RRM_CheckValidFault`, which sends a negative result to a separate exit. Next come `invalidate_pane`, one call through an unnamed callee, `validate_pane_buffer`, `rrmUnMapGfx`, a `psema` and two `vsema` calls on a .bss semaphore, and `rrmSetResourceMask`. The return value is one of 0x0, 0x4, 0xe or a callee result. The unnamed callee is not resolved in the facts.
  Role (from name): the callee names suggest a buffer swap that waits for the swap, checks the fault state, refreshes the pane and drops the graphics mapping; the call order is the evidence and the arguments mostly are not followed.
  Reviewed: 2026-11-12
