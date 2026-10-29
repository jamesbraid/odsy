# Command words, one entry each

Release IRIX 6.5.30m. A command word is a 32-bit value the host stores into the command FIFO (`docs/registers.md`, 0x110000); the layouts are in `BUZZ.h` section 1. Every entry below starts with the full word, then says what it is, who stores it and how that was read. Senders are the routines whose `lui`/`ori` pair builds the constant in the N32 libGLcore (`usr/gfx/arch/IP30ODSY32/libGLcore.so`) or in the IP30 kernel objects. The labels are **established** (the constant and its sender read from the code) or **inferred** (a reading, with its reason). The older grouped tables are in `docs/tokens.md`.

## Vertex-position words stored to the FIFO

- `0x8080c800` (position slot, two operands, opcode 0x00, `libGLcore.so`): **established.**
  Built in 26 routines: `__glOdyim_Vertex2i` and `Vertex2s` with their vector, magnified, small-width and
  line forms, the display-list copies `__glOdylc_Vertex2i` and its bounding-box variants, and two image paths
  (`__glOdysseyImageMovePixelsDMAtoGfx`, `__glOdysseyProgramGenericConvolutionFilter`) that send a corner point.
  The kernel's `odsy_pnt2i` and `odsyDMAOps` store it too. **inferred** from the shared sender set that
  integer and short coordinates travel in one form, the board converting them.
- `0x8080c801` (position slot, two operands, opcode 0x01, `libGLcore.so`): **established.**
  The float twin of the previous word: 24 routines, `__glOdyim_Vertex2f` and `Vertex2d` with their vector,
  `_mag`, `_smallw` and `_line0` forms, and the `__glOdylc_Vertex2f` display-list copies. No kernel object
  builds it. Double-precision callers narrow to float before the store.
- `0x8080cc02` (position slot, three operands, opcode 0x02, `libGLcore.so`): **established.**
  Integer Vertex3 for `Vertex3i` and `Vertex3s` in 24 routines (immediate, display-list and bounding-box
  forms). Opposite to its float neighbour the scan finds no array path using it, so strided integer vertex
  arrays do not reach the board by this word.
- `0x8080cc03` (position slot, three operands, opcode 0x03, `libGLcore.so`): **established.**
  The busiest position word, built in 42 routines: the immediate and display-list Vertex3f and Vertex3d
  forms, and the vertex-array paths `__glOdysseyArraysInt_V3F`, `ArraysSep_C3F_V3F`, `ElementsInt_T2F_V3F`
  and their relatives, which step through client memory and send one word per vertex.
- `0x8080d004` (position slot, four operands, opcode 0x04, `libGLcore.so`): **established.**
  Integer Vertex4, sent by `__glOdyim_Vertex4i` and `Vertex4s` in 24 routines with the same
  `_mag`, `_smallw` and `_line0` specialisations as the other position words; the homogeneous w operand
  follows x, y and z.
- `0x8080d005` (position slot, four operands, opcode 0x05, `libGLcore.so`): **established.**
  Float Vertex4 in 26 routines. Besides `__glOdyim_Vertex4f` and `Vertex4d` it comes from the clipped-vertex
  senders `__glOdysseyClipCheck` and `__glOdysseySoftClipRenderTriangleFast`, which store clip-space
  vertices after software clipping; **inferred** that the board treats those as already homogeneous.

## Normal and texture-coordinate words stored to the FIFO

- `0xc18093ff` (normal slot, four operands, opcode 0x3ff, `libGLcore.so`): **established.**
  `__glOdysseyInitLighting` stores it once, ahead of the material words, with operands 0, 0, 1, 1; the scan
  finds no other sender. Bit 14 is clear, unlike every other attribute word, and the opcode is outside the
  data-type numbering; the choice made by opcode 0x3ff on the board is unknown.
- `0xc180cc16` (normal slot, three operands, opcode 0x16, `libGLcore.so`): **established.**
  Signed-byte normal, sent by `__glOdyim_Normal3b`, `Normal3bv` and the display-list `__glOdylc_Normal3b`
  forms, four routines in all. **inferred** that the board scales the raw byte operands to unit range, since the senders do no conversion.
- `0xc180cc17` (normal slot, three operands, opcode 0x17, `libGLcore.so`): **established.**
  Signed-short normal from six routines: the immediate and display-list `Normal3s` forms and the strided
  array routine `__glOdysseyArraysSep_N3S_V3F`, the only array path in libGLcore that carries short normals.
- `0xc180cc18` (normal slot, three operands, opcode 0x18, `libGLcore.so`): **established.**
  Signed-int normal sent by `__glOdyim_Normal3i`, `Normal3iv` and their display-list twins, four routines. It
  is the middle of the three integer forms, between short and the float word that follows.
- `0xc180cc19` (normal slot, three operands, opcode 0x19, `libGLcore.so`): **established.**
  Float normal built in 17 routines, the widest sender set in the normal slot: `Normal3f`, `Normal3d` and
  their vector forms, and the array routines that hold normals as floats. It is also the form
  `__glOdysseyInitLighting` implies for the default normal 0, 0, 1.
- `0xc280cc1c` (slot 2, three operands, opcode 0x1c): **established.**
  Stored by `odsyResetHwShadow` (`odsy_ctxsw.o`) as slot 2's default word when it rebuilds the vertex shadow;
  no routine in libGLcore builds it. The slot sits between the normal and texture slots and takes three
  operands. What attribute slot 2 carries is unknown (a secondary colour is consistent with the count).
- `0xc380c41e` (texture slot, one operand, opcode 0x1e, `libGLcore.so`): **established.**
  Integer TexCoord1 for `TexCoord1i` and `TexCoord1s` in eight routines: the immediate, vector and
  display-list forms. The first of the eight texture opcodes, which run 1-component to 4-component, integer
  before float.
- `0xc380c41f` (texture slot, one operand, opcode 0x1f, `libGLcore.so`): **established.**
  Float TexCoord1 from `__glOdyim_TexCoord1f`, `TexCoord1d` and their vector and display-list forms, eight
  routines. The float word of a pair always has bit 0 of the opcode set.
- `0xc380c820` (texture slot, two operands, opcode 0x20, `libGLcore.so`): **established.**
  Integer TexCoord2 (`TexCoord2i`, `TexCoord2s`) in eight routines, the s and t pair that a plain 2-D
  texture needs.
- `0xc380c821` (texture slot, two operands, opcode 0x21, `libGLcore.so`): **established.**
  Float TexCoord2, the most used texture word with twelve senders: `TexCoord2f`, `TexCoord2d`, their vector
  forms, and display-list copies.
- `0xc380cc22` (texture slot, three operands, opcode 0x22, `libGLcore.so`): **established.**
  Integer TexCoord3 from eight routines (`TexCoord3i`, `TexCoord3s` and vector and display-list forms).
  Three components select a 3-D texture or carry a projective coordinate.
- `0xc380cc23` (texture slot, three operands, opcode 0x23, `libGLcore.so`): **established.**
  Float TexCoord3 in eight routines, `TexCoord3f` and `TexCoord3d` with their vector and display-list
  forms.
- `0xc380d024` (texture slot, four operands, opcode 0x24, `libGLcore.so`): **established.**
  Integer TexCoord4 with the q operand last, from `TexCoord4i` and `TexCoord4s` in eight routines.
- `0xc380d025` (texture slot, four operands, opcode 0x25, `libGLcore.so`, `libGLcore.so`): **established.**
  Float TexCoord4 in ten routines, two more than the other texture words, because the clipped-vertex
  senders (`__glOdysseyClipCheck`) also use it for the projected texture coordinate they pass along.
