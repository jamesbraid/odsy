# Resource-manager routines, one entry each (masks, validation and waits)

Release IRIX 6.5.30m, `usr/cpu/sysgen/IP30boot/rrm.o`. The pane table and set-up routines at the start of the same object are in [kernel-rrm-panes.md](kernel-rrm-panes.md). Labels are **established** (the whole routine was read from the fact sheet and the disassembly of the build the entry names) or **inferred**. Offsets are bytes into the argument record as the code addresses them; where an entry says "the node" it means the first or second argument as stated, and no field name is claimed beyond what the code proves. The `STREAM` routines are callbacks: the pointers to them sit in the object's small-data table (relocations at small-data offsets 0x28 and 0x30), and the plain routines of the same name schedule them with `streams_timeout`.

- `rrmGetResourceMask` (`rrm.o`, offset 0x2168, 8 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/rrm.o`.
  Returns the unsigned halfword at +4 of its argument, the node's current resource-mask word. It is a return with the load in the delay slot and touches nothing else.

- `rrmValidateBuffer` (`rrm.o`, offset 0x2abc, 68 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/rrm.o`.
  Revalidates a node's buffer through the pane layer, first updating a counter in the record at +120 (argument: the node). It takes the manager object from +72 of the argument; when that object's word at +160 is nonzero it adds its word at +164 to the word at +24 of the record that the argument's pointer at +120 names and stores the sum at +28 of that record. It then calls `validate_pane_buffer` with the pointer at +120 (loaded in the delay slot) and the pointer at +64, and returns that call's result.

- `rrmValidateMGRSwapBufSTREAM` (`rrm.o`, offset 0x4044, 76 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/rrm.o`.
  Callback that posts a buffer-swap validation message to a graphics-message sink (arguments: record, swap value). It does nothing when the first argument is null or the pointer at +8 of it is null. Otherwise it builds a message at the start of its own stack frame and calls `GfxIntrMessage` with it. The stores, in issue order, are: zero at message offset 24, zero at 20, the swap value (second argument) at 16, the word 3 at 12, the byte 9 at 8 and the pointer taken from +8 of the first argument at message offset 0 (in the delay slot of the call). It sets no return value of its own, on any path.

- `rrmValidateMGRSwapBuf` (`rrm.o`, offset 0x4090, 72 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/rrm.o`.
  Defers the same notification to the streams timer (arguments: record, swap value). With a null first argument or a null pointer at +8 of it it returns at once. Otherwise it calls `streams_timeout` with the address of `streams_monp`, the callback `rrmValidateMGRSwapBufSTREAM`, the constant -100 as its third argument, the record as the callback argument, the swap value zero-extended from its low 32 bits (formed with `dsll32` and `dsrl32` in the delay slot) and a final argument of 0. The return value of `streams_timeout` is returned.

- `rrmGenlockNotifySTREAM` (`rrm.o`, offset 0x40d8, 72 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/rrm.o`.
  Callback that posts a genlock event message to the same sink (arguments: record, got-or-lost flag). It returns without a message when the first argument is null or the pointer at +8 of it is null. Otherwise the message on its stack takes, in issue order, the flag at message offset 20, zero at 16, the word 2 at 12, the byte 12 at 8 and the pointer from +8 of the first argument at message offset 0 (delay slot), and `GfxIntrMessage` is called with it. Against `rrmValidateMGRSwapBufSTREAM` the type byte (message offset 8) is 12 instead of 9, the word at message offset 12 is 2 instead of 3, the flag goes to message offset 20 with zero at 16, and nothing is stored at 24. It sets no return value of its own.

- `rrmGenlockNotify` (`rrm.o`, offset 0x4120, 72 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/rrm.o`.
  Schedules the genlock callback on the streams timer (arguments: record, got-or-lost flag). It is `rrmValidateMGRSwapBuf` with the other callback: the same null checks on the argument and the pointer at +8, then `streams_timeout` with `streams_monp`, `rrmGenlockNotifySTREAM`, -100, the record, the flag zero-extended from 32 bits and 0, returning that call's result. The IP30 driver's genlock clock-update routine calls it with the record's first word and 1 for got or 0 for lost (see `docs/driver-functions.md`).

- `RRM_CheckValidFault` (`rrm.o`, offset 0x36d8, 96 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/rrm.o`.
  Decides whether a request may proceed to the fault check (argument: the request). It reads the flag word at +4. Only when flag bit 2 (mask 4) is clear does it load the doubleword at +8 of the object that the doubleword at +8 of the request points to, and it returns -1 when that value is zero. Every other case continues: flag bit 0 (mask 1) set returns 0 without more work, and flag bit 0 clear calls `RRM_ValidFault` with the request and 0 (set in the delay slot). A negative result of that call returns -1, any other returns 0. The four exits are -1 (word zero), 0 (bit 0 set), 0 (fault check not negative) and -1 (fault check negative).

- `rrmValidateRetrace` (`rrm.o`, offset 0x2e4c, 80 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/rrm.o`.
  Marks a node's retrace as validated and wakes its waiter (argument: the node). It takes the spin lock at +104 with `mutex_spinlock`, sets bit 4 (0x10) of the halfword at +6, calls `sv_signal` on the variable at +48 (the store of the halfword sits in the delay slot of that call) and releases the lock with the saved level. It returns what `mutex_spinunlock` returns.

- `rrmValidateMyRetrace` (`rrm.o`, offset 0x2dd4, 120 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/rrm.o`.
  Blocks the caller until its retrace has been validated (arguments: unused first argument, the node). It takes the spin lock at +104. The test is the halfwords at +4 and +6: with E the halfword at +4 and V the one at +6, it waits only when bit 4 (0x10) of E & (V xor E) is set, that is when the bit is wanted in +4 and not yet set in +6. Waiting is `sv_wait` on the variable at +48 with 25 as the second argument, the lock address as the third and the saved level as the fourth (the call releases the lock). Without a wait it calls `mutex_spinunlock`. Both paths return 0.

- `rrmSetResourceMask` (`rrm.o`, offset 0x29b4, 192 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/rrm.o`.
  Changes the resource mask of a node and drops the board mapping if a resource is gained that is not currently valid (arguments: the caller's node, the target node, the new mask). Under the spin lock at +104 of the target it reads the halfword at +4 (old mask) and the one at +6; when bit 1 (mask 2) of the old mask is set it ORs the result of `pane_validmask`, called with the pointer at +120 of the target, into the +6 value. It unlocks, then computes the bits that are in the new mask and not the old and, of those, the ones missing from the +6 value; if any remain it calls `rrmUnMapGfx` with the caller's node. It takes the lock again, stores the new mask as a halfword at +4, unlocks and returns what `mutex_spinunlock` returns.
