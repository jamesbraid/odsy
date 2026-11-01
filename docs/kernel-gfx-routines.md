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
