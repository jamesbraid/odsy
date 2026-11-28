# GL state as command words: what the validate sends per feature

Release IRIX 6.5.30m, N32 `libGLcore.so` (IP30ODSY32, decompilation and listings in `software/opengl/`), run where noted under `retools/tools/odsy/glcore_probe.py`, which shows what the shipped code stores and nothing about the board. Labels: **established** (the setter or validator read in full, or run), **inferred**, **unknown**. A grade on a field says what the library does with it; "board meaning" is inferred or unknown unless a published document says more, because the board never reads its state back. Block ids and shadow offsets are those of [tokens.md](tokens.md) and [README.md](README.md) section 8; words are written as the 32-bit value stored to the command window, counts as `block/operands`. Written for a driver author who builds the same state from NT's OpenGL 1.1 state.

## How every state block is sent

- **established.** A setter stores the field in the context shadow, raises a bit in the dirty word (context +0x16960), and sets the library's marker word (user address 0x1018) to 2. `__glOdysseyValidateHardware` (0x0d968180) tests the dirty bits in a fixed order and sends one block per set bit; its order, counts and the sources of the operands are [fresh-context.md](fresh-context.md) "The complete validate". A block is `0x00010000 | COUNT << 10 | id`, COUNT 15 meaning 16 operands.
- **established.** The settle group (`0x00010443`, 250, `0x00010046`, `0x00010046`) goes out before a state block only when the pending flag (context +0x9830) is set, which a primitive's end (`0x00014001`) sets. **inferred:** it drains the pipe so that new state does not apply to primitives still in flight (it matches [buzz/README.md](README.md) section 4's use at the primitive-to-state boundary).
- **established.** The only state the board sees besides blocks: sequencer registers `(r << 24) | 0x8000 | enc(v)` ([ucode/buzz_isa.md](../../software/ucode/buzz_isa.md)), the transform tables, attribute words and the program words.

## Clear (`glClear`, `__glOdyim_Clear` and `__glOdysseyClear`, `ody_clear.c`)

**established.** A clear is a rectangle drawn with the test state forced to "always pass, replace":

1. Save the shadows of blocks 0x004, 0x005, 0x01f, 0x020, 0x015 and 0x052. Block 0x004 loses bits 14 (alpha test), 17 (blend), 8 (cull), 22 (fog), 19 and 20 (logic ops), 7 (polygon offset fill), 2 (polygon smooth) and 4 (polygon stipple), loses bit 11 (two-sided lighting), gains bit 12 (flat shading), bit 16 (depth test) and bit 15 (stencil test). Block 0x005 loses bits 2:0 (clip planes), 5:3 and 11:10 (texture) and has bits 15:13 set to 1.
2. Block 0x052 (write masks): the colour write enables (bits 23:20) and the colour-index mask (bits 11:0) stay as the user set them only when `GL_COLOR_BUFFER_BIT` is cleared, otherwise are cleared; bit 24 (depth write) is set only when the depth buffer is cleared, the visual has one and `glDepthMask` is true; bits 19:12 hold the stencil write mask only when the stencil buffer is cleared, else 0.
3. Block 0x01f (stencil) = function ALWAYS (bits 27:25 = 7), reference = the clear stencil value (bits 7:0), compare mask 0xff (bits 15:8), and all three operations REPLACE (code 2 in bits 24:22, 21:19 and 18:16); block 0x020 (depth function) low bits = 7 (ALWAYS); block 0x015 (polygon mode) bits 3:0 = 10 (fill, fill). Blocks 0x01f, 0x020, 0x015 are sent explicitly, then the other dirty blocks.
4. The primitive, in the user form: `0x00014400`, 7 (quads), `0x8f80a944`, ten operands (four floats of the clear colour, or the colour index and three zeros in colour-index mode; x0, y0 and the depth as floats; x1, y1 and the same depth), `0x00014001`. The depth operand is the clear depth converted by `__glOdysseyWindowToNormalizedEyeZ`.
5. The kernel form, chosen by a test on the buffer configuration and a minimum area (context +0x19dd4) that was not decoded in full ([driver-functions.md](../../software/kernel/driver-functions.md) `gfP_OdsyClearBuffer`, private ioctl 14): per clip rectangle and 16-row band `0x00014400`, 10, `0x8f80a92f` with the same ten operands, `0x00014001`, and a settle group.
6. Restore: blocks 0x015, 0x020, 0x01f and the saved masks and enables are sent again from the saved shadows.

