# Board memory and board configuration

Labels: **established**, **inferred**, **unknown**. IRIX 6.5.30m, IP30 `odsy_init.o` (`odsyGatherInfo`, `odsyReset`). A fact about IP35 is **unknown** unless named.

## The strap word at board +0x106c

- **established.** `odsyGatherInfo(board, 1)` reads the 32-bit word at +0x106c (the register `BUZZ.h` calls `ODSY_REG_FIFO_LEVELS`, whose bits 15:0 are FIFO levels) and decodes its top byte as board configuration:

| Bits | Decoded | Stored in record | Values |
|---|---|---|---|
| 31:30 | SDRAM size code | +252 (MB) | 0 -> 32, 1 -> 64, 2 -> 128, 3 -> 33 |
| 29 | SDRAM banks | +260 | 0 -> 2, 1 -> 4 |
| 28 | CAS latency | +256 | 1 -> 2, 0 -> 3 |
| 27:24 | board revision | +292 | raw nibble; 0 selects the first clock part, 1 or more the second (`docs/display.md`, clock parts) |

- **established.** The decoded values are checked in `odsyReset`: banks other than 2 or 4, latency other than 2 or 3 and size other than 32, 33, 64 or 128 log "invalid sdram banks", "invalid sdram casl" or "invalid sdram size %dMB". The strings in `odsyGatherInfo` name the same fields ("unknown sdram casl setting", "unknown number of sdram banks").
- **inferred.** The word's top byte is a strap or ID field set by the board (no driver code writes it and the same register's other bits change at run time). The value 3 for size, recorded as 33, selects the same register code as 128 in step below; why the board distinguishes it: **unknown**. "33" is the driver's own marker, not a size in MB.
- **inferred.** The bank count and CAS latency are what "board inventory reports" carry, because the driver stores them in the record that `odsyGatherInfo` fills and prints.

## The board revision word at board +0x04

- **established.** `odsyGatherInfo(board, 0)` reads +0x04 and takes bits 31:28 as a buzz revision type, stored in record +264, then dispatches through a 16-entry jump table (`odsy_init.o` `.rodata` offset 0x238):

| Value | Record +264 | Record +280 |
|---|---|---|
| 1, 2, 3 | the value | 0 |
| 9 to 15 | value - 8 (1 to 7) | 1 |
| 0, 4 to 8 | error "Invalid buzz rev type %d" | |

- **established.** After a valid type it reads the word at +0x23380c, keeps bits 2:0 in record +268, and returns.
- **inferred.** Bit 31 (record +280) is a variant flag, the low three bits the BUZZ revision. **established** (`docs/pbj.md`, items 3 and 4): +0x23380c is display address 0x2701, the register whose bits 2:0 `gfxinit` prints as "PB&J version"; `odsyGatherInfo` stores them in record +268. `+0x233804` is the clock-programming word read by `odsyLoadTimingTable` (`docs/display.md`), a neighbour in the same block. The meaning of bits 31:3 of 0x2701: **unknown**, `odsyInitDBE` tests bit 10 (`PBJ.h` section 2); a read-back of the whole word on a real board with known revisions would settle the rest.

## Memory configuration word at board +0x1004

- **established.** `odsyReset` builds a word in a record copy and stores it to +0x1004 (a 400 us delay after each store):
  - bits 22:19 = the widget master id (`xwidget_info_masterid_get`), stored first, at step 3 of `docs/kernel.md`.
  - bit 2 set for 4 banks, clear for 2 banks.
  - bit 1 set for CAS latency 2, clear for 3.
  - bits 4:3: 0 for 32 MB, 1 for 64 MB, 2 for 128 MB and for the size code 3 (the driver rewrites its record to 32 in that case).
  - Then bit 5 is cleared, set, written, cleared again (three stores, 400 us apart) and bit 8 is set last.
- **inferred.** +0x1004 configures the board's SDRAM controller (banks, CAS latency, size) and bit 5 pulses an SDRAM initialisation; bit 8 enables it. Reason: the field values are exactly the three probed properties and the pulse is the driver's standard reset shape. Not confirmed by hardware.
- **unknown.** Organisation and addressing of the memory, timing beyond CAS latency, and the width of any other field of 0x1004.

## Strap word and configuration register fields (pass 12)


- **established.** The top byte of +0x106c holds the board's straps, read once. Size is the top two bits, bank count the next, CAS latency the next, and the low nibble is stored as the board revision (decode above). Whether that low nibble is a board version in the hardware's sense, and the register's own name, are **unknown** from the binaries read here; a read of the remaining readers of +0x106c in `libGLcore` and `odyssey.so` would settle the nibble. The size field has three legal codes (32, 64, 128 MB) in the 6.5.30 kernel and code 3 is handled as above (recorded as 33, programmed as 128 MB). Why: **unknown: no shipped software or published source depends on it** beyond that branch. Routes tried: both 6.5.30 kernels and the strings of both.
- **inferred.** The board revision selects the pixel-clock part: revision 0 boards use the first part (I2C 0x26), later boards the second (I2C 0x58); the 6.5.30 kernel's choice is the variant word at +292 (`docs/display.md`), and that this is the strap nibble is inferred.
- **established.** +0x1004 is written by `odsyReset` as listed above: SDRAM bank count, CAS latency, size, an SDRAM reset bit (the bit 5 pulse: written 0, then 1 twice, then 0, 400 us apart) and the host widget id (bits 22:19, the master id). Bit 8, which 6.5.30 sets last, has no known role: **unknown**. Any other field of 0x1004 is **unknown** from the binaries read.
- Memory organisation: chip count, data width and the address map are **unknown** (`docs/open-questions.md`). Routes tried: both 6.5.30 kernels and libGLcore's memory-manager calls. Not tried: board photographs (route 3).

