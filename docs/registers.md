# Board registers, one entry each

Release IRIX 6.5.30m, IP30 kernel objects (`odyssey.a` members) unless a row says otherwise. Every row starts with a board offset, the number the kernel adds to the PIO base it keeps at board record +824. The access column gives the width the code uses. The labels are **established** (read from the instruction stream, with the function) or **inferred** (a reading, with its reason). Offsets that end in 4 or c are the low word of an 8-byte register, which is why the FIFO-level register is loaded at 0x106c. The IP35 objects store the same offsets in the same order (`docs/kernel.md`).

Bit-level detail of the flags and status words is in `BUZZ.h`; the display-side registers behind the display FIFO are in `docs/pbj.md`.

## Crossbar widget header (0x00 to 0x5c)

The layout of this block is published in the shipped header usr/include/sys/xtalk/xwidget.h (6.5.30) and in the public Linux IP30 port's asm/xtalk/xwidget.h. The board follows it.

| Offset | Access | Role and derivation |
|---|---|---|
| 0x4 | load 32 bits | **established.** Widget identification word. `odsyGatherInfo` (`odsy_init.o`) takes bits 31:28 as the revision type, stores it at record +264 and dispatches on it through a 16-entry jump table; the part number 0xc013 and manufacturer number 35 that `odsy_init` registers for this widget are the other fields of the same word, by the xwidget.h layout. |
| 0xc | load 32 bits | **established.** Widget status word, loaded first by `odsyXtErrorInterrupt` (`odsy_intr.o`) on every crossbar error interrupt. It tests bit 8 (logs "Response Time-out Error"), then bit 7 ("Address Error", the only case that tears the board down), then bit 6 ("Packet Format Error"), and logs a catch-all message when none is set. |
| 0x14 | load 32 bits | **established.** Upper error-address word. Only the address-error branch of `odsyXtErrorInterrupt` (`odsy_intr.o`) loads it; the handler masks it with 0xffff0000 and prints the result as the "hi error" value, while the "hi addr" it prints is a constant 0. By the xwidget.h layout its low 16 bits would be address bits 47:32, which the handler discards. |
| 0x1c | load 32 bits | **established.** Lower error-address word. The address-error branch of `odsyXtErrorInterrupt` (`odsy_intr.o`) prints it unmodified as "lo addr", next to the header from 0x44 and the 0x14 word. |
| 0x24 | load and store 32 bits | **established.** Widget control word. `odsyReset` (`odsy_init.o`) reads it into a record shadow before each step that resets the link, among them `odsyLowLevelReset`, and stores the shadow back afterwards, because the link reset clears it (31 sites). Its final store is the widget id (record byte +793) OR 0x4200: by xwidget.h that sets bit 9 (big-endian system) and the value 4 in the crossbar credit field, bits 15:12. |
| 0x34 | store 32 bits | **established.** Upper half of the widget's interrupt destination (`odsy_init.o`), written by `odsyInitInterrupts` and again by `odsyDisableInterrupts`. Value: error-source vector in bits 31:24, bits 23 to 21 set, crossbar target number from `xtalk_intr_target_get` in bits 19:16, address bits 47:32 in 15:0. `odsyDisableInterrupts` clears bit 21, so that bit is the source's enable (inferred from the pair). |
| 0x3c | store 32 bits | **established.** Lower half of the same interrupt destination: `odsyInitInterrupts` (`odsy_init.o`) stores address bits 31:0 of the error source, the 64-bit value kept at record -19688, here right after the 0x34 word. By xwidget.h this is the interrupt-destination lower-address slot. |
| 0x44 | load and store 32 bits | **established.** Error command word. `odsyXtErrorInterrupt` (`odsy_intr.o`) loads it before anything else, prints it as "xt header", and ends every call by storing 0 to it; the "Fatal widget error (header = ...)" message of the two non-address cases repeats it. The xwidget.h layout splits it into destination, source, packet type and transaction fields. |
| 0x5c | store 32 bits | **inferred.** Crossbar interrupt configuration word, by its position beside the 0x34 and 0x3c destination words; the Linux `xwidget.h` header stops at 0x54. `odsyInitInterrupts` (`odsy_init.o`) builds it as bit 13 set, bits 12 to 8 cleared, then bits 12 to 10 and the low byte set, and `odsyReset` zeroes it as the last of its interrupt-state stores. |

