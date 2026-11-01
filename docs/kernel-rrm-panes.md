# Resource-manager routines, one entry each (panes, set-up and teardown)

Release IRIX 6.5.30m, the pane table code and the set-up and teardown routines at the start of `rrm.o` in the IP35 kernel build (`usr/cpu/sysgen/IP35boot/rrm.o`). The IP30 build (`usr/cpu/sysgen/IP30boot/rrm.o`) has the same routines with identical code (the code hashes in `docs/inventory/functions.tsv` agree for all of them but `pane_gc`, the first routine of the object, which has no hash and is written out for both builds). Labels are **established** (the whole routine was read from the disassembly and the decompiled listing) or **inferred**. A function-pointer table in the data of this object and the callers in `odsy_clip.o` and `RRM_Dispatch` decide who reaches each routine; this page records only what each routine does.

A pane is the resource manager's record of one drawable that a process has bound a clip region to. The table is `rrm_pane`, an array of `max_pane` records of 184 bytes each (the first slot of the small-data table points to a 16-byte free-slot list and its semaphore `panesema`; the second slot points to the table). A record holds: +0 a halfword reuse count and +2 its own index; +4 the drawable id (0 when the pane is free); +8 a word version counter that every change of the clip bumps; +12 a halfword of valid bits (bit 1 clip loaded, bit 2 buffer valid, bit 3 swap id set, bit 6 and bit 7 set by the same paths, **inferred** as buffer-select validity), +14 a halfword of waiter bits (the same positions, one per kind of wait); +16 a halfword reference count; +18 a halfword that the front/back exchange toggles; +20 a word naming the swap id; +32 a word copy of the request flags; +40 a semaphore, +56 a word it guards, +64 and +72 two synchronisation variables, +80 a spin lock; +88 the key of the owning process or resource (the word at +40 of the caller's resource node); +96 a 64-byte copy of the clip request; +128 a pointer to a 224-byte kernel copy of the clip rectangles; +160 a swap-group pointer. The offsets are read from the code; the names of the fields are the readings above.


