# BUZZ microcode: routine map

Release IRIX 6.5.30m. Every row is **established** from the records of `ucode/ODSY/buzz_xform.bin` (listing `ucode/disasm/buzz_xform.lst`, field split in `ucode/buzz_isa.md`); nothing here names an operation. The table is written by `scripts/buzz_routine_table.py`.

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

- **`418`** (routine; kernel record 418), **established**: the sixteen-word store of opcode 0x1a2.
  It reads operands 0 to 15 (`r3` 0x10 to 0x1f, records 418 to 433) and pairs them with
  `ma` 0x200 to 0x20f in lanes 4 and 5, so it writes the sixteen words to the data table at
  the index the host put in sequencer 0x31 (`odsyRestoreXform` in `odsy_ctxsw.o`, `ody_context.s`).
- **`443`** (routine; kernel record 443), **established**: the four-word store of opcode 0x1bb.
  It reads operands 0 to 3 (records 443 to 446) and writes them to the data table at the
  sequencer 0x31 index; libGLcore sends texture-generation planes and lighting constants this
  way (`updateTexGenCoord` in `ody_texgen.s`, `__glOdysseyInitLighting` in `ody_lighting.s`).
- **`456`** (routine; kernel record 456), **established**: the sixteen-word store of opcode 0x1c8.
  It reads operands 0 to 15 (records 456 to 471) into the matrix table at the sequencer 0x34
  index; libGLcore sends every matrix through it (`ody_xform.s`, the four validators).
- **`479`** (routine; kernel record 479), **established**: the four-word store of opcode 0x1df.
  It reads operands 0 to 3 (records 479 to 482) into the matrix table at the sequencer 0x34
  index; libGLcore uses it for the four words at index 16 after the combined matrix (`ody_xform.s`).
- **`490`** (routine; kernel record 490), **established**: the handler of opcode 0x1ea, sent only
  by the kernel's context restore with operand 0 of two attribute slots and each with bit 31
  flipped (`odsyRestoreVB`, `odsy_ctxsw.o`). It reads operands 0 to 3 and data words
  0x1e3, 0x1e4 and 0x1ea and writes lanes 4 to 6 of `rb` 0x1a. **inferred:** it rebuilds
  board state from the saved pair rather than storing the words as they are.
- **`303`** (routine; kernel record 303), **established**: the pixel rectangle command of
  opcode 0x12f, ten operands. Every image draw and copy selects it: libGLcore's pixel copy and
  move paths (`ody_image_move.s`) and the X module's `odsyDrawImagePIO` and `odsyCopySDRAM`
  set sequencer 0x29 to 303, send the latched `0xcf80a92f` command and a vertex word, then put
  the previous sequencer 0x29 value back. The kernel sends the same word in
  `gfP_OdsyClearBuffer` (`odsy_clip.o`) and `odsyDMAOps` (`odsy_dma.o`).
  It reads operands 0 to 5 and slot 15 (the last four operands) in records 303 to 312.
- **`324`** (routine; kernel record 324), **established**: the clear and stipple rectangle command
  of opcode 0x144, ten operands, sent as `0x8f80a944` by `__glOdysseyClear` (`ody_clear.s`)
  between a begin word with primitive 7 and an end word, and by `LoadAndSendStippledQuads`
  (`ody_bitmap.s`). It reads operands 0 to 5 and slot 15, the same layout as routine 303.
- **`360`** (routine; kernel record 360), **established**: the textured rectangle command of
  opcode 0x168, fourteen operands, sent as `0xcf80b968` by the texture paths:
  `DownsampleTextureThruHW` (`ody_texture.s`) and `__glOdysseyImageMovePixelsTexture`
  (`ody_image_move.s`). It reads operands 0 to 9 and slot 15, and is the only one of the three
  rectangle routines that reads the data table (`ma` 0x1e3).
- **`410`** (routine; kernel record 410), **established**: the data-table load. The kernel sets
  sequencer 0x29 to 410 and sequencer 0x32 to a slot number, then sends `0x8e809015` with four
  floats (`odsyRestoreXform`, `odsy_ctxsw.o`); libGLcore's lighting does the same
  (`ody_lighting.s`). Its first record reads slot 14, the slot that word fills, and the
  next three are idle up to the end mark at 413, so it moves one four-float vector per word.
- **`1221`** (routine; kernel record 1122), **established**: the null routine. Its only record is
  the end mark with every other field at the idle value, followed by four idle records.
  `AddProgram` (`ody_program.s`, source lines 1172 to 1192) puts it in sequencers 0x2a and 0x2c
  and at the end of every program list, and the 4103 patch's libGLcore uses 1122 for the same
  purpose against its older program.