## System block (0x1000 to 0x10d4)

| Offset | Access | Role and derivation |
|---|---|---|
| 0x1004 | store 32 bits | **established.** SDRAM configuration word, written only by `odsyReset` (`odsy_init.o`): first the master widget id in bits 22:19, then banks (bit 2), CAS latency (bit 1) and size code (bits 4:3) from the strap read at 0x106c, then bit 5 cleared, set, written and cleared again with 400 us waits, and bit 8 last. |
| 0x100c | store 32 bits | **inferred.** Abort and reset register. `odsyLowLevelReset` (`odsy_init.o`) writes 0x200 on newer host chips, otherwise the six single bits that add up to 0x16d, and then 0, with a long wait between. |
| 0x1014 | load and store 32 bits | **established.** The flags register. `odsyFlagInterrupt` (`odsy_intr.o`) reads it; `odsyHiwaterInterrupt` stores 0x200 to it when the status word still shows the command FIFO below the low-water mark, and `gfP_OdsyDIAGdma` clears bit 11 with a read-modify-write. |
| 0x101c | store 32 bits | **established.** Flag-clear register, write-one-to-clear: `odsyReset` stores all ones, `odsyHiwaterInterrupt` stores 0x200 (the command FIFO low-water flag) before it re-arms, `odsyDMAOp` (`odsy_dma.o`) stores 0x800 (the DMA-done flag) before each transfer, and the flag interrupt handler stores the pending bits it has just served. |
| 0x1034 | load and store 32 bits | **established.** Flag interrupt-enable mask. `odsyFlagInterrupt` (`odsy_intr.o`) loads it and ANDs it with the flags; `odsyInitInterrupts` stores the start-up mask built by read-modify-write, the high-water handler stores the shadow with bit 9 set, and `odsyLoadTimingTable` sets bit 31 before it writes the genlock word. |
| 0x103c | store 32 bits | **established.** Interrupt-enable clear register: `odsyLowaterInterrupt` (`odsy_flow.o`) stores 0x200 here to turn the low-water interrupt off, and `odsyDisableInterrupts` and `odsyReset` store all ones. |
| 0x1044 | store 32 bits | **established.** Interrupt control, high half for the flag, DMA, retrace and sync sources, written by `odsyInitInterrupts` (`odsy_init.o`) and zeroed by `odsyReset`: crossbar target number in bits 28:25, bit 29, bits 24 to 22, bit 19 and bits 18 to 16 set, and address bits 47:32 of the flag-source destination in 15:0. `odsyDisableInterrupts` clears bits 18 to 16. |
| 0x104c | store 32 bits | **established.** Low half of the shared interrupt destination: `odsyInitInterrupts` (`odsy_init.o`) stores the 32 low bits of the address the crossbar allocator returned for the flag source (record -19680), and `odsyReset` zeroes it. |
| 0x1054 | store 32 bits | **established.** Four interrupt vectors packed one per byte: flag source in bits 7:0, DMA source 15:8, retrace source 23:16 and sync source 31:24, each taken from the number `xtalk_intr_vector_get` returned. |
| 0x105c | store 32 bits | **inferred.** A further interrupt control word of the same group: `odsyInitInterrupts` (`odsy_init.o`) builds it with the crossbar target number repeated at bits 9:6, then bits 19:16, then bits 29:26, plus fixed bit runs, and `odsyReset` zeroes it. Its place between the vector word and the flow registers, and the repeated target number, are the basis for the role. |
| 0x1064 | load 32 bits | **established.** Status word 0, read by `odsyHiwaterInterrupt` (`odsy_flow.o`), which tests bit 17 (command FIFO below low-water) to decide whether to raise the low-water flag by hand, and printed by `odsyPrintRegs` after a fatal error. |
| 0x106c | load 32 bits | **established.** FIFO levels: bits 6:0 display FIFO fill, bits 15:7 command FIFO fill, loaded at 25 sites in 13 binaries, among them `odsy_poll_dfifo_level` (`odsy_retrace.o`); `odsyGatherInfo` also decodes bits 31:24 once at attach as the board's strap byte (SDRAM size, banks, CAS latency, clock-part variant). The standalone driver's `sys.fifo_levels` is polled at 0x1068 for the same fields. |
| 0x1074 | store 32 bits | **established.** Flow-control configuration. The attach sequence inlined in many kernel routines, for example `gfP_OdsyClearBuffer` (`odsy_clip.o`), stores a word whose bits 16:12 are the credit target number from `gfx_flow_credit_tnum_get`; `odsyReset` zeroes it. |
| 0x107c | store 32 bits | **inferred.** Flow-control off switch: stored 0 when a process attaches to flow control and 1 just before `gfx_flow_detach_me` in `odsyInitCfifo` (`odsy_init.o`), which is why a 1 is read as "flow control disabled". |
| 0x1084 | store 32 bits | **established.** Flow-control clear: a clear-set-clear pulse stored by `odsyReset` (`odsy_init.o`); `gf_OdsyInitialize` repeats the three-store shape after it has waited, in 5 us steps, for the command FIFO level to reach 0. |
| 0x10b4 | store 32 bits | **inferred.** Per-window buffer-swap trigger, one bit per window id (32 ids). `odsySwapBuffer` (`odsy_retrace.o`) stores the ids whose driver buffer shadow (record +28528) differs from the wanted buffer word (record +28572), and `odsyRetraceHandler` stores the bit of a window whose swap has waited too many retraces. |
| 0x10bc | store 32 bits | **inferred.** Per-window swap-timing select, one bit per window id: `odsyReset` stores 0, `gf_OdsySchedSwapBuf` stores the mask of the swap group, and `odsySwapBuffer` (`odsy_retrace.o`) stores the same mask minus the windows it has finished. |
| 0x10c4 | store 32 bits | **inferred.** Buffer-B select set register: `odsySwapBuffer` (`odsy_retrace.o`) and `gf_OdsySetDisplayMode` store the window ids whose new front buffer is B here, and the complementary ids to 0x10cc; it is the set twin of the clear register that follows. |
| 0x10cc | store 32 bits | **established.** Buffer-B select clear register: `odsyReset` (`odsy_init.o`) stores all ones to put every window id on buffer A; `odsySwapBuffer` stores the ids whose front buffer goes back to A. |
| 0x10d4 | load 32 bits | **inferred.** Read-back of the buffer select each window currently shows: `odsyRetraceHandler` (`odsy_retrace.o`) loads it once per retrace and XORs it with its record copy at +28528 to find the windows whose buffer changed. |

