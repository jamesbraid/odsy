# BUZZ microcode: word format, loading and dispatch

Labels: **established** (read from a binary, with where), **inferred** (a reasoned reading, with the reasoning), **unknown**. Release IRIX 6.5.30m. "Image" means `ucode/ODSY/buzz_xform.bin` unless the kernel's copy (`buzz_ucode`, see `buzz_ucode.md`) is named. Record numbers are 0-based indices of 12-byte records in the image.

The listing is `ucode/disasm/buzz_xform.lst` (and `buzz_ucode_kernel.lst` for the kernel copy), made by `scripts/buzz_ucode_disasm.py`. It prints each record's six halfwords and the field groups below. "The instruction set (pass 12)" gives each field its role: register file, vector dot-product unit, two write ports, parameter memory, scalar unit, output stage and colour unit.

## Summary

- One instruction is 96 bits, stored as six big-endian halfwords; bits 95:94 are never set, so 94 bits carry information. The instruction RAM holds 2048 words. **established.**
- The host writes the RAM through the command FIFO: a "set address" word, then six data words per instruction, least significant halfword first. **established.**
- There is no in-program branch address field. Routines are entered through addresses the host writes into sequencer registers, and end with a two-bit end mark that takes effect five instructions later. **established** for the end mark's position; the rest **inferred**.
- The program is longer than the RAM. Instructions past record 2047 are paged into a 200-word window at RAM addresses 1848 to 2047. **established.**
- A record drives several units at once: a four-lane dot-product unit over a 32-register file whose first 17 registers are the host's matrices, a parameter memory, a one-lane scalar unit, an output stage that divides by w and numbers the vertex words, and a colour unit. **inferred**, pass 12; the sequencer register numbering is **established** from the shadow stride (below), their roles **inferred**.
- Nothing in the image or its loaders shows rendering precision (sub-texel bits, filter weights, LOD, colour iterators). This program is the transform and lighting stage; see "Precision".

The routine map, one row per routine with its end mark, length and operand fields, is `ucode/buzz_routines.md`.

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

The numbering is **established** from the shadow stride above and the host uses: 0x27 is the address the loaders write, 0x28 the list slot, and 0x29, 0x2a and 0x2c the three per-program words `AddProgram` relocates. The roles of the other registers below are **inferred** from how the host writes them. The kernel's start-up words `0x2e008380` and `0x2600807f` write 896 to register 0x2e and 127 to register 0x26; what those two limit is **unknown** from the binaries (values established). A read of the microcode routines that consume sequencer registers 0x26 and 0x2e would settle it.

| Reg | Role | Who writes it, with what |
|---|---|---|
| 0x20 | size of one light record in the colour unit's memory | `ody_lighting.s` |
| 0x21 | size of one light record in parameter memory | `ody_lighting.s` |
| 0x22-0x25 | four colour-unit format words | context default 0, 2, 10, 14; kernel textport and the X module write 0x22 = 1, 0x23 = 3 before colour-index drawing and 0, 2 before RGB drawing (`docs/opengl.md`) |
| 0x26 | role unknown (a limit on w is a guess from the value) | 127 at kernel start-up |
| 0x27 | instruction write address | the loaders (above) |
| 0x28 | slot index into the routine list | `__glOdysseyValidateProgram`, `odsyRestoreXform` (pass 10) |
| 0x29 | vertex routine start address | `AddProgram` records, data loads |
| 0x2a | vertex loop address | `AddProgram` records |
| 0x2b | vertex copy count | no `lui` of 0x2b00 in libGLcore, the X module or the kernel objects |
| 0x2c | alternate (exit) loop address | `AddProgram` records |
| 0x2d | DMA count | no `lui` of 0x2d00 in the same code |
| 0x2e | role unknown | 0x380 (896) from the kernel and the GL context default |
| 0x2f, 0x30 | set and reset of the edge flag | `0x2f00c02e` / `0x3000c02e` before each clipped-vertex send (`RGBSendFc*`, `ody_vertex.s`) |
| 0x31 | parameter-memory light base: the word index that relative parameter addresses (bit 9 set) and the 0x1a2/0x1bb stores add to | lighting, texture generation, clip planes, constants |
| 0x32 | colour-unit light base: the address the colour unit's data loads write at | 24 around a lighting data load, then 0 |
| 0x33 | base of the routine list | `__glOdysseySetProgram` |
| 0x34 | register-file base: the word index the 0x1c8/0x1df stores write at | the matrix validators (`ody_xform.s`) |
| 0x35 | colour-material copy enable | context default 0; `ValidateColorMaterial` (`ody_attrib.s`, 0x0d9565c0) |

