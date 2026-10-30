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
