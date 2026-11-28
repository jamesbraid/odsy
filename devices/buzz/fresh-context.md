# A fresh context: what the kernel replays at first switch-in, and the save record

Release IRIX 6.5.30m, IP30 and IP35 `odsy_ctxsw.o` and `odsy_ddrn.o`, and the N32 `libGLcore.so` of 6.5.30m (`__glOdysseyInitDefaultValues`, `__glOdysseyValidateHardware`). Labels: **established** (whole routine read, or run under `retools/tools/odsy/glcore_probe.py`, which shows what the shipped code stores and says nothing about the board), **inferred**, **unknown**. The context-switch protocol itself is in [README.md](README.md) sections 4 and 7; this page adds the decision the kernel makes at the first switch-in and the start-up stream of the library. Written for a driver author who wants to start a context without IRIX's full replay.

## The kernel's decision in `gf_OdsyPcxSwap`

**established**, read from the IP30 disassembly (`software/kernel/ip30/disasm/odsy_ctxsw/`, the IP35 routine has the same branches and was matched by its call list and constants, [README.md](README.md) section 7):

1. A board teardown word (record +816) that is set ends the call with -1.
2. With an outgoing context, the kernel stores the save doorbell (`(7 << 40) | (incoming slot << 16) | 1`) at +0x118000 and waits up to 1500 ticks for the outgoing record's word at +2300 to turn nonzero.
3. It announces the incoming context's record to the board (physical address halves to +0x4004 and +0x400c), calls `odsyMMvalidatePcxSwap`, and calls `gf_OdsyValidateClip` when the client's flag word has bit 1 set.
4. **The replay is not unconditional.** It runs `odsyRestoreXform`, `odsyRestoreRaster`, `odsyRestoreGfe` and `odsyRestartContext`, in that order, when the incoming context's word at +564 is zero, or when the board's current slot (record +820) is 127 (none) or 0. Otherwise it sends only the select sequence: block 0x050 (`0x00010850`) with operands `(slot << 12) | 0xf` and 0, `0x00014400` with 0, `0x00014001`, then the class-0 words 0x740 = 0x1ed and 0x741 = 0.
5. Afterwards it clears +564, makes the incoming slot the board's current slot (record +820), and clears the previous slot's word at +11060 of its hardware state.

The word at +564 is 1 when the context's node is created (`odsy_ddrn.o`, the same routine that gives the node a 16 KB zeroed record, maps it into the process and starts the slot numbering at 0 to 126). So:

- **established.** A new context's first switch-in sends only the select sequence when another slot is current, and the full replay when the board's current slot is none or 0. The replay then reads the context's hardware-state words and a record of 16 KB that the kernel zeroed at creation.
- **inferred.** The flag means "nothing to restore": the node starts with an empty slot, and the library then sends its own full state itself through the window (below), so a kernel replay of zeros would add nothing. The later switch-ins (flag cleared) always replay, which is the lost-state case.
- **unknown.** What a never-used board slot holds when the select sequence activates it (reset values of the per-slot state). No shipped path reads one back. **Would settle it:** a saved record read after a select of a never-used slot, or a published description of the context memory; no document held here describes it.

## What the library sends for a fresh context (the minimal state a context needs in practice)

The kernel never builds a context's state; the library does, and the kernel's replay copies what the library's shadow holds. For a context that has just been created the library's own protocol is therefore the shipped minimal state. **established** by running `__glOdysseyInitDefaultValues` (0x0d969ac0) under the probe, then reading `__glOdysseyValidateHardware` (0x0d968180, with all dirty bits set, 1747 words):

**Direct stores, in order (25 words).** Sequencer register 0x2e = 0x380 (`0x2e008380`); registers 0x22 to 0x25 = 0, 2, 0xa, 0xe in RGBA mode and 1, 3, 0xb, 0xf in colour-index mode (`0x22008000` ... `0x25008000` plus the value; the same pairs the textport and X module send, [opengl/opengl.md](../../software/opengl/opengl.md)); registers 0x29, 0x2a, 0x2c = 0 (replaced when a program is chosen, [ucode/buzz_isa.md](../../software/ucode/buzz_isa.md) "Programs, entries and dispatch"); register 0x35 = 0; register 0x34 = 0; block 0x04c (`0x0001044c`) = 0; block 0x007 (`0x00010407`) = 0; block 0x250 (`0x00011a50`) with six operands 0, 0x800, 0, 0x800, 0xffffff, 0xfffa00. Fields: the register roles are [ucode/buzz_isa.md](../../software/ucode/buzz_isa.md); block 0x04c, 0x007 and 0x250: **unknown** ([tokens.md](tokens.md)).