This corrects two readings of earlier passes: 0x26 is not a routine address (127 is the exponent limit), and 0x2e is the FIFO mark, which is why it did not move with the 99-record insertion.

## Programs, entries and dispatch

- **established.** `AddProgram` (`ody_program.s`, 0x0d9c8880) builds, per GL state combination, a list of record numbers (context offsets from `0x10000 - 23984`, stride 4) and a per-program record of eight words (from `0x10000 - 22952`, stride 32): three addresses sent as registers 0x29, 0x2a, 0x2c, a value sent as 0x33, an index into the list, the overlay start, and one single-record patch (RAM address and image record). The numbers stored into the list are image record numbers: 12, 26, 40, 51, 77, 82, 87, 92, 97, 102, 107, 108, 119, 123, 127, 145, 159, 515, 606, 611, 626, 641, 656, 694, 719, 734, 758, 768, 779, 891, 902, 911, 920, 931, 964, 975, 986, 997, 1013, 1023, 1035, 1045, 1057, 1071, 1094, 1136, 1173, 1198, 1200, 1211, 1216 (immediate loads only; values built by arithmetic are not in this list).
- **established.** Most are routine starts: 41 of these 51 records sit exactly five records after an instruction whose bits 1:0 are 01, and three more (515, 1173, 1198) five after a 10 (the end marks, next section). The other seven (108, 127, 159, 606, 779, 931, 1200) have no mark five records back; whether they are entered mid-routine or follow a shorter routine is **unknown**. Routines repeat in shape: 611, 626 and 641 are three 15-record routines that differ in a few fields, and 1153 to 1193 is a run of 5-record routines.
- **inferred.** How a routine follows another: no field in the program holds these addresses (at every 10- and 11-bit field position over the first 2048 records, at most 9 of the 51 entries occur among the field's values, against 1024 or 2048 possible values), so the sequencer takes the next routine from a list, not from the instruction. How the host's list reaches the board: registers 0x28 and 0x60 (pass 10, last section). Where it lives on the board: **unknown** (`docs/open-questions.md`) (the program-counter trace named there).
- **inferred.** How a command word reaches an entry (`ucode/buzz_routines.md`, "How a command word reaches a routine"): a word in the position form (top byte `0x8n` or `0x9n`) runs a routine on arrival; an opcode of 0x100 or more is itself the entry record, and a smaller opcode, a data format, runs the routine held in sequencer 0x29. The eight opcodes of 0x100 or more that the 6.5.30m host code sends are all routine entries, and each routine reads as many operands as its word carries.

## Overlays

- **established.** If the image has 2048 or more records, `AddProgram` treats any address of 1799 or above as paged: it takes the lowest such address as the overlay start `o` and rewrites each address `a >= o` as `a - o + 1848`. `__glOdysseySetProgram` (and the kernel's `odsySetProgram` in `odsy_ctxsw.o`) loads `min(image_size - o, 199)` records from image record `o` to RAM address 1848 when the overlay changes, then one patch record, then registers 0x29 and 0x33 (a list entry and its position, in either order: libGLcore sends 0x29 first, the kernel 0x33), the word `0x90808800` with two zero operands, and registers 0x33, 0x29, 0x2a, 0x2c from the per-program record. libGLcore also first rewrites the previous patch address with its original record.
- **inferred.** Image records 1848 to 2047 are the overlay that is resident after a full load: an overlay starting at 1848 maps onto itself.

## Instruction fields (provisional)

Bit 95 is the top bit of h0, bit 0 the bottom bit of h5. The split below is the one the listing prints; "The instruction set (pass 12)" below gives the roles, and two boundaries differ there: bits 63:59 are one register number and bit 58 a store flag, not `mc`. Each boundary rests on the pattern named; a field's meaning is **unknown** unless stated.

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
- **inferred** (pass 11). In the kernel's built-in program a value-3 mark ends a part that a sequencer value names: the start-up stream of `odsy_tport.o` sets sequencer 0x2a to 224 and 0x2c to 234, five records after the marks at 219 and 229 (`ucode/buzz_routines.md`, routine 214).

## The instruction set (pass 12)

Release 6.5.30m; records of `ucode/ODSY/buzz_xform.bin`; host code N32 libGLcore. This pass gives each field of the "Instruction fields" table a role. It rests on routines whose inputs the host fixes (the register and parameter stores 418, 443, 456 and 479, the clip-plane routine 0, texture generation 51 and the unlit vertex routines 214 and 525), and the counts below check each rule against the whole image. `ucode/buzz_routines.md` uses these names.

### Register file and the matrix table

- **established** (host side): the 0x1c8 and 0x1df stores write the 68-word matrix table at the word index in sequencer 0x34 (`ucode/buzz_routines.md`). `__glOdysseyValidateMatrixComb` (`ody_xform.s`, source lines 405 to 525) builds the combined matrix at index 0 as four rows: row 0 is the product's x row scaled by the viewport's x scale plus its w row times the viewport's x centre, row 1 the same for y, row 2 the z row mapped through the depth range, row 3 the product's w row unchanged; index 16 holds the clip-space z row before the depth-range mapping (stores at context +0x10000 - 27192 to - 27180).
- **inferred**: the register file holds 32 registers of four lanes (x, y, z, w), numbered by five-bit fields, and the matrix table is its first 17 registers, four words to a register: R0 to R3 the combined rows (window x, window y, window z, clip w), R4 the clip-space z row, R5 to R8 the texture matrix rows s, t, r, q, R9 to R12 the modelview rows, R13 to R15 the normal matrix rows. R16 receives the normal matrix's fourth row but routines overwrite it per vertex, and R17 to R31 are working registers. The evidence: the five dot products R3, R0, R1, R4, R2, in five consecutive records that start by loading the position slot, occur 50 times in the image (a scan of every record that loads slot 0 and issues on R3), once in every vertex routine and table program; the texture rows R8, R5, R6, R7 follow on the texture-coordinate slot whenever the program textures (243, 542, 563, 584); the clip-plane routine uses R9 to R12, and the sphere-map routines dot R13 to R15 with the normal slot.

### Inputs: field r3 (bits 81:77)

- **established**: values 16 to 31 read operand 0 to 15 of the command word that dispatched the routine (`ucode/buzz_routines.md`, "How a command word reaches a routine").
- **inferred**: values below 16 read an attribute slot of `BUZZ.h` section 1: 0 position, 1 normal, 3 texture coordinate, 5 colour, 6 to 13 the material parameters `ApplyParameter` sends, 14 the four floats of the data-load word `0x8e809015`, 15 the last four operands of a slot 15 command. The position, texture and normal readings follow from the matrix rows they meet (above).

### The vector unit: fields d0 (47:44), r1 (91:87), r2 (86:82) and a (93:92)

- **inferred**: d0 is three controls and a pipeline mark. Bit 47 issues a four-lane dot product of R[r1] with the operand latch B. Bit 46 loads B: from the r3 input when bit 45 is clear, from register R[r2] when it is set; bit 45 never occurs without bit 46 (0 of 2644 non-idle records). With bit 47 clear, a load passes B on as the result: routine 456 issues d0 = 4 with r3 = operand 0 to 15 and the sixteen words land unchanged in R0 to R3 seven records later, which is how the host's matrices reach the table. Bit 44 is set on the record after 999 of the 1128 issues and carries no operand.
- **inferred**, timing: an issued operation reads A in its own record and B two records later; a slot load reaches B two records after its own record, a register load in its own record. This is the only order under which every one of these computes what its host state requires: routine 243 issues the clip z and window z rows (246, 247) before it loads the texture coordinate (248) and must dot them with the position; the clip routine dots plane A at record 9 and loads the eye coordinates at 11, and its planes are eye-space planes (`__glOdysseyValidateClipPlanes`, `ody_context.s`, source lines 1761 to 1790, sends context +1748, the eye planes); the sphere-map routine 145 dots R25 with itself at 155, its own register load.
- **inferred**, field a = 1 (lane mode): with r1 bit 4 set, a register load merges only the lanes in r1 bits 3:0 into B. Routines 77 to 107 do this with r1 = 0x11, 0x12, 0x14, 0x18 and 0x13, exactly the S, T, R and Q bits (1, 2, 4, 8) `AddProgram` tests before selecting each one (`ody_program.s`, source lines 1104 to 1121). With r1 bit 4 clear, r1 bits 1:0 pick one lane of R[r2]: that lane goes to the scalar unit (stores 418 and 443 read R16 lane 0 and lane 1 in turn).
- Values a = 2 and 3 occur in 75 records; their effect is **unknown**.

### Write ports

- **inferred**, port V (fields bits 63:59 and bx 66:64): a vector result is written seven records after its issue to lane bx bits 1:0 of register R[bits 63:59] when bx bit 2 is set. Check: 494 of the 525 records with bx bit 2 set have an issue seven records earlier; the other 31 sit within seven records of a routine entry, where the issue belongs to the routine before in the list.
- **inferred**, port P (fields rb 71:67, ln 74:72, b 76:75): the record writes lane ln bits 1:0 of R[rb] when ln bit 2 is set, from a source b selects. With b = 0 the data is the parameter-memory word read two records before: 515 of the 543 such records have a nonzero read address two back and the other 28 read address 0, the first light record's first word; none has a parameter store there. With b = 2 the data is the scalar unit's result: 237 of the 299 such records have a scalar operation (d1 nonzero) four records before, against at most 163 at any other distance.

### Parameter memory: bits 58 and 57:48

- **inferred**: bits 57:48 are a word address in parameter memory, the table the 0x1a2 and 0x1bb stores fill (`ucode/buzz_routines.md`). Bit 9 of the address adds sequencer 0x31: routines name the light record as 0x200 + k, and the per-light routines run once per light against a base the sequencer moves by the record size in 0x21. Bit 58 clear is a read, bit 58 set a store. In the stores 418 and 443 every store address 0x200 + k follows by one record a lane-mode read of R16 whose lane matches k's low bit, and R16 received operand k seven records after the operand read.
- **established** (host side, `ody_context.s` source lines 2727 to 2808; the value at 483 and 495 is register f20, cleared by `mtc1 $zero` at the start of `__glOdysseyInitDefaultValues`): the constants at 0x1e0 to 0x1ef are 1.0, 0.5, -1.0, 0.0, 2.828427 (2 times the square root of 2), 3.0, 1.414214, 0.353553, -2.0, -1.414214, -0.707107, -0.5, 131072.0, -32.0, 0.03125 and 0.0. Routines load 0.0 (0x1e3) into the w lane of a register before a three-lane dot product of it, and 1.0 (0x1e0) where a lane must pass through.
- **established** (host side, `ValidateLight` in `ody_lighting.s`, source lines 268 to 356): the sixteen words of light `i`, stored at parameter index `16 * i`, are: 0 to 2 the light position scaled by 1/w for a local light, or the unit direction for a directional one; 3 to 5 the negated unit half-vector toward an infinite viewer (zero for a local light); 6 a scalar the host builds from those two; 7 to 9 the constant, linear and quadratic attenuation; 10 to 12 the negated unit spot direction; 13 and 14 the spot terms (1.0 and 0.0 without a spot); 15 the constant 4194304.0 (2 to the 22nd).

### The scalar unit: field d1 (43:40)

- **inferred**: d1 names a one-lane operation whose result reaches port P (b = 2) four records later and the output stage seven records later. Its operand is the lane a lane-mode read selects in the same record, or with no such read the vector result that arrives in that record. Code 8 passes the lane unchanged: the stores 418 and 443 write operands through it into parameter memory, and routine 278 sends sixteen parameter words through it to the output words 0 to 15. Codes 1, 0xd and 0xe follow a dot product of a register with itself (sphere map 155 to 168, routine 668 at 672 to 692) and are the normalisation steps; which code is the reciprocal square root and which the multiply is **unknown**.

### The output stage: fields d2 (39:32) and bits 15:2

- **inferred**, the packet: a vertex leaves as a header and numbered words. The header record has listing value `s1` 0x110 to 0x116 or 0x210 to 0x216, and its `s0` is the number of words minus one; each word record has bit 9 of the low halfword set and `s0` its index, from 1; the last word carries bit 10 (`s1` 0x180). Every self-contained vertex routine fits this: headers 6, 9, 4, 7, 8 and 10 over 7, 10, 5, 8, 9 and 11 words (routines 214, 243, 525, 542, 563, 584), and the rectangle routine 303 sends two headers of 6, one per corner, over words 1 to 14. Words that come from the colour unit set bit 2 (`s1` 0x081) and come in pairs, one colour to two words.
- **inferred**, d2: a nonzero d2 takes one vector result that the register file did not keep, applies its operation, and the word field of the same record outputs the value. In the self-contained vertex routines (214, 525, 542, 563, 584) the d2 records take the dot results in issue order, so each code meets a known row: the w row gets 0x2b, x gets 0x46, y and window z get 0x26, the clip-space z gets 0x08 and is never output, and the texture rows get 0x08 for q and 0x26 for s, t and r. Because the host folds the viewport into the rows (above), x/w is the window coordinate; so 0x2b forms 1/w (the packet carries it), 0x26 and 0x46 multiply by 1/w, and 0x08 consumes a value without output. Under the perspective-texture flag (routines 563, 584, 1211) the codes are 0x33, 0x44 and 0x24 for w, x and y and 0x2c for q, whose result is output as a word. Across routine boundaries the pairing is not by issue order (routine 26's 0x08 cannot take routine 0's w): which result a code takes there, and what the 0x33, 0x44, 0x24 and 0x2c variants change, are **unknown**.

### The colour unit: bits 31:16

- **inferred**: bit 19 set means the unit idles (the idle record is that bit alone). Code 0x1f20 copies the four lanes of the r3 slot into the colour unit: routine 410 does it with slot 14, which is how the kernel and libGLcore load four floats into the colour unit's memory at sequencer 0x32 (`odsyRestoreXform`, `ody_lighting.s`); the unlit vertex routines do it with the colour slot 5. Code 0x1f22 copies a slot and sends it to the output as the two colour words (1198, 584, 303, 324). The lighting codes (0x9a08 to 0x9f58, 0x1928, 0x1932, 0x1c30 and others) are **unknown**.

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

Passes 6 and 7 above found no operation from the host side alone; pass 12 names the units by the routines whose inputs the host fixes. What remains is listed in `docs/open-questions.md` ("Remaining operation codes and end marks 1 and 2"): pairing d2 codes with results across routine boundaries by simulating the sequencer over one program list, the scalar and colour-unit codes, and the value-3 marks (pass 10 below; routine 260 shows one choosing between the loop and exit entries).

## Pass 10: the list's path to the board, the value-3 marks and what no software can settle

Release IRIX 6.5.30m; libGLcore N32 `ody_program.s`, kernel `odsy_ctxsw.o`, listing `ucode/disasm/buzz_xform.lst`.

- **established.** The list of routine entries reaches the board through the command FIFO, which corrects the pass 2 statement that libGLcore sends only registers 0x29, 0x2a, 0x2c and 0x33 per program. `__glOdysseyValidateProgram` (`ody_program.s`, from line 1968) sends, for each list slot `j` below the list length (context word at `0x10000 - 22956`): the word `0x28008000 | enc(j)` (sequencer register 0x28, the slot index) and the word `0x60008000 | enc(entry)` (register 0x60, the image record number read from the list at context offset `0x10000 - 23980 + 4j`, so list elements 1 to count; element 0, at `0x10000 - 23984`, is not sent by this routine), where `enc(v)` is `(v & 0x3ff) | ((v >> 10) << 23)` (`docs/buzz.md` section 4). The kernel's context restore writes register 0x28 = 0 once and then a run of 0x60 words (`odsyRestoreXform`, `docs/buzz.md` section 4). **inferred** that register 0x28 selects the list slot and register 0x60 stores an entry there, and that the kernel's single 0x28 write relies on the slot advancing after each 0x60 write (libGLcore writes the slot for every entry). The board's list is therefore loaded by the host, not read from data memory, and the per-program words of pass 2 (0x29, 0x2a, 0x2c, 0x33) point into it.
- **established.** The value-3 marks of bits 1:0 number 43 in `buzz_xform.bin`, at records 219, 229, 250, 263, 1320, 1358, 1374, 1401, 1417, 1447, 1467, 1491, 1504, 1535, 1556, 1591, 1608, 1640, 1663, 1710, 1737, 1765, 1784, 1818, 1846, 1890, 1924, 1984, 2019, 2079, 2114, 2174, 2209, 2322, 2350, 2398, 2437, 2510, 2550, 2620, 2656, 2722 and 2759. The count is odd, so they do not all come in pairs; the gaps of the first five pairs are 10, 13, 38, 27 and 30 records. The records carrying them share no other field (the most common high-half pattern covers 6 of 43), and the record after the first of a pair is idle in the 219/229 case. Whether they are loop bounds, subroutine calls or something else: **unknown** (`docs/open-questions.md`): a trace of the sequencer's program counter while one routine runs (the sequence of record numbers executed, for a known list), which shows whether the program counter returns to the record after the first mark.
- **unknown** (`docs/open-questions.md`). The meaning of any operation field and of the end-mark values 1 and 2. On a board it would show in: run one routine entry whose inputs the host chose, such as the lighting loader of entry 410 with four known floats at data address 24, then read the data memory and sequencer registers back through the context-save record (`BUZZ.h` +0x118000, `docs/buzz.md` section 4) and compare with the routine's records. Host-side readers have no other source: no routine's result returns to the host (above).
- **inferred** (pass 11, `ucode/buzz_routines.md`). How an attribute opcode reaches its routine: no table maps opcodes to records because none is needed. Opcodes of 0x100 or more are entry records (0x12f is 303, 0x1a2 is 418), and a position-form word with a format opcode runs the routine held in sequencer 0x29.
- **unknown: no shipped software or published source depends on it.** The `ffffffff` trailer of the kernel array and the last 218 records after it are never sent to the board (`ucode/buzz_ucode.md`), so no bus capture can show their use; only the tool that wrote the array could.
