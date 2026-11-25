# dma

DMA-engine descriptor words of the Odyssey board: the kick words, the transfer entry and its tag.

Source: odsy binary analysis of the shipped kernel DMA routines.

The values are in [registers.toml](registers.toml), each graded and sourced, and the generated reference page is [registers.md](registers.md).

## Kick, tag and address form

IRIX 6.5.30m, `odsy_dma.o` of the IP30 and IP35 `odyssey.a`, read in full for the kick, the tag and the address handling (`odsy_DmaRegion_DoTransfer`, `odsyDMAOp`, `odsyDMAWakeup`, `odsyInitDMA`, `gf_OdsyStart`). Labels: **established** (code read), **inferred**, **unknown**. The two builds are instruction for instruction the same here, except that the test for a user address against a kernel address is 2^40 on IP30 and 2^44 on IP35 (`generatePageTable`), which does not reach the board.

- **The kick is a pair of 64-bit stores to the command FIFO port**, board +0x110000, the first then the second, each followed by `sync`; there are no separate kick registers. **established** (`odsy_DmaRegion_DoTransfer`: the base is the board's PIO base plus 0x110000, the stores are `sd`).
  - First doubleword: id 0xe01 (plain; or 0xe03 for the diagnostic ioctl's flag) in the high word, `PACK(a >> 24)` in the low word.
  - Second doubleword: `PACK(a & 0xffffff)` in the high word, zero in the low word.
  - `PACK(x) = (x & 0x1ffff) | ((x & 0xfe0000) << 6)`: 17 low bits in place, the next seven at bits 29:23. Bits 47:41 of the address land in bits 29:23 of the first low word, bits 40:24 in bits 16:0; bits 23:17 in bits 29:23 of the second high word, bits 16:0 in bits 16:0. Anything above bit 47 is dropped. **established** (arithmetic of both routines).
  - The address is the physical address of the 128-byte entry of [kernel.md](../../software/kernel/kernel.md) ("128-byte entries"), not of the pixel data. The board then fetches the entry (header and page list) from host memory by its own DMA read, and the page list names the data. **inferred** from the entry layout and the absence of any other address in the kick; the fetch is **unknown** on the board side.
  - Each request is sent as one kick per entry, in order, after one store of 0x800 to +0x101c (clear the done flag, bit 11 of the flags register +0x1014). **established.**
- **Id 0xe01 against 0xe03.** Every transfer the driver issues for itself uses 0xe01, reads and writes alike; the direction is bit 24 of header word 7. Only the diagnostic ioctl, with its flag bit 2, sends 0xe03; its board-side meaning is **unknown** ([kernel.md](../../software/kernel/kernel.md), "Diagnostic transfer"). A client that does not run the field diagnostic needs only 0xe01.
- **Address form, IP30 and IP35.** **established:** the driver converts nothing for the board. The data addresses come from `alenlist` conversions of the user or kernel buffer (`uvaddr_to_alenlist`, `kvaddr_to_alenlist`) and `generatePageTable`, and the entry address from `kvtophys`; no object of either `odyssey.a` calls a crossbar DMA translation or mapping routine (`xtalk_dmatrans_*`, `dmamap_*`, `pciio_dma*`; a search of every call in both archives found only the interrupt and PIO helpers). So the board is handed the host's physical address as the host kernel names it, on IP30 and on IP35 alike, and the host chip (HEART or Bedrock) must accept that value as a DMA address from the widget. **software expectation** that this is the form each host accepts; the host-chip mapping rules (the node bits of an IP35 physical address, any attribute bits, the IP30 window) are **unknown** here and belong to the platform workspaces. The page-list words carry the same physical addresses ([registers.toml](registers.toml), `PAGE_W0`, `PAGE_W1`).
- **Completion tag.** After the last kick of a request's final op (op flag bit 1; an op without it sends block 0x258 with operand 0x00120000 instead) the driver sends the class-1 word `0x00010a5a` (block 0x25a, `TAG_CMD_ID` in [registers.toml](registers.toml)) with two operands, `slot | 0x8000` and `0x5a00 | (n & 0xff)`, where n is a 7-bit counter that wraps at 128 and also indexes a 128-entry ring of outstanding requests. **established.** The host reads a 16-bit halfword at a host address it fixed at start-up and treats a value with 0x5a in the high byte as the tag of the last request the board finished; the initial value is 0xffff. **established** (`odsyDMAWakeup`, `odsyInitDMA`).
  - Where the halfword lives: the host address is the base of the 128 KB software-sync write-back buffer plus twice the slot number (the tag's slot is the next free 32 KB slot after the two `gf_OdsyInitialize` takes, so 2 on a first start, **inferred** from the lowest-free allocator; the next slot, 3, holds a second halfword the driver also initialises to 0xffff, whose use was not traced). The base is the same buffer whose physical address `gf_OdsyStart` stores to +0x4034 (bits 47:32) and +0x403c (bits 31:0), identical on IP35. **established** for the host arithmetic and the two stores. It follows that the board's write of the tag is a write of two bytes to (the region the two registers name) plus 2 x slot; **inferred**, because the board's side is not in software.
  - Flag 0x8000 in operand 0: set by every sender, meaning **unknown**.
  - A request is finished only when its tag has been seen and, for a request that asked for an interrupt (the last entry of a read, header word 7 bit 31), the DMA interrupt has also arrived. The tag is checked from the sync-source interrupt and from the end of the retrace handler, not polled ([kernel.md](../../software/kernel/kernel.md), "The tag check runs from two interrupts"). A client with no interrupts must poll the halfword itself. The kernel's own timeout is 1500 ticks.
  - The register-side completion is bit 11 of +0x1014, which the diagnostic path polls after clearing it. **established** driver side.
- **What the board does with the entry, the tag and the interrupt bit, and what the 0x8000 flag selects, is not in any software read:** **unknown**. The routes tried are in `questions/README.md` ("DMA engine details").

## Used by

- [Kernel driver functions, one entry each](../../software/kernel/driver-functions.md)
- [Kernel driver notes](../../software/kernel/kernel.md)
- [Video format compiler rules of the VPro install](../../software/video/video-format-sources.md)
