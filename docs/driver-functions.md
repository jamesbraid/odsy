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
  element and the caller's key. It returns the first element for which the predicate returns non-zero, or
  0 when none matches.
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
