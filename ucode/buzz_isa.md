# BUZZ microcode: word format, loading and dispatch

Labels: **established** (read from a binary, with where), **inferred** (a reasoned reading, with the reasoning), **unknown**. Release IRIX 6.5.30m. "Image" means `ucode/ODSY/buzz_xform.bin` unless the kernel's copy (`buzz_ucode`, see `buzz_ucode.md`) is named. Record numbers are 0-based indices of 12-byte records in the image.

The listing is `ucode/disasm/buzz_xform.lst` (and `buzz_ucode_kernel.lst` for the kernel copy), made by `scripts/buzz_ucode_disasm.py`. It prints each record's six halfwords and the provisional field groups below. It does not name operations: no opcode in this program has been tied to a behaviour.

## Summary

- One instruction is 96 bits, stored as six big-endian halfwords; bits 95:94 are never set, so 94 bits carry information. The instruction RAM holds 2048 words. **established.**
- The host writes the RAM through the command FIFO: a "set address" word, then six data words per instruction, least significant halfword first. **established.**
- There is no in-program branch address field. Routines are entered through addresses the host writes into sequencer registers, and end with a two-bit end mark that takes effect five instructions later. **established** for the end mark's position; the rest **inferred**.
- The program is longer than the RAM. Instructions past record 2047 are paged into a 200-word window at RAM addresses 1848 to 2047. **established.**
- Nothing in the image or its loaders shows rendering precision (sub-texel bits, filter weights, LOD, colour iterators). This program is the transform and lighting stage; see "Precision".

## Two copies of the program

- **established.** The image has 2794 records. The kernel's `buzz_ucode` array has 2266 records plus 4 bytes (`ffffffff`). Record by record, the kernel copy equals image records 0 to 791 and 891 to 2364: the image has 99 records inserted at 792 and 429 appended after the kernel copy's end (`difflib` over records, `scripts/buzz_ucode_disasm.py --kernel` applies the shift to entry labels). Both 792 and 891 are routine entries named by libGLcore (below), so the insertion is one whole routine.
- **inferred.** The kernel copy is an older build of the same program. The kernel loads it at board start-up (`odsyInitCfifo`); `gf_OdsyDownload` later replaces the kernel's shadow with a caller's image. Which program calls `gf_OdsyDownload` with `buzz_xform.bin`: `gfxinit` (pass 7, below; the name is assembled from `ODSY/buzz_` and `xform.bin`, which is why no binary holds the whole string). libGLcore names only a header, `buzz_xform.u.h`, in its debug line table.

## Loading

**established** from `odsyDownloadUcode` (`odsy_ucode.o`, IP30; IP35 has the same callers and was not diffed), `odsyInitCfifo` (`odsy_init.o`) and `__glOdysseySetProgram` (`ody_program.s`, N32 libGLcore 0x0d9c9ee0):

