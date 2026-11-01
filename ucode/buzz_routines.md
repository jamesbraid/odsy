# BUZZ microcode: routine map

Release IRIX 6.5.30m. Every row is **established** from the records of `ucode/ODSY/buzz_xform.bin` (listing `ucode/disasm/buzz_xform.lst`, field split in `ucode/buzz_isa.md`). The table is written by `scripts/buzz_routine_table.py`; the entries under "What the routines do" name inputs, outputs and arithmetic in the terms of `ucode/buzz_isa.md`, "The instruction set (pass 12)": registers R0 to R31 (R0 to R16 the host's matrices), the operand latch, parameter words, output words of the vertex packet and the colour unit.

A routine is the run of records from its entry to the next record whose bits 1:0 are 1 or 2 (the end mark; `ucode/buzz_isa.md`, "Sequencing bits 1:0"). An entry is record 0, a record named in libGLcore's `AddProgram` list or by the lighting loader, or the record five after an end mark. Where two entries share an end mark (107 and 108, 119, 123 and 127, 145 and 159), the later entry is a tail of the earlier routine.

Columns:

- **Entry**, **End mark**, **Records**: the entry record, the record carrying the mark, and the routine's length including that record.
- **Kernel record**: the same routine's record number in the kernel's older copy (`buzz_ucode`, `ucode/buzz_ucode.md`). Records from 891 on sit 99 lower there; routines 792 to 890 are the 99 records the kernel copy lacks (`none`). The kernel numbering is the one the libraries of 6.5.8 to 6.5.27 use (`ucode/buzz_ucode.md`, "Routines of the kernel copy from record 792").
- **In list**: whether the entry is in libGLcore's per-program list, so the host can select it.
- **Idle**: records equal to the idle word.
- **Data addresses**: lowest and highest nonzero value of the provisional data-memory address field `ma` over the routine.
- **Lanes**: values of the provisional lane field `ln` other than 0.
- **Value-3 marks**: records of the routine whose bits 1:0 are 3.
- **Same shape as**: other entries with the same length whose records agree in every bit except the data-memory address and the three register-number fields. Two routines in a row differ only in operands, not in the operation fields.

What the table supports:

- **established.** Entries 77, 82, 87, 92, 97 and 102 are six one-record routines: a first record carrying the end mark, then four idle delay slots. They differ only in the two five-bit register-number fields of that record (`r1`, `r2` in `ucode/buzz_isa.md`): `r1` is 0x11, 0x11, 0x12, 0x12, 0x14, 0x18 and `r2` is 0x1a, 0x1d, 0x1a, 0x1d, 0x1a, 0x1a. Entry 87 is the third, entry 92 the fourth and entry 97 the fifth.
- **inferred.** Those six are one operation applied to different register pairs, because every other field is equal. The GL state that picks each one is in "What the routines do" below: `r1` is 0x10 plus the bit of the texture coordinate (S 1, T 2, R 4, Q 8) and `r2` tells a linear mode (0x1a) from the sphere map (0x1d).
- **established.** Entry 51 is a 22-record routine with no idle record. Its data address field counts 0x100 to 0x10f and then holds 0x1e3; its lane field runs 4, 5, 6, 7 in groups. The record with the end mark (72) is followed by two idle records and two non-idle records (75, 76) before entry 77.
- **inferred.** A routine with a nonzero data address and lanes 4 to 7 moves four-component values through data memory; one with neither (26 and 40) uses only registers and sequencer fields. Both are provisional readings of provisional fields.
- What each routine is for comes from the host code that selects or dispatches it, set against the routine's own fields. "What the routines do" below has an entry for each routine read so far; the rows of the table without one there are not yet read.

## What the routines do

Release IRIX 6.5.30m. Host code: N32 libGLcore (`libglcore/asm/ODYSSEY/`, with
the compiler's source line numbers), the X module `odyssey.so` (`ddx/asm/`) and the
kernel objects of `odyssey.a`. Records: `ucode/ODSY/buzz_xform.bin`. Each routine
also exists in the kernel's copy, at the number in the table's Kernel record column.

### How a command word reaches a routine

- **established.** Eight opcodes of command words at 0x100 or above are routine entries:
  0x12f is routine 303, 0x144 is routine 324 and 0x168 is routine 360 (slot 15 words);
  0x1a2 is routine 418, 0x1bb is routine 443 and 0x1c8 is routine 456;
  0x1df is routine 479 and 0x1ea is routine 490 (slot 16 words).
  Routines read the operands of the word through the third register-number field `r3`:
  values 0x10 to 0x1f name operand 0 to 15, values below 0x10 name an attribute slot.
  Each of the eight routines reads exactly as many operand words as the word that dispatches
  it carries, counting the last four operands of a slot 15 word as one read of slot 15
  (`scripts/buzz_ucode_disasm.py` field split; senders in `ody_xform.s`, `ody_clear.s`).
- **inferred.** A word whose top byte has bit 6 clear (`0x8n`, `0x9n`, the "position" form)
  runs a routine when it arrives; one with bit 6 set (`0xcn`, `0xdn`) only latches its slot.
  When the opcode is 0x100 or above the routine is the record the opcode names; below
  0x100 the opcode is a data format and the routine is the one held in sequencer 0x29.
  The evidence: `__glOdysseyClear` (`ody_clear.s`, source line 415) sends the clear
  rectangle as the position form `0x8f80a944` and never writes sequencer 0x29,
  while the copy paths send the latch form `0xcf80a92f`, set sequencer 0x29 to 303
  and then send a vertex word (opcode 0) that fires it (`ody_image_move.s`, line 1038;
  `odsyCopyRectSingleBuffer` in `odyssey.so`). The kernel's data loads
  send the position form `0x8e809015` (its opcode is a format) after setting sequencer 0x29 to 410.

### The data table behind sequencer 0x31

- **established.** Sequencer 0x31 holds a word index, and the host follows each index with
  a slot 16 word of opcode 0x1a2 (sixteen words) or 0x1bb (four words). libGLcore keeps there:
  light `i` at index `16 * i` (`ValidateLight`, `ody_lighting.s`, source line 328);
  the four texture-generation planes S, T, R and Q at 256, 260, 264 and 268
  (`updateTexGenCoord`, `ody_texgen.s`, source line 305; an eye-linear plane is first
  multiplied by the modelview matrix, the one `__glOdysseyValidateMatrixMV` reads from
  context +29716, so every plane applies to object coordinates); and sixteen constants
  at 480 to 495 (`ody_context.s`):
  1.0, 0.5, -1.0, a register value, 2.828, 3.0, 1.414, 0.354, -2.0, -1.414, -0.707,
  -0.5, 131072.0, -32.0, 0.03125 and a register value.
- **inferred.** The routine field `ma` is a word address in this table. Routine 51,
  the one texture generation adds whenever a linear mode is on, reads `ma` 0x100 to 0x10f,
  which is indices 256 to 271, the four planes. The constants block 0x1e0 to 0x1ef is the
  one every routine family reads (0x1e3 most of all), and it is the group the kernel's
  context save skips, because libGLcore rewrites it (`odsyRestoreXform`, `docs/buzz.md` pass 9).
  An `ma` with bit 9 set (0x200 to 0x20f, in routine 418) is relative to the index in sequencer 0x31.

### The matrix table behind sequencer 0x34

- **established.** Sequencer 0x34 indexes a 68-word table and opcode 0x1c8 stores sixteen
  words, 0x1df four, at the index. libGLcore puts the combined modelview-projection
  matrix at 0 (`__glOdysseyValidateMatrixComb`), four more words at 16,
  the texture matrix at 20 (`__glOdysseyValidateMatrixTex`), the modelview at 36
  (`__glOdysseyValidateMatrixMV`) and the normal matrix at 52 (`__glOdysseyValidateMatrixNorm`),
  each sent row by row (`ody_xform.s`).

### Routines read

- **`418`** (routine; kernel record 418, records 418 to 442 identical in the kernel copy), **inferred**: the sixteen-word parameter store of opcode
  0x1a2 (`odsyRestoreXform` in `odsy_ctxsw.o`, `ValidateLight` and the constant block in
  `ody_lighting.s` and `ody_context.s`). **established** from the fields of records 418 to 442: records 418 to 433 load
  operands 0 to 15 one per record (`r3` 0x10 to 0x1f, `d0` 4). Records 421, 422 and 426 to 441 are lane-mode reads of R16 (`a` 1, `r2` 0x10); `r1` alternates 0 and 1 through them,
  so the lanes read alternate x and y, with scalar code 8 (`d1` 8) set only in 422 and 423. Port V writes R16 (`mc` 0x20 in 425 and 426, 0x21 from 427; `bx` 4 or 5) in 425 to 442, lane x on odd records and lane y on even,
  and in 425 to 440 each write comes seven records after the operand it carries. The parameter-memory store flag is set in 427 to 442 with `ma` 0x200 up to 0x20f in order, one word a record,
  so the stores follow the operand loads by 9 records. The end mark 2 is at 438, and 439 to 442 are its delay slots, still storing words 0x20c to 0x20f.
  No record sets `ln`, so the routine writes no register through port P, and no record sets `d2` or leaves the colour field off its idle value. Records 441 and 442 carry `b` 1
  and their port V writes have no operand load seven records before; their source is **unknown** (pass 16).
  **inferred:** bit 9 of the `ma` field adds sequencer 0x31, so the output is sixteen words at the index the host loaded there.
  The routine copies and computes nothing: scalar code 8 passes its lane unchanged, and under the pass 13 rules no later field of the routine takes the two results (422, 423).
- **`443`** (routine; kernel record 443, records 443 to 455 identical in the kernel copy), **inferred**: the four-parameter store of opcode
  0x1bb; libGLcore sends texture-generation planes, clip planes and lighting constants this way
  (`updateTexGenCoord` in `ody_texgen.s`, `__glOdysseyValidateClipPlanes` in `ody_context.s`,
  `__glOdysseyInitLighting` in `ody_lighting.s`). **established** from the fields of records 443 to 455: records 443 to 446 load operands 0 to 3 (`r3` 0x10 to 0x13, `d0` 4),
  447 and 448 are idle, and 449 to 454 are lane-mode reads of R16 (`a` 1, `r2` 0x10) with `r1` 0, 1, 0, 1, 0, 1, so the lane alternates x and y;
  scalar code 8 is set in 450 and 451. Port V writes R16 lane x in 450 and 452 and lane y in 451 and 453 (`mc` 0x20 in 450 and 451, 0x21 in 452 and 453; `bx` 4 or 5), and port P writes R16 (`rb` 0x10) lane x in 454 and lane y in 455 (`ln` 4 and 5, `b` 2, `mc` 0x01).
  The store flag is set in 452 to 455 with `ma` 0x200, 0x201, 0x202 and 0x203. The end mark 2 is at 451; 452 to 455 are its delay slots, so all four stores run in the delay slots.
  **inferred:** the operands reach the four words in order through R16, as in 418. Records 454 and 455 take their port P data from the scalar results of 450 and 451 (`b` 2), which are code 8 passed over the R16 lanes read at 449 and 450,
  before the operands arrive; read that way the routine leaves R16 lanes x and y as it found them. Like 418 the routine computes nothing.
- **`456`** (routine; kernel record 456, records 456 to 478 identical in the kernel copy), **inferred**: the sixteen-word register store of opcode
  0x1c8, through which libGLcore sends every matrix (`ody_xform.s`, the four validators). **established** from the fields of records 456 to 478:
  records 456 to 471 load operands 0 to 15 one per record (`r3` 0x10 to 0x1f, `d0` 4, no issue), and records 472 to 478 load nothing. Port V writes in 463 to 478, each record one lane:
  `bx` 4 to 7 gives lanes x to w and `mc` 0, 2, 4 and 6 gives registers 0, 1, 2 and 3, four lanes to a register, relative to the base sequencer 0x34 holds
  (the host sets 0, 20, 36 or 52 words). The write comes seven records after the operand load. The end mark 2 is at 474 and 475 to 478 are its delay slots.
  The parameter-memory store flag (the low bit of `mc`) is clear throughout, and `d1`, `d2`, `ma`, `ln`, `b` and the colour field are all zero, so the routine writes registers only.
  **inferred:** each operand reaches the register lane unchanged, so one row of a matrix fills one register. Records 463 to 466 also carry 1 in `r1` and `r2`; no reading uses them
  because `d0` has no issue bit.
- **`479`** (routine; kernel record 479, records 479 to 489 identical in the kernel copy), **inferred**: the four-word register store of opcode
  0x1df, which libGLcore uses for the clip-space z row at word 16, register R4 (`ody_xform.s`). **established** from the fields of records 479 to 489:
  479 to 482 load operands 0 to 3 (`r3` 0x10 to 0x13, `d0` 4), 483 and 484 are idle, the end mark 2 is at 485, and 486 to 489 are port V writes (`mc` 0, `bx` 4 to 7), one per lane x to w of register 0 relative to the base in sequencer 0x34;
  each follows its operand by seven records. 486 to 489 are the delay slots of the end mark. `r1` and `r2` are 1 in those four records and `d0` is 0, so no issue happens; no field of the routine addresses parameter memory,
  scalar code or colour unit. **inferred:** the four operands arrive unchanged in the four lanes of one register, as the first four of 456's sixteen do.
- **`490`** (routine; kernel record 490, records 490 to 514 identical in the kernel copy), **established**: the handler of opcode 0x1ea, sent by
  libGLcore's GL_SHININESS path with t, -t, t' and -t', the square roots of the front and back
  shininess (`ApplyParameterF`, `ody_attrib.s`, `ucode/buzz_isa.md` pass 14), and by the kernel's
  context restore with operand 0 of two attribute slots and each with bit 31 flipped
  (`odsyRestoreVB`, `odsy_ctxsw.o`). **established** from the fields of records 490 to 514: operands are loaded by `r3` at 490 (operand 0), 491 (3), 492 and 493 (0), 494 (1), 496 (0), 497 to 499 (2) and 500 (3),
  with 495 idle; parameter-memory reads name `ma` 0x1e4 (490), 0x1e3 (491 and 492) and 0x1ea (494), which hold 2.828427, 0.0 and -0.707107 (`ucode/buzz_isa.md`, pass 12, from the host's constants block). Port P
  writes R26 (`rb` 0x1a, `b` 0) lanes x, y and z in 492, 493 and 494 (`ln` 4, 5, 6), the words read two records before: 2.828427, 0.0 and 0.0. Port V writes lane w of R26 at 497 (`mc` 0x34) and lane w of R27 at 498 (`mc` 0x36)
  and lanes of R25 at 508 and 512 (`mc` 0x32 and 0x33, `bx` 5). Scalar code 5 (`d1` 5) is set at 497, 498, 500, 501, 506 and 507 and code 0xd at 503 and 505. Port P writes R25 (`rb` 0x19, `b` 2, from the scalar result) lane x in 501, 504, 507, 509 and 511 and lane y in 502, 505 and 510 (`ln` 4 and 5).
  The vector unit issues at 501 (`d0` 0xe, R26 against R26) and 503 (`d0` 0xe, R26 against R27); bit 44 (`d0` 1) is set at 502 and 506. The factor K is loaded (`d2` 0x80) at 496 (`a` 2), 499 and 504. The parameter-memory store flag is set in ten records, in this order of `ma`: 0xf2 (503), 0xf3 (505), 0xf0 (506), 0xf6 (507),
  0xf4 (509), 0xf8 (510), 0xf5 (511), 0xf1 (512), 0xf7 (513) and 0xf9 (514). The end mark 2 is at 510, so 511 to 514 are delay slots and four of the ten stores run in them. No record sets `d2` to an output code or the output word field. **inferred:** it computes ten parameter words from them: it
  combines operands 0 to 3 with the constants 2.828, 0.0 and -0.707 (data words 0x1e4, 0x1e3, 0x1ea)
  through two dot products (R26 with itself at 501; at 503 R26's x to z lanes with R27's w lane, against
  the same, `ucode/buzz_isa.md` pass 17) and scalar codes 5 and 0xd,
  and produces parameter words 0xf0 to 0xf9 (stores at 503 to 514); routine 1265, the two-colour
  set-up, reads that range. **inferred**, numeric run (`ucode/runs/shininess-490.json`, code 5 as the
  product with K, `ucode/buzz_isa.md` pass 15): 0x0f0 and 0x0f4 are the front shininess s,
  0x0f1 and 0x0f5 the back shininess s', 0x0f7 is -s', 0x0f8 is 8 + s; 0x0f2, 0x0f3 and 0x0f6
  (-0.707 t, 0.707 t', -s) are read by no routine; 0x0f9, stored at 514, is the refire at 506 of
  (2.828, 0, 0, -t') against itself, 8 + s' (24 for t' = 4), the back-face constant the two-colour
  set-up 1265 puts in the w lanes of R22 and R24 (`ucode/buzz_isa.md` pass 17). The diagnostic image
  (`ucode/disasm/diagxform.lst`) has the same routine at 490 with R17, R18 and R16 for R26, R27 and
  R25, and gives the same words.
- **`303`** (routine; kernel record 303, records 303 to 323 identical in the kernel copy), **inferred**: the pixel rectangle of opcode 0x12f, ten
  operands, which every image draw and copy selects (libGLcore's pixel copy and move paths in
  `ody_image_move.s`, the X module's `odsyDrawImagePIO` and `odsyCopySDRAM`, the kernel's
  `gfP_OdsyClearBuffer` and `odsyDMAOps`). **established** from the fields of records 303 to 323: records 303 to 308 load operands 0 to 5 (`r3` 0x10 to 0x15, `d0` 4, no issue);
  310 and 312 read slot 15 (`r3` 0xf) with colour operation 0x1f22, which is the group of operands 6 to 9; no record reads operands 6 to 9 by `r3` 0x16 to 0x19. Header records (`s1` 0x114 at 309, 0x214 at 322) both carry count field 6.
  The word records name, in order, 1 and 2 (310, 311, colour words, `s1` 0x81), 8 and 9 (312, 313, colour words), 5, 6 and 4 (314 to 316), 12, 13 and 11 (317 to 319),
  then 3 (320) and 10 (321) with `d2` 0x21, and 14 (323, `s1` 0x180, the last-word record). Word 7 is named by no record. The end mark 2 is at 319, so 320 to 323 are its delay slots.
  No record sets `d1`, `ma`, `ln` or `b`: the routine reads no data memory and writes no register or parameter. **inferred:** the colour words carry the slot-15 group twice, once per corner; operand k of 0 to 5 reaches
  the word record 11 records after its load (314 to 319, as in 324), operands 0 to 2 as words 5, 6 and 4 and operands 3 to 5 as words 12, 13 and 11; code 0x21 fills words 3 and 10, the place 1/w has in a vertex.
  It computes no product; it selects which operand fills which vertex word.
- **`324`** (routine; kernel record 324, records 324 to 359 identical in the kernel copy), **inferred**: the clear and stipple rectangle of opcode
  0x144, ten operands, sent as `0x8f80a944` by `__glOdysseyClear` (`ody_clear.s`, source line 415)
  between a begin word with primitive 7 and an end word, and by `LoadAndSendStippledQuads`
  (`ody_bitmap.s`). **established** from the fields of records 324 to 359: operands are loaded in two runs, 324 to 329 (`r3` 0x10, 0x11, 0x12, 0x13, 0x11, 0x15: operands 0, 1, 2, 3, 1, 5)
  and 339 to 344 (`r3` 0x13, 0x14, 0x12, 0x10, 0x14, 0x15: operands 3, 4, 2, 0, 4, 5); no other record reads an operand. Slot 15 is read with colour operation 0x1f22 at 331, 333, 346 and 348.
  Header records (count field 6) are at 330 and 345 (`s1` 0x114) and 343 and 358 (`s1` 0x214). Each run of word records names 1, 2, 8, 9, 5, 6, 4, 12, 13, 11, 3 and 10 in 303's order
  (colour words 1, 2, 8, 9 at 331 to 334 and 346 to 349, then 335 to 340 and 350 to 355 for 5, 6, 4, 12, 13, 11, and `d2` 0x21 words 3 and 10 at 341, 342 and 356, 357) and ends in a last-word record
  with field 14 at 344 and 359 (`s1` 0x180). The end mark 2 is at 355, so 356 to 359 are delay slots. No record sets `d1`, `ma`, `ln` or `b`.
  **inferred:** it uses 303's two-vertex output layout twice, so it produces four vertices; with each word record taking the operand loaded 11 records before it, words 5, 6 and 4 take operands (0, 1, 2), (3, 1, 5),
  (3, 4, 2) and (0, 4, 5) in turn. With operands 0, 1 and 3, 4 as two opposite corners, that selects
  the four corners of an axis-aligned rectangle in order around it, which is what a clear needs and
  303's two corners are not. The colour words come from the slot-15 group as in 303.
- **`360`** (routine; kernel record 360, records 360 to 409 identical in the kernel copy), **established** for the fields below: the textured rectangle command of
  opcode 0x168, fourteen operands, sent as `0xcf80b968` by the texture paths:
  `DownsampleTextureThruHW` (`ody_texture.s`) and `__glOdysseyImageMovePixelsTexture`
  (`ody_image_move.s`). Operands are loaded by `r3` in 360 to 369 (0, 1, 2, 3, 1, 2, 6, 7, 8, 7) and 379 to 388 (3, 4, 5, 0, 4, 5, 8, 9, 6, 9); no record reads operands 10 to 13 by `r3` 0x1a to 0x1d, and slot 15 is read once, at 378,
  with colour operation 0x1f20, which is the group of operands 10 to 13. It is the only one of the three rectangle routines that reads the data table: record 360 reads `ma` 0x1e3, the constant 0.0 (`ucode/buzz_isa.md`, pass 12), record 362 loads it as the factor K (`a` 3, `d2` 0x80), and
  records 363 and 364 (`d1` 0xd, the multiply by K) take lane x of R0, read at 362 and 363; under the pass 13 rules no later record takes those results. Four header records, all with count field 9, sit at 366 and 389 (`s1` 0x116) and 383 and 404 (`s1` 0x216); the stretches that follow them hold
  16, 5, 14 and 5 records. The word numbers reach 20 in each of the two groups (366 to 388 and 389 to 409); the header count of 9 does not cover them (pass 16 left this open). The word records numbered 16 to 20 are those whose colour field is 0x0009 (370, 374 to 376, 382, 388, 393 to 395, 401, 409),
  which pass 16 reads as the fifth bit of the word number, not as a colour operation: 370 and 382 are word 16 (code 0x21), 376 is 17, 374 is 18, 375 is 19 and 388 and 409 are word 20 with the last-word bit. The word records with `d2` 0x21 are 369, 370, 381, 382, 400 and 401. Colour words
  (`s1` 0x81, colour field 0x000a) are 384 and 385 as words 1 and 2, 386 and 387 as words 11 and 12, and 405 to 408 repeat them. The first stretch names words 5, 15, 6 (code 0x21), 16, 8, 9, 7, 18, 19, 17, 3, 4, 13, 14, 6 (0x21) and 16 (0x21);
  scalar code 5 (`d1` 5) is set at 398 and 399 and nowhere else in the routine. The end mark 2 is at 405 and 406 to 409 are its delay slots. **inferred** from this and `scripts/buzz_ucode_dataflow.py`: it selects operands 0 to 9 and the slot-15 group into the words of the corner packets;
  no field issues a dot product, so it computes none. The grouping of the four headers into packets, and what the words 13 to 20 mean, are **unknown**.
- **`410`** (routine; kernel record 410, records 410 to 417 identical in the kernel copy), **inferred**: the colour-unit data load. The kernel sets
  sequencer 0x29 to 410 and sequencer 0x32 to a colour-unit address (24), then sends `0x8e809015`
  with four floats (`odsyRestoreXform`, `odsy_ctxsw.o`); libGLcore's lighting does the same
  (`ody_lighting.s`). **established** from the fields of records 410 to 417: record 410 reads slot 14 (`r3` 0xe) with colour operation 0x1f20, the code the vertex routines use for the colour slot;
  411 and 412 are idle; the end mark 2 is at 413 (every other field at the idle value); 414 to 416 are idle; and 417, the last delay slot, carries colour field 0xc008, which sets bit 31 and bit 30 with address 0 and the idle operation 0x08.
  Nothing else is set: no vector, scalar, parameter or output field. **inferred** (pass 13 reads the colour-field bits): the slot-14 floats go into the colour unit at 410 and 417 stores that value,
  bit 31 being a store and bit 30 adding the base in sequencer 0x32, so the word lands at the address the host loaded into 0x32, as one four-float vector per data-load word.
- **`1221`** (routine; kernel record 1122), **established**: the null routine. Its only record is
  the end mark with every other field at the idle value, followed by four idle records.
  `AddProgram` (`ody_program.s`, source lines 1172 to 1192) puts it in sequencers 0x2a and 0x2c
  and at the end of every program list, and the 4103 patch's libGLcore uses 1122 for the same
  purpose against its older program. It is the null routine: its one effect is its end mark 2, which ends the command (`ucode/buzz_isa.md`, pass 14), which is why it closes every list.
- **`520`** (routine; kernel record 520), **established**: a second copy of the null routine,
  bit for bit the same as record 1221 and its four delay slots in the listing
  `ucode/disasm/buzz_xform.lst`. No table record or `AddProgram` immediate names it. It is a null routine: its one effect is its end mark 2, which ends the command (`ucode/buzz_isa.md`, pass 14).
- **`214`** (routine; kernel record 214), **inferred**: the unlit, untextured vertex program, first
  vertex. The kernel textport (`odsy_tpinit` in `odsy_tport.o`, start-up stream `buzz_init`) and
  libGLcore's table record 0 (0x0dae4680) set sequencers 0x29, 0x2a and 0x2c to 214, 224 and 234.
  Inputs: the position slot (r3 0, loaded at 214), the colour slot (r3 5, copied into the colour
  unit by code 0x1f20 at 219) and registers R0 to R4, the combined matrix of
  `__glOdysseyValidateMatrixComb`. It computes five dot products of the position in the order clip w
  (R3), window x (R0), window y (R1), clip z (R4) and window z (R2), and writes the packet header
  for seven words at 218. Records 224 to 233 are the loop: each pass issues the five products for
  the next vertex while it outputs the previous one, 1/w (code 0x2b) as word 3, x/w (0x46) as word
  5, y/w and z/w (0x26) as words 6 and 4, the clip z consumed for the clip test (0x08), the colour
  as words 1 and 2 (colour-unit code 0x1932) and the closing word 7. Records 234 to 242 output the
  last vertex the same way and issue nothing. The results are window coordinates because the host
  folded the viewport into R0 and R1 and the depth range into R2 (`ody_xform.s`, source lines 405 to
  525); the textport sends w 1 and z 0,
  so its 1/w is 1. **established** against an expected value for words 5 and 6 and for the last
  vertex leaving through 234: the field diagnostics' points test, run through 214, 224 and 234 of
  `diagxform.bin` (records equal to these), reproduces the C simulator's stored frames pixel for
  pixel (`ucode/buzz_isa.md`, pass 18; `scripts/odydiags_frame_check.py`).
- **`51`** (routine; kernel record 51), **inferred**: texture generation from planes, added when any
  of S, T, R or Q uses an eye-linear or object-linear mode (`ody_program.s`, source line 1097).
  Inputs: the position slot and the four planes at parameter words 0x100 to 0x10f
  (`updateTexGenCoord`, `ody_texgen.s`, source line 305; eye-linear planes arrive premultiplied by
  the modelview, so all four apply to object coordinates). It loads the S and R planes into R25 and
  the T and Q planes into R27 in turn, computes each plane's dot product with the position (records
  57, 61, 65 and 69) and writes the four results to R26 lanes x, y, z and w (64 to 76); it also
  clears R28 with 0.0 (0x1e3). Outputs: R26 holds the generated (s, t, r, q), and the last delay
  slot (76) loads the incoming texture coordinate, slot 3, into the latch for 77 to 107 to overwrite
  lane by lane.
- **`77`** (routine; kernel record 77), **inferred**: S for a linear mode (`ody_program.s`, source
  line 1106). Its one record is a lane-mode register load with mask 1 (`r1` 0x11) from R26, so the
  generated s from routine 51 replaces lane x of the latch and the other three incoming components
  stay. Input: lane x of R26, the generated s. Output: the operand latch with that lane replaced, which the texture transform after it reads; the mask selects the lane and nothing is computed.
- **`82`** (routine; kernel record 82), **inferred**: S for the sphere map (`ody_program.s`, source
  line 1109). Same merge as 77 but its source register is R29 (`r2` 0x1d), where routine 159 leaves
  the sphere-map s, so that value becomes the latch's x lane. It takes R29's lane x as its input and selects it into the latch's x lane; the result, a lane merge that replaces s, feeds the texture transform.
- **`87`** (routine; kernel record 87), **inferred**: T for a linear mode (`ody_program.s`, source
  line 1112). Mask 2 (`r1` 0x12) copies lane y of R26, the plane-T product, into the latch. With lane y of R26 as input it merges that one lane into the latch; its output is the latch carrying the generated t.
- **`92`** (routine; kernel record 92), **inferred**: T for the sphere map (`ody_program.s`, source
  line 1115); with mask 2 it takes lane y of R29, the sphere-map t. Its single input, lane y of R29, is selected into the latch, and the result goes on to the texture transform with t replaced: a lane merge.
- **`97`** (routine; kernel record 97), **inferred**: R for a linear mode (`ody_program.s`, source
  line 1118); the sphere map is not allowed for R. The mask is 4 (`r1` 20 is 16 plus the R bit), so
  only lane z of R26 enters the latch. It takes lane z of R26 and selects it into the latch; the output is the latch holding the generated r, computed by routine 51, not here.
- **`102`** (routine; kernel record 102), **inferred**: Q for a linear mode (`ody_program.s`, source
  line 1121), where the sphere map is not allowed either. Mask 8 (`r1` 24) moves the generated q,
  lane w of R26, into the latch. Input lane w of R26 is selected into the latch, so the result carries the generated q: a lane merge.
- **`108`** (routine; kernel record 108), **inferred**: the texture matrix after generation, added
  after the per-coordinate routines in every texgen program (`ody_program.s`, line 1126). Its input
  is the latch, the incoming texture coordinate with the generated lanes merged in; it computes the
  dot products with the texture-matrix rows q, s, t and r (R8, R5, R6, R7; records 108 to 111), as
  GL applies the texture matrix to generated coordinates, and leaves the four results for 119 or 123
  to output.
- **`107`** (routine; kernel record 107), **inferred**: the S-and-T-linear case. When S and T are
  both linear and neither uses the sphere map, `AddProgram` (`ody_program.s`, line 1104) adds 107
  instead of the per-coordinate routines and 108; its one record merges lanes x and y of R26 (mask
  3, `r1` 0x13) and then falls into 108. Inputs: lanes x and y of R26. It selects both into the latch at once; the result, with s and t replaced, is what 108's texture transform reads.
- **`145`** (routine; kernel record 145), **inferred**: the sphere-map set-up when GL_NORMALIZE is
  off (`AddProgram`, `ody_program.s`, line 1093; bit 22 of the enables word at context +1792 is
  GL_NORMALIZE in `__glim_IsEnabled`, `so_attrib.s`). It transforms the position by R9 to R11 into
  R25 and the normal by R13 to R15 into R27 (results at 152 to 157), loads 0.0 into their w lanes
  and -1.0 (0x1e2) into R29's, and computes only the eye position's squared length (R25 with itself,
  155), since the normal is not to be normalised; it runs straight into 159. Its inputs are the position and normal slots and rows R9 to R15; the results it leaves for 159 are R25, R27 and the squared length.
- **`127`** (routine; kernel record 127), **inferred**: the sphere-map set-up when GL_NORMALIZE is
  on (`AddProgram`, `ody_program.s`, line 1090); the list gets 127 and then 159. Inputs: the normal
  slot 1 and the position slot 0. It transforms the normal by the normal-matrix rows R13 to R15 into
  R27 and the position by the modelview rows R9 to R11 into R25 (results at 134 to 139), puts 0.0 in
  both w lanes, and computes the squared length of the normal (R27 with itself, 137) and of the eye
  position (R25 with itself, 141) for the normalisation 159 performs.
- **`159`** (routine; kernel record 159), **inferred**: the second part of the sphere map, shared by
  both normalize settings (`ody_program.s`, line 1091). Its inputs are R25 and R27 from 127 or 145
  and the squared length the scalar unit receives (code 1 at 162). It scales the three lanes of R27
  and R25 through scalar codes 0xe and 0xd (results back in R27 and R25 at 167 to 172), forms the
  reflection with the constant -2.0 (0x1e8 at 167), adds 1.0 (0x1e0) to its z term, takes the length
  of the result (R30 with itself at 192) and applies 0.5 (0x1e1), the steps of GL's s = rx/m + 1/2,
  t = ry/m + 1/2 with m = 2 sqrt(rx^2 + ry^2 + (rz+1)^2). Outputs: s and t in R29 lanes x and y
  (written at 211 and 212), which 82 and 92 merge, and the incoming texture coordinate loaded into
  the latch at 212.
- **`119`** (routine; kernel record 119), **inferred**: the texture output of a texgen program when
  the context's perspective flag is clear (`AddProgram`, line 1129). It consumes q (code 0x08) and
  outputs s, t and r multiplied by 1/w (0x26) as words 3, 4 and 5. `__glOdysseyUpdateTransform`
  (`ody_xform.s`, line 368) clears the flag unless projection elements 3, 7 or 11 are nonzero. Its inputs are the q, s, t and r products fired before it; it multiplies s, t and r by 1/w and those are its outputs.
- **`123`** (routine; kernel record 123), **inferred**: the same output under a perspective
  projection (`ody_program.s`, line 1129), routine 119 without its first four records. Here q takes
  code 0x2c and is output as word 6, and s, t and r follow as words 3 to 5 (0x26). It takes the same four products as input and multiplies s, t and r by 1/w for output, sending q's code-0x2c result as a word as well.

### Clipping routines

`AddProgram` (`ody_program.s`, source lines 1137 to 1139) adds two list entries when
`__glOdysseyGetNumHWClipPlanes` returns a nonzero count: record 0 and one of three
routines chosen by the texture state it worked out at source line 677 (the texture
dimension from the 1D, 2D and 3D enables) and line 753 (texture generation on).

- **`0`** (routine; kernel record 0; records 0 to 15 identical in the kernel copy), **inferred**: the clip-plane routine `AddProgram` stores into
  the list when hardware clip planes are on (`ody_program.s`, source line 1137). **established** from the fields of records 0 to 11: record 0 loads slot 0 (`r3` 0, `d0` 0xc) and issues on R9; records 1 to 9 issue (`d0` 9) on R10, R11, R12 (`r1` 0xa, 0xb, 0xc),
  then R3, R0, R1, R4, R2 (3, 0, 1, 4, 2) and R25 (0x19 at 9); 10 carries no issue and 11 loads from R27 (`d0` 6, `r2` 0x1b, a register load). The end mark 1 is at 7, so 8 to 11 are its delay slots. Parameter-memory reads
  name `ma` 0x120 to 0x12b in order in records 0 to 11. Port P writes R25 (`rb` 0x19) lanes x to w (`ln` 4 to 7) in 2 to 5 from words 0x120 to 0x123, R26 (`rb` 0x1a) lanes x to w in 6 to 9 from 0x124 to 0x127, and R25 lanes x and y in 10 and 11 from 0x128 and 0x129
  (lanes z and w follow in 12 and 13, which belong to routine 12). Port V writes R27 lanes x to w (`mc` 0x36, `bx` 4 to 7) in 7 to 10. No scalar, output or colour field is set. **inferred** by the pass 13 rules: the
  four issues on R9 to R12 give the eye coordinates MV times P in R27 (written 7 to 10); the five on R3, R0, R1, R4, R2 are the position products of the vertex transform, taken by the vertex routine after it; plane A sits in R25 (written 2 to 5) and is latched at 9, and the fire that
  dots it with the eye coordinates the load at 11 put in B is the first record of routine 12. Inputs: the position slot, the modelview rows R9 to R12, the combined rows R0 to R4, and the eye-space planes
  `__glOdysseyValidateClipPlanes` stores at parameter words 0x120 to 0x12b, one plane of four words per enabled plane (`ody_context.s`, source lines 1761 to 1790).
  Outputs: no output word of its own; R27 and the latch hold the eye coordinates for 12, 26 or 40.
- **`12`** (routine; kernel record 12; records 12 to 25 identical in the kernel copy), **inferred**: the clip-plane follow-up when texturing is off
  (`ody_program.s`, line 1139). **established** from the fields of records 12 to 25: records 12 to 15 are vector records (`d0` 9, 1, 8, 1) with `r1` 0x1a at 12 (R26, plane B) and 0x19 at 14 (R25, plane C); port P writes R25 lanes z and w
  (`ln` 6 and 7) in 12 and 13; 16 to 20 are idle; the end mark 1 is at 21; and the only output records are word field 5 at 22, 4 at 23 and 3 at 25 (`s1` 0x80, no `d2` code, no header; 24 is idle). The delay slots are 22 to 25.
  **inferred:** it takes the eye coordinates routine 0 left in the operand latch and fires the plane A product left latched by 0 (record 12), plane B (R26, issue 12, fire 13) and plane C (R25, issue 14, fire 15), so a program with
  three hardware planes evaluates all three; the three output words, 5, 4 and 3 at 22, 23 and 25, come ten records after those three fires (12, 13, 15).
- **`26`** (routine; kernel record 26; records 26 to 40 identical in the kernel copy), **inferred**: the clip-plane follow-up when texturing is on
  without texture generation (`ody_program.s`, line 1139). **established** from the fields of records 26 to 39: record 26 loads slot 3 (`r3` 3, `d0` 0xd) and issues on R8, 27 and 28 issue on R5 and R6 (`d0` 9), 29 is a fire (`d0` 1), 30 to 34 are idle,
  the end mark 1 is at 35, and the output records are word field 5 at 36 (`s1` 0x80), `d2` 0x08 at 37 (no word), `d2` 0x26 with word field 3 at 38 and 4 at 39. The delay slots are 36 to 39. No record reads parameter memory (`ma` 0). **inferred:** it
  transforms the texture-coordinate slot by the rows R8, R5 and R6 (q, s, t) and, by the pass 13 rules, outputs word 5 (36) from the plane A product fired at 26, consumes q (0x08) and outputs s and t multiplied by 1/w (0x26) as words
  3 and 4. With texturing only plane A is used, which matches `__glOdysseyGetNumHWClipPlanes`
  lowering the hardware plane count when texturing (`ody_clip.s`, source lines 138 to 151).
- **`40`** (routine; kernel record 40; records 40 to 50 identical in the kernel copy), **inferred**: the clip-plane follow-up with texturing and
  texture generation (`ody_program.s`, line 1139). **established** from the fields of records 40 to 50: record 40 carries only `d0` 1 (bit 44, a fire of the operand already latched), 41 to 45 are idle, the end mark 1 is at 46, 47 to 49 are idle
  and word field 5 is the only output, at record 50 (`s1` 0x80, no `d2` code); nothing else in the routine is set. The delay slots are 47 to 50. **inferred:** it issues no product of its own and fires the product the clip routine before it latched (plane A), outputting that result as word 5,
  the place 12 and 26 also give plane A's result, because the texture-generation routines appended after it (51 to 123) produce the texture coordinates.
### Lighting routines

`AddProgram` (`ody_program.s`, source lines 838 to 876) walks the enabled lights (mask at
context +1800, records of 116 bytes from the pointer at +1584). A light is local when its
position w (record +76) is nonzero and attenuated when it is local and its constant, linear and
quadratic factors (+104, +108, +112) are not 1, 0 and 0. A spot cutoff (+100) other than 180
sets a bit in the program key and adds no routine.

- **`611`** (routine; kernel record 611), **inferred**: the first-light set-up for a local light and
  a local viewer (`ody_program.s`, line 865; context byte +1412, set by `__glim_LightModelfv` in
  `so_attrib.s`), the case that needs the most per-vertex work. Its inputs are the position, the
  normal, light words 0x200 to 0x202 and 0x209, the constants -1.0 and 0.0 and the material slots 6,
  9, 10 and 13. It computes the eye position (R12, R9, R10, R11 at 611 to 614), the eye normal into
  R16 (615 to 617), two dot products of the working registers R19 and R18 against the latch (620, 621)
  and, through scalar code 4 on the eye x, y and z products, the per-vertex viewer vector in R26
  (623 to 625): minus the eye position, GL's local viewer vector, in the numeric run
  `ucode/runs/local-viewer-611.json` with code 4 as negation (`ucode/buzz_isa.md`, pass 16); it stores
  parameter word 0x1f4 at 620 like 626. Outputs: R16 holds the eye normal and R26 the viewer vector
  for the lighting core 668 or 694.
- **`626`** (routine; kernel record 626), **inferred**: the first-light set-up for a local light
  with the viewer at infinity (`ody_program.s`, line 865), the same length and data range as 611.
  Inputs: the position, the normal, the light record and the material slots. A local light needs the
  eye position, so it dots the position with R12, R9, R10 and R11 (626 to 629) as 641 does, but with
  the viewer at infinity it fills R26 with the constants 0.0, 0.0 and 1.0 (reads at 636 to 638) as
  656 does. It also transforms the normal into R16 (630 to 632), reads light words 0x200 to 0x202
  and 0x209, the position scaled by 1/w, and stores one per-vertex result at parameter word 0x1f4
  (record 635).
- **`641`** (routine; kernel record 641), **inferred**: the first-light set-up for a directional
  light with GL_LIGHT_MODEL_LOCAL_VIEWER on (`ody_program.s`, line 865). Its inputs are 656's plus
  the full eye position: where 656 loads a constant viewer direction, this one needs the vertex, so
  it computes the eye position from the modelview rows R12, R9, R10 and R11 (records 641 to 644),
  and R26 receives scalar-unit results (code 4 at 649 to 651, written at 653 to 655) instead of (0,
  0, 1). The normal transform into R16 (645 to 647), the light words 0x200 to 0x202 and 0x209 and
  the material slots copied into the colour unit are as in 656.
- **`656`** (routine; kernel record 656), **inferred**: lighting set-up for the first enabled light
  when it is directional and the viewer is at infinity (`ody_program.s`, line 865), the shortest of
  the four. Inputs: the position slot (only its eye w, modelview row R12, record 656), the normal
  slot 1, words 0, 1, 2 and 9 of the light record (parameter 0x200 to 0x202 and 0x209: the unit
  direction and the quadratic attenuation `ValidateLight` stores) and the material slots 9, 6, 13
  and 10, which it copies into the colour unit (codes 0x1f20 and 0x1828, records 658 to 662). It
  transforms the normal by the normal-matrix rows R13 to R15 into R16 (657 to 659, results at 664 to 666)
  and loads the infinite viewer direction (0, 0, 1) into R26 from the constants 0.0, 0.0 and
  1.0 (0x1e3, 0x1e3, 0x1e0). Its delay slots start the next vertex transform rows (clip w on the
  position, texture q and s on slot 3).
- **`694`** (routine; kernel record 694), **inferred**: the lighting core added after the first
  light when GL_NORMALIZE is off (`ody_program.s`, line 871). It is not the normal transform, which
  the first-light routines already do. Its inputs are R16, R17 and R26 from the routines before it,
  the texture slot 3, the position and the colour slot 5. It computes the dot product of R26, the
  viewer vector, with itself (latched and loaded at 694 as R26's x to z lanes with R17's w lane, 0,
  fired at 695) and R17's squared length (698), takes the reciprocal square root of each product
  (code 1 at 701 and 705) and scales the three lanes of R26 by the first and of R17 by the second
  with code 0xe (results back at 710 to 712 and 714 to 716), so both come out unit vectors: a
  numeric run (`ucode/runs/local-viewer-611.json`, `515 606 611 694`) gives |v|² = 4.13 and GL's
  unit viewer vector (-0.148, 0.098, 0.984) and unit light vector (0.127, 0.399, 0.908)
  (`ucode/buzz_isa.md` pass 17). R17 holds the light direction that 656 writes at 695 to 697 (the
  w lanes of the registers 656 loads, `ucode/buzz_isa.md`, pass 15). The operand of a third code 1
  at 709 is unknown, since no product arrives there under the pass-13 timing. It then latches and
  loads R26 with w = 1 (714, R16's w lane) and loads R17 with w = 1 (717), so the fires at 715 and
  718 are 2 and 1 + v.l, half the squared length of the half vector v + l. In the same records it
  finishes the vertex: the texture rows t and r on slot 3 and the clip z, x, y and z rows on the
  position (695 to 701), the outputs q (0x2c) as word 6 and s, t, r as words 3 to 5, and the colour
  slot 5 through the colour unit (0x1f22) twice, as words 1, 2 and 9, 10.
- **`668`** (routine; kernel record 668), **inferred**: 694's lighting core for GL_NORMALIZE on
  (`ody_program.s`, line 871), one record longer. Its inputs are 694's; the extra work is a dot
  product of the eye normal R16 with R17 (record 676), and it computes the same scaling of R26 and
  R17 as 694 and produces the same texture and position output words (words 6, 3, 4 and 5, nine,
  ten, twelve and thirteen records in) as 694. Its colour words 1, 2, 9 and 10 leave one record
  later than 694's, sixteen to nineteen records in against fifteen to eighteen.
- **`719`** (routine; kernel record 719), **inferred**: closes each light's lighting when it has no
  distance attenuation (`ody_program.s`, line 874), fifteen records with no vertex output. Its inputs
  are what 694 or 668 left behind: the eye normal in R16, the light vector in R17, the viewer vector
  in R26 and the spot direction and cutoff in R20, plus light word 14 (the negated spot exponent)
  and the shininess words 0x0f0, 0x0f1, 0x0f4 and 0x0f5 that routine 490 derives. Run after 656 and
  694 (`scripts/buzz_ucode_dataflow.py`), it fires products of R26 and R17 against the normal and
  each other, takes reciprocal square roots of two of them (code 1, records 724 and 725) into
  R18.y and R18.z, negates the spot exponent into R20.x (code 0xc, 723), loads K from words 0x0f4
  and 0x0f5 (724, 728), and passes four products through code 5 and two through code 4 (726 to 733).
  The colour unit multiplies light-relative colour word 0 by the diffuse slots 11 and 7 and words 1
  and 2 by slots 7 and 8 (operations 0x4020, 0x4120, 0x4220) and stores results at working
  addresses 25 to 30. Outputs: the read of R23.x at 733 that starts the finish's coordinate output.
  The code-4 results of 731 (N.L) and 733 reach no unit of any finish at the four-record distance;
  the finish's word 6 is 1/w, which d2 0x25 sends without a scalar input (`ucode/buzz_isa.md`, pass 16).
- **`734`** (routine; kernel record 734), **inferred**: the attenuated form of 719 for a local
  light (`ody_program.s`, line 874), twenty-four records against fifteen. Inputs: 719's registers
  and shininess words, plus light word 7 and R22.y, which the lighting core 694 or 668 filled with
  word 8 (676 or 702 read it at 675 or 700). Its first nine records are the addition: they read
  light word 7 (constant attenuation) into R21.x (735 to 737), put 1.0 in R22.x (736 to 738), pass
  R22.w through code 8 (734): 734 follows the lighting core in the list (`ody_program.s`, lines 871
  and 874), whose last record (718 in 694,
  693 in 668) reads R22.w, the value its d2 code 0x10 left there at 709 or 683, scale R22.w and R22.y by K through code 0xd (735 and
  736, results into R22 lanes z and y at 739 and 740), and latch R21 for the products that follow. From record
  742 the routine repeats 719's work in a different schedule: two reciprocal square roots, the spot
  exponent negated by code 0xc, K from words 0x0f4 and 0x0f5, four code-5 and two code-4 results,
  and the colour products 0x4020, 0x4220 and 0x4120 with the diffuse and specular slots. Its last
  record, 757, carries a code-4 operation whose result no finish consumes (`ucode/buzz_isa.md`, pass 16) and reads R23.x; in between it
  computes 719's terms with the attenuation registers latched in front of them.
- **`768`** (routine; kernel record 768), **inferred**: lighting for each further light that is
  directional (`ody_program.s`, line 862). Inputs: the next light's record, words 0 to 2 (its
  direction), 8 and 9 (linear and quadratic attenuation), 10 to 13 (spot direction and cutoff) and 14;
  shininess word 0x0f1; and the results of the routine before. It loads the new direction into R17
  (781 to 783), the spot direction and cutoff into R20 and the attenuation into R22.y and, through K,
  word 9; it latches R18 twice and R26 once, and runs code 3 three times, code 4 and code 8 once
  and code 0xe four times. In the colour unit it multiplies the
  light-relative specular and diffuse colours (0x4220, 0x4120) and the ambient colour by the ambient
  slots 6 and 10 (0x4028, 0x4020) and sends one colour word (0x1a9a). Its tail from record 779 is the
  colour-index second part.
- **`920`** (routine; kernel record 821), **inferred**: lighting for each further local light in
  RGBA mode (`ody_program.s`, line 862), forty-four records. Inputs: the position slot, the
  modelview rows R9 to R11, the next light's position, attenuation and spot words, the constants
  -1.0, 0.0, 1.0 and 2.828 and the stored word 0x1f4. Beyond 768's work it recomputes the eye
  position from the position slot (latches of R9, R10 and R11), fires products of R18, R19 and R17,
  and scales them with one reciprocal square root (code 1) and seven code-0xe multiplies.
  The colour unit runs the same light-relative products as 768 (0x4220, 0x4120, 0x4028 and, for the
  back ambient, 0x6020) and outputs two colour words (0x9f9a, 0x9f92).
- **`891`** (routine), **inferred**: the
  first part of a further directional light in the colour-index form (`ody_program.s`, line 859),
  eleven records. Its only parameter input is light word 14; it runs two code-3 operations, one
  code 4 and one code 8, and in the colour unit multiplies the light-relative specular and diffuse
  colours (0x4220, 0x4120) and stores to working addresses 26 and 29. It produces no vertex word: 779
  follows it and finishes the light. Context byte +3220, which picks this path, is the RGBA flag
  `__glGenericPickColorMaterialProcs` (`so_lighting.s`) also tests.
- **`964`** (routine; kernel record 865), **inferred**: the first part of a further local light in
  the colour-index form (`ody_program.s`, line 859). Inputs: the position slot, the modelview rows
  R9 to R11, -1.0, 0.0, light word 14 and the stored word 0x1f4. It computes the eye position again
  from those rows, runs two code-3, one code-4 and one code-8 operation, and multiplies the
  light-relative specular and diffuse colours (0x4220, and 0x4120 with the back diffuse slot 11) as
  891 does. Outputs: registers and working addresses for 931, no vertex word.
- **`779`** (routine; kernel record 779), **inferred**: the second part of a further directional
  light in the colour-index form (`ody_program.s`, line 860), entered eleven records into 768. It
  takes the next light's direction, attenuation and spot words exactly as 768's tail does (words 0
  to 2, 8 to 13), runs four code-0xe multiplies and one code 3, and outputs one colour word
  through 0x1a9a.
  What it omits against 768 is the first eleven records: the specular, diffuse and ambient colour
  products and the code-3 and code-4 work on the previous light.
- **`931`** (routine; kernel record 832), **inferred**: the second part of a further local light
  in the colour-index form (`ody_program.s`, line 860), entered eleven records into 920. It takes the
  next light's position, attenuation and spot words and the constant 2.828, computes one
  reciprocal square root (code 1) and seven code-0xe scalings, and outputs two colour words
  (0x9f9a and 0x9f92); it drops 920's opening colour products for the previous light.

### The program table

**established.** `AddProgram` (`ody_program.s`, source lines 1041 to 1043) compares the
program key it has built against a table in the N32 libGLcore of 6.5.30m at address
0x0dae4680, file offset 0x1e4680 in the read-only `.rodata` section. The listing writes the
address as `__glim_Color3f` + 18048 only because 0x0dae0000, the GOT page base the code loads,
is also where that function starts. The table holds 24 records of 72 bytes and ends with a
record whose mask is zero.

**established.** Each record is laid out as follows, read from the loads in `AddProgram`:

- +0, a 64-bit mask. The walk stops at the first record whose mask covers every set bit of the
  key (`nor` then `and` at source line 1042), or at the zero mask, which means no match.
- +8, +12 and +16: the three words stored as the program's sequencer 0x29, 0x2a and 0x2c values
  (source lines 1197 to 1199).
- +20 and +24: a patch. `__glOdysseySetProgram` (source lines 1455 to 1462) sends +20 as the
  instruction write address and then the image record that +24 names, so +24 overwrites +20 in RAM.
- +28: the closing routine, kept at source line 1066 and added to the list at line 1164.
- +32: up to three routine entries ending with 1221.
- +52: a second list ending with 1221, copied after record 515 (source lines 1208 to 1213).

**established.** On a match the routines `AddProgram` has already chosen for lighting are
dropped: the list position goes back to where this program started (source line 1073). When
texture generation is on, hardware clip planes are on, or +8 holds 1221 (source line 1069),
the +32 list is copied, sequencer 0x29 is taken from its first element (source line 1203) and the
patch is kept. Otherwise the +32 list is skipped and the patch is reset to 1221 over 1221, which
rewrites the null routine with itself. Texture generation and clip routines are then appended
as usual (source lines 1079 to 1139). **inferred:** each table program is a hand-fused copy of
the transform and lighting chain for one common state, and the patch turns a value-3 mark in
its first routine into an end so that the appended texture-generation or clip routines can run.
Every patch address in the table is a value-3 mark and every patch record is the end mark of the
same routine.

**established.** `__glOdysseySetProgram` (source lines 1469 to 1483) sets sequencer 0x29 to the
list element at the second-list position, which is 515, and 0x33 to the position after it,
sends `0x90808800`, and only then loads 0x33 with the first list's start and 0x29, 0x2a and
0x2c with the per-vertex values. **inferred:** the second list runs once when a program is
selected, as its set-up pass, and the first list runs for every vertex.








**established** (VPro patches 4103 and 4104, N32 `libGLcore.so` file offset 0x1d0bf0): the older
library has the same table with 21 records, every record number 99 lower (the kernel copy's
numbering), and without records 20 to 23 of 6.5.30m. Its last record, mask 0x40e40 (unlit with the
perspective-texture bit), lists 1099 and 1112 and closes with 1074, which are 1198, 1211 and 1173 in
the 6.5.30m image: the same three routines 6.5.30m adds at source lines 1148 to 1150 instead.
That agreement is the check on the reading of bit 6 below.

#### The program key

**inferred**, from the code that sets each bit in `AddProgram`; the GL names come from the
enable bits `__glim_IsEnabled` tests (`so_attrib.s`) and `__glOdyim_IsEnabled` (`ody_attrib.s`).

- Bit 0 (source line 1011): two colour outputs. It is set for two-sided lighting while
  GL_LIGHTING is on (context byte +1413) and is forced at source line 810 for separate specular.
- Bits 1 and 2: local and infinite viewer (context byte +1412), set only when a light is enabled.
- Bits 3 and 4: separate specular in effect, or not. Separate specular counts when
  GL_LIGHT_MODEL_COLOR_CONTROL (context +1416) is 0x81fa, texturing is on, a light is enabled
  and fragment lighting is off (source lines 675 and 797 to 800).
- Bits 5 and 6: texturing on, without and with the perspective-texture flag. The flag is set
  when texturing is on under a perspective projection (context word +0x10000 + 26428, written by
  `__glOdysseyUpdateTransform`) with one colour, no separate specular and no fragment lighting
  (source lines 686 to 794).
- Bits 7 and 8: GL_NORMALIZE on and off (bit 22 of the enables word at context +1792), set with a
  light enabled or for the fragment light.
- Bits 9, 10 and 11: texture dimension at least 1, 2 and 3, as a run of ones (source line 677).
- Bits 12 and 13: RGBA and colour-index lighting (context byte +3220), with a light enabled.
- Bits 14 and 15: local and infinite viewer of the fragment light model (context
  byte +0x10000 + 26020, set by `__glOdyim_FragmentLightModelfvSGIX`), with fragment light 0 on.
- Bit 16: fragment light model two-sided (context byte +0x10000 + 26021).
- Bit 17: texture generation or hardware clip planes on. The texture bits are left out then.
- Bit 18: GL_LIGHTING off (bit 6 of the enables word).
- Bits 19 to 22, 23 to 26 and so on: one nibble per enabled light in order (source line 851):
  local, directional, attenuated (local only), spot (local only).
- Bits 51 to 54: the same nibble for fragment light 0 (source line 902) when
  GL_FRAGMENT_LIGHTING_SGIX (bit 12 of context +1796) is on.

`AddProgram` skips the table when the light nibbles would run past bit 63 (source line 999) and,
with separate specular, while building program 1 (source line 810).

#### Table records

Release 6.5.30m, N32 libGLcore; record index, address, the state the mask admits (by the bit
reading above), the three sequencer words, the patch, the closing routine and both lists.

| # | Address | State admitted | 0x29, 0x2a, 0x2c | Patch | Close | List | Set-up |
|---:|---|---|---|---|---:|---|---|
| 0 | 0x0dae4680 | unlit, untextured | 214, 224, 234 | none | 1153 | 214, 234 | - |
| 1 | 0x0dae46c8 | unlit, textured or texgen or clip | 243, 256, 268 | 250 from 255 | 1178 | 243, 268 | - |
| 2 | 0x0dae4710 | unlit, directional fragment light | 1313, 1325, 1337 | none | 1163 | 1313, 1337 | 1304 |
| 3 | 0x0dae4758 | one directional light, untextured | 1483, 1496, 1509 | none | 1153 | 1483, 1509 | 1226 |
| 4 | 0x0dae47a0 | as 2, textured or texgen or clip | 1348, 1364, 1379 | 1358 from 1363 | 1188 | 1348, 1379 | 1304 |
| 5 | 0x0dae47e8 | as 2, fragment two-sided | 1390, 1406, 1422 | none | 1168 | 1390, 1422 | 1304 |
| 6 | 0x0dae4830 | two directional lights, texgen or clip | 1580, 1597, 1613 | 1591 from 1596 | 1178 | 1580, 1613 | 1226 |
| 7 | 0x0dae4878 | one directional light, two colours | 1752, 1771, 1789 | 1765 from 1770 | 1183 | 1752, 1789 | 1226, 1265 |
| 8 | 0x0dae48c0 | as 4, fragment two-sided | 1433, 1453, 1472 | 1447 from 1452 | 1193 | 1433, 1472 | 1304 |
| 9 | 0x0dae4908 | one directional light, normalize on, textured | 1520, 1541, 1561 | 1535 from 1540 | 1178 | 1520, 1561 | 1226 |
| 10 | 0x0dae4950 | two directional lights, normalize on | 1623, 1646, 1668 | 1640 from 1645 | 1178 | 1623, 1668 | 1226 |
| 11 | 0x0dae4998 | up to four directional lights, textured | 1689, 1716, 1742 | 1710 from 1715 | 1178 | 1689, 1742 | 1226 |
| 12 | 0x0dae49e0 | up to three directional lights and a directional fragment light | 2300, 2328, 2355 | 2322 from 2327 | 1188 | 2300, 2355 | 1226, 1286 |
| 13 | 0x0dae4a28 | two directional lights, two colours, textured | 1798, 1824, 1851 | 1818 from 1823 | 1183 | 1798, 1851 | 1226, 1265 |
| 14 | 0x0dae4a70 | one directional light, separate specular | 1221, 1221, 1221 | none | 1188 | 2240 | 1226 |
| 15 | 0x0dae4ab8 | as 14, two colours | 1221, 1221, 1221 | none | 1193 | 2268 | 1226, 1265 |
| 16 | 0x0dae4b00 | one local light, normalize off | 1862, 1896, 1929 | 1890 from 1895 | 1178 | 1862, 1929 | 1295 |
| 17 | 0x0dae4b48 | one local light, either normalize | 1955, 1990, 2024 | 1984 from 1989 | 1178 | 1955, 2024 | 1295 |
| 18 | 0x0dae4b90 | one local light, local viewer, normalize on | 2050, 2085, 2119 | 2079 from 2084 | 1178 | 2050, 2119 | 1295 |
| 19 | 0x0dae4bd8 | one local light, local viewer, normalize off | 2145, 2180, 2214 | 2174 from 2179 | 1178 | 2145, 2214 | 1295 |
| 20 | 0x0dae4c20 | lit with no vertex light, local fragment light | 2590, 2626, 2661 | 2620 from 2625 | 1188 | 2590, 2661 | - |
| 21 | 0x0dae4c68 | as 20, normalize on | 2691, 2728, 2764 | 2722 from 2727 | 1188 | 2691, 2764 | - |
| 22 | 0x0dae4cb0 | two local lights, normalize off | 2365, 2404, 2442 | 2398 from 2403 | 1178 | 2365, 2442 | - |
| 23 | 0x0dae4cf8 | two local lights, normalize on | 2476, 2516, 2555 | 2510 from 2515 | 1178 | 2476, 2555 | 1295 |

Every lit record also admits RGBA lighting, single colour unless stated, an infinite viewer
unless stated and normalize off unless stated. Records 1, 4, 8, 9 and 11 to 23 admit texture
of up to three dimensions; records 1, 4, 6 to 8 and 10 to 23 admit texture generation or clip planes.

#### Table program routines

Each table program is two routines in the image: the entry in +8, which ends at an end mark,
and the routine after it, which holds the +16 entry. Data addresses and value-3 marks are
from the routine map below.

- **`243`** (routine; kernel record 243), **inferred**: the first-vertex half of table record 1
  (at 0x0dae46c8 in `libGLcore.so`), unlit and textured. Inputs: the position slot 0, the
  texture-coordinate slot 3 (loaded at 248), the colour slot 5 (copied at 250), R0 to R4 and the
  texture-matrix rows R5 to R8. It computes the five position products of routine 214 and then
  transforms the texture coordinate by the texture matrix, q first (R8) and then s, t and r (R5, R6,
  R7), and writes a header for ten words at 249. Its value-3 mark at 250 is the patch point: with
  texture generation or clip planes the routine stops there, and routine 0 or the texture-generation
  chain (51 to 123) produces the texture results instead.
- **`260`** (routine; kernel record 260), **inferred**: the loop and exit half of table record 1
  (+16 at 0x0dae46d8 in `libGLcore.so`). Entered at 256 (sequencer 0x2a), each pass issues 243's
  nine products for the next vertex and outputs the previous one: x/w, y/w and z/w as words 8, 9 and
  7, the clip z and q consumed (0x08), s, t and r multiplied by 1/w (0x26) as words 3, 4 and 5, the
  colour as words 1 and 2 and the closing word 10, with 1/w itself (0x2b) as word 6 in the delay
  slot 267. The value-3 mark at 263 chooses between the loop entry and the exit entry 268 (sequencer
  0x2c), which produces the last vertex's outputs without new inputs. Because q is consumed and not
  divided by, the texture results are affine coordinates scaled by 1/w. Its inputs are the position, texture and colour slots of each next vertex; it transforms them by 243's nine rows while the outputs above leave for the previous one.
- **`1313`** (routine; kernel record 1214), **established** selection, **inferred** arithmetic: the
  whole per-vertex program of table record 2 (at 0x0dae4710 in `libGLcore.so`), one directional
  fragment light with GL_LIGHTING off and no texture; 0x2a entry 1325 follows its value-3 mark at
  1320 and 0x2c entry 1337 sits near its end. Inputs: the normal and position slots, the colour slot,
  R0 to R4 and R13 to R15, and data word 0x1e1 (0.5). Each pass transforms the normal (R13 to R15)
  and the position, dots the transformed normal (R21, written at 1320 to 1322 from R13 to R15) against
  the fragment light that set-up 1304 left in R18 (latched at 1323), and runs six code-5 and two
  code-2 operations. The code-5 records take the three eye-normal products after K is loaded with
  0.5 (word 0x1e1, record 1315), so they send half of each component with its sign (code 5 as the
  product with K, `ucode/buzz_isa.md` pass 15). Outputs, under a header for ten words: 1/w, x/w, y/w and
  z/w (0x2b, 0x46, 0x26) as words 6, 8, 9 and 7, the colour slot as words 1 and 2 (0x1f20, 0x1932)
  and colour-unit copies of the per-vertex fragment terms as words 3, 4 and 5 (0x1f36, 0x1f16, 0x1f14).
- **`1348`** (routine; kernel record 1249), **established** selection, **inferred** arithmetic: the
  per-vertex entry of table record 4 (at 0x0dae47a0 in `libGLcore.so`), record 2's state with
  texturing or texture generation or clip planes allowed. Inputs: normal, position and texture slots,
  R0 to R8 and R13 to R15, and 0.5. Beyond 1313's work it transforms the texture coordinate by R8,
  R5, R6 and R7 and outputs it, so the header announces thirteen words: 1/w, x and y as words 9, 11
  and 12, z as 10, the fragment terms as 7 and 8 and the colour as word 1. Its value-3 mark 1358 is
  patched with its end mark 1363 when texture generation or clipping follow.
- **`1368`** (routine; kernel record 1269), **established** selection, **inferred** arithmetic: the
  second routine of table record 4 (its +16 word at 0x0dae47b0 in `libGLcore.so`), holding the 0x2c
  entry 1379. Its inputs are 1348's registers and the texture slot; it outputs the previous vertex's
  texture coordinate (q consumed by 0x08, s, t and r times 1/w as words 3, 4 and 5) and, in its loop,
  computes the next vertex's position, texture and fragment terms with three code-5 and two code-2
  operations, sending the same thirteen-word packet as 1348.
- **`1390`** (routine; kernel record 1291), **established** selection, **inferred** arithmetic: the
  single routine of table record 5 (at 0x0dae47e8 in `libGLcore.so`), record 2's fragment-lighting
  program with the fragment model two-sided. Inputs: normal and position slots, the constants -0.5,
  -1.0 and 0.5 (words 0x1eb, 0x1e2, 0x1e1) and the matrices. It transforms the normal twice, once as
  is and once for the back face, and runs sixteen code-5 and three code-2 operations per two passes;
  it outputs fourteen-word packets with 1/w, x, y and z as words 10, 12, 13 and 11, d2 code 0x10 on
  word 3, 0xa6 on word 13 and front and back fragment terms as words 4 to 9.
- **`1433`** (routine; kernel record 1334), **established** selection, **inferred** arithmetic: the
  per-vertex entry of table record 8 (at 0x0dae48c0 in `libGLcore.so`), the two-sided form of record 4.
  Its inputs are 1390's plus the texture slot and rows R5 to R8; it computes 1390's front and back
  fragment terms and the texture transform and outputs a sixteen-word packet (header 15): 1/w and x
  as words 13 and 15, a third coordinate as word 16 (field 0 with bit 16 set, record 1453), s and t as 4 and 5, colour words 1, 9 and 10. Patch: its mark
  1447 takes its end mark 1452.
- **`1457`** (routine; kernel record 1358), **established** selection, **inferred** arithmetic: the
  second routine of table record 8 (its +16 word at 0x0dae48d0 in `libGLcore.so`), holding the 0x2c
  entry 1472. It takes 1433's registers, outputs the previous vertex's texture words (q consumed,
  s, t and r as words 3 to 5, y as word 14 through 0x24) and computes the next vertex with ten code-5
  operations, reading data words 0x1e1, 0x1e2 and 0x1eb as 1433 does.
- **`1483`** (routine; kernel record 1384), **established** selection, **inferred** arithmetic: the
  whole program of table record 3 (at 0x0dae4758 in `libGLcore.so`): one directional light,
  infinite viewer, single colour, RGBA, no texture and no texture generation or clip planes, so the
  record carries no patch; its value-3 marks lie five before the 0x2a entry 1496 and the 0x2c entry 1509.
  Inputs: the normal and position slots, the material slots 6 to 9, R0 to R4, R13 to R15, and
  what set-up 1226 left: light 0's direction in R17, its half vector scaled by word 0x0f0 in R18, and
  the ambient sum at colour address 25. Each pass transforms the normal into R16, fires N.L against
  R17 and the scaled N.H against R18, turns the latter into the specular factor with code 3, and
  computes the colour in the colour unit: emission plus address 25 times the ambient slot, plus N.L
  times light 0's diffuse colour times the diffuse slot, plus the code-3 factor times its specular
  colour times the specular slot (`ucode/buzz_isa.md`, pass 13). Outputs, under a header for seven
  words: 1/w (0x2b) as word 3, x/w (0x46) as 5, y/w and z/w (0x26) as 6 and 4, and the colour as
  words 1 and 2.
- **`1520`** (routine; kernel record 1421), **established** selection, **inferred** arithmetic: the
  per-vertex entry of table record 9 (at 0x0dae4908 in `libGLcore.so`), one directional light with
  GL_NORMALIZE on and texturing allowed; patch: mark 1535 takes end mark 1540. Inputs: 1483's plus
  the texture slot, R5 to R8 and the constants 0.0 and 1.0. It computes 1483's colour, with the
  normal normalised: 1530 latches and loads the normal with w = 0 (R16's x to z, R17's w lane) and
  its fire at 1531 is the squared length, code 1 at 1537 its reciprocal root, and code 6 at 1531 and
  1542 scales N.L and the specular dot by it; records 1525 to 1527 put the 8 + s term back through
  (1, 0, 0, 1) against (code-6 result, 0, 0, 8 + s) before code 3. A numeric run with a normal of
  length 2 (`ucode/runs/normalize-1520.json`, `515 1226 1520.. 1541.. 1541..`, `--code 6=mulF`)
  gives |n|² = 4, N.L = 0.928 and the code-3 operand 8.80338, the values of the unit normal
  (`ucode/buzz_isa.md` pass 17). It also transforms the
  texture coordinate; outputs: a ten-word packet with s, t and r as words 3 to 5 and the colour as
  words 1 and 2.
- **`1545`** (routine; kernel record 1446), **established** selection, **inferred** arithmetic: the
  second routine of table record 9 (its +16 word at 0x0dae4918 in `libGLcore.so`), holding the 0x2c
  entry 1561. It takes 1520's inputs and computes the same normalised lighting and texture transform
  for the following vertices (two code-1, three code-6 and two code-3 operations per pass) and outputs
  1520's ten-word packet. 1545 is not where a pass starts: it sits five records after 1540, the end
  mark the patch copies to 1535, inside the loop that sequencer 0x2a starts at 1541; that loop runs
  1541 to 1560, with its value-3 mark at 1556, and the runs of pass 17 enter it there
  (`ucode/buzz_isa.md`).
- **`1580`** (routine; kernel record 1481), **established** selection, **inferred** arithmetic: the
  per-vertex entry of table record 6 (at 0x0dae4830 in `libGLcore.so`), two directional lights with
  texture generation or clip planes allowed and no texture; patch: mark 1591 takes end mark 1596.
  Inputs: normal and position slots, the material slots and both lights' vectors from set-up 1226.
  It computes 1483's colour for two lights: diffuse colours at addresses 1 and 4 and specular at 2 and
  5 times the material slots, three code-3 specular factors per pass, and the scaled sums (0x1a58,
  0x1b98). Outputs: a ten-word packet, the colour as words 1 and 2.
- **`1601`** (routine; kernel record 1502), **established** selection, **inferred** arithmetic: the
  second half of table record 6's two-directional-light program (+16 at 0x0dae4840 in
  `libGLcore.so`), eighteen records with its single value-3 mark at 1608, five before the alternate
  loop entry 1613. It takes 1580's registers and outputs the previous vertex's coordinates and
  colour while it computes the next vertex's two-light colour (three code-3 factors, the diffuse and
  specular products of addresses 1, 2, 4 and 5).
- **`1623`** (routine; kernel record 1524), **established** selection, **inferred** arithmetic: the
  per-vertex entry of table record 10 (at 0x0dae4950 in `libGLcore.so`), two directional lights with
  GL_NORMALIZE on; it reads 0.0 and 1.0 and its mark 1640 takes end mark 1645 as the patch. Inputs: as 1580.
  It normalises the eye normal (code 1, six code-6 operations), computes two code-3 specular
  factors and the two lights' colour products (addresses 1, 2, 4, 5), and outputs a ten-word packet
  with the colour as words 1 and 2 and three extra words 3 to 5.
- **`1650`** (routine; kernel record 1551), **established** selection, **inferred** arithmetic: the
  second routine of table record 10 (its +16 word at 0x0dae4960 in `libGLcore.so`), thirty-five
  records holding the 0x2c entry 1668. It takes 1623's inputs and computes the same normalised
  two-light colour for each further vertex (four code-3, five code-6, two code-1 operations), with
  1623's packet as output.
- **`1689`** (routine; kernel record 1590), **established** selection, **inferred** arithmetic: the
  per-vertex entry of table record 11 (at 0x0dae4998 in `libGLcore.so`), up to four directional
  lights, textured, normalize off; patch: mark 1710 takes end mark 1715. Inputs: normal, position and
  texture slots, R0 to R8, R13 to R15 and the four light vectors set-up 1226 left. It computes
  four code-3 specular factors and the colour products of all four lights (diffuse at colour
  addresses 1, 4, 7 and 10 with slot 7, specular at 2, 5, 8 and 11 with slot 8), and outputs a
  ten-word packet: s, t and r as words 3 to 5, the coordinates as 6 to 9, the colour as 1 and 2.
- **`1720`** (routine; kernel record 1621), **established** selection, **inferred** arithmetic: the
  second half of the four-light program (table record 11, +16 at 0x0dae49a8 in `libGLcore.so`); its
  mark 1737 precedes the alternate loop entry 1742. It takes 1689's inputs, outputs the previous
  vertex's packet and computes the next vertex's four-light colour with four code-3 factors and the
  same address-and-slot products; like 1689 it reads no parameter word, everything coming from
  set-up 1226.
- **`1752`** (routine; kernel record 1653), **established** selection, **inferred** arithmetic: the
  per-vertex entry of table record 7 (at 0x0dae4878 in `libGLcore.so`), one directional light with
  two colour outputs (two-sided lighting); patch: mark 1765 takes end mark 1770; its set-up list
  adds routine 1265 after 1226. Inputs: 1483's plus the back material slots and 1265's negated
  vectors. It computes the front colour as 1483 does and the back colour from the back slots (0x1928
  with slot 10, 0x0120 with slot 11) with four code-3 factors, and outputs a twelve-word packet whose
  words 3, 4 and 5 come from d2 code 0x21 and whose colours are words 1, 2 and 6, 7. Its four
  lighting products (1763 to 1766, and 1782 to 1785 in the loop pass) are the normal against R17,
  R18, R21 and R22: front N.L, the front code-3 operand 8 + s (1 - N.H), back N.L with the normal
  negated, and the back operand 8 + s' (1 + N.H); a numeric run gives GL's four values
  (`ucode/runs/two-sided-1752.json`, `ucode/buzz_isa.md` passes 15 and 17). **inferred**. The
  diagnostic image schedules this program differently and computes the same products (pass 17).
- **`1775`** (routine; kernel record 1676), **established** selection, **inferred** arithmetic: the
  nineteen records closing the one-light, two-colour program of table record 7 (+16 at 0x0dae4888 in
  `libGLcore.so`); mark 1784 sits five before the alternate loop entry 1789. It takes 1752's
  registers, outputs the previous vertex's front and back colours (0x9f9a, 0x9f50, 0x1c3a) and
  coordinates, and computes the next vertex's two-sided colour with two code-3 factors.
- **`1798`** (routine; kernel record 1699), **established** selection, **inferred** arithmetic: the
  per-vertex entry of table record 13 (at 0x0dae4a28 in `libGLcore.so`), two directional lights,
  two colours, textured; patch: mark 1818 takes end mark 1823. Inputs: normal, position and texture
  slots, both material sides and set-up 1226 and 1265's vectors. It computes six code-3 factors, the
  front and back products of lights 0 and 1 (addresses 1, 2, 4 and 5 with slots 7, 8, 11 and 12) and
  the texture transform; it outputs a twelve-word packet with s, t, r as words 3 to 5 and the
  colours as 1, 2 and 6, 7.
- **`1828`** (routine; kernel record 1729), **established** selection, **inferred** arithmetic: the
  two-sided half of table record 13's program for two directional lights with texture (+16 at
  0x0dae4a38 in `libGLcore.so`), thirty records, eleven longer than 1775; mark 1846 leads to entry 1851.
  It takes 1798's inputs and computes the same front and back colours (five code-3 factors per
  pass); it outputs 1798's packet for each further vertex.
- **`1862`** (routine; kernel record 1763), **established** selection, **inferred** arithmetic: the
  per-vertex entry of table record 16 (at 0x0dae4b00 in `libGLcore.so`), one local light without
  attenuation or spot, infinite viewer, normalize off; the first table routine that reads the light
  record (words 1 and 2) and shininess words 0x0f4 and 0x0f8. Inputs: position, normal and texture
  slots and the matrices. It computes the eye position (R12, R9, R10, R11), the vector to the light,
  its reciprocal length (code 1, twice), the specular operand through codes 5, 0xd and 3, and the
  colour (emission, address 25 times the ambient slot, light 0's products); outputs: a ten-word packet
  with y through d2 0x24 as word 7. Patch: mark 1890 takes end mark 1895.
- **`1900`** (routine; kernel record 1801), **established** selection, **inferred** arithmetic: the
  fifty-one-record second routine of table record 16 (its +16 word at 0x0dae4b10 in `libGLcore.so`),
  holding the 0x2c entry 1929. It takes 1862's inputs and computes the same local-light colour for
  each further vertex (three code-1 and two each of codes 5, 8, 0xd and 3); it outputs 1862's packet.
- **`1955`** (routine; kernel record 1856), **established** selection, **inferred** arithmetic: the
  per-vertex entry of table record 17 (at 0x0dae4b48 in `libGLcore.so`), one local light whose mask
  admits both normalize bits. Inputs: 1862's. It computes 1862's lighting with the normal normalised
  as well: four code-1, three code-4 and two code-6 operations, and d2 code 0xc6 on one product.
  Outputs: a ten-word packet, the colour as words 1 and 2. Patch: mark 1984 takes end mark 1989.
- **`1994`** (routine; kernel record 1895), **established** selection, **inferred** arithmetic: the
  fifty-two-record second half of table record 17's program (+16 at 0x0dae4b58 in `libGLcore.so`),
  reading the light record from index 1 and the constants; mark 2019 precedes the alternate loop
  entry 2024. It takes 1955's inputs, computes the same normalised local-light colour per vertex
  (seven code-1 and six code-4 operations) and outputs x through d2 0xc6 as word 8 with the rest of
  1955's packet.
- **`2050`** (routine; kernel record 1951), **established** selection, **inferred** arithmetic: the
  per-vertex entry of table record 18 (at 0x0dae4b90 in `libGLcore.so`), one local light with a local
  viewer and GL_NORMALIZE on, run from the overlay window because it lies past RAM record 2047;
  patch: mark 2079 takes end mark 2084. Its inputs are 1955's without the constant 1.0; it computes
  the viewer vector per vertex as well (five code-1 and three code-6 operations) and outputs 1955's
  ten-word packet.
- **`2089`** (routine; kernel record 1990), **established** selection, **inferred** arithmetic: the
  second routine of table record 18 (its +16 word at 0x0dae4ba0 in `libGLcore.so`), holding the 0x2c
  entry 2119, also paged in through the overlay. It takes 2050's inputs and computes its local-light,
  local-viewer colour for each further vertex (nine code-1, six code-4 and four code-6 operations);
  it outputs 2050's packet.
- **`2145`** (routine; kernel record 2046), **established** selection, **inferred** arithmetic: the
  per-vertex entry of table record 19 (at 0x0dae4bd8 in `libGLcore.so`), one local light with a local
  viewer and normalize off; patch: mark 2174 takes 2179. Inputs: 2050's. It computes the same light
  and viewer vectors without normalising the normal, so one code-6 operation instead of three and
  three code-1, and outputs the same ten-word packet.
- **`2184`** (routine; kernel record 2085), **established** selection, **inferred** arithmetic: the
  local-viewer, normalize-off counterpart of 2089 (table record 19, +16 at 0x0dae4be8 in
  `libGLcore.so`), fifty-two records paged into the overlay window; mark 2209, entry 2214. It takes
  2145's inputs and computes the further vertices with five code-1 and six code-4 operations;
  it outputs 2145's packet.
- **`2240`** (routine; kernel record 2141), **established** selection, **inferred** arithmetic: the
  only list entry of table record 14 (at 0x0dae4a70 in `libGLcore.so`), one directional light with
  separate specular colour; its three sequencer words are 1221, so `AddProgram` always copies the
  list and sets sequencer 0x29 to 2240. Inputs: 1483's plus the texture slot. It computes 1483's
  colour with one code-3 factor but keeps the specular term apart: it outputs the primary colour as
  words 1 and 2 (0x1a5a, 0x1b90) and the specular colour as words 6, 7 and 8, under a header for
  thirteen words with s, t, r as words 3 to 5.
- **`2268`** (routine; kernel record 2169), **established** selection, **inferred** arithmetic: the
  only list entry of table record 15 (at 0x0dae4ab8 in `libGLcore.so`), the two-colour form of 2240
  with the same 1221 sequencer words. Inputs: 2240's plus the back slots. It computes front and back
  primary and specular colours with two code-3 factors and outputs them as words 1, 2 and 7 to 12
  under a header for sixteen words.
- **`2300`** (routine; kernel record 2201), **established** selection, **inferred** arithmetic: the
  per-vertex entry of table record 12 (at 0x0dae49e0 in `libGLcore.so`), up to three directional
  lights with a directional fragment light, textured; patch: mark 2322 takes end mark 2327; its
  set-up list adds 1286 after 1226. Inputs: normal, texture and position slots, 0.5, the three
  lights' vectors and the fragment light in R24 and R13 to R15. It computes three code-3 specular
  factors and the lights' products (addresses 1, 2, 4, 5, 7, 8) plus three code-5 fragment terms,
  and outputs a thirteen-word packet with the fragment terms as words 6 to 8.
- **`2332`** (routine; kernel record 2233), **established** selection, **inferred** arithmetic: the
  second routine of table record 12 (its +16 word at 0x0dae49f0 in `libGLcore.so`), holding the 0x2c
  entry 2355 and reading data word 0x1e1 as 2300 does. It takes 2300's inputs and computes the same
  three-light and fragment-light values per further vertex; it outputs 2300's packet (y through d2
  0xa6 as word 12).
- **`2365`** (routine; kernel record 2266), **established** selection, **inferred** arithmetic: the
  per-vertex entry of table record 22 (at 0x0dae4cb0 in `libGLcore.so`), two local lights with
  normalize off; the record has no set-up routine. Inputs: position, normal and texture slots and
  words 1, 2 and 0x010 to 0x012 of two light records. With no set-up it computes the ambient itself:
  emission, light-model ambient times the ambient slot and both lights' ambient colours (0x1828,
  0x0028, 0x0328), then the diffuse and specular products of addresses 1, 2, 4, 5; it outputs the
  texture and 1/w words of a ten-word packet. Patch: mark 2398 takes end mark 2403.
