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

## Routines of the kernel copy from record 792

**established.** The kernel copy is an earlier shipped image, not a separate build. Its first
2266 records are byte-identical to records 0 to 2265 of `usr/gfx/ucode/ODSY/buzz_xform.bin` in
IRIX 6.5.9 to 6.5.27 (6.5.9 to 6.5.12 ship exactly 2266 records; 6.5.13 to 6.5.27 append 429 more),
and differ from 6.5.8's image only in records 1702, 1703, 1730, 1731, 1757 and 1758. In 6.5.28 the
image gained the 99 records at 792 that the table in `ucode/buzz_routines.md` counts, and the
libGLcore of that release renumbered its routines with it. Every library from 6.5.8 to 6.5.27
uses the kernel copy's numbering: the N32 `libGLcore.so` of 6.5.27 holds the program table at
.rodata address 0x0daeee90 (file offset 0x1eee90) with the record numbers below, and its program
builder loads the other entries as immediates in the text from 0x0d9dae7c to 0x0d9dbe64. The
kernel itself selects only routines 127 and 410 (`odsyInitCfifo`, `odsyRestartContext`); after a
context switch it restores whatever the client last wrote. Each entry below gives the routine's
place in `odsy_init.o` (array element `12 * record` from .data +0x7d0), what the 6.5.27 library
uses it for, and the 6.5.30m image routine with the same records, whose entry in
`ucode/buzz_routines.md` carries the reading. Extraction: `instigator extract` of each release's
Installation Tools and Overlays disc 1, compared record by record.

- **`803`** (routine; kernel copy, `odsy_init.o` .data +0x2d74), **established**: picks the second colour
  when GL two-sided lighting is on; the 6.5.27 library loads 803 as an immediate at 0x0d9db2bc. Same
  records as image routine 902. Arithmetic, **inferred** under the pass-13 rules of `ucode/buzz_isa.md`: with two-sided lighting it takes the constant 3.0 and the viewer register R26, computes one product of R26, and outputs the colour unit's front result as words 9 and 10 and the back one as words 1 and 2.
- **`812`** (routine; kernel copy, `odsy_init.o` .data +0x2de0), **established**: the one-colour lighting
  step added whenever GL_LIGHTING is on (immediate at 0x0d9db2c8 in the 6.5.27 library). Same
  records as image routine 911. Arithmetic, **inferred** under the pass-13 rules of `ucode/buzz_isa.md`: its inputs are the constant 3.0, R26 and colour working address 27; it computes one R26 product and outputs the same colour pair twice, as words 1 and 2 and as words 9 and 10.
- **`821`** (routine; kernel copy, `odsy_init.o` .data +0x2e4c), **inferred** (selection **established**):
  lights each further local light in RGBA mode, forty records reading data words 0x1e0 to 0x20e;
  immediate at 0x0d9daec8 in 6.5.27. Same records as image routine 920. Arithmetic, **inferred** under the pass-13 rules of `ucode/buzz_isa.md`: it takes the position slot, the modelview rows and the next light's position, attenuation and spot words, recomputes the eye position, scales the products it fires with one reciprocal square root and seven code-0xe multiplies, and outputs two colour words after the light-relative diffuse, specular and ambient products.
- **`832`** (routine; kernel copy, `odsy_init.o` .data +0x2ed0), **inferred** (selection **established**):
  the colour-index second part of a further local light, entered 11 records into 821's body
  (immediate at 0x0d9dae98, 6.5.27). Same records as image routine 931. Arithmetic, **inferred** under the pass-13 rules of `ucode/buzz_isa.md`: entered past 821's colour products, it takes the next light's words and the constant 2.828, computes one reciprocal square root and seven code-0xe scalings, and outputs two colour words.
- **`865`** (routine; kernel copy, `odsy_init.o` .data +0x305c), **inferred** (selection **established**):
  the colour-index first part of a further local light, seven records that read data word 0x20e;
  6.5.27 names it at 0x0d9dae7c. Same records as image routine 964. Arithmetic, **inferred** under the pass-13 rules of `ucode/buzz_isa.md`: inputs are the position slot, rows R9 to R11, -1.0, 0.0, light word 14 and word 0x1f4; it computes the eye position again and the light-relative specular and diffuse products, and outputs no vertex word.