| FIFO word | Meaning |
|---|---|
| `0x27008000 \| enc(a)` | Set the instruction write address to `a` (0 to 2047). |
| `0x40008000 \| enc(h)` | Write one halfword `h` of the instruction at the current address. Six are sent per instruction, h5 (least significant) first, h0 last; the address then moves to the next instruction (inferred: no address word is sent between instructions in the init loop or in `odsyDownloadUcode`'s loop). |

`enc(v) = (v & 0x3ff) | ((v >> 10) << 23)`: the low ten bits stay in place and the rest go to bit 23 and up. For a 16-bit `h` that fills bits 28:23, under the 0x40 tag; for an 11-bit address only bit 23 is used.

- `odsyDownloadUcode(board, ram_addr, first, count)` checks `ram_addr < 2047`, `ram_addr + count < 2048`, and that `first + count` stays inside the shadow image whose size (in records) is in the board record; it then sends one `0x27` word and `count * 6` data words.
- `gf_OdsyDownload` (the user request) takes a byte length that must divide by 12 into fewer than 4094 records, copies the caller's image into the kernel shadow, and downloads `min(n, 2047)` records to address 0. The `count` limit means record 2047 itself is never written by this path.
- `odsyInitCfifo` sends `0x2e008380` and `0x2600807f` (sequencer registers, below), then `0x27008000` (address 0) and the first 2048 records of `buzz_ucode`.

## Sequencer registers

The words `(r << 24) | 0x8000 | enc(v)` with `r` from 0x20 to 0x35 write a register the host never reads back. **established** as values. libGLcore keeps a 32-bit shadow of each one at a fixed stride, so their numbering is contiguous: register `r` lives at context offset `0x10000 - 24108 + 4 * (r - 0x20)` (`__glOdysseyInitDefaultValues` in `ody_context.s` writes 0x22-0x25, 0x29, 0x2a, 0x2c, 0x2e, 0x34, 0x35 from those offsets; `ody_lighting.s` writes 0x20, 0x21, 0x29, 0x32 and 0x31; `__glOdysseySetProgram` 0x29, 0x2a, 0x2c, 0x33).

| Reg | Who writes it, with what | Reading |
|---|---|---|
| 0x22-0x25 | context default: 0, 2, 10, 14; kernel textport 0x22 = 1, 0x23 = 3; X module (`odyssey.so`) 0x22 = 1, 0x23 = 3 before colour-index drawing and 0x22 = 0, 0x23 = 2 before RGB drawing (`docs/opengl.md`) | 0x22 and 0x23: **inferred** a colour-mode pair (index against RGB), because every site that sends the index colour word (`0xc580c406`) uses 1 and 3 and every site that sends an RGB colour word uses 0 and 2, in the X module's fill and glyph paths and in the kernel textport against the GL default. Which routine reads them and what 0x24 and 0x25 do: **unknown** |
| 0x26 | kernel init: 127 | **inferred** a routine address: 127 is an entry named by AddProgram |
| 0x27 | write address for loading | **established** (above) |
| 0x29, 0x2a, 0x2c | per-program record words; lighting sets 0x29 = 410 around a data load and then restores it | **inferred** routine addresses: AddProgram relocates these three exactly as it relocates its entry list when they fall in the overlay range |
| 0x2e | 896 from both the kernel init and the GL context default | **unknown**; not a routine address (it does not move with the 99-record insertion) |
| 0x32 | lighting: 24 before a data load, 0 after | **inferred** a data-memory address for the following data words |
| 0x33 | `__glOdysseySetProgram`: program number + 1, then a per-program value | **unknown** |
| 0x20, 0x21, 0x31, 0x34, 0x35 | lighting, texgen, context default (0 for 0x34, 0x35) | **unknown** |
| 0x2f, 0x30 | `0x2f00c02e` / `0x3000c02e` before each clipped-vertex send (`RGBSendFc*`, `ody_vertex.s`; 26 sites); bits 15:14 = 11, unlike the others | **unknown** |

## Programs, entries and dispatch

- **established.** `AddProgram` (`ody_program.s`, 0x0d9c8880) builds, per GL state combination, a list of record numbers (context offsets from `0x10000 - 23984`, stride 4) and a per-program record of eight words (from `0x10000 - 22952`, stride 32): three addresses sent as registers 0x29, 0x2a, 0x2c, a value sent as 0x33, an index into the list, the overlay start, and one single-record patch (RAM address and image record). The numbers stored into the list are image record numbers: 12, 26, 40, 51, 77, 82, 87, 92, 97, 102, 107, 108, 119, 123, 127, 145, 159, 515, 606, 611, 626, 641, 656, 694, 719, 734, 758, 768, 779, 891, 902, 911, 920, 931, 964, 975, 986, 997, 1013, 1023, 1035, 1045, 1057, 1071, 1094, 1136, 1173, 1198, 1200, 1211, 1216 (immediate loads only; values built by arithmetic are not in this list).
- **established.** Most are routine starts: 41 of these 51 records sit exactly five records after an instruction whose bits 1:0 are 01, and three more (515, 1173, 1198) five after a 10 (the end marks, next section). The other seven (108, 127, 159, 606, 779, 931, 1200) have no mark five records back; whether they are entered mid-routine or follow a shorter routine is **unknown**. Routines repeat in shape: 611, 626 and 641 are three 15-record routines that differ in a few fields, and 1153 to 1193 is a run of 5-record routines.
- **inferred.** How a routine follows another: no field in the program holds these addresses (at every 10- and 11-bit field position over the first 2048 records, at most 9 of the 51 entries occur among the field's values, against 1024 or 2048 possible values), so the sequencer takes the next routine from a list, not from the instruction. How the host's list reaches the board: registers 0x28 and 0x60 (pass 10, last section). Where it lives on the board: **unknown** (`docs/open-questions.md`) (the program-counter trace named there).
- **unknown.** How a command token reaches an entry. The attribute words (`BUZZ.h` section 1) carry a 10-bit opcode and a slot; no table in the image or in libGLcore maps opcodes to records. Opcode-to-routine dispatch may be in hardware.

## Overlays

- **established.** If the image has 2048 or more records, `AddProgram` treats any address of 1799 or above as paged: it takes the lowest such address as the overlay start `o` and rewrites each address `a >= o` as `a - o + 1848`. `__glOdysseySetProgram` (and the kernel's `odsySetProgram` in `odsy_ctxsw.o`) loads `min(image_size - o, 199)` records from image record `o` to RAM address 1848 when the overlay changes, then one patch record, then registers 0x29 and 0x33 (a list entry and its position, in either order: libGLcore sends 0x29 first, the kernel 0x33), the word `0x90808800` with two zero operands, and registers 0x33, 0x29, 0x2a, 0x2c from the per-program record. libGLcore also first rewrites the previous patch address with its original record.
- **inferred.** Image records 1848 to 2047 are the overlay that is resident after a full load: an overlay starting at 1848 maps onto itself.

## Instruction fields (provisional)

Bit 95 is the top bit of h0, bit 0 the bottom bit of h5. The split below is the one the listing prints. Each boundary rests on the pattern named; a field's meaning is **unknown** unless stated.

| Bits | Listing | Evidence for the boundary |
|---|---|---|
| 95:94 | (none) | **established** never set in either copy |
| 93:92 | `a` | two bits above three five-bit fields |
| 91:87, 86:82 | `r1`, `r2` | **inferred** register numbers: h0 values are often `k * 0x84`, two equal five-bit numbers (records 0-3 read 9, 10, 11, 12 in both) |
| 81:77 | `r3` | **inferred** register number: records 418-433 count it 16 to 31 across the h0/h1 boundary |
| 76:75 | `b` | values 0-3; MDL split (below) |
| 74:72 | `ln` | **inferred** lane select: records 2-5 cycle 4, 5, 6, 7 with `rb` fixed (0x4c8, 0x5c8, 0x6c8, 0x7c8), a four-component write two records after a four-record read |
| 71:67 | `rb` | **inferred** register number (the fixed 25 or 26 above) |
| 66:64 | `bx` | three bits that change with `ln` in records 6-10 |
| 63:58 | `mc` | top six bits of h2, constant across the counting runs |
| 57:48 | `ma` | **inferred** data-memory address: counts 0x120-0x12b (records 0-11), 0x100-0x10f (51-66), 0x200-0x20c (427-439) |
| 47:44, 43:40, 39:32 | `d0`, `d1`, `d2` | `d2` takes few values (0x26, 0x08, 0x46, 0x2b, 0x24, 0x2c, 0x33, 0x44) |
| 31:28, 27:24, 23:20, 19:16 | `e0`..`e3` | `e3` is 8 in 2189 of 2794 records |
| 15:12, 11:2 | `s0`, `s1` | `s1` is mostly 0x80 or 0x81 (h5 = `n200` or `n204`) |
| 1:0 | `sq` | **established** position of the end mark |

The splits of 47:16 are the weakest. A minimum-description-length search over the image (fields chosen to minimise total coded size) agrees with 81:77, 47:44 and 1:0, and merges several of the others; neither method names an operation.

The record with only bit 19 set (h4 = 0x0008, rest zero; 150 times) appears in long runs and between routines; the listing prints it as `idle`. **inferred** a no-operation (the default value of `e3` with every unit idle).

### Sequencing bits 1:0

- **established.** Value 1 appears 95 times in the image; for 41 of the 51 libGLcore entries the record five before the entry has value 1. Value 2 appears 26 times; it sits five before entries 515, 1173 and 1198, and five before 410 (the lighting loader entry). In the run 1153-1193 it is the first record of each 5-record routine.
- **inferred.** Both are "end of routine" marks with four delay slots: the instruction carrying the mark and the four after it execute, then the sequencer starts the next routine. What separates 1 from 2 is **unknown** (2 occurs where a routine is only the mark plus its delay slots).
- **unknown.** Value 3 (43 times) comes in pairs 15 to 40 records apart (219/250, 1491/1504, 1984/2019, ...). A loop start and loop end would look like this, but nothing holds a count or target.

## Precision

- **established.** The host sends geometry, colours and texture coordinates as IEEE single-precision floats or as integers that the board converts (`BUZZ.h` section 1, attribute opcodes); lighting constants go to data memory as floats after a 0x32 address (`ody_lighting.s`). No instruction field is wide enough for a 32-bit immediate, so constants live in data memory.
- **unknown.** The arithmetic width of the units this program drives, and anything about sub-texel position, filter weights, LOD calculation or colour iteration. The routines that AddProgram selects are named by GL state (transform, lighting, texgen, clipping), not by rasterisation, so this program is not where texture filtering precision would be found. Those questions belong to the rasteriser and texture registers in `BUZZ.h`.

## Operation names (pass 6)

No instruction field or routine is named an operation in this pass. The only reading a host-side use supports is the pair above (registers 0x22 and 0x23 select index or RGB colour handling); routines are still known only by their entry numbers and the GL state that selects them. The attempt that failed: the lighting loader at entry 410 (host loads four floats after register 0x32 = 24 and word `0x8e809015`) is a 5-record routine whose records are all idle except the first and the last, and the 16-record counting run at 418 to 441 steps `r3` from 16 to 31 beside data addresses 0x200 to 0x20f, which matches the 0x200-0x20f table ids of `BUZZ.h` only by count. Neither says whether a record reads or writes data memory, so no operation is named: **unknown**.

## Who loads the image, and why no operation is named yet (pass 7)

- **established.** `usr/gfx/gfxinit` loads `buzz_xform.bin`. Its odsy routine (VA 0x1000e2c4) holds the strings `ODSY/buzz_` and `xform.bin` (file offsets 0x22ac8 and 0x22a28), prints "odsy_init: mapping xform ucode at %s", maps the file, and issues ioctl 108 on the board with a request whose words are the file size, the mapped address and a flag; it prints "Downloading xform ucode from %s (%lld bytes)" first and "GFX_DOWNLOAD failed" on error. When the environment variable `ODSY_DISABLE_UCODE_DOWNLOAD` is set it sets the flag word to 1 and skips the message but still issues the ioctl. **inferred:** ioctl 108 reaches `gf_OdsyDownload` (whose byte-length check, a multiple of 12, matches the file), so the image replaces the kernel's built-in copy at every gfxinit run; how the kernel treats the flag was not read. A sibling prefix `ODSY/nile_` sits beside `ODSY/buzz_`; no `nile_` file is in `root/`.
- **Why no operation can be named from the host side.** Every host routine read so far either loads the program, sets sequencer registers, or feeds vertices and constants; none reads a result of the program back. The transform output goes to the rasteriser, not to the host, so a host-side routine cannot serve as a Rosetta stone the way a host-computed table can. The one read-back path, `__glOdyGetFromHardware` (class-0 words 0x4c0 + n, `docs/buzz.md` section 4), returns saved state through block 0x5a, not computed values. The lighting loader (entry 410) shows that data goes to data memory but not which field addresses it. **established** as the set of host routines read; the conclusion is **inferred**.
- **Where a stone may still be found.** (1) libGLcore's software-clip paths (`__glOdysseySoftClipPick*`, `ody_select.s`) compute in C what the board's clip routines compute; matching the order of their operations against the routines AddProgram selects for the same state would tie fields to multiply-add and compare steps. (2) `gfP_OdsyGLGet` and the class-0 0x4c0 + n request name which state words the microcode pushes back; the routine that answers them must read data-memory addresses the host knows (the matrices and lighting constants it loaded), which would identify the read-address field. Neither was attempted in this pass.

## Next steps

1. Tie `a`, `d2` and `e0`-`e2` to operations by comparing routines that libGLcore selects under one GL state difference (for example the list entries chosen with and without lighting in AddProgram, source lines 851-942).
2. Trace one host data load end to end: register 0x32 = 24, word `0x8e809015`, four floats, entry 410. Records 410-417 should store four values at data address 24.
3. Decide what value 3 of bits 1:0 does from the instructions between each pair.

## Pass 10: the list's path to the board, the value-3 marks and what no software can settle

Release IRIX 6.5.30m; libGLcore N32 `ody_program.s`, kernel `odsy_ctxsw.o`, listing `ucode/disasm/buzz_xform.lst`.

- **established.** The list of routine entries reaches the board through the command FIFO, which corrects the pass 2 statement that libGLcore sends only registers 0x29, 0x2a, 0x2c and 0x33 per program. `__glOdysseyValidateProgram` (`ody_program.s`, from line 1968) sends, for each list slot `j` below the list length (context word at `0x10000 - 22956`): the word `0x28008000 | enc(j)` (sequencer register 0x28, the slot index) and the word `0x60008000 | enc(entry)` (register 0x60, the image record number read from the list at context offset `0x10000 - 23980 + 4j`, so list elements 1 to count; element 0, at `0x10000 - 23984`, is not sent by this routine), where `enc(v)` is `(v & 0x3ff) | ((v >> 10) << 23)` (`docs/buzz.md` section 4). The kernel's context restore writes register 0x28 = 0 once and then a run of 0x60 words (`odsyRestoreXform`, `docs/buzz.md` section 4). **inferred** that register 0x28 selects the list slot and register 0x60 stores an entry there, and that the kernel's single 0x28 write relies on the slot advancing after each 0x60 write (libGLcore writes the slot for every entry). The board's list is therefore loaded by the host, not read from data memory, and the per-program words of pass 2 (0x29, 0x2a, 0x2c, 0x33) point into it.
- **established.** The value-3 marks of bits 1:0 number 43 in `buzz_xform.bin`, at records 219, 229, 250, 263, 1320, 1358, 1374, 1401, 1417, 1447, 1467, 1491, 1504, 1535, 1556, 1591, 1608, 1640, 1663, 1710, 1737, 1765, 1784, 1818, 1846, 1890, 1924, 1984, 2019, 2079, 2114, 2174, 2209, 2322, 2350, 2398, 2437, 2510, 2550, 2620, 2656, 2722 and 2759. The count is odd, so they do not all come in pairs; the gaps of the first five pairs are 10, 13, 38, 27 and 30 records. The records carrying them share no other field (the most common high-half pattern covers 6 of 43), and the record after the first of a pair is idle in the 219/229 case. Whether they are loop bounds, subroutine calls or something else: **unknown** (`docs/open-questions.md`): a trace of the sequencer's program counter while one routine runs (the sequence of record numbers executed, for a known list), which shows whether the program counter returns to the record after the first mark.
- **unknown** (`docs/open-questions.md`). The meaning of any operation field and of the end-mark values 1 and 2. On a board it would show in: run one routine entry whose inputs the host chose, such as the lighting loader of entry 410 with four known floats at data address 24, then read the data memory and sequencer registers back through the context-save record (`BUZZ.h` +0x118000, `docs/buzz.md` section 4) and compare with the routine's records. Host-side readers have no other source: no routine's result returns to the host (above).
- **unknown** (`docs/open-questions.md`). How an attribute opcode reaches its routine. No table in the image, libGLcore or the kernel maps opcodes to records; the board may decode it in hardware. On a board it would show in: the program counter trace above, taken with one attribute word at a time.
- **unknown: no shipped software or published source depends on it.** The `ffffffff` trailer of the kernel array and the last 218 records after it are never sent to the board (`ucode/buzz_ucode.md`), so no bus capture can show their use; only the tool that wrote the array could.