- `0xc480c426` (slot 4, one operand, opcode 0x26): **established.**
  Stored by `odsyResetHwShadow` (`odsy_ctxsw.o`) as slot 4's default word, at four sites; no libGLcore routine
  builds it. Slot 4 sits between the texture and colour slots with a single operand; what it carries
  is unknown (a fog coordinate would fit the count).

## Colour and index words stored to the FIFO

- `0xc580c406` (colour slot, one operand, opcode 0x06, `libGLcore.so`): **established.**
  Integer colour index: `Indexi`, `Indexs` and `Indexub` with vector and display-list forms, 12 routines.
  The kernel textport's `odsy_color` and `ODSY_SET_GC` also store it to set its drawing colour index.
- `0xc580c407` (colour slot, one operand, opcode 0x07, `libGLcore.so`): **established.**
  Float colour index in nine routines (`Indexf`, `Indexd`, display-list forms) and in `__glOdysseyClipCheck`,
  which forwards the index of a clipped vertex.
- `0xc580cc08` (colour slot, three operands, opcode 0x08, `libGLcore.so`): **established.**
  Three unsigned bytes of RGB from `Color3ub`, `Color3ubv` and the display-list forms (four routines). It is
  also the one RGB colour word the kernel textport stores, in `ODSY_SET_GC`, where the 8-bit values are
  widened to 12 bits by repeating the nibble (`BUZZ.h`).
- `0xc580cc09` (colour slot, three operands, opcode 0x09, `libGLcore.so`): **established.**
  Unsigned-short RGB from `Color3us`, `Color3usv` and their display-list copies, the 16-bit form of
  the colour command.
- `0xc580cc0a` (colour slot, three operands, opcode 0x0a, `libGLcore.so`): **established.**
  Unsigned-int RGB, sent by `Color3ui` and `Color3uiv` in the immediate and display-list builds. 32-bit
  channels are passed unscaled; the scaling to the board's range is the board's work (inferred from the
  absence of any conversion in the senders).
- `0xc580cc0b` (colour slot, three operands, opcode 0x0b, `libGLcore.so`): **established.**
  Signed-byte RGB from `Color3b` and `Color3bv` (four routines); the signed forms follow the unsigned forms
  in the opcode order.
- `0xc580cc0c` (colour slot, three operands, opcode 0x0c, `libGLcore.so`): **established.**
  Signed-short RGB: `Color3s`, `Color3sv` and the display-list pair.
- `0xc580cc0d` (colour slot, three operands, opcode 0x0d, `libGLcore.so`): **established.**
  Signed-int RGB from `Color3i` and `Color3iv`, the last integer form before the float word.
- `0xc580cc0e` (colour slot, three operands, opcode 0x0e, `libGLcore.so`): **established.**
  Float RGB, the Color3 word with the most senders (12): `Color3f`, `Color3d`, vector and display-list forms.
- `0xc580d00f` (colour slot, four operands, opcode 0x0f, `libGLcore.so`): **established.**
  Unsigned-byte RGBA from `Color4ub`, `Color4ubv` and their display-list copies, the first of the seven
  Color4 forms.
- `0xc580d010` (colour slot, four operands, opcode 0x10, `libGLcore.so`): **established.**
  Unsigned-short RGBA from `Color4us`, `Color4usv` and display-list copies.
- `0xc580d011` (colour slot, four operands, opcode 0x11, `libGLcore.so`): **established.**
  Unsigned-int RGBA, sent by `Color4ui` and `Color4uiv` immediate and display-list forms.
- `0xc580d012` (colour slot, four operands, opcode 0x12, `libGLcore.so`): **established.**
  Signed-byte RGBA from `Color4b`, `Color4bv` and the display-list pair.
- `0xc580d013` (colour slot, four operands, opcode 0x13, `libGLcore.so`): **established.**
  Signed-short RGBA: `Color4s`, `Color4sv` and display-list copies.
- `0xc580d014` (colour slot, four operands, opcode 0x14, `libGLcore.so`): **established.**
  Signed-int RGBA from `Color4i` and `Color4iv`, immediate and display-list builds.
- `0xc580d015` (colour slot, four operands, opcode 0x15, `libGLcore.so`): **established.**
  Float RGBA with ten senders: `Color4f`, `Color4d` and their vector and display-list forms; the opcode that
  `__glOdysseyInitLighting` implies for default colours.

## Scratch-colour words stored to the FIFO

Slot 14 (top byte 0xce) is a second colour register: the `__glOdyim_Scratch*` entry points send the same
data types as slot 5 to it. What the board does with a scratch colour is unknown, so these entries state
who stores each word, not its effect.

- `0xce80c406` (scratch slot, one operand, opcode 0x06, `libGLcore.so`): **established.**
  Integer index for the scratch colour, sent by `__glOdyim_ScratchIndexi`, `ScratchIndexs` and `ScratchIndexub`
  with their vector forms, six routines.
- `0xce80c407` (scratch slot, one operand, opcode 0x07, `libGLcore.so`): **established.**
  Float index for the scratch colour from `ScratchIndexf` and `ScratchIndexd` with vector forms, four routines.
- `0xce80cc08` (scratch slot, three operands, opcode 0x08, `libGLcore.so`): **established.**
  Unsigned-byte scratch RGB, `ScratchColor3ub` and its vector form, two routines; the kernel's `ODSY_SET_GC`
  also stores this word.
- `0xce80cc09` (scratch slot, three operands, opcode 0x09, `libGLcore.so`): **established.**
  Unsigned-short scratch RGB from the two `ScratchColor3us` routines.
- `0xce80cc0a` (scratch slot, three operands, opcode 0x0a, `libGLcore.so`): **established.**
  Unsigned-int scratch RGB, `ScratchColor3ui` and `ScratchColor3uiv`.
- `0xce80cc0b` (scratch slot, three operands, opcode 0x0b, `libGLcore.so`): **established.**
  Signed-byte scratch RGB sent by the two `ScratchColor3b` entry points.
- `0xce80cc0c` (scratch slot, three operands, opcode 0x0c, `libGLcore.so`): **established.**
  Signed-short scratch RGB, from `ScratchColor3s` and `ScratchColor3sv`.
- `0xce80cc0d` (scratch slot, three operands, opcode 0x0d, `libGLcore.so`): **established.**
  Signed-int scratch RGB, two routines named `ScratchColor3i` and `ScratchColor3iv`.
- `0xce80cc0e` (scratch slot, three operands, opcode 0x0e, `libGLcore.so`): **established.**
  Float scratch RGB with four senders: `ScratchColor3f`, `ScratchColor3d` and the vector forms.
- `0xce80d00f` (scratch slot, four operands, opcode 0x0f, `libGLcore.so`): **established.**
  Unsigned-byte scratch RGBA, two routines (`ScratchColor4ub`, `ScratchColor4ubv`).
- `0xce80d010` (scratch slot, four operands, opcode 0x10, `libGLcore.so`): **established.**
  Unsigned-short scratch RGBA from the `ScratchColor4us` pair.
- `0xce80d011` (scratch slot, four operands, opcode 0x11, `libGLcore.so`): **established.**
  Unsigned-int scratch RGBA from the `ScratchColor4ui` pair.
- `0xce80d012` (scratch slot, four operands, opcode 0x12, `libGLcore.so`): **established.**
  Signed-byte scratch RGBA from the `ScratchColor4b` pair.
