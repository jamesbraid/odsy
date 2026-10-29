# Command words found in code, by family

Release IRIX 6.5.30m (libGLcore in `usr/gfx/arch/IP30ODSY*`, kernel `odyssey.a`, `odyssey.so`), with the 4103 patch's libGLcore where named. Labels: **established** (read from a binary, with where), **inferred**, **unknown**. This page gives the full 32-bit value of command words the inventory scan (`docs/inventory/tokens.tsv`) found in code and had no row for, grouped by what the word is. Word layouts are in `BUZZ.h` section 1; the block ids and shadow offsets are those of `docs/buzz.md` section 4.

## Attribute words

An attribute word is `BUZZ_ATTR_WORD(slot, count, op)` (`BUZZ.h`): bits 31:24 are 0x80 for the position or `0xc0 | slot`, bits 13:10 the number of operand words that follow, bits 9:0 the opcode. The opcode names the data type the entry point sends (`BUZZ.h`, "Per-vertex words"): 0x00-0x05 Vertex2/3/4 integer then float, 0x06 and 0x07 Index integer and float, 0x08-0x0e Color3, 0x0f-0x15 Color4 (each unsigned byte, unsigned short, unsigned int, byte, short, int, float), 0x16-0x19 Normal3 byte, short, int, float, 0x1e-0x25 TexCoord1 to 4 integer then float. **established** that each row below is sent by the named entry point, with its slot, operand count and opcode; **inferred** that the data-type reading follows the opcode order, because the entry points read agree with it (`__glOdylc_Color3ui` 0x0a, `__glOdylc_Color4b` 0x12, `__glOdyim_TexCoord3d` 0x23). Double-precision entry points send the float form, converting on the host (`Color3d` 0x0e, `TexCoord1d` 0x1f, `Indexd` 0x07).

Slot 14 (0xce in the top byte) is the scratch colour slot: the `__glOdyim_Scratch*` entry points send the same colour and index opcodes as slot 5 to it. What the board does with a scratch colour: **unknown**.

| Word | Slot | Operands | Opcode | Form | First sender by name |
|---|---:|---:|---:|---|---|
| `0x8080cc02` | 0 | 3 | 0x02 | Vertex3 integer | `__glOdyim_Vertex3i` |
| `0x8080d004` | 0 | 4 | 0x04 | Vertex4 integer | `__glOdyim_Vertex4i` |
| `0xc180cc16` | 1 | 3 | 0x16 | Normal3 b | `__glOdylc_Normal3b` |
| `0xc180cc17` | 1 | 3 | 0x17 | Normal3 s | `__glOdylc_Normal3s` |
| `0xc380c41f` | 3 | 1 | 0x1f | TexCoord1 float | `__glOdylc_TexCoord1d` |
| `0xc380c821` | 3 | 2 | 0x21 | TexCoord2 float | `__glOdylc_TexCoord2d` |
| `0xc380cc22` | 3 | 3 | 0x22 | TexCoord3 integer | `__glOdylc_TexCoord3i` |
| `0xc380cc23` | 3 | 3 | 0x23 | TexCoord3 float | `__glOdyim_TexCoord3d` |
| `0xc380d024` | 3 | 4 | 0x24 | TexCoord4 integer | `__glOdylc_TexCoord4i` |
| `0xc380d025` | 3 | 4 | 0x25 | TexCoord4 float | `__glOdyim_TexCoord4dv` |
| `0xc580c407` | 5 | 1 | 0x07 | Index float | `__glOdylc_Indexd` |
| `0xc580cc0a` | 5 | 3 | 0x0a | Color3 ui | `__glOdylc_Color3ui` |
| `0xc580cc0b` | 5 | 3 | 0x0b | Color3 b | `__glOdylc_Color3b` |
| `0xc580cc0c` | 5 | 3 | 0x0c | Color3 s | `__glOdylc_Color3s` |
| `0xc580cc0e` | 5 | 3 | 0x0e | Color3 f | `__glOdyim_Color3d` |
| `0xc580d00f` | 5 | 4 | 0x0f | Color4 ub | `__glOdylc_Color4ub` |
| `0xc580d010` | 5 | 4 | 0x10 | Color4 us | `__glOdylc_Color4us` |
| `0xc580d011` | 5 | 4 | 0x11 | Color4 ui | `__glOdylc_Color4ui` |
| `0xc580d012` | 5 | 4 | 0x12 | Color4 b | `__glOdylc_Color4b` |
| `0xc580d013` | 5 | 4 | 0x13 | Color4 s | `__glOdylc_Color4s` |
| `0xc580d014` | 5 | 4 | 0x14 | Color4 i | `__glOdylc_Color4i` |
| `0xc580d015` | 5 | 4 | 0x15 | Color4 f | `__glOdyim_Color4dv` |
| `0xce80c407` | 14 | 1 | 0x07 | Index float | `__glOdyim_ScratchIndexd` |
| `0xce80cc09` | 14 | 3 | 0x09 | Color3 us | `__glOdyim_ScratchColor3us` |
| `0xce80cc0a` | 14 | 3 | 0x0a | Color3 ui | `__glOdyim_ScratchColor3ui` |
| `0xce80cc0b` | 14 | 3 | 0x0b | Color3 b | `__glOdyim_ScratchColor3b` |
| `0xce80cc0c` | 14 | 3 | 0x0c | Color3 s | `__glOdyim_ScratchColor3s` |
| `0xce80cc0d` | 14 | 3 | 0x0d | Color3 i | `__glOdyim_ScratchColor3i` |
| `0xce80cc0e` | 14 | 3 | 0x0e | Color3 f | `__glOdyim_ScratchColor3d` |
| `0xce80d00f` | 14 | 4 | 0x0f | Color4 ub | `__glOdyim_ScratchColor4ub` |
| `0xce80d010` | 14 | 4 | 0x10 | Color4 us | `__glOdyim_ScratchColor4us` |
| `0xce80d011` | 14 | 4 | 0x11 | Color4 ui | `__glOdyim_ScratchColor4ui` |
| `0xce80d012` | 14 | 4 | 0x12 | Color4 b | `__glOdyim_ScratchColor4b` |
| `0xce80d013` | 14 | 4 | 0x13 | Color4 s | `__glOdyim_ScratchColor4s` |
| `0xce80d014` | 14 | 4 | 0x14 | Color4 i | `__glOdyim_ScratchColor4i` |
| `0xce80d015` | 14 | 4 | 0x15 | Color4 f | `__glOdyim_ScratchColor4dv` |

