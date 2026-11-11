# Routine role statements: tier-1 reading batch 8 (odsy)

Role statements for 25 routines from batch 8 of the tier-1 reading round. These are entries 200 to 224 (0-based) of the ranked target list for the round, and all 25 rendered entries passed the grader. Each statement uses only the rendered facts for its routine: instructions, memory accesses, constants and calls. Every grade is inferred. The facts show what a routine reads, writes and calls. They do not show what the code is for.

- `DownsampleTextureThruHW` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab7238
  `DownsampleTextureThruHW` reads through a pointer loaded from abs 0x1010 and writes 28 words and 14 floats to abs 0x4000, plus nine words to abs 0x1018. Its calls are `__glOdysseyImageLogBase2` (0xdab7408, 0xdab744c), `ChooseSuitableBuzzTexModeBaseFmt` (0xdab7628), `GetImageFmtEnumFromBuzzTexFormat` (0xdab7880), `__glOdysseyImageCalcFieldFormat` (0xdab7894) and `__glOdysseyValidateHardware` (0xdab7bd4). The callees point to format selection and validation around a texture downsample, but the facts show no filter arithmetic, so the downsample role is only suggested by the name.
  Evidence grade: inferred.

- `RGBSendFc` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacec48
  `RGBSendFc` reads the byte at a0+0xb8 (0xdacec48) and tests a flag from [a0+184] at 0xdacec54. It loads eight floats from a0+0x10 to a0+0x1c and a0+0x90 to a0+0x9c, then stores them with three words to abs 0x4000. It returns 0xf or 0x10 at 0xdacecc8. Those values read like a status pair, but the facts do not say what they mean.
  Evidence grade: inferred.

- `RGBSendClippedBmFmTN` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacfde0
  `RGBSendClippedBmFmTN` is the largest of the RGB send routines at 744 bytes. It reads the byte at a0+0xb8 and the words at abs 0x1010 and [0x1010]+0x588, then loads floats from a0+0x90 to a0+0x98 and a0+0x170 to a0+0x180. It stores 20 words and 75 floats to abs 0x4000 and returns the value loaded from [0x1010] at 0xdad00c0. The name suggests a clipped bitmap sent to the same store target, but the clipping logic is not visible in these facts.
  Evidence grade: inferred.

- `CISendClippedBmFmN` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad0640
  `CISendClippedBmFmN` has the same shape as the RGB send above, at 372 bytes. It reads the byte at a0+0xb8 (0xdad064c), tests the flag at 0xdad0658, and loads floats from a0+0x90, a0+0xa0, a0+0xc0 to a0+0xc8, and a0+0x10 to a0+0x1c. It stores 11 words and 39 floats to abs 0x4000 and returns 0xf or 0x10 at 0xdad07ac. The CI prefix suggests color-index data, but that comes from the name alone.
  Evidence grade: inferred.

- `__glOdyim_Vertex2d` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba70c0
  `__glOdyim_Vertex2d` is a 32-byte routine with no loads and no calls in its facts. It makes three stores to abs 0x4000: one word at 0xdba70d0 and two floats at 0xdba70d4 and 0xdba70dc. Its return at 0xdba70d8 leaves v0 unknown. The name points to a 2D vertex submit that writes coordinates to the same target as the other immediate-mode routines.
  Evidence grade: inferred.

- `__glOdyim_Vertex3d` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba72c0
  `__glOdyim_Vertex3d` is 44 bytes with no loads and no calls. It stores one word at 0xdba72d8 and three floats at 0xdba72dc, 0xdba72e0 and 0xdba72e8, all to abs 0x4000. It returns at 0xdba72e4 with v0 unknown. The shape matches a 3D vertex with three coordinate floats.
  Evidence grade: inferred.

- `__glOdyim_Vertex3i` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba73c0
  `__glOdyim_Vertex3i` is 52 bytes with no loads and no calls. It makes four word stores to abs 0x4000, including 0xdba73e0, 0xdba73e4 and 0xdba73e8, and returns at 0xdba73ec with v0 unknown. The stores are all words, not floats, which fits the integer name.
  Evidence grade: inferred.

