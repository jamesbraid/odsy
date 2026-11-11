# Routine role statements for tier-1 batch 3

Batch 3 of the tier-1 reading round covers ranked targets 75 to 99 of the located, hardware-linked list for odsy. All 25 rendered entries passed the grader, so none were rejected. Each statement comes only from the rendered facts (registers, calls, constants and addresses). The grade is inferred for every entry: the instructions are fully established, but what the routines are for is not. These are software observations, not hardware behaviour.

## `DownsampleTextureThruHW` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x22157f0`

`DownsampleTextureThruHW` (2452 bytes, `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`) reads a texture descriptor through a0 and a context pointer loaded from abs 0x1020, indexing per-level fields in 68-byte strides. It calls `__glOdysseyImageLogBase2` at 0x2215928 and 0x221595c, conditionally `ChooseSuitableBuzzTexModeBaseFmt` at 0x2215a60, `GetImageFmtEnumFromBuzzTexFormat` at 0x2215c08 followed by `__glOdysseyImageCalcFieldFormat` at 0x2215c18, and `__glOdysseyValidateHardware` at 0x2215dfc. It returns 0x7 at 0x2215fd8 or a flag-ORed context word at 0x2216088. The facts show format and size selection followed by hardware validation, but not a pixel copy loop, so whether it performs the downsample itself is unresolved. Grade: inferred.

## `CISendFc` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x222e7b0`

`CISendFc` (100 bytes) reads one byte at a0+0xc0 and five single-precision words from a0 offsets 0x98, 0x18, 0x1c, 0x20 and 0x24. It stores those values to the absolute address 0x10000 between 0x222e7d0 and 0x222e7fc, makes no calls, and returns the constant 0xffffffff8080d005 at 0x222e80c. The name suggests it sends a fixed record, but the facts do not say what the flag byte selects or what 0x10000 is. Grade: inferred.

## `CISendClippedBmFmN` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x222ecd0`

`CISendClippedBmFmN` (352 bytes) has the same shape as `CISendFc`: a flag byte at a0+0xc0, then a long run of stores to abs 0x10000 (11 integer and 39 single-precision). Its floats come from a0 offsets 0x98, 0xa8, 0xc8, 0xcc, 0xd0 and 0x18 to 0x24. It makes no calls and returns the same constant as `CISendFc`, at 0x222ee28. The name points to a clipped bitmap send path, and the store count suggests a multi-field packet, but the facts do not confirm the layout. Grade: inferred.

## `libGLcore.so` at `0x2239050`

`__glOdysseyHyperpipeStereo` (116 bytes) loads a word at a0+0x285d8 (0x2239064) and a field of a3 at offset 0 (0x223906c). It makes one indirect call through the pointer at 0x221da60, which the render names `__glOdysseyIoctl`, at 0x22390a0. The call passes the fixed request number 0x6f640018, a stack buffer at sp-48, and the loaded word, and the routine returns 0 or 1 at 0x22390bc. It reads like a thin stereo-mode query that asks the driver through ioctl, but the request semantics and failure handling are not shown. Grade: inferred.

## `__glOdyim_Vertex2d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x2319380`

`__glOdyim_Vertex2d` (36 bytes) stores one word at 0x2319394 and two single-precision words at 0x2319398 and 0x23193a0, all to abs 0x10000. It loads nothing and calls nothing, so its inputs come straight from argument registers, and it returns 0x10000 at 0x231939c. A header word followed by data words suggests a small immediate-mode vertex packet, but the facts do not show the packet layout or whether 0x10000 is a device FIFO. Grade: inferred.

## `__glOdyim_Vertex3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x2319580`

`__glOdyim_Vertex3d` (44 bytes) stores one word at 0x2319598 and three single-precision words at 0x231959c, 0x23195a0 and 0x23195a8, all to abs 0x10000. It has no loads or calls and returns 0x10000 at 0x23195a4. The store shape matches `__glOdyim_Vertex2d` with one more coordinate, which fits a 3D vertex packet, but the field widths are inferred from the store count alone. Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x2319680`

`__glOdyim_Vertex3i` (56 bytes) makes four word stores to abs 0x10000 (three listed at 0x23196a4, 0x23196a8 and 0x23196ac), with no loads or calls. It returns 0x10000 at 0x23196b0. Four integer words fit a header plus three integer components, the integer counterpart of the 3d vertex emitter, though the facts only show the store count. Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x2319940`

`__glOdyim_Vertex4i` (68 bytes) makes five word stores to abs 0x10000 (including 0x231996c, 0x2319970 and 0x2319974), with no loads or calls, and returns 0x10000 at 0x231997c. Five words fit a header plus four integer components, which suggests a 4-component integer vertex packet. The layout is inferred from the store count only. Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231e800`

`__glOdyim_TexCoord3d` (44 bytes) stores one word at 0x231e818 and three single-precision words at 0x231e81c, 0x231e820 and 0x231e828, all to abs 0x10000. It has no loads or calls and returns 0x10000 at 0x231e824. The shape matches the 3d emitters, so it is probably a three-component texture-coordinate packet, but the facts do not name the fields. Grade: inferred.

## `libGLcore.so` at `0x231ef00`

`__glOdyim_ScratchColor3b` (32 bytes) makes four 4-byte word stores to abs 0x10000 (including 0x231ef0c, 0x231ef10 and 0x231ef14) and returns 0x10000 at 0x231ef18. It has no loads or calls. The name suggests byte-sized channels, but every store in the render is a 4-byte word, so any packing of byte channels is not shown. Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231efc0`