- **`2408`** (routine; kernel record 2309), **established** selection, **inferred** arithmetic: the
  sixty-four-record second routine of table record 22 (its +16 word at 0x0dae4cc0 in
  `libGLcore.so`), holding the 0x2c entry 2442. It takes 2365's inputs and computes, per vertex, both
  local lights' vectors (six code-1), their specular operands (four each of codes 5, 8, 0xd and 3)
  and the scaled sums (0x1b58, 0x1c98, 0x1d58); it outputs x, y and z through d2 0x46, 0xa6 and 0x24
  and the colour as words 1 and 2.
- **`2476`** (routine; kernel record 2377), **established** selection, **inferred** arithmetic: the
  per-vertex entry of table record 23 (at 0x0dae4cf8 in `libGLcore.so`), two local lights with
  GL_NORMALIZE on; patch: mark 2510 takes end mark 2515. Inputs: 2365's. It computes 2365's ambient
  and colour products with the normal normalised (three code-1, two code-5) and outputs the texture
  and 1/w words of a ten-word packet.
- **`2520`** (routine; kernel record 2421), **established** selection, **inferred** arithmetic: the
  sixty-six-record second routine of table record 23 (its +16 word at 0x0dae4d08 in
  `libGLcore.so`), holding the 0x2c entry 2555. It takes 2476's inputs and computes both lights per
  vertex with eight code-5, seven code-1 and four code-3 operations; it outputs x through d2 0xc6 as
  word 8 and the colour as words 1 and 2.