- `__glOdyim_Vertex4i` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba75c0
  `__glOdyim_Vertex4i` is 64 bytes with no loads and no calls. It makes five word stores to abs 0x4000, including 0xdba75e8, 0xdba75ec and 0xdba75f0, and returns at 0xdba75f8 with v0 unknown. The extra store over the 3i form fits a fourth component.
  Evidence grade: inferred.

- `__glOdyim_TexCoord3d` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbace80
  `__glOdyim_TexCoord3d` is 44 bytes with no loads and no calls. It stores one word at 0xdbace94 and three floats at 0xdbace9c, 0xdbacea0 and 0xdbacea8, all to abs 0x4000. Its return at 0xdbacea4 leaves v0 unknown. The name suggests a three-component texture coordinate setter.
  Evidence grade: inferred.

- `__glOdyim_ScratchColor3b` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbad540
  `__glOdyim_ScratchColor3b` is 36 bytes with no loads and no calls. Its only memory activity is two doubleword stores to abs 0x4000 at 0xdbad558 and 0xdbad560, and its return at 0xdbad55c has v0 unknown. The byte-to-float step that the name suggests does not show up in these facts.
  Evidence grade: inferred.

- `__glOdyim_Color3d` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbad600
  `__glOdyim_Color3d` is 44 bytes with no loads and no calls. It stores one word at 0xdbad614 and three floats at 0xdbad61c, 0xdbad620 and 0xdbad628, all to abs 0x4000, and returns at 0xdbad624 with v0 unknown. The shape matches an RGB color set with three double components.
  Evidence grade: inferred.

- `__glOdyim_ScratchColor3d` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbad640
  `__glOdyim_ScratchColor3d` is 44 bytes and has the same store pattern as `__glOdyim_Color3d` at 0xdbad600: one word at 0xdbad654 and three floats at 0xdbad65c, 0xdbad660 and 0xdbad668, all to abs 0x4000. It returns at 0xdbad664 with v0 unknown. The facts cannot separate the scratch variant from the plain one, so the difference, if any, is not established here.
  Evidence grade: inferred.

- `__glOdyim_ScratchColor3i` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbad840
  `__glOdyim_ScratchColor3i` is 36 bytes with no loads and no calls. It makes two doubleword stores to abs 0x4000 at 0xdbad858 and 0xdbad860, and returns at 0xdbad85c with v0 unknown. It has the same shape as the other three-component scratch color routines in this batch.
  Evidence grade: inferred.

- `__glOdyim_ScratchColor3s` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbad940
  `__glOdyim_ScratchColor3s` is 36 bytes with no loads and no calls. It makes two doubleword stores to abs 0x4000 at 0xdbad958 and 0xdbad960, and returns at 0xdbad95c with v0 unknown. It matches the 3i form in its store shape.
  Evidence grade: inferred.

- `__glOdyim_ScratchColor3ui` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbadb40
  `__glOdyim_ScratchColor3ui` is 36 bytes with no loads and no calls. It makes two doubleword stores to abs 0x4000 at 0xdbadb58 and 0xdbadb60, and returns at 0xdbadb5c with v0 unknown. Its store shape matches the 3i and 3s forms.
  Evidence grade: inferred.

- `__glOdyim_ScratchColor3us` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbadc40
  `__glOdyim_ScratchColor3us` is 36 bytes with no loads and no calls. It makes two doubleword stores to abs 0x4000 at 0xdbadc58 and 0xdbadc60, and returns at 0xdbadc5c with v0 unknown. Its store shape matches the other three-component scratch forms.
  Evidence grade: inferred.

- `__glOdyim_ScratchColor4b` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbadd40
  `__glOdyim_ScratchColor4b` is 40 bytes with no loads and no calls. It makes one doubleword store at 0xdbadd54 and three word stores at 0xdbadd58, 0xdbadd5c and 0xdbadd64, all to abs 0x4000. It returns at 0xdbadd60 with v0 unknown. The four stores fit a four-component color, but the facts do not show the byte packing.
  Evidence grade: inferred.

