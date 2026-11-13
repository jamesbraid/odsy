# Tier-2 routine roles, odsy batch 0

- `gfP_OdsyBRDMGRVTGcontrol` in `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)` at 0x5e3c
  **Inferred.** Copies an 8-byte argument block in with `copyin` (jal at 0x5e68) and sends a nonzero copyin result to a `cmn_err` call at 0x62d8 (bne at 0x5e70). The body polls `odsy_poll_dfifo_level` at levels 0xd and 0xc (calls at 0x5e90, 0x5f90, 0x6048); the first poll is made only when a word at [a0+40]+46184 is nonzero. It brackets state at a0+40 with `mutex_spinlock`/`mutex_spinunlock` on offset +34112 and `psema`/`vsema` on +34096, and stores words at +0xb3d4, +0xb3d8, +0xb330 and doublewords at +0x400000. Role (from name): a VTG control request; the facts do not show which registers it writes or what the stored values mean.
  Reviewed: 2026-11-12

- `gf_OdsySetDisplayMode` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)` at 0xb68
  **Inferred.** Loads a record pointer from [a0+32] (load at 0xb74) and tests a word at +0x5720 of it. It polls `odsy_poll_dfifo_level` at level 0xf (0xb94) and tests the result at 0xba8; a return of 0x0 or 0x5 is at 0xbc4. On the path through 0xc34 it takes `mutex_lock` on +4664, compares the word at +0x1250 at 0xc3c and, when the compared values differ, stores a word to +0x1250 at 0xc70 (when a pointer tested at 0xc6c is also nonzero). It calls `odsyValidateBuffer` at 0xc98 only when the word at +0x1270 (0xc78) ANDed with the field at +4720 is nonzero, with the record pointer, a1, a field at +4720 and a field at +4688, and then store a word to +0x1270. A doubleword store at +0x400000 (0xc14, base register not resolved) comes earlier in address order. Further `odsy_poll_dfifo_level` calls (levels 0xc at 0xcec and 0xe84) sit among spinlock calls on +10272 and `vsema`/`psema` on +10256. The name says it sets the mode; the facts show validation, locking and stores but not what the fields stored to the record mean.
  Reviewed: 2026-11-12

- `gfP_OdsyBRDMGRcursor` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)` at 0x125c
  **Inferred.** Makes four `copyin` calls, at 0x12a4, 0x1374, 0x1428 and 0x1654, with sizes 0x28, 0x3c, 0x200 and 0x100 bytes. The first is from the third argument and is made at entry; the later ones follow tests of flag bits (0x8, 0x10 and 0x20 at 0x1364, 0x141c and 0x1648) whose source the facts do not resolve. It calls `gf_OdsyPositionCursor` at 0x12ec on [a0+32], only when a flag tested at 0x12d8 (0x2) is set. Like the mode routine above it polls `odsy_poll_dfifo_level` (12 calls) and passes through spinlocks on +10272 and a `psema`/`vsema` pair on +10256. Its return values are 0x0, 0x5 or 0xe (return at 0x1354), and one `cmn_err` call sits at 0x180c. A 0x200-byte copy could be a cursor image, but that is a guess from the size; the facts do not show the layout.
  Reviewed: 2026-11-12

- `odsyBlankScreen` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)` at 0x207c
  **Inferred.** Branches on a1 (0, 1, 2) and on a halfword at [a0+298] compared with 3, and polls the DFIFO with `odsy_poll_dfifo_level` many times (nine calls, the first three at 0x20e0, 0x2144 and 0x21a8, with levels 0xc, 0xc and 0xe). It reads with `odsy_i2cDDCRegRead` (calls at 0x22a8, 0x2574 and 0x26e8, each with a1 = 0x0 and a3 = 0x17) and writes with `odsy_i2cPLLRegWrite` (calls at 0x22c4, 0x2590 and 0x2704), where a1 is 0x0 on all three; the value argument is not resolved. The spinlock calls are on a0+10272 and the semaphore on a0+10256. A `cmn_err` call sits at 0x29cc. Return is -1 or 0 at 0x210c. Role (from name): blanking the display; the facts do not show what the PLL register or its write does, and the facts show a4 = 0xffffffff at the spinlock call at 0x224c without saying whether that is an argument.
  Reviewed: 2026-11-12

- `odsyLoadTimingTable` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)` at 0x3320
  **Inferred.** Starts with `odsy_poll_dfifo_level` at level 0 (0x3380) and returns -1 or 0 (return at 0x33ac). It loads 32-bit fields at many offsets in the range 0x60 to 0xf0 (for example 0x80 to 0x9c at 0x3470 to 0x3488 and 0xe8 at 0x34a4) from a base register the facts do not resolve. The PLL writes at 0x4aa0, 0x4ab4 and 0x4ac8 use a1 = 0x1, 0x2 and 0x6 with byte values loaded from [a1+235], [a1+239] and [a1+243]; the facts do not show that the 32-bit fields are what gets written. It calls `odsy_i2cPLLRegWrite` 14 times and `odsy_poll_dfifo_level` 21 times, `odsy_LoadDCD2Regs` once (0x4bdc), `odsy_usdelay` once (0x3538, a1 = 0x186a0) and `bzero` twice (sizes 0x200 and 0x1000). The structure of the argument table is not identified.
  Reviewed: 2026-11-12