- `0xce80d013` (scratch slot, four operands, opcode 0x13, `libGLcore.so`): **established.**
  Signed-short scratch RGBA from the `ScratchColor4s` pair.
- `0xce80d014` (scratch slot, four operands, opcode 0x14, `libGLcore.so`): **established.**
  Signed-int scratch RGBA from the `ScratchColor4i` pair.
- `0xce80d015` (scratch slot, four operands, opcode 0x15, `libGLcore.so`): **established.**
  Float scratch RGBA, four senders: `ScratchColor4f`, `ScratchColor4d` and their vector forms.

## Material words stored to the FIFO

`__glOdysseyInitLighting` (`ody_lighting.s`) sends one four-float word for each of slots 6 to 13 with the
OpenGL default material values. Both the clip senders and `__glOdysseyInitLighting` build these constants.

- `0xc680d02f` (slot 6, four operands, opcode 0x2f, `libGLcore.so`): **established.**
  Operands 0.2, 0.2, 0.2, 1.0, the default ambient colour, sent by `__glOdysseyInitLighting`,
  `__glOdysseyClipCheck` and `__glOdysseySoftClipRenderTriangleFast`. **inferred** as the front-face ambient
  material because the values are the OpenGL defaults and the slot opens the group.
- `0xc780d030` (slot 7, four operands, opcode 0x30, `libGLcore.so`): **established.**
  Operands 0.8, 0.8, 0.8, 1.0, the default diffuse colour, from the same three routines.
  `odsyResetHwShadow` in the kernel also stores this word into the vertex shadow. **inferred** front diffuse.
- `0xc880d031` (slot 8, four operands, opcode 0x31, `libGLcore.so`): **established.**
  Operands 0, 0, 0, 1, the default specular colour, also stored by `odsyResetHwShadow`.
  **inferred** front-face specular.
- `0xc980d032` (slot 9, four operands, opcode 0x32, `libGLcore.so`): **established.**
  Operands 0, 0, 0, 1, the default emission colour, stored by `__glOdysseyInitLighting` and the clip senders. **inferred** front-face emission, the last of
  the front group.
- `0xca80d035` (slot 10, four operands, opcode 0x35, `libGLcore.so`): **established.**
  Operands 0.2, 0.2, 0.2, 1.0, the default ambient colour of the second set, again from `__glOdysseyInitLighting`; **inferred** back-face ambient.
- `0xcb80d036` (slot 11, four operands, opcode 0x36, `libGLcore.so`): **established.**
  Operands 0.8, 0.8, 0.8, 1.0; `odsyResetHwShadow` stores this word too. **inferred** back-face diffuse.
- `0xcc80d037` (slot 12, four operands, opcode 0x37, `libGLcore.so`): **established.**
  Operands 0, 0, 0, 1, also stored by `odsyResetHwShadow`. **inferred** back-face specular.
- `0xcd80d038` (slot 13, four operands, opcode 0x38, `libGLcore.so`): **established.**
  Operands 0, 0, 0, 1, the last of the eight material words, stored by `__glOdysseyInitLighting`; **inferred** back-face emission.

## Slot-16 default words stored to the FIFO

`odsyResetHwShadow` (`odsy_ctxsw.o`) gives vertex slot 16 four default words. No libGLcore routine builds
them, so each entry says only where the kernel stores it; what slot 16 carries is unknown.

- `0xd080c433` (slot 16, one operand, opcode 0x33, `odsy_ctxsw.o`): **established.**
  First of the four slot-16 words, stored at four sites in `odsyResetHwShadow`, the routine that rebuilds the vertex shadow; bit 14 and bit 15 are both set,
  unlike the 0xc0-style slots, and the opcode 0x33 sits in the gap left by the material numbering.
- `0xd080cc34` (slot 16, three operands, opcode 0x34, `odsy_ctxsw.o`): **established.**
  The three-operand word of the same slot, stored right after 0x33 in `odsyResetHwShadow` at four sites.
- `0xd080c439` (slot 16, one operand, opcode 0x39, `odsy_ctxsw.o`): **established.**
  A second one-operand word for slot 16, stored by `odsyResetHwShadow` after the 0x34 word at four sites.
- `0xd080cc3a` (slot 16, three operands, opcode 0x3a, `odsy_ctxsw.o`): **established.**
  The last of the four, stored by `odsyResetHwShadow` at four sites; the pair 0x39 and 0x3a repeats the one and
  three operand shapes of 0x33 and 0x34, which suggests two groups of the same two attributes.

## Words that are not board commands

- `0xdeadbeef` (marker, 0xf operands in the attribute decoding, `libGLcore.so`): **established.**
  A fill pattern, not a command: 165 sites in 15 binaries load it, led by
  `__glOdysseyGetCurrentTexture`, as the value stored into unused slots of a record. Its top byte falls inside the
  attribute family, which is why the scan lists it as a word.
- `0xdeadbabe` (marker, 0xe operands in the attribute decoding): **inferred.**
  A marker in IP35 `odsy_fc_detach` (`odsy_init.o`): the routine stores the 64-bit literal at gp-30664 into a
  per-pipe slot at offset 768 plus 40 times a record bit, writes 1 to board register 0x107c and records 64
  in a second slot. It occurs nowhere else and is an arbitrary pattern outside every word family.


## Raster-state words stored to the FIFO

Each word is `0x10000 | count << 10 | id`, a class-1 register write with its operand count. The senders are
libGLcore's attribute setters (`ody_attrib.s`), which keep a shadow word, rewrite one field and store the block
after the settle group, and the kernel's `odsyRestoreRaster`, which replays the shadow after a lost context.

- `0x0001041e` (block 0x01e, one operand, `libGLcore.so`): **established.**
  The alpha test. Bits 14:12 hold the comparison as the GL enum minus 0x200 and bits 11:0 the reference
  value clamped to 0 to 1 and scaled by 4096; `__glOdyim_AlphaFunc` builds the word from the shadow at context
  +31784, and I read the shift by 12 and the 4096.0 multiply in its code. `odsyRestoreRaster` replays it from
  hardware-shadow offset 0xb0.
- `0x00010420` (block 0x020, one operand, `libGLcore.so`): **established.**
  The depth test function. `__glOdyim_DepthFunc` rewrites only bits 2:0 of the shadow at context +31792 with the
  GL comparison enum minus 0x200 and stores the whole word; `__glOdysseyClear` stores it as well.
- `0x00010422` (block 0x022, one operand, `libGLcore.so`): **established.**
  The logic operation in bits 3:0, the GL enum minus 0x1500 from `__glOdyim_LogicOp`; the kernel textport's
  `ODSY_SET_GC` stores the constant for GL_COPY, and the image-chain routines resend it before a pixel pass.
- `0x00010415` (block 0x015, one operand, `libGLcore.so`): **established.**
  The polygon mode: bits 3:2 front face and bits 1:0 back face, each GL enum minus 0x1b00, from
  `__glOdyim_PolygonMode`. `__glOdysseyClear` and `__glOdyim_PolygonOffsetEXT` also store it. Replay reads
  hardware-shadow offset 0x8c.
- `0x00010c48` (block 0x048, three operands, `libGLcore.so`): **established.**
  The line stipple: two operands carry the 16-bit pattern in bits 15:0 and the third the repeat factor minus one,
  clamped to 1 through 256, from `__glOdyim_LineStipple`. `odsyRestoreRaster` replays it from offset 0xcc.