- **`876`** (routine; kernel copy, `odsy_init.o` .data +0x30e0), **established**: closes the light loop in
  RGBA mode with no attenuation or spot flag, one colour and no perspective texture (6.5.27
  immediate at 0x0d9db470). Same records as image routine 975. Arithmetic, **inferred** under the pass-13 rules of `ucode/buzz_isa.md`: it takes the window-coordinate products held in R23 and the last per-light code-4 result, passes R23's lanes through code 8 so that x, y and z go out as words 8, 9 and 7 (d2 0x44, 0x24, 0x26), outputs the code-4 result as word 6, and adds the ambient product before sending the lit colour as words 1 and 2.
- **`887`** (routine; kernel copy, `odsy_init.o` .data +0x3164), **established**: the perspective-texture
  variant of 876's finish, named at 0x0d9db45c in the 6.5.27 library. Same records as image routine
  986. Arithmetic, **inferred** under the pass-13 rules of `ucode/buzz_isa.md`: it takes 876's inputs and computes the same code-8 passes and colour sum; its outputs sit one word higher under an eleven-word header: x 9, y 10, z 8 and the code-4 result 7.
- **`898`** (routine; kernel copy, `odsy_init.o` .data +0x31e8), **established**: twelve records finishing
  two colour outputs, writing lanes 4 and 6; 6.5.27 picks it at 0x0d9db474. Same records as image
  routine 997. Arithmetic, **inferred** under the pass-13 rules of `ucode/buzz_isa.md`: beyond 876's inputs it takes the back material slots 10 to 12, computes the back colour from the light-relative colours, and outputs the front colour as words 1 and 2, the back as 6 and 7 and the coordinates as words 9 to 11.
- **`914`** (routine; kernel copy, `odsy_init.o` .data +0x32a8), **established**: the finish when attenuation
  or a spot cone is in play with one colour, and also the colour-index finish (6.5.27, 0x0d9db384).
  Same records as image routine 1013. Arithmetic, **inferred** under the pass-13 rules of `ucode/buzz_isa.md`: its inputs are R23 and colour working addresses 25 and 26; it combines the stored sums and outputs them as words 1 and 2, with x, y and z through code 8 as words 8, 9 and 7 under a ten-word header.
- **`924`** (routine; kernel copy, `odsy_init.o` .data +0x3320), **established**: adds the separate specular
  colour to a one-colour finish; 6.5.27 selects it at 0x0d9db3d4. Same records as image routine
  1023. Arithmetic, **inferred** under the pass-13 rules of `ucode/buzz_isa.md`: it takes R23 and working addresses 25 to 27, selects the coordinates through code 8 and outputs them with the primary colour as words 1 and 2 and the separate specular colour as words 6 to 8, under a thirteen-word header.
- **`936`** (routine; kernel copy, `odsy_init.o` .data +0x33b0), **established**: the attenuated or spot-lit
  finish once the perspective-texture flag is set (6.5.27 immediate 0x0d9db428). Same records as
  image routine 1035. Arithmetic, **inferred** under the pass-13 rules of `ucode/buzz_isa.md`: with 914's inputs it computes the same sums and outputs them one word higher (x 9, y 10, z 8) under an eleven-word header.
- **`946`** (routine; kernel copy, `odsy_init.o` .data +0x3428), **established**: two-colour counterpart of
  914 in both the RGBA and colour-index paths, chosen at 0x0d9db388 in 6.5.27. Same records as image
  routine 1045. Arithmetic, **inferred** under the pass-13 rules of `ucode/buzz_isa.md`: it takes 914's inputs plus working addresses 28 to 30, combines the back colour from them and outputs it as words 6 and 7 beside 914's words.
