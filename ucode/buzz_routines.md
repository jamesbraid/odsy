# BUZZ microcode: routine map

Release IRIX 6.5.30m. Every row is **established** from the records of `ucode/ODSY/buzz_xform.bin` (listing `ucode/disasm/buzz_xform.lst`, field split in `ucode/buzz_isa.md`); nothing here names an operation. The table is written by `scripts/buzz_routine_table.py`.

A routine is the run of records from its entry to the next record whose bits 1:0 are 1 or 2 (the end mark; `ucode/buzz_isa.md`, "Sequencing bits 1:0"). An entry is record 0, a record named in libGLcore's `AddProgram` list or by the lighting loader, or the record five after an end mark. Where two entries share an end mark (107 and 108, 119, 123 and 127, 145 and 159), the later entry is a tail of the earlier routine.

Columns:

- **Entry**, **End mark**, **Records**: the entry record, the record carrying the mark, and the routine's length including that record.
- **Kernel record**: the same routine's record number in the kernel's older copy (`buzz_ucode`, `ucode/buzz_ucode.md`). Records from 891 on sit 99 lower there; routines 792 to 890 are the 99 records the kernel copy lacks (`none`).
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

- **Routine 418** (kernel record 418), **established**: the sixteen-word store of opcode 0x1a2.
  It reads operands 0 to 15 (`r3` 0x10 to 0x1f, records 418 to 433) and pairs them with
  `ma` 0x200 to 0x20f in lanes 4 and 5, so it writes the sixteen words to the data table at
  the index the host put in sequencer 0x31 (`odsyRestoreXform` in `odsy_ctxsw.o`, `ody_context.s`).
- **Routine 443** (kernel record 443), **established**: the four-word store of opcode 0x1bb.
  It reads operands 0 to 3 (records 443 to 446) and writes them to the data table at the
  sequencer 0x31 index; libGLcore sends texture-generation planes and lighting constants this
  way (`updateTexGenCoord` in `ody_texgen.s`, `__glOdysseyInitLighting` in `ody_lighting.s`).
- **Routine 456** (kernel record 456), **established**: the sixteen-word store of opcode 0x1c8.
  It reads operands 0 to 15 (records 456 to 471) into the matrix table at the sequencer 0x34
  index; libGLcore sends every matrix through it (`ody_xform.s`, the four validators).
- **Routine 479** (kernel record 479), **established**: the four-word store of opcode 0x1df.
  It reads operands 0 to 3 (records 479 to 482) into the matrix table at the sequencer 0x34
  index; libGLcore uses it for the four words at index 16 after the combined matrix (`ody_xform.s`).
- **Routine 490** (kernel record 490), **established**: the handler of opcode 0x1ea, sent only
  by the kernel's context restore with operand 0 of two attribute slots and each with bit 31
  flipped (`odsyRestoreVB`, `odsy_ctxsw.o`). It reads operands 0 to 3 and data words
  0x1e3, 0x1e4 and 0x1ea and writes lanes 4 to 6 of `rb` 0x1a. **inferred:** it rebuilds
  board state from the saved pair rather than storing the words as they are.
- **Routine 303** (kernel record 303), **established**: the pixel rectangle command of
  opcode 0x12f, ten operands. Every image draw and copy selects it: libGLcore's pixel copy and
  move paths (`ody_image_move.s`) and the X module's `odsyDrawImagePIO` and `odsyCopySDRAM`
  set sequencer 0x29 to 303, send the latched `0xcf80a92f` command and a vertex word, then put
  the previous sequencer 0x29 value back. The kernel sends the same word in
  `gfP_OdsyClearBuffer` (`odsy_clip.o`) and `odsyDMAOps` (`odsy_dma.o`).
  It reads operands 0 to 5 and slot 15 (the last four operands) in records 303 to 312.
- **Routine 324** (kernel record 324), **established**: the clear and stipple rectangle command
  of opcode 0x144, ten operands, sent as `0x8f80a944` by `__glOdysseyClear` (`ody_clear.s`)
  between a begin word with primitive 7 and an end word, and by `LoadAndSendStippledQuads`
  (`ody_bitmap.s`). It reads operands 0 to 5 and slot 15, the same layout as routine 303.