The four registers between the flow group and the swap group are each stored once, with zero, by `odsyReset`, and never read:


0x109c is stored 0 by `odsyReset` at one site and read nowhere: no shipped software or published source depends on its role, routes tried: the same binary scan, the standalone driver's reset path, and its two diagnostic registers `diag_base_addr_lo` and `diag_mode`, which that driver zeroes but which could not be paired to an offset without the board's register header.

0x10a4 is stored 0 by `odsyReset` at one site and nowhere else: no shipped software or published source depends on its role, routes tried: the binary scan, the standalone driver's reset path, and the shipped xwidget.h header, which stops at 0x54.

0x10ac is stored 0 by `odsyReset` at one site and nowhere else: no shipped software or published source depends on its role, routes tried: the binary scan, the standalone driver's reset path and the diagnostic-register candidates named at 0x109c.

## Context-save and statistics group (0x4000 to 0x405c)

| Offset | Access | Role and derivation |
|---|---|---|
| 0x4004 | store 32 bits | **established.** High 16 bits of the physical address of the context-save buffer: `gf_OdsyPcxSwap` (`odsy_ctxsw.o`) converts a record's buffer with `kvtophys`, stores bits 47:32 here and the low word at 0x400c, then calls `odsyMMvalidatePcxSwap`. |
| 0x400c | store 32 bits | **established.** Low 32 bits of the same context-save buffer address, stored by `gf_OdsyPcxSwap` (`odsy_ctxsw.o`) right after 0x4004 and followed by a `sync` before the save request goes to 0x118000. |
| 0x4014 | store 32 bits | **established.** Master-id control word of the 0x4000 group, written once by `odsyReset` (`odsy_init.o`): bits 15:0 set to 0x12, bit 18 and bit 24 set, bits 19:16 otherwise clear, and the widget master id (record byte +792) in bits 23:20. Its twin with the id in a different place is 0x4044. |
| 0x401c | store 32 bits | **established.** High half (bits 47:32) of the physical address of the 16 KB statistics region: `odsyInitPfRgn` (`odsy_diag.o`) writes it after converting the buffer address, `odsyDestroyPfRgn` and `odsyReset` write 0. Each write is followed by a sync. That the board writes into the region is inferred from the pin-and-map step. |
| 0x4024 | store 32 bits | **established.** Low half (bits 31:0) of the statistics region address, written by `odsyInitPfRgn` (`odsy_diag.o`) after the 0x401c store and cleared with it; the same hi/lo split as the shadow-region pair at 0x4034 with its low word 0x403c. |
| 0x402c | store 32 bits | **established.** Statistics control word built by `gfP_OdsyPerfStat` (`odsy_diag.o`) from a 24-byte user argument: bits 3:0 and bits 4 to 6 from argument bytes 16 to 19, bits 10:8 from byte 21, bit 7 cleared, and bit 31 plus bit 27 always set. `odsyReset` zeroes it. |
| 0x4034 | store 32 bits | **established.** High half of the physical address of the hardware-shadow cache region: `gf_OdsyStart` (`odsy_init.o`) converts the 128 KB host buffer at record +880 and stores bits 47:32 here, `odsyReset` stores 0. The pairing with the context-save pair at 0x4004 makes it an address the board writes through (inferred). |
| 0x403c | store 32 bits | **established.** Low half (bits 31:0) of the shadow cache region address, stored by `gf_OdsyStart` (`odsy_init.o`) straight after the 0x4034 word and zeroed by `odsyReset`. |
| 0x4044 | store 32 bits | **established.** Master-id word of the second control pair, written once by `odsyReset` (`odsy_init.o`): the master widget id (record byte +792) in bits 7:4, bit 16, bits 15:14 and bits 3:2 set, and every other bit cleared by the 0x1ffff mask. Compare 0x4014, which carries the id in bits 23:20. |