- **`520`** (routine; kernel record 520), **established**: a second copy of the null routine,
  bit for bit the same as record 1221 and its four delay slots in the listing
  `ucode/disasm/buzz_xform.lst`. No table record or `AddProgram` immediate names it.
- **`214`** (routine; kernel record 214), **established**: the per-vertex routine of the kernel's
  built-in program. The 4165-word start-up stream `buzz_init` that `odsy_tpinit`
  (`odsy_tport.o`) replays sets sequencer 0x29 to 214, 0x2a to 224 and 0x2c to 234, and the
  textport then draws with vertex words such as `0x8080c800` (two integer coordinates).
  No record from 214 to 242 has a data address; the textport's coordinates are already window
  with each vertex). libGLcore's program table uses the same routine for unlit GL drawing
  ("The program table" below), so the missing data address does not mean the routine skips the matrix.
  Records 224 and 234 sit five after the value-3 marks at 219 and 229, so a value-3 mark ends
  a part that a register names, the way values 1 and 2 end a routine.
- **`51`** (routine; kernel record 51), **inferred**: texture generation from planes, the routine
  `AddProgram` adds when any of S, T, R or Q uses an eye-linear or object-linear mode
  (`ody_program.s`, source line 1097). It reads data words 0x100 to 0x10f, the four planes,
  in lanes 4 to 7, so it forms the four plane dot products of the vertex.
- **`77`** (routine; kernel record 77), **inferred**: finishes S for a linear mode (`ody_program.s`,
  source line 1106). Its record has `r1` 0x11 (the S bit) and `r2` 0x1a (linear).
- **`82`** (routine; kernel record 82), **inferred**: finishes S for the sphere map (`ody_program.s`,
  source line 1109). Its record has `r1` 0x11 (the S bit) and `r2` 0x1d (sphere map).
- **`87`** (routine; kernel record 87), **inferred**: finishes T for a linear mode (`ody_program.s`,
  source line 1112). Its record has `r1` 0x12 (the T bit) and `r2` 0x1a (linear).
- **`92`** (routine; kernel record 92), **inferred**: finishes T for the sphere map (`ody_program.s`,
  source line 1115). Its record has `r1` 0x12 (the T bit) and `r2` 0x1d (sphere map).
- **`97`** (routine; kernel record 97), **inferred**: finishes R for a linear mode (`ody_program.s`,
  source line 1118); the sphere map is not allowed for R. Its record has `r1` 20, that is 16 plus the R bit.
- **`102`** (routine; kernel record 102), **inferred**: finishes Q for a linear mode (`ody_program.s`,
  source line 1121); the sphere map is not allowed for Q. Its record has `r1` 24, that is 16 plus the Q bit.
- **`108`** (routine; kernel record 108), **inferred**: the common tail of texture generation,
  added after the per-coordinate routines in every texgen program (`ody_program.s`, line 1126).
- **`107`** (routine; kernel record 107), **inferred**: the S-and-T-linear case. When S and T are
  both linear and neither uses the sphere map, `AddProgram` (`ody_program.s`, line 1104) adds
  107 instead of the per-coordinate routines and 108; it is one record put in front of 108.
- **`145`** (routine; kernel record 145), **inferred**: the sphere-map set-up when GL_NORMALIZE
  is off (`AddProgram`, `ody_program.s`, line 1093; bit 22 of the enables word at context
  +1792 is GL_NORMALIZE in `__glim_IsEnabled`, `so_attrib.s`). It reads data words 0x1e0
  to 0x1e8 in lanes 4 to 7.
- **`127`** (routine; kernel record 127), **inferred**: the sphere-map set-up when GL_NORMALIZE
  is on (`AddProgram`, `ody_program.s`, line 1090). The list gets 127 and then 159, so the
  first fourteen records of routine 145 are replaced by the tail of routine 119.
- **`159`** (routine; kernel record 159), **inferred**: the second part of the sphere-map routine,
  shared by both normalize settings (`ody_program.s`, line 1091): routine 145 runs into it.
- **`119`** (routine; kernel record 119), **inferred**: the texture coordinate output of a texgen
  program when the context's perspective flag is clear (`AddProgram`, line 1129); 123 is used
  when it is set. `__glOdysseyUpdateTransform` (`ody_xform.s`, line 368) sets the flag when any
  of projection elements 3, 7 or 11 is nonzero, that is for a perspective projection.