- **`958`** (routine; kernel copy, `odsy_init.o` .data +0x34b8), **established**: finishes separate specular
  with two colour outputs; immediate at 0x0d9db3d8 of the 6.5.27 library. Same records as image
  routine 1057. Arithmetic, **inferred** under the pass-13 rules of `ucode/buzz_isa.md`: inputs are R23, the last code-4 result and working addresses 26 to 30; it selects R23's lanes through code 8 and outputs front and back primary and specular colours as words 1, 2 and 6 to 12 under a sixteen-word header.
- **`972`** (routine; kernel copy, `odsy_init.o` .data +0x3560), **established**: evaluates the fragment
  light's per-vertex terms, reading data words 0x1e4 to 0x20e in four lanes; 6.5.27 loads it at
  0x0d9db2d8. Same records as image routine 1071. Arithmetic, **inferred** under the pass-13 rules of `ucode/buzz_isa.md`: it takes the normal products, the light and viewer vectors (negating each lane with code 0xc) and light words 13 and 14, computes two reciprocal square roots and a code-2 result, and outputs the fragment light's terms into R18 to R22.
- **`995`** (routine; kernel copy, `odsy_init.o` .data +0x3674), **established**: only for a local,
  attenuated fragment light, reading data word 0x207 in lanes 4 to 6 (6.5.27 immediate 0x0d9db2dc).
  Same records as image routine 1094. Arithmetic, **inferred** under the pass-13 rules of `ucode/buzz_isa.md`: its inputs are the fragment light's constant attenuation (word 7), 3.0 and the registers before it; it multiplies two values by K and outputs no word, leaving its results in R21 and R22.
- **`1007`** (routine; kernel copy, `odsy_init.o` .data +0x3704), **established**: ends one-sided fragment
  lighting when the fragment light has no attenuation; 6.5.27 names it at 0x0d9db33c. Same records
  as image routine 1106. Arithmetic, **inferred** under the pass-13 rules of `ucode/buzz_isa.md`: it takes R20, R23 and the colour slots, computes two code-0xd, one code-5 and one code-3 result, and outputs a thirteen-word packet: the coordinates as words 10 to 12, word 9 through d2 0x25 and colour words 6 to 8.
- **`1020`** (routine; kernel copy, `odsy_init.o` .data +0x37a0), **established**: ends one-sided fragment
  lighting for a local attenuated fragment light (0x0d9db344 in 6.5.27). Same records as image
  routine 1119. Arithmetic, **inferred** under the pass-13 rules of `ucode/buzz_isa.md`: with 1007's inputs and 995's registers it computes one more code-0xe multiply and outputs 1007's packet.
- **`1037`** (routine; kernel copy, `odsy_init.o` .data +0x386c), **established**: the fragment-lighting
  ending used when either two-sided flag is set, picked at 0x0d9db318 in the 6.5.27 library. Same
  records as image routine 1136. Arithmetic, **inferred** under the pass-13 rules of `ucode/buzz_isa.md`: it takes R23, the fragment terms of 972 and the colour slots, computes four code-0xd, two code-5 and one code-0xe operation, and outputs a sixteen-word packet with the colour copies as words 6, 7, 8, 11 and 12.
- **`1054`** (routine; kernel copy, `odsy_init.o` .data +0x3938), **established**: closes table records 0 and
  3, the programs without texture or clip planes; a one-record routine: its first record carries end
  mark 2 and the next four are idle. Same records as image routine 1153.
- **`1059`** (routine; kernel copy, `odsy_init.o` .data +0x3974), **established**: the second of the run of
  bit-identical null closers; neither the 6.5.27 table nor its immediates name it. Same records as
  image routine 1158.
- **`1064`** (routine; kernel copy, `odsy_init.o` .data +0x39b0), **established**: is the +28 closer of table
  record 2 only, the untextured one-sided fragment-lighting program. Same records as image routine
  1163.
- **`1069`** (routine; kernel copy, `odsy_init.o` .data +0x39ec), **established**: serves as table record 5's
  closing routine, the two-sided form of record 2. Same records as image routine 1168.
- **`1074`** (routine; kernel copy, `odsy_init.o` .data +0x3a28), **established**: is appended to close any
  program once the perspective-texture flag is set; 6.5.27 loads it at 0x0d9dbddc. Same records as
  image routine 1173.