**inferred:** a driver may skip the kernel form; the library's own fallback is the user form. Board meaning of the opcodes `0x144` and `0x12f`: routines 324 and 303 of the microcode ([ucode/buzz_routines.md](../../software/ucode/buzz_routines.md)); what they write is **unknown**.

## Points, lines, triangles (`0x00014400` and `0x00014001`)

- **established.** A primitive is `0x00014400` with an operand 0 for points, 1 for lines, 4 for triangles, 7 for quads (and 10 for the rectangle form the clear and X module use), the vertex attribute and position words, then `0x00014001`. The soft-clip renderers send 0, 1 and 4 for points, lines and triangles (`__glOdysseySoftClipRenderPoint`, `...Triangle`). **inferred** for the remaining numbers: 2 line loop, 3 line strip, 5 triangle strip, 6 fan, 8 quad strip, 9 polygon, because the kernel's restart walkers `restorePoints` to `restoreRect` are indexed 0 to 10 in that order and the numbers equal the GL primitive enumerants.
- **established.** Each vertex sends the attribute words that changed ([words.md](words.md), [tokens.md](tokens.md)) and then the position word (`0x8080c800` + 2 integers, `0x8080cc03` + 3 floats and so on). **inferred:** the position word starts the vertex's transform, so attributes must precede it. Colour, normal, texture coordinate, edge flag and index words persist until changed.
- Lines and points: width and size in block 0x04a, stipple in 0x048, smoothing in 0x004 bits 0 to 3 ([tokens.md](tokens.md)).

## Depth

- **established.** Test on/off: block 0x004 bit 16 (set only when the visual has a depth buffer). Function: block 0x020 bits 2:0 = the GL enumerant minus 0x200 (NEVER 0 to ALWAYS 7). Writes: block 0x052 bit 24. Clear value: the depth operand of the clear rectangle. Polygon offset: block 0x058 ([raster.md](raster.md)).
- **inferred.** Depth range and the viewport reach the board only inside the transform blocks below: no block of the validate carries a viewport or depth-range word (the setters `__glOdyim_Viewport` and `__glOdyim_DepthRange` compute host-side and mark the transform dirty).

## Matrices, viewport, scissor (`__glOdysseyValidateMatrix*`, `ody_xform.c`)

**established** for the words and indexes; the 16 values are floats the library computes and the layout of each block's words is **unknown** ([tokens.md](tokens.md) "Sequencer register words"):

| Board table index (register 0x34) | Content | Sent as |
|---|---|---|
| 0 | combined matrix: 16 words (8 single-precision products, 4 products rounded from double precision, then 4 words copied from elements 3, 7, 11 and 15 of the matrix at +0xb0 of the structure at context +0x7414) | `0x34008000`, `0x9080bdc8`, 16 words, then `0x34008000` (index 0) |
| 16 | 4 more words computed from the same matrices | `0x34008010`, `0x908091df`, 4 words, then index 0 |
| 36 | modelview matrix, 16 words | `0x34008024`, `0x9080bdc8`, 16 words, then index 0 |
| 52 | normal matrix, 16 words | `0x34000034` **without** bit 15, `0x9080bdc8`, 16 words, then `0x34000000` |
| 20 | texture matrix, 16 words | `0x34008014`, `0x9080bdc8`, 16 words, then index 0 |

- **established.** The shadow positions of the same words are index + 0 (combined), +16, then modelview at 20, normal at 36, texture at 52 (context +0x9588 + 4 x position); the kernel's replay reads the shadow in that order and sends each block with the board index above (`odsyRestoreXform`: 36 from `H + 6752`, 52 from `H + 6816`, 20 from `H + 6880`). So the board's table order is combined, extra, texture, modelview, normal, and [README.md](README.md) section 4's "so `H + 6672 + 4*a` is table word a" holds for the combined block and the four extra words only.
- **unknown.** Why the normal matrix's index select omits bit 15 in the library while the kernel's replay of the same index sets it. Both reach the same register; no shipped behaviour differs.
- **Scissor and window.** Block 0x01d (two operands: x range then y range, low limit in the upper 12-bit field, [tokens.md](tokens.md)); window origin and clip in blocks 0x04b (four rectangles), 0x017 (drawable) and registers 0x608 to 0x60f ([opengl/opengl.md](../../software/opengl/opengl.md) "The clip push"). Fields of 0x017, 0x04b-reset and 0x608 to 0x60f: **unknown** beyond that page.

