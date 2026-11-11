# Routine roles: odsy tier-1 batch 6

Role statements for 25 routines from batch 6 of the odsy tier-1 list. All of them are in the
IP30 VPro build of libGLcore.so. Each was rendered from its code and passed the grader; none
were rejected. Grades are inferred. Routine names come from the symbol table and are only hints.

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb395ad0

`__glOdylc_TexCoord2i` (244 bytes) reads words at abs 0x1048 and 0x1060 and an 8-byte value at
0x1058. It calls `__glSPDlistSpace` at 0xb395b20 with a0 = 0, branches on the result at 0xb395b34,
and returns either the 0x1060 word plus 3 (0xb395b94) or the call result (0xb395bbc). The name
suggests a texture-coordinate entry that compiles into a display list, but the facts do not show
what the 0x1048 and 0x1060 words hold, so the role is only partly clear.

Grade: inferred.

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb396310

`__glOdylc_TexCoord3i` (256 bytes) has the same shape as the 2i routine. It uses the same state
words at 0x1048, 0x1058 and 0x1060, and calls `__glSPDlistSpace` at 0xb396364 with a0 = 0. Its
return adds 4 to the 0x1060 word (0xb3963e0), where the 2i routine adds 3. That fits one more
operand, but the facts do not confirm it.

Grade: inferred.

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3999e0

`DownsampleTextureThruHW` (2252 bytes) indexes tables behind a0 by its arguments a1 and a2, with
strides of 68 bytes and 4 bytes per index. Those indices look like a source and a destination
texture level, but the facts do not name them. It calls `__glOdysseyImageLogBase2` at 0xb399b28
and 0xb399b54, `ChooseSuitableBuzzTexModeBaseFmt` at 0xb399c50, `GetImageFmtEnumFromBuzzTexFormat`
at 0xb399e08, `__glOdysseyImageCalcFieldFormat` at 0xb399e14 and `__glOdysseyValidateHardware`
at 0xb399ff0, so it picks a format and validates hardware state. It stores 42 values to abs
0x4000 (28 integer, 14 float), the most in this batch. The facts do not say what that address is,
so the hardware role and the exact downsampling method are not established.

Grade: inferred.

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3b0090

`RGBSendFc` (132 bytes) reads one byte at a0 +0xc4 first. It then loads floats from a0 at +0x9c,
+0xa0, +0xa4, +0xa8 and +0x1c to +0x28, and writes 3 words and 8 floats to abs 0x4000. It makes no
calls and returns the constant 0xffffffffc580d015. The facts list no branch on the +0xc4 byte, so
its use is unknown. The name suggests an RGB send path, but nothing here confirms that.

Grade: inferred.

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3b19b0

`CISendClippedBmFmN` (372 bytes) starts like `RGBSendFc`, reading the byte at a0 +0xc4. It streams
floats from a0 at +0x9c, +0xac, +0xd0 to +0xd8 and +0x1c to +0x28, writing 11 words and 39 floats to
abs 0x4000. It also loads one constant from abs 0xb4cfa14 (0xb3b19f4). It makes no calls, returns the
constant 0xffffffff8080d005, and has no branches in the facts. The name suggests a color-index send of
a clipped bitmap, but the facts do not show that.

Grade: inferred.

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499ec0

`__glOdyim_Vertex2d` (32 bytes) writes one integer word (0xb499ed0) and then two floats (0xb499ed4,
0xb499edc) to abs 0x4000. It has no loads and no calls. That is one word followed by two coordinates,
which fits a command word and two operands, but the facts do not name the word. The return value is not
visible in the facts.

Grade: inferred.

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49a0c0

`__glOdyim_Vertex3d` (40 bytes) writes one integer word (0xb49a0d4) and three floats (0xb49a0d8,
0xb49a0dc, 0xb49a0e4) to abs 0x4000. It has no loads and no calls. This is the Vertex2d layout with one
more coordinate. The return value is not visible in the facts.

Grade: inferred.

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49a1c0

`__glOdyim_Vertex3i` (52 bytes) writes four integer words to abs 0x4000 (0xb49a1e0, 0xb49a1e4,
0xb49a1e8 and one more). It has no loads and no calls. The count matches one word plus three operands,
the same layout as Vertex3d but with integer operands. The return value is not visible in the facts.

Grade: inferred.

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49a3c0

`__glOdyim_Vertex4i` (64 bytes) writes five integer words to abs 0x4000 (0xb49a3e8, 0xb49a3ec,
0xb49a3f0 and two more). It has no loads and no calls. That is one word plus four operands, the
Vertex3i layout extended by one. The return value is not visible in the facts.

Grade: inferred.

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49f0c0

`__glOdyim_TexCoord3d` (40 bytes) writes one integer word (0xb49f0d4) and three floats (0xb49f0d8,
0xb49f0dc, 0xb49f0e4) to abs 0x4000. That is the same store pattern as Vertex3d. The facts show no
difference from Vertex3d, so the texture coordinate meaning of the name is not visible here.

Grade: inferred.

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49f780