- **`2590`** (routine; kernel record 2491), **established** selection, **inferred** arithmetic: the
  per-vertex entry of table record 20 (at 0x0dae4c20 in `libGLcore.so`), lighting on with no vertex
  light and one local fragment light, normalize off. Inputs: position, normal and texture slots, the
  fragment light's words 0x080 to 0x082 and 0x08a to 0x08e, and 2.828 and 3.0. It computes the eye
  position, the normal (three normal-slot loads) and the vector to the fragment light with one code-1
  and one code-4, and outputs a thirteen-word packet with s, t, r as words 3 to 5. Patch: mark 2620
  takes end mark 2625.
- **`2630`** (routine; kernel record 2531), **established** selection, **inferred** arithmetic:
  fifty-seven records for the local fragment light with no vertex light (table record 20, +16 at
  0x0dae4c30 in `libGLcore.so`). It takes 2590's inputs plus 0.354 and 1.414 and computes the
  per-vertex fragment-light terms (five code-4, six code-5, three code-1, two each of 0xc, 2 and 3);
  it outputs them as words 6 to 8 beside the colour (0x1a32, words 1 and 2) and the coordinates. Mark
  2656 precedes the alternate loop entry 2661.
- **`2691`** (routine; kernel record 2592), **established** selection, **inferred** arithmetic: the
  per-vertex entry of table record 21 (at 0x0dae4c68 in `libGLcore.so`), record 20 with GL_NORMALIZE
  on; patch: mark 2722 takes end mark 2727. Inputs: 2590's plus -1.414 and 0.5. It normalises the
  normal (two code-1, four code-0xe) before the fragment-light terms and outputs 2590's packet,
  with two words from d2 0x21.
