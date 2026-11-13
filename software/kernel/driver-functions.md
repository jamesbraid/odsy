# Kernel driver functions, one entry each

Release IRIX 6.5.30m, `odyssey.a` members of the IP30 kernel build. Each entry starts with the function, then its member, offset in `.text` and size in bytes. Labels are **established** (read from the disassembly in `software/kernel/ip30/disasm/`) or **inferred**. The IP35 and patch builds carry byte-identical code for some of these and different code for others; an entry speaks for the IP30 media build only. Everything specific to IP35 rests on the IP35 binary. Register names are in `board/board-registers.md`.

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
  Resets the board's link. On a host whose chip-id register shows a newer part it writes 0x200 to 0x100c
  and waits one second, leaving the register at 0x200 (the zeros go to the driver's shadow word); on the older part it writes the six bits that sum to 0x16d, waits 200 ms,
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
  Handles the DMA interrupt, source 2. The 56-byte routine calls `odsyDMAIrptWakeup` with the board,
  which wakes the thread waiting on a transfer, then adds one to the word at +16 of the `gfxinfo` entry
  for the processor (the halfword at 0xffffffffffffc3a0); it reads no board register itself.
- `odsySsyncInterrupt` (`odsy_intr.o`, offset 0x578, 72 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)`.
  Handles the sync interrupt, source 4. The 72-byte routine calls `odsySwap_softsync_intr` and then
  `odsyDMAWakeup`, each with the board, and adds one to the word at +16 of the `gfxinfo` entry for the
  processor (the halfword at 0xffffffffffffc3a0); it touches no board register itself.
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
- `odsy_monitor_type` (`odsy_ddc.o`, offset 0x1d60, 36 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`; the IP35 build (`usr/cpu/sysgen/IP35boot/odyssey.a(odsy_ddc.o)`, same offset and size) has the same nine instructions.
  Classifies the attached monitor from the display-identification copy in the board record (argument: board record; result: -1, 0 or 1); the whole body was read. It loads the halfword at record +308 and returns -1 when it is zero; otherwise it tests bit 7 of the byte at +330 and returns 1 when the bit is set and 0 when it is clear. The record slot at +308 is a halfword valid flag followed by the 128-byte identification block that the display-channel read (`odsy_i2cProbe2b`, request command 8) stores there, so +330 is byte 20 of that block. Inferred from the public VESA E-EDID layout, not from the routine: byte 20 is the video-input definition and its bit 7 marks a digital input, which makes a result of 1 mean a digital monitor. `odsyBlankScreen` branches on a result of 1.
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
- `odsy_hpipe_sema_init` (`odsy_hpipe.o`, offset 0x0, 32 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)`.
  Creates the display-pipe state lock on the IP35 build; the whole 32-byte body is a frame, one call and a return. It passes the address of the global lock word, which a gp-relative relocation names `odsy_hpipe_state_lock`, and the small-data string "HpipeStateLock" to `spinlock_init` and returns that call's result. The listing matches the IP30 routine.
- `odsy_hpipe_invalidate` (`odsy_hpipe.o`, offset 0x20, 68 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`.
  Forgets the cached display-pipe state of a board. It zeroes the two doublewords at board record +46216
  and +46224, then takes `odsy_hpipe_state_lock` with `mutex_spinlock`, clears the first word of the
  structure at `OdsyHpipeState` when that pointer is set, and releases the lock with `mutex_spinunlock`.
- `odsy_usb_comp_update_tiles` (`builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`, 0x7f4): **established.**
  The member `odsy_hpipe.o` occupies 40 bytes. It loads the small-data base pointer at `ld` 0x7f4 and adds 0xd0 to it in the `daddiu` delay slot at 0x808, then calls the imported `cmn_err` at 0x804 with severity 4 and returns -1 from `addiu` at 0x810. It reads no arguments and writes no board register; the string is the missing tile-update diagnostic. The caller passes a unit, eight tile words and byte count 32. The same body is exported as `usb_comp_update_tiles`.
- `usb_comp_update_tiles` (`builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`, 0x7f4): **established.**
  This alias names the same 40-byte body as `odsy_usb_comp_update_tiles`: the `cmn_err` call is relocated at 0x804, its message pointer is formed at 0x808, and the return value is -1 from 0x810. It therefore has no hardware effect in this kernel.
- `odsy_usb_comp_readwrite_register` (`builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`, 0x81c): **established.**
  The member `odsy_hpipe.o` occupies 40 bytes. It loads the small-data base pointer at `ld` 0x81c and adds 0xf8 to it in the `daddiu` delay slot at 0x830, calls the imported `cmn_err` at 0x82c with severity 4, and returns -1 from `addiu` at 0x838. It reads no arguments and writes no register; the caller supplies a compositor unit, register 1, count 1, flag 0 and a stack word.
- `usb_comp_readwrite_register` (`builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`, 0x81c): **established.**
  This alias names the same 40-byte body as `odsy_usb_comp_readwrite_register`: the `cmn_err` call is relocated at 0x82c, its message pointer is formed at 0x830, and the return value is -1 from 0x838. It therefore has no hardware effect in this kernel.
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
  Cleans up a diagnostics client. When the owner doubleword at board record +45928 equals its second argument it
  calls `gfP_OdsyDIAGfreeScanbuf` for that client, and when the doubleword at +45952 equals it, it calls
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
  It then zeroes +24 and +16. If the doubleword at +40 is zero it calls `sv_broadcast` and `sv_destroy` on the
  variable at +32; otherwise it broadcasts only when the doubleword at +64 is non-zero.
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
  0xb4e0 (46304) zeroed bytes with `kmem_zalloc`, calling `assfail` on line 238 (with the file-name string it passes) if that
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
  doubleword at +200 is set; for the shadow mapping at +176 it calls `unmaputokv` and `unuseracc` (11128 bytes,
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
  `mutex_lock`. When the owner doubleword at +45928 is the calling client it calls `odsyUnmapPages` on the
  handle at +0xb358, frees the buffer pointed to at +45896 with the size at +45920 through `kmem_free`,
  and zeroes the owner, the size and the two pointers. It always unlocks, stores 0 in the result word and
  returns 0.
- `gfP_OdsyDIAGreleaseShadowPtrs` (`odsy_diag.o`, offset 0x590, 228 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`.
  Releases the diagnostic shadow-pointer mappings of a client. It takes the mutex at board record +0xb370
  with `mutex_lock`. If the owner doubleword at +45952 is not the caller it unlocks and stores 1 in the result
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
  0xb4f8 (46328) zeroed bytes with `kmem_zalloc`, calling `assfail` on line 238 (with the file-name string it passes) if that
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
  doubleword at +200 is set; for the shadow mapping at +176 it calls `unmaputokv` and `unuseracc` (11128 bytes,
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
  Opens a transfer on a two-wire port and sends the address byte (arguments: port record, address byte, acknowledge flag). The decompiled listing was followed to every return and the assembly consulted at each branch; the kernel build inlines each semaphore, FIFO-wait and cursor-replay macro, which is why the body is 4912 bytes. Each control-register write of the port is a 64-bit command pushed into the display FIFO at board +0x400000: the high word is 0x30000001 ORed with the register's display address shifted left 14 (the halfword at port record +24), the low word is the shadow control word that the pointer at record +0 names.
  The sequence is: wait for FIFO level 14 and push the shadow with bit 14 (force idle) set; wait 20 microseconds with `odsy_usdelay`; wait for level 15, clear bits 14 and 13 and push again; wait another 20 microseconds; wait for level 13 and read both the control and the status register back through the window at board +0x220000 (display address times 8) into their shadows. It then loads the address byte into bits 7:0, sets bits 8, 9 and 12 (start, transfer, send), clears bits 11 and 13 (stop, force stop), pushes, and clears bit 8 in the shadow. A failed FIFO wait anywhere returns 3; on the success path a last level-15 wait precedes one more read-back of the status register.
  The result is the code of `odsy_i2c_xfer_done_loop` when that is nonzero, otherwise the code of `odsy_i2c_recv_ack` called with 1 when the acknowledge flag is 0 and 0 otherwise, otherwise 0. Every display-FIFO use sits inside a bracket: unless the start-up word at board record +46184 is set, it takes the semaphore at +0x8530 (priority 25); on release it takes the spin lock at +0x8540 and, when a deferred cursor command is pending at +34120, waits for FIFO level 12 and replays it.
- `odsy_i2c_stop` (`odsy_i2c.o`, offset 0x53f8, 2504 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Ends a two-wire transfer (argument: port record). The tail was checked in the assembly, where the status and control read-backs are separate loads. After a display-FIFO wait at level 15 it sets bit 13 (force stop) of the shadow control word, clears bits 14, 9, 8 and 11 (force idle, transfer, start, stop) and pushes the word, then calls `odsy_i2c_xfer_done_loop`; a nonzero code from that call is returned as is.
  When the wait succeeds, a second FIFO wait at level 14 precedes two read-backs through the window at board +0x220000: the status register into its shadow and the control register into the control shadow (the shadow is refreshed, not zeroed). The routine returns 1 when status bit 22 (busy) is still set and 0 when the bus has released. A failed FIFO wait returns 3.
- `odsy_i2c_sendbyte` (`odsy_i2c.o`, offset 0x5dc0, 3796 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Sends one data byte as the bus master (arguments: port record, the byte, an acknowledge value to compare, a stop flag). The two result selections were checked in the assembly, where each is a conditional move. The routine calls `odsy_i2c_busy_high_loop` first and returns its code when nonzero. It does not call `odsy_i2c_recv_ack`; the acknowledge test is its own.
  After a FIFO wait at level 15 it clears bits 13, 14, 8 and 11 (force stop, force idle, start, stop), sets bits 12 and 9 (send, transfer), loads the byte into bits 7:0 and pushes the word, then calls `odsy_i2c_xfer_done_loop` (a nonzero code is returned as is). After another level-15 wait it reads the status back through the window at board +0x220000; the result becomes 1 when status bit 8 equals the third argument and stays 0 otherwise. When the stop flag is 1 it then clears bits 13, 14, 8 and 9, sets bit 11 (stop), pushes again and waits with `odsy_i2c_xfer_done_loop`; a failure of that second wait makes the result 1. A failed FIFO wait returns 3.
- `odsy_i2c_long_recvbyte` (`odsy_i2c.o`, offset 0x6ce0, 2568 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Receives one byte as the bus master with a chosen acknowledge and stop (arguments: port record, acknowledge flag, stop flag, pointer for the byte). Both pushes and the flag tests between them were followed. After a FIFO wait at level 15 it reads the control register back through the window at board +0x220000, clears bits 12 and 8 (send, start), sets bit 10 (refuse acknowledge) unless the acknowledge flag is 1, in which case it clears bit 10, and pushes the word.
  It then calls `odsy_i2c_short_recvbyte` with the byte pointer. After a second level-15 wait it sets bit 11 (stop) when the stop flag is 1 and clears it otherwise, clears bit 10 when the acknowledge flag is 0, and pushes the word again. The result is the code of `odsy_i2c_short_recvbyte`; a failed FIFO wait returns 3.
- `odsy_i2c_recv_1byte` (`odsy_i2c.o`, offset 0x76e8, 3132 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Receives one byte in a single transfer, with the acknowledge and stop chosen by the caller (arguments: port record, acknowledge flag, stop flag, pointer for the byte). Every branch of the flag tests was followed. After a level-15 FIFO wait it reads the control register back through the window at board +0x220000, clears bits 12 and 8 (send, start), sets bit 10 (refuse acknowledge) unless the acknowledge flag is 1, sets bit 11 (stop) only when the stop flag is 1, and pushes the word. It does not touch bit 9 before this push.
  It waits with `odsy_i2c_xfer_done_loop` (a nonzero code is returned as is), stores the status low byte through the pointer, then sets bit 9 (transfer) in the shadow when the stop flag is not 1 and clears it when it is, and pushes the word a second time after another level-15 wait. A failed FIFO wait returns 3; success returns 0.
- `odsy_i2c_becomeSlaveRecv` (`odsy_i2c.o`, offset 0x8324, 2612 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Switches a port from master to slave-receive and takes the first byte (arguments: port record, acknowledge flag, slave address, pointer for the byte). Every return path was followed. It first calls `odsy_i2c_busy_high_loop` and returns its code when nonzero. After a level-15 FIFO wait it reads the control register back through the window at board +0x220000, sets bits 13 and 17 (force stop, slave enable), clears bit 9 (transfer), sets bit 10 (refuse acknowledge) when the flag is 0, clears it when the flag is 1 and leaves it alone for any other value, and puts the low 7 bits of the slave address into bits 24:18.
  It pushes the word after another level-15 wait and calls `odsy_i2c_xfer_done_loop` (a nonzero code is returned as is). A status with bit 20 or 21 set (clock or data error) returns 1; otherwise the status low byte is stored through the pointer, bit 13 is cleared in the shadow and the result is 0. A failed FIFO wait returns 3.
- `odsy_i2c_slave_recvbyte` (`odsy_i2c.o`, offset 0x8d58, 2572 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Collects bytes while another device drives the clock (arguments: port record, acknowledge flag, buffer limit, buffer). The loop and its two exits were checked in the assembly. When the acknowledge flag differs from bit 10 of the shadow control word it writes the flag into bit 10 of the shadow. After a level-15 FIFO wait it reads the status back through the window at board +0x220000, and loops while status bit 22 (busy) is set.
  Each pass calls `odsy_i2c_xfer_done_loop` (a nonzero code is returned as is), returns 1 on status bit 20 or 21 (clock or data error), and returns 3 after inverting shadow bit 10 when the number of bytes stored so far exceeds the limit argument; so a limit of n lets n + 1 bytes in. Otherwise it stores the status low byte in the buffer at the running count (kept as a 16-bit value) and rereads the status. The result is 0 when the busy bit clears. A failed FIFO wait returns 3.
- `odsy_i2c_xfer_done_loop` (`odsy_i2c.o`, offset 0x9764, 1256 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Waits for a two-wire byte transfer to finish (argument: port record). The pass counter and its limit were confirmed in the assembly. Each pass takes the display semaphore unless the start-up word at board record +46184 is set, waits for display-FIFO fill to reach level 15 (not drain to empty) with `odsy_poll_dfifo_level`, reads the status register through the window at board +0x220000 into the shadow, and increments a counter.
  While the counter is below 800 the routine returns 0 as soon as status bit 9 (transfer done) reads set, and otherwise waits 100 microseconds with `odsy_usdelay`; the pass that makes the counter 800 returns 2 without testing the bit. A failed FIFO wait returns 3.
- `odsy_i2c_busy_high_loop` (`odsy_i2c.o`, offset 0x9c4c, 1256 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Waits until a two-wire port shows its busy flag (argument: port record). Its pass structure matches `odsy_i2c_xfer_done_loop` with another status bit and limit, confirmed in the assembly. Each pass takes the display semaphore unless the start-up word at board record +46184 is set, waits for display-FIFO level 15, reads the status register through the window at board +0x220000 into the shadow and increments a counter.
  While the counter is below 400 the routine returns 0 as soon as status bit 22 (busy) reads set, and otherwise waits 100 microseconds with `odsy_usdelay`; the pass that makes the counter 400 returns 2 without testing the bit. A failed FIFO wait returns 3.
- `odsy_i2c_recv_ack` (`odsy_i2c.o`, offset 0xa134, 1288 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Polls the acknowledge bit of a finished byte (arguments: port record, wanted value). The return values were checked in the assembly. It compares bit 8 of the shadow status with the wanted value and returns 0 on a match. Otherwise it waits 100 microseconds with `odsy_usdelay`, takes the display semaphore unless the start-up word at board record +46184 is set, waits for display-FIFO level 15 and rereads the status through the window at board +0x220000.
  After 400 comparisons that fail it returns 2. A failed FIFO wait returns 3, not 2.
- `odsy_i2c_init_port_handle` (`odsy_i2c.o`, offset 0xa63c, 1148 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Fills in the record for one of the two two-wire ports (arguments: port record, board record, port number 0 or 1); any other number returns 1. Every branch was followed. Port 0 gets control and status display addresses 0x2780 and 0x2781 with shadow words at board +0x8614 and +0x8618; port 1 gets 0x2740 and 0x2741 with shadows at +0x860c and +0x8610. The record receives the shadow pointers at +0 and +8, the board at +16, the control and status display addresses as halfwords at +24 and +26, and the port number at +28.
  After a display-FIFO wait at level 14 (a failure returns 3) it reads the control and status registers back through the window at board +0x220000 into their shadows and returns 0.
- `odsy_i2cReset` (`odsy_i2c.o`, offset 0xaab8, 2440 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Forces a two-wire port back to idle (argument: port record). The loop was checked in the assembly for any pass limit and has none. It calls `odsy_i2c_stop` once, zeroes the shadow control word, sets bit 14 (force idle) and, after a display-FIFO wait at level 14, pushes it.
  Then, with no pass limit, it waits 10 microseconds, waits for FIFO level 15, reads the status through the window at board +0x220000, and loops until the state field (bits 13:10) reads 0 or 10. It clears bit 14 and pushes the word once more. A failed FIFO wait ends the routine early.
- `odsy_i2c_read_comp_reg4` (`odsy_i2c.o`, offset 0x0, 2804 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`; called from `odsy_compositor.o`.
  Reads a four-byte register of the compositor over a two-wire port (arguments: port record, pointer for the result word). The byte order was settled from the store and load instructions of the stack word, and every loop exit was followed. Unless the start-up word at board record +46184 is set, it takes the display semaphore and waits for display-FIFO level 15, then reads the control register back through the window at board +0x220000, clears bits 12, 8 and 10 (send, start, refuse-acknowledge) and pushes it.
  Four bytes follow, stored into a word on the stack at byte index 3, then 2, 1 and 0 of the big-endian word, so the first byte received is the least significant one and the last is the most significant. Each byte waits up to 133 passes, 100 microseconds apart, for status bit 9 (transfer done), rereading the status through the window every pass. Before the push for the fourth byte it sets bit 10, so the device is told to stop sending. The finished word is stored through the second argument. A pass count that runs out, or a failed FIFO wait, returns 1; success returns 0.
- `odsy_i2c_write_comp_reg4` (`odsy_i2c.o`, offset 0xaf4, 2636 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`; called from `odsy_compositor.o`.
  Writes a four-byte register of the compositor over a two-wire port (arguments: port record, word to send). The byte index and both wait loops were followed to their exits in the assembly. The word is stored on the stack and sent one byte at a time from byte index 3 down to 0, which for the big-endian word is the least significant byte first.
  For each byte the routine first waits up to 133 passes, 100 microseconds apart, until the status read back through the window at board +0x220000 shows bit 22 (busy). It then clears bits 11 and 13 (stop, force stop), sets bit 9 (transfer), loads the byte into bits 7:0, pushes the control word after a display-FIFO wait at level 15, and waits up to 133 more passes for status bit 9 (transfer done). A status with bit 8 set (acknowledge refused) ends the routine. It returns 0 after the fourth byte; an exhausted wait, a refused acknowledge or a failed FIFO wait returns 1.
- `odsy_i2c_read_denali_byte` (`odsy_i2c.o`, offset 0x1540, 2084 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Reads one byte from the Denali device on a two-wire port (arguments: port record, pointer for the byte). Its loop bound and the 200 microsecond delay were confirmed against the assembly. It stores the address byte 239 (0xef, a read of 7-bit address 0x77) at port record +32 and calls `odsy_i2c_start` with it and an acknowledge argument of 1; a failure there returns 1.
  After 20 microseconds from `odsy_usdelay` and a display-FIFO wait at level 15 it reads the control register back through the window at board +0x220000, clears bits 12 and 8 (send, start), sets bits 10 and 11 (refuse acknowledge, stop) and pushes the word. It then polls the status for bit 9 (transfer done) up to 133 passes with 200 microseconds between passes, and stores the status low byte through the pointer. It returns 0 on success, and 1 when the start, the poll count or a FIFO wait fails.
- `odsy_i2c_write_denali_byte` (`odsy_i2c.o`, offset 0x2660, 2668 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Writes one byte to the Denali device on a two-wire port (arguments: port record, the byte). Both wait loops and the final acknowledge test were followed to every exit. It stores the address byte 238 (0xee, a write to 7-bit address 0x77) at port record +32 and calls `odsy_i2c_start` with it and an acknowledge argument of 1; a failure returns 1.
  After 20 microseconds it waits up to 133 passes, 100 microseconds apart, for status bit 22 (busy) to read set. It then sets bit 11 (stop), clears bit 13 (force stop), sets bit 9 (transfer), loads the byte into bits 7:0 and pushes the word after a display-FIFO wait at level 15. A second wait of up to 133 passes looks for status bit 9 (transfer done), and a status with bit 8 set (acknowledge refused) fails. It returns 0 on success and 1 on any failed step.
- `odsy_i2c_read_rainier_byte` (`odsy_i2c.o`, offset 0x38c4, 2052 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Reads one byte from the Rainier device on a two-wire port, with no address phase of its own (arguments: port record, pointer for the byte); the transfer is the one a caller's earlier `odsy_i2c_start` opened. Searching the body for calls found none to `odsy_i2c_start`, `odsy_i2c_stop` or `odsy_i2c_xfer_done_loop`. It waits 20 microseconds, reads the control register back through the window at board +0x220000 after a display-FIFO wait at level 15, clears bits 12 and 8 (send, start), sets bits 10 and 11 (refuse acknowledge, stop) and pushes the word.
  It then polls the status for bit 9 (transfer done) for up to 133 passes, 200 microseconds apart, and stores the status low byte through the pointer. The pass count is a time limit and has nothing to do with a length. It returns 0 on success and 1 when the poll count runs out or a FIFO wait fails.
- `odsy_i2c_read_denali` (`odsy_i2c.o`, offset 0x1d64, 2300 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`; called from `odsy_denali.o` and `odsy_ddc.o`.
  Reads one reply message from the Denali device (arguments: port record, word array, length out; result 0 or 1); the whole body of this build was read through its decompiled listing and the assembly at the branches. The board record is the pointer at port record +16. Unless the start-up word at record -19352 (from +0x10000) is set it takes the display semaphore at +34096; it waits for display-FIFO level 15, reads display register 0x3804 back through the window at +0x233804 and writes it to the display FIFO (header 0x39c00001) with bits 17:15 set to 6 and bits 14:12 set to 6, then replays a deferred cursor update as `odsy_i2c_start` does.
  The first byte from `odsy_i2c_read_denali_byte` is the length. A length of 5 becomes 10 and the number of bytes to read is the length capped at 32. Each following byte is stored as a 32-bit word at the next index of the array. A stored byte of 10 or 5 with a length above 10 makes the routine read ten more bytes into indices 0 to 9 and stop; with a length of 10 or less it stops after the length bytes. It then takes the semaphore again, waits for level 15, writes the saved value of 0x3804 back, replays the deferred cursor update, stores the adjusted length (5 changed to 10, no cap) through the third argument and returns 0. A failed byte read, or a failed FIFO wait, takes the same path to restore 0x3804, stores 0 as the length and returns 1.
- `odsy_i2c_write_denali` (`odsy_i2c.o`, offset 0x30cc, 2040 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`; called from `odsy_denali.o` and `odsy_ddc.o`.
  Sends one command message to the Denali device (arguments: port record, byte buffer, byte count; result 0 or 1); the decompiled listing of this build was followed from entry to every return and checked against the assembly. The board record is the pointer at port record +16. Unless the start-up word at record -19352 (from +0x10000) is set it takes the display semaphore at +34096, waits for display-FIFO level 14, reads display register 0x3804 back through the window at +0x233804 and writes it to the display FIFO (header 0x39c00001) with bits 17:15 and bits 14:12 set to 6, and replays a deferred cursor update as `odsy_i2c_start` does.
  It calls `odsy_i2c_write_denali_byte` for each byte of the buffer in order, stopping at the first failure. It then takes the semaphore again, waits for level 15, writes the saved 0x3804 value back, replays the deferred cursor update and returns 0, or 1 when a byte write or a FIFO wait failed (the restore of 0x3804 is attempted on that path too).
- `odsyConfigFb` (`odsy_brdmgr.o`, offset 0x824, 2148 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Lays out board memory for a frame-buffer request and programs the scan-out registers (arguments: board record, 52-byte request block). When the request word at +16 is nonzero it returns what `odsyProbeFb` returns and changes nothing. The decompiled listing was followed through the probe branch, the oversubscription branch and the commit path, and the six pushed headers were matched to display registers by decoding the six consecutive literal doublewords the routine loads, whose address field (bits 31:14 after removing 0x30000001) reads 0x2800, 0x2801, 0x2802, 0x2803, 0x2807 and 0x2809.
  Sizing: the tile columns are ceil(width / 16) plus one, rounded down to even, so the row stride is an even number of tiles; the tile rows are ceil(height / 16). The tile count is the product, which is the size in units for depth 32; it is halved (rounded up) for depth 16 and quartered for depth 8, and those depths store 3 and 2 as the depth code (4 for depth 32). The record's start word at +1360 (units shifted left 9) is rounded up to a multiple of 4 and becomes the frame-buffer region at +1360; its region record at +1304 takes the depth at +1321, the width and height at +1336 and +1340 and the column count at +1348. The overlay region at +1496 follows, rounded to a multiple of 4, depth 2, one sixteenth of the tile count rounded up. The coarse-Z slot that follows has size zero (its pointer at +2152 is cleared and its start is the overlay end rounded again). Up to four 8-bit accumulation regions, selected by request word +12 (0 none, 1 two, 2 four), each a quarter of the tile count, follow it; their region records are 136 bytes each from +1576, with the start words from +1632 and the record pointers from +2160. The end, rounded to a multiple of 4, is stored at +1088 as the first free address for later allocations.
  A request whose end, shifted left 13, is not below the SDRAM size word at +252 shifted left 20 logs a severity 4 message and returns -1 with no register written. Otherwise it writes results into the request: +20 the frame-buffer start word (record +1360), +24 the overlay start word (+1496), +28 the frame-buffer start in units shifted left 13, +32, +36, +40 and +44 the sizes of the frame-buffer, overlay, accumulation and coarse-Z regions (the last is zero), and +48 the SDRAM size in bytes. It then takes the display semaphore unless the start-up word at +46184 is set, waits for display-FIFO level 10 and pushes six display-register writes in this order: 0x2800 the overlay start, 0x2801 the frame-buffer start, 0x2802 and 0x2803 each with data 0, 0x2807 the row stride in tiles, 0x2809 the depth code. It releases with the cursor replay, stores the width and height as halfwords at +232 and +234, clears the words at +796 and +800, and sets the halfword at +804 to 1, and returns 0. A failed level wait releases and returns -1.
- `odsyLoadTimingTable` (`odsy_brdmgr.o`, offset 0x3c4c, 8392 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Programs a video timing into the board: the pixel-clock generator, the
  video timing generator tables and the scan-out registers. It takes the lock at record +0x8520, reads the
  host-interface control register back through the window at board +0x220000 and loads the 3-bit clock
  fields of the timing block (+208 to the host-interface configuration, +212 and +216 into the two
  two-wire clock selects) with the soft-reset bit cleared. It picks the clock chip by the variant at record +292:
  at 0 or below the classic PLL part (two-wire address 0x26) gets registers 5, 4, 2, 3, 0, 1, 7 and 6 from the bytes at timing-block +96 to +124,
  above 0 the second clock chip (address 0x58) gets registers 0 to 7 from +128 to +156 (copies of registers 1, 2 and 6
  are saved at the record). It writes those eight registers on the option port with `odsy_i2cPLLRegWrite`, writes
  the classic chip's reset register 8 with 90 when it is in use, waits one 100 ms interval with `odsy_usdelay`, raises the
  interface soft reset, and resets the timing generator. Next it clears two stack buffers of 512 and 4096 bytes
  with `bzero` and sends them as zero blocks of 256 frame-table and 2048 line-table halfwords, then sends
  the caller's frame table and line table (lengths at timing-block +8 and +24), each packed four halfwords to a
  display-FIFO word with a wait for FIFO room every 64 halfwords. It then writes the timing generator
  control, enable and initial-state words (+160, +164, +168), the twelve generator values at +40 to +84, the
  width and height (+176, +180), the interlace, dual-head and field-sequential modes from the flags word at +200, a cursor
  control word, and the DAC, data-path and state-machine words, and finally the generator control word.
  For an external genlock source it rewrites the input-control and divider registers of the active clock chip.
  It releases the lock at +0x8520 and returns 0, or 16 when a FIFO wait fails.
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
  The full step list and the unresolved stack words of the mode table are in `kernel/kernel.md`.
- `odsyBlankScreen` (`odsy_brdmgr.o`, offset 0x21f8, 4580 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Turns the picture
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
  Runs the pending swaps whose target count has been reached. It takes the swap lock at record +28504, then
  for each of the 32 slots whose bit is set in both the pending mask (+28568) and the armed mask (+28548)
  it reads a counter halfword (a table behind the pointer at record +880, indexed by the
  context slot at +244 of its object) and compares it with the slot's target count at +28592
  (**inferred**: the table holds the block 0x5a tag write-back counter, see `display/README.md`, ioctl 1005; the
  earlier "video line counter" reading is superseded). When
  the counter has reached the target, or the target is flagged above 0x8fff while the counter is below 4096, it clears the
  slot's armed bit and calls `odsySwapBuffer`. The lock is released at the end.
- `gf_OdsySchedMGRSwapBuf` (`odsy_retrace.o`, offset 0x107c, 488 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
  Queues a swap of the console-manager buffer in one of 32 slots. A slot number outside 0 to 31 logs a
  severity 4 message and returns 22. Under the lock at +28504 it disarms the retrace interrupt when it is armed and unused
  (clears the word at +28544 and board register 0x10bc), waits on the sync variable at +28520 when the slot is already
  pending (after a severity 5 message), then marks the slot pending in the mask at +28568 and fills the slot
  record at +28584 plus 40 times the slot: the buffer from the pipe object's +72/+112 pointers, a zero for
  the second pointer at +28608, the target count from a halfword of the buffer's display structure (+176, +11068),
  the swap argument at +28616 and the slot's bit at +28600. It copies bit 30 of its argument into the
  per-slot flag mask at +28572. When the counter halfword already equals the target it calls
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
  Lays out board memory for a frame-buffer request and programs the scan-out registers (arguments: board record, 52-byte request block). When the request word at +16 is nonzero it returns what `odsyProbeFb` returns and changes nothing. The decompiled listing was followed through the probe branch, the oversubscription branch and the commit path, and the six pushed headers were matched to display registers by decoding the six consecutive literal doublewords the routine loads, whose address field (bits 31:14 after removing 0x30000001) reads 0x2800, 0x2801, 0x2802, 0x2803, 0x2807 and 0x2809.
  Sizing: the tile columns are ceil(width / 16) plus one, rounded down to even, so the row stride is an even number of tiles; the tile rows are ceil(height / 16). The tile count is the product, which is the size in units for depth 32; it is halved (rounded up) for depth 16 and quartered for depth 8, and those depths store 3 and 2 as the depth code (4 for depth 32). The record's start word at +1360 (units shifted left 9) is rounded up to a multiple of 4 and becomes the frame-buffer region at +1360; its region record at +1304 takes the depth at +1321, the width and height at +1336 and +1340 and the column count at +1348. The overlay region at +1496 follows, rounded to a multiple of 4, depth 2, one sixteenth of the tile count rounded up. The coarse-Z slot that follows has size zero (its pointer at +2152 is cleared and its start is the overlay end rounded again). Up to four 8-bit accumulation regions, selected by request word +12 (0 none, 1 two, 2 four), each a quarter of the tile count, follow it; their region records are 136 bytes each from +1576, with the start words from +1632 and the record pointers from +2160. The end, rounded to a multiple of 4, is stored at +1088 as the first free address for later allocations.
  A request whose end, shifted left 13, is not below the SDRAM size word at +252 shifted left 20 logs a severity 4 message and returns -1 with no register written. Otherwise it writes results into the request: +20 the frame-buffer start word (record +1360), +24 the overlay start word (+1496), +28 the frame-buffer start in units shifted left 13, +32, +36, +40 and +44 the sizes of the frame-buffer, overlay, accumulation and coarse-Z regions (the last is zero), and +48 the SDRAM size in bytes. It then takes the display semaphore unless the start-up word at +46208 is set, waits for display-FIFO level 10 and pushes six display-register writes in this order: 0x2800 the overlay start, 0x2801 the frame-buffer start, 0x2802 and 0x2803 each with data 0, 0x2807 the row stride in tiles, 0x2809 the depth code. It releases with the cursor replay, stores the width and height as halfwords at +232 and +234, clears the words at +796 and +800, and sets the halfword at +804 to 1, and returns 0. A failed level wait releases and returns -1.
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
  Forces a two-wire port back to idle (argument: port record). The loop was checked in the assembly for any pass limit and has none. It calls `odsy_i2c_stop` once, zeroes the shadow control word, sets bit 14 (force idle) and, after a display-FIFO wait at level 14, pushes it.
  Then, with no pass limit, it waits 10 microseconds, waits for FIFO level 15, reads the status through the window at board +0x220000, and loops until the state field (bits 13:10) reads 0 or 10. It clears bit 14 and pushes the word once more. A failed FIFO wait ends the routine early.
- `odsy_i2c_becomeSlaveRecv` (`odsy_i2c.o`, offset 0x8324, 2612 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_i2c.o)`.
  Switches a port from master to slave-receive and takes the first byte (arguments: port record, acknowledge flag, slave address, pointer for the byte). Every return path was followed. It first calls `odsy_i2c_busy_high_loop` and returns its code when nonzero. After a level-15 FIFO wait it reads the control register back through the window at board +0x220000, sets bits 13 and 17 (force stop, slave enable), clears bit 9 (transfer), sets bit 10 (refuse acknowledge) when the flag is 0, clears it when the flag is 1 and leaves it alone for any other value, and puts the low 7 bits of the slave address into bits 24:18.
  It pushes the word after another level-15 wait and calls `odsy_i2c_xfer_done_loop` (a nonzero code is returned as is). A status with bit 20 or 21 set (clock or data error) returns 1; otherwise the status low byte is stored through the pointer, bit 13 is cleared in the shadow and the result is 0. A failed FIFO wait returns 3.
- `odsy_i2c_busy_high_loop` (`odsy_i2c.o`, offset 0x9c4c, 1256 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_i2c.o)`.
  Waits until a two-wire port shows its busy flag (argument: port record). Its pass structure matches `odsy_i2c_xfer_done_loop` with another status bit and limit, confirmed in the assembly. Each pass takes the display semaphore unless the start-up word at board record +46208 is set, waits for display-FIFO level 15, reads the status register through the window at board +0x220000 into the shadow and increments a counter.
  While the counter is below 400 the routine returns 0 as soon as status bit 22 (busy) reads set, and otherwise waits 100 microseconds with `odsy_usdelay`; the pass that makes the counter 400 returns 2 without testing the bit. A failed FIFO wait returns 3.
- `odsy_i2c_init_port_handle` (`odsy_i2c.o`, offset 0xa63c, 1148 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_i2c.o)`.
  Fills in the record for one of the two two-wire ports (arguments: port record, board record, port number 0 or 1); any other number returns 1. Every branch was followed. Port 0 gets control and status display addresses 0x2780 and 0x2781 with shadow words at board +0x8614 and +0x8618; port 1 gets 0x2740 and 0x2741 with shadows at +0x860c and +0x8610. The record receives the shadow pointers at +0 and +8, the board at +16, the control and status display addresses as halfwords at +24 and +26, and the port number at +28.
  After a display-FIFO wait at level 14 (a failure returns 3) it reads the control and status registers back through the window at board +0x220000 into their shadows and returns 0.
- `odsy_i2c_long_recvbyte` (`odsy_i2c.o`, offset 0x6ce0, 2568 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_i2c.o)`.
  Receives one byte as the bus master with a chosen acknowledge and stop (arguments: port record, acknowledge flag, stop flag, pointer for the byte). Both pushes and the flag tests between them were followed. After a FIFO wait at level 15 it reads the control register back through the window at board +0x220000, clears bits 12 and 8 (send, start), sets bit 10 (refuse acknowledge) unless the acknowledge flag is 1, in which case it clears bit 10, and pushes the word.
  It then calls `odsy_i2c_short_recvbyte` with the byte pointer. After a second level-15 wait it sets bit 11 (stop) when the stop flag is 1 and clears it otherwise, clears bit 10 when the acknowledge flag is 0, and pushes the word again. The result is the code of `odsy_i2c_short_recvbyte`; a failed FIFO wait returns 3.
- `odsy_i2c_read_comp_reg4` (`odsy_i2c.o`, offset 0x0, 2804 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_i2c.o)`.
  Reads a four-byte register of the compositor over a two-wire port (arguments: port record, pointer for the result word). The byte order was settled from the store and load instructions of the stack word, and every loop exit was followed. Unless the start-up word at board record +46208 is set, it takes the display semaphore and waits for display-FIFO level 15, then reads the control register back through the window at board +0x220000, clears bits 12, 8 and 10 (send, start, refuse-acknowledge) and pushes it.
  Four bytes follow, stored into a word on the stack at byte index 3, then 2, 1 and 0 of the big-endian word, so the first byte received is the least significant one and the last is the most significant. Each byte waits up to 133 passes, 100 microseconds apart, for status bit 9 (transfer done), rereading the status through the window every pass. Before the push for the fourth byte it sets bit 10, so the device is told to stop sending. The finished word is stored through the second argument. A pass count that runs out, or a failed FIFO wait, returns 1; success returns 0.
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
  Reads one byte from the Denali device on a two-wire port (arguments: port record, pointer for the byte). Its loop bound and the 200 microsecond delay were confirmed against the assembly. It stores the address byte 239 (0xef, a read of 7-bit address 0x77) at port record +32 and calls `odsy_i2c_start` with it and an acknowledge argument of 1; a failure there returns 1.
  After 20 microseconds from `odsy_usdelay` and a display-FIFO wait at level 15 it reads the control register back through the window at board +0x220000, clears bits 12 and 8 (send, start), sets bits 10 and 11 (refuse acknowledge, stop) and pushes the word. It then polls the status for bit 9 (transfer done) up to 133 passes with 200 microseconds between passes, and stores the status low byte through the pointer. It returns 0 on success, and 1 when the start, the poll count or a FIFO wait fails.
- `odsy_i2c_read_rainier_byte` (`odsy_i2c.o`, offset 0x38c4, 2052 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_i2c.o)`.
  Reads one byte from the Rainier device on a two-wire port, with no address phase of its own (arguments: port record, pointer for the byte); the transfer is the one a caller's earlier `odsy_i2c_start` opened. Searching the body for calls found none to `odsy_i2c_start`, `odsy_i2c_stop` or `odsy_i2c_xfer_done_loop`. It waits 20 microseconds, reads the control register back through the window at board +0x220000 after a display-FIFO wait at level 15, clears bits 12 and 8 (send, start), sets bits 10 and 11 (refuse acknowledge, stop) and pushes the word.
  It then polls the status for bit 9 (transfer done) for up to 133 passes, 200 microseconds apart, and stores the status low byte through the pointer. The pass count is a time limit and has nothing to do with a length. It returns 0 on success and 1 when the poll count runs out or a FIFO wait fails.
- `odsy_i2c_recv_1byte` (`odsy_i2c.o`, offset 0x76e8, 3132 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_i2c.o)`.
  Receives one byte in a single transfer, with the acknowledge and stop chosen by the caller (arguments: port record, acknowledge flag, stop flag, pointer for the byte). Every branch of the flag tests was followed. After a level-15 FIFO wait it reads the control register back through the window at board +0x220000, clears bits 12 and 8 (send, start), sets bit 10 (refuse acknowledge) unless the acknowledge flag is 1, sets bit 11 (stop) only when the stop flag is 1, and pushes the word. It does not touch bit 9 before this push.
  It waits with `odsy_i2c_xfer_done_loop` (a nonzero code is returned as is), stores the status low byte through the pointer, then sets bit 9 (transfer) in the shadow when the stop flag is not 1 and clears it when it is, and pushes the word a second time after another level-15 wait. A failed FIFO wait returns 3; success returns 0.
- `odsy_i2c_recv_ack` (`odsy_i2c.o`, offset 0xa134, 1288 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_i2c.o)`.
  Polls the acknowledge bit of a finished byte (arguments: port record, wanted value). The return values were checked in the assembly. It compares bit 8 of the shadow status with the wanted value and returns 0 on a match. Otherwise it waits 100 microseconds with `odsy_usdelay`, takes the display semaphore unless the start-up word at board record +46208 is set, waits for display-FIFO level 15 and rereads the status through the window at board +0x220000.
  After 400 comparisons that fail it returns 2. A failed FIFO wait returns 3, not 2.
- `odsy_i2c_sendbyte` (`odsy_i2c.o`, offset 0x5dc0, 3796 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_i2c.o)`.
  Sends one data byte as the bus master (arguments: port record, the byte, an acknowledge value to compare, a stop flag). The two result selections were checked in the assembly, where each is a conditional move. The routine calls `odsy_i2c_busy_high_loop` first and returns its code when nonzero. It does not call `odsy_i2c_recv_ack`; the acknowledge test is its own.
  After a FIFO wait at level 15 it clears bits 13, 14, 8 and 11 (force stop, force idle, start, stop), sets bits 12 and 9 (send, transfer), loads the byte into bits 7:0 and pushes the word, then calls `odsy_i2c_xfer_done_loop` (a nonzero code is returned as is). After another level-15 wait it reads the status back through the window at board +0x220000; the result becomes 1 when status bit 8 equals the third argument and stays 0 otherwise. When the stop flag is 1 it then clears bits 13, 14, 8 and 9, sets bit 11 (stop), pushes again and waits with `odsy_i2c_xfer_done_loop`; a failure of that second wait makes the result 1. A failed FIFO wait returns 3.
- `odsy_i2c_slave_recvbyte` (`odsy_i2c.o`, offset 0x8d58, 2572 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_i2c.o)`.
  Collects bytes while another device drives the clock (arguments: port record, acknowledge flag, buffer limit, buffer). The loop and its two exits were checked in the assembly. When the acknowledge flag differs from bit 10 of the shadow control word it writes the flag into bit 10 of the shadow. After a level-15 FIFO wait it reads the status back through the window at board +0x220000, and loops while status bit 22 (busy) is set.
  Each pass calls `odsy_i2c_xfer_done_loop` (a nonzero code is returned as is), returns 1 on status bit 20 or 21 (clock or data error), and returns 3 after inverting shadow bit 10 when the number of bytes stored so far exceeds the limit argument; so a limit of n lets n + 1 bytes in. Otherwise it stores the status low byte in the buffer at the running count (kept as a 16-bit value) and rereads the status. The result is 0 when the busy bit clears. A failed FIFO wait returns 3.
- `odsy_i2c_start` (`odsy_i2c.o`, offset 0x40c8, 4912 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_i2c.o)`.
  Opens a transfer on a two-wire port and sends the address byte (arguments: port record, address byte, acknowledge flag). The decompiled listing was followed to every return and the assembly consulted at each branch; the kernel build inlines each semaphore, FIFO-wait and cursor-replay macro, which is why the body is 4912 bytes. Each control-register write of the port is a 64-bit command pushed into the display FIFO at board +0x400000: the high word is 0x30000001 ORed with the register's display address shifted left 14 (the halfword at port record +24), the low word is the shadow control word that the pointer at record +0 names.
  The sequence is: wait for FIFO level 14 and push the shadow with bit 14 (force idle) set; wait 20 microseconds with `odsy_usdelay`; wait for level 15, clear bits 14 and 13 and push again; wait another 20 microseconds; wait for level 13 and read both the control and the status register back through the window at board +0x220000 (display address times 8) into their shadows. It then loads the address byte into bits 7:0, sets bits 8, 9 and 12 (start, transfer, send), clears bits 11 and 13 (stop, force stop), pushes, and clears bit 8 in the shadow. A failed FIFO wait anywhere returns 3; on the success path a last level-15 wait precedes one more read-back of the status register.
  The result is the code of `odsy_i2c_xfer_done_loop` when that is nonzero, otherwise the code of `odsy_i2c_recv_ack` called with 1 when the acknowledge flag is 0 and 0 otherwise, otherwise 0. Every display-FIFO use sits inside a bracket: unless the start-up word at board record +46208 is set, it takes the semaphore at +0x8530 (priority 25); on release it takes the spin lock at +0x8540 and, when a deferred cursor command is pending at +34120, waits for FIFO level 12 and replays it.
- `odsy_i2c_stop` (`odsy_i2c.o`, offset 0x53f8, 2504 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_i2c.o)`.
  Ends a two-wire transfer (argument: port record). The tail was checked in the assembly, where the status and control read-backs are separate loads. After a display-FIFO wait at level 15 it sets bit 13 (force stop) of the shadow control word, clears bits 14, 9, 8 and 11 (force idle, transfer, start, stop) and pushes the word, then calls `odsy_i2c_xfer_done_loop`; a nonzero code from that call is returned as is.
  When the wait succeeds, a second FIFO wait at level 14 precedes two read-backs through the window at board +0x220000: the status register into its shadow and the control register into the control shadow (the shadow is refreshed, not zeroed). The routine returns 1 when status bit 22 (busy) is still set and 0 when the bus has released. A failed FIFO wait returns 3.
- `odsy_i2c_write_comp_reg4` (`odsy_i2c.o`, offset 0xaf4, 2636 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_i2c.o)`.
  Writes a four-byte register of the compositor over a two-wire port (arguments: port record, word to send). The byte index and both wait loops were followed to their exits in the assembly. The word is stored on the stack and sent one byte at a time from byte index 3 down to 0, which for the big-endian word is the least significant byte first.
  For each byte the routine first waits up to 133 passes, 100 microseconds apart, until the status read back through the window at board +0x220000 shows bit 22 (busy). It then clears bits 11 and 13 (stop, force stop), sets bit 9 (transfer), loads the byte into bits 7:0, pushes the control word after a display-FIFO wait at level 15, and waits up to 133 more passes for status bit 9 (transfer done). A status with bit 8 set (acknowledge refused) ends the routine. It returns 0 after the fourth byte; an exhausted wait, a refused acknowledge or a failed FIFO wait returns 1.
- `odsy_i2c_write_denali` (`odsy_i2c.o`, offset 0x30cc, 2040 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_i2c.o)`.
  Sends one command message to the Denali device (arguments: two-wire port record, byte buffer, byte count). It takes the display semaphore (`psema`, +0x8530, priority
  25) unless the start-up word at -19328 from +0x10000 is set, waits for display-FIFO level 14, reads display register 0x3804 and pushes it back with bits 14:12 set to 6, then calls
  `odsy_i2c_write_denali_byte` for each byte in order. A byte whose write fails ends the loop; either way it waits for level 15, restores register 0x3804 from the saved word
  and releases through the pending-cursor replay of `odsy_i2c_start` (spin lock +0x8540, `vsema`). It returns 1 after a failed byte (or a failed FIFO wait) and 0 when
  every byte went out. The IP30 build has the same body with the start-up word at -19352.
- `odsy_i2c_write_denali_byte` (`odsy_i2c.o`, offset 0x2660, 2668 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_i2c.o)`.
  Writes one byte to the Denali device on a two-wire port (arguments: port record, the byte). Both wait loops and the final acknowledge test were followed to every exit. It stores the address byte 238 (0xee, a write to 7-bit address 0x77) at port record +32 and calls `odsy_i2c_start` with it and an acknowledge argument of 1; a failure returns 1.
  After 20 microseconds it waits up to 133 passes, 100 microseconds apart, for status bit 22 (busy) to read set. It then sets bit 11 (stop), clears bit 13 (force stop), sets bit 9 (transfer), loads the byte into bits 7:0 and pushes the word after a display-FIFO wait at level 15. A second wait of up to 133 passes looks for status bit 9 (transfer done), and a status with bit 8 set (acknowledge refused) fails. It returns 0 on success and 1 on any failed step.
- `odsy_i2c_xfer_done_loop` (`odsy_i2c.o`, offset 0x9764, 1256 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_i2c.o)`.
  Waits for a two-wire byte transfer to finish (argument: port record). The pass counter and its limit were confirmed in the assembly. Each pass takes the display semaphore unless the start-up word at board record +46208 is set, waits for display-FIFO fill to reach level 15 (not drain to empty) with `odsy_poll_dfifo_level`, reads the status register through the window at board +0x220000 into the shadow, and increments a counter.
  While the counter is below 800 the routine returns 0 as soon as status bit 9 (transfer done) reads set, and otherwise waits 100 microseconds with `odsy_usdelay`; the pass that makes the counter 800 returns 2 without testing the bit. A failed FIFO wait returns 3.
- `odsyInitBoardGfx` (`odsy_init.o`, offset 0xc5c, 640 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_init.o)`.
  Builds the software state of one board after attach (argument: board number, used to fetch the record from the table of board pointers). The decompiled listing was followed to the end and the inventory branches and their constants were checked in the assembly. It clears the first 200 bytes, then sets up the driver's locks in this order: a semaphore at +0x74b0 (count 1), the 32 KB slot mask at +0x7500, a mutex at +0x16a8, a synchronisation variable at +0x16b8, the display semaphore at +0x8530 (count 1), a spin lock at +0x8540, mutexes at +0x8520 and +0x8510 and a semaphore at +0x6f48 (count 1). It clears the words at +0x16d4, +0x16d8, +0x1afc, +0x1b00 and +0x6f18 and stores 0x1f0 at +0xb3d4.
  It calls `odsyInitDDRNs` with the record and `odsyInitHwWrRgn` with the board number, allocates 0xc000 zeroed bytes with `kmem_zalloc` into +888, and stores that pointer plus 32 at +34136 as the microcode buffer pointer. The inventory state word is 0x10000, 0x20000 or 0x30000 for a memory size word (+252) of 32, 64 or 128 and 0 for any other size, ORed with 0x1000000 when the word at +280 is 0 and 0x2000000 when it is 1; `add_to_inventory` receives class 7, type 21, the board number and that word. When the halfword at +296 is nonzero and the halfword at +298 is 3 it adds a second entry with class 17, type 3 and state 0.
  Last it sets the words at +176 and +20 to 1 and +88 to 40, points +96 at +0x86c8, initialises three more mutexes at +0xb338, +0xb370 and +0x8580, and registers the record with `GfxRegisterBoard`.
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
  Declares a board dead, once. Read in full on IP35, with the offsets below taken from this build. It
  takes the semaphore at board record +28488 with `psema` (second argument 25) and adds one to the
  counter at +816, the store in the delay slot of the branch. Any value but 1 releases the semaphore
  with `vsema` and returns. The pass that reaches 1 logs the `.rodata` message at +1056 ("Graphics
  error" with the board number from the halfword at +790) at severity 1. It then logs the message at
  +1088 (dmawait time-out value) at severity 5 when the word at +46232 is non-zero, and the message at
  +1128 (dmawait finish value) at severity 5 when the word at +46236 is non-zero. It calls
  `odsyPrintRegs` on the PIO base at +824 and `gthread_scan` with `GfxKiller` (the doubleword at
  `.srdata` +152), a stack block holding the word 9, the board record at +8 and 0 at +16, and 9 as the
  third argument. It releases the semaphore with `vsema` and returns that result. The IP30 build reads
  the two dmawait words at +46208 and +46212.
- `odsyDmaInterrupt` (`odsy_intr.o`, offset 0x540, 56 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_intr.o)`.
  Handles the DMA interrupt, source 2. The IP35 body is 14 instructions, all read: it calls
  `odsyDMAIrptWakeup` with the unchanged board argument, then adds one to the word at +16 of the
  `gfxinfo` entry for the halfword at 0xffffffffffffc428, the store sitting in the delay slot of the
  return. It reads and writes no board register.
- `odsyFlagInterrupt` (`odsy_intr.o`, offset 0x1ac, 916 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_intr.o)`.
  Handles the flags interrupt, source 1; a0 is the board record. The IP35 body was read through every
  bit test to the clear store. It loads the PIO base (doubleword at +824), the raw flags word at base
  +4116 (0x1014) and the enable mask at base +4148 (0x1034), and works on pending = raw AND mask after
  adding one to the word at +16 of the `gfxinfo` entry for the processor. Tests, in order: bit 9 calls
  `odsyLowaterInterrupt`; bit 25 logs the `.rodata` message at +432 ("CFIFO HW received") at severity 5; bit 31 calls
  `odsyGenlockInterrupt`; bit 30 logs the message at +472 (CLOCK_STOPPED_INTR) at severity 5; bits 29, 28,
  27, 24, 23, 22, 21, 20 and 18 log the messages at +520, +568, +608, +648, +688, +736, +784, +832 and
  +888 at severity 4 (the strings are READ_DURING_DIAG_ERROR, PUSH_CMD_ERROR, the overflow interrupt graphics-driver request, DBE_OFLOW_INTR, DFIFO_OFLOW_INTR, XFORM_IFIFO_OFLOW_INTR, XFORM_UCODE_OFLOW_INTR, XFORM_PTABLE_OFLOW_INTR and the crosstalk-link stall graphics-driver request); any of the bits in 0x3c000 logs the +936 message (HOST_FLAG_INTR) at severity 5; then bits 13, 11, 10, 8 and 7 log +976, +1024, +1064, +1112 and +1160 at severity 4 (PRIV_VIOLATE_GFX, DMA_DONE_FLAG, DMA_CMD_OFLO_INTR, ILLEGAL_OUT_FORMAT, MULTGET_INTR). Bit 4 adds
  one to the word at record +46176 and logs the +1216 message (CORRECTABLE_ECC_ERROR) at severity 5 with the text at +1200
  ("multiple") when bit 3 is set or the text at +1432 ("single") when it is clear, and the count; bits
  2, 1 and 0 log +1280, +1336 and +1384 at severity 4 (UNCORRECTABLE_ECC_ERROR, SYNC_TIMEOUT_FLAG, HEURISTIC_OVERFLOW). When the raw flags intersect 0x39f02587 it calls `odsy_teardown` and returns its result;
  otherwise it writes the pending word to base +4124 (0x101c), issues `sync` and returns.
- `odsySsyncInterrupt` (`odsy_intr.o`, offset 0x578, 72 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_intr.o)`.
  Handles the sync interrupt, source 4. The IP35 body is 18 instructions, all read: it saves a0, calls
  `odsySwap_softsync_intr` with the board, then `odsyDMAWakeup` with the board, and adds one to the word
  at +16 of the `gfxinfo` entry for the halfword at 0xffffffffffffc428, the store sitting in the delay
  slot of the return. It reads and writes no board register itself.
- `odsyXtErrorInterrupt` (`odsy_intr.o`, offset 0x0, 428 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_intr.o)`.
  Handles the crossbar error interrupt, source 0; a0 is the board record. The IP35 body, read whole from
  its prologue to the stack epilogue, runs as follows. It loads the PIO base from the doubleword at
  +824, adds one to the word at +16 of the `gfxinfo` entry (32 bytes per processor) for the halfword at
  0xffffffffffffc428, reads the widget status word at base +12 and the header word at base +68, and
  keeps the header in a stack slot. It tests bit 8 of the status (response time-out), then bit 7
  (address error), then bit 6 (packet format error). A time-out logs the first message in the object's
  `.rodata` at severity 4 with the board number (halfword at +790). An address error logs the message at
  `.rodata` +56 at severity 4 with the board number, 0, the word at base +28 masked to 32 bits, the word
  at base +68 and the word at base +20 masked with 0xffff0000, calls `odsyPrintRegs` on the base, copies
  480 bytes (30 passes of two doublewords) from the table at `.srdata` +8 to the stack, logs the message
  at +152 at severity 7 with the base +68 word and that buffer, and finally calls `odsy_teardown`. A
  packet-format error logs the message at +184 at severity 4; with none of the three bits set the
  message at +232 is logged instead. Every path stores 0 to the word at base +68 followed by `sync`; the
  time-out and packet-format paths then log the message at +272 at severity 0 with the saved header, and
  return without tearing the board down.
- `odsyRetraceHandler` (`odsy_retrace.o`, offset 0x131c, 716 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_retrace.o)`.
  Handles the retrace interrupt, source 3; a0 is the board record. Every branch of the IP35 body was
  read. It loads the PIO base from +824, calls `mutex_lock` on +28504 with 25 as the second argument,
  saves the word at +128 (s6) and adds one to the words at +128 and +124. When the word at +28544 is
  non-zero and the doubleword at +28536 is zero, it stores 0 to base +4284 (0x10bc), issues `sync` and
  clears the word at +28544. When the pending word at +28568 is non-zero it computes changed = the word
  at +28528 XOR the word at base +4308 (0x10d4) and loops over ids 0 to 31. An id bit not in +28568 is
  skipped. If it is also set in +28564, it is cleared from +28568, +28548, +28556, +28552 and +28560 and
  `odsyValidateBuffer` runs for it. Otherwise, if the bit is set in +28548, a per-id count at +28620
  plus 40 times the id is incremented; past 300 it is reset, the bit is cleared from +28548,
  `odsySwapBuffer` runs and the message at `.rodata` +328 (forced validation of the id) is logged at
  severity 4. Next, when the bit is clear in +28560, `odsySwapBuffer` runs if the bit is set in +28556
  or +28552. When it is set in +28560 and the id is not in the changed set, the doubleword at +28608
  plus 40 times the id, if non-zero, receives s6 at its +28 and the bit is cleared from +28560 with
  `odsyValidateBuffer`; when it is in the changed set the count at +28620 plus 40 times the id is
  incremented, and on reaching 2 it is reset and the id bit is stored to base +4276 (0x10b4) followed by
  `sync`. After the loop the word at +28564 is cleared in the delay slot of `sv_broadcast` on +28520.
  Whether or not the loop ran, `rrmValidateRetrace` is then called for each event on the list at +29864
  (links at +40 of each) and the list head is zeroed, `mutex_unlock` releases +28504,
  `rrmValidateVideoSync` is called when the doubleword at +136 is non-zero, `odsyDMAWakeup` runs, and
  the word at +16 of the `gfxinfo` entry is incremented.
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
  failure code. Which of the computed words the board uses is unknown (`kernel/kernel.md`).
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
  (address byte 31) by the request halfword at +0 (`lhu` at 0x25a8) and writes register 0 as 0. Command 2 calls `odsy_i2c_stop`
  and on port 1 writes register 0 as 0x30. Command 4 sends up to the request's count with `odsy_i2c_sendbyte`
  and command 3 receives up to 256 bytes with `odsy_i2c_long_recvbyte`, copying them out; both return the
  count, or -5 when the transfer stopped early. Commands 6 and 7 write and read one register of the device at address
  byte shifted right by one with `odsy_i2cPLLRegWrite` and `odsy_i2cDDCRegRead`. Command 8 reads an EDID with
  `odsy_i2cProbe2b` into the record's slots (main port at +308, left DCD channel at +438, right at +568, each
  a halfword valid flag followed by 128 bytes; port 1 selects the channel by the halfword at +0 (`lhu` at 0x2544), writing register 0
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
  table layouts are in `buzz/README.md`, pass 9.
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
  fields are in `buzz/README.md`, pass 9.
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
  blocks before the mode groups and the two mode groups are sent. `buzz/README.md` section 8 lists the same block ids.
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
  Text-port colour change on the IP35 build. Unless the mute word is set it takes the text-port lock with
  `mutex_spinlock`, marks the port in use by storing 1 (the IP30 build increments a counter behind a write-buffer
  flush instead), stores the colour at +8 of the static object and writes the same eight words to the command
  FIFO port at board +0x110000 as the IP30 build (0x22008001, 0x23008003, 0xce80cc08, three zeros, 0xc580c406
  and the colour), then stores 0 in the in-use word and releases the lock with `mutex_spinunlock`.
- `odsy_mapcolor` (`odsy_tport.o`, offset 0xa78, 236 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_tport.o)`.
  Text-port colour-map write on the IP35 build. Unless the mute word is set it takes the text-port lock with
  `mutex_spinlock`, marks the port in use by storing 1, waits for the display FIFO to empty with
  `odsy_poll_dfifo_level` at level 0, packs the three component arguments into the three 10-bit fields exactly as
  the IP30 build does (each value times 4 plus its top 2 bits), pairs the result with 0x30000001 and the index
  shifted left by 14, stores the pair as one doubleword at board +0x400000 and releases the lock after storing 0 in
  the in-use word. The IP30 build uses a counter and write-buffer flushes where this one uses the lock alone.
- `gf_OdsyReleaseGfxSema` (`odsy_sched.o`, offset 0x48c, 248 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_sched.o)`.
  Gives up the caller's graphics flow control on the IP35 build. When the flow handle at board record
  +808 is set it raises the level with `splhi` and, if `gfx_flow_am_i_attached` says the caller is attached,
  first checks the word at +104: when it is zero and `gfx_flow_credit_count_get` is below
  `gfx_flow_credit_bias_get` it pins the thread with `rt_pin_thread`, lowers the level with `splx`, waits in
  `odsy_flow_await_returned_credits`, raises the level again and unpins. It then sets the word at +0x85c8 to
  1, stores 1 to the board register at 0x107c, reads that register back (the IP30 build reads 0x106c) and
  calls `gfx_flow_detach_me`; `splx` follows. It returns 0.
- `odsyLLPReset` (`odsy_init.o`, offset 0x1cd8, 184 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_init.o)`.
  Resets the crossbar link to the widget on the IP35 build. It reads the widget control word at board
  +36 and keeps it, and addresses the host chip's per-widget block by the widget number from the byte at
  +793 (64 bytes a widget) plus the node bits taken from bits 39:33 of the board's base address, not from a fixed
  table as on IP30. With a device handle (the word at -19400 from +0x10000) it calls `xwidget_reset`
  and then loads a word from the bottom of its own frame, which that path never stores, and writes it to
  host-chip word +268. Without a handle it saves word +268, waits 10 ms with `odsy_usdelay`, writes 0 to
  +308 and restores +268. Both paths end by ORing the widget number and 0x4000 into the saved control word and
  storing it back at board +36.
- `OdsyInit32kSlotMask` (`odsy_adt.o`, offset 0xaa4, 132 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_adt.o)`.
  Prepares a 4112-byte slot-mask structure on the IP35 build. It clears the block with `bzero`, stores
  its second argument at +0 and 0 at +8 and, when the module's global word is zero, fills the 512
  doublewords from +16: the first is -4 and the other 511 are -2. A nonzero global leaves them zero.
- `odsyFindBoardAddr` (`odsy_init.o`, offset 0xb44, 280 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_init.o)`.
  Returns the base address of board number N on the IP35 build. It calls `odsyCheckBoardPointers` and, when the
  record for N exists, returns the doubleword at +824. Otherwise it calls `find_odsypipe`, which returns a
  halfword and a byte, and builds the address itself: 0x9200000000000000 plus the halfword shifted left by 33 plus
  the byte shifted left by 24 (when the byte is zero the base comes from a table in the object instead). With
  a nonzero address it creates the record with `odsyCheckBoardPointer` and stores the low 4 bits of the word at
  address +36 in the byte at +793, the address at +824, N in the halfword at +790 and the byte and halfword from
  `find_odsypipe` at -19392 and -19396 from +0x10000. It returns the address, or 0 when it has none.
- `odsyDownloadUcode` (`odsy_ucode.o`, offset 0x0, 288 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_ucode.o)`.
  Sends microcode lines to the board on the IP35 build, with the same argument limits, the same
  0x27008000 write-address word and the same 0x40008000 halfword words as the IP30 build, reading the lines from
  the buffer at +34136 against the line count at +34132. It writes through the pointer held at board record
  +864 instead of the base plus 0x110000, and its stores are not followed by a `sync`. Invalid arguments log
  "odsyDownloadUcode: invalid args" at severity 4 and return -1; success returns 0.
- `gf_OdsySuspend` (`odsy_sched.o`, offset 0x0, 292 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_sched.o)`.
  Takes a client off the board on the IP35 build, under the same conditions as the IP30 build (board exists,
  client is the owner at +72, bits 1:0 of its flag word at +4). When the flow handle at +808 is set it raises the
  level with `splhi` and, for an attached caller whose word at +104 is zero and whose
  `gfx_flow_credit_count_get` is below `gfx_flow_credit_bias_get`, pins the thread with `rt_pin_thread`, lowers
  the level, waits in `odsy_flow_await_returned_credits`, raises it again and unpins. It then sets the word at
  +0x85c8 to 1, stores 1 to the board register at 0x107c, reads that register back (the IP30 build reads
  0x106c), calls `gfx_flow_detach_me` and `splx`, and returns 0.
- `gf_OdsyResume` (`odsy_sched.o`, offset 0x124, 292 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_sched.o)`.
  Puts a client back on the board on the IP35 build. For the owner at +72 with bits 1:0 of its flag word
  set, under `splhi`, a caller that is not attached to flow control pins the thread with `rt_pin_thread`, calls
  `gfx_flow_attach_me`, forms the flow word from the shadow at +34244 masked by a constant and the word at
  -19376 from +0x10000 shifted left by 12 (the IP30 build takes the target number from
  `gfx_flow_credit_tnum_get`), stores it to the shadow and to the board register at 0x1074, and stores 0 to the shadow
  at +34248 and to the register at 0x107c. It then lowers the level, waits in `odsy_flow_await_returned_credits`,
  raises it again, calls `gfx_flow_attach_me_finish` with the owner and unpins. When the third argument is 0 and
  the word at +120 is nonzero it calls `force_resched` and clears the word. It returns 0.
- `odsy_fc_attach` (`odsy_init.o`, offset 0x1d90, 520 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_init.o)`.
  Attaches the calling processor's pipe to flow control on the IP35 host; the IP30 kernel has no such routine.
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
  Driver start-up on the IP35 build, which discovers its boards here instead of waiting for an attach
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
  Crossbar attach entry for one board on the IP35 build. Under the board-init semaphore it reads the widget
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
  Early console-time initialisation on the IP35 build. It sets up the xbow spin lock and mutex, calls
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
  Allocates the software sync-write area on the IP35 build. It does nothing when the pointer at +880 is already set. Otherwise it gets 8 pages
  of 16 KB (0x20000 bytes) with `kvpalloc_node_hint` on the node found by indexing a global table with the board halfword at -19396 from
  +0x10000 (the IP30 build uses `kmem_zalloc`); a failure prints a message and returns. It zeroes the 16384 doublewords itself,
  clears the four doublewords at +29888 and the four words at +29920, advances the address in 16384-byte steps (recording each skipped
  start at +29888 and up) to the first multiple of 0x10000, stores that address at +880 and fills the four doublewords at +29888 with the
  consecutive 16 KB blocks above it.
- `gf_OdsyAttach` (`odsy_attach.o`, offset 0x68, 392 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_attach.o)`.
  Maps the board's windows into a process on the IP35 build. The address in the second argument must have its low 14 bits clear
  (otherwise 22). The routine first reads one doubleword through a global pointer (the IP30 build reads the fixed uncached address
  0xaff00080 only at the end), then offers the mapping to `gfxdd_recycle` with `odsy_regmatch` and returns 0 when a mapping was recycled. Otherwise
  it copies a 256-byte table of extents to the stack and, for each entry it will use (two 32-byte entries, or all eight
  when the board flag word at +4 has bit 2 or bit 5 set), adds the caller's address to its two address words and stores 1 in its
  word at +20 (the IP30 build leaves that word alone). It calls `gfxdd_mmap` with a 32 KB mapping, or 256 KB in the eight-entry case, and
  `gfx_fault` as the fault handler; a failure logs severity 4 and returns 12. On success it sets bit 0 of the flag word under
  `splhi`, calls `gf_OdsyUnMapGfx`, restores the level, reads one doubleword through the global pointer again and returns 0.
- `odsyDMAFinish` (`odsy_dma.o`, offset 0x2c20, 388 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_dma.o)`.
  Drains and frees a context's DMA state on the IP35 build. It sets the flag word at -19300 from board record +0x10000
  (the IP30 build uses -19324) to 1, calls `odsyDMAWait` in mode 1 on the context's operation numbers at +248 and +256, and clears
  the flag. It then takes the mutex at +5800 and walks the context's set of DMA buffers at +416 with
  `OdsyInitCSetCursor` and `OdsyNextCSetElem`. For each buffer whose state word (+8) is nonzero it logs severity 4 when the board's teardown
  flag at +816 is clear, overwrites the memory block at +16 (length at +24) with the byte 151 and frees it with `kmem_free`. A buffer
  with a user range (+64 nonzero) is unlocked with `unuseracc` (address at +56, flag 272), and its set id (+48) is returned with
  `OdsyDeallocCSetId` unless it is -1. Finally it destroys the set with `OdsyDestroyCSet` and releases the mutex.
- `odsySetDACGain` (`odsy_brdmgr.o`, offset 0x6504, 1032 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_brdmgr.o)`.
  Turns the DAC gain on or off on the IP35 build (arguments: board record, nonzero to enable). Unless the start-up word at -19328 from
  +0x10000 is set it first takes the display semaphore at record +0x8530 with `psema` at priority 25, then waits for display-FIFO
  level 14. A failed wait releases the semaphore and returns -1. Otherwise it reads display register 0x26c0 through the window
  at board +0x233604, sets bit 1 for a nonzero argument and clears it otherwise, ORs the result with the literal-pool header word and stores it as one
  doubleword at board +0x400000. The release replays a pending cursor command exactly as `odsy_i2c_start` does: under the spin lock at +0x8540,
  a nonzero pending doubleword at -31416 from +0x10000 is sent after a level-12 wait, with the cursor-enable bit at 5 of the word at -19664 brought into
  line with the halfword at -31408 around it; the pending word is cleared and `vsema` ends the sequence. Returns 0 on success. The IP30 build
  has the same body with the start-up word at -19352.
- `gf_OdsyUnMapGfx` (`odsy_map.o`, offset 0x31c, 524 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_map.o)`.
  Removes a client's window mappings on the IP35 build. For the owner at the manager's +72 with flag bit 0 set it raises the level with
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
  Runs when the host's flow-control credits for the board fall below the bias, on the IP35 build. It takes the spin lock at
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
  Resets the board's link on the IP35 build; unlike the IP30 build it has a single path and no `odsyLLPReset` call. It addresses the host chip's
  per-node block as the global chip base plus bits 39:33 of the board base shifted back up by 33, reads the widget number from the low four
  bits of the board word at -31340 from +0x10000, and reads the chip's id word at +4. When bits 27:12 of that word equal 0xd100 and its field at bits 11:1 is zero,
  widgets 8, 9 and 14 are left out of the next walk and a word at +188 of a second per-node block is cleared of this widget's bit. The walk covers widgets 8 to 15 other than this one: for each whose
  per-widget word at +276 has bit 31 set and whose word at +316 has bit 5 set, it clears this widget's bit (its number minus 8) in the node block's word at +124
  or in the following words at a stride of 8 from +132. It then saves the chip control word at +36 and the widget's word at +268, clears bits 5, 2 and 1 of the first and bits 31, 17, 16, 8, 7, 6, 5, 4, 3 and 1 of the
  second, stores 0x200 to the board's reset register 0x100c, waits one second with `odsy_usdelay`, writes 0 only to the driver's shadow word (not to the register), and checks that the widget's words at +276
  and +316 again show the same two bits. When they do it restores the control word, puts the saved widget word back with bits 22:18 cleared and bit 20 set, waits 100 ms and
  returns. When they do not it logs at severity 4 and repeats, up to four attempts in all (the retry counter steps by 2 and the loop ends once it reaches 7).
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
- **The two lockable-memory tunables.** The IP30 kernel image (`unix`, 6.5.30m) defines `gfxlockablemem` and `gfxlockablemem_gt64` as adjacent 32-bit words in `.sdata` (at 0xa8000000204a6d40 and 0xa8000000204a6d3c); reading the symbol table and the section bytes shows that their values in the shipped image are 20 and 50 respectively. The routine above reads only the `gfxlockablemem_gt64` name (the plain name is not in `odsy_pmm.o`); it does not split at 64 MB and raises its value to at least 25. What each tunable means (the `_gt64` suffix suggests a 64 MB threshold) and which page count the percentage applies to are unknown from the binaries read here; a read of the 6.5.30 kernel's lockable-pages routine and its other callers in `unix` would settle both. Why the Odyssey manager dropped the split: **unknown: no shipped software or published source depends on it**. Routes tried: both IP30 and IP35 `odsy_pmm.o` and the kernel image's symbols.
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
  doubleword at +184 is already set returns 0 at once. Otherwise `odsyPinAndMapGctxSwShadowRgn` pins and maps the
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
  (none: status 1; no share group: 14), copies in 72 bytes and requires the slot halfword at +8 (`lhu` at 0x11dc) to be below 16
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
  named by the halfword at +8 (`lhu` at 0x1528) (22 when that is 16 or more) and, if the group then holds no objects, clears +52 and
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
  at +56 (of the copied request on the stack: `lw` at 0x23b0, `sw` at 0x2410) gets 0x32 in its top byte together with a direction bit (set when bit 0 of +60 is clear) and bits 3 and 6
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
  (as does any other value, with a log). Command 1 needs the buffer capacity in the word at +8 (`lw` at 0x750) to be above 16 (else
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
  index to this doubleword when it was higher and releases the lock. The mask is built by shifting a 64-bit value,
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
  `gfP_OdsyBRDMGRsetColors`. The register meanings are in `display/README.md`, "Kernel cursor request".
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
  (the `ODY_2CHANNEL_PLL_reg*` values of `display/README.md`) with `odsy_i2cPLLRegWrite`, waits 600000 us with
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
  zero (the layout is in `opengl/opengl.md`, "The clip push"). A caller not attached to flow control is attached for the
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
  `opengl/opengl.md`, "The clip push": the settle sequence, `0x31008140`, `0x9000bda2` and `0x00010019`, block 0x041
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
  that class has no object or a zero halfword +18 (the context words are rewritten with the same bit). The word order is in `opengl/opengl.md`, "The clip push".
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
  (operands, 16 bytes an entry). With a third argument of 2 or more it sends the entries (n + 2) mod 4 and then (n - 1) mod 4,
  where n is the last argument (both as signed remainders); below 2 it sends only entry (n + 3) mod 4. Each send is the command word and its operands, counted
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
  0 for success, 1 for failure, with the node's doubleword at +56 cleared on most failures). It fails at once when the board's context
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
  calls the set graphics-context Odyssey driver request, and clears the mute word.
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
- `gfP_OdsyHPconfig` (`odsy_hpipe.o`, offset 0xc58, 712 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)`.
  The IP35 build of the display-pipe configure request, compared with the IP30 listing instruction by instruction, every instruction of the body: 195
  instructions in the same order. Every board-record field it reads or writes at a negative offset from +0x10000
  sits 24 bytes higher: the member-list pointer is at -19288 (IP30: -19312) and the four layout words are at -19264,
  -19260, -19256 and -19252 (IP30: -19288 to -19276). The slot search, the strip arithmetic,
  `odsy_program_compositor_tiling` and the copy-out are unchanged.
- `gfP_OdsyHPdestroyConfig` (`odsy_hpipe.o`, offset 0xf20, 472 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)`.
  The IP35 build of the display-pipe destroy request, compared with the IP30 listing instruction by instruction, every instruction of the body: 127
  instructions in the same order. Only the board-record layout words move, to -19264, -19260, -19256 and -19252 from
  +0x10000 (IP30: -19288 to -19276), the same 24-byte shift as in `gfP_OdsyHPconfig`. The slot checks, the restore
  of the first board's full-screen layout, the clearing of the others and the slot reset are unchanged.
- `gfP_OdsyHPunbind` (`odsy_hpipe.o`, offset 0x1260, 392 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)`.
  The IP35 build of the display-pipe unbind request, compared with the IP30 listing instruction by instruction, every instruction of the body: 110
  instructions in the same order. The board's current pipe number and pipe-use word are at -19280 and -19276 from
  +0x10000 (IP30: -19304 and -19300); the slot lock, the use-count decrement and the client context's halfword at
  +588 are unchanged.
- `gfP_OdsyHPqueryAttrib` (`odsy_hpipe.o`, offset 0x13e8, 708 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)`.
  The IP35 build of the display-pipe attribute query, compared with the IP30 listing instruction by instruction, every instruction of the body: 194
  instructions in the same order. The member-list pointer is at -19288 and the four layout words it copies into each
  112-byte entry are at -19264, -19260, -19256 and -19252 from +0x10000 (IP30: -19312 and -19288 to -19276). The
  attribute dispatch, the name copy, the size check and the copy-out are unchanged.
- `gfP_OdsyHPsetAttrib` (`odsy_hpipe.o`, offset 0x17f4, 740 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)`.
  The IP35 build of the display-pipe attribute set request, compared with the IP30 listing instruction by instruction, every instruction of the body: 200
  instructions in the same order. The four board layout words it stores from each entry are at -19264, -19260,
  -19256 and -19252 from +0x10000 (IP30: -19288 to -19276); the attribute dispatch, the compositor register 170
  writes and the tiling call are unchanged.
- `odsy_hpipe_discover` (`odsy_hpipe.o`, offset 0x64, 1460 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)`.
  The IP35 build of the display-pipe discovery, compared with the IP30 listing instruction by instruction, every instruction of the body: 408 instructions in
  the same order. The board's pointer to its pipe entry is at -19288 from +0x10000 (IP30: -19312); the two passes,
  the identifier registers 90 and 91 and the final 12-byte records are unchanged.
- `gf_OdsySetDisplayMode` (`odsy_retrace.o`, offset 0xc7c, 1192 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_retrace.o)`.
  The IP35 build of the per-window display-mode write, compared with the IP30 listing instruction by instruction, every instruction of the body: 309
  instructions in the same order. The start-up word that bypasses the display-FIFO semaphore is at -19328 from
  +0x10000 (IP30: -19352) and the global that holds the cursor command header is read through a different small-data
  slot; the FIFO header, the buffer-select shadow update and the writes to 0x10c4 and 0x10cc are unchanged.
- `odsyDMAWait` (`odsy_dma.o`, offset 0x243c, 940 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_dma.o)`.
  The IP35 build of the DMA wait, compared with the IP30 listing instruction by instruction, every instruction of the body: 262 instructions in the same
  order. The wait flag it sets while sleeping is at -19304 from +0x10000 (IP30: -19328), and the two range
  comparisons of the operation number are scheduled in a different order; the all-operations and per-operation
  waits, the ring check and the record reaping are unchanged.
- `gfP_OdsyPbufAssoc` (`odsy_drawable.o`, offset 0xe44, 452 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_drawable.o)`.
  Private request 36 on the IP35 build: makes a pixel-buffer group addressable by a drawable id; the whole body was read and matches the IP30 routine except for the placement of the message-pointer loads. It copies in 8 bytes (drawable id, group id; a copy failure logs and returns 14, a group id of -1 logs and returns 22 into the status cell). `OdsyLookupCSetId` finds share group 0 in the set at board +2368 (missing: log, 22) and then the group by id in that share group's set at +72 (missing: log, 22). The drawable id folded modulo 13 selects the reader lock at board +0x8660 (`mraccessf`) and the hash at board +0x10000 - 31144; a drawable already in the hash unlocks and returns 11. Otherwise `odsyCreateDrawable` makes it (failure: unlock, 12), its user count at +32 becomes 1, its type word at +36 becomes 2, its object pointer at +24 the group; the lock is promoted with `mrtrypromote` (failure: unlock, 13), the drawable is inserted with `odsyHashInsert` and the lock released. It returns 0 and copies nothing back.
- `gfP_OdsyPbufDeassoc` (`odsy_drawable.o`, offset 0x1008, 392 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_drawable.o)`.
  Private request 37 on the IP35 build: removes the association made by `gfP_OdsyPbufAssoc`; the whole body was read and matches the IP30 routine except that one message-pointer load moved a few instructions. It copies in 8 bytes (failure: log and 14), takes the board from owner +40, folds the drawable id (the two halves of the first word ORed together) modulo 13 and takes the reader lock at board +0x8660 with `mraccessf`. The drawable is looked up in the hash at board +0x8658 (missing: unlock, 22). A drawable whose object pointer at +24 is null logs at severity 4 and returns 0 with the lock still held. Otherwise it stores the group's id (its first word) in the second word of the message, promotes the lock with `mrtrypromote` (failure: unlock, 13), removes the drawable with `odsyHashRemove`, sets its type word at +36 to 1 and, when its user count at +32 is zero, destroys it with `odsyDestroyDrawable`. It then unlocks and copies the 8 bytes back out (failure: log and 14), and returns 0.
- `odsy_tpinit` (`odsy_tport.o`, offset 0x15e4, 496 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_tport.o)`.
  Prepares the board for text-port output on the IP35 build (argument: board base); the whole body was read and it matches the IP30 routine apart from where one argument move sits. `odsyPipeNrFromBase` gives the pipe, whose board record is found through the per-pipe table; the mute word in small data is set to 1 (with a `wbflush`) and the routine waits in 5 microsecond steps until the field in bits 15:7 of the register at +4204 reads zero. It then tries up to six times: it writes 0, 1, 0 to register +4228, 0 to +4212 and 1 to +4220, and runs `odsyInitCfifo` for the pipe stored in the record's halfword at +790; a failure runs `odsyReset` for that pipe and tries again, and the sixth failure logs severity 1 and leaves the port muted. On success it calls `odsyInitDBE` twice with two stored timing structures, copies the board's width and height (+232, +234) into the static port object, copies the board word at +1360 into two words of the stored state (+16676, +16700) and the word at +1496 into +16724, clears 11128 bytes of the hardware-state object, stores the word at +1336 divided by 16 into it at +6952, replays 4165 stored words to the FIFO port at +0x110000, calls the set graphics-context Odyssey driver request and clears the mute word.
- `odsyClipMask` (`odsy_clip.o`, offset 0x5bc, 520 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_clip.o)`.
  The IP35 build of the clip-mask routine, compared instruction by instruction with the IP30 build: the 136
  instructions are identical, so it computes the visible rectangles exactly as the IP30 entry describes (scissor box
  moved by the draw drawable's origin, four packed rectangles intersected with it, survivors stored relative to the
  origin at R +44, +60, +76 and +92 and counted at R +40).
- `gf_OdsyCreateDDRN` (`odsy_ddrn.o`, offset 0x50, 1000 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_ddrn.o)`.
  The IP35 build of the context creation routine, compared instruction by instruction with the IP30 build: the
  268 instructions are identical, so it creates the 592-byte context record, takes a 32 KB slot, allocates, maps and
  resets the 16 KB saved-state record and sets the read-back word exactly as the IP30 entry describes.

- `gfP_OdsyBRDMGRsetColors` (`odsy_brdmgr.o`, offset 0x0, 1680 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_brdmgr.o)`.
  The IP35 build of the colour-map request, compared with the IP30 listing instruction by instruction, every instruction of the body: 449 instructions in the
  same order. The only change is the start-up word that bypasses the display-FIFO semaphore, at -19328 from board
  record +0x10000 (IP30: -19352), in its three tests; the run splitting, header words, FIFO waits and semaphore
  release are unchanged.
- `gfP_OdsyBRDMGRcursor` (`odsy_brdmgr.o`, offset 0x13d0, 3396 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_brdmgr.o)`.
  The IP35 build of the cursor request, compared with the IP30 listing instruction by instruction, every instruction of the body: 902 instructions in the same
  order. Only the start-up word that bypasses the display-FIFO semaphore moves, to -19328 from +0x10000 (IP30:
  -19352), in its seven tests; the flag handling, the 60-, 512- and 256-byte blocks, the header words and the
  pending-cursor replay are unchanged.
- `odsy_LoadDCD2Regs` (`odsy_brdmgr.o`, offset 0x38ac, 1060 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_brdmgr.o)`.
  The IP35 build of the DCD2 clock and logic loader, compared with the IP30 listing instruction by instruction, every instruction of the body: 286
  instructions in the same order. Only the placement of the eight message-pointer loads on the failure paths
  differs; the device bytes 92, 31 and 23, the register values, the 600000 us wait and the write of 7 to register 50
  are unchanged.
- `gfP_OdsyBRDMGRVTGcontrol` (`odsy_brdmgr.o`, offset 0x5f54, 1200 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_brdmgr.o)`.
  The IP35 build of the timing-generator control request, compared with the IP30 listing instruction by instruction, every instruction of the body: 312
  instructions in the same order. The start-up word is at -19328 from +0x10000 (IP30: -19352), the header constant
  for the update-enable word comes from the next small-data slot (-30624 instead of -30632) and the copy-failure
  message is at a different offset; the flag handling and the two control-word writes are unchanged.
- `odsy_usb_comp_update_tiles` (`usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)`, 0x7f4): **established.**
  The member `odsy_hpipe.o` occupies 40 bytes. Its exact body matches the IP30 object: it loads the small-data base pointer at `ld` 0x7f4, adds 0xd0 in the `daddiu` delay slot at 0x808, calls the imported `cmn_err` at 0x804 with severity 4, and returns -1 from `addiu` at 0x810. It reads no arguments and writes no board register. The same body is exported as `usb_comp_update_tiles`.
- `usb_comp_update_tiles` (`usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)`, 0x7f4): **established.**
  This weak alias names the same 40-byte body as `odsy_usb_comp_update_tiles`: the `cmn_err` call is relocated at 0x804, its message pointer is formed at 0x808, and the return value is -1 from 0x810. It therefore has no hardware effect in this kernel.
- `odsy_usb_comp_readwrite_register` (`usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)`, 0x81c): **established.**
  The member `odsy_hpipe.o` occupies 40 bytes. Its exact body matches the IP30 object: it loads the small-data base pointer at `ld` 0x81c, adds 0xf8 in the `daddiu` delay slot at 0x830, calls the imported `cmn_err` at 0x82c with severity 4, and returns -1 from `addiu` at 0x838. It reads no arguments and writes no register.
- `usb_comp_readwrite_register` (`usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)`, 0x81c): **established.**
  This weak alias names the same 40-byte body as `odsy_usb_comp_readwrite_register`: the `cmn_err` call is relocated at 0x82c, its message pointer is formed at 0x830, and the return value is -1 from 0x838. It therefore has no hardware effect in this kernel.
- `odsy_program_compositor_tiling` (`odsy_hpipe.o`, offset 0x844, 1044 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)`.
  The IP35 build of the compositor tile programming, compared with the IP30 listing instruction by instruction, every instruction of the body: 278
  instructions in the same order. The board's layout words are at -19264, -19260, -19256 and -19252 from +0x10000
  (IP30: -19288 to -19276); the range arithmetic, the USB compositor branch and the registers 35 to 42 are
  unchanged.
- `odsy_i2cFixupAfterErr` (`odsy_ddc.o`, offset 0x0, 76 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_ddc.o)`.
  The IP35 build of the two-wire error recovery. Its 19 instructions and their relocations match the IP30 listing word for word (objdump of both members compared over 0x0 to 0x4c): it loads the two delay constants from the small-data words at gp-30720 and gp-30716, takes the larger with `slt` and `movn`, calls `odsy_usdelay` with the board pointer at port record +16 (the first call's delay slot holds the `movn`), calls `odsy_i2cReset` on the port record, loads a third constant from gp-30712 and calls `odsy_usdelay` again with the same board pointer.
- `odsy_i2cProbe2b` (`odsy_ddc.o`, offset 0x410, 6172 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_ddc.o)`.
  The IP35 build of the monitor-bus probe, compared with the IP30 listing instruction by instruction, every instruction of the body: 1584 instructions in the
  same order. Only the start-up word that bypasses the display-FIFO semaphore moves, to -19328 from +0x10000 (IP30:
  -19352), in its fifteen tests; every transfer, delay and result is unchanged.
- `odsyGatherInfo` (`odsy_init.o`, offset 0xedc, 1440 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_init.o)`.
  The IP35 build of the board identity reader, compared with the IP30 listing instruction by instruction, every instruction of the body: 394 instructions in
  the same order. The start-up word is at -19328 from +0x10000 (IP30: -19352), the revision-type jump table is at +464 of the
  read-only data where the IP30 build has it at +568, the same global table is reached through the next small-data slot (-30704 instead of
  -30720), and the three message strings are 104 bytes earlier; the revision-type jump table, the display-chip word
  and the SDRAM decoding are unchanged.
- `odsyGenlockInterrupt` (`odsy_intr.o`, offset 0x5c0, 4064 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_intr.o)`.
  The IP35 build of the genlock interrupt, compared with the IP30 listing instruction by instruction, every instruction of the body: 1094 instructions in the
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
- `text-port state set-up` (`odsy_tport.o`, offset 0x30, 2440 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`.
  Text-port graphics-state set-up, called with nine arguments: board base, a colour (index or 24-bit RGB), the word for block 0x022,
  a second colour for block 0x023, a mode (0, 1 or 2), the word for block 0x024, an enable flag, a colour-block flag and, on the stack,
  the colour-block value. `odsy_tpinit` calls it with mode 0 and the five constants 1, 3, -1, 3, 3; `odsy_drawbitmap` calls it with the
  enable flag set before drawing and clear afterwards. Everything goes to the command FIFO port at +0x110000, each store followed by a
  `sync`, and the state is kept in the hardware-state object, whose offsets are the shadow offsets of `buzz/README.md` section 8.
  In order: the 0x024 operand (+11112) is the fifth argument, or 12 when the mode is 2; one full settle group of `BUZZ.h` section 5 (0x10443 with
  250, two 0x10046, 0x10019, 0x10443 with 150, four 0x10046, 0x10443 with 250, two 0x10046) is sent, then block 0x024 and the second half
  of the settle group. The raster-mode word at +132 gets bits 0x18 set when the enable flag is nonzero and bits 0x18 and 0x20000 cleared
  otherwise. Mode 1 (RGB) sets bit 20 of that word, writes 0 and 2 to the cache at +9828 and +9832 (`sw` at 0x274 and 0x27c), and
  sends the sequencer words 0x22008000 and 0x23008000 with the cached values ORed into their low bits, which gives the RGB pair;
  modes 0 and 2 (colour index) set bit 19 and store the pair 0x22008001 and 0x23008003. When the colour-block flag and the enable flag are both set,
  the routine first writes the constant-colour block 0x021 from +188, +192 and +196: 512, then the stack value widened to 12 bits a channel
  (RGB mode), or 512, the stack value shifted left by 12 and 1 (index mode), and sets bit 17 of the raster-mode word. It sends block 0x004
  from +132, the sequencer pair, and the colour: RGB mode sends 0xc580cc08 and the three bytes of the first colour, index mode sends 0xce80cc08, three zeros,
  0xc580c406 and the colour itself. The second colour fills +232 and +236 (RGB: widened per channel; index: shifted left by 12 and 1) and goes out in block
  0x023 with the words at +240 and +244. A six-word entry of 24 bytes, chosen by the mode from the table at +16664 of the second static object, is packed into
  the block 0x022 word kept at +6956 of the hardware-state object (bits 15:13, 19, 12:10, 9:7 and 6:4 from entry words 16, 20, 4, 0
  and 8, bit 29 always set); the entry's word 12 becomes the first of the four operands of block 0x017 at +6948 to +6960. The routine writes block 0x022 from the
  third argument (+200), then sends block 0x017 four times, each time with a settle group in front or behind: the packed word, then the third operand zero,
  then the third operand with bit 23 set, then the packed word again; the third word of block 0x017 therefore carries bit 23 only transiently (`questions/README.md`, drawable registers).
  What the entry words and the enable flag mean on the board stays inferred: what bits 0x18 of the raster word enable is unknown from the binary alone; a read of where `libGLcore` sets the same bits would settle it.
- `odsy_drawbitmap` (`odsy_tport.o`, offset 0xf8c, 1716 bytes): **established.**
  Build: `6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`.
  Text-port glyph draw (arguments: board base, bitmap record with the row pointer at +0, width +8, height +10, x and y origin +12 and +14, x and y advance +16
  and +18, row stride in halfwords +20). It returns when the mute word is set, otherwise counts itself in use, takes the text-port lock and calls
  the set graphics-context Odyssey driver request with the enable flag set. The bitmap is walked in bands of at most 64 rows and cells of at most 16 columns. For each cell it copies
  the cell's rows, bottom row first, as halfwords to the start of the hardware-state object (the 16-word stipple pattern), sends block 0x03f with 6, the pattern as
  blocks 0x04e and 0x04f (16 words each), the primitive begin 0x14400 with 7, four 0x8080c800 vertices (the cell's left and right columns by its bottom and top rows, flipped against the
  port height at +16 of the static port object, with the glyph origin and a one-row offset applied) and 0x14001. A nonzero word at +7036 puts an extra 0x10443 group in front of the
  closing settle group. When the bitmap is done it adds the x and y advance to the cursor in the static object, calls the set graphics-context Odyssey driver request again with the enable flag clear, sends one more
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
  +80. The request holds four clear-value words at +0 to +12, one more word at +16, a rectangle at +20 to +32 and band height at +36 and a flag word at +40 (`lw` at 0xd08). When bit 27 of the
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
  Selects a transform microcode program on the IP35 build; the whole body was read. Argument checks, the three `odsyDownloadUcode` calls (the recorded hardware line from +11064, the second
  segment at hardware line 1848 capped at 199 lines against the length word at +0x8554 from the board record, then the entry line from +11000 and +11004), the entry-number limit of 254 and the signal-9
  failure path are those of the IP30 entry. The sequencer words 0x33008000, 0x29008000, 0x90808800 with two zeros and registers 0x33, 0x29, 0x2a and 0x2c are stored one at a time
  through the pointer at board record +864, each time reloaded, with no `sync`; every failure message names the board by its halfword at +790.
- `odsyRestoreVertex` (`odsy_ctxsw.o`, offset 0x5764, 340 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_ctxsw.o)`.
  Replays one saved vertex group on the IP35 build; the whole body was read. Argument n picks the descriptor at saved +140 + 8n for `odsyRestoreVB`, the program slot at +11040 + 4n goes to
  `odsySetProgram` when the count at +10972 is nonzero, and the command word at saved +256 + 4n is sent with the operands counted by its bits 13:10 from +768 + 16n. A zero-count word other than
  0x3000c02e or 0x2f00c02e (bits 22:16 ignored) logs severity 7 with the message and values at the literal-pool offsets 560 and 1280. Every store goes through the pointer at board record +864, loaded
  again before each word, and no `sync` follows.
- `restoreRect` (`odsy_ctxsw.o`, offset 0x5e24, 684 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_ctxsw.o)`.
  Replays saved rectangle vertex words on the IP35 build (arguments: board record, saved record, vertex count, last index n); the whole body was read. The ring base is the pointer at saved-record +192: entry k has its command word at ring +256 + 4k and up to four operand words at ring +768 + 16k. With a vertex count of 2 or more it replays entry (n + 2) mod 4 and then entry (n - 1) mod 4; with a count below 2 it replays only entry (n + 3) mod 4 (all three remainders signed, as the compiler's sign-fixing sequence makes them). A replay stores the command word to the FIFO pointer at board record +864, then as many operand words as bits 13:10 of the command word say, each store reloading the pointer.
  A command word whose count field is zero is sent only if clearing bits 22:16 leaves 0x3000c02e or 0x2f00c02e; any other zero-count word is not sent and logs "odsy: illegal attr restore cmd: %s = 0x%x" at severity 7 with the name "pio rect vertex 0" (first of the pair), "pio rect vertex 1" (second) or "rect vertex" (the single replay). After a rejected first entry the pair carries on with the second; after a rejected second or single entry the routine returns.
- `gfP_OdsyGLGet` (`odsy_ctxsw.o`, offset 0x6204, 536 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_ctxsw.o)`.
  Private request 7 on the IP35 build (arguments: manager object, board, user pointer, result word); the whole body was read. The result word is zeroed first. A set teardown word at board +816 logs a severity 4 message with the board number and the routine goes on. The client behind +72 then +112 must exist (else log and result 1). It copies in 4 bytes (a fault logs and gives 14), `RRM_CheckValidFault` must not be negative (else 14), and the client's busy count at +80 goes up. The slot is the low 16 bits of the board word at +0x8608 times 128, added to the table behind pointer +192 of the saved record; the word at +124 of that slot is cleared. The selector (the copied word) picks a command number: 0, 1, 2 and 3 give 1216, 1217, 1218 and 1219 (0x4c0 to 0x4c3); any other value takes the second stack word, which the 4-byte copy leaves unset. The routine stores the doubleword (command number in the upper half, 1 in the low bit) through the pointer at board +864 (the IP30 routine addresses base + 0x110000), arms the small-data watchdog with `timeout` for 1500 ticks and polls the slot's word at +124 in 1 microsecond steps until it is nonzero or the teardown word becomes set. It then calls `untimeout_wait`, sets the result to 14 if the board was torn down, lowers the busy count and returns the result word.
- `odsyRestoreGfe` (`odsy_ctxsw.o`, offset 0x4208, 1448 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_ctxsw.o)`.
  Replays the geometry-engine part of a saved context on the IP35 build (arguments: board record, context); the whole body was read and returns nothing. Every word goes to the FIFO pointer at board record +864 with the pointer reloaded for each store and no `sync`. The saved record is behind context +192 and the hardware shadow behind context +176. A flag is set when the context id at +0 is nonzero and differs from the board's id at +820.
  Fixed part: 0x14400 and a zero, 0x14001, 1856, 491, 3905, the saved word at +172, two zeros, 17776, the saved word at +184, 1200 and the shadow word at +7052. With the flag clear it returns here. With it set it replays four packets whose headers are at saved +576, +592, +608 and +624 and whose payloads start at +2048, +2112, +2176 and +2240; each header's operand count is in bits 13:10. A header with a zero count is sent only when clearing bits 22:16 leaves 0x3000c02e or 0x2f00c02e; otherwise it is skipped and logs "odsy: illegal attr restore cmd: %s = 0x%x" at severity 7 with the name "rp index", "rp color", "rp texA" or "rp texB" in that order. Finally it sends the markers 15608, 15609, 15610 and 15611, each followed by sixteen zero words.
- `odsyRestoreXform` (`odsy_ctxsw.o`, offset 0x2854, 2556 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_ctxsw.o)`.
  Replays the transform engine's saved state on the IP35 build (arguments: board record, context); the decompiled listing was read through and checked against the assembly at its branches, and it returns nothing. Every word goes through the FIFO pointer at board record +864, reloaded for each store, with no `sync`. The state is the hardware-state structure behind context +176. The full replay runs when the context id at +0 is nonzero and differs from the board's id at +820; the steps marked "always" run for every context.
  Full replay. Register 0x31's 512-word table in 32 groups of 16, skipping the groups at 320 and 480: the index word 0x31008000 with the index in bits 9:0 and its upper bits shifted left 23, the block word 0x9080bda2 (0x9000bda2 for the group at 160), the 16 words from state +7356 + 4 times the index, and a reselect of the saved index at +9888. Then register 0x29 set to 410 (0x2900819a), register 0x32 to 24 (0x32008018), the block word 0x8e809015 with the four words at state +9788, and data-memory entries 0 to 23 (index word 0x32008000 with the entry number, 0x8e809015, four words from state +9404 + 16 times the entry).
  Always. Register 0x28 cleared (0x28008000). The entry list: a count at state +10972 below 255 sends that many words at state +9948 as 0x60008000 plus the spread value; a count of 255 or more logs "odsy board %d: odsySetProgram: program table size %u exceeds maximum" at severity 4, signals the current process with 9 through `psignal` and returns before sending anything further. The word at +9900 is saved first; each index word below is built from that word after it is set to the index. The 68-word table behind register 0x34 follows: index 0 with 0x9080bdc8 and 16 words from state +6672, index 16 with 0x908091df and 4 words from +6736, and, in the full replay only, index 36 (16 words from +6752), index 52 (16 from +6816) and index 20 (16 from +6880), each opened by the index word 0x34008000 plus the index and closed by a reselect of index 0. The saved word at +9900 is then restored in memory.
  Always. The sequencer registers 0x20 to 0x35 from the words at state +9820: each is sent as 0x20000000 OR the register's low bits shifted left 24 OR 0x8000 OR the spread value, skipping registers 0x26, 0x2b, 0x2d, 0x2f and 0x30; register 0x2e is sent as the fixed word 0x2e008380 when its saved word is zero.
- `odsyRestoreVB` (`odsy_ctxsw.o`, offset 0x3250, 4024 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_ctxsw.o)`.
  Replays the vertex attribute slots on the IP35 build (arguments: board record, context, vertex descriptor, an unused word, count); the decompiled listing was read line by line, and the selector tests were checked in the assembly, and it returns nothing. Words go through the FIFO pointer at board record +864, reloaded for each store, with no `sync`. The saved record is behind context +192. The descriptor is two words of 2-bit selectors; each attribute slot is a four-entry array of command words at record offset c, the selector picking the entry, followed by up to the operand count in bits 13:10 of that word, read from record offset d plus 16 times the selector (4 words per entry).
  Slots (command array, operand base, selector, name logged): 272 (832) word 0 bits 31:30 "index"; 288 (896) word 0 bits 29:28 "color"; 304 (960) bits 27:26 "normal"; 320 (1024) bits 25:24 "tangent"; 336 (1088) bits 23:22 "texcoordA"; 352 (1152) bits 21:20 "texcoordB"; 368 (1216) bits 19:18 "edgeflag"; 384 (1280) bits 17:16 "famb"; 400 (1344) bits 15:14 "fdiff"; 416 (1408) bits 13:12 "fspec"; 432 (1472) bits 11:10 "femis"; 448 (1536) bits 9:8 "fshininess"; 480 (1664) bits 5:4 "bamb"; 496 (1728) bits 3:2 "bdiff"; 512 (1792) bits 1:0 "bspec"; 528 (1856) word 1 bits 31:30 "bemis"; 544 (1920) word 1 bits 29:28 "bshininess".
  The full replay runs when the context id at +0 is nonzero and either differs from the board's id at +820 or the count argument is positive. It sends slots 384, 400, 416, 432, 480, 496, 512, 528, 304, 320, 336 and 352 in that order; then the four-operand block 0x908091ea, built from operand 0 of the selected "fshininess" entry (record +1536 + 16 times the selector), its value with bit 31 flipped, operand 0 of the selected "bshininess" entry (+1920 + 16 times the selector) and its flipped value; then slots 448 and 544. Whether or not the full replay ran, it then sends 272, 288 and 368.
  A command word with a zero operand count is sent only when clearing bits 22:16 leaves 0x3000c02e or 0x2f00c02e; any other such word is skipped and logs "odsy: illegal attr restore cmd: %s = 0x%x" at severity 7 with the slot's name and the word, and the routine goes on with the next slot.
- `odsyRestartContext` (`odsy_ctxsw.o`, offset 0x4c50, 2836 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_ctxsw.o)`.
  Restarts an interrupted primitive after the other replays on the IP35 build (arguments: board record, context); the decompiled body was read to its end and the assembly settled the tests that choose between paths, and it returns nothing. Words go through the FIFO pointer at board record +864, reloaded for each store, with no `sync`. The hardware state is behind context +176 and the saved record behind +192. The saved primitive word at record +128 gives the type in bits 3:0 (0 to 10; anything higher is treated as 15, an invalid type) and two counts, a in bits 5:4 and b in bits 7:6; its bits 23:21, 15:14 and 13:12 are index fields, and the roles of these fields are inferred from the arithmetic below.
  Opening: 0x34008000 (register 0x34 index 0), the 16-word settle group, block 0x017 as 0x11017 with the four words at state +6948, +6952, +6956 and +6960, a settle tail, 0x11017 again with the third word replaced by zero and then with bit 23 set in it, the full settle group, 0x11017 once more with the saved words, and a settle tail.
  Type 10 (rectangle): when the rectangle mode in the low three bits of the state word at +6964 is nonzero and b is nonzero it sets a to 0 and marks the rectangle flag; when the record word at +172 is nonzero it calls `odsyRestorePIOPixel`. In either case of the mode it then calls `odsySetProgram` with the number at state +11056, `odsyRestoreVB` with the record at +132 as descriptor and count 0, sends (mode nonzero only) the ten-operand block 0xcf80a92f from state +6988, the four register words 0x33, 0x29, 0x2a and 0x2c built from the words at state +9896, +9856, +9860 and +9868 as register number in the top byte plus the spread value, and 0x10658 and 0x00120000.
  All types: bits 7:4 of the record word are cleared; the field in bits 23:21 becomes (field - a) & 7 when it was below 7 and 7 otherwise; the field in bits 13:12 becomes (field - a + 3) mod 3 and the one in bits 15:14 becomes (field - a + 4) & 3; bit 11 takes the new value of bit 14. A flag is set when the new 23:21 field is nonzero and the type is not 2, 6 or 9. The block 0x050 operands are built from the context id (bits 18:12 of the first, with the type in bits 3:0) and the fields; outside the rectangle case the first carries flag bits derived from the 23:21 field and the type. For a valid type it sends 0x10400 and the type and 0x10444 and 0; it then sends 0x10850 with the two words and, for a valid type, 0x740, 0x1e0 and 0x741 and the record word; with a nonzero a it then calls the vertex replay routine for the type through the table in `.data` (`restorePoints`, `restoreLines` and the rest, indexed by type), with a zero a and the rectangle flag it sends the vertex word 0x8080c800 and two zeros.
  For a type other than 10 it calls `odsyRestoreVB` with a as the count; when the program count at state +10972 is nonzero it calls `odsySetProgram` again, sends the four register words as above and then 0x278083ff and 0x280080ff; for the invalid type it ends the section with 0x10658 and 0x00120000.
  Partial packet: when the record word at +180 is nonzero it resends the saved partial command words. With c = (the count at +188) - 1 (0 when the count is 0): if c is odd it sends the doubleword 0x0000007100005c70, then the doubleword with +176 below and +180 above, two zero doublewords and the word at +4 zero-extended, continuing from +8; if c is even it sends the doubleword with 0x5c7 shifted left 36 ORed with +180, the doubleword of +176 in the upper half and two zero doublewords. Either way it then sends the register 0x34 index word from state +9900 (0x34008000 plus the spread value), the remaining words in pairs as doublewords (earlier word in the upper half) and a last odd word as a 32-bit store. The section opens with a discarded read of an uncached literal-pool address.
- `odsyRestoreRaster` (`odsy_ctxsw.o`, offset 0xc3c, 7192 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_ctxsw.o)`.
  Replays a context's raster state on the IP35 build (arguments: board record, context); the decompiled listing was read in full and its block order confirmed in the assembly, and it returns nothing. Words go through the FIFO pointer at board record +864, reloaded for each store, with no `sync`. Offsets below are into the hardware-state structure behind context +176, which has the same layout as in the IP30 build. The full replay runs when the context id at +0 is nonzero and differs from the board's id at +820; without it only the opening blocks and the two mode groups are sent, and the routine goes straight to the closing words.
  Opening, in order, with the 16-word settle group (0x10443, 250, 0x10046 twice, 0x10019, 0x10443, 150, 0x10046 four times, 0x10443, 250, 0x10046 twice) or its tail between the groups: block 0x017 (0x11017, four words from +6948); 0x023 (four from +232); 0x052 (+228); 0x01d (+168 and +172); 0x053 (0x11453, five words from +6964); 0x004 (+132); 0x005 (+136); 0x022 (+200); 0x015 (+140); 0x056 (+7344); 0x048 (+204 to +212); 0x03f (+128); 0x04e (16 words from +0); 0x04f (16 from +64); 0x04a (+220 and +224); 0x01b (five from +312); 0x016 (seven from +332); 0x051 (+6944); 0x04c (+7340); 0x021 (+188 to +196).
  Mode groups: the word at +4464 selects block 0x03b (8 words from +4468) for 2, block 0x03d (2 words) for 3, and blocks 0x030 to 0x033 (8 words each from +4468) for any other value; the word at +4204 selects block 0x038 (16 words from +4208) for 2, block 0x03a (4 words) for 3 and blocks 0x028 to 0x02b (16 words each) otherwise.
  Rest of the full replay: blocks 0x01e (+176), 0x01f (+180), 0x020 (+184), 0x058 (+216), 0x01a (six from +144), 0x047 (six from +7060), 0x013 (four from +7084), 0x03e (three from +4596); five 256-word tables, each as 16 blocks of 16 words: 0x220 to 0x22f from +1132, 0x230 to 0x23f from +2156, 0x240 to 0x24f from +3180, then 0x200 to 0x20f from +4612 and 0x210 to 0x21f from +5636 interleaved block by block (0x200 and 0x210 first); the 64 level descriptors 0x280 to 0x2bf (header, then three words each from +360 at a 12-byte step); block 0x006 (+1128), a settle group, block 0x018, block 0x01c (+6660 to +6668), block 0x057 (+7348), block 0x04d (16 words from +248), block 0x042 (+7332 and +7336), and the eight blocks 0x250 to 0x257 (six words each from +7132 at a 24-byte step, highest first), each preceded by block 0x007 carrying the index.
  Then, with a nonzero context id it calls `odsyPushBufferSelect`; with id zero it sends block 0x04b (eight words from +11072), 0x041 (+11104 and +11108), 0x024 (+11112) and 0x040 (+11116 and +11120) with settle groups between them. Every path ends with the settle tail, 0x10658 and the word 0x00110000 (the IP30 build ends with 0x00120000 here).
- `odsyClipPush` (`odsy_clip.o`, offset 0x7c4, 900 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_clip.o)`.
  Sends the clip record R (second argument) to the board on the IP35 build; the whole body was read. Every store goes through the FIFO pointer at board record +864, reloaded each time, with no `sync` (the IP30 build stores to the port at +0x110000 and syncs after each word). The hardware shadow is behind R +176.
  Order: the settle group (0x10443 and 250, 0x10046 twice, 0x10019, 0x10443 and 150, 0x10046 four times, 0x10443 and 250, 0x10046 twice); 0x31008140, 0x9000bda2 and 0x10019; block 0x041 as 0x10841 with R +108 and R +112; 0x10840 and one doubleword with the board record's word at +1496 in the upper half and R +4 below; 0x1204b and four doublewords, upper half R +8 + 8i and lower half R +12 + 8i for i = 0 to 3; the sequencer word 0x31008000 with bits 9:0 of the shadow word at +9888 and its upper bits shifted left 23; then, when bit 27 of the shadow word at +6956 is clear, the word 0x90008116, or, when it is set, the reset forms 0x10841 with two zeros, 0x1204b with the eight words 0, 0, 0, 0xffffff and four more zeros, and 0x10840 with two zeros. The settle tail follows (0x10443 and 150, 0x10046 four times, 0x10443 and 250, 0x10046 twice).
  It ends with eight doublewords whose upper half names a register, 0x608, 0x60a, 0x609, 0x60b, 0x60c, 0x60d, 0x60e and 0x60f in that order, and whose lower half is R +140, +148, +144, +152, +156, +160, +164 and +168.
- `gf_OdsyPcxSwap` (`odsy_ctxsw.o`, offset 0x560, 1756 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_ctxsw.o)`.
  Switches the board from one graphics client to another on the IP35 build (arguments: board record, outgoing client, incoming client; either may be null); a full read of the decompiled listing, then of the assembly at every conditional. It returns 0 or -1. The context behind a client is at client +112; its id is at context +0, its saved record behind +192 and its hardware state behind +176. A null incoming client stands for id 127, the "no context" slot. FIFO words go through the pointer at board record +864.
  A set teardown word at board +816 logs "odsy board %d: gfx ctxsw aborted due to abnormal teardown" at severity 1 and returns -1 at once. Otherwise it calls `gfx_waitc_on`, and for an incoming client `gfx_flow_clean_up_other_gfxp` on its manager. When `odsy_flow_am_i_attached` says the caller is not attached to flow control it takes `splhi`, sets bit 1 of the manager's flag word at +4, and, if the handle at +808 exists and `gfx_flow_am_i_attached` says no, pins the thread, attaches (`gfx_flow_attach_me`), rewrites the shadow of 0x1074 with the credit target number in bits 16:12, stores it, clears 0x107c, awaits returned credits, finishes the attach and unpins; the same attach and the same detach block as in `odsyInitCfifo` bracket the work.
  Save: with an outgoing context it clears the completion word at its saved record +2300, stores the doubleword (7 shifted left 40) OR (incoming id shifted left 16) OR 1 to 0x118000 with a `sync`, arms `timeout` for 1500 ticks with `odsy_ctxsw_timeout`, and polls the completion word in 1 us steps until it is nonzero or the teardown word at +816 becomes set. A set teardown word detaches from flow control and returns -1. Otherwise, when the outgoing record's primitive type (low four bits of its word at +128) is below 11 it sends 0x10444 and 0; it sends 0x10443, 250, 0x10046 twice and block 0x050 as 0x10850 with 0x7f00f and 0, selecting slot 127 with type 15. When the outgoing context has a hardware state and a nonzero id it calls `odsyDownloadUcode` with the state word at +11064; a failure logs "odsyPcxSwap: dirty fetchcond addr is invalid" at severity 4 and signals the process with 9.
  Restore: for an incoming context it converts its saved record with `kvtophys`, keeps the address at board +34256 and +34252 (low word, high 16 bits), stores the high 16 bits to 0x4004 and the low word to 0x400c with a `sync` after each, and calls `odsyMMvalidatePcxSwap`. When the incoming manager's flag bit 1 is set it calls `gf_OdsyValidateClip`. When the context's word at +564 is set and the board's current id at +820 is neither 0 nor 127 it sends only a short re-select (0x10850 with the id in bits 18:12, 0, then 0x14400, 0, 0x14001, 0x740, 0x1ed, 0x741 and 0); otherwise it calls `odsyRestoreXform`, `odsyRestoreRaster`, `odsyRestoreGfe` and `odsyRestartContext`. It clears +564 and, when the incoming id is nonzero and differs from the board's current id, clears the word at +11060 of the previous context's hardware state (previous id other than 127, looked up in the table behind board +28456) and stores the incoming id at +820. The detach block and `gfx_waitc_off` end every successful path.
- `gfP_OdsySaveHwShadow` (`odsy_ctxsw.o`, offset 0xc0, 1184 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_ctxsw.o)`.
  Private request 12 on the IP35 build (arguments: manager object, client node, user pointer, result word): writes a client's hardware shadow back to its saved record; the decompiled body was followed from entry to each return and the assembly confirmed its tests. The result word is zeroed first and receives the return value, which is 0, 1, 14 or 22.
  Checks, in order: no current client behind +72 then +112 logs "odsy: attempted sharegroup operation from unbound gfxp" at severity 4 and gives 1; `RRM_CheckValidFault` negative gives 14; a set teardown word at board +816 logs "odsy board %d: gfx hw pushback aborted due to abnormal teardown" at severity 1 and gives 14. A nonzero third argument takes a different route: it raises the board's lock count at +80, calls the routine at +120 of the manager's function table (manager +32) and lowers the count, result 0. With a zero third argument a null client node or a client with no context (+112) gives 22.
  Direct route: it attaches to flow control exactly as `gf_OdsyPcxSwap` does when the caller is not attached (set bit 1 of the manager's flag word, pin the thread, `gfx_flow_attach_me`, 0x1074 rewritten with the credit target number in bits 16:12, 0x107c cleared, await returned credits, `gfx_flow_attach_me_finish`, unpin). It clears the completion word at the context's saved record +2300, stores the doubleword 0x00000700007f0001 (the save request with slot 127, "save with no switch") to 0x118000 with a `sync`, arms `timeout` for 1500 ticks with `odsy_ctxsw_timeout` and polls the completion word in 1 us steps until it is nonzero or the teardown word becomes set. If the teardown word is set it detaches from flow control and gives 14; otherwise it detaches (waiting for returned credits first when the hold word at +104 is zero and the credit count is below the bias, then 1 to the shadow of 0x107c and to the register, read back, `gfx_flow_detach_me`, bit 1 of the flag word cleared) and gives 0.
- `gfP_OdsySetDrawBuffer` (`odsy_drawable.o`, offset 0x53c, 676 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_drawable.o)`.
  Private request 9 on the IP35 build (arguments: manager object, board, user pointer, result word): sets the draw buffer; the whole body was read. The result word is zeroed. A missing current client (the pointer behind +72 then +112) logs at severity 4 and gives result 1. It copies in 4 bytes (a fault logs and gives 14), stores that word at +568 of the client's record, and `RRM_CheckValidFault` must not be negative (else 14). A process already attached to flow control (`odsy_flow_am_i_attached`) just runs `odsyPushBufferSelect` with the record and the register base and returns 0. Otherwise it raises the level with `splhi`, sets bit 1 of the client's flag word at +4, and, when the flow handle exists and the process is not attached, pins the thread (`rt_pin_thread`), attaches with `gfx_flow_attach_me`, stores the credit target word at -31292 from +0x10000 (its old value under a small-data mask, ORed with the word at -19376 shifted left 12) there and in register 0x1074, clears the word at -31288 and register 0x107c, restores the level, waits in `odsy_flow_await_returned_credits`, raises the level, completes the attach with `gfx_flow_attach_me_finish` and unpins. It then runs `odsyPushBufferSelect` and, still holding the temporary attachment, detaches again: with the board word at +104 clear it first waits for returned credits as in `gf_OdsyDestroyDDRN` when the credit count is below the bias, then stores 1 at +0x85c8 and in register 0x107c and calls `gfx_flow_detach_me` with the register's value; finally it clears bit 1 of the flag word, restores the level and returns 0.
- `gfP_OdsyMakeCurrent` (`odsy_drawable.o`, offset 0xab0, 916 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_drawable.o)`.
  Private request 8 on the IP35 build (arguments: manager object, unused, user pointer, result word): binds the client to its drawables; every statement of the decompiled routine was read and the assembly decided its branches. The result word is zeroed and finally holds 0, 1 or 14, which is also the return value.
  A missing current client (behind +72, then +112) logs "odsy: attempted sharegroup operation from unbound gfxp" at severity 4 and gives 1. It copies in 80 bytes (a fault logs "ODSY_gfP_OdsyMakeCurrent: bad ptr to arg" and gives 14), `RRM_CheckValidFault` negative gives 14, and it raises the board's lock count at +80. When the caller is not attached to flow control it attaches for the duration of the call exactly as `odsyInitCfifo` does (`splhi`, flag bit 1, pin, `gfx_flow_attach_me`, 0x1074 with the credit target number, 0x107c cleared, await returned credits, `gfx_flow_attach_me_finish`, unpin) and detaches again at the end with the usual credit wait, 1 to 0x107c and `gfx_flow_detach_me`.
  Binding: it calls `odsyUnbindDrawable` for classes 1 and 2, then `odsyBindDrawable` for class 1 with the first word of the argument and class 2 with the doubleword at +40, copies five doublewords from context +472 to +504 into argument bytes 0 to 39 and five from +520 to +552 into bytes 40 to 79, calls `odsyClipPush`, lowers the lock count and copies the 80 bytes out (a fault logs and gives 14).
- `gf_OdsyDestroyDDRN` (`odsy_ddrn.o`, offset 0x438, 752 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_ddrn.o)`.
  Destroys a client's context record on the IP35 build (arguments: board record, the manager's object, the resource node); the whole body was read. When the node is the manager's first node it runs `gfx_flow_clean_up_other_gfxp` and, on a live board (teardown word +816 clear), either zeroes the started halfword at +794 when the context's read-back word is nonzero (slot found from the board word at +0x8608, low 16 bits times 128, in the table behind +192 of the saved record, word +124) or calls the manager's callback at +120 of the object's operations table with the node (a nonzero result logs at severity 4 and the routine returns 1). A global pointer is also read once up front where the IP30 routine loads from the fixed uncached address 0xaff00080. The record's id is cleared from the board's current-context word (+820) when it matches, a pending swap is unscheduled with `gf_OdsyUnSchedSwapBuf` (when the node's +28 is not negative) and any retrace event with `gf_OdsyUnSchedRetraceEvent`. When the record's flag at +408 is zero it runs `odsyDMAFinish`, `odsyMMdetach` and `odsyUnpinAndUnmapGctxRegions` and sets the flag. Then come `odsy_hpipe_cleanup`, clearing of +224 and of the node's +112, release of the 16 KB saved record (+192) and the 32 KB slot (`OdsyFree32kSlot` on the number at +244). For the last context (count at +28480 equal to 1), under `splhi`, a client attached to flow control is detached: with the board word at +104 clear it first compares `gfx_flow_credit_count_get` with `gfx_flow_credit_bias_get` and, when the count is lower, pins the thread (`rt_pin_thread`), restores the interrupt level, waits in `odsy_flow_await_returned_credits`, raises the level and unpins; it then stores 1 at -31288 from +0x10000 and to register 0x107c and calls `gfx_flow_detach_me` with the register's value. The flow handle is released with `gfx_flow_dealloc` and the words at -31292 and register 0x1074 are cleared. The record's id becomes -1 and the context count goes down by one.
- `gf_OdsySchedSwapBuf` (`odsy_retrace.o`, offset 0x380, 1276 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_retrace.o)`.
  Schedules a buffer swap for one window id on the IP35 build (arguments: board record, client node, window id); the routine was read whole in decompiled form, and its conditions were settled in the assembly. It returns 0, 16 or 22. The client's manager is at node +64, its context at +112 and the drawable record at +120. An id of 32 or more (the test is signed, so a negative id passes and means "no id") logs "gf_OdsySchedSwapBuf: wid %d is out of range" at severity 4 and returns 22.
  When the caller is not attached to flow control it attaches for the call as `gfP_OdsyMakeCurrent` does, calls `odsyPushBufferSelect` with the context and the register base, and detaches again with the usual credit wait.
  Under the mutex at board +28504 (taken at priority 25) it tests bit id of the pending mask at +28568. If the id is pending and the per-id record's drawable doubleword at +28608 + 40 x id is nonzero it drops the mutex and returns 16; if that word is zero it waits on the synchronisation variable at +28520 (releasing and retaking the mutex) until the bit clears. It then clears the group mask word at +28544 and 0x10bc, when the word at +28544 is nonzero and the group count at +28536 is zero, and sets the id's bit in the pending mask.
  The swap-group mask: with a nonnegative id it starts with the id's own bit; when the drawable's group count at +160 is nonzero it walks the drawable's circular list (links at +168, member id at +20) ORing in each member's bit, and when the board's group count at +28536 equals the drawable's count and the mask differs from the stored one it stores the mask to 0x10bc with a `sync` and at +28544. A negative id with a group calls `rrmValidateBuffer` for the client and fills no record.
  Per-id record (40 bytes at +28584 + 40 x id): the context at +0, the drawable at +24, the halfword at context hardware state +11068 at +8, the group mask at +16, zero at +36, and the lower of drawable +24 plus +28 and drawable +24 plus the board word at +128 at +12. The words at +28572 and +28576 take bit id from the drawable halfword at +18 and the context word at +580 (the old bit cleared first). If the table behind board +880 indexed by context +244 does not hold the record's halfword the id's bit is added to the deferred mask at +28548 and the swap is left to the retrace handler; otherwise `odsySwapBuffer` runs at once. The mutex is released before returning 0.
- `gf_OdsyDownload` (`odsy_ucode.o`, offset 0x120, 1092 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_ucode.o)`.
  Private-request handler that loads microcode supplied by a client on the IP35 build (arguments: manager object, request); the decompiled body was followed from entry through every return and the assembly confirmed its conditions. The request holds a byte length at +0 and a user address at +8. It returns 0, 14 or 22.
  The length divided by 12 must lie between 1 and 4093 lines (otherwise "odsyDownload: invalid ucode length = %d" at severity 4, result 22) and the remainder must be zero (otherwise "invalid ucode alignment = %d %% 12", result 22). `userdma` pins the buffer (failure logs "unable to lock ucode", result 14); the line count goes to board +34132; `maputokv` maps the buffer (a null result logs "unable to map ucode" and the code goes on to copy anyway); `bcopy` copies the bytes to the buffer at board +34136; `undma` and `unmaputokv` release the pin and the mapping.
  It then makes the manager the owner of the graphics semaphore (when the owner at +72 is another manager it does `psema` on +56 at priority 537, takes ownership and polls the hold word at +104 in 2 us steps until it is zero), raises the lock count at +80, sets bit 1 of the manager's flag word and attaches to flow control if the caller is not attached (pin, `gfx_flow_attach_me`, 0x1074 with the credit target number, 0x107c cleared, await returned credits, `gfx_flow_attach_me_finish`, unpin). It calls `odsyDownloadUcode` for line 0 with at most 2047 lines. Both outcomes detach again (credit wait when the hold word is zero and the credit count is below the bias, then 1 to the shadow of 0x107c and to the register, a read back and `gfx_flow_detach_me`), clear flag bit 1, lower the lock count and return 0 on success or 22 when `odsyDownloadUcode` refuses.
- `gf_OdsyValidateClip` (`odsy_clip.o`, offset 0x0, 1468 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_clip.o)`.
  Rebuilds a context's clip record R and pushes it to the board on the IP35 build (arguments: manager object, client node; two more arguments are not used); the decompiled listing was read from first line to last and the assembly settled each branch. It always returns 0. R is the context at node +112, D the draw drawable at node +120 and E the read drawable at node +128; the drawable's rectangle list has its count at D +120 and a pointer at D +128 to 16-byte entries (x, y, width, height).
  Under the board's lock count (+80) it copies D +104 and +108 into the low 13 bits of R +108 and R +112 and stores both words into the hardware state behind R +176 at +11104 and +11108; copies the width and height of the list's last entry (entry offsets 8 and 12) into R +116 and R +120 when the count is above zero; packs D +104 and +108 (low half, high half) into R +148 and E +104 and +108 into R +152; and resets the four rectangles at R +8 (two words each) to the empty form, 1 in both fields of the first word and 0 in both of the second (bits 23:12 and 11:0).
  When D +144 is nonzero it sets bit 16 of R +4, clears bits 15:8 and sets them to 0x07 when bits 13:10 of D +152 are nonzero (the low byte then takes the low byte of D +136) or to 0xf8 when they are clear (the low byte takes D +136 times 8); rectangle 0 becomes the drawable extent: its first corner is D +104 and +108 raised to zero, its second corner D +104 plus +112 minus one and D +108 plus +116 minus one, limited to the screen width and height held at +32 and +36 of the board's object at +2136. Otherwise it clears bit 16 and fills the rectangles from the list: when D +140 is nonzero or the list count is not 1 it takes the first count - 1 entries (nothing when the count is below 2, and this routine does not itself limit the number to four), each corner built from the entry as above without clamping; with a count of 1 and D +140 zero it makes rectangle 0 from D's own extent without clamping.
  When the caller is not attached to flow control it attaches for the duration (flag bit 1, pin, `gfx_flow_attach_me`, 0x1074 with the credit target number, 0x107c cleared, await returned credits, `gfx_flow_attach_me_finish`, unpin) and detaches afterwards with the usual credit wait, 1 to 0x107c and `gfx_flow_detach_me`. It calls `odsyClipMask` and `odsyClipPush` and lowers the lock count. The record layout is in `opengl/opengl.md`, "The clip push".
- `gfP_OdsyClearBuffer` (`odsy_clip.o`, offset 0xccc, 2228 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_clip.o)`.
  Private request 14, the clear, on the IP35 build (arguments: manager object, client node, user pointer, result word); every path of the decompiled listing was followed to its exit, with the assembly checked at the conditionals. The result word is zeroed first; it and the return value are 14 on any refusal and otherwise 0. `RRM_CheckValidFault` negative gives 14; it copies in 44 bytes (a fault logs "odsy: bad ptr to arg in OdsyClearBuffer" and gives 14) after raising the board's lock count at +80 (lowered again on every path). The request holds four clear-value words at +0 to +12, one more word at +16, a rectangle (left +20, right +24, top +28, bottom +32), the band height at +36 and a flag doubleword at +40.
  Rectangle source: when bit 27 of the context hardware state's word at +6956 is set, the rectangle list is the request's own and has one entry. Otherwise it is the context's clip list: the count at context +40 and the four-entry arrays at +44 (left), +60 (top), +76 (right) and +92 (bottom). In that case a drawable word at +144 that is set while the request's flag word is zero refuses the request with 14. In both cases a context clip count at +40 of zero or less refuses it with 14. A word read through the context's drawable pointers (context +224, then +120, then +104) is added to the horizontal coordinates.
  When the caller is not attached to flow control it attaches for the call (flag bit 1, pin, `gfx_flow_attach_me`, 0x1074 with the credit target number, 0x107c cleared, await returned credits, `gfx_flow_attach_me_finish`, unpin) and detaches at the end with the usual credit wait, 1 to 0x107c and `gfx_flow_detach_me`.
  For each clip rectangle it intersects it with the request rectangle (larger of the lower bounds, smaller of the upper), skips an empty result, and sends the clear in bands along the horizontal axis through the FIFO pointer at board record +864, reloaded for each word. The first band ends at the start plus the band height rounded down to a multiple of 16 when that lies beyond the start and not beyond the rectangle's end, otherwise at the rectangle's end; each later band ends the band height after the last, capped at the end. Each band sends 0x14400 and 10, 0x8f80a92f with ten operands (the four clear words, the first corner as two floating-point words, the +16 word, the far corner as two floating-point words and the +16 word again), 0x14001 and the full settle group. The corner coordinates become single-precision words in software: the bit length of the absolute value plus 127 as exponent, 23 mantissa bits from a left shift, the sign taken from bit 31.
- `gf_OdsyMapGfx` (`odsy_map.o`, offset 0x0, 796 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_map.o)`.
  Maps the board's windows into a client's address space on the IP35 build (arguments: manager object, user address); the whole body was read and the window table is the IP30 one. The address is cut to a 16 KB boundary, `gfx_flow_clean_up_other_gfxp` runs and `ddv_getaddr` gives the base. `v_mapkvsegment` maps +0x100000 at user offset 0 (1 page, cache argument 0) and +0x120000 at 0x4000 (1 page, 2); only when bit 5 of the client's flag word (+4) is set does it map the register page from +0 at 0x8000 (2 pages, 2), +0x110000 at 0x10000 (1, 0), +0x118000 at 0x14000 (1, 2), +0x200000 at 0x18000 (1, 2), +0x220000 at 0x1c000 (8, 2) and +0x400000 at 0x3c000 (1, 2). Under `splhi` it sets bit 0 of the flag word. A process not yet attached to flow control is attached (`rt_pin_thread`, `gfx_flow_attach_me`, the credit word at -31292 from +0x10000 rebuilt from the board word at -19376 shifted left 12 and written there and to register 0x1074, the word at -31288 and register 0x107c cleared, level restored, `odsy_flow_await_returned_credits`, level raised, `gfx_flow_attach_me_finish`, `rt_unpin_thread`). It clears the eight doublewords at +104 and sets in them the bit of the current processor (number from the halfword at -15320, doubleword index its value divided by 64). It returns 0 when a mapping reported the client's address as mapped and -1 when none did.
- `odsyInitCfifo` (`odsy_init.o`, offset 0x2bc8, 1092 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_init.o)`.
  Sets up the command FIFO and loads the transform microcode on the IP35 build (arguments: board number, flow-control flag); the whole body was read. It returns 0, or 1 when the board does not answer the check below. With the flag set it first takes `splhi`, sets bit 1 of the flag word at +4 of the client record behind +72, and, when the flow handle at +808 exists and `gfx_flow_am_i_attached` says this thread is not attached, pins the thread with `rt_pin_thread`, attaches with `gfx_flow_attach_me`, rewrites the shadow of 0x1074 (bits 16:12 replaced by the credit target number from -19376, shifted left 12) and stores it, stores 0 to 0x107c (flow control on), lowers the level, waits in `odsy_flow_await_returned_credits`, raises it again, calls `gfx_flow_attach_me_finish` and unpins; the level is restored on the way out.
  FIFO stores go to the board base plus 0x110000, one `sync` after each: the header word 0x10854 and the operands 0 and 0x0fffffff, then five doublewords from the literal pool, 0x000006b000000000, 0x000006b100000100, 0x000006b300005e50, 0x000006b200007dc0 and 0x000007b500000001 (what blocks 0x6b0 to 0x6b3 and 0x7b5 configure is unknown from the binary alone; a read of the flags handler's tests of the FIFO fill status bits would settle the 0x6b2 and 0x6b3 pair), and the word 0x10046. It then reads one doubleword from a literal-pool address in uncached space (result discarded), waits 2000 us with `odsy_usdelay` and reads the word at board offset 0x201594; any value other than 0x003d0046 skips the microcode load and goes to the exit with result 1.
  Microcode load: the three sequencer words 0x2e008380, 0x2600807f and 0x27008000, then 2048 records of six words. A record takes six halfwords of the microcode array (starting 2000 bytes into the array the small-data slot points to), the six taken from the highest index of the record down to the lowest; each is sent as 0x40008000 OR the low 10 bits OR the high 6 bits shifted left 23. A final doubleword, 0x000007f03b9aca00, goes to the FIFO port last.
  With the flag set it ends, on both the success and the failure path, by taking `splhi` again; when the flow handle exists and this thread is attached and the word at +104 is zero it first waits for returned credits when the credit count is below the bias (with the thread pinned), stores 1 at board record +34248, stores 1 to 0x107c, reads 0x107c back, calls `gfx_flow_detach_me` and clears bit 1 of the client flag word; then it restores the level.
- `gf_OdsyInitialize` (`odsy_init.o`, offset 0x15dc, 1644 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_init.o)`.
  Prepares a board after attach on the IP35 build (argument: graphics manager object); the whole body was read. It returns 0, or -1 when nodes stay open. It clears the start-up word at -19328 first. When the open-node count at +28480 is nonzero it logs "odsy board %d: %d rnodes still open when OdsyInitialize called" at severity 4, makes a semaphore at +28464, arms `timeout` for 500 ticks with `odsy_init_ddrncount_timeout` and sleeps on it at priority 25, and repeats while the count stays nonzero, returning -1 after the eleventh pass.
  Next it owns the graphics semaphore: when the owner at +72 is not the caller it does `psema` on +56 at priority 537, records itself as owner and polls the hold word at +104 in 2 us steps until it is zero; either way it raises the lock count at +80 by one. It calls `htp_register_board` with four zeroes (an uncached literal-pool read with a discarded result sits in its delay slot). When the manager's flag word (+4) has bits 1:0 set, it detaches the thread from flow control with the same sequence `odsyInitCfifo` uses on exit (when +104 is zero and the credit count is below the bias it waits for returned credits first; then 1 to the shadow of 0x107c and to the register, read back, `gfx_flow_detach_me`) and clears those flag bits. It then frees the old flow handle at +808 with `gfx_flow_dealloc`.
  The loop body: it calls `odsyReset`, reads the word at 0x9000000014000000 and then `get_nasid` and `get_chimera_type` (the same host-part tests as `odsyReset`: bits 15:12 equal to 4, or chimera type 3 or 5, give 2048 credits; any other host takes the kernel variable `odyssey_dwcredits` times 8) and allocates a flow handle with `gfx_flow_alloc` (device handle -19400, window from +832 plus 0x100000 and plus 0x110000, 100000 ns timer, `odsyHiwaterInterrupt` as handler, the record as argument, flags 1). It stores the handle at +808, reads the handle's window information into +840 and the credit target number into -19376. Then it waits in 5 us steps until the command FIFO fill (bits 15:7 of 0x106c) is zero, pulses 0x1084 with 0, 1, 0, and builds the flow-control word in its shadow: 0x800000 when the kernel variable `odyssey_dwsupport` is nonzero and 0x1800000 otherwise, ORed with the crossbar interrupt target number shifted left 17, the credit target number shifted left 12 and 0xc8; the word goes to 0x1074 with a `sync`. It calls `odsyInitCfifo` with flow control on; a nonzero result frees the flow handle, waits 10 ms and goes round again. The counter that was meant to limit the retries sits in a register that the top of the loop clears, so as compiled the loop only leaves on success and the -1 exit behind it cannot be reached.
  After success: `OdsyInit32kSlotMask` on the mask at +29952; one slot taken and dropped (slot 0 is never used); a second slot stored at -19356, its host address (the write-back region at +880 plus twice the slot) at -19352 and a zero halfword written there; `odsyInitMM`; `odsyInitDMA`; the doublewords at -19584 and -19608 cleared; the board-started halfword at +794 cleared; `odsyInitRetrace`; `odsyInitInterrupts`. It sets bit 1 of the manager's flag word, attaches the thread to flow control when the handle exists and it is not attached (pin, `gfx_flow_attach_me`, 0x1074 with the credit target number in bits 16:12, 0 to 0x107c, await returned credits, `gfx_flow_attach_me_finish`, unpin), runs `odsyZeroOut`, and detaches again as above. Finally it clears bit 1 of the flag word, clears the start-up word, lowers the lock count at +80 and returns.
- `odsyReset` (`odsy_init.o`, offset 0x23e0, 2024 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_init.o)`.
  Brings a board to idle on the IP35 build; the whole body was read. It finds the board record through the global table, calls `odsyFifoTimer` with a null argument, stores 1 to the word at +816 (cleared again at the end) and clears the halfword at +794. It takes the shared crossbar lock (a spin lock with the saved level when the start-up word at -19328 is set, otherwise a mutex at priority 25).
  The host node comes from `xwidget_info_get`, `xwidget_info_master_get` and `master_node_get` through the compact-to-node table when the board has a device handle at -19400, else from the halfword at -19396. Before the reset it calls `hub_widget_flags_set` for that node and the widget byte at -19392 with flags 1, and it makes two uncached reads whose results are discarded (the word at a literal-pool address and offset 272 of the node's register block). It then clears the 588-byte identity block at +200, copies the string "ODYSSEY" into its first 16 bytes and stores the board number at +240, -1 at +248, +284 and +288, the block size 588 at +236 as a word, 1280 at +232 and 1024 at +234 as halfwords (the pair reads as a maximum width and height; that role is inferred from the values).
  Reset proper: it saves the widget control word (0x24) in its shadow, calls `odsyLowLevelReset`, puts the widget id (byte +793, low nibble) into the shadow, writes the byte OR 0x4200 to 0x24 (bit 9 big-endian, 4 in bits 15:12 for the crossbar credit), waits 100 ms and reads 0x24 back into its shadow. It builds the configuration word from the master id (byte +792, low nibble, in bits 22:19) and stores it to 0x1004, then runs `odsyGatherInfo` with 1 (the strap decode), `odsyMMinit` with the board base and the memory-manager record at +872, `odsyInitDBE` with the default timing pointer from the first small-data slot and the second argument 1, and `odsyGatherInfo` with 0 (revision type). After every group of steps it reloads 0x24 into the shadow.
  Default timing: it stores the pointer to the first built-in timing table into the default-timing slot, then looks up the kernel option "monitor"; a value shorter than 9 characters equal to "72hz" selects the 1280 by 1024 72 Hz table when the variant flag at +280 is 1, and a value equal to "60hz" selects the first table again. For a node whose register at 0x9000000014000000 does not have 4 in bits 15:12 and for which `get_chimera_type` returns zero, it calls `hub_set_piomode` with mode 2 (for the second node at -19394 as well when that is set and differs) instead of `hub_widget_flags_set`; otherwise it calls `hub_widget_flags_set` with flags 2. It releases the crossbar lock by the same rule.
  Register zeroing, each pair a shadow store then a store to the board with a `sync` (the word at offset 0x24 from s2 is reloaded between groups): 0x103c and 0x101c receive all ones; 0x1044, 0x104c, 0x1054, 0x105c, 0x1074, 0x107c, 0x108c, 0x109c, 0x10a4, 0x10ac, 0x401c, 0x4024, 0x402c, 0x4034 and 0x403c receive 0. The master-id words follow by read-modify-write: 0x4044 gets bits 15:14 and 3:2 set, bit 16 set, the master id in bits 7:4 and everything above bit 16 and bits 13:8 clear; 0x4014 gets 0x12 in bits 15:0, bit 18 and bit 24 set, bits 19:16 cleared first, and the master id in bits 23:20. Then 0x404c, 0x4054, 0x405c and 0x10bc receive 0 and 0x10cc all ones.
  SDRAM configuration: the shadow word of 0x1004 takes bit 2 from the bank count at +260 (2 clears it, 4 sets it), bit 1 from the CAS latency at +256 (2 sets it, 3 clears it) and bits 4:3 from the size at +252 (32 gives 0, 64 gives 1, 128 gives 2, and 33 gives 2 with the record rewritten to 32); any other value prints "invalid sdram banks", "invalid sdram casl" or "invalid sdram size" and leaves the field. It waits 400 us, clears bit 5 and stores, waits 400 us, sets bit 5 and stores, waits 400 us, stores the same word again, clears bit 5, stores and waits 400 us, then sets bit 8, stores and waits 400 us.
  It ends by zeroing 0x34, 0x1044, 0x1074 (after resyncing 0x24), writing all ones to 0x103c, pulsing 0x1084 with 0, 1, 0, writing all ones to 0x101c and 0 to 0x5c, reloading 0x24, calling `odsy_hpipe_invalidate` and clearing +816.
- `generatePageTable` (`odsy_dma.o`, offset 0x558, 880 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_dma.o)`.
  Builds a DMA translation table on the IP35 build (arguments: region descriptor, buffer address, length, table pointer, optional address list); the whole body was read, and it matches the IP30 routine instruction for instruction except for one constant. With no list given it creates one with `alenlist_create` (a failure logs "Out of Memory creating alenlist" and returns 12) and fills it with `uvaddr_to_alenlist` for an address below 2 to the 44th (the shift constant is 12 here, 8 on IP30) or `kvaddr_to_alenlist` above it; a null result logs "Invalid host dma region" and returns 14. The descriptor gives the row count (bits 31:16 of +12, 0x10000 when zero), the row length (low 20 bits of +24) and the stride at +20. The list is read in pieces of at most 16 KB; row bytes are taken from each piece and one two-word entry (address bits 47:16, then the low 16 address bits over the byte count) is written when a piece or the last row ends, followed by a zero word and a cleared low half of the next word. A mismatch of rows against bytes logs "too many scanlines" and returns 0, an `alenlist_get` failure logs and returns its code, and a list built here is destroyed on exit.
- `odsyDMAOp` (`odsy_dma.o`, offset 0x1b1c, 2012 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_dma.o)`.
  Issues one host-memory transfer on the IP35 build; the whole body was read. Arguments: owner context (may be 0), board record, address list for the page-table builder, user address and byte count of this piece, a selector word it clears on entry, the 32-byte transfer header, a result pointer, and on the stack a flag word (bit 0, bit 1), the buffer's user address and length for the lock record and the number of pieces still to come. It returns 0 or an error code (12 for allocation failures, otherwise the page-list builder's code).
  Under the mutex at +5800 it takes the next of 256 operation records of 80 bytes at +7960 (counter at +28440, wrapping at 255), zeroes it and releases the mutex. Flag bit 1 makes a synchronisation variable at record +32 (name "dopsv"). The record's state word (+8) becomes 1; +24 and +16 are zeroed and the owner goes to +40. With no owner +48 is -1. With an owner and a nonzero length it takes an id from the owner's set at +416 (-1 logs "odsy dmaop: cannot allocate outstanding locked rgn in gc" at severity 4 and returns 12), stores the id at +48, the length at +64 and the user address at +56; with an owner and no length it stores -1 at +48, zero at +64 and the set address at +56.
  `ConstructTftchWarList` splits the request into pieces. For the table it calls `kmem_alloc` with the size that call reports (failure logs "odsy dma : cannot allocate translation table" and returns 12), stores the table at +16 and its size at +24. Each piece becomes a 128-byte entry: the header's 32 bytes are copied in, the low half of word 1 takes the piece's x and the high half its y, word 3 takes width in the low half and height in the high half, the low 20 bits of word 6 take the width times the bytes-per-pixel value that header word 7 bits 18:16 select from the table (2, 4, 8, 16, 12, 1, 6, 3), and `generatePageTable` fills the page list at entry +32 from the piece's address and length and the address list. Any failure unlocks the pages with `unuseracc` (when the stack length is nonzero), returns the id to the owner's set, fills the table with the byte 139 and the first 88 bytes at the operation record with 141 (the record stride is 80, so the fill runs past it), calls `kmem_free` on both with those sizes, releases the mutex if held and returns the error.
  Next it retakes the mutex and measures outstanding work as the issue count at +6888 minus the done count at +6880 (modulo 2 to the 61st). While that plus 2 is not below 128 minus the pieces to come it drops the mutex, calls `odsyDMAWait` with zero arguments, retakes the mutex and measures again. It then stores the issue count into the write-back word behind +888, the record's +72 and the result, advances +6888 by one modulo 2 to the 61st, puts the record into the 128-entry ring at +5856 under the 7-bit tag at +5844 (advanced modulo 128), builds the completion tag 0x5a00 OR the tag byte, and writes 0x800 to the flag-clear register 0x101c with a `sync`. When flag bit 0 is set and header word 7 bit 27 is clear it sends 0x10658 and 0x00120000 first.
  Per entry it converts the entry address with `kvtophys` and sends two doublewords through the FIFO pointer at +864: the first has 0xe01 (0xe03 if the selector word is nonzero) above the physical address bits 47:24 repacked as bits 40:24 in the low 17 bits and bits 47:41 at bits 29:23, the second has bits 23:0 packed the same way in the upper half and zero below. When header word 7 bit 24 and flag bit 1 are set and this is the last entry, the entry's word 7 gets bit 31 and the record, state bit 1 set, is appended to the completion chain headed at +28448.
  After the last entry it calls `ReleaseTftchWarList`. With header word 7 bit 27 set it sends the words 0x14001, 0x10443 and 250, 0x10046 twice, 0x10019, 0x10443 and 150, 0x10046 four times, 0x10443 and 250, 0x10046 twice. With flag bit 1 clear it ends with 0x10658 and 0x00120000; with it set it stores the tag halfword at +5832 and sends 0x10a5a, the word at +5840 ORed with 0x8000 and the tag word. With an owner and flag bit 1 it stores the issue count at owner +248 when the selector word is zero and at +256 when it is not. It finishes with a discarded doubleword read from a literal-pool uncached address, releases the mutex if held and returns 0.
- `odsyDMAOps` (`odsy_dma.o`, offset 0xb34, 4072 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_dma.o)`.
  Splits one pixel-transfer request into `odsyDMAOp` calls on the IP35 build (arguments: board record, owner context, request, window record); the decompiled listing was read end to end, with the assembly consulted wherever a test could be read two ways. It returns 0, 12 (the buffer lock is refused) or a failing `odsyDMAOp` code. The request holds the user address at +16, the length at +24, the 32-byte transfer header at +28 to +59 (header word 7 is request +56), a flag word at +60 and the 64-bit result at +72. The FIFO pointer is the one at board record +864, one 32-bit store at a time.
  Common entry: it locks the buffer with `useracc` (flags 0x110; a nonzero return gives 12), sends 0x10658 and 0x00120000 and sets the result to -1. With header word 7 bit 27 clear it makes one `odsyDMAOp` for the whole buffer with flag bit 1 and returns its code. With bit 27 set and flag bits 3 and 4 clear it sends the prologue word 0xcf80a92f followed by the ten words of the context's mirror (context +176, plus 6988), then 0x14400 and 10, the vertex word 0x8080c800 and two zeros, and makes one `odsyDMAOp` the same way.
  Flag bit 4 (with bit 27 set): when the context window query (context +224, then +120, then word +144) is zero and the clip count at context +40 is nonzero, it clears bit 27 in the header and clips the destination (first interval from the sign-extended low half of header word at request +32 with the width in the low half of +40, second interval from the high halves) against up to four context rectangles (left array at +44, top +60, right +76, bottom +92), keeping the non-empty intersections and walking them from the last to the first. For each it copies the 8 header words, rewrites the two intervals and the row length (the pixel size from the table indexed by header word 7 bits 18:16, times the width, in the low 20 bits of word 6), and calls `odsyDMAOp` with flag bit 1 and the buffer lock arguments only on the final one. No intersection at all unlocks the buffer and returns 0. A zero count falls into the flag bit 3 path.
  Flag bit 3: the transfer is cut into chunks that end on a multiple of 64 rows (the board record word at +280 equal to 0) or 128 (equal to 1); for any other value of that word the limit is read from a stack slot that nothing sets. The first interval is clipped against the window record (+20 plus +32, and +24 plus +36 for the second) after adding an origin that is zero or, when header bit 29 of request +28 is set, taken from the context's window record (+224, then +128, words +104 and +108). Each chunk rebuilds the 0xcf80a92f prologue with the mirror words at +0, +4, +8, +12, +24 and +36 and four operands that it converts from integers to single-precision words in software (sign, exponent 127 plus the bit length, 23 mantissa bits), then the 0x14400, 10, 0x8080c800 and two zeros, then `odsyDMAOp`. When the first origin word is negative it first sends 0x10443, 250 and 0x10046 twice if the flag at +7352 of the context's mirror record (context +176) was already set, then sets that flag, moves the first start by the origin and sends the doubleword 0x0001084100000000 and the word at context +112. After the last chunk, when this call set the flag, it sends 0x10443, 250 and 0x10046 twice, then the doubleword 0x00010841 with context word +108 in its low half and the word at context +112.
  A failing `odsyDMAOp` (any path) logs "dmaops: failed intermediate dma operation" at severity 4, sends 0x10444 and 0, then 0x10a5a, the word at board record +46180 ORed with 0x8000 and 0xd0a, calls `odsyDMAWait` in mode 1 on the failed operation, unlocks with `unuseracc` and returns the code. Which of the computed words the board consumes is unknown (`kernel/kernel.md`).
- `odsy_mm_obj_xfr_bs` (`odsy_pmm.o`, offset 0x3e2c, 952 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_pmm.o)`.
  Copies a memory object between the board and its backing store on the IP35 build (arguments: object, a queue-selector word for `odsyDMAOp`, direction: nonzero is board to host); read completely as a decompiled listing, with each branch confirmed against the assembly. It returns 0, 12 or 22. The board record is reached through the object's group, share group and manager pointers (+8 three times, then one load); FIFO words go through the pointer at +864 of that record.
  With no backing store (word +88 zero) it returns 22 for host to board and otherwise calls `odsy_mm_obj_alloc_bs` (failure gives 12). `SetupDMAParams` builds the transfer header. A pixel-size byte at +17 above 8 logs "BPP > 8 - %d this won't work" at severity 4 and, when the kernel debug halfword is set, flushes the console buffer and calls `debug`. Board to host sets the flag word at +76 to 1.
  For each of the object's rows (count at +40) it sends the settle group (0x10443, 250, 0x10046 twice, 0x10019, 0x10443, 150, 0x10046 four times, 0x10443, 250, 0x10046 twice), puts the row's board address into the header's first word (the word at +56 plus (row + the word at +28) times the row bytes at +48 times the pixel size, divided by 16, under the top three bits already there) and calls `odsyDMAOp` with flags 3 and no owner: with a backing store of 16 KB or more it passes the address list at +80 and the row offset (the word at +72 times the row index) as the address, with a smaller one it passes no list and the buffer at +80 plus the row offset. A failure logs " odsy pmm: DMA1 backing store transfer failed" (small store) or " odsy pmm: DMA+ backing store transfer failed" (large store) at severity 4 and returns 22.
  After the rows it calls `odsyDMAWait` in mode 1 on the op number at +96, sends a settle group, block 0x018 (0x10018) and a settle tail, and for host to board counts the transfer in +104 and either clears +76 (when the flag at +4920 of the manager's record is set) or frees the store with `odsy_mm_obj_free_bs`. It returns 0.
- `odsyInitDBE` (`odsy_init.o`, offset 0x3600, 4248 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_init.o)`.
  The option-card, compositor, Rainier and Denali probes and the two-wire part probes are IP35-visible facts that rest on the IP35 binary alone.
  Display back-end set-up on the IP35 build; the 1099 instructions of the body were compared one by one with the IP30 listing and differ only in the places listed at the end, so the sequence is the IP30 one. It quiets the clock registers (display address 0x2b00 five times and 0x2700), reads the output-enable words at 0x2483 and 0x2482 into the record, sets up the main and option two-wire ports with `odsy_i2c_init_port_handle`, reads the option card's identity at address 0x1f, fills the part-presence words at +700, +704, +708 and +712 through `odsy_ProbeCompositor`, `odsy_ProbeRainier`, `odsy_ProbeDenali` and `odsy_ReadCompositorNic` (and `odsy_i2cProbe2b` on the main port with no option card), waits for `odsy_DCDResetDone` and writes the card's PLL register 0 with 16, 32 or 48 when an option card is present, calls `odsyConfigFb` for 1280 by 1024 at depth 8 and, for the full start only, writes the scan-out size (0x2802, 0x2803) and calls `odsyLoadTimingTable`. It then writes the 32-entry main mode table at 0x2900 to 0x291f and the 8-entry overlay table at 0x2920 to 0x2927, clears entries 0x29 to 0x2c, resets the cursor control mirror, initialises the display semaphore to 1 and ends with `odsyBlankScreen` (blanking off). A failed FIFO wait abandons the routine. The differences from IP30 are: the start-up word that bypasses the display-FIFO semaphore is at -19328 from +0x10000 (16 uses; IP30 -19352); the semaphore initialised at the end is at +0xb488 (IP30 +0xb470); the stored display constants are read through small-data slots 24 bytes higher (-30600 to -30528 for the mode-table words; IP30 -30624 to -30552) and the tables 16 bytes higher (-30704; IP30 -30720); the message strings are 104 bytes earlier; and the semaphore wait count of 25 and two loads of the option-card byte are scheduled at different points. The jump `bnez` around the Rainier probe goes to the neighbouring label with the same effect.
- `odsy_set_gfx_mfg_nic_name` (`odsy_init.o`, offset 0x5c4, 344 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_init.o)`.
  Copies the manufacturing name out of the board's identification text on the IP35 build (argument: board record); the whole body was read. The vertex handle is at record +0x10000 - 19400. With no handle it clears the first byte of the name buffer (record +0xb4d0, reached as -19248 from +0x10000) and returns 1. `nic_vertex_info_get` on the handle returning null logs "odsy_set_gfx_mfg_nic_name fail: NULL nic_info" at severity 1, clears the same byte and returns 1. Otherwise the text is copied with `strncpy` (at most 1023 characters, terminated) into a 1088-byte stack frame and split with `strtok_r` on the separators ":;" . Each token is compared with "Name"; on a match the next token becomes the name, and the scan carries on so a later "Name" would replace it; when the scan ends the name pointer starts as an empty string and is the last token taken. The name is copied with `strncpy` to record +0xb4d0 and a zero byte is stored one past its end (at -19247 plus the length from +0x10000). It returns 0. The IP30 routine does the same scan in a different order and with its name buffer at +0xb4b8.
- `odsyBlankScreen` (`odsy_brdmgr.o`, offset 0x21f8, 4708 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_brdmgr.o)`.
  Turns the picture off or on through the display output registers on the IP35 build (arguments: board record, mode); the whole routine was read as a decompiled listing, with the branch conditions and the literal-pool headers confirmed in the assembly. It returns 0, 5 (a display-FIFO wait failed) or 11 (the option-port reconfiguration failed). Display writes are 64-bit stores at board +0x400000: a header word in the upper half (0x39b00001 for register 0x26c0, 0x39800001 for 0x2600, 0x39208001 for 0x2482, 0x3920c001 for 0x2483, 0x79604001 for the cursor control 0x2581) over the data word. The shadows are the words at +46044 (0x2482) and +46040 (0x2483); register read-backs go through the window at +0x233000 plus 4 plus 8 times the offset from 0x2600.
  Mode 2 blanks (without the option card; see below): the 0x2482 shadow loses bit 5; unless the text-port bypass word at +46208 is set it takes the display-FIFO semaphore at +34096 (priority 25) and waits for FIFO level 10 (a failed wait goes to the release path and returns 5); it writes 0x26c0 with bit 0 set (read back first) and, when the value `odsy_monitor_type` gives is 1, writes 0x2600 with its bit 0 cleared; the 0x2483 shadow loses bits 0, 1 and 5 and both shadows are written. Mode 0 restores: it waits for level 11, writes 0x26c0 with bit 0 cleared and, for monitor type 1, 0x2600 with bit 0 set, sets bits 0, 1 and 5 of the 0x2483 shadow (0x23) and writes both shadows. Mode 1 waits for level 14 and writes only the two shadows, with 0x2482 bit 5 cleared and 0x2483 bits 0, 1 and 5 set; it does not touch 0x26c0 or 0x2600.
  Every path with the bypass word clear ends with the release of the display-FIFO semaphore, which first replays a deferred cursor update: under the spin lock at +34112, when the doubleword at +34120 is nonzero it waits for FIFO level 12, and if the saved bit at +34128 differs from bit 5 of the cursor-control shadow at +45872 it writes the shadow without bit 1 and then with bit 5 replaced, writes the deferred doubleword, writes the shadow without bit 0 when the bit differed, clears the deferred doubleword and leaves the shadow with bit 1 set and bit 0 clear.
  With the option card present (halfword +298 equal to 3) each mode takes the semaphore at +46216 and the lock inside the record that the pointer at +46104 names (at +34080 or +34064 by the flag at +46116), sets the register index at +46120 to 23 and reads register 23 of the option port record at +46088 with `odsy_i2cDDCRegRead`. A failed read calls `odsy_reconfigDCD2FPLD` and `odsy_restoreDCD2FPGA`, either failure returns 11; the register is read again (failure returns 5) and written back with `odsy_i2cPLLRegWrite` with bits 3:1 set (mode 2), bit 3 set (mode 1) or bits 3:1 cleared (mode 0), a failed write returns 5, and the written byte is kept at +34368. Mode 2 with the card present does only this and none of the display writes; mode 1 does it first and then the display writes; mode 0 does the display writes first and this after them.
- `odsyLoadTimingTable` (`odsy_brdmgr.o`, offset 0x3cd0, 8540 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_brdmgr.o)`.
  Programs a video timing (arguments: board record, 320-byte timing structure; result 0, or 16 on any failed display-FIFO wait) on the IP35 build.
  Locks: when the halfword at +298 is 3 (dual-channel option card) it first takes the option-card semaphore at +0xb488 with `psema` (the IP30 build keeps it at +0xb470) and releases it just before returning; it then takes the mutex at +0x8520 of the lock owner stored at +0xb418, or the one at +0x8510 when the flag at +0xb424 is zero, and takes the display-FIFO semaphore at +0x8530 unless the flag at +0xb480 is set. Every release of that semaphore goes through the same inlined helper as in `odsyBlankScreen`, which replays the pending cursor words.
  Clock chip: bits 2:0 of timing word +208 go to the display host-interface configuration through the FIFO, and the host-interface control word read back at board +0x233804 gets its two-wire clock selects from +212 (bits 14:12) and +216 (bits 17:15) with bit 18, the chip soft reset, cleared. The variant at +292 picks the chip, and the chosen two-wire address is stored at +0xb428. At 0 or below the classic part is addressed at two-wire address 0x26 and registers 5, 4, 2, 3, 0, 1, 7 and 6 get the bytes at timing words +96 to +124 in that order, and register 8 gets 90 afterwards; above 0 the second part is addressed at 0x58 and registers 0 to 7 get +128 to +156, while words +132, +136, +148, +152 and +236 to +248 are copied to the record words at +0x861c and following (+0x8640 and following for the dual-channel words) as shadows for the genlock interrupt (a dual-channel card also copies +264 to +280). A failed register write logs a severity 1 message that names the register and the routine continues, as the source does. One wait of 100,000 us follows.
  Tables: it sets bit 18 of the control word again, clears two stack buffers of 512 and 4096 bytes and sends them as zero tables of 256 frame halfwords (header word 0x39000080) and 2048 line halfwords (0x38000400). It then sends the caller's tables (pointer and length at +0 and +8, +16 and +24) behind headers 0x3900 and 0x3800 carrying (length + 1) / 2 words, four halfwords to each FIFO doubleword, polling for FIFO level 0 at every 64th halfword and padding an odd count with zero.
  Generator words: after a level-3 wait it sends the width (+176, doubled and with +804, +302 and +800 set when flag bit 4 of +200 is set on a dual-channel card), the height (+180), the field mode (+200 bits 1:0), the halfword at +302, and two words from +200 bit 5. It updates the shadow at +0xb330 (clear bits 3 and 1, bit 4 from the +302 halfword) and sends it. After a level-1 wait it sends words +160, +164, +168 and the twelve words +40 to +84. Word +164 has bit 0 forced on first in this build (the IP30 build does not do that), and bit 7 is added when bit 6 is set. Word +224 is saved at +0xb3d0 and +28 goes into the control shadow at +0xb3d4 with bit 6 kept only if it was already set. After a level-15 wait bit 31 of the interrupt-enable shadow at +0x85b0 is set when word +220 is -2 or word +224 is nonzero and cleared otherwise, and the shadow is stored to board +0x1034; word +88 is then sent.
  Genlock request: when word +220 holds the value -2 the control word is sent with bits 1 and 6 forced, word +32 and +36 follow (+36 merged with bit 5 of the shadow at +0xb3d8, and ORed with 0xe3 on a dual-channel card), and the active chip's registers are rewritten from the bytes at +231 and +120 (classic: register 0 and register 7 masked to 7 bits) or +239, +243, +247 and +251 (second part: registers 1, 2, 5 and 6).
  Tail added in this build: the dual-channel card's timing words are sent with `odsy_LoadDCD2Regs` (failure logs severity 4 and ends in the error path), and the monitor-name text at +0xb4d0 is compared with `ODY128B1_2` (10 characters), `CHIM_ODY` (8) and `CHIODY` (6); a match calls `odsy_setDVIRegs` with the option-port handle and a failure logs severity 4. Any failed FIFO wait logs a severity 1 "abnormal return" message with the board's halfword at +790, drops the locks and returns 16.
- `odsyPushBufferSelect` (`odsy_drawable.o`, offset 0x7e0, 720 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_drawable.o)`.
  Sends a context's draw-buffer mask to the board on the IP35 build (argument: context; callers also pass the register window, which this build does not use); the decompiled routine was read in its entirety and the bit tests were confirmed in the assembly. It returns nothing. The board record is reached through the draw drawable at context +224, its manager at +64 and the board at +40 of that; FIFO words go through the pointer at +864 of the record.
  Select value: the mask at context +568 gives a 4-bit select. When the draw drawable has an object (its +120) whose halfword at +18 is nonzero, the pairs of bits 1:0 and 3:2 of the mask are exchanged; otherwise the mask is used as it is. When that object's word at +32 has any of bits 13:10 set the select is 12 if any mask bit is set and 0 if none is. The select goes to the board record word at +45776, and the hardware-state words at +6948, +6952, +6956 and +6960 behind context +176 are copied to board record +41612, +41616, +41620 and +41624.
  FIFO: the full settle group (0x10443, 250, 0x10046 twice, 0x10019, 0x10443, 150, 0x10046 four times, 0x10443, 250, 0x10046 twice), block 0x024 as 0x10424 and the select, the settle tail, and two doublewords for registers 0x608 and 0x609 with the context's words +140 and +144 in the low half. Before they are sent, bit 31 of context +140 is set when the draw object is missing or its halfword +18 is zero (cleared otherwise), and bit 31 of context +144 is set when the read drawable (context +224, then +128) has no object or a zero halfword +18; both words are stored back with that bit.
- `odsy_sboxfi` (`odsy_tport.o`, offset 0xb64, 572 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_tport.o)`.
  Text-port filled rectangle on the IP35 build (arguments: board base, x0, y0, x1, y1); the whole body was read. It returns at once when the port's in-use word in small data is set; otherwise it takes the spin lock beside that word and stores 1 (the IP30 routine uses a counter and write-buffer flushes). The corners are put in order: the smaller x becomes the left edge, the larger x the right edge, and the same for y, so that the first y value is the one the arguments order as lower. To base +0x110000 it sends 0x14400 with operand 7 (the primitive type the routine selects, here a quad), then four vertices each made of the word 0x8080c800, x and a y measured from the port height (the word at +16 of the port object): left x at height minus the first y plus 1, right x plus 1 at the same y, right x plus 1 at height minus the second y plus 2, and left x at that y. 0x14001 closes the primitive and the same settle groups as `odsy_pnt2i` follow (a short group first when the word at +7036 of the stored state is nonzero, then a short group, block 0x019, a 150-wait group and a last short group). The lock is released and the in-use word cleared.
- `odsy_pnt2i` (`odsy_tport.o`, offset 0xda0, 380 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_tport.o)`.
  Text-port point on the IP35 build (arguments: board base, x, y); the whole body was read. It returns at once when the port's in-use word in small data is set. Otherwise it takes the spin lock beside that word, stores 1 in the word (the IP30 build keeps a counter and flushes the write buffer around it; this one stores 1 and later 0) and sends to base +0x110000: 0x14400 with operand 0, the vertex word 0x8080c800, x, the port height (the word at +16 of the port object) minus y plus 1, and 0x14001. When the word at +7036 of the stored hardware state is nonzero it first sends a short settle group (0x10443 with 250, two 0x10046). It then sends a short group, block 0x019, a 150-wait group (0x10443 with 150, four 0x10046) and a last short group (0x10443 with 250, two 0x10046), and releases the lock, clearing the in-use word.
- `odsy_drawbitmap` (`odsy_tport.o`, offset 0xf2c, 1696 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_tport.o)`.
  Text-port glyph draw on the IP35 build. The band and cell walk (64 rows, 16 columns), the stipple copy, block 0x03f with 6, the 0x04e and 0x04f pattern blocks, the four-vertex quad with the one-row offset and the two the set graphics-context Odyssey driver request calls (enable set, then clear) are as in the IP30
  entry; the words and the cursor update are identical. The lock is a bare `mutex_spinlock` with an in-use flag stored as 1, and no counter, write-buffer flush or `sync` is used. The whole IP35 body was compared with the IP30 listing instruction by instruction: only register numbering, the lock handling and the release (the IP30 build also keeps a use counter and flushes) differ.
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
- `text-port state set-up` (`odsy_tport.o`, offset 0x30, 1664 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`.
  Text-port graphics-state set-up in patch 4103, read through all of its branches. The state object comes from the first doubleword of the member's `.sdata` and the mode table from the first doubleword of its `.srdata`; every state offset it uses is the one the IP30 entry gives (+132 raster-mode word, +188 to +196 and +232 to +244 colour words, +6948 to +6960 the block 0x017 operands, +9828 and +9832 the cached sequencer pair, +11112 the block 0x024 operand, 16664 plus 24 times the mode in the table). Store order is the same too: the fifth argument (or 12 for mode 2) goes to +11112 and one full settle group runs, then block 0x024 from +11112 and the second half of the group; bits 0x18 of +132 are set for a nonzero enable flag, and cleared together with bit 17 (0x20000) otherwise; mode 1 sets bit 20 and the pair 0x22008000 and 0x23008002, modes 0 and 2 set bit 19 and 0x22008001 and 0x23008003; the optional constant-colour block 0x021 takes 512 plus the stack value widened to 12 bits a channel (RGB) or 512, the value shifted left by 12 and 1 (index); the colour goes out after block 0x004 as 0xc580cc08 and three bytes (RGB) or 0xce80cc08, three zeros, 0xc580c406 and the colour word (index); and the packed block 0x022 word and the four block 0x017 sends, with bit 23 of the third operand set only in the third send, close it. The routine is 1664 bytes here against 2440 in the 6.5.30m build with the same sends in the same order.
- `odsy_color` (`odsy_tport.o`, offset 0x6b0, 188 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`.
  Text-port colour change in patch 4103. The first instructions test the mute word (`.sbss` offset 0) and return when it is nonzero; otherwise the routine adds one to the in-use count (`.sbss` offset 4), flushes the write buffer, locks the port spin lock (`.sbss` offset 8) and pushes eight words through the FIFO port at board base plus 0x110000: 0x22008001, 0x23008003, 0xce80cc08, three zeros, 0xc580c406 and the colour argument. It then stores the colour at +8 of the static port object, lowers the in-use count and unlocks. The eight words and their order are those of the IP30 routine, which is 28 bytes longer.
- `odsy_mapcolor` (`odsy_tport.o`, offset 0x76c, 252 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`.
  Text-port colour-map write in patch 4103. Under the same mute, in-use and lock handling as `odsy_color` it calls `odsy_poll_dfifo_level` with level 0, then forms a 10-bit field from each of the last three arguments as (value << 2) | (value >> 6): the fifth argument lands at bit 0, the fourth at bit 10 and the third at bit 20. The low word is those fields ANDed with the literal 0xffffffff (the unit's first `.lit8` doubleword), and the high word is 0x30000001 | (index << 14). One doubleword store sends the pair to the board base plus 0x400000. The mask does not change the packed fields.
- `odsy_sboxfi` (`odsy_tport.o`, offset 0x868, 436 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`.
  Text-port filled box in patch 4103. After the mute test, in-use count and lock it orders the corners (x1 and x2 swapped when x2 is smaller; y1 and y2 swapped when y1 is the smaller, so the larger y comes first), then sends 0x14400, type 7, four 0x8080c800 vertices at (xmin, H - ymax + 1), (xmax + 1, H - ymax + 1), (xmax + 1, H - ymin + 2) and (xmin, H - ymin + 2) with H the word at +16 of the static port object, and 0x14001. The closing settle group is always the full one (0x10443 with 250, two 0x10046, 0x10019, 0x10443 with 150, four 0x10046, 0x10443 with 250, two 0x10046); this body never reads a word at +7036 of the state object to put an extra group in front, which the 6.5.30m routine does.
- `odsy_pnt2i` (`odsy_tport.o`, offset 0xa1c, 280 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`.
  Text-port point in patch 4103: mute test, in-use count and lock as in the other text-port routines, then 0x14400 with type 0, one 0x8080c800 vertex with x and H - y + 1 (H is the word at +16 of the static port object), 0x14001, the single full settle group and the release. As in `odsy_sboxfi` there is no conditional extra group.
- `odsy_tpinit` (`odsy_tport.o`, offset 0x1034, 396 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`.
  Text-port start-up in patch 4103, and a simpler routine than the 6.5.30m one. It finds the board with `odsyPipeNrFromBase`, takes the board record as the pipe number times 22312 from `OdsyBoards`, sets the mute word and the in-use count and waits, 5 us a step, for bits 15:7 of the register word at +4204 (through the register base at +736) to read zero; the wait has no limit. It then calls `odsyReset`, writes 0, 1, 0 to +4228, 0 to +4212 and 1 to +4220, and calls `odsyInitCfifo` twice with a zero second argument, repeating from `odsyReset` for as long as the second call fails; there is no six-pass limit and no log message. One `odsyInitDBE` call with `default_timing` follows (the 6.5.30m build calls it twice with two stored structures). It then stores the board's width and height halfwords (+232, +234) in the static port object, copies the board words at +1232 into entry words 12 of mode rows 0 and 1 and +1368 into row 2 of the stored state, clears 11128 bytes of the state object, stores the board word at +1208 divided by 16 at state +6952, writes 4165 stored words to the FIFO port and calls the text-port state set-up routine with colour 1, word 3, second colour -1, mode 0, 3, both flags clear and a zero stack value, then clears the mute word.
- `odsy_drawbitmap` (`odsy_tport.o`, offset 0xb44, 1236 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`.
  Text-port glyph draw in patch 4103 with the quad path. After the mute test it locks the port and calls the text-port state set-up routine with the enable flag set, the colour at +8 of the static port object and a stack value of 1. The glyph is cut into bands of at most 64 rows, and each band into cells of at most 16 columns, one halfword of the bitmap per cell. For a cell the rows are copied with the band's first row going to the last halfword slot of the state object's pattern area, 6 is stored at state +128 and block 0x03f sent from it, the 32 pattern halfwords go out as block 0x04e (words 0 to 15) then 0x04f (words 16 to 31), and then 0x14400 with type 7, four 0x8080c800 vertices from the cell's left and right columns (cursor x less glyph origin x, plus the cell width) and the band's top and bottom rows flipped against H at +16 of the static object, and 0x14001, followed unconditionally by the full settle group. A band advances the row by its length and the bitmap pointer by 64 rows of the stride at +20. At the end the x and y advances at +16 and +18 are added to the cursor words at +0 and +4 of the static object, the text-port state set-up routine runs with the enable flag clear, one more settle group is sent and the lock is released. The bitmap's height of zero or less skips the loops but still runs the closing steps.
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
- `odsyGatherInfo` (`odsy_init.o`, offset 0x8bc, 1448 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Reads the board identity in patch 4103 (arguments: pipe number, phase). The board record is pipe number times 22312 from the board table, its register base is the pointer at +736. Phase 0 takes bits 31:28 of the register word at +4, stores that revision type at +264 and dispatches on it through a 16-entry table: types 0 and 4 to 8 log a severity 1 message and keep the raw type; types 1 to 3 clear the flag at +280 and keep the raw type; types 9 to 15 store the generation 1 to 7 (type minus 8) at +264 and set +280 to 1. It then reads the display-chip word at register base plus 0x23380c and keeps its bits 2:0 at +268. This read is bracketed by the display semaphore: unless the start-up word at +22304 is set the routine takes the semaphore at +10256 (`psema`, priority 25), waits for display-FIFO level 0 with `odsy_poll_dfifo_level`, and on release takes the spin lock at +10272 and, when a cursor doubleword is pending at +10280, waits for level 12, writes the control word at +22000 to display register 0x2581 (header 0x79604001) with its bit 1 cleared and bit 5 refreshed from the halfword at +10288 when the two disagree, pushes the pending doubleword to register base plus 0x400000, clears it and sets bit 1, then frees the semaphore. A FIFO wait that times out returns -1. Phase 1 decodes bits 31:24 of the word at +4204: bits 3:0 go to +292, bits 7:6 give the SDRAM size at +252 (0 is 32, 1 is 64, 2 is 128, 3 is logged and rejected), bit 4 gives +256 (set 2, clear 3) and bit 5 gives +260 (set 4, clear 2). Any other phase returns 0 without reading.
- `odsyFlagInterrupt` (`odsy_intr.o`, offset 0x11c, 1048 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)`.
  Flags interrupt handler of patch 4103. It adds one to a counter in a per-CPU table (32 bytes a CPU, the CPU number read from the halfword the kernel keeps at a fixed negative address, word +16 of the entry), reads the flags word at register +4116 and the enable mask at +4148 and keeps the raw flags for later. Pending is the AND of the two: bit 9 calls `odsyLowaterInterrupt` and bit 31 `odsyGenlockInterrupt`; every other pending bit logs its own message through `cmn_err`: bit 25 (severity 5, CFIFO hardware flag), 30 (5, clock stopped), 29 (4, read during diagnostic), 28 (push-command error), 27 (graphics overflow), 24 (display-back-end overflow), 23 and 22 and 21 and 20 (the display-FIFO, transform input-FIFO, microcode and page-table overflows), 18 (crossbar stall), bits 17 to 14 together (5, host flag), 13 (privilege violation), 11 (DMA done flag), 10 (DMA command overflow), 8 (illegal output format), 7 (multiple get), 4 (5, correctable ECC error with the word "multiple" when bit 3 is set and "single" otherwise, and a count at board record +22268 goes up), 2 (uncorrectable ECC), 1 (sync timeout) and 0 (heuristic overflow); all the others use severity 4. When the raw flags intersect 0x39f02587 it calls `odsy_teardown`; otherwise it stores the pending bits to the clear register at +4124. The message strings are the same set as the IP30 routine's.
- `gfP_OdsyBRDMGRsetColors` (`odsy_brdmgr.o`, offset 0x0, 1772 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Private colour-map load in patch 4103 (arguments: request, pointer to the user structure, status out). It copies in 16 bytes with `copyin` (failure logs a severity 4 message, stores 14 and returns 14): a halfword count at +0, whose zero value returns 0 after storing 0, and a pointer at +8 to count entries of 8 bytes (index word, colour word). The array is allocated with `kmem_alloc` (failure stores and returns 12) and copied in (failure logs a second severity 4 message and returns 14 without freeing the array). Unless the start-up word at board +22304 is set it takes the display semaphore (+10256, priority 25). Runs of consecutive indices are sent through the FIFO window at the register base (+736) plus 0x400000: before each run `odsy_poll_dfifo_level` waits for level 15, and the run's header word is 0x70000000 OR the first index shifted left 14 OR the length in 14 bits, followed by the colour words. Words are paired into doublewords across headers and colours, the earlier word in the high half, so a run does not end on a doubleword boundary; before any colour word at a multiple of 32 words sent the routine waits for level 0. An odd total ends with a wait for level 15 and a doubleword holding the held word over a header of 0x70000000 (index and length 0). A failed wait frees the array, releases and returns 5. The release is the inlined one: take the spin lock at +10272, and when a cursor doubleword is waiting at +10280 wait for level 12, write the control word at +22000 to display register 0x2581 (header 0x79604001) with bit 1 cleared and bit 5 taken from the halfword at +10288 if they disagree, push the cursor doubleword, clear it and set bit 1 of the control word, then `vsema`. The 6.5.30m build's colour-map load has the same run splitting; the board-record offsets are the ones that moved.
- `gf_OdsySetDisplayMode` (`odsy_retrace.o`, offset 0xb68, 1144 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
  Per-window display mode in patch 4103 (arguments: manager object, window id, mode word). Under the display semaphore at board +10256 (taken unless the start-up word at +22304 is set) it waits for display-FIFO level 15, and returns 5 after releasing when the wait fails. It pushes one doubleword to register base plus 0x400000: the low word is 0x70000001 OR (id + 10496) shifted left 14, the high word the mode word with bit 30 cleared. For ids below 32 it then takes the mutex at +4664 (`mutex_lock`, priority 25), compares bit 30 of the mode word with the id's bit in the shadow word at +4688 and, when they differ, flips that shadow bit and writes the id's single-bit mask to register +4292 (0x10c4) for a set bit or +4300 (0x10cc) for a clear one. A set bit for the id in the pending mask at +4720 is cleared and `odsyValidateBuffer` is called with the board and id. It unlocks and returns 0. Both exits run the inlined cursor replay (spin lock at +10272, pending doubleword at +10280, level 12 wait, control word at +22000) before `vsema`. These are the 6.5.30m steps with the board-record offsets lowered by 23840.
- `gf_OdsyCreateDDRN` (`odsy_ddrn.o`, offset 0x54, 888 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddrn.o)`.
  Creates the per-client context record in patch 4103 (arguments: board record, resource node; 0 on success, 1 on failure). The records are not allocated one by one here: they are the 127 slots of 480 bytes of a static table, free when the id at +0 is -1. The routine fails with a severity 5 message when bit 2 of the word at +48 of the object behind node +64 is set, and with a severity 4 message (clearing the node's word at +56) when the board's started halfword at +708 is zero or the word at +728 is nonzero. It takes the table semaphore at board +6032 (`psema`, 25), picks the first slot whose id is -1 (all 127 taken: release, log and fail), stores the slot in the node at +112, writes the slot number as the id and counts up the board's context count at +4640, then releases. It initialises the record: +304, +404, +400, +356, +352, +152, +104, +96 and +448 cleared; +160, +168 and +176 set to -1; +456 and +452 set to 1; the node at +144; a set at +312 with `OdsyInitCSet` (shift 4). `OdsyAlloc32kSlot` on the board's bitmap at +6112 gives the slot kept at +164 (a negative result logs, undoes the count and the id, and fails); the halfword of that slot in the table at board +752 is cleared. A 16384-byte buffer comes from `kmem_zalloc` (failure logs and fails), `odsyMapPages` maps it with the handle at +128 and `ddv_getaddr` turns the handle into the address kept at +120 (a mapping failure frees the buffer, logs and fails). The clip rectangles are then set to the full range (the low 13 bits of +40 and +44 cleared, the four pairs at +8 to +36 widened to the full 24-bit range), +64 to +76 set to 0xff00ff00, +56 and +60 to 4097 and +48 and +52 to -1, `odsyResetHwShadow` runs on the buffer, and word +124 of the 128-byte entry selected by the board halfword at +10472 is set to 1. The record is 480 bytes with a different field order from the 592-byte one the 6.5.30m routine allocates.
- `odsyInitInterrupts` (`odsy_init.o`, offset 0x2030, 752 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Programs the interrupt registers of one board in patch 4103 (argument: pipe number; board record is pipe times 22312 from the board table). Each register is built in a record shadow and stored once to the register base at +736, with no `sync` between stores. Register 0x3c gets the low word of the doubleword at +21976 (shadow +10364); 0x34 (shadow +10360) takes the low 8 bits of the halfword at +21960 into bits 31:24, sets bits 23, 22 and 21, sets bit 19 with bits 20 to 16 otherwise clear, and takes the halfword at +21978 as its low 16 bits; 0x5c (shadow +10368) ends with bit 13, bits 12:10 and bits 7:0 set and bits 9:8 clear; 0x1054 packs the low bytes of the halfwords at +21968, +21966, +21964 and +21962 into bits 31:24, 23:16, 15:8 and 7:0 (shadow +10396); 0x104c takes the low word of the doubleword at +21984 (shadow +10392); 0x105c (shadow +10400) ends with bit 0, bits 5:3, bit 10, bits 15:13, bits 21 to 19 and bit 20, and bit 29 set, bits 2:1, 12:11, 25:22 and 28:26 cleared and the other bits untouched; 0x1044 (shadow +10388) takes the halfword at +21986 as its low 16 bits, sets bits 29, 28, 24 to 22 and 19 to 16 and clears bits 27:25 and 21:20; and the enable mask at 0x1034 (shadow +10384) starts from its old shadow value, sets bits 31 to 27, clears bit 25, sets bits 24 to 21 and 18, is ANDed with the literal 0xfffffffffffc3fff (clearing bits 17:14), and then has bits 13, 10, 8, 7, 4, 3, 2 and 1 set and bits 12, 11, 9 and 0 cleared. The 6.5.30m routine clears bit 31 of the mask; this one sets it.
- `odsyConfigFb` (`odsy_brdmgr.o`, offset 0x6ec, 2056 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Frame-buffer layout in patch 4103 (arguments: board record, request block with width +0, height +4, depth +8 and accumulation choice +12). It has no early return for a probe flag. The width in 16-pixel tiles is rounded up to an even count and multiplied by the height in tiles; depth 32 uses that count as is, 16 halves it (rounded up) and 8 quarters it, with display depth codes 4, 3 and 2 (any other depth is not checked here and leaves the count undefined, which the request handler prevents). The start slot (the board word at +1232 divided by 512) is rounded up to a multiple of four and stored back shifted left 9, with the depth byte at +1193, the sizes at +1208 and +1212 and the tile counts at +1220 and +1224; a record pointer to +1176 goes to +2008. The overlay and window-id region follows at the next multiple of four (start word +1368, depth byte 2 at +1329, record at +1312 pointed to from +2016) and takes the tile count divided by 16, rounded up. The accumulation choice 0, 1 or 2 gives 0, 2 or 4 eight-bit buffers (other values leave the count undefined); up to four 136-byte records are filled from +1448 with their start in the word at +1504 plus 136 a record, depth byte 8 at +1465, sizes and tile counts at +1480 to +1496 and the choice at +1467, the four pointers at +2032 are cleared first. The first free texture address, after rounding, goes to +960 shifted left 9. When that slot shifted left 13 is not below the SDRAM size at +252 shifted left 20 it logs a severity 4 message and returns -1. Otherwise it writes eight words into the request block: the frame start (+16, from +1232), the overlay start (+20, from +1368), the frame start slot shifted left 13 (+24), the frame size (+28), overlay size (+32), accumulation size (+36), the gap before it (+40) and the SDRAM size in bytes (+44). Under the display semaphore (unless the start-up word at +22304 is set) it waits for display-FIFO level 10 and sends six display-register stores at the register base plus 0x400000, each with its header taken from `.lit8`: register 0x2800 gets the overlay start, 0x2801 the frame start, 0x2802 and 0x2803 get 0, 0x2807 the even tile width and 0x2809 the depth code. A failed wait releases and returns -1. It stores the width and height at +232 and +234, 2 at +718, clears 8 bytes at +710 and returns 0 after the cursor replay on release. The six-register sequence matches `pbj/README.md`; unlike the 6.5.30m routine the width and height registers get 0.
- `gfP_OdsyBRDMGRconfigFb` (`odsy_brdmgr.o`, offset 0xef4, 276 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Frame-buffer request in patch 4103. It copies 48 bytes in from the user address at +32 of the first argument (a fault logs a severity 4 message and stores and returns 14), rejects with 22 and returns -1 when the first two words are 4096 or more or the depth word at +8 is not 8, 16 or 32 (severity 4 message), calls `odsyConfigFb` on the board pointer at +32 of the first argument, copies the 48 bytes back (a fault logs and returns 14) and stores `odsyConfigFb`'s result in the result word, returning it. The copy is 48 bytes against 52 in the 6.5.30m routine, and the board pointer is at +32 where that routine reads +40.
- `odsy_i2c_cmd` (`odsy_ddc.o`, offset 0x21e4, 2284 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  User two-wire command in patch 4103, with a 13-entry command table (commands 0 to 12; anything above returns -22) where the 6.5.30m routine has 17. The request block has the command halfword at +2, the port at +8 (0 selects the port handle at board record +22176, 1 the one at +22216, any other value returns -22), the address byte at +4, register at +5, value at +6, status word at +12, count at +16 and +20, buffer pointers at +24 and +32 and the acknowledge mode at +40. It takes the mutex of the record behind the handle (`mutex_lock`, priority 25, at +10240 when the handle's word at +28 is nonzero and +10224 otherwise) and releases it on every exit. Command 0 resets the port with `odsy_i2cReset`; 1 starts a transfer with `odsy_i2c_start` (address byte and acknowledge mode), 2 stops with `odsy_i2c_stop`, and each copies the 48-byte block back with the status in +12 (a failed copy logs at severity 4 and returns 14); there is no clock-part register write around them. Command 4 copies the data in with `odsy_copyin_cmd` and sends up to the count bytes with `odsy_i2c_sendbyte`; command 3 (count 1 to 256, buffer pointer required, else -22) receives that many with `odsy_i2c_long_recvbyte` and copies them out; both stop at the first failing byte, copy the block back and return the count, or -5 for an early stop, or -14 for a failed copy. Command 5 returns -22. Commands 6 and 7 store the address byte shifted right by one at handle +32 and write a clock-part register with `odsy_i2cPLLRegWrite` or read one with `odsy_i2cDDCRegRead` into the block's +6, put the result in +12 and copy the block out. Command 8 needs a positive clock-part variant at board +292; for port 0 it probes the EDID into the slot at board +308, and for port 1 it selects the channel by the halfword at +0 (clock-part register 0 set to 0x10 and register 5 written with bit 5 clear for the left channel into the slot at +438, 0x20 and bit 5 set for the right one into +568), where the value written to register 5 comes from the byte that the preceding register read left in a stack byte after the routine overwrites it with the read's own status, and ends with register 0 set to 0x30. Command 9 copies a probed 128-byte slot out of those three (flag halfword at +308, +438 or +568, data 2 bytes later), returning -22 when its flag is zero or the variant is not positive and -14 for a failed copy. Commands 10 and 12 log a severity 4 message and run `odsy_i2cProbe2ab` or `odsy_i2c2abPresencechk` on the handle at +22176, any failure returning -5. Command 11 copies the data in, runs `odsy_2abCmdWrapper` and copies the reply from a static buffer out. The DM5 video-chip commands are not present in this build.
- `gfP_OdsyBRDMGRcursor` (`odsy_brdmgr.o`, offset 0x125c, 3380 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Private cursor request in patch 4103. It copies 40 bytes in (a fault logs a severity 4 message, stores 14 and returns 14) and works through the flag word at +0 bit by bit. Bit 0 stores the two halfwords of word +4 at board +21996 and +21998. Bit 1 calls `gf_OdsyPositionCursor` with the two halfwords of word +8. Before the next bits the routine takes the display semaphore at +10256 (`psema`, 25) unless the start-up word at +22304 is set. Bit 2 waits for display-FIFO level 15, keeps word +12 as the control word at +22000 and sends it as register 0x2581 (header 0x79604001 from `.lit8`, data masked with 0xffffffff). Bit 3 copies 60 bytes from the pointer at +16, waits for level 7 and sends 15 colour words behind the header 0x3964000f; bit 4 copies 512 bytes from +24 and sends 128 glyph words behind 0x39400080; bit 5 copies 256 bytes from +32 and sends 64 alpha words behind 0x39700040. The words are packed two to a doubleword with the earlier one in the high half, and the bulk blocks wait for level 0 each time the running word count is a multiple of 32. A failed copy returns 14 (logging, and releasing the semaphore first) and a failed FIFO wait 5. The release is the inlined one: spin lock at +10272, pending doubleword at +10280 sent after a level 12 wait together with the control word rewrite at +22000 (bit 1 cleared, bit 5 taken from the halfword at +10288), `vsema`. The status word goes to the third argument. The structure and constants are those of the 6.5.30m routine with the board-record fields moved.
- `odsyInitDBE` (`odsy_init.o`, offset 0x23f8, 3960 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Display back-end start-up in patch 4103 (arguments: board record, timing structure, quick-start flag; no result). Under the display semaphore (taken unless the start-up word at +22304 is set) it waits for FIFO level 10, sends display register 0x2b00 five times with data 0 and register 0x2700 with 0x0006d3e0 (headers from `.lit8`), waits for level 0 and copies the words at register-window offsets 0x23241c and 0x232414 (display registers 0x2483 and 0x2482) to +22164 and +22168. It sets up the main and option two-wire port handles at +22176 and +22216 with `odsy_i2c_init_port_handle` (a failure logs at severity 1 and start-up continues), waits for level 15 and reads the window word at 0x23380c. When the halfword at +296 is still zero it marks it 1, reads register 0 of the device at address 31 on the option port and, when the low nibble is 3, stores 3 at +298, reads register 7 into +300 and calls `add_to_inventory` with type 17 and class 3. With the option card present (+298 equal to 3) it waits with `odsy_DCDResetDone`, writes the clock part's register 0 as 16 and, for each channel whose probe flag (+438 left, +568 right) is still zero, writes register 0 as 16 or 32, register 5 with bit 5 clear or set, and probes the EDID with `odsy_i2cProbe2b` into the slot, finishing with register 0 as 48; with no option card it probes the main port into the slot at +308 when that flag is zero and the clock-part variant at +292 is positive. It then calls `odsyConfigFb` with 1280 by 1024 at depth 8. The quick start sends registers 0x2802 and 0x2803 with data 0; the full start waits for level 14, sends the block's width and height there and calls `odsyLoadTimingTable` with the timing structure. The 32-entry mode table (registers 0x2900 to 0x291f) and the 8-entry table (0x2920 to 0x2927) are written with a FIFO wait at every 16th entry; the data words are built from stack words that this routine never sets (masked with 0xfffffffffe001fff, ORed with 0x4b5e00 and the low 9 bits cleared for the first table, the top 24 bits kept for the second), so their values are not given by the code. After a level 11 wait it zeroes registers 0x2929 to 0x292c and 0x2581, clears the control word at +22000, releases with the cursor replay and calls `odsyBlankScreen` with blanking off. The probes for the compositor, Denali, Rainier and serial-number parts, and the part-presence words at +700 to +712 that the 6.5.30m routine fills, are absent from this build.
- `odsyGenlockInterrupt` (`odsy_intr.o`, offset 0x5bc, 2888 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)`.
  Genlock interrupt in patch 4103, a shorter routine than the 6.5.30m one. Unless the start-up word at +22304 is set it takes the display semaphore (+10256, `psema` priority 25), reads the genlock status word from the register window at 0x233e6c (display register 0x27cd) and the control word at 0x233e64 (0x27cc), keeps the control-word shadow at +22160, and releases with the usual cursor replay between the reads. Status bit 0 clear logs "Invalid GenState" at severity 1 and returns; control bit 6 clear returns quietly. Status bit 1 set is a lost lock ("Losing Genlock", severity 4) and clear a gained one ("Gaining Genlock"). The clock part on the option port (handle +22216, address byte at +22248) is then rewritten with no check of the write results (the 6.5.30m routine logs each failure): with a positive variant at +292 it uses address 0x58 and writes registers 1, 2 and 6 from the low bytes of the words at +10492, +10496 and +10500 for a lost lock or +10504, +10508 and +10512 for a gained one; otherwise it uses address 0x26, reads register 7, writes register 0 as 0x01 (lost) or 0x11 (gained) and register 7 as the saved byte with bit 7 set (lost) or cleared (gained). It retakes the semaphore, waits for FIFO level 0 and, when that succeeds, clears (lost) or sets (gained) bit 1 of the shadow at +22160, stores it and sends it as display register 0x2481 (header from `.lit8`), releases with the replay and calls `rrmGenlockNotify` with the record's first word and 0 or 1. This build keeps no per-CPU event count, has no mutex or timing-word test around the clock rewrite, and does not read the status behind a level 0 wait.
- `odsyBlankScreen` (`odsy_brdmgr.o`, offset 0x207c, 3320 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Blank, unblank or restore the picture in patch 4103 (arguments: board record, mode 0, 1 or 2; any other mode logs a severity 4 message and returns -1). Every mode first clears bit 5 of the display register 0x2482 shadow at +22168, takes the display semaphore (+10256) unless the start-up word at +22304 is set and waits for display-FIFO level 12 (mode 1: 14); a failed wait returns -1 where the 6.5.30m routine returns 5. Mode 2 (blank) then reads the window word at 0x233604, sets its bit 0 and sends it as display register 0x26c0 (header from `.lit8`), clears bits 5, 1 and 0 of the 0x2483 shadow at +22164, and sends registers 0x2482 and 0x2483 from the shadows. Mode 0 clears bit 0 of the 0x26c0 word instead, sets bits 0, 1 and 5 (0x23) of the 0x2483 shadow and sends the same three registers. Mode 1 also clears bit 5 of the 0x2483 shadow, waits for level 14 and sends only registers 0x2482 and 0x2483. When the option card is present (halfword +298 equal to 3) each mode changes register 0 of the device at address 23 on the option port (handle +22216, byte +22248) before the display writes: it reads the register with `odsy_i2cDDCRegRead` and writes it back with `odsy_i2cPLLRegWrite` ORed with 0x0e for mode 2, with bits 3:1 cleared for mode 0 and ORed with 0x08 for mode 1; a failed write returns -1. This build has no `odsy_reconfigDCD2FPLD` call and no return value of 11. The release replays a pending cursor doubleword (spin lock +10272, doubleword +10280, level 12 wait, control word +22000) before `vsema`, and success returns 0.
- `odsyLoadTimingTable` (`odsy_brdmgr.o`, offset 0x3320, 6944 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Loads a video timing in patch 4103 (arguments: board record, timing block). It works under the display semaphore at +10256 (taken unless the start-up word at +22304 is set), uses the register base at +736 and returns 0, or -1 when a FIFO wait fails. After a level 0 wait it sends display register 0x2b00 with the low 3 bits of timing word +208 and rewrites 0x2700 (read through the window at 0x233804) with the 3-bit fields +216 and +212 placed at bits 17:15 and 14:12 and bit 18 cleared. The clock part follows the variant at board +292. A positive variant uses the part at address 0x58 on the option port (byte +22248): it saves the words +132, +136 and +152 at board +10492, +10496 and +10500 and the words +232, +236 and +240 at +10504 to +10512 (the lost-lock and gained-lock groups that `odsyGenlockInterrupt` writes back) and writes registers 0 to 7 from the low bytes of +128 to +156. A zero or negative variant uses address 0x26 and writes the low bytes of +96 to +124 to registers 5, 4, 2, 3, 0, 1, 7 and 6 in that order, then register 8 as 90. A failed clock write leaves the clock section. After a 100 ms `odsy_usdelay` and a level 13 wait it sends display register 0x2481 with 1, clears 512 and 4096 stack bytes with `bzero`, sends them as zero blocks, and then sends the frame table (pointer +0, length +8) and line table (pointer +16, length +24), each as a block header (type 0x38 or 0x39, count taken from the length) and its halfwords packed four to a doubleword with FIFO waits as the count grows. After a level 3 wait it writes the control words 0x2481 (word +28 ORed with 0x1b8, kept as the shadow at +22160), 0x2482 (+32) and 0x2483 (+36, shadow +22164), the width and height registers 0x2802 and 0x2803 from +176 and +180 (doubled width for a dual-head flag), the mode registers 0x2805, 0x2806 and 0x2929 and the cursor control 0x2581 from bits of the flags word at +200, and, after a level 1 wait, 0x26c0, 0x2600 and 0x2680 from +160, +164 and +168, the twelve generator values 0x27c0 to 0x27cb from +40 to +84 and the generator control 0x27cc from +88 after a level 15 wait. When word +220 selects an external source it rewrites the clock part for genlock (variant above zero: registers 1, 2 and 6 from the low bytes of +232, +236 and +240; otherwise register 0 from +224's low byte and register 7 from +120 with bit 7 cleared). The option card (+298 equal to 3) then gets `odsy_LoadDCD2Regs`, and the release replays a pending cursor doubleword as in the other display routines. The IP30 entry assigns the two halves of the timing block (+96 to +124 and +128 to +156) to the opposite clock-part variants.
- `odsy_i2c_start` (`odsy_i2c.o`, offset 0x0, 3392 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Start condition and slave address on one two-wire port in patch 4103. The port record holds a pointer to the shadow control word at +0, the board record at +16 and the control register's display address as a halfword at +24; each push is a display-FIFO doubleword with header 0x30000001 OR that address shifted left 14 and the shadow as data. Before every push the routine takes the display semaphore at board +10256 (`psema`, 25, unless the start-up word at +22304 is set) after a wait for FIFO level 14 or 15; a failed wait returns 3. It sets bit 14 (force idle), waits 10 microseconds with `odsy_usdelay`, clears it, waits 10 again, reads the control register back through the window at board +0x220000 (address times 8), puts the address byte (third argument's low 8 bits) in bits 7:0, sets bits 8 (start), 9 (transfer) and 12 (send), clears bit 11 (stop), pushes, clears bit 8 in the shadow and waits with `odsy_i2c_xfer_done_loop`; a timeout is returned unchanged, otherwise the result is `odsy_i2c_recv_ack` called with 1 when the acknowledge argument is zero and 0 otherwise. Every release replays a pending doubleword at +10280. The idle pause is 10 microseconds against 20 in the 6.5.30m routine, and the shadow is reached through a pointer.
- `odsy_i2c_stop` (`odsy_i2c.o`, offset 0xd40, 2164 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  End of a two-wire transfer in patch 4103. It waits for display-FIFO level 15 (a failure returns 3), sets bit 13 (force stop) in the shadow control word reached through the pointer at port +0 and clears bit 9 (transfer) only, so the idle, start and stop bits keep their values, pushes the word as a display-FIFO doubleword (header 0x30000001 OR the halfword address at +24 shifted left 14) and runs `odsy_i2c_xfer_done_loop`, returning its failure. When that succeeds it zeroes the shadow control word, waits for level 15 again, pushes it, reads the status register through the window at +0x220000 and returns bit 22 of it: 1 while the bus is still busy and 0 once released. Semaphore and cursor replay are as in `odsy_i2c_start`. The 6.5.30m routine also clears bits 14, 8 and 11 before the push.
- `odsy_i2c_sendbyte` (`odsy_i2c.o`, offset 0x15b4, 1272 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Master data byte in patch 4103 (arguments: port, byte, acknowledge mode, stop flag). It first runs `odsy_i2c_busy_high_loop` and returns that result when it is nonzero. It then clears bit 11 (stop) or, when the stop flag equals 1, sets it, sets bit 9 (transfer), places the byte in bits 7:0 of the shadow control word (pointer at +0), waits for FIFO level 15 (failure returns 3) and pushes the word as the port's control register under the display semaphore. After `odsy_i2c_xfer_done_loop` it returns the result of `odsy_i2c_recv_ack` called with 1 when the acknowledge mode is zero and 0 otherwise, and a nonzero wait result is returned as is. The cursor replay on release follows the other display routines of this build.
- `odsy_i2c_long_recvbyte` (`odsy_i2c.o`, offset 0x1b14, 3288 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Master receive of one byte in patch 4103 (arguments: port, acknowledge mode, stop flag, byte pointer). It waits for FIFO level 15 (failure returns 3), reads the control register back through the window at +0x220000 into the shadow (pointer at +0), clears bits 12 (send) and 8 (start), clears bit 10 when the acknowledge mode equals 1 and sets it otherwise, and pushes the word. It then calls `odsy_i2c_short_recvbyte` with the byte pointer, clears bit 11 when the stop flag is not 1 and sets it when it is, pushes the word again under a level 15 wait, clears the stop bit in the shadow and, for an acknowledge mode of 0, clears bit 10 once more. The result is that of `odsy_i2c_short_recvbyte`, or 3 when a FIFO wait fails. The 6.5.30m routine returns 1 for a failed wait.
- `odsy_i2cReset` (`odsy_i2c.o`, offset 0x4bb0, 2292 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Forces a two-wire port back to idle in patch 4103. It calls `odsy_i2c_stop` once, zeroes the shadow control word (reached through port +0), sets bit 14 (force idle) with bits 13 and 9 cleared and pushes it after a level 14 wait, then repeatedly waits 10 microseconds with `odsy_usdelay`, waits for level 15, reads the status register through the window at board +0x220000 and tests the state field (status bits 13:10); it stops looping when that field is 0 or 10. The loop has no pass limit in this build. It then clears bit 14 and pushes the control word once more. The method is the same as in the 6.5.30m routine; the FIFO waits use levels 14 and 15.
- `odsy_i2c_xfer_done_loop` (`odsy_i2c.o`, offset 0x3a60, 1108 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Waits for a two-wire byte transfer to finish in patch 4103. It makes at most 500 passes (a count of 500 returns 2). Each pass takes the display semaphore at board +10256 unless the start-up word at +22304 is set, waits for display-FIFO level 15 (a failure returns 3, where the 6.5.30m routine waits for level 0), copies the status register read through the window at +0x220000 (status display address is the halfword at port +26) into the shadow status word reached through port +8, and returns 0 when bit 9 of the low ten bits (transfer done) is set; otherwise it waits 500 microseconds with `odsy_usdelay` and tries again. The 6.5.30m routine allows 800 passes of 100 microseconds.
- `odsy_i2c_busy_high_loop` (`odsy_i2c.o`, offset 0x3eb4, 1116 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Waits until a two-wire port reports the bus busy, as the first step of every master byte transfer in patch 4103. It runs up to 500 passes of the same body as `odsy_i2c_xfer_done_loop`: semaphore, FIFO level 15 wait (failure returns 3), status read through the window at board +0x220000 into the shadow at port +8, and an exit with 0 as soon as bit 22 of the status (busy) is set; otherwise `odsy_usdelay` of 500 microseconds. Running out of passes returns 2.
- `odsy_i2c_recv_ack` (`odsy_i2c.o`, offset 0x4310, 1132 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Acknowledge poll in patch 4103. It compares bit 8 of the low nine bits of the shadow status (port +8 pointer) with its argument and returns 0 on a match. Otherwise it waits 500 microseconds with `odsy_usdelay`, waits for FIFO level 15 under the display semaphore (a failed wait returns 3; the 6.5.30m routine returns 2) and rereads the status register through the window at board +0x220000. After 500 polls without a match it returns 2.
- `odsy_i2c_short_recvbyte` (`odsy_i2c.o`, offset 0x1aac, 104 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Collects the byte of a finished receive in patch 4103 (arguments: port, byte pointer). It runs `odsy_i2c_xfer_done_loop` and returns a nonzero result. Otherwise it reads the shadow status word at port +8 and, when bit 22 of it (masked to 23 bits) is clear, returns 1 without storing; when set it stores the low byte of the status word through the pointer and returns 0.
- `odsy_i2c_init_port_handle` (`odsy_i2c.o`, offset 0x477c, 1076 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Fills a port record in patch 4103 (arguments: record, board record, port number 0 or 1; any other number returns 1). Port 0 (main) gets control display address 10112 and status address 10113 with shadow words at board +10484 and +10488; port 1 (option) gets 10048 and 10049 with shadows at +10476 and +10480. The record holds pointers to those shadows at +0 and +8, the board record at +16, the addresses as halfwords at +24 and +26 and the port number at +28. The routine waits for display-FIFO level 14 under the semaphore (failure returns 3), reads both registers back through the window at board +0x220000 into the shadows and returns 0.
- `odsy_i2c_slave_recvbyte` (`odsy_i2c.o`, offset 0x3130, 2352 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`; patch 4104 carries the same bytes.
  Receives bytes while the other device drives the clock (arguments: port record, acknowledge value, buffer length, buffer pointer; result 0, 1, 3 or the transfer loop's own code). It only touches the shadow control word at first: when bit 10 of it differs from the argument's low bit it is replaced by that bit; nothing is pushed to the board. Each pass takes the display semaphore at board +10256 unless the flag at +22304 says the caller holds it, waits for display-FIFO level 15 (a failed wait releases the semaphore and returns 3), reads the status register back through the window at +0x220000 (register address halfword at port +26, times 8) into the status shadow and releases the semaphore.
  Decisions: when status bit 22 (busy) is clear it returns 0. Otherwise it calls `odsy_i2c_xfer_done_loop` and returns its result when that is not 0; it returns 1 when status bit 20 (clock error) or bit 21 (data error) is set; and when the byte count so far is larger than the length argument it flips bit 10 of the shadow control word and returns 3, so one byte more than the length can already have been stored. Otherwise it waits for level 15 again, reads the status again, stores the low byte of the status at buffer[count], increments the count (a 16-bit value) and goes back to the transfer loop while busy is still set.
  The semaphore release is the inlined helper used elsewhere in this member: it takes the spin lock at board +10272, and when the pending-cursor doubleword at +10280 is nonzero it waits for level 12 and replays the cursor shadow before the semaphore is released. A failed FIFO wait before the status read returns 3.
- `odsy_i2c_becomeSlaveRecv` (`odsy_i2c.o`, offset 0x27ec, 2372 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`; patch 4104 carries the same bytes.
  Ends a master transfer and becomes a slave receiver (arguments: port record, acknowledge value, 7-bit slave address, byte pointer; result 0, 1, 3 or the code of a failed helper). It calls `odsy_i2c_busy_high_loop` first and returns that result when it is not 0. It then takes the display semaphore at board +10256 unless the flag at +22304 is set, waits for FIFO level 15 (a failure releases and returns 3) and reads the control register back (address halfword at port +24, times 8, through +0x220000) into the shadow, releasing the semaphore.
  Control word: in the shadow it sets bit 13 (force stop) and bit 17 (slave enable) and clears bit 9 (transfer). An acknowledge argument of 1 clears bit 10 and an argument of 0 sets it; any other value leaves bit 10 alone. Bits 24:18 are replaced by the low 7 bits of the address argument. It takes the semaphore again, waits for level 15 (failure returns 3) and sends one doubleword to the FIFO port at +0x400000: the header 0x30000001 with the control address shifted left by 14, then the shadow word.
  Result: after releasing the semaphore it calls `odsy_i2c_xfer_done_loop` and returns its code when nonzero, then reads the status shadow: bit 20 (clock error) or bit 21 (data error) returns 1. Otherwise it stores the status low byte through the byte pointer, clears bit 13 of the shadow control word and returns 0. Each release uses the cursor-replay helper described in `odsy_i2c_slave_recvbyte`.
- `odsyPipeNrFromBase` (`odsy_init.o`, offset 0x94, 72 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Pipe number lookup in patch 4103: the board table is a flat array of two 22312-byte records, not a table of pointers. The routine walks indices 0 and 1, compares the register base pointer at +736 of each record with the address argument and returns the first matching index, or -1 when neither matches. The 6.5.30m routine compares a doubleword at +824 of pointers up to the board limit instead.
- `odsyPrintRegs` (`odsy_init.o`, offset 0x3538, 84 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Diagnostic register print in patch 4103. It reads the flags word at register +4116 (0x1014) and the word at +4196 (0x1064) and logs them in two `cmn_err` calls at severity 7, the first with the first bit-name table of the member's read-only data and the second with the same table base plus 1120 bytes. Each call uses its own format string from the member (offsets 1864 and 1880 of the string area).
- `odsy_init_ddrncount_timeout` (`odsy_init.o`, offset 0xe64, 56 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Timeout handler for the start-up count wait in patch 4103. It logs one severity 4 message (format at offset 1456 of the member's string area) and then calls `vsema` on the semaphore passed in its argument to wake the waiter. The body is 56 bytes, the same two calls as the 6.5.30m routine.
- `odsy_usdelay` (`odsy_init.o`, offset 0x0, 148 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Delay by microseconds in patch 4103 (arguments: board record, count). A nonzero start-up word at board +22304, or a true `in_panic_mode`, makes it spin in `us_delay`. Otherwise it divides the count by 1,000,000 for seconds, multiplies the remainder by 1000 for nanoseconds and calls `nano_delay` with that pair on the stack. The only difference from the 6.5.30m routine is the offset of the start-up word.
- `odsyDisableInterrupts` (`odsy_init.o`, offset 0x2320, 96 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Interrupt shut-off in patch 4103. It clears bit 21 of the register 0x34 shadow at board +10360 and bits 18:16 of the register 0x1044 shadow at +10388, stores both to the register base at +736 (offsets 52 and 4164), then writes all ones to the register at +4156 (0x103c). Nothing else is touched; the routine is 96 bytes.
- `gf_OdsyStart` (`odsy_init.o`, offset 0x141c, 128 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Start-up completion in patch 4103 (argument: manager object, board record at +32). It sets the context-slot word at +732 to 127, the started halfword at +708 to 1 and clears +728, +84, +120, +104, +16 and the doubleword at +8, calls `odsyInitDrawables`, converts the shadow-buffer pointer at +752 with `kvtophys`, stores the upper 16 bits of the physical address at +10448 and the low word at +10452, writes them to registers 0x4034 and 0x403c (offsets 16436 and 16444 of the register base at +736) and returns 0. These register stores carry no `sync`.
- `odsyLLPReset` (`odsy_init.o`, offset 0x149c, 128 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Crossbar link reset in patch 4103. When the device handle at board +22256 is nonzero it saves the word at register offset 36, calls `xwidget_reset` and restores the word. Otherwise it forms the host-chip window address from a literal base (0x9000000010000000) plus 64 times the low 3 bits of the widget number at +704, saves the word at +268, writes 0 to +308, waits 10 ms with `odsy_usdelay` and restores +268. The saved word in the handle case belongs to the board's own register file here, not the host chip's.
- `odsy_teardown` (`odsy_init.o`, offset 0x3498, 160 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  One-shot fatal error handler in patch 4103. It takes the semaphore at board +4648 (`psema`, 25), increments the counter at +728 and, only when it becomes 1, logs one severity 1 message, dumps the registers with `odsyPrintRegs` on the register base at +736 and calls `gthread_scan` with a kill callback and a block that holds the board record and the value 9. The semaphore is released with `vsema` on every path. Unlike the 6.5.30m routine it does not print the board number or the DMA wait counters.
- `odsyZeroOut` (`odsy_init.o`, offset 0xeb8, 196 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Zero fill of board memory in patch 4103, 196 bytes. All words go to the command FIFO window at register base plus 0x110000. It sends 1856 and 448, then walks 576 entries in groups of 16, sending a header with id 0x341 and the group's remaining size before each group and zero words after it, and ends with the constant 0xcf809014 and four zero words. The group arithmetic is that of the IP30 routine.
- `odsy_dmawait_timeout` (`odsy_dma.o`, offset 0x1e38, 56 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  DMA wait watchdog in patch 4103, much shorter than the 6.5.30m routine: it logs one severity 1 message (format at offset 800 of the member's strings) and calls `odsy_teardown` on its argument, with no mutex, no counter comparison and no follow-up messages. Both the check for outstanding work and the five-value dump of the 6.5.30m routine are absent, so every firing is treated as a hang.
- `odsy_dmawait_harmless_timeout` (`odsy_dma.o`, offset 0x1e70, 56 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Benign DMA wait timeout in patch 4103. It logs a severity 7 message (string offset 824) and wakes all waiters with `sv_broadcast` on the variable at board +2488; the 6.5.30m routine broadcasts on +5816. No register is touched.
- `ReleaseTftchWarList` (`odsy_dma.o`, offset 0x2a4c, 80 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Frees the texture-fetch hazard list in patch 4103. A count below 2 at +0 frees nothing and only clears the count and the pointer at +8. A count of 2 or more frees the array with `kmem_free` for 48 times the count minus 48 bytes (the array holds one entry less than the count), with no poison fill, and then clears both fields.
- `odsy_DeleteDmaRegion` (`odsy_dma.o`, offset 0x190, 88 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  DMA region teardown in patch 4103. If the pinned flag at +52 is set it calls `unuseracc` on the user address at +32 and length at +40 with flags 272. A non-null translation table at +0 is released with `kmem_free` for the size at +8, and the 88-byte record itself is freed. Neither block is overwritten before it is freed, unlike the 6.5.30m routine.
- `odsy_DmaRegion_UnPin` (`odsy_dma.o`, offset 0x250, 88 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Unpins a DMA region in patch 4103. With the flag at +52 set it calls `unuseracc` on the address at +32 and length at +40 (flags 272) and clears the flag; a non-null translation table at +0 is freed with `kmem_free` for the size at +8, and the size and pointer are zeroed. There is no poison fill of the table.
- `odsy_ctxsw_timeout` (`odsy_ctxsw.o`, offset 0x0, 92 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Context-switch watchdog in patch 4103. It logs one severity 1 message (string offset 176, no board number argument) and then tests a word in the member's small data (the flag that says a timeout is real): nonzero calls `odsy_teardown` on its argument, zero re-arms the same handler with `timeout` for 1500 ticks.
- `odsy_glget_timeout` (`odsy_ctxsw.o`, offset 0x5c, 92 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  State read-back watchdog in patch 4103, the twin of `odsy_ctxsw_timeout`: severity 1 message from string offset 200, then `odsy_teardown` when the member's real-timeout flag is nonzero, otherwise `timeout` again with its own handler for 1500 ticks.
- `odsyFifoTimeout` (`odsy_flow.o`, offset 0x390, 88 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)`.
  Command-FIFO timeout handler in patch 4103. In order it calls `odsy_teardown`, clears the word at board +104, calls `odsyDisableInterrupts`, decrements the word at +80 of the structure behind +32 of the pointer at +72, logs one severity 4 message (string offset 80) and clears the timer word at +22264.
- `odsyFifoTimer` (`odsy_flow.o`, offset 0x32c, 100 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)`.
  Command-FIFO watchdog control in patch 4103; the timer id is the word at board +22264. A nonzero second argument arms the timer only when the word is zero, calling `timeout` with `odsyFifoTimeout`, the board and 1500 ticks and saving the id. A zero second argument calls `untimeout` on the stored id without first testing it and clears the word.
- `odsyLowaterInterrupt` (`odsy_flow.o`, offset 0x2ac, 128 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)`.
  Command-FIFO low-water interrupt in patch 4103. It cancels the FIFO timer, clears bit 9 of the enable shadow at board +10384, writes 0x200 to the clear register at +4156 (0x103c), decrements the word at +80 of the structure behind +32 of the pointer at +72 and zeroes the word at +104 under the spin lock at +22260, and calls `force_resched`.
- `odsyDmaInterrupt` (`odsy_intr.o`, offset 0x534, 64 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)`.
  DMA interrupt handler in patch 4103, which this build treats as unexpected: it logs one severity 4 message (string offset 992) and adds one to the word at +16 of this CPU's 32-byte entry in the global per-CPU interrupt table (CPU number read from the kernel's fixed halfword). It reads no board register and wakes nobody.
- `odsyUnpinAndUnmapPfStatRegions` (`odsy_map.o`, offset 0x8a8, 48 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Releases the performance-statistics mapping in patch 4103. When the doubleword at board +10312 (the kernel buffer pointer) is nonzero it calls `odsyUnmapPages` on the handle field at +10328 and returns its result; otherwise it returns 0. Offsets are 23824 below the 6.5.30m ones.
- `odsyPinAndMapPfStatRegions` (`odsy_map.o`, offset 0x848, 96 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Maps the performance-statistics buffer in patch 4103. A zeroed stack request gets 1 at +16, 3 at +24 and the length word from board +10304 at +8; `odsyMapPages` is then called with seven arguments: 0, the user-address field at +10320, the kernel pointer at +10312, the length at +10304, the request, 1 and the handle field at +10328. Its result is returned.
- `odsyMapPages` (`odsy_map.o`, offset 0x8d8, 228 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Kernel-to-user mapping helper in patch 4103, seven arguments (a first value passed through to the mapping call, a user-address pointer, the kernel base, the length, a request block, a flag and a handle pointer). It calls `gfxdd_mmap_mem_ex` and returns 12 when that fails. Otherwise it locks the handle with `ddv_lock`, maps (length + 16383) >> 14 pages from the kernel base with `ddv_mappages`, stores `ddv_getaddr` of the handle through the user-address pointer on success when one was given, unlocks, and on a failed mapping calls `gfxdd_munmap` on the handle and returns that result; success returns 0. The 6.5.30m routine is the same sequence with fewer arguments.
- `gf_OdsyInvalTLB` (`odsy_map.o`, offset 0x408, 128 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Translation invalidation in patch 4103. It finds the current thread (`curthreadhandle`, `gthread_find`); when bit 2 of the word at +8 of the result is set it asks `thread_issproc` and returns 0 if that answers no. Otherwise it calls `ddv_invaltlb` on the handle at board +40 for the whole range, sets the bit numbered by the CPU halfword from the fixed kernel address in the word at board +56, and returns 0. The IP30 routine uses the handle at +48 and the word at +104.
- `odsy_regmatch` (`odsy_attach.o`, offset 0x0, 96 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_attach.o)`.
  Recycle callback of `gf_OdsyAttach` in patch 4103. With a non-null first argument it calls `gf_OdsyUnMapGfx` on it, clears the field at +72, and destroys the handle at +40 with `ddv_destroy_handle` (clearing +40) when there is one. In every case it then stores its second argument at +40 of its third argument. There is no `splhi` bracket in this build, and the handle sits at +40 where the 6.5.30m routine uses +48.
- `gf_OdsyDetach` (`odsy_attach.o`, offset 0x1a8, 100 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_attach.o)`.
  Detach for one board in patch 4103. When bit 2 of the flag word at +48 is set it calls `odsyDiagExit` with the pointer at +32 and the record; when bit 0 is set it calls `gf_OdsyUnMapGfx`. It then calls `gfxdd_munmap` on the handle at +40, clears that field and returns 0, with no `splhi` or `splx` around the unmap.
- `odsyInitDDRNs` (`odsy_ddrn.o`, offset 0x0, 84 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddrn.o)`.
  Client-context table reset in patch 4103. The table is a static block of 0xee20 (60960) bytes, 127 slots of 480 bytes, which the routine clears with `bzero` and then walks, storing -1 in the id word at +0 of every slot. Nothing is allocated and the board is not touched, where the 6.5.30m routine allocates 1016 bytes per board.
- `gfP_OdsyDIAGreset` (`odsy_diag.o`, offset 0x938, 72 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`.
  Private reset request in patch 4103 (arguments: request, board pointer at +32, an integer, a status pointer). It calls `odsyReset` with the integer argument, then `odsyInitDBE` on the board with `default_timing` and quick-start flag 0, stores 0 through the status pointer and returns 0. This build does not register the board with `htp_register_board`, pause, or reset twice.
- `odsyDestroyPfRgn` (`odsy_diag.o`, offset 0x6c8, 112 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`.
  Releases the statistics region in patch 4103. When the pointer at board +10312 and the length at +10304 are both nonzero it unmaps with `odsyUnpinAndUnmapPfStatRegions`, frees the buffer with `kmem_free` for the length, clears the words at +10440, +10436, +10320, +10312 and +10304, and writes 0 to the board registers at offsets 16412 (0x401c) and 16420 (0x4024) so the board stops writing to host memory.
- `gfP_OdsyDIAGfreeScanbuf` (`odsy_diag.o`, offset 0x214, 144 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`.
  Frees a client's diagnostic scan buffer in patch 4103. It takes the mutex at board +22008 (`mutex_lock`, 25); when the owner word at +22056 equals its first argument it unmaps the handle at +22040 with `odsyUnmapPages`, frees the buffer at +22024 for the size at +22048 with `kmem_free` and zeroes the owner, size and both pointers. It always unlocks, stores 0 through its status pointer and returns 0.
- `odsyInitDrawables` (`odsy_drawable.o`, offset 0x0, 92 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  Drawable table creation in patch 4103. It allocates a 13-bucket table with `odsyHashAlloc` into board +10520 (a failure logs one severity 4 message) and, whether or not that worked, initialises the multiple-reader lock at +10528 with `mrlock_init`, using a name string from the member and a first argument of 1.
- `odsyFindDrawable` (`odsy_drawable.o`, offset 0x5c, 108 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  Drawable lookup in patch 4103. It takes the read side of the lock at board +10528 with `mraccessf`, forms the bucket as the identifier's low 16 bits ORed (not added) with its upper half, reduced modulo 13, calls `odsyHashLookup` on the table at +10520 with that bucket and the identifier, unlocks with `mrunlock` and returns the node or 0.
- `odsy_copyin_cmd` (`odsy_ddc.o`, offset 0x215c, 136 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  User command buffer copy-in in patch 4103. A length word at +16 outside 1 to 256 logs a severity 1 message (string offset 1136) and returns -22. A null buffer pointer at +24 returns 0 without copying. Otherwise `copyin` runs for the length; a fault logs a severity 1 message (offset 1192) and returns -14, success returns 0.
- `odsy_i2c2abAttention` (`odsy_ddc.o`, offset 0x1cec, 148 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Monitor attention service in patch 4103. It clears five stack bytes, calls `odsy_i2c_becomeSlaveRecv` with acknowledge 1, slave address 80 and the buffer, then `odsy_i2c_slave_recvbyte` with acknowledge 1 and a length of 4 into the buffer from offset 1. A failure of the first logs a severity 1 message (string offset 328), a failure of the second another (offset 408); either returns 1, success returns 0.
- `odsy_i2cPLLSeqRegWrite` (`odsy_ddc.o`, offset 0x218, 240 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Sequential clock-part register write in patch 4103 (arguments: port, first register, data pointer, count). It starts a write to the address held at port +32 shifted left by one, sends the register number, sends count minus one data bytes with the stop flag clear and the last byte with it set, each through `odsy_i2c_sendbyte` with acknowledge 1. Any failing step calls `odsy_i2cReset` and returns 1; success returns 0.
- `odsy_i2cPLLSeqRegRead` (`odsy_ddc.o`, offset 0x308, 276 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Sequential clock-part register read in patch 4103 (arguments: port, first register, buffer, count). It starts a write transfer to the address at port +32 shifted left by one, sends the register number, restarts with the address byte 77 and takes the first byte with `odsy_i2c_long_recvbyte` (acknowledge, no stop), the following count minus two with `odsy_i2c_short_recvbyte` and the final byte with a long receive that refuses the acknowledge and sets stop. A failure calls `odsy_i2cReset` and returns 1; success returns 0.
- `odsy_2abCmdWrapper` (`odsy_ddc.o`, offset 0x2dec, 288 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Monitor-bus command with retries in patch 4103 (arguments: port, request record, command bytes, receive buffer; length at +16, reply pointer at +32, reply length halfword at +20). Each attempt clears +20 and calls `odsy_2abSendCmd` with the stop flag set only when no reply is wanted. A failed send is retried up to a limit read from a small-data word, then the routine returns -5. When a reply is wanted `odsy_2abGetReply` runs, its length goes to +20, a positive length is returned, a zero (timeout) leads to -145 after the retries and any other result to -5; before each retry it waits with `odsy_usdelay`, using one small-data value for the first retry, a second for the next and a third for all later ones.
- `odsy_i2c2abReset` (`odsy_ddc.o`, offset 0x1bbc, 304 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Monitor-bus reset message in patch 4103: `odsy_i2c_start` to address 110, then `odsy_i2c_sendbyte` of 80, 129, 240 and 79, all with acknowledge 1. Unlike the identification request, the last byte (79) is sent without the final flag. Each of the five steps has its own severity 1 message (string offsets 72, 128, 176, 224, 280) and a failure returns 1; success returns 0.
- `odsy_i2c2abIDRequest` (`odsy_ddc.o`, offset 0x1d80, 304 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Monitor identification request in patch 4103: `odsy_i2c_start` to address 110, then bytes 80, 129, 241 and 78, the last flagged final, through `odsy_i2c_sendbyte` with acknowledge 1. Five separate severity 1 messages (string offsets 480, 536, 592, 648, 712) belong to the five steps; failure returns 1, success 0.
- `odsy_i2c2abPresencechk` (`odsy_ddc.o`, offset 0x1eb0, 304 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Monitor presence check in patch 4103, the same frame as `odsy_i2c2abIDRequest` with a different last byte: `odsy_i2c_start` to address 110, bytes 80, 129 and 241, and a final byte 72 flagged final. Five separate severity 1 messages (string offsets 768, 832, 888, 944, 1016) belong to the five steps; any failure returns 1 and success returns 0.
- `odsy_2abSendCmd` (`odsy_ddc.o`, offset 0x2f0c, 732 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Framed command send to the monitor in patch 4103 (arguments: port, command length, command bytes, stop flag). The frame is `odsy_i2c_start` to the monitor address kept in a small-data byte, the host address byte kept next to it, the length byte (command length plus 128), the command bytes, and a checksum that XORs the monitor address, host byte, length byte and every command byte; each goes out through `odsy_i2c_sendbyte` with acknowledge 1. Any failed step calls `odsy_i2cFixupAfterErr` and the frame starts again, for up to four attempts; a reset command (first byte 0xf0) that has used its attempts toggles the stored monitor address between 110 and 4 and starts over. When the stop flag is set it ends with `odsy_i2c_stop`. It returns 1 on success and 0 when the attempts run out.
- `odsy_2abGetReply` (`odsy_ddc.o`, offset 0x31e8, 560 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Framed monitor reply receive in patch 4103 (arguments: port, buffer, reply length out). It sends `odsy_i2c_stop`, zeroes the reply length and calls `odsy_i2c_becomeSlaveRecv` with acknowledge 1 and slave address 40 into a stack byte: a result of 2 returns 0 and any other failure returns -1 after `odsy_i2cFixupAfterErr`. A first byte with bit 0 set is refused (-1). It then reads the following byte, the length byte (body length is its low 7 bits) and the body bytes with `odsy_i2c_slave_recvbyte` (acknowledge 1), storing the body in the caller's buffer and counting each byte in the reply length, XORing every byte it sees, reads the checksum byte, waits `odsy_usdelay` for a small-data value and returns the reply length when the checksum equals the XOR and -1 otherwise.
- `odsy_i2cProbe2ab` (`odsy_ddc.o`, offset 0x1ff0, 364 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Monitor-bus start-up conversation in patch 4103 (argument: port). It runs up to 30 passes. Each pass tries `odsy_i2c2abReset` up to three times, calls `odsy_i2c2abAttention`, and on success twice does `odsy_i2c2abIDRequest`, `odsy_i2c2abIDReply` into a stack buffer and `odsy_i2c2abAssignAddr`; a failed step logs a severity 1 message, and a pass that did not complete waits 100 microseconds with `odsy_usdelay` and counts. The routine returns 0 when it finishes before the 30th pass and 1 when the passes are used up.
- `odsy_Probe2AB` (`odsy_ddc.o`, offset 0x2ad0, 796 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Monitor-bus discovery in patch 4103 (arguments: port, reply buffer). After `odsy_i2cReset` it makes up to 30 passes. A pass sends the command byte 0xf0 through `odsy_2abSendCmd` (stop flag clear) up to three times, then reads with `odsy_2abGetReply`; the reply must be the single byte 0xe0, otherwise it stops, waits with `odsy_usdelay` and retries. A monitor address byte kept in small data is reset from 4 to 110 on the way. Twice it then sends the identification request 0xf1 and, when the reply (under 128 bytes) starts with 0xe1, copies the identification bytes aside, sends 0xf2 followed by them and the new address 4 with a stop and, on success, stores 4 as the monitor address. Finally it compares the first 19 identification bytes with three stored identifiers using `strncmp`: a match returns 0 and no match returns 1, which differs from the IP30 entry where the comparison result is unused. Running out of passes sets the address byte back to 110 and returns 0.
- `setDACreg` (`odsy_brdmgr.o`, offset 0x2e70, 108 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  DCD2 DAC programming in patch 4103 (arguments: port, command flag, command value, data value). It stores the address byte 31 at port +32. With a nonzero flag it writes (command value AND 3) OR 0x18 to clock-part register 5 with `odsy_i2cPLLRegWrite` and returns at once if that write fails; it then writes the low byte of the data value to register 4. This build logs no messages for either failure, and a failed register 4 write is not reported.
- `gfP_OdsyBRDMGRSetDACGain` (`odsy_brdmgr.o`, offset 0x5424, 116 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  DAC gain request in patch 4103. The board pointer is at +32 of the first argument (+40 in the 6.5.30m handler). It copies one word in from the user address; a fault logs a severity 4 message (string offset 688), stores 14 in the result word and returns 14. Otherwise it calls `odsySetDACGain` with the board and the word, stores the result in the result word and returns 0.
- `gfP_OdsyBRDMGRsetBlanking` (`odsy_brdmgr.o`, offset 0x2008, 116 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Blanking request in patch 4103, with the board at +32 of the first argument. It copies one word in; a fault logs a severity 4 message (offset 448), stores and returns 14. Otherwise it calls `odsyBlankScreen` with the word as the mode, stores that result in the result word and returns 0.
- `gfP_OdsyBRDMGRsetDpyMode` (`odsy_brdmgr.o`, offset 0x1f90, 120 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Display-mode request in patch 4103. It copies two words in from the user address (8 bytes); a fault logs a severity 4 message (offset 400), stores 14 and returns 14. Otherwise it calls `gf_OdsySetDisplayMode` with the manager object and the two words, stores the result and returns 0.
- `gfP_OdsyBRDMGRi2ccmd` (`odsy_brdmgr.o`, offset 0x5388, 156 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Two-wire command request in patch 4103, with the board at +32 of the first argument. It copies a 48-byte block in (a fault logs a severity 4 message from string offset 648, stores and returns 14) and calls `odsy_i2c_cmd` with the board, the block and the user address. A negative result is returned negated; otherwise the result goes to the result word and 0 is returned.
- `odsy_reconfigDCD2FPLD` (`odsy_brdmgr.o`, offset 0x30a4, 152 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  DCD2 logic reprogramming in patch 4103. It stores the address byte 31 at port +32 and writes clock-part register 3 as 8, registers 1 and 2 as 0 and register 3 as 1 with `odsy_i2cPLLRegWrite`; the first failing write ends the routine with that nonzero result, and it logs nothing. After the four writes it waits 600000 microseconds with `odsy_usdelay` on the board record behind port +16.
- `odsy_copyin_frame_line_tables` (`odsy_brdmgr.o`, offset 0x2d74, 252 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Copies the frame and line tables of a timing request in patch 4103. Each table is a `kern_calloc` of count entries of 2 bytes (count words at +8 and +24), filled with `copyin` from the user pointers at +0 and +16, and the pointers are replaced by the kernel copies. An allocation failure frees what was taken and returns 12; a faulting copy frees the tables and returns 14; success returns 0.
- `gfP_OdsyBRDMGRloadTimingTable` (`odsy_brdmgr.o`, offset 0x4e40, 324 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Timing load request in patch 4103, board at +32 of the first argument. It copies a 312-byte request in (the 6.5.30m handler copies 320; a fault logs a severity 4 message and stores 14), runs `odsy_copyin_frame_line_tables` and stores and returns its error. When the flow handle at board +720 is set and `RRM_CheckValidFault` is not negative it adds one to the busy count at +80, calls `odsyLoadTimingTable`, stores its result, subtracts one and frees both tables with `kern_free`; a missing handle logs a severity 4 message, and a failed validity check frees the tables, each storing and returning 14.
- `odsySetDACGain` (`odsy_brdmgr.o`, offset 0x5498, 984 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  DAC gain switch in patch 4103 (arguments: board record, enable). Under the display semaphore at +10256 (unless the start-up word at +22304 is set) it waits for FIFO level 14 (failure returns -1), reads display register 0x26c0 through the window word at 0x233604, sets its bit 1 for a nonzero enable or clears it for zero, and sends it with the 0x26c0 header from `.lit8`. The release replays a pending cursor doubleword (+10280) as in the other display routines, and the routine returns 0.
- `odsy_initDCD2DAC` (`odsy_brdmgr.o`, offset 0x2edc, 456 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  DCD2 DAC initialisation in patch 4103 (arguments: board, port). It stores 31 at port +32 and writes clock-part register 3 as 0, returning on failure. It then calls `setDACreg` (port, command flag, command value, data) in a fixed order: (1,0,0), (1,3,9), (0,3,8), (0,3,9), (0,3,41), (0,3,9), (1,0,4), (1,2,255), (1,0,5), (1,2,0), (1,0,6), (1,2,236), (1,0,7), (1,2,65) and (1,0,0). It finishes with a 256-step ramp: for each value 0 to 255 one call (1,1,value) followed by two calls (0,1,value). Results of the `setDACreg` calls are not checked.
- `odsy_LoadDCD2Regs` (`odsy_brdmgr.o`, offset 0x313c, 484 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  DCD2 option-board register load in patch 4103 (arguments: timing structure, port record). It calls `odsy_initDCD2DAC` first, then, with device byte 92 at port +32, writes registers 0 to 7 from the low bytes of the words at +276, +280, +284, +288, +292, +296, +300 and +304 with `odsy_i2cPLLRegWrite`. After a 600000 microsecond `odsy_usdelay` it switches to device byte 31, writes registers 5 and 6 from the bytes at +251 and +255 and runs `odsy_reconfigDCD2FPLD`. With device byte 23 it writes registers 0 to 4 from the bytes at +259, +263, +267, +271 and +275 and register 5 from bits 15:8 of the word at +272. Any failing write returns its nonzero result at once; this build neither logs nor writes a register 50 at the end, and it ends after register 5 of the address 23 device.
- `gf_OdsyPositionCursor` (`odsy_brdmgr.o`, offset 0x1008, 596 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Cursor move in patch 4103 (arguments: board record, x, y). With the display-mode halfword at +718 equal to 2 (dual head) an x at or beyond the left head's width at +714 has that width subtracted and selects the second head (head number 1); otherwise the head number is 0. It stores x and y at +21992 and +21994, subtracts the hot spot kept at +21996 and +21998 and packs the two differences into the upper halfword (x difference) and, for the lower halfword, the y difference of a 64-bit command with the `.lit8` header 0x79600001 when bit 2 of the control word at +22000 is set and 0x39600001 otherwise. It takes the spin lock at +10272 and tries the display semaphore at +10256 with `cpsema`. When the semaphore is busy it records the head number at +10288 and stores the command at +10280 for the holder to send, then releases the lock and returns 0. Otherwise it clears the pending doubleword at +10280, releases the lock, waits for FIFO level 12 (a timeout again leaves the command pending, as in the busy case) and sends the command. When the head differs from the one at +10288 it first sends the control word at +22000 with bit 1 cleared and then with bit 5 set to the head number's low bit, each as a doubleword under the header 0x79604001, stores the new head at +10288, sends the cursor command and finally sends the control word with bit 0 set, leaving the shadow with bit 1 set and bit 0 clear; without a head change only the command is sent. The semaphore is released with `vsema` and it returns 0.
- `odsyDiagExit` (`odsy_sched.o`, offset 0x484, 128 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_sched.o)`.
  Diagnostics client clean-up in patch 4103 (arguments: board, client). When the owner word at board +22056 equals the client it calls `gfP_OdsyDIAGfreeScanbuf`, and when the word at +22080 equals it, `gfP_OdsyDIAGreleaseShadowPtrs`, each with a local result word that starts at 0 and is returned. The owner words are 23872 below the 6.5.30m offsets.
- `gf_OdsyReleaseGfxSema` (`odsy_sched.o`, offset 0x400, 132 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_sched.o)`.
  Drops the caller's graphics flow control in patch 4103. When the flow handle at the pointer behind +32 of the first argument, field +720, is set it raises the level with `splhi`; if `gfx_flow_am_i_attached` is true it sets the word at board +10408 to 1, writes 1 to register +4220 (0x107c), reads +4204 (0x106c) back and calls `gfx_flow_detach_me` on the handle, then `splx`. It returns 0.
- `gf_OdsySuspend` (`odsy_sched.o`, offset 0x0, 200 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_sched.o)`.
  Takes a client off the board in patch 4103 (arguments: board, client). It returns 0 immediately unless the board is non-null, the client equals the current owner at +72 and bits 1:0 of the client's word at +48 are nonzero; with the flow handle at +720 set it follows the `splhi`, `gfx_flow_am_i_attached`, word +10408 = 1, register 0x107c = 1, 0x106c read-back, `gfx_flow_detach_me` (with the client) and `splx` sequence of `gf_OdsyReleaseGfxSema`, and returns 0.
- `gf_OdsyResume` (`odsy_sched.o`, offset 0xc8, 240 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_sched.o)`.
  Puts a client back on the board in patch 4103 (arguments: board, client, flag). It does nothing unless the client is the owner at +72 and bits 1:0 of its word at +48 are set. Under `splhi`, with the flow handle at +720 set, it attaches the client with `gfx_flow_attach_me` when `gfx_flow_am_i_attached` says it is not, gets a transfer number from `gfx_flow_credit_tnum_get`, forms the flow word (the word saved at +10404 with the number shifted left 12 merged in), stores it back to +10404 and to register +4212 (0x1074), then zeroes the word at +10408 and register +4220 (0x107c); `splx` follows. When the flag argument is 0 and the word at +120 is nonzero it calls `force_resched` and clears that word. It returns 0.
- `gf_OdsyExit` (`odsy_sched.o`, offset 0x1b8, 584 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_sched.o)`.
  Object close in patch 4103 (argument: object). When bit 2 of the object's flag word at +48 is set it calls `odsyDiagExit`. It takes the board semaphore at +56 (`psema`, 537), makes the object the owner at +72, spins in 2 microsecond `us_delay` steps while the word at +104 is nonzero and counts the busy word at +80 up. For the object's current client, if there is one, it takes the client's lock (a 16-byte entry of the lock table in small data indexed by the halfword at client +2; `psema` 25) and, when the client's owner field (+56) is zero and its teardown word (+304) is zero, calls `odsyDMAFinish`, `odsyMMdetach` and `odsyUnpinAndUnmapGctxRegions` and sets +304 to 1, then releases the lock with `vsema`. When the global count `rrm_maxrn` is 2 or more it then walks the client table in small data from entry 1 (480 bytes per entry): for each entry whose owner field (+56) is this object it takes that entry's lock (`psema` 25) and, unless the entry's in-use byte (+84) is set while its object pointer (+64) names a different object, runs the same teardown on the context behind +112 when its teardown word is zero, and releases the lock. Finally it lowers the busy count, raises the level with `splhi`, calls the operation at +192 of the object's table when it exists, clears the owner at +72, releases the semaphore with `vsema`, restores the level and returns 0.
- `odsyDownloadUcode` (`odsy_ucode.o`, offset 0x0, 280 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ucode.o)`.
  Microcode line sender in patch 4103 (arguments: board, first hardware line, first software line, count). The hardware line must be below 2047 with line plus count below 2048, and the software line plus count must not pass the line count at board +10292; otherwise it logs one severity 4 message with the arguments and returns -1. It writes 0x27008000 to the command FIFO window at the register base plus 0x110000, with the hardware line's low 10 bits in place and the rest shifted to bit 23. For each line it then writes the six halfwords of the 12-byte entry in the buffer at +10296, from the sixth down to the first, each as 0x40008000 with the same split. It returns 0.
- `gf_OdsyDownload` (`odsy_ucode.o`, offset 0x118, 900 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ucode.o)`.
  Microcode download request in patch 4103 (arguments: object, request). The request length (word at +0) divided by 12 gives the line count: a count of zero or less, or of 4094 or more, logs severity 4 and returns 22, and a length that is not a multiple of 12 logs severity 4 and returns 22. The count is stored at board +10292. The user buffer at +8 is pinned with `userdma` (a nonzero result logs and returns 14), mapped with `maputokv` (flags 40; a null mapping logs severity 4 but the copy that follows is not skipped), copied into the kernel buffer at board +10296 with `bcopy`, and released with `undma` and `unmaputokv`. As owner (`psema` 537 on +56 and 2 microsecond waits on +104 when the object is not yet the owner) with the busy count at +80 raised, it sets bit 1 of the object's flag word at +48, attaches to flow control if the caller is not attached (flow word at +10404 with its credit number, +10408 and register 0x107c cleared) and sends one call of `odsyDownloadUcode` from hardware line 0 and software line 0 with the line count capped at 2047. After the call it clears bit 1 under `splhi`, detaches again (word +10408 = 1, register 0x107c = 1, `gfx_flow_detach_me`), lowers the busy count and returns 0, or 22 when the download call failed.
- `odsy_i2cProbe2b` (`odsy_ddc.o`, offset 0x41c, 5748 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
    EDID reader in patch 4103 (arguments: port handle, reply slot). The code is the IP30 sequence instruction for instruction in outline: it zeroes 128 bytes at the slot, resets the port, and before the transfer waits for display-FIFO level 13 (level 15 before each later send; a timed-out wait takes the failure exit), reads the display register behind the window word at 0x233804, ORs in 0x440 (or, with the port's flag at +28 clear, ORs 0x800, ANDs the constant 0xfffffffffffc7fff and ORs 0x28180) and sends it with the header from `.lit8` offset 24 (0x39c00001). It sets bit 15 and clears bit 17 of the line-control shadow, sends it addressed by the channel index (header 0x30000001 plus the index shifted left 14), then clocks the bus nine times to free a stuck slave (bit 16 set, sent, 10 microsecond delay, cleared, sent, delayed) and a tenth time set, and writes the saved word back with bits 11:10 cleared. Every send is wrapped in the display semaphore (`psema` 25 when the start-up word at +22304 is zero) and the spin lock at +10272, with the usual replay of a pending cursor doubleword at +10280 before release. Up to four attempts follow: start 0x60 and a zero byte, start 0xa0 and the offset byte 0, start 0xa1, a long receive for byte 0, 126 short receives and a closing long receive for byte 127; a failure in any step except the short receives resets the port and retries, a short-receive failure goes straight to the failure exit. Then `odsy_validate_ddc_data` is called on the EDID bytes (slot +2) and a zero result retries. Success stores state 2 at record +304, sets the slot's first halfword to 1 and returns 0; the failure exit stores 255 at +304, resets the port, clears the halfword and returns 1. The 5748-byte body is mostly repeated copies of the semaphore, wait and replay bracket.
- `odsyMMinit` (`odsy_pmm.o`, offset 0x0, 448 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
    Memory-manager record set-up in patch 4103 (arguments: board base, record). It finds the board with `odsyPipeNrFromBase` and stores the pointer into the global board table, 22312 bytes per board, at +0 of the record. The group at +1248 gets identifier -2 and a zero at +1256. It clears the 16 object slots at +1264, points slot 0 at the embedded object at +432 and slot 1 at the one at +568, leaves slot 2 empty and points slots 3 to 6 at four objects at +704 plus 136 each; object type bytes (+16 of each object) are 1, 2 and 8 for the first two and the four. Each filled slot gets its own index halfword at +0, the group pointer at +8, -1 at +96, zeroes at +56, +76 and +80, and its word at +64 with bits 0 and 1 set and bits 2 and 3 cleared. The record gets +56 = 4096, +60 = 16, +64 = 1, +68 and +72 = 256, +176 = 255, 8192 at +216, +488 and +624, bytes 2 at +41 and 0 at +40, zeroes at +24, +32, +44, +48, +52 and +80, 2 at +1392 and 0 at +1400, and the flag word at +88 with bits 0 and 1 set and bits 2 and 3 cleared.
- `odsyInitMM` (`odsy_pmm.o`, offset 0x1c0, 116 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
    Memory-manager preparation inside the board record in patch 4103 (argument: board record). It creates the two sets at +2232 and +2272 with `OdsyInitCSet` (element size 4) and clears the words at +2360 to +2384, +2400 to +2412 and +2424 to +2436, apart from storing 8192 at +2420 and 3200 at +2428. It does not set up a free-list cursor; the IP30 build's cursor call and its fields at +5672 to +5732 have no counterpart here.
- `mm_init_freespace` (`odsy_pmm.o`, offset 0x234, 316 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Sets up the free list and the host-memory limit on first use in patch 4103 (argument: manager record). The board's memory size (halfwords of the chip record at +252 shifted left 20, then right 9) less the reserved start at +216 divided by 32 is the budget at +1688. When the three figures at +1668, +1676 and +1684 add up to more than the budget it logs twice with `cmn_err` (severity 1) and zeroes them. It then writes one free node at +1616 to +1640 (start = the reserved start, size = the budget, no links). The host limit is the global percentage `gfxlockablemem_gt64`, clamped to 0 to 100 (the clamp is written back) and raised to at least 25, times `kabi_num_lockable_pages`, divided by 100 rounded up and shifted left 14 into +1696; the jettison limit at +1704 is ten percent of the lockable pages the same way. It zeroes the in-use total at +1712 and the pressure word at +1724 and stores 1 at +1720. There is no division by the number of boards and no warning level, which the IP30 build adds.
- `gfP_OdsyMMdebug` (`odsy_pmm.o`, offset 0x370, 852 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
    Object-listing request in patch 4103 (arguments: manager object, user request, result word). It copies 24 bytes in (a fault logs severity 4 and returns 14); command 2 returns 22 without listing, and any other command logs severity 4 and returns 22. Command 1 needs the capacity field (request offset 8) above 16 (else 14), sets the count word to zero, advances the user buffer pointer by 4 past the count and takes the board semaphore at +56 (`psema`, 537), makes the object the owner at +72 and spins in 2 microsecond `us_delay` steps while the word at +104 is nonzero, with the busy count at +80 raised. It sends the manager's own record at +768 through `SpewObjectToUser` with group id -1 and share group -1, then each of the 16 committed-object slots at +2008 (stride 8) that has bit 0 of its flag word 64 bytes in set, with group id -2 and the slot as index, then walks every share group of the set at +2232, every group of that share group's set (embedded 64 bytes into the element) and every nonnull entry of the group's 16 slots at +16 (the share-group id is at +20 and the group id at +0 of the elements). Running out of capacity logs a severity 4 message and returns 11; an error from a record is stored and returned with the busy count lowered. On success it copies the record count to the user pointer at +16 (fault: log and 14), lowers the busy count and returns the result word.
- `SpewObjectToUser` (`odsy_pmm.o`, offset 0x6c4, 232 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
    Object description writer for the listing request in patch 4103 (arguments: object, share-group id, group id, slot, user pointer cell, count cell). It builds a 68-byte record on the stack: the object's board word (+56), the ten words at +16 to +55, then the slot halfword at +52 over the last of those, the group id at +48, the share-group id at +44, the size word (+60) at +40, bit 0 and bit 1 of the flag word at +64 at +56 and +60, and the word at +104 at +64. It copies the record to the user pointer; a fault logs a severity 4 message and returns 14. Otherwise it adds one to the count cell, advances the pointer by 68 and returns 0.
- `gfP_OdsyMMattach` (`odsy_pmm.o`, offset 0x7ac, 1088 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
    Share-group join request in patch 4103 (arguments: manager object, user request, result word). It copies 72 bytes in (a fault logs severity 4, stores and returns 14) and finds the context from the halfword at +10 with `odsyGctxFromRnid` (none: log and 22). A context whose word at +104 is already set returns 0, after checking that the object's list head points back at the object (otherwise log and 22). Otherwise it pins and maps the software shadow with `odsyPinAndMapGctxSwShadowRgn` using the word at +16 (a nonzero result is stored and returned), clears the context's share-group pointer at +152, stores -1 at +160, initialises three sets with `OdsyInitCSet` (element size 4) at +184, +224 and +264 and fills id 0 of the first with `OdsyAllocSpecificCSetId`. It then holds the manager's busy count at +80 under the owner doubleword at +72 and the semaphore at +56 (`psema` 537, 2 microsecond waits on +104). A request word at +4 of 0 or -1 creates a share group with `odsy_mm_sg_new` (a null result copies the request back with +24 zeroed and returns the copy's result); any other value names the context, by its low 16 bits, whose share group is joined (missing context or group: log and 22). It allocates the context's id in the group's set at +24 with `OdsyAllocCSetId` (-1 destroys a still-empty new group, logs and returns 12), records the group at +152 and the id at +160, raises the group's count at +16 and stores the low bit of the request's first word at +468. The reply returns in the same 72 bytes the id at +12, the group's address-space words at +24, +48 and +56 (the second and third come from the record at +48 of the address space, the third as that address plus 32), the context's word at +164 at +32, the context's +120 pointer plus 2304 at +40 and the board word at +10292 at +64; the busy count is lowered and a copy fault logs and returns 14.
- `odsyMMdetach` (`odsy_pmm.o`, offset 0xbec, 224 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
    Client detach in patch 4103 (arguments: manager object, context). It returns at once when the context's share-group pointer at +152 is null. When the manager's owner word (+72 of the record at +32) is not this object it takes the semaphore at +56 with `psema` (537), becomes the owner and sleeps in 2 microsecond steps while the word at +104 is nonzero. It raises the busy count at +80, calls `odsy_mm_sg_remove_gctx`, clears the context's group pointer, drops the group's count at +16 and, when it reaches zero, destroys the group with `odsy_mm_sg_destroy`; the busy count is lowered on both paths.
- `odsy_mm_sg_remove_gctx` (`odsy_pmm.o`, offset 0xccc, 432 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
    Context removal from a share group in patch 4103 (arguments: share group, context). It destroys every group in the context's set at +264 with `odsy_mm_grp_destroy` and then the set; walks the context's set at +184, returns the leading elements equal to 1 with `OdsyDeallocCSetId`, destroys the remaining range records with `odsy_mm_cores_destroy`, and for every group of the share group (the set at +64) removes the context's id (+160) from the group's set at +160. When the context's word at +204 is nonzero and the kernel debug halfword is set it flushes the console buffer (argument 3) and calls `debug` with a message string. It finally destroys the set at +184, returns the context's id to the share group's set at +24 and stores -1 at +160.
- `gfP_OdsyMMalloc` (`odsy_pmm.o`, offset 0xe7c, 960 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
    Memory-object creation request in patch 4103 (arguments: manager object, user request, result word). The calling context is the one behind the current-client pointer (+72 of the manager object, then +112); none logs severity 4 and returns 1, and a context without a share group (+152) logs and returns 14. It copies 72 bytes in (fault: log, 14) and needs the slot field (request offset 8, a halfword) below 16 (else log, 22). Holding the busy count at +80 under the owner word at +72 and the semaphore at +56 (`psema` 537, 2 microsecond waits on +104), a group id of -1 at +4 creates a group with `odsy_mm_grp_new` (a null result logs and returns 12); any other id is looked up in the share group's set at +64 (a miss logs, stores -1 at +4 and returns 22). When the slot already holds an object, the request's description (bytes at +12 and +13 and words at +16 to +36) is compared with the object's (bytes +16 and +17, words +20 to +40): a match keeps the object, any difference destroys it with `odsy_mm_obj_destroy`. A missing object is then built with `odsy_mm_obj_new` from the group, the slot and the description at +12; on failure a group made by this call and still empty (word +144 zero) is destroyed with `odsy_mm_grp_destroy`, -1 is stored at +4 and the result is 12. A newly made group's id is stored at +4. The busy count is lowered and the 72 bytes are copied back, a fault logging and returning 14.
- `gfP_OdsyMMdealloc` (`odsy_pmm.o`, offset 0x123c, 656 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
    Memory-object destruction request in patch 4103 (arguments: manager object, user request, result word). It checks the context (1 when absent) and share group (14) as the allocate request does, copies 72 bytes in (fault: log, 14), takes the busy count as the allocate request does and looks up the group id at +4 in the share group's set at +64 (a miss lowers the busy count and returns 22). With the word at +52 zero it destroys the whole group with `odsy_mm_grp_destroy`; otherwise the slot field (request offset 8, a halfword) must be below 16 (else log, 22), the object in that slot, when there is one, is destroyed with `odsy_mm_obj_destroy`, and when the group's object count at +144 is then zero it clears +52 and destroys the group too. The busy count is lowered; the request is copied back to the user (fault: log, 14) only when +52 is zero, and the result is 0.
- `gfP_OdsyMMmakeResident` (`odsy_pmm.o`, offset 0x1504, 916 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
    Make-resident request in patch 4103 (arguments: manager object, user request, result word). It finds the context and share group as the allocate request does (logging and returning 1 and 14), copies 8 bytes in (fault: log, 14) and needs both slot halfwords at +4 and +6 below 16 with the second not below the first (else log, 22). It calls `RRM_CheckValidFault` on the manager (negative: store and return 14), takes the busy count and semaphore as the other requests do, looks the group id at +0 up in the share group's set embedded 64 bytes in (a miss logs, returns 22), looks the context's id up in that group's set at +160 (miss: log, 22) and finds the range record that matches the slot pair with `OdsyFindMatchingCSetElem` (none: log, 22). When the halfword at +4 of the record's second pointer equals the halfword at +0 of its first it logs and returns 22. Otherwise it clears bit 1 of the flag word 64 bytes into every object in slots first to last of the group, arms a 1500-tick `timeout` with a handler kept in small data, calls `odsy_mm_commit` on the record and cancels the timeout with `untimeout`; a nonzero commit result logs a message and returns 22, success lowers the busy count and returns the result word (0).
- `gfP_OdsyMMquery` (`odsy_pmm.o`, offset 0x1a44, 1048 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
    Range query request in patch 4103 (arguments: manager object, user request, result word). Context and share group are checked as in the allocate request (1 and 14); it copies 40 bytes in (fault: log, 14) and needs the slot halfwords at +8 and +10 in 0 to 15 with the second not below the first (else log, 22). Under the busy count it looks the group id at +4 up in the share group's set at +64 (a miss stores 22, copies the request back and returns); the reply halfwords at +12 and +14 get the group's words at +0 and +200. The context's id is then looked up in the group's set at +160; when it is absent a 40-byte `kmem_alloc` record with a two-element set (`OdsyInitCSet`) is made and entered with `OdsyAllocSpecificCSetId` (an allocation failure returns 12, and a failed id entry logs a severity 7 message, destroys the set, fills the 40 bytes with 136 and frees them, result 12). `OdsyFindMatchingCSetElem` then looks for a range record matching the slot pair and the group; found, the reply takes +16 from the record's word at +24 and +18 from the word at +48. Not found, `odsy_mm_cores_new` builds the records for the context's set at +184 (failure: 12). The busy count is lowered and the 40 bytes are copied back (fault: log, 14).
- `gfP_OdsyMMxfr` (`odsy_pmm.o`, offset 0x1e5c, 1976 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
    Pixel transfer request in patch 4103 (arguments: manager object, user request, result word). Context and share group are checked as in the other requests (1 and 14), it copies 80 bytes in (fault: log, 14) and a word at +4 of -1 returns 0 at once. Otherwise it reads the board record at +144, +64, +32 of the share group, calls `RRM_CheckValidFault` (negative: 14), takes the busy count and finds the object from the id at +4 and the slot field (request offset 8, a halfword): -2 is the board's own table at +2008 (slot below 16 only; a missing entry logs and returns 22), -3 and -4 are the buffer sets of the context's two bindings at context +352 and +400. A binding with bit 1 set and bit 2 set is found through the drawable table, which `mraccessf` on +10528 guards and `odsyHashLookup` searches in the 13-bucket table at +10520 by the binding's key; without bit 2 the object is taken from the share group's table. Any other id is looked up in the set at +64 of the share group and its slot object is used, bits 23:16 of word +60 being stored in the object's byte at +18. An object whose flag bit 0 is clear is validated with `odsyMMvalidatePcxSwap` once and refused with a log and 22 if still not resident. For -3 and -4 the 3-bit format fields in words +28 and +44 are checked against the binding (a mismatch logs and returns 22). A zero 29-bit address in +28 takes the object's board address (+56); the offset at +64 is added and the top three bits kept. The host size in +24 must cover bits 31:16 of +40 rows (0 meaning 65536) at the stride in +48 and the row length in the low 20 bits of +52. Word +56 is rebuilt with 0x32 in its top byte, a direction bit (set when bit 0 of +60 is clear) and bits 3 and 6 carried over, and `odsyDMAOps` runs the transfer (a failure logs). With bit 1 of +60 set `odsyDMAWait` also waits; the busy count is lowered, the 80 bytes are copied back (fault: log, 14) and the status is returned.
- `odsyMMvalidatePcxSwap` (`odsy_pmm.o`, offset 0x264c, 236 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
    Context swap validation in patch 4103 (arguments: board record, context, unused). It returns 0 without doing anything when the context's first word (+0) or its share-group pointer (+152) is zero, or when `OdsyLookupCSetId` finds nothing for id 0 in the context's set at +224. Otherwise it arms a 1500-tick `timeout` with a small-data handler and the board record as argument, walks the context's range set at +184 and calls `odsy_mm_commit` on every element other than the placeholder 1 whose second pointer's halfword at +6 is nonzero and whose word at +64 is zero, then cancels the timeout with `untimeout` and returns 0.
- `odsy_mm_find_current_as` (`odsy_pmm.o`, offset 0x2738, 404 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Finds or creates the record of the calling process's address space in patch 4103 (argument: board record). It calls `as_lookup_current` for a two-word handle and walks the set at board +1528 for a record whose words at +24 and +16 equal that pair; a match is returned. Otherwise it takes a 64-byte `kmem_alloc` record, enters it in the set with `OdsyAllocCSetId` (an id of -1 logs a severity 4 message, fills the 64 bytes with 1, frees them and returns null), stores the id at +0, the handle at +16 and +24, and zeroes +32 and the share-group count at +4. `odsyPinAndMapASRegions` then runs on it; a nonzero result logs a severity 5 message, returns the id with `OdsyDeallocCSetId`, fills with 1, frees and returns null. The record is returned.
- `mm_as_remove_sg` (`odsy_pmm.o`, offset 0x28cc, 120 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Drops a share group's hold on an address-space record in patch 4103 (arguments: record, share-group pointer cell). It lowers the count at +4, clears the cell and, when the count reaches zero, returns the record's id (+0) to the set at +1528 of the board named at +8 with `OdsyDeallocCSetId`, calls `odsyUnpinAndUnmapASRegions`, fills the 64 bytes with 5 and frees them with `kmem_free`.
- `odsy_mm_sg_new` (`odsy_pmm.o`, offset 0x2944, 288 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
    Share-group creation in patch 4103 (arguments: manager object, board record). It takes a 168-byte `kmem_alloc` record (null result returns null), zeroes the count at +16, the address-space pointer at +0 and the words at +144, +152 and +160, stores -1 at +20 and initialises three sets with `OdsyInitCSet` (element size 4) at +24, +64 and +104. It enters the group in the board's set at +1488 with `OdsyAllocCSetId`: -1 logs a severity 4 message, destroys the group with `odsy_mm_sg_destroy` and returns null; otherwise the id goes to +20. `odsy_mm_find_current_as` supplies the address-space record (none: log severity 5, destroy, null), its count at +4 is raised, the record is stored at +0 of the group and the group is returned.
- `odsy_mm_sg_destroy` (`odsy_pmm.o`, offset 0x2a64, 212 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Share-group destruction in patch 4103 (argument: share group). It destroys every group of the set at +64 with `odsy_mm_grp_destroy`, returns the group's id (+20) to the board's set at +1488 (board record at +8) with `OdsyDeallocCSetId`, calls `odsyUnpinAndUnmapSGRegions`, removes the group from its address-space record with `mm_as_remove_sg`, destroys the sets at +64, +24 and +104 with `OdsyDestroyCSet`, fills the 168 bytes with 9 and frees them with `kmem_free`. It returns 0.
- `odsy_mm_obj_new` (`odsy_pmm.o`, offset 0x2b38, 744 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
    Memory-object creation in patch 4103 (arguments: group, slot, description). The description's pixel-size byte at +1 must be 32, 16, 8, 4 or 2 (else a severity 4 log and null) and its words at +16 (at most 0x10000), +20 and +24 must be nonzero (else log, null). It takes a 136-byte `kmem_alloc` record (null on failure), clears bits 0 to 3 of the flag word at +64, sets the slot halfword at +0 to -1 and zeroes +128, copies the type, pixel-size and third description bytes to +16, +17 and +18, description words +16, +20 and +24 to +32, +36 and +40 and +4, +8 and +12 to +20, +24 and +28. Words +28 and +32 of the description give the two strides at +44 and +48: a zero takes the minimum computed from the dimensions (sixteen-byte units rounded up, the first made even) and a nonzero value below that minimum logs and returns null. It stores -1 at +96, zeroes +76, +80, +88 and +104 and sets +72 to the pixel count times the pixel-size byte and +60 to the size shifted by the pixel-size entry of a small-data table. `odsy_mm_reserve` is called on the record; a nonzero result destroys it with `odsy_mm_obj_destroy` and returns null. On success the slot halfword gets the slot number, the group's slot table at +16 (stride 8) the record, the group's object count at +144 is raised and the record is returned.
- `odsy_mm_obj_destroy` (`odsy_pmm.o`, offset 0x2e20, 300 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
    Memory-object destruction in patch 4103 (argument: object). The board record is reached through the object's group, share group and board pointers (+8 three times). A flag word (+64) with bit 3 set calls `odsy_mm_decommit`, with bit 2 set `odsy_mm_release`; `odsyDMAWait` then waits for the object's DMA at +96. When the backing store pointer at +80 is set, its size (+88) is taken off the board's in-use total at +1712 and, when the flag at +1720 is zero and the total does not pass the limit at +1704, the flag is set to 1; the store is freed with `kmem_free` and +80 and +88 are cleared. A slot halfword at +0 other than -1 clears that entry of the group's slot table at +16 and lowers the group's object count at +144. The record is filled with 17 and freed (136 bytes). It returns 0.
- `odsy_mm_sg_add_grp` (`odsy_pmm.o`, offset 0x2f8c, 640 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Registers a new group in a share group in patch 4103 (arguments: share group, group record whose first word is the id, request block). It enters the group in the set at +64 with `OdsyAllocCSetId` (-1 returns -1), stores the id at +0 of the group record and splits it: the part above bit 7 selects a 16 KB page of the share group's table, looked up with `OdsyLookupCSetId` in the set at +104. A missing page needs the selector below 128 (else a severity 4 log) and takes a 32-byte record and a 16 KB buffer by `kmem_alloc`, enters the record with `OdsyAllocSpecificCSetId`, sets its fields +16 = 0 and +24 = 16384 and maps the buffer to the user with `MapKernelRegionIntoUserSpace`; each failing step logs a severity 4 message and the routine takes the common clean-up, which returns the id to the set (`OdsyDeallocCSetId`), stores -1 at +0 of the group record and returns -1. With the page in place it sets bit 1 of the request block's word at +52, stores the selector at +64 and the page's user address at +56 there, and records a pointer to the 64-byte block (page + (id AND 0xff) times 64) at +152 of the group, returning the selector.
- `odsy_mm_grp_new` (`odsy_pmm.o`, offset 0x320c, 280 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Group creation in patch 4103 (arguments: context, share group, request block). It takes a 240-byte `kmem_alloc` record (null on failure), stores -1 at +0 and +204, zeroes +144, +208, +224 and +232, clears the 16-slot object table at +16 (128 bytes) with `bzero`, initialises the set at +160 with `OdsyInitCSet` (element size 2) and records the context at +216 and the share group at +8. The flag at +200 is 1 when the request's byte at +12 is 6. `odsy_mm_sg_add_grp` gives the group its id (-1 destroys the record with `odsy_mm_grp_destroy` and returns null). A group with the flag set is also entered in the context's set at +264 with `OdsyAllocCSetId`, the id going to +204 (-1 destroys and returns null). It returns the record.
- `odsy_mm_grp_destroy` (`odsy_pmm.o`, offset 0x3324, 432 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Group destruction in patch 4103 (argument: group). A group whose id (+0) is -1 is only freed. Otherwise every object of the 16-slot table at +16 is destroyed with `odsy_mm_obj_destroy` and cleared; then the set at +160 is walked, and for each element every range record in it is destroyed with `odsy_mm_cores_destroy` and the element's 40 bytes are filled with 33 and freed (the branch that would also destroy the element's own set and return its id is never reached, since its guard register stays zero). The set at +160 is destroyed with `OdsyDestroyCSet`; when +204 is not -1 that id goes back to the context's set at +264 (context at +216); `odsy_mm_sg_remove_grp` takes the group out of its share group (+8), and the 240 bytes are filled with 35 and freed with `kmem_free`. It returns 0.
- `odsy_mm_cores_destroy` (`odsy_pmm.o`, offset 0x34d4, 192 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range record destruction in patch 4103 (argument: record of 72 bytes). It returns the id at +52 to the set behind the pointer at +56 and the id at +48 to the context's set at +184 (context at +16) with `OdsyDeallocCSetId`, storing -1 in each, and, when the slot number at +24 is not -1, frees that 32 KB slot with `OdsyFree32kSlot` on the table at +6112 of the board record reached through the group, share group and board pointers. The 72 bytes are filled with 31 and freed.
- `odsy_mm_cores_new` (`odsy_pmm.o`, offset 0x3594, 1004 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range record creation in patch 4103 (arguments: context, group, first value, second value, range-set pointer, context id set, reply block). It takes a 72-byte `kmem_alloc` record (null on failure), sets +64 to 0 and +24, +48 and +52 to -1, and stores the range-set pointer at +56, the first value at +4, the second at +0, the context at +16 and the group at +8. It allocates ids with `OdsyAllocCSetId` in the context id set (kept at +48) and in the range set (+52), then a 32 KB slot with `OdsyAlloc32kSlot` on the table at +6112 of the board (kept at +24); any -1 takes the clean-up. The record's id above bit 9 selects a 16 KB page in the context's set at +224: a missing page needs the selector below 32 (else a severity 4 log) and is built as in the share-group case (a zeroed 32-byte record, a 16 KB buffer, `OdsyAllocSpecificCSetId`, `MapKernelRegionIntoUserSpace` with argument 3; each failure logs severity 4, undoes what was taken, filling freed memory with 37, 39 or 41) and its first two words are set to -1. With a page present the reply block gets the selector as a halfword at +32, bit 4 set in its flag word and the page's user address at +24. The record then takes a pointer into the board's per-slot halfword table (+32, entry cleared) and a 16-byte block of the page at the id's low 10 bits times 16 (+40, cleared with `bzero`), and is returned. The clean-up calls `odsy_mm_cores_destroy` and returns null.
- `SetupDMAParams` (`odsy_pmm.o`, offset 0x3980, 516 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Builds a 32-byte transfer descriptor from a memory object in patch 4103 (arguments: object, descriptor, flags). After `bzero` it puts the object's board address (+56, 29 bits) in word 0, the stride at +44 in the low 12 bits of word 2, the object words +32 and +36 in the halves of word 3 and +20 and +24 in the halves of word 1. A pixel-size code is derived from the byte at +17 (2 gives 0, 4 gives 1, 8 gives 2; 16 and 32 take an unassigned stack word, so their format bits are not defined by this routine) and indexes a small-data table for the low three bits of word 4. Word 7 gets the flags OR 0x32 in its top byte with a field from the object's pixel size and word 6 gets the row count times the pixel size in its low 20 bits. It returns the descriptor filled in.
- `odsy_mm_check_for_mutations` (`odsy_pmm.o`, offset 0x3cf0, 260 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Backing-store write-back sweep in patch 4103 (argument: board record). It walks the share groups of the set at +1488, every group of each share group's set at +64 and every object of the group's 16-slot table at +16, and for each object whose flag word (+64) has bit 0 set and whose backing store pointer (+80) is nonzero calls `odsy_mm_obj_xfr_backing_store` with a zeroed result word and direction 1. The results are ORed together and returned.
- `odsy_mm_reserve` (`odsy_pmm.o`, offset 0x44b0, 464 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Reservation dispatcher in patch 4103 (argument: object). The board record is reached through the object's group, share group and board pointers (+8 three times). It counts the reservation at board +1692 and runs `mm_init_freespace` when that count becomes 1. The object type byte at +16 selects the handler: 3 `odsy_mm_reserve_pbuffer`, 4 `odsy_mm_reserve_texture`, 6 `odsy_mm_reserve_scratch`; any other type fails. A handler result of zero is success, anything else gives 12 and the count is lowered again. On success it sets bit 2 of the object's flag word (+64) and clears, for every range record of every set in the group's table at +160, the two halfwords of the 16-byte block at record +40 and the word at record +64. It returns 0 or 12.
- `odsy_mm_release` (`odsy_pmm.o`, offset 0x4680, 156 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Reservation release dispatcher in patch 4103 (argument: object). The type byte at +16 selects `odsy_mm_release_pbuffer` (3), `odsy_mm_release_texture` (4) or `odsy_mm_release_scratch` (6); other types do nothing. After a handler it clears bit 2 of the object's flag word at +64 and lowers the board's reservation count at +1692. It returns nothing.
- `odsy_mm_reserve_texture` (`odsy_pmm.o`, offset 0x471c, 348 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Texture reservation in patch 4103 (argument: object). With the object's group G, the share group S behind it and the board record B, the new total for G is the object's size (+60) plus G's current total at +208. The routine reads the totals at +208 of the two groups at the head of S's list (the head pointer is at S+144, the next link at +224) into a two-entry array and replaces G's own entry, checks that the largest sum of the board's two pairs of limits at B+1664/1668 and B+1680/1684 plus the new totals does not pass the budget at B+1688 (a larger sum returns 1), stores the sum at S+152, raises the board's high-water word at B+1672 when the sum exceeds it, stores G's new total at +208 and moves G in the share group's texture list with `odsy_mm_sg_remove_texture_group_from_list` and `odsy_mm_sg_insert_texture_group_into_list`. It returns 0.
- `odsy_mm_release_texture` (`odsy_pmm.o`, offset 0x4878, 304 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Texture release in patch 4103 (argument: object). It subtracts the object's size (+60) from the group's total at +208, takes the group out of the share group's texture list and puts it back when its total is still nonzero. The share group's sum at +152 is then recomputed from the totals of the first two groups of the list (head at +144, link at +224) and stored; when the board's high-water word at +1672 equalled the old sum it is cleared and re-derived as the largest +152 of the share groups in the set at board +1488. It returns nothing.
- `odsy_mm_reserve_pbuffer` (`odsy_pmm.o`, offset 0x4ac8, 328 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Pixel-buffer reservation in patch 4103 (argument: object). It works like the texture reservation, with the group's total at +208 and the board's list of pixel-buffer groups headed at board +1656 (next link +224, previous link +232). The new total is the object's size (+60) plus the group's total; the routine reads the totals of the first two groups of that list into a two-entry array, replaces the group's entry, takes the larger of the board's words +1680 and +1684 and of +1672 and +1676, adds the two array entries and returns 1 when that sum passes the budget at +1688. Otherwise it stores the sum at +1664, the group's new total at +208, and moves the group in the list with `odsy_mm_remove_pbuffer_group_from_list` and `odsy_mm_insert_pbuffer_group_into_list`; it returns 0.
- `odsy_mm_release_pbuffer` (`odsy_pmm.o`, offset 0x4c10, 152 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Pixel-buffer release in patch 4103 (argument: object). It subtracts the object's size from the group's total at +208, takes the group out of the board's pixel-buffer list (head at board +1656) and puts it back when the total is still nonzero, then stores at board +1664 the sum of the totals of the first two groups of the list. It returns nothing.
- `odsy_mm_remove_pbuffer_group_from_list` (`odsy_pmm.o`, offset 0x4ca8, 96 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Unlinks a group from the board's pixel-buffer list in patch 4103 (arguments: board record, group). The list is doubly linked through the next pointer at group +224 and the previous pointer at +232; the neighbours are joined and, when the group is the head word at board +1656, the head becomes the next group (or null for a one-element list). It returns nothing.
- `odsy_mm_insert_pbuffer_group_into_list` (`odsy_pmm.o`, offset 0x4d08, 192 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Inserts a group into the board's pixel-buffer list in patch 4103 (arguments: board record, group). The list at board +1656 is kept in descending order of the group totals at +208: the routine walks past every group whose total is larger than the new group's, links the new group in before the first group that is not (next at +224, previous at +232) and updates the head word when it goes first. An empty list makes the group the only element. It returns nothing.
- `odsy_mm_reserve_scratch` (`odsy_pmm.o`, offset 0x4dc8, 164 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Scratch-memory reservation in patch 4103 (argument: object). The object's group is G, its share group S and the board B; G's context (+216) keeps a running total at +472. The new total is that plus the object's size (+60). When S's own total at +160 is below it, the routine checks it against the board: the larger of B+1672 and B+1676 and the larger of B+1664 and B+1668 plus the new total must not pass the budget at B+1688 (otherwise it returns 1). It then raises B+1680 to the new total when that is larger, stores it at S+160 and at the context's +472 and returns 0.
- `odsy_mm_release_scratch` (`odsy_pmm.o`, offset 0x4e6c, 288 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Scratch-memory release in patch 4103 (argument: object). It subtracts the object's size from the context total at context +472 (context at group +216). When the share group's total at +160 equalled the old value, it is recomputed as the largest +472 among the elements of the share group's set at +24; and when the board's word at +1680 equalled the old value it is recomputed as the largest +160 of the share groups in the set at board +1488. It returns nothing.
- `odsy_mm_commit` (`odsy_pmm.o`, offset 0x4f8c, 556 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  This entry rests on the binary alone.
    Range commit in patch 4103 (argument: range record). A record whose word at +64 is already nonzero returns 0 at once. The group is reached through the record's +8, the board record through the group's and share group's +8. A first pass over the group's 16 object slots finds objects whose flag word (+64) has bit 0 clear and bit 1 set; for each it calls `mm_get_extent` (a null result returns 12), sets bit 0, and when the object has a backing store (+76 nonzero) calls `odsy_mm_obj_xfr_backing_store` with a flag that is 1 when the extent's word at +32 is zero, then clears that word. A second pass over the slots from the record's first value (+0) to its second (+4) takes each object: one without bit 0 gets an extent from `mm_get_extent` (null: 12), has the extent's start shifted left 5 stored at +56, bit 0 set and, when bit 3 was already set, the same backing-store transfer; one with bit 0 set has its +56 written into the share group's table at +152 of the board-side record (entry slot times 4) and bit 3 set. Success sets the record's word at +64 to 1 and the halfword at +0 of its 16-byte block (+40) to 1 and returns 0.
- `mm_get_extent` (`odsy_pmm.o`, offset 0x5220, 1284 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  This entry rests on the binary alone.
    Board-memory extent allocator in patch 4103 (arguments: board record, range record, object). It walks the free-extent list that starts at board +1616 (nodes of 40 bytes: start at +0, size at +4, owner at +8, previous at +16, next at +24, flag at +32) for a node that is free, at least the object's size (+60) long, and whose start rounded up to the alignment given by the small-data table entry for the object's pixel-size byte (+17) still leaves room. A node adjacent to an extent whose owner has a different pixel size must not share the aligned block that the table's word at +128 sets; such a fit is rejected. A fit that needs a lead-in or a tail is split with a new 40-byte `kmem_alloc` node (an allocation failure logs a severity 4 message and returns null). With no fit it calls `mm_shake` to free space, retrying: an object of type 3 starts its attempt counter at -2 and the others at 0, and the routine gives up at 3. An object whose flag bit 1 is set must sit at its own board address (+56 shifted right 5): the request goes to `mm_shake` with that address, the extent found is split to start exactly there, and a miss logs a severity 4 message (and calls `debug` when the kernel debug halfword is set) and returns null. It returns the extent node.
- `mm_release_extent` (`odsy_pmm.o`, offset 0x5724, 996 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Extent release in patch 4103 (arguments: extent node, object). The board record is reached through the object's group, share group and board pointers and its register base at +736 gives the command FIFO port at +0x110000. A null extent logs a severity 4 message and returns null. With an object given, the routine first writes a fixed run of 27 command words to the FIFO port (class-1 headers 0x10443, 0x10046, 0x10019 and 0x10658, the counts 250 and 150, and 0x120000 last). It then walks every range set of the group's table at +160: for each range record whose first-to-last slot span (+0 to +4) takes in the object's slot halfword (+0), it marks the record's 16-byte block (halfword +2 set to 1) and, when the block's halfwords at +6 and +0 are both nonzero, sets bit 1 of the flag word at +64 of every object in the record's span; otherwise it ORs 1 into the extent's flag word at +32 when the block's halfword at +4 differs from the one at +0 of the record's second pointer. It then clears the block halfwords and the record word at +64 of every committed record. The object's backing store is written back with `odsy_mm_obj_xfr_backing_store` (flag 1 when the extent's +32 is zero, direction 2), its word at +128 is cleared and bit 0 of its flag word (+64) is cleared. Finally the extent's owner (+8) is cleared and the node is merged with a free predecessor (+16) and a free successor (+24): sizes are added, the absorbed node is unlinked, filled with 183 or 185 and freed (40 bytes). It returns the surviving node.
- `mm_shake` (`odsy_pmm.o`, offset 0x5b08, 1456 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  This entry rests on the binary alone.
    Eviction search for the extent allocator in patch 4103 (arguments: policy, size, range record, address, pixel-size byte). The free-extent list starts at board +1616. Policy -1 asks for a fixed address: the routine finds the extent that holds the address (the list tail at +1640 is the last one), releases every owner overlapping the requested span with `mm_release_extent` (logging a message and calling `conbuf_flush` and `debug` when the kernel debug halfword is set and space still runs out), then joins neighbouring extents of a different pixel size back so that the aligned block of the small-data table's word at +128 holds only one size, and returns the extent. Any other policy scans the list from the head for a run of extents that can be released and merged into one at least as large as the request with the same block rule: an owner of type 3 (pixel buffer) is never taken, and the owner is taken depending on the policy: 0, when it belongs to a different share group than the requester; -2 and 1, when no committed range record of any context in its group has the block halfword at +6 set (the owner is not in use); 2, when that holds for the requester's own context only; any other policy takes nothing. A qualifying run is released with `mm_release_extent` (flag 1) and the merged node returned; when the list ends without a fit it logs a severity 4 message and returns null.
- `gfP_OdsySaveHwShadow` (`odsy_ctxsw.o`, offset 0xc0, 1036 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
    Hardware shadow save request in patch 4103 (arguments: manager object, context, mode, result word). The current client behind +72 then +112 of the object must exist (else a severity 4 log and 1), `RRM_CheckValidFault` must not be negative (else 14) and the board's teardown word at +728 must be zero (else a severity 1 log and 14). A nonzero mode counts the busy word at +80, calls the operation at +120 of the object's table with the board pointer behind +32, lowers the count and returns 0 with the result word cleared. Otherwise the context's saved record (+112) must exist (else 22). If the caller is not attached to flow control (`odsy_flow_am_i_attached` on the handle at board +720) it is attached, with the flow word at +10404 and its credit number as in the resume routine. It clears the completion word at record +2300, arms a 1500-tick `timeout` with a handler kept in small data, stores the doubleword 0x00000700007f0001 from `.lit8` offset 8 to the save-request port at register base +0x118000, and waits in 1 microsecond steps until the completion word is nonzero or the teardown word is set; the timeout is cancelled with `untimeout`. Under `splhi` it clears bit 1 of the object's flag word at +48 and detaches the caller with `gfx_flow_detach_me` (word +10408 = 1, register 0x107c = 1, read-back of 0x106c) when attached. A set teardown word returns 14, otherwise 0.
- `gf_OdsyPcxSwap` (`odsy_ctxsw.o`, offset 0x4cc, 1468 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Context switch in patch 4103 (arguments: manager object, client, incoming context). A set teardown word at +728 logs a severity 1 message and returns -1. It turns graphics-wait accounting on (`gfx_waitc_on`), cleans up other pipe users with `gfx_flow_clean_up_other_gfxp`, takes the incoming context's slot id (127 when there is none) and attaches to flow control as the other requests do. When a context is being saved it stores the save request doubleword (slot id shifted left 16, bit 0 and 7 in bits 42:40) to register base +0x118000 after zeroing the completion word at the record's +2300, arms a 1500-tick `timeout` and waits in 1 microsecond steps (ended by the teardown word) for that word to turn nonzero, then cancels the timer with `untimeout`; a saved primitive type (word +128, bits 3:0) below 11 first sends 0x10444 and a zero, and the settle words 0x10443, 250, 0x10046 twice, 0x10850 and a mask word follow. The outgoing context's microcode program record (+96), when its first word is nonzero, is downloaded with `odsyDownloadUcode` from the line at +11064; a failure logs a severity 4 message and kills the process with signal 9. For an incoming context it converts the record's buffer with `kvtophys`, stores the address halves to +10412 and +10416 and to registers 0x4004 and 0x400c, calls `odsyMMvalidatePcxSwap` and, when bit 1 of the client's flag halfword at +4 is set, `gf_OdsyValidateClip`. If the context's word at +452 is zero, or the board's current slot at +732 is 0 or 127, the state is replayed with `odsyRestoreXform`, `odsyRestoreRaster`, `odsyRestoreGfe` and `odsyRestartContext`; otherwise the context-select words (0x1850, the slot id shifted into bits 12 to 18 with 0xf, 0, 0x14400, 0, 0x14001, 1856, 493, 1857, 0) go to the FIFO port at +0x110000. Either way +452 is cleared and, for a nonzero slot id that differs from the current one, the previous slot's microcode cache word at +11060 is cleared (entries of 480 bytes, pointer at +96) and the new id is stored at +732. Detach from flow control under `splhi` and `gfx_waitc_off` follow; success returns 0.
- `odsyRestorePIOPixel` (`odsy_ctxsw.o`, offset 0x38ec, 404 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Locates where an interrupted programmed-I/O pixel transfer stopped, in patch 4103 (arguments: board, context, column cell, row cell). The hardware-state structure is at context +96 and the saved record at +112. The pixel descriptor at saved +184 gives the bytes per pixel: bits 8:5 index the global pixel-size table (two words per entry) and bits 4:0 a second table, the product being used when the first entry's second word is nonzero; a zero field or product falls back to the default at hardware-state +7040. Bit 16 of the descriptor picks the header size at +7044 or +7048. The transfer width and height are the words at +7028 and +7032, or, when bits 7:6 of the saved word at +128 are 2, the absolute differences of the saved coordinate pairs at +768 and +784 and at +772 and +788. A width or height outside 1 to 2048, or a zero pixel size, logs severity 4. Otherwise the words already sent (saved +172, times 4, less the header) divided by the pixel size give pixels, and dividing by the width yields the row (stored through the row cell, or 0 when it reaches the height) and the remainder the column. It returns nothing.
- `odsyRestoreVertex` (`odsy_ctxsw.o`, offset 0x45b8, 356 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Replays one saved vertex group in patch 4103 (arguments: board, context, descriptor words, pointer cell, group index n). It calls `odsyRestoreVB` with the descriptor at saved-record +140 plus 8n and stores that address through the pointer cell. When the program count at hardware-state +10972 is nonzero it reselects the program held in the word at +11040 + 4n with `odsySetProgram`. It then writes the command word at saved +256 + 4n to the FIFO port at base +0x110000, followed by the operands from saved +768 + 16n, their count being bits 13:10 of the command word. A command word with a zero count is sent only when, ignoring bits 22:16, it equals 0x3000c02e or 0x2f00c02e; any other such word logs severity 7 and sends nothing.
- `odsyResetHwShadow` (`odsy_ctxsw.o`, offset 0x4f90, 320 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Rebuilds the vertex shadow after a reset, in patch 4103 (argument: shadow record). It clears 2304 bytes, zeroes +188, stores 65 at +176 and ORs 0xf into the word at +128, and writes one default attribute command word per slot: +256 0x8080c800, +272 and +576 0xce80c406, +288 and +592 0xc580cc0d, +304 0xc180cc18, +320 0xc280cc1c, +336 and +608 0xc380c41e, +352 and +624 0xc480c426, +368 0x3000c02e, +384 0xc680d02f, +400 0xc780d030, +416 0xc880d031, +432 0xc980d032, +448 0xd080c433, +464 0xd080cc34, +480 0xca80d035, +496 0xcb80d036, +512 0xcc80d037, +528 0xcd80d038, +544 0xd080c439 and +560 0xd080cc3a. It returns nothing.
- `gfP_OdsyGLGet` (`odsy_ctxsw.o`, offset 0x50d0, 584 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Read-back request in patch 4103 (arguments: manager object, board record, user request, result word). A set teardown word at board +728 logs severity 4 and the routine goes on. The current client behind +72 then +112 of the object must exist (else a severity 4 log and 1); a 4-byte `copyin` of the selector (fault: log, 14) and `RRM_CheckValidFault` (negative: 14) follow. Under the busy count at +80 it zeroes the sequence word at the saved record's +124 in the 128-byte slot picked by the low 16 bits of the board word at +10472, and writes the doubleword (1216 + selector in the upper half, 1 in the lower half) to the FIFO port at base +0x110000 for selectors 0 to 3; any other selector sends the second word of the request area in the upper half. It arms a 1500-tick `timeout` with a small-data handler, polls the sequence word with 1 microsecond `us_delay` steps until it is nonzero or the teardown word is set, cancels the timer with `untimeout`, stores 14 in the result word when the teardown word is set, lowers the busy count and returns the result word.
- `odsySetProgram` (`odsy_ctxsw.o`, offset 0x3a80, 888 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Selects one of the context's two transform microcode programs in patch 4103 (arguments: board, context, program number 0 or 1). A program number of 2 or more, or an entry number of 254 or more in the hardware-state word at +10992 + 32 x program, logs a severity 4 message and kills the calling process with signal 9 (`curproc`, `psignal`). Up to three downloads follow through `odsyDownloadUcode`, each of one or more lines and each failure logging severity 4 and killing the process: first one line at the hardware line recorded at +11064, with its software line moved down by 1848 when the program's second segment (the word at +10996 + 32 x program) is in use and the line is 1848 or more; then, when that segment differs from the one cached at +11060, the segment itself (hardware line 1848, at most 199 lines, bounded by the line count at board +10292), caching it at +11060; then the program's entry line (hardware line +11000 + 32 x program, software line +11004 + 32 x program), after which +11064 takes the value of +11000. It then writes sequencer words to the FIFO port at base +0x110000, each with the low 10 bits of its value in place and the rest shifted to bit 23: 0x33008000 for the entry number plus one, 0x29008000 for the table word at +9948 + 4 x entry, 0x90808800 and two zeros, then 0x33008000, 0x29008000, 0x2a008000 and 0x2c008000 carrying the words at +10988, +10976, +10980 and +10984 (each + 32 x program). It returns nothing.
- `restoreRect` (`odsy_ctxsw.o`, offset 0x4cb8, 728 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Replays saved rectangle vertex words in patch 4103 (arguments: board, saved record, mode, index n). Entries come from the four-entry ring at saved +256 (command word) and +768 (operands, 16 bytes per entry). With mode below 2 it sends entry (n + 2) mod 4 and then entry (n - 1) mod 4, both as signed remainders; otherwise it sends only entry (n + 3) mod 4. Each send writes the command word and its operands (count in bits 13:10) to the FIFO port at base +0x110000; a zero-count word is sent only when, ignoring bits 22:16, it equals 0x3000c02e or 0x2f00c02e, otherwise it logs severity 7 and sends nothing.
- `odsyRestoreGfe` (`odsy_ctxsw.o`, offset 0x34a4, 1096 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Replays the geometry-engine part of a saved context in patch 4103 (arguments: board, context; hardware state at context +96). Every word is a store to the FIFO port at base +0x110000. It sends 0x14400, 0, 0x14001, 1856, 491, 3905, the saved word at +172, two zeros, 17776, the saved word at +184, 1200 and the hardware-state word at +7052. When the context's slot id (word +0) is nonzero and differs from the board's current slot at +732 it then sends four saved packets from +576, +592, +608 and +624: each header carries its payload length in bits 13:10 and is followed by that many words from +2048, +2112, +2176 and +2240, and a zero-length header is sent only when, ignoring bits 22:16, it equals 0x3000c02e or 0x2f00c02e (otherwise severity 7 log, no send). The routine ends with the markers 15608 to 15611, each followed by 16 zero words, and returns nothing.
- `odsyRestoreXform` (`odsy_ctxsw.o`, offset 0x1e0c, 1648 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Replays the transform engine's saved state through the FIFO port at base +0x110000, in patch 4103 (arguments: board, context; hardware state at context +96). The full replay runs when the context's slot id (word +0) is nonzero and differs from the board's current slot at +732; the steps that are not marked full always run. Full: the 512-word table behind sequencer register 0x31 in groups of 16 words from state +7356 (the groups at 320 and 480 are skipped), each group opened by 0x31008000 with the index spread over the word (low 10 bits in place, the rest shifted to bit 23) and the block word 0x9080bda2 (0x9000bda2 for the group at 160), the table's saved index at +9888 being reselected afterwards. Full: register 0x29 is set to 410 (0x2900819a) and register 0x32 to 24, block word 0x8e809015 follows with the four words at +9788 to +9800, and data-memory entries 0 to 23 are loaded each as an index word 0x32008000 plus the block word and four words from +9404 + 16 x entry. Always: the program count at +10972 must be below 255 (else a severity 4 log and the process is killed with signal 9); then 0x28008000 and the program words from +9948 (0x60008000 with each word split), count words. The saved selector at +9900 is cleared and 0x34008000 with block word 0x9080bdc8 sends the 16 words at +6672, +9900 is set to 16 for 0x34008010 with block word 0x908091df and the four words at +6736, and the selector is cleared again; only in the full replay then come 0x34008024 with the 16 words at +6752 (selector 36), 0x34008034 with +6816 (selector 52) and 0x34008014 with +6880 (selector 20), each group followed by the first header again and the selector restored. Finally registers 0 to 21 are written one per word (register number in bits 31:24, 0x20008000 and the split value from +9820 + 4 x register), skipping registers 6, 11, 13, 15 and 16; register 14 sends the fixed word 0x20008380 or'ed with its number when its saved value is zero. It returns nothing.
- `gf_OdsyInfo` (`odsy.o`, offset 0x0,  bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy.o)`.
  Board information request in patch 4103 (arguments: board record, user buffer, size, result word). It copies up to 500 bytes (the size, capped at 500) from board +200 to the user buffer with `copyout`; a fault returns 14. Otherwise it stores the requested size in the result word and returns 0.
- `gf_OdsyPrivate` (`odsy.o`, offset 0x80, 124 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy.o)`.
  Private request dispatcher in patch 4103 (arguments: board record, client, request word, user pointer, result word). The request word's upper halfword must be the magic value 0x6f64 and the command number (the low 16 bits, selected by a constant that cancels the magic bits) must be below 47; the handler is then called through the table in small data at offset 224, eight bytes per command, with the board record, client, the user pointer and the result word. A bad magic or number logs a severity 5 message and returns 22.
- `gf_OdsyAttach` (`odsy_attach.o`, offset 0x60, 328 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_attach.o)`.
    Maps the board into a process in patch 4103 (arguments: object, user address). The address must be 16 KB aligned (else 22). It copies a 32-doubleword template from small data to the stack, calls `gfxdd_recycle` with the object and address (a nonzero result returns 22), and, when bit 2 or bit 5 of the object's flag word at +48 is set, adds the address to the 16 start and length doublewords of the 8 template entries (otherwise to the first 2 entries). `gfxdd_mmap` then maps 16 pages of 16 KB (2 when the flag test failed) at that address with the template, the object's mapping slot at +40 being passed. A failure logs a severity 4 message and returns 12; success sets bit 0 of the flag word at +48 and returns 0.
- `gf_OdsyDestroyDDRN` (`odsy_ddrn.o`, offset 0x3cc, 564 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddrn.o)`.
    Context teardown in patch 4103 (arguments: manager object, context, client). When the table owner (+8 of the record at +32 of the context) is the client and the teardown word at board +728 is set, it checks the saved record's read-back word at +124 (slot picked by the low 16 bits of the board word at +10472) and, when that is clear, calls the operation at +120 of the object's table with a zero argument; a nonzero result logs a severity 4 message and sets a failure flag. It then zeroes the halfword at +708, clears the board's current-slot word at +732 when it equals the context's id, calls `gf_OdsyUnSchedSwapBuf` for a client whose word at +28 is not negative and `gf_OdsyUnSchedRetraceEvent`. A context inside the global client table range with its teardown word (+304) zero is shut down with `odsyDMAFinish`, `odsyMMdetach` and `odsyUnpinAndUnmapGctxRegions` and gets +304 = 1. It clears the context's +144 and the client's +112, frees the 16 KB buffer at +112 and the 32 KB slot at +164 (`OdsyFree32kSlot` on +6112), and, when the board's context count at +4640 is 1, releases the flow handle at +720 with `gfx_flow_dealloc` and clears the flow word at +10404 and register 0x1074. The id becomes -1 and the count is lowered. It returns 0, or 1 after a failed check.
- `odsyHiwaterInterrupt` (`odsy_flow.o`, offset 0xdc, 464 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)`.
    High-water interrupt handler in patch 4103 (argument: board record). It takes the spin lock at +22260 and returns after releasing it when the word at +104 is already set. Otherwise it reads the pipe head with `gfx_flow_pipe_head` (a set teardown word at +728 logs a severity 4 message, calls `heart_flow_control_disable` and returns). It starts flow-wait accounting and compares the credit count with the credit bias up to 10 times, 1 microsecond apart; when the credits come back it counts the event in the per-cpu `gfxinfo` word at +28 and returns. Otherwise it counts the stall at +24, sets +104 to 1, raises the busy count at +80 of the owner's record, calls `force_resched`, sets +120 to 1, runs `odsyFifoTimer` with argument 1, stores 512 at +4124 and +4148 of the shadow at the lock's owner word (and at +4116 when bits 31:17 of register +4196 are nonzero) and sets bit 9 of the word at +10384. The lock is released and nothing is returned.
- `odsyXtErrorInterrupt` (`odsy_intr.o`, offset 0x0,  bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)`.
    Crossbar error interrupt in patch 4103 (argument: board record). It counts the event in the per-cpu `gfxinfo` word at +16, loads the widget status word (+12) and the header word at +68, and tests, in this order, bits 8, 7 and 6: a set bit 8 logs a severity 4 message (string offset 0) and marks a failure, bit 7 logs a message with the status words at +28 and +68 and marks a failure, bit 6 logs a message and marks a failure, and none of them logs a message of its own with no failure. A failure then logs a second message (severity 0) with the header word saved from +68, and the routine always ends by clearing +68. Unlike the IP30 routine it neither prints the diagnostic registers nor calls the teardown routine.
- `gf_OdsyMapGfx` (`odsy_map.o`, offset 0x0,  bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
    Maps the board's windows into a client's address space in patch 4103 (arguments: manager object, client, user address). The address is cut to a 16 KB boundary; a zero address fails. `gfx_flow_clean_up_other_gfxp` runs, `ddv_getaddr` gives the base, and `v_mapkvsegment` maps the windows at 16 KB spacing in the user address range, in this order (user offset, board offset from the register base, pages, cache-algorithm argument): 0x0 from +0x100000 (1, 0), 0x4000 from +0x120000 (1, 2), and, only when bit 5 of the client's flag word (+48) is set, the page 0x8000 from +0 (2, 2), 0x10000 from +0x110000 (1, 2), 0x14000 from +0x118000 (1, 0), 0x18000 from +0x200000 (1, 2), 0x1c000 from +0x220000 (8, 2) and 0x3c000 from +0x400000 (1, 2). Under `splhi` it sets bit 0 of the client's flag word, attaches to flow control when the caller is not attached (the flow word at +10404 with its credit number and register 0x1074, +10408 and register 0x107c cleared), clears +56 and then stores in it one bit selected by the cpu index. It returns 0 when a `v_mapkvsegment` call reported the client's own address as mapped (or the address was zero) and -1 when none did.
- `gf_OdsyUnMapGfx` (`odsy_map.o`, offset 0x28c, 380 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
    Removes a client's windows in patch 4103 (argument: client). When the board's owner at +72 is the client and bit 0 of its flag word (+48) is set, it clears that bit under `splhi` and detaches from flow control if attached (word +10408 = 1, register 0x107c = 1, read-back of 0x106c, `gfx_flow_detach_me`). A client with a zero mapping handle (+40) then returns 0. Otherwise it finds the calling thread with `curthreadhandle` and `gthread_find`; a thread with bit 2 of its flag word set that `thread_issproc` accepts returns 0 untouched, while for the others `ddv_invalphys_fal` removes the mapping: a result of 0 clears +56 and calls `gf_OdsyInvalTLB`, 2 returns 0, and anything else logs a severity 4 message. It returns 0.
- `odsyPinAndMapGctxSwShadowRgn` (`odsy_map.o`, offset 0x488, 232 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
    Pins the user's software shadow in patch 4103 (arguments: context, result cell, user address). It obtains the page cache bits with `pte_cachebits` and pins 11128 bytes at the user address with `useracc` (flags 273): a failure logs a severity 4 message and stores the error. `maputokv` then maps the pinned range with the cache bits OR 7 and the kernel address goes to context +96; a null result unpins the range with `unuseracc` (range kept at +104), logs and stores 22. Success stores 0.
- `odsyUnpinAndUnmapGctxRegions` (`odsy_map.o`, offset 0x570, 236 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
    Releases a context's pinned regions in patch 4103 (argument: context). A context whose doubleword at +120 is nonzero first has its pages at +128 unmapped with `odsyUnmapPages`. It unmaps the 11128-byte shadow at +96 with `unmaputokv`, unpins it with `unuseracc` (range at +104, flags 273) and clears both pointers. Every 32-byte element of the set at +224 whose doubleword at +16 is nonzero has its pages unmapped with `odsyUnmapPages`, its 16 KB buffer at +8 freed and the element itself freed; the set is then destroyed with `OdsyDestroyCSet`.
- `gf_OdsyValidateClip` (`odsy_clip.o`, offset 0x0,  bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)`.
    Rebuilds a context's clip shadow and sends it in patch 4103 (arguments: manager object, shadow record, client, drawable state). It copies the 13-bit window origin fields from the drawable state's words +8 and +12 into the shadow words +40 and +44, mirrors those two words into the saved record's +11104 and +11108, and packs the low halfwords of the state words +8 and +12 into +72 and those of +104 and +108 of the context record into +76. Four rectangle pairs at +8 of the shadow have their coordinate fields masked and the flag bits 0x1000 and 1 set. Depending on the state word at +48 and the bits of +56 (mask 0x3c00) it sets bit 16 of the control word +4 and either fills the control field with 0x700 or 0xf800 (merged with the low byte of +40 or +40 shifted left 3) or leaves it, then derives the four rectangles: from the drawable's origin and size words +8, +12, +16 and +20, clamped to the board's size words at +32 and +36 of the table at +2008, or, when the state's count word at +24 is nonzero, from the rectangle array behind the saved record. It then runs `odsyClipMask` and `odsyClipPush`; a caller that was not attached to flow control is attached for the push (flow word +10404 with its credit number, +10408 and register 0x107c cleared) and detached again afterwards under `splhi`. It returns 0.
- `odsyClipMask` (`odsy_clip.o`, offset 0x4dc, 296 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)`.
  Clamps a shadow's four clip rectangles to the visible area in patch 4103 (arguments: board record, shadow record). The visible bounds are the shadow words +48, +52, +56 and +60 shifted by the window origin words at +104 and +108 of the drawable record at +120 of the context behind +144. Each of the four rectangle pairs at +8 (two words, 12-bit coordinate fields at bits 23:12 and 11:0) is limited in both axes with minimum and maximum selections; a pair that already holds the empty pattern (the first field of both words equal to 1 and the second 0) is left as it is and ends the clamping for it. It returns nothing.
- `odsyClipPush` (`odsy_clip.o`, offset 0x604, 660 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)`.
  Sends a clip shadow to the board in patch 4103 (arguments: board record, shadow record). Through the FIFO port at base +0x110000 it writes a 27-word settle run (headers 0x10443, 0x10046 and 0x10019 with the counts 250 and 150), then 0x31008140 and the block word 0x9000bda2, 0x10019, 0x10841 with the shadow words +40 and +44, 0x10840, a doubleword with the board word +1368 over the shadow word +4, 0x1204b with the four rectangle doublewords from +8, and 0x31008000 carrying the saved index at +9888 of the hardware state. When bit 27 of the state word at +6956 is set it also sends a second settle run with a block of zeros and the mask 0xffffff, and eight doublewords (headers 193, 773, 1545, 1547, 387, 1549, 775 and 1551 in the upper half) holding the shadow words +64 to +92. It returns nothing.
- `gfP_OdsySetClipMask` (`odsy_clip.o`, offset 0x8d8, 232 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)`.
  Clip mask request in patch 4103 (arguments: manager object, context, user pointer, result word). `RRM_CheckValidFault` must not be negative (else 14). With the busy count at +80 raised it copies 16 bytes from the user pointer to the saved record's +48 (fault: log severity 4, 14), calls `gf_OdsyValidateClip` with the context's drawable state (context +120, record +96), stores its result, lowers the busy count and returns the result.
- `gfP_OdsyDIAGallocScanbuf` (`odsy_diag.o`, offset 0x0,  bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`.
  Diagnostics scan-buffer request in patch 4103 (arguments: client, board record, user request, result word). It copies 24 bytes in (fault: log severity 4, store and return 14) and takes the lock at board +22008 with `mutex_lock` (25). A scan-buffer owner already recorded at +22056 returns 16. Otherwise it allocates the requested size (first request word) with `kmem_alloc` (null: 12), maps it with `odsyMapPages` (failure frees it and returns 11), records the buffer at +22024, the mapping at +22040, its size at +22048 and the client as owner at +22056, and puts the user address (`ddv_getaddr` of the mapping, kept at +22032) and the buffer's physical address (`kvtophys`) in the 24-byte reply, copied out (fault: log, 14). It zeroes the buffer, prints a debug line with the word count through `printf`, stores 23 at +92 of the mapping (and 16408 at +16480 when the size passes 16384), flushes the cache range with `dki_dcache_wb` and returns 0.
- `gfP_OdsyDIAGgetShadowPtrs` (`odsy_diag.o`, offset 0x2a4, 664 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`.
  Diagnostics shadow-pointer request in patch 4103 (arguments: client, board record, user request, result word). It copies 80 bytes in (fault: log, 14) and takes the lock at board +22064; an owner already at +22080 returns 16. It maps the board's shadow window of the size at +752 with `odsyMapPages` (mapping record at +22152; failure 12) and then four 16 KB regions whose sources are the board words at +6048 + 8 per region, mapping records at +22088 + 8 per region; any failure unmaps what was done and returns 11. The client becomes the owner at +22080. The 80-byte reply carries, for the first mapping and the four regions, the user addresses from `ddv_getaddr` (also kept at +22120 + 8 per region) and the source addresses with their top 24 bits cleared; it is copied out (fault: log, 14) and the routine returns 0.
- `gfP_OdsyDIAGreleaseShadowPtrs` (`odsy_diag.o`, offset 0x53c, 212 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`.
  Diagnostics shadow-pointer release in patch 4103 (arguments: client, board record, result word). Under the lock at board +22064 it returns 1 (and stores it) unless the client is the owner at +22080. For the owner it unmaps the shadow window at +22152 and the four regions at +22088 + 8 per region with `odsyUnmapPages`, clears the four user addresses at +22120 + 8 per region and the owner word, releases the lock and returns 0.
- `odsyInitPfRgn` (`odsy_diag.o`, offset 0x610, 184 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`.
  Performance-statistics region set-up in patch 4103 (arguments: board record, size). It returns 0 at once when the region pointer at +10312 is already set. Otherwise it takes a 16 KB zeroed `kmem_zalloc` buffer (null: log severity 4 through `printf`, release the lock at +10336 and return 1), records the capped size (16384 at most) at +10304, pins and maps it with `odsyPinAndMapPfStatRegions`, converts it with `kvtophys` and stores the address halves at +10440 and +10436 and into registers 0x401c and 0x4024 of the base. It returns 0.
- `gfP_OdsyPerfStat` (`odsy_diag.o`, offset 0x738, 512 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`.
  Performance-statistics request in patch 4103 (arguments: board record, client, user request, result word). It copies 24 bytes in (fault: log, 14). The command byte (first byte of the request) with bits 0 and 2 both set returns 22. Under the lock at board +10336 (`mutex_lock`, 25) bit 0 creates the region: an existing one is first destroyed with `odsyDestroyPfRgn`, `odsyInitPfRgn` gets a size of 32 times 2 to the power of the request byte at +16 plus 1, and the kernel pointer at +10320 is copied out in the second reply word (fault: log, 14); bit 2 destroys an existing region; bit 1 builds the performance mode word and stores it in the shadow at +10444 and in register 0x402c (base +16428): the low four bits are the request byte at +16, bit 4 is bit 0 of the byte at +17, bit 5 of the byte at +18, bit 6 of the byte at +19, bits 10:8 the low three bits of the byte at +21, and the constant 0x88000000 supplies bits 31 and 27. The lock is released and it returns 0.
- `odsyBindDrawable` (`odsy_drawable.o`, offset 0x12c, 684 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
    Drawable binding in patch 4103 (arguments: board record, context, which, flags). Which equal to 1 selects the read binding at context +352, anything else the draw binding at +400; the binding's flag word (+0) gets bit 0 set and bits 1 and 2 cleared and its key (+4) is taken from the word at +100 of the drawable object behind the context (+144, then +120 or +128). A zero key clears bits 0 to 2 and returns 0. Otherwise it looks the key up in the 13-bucket drawable hash at board +10520 (bucket = the key's two halfwords ORed, modulo 13; `mraccessf` on +10528 guards it): a hit sets bit 2, promotes the lock with `mrtrypromote` (failing returns 13) and counts a user at +32 of the drawable; the lock is released. With a hit the binding takes the drawable's record at +24 (a null record logs a severity 4 message and returns 22), stores the caller's flags at +8, a halfword from the record's first buffer at +44 into +40, zero at +43, and the buffer sizes and formats: when bit 1 of the caller's flags is set +12 is the first buffer's word at +56, +42 its format byte and +16 and +20 to +32 are zeroed; otherwise +12 comes from the first buffer, +16 from the second buffer's +56, +20 to +32 from the four buffers at +40 of the record, and the bytes +44 and +45 from the last buffer. A miss takes the board's own table at +1992 in place of the record. The context's draw or read word (+68 or +64) gets bits 30:0 from binding +12, and the binding's bit 1 is set. It returns 0.
- `odsyUnbindDrawable` (`odsy_drawable.o`, offset 0x3d8, 388 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  Drawable unbinding in patch 4103 (arguments: board record, context, which). Which equal to 1 selects the read binding at context +352, otherwise the draw binding at +400. A binding without bit 1 of its flag word set returns 0 at once. With bit 2 set it looks the key (+4) up in the drawable hash at board +10520 (13 buckets, `mraccessf` and `mrtrypromote` on +10528 as in the bind routine; a miss returns 22, a failed promote 13), lowers the drawable's user count at +32, removes it from the hash with `odsyHashRemove` when the count reaches zero and its first word is set, and calls `odsyDestroyDrawable` when the count is then zero. The binding's key is cleared and bits 0 and 1 of its flag word are cleared. It returns 0.
- `gfP_OdsySetDrawBuffer` (`odsy_drawable.o`, offset 0x55c, 564 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  Draw-buffer selection request in patch 4103 (arguments: manager object, context, user pointer, result word). A missing current client logs a severity 4 message and returns 1. It copies 4 bytes in (fault: log, 14), stores the word at the context's +456, and `RRM_CheckValidFault` must not be negative (else 14). If the caller is not attached to flow control it is attached first (flow word at +10404 with its credit number, +10408 and register 0x107c cleared); `odsyPushBufferSelect` then sends the selection with the register base, and the caller is detached again under `splhi` (clearing bit 1 of the flag word at +48, word +10408 = 1, register 0x107c = 1, `gfx_flow_detach_me`) when it had been attached. It returns 0.
- `odsyPushBufferSelect` (`odsy_drawable.o`, offset 0x790, 544 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  Sends the buffer selection to the board in patch 4103 (arguments: context, register base). From the selection word at context +456 (bits 0 to 3) and the state of the drawables behind +144 (the mask bits 0x3c00 of the word at +32 of the drawable's record at +120, and whether the draw and read records exist and have a nonzero halfword at +18) it forms a select code, which is stored in the saved record at +21904 (12 when the selection and drawable state ask for all buffers). It copies the hardware-state words +6948 to +6960 into the saved record's +17740 to +17752 and writes through the FIFO port at base +0x110000 a 27-word settle run (headers 0x10443, 0x10046 and 0x10019, counts 250 and 150), the header 0x10424 and the select code, and another settle run. It then updates bit 31 of the context's draw and read words (+64 and +68) according to whether the drawable has a second buffer and sends them as two doublewords (headers 193 shifted into bits 63:35 over the word at +64, and 1545 over the word at +68). It returns nothing.
- `gfP_OdsyMakeCurrent` (`odsy_drawable.o`, offset 0x9b0, 784 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  Make-current request in patch 4103 (arguments: manager object, context, user pointer, result word). A missing current client logs a severity 4 message and returns 1. It copies 80 bytes in (fault: log, 14) and `RRM_CheckValidFault` must not be negative (else 14). The caller is attached to flow control for the duration if it was not (as in the draw-buffer request). It unbinds both drawables with `odsyUnbindDrawable` (which 1 then 2), binds the read drawable from the first request word and the draw drawable from the word at +40 with `odsyBindDrawable`, copies the five doublewords at context +360 to +392 and the five at +408 to +440 into the request area, sends the clip state with `odsyClipPush` and detaches again. The 80 bytes are copied back to the user (fault: log, 14) and the result word is returned.
- `gfP_OdsyPbufAssoc` (`odsy_drawable.o`, offset 0xcc0, 576 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  Pixel-buffer association request in patch 4103 (arguments: manager object, board record, user request, result word). It copies 8 bytes in (fault: log severity 4, 14); the request is a drawable key at +0 and a group id at +4, and an id of -1 logs and returns 22. The share group with id 0 is looked up in the set at board +2232 (a miss logs and returns 22) and the group id in that share group's set at +64 (a miss logs and returns 22). The key is then searched in the 13-bucket drawable hash at board +10520 (bucket = the key's two halfwords ORed, modulo 13; `mraccessf` on +10528): a hit returns 11. Otherwise `odsyCreateDrawable` makes a drawable for the key (null: 12), whose type word at +36 is set to 2, user count at +32 to 1 and group pointer at +24 to the group; the lock is promoted with `mrtrypromote` (failure: 13), the drawable is entered with `odsyHashInsert` and the lock released. It returns 0.
- `gfP_OdsyPbufDeassoc` (`odsy_drawable.o`, offset 0xf00, 456 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  Pixel-buffer dissociation request in patch 4103 (arguments: manager object, board record, user request, result word). It copies 8 bytes in (fault: log, 14) and searches the drawable hash at board +10520 for the key at +0 (a miss returns 22 after releasing the lock). A drawable without a group pointer (+24) logs a severity 4 message and returns 0. Otherwise the group's id (its first word) is stored in the request at +4, the lock is promoted with `mrtrypromote` (failure: 13), the drawable is removed with `odsyHashRemove` and its type word at +36 is set to 1; when its user count at +32 is zero it is destroyed with `odsyDestroyDrawable`. The lock is released, the request is copied back (fault: log, 14) and it returns 0.
- `odsyInitRetrace` (`odsy_retrace.o`, offset 0x0,  bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
    Retrace state set-up in patch 4103 (argument: board record). It clears 1368 bytes at +4664 with `bzero`, zeroes +4724, +4732, +4688 and +6024, initialises a mutex at +4664 and a synchronisation variable at +4680 (both with names kept in small data), clears +4696, +4704, and stores the address of +4696 at +184 and 1 at +176. `gf_OdsyInitialize` calls it before the interrupts are connected, so the swap table, the pending and aborted buffer masks and the retrace event list all start empty. It returns nothing.
- `odsyValidateBuffer` (`odsy_retrace.o`, offset 0x8c, 120 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
  Buffer swap completion in patch 4103 (arguments: board record, buffer index). The index selects an entry of 40 bytes in the swap table at +4744. When the entry's retrace-event pointer (+24 of the entry, at +4768) is nonzero it calls `rrmValidateBuffer` with the pointer behind the client at the entry's start (+4744) plus 144; otherwise it calls `rrmValidateMGRSwapBuf` with the board's first word and the entry's word at +4776. It then clears the buffer's bit in the pending mask at +4728 and returns nothing.
- `odsySwapBuffer` (`odsy_retrace.o`, offset 0x104, 556 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
  Performs one scheduled buffer swap in patch 4103 (arguments: board record, buffer index). Each buffer has a 40-byte entry in the table at +4744 (client at +0, due time at +12, mask of buffers swapped with it at +16, event pointer at +24, count at +32, retry counter at +36). A buffer whose due time has not been reached by the frame counter at +128, or which is not in the mask at +4736, only gets its bit set in +4712 and its retry counter cleared. Otherwise it moves the buffer's bit from +4712 to the done mask +4716, removes the aborted buffers (+4724) from the entry's mask and from the displayed mask +4704 (written through to register 0x10bc, base +4284, when it changed), and when no waiting buffers remain for the entry it clears its done bits, writes the swap-complete masks to registers +4292 and +4300, calls `odsyValidateBuffer` for every buffer in the mask (up to 40) and updates the masks at +4720 and +4688; otherwise the entry's retry counter at +4780 is counted up and, past 300, the entry's mask is reset and the counter zeroed. It returns nothing.
- `gf_OdsySchedSwapBuf` (`odsy_retrace.o`, offset 0x330, 1104 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
    Schedules a buffer swap in patch 4103 (arguments: manager object, client, buffer index). An index of 32 or more returns 22. The caller is attached to flow control as in the other requests, `odsyPushBufferSelect` is run and the retrace mutex at +4664 is taken (`mutex_lock`, 25). A buffer already pending in the mask at +4728 makes the caller wait on the synchronisation variable at +4680 (`sv_wait`) until its bit clears; one that is pending with a nonzero event pointer at +4768 logs severity 4 and returns 16. It clears a stale displayed mask at +4704 (register +4284), sets the buffer in +4728, collects the buffers of the client's own swap group (the ring at client +160) into a mask and writes it to +4704 and register +4284 when it changed. It fills the buffer's table entry at +4744: the client's record, the saved buffer-switch halfword from record +96 at +11068, the mask, a zero retry counter and the due time (the client's words +24 and +28 added, or the frame counter at +128 plus +24 when that is later). It updates the masks at +4732 (the client's halfword at +18 shifted to the buffer), +4736 (the client's word +468) and, when the board's window id (+752 table entry for the client's +164) differs from the saved halfword, +4708; otherwise it calls `odsySwapBuffer` at once. The mutex is released and it returns 0.
- `odsySwap_softsync_intr` (`odsy_retrace.o`, offset 0x780, 252 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
  Soft sync interrupt handler in patch 4103 (argument: board record). Under the retrace mutex at +4664 it goes through the 32 buffers whose bits are set in the pending mask +4728 and also in +4708, and calls `odsySwapBuffer` for each whose window id (the client's +164 into the table at +752) is the saved halfword or later and below 0x8fff and 4096, clearing the buffer's bit in +4708 first. It then releases the mutex and returns nothing.
- `gf_OdsyUnSchedSwapBuf` (`odsy_retrace.o`, offset 0x87c, 408 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
    Cancels a scheduled swap in patch 4103 (arguments: manager object, client, buffer index). Under the retrace mutex it returns at once when the buffer is not in +4728; otherwise it adds the buffer to the aborted mask +4724, takes it out of +4716, removes its bit from the masks of the other entries that share its group (each entry's +4760) and from the displayed mask +4704 (written to register +4284). While the teardown word at +728 is clear and the buffer is still scheduled it sleeps on the synchronisation variable at +4680 with `sv_timedwait` using the timeout kept in small data, retaking the mutex each time. It releases the mutex and returns 0.
- `gf_OdsySchedRetraceEvent` (`odsy_retrace.o`, offset 0xa14, 160 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
  Adds a retrace event to the board's list in patch 4103 (arguments: board record, event). Under the retrace mutex it walks the singly linked list headed at +6024 (next at +40 of each event) and, when the event is not already on it, links it at the head and returns 1; a present event returns 0.
- `gf_OdsyUnSchedRetraceEvent` (`odsy_retrace.o`, offset 0xab4, 180 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
  Removes a retrace event from the board's list in patch 4103 (arguments: board record, event). Under the retrace mutex it searches the list headed at +6024 (next at +40) and unlinks the event, returning 1; an event that is not on the list returns 0.
- `gf_OdsySchedMGRSwapBuf` (`odsy_retrace.o`, offset 0xfe0, 508 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
    Schedules a swap for the display manager in patch 4103 (arguments: manager object, board record, buffer index, count word, flags). An index below 0 or above 32 logs severity 4 and returns 22. Under the retrace mutex it clears a stale displayed mask as the other scheduling routine does; a buffer already pending logs severity 5 and the caller waits on the variable at +4680 until it clears. It then sets the bit in +4728 and fills the buffer's table entry: the client behind the manager's owner (+72, +112), a null event pointer, the saved halfword from its record's +11068, the count word at +4776, zero due time and retry counter, and the buffer's own mask. Bit 30 of the flags word moves the buffer's bit in +4732 and clears it in +4736. When the window id in the table at +752 differs from the saved halfword it marks the buffer in +4708, otherwise it calls `odsySwapBuffer`. The mutex is released and it returns 0.
- `odsyRetraceHandler` (`odsy_retrace.o`, offset 0x11ec, 688 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
    Vertical retrace interrupt handler in patch 4103 (argument: board record). Under the retrace mutex at +4664 (taken with `mutex_lock`) it counts the retrace at +124 and +128, keeping the earlier count of +128 as the retrace number. When the displayed-buffer mask at +4704 is nonzero and the doubleword at +4696 is zero it writes 0 to register +4284 and clears the mask. When the pending-buffer mask at +4728 is nonzero it goes through the 32 buffers in turn; the video word is the mask at +4688 exclusive-ORed with register +4308. A buffer that is not pending is skipped. An aborted one (+4724) has its bit cleared from the five masks at +4728, +4708, +4716, +4712 and +4720 and `odsyValidateBuffer` is called for it. A due one (+4708) increments its retry count (a word at +4780 plus 40 times the buffer number); above 300 the count is cleared, the due bit dropped, `odsySwapBuffer` called and a severity 4 message logged with the buffer number. A buffer waiting on retrace (+4720) whose bit is clear in the video word has the retrace number stored at +28 of its event record (the pointer at +4768 plus 40 times the number, when nonzero), the waiting bit cleared and `odsyValidateBuffer` called. When its bit is set in the video word its count at +4780 goes up; at 2 it is cleared and the bit is written to register +4276 with no swap or validate. A buffer that is not waiting on retrace but is in +4716 or +4712 gets `odsySwapBuffer`. After the loop it broadcasts the sync variable at +4680 and clears +4724. It then runs `rrmValidateRetrace` for every event on the list at +6024 (links at +40) and empties the list, releases the mutex, calls `rrmValidateVideoSync` when the doubleword at +136 is set, and increments the per-cpu `gfxinfo` word at +16 for the interrupt. It returns nothing.
- `odsy_earlyinit` (`odsy_init.o`, offset 0xdc, 512 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
    Early board discovery in patch 4103. A second call (the done word in small data at +12 set) logs a severity 4 message and returns 0. It clears the found counter, sets the done word and, when the mode word at +8 is nonzero, clears the 44624-byte board table (two boards of 22312 bytes). For each of the two board slots it sets the found halfword at +700 to -1; with the mode word set it stores 1 in the start-up word at +22304 and, when `odsyFindBoardAddr` finds the board, counts it, resets it with `odsyReset`, initialises its text-port lock with `odsy_tport_lock_init` and registers it with `htp_register_board` (register base and the two halfwords at +232 and +234). Without the mode word, a board found and not in panic mode whose start-up word is zero and whose attach count at +4640 is below 2 waits: it initialises the semaphore at +22288, arms a 200-tick `timeout` with a small-data handler and sleeps on it with `psema` until the count reaches 2 (a repeated failure logs severity 5). When no board answers the mode and done words are cleared. It returns whether any board was found.
- `odsy_attach` (`odsy_init.o`, offset 0x308, 288 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
    Hardware attach in patch 4103 (argument: crossbar vertex). It adds a character device node with `hwgraph_char_device_add` and maps the board's window with `xtalk_piotrans_addr` (offset 0x401000 of the widget, 0x40 shifted into the size argument). `odsyPipeNrFromBase` gives the pipe number; -1 takes the first board slot whose register base at +736 is still empty and stores the mapping there. A revision type (bits 31:28 of the widget word at +4) below 2 runs `odsyInitBoardGfx`; any other revision calls `nic_vertex_info_set` with a small-data string and the vertex instead. `odsyInitIntr` with the pipe number, vertex and the result of the node creation finishes the routine, which returns 0.
- `odsyInitIntr` (`odsy_init.o`, offset 0x428, 428 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
    Interrupt wiring in patch 4103 (arguments: pipe number, crossbar vertex, device description). It stores the vertex at board +22256, duplicates the device description with `device_desc_dup` and allocates five crossbar interrupts with `xtalk_intr_alloc` into the pointers at +21920, +21928, +21936, +21944 and +21952, then frees the description. The vector numbers (`xtalk_intr_vector_get`) go to the halfwords at +21960 to +21968. Each interrupt is connected with `xtalk_intr_connect` to its own handler from small data (offsets 40, 48, 56, 64 and 72) with the board record as argument, and the destination addresses of the first two (`xtalk_intr_addr_get`) are stored at +21976 and +21984.
- `odsyFindBoardAddr` (`odsy_init.o`, offset 0x5d4, 208 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
    Finds one board's register window in patch 4103 (argument: pipe number). A board whose found halfword (+700) is not -1 returns its recorded base (+736), logging a severity 4 message when it is null. Otherwise `xtalk_early_piotrans_addr` is asked for the widget with part number 0xc013 and a window at offset 0x401000 of the crossbar port for that pipe. A hit stores the base at +736, the pipe at +702, 0x400000 at +10372, the low four bits of the widget word at +36 at +704, and the same word with its low nibble replaced by those bits at +10356; the found halfword becomes 1, or 0 when nothing answered. It returns the base.
- `odsyInitBoardGfx` (`odsy_init.o`, offset 0x6a4, 536 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
    Kernel-side board record set-up in patch 4103 (argument: pipe number). It clears the first 200 bytes of the 22312-byte board record, initialises the semaphore at +6032 and the 32 KB slot mask at +6112, a mutex at +2472 and a synchronisation variable at +2488, zeroes +2508, +2512, +3572 and +3576, makes the display semaphore at +10256 (count 1), the spin lock at +10272 and mutexes at +10240 and +10224, a semaphore at +4648, runs `odsyInitDDRNs` and `odsyInitHwWrRgn`, and allocates a 48 KB zeroed buffer at +760 whose address plus 32 is stored at +10296. The chip record's memory-size code (+252: 32, 64 or 128) and the word at +280 build a state word (0x10000, 0x20000 or 0x30000, with 0x1000000 added by bit 20 handling of +280) that `add_to_inventory` receives with class 7 and type 21. It stores 1 at +176 and +20, 40 at +88, the address +10632 at +96, initialises mutexes at +22008, +22064 and +10336 and registers the board with `GfxRegisterBoard` (small-data object, record, +200). It returns nothing.
- `gf_OdsyInitialize` (`odsy_init.o`, offset 0xf7c, 1184 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
    Start-of-use initialisation in patch 4103 (argument: manager object). A board whose attach count at +4640 is nonzero logs a message and waits: up to 11 rounds of a 500-tick `timeout` on a semaphore at +4624 with `psema` until the count reaches 0, else it returns -1. As the owner (+72; `psema` 537 and 2 microsecond waits on +104 otherwise) it counts the busy word at +80, calls `htp_register_board` with zeros, releases a previous flow handle (detaching when the flag word at +48 has bits 1:0 set) and makes up to five attempts: `odsyReset`, `gfx_flow_alloc` (target 2048, timeout 10000, `odsy_flow` arguments from the record), waiting in 5 microsecond steps for the FIFO level bits of register 0x106c to reach zero, pulsing register 0x1084 (0, 1, 0), storing 0x900c8 in the flow word +10404 and register 0x1074, then `odsyInitCfifo`; a failure releases the handle and retries. Then it resets the 32 KB slot mask (+6112), allocates two slots (the first becomes +22272 with its table entry at +22280, halfword cleared), runs `odsyInitMM`, `odsyInitDMA`, clears +708, +22056 and +22080, runs `odsyInitRetrace` and `odsyInitInterrupts`, attaches to flow control if needed, zeroes board memory with `odsyZeroOut`, detaches again, clears the start-up word at +22304, lowers the busy count and returns the result of the last `odsyInitCfifo`.
- `odsyInitDMA` (`odsy_init.o`, offset 0x1f40, 240 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
    DMA state set-up in patch 4103 (argument: pipe number). It initialises the mutex at +2472 and the synchronisation variable at +2488, clears the first four doublewords of the buffer at +760 and allocates two 32 KB slots from the mask at +6112: the first slot goes to +2504 with its table entry (at +752 plus twice the slot) kept at +2496, the second to +3568 and +3560, and both table halfwords are set to 0xffff. It clears +2508, +2512, +3544, +3552, +3572, +3576, +4608 and +4616.
- `odsyInitHwWrRgn` (`odsy_init.o`, offset 0x3370, 296 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
    Hardware write-region set-up in patch 4103 (argument: pipe number). The per-pipe region pointer lives in the global table in small data (offset 104, eight bytes per pipe, word +29200); a null one is allocated with `kmem_zalloc` (128 KB, flags 0x8800) and a failure logs through `printf` and continues. It clears +752 and the four entries at +6048 and +6080, collects up to three leading 16 KB pieces below the next 64 KB boundary into the slots from +6040 + 8, stores the 64 KB aligned address at +752 (the 32 KB slot table) and fills the remaining entries at +6048 + 8 per region with consecutive 16 KB blocks after it. It returns nothing.
- `odsyLowLevelReset` (`odsy_init.o`, offset 0x151c, 740 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
    Resets the board's link in patch 4103 (argument: board record). The host chip is reached through the physical addresses in `.lit8` (base 0x9000000010000000, with words at +4, +0x24 and +0x7c). Chip word +4 bits 31:28 above 4 mark the newer part. The widget number is the low four bits of the board's widget word at +10356; its low three bits index the 64-byte per-widget block of the chip. On the newer part the routine first clears bit (widget - 8) of the chip word at +0x7c, then walks widgets 8 to 15 other than its own and, for each whose block word at +276 has bit 31 set and word at +316 has bit 5 set, clears the same bit (widget - 8) in the chip word at +132 plus 8 times (that widget - 8). On both parts it then saves the chip word at +0x24 and the block word at +268, clears bits 5, 2 and 1 of the first and bits 1, 3, 4, 5, 6, 7, 8, 16, 17 and 31 of the second, and writes both back. The reset itself writes register 0x100c with 512 (shadow +10376 the same) on the newer part and waits 200 ms with `odsy_usdelay`; on the older part the shadow takes 320 and then 365 but only 365 reaches the register (the intermediate 360 is never written), followed by a 200 ms `us_delay`. The older part then writes 0 to the register and shadow, calls `odsyLLPReset` and waits 1 ms. Both paths restore the two saved chip words, store the shadow of register 0x1004 (+10372) back, put the widget word (+10356) into register +36, then set the shadow +10372 and register 0x1004 to 0x400000 and write the widget word to +36 again. It returns nothing.
- `odsyReset` (`odsy_init.o`, offset 0x1800, 1092 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
    Brings a board to idle in patch 4103 (argument: pipe number; the board record is the pipe number times 22312 into the global array). It clears +728 and the halfword at +708, zeroes 500 bytes at +200 (`bzero`) and copies a 16-byte name from small data into it (`strncpy`), sets +248, +284 and +288 to -1, +236 to 500, +234 to 1024 and +232 to 1280, and keeps the register base it read from +736 before the reset. It runs `odsyLowLevelReset`, `odsyGatherInfo` (pipe, 1), `odsyMMinit` (register base, record at +744), `odsyInitDBE` (record, a small-data pointer, 1) and `odsyGatherInfo` (pipe, 0). It then clears one shadow word of the record after another and, in the same step, writes the register: all ones to 0x103c and 0x101c, zero to 0x1044, 0x104c, 0x1054, 0x105c, 0x1074, 0x107c, 0x108c, 0x109c, 0x10a4, 0x10ac, 0x401c, 0x4024, 0x402c, 0x4034 and 0x403c (the shadows are zeroed even for the two all-ones registers). Register 0x4044 gets the shadow at +10456 with its low nibble set to 0xc, bits 7:4 replaced by 0x8, bits 13:8 cleared, bits 15:14 and bit 16 set and everything above bit 16 cleared (the shadow is stored once before and once after the fix-up). Register 0x4014 gets the shadow at +10472 with the low half replaced by 0x12 and bits 18, 23 and 24 set, bits 22:20 cleared. Zero goes to 0x404c, 0x4054 and 0x405c, then zero to +4284 and all ones to +4300 of the register base saved on entry. The memory-type words select bits of the shadow at +10372 (register 0x1004): +260 of 2 clears bit 2 and of 4 sets it, +256 of 2 sets bit 1 and of 3 clears it, +252 of 32 clears bits 4:3, of 64 sets bit 3 and of 128 sets bit 4; any other value prints a message with `printf` and changes nothing. After a 400 microsecond wait the routine writes register 0x1004 with bit 5 cleared, waits 400 microseconds, writes it with bit 5 set, writes the same value again, clears bit 5, writes and waits 400 microseconds once more (`odsy_usdelay` throughout). It ends by writing zero to register +52 (0x34), zero to 0x1044, all ones to 0x103c, zero to 0x1074, 0 then 1 then 0 to 0x1084, all ones to 0x101c and zero to register +92 (0x5c). Unlike the 6.5.30m routine it does not call `odsy_hpipe_invalidate`. It returns nothing.
- `odsyInitCfifo` (`odsy_init.o`, offset 0x1c44, 764 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
    Command FIFO and microcode set-up in patch 4103 (arguments: pipe number, flag). With the flag set the caller attaches to flow control first. Through the FIFO port at base +0x110000 it writes 0x10854, a zero, 0x0fffffff, four doublewords (107 in bits 63:36, then the `.lit8` words 0x000006b100000100, 0x000006b300005e50, 0x000006b200007dc0 and 0x000007b500000001), and 0x10046, then waits 2000 us. The word at base +0x201594 must read 0x003d0046; a different value detaches the caller and returns 1. Otherwise it sends 0x2e008380, 0x2600807f and 0x27008000, then 2048 records of six halfwords each taken from the microcode image in small data at offset 104 plus 2000 (the last halfword first, each written as 0x40008000 with its low 10 bits in place and the rest shifted to bit 23), ends with the doubleword 0x000007f03b9aca00 and, with the flag set, detaches from flow control under `splhi` (word +10408 = 1, register 0x107c = 1, `gfx_flow_detach_me`). It returns 0.
- `odsy_NewDmaRegion` (`odsy_dma.o`, offset 0x0,  bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
    DMA region creation in patch 4103 (arguments: owner, owner argument, user address, length, flag, 32-byte descriptor, result cell). It takes an 88-byte `kmem_alloc` record (null: severity 4 log, result 12 and null), clears the table pointer at +0, stores the flag at +48, the owner pair at +16 and +24 and copies the descriptor to +56 with `bcopy`. A zero flag leaves +52 clear, stores 0 in the result cell and returns the record. With the flag set it pins the user range with `useracc` (flags 272; a failure logs severity 4 with the address and length, clears +52, deletes the record with `odsy_DeleteDmaRegion` and returns null), sets +52 to 1 and builds the page table with `odsy_DmaRegion_BuildXlatTbl`, storing its result in the cell; a nonzero result logs severity 4, deletes the region and returns null.
- `odsy_DmaRegion_DoTransfer` (`odsy_dma.o`, offset 0x2a8, 188 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Starts a transfer from a region's page table in patch 4103 (arguments: board record, region, flags). It converts the table pointer in the region's first word with `kvtophys` and writes two doublewords to the FIFO port at base +0x110000: the first has 3587 in its upper half when bit 2 of the flags is set (3585 otherwise) over the physical address split into a 16-bit field from bits 39:24 and a field from bits 39:34 shifted up, and, with bit 2 set only, a second doubleword carries the low 16 address bits and the 6-bit field shifted left 6 in its upper half. It returns 0.
- `odsy_DmaRegion_BuildXlatTbl` (`odsy_dma.o`, offset 0x364, 204 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Builds a region's translation table in patch 4103 (argument: region). An existing table (+0 pointer with its size at +8) is freed with `kmem_free`. The new table needs 8 bytes per 16 KB of the region's length at +40 (rounded up) plus 40 bytes; it is a zeroed `kmem_zalloc` (flags 0x8800; null logs severity 1 and returns 12), recorded at +0 with its size at +8. The 32-byte descriptor at +56 is copied to its start with `bcopy` and `generatePageTable` fills the entries from +32 of the table for the user address at +32 and the length at +40 of the region. It returns the result of `generatePageTable`.
- `generatePageTable` (`odsy_dma.o`, offset 0x430, 1076 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
    Fills a DMA translation table in patch 4103 (arguments: 32-byte region descriptor, buffer address, length, table pointer, optional address list). With no list given it creates one with `alenlist_create` (a failure logs "Out of Memory creating alenlist" and returns 12) and fills it from the buffer with `uvaddr_to_alenlist` for an address below 2 to the 40th and `kvaddr_to_alenlist` otherwise; a null result logs "Invalid host dma region" with the two ends and returns 14. A list given by the caller has its cursor set to the buffer address instead. The number of rows is bits 31:16 of the descriptor word at +12 (0x10000 when that is zero), the row length is the low 20 bits of the word at +24 and their product is the byte count the table must cover; the word at +20 is the stride skipped after each row. `alenlist_get` returns the list in pieces of at most 16 KB (any error is logged "Cannot extract entries from alenlist" and returned). Row bytes are taken from each piece; when a piece is used up, or the last row ends, one table entry of two words is written: the first holds bits 47:16 of the piece address, the second the low 16 address bits in its upper half and the bytes taken from that piece (low 16 bits) in its lower half. The last entry is followed by a zero word and the lower half of the word after that is cleared. If all rows are used and bytes remain it logs "too many scanlines in dma parameter block" and returns 0. A list created here is destroyed with `alenlist_destroy` on every path. It returns 0 or the error code.
- `gfP_OdsyDIAGdma` (`odsy_dma.o`, offset 0x8d0, 548 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
    Diagnostic DMA request in patch 4103 (arguments: manager object, validate flag, user request, result word). With the flag set `RRM_CheckValidFault` must not be negative (else 14). It copies 48 bytes in (fault: log, 14), takes the busy count as the other requests do (owner +72, `psema` 537 on +56, 2 microsecond waits on +104), creates a pinned region for the request's address and length with `odsy_NewDmaRegion` (a null result stores the error and returns), clears bit 11 of register 0x1014 (shadow word at base +4116), starts the transfer with `odsy_DmaRegion_DoTransfer` using the request's word at +44 as flags (a failure logs severity 4) and polls up to 40 times with `DmaFinishedPollDelay` until bit 11 of register 0x1014 is set. A transfer that never finishes logs a severity 4 message and calls `odsy_teardown`. The region is deleted with `odsy_DeleteDmaRegion`, the busy count lowered, the result word set to 0 and 0 returned.
- `odsyDMAWait` (`odsy_dma.o`, offset 0x1ea8, 984 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
    Waits for DMA to finish in patch 4103 (arguments: board record, context, mode, tag cell). A set teardown word at +728 returns 9. It takes the DMA mutex at +2472 with `ddi_mutex_lock`. With mode 0 it arms a 1500-tick `timeout` (small-data handler), blocks signals that are not fatal with `hold_nonfatalsig` and sleeps on the variable at +2488 with `ddi_sv_wait_sig` until woken; an interrupted sleep returns 22 (or 0 once the teardown word is set). With a nonzero mode the tag in the cell (-1 means nothing to wait for: the mutex is released and 0 returned) is compared with the queue window at +3544 and +3552; a tag already inside the window returns at once after the mutex is released, and one that is outside by 128 or more logs severity 4 and returns 22. Otherwise the ring entry for the tag is found through the index at +2512 and the table at +2520 (128 pointers) and its tag doubleword at +64 must match (else log and 22); a 1500-tick `timeout` with a second small-data handler is armed and the caller sleeps on the entry's variable at +24 until the entry's busy word at +0 is cleared or a signal arrives (22). Afterwards, for a given context, completed transfer records in the context's set at +312 (busy word zero, id at +40 not -1) are released: the pinned user range at +48 and +56 with `unuseracc` (flags 272), the id with `OdsyDeallocCSetId`, the variable with `sv_destroy` and the 72-byte record with `kmem_free`. The tag cell is set to -1 and it returns 0.
- `odsyDMAWakeup` (`odsy_dma.o`, offset 0x2280, 720 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
    DMA completion handler in patch 4103 (argument: board record). Under the DMA mutex at +2472 it reads the hardware-written completion index (the low byte of the 16-bit value that the pointer 2496 bytes into the state addresses) and works out how many ring entries finished: the queue counters are at +3544 and +3552, the ring index at +2512 and its table of 128 entry pointers at +2520; a count that does not fit (more than 128 pending, or an index outside the ring) logs severity 4 and the handler stops. For each finished entry it advances the head counter at +3544 (an entry pointer that is null logs severity 4), clears its table slot, advances the ring index modulo 128, frees the entry's buffer at +8 (size at +16) with `kmem_free` (a missing buffer logs severity 4), clears +8, +16 and the busy word at +0, stores the entry's doubleword at +64 in the buffer at +760 (+8 of it), wakes the waiters on the entry's variable at +24 with `sv_broadcast` and destroys it with `sv_destroy`; an entry whose pinned range (+56 length) is still held is left for its owner, otherwise the 72-byte record is freed. After the loop it broadcasts the variable at +2488, writes the ring index minus one (wrapped to 127) back to the completion halfword, through the pointer at +2496, and releases the mutex.
- `odsyDMAFinish` (`odsy_dma.o`, offset 0x2550, 268 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
    Drains a context's DMA in patch 4103 (arguments: board record, context). It calls `odsyDMAWait` with mode 1 on the two tag words at context +168 and +176, takes the DMA mutex at +2472 and walks the context's set of transfer records at +312. A record with its busy word at +0 nonzero logs severity 4 when the board's teardown word is clear; its buffer at +8 (size +16) is freed with `kmem_free`, its pinned range (+48 address, +56 length) is released with `unuseracc` (flags 272) and the 72-byte record is freed. The set is destroyed with `OdsyDestroyCSet` and the mutex released.
- `gfP_OdsyMMwaitXfr` (`odsy_dma.o`, offset 0x265c, 248 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
    Transfer wait request in patch 4103 (arguments: manager object, board, user pointer, result word). A set teardown word at +728 logs a severity 4 message and the routine goes on. The current client behind +72 then +112 must exist (else a severity 4 log and 1). It copies 8 bytes in (fault: log, 14) and calls `odsyDMAWait` with the board, the client and mode 1 on the copied tag; the status goes to the result word and is returned.
- `ConstructTftchWarList` (`odsy_dma.o`, offset 0x2754, 760 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
    Splits a pixel transfer into pieces that fit the board's staging area in patch 4103 (arguments: list header, transfer descriptor, piece-count cell, host address, row offset). A row offset above 0x24000, or a row length (the descriptor's low 20 bits of +24 plus its +20) above 0x24000, logs a severity 4 message and returns 1. A transfer that fits in one piece (offset above the limit path) stores a count of 1, a null link and a one-entry description in the header (copies of the descriptor's halfwords at +4, +6, +12 and +14 and the offset) and sets the count cell to 128. Otherwise the rows per piece are 0x24000 divided by the row length, the piece count is the descriptor's row count (bits 31:16 of +12) divided by that, rounded up, stored in the header with the count cell set to the piece count times 128, and a `kmem_alloc` array of 48 bytes per piece (less 48, since the first piece lives in the header; failure logs and returns 1) is filled: each piece takes a link to the next, the descriptor's halfwords at +4 and +6, its start row, its row count (the last piece the remainder), the host address and the byte count (rows times row length less the stride at +20). It returns 0.
- `odsyDMAOp` (`odsy_dma.o`, offset 0x179c, 1692 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  One host-memory transfer in patch 4103 (arguments: owner context or 0, board record, an address list for the page-table builder, user address and byte count of this piece, a word it zeroes on entry that selects the owner's operation slot, the 32-byte transfer header, a result pointer, and on the stack a flags word (bit 0 and bit 1), the buffer's user address, its length and the number of pieces still to come). It differs from the 6.5.30m routine in where the operation record lives and in the closing words. The record is a 72-byte `kmem_alloc` per call (a failure logs severity 4 "can't allocate a new dma region struct" and returns 12), not an entry of a fixed array. It holds state 1 at +0, the page table at +8 with its size at +16, a sync variable at +24 created with `init_sv` (name "dopsv") only when flag bit 1 is set, the owner at +32, a context-set id at +40, the issue count at +64. With an owner and a nonzero buffer length it takes the id from `OdsyAllocCSetId` on the owner's set at +312 (-1 logs "cannot allocate outstanding locked rgn in gctx", frees the record and returns 12) and keeps the buffer address and length at +48 and +56; with a length of zero it stores 1 and 0 there, and with no owner it stores -1 as the id and leaves +48 and +56 unwritten. `ConstructTftchWarList` splits the request; the table is a `kmem_alloc` of the size it returns (flags 0x8801; a failure logs "cannot allocate translation table" and returns 12), 128 bytes per piece, and each piece gets a copy of the header with x and y, width and height and the row length (header word 24, from the pixel-size table in small data indexed by header word 28 bits 18:16) rewritten and `generatePageTable` filling its page list. Any failure frees the set id (`OdsyDeallocCSetId`), the table and the record (freed with size 88 although 72 were taken) and returns the error code, without unlocking user pages; the caller does that. Then it takes the board mutex at +2472 and, while the operations outstanding (issue count at +3552 less completed count at +3544, with the 61-bit wrap) plus 2 do not fit within 128 less the pieces to come, drops the mutex and calls `odsyDMAWait` in mode 0. It stores the issue count in the write-back slot that the pointer at +760 names, in the record's +64 and in the result, advances the issue count modulo 2^61, enters the record in the 128-entry ring at +2520 (index at +2508, advanced modulo 128) and writes 0x800 to register 0x101c. The tag is the ring index repeated in both bytes of a halfword. Through the FIFO port at register base +0x110000: with flag bit 0 set and header word 28 bit 27 clear it first sends block 0x10658 with operand 0x00120000; for each piece it converts the table entry with `kvtophys` and sends two doublewords, the first with 0xe01 in its upper half (0xe03 when the selector word is nonzero; nothing here sets it) over the physical address bits 47:24, the second with bits 23:0, each packed as the low 17 bits plus the upper 7 shifted to bit 23. After the last piece `ReleaseTftchWarList` runs and, when header word 28 bit 27 is set, a single word 0x14001 follows (6.5.30m sends a longer settle group here). It always ends with block 0x10a5a, the word at board +2504 (ORed with 0x8000 when flag bit 1 is set) and the tag. With an owner it stores the issue count at owner +168, or at +176 when the selector word is nonzero. There is no completion list and no closing flush read. It returns 0.
- `odsyDMAOps` (`odsy_dma.o`, offset 0xaf4, 3240 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Splits one pixel-transfer request into `odsyDMAOp` calls in patch 4103 (arguments: board record, an unused word, owner context, request, window record). The request holds the user address at +16, the length at +24, a 32-byte header at +28 to +59 (x and y at +32, width and height at +40, row stride at +48, format word at +56), flags at +60 and the result at +72. `useracc` (flags 272) locks the buffer; a refusal logs "cannot pin user vaddr space" with the two ends and returns 12. Flags bits 3 and 4 select the path. With both clear it makes one `odsyDMAOp` for the whole buffer (flags 3, no pieces to follow) and returns its result with no other word sent. With bit 4 set and the owner's window query (owner +144, then +120, then +96, count at +44) giving zero clip rectangles, a request that lies wholly inside the drawable (x and y non-negative, x plus width and y plus height within the sizes at +16 and +20) has bit 27 of the format word cleared and takes the same single-operation path. Otherwise block 0x10658 with operand 0x00120000 is sent; with bit 3 clear (clipped request) that is followed by the prologue `0xcf80a92f` with ten operands (words 0 to 6, word 4 again, then 8 and 9 of the context's float mirror at hardware state +6988), `0x14400` with operand 10, the vertex word `0x8080c800` and two zeros, one `odsyDMAOp` (flags 2, one piece) and the word 0x14001; its result is returned. With bit 3 set the routine splits the transfer into column strips: the destination x is the header x plus the window origin (the window record's words at +104 and +108 apply when the context has a window and header word at +28 has bit 29 set), clipped against the window's left and width (+20, +32) and its top and height (+24, +36) with the y range taken from two float words of the mirror converted to integers by software. Strips end on a multiple of 64 destination pixels, or 128 when the board record's word at +280 is 1 (the chunk is the distance to the next multiple, or what remains). For each strip it writes the strip's x, width and height into a local copy of the header, scales the buffer offset by the pixel size (the small-data table indexed by format word bits 18:16) and rebuilds the prologue with four operands that are floats made by software from integers (a leading-bit count gives exponent 127 plus the count, the mantissa is the remaining bits shifted to bit 22), then the `0x14400` group and `odsyDMAOp` with the strip's buffer address and the pieces to come as a count. A failing `odsyDMAOp` logs "failed intermediate dma operation #%d", sends 0x10444, a zero word, block 0x10a5a with the word at board +22272 ORed with 0x8000 and the value 0xd0a, runs `odsyDMAWait` in mode 1 on the last good operation number and unlocks with `unuseracc`. Each successful strip is followed by 0x14001. When the origin is negative the first strip is preceded, and the whole transfer is followed, by a bracket (settle word 0x10443 with 250, two 0x10046, then block 0x10841 with the context's words at +40 and +44; the opening one sends the second word as zero and only when the hardware-state flag at +7352 is set, which it then sets). A transfer that leaves nothing to draw unlocks and returns 0; the normal end returns the result of the last operation. The words the board takes from the computed operands are unknown.
- `odsyRestoreVB` (`odsy_ctxsw.o`, offset 0x247c, 4136 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Replays the vertex attribute slots from a context's saved record through the FIFO port in patch 4103 (arguments: board record, context, a two-word vertex descriptor of 2-bit slot selectors, an unused word and a count). The saved record is the pointer at context +112, and the port is base +0x110000 (base from board +736). Each slot is a four-entry array of command words at record offset c, the selector picking the entry; the routine sends that command word, then as many operands as its bits 13:10 give, taken from record offset d plus 16 times the selector. The slots as read are: 272 index (operands at 832), 288 color (896), 304 normal (960), 320 tangent (1024), 336 and 352 the two texture-coordinate slots (1088, 1152), 368 edgeflag (1216), 384 front ambient (1280), 400 front diffuse (1344), 416 front specular (1408), 432 front emission (1472), 448 front shininess (1536), 480 back ambient (1664), 496 back diffuse (1728), 512 back specular (1792), 528 back emission (1856) and 544 back shininess (1920). The selector fields are bits 17:16, 15:14, 13:12, 11:10, 5:4, 3:2 and 1:0 of descriptor word 0 for the front ambient, front diffuse, front specular, front emission, back ambient, back diffuse and back specular slots, bits 31:30 of descriptor word 1 for back emission, bits 27:26, 25:24, 23:22 and 21:20 of word 0 for normal, tangent and the two texture slots, bits 9:8 of word 0 for front shininess, bits 29:28 of word 1 for back shininess, and in word 0 bits 31:30 for index, 29:28 for color and 19:18 for edgeflag. The full replay runs when the context's slot word (+0) is nonzero and either differs from the board's current slot at +732 or the count argument is positive; it sends the slots in the order front ambient, diffuse, specular, emission, back ambient, diffuse, specular, emission, normal, tangent, the two texture slots, then the four-operand block `0x908091ea` carrying operand 0 of the selected front shininess entry and its complement against 0x80000000 and the same for back shininess, then front and back shininess, and then the tail. Any other call replays only the tail: index, color, edgeflag. A selected command word whose operand count is zero is sent only when, ignoring bits 22:16, it equals `0x3000c02e` or `0x2f00c02e`; any other such word is skipped together with its operands and the routine logs "illegal attr restore cmd: %s = 0x%08x" at severity 7 with the slot's short name (famb, fdiff, fspec, femis, bamb, bdiff, bspec, bemis, normal, tangent, index, color, edgeflag). It returns nothing.
- `odsyRestartContext` (`odsy_ctxsw.o`, offset 0x3df8, 1984 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Restarts an interrupted primitive after the other replays in patch 4103 (arguments: board record, context; hardware state at context +96, saved record at +112, FIFO port at base +0x110000). The saved primitive word is at record +128: bits 3:0 are the primitive type (0 to 10; anything higher is treated as 15), bits 5:4 and 7:6 are counts, bits 23:21, 15:14, 13:12 and 11 further fields. The routine first sends register 0x34 with index 0 (`0x34008000`); the long settle sequence of the 6.5.30m routine is absent. Type 10 (rectangle) then takes a prelude: when the rectangle mode word at state +6964 (low 3 bits) is nonzero and bits 7:6 of the primitive word are nonzero it sets a rectangle flag and zeroes the count from bits 5:4; when the mode is nonzero and the record's pixel count at +172 is nonzero it calls `odsyRestorePIOPixel` (two result words kept on the stack). It then calls `odsySetProgram` with the number at state +11056 and `odsyRestoreVB` (record +132 as descriptor, count 0), sends the ten-operand block `0xcf80a92f` from state +6988 to +7024 when the mode is nonzero, sends registers 0x33, 0x29, 0x2a and 0x2c from the words at state +9896, +9856, +9860 and +9868 (low 10 bits in place, the rest shifted to bit 23), then block 0x10658 with operand 0x00120000. The common part clears bits 7:4 of the primitive word, subtracts the count in bits 5:4 from the field in bits 23:21 (modulo 8; set to 7 if it was above 6), from bits 13:12 (modulo 3) and from bits 15:14 (modulo 4), copies the new bit 14 to bit 11 and writes the word back. A flag is 1 unless the type is 2, 6 or 9 or the field in bits 23:21 is zero. For a valid type it sends block 0x10400 (type), block 0x10444 (zero) only when the rectangle flag is set, then block 0x10850 with two words. The first is the context's slot word shifted to bit 12, the type, the flag at bit 4, whether bits 23:21 exceed 1 and 2 at bits 5 and 6, the new bit 11 at bit 7, bits 13:12 at bits 9:8, bits 15:14 at bits 11:10 and the count at bits 20:19 (the last five only outside the rectangle case, where the slot word is also ORed with the type only); the second is built from the two pixel words in the rectangle case and is zero otherwise. A valid type then sends the words 1856, 480, 1857 and the primitive word. A nonzero count calls the walker for the type through the function table in small data (indexed by type, arguments board, context, count and a stack word); with a zero count the rectangle case sends only the vertex word `0x8080c800` and two zeros. Types other than 10 then call `odsyRestoreVB` with the count as its fifth argument, and, when the program count at state +10972 is nonzero, `odsySetProgram` and the same four registers followed by `0x278083ff` and `0x280080ff`; an invalid type ends this part with block 0x10658 and operand 0x00120000. Last it replays the saved partial command words: the count at record +188 less 1 (0 if zero) is the number of further words, the first words are at +176 and +180 and the rest start at +4. With the word at +180 zero it re-selects register 0x34's index from state +9900 and sends the remaining words in pairs as doublewords with a final single word. With it nonzero it first sends a header doubleword (the fixed value 0x0000007100005c70 when the further count is odd, otherwise 0x00005c7000000000 ORed with +180), the word at +176 in the upper half of a doubleword, and two zero doublewords, then the same re-selection and the rest. It returns nothing. The meanings of the primitive word's fields are inferred from this arithmetic alone.
- `odsyRestoreRaster` (`odsy_ctxsw.o`, offset 0xa88, 4996 bytes): **established.**
  Build: `vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Replays a context's raster state through the FIFO port at base +0x110000 in patch 4103 (arguments: board record, context; hardware state at context +96, all offsets below are into it). It is a straight-line sequence of blocks with no loop-carried state apart from the table counters; a block is a header word (0x10000, the operand count in bits 13:10 and the block id) followed by its operands, and a count field of 15 stands for sixteen operands. The full replay (flag) runs when the context's slot word (+0) is nonzero and differs from the board's slot at +732. Every call starts with a 15-word settle sequence (0x10443 with 250, two 0x10046, 0x10019, 0x10443 with 150, four 0x10046, 0x10443 with 250, two 0x10046), then block 0x017 (four words from +6948) and a long settle group (0x10443 with 150, four 0x10046, 0x10443 with 250, two 0x10046), block 0x023 (four from +232) and a short group (0x10443 with 250, two 0x10046), 0x052 (+228), 0x01d (+168, +172), three 0x10046, 0x053 (five from +6964) and a short group, 0x004 (+132), 0x005 (+136), 0x022 (+200), 0x015 (+140), 0x056 (+7344), 0x048 (+204 to +212), 0x03f (+128), 0x04e (sixteen from +0), 0x04f (sixteen from +64), 0x04a (+220, +224), 0x01b (five from +312), 0x016 (seven from +332), 0x051 (+6944), 0x04c (+7340) and 0x021 (+188 to +196). The word at +4464 then selects a group: 1 or any value other than 2 and 3 sends blocks 0x030 to 0x033, eight words each from +4468; 2 sends block 0x03b with the same eight words; 3 sends block 0x03d with two words. The word at +4204 selects the next: 1 or any other value sends blocks 0x028 to 0x02b, sixteen words each from +4208; 2 sends block 0x038 with sixteen words; 3 sends block 0x03a with four. Only the full replay continues: blocks 0x01e (+176), 0x01f (+180), 0x020 (+184), 0x058 (+216), 0x01a (six from +144), 0x047 (six from +7060), 0x013 (four from +7084) and 0x03e (three from +4596); then five 256-word tables, each as sixteen blocks of sixteen words with the block number rising by one: ids 0x220 to 0x22f from +1132, 0x230 to 0x23f from +2156, 0x240 to 0x24f from +3180, and the pair 0x200 to 0x20f from +4612 and 0x210 to 0x21f from +5636 sent alternately at a 64-byte step; then the 64 three-word level descriptors, ids 0x280 to 0x2bf from +360 at a 12-byte step, block 0x006 (+1128) between two short groups, a bare 0x018 between short groups, 0x01c (three from +6660), 0x057 (+7348), 0x04d (sixteen from +248), a short group, 0x042 (+7332, +7336) and a long group, and the eight blocks 0x250 to 0x257, six words each from +7132 at a 24-byte step, highest first, each preceded by block 0x007 carrying its index. For every call the tail then depends on the slot: nonzero calls `odsyPushBufferSelect` with the context and the register base; zero sends block 0x04b (eight words from +11072), 0x041 (+11104, +11108), 0x024 (+11112) and 0x040 (+11116, +11120) with long groups between them (a 0x10019 inside the first and a second between the last two). Every path ends with a long group and block 0x10658 whose operand is 0x00110000 (the register-window offset constant the routine keeps in a register for the port address, where the other 4103 restore routines send 0x00120000). Without the full replay everything between the two selector groups and the slot-dependent tail (blocks 0x01e to 0x250 above) is skipped. It returns nothing.
- `gf_OdsyInfo` (`odsy.o`, offset 0x0, 92 bytes): **established.**
  Build: `vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy.o)`.
  Board information request in patch 4104 (arguments: board record, user buffer, requested size, result pointer). It adds 200 to the board record, caps the size at 500 with a `movz` on an unsigned compare (a longer request is clamped, not refused) and calls `copyout` of that many bytes; a nonzero return gives 14. On success it stores the size as asked, not the clamped one, through the fourth argument and returns 0. The disassembly with relocations is identical to the patch 4103 member, which was read in full.
- `OdsyInitCSet` (`odsy_adt.o`, offset 0x0, 40 bytes): **established.**
  Build: `vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Colour-set container reset in patch 4104. It stores the second argument (the chunk-size shift) at +32, zeroes the words at +16 and +20, calls `OdsyInitCSetCursor`, and zeroes the chunk-list head at +0 in that call's delay slot. It touches no board register. The 40-byte body is word for word the patch 4103 one, and keeps the older layout with the shift at +32 where the 6.5.30m build has it at +40.
- `odsy_regmatch` (`odsy_attach.o`, offset 0x0, 96 bytes): **established.**
  Build: `vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_attach.o)`.
  Recycle callback for the attach path in patch 4104 (arguments: client, saved value, owner record). When the client is non-null it calls `gf_OdsyUnMapGfx` on it, clears the doubleword at +72 and, if the handle at +40 is non-null, calls `ddv_destroy_handle` and clears +40. Every path ends by storing the second argument at +40 of the third. It has no `splhi` bracket, and the handle sits at +40, not at +48 as in the 6.5.30m routine. The patch 4103 member holds the same 96 bytes.
- `gfP_OdsyBRDMGRsetColors` (`odsy_brdmgr.o`, offset 0x0, 1772 bytes): **established.**
  Build: `vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Private colour-map load in patch 4104. It takes 16 bytes from the user with `copyin`, a halfword count at +0 and an array pointer at +8, then `kmem_alloc` and a second `copyin` of count entries of 8 bytes (index word and colour word). Under the display semaphore (`psema`, taken unless the start-up word at board +22304 is set) it pushes runs of consecutive indices through the FIFO window at the register base plus 0x400000, with `odsy_poll_dfifo_level` waits between runs, and header words of 0x70000000 OR the index shifted left 14 OR the length. The array is freed on the failure paths that wait, and the release replays a pending cursor doubleword under `mutex_spinlock` before `vsema`. Its 1772 bytes are identical to the patch 4103 member, read in full.
- `gf_OdsyValidateClip` (`odsy_clip.o`, offset 0x0, 1244 bytes): **established.**
  Build: `vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)`.
  Clip shadow rebuild in patch 4104 (arguments: manager object, shadow record, client, drawable state). It copies the 13-bit window origin words of the drawable state into the shadow at +40 and +44, mirrors them into the saved record at +11104 and +11108, derives four clip rectangles from the drawable's origin and size clamped to the board size words, calls `odsyClipMask` then `odsyClipPush`, and when the caller was not attached to flow control (tested with `gfx_flow_am_i_attached`) attaches with `gfx_flow_attach_me` and the credit number from `gfx_flow_credit_tnum_get` for the push and detaches again under `splhi`. It returns 0. The 1244-byte body matches the patch 4103 member.
- `odsy_ctxsw_timeout` (`odsy_ctxsw.o`, offset 0x0, 92 bytes): **established.**
  Build: `vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Context-switch watchdog in patch 4104. It logs one severity 1 message with `cmn_err`, using the string at offset 176 of the member's read-only small data, and then tests a word in small data: nonzero calls `odsy_teardown` on its argument, zero re-arms itself with `timeout` for 1500 ticks. It returns nothing. The 92-byte body is the patch 4103 one unchanged.
- `odsy_i2cFixupAfterErr` (`odsy_ddc.o`, offset 0x0, 76 bytes): **established.**
  Build: `vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Two-wire error recovery in patch 4104 (argument: port record). It waits with `odsy_usdelay` on the board pointer at port +16 for the larger of two small-data constants, chosen with `slt` and `movz`, calls `odsy_i2cReset` on the port, and waits again for a third constant. It returns nothing. This 76-byte body is the same as the patch 4103 member.
- `odsyInitDDRNs` (`odsy_ddrn.o`, offset 0x0, 84 bytes): **established.**
  Build: `vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddrn.o)`.
  Client-context table reset in patch 4104. It clears the static table of 0xee20 (60960) bytes with `bzero`, then walks 127 slots of 480 bytes (the stride is built as 15 times 32) and stores -1 in the id word at +0 of each. Nothing is allocated and no board register is touched. The 84 bytes are the patch 4103 code unchanged.
- `gfP_OdsyDIAGallocScanbuf` (`odsy_diag.o`, offset 0x0, 532 bytes): **established.**
  Build: `vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`.
  Diagnostics scan-buffer request in patch 4104. It copies 24 bytes in with `copyin`, takes the lock at board +22008 with `mutex_lock`, returns 16 when an owner is already recorded at +22056, and otherwise allocates the requested size with `kmem_alloc` and maps it with `odsyMapPages`. It records the buffer, mapping, size and client as owner in the board record at +22024 to +22056, returns the user address from `ddv_getaddr` and the physical address from `kvtophys` in a 24-byte reply sent with `copyout`, prints a debug line, writes back the cache range with `dki_dcache_wb` and returns 0; failures return 14, 12 or 11. The 532-byte body is identical to the patch 4103 member.
- `odsy_NewDmaRegion` (`odsy_dma.o`, offset 0x0, 400 bytes): **established.**
  Build: `vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  DMA region creation in patch 4104 (arguments: owner, owner argument, user address, length, flag, 32-byte descriptor, result cell). It takes an 88-byte record with `kmem_alloc`, stores the flag at +48, the owner pair at +16 and +24 and copies the descriptor to +56 with `bcopy`. A zero flag stores 0 in the result cell and returns the record. With the flag set it pins the user range with `useracc`, sets +52 to 1 and builds the translation table with `odsy_DmaRegion_BuildXlatTbl`; a pin or build failure logs with `cmn_err`, calls `odsy_DeleteDmaRegion` and returns null. The 400-byte body is the patch 4103 one.
- `odsyInitDrawables` (`odsy_drawable.o`, offset 0x0, 92 bytes): **established.**
  Build: `vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  Drawable table creation in patch 4104. It calls `odsyHashAlloc` with 13 buckets and stores the result at board +10520. Whether or not that worked, it then calls `mrlock_init` on the lock at +10528 with 1 in a1, the name string held in small data (offset 40) in a2 and -1 in a3; a null table first logs one severity 4 message with `cmn_err`. The 92 bytes match the patch 4103 member.
- `odsy_poll_dfifo_level` (`odsy_flow.o`, offset 0x0, 156 bytes): **established.**
  Build: `vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)`.
  Display-FIFO level wait in patch 4104 (arguments: board record, level). It loads the word at board +4204, masks it with 0x7f and tests whether the level argument is below that fill; while it is, it waits 5 microseconds with `us_delay` and polls again, up to 10000 times (the counter test is `slti` against 10000). A reached level returns 0; an exhausted poll logs a severity 4 message with `cmn_err` and returns 1. The 156-byte body equals the patch 4103 one.
- `odsy_i2c_start` (`odsy_i2c.o`, offset 0x0, 3392 bytes): **established.**
  Build: `vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Start condition and slave address on a two-wire port in patch 4104. Each push is a display-FIFO doubleword built from the port's control register address and a shadow word, preceded by a `odsy_poll_dfifo_level` wait (a failure returns 3) and, unless the start-up word at board +22304 is set, the display semaphore with `psema`. It raises force idle, waits 10 microseconds with `odsy_usdelay`, lowers it, waits again, sets the start, transfer and send bits with the address byte in bits 7:0 and clears stop, pushes, then waits with `odsy_i2c_xfer_done_loop` (a nonzero result is returned) and otherwise returns the result of `odsy_i2c_recv_ack` when the acknowledge argument is zero, else 0. Every release replays a pending cursor doubleword under `mutex_spinlock`. The 3392-byte body, 848 words, is the patch 4103 member's, read in full.
- `odsy_usdelay` (`odsy_init.o`, offset 0x0, 148 bytes): **established.**
  Build: `vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Microsecond delay in patch 4104 (arguments: board record, count). A nonzero start-up word at board +22304, or a true result from `in_panic_mode`, makes it call `us_delay` with the count. Otherwise it divides the count by 1000000 with `div` (the constant is built as 0xf shifted left 16 OR 0x4240), multiplies the remainder by 1000 for nanoseconds and calls `nano_delay` with a seconds and nanoseconds pair stored at the stack pointer. It returns nothing. The 148 bytes are the patch 4103 ones.
- `odsyXtErrorInterrupt` (`odsy_intr.o`, offset 0x0, 284 bytes): **established.**
  Build: `vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)`.
  Crossbar error interrupt in patch 4104 (argument: board record). It counts the event in the per-cpu word at +16, then through the register base held at board +736 reads the status word at +12 and the header word at +68 and tests bits 8, 7 and 6 in that order, each set bit logging its own `cmn_err` message (bit 7 with the word at +28 and the header) and marking a failure; none set logs a message of its own without a failure. A failure then logs a second message with the saved header word, and the routine always clears +68. It neither prints diagnostic registers nor tears the board down. The 284-byte body is the patch 4103 one.
- `gf_OdsyMapGfx` (`odsy_map.o`, offset 0x0, 652 bytes): **established.**
  Build: `vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Window mapping into a client's address space in patch 4104 (arguments: manager object, client, user address). The address is cut to a 16 KB boundary and zero fails. After `gfx_flow_clean_up_other_gfxp` and `ddv_getaddr` it makes eight `v_mapkvsegment` calls at 16 KB spacing: the first two (board offsets +0x100000 and +0x120000) always, the remaining six only when bit 5 of the client's flag word at +48 is set. Under `splhi` it sets bit 0 of that word, attaches to flow control with `gfx_flow_attach_me` and the credit number from `gfx_flow_credit_tnum_get` if the caller was not attached, and records the cpu bit at +56. It returns 0 when the client's own address was mapped and -1 when no call mapped it. The 652 bytes are identical to the patch 4103 member.
- `odsyInitRetrace` (`odsy_retrace.o`, offset 0x0, 140 bytes): **established.**
  Build: `vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
  Retrace state set-up in patch 4104 (argument: board record). It clears 1368 bytes at +4664 with `bzero`, zeroes the words at +4724, +4732, +4688 and +6024, initialises a mutex at +4664 with `init_mutex` and a synchronisation variable at +4680 with `init_sv`, clears +4696 and +4704, then stores the address of +4696 at +184 and 1 at +176. It returns nothing. The 140-byte body is the patch 4103 one, read in full.
- `gf_OdsySuspend` (`odsy_sched.o`, offset 0x0, 200 bytes): **established.**
  Build: `vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_sched.o)`.
  Client removal from the board in patch 4104 (arguments: board, client). It returns 0 at once unless the board is non-null, the client equals the owner at +72 and bits 1:0 of the client's word at +48 are nonzero. With the flow handle at +720 set it calls `splhi`, tests `gfx_flow_am_i_attached`, stores 1 at +10408 and to register 0x107c, reads back 0x106c, calls `gfx_flow_detach_me` and `splx`, and returns 0. The 200-byte body is the patch 4103 one.
- `odsyMMinit` (`odsy_pmm.o`, offset 0x0, 448 bytes): **established.**
  Build: `vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Memory-manager record set-up in patch 4104 (arguments: board base, record). It calls `odsyPipeNrFromBase`, stores the board pointer from the global table (22312 bytes per board) at +0 of the record, gives the group at +1248 the identifier -2, clears the 16 object slots at +1264 and points slot 0 and slot 1 at the embedded objects at +432 and +568, leaves slot 2 empty, points slots 3 to 6 at four objects at +704 plus 136 each, then fills in each filled slot's index, group pointer, flag word (bits 0 and 1 set) and the record's own size constants 4096, 16, 256 and 8192. It returns nothing. The 448 bytes are identical to the patch 4103 member.
- `odsy_tport_lock_init` (`odsy_tport.o`, offset 0x0, 48 bytes): **established.**
  Build: `vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`.
  Transport-port lock set-up in patch 4104. It stores 1 to the global `odsy_tport_mute`, calls `wbflush` with the store of 0 to `odsy_tport_inuse` in its delay slot, loads the name string from small data and calls `spinlock_init` on `odsy_tport_lock`. It takes no arguments and returns nothing. The 48 bytes match the patch 4103 member.
- `odsyDownloadUcode` (`odsy_ucode.o`, offset 0x0, 280 bytes): **established.**
  Build: `vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ucode.o)`.
  Microcode line sender in patch 4104 (arguments: board, first hardware line, first software line, count). A hardware line of 2047 or more, a hardware line plus count of 2048 or more, a software first line not below the line count at board +10292, or a software range ending past it logs one severity 4 `cmn_err` message and returns -1. Otherwise it writes the setup word 0x27008000 to the FIFO window at the register base plus 0x110000, then for each line writes the six halfwords of its 12-byte entry from the buffer at +10296, sixth first, each as 0x40008000 with that halfword's low 10 bits in place and its remaining bits shifted to bit 23, and returns 0. The first word's line number is split the same way. The 280 bytes are the patch 4103 member's.
- `gf_OdsyInfo` (`odsy.o`, offset 0x0, 96 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy.o)`.
  Board information request in the IP35 kernel build (arguments: board record, user buffer, size, result pointer). It passes the record plus 200 to `copyout` with the size capped at 588 bytes, a longer request being clamped rather than refused, and returns 14 when the copy faults. On success it stores the size the caller asked for through the fourth argument and returns 0. The member's whole disassembly with relocations is the same as the IP30 media build's.
- `odsy_regmatch` (`odsy_attach.o`, offset 0x0, 104 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_attach.o)`.
  Recycle callback of the attach path in the IP35 build (arguments: board record, replacement value, owner record). With a non-null board record it calls `splhi`, `gf_OdsyUnMapGfx` and `splx`, loads the handle at +48, clears the doubleword at +72, and when the handle is non-null calls `ddv_destroy_handle` and clears +48. All paths end by storing the second argument at +48 of the third and returning the third. The 104-byte routine is identical to the IP30 media build's.
- `odsy_ctxsw_timeout` (`odsy_ctxsw.o`, offset 0x0, 92 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_ctxsw.o)`.
  Context-switch watchdog in the IP35 build (argument: board record). It logs one severity 1 message with `cmn_err`, passing the halfword at board +790 as the board number, and then tests the global `odsy_actually_timeout`: nonzero calls `odsy_teardown` on the board, zero re-arms the same handler with `timeout` for 1500 ticks. It returns nothing. The 92 bytes are the same as the IP30 media routine.
- `odsyInitDDRNs` (`odsy_ddrn.o`, offset 0x0, 80 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_ddrn.o)`.
  Counter block set-up in the IP35 build (argument: board record). It loads the pointer at board +28456; when that is null it calls `kmem_alloc` for 1016 bytes with flags 0 and stores the result at +28456, and a failed allocation ends the routine without clearing. With a block in hand, old or new, it calls `bzero` on the 1016 bytes. This is the version that allocates per board, which the patch builds replace by a static table. The 80 bytes match the IP30 media build.
- `gfP_OdsyDIAGallocScanbuf` (`odsy_diag.o`, offset 0x0, 536 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_diag.o)`.
  Diagnostics scan-buffer request in the IP35 build. It copies 24 bytes in from the user, takes the board mutex with `mutex_lock` at level 25, returns 16 when a scan buffer already has an owner, and otherwise allocates the buffer with `kmem_alloc` and maps it with `odsyMapPages`, recording size, owner and mapping in the board record. The reply holds the size, the mapped address from `ddv_getaddr` and the physical address from `kvtophys`, sent with `copyout`; it then prints the address, zeroes the buffer, stores 23 at offset 92 of the mapping and, for buffers above 16 KB, 16408 at offset 16480, and writes the cache back with `dki_dcache_wb`. Failures return 14, 12 or 11. The 536-byte member is identical, relocations included, to the IP30 media build's routine, whose body was read in full.
- `odsyInitDrawables` (`odsy_drawable.o`, offset 0x0, 104 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_drawable.o)`.
  Drawable table set-up in the IP35 build. It calls `odsyHashAlloc` with 13 buckets and stores the result at board +0x8658, built as 0x8658 added to the record pointer. A null table logs one severity 4 message with `cmn_err` before the next step, which runs in either case: `mrlock_init` on the lock at +0x8660 with 0 in a1, the name string from small data in a2 and -1 in a3. It returns nothing. The 104 bytes are the IP30 media build's.
- `mm_get_cond_list_cursor` (`odsy_pmm.o`, offset 0x0, 68 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_pmm.o)`.
  Saved list-cursor lookup in the IP35 build (arguments: memory record, class, index). It loads the class shift from the global integer array indexed by the class, shifts the index right by it with `srav`, and compares the result with 65 using `slti`. A result of 64 or less returns the doubleword at the record plus 1680 plus 8 times (65 times the shift plus the result); anything larger returns the address record +1640. The 68 bytes are the IP30 media routine's.
- `odsyInitRetrace` (`odsy_retrace.o`, offset 0x0, 140 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_retrace.o)`.
  Retrace state set-up in the IP35 build (argument: board record). It calls `bzero` on 1368 bytes at board +28504, zeroes the words at +28564, +28572, +28528 and +28544 and the doublewords at +29864 and +28536, calls `init_mutex` on +28504 and `init_sv` on +28520 with names from small data, stores 1 at +176 and the address of +28536 at +184. It returns nothing. The 140 bytes match the IP30 media routine.
- `gfP_OdsyLoadCompositorTiming` (`odsy_compositor.o`, offset 0x0, 8 bytes): **established.**
  Build: `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_compositor.o)`.
  Private request 36, the compositor timing load of the 6.5.30m IP30 kernel. The body is two instructions: `jr ra` at 0x0 and `or v0,zero,zero` in its delay slot at 0x4, so it returns 0 on every call. It reads none of its arguments, touches no register and makes no call, which means the request is accepted and does nothing in this build. It has no stack frame.
- `gfP_OdsyLoadCompositorTiming` (`odsy_compositor.o`, offset 0x0, 8 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_compositor.o)`.
  Private request 36 of the IP35 kernel, the compositor timing load. Its two instructions are `jr ra` at 0x0 and `or v0,zero,zero` in the delay slot at 0x4, the same bytes as the 6.5.30m IP30 routine: it returns 0 on every call, reads no argument, touches no register, calls nothing and has no frame, so the request is accepted and does nothing.
- `odsy_tport_lock_init` (`odsy_tport.o`, offset 0x0, 48 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_tport.o)`.
  Sets up the transport-port lock state on IP35. It stores 1 in the global `odsy_tport_mute` at 0x4, calls `wbflush` at 0x10 with `odsy_tport_inuse` zeroed in the delay slot at 0x14, and calls `spinlock_init` at 0x1c on the address of the lock variable (gp plus 0, formed in the delay slot) with the name pointer from small read-only data, which points at the member's string "odsy_tport_lock". The return value is that of `spinlock_init`.
- `odsy_earlyinit` (`odysseystubs.o`, offset 0x0, 8 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/odysseystubs.a(odysseystubs.o)`.
  The early graphics probe entry point as this archive defines it. The body is `jr ra` at 0x0 and `or v0,zero,zero` in the delay slot at 0x4: it returns 0 on every call, reads no argument, touches no memory and calls nothing, so it has no frame. The IP30 `gfx_earlyinit` in `tport.o` calls a routine of this name and ignores the result, so this body leaves the textport probe with nothing to start from it.

- `odsy_probeDenaliChannel` (`odsy_denali.o`, offset 0x0, 824 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_denali.o)`.
  Looks for the Denali device on one channel of a board's two-wire bus on IP35 (arguments: board, channel, result pointer, port select; frame of 1120 bytes). Select 0 uses the port record at board +0xb3e0; a nonzero select needs the halfword at board +298 to equal 3, otherwise the result word is set to 0 and the routine returns 0, and then uses the port record at +0xb408. The port mutex is taken with `mutex_lock` at level 25 on the address held at port +16 plus 0x8520 when the word at port +28 is nonzero and plus 0x8510 when it is zero. Only a nonzero select then sets device byte 31 at port +32, reads register 5 with `odsy_i2cDDCRegRead` at 0x7c, and writes register 0 as 32 with bit 5 set in register 5 for a nonzero channel, or register 0 as 16 with bit 5 cleared for channel 0, through `odsy_i2cPLLRegWrite`. Both selects then set device byte 239 at +32 and call `odsy_i2c_read_denali` into a word array at 8(sp) with the length out at 4(sp): a failed read goes to the exit; after each successful read it stops the bus and waits 100 microseconds, ends the loop when the length is zero and reads again otherwise, and after 101 reads it logs a severity 4 message with the channel and goes to the exit. It then sets device byte 238, starts with `odsy_i2c_start` (nonzero goes to the exit), sends the bytes 2, 0 and 64 with `odsy_i2c_write_denali`, stops, waits 300 microseconds and reads with device byte 239 up to 10 times, 10 microseconds apart, until the length out is 10. A match stores 4 in the result for select 0, or the channel shifted left once with bit 0 set otherwise; ten mismatches store nothing. The exit stops the bus, writes register 0 as 48 with device byte 31 when select was nonzero, unlocks the mutex and returns 0.
- `gfx_exit` (`gfxstubs.o`, offset 0x0, 8 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfxstubs.a(gfxstubs.o)`.
  The stub for the per-process graphics exit hook. Its delay slot is `move v0,zero`, so it reports 0 to every caller and does nothing else. The routine of the same name in `gfx.o` runs 428 bytes and takes the process's graphics state down. The return is at 0x0.
- `gfx_disp` (`gfxstubs.o`, offset 0x8, 8 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfxstubs.a(gfxstubs.o)`.
  The stub for the graphics dispatch hook. The delay slot of its `jr ra` is `li v0,1`, so it answers 1 whatever it is asked, with no memory access. The routine of the same name in `gfx.o` is 308 bytes long. The return is at 0x8.
- `gfx_earlyinit` (`gfxstubs.o`, offset 0x10, 8 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfxstubs.a(gfxstubs.o)`.
  The stub for the early graphics probe, with a `nop` in the delay slot: it leaves v0 as the caller had it and probes nothing. The real routine of the name sits in the console driver `tport.o` and is 36 bytes. The return is at 0x10.
- `tp_init` (`gfxstubs.o`, offset 0x18, 8 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfxstubs.a(gfxstubs.o)`.
  The stub for console terminal start-up. Its delay slot is `move v0,zero`, which answers 0 and sets up no terminal. The routine of this name in `tport.o` is 456 bytes. The return is at 0x18.
- `tp_dogui` (`gfxstubs.o`, offset 0x20, 8 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfxstubs.a(gfxstubs.o)`.
  The stub for the console's graphical-login switch. It clears v0 in the delay slot of its return and leaves everything else untouched. `tport.o` carries a 92-byte routine of the same name. The return is at 0x20.
- `tpcons_write` (`gfxstubs.o`, offset 0x28, 8 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfxstubs.a(gfxstubs.o)`.
  The stub for writing console text to the terminal driver: a return with a `nop` delay slot, so the characters are dropped and v0 is untouched. In `tport.o` the routine of this name is 64 bytes long. The return is at 0x28.
- `gfx_fault` (`gfxstubs.o`, offset 0x30, 8 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfxstubs.a(gfxstubs.o)`.
  The stub for the graphics page-fault hook. It loads 1 into v0 in the delay slot of its return and reads none of the fault's arguments. The routine in `gfx.o` is 216 bytes. The return is at 0x30.
- `rrmSuspend` (`gfxstubs.o`, offset 0x38, 8 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfxstubs.a(gfxstubs.o)`.
  The stub for suspending the resource manager around a context switch; its return has a `nop` delay slot, so it does no work and sets no result. `rrm.o` holds a routine of this name 936 bytes long. The return is at 0x38.
- `rrmResume` (`gfxstubs.o`, offset 0x40, 8 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfxstubs.a(gfxstubs.o)`.
  The stub for resuming the resource manager after a context switch, again a bare return with a `nop` in the delay slot. The routine in `rrm.o` is 1180 bytes, 244 more than the suspend routine. The return is at 0x40.
- `gfx_shcheck` (`gfxstubs.o`, offset 0x48, 8 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfxstubs.a(gfxstubs.o)`.
  The stub for the shared-graphics-resource check: one return and a `nop`, so no check is made and no value is set. The routine of the name in `gfx.o` is 596 bytes. The return is at 0x48.
- `gfx_shdup` (`gfxstubs.o`, offset 0x50, 8 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfxstubs.a(gfxstubs.o)`.
  The stub for duplicating a shared graphics resource into a new process. Return plus `nop`: nothing is copied. The routine in `gfx.o` is 124 bytes. The return is at 0x50.
- `gfx_shalloc` (`gfxstubs.o`, offset 0x58, 8 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfxstubs.a(gfxstubs.o)`.
  The stub for allocating a shared graphics resource, a return with a `nop` delay slot, so nothing is allocated and v0 is not set. The `gfx.o` routine of this name is 192 bytes. The return is at 0x58.
- `gfx_shfree` (`gfxstubs.o`, offset 0x60, 8 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfxstubs.a(gfxstubs.o)`.
  The stub for releasing a shared graphics resource, a bare return with a `nop` delay slot. The routine in `gfx.o` is 44 bytes, the shortest of the four `gfx_sh` routines there. The return is at 0x60.
- `shmiq_sproc` (`gfxstubs.o`, offset 0x68, 8 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfxstubs.a(gfxstubs.o)`.
  A hook whose name points at the shared-memory input queue, here reduced to a bare return. Both words of the body were read: `jr ra` at 0x68, then a `nop`, so it reads no argument and v0 stays as the caller left it. `gfx_shfree` before it and `initkbdtype` after it have the same two words.
- `initkbdtype` (`gfxstubs.o`, offset 0x70, 8 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfxstubs.a(gfxstubs.o)`.
  The keyboard type start-up entry as this archive defines it. It is `jr ra` at 0x70 and a `nop` at 0x74, so it neither records a type nor changes v0, and it is the last of the eight consecutive `nop` stubs that end at 0x78 (`rrmSuspend` is the first of the run, at 0x38).
- `gfx_frs_valid_pipenum` (`gfxstubs.o`, offset 0x78, 8 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfxstubs.a(gfxstubs.o)`.
  The stub for the frame-scheduler pipe-number check. The delay slot of the return is `move v0,zero`, so every pipe number is answered with 0. The routine in `gfx.o` is 12 bytes, three instructions. The return is at 0x78.
- `gfx_frs_install` (`gfxstubs.o`, offset 0x80, 8 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfxstubs.a(gfxstubs.o)`.
  The stub for installing the frame scheduler on a pipe: a return with a `nop` delay slot, so nothing is installed. The `gfx.o` routine is 88 bytes. The return is at 0x80.
- `gfx_frs_uninstall` (`gfxstubs.o`, offset 0x88, 8 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfxstubs.a(gfxstubs.o)`.
  The stub for removing the frame scheduler from a pipe, a return plus `nop`; it removes nothing and sets no result. The `gfx.o` routine is 80 bytes. The return is at 0x88.
- `gfx_exit` (`gfxstubs.o`, offset 0x0, 8 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/gfxstubs.a(gfxstubs.o)`.
  Process-exit graphics hook as the IP35 stub archive defines it. Its two words are `jr ra` at 0x0 and `move v0,zero` in the delay slot at 0x4, the same bytes as the IP30 stub, so it answers 0 and touches nothing. It is the first routine of the archive; `gfx_disp`, which answers 1, follows at 0x8.
- `gfxread` (`gfx.o`, offset 0x2b38, 8 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfx.o`.
  The read entry point of the graphics device, which refuses: `jr ra` at 0x2b38 with `addiu v0,zero,54` in its delay slot, so every read returns the constant 54 and touches none of its arguments. It has no frame and makes no call.
- `gfxwrite` (`gfx.o`, offset 0x2b40, 8 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfx.o`.
  The write entry point of the graphics device, also a refusal: the return at 0x2b40 carries `addiu v0,zero,54` in its delay slot, giving the same constant 54 as the read entry point beside it. No argument is read and nothing is stored.
- `gfxmap` (`gfx.o`, offset 0x331c, 8 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfx.o`.
  The memory-map entry point of the graphics device. It answers every request with the constant 54, formed by the `li v0,54` at 0x3320 in the delay slot of the return at 0x331c, without examining the mapping request. The device does not map through this entry.
- `gfxunmap` (`gfx.o`, offset 0x3324, 8 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfx.o`.
  The unmap entry point of the graphics device, paired with `gfxmap` at 0x331c. Its return at 0x3324 has `li v0,54` in the delay slot, so it reports 54 whatever is passed in and leaves every table alone.
- `GfxMessage` (`gfx.o`, offset 0x1bd8, 28 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfx.o`.
  Sends a message to the graphics manager in the ordinary, non-interrupt way. It opens a 16-byte frame, calls `GfxSendMessage` at 0x1be0 and puts 0 in the second argument in the delay slot, leaving the other arguments as they came in. The value of `GfxSendMessage` is its own return value.
- `GfxIntrMessage` (`gfx.o`, offset 0x1bf4, 28 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfx.o`.
  Interrupt-context sibling of `GfxMessage`: it calls `GfxSendMessage` at 0x1bfc with the second argument set to 1 in the delay slot (`GfxMessage` passes 0 there) and returns that routine's result. Everything else about its 16-byte frame matches the other wrapper.
- `GfxListWriterUnlock` (`gfx.o`, offset 0x2a88, 28 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfx.o`.
  Releases the spinlock inside a graphics list record. It calls `mutex_spinunlock` at 0x2a90 with the lock at the record's +16 (address formed in the delay slot) and the second argument, the saved interrupt level, passed through untouched. It returns what `mutex_spinunlock` returns. It changes no counter, unlike the reader unlock.
- `gfxtable_writerunlock` (`gfx.o`, offset 0x108, 28 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfx.o`.
  Drops the exclusive hold on the graphics group table. It calls `mutex_spinunlock` at 0x110 on the lock at +4 of the table's lock record, with the caller's second argument (the level saved when the lock was taken) unchanged, and returns that call's result. It does not touch the reader count at +0.
- `gfx_frs_valid_pipenum` (`gfx.o`, offset 0x3418, 12 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfx.o`.
  Tells whether a pipe number is in range for the frame scheduler. It loads the word `GfxNumberOfBoards` gp-relative at 0x3418 and returns the signed compare `slt` of the first argument against it from the delay slot at 0x3420, so the answer is 1 for any number below the board count, negative numbers included, and 0 otherwise.
- `gfx_shfree` (`gfx.o`, offset 0x33ec, 44 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfx.o`.
  Frees the calling thread's shared graphics group. It calls `curthreadhandle` at 0x33f4 with no argument, passes that handle to `gfx_group_find` at 0x33fc and passes the group found to `gfx_group_destroy` at 0x3404, returning the destroy result. The group found is not tested for null, and the routine's own arguments are never read.
- `gfx_shalloc` (`gfx.o`, offset 0x332c, 192 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfx.o`. In the IP35 build the same code sits at 0x3378.
  Creates a shared graphics group for the calling thread and attaches the thread to it; the routine's own arguments are never read. It calls `curthreadhandle`, raises the interrupt level with `splhi` (the level is kept at 0(sp)), calls `gfx_group_create` with the handle and then `gthread_find` with the handle. When no thread record is found it goes straight to the level restore. Otherwise it calls `gthread_attach_group` with the thread record and the new group, and when the thread's list pointer at +16 is null it also goes to the restore. With a list, it takes the list's write lock with `GfxListWriterLock` and walks the chain that starts at the list's +24 and continues through each node's +24. The word at +4 of the first node alone is tested: when its bit 3 (mask 8) is clear, the group's word at +12 is set to 1 (the store is in the delay slot of the branch). Every node of the chain then gets the group pointer stored at +96. It releases the write lock with the level that `GfxListWriterLock` returned, calls `splx` with the saved level and returns what `splx` returns.
- `gfx_exit` (`gfx.o`, offset 0xe34, 428 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfx.o`; the IP35 build has the same routine at the same offset. The per-process graphics exit hook, which the stub archive replaces by a routine that returns 0. It finds the exiting thread's record with `curthreadhandle` and `gthread_find` and returns 0 at once when there is none. Otherwise it sets bit 2 (mask 4) in the record's word at +8 and then follows the record's group pointer at +24 and list pointer at +16. Every path returns 0.
  With no group, and a list: it walks the list's chain (first node at list +24, next at node +24). For each node whose pointer at +32 is not null and whose record there holds a nonzero function pointer at +56, it calls that function with the node. It takes no lock. With no group and no list it returns 0 without a call.
  With a group and no list it returns 0. With a group and a list it takes the list's read lock with `GfxListReaderLock` and returns 0 after `GfxListReaderUnlock` when the chain is empty or the first node's word at +4 has bit 3 (mask 8) set. Otherwise it takes the list's spin lock at +16 with `mutex_spinlock` and calls `threadgroup_refcnt` with the doubleword at thread +0. Unless that count is exactly 1 it unlocks, drops the read lock and returns 0. When it is 1, it walks the chain: a node is skipped when its pointer at +40 is null or the doubleword at +72 of what that points to is not the node itself. For a node that qualifies it raises the level with `splhi`, calls the function at +192 of the record at node +32 with the node when that pointer is not zero, clears the doubleword at +72 of the record at node +40, calls `vsema` on that record plus 56, and restores the level with `splx`. After the last node it unlocks the spin lock with the saved level, drops the read lock and returns 0.
- `gfxcleanup` (`gfx.o`, offset 0x13ac, 52 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfx.o`.
  Frees a graphics record when nothing refers to it. It loads the word at record +56 and returns at once if it is nonzero. When it is zero, `spinlock_destroy` runs at 0x13c8 on the record address as it was passed (the lock sits at +0) and `kern_free` at 0x13d0 on the same address. The return value is not set.
- `gfxtable_readerunlock` (`gfx.o`, offset 0x44, 68 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfx.o`.
  Drops one reader of the graphics group table. It takes the spinlock at +4 of the lock record with `mutex_spinlock` at 0x58, subtracts 1 from the reader count word at +0 and stores it at 0x74, in the delay slot of the `mutex_spinunlock` call at 0x70, then releases the lock with the level that `mutex_spinlock` returned. It never wakes a waiting writer.
- `GfxListReaderLock` (`gfx.o`, offset 0x2aa4, 68 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfx.o`.
  Takes a shared hold on a graphics list. It locks the spinlock at record +16 with `mutex_spinlock` at 0x2ab8, adds 1 to the reader count word at +4, and stores it at 0x2ad4 in the delay slot of the `mutex_spinunlock` call at 0x2ad0, which gets the saved level. It does not wait for a writer, so exclusion rests on the callers.
- `GfxListReaderUnlock` (`gfx.o`, offset 0x2ae8, 80 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfx.o`.
  Gives up a shared hold on a graphics list. Under the spinlock at +16 (`mutex_spinlock` at 0x2afc) it subtracts 1 from the reader count at +4, storing it at 0x2b18 in the delay slot of `sv_signal` at 0x2b14, which wakes a waiter on the synchronisation variable at +8, and then calls `mutex_spinunlock` at 0x2b24 with the saved level. The signal is made on every call, not only when the count reaches zero.
- `gfx_frs_install` (`gfx.o`, offset 0x3424, 88 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfx.o`.
  Hands a frame-scheduler request to a board's driver (arguments: request, pipe number). It indexes the `GfxBoards` array with the second argument, loads the board's operations table at board +56 and the function pointer at table +208, and, when it is set, calls it at 0x3450 with the doubleword at board +64 first and the original first argument second. A null pointer logs the string "[gfx_frs_install]: Null operation" through `cmn_err` at severity 5 at 0x346c.
- `gfx_frs_uninstall` (`gfx.o`, offset 0x347c, 80 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/gfx.o`.
  Takes a frame scheduler off a board's driver (argument: pipe number). It indexes `GfxBoards` with the argument, loads the operations table at board +56 and the pointer at table +216, and calls it at 0x34a0 with the doubleword at board +64 as its only argument. A null pointer logs "[gfx_frs_uninstall]: Null operation" at severity 5 through `cmn_err` at 0x34bc.

- `OdsyInitCSet` (`odsy_adt.o`, offset 0x0, 44 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_adt.o)`.
  Empties a colour-set container on the IP35 build. The stores, in issue order, are doubleword zero at +0 and at +16, word zero at +28 and at +24, and then (in the delay slot of the call) the second argument as a word at +40. The call goes to `OdsyInitCSetCursor` with the container still in the first argument register, and its result is the routine's result. It reads no memory other than the saved return address and touches no board register.
- `odsy_NewDmaRegion` (`odsy_dma.o`, offset 0x0, 332 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_dma.o)`.
  Creates a DMA region record on the IP35 build (arguments: owner, board, address, length, user-buffer flag, 32-byte header pointer, result-cell pointer as the eighth argument). It calls `kmem_zalloc` for 88 bytes; a null result logs severity 4 with the first string of the object's read-only data ("can't allocate a new dma region struct"), stores 12 in the result cell and returns null. Otherwise it stores, in order, zero at +0, the flag at +48, the length at +40, the address at +32 and the board at +24, then copies the 32-byte header to +56 with `bcopy`; the owner goes to +16 in the delay slot of that call. With the flag clear it stores 0 at +52 and 0 in the result cell and returns the record, and neither `useracc` nor the table builder runs. With the flag set it calls `useracc` on the address and length with 272 as the third argument and 0 as the fourth; the result is stored in the result cell before the test, and a nonzero result logs severity 4 ("couldn't pin pages", with the address and length), stores 0 at +52, calls `odsy_DeleteDmaRegion` and returns null. A zero result stores 1 at +52 and calls `odsy_DmaRegion_BuildXlatTbl`, whose result also goes to the result cell; nonzero logs severity 4 ("couldn't build xlat tbl"), calls `odsy_DeleteDmaRegion` and returns null, zero returns the record. The code is the same as the IP30 build entry above in structure; this entry is read from the IP35 object and does not rest on it.
- `odsy_rainier_write_rcx_reg` (`odsy_rainier.o`, offset 0x0, 24 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_rainier.o)`.
  Writes one 32-bit register of the Rainier window on the IP35 build. It loads the doubleword at +16 of the first argument, takes the second argument as a signed word shifted right 2 then left 2 (`sra`, `dsll`), adds the two and stores the third argument as a word there in the delay slot of the return. There is no barrier and no value is returned; the six instructions are the same as in the IP30 build.
- `set_dir_state_UNOWNED` (`kernel.o`, offset 0xfeb0, 28 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Seven words, read in full: it saves the return address, sets a1 to 1 in the delay slot of a call to `set_dir_state`
  (relocation R_MIPS_26 to that symbol), restores the return address and returns the callee's result. The first argument
  passes through untouched. The bytes match the `GfxIntrMessage` body in `gfx.o`, but the call there goes to
  `GfxSendMessage`; the words of the call are zero in both objects, so the callee is known only from the relocation.
- `prom_eaddr` (`kernel.o`, offset 0x43c, 28 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Seven words, read in full: a call to `arcs_eaddr` (relocation R_MIPS_26) with a nop in its delay slot, then the return
  address is restored and the callee's result is returned. No argument is set or changed.
- `sys_setled` (`kernel.o`, offset 0x270c, 28 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Seven words, read in full: forwards its arguments unchanged to `set_leds` (relocation R_MIPS_26), with a nop in the
  delay slot, and returns that routine's result.
- `clkset` (`kernel.o`, offset 0x64cc, 28 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Seven words, read in full: a nop-delay-slot call to `inittodr` (relocation R_MIPS_26) that leaves a0 and a1 as the
  caller set them, then returns the callee's v0.
- `hwperf_intr` (`kernel.o`, offset 0x19c84, 28 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Seven words, read in full: a nop-delay-slot call to `r1nk_perf_intr` (relocation R_MIPS_26) and a return of its result.
  The body does nothing else.
- `prom_autoboot` (`kernel.o`, offset 0x340, 28 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Seven words, read in full: a nop-delay-slot call to `he_arcs_reboot` (relocation R_MIPS_26), with the callee's result
  returned unchanged.
- `fprom_reset` (`kernel.o`, offset 0x9740, 28 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Seven words, read in full: a nop-delay-slot call to `cfi_reset` (relocation R_MIPS_26), returning its result. It does
  not touch the flash device itself.
- `fprom_erase_sector` (`kernel.o`, offset 0x97ac, 28 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Seven words, read in full: a nop-delay-slot call to `cfi_erase_sector` (relocation R_MIPS_26), returning its result
  with a0 and a1 unchanged.
- `fprom_write` (`kernel.o`, offset 0x9850, 28 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Seven words, read in full: a nop-delay-slot call to `cfi_write` (relocation R_MIPS_26), returning its result with the
  arguments passed through.
- `fprom_validate` (`kernel.o`, offset 0x986c, 28 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Seven words, read in full: a nop-delay-slot call to `cfi_validate` (relocation R_MIPS_26), returning its result with
  the arguments passed through.
- `gf_OdsyFrsUninstall` (`odsy_retrace.o`, offset 0x11e4, 8 bytes): **established.**
  Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
  It returns zero and makes no calls or memory accesses (`jr` at 0x11e4, `or` at 0x11e8). Its role is unknown.
- `gfP_OdsyInvalidIoctl` (`odsy.o`, offset 0x5c, 36 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy.o)`.
  It calls `cmn_err` at severity 5 (`jal` at 0x68, a0=5). It returns 22 (`jr` at 0x78). Its message pointer is in
  read-only data (`ld` at 0x64), but the text is unresolved.
- `odsyGctxFromRnid` (`odsy.o`, offset 0xfc, 92 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy.o)`.
  A nonpositive first argument takes the error branch (`blez` at 0x100). An argument above the loaded limit takes the
  same path (`bne` at 0x10c taken). It calls `cmn_err` at severity 4 and returns zero (`jal` at 0x144, `jr` at 0x130).
  For an in-range argument, it loads a doubleword at +0x70 from an unresolved base (`ld` at 0x12c). The returned value
  is unknown.
- `OdsyNextCSetElem` (`odsy_adt.o`, offset 0x144, 240 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  It returns zero if the current-node pointer at +8 is null, the end flag at +28 is set, or the element count at +20 is
  zero (`beq` at 0x14c, `bne` at 0x158, `beq` at 0x164). Otherwise it scans slots and updates the cursor at +24 (`sw` at
  0x188, 0x1c0, 0x1c4, 0x200 and 0x204). It may advance the current-node pointer at +8 (`sd` at 0x1d4 and 0x210). The
  internal node bases are unresolved (`lw` at 0x18c, `ld` at 0x1a0 and 0x1ac).
- `OdsyFindMatchingCSetElem` (`odsy_adt.o`, offset 0x234, 296 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  A zero shift at +32 takes the return-zero branch (`beq` at 0x254 taken). Otherwise it walks the chunk list from the
  pointer at +0, bounded by the chunk count at +16 (`blez` at 0x27c, `ld` at 0x278 and 0x2a8), and reads each nonzero
  slot through an unresolved chunk base (`ld` at 0x2c8 and 0x2f0). For each slot it calls an indirect target with the
  slot value in a0 and its own second argument in a1 (`jalr` at 0x2cc); the target is its third argument. A zero result
  ends the search and returns that slot value (`beq` at 0x2d4 taken, `or` at 0x338). A nonzero result moves on to the
  next slot. Running out of chunks returns zero (`or` at 0x318).
- `OdsyDestroyCSet` (`odsy_adt.o`, offset 0x28, 264 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  A nonpositive node count at +16 takes the loop-skip branch (`blez` at 0x54 taken). The loop calls `kmem_free` twice
  (`jal` at 0x7c and 0x8c). The second call uses size 32. The first call's arguments are unknown. It also calls an
  indirect target with unresolved address and arguments (`jalr` at 0xc4). It ends by calling `OdsyInitCSet` with shift
  zero (`jal` at 0x118, a0=entry arg0, a1=0).
- `NewChunkNode` (`odsy_adt.o`, offset 0x35c, 68 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  It calls `kmem_alloc` for 32 bytes with flag zero (`jal` at 0x368, a0=0x20, a1=0). A null result falls through to
  return zero (`bne` at 0x374 falls through). Otherwise it clears 32 bytes with `bzero` and returns the allocation
  (`jal` at 0x38c, a0=kmem_alloc result, a1=0x20, `jr` at 0x380).
- `OdsyAllocSpecificCSetId` (`odsy_adt.o`, offset 0x3a0, 460 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  A zero shift at +32 takes the return-minus-one branch (`beq` at 0x3d4 taken). When extending the node list, it calls
  `NewChunkNode` with the word at set+0x20 (`jal` at 0x4c4, a0=[set+0x20]). It increments the count at +16 (`sw` at
  0x4c0). It allocates and clears a block, but its size is unresolved (`jal` at 0x524 and 0x55c). A null node result
  branches to the -1 return (`beq` at 0x4cc). A null allocation falls through to the -1 return (`bne` at 0x530 falls
  through, `addiu` at 0x53c). Some node-link and slot store bases are unresolved (`sd` at 0x45c and 0x52c).
- `OdsyDeallocCSetId` (`odsy_adt.o`, offset 0x7cc, 164 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  It clears a value through an unresolved pointer base and updates that base+8 value (`sd` at 0x818, `sw` at 0x824). It
  decrements the set count at +20 (`sw` at 0x830). When the branch at 0x838 is taken because the base+8 value is zero,
  it calls `kmem_free` and clears a pointer through the unresolved base (`jal` at 0x85c, `sd` at 0x864). The first two
  call arguments are unknown.
- `OdsyLookupCSetId` (`odsy_adt.o`, offset 0x870, 248 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  A zero shift at +32 takes the return-zero branch (`beq` at 0x878 taken). Otherwise it starts from the pointer at +0
  and repeats loads at displacement +0x10 through unresolved bases (`ld` at 0x884, 0x894, 0x8b0, 0x8d4, 0x8ec and
  0x904). Each listed branch is taken for a zero head or link and returns zero (`beq` at 0x888, 0x8a8, 0x8cc, 0x8e0,
  0x8fc and 0x918). It masks the id with a shift-derived low-bit mask and loads that slot, but the slot-array base is
  unresolved (`and` at 0x934, `ld` at 0x940).
- `OdsyInit32kSlotMask` (`odsy_adt.o`, offset 0x968, 56 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  It clears 0x1010 bytes at the first argument (`jal` at 0x97c, a0=entry arg0, a1=0x1010). It writes zero at +8 and the
  second argument at +0 (`sw` at 0x984, `sd` at 0x990).
- `OdsyAlloc32kSlot` (`odsy_adt.o`, offset 0x9a0, 312 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  The branch at 0x9ac falls through when the semaphore pointer at +0 is nonnull. That path calls `psema` at priority 25
  (`jal` at 0x9bc, a0=[arg0+0], a1=25). An index at +8 of at least 0x200 takes the failure branch (`beq` at 0x9d0
  taken). An index below zero also takes it (`bltz` at 0x9d8 taken). The failure branch releases the semaphore when it
  is held and returns -1 (`jal` at 0xa6c, `addiu` at 0xa7c). For a valid index it reads and updates a doubleword in the
  computed bitmap (`ld` at 0x9e8, `sd` at 0xa20). It scans up to 64 bits (`slti` at 0xa0c). The success return value is
  saved on the stack and is the index at +8 shifted left by 6 plus the bit found (`sll` at 0x9f0, `addu` at 0xa24, `ld`
  at 0xa4c, `jr` at 0xa54). When the word becomes all ones (`beq` at 0xa28 taken) it advances the index at +8 to the
  next word that is not all ones (`sw` at 0xa94 and 0xab8; `addiu` at 0xa8c forms the all-ones constant that the compare
  at 0xaa4 uses).
- `OdsyFree32kSlot` (`odsy_adt.o`, offset 0xad8, 240 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  A null first argument takes the severity-4 logging path (`beq` at 0xae8 taken, `jal` at 0xb94, a0=4). It shifts the
  slot argument right by 6 (`sra` at 0xaf0). An index at least 0x200 takes the error branch (`beq` at 0xafc taken). For
  a valid index it clears a bit in the computed bitmap word (`sd` at 0xb40). The branch at 0xb4c falls through when this
  index is below the saved index at +8. That path stores the index (`sw` at 0xb5c). The branch at 0xb64 falls through
  when the semaphore pointer at +0 is nonnull. That path calls `vsema` (`jal` at 0xb70).
- `odsyHashAlloc` (`odsy_adt.o`, offset 0xbc8, 112 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  It calls `kmem_alloc` with an unknown size and flag zero (`jal` at 0xbe8, a0 unknown, a1=0). A successful allocation
  receives the first argument at +0 (`sw` at 0xc00). When the first argument is positive, it initializes links in a loop
  (`blez` at 0xbfc falls through, `sd` at 0xc20 and 0xc28). The link-store bases are unresolved.
- `odsyHashDealloc` (`odsy_adt.o`, offset 0xc38, 44 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  It reads the word at table +0 and passes the table to `kmem_free` (`lw` at 0xc38, `jal` at 0xc50, a0=entry arg0). The
  size argument is unknown. The routine returns the `kmem_free` result (`jr` at 0xc5c).
- `odsyHashLookup` (`odsy_adt.o`, offset 0xc64, 76 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  The routine makes no calls. A matching sentinel takes the return-zero branch (`beq` at 0xc7c taken). Otherwise it
  compares a loaded word with the third argument. A match takes the return-current-pointer branch (`beq` at 0xc88 taken,
  `jr` at 0xca8). A pointer differing from the sentinel takes the loop branch (`bne` at 0xc94 taken) after loading the
  next pointer at +0 (`ld` at 0xc90).
- `odsyHashInsert` (`odsy_adt.o`, offset 0xcb0, 48 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  The routine makes no calls. It writes the surrounding links into the third argument at +8 and +0 (`sd` at 0xcd0 and
  0xcd4). It also updates an unresolved link base at +8 with the third argument (`sd` at 0xcdc). The surrounding base is
  unknown.
- `odsyHashRemove` (`odsy_adt.o`, offset 0xce0, 36 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  The routine makes no calls. It copies the entry's +0 link to the pointer loaded from +8 (`ld` at 0xce0 and 0xce4, `sd`
  at 0xce8). It copies the entry's +8 link to the pointer loaded from +0 (`sd` at 0xcf4). It clears both links in the
  entry (`sd` at 0xcf8 and 0xd00) and returns the original +0 pointer (`jr` at 0xcfc).
- `gf_OdsyDetach` (`odsy_attach.o`, offset 0x1a8, 100 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_attach.o)`.
  The branch at 0x1b8 falls through when bit 2 of the flag word at +48 is set. That path calls `odsyDiagExit` with the
  doubleword at +32 and the original first argument (`jal` at 0x1c8). The branch at 0x1dc falls through when bit 0 is
  set. That path calls `gf_OdsyUnMapGfx` (`jal` at 0x1e4). It always calls `gfxdd_munmap` with the handle at +40 and
  clears that field in the call's delay slot (`jal` at 0x1f0, `sd` at 0x1f4). It returns zero (`jr` at 0x204).
- `gfP_OdsyBRDMGRsetDpyMode` (`odsy_brdmgr.o`, offset 0x1f90, 120 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  It copies 8 bytes from the third argument to its stack frame (`jal` at 0x1fac, a0=entry arg2, a2=8). On success it
  calls `gf_OdsySetDisplayMode` with the first argument, but its remaining arguments are unresolved (`jal` at 0x1fc0).
  It stores the call result through the fourth argument and returns zero (`sw` at 0x1fc8, `jr` at 0x1fdc). A nonzero
  `copyin` result takes the error branch (`bne` at 0x1fb4 taken). It calls `cmn_err` at severity 4, stores 14 through
  the fourth argument and returns 14 (`jal` at 0x1fec, `sw` at 0x1ff8, `jr` at 0x1fdc).
- `gfP_OdsyBRDMGRsetBlanking` (`odsy_brdmgr.o`, offset 0x2008, 116 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  It loads the doubleword at +32 of the first argument and keeps it on the stack (`ld` at 0x2008, `sd` at 0x2028). It
  copies 4 bytes from the third argument to its stack frame with `copyin` (`jal` at 0x202c, a0=entry arg2, a2=4). On
  success it calls `odsyBlankScreen` with the saved doubleword in a0 and the copied word in a1 (`jal` at 0x203c, `lw` at
  0x2040), stores the call result through the fourth argument and returns it unchanged (`sw` at 0x2044, `jr` at 0x2050).
  A nonzero `copyin` result takes the error branch (`bne` at 0x2034 taken). It calls `cmn_err` at severity 4, stores 14
  through the fourth argument and returns 14 (`jal` at 0x2060, `sw` at 0x206c, `addiu` at 0x2070).
- `odsyRestoreVertex` (`odsy_ctxsw.o`, offset 0x45b8, 356 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  It calls `odsyRestoreVB` with a descriptor address formed from the pointer at +112 of
  its second argument plus 140 plus 8 times the index in a5 (`jal` at 0x4610, `sd` at
  0x4614). It stores that descriptor address through the pointer in a4 (`sd` at 0x461c).
  The branch at 0x4630 skips `odsySetProgram` when the word at +10972 of the pointer at
  +96 of the second argument is zero. When it is nonzero, the routine calls it with the word
  at 11040 plus 4 times the index from that same pointer (`beqz` at 0x4630, `jal` at 0x4648).
  It reads the saved command word at 256 plus 4 times the index from the pointer at +112
  (`lw` at 0x4658). The command word's count field, bits 13:10, selects the path. A nonzero
  count writes the command word to the window at 0x110000 and then that many following words
  from 768 plus 16 times the index in the same block (`sw` at 0x469c and 0x46c4). A zero
  count is accepted only when the word, with bits 22:16 masked off, equals 0x3000c02e or
  0x2f00c02e (`bnez` at 0x4678, `beq` at 0x4688, `bne` at 0x4690). Any other zero-count word
  calls `cmn_err` at severity 7 and writes nothing (`jal` at 0x470c).
- `restorePoints` (`odsy_ctxsw.o`, offset 0x471c, 8 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  The body is a return (`jr` at 0x471c). It has no memory accesses or calls.
  Its return value is unknown.
- `restoreLines` (`odsy_ctxsw.o`, offset 0x4724, 56 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  It calls `odsyRestoreVertex` once with its first five arguments unchanged and a5 set
  to the fourth argument plus 3, remainder 4 (`andi` at 0x473c, `jal` at 0x4748). It returns
  that call's result (`jr` at 0x4754).
- `restoreLineLoop` (`odsy_ctxsw.o`, offset 0x475c, 124 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  It first calls `odsyRestoreVertex` with its first four arguments unchanged
  and a5=0 (`jal` at 0x477c). When the third argument is at least 2, the
  branch is taken to a second call (`beqz` at 0x4788). That call keeps the first five arguments and passes in a5 one more than the remainder of (arg4 + 1) divided by 3 (`div` at 0x47ac, `mfhi` at 0x47c0, `jal` at 0x47c8). It returns the called routine's result (`jr` at 0x4794).
- `restoreLineStrip` (`odsy_ctxsw.o`, offset 0x47d8, 56 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  It calls `odsyRestoreVertex` once with its first five arguments unchanged and a5 set
  to the fourth argument plus 3, remainder 4 (`andi` at 0x47f0, `jal` at 0x47fc). It returns
  that result (`jr` at 0x4808).
- `restoreTriangles` (`odsy_ctxsw.o`, offset 0x4810, 212 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  A nonpositive third argument takes the loop-skip branch (`blez` at 0x4868).
  For a positive count, the loop calls `odsyRestoreVertex` and repeats while
  its index is below the count (`jal` at 0x488c, `bnez` at 0x48b4).
  The first five call arguments pass through unchanged. a5 starts at the fourth argument minus the third plus 4, remainder 4, and advances by 1, remainder 4, after each call (`jal` at 0x488c).
- `restoreTriStrip` (`odsy_ctxsw.o`, offset 0x48e4, 212 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  A nonpositive third argument takes the loop-skip branch (`blez` at 0x493c).
  For a positive count, the loop calls `odsyRestoreVertex` and repeats while
  its index is below the count (`jal` at 0x4960, `bnez` at 0x4988).
  The first five call arguments pass through unchanged. a5 starts at the fourth argument minus the third plus 4, remainder 4, and advances by 1, remainder 4, after each call (`jal` at 0x4960).
- `restoreTriFan` (`odsy_ctxsw.o`, offset 0x49b8, 124 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  It first calls `odsyRestoreVertex` with its first four arguments unchanged
  and a5=0 (`jal` at 0x49d8). When the third argument is at least 2, the
  branch is taken to a second call (`beqz` at 0x49e4). That call keeps the first five arguments and passes in a5 one more than the remainder of (arg4 + 1) divided by 3 (`div` at 0x4a08, `mfhi` at 0x4a1c, `jal` at 0x4a24). It returns the called routine's result (`jr` at 0x49f0).
- `restoreQuads` (`odsy_ctxsw.o`, offset 0x4a34, 212 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  A nonpositive third argument takes the loop-skip branch (`blez` at 0x4a8c).
  For a positive count, the loop calls `odsyRestoreVertex` and repeats while
  its index is below the count (`jal` at 0x4ab0, `bnez` at 0x4ad8).
  The first five call arguments pass through unchanged. a5 starts at the fourth argument minus the third plus 4, remainder 4, and advances by 1, remainder 4, after each call (`jal` at 0x4ab0).
- `restoreQuadStrip` (`odsy_ctxsw.o`, offset 0x4b08, 212 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  A nonpositive third argument takes the loop-skip branch (`blez` at 0x4b60).
  For a positive count, the loop calls `odsyRestoreVertex` and repeats while
  its index is below the count (`jal` at 0x4b84, `bnez` at 0x4bac).
  The first five call arguments pass through unchanged. a5 starts at the fourth argument minus the third plus 4, remainder 4, and advances by 1, remainder 4, after each call (`jal` at 0x4b84).
- `restorePolygon` (`odsy_ctxsw.o`, offset 0x4bdc, 220 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  It first calls `odsyRestoreVertex` with its first four arguments unchanged
  and a5=0 (`jal` at 0x4c24). When the third argument is at most 1, the branch
  skips the loop (`blez` at 0x4c48). For larger counts, it makes additional
  calls while its index is below the third argument minus 1 (`jal` at 0x4c68,
  `bnez` at 0x4c80). The first four call arguments pass through unchanged.
- `restoreRect` (`odsy_ctxsw.o`, offset 0x4cb8, 728 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  The third argument selects separate command-building paths: values below 2
  take the branch at 0x4cd8, and other values fall through (`bnez` at 0x4cd8).
  Both paths write words to the window at 0x110000 (`sw` at 0x4d50, 0x4d78,
  0x4e08, 0x4e34, 0x4ec8 and 0x4ef4). The command words come from the block at +112 of the second argument. The first word is at 256 plus 4 times the slot (`lw` at 0x4d08), its count is bits 13:10 (`lw` at 0x4d54), and the following words are at 768 plus 16 times the slot (`lw` at 0x4d74). The slots are the fourth argument plus 2 and then minus 1, remainder 4, on the path for values of 2 or more, and the fourth argument plus 3, remainder 4, on the other path. It calls `cmn_err` at severity 7 on three error paths, one per command word whose count is zero and whose masked value is neither 0x3000c02e nor 0x2f00c02e (`jal` at 0x4f30, 0x4f58 and 0x4f80). Its return value is unknown.
- `odsyResetHwShadow` (`odsy_ctxsw.o`, offset 0x4f90, 320 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  It clears 0x900 bytes at its first argument with `bzero` (`jal` at 0x4fa0,
  a0=arg0, a1=0x900). It then writes default words into the record, including
  offsets +0x80, +0xb0, +0x100, +0x130, +0x170, +0x1c0 and +0x230
  (`sw` at 0x4fe4, 0x5034, 0x50c0, 0x50b4, 0x50ac, 0x503c and 0x504c).
  The routine makes no other calls in this body.
- `gfP_OdsyGLGet` (`odsy_ctxsw.o`, offset 0x50d0, 584 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  It initializes the result word to zero and checks the teardown word at
  board+728 (`sw` at 0x50d4, `lw` at 0x50e4, `bnez` at 0x50fc). It follows the
  current-client pointer through manager+72 and +112, then copies a 4-byte
  selector from the third argument (`ld` at 0x5108 and 0x510c, `jal` at
  0x5124). A failed copy takes the error path (`bnez` at 0x512c). It calls `RRM_CheckValidFault` with its first argument and takes the error path on a negative result (`jal` at 0x5134, `bltz` at 0x5140), increments the board busy count at +80
  (`sw` at 0x5154), and arms `odsy_glget_timeout` for 1500 ticks (`jal` at
  0x51d8, a2=0x5dc). It polls with 1-microsecond delays (`jal` at 0x5254).
  Cleanup decrements the busy count (`sw` at 0x5218). Several error paths
  store 14 or 1 through the result pointer (`sw` at 0x5208, 0x52ac, 0x52e8
  and 0x5308). It writes one doubleword to the window at 0x110000 (`sd` at 0x51dc): its high word is 0x4c0 through 0x4c3 for selectors 0 through 3 and its low bit is set (`addiu` at 0x5234, 0x5194, 0x5288 and 0x5294, `ori` at 0x51d4).
- `odsy_glget_timeout` (`odsy_ctxsw.o`, offset 0x5c, 92 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  It logs at severity 1 (`jal` at 0x74). If the global timeout flag is zero,
  the branch is taken and it re-arms `timeout` for 1500 ticks (`beqz` at 0x80,
  `jal` at 0xa4). If the flag is nonzero, it falls through to `odsy_teardown`
  with the first argument (`jal` at 0x88).
- `gf_OdsyPcxSwitch` (`odsy_ctxsw.o`, offset 0xb8, 8 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  The body returns -1 and has no memory accesses or calls (`jr` at 0xb8,
  `addiu` at 0xbc).
- `odsy_i2cDDCRegRead` (`odsy_ddc.o`, offset 0x188, 144 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  It reads the device byte at port+0x20 (`lbu` at 0x198). It starts a transfer,
  sends the second argument, then receives a byte through the third argument
  (`jal` at 0x1b0, 0x1c8 and 0x1e0). A nonzero result from any operation takes
  the shared reset path (`bnez` at 0x1b8, 0x1d0 and 0x1e8). That path calls
  `odsy_i2cReset` and returns 1 (`jal` at 0x1fc). Success returns 0
  (`jr` at 0x210).
- `odsy_validate_ddc_data` (`odsy_ddc.o`, offset 0x1a90, 44 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  It passes its arguments to `odsy_i2cValidEdid` (`jal` at 0x1a98). A zero
  result takes the branch and returns zero (`beqz` at 0x1aa0, `move` at 0x1ab8).
  A nonzero result falls through and returns one (`addiu` at 0x1aa8,
  `jr` at 0x1aac).
- `odsy_EdidCksum` (`odsy_ddc.o`, offset 0x1abc, 44 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  It sums the 128 bytes at its first argument (`lbu` at 0x1acc), keeping the running
  sum to 8 bits (`andi` at 0x1adc), and repeats while its counter is below 0x80 (`slti`
  at 0x1ad0, `bnez` at 0x1ad8). It returns the sum.
- `odsy_i2cValidEdid` (`odsy_ddc.o`, offset 0x1ae8, 156 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  It requires byte 0 to be zero (`lbu` at 0x1ae8, `beqz` at 0x1af0).
  Bytes 1 through 6 are checked against 0xff (`lbu` at 0x1b1c, `lbu` at
  0x1b28, `lbu` at 0x1b34, `lbu` at 0x1b40, `lbu` at 0x1b4c and `lbu` at
  0x1b58). A mismatch returns zero (`bne` at 0x1b20, `bne` at 0x1b2c,
  `bne` at 0x1b38, `bne` at 0x1b44, `bne` at 0x1b50 and `bne` at 0x1b5c).
  Byte 7 must be zero (`lbu` at 0x1b64, `bnez` at 0x1b68).
  It then calls `odsy_EdidCksum` (`jal` at 0x1b00). A zero checksum takes the
  branch and returns one (`beqz` at 0x1b08, `addiu` at 0x1b80). A nonzero
  checksum falls through to a zero return (`move` at 0x1b10).
- `sgiEdid` (`odsy_ddc.o`, offset 0x1b84, 56 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  It checks EDID byte 8 for 0x4c (`lbu` at 0x1b84, `bne` at 0x1b90).
  It accepts byte 9 when it is 0xf8 or 0xe9 (`lbu` at 0x1b98, `beq` at 0x1b9c and 0x1ba4).
  It returns 1 on a match and 0 otherwise (`jr` at 0x1bb4 and 0x1bac).
- `odsy_i2c2abReset` (`odsy_ddc.o`, offset 0x1bbc, 304 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  It starts a transfer with address byte 0x6e (`jal` at 0x1bd0).
  It then sends 0x50, 0x81, 0xf0 and 0x4f in order (`jal` at 0x1be8, 0x1c00, 0x1c18 and 0x1c30).
  A nonzero result branches to an error path (`bnez` at 0x1bd8, 0x1bf0, 0x1c08, 0x1c20 and 0x1c3c).
  It returns 0 after the sequence and 1 on an error path (`jr` at 0x1c48).
- `odsy_i2c2abAttention` (`odsy_ddc.o`, offset 0x1cec, 148 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  It enters slave receive mode with arguments 1 and 0x50 (`jal` at 0x1d14).
  It requests four bytes into a local buffer (`jal` at 0x1d2c, with count argument 4).
  A nonzero result branches to an error path (`bnez` at 0x1d1c and 0x1d34). It returns 0 or 1 (`jr` at 0x1d40).
- `odsy_i2c2abIDRequest` (`odsy_ddc.o`, offset 0x1d80, 304 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  It starts a transfer using 0x6e, then sends 0x50, 0x81, 0xf1 and 0x4e (`jal` at 0x1d94, 0x1dac, 0x1dc4, 0x1ddc and 0x1df4).
  The last send sets argument 3 to 1. A nonzero result branches to an error path (`bnez` at 0x1d9c, 0x1db4, 0x1dcc, 0x1de4 and 0x1e00).
  It returns 0 after the sequence or 1 on an error path (`jr` at 0x1e0c).
- `odsy_i2c2abPresencechk` (`odsy_ddc.o`, offset 0x1eb0, 304 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  It starts a transfer using 0x6e, then sends 0x50, 0x81, 0xf1 and 0x48 (`jal` at 0x1ec4, 0x1edc, 0x1ef4, 0x1f0c and 0x1f24).
  The last send sets argument 3 to 1. A nonzero result branches to an error path (`bnez` at 0x1ecc, 0x1ee4, 0x1efc, 0x1f14 and 0x1f30).
  It returns 0 after the sequence or 1 on an error path (`jr` at 0x1f3c).
- `odsy_i2c2abIDReply` (`odsy_ddc.o`, offset 0x1fe0, 8 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  This two-instruction stub reads no argument, makes no call and returns 0 (`jr` at 0x1fe0).
- `odsy_i2c2abAssignAddr` (`odsy_ddc.o`, offset 0x1fe8, 8 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  This two-instruction stub reads no argument, makes no call and returns 0 (`jr` at 0x1fe8).
- `odsy_i2cProbe2ab` (`odsy_ddc.o`, offset 0x1ff0, 364 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  It calls the reset and attention routines, then makes ID-request, reply and address-assignment calls (`jal` at 0x2030, 0x2058, 0x2084, 0x2094 and 0x20ac).
  A zero reset result branches toward the attention step (`beqz` at 0x2038). A nonzero attention result returns to the retry sequence (`bnez` at 0x2060).
  Nonzero results from the final three calls branch to separate handling (`bnez` at 0x208c, 0x209c and 0x20b4). The loop exit at 0x2028 is taken once the retry counter reaches 30, and the code after it sets the return value 1 (`addiu` at 0x2104, `jr` at 0x2110); the other return value, 0, is set at 0x20f0.
- `odsy_copyin_cmd` (`odsy_ddc.o`, offset 0x215c, 136 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  It reads the length at argument offset +16 and the source pointer at +24 (`lw` at
  0x215c, `ld` at 0x2174). A length that is nonpositive or above 256 logs through `cmn_err`
  at severity 1 and returns -22 (`blez` at 0x2164, `slti` at 0x2168, `beqz` at 0x216c, `jal`
  at 0x21b4, `addiu` at 0x21bc). A null source pointer returns -22 without logging (`beqz`
  at 0x2178, `addiu` at 0x21a4). Otherwise it calls `copyin` with the source pointer, its
  second argument and the length (`jal` at 0x2184). A nonzero `copyin` result logs and
  returns -14 (`bnez` at 0x218c, `jal` at 0x21d0, `addiu` at 0x21d8). Success returns 0
  (`jr` at 0x2198).
- `odsy_i2cPLLSeqRegWrite` (`odsy_ddc.o`, offset 0x218, 240 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  It starts a transfer with the port byte at +32 shifted left by one (`lbu` at 0x228,
  `jal` at 0x240) and sends its second argument (`jal` at 0x25c). It then sends bytes from
  the pointer in its third argument: the first count minus one bytes with the final flag
  clear (`jal` at 0x294, `lbu` at 0x298) and the last byte with the final flag set (`jal`
  at 0x2c8, `lbu` at 0x2cc). The count is its fourth argument (`ld` at 0x26c, `addiu` at
  0x270); when it is 1 the loop is skipped (`beqz` at 0x278). A nonzero send result
  branches to a reset path (`bnez` at 0x248, 0x264, 0x29c and 0x2d4) that calls
  `odsy_i2cReset` (`jal` at 0x2e8). It returns 0 after successful sends or 1 after reset
  (`jr` at 0x300).
- `odsy_i2c_cmd` (`odsy_ddc.o`, offset 0x21e4, 2284 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  It reads a halfword at request offset +2 (`lhu` at 0x21e4) and a word at +8 (`lw` at 0x2200).
  It loads handle data from one of two offsets at +0x56b0 or +0x56d8 and the paired word at +0x56bc or +0x56e4 (`ld` at 0x2270, `lw` at 0x2268).
  It calls `mutex_lock` with priority 25 on two paths and calls `mutex_unlock` (`jal` at 0x2284, 0x22f8, 0x22d4 and 0x2308).
  A value other than 0 or 1 in the request field at +8 returns -22 (`bne` at 0x2228, `jr` at 0x22b4). The halfword at request +2 selects the operation: values below 13 index a jump table in the object's read-only data (`sltiu` at 0x2294, `jr` at 0x22ac), and larger values go to the common exit. The table entries and the operation bodies are not described here.
- `odsy_Probe2AB` (`odsy_ddc.o`, offset 0x2ad0, 796 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  It calls reset, receive, send, stop and delay routines, and copies a reply buffer (`jal` at 0x2af8, 0x2b34, 0x2b74, 0x2b9c, 0x2bb0 and 0x2c78).
  It writes 0xf0, 0xf1 and 0xf2 to byte offset 128 of the receive buffer (`sb` at 0x2b5c, 0x2cc8 and 0x2d2c).
  It compares the reply with up to three strings addressed from its first argument, 19 bytes each, using `strncmp` (`jal` at 0x2dc4, `slti` at 0x2dd4). It returns 0 or 1 (`jr` at 0x2c08); the 1 is set after that comparison loop (`addiu` at 0x2de0).
- `odsy_2abCmdWrapper` (`odsy_ddc.o`, offset 0x2dec, 288 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  It reads the request length at +16 (`lw` at 0x2e38) and the reply pointer at +32 (`ld` at 0x2e30), then clears the halfword at +20 (`sh` at 0x2e40).
  It calls `odsy_2abSendCmd` with the request length, its third argument and a flag that is set when the reply pointer is zero (`jal` at 0x2e44, `sltiu` at 0x2e48). When the reply pointer at +32 is nonzero, it calls `odsy_2abGetReply` with its own fourth argument as the destination buffer and the address of a stack word that receives the reply length (`beqz` at 0x2e58, `jal` at 0x2e64, a1 from the fourth argument, a2=sp-96). That stack word is stored as a halfword at +20 (`sh` at 0x2e80). Once the retry count passes a global limit it returns -145 when the reply helper returned zero and -5 otherwise (`slt` at 0x2e88, `movn` at 0x2e94). It also calls `odsy_usdelay` on retry paths (`jal` at 0x2eac, 0x2eec and 0x2efc).
- `odsy_2abSendCmd` (`odsy_ddc.o`, offset 0x2f0c, 732 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  It stores either 0x4 or 0x6e in a one-byte data slot (`sb` at 0x2f74).
  It starts a transfer using that slot, then calls the byte-send helper repeatedly (`jal` at 0x2fec, 0x3068, 0x30a0, 0x3110 and 0x3148).
  It reads a byte through its third argument (`lbu` at 0x2fac).
  Error paths call `odsy_i2cFixupAfterErr` (`jal` at 0x3000, 0x3078, 0x30b0, 0x3158 and 0x3178). Another path calls `odsy_i2c_stop` (`jal` at 0x31d4).
  It can return 0, 1 or 3 (`jr` at 0x2fdc).
- `odsy_i2cPLLSeqRegRead` (`odsy_ddc.o`, offset 0x308, 276 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  It reads a byte from the port record at +32 (`lbu` at 0x318).
  It starts and sends a transfer (`jal` at 0x330 and 0x348).
  It then starts again with address byte 0x4d (`jal` at 0x35c, with a1=0x4d).
  It receives through long- and short-receive helpers, including a long receive into the third argument (`jal` at 0x374, 0x3b0 and 0x3e4).
  A nonzero helper result branches to the reset path (`bnez` at 0x338, 0x350, 0x364, 0x37c, 0x3b8 and 0x3ec). That path calls `odsy_i2cReset` (`jal` at 0x400).
  It returns 0 after successful reads or 1 after reset (`jr` at 0x414).
- `odsy_2abGetReply` (`odsy_ddc.o`, offset 0x31e8, 560 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  It first calls `odsy_i2c_stop` (`jal` at 0x3200). It zeros the output word through its third argument (`sw` at 0x321c).
  It enters slave receive mode with values 1 and 0x28 and a local buffer (`jal` at 0x3218).
  The call arguments are a1=1, a2=0x28 and a3=sp-112.
  It calls the receive helper into that buffer with mode values 1 and 0x80 (`jal` at 0x328c and 0x32dc).
  Those call arguments include a1=1, a2=1 or 0x80 and a3=sp-112.
  It calls `odsy_i2cFixupAfterErr` on several paths and delays through `odsy_usdelay` (`jal` at 0x322c, 0x3264, 0x329c, 0x32f0, 0x33ac, 0x33c4 and 0x33e4).
  It returns -1 on most error paths, 0 on the path at 0x32b4, and otherwise the count in the output word when the final byte matches the running checksum (`lw` at 0x340c, `jr` at 0x324c).
- `odsy_i2cPLLRegWrite` (`odsy_ddc.o`, offset 0x4c, 140 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  It reads the port byte at +32 and starts a transfer (`lbu` at 0x5c, `jal` at 0x70).
  It sends the second argument, then the third argument with final flag 1 (`jal` at 0x88 and 0xa0).
  The second send uses a1=a2 and a3=1.
  A nonzero result from any operation branches to reset (`bnez` at 0x78, 0x90 and 0xa8).
  The reset path calls `odsy_i2cReset` (`jal` at 0xbc).
  It returns 0 when the transfer completes or 1 after reset (`jr` at 0xd0).
- `odsy_i2cPLLRegRead` (`odsy_ddc.o`, offset 0xd8, 176 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  It reads the port byte at +32 (`lbu` at 0xe8). It starts a transfer and sends the second argument (`jal` at 0xfc and 0x114).
  It starts again (`jal` at 0x138).
  It then receives into the third argument (`jal` at 0x150, with a3=a2).
  A nonzero result from any operation branches to the reset path (`bnez` at 0x104, 0x11c, 0x140 and 0x158). That path calls `odsy_i2cReset` (`jal` at 0x16c).
  It returns 0 after the receive or 1 after reset (`jr` at 0x180).
- `gfP_OdsyDIAGfreeScanbuf` (`odsy_diag.o`, offset 0x214, 144 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`.
  It locks the mutex at board record +22008 with priority 25 (`jal` at 0x23c, arguments a0=record+22008 and a1=25).
  If the client matches the owner at +22056, it unmaps pages at +22040 and frees the buffer at +22024 for the size at +22048 (`bne` at 0x24c, `jal` at 0x258 and 0x264).
  It clears the owner, size and pointers (`sd` at 0x26c, `sw` at 0x270, `sd` at 0x274 and 0x278).
  It always releases the mutex (`jal` at 0x280) and stores 0 through its fourth argument (`sw` at 0x2a0).
- `gfP_OdsyDIAGreleaseShadowPtrs` (`odsy_diag.o`, offset 0x53c, 212 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`.
  It locks the mutex at board record +22064 with priority 25 (`jal` at 0x568, arguments a0=record+22064 and a1=25).
  A matching client and owner at +22080 enters cleanup (`beq` at 0x574). A mismatch stores 1 through the result pointer (`sw` at 0x58c).
  The cleanup path calls `odsyUnmapPages` for the shadow pointer and four regions (`jal` at 0x5ac and 0x5c8).
  The loop repeats while its index is below four (`bnez` at 0x5d4).
  It clears the owner and stores 0 through the result pointer (`sd` at 0x5dc, `sw` at 0x600). It then releases the mutex (`jal` at 0x5e0).
  The return is 0 or 1 (`jr` at 0x608).
- `gfP_OdsyDIAGreset` (`odsy_diag.o`, offset 0x938, 72 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`.
  It takes the board pointer from the request at +32 (`ld` at 0x948), calls `odsyReset` with the third argument (`jal` at 0x94c), then calls `odsyInitDBE` with that board, `default_timing` and flag 0 (`jal` at 0x95c).
  It stores 0 through the fourth argument and returns 0 (`sw` at 0x97c, `jr` at 0x978).
- `odsy_dmawait_timeout` (`odsy_dma.o`, offset 0x1e38, 56 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  The timeout callback logs at severity 1 (`jal` at 0x1e50), then calls `odsy_teardown` with its board argument (`jal` at 0x1e58).
- `odsy_dmawait_harmless_timeout` (`odsy_dma.o`, offset 0x1e70, 56 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  The nonfatal timeout callback logs at severity 7 (`jal` at 0x1e88), then broadcasts on the board's synchronization variable at +2488 (`jal` at 0x1e90; argument formed at 0x1e94).
- `odsy_DmaRegion_Pin` (`odsy_dma.o`, offset 0x1e8, 104 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  A nonzero pinned flag at +52 returns 0; a zero flag proceeds to `useracc` (`beqz` at 0x1f4, `jal` at 0x218).
  It pins the address at +32 and length at +40 with mode 0x110 and extra flag 0 (`jal` at 0x218). An error is returned unchanged; success sets +52 to 1, rebuilds the translation list and returns 0 (`beqz` at 0x224, `sw` at 0x240, `jal` at 0x23c).
- `odsyDMAWait` (`odsy_dma.o`, offset 0x1ea8, 984 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  A set teardown word at board +728 returns 9; otherwise it takes the mutex at +2472 (`lw` at 0x1ec0, `beqz` at 0x1ed0, `jal` at 0x1ef0).
  Mode 0 arms a 1500-tick harmless timeout and sleeps on the variable at +2488; a nonzero mode checks the requested tag against the issued and completed counters at +3544 and +3552, then waits on the matching ring entry when it is still pending (`beqz` at 0x1f08; `jal` at 0x209c and 0x20bc; `jal` at 0x2160 and 0x2194; `ld` at 0x1f1c and 0x1f20).
  The ring index and 128-entry table are at +2512 and +2520 (`lw` at 0x2114, `ld` at 0x2120 and 0x2128). Out-of-window or mismatched tags log and return 22 (`jal` at 0x221c and 0x2240); context cleanup releases pinned ranges and ids and destroys completed records (`jal` at 0x2030, 0x2040, 0x1fe8 and 0x1ff4).
  A null context argument returns 0 after writing -1 through the tag pointer (`beqz` at 0x1f8c, `sd` at 0x1fe0); a return of 22 after the wait also writes -1 there (`sd` at 0x21d8, `jr` at 0x1ed8).
- `odsyDMAWakeup` (`odsy_dma.o`, offset 0x2280, 720 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Under the mutex at board +2472, it processes completed entries from the 128-slot table at +2520 using the ring index at +2512 and counters at +3544 and +3552 (`jal` at 0x229c; `ld` at 0x22bc and 0x22c0, `lw` at 0x22f0 and 0x22f4).
  For a completed entry it frees its transfer buffer, clears its size, pointer and busy fields, writes the completion tag to the host page at board +760, wakes and destroys the entry wait variable, and frees the entry when no pinned range remains (`jal` at 0x23dc, `sw` at 0x23e4, `sd` at 0x23e8 and `sw` at 0x23ec, `sd` at 0x23f8, `jal` at 0x2360, 0x2368 and 0x2414).
  It broadcasts on the queue variable at +2488 and writes the adjusted ring index to the completion halfword (`jal` at 0x244c, `sh` at 0x254c). Invalid counts or missing entries are logged at severity 4 (`jal` at 0x24c4, 0x24e0, 0x24f8 and 0x2514).
- `odsy_DmaRegion_UnPin` (`odsy_dma.o`, offset 0x250, 88 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  When the pinned flag at +52 is set, it calls `unuseracc` on the address at +32 and length at +40 with mode 0x110, then clears the flag (`beqz` at 0x25c, `jal` at 0x274, `sw` at 0x278).
  If the translation-list pointer at +0 is nonzero, it frees the list using its size at +8, then clears both fields (`beqz` at 0x280, `jal` at 0x288, `sw` at 0x290 and `sd` at 0x294).
- `odsyDMAFinish` (`odsy_dma.o`, offset 0x2550, 268 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  It waits in mode 1 for the context's two tags at +168 and +176, then locks the board mutex at +2472 (`jal` at 0x256c and 0x2580; `jal` at 0x2598).
  It walks the transfer set at context +312, frees each transfer buffer, releases pinned pages with mode 0x110 and frees each 72-byte record (`jal` at 0x25a0, 0x25a8, 0x25f8 and 0x260c; `jal` at 0x25c4, with a1=0x48).
  It destroys the set and releases the mutex (`jal` at 0x2628 and 0x2634).
- `gfP_OdsyMMwaitXfr` (`odsy_dma.o`, offset 0x265c, 248 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  It initializes the result word to 0 and checks the teardown flag at board +728 (`sw` at 0x265c, `lw` at 0x266c, `bnez` at 0x2680). A set flag only logs at severity 4 (`jal` at 0x26ec) and the routine carries on.
  It follows the current client from manager +72 and then +112; a missing client logs and returns 1 (`ld` at 0x2688 and 0x268c, `beqz` at 0x2694, `jal` at 0x270c).
  It copies an 8-byte tag from the user pointer, waits in mode 1 through `odsyDMAWait`, and stores that result (`jal` at 0x26a8 and 0x26c0; `sw` at 0x26d0). Copy failure logs and returns 14 (`bnez` at 0x26b0, `jal` at 0x2734, `sw` at 0x2750).
- `ConstructTftchWarList` (`odsy_dma.o`, offset 0x2754, 760 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  It splits a transfer into pieces sized for a 0x24000-byte staging area (`ori` at 0x277c). The descriptor's row length is the low 20 bits of +24 plus +20 (`lw` at 0x279c and 0x27a0, `and` at 0x27a4, `addu` at 0x27a8); an oversized row logs and returns 1 (`bnez` at 0x27b0, `jal` at 0x2a00).
  When the transfer offset fits in the staging area it writes a single piece and count 128 (`beqz` at 0x2794, `sw` at 0x2984 and 0x2994, `sd` at 0x2988 and 0x29b8, `sw` at 0x29e0). Otherwise it allocates and fills linked 48-byte piece records, advancing rows and host pointers; allocation failure logs and returns 1 (`jal` at 0x2830, `beqz` at 0x2844, `slt` at 0x2920, `beqz` at 0x2924, `jal` at 0x2a38).
- `ReleaseTftchWarList` (`odsy_dma.o`, offset 0x2a4c, 80 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  A count below 2 frees no array; otherwise it calls `kmem_free` on the pointer at +8 with size 48 times the count minus 48 (`lw` at 0x2a4c, `beqz` at 0x2a5c, `dsll` at 0x2a78 and 0x2a84, `dsubu` at 0x2a7c, `daddiu` at 0x2a90, `jal` at 0x2a8c).
  It clears the count and pointer fields at +0 and +8 (`sw` at 0x2a64, `sd` at 0x2a68).
- `odsy_DmaRegion_DoTransfer` (`odsy_dma.o`, offset 0x2a8, 188 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  It converts the region's page-table pointer at +0 to a physical address with `kvtophys` (`jal` at 0x2bc).
  It sends two doublewords through the FIFO window at register base +0x110000. Bit 2 of its third argument selects the high word of the first doubleword, 0xe03 when set and 0xe01 when clear; the physical-address fields are packed the same way on both paths (`andi` at 0x2f0, `beqz` at 0x310, `addiu` at 0x2c4 and 0x350, `sd` at 0x340 and 0x34c). It returns 0 (`jr` at 0x348).
- `generatePageTable` (`odsy_dma.o`, offset 0x430, 1076 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  It reads row count bits 31:16 from the descriptor at +12 (zero means 65536), row length bits 19:0 at +24 and stride at +20 (`lw` at 0x4c8 and 0x4d8, `lwu` at 0x4fc; `movz` at 0x4ec).
  With no supplied address list it creates one and fills it from the buffer, using the user or kernel conversion call selected by the address threshold (`jal` at 0x69c, `beqz` at 0x6bc, `jal` at 0x6cc and 0x6fc).
  It reads list pieces of up to 0x4000 bytes and writes each piece's address and byte count into the output table (`jal` at 0x53c and 0x614, each with a2=0x4000; `sw` at 0x660 and 0x670). It logs list errors and destroys a list it created (`jal` at 0x5d0, 0x7b4, 0x7f0, 0x81c, 0x838 and 0x4a0).
- `odsy_dma_poll_timer` (`odsy_dma.o`, offset 0x864, 28 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  The timer callback releases the polling semaphore by calling `vsema` on the semaphore in static data (`jal` at 0x86c).
- `DmaFinishedPollDelay` (`odsy_dma.o`, offset 0x880, 80 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  It initializes a zero-count semaphore, schedules `odsy_dma_poll_timer` after 25 ticks, and waits on the semaphore at priority 25 (`jal` at 0x89c, 0x8ac and 0x8bc; the tick count is a2=0x19 at 0x8a4 and the wait priority is a1=0x19 at 0x8b8).
- `odsyDestroyDrawable` (`odsy_drawable.o`, offset 0x10c, 32 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  It frees the drawable record passed as its second argument with size 40 (`jal` at 0x118, with a0=a1 and a1=0x28).
- `odsyBindDrawable` (`odsy_drawable.o`, offset 0x12c, 684 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  A `which` value of 1 selects the read binding at context +352; every other value selects the draw binding at +400 (`beq` at 0x150, `sw` at 0x16c and 0x174).
  It forms the drawable key from the corresponding context drawable state, locks and searches the 13-bucket table at board +10520, and promotes the lock on a hit (`ld` at 0x15c, `lw` at 0x160, `jal` at 0x1bc and 0x1cc, `jal` at 0x1e8).
  It fills the binding record from the drawable or board buffer state, releases the lock and returns 0; a failed promotion returns 13 and a missing drawable record returns 22 (`sw` at 0x238 and 0x308, `beqz` at 0x1f0 and 0x230, `jal` at 0x204 and 0x3a4, `jr` at 0x2d4, `jal` at 0x3c4).
- `odsyUnbindDrawable` (`odsy_drawable.o`, offset 0x3d8, 388 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  A `which` value of 1 selects the read binding at context +352; other values select the draw binding at +400 (`beq` at 0x3e8).
  If the binding is active and references a shared drawable, it looks up the key in the table at board +10520 under the lock at +10528, promotes the lock, and decrements the drawable's user count (`beqz` at 0x400, `jal` at 0x444, 0x458 and 0x468, `sw` at 0x484).
  When the count reaches zero it removes the drawable and calls `odsyDestroyDrawable`; it then clears the binding key and flag bits 0 and 1 (`jal` at 0x508 and 0x528, `sw` at 0x4ac and 0x4b8). Missing entries return 22 and failed promotion returns 13 (`beqz` at 0x460 and 0x470, `jr` at 0x4c4).
- `odsyFindDrawable` (`odsy_drawable.o`, offset 0x5c, 108 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  It takes the read lock at board +10528, looks up the key in the table at +10520, releases the lock and returns the lookup result (`jal` at 0x78, 0xa0 and 0xac).
- `odsyCreateDrawable` (`odsy_drawable.o`, offset 0xc8, 68 bytes): **established.**
  Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  It allocates a 40-byte record; if allocation succeeds it clears +32 and stores its second argument at +16, otherwise it returns 0 (`jal` at 0xd8, `bnez` at 0xe4, `sw` at 0xf8 and 0x100, `jr` at 0x104).