- `0x00010458` (block 0x058, one operand, `libGLcore.so`): **established.**
  The polygon offset: bits 24:0 are a signed depth offset in depth-buffer units clamped to plus or minus 2^24
  and bits 31:25 are kept from the shadow; `__glOdyim_PolygonOffsetEXT` computes it from factor, bias and the
  depth range. Replayed from hardware-shadow offset 0xd8.
- `0x0001081d` (block 0x01d, two operands, `libGLcore.so`): **established.**
  The scissor box as two operands, each a 12-bit field in bits 23:12 and one in bits 11:0; `__glOdyim_Clear` and `__glOdysseyAccumClose` send it and `__glOdysseyValidateScissor` passes the same four fields to ioctl
  0x6f64000d. Replay reads hardware-shadow offset 0xa8.
- `0x00013c4e` (block 0x04e, sixteen operands, `libGLcore.so`): **established.**
  Rows 31 down to 16 of the 32 by 32 polygon stipple, one 32-bit row per operand, written by
  `__glOdysseyConvertStipple`, which reverses the GL row order first; the kernel's `odsy_drawbitmap` sends the
  same block for glyph stipples.
- `0x00013c4f` (block 0x04f, sixteen operands, `libGLcore.so`): **established.**
  Rows 15 down to 0 of the polygon stipple, sent straight after 0x04e by `__glOdysseyConvertStipple` and, for
  glyph bitmaps, by the kernel's `odsy_drawbitmap`; replay reads hardware-shadow offset 0x40.
- `0x0001043f` (block 0x03f, one operand, `libGLcore.so`): **inferred.**
  The stipple mode word, sent before the two pattern blocks from context +31736 by `__glOdysseyConvertStipple`;
  the kernel textport stores the constant 6. What 6 selects is **unknown**.
 uses for primitive-relative stipple with the tall
  glyph aspect.
- `0x0001204b` (block 0x04b, eight operands, `libGLcore.so`): **inferred.**
  The screen mask: four rectangles as minimum and maximum words with x in bits 23:12 and y in bits 11:0.
  `odsyClipPush` (`odsy_clip.o`) stores it with the clip, and the textport's start-up stream sends 0x4ff3ff for
  the first maximum, 1279 by 1023 for its 1280 by 1024 screen.
- `0x0001084a` (block 0x04a, two operands, `libGLcore.so`): **inferred.**
  The line width and point size, one operand each; `__glOdysseyValidateHardware` sends it from the context and
  the kernel textport start-up stream stores 0x80 for both, which would read as 1.0 in a fixed-point
  number with seven fraction bits (inferred from the value alone).
- `0x00010c21` (block 0x021, three operands, `odsy_tport.o`): **established.**
  The constant colour block. `ODSY_SET_GC` stores a control word and then the colour as two packed words, and
  libGLcore's `__glOdysseyValidateHardware` sends the same block with what reads as the blend factors as its first operand (inferred from the GL blend paths). The textport's fills use the colour as the drawing colour.
- `0x00011023` (block 0x023, four operands, `odsy_tport.o`): **established.**
  Stored by `ODSY_SET_GC` twice and by `__glOdysseyValidateContext` in libGLcore, beside the sequencer
  registers 0x22 and 0x23 that choose colour-index or RGB handling (`docs/words.md`, sequencer section).
- `0x00011017` (block 0x017, four operands, `odsy_tport.o`): **established.**
  The window descriptor sent when the graphics context or clip changes: four operands copied from context
  +6948 onwards by `__glOdysseyValidateHardware`, stored once by `ODSY_SET_GC` and by `odsyRestartContext`.
  `__glOdysseySwapBuffers` ORs bit 23 into the third operand of the last of its three sends.
- `0x00010424` (block 0x024, one operand, `odsy_tport.o`): **established.**
  Stored by `ODSY_SET_GC`, `odsyPushBufferSelect` (`odsy_drawable.o`) and replayed by `odsyRestoreRaster`; its use by the buffer-select push suggests, inferred, that it carries the drawable's draw-buffer choice.

## Framing and synchronisation words stored to the FIFO

- `0x00010019` (block 0x019, no operand, `libGLcore.so`): **inferred.**
  The pipeline flush of the settle sequence (`BUZZ.h`): built in `__glOdysseyFlush` and `__glOdysseyFinish`, in the
  pipe-memory object opens, and in the kernel's `odsyPushBufferSelect`, `odsyDMAOp` and textport. The reading
  rests on that sender set: it appears at buffer swaps, make-current and pixel copies, never in
  ordinary primitive streams.
- `0x00010046` (block 0x046, no operand, `libGLcore.so`): **inferred.**
  The filler of the settle sequence: two or four copies follow each wait word, sent in about forty libGLcore routines
  and in `odsyInitCfifo` (`odsy_init.o`) just before the microcode download, where the routine waits 2000 us.
  A no-op reading is inferred from the pattern of repeats.
- `0x00010443` (block 0x043, one operand, `libGLcore.so`): **inferred.**
  The wait that opens each settle group; its operand is the count 250 or 150. Built in about forty libGLcore routines
  and in `odsyClipPush`, `gf_OdsyPcxSwap`, `odsyRestartContext` and `odsyDMAOps` of the kernel; read as a wait that
  lets the primitive in flight drain before state lands.
- `0x00014400` (primitive begin, one operand, `libGLcore.so`): **established.**
  Bit 14 set with id 0, one operand: libGLcore stores it from `__glOdyim_Begin` and the clear and clip routines, and the
  kernel from `odsy_drawbitmap`, `odsy_pnt2i`, `gf_OdsyPcxSwap`, `odsyRestoreGfe` and `odsyDMAOps`; the operand is
  the primitive type.
- `0x00014001` (primitive end, no operand, `libGLcore.so`): **established.**
  The matching end word, built in `__glOdyim_End` and `sseyDoTriangleClip`, in `gfP_OdsyClearBuffer`, `odsyDMAOp` and
  the textport paths, and replayed with 0x14400 by `odsyRestoreGfe`; libGLcore flags it to insert a short settle
  group before the next register block.
- `0x00010444` (block 0x044, one operand, `odsy_ctxsw.o`): **established.**
  Appears only around context save and DMA: stored by `gf_OdsyPcxSwap` and twice by `odsyDMAOps`, and by
  libGLcore's `__glOdysseyVertexWARClip`; the register's effect is not known from any sender.
- `0x00010850` (block 0x050, two operands, `odsy_ctxsw.o`): **established.**
  Context select: `gf_OdsyPcxSwap` stores it twice and `odsyRestartContext` once, with operands
  ((slot << 12) AND 0x7f000) OR x OR 0xf and 0 (`BUZZ.h`, context save).
- `0x00010854` (block 0x054, two operands, `odsy_init.o`): **established.**
  Built by `odsyInitCfifo` alone, at the start of the command-FIFO set-up, followed by five doubleword stores and a
  2000 microsecond delay; the operands 0 and 0x0fffffff are built with `lui`/`ori` just before the doubleword stores. What the board does with them is unknown.
- `0x00010658` (block 0x258, one operand, `odsy_dma.o`): **established.**
  Sent with operand 0x00120000 before a rectangle copy, by `odsyCopyRectBody`, the image paths
  (`__glOdysseyImageMovePixelsDMAtoGfx`) and the kernel's `odsyDMAOp` and `odsyRestartContext`.