- **Routine 360** (kernel record 360), **established**: the textured rectangle command of
  opcode 0x168, fourteen operands, sent as `0xcf80b968` by the texture paths:
  `DownsampleTextureThruHW` (`ody_texture.s`) and `__glOdysseyImageMovePixelsTexture`
  (`ody_image_move.s`). It reads operands 0 to 9 and slot 15, and is the only one of the three
  rectangle routines that reads the data table (`ma` 0x1e3).
- **Routine 410** (kernel record 410), **established**: the data-table load. The kernel sets
  sequencer 0x29 to 410 and sequencer 0x32 to a slot number, then sends `0x8e809015` with four
  floats (`odsyRestoreXform`, `odsy_ctxsw.o`); libGLcore's lighting does the same
  (`ody_lighting.s`). Its first record reads slot 14, the slot that word fills, and the
  next three are idle up to the end mark at 413, so it moves one four-float vector per word.
- **Routine 1221** (kernel record 1122), **established**: the null routine. Its only record is
  the end mark with every other field at the idle value, followed by four idle records.
  `AddProgram` (`ody_program.s`, source lines 1172 to 1192) puts it in sequencers 0x2a and 0x2c
  and at the end of every program list, and the 4103 patch's libGLcore uses 1122 for the same
  purpose against its older program.
- **Routine 520** (kernel record 520), **established**: a second copy of the null routine,
  bit for bit the same as record 1221 and its delay slots (`buzz_xform.bin`).
- **Routine 214** (kernel record 214), **established**: the per-vertex routine of the kernel's
  built-in program. The 4165-word start-up stream `buzz_init` that `odsy_tpinit`
  (`odsy_tport.o`) replays sets sequencer 0x29 to 214, 0x2a to 224 and 0x2c to 234, and the
  textport then draws with vertex words such as `0x8080c800` (two integer coordinates).
  No record from 214 to 242 has a data address, so this program applies no matrix: the
  Records 224 and 234 sit five after the value-3 marks at 219 and 229, so a value-3 mark ends
  a part that a register names, the way values 1 and 2 end a routine.
- **Routine 51** (kernel record 51), **inferred**: texture generation from planes, the routine
  `AddProgram` adds when any of S, T, R or Q uses an eye-linear or object-linear mode
  (`ody_program.s`, source line 1097). It reads data words 0x100 to 0x10f, the four planes,
  in lanes 4 to 7, so it forms the four plane dot products of the vertex.
- **Routine 77** (kernel record 77), **inferred**: finishes S for a linear mode (`ody_program.s`,
  source line 1106). Its record has `r1` 0x11 (the S bit) and `r2` 0x1a (linear).
- **Routine 82** (kernel record 82), **inferred**: finishes S for the sphere map (`ody_program.s`,
  source line 1109). Its record has `r1` 0x11 (the S bit) and `r2` 0x1d (sphere map).
- **Routine 87** (kernel record 87), **inferred**: finishes T for a linear mode (`ody_program.s`,
  source line 1112). Its record has `r1` 0x12 (the T bit) and `r2` 0x1a (linear).
- **Routine 92** (kernel record 92), **inferred**: finishes T for the sphere map (`ody_program.s`,
  source line 1115). Its record has `r1` 0x12 (the T bit) and `r2` 0x1d (sphere map).
- **Routine 97** (kernel record 97), **inferred**: finishes R for a linear mode (`ody_program.s`,
  source line 1118); the sphere map is not allowed for R. Its record has `r1` 20, that is 16 plus the R bit.
- **Routine 102** (kernel record 102), **inferred**: finishes Q for a linear mode (`ody_program.s`,
  source line 1121); the sphere map is not allowed for Q. Its record has `r1` 24, that is 16 plus the Q bit.
- **Routine 108** (kernel record 108), **inferred**: the common tail of texture generation,
  added after the per-coordinate routines in every texgen program (`ody_program.s`, line 1126).
- **Routine 107** (kernel record 107), **inferred**: the S-and-T-linear case. When S and T are
  both linear and neither uses the sphere map, `AddProgram` (`ody_program.s`, line 1104) adds
  107 instead of the per-coordinate routines and 108; it is one record put in front of 108.
- **Routine 145** (kernel record 145), **inferred**: the sphere-map set-up when GL_NORMALIZE
  is off (`AddProgram`, `ody_program.s`, line 1093; bit 22 of the enables word at context
  +1792 is GL_NORMALIZE in `__glim_IsEnabled`, `so_attrib.s`). It reads data words 0x1e0
  to 0x1e8 in lanes 4 to 7.
