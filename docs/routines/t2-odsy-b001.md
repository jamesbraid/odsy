# Tier-2 routine roles, odsy batch 1

Targets 26 to 50 of the ranked located, hardware-only reading list (the list's second block of 25). The grader accepted all 25 rendered entries, so none were rejected. Every grade below is inferred: the rendered facts give offsets, callees and constants, not what the record fields or error codes mean.

- `gfx_disp` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0xc28
  **Inferred.** Calls `gthread_find` at 0xc30 and walks a chain of records reached through its result (loads at 0xc4c, 0xc58, 0xc7c). On one path it tests flag bit 0x4 of the word at +8 of the found handle (branch at 0xd24) and calls `valusema` at 0xd44, then branches on the sign of its result (0xd4c). It returns 0 or 1 at 0xcf4. Role (from name): a display or dispatch helper. The facts do not show what `valusema` is used for or what the records hold.
  Reviewed: 2026-11-12 (sonnet)

- `gfx_fault` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0xd5c
  **Inferred.** Calls `curthreadhandle` at 0xd6c and `gthread_find` at 0xd78, then tests flag bits 0x8 and 0x1 of the word at +4 of its a1 argument (branches at 0xd9c and 0xda8). When bit 0x1 is clear it calls `RRM_ValidFault` at 0xdc4 with a0 = a1 and a1 = a2 at entry. When bit 0x8 is clear it calls `psema` at 0xe14 with a0 = a1+80 and a1 = 0x19, and `vsema` at 0xe24 with a0 = a1+80. Role (from name): a fault handler for the graphics thread. The callees' contracts are not in the facts.
  Reviewed: 2026-11-12 (sonnet)

- `gfx_shcheck` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0xfe0
  **Inferred.** Looks up the thread with `gthread_find` at 0xfec and, when a shared record at +16 is set, takes the list lock through `GfxListWriterLock` (0x10dc) and mutex calls at 0x1204 and 0x1224. On the teardown path it calls `ddv_destroy_handle` (0x105c), `gthread_detach_list` and `gthread_detach_group` (0x10a0, 0x10a8), `cleargfxsched_thread` (0x10b0) and `gthread_destroy` (0x10b8). The name suggests a share check, but the calls point at detaching and destroying the thread's graphics state, and the test that picks that path is not settled.
  Reviewed: 2026-11-12 (sonnet)

- `gfx_shdup` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x1234
  **Inferred.** Calls `gthread_find` at 0x1240. Three branches (0x1254, 0x1260, 0x1270) guard `gthread_create` at 0x1284: it is reached past the early return when the record at +16 of the found handle and the pointer at +24 of that record are both nonzero, and bit 0x8 of the word at +4 of what that pointer names is clear. If the create call returns nonzero it calls `gthread_attach_list` at 0x1298 and then `setgfxsched_thread` at 0x12a0 with a0 = its a1 argument at entry. Role (from name): a duplicate for a child thread. The calls fit that reading but do not prove it.
  Reviewed: 2026-11-12 (sonnet)

- `gfxopen` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x1fb8
  **Inferred.** Takes `GfxBoardInitSema` with `psema` at 0x1fe0, and looks up the caller's thread and group (`curthreadhandle` at 0x1fcc, `gthread_find` at 0x2084, `gfx_group_find` at 0x20dc, `gthread_find_gfxp` at 0x20e8). It allocates a 0x100-byte block with `kern_malloc` at 0x2158, and a second one at 0x2148 only when `gthread_find_gfxp` returned zero (branch at 0x2140). It zeroes a block with `bzero` (0x2174), initialises a spinlock at the block and a semaphore at +80 (0x21a0, 0x21bc), and registers the thread through `gthread_attach_list` (0x2224 or 0x23d4) and `setgfxsched_thread` (0x2234). Error paths report through `cmn_err_tag` with ids 0x84e and 0x84f, and the return at 0x22ec yields one of 0x0, 0x6, 0xc or 0x13. Role (from name): a per-board open. What those error values mean is not settled by the facts.
  Reviewed: 2026-11-12 (sonnet)

- `gfxclose` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x24d0
  **Inferred.** Takes `GfxBoardInitSema` with `psema` at 0x2518 (skipped when the word the branch at 0x2508 tests equals 0x20000) and finds the caller's thread with `gthread_find` at 0x2530. It calls `GfxDetach` on the `GfxDev` entry at 0x2604, takes the list lock at 0x2624 and releases it at 0x2664, and calls `freesema` on GfxDev+80 at 0x266c. Later, after `splhi` at 0x2694, it calls `gthread_detach_list`, `gthread_detach_group` and `gthread_destroy` at 0x26e0 to 0x26f0, then `streams_lock`, `gfxcleanup` on GfxDev at 0x2720 and `streams_unlock`. `psignal` runs on `curproc` with signal 0x6 at 0x275c when the flag the branch at 0x2748 tests is nonzero. Another path calls `cmn_err` twice (0x2a00, 0x2a38, with a process name and id each) and then `psignal` with 0x9 at 0x2a4c on the process of a thread handle. The return at 0x2594 yields one of 0x0, 0x6, 0xc or 0x13, the same values `gfxopen` can return, which suggests but does not prove that the two are paired.
  Reviewed: 2026-11-12 (sonnet)

- `prom_has_vga_support` in `usr/cpu/sysgen/IP35boot/gfxs.a(klconfig.o)` at 0x330
  **Inferred.** Loads a word from the fixed address 0x90000000180000a0 (0x338) and a second word at 0x33c whose address the facts do not render. It returns 1 at 0x354 only when the first word is at least 6 (unsigned, branch at 0x344) and the second tests as zero (branch at 0x34c), and returns 0 at 0x360 otherwise. Role (from name): reports VGA support. The meaning of the two words is not in the facts.
  Reviewed: 2026-11-12 (sonnet)

- `klcheck_vga` in `usr/cpu/sysgen/IP35boot/gfxs.a(klconfig.o)` at 0xafc
  **Inferred.** Computes a byte address as a0 + (a1 << 12) + (a2 << 8). It loads a word at +0x20008 (`lw` at 0xb14) and a byte at +0x20007 (`lbu` at 0xb40). It compares a6 with 3 (branch at 0xb24) and a5 with 0 (branch at 0xb2c), returns 0 at 0xb38 on one path, and on the other returns the computed address plus 0x20000 at 0xb48 with a byte store (`sb`) at +0x20007 at 0xb4c. The fields it reads are not identified by the facts.
  Reviewed: 2026-11-12 (sonnet)

- `gfx_disp` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0xc28
  **Inferred.** Same code as the `gfx.o` copy in this batch: calls `gthread_find` at 0xc30, walks the record chain reached through it, tests bit 0x4 at +8 and calls `valusema` at 0xd44 before returning 0 or 1. The rendered facts do not say what the records hold.
  Reviewed: 2026-11-12 (sonnet)

- `gfx_fault` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0xd5c
  **Inferred.** Same code as the `gfx.o` copy: calls `curthreadhandle` at 0xd6c and `gthread_find` at 0xd78, tests bits 0x8 and 0x1 of +4 of a1, calls `RRM_ValidFault` at 0xdc4 and uses `psema` and `vsema` on the semaphore at a1+80. The callees' contracts are not in the facts.
  Reviewed: 2026-11-12 (sonnet)

- `gfx_shcheck` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0xfe0
  **Inferred.** Same code as the `gfx.o` copy: `gthread_find` at 0xfec, list lock through `GfxListWriterLock` at 0x10dc, teardown through `gthread_detach_list`, `gthread_detach_group`, `cleargfxsched_thread` and `gthread_destroy` at 0x10a0 to 0x10b8. The share-check name is not confirmed by the facts.
  Reviewed: 2026-11-12 (sonnet)

- `gfx_shdup` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x1234
  **Inferred.** Same code as the `gfx.o` copy: `gthread_find` at 0x1240, then `gthread_create` at 0x1284, `gthread_attach_list` at 0x1298 and `setgfxsched_thread` at 0x12a0 on the shared-record path. The duplicate-for-child reading is inferred from the calls.
  Reviewed: 2026-11-12 (sonnet)

- `gfxopen` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x1fb8
  **Inferred.** Same code as the `gfx.o` copy: `psema` on `GfxBoardInitSema` at 0x1fe0, a 0x100-byte `kern_malloc` block at 0x2158 and a second one at 0x2148 only when `gthread_find_gfxp` returned zero, spinlock and semaphore setup at 0x21a0 and 0x21bc, thread registration at 0x2224 and 0x2234, and `cmn_err_tag` error reports with ids 0x84e and 0x84f. The meaning of the return values is not settled.
  Reviewed: 2026-11-12 (sonnet)

- `gfxclose` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x24d0
  **Inferred.** Same code as the `gfx.o` copy: `psema` at 0x2518, `GfxDetach` at 0x2604, thread detach and destroy at 0x26e0 to 0x26f0, then `gfxcleanup` at 0x2720, and `psignal` with 0x6 (on `curproc`, 0x275c) or 0x9 (0x2a4c). The facts do not show what makes a process the owner. The purpose of each path is inferred from the callees.
  Reviewed: 2026-11-12 (sonnet)

- `VEC_int` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x0
  **Inferred.** Calls `intr` at 0x18 first. Later code loads a saved frame (loads at 0x70 to 0xcc, offsets +0x0 to +0x120). Its exits are `uli_setasids` (0x5c), `tfi_restore` (0x6c), `ktimer_switch` (0x124, 0x150), and jumps to `backtouser` (0x10c), `soft_trap` (0x138), `resumeidle` (0x198) and `exception_leave` (0x1fc), with `kpswtch` at 0x1dc. Role (from name): the kernel's interrupt and trap entry. The choice among its exits is not settled by the facts.
  Reviewed: 2026-11-12 (sonnet)

- `tfp_special_int_exit` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x30
  **Inferred.** Covers the same tail as `VEC_int` from 0x30 on: it reads the saved frame, calls `uli_setasids` (0x5c), `tfi_restore` (0x6c) and `ktimer_switch` (0x124, 0x150), then leaves through `backtouser` (0x10c), `soft_trap` (0x138) or `resumeidle` (0x198). The name suggests an exit after a special interrupt; the facts do not show which flags pick each exit.
  Reviewed: 2026-11-12 (sonnet)

- `kpreemption` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1dc
  **Inferred.** Calls `kpswtch` at 0x1dc with its four arguments unchanged and then jumps to `exception_leave` at 0x1fc.
  Reviewed: 2026-11-12 (sonnet)

- `arcs_write` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22c
  **Inferred.** Role (from name): console write for the ARCS interface. Tests `_prom_cleared` (0x248) and `L1_is_console` (0x250); the branches lead to `he_arcs_write` at 0x260 or `ioc_console_write` at 0x288, and to a path that calls `in_panic_mode` (0x290) and `brl1_port_ready` (0x2a0) and takes `brl1_port` with `du_down_write` at 0x2b4 only when both return nonzero. That path and another make an indirect call at 0x2d0 through a pointer loaded at 0x2c8 and +0xd8 (0x2cc), with the four arguments unchanged. The exact selection rules are not settled by the facts.
  Reviewed: 2026-11-12 (sonnet)

- `arcs_load` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e0
  **Inferred.** Tests `_prom_cleared` (branch at 0x2f8). When it is zero it loads a pointer and a word at +0x0 (0x304, 0x308) and calls through it (indirect call at 0x30c) with the four arguments unchanged, returning its result at 0x318. When it is nonzero it calls `cmn_err` at 0x324. Role (from name): a thin wrapper over a firmware call vector, which the facts do not confirm.
  Reviewed: 2026-11-12 (sonnet)

- `prom_reinit` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x35c
  **Inferred.** Tests `power_off_received` (branch at 0x364). When it is nonzero it calls `get_elsc` at 0x36c and passes its result to `elsc_pwr_off` at 0x374. It then calls `he_arcs_restart` at 0x384 with its arguments and returns its result at 0x390.
  Reviewed: 2026-11-12 (sonnet)

- `arcs_setuproot` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x398
  **Inferred.** Calls `kopt_find` at 0x3a4 with a `.rodata` key. When that returns nonzero it calls `arcs_to_dsk` at 0x3b4 with the result and a stack buffer at sp-32, and when that returns nonzero it calls `kopt_set` at 0x3c8 with a `.rodata` key and the buffer. Returns the result of one of those three calls. The option name and the buffer size are not in the facts.
  Reviewed: 2026-11-12 (sonnet)

- `arcs_to_dsk` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3dc
  **Inferred.** Walks its a0 string: it locates parentheses and commas with `strchr` (0x438, 0x45c, 0x4f0, 0x51c, 0x548, 0x574), matches `.rodata` strings of 4 bytes with `strncmp` (0x3fc, 0x498, 0x4b4, 0x4cc), reads numbers with `atoi` (0x4dc, 0x50c, 0x538, 0x564, 0x5e4, 0x5f4), and formats into its a1 argument with `sprintf` at 0x59c. Returns 0 or 1 at 0x5cc. Role (from name): an ARCS path-to-disk conversion. The string format is not settled by the facts.
  Reviewed: 2026-11-12 (sonnet)

- `exception_exit` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x630
  **Inferred.** Loads the word at abs 0xffffffffffffd00c and tests its bits (0x1 at 0x63c, 0x2 at 0x6b0, 0x4 at 0x72c). When bit 0x1 is set it calls `getpc` at 0x648 and stores the register set into a frame at offsets 0x0 to 0x120 (stores at 0x658 to 0x720); the stores from +0x50 onward need bit 0x2, and the `bcopy` at 0x760 needs bit 0x4. It then reloads the frame (loads at 0x7c0 to 0x82c) and leaves through `backtouser` (0x888), `soft_trap` (0x898) or `tfi_restore` (0x8a0). The fields of the frame are not named by the facts.
  Reviewed: 2026-11-12 (sonnet)

- `exception_leave` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x8a0
  **Inferred.** Calls `tfi_restore` at 0x8a0 with its four arguments unchanged; the facts do not mark it as a tail call. Followed by 21 doubleword loads (0x8a8 to 0x900). Role (from name): a register-restore tail. Nothing in the facts describes a result.
  Reviewed: 2026-11-12 (sonnet)

- `unmaptlb` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x910
  **Inferred.** Tests whether a0 is zero (branch at 0x91c), loads a halfword at 0x924 and a byte at 0x92c (addresses not rendered in the facts), and returns 0 or an unknown value at 0x980. It makes no calls in the facts. Role (from name): a TLB unmap, but no TLB instruction appears in the rendered facts, so that reading is unconfirmed.
  Reviewed: 2026-11-12 (sonnet)