- `0x00010a5a` (block 0x25a, two operands, `odsy_dma.o`): **established.**
  The tag write-back block: operand 0 is a host location ORed with 0x8000 and operand 1 a 16-bit tag. Built by
  `__glOdyGetFromHardware`, `__glOdysseyFinish`, the pipe-memory object closes and the kernel's `odsyDMAOp` and `odsyDMAOps`.
  **inferred** that the board writes the tag to that location when it reaches the word.
- `0x00010840` (block 0x040, two operands, `odsy_clip.o`): **established.**
  Part of the clip push: `odsyClipPush` stores it twice with a doubleword holding the board record's word and a
  drawable word, and `__glOdysseySetDrawbuf`, `__glOdysseySwapBuffers` and `__glOdysseyFinish` build it in
  libGLcore.
- `0x00010841` (block 0x041, two operands, `odsy_clip.o`): **established.**
  The drawable origin: `gf_OdsyValidateClip` fills the low 13 bits of its two operands from the draw
  drawable's x and y, and `odsyClipPush` stores the word; `__glOdysseyImageMovePixelsCopy` and
  `__glOdysseyFinish` send it in libGLcore.

## Sequencer register words stored to the FIFO

A sequencer word is `(reg << 24) | 0x8000 | enc(value)`, where `enc(v)` is the low ten bits of v with higher bits moved up
to bit 23 (`ucode/buzz_isa.md`), so bit 23 adds 1024 to the value. The host never reads these registers back.

- `0x22008000` (register 0x22, value 0, `odsy_tport.o`): **inferred.**
  `ODSY_SET_GC` stores it twice in the textport's state set-up, and the X module sends 0 here before RGB drawing
  (`docs/opengl.md`); every site that sends an RGB colour word pairs it with this register at 0 and with 0x23 at
  2, so register 0x22 reads as half of a colour-handling mode pair.
- `0x22008001` (register 0x22, value 1, `odsy_tport.o`): **inferred.**
  `odsy_color` stores it before it sets a colour index: the pair with `0xc580c406` at every sender makes value 1 the
  index-colour setting of the mode register that RGB drawing holds at 0.
- `0x23008002` (register 0x23, value 2, `libGLcore.so`): **inferred.**
  The RGB-side value of the second mode register: the X module sends 2 here before RGB drawing and the GL
  context default for this register, stored by `__glOdysseyInitDefaultValues`, is 2 (`ucode/buzz_isa.md`). No routine in the scanned kernel objects builds this
  word, so the entry rests on `odyssey.so` and libGLcore sites.
- `0x23008003` (register 0x23, value 3, `odsy_tport.o`): **inferred.**
  Stored by `odsy_color` beside 0x22008001; with it the index-colour pair is (1, 3) at every sender of the index
  colour word.
- `0x2600807f` (register 0x26, value 127, `odsy_init.o`): **inferred.**
  Stored by `odsyInitCfifo` before the microcode load. 127 is one of the entry numbers that libGLcore's
  `AddProgram` places in its lists, so the register reads as a routine address.
- `0x27008000` (register 0x27, value 0, `odsy_init.o`): **established.**
  Sets the instruction write address to 0. `odsyInitCfifo` stores it before the first of 2048 six-word records of the
  transform microcode, and `odsyDownloadUcode` (`odsy_ucode.o`) stores the same register with its own start for
  later partial loads.
- `0x278083ff` (register 0x27, value 2047, `odsy_ctxsw.o`): **established.**
  `odsyRestartContext` stores it among its last register writes, parking the instruction write address at the last
  slot of the instruction RAM, which the loaders never write. The reason the restart does this is unknown.
- `0x28008000` (register 0x28, value 0, `odsy_ctxsw.o`): **inferred.**
  `odsyRestoreXform` stores it twice while it replays the transform state; register 0x28 reads as the list
  slot pointer of the program list, here at its first slot.
- `0x280080ff` (register 0x28, value 255, `odsy_ctxsw.o`): **inferred.**
  The list slot pointer parked at 255, sent by `odsyRestartContext` beside the 2047 write-address word; whether 255 is the last slot or a null
  marker is unknown. The scan finds no sender in the scanned routine names, only the constant's sites.
- `0x2900812f` (register 0x29, value 303, `odyssey.so`): **established.**
  A routine entry: `__glOdysseyImageMovePixelsCopy` stores the constant 303 to a context word and then sends this
  word, so record 303 of `buzz_xform.bin` starts a 17-record routine (`ucode/buzz_routines.md`).
- `0x2900819a` (register 0x29, value 410, `odsy_ctxsw.o`): **established.**
  Sent by `odsyRestoreXform` around a data load: lighting sets register 0x32 to 24, sends `0x8e809015` with four floats
  and runs entry 410 so that records 410 to 417 store them at data address 24; the kernel's restore sends the same
  entry.
- `0x29808062` (register 0x29, value 1122, `libGLcore.so`): **inferred.**
  The 4103 patch's libGLcore sends it from `__glOdysseySetProgram`; the older kernel copy of the program has records
  from 891 on 99 lower, and 1221 minus 99 is 1122, so this is the same one-record routine as 1221.
- `0x298080c5` (register 0x29, value 1221, `libGLcore.so`): **established.**
  Routine 1221 of `buzz_xform.bin`, a single-record routine, sent by `__glOdysseyValidateProgram` and
  `__glOdysseySetProgram` (`ody_program.s`) as the program-entry word.
- `0x2e008380` (register 0x2e, value 896, `odsy_init.o`): **established.**
  Stored by `odsyInitCfifo` before the microcode load and by the GL context default
  (`__glOdysseyInitDefaultValues`) with the same value 896. It is not a routine address, since it does not move
  with the 99-record insertion; the register's effect is unknown.
- `0x3000c02e` (register 0x30, value 46, `odsy_ctxsw.o`): **established.**
  Bits 15:14 are 11, unlike the others. `odsyResetHwShadow`, `odsyRestoreGfe` (four sites), `odsyRestoreVB`
  (seventeen sites) and `odsyRestoreVertex` use it as the count-0 word that must end a replayed vertex; libGLcore sends
  its twin `0x2f00c02e` at 26 clipped-vertex sites.
- `0x31008000` (register 0x31, index 0, `odsy_ctxsw.o`): **established.**
  The first group start of the 512-word table behind register 0x31 in the full-replay loop of `odsyRestoreXform`, which sends
  the 16-word block `0x9080bda2` after each index; no scanned routine name builds this exact word.
- `0x310080f0` (register 0x31, index 240, `libGLcore.so`): **established.**
  `__glOdysseyInitLighting` stores it as the table index before a four-word block `0x908091bb` of zero floats.
- `0x310080f4` (register 0x31, index 244, `libGLcore.so`): **established.**
  The same four-word block of zeros at the next group of four, from `__glOdysseyInitLighting`.
- `0x31008140` (register 0x31, index 320, `odsy_clip.o`): **established.**
  `odsyClipPush` stores it; 320 is one of the two group starts, with 480, that the kernel's 30-group save loop skips.
- `0x310081e0` (register 0x31, index 480, `libGLcore.so`): **established.**
  `__glOdysseyValidateContext` stores it; 480 is the second skipped start of the kernel's save loop, so the host
  writes the group the kernel does not save.
- `0x32008018` (register 0x32, value 24, `odsy_ctxsw.o`): **inferred.**
  Sent by `odsyRestoreXform` and by libGLcore's lighting code before a data load; 24 is the data-memory
  address the following words fill, and lighting resets the register to 0 afterwards.
- `0x34008000` (register 0x34, index 0, `odsy_ctxsw.o`): **established.**
  Opens the 68-word table replay: `odsyRestoreXform` and `odsyRestartContext` store index 0 and then block
  `0x9080bdc8` with 16 words from the hardware shadow.