### Material slots 6 to 13 and the lighting defaults

- **established.** `__glOdysseyInitLighting` (`ody_lighting.s`) sends one four-float attribute word per slot 6 to 13, with these values: slot 6 (op 0x2f) 0.2, 0.2, 0.2, 1.0; slot 7 (0x30) 0.8, 0.8, 0.8, 1.0; slot 8 (0x31) 0, 0, 0, 1; slot 9 (0x32) 0, 0, 0, 1; slot 10 (0x35) 0.2, 0.2, 0.2, 1.0; slot 11 (0x36) 0.8, 0.8, 0.8, 1.0; slot 12 (0x37) 0, 0, 0, 1; slot 13 (0x38) 0, 0, 0, 1. The words are `0xc680d02f`, `0xc780d030`, `0xc880d031`, `0xc980d032`, `0xca80d035`, `0xcb80d036`, `0xcc80d037`, `0xcd80d038`. Before them it sends `0xc18093ff` (slot 1, four operands 0, 0, 1, 1, bit 14 clear unlike the other attribute words) and `0xc180cc19` with 0, 0, 1.
- **inferred.** Slots 6 to 9 are the front material's ambient, diffuse, specular and emission colours, and slots 10 to 13 the back material's, because the values are the OpenGL default material (ambient 0.2, diffuse 0.8, specular and emission black, alpha 1) and the order follows the opcode order of the senders. `0xc180cc19` with (0, 0, 1) is then the default normal. `docs/buzz.md` calls the same words the clipped-vertex senders' forms (`CISendClipped*`, `RGBSendClipped*`); both readings can hold if the clip senders carry per-vertex material colour. Which one the board implements: **unknown**.
- **established.** `odsyResetHwShadow` (`odsy_ctxsw.o`) stores the default words `0xc780d030`, `0xc880d031`, `0xcb80d036` and `0xcc80d037` into the vertex shadow with the other slots (`docs/buzz.md`, "Attribute word defaults").
- **unknown: no shipped software or published source depends on it.** What opcode 0x3ff of `0xc18093ff` selects. It is sent once at the start of lighting set-up, and no other function in the scanned files sends it.

## Class-1 words replayed after a lost context

