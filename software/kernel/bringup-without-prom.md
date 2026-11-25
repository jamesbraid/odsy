# Bringing the board up without a PROM, in order

The ordered list a driver needs to take a VPro board from power-on to a drawable 1280 x 1024 console, with every wait, from the IP35 kernel build and cross-checked against the IP35 and IP30 PROMs. Release IRIX 6.5.30m, `odsy_init.o` and `odsy_tport.o` of `usr/cpu/sysgen/IP35boot/odyssey.a` (disassembly in `software/kernel/ip35/disasm/`), the inflated IP35 BASEIO PROM and `IP30prom.bin` ([prom-board-handoff.md](../firmware/prom-board-handoff.md)). Labels: **established** (code read, routine named), **inferred**, **unknown**. Offsets are board PIO offsets from the 0x401000-byte window unless a "widget" word is named; the command FIFO is the port at +0x110000, the display FIFO the port at +0x400000. Every store is followed by a `sync`.

The kernel's own start-up is split across `odsy_earlyinit` (reset), `odsy_attach`, `gf_OdsyInitialize` and the textport start (`odsy_tpinit`: command FIFO, microcode, timing, stored stream). The reset followed by the textport start is the shortest complete path to a drawing board and the one the PROM's console install copies, so the list below follows it. The PROMs run the same steps in the same order from the same source, except that they skip steps 3.2 and 3.3 and the bit 8 store of step 3.8 ([prom-board-handoff.md](../firmware/prom-board-handoff.md)).

## The list

Delays are in microseconds as the driver's delay routine takes them. "Poll" means a loop that re-reads until the condition holds; none of the polls below has an iteration limit in the kernel or the PROMs.

