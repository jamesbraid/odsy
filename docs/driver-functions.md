# Kernel driver functions, one entry each

Release IRIX 6.5.30m, `odyssey.a` members of the IP30 kernel build. Each entry starts with the function, then its member, offset in `.text` and size in bytes. Labels are **established** (read from the disassembly in `odsy_kernel/disasm/`) or **inferred**. The IP35 and patch builds carry byte-identical code for some of these and different code for others; an entry speaks for the IP30 media build only. Register names are in `docs/registers.md`.

- `odsyReset` (`odsy_init.o`, offset 0x1c04, 1800 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Brings a board from any state to idle. It reads the widget control word (0x24) around a call to
  `odsyLowLevelReset`, writes the widget id OR 0x4200 back, stores the master id into 0x1004 and calls
  `odsyGatherInfo` and `odsyMMinit`, runs `odsyInitDBE`, then zeroes the interrupt, flow, DMA and swap
  registers one at a time with a sync after each (0x103c and 0x101c get all ones first). It finishes with
  the SDRAM configuration pulse (bit 5 cleared, set and cleared again, 400 us apart, then bit 8) and a
  call to `odsy_hpipe_invalidate`.
- `odsyLowLevelReset` (`odsy_init.o`, offset 0x1830, 980 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Resets the board's link. On a host whose chip-id register shows a newer part it writes 0x200 to 0x100c,
  waits one second and writes 0; on the older part it writes the six bits that sum to 0x16d, waits 200 ms,
  writes 0 and calls `odsyLLPReset`. Both paths save and clear bits of the host chip's per-widget word at
  offset 268 (64 bytes per widget) before the reset and restore it after, and they read the words at 276
  and 316 to see whether the widget answered, logging a message and trying again when it did not.
- `odsyLLPReset` (`odsy_init.o`, offset 0x17c0, 112 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Resets the crossbar link to the widget: it calls `xwidget_reset` when the board has a device handle,
  otherwise it writes 0 to a host-chip word at offset 308 plus 64 times the widget id after saving the
  word at 268, waits 10 ms and restores 268.
- `odsyGatherInfo` (`odsy_init.o`, offset 0xb84, 1440 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Reads the board's identity into the board record. Called with 0 it loads the widget word at 0x4, takes
  bits 31:28 as the revision type, dispatches on it through a 16-entry jump table, rejects types 0 and 4
  to 8 with a log message and then stores bits 2:0 of the display-chip word at +0x23380c; called with 1 it
  decodes bits 31:24 of the word at 0x106c into SDRAM size, bank count, CAS latency and a clock-part
  variant (record +252, +260, +256, +292).
- `odsyInitInterrupts` (`odsy_init.o`, offset 0x275c, 1032 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Programs the five interrupt sources. It builds the error-source destination words at 0x34 and 0x3c, the
  flag-source words at 0x1044 and 0x104c, the packed vector word at 0x1054 and the two control words at
  0x5c and 0x105c with read-modify-write sequences in the board record, stores each once with a sync, and
  ends with the start-up enable mask at 0x1034 (clear bit 31, set bits 30 to 27, and so on down to bit 1).
- `odsyDisableInterrupts` (`odsy_init.o`, offset 0x2b64, 128 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Turns the board's interrupts off without resetting it. It clears bit 21 of the error-source word (0x34)
  and bits 18:16 of the flag-source word (0x1044) in their record shadows, stores both, then writes all
  ones to the enable-clear register 0x103c; the whole routine is 128 bytes and touches no other register.
- `odsyInitCfifo` (`odsy_init.o`, offset 0x230c, 860 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Sets the command FIFO up and loads the transform microcode. It stores class-1 block 0x054 and five
  doubleword constants (the water-mark and enable words in the literal pool), waits 2000 us, checks that
  the word at 0x201594 reads 0x003d0046, then sends sequencer words 0x2e008380 and 0x2600807f, the write-
  address word 0x27008000 and 2048 six-word microcode records; with its second argument set it also
  detaches the process from flow control and stores 1 to 0x107c.
- `gf_OdsyStart` (`odsy_init.o`, offset 0x1730, 144 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Finishes bring-up when the manager sends start. It zeroes the record's mode words, sets the board-
  started halfword and the context slot 127, calls `odsyInitDrawables`, converts the 128 KB shadow buffer
  at record +880 with `kvtophys` and stores its address halves to 0x4034 and 0x403c, each followed by a
  sync.
- `gf_OdsyInitialize` (`odsy_init.o`, offset 0x1284, 1196 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Prepares flow control and the FIFO after attach. It releases any previous flow handle with
  `gfx_flow_dealloc`, waits in 5 us steps for the command FIFO level to reach zero, pulses 0x1084 (0, then
  the target number, then 0), programs 0x1074 with the credit target from `gfx_flow_credit_tnum_get`.
- `odsyZeroOut` (`odsy_init.o`, offset 0x1178, 268 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Fills a block of the board's internal memory with zeros. It stores class-1 word 1856 and the constant
  448, then loops 576 entries in groups of 16, sending one count-and-id header (id 0x341, count taken from
  the remaining size) before each group and zero words after it through the command FIFO port at 0x110000.
- `odsyPrintRegs` (`odsy_init.o`, offset 0x3f0c, 84 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Prints the two diagnostic registers after a fatal error: it loads the flags word at 0x1014 and the
  status word at 0x1064 and logs them through the `%R` bit-table print using the register bit tables kept
  in `odsy_init.o` `.data` (offsets 0x0 and 0x460).
- `odsyXtErrorInterrupt` (`odsy_intr.o`, offset 0x0, 428 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)`.
  Handles the crossbar error interrupt, source 0. It counts the event in the host's per-cpu table, loads
  the widget status word (0xc), and tests bit 8 (response time-out), bit 7 (address error) and bit 6
  (packet format error) in that order, printing the matching message with the header from 0x44 and the
  address words 0x1c and 0x14; only the address-error case also calls `odsyPrintRegs` and `odsy_teardown`.
  It always ends by storing 0 to 0x44.
- `odsyFlagInterrupt` (`odsy_intr.o`, offset 0x1ac, 916 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)`.
  Handles the flags interrupt, source 1. It loads the flags word 0x1014 and ANDs it with the enable mask
  at 0x1034, calls `odsyLowaterInterrupt` for bit 9 and `odsyGenlockInterrupt` for bit 31, logs a message
  for each other pending error or status bit, and then tears the board down with `odsy_teardown` when the
  raw flags intersect 0x39f02587; otherwise it writes the pending bits to the clear register 0x101c.
- `odsyDmaInterrupt` (`odsy_intr.o`, offset 0x540, 56 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)`.
  Handles the DMA interrupt, source 2. The 56-byte routine only calls `odsyDMAIrptWakeup` with the board,
  which wakes the thread waiting on a transfer; it reads no board register itself.
- `odsySsyncInterrupt` (`odsy_intr.o`, offset 0x578, 72 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)`.
  Handles the sync interrupt, source 4. The 72-byte routine wakes the DMA waiter through `odsyDMAWakeup`
  and returns; it touches no board register itself.
- `odsyHiwaterInterrupt` (`odsy_flow.o`, offset 0xcc, 464 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)`.
  Runs when the host's flow-control credits for the board fall below the bias. It spins up to ten times
  for 1 us waiting for credits, otherwise marks the board backed up, writes 0x200 to 0x101c, writes 0x200
  to the flags register 0x1014 when status bit 17 already shows the low-water condition, sets bit 9 in the
  enable shadow, writes it to 0x1034 and arms the 1500-tick `odsyFifoTimer`.
- `odsyLowaterInterrupt` (`odsy_flow.o`, offset 0x29c, 144 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)`.
  Runs when the command FIFO drains below its low-water mark. It cancels the FIFO timer, clears bit 9 in
  the enable shadow, writes 0x200 to 0x103c to stop the interrupt and wakes the thread that the high-water
  path parked.
- `odsySwapBuffer` (`odsy_retrace.o`, offset 0x13c, 580 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
  Swaps the front and back buffers of one window id. It rejects ids of 32 or more with error 22, splits
  the ids that swap now by their new buffer bit (the ones with the bit set go to 0x10c4 and the others to
  0x10cc), writes the ids whose buffer shadow differs to 0x10b4, writes the group mask to 0x10bc and
  updates its record shadow at +28528, calling `odsyValidateBuffer` for each window that completes.
- `odsyRetraceHandler` (`odsy_retrace.o`, offset 0x1274, 716 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
  Handles the retrace interrupt, source 3. It takes the retrace mutex, counts the retrace, loads the
  buffer-select word at 0x10d4 and XORs it with the record shadow at +28528 to find windows whose buffer
  changed, then for each of the 32 ids with a pending swap it validates, swaps with `odsySwapBuffer` or
  writes the id to 0x10b4 after a repeat count, forcing a swap that has waited 300 retraces.
- `gf_OdsySchedSwapBuf` (`odsy_retrace.o`, offset 0x380, 1108 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
  Schedules a buffer swap for the manager. It rejects an id of 32 or more, attaches the caller to flow
  control, waits on the swap condition while the same id is pending, builds the mask of ids in the swap
  group, writes it to 0x10bc, fills the 40-byte per-id record at +28584 + 40 x id and either calls
  `odsySwapBuffer` at once or defers the id to the retrace handler.
- `gf_OdsyPcxSwap` (`odsy_ctxsw.o`, offset 0x458, 1536 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Saves the outgoing graphics context and selects the incoming one. It converts the incoming record's
  buffer with `kvtophys`, stores the address halves to 0x4004 and 0x400c, sends context-select block 0x050
  and the settle group, stores the save request doubleword to 0x118000 and waits up to 1500 ticks for the
  record's completion word at +2300 to turn nonzero.
- `gfP_OdsySaveHwShadow` (`odsy_ctxsw.o`, offset 0xc0, 920 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Private request 12: copies the hardware shadow of the calling context back to its record. It checks the
  caller with `RRM_CheckValidFault`, attaches to flow control, arms a timeout, stores the same save
  request doubleword to 0x118000 as `gf_OdsyPcxSwap` and waits for the completion word.
- `odsyResetHwShadow` (`odsy_ctxsw.o`, offset 0x6100, 308 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Rebuilds the vertex shadow after a reset. It clears 0x900 bytes of the shadow and stores one default
  attribute word per slot: Vertex2 integer for position, Normal3 integer (0xc180cc18), the slot-2, slot-4
  and slot-16 defaults, the material words 0xc780d030, 0xc880d031, 0xcb80d036 and 0xcc80d037, Index for
  the scratch slot, and the register word 0x3000c02e.
- `odsyInitPfRgn` (`odsy_diag.o`, offset 0x674, 204 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`.
  Creates the 16 KB statistics region. It returns at once when a region exists, otherwise allocates a
  zeroed kernel buffer, pins and maps it for the client, converts it with `kvtophys` and stores bits 47:32
  to 0x401c and bits 31:0 to 0x4024, each followed by a sync.
- `odsyDestroyPfRgn` (`odsy_diag.o`, offset 0x740, 132 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`.
  Frees the statistics region: it releases the kernel buffer and writes 0 to both address registers,
  0x401c and 0x4024, so the board stops writing to host memory.
- `gfP_OdsyPerfStat` (`odsy_diag.o`, offset 0x7c4, 492 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`.
  Private request 51: copies in a 24-byte argument whose first word is a request mask (bit 0 create, bit 1
  write control, bit 2 destroy), refuses a mask with bits 0 and 2 both set with error 22, builds the
  0x402c control word from the argument bytes plus the fixed bits 31 and 27, and copies the region's
  client address back.
- `gfP_OdsyDIAGreset` (`odsy_diag.o`, offset 0x9b0, 116 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`.
  Private request 52: registers the board with `htp_register_board`, calls `odsyReset`, waits with
  `odsy_usdelay` and calls `odsyReset` and `odsyInitDBE` again, the only user-space route to the full
  reset path.
- `gfP_OdsySetNicinfo` (`odsy_compositor.o`, offset 0xd34, 168 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_compositor.o)`.
  Private request 39: copies in an 80-byte argument and stores its words into the board record starting at
  +712, in a loop of two words per pass, so the compositor board's identity data is kept for later reads.
- `gf_OdsyInfo` (`odsy.o`, offset 0x0, 96 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy.o)`.
  Copies the board's information block out to the caller. It calls `copyout` with the source at board
  record +200, capped at 588 bytes (a longer request is clamped, not rejected), and returns 14 when the
  copy faults. On success it stores the length the caller asked for, not the clamped length, through the
  result pointer in its fourth argument and returns 0.
- `gfP_OdsyInvalidIoctl` (`odsy.o`, offset 0x60, 36 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy.o)`.
  Fallback handler for private requests that have no implementation. It makes one `cmn_err` call at
  severity 5 with the fixed message "odsy: Unknown ioctl", touches no board register and no board record,
  and returns 22.
- `gf_OdsyPrivate` (`odsy.o`, offset 0x84, 124 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy.o)`.
  Dispatcher for the private request family. It accepts a command whose upper 16 bits are 0x6f64, masks
  the low half with a constant from the literal pool and, when the index is below 53, calls the handler
  found at index times 8 into the table that starts 224 bytes into a static data structure, passing the
  board record and the argument block through. Any other command makes it log "odsy: Unknown ioctl(0x%x)"
  at severity 5 through `cmn_err` and return 22.
- `odsyGctxFromRnid` (`odsy.o`, offset 0x100, 92 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy.o)`.
  Converts a rendering-resource number into its graphics context pointer. It compares the number against
  the global `rrm_maxrn`; a number of zero or less, or above the limit, logs "odsy: bad rnid in convert to
  gctx" at severity 4 and returns 0. Otherwise it indexes the global `RRMrn` array with a 176-byte stride
  and returns the doubleword at +112 of that element.
- `odsy_regmatch` (`odsy_attach.o`, offset 0x0, 104 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_attach.o)`.
  Callback that `gf_OdsyAttach` hands to `gfxdd_recycle`: it tears down an old graphics mapping and
  installs its replacement. When the board record in its first argument is non-null it runs
  `gf_OdsyUnMapGfx` between `splhi` and `splx`, clears the record fields at +72 and +48, and calls
  `ddv_destroy_handle` on the handle that was at +48. Whatever the first argument was, it stores its
  second argument at +48 of its third argument and returns that third argument.
- `gf_OdsyAttach` (`odsy_attach.o`, offset 0x68, 384 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_attach.o)`.
  Maps the board's register and buffer windows into a process. The address in its second argument must
  have its low 14 bits clear, otherwise it returns 22. It first offers the mapping to `gfxdd_recycle` with
  `odsy_regmatch` as the callback and returns 0 when a mapping was recycled. If not, it copies a 256-byte
  table of extents to its stack, adds the caller's address to the first two 32-byte entries (all eight when the board flag word
  at +4 has bit 2 or bit 5 set) and calls `gfxdd_mmap` with a 32 KB mapping, or
  256 KB in the eight-pair case, and `gfx_fault` as the fault handler. A failure logs a severity 4 message
  and returns 12. On success it sets bit 0 in the flag word at +4, calls `gf_OdsyUnMapGfx` under `splhi`,
  reads one doubleword from the fixed uncached address 0xaff00080 and returns 0.
- `gf_OdsyDetach` (`odsy_attach.o`, offset 0x1e8, 124 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_attach.o)`.
  Undoes `gf_OdsyAttach` for one board. When bit 2 of the flag word at record +4 is set it first calls
  `odsyDiagExit` with the pointer at +40. Under `splhi` it then calls `gf_OdsyUnMapGfx` if bit 0 of the
  flag word is set, takes the mapping handle from +48 and zeroes that field, and after `splx` passes the
  handle to `gfxdd_munmap`. It returns 0.
- `OdsyInitCSet` (`odsy_adt.o`, offset 0x0, 44 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Empties a colour-set container: it zeroes the chunk-list head at +0, the pointer at +16 and the two
  counts at +24 and +28, stores its second argument at +40 as the log2 of the slots per chunk, and then
  calls `OdsyInitCSetCursor` to reset the iteration state. It touches no board register.
- `OdsyDestroyCSet` (`odsy_adt.o`, offset 0x2c, 428 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Frees a whole colour-set container. For each chunk on the list that starts at +0 it walks the slot
  table, calls the optional per-element callback given as its second argument on every non-empty slot,
  fills the table with the byte 0xd0 and releases it with `kmem_free` (8 bytes per slot, 2 to the power of
  the +40 shift slots), then fills the 32-byte chunk node with 0xd1 and frees that too. It ends by calling
  `OdsyInitCSet` with a shift of 0, which leaves the container empty.
- `OdsyInitCSetCursor` (`odsy_adt.o`, offset 0x1d8, 20 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Resets the iteration cursor embedded in a colour-set container. It zeroes the slot index at +32 and the
  end flag at +36 and copies the chunk-list head from +0 into the current-chunk pointer at +8.
- `OdsyNextCSetElem` (`odsy_adt.o`, offset 0x1ec, 232 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Returns the next occupied slot of a colour-set container, one call per element. It resumes at the slot
  index stored at +32 in the current chunk (pointer at +8), skips empty slots, moves to the next chunk
  through the link at +16 when a table is exhausted, and stores the new index back. When it steps from the
  last chunk back onto the list head it sets the end flag at +36 and still returns the element it found;
  if the container is empty or the flag is already set it clears the flag and returns 0.
- `OdsyFindMatchingCSetElem` (`odsy_adt.o`, offset 0x2d4, 268 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Linear search of a colour-set container with a caller-supplied predicate. It walks every chunk on the
  list at +0 and every slot of each chunk (2 to the power of the shift at +40 slots; a shift of 0 makes it
  return 0 at once), skips empty slots, and calls the predicate with the
  element and the caller's key. The predicate follows the comparison convention: the first element for which it returns 0 is returned, and
  0 is returned when no slot gives that result.
- `NewChunkNode` (`odsy_adt.o`, offset 0x3e0, 76 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Allocates one chunk node for a colour-set container: a 32-byte block from `kmem_alloc` with flags 0,
  cleared to zeros with four doubleword stores. It returns the block, or 0 when the allocation fails.
- `gf_OdsyValidateBanks` (`odsy_clip.o`, offset 0xadc, 8 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)`.
  Stub with a two-instruction body, `jr ra` and a delay-slot clear of the result: it validates nothing,
  reads no argument and returns 0 to every caller.
- `gf_OdsySetNullClip` (`odsy_clip.o`, offset 0xae4, 56 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)`.
  Fills a clip record with the empty state, using only stores to the record in its argument. It zeroes the
  words at +8, +12, +16, +20, +24, +48 and +60, writes all ones to +40, writes 1 to +44 and +52, and
  returns 0. No board register is touched.
- `gf_OdsyPcxSwitch` (`odsy_ctxsw.o`, offset 0xb8, 8 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Stub for the process-context switch entry of the driver table: it executes `jr ra` with -1 in the result
  register and does nothing else, so every call reports failure with the value -1.
- `restorePoints` (`odsy_ctxsw.o`, offset 0x58d0, 8 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Empty routine: a lone `jr ra` that issues no board command and reads no argument. It is the point-
  primitive slot of the context-restore dispatch and restores nothing.
- `restoreLineStrip` (`odsy_ctxsw.o`, offset 0x5988, 56 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Context-restore hook for line strips. It reduces its fourth argument plus 3 modulo 4 with the sign-
  correcting xor and subtract idiom, so the result keeps the sign of the dividend, and tail-calls
  `odsyRestoreVertex` with that value as the sixth argument and its other arguments unchanged.
- `restoreLines` (`odsy_ctxsw.o`, offset 0x58d8, 56 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Context-restore hook for independent line segments. Its body is the same instruction sequence as
  `restoreLineStrip`: the fourth argument plus 3 taken modulo 4 with sign correction, passed as the sixth
  argument to `odsyRestoreVertex` along with the unchanged first five arguments.
- `odsy_i2c2abAssignAddr` (`odsy_ddc.o`, offset 0x2138, 8 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Stub of two instructions, `jr ra` and a zeroed result: it returns 0 and sends nothing on the two-wire
  bus.
- `odsy_i2c2abIDReply` (`odsy_ddc.o`, offset 0x2130, 8 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Stub of two instructions that returns 0 without reading its argument or touching the bus.
- `odsy_monitor_type` (`odsy_ddc.o`, offset 0x1d60, 36 bytes): **inferred.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Classifies the attached monitor from the display-identification copy kept in the board record. It
  returns -1 when the halfword at record +308 is 0, otherwise it tests bit 7 of the byte at +330 and
  returns 1 when set and 0 when clear. If the 128-byte EDID block starts at +310, that byte is EDID byte
  20 and bit 7 is its digital-input flag.
- `odsy_validate_ddc_data` (`odsy_ddc.o`, offset 0x1c2c, 44 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Thin wrapper over `odsy_i2cValidEdid`: it passes its argument through and returns 1 when that routine
  returns non-zero, 0 otherwise. It reads no board register itself.
- `sgiEdid` (`odsy_ddc.o`, offset 0x1d28, 56 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Recognises monitors whose EDID manufacturer field is the vendor's own. It returns 1 when byte 8 of the
  block is 0x4c and byte 9 is 0xf8 or 0xe9, and 0 otherwise. Packed as three five-bit letters, 0x4ce9
  reads "SGI" and 0x4cf8 reads "SGX".
- `odsy_EdidCksum` (`odsy_ddc.o`, offset 0x1c58, 72 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Computes the EDID block checksum: it adds the 128 bytes at its argument, keeps the sum modulo 256 and
  returns it, so a valid block gives 0. The loop is unrolled twice and reads memory only.
- `odsy_i2cFixupAfterErr` (`odsy_ddc.o`, offset 0x0, 76 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Recovery sequence after a failed two-wire transfer. It waits through `odsy_usdelay` for the larger of
  two delay constants held in small data, calls `odsy_i2cReset` on the same port record, and then waits
  through `odsy_usdelay` again for a third constant. The board pointer passed to the delay routine is the
  one at port record +16.
- `gf_OdsyFrsInstall` (`odsy_retrace.o`, offset 0x1264, 8 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
  Stub for installing a frame-rate scheduler hook: two instructions, `jr ra` and a zeroed result, so it
  returns 0 and programs nothing.
- `gf_OdsyFrsUninstall` (`odsy_retrace.o`, offset 0x126c, 8 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
  Stub counterpart of `gf_OdsyFrsInstall`: two instructions that return 0 and change no state.
- `odsy_unblank` (`odsy_tport.o`, offset 0x1844, 8 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`.
  Empty routine of one `jr ra`: the transport-port blank-removal hook does nothing and returns no value.
- `odsy_cmov2i` (`odsy_tport.o`, offset 0xf7c, 16 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`.
  Records a cursor position. It stores its second argument at +0 and its third at +4 of a static object in
  the zero-initialised data section, one 32-bit store each, and returns; no board register is written.
- `odsy_getdesc` (`odsy_tport.o`, offset 0x1640, 24 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`.
  Reports whether a descriptor request is supported: it returns 1 when its second argument equals 1 and 0
  for any other value, and reads nothing from memory.
- `odsy_tport_lock_init` (`odsy_tport.o`, offset 0x0, 48 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`.
  Initialises the transport-port lock state. It sets the global `odsy_tport_mute` to 1, clears
  `odsy_tport_inuse` in the delay slot of a `wbflush` call, and then calls `spinlock_init` on
  `odsy_tport_lock` with the name "odsy_tport_lock".
- `odsy_rainier_read_rcx_reg` (`odsy_rainier.o`, offset 0x18, 24 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_rainier.o)`.
  Reads one 32-bit register of the Rainier window. It takes the mapped base pointer stored at record
  +16, adds the byte offset in its second argument rounded down to a multiple of 4 (shift right 2, shift
  left 2) and returns the word loaded from there.
- `odsy_rainier_write_rcx_reg` (`odsy_rainier.o`, offset 0x0, 24 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_rainier.o)`.
  Writes one 32-bit register of the Rainier window: the store goes to the base pointer at record +16
  plus the offset in the second argument rounded down to a multiple of 4, and the value is the third
  argument. It has no return value and no barrier.
- `odsy_rainier_read_board_id` (`odsy_rainier.o`, offset 0x30, 28 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_rainier.o)`.
  Reads the board identification register of the Rainier window by calling `odsy_rainier_read_rcx_reg`
  with the offset 816 (0x330) and returning its result unchanged.
- `odsy_RainierRegWrite` (`odsy_rainier.o`, offset 0x7c, 32 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_rainier.o)`.
  Register-write entry used by the callback table. It ignores its own first argument and calls
  `odsy_rainier_write_rcx_reg` on the board record held in a global in the small zero-initialised data,
  passing the offset and value through, and returns 0.
- `odsy_RainierRegRead` (`odsy_rainier.o`, offset 0x4c, 48 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_rainier.o)`.
  Register-read entry used by the callback table. It calls `odsy_rainier_read_rcx_reg` on the board record
  held in a global in the small zero-initialised data with its offset argument, stores the word read
  through the pointer in its third argument and returns 0.
- `odsy_dma_poll_timer` (`odsy_dma.o`, offset 0x8c8, 28 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Timer callback of `DmaFinishedPollDelay`: it does nothing but call `vsema` on the semaphore in the zero-
  initialised data, releasing the thread that is blocked in `psema`.
- `odsy_dmawait_harmless_timeout` (`odsy_dma.o`, offset 0x2470, 56 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Timeout handler for a DMA wait that was not a real hang. It logs the message "this is not a dma timeout"
  at severity 7 through `cmn_err` and then wakes every waiter with `sv_broadcast` on the synchronisation
  variable at board record +5816. It touches no board register.
- `DmaFinishedPollDelay` (`odsy_dma.o`, offset 0x8e4, 80 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Sleeps for about 25 clock ticks. It initialises the semaphore in the zero-initialised data with
  `init_sema`, arms `timeout` for 25 ticks with `odsy_dma_poll_timer` as the callback and its own argument
  as the callback argument, and then blocks in `psema` at priority 25 until the timer posts the semaphore.
- `odsy_earlyinit_timeout` (`odsy_init.o`, offset 0x115c, 28 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Timer callback used during early board initialisation: it calls `vsema` on the semaphore passed in its
  argument so that the initialisation thread blocked on it resumes.
- `odsy_init` (`odsy_init.o`, offset 0x398, 56 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Driver start-up entry. It calls `odsyCheckBoardPointers` to make sure the board pointer table exists,
  clears the global `OdsyBoardEnum`, and registers the driver with the crossbar through
  `xwidget_driver_register` for part number 0xc013 and manufacturer 35 under the name prefix "odsy_", with
  flags 0.
- `odsy_init_ddrncount_timeout` (`odsy_init.o`, offset 0x1124, 56 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Timeout handler for the DDRN count wait during initialisation. It logs "odsy-kern: ddrncount timeout" at
  severity 4 through `cmn_err` and then calls `vsema` on the semaphore in its argument to release the
  thread waiting for the count.
- `odsyCheckBoardPointers` (`odsy_init.o`, offset 0xe4, 64 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Allocates the table of board records on first use. When the global `OdsyBoardspp` is null it calls
  `kern_malloc` for `GfxBoardLimit` pointers of 8 bytes each, stores the result in `OdsyBoardspp` and
  clears the block with `bzero`; otherwise it returns at once.
- `odsyPipeNrFromBase` (`odsy_init.o`, offset 0x94, 80 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Finds the pipe number of a board from its PIO base address. It scans the `OdsyBoardspp` table from index
  0 up to `GfxBoardLimit`, compares the base address argument with the doubleword at +824 of each non-null
  board record and returns the index of the first match. It returns -1 when no record matches or the table
  does not exist.
- `odsyDestroyDrawable` (`odsy_drawable.o`, offset 0x118, 32 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  Frees a drawable record: it calls `kmem_free` on its second argument with the size 40 and returns.
- `odsyCreateDrawable` (`odsy_drawable.o`, offset 0xdc, 60 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  Allocates a drawable record of 40 bytes with `kmem_alloc`. On success it clears the word at +32, stores
  its second argument at +16 and returns the record; when the allocation fails it returns 0.
- `odsy_hpipe_sema_init` (`odsy_hpipe.o`, offset 0x0, 32 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`.
  Initialises the lock of the display-pipe state with `spinlock_init`, giving it the global
  `odsy_hpipe_state_lock` and the name "HpipeStateLock".
- `odsy_hpipe_invalidate` (`odsy_hpipe.o`, offset 0x20, 68 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`.
  Forgets the cached display-pipe state of a board. It zeroes the two doublewords at board record +46216
  and +46224, then takes `odsy_hpipe_state_lock` with `mutex_spinlock`, clears the first word of the
  structure at `OdsyHpipeState` when that pointer is set, and releases the lock with `mutex_spinunlock`.
- `odsy_usb_comp_update_tiles` (`odsy_hpipe.o`, offset 0x7f4, 40 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`.
  Placeholder for a tile-update operation that the kernel build does not carry. It calls `cmn_err` at
  severity 4 with "usb_comp_update_tiles not in kernel!" and returns -1, with no board access. Other code
  in `odsy_hpipe.o` reaches it under the second symbol `usb_comp_update_tiles` at the same address.
- `usb_comp_update_tiles` (`odsy_hpipe.o`, offset 0x7f4, 40 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`.
  Second symbol for the 40-byte code at offset 0x7f4 that `odsy_usb_comp_update_tiles` also names.
  `odsy_hpipe.o` calls this name through its relocations, and the code logs "usb_comp_update_tiles not in
  kernel!" at severity 4 with `cmn_err` and returns -1.
- `odsy_usb_comp_readwrite_register` (`odsy_hpipe.o`, offset 0x81c, 40 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`.
  Placeholder for the register read-write operation of the USB compositor, which is not in this kernel. It
  calls `cmn_err` at severity 4 with "usb_comp_readwrite_register not in kernel" and returns -1 without
  touching a register.
- `usb_comp_readwrite_register` (`odsy_hpipe.o`, offset 0x81c, 40 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`.
  Second symbol for the 40-byte code at offset 0x81c that `odsy_usb_comp_readwrite_register` also names.
  The relocations of `odsy_hpipe.o` call it by this name; the code logs "usb_comp_readwrite_register not
  in kernel" at severity 4 with `cmn_err` and returns -1.
- `odsyUnmapPages` (`odsy_map.o`, offset 0x9b8, 40 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Drops one user mapping. It loads the mapping handle stored at the address in its argument, zeroes that
  field, calls `gfxdd_munmap` with the handle, and returns 0.
- `odsyUnpinAndUnmapPfStatRegions` (`odsy_map.o`, offset 0x8a0, 68 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Releases the performance-statistics mapping of a board. When the doubleword at board record +0x8568 is
  non-zero it calls `odsyUnmapPages` on the handle field at +0x8578 and returns that call's result;
  otherwise it returns 0.
- `odsyUnmap` (`odsy_map.o`, offset 0x64c, 96 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Unmaps one range from the current process. It calls `as_lookup_current` to get the address space, builds
  a request block on the stack with the address argument at +32 and zeroed words at +16 and +40, and
  invokes the unmap method at +64 of the address space's operation table with that block and a final
  argument of 0. It returns the method's result.
- `odsyUnpinAndUnmapASRegions` (`odsy_map.o`, offset 0x7d4, 96 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Unmaps the two address-space regions of a record. When the handle at +40 is non-zero it calls
  `odsyUnmapPages` on the field at +40, and when the one at +56 is non-zero it does the same for +56. It
  returns the first result, or the two results ORed together when both calls are made.
- `odsy_flow_am_i_attached` (`odsy_flow.o`, offset 0x8c, 64 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)`.
  Asks the flow-control layer whether the caller is attached to the board's flow control. It raises the
  interrupt level with `splhi`, calls `gfx_flow_am_i_attached` with the board record, restores the level
  with `splx` and returns the answer.
- `odsyFifoTimeout` (`odsy_flow.o`, offset 0x394, 100 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)`.
  Handler for a command-FIFO timeout. It calls `odsy_teardown`, clears the word at board record +104,
  calls `odsyDisableInterrupts`, decrements the word at +80 of the structure that +40 of the pointer at
  +72 points to, logs "odsy: board %d - CFIFO timeout" at severity 4 with the halfword at +790, and
  finally zeroes the word at board record +0xb444.
- `odsy_ctxsw_timeout` (`odsy_ctxsw.o`, offset 0x0, 92 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Watchdog for a context switch that did not finish. It logs "odsy board %d: CTXSW timeout" at severity 1
  with the halfword at board record +790. When the global `odsy_actually_timeout` is non-zero it calls
  `odsy_teardown`; otherwise it re-arms itself through `timeout` for 1500 ticks.
- `odsy_glget_timeout` (`odsy_ctxsw.o`, offset 0x5c, 92 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Watchdog for a state read-back that did not finish. It logs "odsy board %d: GLGET timeout" at severity 1
  with the halfword at board record +790. When the global `odsy_actually_timeout` is non-zero it calls
  `odsy_teardown`; otherwise it re-arms itself through `timeout` for 1500 ticks.
- `odsy_mm_B_okay` (`odsy_pmm.o`, offset 0x3e24, 8 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Clears the word at +4924 of the memory-manager record in its argument and returns; it is the one-store
  counterpart of `odsy_mm_B_warn1`.
- `odsy_mm_B_warn1` (`odsy_pmm.o`, offset 0x3da0, 12 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Sets the word at +4924 of the memory-manager record in its argument to 1 and returns, with no other
  effect.
- `odsy_mm_ctxsw_timeout` (`odsy_pmm.o`, offset 0x2634, 56 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Timeout handler of the memory manager's context-switch wait. It logs "odsy pmm: CTXSW timeout" at
  severity 1 through `cmn_err` and then calls `odsy_teardown` on its argument.
- `odsy_mm_mkres_timeout` (`odsy_pmm.o`, offset 0x16b8, 56 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Timeout handler of the memory manager's resource-creation wait. It logs "odsy pmm: MKRES timeout" at
  severity 1 through `cmn_err` and then calls `odsy_teardown` on its argument.
- `odsy_mm_cores_obj_in` (`odsy_pmm.o`, offset 0x1bd4, 60 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Membership test for a co-residency group. It scans the 16 pointer slots that start 16 bytes into the
  array pointed to by +8 of its second argument and returns 1 when a slot equals its first argument, 0
  when none does.
- `CoresidRangeFinder` (`odsy_pmm.o`, offset 0x1ad0, 64 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Comparison predicate for a search of co-residency ranges. It compares the word at +8 of its second
  argument with the first word of the object behind +8 of the first argument, then its +0 with the first
  argument's +4 and its +4 with the first argument's +0. It returns 0 only when all three comparisons are
  equal and 1 on any difference.
- `CoresidSubRangeFinder` (`odsy_pmm.o`, offset 0x1b10, 72 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Overlap predicate for co-residency ranges. It first requires the word at +8 of its second argument to
  equal the first word behind +8 of the first argument, otherwise it returns 1. It then returns 0 when the
  first argument's +4 is at least the second's +0 and the second's +4 is at least the first's +0, and 1
  when either bound lies outside.
- `odsy_mm_sg_remove_grp` (`odsy_pmm.o`, offset 0x2f88, 64 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Releases the colour-set identifier of a surface group. When the word at +0 of the group is not -1 it
  calls `OdsyDeallocCSetId` on the container at +72 of the memory-manager record with that identifier and
  then stores -1 in the group's word.
- `mm_get_cond_list_cursor` (`odsy_pmm.o`, offset 0x0, 68 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Looks up a saved list cursor in a table of 65 slots per class. It takes the class shift from the global
  integer array indexed by its second argument, shifts the third argument right by it and, if the result
  is 64 or less, returns the doubleword at +1680 plus 8 times (65 times the shift plus the result) in the
  record. Larger results return the address record +1640.
- `mm_set_cond_list_cursor` (`odsy_pmm.o`, offset 0x44, 68 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Stores a list cursor in the same table that `mm_get_cond_list_cursor` reads: slot index equals the third
  argument shifted right by the class shift plus 65 times the shift, base +1680 in the memory-manager
  record. A slot index above 64 is ignored; otherwise it stores the fourth argument there and sets the
  word at +4800 to 1.
- `odsy_mm_sg_remove_image_texture_group_from_list` (`odsy_pmm.o`, offset 0x4f58, 100 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Unlinks a group from the image-texture list of the memory-manager record. The group's previous and next
  pointers sit at +232 and +240. The record's walk pointer at +192 steps to the next group when it pointed
  at the removed one. If the group was the tail the pointers at +176 and +192 take its predecessor, and if
  it was the only member +176 is cleared.
- `odsy_mm_sg_remove_detail_texture_group_from_list` (`odsy_pmm.o`, offset 0x4fbc, 100 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Unlinks a group from the detail-texture list. It uses the same +232 and +240 neighbour pointers as the
  other group lists, advances the walk pointer at +200 when it pointed at the group, sets the tail pointer
  at +184 and the walk pointer to the predecessor when the group was last, and clears +184 when it was
  alone.
- `odsy_mm_remove_pbuffer_group_from_list` (`odsy_pmm.o`, offset 0x5250, 76 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Unlinks a group from the pixel-buffer list. Neighbours are the +232 and +240 pointers of the group; the
  tail pointer at +4816 of the memory-manager record is set to the predecessor when the group was last and
  cleared when it was the only member. There is no walk pointer to adjust.
- `MapKernelRegionIntoUserSpace` (`odsy_pmm.o`, offset 0x1a78, 88 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Maps a kernel region described by its first argument into a process. It builds a 32-byte request on the
  stack holding 1 at +16, the second argument at +24 and the doubleword at +24 of the region at +8, then
  calls `odsyMapPages` with the pointer at +16 of the region, the doubleword at +8, the word at +28 and
  the request, and returns its result.
- `odsy_mm_decommit` (`odsy_pmm.o`, offset 0x579c, 100 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Takes a resource out of the committed state. When the pointer at +128 is set it calls
  `mm_release_extent` with it and 0; it then stores -1 at +56 and into the slot of the per-resource table
  (pointer at +152 of the record behind +8) indexed by the halfword at +0, and clears bit 3 of the flag
  word at +64. It returns 0.
- `odsyHashAlloc` (`odsy_adt.o`, offset 0xd04, 152 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Allocates a hash table of N buckets, N being its argument: one `kmem_alloc` of 24 bytes per bucket plus
  an 8-byte header, flags 0. On success it stores N in the header word at +0 and turns each 24-byte bucket
  into an empty circular list by pointing both link words of the sentinel at +8 of the bucket back at
  itself. It returns the table, or 0 when the allocation fails or N is not positive.
- `odsyHashDealloc` (`odsy_adt.o`, offset 0xd9c, 112 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Frees a hash table. It reads the bucket count from the header word at +0, overwrites the 24 bytes per
  bucket plus 8 header bytes with the poison byte 0xd4 using store-prefetch hints, and then calls
  `kmem_free` on the table.
- `odsyHashInsert` (`odsy_adt.o`, offset 0xe50, 48 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Adds a node at the front of one bucket. The bucket sentinel is at table +8 plus 24 times the bucket
  index; the node's next link at +0 takes the old first node, its previous link at +8 takes the sentinel,
  and the old first node's previous link and the sentinel's next link are both pointed at the new node.
- `odsyHashRemove` (`odsy_adt.o`, offset 0xe80, 36 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Unlinks a node from its circular bucket list: the predecessor's next link at +0 takes the node's next,
  the successor's previous link at +8 takes the node's previous, and both links of the node are then
  cleared to zero.
- `odsyHashLookup` (`odsy_adt.o`, offset 0xe0c, 68 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Searches one bucket of a hash table. It starts at the sentinel at table +8 plus 24 times the bucket
  index, follows the next links at +0 until it is back at the sentinel, and returns the first node whose
  32-bit key at +16 equals the third argument, or 0 when none does.
- `OdsyInit32kSlotMask` (`odsy_adt.o`, offset 0xaa4, 56 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Prepares a 4112-byte slot-mask structure: `bzero` over the whole block, the word at +8 set to 0 and the
  doubleword at +0 set to its second argument.
- `odsy_i2c_short_recvbyte` (`odsy_i2c.o`, offset 0x6c94, 76 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Receives one byte on the two-wire bus. It calls `odsy_i2c_xfer_done_loop` first and returns that
  routine's non-zero result as an error. Otherwise it loads the word from the register pointer at +8 of
  the port record, returns 1 when bit 22 of the word is clear, and when it is set stores the low byte
  through the pointer in its second argument and returns 0.
- `odsyInitDDRNs` (`odsy_ddrn.o`, offset 0x0, 80 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddrn.o)`.
  Gives a board a zeroed block of 1016 bytes for the display-DDRN counters. When the pointer at board
  record +28456 is already set it clears the block with `bzero`; otherwise it takes 1016 bytes from
  `kmem_alloc` with flags 0, stores the pointer at +28456 and clears the new block, doing nothing further
  when the allocation fails.
- `odsy_DmaRegion_Pin` (`odsy_dma.o`, offset 0x23c, 96 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Pins the user pages of a DMA region once. It returns 0 at once when the pinned flag at +52 is already
  set. Otherwise it calls `useracc` with the user address at +32, the length at +40 and the flags 272,
  returns that call's result when it is non-zero, and on success sets +52 to 1 and calls
  `odsy_DmaRegion_BuildXlatTbl`, returning 0 whatever that call returns.
- `odsyInitDrawables` (`odsy_drawable.o`, offset 0x0, 104 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  Creates the drawable table of a board. It calls `odsyHashAlloc` for 13 buckets and stores the table at
  board record +0x8658, logging "odsy: failed to allocate drawable table" at severity 4 when that fails,
  and in either case initialises the multiple-reader lock at +0x8660 with `mrlock_init` under the name
  "odsy_drw_lock".
- `odsyFindDrawable` (`odsy_drawable.o`, offset 0x68, 116 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  Looks up a drawable by identifier. It takes the read side of the lock at board record +0x8660 with
  `mraccessf`, folds the identifier into the sum of its low 16 bits and its upper half, reduces that
  modulo 13 and calls `odsyHashLookup` on the table at +0x8658 with that bucket and the identifier, then
  releases the lock with `mrunlock` and returns the node or 0.
- `odsyFifoTimer` (`odsy_flow.o`, offset 0x32c, 104 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)`.
  Arms or cancels the command-FIFO watchdog. The timer id lives in the word at board record +0xb444. With
  a non-zero second argument and no timer pending it calls `timeout` for 1500 ticks with `odsyFifoTimeout`
  and the board record, saving the id; with a zero second argument and a timer pending it calls
  `untimeout` and clears the word. Other combinations do nothing.
- `odsyPinAndMapPfStatRegions` (`odsy_map.o`, offset 0x834, 108 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Maps the performance-statistics buffer of a board into the calling process. It builds a stack request
  with 1 at +16, 3 at +24 and the length word from board record +0x8560 at +8, and calls `odsyMapPages`
  with the kernel pointer at +0x8568, that length, the user-address field at +0x8570 and the handle field
  at +0x8578; it returns the call's result.
- `odsyPinAndMapASRegions` (`odsy_map.o`, offset 0x74c, 136 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Maps two regions of a board record into a process, clearing the handles at +40 and +56 first. The first
  call to `odsyMapPages` maps 64 KB from the pointer at +8 of the doubleword behind board record +8, with
  user address and handle stored at +32 and +40. If that succeeds a second call maps 0xc000 bytes from the
  next pointer at +16, storing at +48 and +56. It returns the first failure or the second result.
- `gf_OdsyInvalTLB` (`odsy_map.o`, offset 0x414, 132 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Invalidates the process's translations of a board mapping. It asks `thread_issproc` about the current
  thread and, for share-group threads, returns 0 without doing anything when bit 2 of the word at +8 of
  the `gthread_find` result is set. Otherwise it calls `ddv_invaltlb` on the handle at board record +48
  over the whole range, sets the bit numbered by the halfword loaded from the fixed kernel address
  0xffffffffffffc3a0 in the word at board record +104, and returns 0.
- `mm_set_all_cond_list_cursor` (`odsy_pmm.o`, offset 0x22c, 108 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Writes one value into every saved list cursor. When the dirty word at +4800 of the memory-manager record
  is non-zero it stores its second argument into all 6 classes of 65 slots in the table at +1680 and then
  clears the dirty word.
- `odsy_mm_B_warn2` (`odsy_pmm.o`, offset 0x3dac, 120 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Raises the memory-pressure warning to level 2. If the word at +4924 is not yet 2 it logs three severity
  4 messages through `cmn_err`: backing store oversubscribed, texture corruption likely, and a usage
  report formed from the doublewords at +4864 and +4880 with its own second argument as the configured
  maximum. It then stores 2 at +4924.
- `odsy_mm_cores_exists` (`odsy_pmm.o`, offset 0x1b58, 124 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Tests whether a co-residency range overlaps one already recorded. It looks up the word at +240 of the
  group in the container at +160 of the structure behind +8 with `OdsyLookupCSetId`, returning 0 when
  there is none. Otherwise it builds a key from the halfword at +0 of the first argument, twice, and the
  word behind the structure's +8, and calls `OdsyFindMatchingCSetElem` with `CoresidSubRangeFinder`,
  returning 1 when an element is found and 0 when not.
- `gfP_OdsyBRDMGRsetDpyMode` (`odsy_brdmgr.o`, offset 0x2114, 112 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Private-request handler that sets the display mode. It copies 8 bytes in from the user address in its
  third argument; a failed copy logs "gfP_OdsyBRDMGRsetDpyMode: bad ptr to arg" at severity 4 and stores
  14 in the result word. Otherwise it passes both words to `gf_OdsySetDisplayMode`, stores that call's
  return value in the result word pointed to by its fourth argument, and returns 0.
- `gfP_OdsyBRDMGRSetDACGain` (`odsy_brdmgr.o`, offset 0x6378, 116 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Private-request handler for the DAC gain. It copies one 4-byte word in from the user address in its
  third argument, logging "gfP_OdsyBRDMGRSetDACGain: bad ptr to arg" at severity 4 and storing 14 in the
  result word when the copy fails, and otherwise calls `odsySetDACGain` on the board pointer at +40 of its
  first argument, storing the return value in the result word and returning 0.
- `gfP_OdsyBRDMGRsetBlanking` (`odsy_brdmgr.o`, offset 0x2184, 116 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Private-request handler for screen blanking. It copies one 4-byte word in from the user address in its
  third argument, logging "gfP_OdsyBRDMGRsetBlanking: bad ptr to arg" and storing 14 in the result word on
  failure, and otherwise calls `odsyBlankScreen` on the board pointer at +40 of its first argument with
  that word, stores the return value in the result word and returns 0.
- `setDACreg` (`odsy_brdmgr.o`, offset 0x34b0, 164 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Programs the DCD2 DAC over the two-wire bus. It stores the byte 31 at port record +32. When its second
  argument is non-zero it writes the value (third argument AND 3) OR 0x18 to register 5 with
  `odsy_i2cPLLRegWrite`; a failure there logs "failed to program DCD2 DAC command" at severity 1 and ends
  the call. It then writes the low byte of the fourth argument to register 4, logging "failed to program
  DCD2 DAC value" at severity 1 when that fails.
- `restoreLineLoop` (`odsy_ctxsw.o`, offset 0x5910, 120 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Context-restore hook for line loops. It calls `odsyRestoreVertex` once with the vertex slot 0 and, when
  the count in its third argument is 2 or more, a second time with the slot ((fourth argument + 1) modulo
  3) + 1, the other arguments unchanged. A count below 2 ends after the first call.
- `restoreTriFan` (`odsy_ctxsw.o`, offset 0x5b58, 120 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Context-restore hook for triangle fans. It calls `odsyRestoreVertex` first with vertex slot 0 and then,
  if the count in the third argument is at least 2, once more with slot ((fourth argument + 1) modulo 3) +
  1; the modulo uses a signed divide by 3. All other arguments pass through unchanged.
- `restoreTriStrip` (`odsy_ctxsw.o`, offset 0x5a8c, 204 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Context-restore hook for triangle strips. It reduces (fourth argument minus count plus 4) modulo 4 with
  the sign-correcting idiom for the starting slot, then calls `odsyRestoreVertex` once per count with the
  slot running through 0 to 3 and wrapping, five arguments passed through. A count of 0 or less makes no
  call.
- `restoreTriangles` (`odsy_ctxsw.o`, offset 0x59c0, 204 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Context-restore hook for independent triangles, written with the same sequence as the strip hooks:
  starting slot (fourth argument minus count plus 4) modulo 4, then `odsyRestoreVertex` called once for
  each of the count vertices with the slot incremented modulo 4 after every call.
- `restoreQuads` (`odsy_ctxsw.o`, offset 0x5bd0, 204 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Context-restore hook for independent quadrilaterals. The starting slot is (fourth argument minus count
  plus 4) modulo 4 and `odsyRestoreVertex` is called count times, the slot stepping through 0 to 3 and
  wrapping; nothing is called when the count is not positive.
- `restoreQuadStrip` (`odsy_ctxsw.o`, offset 0x5c9c, 204 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Context-restore hook for quadrilateral strips, sharing its instruction sequence with the triangle-strip
  hook: it calls `odsyRestoreVertex` count times, starting at slot (fourth argument minus count plus 4)
  modulo 4 and advancing the slot modulo 4 after each call.
- `restorePolygon` (`odsy_ctxsw.o`, offset 0x5d68, 212 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Context-restore hook for polygons. It calls `odsyRestoreVertex` with slot 0 first, then, when the count
  is 2 or more, count minus 1 more times with a slot that starts at ((fourth argument minus count plus 3)
  modulo 3) + 1 and advances as (slot modulo 3) + 1; the modulo is a signed divide by 3.
- `odsy_DCDResetDone` (`odsy_init.o`, offset 0x2be4, 120 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Waits for the display-controller reset to complete. It stores the byte 31 at port record +32 and then
  polls up to 5000 times: `odsy_i2cDDCRegRead` of register 3, `odsy_usdelay` of 1000 microseconds, and a
  test of bit 1 of the byte read. It returns 1 as soon as the bit is set and 0 when the polls run out.
- `odsy_ProbeDenali` (`odsy_denali.o`, offset 0x338, 124 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_denali.o)`.
  Probes the Denali part. It clears the word its second argument points to and calls
  `odsy_probeDenaliChannel` for channel 0 with the board, that pointer and its third argument. Only when
  the third argument is non-zero and the halfword at board record +298 equals 3 does it make a second call
  for channel 1. It returns 0 either way.
- `bdata_from_pipename` (`odsy_hpipe.o`, offset 0x16ac, 124 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`.
  Finds a board by its pipe name. It walks the `OdsyBoardspp` table from 0 to `OdsyBoardEnum`, compares
  the name string at +216 of each board record with its argument through `strcmp`, and returns the record
  that matches, or 0 when none does.
- `odsy_copyin_cmd` (`odsy_ddc.o`, offset 0x2294, 128 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Copies a two-wire command buffer in from user space. The request's length word at +16 must be from 1 to
  256, otherwise it logs "invalid buffer length" at severity 1 and returns -22. A null user pointer at +24
  returns 0 with nothing copied; otherwise it calls `copyin` for that length and returns -14 after logging
  "copyin failed" at severity 1 if the copy faults, 0 on success.
- `odsy_i2cPLLRegWrite` (`odsy_ddc.o`, offset 0x4c, 136 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Writes one register of the clock part over the two-wire bus. It starts a write transaction with the
  device address from the byte at port record +32 shifted left by 1, sends the register number and then
  the value, the last byte flagged as final, through `odsy_i2c_start` and `odsy_i2c_sendbyte`. Any failing
  step calls `odsy_i2cReset` on the port and returns 1; success returns 0.
- `odsy_i2cDDCRegRead` (`odsy_ddc.o`, offset 0x180, 140 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Reads one register of the display-data device over the two-wire bus. It calls `odsy_i2c_start` with the
  device address from the byte at port record +32, shifted left by 1 with the low bit set, sends the
  register number with `odsy_i2c_sendbyte` and then collects one byte into the caller's buffer with
  `odsy_i2c_long_recvbyte`. A failing step calls `odsy_i2cReset` and returns 1; success returns 0.
- `odsy_i2cValidEdid` (`odsy_ddc.o`, offset 0x1ca0, 136 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Checks an EDID block header and checksum. It returns 0 unless byte 0 is 0x00, bytes 1 to 6 are 0xff and
  byte 7 is 0x00, then calls `odsy_EdidCksum` and returns 1 when the checksum is zero and 0 otherwise.
- `odsy_i2c2abAttention` (`odsy_ddc.o`, offset 0x1e8c, 140 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Services an attention request from the monitor on the two-wire bus. It clears a 5-byte buffer, calls
  `odsy_i2c_becomeSlaveRecv` with the slave address 80 and the buffer, and then `odsy_i2c_slave_recvbyte`
  for a 4-byte transfer into the buffer from +1. Each failure logs its own message ("Failed to become
  slave and recv byte from Monitor" or "Failed to recv byte from Monitor as slave") at severity 1 and
  returns 1; success returns 0.
- `odsyDiagExit` (`odsy_sched.o`, offset 0x480, 128 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_sched.o)`.
  Cleans up a diagnostics client. When the owner word at board record +45928 equals its second argument it
  calls `gfP_OdsyDIAGfreeScanbuf` for that client, and when the word at +45952 equals it, it calls
  `gfP_OdsyDIAGreleaseShadowPtrs`, each with a local result word. It returns the result word, initially 0.
- `gf_OdsyReleaseGfxSema` (`odsy_sched.o`, offset 0x3f4, 140 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_sched.o)`.
  Gives up the board's graphics flow control for the caller. When the flow handle at board record +808 is
  set, it raises the level with `splhi` and, if `gfx_flow_am_i_attached` says the caller is attached, it
  sets the word at +0x85c8 to 1 and stores 1 to the board register at 0x107c (the flow-control off switch)
  behind a `sync`, reads 0x106c back and calls `gfx_flow_detach_me`; `splx` follows. It returns 0.
- `odsyDMAIrptWakeup` (`odsy_dma.o`, offset 0x2c08, 132 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Completion wake-up for DMA. It takes the mutex at board record +5800 with `ddi_mutex_lock`, pops the
  head of the pending list at +28448 and, when bit 1 of that entry's flag word at +8 was set, clears the
  bit; if the word is then 0 it calls `odsyDMADone` on the entry and `sv_broadcast` on the variable at
  +5816. It always ends with `mutex_unlock`.
- `ReleaseTftchWarList` (`odsy_dma.o`, offset 0x319c, 136 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Frees the table of texture-fetch hazard entries. When the count at +0 is 2 or more it overwrites 48
  bytes per entry beyond the first (count times 48, minus 48) of the array at +8 with the poison byte 155.
  It then calls `kmem_free` on the array and zeroes both the array pointer and the count.
- `gfP_OdsyBRDMGRi2ccmd` (`odsy_brdmgr.o`, offset 0x62ec, 140 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Private-request handler that runs a two-wire command for a client. It copies a 48-byte command block in
  from the user address in its third argument; a failed copy logs "gfP_OdsyBRDMGRi2ccmd: bad ptr to arg"
  at severity 4, stores 14 in the result word and returns it. Otherwise it calls `odsy_i2c_cmd` with the
  board pointer at +40 of its first argument, the block and the user address. A negative result is
  returned as its negation; a non-negative one is stored in the result word and 0 is returned.
- `odsyInitRetrace` (`odsy_retrace.o`, offset 0x0, 140 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
  Initialises the retrace bookkeeping of a board. It clears 1368 bytes at board record +28504 with
  `bzero`, zeroes the words at +28564, +28572, +28528 and +28544 and the doublewords at +29864 and +28536,
  runs `init_mutex` on +28504 with the name "odsy retrace lock" and `init_sv` on +28520 with the name
  "odsy retrace sv", sets the word at +176 to 1, and points the doubleword at +184 at +28536.
- `odsy_usdelay` (`odsy_init.o`, offset 0x0, 148 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Microsecond delay that picks its method. When the word at board record +0xb468 is non-zero, or
  `in_panic_mode` says the system is panicking, it calls `us_delay`, a busy wait. Otherwise it splits the
  microsecond count into seconds (divide by 1,000,000) and nanoseconds (the remainder times 1000) and
  waits through `nano_delay`.
- `gfP_OdsyGetDrawableGeometry` (`odsy_clip.o`, offset 0xbc4, 156 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)`.
  Private-request handler that returns the geometry of a drawable. It clears the result word, calls
  `RRM_CheckValidFault` and stores 14 in the result word when that fails. Otherwise it copies the four
  words at +108, +112, +116 and +120 of the object behind +112 of its second argument out to the user
  address in its third argument; a faulting copy logs "ODSY_gfP_OdsyGetDrawableGeometry: bad ptr to arg"
  at severity 4 and stores 14. It returns the result word.
- `odsy_hpipe_cleanup` (`odsy_hpipe.o`, offset 0x1ad8, 156 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`.
  Releases a client's display-pipe slot. Reading the halfword at +588 of the object behind +112 of its
  second argument, it does nothing when that is negative and otherwise stores -1 there. It then decrements
  the board's count at +46236 when positive, locks the slot of `OdsyHpipeState` selected by the word at
  +46232 (56 bytes per slot) with `mutex_spinlock`, decrements the use word at +48 of the slot when it is
  non-zero and unlocks with `mutex_spinunlock`. It returns 0.
- `odsy_poll_dfifo_level` (`odsy_flow.o`, offset 0x0, 140 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)`.
  Waits for the display FIFO to drain to a given level. It loads the board register at 0x106c, keeps the
  low 7 bits (display FIFO fill) and compares with its second argument; while the fill is above it, it
  waits 5 microseconds with `us_delay` and rereads, up to 10000 times. It returns 0 once the level is
  reached, or logs "odsy dfifo timeout" at severity 4 and returns 1 when the polls run out.
- `gf_OdsySchedRetraceEvent` (`odsy_retrace.o`, offset 0xa80, 156 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
  Queues an event for the retrace handler. It takes the mutex at board record +28504 with `mutex_lock`,
  scans the list headed by the doubleword at +29864 (links at +40 of each event) and, when the event is
  not already listed, pushes it at the head. It unlocks and returns 1 when it queued the event and 0 when
  the event was already there.
- `gf_OdsyUnSchedRetraceEvent` (`odsy_retrace.o`, offset 0xb1c, 184 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
  Removes an event from the retrace list. It takes the mutex at board record +28504, walks the list headed
  at +29864 following the links at +40, unlinks the event when found, either at the head or after its
  predecessor, then unlocks and returns 1; it returns 0 when the event was not listed.
- `odsy_i2c2abReset` (`odsy_ddc.o`, offset 0x1d84, 264 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Sends the reset message to the monitor's ACCESS-style bus agent. It starts a transfer to address 110
  with `odsy_i2c_start` and sends the bytes 80, 129, 240 and a final 79 with `odsy_i2c_sendbyte`. Each
  failing step logs its own message ("Failed to send 'Start' sequence" or "Failed to send Host addr" among
  them) at severity 1 and returns 1; a clean run returns 0.
- `odsy_i2c2abIDRequest` (`odsy_ddc.o`, offset 0x1f18, 268 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Sends the identification request to the monitor's bus agent: `odsy_i2c_start` to address 110, then the
  bytes 80, 129 and 241, and a last byte 78 flagged final through `odsy_i2c_sendbyte`. Each step has its
  own severity 1 message (start sequence, host address, length byte, ID request op-code, checksum) and a
  failure returns 1; success returns 0.
- `odsy_i2c2abPresencechk` (`odsy_ddc.o`, offset 0x2024, 268 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Sends the presence check to the monitor's bus agent in the same frame shape as `odsy_i2c2abIDRequest`:
  `odsy_i2c_start` to address 110, the bytes 80, 129 and 241, and a final byte 72 with the last-byte flag.
  Five failure messages are possible at severity 1, one per step, and any failure returns 1; success
  returns 0.
- `odsy_DmaRegion_UnPin` (`odsy_dma.o`, offset 0x29c, 172 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Releases a DMA region. When the pinned flag at +52 is set it clears it and calls `unuseracc` with the
  user address at +32, the length at +40 and the flags 272. It then overwrites the translation table at +0
  (the byte count is the word at +8) with the poison byte 0x85, calls `kmem_free` on it and zeroes both
  the table pointer and the count.
- `odsyDMADone` (`odsy_dma.o`, offset 0x2854, 224 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Retires one DMA region record. When the page array at +16 exists it poisons the byte count at +24 with
  0x91 and frees it with `kmem_free`; with no array it logs "odsyDMADone: null xlat_tbl!" at severity 4.
  It then zeroes +24 and +16. If the word at +40 is zero it calls `sv_broadcast` and `sv_destroy` on the
  variable at +32; otherwise it broadcasts only when the word at +64 is non-zero.
- `odsy_DmaRegion_DoTransfer` (`odsy_dma.o`, offset 0x348, 196 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Starts one host-memory transfer by writing a two-doubleword kick to the command FIFO port at board base
  plus 0x110000. It converts the buffer's address with `kvtophys`, splits the physical address into a
  packed high part and a packed low part (the low 17 bits stay, bits 17 to 23 move up by 6, the remaining
  high bits go to the first doubleword), and stores a doubleword whose upper half is 0xe03 when bit 2 of
  its third argument is set and 0xe01 otherwise, each followed by a `sync`. It returns 0.
- `gfP_OdsyMMwaitXfr` (`odsy_dma.o`, offset 0x2e10, 220 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Private-request handler that waits for a memory transfer to finish. It clears the result word and logs
  "gl get aborted due to abnormal teardown" at severity 4 when the word at board record +816 is non-zero.
  Without an owner context behind +72 it logs "attempted sharegroup operation from unbound gfxp" and
  stores 1; it copies 8 bytes in from the user address (a faulting copy logs "bad ptr to arg" and stores
  14), and otherwise calls `odsyDMAWait` with the first word, the owner and a count of 1, stores the
  answer in the result word and returns it.
- `odsy_dmawait_timeout` (`odsy_dma.o`, offset 0x2364, 268 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Watchdog for a DMA wait. It takes the mutex at board record +5800 and compares the issued and completed
  counters at +6880 and +6888 (a wrap at 2 to the power of 61 is handled); with nothing outstanding it
  unlocks and returns. Otherwise it unlocks, logs "odsy board %d: DMAWAIT timeout" at severity 1 and the
  last issued value, the hardware sync value, its shadow and the outstanding count at severity 5, and
  calls `odsy_teardown`.
- `odsy_teardown` (`odsy_init.o`, offset 0x3e1c, 240 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Declares a board dead, once. It takes the semaphore at board record +28488 with `psema` and increments
  the counter at +816; only the increment that reaches 1 does the work. That pass logs the board number
  (halfword +790) at severity 1, prints the dmawait timeout and finish values at severity 5 when the words at +46208 or +46212 are non-
  zero, dumps the registers with `odsyPrintRegs` on the PIO base at +824, and calls `gthread_scan` with the callback `GfxKiller` and an argument block holding 9. The semaphore is
  released with `vsema` on every path.
- `odsyFindBoardAddr` (`odsy_init.o`, offset 0x840, 196 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Returns the PIO base address of board number N. It calls `odsyCheckBoardPointers`, and when the record
  for N exists returns the doubleword at +824. Otherwise it asks `xtalk_early_piotrans_addr` for part
  0xc013, manufacturer 35, widget N and a 0x401000-byte window; on success it creates the record with
  `odsyCheckBoardPointer`, stores the low 4 bits of the word at +36 of the window in the byte at +793, the
  base at +824 and N in the halfword at +790, and returns the base (0 when the translation fails).
- `odsyCheckBoardPointer` (`odsy_init.o`, offset 0x124, 164 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Makes sure the record for board number N exists. When the slot in `OdsyBoardspp` is empty it allocates
  0xb4e0 (46304) zeroed bytes with `kmem_zalloc`, calling `assfail` on line 238 of `odsy_init.c` if that
  fails, stores the record and puts N in the halfword at +790. In every case it then stores N in the word
  at +240 and sets the word at +0xb468, the flag that selects the busy-wait delay, to 1.
- `odsyInitDMA` (`odsy_init.o`, offset 0x2668, 244 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Sets up the DMA state of board number N. It runs `init_mutex` on +5800 and `init_sv` on +5816, zeroes
  the four doublewords behind the pointer at +888, and takes two slots from the allocator at +29952 with
  `OdsyAlloc32kSlot`; each slot number (stored at +5840 and +6904) locates a halfword in the area at +880,
  which is set to 0xffff, and their addresses go to +5824 and +6896. It also sets the halfword +5836 to
  0xffff, zeroes +5834, and clears the counters at +6880, +6888, +7944 and +7952, the words at +5844,
  +5848, +6908 and +6912, and the pending list at +28448.
- `odsyMapPages` (`odsy_map.o`, offset 0x8e4, 212 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Maps kernel memory into a process in 16 KB pages. It calls `gfxdd_mmap_mem_ex` for the length argument
  and returns 12 if that fails. Otherwise it locks the new mapping with `ddv_lock`, calls `ddv_mappages`
  for the kernel base in its third argument and (length plus 16383) shifted right by 14 pages, and, when
  the caller supplied an address pointer and the mapping succeeded, stores `ddv_getaddr` of the mapping
  through it. It unlocks with `ddv_unlock`; a failed `ddv_mappages` is undone with `gfxdd_munmap` and its
  result returned, otherwise it returns 0.
- `odsyPinAndMapGctxSwShadowRgn` (`odsy_map.o`, offset 0x498, 204 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Pins and maps the 11128-byte context-switch shadow area of a client into the kernel. It gets the cache
  bits with `pte_cachebits`, calls `useracc` with the user address, 11128 and the flags 273 (a non-zero
  result is logged at severity 4 and stored in the result word), then `maputokv` with the cache bits ORed
  with 7. If that fails it calls `unuseracc`, logs at severity 4, and stores 22. On success it stores the
  kernel address at +176 and the user address at +184 of the record and writes 0 to the result word.
- `odsyUnpinAndUnmapSGRegions` (`odsy_map.o`, offset 0x6ac, 160 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Releases the surface-group mappings of a board. It iterates the colour-set container at record +120 with
  `OdsyInitCSetCursor` and `OdsyNextCSetElem`; for each element it calls `odsyUnmapPages` when both the
  buffer pointer at +8 and the field at +16 are set, frees the 16384-byte buffer at +8 and then the
  32-byte element, each with `kmem_free`. It ends with `OdsyDestroyCSet` and no callback.
- `odsyUnpinAndUnmapGctxRegions` (`odsy_map.o`, offset 0x564, 232 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Releases the context regions of a client record. It calls `odsyUnmapPages` on the field at +208 when the
  word at +200 is set; for the shadow mapping at +176 it calls `unmaputokv` and `unuseracc` (11128 bytes,
  flags 273) on the addresses at +176 and +184 and clears both. It then walks the colour-set container at
  +312, unmapping each element whose field at +16 is set, freeing its 16384-byte buffer at +8 and the
  32-byte element, and finishes with `OdsyDestroyCSet`.
- `gf_OdsySuspend` (`odsy_sched.o`, offset 0x0, 184 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_sched.o)`.
  Takes a client off the board. It returns 0 at once unless the board exists, the client is the current
  owner at +72 and bits 1:0 of its flag word at +4 are non-zero. When the flow handle at +808 is set it
  then raises the level with `splhi`, and if `gfx_flow_am_i_attached` is true sets the word at +0x85c8 to
  1, stores 1 to the board register at 0x107c behind a `sync`, reads 0x106c back and calls
  `gfx_flow_detach_me`; `splx` follows and the result is 0.
- `gf_OdsyResume` (`odsy_sched.o`, offset 0xb8, 248 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_sched.o)`.
  Puts a client back on the board. For the current owner at +72 with bits 1:0 of its flag word at +4 set,
  under `splhi`, it calls `gfx_flow_attach_me` when the client is not attached, takes
  `gfx_flow_credit_tnum_get`, forms the flow-control word (the saved word at +34244 masked with a literal-
  pool constant, the target number shifted left by 12), stores it in the shadow and to the board register
  at 0x1074, and stores 0 to the shadow at +34248 and to the register at 0x107c, each followed by a
  `sync`. When its third argument is 0 and the word at +120 is non-zero, it then calls `force_resched` and
  clears that word. It returns 0.
- `odsy_color` (`odsy_tport.o`, offset 0x9b8, 216 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`.
  Text-port colour change. Unless the global `odsy_tport_mute` is set it counts itself in
  `odsy_tport_inuse`, takes `odsy_tport_lock` and stores the colour argument at +8 of a static object. It
  then writes eight 32-bit words to the command FIFO port at the board base plus 0x110000, each followed
  by a `sync`: 0x22008001, 0x23008003, 0xce80cc08, three zeros, 0xc580c406 and finally the colour value.
  The use count is decremented and the lock released with `mutex_spinunlock`.
- `odsy_mapcolor` (`odsy_tport.o`, offset 0xa90, 256 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`.
  Text-port colour-map write. Unless `odsy_tport_mute` is set it counts itself in `odsy_tport_inuse`,
  takes `odsy_tport_lock`, and waits for the display FIFO to empty with `odsy_poll_dfifo_level` at level
  0. It packs the three 8-bit component arguments into 10-bit fields at bits 0, 10 and 20 of the low word
  (each value times 4 plus its top 2 bits) and puts 0x30000001 with the index shifted left by 14 in the
  high word. One 64-bit store of that pair goes to the display FIFO window at the board base plus
  0x400000, followed by a `sync`.
- `odsy_ProbeCompositor` (`odsy_compositor.o`, offset 0x99c, 192 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_compositor.o)`.
  Reads the compositor's identification register. It tries one channel, or two when the halfword at board
  record +298 equals 3, calling `odsyCompositorRegRead` with the register numbers 171 and 87 for each
  channel in turn and stopping at the first read that succeeds. A success stores a derived word through
  its second argument (the value read with bits 3 to 1 replaced by its own bits 1:0 shifted up, the
  channel number in bit 3 and bit 0 forced to 1) and returns 0; if every read fails it stores 0 and
  returns 1.
- `gfP_OdsyDIAGfreeScanbuf` (`odsy_diag.o`, offset 0x218, 160 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`.
  Releases the diagnostic scan buffer of a client. It takes the mutex at board record +0xb338 with
  `mutex_lock`. When the owner word at +45928 is the calling client it calls `odsyUnmapPages` on the
  handle at +0xb358, frees the buffer pointed to at +45896 with the size at +45920 through `kmem_free`,
  and zeroes the owner, the size and the two pointers. It always unlocks, stores 0 in the result word and
  returns 0.
- `gfP_OdsyDIAGreleaseShadowPtrs` (`odsy_diag.o`, offset 0x590, 228 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`.
  Releases the diagnostic shadow-pointer mappings of a client. It takes the mutex at board record +0xb370
  with `mutex_lock`. If the owner word at +45952 is not the caller it unlocks and stores 1 in the result
  word. Otherwise it calls `odsyUnmapPages` on the handle at +0xb3c8 and on four handles starting at
  +0xb388, zeroing the four doublewords from +45992 as it goes, clears the owner word, unlocks, stores 0
  in the result word and returns 0.
- `odsy_i2cPLLRegRead` (`odsy_ddc.o`, offset 0xd4, 172 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Reads one register of the clock part over the two-wire bus. It starts a write transfer to the device
  address from the byte at port record +32 shifted left by 1, sends the register number, restarts the
  transfer with the address shifted left and the low bit set, and collects one byte into the caller's
  buffer with `odsy_i2c_long_recvbyte`. Any failing step calls `odsy_i2cReset` and returns 1; success
  returns 0.
- `odsy_i2cPLLSeqRegWrite` (`odsy_ddc.o`, offset 0x20c, 240 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Writes a run of consecutive registers of the clock part. It starts a write transfer to the address from
  the byte at port record +32 shifted left by 1, sends the first register number, and then sends the N
  bytes of its buffer with `odsy_i2c_sendbyte`, only the last one carrying the final-byte flag. A failing
  step calls `odsy_i2cReset` and returns 1; success returns 0.
- `odsy_i2cPLLSeqRegRead` (`odsy_ddc.o`, offset 0x2fc, 276 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Reads a run of consecutive registers of the clock part. It writes the first register number after a
  start to the address at port record +32 shifted left by 1, restarts with the fixed address byte 77,
  takes the first byte with `odsy_i2c_long_recvbyte`, the middle bytes with `odsy_i2c_short_recvbyte` and
  the last byte with another `odsy_i2c_long_recvbyte` that has the final flag set. Any failure calls
  `odsy_i2cReset` and returns 1; success returns 0.
- `odsyDownloadUcode` (`odsy_ucode.o`, offset 0x0, 304 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ucode.o)`.
  Sends microcode lines to the board through the command FIFO port at the board base plus 0x110000. The
  hardware line must be below 2047 with line plus count below 2048, and the software line plus count must
  fit in the line count at board record +34132; otherwise it logs "odsyDownloadUcode: invalid args" at
  severity 4 and returns -1. It first stores the word 0x27008000 with the hardware line (low 10 bits in
  place, the rest shifted to bit 23), then, for each line of 6 halfwords held 12 bytes apart in the buffer
  at +34136, stores the halfwords from the sixth down to the first, each as 0x40008000 with the same split
  of the halfword. Every store is followed by a `sync`. It returns 0.
- `gf_OdsyDownload` (`odsy_ucode.o`, offset 0x130, 840 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ucode.o)`.
  Private-request handler that loads microcode supplied by a client. The byte length at +0 of the request
  must give 1 to 4093 whole lines of 12 bytes, otherwise it logs "invalid ucode length" or "invalid ucode
  alignment" at severity 4 and returns 22. It pins the user buffer with `userdma` (failure logs and
  returns 14), records the line count at board record +34132, maps the buffer with `maputokv` (a failed
  map is logged and the copy proceeds anyway), copies it with `bcopy` to the buffer at +34136 and releases
  the pin and mapping. It then makes the client the board owner, attaches to flow control if needed, and
  calls `odsyDownloadUcode` for hardware line 0 and at most 2047 lines. It always detaches again, with the
  0x107c store of 1 and a read of 0x106c, and returns 0 on success or 22 when the download is refused.
- `odsyInitIntr` (`odsy_init.o`, offset 0x68c, 436 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Connects the board's five crossbar interrupts. It duplicates the device description with
  `device_desc_dup`, makes five `xtalk_intr_alloc` calls stored at board record +45792 to +45824 and frees
  the description, reads each source's vector with `xtalk_intr_vector_get` into the halfwords at +45832 to
  +45840 (the last vector is stored twice), and connects the five sources with `xtalk_intr_connect` to
  `odsyXtErrorInterrupt`, `odsyFlagInterrupt`, `odsyDmaInterrupt`, `odsyRetraceHandler` and
  `odsySsyncInterrupt` with the board record as argument. It finally stores the addresses
  `xtalk_intr_addr_get` gives for the first two sources at +45848 and +45856.
- `odsy_attach` (`odsy_init.o`, offset 0x524, 360 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Crossbar attach entry for one board. It takes the next board number from `OdsyBoardEnum` under
  `GfxBoardInitSema`, adds the character device "odsy" with `hwgraph_char_device_add`, maps a
  0x401000-byte PIO window with `xtalk_piotrans_addr` into the record at +824 and stores the widget id at
  +793, the master id at +792 and 2 at +788. When bits 31:28 of the word at +4 of the window are 2 or more
  it also attaches the NIC and runs `odsy_set_gfx_mfg_nic_name`, logging "odsy_set_gfx_mfg_nic_name
  failed" at severity 1 if that fails. It calls `odsyReset` unless the board number equals a global in
  small data, then `odsyInitBoardGfx` and `odsyInitIntr`, and returns 0.
- `odsy_earlyinit` (`odsy_init.o`, offset 0x1c8, 464 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Early console-time initialisation. It sets up `odyssey_xbow_spinlock` and the mutex "odyssey_xbow_lock",
  calls `odsy_hpipe_sema_init`, and reads the boot option "console": a value starting with 'd' or 'D'
  returns 0 at once, and a second entry (a global flag already set) logs "odsy_earlyinit re-entered" at
  severity 4 and returns 0. Otherwise it finds board 0 with `odsyFindBoardAddr`, waits in 200-tick
  `timeout`/`psema` steps while the word at +28480 of its record is 2 or more (logging "waiting to re-
  initialize gfx board" at severity 5), calls `odsyReset` for board 0 and `odsy_tport_lock_init`,
  registers the text port with `htp_register_board` and returns 1.
- `odsyInitBoardGfx` (`odsy_init.o`, offset 0x904, 640 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Builds the software state of a board after attach. It clears the first 200 bytes of the record,
  initialises the semaphores, mutexes, sync variable and spin lock the driver uses (named "odsy dfifo
  sema", "odsy mouse pos lock", "scanbuf_lock", "shdwptr_lock" and "pfstat_lock" among them) at their
  fixed offsets, calls `odsyInitDDRNs` and `odsyInitHwWrRgn`, and allocates 0xc000 zeroed bytes into the
  pointer at +888, whose offset +32 becomes the microcode buffer pointer at +34136. It adds hardware-
  inventory entries built from the memory-size word at +252 and the flag words at +280 and +296, sets +176
  to 1, +88 to 40 and +20 to 1, and registers the board with `GfxRegisterBoard`.
- `odsyInitHwWrRgn` (`odsy_init.o`, offset 0x3cf4, 296 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Allocates the software sync-write area of a board. It does nothing when the pointer at +880 is already
  set. Otherwise it takes 0x20000 zeroed bytes from `kmem_zalloc`, logging "odsy: couldn't allocate the sw
  sync wr/hw shadow cache" with `printf` if that fails; it clears four doublewords at +29888 and four
  words at +29920, advances in 16384-byte steps to the first address that is a multiple of 0x10000
  (recording each skipped step at +29880), stores that address at +880 and fills the four doublewords at
  +29888 with consecutive 16384-byte blocks above it.
- `gf_OdsyMapGfx` (`odsy_map.o`, offset 0x0, 660 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Maps the board's register windows into a client with `v_mapkvsegment`, one call per window, starting
  from the client's mapping address: PIO base + 0x100000 (1 page), + 0x120000 (1 page), and, for clients
  whose flag word at +4 has bit 5 set, + 0x0 (2 pages), + 0x110000 (the command FIFO, 1 page), + 0x118000,
  + 0x200000, + 0x220000 (8 pages) and + 0x400000 (the display FIFO). Pages are 16 KB. It then sets bit 0
  of the flag word, attaches the client to flow control with `gfx_flow_attach_me` and the 0x1074 and
  0x107c stores when it is not attached, records the current CPU in the word at +104 and returns 0 or -1
  depending on the combined mapping results.
- `gf_OdsyUnMapGfx` (`odsy_map.o`, offset 0x294, 384 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Removes a client's window mappings. For the current owner at +72 with flag bit 0 set it clears the bit
  under `splhi` and detaches from flow control (a 1 stored to the board register at 0x107c, a read of
  0x106c, `gfx_flow_detach_me`). When the handle at +48 is set it calls `ddv_invalphys_fal` for the whole
  range, follows with `ddv_invaltlb` when that returns 0, records the current CPU as a bit in the word at
  +104, and logs "odsy: unmapgfx: Unexpected return value from ddv_invalphys" at severity 4 for any result
  other than 0 or 2.
- `gfP_OdsySetClipMask` (`odsy_clip.o`, offset 0xb1c, 168 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)`.
  Private-request handler that sets a client's clip mask. It clears the result word, takes the graphics
  context behind +112 of the owner at +72, and calls `RRM_CheckValidFault`; a negative answer stores 14 in
  the result word. Otherwise it copies 16 bytes in from the user address into the context at +124 (a
  faulting copy logs "odsy: bad ptr to arg in SetClipMask" at severity 4 and stores 14) and calls
  `gf_OdsyValidateClip` with the second argument and the structure at +96 of the pointer at +120 of that
  argument. Its return value goes into the result word and is returned.
- `gfP_OdsyHPbind` (`odsy_hpipe.o`, offset 0x10f8, 360 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`.
  Private-request handler that binds a client to a display pipe. It copies a 4-byte pipe number in from
  the user address; a faulting copy logs "gfP_OdsyHPbind: bad ptr to arg" at severity 4 and stores 14.
  Under the slot's `mutex_spinlock` in `OdsyHpipeState` (56 bytes per slot, number 0 to 64) it stores 22
  in the result word unless the slot's state word at +8 is 1. For a valid slot it increments the board's
  count at +46236, stores the pipe number at +46232, increments the slot's use word at +56 and stores the
  number in the halfword at +588 of the client context behind +112 (logging "rnpp null in hpipe bind" when
  there is none), and stores 0 as the result.
- `gfP_OdsyHPgetConfig` (`odsy_hpipe.o`, offset 0x6b0, 324 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`.
  Private-request handler that reports the display-pipe configuration. It copies a 524-byte request in
  from the user address (a faulting copy logs "bad ptr to arg" at severity 4 and stores 14) and stores 22
  if `OdsyHpipeState` is missing or its first word is 0. For the pipe number in the word at +8, 0 to 63,
  with the slot state word at +8 equal to 1, it fills up to four 16-byte output entries from the boards in
  the slot's table, each with the halfword at +790 of the board record in its +24, the words at +46240 and
  +46244 in its +12 and +20 and 0 in its +16. It copies the 524 bytes back out, logging "bad hyperpipe
  config arg user-land pointer" and storing 14 if that fails, and returns the result word.
- `odsy_copyin_frame_line_tables` (`odsy_brdmgr.o`, offset 0x33dc, 212 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Copies the two timing tables of a request in from user space. It allocates the first table with
  `kern_calloc` (the count in the word at +8, 2 bytes per entry), copies it in from the user pointer at +0
  and replaces that pointer by the kernel copy; it does the same for the second table with the count at
  +24 and the pointer at +16. A failed allocation frees what was taken and returns 12, a faulting copy
  frees both tables and returns 14, and success returns 0.
- `odsy_reconfigDCD2FPLD` (`odsy_brdmgr.o`, offset 0x373c, 236 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Reprograms the DCD2 programmable logic over the two-wire bus. It stores the byte 31 at port record +32,
  writes register 3 with 8, registers 1 and 2 with 0 and register 3 again with 1 through
  `odsy_i2cPLLRegWrite`, each failure logged at severity 1 and returned as 1, and then waits 600000
  microseconds with `odsy_usdelay` on the board pointer at +16. It returns 0 on success.
- `gfP_OdsyBRDMGRconfigFb` (`odsy_brdmgr.o`, offset 0x1088, 260 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Private-request handler that configures the frame buffer. It copies a 52-byte request in from the user
  address (a faulting copy logs at severity 4 and stores 14) and rejects it with 22 unless the first two
  words are below 4096 and the word at +8 is 8, 16 or 32. A valid request goes to `odsyConfigFb` on the
  board pointer at +40 of the first argument, the 52 bytes are copied back out (a fault stores 14), and
  `odsyConfigFb`'s result is stored in the result word.
- `gfP_OdsyBRDMGRloadTimingTable` (`odsy_brdmgr.o`, offset 0x5d14, 296 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Private-request handler that loads a display timing table. It copies a 320-byte request in from the user
  address (a fault logs at severity 4 and stores 14), then runs `odsy_copyin_frame_line_tables`, whose
  error is stored and returned. With the flow handle at board record +808 set and `RRM_CheckValidFault`
  successful it increments the busy count at +80, calls `odsyLoadTimingTable`, stores its result,
  decrements the count and frees both tables with `kern_free`; a missing handle or failed validation frees
  the tables and stores 14.
- `odsy_restoreDCD2FPGA` (`odsy_brdmgr.o`, offset 0x67f4, 384 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Restores the DCD2 programmable logic after a reset. On the port record embedded in the board at +0xb408
  it stores the byte 31 at +32 and polls register 3 with `odsy_i2cDDCRegRead` up to 10 times, waiting
  250000 microseconds between tries, for bit 1. It then writes the saved values from the board record to
  registers 0 through 5 with `odsy_i2cPLLRegWrite` (the byte 23 at the port's +32 first), and, when the
  halfword at +302 is 0, a value 7 to register 50. Any failed write returns 1; success returns 0.
- `odsy_initDCD2DAC` (`odsy_brdmgr.o`, offset 0x3554, 488 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Initialises the DCD2 DAC over the two-wire bus. On the port record in its second argument it stores the
  byte 31 at +32 and writes register 3 of the clock part with 0; a failure logs at severity 1 with the
  halfword at +790 of the board behind +16 and returns 1. It then makes a fixed series of `setDACreg`
  calls (among them the values 9, 8, 41, 4, 255, 5, 236 and 65 with command codes 0 to 3) and finishes by
  writing the index of each of 256 entries three times, with `setDACreg` command 1, which loads an
  identity ramp. It returns 0.
- `odsy_dviFPGARegWrite` (`odsy_dvi.o`, offset 0x0, 140 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_dvi.o)`.
  Writes one byte to the DVI FPGA over the two-wire bus. It starts a write transfer to the device address
  held at port record +32, shifted left by 1, with `odsy_i2c_start`, and sends the value with
  `odsy_i2c_sendbyte` flagged as the final byte. A failed step logs a severity 1 message ("Failed to send
  'Start' sequence" or "Failed to execute first 'SendByte' sequence"), calls `odsy_i2cReset` and returns
  1; success returns 0.
- `odsy_dviFPGARegRead` (`odsy_dvi.o`, offset 0x448, 148 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_dvi.o)`.
  Reads one byte from the DVI FPGA over the two-wire bus. It starts a transfer to the address at port
  record +32 shifted left by 1 with the low bit set, then receives a single byte into the caller's buffer
  with `odsy_i2c_recv_1byte`. A failed step logs a severity 1 message, calls `odsy_i2cReset` and returns
  1; success returns 0.
- `odsy_setDVIFPGA` (`odsy_dvi.o`, offset 0x198, 156 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_dvi.o)`.
  Read-modify-write of the DVI FPGA register. It stores the device address 58 at port record +32, reads
  the byte with `odsy_dviFPGARegRead`, clears the bits in its second argument, ORs in its third argument
  and writes the result back with `odsy_dviFPGARegWrite`. A failed read or write logs "Failed to read FPGA
  register" or "Failed to set FPGA register" at severity 1 and returns 1; success returns 0.
- `odsy_readDVIRegs` (`odsy_dvi.o`, offset 0x750, 164 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_dvi.o)`.
  Reads the whole DVI output state of a port. It calls `odsy_read_XmitRegs` for the transmitter at device
  address 56 (logged as the master) and again for 57 (the slave), then stores 58 at port record +32 and
  reads the FPGA byte with `odsy_dviFPGARegRead`. Each failing step logs its own severity 1 message and
  the function returns 1; success returns 0.
- `odsy_setDVIRegs` (`odsy_dvi.o`, offset 0x37c, 204 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_dvi.o)`.
  Programs the DVI output of a port. It runs `odsy_loadDVIFPGA`, then `odsy_setDVIFPGA` with mask 3 and
  value 0, then `odsy_write_XmitRegs` for device address 56 (master) and 57 (slave). A failure of any of
  the four logs a severity 1 message and sets the result to 1 but the later steps still run; the result is
  0 when all succeed.
- `odsy_write_XmitRegs` (`odsy_dvi.o`, offset 0x234, 328 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_dvi.o)`.
  Writes the configuration of one DVI transmitter. It stores the device address from its second argument
  at port record +32 and calls `odsy_i2cPLLRegWrite` for register 8 with 49, register 9 with 25, register
  10 with 240 when the device address is 56 and 112 otherwise, register 12 with 137, register 13 with 128
  and register 51 with 0. The first failure logs at severity 1 and returns 1; success returns 0.
- `odsy_read_XmitRegs` (`odsy_dvi.o`, offset 0x5d8, 376 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_dvi.o)`.
  Reads back the same six transmitter registers that `odsy_write_XmitRegs` sets. After storing the device
  address from its second argument at port record +32 it calls `odsy_i2cXmitRegRead` for registers 8, 9,
  10, 12, 13 and 51 in that order, waiting 10000 microseconds with `odsy_usdelay` after each. A failed
  read logs a severity 1 message and returns 1; success returns 0.
- `odsy_i2cXmitRegRead` (`odsy_dvi.o`, offset 0x4dc, 252 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_dvi.o)`.
  Reads one transmitter register over the two-wire bus: a write transfer to the address at port record +32
  shifted left by 1 that sends the register number, a restart with the low address bit set, and one byte
  received into the caller's buffer with `odsy_i2c_recv_1byte`. Failure logs at severity 1, calls
  `odsy_i2cReset` and returns 1; success returns 0.
- `odsy_loadDVIFPGA` (`odsy_dvi.o`, offset 0x8c, 268 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_dvi.o)`.
  Waits for the DVI FPGA to finish loading. It finds the node's module with `cnodemodule_lookup` from the
  board's node number at +0xb43c of the board behind port record +16, then up to twice waits 500000
  microseconds with `odsy_usdelay` and reads the expander word with `elsc_ody_expander_get`; it stops when
  bit 3 of that word is set. A failed read logs a severity 1 message and returns 1; otherwise it returns
  0.
- `gfx_flow_pipe_head` (`odsy_flow.o`, offset 0x0, 32 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_flow.o)`.
  Returns bit 0 of the byte at +1320 in the per-processor structure of the current CPU. The CPU number
  comes from the halfword at the fixed kernel address 0xffffffffffffc428, which indexes the `pdaindr`
  table at 16 bytes per entry.
- `gfx_flow_clean_up_other_gfxp` (`odsy_flow.o`, offset 0x20, 156 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_flow.o)`.
  Evicts the thread's other graphics contexts from flow control. It finds the current thread's list with
  `gthread_find_gfxp`, walks it through the link at +24, and for every entry that is not its argument and
  has bit 0 of the word at +4 set, calls the method at +104 of the operation table at +32 under `splhi`
  and `splx`.
- `find_odsypipe` (`odsy_init.o`, offset 0x1c8, 156 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_init.o)`.
  Looks up a pipe in the hardware graph. It calls `find_gfxpipe`, returns 0 when nothing is found or when
  the byte at +5 of the result is not 84, and otherwise calls `find_first_component` with 10. When that
  finds a component it stores the halfword at +34 through the second argument and the byte at +32 through
  the third (each only when the pointer is non-null) and returns 1.
- `odsy_fc_detach` (`odsy_init.o`, offset 0x1f98, 188 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_init.o)`.
  Detaches the calling processor's pipe from flow control on the new host. With n set to bit 0 of the per-
  processor byte at +1320, as `gfx_flow_pipe_head` computes it, it stores a literal-pool doubleword at
  offset 768 plus 40n of a literal-pool base, syncs, sets the word at +0x85c8 of the board to 1, stores 1
  to the board register at 0x107c, reads 0x106c back, and stores the doubleword 64 at offset 776 plus 40n
  of the same base behind another `sync`.
- `odsy_flow_await_returned_credits` (`odsy_flow.o`, offset 0xbc, 484 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_flow.o)`.
  Waits until the board has returned its flow-control credits. If the teardown counter at +816 is non-zero
  it returns at once. It compares `gfx_flow_credit_count_get` with `gfx_flow_credit_bias_get` and polls
  with `us_delay` of 1 up to 25000 times while the count is below the bias, then checks the count against
  `gfx_flow_credit_total_get`. A shortfall logs "gfx credits below bias" or an over-maximum message at
  severity 6, after which it detaches with `gfx_flow_detach_me` behind a 0x107c store of 1, calls
  `odsy_teardown`, waits in 5 microsecond steps for the command FIFO count in bits 15:7 of register 0x106c
  to reach 0, stores 0, 1 and 0 to register 0x1084, and calls `gfx_flow_reset`, `gfx_flow_attach_me`, the
  0x1074 and 0x107c stores and `gfx_flow_attach_me_finish`.
- `odsy_init_ddrncount_timeout` (`odsy_init.o`, offset 0x147c, 56 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_init.o)`.
  Timeout handler for the DDRN count wait during initialisation. It logs "odsy-kern: ddrncount timeout" at
  severity 4 through `cmn_err` and then calls `vsema` on the semaphore in its argument to release the
  thread waiting for the count.
- `odsy_hpipe_invalidate` (`odsy_hpipe.o`, offset 0x20, 68 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)`.
  Forgets the cached display-pipe state of a board. It zeroes the two doublewords at board record +46240
  and +46248, then takes `odsy_hpipe_state_lock` with `mutex_spinlock`, clears the first word of the
  structure at `OdsyHpipeState` when that pointer is set, and releases the lock with `mutex_spinunlock`.
- `odsyFifoTimeout` (`odsy_flow.o`, offset 0x67c, 100 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_flow.o)`.
  Handler for a command-FIFO timeout. It calls `odsy_teardown`, clears the word at board record +104,
  calls `odsyDisableInterrupts`, decrements the word at +80 of the structure that +40 of the pointer at
  +72 points to, logs "odsy: board %d - CFIFO timeout" at severity 4 with the halfword at +790, and
  finally zeroes the word at board record +0xb45c.
- `odsyFifoTimer` (`odsy_flow.o`, offset 0x614, 104 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_flow.o)`.
  Arms or cancels the command-FIFO watchdog. The timer id lives in the word at board record +0xb45c. With
  a non-zero second argument and no timer pending it calls `timeout` for 1500 ticks with `odsyFifoTimeout`
  and the board record, saving the id; with a zero second argument and a timer pending it calls
  `untimeout` and clears the word. Other combinations do nothing.
- `gfP_OdsyBRDMGRSetDACGain` (`odsy_brdmgr.o`, offset 0x6490, 116 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_brdmgr.o)`.
  Private-request handler for the DAC gain. It copies one 4-byte word in from the user address in its
  third argument, logging "gfP_OdsyBRDMGRSetDACGain: bad ptr to arg" at severity 4 and storing 14 in the
  result word when the copy fails, and otherwise calls `odsySetDACGain` on the board pointer at +40 of its
  first argument, storing the return value in the result word and returning 0.
- `gfP_OdsyBRDMGRi2ccmd` (`odsy_brdmgr.o`, offset 0x6404, 140 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_brdmgr.o)`.
  Private-request handler that runs a two-wire command for a client. It copies a 48-byte command block in
  from the user address in its third argument; a failed copy logs "gfP_OdsyBRDMGRi2ccmd: bad ptr to arg"
  at severity 4, stores 14 in the result word and returns it. Otherwise it calls `odsy_i2c_cmd` with the
  board pointer at +40 of its first argument, the block and the user address. A negative result is
  returned as its negation; a non-negative one is stored in the result word and 0 is returned.
- `odsy_poll_dfifo_level` (`odsy_flow.o`, offset 0x2a0, 144 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_flow.o)`.
  Waits for the display FIFO to drain to a given level. It loads the board register at 0x106c, keeps the
  low 7 bits (display FIFO fill) and compares with its second argument; while the fill is above it, it
  waits 5 microseconds with `us_delay` and rereads, up to 10000 times. It returns 0 once the level is
  reached, or logs "odsy dfifo timeout" at severity 4 and returns 1 when the polls run out.
- `gf_OdsyInvalTLB` (`odsy_map.o`, offset 0x528, 144 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_map.o)`.
  Invalidates the process's translations of a board mapping. It asks `thread_issproc` about the current
  thread and, for share-group threads, returns 0 without doing anything when bit 2 of the word at +8 of
  the `gthread_find` result is set. Otherwise it calls `ddv_invaltlb` on the handle at board record +48
  over the whole range, sets the bit numbered by the low 6 bits of the halfword loaded from the fixed
  kernel address 0xffffffffffffc428 in the doubleword at board record +104 plus 8 times that halfword
  divided by 64, and returns 0.
- `odsy_usdelay` (`odsy_init.o`, offset 0x0, 148 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_init.o)`.
  Microsecond delay that picks its method. When the word at board record +0xb480 is non-zero, or
  `in_panic_mode` says the system is panicking, it calls `us_delay`, a busy wait. Otherwise it splits the
  microsecond count into seconds (divide by 1,000,000) and nanoseconds (the remainder times 1000) and
  sleeps through `nano_delay`.
- `gfP_OdsyGetDrawableGeometry` (`odsy_clip.o`, offset 0xc30, 156 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_clip.o)`.
  Private-request handler that returns the geometry of a drawable. It clears the result word, calls
  `RRM_CheckValidFault` and stores 14 in the result word when that fails. Otherwise it copies the four
  words at +108, +112, +116 and +120 of the object behind +112 of its second argument out to the user
  address in its third argument; a faulting copy logs "ODSY_gfP_OdsyGetDrawableGeometry: bad ptr to arg"
  at severity 4 and stores 14. It returns the result word.
- `odsy_hpipe_cleanup` (`odsy_hpipe.o`, offset 0x1ad8, 156 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)`.
  Releases a client's display-pipe slot. Reading the halfword at +588 of the object behind +112 of its
  second argument, it does nothing when that is negative and otherwise stores -1 there. It then decrements
  the board's count at +46260 when positive, locks the slot of `OdsyHpipeState` selected by the word at
  +46256 (56 bytes per slot) with `mutex_spinlock`, decrements the use word at +48 of the slot when it is
  non-zero and unlocks with `mutex_spinunlock`. It returns 0.
- `odsyCheckBoardPointer` (`odsy_init.o`, offset 0x124, 164 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_init.o)`.
  Makes sure the record for board number N exists. When the slot in `OdsyBoardspp` is empty it allocates
  0xb4f8 (46328) zeroed bytes with `kmem_zalloc`, calling `assfail` on line 238 of `odsy_init.c` if that
  fails, stores the record and puts N in the halfword at +790. In every case it then stores N in the word
  at +240 and sets the word at +0xb480, the flag that selects the busy-wait delay, to 1.
- `gfP_OdsySetClipMask` (`odsy_clip.o`, offset 0xb88, 168 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_clip.o)`.
  Private-request handler that sets a client's clip mask. It clears the result word, takes the graphics
  context behind +112 of the owner at +72, and calls `RRM_CheckValidFault`; a negative answer stores 14 in
  the result word. Otherwise it copies 16 bytes in from the user address into the context at +124 (a
  faulting copy logs "odsy: bad ptr to arg in SetClipMask" at severity 4 and stores 14) and calls
  `gf_OdsyValidateClip` with the second argument and the structure at +96 of the pointer at +120 of that
  argument. Its return value goes into the result word and is returned.
- `gfP_OdsyMMwaitXfr` (`odsy_dma.o`, offset 0x2da4, 220 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_dma.o)`.
  Private-request handler that waits for a memory transfer to finish. It clears the result word and logs
  "gl get aborted due to abnormal teardown" at severity 4 when the word at board record +816 is non-zero.
  Without an owner context behind +72 it logs "attempted sharegroup operation from unbound gfxp" and
  stores 1; it copies 8 bytes in from the user address (a faulting copy logs "bad ptr to arg" and stores
  14), and otherwise calls `odsyDMAWait` with the first word, the owner and a count of 1, stores the
  answer in the result word and returns it.
- `odsy_reconfigDCD2FPLD` (`odsy_brdmgr.o`, offset 0x37c0, 236 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_brdmgr.o)`.
  Reprograms the DCD2 programmable logic over the two-wire bus. It stores the byte 31 at port record +32,
  writes register 3 with 8, registers 1 and 2 with 0 and register 3 again with 1 through
  `odsy_i2cPLLRegWrite`, each failure logged at severity 1 and returned as 1, and then waits 600000
  microseconds with `odsy_usdelay` on the board pointer at +16. It returns 0 on success.
- `odsyUnpinAndUnmapGctxRegions` (`odsy_map.o`, offset 0x684, 236 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_map.o)`.
  Releases the context regions of a client record. It calls `odsyUnmapPages` on the field at +208 when the
  word at +200 is set; for the shadow mapping at +176 it calls `unmaputokv` and `unuseracc` (11128 bytes,
  flags 273) on the addresses at +176 and +184 and clears both. It then walks the colour-set container at
  +312, unmapping each element whose field at +16 is set, freeing its 16384-byte buffer at +8 and the
  32-byte element, and finishes with `OdsyDestroyCSet`.
- `gfP_OdsyBRDMGRloadTimingTable` (`odsy_brdmgr.o`, offset 0x5e2c, 296 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_brdmgr.o)`.
  Private-request handler that loads a display timing table. It copies a 320-byte request in from the user
  address (a fault logs at severity 4 and stores 14), then runs `odsy_copyin_frame_line_tables`, whose
  error is stored and returned. With the flow handle at board record +808 set and `RRM_CheckValidFault`
  successful it increments the busy count at +80, calls `odsyLoadTimingTable`, stores its result,
  decrements the count and frees both tables with `kern_free`; a missing handle or failed validation frees
  the tables and stores 14.
- `gfP_OdsyHPgetConfig` (`odsy_hpipe.o`, offset 0x6b0, 324 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)`.
  Private-request handler that reports the display-pipe configuration. It copies a 524-byte request in
  from the user address (a faulting copy logs "bad ptr to arg" at severity 4 and stores 14) and stores 22
  if `OdsyHpipeState` is missing or its first word is 0. For the pipe number in the word at +8, 0 to 63,
  with the slot state word at +8 equal to 1, it fills up to four 16-byte output entries from the boards in
  the slot's table, each with the halfword at +790 of the board record in its +24, the words at +46264 and
  +46268 in its +12 and +20 and 0 in its +16. It copies the 524 bytes back out, logging "bad hyperpipe
  config arg user-land pointer" and storing 14 if that fails, and returns the result word.
- `gfP_OdsyHPbind` (`odsy_hpipe.o`, offset 0x10f8, 360 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)`.
  Private-request handler that binds a client to a display pipe. It copies a 4-byte pipe number in from
  the user address; a faulting copy logs "gfP_OdsyHPbind: bad ptr to arg" at severity 4 and stores 14.
  Under the slot's `mutex_spinlock` in `OdsyHpipeState` (56 bytes per slot, number 0 to 64) it stores 22
  in the result word unless the slot's state word at +8 is 1. For a valid slot it increments the board's
  count at +46260, stores the pipe number at +46256, increments the slot's use word at +56 and stores the
  number in the halfword at +588 of the client context behind +112 (logging "rnpp null in hpipe bind" when
  there is none), and stores 0 as the result.
- `odsy_initDCD2DAC` (`odsy_brdmgr.o`, offset 0x35d4, 492 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_brdmgr.o)`.
  Initialises the DCD2 DAC over the two-wire bus. On the port record in its second argument it stores the
  byte 31 at +32 and writes register 3 of the clock part with 0; a failure logs at severity 1 with the
  halfword at +790 of the board behind +16 and returns 1. It then makes a fixed series of `setDACreg`
  calls (among them the values 9, 8, 41, 4, 255, 5, 236 and 65 with command codes 0 to 3) and finishes by
  writing the index of each of 256 entries three times, with `setDACreg` command 1, which loads an
  identity ramp. It returns 0.
- `gf_OdsySetNullClip` (`odsy_clip.o`, offset 0x8a0, 56 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)`.
  Fills a clip record with the empty state, using only stores to the record in its argument. It zeroes the
  words at +8, +12, +16, +20, +24, +48 and +60, writes all ones to +40, writes 1 to +44 and +52, and
  returns 0. No board register is touched.
- `odsyHashInsert` (`odsy_adt.o`, offset 0xcb0, 48 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Adds a node at the front of one bucket. The bucket sentinel is at table +8 plus 24 times the bucket
  index; the node's next link at +0 takes the old first node, its previous link at +8 takes the sentinel,
  and the old first node's previous link and the sentinel's next link are both pointed at the new node.
- `odsy_dma_poll_timer` (`odsy_dma.o`, offset 0x864, 28 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Timer callback of `DmaFinishedPollDelay`: it does nothing but call `vsema` on the semaphore in the zero-
  initialised data, releasing the thread that is blocked in `psema`.
- `odsy_earlyinit_timeout` (`odsy_init.o`, offset 0xe9c, 28 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Timer callback used during early board initialisation: it calls `vsema` on the semaphore passed in its
  argument so that the initialisation thread blocked on it resumes.
- `odsyDestroyDrawable` (`odsy_drawable.o`, offset 0x10c, 32 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  Frees a drawable record: it calls `kmem_free` on its second argument with the size 40 and returns.
- `odsyUnmapPages` (`odsy_map.o`, offset 0x9bc, 40 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Drops one user mapping. It loads the mapping handle stored at the address in its argument, zeroes that
  field, calls `gfxdd_munmap` with the handle, and returns 0.
- `odsy_flow_am_i_attached` (`odsy_flow.o`, offset 0x9c, 64 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)`.
  Asks the flow-control layer whether the caller is attached to the board's flow control. It raises the
  interrupt level with `splhi`, calls `gfx_flow_am_i_attached` with the board record, restores the level
  with `splx` and returns the answer.
- `odsy_getdesc` (`odsy_tport.o`, offset 0x1018, 28 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`.
  Reports whether a descriptor request is supported: it returns 1 when its second argument equals 1 and 0
  for any other value, and reads nothing from memory.
- `odsy_tport_lock_init` (`odsy_tport.o`, offset 0x0, 48 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`.
  Initialises the transport-port lock state. It sets the global `odsy_tport_mute` to 1, clears
  `odsy_tport_inuse` in the delay slot of a `wbflush` call, and then calls `spinlock_init` on
  `odsy_tport_lock` with the name "odsy_tport_lock".
- `OdsyInit32kSlotMask` (`odsy_adt.o`, offset 0x968, 56 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Prepares a 4112-byte slot-mask structure: `bzero` over the whole block, the word at +8 set to 0 and the
  doubleword at +0 set to its second argument.
- `gfP_OdsyInvalidIoctl` (`odsy.o`, offset 0x5c, 36 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy.o)`.
  Fallback handler for private requests that have no implementation. It makes one `cmn_err` call at
  severity 5 with the fixed message "odsy: Unknown ioctl", touches no board register and no board record,
  and returns 22.
- `odsy_validate_ddc_data` (`odsy_ddc.o`, offset 0x1a90, 44 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Thin wrapper over `odsy_i2cValidEdid`: it passes its argument through and returns 1 when that routine
  returns non-zero, 0 otherwise. It reads no board register itself.
- `odsy_mm_release_pbuffer` (`odsy_pmm.o`, offset 0x51ac, 164 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Gives back one pixel-buffer group's reservation. It subtracts the word at +60 of its argument from the
  word at +216 of the group's record (behind +8), takes the record off the pixel-buffer list with
  `odsy_mm_remove_pbuffer_group_from_list` and, when the remaining size at +216 is still non-zero, puts it
  back with `odsy_mm_insert_pbuffer_group_into_list`. It then adds up the +216 sizes of the first two
  records on the list at +4816 of the memory-manager structure, following the links at +232, and stores
  the total at +4824.
- `mm_as_remove_sg` (`odsy_pmm.o`, offset 0x2924, 164 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Drops one surface group from an address-space record. It decrements the use count at +4 and zeroes the
  doubleword its second argument points to. When the count reaches 0 it calls `OdsyDeallocCSetId` on the
  container at +1544 of the structure behind +8 with the identifier at +0, calls
  `odsyUnpinAndUnmapASRegions`, overwrites the 64-byte record with the poison byte 5 and releases it with
  `kmem_free`.
- `odsyCursorOn` (`odyssey.so`, offset 0x16a3920, 240 bytes): **established.**
  Build: `usr/lib/X11/dyDDX/odyssey.so`.
  Turns the hardware cursor on or off for one screen. Using the device descriptor behind the screen's +116
  (descriptor at +100), it sets bit 0 of the cursor flag word at +68 of the screen's private record when
  switching on, or clears bit 1 when switching off. It then sends the cursor request 0x6f64001c, handled
  by `gfP_OdsyBRDMGRcursor` in the kernel, by calls `ioctl` with a 4-word block whose first word is 4 and
  whose word at +12 is the flags; a failure calls `ErrorF` with the errno. For the on case it finally
  clears bit 0 and sets bit 1 of the flag word.
- `odsyCursorInit` (`odyssey.so`, offset 0x1618bc0, 256 bytes): **established.**
  Build: `usr/lib/X11/dyDDX/odyssey.so`.
  Initialises the hardware cursor of a screen. It calls `ioctl` with the cursor request 0x6f64001c,
  handled by `gfP_OdsyBRDMGRcursor`, on the device descriptor behind the screen's +116, passing the flag
  word from +68 of the private record with bit 1 cleared; a failure calls `ErrorF` with the errno. When
  the halfword at +62 of the structure behind +92 equals 1 it stores the flags with bit 4 set and bits 5
  and 1 cleared and sends the same request a second time.
- `odsyDeallocatePbuffer` (`odyssey.so`, offset 0x15fe780, 252 bytes): **established.**
  Build: `usr/lib/X11/dyDDX/odyssey.so`.
  Frees a pixel buffer on the board. It calls `ioctl` with the request 0x6f640002 (kernel
  `gfP_OdsyMMdealloc`) and a block holding -1 at +4 and the buffer's handle from +4 of its argument at +0,
  then, when that call wrote a handle other than -1 at +4, calls `ioctl` again with the request 0x6f64002b
  (kernel `gfP_OdsyPbufDeassoc`) and that handle at +12 and 0 at +60. A failing call calls `ErrorF` with
  `strerror` of the errno, and a handle of -1 logs a message instead of the second request.
- `odsyValidateReservedMode` (`odyssey.so`, offset 0x168bc90, 252 bytes): **established.**
  Build: `usr/lib/X11/dyDDX/odyssey.so`.
  Validates one reserved video mode of a screen. It calls `ioctl` with the request 0x6f64001d on the
  device descriptor behind +116 and a two-word block holding the mode number and the word at +180 of that
  mode's 36-byte entry in the screen's private record; a negative result calls `ErrorF` with `strerror`.
  In either case it then calls `rrmSetReservedDID` with the screen, the mode number and the entry's words
  at +176 and +180.
- `odsyDestroyHyperpipeConfig` (`odyssey.so`, offset 0x15f3da0, 100 bytes): **established.**
  Build: `usr/lib/X11/dyDDX/odyssey.so`.
  Tears down a display-pipe configuration through the kernel. It finds the device descriptor behind +116
  of the screen's record in `screenInfo` (descriptor at +100), calls `ioctl` with the request 0x6f640013,
  handled by `gfP_OdsyHPdestroyConfig`, and a one-word block holding its second argument. It returns 0
  when the call succeeds and 1 when it fails.
- `odsy_i2c_start` (`odsy_i2c.o`, offset 0x40c8, 4912 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.

  Sends a start condition and the slave address on one two-wire port. Every control-register write of the
  port is a 64-bit command pushed into the display FIFO at board +0x400000: the high word is 0x30000001
  OR the register's display address shifted left 14 (the address is the halfword at +24 of the port record),
  the low word is the shadow control word at +0 of the record. Before each push it takes the display-FIFO
  semaphore (a semaphore at board record +0x8530, or the spin lock at +0x8540 when the flag at +46184 is
  set) and calls `odsy_poll_dfifo_level` with level 14 or 15; a FIFO wait that fails returns 3. The
  sequence sets bit 14 (force idle) for 20 microseconds with `odsy_usdelay`, clears it for another 20, then
  reads the control word back through the window at board +0x220000 (display address times 8), loads the
  address byte into bits 7:0 (a copy also goes to port record +32) with bit 8 (start), bit 9 (transfer) and bit 12
  (send) set and bit 11 (stop) cleared, pushes it, clears bit 8 in the shadow, and waits with
  `odsy_i2c_xfer_done_loop`. A timeout is returned as is; otherwise it returns the result of
  `odsy_i2c_recv_ack` called with the inverse of the ack argument. The semaphore release also replays a pending
  cursor-position command stored at board record +34120 when one is waiting.
- `odsy_i2c_stop` (`odsy_i2c.o`, offset 0x53f8, 2504 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Ends a two-wire transfer. It waits for display-FIFO room (level 14 or 15 through `odsy_poll_dfifo_level`),
  sets bit 13 (force stop) of the shadow control word and clears bits 14, 9, 8 and 11 (idle, transfer, start,
  stop), pushes the word as a display-FIFO command and waits with `odsy_i2c_xfer_done_loop`. After it
  completes it zeroes the shadow control word, reads the port's status register back through the window at
  board +0x220000 and returns 1 when bit 22 (busy) is still set, 0 when the bus released, and 3 or the
  timeout code of the wait when a step failed.
- `odsy_i2c_sendbyte` (`odsy_i2c.o`, offset 0x5dc0, 3796 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Sends one data byte as the bus master. It first calls `odsy_i2c_busy_high_loop` and returns a failure
  of that wait. It then places the byte in bits 7:0 of the shadow control word, sets bit 9 (transfer), sets or
  clears bit 11 (stop) according to its stop argument, pushes the word into the display FIFO as a
  control-register command, waits with `odsy_i2c_xfer_done_loop`, clears the stop bit again when it set it, and
  returns the result of `odsy_i2c_recv_ack` with the inverse of the ack argument. A FIFO wait that fails returns 3.
- `odsy_i2c_long_recvbyte` (`odsy_i2c.o`, offset 0x6ce0, 2568 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Receives one byte as the bus master and sets the acknowledge and stop bits of the byte. When the requested
  acknowledge differs from bit 10 of the shadow control word it reads the control register back, clears bit
  12 (send) and bit 8 (start), writes the new acknowledge into bit 10 (0 acknowledges, 1 refuses), clears the
  data bits and pushes the word. It then calls `odsy_i2c_short_recvbyte`, sets or clears bit 11 (stop)
  from its stop argument, pushes the word again, clears the stop bit in the shadow and, when no acknowledge
  was requested, clears bit 10. It returns the result of `odsy_i2c_short_recvbyte`, or 1 when a FIFO wait fails.
- `odsy_i2c_recv_1byte` (`odsy_i2c.o`, offset 0x76e8, 3132 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Receives a single byte in one transfer, used by the DVI and display-data routines. It reads the control
  register back through the window at board +0x220000, clears bit 12 (send) and bit 8 (start), sets bit 9
  (transfer) and, according to its two flag arguments, bit 10 (refuse acknowledge) and bit 11 (stop), pushes
  the word as a display-FIFO command, waits with `odsy_i2c_xfer_done_loop`, reads the status register back
  and stores its low byte through the pointer argument. A failed FIFO wait returns 3; a timeout of the wait
  is returned unchanged; success returns 0.
- `odsy_i2c_becomeSlaveRecv` (`odsy_i2c.o`, offset 0x8324, 2612 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Ends the master transfer and switches a port to slave-receive. It reads the control register back, sets
  bit 13 (force stop) and bit 17 (slave enable), clears bit 9 (transfer), writes bit 10 from the ack argument
  (an acknowledge clears it, a refusal sets it), stores the slave address in bits 24:18, pushes the word and waits with
  `odsy_i2c_xfer_done_loop`. A clock error (status bit 20) or data error (bit 21) returns 1; otherwise it
  stores the received byte (status bits 7:0) through the pointer argument, clears bit 13 in the shadow and
  returns 0. A failed FIFO wait returns 3.
- `odsy_i2c_slave_recvbyte` (`odsy_i2c.o`, offset 0x8d58, 2572 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Collects bytes while another device drives the clock. While the shadow status shows busy (bit 22) it
  waits with `odsy_i2c_xfer_done_loop`, returns 1 on a clock or data error (bits 20 and 21), returns 3 and
  flips the acknowledge bit when the count passes the buffer length, and otherwise reads the status
  register back through the window at board +0x220000 and appends its low byte to the caller's buffer.
  It also writes the requested acknowledge into the shadow control word first when it differs.
- `odsy_i2c_xfer_done_loop` (`odsy_i2c.o`, offset 0x9764, 1256 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Waits for a two-wire byte transfer to finish. Each pass takes the display-FIFO semaphore, waits for the
  FIFO to drain to level 0, reads the port's status register back through the window at board +0x220000 into
  the shadow status and returns 0 when bit 9 (transfer done) is set, otherwise it waits 100 microseconds
  with `odsy_usdelay`. After 800 passes it returns 2; a FIFO wait that fails returns 3.
- `odsy_i2c_busy_high_loop` (`odsy_i2c.o`, offset 0x9c4c, 1256 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Waits for the port's busy flag. Each pass reads the status register back through the window at board
  +0x220000, tests bit 22 (busy) and returns 0 when it is set, otherwise waits 100 microseconds with
  `odsy_usdelay`. After 400 passes it returns 2; a FIFO wait that fails returns 3.
- `odsy_i2c_recv_ack` (`odsy_i2c.o`, offset 0xa134, 1288 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Polls for the acknowledge bit of a finished byte. It compares bit 8 of the shadow status with its argument
  and returns 0 on a match; otherwise it waits 100 microseconds with `odsy_usdelay`, waits for the display
  FIFO to drain and rereads the status register through the window at board +0x220000. After 400 polls it
  returns 2, and a FIFO wait that fails returns 2 as well.
- `odsy_i2c_init_port_handle` (`odsy_i2c.o`, offset 0xa63c, 1148 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Fills in a port record for the main (0) or option (1) two-wire port and refuses other numbers with 1.
  The main port gets display addresses 10112 (control) and 10113 (status) and shadow words at board record
  +0x8614 and +0x8618; the option port gets 10048 and 10049 with shadows at +0x860c and +0x8610. The
  routine stores the board record at +16 and the port number at +28, waits for the display FIFO to
  drain and reads both registers back through the window at board +0x220000 into the shadows, returning 0.
- `odsy_i2cReset` (`odsy_i2c.o`, offset 0xaab8, 2440 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Forces a two-wire port back to idle.
  `odsy_i2c_stop` three times: here the routine calls `odsy_i2c_stop` once, zeroes the shadow control word,
  sets bit 14 (force idle) and pushes it, then every 10 microseconds reads the status register back through
  the window at board +0x220000 and loops until the state field (bits 13:10) reads 0 or 10. It then clears bit 14 and
  pushes the word once more.
- `odsy_i2c_read_comp_reg4` (`odsy_i2c.o`, offset 0x0, 2804 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`; called from `odsy_compositor.o`.
  Reads a four-byte register from the compositor on the two-wire bus. It reads the control register back,
  clears bits 12, 8 and 10 (send, start, refuse-acknowledge) and pushes it, then collects four bytes: after
  each push it polls up to 133 times at 100 microseconds for status bit 9 (transfer done) and stores the status
  low byte in order into a word on the stack. The fourth byte is requested with bit 10 set so the device
  stops sending. The first byte received is the most significant byte of the word stored through the pointer in
  the second argument. It returns 0, or 1 when a poll or FIFO wait fails.
- `odsy_i2c_write_comp_reg4` (`odsy_i2c.o`, offset 0xaf4, 2636 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`; called from `odsy_compositor.o`.
  Writes a four-byte register of the compositor on the two-wire bus. It stores the word to send in memory
  and then, four times starting from the most significant byte, clears bits 11 and 13 (stop and force stop),
  sets bit 9 (transfer), loads the byte into bits 7:0 and pushes the control word, polls up to 133 times at
  100 microseconds for transfer done (status bit 9) and returns 1 when the acknowledge bit 8 shows a refusal.
  It returns 0 after the last byte, and 1 when a poll or FIFO wait fails.
- `odsy_i2c_read_denali_byte` (`odsy_i2c.o`, offset 0x1540, 2084 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Reads one byte from the Denali device. It calls `odsy_i2c_start` with the address byte 239 (0xef, a read of
  7-bit address 0x77, stored at port record +32), waits 20 microseconds with `odsy_usdelay`, reads the
  control register back, clears bits 12 and 8 and sets bits 10 and 11 (refuse acknowledge, stop), pushes it
  and polls up to 133 times at 200 microseconds for status bit 9. The status low byte is stored through the
  pointer argument. It returns 0, or 1 when the start, a poll or a FIFO wait fails.
- `odsy_i2c_write_denali_byte` (`odsy_i2c.o`, offset 0x2660, 2668 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Writes one byte to the Denali device. It calls `odsy_i2c_start` with the address byte 238 (0xee, a write
  to 7-bit address 0x77, stored at port record +32), waits 20 microseconds, then sets bits 9 and 11 (transfer, stop),
  clears bit 13, loads the byte into bits 7:0, pushes the word and polls up to 133 times at 100 microseconds
  for status bit 9. A refused acknowledge (bit 8) fails. It returns 0, or 1 when any step fails.
- `odsy_i2c_read_rainier_byte` (`odsy_i2c.o`, offset 0x38c4, 2052 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Reads bytes from the Rainier device with the address already in the port record. It calls `odsy_i2c_start`,
  waits 20 microseconds with `odsy_usdelay`, reads the control register back, clears bits 12 and 8, sets
  bits 10 and 11 (refuse acknowledge, stop) and pushes it. It then polls the status read-back at up to 133
  times at 200 microseconds for bit 9 and stores the low byte through the pointer argument, counting down the
  length argument. It returns 0, or 1 when the start, a poll or a FIFO wait fails.
- `odsy_i2c_read_denali` (`odsy_i2c.o`, offset 0x1d64, 2300 bytes): **inferred.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`; called from `odsy_denali.o` and `odsy_ddc.o`.
  Reads one reply message from the Denali device (arguments: port record, word array, length out). The Origin 350 body was read in full
  and this build has the same calls, constants and branches with the start-up word at -19352 instead of -19328; the entry is inferred because this build's own
  instructions were compared by their skeleton rather than read through. Under the display semaphore it saves display register 0x3804 and pushes it
  back with bits 14:12 forced to 6, takes the length byte from `odsy_i2c_read_denali_byte` (5 becomes 10, above 32 is capped to 32), stores each following byte
  as a 32-bit word (a stored 10 or 5 resets the index to 0, and a length above 10 then reads ten more bytes into indices 0 to 9), restores register 0x3804,
  stores the adjusted length through the third argument and returns 0; a failed byte read returns 1 with the length output zero.
- `odsy_i2c_write_denali` (`odsy_i2c.o`, offset 0x30cc, 2040 bytes): **inferred.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`; called from `odsy_denali.o` and `odsy_ddc.o`.
  Sends one command message to the Denali device (arguments: port record, byte buffer, byte count). The Origin 350 body was read in full and this build has the same calls,
  constants and branches with the start-up word at -19352 instead of -19328. Under the display semaphore it saves display register 0x3804 and pushes it back with
  bits 14:12 set to 6, calls `odsy_i2c_write_denali_byte` for each byte, restores the register and returns 1 after a failed byte, else 0.
- `odsyConfigFb` (`odsy_brdmgr.o`, offset 0x824, 2148 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
Lays out
  the board's SDRAM for a frame buffer size and programs the scan-out registers. When the word at +16 of its
  argument block is set it only returns `odsyProbeFb`. Otherwise it rounds width and height up to 16-pixel
  tiles and the tile row up to an even count, takes the depth (32, 16 or 8) to find how many 32-bit tile slots the frame buffer
  needs, and places the frame buffer at the board record's +1360 start address (sdram address in 512-byte
  units) rounded up to a four-tile boundary, then the overlay and window-id buffer (2 bytes deep, sixteen times denser) at +1496,
  the unused coarse-Z slot, up to four 8-bit accumulation buffers (the argument's word +12 chooses none, 2 or 4)
  at the following boundaries, and the first free address for textures and pixel buffers at +1088. It returns -1
  when that address passes the SDRAM size held at +252 (in megabytes). The routine writes the start
  addresses and the five region sizes back into the argument block at +20 to +48, then pushes six scan-out
  commands (overlay base, pixel base, width, height, stride and depth code 4, 3 or 2) after waiting for display-FIFO
  level 10 with `odsy_poll_dfifo_level`, stores the width and height as halfwords at +232 and +234 and
  returns 0.
- `odsyLoadTimingTable` (`odsy_brdmgr.o`, offset 0x3c4c, 8392 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Programs a video timing into the board: the pixel-clock generator, the
  video timing generator tables and the scan-out registers. It takes the lock at record +0x8520, reads the
  host-interface control register back through the window at board +0x220000 and loads the 3-bit clock
  fields of the timing block (+208 to the host-interface configuration, +212 and +216 into the two
  two-wire clock selects) with the soft-reset bit cleared. It picks the clock chip by the variant at record +292:
  below 1 the classic PLL registers 5, 4, 2, 3, 0, 1, 7 and 6 get the bytes at timing-block +128 to +156,
  at least 1 the eight registers 0 to 7 of the second clock chip get +96 to +124 (copies of registers 1, 2 and 6
  are saved at the record). It writes those eight registers on the option port with `odsy_i2cPLLRegWrite`, writes
  the classic chip's reset register 8 with 90 when it is in use, waits 1 ms then 100 ms with `odsy_usdelay`, raises the
  interface soft reset, and resets the timing generator. Next it clears two stack buffers of 512 and 4096 bytes
  with `bzero` and sends them as zero blocks of 256 frame-table and 2048 line-table halfwords, then sends
  the caller's frame table and line table (lengths at timing-block +8 and +24), each packed four halfwords to a
  display-FIFO word with a wait for FIFO room every 64 halfwords. It then writes the timing generator
  control, enable and initial-state words (+160, +164, +168), the twelve generator values at +40 to +84, the
  width and height (+176, +180), the interlace, dual-head and field-sequential modes from the flags word at +200, a cursor
  control word, and the DAC, data-path and state-machine words, and finally the generator control word.
  For an external genlock source it rewrites the input-control and divider registers of the active clock chip.
  It releases the lock at +0x8520 and returns 0, or -1 when a FIFO wait fails.
- `odsyInitDBE` (`odsy_init.o`, offset 0x2c5c, 4248 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Brings the display back end to a known state and identifies the
  attached parts. In order it quiets the clock registers (display addresses 0x2b00 five times and 0x2700),
  reads the two output-enable words at 0x2483 and 0x2482 into the record, sets up the main and option two-wire
  ports with `odsy_i2c_init_port_handle` (records +0xb3e0 and +0xb408), reads the option card's identity at address 0x1f
  once (a low nibble of 3 stores 3 at record +298 and the next register at +300), and fills the
  part-presence words at +700 (compositor), +704 (Denali), +708 (Rainier) and +712 (compositor serial) through
  `odsy_ProbeCompositor`, `odsy_ProbeRainier`, `odsy_ProbeDenali` and `odsy_ReadCompositorNic`, and `odsy_i2cProbe2b` on the main port
  when no option card is present. With an option card present it first waits for `odsy_DCDResetDone` and writes
  its PLL register 0 with 16, 32 or 48. It then calls `odsyConfigFb` for 1280 by 1024 at depth 8
  and, for the full start only, writes the scan-out size (0x2802 = 1280, 0x2803 = 1024) and calls
  `odsyLoadTimingTable`. It writes the 32-entry main mode table at display addresses 0x2900 to 0x291f
  and the 8-entry overlay table at 0x2920 to 0x2927 (what the stored mode words encode is unknown from the binary alone;
  the stored constants are in the member's small-data slots), clears entries 0x29 to 0x2c, resets the cursor control mirror, initialises the
  semaphore at +0xb470 to 1 and finishes with `odsyBlankScreen` with blanking off. Every FIFO wait
  that fails abandons the routine. Each display write waits for display-FIFO levels 10, 15, 14 or 11 with `odsy_poll_dfifo_level`.
  The full step list and the unresolved stack words of the mode table are in `docs/kernel.md`.
- `odsyBlankScreen` (`odsy_brdmgr.o`, offset 0x21f8, 4580 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.

  off or on through the output-enable and DAC-control display registers. Mode 2 blanks: it clears bit 5 of the
  shadow of display register 0x2482 (record -19492) and bits 0, 1 and 5 of the shadow of 0x2483 (record -19496), reads
  register 0x26c0 back through the window at board +0x233604, sets its bit 0 and pushes the three words
  after a wait for display-FIFO level 10. Modes 0 and 1 restore the display: they set bits 0, 1 and 5 (0x23) of the
  0x2483 shadow and push the words after a wait for level 11 (mode 0) or 14 (mode 1). With the dual-channel
  option card present (halfword +298 equal to 3) each mode also takes the lock at record +0x8520, reads
  register 23 of the option port with `odsy_i2cDDCRegRead` and calls `odsy_reconfigDCD2FPLD`, returning 11
  when either fails. A failed display-FIFO wait returns 5; success returns 0. The display-FIFO
  semaphore and cursor-replay code is the same inlined helper as in `odsy_i2c_start`.
- `odsyValidateBuffer` (`odsy_retrace.o`, offset 0x8c, 176 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
  Revalidates the drawable behind one swap slot. Slot numbers of 32 or more log a severity 4 message and return 22. For a
  valid slot it reads the slot's 40-byte record at board record +28584 (slot times 40): when the slot's
  buffer pointer at +28608 is empty it calls `rrmValidateMGRSwapBuf` with the word at +28616, otherwise it
  calls `rrmValidateBuffer` when the object at +28584 has a drawable handle at +224. It then clears the slot's bit in the
  pending-swap mask at record +28568 and returns 0.
- `odsySwap_softsync_intr` (`odsy_retrace.o`, offset 0x7d4, 260 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
  Runs the pending swaps whose scan-out line has been reached. It takes the swap lock at record +28504, then
  for each of the 32 slots whose bit is set in both the pending mask (+28568) and the armed mask (+28548)
  it reads the current video line counter (a halfword table behind the pointer at record +880, indexed by the
  slot's pipe number at +244 of its object) and compares it with the slot's target line at +28592. When
  the counter has reached the target, or the target is flagged above 0x8fff while the counter is below 4096, it clears the
  slot's armed bit and calls `odsySwapBuffer`. The lock is released at the end.
- `gf_OdsySchedMGRSwapBuf` (`odsy_retrace.o`, offset 0x107c, 488 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
  Queues a swap of the console-manager buffer in one of 32 slots. A slot number outside 0 to 31 logs a
  severity 4 message and returns 22. Under the lock at +28504 it disarms the retrace interrupt when it is armed and unused
  (clears the word at +28544 and board register 0x10bc), waits on the sync variable at +28520 when the slot is already
  pending (after a severity 5 message), then marks the slot pending in the mask at +28568 and fills the slot
  record at +28584 plus 40 times the slot: the buffer from the pipe object's +72/+112 pointers, a zero for
  the second pointer at +28608, the target line from a halfword of the buffer's display structure (+176, +11068),
  the swap argument at +28616 and the slot's bit at +28600. It copies bit 30 of its argument into the
  per-slot flag mask at +28572. When the video line counter already equals the target it calls
  `odsySwapBuffer` immediately, otherwise it sets the slot's armed bit at +28548. It returns 0.
- `gf_OdsyUnSchedSwapBuf` (`odsy_retrace.o`, offset 0x8d8, 424 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
  Cancels a queued swap. A slot number of 32 or more logs a severity 4 message and returns 22. Under the lock at +28504,
  when the slot is pending it records the slot in the mask at +28564, removes it from the armed mask
  at +28556 and clears its bit from every slot's 'wait on' word at +28600 before restoring its own bit, then
  clears the armed bit at +28544 together with board register 0x10bc. While the word at +816 is zero and the slot stays pending it
  waits on the sync variable at +28520 with `sv_timedwait`, dropping and retaking the lock each time. It
  returns 0.
- `odsyRestoreGfe` (`odsy_ctxsw.o`, offset 0x41c4, 1468 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Replays the geometry-engine part of a saved context into the command FIFO at board +0x110000, one word per
  store with a sync after each. It sends the fixed words 0x14400, 0x14001, 1856, 491 and 3905, the saved word at
  +172 of the context, two zeros, 17776, the saved word at +184, 1200 and the word at +7052 of the hardware
  shadow. When the context is not the current one (the id at +0 is nonzero and differs from the board's id at +820)
  it then sends four saved packets from +576, +592, +608 and +624: each packet header carries its payload
  length in bits 13:10 and is followed by that many words from +2048, +2112, +2176 and +2240. A header whose
  high bits are not 0x3000c02e or 0x2f00c02e logs a severity 7 message and skips the payload. The routine
  ends with the markers 15608 to 15611, each followed by 16 zero words, and returns nothing.
- `odsyConfigFb` (`odsy_brdmgr.o`, offset 0x824, 2148 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_brdmgr.o)`.
Lays out
  the board's SDRAM for a frame buffer size and programs the scan-out registers. When the word at +16 of its
  argument block is set it only returns `odsyProbeFb`. Otherwise it rounds width and height up to 16-pixel
  tiles and the tile row up to an even count, takes the depth (32, 16 or 8) to find how many 32-bit tile slots the frame buffer
  needs, and places the frame buffer at the board record's +1360 start address (sdram address in 512-byte
  units) rounded up to a four-tile boundary, then the overlay and window-id buffer (2 bytes deep, sixteen times denser) at +1496,
  the unused coarse-Z slot, up to four 8-bit accumulation buffers (the argument's word +12 chooses none, 2 or 4)
  at the following boundaries, and the first free address for textures and pixel buffers at +1088. It returns -1
  when that address passes the SDRAM size held at +252 (in megabytes). The routine writes the start
  addresses and the five region sizes back into the argument block at +20 to +48, then pushes six scan-out
  commands (overlay base, pixel base, width, height, stride and depth code 4, 3 or 2) after waiting for display-FIFO
  level 10 with `odsy_poll_dfifo_level`, stores the width and height as halfwords at +232 and +234 and
  returns 0.
  Compared with the IP30 build (offset 0x824 there) the 537 instructions are the same except for their
  addresses: 3 instructions address board-record displacement -19328 where the IP30 build uses -19352.
- `odsyLowaterInterrupt` (`odsy_flow.o`, offset 0x584, 144 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_flow.o)`.
  Runs when the command FIFO drains below its low-water mark. It cancels the FIFO timer, clears bit 9 in
  the enable shadow, writes 0x200 to 0x103c to stop the interrupt and wakes the thread that the high-water
  path parked.
  Compared with the IP30 build (offset 0x29c there) the 36 instructions are the same except for their
  addresses: 1 instruction carries the constant 0xb458 where the IP30 build has 0xb440, so any board-
  record offset the description names for it moves by the same amount.
- `odsy_i2cReset` (`odsy_i2c.o`, offset 0xaab8, 2440 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_i2c.o)`.
  Forces a two-wire port back to idle.
  `odsy_i2c_stop` three times: here the routine calls `odsy_i2c_stop` once, zeroes the shadow control word,
  sets bit 14 (force idle) and pushes it, then every 10 microseconds reads the status register back through
  the window at board +0x220000 and loops until the state field (bits 13:10) reads 0 or 10. It then clears bit 14 and
  pushes the word once more.
  Compared with the IP30 build (offset 0xaab8 there) the 610 instructions are the same except for their
  addresses: 5 instructions address board-record displacement -19328 where the IP30 build uses -19352.
- `odsy_i2c_becomeSlaveRecv` (`odsy_i2c.o`, offset 0x8324, 2612 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_i2c.o)`.
  Ends the master transfer and switches a port to slave-receive. It reads the control register back, sets
  bit 13 (force stop) and bit 17 (slave enable), clears bit 9 (transfer), writes bit 10 from the ack argument
  (an acknowledge clears it, a refusal sets it), stores the slave address in bits 24:18, pushes the word and waits with
  `odsy_i2c_xfer_done_loop`. A clock error (status bit 20) or data error (bit 21) returns 1; otherwise it
  stores the received byte (status bits 7:0) through the pointer argument, clears bit 13 in the shadow and
  returns 0. A failed FIFO wait returns 3.
  Compared with the IP30 build (offset 0x8324 there) the 653 instructions are the same except for their
  addresses: 6 instructions address board-record displacement -19328 where the IP30 build uses -19352.
- `odsy_i2c_busy_high_loop` (`odsy_i2c.o`, offset 0x9c4c, 1256 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_i2c.o)`.
  Waits for the port's busy flag. Each pass reads the status register back through the window at board
  +0x220000, tests bit 22 (busy) and returns 0 when it is set, otherwise waits 100 microseconds with
  `odsy_usdelay`. After 400 passes it returns 2; a FIFO wait that fails returns 3.
  Compared with the IP30 build (offset 0x9c4c there) the 314 instructions are the same except for their
  addresses: 3 instructions address board-record displacement -19328 where the IP30 build uses -19352.
- `odsy_i2c_init_port_handle` (`odsy_i2c.o`, offset 0xa63c, 1148 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_i2c.o)`.
  Fills in a port record for the main (0) or option (1) two-wire port and refuses other numbers with 1.
  The main port gets display addresses 10112 (control) and 10113 (status) and shadow words at board record
  +0x8614 and +0x8618; the option port gets 10048 and 10049 with shadows at +0x860c and +0x8610. The
  routine stores the board record at +16 and the port number at +28, waits for the display FIFO to
  drain and reads both registers back through the window at board +0x220000 into the shadows, returning 0.
  Compared with the IP30 build (offset 0xa63c there) the 287 instructions are the same except for their
  addresses: 3 instructions address board-record displacement -19328 where the IP30 build uses -19352.
- `odsy_i2c_long_recvbyte` (`odsy_i2c.o`, offset 0x6ce0, 2568 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_i2c.o)`.
  Receives one byte as the bus master and sets the acknowledge and stop bits of the byte. When the requested
  acknowledge differs from bit 10 of the shadow control word it reads the control register back, clears bit
  12 (send) and bit 8 (start), writes the new acknowledge into bit 10 (0 acknowledges, 1 refuses), clears the
  data bits and pushes the word. It then calls `odsy_i2c_short_recvbyte`, sets or clears bit 11 (stop)
  from its stop argument, pushes the word again, clears the stop bit in the shadow and, when no acknowledge
  was requested, clears bit 10. It returns the result of `odsy_i2c_short_recvbyte`, or 1 when a FIFO wait fails.
  Compared with the IP30 build (offset 0x6ce0 there) the 642 instructions are the same except for their
  addresses: 6 instructions address board-record displacement -19328 where the IP30 build uses -19352.
- `odsy_i2c_read_comp_reg4` (`odsy_i2c.o`, offset 0x0, 2804 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_i2c.o)`.
  Reads a four-byte register from the compositor on the two-wire bus. It reads the control register back,
  clears bits 12, 8 and 10 (send, start, refuse-acknowledge) and pushes it, then collects four bytes: after
  each push it polls up to 133 times at 100 microseconds for status bit 9 (transfer done) and stores the status
  low byte in order into a word on the stack. The fourth byte is requested with bit 10 set so the device
  stops sending. The first byte received is the most significant byte of the word stored through the pointer in
  the second argument. It returns 0, or 1 when a poll or FIFO wait fails.
  Compared with the IP30 build (offset 0x0 there) the 701 instructions are the same except for their
  addresses: 7 instructions address board-record displacement -19328 where the IP30 build uses -19352.
- `odsy_i2c_read_denali` (`odsy_i2c.o`, offset 0x1d64, 2300 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_i2c.o)`.
  Reads one reply message from the Denali device (arguments: two-wire port record, word array, length out). Unless the start-up word at -19328
  from +0x10000 of the port's board is set it takes the display semaphore (`psema`, +0x8530, priority 25), waits for display-FIFO level 15,
  reads display register 0x3804 through the window at +0x233804 and pushes it back with bits 14:12 forced to 6 (the register is the port's
  mode word; the original is kept and written back at the end). The first `odsy_i2c_read_denali_byte` call gives the length byte: 5 becomes 10,
  and values above 32 are capped at 32. Each following byte is stored as a 32-bit word at the next array index; a stored byte of 10 or 5 resets the index to 0, and then, when
  the length was above 10, the routine reads ten more bytes into indices 0 to 9 and stops, otherwise the loop carries on with the index reset. A failed byte read
  restores register 0x3804 and returns 1 with the length output zero; success restores it, stores the (adjusted) length byte through the third argument and returns 0.
  Release is the pending-cursor replay of `odsy_i2c_start` under the spin lock at +0x8540, and `vsema`. The IP30 build has the same body with the start-up word at -19352.
- `odsy_i2c_read_denali_byte` (`odsy_i2c.o`, offset 0x1540, 2084 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_i2c.o)`.
  Reads one byte from the Denali device. It calls `odsy_i2c_start` with the address byte 239 (0xef, a read of
  7-bit address 0x77, stored at port record +32), waits 20 microseconds with `odsy_usdelay`, reads the
  control register back, clears bits 12 and 8 and sets bits 10 and 11 (refuse acknowledge, stop), pushes it
  and polls up to 133 times at 200 microseconds for status bit 9. The status low byte is stored through the
  pointer argument. It returns 0, or 1 when the start, a poll or a FIFO wait fails.
  Compared with the IP30 build (offset 0x1540 there) the 521 instructions are the same except for their
  addresses: 5 instructions address board-record displacement -19328 where the IP30 build uses -19352.
- `odsy_i2c_read_rainier_byte` (`odsy_i2c.o`, offset 0x38c4, 2052 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_i2c.o)`.
  Reads bytes from the Rainier device with the address already in the port record. It calls `odsy_i2c_start`,
  waits 20 microseconds with `odsy_usdelay`, reads the control register back, clears bits 12 and 8, sets
  bits 10 and 11 (refuse acknowledge, stop) and pushes it. It then polls the status read-back at up to 133
  times at 200 microseconds for bit 9 and stores the low byte through the pointer argument, counting down the
  length argument. It returns 0, or 1 when the start, a poll or a FIFO wait fails.
  Compared with the IP30 build (offset 0x38c4 there) the 513 instructions are the same except for their
  addresses: 5 instructions address board-record displacement -19328 where the IP30 build uses -19352.
- `odsy_i2c_recv_1byte` (`odsy_i2c.o`, offset 0x76e8, 3132 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_i2c.o)`.
  Receives a single byte in one transfer, used by the DVI and display-data routines. It reads the control
  register back through the window at board +0x220000, clears bit 12 (send) and bit 8 (start), sets bit 9
  (transfer) and, according to its two flag arguments, bit 10 (refuse acknowledge) and bit 11 (stop), pushes
  the word as a display-FIFO command, waits with `odsy_i2c_xfer_done_loop`, reads the status register back
  and stores its low byte through the pointer argument. A failed FIFO wait returns 3; a timeout of the wait
  is returned unchanged; success returns 0.
  Compared with the IP30 build (offset 0x76e8 there) the 783 instructions are the same except for their
  addresses: 7 instructions address board-record displacement -19328 where the IP30 build uses -19352.
- `odsy_i2c_recv_ack` (`odsy_i2c.o`, offset 0xa134, 1288 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_i2c.o)`.
  Polls for the acknowledge bit of a finished byte. It compares bit 8 of the shadow status with its argument
  and returns 0 on a match; otherwise it waits 100 microseconds with `odsy_usdelay`, waits for the display
  FIFO to drain and rereads the status register through the window at board +0x220000. After 400 polls it
  returns 2, and a FIFO wait that fails returns 2 as well.
  Compared with the IP30 build (offset 0xa134 there) the 322 instructions are the same except for their
  addresses: 3 instructions address board-record displacement -19328 where the IP30 build uses -19352.
- `odsy_i2c_sendbyte` (`odsy_i2c.o`, offset 0x5dc0, 3796 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_i2c.o)`.
  Sends one data byte as the bus master. It first calls `odsy_i2c_busy_high_loop` and returns a failure
  of that wait. It then places the byte in bits 7:0 of the shadow control word, sets bit 9 (transfer), sets or
  clears bit 11 (stop) according to its stop argument, pushes the word into the display FIFO as a
  control-register command, waits with `odsy_i2c_xfer_done_loop`, clears the stop bit again when it set it, and
  returns the result of `odsy_i2c_recv_ack` with the inverse of the ack argument. A FIFO wait that fails returns 3.
  Compared with the IP30 build (offset 0x5dc0 there) the 949 instructions are the same except for their
  addresses: 9 instructions address board-record displacement -19328 where the IP30 build uses -19352.
- `odsy_i2c_slave_recvbyte` (`odsy_i2c.o`, offset 0x8d58, 2572 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_i2c.o)`.
  Collects bytes while another device drives the clock. While the shadow status shows busy (bit 22) it
  waits with `odsy_i2c_xfer_done_loop`, returns 1 on a clock or data error (bits 20 and 21), returns 3 and
  flips the acknowledge bit when the count passes the buffer length, and otherwise reads the status
  register back through the window at board +0x220000 and appends its low byte to the caller's buffer.
  It also writes the requested acknowledge into the shadow control word first when it differs.
  Compared with the IP30 build (offset 0x8d58 there) the 643 instructions are the same except for their
  addresses: 6 instructions address board-record displacement -19328 where the IP30 build uses -19352.
- `odsy_i2c_start` (`odsy_i2c.o`, offset 0x40c8, 4912 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_i2c.o)`.

  Sends a start condition and the slave address on one two-wire port. Every control-register write of the
  port is a 64-bit command pushed into the display FIFO at board +0x400000: the high word is 0x30000001
  OR the register's display address shifted left 14 (the address is the halfword at +24 of the port record),
  the low word is the shadow control word at +0 of the record. Before each push it takes the display-FIFO
  semaphore (a semaphore at board record +0x8530, or the spin lock at +0x8540 when the flag at +46184 is
  set) and calls `odsy_poll_dfifo_level` with level 14 or 15; a FIFO wait that fails returns 3. The
  sequence sets bit 14 (force idle) for 20 microseconds with `odsy_usdelay`, clears it for another 20, then
  reads the control word back through the window at board +0x220000 (display address times 8), loads the
  address byte into bits 7:0 (a copy also goes to port record +32) with bit 8 (start), bit 9 (transfer) and bit 12
  (send) set and bit 11 (stop) cleared, pushes it, clears bit 8 in the shadow, and waits with
  `odsy_i2c_xfer_done_loop`. A timeout is returned as is; otherwise it returns the result of
  `odsy_i2c_recv_ack` called with the inverse of the ack argument. The semaphore release also replays a pending
  cursor-position command stored at board record +34120 when one is waiting.
  Compared with the IP30 build (offset 0x40c8 there) the 1228 instructions are the same except for their
  addresses: 12 instructions address board-record displacement -19328 where the IP30 build uses -19352.
- `odsy_i2c_stop` (`odsy_i2c.o`, offset 0x53f8, 2504 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_i2c.o)`.
  Ends a two-wire transfer. It waits for display-FIFO room (level 14 or 15 through `odsy_poll_dfifo_level`),
  sets bit 13 (force stop) of the shadow control word and clears bits 14, 9, 8 and 11 (idle, transfer, start,
  stop), pushes the word as a display-FIFO command and waits with `odsy_i2c_xfer_done_loop`. After it
  completes it zeroes the shadow control word, reads the port's status register back through the window at
  board +0x220000 and returns 1 when bit 22 (busy) is still set, 0 when the bus released, and 3 or the
  timeout code of the wait when a step failed.
  Compared with the IP30 build (offset 0x53f8 there) the 626 instructions are the same except for their
  addresses: 6 instructions address board-record displacement -19328 where the IP30 build uses -19352.
- `odsy_i2c_write_comp_reg4` (`odsy_i2c.o`, offset 0xaf4, 2636 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_i2c.o)`.
  Writes a four-byte register of the compositor on the two-wire bus. It stores the word to send in memory
  and then, four times starting from the most significant byte, clears bits 11 and 13 (stop and force stop),
  sets bit 9 (transfer), loads the byte into bits 7:0 and pushes the control word, polls up to 133 times at
  100 microseconds for transfer done (status bit 9) and returns 1 when the acknowledge bit 8 shows a refusal.
  It returns 0 after the last byte, and 1 when a poll or FIFO wait fails.
  Compared with the IP30 build (offset 0xaf4 there) the 659 instructions are the same except for their
  addresses: 7 instructions address board-record displacement -19328 where the IP30 build uses -19352.
- `odsy_i2c_write_denali` (`odsy_i2c.o`, offset 0x30cc, 2040 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_i2c.o)`.
  Sends one command message to the Denali device (arguments: two-wire port record, byte buffer, byte count). It takes the display semaphore (`psema`, +0x8530, priority
  25) unless the start-up word at -19328 from +0x10000 is set, waits for display-FIFO level 14, reads display register 0x3804 and pushes it back with bits 14:12 set to 6, then calls
  `odsy_i2c_write_denali_byte` for each byte in order. A byte whose write fails ends the loop; either way it waits for level 15, restores register 0x3804 from the saved word
  and releases through the pending-cursor replay of `odsy_i2c_start` (spin lock +0x8540, `vsema`). It returns 1 after a failed byte (or a failed FIFO wait) and 0 when
  every byte went out. The IP30 build has the same body with the start-up word at -19352.
- `odsy_i2c_write_denali_byte` (`odsy_i2c.o`, offset 0x2660, 2668 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_i2c.o)`.
  Writes one byte to the Denali device. It calls `odsy_i2c_start` with the address byte 238 (0xee, a write
  to 7-bit address 0x77, stored at port record +32), waits 20 microseconds, then sets bits 9 and 11 (transfer, stop),
  clears bit 13, loads the byte into bits 7:0, pushes the word and polls up to 133 times at 100 microseconds
  for status bit 9. A refused acknowledge (bit 8) fails. It returns 0, or 1 when any step fails.
  Compared with the IP30 build (offset 0x2660 there) the 667 instructions are the same except for their
  addresses: 7 instructions address board-record displacement -19328 where the IP30 build uses -19352.
- `odsy_i2c_xfer_done_loop` (`odsy_i2c.o`, offset 0x9764, 1256 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_i2c.o)`.
  Waits for a two-wire byte transfer to finish. Each pass takes the display-FIFO semaphore, waits for the
  FIFO to drain to level 0, reads the port's status register back through the window at board +0x220000 into
  the shadow status and returns 0 when bit 9 (transfer done) is set, otherwise it waits 100 microseconds
  with `odsy_usdelay`. After 800 passes it returns 2; a FIFO wait that fails returns 3.
  Compared with the IP30 build (offset 0x9764 there) the 314 instructions are the same except for their
  addresses: 3 instructions address board-record displacement -19328 where the IP30 build uses -19352.
- `odsyInitBoardGfx` (`odsy_init.o`, offset 0xc5c, 640 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_init.o)`.
  Builds the software state of a board after attach. It clears the first 200 bytes of the record,
  initialises the semaphores, mutexes, sync variable and spin lock the driver uses (named "odsy dfifo
  sema", "odsy mouse pos lock", "scanbuf_lock", "shdwptr_lock" and "pfstat_lock" among them) at their
  fixed offsets, calls `odsyInitDDRNs` and `odsyInitHwWrRgn`, and allocates 0xc000 zeroed bytes into the
  pointer at +888, whose offset +32 becomes the microcode buffer pointer at +34136. It adds hardware-
  inventory entries built from the memory-size word at +252 and the flag words at +280 and +296, sets +176
  to 1, +88 to 40 and +20 to 1, and registers the board with `GfxRegisterBoard`.
  Compared with the IP30 build (offset 0x904 there) the 160 instructions are the same except for their
  addresses: 1 instruction address board-record displacement 216 where the IP30 build uses 320; 1
  instruction address board-record displacement 232 where the IP30 build uses 336; 1 instruction address
  board-record displacement 256 where the IP30 build uses 360; 1 instruction address board-record
  displacement 272 where the IP30 build uses 376; 1 instruction address board-record displacement 288
  where the IP30 build uses 392.
- `odsyInitInterrupts` (`odsy_init.o`, offset 0x3100, 1032 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_init.o)`.
  Programs the five interrupt sources. It builds the error-source destination words at 0x34 and 0x3c, the
  flag-source words at 0x1044 and 0x104c, the packed vector word at 0x1054 and the two control words at
  0x5c and 0x105c with read-modify-write sequences in the board record, stores each once with a sync, and
  ends with the start-up enable mask at 0x1034 (clear bit 31, set bits 30 to 27, and so on down to bit 1).
  Compared with the IP30 build (offset 0x275c there) the 258 instructions are the same except for their
  addresses: 1 instruction load a 64-bit command constant through $gp displacement -30608 where the IP30
  build uses -30632.
- `odsyPrintRegs` (`odsy_init.o`, offset 0x4930, 84 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_init.o)`.
  Prints the two diagnostic registers after a fatal error: it loads the flags word at 0x1014 and the
  status word at 0x1064 and logs them through the `%R` bit-table print using the register bit tables kept
  in `odsy_init.o` `.data` (offsets 0x0 and 0x460).
  Compared with the IP30 build (offset 0x3f0c there) the 21 instructions are the same except for their
  addresses: 2 instructions load a 64-bit command constant through $gp displacement -30584 where the IP30
  build uses -30592; 1 instruction address board-record displacement 1168 where the IP30 build uses 1272;
  1 instruction address board-record displacement 1184 where the IP30 build uses 1288.
- `odsy_teardown` (`odsy_init.o`, offset 0x4840, 240 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_init.o)`.
  Declares a board dead, once. It takes the semaphore at board record +28488 with `psema` and increments
  the counter at +816; only the increment that reaches 1 does the work. That pass logs the board number
  (halfword +790) at severity 1, prints the dmawait timeout and finish values at severity 5 when the words at +46208 or +46212 are non-
  zero, dumps the registers with `odsyPrintRegs` on the PIO base at +824, and calls `gthread_scan` with the callback `GfxKiller` and an argument block holding 9. The semaphore is
  released with `vsema` on every path.
  Compared with the IP30 build (offset 0x3e1c there) the 60 instructions are the same except for their
  addresses: 1 instruction address board-record displacement 1056 where the IP30 build uses 1160; 1
  instruction address board-record displacement -19304 where the IP30 build uses -19328; 1 instruction
  address board-record displacement -19300 where the IP30 build uses -19324; 1 instruction load a 64-bit
  command constant through $gp displacement -30568 where the IP30 build uses -30584; 1 instruction address
  board-record displacement 1088 where the IP30 build uses 1192; 1 instruction address board-record
  displacement 1128 where the IP30 build uses 1232.
- `odsyDmaInterrupt` (`odsy_intr.o`, offset 0x540, 56 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_intr.o)`.
  Handles the DMA interrupt, source 2. The 56-byte routine only calls `odsyDMAIrptWakeup` with the board,
  which wakes the thread waiting on a transfer; it reads no board register itself.
  Compared with the IP30 build (offset 0x540 there) the 14 instructions are the same except for their
  addresses: 1 instruction address board-record displacement -15320 where the IP30 build uses -15456.
- `odsyFlagInterrupt` (`odsy_intr.o`, offset 0x1ac, 916 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_intr.o)`.
  Handles the flags interrupt, source 1. It loads the flags word 0x1014 and ANDs it with the enable mask
  at 0x1034, calls `odsyLowaterInterrupt` for bit 9 and `odsyGenlockInterrupt` for bit 31, logs a message
  for each other pending error or status bit, and then tears the board down with `odsy_teardown` when the
  raw flags intersect 0x39f02587; otherwise it writes the pending bits to the clear register 0x101c.
  Compared with the IP30 build (offset 0x1ac there) the 229 instructions are the same except for their
  addresses: 2 instructions address board-record displacement -19360 where the IP30 build uses -19384; 1
  instruction address board-record displacement -15320 where the IP30 build uses -15456.
- `odsySsyncInterrupt` (`odsy_intr.o`, offset 0x578, 72 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_intr.o)`.
  Handles the sync interrupt, source 4. The 72-byte routine wakes the DMA waiter through `odsyDMAWakeup`
  and returns; it touches no board register itself.
  Compared with the IP30 build (offset 0x578 there) the 18 instructions are the same except for their
  addresses: 1 instruction address board-record displacement -15320 where the IP30 build uses -15456.
- `odsyXtErrorInterrupt` (`odsy_intr.o`, offset 0x0, 428 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_intr.o)`.
  Handles the crossbar error interrupt, source 0. It counts the event in the host's per-cpu table, loads
  the widget status word (0xc), and tests bit 8 (response time-out), bit 7 (address error) and bit 6
  (packet format error) in that order, printing the matching message with the header from 0x44 and the
  address words 0x1c and 0x14; only the address-error case also calls `odsyPrintRegs` and `odsy_teardown`.
  It always ends by storing 0 to 0x44.
  Compared with the IP30 build (offset 0x0 there) the 107 instructions are the same except for their
  addresses: 1 instruction address board-record displacement -15320 where the IP30 build uses -15456.
- `odsyRetraceHandler` (`odsy_retrace.o`, offset 0x131c, 716 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_retrace.o)`.
  Handles the retrace interrupt, source 3. It takes the retrace mutex, counts the retrace, loads the
  buffer-select word at 0x10d4 and XORs it with the record shadow at +28528 to find windows whose buffer
  changed, then for each of the 32 ids with a pending swap it validates, swaps with `odsySwapBuffer` or
  writes the id to 0x10b4 after a repeat count, forcing a swap that has waited 300 retraces.
  Compared with the IP30 build (offset 0x1274 there) the 179 instructions are the same except for their
  addresses: 1 instruction address board-record displacement -15320 where the IP30 build uses -15456.
- `gf_OdsyPositionCursor` (`odsy_brdmgr.o`, offset 0x118c, 580 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Moves the hardware cursor. It stores the pointer position in the board record (halfwords at -19672 and
  -19670 from record +0x10000), subtracts the hot spot (halfwords at -19668 and -19666) and packs the result as
  a 64-bit display-FIFO command with x in the upper and y in the lower halfword. When the display mode halfword at +804 is 2
  (dual head) and the x position is at least the left head's width at +800, it subtracts the width and marks the
  right head, otherwise the left. It then takes the spin lock at +0x8540 and tries the display-FIFO semaphore at
  +0x8530 with `cpsema`. On success it clears the stored pending command at -31416 and, after a wait for display-FIFO
  level 12, sends the command (first rewriting the cursor control word at -19664 when the head changed) and releases the semaphore;
  if the FIFO wait fails the command is stored for the holder to replay. When the semaphore is busy it stores
  the command at -31416 and the head flag at -31408 for the semaphore holder to send, and returns 0.
- `odsyProbeFb` (`odsy_brdmgr.o`, offset 0x690, 404 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Checks that a frame buffer request fits in SDRAM without programming anything. It repeats the layout
  arithmetic of `odsyConfigFb` on the request's width, height, depth (32, 16 or 8) and accumulation-buffer count: it takes the
  tile counts rounded up to 16-pixel tiles and an even row, starts at the frame buffer address held at record
  +1360 and rounds each following region start up to a four-tile boundary. It returns 0 when the first free
  address stays below the SDRAM size at record +252 (in megabytes), and otherwise logs a severity 4 message and
  returns -1. It writes nothing to the board or the record.
- `odsySetDACGain` (`odsy_brdmgr.o`, offset 0x63ec, 1032 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Turns the DAC gain on or off. It waits for display-FIFO level 14 under the semaphore at record +0x8530,
  reads display register 0x26c0 back through the window at board +0x233604, sets bit 1 when the second argument
  is nonzero and clears it otherwise, and pushes the word as a display-FIFO command. A failed FIFO wait returns -1;
  success returns 0. The release of the semaphore also replays a pending cursor command in the same way as
  `odsy_i2c_start`.
- `odsyDMAFinish` (`odsy_dma.o`, offset 0x2c8c, 388 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Drains and frees a context's DMA state. It sets the flag word at board record -19324 (from +0x10000) and calls
  `odsyDMAWait` on the context's two operation queues (at +248 and +256), clears the flag, then takes the lock at
  record +5800 and walks the context's set of buffers (record +416, with `OdsyInitCSetCursor` and
  `OdsyNextCSetElem`). For each buffer with a memory block it overwrites the block with the byte 151 and frees it with
  `kmem_free` (a severity 4 message first when the board's flag at +816 is clear), unpins the user pages with
  `unuseracc` when a pin is recorded, and releases the buffer's id with `OdsyDeallocCSetId` unless the id field is -1.
  It ends with `OdsyDestroyCSet` and releases the lock.
- `odsyDMAWakeup` (`odsy_dma.o`, offset 0x2934, 724 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Completes DMA operations the board has finished. Under the lock at record +5800 it takes the difference
  between the completion counter the board writes back (+6888) and the driver's own count (+6880), both
  modulo 2 to the 61st, and, using the 128-entry ring of pending operation pointers at +5856 indexed by
  the word at +5848, finishes that many operations. A write-back byte pair is first adjusted (the marker 0x5a in
  the upper byte, a 7-bit counter at +5834 and +5836) so the count of pending entries can be recomputed.
  For each finished operation it clears bit 0 of its flags at +8, stores the operation's value at +72 into the
  write-back slot behind the pointer at +888 and, when the flags word is then zero, calls `odsyDMADone` and wakes
  the waiters with `sv_broadcast` on the variable at +5816. An empty ring slot, a completion count larger than
  the ring or an inconsistent counter logs a severity 4 message and ends the pass.
- `odsyDMAOp` (`odsy_dma.o`, offset 0x1b5c, 2056 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Issues one DMA operation. Arguments: owner context (may be 0), board record, an address list for the
  page-table builder (0 makes it build one from the address that follows), the user address and byte count of this piece, a queue-selector word it zeroes on entry, the 32-byte
  transfer header, a result pointer and, on the stack, a flags word (bit 0, bit 1), the buffer's user address and
  length for the lock record, and the number of pieces still to come. Under the mutex at record +5800 it takes the
  next of 256 operation records of 80 bytes at record +7960 (counter at +28440, wrapping at 255), zeroes it and
  sets state 1. Flag bit 1 also creates a sync variable in it at +32. With an owner and a user range it allocates a
  context-set id with `OdsyAllocCSetId` and keeps the range at +56 and +64; an allocation failure logs a severity 4
  message and returns 12. `ConstructTftchWarList` then splits the request; the routine allocates the table
  (`kmem_alloc`, size from that call), and for each piece copies the 32-byte header into a 128-byte entry,
  rewrites its x and y (word 4), width and height (word 12) and row length (word 24, from the pixel-size table
  indexed by header word 28 bits 18:16) and has `generatePageTable` fill the page list. Any failure unlocks the
  user pages with `unuseracc`, releases the set id, overwrites the table with the byte 139 and the record with 141, frees
  both and returns the error. Next it takes the mutex again, waits with `odsyDMAWait` (mode 0, mutex dropped) until
  outstanding operations plus 2 fit within 128 minus the pieces to come, stores the issue count (+6888) in the
  write-back slot behind +888 and in the record's +72 and the result, advances +6888 modulo 2 to the 61st, puts
  the record in the 128-entry ring at +5856, advances the 7-bit tag counter at +5844 and writes 0x800 to the
  flag-clear register 0x101c. Per entry it converts the table address with `kvtophys` and sends two doublewords
  through the command FIFO window at +0x110000: the first has 0xe01 in its upper half (0xe03 if the selector
  word were nonzero; nothing here sets it) and physical address bits 47:24, the second bits 23:0, in the packing
  `BUZZ.h` section 5 gives. When flag bit 1 is set, header word 28 bit 24 is set and the entry is the last, the
  entry's word 28 gets bit 31 and the operation joins the interrupt completion list at record +28448 with state
  bit 1. After the last entry it releases the page-list builder state with `ReleaseTftchWarList`, then
  sends, when header word 28 bit 27 is set, the sequence `0x14001`, `0x10443` (250), `0x10046`, `0x10046`,
  `0x10019`, `0x10443` (150), four `0x10046`, `0x10443` (250), two `0x10046`. If
  flag bit 1 is clear it ends with block `0x10658` and operand 0x00120000 (the same pair is also sent before the
  first kick when flag bit 0 is set and header bit 27 is clear); if flag bit 1 is set it ends with block 0x10a5a, the record word at +5840 ORed with 0x8000
  and the tag 0x5a00 plus the old tag counter, and stores the tag in the halfword at +5832. With flag bit 1
  set and an owner it stores the issue count in the owner's +248 (+256 if the selector word were set), and it ends with a
  doubleword load from the fixed uncached address 0xaff00080, which reads as a flush of the preceding stores
  (inferred). It returns 0.
- `odsyDMAOps` (`odsy_dma.o`, offset 0xb34, 4136 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Splits one pixel-transfer request into `odsyDMAOp` calls. It takes the board record, the owner context, the
  request (user address +16, length +24, header +28 to +59, flags +60, result +72) and a window record. It locks
  the buffer with `useracc` (flags 272; a refusal returns 12), sends block `0x10658` with operand 0x00120000,
  and sets the result to -1. Header word 7 (request +56) bit 27 clear: one `odsyDMAOp` for the whole buffer with
  flag bit 1, and its result is returned. Bit 27 set with flag bit 3 clear and bit 4 clear: the prologue
  `0xcf80a92f` with ten operands (the first ten words of the context mirror at context +176 plus 6988), then
  `0x14400` operand 10, the vertex word `0x8080c800` and two zeros, then one `odsyDMAOp`. Bit 27 set with flag
  bit 4 set, a zero window query (context +224, +120, +144) and a nonzero clip count at context +40: the
  routine clears bit 27 and intersects the destination with up to four rectangles from context +44, +60, +76
  and +92 (left, top, right, bottom), one `odsyDMAOp` for each non-empty one, flag bit 1 only on the last,
  header x, y and height and the length rewritten per piece. Flag bit 3 set: chunks along y that end on a
  multiple of 64 rows (128 when the board record's word at +280 is 1) after clipping against the window
  rectangle (window +20, +24, +32, +36) and an origin that is zero or, when header bit 29 is set, taken from the context's window
  record; per chunk it rebuilds the prologue with four operands converted to floating point by software
  normalisation, and around the first and last chunk, when the context flag at +7352 is set, it sends settle `0x10443`
  and block `0x10841` with context words +112 and +108. A failing `odsyDMAOp` logs "dmaops: failed intermediate
  dma operation", sends `0x10444`, then `0x10a5a` with the tag-page word at record +0xb44c ORed with 0x8000 and
  the value 0xd0a, calls `odsyDMAWait` in mode 1 on the failed operation, unlocks with `unuseracc` and returns the
  failure code. Which of the computed words the board uses is unknown (`docs/kernel.md`).
- `odsyGenlockInterrupt` (`odsy_intr.o`, offset 0x5c0, 4064 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)`.
  Handles the genlock interrupt. Unless the board record's start-up word (-19352 from +0x10000) is set it
  takes the display-FIFO semaphore at +0x8530 with `psema` (and, when the record's halfword at +298 is 3, the
  semaphore at +0xb470 around the whole routine). It calls `odsy_poll_dfifo_level` for level 0, reads the
  genlock status register 0x27cd through the read-back window at board +0x233e6c, releases the semaphore
  with the usual pending-cursor replay, counts the event in the host's per-cpu table and, when status bit 0 is
  clear, logs "Invalid GenState" and returns. A second semaphore section reads the control register 0x27cc
  (+0x233e64); the routine goes on only when its bit 6 is set. It then takes a mutex inside the record that
  the word at -19432 points to (+0x8520 when the word at -19420 is nonzero, +0x8510 otherwise) and, when the
  timing word at -19504 is zero, rewrites the clock part. Status bit 1 set is the "lost" case and clear the
  "got" case. For the AMI-type part (record word +292 above zero, I2C address 0x58) it writes registers 1, 2, 5
  and 6 with `odsy_i2cPLLRegWrite`, taking the low byte of four consecutive timing-structure words: the
  free-running group for "lost" and the genlock group, 16 bytes later, for "got". For the other part (address
  0x26) it first reads register 7 with `odsy_i2cPLLRegRead`, then writes register 0 (0x01 for "lost", 0x11 for
  "got") and register 7 (the saved byte with bit 7 set for "lost", cleared for "got"). Every failed write logs a
  severity 4 message naming the register and the case. It then waits for display-FIFO level 0 again and,
  if the wait succeeds, clears (lost) or sets (got) bit 1 of the shadow of the display control word at
  -19500, stores it back and sends it as a display-FIFO command (header word kept in the object's constants,
  data word the shadow) at board +0x400000, followed by the semaphore release. When the FIFO wait succeeded it
  unlocks and calls `rrmGenlockNotify` with the record's first word and 0 for "lost" or 1 for "got"; when it
  failed it only unlocks. A nonzero timing word at -19504 skips the clock rewrite entirely.
- `odsy_i2c_cmd` (`odsy_ddc.o`, offset 0x2314, 3312 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.

  
  Runs one user two-wire command. The request block carries the command number as a halfword at +2, the
  port number at +8 (0 selects the port handle at record +0xb3e0, 1 the one at +0xb408, anything else
  returns -22), the device address byte at +4, register at +5, value at +6, a status word at +12, the byte count at +16
  and +20, the user buffer pointers at +24 and +32 and the acknowledge mode at +40. It takes the mutex inside
  the record the handle points to (+0x8520 when the handle's word at +28 is nonzero, +0x8510 otherwise),
  jumps through a 17-entry table, and unlocks on every exit. Command 0 calls `odsy_i2cReset`. Command 1 starts
  a transfer with `odsy_i2c_start`; on port 1 it first sets or clears bit 5 of the clock part's register 5
  (address byte 31) by the request halfword at +0 and writes register 0 as 0. Command 2 calls `odsy_i2c_stop`
  and on port 1 writes register 0 as 0x30. Command 4 sends up to the request's count with `odsy_i2c_sendbyte`
  and command 3 receives up to 256 bytes with `odsy_i2c_long_recvbyte`, copying them out; both return the
  count, or -5 when the transfer stopped early. Commands 6 and 7 write and read one register of the device at address
  byte shifted right by one with `odsy_i2cPLLRegWrite` and `odsy_i2cDDCRegRead`. Command 8 reads an EDID with
  `odsy_i2cProbe2b` into the record's slots (main port at +308, left DCD channel at +438, right at +568, each
  a halfword valid flag followed by 128 bytes; port 1 selects the channel by the halfword at +0, writing register 0
  as 0x10 or 0x20 around the probe and restoring 0x30); command 9 copies a stored slot out, returning -22 when
  its valid flag is zero. Commands 10 and 12 log the 2AB initialise message and call `odsy_i2cProbe2ab` and
  `odsy_i2c2abPresencechk`; either failure returns -5. Command 11 runs `odsy_2abCmdWrapper` and copies out its
  reply. Commands 15 and 16 read and write the DM5 video chip (addresses 0xef and 0xee) with
  `odsy_i2c_read_denali` and `odsy_i2c_write_denali`, switching the clock part's registers 0 and 5 first;
  when the record word at +704 is 4 they skip that switch and take the second mutex pair (pointer at -19472 from +0x10000) instead. Commands 5, 13 and
  14 do nothing (5 returns -22). Each command that fills the status word copies the whole 48-byte block back
  and logs a severity 4 message on failure.
- `odsy_i2cProbe2b` (`odsy_ddc.o`, offset 0x410, 6172 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.

  per-port data slot.
  Reads a monitor's EDID over a port handle (word at +0 points at the line-control shadow, +16 is the board
  record, +24 the channel index, +28 selects the mutex pair, +32 the device address byte). It zeroes 128 bytes
  of the caller's slot and calls `odsy_i2cReset`. Before the transfer
  it waits for display-FIFO level 13, reads display register 0x2700 through the window at board +0x233804,
  ORs 0x440 into it (or, when the handle's flag at +28 is clear, ORs 0x800, masks it with an object constant and
  ORs 0x28180) and sends it as a display-FIFO command. It then sets bit 15 and clears bit 17 of the
  line-control shadow and sends it as a write to the register addressed by the channel index (command header
  0x30000001 plus the index shifted by 14). It then gives nine clock pulses to free a stuck slave: bit 16 of
  the shadow set, sent, a 10 microsecond delay (`odsy_usdelay` or `us_delay`), cleared, sent, delayed; a tenth
  set follows. Every FIFO write sits in the display-FIFO semaphore and spin-lock bracket, so each is
  followed by the same replay of a pending cursor command as in `odsy_i2c_start`. Afterwards it writes back the 0x2700 word with bits 11:10
  cleared and makes up to four attempts: `odsy_i2c_start` to 0x60 (the extended-EDID segment pointer) and a
  zero byte with `odsy_i2c_sendbyte`, `odsy_i2c_start` to 0xa0, the offset byte 0, `odsy_i2c_start` to 0xa1, then
  byte 0 with `odsy_i2c_long_recvbyte`, bytes 1 to 126 with `odsy_i2c_short_recvbyte` and byte 127 with a long
  receive that ends the transfer. A failure in the 0xa0 or 0xa1 phases or the long receives resets the port
  and tries again; a short-receive failure ends the routine at once. When all 128 bytes arrive it calls
  `odsy_validate_ddc_data`, and a zero result retries. On success it stores state 2 at record +304, sets the
  slot's first halfword to 1 and returns 0; every failure stores 255, resets the port, clears the halfword
  and returns 1. The EDID bytes sit at slot +2.
- `odsyRestoreXform` (`odsy_ctxsw.o`, offset 0x2784, 2644 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Replays the transform engine's saved state through the command FIFO port at board +0x110000 (every store
  followed by a sync). Arguments: board record, context; the state is the context's hardware-state structure at
  context +176. The full replay runs when the context's slot word (word 0) is nonzero and differs from the
  board's current slot at record +820; otherwise only the steps marked always run. Full: the 512-word table
  behind register 0x31 in 30 groups of 16 words (the groups at 320 and 480 are skipped), each group opened by the
  index word `0x31008000` with the index spread over the command word, plus block word `0x9080bda2` (`0x9000bda2`
  for the group at 160), the 16 words from state +7356, and a reselect of the saved index at +9888; then
  register 0x29 set to 410, register 0x32 to 24 and block `0x8e809015` with the four words at state +9788, and data-memory entries 0 to 23 (index word `0x32008000`, the same block word, four
  words each from state +9404 plus 16 times the entry). Always: register 0x28 cleared, then the entry list as `0x60008000`
  words from state +9948, count at +10972; a count of 255 or more logs a severity 4 message, signals the
  current process with signal 9 through `psignal` and returns before anything else is sent. Always: the 68-word
  table behind register 0x34 from state +6672 (index 0, block `0x9080bdc8`, 16 words; index 16, block
  `0x908091df`, 4 words) and, in the full replay only, index 36 (16 words from +6752), 52 (16 from +6816) and
  20 (16 from +6880), each followed by a reselect of index 0; the saved index word at +9900 is cleared to 0, the
  indexes are written through it and the original value is put back in memory afterwards. Always: sequencer
  registers 0x20 to 0x35 from the words at state +9820, written as `(register << 24) | 0x8000` plus the spread value, skipping registers
  0x26, 0x2b, 0x2d, 0x2f and 0x30; register 0x2e is sent as the fixed word `0x2e008380` when its saved word is zero. The
  table layouts are in `docs/buzz.md`, pass 9.
- `odsyRestoreVB` (`odsy_ctxsw.o`, offset 0x31d8, 4076 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Replays the vertex attribute slots from the context's saved record (state +192) through the command FIFO port.
  Arguments: board record, context, a vertex descriptor (two words of 2-bit slot selectors), an unused word and a
  count. Each slot is a four-entry array of command words at record offset c, the selector picking the entry; the
  routine sends that command word and then the number of operands in its bits 13:10, read from record offset d
  plus 16 times the selector. The slots and the names the routine prints for them are: 272 index (operands 832),
  288 color (896), 304 normal (960), 320 tangent (1024), 336 texcoordA (1088), 352 texcoordB (1152), 368 edgeflag
  (1216), 384 front ambient (1280), 400 front diffuse (1344), 416 front specular (1408), 432 front emission (1472),
  448 front shininess (1536), 480 back ambient (1664), 496 back diffuse (1728), 512 back specular (1792), 528 back
  emission (1856) and 544 back shininess (1920). The full replay runs when the context's slot word is nonzero and
  either differs from the board's slot at record +820 or the count argument is positive. It walks the slots in the
  order 384, 400, 416, 432, 480, 496, 512, 528, 304, 320, 336, 352, sends the four-operand block `0x908091ea`
  built from operand 0 of the selected 448 and 544 entries and their bit-31 complements, then sends 448, 544,
  272, 288 and 368. Otherwise only 272, 288 and 368 are replayed. A selected command word with a zero operand count is
  sent only when, ignoring bits 22:16, it equals `0x3000c02e` or `0x2f00c02e`; any other such word is not sent and
  the routine logs a severity 7 message "illegal attr restore cmd" with the slot name and word. The selector
  fields are in `docs/buzz.md`, pass 9.
- `odsyRestartContext` (`odsy_ctxsw.o`, offset 0x4c34, 2884 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Restarts an interrupted primitive after the other replays. Arguments: board record, context; state at context +176
  and the saved record at +192. The saved primitive word at record +128 gives the primitive type in bits 3:0
  (0 to 10, 15 when out of range), the counts in bits 5:4 and 7:6 and further fields in bits 23:11. First it
  sends register 0x34 index 0, the 16-word settle sequence (blocks 0x043, 0x046 and 0x019 with their fixed operands),
  then block 0x017 with the four words at state +6948 to +6960, three more times with the third word
  as saved, zero, saved with bit 23 set and saved again, with settle groups between them. Types other than 10
  (rectangle) then go through a loop that clears bits 7:4 of the record word, subtracts the count in bits 5:4
  from the fields in bits 23:21, 15:14 and 13:12 (modulo 8, 4 and 3), copies bit 14 to bit 11, and decides
  a flag that is 1 unless the type is line loop, triangle fan or polygon. It sends block 0x000 with the type,
  block 0x044 with 0 and block 0x050 with two words built from the fields and the context's slot, then (for types 0 to 10)
  the words 1856, 480, 1857 and the record word, and replays the vertices through the walker for the type
  (`restorePoints`, `restoreLines` and the others, indexed by type); with a zero count it sends only a
  `0x8080c800` vertex word with two zeros for the rectangle pass. Type 10 first tests the rectangle mode in
  state +6964, calls `odsyRestorePIOPixel` when the record's pixel count at +172 is nonzero, then
  `odsySetProgram` with the number at state +11056, `odsyRestoreVB` (record +132 as descriptor, count 0), sends the
  ten-operand block `0xcf80a92f` from state +6988 when the mode is nonzero, and joins the loop with the
  rectangle flag set, which adds the field bits to the block 0x050 word. After the loop it calls `odsyRestoreVB`
  with the count, and when the program count at state +10972 is nonzero calls `odsySetProgram` and sends
  registers 0x33, 0x29, 0x2a and 0x2c from state +9896, +9856, +9860 and +9868 followed by `0x278083ff` and
  `0x280080ff`; with a type outside 0 to 10 it ends that part with block 0x258 and operand 0x00120000. Last it
  sends the saved partial command words (count at record +188, first words at +176 and +180, the rest from +4)
  as doublewords, re-selecting register 0x34's index from state +9900 first. The meanings of the record word's fields are inferred from this arithmetic alone.
- `odsyRestoreRaster` (`odsy_ctxsw.o`, offset 0xa58, 7468 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Replays the context's raster state through the command FIFO port at board +0x110000 from the hardware-state
  structure at context +176 (offsets below are into it); every word is a store with a sync, and the function
  has no loop-carried state apart from the table counters. The full replay runs when the context's slot word
  is nonzero and differs from the board's slot at record +820. It first sends the 16-word settle sequence
  (blocks 0x043, 0x046 and 0x019 with fixed operands), then in this order, with settle groups after blocks
  0x017, 0x023, 0x01d and 0x053: block 0x017 (4 words from +6948), 0x023 (4 from +232), 0x052 (+228), 0x01d (+168, +172),
  0x053 (5 from +6964), 0x004 (+132), 0x005 (+136), 0x022 (+200), 0x015 (+140), 0x056 (+7344), 0x048 (+204 to +212),
  0x03f (+128), 0x04e (16 words from +0), 0x04f (16 from +64), 0x04a (+220, +224), 0x01b (5 from +312), 0x016 (7 from
  +332), 0x051 (+6944), 0x04c (+7340) and 0x021 (+188 to +196). The word at +4464 selects the next group: 2 sends
  block 0x03b (8 words from +4468), 3 sends block 0x03d (2 words), and any other value sends blocks 0x030 to
  0x033 (8 words each from +4468). The word at +4204 selects the one after: 2 sends block 0x038 (16 words from
  +4208), 3 sends block 0x03a (4 words), and any other value sends blocks 0x028 to 0x02b (16 words each from +4208).
  The full replay then continues with blocks 0x01e (+176), 0x01f (+180), 0x020 (+184), 0x058 (+216), 0x01a (6 words
  from +144), 0x047 (6 from +7060), 0x013 (4 from +7084), 0x03e (3 from +4596), then five 256-word tables, each sent as 16
  blocks of 16 words: 0x220 to 0x22f from +1132, 0x230 to 0x23f from +2156, 0x240 to 0x24f from +3180, 0x200 to
  0x20f from +4612 and 0x210 to 0x21f from +5636 (the last two interleaved at a 64-byte step), the 64 level descriptors 0x280 to
  0x2bf (3 words each from +360 at a 12-byte step), blocks 0x006 (+1128), 0x018, 0x01c (+6660 to +6668), 0x057
  (+7348), 0x04d (16 from +248), 0x042 (+7332, +7336) and then the eight blocks 0x250 to 0x257 (6 words each from
  +7132 at a 24-byte step, highest first), each preceded by block 0x007 carrying the index. Finally, for a
  nonzero slot it calls `odsyPushBufferSelect`; for slot zero it sends blocks 0x04b (8 words from +11072), 0x041
  (+11104, +11108), 0x024 (+11112) and 0x040 (+11116, +11120) with settle groups between them. Every path ends with
  a settle group and block 0x258 with operand 0x00120000. Without the full replay only the
  blocks before the mode groups and the two mode groups are sent. `docs/buzz.md` section 8 lists the same block ids.
- `odsy_mm_obj_alloc_bs` (`odsy_pmm.o`, offset 0x41f8, 608 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Gives a memory object its host backing store. The size is the product of the words at +40 and +72; the
  memory-manager record is three links up (+8 of the object, of its group and of its share group). A size of
  16 KB or more is rounded up to whole 16 KB pages. The routine adds the size to the in-use total at +4880 and,
  when that passes the limit at +4872 while the flag at +4920 is set, clears the flag and calls
  `odsy_mm_jettison_freerun_bs` before adding again. When the total still passes the limit at +4864 it calls
  `odsy_mm_B_warn1`; if it also passes the sum of +4888 and +4896 it calls `odsy_mm_B_warn2` and returns 12.
  A small object takes one `kmem_alloc`; a large one builds an address list with `alenlist_create` and fills it
  with one `kvpalloc` page (256 flag, 16 KB) per step through `alenlist_append`, and on a failed page frees
  those already taken with `kvpfree` and `alenlist_destroy` and returns 12. On success the buffer or list goes to
  +80, the rounded size to +88 and the new total to +4880; it returns 0.
- `odsy_mm_obj_free_bs` (`odsy_pmm.o`, offset 0x4458, 380 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Releases a memory object's backing store. It subtracts the size at +88 from the in-use total at +4880 of
  the memory-manager record (three links up) and, when the flag at +4920 is clear and the total is no larger than
  the limit at +4872, sets the flag. A small buffer is overwritten with the byte 238 and freed with `kmem_free`;
  a large one has every page of its address list handed to `kvpfree` (walking it with `alenlist_cursor_init` and
  `alenlist_get`) and the list destroyed. It then clears +88, +80 and +76 and, when the total is no larger
  than the limit at +4864, calls `odsy_mm_B_okay`.
- `odsy_mm_jettison_freerun_bs` (`odsy_pmm.o`, offset 0x3c60, 320 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Frees backing stores until a request of a given size (second argument) fits. It walks the share groups in the
  set at memory-manager record +1496 with `OdsyInitCSetCursor` and `OdsyNextCSetElem`, and for each the set at
  group +72 of 16-slot object tables (slots at +16, eight bytes apiece). An object whose flag word at +64 has
  bit 0 set and whose backing store size at +88 is nonzero is waited for with `odsyDMAWait` in mode 1 on the op
  number at +96, then released with `odsy_mm_obj_free_bs`. After each release it returns as soon as the in-use total
  at +4880 plus the request no longer exceeds the limit at +4872.
- `odsy_mm_check_for_mutations` (`odsy_pmm.o`, offset 0x3b50, 272 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Saves every eligible object to its backing store. It walks the share groups and object tables the same way as
  `odsy_mm_jettison_freerun_bs`; for each object with bit 0 of the flag word at +64 set and a nonzero size at +88
  it calls `odsy_mm_obj_xfr_bs` with a zero flag word and the board-to-host direction, and returns the OR of the
  results (0 when none failed).
- `SetupDMAParams` (`odsy_pmm.o`, offset 0x3934, 540 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Builds the 32-byte DMA transfer header for a memory object. It zeroes the header, then sets word 0 to the
  board address at object +56 (29 bits), word 1 to +20 and +24 (low and high halves), word 2 to +44 (12 bits),
  word 3 to +32 and +36, word 6 (20 bits) to the row length (+32 times the bytes per pixel at +17), word 4 from
  a pixel-size code (bit 12 set, the code in bits 15:13 and 18:16 and a 1, 2 or 4 from a three-entry table in
  `.data` in its low bits) and word 7 to the direction in bit 24 (the third argument) with 0x32 in the top byte
  and the code in its low bits. The code is 0 for 2 bytes a pixel, 1 for 4 and 2 for 8; 16 logs a severity 4
  message ("difficulty for 16Bpp") and uses 2; any other value, including 1, leaves the code as an
  uninitialised stack word.
- `odsy_mm_obj_xfr_bs` (`odsy_pmm.o`, offset 0x3e2c, 972 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Copies a memory object between the board and its backing store. Arguments: object, a queue-selector word for
  `odsyDMAOp`, and the direction (nonzero is board to host). With no backing store (+88 zero) it returns 22 for
  host-to-board and otherwise calls `odsy_mm_obj_alloc_bs` (12 on failure). It builds the header with
  `SetupDMAParams` and, when the pixel-size byte at +17 is above 8, logs a severity 4 message. Board to host sets
  the flag word at +76 to 1. Then for each of the object's rows (count at +40) it sends the three settle
  groups, computes the row's board address ((row + the word at +28) times the row bytes times the pixel size,
  divided by 16, plus +56) into header word 0 and calls `odsyDMAOp` with flags 3 on the backing store (the
  address list at +80 for stores of 16 KB or more, the buffer plus the row offset otherwise); a failure logs
  "DMA1 backing store transfer failed" or "DMA+ backing store transfer failed" and returns 22. After the rows it waits with
  `odsyDMAWait` in mode 1 on the op number at +96, sends two settle groups with block 0x018, and returns
  0. For host-to-board it also counts the transfer in +104, clears +76 and, when the flag at record +4920 is
  clear, frees the store with `odsy_mm_obj_free_bs`.
- `odsy_mm_reserve` (`odsy_pmm.o`, offset 0x45d4, 500 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Books a memory object's size against the board's budget. The size is the product of +40 and +72, rounded up
  to 16 KB when it is 16 KB or more. It counts the reservation in the word at +4860 of the memory-manager record
  (three links up; the first one runs `mm_init_freespace`), adds the size to the reserved total at +4912 and
  returns 12 when that passes +4904. By the type byte at +16 it calls `odsy_mm_reserve_pbuffer` (3),
  `odsy_mm_reserve_texture` (4 and 20) or `odsy_mm_reserve_scratch` (6); a failure or any other type returns 12.
  On success it stores the new total, sets bit 2 of the object's flag word at +64 and clears the committed state of
  every range in the group's set at +160: the halfwords at +0 and +2 of each range's record at +40 and its flag
  word at +64.
- `odsy_mm_release` (`odsy_pmm.o`, offset 0x47c8, 252 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Undoes `odsy_mm_reserve` for one object. It recomputes the rounded size and, by the type byte at +16,
  calls `odsy_mm_release_pbuffer` (3), `odsy_mm_release_texture` (4 and 20) or `odsy_mm_release_scratch` (6);
  any other type returns without changing anything. It then clears bit 2 of the flag word at +64, counts the
  reservation down at +4860 and subtracts the size from the total at +4912 of the memory-manager record.
- `odsy_mm_reserve_texture` (`odsy_pmm.o`, offset 0x48c4, 508 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Books a texture against the share group's budget. It returns 1 at once when the pressure level at +4924 of the
  memory-manager record is nonzero, and logs "unknown tex type" and returns 1 for a type byte other than
  4 (image) or 20 (detail). The group's new total is its word at +216 plus the object's +60. A budget check
  adds four terms and requires the sum to stay within +4856: the larger of the scratch figure (share group +208)
  and the word at +4852, the larger of +4840 and the image figure (+168), the larger of +4824 and +4828, and
  the detail figure (+172) raised to the new total (for a detail texture; the image case swaps the image
  and detail terms and compares +4844). A failed check returns 1. Otherwise the share group's figure (+168 for image, +172
  for detail) and the manager's maximum (+4832 or +4836) are raised to the new total when it is larger, the
  group's +216 is set to it, the group is moved in the sorted list by `odsy_mm_sg_remove_image_texture_group_from_list`
  or its detail twin followed by the matching insert routine, and 0 is returned.
- `odsy_mm_release_texture` (`odsy_pmm.o`, offset 0x4ac0, 456 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Takes a texture's size out of its group's total (+216 less the object's +60), re-sorts the group in the image
  list (type 4) or the detail list (type 20) and resets the share group's figure (+168 or +172) to the
  head of that list, or to 0 when the list is empty. If the figure that went away equalled the manager's
  maximum (+4832 or +4836), it clears the maximum and recomputes it as the largest head figure over every share group
  in the set at +1496. Other types change nothing.
- `odsy_mm_sg_insert_image_texture_group_into_list` (`odsy_pmm.o`, offset 0x4c88, 360 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Links a group record into its share group's list of image-texture reservations, which is kept in descending
  order of the size at +216 (head at +176 of the share group, links at +232 toward smaller and +240 toward
  larger). An empty list makes the group the head; a group no smaller than the head becomes the head; otherwise the
  routine starts from the last insertion point at +192 and walks in the direction that suits the size, stores
  the insertion point back and links the record in.
- `odsy_mm_sg_insert_detail_texture_group_into_list` (`odsy_pmm.o`, offset 0x4df0, 360 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  The same sorted insertion as its image-texture twin, on the detail-texture list: head at +184 of the share
  group, last insertion point at +200, links at +232 and +240.
- `odsy_mm_reserve_pbuffer` (`odsy_pmm.o`, offset 0x5020, 396 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Books a pixel-buffer object. The group's new total is its +216 plus the object's +60. It copies the sizes of the first
  two records on the pixel-buffer list at +4816 of the memory-manager record, substitutes the new total for the first
  one it exceeds, and, when it displaced one, requires the sum of that pair, the larger of +4848 and
  +4852, the larger of +4832 and +4840 and the larger of +4836 and +4844 to stay within +4856, returning 1
  otherwise. It stores the pair's sum at +4824 on success, sets the group's +216, and re-sorts the group with
  `odsy_mm_remove_pbuffer_group_from_list` and `odsy_mm_insert_pbuffer_group_into_list`. It returns 0.
- `odsy_mm_insert_pbuffer_group_into_list` (`odsy_pmm.o`, offset 0x529c, 220 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Links a group record into the pixel-buffer list whose head is at +4816 of the memory-manager record, in
  descending order of the size at +216, with links at +232 (toward smaller) and +240. It walks from the head, with no
  cached insertion point.
- `odsy_mm_reserve_scratch` (`odsy_pmm.o`, offset 0x5378, 276 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Books scratch memory for a group. The new figure is the object's +60 plus the usage word at +584 of the group's
  scratch record (at +224). When it does not pass the share group's figure at +208 the routine only stores it.
  Otherwise it requires the sum of that figure, the larger of +4824 and +4828, the larger of +4840 and the
  share group's +168, and the larger of +4844 and its +172 to stay within +4856 (returning 1 if not) and
  stores the figure at +208, and at +4848 as well when it passes that maximum. It returns 0.
- `odsy_mm_release_scratch` (`odsy_pmm.o`, offset 0x548c, 276 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Subtracts the object's +60 from the group's scratch usage at +584. When the old usage was the share group's
  figure at +208 it recomputes that as the largest usage over the set at share group +24, and when the old
  usage was also the manager's maximum at +4848 it recomputes that as the largest +208 over the set at +1496.
- `odsy_mm_commit` (`odsy_pmm.o`, offset 0x55a0, 508 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Places a range of a group's objects in board memory. The range record holds the low and high slot at +0 and +4
  and a flag word at +64; a set flag returns 0 at once. First it walks the group's 16 object slots and, for each
  object with bit 1 of its flag word set and bit 0 clear, calls `mm_get_extent` (a failure returns 12), sets
  bit 0 and, when the object has a stored copy (+76), restores it with `odsy_mm_obj_xfr_bs`. Then for every
  slot from the low to the high index it does the same for objects without bit 0 and, for each, sets +56 to
  the extent's start times 32, calls `odsy_mm_obj_xfr_bs` when bit 3 was already set and a copy exists,
  clears the extent's word at +32, stores the address into the per-resource table (+152 of the record
  behind +8) at the object's halfword +0 and sets bit 3. It ends by setting the range's flag word to 1 and the
  halfword at +0 of its record at +40 to 1 and returning 0.
- `mm_check_enode` (`odsy_pmm.o`, offset 0x6248, 456 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Tests whether one free extent node could hold a block, without changing anything. Arguments: memory manager,
  node, pixel size and size in 32-byte units. The node must be at least that big. Its start is rounded up to the
  alignment for the pixel size (a power of two taken from a `.data` table, 2, 4, 8, 16 or 32 units), and the block
  must still fit after the rounding. If the previous node's object has a different pixel size and ends in
  the same 32-unit block as the aligned start, the start moves to the next 32-unit boundary and the fit is checked again;
  if the next node's object has a different pixel size and starts in the same 32-unit block as the last unit of
  the block, the node is rejected. It returns 1 or 0.
- `mm_release_extent` (`odsy_pmm.o`, offset 0x5e2c, 1052 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Frees the board memory of an object (extent node, flag). A null node or one with no owner logs "bogosity in
  ReleaseExtent" and returns 0. For every range in the owner's group that covers the object's slot it clears the
  range's committed state (records +0 and +2, flag word +64), marks the group's objects in a committed range with bit 1
  and sets the node's word at +32 from the range's record. With the flag set it calls
  `odsy_mm_obj_xfr_bs` to save the object to its backing store first. It clears the object's extent pointer (+128)
  and bit 0 of its flags, empties the node and merges it with a free previous node and then a free next
  node (poisoning the freed 40-byte nodes with 183 and 185 before `kmem_free`), updating the record's cached free pointer at +4808
  and, with the flag set, `mm_check_cond_list_cursor`; with nothing merged it resets every cursor with
  `mm_set_all_cond_list_cursor`. It returns the surviving node.
- `mm_get_extent` (`odsy_pmm.o`, offset 0x5800, 1580 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Finds board memory for an object. Arguments: memory manager, request range, object; the size is the object's
  +60 in 32-byte units and the pixel size its byte +17. An object with bit 1 set whose range record has a
  nonzero halfword at +6 is placed at its recorded address (+56 divided by 32): it clears bit 1, calls `mm_shake` in
  its fixed-address mode, and splits the node it returns with a new 40-byte node (`kmem_alloc`) when the node
  starts before that address. Every other object goes through a first-fit search of the free-extent list
  chosen by `mm_get_cond_list_cursor` for the pixel size and size: a free node at least as large, whose start
  rounded up to the pixel-size alignment still leaves room, and which passes the neighbour test of
  `mm_check_enode` (a neighbouring object of a different pixel size may not share the 32-unit block at either
  end). A node starting before the aligned address is split into a leading free node and the chosen one, and
  a chosen node larger than the size is split again at the tail. The cursor cache is updated with
  `mm_set_cond_list_cursor`. When nothing fits it calls `mm_shake` up to three times (passes 0, 1 and 2) and
  rewinds the cursors after a split that follows a shake; after the third failure it logs "failed attempt to get
  %d free 2Bpp tiles" (and flushes the console buffer and enters the debugger when the kernel's debug flag is
  set) and returns 0. A failed `kmem_alloc` of a node logs "cannot alloc new extent node" and returns 0. The
  chosen node's owner (+8) is set to the object, its size (+4) to the request, and the object's +128 to the node.
- `mm_shake` (`odsy_pmm.o`, offset 0x6410, 1696 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Makes a free extent by evicting objects. Arguments: pass (-1, 0, 1 or 2), size in 32-byte units, request
  range, a fixed address (pass -1) and the pixel size. It returns a free node that `mm_check_enode` accepts, or 0.
  Pass -1 walks the node list at +1664 of the memory-manager record to the node containing the address and
  releases owners with `mm_release_extent` (saving each to its backing store) until the node covers the block, also
  releasing a neighbour of another pixel size that shares a 32-unit block with either end; with no node it logs
  "algo bogosity #1 in Shake" and returns 0. Pass 2 releases every object that has an extent and is not a
  pixel buffer (type 3) in the share groups other than the requester's, rewinding the cursor with
  `mm_rewind_cond_list_cursor` and testing the freed node after each. Passes 0 and 1 sweep the extent list from the
  cached position at +4808 (once from the head after that): a free node is tested directly; an owner other than a pixel
  buffer is released only when its group has no active range (the OR of the halfword at +6 of every range's record
  is zero), over all ranges for pass 0 and only over the ranges of the requester's id (`OdsyLookupCSetId` on the
  group's set at +160 with the request's +240) for pass 1.
- `odsy_color` (`odsy_tport.o`, offset 0x9b8, 192 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_tport.o)`.
  Text-port colour change on the Origin 350 build. Unless the mute word is set it takes the text-port lock with
  `mutex_spinlock`, marks the port in use by storing 1 (the IP30 build increments a counter behind a write-buffer
  flush instead), stores the colour at +8 of the static object and writes the same eight words to the command
  FIFO port at board +0x110000 as the IP30 build (0x22008001, 0x23008003, 0xce80cc08, three zeros, 0xc580c406
  and the colour), then stores 0 in the in-use word and releases the lock with `mutex_spinunlock`.
- `odsy_mapcolor` (`odsy_tport.o`, offset 0xa78, 236 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_tport.o)`.
  Text-port colour-map write on the Origin 350 build. Unless the mute word is set it takes the text-port lock with
  `mutex_spinlock`, marks the port in use by storing 1, waits for the display FIFO to empty with
  `odsy_poll_dfifo_level` at level 0, packs the three component arguments into the three 10-bit fields exactly as
  the IP30 build does (each value times 4 plus its top 2 bits), pairs the result with 0x30000001 and the index
  shifted left by 14, stores the pair as one doubleword at board +0x400000 and releases the lock after storing 0 in
  the in-use word. The IP30 build uses a counter and write-buffer flushes where this one uses the lock alone.
- `gf_OdsyReleaseGfxSema` (`odsy_sched.o`, offset 0x48c, 248 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_sched.o)`.
  Gives up the caller's graphics flow control on the Origin 350 build. When the flow handle at board record
  +808 is set it raises the level with `splhi` and, if `gfx_flow_am_i_attached` says the caller is attached,
  first checks the word at +104: when it is zero and `gfx_flow_credit_count_get` is below
  `gfx_flow_credit_bias_get` it pins the thread with `rt_pin_thread`, lowers the level with `splx`, waits in
  `odsy_flow_await_returned_credits`, raises the level again and unpins. It then sets the word at +0x85c8 to
  1, stores 1 to the board register at 0x107c, reads that register back (the IP30 build reads 0x106c) and
  calls `gfx_flow_detach_me`; `splx` follows. It returns 0.
- `odsyLLPReset` (`odsy_init.o`, offset 0x1cd8, 184 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_init.o)`.
  Resets the crossbar link to the widget on the Origin 350 build. It reads the widget control word at board
  +36 and keeps it, and addresses the host chip's per-widget block by the widget number from the byte at
  +793 (64 bytes a widget) plus the node bits taken from bits 39:33 of the board's base address, not from a fixed
  table as on IP30. With a device handle (the word at -19400 from +0x10000) it calls `xwidget_reset`
  and then loads a word from the bottom of its own frame, which that path never stores, and writes it to
  host-chip word +268. Without a handle it saves word +268, waits 10 ms with `odsy_usdelay`, writes 0 to
  +308 and restores +268. Both paths end by ORing the widget number and 0x4000 into the saved control word and
  storing it back at board +36.
- `OdsyInit32kSlotMask` (`odsy_adt.o`, offset 0xaa4, 132 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_adt.o)`.
  Prepares a 4112-byte slot-mask structure on the Origin 350 build. It clears the block with `bzero`, stores
  its second argument at +0 and 0 at +8 and, when the module's global word is zero, fills the 512
  doublewords from +16: the first is -4 and the other 511 are -2. A nonzero global leaves them zero.
- `odsyFindBoardAddr` (`odsy_init.o`, offset 0xb44, 280 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_init.o)`.
  Returns the base address of board number N on the Origin 350 build. It calls `odsyCheckBoardPointers` and, when the
  record for N exists, returns the doubleword at +824. Otherwise it calls `find_odsypipe`, which returns a
  halfword and a byte, and builds the address itself: 0x9200000000000000 plus the halfword shifted left by 33 plus
  the byte shifted left by 24 (when the byte is zero the base comes from a table in the object instead). With
  a nonzero address it creates the record with `odsyCheckBoardPointer` and stores the low 4 bits of the word at
  address +36 in the byte at +793, the address at +824, N in the halfword at +790 and the byte and halfword from
  `find_odsypipe` at -19392 and -19396 from +0x10000. It returns the address, or 0 when it has none.
- `odsyDownloadUcode` (`odsy_ucode.o`, offset 0x0, 288 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_ucode.o)`.
  Sends microcode lines to the board on the Origin 350 build, with the same argument limits, the same
  0x27008000 write-address word and the same 0x40008000 halfword words as the IP30 build, reading the lines from
  the buffer at +34136 against the line count at +34132. It writes through the pointer held at board record
  +864 instead of the base plus 0x110000, and its stores are not followed by a `sync`. Invalid arguments log
  "odsyDownloadUcode: invalid args" at severity 4 and return -1; success returns 0.
- `gf_OdsySuspend` (`odsy_sched.o`, offset 0x0, 292 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_sched.o)`.
  Takes a client off the board on the Origin 350 build, under the same conditions as the IP30 build (board exists,
  client is the owner at +72, bits 1:0 of its flag word at +4). When the flow handle at +808 is set it raises the
  level with `splhi` and, for an attached caller whose word at +104 is zero and whose
  `gfx_flow_credit_count_get` is below `gfx_flow_credit_bias_get`, pins the thread with `rt_pin_thread`, lowers
  the level, waits in `odsy_flow_await_returned_credits`, raises it again and unpins. It then sets the word at
  +0x85c8 to 1, stores 1 to the board register at 0x107c, reads that register back (the IP30 build reads
  0x106c), calls `gfx_flow_detach_me` and `splx`, and returns 0.
- `gf_OdsyResume` (`odsy_sched.o`, offset 0x124, 292 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_sched.o)`.
  Puts a client back on the board on the Origin 350 build. For the owner at +72 with bits 1:0 of its flag word
  set, under `splhi`, a caller that is not attached to flow control pins the thread with `rt_pin_thread`, calls
  `gfx_flow_attach_me`, forms the flow word from the shadow at +34244 masked by a constant and the word at
  -19376 from +0x10000 shifted left by 12 (the IP30 build takes the target number from
  `gfx_flow_credit_tnum_get`), stores it to the shadow and to the board register at 0x1074, and stores 0 to the shadow
  at +34248 and to the register at 0x107c. It then lowers the level, waits in `odsy_flow_await_returned_credits`,
  raises it again, calls `gfx_flow_attach_me_finish` with the owner and unpins. When the third argument is 0 and
  the word at +120 is nonzero it calls `force_resched` and clears the word. It returns 0.
- `odsy_fc_attach` (`odsy_init.o`, offset 0x1d90, 520 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_init.o)`.
  Attaches the calling processor's pipe to flow control on the Origin 350 host; the IP30 kernel has no such routine.
  With n set to bit 0 of the per-processor byte at +1320 (the same bit `odsy_fc_detach` uses), and the board
  record found through `odsyPipeNrFromBase` on the base address argument, it stores into a literal-pool block
  at offset 768 plus 40n the doubleword (base + 0x100000) with bit 40 set, then at offset 776 plus 40n the
  value 256, or 100 when the system word masked with 0xf000 is not 0x4000 and `get_chimera_type` of the node
  (`get_nasid`) is neither 3 nor 5. It writes a packed word to the host chip's register block for the node
  (selected by bits 39:33 of the base) at +320: bits 3:0 of base bits 27:24, bit 4 from bit 1 of the
  per-processor byte, bits 12:5 from the processor's halfword at +1068 and bit 16 from n, and reads it back.
  It stores 68 at offset 784 plus 40n of the literal-pool block, then updates the flow word in the board
  record: the word at +34244 masked by an object constant has 0x11000 ORed in, is stored back and to the
  board register at 0x1074, and 0 goes to the shadow at +34248 and to the register at 0x107c.
- `odsy_init` (`odsy_init.o`, offset 0x468, 348 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_init.o)`.
  Driver start-up on the Origin 350 build, which discovers its boards here instead of waiting for an attach
  per widget. It calls `odsyCheckBoardPointers`, takes the board-init semaphore with `psema` and, for each board
  number below the global count, calls `find_odsypipe`; a zero answer skips the number and a negative one ends
  the scan. For a pipe it creates the record with `odsyCheckBoardPointer`, stores 1 at +788, the pipe's byte at
  +793 and at -19392 from +0x10000, -1 at -19394, the pipe's halfword at -19396 and the number at +790, and
  builds the base address at +824 from 0x9200000000000000 plus the halfword shifted left by 33 plus the byte
  shifted left by 24. It calls `odsyReset` unless the number equals the global in small data, then
  `odsyInitBoardGfx`. It stores the number reached as the board count, releases the semaphore with `vsema`
  and registers the driver with `xwidget_driver_register` for part 0xc013, manufacturer 35, prefix "odsy_".
- `odsy_attach` (`odsy_init.o`, offset 0x71c, 628 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_init.o)`.
  Crossbar attach entry for one board on the Origin 350 build. Under the board-init semaphore it reads the widget
  id, master and master node from the vertex (`xwidget_info_get`, `xwidget_info_id_get`,
  `xwidget_info_master_get`, `master_node_get`) and scans the records `odsy_init` made for the one whose byte at
  -19392 from +0x10000 equals the widget id and whose halfword at -19396, or the peer that `get_xbow_peer`
  stores at -19394, equals the node's entry in a table. For that record it stores 2 at +788 and the vertex at
  -19400, maps the 0x401000-byte window with `xtalk_piomap_alloc` and `xtalk_piomap_addr` (piomap at -19384, base
  at +824), stores `kvtophys` of the base at +832 and the base plus 0x110000 at +864, adds the hwgraph edge with
  `GfxAddHwgraphEdge` and stores the widget id at +793 and the master id at +792. When bits 31:28 of the
  window's word at +4 are 2 or more it records the NIC information (`eeprom_vertex_info_set`, or
  `nic_vertex_info_set` when `get_chimera_type` is 0 on a system whose class word is not 0x4000) and runs
  `odsy_set_gfx_mfg_nic_name`, logging a severity 1 message if that fails. It calls `odsyReset` unless the
  number equals the small-data global, then `odsyInitIntr`, releases the semaphore with `vsema` and
  returns 0.
- `odsy_earlyinit` (`odsy_init.o`, offset 0x264, 516 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_init.o)`.
  Early console-time initialisation on the Origin 350 build. It sets up the xbow spin lock and mutex, calls
  `odsy_hpipe_sema_init`, and reads the boot option "console" with `kopt_find`: a value starting with 'd' or 'D' returns 0 at once. It
  sets the global in-progress word to 1 without testing it (the IP30 build logs a second entry), calls `odsyCheckBoardPointers`, clears the console board number and scans the
  board numbers up to the global count with `find_odsypipe` (a negative result ends the scan, zero skips the board). For each
  board found it calls `odsyCheckBoardPointer`, sets the halfword at +788 to 1, stores the node and widget numbers it got at
  -19396 and -19392 from +0x10000 and at +793, -1 at -19394 and the board number at +790, and computes the register base at +824 from the
  node number shifted left 33, the widget number shifted left 24 and a fixed high constant. When a global flag is set, or the
  kernel is in panic, it also sets the start-up word at -19328 to 1. Only for the board whose number equals the console board does it call `odsyReset`,
  `odsy_tport_lock_init` and `htp_register_board` (with the board's width and height halfwords at +232 and +234). If it registered
  one it clears the two globals, stores the board count it reached and returns 1; otherwise it returns 0.
- `odsyInitHwWrRgn` (`odsy_init.o`, offset 0x4698, 424 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_init.o)`.
  Allocates the software sync-write area on the Origin 350 build. It does nothing when the pointer at +880 is already set. Otherwise it gets 8 pages
  of 16 KB (0x20000 bytes) with `kvpalloc_node_hint` on the node found by indexing a global table with the board halfword at -19396 from
  +0x10000 (the IP30 build uses `kmem_zalloc`); a failure prints a message and returns. It zeroes the 16384 doublewords itself,
  clears the four doublewords at +29888 and the four words at +29920, advances the address in 16384-byte steps (recording each skipped
  start at +29888 and up) to the first multiple of 0x10000, stores that address at +880 and fills the four doublewords at +29888 with the
  consecutive 16 KB blocks above it.
- `gf_OdsyAttach` (`odsy_attach.o`, offset 0x68, 392 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_attach.o)`.
  Maps the board's windows into a process on the Origin 350 build. The address in the second argument must have its low 14 bits clear
  (otherwise 22). The routine first reads one doubleword through a global pointer (the IP30 build reads the fixed uncached address
  0xaff00080 only at the end), then offers the mapping to `gfxdd_recycle` with `odsy_regmatch` and returns 0 when a mapping was recycled. Otherwise
  it copies a 256-byte table of extents to the stack and, for each entry it will use (two 32-byte entries, or all eight
  when the board flag word at +4 has bit 2 or bit 5 set), adds the caller's address to its two address words and stores 1 in its
  word at +20 (the IP30 build leaves that word alone). It calls `gfxdd_mmap` with a 32 KB mapping, or 256 KB in the eight-entry case, and
  `gfx_fault` as the fault handler; a failure logs severity 4 and returns 12. On success it sets bit 0 of the flag word under
  `splhi`, calls `gf_OdsyUnMapGfx`, restores the level, reads one doubleword through the global pointer again and returns 0.
- `odsyDMAFinish` (`odsy_dma.o`, offset 0x2c20, 388 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_dma.o)`.
  Drains and frees a context's DMA state on the Origin 350 build. It sets the flag word at -19300 from board record +0x10000
  (the IP30 build uses -19324) to 1, calls `odsyDMAWait` in mode 1 on the context's operation numbers at +248 and +256, and clears
  the flag. It then takes the mutex at +5800 and walks the context's set of DMA buffers at +416 with
  `OdsyInitCSetCursor` and `OdsyNextCSetElem`. For each buffer whose state word (+8) is nonzero it logs severity 4 when the board's teardown
  flag at +816 is clear, overwrites the memory block at +16 (length at +24) with the byte 151 and frees it with `kmem_free`. A buffer
  with a user range (+64 nonzero) is unlocked with `unuseracc` (address at +56, flag 272), and its set id (+48) is returned with
  `OdsyDeallocCSetId` unless it is -1. Finally it destroys the set with `OdsyDestroyCSet` and releases the mutex.
- `odsySetDACGain` (`odsy_brdmgr.o`, offset 0x6504, 1032 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_brdmgr.o)`.
  Turns the DAC gain on or off on the Origin 350 build (arguments: board record, nonzero to enable). Unless the start-up word at -19328 from
  +0x10000 is set it first takes the display semaphore at record +0x8530 with `psema` at priority 25, then waits for display-FIFO
  level 14. A failed wait releases the semaphore and returns -1. Otherwise it reads display register 0x26c0 through the window
  at board +0x233604, sets bit 1 for a nonzero argument and clears it otherwise, ORs the result with the literal-pool header word and stores it as one
  doubleword at board +0x400000. The release replays a pending cursor command exactly as `odsy_i2c_start` does: under the spin lock at +0x8540,
  a nonzero pending doubleword at -31416 from +0x10000 is sent after a level-12 wait, with the cursor-enable bit at 5 of the word at -19664 brought into
  line with the halfword at -31408 around it; the pending word is cleared and `vsema` ends the sequence. Returns 0 on success. The IP30 build
  has the same body with the start-up word at -19352.
- `gf_OdsyUnMapGfx` (`odsy_map.o`, offset 0x31c, 524 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_map.o)`.
  Removes a client's window mappings on the Origin 350 build. For the owner at the manager's +72 with flag bit 0 set it raises the level with
  `splhi`; when the flow handle at board record +808 says the caller is attached, it first (if the word at +104 is zero and
  `gfx_flow_credit_count_get` is below `gfx_flow_credit_bias_get`) pins the thread, lowers the level, waits in
  `odsy_flow_await_returned_credits`, raises the level and unpins. It then sets the word at +0x85c8 to 1, stores 1 to board register
  0x107c, reads that register back (the IP30 build reads 0x106c) and passes the value to `gfx_flow_detach_me`; the owner's flag bit is cleared
  afterwards, then `splx`. When the mapping handle at +48 is set it returns 0 early for a thread that `thread_issproc` accepts and
  whose `gthread_find` record has bit 2 of its word +8 set. Otherwise `ddv_invalphys_fal` invalidates the whole range: a result of 0 clears the
  eight doublewords from +104, calls `ddv_invaltlb` and sets the current processor's bit (number from -15320 in the private area, selecting
  doubleword number divided by 64, the IP30 build keeps one word); a result of 2 does nothing more and any other result logs severity 4. It returns 0.
- `odsyHiwaterInterrupt` (`odsy_flow.o`, offset 0x370, 532 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_flow.o)`.
  Runs when the host's flow-control credits for the board fall below the bias, on the Origin 350 build. It takes the spin lock at
  +0xb458 and returns at once (lock released) when the word at +104 is already set. When the teardown flag at +816 is set it logs
  severity 4, clears one entry of the per-processor block, stores the flow-pipe head plus one in a global and returns. Otherwise it raises
  the credit-wait flag with `gfx_waitf_on` and tests `gfx_flow_credit_count_get` against `gfx_flow_credit_bias_get` up to ten times, 1 us
  apart. If the credits recover it counts a success in the per-processor record (32 bytes per processor, counter at +28; the processor
  number is read from -15320 in the private area) and returns after `gfx_waitf_off`. Otherwise it counts a failure at +24, clears the flag, sets +104 and +120 to
  1, counts the owner's busy word (+80 of the record behind +72's +40) up, calls `force_resched` and arms `odsyFifoTimer`. It writes 0x200
  to register 0x101c and, when bit 17 of the status word at +4196 is set, to the flags register 0x1014, sets bit 9 of the enable shadow at -31312
  from +0x10000, writes 0x200 to 0x1034 and releases the lock. The IP30 build calls `heart_flow_control_disable` in the failure path.
- `odsyLowLevelReset` (`odsy_init.o`, offset 0x2054, 908 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_init.o)`.
  Resets the board's link on the Origin 350 build; unlike the IP30 build it has a single path and no `odsyLLPReset` call. It addresses the host chip's
  per-node block as the global chip base plus bits 39:33 of the board base shifted back up by 33, reads the widget number from the low four
  bits of the board word at -31340 from +0x10000, and reads the chip's id word at +4. When bits 27:12 of that word equal 0xd100 and its field at bits 11:1 is zero,
  widgets 8, 9 and 14 are left out of the next walk and a word at +188 of a second per-node block is cleared of this widget's bit. The walk covers widgets 8 to 15 other than this one: for each whose
  per-widget word at +276 has bit 31 set and whose word at +316 has bit 5 set, it clears this widget's bit (its number minus 8) in the node block's word at +124
  or in the following words at a stride of 8 from +132. It then saves the chip control word at +36 and the widget's word at +268, clears bits 5, 2 and 1 of the first and bits 31, 17, 16, 8, 7, 6, 5, 4, 3 and 1 of the
  second, stores 0x200 to the board's reset register 0x100c, waits one second with `odsy_usdelay`, writes 0, and checks that the widget's words at +276
  and +316 again show the same two bits. When they do it restores the control word, puts the saved widget word back with bits 22:18 cleared and bit 20 set, waits 100 ms and
  returns. When they do not it logs at severity 4 and repeats, up to seven attempts.
- `mm_rewind_cond_list_cursor` (`odsy_pmm.o`, offset 0x88, 240 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Moves saved free-list cursors back to an earlier free node after a node appears in front of them. Arguments:
  memory-manager record, a size in 32-byte units and the node. It sets the flag word at +4800 to 1, then for each
  of the six pixel-size classes whose shifted size is not negative it visits slots 0 to the shifted size of that
  class's 65-slot row in the table at +1680 (the table `mm_get_cond_list_cursor` reads). An empty slot takes the
  node. A filled slot is compared by walking the list from the head at +1640 along the links at +24: if the node is
  met before the slot's current cursor, the slot takes the node; otherwise it is left alone.
- `mm_check_cond_list_cursor` (`odsy_pmm.o`, offset 0x178, 180 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Repairs the saved free-list cursors when a node is about to disappear. It scans all six classes of 65 slots in
  the table at +1680 of the memory-manager record and replaces every slot that points at the given node with the
  node's successor (+16), or with the list head at +1640 when the node has none. It changes nothing else.
- `odsyMMinit` (`odsy_pmm.o`, offset 0x298, 468 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Builds the board's initial memory-manager record. It finds the board with `odsyPipeNrFromBase` on the first
  argument and stores that board's pointer, from the global table, at +0 of the record in the second argument.
  Group fields at +1248 get the identifier -2 and a zero at +1256. It clears the 16 object slots at +1264, points
  slot 0 at an embedded object at +432 and slot 1 at one at +568, and slots 2 to 5 at four more at +704 plus 136 each
  (type byte at object +16: 1, 2 and 8 for the four). Every filled slot gets its own index at +0, the group at +8,
  -1 at +96, zero at +56, +76 and +80, and its flag word at +64 set to bits 0 and 1 with bits 2 and 3 clear. The
  record itself gets size and counter defaults (+56 = 4096, +60 = 16, +64 = 1, +68 and +72 = 256), 8192 at +216, +488
  and +624, 255 at +176 and the same flag setting at +88.
- `odsyInitMM` (`odsy_pmm.o`, offset 0x46c, 160 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Prepares the memory manager inside the board record. It creates the two sets at +2368 and +2416 with
  `OdsyInitCSet` (element size 4), clears the budget fields at +5688 to +5732 (storing 3200 at +5724 and 8192
  at +5712), clears the free-list head words at +2512 to +2536, sets +5672 to 1, calls
  `mm_set_all_cond_list_cursor` on the record at +872 with the list head at +2512, and stores that head at
  +5680 as the cached free pointer.
- `mm_init_freespace` (`odsy_pmm.o`, offset 0x50c, 484 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Sets up the free-extent list and the host-memory limits on first use. The board's memory size (+252 of the
  board at +0, shifted left 20 and right 9) less the reserved start (+216 divided by 32) becomes the budget at
  +4856. When the four configured figures at +4828, +4840, +4844 and +4852 add up to more than that budget, it logs
  twice with `cmn_err` and zeroes those figures. It then writes a single free node at +1640 (start, size, no owner or
  links). The host limits come from `kabi_num_lockable_pages`: a global percentage clamped to 0..100 and raised to at
  least 25 scales the page count, which is split by the number of boards present (the leading non-null entries of the
  board table) into 16 KB pages: that is the per-board limit at +4888, with +4896 = 0x700000 and the warning level
  +4864 = limit - 0x700000. It zeroes the in-use total (+4880) and reserved total (+4912), sets the flag at +4920 to
  1 and the pressure level at +4924 to 0, stores +4904 = warning level + (budget << 9) - 0x700000 and the jettison
  limit +4872 = 10% of the lockable pages in 16 KB units.
- `odsy_mm_sg_new` (`odsy_pmm.o`, offset 0x29c8, 256 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Creates a share-group record, the unit that clients with a common address space share. It allocates 216 bytes
  with `kmem_alloc`, clears the reference count (+16) and the address-space link (+0), stores the manager at +8
  and -1 at +20, initialises three sets at +24, +72 and +120 and clears the texture, list and counter fields
  (+168, +172, +176, +184, +208). `OdsyAllocCSetId` on the manager's set at +1496 gives the group its number
  (+20); `odsy_mm_find_current_as` supplies the address-space record, whose count at +4 is incremented and which is
  stored at +0. A failed number or address-space lookup logs through `cmn_err` and ends in `odsy_mm_sg_destroy`
  and a null result.
- `odsy_mm_sg_destroy` (`odsy_pmm.o`, offset 0x2ac8, 252 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Tears a share group down. It destroys every group in the set at +72 with `odsy_mm_grp_destroy` (restarting the
  cursor each time), releases the group's number from the manager's set at +1496, calls
  `odsyUnpinAndUnmapSGRegions`, removes the group from its address space with `mm_as_remove_sg`, destroys the three
  sets at +72, +24 and +120, overwrites the 216 bytes with 9 and frees them with `kmem_free`.
- `odsy_mm_obj_new` (`odsy_pmm.o`, offset 0x2bc4, 712 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Creates a memory object in a group. Arguments: the group's list owner, the group, the slot index and the request
  record. The bytes per pixel at request +1 must be 2, 4, 8, 16 or 32, and the three extents at +16, +20 and +24
  must be nonzero (the first at most 65536); otherwise it logs a severity 4 message and returns 0. It allocates
  136 bytes, clears the low four flag bits at +64, sets +0 to -1, +8 to the group and +128 to 0, and copies the four
  request bytes (+0 to +3) and the words +4, +8, +12, +16, +20 and +24 into the object (+16 to +19, +20, +24, +28, +32,
  +36 and +40). The two pitch words at +44 and +48 come from the request's +28 and +32: +44 is the 16-pixel tile
  count of the width plus offset rounded up to an even number, accepted if the caller gave at least that, and +48 is
  that count times the tile rows of the height plus offset, again accepted when the caller gave at least that
  much; a smaller value logs and returns 0. It sets +72 to width times height times the pixel size, +60 to the tile
  count times the sum of request +12 and +24 shifted left by the per-pixel-size amount in the global shift table,
  clears +76, +80, +88 and +104, sets +96 to -1 and calls `odsy_mm_reserve`. A failed reservation destroys
  the object and returns 0; success stores the object in the group's slot table (+16 plus 8 per index), writes the
  index at +0 and counts it in the group's +144.
- `odsy_mm_obj_destroy` (`odsy_pmm.o`, offset 0x2e8c, 252 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Destroys a memory object. When bit 3 of the flag word at +64 is set it calls `odsy_mm_decommit`, and when bit 2
  is set `odsy_mm_release`. It waits for any transfer with `odsyDMAWait` (mode 1, the op number at +96) on the board
  three links up, frees a backing store of nonzero size (+88) with `odsy_mm_obj_free_bs`, clears its slot in the
  group's table and decrements the group's count at +144 when its index (+0) is not -1, overwrites the 136 bytes
  with 17 and frees them.
- `odsy_mm_grp_new` (`odsy_pmm.o`, offset 0x31a0, 260 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Creates an object group in a share group. It allocates 248 bytes, sets +0 and +212 to -1, clears the 16-slot
  object table at +16 (128 bytes) and the fields at +144, +216, +232 and +240, initialises the range set at +160
  with element size 2, and stores the manager at +224 and the share group at +8. The word at +208 becomes 1 when
  byte +12 of the request is 6. `odsy_mm_sg_add_grp` gives the group its number and user mapping. A number of -1
  destroys the group and returns 0. When +208 is set, the group also takes a number from the manager's set at +360
  (stored at +212), and failing to get one destroys the group.
- `odsy_mm_grp_destroy` (`odsy_pmm.o`, offset 0x32a4, 528 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Destroys a group that has a number. It destroys all 16 objects in its table, then walks the set at +160, whose
  elements are 48-byte per-client sets of range records: each range is destroyed with `odsy_mm_cores_destroy`,
  the per-client set is destroyed, its number (the client's id at client +240) is returned to the group's set, and the
  48 bytes are overwritten with 33 and freed. It then destroys the set at +160, returns the number at +212 to the
  manager's set at +360 when set, removes the group from the share group with `odsy_mm_sg_remove_grp` and
  frees the 248 bytes after overwriting them with 35. A group whose number is -1 only gets the overwrite and free.
- `odsy_mm_sg_add_grp` (`odsy_pmm.o`, offset 0x2fc8, 472 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Registers a group with its share group and maps the group's per-id state to the client. It takes a number from
  the set at +72, stores it at group +0 and uses number divided by 256 as a page index (below 128, else it logs
  and fails). If the set at +120 has no page record for the index it allocates a 32-byte record and a 16 KB page,
  files them with `OdsyAllocSpecificCSetId`, and maps the page into the client with
  `MapKernelRegionIntoUserSpace`; it then sets bit 1 of the request's flag word at +52, the page index at request
  +64 and the user address at +56. The group's state pointer (+152) is the page plus 64 times the low byte of the
  number. A failure at any step logs a severity 4 message, returns the number and stores -1 at +0 of the group.
- `odsy_mm_cores_new` (`odsy_pmm.o`, offset 0x3584, 944 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Creates a range record (72 bytes) for a client context in a group. The record gets the context (+16), the set
  that numbers it (+56), the group (+8), the low and high slot arguments (+0 and +4) and three numbers, each -1
  until taken: one from each of two sets (+48, +52) and a 32 KB slot from the board (`OdsyAlloc32kSlot` at +24). The
  number at +48 divided by 1024 selects a 16 KB page in the context's set at +312; if the page does not exist (index
  below 32) the routine allocates its 32-byte record and page, files them with `OdsyAllocSpecificCSetId` and maps
  them with `MapKernelRegionIntoUserSpace`, filling the first two words with -1 for page 0. On first use of a page
  it also sets bit 4 of the request's flag word, the page index at request +32 and the user address at +24.
  Finally +32 points at the halfword for the 32 KB slot in the manager's table (cleared) and +40 at a 16-byte state record
  at (+48 mod 1024) x 16 in the page, whose four words are cleared and halfword +4 set to 1. Every failure logs
  severity 4, releases what it took and ends in `odsy_mm_cores_destroy` with a null result.
- `odsy_mm_cores_destroy` (`odsy_pmm.o`, offset 0x34b4, 208 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Frees a range record. It returns each number that is not -1: +52 to the set at +56, +48 to the client's set at
  +264 of the context at +16, and +24 as a 32 KB slot to the board's table at +29952 (board from the manager's
  +0). It overwrites the 72 bytes with 31 and frees them.
- `odsy_mm_sg_remove_gctx` (`odsy_pmm.o`, offset 0xfbc, 448 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Detaches a client context from its share group. It destroys every group in the context's set at +360 and the set
  itself, returns the leading elements equal to 1 of the context's set at +264 to that set, destroys the remaining
  range records with `odsy_mm_cores_destroy`, and for each group of the share group removes the context's id
  (+240) from the group's set at +160. When the context's word at +292 is nonzero and the kernel debug halfword is
  set, it flushes the console buffer and enters `debug`. It finally destroys the set at +264, returns the
  context's id to the share group's set at +24 and stores -1 at context +240.
- `odsy_mm_find_current_as` (`odsy_pmm.o`, offset 0x2750, 468 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Finds or creates the memory manager's record for the calling process's address space. `as_lookup_current` gives
  a pair of values, and the routine scans the set at +1544 for a record whose +16 and +24 match them. Otherwise it
  allocates a 64-byte record, takes a number from that set (stored at +0), stores the pair and the manager (+8),
  clears +4 and +32, and calls `odsyPinAndMapASRegions`; a failed number or pin logs through `cmn_err`, overwrites and
  frees the record and returns null.
- `odsyMMvalidatePcxSwap` (`odsy_pmm.o`, offset 0x266c, 228 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Before a context switch commits the incoming client's pending ranges. It returns 0 at once when the context's
  word at +0 is zero, it has no share group (+232) or its set at +312 has no page 0. Otherwise it arms a
  1500-tick timeout, walks the context's range set at +264 (skipping the placeholder 1) and calls `odsy_mm_commit`
  for each range whose state record at +40 has a nonzero halfword at +6 and whose flag word at +64 is zero, then
  waits for the timeout with `untimeout_wait` and returns 0.
- `odsyMMdetach` (`odsy_pmm.o`, offset 0xee4, 216 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Detaches a client context from the memory manager. It does nothing when the context has no share group (+232).
  When the manager's owner word (+72 of the record at board +40) is not this board it takes the manager's semaphore
  at +56 with `psema`, becomes the owner, and sleeps in 2 us steps while the word at +104 is nonzero. It counts the
  busy word at +80 up, calls `odsy_mm_sg_remove_gctx`, clears the context's share-group pointer, and drops the group's
  count at +16, destroying the group with `odsy_mm_sg_destroy` when it reaches zero, then counts +80 down.
- `gfP_OdsyMMattach` (`odsy_pmm.o`, offset 0xb44, 928 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Private request 0: joins the calling graphics context to a share group. It copies in 72 bytes (a failed copy logs and
  returns 14) and finds the context from the halfword at +10 with `odsyGctxFromRnid` (none: 22). A context whose
  word at +184 is already set returns 0 at once. Otherwise `odsyPinAndMapGctxSwShadowRgn` pins and maps the
  software shadow with the word at +16 (its error is returned), the context's fields +584, +232 and +240 are cleared
  or set to -1, three sets at +264, +312 and +360 are initialised and id 0 of the first is filled with the placeholder 1.
  The manager's busy word at +80 is held up for the rest of the call under the same owner and `psema` rule as
  `odsyMMdetach`. A word at +4 of 0 or -1 creates a new share group with `odsy_mm_sg_new` (a null result copies the
  argument back with +24 zeroed); another value names the context, by its low 16 bits, whose share group is
  joined: a missing context or share group gives 22 and a failed `OdsyAllocCSetId` on the group's set at +24 gives 12.
  The context then records the group (+232), its id in that set (+240) and the low bit of the argument's +0 (+580),
  and the group's count (+16) is incremented. The reply gives back, in the same 72 bytes, the context id at +12, the
  address-space words at +24, +48 and +56, the context's word at +244 at +32, the pointer 2304 bytes past
  the context's shadow (+200) at +40 and a word of the manager's record at offset 0x8554 at +64.
- `gfP_OdsyMMalloc` (`odsy_pmm.o`, offset 0x117c, 804 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Private request 1: creates a memory object. It finds the calling context from the board's current-client pointer
  (none: status 1; no share group: 14), copies in 72 bytes and requires the slot halfword at +8 to be below 16
  (else 22; the earlier note that calls it the object type is wrong, it indexes the group's 16 object slots).
  Under the manager's busy count it uses the group id at +4: -1 creates a group with `odsy_mm_grp_new` (a failure
  logs and returns 12), any other value is looked up in the share group's set at +72 (a miss stores -1 at +4 and
  returns 22). If the slot already holds an object, the object's description is compared with the argument's
  description starting at +12 (type byte, pixel-size byte, and the words +16 to +36 against object +20 to +40); a
  match keeps the object, a difference destroys it with `odsy_mm_obj_destroy`. A missing object is then built with
  `odsy_mm_obj_new` from the description at +12; if that fails the status is 12 and a group made by this call and
  still empty is destroyed and reported as -1. The argument, carrying the group id, is copied back.
- `gfP_OdsyMMdealloc` (`odsy_pmm.o`, offset 0x14a0, 536 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Private request 2: destroys a memory object or a whole group. It checks the context and share group as `MMalloc`
  does (1 and 14), copies in 72 bytes and looks up the group id at +4 in the set at +72 (a miss gives 22). With the
  word at +52 zero it destroys the whole group with `odsy_mm_grp_destroy`; otherwise it destroys the object in the slot
  named by the halfword at +8 (22 when that is 16 or more) and, if the group then holds no objects, clears +52 and
  destroys the group as well. The 72 bytes are copied back only when the group was destroyed.
- `gfP_OdsyMMmakeResident` (`odsy_pmm.o`, offset 0x16f0, 904 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Private request 3: places a range of a group's objects in board memory. It copies in 8 bytes (group id at +0, first
  and last slot as halfwords at +4 and +6, both below 16 and ordered, else 22), calls `RRM_CheckValidFault` and
  returns its error if negative, then holds the manager's busy count. It finds the group in the set at +72, the
  client's range set in the group's set at +160 by the context id (+240) and the range record that matches the slots
  with `OdsyFindMatchingCSetElem` (each miss is 22). A range whose halfword in the manager's 32 KB slot table (the one at
  record +32) equals the halfword at +4 of its state record is also refused with 22. Otherwise it clears bit 1 of the flag word of every object in the slot range, arms a
  1500-tick timeout, calls `odsy_mm_commit` on the range and waits with `untimeout_wait`; a failed commit logs the
  board number and returns 22.
- `gfP_OdsyMMquery` (`odsy_pmm.o`, offset 0x1c10, 920 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Private request 4: tells a client where its group's state lives and creates the client's range record on first
  use. It copies in 40 bytes (group id at +4, first and last slot as halfwords at +8 and +10, both below 16 and
  ordered, else 22), looks the group up in the set at +72 (miss: 22) and replies with the group's id at +12 and its
  flag word at +208 as a halfword at +14. It finds or creates the client's set of ranges in the group's set at +160
  (a 48-byte `kmem_alloc` initialised with element size 2 and filed under the context id; failure is 12), then
  finds the range record for the slots with `OdsyFindMatchingCSetElem` or creates one with `odsy_mm_cores_new`
  (failure 12), and replies with the record's 32 KB slot number (+24) at +16 and its range id (+48) at +18. The
  40 bytes are copied back whatever the status.
- `gfP_OdsyMMxfr` (`odsy_pmm.o`, offset 0x1fa8, 1676 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Private request 6: moves pixels between the client and a memory object. It copies in 80 bytes; a word at +4 of -1
  returns 0 at once. It calls `RRM_CheckValidFault`, takes the manager's busy count and resolves the object from
  the id at +4 and the slot at +8: -2 means the board's own object table (slot in the table at +2136 of the manager), -3 and -4
  the buffer set of the context's two bindings at context +464 and +512 (a binding with bit 2 set is found through the
  drawable hash, a bound drawable's table; otherwise the board table), and any other id a group in the share group's
  set (slot below 16). For a group object it also stores bits 23:16 of word +60 in object byte 18. A group
  object that is not resident is validated with `odsyMMvalidatePcxSwap` once and refused with 22 if still not. For -3 and -4
  the 3-bit format fields in the words at +28 and +44 are checked against what each binding allows, and a mismatch
  logs and returns 22. A zero 29-bit address in word +28 takes the object's board address (+56); the offset at +64 is added and
  the top three bits kept. Word +24 is the host buffer size, which must cover the rows given by bits 31:16 of +40
  (0 meaning 65536), with the row stride at +48 and the row length in the low 20 bits of +52. The header word
  at +56 gets 0x32 in its top byte together with a direction bit (set when bit 0 of +60 is clear) and bits 3 and 6
  carried from it. `odsyDMAOps` then runs the transfer; with bit 1 of +60 set `odsyDMAWait` waits for it too, and the
  80 bytes are copied back with the status.
- `SpewObjectToUser` (`odsy_pmm.o`, offset 0xa4c, 248 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Writes one memory object's description to the user's buffer for the debug request. It builds a 68-byte record:
  the object's board word (+56), the words at +16 to +51, its size word (+60) over the last of them, then the
  share-group id, group id and slot arguments, flag bits 0 and 1 and the transfer word at +104. `copyout` writes
  it at the user pointer (failure logs and returns 14), the record count is incremented and the pointer moves on
  by 68 bytes.
- `gfP_OdsyMMdebug` (`odsy_pmm.o`, offset 0x6f0, 860 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Private request 10: lists every memory object. It copies in 24 bytes; command 1 runs and command 2 returns 22
  (as does any other value, with a log). Command 1 needs the buffer capacity in the word at +8 to be above 16 (else
  14). Holding the manager's busy count it spews the manager's own record, every committed object of the board table at
  +2136, and then every object of every group of every share group in the set at +2368, each as a 68-byte record
  through `SpewObjectToUser`; running out of capacity logs and returns 11. The number of records is copied to the
  user pointer at +16.
- `OdsyAllocSpecificCSetId` (`odsy_adt.o`, offset 0x42c, 472 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Stores an element at a caller-chosen id in a chunked set (chunks of 1 << the size shift at set +40 pointers each,
  chain of chunk nodes in a ring from set +0, chunk count +24, element count +28, hint node +16). A set whose shift
  is 0 returns -1. The chunk number is the id shifted right by the shift; when it is not yet below the chunk
  count, the routine creates every missing node with `NewChunkNode` (each takes the next 1-based number at node +12,
  zero elements, and joins the ring at the tail) and fails with -1 if one cannot be had. It walks the ring to the node
  (the short way round), allocates and clears the node's pointer array when the node holds no elements, stores the
  element at the low bits of the id, adds one to the node's count (+8) and the set's, makes the node the hint and returns the
  id. It does not check that the id is free.
- `OdsyAllocCSetId` (`odsy_adt.o`, offset 0x604, 608 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Gives an element the lowest free id the search finds in a chunked set. A shift of 0 returns -1. When the set's
  element count is below its capacity (chunks times chunk size) it starts at the hint node (+16) and goes round the ring:
  a full node is skipped, an empty node first gets a cleared pointer array, and the first null slot takes the element
  and the id is the node's first id (its 1-based number minus one, shifted) plus the slot; the node's count and the
  set's count are incremented and the node becomes the hint. Otherwise, or when no free slot is found, it builds a
  new node with its array (a failed array allocation poisons the node with 210 and frees it, returning -1), gives it
  the next 1-based number, one element, takes as its id the set's element count before the increment, links it into the ring tail and stores the element in slot 0.
  source's plain scan from the head (`odsy_adt.c`).
- `OdsyDeallocCSetId` (`odsy_adt.o`, offset 0x864, 352 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Frees an id in a chunked set. It walks the ring to the id's chunk in whichever direction is shorter, stores 0 in the
  slot, counts the node and the set down and, when the node is empty, overwrites its pointer array with 211 and
  frees it, clearing the node's pointer. It then moves the hint (+16) back to this node when the node's number is
  smaller than the hint's, so later allocations refill the earliest chunk.
- `OdsyLookupCSetId` (`odsy_adt.o`, offset 0x9c4, 224 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Returns the element at an id of a chunked set, or 0. A set with shift 0, an id whose chunk number is not below the
  chunk count and a chunk with no pointer array all return 0. Otherwise it walks the ring from the head to the chunk,
  forwards or backwards by whichever is shorter, and returns the slot at the low bits of the id.
- `OdsyAlloc32kSlot` (`odsy_adt.o`, offset 0xadc, 348 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Takes the lowest free 32 KB slot from a bitmap of 512 doublewords (lock at +0, first doubleword with a free bit at +8,
  words from +16). With a lock it takes `psema` at priority 25; a first-free index outside 0 to 511 releases the lock and
  returns -1. It finds the lowest clear bit of that doubleword, sets it and returns 64 times the index plus the bit. When
  that doubleword becomes all ones the first-free index advances past every full doubleword (up to 512); the lock is
  released with `vsema`.
- `OdsyFree32kSlot` (`odsy_adt.o`, offset 0xc38, 204 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Returns a 32 KB slot to the bitmap of `OdsyAlloc32kSlot`. A null bitmap or a slot at or above 512 x 64 logs a
  severity 4 message and returns. Otherwise it takes the lock, clears the bit with a 64-bit mask, lowers the first-free
  index to this doubleword when it was higher and releases the lock.
  so slots from 32 up within a word clear correctly.
- `gfP_OdsyBRDMGRsetColors` (`odsy_brdmgr.o`, offset 0x0, 1680 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Private request 26: loads colour-map entries. It copies in 16 bytes: a halfword count at +0 (0 returns 0) and
  the pointer to an array of 8-byte entries (index word, packed colour word) at +8. It allocates and copies the
  array (failures: 12 and 14), takes the display-FIFO semaphore (`psema` at 25 on +0x8530, or nothing when the start-up word at
  -19352 from +0x10000 is set, in which case the spin lock at +0x8540 brackets the release), and splits the array into
  runs of consecutive indices. Each run is sent as a display-FIFO packet at board +0x400000: a header word
  0x70000000 OR the first index shifted left 14 OR the run length in the low 14 bits, then the colour words, two
  to a doubleword (first word high). The FIFO is waited to empty with `odsy_poll_dfifo_level` at level 0 at the start of
  each run and every 32 words; an odd total gets a final header with index and length 0 as padding after a wait for level 15.
  A failed wait releases everything and returns 5. The inlined semaphore release first replays a pending cursor
  command left by `gf_OdsyPositionCursor` (the word at -31416, after a wait for level 12, rewriting the cursor control
  word at -19664 when the head flag at -31408 differs from its bit 5), then calls `vsema`.
- `gfP_OdsyBRDMGRcursor` (`odsy_brdmgr.o`, offset 0x13d0, 3396 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Private request 28: sets the hardware cursor. It copies in 40 bytes (failure 14) and acts on the flag word at +0
  in this order. Bit 0 stores the two halfwords of word +4 as the hot spot (-19668 and -19666 from board record +0x10000);
  bit 1 calls `gf_OdsyPositionCursor` with the halfwords of word +8; bit 2 stores word +12 as the cursor control word
  (-19664) and sends it as display register 0x2581 after a wait for FIFO level 15; bit 3 copies 60 bytes from the
  pointer at +16 and sends 15 colour words with header 0x3964000f after a wait for level 7; bit 4 copies 512 bytes
  from +24 and sends 128 glyph words with header 0x39400080; bit 5 copies 256 bytes from +32 and sends 64 alpha words
  with header 0x39700040. The bulk blocks wait for FIFO level 0 every 32 words, and a trailing odd word count is padded
  with a zero-length header. A failed copy returns 14 and a failed FIFO wait 5. The display-FIFO semaphore (taken after
  the first two bits) and its inlined release, which replays a pending cursor command, are the same as in
  `gfP_OdsyBRDMGRsetColors`. The register meanings are in `docs/display.md`, "Kernel cursor request".
- `gfP_OdsyBRDMGRVTGcontrol` (`odsy_brdmgr.o`, offset 0x5e3c, 1200 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Private request 32: starts the video timing generator or flips one of its control bits. It copies in 8 bytes (flags at
  +0, value at +4; failure 14), takes the display-FIFO semaphore and waits for FIFO level 13 (a failed wait returns 5).
  Bit 0 of the flags clears bit 0 of the control word kept at -19500 from +0x10000 (its role as the
  timing generator's reset bit is inferred from the request's purpose) and sends the word, then sets bit 17 of the word at -19496
  (its role is unknown from the binary alone) and sends that word. When bit 0 is clear and bit 1 is set, bit 6 of the control
  word at -19500 is set to bit 0 of the value and the word is sent. Both sends are display-FIFO doublewords at board
  +0x400000 whose header halves are constants held by the object. The release replays the pending cursor command as
  in the other display requests.

- `odsy_LoadDCD2Regs` (`odsy_brdmgr.o`, offset 0x3828, 1060 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Programs the DCD2 option board's clock part and programmable logic from the timing structure (first argument) over
  the two-wire port record (second). It first runs `odsy_initDCD2DAC` (failure: severity 1 log, return 1). With the
  port's device byte set to 92 it writes clock registers 0 to 7 from the low bytes of the structure words at +284 to +312
  (the `ODY_2CHANNEL_PLL_reg*` values of `docs/display.md`) with `odsy_i2cPLLRegWrite`, waits 600000 us with
  `odsy_usdelay`, then with device byte 31 writes registers 5 and 6 from the bytes at +259 and +263 and runs
  `odsy_reconfigDCD2FPLD` (failure: severity 4 log, return 1). With device byte 23 it writes registers 0 to 4 from the
  bytes at +267, +271, +275, +279 and +283 and register 5 from bits 15:8 of the word at +280. When bit 4 of the word at
  +200 is clear it finally writes 7 to register 50. Every failed write logs severity 1 with the board number and the
  register index and returns 1; success returns 0.
- `gf_OdsyValidateClip` (`odsy_clip.o`, offset 0x0, 1312 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)`.
  Rebuilds a graphics context's clip record R (the record at context +112) from its draw drawable (the object at
  context +120; the read drawable at +128 gives the second origin) and pushes it to the board. Under the manager's busy
  count it copies the drawable's x and y (+104, +108) into the low 13 bits of R +108 and R +112 and into the
  hardware-state words 11104 and 11108 behind R +176; copies the last entry's width and height of the drawable's rectangle
  list (count at +120, 16-byte entries at the pointer at +128) to R +116 and R +120; packs x and y of the draw and
  read drawables into R +148 and R +152. It resets the four rectangles at R +8 to the empty (1, 1)-(0, 0) form. When the
  drawable's word at +144 is nonzero it sets bit 16 of R +4, merges either 0xf800 or 0x700 into it by whether bits
  13:10 of word +152 are clear, with the low byte of word +136 (shifted left 3 when they are clear), and makes rectangle 0 the drawable extent clamped to
  zero and to the screen size at +32 and +36 of the board's object at +2136; otherwise it clears bit 16 and builds
  the rectangles from the list, or from the single unclamped extent when the list has one entry and word +140 is
  zero (the layout is in `docs/opengl.md`, "The clip push"). A caller not attached to flow control is attached for the
  duration (`gfx_flow_attach_me`, credit target number stored in the word at -31292) and detached afterwards
  as in the other validators. It calls `odsyClipMask` and `odsyClipPush`, drops the busy count and returns 0.
- `odsyClipMask` (`odsy_clip.o`, offset 0x520, 520 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)`.
  Turns the clip record's four rectangles into the visible rectangles in drawable coordinates. The scissor box
  at R +124 to R +136 is moved by the draw drawable's origin (+104, +108 of the object at context +120). For each of
  the four packed rectangles (x0 and y0 in the first word, x1 and y1 in the second, 12 bits each) an empty one
  (1, 1)-(0, 0) is skipped; the others are intersected with the box (maximum of the starts, minimum of the ends)
  and rewritten in place. A rectangle that stays non-empty adds its start (-origin), and its end plus one (-origin), to
  the arrays at R +44, +60, +76 and +92 (x0, y0, x1, y1) and counts it at R +40.
- `odsyClipPush` (`odsy_clip.o`, offset 0x728, 948 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)`.
  Sends the clip record to the board through the command FIFO port at +0x110000. The word order is in
  `docs/opengl.md`, "The clip push": the settle sequence, `0x31008140`, `0x9000bda2` and `0x00010019`, block 0x041
  with R +108 and R +112, block 0x040 with the board's word at +1496 over R +4, block 0x04b with four rectangle
  doublewords from R +8, one sequencer word `0x31008000` with the fields of hardware-state word 9888 (halves
  split at bit 10), either `0x90008116` or the reset form of blocks 0x041, 0x04b and 0x040 chosen by bit 27 of hardware-state
  word 6956, the settle tail, and eight register doublewords for 0x608 to 0x60f from R +140 to R +168.
- `odsyBindDrawable` (`odsy_drawable.o`, offset 0x138, 692 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  Fills one of a context's two binding records: class 1 (the draw drawable) at context +464 or class 2 at +512
  (arguments: board record, context, class, a flag word). It sets bit 0 of the record's flag word, clears bits 1 and 2
  and copies the drawable id from the client record at context +224 (offset 120 then +100 for class 1, offset 128
  then +100 for class 2) to +4. An id of 0 clears bits 2:0 and returns 0. Otherwise it hashes the id (the id's two
  16-bit halves ORed, modulo 13) and looks it up with `odsyHashLookup` in the table at +0x8658 of the board record
  under the reader lock at +0x8660 (`mraccessf`). A hit sets bit 2, is promoted with `mrtrypromote` (failure: unlock,
  return 13) and counts one more user in the drawable's +32; a miss uses the board's own object table at +2120
  instead (a drawable with no object table logs severity 4 and returns 22). The record then gets the flag word at +8
  and from the first object: its row pitch halfword (+44) at +40, its board address (+56) at +12 and its pixel-size byte
  (+17) at +42. When bit 1 of the flag word is set the second location (+16) and the four at +20 are cleared; otherwise
  +16 takes the board address of the third object and +20 to +32 the addresses of the next four, with their byte
  fields (+19 and +17 of the fourth) at +44 and +45. Bit 31 is stripped from the first-buffer address and the rest is
  merged into the context's word at +140 (class 1) or +144 (class 2), keeping their own bit 31. It sets bit 1 and returns 0.
- `odsyUnbindDrawable` (`odsy_drawable.o`, offset 0x3ec, 336 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  Undoes `odsyBindDrawable` for one class. A record whose bit 1 is clear is left alone (return 0). When bit 2 is set it
  looks the drawable up again under the reader lock (a miss: return 22; a failed promotion: 13), counts one user
  down in +32, removes it from the hash when the count reaches 0 and, after unlocking, destroys it with
  `odsyDestroyDrawable`. It then clears the drawable id at +4 and bits 1:0 of the flag word (bit 2 stays until the next bind clears it).
- `odsyPushBufferSelect` (`odsy_drawable.o`, offset 0x744, 744 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  Sends the context's draw-buffer mask to the board (arguments: context, hardware register window). It derives a 4-bit select
  from the mask at +568: unchanged when the draw drawable has no object or its halfword +18 is zero, with bit pairs
  1:0 and 3:2 exchanged when it is nonzero, and 12 (any mask bit set) or 0 when bits 13:10 of the drawable's word +32
  are set. The select goes to the word at -19760 from the board record's +0x10000, hardware-state words 6948 to 6960 are copied
  to -23924 to -23912 there, and the FIFO port receives the settle sequence, block 0x024 with the select, the settle
  sequence again and the doublewords for registers 0x608 and 0x609 from the context's +140 and +144 with bit 31 set when
  that class has no object or a zero halfword +18 (the context words are rewritten with the same bit). The word order is in `docs/opengl.md`, "The clip push".
- `gfP_OdsySetDrawBuffer` (`odsy_drawable.o`, offset 0x53c, 520 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  Private request 9: sets the draw buffer. It finds the current client from the board's pointer (none: log and status
  1), copies in 4 bytes (failure 14), stores the mask at context +568, calls `RRM_CheckValidFault` (its error is the
  status) and runs `odsyPushBufferSelect`. A process not yet attached to flow control is attached for the call with `gfx_flow_attach_me` and the credit target
  number stored in the word at -31292 (and the board's +4212), then detached with `gfx_flow_detach_me` afterwards
  with the +0x85c8 and +4220 words set to 1, exactly as `gf_OdsyValidateClip` does. It returns 0.
- `gfP_OdsyMakeCurrent` (`odsy_drawable.o`, offset 0xa2c, 756 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  Private request 8: binds the client to its drawables. It finds the current client (none: status 1), copies in 80
  bytes (failure 14), calls `RRM_CheckValidFault`, holds the manager's busy count and attaches the process to flow
  control for the call if needed. It unbinds and binds class 1 then class 2 (`odsyUnbindDrawable`, `odsyBindDrawable`, the flag words
  from +0 and +40 of the argument), copies the two binding records' words from context +472 to +503 and +520
  to +551 into the argument (+0 to +39 and +40 to +79), calls `odsyClipPush`, and copies the 80 bytes back (failure 14).
- `gfP_OdsyPbufAssoc` (`odsy_drawable.o`, offset 0xd20, 452 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  Private request 36: makes a pixel-buffer group addressable by a drawable id. It copies in 8 bytes (drawable id at +0,
  group id at +4; failure 14; a group id of -1 gives 22). It looks the group up in share group 0 of the set at +2368
  of the board record (missing: 22), and under the reader lock checks the hash for the drawable id (already present:
  11). It then creates the drawable with `odsyCreateDrawable` (failure 12), sets its user count to 1, its type word (+36)
  to 2 and its object pointer (+24) to the group, promotes the lock (failure 13) and inserts it with `odsyHashInsert`.
  It returns 0 without copying anything back.
- `gfP_OdsyPbufDeassoc` (`odsy_drawable.o`, offset 0xee4, 392 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  Private request 37: removes the association made by `gfP_OdsyPbufAssoc`. It copies in 8 bytes (failure 14), finds the
  drawable by the id at +0 under the reader lock (missing: 22) and returns 0 with a severity 4 log when the drawable has
  no group. Otherwise it stores the group's id (its word +0) at +4, promotes the lock (failure 13), removes the drawable
  from the hash, sets its type word to 1 and destroys it with `odsyDestroyDrawable` when no binding still counts
  it. The 8 bytes are copied out (failure 14).
- `odsyRestorePIOPixel` (`odsy_ctxsw.o`, offset 0x4780, 380 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Works out where an interrupted programmed-I/O pixel transfer had got to (arguments: board, context, a pointer for a
  column and a pointer for a row). From the saved pixel descriptor at saved-record +184 it takes a bytes-per-pixel
  figure: the product of an entry of the global pixel-size table (selected by bits 8:5) and an entry of a second table
  (bits 4:0) when the first has its second field set, or the hardware-state default at +7040 when either field is
  zero or the product is zero. The header size subtracted is the word at hardware-state +7044 or +7048 by bit 16
  of the descriptor. The transfer width and height are the hardware-state words +7028 and +7032, or, when bits 7:6 of
  the saved word +128 are 2, the absolute differences of the saved coordinate pairs at +768/+784 and +772/+788. A width
  or height outside 1 to 2048, or a zero pixel size, logs severity 4. Otherwise it divides the words already sent (saved
  +172, times 4, less the header) by the pixel size, then by the width: the remainder goes to the first pointer and
  the quotient to the second, which is cleared when it is not below the height.
- `odsySetProgram` (`odsy_ctxsw.o`, offset 0x48fc, 824 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Selects one of the context's two transform microcode programs (argument 3, 0 or 1) on the board. A program number
  of 2 or more, an entry number of 254 or more in hardware-state word 10992 + 32 x program, or a failed download logs a
  severity 4 message and kills the calling process with signal 9 (`curproc`, `psignal`). It uses `odsyDownloadUcode`
  up to three times: one line at the hardware line recorded at +11064 (taken from the word at +11064 after the
  program change, with its software line adjusted when the program's second segment at +10996 is in use), the
  second segment (hardware line 1848, software line +10996, at most 199 lines) when it differs from the one at +11060, and
  the program's entry line (hardware line +11000, software line +11004), after which +11064 becomes +11000. It then
  sends the sequencer words: 0x33008000 with the entry number plus one, 0x29008000 with the table word at +9948 + 4 x entry,
  the state block 0x90808800 with two zeros, and registers 0x33, 0x29, 0x2a and 0x2c from +10988, +10976, +10980 and +10984 + 32 x program
  (each value split as low 10 bits in place and the rest shifted to bit 23).
- `odsyRestoreVertex` (`odsy_ctxsw.o`, offset 0x5778, 344 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Replays one saved vertex group (index n, the last argument). It calls `odsyRestoreVB` with the descriptor at
  saved-record +140 + 8n and stores that address through its pointer argument, and when the program count at
  hardware-state +10972 is nonzero re-selects the program in +11040 + 4n with `odsySetProgram`. It then sends the
  command word at saved +256 + 4n to the FIFO port and its operands from saved +768 + 16n (the operand count is
  bits 13:10 of the word). A word with a zero count is sent only when, ignoring bits 22:16, it equals `0x3000c02e` or
  `0x2f00c02e`; otherwise it logs a severity 7 message.
- `restoreRect` (`odsy_ctxsw.o`, offset 0x5e3c, 708 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Replays the saved rectangle vertex words from the four-entry ring at saved-record +256 (command word) and +768
  (operands, 16 bytes an entry). With a third argument below 2 it sends the entries (n + 2) mod 4 and then (n - 1) mod 4,
  where n is the last argument (both as signed remainders); otherwise it sends only entry (n + 3) mod 4. Each send is the command word and its operands, counted
  by bits 13:10, to the FIFO port; a zero-count word is sent only when it matches the `0x3000c02e` / `0x2f00c02e` pair
  as in `odsyRestoreVertex`, otherwise it logs severity 7.
- `gfP_OdsyGLGet` (`odsy_ctxsw.o`, offset 0x6234, 556 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Private request 7: asks the board to write back a piece of state for glGet. It logs severity 4 when the board's
  teardown flag at +816 is set but goes on, finds the current client (none: status 1), copies in 4 bytes (failure 14),
  calls `RRM_CheckValidFault` (error 14), clears the read-back sequence word at +124 of the context's 128-byte slot in
  its saved record (slot number from the low 16 bits of the board word at +0x8608) and stores the doubleword
  (0x4c0 + selector) in the upper half and 1 in the lower half to the command FIFO port, for selectors 0 to 3; any
  other selector sends the word that happens to be next on the stack. It arms a 1500-tick timeout
  (`odsy_glget_timeout`) and polls the sequence word with 1 us delays until it turns nonzero or the teardown
  flag is set, then cancels the timeout with `untimeout_wait` and returns 14 if the teardown flag is set, else 0.
- `odsyCompositorRegRead` (`odsy_compositor.o`, offset 0x8, 588 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_compositor.o)`.
  Reads one 32-bit register of a compositor board over the two-wire port. Arguments: board, device address byte,
  register byte, a result pointer and a channel flag. The port record is the one at board +0xb408 when the halfword at +296
  is nonzero (the device byte at -19416 from +0x10000 is first set to 31) and the one at +0xb3e0 otherwise. It takes
  the mutex at +0x8520 (or +0x8510 when the port's word +28 is zero) with `mutex_lock` at level 25. Unless the halfword at
  -19404 is set it selects the channel on the option board: it reads register 5 over DDC and, for a zero flag, writes 16 to
  register 0 and clears bit 5 of register 5; otherwise writes 32 to register 0 and sets bit 5. It then sends a start with the address
  byte with its low bit cleared and the register byte (`odsy_i2c_start`, `odsy_i2c_sendbyte`), a repeated start with the
  address byte as given, and reads the word with `odsy_i2c_read_comp_reg4` into the result. Any failed step stores 0 in the
  result and returns -14. It ends with `odsy_i2c_stop`, writes 48 to register 0 (and sets the port's device byte to 31) when it had
  made the channel selection, and releases the mutex. Success returns 0.
- `odsyCompositorRegWrite` (`odsy_compositor.o`, offset 0x254, 520 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_compositor.o)`.
  Writes one 32-bit compositor register. It brackets the transfer exactly as `odsyCompositorRegRead` does (port
  choice by the halfword at +296, mutex, channel selection by the flag, restore of register 0 afterwards). Between them it sends a start with the
  device address byte, the register byte, and the value with `odsy_i2c_write_comp_reg4`, then `odsy_i2c_stop`. A failed start,
  byte or value gives -14; success 0.
- `odsy_ReadCompositorNic` (`odsy_compositor.o`, offset 0x45c, 1344 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_compositor.o)`.
  Reads the identification strings stored on a compositor board into a result record (second argument) with the
  same port choice, mutex and channel-flag bracket as `odsyCompositorRegRead`, using the clock-part read
  `odsy_i2cPLLRegRead` with device byte 82. It sets record bytes +10 and +11 to 255 and +12 to 1, reads register 3,
  and from it reaches a table: register ((value << 3) + 6) mod 256 gives the length (low 5 bits) of the first string
  and the next length lies that many registers further on. The strings are read one register per character: the first (up
  to 14 characters) goes right-justified into the 14 bytes at +60, space padded; the second (at most 10, else the read fails) fills
  the 10 bytes at +13, space padded, and its first six characters are also copied to +4 to +9; the third (at most 6) fills the
  six bytes at +44. Bytes +50 to +53 and +55 to +58 are then set to '0' and +54 and +59 to 255. A failed read stores 1 at +0
  and returns 14; success returns 0.
- `gf_OdsyCreateDDRN` (`odsy_ddrn.o`, offset 0x50, 1000 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddrn.o)`.
  Creates the per-client context record when a process opens the board (arguments: board record, resource node; result
  0 for success, 1 for failure, with the node's word at +56 cleared on most failures). It fails at once when the board's context
  table at +28456 is missing, logs severity 5 and fails when the node's flag word (+4 of the object at node +64)
  has bit 2 set, and logs severity 4 and fails when the board's started halfword (+794) is zero or its teardown flag
  (+816) is set. It takes the table lock at +29872 (`psema`, 25) and picks the first of 127 slots that is empty or
  holds a record whose id (+0) is -1, allocating a 592-byte record with `kmem_alloc` for an empty slot (no slot or no memory:
  unlock, log, fail). The record is stored at node +112, its id is the slot number and the board's context count at +28480
  goes up. The record is initialised: +408, +232, +184 and +176 cleared, +240, +248 and +256 set to -1, the node at +224, the set at +416
  (element size 4), both binding records' flags and drawable ids (+464, +468, +512, +516) cleared and the draw-buffer
  mask at +568 and the word at +564 set to 1. It takes a 32 KB slot with `OdsyAlloc32kSlot` on +29952 (stored at +244, the
  slot's halfword in the table at +880 cleared), allocates a zeroed 16 KB saved-state record with `kmem_zalloc` (stored at +192; a
  failure is logged and fails), maps it with `odsyMapPages` and `ddv_getaddr` (mapping at +200; a failure frees the
  buffer and fails), resets the clip record (the four rectangles to the full 12-bit range, +108 and +112 low 13 bits
  cleared, +116 and +120 cleared, +140 to +152 set to 0xff00ff00 and +132, +136 to 4097, +124 and +128 to -1) and the
  hardware shadow with `odsyResetHwShadow`, and sets the read-back sequence word at +124 of the context's 128-byte slot in the saved
  record to 1.
- `gf_OdsyDestroyDDRN` (`odsy_ddrn.o`, offset 0x438, 656 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddrn.o)`.
  Destroys a client's context record (arguments: board record, the manager's object, the resource node). When the node
  is the manager's first node it first runs `gfx_flow_clean_up_other_gfxp` and, on a live board, either
  zeroes the started halfword when the context's read-back word is nonzero or calls the manager's callback at +120 of its
  operations table with the node (a nonzero result logs severity 4 and the call returns 1). It clears the board's current
  context number (+820) when this is the one, unschedules a pending swap (`gf_OdsyUnSchedSwapBuf`, when the node's +28 is
  not negative) and any retrace event (`gf_OdsyUnSchedRetraceEvent`), and, when the context's +408 is zero, finishes DMA
  with `odsyDMAFinish`, detaches memory with `odsyMMdetach`, unpins with `odsyUnpinAndUnmapGctxRegions` and sets +408 to 1.
  It then calls `odsy_hpipe_cleanup`, clears +224 and the node's +112, frees the 16 KB saved record (+192) and returns the
  32 KB slot (+244). For the last context (count at +28480 equal to 1) it detaches the process from flow control if
  attached, then releases the flow handle with `gfx_flow_dealloc` and clears the credit target words at -31292 and +4212.
  Finally it stores -1 as the record's id and counts the context down.
- `odsy_probeDenaliChannel` (`odsy_denali.o`, offset 0x0, 824 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_denali.o)`.
  Probes one channel for a Denali-class device on the two-wire bus (arguments: board, channel, result pointer, port
  select). With port select 0 it uses the port at +0xb3e0; otherwise the halfword at +298 must be 3 (else it stores 0 and
  returns 0) and it uses the port at +0xb408 with device byte 31 and selects the channel as in `odsyCompositorRegRead`.
  It takes the port's mutex (+0x8520 or +0x8510), sets the device byte to 239 and reads status with `odsy_i2c_read_denali`
  up to 101 times, 100 us apart, until the status word is zero (a timeout logs severity 4 with the channel). It then sends a
  start with 238 and the three bytes 2, 0 and 64 with `odsy_i2c_write_denali`, stops, waits 300 us and polls
  `odsy_i2c_read_denali` up to 10 times, 10 us apart, for the status 10. On success it stores 4 in the result for port 0 or
  (channel << 1) | 1 for the option port. It always stops the bus, restores register 0 to 48 (device byte 31) when the option
  port was used, releases the mutex and returns 0.
- `odsy_i2cProbe2ab` (`odsy_ddc.o`, offset 0x2140, 340 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Runs the monitor-bus (DDC2AB) start-up conversation on a port with the lower-level routines instead of the
  command wrapper. In a loop that ends when 30 ticks have passed, it tries `odsy_i2c2abReset` up to three times (three
  failures cost 100 us and a tick), then `odsy_i2c2abAttention` (a failure costs 100 us and a tick), and on success repeats
  twice: 100 us delay, a tick, `odsy_i2c2abIDRequest`, `odsy_i2c2abIDReply` into a stack buffer and
  `odsy_i2c2abAssignAddr`; each failed step only logs a severity 1 message. The routine has no exit on success: when
  the tick count reaches 30 it returns 1.
- `odsy_Probe2AB` (`odsy_ddc.o`, offset 0x3004, 728 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Finds a DDC2AB monitor and moves it to the assigned address. It calls `odsy_i2cReset`, then loops until 30 ticks
  have passed: the reset command byte 0xf0 is sent (no stop) up to three times with `odsy_2abSendCmd`, each a tick; three
  failures send a stop, wait and loop. `odsy_2abGetReply` must return a one-byte reply 0xe0 (attention); a non-positive
  result stops and waits (a negative one costs a tick). When the monitor address kept in the object's data is 4 it is set back to
  the default 110 (0x6e). Twice, it then waits, sends the ID request 0xf1 and, when the reply (at most 127 bytes) starts
  with 0xe1, copies the ID bytes, waits and sends 0xf2 followed by the ID and the new address 4 with a stop; success makes 4
  the monitor address, compares the ID's first 19 bytes against three stored monitor IDs (the result is unused) and returns 1.
  Exhausting the ticks sets the address to 110 and returns 0.
- `odsy_2abCmdWrapper` (`odsy_ddc.o`, offset 0x32dc, 304 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Sends one monitor-bus command and optionally collects the reply (arguments: port, request record, command bytes, receive
  buffer; the request holds the length at +16, the reply-wanted pointer at +32 and the reply length at +20). It sends
  the command with `odsy_2abSendCmd`, with a stop only when no reply is wanted. A failed send is retried once, then returns -5.
  With a reply wanted it calls `odsy_2abGetReply`: a positive length is returned; a timeout (0) gives -145 and any other
  failure -5, followed, up to a global limit of attempts, by a retry after a delay that grows with the attempt number (three globals:
  first retry, second, and all later ones).
- `odsy_2abSendCmd` (`odsy_ddc.o`, offset 0x340c, 556 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Sends one framed command to the monitor. The frame is a start with the monitor address, the host address byte (a global), the length byte 0x80 plus the command length, the command bytes and an XOR checksum of all of them

  (monitor address, host address, length byte, body), each with `odsy_i2c_sendbyte`; any failed step calls `odsy_i2cFixupAfterErr` and
  restarts the frame, up to three starts. After the third a command that failed three times with no acknowledgement of the start and is
  the reset byte 0xf0 swaps the monitor address between 4 and 110 and starts over; any other failure returns 0. With the
  stop flag set it ends with `odsy_i2c_stop`. It returns 1.
- `odsy_2abGetReply` (`odsy_ddc.o`, offset 0x3638, 456 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Receives a framed monitor reply as a bus slave. It sends a stop, zeroes the reply length and becomes a slave receiver with
  `odsy_i2c_becomeSlaveRecv` (40 ticks): a timeout returns 0 and any other error -1 (after `odsy_i2cFixupAfterErr`). The first
  byte is the address; one with its low bit set is refused with -1. It then reads the monitor address and the length byte
  (the low 7 bits are the body length) with `odsy_i2c_slave_recvbyte`, the body bytes into the caller's buffer
  (counting them in the reply length) and the checksum, XORing everything it reads. After a short delay it returns the reply length
  when the checksum matches and -1 when it does not or a read failed.
- `odsy_ProbeRainier` (`odsy_rainier.o`, offset 0x9c, 340 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_rainier.o)`.
  Looks for add-in boards of the Rainier kind in the hardware graph and prepares the first one. It stores 0 in the count
  (second argument), looks up a fixed graph path with `hwgraph_path_to_vertex` and, when it exists, formats a
  device path for each index from 9 down to 0 with `sprintf`, counting the ones `hwgraph_path_to_dev` finds and keeping the lowest index.
  With none it returns 1 and a count of 0. Otherwise it stores the count, opens the lowest device (failure: severity 1
  log, return 1), takes its device information with `device_info_get`, reads the board identity with
  `odsy_rainier_read_board_id` and writes 66 to Rainier register 720 with `odsy_rainier_write_rcx_reg`, then returns 0.
- `odsy_set_gfx_mfg_nic_name` (`odsy_init.o`, offset 0x3d0, 340 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Copies the board's manufacturing name out of its identification-chip text into the board record. With no
  vertex handle (the word at -19400 from +0x10000) it clears the first name byte (-19272) and returns 1; if
  `nic_vertex_info_get` has nothing it also logs severity 1 and returns 1. Otherwise it copies the text (at most 1023
  characters) and splits it with `strtok_r` on a delimiter string, comparing each token with a key string until one matches, and
  takes the token after it as the name (an empty default string when none matches). The name is copied with `strncpy` to
  board +0xb4b8, and the terminating zero is stored one byte after the end of the copied text. It returns 0.
- `gfP_OdsyDIAGallocScanbuf` (`odsy_diag.o`, offset 0x0, 536 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`.
  Private request 53: allocates a diagnostic scan buffer and maps it to the client. It copies in 24 bytes (the size is the word
  at +0; failure 14), takes the mutex at +0xb338 (level 25) and returns 16 when a scan buffer already belongs to
  a client (word at -19608 from +0x10000). It allocates the buffer with `kmem_alloc` (failure 12), maps it with
  `odsyMapPages` (failure frees it and returns 11), records its size (-19616), owner (-19608) and mapping, and
  releases the mutex. The reply carries the size, the mapped address (`ddv_getaddr`) at +8 and the buffer's physical
  address (`kvtophys`) at +16 (failure 14). The routine prints the address, zeroes the buffer through the mapping, stores the word 23 at offset 92 and, for a
  buffer above 16 KB, 16408 at offset 16480, and writes the data cache back with `dki_dcache_wb`.
- `gfP_OdsyDIAGgetShadowPtrs` (`odsy_diag.o`, offset 0x2b8, 728 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`.
  Private request 54: maps the driver's shadow memory into a diagnostic client. It copies in 80 bytes (failure 14), takes the
  mutex at +0xb370 and returns 16 when a client already holds the mapping (word at -19584). It maps 64 KB of the buffer pointed to by
  board +880 and the four 16 KB buffers whose pointers sit at +29888 with `odsyMapPages` (a failure unmaps what succeeded and returns 11; the 64 KB
  failure returns 12), records the owner and replies with the four buffers' physical addresses (the pointer masked to 40
  bits) at +0 to +24, their mapped addresses at +32 to +56, the 64 KB block's physical address at +64 and its mapped
  address at +72 (from `ddv_getaddr`). It returns 0.
- `odsy_NewDmaRegion` (`odsy_dma.o`, offset 0x0, 332 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Creates a DMA region record for one buffer. It allocates 88 zeroed bytes (failure: log, status 12, null) and fills the
  owner (+16), board (+24), address (+32), length (+40) and a user-buffer flag (+48), and copies the 32-byte transfer header to
  +56. For a user buffer it checks `useracc` over the range with flag 272 (failure: log, delete the region, null) and marks the
  record (+52 = 1) before `odsy_DmaRegion_BuildXlatTbl` builds the page table (an error is logged, the region deleted and null returned);
  a kernel buffer gets +52 = 0. The status word is 0 on success.
- `odsy_DeleteDmaRegion` (`odsy_dma.o`, offset 0x14c, 240 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Frees a DMA region record. For a locked user buffer it calls `unuseracc` with flag 272 on the range, then overwrites the page
  table (at +0, size at +8) with the byte 129 and frees it, overwrites the 88-byte record with 131 and frees that.
- `odsy_DmaRegion_BuildXlatTbl` (`odsy_dma.o`, offset 0x40c, 332 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Builds the region's page table. An existing table is overwritten with 135 and freed. The new table is 40 bytes plus 8 bytes for
  every 16 KB of the buffer, allocated zeroed (failure: severity 1 log, return 12). The 32-byte transfer header is copied to its
  start, and `generatePageTable` fills the entries after it from the header, the address and the length; its result is
  returned.
- `gfP_OdsyDIAGdma` (`odsy_dma.o`, offset 0x934, 512 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Private request 55: runs one diagnostic DMA transfer and waits for it. When its second argument is nonzero it calls
  `RRM_CheckValidFault` first. It copies in 48 bytes (user address at +0, length at +8, the 32-byte header at +12 and a mode word at +44;
  failure 14), takes the manager's busy count, builds a region with `odsy_NewDmaRegion`, clears bit 11 of the board
  word at +4116 and starts the transfer with `odsy_DmaRegion_DoTransfer`. It then polls up to 40 times with
  `DmaFinishedPollDelay` for bit 11 of +4116; failing that it logs and tears the board down with `odsy_teardown`. It
  deletes the region, drops the busy count and returns 0.
- `odsyDMAWait` (`odsy_dma.o`, offset 0x24a8, 940 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Waits for DMA operations to finish and reaps their records (arguments: board, owner context, mode, pointer to an operation
  number). A torn-down board returns 9. Under the mutex at +5800 mode 0 arms a timeout, sets the flag at -19328 to 3 and sleeps
  on the all-operations sync variable at +5816 (`ddi_sv_wait_sig`, non-fatal signals held); a signal or teardown returns 22. Otherwise the
  operation number (-1 means none and returns 0) must lie within 128 of the completed counter at +6880 and match the issue count
  stored in the ring entry at +5856 (else a log and 22); the routine then arms the timeout with the flag at 1 and, when the entry's state
  (+8) is nonzero, sleeps on the entry's own sync variable (+32). A failed wait stores -1 and returns 22. With an owner it
  then walks the owner's operation set at +416 and, for each finished record (+8 zero), unlocks its user pages (`unuseracc`, flag 272) when it has a range, releases its set id and destroys
  its sync variable. The operation number is set to -1 and it returns 0.
- `ConstructTftchWarList` (`odsy_dma.o`, offset 0x2eec, 688 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Splits an image transfer into pieces of at most 0x24000 bytes (arguments: output list, the 32-byte header, an output size, the
  buffer address and its length). A transfer that fits is one piece: count 1, x and y from header word 4, width and height
  from word 12, address and length, and an output size of 128. A longer one needs a row (header word 24's 20 bits plus
  the stride at word 20) of at most 0x24000 bytes, otherwise it logs severity 4 and returns 1. Each piece then holds as many whole rows as fit; the piece records beyond the first are allocated
  together (`kmem_alloc` of 48 bytes each, failure returns 1) and chained through +8. A record holds x at +24, y at +28, width at +16,
  rows at +20, address at +32 and bytes at +40. The y of a piece counts up from the header's, or down from its bottom
  edge when bit 30 of the header's top byte (word 28) is set; the last piece takes the remaining rows and drops the
  stride after its last row. The output size is 128 times the piece count. It returns 0.
- `gf_OdsyExit` (`odsy_sched.o`, offset 0x1b0, 580 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_sched.o)`.
  Runs when the manager closes the board for one graphics object. When bit 2 of the object's flag word (+4) is set it first
  calls `odsyDiagExit`. It takes the manager's semaphore (`psema` at +56, 537), becomes owner, waits in 2 us steps for the
  word at +104 to clear and counts the busy word at +80 up. For the object's own current client (if any) and then for every client
  in the global client table (176-byte entries, count in a global) that belongs to this object, it takes the client's
  lock (`psema`, 25) and, when its context is not yet torn down (+408 zero), calls `odsyDMAFinish`,
  `odsyMMdetach` and `odsyUnpinAndUnmapGctxRegions` and sets +408 to 1. It drops the busy count, raises the interrupt level
  and calls the callback at +192 of the object's operations table when there is one, clears the owner, releases the
  semaphore with `vsema`, restores the level and returns 0.
- `odsy_sboxfi` (`odsy_tport.o`, offset 0xb90, 600 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`.
  Text-port filled box (arguments: board base, x1, y1, x2, y2). It returns at once when the mute word is set. Otherwise it
  counts the port in use with a write-buffer flush, takes the text-port spin lock, and orders the corners (minimum and maximum x and y).
  It sends to the command FIFO port at +0x110000 a primitive begin (`0x14400`, type 7), four 2D vertices (`0x8080c800` with
  x and y) at (xmin, H - ymax + 1), (xmax + 1, H - ymax + 1), (xmax + 1, H - ymin + 2) and (xmin, H - ymin + 2), where H is
  the port height at +16 of its static object, and the primitive end `0x14001`. A word at +7036 of the hardware-state
  object adds an extra settle group (`0x10443` with 250 and two `0x10046`) in front of the settle sequence of `BUZZ.h`
  section 5 that closes every text-port drawing routine. The use count goes down and the lock is released.
- `odsy_pnt2i` (`odsy_tport.o`, offset 0xde8, 404 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`.
  Text-port point (arguments: board base, x, y). With the mute word clear it takes the in-use count and the text-port spin lock,
  sends `0x14400` with type 0 (points), the vertex `0x8080c800` with x and H - y + 1 (H from the static port object at +16)
  and `0x14001`, then the same closing settle sequence as `odsy_sboxfi`, and releases the lock.
- `odsy_tpinit` (`odsy_tport.o`, offset 0x1658, 492 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`.

  Prepares the board for text-port output (argument: board base). It finds the board with `odsyPipeNrFromBase`, sets the mute word and
  waits in 5 us steps for the command FIFO level (bits 15:7 of the word at +4204) to reach zero. Up to six times it writes 0, 1, 0 to
  +4228, 0 to +4212 and 1 to +4220 and runs `odsyInitCfifo`; a failure runs `odsyReset` first on the next pass and a sixth failure logs
  severity 1 and leaves the port muted. It then calls `odsyInitDBE` twice with two stored timing structures, stores the board's width and height
  (halfwords at +232 and +234) in the static port object, copies three board words (+1360, +1496 and +1336 divided by 16) into the stored
  state, clears 11128 bytes of the hardware-state object, writes 4165 stored words to the FIFO port at +0x110000,
  calls `ODSY_SET_GC`, and clears the mute word.
- `gfP_OdsyHPconfig` (`odsy_hpipe.o`, offset 0xc58, 712 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`.
  Private request 40: creates a display-pipe configuration (several boards tiled side by side). It copies in 524 bytes (failure
  14): the board count at +0, the pipe number at +4 (0 up to the table's limit at +4748, else 22) and, from +0 as 16-byte entries,
  the board index of each member at entry +24. Under the global spin lock it runs `odsy_hpipe_discover` when the state table is
  missing or empty (a failed discovery gives 22). A pipe number already held by a configured slot in use returns 16; a free slot is the first of 64
  56-byte slots with state 0 (none: 16). The slot gets state 1, the member count at +48, a zero use count and the
  member-board list that the first board keeps at +0xb450 (stored at slot +16). Member i then takes the horizontal
  strip starting at i times its width divided by the count: the board words at -19288 (x offset), -19284 (y, 0), -19280 (width,
  its width over the count) and -19276 (height) from +0x10000. `odsy_program_compositor_tiling` programs the compositor, the
  lock is released and the 524 bytes, with the slot number at +8, are copied back (failure 14).
- `gfP_OdsyHPdestroyConfig` (`odsy_hpipe.o`, offset 0xf20, 472 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`.
  Private request 41: removes a display-pipe configuration. It copies in the 4-byte slot number (failure 14) and under the global
  lock requires it to be 0 to 64 and in use (else 22 with a log). It gives the first member board the whole screen again (offsets 0,
  width and height from its +232 and +234 halfwords), clears the layout words of the other members, calls
  `odsy_program_compositor_tiling`, and clears the slot's state, board list and member count and sets its pipe number to -1. A slot with no board list
  logs and returns 14.
- `gfP_OdsyHPunbind` (`odsy_hpipe.o`, offset 0x1260, 392 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`.
  Private request 42: detaches the calling client from a display pipe. It copies in the 4-byte slot number (failure: log, 14),
  takes the slot's own spin lock (+24) and requires the slot to be in use (else 22). It then stores -1 as the board's current
  pipe number (-19304 from +0x10000), counts the board's pipe-use word at -19300 down when positive, counts the slot's use word (+56) down
  when nonzero and sets the client context's halfword at +588 to -1 (a missing context logs). It returns 0.
- `gfP_OdsyHPqueryAttrib` (`odsy_hpipe.o`, offset 0x13e8, 708 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`.
  Private request 43: reads an attribute of a display-pipe configuration. It copies in 32 bytes (slot at +0, attribute at +8,
  buffer size at +12, user pointer at +24; failure 14). Attribute 1 builds up to four 112-byte entries, one per member board: the board's name
  (`strcpy` from +216) and its x offset, y offset, width and height at entry +80 to +92, repeated at +96 to +108; a buffer
  smaller than the entries logs and gets only what fits, and `copyout` writes them (failure 14). Attributes 3 and 4 need a buffer
  of at least 4 bytes (else 14) and return, under the slot lock, bit 0 or bit 1 of the slot's attribute word at +52 as one word. Any other
  attribute returns 22.
- `gfP_OdsyHPsetAttrib` (`odsy_hpipe.o`, offset 0x17f4, 740 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`.
  Private request 44: changes an attribute of a display-pipe configuration. It copies in 32 bytes (slot at +0, value at +4,
  attribute at +8, buffer size at +12, user pointer at +16; failure 14). Attribute 1 copies in the 112-byte entries (allocation 12, copy
  failure 14), finds each board with `bdata_from_pipename` and stores its x, y, width and height from entry +80 to +92 in the
  board words at -19288 to -19276, then calls `odsy_program_compositor_tiling`. Attribute 3 sets the slot's attribute word at +52 to 1
  and bit 21 of the first board's compositor word at +0xb430 when the value is nonzero (clears both otherwise); attribute 4
  sets the word to 2 and bits 4:3 of that word to 10 binary when nonzero (clears them otherwise). In both cases
  `odsyCompositorRegWrite` writes the result to compositor register 170 on the first board with the channel flag from bit 3 of its +700 word.
  Other attributes return 22.
- `odsy_program_compositor_tiling` (`odsy_hpipe.o`, offset 0x844, 1044 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`.
  Writes the member boards' tile layout to the compositor (argument: the member board list, four pointers from +16). For each board
  it makes an x-range word, the start in units of 4 pixels in bits 9:0 and the end (offset plus width) in bits 25:16, and a y-range word of the
  start in bits 11:0 and the end in bits 27:16, from the board words at -19288, -19284, -19280 and -19276; an absent board gives 0. With no first board it returns
  1. When the first board's compositor word at +700 has type 1 in bits 31:28 and a unit number in bits 15:8, the eight words
  go to the USB compositor with `usb_comp_update_tiles`, bracketed while the text port is in use by setting and then clearing bit 5 of
  compositor register 1 (`usb_comp_readwrite_register`, with severity 7 logs when the in-use counter is nonzero). Otherwise `odsyCompositorRegWrite` stores the
  four x words in compositor registers 35 to 38 and the four y words in 39 to 42 (device 170, channel flag from bit 3 of +700). It returns 0.
- `odsy_hpipe_discover` (`odsy_hpipe.o`, offset 0x64, 1460 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`.
  Builds the global display-pipe table from the boards present. It allocates the 4752-byte state table with
  `kmem_zalloc` (or clears the existing one), initialises the 64 slot spin locks, sets the table's first word to 1 and
  then makes two passes over the boards using each board's compositor word at +700 (a word of 0 skips the board).
  Pass 1 handles boards whose bits 2:1 are zero (the head of a pipe): with type 0 in bits 31:28 it forms a 48-bit identifier from the
  six bytes at +729 to +734 and writes the first four to compositor register 90 and the last two to register 91 (device 170,
  `odsyCompositorRegWrite`); with type 1 it reads register 90 of device 171 (`odsyCompositorRegRead`) and merges it into the +700 word.
  The identifier is stored in the first free one of 16 48-byte pipe entries (at +3592, identifier at +8, entry number at +0, member boards at
  +16 to +40 indexed by bits 2:1 of the +700 word); the board's pointer at +0xb450 is set to the entry and the pipe count at +4748
  goes up. Pass 2 takes the other boards: it reads the identifier back from compositor registers 90 and 91 (type 1 boards use register 90 alone),
  finds the entry holding it and files the board there; an unknown identifier logs severity 4 with its value.
  Last it stores the board count at +4360 and a 12-byte record per board from +4364 (board index, position, pipe entry number; -1 for a board in no pipe).
  It returns 0.
- `gf_OdsySetDisplayMode` (`odsy_retrace.o`, offset 0xbd4, 1192 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
  Sets the display mode of one window id (arguments: manager object, window id, mode word). Under the display-FIFO semaphore it
  waits for FIFO level 15 (failure: release, return 5) and sends one display-FIFO doubleword at board +0x400000 whose
  header is `0x70000001` OR (id + 10496) shifted left 14 (display register 0x2900 plus the id) and whose data is the mode word with bit
  30 cleared. For ids below 32 it then takes the mutex at +28504 and compares bit 30 of the mode word with the id's bit in the
  buffer-select shadow at +28528; when they differ it toggles the shadow bit and writes the id's single-bit mask to board
  register 0x10c4 (bit 30 set) or 0x10cc (clear). If the id's bit is set in the pending-swap mask at +28560 it clears it and calls
  `odsyValidateBuffer`. The mutex is released and it returns 0; the semaphore release replays a pending cursor command as in the other display requests.
- `gfP_OdsyHPconfig` (`odsy_hpipe.o`, offset 0xc58, 712 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)`.
  The Origin 350 build of the display-pipe configure request, read as a difference from the IP30 entry: 195
  instructions in the same order. Every board-record field it reads or writes at a negative offset from +0x10000
  sits 24 bytes higher: the member-list pointer is at -19288 (IP30: -19312) and the four layout words are at -19264,
  -19260, -19256 and -19252 (IP30: -19288 to -19276). The slot search, the strip arithmetic,
  `odsy_program_compositor_tiling` and the copy-out are unchanged.
- `gfP_OdsyHPdestroyConfig` (`odsy_hpipe.o`, offset 0xf20, 472 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)`.
  The Origin 350 build of the display-pipe destroy request, read as a difference from the IP30 entry: 127
  instructions in the same order. Only the board-record layout words move, to -19264, -19260, -19256 and -19252 from
  +0x10000 (IP30: -19288 to -19276), the same 24-byte shift as in `gfP_OdsyHPconfig`. The slot checks, the restore
  of the first board's full-screen layout, the clearing of the others and the slot reset are unchanged.
- `gfP_OdsyHPunbind` (`odsy_hpipe.o`, offset 0x1260, 392 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)`.
  The Origin 350 build of the display-pipe unbind request, read as a difference from the IP30 entry: 110
  instructions in the same order. The board's current pipe number and pipe-use word are at -19280 and -19276 from
  +0x10000 (IP30: -19304 and -19300); the slot lock, the use-count decrement and the client context's halfword at
  +588 are unchanged.
- `gfP_OdsyHPqueryAttrib` (`odsy_hpipe.o`, offset 0x13e8, 708 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)`.
  The Origin 350 build of the display-pipe attribute query, read as a difference from the IP30 entry: 194
  instructions in the same order. The member-list pointer is at -19288 and the four layout words it copies into each
  112-byte entry are at -19264, -19260, -19256 and -19252 from +0x10000 (IP30: -19312 and -19288 to -19276). The
  attribute dispatch, the name copy, the size check and the copy-out are unchanged.
- `gfP_OdsyHPsetAttrib` (`odsy_hpipe.o`, offset 0x17f4, 740 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)`.
  The Origin 350 build of the display-pipe attribute set request, read as a difference from the IP30 entry: 200
  instructions in the same order. The four board layout words it stores from each entry are at -19264, -19260,
  -19256 and -19252 from +0x10000 (IP30: -19288 to -19276); the attribute dispatch, the compositor register 170
  writes and the tiling call are unchanged.
- `odsy_hpipe_discover` (`odsy_hpipe.o`, offset 0x64, 1460 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)`.
  The Origin 350 build of the display-pipe discovery, read as a difference from the IP30 entry: 408 instructions in
  the same order. The board's pointer to its pipe entry is at -19288 from +0x10000 (IP30: -19312); the two passes,
  the identifier registers 90 and 91 and the final 12-byte records are unchanged.
- `gf_OdsySetDisplayMode` (`odsy_retrace.o`, offset 0xc7c, 1192 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_retrace.o)`.
  The Origin 350 build of the per-window display-mode write, read as a difference from the IP30 entry: 309
  instructions in the same order. The start-up word that bypasses the display-FIFO semaphore is at -19328 from
  +0x10000 (IP30: -19352) and the global that holds the cursor command header is read through a different small-data
  slot; the FIFO header, the buffer-select shadow update and the writes to 0x10c4 and 0x10cc are unchanged.
- `odsyDMAWait` (`odsy_dma.o`, offset 0x243c, 940 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_dma.o)`.
  The Origin 350 build of the DMA wait, read as a difference from the IP30 entry: 262 instructions in the same
  order. The wait flag it sets while sleeping is at -19304 from +0x10000 (IP30: -19328), and the two range
  comparisons of the operation number are scheduled in a different order; the all-operations and per-operation
  waits, the ring check and the record reaping are unchanged.
- `gfP_OdsyPbufAssoc` (`odsy_drawable.o`, offset 0xe44, 452 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_drawable.o)`.
  The Origin 350 build of the pixel-buffer association request, read as a difference from the IP30 entry: 121
  instructions with the same logic. Only the placement of the message-pointer loads differs; the argument copy, the
  share-group-0 and group lookups, the hash check, the `odsyCreateDrawable` call and the insertion are unchanged.
- `gfP_OdsyPbufDeassoc` (`odsy_drawable.o`, offset 0x1008, 392 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_drawable.o)`.
  The Origin 350 build of the pixel-buffer deassociation request, read as a difference from the IP30 entry: 106
  instructions with the same logic. Only the placement of one message-pointer load differs; the hash lookup, the
  removal, the type reset and the copy-out are unchanged.
- `odsy_tpinit` (`odsy_tport.o`, offset 0x15e4, 496 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_tport.o)`.
  The Origin 350 build of the text-port set-up, read as a difference from the IP30 entry: 125 instructions against
  124, the same reset retry loop, `odsyInitDBE` calls, 4165-word replay and `ODSY_SET_GC` call, with one argument
  move scheduled differently.
- `odsyClipMask` (`odsy_clip.o`, offset 0x5bc, 520 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_clip.o)`.
  The Origin 350 build of the clip-mask routine, compared instruction by instruction with the IP30 build: the 136
  instructions are identical, so it computes the visible rectangles exactly as the IP30 entry describes (scissor box
  moved by the draw drawable's origin, four packed rectangles intersected with it, survivors stored relative to the
  origin at R +44, +60, +76 and +92 and counted at R +40).
- `gf_OdsyCreateDDRN` (`odsy_ddrn.o`, offset 0x50, 1000 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_ddrn.o)`.
  The Origin 350 build of the context creation routine, compared instruction by instruction with the IP30 build: the
  268 instructions are identical, so it creates the 592-byte context record, takes a 32 KB slot, allocates, maps and
  resets the 16 KB saved-state record and sets the read-back word exactly as the IP30 entry describes.

- `gfP_OdsyBRDMGRsetColors` (`odsy_brdmgr.o`, offset 0x0, 1680 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_brdmgr.o)`.
  The Origin 350 build of the colour-map request, read as a difference from the IP30 entry: 449 instructions in the
  same order. The only change is the start-up word that bypasses the display-FIFO semaphore, at -19328 from board
  record +0x10000 (IP30: -19352), in its three tests; the run splitting, header words, FIFO waits and semaphore
  release are unchanged.
- `gfP_OdsyBRDMGRcursor` (`odsy_brdmgr.o`, offset 0x13d0, 3396 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_brdmgr.o)`.
  The Origin 350 build of the cursor request, read as a difference from the IP30 entry: 902 instructions in the same
  order. Only the start-up word that bypasses the display-FIFO semaphore moves, to -19328 from +0x10000 (IP30:
  -19352), in its seven tests; the flag handling, the 60-, 512- and 256-byte blocks, the header words and the
  pending-cursor replay are unchanged.
- `odsy_LoadDCD2Regs` (`odsy_brdmgr.o`, offset 0x38ac, 1060 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_brdmgr.o)`.
  The Origin 350 build of the DCD2 clock and logic loader, read as a difference from the IP30 entry: 286
  instructions in the same order. Only the placement of the eight message-pointer loads on the failure paths
  differs; the device bytes 92, 31 and 23, the register values, the 600000 us wait and the write of 7 to register 50
  are unchanged.
- `gfP_OdsyBRDMGRVTGcontrol` (`odsy_brdmgr.o`, offset 0x5f54, 1200 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_brdmgr.o)`.
  The Origin 350 build of the timing-generator control request, read as a difference from the IP30 entry: 312
  instructions in the same order. The start-up word is at -19328 from +0x10000 (IP30: -19352), the header constant
  for the update-enable word comes from the next small-data slot (-30624 instead of -30632) and the copy-failure
  message is at a different offset; the flag handling and the two control-word writes are unchanged.
- `odsy_program_compositor_tiling` (`odsy_hpipe.o`, offset 0x844, 1044 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)`.
  The Origin 350 build of the compositor tile programming, read as a difference from the IP30 entry: 278
  instructions in the same order. The board's layout words are at -19264, -19260, -19256 and -19252 from +0x10000
  (IP30: -19288 to -19276); the range arithmetic, the USB compositor branch and the registers 35 to 42 are
  unchanged.
- `odsy_i2cProbe2b` (`odsy_ddc.o`, offset 0x410, 6172 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_ddc.o)`.
  The Origin 350 build of the monitor-bus probe, read as a difference from the IP30 entry: 1584 instructions in the
  same order. Only the start-up word that bypasses the display-FIFO semaphore moves, to -19328 from +0x10000 (IP30:
  -19352), in its sixteen tests; every transfer, delay and result is unchanged.
- `odsyGatherInfo` (`odsy_init.o`, offset 0xedc, 1440 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_init.o)`.
  The Origin 350 build of the board identity reader, read as a difference from the IP30 entry: 394 instructions in
  the same order. The start-up word is at -19328 from +0x10000 (IP30: -19352), a lock it takes sits at +464 where
  the IP30 build uses +568, the same global table is reached through the next small-data slot (-30704 instead of
  -30720), and the three message strings are 104 bytes earlier; the revision-type jump table, the display-chip word
  and the SDRAM decoding are unchanged.
- `odsyGenlockInterrupt` (`odsy_intr.o`, offset 0x5c0, 4064 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_intr.o)`.
  The Origin 350 build of the genlock interrupt, read as a difference from the IP30 entry: 1094 instructions in the
  same order. The start-up word is at -19328 from +0x10000 (IP30: -19352), the processor number is read from -15320
  in the private area (IP30: -15456) and the lock it takes is at +0xb488 (IP30: +0xb470); the clock-part register
  sequence, the shadow updates and the cursor replay are unchanged.
- `odsy_mm_B_okay` (`odsy_pmm.o`, offset 0x3f70, 8 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  The patch 4103 build of the pressure-clear routine is a bare return: its two instructions are a jump back and a
  no-op, so unlike the IP30 media build it never clears the word at +4924 of the memory-manager record. The pressure
  level that `odsy_mm_B_warn1` raises is therefore not lowered by `odsy_mm_obj_free_bs` in this build.
- `OdsyInitCSetCursor` (`odsy_adt.o`, offset 0x130, 20 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  The patch 4103 build of the set-cursor reset uses the older set layout: it zeroes the slot index at +24 and the
  end flag at +28 (the IP30 media build uses +32 and +36) and copies the chunk-list head at +0 into the current-
  chunk pointer at +8. The whole 4103 set code, for example `OdsyInitCSet` (chunk-size shift at +32, counters at +16
  and +20) and `OdsyLookupCSetId` (shift read from +32), uses a 40-byte layout without the hint pointer that the IP30 media build adds.

- `odsySsyncInterrupt` (`odsy_intr.o`, offset 0x574, 72 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)`.
  The patch 4103 build of the sync interrupt handler makes the same single call to `odsyDMAWakeup` as the IP30 entry
  and touches no board register; only the stack frame is 32 bytes where the IP30 build uses 16.
- `odsy_mm_ctxsw_timeout` (`odsy_pmm.o`, offset 0x2614, 56 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  The patch 4103 build of the context-switch timeout handler logs the same severity 1 message and calls
  `odsy_teardown` as the IP30 entry; only the stack frame (32 bytes against 16) and the order of the return-address
  save differ.
- `odsy_mm_cores_obj_in` (`odsy_pmm.o`, offset 0x1a08, 60 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  The patch 4103 build of the co-residency membership test scans the same 16 pointer slots, starting 16 bytes into
  the array at +8 of its second argument, and returns 1 for a match and 0 otherwise as the IP30 entry describes;
  only the instruction order and register choice of the loop differ.
- `odsy_EdidCksum` (`odsy_ddc.o`, offset 0x1abc, 44 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  The patch 4103 build of the EDID checksum adds the 128 bytes at its argument modulo 256 and returns the sum like
  the IP30 entry; its loop is not unrolled (one byte per pass, 11 instructions in 44 bytes).
- `odsyCreateDrawable` (`odsy_drawable.o`, offset 0xc8, 68 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  The patch 4103 build of the drawable allocator does the same as the IP30 entry (a 40-byte `kmem_alloc`, the word
  at +32 cleared, the second argument stored at +16, null on failure); only the stack frame (32 bytes against 16)
  and the register used for the new record differ.
- `odsyUnmap` (`odsy_map.o`, offset 0x65c, 96 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  The patch 4103 build of the range unmap does the same as the IP30 entry (`as_lookup_current`, a request block with
  the address at +32 and zeros at +16 and +40, the unmap method at +64 of the address space's operations); only the
  stack frame (96 bytes against 80) and the register save order differ.
- `OdsyInitCSet` (`odsy_adt.o`, offset 0x0, 40 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  The patch 4103 build of the set initialiser stores its second argument (the chunk-size shift) at +32, zeroes the
  two counts at +16 and +20 and the chunk-list head at +0, and calls `OdsyInitCSetCursor`. The IP30 media build
  keeps the shift at +40, the counts at +24 and +28 and also clears a hint pointer at +16; patch 4103 has a
  40-byte layout without that pointer.
- `sgiEdid` (`odsy_ddc.o`, offset 0x1b84, 56 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  The patch 4103 build of the vendor-monitor test returns 1 for the same two byte-9 values, 0xf8 and 0xe9, as the
  IP30 entry (the tests are issued in a different order after loading byte 9 first) and 0 otherwise.
- `odsy_init` (`odsy_init.o`, offset 0x2dc, 44 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  The patch 4103 build of the driver start-up entry only registers the driver with `xwidget_driver_register` (part
  number 0xc013, manufacturer 35, the "odsy_" prefix, flags 0). Unlike the IP30 media build it does not call
  `odsyCheckBoardPointers` and does not clear the board-enumeration global first.
- `odsy_mm_sg_remove_grp` (`odsy_pmm.o`, offset 0x2f4c, 64 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  The patch 4103 build releases the colour-set identifier of a surface group in the same way as the IP30 entry
  (calls `OdsyDeallocCSetId` unless the group's word at +0 is -1, then stores -1 there) but on the container at +64
  of the memory-manager record, where the IP30 media build uses +72.
- `DmaFinishedPollDelay` (`odsy_dma.o`, offset 0x880, 80 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  The patch 4103 build of the poll delay performs the same steps as the IP30 entry (`init_sema`, a 25-tick `timeout`
  with `odsy_dma_poll_timer`, `psema` at priority 25); only the instruction order and the 32-byte stack frame
  differ.
- `odsy_i2cFixupAfterErr` (`odsy_ddc.o`, offset 0x0, 76 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  The patch 4103 build of the two-wire error recovery does the same as the IP30 entry (a delay of the larger of two
  small-data constants, `odsy_i2cReset`, then a delay of a third constant, all on the board pointer at port record
  +16); the two constants are loaded into swapped registers and the maximum is taken with the opposite compare and
  conditional move, giving the same result.
- `restoreLines` (`odsy_ctxsw.o`, offset 0x4724, 56 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  The patch 4103 build of the line-segment restore hook computes the fourth argument plus 3 modulo 4 with sign
  correction and passes it as the sixth argument to `odsyRestoreVertex` like the IP30 entry; it keeps the return
  address in a 64-byte frame and calls rather than tail-calling.
- `restoreLineStrip` (`odsy_ctxsw.o`, offset 0x47d8, 56 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  The patch 4103 build of the line-strip restore hook has the same instruction sequence as `restoreLines` in this
  build: the fourth argument plus 3 modulo 4 with sign correction, passed as the sixth argument to
  `odsyRestoreVertex`, in a 64-byte frame.
- `ODSY_SET_GC` (`odsy_tport.o`, offset 0x30, 2440 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`.
  Text-port graphics-state set-up, called with nine arguments: board base, a colour (index or 24-bit RGB), the word for block 0x022,
  a second colour for block 0x023, a mode (0, 1 or 2), the word for block 0x024, an enable flag, a colour-block flag and, on the stack,
  the colour-block value. `odsy_tpinit` calls it with mode 0 and the five constants 1, 3, -1, 3, 3; `odsy_drawbitmap` calls it with the
  enable flag set before drawing and clear afterwards. Everything goes to the command FIFO port at +0x110000, each store followed by a
  `sync`, and the state is kept in the hardware-state object, whose offsets are the shadow offsets of `docs/buzz.md` section 8.
  In order: the 0x024 operand (+11112) is the fifth argument, or 12 when the mode is 2; one full settle group of `BUZZ.h` section 5 (0x10443 with
  250, two 0x10046, 0x10019, 0x10443 with 150, four 0x10046, 0x10443 with 250, two 0x10046) is sent, then block 0x024 and the second half
  of the settle group. The raster-mode word at +132 gets bits 0x18 set when the enable flag is nonzero and bits 0x18 and 0x20000 cleared
  otherwise. Mode 1 (RGB) sets bit 20 of that word and stores the sequencer pair 0x22008000 and 0x23008002 (cached at +9828 and +9832);
  modes 0 and 2 (colour index) set bit 19 and store the pair 0x22008001 and 0x23008003. When the colour-block flag and the enable flag are both set,
  the routine first writes the constant-colour block 0x021 from +188, +192 and +196: 512, then the stack value widened to 12 bits a channel
  (RGB mode), or 512, the stack value shifted left by 12 and 1 (index mode), and sets bit 17 of the raster-mode word. It sends block 0x004
  from +132, the sequencer pair, and the colour: RGB mode sends 0xc580cc08 and the three bytes of the first colour, index mode sends 0xce80cc08, three zeros,
  0xc580c406 and the colour itself. The second colour fills +232 and +236 (RGB: widened per channel; index: shifted left by 12 and 1) and goes out in block
  0x023 with the words at +240 and +244. A six-word entry of 24 bytes, chosen by the mode from the table at +16664 of the second static object, is packed into
  the block 0x022 word kept at +6956 of the hardware-state object (bits 15:13, 19, 12:10, 9:7 and 6:4 from entry words 16, 20, 4, 0
  and 8, bit 29 always set); the entry's word 12 becomes the first of the four operands of block 0x017 at +6948 to +6960. The routine writes block 0x022 from the
  third argument (+200), then sends block 0x017 four times, each time with a settle group in front or behind: the packed word, then the third operand zero,
  then the third operand with bit 23 set, then the packed word again; the third word of block 0x017 therefore carries bit 23 only transiently (`docs/open-questions.md`, drawable registers).
  What the entry words and the enable flag mean on the board stays inferred: what bits 0x18 of the raster word enable is unknown from the binary alone; a read of where `libGLcore` sets the same bits would settle it.
- `odsy_drawbitmap` (`odsy_tport.o`, offset 0xf8c, 1716 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`.

  Text-port glyph draw (arguments: board base, bitmap record with the row pointer at +0, width +8, height +10, x and y origin +12 and +14, x and y advance +16
  and +18, row stride in halfwords +20). It returns when the mute word is set, otherwise counts itself in use, takes the text-port lock and calls
  `ODSY_SET_GC` with the enable flag set. The bitmap is walked in bands of at most 64 rows and cells of at most 16 columns. For each cell it copies
  the cell's rows, bottom row first, as halfwords to the start of the hardware-state object (the 16-word stipple pattern), sends block 0x03f with 6, the pattern as
  blocks 0x04e and 0x04f (16 words each), the primitive begin 0x14400 with 7, four 0x8080c800 vertices (the cell's left and right columns by its bottom and top rows, flipped against the
  port height at +16 of the static port object, with the glyph origin and a one-row offset applied) and 0x14001. A nonzero word at +7036 puts an extra 0x10443 group in front of the
  closing settle group. When the bitmap is done it adds the x and y advance to the cursor in the static object, calls `ODSY_SET_GC` again with the enable flag clear, sends one more
  settle group and releases the lock.
- `generatePageTable` (`odsy_dma.o`, offset 0x558, 880 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Fills the per-chunk transfer table for a host buffer (arguments: region record, buffer address, length, output table, optional address list). With no list
  supplied it makes one (`alenlist_create`; failure logs and returns 12) and fills it from the buffer with `uvaddr_to_alenlist` below 2^40 or
  `kvaddr_to_alenlist` above (failure logs and returns 14). The region record gives the row count (bits 31:16 of +12, 65536 when zero), the row length in bytes
  (low 20 bits of +24) and the gap to skip after each row (+20). It walks the list in pieces of up to 16384 bytes: row bytes are counted into the current entry; when
  a row is complete the gap is taken off the piece and the row counter advances (a count past the row total logs and still returns 0); when a piece runs out the next one is fetched,
  and a gap that spans pieces is taken from the next piece's start. Each entry is two words: the piece's address shifted right 16, then its low 16 bits in the upper half over
  the byte count in the lower half. The last entry is followed by a zeroed entry. A list built here is destroyed on exit; one passed in is not, and its cursor is
  reset to the offset argument first. Returns 0, 12, 14 or the failure of `alenlist_get`.
- `gfP_OdsyClearBuffer` (`odsy_clip.o`, offset 0xc60, 2084 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)`.
  Private request 14, the clear. It zeroes the status word, checks the caller with `RRM_CheckValidFault` and copies in 44 bytes (failure: log, status 14), then takes the busy count at
  +80. The request holds four clear-value words at +0 to +12, one more word at +16, a rectangle at +20 to +32 and band height at +36 and a flag word at +40. When bit 27 of the
  context's block 0x017 third word (+6956) is set, the rectangle is the request's own and the count is 1. Otherwise the rectangles are the context's clip list, a
  count at +40 and four four-entry arrays at +44, +60, +76 and +92, and the request is refused (status 14) when a drawable field at +48 is set and the request's flag word is zero or when the count is not positive. It attaches the process
  to flow control when it is not attached (sets bit 1 of the context word at +4, `gfx_flow_attach_me`, builds the 0x1074 word from the credit target number and clears 0x107c) and detaches again at the end
  when it attached here (stores 1 to 0x107c, reads 0x106c, `gfx_flow_detach_me`). For each clip rectangle it intersects the request rectangle (maximum of the lower bounds, minimum of
  the upper bounds on each axis), skips empty results, offsets by a word read from the drawable, converts the corner coordinates to IEEE floats with a leading-bit search
  (exponent 127 plus the bit position, 23-bit mantissa, sign taken from bit 31 of the negated value), and sends one clear packet per band along the first axis: 0x14400 with 10,
  0x8f80a92f with ten operands (the four clear words, the corner as two floats and the +16 word, the far corner and the +16 word), 0x14001 and a full settle group. The first band
  ends at the largest multiple of 16 not above its start plus the band height when that lies beyond the start (otherwise at the rectangle's end); later bands advance by the band height
  and each starts where the last ended.
- `odsySetProgram` (`odsy_ctxsw.o`, offset 0x492c, 804 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_ctxsw.o)`.
  Selects a transform microcode program on the Origin 350 build; the whole body was read. Argument checks, the three `odsyDownloadUcode` calls (the recorded hardware line from +11064, the second
  segment at hardware line 1848 capped at 199 lines against the length word at +0x8554 from the board record, then the entry line from +11000 and +11004), the entry-number limit of 254 and the signal-9
  failure path are those of the IP30 entry. The sequencer words 0x33008000, 0x29008000, 0x90808800 with two zeros and registers 0x33, 0x29, 0x2a and 0x2c are stored one at a time
  through the pointer at board record +864, each time reloaded, with no `sync`; every failure message names the board by its halfword at +790.
- `odsyRestoreVertex` (`odsy_ctxsw.o`, offset 0x5764, 340 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_ctxsw.o)`.
  Replays one saved vertex group on the Origin 350 build; the whole body was read. Argument n picks the descriptor at saved +140 + 8n for `odsyRestoreVB`, the program slot at +11040 + 4n goes to
  `odsySetProgram` when the count at +10972 is nonzero, and the command word at saved +256 + 4n is sent with the operands counted by its bits 13:10 from +768 + 16n. A zero-count word other than
  0x3000c02e or 0x2f00c02e (bits 22:16 ignored) logs severity 7 with the message and values at the literal-pool offsets 560 and 1280. Every store goes through the pointer at board record +864, loaded
  again before each word, and no `sync` follows.
- `restoreRect` (`odsy_ctxsw.o`, offset 0x5e24, 684 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_ctxsw.o)`.
  The rectangle-vertex replay of the Origin 350 build, compared with the IP30 entry by constants, offsets and calls: the ring at saved +256 and +768, the (n + 2) and (n - 1) or (n + 3) modulo 4 selection and
  the 0x3000c02e or 0x2f00c02e exception are all present with the same values. The only code difference is the store target, the pointer at board record +864 reloaded for each word without a `sync`.
- `gfP_OdsyGLGet` (`odsy_ctxsw.o`, offset 0x6204, 536 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_ctxsw.o)`.
  Private request 7 on the Origin 350 build, compared with the IP30 entry. The selector range 0 to 3, the doubleword (0x4c0 plus selector) over 1, the read-back word at +124 of the context's 128-byte
  slot (slot number from the low 16 bits of the board word at +0x8608), the 1500-tick `odsy_glget_timeout` and the teardown-flag poll carry the same constants. The doubleword goes to the pointer at board record +864 rather than
  base + 0x110000, and no instruction differs in effect.
- `odsyRestoreGfe` (`odsy_ctxsw.o`, offset 0x4208, 1448 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_ctxsw.o)`.
  The geometry-engine replay on the Origin 350 build. Its constant and offset stream is that of the IP30 entry (fixed words 0x14400, 0x14001, 1856, 491, 3905, 17776 and 1200, saved words at +172 and +184, the four packet headers
  at +576 to +624 with payloads at +2048 to +2240, and the 15608 to 15611 markers with sixteen zeros each); the stores differ only in using the pointer at board record +864 reloaded for each word with no `sync`.
- `odsyRestoreXform` (`odsy_ctxsw.o`, offset 0x2854, 2556 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_ctxsw.o)`.
  The transform-state replay on the Origin 350 build, compared with the IP30 entry through its constants and shadow offsets, which match: the register 0x31 table in groups of 16 words, registers 0x29 (410) and 0x32 (24), the data-memory
  entries from +9404, the entry list from +9948 with the 255 limit and its signal-9 path, the register 0x34 table from +6672 and the sequencer registers from +9820. The words go out through the pointer at board record +864, each time reloaded.
- `odsyRestoreVB` (`odsy_ctxsw.o`, offset 0x3250, 4024 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_ctxsw.o)`.
  The vertex-slot replay on the Origin 350 build. The slot offsets (272 to 544), operand offsets (832 to 1920), the walk order and the 0x3000c02e or 0x2f00c02e exception are the same as in the IP30 entry. The selector fields of the descriptor are extracted
  by a different sequence (one right shift by 8 where the IP30 build shifts by 4, 2 and 24), and one extra literal-pool pointer is loaded, but nothing here shows a different slot order. Stores use the pointer at board record +864.
- `odsyRestartContext` (`odsy_ctxsw.o`, offset 0x4c50, 2836 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_ctxsw.o)`.
  The primitive restart on the Origin 350 build. The record word at +128, the loop over bits 7:4 and 23:11, the words 1856, 480, 1857 and 0x658, the doublewords from +176 and +180, the register 0x33, 0x29, 0x2a and 0x2c block and the
  0x278083ff and 0x280080ff words are the same as in the IP30 entry. The store-flush read of the uncached address 0xaff00080 that the IP30 build makes is a doubleword load through a pointer kept in a global here, and the saved partial words are
  read at -8 and -4 from an advanced pointer where the IP30 build reads +0 and +4. The FIFO stores use the pointer at board record +864.
- `odsyRestoreRaster` (`odsy_ctxsw.o`, offset 0xc3c, 7192 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_ctxsw.o)`.
  The raster-state replay on the Origin 350 build, compared with the IP30 entry through its constants, shadow offsets and calls: the block order, the offsets of the five 256-word tables and the 64 level descriptors, the
  mode words at +4464 and +4204 and the closing block 0x258 are the same. The one structural change is the FIFO pointer, reloaded from record +864 for 580 stores, where the IP30 build forms base + 0x110000 once.
- `odsyClipPush` (`odsy_clip.o`, offset 0x7c4, 900 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_clip.o)`.
  The clip push on the Origin 350 build, with the same word order as the IP30 entry (settle sequence, 0x31008140, 0x9000bda2, block 0x041, 0x040 over the board word at +1496, 0x04b with four rectangle doublewords, the sequencer word
  0x31008000 from state word 9888, the bit-27 choice of 0x90008116 or the reset forms, the settle tail and the eight 0x608 to 0x60f doublewords). The constants and offsets match; the stores go through the pointer at record +864 and no `sync` follows.
- `gf_OdsyPcxSwap` (`odsy_ctxsw.o`, offset 0x560, 1756 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_ctxsw.o)`.
  The context switch on the Origin 350 build. The saved-record conversion with `kvtophys`, the 0x4004 and 0x400c address stores, block 0x050, the settle group, the save request doubleword at 0x118000 and the 1500-tick wait on the completion word at +2300 are
  all present with the IP30 entry's constants; the FIFO words go through the pointer at board record +864. Its flow-control handling is the Origin 350 form: where the IP30 build reads 0x106c and takes `gfx_flow_credit_tnum_get`, this build runs
  `splhi`, pins the thread, builds the 0x1074 word from the word at -19376 and calls `gfx_flow_attach_me_finish`, and its detach waits for returned credits first.
- `gfP_OdsySaveHwShadow` (`odsy_ctxsw.o`, offset 0xc0, 1184 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_ctxsw.o)`.
  Private request 12 on the Origin 350 build: the caller check, the timeout, the save request doubleword at 0x118000 and the wait on the completion word are as in the IP30 entry. What changed is the attach and detach around them, which use the
  owner pointer at +72, the word at +104, `gfx_flow_credit_count_get` against `gfx_flow_credit_bias_get`, `odsy_flow_await_returned_credits` and `gfx_flow_attach_me_finish` instead of the IP30 build's 0x106c read and `gfx_flow_credit_tnum_get`.
- `gfP_OdsySetDrawBuffer` (`odsy_drawable.o`, offset 0x53c, 676 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_drawable.o)`.
  Private request 9 on the Origin 350 build. The 4-byte copy-in, the mask store at context +568, `RRM_CheckValidFault` and the `odsyPushBufferSelect` call are the same as in the IP30 entry. A process not yet on flow control is attached
  with the Origin 350 sequence (level raised, thread pinned, flow word from the word at -19376, credits awaited, attach completed) and detached through the word at +0x85c8 and the store of 1 to 0x107c.
- `gfP_OdsyMakeCurrent` (`odsy_drawable.o`, offset 0xab0, 916 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_drawable.o)`.
  Private request 8 on the Origin 350 build. The 80-byte copy-in and copy-out, the class 1 and class 2 unbind and bind calls, the words copied from context +472 and +520 and the `odsyClipPush` call are unchanged from the IP30 entry; only the flow-control attach
  and detach differ, using the pin-the-thread, await-credits and finish-attach calls found in `gf_OdsyResume`.
- `gf_OdsyDestroyDDRN` (`odsy_ddrn.o`, offset 0x438, 752 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_ddrn.o)`.
  Destroys a context record on the Origin 350 build. The node, started-halfword, DMA, memory and slot steps of the IP30 entry are all present. Three things differ: the IP30 build's read of the fixed uncached address 0xaff00080 is a doubleword
  load through a pointer in a global, the board word at +0x8608 is addressed with a separate `li`, and the last-context detach from flow control waits for returned credits (`gfx_flow_credit_count_get` against the bias, `rt_pin_thread`) before storing 1 to 0x107c.
- `gf_OdsySchedSwapBuf` (`odsy_retrace.o`, offset 0x380, 1276 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_retrace.o)`.
  Schedules a buffer swap on the Origin 350 build. The id limit of 32, the wait on the swap condition, the group mask written to 0x10bc and the 40-byte per-id record at +28584 + 40 x id are as in the IP30 entry. The caller's attach uses the Origin 350 flow-control
  sequence, and the closing store-flush read goes through a pointer in a global instead of the uncached address 0xaff00080.
- `gf_OdsyDownload` (`odsy_ucode.o`, offset 0x120, 1092 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_ucode.o)`.
  The client microcode load on the Origin 350 build. The length rules (1 to 4093 lines of 12 bytes, messages at severity 4, status 22 and 14), the pin and map of the user buffer, the line count at +34132 and the copy to +34136 match the IP30 entry. The
  flow-control attach uses the Origin 350 sequence with `splhi` around it and one extra word load at +0 of the record, and the detach stores 1 to 0x107c after waiting for credits; `odsyDownloadUcode` is still called for hardware line 0 and at most 2047 lines.
- `gf_OdsyValidateClip` (`odsy_clip.o`, offset 0x0, 1468 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_clip.o)`.
  The clip validator on the Origin 350 build. Every drawable and record offset of the IP30 entry (+104, +108, +112, +116, +120, +148, +152, +176, the 11104 and 11108 words, the empty (1, 1)-(0, 0) rectangles, the 0xf800 and 0x700 merge) is found with the same
  constants, and `odsyClipMask` and `odsyClipPush` are called as before. The attach and detach use the Origin 350 flow sequence, and the compiler's register allocation differs enough to give a 96-byte stack frame in place of 80.
- `gfP_OdsyClearBuffer` (`odsy_clip.o`, offset 0xccc, 2228 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_clip.o)`.
  Private request 14 on the Origin 350 build. The 44-byte request, the single-rectangle form selected by bit 27 of +6956, the clip-list arrays at +44, +60, +76 and +92, the float conversion (exponent 127 plus bit position) and the
  0x14400 / 10 / 0x8f80a92f / 0x14001 packet with its settle group match the IP30 entry. The FIFO port is read from the board record rather than formed from base + 0x110000; the attach and detach use the pin-the-thread, await-credits and finish-attach calls.
- `gf_OdsyMapGfx` (`odsy_map.o`, offset 0x0, 796 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_map.o)`.
  Maps the board windows into a client on the Origin 350 build. The `v_mapkvsegment` windows (+0x100000, +0x120000 and, for flag bit 5, +0x0, +0x110000, +0x118000, +0x200000, +0x220000 and +0x400000), the flag-bit-0 store and the return rule
  are as in the IP30 entry. The owner record differs: this build clears eight doublewords at +104 in a loop and uses the processor number from the halfword at -15320 (IP30: -15456) shifted right by 6 to pick the slot it fills, and
  the attach is the Origin 350 sequence under `splhi`.
- `odsyInitCfifo` (`odsy_init.o`, offset 0x2bc8, 1092 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_init.o)`.
  Sets up the command FIFO and microcode on the Origin 350 build. The block 0x054, the 2000 us wait, the 0x003d0046 check at 0x201594, the sequencer words 0x2e008380 and 0x2600807f, the write-address word 0x27008000 and the 2048 six-word records are present. The five water-mark and enable
  doublewords come from different literal-pool slots, the store-flush read goes through a pointer, and the detach with the second argument waits for returned credits before storing 1 to 0x107c.
- `gf_OdsyInitialize` (`odsy_init.o`, offset 0x15dc, 1644 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_init.o)`.
  Prepares flow control after attach on the Origin 350 build. The call order of the IP30 entry (`gfx_flow_dealloc`, the FIFO-level wait, 0x1084 pulse, `odsyInitCfifo`, `odsyReset`, the 32 KB slot routines, `odsyInitMM`, `odsyInitDMA`, `odsyInitRetrace`,
  `odsyInitInterrupts`) is kept. This build adds `get_nasid` and `get_chimera_type` (twice each) before a second `gfx_flow_alloc`, stores a doubleword at -19352 and words at -19376 and -19356 of the record, and its three flow-control attach and detach blocks use
  `rt_pin_thread`, `odsy_flow_await_returned_credits` and `gfx_flow_attach_me_finish`. The start-up word is at -19328 rather than -19352.
- `odsyReset` (`odsy_init.o`, offset 0x23e0, 2024 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_init.o)`.
  Brings a board to idle on the Origin 350 build. The sequence of the IP30 entry (`odsyLowLevelReset`, `odsyGatherInfo`, `odsyMMinit`, `odsyInitDBE`, the register zeroing, the SDRAM pulse and `odsy_hpipe_invalidate`) is kept. It first resolves the crossbar vertex with
  `xwidget_info_get`, `xwidget_info_master_get` and `master_node_get`, calls `hub_widget_flags_set` before and after the reset, adds `get_chimera_type` and two `hub_set_piomode` calls around the final mutex, and addresses the board record's identity fields at -19400, -19396, -19394 and -19392.
- `generatePageTable` (`odsy_dma.o`, offset 0x558, 880 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_dma.o)`.
  The chunk-table builder on the Origin 350 build, compared with the full reading of the IP30 entry: the row count (bits 31:16 of +12, 65536 when zero), the 20-bit row length at +24, the gap at +20, the 16384-byte pieces, the 8-byte entries and
  the zeroed terminator are unchanged. The one different constant is the user-address limit, a shift of 12 here (addresses below 2^44 go to `uvaddr_to_alenlist`) where the IP30 build shifts by 8 (2^40).
- `odsyDMAOp` (`odsy_dma.o`, offset 0x1b1c, 2012 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_dma.o)`.
  One host-memory transfer on the Origin 350 build. The page-list and work-list calls, the 0x800 store to 0x101c, the two-doubleword physical-address kick, the 0x14001 end word with the settle group and the 0x10a5a completion tag follow
  the IP30 entry with the same constants. The settle and kick words go through the pointer at record +864, and the closing store-flush read is a doubleword load through a pointer held in a global (three literal-pool loads) instead of from the uncached address 0xaff00080.
- `odsyDMAOps` (`odsy_dma.o`, offset 0xb34, 4072 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_dma.o)`.
  Splits a pixel-transfer request into `odsyDMAOp` calls on the Origin 350 build. The request offsets (+16, +24, +28 to +59), the flag bits, the 0xcf80a92f prologue of the transform path and the 0x10443, 0x10444, 0x10658 and 0x10a5a words are those of the IP30 entry. The board record
  fields it reads are 24 bytes higher (the offset 0xb464 where the IP30 build has 0xb44c, and the start-up word at -19328), and the FIFO words go through the pointer at record +864.
- `odsy_mm_obj_xfr_bs` (`odsy_pmm.o`, offset 0x3e2c, 952 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_pmm.o)`.
  Copies a memory object to or from its backing store on the Origin 350 build. Its constants, offsets and calls are those of the IP30 entry (22 for host-to-board with no store, 12 when `odsy_mm_obj_alloc_bs` fails, `SetupDMAParams`, the flag word at +76,
  the per-row `odsyDMAOp` call with flags 3, the settle groups and block 0x10018); the differences are in instruction scheduling and register use only.
- `odsyInitDBE` (`odsy_init.o`, offset 0x3600, 4248 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_init.o)`.
  Display back-end set-up on the Origin 350 build. The 475 constant, offset and call events match the IP30 entry in kind and value: the clock writes at display addresses 0x2b00 and 0x2700, the 0x2483 and 0x2482 reads, the two-wire port set-up, the part probes
  and their presence words. The start-up word is at -19328 (16 uses), literal-pool displacements differ (928 and 880 where the IP30 build has 1032 and 984) and the semaphore offset reads 0xb488 (0xb470 on IP30).
- `odsy_set_gfx_mfg_nic_name` (`odsy_init.o`, offset 0x5c4, 344 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_init.o)`.
  Copies the manufacturing name out of the identification text on the Origin 350 build. The control flow of the IP30 entry (clear the first byte when there is no vertex handle, `nic_vertex_info_get`, the 1023-character copy, the `strtok_r` split against a key
  and the `strncpy` of the following token) is present. The record fields moved up by 24 bytes: the first-byte clear and terminator at -19248 and -19247 (IP30: -19272, -19271), the name buffer at +0xb4d0 (IP30: +0xb4b8), and the literal-pool strings at 104 to 160 bytes instead of 200 to 256.
- `odsyBlankScreen` (`odsy_brdmgr.o`, offset 0x21f8, 4708 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_brdmgr.o)`.
  Blanks or restores the picture on the Origin 350 build. Modes 0, 1 and 2, the shadows of display registers 0x2482 and 0x2483 (at -19492 and -19496), the read-back of register 0x26c0 and the FIFO levels 10, 11 and 14 are those of the IP30 entry. Two additions are
  visible: after pushing the three words it calls `odsy_monitor_type`, and when that returns 1 it reads the display register at window offset 0x3004, clears bit 0 and pushes it as one more display-FIFO doubleword; and the semaphore offset reads 0xb488 where IP30 has 0xb470.
- `odsyLoadTimingTable` (`odsy_brdmgr.o`, offset 0x3cd0, 8540 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_brdmgr.o)`.
  Programs a video timing on the Origin 350 build. The lock at +0x8520, the clock-chip choice by the variant at +292, the frame-table and line-table blocks of 256 and 2048 halfwords, the generator words from +40 to +200 and the genlock rewrite are those of the IP30 entry.
  Added after the generator is programmed: the monitor-name text at record +0xb4d0 is compared with three literal strings (lengths 10, 8 and 6) with `strncmp`, and a match calls `odsy_setDVIRegs`; three new `cmn_err` paths name the board by its halfword at +790.
- `odsyPushBufferSelect` (`odsy_drawable.o`, offset 0x7e0, 720 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_drawable.o)`.
  Sends the draw-buffer mask on the Origin 350 build. The words stored at -19760 and -23924 to -23912, the settle groups, block 0x024 and the doublewords for registers 0x608 and 0x609 from context +140 and +144 (bit 31 rule) match the IP30 entry. The 4-bit select is formed by
  testing mask bits 1, 2, 4 and 8 separately where the IP30 build tests 1 and 8 and exchanges bit pairs, so the pair exchange of the IP30 entry is not present as such here. Stores use the pointer at record +864.
- `odsy_sboxfi` (`odsy_tport.o`, offset 0xb64, 572 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_tport.o)`.
  Text-port filled box on the Origin 350 build. The corner ordering, the 0x14400 type 7, the four 0x8080c800 vertices at (xmin, H - ymax + 1) to (xmin, H - ymin + 2), 0x14001, the extra 0x10443 group for the word at +7036 and the closing settle group are the same words as the IP30 entry.
  The text-port lock is taken with `mutex_spinlock` and the in-use flag is a plain store of 1 where the IP30 build counts uses with write-buffer flushes; the port is at base + 0x110000 and no `sync` follows.
- `odsy_pnt2i` (`odsy_tport.o`, offset 0xda0, 380 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_tport.o)`.
  Text-port point on the Origin 350 build. It sends 0x14400 with type 0, one 0x8080c800 vertex at x and H - y + 1, 0x14001 and the closing settle group to base + 0x110000, as in the IP30 entry, under the spin lock alone with a stored in-use flag in place of the counter and write-buffer flushes.
- `odsy_drawbitmap` (`odsy_tport.o`, offset 0xf2c, 1696 bytes): **inferred.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_tport.o)`.
  Text-port glyph draw on the Origin 350 build. The band and cell walk (64 rows, 16 columns), the stipple copy, block 0x03f with 6, the 0x04e and 0x04f pattern blocks, the four-vertex quad with the one-row offset and the two `ODSY_SET_GC` calls (enable set, then clear) are as in the IP30
  entry; the words and the cursor update are identical. The lock is a bare `mutex_spinlock` with an in-use flag stored as 1, and no counter, write-buffer flush or `sync` is used.
- `odsyGctxFromRnid` (`odsy.o`, offset 0xfc, 92 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy.o)`.
  Maps a rendering-resource number to its context pointer in patch 4103. A number that is not positive or exceeds the global resource limit logs a severity 4 message through the format at the literal-pool offset 56 and yields null; a valid number is multiplied by 176 (built from shifts and subtractions) to index the global resource array, and the doubleword at +112 of that element is returned. The checks and the stride match the IP30 entry; only the literal-pool displacement of the message differs.
- `OdsyFree32kSlot` (`odsy_adt.o`, offset 0xad8, 240 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Frees one 32 KB slot in patch 4103. The slot number is shifted right by 6 for the doubleword index and must be below 512, otherwise a severity 4 message is logged; a null bitmap logs a second message. When the bitmap's lock pointer at +0 is set the routine takes it with `psema` at priority 25, clears bit (slot mod 64) of the doubleword at +16 + 8 x index using a 64-bit variable shift, pulls the first-free index at +8 down to this index when it was higher, and releases the lock with `vsema`. The IP30 entry has the same steps.
- `odsyHashLookup` (`odsy_adt.o`, offset 0xc64, 76 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Bucket search in patch 4103: the sentinel is at table +8 plus 24 times the bucket number, nodes are followed through the link at +0 until the sentinel recurs, and the first node whose 32-bit key at +16 equals the third argument is returned (zero if none). The code is the IP30 routine with different register assignment.
- `restoreLineLoop` (`odsy_ctxsw.o`, offset 0x475c, 124 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Line-loop restore hook in patch 4103. It saves its arguments in a 96-byte frame, calls `odsyRestoreVertex` with slot 0, and for a count of 2 or more calls it again with the slot given by the fourth argument plus 1 taken modulo 3 (an explicit divide with a divide-by-zero trap) plus 1.
- `restoreTriFan` (`odsy_ctxsw.o`, offset 0x49b8, 124 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Triangle-fan restore hook in patch 4103, with the same 96-byte frame and instruction sequence as `restoreLineLoop` in this build: vertex slot 0 first, then for a count of 2 or more slot ((fourth argument + 1) mod 3) + 1, the remainder coming from a signed divide.
- `odsy_i2cPLLRegWrite` (`odsy_ddc.o`, offset 0x4c, 140 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Clock-part register write in patch 4103. It begins a transfer to the port's device byte (at record +32) shifted left by one, then sends the register number and the value with `odsy_i2c_sendbyte`, flagging the last as final; any step that fails calls `odsy_i2cReset` and the routine returns 1, otherwise 0. The sequence is the IP30 one.
- `odsy_i2cPLLRegRead` (`odsy_ddc.o`, offset 0xd8, 176 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Clock-part register read in patch 4103. A write start addressed to the device byte at +32 shifted left by one, the register number, a second start with the low address bit set and one `odsy_i2c_long_recvbyte` into the buffer argument; a failure of any of the four steps resets the port with `odsy_i2cReset` and returns 1, success returns 0.
- `odsy_i2cDDCRegRead` (`odsy_ddc.o`, offset 0x188, 144 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Display-data register read in patch 4103. Unlike the clock-part read it opens the transfer directly in read mode (device byte shifted left, low bit set), sends the register number and receives one byte; one reset-and-return-1 path covers all three steps.
- `CoresidRangeFinder` (`odsy_pmm.o`, offset 0x18f4, 72 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Equality test on co-residency ranges in patch 4103: the second argument's word at +8 is compared with the first word of the object behind +8 of the first argument, then its words at +0 and +4 with the first argument's +4 and +0; it returns 0 only when all three match, else 1.
- `CoresidSubRangeFinder` (`odsy_pmm.o`, offset 0x193c, 80 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Overlap test on co-residency ranges in patch 4103: the owner words must match as in `CoresidRangeFinder`, then the routine returns 1 when the first range ends below the second's start or the second ends below the first's start, and 0 when the ranges meet or overlap.
- `odsy_mm_mkres_timeout` (`odsy_pmm.o`, offset 0x14cc, 56 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Resource-creation timeout handler in patch 4103: a severity 1 log message followed by `odsy_teardown` on the board argument, with no other effect.
- `restorePolygon` (`odsy_ctxsw.o`, offset 0x4bdc, 220 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Polygon restore hook in patch 4103. It keeps all five arguments in saved registers (128-byte frame), calls `odsyRestoreVertex` with slot 0 unconditionally, computes the next slot as ((fourth argument - count + 3) mod 3) + 1 with a signed divide, and then calls it count - 1 more times, each time passing the current slot and advancing it to (slot mod 3) + 1. A count of 1 or less makes only the first call.
- `restoreTriStrip` (`odsy_ctxsw.o`, offset 0x48e4, 212 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Triangle-strip restore hook in patch 4103. The first slot is (fourth argument - count + 4) taken modulo 4 by masking the magnitude with 3 and restoring the sign, which is the truncating remainder; `odsyRestoreVertex` is then called count times with that slot, and after every call the slot becomes (slot + 1) reduced the same way. A count that is not positive makes no call. The frame is 112 bytes.
- `restoreTriangles` (`odsy_ctxsw.o`, offset 0x4810, 212 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Independent-triangle restore hook in patch 4103; its 55 instructions are the same as `restoreTriStrip` in this build, so it replays count vertices from the same starting slot and steps the slot with the same masked-remainder arithmetic.
- `restoreQuads` (`odsy_ctxsw.o`, offset 0x4a34, 212 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Independent-quad restore hook in patch 4103, with an instruction sequence matching `restoreTriStrip` apart from register naming: a modulo-4 starting slot, then one `odsyRestoreVertex` call per vertex of the count and a modulo-4 increment between calls.
- `restoreQuadStrip` (`odsy_ctxsw.o`, offset 0x4b08, 212 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Quad-strip restore hook in patch 4103. The 55-instruction body, 112-byte frame and the (fourth argument - count + 4) mod 4 starting slot are those of the other strip and list hooks of this build, so it too makes count calls with an incrementing modulo-4 slot.
- `odsy_poll_dfifo_level` (`odsy_flow.o`, offset 0x0, 156 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)`.
  Display-FIFO level wait in patch 4103. It reads the board word at +4204 (register 0x106c), masks the low 7 bits and compares them with the level argument; while the fill is higher it waits 5 us with `us_delay` and polls again, at most 10000 times. A reached level returns 0, and an exhausted poll logs a severity 4 message and returns 1. The loop is that of the IP30 entry with a 64-byte frame and the fill test hoisted into a saved register.
- `odsy_DmaRegion_Pin` (`odsy_dma.o`, offset 0x1e8, 104 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Pins a DMA region's buffer in patch 4103 when it is not pinned yet (the flag at +52 is zero). It locks the user pages with `useracc` for the address at +32 and the length at +40, with access mode 272 and no extra flag; a failure returns its code, while success sets the flag to 1, calls `odsy_DmaRegion_BuildXlatTbl` to rebuild the page list and returns 0. An already pinned region returns 0 at once.
- `odsy_mm_decommit` (`odsy_pmm.o`, offset 0x51b8, 104 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Takes a resource out of the committed state in patch 4103. A nonzero extent pointer at +128 is released through `mm_release_extent` with a zero flag; the routine then stores -1 at +56, stores -1 into the per-resource table entry indexed by the halfword at +0 (table pointer at +152 of the record behind +8), clears bit 3 of the flag word at +64 and returns 0.
- `odsyUnpinAndUnmapASRegions` (`odsy_map.o`, offset 0x7e0, 104 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Releases the two address-space regions of a request in patch 4103. The region record at +40 and the one at +56 are each passed to `odsyUnmapPages` when their pointer words are nonzero; the return value is the OR of the two results, zero when neither region was mapped.
- `mm_okay_to_swap_in` (`odsy_pmm.o`, offset 0x3b84, 364 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Overlap check that exists only in the patch 4103 memory manager. Given a resource record, it takes its start (+56) and its end (start plus the length at +60), then walks every share group of the memory-manager set at +1488 (through `OdsyInitCSetCursor` and `OdsyNextCSetElem`) and, inside each, the object tables of up to 16 slots at +16. Any other object whose flag word at +64 has bit 0 set (committed) and whose range overlaps this one makes the routine log a severity 7 message with both objects' ids and sizes and return 0; finding none returns 1.
- `odsy_mm_B_warn` (`odsy_pmm.o`, offset 0x3f30, 64 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Memory-limit warning in patch 4103. When the word at +1724 of the memory-manager record is clear it logs one severity 4 message and sets that word to 1, so the message appears once until `odsy_mm_B_okay` clears the word; the 6.5.30m build has two such routines, `odsy_mm_B_warn1` and `odsy_mm_B_warn2`, which this build folds into one flag.
- `odsy_mm_jettison_freerun_backing_store` (`odsy_pmm.o`, offset 0x3df4, 316 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Frees every free-running backing store in patch 4103; it takes no size argument, unlike the 6.5.30m routine that stops when a request fits. It walks the share groups of the set at +1488 and the 16-slot object tables behind each (group +64), and for each committed object (bit 0 of +64) that has a store at +80 it waits for outstanding DMA with `odsyDMAWait` in mode 1 on the op at +96, calls `kmem_free` on the store, takes the object's size at +88 off the total at +1712, and zeroes the size and pointer.
- `odsy_mm_obj_xfr_backing_store` (`odsy_pmm.o`, offset 0x3f78, 1336 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Copies a memory object to or from host memory in patch 4103 (arguments: object, queue selector, nonzero for board to host). The store size is the row length at +72 times the row count at +40. With no store at +80 a host-to-board request returns 22; otherwise the routine adds the size to the total at +1712 against the limit at +1696, on overflow clears the warning flag at +1720 and runs `odsy_mm_jettison_freerun_backing_store` once, and on a second failure calls `odsy_mm_B_warn` and returns 12. It allocates the store with `kmem_alloc` (flag 8192), clears the warning with `odsy_mm_B_okay`, builds the header with `SetupDMAParams`, sends settle groups and block 0x10658, and for each row calls `odsyDMAOp` with flags 3, the board address from the pixel size, row count and the word at +56, and the store advanced by the row length; a failing op logs a severity 4 message and returns 22. A board-to-host copy sets +76 to 1; a host-to-board copy counts +104 up, then frees the store (after `odsyDMAWait`) when the warning flag is clear, lowering the total and setting the flag again once the total is at or under the threshold at +1704, and clears +76. The 6.5.30m build has separate `odsy_mm_obj_alloc_bs` and `odsy_mm_obj_free_bs` routines; this build allocates and frees inline.
- `odsy_mm_sg_insert_texture_group_into_list` (`odsy_pmm.o`, offset 0x4a08, 192 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Inserts a texture group into the single reservation list of its share group in patch 4103 (head at +144 of the share group, key at +208, links at +224 toward smaller keys and +232 toward larger). An empty list makes the group the head; a key no smaller than the head becomes the new head; otherwise the list is walked from the head while the new key is smaller than the node's, and the group is linked in front of the first node that is not larger. The 6.5.30m build keeps separate image and detail lists with an insertion-point cache, which this build lacks.
- `odsy_mm_sg_remove_texture_group_from_list` (`odsy_pmm.o`, offset 0x49a8, 96 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Unlinks a texture group from its share group's single list in patch 4103: the next and previous links at +224 and +232 are joined around the group, the share group's head at +144 follows when the removed group was first (taking the next group, or null when it was the only one), and the group's own links are left as they were.
- `gfP_OdsyBRDMGRenableVTG` (`odsy_brdmgr.o`, offset 0x4f84, 1028 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Starts the video timing generator in patch 4103; it takes no request structure and has no bit-flipping modes, where the 6.5.30m `gfP_OdsyBRDMGRVTGcontrol` copies in a flags and value pair. Through the board record (behind +32 of the first argument; its base pointer is at +736, the display semaphore at +10256 with a spin lock at +10272 and a pending cursor doubleword at +10280, the start-up word at +22304) it takes the semaphore unless the start-up word is set, waits for display-FIFO level 14 and pushes two doublewords to board +0x400000: the control word kept at +22160 with bit 0 cleared, then the word at +22164 with bit 17 set. A failed wait stores 5 in the status word and returns 5. The release replays a pending cursor command in the same way as `odsy_i2c_start`; success stores 0 and returns 0.
- `MapKernelRegionIntoUserSpace` (`odsy_pmm.o`, offset 0x1898, 92 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Maps a kernel region into a process in patch 4103. It builds a zeroed 32-byte request on the stack with 1 at +16, the second argument at +24 and the region's doubleword at +24 stored at +8, then calls `odsyMapPages` with six arguments: a zero, the address of the region's +16, its pointer at +8, its word at +28, the request and a 1, and returns that result. The IP30 entry passes four.
- `NewChunkNode` (`odsy_adt.o`, offset 0x35c, 68 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Allocates a 32-byte chunk node in patch 4103 with `kmem_alloc` and flag 0, clears it with `bzero` (the IP30 build stores zeros inline) and returns it, or 0 when the allocation fails.
- `odsy_DCDResetDone` (`odsy_init.o`, offset 0x2380, 120 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Waits for the display-controller reset to finish in patch 4103. It stores 31 at port record +32, then up to 5000 times reads register 3 of the display-data device with `odsy_i2cDDCRegRead` and tests bit 1 of the byte, waiting 500 us between reads with `odsy_usdelay` (the IP30 build waits 1000 us). It returns 1 once the bit is set and 0 when the polls are used up.
- `odsy_mm_cores_exists` (`odsy_pmm.o`, offset 0x198c, 124 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Co-residency lookup in patch 4103. The set identifier is the word at +160 of the second argument, looked up in the container at +160 of the record behind the first argument's +8 with `OdsyLookupCSetId` (none: return 0); the key holds the first argument's halfword at +0 twice and the word behind the record's +0, and `OdsyFindMatchingCSetElem` is called with the overlap predicate `CoresidSubRangeFinder`; a match returns 1. The IP30 entry keys on the word at +240 of the group instead.
- `odsy_i2cValidEdid` (`odsy_ddc.o`, offset 0x1ae8, 156 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  EDID header test in patch 4103: byte 0 must be 0, bytes 1 to 6 must each be 255 and byte 7 must be 0, checked one byte at a time with a separate early exit for each, after which `odsy_EdidCksum` decides: a zero checksum returns 1, anything else 0. The sequence matches the IP30 entry.
- `odsyPinAndMapASRegions` (`odsy_map.o`, offset 0x75c, 132 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Maps the two address-space windows of a board in patch 4103. It zeroes the handles at +40 and +56, maps 64 KB from the pointer at +8 of the structure behind +8 with `odsyMapPages` (user address at +32, handle at +40), and when that returns 0 maps 0xc000 bytes from the structure's pointer at +16 (address at +48, handle at +56). Each call also passes a literal-pool descriptor and the constant 1. The first failure, otherwise the second result, is returned.
- `odsyUnpinAndUnmapSGRegions` (`odsy_map.o`, offset 0x6bc, 160 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Releases the surface-group mappings in patch 4103. The container is at +104 of the board record (+120 on IP30); each element is unmapped with `odsyUnmapPages` when its buffer pointer at +8 and its field at +16 are both set, then the 16384-byte buffer and the 32-byte element are freed with `kmem_free`, and `OdsyDestroyCSet` closes the container with no callback.
- `ODSY_SET_GC` (`odsy_tport.o`, offset 0x30, 1664 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`.
  Text-port graphics-state set-up in patch 4103, read through all of its branches. The state object comes from the first doubleword of the member's `.sdata` and the mode table from the first doubleword of its `.srdata`; every state offset it uses is the one the IP30 entry gives (+132 raster-mode word, +188 to +196 and +232 to +244 colour words, +6948 to +6960 the block 0x017 operands, +9828 and +9832 the cached sequencer pair, +11112 the block 0x024 operand, 16664 plus 24 times the mode in the table). Store order is the same too: the fifth argument (or 12 for mode 2) goes to +11112 and one full settle group runs, then block 0x024 from +11112 and the second half of the group; bits 0x18 of +132 are set for a nonzero enable flag, and cleared together with bit 17 (0x20000) otherwise; mode 1 sets bit 20 and the pair 0x22008000 and 0x23008002, modes 0 and 2 set bit 19 and 0x22008001 and 0x23008003; the optional constant-colour block 0x021 takes 512 plus the stack value widened to 12 bits a channel (RGB) or 512, the value shifted left by 12 and 1 (index); the colour goes out after block 0x004 as 0xc580cc08 and three bytes (RGB) or 0xce80cc08, three zeros, 0xc580c406 and the colour word (index); and the packed block 0x022 word and the four block 0x017 sends, with bit 23 of the third operand set only in the third send, close it. The routine is 1664 bytes here against 2440 in the 6.5.30m build with the same sends in the same order.
- `odsy_color` (`odsy_tport.o`, offset 0x6b0, 188 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`.
  Text-port colour change in patch 4103. The first instructions test the mute word (`.sbss` offset 0) and return when it is nonzero; otherwise the routine adds one to the in-use count (`.sbss` offset 4), flushes the write buffer, locks the port spin lock (`.sbss` offset 8) and pushes eight words through the FIFO port at board base plus 0x110000: 0x22008001, 0x23008003, 0xce80cc08, three zeros, 0xc580c406 and the colour argument. It then stores the colour at +8 of the static port object, lowers the in-use count and unlocks. The eight words and their order are those of the IP30 routine, which is 28 bytes longer.
- `odsy_mapcolor` (`odsy_tport.o`, offset 0x76c, 252 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`.
  Text-port colour-map write in patch 4103. Under the same mute, in-use and lock handling as `odsy_color` it calls `odsy_poll_dfifo_level` with level 0, then forms a 10-bit field from each of the last three arguments as (value << 2) | (value >> 6): the fifth argument lands at bit 0, the fourth at bit 10 and the third at bit 20. The low word is those fields ANDed with a 64-bit read-only constant that the linker fills in, and the high word is 0x30000001 | (index << 14). One doubleword store sends the pair to the board base plus 0x400000. The member holds only the unrelocated placeholder for the mask, so the mask value is not read here; the IP30 entry does not mention a mask.
- `odsy_sboxfi` (`odsy_tport.o`, offset 0x868, 436 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`.
  Text-port filled box in patch 4103. After the mute test, in-use count and lock it orders the corners (x1 and x2 swapped when x2 is smaller; y1 and y2 swapped when y1 is the smaller, so the larger y comes first), then sends 0x14400, type 7, four 0x8080c800 vertices at (xmin, H - ymax + 1), (xmax + 1, H - ymax + 1), (xmax + 1, H - ymin + 2) and (xmin, H - ymin + 2) with H the word at +16 of the static port object, and 0x14001. The closing settle group is always the full one (0x10443 with 250, two 0x10046, 0x10019, 0x10443 with 150, four 0x10046, 0x10443 with 250, two 0x10046); this body never reads a word at +7036 of the state object to put an extra group in front, which the 6.5.30m routine does.
- `odsy_pnt2i` (`odsy_tport.o`, offset 0xa1c, 280 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`.
  Text-port point in patch 4103: mute test, in-use count and lock as in the other text-port routines, then 0x14400 with type 0, one 0x8080c800 vertex with x and H - y + 1 (H is the word at +16 of the static port object), 0x14001, the single full settle group and the release. As in `odsy_sboxfi` there is no conditional extra group.
- `odsy_tpinit` (`odsy_tport.o`, offset 0x1034, 396 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`.
  Text-port start-up in patch 4103, and a simpler routine than the 6.5.30m one. It finds the board with `odsyPipeNrFromBase`, takes the board record as the pipe number times 22312 from `OdsyBoards`, sets the mute word and the in-use count and waits, 5 us a step, for bits 15:7 of the register word at +4204 (through the register base at +736) to read zero; the wait has no limit. It then calls `odsyReset`, writes 0, 1, 0 to +4228, 0 to +4212 and 1 to +4220, and calls `odsyInitCfifo` twice with a zero second argument, repeating from `odsyReset` for as long as the second call fails; there is no six-pass limit and no log message. One `odsyInitDBE` call with `default_timing` follows (the 6.5.30m build calls it twice with two stored structures). It then stores the board's width and height halfwords (+232, +234) in the static port object, copies the board words at +1232 into entry words 12 of mode rows 0 and 1 and +1368 into row 2 of the stored state, clears 11128 bytes of the state object, stores the board word at +1208 divided by 16 at state +6952, writes 4165 stored words to the FIFO port and calls `ODSY_SET_GC` with colour 1, word 3, second colour -1, mode 0, 3, both flags clear and a zero stack value, then clears the mute word.
- `odsy_drawbitmap` (`odsy_tport.o`, offset 0xb44, 1236 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`.
  Text-port glyph draw in patch 4103 with the quad path. After the mute test it locks the port and calls `ODSY_SET_GC` with the enable flag set, the colour at +8 of the static port object and a stack value of 1. The glyph is cut into bands of at most 64 rows, and each band into cells of at most 16 columns, one halfword of the bitmap per cell. For a cell the rows are copied with the band's first row going to the last halfword slot of the state object's pattern area, 6 is stored at state +128 and block 0x03f sent from it, the 32 pattern halfwords go out as block 0x04e (words 0 to 15) then 0x04f (words 16 to 31), and then 0x14400 with type 7, four 0x8080c800 vertices from the cell's left and right columns (cursor x less glyph origin x, plus the cell width) and the band's top and bottom rows flipped against H at +16 of the static object, and 0x14001, followed unconditionally by the full settle group. A band advances the row by its length and the bitmap pointer by 64 rows of the stride at +20. At the end the x and y advances at +16 and +18 are added to the cursor words at +0 and +4 of the static object, `ODSY_SET_GC` runs with the enable flag clear, one more settle group is sent and the lock is released. The bitmap's height of zero or less skips the loops but still runs the closing steps.
- `odsyHashDealloc` (`odsy_adt.o`, offset 0xc38, 44 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Frees a hash table in patch 4103. The bucket count is the word at +0 of the table; the routine passes the table and 24 times that count plus 8 to `kmem_free` and nothing else. The 6.5.30m routine first fills the memory with a poison byte; this one does not, which is why it is 44 bytes against 112.
- `odsyHashAlloc` (`odsy_adt.o`, offset 0xbc8, 112 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Allocates a hash table of N buckets in patch 4103 with one `kmem_alloc` of 24 N + 8 bytes (flag 0). A null result returns 0. Otherwise the word at +0 gets N (this store sits in the delay slot of the test for N not above zero, so it happens even then) and, for a positive N, each 24-byte bucket's sentinel at +8 gets both of its links pointed at itself. For N of zero or less the routine returns the allocated block with only the header written, where the IP30 entry returns 0.
- `OdsyDeallocCSetId` (`odsy_adt.o`, offset 0x7cc, 164 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Releases an id of a chunked set in patch 4103 (shift at +32, ring head at +0, element count at +20). It walks forward along the +16 links from the head, as many steps as the id shifted right by the shift (there is no shorter-way-round choice), stores 0 in the slot picked by the low bits, and counts the node's total (+8) and the set's down. A node that reaches zero has its slot array freed with `kmem_free` (8 bytes times 2 to the shift) and its array pointer zeroed. The array is not poisoned, no hint (the set has no hint word) is moved and the node itself stays on the ring.
- `OdsyNextCSetElem` (`odsy_adt.o`, offset 0x144, 240 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Iterator for the chunked sets of patch 4103, which keep the current node at +8, the slot index at +24, the end flag at +28, the element count at +20 and the shift at +32. A null current node, a set end flag already set or a zero element count clears the flag and returns 0. Otherwise it reduces the saved index modulo 2 to the shift, skips nodes whose count (+8) is zero by following +16, scans the node's slots for a nonzero entry, stores index plus one back, and on stepping past the last slot resets the index, moves to the next node and sets the end flag when that node is the head at +0. A scan that falls off a node moves to its successor; reaching the head with no hit returns the last value seen, which is 0. The offsets of the index and flag are 8 below those of the 6.5.30m routine because this set has no hint word.
- `OdsyLookupCSetId` (`odsy_adt.o`, offset 0x870, 248 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Finds the element of an id in a patch 4103 chunked set. A shift of 0 gives 0. The node number is the id shifted right by the shift; it is not compared with the set's node count. Starting at the head (+0) the routine follows +16 links that many times with a loop unrolled four ways, returning 0 on a null link, and then returns the slot at the id's low bits from the node's array (+0), or 0 when the array is missing. The 6.5.30m routine checks the node number against the count first and walks the shorter way round.
- `OdsyDestroyCSet` (`odsy_adt.o`, offset 0x28, 264 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Frees every node of a patch 4103 chunked set, the number of nodes being the word at +16. For each node it calls the optional callback on every nonzero slot of the array at node +0, frees the array (8 bytes times 2 to the shift at +32) with `kmem_free` and frees the 32-byte node, then calls `OdsyInitCSet` with shift 0. No byte pattern is written over the freed arrays or nodes, unlike the 6.5.30m routine.
- `OdsyFindMatchingCSetElem` (`odsy_adt.o`, offset 0x234, 296 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Predicate search over a patch 4103 chunked set. A shift of 0 returns 0 at once; otherwise it visits the nodes in order (count at +16, links at +16), skips a node whose total at +8 is zero, and offers each nonzero slot among the 2-to-the-shift slots of the array to the predicate (third argument) together with the key (second argument). The first element for which the predicate returns 0 is the result; no match returns 0. Its logic is the 6.5.30m search with the set fields 8 bytes lower.
- `OdsyAlloc32kSlot` (`odsy_adt.o`, offset 0x9a0, 312 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Takes the lowest free slot of the 512-doubleword bitmap in patch 4103: lock at +0 (`psema` at priority 25 when there is one), first-candidate index at +8, bitmap from +16. An index outside 0 to 511 releases the lock with `vsema` and returns -1. It tests bit 0 and then shifts a probe bit up until one is clear (at most 64), sets that bit and returns 64 times the index plus the bit number. When the word becomes all ones the index is stepped forward (stored each step) over every doubleword equal to -1 until 512. The routine is 312 bytes against 348 in the 6.5.30m build, with the same lock, search and advance steps.
- `OdsyAllocSpecificCSetId` (`odsy_adt.o`, offset 0x3a0, 460 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Puts an element at a chosen id in a patch 4103 chunked set (head +0, node count +16, element count +20, shift +32; a node holds its array at +0, its total at +8 and its links at +16 and +24). A shift of 0 returns -1. If the node number (id shifted right by the shift) is not below the node count the routine calls `NewChunkNode` with the shift for each missing node, links each in before the head (or as a one-node ring when the set is empty) with a zero total and counts the set's nodes up; a null node gives -1. It then walks forward along +16 to the node, allocates an array of 8 times 2 to the shift bytes when the node's total is zero (null gives -1) and clears it with `bzero`, stores the element at the id's low bits, adds one to the node's total and the set's element count, and returns the id. The node carries no number and the set no hint.
- `OdsyAllocCSetId` (`odsy_adt.o`, offset 0x56c, 608 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Gives an element a free id in a patch 4103 chunked set. A shift of 0 returns -1. It scans every node from the head with no capacity test or starting hint: a full node (total equal to 2 to the shift) is skipped, an empty node gets a zeroed array first (allocation failure returns -1), and the first null slot takes the element; the id is the node's position times 2 to the shift plus the slot, and the node's total and the set's element count go up. With no free slot it calls `NewChunkNode`, allocates and clears an array (failure frees the node's 32 bytes and returns -1), sets the node's total to 1, counts the node and the element up, links the node in before the head and stores the element in slot 0; the id returned in that case is the element count before the increment.