`odsyRestoreRaster` (`odsy_ctxsw.o`, IP30 and IP35) sends each block below with the operand count shown, reading the operands from the hardware-shadow record (offsets as in `docs/buzz.md` section 4, "Command-stream register blocks"). **established** for the word value, operand count and shadow offset. The word is `0x10000 | count << 10 | id`; a count of 15 stands for sixteen operands (`docs/buzz.md`, stipple blocks). Libraries and the X module send some of these too: the site count is in `docs/inventory/tokens.tsv`.

| Word | Block id | Operands | Shadow offset | Reading |
|---|---|---:|---|---|
| `0x00010405` | 0x005 | 1 | 0x88 | one of the single-operand raster blocks 0x004, 0x005, 0x022, 0x015, 0x056; contents **unknown** |
| `0x00010406` | 0x006 | 1 | 0x468 | contents **unknown** |
| `0x0001041f` | 0x01f | 1 | 0xb4 | with 0x01e, 0x020 and 0x058 at 0xb0, 0xb8 and 0xd8; contents **unknown** |
| `0x00010457` | 0x057 | 1 | 0x1cb4 | contents **unknown** |
| `0x0001081d` | 0x01d | 2 | 0xa8 | contents **unknown** |
| `0x00010842` | 0x042 | 2 | 0x1ca4 | contents **unknown** |
| `0x0001084a` | 0x04a | 2 | 0xdc | contents **unknown** |
| `0x00010c1c` | 0x01c | 3 | 0x1a04 | contents **unknown** |
| `0x00010c48` | 0x048 | 3 | 0xcc | contents **unknown** |
| `0x0001181a` | 0x01a | 6 | 0x90 | contents **unknown** |
| `0x00011847` | 0x047 | 6 | 0x1b94 | contents **unknown** |
| `0x00012031` | 0x031 | 8 | from 0x1174 | second of the four eight-operand post-filter blocks 0x030 to 0x033 |
| `0x00012032` | 0x032 | 8 | from 0x1174 | third of those four |
| `0x00013c29` | 0x029 | 16 | from 0x1070 | second of the four sixteen-operand blocks 0x028 to 0x02b |
| `0x00013c2a` | 0x02a | 16 | from 0x1070 | third of those four |
| `0x00013c4d` | 0x04d | 16 | 0xf8 | the third sixteen-word bitmap beside 0x04e and 0x04f |

- **unknown.** The field layout of the blocks marked unknown. The kernel replay routine only copies their operands from the shadow record to the FIFO and never decodes them.

## Raster state blocks and their fields

Release IRIX 6.5.30m, N32 libGLcore (`libglcore/asm/ODYSSEY/ody_attrib.s` and
`ody_context.s`, with source line numbers) and the kernel textport's start-up stream
(`buzz_init` in `odsy_tport.o`, read in `ucode/buzz_routines.md`, routine 214). Field

Each setter keeps a shadow word in the context, rewrites its field, and sends the block
after the settle group (`0x00010443`, 250, `0x00010046` twice) when a context flag asks for it.

- **Block 0x01e**, word `0x0001041e`, **established**: the alpha test. Bits 14:12 hold the
  comparison as the GL enum minus 0x200 (GL_NEVER 0 to GL_ALWAYS 7), and bits 11:0 the
  reference value clamped to 0 to 1 and scaled by 4096, with 1.0 sent as 4095.
  Sender `__glOdyim_AlphaFunc` (`ody_attrib.s`, source lines 1682 to 1692), shadow at
  context +31784; the other bits of the word are kept.
- **Block 0x020**, word `0x00010420`, **established**: the depth test. Bits 2:0 hold the
  comparison as the GL enum minus 0x200; `__glOdyim_DepthFunc` (`ody_attrib.s`, line 1922)
  rewrites only those bits of the shadow at context +31792 and sends the whole word.
- **Block 0x022**, word `0x00010422`, **established**: the logic operation. Bits 3:0 hold
  the GL enum minus 0x1500 (GL_CLEAR 0 to GL_SET 15), from `__glOdyim_LogicOp`
  (`ody_attrib.s`, line 2315). The kernel textport sends 3, GL_COPY.
- **Block 0x015**, word `0x00010415`, **established**: the polygon mode. Bits 3:2 hold the
  front-face mode and bits 1:0 the back-face mode, each as the GL enum minus 0x1b00
  (GL_POINT 0, GL_LINE 1, GL_FILL 2), from `__glOdyim_PolygonMode` (`ody_attrib.s`, line 2721).
  The kernel textport sends 10 (binary 1010) (fill for both faces by the enum minus 0x1b00 rule above).
