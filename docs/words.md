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