- **`2732`** (routine; kernel record 2633), **established** selection, **inferred** arithmetic: the
  second routine of table record 21 (its +16 word at 0x0dae4c78 in `libGLcore.so`), holding the 0x2c
  entry 2764, the last routine of the image (it ends at 2789). It takes 2691's inputs plus -0.707 and
  1.414 and computes the normalised fragment-light terms per further vertex (nine code-0xe, six
  code-5, four code-1); it outputs them as words 6 to 8 with the coordinates and colour.

#### Closing routines

`AddProgram` ends every per-vertex list with one closing entry (source lines 1147 to 1164).
For a table program it is the record's +28 word; otherwise it is chosen at source line 1159.
**established** (listing `ucode/disasm/buzz_xform.lst`): each is five records, an end mark 2 and
four delay slots, and they are not copies of the null routine 1221. The first delay slot is a
packet header (bit 8 of the low field set, `s0` the word count minus one, and format bits 6 to 1
that differ between closers); the second is a word record whose `s0` is that count and whose bit
10 marks the packet's last word; the last two are idle. **inferred:** the closer finishes the
vertex: it announces how many words the packet has and sends its last word, then ends the command.
Each closer's count is the packet length of the programs that carry it (below), which is why
`AddProgram` picks the closer by the same state that picks the program; the board does not need
to tell them apart by address.

