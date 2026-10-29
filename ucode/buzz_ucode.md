# buzz_ucode: the microcode array in the kernel driver

Facts are labelled established (read from a binary, with where), inferred (a reasoned reading) or unknown. Instruction-set analysis is not done here; this note records where the program is, how it is loaded and what shape it has, so that a later pass can start from the data.

## Location and size

- **established.** The global object symbol `buzz_ucode` (type OBJECT, size 27196 bytes) sits at offset 0x7d0 of `.data` in `odsy_init.o`, a member of `odyssey.a`. Source: `readelf -s` on `odsy_kernel/odsy_init.o` and on `odsy_kernel_ip35/odsy_init.o`; `.data` is 0x720c bytes in both.
- **established.** The IP30 (Octane2) and IP35 (Fuel, Tezro, Onyx 350) copies are byte-identical (same size, same SHA-256 `9955bc1bad614a4d28bc3a56914b2037cb1ab45bcb7e8bc2432d9d31804d9133`). Release 6.5.30 for both.
- `scripts/extract_buzz_ucode.py` writes each copy unchanged to `root/usr/gfx/ucode/ODSY-kernel/buzz_ucode_ip30.bin` and `..._ip35.bin`, and links them from `ucode/`, the way the shipped files in `ucode/ODSY/` are linked. `--stats` prints the numbers below.
- It is not the file `buzz_xform.bin`, but it is an older build of the same program (`ucode/buzz_isa.md`, "Two copies"). That file reaches the board through `gf_OdsyDownload` and `odsyDownloadUcode` (`odsy_ucode.o`), which copy a caller's image into the kernel shadow and load it; this array is sent only by `odsyInitCfifo`. established.

## Element format

- **established.** The array is read as big-endian 16-bit values (`lhu`, element i at byte offset 2i): 13598 values, 27196 bytes, no odd byte.
- **established.** `odsyInitCfifo` (odsy_init.o) uses only the first 12288 values. The loader loops 2048 times over groups of six; within a group it reads index 5 first, then 4, 3, 2, 1, 0, then the next group at 11..6, and so on. Each value h becomes the 32-bit FIFO word `0x40008000 | (h & 0x3ff) | ((h >> 10) << 23)`: the low ten bits keep their place, the top six bits go to bits 28:23. This is the same word split in IP30 and IP35 (`odsyInitCfifo` disassembly of both).
- **established.** The remaining 1310 values (index 12288 to the end) are 218 whole records (2048 to 2265) and a 4-byte trailer `ffffffff`. They are never sent by this routine, and no other path sends them: the kernel's microcode shadow (board record offset -31400, used by `odsyDownloadUcode` and the overlay loader `odsySetProgram`) is a zeroed `kmem_zalloc(0xc000)` buffer set up in `odsyInitBoardGfx` and filled only by `gf_OdsyDownload`'s `bcopy` from the caller. No relocation in any IP30 or IP35 kernel object names `buzz_ucode` (`readelf -r` over every `.o` in `odsy_kernel/` and `odsy_kernel_ip35/`); the loader reaches it through the `.data` section symbol.
- **established.** What the tail is: the end of the program. The 2266 records equal records 0-791 and 891-2364 of `ucode/ODSY/buzz_xform.bin` (`ucode/buzz_isa.md`, "Two copies"), so records 2048-2265 are the same code as image records 2147-2364. Every routine address of 1799 or more is paged by libGLcore and the kernel into a 200-word window at RAM 1848-2047 (`ucode/buzz_isa.md`, "Overlays"), so the tail is overlay code that only that paging can place, and the paging reads the shadow, never this array.
- **inferred.** After a start-up load alone, the RAM holds the old build's records 0-2047, including its resident overlay at 1848-2047, and none of the tail. The array keeps the tail because it is a copy of the whole program image, of which the loop sends only what fits. The `ffffffff` trailer: **unknown** (padding or an end marker of the tool that wrote the array).

## Header written before the data

- **established.** Before the data words the driver writes three FIFO words: `0x2e008380`, `0x2600807f`, `0x27008000`. After the data, one doubleword `0x000007f0_3b9aca00` goes out (see `BUZZ.h`, section on odsyInitCfifo). The board ID word at board+0x201594 must read `0x003d0046` first, else the load is skipped.
- **established.** `0x27008000` sets the instruction write address to 0 (`odsyDownloadUcode` builds the same word from its address argument). `0x2e008380` and `0x2600807f` write sequencer registers 0x2e = 896 and 0x26 = 127 (`ucode/buzz_isa.md`, "Sequencer registers"); their meaning is **unknown**, with 127 **inferred** to be a routine address.

## Shape of the data (from `--stats`, groups in sending order)

Slot 0 is the first value sent in each group of six, slot 5 the last.

| Slot | Bits ever set | Groups with a nonzero value (of 2048) | Distinct values |
|---|---|---|---|
| 0 | all but bit 7 | 816 | 87 |
| 1 | all 16 | 2048 | 98 |
| 2 | all 16 | 1538 | 146 |
| 3 | all 16 | 662 | 177 |
| 4 | all 16 | 977 | 194 |
| 5 | bits 13:0 only | 1259 | 145 |

- **established.** The values are far from random: 789 distinct values in 12288, 4988 of them zero, 7507 with the top six bits zero. Slot 1 of a group is never zero, slot 5 never uses bits 15:14. Stored order of the first six groups (index 0 to 5 within a group; the loader sends index 5 first):

```
04a4 0000 0120 c000 0008 0000
0528 0000 0121 9000 0008 0000
05ac 04c8 0122 9000 0008 0000
0630 05c8 0123 9000 0008 0000
018c 06c8 0124 9000 0008 0000
0000 07c8 0125 9000 0008 0000
```
- **established.** The data is a table of 96-bit microcode instructions, six 16-bit fields each: `odsyDownloadUcode` loads the same format, one instruction per address, and `buzz_xform.bin` is a newer build of the same program. Instruction format and sequencing: `ucode/buzz_isa.md`.
- **inferred.** The only text-visible kernel consumer is the loop above; the kernel does not interpret the contents.

## Instruction set

The instruction format, loading words, sequencer registers, routine entries and overlays are in `ucode/buzz_isa.md`; the listing of this copy is `ucode/disasm/buzz_ucode_kernel.lst`. The post-data doubleword `0x7f0 = 10^9` is still not read.