`__glOdyim_Color3d` (44 bytes) stores one word at 0x231efd8 and three single-precision words at 0x231efdc, 0x231efe0 and 0x231efe8, all to abs 0x10000. It has no loads or calls and returns 0x10000 at 0x231efe4. The store pattern matches `__glOdyim_TexCoord3d`, so a header word followed by three floats is the most likely reading, but the facts do not name the color fields. Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231f000`

`__glOdyim_ScratchColor3d` (44 bytes) makes the same stores as `__glOdyim_Color3d`: one word at 0x231f018 and three single-precision words at 0x231f01c, 0x231f020 and 0x231f028, all to abs 0x10000. It has no loads or calls and returns 0x10000 at 0x231f024. The render shows no difference from the non-scratch variant, so the facts do not say what the scratch path changes. Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231f200`

`__glOdyim_ScratchColor3i` (32 bytes) makes four word stores to abs 0x10000 (including 0x231f20c, 0x231f210 and 0x231f214) and returns 0x10000 at 0x231f218. It has no loads or calls. The shape is a header plus three integer components, the same as `__glOdyim_ScratchColor3s` and `__glOdyim_ScratchColor3ui`. Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231f300`

`__glOdyim_ScratchColor3s` (32 bytes) makes four word stores to abs 0x10000 (including 0x231f30c, 0x231f310 and 0x231f314) and returns 0x10000 at 0x231f318. It has no loads or calls, and its shape matches `__glOdyim_ScratchColor3i`. The facts do not show a width difference between the signed and unsigned variants. Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231f500`

`__glOdyim_ScratchColor3ui` (32 bytes) makes four word stores to abs 0x10000 (including 0x231f50c, 0x231f510 and 0x231f514) and returns 0x10000 at 0x231f518. It has no loads or calls, and its shape matches the other three-component scratch color emitters. Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231f600`

`__glOdyim_ScratchColor3us` (32 bytes) makes four word stores to abs 0x10000 (including 0x231f60c, 0x231f610 and 0x231f614) and returns 0x10000 at 0x231f618. It has no loads or calls, and its shape matches the other three-component scratch color emitters. Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231f700`

`__glOdyim_ScratchColor4b` (36 bytes) makes five word stores to abs 0x10000 (including 0x231f70c, 0x231f710 and 0x231f714) and returns 0x10000 at 0x231f71c. It has no loads or calls. Five words fit a header plus four components, the four-component counterpart of the 3-component scratch emitters. Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231f8c0`

`__glOdyim_ScratchColor4dv` (68 bytes) is the one routine in this batch that reads its input from memory. It loads four doubles from a0 at offsets 0, 8, 0x10 and 0x18 (0x231f8c0 to 0x231f8dc), stores one word at 0x231f8e4 and four single-precision words at 0x231f8ec to 0x231f8f8, all to abs 0x10000, and returns 0x10000 at 0x231f8fc. It makes no calls. A vector-of-doubles argument fits the load pattern, but the field layout is inferred from the offsets. Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231fa80`

`__glOdyim_ScratchColor4i` (36 bytes) makes five word stores to abs 0x10000 (including 0x231fa8c, 0x231fa90 and 0x231fa94) and returns 0x10000 at 0x231fa9c. It has no loads or calls, and its store count matches the other four-component scratch emitters. Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231fb80`

`__glOdyim_ScratchColor4s` (36 bytes) makes five word stores to abs 0x10000 (including 0x231fb8c, 0x231fb90 and 0x231fb94) and returns 0x10000 at 0x231fb9c. It has no loads or calls, and its shape matches `__glOdyim_ScratchColor4i`. Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231fc80`

`__glOdyim_ScratchColor4ub` (36 bytes) makes five word stores to abs 0x10000 (including 0x231fc8c, 0x231fc90 and 0x231fc94) and returns 0x10000 at 0x231fc9c. It has no loads or calls. The byte-typed name does not change the 4-byte stores the render shows, so channel packing is unknown. Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231fd80`

`__glOdyim_ScratchColor4ui` (36 bytes) makes five word stores to abs 0x10000 (including 0x231fd8c, 0x231fd90 and 0x231fd94) and returns 0x10000 at 0x231fd9c. It has no loads or calls, and its shape matches the other four-component scratch emitters. Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231fe80`

`__glOdyim_ScratchColor4us` (36 bytes) makes five word stores to abs 0x10000 (including 0x231fe8c, 0x231fe90 and 0x231fe94) and returns 0x10000 at 0x231fe9c. It has no loads or calls, and its shape matches the other four-component scratch emitters. Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231ff80`

`__glOdyim_ScratchIndexd` (28 bytes) makes one word store at 0x231ff90 and one single-precision store at 0x231ff98, both to abs 0x10000, and returns 0x10000 at 0x231ff94. It has no loads or calls. Two stores fit a header word plus one value, but the facts do not establish the index width or meaning. Grade: inferred.

## `libGL.so` at `0xd8d2e68`

`isNotProxy` (932 bytes, o32, `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`) first loads a0+0x24 (0xd8d2e90) and compares that field with 0x40 at 0xd8d2e98. It opens a path string at 0xd8dd42c with flags 0x802 (`open` at 0xd8d2eb4), issues `fcntl` with command 2 and argument 5 (0xd8d2edc), then calls `ioctl` with request 0x65 (0xd8d2f14) and `close`. It then issues `ioctl` with request 0x66 into a stack buffer at sp-28 (0xd8d2f8c), compares the ioctl result with the a0+0x24 field (0xd8d2f5c), and scans a string with `strchr` for ':' (0xd8d2fd8) followed by a character loop that checks for '.' (0x2e) at 0xd8d301c. It returns 0 or 1 at 0xd8d3054. The name suggests a check that a device is not a proxy, and the open-and-ioctl probe fits that, but the ioctl meanings and the exact predicate are not established, so the role stays partly open. Grade: inferred.
