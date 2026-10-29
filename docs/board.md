# Board memory and board configuration

Labels: **established**, **inferred**, **unknown**. IRIX 6.5.30m, IP30 `odsy_init.o` (`odsyGatherInfo`, `odsyReset`). A fact about IP35 is **unknown** unless named.

## The strap word at board +0x106c

- **established.** `odsyGatherInfo(board, 1)` reads the 32-bit word at +0x106c (the register `BUZZ.h` calls `ODSY_REG_FIFO_LEVELS`, whose bits 15:0 are FIFO levels) and decodes its top byte as board configuration:

| Bits | Decoded | Stored in record | Values |
|---|---|---|---|
| 31:30 | SDRAM size code | +252 (MB) | 0 -> 32, 1 -> 64, 2 -> 128, 3 -> 33 |
| 29 | SDRAM banks | +260 | 0 -> 2, 1 -> 4 |
| 28 | CAS latency | +256 | 1 -> 2, 0 -> 3 |
| 27:24 | clock-part variant | +292 | raw nibble (see `docs/display.md`, words 292) |

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
- **inferred.** Bit 31 (record +280) is a variant flag, the low three bits the BUZZ revision. The 0x23380c register's identity: **unknown**; `+0x233804` is the clock-programming word read by `odsyLoadTimingTable` (`docs/display.md`), so this is the same block.

## Memory configuration word at board +0x1004

- **established.** `odsyReset` builds a word in a record copy and stores it to +0x1004 (a 400 us delay after each store):
  - bits 22:19 = the widget master id (`xwidget_info_masterid_get`), stored first, at step 3 of `docs/kernel.md`.
  - bit 2 set for 4 banks, clear for 2 banks.
  - bit 1 set for CAS latency 2, clear for 3.
  - bits 4:3: 0 for 32 MB, 1 for 64 MB, 2 for 128 MB and for the size code 3 (the driver rewrites its record to 32 in that case).
  - Then bit 5 is cleared, set, written, cleared again (three stores, 400 us apart) and bit 8 is set last.
- **inferred.** +0x1004 configures the board's SDRAM controller (banks, CAS latency, size) and bit 5 pulses an SDRAM initialisation; bit 8 enables it. Reason: the field values are exactly the three probed properties and the pulse is the driver's standard reset shape. Not confirmed by hardware.
- **unknown.** Organisation and addressing of the memory, timing beyond CAS latency, and the width of any other field of 0x1004.