- `pane_gc` (`rrm.o`, offset 0x0, 376 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Refills the list of free pane slots (no arguments). Followed through both scan loops. The free list holds up to 8 halfword slot numbers; the scan starts at the saved start index (word at small-data +8), walks the records up to `max_pane`, and records every index whose reference count at +16 is zero until 8 are found. If the end of the table is reached first it scans again from index 0 to the start index. The new start index is the last index examined plus one when that is below `max_pane` minus 2 and 0 otherwise, and the number of slots found is stored as a halfword at small-data +4.

- `pane_gc` (`rrm.o`, offset 0x0, 376 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/rrm.o`.
  Free-slot scan of the IP30 build (no arguments; the first routine of the object, so it has no code hash and needs this entry of its own). Its two loops, its limit of 8 slots, its use of the saved start index and its closing stores of that index and the count are the ones described for the IP35 build, instruction for instruction; the two listings are textually identical.

- `bind_pane` (`rrm.o`, offset 0x178, 468 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Finds or creates the pane for a drawable id and takes a reference (arguments: resource node, drawable id). It holds `panesema` throughout. A pane whose id at +4 equals the argument and whose owner key at +88 equals the node's key at +40 is reused. Otherwise it calls `pane_gc` when the free list is empty, pops a slot index, and initialises that record: index at +2, reuse count at +0 plus one, +18 and +12 cleared, version +8 set to 1, id and owner stored. It then removes the slot from the free list wherever it still appears, so a reused slot cannot be handed out again. The reference count at +16 goes up by one; when it was 0, valid bit 2 is set, and bit 7 is set in all cases. It releases the semaphore and returns the pane.

- `unbind_pane` (`rrm.o`, offset 0x34c, 72 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Drops one reference to a pane (argument: the pane). Under `panesema` it decrements the halfword at +16 and releases. The record stays in the table with its id and flags; `pane_gc` later reclaims it when the count is zero.

- `clip2pane` (`rrm.o`, offset 0x394, 116 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Looks a pane up from a drawable id and a resource node (arguments: id, node). It walks the records from index 0 to `max_pane` and returns the first whose id at +4 equals the id and whose owner key at +88 equals the node's key at +40, or null. There is no lock; callers hold `panesema` or tolerate a stale answer.

- `pane_cleanup` (`rrm.o`, offset 0x408, 180 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Unbinds a drawable from its pane for good (arguments: id, node). It finds the pane with `clip2pane` and does nothing when there is none. Under `panesema` and the pane's spin lock it zeroes the id at +4, clears valid bits 1, 3 and 6 (mask 0x4a), and, when any waiter bit is set, zeroes the waiter halfword and the guarded word at +56, releases the semaphore at +40 and wakes the waiters with `sv_signal`. When the swap-group pointer at +160 is nonzero it calls `rrmSwapUnGroup` for the pane. It releases `panesema` last.

- `pane_setnullclip` (`rrm.o`, offset 0x4bc, 72 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Installs an empty clip for a pane (arguments: pane, resource node). It calls the function at offset 88 of the table that the node's word at +32 points to, with the address of the pane's clip copy at +96 as its only argument, then sets valid bits 1, 3, 6 and 7 (mask 0xca) and increments the version at +8. It takes no lock.

- `pane_validmask` (`rrm.o`, offset 0x504, 8 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Reports which pieces of a pane are valid: it returns the halfword at +12 of its argument.

- `invalidate_pane` (`rrm.o`, offset 0x50c, 140 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Clears valid bits of one pane and reports what was set (arguments: bit mask, id, node). A mask with bit 1 also gets bit 6 added. With a pane found by `clip2pane` it reads the valid halfword at +12 under the pane's spin lock, clears the mask bits and returns the value it read before clearing; without one it returns 0.

- `invalidate_pane_buffer` (`rrm.o`, offset 0x598, 124 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Clears valid bits of one pane without reporting them (arguments: bit mask, id, node). Bit 1 in the mask pulls in bit 6 as in `invalidate_pane`. When `clip2pane` finds the pane it clears the mask bits in the halfword at +12 under the spin lock at +80. It always returns 0.

- `validate_pane_clip` (`rrm.o`, offset 0x614, 452 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Loads a clip request into a pane (arguments: id, node, request block). Followed through the allocation, the copy-in and both flag branches. With no pane it returns 0. A pane without a rectangle buffer gets 224 bytes from `kern_malloc` stored at +128. When the request's pointer at +32 is nonzero, its count at +24 times 16 gives the bytes to copy in with `copyin` into that buffer; more than 224 bytes is cut to 14 rectangles, and a failed copy logs "validate_pane_clip: copyin botch" with `cmn_err` and returns 14.
  Under the spin lock it takes the request flag word at +56: a pane whose valid bit 3 is set keeps its own toggle at +18, so bit 2 of the word is rewritten from it; any other pane takes bit 2 of the word into +18. The word is stored at +32, the request's pointer at +32 is replaced by the pane's buffer, and the 64 request bytes are copied to +96. The version at +8 is incremented. A pane whose bit 1 was already set is then left as it was; otherwise bits 1 and 6 are set, and when waiter bit 1 was set it is cleared and, if no other waiter bit remains, the guarded word at +56 is zeroed and the semaphore at +40 released, and the waiters are signalled. It returns 0.

- `validate_pane_swapbuf` (`rrm.o`, offset 0x7d8, 160 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Records a swap id on a pane (arguments: id, node, swap id). With a pane found by `clip2pane`, under its spin lock it stores the id at +20, sets valid bit 3 and, when waiter bit 3 was set, clears it and, if no waiter remains, zeroes the guarded word at +56 and releases the semaphore at +40; then it signals the waiters with `sv_signal`. It returns 0 whether or not a pane was found.

- `validate_pane_buffer` (`rrm.o`, offset 0x878, 80 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Marks a pane's buffer valid and wakes everything waiting for it (argument: the pane). Under the spin lock at +80 it sets bit 2 of the halfword at +12 and calls `sv_broadcast` on the variable at +72.

- `validate_my_pane_buffer` (`rrm.o`, offset 0x8c8, 180 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Waits until a pane's buffer is valid (arguments: pane, wanted bits). Under the spin lock at +80, if the wanted bits include bit 2 and the pane's bit 2 is clear, it blocks interruptibly: `hold_nonfatalsig`, `sv_wait_sig` on the variable at +72 (which drops the lock), then `release_nonfatalsig`; a wait that ends below zero returns -1. Otherwise it unlocks and returns 0.

- `validate_my_pane_resources` (`rrm.o`, offset 0x97c, 1096 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Makes the calling process wait until its pane has a valid clip and swap id (arguments: pane, resource node, wanted bits). All three wait paths and every exit were followed. With none of the bits 1, 2, 3 and 7 wanted (mask 0x8e) it returns 0. It first calls `validate_my_pane_buffer` and returns -1 if that fails. Under the pane's spin lock it sets valid bit 7 and works out which of the wanted clip (bit 1) and swap-id (bit 3) bits are still missing; none missing returns 0, and a pane whose recorded waiter at +56 is already this node returns -1.
  A pane whose id has been cleared to 0 while the word at +8 of the object at node +8 (the board's recorded node, **inferred**) names another node, with the clip wanted, has lost its drawable. If the node's flag word has bit 3 set it installs an empty clip with `pane_setnullclip` and returns 0; otherwise it logs "lost clipid - killing process" with `cmn_err_tag` (three variants, numbered 1 to 3, one per wait stage), sends signal 9 to the current process with `psignal` and returns -1. Otherwise it tries the pane's semaphore at +40 with `cpsema`; failing that it drops the lock and blocks in `psema` with signals held, then repeats the missing-bit test. With the semaphore held it stores the missing bits as the waiter mask at +14 and the node at +56, and returns -2 when the word at +8 of the object at node +8 is zero. Else it posts a message with `GfxMessage` naming the board, a request word with bit 0 for a missing clip and bit 1 for a missing swap id, a count of 1 and the drawable id, and waits on the variable at +64 with `sv_wait_sig` until the waiter bits clear or another node takes the slot, rechecking for a lost clip each round; an interrupted wait returns -1, success 0. It releases the pane's semaphore with `vsema` on the success exit and on the lost-clip exit that installs an empty clip.

- `init_panes` (`rrm.o`, offset 0xdc4, 224 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Creates the synchronisation objects of the pane table (no arguments). It initialises `panesema` with `init_sema` (count 1), then for each of the `max_pane` records it initialises the semaphore at +40 (count 1), the variables at +64 and +72 with `init_sv` and the spin lock at +80 with `spinlock_init`. Each object gets its own name string from the object's read-only data (".p_sema", ".p_wait", ".p_bwait", ".p_lock").

- `RRM_init_panes` (`rrm.o`, offset 0xea4, 216 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Releases every pane that belongs to one resource node (argument: the node). It walks all `max_pane` records and, for each whose owner key at +88 equals the node's key at +40, clears the valid halfword at +12; when waiter bits are set it zeroes the waiter halfword and the guarded word at +56 and releases the semaphore at +40; and when the swap-group pointer at +160 is nonzero it calls `rrmSwapUnGroup` with the node and the pane. Panes of other nodes are not touched.

- `RRM_init` (`rrm.o`, offset 0xf7c, 172 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/rrm.o`.
  One-time set-up of the resource manager (no arguments). For node numbers 1 to `rrm_maxrn` minus 1 it stores the byte 1 at offset 82 of the 176-byte node record in `RRMrn` and initialises the call semaphore `RRMcall_sema` slot of that number (16 bytes each) with count 1. It then calls `init_panes` and stores `rrm_maxrn` into `max_pane`, so the pane table has one record per node slot. Node 0 is skipped.

- `RRM_Init` (`rrm.o`, offset 0x1028, 72 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Initialises the locks of one board manager object (argument: the object). It calls `spinlock_init` on the word at +48 with the name "bdatalock" and `init_sema` on the semaphore at +56 with count 1 and the name "gfxsema", the semaphore that `rrmInvalidateRN` takes.

- `rrmDoUnMapGfx` (`rrm.o`, offset 0x1070, 100 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Unmaps the board's graphics window from a node's process (argument: the node). At raised interrupt level (`splhi`) it sets bit 4 of the node's flag word at +4, calls the function at offset 104 of the board table that the node's pointer at +32 names, passing the node, clears the bit and restores the level with `splx`. The flag marks the unmap as in progress for anything that looks at the node meanwhile.

- `rrmUnMapGfx` (`rrm.o`, offset 0x10d4, 148 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Unmaps the graphics window, locking the calling thread's process first when it is not the node's own (argument: the node). When the node has no mapping record at +96 or its flag bit 3 is set it calls `rrmDoUnMapGfx` directly. Otherwise it finds the calling thread with `gthread_find` of `curthreadhandle`; when that thread has a process pointer at +16 it takes the lock at offset 16 of that process with `mutex_spinlock`, calls `rrmDoUnMapGfx` and releases the lock. With no thread or no process it does nothing.

- `rrmInvalidateRN` (`rrm.o`, offset 0x1168, 192 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Takes ownership of the board for one node and clears bits in another's valid word (arguments: node, owner node, bit mask). When the manager object that the node's pointer at +40 names does not already record this node at +72 it takes the graphics semaphore at +56 with `psema`, records the node, and waits in 2-microsecond `us_delay` steps until the busy count at +104 reaches zero. Then, under the spin lock at +104 of the owner node, it clears the mask bits in the halfword at +6 and returns -2 when any requested bit was already clear and 0 when all were set. The caller `RRM_InvalidateRN` passes the owner recorded in the manager and the mask 0x10.