- **`123`** (routine; kernel record 123), **inferred**: the same output for a perspective
  projection (`ody_program.s`, line 1129); it is routine 119 without its first four records.

### Clipping routines

`AddProgram` (`ody_program.s`, source lines 1137 to 1139) adds two list entries when
`__glOdysseyGetNumHWClipPlanes` returns a nonzero count: record 0 and one of three
routines chosen by the texture state it worked out at source line 677 (the texture
dimension from the 1D, 2D and 3D enables) and line 753 (texture generation on).

- **`0`** (routine; kernel record 0), **inferred**: the clip-plane routine of a program with
  hardware clip planes enabled (`ody_program.s`, line 1137, which stores 0 into the list).
  It reads data words 0x120 to 0x12b in lanes 4 to 7, a plane-sized group per four records.
- **`12`** (routine; kernel record 12), **inferred**: the clip-plane follow-up when texturing is
  off (`ody_program.s`, line 1139); it carries no texture coordinates through the clip.
- **`26`** (routine; kernel record 26), **inferred**: the clip-plane follow-up when texturing is
  on without texture generation (`ody_program.s`, line 1139).
- **`40`** (routine; kernel record 40), **inferred**: the clip-plane follow-up when texturing and
  texture generation are both on (`ody_program.s`, line 1139).

### Lighting routines

`AddProgram` (`ody_program.s`, source lines 838 to 876) walks the enabled lights (mask at
context +1800, records of 116 bytes from the pointer at +1584). A light is local when its
position w (record +76) is nonzero and attenuated when it is local and its constant, linear and
quadratic factors (+104, +108, +112) are not 1, 0 and 0. A spot cutoff (+100) other than 180
sets a bit in the program key and adds no routine.

- **`611`** (routine; kernel record 611), **inferred**: lighting for the first enabled light when
  it is local and GL_LIGHT_MODEL_LOCAL_VIEWER is on (`ody_program.s`, line 865;
  context byte +1412, set by `__glim_LightModelfv` in `so_attrib.s`).
- **`626`** (routine; kernel record 626), **inferred**: lighting for the first enabled light when
  it is local and the viewer is at infinity (`ody_program.s`, line 865). It has the same length
  and data range as routine 611.
- **`641`** (routine; kernel record 641), **inferred**: lighting for the first enabled light when
  it is directional and the viewer is local (`ody_program.s`, line 865); lane 7 only.
- **`656`** (routine; kernel record 656), **inferred**: lighting for the first enabled light when
  it is directional and the viewer is at infinity (`ody_program.s`, line 865), the shortest of the four.
- **`694`** (routine; kernel record 694), **inferred**: the normal transform, added with the first
  light (`ody_program.s`, line 871) when GL_NORMALIZE is off; it reads data words 0x1e0 to
  0x20d in lanes 4 to 7.
- **`668`** (routine; kernel record 668), **inferred**: the same normal transform with
  GL_NORMALIZE on (`ody_program.s`, line 871): one record longer than routine 694.
- **`719`** (routine; kernel record 719), **inferred**: closes each light's lighting when it has no
  distance attenuation (`ody_program.s`, line 874).
- **`734`** (routine; kernel record 734), **inferred**: closes each light's lighting when it is
  local and attenuated (`ody_program.s`, line 874); it runs twenty records against eleven.
- **`768`** (routine; kernel record 768), **inferred**: lighting for each further light that is
  directional (`ody_program.s`, line 862).
- **`920`** (routine; kernel record 821), **inferred**: lighting for each further light that is
  local (`ody_program.s`, line 862).
- **`891`** (routine), **inferred**: the first part of a further directional light when context
  byte +3220 is zero (`ody_program.s`, line 859); the generic
  `__glGenericPickColorMaterialProcs` (`so_lighting.s`) needs the same byte set, which reads
  as the RGBA-mode flag, so this is the colour-index form. The kernel's copy of the program
  has it 99 lower, at 792, where the 6.5.30m file has its inserted routine.
- **`964`** (routine; kernel record 865), **inferred**: the first part of a further local light
  in the colour-index form (`ody_program.s`, line 859).
- **`779`** (routine; kernel record 779), **inferred**: the second part of a further directional
  light in the colour-index form (`ody_program.s`, line 860); it is the tail of routine 768.
- **`931`** (routine; kernel record 832), **inferred**: the second part of a further local light
  in the colour-index form (`ody_program.s`, line 860); it is the tail of routine 920.

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