- `0x34008010` (register 0x34, index 16, `odsy_ctxsw.o`): **established.**
  Index 16 of the 68-word table, stored by `odsyRestoreXform` before block `0x908091df` with 4 words, the second block of the table.
- `0x34008014` (register 0x34, index 20, `odsy_ctxsw.o`): **established.**
  Index 20, the fifth block of the full replay in `odsyRestoreXform`.
- `0x34008024` (register 0x34, index 36, `odsy_ctxsw.o`): **established.**
  Index 36, the third block of the full replay, which carries 16 words in `odsyRestoreXform`.
- `0x34008034` (register 0x34, index 52, `odsy_ctxsw.o`): **established.**
  Index 52, the fourth block of the full replay in `odsyRestoreXform`.
- `0x35008000` (register 0x35, value 0, `libGLcore.so`): **established.**
  The context default that `__glOdysseyValidateContext` stores for register 0x35 (`ucode/buzz_isa.md`); its meaning is unknown.

## GLX request-code words stored by libGL (not command words)

These words are not FIFO commands. `libGL.so` (the IP30 build under `usr/gfx/arch/IP30ODSY`) stores each into byte +4 of an X protocol request after setting request byte +1 to 16 or 17 (`X_GLXVendorPrivate`, `X_GLXVendorPrivateWithReply`), so the number is a GLX opcode. The names come from the numbering of the public GLX protocol header (X.Org `glxproto.h`) and are **inferred**; the store address and the routine that the symbol table puts it in are **established**, and where the symbol is an exported stub next to the real routine that is said so.

- `0x00010001` (GLX vendor-private code, `libGL.so`): **inferred.**
  The `ori` that completes the constant is at 0x0d824468, inside the code the symbol table attributes to
  `glXGetCurrentReadDrawableSGI`. By the header numbering it is `X_GLXvop_MakeCurrentReadSGI`, the request
  that makes a context current with separate draw and read drawables.
- `0x00010002` (GLX vendor-private code, `libGL.so`): **inferred.**
  The `ori` that completes the constant is at 0x0d824c74, inside the code the symbol table attributes to
  `glXCreateGLXVideoSourceSGIX`. By the header numbering it is `X_GLXvop_CreateGLXVideoSourceSGIX`,
  creating a video-source object on the server.
- `0x00010003` (GLX vendor-private code, `libGL.so`): **inferred.**
  The `ori` that completes the constant is at 0x0d82491c, inside the code the symbol table attributes to
  `glXDestroyGLXVideoSourceSGIX`. By the header numbering it is `X_GLXvop_DestroyGLXVideoSourceSGIX`,
  destroying that video-source object.
- `0x00010004` (GLX vendor-private code, `libGL.so`): **inferred.**
  The `ori` that completes the constant is at 0x0d8382dc, inside the code the symbol table attributes to
  `glXGetCurrentDrawableEXT`. By the header numbering it is `X_GLXvop_GetFBConfigsSGIX`, listing a
  screen's framebuffer configurations; the routine that holds the store is an unnamed one that follows the
  exported stub, with a loop over 32-byte configuration records.
- `0x00010005` (GLX vendor-private code, `libGL.so`): **inferred.**
  The `ori` that completes the constant is at 0x0d80fc3c, inside the code the symbol table attributes to
  `glXMakeCurrentReadSGI`. By the header numbering it is `X_GLXvop_CreateContextWithConfigSGIX`, creating
  a context from a framebuffer configuration.
- `0x00010006` (GLX vendor-private code, `libGL.so`): **inferred.**
  The `ori` that completes the constant is at 0x0d827720, inside the code the symbol table attributes to
  `glXCreateGLXPixmapWithConfigSGIX`. By the header numbering it is
  `X_GLXvop_CreateGLXPixmapWithConfigSGIX`, creating a GLX pixmap tied to a framebuffer configuration.
- `0x00010007` (GLX vendor-private code, `libGL.so`): **inferred.**
  The `ori` that completes the constant is at 0x0d823ca4, inside the code the symbol table attributes to
  `glXCreateGLXPbufferSGIX`. By the header numbering it is `X_GLXvop_CreateGLXPbufferSGIX`, creating an
  off-screen pixel buffer.
- `0x00010008` (GLX vendor-private code, `libGL.so`): **inferred.**
  The `ori` that completes the constant is at 0x0d8214e0, inside the code the symbol table attributes to
  `glXDestroyGLXPbufferSGIX`. By the header numbering it is `X_GLXvop_DestroyGLXPbufferSGIX`, destroying a
  pixel buffer.
- `0x00010009` (GLX vendor-private code, `libGL.so`): **inferred.**
  The `ori` that completes the constant is at 0x0d820e18, inside the code the symbol table attributes to
  `glXSelectEventSGIX`. By the header numbering it is `X_GLXvop_ChangeDrawableAttributesSGIX`, changing a
  drawable's attributes, which is how an event mask is selected on a pixel buffer.
- `0x0001000a` (GLX vendor-private code, `libGL.so`): **inferred.**
  The `ori` that completes the constant is at 0x0d821064, inside the code the symbol table attributes to
  `__glXGetDrawableAttributes`. By the header numbering it is `X_GLXvop_GetDrawableAttributesSGIX`,
  reading a drawable's attributes back.
- `0x0001000b` (GLX vendor-private code, `libGL.so`): **inferred.**
  The `ori` that completes the constant is at 0x0d839934, inside the code the symbol table attributes to
  `glXJoinSwapGroupSGIX`. By the header numbering it is `X_GLXvop_JoinSwapGroupSGIX`, joining a drawable
  to a swap group.
- `0x0001000c` (GLX vendor-private code, `libGL.so`): **inferred.**
  The `ori` that completes the constant is at 0x0d839a60, inside the code the symbol table attributes to
  `glXBindSwapBarrierSGIX`. By the header numbering it is `X_GLXvop_BindSwapBarrierSGIX`, binding a
  drawable to a swap barrier.
- `0x0001000d` (GLX vendor-private code, `libGL.so`): **inferred.**
  The `ori` that completes the constant is at 0x0d839b90, inside the code the symbol table attributes to
  `glXQueryMaxSwapBarriersSGIX`. By the header numbering it is `X_GLXvop_QueryMaxSwapBarriersSGIX`, asking
  the server how many swap barriers a screen supports.
- `0x0001000e` (GLX vendor-private code, `libGL.so`): **inferred.**
  The `ori` that completes the constant is at 0x0d83a548, inside the code the symbol table attributes to
  `glXQueryHyperpipeNetworkSGIX`. By the header numbering it is `X_GLXvop_QueryHyperpipeNetworkSGIX`,
  listing the hyperpipe network.
- `0x0001000f` (GLX vendor-private code, `libGL.so`): **inferred.**
  The `ori` that completes the constant is at 0x0d83aca8, inside the code the symbol table attributes to
  `glXQueryHyperpipeConfigSGIX`. By the header numbering it is `X_GLXvop_QueryHyperpipeConfigSGIX`,
  querying one hyperpipe configuration.
- `0x00010010` (GLX vendor-private code, `libGL.so`): **inferred.**
  The `ori` that completes the constant is at 0x0d83a880, inside the code the symbol table attributes to
  `glXHyperpipeConfigSGIX`. By the header numbering it is `X_GLXvop_HyperpipeConfigSGIX`, installing a
  hyperpipe configuration.