- **`1079`** (routine; kernel copy, `odsy_init.o` .data +0x3a64), **established**: is the commonest closer,
  one colour with neither separate specular nor fragment lighting, carried by ten table records and
  chosen at 0x0d9dbe5c. Same records as image routine 1178.
- **`1084`** (routine; kernel copy, `odsy_init.o` .data +0x3aa0), **established**: ends two-colour programs,
  the closing word of table records 7 and 13 and the immediate at 0x0d9dbe64. Same records as image
  routine 1183.
- **`1089`** (routine; kernel copy, `odsy_init.o` .data +0x3adc), **established**: ends one-sided programs
  with separate specular or fragment lighting, in records 4, 12, 14, 20 and 21 and at 0x0d9dbe44.
  Same records as image routine 1188.
- **`1099`** (routine; kernel copy, `odsy_init.o` .data +0x3b54), **established**: carries the vertex colour
  through with lighting off, nine records reading attribute slot 5; 6.5.27 adds it at 0x0d9db4a0.
  Same records as image routine 1198.
- **`1101`** (routine; kernel copy, `odsy_init.o` .data +0x3b6c), **established**: a tail of 1099 two records
  in, put before 1112 for a table program with perspective texture (0x0d9dbdcc in 6.5.27). Same
  records as image routine 1200.
- **`1112`** (routine; kernel copy, `odsy_init.o` .data +0x3bf0), **established**: one record finishing the
  colour with perspective texture, selected at 0x0d9db540 in 6.5.27. Same records as image routine
  1211.
- **`1117`** (routine; kernel copy, `odsy_init.o` .data +0x3c2c), **established**: the single-record colour
  finish without perspective texture; 6.5.27 names it at 0x0d9db54c. Same records as image routine
  1216.
- **`1122`** (routine; kernel copy, `odsy_init.o` .data +0x3c68), **established**: the null routine the
  6.5.27 builder writes into sequencers 0x2a and 0x2c and uses to end both lists (immediates from
  0x0d9dbb58). Same records as image routine 1221.
- **`1127`** (routine; kernel copy, `odsy_init.o` .data +0x3ca4), **established**: the set-up pass of the
  directional-light table records, 35 records reading the data table from index 1 to 0x1e3. Same
  records as image routine 1226. Arithmetic, **inferred** under the pass-13 rules of `ucode/buzz_isa.md`: run once per program, it takes words 0 to 5 of four light records and shininess words 0x0f0 and 0x0f7 to 0x0f9, outputs the light directions to R17, R19, R21 and R23, computes each half vector times word 0x0f0 into R18, R20, R22 and R24, and sums the light-model and four light ambient colours into colour address 25.
- **`1166`** (routine; kernel copy, `odsy_init.o` .data +0x3e78), **established**: the second set-up routine
  of the two-colour records 7, 13 and 15, after 1127 in their +52 lists. Same records as image
  routine 1265. Arithmetic, **inferred** under the pass-13 rules of `ucode/buzz_isa.md`: it takes the first two lights' words 0 to 5 and shininess words 0x0f7 and 0x0f9, negates the directions with code 0xc and multiplies the half vectors by word 0x0f7, and outputs the back-face copies to R21 to R24.
- **`1187`** (routine; kernel copy, `odsy_init.o` .data +0x3f74), **established**: only table record 12's +52
  list carries this second set-up routine, after 1127; it reads data words 0x80 to 0x1e5. Same
  records as image routine 1286. Arithmetic, **inferred** under the pass-13 rules of `ucode/buzz_isa.md`: its inputs are the fragment light's words 0x080 to 0x085 and 3.0; it does no arithmetic and outputs them to R24 and the w lanes of R13 to R15.
- **`1196`** (routine; kernel copy, `odsy_init.o` .data +0x3fe0), **established**: set-up for the local-light
  records 16 to 19 and 23, five records reading constants 0x1e0 to 0x1e3. Same records as image
  routine 1295. Arithmetic, **inferred** under the pass-13 rules of `ucode/buzz_isa.md`: it takes 0.0, 1.0 and colour addresses 24 and 0, outputs 0.0 and 1.0 to the w lanes of R13 to R17, and computes the light-model plus light 0 ambient sum into colour address 25.