- **`1153`** (routine; kernel record 1054), **established**: the closing entry of table records 0 and
  3 (+28 at 0x0dae469c and 0x0dae4774 in `libGLcore.so`), the two programs with neither texture nor
  clip planes. **inferred:** it sends a packet's header and last word: the header of a
  seven-word packet (record 1154, `s0` 6, format bits 0x14) and word 7 with the last-word bit (1155),
  the length routine 214 and program 1483 produce.
- **`1158`** (routine; kernel record 1059), **established**: a closer that no table record and
  no immediate in the 6.5.30m N32 libGLcore `ody_program.s` names. **inferred:** it sends a packet's header and last word: its delay slots send a nine-word header (1159, `s0` 8, format 0x58) and the last
  word 9 (1160); no program's header has that count with that format (563's nine-word header has
  format 0x4c).
- **`1163`** (routine; kernel record 1064), **established**: the closing entry of table record 2 only
  (+28 at 0x0dae472c in `libGLcore.so`), the one-sided, untextured fragment-lighting program.
  **inferred:** it sends a packet's header and last word: the header of a ten-word packet (1164, `s0` 9, format
  0x18) and word 10 (1165), the length of program 1313's packet.
- **`1168`** (routine; kernel record 1069), **established**: the closing entry of table record 5 only
  (+28 at 0x0dae4804 in `libGLcore.so`), the two-sided form of record 2. **inferred:** it sends a packet's header and last word: a fourteen-word header (1169, `s0` 13, format 0x1c) and
  word 14 (1170), matching program 1390's packet.