- `gf_OdsyCreateDDRN` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddrn.o)` at 0x54
  **Inferred.** Allocates zeroed memory with `kmem_zalloc` at 0x18c (size 0x4000) and and calls `OdsyInitCSet` (0x138), `OdsyAlloc32kSlot` (0x168), `odsyMapPages` (0x1d8, with a2 = the allocation and a3 = 0x4000) and `odsyResetHwShadow` (0x284). It takes `psema` on a0+6032 at 0x9c and calls `vsema` at 0x114 and 0x314 whose first argument the facts do not resolve (the global ODSYddrn appears as an argument to those calls). It has six `cmn_err` calls, and makes one `kmem_free` call (0x3a0, on the path where `odsyMapPages` returns nonzero). The return at 0x2cc is 0 or 1. The name indicates creation of a DDRN node; the facts give the setup calls but not the node's purpose.
  Reviewed: 2026-11-12

- `odsyGatherInfo` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0x8bc
  **Inferred.** Branches on a1 being zero or equal to 1 or 2, may make a tail call to an unresolved callee at 0x9a8, loads a word at 0xa3c and polls the DFIFO three times with `odsy_poll_dfifo_level`. The shared state is guarded by four `mutex_spinlock` calls with six `mutex_spinunlock` calls and by one `psema` and four `vsema` calls, and four `cmn_err` calls are made. The return at 0x900 is -1 or 0. Role (from name): collecting board information at init; the facts do not show what is read or which fields are stored.
  Reviewed: 2026-11-12

- `odsyFlagInterrupt` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)` at 0x11c
  **Inferred.** Reads two status words from the device block at [a0+736] (+0x1014 and +0x1034, at 0x13c and 0x140) and a halfword at 0x138. It loads a word at +0x10 of a base the facts do not resolve (0x158) and stores a word to +0x10 at 0x164 only when bit 0x200 is set in a tested status value. It calls `odsyLowaterInterrupt` at 0x16c with its four arguments passed through, then tests the status word against masks (0x2000000, 0x80000000 and further single bits); `odsyGenlockInterrupt` is called at 0x19c with a1 = 0x40000000 on the path where bits under 0xffffffff80000000 are set. Many further masks lead to 21 `cmn_err` calls (levels 4 and 5), a store at +0x101c at 0x294 and a call to `odsy_teardown` at 0x2a8. The return is either [a0+736] or the result of `odsy_teardown` (return at 0x2b8).
  Reviewed: 2026-11-12