- **`1205`** (routine; kernel copy, `odsy_init.o` .data +0x404c), **established**: sets up the four
  fragment-lighting records 2, 4, 5 and 8 that run with GL_LIGHTING off. Same records as image
  routine 1304. Arithmetic, **inferred** under the pass-13 rules of `ucode/buzz_isa.md`: its inputs are the fragment light's words 0x080 to 0x086; it does no arithmetic and outputs them to R18 and the w lanes of R13 to R15.
- **`1214`** (routine; kernel copy, `odsy_init.o` .data +0x40b8), **established**: is the complete 31-record
  per-vertex program of table record 2: one directional fragment light, lighting off, no texture.
  Same records as image routine 1313.
- **`1249`** (routine; kernel copy, `odsy_init.o` .data +0x425c), **established**: starts table record 4, the
  textured or clipped variant of record 2; the record patches its mark 1259 with end mark 1264. Same
  records as image routine 1348.
- **`1269`** (routine; kernel copy, `odsy_init.o` .data +0x434c), **established**: is record 4's second
  routine, eighteen records holding the record's +16 entry 1280. Same records as image routine 1368.
- **`1291`** (routine; kernel copy, `odsy_init.o` .data +0x4454), **established**: is table record 5 entire,
  39 records with two value-3 marks: record 2 with the fragment model two-sided. Same records as
  image routine 1390.
- **`1334`** (routine; kernel copy, `odsy_init.o` .data +0x4658), **established**: opens table record 8, the
  two-sided version of record 4, patched at 1348 with 1353. Same records as image routine 1433.
- **`1358`** (routine; kernel copy, `odsy_init.o` .data +0x4778), **established**: runs as the second part of
  record 8, holding its +16 entry 1373 and reading data words 0x1e1 to 0x1eb. Same records as image
  routine 1457.
- **`1384`** (routine; kernel copy, `odsy_init.o` .data +0x48b0), **established**: is the whole of table
  record 3, one directional light with an infinite viewer, untextured, carrying no patch. Same
  records as image routine 1483.
- **`1421`** (routine; kernel copy, `odsy_init.o` .data +0x4a6c), **established**: opens table record 9, one
  directional light with GL_NORMALIZE and texture allowed, patched at 1436. Same records as image
  routine 1520.
- **`1446`** (routine; kernel copy, `odsy_init.o` .data +0x4b98), **established**: second half of record 9,
  31 records holding the +16 entry 1462. Same records as image routine 1545.
- **`1481`** (routine; kernel copy, `odsy_init.o` .data +0x4d3c), **established**: starts table record 6, two
  directional lights with texture generation or clip planes and no texture. Same records as image
  routine 1580.
- **`1502`** (routine; kernel copy, `odsy_init.o` .data +0x4e38), **established**: completes record 6's
  two-light program, 18 records with no data-table read, holding the +16 entry 1514. Same records as
  image routine 1601.
- **`1524`** (routine; kernel copy, `odsy_init.o` .data +0x4f40), **established**: heads table record 10, two
  directional lights with normalize on, patched at 1541 with 1546. Same records as image routine
  1623.
- **`1551`** (routine; kernel copy, `odsy_init.o` .data +0x5084), **established**: 35 records forming record
  10's second routine, where its +16 entry 1569 lies. Same records as image routine 1650.
- **`1590`** (routine; kernel copy, `odsy_init.o` .data +0x5258), **established**: begins table record 11, up
  to four directional lights with texture and normalize off. Same records as image routine 1689.
- **`1621`** (routine; kernel copy, `odsy_init.o` .data +0x53cc), **established**: is the second half of the
  four-light record 11, containing its +16 entry 1643. Same records as image routine 1720.
- **`1653`** (routine; kernel copy, `odsy_init.o` .data +0x554c), **established**: enters table record 7, one
  directional light with two colour outputs, patched at 1666. Same records as image routine 1752.
- **`1676`** (routine; kernel copy, `odsy_init.o` .data +0x5660), **established**: closes record 7's
  two-colour program and holds the +16 entry 1690. Same records as image routine 1775.