- `__glOdyim_ScratchColor4dv` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbadec0
  `__glOdyim_ScratchColor4dv` is 64 bytes. It reads four doublewords from a0 at offsets 0x0, 0x8, 0x10 and 0x18, then makes one word store at 0xdbadee0 and four float stores, including 0xdbadee8, 0xdbadef0 and 0xdbadef4, all to abs 0x4000. It returns at 0xdbadef8 with v0 unknown. All of its loads come from a0 at offsets 0x0 to 0x18, which fits a four-double argument, though the facts do not give the argument type.
  Evidence grade: inferred.

- `__glOdyim_ScratchColor4i` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbae040
  `__glOdyim_ScratchColor4i` is 40 bytes with no loads and no calls. It makes one doubleword store at 0xdbae054 and three word stores at 0xdbae058, 0xdbae05c and 0xdbae064, all to abs 0x4000, and returns at 0xdbae060 with v0 unknown. The store pattern matches the 4b form.
  Evidence grade: inferred.

- `__glOdyim_ScratchColor4s` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbae140
  `__glOdyim_ScratchColor4s` is 40 bytes with no loads and no calls. It makes one doubleword store at 0xdbae154 and three word stores at 0xdbae158, 0xdbae15c and 0xdbae164, all to abs 0x4000, and returns at 0xdbae160 with v0 unknown. The store pattern matches the 4i and 4b forms.
  Evidence grade: inferred.

- `__glOdyim_ScratchColor4ub` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbae240
  `__glOdyim_ScratchColor4ub` is 40 bytes with no loads and no calls. It makes one doubleword store at 0xdbae254 and three word stores at 0xdbae258, 0xdbae25c and 0xdbae264, all to abs 0x4000, and returns at 0xdbae260 with v0 unknown. The store pattern matches the other four-component forms.
  Evidence grade: inferred.

- `__glOdyim_ScratchColor4ui` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbae340
  `__glOdyim_ScratchColor4ui` is 40 bytes with no loads and no calls. It makes one doubleword store at 0xdbae354 and three word stores at 0xdbae358, 0xdbae35c and 0xdbae364, all to abs 0x4000, and returns at 0xdbae360 with v0 unknown. The store pattern matches the other four-component forms.
  Evidence grade: inferred.

- `__glOdyim_ScratchColor4us` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbae440
  `__glOdyim_ScratchColor4us` is 40 bytes with no loads and no calls. It makes one doubleword store at 0xdbae454 and three word stores at 0xdbae458, 0xdbae45c and 0xdbae464, all to abs 0x4000, and returns at 0xdbae460 with v0 unknown. The store pattern matches the other four-component forms.
  Evidence grade: inferred.

- `__glOdyim_ScratchIndexd` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbae540
  `__glOdyim_ScratchIndexd` is 24 bytes with no loads and no calls. Its only memory access is one doubleword store to abs 0x4000 at 0xdbae554, which sits just after its return at 0xdbae550. The index name suggests a single color-index double, but the facts show no conversion step.
  Evidence grade: inferred.

- `__glXOpenGraphicsDevice` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd89ccfc
  `__glXOpenGraphicsDevice` is a 408-byte n32 routine. It reads the table pointer at abs 0x1014, indexes it by a0, which must stay below 0x41 (signed compare at 0xd89cd18), and then calls `open` on a path string at 0xd8cf780 with flags 0x802, `fcntl` with command 2, and `ioctl` with request 0x65 and a fourth argument read from [[0x1014]+260]. It calls `__glXFatal` on each failure path, at 0xd89cd58, 0xd89cdd0, 0xd89ce04, 0xd89ce20 and 0xd89ce80. The open, fcntl and ioctl sequence suggests it opens a device node and configures it, but the device the path names is not in the facts, so the device identity remains open.
  Evidence grade: inferred.