**Defaults left in the shadow, sent by the first validate (the routine raises dirty bits 0x2000, 0x4000, 0x8000, 0x10000, 0x20000 and 0x800000).** Block 0x047 six zeros; block 0x013 (LOD) 0, 0, 0x3100, 0xf00 (bias 0, minimum -15, maximum +15 in the format of [tokens.md](tokens.md)); block 0x03e three zeros; block 0x01c (fragment light model) 0, 0x01000aaa, 0x2aa; the post-filter mode words 0x8ce8 = 3 and 0x8be4 = 3 with zero operands, which select block 0x03d (two operands) and block 0x03a (four operands, [tokens.md](tokens.md) and `odsyRestoreRaster`); then the tables and other blocks as listed next.

**The complete validate, in order, and which are state a replay needs.** From the probe run with every dirty bit set and every context word 0xffffffff (the operand values are then meaningless; the list is the order and operand counts of the shipped code), settle groups omitted, `block/operands`:

`0x004/1  0x005/1  [0x041/2 0x04b/8 0x040/2 0x017/4]  0x016/7  0x021/3  0x01a/6  0x01b/5  0x047/6  0x013/4  0x220 to 0x24f as 48 blocks of 16  0x03e/3  0x280 to 0x2bf as 64 blocks of 3  0x006/1  0x018/0  0x01f/1  0x04a/2  0x052/1  0x01d/2  0x01c/3  0x200 to 0x20f and 0x210 to 0x21f interleaved as 32 blocks of 16  0x051/1  0x015/1`

**established** for the order and counts of this run. The post-filter blocks 0x028 to 0x02b, 0x030 to 0x033, 0x038, 0x03a, 0x03b and 0x03d ([tokens.md](tokens.md)) did not appear: their gate depends on the mode words (0x8ce8, 0x8be4) and a comparison the zeroed-and-ones fill does not satisfy. The kernel's own replay sends the same list plus those, 0x043/0x046/0x019 settle words and 0x023, 0x053, 0x048, 0x03f, 0x04e and 0x04f ([driver-functions.md](../../software/kernel/driver-functions.md) `odsyRestoreRaster`), which the library sends from other routines (clear, stipple, image paths).

**inferred, what a driver may drop.** Everything marked "only when dirty" is sent by the library only after a setter raised its bit, so a first draw needs only the blocks of the state it uses plus the direct stores above; the blocks the first primitive reads and has no default for are the ones the board's reset value covers, which is **unknown**. The always-safe set is the whole list above, once.

## The save record

The record is 16 KB, kernel-allocated and zeroed when the node is created (`odsy_ddrn.o`, `kmem_zalloc` of 16384 bytes at node offset 192, mapped into the process by `odsyMapPages`). The board writes it on a save request, **inferred** ([README.md](README.md) section 4). Offsets the kernel reads, **established**, from [README.md](README.md) sections 4 and "Pass 9", [driver-functions.md](../../software/kernel/driver-functions.md) and [opengl/opengl.md](../../software/opengl/opengl.md):

| Offset | Content as the kernel reads it | Reader |
|---|---|---|
| 128 | saved primitive word: type in bits 3:0 (0 to 10; 11 or more means none), counts in bits 5:4 and 7:6, further fields 23:11 | `gf_OdsyPcxSwap`, `odsyRestartContext` |
| 132 | vertex descriptor word 0 for `odsyRestoreVB`; selectors for the attribute slots | `odsyRestartContext` |
| 140 + 8v | vertex descriptor for vertex v = 0 to 3 | `odsyRestoreVertex` |
| 172 | pixel count of an interrupted programmed-I/O transfer | `odsyRestoreGfe`, `odsyRestartContext` |
| 176, 180, 188 | the partial command words and their count | `odsyRestartContext` |
| 256 + 4v, 768 + 16v + 4j | position command word and operands of vertex v | `odsyRestoreVertex` |
| 272 to 544 in steps of 16 (not 464), operands 832 to 1920 | the seventeen attribute slots, four entries each | `odsyRestoreVB` |
| 576, 592, 608, 624 with payloads at 2048, 2112, 2176, 2240 | four saved packets, header with payload length in bits 13:10 | `odsyRestoreGfe` |
| 2300 | completion word, written by the board | save wait loops |
| 2304 on | glGet read-back table (register 0x4014 = 18 cache lines of 128 bytes) | libGLcore |

Bytes the kernel never reads (most of the 16 KB: for example 4 to 127 outside the partial words, 2304 to 16383 beyond the table's own size) are **unknown** to software. The register shadow the kernel replays is a separate structure (`H`, offset 176 of the context), written by the library, not by the board.

## What would settle the rest

- The board-side record layout and a never-used slot's contents: a record read back after a save with a known command stream, or the board's context-memory description. No document held here has either.
- Whether the select sequence alone is enough for a second context on a quiet board (a context created while the board's current slot is none or 0 takes the full replay of zeroed state, which is harmless on shipped hardware by that practice only).