- **`243`** (routine; kernel record 243), **established**: the per-vertex entry of table record 1
  (at 0x0dae46c8 in `libGLcore.so`), the unlit program that admits texturing. Its value-3 mark at 250 is the patch
  address and its end mark 255 the patch record, so with texture generation or clip planes the
  routine stops at 250. It reads no data-table word.
- **`260`** (routine; kernel record 260), **established**: the second half of the unlit textured
  program of table record 1 (+16 at 0x0dae46d8 in `libGLcore.so`); the sequencer 0x2c entry 268 and the second list element are inside
  it, five records after its value-3 mark at 263.
- **`1313`** (routine; kernel record 1214), **established**: the whole per-vertex program of table
  record 2 (at 0x0dae4710 in `libGLcore.so`), fragment lighting from one directional fragment light with GL_LIGHTING
  off and no texture. Its 0x2a entry 1325 sits five after its value-3 mark at 1320 and its 0x2c
  entry 1337 near its end; it reads data word 0x1e1 only.
- **`1348`** (routine; kernel record 1249), **established**: the per-vertex entry of table record 4
  (at 0x0dae47a0 in `libGLcore.so`), the record-2 state with texturing or texture generation or clip planes allowed.
  Its value-3 mark 1358 is patched with its end mark 1363 when texture generation or clipping follow.
- **`1368`** (routine; kernel record 1269), **established**: the second routine of table record 4 (its +16 word at 0x0dae47b0 in `libGLcore.so`);
  it holds the 0x2c entry 1379, five after its value-3 mark 1374, and reads no data-table word.
- **`1390`** (routine; kernel record 1291), **established**: the single routine of table record 5
  (at 0x0dae47e8 in `libGLcore.so`), record 2's fragment-lighting program with the fragment model two-sided. It has two
  value-3 marks and reads data words 0x1e1 to 0x1eb in lane 7, which record 2's routine 1313 does not.
- **`1433`** (routine; kernel record 1334), **established**: the per-vertex entry of table record 8
  (at 0x0dae48c0 in `libGLcore.so`), the two-sided form of record 4. Patch: its mark 1447 takes its end mark 1452.
- **`1457`** (routine; kernel record 1358), **established**: the second routine of table record 8 (its +16 word at 0x0dae48d0 in `libGLcore.so`),
  holding the 0x2c entry 1472; like 1433 it reads data words 0x1e1 to 0x1eb in lane 7.
- **`1483`** (routine; kernel record 1384), **established**: the whole program of table record 3
  (at 0x0dae4758 in `libGLcore.so`): one directional light, infinite viewer, single colour, RGBA, no texture and no
  texture generation or clip planes, so the record carries no patch. It has two value-3 marks,
  five before the 0x2a entry 1496 and the 0x2c entry 1509.
- **`1520`** (routine; kernel record 1421), **established**: the per-vertex entry of table record 9
  (at 0x0dae4908 in `libGLcore.so`), one directional light with GL_NORMALIZE on and texturing allowed. It reads data
  words 0x1e0 to 0x1e3 in lanes 4 to 6; patch: mark 1535 takes end mark 1540.
- **`1545`** (routine; kernel record 1446), **established**: the second routine of table record 9 (its +16 word at 0x0dae4918 in `libGLcore.so`),
  which holds the 0x2c entry 1561 and reads the same constants 0x1e0 to 0x1e3.
- **`1580`** (routine; kernel record 1481), **established**: the per-vertex entry of table record 6
  (at 0x0dae4830 in `libGLcore.so`), two directional lights with texture generation or clip planes allowed and no
  texture; patch: mark 1591 takes end mark 1596.
- **`1601`** (routine; kernel record 1502), **established**: 18 records with no data-table
  read, the second half of the two-directional-light program of table record 6 (+16 at
  0x0dae4840 in `libGLcore.so`). Its single value-3 mark is 1608, five records before the
  alternate loop entry 1613 that the record names.
- **`1623`** (routine; kernel record 1524), **established**: the per-vertex entry of table record 10
  (at 0x0dae4950 in `libGLcore.so`), two directional lights with GL_NORMALIZE on; it reads data words 0x1e0 to 0x1e3,
  and its mark 1640 takes end mark 1645 as the patch.
- **`1650`** (routine; kernel record 1551), **established**: the second routine of table record 10 (its +16 word at 0x0dae4960 in `libGLcore.so`),
  35 records long, holding the 0x2c entry 1668.
- **`1689`** (routine; kernel record 1590), **established**: the per-vertex entry of table record 11
  (at 0x0dae4998 in `libGLcore.so`), the widest directional record: up to four directional lights, textured,
  normalize off. Patch: mark 1710 takes end mark 1715.