- `0x00010011` (GLX vendor-private code, `libGL.so`): **inferred.**
  The `ori` that completes the constant is at 0x0d83aafc, inside the code the symbol table attributes to
  `glXDestroyHyperpipeConfigSGIX`. By the header numbering it is `X_GLXvop_DestroyHyperpipeConfigSGIX`,
  destroying a hyperpipe configuration.
- `0x00010000` (constant 0x10000, `libGL.so`): **inferred.**
  Not a command: 37 sites in 25 binaries, led by `glXSwapIntervalSGI` in libGL, load a 64 KB value with `lui` as an
  address offset or mask, the usual way MIPS code builds the constant. It lies one step below the GLX vendor-private
  numbers (0x10001 upwards), which is why the word scan lists it.

## Texture, post-filter and level-descriptor words stored to the FIFO

- `0x00011c16` (block 0x016, seven operands, `libGLcore.so`): **established.**
  The texture mode block, TEXMODE0 to TEXMODE6, sent by `__glOdysseyValidateHardware` when the texture dirty bit
  0x200 is set. The setters (`__glOdysseyTextureSetMinFilter`, `SetSWrap` and their neighbours) rewrite single
  fields of the texture object's shadow; the kernel replays the block from hardware-shadow offset 0x14c in
  `odsyRestoreRaster`. Field layouts are in `BUZZ.h` section 2.
- `0x0001141b` (block 0x01b, five operands, `libGLcore.so`): **established.**
  The texture environment block, sent from `__glOdysseyValidateHardware` when dirty bit 0x100 is set; word 0
  bits 2:0 take the environment mode (replace 1, modulate 2, decal 3, from `__glOdysseyTextureSetOp`). Replayed from
  hardware-shadow offset 0x138 by `odsyRestoreRaster`.
- `0x00011013` (block 0x013, four operands, `libGLcore.so`): **established.**
  The level-of-detail limits: operands 0 and 1 are the S and T biases and 2 and 3 the minimum and maximum LOD, each
  a 14-bit two's-complement value with eight fraction bits from `floatToS58_Clamp`. `__glOdysseyValidateHardware`
  sends it when dirty bit 0x4000 is set, and `odsyRestoreRaster` replays it from offset 0x1bac.
- `0x00010c3e` (block 0x03e, three operands, `libGLcore.so`): **established.**
  The texture offset block, sent when dirty bit 0x8000 is set. The only writer of its source words
  (`SetTexOffsetValues`) zeroes them for any border value, so the driver always sends three zero operands; the
  kernel replays it from offset 0x11f4. What the fields select is unknown.
- `0x00012030` (block 0x030, eight operands, `libGLcore.so`): **established.**
  The first of four eight-operand post-filter blocks 0x030 to 0x033, each a scale and bias pair in signed 3.12
  per colour channel; mode 1 of the post-filter mode word sends all four from the image-processing state
  (`__glOdysseyValidateHardware`), and `odsyRestoreRaster` replays them from hardware-shadow offset 0x1174.
- `0x00012031` (block 0x031, eight operands, `libGLcore.so`): **established.**
  Second of the four mode-1 post-filter blocks, sent straight after 0x030 with the next eight words of the
  shadow region; the kernel's `odsyRestoreRaster` sends it twice, once in each replay path.
- `0x00012032` (block 0x032, eight operands, `libGLcore.so`): **established.**
  Third of the four mode-1 post-filter blocks, again from `__glOdysseyValidateHardware` and replayed twice by `odsyRestoreRaster`.
- `0x00012033` (block 0x033, eight operands, `libGLcore.so`): **established.**
  Fourth and last of the mode-1 post-filter blocks, following 0x032 in `__glOdysseyValidateHardware`
  and in both replay paths of `odsyRestoreRaster`.
- `0x0001203b` (block 0x03b, eight operands, `libGLcore.so`): **established.**
  The mode-2 post-filter layout: one set of eight words from context 0x8cec, which `__glOdysseyTextureActivate`
  writes after copying the texture object's post-filter scale and bias, so texture post-filtering goes to this block.
  `odsyRestoreRaster` replays it.
- `0x0001083d` (block 0x03d, two operands, `odsy_ctxsw.o`): **established.**
  The mode-3 post-filter layout: two words (a scale of 1.0 as 0x1000 and a bias of 0, the identity) that the context's
  default-state routine writes; `odsyRestoreRaster` replays it. No libGLcore routine builds the word by name,
  so the sender evidence is the kernel replay only.
- `0x00013c28` (block 0x028, sixteen operands, `libGLcore.so`): **established.**
  First of the four sixteen-operand blocks 0x028 to 0x02b that `__glOdysseyValidateHardware` sends from the
  64-word shadow region at context 0x1070, `odsyRestoreRaster` replaying them from hardware-shadow offset 0x1070. What
  the sixteen words hold is unknown; the size suggests a 4 by 4 matrix per block.
- `0x00013c29` (block 0x029, sixteen operands, `libGLcore.so`): **established.**
  Second of the four sixteen-operand blocks, from the next sixteen words of the shadow region, in
  `__glOdysseyValidateHardware` and twice in `odsyRestoreRaster`; contents unknown.
- `0x00013c2a` (block 0x02a, sixteen operands, `libGLcore.so`): **established.**
  Third of the four sixteen-operand blocks, sent after 0x029 in `__glOdysseyValidateHardware`; contents unknown.
- `0x00013c2b` (block 0x02b, sixteen operands, `libGLcore.so`): **established.**
  Fourth of the sixteen-operand set, ending the mode in which the 64 shadow words go out as four blocks, from
  `__glOdysseyValidateHardware`; contents unknown.
- `0x0001103a` (block 0x03a, four operands, `odsy_ctxsw.o`): **established.**
  The four-word layout of the same 64-word region, chosen by the mode word at 0x106c of the shadow (3 selects this one);
  libGLcore sends it only from `ody_context.s` and the kernel's `odsyRestoreRaster` replays it. Contents unknown.
- `0x00013c38` (block 0x038, sixteen operands, `odsy_ctxsw.o`): **established.**
  The one-block layout of the 64-word region: mode 2 sends all sixteen words as a single block. Built in
  `odsyRestoreRaster`; libGLcore's `__glOdysseyValidateHardware` has the same constant. Contents unknown.
- `0x00010ebc` (block 0x2bc, three operands, `libGLcore.so`): **established.**
  Level descriptor 60 of the 64-entry level table (0x280 + 60), a block `DownsampleTextureThruHW` and
  `__glOdysseyImageMovePixelsTexture` fill and send to render into a texture level; `__glOdysseyGetCurrentTexture` also builds it.
  Word 0 is the board address of the level, word 1 the pitch in tiles (inferred, `docs/buzz.md`).
- `0x00011a50` (block 0x250, six operands, `libGLcore.so`): **established.**
  Sent by `__glOdysseyValidateContext` (`ody_context.s`, source line 2529) after `0x00010407`, with six operands
  taken from the context words at +0x10000 - 26796 to - 26776, which the routine masks and rewrites just before. The
  fields' meaning is unknown.

## Validator-only raster blocks stored to the FIFO

`__glOdysseyValidateHardware` (`ody_context.s`) tests a dirty word at context +0x10000 + 26976 bit by bit and,
for each bit set, sends the settle group and then one block from its shadow; the kernel's `odsyRestoreRaster` replays
the same blocks after a lost context.