- **Routine 127** (kernel record 127), **inferred**: the sphere-map set-up when GL_NORMALIZE
  is on (`AddProgram`, `ody_program.s`, line 1090). The list gets 127 and then 159, so the
  first fourteen records of routine 145 are replaced by the tail of routine 119.
- **Routine 159** (kernel record 159), **inferred**: the second part of the sphere-map routine,
  shared by both normalize settings (`ody_program.s`, line 1091): routine 145 runs into it.
- **Routine 119** (kernel record 119), **inferred**: the texture coordinate output of a texgen
  program when the context's perspective flag is clear (`AddProgram`, line 1129); 123 is used
  when it is set. `__glOdysseyUpdateTransform` (`ody_xform.s`, line 368) sets the flag when any
  of projection elements 3, 7 or 11 is nonzero, that is for a perspective projection.
- **Routine 123** (kernel record 123), **inferred**: the same output for a perspective
  projection (`ody_program.s`, line 1129); it is routine 119 without its first four records.

### Lighting routines

`AddProgram` (`ody_program.s`, source lines 838 to 876) walks the enabled lights (mask at
context +1800, records of 116 bytes from the pointer at +1584). A light is local when its
position w (record +76) is nonzero and attenuated when it is local and its constant, linear and
quadratic factors (+104, +108, +112) are not 1, 0 and 0. A spot cutoff (+100) other than 180
sets a bit in the program key and adds no routine.

- **Routine 611** (kernel record 611), **inferred**: lighting for the first enabled light when
  it is local and GL_LIGHT_MODEL_LOCAL_VIEWER is on (`ody_program.s`, line 865;
  context byte +1412, set by `__glim_LightModelfv` in `so_attrib.s`).
- **Routine 626** (kernel record 626), **inferred**: lighting for the first enabled light when
  it is local and the viewer is at infinity (`ody_program.s`, line 865). It has the same length
  and data range as routine 611.
- **Routine 641** (kernel record 641), **inferred**: lighting for the first enabled light when
  it is directional and the viewer is local (`ody_program.s`, line 865); lane 7 only.
- **Routine 656** (kernel record 656), **inferred**: lighting for the first enabled light when
  it is directional and the viewer is at infinity (`ody_program.s`, line 865), the shortest of the four.
- **Routine 694** (kernel record 694), **inferred**: the normal transform, added with the first
  light (`ody_program.s`, line 871) when GL_NORMALIZE is off; it reads data words 0x1e0 to
  0x20d in lanes 4 to 7.
- **Routine 668** (kernel record 668), **inferred**: the same normal transform with
  GL_NORMALIZE on (`ody_program.s`, line 871): one record longer than routine 694.
- **Routine 719** (kernel record 719), **inferred**: closes each light's lighting when it has no
  distance attenuation (`ody_program.s`, line 874).
- **Routine 734** (kernel record 734), **inferred**: closes each light's lighting when it is
  local and attenuated (`ody_program.s`, line 874); it runs twenty records against eleven.
- **Routine 768** (kernel record 768), **inferred**: lighting for each further light that is
  directional (`ody_program.s`, line 862).
- **Routine 920** (kernel record 821), **inferred**: lighting for each further light that is
  local (`ody_program.s`, line 862).
- **Routine 891**, **inferred**: the first part of a further directional light when context
  byte +3220 is zero (`ody_program.s`, line 859); the generic
  `__glGenericPickColorMaterialProcs` (`so_lighting.s`) needs the same byte set, which reads
  as the RGBA-mode flag, so this is the colour-index form. The kernel's copy of the program
  has it 99 lower, at 792, where the 6.5.30m file has its inserted routine.
- **Routine 964** (kernel record 865), **inferred**: the first part of a further local light
  in the colour-index form (`ody_program.s`, line 859).
- **Routine 779** (kernel record 779), **inferred**: the second part of a further directional
  light in the colour-index form (`ody_program.s`, line 860); it is the tail of routine 768.
- **Routine 931** (kernel record 832), **inferred**: the second part of a further local light
  in the colour-index form (`ody_program.s`, line 860); it is the tail of routine 920.

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