- `odsyGenlockInterrupt` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)` at 0x5bc
  **Inferred.** Reads from the device block at [a0+736] two words (+0x233e6c at 0x604 and +0x233e64 at 0x634) and a word at a0+0x5690 at 0x61c. Bit 0x1 of the first word (test at 0x60c) selects whether this body runs; the paths then depend on bit 0x2 of that word (test at 0x654), a bit 0x40 test at 0x63c and the value of [a0+292] (tests at 0x648, 0x674, 0x738). When bit 0x2 is set it calls `cmn_err` at 0x668 and `odsy_i2cPLLRegWrite` with a1 = 0x1, 0x2 and 0x6 (0x68c, 0x69c, 0x6ac, a3 = 0x58 on the first); when that bit is clear it calls `cmn_err` at 0x72c and writes the same three register numbers at 0x750, 0x760 and 0x770 (a3 = 0x58 on the first). It also calls `rrmGenlockNotify` at 0x80c, and `odsy_i2cPLLRegWrite` with a1 = 0x0 and 0x7 at 0x868, 0x880, 0x894 and 0x8a8. The return at 0x7d8 is unresolved, the result of `vsema` or the result of `mutex_spinunlock`. Role (from name): reaction to a genlock interrupt; the facts do not identify what each register holds or what a3 = 0x58 means.
  Reviewed: 2026-11-12

- `gf_OdsySetDisplayMode` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)` at 0xb68
  **Inferred.** The rendered body is identical to the patch-4103 build at the same address (same facts line for line), so the reading in the entry above applies here. `odsyValidateBuffer` is called at 0xc98 only when the word at +0x1270 ANDed with the field at +4720 is nonzero, and `odsy_poll_dfifo_level` is polled at levels 0xf (0xb94) and 0xc (0xcec, 0xe84) with the same locks. The return values are 0x0 or 0x5 (return at 0xbc4).
  Reviewed: 2026-11-12

- `gfx_disp` in `usr/cpu/sysgen/IP30boot/gfx.o` at 0xc28
  **Inferred.** Looks up a graphics thread with `gthread_find` at 0xc30, passing its four arguments through, and checks the result and the pointer at +16 before loading a pointer at +24 and walking a list whose entries are tested for a flag bit at 0xc90 (0x8) and for a value at 0xd24 (0x4 on the word at +8). It makes an indirect call at 0xc6c and calls `valusema` at 0xd44, with a count loaded from [[thread+24]+12], and continues the list loop when its result is nonnegative. The return is 0 or 1. The facts say how the thread record is walked; they do not name the request being handled or what `valusema` is used for here.
  Reviewed: 2026-11-12

- `gfx_fault` in `usr/cpu/sysgen/IP30boot/gfx.o` at 0xd5c
  **Inferred.** Gets the current thread handle with `curthreadhandle` at 0xd6c and looks up a graphics thread with `gthread_find` at 0xd78. When the thread's pointer at +24 is zero and bit 0x1 of the word at +4 of the second argument (a1) is set it makes an indirect call at 0xdb8 with a0 = a1 and a1 = a field at +112 of the structure at [a1+32]. It calls `RRM_ValidFault` at 0xdc4 with a0 = a1 and a1 = a2, and branches on whether the result is negative. On paths where the thread's pointer at +24 is nonzero and bit 0x8 of that word is clear it calls `psema` on a1+80 at 0xe14 and `vsema` on a1+80 at 0xe24. The return at 0xe00 is 0 or 1. The name and the `RRM_ValidFault` call point to fault handling, but the facts do not show what a valid fault leads to.
  Reviewed: 2026-11-12

- `gfx_shcheck` in `usr/cpu/sysgen/IP30boot/gfx.o` at 0xfe0
  **Inferred.** Looks up a graphics thread with `gthread_find` at 0xfec. Depending on the pointer at +16 and flag bits it calls `ddv_destroy_handle` at 0x105c, then `gthread_detach_list` at 0x10a0, `gthread_detach_group` at 0x10a8, `cleargfxsched_thread` at 0x10b0 and `gthread_destroy` at 0x10b8 (a second sequence of `gthread_detach_list`, `gthread_detach_group` and `cleargfxsched_thread` at 0x11d0 to 0x11e0 and a plain `gthread_destroy` at 0x11a4 are on other paths). When the pointer at +16 is nonzero it calls `GfxListWriterLock` at 0x10dc and `GfxListWriterUnlock` at 0x1194, with an `splhi`/`splx` section around a `vsema` at 0x1164. The name suggests a shared-resource check; the facts show the teardown calls but not what condition triggers them.
  Reviewed: 2026-11-12

- `gfx_shdup` in `usr/cpu/sysgen/IP30boot/gfx.o` at 0x1234
  **Inferred.** Looks up a graphics thread with `gthread_find` at 0x1240. When the thread, its pointer at +16 and the field at +24 of that are nonzero and bit 0x8 of the word at +4 of that field is clear, it calls `gthread_create` at 0x1284 with a0 = a1 and a4 = the field at +24, and, if that returns nonzero, `gthread_attach_list` at 0x1298 with the new thread and the pointer at +16 and then `setgfxsched_thread` at 0x12a0 with a0 = a1. The return at 0x127c is one of the +16 pointer, an unresolved value, the `gthread_create` result or the `setgfxsched_thread` result. The name suggests a shared duplicate of the thread; the facts show the create-and-attach sequence but not what the fields mean.
  Reviewed: 2026-11-12