- **Block 0x048**, word `0x00010c48`, **established**: the line stipple, three operands.
  Operands 0 and 1 carry the 16-bit pattern in bits 15:0, and operand 2 carries the repeat
  factor minus one in bits 7:0, the factor clamped to 1 to 256
  (`__glOdyim_LineStipple`, `ody_attrib.s`, source lines 2268 to 2276).
- **Block 0x058**, word `0x00010458`, **established**: the polygon offset. Bits 24:0 hold a
  signed depth offset in units of the depth buffer, clamped to plus or minus 2^24,
  and bits 31:25 are kept. `__glOdyim_PolygonOffsetEXT` (`ody_attrib.s`, line 3445)
  builds it from the factor and bias, scaled by the depth range and the projection.
- **Block 0x01d**, word `0x0001081d`, **established**: the scissor box, two operands, each
  with a 12-bit field in bits 23:12 and one in bits 11:0. `__glOdysseyValidateScissor`
  (`ody_context.s`, source line 2120) also hands the four fields to ioctl 0x6f64000d
  as minimum x, minimum y, maximum x and maximum y, so operand 0 is the x range and
  operand 1 the y range, low limit in the upper field.
- **Block 0x04e**, word `0x00013c4e`, **established**: rows 31 down to 16 of the 32 by 32
  polygon stipple, one 32-bit row per operand. `__glOdysseyConvertStipple` (`ody_attrib.s`,
  line 2790) reverses the row order of the GL pattern before it sends the two blocks,
  so the board's first stipple row is the top row of the GL pattern.
- **Block 0x04f**, word `0x00013c4f`, **established**: rows 15 down to 0 of the polygon
  stipple, sent right after block 0x04e by `__glOdysseyConvertStipple` (`ody_attrib.s`).
- **Block 0x03f**, word `0x0001043f`, **established**: the stipple mode word, sent before
  the two pattern blocks from context +31736 (`__glOdysseyConvertStipple`, `ody_attrib.s`).
  **inferred:** it carries the binaries read here; the kernel
  routines' other callers would settle the fields.
- **Block 0x04b**, word `0x0001204b`, **inferred**: the screen mask, four rectangles as
  eight operands, a minimum and a maximum word each, with x in bits 23:12 and y in bits 11:0.
  The kernel textport sends 0x4ff3ff as the first maximum, 1279 by 1023 for its 1280 by 1024
  screen, and 0xffffff as the other three (`buzz_init`, `odsy_tport.o`).

- **Block 0x04a**, word `0x0001084a`, **inferred**: the line width and point size, one
  operand each. The kernel textport sends 0x80 for both (`buzz_init`, `odsy_tport.o`)
  which would read as 1.0 in fixed point with seven
  fraction bits.

## Block 0x045, 0x250 and the level descriptors

- **established.** The X module sends block 0x045 (`0x00010845`, two operands) in two places. `odsyGammaFit` (`odyssey.so`) sends the word, then an operand equal to a floating-point result truncated and clamped to 255, then the constant 30463 (0x76ff). `odsyInitDefaultHW` sends it with two words from the screen record at +56 and +60. **inferred**, from the first sender's name, that block 0x045 holds gamma-ramp fitting parameters; the field split is **unknown**.
- **established.** `__glOdysseyValidateContext` (`ody_context.s`, source line 2529) sends `0x00010407` with one zero operand, then block 0x250 (`0x00011a50`, count 6) with six operands, the context words at `0x10000 - 26796` to `0x10000 - 26776`. Just before, the routine rewrites those six words with and/or masks (visible constants `0xff000fff`, `0xfffff000`, -3073 and -769). Block 0x250 is not among the blocks the kernel replays, so it is either not context state or is rebuilt by libGLcore at context make-current. Its fields are **unknown**.
- **established.** Block 0x2bc is level descriptor 60 of the texture level table (0x280 + 60, three operands, word `0x00010ebc`), one of the 64 level descriptors (`docs/buzz.md`, "Level descriptor words").

## Sequencer register words

A sequencer word is `(reg << 24) | 0x8000 | enc(value)` with `enc(v) = (v & 0x3ff) | ((v >> 10) << 23)` (`ucode/buzz_isa.md`), so bit 23 set adds 1024 to the value. The values below are **established** by decoding the word and reading the sending function; the register meanings are those of `ucode/buzz_isa.md`.