`__glOdyim_ScratchColor3b` (28 bytes) writes four integer words to abs 0x4000 (0xb49f788, 0xb49f78c,
0xb49f790 and one more). It has no loads and no calls. The facts show no conversion of the byte-typed
arguments, so the values are probably taken from the argument registers as they are. This 28-byte shape
is shared with the 3i, 3s, 3ui and 3us variants.

Grade: inferred.

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49f840

`__glOdyim_Color3d` (40 bytes) writes one integer word (0xb49f854) and three floats (0xb49f858,
0xb49f85c, 0xb49f864) to abs 0x4000. It has no loads and no calls. This matches the Vertex3d and
TexCoord3d store pattern. The name suggests a color operand, but the facts show only the stores.

Grade: inferred.

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49f880

`__glOdyim_ScratchColor3d` (40 bytes) writes one integer word (0xb49f894) and three floats (0xb49f898,
0xb49f89c, 0xb49f8a4) to abs 0x4000. It has no loads and no calls. The store pattern matches Color3d,
so the scratch variant seems to differ only in the path it is reached by. That is not visible in the
facts.

Grade: inferred.

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49fa80

`__glOdyim_ScratchColor3i` (28 bytes) writes four integer words to abs 0x4000 (0xb49fa88, 0xb49fa8c,
0xb49fa90 and one more). It has no loads and no calls. This is the same shape as ScratchColor3b with
the same integer store count.

Grade: inferred.

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49fb80

`__glOdyim_ScratchColor3s` (28 bytes) writes four integer words to abs 0x4000 (0xb49fb88, 0xb49fb8c,
0xb49fb90 and one more). It has no loads and no calls. The shape matches ScratchColor3b and 3i.

Grade: inferred.

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49fd80

`__glOdyim_ScratchColor3ui` (28 bytes) writes four integer words to abs 0x4000 (0xb49fd88, 0xb49fd8c,
0xb49fd90 and one more). It has no loads and no calls. The shape matches the other 28-byte 3-operand
integer variants.

Grade: inferred.

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49fe80

`__glOdyim_ScratchColor3us` (28 bytes) writes four integer words to abs 0x4000 (0xb49fe88, 0xb49fe8c,
0xb49fe90 and one more). It has no loads and no calls. The shape matches the other 28-byte 3-operand
integer variants.

Grade: inferred.

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49ff80

`__glOdyim_ScratchColor4b` (32 bytes) writes five integer words to abs 0x4000 (0xb49ff88, 0xb49ff8c,
0xb49ff90 and two more). It has no loads and no calls. That is one word plus four operands, the same
layout as ScratchColor4i, 4s, 4ub, 4ui and 4us.

Grade: inferred.

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4a0100

`__glOdyim_ScratchColor4dv` (64 bytes) loads four doubles from a0 at +0, +8, +0x10 and +0x18 (ldc1 at
0xb4a0100 to 0xb4a0118). It then writes one integer word (0xb4a0120) and four floats to abs 0x4000
(0xb4a0128, 0xb4a0130, 0xb4a0134 and one more). The pointer argument and four-double load fit a
vector form of a four-component color. The facts do not show the double-to-float conversion, and the
return value is not visible.

Grade: inferred.

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4a0280

`__glOdyim_ScratchColor4i` (32 bytes) writes five integer words to abs 0x4000 (0xb4a0288, 0xb4a028c,
0xb4a0290 and two more). It has no loads and no calls. The layout matches the other four-operand
integer variants.

Grade: inferred.

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4a0380

`__glOdyim_ScratchColor4s` (32 bytes) writes five integer words to abs 0x4000 (0xb4a0388, 0xb4a038c,
0xb4a0390 and two more). It has no loads and no calls. The layout matches the other four-operand
integer variants.

Grade: inferred.

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4a0480

`__glOdyim_ScratchColor4ub` (32 bytes) writes five integer words to abs 0x4000 (0xb4a0488, 0xb4a048c,
0xb4a0490 and two more). It has no loads and no calls. The layout matches the other four-operand
integer variants.

Grade: inferred.

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4a0580

`__glOdyim_ScratchColor4ui` (32 bytes) writes five integer words to abs 0x4000 (0xb4a0588, 0xb4a058c,
0xb4a0590 and two more). It has no loads and no calls. The layout matches the other four-operand
integer variants.

Grade: inferred.

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4a0680

`__glOdyim_ScratchColor4us` (32 bytes) writes five integer words to abs 0x4000 (0xb4a0688, 0xb4a068c,
0xb4a0690 and two more). It has no loads and no calls. The layout matches the other four-operand
integer variants.

Grade: inferred.

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4a0780

`__glOdyim_ScratchIndexd` (24 bytes) writes one integer word (0xb4a078c) and one float (0xb4a0794) to
abs 0x4000. It has no loads and no calls. That fits an opcode word and one double-typed index operand.
The return value is not visible in the facts.

Grade: inferred.

## Open questions

Twenty-three of the 25 routines store to abs 0x4000. The two TexCoord display-list routines do not.
Nothing in the rendered facts says what that address is, so the hardware meaning of every store to it
stays open. Settling it needs the owning datasheet or a device trace of the write port, not more
rendering of these routines.