- **`1173`** (routine; kernel record 1074), **established**: the closing entry whenever the
  perspective-texture flag is set: `AddProgram` (`ody_program.s`) adds it at source line 1159 for a
  generic program and at line 1150 for a table program, where it also puts routines 1200 and 1211 in
  front of it. **inferred:** it sends a packet's header and last word: an
  eleven-word header (1174, `s0` 10, format 0x4e) and word 11 (1175), the length 1211 announces.
- **`1178`** (routine; kernel record 1079), **established**: the generic closing entry for one colour
  without separate specular or fragment lighting (`ody_program.s`, source line 1159, chosen when the
  two-colour flag is clear), and the +28 word of eleven table records. **inferred:** it sends a packet's header and last word: a ten-word header (1179, `s0` 9, format 0x16) and word 10 (1180),
  the packet of 243, 1216 and the one- and two-light table programs.
- **`1183`** (routine; kernel record 1084), **established**: the same closing entry for two colour
  outputs (`ody_program.s`, source line 1159); table records 7 and 13 carry it. **inferred:** it sends a packet's header and last word: a twelve-word header (1184, `s0` 11, format 0x5a)
  and word 12 (1185), the length of the two-colour programs 1752 and 1798.
- **`1188`** (routine; kernel record 1089), **established**: the closing entry when separate specular
  or fragment lighting is on, one-sided (`ody_program.s`, source line 1159). **inferred:** it sends a packet's header and last word: a thirteen-word header (1189, `s0` 12, format 0x1a) and word 13
  (1190), the packet of 1348, 2240 and 2300.
- **`1193`** (routine; kernel record 1094), **established**: the two-sided form of 1188, picked when
  the two-colour flag or the fragment model's two-sided byte (context +0x10000 + 26021) is set.
  **inferred:** it sends a packet's header and last word: a header (1194, `s0` 15, format 0x1e), equal to the
  header of 1433 (1448) and 2268 (2291), and a last word (1195) whose word field is 1 where the
  rule "last word = `s0` + 1" gives 16, which a four-bit field holds as 0; 1433 ends its packet the
  same way (1464); why is unknown. Its last-word record also carries
  colour operation 0x0009.

#### Unlit colour routines

- **`1198`** (routine; kernel record 1099), **established**: added with lighting off and no light
  (`ody_program.s`, source line 991). **inferred:** its first record takes the colour slot 5 into
  the colour unit and out as words 1 and 2 (code 0x1f22), so the unlit colour passes through
  unchanged; it then runs into 1200, which supplies the position products. Its input is that slot and its outputs are the two colour words; the colour unit copies the colour through unchanged.
- **`1200`** (routine; kernel record 1101), **established**: the tail of 1198 two records in, added
  by `AddProgram` (`ody_program.s`) before 1211 when a table program meets the perspective-texture
  flag (source line 1148). **inferred:** its inputs are the position slot and R0 to R4, and it
  computes the five position products (1200 to 1204) for 1211 or 1216 to output.
- **`1211`** (routine; kernel record 1112), **established**: the perspective-texture form of the
  colour finish, chosen in `ody_program.s` at source line 992 when the flag is set and at line 1149.
  **inferred:** it outputs the five position results with the perspective codes: w (0x33) as word 7,
  x (0x44) as word 9, y (0x24) as word 10, the clip z consumed and z as word 8, and writes a header
  for eleven words at 1214. Inputs: 1200's five products. It selects which word each one fills and outputs them under the perspective codes.
- **`1216`** (routine; kernel record 1117), **established**: the colour finish without the
  perspective-texture flag (`ody_program.s`, source line 992). **inferred:** it outputs the position
  results of 1200: 1/w (0x2b) as word 6, x/w (0x46) as word 8, y/w as word 9 and z/w as word 7
  (0x26), consumes the clip z, and writes a header for ten words at 1219. It takes 1200's five products as inputs and divides x, y and z by w (codes 0x46 and 0x26) for output.

#### Set-up routines

The second list of a program runs once when `__glOdysseySetProgram` selects it (above).

- **`515`** (routine; kernel record 515), **established**: the head of every program's set-up list,
  stored by `ody_program.s` at source lines 1179 and 1209. Its own record is an end mark.
  **inferred:** the work is in its four delay slots, which read data words 0x1e3 and 0x1e0 and
  produce 0.0 in R17's w lane and 1.0 in R16's, so each program starts with those two lanes set. It is a register set-up: those two lane writes are all it does. The two lanes are the constants a
  register read appends when its r2 field names R16 or R17: the read takes x to z from r1 and w from
  r2, so a three-component vector is dotted with w = 1 or w = 0 (`ucode/buzz_isa.md` pass 17).
- **`606`** (routine; kernel record 606), **established**: the set-up routine of every program built
  without the table (`ody_program.s`, source line 1180). **inferred:** its record and delay slots
  read the constant 0.0 (data word 0x1e3) three times and write it into the w lane of R13, R14 and
  R15, the normal-matrix rows, so the normal transform that follows ignores any fourth normal
  component. Its input is that constant and its output those three lanes: a register set-up.
- **`1226`** (routine; kernel record 1127), **established** selection, **inferred** arithmetic: the
  set-up routine of the ten table records whose first light is directional, 3, 6, 7 and 9 to 15
  (second list at record +52 in `libGLcore.so`, first at 0x0dae478c). It runs once per program
  selection, so it computes what is constant over the vertices. Inputs: words 0 to 5 of the first
  four light records (parameter words 0x000 to 0x035: each light's direction and negated half
  vector), shininess words 0x0f0, 0x0f7, 0x0f8 and 0x0f9, and colour addresses 24, 0, 3, 6 and 9.
  Outputs: the four light directions in R17, R19, R21 and R23 (lanes x to z); each light's half
  vector multiplied by word 0x0f0, one component per record through K and code 0xd (twelve times,
  records 1249 to 1260), in R18, R20, R22 and R24; word 0x0f8 in their w lanes; 0.0 in the w lanes of
  the normal-matrix rows R13 to R15; and in colour address 25 the sum of the light-model ambient
  (address 24) and the four lights' ambient colours (addresses 0, 3, 6 and 9; 0x1830, 0x0038 to
  0x0938, stored by 0x9908). Directional lights have no attenuation, so that ambient sum is
  the same for every vertex.
- **`1265`** (routine; kernel record 1166), **established** selection, **inferred** arithmetic: the
  second set-up routine, after 1226, of the two-colour table records 7, 13 and 15 (+56 at 0x0dae48b0
  for record 7, `libGLcore.so`). Inputs: words 0 to 5 of the first two light records and shininess
  words 0x0f7 and 0x0f9. It negates the two light directions with code 0xc into R21 and R23 and
  multiplies the half-vector components by word 0x0f7 through K and code 0xd into R22 and R24, with
  word 0x0f9 in their w lanes. Output: the back-face copies of the vectors 1226 prepared, which a
  two-sided program needs because the back face sees the negated normal. **inferred**, numeric run
  (`ucode/runs/two-sided-1752.json` through `490 515 1226 1265 1752.. 1771.. 1771..`,
  `scripts/buzz_ucode_dataflow.py --numeric`): with word 0x0f7 = -s' from 490, program 1752 dots
  the normal with R21 to give the back N.L and with R22 to give 8 + s' (1 + N.H), the back-face
  specular operand GL needs for the negated normal; both equal the GL values for the run's state
  (`ucode/buzz_isa.md` pass 15).
- **`1286`** (routine; kernel record 1187), **established** selection, **inferred** arithmetic: the
  second set-up routine, after 1226, of table record 12 (+56 at 0x0dae4a18 in `libGLcore.so`), the
  one that mixes vertex lights with a directional fragment light. It takes parameter words 0x080 to
  0x085, the fragment light's words, and the constant 3.0 as inputs and packs them without arithmetic:
  its outputs are R24 = (words 0x080 to 0x082, 3.0) and words 0x083 to 0x085 in the w lanes of R13
  to R15, where the vertex program finds the fragment light.