| Word | Register | Value | Sender | Reading |
|---|---|---:|---|---|
| `0x278083ff` | 0x27, instruction write address | 2047 | `odsyRestartContext` (`odsy_ctxsw.o`), the last register writes before the final words of the restart | write address 2047, the last instruction RAM slot, which the loaders never write (`ucode/buzz_isa.md`, "Loading"); why the restart sets it: **unknown** |
| `0x280080ff` | 0x28, list slot | 255 | the same place | the list slot pointer is parked at 255; **unknown** whether that is the last slot or a null value |
| `0x2900812f` | 0x29 | 303 | `__glOdysseyImageMovePixelsCopy` (`ody_image_move.s`: the constant 303 goes to a context word, then into the word) | a routine entry: record 303 of `buzz_xform.bin` starts a 17-record routine (`ucode/buzz_routines.md`) |
| `0x298080c5` | 0x29 | 1221 | `__glOdysseyValidateProgram` and `__glOdysseySetProgram` (`ody_program.s`, source line 1308) | routine 1221, a 1-record routine in `buzz_xform.bin` |
| `0x29808062` | 0x29 | 1122 | `__glOdysseySetProgram` in the 4103 patch's libGLcore | **inferred** the same routine as 1221: the kernel's older copy of the program has records from 891 on 99 lower (`ucode/buzz_isa.md`, "Two copies"), and 1221 - 99 = 1122 |
| `0x310080f0` | 0x31, table index | 240 | `__glOdysseyInitLighting` | the index before a four-word block `0x908091bb` with four zero floats |
| `0x310080f4` | 0x31, table index | 244 | `__glOdysseyInitLighting` | the same four-word block at the next group of four |
| `0x310081e0` | 0x31, table index | 480 | `__glOdysseyValidateContext` | one of the two starts, 320 and 480, that the kernel's 30-group save loop skips (`docs/buzz.md`) |
| `0x34008010` | 0x34, table index | 16 | `odsyRestoreXform` (`odsy_ctxsw.o`) | the second block of the 68-word table (`docs/buzz.md`, pass 9) |
| `0x34008014` | 0x34, table index | 20 | `odsyRestoreXform` | the fifth block in the full replay |
| `0x34008024` | 0x34, table index | 36 | `odsyRestoreXform` | the third block in the full replay |
| `0x34008034` | 0x34, table index | 52 | `odsyRestoreXform` | the fourth block in the full replay |
| `0x35008000` | 0x35 | 0 | `__glOdysseyValidateContext` | the context default (`ucode/buzz_isa.md`); meaning **unknown** |

- **unknown: no shipped software or published source depends on it.** What registers 0x28, 0x31, 0x34 and 0x35 select on the board. The host sets them and never reads them back.

## Words that are not board commands

- **established.** `0x00010001` to `0x00010011` in `libGL.so` are GLX vendor-private request codes, not FIFO words. The library stores each into byte +4 of an X protocol request after setting request byte +1 to 16 or 17 (`X_GLXVendorPrivate`, `X_GLXVendorPrivateWithReply`), as in the code of `glXGetCurrentReadDrawableSGI` and its neighbours (`libGL.so`, 6.5.30m). The numbers are the SGI codes of the public GLX protocol header (X.Org `glxproto.h`): 0x10001 make-current-read, 0x10002 and 0x10003 create and destroy video source, 0x10004 get framebuffer configs, 0x10005 create context with config, 0x10006 create pixmap with config, 0x10007 and 0x10008 create and destroy pbuffer, 0x10009 change drawable attributes, 0x1000a get drawable attributes, 0x1000b join swap group, 0x1000c bind swap barrier, 0x1000d query maximum swap barriers, 0x1000e query hyperpipe network, 0x1000f query hyperpipe config, 0x10010 hyperpipe config, 0x10011 destroy hyperpipe config. The block rows 0x009, 0x00b, 0x00d and 0x00e of the inventory are the low ten bits of 0x10009, 0x1000b, 0x1000d and 0x1000e, so they are these codes too, not board blocks.
- **inferred.** `0xdeadbabe` in `odsy_fc_detach` (IP35 `odsy_init.o`) is a marker, not a command word. The routine stores the 64-bit literal at gp-30664 into a per-pipe slot (offset 768 plus 40 times bit 0 of the byte at record +1320), writes 1 to a record word at +0x85c8 and to board +0x107c, and stores 64 into a second slot (offset 776 plus the same 40 times bit 0). The scan finds the value only here, and it is an arbitrary 32-bit pattern outside every word family, which is why it reads as a marker; the slot's use by the board: **unknown**.