- **`1699`** (routine; kernel copy, `odsy_init.o` .data +0x5774), **established**: opens record 13, two
  directional lights, two colours and texture, patched at 1719 with 1724. Same records as image
  routine 1798.
- **`1729`** (routine; kernel copy, `odsy_init.o` .data +0x58dc), **established**: the 30-record two-sided
  half of record 13, with its +16 entry 1752. Same records as image routine 1828.
- **`1763`** (routine; kernel copy, `odsy_init.o` .data +0x5a74), **established**: begins record 16, one
  local light without attenuation or spot, the first table routine that reads the light record from
  data index 0. Same records as image routine 1862.
- **`1801`** (routine; kernel copy, `odsy_init.o` .data +0x5c3c), **established**: the 51-record second
  routine of record 16, holding the +16 entry 1830. Same records as image routine 1900.
- **`1856`** (routine; kernel copy, `odsy_init.o` .data +0x5ed0), **established**: enters record 17, one
  local light accepting either normalize setting, patched at 1885. Same records as image routine
  1955. The start-up load leaves it at RAM 1856, inside the top 200 records.
- **`1895`** (routine; kernel copy, `odsy_init.o` .data +0x60a4), **established**: is record 17's 52-record
  second half reading the light table up to the constants, with the +16 entry 1925. Same records as
  image routine 1994. The start-up load leaves it at RAM 1895, inside the top 200 records.
- **`1951`** (routine; kernel copy, `odsy_init.o` .data +0x6344), **established**: starts record 18, one
  local light with a local viewer and GL_NORMALIZE on. Same records as image routine 2050. The
  start-up load leaves it at RAM 1951, inside the top 200 records.
- **`1990`** (routine; kernel copy, `odsy_init.o` .data +0x6518), **established**: second routine of record
  18, holding the +16 entry 2020. Same records as image routine 2089. The start-up load leaves it at
  RAM 1990, inside the top 200 records.
- **`2046`** (routine; kernel copy, `odsy_init.o` .data +0x67b8), **established**: is the per-vertex start of
  record 19, local light and local viewer with normalize off, patched at 2075. Same records as image
  routine 2145. The start-up load leaves it at RAM 2046, inside the top 200 records.
- **`2085`** (routine; kernel copy, `odsy_init.o` .data +0x698c), **established**: record 19's second routine
  with the +16 entry 2115. Same records as image routine 2184. It lies in the 218-record tail that
  `odsyInitCfifo` never sends, so the kernel never puts it in RAM.
- **`2141`** (routine; kernel copy, `odsy_init.o` .data +0x6c2c), **established**: the only +32 list entry of
  record 14, one directional light with separate specular; its sequencer words are all 1122. Same
  records as image routine 2240. It lies in the 218-record tail that `odsyInitCfifo` never sends, so
  the kernel never puts it in RAM.
- **`2169`** (routine; kernel copy, `odsy_init.o` .data +0x6d7c), **established**: heads the +32 list of
  record 15, record 14's two-colour form. Same records as image routine 2268. It lies in the
  218-record tail that `odsyInitCfifo` never sends, so the kernel never puts it in RAM.
- **`2201`** (routine; kernel copy, `odsy_init.o` .data +0x6efc), **established**: begins table record 12,
  directional lights mixed with a directional fragment light and texture, patched at 2223. Same
  records as image routine 2300. It lies in the 218-record tail that `odsyInitCfifo` never sends, so
  the kernel never puts it in RAM.
- **`2233`** (routine; kernel copy, `odsy_init.o` .data +0x707c), **established**: is record 12's second
  routine, reading data word 0x1e1 and holding the +16 entry 2256. Same records as image routine
  2332. It lies in the 218-record tail that `odsyInitCfifo` never sends, so the kernel never puts it
  in RAM.

## Instruction set

The instruction format, loading words, sequencer registers, routine entries and overlays are in `ucode/buzz_isa.md`; the listing of this copy is `ucode/disasm/buzz_ucode_kernel.lst`. The post-data doubleword `0x7f0 = 10^9` is still not read.