## Lights and materials (`ody_lighting.c`)

- **established.** Light n (n below 8: the colour memory holds 24 entries, three per light) is written when dirty:
  - parameter record: `0x31008000 | enc(16 n)` (register 0x31 = parameter-memory light base), `0x9080bda2`, 16 words: three words from light state +0x40, +0x44 and +0x48 scaled by one over their length, three words that are the negated normalised sum of that vector and (0, 0, 1), one word computed from them and the light state (not decoded), three words copied from the light's attenuation constants (light state +0x68, +0x6c, +0x70), three words of the normalised spot direction negated, then the negated cosine of the cutoff angle (1.0 when the cutoff field equals the no-spot constant), the negated spot exponent (0 in that case), and the constant `0x4a800000` (2^22). The GL meaning of each word is **inferred** from the light state field it copies; the board's use is **unknown**.
  - colour records: `0x32008000 | enc(3 n + k)` (register 0x32 = colour-unit address), `0x8e809015`, four floats, for k = 1 (light state +0x10), 2 (+0x20) and 0 (+0x00), which are the diffuse, specular and ambient colours if the light state keeps the GL order (**inferred**); in colour-index mode the first word of record 0 is replaced by the negated product of two already-sent words. Entry 24 holds the light-model ambient: `ValidateLighting` sends `0x32008000 | enc(24)`, `0x8e809015` and four words (context +0xa1b4 to +0xa1c0) after setting register 0x29.
  - **established.** Light enables and kinds are not sent as blocks: they choose the microcode program (the key of `AddProgram`, [ucode/buzz_routines.md](../../software/ucode/buzz_routines.md) "The program key": one nibble per light of local, directional, attenuated and spot). The program words are registers 0x29, 0x2a, 0x2c, 0x33 and the entry list ([ucode/buzz_isa.md](../../software/ucode/buzz_isa.md)).
- **established.** Material colours are attribute words in slots 6 to 13, four floats each, `0xc680d02f`, `0xc780d030`, `0xc880d031`, `0xc980d032` (front: ambient, diffuse, specular, emission, **inferred**) and `0xca80d035`, `0xcb80d036`, `0xcc80d037`, `0xcd80d038` (back). Defaults sent by `__glOdysseyInitLighting`: ambient 0.2, 0.2, 0.2, 1; diffuse 0.8, 0.8, 0.8, 1; specular and emission 0, 0, 0, 1 for both sides, after `0xc18093ff` (0, 0, 1, 1) and `0xc180cc19` (0, 0, 1); then register 0x31 index 240 and 244 with `0x908091bb` and four zeros each. Shininess is slots 448 and 544 of the save record (front and back, [driver-functions.md](../../software/kernel/driver-functions.md) `odsyRestoreVB`); the words `glMaterial` sends for it: **not read here**.
- **established.** Block 0x004 bit 11 two-sided lighting, bit 12 flat shading; `GL_LIGHT_MODEL_LOCAL_VIEWER` and `GL_NORMALIZE` select program, not a block.

## Texture

**established**, field positions in [texture/texture-state.md](../texture/texture-state.md) and [texture/registers.md](../texture/registers.md): enable and target in block 0x005 bits 5:3 and 10; per-level descriptors 0x280 + i (three words each, 64 of them, [README.md](README.md) section 9) with the first level's index in block 0x006; sampler modes block 0x016 (seven words); environment block 0x01b (five words); LOD block 0x013; texel memory by `MMalloc`, `MMmakeResident` and `MMxfr` ([../board/memory-layout.md](../board/memory-layout.md)). Replay minimum for one 2D texture: the allocation and upload, the level descriptors of the used levels, 0x006, 0x016, 0x01b, 0x013, 0x005 with the target bit. Board meaning of the filter and wrap fields: [texture/registers.md](../texture/registers.md) grades (mostly unknown).