0x4054 is stored 0 by `odsyReset` at one site and read nowhere: no shipped software or published source depends on its role, routes tried: the binary scan for the offset and the standalone driver's reset path.

0x405c is stored 0 by `odsyReset` at one site and read nowhere: no shipped software or published source depends on its role, routes tried: the binary scan for the offset and the standalone driver's reset path.

## FIFO ports and windows

| Offset | Access | Role and derivation |
|---|---|---|
| 0x110000 | store 32 bits or 64 bits | **established.** Command FIFO port: every FIFO word the kernel sends (the textport routines of `odsy_tport.o`, `odsyInitCfifo`) is a 32- or 64-bit store at this offset from the PIO base, and `gf_OdsyMapGfx` maps the page at client offset 0x10000 for privileged clients. |
| 0x118000 | store 64 bits | **established.** Context-save request port: `gf_OdsyPcxSwap` and `gfP_OdsySaveHwShadow` (`odsy_ctxsw.o`) store one doubleword here, (7 << 40) OR (slot << 16) OR 1, slot 127 meaning a save with no switch, after announcing the incoming record at 0x4004 plus 0x400c. |
| 0x120000 | store 32 bits or 64 bits | **located.** Client window at offset +0x4000 of the client library's mapping, mapped by `gf_OdsyMapGfx` (`odsy_map.o`) for every client. The one constant-displacement access seen is a 32-bit load that discards its result at +0x4004, in `__glOdyGetFromHardware`, straight after the tag word is written to the command FIFO. The role of the window is unknown; the kernel never touches the offset. |
| 0x201594 | load 32 bits | **located.** Read by `odsyInitCfifo` (`odsy_init.o`) once the routine has stored the class-1 word 0x00010046 (block 0x046, no operands) to the command FIFO and waited 2000 us, and compared against 0x003d0046, whose low half repeats the block id; the word lies in the 0x200000 window `gf_OdsyMapGfx` hands to privileged clients. What the word reports, and what else the window holds, is unknown: only the compare value and the position are known. |
| 0x400000 | store 64 bits | **established.** Display FIFO port: 64-bit stores only, one per update, from 32 routines including `gf_OdsySetDisplayMode` (`odsy_retrace.o`) and `odsyBlankScreen`. Each doubleword is a header (type, address) and a data word for the display back end (`PBJ.h`, `DISPLAY.h`). |