- **`1295`** (routine; kernel record 1196), **established** selection, **inferred** arithmetic: the
  set-up routine of the local-light table records 16 to 19 and 23 (+52 at 0x0dae4b34 for record 16,
  `libGLcore.so`). Inputs: the constants 0.0 and 1.0 and colour addresses 24 and 0. Outputs: 0.0 in
  the w lanes of R17 and of the normal-matrix rows R13 to R15, 1.0 in R16.w, and in colour address
  25 the light-model ambient plus light 0's ambient colour (0x1830, 0x0038, stored by 0x9908). A local
  light's direction and attenuation change per vertex, so unlike 1226 it prepares nothing else ahead.
- **`1304`** (routine; kernel record 1205), **established** selection, **inferred** arithmetic: the
  set-up routine of the four fragment-lighting table records with GL_LIGHTING off, 2, 4, 5 and 8
  (+52 at 0x0dae4744 for record 2, `libGLcore.so`). Its inputs are parameter words 0x080 to 0x086,
  the fragment light; its outputs are R18 = words 0x080 to 0x082 and 0x086 and words 0x083 to 0x085
  in the w lanes of R13 to R15. It packs those values into the registers without arithmetic.

#### Lighting finish routines

`AddProgram` closes the lighting of a program built without the table with one of these
(`ody_program.s`, source lines 942 to 992), after the per-light routines.

- **`975`** (routine; kernel record 876), **established** selection, **inferred** arithmetic: the RGBA
  finish when the light loop leaves its attenuation and spot flags clear, or no light is enabled, with
  one colour and no perspective-texture flag (`ody_program.s`, source lines 972 and 985). It issues
  no dot product. Inputs: the window-coordinate products in R23 (stored by 694 or 668), the
  reciprocal of clip w the output stage formed in the lighting core (d2 0x10) and the colour unit's
  working addresses. It passes
  R23.x, .y and .z through code 8 and outputs x as word 8 (d2 0x44), y as word 9 (0x24) and z as word
  7 (0x26), 1/w as word 6 (0x25, `ucode/buzz_isa.md`, pass 16), writes a header for ten words at 983, and in the
  colour unit adds the light-relative ambient product with slot 6 (0x4028) to the stored sums and
  sends the lit colour as words 1 and 2 (0x1a9a).
- **`986`** (routine; kernel record 887), **established** selection, **inferred** arithmetic: 975
  for the perspective-texture flag (`ody_program.s`, source lines 970 and 985). It takes 975's
  inputs and computes the same code-8 passes and colour sums; every coordinate output moves up by one, x to word 9, y to 10, z to 8
  and 1/w (0x25) to word 7, because the header at 994 announces eleven words.
- **`997`** (routine; kernel record 898), **established** selection, **inferred** arithmetic: the
  two-colour form of 975 (`ody_program.s`, source lines 972 and 985), sixteen records. Its inputs
  are 975's plus the back material slots 10 to 12. It outputs the
  coordinates as words 10, 11 and 9 and 1/w (0x25) as word 8, and computes the back face in
  the colour unit: the light-relative specular, diffuse and ambient colours times the back slots 12,
  11 and 10 (0x4220, 0x4120, 0x4020), with the front ambient again from slot 6 (0x4028). It sends the
  front colour as words 1 and 2 and the back colour as words 6 and 7 (0x193a, 0x4020 and 0x1d9a);
  its header at 1010 announces twelve words. One code 0xc and two code 3 operations scale the back
  terms.
- **`1013`** (routine; kernel record 914), **established** selection, **inferred** arithmetic: the
  one-colour finish when the light loop leaves its attenuation or spot flag set, and the
  colour-index finish (`ody_program.s`, source lines 967 and 951). Inputs: R23, the output
  stage's reciprocal of clip w and working addresses 25 and 26; its 0x25 at 1017 has no scalar
  result four records before it after 719, 734 or 768 (`ucode/buzz_isa.md`, pass 16). Outputs, over ten records: a header
  for ten words in its first record, R23's three lanes through code 8 to words 8, 9 and 7, 1/w as
  word 6 from code 0x25, and a colour unit that only reads working addresses 25 and 26 (0x9930, 0x9a38) and sends
  the sum as words 1 and 2 (0x1b3a); unlike 975 it adds no ambient product of its own.
- **`1035`** (routine; kernel record 936), **established** selection, **inferred** arithmetic: 1013
  with the perspective-texture flag (`ody_program.s`, source line 967). It takes 1013's inputs and
  computes the same sums; its header announces eleven words and its coordinate outputs land one word
  higher (x 9, y 10, z 8, code 0x25 word 7), while the colour reads and colour words are 1013's.
- **`1045`** (routine; kernel record 946), **established** selection, **inferred** arithmetic: the
  two-colour form of 1013 in both the RGBA and colour-index paths (`ody_program.s`, source lines 951
  and 967). It takes 1013's inputs and also reads working addresses 28 to 30, where the per-light
  routines accumulated the back colour; it combines them (0x1e30, 0x9c38, 0x9d38) and outputs that
  colour as words 6 and 7 (0x9c32), besides 1013's outputs (here x 10, y 11, z 9, code 0x25 word 8,
  header for twelve words).
- **`1023`** (routine; kernel record 924), **established** selection, **inferred** arithmetic: the
  one-colour finish with separate specular (`ody_program.s`, source line 958), added after 768.
  Inputs: R23 and working addresses 25 to 27. It selects the coordinates through code 8 and outputs
  them under a header for thirteen words (x 11, y 12, z 10, code 0x25 word 9) and
  three colour pairs: words 6 (0x1f34), 1 and 2 (0x000a, 0x1b30) and 7 and 8 (0x1a3a), the primary
  and the separate specular colour GL_SEPARATE_SPECULAR_COLOR keeps apart.