## Blending

- **established.** Enable: block 0x004 bit 17 (set when `GL_BLEND` is on and `GL_COLOR_LOGIC_OP` off). Block 0x021, three operands from context +0x7c34, +0x7c38, +0x7c3c; each GL factor and equation maps to a code, **established** by running `__glOdyim_BlendFunc` (0x0d95afe0) and `__glOdyim_BlendEquationEXT` (0x0d95b2f0) for every enumerant:
  - Operand 0 bits 5:0 = destination factor code, bits 12:6 = source factor code, bits 15:13 = equation.
  - Factor codes (six bits; the source field also has 0x40 for `GL_SRC_ALPHA_SATURATE`): ZERO 0x00, ONE 0x08, the other pixel's colour 0x10 (`GL_DST_COLOR` for the source, `GL_SRC_COLOR` for the destination), `GL_SRC_ALPHA` 0x18, `GL_DST_ALPHA` 0x20, `GL_CONSTANT_COLOR` 0x28, `GL_CONSTANT_ALPHA` 0x30; one-minus forms 0x38 (other colour), 0x39 (source alpha), 0x3a (destination alpha), 0x3b (constant colour), 0x3c (constant alpha). The setter stores nothing for a source `GL_SRC_COLOR` or `GL_ONE_MINUS_SRC_COLOR`, or for a destination `GL_DST_COLOR`, `GL_ONE_MINUS_DST_COLOR` or `GL_SRC_ALPHA_SATURATE` (the combinations GL itself does not allow).
  - Equation codes: `GL_FUNC_ADD` 0, `GL_MIN` 1, `GL_MAX` 2, logic operation 5, `GL_FUNC_SUBTRACT` 6, `GL_FUNC_REVERSE_SUBTRACT` 7 (bits 15:13). The logic-operation form uses block 0x022 for the operation (the comment on `BUZZ_REG_CONSTCOLOR` in [BUZZ.h](BUZZ.h)).
  - Operands 1 and 2: the constant colour, four components scaled by 4096 with 1.0 as 4095, packed in 12-bit fields at bits 23:12 and 11:0 of each word (`__glOdyim_BlendColorEXT`); which component sits where: **inferred** the same order as the fog colour (red and green in operand 1, blue and alpha in operand 2).
- **unknown:** rounding of the blend arithmetic, the meaning of the other bits of operand 0.

## Fog

**established**, [tokens.md](tokens.md) "Blocks only the hardware validator sends": enable block 0x004 bit 22; block 0x01a with six operands (colour in 12-bit fields scaled by 4096; the function as five coefficients and a 3-bit code). Arithmetic: **unknown**.

## Stencil

- **established.** Enable: block 0x004 bit 15 (only with a stencil buffer). Block 0x01f, one operand, from `__glOdyim_StencilFunc` (0x0d95d830) and `__glOdyim_StencilOp` (0x0d95da60): bits 7:0 reference (clamped to 0 up to the stencil depth's maximum), bits 15:8 compare mask (masked to the stencil depth), bits 27:25 function (the enumerant minus 0x200: NEVER 0 to ALWAYS 7), bits 24:22 stencil-fail operation, bits 21:19 depth-fail operation, bits 18:16 depth-pass operation. Operation codes: `GL_KEEP` 0, `GL_ZERO` 1, `GL_REPLACE` 2, `GL_INCR` 3, `GL_DECR` 4, `GL_INVERT` 5. The write mask is block 0x052 bits 19:12. Clear value: the reference of the clear packet above.
- **inferred** that the pairing of the three operation fields with fail, depth-fail and depth-pass follows the order of the setter's arguments; no run on the board confirms it.

## What would settle the unknowns

The field meanings flagged unknown need either a published description of the blocks (none held) or the board-side microcode that consumes each block ([ucode/buzz_routines.md](../../software/ucode/buzz_routines.md) "How a command word reaches a routine"): a disassembly of the routine each id reaches names which operand bits it reads. The ids 0x01a, 0x01b, 0x016, 0x021, 0x01f and 0x017 are not among the eight routine opcodes of that page, so they are handled outside the sequencer and their fields cannot be read from the microcode.