- **`1720`** (routine; kernel record 1621), **established**: second half of the program for up
  to four directional lights (table record 11, +16 at 0x0dae49a8 in `libGLcore.so`). Like its
  first half 1689 it reads no data-table word; its mark 1737 precedes the alternate loop
  entry 1742.
- **`1752`** (routine; kernel record 1653), **established**: the per-vertex entry of table record 7
  (at 0x0dae4878 in `libGLcore.so`), one directional light with two colour outputs (two-sided lighting). Patch: mark
  1765 takes end mark 1770; the record's set-up list adds routine 1265 after 1226.
- **`1775`** (routine; kernel record 1676), **established**: 19 records closing the one-light,
  two-colour program of table record 7 (+16 at 0x0dae4888 in `libGLcore.so`); mark 1784 sits five before the alternate loop entry 1789.
- **`1798`** (routine; kernel record 1699), **established**: the per-vertex entry of table record 13
  (at 0x0dae4a28 in `libGLcore.so`), two directional lights, two colours, textured; patch: mark 1818 takes end mark 1823.
- **`1828`** (routine; kernel record 1729), **established**: 30 records, the two-sided half of
  table record 13's program for two directional lights with texture (+16 at 0x0dae4a38 in
  `libGLcore.so`), eleven records longer than record 7's 1775; mark 1846 leads to entry 1851.
- **`1862`** (routine; kernel record 1763), **established**: the per-vertex entry of table record 16
  (at 0x0dae4b00 in `libGLcore.so`), one local light without attenuation or spot, infinite viewer, normalize off. It is
  the first table routine that reads the light record at data index 0 onward (addresses 0x1 to
  0x1e3, lanes 4 to 7). Patch: mark 1890 takes end mark 1895.
- **`1900`** (routine; kernel record 1801), **established**: the 51-record second routine of table
  record 16 (its +16 word at 0x0dae4b10 in `libGLcore.so`), holding the 0x2c entry 1929.
- **`1955`** (routine; kernel record 1856), **established**: the per-vertex entry of table record 17
  (at 0x0dae4b48 in `libGLcore.so`): one local light whose mask admits both normalize bits, so it also serves the
  normalize-on case record 16 rejects. Patch: mark 1984 takes end mark 1989.
- **`1994`** (routine; kernel record 1895), **established**: a 52-record routine reading the
  light table from index 1 to the constants at 0x1e3 in all four lanes, the second half of the
  one-local-light program that accepts either normalize setting (table record 17, +16 at
  0x0dae4b58 in `libGLcore.so`). Mark 2019 precedes the alternate loop entry 2024.
- **`2050`** (routine; kernel record 1951), **established**: the per-vertex entry of table record 18
  (at 0x0dae4b90 in `libGLcore.so`), one local light with a local viewer and GL_NORMALIZE on. It lies past RAM record
  2047, so it runs from the overlay window; patch: mark 2079 takes end mark 2084.
- **`2089`** (routine; kernel record 1990), **established**: the second routine of table record 18 (its +16 word at 0x0dae4ba0 in `libGLcore.so`),
  holding the 0x2c entry 2119; it is also paged in through the overlay.
- **`2145`** (routine; kernel record 2046), **established**: the per-vertex entry of table record 19
  (at 0x0dae4bd8 in `libGLcore.so`), one local light with a local viewer and normalize off; patch: mark 2174 takes 2179.
- **`2184`** (routine; kernel record 2085), **established**: the local-viewer, normalize-off
  counterpart of 2089 (table record 19, +16 at 0x0dae4be8 in `libGLcore.so`), also 52 records,
  and paged into the overlay window because it starts past RAM record 2047. Mark 2209, entry 2214.
- **`2240`** (routine; kernel record 2141), **established**: the only list entry of table record 14
  (at 0x0dae4a70 in `libGLcore.so`), one directional light with separate specular colour. The record's three sequencer
  words are 1221, so `AddProgram` always copies the list and sets sequencer 0x29 to 2240.
- **`2268`** (routine; kernel record 2169), **established**: the only list entry of table record 15
  (at 0x0dae4ab8 in `libGLcore.so`), the two-colour form of record 14 with the same 1221 sequencer words.
- **`2300`** (routine; kernel record 2201), **established**: the per-vertex entry of table record 12
  (at 0x0dae49e0 in `libGLcore.so`), up to three directional lights together with a directional fragment light,
  textured. Patch: mark 2322 takes end mark 2327; its set-up list adds 1286 after 1226.
