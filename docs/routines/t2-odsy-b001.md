# Tier-2 routine roles, odsy batch 1

Targets 26 to 50 of the ranked located, hardware-only reading list (the list's second block of 25). The grader accepted all 25 rendered entries, so none were rejected. Every grade below is inferred: the rendered facts give offsets, callees and constants, not what the record fields or error codes mean.

- `gfx_disp` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0xc28
  **Inferred.** Calls `gthread_find` at 0xc30 and, on a found handle, walks a chain of records reached through it (loads at 0xc4c, 0xc58, 0xc7c). Tests flag bit 0x4 of the word at +8 (branch at 0xd24) and calls `valusema` at 0xd44 before returning 0 or 1 at 0xcf4. Reads as a display or dispatch helper that waits on a semaphore, but the rendered facts do not say what the records hold.

- `gfx_fault` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0xd5c
  **Inferred.** Calls `curthreadhandle` at 0xd6c and `gthread_find` at 0xd78, then tests flag bits 0x8 and 0x1 of the word at +4 of its a1 argument (branches at 0xd9c and 0xda8). On one path it calls `RRM_ValidFault` at 0xdc4, and on the 0x8 path it calls `psema` at 0xe14 on the semaphore at a1+80 and `vsema` at 0xe24. Reads as a fault handler for the graphics thread, but the callees' contracts are not in the facts.

- `gfx_shcheck` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0xfe0
  **Inferred.** Looks up the thread with `gthread_find` at 0xfec and, when a shared record at +16 is set, takes the list lock through `GfxListWriterLock` (0x10dc) and mutex calls at 0x1204 and 0x1224. On the teardown path it calls `ddv_destroy_handle` (0x105c), `gthread_detach_list` and `gthread_detach_group` (0x10a0, 0x10a8), `cleargfxsched_thread` (0x10b0) and `gthread_destroy` (0x10b8). The name suggests a share check, but the calls point at detaching and destroying the thread's graphics state, and the test that picks that path is not settled.

- `gfx_shdup` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x1234
  **Inferred.** Calls `gthread_find` at 0x1240 and, when the shared record at +16 is set and the flag at +24 allows it, creates a thread with `gthread_create` at 0x1284, attaches it to a list with `gthread_attach_list` at 0x1298 and registers it with `setgfxsched_thread` at 0x12a0. The name suggests a duplicate for a child thread; the calls fit that reading but do not prove it.

- `gfxopen` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x1fb8
  **Inferred.** Takes `GfxBoardInitSema` with `psema` at 0x1fe0, and looks up the caller's thread and group (`curthreadhandle` at 0x1fcc, `gthread_find` at 0x2084, `gfx_group_find` at 0x20dc). On the first-open path it allocates two 0x100-byte blocks with `kern_malloc` (0x2148, 0x2158), zeroes one with `bzero` (0x2174), initialises a spinlock and a semaphore at +80 (0x21a0, 0x21bc), and registers the thread (`gthread_attach_list` at 0x2224, `setgfxsched_thread` at 0x2234). Error paths report through `cmn_err_tag` with ids 0x84e and 0x84f, and the return at 0x22ec yields one of 0x0, 0x6, 0xc or 0x13. Reads as a per-board open, but what those error values mean is not settled by the facts.

- `gfxclose` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x24d0
  **Inferred.** Takes `GfxBoardInitSema` with `psema` at 0x2518 and finds the caller's thread with `gthread_find` at 0x2530. It detaches the device through `GfxDetach` at 0x2604 and runs `gfxcleanup` at 0x2720, then detaches and destroys the thread (0x26e0 to 0x26f0) under the list lock taken at 0x2624 and released at 0x2664. When the process is the owner it calls `psignal` with signal argument 0x6 at 0x275c or 0x9 at 0x2a4c, after `cmn_err` reports the process name and id (0x2a00, 0x2a38). The return values 0x0, 0x6, 0xc and 0x13 match the ones `gfxopen` returns, which suggests the two are paired.

- `prom_has_vga_support` in `usr/cpu/sysgen/IP35boot/gfxs.a(klconfig.o)` at 0x330
  **Inferred.** Loads two words from the fixed addresses 0x90000000180000a0 and 0x90000000180000a4 (0x338, 0x33c). It returns 1 at 0x354 only when the first word is at least 6 (unsigned, branch at 0x344) and the second is zero (branch at 0x34c), and returns 0 at 0x360 otherwise. The meaning of those two words is not in the facts, so the VGA reading comes from the routine name alone.

- `klcheck_vga` in `usr/cpu/sysgen/IP35boot/gfxs.a(klconfig.o)` at 0xafc
  **Inferred.** Computes a byte address as a0 + (a1 << 12) + (a2 << 8) and reads a word at +0x20008 (`lw` at 0xb14) and a byte at +0x20007 (`lbu` at 0xb40). It compares a6 with 3 (branch at 0xb24) and a5 with 0 (branch at 0xb2c), stores the byte at +0x20007 back on one path (`sb` at 0xb4c) after masking it with 0xfc (`andi` at 0xb44, which clears its low two bits), and returns 0 at 0xb38 or the computed address plus 0x20000 at 0xb48. The fields it reads are not identified by the facts.

- `gfx_disp` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0xc28
  **Inferred.** Same code as the `gfx.o` copy in this batch: calls `gthread_find` at 0xc30, walks the record chain reached through it, tests bit 0x4 at +8 and calls `valusema` at 0xd44 before returning 0 or 1. The rendered facts do not say what the records hold.

- `gfx_fault` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0xd5c
  **Inferred.** Same code as the `gfx.o` copy: calls `curthreadhandle` at 0xd6c and `gthread_find` at 0xd78, tests bits 0x8 and 0x1 of +4 of a1, calls `RRM_ValidFault` at 0xdc4 and uses `psema` and `vsema` on the semaphore at a1+80. The callees' contracts are not in the facts.

- `gfx_shcheck` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0xfe0
  **Inferred.** Same code as the `gfx.o` copy: `gthread_find` at 0xfec, list lock through `GfxListWriterLock` at 0x10dc, teardown through `gthread_detach_list`, `gthread_detach_group`, `cleargfxsched_thread` and `gthread_destroy` at 0x10a0 to 0x10b8. The share-check name is not confirmed by the facts.

- `gfx_shdup` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x1234
  **Inferred.** Same code as the `gfx.o` copy: `gthread_find` at 0x1240, then `gthread_create` at 0x1284, `gthread_attach_list` at 0x1298 and `setgfxsched_thread` at 0x12a0 on the shared-record path. The duplicate-for-child reading is inferred from the calls.

- `gfxopen` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x1fb8
  **Inferred.** Same code as the `gfx.o` copy: `psema` on `GfxBoardInitSema` at 0x1fe0, two 0x100-byte `kern_malloc` blocks (0x2148, 0x2158), spinlock and semaphore setup at 0x21a0 and 0x21bc, thread registration at 0x2224 and 0x2234, and `cmn_err_tag` error reports with ids 0x84e and 0x84f. The meaning of the return values is not settled.

- `gfxclose` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x24d0
  **Inferred.** Same code as the `gfx.o` copy: `psema` at 0x2518, `GfxDetach` at 0x2604, `gfxcleanup` at 0x2720, thread detach and destroy at 0x26e0 to 0x26f0, and `psignal` with 0x6 or 0x9 on the owner path. The purpose of each path is inferred from the callees.

- `VEC_int` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x0
  **Inferred.** Saves state from a0 into the per-CPU area (loads at 0x70 to 0x1a0, the frame at +0x0 to +0x120) and calls `intr` at 0x18 first. Its exits are `uli_setasids` (0x5c), `tfi_restore` (0x6c), `ktimer_switch` (0x124, 0x150), and jumps to `backtouser` (0x10c), `soft_trap` (0x138), `resumeidle` (0x198) and `exception_leave` (0x1fc), with `kpswtch` at 0x1dc. Reads as the kernel's interrupt and trap entry, though the choice among its exits is not settled by the facts.

- `tfp_special_int_exit` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x30
  **Inferred.** Covers the same tail as `VEC_int` from 0x30 on: it reads the saved frame, calls `uli_setasids` (0x5c), `tfi_restore` (0x6c) and `ktimer_switch` (0x124, 0x150), then leaves through `backtouser` (0x10c), `soft_trap` (0x138) or `resumeidle` (0x198). The name suggests an exit after a special interrupt; the facts do not show which flags pick each exit.

- `kpreemption` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1dc
  **Inferred.** Calls `kpswtch` at 0x1dc with its four arguments and then jumps to `exception_leave` at 0x1fc. The instructions from 0x204 to 0x228 are not reached from the entry, so the rest of the range is not described.

- `arcs_write` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22c
  **Inferred.** Console write for the ARCS interface. It calls `he_arcs_write` at 0x260 and `ioc_console_write` at 0x288, uses `in_panic_mode` (0x290) and `brl1_port_ready` (0x2a0) to pick between them, and takes `brl1_port` with `du_down_write` at 0x2b4 on one path. The indirect call at 0x2d0 goes through the pointer loaded from 0xa800000000001040 at +0xd8 (0x2cc). The exact selection rules are not settled by the facts.

- `arcs_load` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e0
  **Inferred.** Loads the pointer at 0xa800000000001040 and calls through its word at +0x0 (indirect call at 0x30c), passing the four arguments unchanged. On the failure path it reports through `cmn_err` at 0x324. Reads as a thin wrapper over a firmware call vector, which the facts do not confirm.

- `prom_reinit` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x35c
  **Inferred.** Calls `get_elsc` at 0x36c, passes its result to `elsc_pwr_off` at 0x374, and then calls `he_arcs_restart` at 0x384 with its arguments. The rendered facts show a branch at 0x37c that targets itself, so the path after that point is not settled.

- `arcs_setuproot` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x398
  **Inferred.** Looks up a boot option with `kopt_find` at 0x3a4, converts the value with `arcs_to_dsk` at 0x3b4 into a 32-byte buffer at sp-32, and stores the result with `kopt_set` at 0x3c8 under a `.rodata` key. Returns the result of one of those three calls. The option name is not in the facts.

- `arcs_to_dsk` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3dc
  **Inferred.** Parses a device string: it locates parentheses and commas with `strchr` (0x438, 0x45c, 0x51c, 0x548), matches fixed prefixes against `.rodata` strings with `strncmp` (0x3fc, 0x498, 0x4b4, 0x4cc), reads numbers with `atoi` (0x4dc, 0x50c, 0x538, 0x564, 0x5e4, 0x5f4), and formats output with `sprintf` at 0x59c. Returns 0 or 1 at 0x5cc. The name suggests an ARCS path-to-disk conversion, but the string format is not settled by the facts.

- `exception_exit` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x630
  **Inferred.** Saves the register set into a frame at offsets 0x0 to 0x128 from a base pointer (stores at 0x658 to 0x720), reads the trap word at abs 0xffffffffffffd00c, calls `getpc` at 0x648 and copies the frame with `bcopy` at 0x760. It then reloads the same frame (loads at 0x7c0 to 0x82c) and leaves through `backtouser` (0x888), `soft_trap` (0x898) or `tfi_restore` (0x8a0). The fields of the frame are not named by the facts.

- `exception_leave` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x8a0
  **Inferred.** Restores the saved register state through 21 doubleword loads (0x8a8 onward) and tail-calls `tfi_restore` at 0x8a0 with its four arguments. Mostly a register-restore tail; nothing in the facts describes a result.

- `unmaptlb` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x910
  **Inferred.** Reads a halfword at abs 0xffffffffffffc428 (0x924) and a byte from a table indexed by a0 (0x92c), then returns 0 or an unknown value at 0x980. It makes no calls. The name suggests a TLB unmap, but no TLB instruction appears in the rendered facts, so that reading is unconfirmed.