## What stays unknown, and what would settle it

Pass 8. IP35 `odsyGatherInfo` stores to the same record offsets as IP30 and IP35 `odsyReset` writes the same 0x1004 sequence (`docs/kernel.md`), so the findings above hold for both hosts. **established:** no kernel object reads 0x1004 (every access with displacement 4100 in the disassembly of `odsy_kernel/` and `odsy_kernel_ip35/` is a store in `odsyReset`; the user-space libraries were not scanned: **unknown** whether they map the register), so nothing in the software says how the word's other bits behave.

- **unknown** (`docs/open-questions.md`). Memory organisation (chip count, data width, address map). The software only sees size, banks and CAS latency from the strap word. On a board it would show in: a read of the SDRAM controller's own configuration after reset on a known board, or a board photograph naming the memory parts with their datasheets.
- **unknown** (`docs/open-questions.md`). What bit 5 (the pulse) and bit 8 (the last set) do in hardware, and bits 0, 7:6 and 21:9 of 0x1004. On a board it would show in: a bus-level trace of the SDRAM command lines during the 400 us after each store, or a read-back of 0x1004 before and after `odsyReset` (it is not known whether the register reads back: **unknown**).
- **unknown** (`docs/open-questions.md`). Why size code 3 is distinct from code 2 (the driver records 33 and then writes the 128 MB code). On a board it would show in: the strap word's size code on a board with a known memory population.

## Published board facts (guides, datasheets and the revision-003 diagnostic reference)

Labels here are **established (published)** unless marked: an SGI manual says it. Page numbers are printed pages; identities and hashes are in [published-sources.md](published-sources.md) sources 8 to 14. These are statements about shipped products, not reads of the driver.

- **Board sizes and texture share.** V6 and V10 carry 32 MB of which up to 8 MB can be texture; V8 and V12 carry 128 MB of which up to 104 MB can be texture (the Octane2 datasheet, the Fuel datasheet and the May 2001 product table agree, and the porting guide gives the V6 and V8 figures). The Fuel datasheet gives 80 MB of texture on a V12 when the dual channel option is used; the reason is **unknown**, and **inferred** to be that the second output takes board memory. The strap word's size field ([The strap word](#the-strap-word-at-board-0x106c)) is the only software view of the 32 versus 128 MB split; the guides add no organisation.
- **Second source for the strap decode.** An `odydiags -getinfo` sample from a V12 reads "buzz revision is 10", 128 MB, 4 banks, CAS latency 3, board version 1 and PB&J version 1 (108-0314-003 p. 23). Those are the fields of the decode above: 128 MB is size code 2, 4 banks is bit 29, latency 3 is bit 28 clear, and raw type 10 falls in the 9-to-15 row (value 2, variant flag 1). **inferred** that `gfxinit` prints it as BUZZ B.1, from its letter and number rule in `docs/pbj.md`.
- **Tile arithmetic.** 32 MB is more than 65,000 tiles in the diagnostic's address-unique test (p. 16). Exactly 65,536 tiles of 512 bytes, a 16 x 16-pixel tile at 2 bytes per pixel, is the same figure and the tile of the memory manager above (**inferred**; the text does not give the tile size). The same pages say a tile is 16 pixels wide and strides are counted in tiles (Table 7, p. 31).
- **Memory chips.** Chips are numbered 0 to 15 for diagnostic software and named by bank and letter ("SDRAM Bank 2_A"); a 4-byte pixel has components 0 and 1 in one chip and components 2 and 3 in another (pp. 31 and 35). Chip width, count per board and the address map are still **unknown**.
- **Ports.** A V6, V8, V10 or V12 board on an Octane2 has a 13W3 monitor port with a DDC variant, a genlock port, a StereoView port and a swap-ready port (007-4210-003 pp. 30-33). Fuel and Tezro boards have one DVI-I port with analog and digital video instead, plus the same three small ports (007-4480-001 p. 35, 007-4643-003 p. 32); the swap-ready feature is "not functional at this time" on the Fuel. A V12 in a V-brick has two DVI-I ports, a blocked 13W3 connector, genlock, swap-ready and stereo (007-4264-002 pp. 56-57). The dual channel option is a daughterboard under the main board that adds two DVI-I ports (007-4209-003; 007-4480-001 p. 35).
- **Host requirements.** V10 and V12 need a Crossbow of revision 1.4 or later; the power supply must be part 060-0035-00x for an Octane taking its first VPro; V6 and V8 need PROM 4.0 and V10 and V12 PROM 4.5 (007-4210-003 pp. 2-6). IRIX 6.5.8 is the first release to name VPro support (007-3897-007).
- **Part numbers.** The Fuel diagnostic reference gives the Fuel field-replaceable boards: V10 013-3513-00x, V12 013-3416-00x and the dual channel board 030-1713-00x (108-0350-002). Octane2 board part numbers are not in the guides read.
- **V-brick.** Each V12 takes two of four slots, and the brick midplane has an Xbridge ASIC joining its two 800 MB/s ports to the boards (007-4264-002 pp. 52-56).