- **`2332`** (routine; kernel record 2233), **established**: the second routine of table record 12 (its +16 word at 0x0dae49f0 in `libGLcore.so`),
  holding the 0x2c entry 2355 and reading data word 0x1e1 as 2300 does.
- **`2365`** (routine; kernel record 2266), **established**: the per-vertex entry of table record 22
  (at 0x0dae4cb0 in `libGLcore.so`), two local lights with normalize off; it reads data from index 1 to 0x1e3. Patch:
  mark 2398 takes end mark 2403. The record has no set-up routine.
- **`2408`** (routine; kernel record 2309), **established**: the 64-record second routine of table
  record 22 (its +16 word at 0x0dae4cc0 in `libGLcore.so`), holding the 0x2c entry 2442.
- **`2476`** (routine; kernel record 2377), **established**: the per-vertex entry of table record 23
  (at 0x0dae4cf8 in `libGLcore.so`), two local lights with GL_NORMALIZE on; patch: mark 2510 takes end mark 2515.
- **`2520`** (routine; kernel record 2421), **established**: the 66-record second routine of table
  record 23 (its +16 word at 0x0dae4d08 in `libGLcore.so`), holding the 0x2c entry 2555.
- **`2590`** (routine; kernel record 2491), **established**: the per-vertex entry of table record 20
  (at 0x0dae4c20 in `libGLcore.so`), lighting on with no vertex light and one local fragment light, normalize off.
  It reads data words 0x80 to 0x1e5; patch: mark 2620 takes end mark 2625.
- **`2630`** (routine; kernel record 2531), **established**: 57 records for the local fragment
  light with no vertex light (table record 20, +16 at 0x0dae4c30 in `libGLcore.so`). It reads
  data words 0x80 to 0x1e7; **inferred:** 0x80 onward holds the fragment light, as for set-up
  routine 1304. Mark 2656 precedes the alternate loop entry 2661.
- **`2691`** (routine; kernel record 2592), **established**: the per-vertex entry of table record 21
  (at 0x0dae4c68 in `libGLcore.so`), record 20 with GL_NORMALIZE on; patch: mark 2722 takes end mark 2727.
- **`2732`** (routine; kernel record 2633), **established**: the second routine of table record 21 (its +16 word at 0x0dae4c78 in `libGLcore.so`),
  holding the 0x2c entry 2764, the last routine of the image (it ends at 2789).
- **`214`** (routine), table use (kernel record 214), **established**: table record 0 (at 0x0dae4680 in `libGLcore.so`)
  gives libGLcore's unlit, untextured program the same 214, 224 and 234 the kernel textport uses.
  **inferred:** routine 214 therefore applies the combined matrix, through storage its
  data-address field does not show.

#### Closing routines

`AddProgram` ends every per-vertex list with one closing entry (source lines 1147 to 1164).
For a table program it is the record's +28 word; otherwise it is chosen at source line 1159.
Every one of these is a bit-for-bit copy of the null routine 1221: an end mark and four idle
slots. **inferred:** the routine does no work, so what the choice tells the board is the address
itself; which unit reads it is not shown by any host code (`docs/open-questions.md`).

- **`1153`** (routine; kernel record 1054), **established**: the closing entry of table records 0 and
  3 (+28 at 0x0dae469c and 0x0dae4774 in `libGLcore.so`), the two programs with neither texture nor clip planes.
- **`1158`** (routine; kernel record 1059), **established**: a null routine that no table record and
  no immediate in the 6.5.30m N32 libGLcore `ody_program.s` names.
- **`1163`** (routine; kernel record 1064), **established**: the closing entry of table record 2 only (+28 at 0x0dae472c in `libGLcore.so`),
  the one-sided, untextured fragment-lighting program.
- **`1168`** (routine; kernel record 1069), **established**: the closing entry of table record 5 only (+28 at 0x0dae4804 in `libGLcore.so`),
  the two-sided form of record 2.
- **`1173`** (routine; kernel record 1074), **established**: the closing entry whenever the
  perspective-texture flag is set: `AddProgram` (`ody_program.s`) adds it at source line 1159 for a generic program and
  at line 1150 for a table program, where it also puts routines 1200 and 1211 in front of it.
- **`1178`** (routine; kernel record 1079), **established**: the generic closing entry for one colour
  without separate specular or fragment lighting (`ody_program.s`, source line 1159, chosen when the two-colour flag
  is clear), and the +28 word of eleven table records.
- **`1183`** (routine; kernel record 1084), **established**: the same closing entry for two colour
  outputs (`ody_program.s`, source line 1159); table records 7 and 13 carry it.
