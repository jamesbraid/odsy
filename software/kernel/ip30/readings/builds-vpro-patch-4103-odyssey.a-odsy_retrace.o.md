# Readings: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`

One entry per routine, filed here from the reading batches by binary.

- `gf_OdsySetDisplayMode` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)` at 0xb68
  **Inferred.** Loads a record pointer from [a0+32] (load at 0xb74) and tests a word at +0x5720 of it. It polls `odsy_poll_dfifo_level` at level 0xf (0xb94) and tests the result at 0xba8; a return of 0x0 or 0x5 is at 0xbc4. On the path through 0xc34 it takes `mutex_lock` on +4664, compares the word at +0x1250 at 0xc3c and, when the compared values differ, stores a word to +0x1250 at 0xc70 (when a pointer tested at 0xc6c is also nonzero). It calls `odsyValidateBuffer` at 0xc98 only when the word at +0x1270 (0xc78) ANDed with the field at +4720 is nonzero, with the record pointer, a1, a field at +4720 and a field at +4688, and then store a word to +0x1270. A doubleword store at +0x400000 (0xc14, base register not resolved) comes earlier in address order. Further `odsy_poll_dfifo_level` calls (levels 0xc at 0xcec and 0xe84) sit among spinlock calls on +10272 and `vsema`/`psema` on +10256. The name says it sets the mode; the facts show validation, locking and stores but not what the fields stored to the record mean.
  Reviewed: 2026-11-12

## `gf_OdsyFrsInstall` at `0x11dc`
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
  Range: 0x11dc-0x11e4 (8 bytes).
  It occupies 8 bytes.
  The return at 0x11dc has v0 = 0x0.

## `gf_OdsyFrsUninstall` at `0x11e4`
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
  Range: 0x11e4-0x11ec (8 bytes).
  It occupies 8 bytes.
  The return at 0x11e4 has v0 = 0x0.
