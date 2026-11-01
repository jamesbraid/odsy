# Generic graphics layer routines, one entry each (group table and locks)

Release IRIX 6.5.30m, `usr/cpu/sysgen/IP30boot/gfx.o`. The IP30 `gfxs.a(gfx.o)` member and both IP35 copies carry byte-identical code for every routine below (the code hashes in `docs/inventory/functions.tsv` agree), so each entry speaks for all four. Labels are **established** (the whole routine was read from the fact sheet and the disassembly) or **inferred**. The object has no hardware access of its own; it is the table and lock code the board drivers call.

The table lock is an 8-byte record `gfx_group_table_lock`: a word reader count at +0 and a spin lock at +4. The group table `gfx_group_table` is a pointer in the small-data area to 16 doublewords, each the head of a chain of group records. A group record is 32 bytes: the group handle at +0, a word at +8 and another at +12 (both zeroed at creation), a spin lock at +16 and the next record at +24.

- `gfxtable_readerlock` (`gfx.o`, offset 0x0, 68 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfx.o`.
  Registers a reader on a table lock (argument: the lock record). It takes the spin lock at +4 with `mutex_spinlock`, adds 1 to the word at +0 (the store sits in the delay slot of the unlock call) and releases the spin lock with the level it saved. The spin lock is held only for the count update, not for the reader's work. It returns what `mutex_spinunlock` returns.

- `gfxtable_writerlock` (`gfx.o`, offset 0x88, 128 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfx.o`.
  Takes a table lock for writing and waits for the readers to leave (argument: the lock record). It takes the spin lock at +4 and, while the reader count at +0 is above zero (a signed test), releases the spin lock, sleeps with `nano_delay` and takes it again. The delay argument is the stack address of a record with the word 0 at offset 0 and the doubleword 1000 at offset 8. When the count is zero or below it returns the saved interrupt level and still holds the spin lock, which `gfxtable_writerunlock` releases.

- `init_gfx_group_table` (`gfx.o`, offset 0x124, 100 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfx.o`.
  Creates the group table once (no arguments). It returns at once when the table pointer is already nonzero. Otherwise it calls `kern_malloc` for 128 bytes and stores the result in the pointer, then `bzero` for 128 bytes, `spinlock_init` on the lock record's +4 with the name "ggt" and zeroes the reader count. When the allocation fails it logs "Error: unable to allocate gfx_group table" through `cmn_err` with 0 as the severity and then still continues into the same `bzero` with the null pointer, because the branch after the log reloads the pointer in its delay slot; the code does not stop there. It returns what `spinlock_init` returns.

- `gfx_group_find` (`gfx.o`, offset 0x188, 184 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfx.o`.
  Looks up the group record for a thread (argument: the thread handle). It converts the handle with `threadhandle_to_threadgrouphandle` and chooses a chain from that value: the low 4 bits, and when those are zero, bits 15:12. Under `gfxtable_readerlock` it walks the chain from the table slot (8 bytes per slot) following the record's pointer at +24 until a record's handle at +0 equals the group handle, then calls `gfxtable_readerunlock` and returns the record, or null when the chain ends. The returned record is used after the lock is dropped.

- `gfx_group_create` (`gfx.o`, offset 0x240, 188 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfx.o`.
  Creates and files a group record for a thread (argument: the thread handle). It calls `kern_malloc` for 32 bytes and returns null when that fails. Otherwise it stores zero at +8, the result of `threadhandle_to_threadgrouphandle` as the handle at +0 and zero at +12, and calls `spinlock_init` on +16 with the name "ggpl". The chain is chosen as in `gfx_group_find`. Under `gfxtable_writerlock` it links the record at the front of that chain (the old head into +24, the record into the table slot) and releases the lock with `gfxtable_writerunlock`. It returns the record. Nothing checks whether a record for the same group already exists.

- `gfx_group_destroy` (`gfx.o`, offset 0x2fc, 208 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfx.o`.
  Removes a group record from its chain and frees it (argument: the record). It takes the handle at +0, chooses the chain as in `gfx_group_find` and, under `gfxtable_writerlock`, walks the chain matching on the handle, not on the pointer. It unlinks the first record with an equal handle by copying that record's next pointer into the slot or into the previous record's +24. The lock is released with `gfxtable_writerunlock`. When a record was found it calls `spinlock_destroy` on its +16 and `kern_free` on it, and returns that call's result. A handle not found frees nothing and returns what the unlock returned.

The thread table `gthread_table` is a pointer in the small-data area to 16 slots of 128 bytes. A slot holds a lock record as above (reader count at +0, spin lock at +4) and the head of a chain of thread records at +8. A thread record is 40 bytes: the thread handle at +0, a word at +8, a list pointer at +16, a group pointer at +24 (the last three zeroed at creation) and the next record at +32. Its slot is chosen by a byte hash of the handle, computed identically in every routine below that needs it: with b1, b2 and b3 the handle's bits 15:8, 23:16 and 31:24, the slot is (b3 xor 29*(b2 xor 29*b1)) and 15, where the multiplication by 29 is the sequence the code uses (x shifted left 3, minus x, shifted left 2, plus x) and the intermediate values are not masked to a byte. The record at +16 of a thread, when present, is a 32-byte list record: a word count at +0, a word at +4, a variable at +8, a spin lock at +16 and a doubleword at +24.

- `init_gthread_table` (`gfx.o`, offset 0x3cc, 160 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfx.o`.
  Creates the thread table once (no arguments). It returns at once when the pointer is already set. Otherwise it calls `kern_malloc` for 2048 bytes, stores the pointer, calls `bzero` for 2048 bytes, and for each of the 16 slots calls `spinlock_init` on slot +4 with the name "ggt" and stores 0 in the slot's reader count (the store is in the delay slot of the loop branch). An allocation failure logs "Error: unable to allocate gthread table" with `cmn_err` and 0 as the first argument and then falls through to the same `bzero` and loop with the null pointer; the code does not stop there. It returns what the last `spinlock_init` returned, or nothing defined on the early return.

- `gthread_create` (`gfx.o`, offset 0x46c, 252 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfx.o`.
  Makes a thread record and files it in the table (argument: the thread handle). It calls `kern_malloc` for 40 bytes and returns null on failure. It stores the handle at +0 and zero at +8, +16 and +24, then looks up the thread's group with `gfx_group_find`; when one exists it calls `gthread_attach_group` with the new record and the group. Under `gfxtable_writerlock` on the slot's lock record it copies the slot's chain head into +32 of the new record and stores the record as the new head, then calls `gfxtable_writerunlock`. It returns the record. No check is made for an existing record with the same handle.

- `gthread_destroy` (`gfx.o`, offset 0x568, 244 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfx.o`.
  Removes a thread record from its slot's chain and frees it (argument: the thread handle). It locks the slot with `gfxtable_writerlock`, walks the chain from +8 matching the handle at +0 and unlinks the first match through its +32 link, unlocks with `gfxtable_writerunlock`, and, when a record was found, calls `kern_free` on it and returns that call's result. A missing record returns what the unlock returned. It does not detach the record's list or group first, so a caller must have called `gthread_detach_list` and `gthread_detach_group`.

- `gthread_attach_list` (`gfx.o`, offset 0x65c, 156 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfx.o`.
  Points a thread at a list record, creating one when none is given (arguments: the thread record, a list record or null). With a list it adds 1 to the list's word count at +0, stores the list at thread +16 and returns 1. With null it calls `kern_malloc` for 32 bytes and returns 0 when that fails. A new list gets the word count 1 at +0, zero at +4 and +24, `init_sv` on +8 with 0 as the second argument, the name "glw" and -1 as the fourth, and `spinlock_init` on +16 with the name "gfxl"; it is then stored at thread +16 as above and 1 is returned.

- `gthread_detach_list` (`gfx.o`, offset 0x6f8, 84 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfx.o`.
  Drops a thread's reference to its list record (argument: the thread record). It loads the list pointer at +16, zeroes that field and subtracts 1 from the list's count at +0. When the count reaches zero it calls `spinlock_destroy` on the list's +16, `sv_destroy` on its +8 and `kern_free` on the list. It returns 1 in both cases. The pointer is loaded and used without a null test.

- `gthread_attach_group` (`gfx.o`, offset 0x74c, 92 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfx.o`.
  Joins a thread to a group record (arguments: the thread record, the group record). Under the group's spin lock at +16 it adds 1 to the group's word at +8 with the store of the incremented word in the delay slot of the unlock call; after the unlock it stores the group at thread +24. It returns 1.

- `gthread_detach_group` (`gfx.o`, offset 0x7a8, 88 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfx.o`.
  Leaves a group (argument: the thread record). It returns 0 when the pointer at +24 is zero. Otherwise it zeroes that pointer first, then under the group's spin lock at +16 subtracts 1 from the group's word at +8, unlocks and returns 1. The group record is not freed here.

- `gthread_find` (`gfx.o`, offset 0x800, 220 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfx.o`.
  Looks up a thread record by handle (argument: the handle). It hashes the handle to a slot, takes the slot's lock with `gfxtable_readerlock`, walks the chain from +8 through +32 comparing the handle at +0, calls `gfxtable_readerunlock` and returns the record or null. The record is returned after the lock is dropped.

- `gthread_find_gfxp` (`gfx.o`, offset 0x8dc, 56 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfx.o`.
  Returns the doubleword at +24 of a thread's list record (argument: the handle). It calls `gthread_find` with the handle and returns 0 when no record is found or the record's list pointer at +16 is null; otherwise the result is the doubleword at +24 of that list.

- `GfxListWriterLock` (`gfx.o`, offset 0x2a10, 120 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfx.o`.
  Takes a graphics list record's spin lock for writing and waits until its word at +4 is no longer positive (argument: the list record, whose count is at +0, spin lock at +16 and wait variable at +8). It calls `mutex_spinlock` on +16. While the signed word at +4 is above zero it calls `sv_wait` on +8 with 25 as the second argument, the lock as the third and the saved level as the fourth (the call releases the lock), then takes the lock again. It returns the saved level with the spin lock held; `GfxListWriterUnlock` releases it.

- `GfxRqService` (`gfx.o`, offset 0x1c10, 124 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfx.o`.
  Service routine of the graphics stream: it forwards queued messages to the next module (argument: the queue). It calls `getq` and returns 0 at once when nothing is queued. For each message it calls `canput` on the queue pointer at +24; when that says no, it puts the message back with `putbq` and returns 1. Otherwise it calls the function at offset 0 of the table that the first word of the next queue points to, with the next queue and the message, then calls `getq` again and loops while one is returned. It returns 0 when the queue drains.

- `irix5_to_gfx_getboardinfo_args` (`gfx.o`, offset 0x34cc, 120 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfx.o`.
  Converts the board-information request from the 32-bit argument layout to the 64-bit one, in the same two-step form as `irix5_to_RRM_GetDisplayModes`. With a zero first argument it compares the word at +0 of the fourth argument with 12, allocates 12 bytes with `kern_malloc` into +16 when that word is smaller or else copies the pointer at +8 to +16, stores 12 at +4 and returns 0. With a nonzero first argument it reads 12 bytes from the pointer at +16 and writes the second argument: the word at 0 to +0, the word at 4 zero-extended to a doubleword at +8 and the word at 8 to +16. The destination is 24 bytes. It returns 0.

- `irix5_to_gfx_attach_board_args` (`gfx.o`, offset 0x35e4, 112 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfx.o`.
  Converts the attach-board request in the same two-step form. With a zero first argument it checks the word at +0 of the fourth argument against 8, allocates 8 bytes into +16 with `kern_malloc` when it is smaller or else copies the pointer at +8 to +16, stores 8 at +4 and returns 0. With a nonzero first argument it reads 8 bytes from the pointer at +16 and writes the second argument: the word at 0 to +0 and the word at 4 zero-extended to a doubleword at +8. The destination is 16 bytes. It returns 0.

- `GfxClose` (`gfx.o`, offset 0x16d0, 108 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfx.o`.
  Closes a graphics stream (argument: the stream; its private record is the pointer at +40, called P here). It calls `GfxUnmanage` with P only when the doubleword at P+40 is zero, the pointer at P+8 is nonzero and the doubleword at +8 of the record that pointer names equals P (the loads are at 0x16dc, 0x16e8 and 0x16f4, the call at 0x172c). On every path it then clears bit 0 of the word at P+56 (mask -2, store at 0x170c), calls `gfxcleanup` with P (0x1710) and returns 0.

- `GfxWput` (`gfx.o`, offset 0x1840, 156 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfx.o`.
  Write-side message switch of the graphics stream (arguments: the queue in a0, the message in a1). It reads the byte at +30 of the record that the message's pointer at +40 names. Types 1 and 131 go to `GfxProto` with both arguments and its result is returned. Type 134 loads the pointer at message +24; when bit 1 of the byte it names is set, the routine calls `flushq` with the queue and 0, and in either case it frees the message with `freemsg` and returns 0. Any other type logs "Gfx: throwing away unknown message (db_type=%d)" through `cmn_err` at severity 4 (the string is at offset 232 of the object's small-data string table, which lands on that text in `.rodata`), passing the type, then frees the message and returns 0.

- `GfxProto` (`gfx.o`, offset 0x173c, 260 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfx.o`.
  Handles one protocol message of the graphics stream (arguments: the queue in a0, the message in a1). The request code is the word at +0 of the message's data pointer (at message +24); the queue's private record is the pointer at queue +40, called Q. Code 102 and the ASCII code "SHIQ" (0x53484951) take the same path: when the pointer at Q+32 is zero the message is freed with `freemsg` and 0 is returned; otherwise the routine calls the function at +48 of that record with the word at Q+40's pointer, and the data words at +4 and +8, and a zero result frees the message, while a nonzero result stores the byte 138 at +30 of the record at message +40 (the store is in the delay slot of the call) and answers with `qreply`. Code "SHMQ" (0x53484d51) copies the halfwords at data +4 and +6 into the halfwords at +48 and +50 of the record that Q+8 names, writes the word "QMHS" (0x514d4853) over the request code and answers with `qreply`. Any other code logs "Gfx: received a proto message of unknown type (%d)" through `cmn_err` at severity 4 (small-data string offset 176), then frees the message. Every path returns 0.

- `sendMsg` (`gfx.o`, offset 0x18dc, 256 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfx.o`.
  Queues a record of words to a graphics stream (arguments: the queue in a0, the request in a1). The request's first doubleword points to a record, called P; the pointer at P+8 names a stream record, and nothing happens unless bit 0 of that record's word at +56 is set. The word at request +12, n, sizes the message as 12 bytes per entry: the routine advances the doubleword at queue +32 by 12n, clears the 12n bytes it passed with `bzero`, stores the halfword at P+50 into the halfword at +2 of the area and n into the byte at +5. For each entry from n-1 down to 0 it then writes, at 12 bytes per entry, the halfword at P+48 to +0, the low byte of the halfword at P+50 to +4, the byte at request +8 to +6 and the request word at +16+4i to +8. It ends with `putq` on the pointer at P+32 and the queue. The routine sets no return value: both early returns and the normal return leave v0 as the caller or `putq` left it.

- `GfxDelayedMessage` (`gfx.o`, offset 0x19dc, 160 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfx.o`.
  Delivers a queued request, retrying when no buffer is free (argument: the request; its word at +12 is n). It asks `allocb` for 12n bytes at priority 3. On success it hands the buffer and the request to `sendMsg`, then calls `wakeup` and `kern_free` with the request and returns 0. On failure it registers itself with `bufcall` (12n bytes, priority 3, its own address and the request as the argument); when `bufcall` accepts it takes the branch at 0x1a34 to the return, whose delay slot `li v0,1` at 0x1a38 sets the result 1, and the request stays allocated. When `bufcall` fails it logs "gfx: out of buffers. message discarded" through `cmn_err` at severity 4 (small-data string offset 288), then wakes and frees the request and returns 0.

- `irisgl_sproc_setup_scan` (`gfx.o`, offset 0x1f28, 144 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfx.o`.
  Callback for a scan of related processes (arguments: a0 the process being set up, a1 a scan record whose doubleword at +0 is the process to skip and whose pointer at +16 is a graphics list). It returns 0 at once when a1's doubleword at +0 equals a0. Otherwise it calls `gthread_create` and returns 0 when that gives null; else it sets bit 1 (mask 2) of the word at +8 of the new thread record, takes the list's writer lock with `GfxListWriterLock` (the level is saved at 0(sp)), attaches the record with `gthread_attach_list`, releases with `GfxListWriterUnlock`, and calls `setgfxsched_thread` with a0. It returns 0 on every path.

- `irisgl_sproc_cleanup` (`gfx.o`, offset 0x2434, 104 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfx.o`.
  Undoes the per-process graphics thread set-up for one process (arguments: a0 the record, a1 a process, a2 a mode). Unless a2 is 1, it returns 0 at once. With a2 equal to 1 it also returns 0 unless the doubleword at a0+24 equals a1. When both match it calls `cleargfxsched_thread` with the doubleword at a0+0 (loaded in the delay slot of the call), then `gthread_detach_list` and `gthread_detach_group` with a0, clears bit 1 (mask -3) of the word at a0+8 and returns 0.

- `irix5_to_gfx_download_args` (`gfx.o`, offset 0x3544, 160 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfx.o`.
  Converts the download request from the 32-bit argument layout to the 64-bit one, in the same two-step form as `irix5_to_gfx_getboardinfo_args`. With a zero first argument it compares the word at +0 of the fourth argument with 32, allocates 32 bytes with `kern_malloc` into +16 when that word is smaller (the result is not tested for null) or else copies the doubleword at +8 to +16, stores 32 at +4 and returns 0. With a nonzero first argument it reads 32 bytes from the pointer at +16 and writes the second argument: the word at 0 to +0, the word at 4 zero-extended (`lwu`) to a doubleword at +8, and the words at 8, 12, 16, 20, 24 and 28 to +16, +20, +24, +28, +32 and +36. The destination is 40 bytes. It returns 0.