1. **Host side, before the first board access (IP35 only).** The driver calls the host kernel's widget-flag routine with flag 1 for the board's node and widget, and, after the timing choice and before the register zeroing (step 3.7), either the same routine with flag 2 (when bits 15:12 of the first doubleword of the driver's global mutex read 4, purpose **unknown**, or `get_chimera_type` for the node is nonzero) or, when neither holds, the PIO-ordering routine (`hub_set_piomode`) with mode 2, repeated for a second node recorded in the board record when it differs (`odsyReset`, IP35). The register effects belong to the host chip (Bedrock and XBridge), not the board: **unknown** here; the IP35 chips workspace is the place to settle them. **established** that the calls are there; **inferred** that they enable widget PIO and set a strict write order.
2. **Attach (`odsy_attach`).** Map the board's registers, 0x401000 bytes from widget offset 0. Read the widget identity at +0x04. Bits 27:12 must be part 0xc013, bits 11:1 manufacturer 0x23, and the revision nibble in bits 31:28 one of 1 to 3 or 9 to 15 (any other value is "Invalid buzz rev type"). When the nibble is 2 or more, read the manufacturing record through the serial-number part at +0x10dc (a one-wire reader, not needed to draw). **established.**
3. **Reset (`odsyReset`),** run once by `odsy_earlyinit` (and by the PROM scan) and again, up to six times, by `odsy_tpinit` whenever step 5 fails; the PROM does not retry. Steps 3.1 to 3.9:
   1. `odsyLowLevelReset`: on IP35 only the 0x200 form. Store 0x200 to +0x100c, `us_delay(1000000)` (the IP35 PROM uses 200000; the IP30 PROM uses 200000 on both of its forms), then the host-chip mask restore (host side, up to four tries). End with `us_delay(100000)`. **established.**
   2. Widget +0x24 = widget id (record byte 793) | 0x4200, `us_delay(100000)`. The PROMs skip this step. **established** as stores; the field meanings of widget +0x24 are **unknown**.
   3. +0x1004 = (host widget master id & 0xf) << 19. **established.**
   4. `odsyGatherInfo`: read +0x106c; bits 31:30 size code (0 -> 32 MB, 1 -> 64, 2 -> 128, 3 -> 33 recorded and 128 programmed), bit 29 banks (0 -> 2, 1 -> 4), bit 28 CAS latency (1 -> 2, 0 -> 3), bits 27:24 board revision ([board/README.md](../../devices/board/README.md)). This is the whole memory-sizing step: the driver never writes to board memory to size it. **established.**
   5. `odsyMMinit` (host memory-manager state only), then `odsyInitDBE` with quick = 1: wait for the display FIFO level (low seven bits of +0x106c) to reach 10 or less; display-FIFO writes 0x2b00 = 0 five times and 0x2700 = 0x0006d3e0; wait for level 0; read 0x2483 and 0x2482; initialise the two I2C ports; probe the option card, compositor, Rainier and Denali parts and the monitor over I2C; `odsyConfigFb` for 1280 x 1024 at depth 8; with quick = 1 write 0x2802 = 0 and 0x2803 = 0. Then `odsyGatherInfo` a second time with its second argument 0. **established** ([kernel.md](kernel.md), "odsyInitDBE"; [pbj/PBJ.h](../../devices/pbj/PBJ.h) section 6).
   6. Timing choice: the kernel option `monitor` (a value of exactly "72hz" picks the 72 Hz table on variant-1 boards, "60hz" or anything else the 60 Hz one). **established.**
   7. Zero the interrupt, engine and routing registers, in this order: 0x103c = 0xffffffff, 0x101c = 0xffffffff, then zero to 0x1044, 0x104c, 0x1054, 0x105c, 0x1074, 0x107c, 0x108c, 0x109c, 0x10a4, 0x10ac, 0x401c, 0x4024, 0x402c, 0x4034, 0x403c; 0x4044 = 0x0001c00c | (master id << 4); 0x4014 = 0x01040012 | (master id << 20); zero 0x404c, 0x4054, 0x405c; 0x10bc = 0; 0x10cc = 0xffffffff ([kernel.md](kernel.md), "odsyReset order of operations" and the IP35 note). **established** for the values; the roles are **inferred**.
   8. Memory configuration, word built from step 3.4 and the step 3.3 value: bit 2 = 4 banks, bit 1 = CAS latency 2, bits 4:3 = 0, 1 or 2 for 32, 64 or 128 MB (size code 3 also gets 2). `us_delay(400)` first, then stores to +0x1004 with bit 5 cleared (wait 400), bit 5 set (wait 400), the same word again (no wait), bit 5 cleared (wait 400), and bit 8 set (wait 400); read from both kernels' listings (the PROMs stop after the fourth wait and never store bit 8), and in line with [board/README.md](../../devices/board/README.md) "Memory configuration word". **established** for the stores and delays; what bit 5 and bit 8 do: **unknown**.
   9. Zero 0x34 and 0x1044, 0x103c = 0xffffffff, zero 0x1074, pulse 0x1084 as 0, 1, 0, 0x101c = 0xffffffff, zero 0x5c. **established.**
4. **Drain wait.** Poll +0x106c until bits 15:7 are zero, `us_delay(5)` between polls (`odsy_tpinit` at its start). On a freshly reset board this falls through at once. **established.**
5. **Command FIFO set-up.** Pulse +0x1084 as 0, 1, 0; store 0 to +0x1074 and 1 to +0x107c (flow control off); then `odsyInitCfifo`:
   1. block 0x0854 with operands 0 and 0x0fffffff;
   2. the five doublewords 0x6b0 = 0, 0x6b1 = 0x100, 0x6b3 = 0x5e50, 0x6b2 = 0x7dc0, 0x7b5 = 1 (register id in the high word);
   3. word 0x00010046, then `us_delay(2000)`;
   4. read +0x201594; it must read 0x003d0046, otherwise the routine returns without loading and step 3 runs again;
   5. words 0x2e008380, 0x2600807f, 0x27008000;
   6. 2048 instructions of the microcode array, each as six words `0x40008000 | (h & 0x3ff) | ((h >> 10) << 23)` for the six 16-bit halfwords h taken from the high end of the 12-byte record down;
   7. doubleword 0x7f0 = 0x3b9aca00.
   **established**, identical on IP35 and IP30 and in both PROMs. The meaning of the water marks, block 0x054 and 0x7f0 is **unknown** ([buzz/README.md](../../devices/buzz/README.md), "Reset: the fields the binaries cannot settle"): write the values.
6. **Display timing and scan-out.** `odsyInitDBE` with quick = 0, twice: first with the default timing pointer, then with the pointer step 3.6 left. Each call repeats the clock write, I2C probes and `odsyConfigFb`, writes 0x2802 = 1280 and 0x2803 = 1024, calls `odsyLoadTimingTable`, writes the 32 mode words 0x2900 to 0x291f and the eight words 0x2920 to 0x2927, zero to 0x2929 to 0x292c, and `odsyBlankScreen`. The PLL writes of the timing load go through the I2C ports with their own waits (`odsy_i2c.o`, [display/README.md](../../devices/display/README.md)). **established** as the call structure; the two-pass choice is as the kernel and both PROMs make it, the reason is **unknown**.
7. **Stored command stream.** Copy the 4165 words of the driver's `buzz_init` object to the command FIFO as plain 32-bit stores ([firmware-images.md](../firmware/firmware-images.md), "stored start-up command image"). **established.**
8. **Textport state.** Send the colour and raster-mode words of `ODSY_SET_GC` (blocks 0x021, 0x004 and 0x024). **established** from [kernel.md](kernel.md), "Command words the kernel emits".
9. **Interrupts, only if wanted.** Allocate five crossbar interrupts, program 0x3c, 0x34, 0x5c, 0x1054, 0x104c, 0x105c, 0x1044 in that order and last 0x1034 ([buzz/README.md](../../devices/buzz/README.md) section 6). The boot console does not need them: the PROM leaves them zero. **established.**

The state OpenBSD adds on top (sequencer registers, transform and raster blocks, display mode words, gamma) is in [prom-board-handoff.md](../firmware/prom-board-handoff.md) and [buzz/README.md](../../devices/buzz/README.md) section 11.

## The reset fields no software settles

Write what the shipped code writes; no shipped program reads any of these back, and no published source names them.

| Item | What is known | Grade |
|---|---|---|
| +0x100c | the IP35 PROM's register table (0xf4310 to 0xf4340 of the inflated image) calls the doubleword at 0x1008 `ODY_ABORT`, 10 bits wide (mask 0x3ff), and the one at 0x1000 `ODY_CONFIG`, 30 bits; the registers the driver writes are their low words at +0x100c and +0x1004 (**inferred** pairing); the driver writes 0x200 on IP35 and 0x16d (bits 8, 6, 5, 3, 2, 0) on older hosts, never reading it. Which bit aborts which unit is not named | width **established**; role **inferred**; bit meanings **unknown** |
| widget +0x24 | written with the widget id and 0x4200 around the reset; the same word is saved and restored by the host-chip steps | stores **established**; fields **unknown** |
| +0x1004 bits 5 and 8, and the width of the register | the PROM table gives 30 bits (`ODY_CONFIG`); bit 5 is pulsed, bit 8 set last by the kernels only | **unknown** |
| 0x4014, 0x4044 | values above | stores **established**; roles **inferred** ([buzz/README.md](../../devices/buzz/README.md) section 10) |
| +0x201594 | must read 0x003d0046 after the 0x46 word and the 2000 microsecond wait; mismatch aborts the microcode load | compare **established**; meaning **inferred** (ready word) |
| 0x6b0 to 0x6b3, 0x7b5, 0x7f0, block 0x054 | values above | stores **established**; roles **unknown** |
| mode words 0x2900 to 0x2927 | the kernel builds them from two uninitialised stack words, so the low 9 bits of the first 32 are zero and the rest is whatever the stack held | **unknown**; OpenBSD writes 0x905215a6 to the first 32 instead |

## Can the file program replace the built-in array?

- **established.** The shipped file `usr/gfx/ucode/ODSY/buzz_xform.bin` reaches the board through `gf_OdsyDownload` and `odsyDownloadUcode`, which send `0x27008000 | line` and then the same six-word encoding per 12-byte record, hardware line 0, at most 2047 lines, with the same encoding as `odsyInitCfifo`. They do not send 0x2e008380, 0x2600807f, the 0x46 word, the water-mark doublewords or 0x7f0; those exist only in `odsyInitCfifo`.
- **established.** On shipped systems the built-in array always loads first (every start-up path runs `odsyInitCfifo`), then `gfxinit` downloads the file. Nothing in IRIX loads the file program onto a freshly reset board.
- **inferred.** Substituting the file's first 2048 records for the array inside step 5.6, keeping every other word of step 5, is safe: `odsyInitCfifo` itself writes the instruction RAM on a board that has never run a program, so the load path is hardware and does not need running microcode. The file is a newer build of the same program (it adds 99 records at record 792 and 429 at the end), and the routines above record 1799 are paged into the window at RAM 1848 to 2047 by the library and the kernel's `odsySetProgram`; a driver that uses the file program must do that paging, which the array alone does not need for the textport and pixel-write paths. **unknown** whether the board accepts the file before the built-in on real hardware.
- **inferred.** The text-console path needs only the routines at entries 0x12f (the ten-operand block used by glyph and image drawing) and the vertex routine behind the quad fill, both below record 1799, so the built-in array is enough for it.
- **Licence note for the NT design.** Both PROMs hold the array and load it whenever the graphics console is installed ([prom-board-handoff.md](../firmware/prom-board-handoff.md)), so a driver that requires a PROM-installed graphics console ships no microcode. A driver for the serial-console case would have to carry the 24 KB array or the file.

## Delays at a glance

| Where | Delay (microseconds) | Source |
|---|---|---|
| after +0x100c = 0x200 | 1000000 kernel, 200000 PROMs | `odsyLowLevelReset` |
| end of the low-level reset | 100000 | same |
| after widget +0x24 | 100000 | `odsyReset` |
| before and after the +0x1004 stores of the sequence (five waits; the PROMs make four, with no bit 8 store) | 400 | `odsyReset` |
| FIFO drain polls | 5 | `odsy_tpinit`, `gf_OdsyInitialize` |
| after block 0x46 before the ID check | 2000 | `odsyInitCfifo` |
| between failed `odsyInitCfifo` tries in `gf_OdsyInitialize` | 10 ms | `gf_OdsyInitialize` |
| the display FIFO level waits | polled | `odsy_poll_dfifo_level` |