- **`1188`** (routine; kernel record 1089), **established**: the closing entry when separate specular or
  fragment lighting is on, one-sided (`ody_program.s`, source line 1159).
- **`1193`** (routine; kernel record 1094), **established**: the two-sided form of 1188, picked when the
  two-colour flag or the fragment model's two-sided byte (context +0x10000 + 26021) is set.

#### Unlit colour routines

- **`1198`** (routine; kernel record 1099), **established**: added with lighting off and no light
  (`ody_program.s`, source line 991). **inferred:** it carries the vertex colour through unlit;
  record 1198 reads attribute slot 5 (`r3` 5) and sets the `e` group to 1, f, 2, 2.
- **`1200`** (routine; kernel record 1101), **established**: the tail of 1198 two records in, added
  by `AddProgram` (`ody_program.s`) before 1211 when a table program meets the perspective-texture flag (source
  line 1148).
- **`1211`** (routine; kernel record 1112), **established**: the perspective-texture form of the
  colour finish, chosen in `ody_program.s` at source line 992 when the flag is set and at line 1149. Its one record
  differs from 1216 in `d2` (0x33 against 0x2b) and in `s0` (7 against 6).
- **`1216`** (routine; kernel record 1117), **established**: the colour finish without the
  perspective-texture flag (`ody_program.s`, source line 992); the single record pairs with 1211 above.

#### Set-up routines

The second list of a program runs once when `__glOdysseySetProgram` selects it (above).

- **`515`** (routine; kernel record 515), **established**: the head of every program's set-up list,
  stored by `ody_program.s` at source lines 1179 and 1209. Its own record is an end mark; **inferred:** the work is in its
  four delay slots, which read data words 0x1e3 and 0x1e0 and write registers 0x11 and 0x10 in lane 7.
- **`606`** (routine; kernel record 606), **established**: the set-up routine of every program built
  without the table (`ody_program.s`, source line 1180). Its delay slots read data word 0x1e3 and write registers
  0x0d to 0x0f in lane 7.
- **`1226`** (routine; kernel record 1127), **established**: the set-up routine of the ten table records
  whose first light is directional, 3, 6, 7 and 9 to 15 (second list at record +52 in `libGLcore.so`, first at 0x0dae478c). It reads the data
  table from index 1 up to 0x1e3 in lanes 4 to 7. **inferred:** it loads per-light constants.
- **`1265`** (routine; kernel record 1166), **established**: the second set-up routine, after 1226, of
  the two-colour table records 7, 13 and 15 (+56 at 0x0dae48b0 for record 7, `libGLcore.so`); it reads data words 0x1 to 0xf9 in lanes 4 to 7.
- **`1286`** (routine; kernel record 1187), **established**: the second set-up routine, after 1226, of
  table record 12 (+56 at 0x0dae4a18 in `libGLcore.so`), the one that mixes vertex lights with a directional fragment light; data words
  0x80 to 0x1e5.
- **`1295`** (routine; kernel record 1196), **established**: the set-up routine of the local-light
  table records 16 to 19 and 23 (+52 at 0x0dae4b34 for record 16, `libGLcore.so`). It reads constants 0x1e0 to 0x1e3 in lane 7.
- **`1304`** (routine; kernel record 1205), **established**: the set-up routine of the four
  fragment-lighting table records with GL_LIGHTING off, 2, 4, 5 and 8
  (+52 at 0x0dae4744 for record 2, `libGLcore.so`); it reads data words 0x80
  to 0x85 in lane 7. **inferred:** 0x80 is where the fragment light's constants sit.

#### Lighting finish routines

`AddProgram` closes the lighting of a program built without the table with one of these
(`ody_program.s`, source lines 942 to 992), after the per-light routines.

- **`975`** (routine; kernel record 876), **established**: the RGBA finish when the light loop leaves its
  attenuation and spot flags clear, or no light is enabled, with one colour and no
  perspective-texture flag (`ody_program.s`, source lines 972 and 985).
- **`986`** (routine; kernel record 887), **established**: the same finish with the perspective-texture
  flag set (`ody_program.s`, source lines 970 and 985).
- **`997`** (routine; kernel record 898), **established**: the two-colour form of 975 (`ody_program.s`, source lines
  972 and 985); it writes lanes 4 and 6.
- **`1013`** (routine; kernel record 914), **established**: the one-colour finish when the light loop
  leaves its attenuation or spot flag set (`ody_program.s`, source line 967), and the colour-index finish (line 951).
- **`1035`** (routine; kernel record 936), **established**: the attenuation-or-spot finish with the
  perspective-texture flag (`ody_program.s`, source line 967).