- `gfx_disp` in `usr/cpu/sysgen/IP30boot/gfxs.a(gfx.o)` at 0xc28
  **Inferred.** The rendered body is identical to the standalone `gfx.o` build at the same address, so the reading of `gfx_disp` above applies. It calls `gthread_find` at 0xc30, makes an indirect call at 0xc6c, and calls `valusema` at 0xd44. The return is 0 or 1.
  Reviewed: 2026-11-12

- `gfx_fault` in `usr/cpu/sysgen/IP30boot/gfxs.a(gfx.o)` at 0xd5c
  **Inferred.** The rendered body is identical to the standalone `gfx.o` build at the same address, so the reading of `gfx_fault` above applies. It calls `RRM_ValidFault` at 0xdc4 after `gthread_find`, and calls `psema` and `vsema` on a1+80 on the paths where bit 0x8 is clear. The return is 0 or 1.
  Reviewed: 2026-11-12

- `gfx_shcheck` in `usr/cpu/sysgen/IP30boot/gfxs.a(gfx.o)` at 0xfe0
  **Inferred.** The rendered body is identical to the standalone `gfx.o` build at the same address, so the reading of `gfx_shcheck` above applies. It calls `gthread_detach_list` at 0x10a0 and `gthread_destroy` at 0x10b8 on some paths and `GfxListWriterLock` at 0x10dc on others.
  Reviewed: 2026-11-12

- `gfx_shdup` in `usr/cpu/sysgen/IP30boot/gfxs.a(gfx.o)` at 0x1234
  **Inferred.** The rendered body is identical to the standalone `gfx.o` build at the same address, so the reading of `gfx_shdup` above applies. When its checks pass it calls `gthread_create` at 0x1284 and `gthread_attach_list` at 0x1298.
  Reviewed: 2026-11-12

- `prom_autoboot` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x2e4
  **Inferred.** Is a short routine: it calls `silence_bell` at 0x2ec, calls `prom_reinit` at 0x300 only when the global `power_off_flag` is nonzero, and then makes an indirect call at 0x314 through a pointer loaded at offset +0x30 from a pointer loaded at +0x0 (the base is not resolved), with no arguments set up in the facts. Its return at 0x320 is the value of that unnamed call. The name points to starting the PROM autoboot path, but the facts do not show what the indirect call reaches.
  Reviewed: 2026-11-12

- `rrmSuspend` in `usr/cpu/sysgen/IP30boot/rrm.o` at 0x2170
  **Inferred.** Finds the graphics thread with `gthread_find` at 0x2184 and then makes six indirect calls (0x223c, 0x230c, 0x232c, 0x238c, 0x2434, 0x24b8) that the facts do not resolve. On some paths it calls `mutex_spinunlock` at 0x22c0 and `GfxListReaderUnlock` at 0x22c8, and it calls `GfxListReaderLock` at 0x23b8 and `GfxListReaderUnlock` again at 0x2460. `splhi`/`splx` sections around a `vsema` appear, for example at 0x2374 to 0x23a8 and 0x241c to 0x2450. It also calls `cmn_err` at 0x2508. The sequence may be a graphics-resource suspend, but the individual steps are not named.
  Reviewed: 2026-11-12

- `rrmResume` in `usr/cpu/sysgen/IP30boot/rrm.o` at 0x2518
  **Inferred.** Pins the thread with `rt_pin_thread` at 0x252c, looks up a graphics thread with `gthread_find` at 0x2544, and on its paths calls `GfxListReaderUnlock` (0x2688, 0x2968) and `rt_unpin_thread` (0x2690, 0x27d8, 0x2970). It calls `GfxListReaderLock` at 0x2770 and `rrmDoUnMapGfx` at 0x27a0, 0x28c4 and 0x2918, with several unresolved indirect calls between. It also uses `mutex_spinlock`/`mutex_spinunlock`, `cpsema`, and a `splhi`/`splx` section around `vsema`. The meaning of the `rrmDoUnMapGfx` calls is not settled by the facts.
  Reviewed: 2026-11-12
