# Routine role statements for tier-1 batch 3

Batch 3 of the tier-1 reading round covers ranked targets 75 to 99 of the located, hardware-linked list for odsy. All 25 rendered entries passed the grader, so none were rejected. Each statement comes only from the rendered facts (registers, calls, constants and addresses). The grade is inferred for every entry: the instructions are fully established, but what the routines are for is not. These are software observations, not hardware behaviour.

## `DownsampleTextureThruHW` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x22157f0`

`DownsampleTextureThruHW` (2452 bytes, `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`) reads a texture descriptor through a0 and a context pointer loaded from abs 0x1020, indexing per-level fields in 68-byte strides. It calls `__glOdysseyImageLogBase2` at 0x2215928 and 0x221595c, `ChooseSuitableBuzzTexModeBaseFmt` at 0x2215a60, `GetImageFmtEnumFromBuzzTexFormat` at 0x2215c08 followed by `__glOdysseyImageCalcFieldFormat` at 0x2215c18, and `__glOdysseyValidateHardware` at 0x2215dfc, which is skipped when the context word at +0x18e54 is zero. It returns 0x7 at 0x2215fd8 when the context word at +0xba44 is nonzero, and otherwise returns the +0x18e54 context word ORed with 0x800 at 0x2216088. The facts show format and size selection followed by hardware validation, but not a pixel copy loop, so whether it performs the downsample itself is unresolved. Role (from name): a hardware texture downsample helper. Grade: inferred.

Reviewed: 2026-11-12

## `CISendFc` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x222e7b0`

`CISendFc` (100 bytes) reads one byte at a0+0xc0 and five single-precision words from a0 offsets 0x98, 0x18, 0x1c, 0x20 and 0x24. It makes eight stores to the absolute address 0x10000 between 0x222e7d0 and 0x222e810, three word stores and five single-precision stores. It makes no calls and returns the constant 0xffffffff8080d005 at 0x222e80c. The name suggests it sends a fixed record, but the facts do not say what the flag byte selects or what 0x10000 is. Grade: inferred.

Reviewed: 2026-11-12

## `CISendClippedBmFmN` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x222ecd0`

`CISendClippedBmFmN` (352 bytes) has the same shape as `CISendFc`: a flag byte load at a0+0xc0, then a long run of stores to abs 0x10000 (11 integer and 39 single-precision). It loads single-precision words from a0 offsets 0x98, 0xa8, 0xc8, 0xcc, 0xd0 and 0x18 to 0x24, fewer loads than float stores, so the facts do not show where every stored float comes from. It makes no calls and returns the same constant as `CISendFc`, at 0x222ee28. The name points to a clipped bitmap send path, and the store count suggests a multi-field packet, but the facts do not confirm the layout. Grade: inferred.

Reviewed: 2026-11-12

## `libGLcore.so` at `0x2239050`

`__glOdysseyHyperpipeStereo` (116 bytes) loads a word at a0+0x285d8 (0x2239064) and a field of a3 at offset 0 (0x223906c), and builds a small stack buffer from them together with the constant 3 and a2. It makes one indirect call at 0x22390a0 through a pointer loaded from the global pointer table, which the render names `__glOdysseyIoctl`. The call passes the fixed request number 0x6f640018 in the second argument and the stack buffer address in the third; the loaded word goes into the buffer, not into an argument register. The routine returns 0 or 1 at 0x22390bc, 0 when the call returns 0. Role (from name): a hyperpipe stereo setter or query that asks the driver through ioctl; the request semantics and failure handling are not shown. Grade: inferred.

Reviewed: 2026-11-12

## `__glOdyim_Vertex2d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x2319380`

`__glOdyim_Vertex2d` (36 bytes) stores one word at 0x2319394 and two single-precision words at 0x2319398 and 0x23193a0, all to abs 0x10000. It loads nothing and calls nothing, and it returns 0x10000 at 0x231939c. A header word followed by data words suggests a small immediate-mode vertex packet, but the facts do not show the packet layout, where the stored values come from, or whether 0x10000 is a device FIFO. Grade: inferred.

Reviewed: 2026-11-12

## `__glOdyim_Vertex3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x2319580`