- `0x00010404` (block 0x004, one operand, `libGLcore.so`): **established.**
  The raster enable word, one bit or small field per fragment operation, from context +31740 when dirty bit 1 is set:
  bit 0 point smoothing, 1 line smoothing, 2 polygon smoothing, 3 and 4 line and polygon stipple, 5 to 7 polygon offset
  for points, lines and fill, 8 cull enable with 9 and 10 for back and front, 11 two-sided lighting, 12 flat shading,
  14 alpha test, 15 stencil test, 16 depth test, 17 blending, 18 dither, 19 and 20 index and colour logic op, 22 fog,
  23 clockwise front face. The setters are `__glOdyim_Enable`, `__glOdyim_CullFace` and `__glOdyim_ShadeModel`; the
  kernel textport's `ODSY_SET_GC` stores the word with the constant its own drawing needs.
- `0x00010405` (block 0x005, one operand, `libGLcore.so`): **established.**
  The transform and texture path selection, from context +31744 when dirty bit 2 is set: bits 2:0 are the user clip planes as
  a thermometer code from `__glOdysseyValidateClipPlanes`, bits 5:3 the active texture target (1-D, 2-D, 3-D) from
  `__glOdysseyValidateTextureState`, bit 25 the perspective-texture flag that `AddProgram` writes, and bits 15:13 and 19
  the interpolated-colour count from `__glOdysseyValidateFragment`.
- `0x00010406` (block 0x006, one operand, `libGLcore.so`): **established.**
  Bits 5:0 are the index of the first texture level descriptor the texture unit reads, from context +32736 when dirty
  bit 11 is set. `__glOdysseyTextureActivate` writes 0 for level 0, and `DownsampleTextureThruHW` writes 60 so
  its draw reads descriptor 60; `odsyRestoreRaster` replays the word from hardware-shadow offset 0x468.
- `0x00010407` (block 0x007, one operand, `libGLcore.so`): **established.**
  Built in `__glOdyim_LightModeli`, `__glOdysseyValidateContext` and `__glOdysseyValidateFragment`; the context
  validator sends it with a zero operand just before block 0x250. What the register controls is unknown.
- `0x0001041f` (block 0x01f, one operand, `libGLcore.so`): **established.**
  Sent by `__glOdysseyClear` twice and by `__glOdysseyValidateHardware`; `odsyRestoreRaster` replays it from hardware-shadow offset
  0xb4 beside 0x01e, 0x020 and 0x058. What field it holds is unknown.
- `0x00010452` (block 0x052, one operand, `libGLcore.so`): **established.**
  The write masks, from context +31836 when dirty bit 7 is set: bits 11:0 the colour-index write mask, 19:12 the
  stencil write mask (zero when the visual has no stencil), bits 20 to 23 red, green, blue and alpha write enables, and bit 24
  the depth write enable. The setters are `__glOdyim_IndexMask`, `__glOdyim_StencilMask`, `__glOdyim_ColorMask` and
  `__glOdyim_DepthMask`.
- `0x00010451` (block 0x051, one operand, `libGLcore.so`): **established.**
  One operand from context +0x10000 - 26984, sent when dirty bit 24 is set: `__glOdysseyValidateMatrixComb` sets bit 0 when
  the vertex pre-clip class is 2 or 3 and bit 1 when the far depth-range value is below the near one. **inferred**
  that bit 1 marks a reversed depth range and bit 0 tells the transform engine to pre-clip vertices.
- `0x00011847` (block 0x047, six operands, `libGLcore.so`): **established.**
  Six operands from context +0x10000 - 26868 onward when dirty bit 13 is set. `__glOdysseyInitDefaultValues` zeroes them
  and no other store in libGLcore, the X module or the kernel writes them, so the board receives only zeros here;
  what they set is unknown.
- `0x0001181a` (block 0x01a, six operands, `libGLcore.so`): **established.**
  The fog block from context +31752 when dirty bit 3 is set: operands 0 and 1 hold the fog colour as 12-bit red, green,
  blue and alpha scaled by 4096 (`__glOdyim_Fogfv`), operands 2 to 5 the fog function coefficients that
  `__glOdysseyValidateFog` rebuilds for GL_EXP, GL_EXP2 and GL_LINEAR. **inferred** that the board evaluates the fog
  factor from eye depth with them.
- `0x00010c1c` (block 0x01c, three operands, `libGLcore.so`): **established.**
  The fragment light model from context +0x10000 - 27268 when dirty bit 23 is set: operands 0 and 1 carry the model's
  ambient colour scaled by 4096 (`__glOdyim_FragmentLightModelfvSGIX`), and the low bits of operands 1 and 2 the
  colour-material selection that `ValidateFragmentColorMaterial` sets (inferred).
- `0x00010456` (block 0x056, one operand, `libGLcore.so`): **established.**
  Built by `__glOdyim_PolygonOffsetEXT`, `__glOdysseyFindWindowSize` and `__glOdysseyValidateContext`; replayed from
  hardware-shadow offset 0x1cb0 by `odsyRestoreRaster`. The register's field layout is unknown.
- `0x00010457` (block 0x057, one operand, `libGLcore.so`): **established.**
  Sent by `__glOdysseyValidateContext` only and replayed from hardware-shadow offset 0x1cb4 by `odsyRestoreRaster`;
  the register's field layout is unknown.
- `0x00010842` (block 0x042, two operands, `libGLcore.so`): **established.**
  Built by `__glOdysseyImageChainAddOpAcceptSignedDataFromHost` twice and `__glOdysseyImageChainFree`, so it belongs to the
  image-processing chain set-up; replayed from hardware-shadow offset 0x1ca4. Its fields are unknown.
- `0x00010845` (block 0x045, two operands, `odyssey.so`): **established.**
  The X module sends it in `odsyGammaFit`, with an operand equal to a float result truncated and clamped to 255 and the
  constant 30463 (0x76ff), and in `odsyInitDefaultHW` with two words from the screen set-up; no libGLcore or kernel
  routine builds it. What the two operands set is unknown.
- `0x00011453` (block 0x053, five operands, `libGLcore.so`): **established.**
  The rectangle-copy block: `odsyCopyRectBody` sends it after sync with five operands from context +6964 to +6980,
  and `__glOdysseyImageMovePixelsCopy`, `__glOdysseyImageMovePixelsDMAtoGfx` and the image-chain routines send it before
  pixel passes. Replayed from hardware-shadow offset 0x1b34.
- `0x00013c4d` (block 0x04d, sixteen operands, `libGLcore.so`): **established.**
  A third sixteen-word bitmap beside the polygon stipple halves 0x04e and 0x04f, sent by
  `__glOdyim_FragmentLightModeliSGIX` and `__glOdyim_Materialf` and replayed from hardware-shadow offset 0xf8 by `odsyRestoreRaster`.
  What it holds is unknown.
- `0x0001044c` (block 0x04c, one operand, `libGLcore.so`): **established.**
  Sent by `__glOdysseyValidateContext` and replayed from hardware-shadow offset 0x1cac by `odsyRestoreRaster`; the
  field layout is unknown.
- `0x00010018` (block 0x018, no operand, `odsy_ctxsw.o`): **established.**
  Built by `__glOdysseyValidateHardware`, `odsyRestoreRaster` and `odsy_mm_obj_xfr_bs`, ahead of memory-object
  transfers; it takes no operand, and what it does is unknown.
- `0x00010400` (block 0x000, one operand, `libGLcore.so`): **established.**
  Built in `__glOdyim_Enable`, `__glOdyim_Disable` and `__glOdyim_Hint` and by `odsyRestartContext` in the kernel;
  the operand layout and effect are unknown.