- **`1057`** (routine; kernel record 958), **established** selection, **inferred** arithmetic: the
  separate-specular finish with two colours (`ody_program.s`, source line 958). Inputs: R23, the
  output stage's 1/w and working addresses 26 to 30. It selects R23's lanes through code 8 and
  outputs them under a header for sixteen words; y lands in word 16 (record 1063: word field 0 with
  bit 16 set, the field's fifth bit, `ucode/buzz_isa.md`, pass 16). The colour unit
  reads working addresses 26 to 30 and sends colour words 1 and 2, 6, 7 and 8, 9 and 10, and 11 and
  12: front and back primary and specular colours for two-sided separate specular.
- **`758`** (routine; kernel record 758), **established** selection, **inferred** arithmetic: added
  between 768 and the separate-specular finish only while building program 1, the program
  `__glOdysseyValidateProgram` adds when software clip planes are on (`ody_program.s`, source lines
  956 and 1328). Its inputs are the specular slots; it is a colour-unit copy: it copies the specular slots 12
  and 8 into the colour unit (0x1f20), reads working addresses 28 and 25 and stores to 30 and 27, so
  its output is the specular material placed where the separate-specular finish reads it.
- **`792`** (routine; no kernel record), **established**: the attenuation-or-spot routine used when the
  environment variable `ODYSSEY_SPOT_INTERPOLATE` is set (the string at 0x0dae4d88, passed to `getenv` at
  source line 961). `AddProgram` then adds 792 and 780 instead of 768. It is the 95-record routine the
  kernel's older copy lacks, so the variable selects code that 6.5.30m added. **inferred** from a run after 656 and 694 (`scripts/buzz_ucode_dataflow.py`): its inputs are the registers 694 left (R18, R19), light word 14 and the constants 0.0, 1.0, -1.0, 1/32 (0x1ee), 131072 (0x1ec) and -32 (0x1ed). It fires one value x twice (797, 798), runs code 0xb on x and code 3 on x + 1/32, and subtracts the two results (825); it adds and subtracts 131072 to x (832, 840), which in single precision rounds x to a multiple of 1/64, and subtracts that from x to leave the remainder (848); code 5, just after K is loaded with -32 (853), turns the remainder into a weight, and the dot product at 860 adds the code-0xb result to the weight times the difference before code 4 (866). That is a linear interpolation between two samples 1/32 apart, which matches the variable's name. **inferred**, numeric run `ucode/runs/spot-interpolate-792.json` replayed from 796: the result equals the interpolation between two table entries exactly when codes 0xb and 3 read one table at the entry at or below their operands and the sum x + 131072 keeps 1/32 and rounds down; with IEEE single rounding the weight runs from -0.25 to 0.25 and the result leaves the interval (`ucode/buzz_isa.md`, pass 16). The colour unit then multiplies the light-relative specular, diffuse and ambient colours (0x4220, 0x4120, 0x4028, 0x4020) as 768 does, and the routine outputs no vertex word.

#### Fragment lighting routines

With GL_FRAGMENT_LIGHTING_SGIX on in RGBA mode and fragment light 0 enabled (bit 0 of
context word +0x10000 + 25724), `AddProgram` reads that light's record at +0x10000 + 25728 with the
vertex-light layout (w at +76, cutoff at +100, attenuation at +104 to +112; source lines 888 to 897)
and adds its routines at source lines 902 to 942. With no vertex light it first adds a first-light
routine (611 to 656) and a normal transform (694 or 668); otherwise 768 or 920.

- **`911`** (routine; kernel record 812), **established** selection, **inferred** arithmetic: added
  with GL_LIGHTING on and one colour output (`ody_program.s`, source line 921). Nine records. Inputs:
  the constant 3.0 (word 0x1e5), R26 and working address 27. It computes one product of R26, reads working address 27
  (0x1b38) and sends the colour unit's result twice, as words 1 and 2 (0x9f3a, which also stores at 31)
  and as words 9 and 10 (0x000a). It does no scalar work; its output is the colour pair the
  fragment-lighting packet carries in both places.
- **`902`** (routine; kernel record 803), **established** selection, **inferred** arithmetic: the
  two-colour choice at the same `ody_program.s` line, when two-sided lighting is on (context byte
  +1413). Its inputs are 911's and it computes the same product of R26, but its third and fourth records store
  the colour at address 31 (0x9f30) before sending, so it outputs the front colour goes out as words 9 and 10
  and the back colour as words 1 and 2, each through 0x9f3a.
- **`1094`** (routine; kernel record 995), **established** selection, **inferred** arithmetic: added
  when the fragment light is local and attenuated (`ody_program.s`, source line 926). Inputs: light
  word 7 of the fragment light's record (constant attenuation), the constant 3.0 and the products
  the routine before left; it latches R21 and R26, multiplies two values by K (code 0xd), passes one
  through code 8 and loads K once more (d2 0x80). It outputs no word and uses no colour operation;
  its results stay in R21 and R22 for 1119, the routine `AddProgram` puts last in this case.
- **`1071`** (routine; kernel record 972), **established** selection, **inferred** arithmetic: always
  added for the fragment light (`ody_program.s`, source line 928), twenty-three records. Inputs: the
  normal products (passed through code 8 into R19, records 1072 to 1082), the light and viewer
  vectors of R17 and R26 (each lane negated by code 0xc), light words 13 and 14 (cutoff, exponent)
  and the constants 2.828, 1.414, -1.414, 0.354 and -1.0. It computes two reciprocal square roots
  and one code-2 result, loads K = 0.354 (d2 0x80 at 1090) and fires products of R16, R20 and R19.
  Its outputs are registers, not words: R18 to R22 receive the normal, light and viewer terms
  of the fragment light, and code 0x23 at 1077 hands one product to the output stage.
- **`1136`** (routine; kernel record 1037), **established** selection, **inferred** arithmetic: the
  last fragment-lighting routine when either two-sided flag is set (`ody_program.s`, source line 942:
  GL two-sided lighting or the fragment model's two-sided byte). Inputs: R23, 1071's terms and the
  colour slots. It outputs the vertex: x, y and z
  through code 8 as words 15, 16 (field 0 with bit 16 set, record 1138) and 14 with d2 0x44, 0x24 and 0x26, word 13 through 0x25,
  and the colour unit's copies of the slot values (0x1f14, 0x1f16, 0x1f96) as words 6, 7, 8, 11 and
  12, under a header for sixteen words. Four code-0xd, two code-5 and one code-0xe operation compute
  from 1071's terms the fragment-light values sent with them.
- **`1106`** (routine; kernel record 1007), **established** selection, **inferred** arithmetic: the
  one-sided last routine when the fragment light is not attenuated (`ody_program.s`, source line
  942). Inputs: R20 and R23 and the colour slots. It latches R20, computes two code-0xd, one code-5, one code-3 and one code-8 operation, and
  outputs a thirteen-word packet: a header, x, y and z as words 11, 12 and 10
  (0x44, 0x24, 0x26), word 9 through 0x25, and colour words 6, 7 and 8 (0x1f96, 0x1f16, 0x1f14).
- **`1119`** (routine; kernel record 1020), **established** selection, **inferred** arithmetic: the
  one-sided last routine when the fragment light is local and attenuated (`ody_program.s`, source
  line 942), after 1094, and takes 1106's inputs plus 1094's registers. Its output packet is 1106's (words 6 to 12, header for thirteen words); the
  difference is that it computes one more code-0xe multiply on the way to the colour words.

#### Routines no host code selects

Searched for each number below, in every N32 `usr/gfx/arch/IP30ODSY/libGLcore.so` from IRIX
6.5.8 to 6.5.29 and on the Octane2 VPro Patches disc (extracted with `instigator extract`), and
in the 6.5.30m X module and kernel objects: as an `li` or `ori` immediate, as a sequencer word of
registers 0x20 to 0x3f, and in the program table of each release. None names them. All six sit
at the same record numbers in every shipped image from 6.5.8 on, so no release's numbering hides
them. Routine 303, the copy routine, is the only entry in this stretch any host code selects.

- **`605`** (routine; file offset 0x1c5c of `buzz_xform.bin`), **established**: a single idle record, the
  fifth slot after end mark 600, that runs straight into entry 606 (sequencer list entry named by
  `AddProgram`). **inferred:** it is the alignment gap before 606, not a routine of its own;
  entering at 605 would cost one idle cycle and then run 606. It is an idle record: a null step that only delays 606 by one cycle.
- **`278`** (routine; file offset 0xd08 of `buzz_xform.bin`; records 278 to 302 identical in the kernel copy), **inferred**: a parameter-memory dump that no host code in any release searched selects.
  **established** from the fields: it reads parameter words `ma` 0x140 to 0x14f in records 278 to 293 and 0x1f5 and 0x1f6 in 294 and 295,
  one a record; from 279 to 296 each record is a lane-mode read of R16 (`a` 1, `r2` 0x10, `r1` alternating 0 and 1), and port P writes R16 (`rb` 0x10, `b` 0) lane x in 280, 282 and every even record to 296 and lane y in the odd records 281 to 297 (`ln` 4 and 5),
  from the word read two records before. Scalar code 8 (`d1` 8) is set in 280 to 297. The output word field counts 0 to 11 in 286 to 297 (`s1` 0x80, no `d2` code, no header record), then 12 at 298 (the end mark 2, `s1` 0x80), 13 and 14 at 299 and 300
  (which also carry port V writes of R16, `mc` 0x20, `bx` 4 and 5, `b` 1), 15 at 301 and word field 0 with colour bit 0 set (0x0009) and the last-word bit at 302: that is word 16, so the routine names seventeen words, 0 to 16 (`ucode/buzz_isa.md`, pass 16).
  The delay slots are 299 to 302. No record sets `ln` 6 or 7, `d0`, `mc` store flags or the colour operation other than 302's.
  **inferred** that it is a parameter dump, by the pass 13 rules: the output stage takes the scalar result four records before each word record, so word k of 0 to 15 (records 286 to 301) takes the code 8 result at 282 + k, which is parameter word 0x140 + k read at 278 + k, and passes it unchanged;
  word 16 (302) has no scalar result four records before, and parameter words 0x1f5 and 0x1f6, read at 294 and 295, reach R16 but no later record reads them. The stream carries no `d2` code, so the pairing of word and parameter rests on that timing rule alone.
  It computes nothing, and no host code selects it (the search above) or writes parameter words 0x140 to 0x14f.
- **`525`** (routine; file offset 0x189c of `buzz_xform.bin`), **inferred**: a complete
  single-vertex program for position only, which no host code selects (search above). Its inputs are
  the position slot and R0 to R4. It computes the five products of routine 214 (525 to 529), writes
  a header for five words (4 at 531) and outputs 1/w (0x2b) as word 1, x/w (0x46) as word 3, y/w as
  word 4 and z/w as word 2 (0x26), consumes the clip z (0x08) and ends with word 5.
- **`542`** (routine; file offset 0x1968 of `buzz_xform.bin`), **inferred**: 525 with a texture
  coordinate. Inputs: the position slot, the texture slot 3 (loaded at 547), R0 to R8. It computes
  the position products and the texture-matrix products q, s, t, r, writes a header for eight words
  (7 at 548) and outputs 1/w as word 4, x/w, y/w and z/w as words 6, 7 and 5, consumes q (0x08) and
  outputs s, t and r multiplied by 1/w as words 1 to 3, closing with word 8.
- **`563`** (routine; file offset 0x1a64 of `buzz_xform.bin`), **inferred**: 542's inputs and
  products under the perspective-texture codes. Its header (8 at 569) announces nine words; the w
  result takes code 0x33 as word 5, x 0x44 as word 7, y 0x24 as word 8, z 0x26 as word 6, and q is
  output too, with code 0x2c, as word 4; s, t and r (0x26) are words 1 to 3 and word 9 closes. It takes the position and texture slots as inputs and computes the same nine dot products as 542.
- **`584`** (routine; file offset 0x1b60 of `buzz_xform.bin`), **inferred**: the textured, coloured
  form of 563. It takes the colour slot 5 through the colour unit (code 0x1f22 at 591) as words 1
  and 2, so its header (10 at 590) announces eleven words: s, t, r as words 3 to 5, q (0x2c) as word
  6, w (0x33) as word 7, z as word 8, x (0x44) as word 9, y (0x24) as word 10 and the closing word 11. Its inputs are the position, texture and colour slots; it computes 563's products and selects the colour unchanged, and those words are its output.

## Routines

| Entry | End mark | Records | Kernel record | In list | Idle | Data addresses | Lanes | Value-3 marks | Same shape as |
|---|---:|---:|---:|---|---:|---|---|---:|---|
| 0 | 7 | 8 | 0 | no | 0 | 0x120-0x127 | 4,5,6,7 | 0 | - |
| 12 | 21 | 10 | 12 | yes | 5 | - | 6,7 | 0 | - |
| 26 | 35 | 10 | 26 | yes | 5 | - | - | 0 | - |
| 40 | 46 | 7 | 40 | yes | 5 | - | - | 0 | - |
| 51 | 72 | 22 | 51 | yes | 0 | 0x100-0x1e3 | 4,5,6,7 | 0 | - |
| 77 | 77 | 1 | 77 | yes | 0 | - | - | 0 | 82, 87, 92, 97, 102 |
| 82 | 82 | 1 | 82 | yes | 0 | - | - | 0 | 77, 87, 92, 97, 102 |
| 87 | 87 | 1 | 87 | yes | 0 | - | - | 0 | 77, 82, 92, 97, 102 |
| 92 | 92 | 1 | 92 | yes | 0 | - | - | 0 | 77, 82, 87, 97, 102 |
| 97 | 97 | 1 | 97 | yes | 0 | - | - | 0 | 77, 82, 87, 92, 102 |
| 102 | 102 | 1 | 102 | yes | 0 | - | - | 0 | 77, 82, 87, 92, 97 |
| 107 | 114 | 8 | 107 | yes | 1 | - | - | 0 | - |
| 108 | 114 | 7 | 108 | yes | 1 | - | - | 0 | - |
| 119 | 140 | 22 | 119 | yes | 0 | 0x1e3-0x1e3 | 7 | 0 | - |
| 123 | 140 | 18 | 123 | yes | 0 | 0x1e3-0x1e3 | 7 | 0 | - |
| 127 | 140 | 14 | 127 | yes | 0 | 0x1e3-0x1e3 | 7 | 0 | - |
| 145 | 209 | 65 | 145 | yes | 6 | 0x1e0-0x1e8 | 4,5,6,7 | 0 | - |
| 159 | 209 | 51 | 159 | yes | 6 | 0x1e0-0x1e8 | 4,5,6,7 | 0 | - |
| 214 | 238 | 25 | 214 | no | 6 | - | - | 2 | - |
| 243 | 255 | 13 | 243 | no | 1 | - | - | 1 | - |
| 260 | 273 | 14 | 260 | no | 0 | - | - | 1 | - |
| 278 | 298 | 21 | 278 | no | 0 | 0x140-0x1f6 | 4,5 | 0 | - |
| 303 | 319 | 17 | 303 | no | 0 | - | - | 0 | - |
| 324 | 355 | 32 | 324 | no | 0 | - | - | 0 | - |
| 360 | 405 | 46 | 360 | no | 0 | 0x1e3-0x1e3 | - | 0 | - |
| 410 | 413 | 4 | 410 | yes | 2 | - | - | 0 | - |
| 418 | 438 | 21 | 418 | no | 0 | 0x200-0x20b | - | 0 | - |
| 443 | 451 | 9 | 443 | no | 2 | - | - | 0 | - |
| 456 | 474 | 19 | 456 | no | 0 | - | - | 0 | - |
| 479 | 485 | 7 | 479 | no | 2 | - | - | 0 | - |
| 490 | 510 | 21 | 490 | no | 1 | 0xf0-0x1ea | 4,5,6 | 0 | - |
| 515 | 515 | 1 | 515 | yes | 0 | - | - | 0 | 606 |
| 520 | 520 | 1 | 520 | no | 0 | - | - | 0 | 1153, 1158, 1163, 1168, 1173, 1178 ... |
| 525 | 537 | 13 | 525 | no | 4 | - | - | 0 | - |
| 542 | 558 | 17 | 542 | no | 1 | - | - | 0 | - |
| 563 | 579 | 17 | 563 | no | 1 | - | - | 0 | - |
| 584 | 600 | 17 | 584 | no | 1 | - | - | 0 | - |
| 605 | 606 | 2 | 605 | no | 1 | 0x1e3-0x1e3 | - | 0 | - |
| 606 | 606 | 1 | 606 | yes | 0 | 0x1e3-0x1e3 | - | 0 | 515 |
| 611 | 621 | 11 | 611 | yes | 0 | 0x1e2-0x209 | 4,5,6,7 | 0 | - |
| 626 | 636 | 11 | 626 | yes | 0 | 0x1e2-0x209 | 4,5,6,7 | 0 | - |
| 641 | 651 | 11 | 641 | yes | 0 | 0x1f4-0x209 | 7 | 0 | - |
| 656 | 663 | 8 | 656 | yes | 0 | 0x1e3-0x209 | 7 | 0 | - |
| 668 | 689 | 22 | 668 | no | 0 | 0x1e0-0x20d | 4,5,6,7 | 0 | - |
| 694 | 714 | 21 | 694 | yes | 0 | 0x1e0-0x20d | 4,5,6,7 | 0 | - |
| 719 | 729 | 11 | 719 | yes | 0 | 0xf0-0x20e | 4,5,6 | 0 | - |
| 734 | 753 | 20 | 734 | yes | 0 | 0xf0-0x20e | 4,5,6 | 0 | - |
| 758 | 763 | 6 | 758 | yes | 3 | - | - | 0 | - |
| 768 | 787 | 20 | 768 | yes | 0 | 0x1e0-0x20e | 4,5,6 | 0 | - |
| 779 | 787 | 9 | 779 | yes | 0 | 0x1e0-0x20b | 4,5,6 | 0 | - |
| 792 | 886 | 95 | none | no | 22 | 0x1e0-0x20e | 4,5,6,7 | 0 | - |
| 891 | 897 | 7 | 792 | yes | 0 | 0x20e-0x20e | 4,5,6 | 0 | - |
| 902 | 906 | 5 | 803 | yes | 1 | - | - | 0 | - |
| 911 | 915 | 5 | 812 | yes | 2 | - | - | 0 | - |
| 920 | 959 | 40 | 821 | yes | 0 | 0x1e0-0x20e | 4,5,6,7 | 0 | - |
| 931 | 959 | 29 | 832 | yes | 0 | 0x1e0-0x20b | 4,5,7 | 0 | - |
| 964 | 970 | 7 | 865 | yes | 0 | 0x20e-0x20e | 4,5,6 | 0 | - |
| 975 | 981 | 7 | 876 | yes | 0 | - | - | 0 | - |
| 986 | 992 | 7 | 887 | yes | 0 | - | - | 0 | - |
| 997 | 1008 | 12 | 898 | yes | 0 | - | 4,6 | 0 | - |
| 1013 | 1018 | 6 | 914 | yes | 0 | - | - | 0 | - |
| 1023 | 1030 | 8 | 924 | yes | 0 | - | - | 0 | - |
| 1035 | 1040 | 6 | 936 | yes | 0 | - | - | 0 | - |
| 1045 | 1052 | 8 | 946 | yes | 0 | - | - | 0 | - |
| 1057 | 1066 | 10 | 958 | yes | 0 | - | - | 0 | - |
| 1071 | 1089 | 19 | 972 | yes | 0 | 0x1e4-0x20e | 4,5,6,7 | 0 | - |
| 1094 | 1101 | 8 | 995 | yes | 0 | 0x207-0x207 | 4,5,6 | 0 | - |
| 1106 | 1114 | 9 | 1007 | no | 0 | - | 4 | 0 | - |
| 1119 | 1131 | 13 | 1020 | no | 0 | - | 4 | 0 | - |
| 1136 | 1148 | 13 | 1037 | yes | 0 | - | 4 | 0 | - |
| 1153 | 1153 | 1 | 1054 | no | 0 | - | - | 0 | 520, 1158, 1163, 1168, 1173, 1178 ... |
| 1158 | 1158 | 1 | 1059 | no | 0 | - | - | 0 | 520, 1153, 1163, 1168, 1173, 1178 ... |
| 1163 | 1163 | 1 | 1064 | no | 0 | - | - | 0 | 520, 1153, 1158, 1168, 1173, 1178 ... |
| 1168 | 1168 | 1 | 1069 | no | 0 | - | - | 0 | 520, 1153, 1158, 1163, 1173, 1178 ... |
| 1173 | 1173 | 1 | 1074 | yes | 0 | - | - | 0 | 520, 1153, 1158, 1163, 1168, 1178 ... |
| 1178 | 1178 | 1 | 1079 | no | 0 | - | - | 0 | 520, 1153, 1158, 1163, 1168, 1173 ... |
| 1183 | 1183 | 1 | 1084 | no | 0 | - | - | 0 | 520, 1153, 1158, 1163, 1168, 1173 ... |
| 1188 | 1188 | 1 | 1089 | no | 0 | - | - | 0 | 520, 1153, 1158, 1163, 1168, 1173 ... |
| 1193 | 1193 | 1 | 1094 | no | 0 | - | - | 0 | 520, 1153, 1158, 1163, 1168, 1173 ... |
| 1198 | 1206 | 9 | 1099 | yes | 0 | - | - | 0 | - |
| 1200 | 1206 | 7 | 1101 | yes | 0 | - | - | 0 | - |
| 1211 | 1211 | 1 | 1112 | yes | 0 | - | - | 0 | - |
| 1216 | 1216 | 1 | 1117 | yes | 0 | - | - | 0 | - |
| 1221 | 1221 | 1 | 1122 | no | 0 | - | - | 0 | 520, 1153, 1158, 1163, 1168, 1173 ... |
| 1226 | 1260 | 35 | 1127 | no | 0 | 0x1-0x1e3 | 4,5,6,7 | 0 | - |
| 1265 | 1281 | 17 | 1166 | no | 0 | 0x1-0xf9 | 4,5,6,7 | 0 | - |
| 1286 | 1290 | 5 | 1187 | no | 0 | 0x80-0x1e5 | 4,5,7 | 0 | - |
| 1295 | 1299 | 5 | 1196 | no | 0 | 0x1e0-0x1e3 | 7 | 0 | - |
| 1304 | 1308 | 5 | 1205 | no | 0 | 0x80-0x85 | 7 | 0 | - |
| 1313 | 1343 | 31 | 1214 | no | 0 | 0x1e1-0x1e1 | - | 1 | - |
| 1348 | 1363 | 16 | 1249 | no | 0 | 0x1e1-0x1e1 | - | 1 | - |
| 1368 | 1385 | 18 | 1269 | no | 0 | - | - | 1 | - |
| 1390 | 1428 | 39 | 1291 | no | 0 | 0x1e1-0x1eb | 7 | 2 | - |
| 1433 | 1452 | 20 | 1334 | no | 0 | 0x1e1-0x1eb | 7 | 1 | - |
| 1457 | 1478 | 22 | 1358 | no | 0 | 0x1e1-0x1eb | 7 | 1 | - |
| 1483 | 1515 | 33 | 1384 | no | 0 | - | - | 2 | - |
| 1520 | 1540 | 21 | 1421 | no | 0 | 0x1e0-0x1e3 | 4,5,6 | 1 | - |
| 1545 | 1575 | 31 | 1446 | no | 0 | 0x1e0-0x1e3 | 4,5,6 | 1 | - |
| 1580 | 1596 | 17 | 1481 | no | 0 | - | - | 1 | - |
| 1601 | 1618 | 18 | 1502 | no | 0 | - | - | 1 | - |
| 1623 | 1645 | 23 | 1524 | no | 0 | 0x1e0-0x1e3 | 4,5,6 | 1 | - |
| 1650 | 1684 | 35 | 1551 | no | 0 | 0x1e0-0x1e3 | 4,5,6 | 1 | - |
| 1689 | 1715 | 27 | 1590 | no | 0 | - | - | 1 | - |
| 1720 | 1747 | 28 | 1621 | no | 0 | - | - | 1 | - |
| 1752 | 1770 | 19 | 1653 | no | 0 | - | - | 1 | - |
| 1775 | 1793 | 19 | 1676 | no | 0 | - | - | 1 | - |
| 1798 | 1823 | 26 | 1699 | no | 0 | - | - | 1 | - |
| 1828 | 1857 | 30 | 1729 | no | 0 | - | - | 1 | - |
| 1862 | 1895 | 34 | 1763 | no | 0 | 0x1-0x1e3 | 4,5,6,7 | 1 | - |
| 1900 | 1950 | 51 | 1801 | no | 0 | 0x1-0x1e3 | 4,5,6,7 | 1 | - |
| 1955 | 1989 | 35 | 1856 | no | 0 | 0x1-0x1e3 | 4,5,6,7 | 1 | - |
| 1994 | 2045 | 52 | 1895 | no | 0 | 0x1-0x1e3 | 4,5,6,7 | 1 | - |
| 2050 | 2084 | 35 | 1951 | no | 0 | 0x1-0x1e3 | 4,5,6,7 | 1 | - |
| 2089 | 2140 | 52 | 1990 | no | 0 | 0x1-0x1e3 | 4,5,6,7 | 1 | - |
| 2145 | 2179 | 35 | 2046 | no | 0 | 0x1-0x1e3 | 4,5,6,7 | 1 | - |
| 2184 | 2235 | 52 | 2085 | no | 0 | 0x1-0x1e3 | 4,5,6,7 | 1 | - |
| 2240 | 2263 | 24 | 2141 | no | 0 | - | - | 0 | - |
| 2268 | 2295 | 28 | 2169 | no | 0 | - | - | 0 | - |
| 2300 | 2327 | 28 | 2201 | no | 0 | 0x1e1-0x1e1 | - | 1 | - |
| 2332 | 2360 | 29 | 2233 | no | 0 | 0x1e1-0x1e1 | - | 1 | - |
| 2365 | 2403 | 39 | 2266 | no | 1 | 0x1-0x1e3 | 4,5,6,7 | 1 | - |
| 2408 | 2471 | 64 | 2309 | no | 0 | 0x1-0x1e3 | 4,5,6,7 | 1 | - |
| 2476 | 2515 | 40 | 2377 | no | 0 | 0x1-0x1e3 | 4,5,6,7 | 1 | - |
| 2520 | 2585 | 66 | 2421 | no | 3 | 0x1-0x1e3 | 4,5,6,7 | 1 | - |
| 2590 | 2625 | 36 | 2491 | no | 1 | 0x80-0x1e5 | 4,5,6,7 | 1 | - |
| 2630 | 2686 | 57 | 2531 | no | 0 | 0x80-0x1e7 | 4,5,6,7 | 1 | - |
| 2691 | 2727 | 37 | 2592 | no | 1 | 0x80-0x1e9 | 4,5,6,7 | 1 | - |
| 2732 | 2789 | 58 | 2633 | no | 0 | 0x80-0x1ea | 4,5,6,7 | 1 | - |