`__glOdyim_Vertex3d` (44 bytes) stores one word at 0x2319598 and three single-precision words at 0x231959c, 0x23195a0 and 0x23195a8, all to abs 0x10000. It has no loads or calls and returns 0x10000 at 0x23195a4. The store shape matches `__glOdyim_Vertex2d` with one more coordinate, which fits a 3D vertex packet, but the field widths are inferred from the store count alone. Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x2319680`

`__glOdyim_Vertex3i` (56 bytes) makes four word stores to abs 0x10000 (three listed at 0x23196a4, 0x23196a8 and 0x23196ac), with no loads or calls. It returns 0x10000 at 0x23196b0. Four integer words fit a header plus three integer components, the integer counterpart of the 3d vertex emitter, though the facts only show the store count. Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x2319940`

`__glOdyim_Vertex4i` (68 bytes) makes five word stores to abs 0x10000 (including 0x231996c, 0x2319970 and 0x2319974), with no loads or calls, and returns 0x10000 at 0x231997c. Five words fit a header plus four integer components, which suggests a 4-component integer vertex packet. The layout is inferred from the store count only. Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231e800`

`__glOdyim_TexCoord3d` (44 bytes) stores one word at 0x231e818 and three single-precision words at 0x231e81c, 0x231e820 and 0x231e828, all to abs 0x10000. It has no loads or calls and returns 0x10000 at 0x231e824. The shape matches the 3d emitters, so it is probably a three-component texture-coordinate packet, but the facts do not name the fields. Grade: inferred.

Reviewed: 2026-11-12

## `libGLcore.so` at `0x231ef00`

`__glOdyim_ScratchColor3b` (32 bytes) makes four 4-byte word stores to abs 0x10000 (including 0x231ef0c, 0x231ef10 and 0x231ef14) and returns 0x10000 at 0x231ef18. It has no loads or calls. The name suggests byte-sized channels, but every store in the render is a 4-byte word, so any packing of byte channels is not shown. Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231efc0`

`__glOdyim_Color3d` (44 bytes) stores one word at 0x231efd8 and three single-precision words at 0x231efdc, 0x231efe0 and 0x231efe8, all to abs 0x10000. It has no loads or calls and returns 0x10000 at 0x231efe4. The store pattern matches `__glOdyim_TexCoord3d`, so a header word followed by three floats is the most likely reading, but the facts do not name the color fields. Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231f000`

`__glOdyim_ScratchColor3d` (44 bytes) makes the same stores as `__glOdyim_Color3d`: one word at 0x231f018 and three single-precision words at 0x231f01c, 0x231f020 and 0x231f028, all to abs 0x10000. It has no loads or calls and returns 0x10000 at 0x231f024. The render shows no difference from the non-scratch variant, so the facts do not say what the scratch path changes. Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231f200`

`__glOdyim_ScratchColor3i` (32 bytes) makes four word stores to abs 0x10000 (including 0x231f20c, 0x231f210 and 0x231f214) and returns 0x10000 at 0x231f218. It has no loads or calls. The shape matches `__glOdyim_ScratchColor3s` and `__glOdyim_ScratchColor3ui` and fits a header plus three integer components, though the facts only show the store count. Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231f300`

`__glOdyim_ScratchColor3s` (32 bytes) makes four word stores to abs 0x10000 (including 0x231f30c, 0x231f310 and 0x231f314) and returns 0x10000 at 0x231f318. It has no loads or calls, and its shape matches `__glOdyim_ScratchColor3i`. The facts do not show a width difference between the signed and unsigned variants. Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231f500`

`__glOdyim_ScratchColor3ui` (32 bytes) makes four word stores to abs 0x10000 (including 0x231f50c, 0x231f510 and 0x231f514) and returns 0x10000 at 0x231f518. It has no loads or calls, and its shape matches the other three-component scratch color emitters. Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231f600`

`__glOdyim_ScratchColor3us` (32 bytes) makes four word stores to abs 0x10000 (including 0x231f60c, 0x231f610 and 0x231f614) and returns 0x10000 at 0x231f618. It has no loads or calls, and its shape matches the other three-component scratch color emitters. Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231f700`

