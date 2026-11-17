# Readings: `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`

One entry per routine, filed here from the reading batches by binary.

- `gfP_OdsyBRDMGRVTGcontrol` in `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)` at 0x5e3c
  Evidence grade: inferred.
  It copies an 8-byte argument in with `copyin` (call at 0x5e68) and branches to the error path at 0x62d0 when the result is nonzero; that path ends in a `cmn_err` call at 0x62d8. It then calls `odsy_poll_dfifo_level` at 0x5e90 with level 0xd and again at 0x5f90 (and 0x6048) with level 0xc. State reached through a0+40 is guarded by `mutex_spinlock`/`mutex_spinunlock` on offset +34112 (calls at 0x5f64, 0x5f84, 0x6018, 0x603c and later) and a `psema`/`vsema` pair on +34096 (0x5fa0, 0x5fb4, 0x606c, 0x61a0). It also stores 0x400000 doublewords at 0x5f10, 0x5f3c, 0x6004 and later, which the facts do not explain. The routine has 20 calls and a return of 0x0, 0x5 or 0xe at 0x5ec8.
  Role (from name): the name suggests control of the video timing generator (VTG), but no timing register is visible in the facts, so the role is not derived.
  Reviewed: 2026-11-12

- `gfP_OdsyBRDMGRVTGcontrol` in `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)` at 0x5e3c
  **Inferred.** Copies an 8-byte argument block in with `copyin` (jal at 0x5e68) and sends a nonzero copyin result to a `cmn_err` call at 0x62d8 (bne at 0x5e70). The body polls `odsy_poll_dfifo_level` at levels 0xd and 0xc (calls at 0x5e90, 0x5f90, 0x6048); the first poll is made only when a word at [a0+40]+46184 is nonzero. It brackets state at a0+40 with `mutex_spinlock`/`mutex_spinunlock` on offset +34112 and `psema`/`vsema` on +34096, and stores words at +0xb3d4, +0xb3d8, +0xb330 and doublewords at +0x400000. Role (from name): a VTG control request; the facts do not show which registers it writes or what the stored values mean.
  Reviewed: 2026-11-12

- `gfP_OdsyBRDMGRVTGcontrol` in `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)` at 0x5e3c
  **Inferred.** It calls copyin first [call 1] and branches on its result [@0x5e70 taken nonzero]. A nonzero result takes the error path at 0x62d0, which calls cmn_err [call 20, @0x5e70 taken nonzero]. When copyin returns zero it calls odsy_poll_dfifo_level [call 2, @0x5e70 fall zero]; if the word at +46184 of the structure at [a0+40] is zero it first calls psema [call 7, @0x5e84 taken zero]. The routine makes 20 calls in all and returns 0x0, 0x5 or 0xe [@0x5ec8].
  Role (from facts): a request handler that copies its input in and then polls the DFIFO level on the success path [call 2, @0x5e70 fall zero].
  Reviewed: 2026-11-12