- **`1045`** (routine; kernel record 946), **established**: the two-colour form of 1013, in both the
  RGBA and the colour-index paths (`ody_program.s`, source lines 951 and 967).
- **`1023`** (routine; kernel record 924), **established**: the one-colour finish with separate
  specular (`ody_program.s`, source line 958), added after routine 768.
- **`1057`** (routine; kernel record 958), **established**: the separate-specular finish with two
  colours (`ody_program.s`, source line 958).
- **`758`** (routine; kernel record 758), **established**: added between 768 and the separate-specular
  finish only while building program 1, the program `__glOdysseyValidateProgram` adds when software
  clip planes are on (`ody_program.s`, source lines 956 and 1328). It is six records, three idle.
- **`792`** (routine; no kernel record), **established**: the attenuation-or-spot routine used when the
  environment variable `ODYSSEY_SPOT_INTERPOLATE` is set (the string at 0x0dae4d88, passed to `getenv` at
  source line 961). `AddProgram` then adds 792 and 780 instead of 768. It is the 95-record routine the
  kernel's older copy lacks, so the variable selects code that 6.5.30m added.

#### Fragment lighting routines

With GL_FRAGMENT_LIGHTING_SGIX on in RGBA mode and fragment light 0 enabled (bit 0 of
context word +0x10000 + 25724), `AddProgram` reads that light's record at +0x10000 + 25728 with the
vertex-light layout (w at +76, cutoff at +100, attenuation at +104 to +112; source lines 888 to 897)
and adds its routines at source lines 902 to 942. With no vertex light it first adds a first-light
routine (611 to 656) and a normal transform (694 or 668); otherwise 768 or 920.

- **`911`** (routine; kernel record 812), **established**: added with GL_LIGHTING on and one colour
  output (`ody_program.s`, source line 921). It has 902's length, but its third and fourth records
  (913, 914) differ from 902's (904, 905) and its end record carries no `s0` value.
- **`902`** (routine; kernel record 803), **established**: the two-colour choice at the same `ody_program.s` line,
  when two-sided lighting is on (context byte +1413).
- **`1094`** (routine; kernel record 995), **established**: added when the fragment light is local and
  attenuated (`ody_program.s`, source line 926). It reads data word 0x207 in lanes 4 to 6.
- **`1071`** (routine; kernel record 972), **established**: always added for the fragment light (`ody_program.s`,
  source line 928). It reads data words 0x1e4 to 0x20e in all four lanes. **inferred:** it evaluates the
  fragment light's terms for the vertex.
- **`1136`** (routine; kernel record 1037), **established**: the last fragment-lighting routine when
  either two-sided flag is set (`ody_program.s`, source line 942: GL two-sided lighting or the fragment model's
  two-sided byte).
- **`1106`** (routine; kernel record 1007), **established**: the one-sided last routine when the
  fragment light is not attenuated (`ody_program.s`, source line 942).
- **`1119`** (routine; kernel record 1020), **established**: the one-sided last routine when the
  fragment light is local and attenuated (`ody_program.s`, source line 942).

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
  entering at 605 would cost one idle cycle and then run 606.
- **`278`** (routine; file offset 0xd08 of `buzz_xform.bin`), **located**: 21 records that read
  sixteen data-table words from 0x140 up, then the two words from 0x1f5, alternating between two
  lanes, and close with end mark 2 at 298. No host code in any release searched writes those data
  indices, so what the routine computes is unknown.
- **`525`** (routine; file offset 0x189c of `buzz_xform.bin`), **located**: thirteen records with
  no data-table read. Its first five records step the register fields through the same order
  routine 0 uses at its records 4 to 8, then come four idle records and end mark 2 at 537.
  Its use is unknown.
- **`542`** (routine; file offset 0x1968 of `buzz_xform.bin`), **located**: 525's five-record
  opening followed by a record reading attribute slot 3 (`r3` 3) and three more stepping the
  register fields 5, 6, 7, ending with mark 2 at 558. Purpose unknown.
- **`563`** (routine; file offset 0x1a64 of `buzz_xform.bin`), **located**: the same 17-record body
  as 542 except the sequencer field of record 569 and the register numbers in its tail records
  from 574 on; what it is for is unknown.
- **`584`** (routine; file offset 0x1b60 of `buzz_xform.bin`), **located**: 563's body with record
  591 carrying the `e` group 1, f, 2, 2 and attribute slot 5, as record 1198 does, end mark 2 at 600.
  Its role is unknown.

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