`__glOdyim_ScratchColor4b` (36 bytes) makes five word stores to abs 0x10000 (including 0x231f70c, 0x231f710 and 0x231f714) and returns 0x10000 at 0x231f71c. It has no loads or calls. Five words fit a header plus four components, the four-component counterpart of the 3-component scratch emitters. Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231f8c0`

`__glOdyim_ScratchColor4dv` (68 bytes) loads four doubles from a0 at offsets 0, 8, 0x10 and 0x18 (0x231f8c0 to 0x231f8dc), stores one word at 0x231f8e4 and four single-precision words at 0x231f8ec, 0x231f8f4, 0x231f8f8 and 0x231f900, all to abs 0x10000, and returns 0x10000 at 0x231f8fc. It makes no calls. A vector-of-doubles argument fits the load pattern, but the field layout is inferred from the offsets. Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231fa80`

`__glOdyim_ScratchColor4i` (36 bytes) makes five word stores to abs 0x10000 (including 0x231fa8c, 0x231fa90 and 0x231fa94) and returns 0x10000 at 0x231fa9c. It has no loads or calls, and its store count matches the other four-component scratch emitters. Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231fb80`

`__glOdyim_ScratchColor4s` (36 bytes) makes five word stores to abs 0x10000 (including 0x231fb8c, 0x231fb90 and 0x231fb94) and returns 0x10000 at 0x231fb9c. It has no loads or calls, and its shape matches `__glOdyim_ScratchColor4i`. Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231fc80`

`__glOdyim_ScratchColor4ub` (36 bytes) makes five word stores to abs 0x10000 (including 0x231fc8c, 0x231fc90 and 0x231fc94) and returns 0x10000 at 0x231fc9c. It has no loads or calls. The byte-typed name does not change the 4-byte stores the render shows, so channel packing is unknown. Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231fd80`

`__glOdyim_ScratchColor4ui` (36 bytes) makes five word stores to abs 0x10000 (including 0x231fd8c, 0x231fd90 and 0x231fd94) and returns 0x10000 at 0x231fd9c. It has no loads or calls, and its shape matches the other four-component scratch emitters. Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231fe80`

`__glOdyim_ScratchColor4us` (36 bytes) makes five word stores to abs 0x10000 (including 0x231fe8c, 0x231fe90 and 0x231fe94) and returns 0x10000 at 0x231fe9c. It has no loads or calls, and its shape matches the other four-component scratch emitters. Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231ff80`

`__glOdyim_ScratchIndexd` (28 bytes) makes one word store at 0x231ff90 and one single-precision store at 0x231ff98, both to abs 0x10000, and returns 0x10000 at 0x231ff94. It has no loads or calls. Two stores fit a header word plus one value, but the facts do not establish the index width or meaning. Grade: inferred.

Reviewed: 2026-11-12

## `libGL.so` at `0xd8d2e68`

`isNotProxy` (932 bytes, o32, `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`) loads a0+0x108 and a0+0x24 (0xd8d2e80, 0xd8d2e90) and returns 0 at once unless the a0+0x24 field is below 0x40 (0xd8d2e98). It then makes a call at 0xd8d2eb4 with second argument 0x802 and a string address built from the global pointer, a call at 0xd8d2edc with second and third arguments 2 and 5, and a call at 0xd8d2f14 with second argument 0x65 and third 0, apparently `open`, `fcntl` and `ioctl` from their argument patterns. After each of these it returns 0 on a negative result (and, for the 0x65 request, on a result that is not above zero), closing the descriptor first where it is open. It also returns 0 after a close when the 0x65 result is not above the a0+0x24 field (compare at 0xd8d2f58). Otherwise it makes a second call at 0xd8d2f8c with second argument 0x66 and a stack buffer at sp+0x54, closes the descriptor, and calls at 0xd8d2fd8 with second argument 0x3a (':') on the pointer loaded from offset 0x80 of the word at a0+0x108, apparently `strchr`. A null result returns 0. Otherwise it compares the text from that hit with stack bytes at sp+0x3c, returning 1 on reaching '.' (0x2e, tested at 0xd8d301c) or a zero byte and 0 on a mismatch; it returns at 0xd8d3054. Role (from name): a check that a device is not a proxy; the callee names, the ioctl meanings and the exact predicate are not established, so the role stays partly open. Grade: inferred.

Reviewed: 2026-11-12
