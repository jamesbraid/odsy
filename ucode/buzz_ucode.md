# buzz_ucode: the microcode array in the kernel driver

Facts are labelled established (read from a binary, with where), inferred (a reasoned reading) or unknown. Instruction-set analysis is not done here; this note records where the program is, how it is loaded and what shape it has, so that a later pass can start from the data.

## Location and size

- **established.** The global object symbol `buzz_ucode` (type OBJECT, size 27196 bytes) sits at offset 0x7d0 of `.data` in `odsy_init.o`, a member of `odyssey.a`. Source: `readelf -s` on `odsy_kernel/odsy_init.o` and on `odsy_kernel_ip35/odsy_init.o`; `.data` is 0x720c bytes in both.
- **established.** The IP30 (Octane2) and IP35 (Fuel, Tezro, Onyx 350) copies are byte-identical (same size, same SHA-256 `9955bc1bad614a4d28bc3a56914b2037cb1ab45bcb7e8bc2432d9d31804d9133`). Release 6.5.30 for both.
- `scripts/extract_buzz_ucode.py` writes each copy unchanged to `root/usr/gfx/ucode/ODSY-kernel/buzz_ucode_ip30.bin` and `..._ip35.bin`, and links them from `ucode/`, the way the shipped files in `ucode/ODSY/` are linked. `--stats` prints the numbers below.
- It is not `buzz_xform.bin`. That file is downloaded by `odsyDownloadUcode` in `odsy_ucode.o` (a separate path, host-side download through DMA, not read here). established: `odsy_init.o` and `odsy_ucode.o` use different data.

## Element format

- **established.** The array is read as big-endian 16-bit values (`lhu`, element i at byte offset 2i): 13598 values, 27196 bytes, no odd byte.
- **established.** `odsyInitCfifo` (odsy_init.o) uses only the first 12288 values. The loader loops 2048 times over groups of six; within a group it reads index 5 first, then 4, 3, 2, 1, 0, then the next group at 11..6, and so on. Each value h becomes the 32-bit FIFO word `0x40008000 | (h & 0x3ff) | ((h >> 10) << 23)`: the low ten bits keep their place, the top six bits go to bits 28:23. This is the same word split in IP30 and IP35 (`odsyInitCfifo` disassembly of both).
- **established.** The remaining 1310 values (218 groups of six plus two values, from value index 12288 to the end) are never sent by this routine. They have the same look as the loaded part (see below). Whether another path loads them, or they are leftover or a second program: **unknown**. No relocation in any IP30 or IP35 kernel object names the symbol (`readelf -r` over every `.o` in `odsy_kernel/` and `odsy_kernel_ip35/`). The loader reaches the array through the `.data` section symbol, so another reader of that section cannot be excluded by name; none was found in the code read.

## Header written before the data

- **established.** Before the data words the driver writes three FIFO words: `0x2e008380`, `0x2600807f`, `0x27008000`. After the data, one doubleword `0x000007f0_3b9aca00` goes out (see `BUZZ.h`, section on odsyInitCfifo). The board ID word at board+0x201594 must read `0x003d0046` first, else the load is skipped.
- **unknown.** What the three header words mean (an address, a length, a mode). **inferred** only that they select the destination and mode of the 12288 data words that follow: every data word has bit 30 and bit 15 set, as the header words have bit 15 set, and the loader sends nothing between header and data.

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
- **inferred.** The data is a table of 96-bit records (six 16-bit fields), loaded in order. Reason: groups of six, a per-slot bit profile that differs by slot, and the same profile in the unloaded tail. Whether the record is an instruction, a table entry or something else: unknown.
- **established.** The last two values of the array are `0xffff 0xffff`, and the value before them is `0xa200`. Whether the pair is a terminator: unknown.
- **inferred.** The only text-visible kernel consumer is the loop above; the kernel does not interpret the contents.

## For the instruction-set pass

Start with the six-slot table above and the first groups in stored order. In those groups index 2 counts up by one (0x120, 0x121, ...), index 0 steps by 0x84 and index 1 by 0x100 once it is nonzero, index 3 is 0xc000 then 0x9000, index 4 is 0x0008 and index 5 is zero. The odsyInitCfifo header words and the post-data doubleword `0x7f0 = 10^9` may name a clock or timeout and are not read. No emitter for this format was found on the host side, so the decode has to come from the data and from what the driver does around the load.
