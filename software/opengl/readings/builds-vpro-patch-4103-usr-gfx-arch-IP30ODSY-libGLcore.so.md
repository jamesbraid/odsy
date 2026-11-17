# Readings: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`

One entry per routine, filed here from the reading batches by binary.

- `sendBlenderColorTokensAccum31` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda2c11c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda2c11c-0xda2c1e4 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xda2c12c loads 4 bytes from abs 0x1010.
  The `lw` at 0xda2c13c loads 4 bytes from [0x1010] +0x7b58.
  The `lw` at 0xda2c174 loads 4 bytes from [0x1010] +0x7b5c.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7b58, including `sw` at 0xda2c188, `sw` at 0xda2c19c.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7b5c, including `sw` at 0xda2c1b0, `sw` at 0xda2c1b4.
  The `lw` at 0xda2c1bc loads 4 bytes from [0x1010] +0x168d0.
  The `sw` at 0xda2c1cc stores 4 bytes to [0x1010] +0x168d0.
  The `sw` at 0xda2c1d4 stores 4 bytes to abs 0x1018.
  The `lw` at 0xda2c1d8 loads 4 bytes from [0x1010] +0x2d44.
  The `sw` at 0xda2c1e0 stores 4 bytes to [0x1010] +0x2d44.
  The return at 0xda2c1dc has v0 = [0x1010].

- `__glOdyim_SoftAccum` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda2fda8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda2fda8-0xda2fed8 (304 bytes).
  It occupies 304 bytes.
  The `lw` at 0xda2fdcc loads 4 bytes from abs 0x1018.
  The `lw` at 0xda2fdd4 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda2fddc loads 4 bytes from [0x1010] +0x79e8.
  The `lw` at 0xda2fe0c loads 4 bytes from [0x1010] +0x7a5c.
  The `lw` at 0xda2fe44 loads 4 bytes from table(0xdbb8578) +0x0.
  The `lw` at 0xda2fea8 loads 4 bytes from [0x1010] +0xc7c.
  The `jalr` at 0xda2fde8 calls __glSetError [0xdb1ac34] with a0=0x502, a1=a1 at entry (arg1), a2=[0x1010], a3=a3 at entry (arg3).
  The `jalr` at 0xda2fe14 calls (unknown callee) with a0=[0x1010], a1=[0x1010]+31192, a2=[0x1010], a3=a3 at entry (arg3).
  The `jalr` at 0xda2fe98 calls __glSetError [0xdb1ac34] with a0=0x500, a1=?, a2=[0x1010], a3=?.
  The `jalr` at 0xda2febc calls (unknown callee) with a0=[0x1010]+31192, a1=a1 at entry (arg1), a2=[0x1010], a3=?.
  The `bnel` branch at 0xda2fdd8 targets 0xda2fdfc, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1); its branch-likely delay slot `lw t7,31208(a2)` at 0xda2fddc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2fdf0 targets 0xda2fec8 and is always taken.
  The `bnel` branch at 0xda2fe00 targets 0xda2fe28, is taken when t7(=[[0x1010]+31208]) != 0, and falls through when t7(=[[0x1010]+31208]) == 0; its branch-likely delay slot `lw t8,48(sp)` at 0xda2fe04 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2fe30 targets 0xda2fe90, is taken when t0(=a0-256) >= 0x5 (unsigned), and falls through when t0(=a0-256) < 0x5 (unsigned).
  The `beq` branch at 0xda2fe58 targets 0xda2fea8 and is always taken.
  The `beq` branch at 0xda2fe64 targets 0xda2fea8 and is always taken.
  The `beq` branch at 0xda2fe70 targets 0xda2fea8 and is always taken.
  The `beq` branch at 0xda2fe7c targets 0xda2fea8 and is always taken.
  The `beq` branch at 0xda2fe88 targets 0xda2fea8 and is always taken.
  The `beq` branch at 0xda2fea0 targets 0xda2fec8 and is always taken.
  The `bne` branch at 0xda2feb4 targets 0xda2fec8, is taken when t1(=[[0x1010]+3196]) != at(=0x1c00), and falls through when t1(=[[0x1010]+3196]) == at(=0x1c00).
  The return at 0xda2fed0 has v0 = one of ret(__glSetError), ?.
  The instructions from 0xda2fdf8 to 0xda2fdf8 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xda2fe4c uses the jump table at 0xdbb8578 with targets 0xda2fe54, 0xda2fe60, 0xda2fe6c, 0xda2fe78, 0xda2fe84.

- `hardLoad24` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda2fed8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda2fed8-0xda305a4 (1740 bytes).
  It occupies 1740 bytes.
  The `lw` at 0xda2feec loads 4 bytes from abs 0x1010.
  6 such `lw` accesses load 4 bytes from [0x1010] +0x95c4, including `lw` at 0xda2ff38, `lw` at 0xda3008c, `lw` at 0xda30404.
  6 such `sw` accesses store 4 bytes to [0x1010] +0x95c4, including `sw` at 0xda2ff4c, `sw` at 0xda300b4, `sw` at 0xda30418.
  10 such `lw` accesses load 4 bytes from [0x1010] +0x168d0, including `lw` at 0xda2ff58, `lw` at 0xda2ff94, `lw` at 0xda30038.
  10 such `sw` accesses store 4 bytes to [0x1010] +0x168d0, including `sw` at 0xda2ff70, `sw` at 0xda2ffa4, `sw` at 0xda30048.
  10 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xda2ff74, `sw` at 0xda2ffa8, `sw` at 0xda3004c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7b1c, including `lw` at 0xda2ff78, `lw` at 0xda303b4.
  10 such `lw` accesses load 4 bytes from [0x1010] +0x2d44, including `lw` at 0xda2ff7c, `lw` at 0xda2ffac, `lw` at 0xda30054.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7b1c, including `sw` at 0xda2ff8c, `sw` at 0xda303d4.
  10 such `sw` accesses store 4 bytes to [0x1010] +0x2d44, including `sw` at 0xda2ff90, `sw` at 0xda2ffb8, `sw` at 0xda30068.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x8c0c, including `lw` at 0xda2ffbc, `lw` at 0xda301a8, `lw` at 0xda30310.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x8c0c, including `sw` at 0xda2ffd0, `sw` at 0xda301e4, `sw` at 0xda30324.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x8c10, including `lw` at 0xda2ffd4, `lw` at 0xda301e8, `lw` at 0xda30328.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x8c10, including `sw` at 0xda2ffdc, `sw` at 0xda301f0, `sw` at 0xda30338.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x8c14, including `lw` at 0xda2ffe0, `lw` at 0xda301f4, `lw` at 0xda3033c.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x8c14, including `sw` at 0xda2ffec, `sw` at 0xda30200, `sw` at 0xda30348.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x8c18, including `lw` at 0xda2fff0, `lw` at 0xda30204, `lw` at 0xda3034c.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x8c18, including `sw` at 0xda2fff8, `sw` at 0xda3020c, `sw` at 0xda30354.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x8c1c, including `lw` at 0xda2fffc, `lw` at 0xda30210, `lw` at 0xda30358.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x8c1c, including `sw` at 0xda30008, `sw` at 0xda3021c, `sw` at 0xda30364.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x8c20, including `lw` at 0xda3000c, `lw` at 0xda30220, `lw` at 0xda30368.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x8c20, including `sw` at 0xda30014, `sw` at 0xda30228, `sw` at 0xda30370.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x8c24, including `lw` at 0xda30018, `lw` at 0xda3022c, `lw` at 0xda30374.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x8c24, including `sw` at 0xda30024, `sw` at 0xda30238, `sw` at 0xda30380.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x8c28, including `lw` at 0xda30028, `lw` at 0xda3023c, `lw` at 0xda30384.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x8c08, including `sw` at 0xda3002c, `sw` at 0xda30240, `sw` at 0xda30388.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x8c28, including `sw` at 0xda30034, `sw` at 0xda30248, `sw` at 0xda30390.
  The `jalr` at 0xda30080 calls __glOdysseyImageMovePixelsCopy [0xda9b494] with a0=[0x1010]+73540, a1=[0x1010]+73004, a2=[0x1010]+73456, a3=0x1.
  The `jalr` at 0xda300e4 calls ceilf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda30274 calls __glOdysseyImageMovePixelsCopy [0xda9b494] with a0=[0x1010]+73540, a1=[0x1010]+73540, a2=[0x1010]+73456, a3=0x1.
  The `jalr` at 0xda30298 calls pow with a0=?, a1=?, a2=?, a3=?; fp f12=f30.
  The `jalr` at 0xda302b8 calls powf with a0=?, a1=?, a2=?, a3=?; fp f12=f26.
  The `jalr` at 0xda302e8 calls powf with a0=?, a1=?, a2=?, a3=?; fp f12=f26.
  The `jalr` at 0xda30468 calls sendBlenderOpTokens [0xda2c010] with a0=0x0, a1=0x28, a2=0x0, a3=?.
  The `jalr` at 0xda30480 calls sendBlenderColorTokensAccum24 [0xda2c090] with a0=0xfff, a1=?, a2=?, a3=?.
  The `jalr` at 0xda304ec calls __glOdysseyImageMovePixelsCopy [0xda9b494] with a0=[0x1010]+73116, a1=[0x1010]+73540, a2=[0x1010]+73456, a3=0x1.
  The `jalr` at 0xda30550 calls __glOdysseyImageMovePixelsCopy [0xda9b494] with a0=[0x1010]+73172, a1=[0x1010]+73540, a2=[0x1010]+73456, a3=0x1.
  The `bne` branch at 0xda30108 targets 0xda30114, is taken when s7(?) != 0, and falls through when s7(?) == 0.
  The `bc1f` branch at 0xda30124 targets 0xda30130, is taken when not (f6 < f24 (c.lt.d at 0xda30114)), and falls through when f6 < f24 (c.lt.d at 0xda30114).
  The `blez` branch at 0xda30130 targets 0xda30310, is taken when s7(?) <= 0 (signed), and falls through when s7(?) > 0 (signed).
  The `bc1fl` branch at 0xda3016c targets 0xda30180, is taken when not (f24 < f0 (c.lt.d at 0xda30164)), and falls through when f24 < f0 (c.lt.d at 0xda30164); its branch-likely delay slot `mtc1 at,$f9` at 0xda30170 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda30174 targets 0xda301a0 and is always taken.
  The `bc1fl` branch at 0xda30190 targets 0xda301a4, is taken when not (f0 < f8 (c.lt.d at 0xda30188)), and falls through when f0 < f8 (c.lt.d at 0xda30188); its branch-likely delay slot `lui at,0x4580` at 0xda30194 runs only when taken and is annulled on fall-through.
  The `bc1f` branch at 0xda30284 targets 0xda302dc, is taken when not (f22 < f28 (c.lt.d at 0xda3027c)), and falls through when f22 < f28 (c.lt.d at 0xda3027c).
  The `beq` branch at 0xda302d4 targets 0xda30304 and is always taken.
  The `bnel` branch at 0xda30308 targets 0xda30160, is taken when s3(?) != s7(?), and falls through when s3(?) == s7(?); its branch-likely delay slot `cvt.d.s $f0,$f2` at 0xda3030c runs only when taken and is annulled on fall-through.
  The return at 0xda3059c has v0 = ret(__glOdysseyImageMovePixelsCopy).
  The instructions from 0xda3017c to 0xda3017c are not reached by any path from the entry, and their branches are not listed.

- `hardAccumulate24` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda305a4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda305a4-0xda30c70 (1740 bytes).
  It occupies 1740 bytes.
  The `lw` at 0xda305b8 loads 4 bytes from abs 0x1010.
  6 such `lw` accesses load 4 bytes from [0x1010] +0x95c4, including `lw` at 0xda30604, `lw` at 0xda30758, `lw` at 0xda30ad0.
  6 such `sw` accesses store 4 bytes to [0x1010] +0x95c4, including `sw` at 0xda30618, `sw` at 0xda30780, `sw` at 0xda30ae4.
  10 such `lw` accesses load 4 bytes from [0x1010] +0x168d0, including `lw` at 0xda30624, `lw` at 0xda30660, `lw` at 0xda30704.
  10 such `sw` accesses store 4 bytes to [0x1010] +0x168d0, including `sw` at 0xda3063c, `sw` at 0xda30670, `sw` at 0xda30714.
  10 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xda30640, `sw` at 0xda30674, `sw` at 0xda30718.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7b1c, including `lw` at 0xda30644, `lw` at 0xda30a80.
  10 such `lw` accesses load 4 bytes from [0x1010] +0x2d44, including `lw` at 0xda30648, `lw` at 0xda30678, `lw` at 0xda30720.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7b1c, including `sw` at 0xda30658, `sw` at 0xda30aa0.
  10 such `sw` accesses store 4 bytes to [0x1010] +0x2d44, including `sw` at 0xda3065c, `sw` at 0xda30684, `sw` at 0xda30734.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x8c0c, including `lw` at 0xda30688, `lw` at 0xda30874, `lw` at 0xda309dc.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x8c0c, including `sw` at 0xda3069c, `sw` at 0xda308b0, `sw` at 0xda309f0.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x8c10, including `lw` at 0xda306a0, `lw` at 0xda308b4, `lw` at 0xda309f4.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x8c10, including `sw` at 0xda306a8, `sw` at 0xda308bc, `sw` at 0xda30a04.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x8c14, including `lw` at 0xda306ac, `lw` at 0xda308c0, `lw` at 0xda30a08.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x8c14, including `sw` at 0xda306b8, `sw` at 0xda308cc, `sw` at 0xda30a14.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x8c18, including `lw` at 0xda306bc, `lw` at 0xda308d0, `lw` at 0xda30a18.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x8c18, including `sw` at 0xda306c4, `sw` at 0xda308d8, `sw` at 0xda30a20.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x8c1c, including `lw` at 0xda306c8, `lw` at 0xda308dc, `lw` at 0xda30a24.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x8c1c, including `sw` at 0xda306d4, `sw` at 0xda308e8, `sw` at 0xda30a30.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x8c20, including `lw` at 0xda306d8, `lw` at 0xda308ec, `lw` at 0xda30a34.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x8c20, including `sw` at 0xda306e0, `sw` at 0xda308f4, `sw` at 0xda30a3c.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x8c24, including `lw` at 0xda306e4, `lw` at 0xda308f8, `lw` at 0xda30a40.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x8c24, including `sw` at 0xda306f0, `sw` at 0xda30904, `sw` at 0xda30a4c.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x8c28, including `lw` at 0xda306f4, `lw` at 0xda30908, `lw` at 0xda30a50.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x8c08, including `sw` at 0xda306f8, `sw` at 0xda3090c, `sw` at 0xda30a54.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x8c28, including `sw` at 0xda30700, `sw` at 0xda30914, `sw` at 0xda30a5c.
  The `jalr` at 0xda3074c calls __glOdysseyImageMovePixelsCopy [0xda9b494] with a0=[0x1010]+73540, a1=[0x1010]+73004, a2=[0x1010]+73456, a3=0x1.
  The `jalr` at 0xda307b0 calls ceilf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda30940 calls __glOdysseyImageMovePixelsCopy [0xda9b494] with a0=[0x1010]+73540, a1=[0x1010]+73540, a2=[0x1010]+73456, a3=0x1.
  The `jalr` at 0xda30964 calls pow with a0=?, a1=?, a2=?, a3=?; fp f12=f30.
  The `jalr` at 0xda30984 calls powf with a0=?, a1=?, a2=?, a3=?; fp f12=f26.
  The `jalr` at 0xda309b4 calls powf with a0=?, a1=?, a2=?, a3=?; fp f12=f26.
  The `jalr` at 0xda30b34 calls sendBlenderOpTokens [0xda2c010] with a0=0x0, a1=0x28, a2=0x8, a3=?.
  The `jalr` at 0xda30b4c calls sendBlenderColorTokensAccum24 [0xda2c090] with a0=0xfff, a1=?, a2=?, a3=?.
  The `jalr` at 0xda30bb8 calls __glOdysseyImageMovePixelsCopy [0xda9b494] with a0=[0x1010]+73116, a1=[0x1010]+73540, a2=[0x1010]+73456, a3=0x1.
  The `jalr` at 0xda30c1c calls __glOdysseyImageMovePixelsCopy [0xda9b494] with a0=[0x1010]+73172, a1=[0x1010]+73540, a2=[0x1010]+73456, a3=0x1.
  The `bne` branch at 0xda307d4 targets 0xda307e0, is taken when s7(?) != 0, and falls through when s7(?) == 0.
  The `bc1f` branch at 0xda307f0 targets 0xda307fc, is taken when not (f6 < f24 (c.lt.d at 0xda307e0)), and falls through when f6 < f24 (c.lt.d at 0xda307e0).
  The `blez` branch at 0xda307fc targets 0xda309dc, is taken when s7(?) <= 0 (signed), and falls through when s7(?) > 0 (signed).
  The `bc1fl` branch at 0xda30838 targets 0xda3084c, is taken when not (f24 < f0 (c.lt.d at 0xda30830)), and falls through when f24 < f0 (c.lt.d at 0xda30830); its branch-likely delay slot `mtc1 at,$f9` at 0xda3083c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda30840 targets 0xda3086c and is always taken.
  The `bc1fl` branch at 0xda3085c targets 0xda30870, is taken when not (f0 < f8 (c.lt.d at 0xda30854)), and falls through when f0 < f8 (c.lt.d at 0xda30854); its branch-likely delay slot `lui at,0x4580` at 0xda30860 runs only when taken and is annulled on fall-through.
  The `bc1f` branch at 0xda30950 targets 0xda309a8, is taken when not (f22 < f28 (c.lt.d at 0xda30948)), and falls through when f22 < f28 (c.lt.d at 0xda30948).
  The `beq` branch at 0xda309a0 targets 0xda309d0 and is always taken.
  The `bnel` branch at 0xda309d4 targets 0xda3082c, is taken when s3(?) != s7(?), and falls through when s3(?) == s7(?); its branch-likely delay slot `cvt.d.s $f0,$f2` at 0xda309d8 runs only when taken and is annulled on fall-through.
  The return at 0xda30c68 has v0 = ret(__glOdysseyImageMovePixelsCopy).
  The instructions from 0xda30848 to 0xda30848 are not reached by any path from the entry, and their branches are not listed.

- `__glOdyim_HardAccum24` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda3313c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda3313c-0xda33318 (476 bytes).
  It occupies 476 bytes.
  The `lw` at 0xda3315c loads 4 bytes from abs 0x1018.
  The `lw` at 0xda33164 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda331a0 loads 4 bytes from table(0xdbb85b4) +0x0.
  The `lw` at 0xda33204 loads 4 bytes from [0x1010] +0xc7c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x95c4, including `lw` at 0xda33248, `lw` at 0xda33260.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x95c4, including `sw` at 0xda3325c, `sw` at 0xda3327c.
  The `lw` at 0xda33288 loads 4 bytes from [0x1010] +0x168d0.
  The `sw` at 0xda332a0 stores 4 bytes to [0x1010] +0x168d0.
  The `sw` at 0xda332a4 stores 4 bytes to abs 0x1018.
  The `lw` at 0xda332a8 loads 4 bytes from [0x1010] +0x2d44.
  The `sw` at 0xda332b4 stores 4 bytes to [0x1010] +0x2d44.
  The `lw` at 0xda332b8 loads 4 bytes from [0x1010] +0x11bc0.
  The `lw` at 0xda332c8 loads 4 bytes from [0x1010] +0x11c94.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x11bc0, including `sw` at 0xda332cc, `sw` at 0xda33304.
  The `jalr` at 0xda33178 calls __glSetError [0xdb1ac34] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda331f4 calls __glSetError [0xdb1ac34] with a0=0x500, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0xda33224 calls initScratchBufAccum [0xda2c360] with a0=a0 at entry (arg0), a1=?, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0xda332dc calls (unknown callee) with a0=[0x1010]+65536, a1=?, a2=a0 at entry (arg0), a3=?; fp f12=a1.
  The `bne` branch at 0xda33168 targets 0xda33188, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xda33180 targets 0xda33308 and is always taken.
  The `beq` branch at 0xda3318c targets 0xda331ec, is taken when t7(=a0-256) >= 0x5 (unsigned), and falls through when t7(=a0-256) < 0x5 (unsigned).
  The `beq` branch at 0xda331b4 targets 0xda33204 and is always taken.
  The `beq` branch at 0xda331c0 targets 0xda33204 and is always taken.
  The `beq` branch at 0xda331cc targets 0xda33204 and is always taken.
  The `beq` branch at 0xda331d8 targets 0xda33204 and is always taken.
  The `beq` branch at 0xda331e4 targets 0xda33204 and is always taken.
  The `beq` branch at 0xda331fc targets 0xda33308 and is always taken.
  The `bnel` branch at 0xda3320c targets 0xda3330c, is taken when t8(=[[0x1010]+3196]) != at(=0x1c00), and falls through when t8(=[[0x1010]+3196]) == at(=0x1c00); its branch-likely delay slot `lw ra,28(sp)` at 0xda33210 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda33238 targets 0xda33308, is taken when v0(=ret(initScratchBufAccum)) == 0, and falls through when v0(=ret(initScratchBufAccum)) != 0.
  The `beq` branch at 0xda332b0 targets 0xda332d0, is taken when a2(=a0) == at(=0x102), and falls through when a2(=a0) != at(=0x102).
  The `beq` branch at 0xda332f0 targets 0xda33308, is taken when a2(=a0) == at(=0x102), and falls through when a2(=a0) != at(=0x102).
  The return at 0xda33310 has v0 = one of 0x1000, ?.
  The indirect jump at 0xda331a8 uses the jump table at 0xdbb85b4 with targets 0xda331b0, 0xda331bc, 0xda331c8, 0xda331d4, 0xda331e0.

- `hardLoad31` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda33318 (o32).
  Inferred: the routine stages one graphics context's pixel-copy and texture work for the board,
  because the pointer it loads from 0x1010 (the `lw` at 0xda333cc) is the context per the
  `__glSetError` note, which names that address as the context source. It takes one float argument
  in f12, converts it to double and scales it along one of three paths chosen by the compares at
  0xda33338 and 0xda333a0, then truncates it to a word before the loop; the low 16 bits of that word,
  sign-extended and plus 0x1000, become a0 of `sendBlenderColorTokensAccum31` (the `jalr` at
  0xda3373c). Before any call it clears bit 0x20000 in the word at +0x7b1c of the context (load at
  0xda333e0, store at 0xda333f4), ORs 0x2 into the word at +0x168d0 (store at 0xda3340c), writes the
  constant 2 to absolute 0x1018 (store at 0xda33410), and writes back the word at +0x2d44 as it was
  read (store at 0xda3342c). It then calls `__glOdysseyImageMovePixelsCopy` (the `jalr` at
  0xda33448) with a0, a1 and a2 at the context's +0x11f44, +0x11d2c and +0x11ef0 and a3 = 1, then
  calls `memset` on a 0x40-byte stack buffer with fill 0x0 (the `jalr` at 0xda33464). Inferred: the
  copy helper's note says it moves a pixel rectangle from the description a1 addresses to the one a0
  addresses, with a2 a pointer to eight floats. If the word at +0x11eec is less than or equal to
  zero (the `lw` at 0xda3346c, the `blez` at 0xda33478), the routine goes straight to its epilogue
  and return at 0xda33864 with no further stores or calls. Otherwise an outer loop starts its
  counter at 0 (0xda33474) and repeats while the counter plus one is below that word (the `bnel` at
  0xda33830). Each pass writes a single-precision constant into four words 0x10 apart of the stack
  buffer, starting at four times the counter (the `swc1` at 0xda334f0, in a four-step inner loop
  closed by the `bne` at 0xda334ec), copies words of the buffer into other stack slots, and
  calls `__glOdysseyProgramTexFilter` (the `jalr` at 0xda33578) with a0 at a stack work area. It
  then rewrites the word at +0x7bf4 by clearing and setting 0x10000 (store at 0xda335a0), then
  clearing and setting 0x4000 (store at 0xda335a8); ORs 0x200 into +0x168d0 (store at 0xda335bc);
  copies 16 words from the stack block at frame offset 0x354 to the context from +0x8b08 on (loop
  closed by the `bne` at 0xda335f4, last word by the `sw` at 0xda33608); writes 2 to +0x8b04 (store
  at 0xda3360c); ORs 0x20000 into +0x168d0 (0xda33620); copies eight stack words to +0x8c0c through
  +0x8c28 (stores 0xda33648 to 0xda33684) and writes 2 to +0x8c08 (0xda33688); ORs 0x10000 into
  +0x168d0 (0xda3369c); copies three stack words to +0x8c8c, +0x8c90 and +0x8c94 (stores 0xda336bc
  to 0xda336cc); ORs 0x8000 into +0x168d0 (0xda336d8); clears then sets 0x20000 in +0x7b1c (store at
  0xda336f8); ORs 0x2 into +0x168d0 (0xda33714). Each of these +0x168d0 updates is followed by a
  store of 2 to 0x1018 and a write-back of +0x2d44 as read. Then the pass calls `sendBlenderOpTokens`
  with a0 = 0, a1 = 0x28, a2 = 0 (the `jalr` at 0xda33724) and `sendBlenderColorTokensAccum31`, and
  at +0x95c4 clears the 0x60000 bits and sets 0x20000 (store at 0xda3376c). It ends by calling
  `__glOdysseyImageMovePixelsTexture` with a0 at +0x11d18 plus 0xf4, 0x12c, 0x164 or 0x19c for
  counter values 0 to 3 (the `jalr` at 0xda337a4, 0xda337c0, 0xda337dc, 0xda337f8), a1 at +0x22c
  and a2 at +0x1d8 from the same base, and a3 = 0; a counter outside 0 to 3 calls `__glSetError`
  with 0x500 instead (the `jalr` at 0xda33810). Unknown: the handling by
  `__glOdysseyProgramTexFilter` of its argument block, since its only note is for a 64-bit build;
  route: read the IP30ODSY o32 listing of that callee.
  Evidence grade: inferred.

- `hardLoad31` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda33318 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda33318-0xda3386c (1364 bytes).
  It occupies 1364 bytes.
  The `lwc1` at 0xda333b8 loads 4 bytes from abs 0xdbb85c8.
  The `lw` at 0xda333cc loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7b1c, including `lw` at 0xda333e0, `lw` at 0xda336e0.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7b1c, including `sw` at 0xda333f4, `sw` at 0xda336f8.
  6 such `lw` accesses load 4 bytes from [0x1010] +0x168d0, including `lw` at 0xda333fc, `lw` at 0xda335ac, `lw` at 0xda33610.
  6 such `sw` accesses store 4 bytes to [0x1010] +0x168d0, including `sw` at 0xda3340c, `sw` at 0xda335bc, `sw` at 0xda33620.
  6 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xda33410, `sw` at 0xda335c0, `sw` at 0xda33624.
  6 such `lw` accesses load 4 bytes from [0x1010] +0x2d44, including `lw` at 0xda33418, `lw` at 0xda335c4, `lw` at 0xda33628.
  6 such `sw` accesses store 4 bytes to [0x1010] +0x2d44, including `sw` at 0xda3342c, `sw` at 0xda335d0, `sw` at 0xda33634.
  The `lw` at 0xda3346c loads 4 bytes from [0x1010] +0x11eec.
  The `swc1` at 0xda334f0 stores 4 bytes to ?.
  The `lw` at 0xda33580 loads 4 bytes from [0x1010] +0x7bf4.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7bf4, including `sw` at 0xda335a0, `sw` at 0xda335a8.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda335d8, `lw` at 0xda335e8, `lw` at 0xda335f0.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda335e4, `sw` at 0xda335ec, `sw` at 0xda335f8.
  The `sw` at 0xda3360c stores 4 bytes to [0x1010] +0x8b04.
  The `sw` at 0xda33648 stores 4 bytes to [0x1010] +0x8c0c.
  The `sw` at 0xda33654 stores 4 bytes to [0x1010] +0x8c10.
  The `sw` at 0xda3365c stores 4 bytes to [0x1010] +0x8c14.
  The `sw` at 0xda33664 stores 4 bytes to [0x1010] +0x8c18.
  The `sw` at 0xda3366c stores 4 bytes to [0x1010] +0x8c1c.
  The `sw` at 0xda33674 stores 4 bytes to [0x1010] +0x8c20.
  The `sw` at 0xda3367c stores 4 bytes to [0x1010] +0x8c24.
  The `sw` at 0xda33684 stores 4 bytes to [0x1010] +0x8c28.
  The `sw` at 0xda33688 stores 4 bytes to [0x1010] +0x8c08.
  The `sw` at 0xda336bc stores 4 bytes to [0x1010] +0x8c8c.
  The `sw` at 0xda336c4 stores 4 bytes to [0x1010] +0x8c90.
  The `sw` at 0xda336cc stores 4 bytes to [0x1010] +0x8c94.
  The `lw` at 0xda33750 loads 4 bytes from [0x1010] +0x95c4.
  The `sw` at 0xda3376c stores 4 bytes to [0x1010] +0x95c4.
  The `jalr` at 0xda33448 calls __glOdysseyImageMovePixelsCopy [0xda9b494] with a0=[0x1010]+73540, a1=[0x1010]+73004, a2=[0x1010]+73456, a3=0x1.
  The `jalr` at 0xda33464 calls memset with a0=sp-2988, a1=0x0, a2=0x40, a3=?.
  The `jalr` at 0xda33578 calls __glOdysseyProgramTexFilter [0xda99fac] with a0=sp-2916, a1=?, a2=?, a3=?.
  The `jalr` at 0xda33724 calls sendBlenderOpTokens [0xda2c010] with a0=0x0, a1=0x28, a2=0x0, a3=?.
  The `jalr` at 0xda3373c calls sendBlenderColorTokensAccum31 [0xda2c11c] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda337a4 calls __glOdysseyImageMovePixelsTexture [0xdaa043c] with a0=[0x1010]+73228, a1=[0x1010]+73540, a2=[0x1010]+73456, a3=0x0.
  The `jalr` at 0xda337c0 calls __glOdysseyImageMovePixelsTexture [0xdaa043c] with a0=[0x1010]+73284, a1=[0x1010]+73540, a2=[0x1010]+73456, a3=0x0.
  The `jalr` at 0xda337dc calls __glOdysseyImageMovePixelsTexture [0xdaa043c] with a0=[0x1010]+73340, a1=[0x1010]+73540, a2=[0x1010]+73456, a3=0x0.
  The `jalr` at 0xda337f8 calls __glOdysseyImageMovePixelsTexture [0xdaa043c] with a0=[0x1010]+73396, a1=[0x1010]+73540, a2=[0x1010]+73456, a3=0x0.
  The `jalr` at 0xda33810 calls __glSetError [0xdb1ac34] with a0=0x500, a1=?, a2=?, a3=?.
  The `bc1f` branch at 0xda33364 targets 0xda33390, is taken when not (f0 < f4 (c.lt.d at 0xda33338)), and falls through when f0 < f4 (c.lt.d at 0xda33338).
  The `beq` branch at 0xda33388 targets 0xda333cc and is always taken.
  The `bc1fl` branch at 0xda333a8 targets 0xda333c0, is taken when not (f16 <= f0 (c.le.d at 0xda333a0)), and falls through when f16 <= f0 (c.le.d at 0xda333a0); its branch-likely delay slot `mtc1 at,$f18` at 0xda333ac runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda333b4 targets 0xda333c8 and is always taken.
  The `blez` branch at 0xda33478 targets 0xda33838, is taken when t1(=[[0x1010]+73452]) <= 0 (signed), and falls through when t1(=[[0x1010]+73452]) > 0 (signed).
  The `bne` branch at 0xda334ec targets 0xda334e0, is taken when v0(?) < 0x4 (signed), and falls through when v0(?) >= 0x4 (signed).
  The `bne` branch at 0xda335f4 targets 0xda335d8, is taken when t8(?) != t1(=sp-2232), and falls through when t8(?) == t1(=sp-2232).
  The `beq` branch at 0xda33768 targets 0xda33798, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `beq` branch at 0xda33774 targets 0xda337b4, is taken when s3(?) == at(=0x1), and falls through when s3(?) != at(=0x1).
  The `beq` branch at 0xda3377c targets 0xda337d0, is taken when s3(?) == s2(=0x2), and falls through when s3(?) != s2(=0x2).
  The `beq` branch at 0xda33788 targets 0xda337ec, is taken when s3(?) == at(=0x3), and falls through when s3(?) != at(=0x3).
  The `beq` branch at 0xda33790 targets 0xda33808 and is always taken.
  The `beq` branch at 0xda337ac targets 0xda3381c and is always taken.
  The `beq` branch at 0xda337c8 targets 0xda3381c and is always taken.
  The `beq` branch at 0xda337e4 targets 0xda3381c and is always taken.
  The `beq` branch at 0xda33800 targets 0xda3381c and is always taken.
  The `bnel` branch at 0xda33830 targets 0xda334d8, is taken when s3(?) < t9(?) (signed), and falls through when s3(?) >= t9(?) (signed); its branch-likely delay slot `addiu t7,sp,156` at 0xda33834 runs only when taken and is annulled on fall-through.
  The return at 0xda33864 has v0 = one of ret(memset), ?.
  The instructions from 0xda333bc to 0xda333bc are not reached by any path from the entry, and their branches are not listed.

- `hardAccumulate31` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda3386c (o32).
  Takes one single-precision argument (f12) and, for the context at the pointer in abs 0x1010, edits
  several context state words, writes 2 to abs 0x1018 repeatedly, sends blender tokens, and runs a
  texture image routine once per index below the count in the word at +0x11eec.
  Inferred: the pointer at abs 0x1010 is the context, as the committed note for `__glSetError` gives
  for process-page word 4112.
  Scale value: a double f20 is built from f12. Below zero it is (f12 plus the double whose high word
  is 0x40000000) times the double whose high word is 0x40a00000 (the multiply at 0xda338e0); at or
  above the double whose high word is 0x3ff00000 (the compare at 0xda338f4) it is the single 2047.0
  loaded from 0xdbb85cc at 0xda3390c; otherwise it is f12 times the single 0x45000000 (the multiply
  at 0xda33918). The `mfc1` at 0xda339ec takes f20 truncated to an integer, which is sign-extended
  from 16 bits and has 0x1000 added; that sum is the only argument of
  `sendBlenderColorTokensAccum31` (the `jalr` at 0xda33c90). Before the loop it clears bit 0x20000
  of the word at +0x7b1c (store at 0xda33948), ORs 0x2 into the word at +0x168d0 (store at
  0xda33960), writes 2 to abs 0x1018 (store at 0xda33964), writes back the word at +0x2d44 as read
  (store at 0xda33980), calls `__glOdysseyImageMovePixelsCopy` with a0 = +73540, a1 = +73004, a2 =
  +73456 and a3 = 1 (`jalr` at 0xda3399c), and clears a 64-byte area of its stack frame with `memset` (`jalr` at
  0xda339b8). If the word at +0x11eec is 0 or less the routine returns (`blez` at 0xda339cc).
  Otherwise it loops over index s3 from 0, repeating while s3 + 1 is below that word (`bnel` at
  0xda33d84). Each pass stores the single 0x3f800000 into one word of each of four 0x10-byte rows of
  the cleared area, at 4 times s3 within the row (the four-pass loop ending at 0xda33a44), moves
  some frame floats into the argument area, and calls `__glOdysseyProgramTexFilter` with that frame
  address (`jalr` at 0xda33acc). It then edits the context in this order: the word at +0x7bf4 gets
  bit 0x10000 set and then bit 0x4000 set (stores at 0xda33af4 and 0xda33afc); the word at +0x168d0
  gets 0x200 ORed in (0xda33b10), then 0x20000 (0xda33b74), 0x10000 (0xda33bf0), 0x8000 (0xda33c2c)
  and 0x2 (0xda33c68), each followed by a write of 2 to abs 0x1018 (0xda33b14, 0xda33b78, 0xda33bf4,
  0xda33c30, 0xda33c6c) and a write-back of the word at +0x2d44 as read; 2 is written to +0x8b04 and
  +0x8c08 (0xda33b60, 0xda33bdc); the word at +0x7b1c is cleared of bit 0x20000 and set again
  (0xda33c4c); and the word at +0x95c4 has bits 0x60000 cleared and bit 0x20000 set (0xda33cc0).
  Three frame-to-context copies run between those edits: a 64-byte block from the frame to +0x8b08
  (the loop at 0xda33b38 to 0xda33b5c), eight words to +0x8c0c to +0x8c28 (0xda33b9c to 0xda33bd8)
  and three words to +0x8c8c to +0x8c94 (0xda33c10 to 0xda33c20). Between the +0x168d0 edits at
  0xda33c68 and 0xda33cc0 the pass calls `sendBlenderOpTokens` with a0 = 0, a1 = 0x28 and a2 = 8
  (`jalr` at 0xda33c78) and then `sendBlenderColorTokensAccum31`. The pass ends by index: 0 to 3
  selects one `__glOdysseyImageMovePixelsTexture` call (`jalr` at 0xda33cf8, 0xda33d14, 0xda33d30 or
  0xda33d4c) with a0 = +73228, +73284, +73340 or +73396, a1 = +73540, a2 = +73456 and a3 = 0; 4 or
  more calls `__glSetError` with 0x500 (`jalr` at 0xda33d64). The return value in v0 is not set by
  this routine after the loop.
  Unknown: which routine fills the frame words copied to +0x8b08, +0x8c0c to +0x8c28 and +0x8c8c to
  +0x8c94; the routine itself writes the frame only with the single 0x3f800000 and the shuffled
  floats, and an entry for `__glOdysseyProgramTexFilter` in this build would settle whether it
  writes the rest.
  Unknown: the handling by `sendBlenderColorTokensAccum31` of its argument, which has no committed
  entry beyond the facts-only reading.
  Evidence grade: inferred.

- `hardAccumulate31` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda3386c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda3386c-0xda33dc0 (1364 bytes).
  It occupies 1364 bytes.
  The `lwc1` at 0xda3390c loads 4 bytes from abs 0xdbb85cc.
  The `lw` at 0xda33920 loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7b1c, including `lw` at 0xda33934, `lw` at 0xda33c34.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7b1c, including `sw` at 0xda33948, `sw` at 0xda33c4c.
  6 such `lw` accesses load 4 bytes from [0x1010] +0x168d0, including `lw` at 0xda33950, `lw` at 0xda33b00, `lw` at 0xda33b64.
  6 such `sw` accesses store 4 bytes to [0x1010] +0x168d0, including `sw` at 0xda33960, `sw` at 0xda33b10, `sw` at 0xda33b74.
  6 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xda33964, `sw` at 0xda33b14, `sw` at 0xda33b78.
  6 such `lw` accesses load 4 bytes from [0x1010] +0x2d44, including `lw` at 0xda3396c, `lw` at 0xda33b18, `lw` at 0xda33b7c.
  6 such `sw` accesses store 4 bytes to [0x1010] +0x2d44, including `sw` at 0xda33980, `sw` at 0xda33b24, `sw` at 0xda33b88.
  The `lw` at 0xda339c0 loads 4 bytes from [0x1010] +0x11eec.
  The `swc1` at 0xda33a44 stores 4 bytes to ?.
  The `lw` at 0xda33ad4 loads 4 bytes from [0x1010] +0x7bf4.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7bf4, including `sw` at 0xda33af4, `sw` at 0xda33afc.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda33b2c, `lw` at 0xda33b3c, `lw` at 0xda33b44.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda33b38, `sw` at 0xda33b40, `sw` at 0xda33b4c.
  The `sw` at 0xda33b60 stores 4 bytes to [0x1010] +0x8b04.
  The `sw` at 0xda33b9c stores 4 bytes to [0x1010] +0x8c0c.
  The `sw` at 0xda33ba8 stores 4 bytes to [0x1010] +0x8c10.
  The `sw` at 0xda33bb0 stores 4 bytes to [0x1010] +0x8c14.
  The `sw` at 0xda33bb8 stores 4 bytes to [0x1010] +0x8c18.
  The `sw` at 0xda33bc0 stores 4 bytes to [0x1010] +0x8c1c.
  The `sw` at 0xda33bc8 stores 4 bytes to [0x1010] +0x8c20.
  The `sw` at 0xda33bd0 stores 4 bytes to [0x1010] +0x8c24.
  The `sw` at 0xda33bd8 stores 4 bytes to [0x1010] +0x8c28.
  The `sw` at 0xda33bdc stores 4 bytes to [0x1010] +0x8c08.
  The `sw` at 0xda33c10 stores 4 bytes to [0x1010] +0x8c8c.
  The `sw` at 0xda33c18 stores 4 bytes to [0x1010] +0x8c90.
  The `sw` at 0xda33c20 stores 4 bytes to [0x1010] +0x8c94.
  The `lw` at 0xda33ca4 loads 4 bytes from [0x1010] +0x95c4.
  The `sw` at 0xda33cc0 stores 4 bytes to [0x1010] +0x95c4.
  The `jalr` at 0xda3399c calls __glOdysseyImageMovePixelsCopy [0xda9b494] with a0=[0x1010]+73540, a1=[0x1010]+73004, a2=[0x1010]+73456, a3=0x1.
  The `jalr` at 0xda339b8 calls memset with a0=sp-2988, a1=0x0, a2=0x40, a3=?.
  The `jalr` at 0xda33acc calls __glOdysseyProgramTexFilter [0xda99fac] with a0=sp-2916, a1=?, a2=?, a3=?.
  The `jalr` at 0xda33c78 calls sendBlenderOpTokens [0xda2c010] with a0=0x0, a1=0x28, a2=0x8, a3=?.
  The `jalr` at 0xda33c90 calls sendBlenderColorTokensAccum31 [0xda2c11c] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda33cf8 calls __glOdysseyImageMovePixelsTexture [0xdaa043c] with a0=[0x1010]+73228, a1=[0x1010]+73540, a2=[0x1010]+73456, a3=0x0.
  The `jalr` at 0xda33d14 calls __glOdysseyImageMovePixelsTexture [0xdaa043c] with a0=[0x1010]+73284, a1=[0x1010]+73540, a2=[0x1010]+73456, a3=0x0.
  The `jalr` at 0xda33d30 calls __glOdysseyImageMovePixelsTexture [0xdaa043c] with a0=[0x1010]+73340, a1=[0x1010]+73540, a2=[0x1010]+73456, a3=0x0.
  The `jalr` at 0xda33d4c calls __glOdysseyImageMovePixelsTexture [0xdaa043c] with a0=[0x1010]+73396, a1=[0x1010]+73540, a2=[0x1010]+73456, a3=0x0.
  The `jalr` at 0xda33d64 calls __glSetError [0xdb1ac34] with a0=0x500, a1=?, a2=?, a3=?.
  The `bc1f` branch at 0xda338b8 targets 0xda338e4, is taken when not (f0 < f4 (c.lt.d at 0xda3388c)), and falls through when f0 < f4 (c.lt.d at 0xda3388c).
  The `beq` branch at 0xda338dc targets 0xda33920 and is always taken.
  The `bc1fl` branch at 0xda338fc targets 0xda33914, is taken when not (f16 <= f0 (c.le.d at 0xda338f4)), and falls through when f16 <= f0 (c.le.d at 0xda338f4); its branch-likely delay slot `mtc1 at,$f18` at 0xda33900 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda33908 targets 0xda3391c and is always taken.
  The `blez` branch at 0xda339cc targets 0xda33d8c, is taken when t1(=[[0x1010]+73452]) <= 0 (signed), and falls through when t1(=[[0x1010]+73452]) > 0 (signed).
  The `bne` branch at 0xda33a40 targets 0xda33a34, is taken when v0(?) < 0x4 (signed), and falls through when v0(?) >= 0x4 (signed).
  The `bne` branch at 0xda33b48 targets 0xda33b2c, is taken when t8(?) != t1(=sp-2232), and falls through when t8(?) == t1(=sp-2232).
  The `beq` branch at 0xda33cbc targets 0xda33cec, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `beq` branch at 0xda33cc8 targets 0xda33d08, is taken when s3(?) == at(=0x1), and falls through when s3(?) != at(=0x1).
  The `beq` branch at 0xda33cd0 targets 0xda33d24, is taken when s3(?) == s2(=0x2), and falls through when s3(?) != s2(=0x2).
  The `beq` branch at 0xda33cdc targets 0xda33d40, is taken when s3(?) == at(=0x3), and falls through when s3(?) != at(=0x3).
  The `beq` branch at 0xda33ce4 targets 0xda33d5c and is always taken.
  The `beq` branch at 0xda33d00 targets 0xda33d70 and is always taken.
  The `beq` branch at 0xda33d1c targets 0xda33d70 and is always taken.
  The `beq` branch at 0xda33d38 targets 0xda33d70 and is always taken.
  The `beq` branch at 0xda33d54 targets 0xda33d70 and is always taken.
  The `bnel` branch at 0xda33d84 targets 0xda33a2c, is taken when s3(?) < t9(?) (signed), and falls through when s3(?) >= t9(?) (signed); its branch-likely delay slot `addiu t7,sp,156` at 0xda33d88 runs only when taken and is annulled on fall-through.
  The return at 0xda33db8 has v0 = one of ret(memset), ?.
  The instructions from 0xda33910 to 0xda33910 are not reached by any path from the entry, and their branches are not listed.

- `hardMult31` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda33dc0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda33dc0-0xda34014 (596 bytes).
  It occupies 596 bytes.
  The `lwc1` at 0xda33e54 loads 4 bytes from abs 0xdbb85d0.
  The `lw` at 0xda33e68 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda33eec loads 4 bytes from [0x1010] +0x95c4.
  The `sw` at 0xda33f08 stores 4 bytes to [0x1010] +0x95c4.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x11eec, including `lw` at 0xda33f0c, `lw` at 0xda33fdc.
  The `jalr` at 0xda33eac calls sendBlenderOpTokens [0xda2c010] with a0=0x0, a1=0x0, a2=0x28, a3=a3 at entry (arg3); fp f14=f12.
  The `jalr` at 0xda33ed4 calls sendBlenderColorTokensAccum31 [0xda2c11c] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda33f58 calls __glOdysseyImageMovePixelsCopy [0xda9b494] with a0=[0x1010]+73228, a1=[0x1010]+73228, a2=[0x1010]+73456, a3=0x1.
  The `jalr` at 0xda33f78 calls __glOdysseyImageMovePixelsCopy [0xda9b494] with a0=[0x1010]+73284, a1=[0x1010]+73284, a2=[0x1010]+73456, a3=0x1.
  The `jalr` at 0xda33f98 calls __glOdysseyImageMovePixelsCopy [0xda9b494] with a0=[0x1010]+73340, a1=[0x1010]+73340, a2=[0x1010]+73456, a3=0x1.
  The `jalr` at 0xda33fb8 calls __glOdysseyImageMovePixelsCopy [0xda9b494] with a0=[0x1010]+73396, a1=[0x1010]+73396, a2=[0x1010]+73456, a3=0x1.
  The `jalr` at 0xda33fd0 calls __glSetError [0xdb1ac34] with a0=0x500, a1=?, a2=?, a3=?.
  The `bc1f` branch at 0xda33e00 targets 0xda33e2c, is taken when not (f0 < f4 (c.lt.d at 0xda33de0)), and falls through when f0 < f4 (c.lt.d at 0xda33de0).
  The `beq` branch at 0xda33e24 targets 0xda33e68 and is always taken.
  The `bc1fl` branch at 0xda33e44 targets 0xda33e5c, is taken when not (f16 <= f0 (c.le.d at 0xda33e3c)), and falls through when f16 <= f0 (c.le.d at 0xda33e3c); its branch-likely delay slot `mtc1 at,$f18` at 0xda33e48 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda33e50 targets 0xda33e64 and is always taken.
  The `bc1tl` branch at 0xda33e94 targets 0xda33ff4, is taken when f4 == f0 (c.eq.d at 0xda33e8c), and falls through when not (f4 == f0 (c.eq.d at 0xda33e8c)); its branch-likely delay slot `lw ra,60(sp)` at 0xda33e98 runs only when taken and is annulled on fall-through.
  The `blez` branch at 0xda33f18 targets 0xda33ff0, is taken when t0(=[[0x1010]+73452]) <= 0 (signed), and falls through when t0(=[[0x1010]+73452]) > 0 (signed).
  The `beq` branch at 0xda33f20 targets 0xda33f48, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0xda33f28 targets 0xda33f68, is taken when s1(?) == s2(=0x1), and falls through when s1(?) != s2(=0x1).
  The `beq` branch at 0xda33f30 targets 0xda33f88, is taken when s1(?) == s3(=0x2), and falls through when s1(?) != s3(=0x2).
  The `beq` branch at 0xda33f38 targets 0xda33fa8, is taken when s1(?) == s4(=0x3), and falls through when s1(?) != s4(=0x3).
  The `beq` branch at 0xda33f40 targets 0xda33fc8 and is always taken.
  The `beq` branch at 0xda33f60 targets 0xda33fdc and is always taken.
  The `beq` branch at 0xda33f80 targets 0xda33fdc and is always taken.
  The `beq` branch at 0xda33fa0 targets 0xda33fdc and is always taken.
  The `beq` branch at 0xda33fc0 targets 0xda33fdc and is always taken.
  The `bne` branch at 0xda33fe8 targets 0xda33f20, is taken when s1(?) < t1(=[[0x1010]+73452]) (signed), and falls through when s1(?) >= t1(=[[0x1010]+73452]) (signed).
  The return at 0xda3400c has v0 = one of [0x1010], ?.
  The instructions from 0xda33e58 to 0xda33e58 are not reached by any path from the entry, and their branches are not listed.

- `hardAdd31` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda34014 (o32).
  Takes one single-precision argument (f12), sends two blender token calls for the context at the
  pointer in abs 0x1010, edits the word at +0x95c4, and then calls an image routine once per index
  below the count in the word at +0x11eec.
  Inferred: abs 0x1010 holds the context pointer, per the committed note for `__glSetError`, which
  reads the context from process-page word 4112.
  If f12 widened to a double equals zero (the compare at 0xda340bc, the `bc1t` at 0xda340d0), it
  returns at once with the word loaded from abs 0x1010 in v0. Otherwise a double scale is built from
  f12: below zero it is (f12 plus the double whose high word is 0x40000000) times the double whose
  high word is 0x40a00000 (the multiply at 0xda3407c); when f12 reaches the double whose high word
  is 0x3ff00000 (the compare at 0xda34090) the scale is the single 2047.0 read from 0xdbb85d4 at
  0xda340a8, and in the remaining case it is f12 multiplied by the single 0x45000000 (0xda340b4). It
  calls `sendBlenderOpTokens` with a0 = 0, a1 = 8 and a2 = 8 (`jalr` at 0xda340f0), then
  `sendBlenderColorTokensAccum31` with the scale truncated to an integer by the `mfc1` at 0xda34108,
  sign-extended from 16 bits, plus 0x1000 (`jalr` at 0xda34118, the addition in its delay slot). It
  then clears bits 0x60000 and sets bit 0x20000 of the word at +0x95c4 (store at 0xda3414c) and
  returns with v0 holding the context pointer when the word at +0x11eec (73452) is 0 or less (`blez`
  at 0xda3415c). Otherwise the loop index s1 starts at 0 and, for 0 to 3, calls
  `__glOdysseyImageMovePixelsCopy` with the description at +73228, +73284, +73340 or +73396 as both
  source and destination (`jalr` at 0xda3419c, 0xda341bc, 0xda341dc and 0xda341fc), a2 = +73456 and
  a3 = 1; an index of 4 or more calls `__glSetError` with 0x500 (`jalr` at 0xda34214). The loop
  repeats while s1 + 1 is below the word at +0x11eec (`bne` at 0xda3422c), and the final v0 is
  whatever the last call left.
  Inferred: the committed note for `__glOdysseyImageMovePixelsCopy` says it copies a pixel rectangle
  from its source description to its destination, so each of these calls copies within one
  description.
  Unknown: the handling by `sendBlenderColorTokensAccum31` of its argument, which has no committed
  entry beyond the facts-only reading.
  Evidence grade: inferred.

- `hardAdd31` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda34014 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda34014-0xda34258 (580 bytes).
  It occupies 580 bytes.
  The `lwc1` at 0xda340a8 loads 4 bytes from abs 0xdbb85d4.
  The `lw` at 0xda340c0 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda34130 loads 4 bytes from [0x1010] +0x95c4.
  The `sw` at 0xda3414c stores 4 bytes to [0x1010] +0x95c4.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x11eec, including `lw` at 0xda34150, `lw` at 0xda34220.
  The `jalr` at 0xda340f0 calls sendBlenderOpTokens [0xda2c010] with a0=0x0, a1=0x8, a2=0x8, a3=a3 at entry (arg3); fp f14=f12.
  The `jalr` at 0xda34118 calls sendBlenderColorTokensAccum31 [0xda2c11c] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda3419c calls __glOdysseyImageMovePixelsCopy [0xda9b494] with a0=[0x1010]+73228, a1=[0x1010]+73228, a2=[0x1010]+73456, a3=0x1.
  The `jalr` at 0xda341bc calls __glOdysseyImageMovePixelsCopy [0xda9b494] with a0=[0x1010]+73284, a1=[0x1010]+73284, a2=[0x1010]+73456, a3=0x1.
  The `jalr` at 0xda341dc calls __glOdysseyImageMovePixelsCopy [0xda9b494] with a0=[0x1010]+73340, a1=[0x1010]+73340, a2=[0x1010]+73456, a3=0x1.
  The `jalr` at 0xda341fc calls __glOdysseyImageMovePixelsCopy [0xda9b494] with a0=[0x1010]+73396, a1=[0x1010]+73396, a2=[0x1010]+73456, a3=0x1.
  The `jalr` at 0xda34214 calls __glSetError [0xdb1ac34] with a0=0x500, a1=?, a2=?, a3=?.
  The `bc1f` branch at 0xda34054 targets 0xda34080, is taken when not (f0 < f16 (c.lt.d at 0xda34034)), and falls through when f0 < f16 (c.lt.d at 0xda34034).
  The `beq` branch at 0xda34078 targets 0xda340bc and is always taken.
  The `bc1fl` branch at 0xda34098 targets 0xda340b0, is taken when not (f10 <= f0 (c.le.d at 0xda34090)), and falls through when f10 <= f0 (c.le.d at 0xda34090); its branch-likely delay slot `mtc1 at,$f18` at 0xda3409c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda340a4 targets 0xda340b8 and is always taken.
  The `bc1t` branch at 0xda340d0 targets 0xda34234, is taken when f16 == f0 (c.eq.d at 0xda340bc), and falls through when not (f16 == f0 (c.eq.d at 0xda340bc)).
  The `blez` branch at 0xda3415c targets 0xda34234, is taken when t0(=[[0x1010]+73452]) <= 0 (signed), and falls through when t0(=[[0x1010]+73452]) > 0 (signed).
  The `beq` branch at 0xda34164 targets 0xda3418c, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0xda3416c targets 0xda341ac, is taken when s1(?) == s2(=0x1), and falls through when s1(?) != s2(=0x1).
  The `beq` branch at 0xda34174 targets 0xda341cc, is taken when s1(?) == s3(=0x2), and falls through when s1(?) != s3(=0x2).
  The `beq` branch at 0xda3417c targets 0xda341ec, is taken when s1(?) == s4(=0x3), and falls through when s1(?) != s4(=0x3).
  The `beq` branch at 0xda34184 targets 0xda3420c and is always taken.
  The `beq` branch at 0xda341a4 targets 0xda34220 and is always taken.
  The `beq` branch at 0xda341c4 targets 0xda34220 and is always taken.
  The `beq` branch at 0xda341e4 targets 0xda34220 and is always taken.
  The `beq` branch at 0xda34204 targets 0xda34220 and is always taken.
  The `bne` branch at 0xda3422c targets 0xda34164, is taken when s1(?) < t1(=[[0x1010]+73452]) (signed), and falls through when s1(?) >= t1(=[[0x1010]+73452]) (signed).
  The return at 0xda34250 has v0 = one of [0x1010], ?.
  The instructions from 0xda340ac to 0xda340ac are not reached by any path from the entry, and their branches are not listed.

- `hardClear31` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda34258 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda34258-0xda35508 (4784 bytes).
  It occupies 4784 bytes.
  The `lw` at 0xda3426c loads 4 bytes from abs 0x1010.
  The `lbu` at 0xda342b4 loads 1 byte from [0x1010] +0x16658.
  The `lw` at 0xda342c0 loads 4 bytes from [0x1010] +0x16650.
  4 such `lw` accesses load 4 bytes from [0x1010] +0x7b40, including `lw` at 0xda342c4, `lw` at 0xda34330, `lw` at 0xda3438c.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7b40, including `sw` at 0xda342cc, `sw` at 0xda342e0.
  4 such `lw` accesses load 4 bytes from [0x1010] +0x7b44, including `lw` at 0xda342d0, `lw` at 0xda34338, `lw` at 0xda343c0.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x16654, including `lw` at 0xda342d4, `lw` at 0xda342e4.
  2 such `lbu` accesses load 1 byte from [0x1010] +0x11fc1, including `lbu` at 0xda342dc, `lbu` at 0xda34438.
  The `sw` at 0xda342f0 stores 4 bytes to [0x1010] +0x7b44.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x9750, including `lw` at 0xda342f4, `lw` at 0xda34654, `lw` at 0xda34690.
  15 such `sw` accesses store 4 bytes to [0x1010] +0x9750, including `sw` at 0xda34310, `sw` at 0xda34668, `sw` at 0xda346a4.
  219 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xda34318, `sw` at 0xda34320, `sw` at 0xda34324.
  The `lw` at 0xda34340 loads 4 bytes from [0x1010] +0x7a90.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x168d4, including `lw` at 0xda3434c, `lw` at 0xda34414.
  The `lw` at 0xda34360 loads 4 bytes from abs 0xdbd1010.
  The `lw` at 0xda34370 loads 4 bytes from abs 0xdbd1014.
  The `lw` at 0xda3437c loads 4 bytes from abs 0xdbd1018.
  The `lw` at 0xda34384 loads 4 bytes from abs 0xdbd101c.
  The `sw` at 0xda34424 stores 4 bytes to [0x1010] +0x168d4.
  8 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xda3442c, `sw` at 0xda347a8, `sw` at 0xda347d0.
  8 such `lw` accesses load 4 bytes from [0x1010] +0x2d44, including `lw` at 0xda34430, `lw` at 0xda347ac, `lw` at 0xda347d4.
  8 such `sw` accesses store 4 bytes to [0x1010] +0x2d44, including `sw` at 0xda34434, `sw` at 0xda347b8, `sw` at 0xda347d8.
  The `lwc1` at 0xda344a0 loads 4 bytes from [0x1010] +0x670.
  The `lwc1` at 0xda344b0 loads 4 bytes from [0x1010] +0x674.
  The `lwc1` at 0xda344c0 loads 4 bytes from [0x1010] +0x678.
  The `lwc1` at 0xda344d0 loads 4 bytes from [0x1010] +0x67c.
  4 such `lw` accesses load 4 bytes from [0x1010] +0x7b1c, including `lw` at 0xda344e0, `lw` at 0xda34550, `lw` at 0xda34624.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x7b20, including `lw` at 0xda344f0, `lw` at 0xda345e0, `lw` at 0xda346bc.
  The `lw` at 0xda34500 loads 4 bytes from [0x1010] +0x7b7c.
  9 such `lw` accesses load 4 bytes from [0x1010] +0x95bc, including `lw` at 0xda34510, `lw` at 0xda3481c, `lw` at 0xda34908.
  6 such `lw` accesses load 4 bytes from [0x1010] +0x95c0, including `lw` at 0xda34520, `lw` at 0xda346ec, `lw` at 0xda34914.
  16 such `lw` accesses load 4 bytes from [0x1010] +0x95c4, including `lw` at 0xda34530, `lw` at 0xda346cc, `lw` at 0xda34700.
  5 such `lw` accesses load 4 bytes from [0x1010] +0x95c8, including `lw` at 0xda34540, `lw` at 0xda34924, `lw` at 0xda34afc.
  15 such `sw` accesses store 4 bytes to [0x1010] +0x7b1c, including `sw` at 0xda3456c, `sw` at 0xda3457c, `sw` at 0xda3458c.
  6 such `sw` accesses store 4 bytes to [0x1010] +0x7b20, including `sw` at 0xda34604, `sw` at 0xda34608, `sw` at 0xda3461c.
  8 such `sw` accesses store 4 bytes to [0x1010] +0x95c4, including `sw` at 0xda346e4, `sw` at 0xda34718, `sw` at 0xda34730.
  The `lw` at 0xda346e8 loads 4 bytes from [0x1010] +0x16c84.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x95c0, including `sw` at 0xda346fc, `sw` at 0xda35030.
  7 such `lw` accesses load 4 bytes from [0x1010] +0x168d0, including `lw` at 0xda3478c, `lw` at 0xda347c4, `lw` at 0xda34838.
  7 such `sw` accesses store 4 bytes to [0x1010] +0x168d0, including `sw` at 0xda347a4, `sw` at 0xda347cc, `sw` at 0xda34850.
  The `lw` at 0xda347bc loads 4 bytes from [0x1010] +0x11c94.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7b7c, including `sw` at 0xda347c0, `sw` at 0xda3501c.
  The `lw` at 0xda347dc loads 4 bytes from [0x1010] +0x11eec.
  The `lw` at 0xda34820 loads 4 bytes from [0x1010] +0x16c78.
  5 such `sw` accesses store 4 bytes to [0x1010] +0x95bc, including `sw` at 0xda34834, `sw` at 0xda34a0c, `sw` at 0xda34be4.
  40 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xda3497c, `swc1` at 0xda34980, `swc1` at 0xda34984.
  The `lw` at 0xda34998 loads 4 bytes from [0x1010] +0x11e28.
  The `lw` at 0xda349bc loads 4 bytes from [0x1010] +0x11e2c.
  The `lw` at 0xda349f8 loads 4 bytes from [0x1010] +0x16c8c.
  The `lw` at 0xda34b70 loads 4 bytes from [0x1010] +0x11e60.
  The `lw` at 0xda34b94 loads 4 bytes from [0x1010] +0x11e64.
  The `lw` at 0xda34bd0 loads 4 bytes from [0x1010] +0x16ca0.
  The `lw` at 0xda34d48 loads 4 bytes from [0x1010] +0x11e98.
  The `lw` at 0xda34d6c loads 4 bytes from [0x1010] +0x11e9c.
  The `lw` at 0xda34da8 loads 4 bytes from [0x1010] +0x16cb4.
  The `lw` at 0xda34f20 loads 4 bytes from [0x1010] +0x11ed0.
  The `lw` at 0xda34f44 loads 4 bytes from [0x1010] +0x11ed4.
  The `lw` at 0xda34fe8 loads 4 bytes from ?.
  The `sw` at 0xda35040 stores 4 bytes to [0x1010] +0x95c8.
  The `jalr` at 0xda34400 calls __glOdysseyIoctl [0xdabf6b0] with a0=[0x1010], a1=0x6f64000d, a2=sp-76, a3=?.
  The `jalr` at 0xda34474 calls initBuffersForAccum [0xda2c948] with a0=?, a1=?, a2=?, a3=0x10443.
  The `jalr` at 0xda34f8c calls __glSetError [0xdb1ac34] with a0=0x500, a1=0x96, a2=?, a3=0x10443.
  The `bnel` branch at 0xda342b8 targets 0xda35068, is taken when t6(=[[0x1010]+91736]:1) != 0, and falls through when t6(=[[0x1010]+91736]:1) == 0; its branch-likely delay slot `lw ra,60(sp)` at 0xda342bc runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda342c8 targets 0xda342e4, is taken when t7(=[[0x1010]+31552]) != v0(=[[0x1010]+91728]), and falls through when t7(=[[0x1010]+31552]) == v0(=[[0x1010]+91728]); its branch-likely delay slot `sw v0,31552(s0)` at 0xda342cc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda342d8 targets 0xda3443c, is taken when t8(=[[0x1010]+31556]) == t9(=[[0x1010]+91732]), and falls through when t8(=[[0x1010]+31556]) != t9(=[[0x1010]+91732]); its branch-likely delay slot `lbu t7,8129(t1)` at 0xda342dc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda34300 targets 0xda3432c, is taken when t7(=[[0x1010]+38736]) == 0, and falls through when t7(=[[0x1010]+38736]) != 0.
  The `bltzl` branch at 0xda34348 targets 0xda34418, is taken when t8(=([[0x1010]+31376] << 0xb)) < 0 (signed), and falls through when t8(=([[0x1010]+31376] << 0xb)) >= 0 (signed); its branch-likely delay slot `lw t8,26836(t1)` at 0xda3434c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda3445c targets 0xda344a0, is taken when t7(=[[0x1010]+73665]:1) != 0, and falls through when t7(=[[0x1010]+73665]:1) == 0.
  The `beq` branch at 0xda34660 targets 0xda3467c, is taken when t8(=[[0x1010]+38736]) == 0, and falls through when t8(=[[0x1010]+38736]) != 0.
  The `beq` branch at 0xda3469c targets 0xda346b8, is taken when t7(=[[0x1010]+38736]) == 0, and falls through when t7(=[[0x1010]+38736]) != 0.
  The `blezl` branch at 0xda347e0 targets 0xda35000, is taken when t9(=[[0x1010]+73452]) <= 0 (signed), and falls through when t9(=[[0x1010]+73452]) > 0 (signed); its branch-likely delay slot `lw t8,148(sp)` at 0xda347e4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda347f4 targets 0xda3481c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0xda347fc targets 0xda349f4, is taken when a2(?) == at(=0x1), and falls through when a2(?) != at(=0x1).
  The `beq` branch at 0xda34804 targets 0xda34bcc, is taken when a2(?) == at(=0x2), and falls through when a2(?) != at(=0x2).
  The `beq` branch at 0xda3480c targets 0xda34da4, is taken when a2(?) == at(=0x3), and falls through when a2(?) != at(=0x3).
  The `beq` branch at 0xda34814 targets 0xda34f7c and is always taken.
  The `beql` branch at 0xda348b8 targets 0xda34904, is taken when (t6(?) & 0x1) == 0, and falls through when (t6(?) & 0x1) != 0; its branch-likely delay slot `sw t7,16384(zero)` at 0xda348bc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda348f8 targets 0xda34904 and is always taken.
  The `bgez` branch at 0xda349a4 targets 0xda349b8, is taken when t8(=[[0x1010]+73256]) >= 0 (signed), and falls through when t8(=[[0x1010]+73256]) < 0 (signed).
  The `bgez` branch at 0xda349c8 targets 0xda349dc, is taken when t6(=[[0x1010]+73260]) >= 0 (signed), and falls through when t6(=[[0x1010]+73260]) < 0 (signed).
  The `beq` branch at 0xda349ec targets 0xda34fe0 and is always taken.
  The `beql` branch at 0xda34a90 targets 0xda34adc, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0; its branch-likely delay slot `sw t7,16384(zero)` at 0xda34a94 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda34ad0 targets 0xda34adc and is always taken.
  The `bgez` branch at 0xda34b7c targets 0xda34b90, is taken when t6(=[[0x1010]+73312]) >= 0 (signed), and falls through when t6(=[[0x1010]+73312]) < 0 (signed).
  The `bgez` branch at 0xda34ba0 targets 0xda34bb4, is taken when t8(=[[0x1010]+73316]) >= 0 (signed), and falls through when t8(=[[0x1010]+73316]) < 0 (signed).
  The `beq` branch at 0xda34bc4 targets 0xda34fe0 and is always taken.
  The `beql` branch at 0xda34c68 targets 0xda34cb4, is taken when (t6(?) & 0x1) == 0, and falls through when (t6(?) & 0x1) != 0; its branch-likely delay slot `sw t7,16384(zero)` at 0xda34c6c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda34ca8 targets 0xda34cb4 and is always taken.
  The `bgez` branch at 0xda34d54 targets 0xda34d68, is taken when t8(=[[0x1010]+73368]) >= 0 (signed), and falls through when t8(=[[0x1010]+73368]) < 0 (signed).
  The `bgez` branch at 0xda34d78 targets 0xda34d8c, is taken when t6(=[[0x1010]+73372]) >= 0 (signed), and falls through when t6(=[[0x1010]+73372]) < 0 (signed).
  The `beq` branch at 0xda34d9c targets 0xda34fe0 and is always taken.
  The `beql` branch at 0xda34e40 targets 0xda34e8c, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0; its branch-likely delay slot `sw t7,16384(zero)` at 0xda34e44 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda34e80 targets 0xda34e8c and is always taken.
  The `bgez` branch at 0xda34f2c targets 0xda34f40, is taken when t6(=[[0x1010]+73424]) >= 0 (signed), and falls through when t6(=[[0x1010]+73424]) < 0 (signed).
  The `bgez` branch at 0xda34f50 targets 0xda34f64, is taken when t8(=[[0x1010]+73428]) >= 0 (signed), and falls through when t8(=[[0x1010]+73428]) < 0 (signed).
  The `beq` branch at 0xda34f74 targets 0xda34fe0 and is always taken.
  The `bne` branch at 0xda34ff0 targets 0xda347f4, is taken when a2(?) < t6(?) (signed), and falls through when a2(?) >= t6(?) (signed).
  The return at 0xda3508c has v0 = one of ?, 0x10046.
  The instructions from 0xda34900 to 0xda34900 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda34ad8 to 0xda34ad8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda34cb0 to 0xda34cb0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda34e88 to 0xda34e88 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda35094 to 0xda35504 are not reached by any path from the entry, and their branches are not listed.

- `__glOdyim_HardAccum31` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda35094 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda35094-0xda35264 (464 bytes).
  It occupies 464 bytes.
  The `lw` at 0xda350b4 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda350c8 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda35100 loads 4 bytes from table(0xdbb85d8) +0x0.
  The `lw` at 0xda35168 loads 4 bytes from [0x1010] +0xc7c.
  The `lw` at 0xda35178 loads 4 bytes from [0x1010] +0x7b1c.
  The `sw` at 0xda35194 stores 4 bytes to [0x1010] +0x7b1c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x168d0, including `lw` at 0xda3519c, `lw` at 0xda351d8.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x168d0, including `sw` at 0xda351ac, `sw` at 0xda351ec.
  2 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xda351b0, `sw` at 0xda351f0.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x2d44, including `lw` at 0xda351b4, `lw` at 0xda351f4.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x2d44, including `sw` at 0xda351c0, `sw` at 0xda35200.
  The `lw` at 0xda351c4 loads 4 bytes from [0x1010] +0x95c4.
  The `sw` at 0xda351d4 stores 4 bytes to [0x1010] +0x95c4.
  The `lw` at 0xda35204 loads 4 bytes from [0x1010] +0x11bc0.
  The `lw` at 0xda35214 loads 4 bytes from [0x1010] +0x11c94.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x11bc0, including `sw` at 0xda35218, `sw` at 0xda35250.
  The `jalr` at 0xda350d4 calls __glSetError [0xdb1ac34] with a0=0x502, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda35158 calls __glSetError [0xdb1ac34] with a0=0x500, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda35228 calls (unknown callee) with a0=a0 at entry (arg0), a1=0x2, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xda350c4 targets 0xda350e4, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xda350dc targets 0xda35254 and is always taken.
  The `beq` branch at 0xda350ec targets 0xda35150, is taken when t7(=a0-256) >= 0x5 (unsigned), and falls through when t7(=a0-256) < 0x5 (unsigned).
  The `beq` branch at 0xda35118 targets 0xda35168 and is always taken.
  The `beq` branch at 0xda35128 targets 0xda35168 and is always taken.
  The `beq` branch at 0xda35138 targets 0xda35168 and is always taken.
  The `beq` branch at 0xda35148 targets 0xda35168 and is always taken.
  The `beq` branch at 0xda35160 targets 0xda35254 and is always taken.
  The `bnel` branch at 0xda35170 targets 0xda35258, is taken when t2(=[[0x1010]+3196]) != at(=0x1c00), and falls through when t2(=[[0x1010]+3196]) == at(=0x1c00); its branch-likely delay slot `lw ra,28(sp)` at 0xda35174 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda351fc targets 0xda3521c, is taken when a0 == at(=0x102), and falls through when a0 != at(=0x102).
  The `beq` branch at 0xda3523c targets 0xda35254, is taken when a0 == at(=0x102), and falls through when a0 != at(=0x102).
  The return at 0xda3525c has v0 = one of [0x1010], ?.
  The indirect jump at 0xda35108 uses the jump table at 0xdbb85d8 with targets 0xda35110, 0xda35120, 0xda35168, 0xda35130, 0xda35140.

- `LoadAndSendStippledQuads` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda3ef20 (o32).
  The routine calls ceil four times (0xda3efa0, 0xda3f058, 0xda3f108, 0xda3f2f4) and memset on a 4-byte stack slot (0xda3f3a0). It tests values against a mask of 0x78 (branches around 0xda3efd4 and 0xda3f324) and tests a double compare at 0xda3f698. It also performs 73 stores to the absolute address 0x4000 (49 word and 24 float), and the facts do not say what that address is. One indirect call has no resolved target (0xda3f724).
  Grade: inferred.
  Reviewed: 2026-11-12

- `LoadAndSendStippledQuads` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda3ef20 (2548 bytes).
  Evidence grade: inferred.
  It calls `ceil` four times (0xda3efa0, 0xda3f058, 0xda3f108, 0xda3f2f4), which suggests coordinates or sizes are rounded up before use. It clears a stack buffer at sp-68 with `memset` at 0xda3f3a0 and makes one unnamed call at 0xda3f724. The stipple and quad-send steps come from the name only, and the facts do not show the data it sends.
  Reviewed: 2026-11-12

- `__glOdylc_Color3b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda40620 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda40620-0xda40744 (292 bytes).
  It occupies 292 bytes.
  The `lw` at 0xda40630 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda40648 loads 4 bytes from [0x1010] +0x13cc.
  The `sw` at 0xda40658 stores 4 bytes to [0x1010] +0x13cc.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xda4065c, `lw` at 0xda40720.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xda40660, `lw` at 0xda406bc.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xda40664, `lw` at 0xda406d4.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xda406c4, `sw` at 0xda40724.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xda406d0, `sw` at 0xda40728.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda406f8, `sw` at 0xda40708, `sw` at 0xda40714.
  The `sw` at 0xda40730 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xda4069c calls __glSPDlistSpace [0xdadf11c] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1028].
  The `bne` branch at 0xda40668 targets 0xda40680, is taken when t8(=[0x1034]) != 0, and falls through when t8(=[0x1034]) == 0.
  The `beql` branch at 0xda40674 targets 0xda40684, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `addiu t2,t0,4` at 0xda40678 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda40688 targets 0xda406ec, is taken when a3(=[0x1028]) >= t2(=one of 0x4, 0x5) (signed), and falls through when a3(=[0x1028]) < t2(=one of 0x4, 0x5) (signed); its branch-likely delay slot `sll t7,t0,0x2` at 0xda4068c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda406b4 targets 0xda406d4, is taken when v0(=ret(__glSPDlistSpace)) != 0, and falls through when v0(=ret(__glSPDlistSpace)) == 0.
  The `beq` branch at 0xda406cc targets 0xda40734 and is always taken.
  The `beql` branch at 0xda406dc targets 0xda406ec, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `sll t7,t0,0x2` at 0xda406e0 runs only when taken and is annulled on fall-through.
  The return at 0xda4073c has v0 = one of ret(__glSPDlistSpace), ?.

- `__glOdylc_Color3b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda40620 (292 bytes).
  Evidence grade: inferred.
  It reads the state words at absolute 0x1034, 0x1030 (bit 0x4) and 0x1028 in branches before the call to `__glSPDlistSpace` at 0xda4069c with a0 set to 0, which runs only when the word at 0x1028 is below a constant and the earlier tests lead to it. The facts do not show which memory the later stores in the routine go to. Role (from name): `__glSPDlistSpace` suggests display-list space; the facts do not state it.
  Reviewed: 2026-11-12

- `__glOdylc_Color3s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda40f64 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda40f64-0xda41088 (292 bytes).
  It occupies 292 bytes.
  The `lw` at 0xda40f74 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda40f8c loads 4 bytes from [0x1010] +0x13cc.
  The `sw` at 0xda40f9c stores 4 bytes to [0x1010] +0x13cc.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xda40fa0, `lw` at 0xda41064.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xda40fa4, `lw` at 0xda41000.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xda40fa8, `lw` at 0xda41018.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xda41008, `sw` at 0xda41068.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xda41014, `sw` at 0xda4106c.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda4103c, `sw` at 0xda4104c, `sw` at 0xda41058.
  The `sw` at 0xda41074 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xda40fe0 calls __glSPDlistSpace [0xdadf11c] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1028].
  The `bne` branch at 0xda40fac targets 0xda40fc4, is taken when t8(=[0x1034]) != 0, and falls through when t8(=[0x1034]) == 0.
  The `beql` branch at 0xda40fb8 targets 0xda40fc8, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `addiu t2,t0,4` at 0xda40fbc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda40fcc targets 0xda41030, is taken when a3(=[0x1028]) >= t2(=one of 0x4, 0x5) (signed), and falls through when a3(=[0x1028]) < t2(=one of 0x4, 0x5) (signed); its branch-likely delay slot `sll t7,t0,0x2` at 0xda40fd0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda40ff8 targets 0xda41018, is taken when v0(=ret(__glSPDlistSpace)) != 0, and falls through when v0(=ret(__glSPDlistSpace)) == 0.
  The `beq` branch at 0xda41010 targets 0xda41078 and is always taken.
  The `beql` branch at 0xda41020 targets 0xda41030, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `sll t7,t0,0x2` at 0xda41024 runs only when taken and is annulled on fall-through.
  The return at 0xda41080 has v0 = one of ret(__glSPDlistSpace), ?.

- `__glOdylc_Color3s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda40f64 (292 bytes).
  Evidence grade: inferred.
  It reads the state words at absolute 0x1034, 0x1030 (bit 0x4) and 0x1028 in branches before the call to `__glSPDlistSpace` at 0xda40fe0 with a0 set to 0, which runs only when the word at 0x1028 is below a constant and the earlier tests lead to it. The facts do not show which memory the later stores in the routine go to. Role (from name): `__glSPDlistSpace` suggests display-list space; the facts do not state it. It has the same shape as `__glOdylc_Color3b` and the same 292-byte size, with the call at a different address.
  Reviewed: 2026-11-12

- `__glOdylc_Color3ui` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda413fc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda413fc-0xda41520 (292 bytes).
  It occupies 292 bytes.
  The `lw` at 0xda4140c loads 4 bytes from abs 0x1010.
  The `lw` at 0xda41424 loads 4 bytes from [0x1010] +0x13cc.
  The `sw` at 0xda41434 stores 4 bytes to [0x1010] +0x13cc.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xda41438, `lw` at 0xda414fc.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xda4143c, `lw` at 0xda41498.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xda41440, `lw` at 0xda414b0.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xda414a0, `sw` at 0xda41500.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xda414ac, `sw` at 0xda41504.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda414d4, `sw` at 0xda414e4, `sw` at 0xda414f0.
  The `sw` at 0xda4150c stores 4 bytes to abs 0x1034.
  The `jalr` at 0xda41478 calls __glSPDlistSpace [0xdadf11c] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1028].
  The `bne` branch at 0xda41444 targets 0xda4145c, is taken when t8(=[0x1034]) != 0, and falls through when t8(=[0x1034]) == 0.
  The `beql` branch at 0xda41450 targets 0xda41460, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `addiu t2,t0,4` at 0xda41454 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda41464 targets 0xda414c8, is taken when a3(=[0x1028]) >= t2(=one of 0x4, 0x5) (signed), and falls through when a3(=[0x1028]) < t2(=one of 0x4, 0x5) (signed); its branch-likely delay slot `sll t7,t0,0x2` at 0xda41468 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda41490 targets 0xda414b0, is taken when v0(=ret(__glSPDlistSpace)) != 0, and falls through when v0(=ret(__glSPDlistSpace)) == 0.
  The `beq` branch at 0xda414a8 targets 0xda41510 and is always taken.
  The `beql` branch at 0xda414b8 targets 0xda414c8, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `sll t7,t0,0x2` at 0xda414bc runs only when taken and is annulled on fall-through.
  The return at 0xda41518 has v0 = one of ret(__glSPDlistSpace), ?.

- `__glOdylc_Color3ui` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda413fc (292 bytes).
  Evidence grade: inferred.
  It reads the state words at absolute 0x1034, 0x1030 (bit 0x4) and 0x1028 in branches before the call to `__glSPDlistSpace` at 0xda41478 with a0 set to 0, which runs only when the word at 0x1028 is below a constant and the earlier tests lead to it. The facts do not show which memory the later stores in the routine go to. Role (from name): `__glSPDlistSpace` suggests display-list space; the facts do not state it. It has the same shape as `__glOdylc_Color3b`.
  Reviewed: 2026-11-12

- `__glOdylc_Color3us` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda41648 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda41648-0xda4176c (292 bytes).
  It occupies 292 bytes.
  The `lw` at 0xda41658 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda41670 loads 4 bytes from [0x1010] +0x13cc.
  The `sw` at 0xda41680 stores 4 bytes to [0x1010] +0x13cc.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xda41684, `lw` at 0xda41748.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xda41688, `lw` at 0xda416e4.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xda4168c, `lw` at 0xda416fc.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xda416ec, `sw` at 0xda4174c.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xda416f8, `sw` at 0xda41750.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda41720, `sw` at 0xda41730, `sw` at 0xda4173c.
  The `sw` at 0xda41758 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xda416c4 calls __glSPDlistSpace [0xdadf11c] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1028].
  The `bne` branch at 0xda41690 targets 0xda416a8, is taken when t8(=[0x1034]) != 0, and falls through when t8(=[0x1034]) == 0.
  The `beql` branch at 0xda4169c targets 0xda416ac, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `addiu t2,t0,4` at 0xda416a0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda416b0 targets 0xda41714, is taken when a3(=[0x1028]) >= t2(=one of 0x4, 0x5) (signed), and falls through when a3(=[0x1028]) < t2(=one of 0x4, 0x5) (signed); its branch-likely delay slot `sll t7,t0,0x2` at 0xda416b4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda416dc targets 0xda416fc, is taken when v0(=ret(__glSPDlistSpace)) != 0, and falls through when v0(=ret(__glSPDlistSpace)) == 0.
  The `beq` branch at 0xda416f4 targets 0xda4175c and is always taken.
  The `beql` branch at 0xda41704 targets 0xda41714, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `sll t7,t0,0x2` at 0xda41708 runs only when taken and is annulled on fall-through.
  The return at 0xda41764 has v0 = one of ret(__glSPDlistSpace), ?.

- `__glOdylc_Color3us` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda41648 (292 bytes).
  Evidence grade: inferred.
  It reads the state words at absolute 0x1034, 0x1030 (bit 0x4) and 0x1028 in branches before the call to `__glSPDlistSpace` at 0xda416c4 with a0 set to 0, which runs only when the word at 0x1028 is below a constant and the earlier tests lead to it. The facts do not show which memory the later stores in the routine go to. Role (from name): `__glSPDlistSpace` suggests display-list space; the facts do not state it. It has the same shape as `__glOdylc_Color3b`.
  Reviewed: 2026-11-12

- `__glOdylc_Color4b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda41894 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda41894-0xda419c4 (304 bytes).
  It occupies 304 bytes.
  The `lw` at 0xda418a4 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda418c0 loads 4 bytes from [0x1010] +0x13cc.
  The `sw` at 0xda418d0 stores 4 bytes to [0x1010] +0x13cc.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xda418d4, `lw` at 0xda419a0.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xda418d8, `lw` at 0xda41934.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xda418dc, `lw` at 0xda4194c.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xda4193c, `sw` at 0xda419a4.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xda41948, `sw` at 0xda419a8.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda41970, `sw` at 0xda41980, `sw` at 0xda4198c.
  The `sw` at 0xda419b0 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xda41914 calls __glSPDlistSpace [0xdadf11c] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xda418e0 targets 0xda418f8, is taken when t8(=[0x1034]) != 0, and falls through when t8(=[0x1034]) == 0.
  The `beql` branch at 0xda418ec targets 0xda418fc, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `addiu t3,t1,5` at 0xda418f0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda41900 targets 0xda41964, is taken when t0(=[0x1028]) >= t3(=one of 0x5, 0x6) (signed), and falls through when t0(=[0x1028]) < t3(=one of 0x5, 0x6) (signed); its branch-likely delay slot `sll t8,t1,0x2` at 0xda41904 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda4192c targets 0xda4194c, is taken when v0(=ret(__glSPDlistSpace)) != 0, and falls through when v0(=ret(__glSPDlistSpace)) == 0.
  The `beq` branch at 0xda41944 targets 0xda419b4 and is always taken.
  The `beql` branch at 0xda41954 targets 0xda41964, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `sll t8,t1,0x2` at 0xda41958 runs only when taken and is annulled on fall-through.
  The return at 0xda419bc has v0 = one of ret(__glSPDlistSpace), ?.

- `__glOdylc_Color4b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda41894 (304 bytes).
  Evidence grade: inferred.
  It reads the state words at absolute 0x1034, 0x1030 (bit 0x4) and 0x1028 in branches before the call to `__glSPDlistSpace` at 0xda41914 with a0 set to 0, which runs only when the word at 0x1028 is below a constant and the earlier tests lead to it. The facts do not show which memory the later stores in the routine go to. Role (from name): `__glSPDlistSpace` suggests display-list space; the facts do not state it. It is 304 bytes and has the same shape as the other Color4 routines here.
  Reviewed: 2026-11-12

- `__glOdylc_Color4i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda41fd8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda41fd8-0xda42108 (304 bytes).
  It occupies 304 bytes.
  The `lw` at 0xda41fe8 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda42004 loads 4 bytes from [0x1010] +0x13cc.
  The `sw` at 0xda42014 stores 4 bytes to [0x1010] +0x13cc.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xda42018, `lw` at 0xda420e4.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xda4201c, `lw` at 0xda42078.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xda42020, `lw` at 0xda42090.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xda42080, `sw` at 0xda420e8.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xda4208c, `sw` at 0xda420ec.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda420b4, `sw` at 0xda420c4, `sw` at 0xda420d0.
  The `sw` at 0xda420f4 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xda42058 calls __glSPDlistSpace [0xdadf11c] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xda42024 targets 0xda4203c, is taken when t8(=[0x1034]) != 0, and falls through when t8(=[0x1034]) == 0.
  The `beql` branch at 0xda42030 targets 0xda42040, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `addiu t3,t1,5` at 0xda42034 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda42044 targets 0xda420a8, is taken when t0(=[0x1028]) >= t3(=one of 0x5, 0x6) (signed), and falls through when t0(=[0x1028]) < t3(=one of 0x5, 0x6) (signed); its branch-likely delay slot `sll t8,t1,0x2` at 0xda42048 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda42070 targets 0xda42090, is taken when v0(=ret(__glSPDlistSpace)) != 0, and falls through when v0(=ret(__glSPDlistSpace)) == 0.
  The `beq` branch at 0xda42088 targets 0xda420f8 and is always taken.
  The `beql` branch at 0xda42098 targets 0xda420a8, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `sll t8,t1,0x2` at 0xda4209c runs only when taken and is annulled on fall-through.
  The return at 0xda42100 has v0 = one of ret(__glSPDlistSpace), ?.

- `__glOdylc_Color4i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda41fd8 (304 bytes).
  Evidence grade: inferred.
  It reads the state words at absolute 0x1034, 0x1030 (bit 0x4) and 0x1028 in branches before the call to `__glSPDlistSpace` at 0xda42058 with a0 set to 0, which runs only when the word at 0x1028 is below a constant and the earlier tests lead to it. The facts do not show which memory the later stores in the routine go to. Role (from name): `__glSPDlistSpace` suggests display-list space; the facts do not state it. It is 304 bytes and has the same shape as the other Color4 routines here.
  Reviewed: 2026-11-12

- `__glOdylc_Color4s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda4223c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda4223c-0xda4236c (304 bytes).
  It occupies 304 bytes.
  The `lw` at 0xda4224c loads 4 bytes from abs 0x1010.
  The `lw` at 0xda42268 loads 4 bytes from [0x1010] +0x13cc.
  The `sw` at 0xda42278 stores 4 bytes to [0x1010] +0x13cc.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xda4227c, `lw` at 0xda42348.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xda42280, `lw` at 0xda422dc.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xda42284, `lw` at 0xda422f4.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xda422e4, `sw` at 0xda4234c.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xda422f0, `sw` at 0xda42350.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda42318, `sw` at 0xda42328, `sw` at 0xda42334.
  The `sw` at 0xda42358 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xda422bc calls __glSPDlistSpace [0xdadf11c] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xda42288 targets 0xda422a0, is taken when t8(=[0x1034]) != 0, and falls through when t8(=[0x1034]) == 0.
  The `beql` branch at 0xda42294 targets 0xda422a4, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `addiu t3,t1,5` at 0xda42298 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda422a8 targets 0xda4230c, is taken when t0(=[0x1028]) >= t3(=one of 0x5, 0x6) (signed), and falls through when t0(=[0x1028]) < t3(=one of 0x5, 0x6) (signed); its branch-likely delay slot `sll t8,t1,0x2` at 0xda422ac runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda422d4 targets 0xda422f4, is taken when v0(=ret(__glSPDlistSpace)) != 0, and falls through when v0(=ret(__glSPDlistSpace)) == 0.
  The `beq` branch at 0xda422ec targets 0xda4235c and is always taken.
  The `beql` branch at 0xda422fc targets 0xda4230c, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `sll t8,t1,0x2` at 0xda42300 runs only when taken and is annulled on fall-through.
  The return at 0xda42364 has v0 = one of ret(__glSPDlistSpace), ?.

- `__glOdylc_Color4s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda4223c (304 bytes).
  Evidence grade: inferred.
  It reads the state words at absolute 0x1034, 0x1030 (bit 0x4) and 0x1028 in branches before the call to `__glSPDlistSpace` at 0xda422bc with a0 set to 0, which runs only when the word at 0x1028 is below a constant and the earlier tests lead to it. The facts do not show which memory the later stores in the routine go to. Role (from name): `__glSPDlistSpace` suggests display-list space; the facts do not state it. It is 304 bytes and has the same shape as the other Color4 routines here.
  Reviewed: 2026-11-12

- `__glOdylc_Color4ub` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda424a0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda424a0-0xda425d0 (304 bytes).
  It occupies 304 bytes.
  The `lw` at 0xda424b0 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda424cc loads 4 bytes from [0x1010] +0x13cc.
  The `sw` at 0xda424dc stores 4 bytes to [0x1010] +0x13cc.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xda424e0, `lw` at 0xda425ac.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xda424e4, `lw` at 0xda42540.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xda424e8, `lw` at 0xda42558.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xda42548, `sw` at 0xda425b0.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xda42554, `sw` at 0xda425b4.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda4257c, `sw` at 0xda4258c, `sw` at 0xda42598.
  The `sw` at 0xda425bc stores 4 bytes to abs 0x1034.
  The `jalr` at 0xda42520 calls __glSPDlistSpace [0xdadf11c] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xda424ec targets 0xda42504, is taken when t8(=[0x1034]) != 0, and falls through when t8(=[0x1034]) == 0.
  The `beql` branch at 0xda424f8 targets 0xda42508, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `addiu t3,t1,5` at 0xda424fc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda4250c targets 0xda42570, is taken when t0(=[0x1028]) >= t3(=one of 0x5, 0x6) (signed), and falls through when t0(=[0x1028]) < t3(=one of 0x5, 0x6) (signed); its branch-likely delay slot `sll t8,t1,0x2` at 0xda42510 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda42538 targets 0xda42558, is taken when v0(=ret(__glSPDlistSpace)) != 0, and falls through when v0(=ret(__glSPDlistSpace)) == 0.
  The `beq` branch at 0xda42550 targets 0xda425c0 and is always taken.
  The `beql` branch at 0xda42560 targets 0xda42570, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `sll t8,t1,0x2` at 0xda42564 runs only when taken and is annulled on fall-through.
  The return at 0xda425c8 has v0 = one of ret(__glSPDlistSpace), ?.

- `__glOdylc_Color4ub` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda424a0 (304 bytes).
  Evidence grade: inferred.
  It reads the state words at absolute 0x1034, 0x1030 (bit 0x4) and 0x1028 in branches before the call to `__glSPDlistSpace` at 0xda42520 with a0 set to 0, which runs only when the word at 0x1028 is below a constant and the earlier tests lead to it. The facts do not show which memory the later stores in the routine go to. Role (from name): `__glSPDlistSpace` suggests display-list space; the facts do not state it. It is 304 bytes and has the same shape as the other Color4 routines here.
  Reviewed: 2026-11-12

- `__glOdylc_Color4ui` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda42704 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda42704-0xda42834 (304 bytes).
  It occupies 304 bytes.
  The `lw` at 0xda42714 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda42730 loads 4 bytes from [0x1010] +0x13cc.
  The `sw` at 0xda42740 stores 4 bytes to [0x1010] +0x13cc.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xda42744, `lw` at 0xda42810.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xda42748, `lw` at 0xda427a4.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xda4274c, `lw` at 0xda427bc.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xda427ac, `sw` at 0xda42814.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xda427b8, `sw` at 0xda42818.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda427e0, `sw` at 0xda427f0, `sw` at 0xda427fc.
  The `sw` at 0xda42820 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xda42784 calls __glSPDlistSpace [0xdadf11c] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xda42750 targets 0xda42768, is taken when t8(=[0x1034]) != 0, and falls through when t8(=[0x1034]) == 0.
  The `beql` branch at 0xda4275c targets 0xda4276c, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `addiu t3,t1,5` at 0xda42760 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda42770 targets 0xda427d4, is taken when t0(=[0x1028]) >= t3(=one of 0x5, 0x6) (signed), and falls through when t0(=[0x1028]) < t3(=one of 0x5, 0x6) (signed); its branch-likely delay slot `sll t8,t1,0x2` at 0xda42774 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda4279c targets 0xda427bc, is taken when v0(=ret(__glSPDlistSpace)) != 0, and falls through when v0(=ret(__glSPDlistSpace)) == 0.
  The `beq` branch at 0xda427b4 targets 0xda42824 and is always taken.
  The `beql` branch at 0xda427c4 targets 0xda427d4, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `sll t8,t1,0x2` at 0xda427c8 runs only when taken and is annulled on fall-through.
  The return at 0xda4282c has v0 = one of ret(__glSPDlistSpace), ?.

- `__glOdylc_Color4ui` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda42704 (304 bytes).
  Evidence grade: inferred.
  It reads the state words at absolute 0x1034, 0x1030 (bit 0x4) and 0x1028 in branches before the call to `__glSPDlistSpace` at 0xda42784 with a0 set to 0, which runs only when the word at 0x1028 is below a constant and the earlier tests lead to it. The facts do not show which memory the later stores in the routine go to. Role (from name): `__glSPDlistSpace` suggests display-list space; the facts do not state it. It is 304 bytes and has the same shape as the other Color4 routines here.
  Reviewed: 2026-11-12

- `__glOdylc_Color4us` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda42968 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda42968-0xda42a98 (304 bytes).
  It occupies 304 bytes.
  The `lw` at 0xda42978 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda42994 loads 4 bytes from [0x1010] +0x13cc.
  The `sw` at 0xda429a4 stores 4 bytes to [0x1010] +0x13cc.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xda429a8, `lw` at 0xda42a74.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xda429ac, `lw` at 0xda42a08.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xda429b0, `lw` at 0xda42a20.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xda42a10, `sw` at 0xda42a78.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xda42a1c, `sw` at 0xda42a7c.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda42a44, `sw` at 0xda42a54, `sw` at 0xda42a60.
  The `sw` at 0xda42a84 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xda429e8 calls __glSPDlistSpace [0xdadf11c] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xda429b4 targets 0xda429cc, is taken when t8(=[0x1034]) != 0, and falls through when t8(=[0x1034]) == 0.
  The `beql` branch at 0xda429c0 targets 0xda429d0, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `addiu t3,t1,5` at 0xda429c4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda429d4 targets 0xda42a38, is taken when t0(=[0x1028]) >= t3(=one of 0x5, 0x6) (signed), and falls through when t0(=[0x1028]) < t3(=one of 0x5, 0x6) (signed); its branch-likely delay slot `sll t8,t1,0x2` at 0xda429d8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda42a00 targets 0xda42a20, is taken when v0(=ret(__glSPDlistSpace)) != 0, and falls through when v0(=ret(__glSPDlistSpace)) == 0.
  The `beq` branch at 0xda42a18 targets 0xda42a88 and is always taken.
  The `beql` branch at 0xda42a28 targets 0xda42a38, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `sll t8,t1,0x2` at 0xda42a2c runs only when taken and is annulled on fall-through.
  The return at 0xda42a90 has v0 = one of ret(__glSPDlistSpace), ?.

- `__glOdylc_Color4us` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda42968 (304 bytes).
  Evidence grade: inferred.
  It reads the state words at absolute 0x1034, 0x1030 (bit 0x4) and 0x1028 in branches before the call to `__glSPDlistSpace` at 0xda429e8 with a0 set to 0, which runs only when the word at 0x1028 is below a constant and the earlier tests lead to it. The facts do not show which memory the later stores in the routine go to. Role (from name): `__glSPDlistSpace` suggests display-list space; the facts do not state it. It is 304 bytes and has the same shape as the other Color4 routines here.
  Reviewed: 2026-11-12

- `Store` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda43660 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda43660-0xda43724 (196 bytes).
  It occupies 196 bytes.
  The `lw` at 0xda43680 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xda4368c loads 4 bytes from [a0] +0xe44.
  The `lw` at 0xda43690 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda43694 loads 4 bytes from [a0] +0xdcc.
  The `lwc1` at 0xda43698 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lw` at 0xda436a4 loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xda436a8 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0xda436bc loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lwc1` at 0xda436f0 loads 4 bytes from [a0] +0x6cc.
  The `lwc1` at 0xda436f4 loads 4 bytes from [a0] +0x6c8.
  The `jalr` at 0xda43708 calls fprintf with a0=sym(__iob)+32, a1=0xdbb9050, a2=?, a3=?.
  The `bgez` branch at 0xda436d8 targets 0xda436f0, is taken when t4(=[a1+8]) >= 0 (signed), and falls through when t4(=[a1+8]) < 0 (signed).
  The return at 0xda4371c has v0 = ret(fprintf).

- `Pick` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda43724 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda43724-0xda43730 (12 bytes).
  It occupies 12 bytes.
  The return at 0xda43728 has v0 = ?.

- `Fetch` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda43730 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda43730-0xda43744 (20 bytes).
  It occupies 20 bytes.
  The return at 0xda4373c has v0 = ?.

- `StoreStippledSpan` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda43744 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda43744-0xda4384c (264 bytes).
  It occupies 264 bytes.
  The `lw` at 0xda43780 loads 4 bytes from a0 (arg0 at entry) +0x7550.
  The `lw` at 0xda43784 loads 4 bytes from a0 (arg0 at entry) +0x7580.
  The `lw` at 0xda43788 loads 4 bytes from a0 (arg0 at entry) +0x7660.
  The `lw` at 0xda43790 loads 4 bytes from a0 (arg0 at entry) +0x754c.
  The `lw` at 0xda43794 loads 4 bytes from a0 (arg0 at entry) +0x7658.
  The `lw` at 0xda4379c loads 4 bytes from a0 (arg0 at entry) +0x7668.
  The `lw` at 0xda437c0 loads 4 bytes from ?.
  The `lwc1` at 0xda437dc loads 4 bytes from ?.
  The `lw` at 0xda437ec loads 4 bytes from [a0+30312] +0xa4.
  The `jalr` at 0xda437f0 calls (unknown callee) with a0=[a0+30312], a1=sp-56, a2=?, a3=?.
  The `beq` branch at 0xda43798 targets 0xda43818, is taken when s7(=[a0+30080]) == 0, and falls through when s7(=[a0+30080]) != 0.
  The `bne` branch at 0xda437ac targets 0xda437b8, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bltz` branch at 0xda437c4 targets 0xda43810, is taken when s0(?) < 0 (signed), and falls through when s0(?) >= 0 (signed).
  The `beql` branch at 0xda437d0 targets 0xda43800, is taken when (s5(?) & s1(?)) == 0, and falls through when (s5(?) & s1(?)) != 0; its branch-likely delay slot `addiu s0,s0,-1` at 0xda437d4 runs only when taken and is annulled on fall-through.
  The `bgez` branch at 0xda43808 targets 0xda437cc, is taken when s0(?) >= 0 (signed), and falls through when s0(?) < 0 (signed).
  The `bnel` branch at 0xda43810 targets 0xda437a8, is taken when s7(?) != 0, and falls through when s7(?) == 0; its branch-likely delay slot `slti at,s7,33` at 0xda43814 runs only when taken and is annulled on fall-through.
  The return at 0xda43844 has v0 = 0x0.

- `StoreSpan` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda4384c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda4384c-0xda448a0 (4180 bytes).
  It occupies 4180 bytes.
  The `lw` at 0xda43878 loads 4 bytes from a0 (arg0 at entry) +0x7550.
  The `lw` at 0xda4387c loads 4 bytes from a0 (arg0 at entry) +0x7580.
  The `lw` at 0xda43888 loads 4 bytes from a0 (arg0 at entry) +0x754c.
  The `lw` at 0xda4388c loads 4 bytes from a0 (arg0 at entry) +0x7658.
  The `lw` at 0xda43890 loads 4 bytes from a0 (arg0 at entry) +0x7668.
  The `lwc1` at 0xda438a8 loads 4 bytes from ?.
  The `lw` at 0xda438b8 loads 4 bytes from [a0+30312] +0xa4.
  The `jalr` at 0xda438c0 calls (unknown callee) with a0=[a0+30312], a1=sp-64, a2=?, a3=?.
  The `beql` branch at 0xda4389c targets 0xda438dc, is taken when s0(=[a0+30028]) >= s3(=([a0+30028] + [a0+30080])) (signed), and falls through when s0(=[a0+30028]) < s3(=([a0+30028] + [a0+30080])) (signed); its branch-likely delay slot `lw ra,44(sp)` at 0xda438a0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda438d0 targets 0xda438a4, is taken when s0(?) < s3(=([a0+30028] + [a0+30080])) (signed), and falls through when s0(?) >= s3(=([a0+30028] + [a0+30080])) (signed).
  The return at 0xda438f4 has v0 = 0x0.
  The instructions from 0xda438fc to 0xda4489c are not reached by any path from the entry, and their branches are not listed.

- `ApplyScissor` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda4525c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda4525c-0xda45504 (680 bytes).
  It occupies 680 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xe44, including `lw` at 0xda4525c, `lw` at 0xda453f8, `lw` at 0xda45400.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x735c, including `lw` at 0xda45260, `lw` at 0xda453a4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xe48, including `lw` at 0xda45268, `lw` at 0xda45404.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7360, including `lw` at 0xda4526c, `lw` at 0xda453ac.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7364, including `lw` at 0xda45270, `lw` at 0xda453b0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7368, including `lw` at 0xda45274, `lw` at 0xda453bc.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x16654, including `sw` at 0xda4527c, `sw` at 0xda45314, `sw` at 0xda45340.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x16654, including `lw` at 0xda4528c, `lw` at 0xda452f8, `lw` at 0xda45318.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x16650, including `sw` at 0xda45298, `sw` at 0xda452d0, `sw` at 0xda452f4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x16650, including `lw` at 0xda4529c, `lw` at 0xda452d4.
  The `sb` at 0xda45360 stores 1 byte to a0 (arg0 at entry) +0x16658.
  The `swc1` at 0xda45374 stores 4 bytes to a0 (arg0 at entry) +0x11d1c.
  The `swc1` at 0xda45384 stores 4 bytes to a0 (arg0 at entry) +0x11d20.
  The `swc1` at 0xda45394 stores 4 bytes to a0 (arg0 at entry) +0x11d24.
  The `swc1` at 0xda453a0 stores 4 bytes to a0 (arg0 at entry) +0x11d28.
  The `lw` at 0xda453a8 loads 4 bytes from a0 (arg0 at entry) +0x736c.
  The `lw` at 0xda453c4 loads 4 bytes from a0 (arg0 at entry) +0x7370.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7374, including `lw` at 0xda453d0, `lw` at 0xda453d8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7378, including `lw` at 0xda453e4, `lw` at 0xda453ec.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x1664c, including `sw` at 0xda4544c, `sw` at 0xda454b8, `sw` at 0xda454d8.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1664c, including `lw` at 0xda45450, `lw` at 0xda4549c, `lw` at 0xda454bc.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x16648, including `sw` at 0xda4545c, `sw` at 0xda45478, `sw` at 0xda45498.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x16648, including `lw` at 0xda45460, `lw` at 0xda4547c.
  The `lw` at 0xda454dc loads 4 bytes from a0 (arg0 at entry) +0x168d4.
  The `sw` at 0xda454ec stores 4 bytes to a0 (arg0 at entry) +0x168d4.
  The `sw` at 0xda454f4 stores 4 bytes to abs 0x1018.
  The `lw` at 0xda454f8 loads 4 bytes from a0 (arg0 at entry) +0x2d44.
  The `sw` at 0xda45500 stores 4 bytes to a0 (arg0 at entry) +0x2d44.
  The `bne` branch at 0xda4533c targets 0xda45348, is taken when a3(?) < v0(?) (signed), and falls through when a3(?) >= v0(?) (signed).
  The `beq` branch at 0xda453b8 targets 0xda453c4, is taken when v0(=[a0+29532]) >= v1(=[a0+29548]) (signed), and falls through when v0(=[a0+29532]) < v1(=[a0+29548]) (signed).
  The `beql` branch at 0xda453cc targets 0xda453dc, is taken when a1(=[a0+29536]) >= v1(=[a0+29552]) (signed), and falls through when a1(=[a0+29536]) < v1(=[a0+29552]) (signed); its branch-likely delay slot `lw v1,29556(a0)` at 0xda453d0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda453e0 targets 0xda453f0, is taken when v1(=[a0+29556]) >= a3(=[a0+29540]) (signed), and falls through when v1(=[a0+29556]) < a3(=[a0+29540]) (signed); its branch-likely delay slot `lw v1,29560(a0)` at 0xda453e4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda453f4 targets 0xda45404, is taken when v1(=[a0+29560]) >= t0(=[a0+29544]) (signed), and falls through when v1(=[a0+29560]) < t0(=[a0+29544]) (signed); its branch-likely delay slot `lw v1,3652(a0)` at 0xda453f8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda45420 targets 0xda45430, is taken when a3(?) >= v0(?) (signed), and falls through when a3(?) < v0(?) (signed).
  The `beq` branch at 0xda45434 targets 0xda45444, is taken when t0(?) >= a1(?) (signed), and falls through when t0(?) < a1(?) (signed).
  The return at 0xda454fc has v0 = ?.

- `InitBuffers` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda47180 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda47180-0xda473ac (556 bytes).
  It occupies 556 bytes.
  The `lbu` at 0xda471a8 loads 1 byte from a0 (arg0 at entry) +0xc8e.
  The `sw` at 0xda471b4 stores 4 bytes to a0 (arg0 at entry) +0x7718.
  The `sw` at 0xda471bc stores 4 bytes to a0 (arg0 at entry) +0x2d4c.
  4 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xc8d, including `lbu` at 0xda471c0, `lbu` at 0xda4723c, `lbu` at 0xda472a0.
  The `sw` at 0xda471c8 stores 4 bytes to a0 (arg0 at entry) +0x771c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x2d48, including `sw` at 0xda471d0, `sw` at 0xda47248.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7718, including `lw` at 0xda471d8, `lw` at 0xda4720c, `lw` at 0xda47240.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x771c, including `lw` at 0xda471ec, `lw` at 0xda47220.
  The `lw` at 0xda47278 loads 4 bytes from a0 (arg0 at entry) +0xcd8.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xc90, including `lbu` at 0xda47280, `lbu` at 0xda472ec.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x78d8, including `lw` at 0xda472b0, `lw` at 0xda472cc.
  The `sb` at 0xda472f8 stores 1 byte to a0 (arg0 at entry) +0x12e8.
  The `sw` at 0xda47300 stores 4 bytes to a0 (arg0 at entry) +0x12ec.
  The `lbu` at 0xda47328 loads 1 byte from a0 (arg0 at entry) +0xc91.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xc92, including `lbu` at 0xda47330, `lbu` at 0xda4734c.
  The `sw` at 0xda4735c stores 4 bytes to a0 (arg0 at entry) +0x79a0.
  The `jalr` at 0xda471e0 calls __glOdysseyInitCI [0xda438fc] with a0=[a0+30488], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda471f8 calls __glOdysseyInitCI [0xda438fc] with a0=[a0+30492], a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xda47214 calls __glOdysseyInitRGB [0xdab0cb8] with a0=[a0+30488], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4722c calls __glOdysseyInitRGB [0xdab0cb8] with a0=[a0+30492], a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xda47254 calls __glOdysseyInitCI [0xda438fc] with a0=[a0+30488], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4726c calls __glOdysseyInitRGB [0xdab0cb8] with a0=[a0+30488], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda472b8 calls __glOdysseyInitCI [0xda438fc] with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xda472d4 calls __glOdysseyInitRGB [0xdab0cb8] with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xda47310 calls __glOdysseyInitAccum [0xda35264] with a0=a0+31192, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xda47340 calls __glInitDepth [0xdb1e3e8] with a0=a0+31060, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xda4736c calls __glInitStencil8 [0xdb51f98] with a0=a0+30940, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xda47380 calls __glUpdateDepthRange [0xdb836a4] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xda471b8 targets 0xda4723c, is taken when t6(=[a0+3214]:1) == 0, and falls through when t6(=[a0+3214]:1) != 0.
  The `beq` branch at 0xda471cc targets 0xda47208, is taken when t7(=[a0+3213]:1) == 0, and falls through when t7(=[a0+3213]:1) != 0.
  The `beq` branch at 0xda47200 targets 0xda47278 and is always taken.
  The `beq` branch at 0xda47234 targets 0xda47278 and is always taken.
  The `beq` branch at 0xda47244 targets 0xda47264, is taken when t8(=[a0+3213]:1) == 0, and falls through when t8(=[a0+3213]:1) != 0.
  The `beq` branch at 0xda4725c targets 0xda47278 and is always taken.
  The `blezl` branch at 0xda4727c targets 0xda472f0, is taken when s2(=[a0+3288]) <= 0 (signed), and falls through when s2(=[a0+3288]) > 0 (signed); its branch-likely delay slot `lbu t4,3216(s1)` at 0xda47280 runs only when taken and is annulled on fall-through.
  The `blez` branch at 0xda47284 targets 0xda472ec, is taken when s2(=[a0+3288]) <= 0 (signed), and falls through when s2(=[a0+3288]) > 0 (signed).
  The `beq` branch at 0xda472a4 targets 0xda472c8, is taken when t9(=[a0+3213]:1) == 0, and falls through when t9(=[a0+3213]:1) != 0.
  The `beq` branch at 0xda472c0 targets 0xda472e0 and is always taken.
  The `bnel` branch at 0xda472e4 targets 0xda472a4, is taken when s0(?) != s3(?), and falls through when s0(?) == s3(?); its branch-likely delay slot `lbu t9,3213(s1)` at 0xda472e8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda472fc targets 0xda47328, is taken when t4(=[a0+3216]:1) == 0, and falls through when t4(=[a0+3216]:1) != 0.
  The `bne` branch at 0xda47318 targets 0xda47328, is taken when v0(=ret(__glOdysseyInitAccum)) != 0, and falls through when v0(=ret(__glOdysseyInitAccum)) == 0.
  The `beq` branch at 0xda47320 targets 0xda47390 and is always taken.
  The `beql` branch at 0xda4732c targets 0xda47350, is taken when t5(=[a0+3217]:1) == 0, and falls through when t5(=[a0+3217]:1) != 0; its branch-likely delay slot `lbu t7,3218(s1)` at 0xda47330 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda47358 targets 0xda47378, is taken when t7(=[a0+3218]:1) == 0, and falls through when t7(=[a0+3218]:1) != 0.
  The return at 0xda473a4 has v0 = one of 0x0, 0x1.

- `LoseCurrent` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda4b8cc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda4b8cc-0xda4b9d0 (260 bytes).
  It occupies 260 bytes.
  The `lw` at 0xda4b8e4 loads 4 bytes from a0 (arg0 at entry) +0xc7c.
  2 such `lw` accesses load 4 bytes from abs 0x1018, including `lw` at 0xda4b8f4, `lw` at 0xda4b928.
  The `sw` at 0xda4b930 stores 4 bytes to a0 (arg0 at entry) +0xc78.
  The `sw` at 0xda4b93c stores 4 bytes to abs 0x1010.
  The `lw` at 0xda4b948 loads 4 bytes from a0 (arg0 at entry) +0x17ec.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda4b960, `lw` at 0xda4b970, `lw` at 0xda4b978.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda4b96c, `sw` at 0xda4b974, `sw` at 0xda4b980.
  The `lw` at 0xda4b98c loads 4 bytes from a0 (arg0 at entry) +0x1374.
  The `lw` at 0xda4b99c loads 4 bytes from abs 0x1028.
  The `sw` at 0xda4b9a0 stores 4 bytes to a0 (arg0 at entry) +0x13b4.
  The `lw` at 0xda4b9a4 loads 4 bytes from abs 0x102c.
  The `sw` at 0xda4b9a8 stores 4 bytes to a0 (arg0 at entry) +0x13b8.
  The `lw` at 0xda4b9ac loads 4 bytes from abs 0x1030.
  The `sw` at 0xda4b9b0 stores 4 bytes to a0 (arg0 at entry) +0x13bc.
  The `lw` at 0xda4b9b4 loads 4 bytes from abs 0x1034.
  The `sw` at 0xda4b9b8 stores 4 bytes to a0 (arg0 at entry) +0x13c0.
  The `jalr` at 0xda4b918 calls __glLoseCurrentBuffers [0xdb1b28c] with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4b938 calls FastDispatchInstall [0xda46bb0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0xda4b8ec targets 0xda4b904, is taken when t6(=[a0+3196]) != at(=0x1c00), and falls through when t6(=[a0+3196]) == at(=0x1c00).
  The `bne` branch at 0xda4b8fc targets 0xda4b90c, is taken when t7(=[0x1018]) != at(=0x1), and falls through when t7(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xda4b904 targets 0xda4b9c0 and is always taken.
  The `beq` branch at 0xda4b954 targets 0xda4b98c, is taken when t9(=a0+7952) == v0(=[a0+6124]), and falls through when t9(=a0+7952) != v0(=[a0+6124]).
  The `bne` branch at 0xda4b97c targets 0xda4b960, is taken when t2(?) != t4(=[a0+6124]+1812), and falls through when t2(?) == t4(=[a0+6124]+1812).
  The `beql` branch at 0xda4b994 targets 0xda4b9c0, is taken when t5(=[a0+4980]) == 0, and falls through when t5(=[a0+4980]) != 0; its branch-likely delay slot `addiu v0,zero,1` at 0xda4b998 runs only when taken and is annulled on fall-through.
  The return at 0xda4b9c8 has v0 = one of 0x0, 0x1.

- `MakeCurrent` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda4b9d0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda4b9d0-0xda4d340 (6512 bytes).
  It occupies 6512 bytes.
  The `lw` at 0xda4b9ec loads 4 bytes from a0 (arg0 at entry) +0x3c.
  The `lw` at 0xda4ba04 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `jalr` at 0xda4b9f0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4ba08 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xda4ba28 calls MakeCurrentRead [0xda4abf8] with a0=a0 at entry (arg0), a1=ret(?), a2=ret(?), a3=?.
  The return at 0xda4ba3c has v0 = ret(MakeCurrentRead).
  The instructions from 0xda4ba44 to 0xda4d33c are not reached by any path from the entry, and their branches are not listed.

- `__glsplc_Begin` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda52c2c (o32).
  Maintains the cursor record made of the words at absolute 0x1028, 0x1030 and 0x1034 (reached
  through `a3` = 0x1028) together with the flag words at +0x16948 to +0x16954 of the block at abs
  0x1010; it either appends a three-word entry where the word at 0x1030 points or falls back to
  `__glSPDlalloc`, and it invokes `RemoveIlists` and `__glSPDlistSpace` on the record. The append
  path runs only when the byte at +0x16950 is nonzero, the word at +0x16954 is 1, the word at 0x1034
  is zero, the word at +0x13d4 is at least 3 (unsigned) and two pairs of table words are equal (the
  branches at 0xda52c5c, 0xda52c70, 0xda52c7c, 0xda52c8c, 0xda52cac and 0xda52cc0 each leave for the
  allocation path when their test fails). The compared table words come from the base held at +5072
  and the entry count held at +5076 of the block at abs 0x1010. The allocation path calls
  `__glSPDlalloc` with a0 = 4 (`jalr` at 0xda52e54) and returns at once on a zero result, skipping
  everything below. A nonzero result gets the first argument written into its first word (the `sw`
  at 0xda52e78). When the word at +0x16954 is positive (`bgtzl` at 0xda52e84) it sets the byte at
  +0x16950 to 1 (store at 0xda52e88) and clears the word at +0x16954 (store at 0xda52ea8); otherwise
  it sets that byte to 0 (store at 0xda52e98). Both cases join the common tail. The append path
  begins with a call to `RemoveIlists`. If the word at 0x1030 matches an address computed from two
  table words (`beq` at 0xda52ce8), three record updates come before the call: the table word loaded
  at 0xda52cd4 is added to the word at 0x1034, 4 is taken off the word at 0x1030 and 1 is added to
  the word at 0x1028 (stores at 0xda52d24, 0xda52d2c and 0xda52d30); `RemoveIlists` is then called
  with a0 = 2 (call at 0xda52d3c). A mismatch calls it with a0 = 1 instead (call at 0xda52d00) and
  leaves the record alone. Next, a1 becomes 1 only if the word at 0x1034 is zero and bit 0x4 of the
  word at 0x1030 is set (`bne` at 0xda52d60, `beql` at 0xda52d6c); otherwise it stays 0.
  `__glSPDlistSpace` is skipped when the word at 0x1028 is already at least a1 + 3 (`beql` at
  0xda52d80); otherwise it runs with a0 = 0 and a1 (`jalr` at 0xda52d9c). If it returns zero, the
  routine takes 4 off the word at 0x1030, adds 1 to the word at 0x1028 (stores at 0xda52dcc and
  0xda52dd8) and returns, skipping the tail below. A nonzero return, or the count test passing,
  writes 0x10001, 0x10400 and the first argument to three words at the address in the word at 0x1030
  plus 4 times a1 (stores at 0xda52e08, 0xda52e0c and 0xda52e1c), adds 3 to the word at 0x1034
  (0xda52e30), stores the count less a1 and less 3 at 0x1028 (0xda52e38), where the count is the
  word at 0x1028 or, on the nonzero path, the value `__glSPDlistSpace` returned, advances the word
  at 0x1030 by 12 plus 4 times a1 (0xda52e34) and clears the word at +0x16954 (0xda52e44). Both the
  append path and a nonzero allocation end in a shared tail that tests the byte at +0x16948 (`beql`
  at 0xda52eb0). A nonzero byte makes it write 0x7f7fffff (the literal at 0xdbb9ae8) to +0x168f8,
  +0x16900 and +0x16908, and 0xff7fffff (the literal at 0xdbb9aec) to +0x168fc, +0x16904 and
  +0x1690c (stores at 0xda52ed0 to 0xda52f0c).
  Unknown: what the table behind the base at +5072 holds, since its words feed the tests, and how
  `RemoveIlists` treats the record for a0 of 1 and 2; its committed note covers only the first
  comparison and a call to a callee it does not name.
  Evidence grade: established.

- `__glOdysplc_LoadMatrixf` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda53618 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda53618-0xda53660 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xda53624 loads 4 bytes from abs 0x1010.
  The `sb` at 0xda5363c stores 1 byte to [0x1010] +0x16948.
  The `jalr` at 0xda53644 calls __glsplc_LoadMatrixf [0xdb9f13c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda53658 has v0 = ret(__glsplc_LoadMatrixf).

- `__glOdysplc_LoadMatrixd` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda53660 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda53660-0xda536a8 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xda5366c loads 4 bytes from abs 0x1010.
  The `sb` at 0xda53684 stores 1 byte to [0x1010] +0x16948.
  The `jalr` at 0xda5368c calls __glsplc_LoadMatrixd [0xdb9f19c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda536a0 has v0 = ret(__glsplc_LoadMatrixd).

- `PreEvaluate` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda5456c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda5456c-0xda547cc (608 bytes).
  It occupies 608 bytes.
  6 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xda545c8, `swc1` at 0xda54608, `swc1` at 0xda54620.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xda545e0, `swc1` at 0xda54614, `swc1` at 0xda54628.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0xda545e4, `swc1` at 0xda5461c.
  The `swc1` at 0xda545f0 stores 4 bytes to a2 (arg2 at entry) +0xc.
  The `lwc1` at 0xda54644 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0xda54678 loads 4 bytes from a2 (arg2 at entry) +0x4.
  9 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda54694, `lwc1` at 0xda546dc, `lwc1` at 0xda546e4.
  11 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda546a4, `swc1` at 0xda546c0, `swc1` at 0xda54720.
  The `beq` branch at 0xda54598 targets 0xda5462c, is taken when a0 == at(=0x1), and falls through when a0 != at(=0x1).
  The `beq` branch at 0xda545a4 targets 0xda54620, is taken when a0 == at(=0x2), and falls through when a0 != at(=0x2).
  The `beq` branch at 0xda545ac targets 0xda545f4, is taken when a0 == at(=0x3), and falls through when a0 != at(=0x3).
  The `bne` branch at 0xda545b4 targets 0xda54634, is taken when a0 != at(=0x4), and falls through when a0 == at(=0x4).
  The `beq` branch at 0xda545ec targets 0xda547bc and is always taken.
  The `beq` branch at 0xda54618 targets 0xda547bc and is always taken.
  The `beq` branch at 0xda54624 targets 0xda547bc and is always taken.
  The `beq` branch at 0xda5462c targets 0xda547bc and is always taken.
  The `bne` branch at 0xda5463c targets 0xda547bc, is taken when a0 < 0x3 (signed), and falls through when a0 >= 0x3 (signed).
  The `bne` branch at 0xda54660 targets 0xda547a8, is taken when v0(?) < 0x2 (signed), and falls through when v0(?) >= 0x2 (signed).
  The `beq` branch at 0xda54668 targets 0xda546c8, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0xda54684 targets 0xda546b4, is taken when a3(?) == v1(=0x2), and falls through when a3(?) != v1(=0x2).
  The `bnel` branch at 0xda546ac targets 0xda54690, is taken when a3(?) != v1(?), and falls through when a3(?) == v1(?); its branch-likely delay slot `mul.s $f2,$f18,$f12` at 0xda546b0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda546c4 targets 0xda547a8, is taken when v1(?) == v0(?), and falls through when v1(?) != v0(?).
  The `beq` branch at 0xda546d8 targets 0xda5474c, is taken when v1(?) == v0(?), and falls through when v1(?) != v0(?).
  The `bne` branch at 0xda54744 targets 0xda546e0, is taken when v1(?) != v0(?), and falls through when v1(?) == v0(?).
  The `bne` branch at 0xda547b4 targets 0xda54644, is taken when v0(?) != a0, and falls through when v0(?) == a0.
  The return at 0xda547c4 has v0 = one of 0x2, ?.

- `PreEvaluateWithDeriv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda547cc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda547cc-0xda54c2c (1120 bytes).
  It occupies 1120 bytes.
  7 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xda54828, `swc1` at 0xda54888, `swc1` at 0xda548b8.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xda54844, `swc1` at 0xda54898, `swc1` at 0xda548bc.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0xda5484c, `swc1` at 0xda5489c.
  The `swc1` at 0xda54858 stores 4 bytes to a2 (arg2 at entry) +0xc.
  5 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `swc1` at 0xda5485c, `swc1` at 0xda548a0, `swc1` at 0xda548c8.
  3 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x4, including `swc1` at 0xda54860, `swc1` at 0xda548a4, `swc1` at 0xda548c0.
  2 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x8, including `swc1` at 0xda54864, `swc1` at 0xda548ac.
  The `swc1` at 0xda5486c stores 4 bytes to a3 (arg3 at entry) +0xc.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xda548f0, `lwc1` at 0xda54a68, `lwc1` at 0xda54ab4.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda54924, `lwc1` at 0xda54ae0.
  21 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda54940, `lwc1` at 0xda54988, `lwc1` at 0xda54990.
  24 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda54950, `swc1` at 0xda5496c, `swc1` at 0xda549cc.
  The `beq` branch at 0xda547f8 targets 0xda548cc, is taken when a0 == at(=0x1), and falls through when a0 != at(=0x1).
  The `beq` branch at 0xda54804 targets 0xda548b0, is taken when a0 == at(=0x2), and falls through when a0 != at(=0x2).
  The `beq` branch at 0xda5480c targets 0xda54870, is taken when a0 == at(=0x3), and falls through when a0 != at(=0x3).
  The `bne` branch at 0xda54814 targets 0xda548dc, is taken when a0 != at(=0x4), and falls through when a0 == at(=0x4).
  The `beq` branch at 0xda54868 targets 0xda54c1c and is always taken.
  The `beq` branch at 0xda548a8 targets 0xda54c1c and is always taken.
  The `beq` branch at 0xda548c4 targets 0xda54c1c and is always taken.
  The `beq` branch at 0xda548d4 targets 0xda54c1c and is always taken.
  The `bne` branch at 0xda548e8 targets 0xda54a68, is taken when v1(=a0-1) < 0x3 (signed), and falls through when v1(=a0-1) >= 0x3 (signed).
  The `bne` branch at 0xda5490c targets 0xda54a54, is taken when v0(?) < 0x2 (signed), and falls through when v0(?) >= 0x2 (signed).
  The `beq` branch at 0xda54914 targets 0xda54974, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0xda54930 targets 0xda54960, is taken when t0(?) == a0(=0x2), and falls through when t0(?) != a0(=0x2).
  The `bnel` branch at 0xda54958 targets 0xda5493c, is taken when t0(?) != a0(?), and falls through when t0(?) == a0(?); its branch-likely delay slot `mul.s $f2,$f18,$f12` at 0xda5495c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda54970 targets 0xda54a54, is taken when a0(?) == v0(?), and falls through when a0(?) != v0(?).
  The `beq` branch at 0xda54984 targets 0xda549f8, is taken when a0(?) == v0(?), and falls through when a0(?) != v0(?).
  The `bne` branch at 0xda549f0 targets 0xda5498c, is taken when a0(?) != v0(?), and falls through when a0(?) == v0(?).
  The `bne` branch at 0xda54a60 targets 0xda548f0, is taken when v0(?) != v1(=a0-1), and falls through when v0(?) == v1(=a0-1).
  The `bne` branch at 0xda54a9c targets 0xda54a80, is taken when a0(?) < v1(=a0-1) (signed), and falls through when a0(?) >= v1(=a0-1) (signed).
  The `bne` branch at 0xda54ac8 targets 0xda54c10, is taken when v0(?) < 0x2 (signed), and falls through when v0(?) >= 0x2 (signed).
  The `beq` branch at 0xda54ad0 targets 0xda54b30, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0xda54aec targets 0xda54b1c, is taken when v1(?) == a0(=0x2), and falls through when v1(?) != a0(=0x2).
  The `bnel` branch at 0xda54b14 targets 0xda54af8, is taken when v1(?) != a0(?), and falls through when v1(?) == a0(?); its branch-likely delay slot `mul.s $f2,$f18,$f12` at 0xda54b18 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda54b2c targets 0xda54c10, is taken when a0(?) == v0(?), and falls through when a0(?) != v0(?).
  The `beq` branch at 0xda54b40 targets 0xda54bb4, is taken when a0(?) == v0(?), and falls through when a0(?) != v0(?).
  The `bne` branch at 0xda54bac targets 0xda54b48, is taken when a0(?) != v0(?), and falls through when a0(?) == v0(?).
  The return at 0xda54c24 has v0 = one of 0x2, ?.

- `DoDomain1` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda54c2c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda54c2c-0xda55314 (1768 bytes).
  It occupies 1768 bytes.
  The `lwc1` at 0xda54c50 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lwc1` at 0xda54c54 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lwc1` at 0xda54c74 loads 4 bytes from a0 (arg0 at entry) +0x2f4.
  6 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0xda54c90, `lw` at 0xda54ca4, `lw` at 0xda54ccc.
  The `lw` at 0xda54c94 loads 4 bytes from a0 (arg0 at entry) +0x57c.
  The `sw` at 0xda54cc8 stores 4 bytes to a0 (arg0 at entry) +0x584.
  The `swc1` at 0xda54cd0 stores 4 bytes to a0 (arg0 at entry) +0x2f4.
  The `sw` at 0xda54cd4 stores 4 bytes to a0 (arg0 at entry) +0x57c.
  The `lw` at 0xda54ce4 loads 4 bytes from a2 (arg2 at entry) +0x0.
  21 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x2fc, including `lwc1` at 0xda54d4c, `lwc1` at 0xda54df0, `lwc1` at 0xda54e44.
  53 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda54d50, `lwc1` at 0xda54d58, `lwc1` at 0xda54d64.
  15 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x300, including `lwc1` at 0xda54d54, `lwc1` at 0xda54df8, `lwc1` at 0xda54e4c.
  10 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x304, including `lwc1` at 0xda54d60, `lwc1` at 0xda54e04, `lwc1` at 0xda54e58.
  5 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x308, including `lwc1` at 0xda54d70, `lwc1` at 0xda54e14, `lwc1` at 0xda54e68.
  22 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda54da4, `swc1` at 0xda54e40, `swc1` at 0xda54e80.
  The `jalr` at 0xda54cb4 calls PreEvaluate [0xda5456c] with a0=[a2+4], a1=?, a2=a0+764, a3=a3 at entry (arg3); fp f12=[a2+12].
  The `bc1tl` branch at 0xda54c68 targets 0xda55304, is taken when f0(=[a2+8]) == f12(=[a2+12]) (c.eq.s at 0xda54c60), and falls through when not (f0(=[a2+8]) == f12(=[a2+12]) (c.eq.s at 0xda54c60)); its branch-likely delay slot `lw ra,36(sp)` at 0xda54c6c runs only when taken and is annulled on fall-through.
  The `bc1f` branch at 0xda54c88 targets 0xda54ca0, is taken when not (f2 == f8(=[a0+756]) (c.eq.s at 0xda54c80)), and falls through when f2 == f8(=[a0+756]) (c.eq.s at 0xda54c80).
  The `beql` branch at 0xda54c98 targets 0xda54ce0, is taken when v1(=[a2+4]) == t6(=[a0+1404]), and falls through when v1(=[a2+4]) != t6(=[a0+1404]); its branch-likely delay slot `addiu at,zero,1` at 0xda54c9c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda54ce0 targets 0xda551cc, is taken when v1(=[a2+4]) == at(=0x1), and falls through when v1(=[a2+4]) != at(=0x1).
  The `beq` branch at 0xda54cec targets 0xda550a4, is taken when v1(=[a2+4]) == at(=0x2), and falls through when v1(=[a2+4]) != at(=0x2).
  The `beq` branch at 0xda54cf4 targets 0xda54f10, is taken when v1(=[a2+4]) == at(=0x3), and falls through when v1(=[a2+4]) != at(=0x3).
  The `bne` branch at 0xda54cfc targets 0xda5528c, is taken when v1(=[a2+4]) != at(=0x4), and falls through when v1(=[a2+4]) == at(=0x4).
  The `blez` branch at 0xda54d04 targets 0xda55300, is taken when t0(=[a2]) <= 0 (signed), and falls through when t0(=[a2]) > 0 (signed).
  The `beq` branch at 0xda54d10 targets 0xda54db0, is taken when (t0(=[a2]) & 0x3) == 0, and falls through when (t0(=[a2]) & 0x3) != 0.
  The `bne` branch at 0xda54da0 targets 0xda54d4c, is taken when t1(?) != a3(?), and falls through when t1(?) == a3(?).
  The `beql` branch at 0xda54da8 targets 0xda55304, is taken when a3(?) == t0(=[a2]), and falls through when a3(?) != t0(=[a2]); its branch-likely delay slot `lw ra,36(sp)` at 0xda54dac runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda54f00 targets 0xda54df0, is taken when a1(?) != t1(=(([a2] << 0x2) + a3)), and falls through when a1(?) == t1(=(([a2] << 0x2) + a3)).
  The `beq` branch at 0xda54f08 targets 0xda55304 and is always taken.
  The `blez` branch at 0xda54f10 targets 0xda55300, is taken when t0(=[a2]) <= 0 (signed), and falls through when t0(=[a2]) > 0 (signed).
  The `beq` branch at 0xda54f1c targets 0xda54f98, is taken when (t0(=[a2]) & 0x3) == 0, and falls through when (t0(=[a2]) & 0x3) != 0.
  The `bne` branch at 0xda54f88 targets 0xda54f48, is taken when a0(?) != a3(?), and falls through when a0(?) == a3(?).
  The `beql` branch at 0xda54f90 targets 0xda55304, is taken when a3(?) == t0(=[a2]), and falls through when a3(?) != t0(=[a2]); its branch-likely delay slot `lw ra,36(sp)` at 0xda54f94 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda55094 targets 0xda54fc8, is taken when a1(?) != a0(=(([a2] << 0x2) + a3)), and falls through when a1(?) == a0(=(([a2] << 0x2) + a3)).
  The `beq` branch at 0xda5509c targets 0xda55304 and is always taken.
  The `blez` branch at 0xda550a4 targets 0xda55300, is taken when t0(=[a2]) <= 0 (signed), and falls through when t0(=[a2]) > 0 (signed).
  The `beq` branch at 0xda550b0 targets 0xda55110, is taken when (t0(=[a2]) & 0x3) == 0, and falls through when (t0(=[a2]) & 0x3) != 0.
  The `bne` branch at 0xda55100 targets 0xda550d4, is taken when v1(?) != a3(?), and falls through when v1(?) == a3(?).
  The `beql` branch at 0xda55108 targets 0xda55304, is taken when a3(?) == t0(=[a2]), and falls through when a3(?) != t0(=[a2]); its branch-likely delay slot `lw ra,36(sp)` at 0xda5510c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda551bc targets 0xda55134, is taken when a1(?) != v1(=(([a2] << 0x2) + a3)), and falls through when a1(?) == v1(=(([a2] << 0x2) + a3)).
  The `beq` branch at 0xda551c4 targets 0xda55304 and is always taken.
  The `blez` branch at 0xda551cc targets 0xda55300, is taken when t0(=[a2]) <= 0 (signed), and falls through when t0(=[a2]) > 0 (signed).
  The `beq` branch at 0xda551d8 targets 0xda5521c, is taken when (t0(=[a2]) & 0x3) == 0, and falls through when (t0(=[a2]) & 0x3) != 0.
  The `bne` branch at 0xda5520c targets 0xda551f4, is taken when v0(?) != a3(?), and falls through when v0(?) == a3(?).
  The `beql` branch at 0xda55214 targets 0xda55304, is taken when a3(?) == t0(=[a2]), and falls through when a3(?) != t0(=[a2]); its branch-likely delay slot `lw ra,36(sp)` at 0xda55218 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda5527c targets 0xda55238, is taken when a1(?) != v0(=(([a2] << 0x2) + a3)), and falls through when a1(?) == v0(=(([a2] << 0x2) + a3)).
  The `beq` branch at 0xda55284 targets 0xda55304 and is always taken.
  The `blez` branch at 0xda5528c targets 0xda55300, is taken when t0(=[a2]) <= 0 (signed), and falls through when t0(=[a2]) > 0 (signed).
  The `blez` branch at 0xda552b4 targets 0xda552f4, is taken when t9(=[a2+4]) <= 0 (signed), and falls through when t9(=[a2+4]) > 0 (signed).
  The `bnel` branch at 0xda552ec targets 0xda552c4, is taken when v1(?) < t4(=[a2+4]) (signed), and falls through when v1(?) >= t4(=[a2+4]) (signed); its branch-likely delay slot `lwc1 $f16,764(a0)` at 0xda552f0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda552f8 targets 0xda552a4, is taken when a1(?) != t1(=(([a2] << 0x2) + a3)), and falls through when a1(?) == t1(=(([a2] << 0x2) + a3)).
  The return at 0xda5530c has v0 = one of ?, (([a2] << 0x2) + a3).

- `DoEvalCoord1` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda556d4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda556d4-0xda55ac4 (1008 bytes).
  It occupies 1008 bytes.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda5570c, `lw` at 0xda5571c, `lw` at 0xda55724.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda55718, `sw` at 0xda55720, `sw` at 0xda5572c.
  The `lbu` at 0xda55738 loads 1 byte from a0 (arg0 at entry) +0xc8d.
  9 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x710, including `lw` at 0xda55740, `lw` at 0xda55744, `lw` at 0xda55794.
  The `lw` at 0xda55760 loads 4 bytes from a0 (arg0 at entry) +0x6fe8.
  9 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x17ec, including `lw` at 0xda55774, `lw` at 0xda557c8, `lw` at 0xda55818.
  The `lw` at 0xda55780 loads 4 bytes from [a0+6124] +0x5cc.
  The `lw` at 0xda557b4 loads 4 bytes from a0 (arg0 at entry) +0x6fe4.
  The `lw` at 0xda557d4 loads 4 bytes from [a0+6124] +0x594.
  The `lw` at 0xda557f8 loads 4 bytes from a0 (arg0 at entry) +0x6ffc.
  4 such `lw` accesses load 4 bytes from [a0+6124] +0x67c, including `lw` at 0xda55824, `lw` at 0xda5587c, `lw` at 0xda558dc.
  The `lw` at 0xda55848 loads 4 bytes from a0 (arg0 at entry) +0x6ff8.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xdd0, including `lwc1` at 0xda55868, `lwc1` at 0xda558d0, `lwc1` at 0xda55930.
  The `lw` at 0xda558a0 loads 4 bytes from a0 (arg0 at entry) +0x6ff4.
  The `lw` at 0xda55900 loads 4 bytes from a0 (arg0 at entry) +0x6ff0.
  The `lw` at 0xda55960 loads 4 bytes from a0 (arg0 at entry) +0x6fec.
  The `lw` at 0xda55988 loads 4 bytes from [a0+6124] +0x5fc.
  The `lw` at 0xda559ac loads 4 bytes from a0 (arg0 at entry) +0x7004.
  The `lw` at 0xda559d8 loads 4 bytes from [a0+6124] +0x52c.
  The `lw` at 0xda559f8 loads 4 bytes from a0 (arg0 at entry) +0x7000.
  The `lw` at 0xda55a20 loads 4 bytes from [a0+6124] +0x50c.
  The `jalr` at 0xda5576c calls DoDomain1 [0xda54c2c] with a0=sp-1428, a1=a1 at entry (arg1), a2=a0+28092, a3=sp-1444.
  The `jalr` at 0xda55784 calls (unknown callee) with a0=sp-1444, a1=?, a2=?, a3=?.
  The `jalr` at 0xda557c0 calls DoDomain1 [0xda54c2c] with a0=sp-1428, a1=a1 at entry (arg1), a2=a0+28068, a3=sp-1444.
  The `jalr` at 0xda557d8 calls (unknown callee) with a0=sp-1444, a1=?, a2=?, a3=?.
  The `jalr` at 0xda55810 calls DoDomain1 [0xda54c2c] with a0=sp-1428, a1=a1 at entry (arg1), a2=a0+28212, a3=sp-1460.
  The `jalr` at 0xda55828 calls (unknown callee) with a0=sp-1460, a1=?, a2=?, a3=?.
  The `jalr` at 0xda55860 calls DoDomain1 [0xda54c2c] with a0=sp-1428, a1=a1 at entry (arg1), a2=a0+28188, a3=sp-1460.
  The `jalr` at 0xda55880 calls (unknown callee) with a0=sp-1460, a1=?, a2=?, a3=?.
  The `jalr` at 0xda558b8 calls DoDomain1 [0xda54c2c] with a0=sp-1428, a1=a1 at entry (arg1), a2=a0+28164, a3=sp-1460.
  The `jalr` at 0xda558e0 calls (unknown callee) with a0=sp-1460, a1=?, a2=?, a3=?.
  The `jalr` at 0xda55914 calls DoDomain1 [0xda54c2c] with a0=sp-1428, a1=a1 at entry (arg1), a2=a0+28140, a3=sp-1460.
  The `jalr` at 0xda55940 calls (unknown callee) with a0=sp-1460, a1=?, a2=?, a3=?.
  The `jalr` at 0xda55974 calls DoDomain1 [0xda54c2c] with a0=sp-1428, a1=a1 at entry (arg1), a2=a0+28116, a3=sp-1476.
  The `jalr` at 0xda5598c calls (unknown callee) with a0=sp-1476, a1=?, a2=?, a3=?.
  The `jalr` at 0xda559c4 calls DoDomain1 [0xda54c2c] with a0=sp-1428, a1=a1 at entry (arg1), a2=a0+28260, a3=sp-1492.
  The `jalr` at 0xda559dc calls (unknown callee) with a0=sp-1492, a1=?, a2=?, a3=?.
  The `jalr` at 0xda55a0c calls DoDomain1 [0xda54c2c] with a0=sp-1428, a1=a1 at entry (arg1), a2=a0+28236, a3=sp-1492.
  The `jalr` at 0xda55a24 calls (unknown callee) with a0=sp-1492, a1=?, a2=?, a3=?.
  The `bne` branch at 0xda55728 targets 0xda5570c, is taken when t9(?) != t0(=a0+29484), and falls through when t9(?) == t0(=a0+29484).
  The `beql` branch at 0xda5573c targets 0xda5579c, is taken when t1(=[a0+3213]:1) == 0, and falls through when t1(=[a0+3213]:1) != 0; its branch-likely delay slot `lw v0,1808(s0)` at 0xda55740 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda55754 targets 0xda557e8, is taken when (v0(=[a0+1808]) & 0x2) == 0, and falls through when (v0(=[a0+1808]) & 0x2) != 0.
  The `beq` branch at 0xda55790 targets 0xda557e8 and is always taken.
  The `beq` branch at 0xda557a8 targets 0xda557e8, is taken when (v0(=[a0+1808]) & 0x1) == 0, and falls through when (v0(=[a0+1808]) & 0x1) != 0.
  The `beq` branch at 0xda557ec targets 0xda5583c, is taken when (v0(=[a0+1808]) & 0x40) == 0, and falls through when (v0(=[a0+1808]) & 0x40) != 0.
  The `beq` branch at 0xda55834 targets 0xda55950 and is always taken.
  The `beq` branch at 0xda5583c targets 0xda55894, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0xda5588c targets 0xda55950 and is always taken.
  The `beq` branch at 0xda55894 targets 0xda558f4, is taken when t5(?) == 0, and falls through when t5(?) != 0.
  The `beq` branch at 0xda558ec targets 0xda55950 and is always taken.
  The `beq` branch at 0xda558f4 targets 0xda55950, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `beq` branch at 0xda55954 targets 0xda5599c, is taken when (v0(=[a0+1808]) & 0x4) == 0, and falls through when (v0(=[a0+1808]) & 0x4) != 0.
  The `beq` branch at 0xda559a0 targets 0xda559ec, is taken when (v0(=[a0+1808]) & 0x100) == 0, and falls through when (v0(=[a0+1808]) & 0x100) != 0.
  The `beq` branch at 0xda559e4 targets 0xda55a30 and is always taken.
  The `beq` branch at 0xda559ec targets 0xda55a30, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The return at 0xda55a3c has v0 = one of ret(?), [a0+1808].
  The instructions from 0xda55798 to 0xda55798 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda55a44 to 0xda55ac0 are not reached by any path from the entry, and their branches are not listed.

- `ComputeFirstPartials` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda55ac4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda55ac4-0xda55b78 (180 bytes).
  It occupies 180 bytes.
  The `lwc1` at 0xda55ac4 loads 4 bytes from a1 (arg1 at entry) +0x0.
  6 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lwc1` at 0xda55ac8, `lwc1` at 0xda55ae8, `lwc1` at 0xda55b04.
  The `lwc1` at 0xda55acc loads 4 bytes from a1 (arg1 at entry) +0xc.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lwc1` at 0xda55ad0, `lwc1` at 0xda55b24.
  The `lwc1` at 0xda55ad8 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `swc1` at 0xda55ae4 stores 4 bytes to a1 (arg1 at entry) +0x0.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lwc1` at 0xda55aec, `lwc1` at 0xda55b44.
  The `lwc1` at 0xda55af4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `swc1` at 0xda55b00 stores 4 bytes to a1 (arg1 at entry) +0x4.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lwc1` at 0xda55b08, `lwc1` at 0xda55b60.
  The `swc1` at 0xda55b18 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `lwc1` at 0xda55b20 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0xda55b28 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lwc1` at 0xda55b30 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `swc1` at 0xda55b3c stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `lwc1` at 0xda55b4c loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `swc1` at 0xda55b58 stores 4 bytes to a2 (arg2 at entry) +0x4.
  The `swc1` at 0xda55b74 stores 4 bytes to a2 (arg2 at entry) +0x8.
  The return at 0xda55b70 has v0 = ?.

- `ComputeNormal2` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda55b78 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda55b78-0xda55c1c (164 bytes).
  It occupies 164 bytes.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda55b94, `lwc1` at 0xda55be0.
  2 such `lwc1` accesses load 4 bytes from a3 (arg3 at entry) +0x8, including `lwc1` at 0xda55b98, `lwc1` at 0xda55bc4.
  2 such `lwc1` accesses load 4 bytes from a3 (arg3 at entry) +0x4, including `lwc1` at 0xda55b9c, `lwc1` at 0xda55bd8.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xda55ba0, `lwc1` at 0xda55bbc.
  The `swc1` at 0xda55bb4 stores 4 bytes to a1 (arg1 at entry) +0x0.
  2 such `lwc1` accesses load 4 bytes from a3 (arg3 at entry) +0x0, including `lwc1` at 0xda55bb8, `lwc1` at 0xda55be4.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xda55bc0, `lwc1` at 0xda55bdc.
  The `swc1` at 0xda55bd4 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `swc1` at 0xda55bf4 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `lw` at 0xda55bfc loads 4 bytes from a0 (arg0 at entry) +0x2dd8.
  The `jalr` at 0xda55c00 calls (unknown callee) with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda55c14 has v0 = ret(?).

- `DoDomain2` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda55c1c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda55c1c-0xda5783c (7200 bytes).
  It occupies 7200 bytes.
  The `lwc1` at 0xda55c44 loads 4 bytes from a3 (arg3 at entry) +0x10.
  The `lwc1` at 0xda55c48 loads 4 bytes from a3 (arg3 at entry) +0xc.
  The `lwc1` at 0xda55c64 loads 4 bytes from a3 (arg3 at entry) +0x14.
  The `lwc1` at 0xda55c68 loads 4 bytes from a3 (arg3 at entry) +0x18.
  The `lwc1` at 0xda55c98 loads 4 bytes from a0 (arg0 at entry) +0x2f4.
  7 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x4, including `lw` at 0xda55cb4, `lw` at 0xda55cc8, `lw` at 0xda55cf4.
  The `lw` at 0xda55cb8 loads 4 bytes from a0 (arg0 at entry) +0x57c.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x2f8, including `lwc1` at 0xda55cc0, `lwc1` at 0xda55d00.
  The `sw` at 0xda55cf0 stores 4 bytes to a0 (arg0 at entry) +0x584.
  The `swc1` at 0xda55cf8 stores 4 bytes to a0 (arg0 at entry) +0x2f4.
  The `sw` at 0xda55cfc stores 4 bytes to a0 (arg0 at entry) +0x57c.
  19 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x8, including `lw` at 0xda55d1c, `lw` at 0xda55d30, `lw` at 0xda55d54.
  The `lw` at 0xda55d20 loads 4 bytes from a0 (arg0 at entry) +0x580.
  The `sw` at 0xda55d50 stores 4 bytes to a0 (arg0 at entry) +0x588.
  The `swc1` at 0xda55d58 stores 4 bytes to a0 (arg0 at entry) +0x2f8.
  The `sw` at 0xda55d5c stores 4 bytes to a0 (arg0 at entry) +0x580.
  The `lw` at 0xda55d68 loads 4 bytes from a3 (arg3 at entry) +0x0.
  79 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x39c, including `lwc1` at 0xda55df0, `lwc1` at 0xda55e64, `lwc1` at 0xda55ebc.
  227 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda55df4, `lwc1` at 0xda55dfc, `lwc1` at 0xda55e08.
  46 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x3a0, including `lwc1` at 0xda55df8, `lwc1` at 0xda55e6c, `lwc1` at 0xda55ec4.
  28 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x3a4, including `lwc1` at 0xda55e04, `lwc1` at 0xda55e78, `lwc1` at 0xda55ed0.
  14 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x3a8, including `lwc1` at 0xda55e14, `lwc1` at 0xda55e88, `lwc1` at 0xda55ee0.
  42 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x2fc, including `lwc1` at 0xda55e1c, `lwc1` at 0xda55fcc, `lwc1` at 0xda56120.
  80 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda55e60, `swc1` at 0xda55eb8, `swc1` at 0xda55f18.
  21 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x300, including `lwc1` at 0xda55e90, `lwc1` at 0xda5602c, `lwc1` at 0xda5616c.
  11 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x304, including `lwc1` at 0xda55ee8, `lwc1` at 0xda5606c, `lwc1` at 0xda5619c.
  5 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x308, including `lwc1` at 0xda55f48, `lwc1` at 0xda560b8, `lwc1` at 0xda561cc.
  The `jalr` at 0xda55cd8 calls PreEvaluate [0xda5456c] with a0=[a3+4], a1=?, a2=a0+764, a3=a3 at entry (arg3); fp f14=[a3+16].
  The `jalr` at 0xda55d3c calls PreEvaluate [0xda5456c] with a0=[a3+8], a1=?, a2=a0+924, a3=0x2.
  The `bc1tl` branch at 0xda55c5c targets 0xda5782c, is taken when f0(=[a3+12]) == f14(=[a3+16]) (c.eq.s at 0xda55c54), and falls through when not (f0(=[a3+12]) == f14(=[a3+16]) (c.eq.s at 0xda55c54)); its branch-likely delay slot `lw ra,36(sp)` at 0xda55c60 runs only when taken and is annulled on fall-through.
  The `bc1tl` branch at 0xda55c78 targets 0xda5782c, is taken when f2(=[a3+20]) == f16(=[a3+24]) (c.eq.s at 0xda55c70), and falls through when not (f2(=[a3+20]) == f16(=[a3+24]) (c.eq.s at 0xda55c70)); its branch-likely delay slot `lw ra,36(sp)` at 0xda55c7c runs only when taken and is annulled on fall-through.
  The `bc1f` branch at 0xda55cac targets 0xda55cc4, is taken when not (f12 == f8(=[a0+756]) (c.eq.s at 0xda55ca4)), and falls through when f12 == f8(=[a0+756]) (c.eq.s at 0xda55ca4).
  The `beql` branch at 0xda55cbc targets 0xda55d04, is taken when t6(=[a3+4]) == t7(=[a0+1404]), and falls through when t6(=[a3+4]) != t7(=[a0+1404]); its branch-likely delay slot `lwc1 $f10,760(s0)` at 0xda55cc0 runs only when taken and is annulled on fall-through.
  The `bc1f` branch at 0xda55d14 targets 0xda55d2c, is taken when not (f18 == f10(=[a0+760]) (c.eq.s at 0xda55d0c)), and falls through when f18 == f10(=[a0+760]) (c.eq.s at 0xda55d0c).
  The `beql` branch at 0xda55d24 targets 0xda55d64, is taken when t9(=[a3+8]) == t6(=[a0+1408]), and falls through when t9(=[a3+8]) != t6(=[a0+1408]); its branch-likely delay slot `lw v0,4(s1)` at 0xda55d28 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda55d6c targets 0xda57084, is taken when v0(=[a3+4]) == v1(=0x1), and falls through when v0(=[a3+4]) != v1(=0x1); its branch-likely delay slot `lw v0,8(s1)` at 0xda55d70 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda55d74 targets 0xda56a20, is taken when v0(=[a3+4]) == a3(=0x2), and falls through when v0(=[a3+4]) != a3(=0x2).
  The `beq` branch at 0xda55d7c targets 0xda56490, is taken when v0(=[a3+4]) == a0(=0x3), and falls through when v0(=[a3+4]) != a0(=0x3).
  The `bne` branch at 0xda55d84 targets 0xda57764, is taken when v0(=[a3+4]) != a1(=0x4), and falls through when v0(=[a3+4]) == a1(=0x4).
  The `beq` branch at 0xda55d90 targets 0xda561f4, is taken when v0(=[a3+8]) == v1(=0x1), and falls through when v0(=[a3+8]) != v1(=0x1).
  The `beq` branch at 0xda55d98 targets 0xda560e4, is taken when v0(=[a3+8]) == a3(=0x2), and falls through when v0(=[a3+8]) != a3(=0x2).
  The `beq` branch at 0xda55da0 targets 0xda55f78, is taken when v0(=[a3+8]) == a0(=0x3), and falls through when v0(=[a3+8]) != a0(=0x3).
  The `bne` branch at 0xda55da8 targets 0xda562a8, is taken when v0(=[a3+8]) != a1(=0x4), and falls through when v0(=[a3+8]) == a1(=0x4).
  The `blez` branch at 0xda55db0 targets 0xda57828, is taken when t5(=[a3]) <= 0 (signed), and falls through when t5(=[a3]) > 0 (signed).
  The `bne` branch at 0xda55f68 targets 0xda55df0, is taken when t1(?) != s1(?), and falls through when t1(?) == s1(?).
  The `beq` branch at 0xda55f70 targets 0xda5782c and is always taken.
  The `blez` branch at 0xda55f78 targets 0xda57828, is taken when t5(=[a3]) <= 0 (signed), and falls through when t5(=[a3]) > 0 (signed).
  The `bne` branch at 0xda560d4 targets 0xda55fac, is taken when t1(?) != t0(?), and falls through when t1(?) == t0(?).
  The `beq` branch at 0xda560dc targets 0xda5782c and is always taken.
  The `blez` branch at 0xda560e4 targets 0xda57828, is taken when t5(=[a3]) <= 0 (signed), and falls through when t5(=[a3]) > 0 (signed).
  The `bne` branch at 0xda561e4 targets 0xda5610c, is taken when t1(?) != t0(?), and falls through when t1(?) == t0(?).
  The `beq` branch at 0xda561ec targets 0xda5782c and is always taken.
  The `blez` branch at 0xda561f4 targets 0xda57828, is taken when t5(=[a3]) <= 0 (signed), and falls through when t5(=[a3]) > 0 (signed).
  The `bne` branch at 0xda56298 targets 0xda56210, is taken when t1(?) != a3(?), and falls through when t1(?) == a3(?).
  The `beq` branch at 0xda562a0 targets 0xda5782c and is always taken.
  The `blez` branch at 0xda562a8 targets 0xda57828, is taken when t5(=[a3]) <= 0 (signed), and falls through when t5(=[a3]) > 0 (signed).
  The `blez` branch at 0xda562cc targets 0xda56320, is taken when t0(=[a3+8]) <= 0 (signed), and falls through when t0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xda562ec targets 0xda56314, is taken when v0(=a0+4) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(=a0+4) < v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda5630c targets 0xda562f4, is taken when v0(?) < v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(?) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `blez` branch at 0xda5633c targets 0xda56388, is taken when t0(=[a3+8]) <= 0 (signed), and falls through when t0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xda56354 targets 0xda5637c, is taken when v0(=a0+4) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(=a0+4) < v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda56374 targets 0xda5635c, is taken when v0(?) < v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(?) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `blez` branch at 0xda563ac targets 0xda563f8, is taken when t0(=[a3+8]) <= 0 (signed), and falls through when t0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xda563c4 targets 0xda563ec, is taken when v0(=a0+4) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(=a0+4) < v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda563e4 targets 0xda563cc, is taken when v0(?) < v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(?) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `blez` branch at 0xda5641c targets 0xda56468, is taken when t0(=[a3+8]) <= 0 (signed), and falls through when t0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xda56434 targets 0xda5645c, is taken when v0(=a0+4) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(=a0+4) < v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda56454 targets 0xda5643c, is taken when v0(?) < v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(?) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda56480 targets 0xda562c0, is taken when t1(?) != a2(?), and falls through when t1(?) == a2(?).
  The `beq` branch at 0xda56488 targets 0xda5782c and is always taken.
  The `beq` branch at 0xda56494 targets 0xda56814, is taken when v0(=[a3+8]) == v1(=0x1), and falls through when v0(=[a3+8]) != v1(=0x1).
  The `beq` branch at 0xda5649c targets 0xda5673c, is taken when v0(=[a3+8]) == a3(=0x2), and falls through when v0(=[a3+8]) != a3(=0x2).
  The `beq` branch at 0xda564a4 targets 0xda5661c, is taken when v0(=[a3+8]) == a0(=0x3), and falls through when v0(=[a3+8]) != a0(=0x3).
  The `bne` branch at 0xda564ac targets 0xda568a4, is taken when v0(=[a3+8]) != a1(=0x4), and falls through when v0(=[a3+8]) == a1(=0x4).
  The `blez` branch at 0xda564b4 targets 0xda57828, is taken when t5(=[a3]) <= 0 (signed), and falls through when t5(=[a3]) > 0 (signed).
  The `bne` branch at 0xda5660c targets 0xda564f4, is taken when t1(?) != s1(?), and falls through when t1(?) == s1(?).
  The `beq` branch at 0xda56614 targets 0xda5782c and is always taken.
  The `blez` branch at 0xda5661c targets 0xda57828, is taken when t5(=[a3]) <= 0 (signed), and falls through when t5(=[a3]) > 0 (signed).
  The `bne` branch at 0xda5672c targets 0xda56650, is taken when t1(?) != t0(?), and falls through when t1(?) == t0(?).
  The `beq` branch at 0xda56734 targets 0xda5782c and is always taken.
  The `blez` branch at 0xda5673c targets 0xda57828, is taken when t5(=[a3]) <= 0 (signed), and falls through when t5(=[a3]) > 0 (signed).
  The `bne` branch at 0xda56804 targets 0xda56764, is taken when t1(?) != a3(?), and falls through when t1(?) == a3(?).
  The `beq` branch at 0xda5680c targets 0xda5782c and is always taken.
  The `blez` branch at 0xda56814 targets 0xda57828, is taken when t5(=[a3]) <= 0 (signed), and falls through when t5(=[a3]) > 0 (signed).
  The `bne` branch at 0xda56894 targets 0xda56830, is taken when t1(?) != a0(?), and falls through when t1(?) == a0(?).
  The `beq` branch at 0xda5689c targets 0xda5782c and is always taken.
  The `blez` branch at 0xda568a4 targets 0xda57828, is taken when t5(=[a3]) <= 0 (signed), and falls through when t5(=[a3]) > 0 (signed).
  The `blez` branch at 0xda568c8 targets 0xda5691c, is taken when t0(=[a3+8]) <= 0 (signed), and falls through when t0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xda568e8 targets 0xda56910, is taken when v0(=a0+4) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(=a0+4) < v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda56908 targets 0xda568f0, is taken when v0(?) < v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(?) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `blez` branch at 0xda56938 targets 0xda56984, is taken when t0(=[a3+8]) <= 0 (signed), and falls through when t0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xda56950 targets 0xda56978, is taken when v0(=a0+4) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(=a0+4) < v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda56970 targets 0xda56958, is taken when v0(?) < v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(?) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `blezl` branch at 0xda569a8 targets 0xda569fc, is taken when t0(=[a3+8]) <= 0 (signed), and falls through when t0(=[a3+8]) > 0 (signed); its branch-likely delay slot `lwc1 $f6,772(s0)` at 0xda569ac runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda569c4 targets 0xda569ec, is taken when v0(=a0+4) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(=a0+4) < v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda569e4 targets 0xda569cc, is taken when v0(?) < v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(?) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda56a10 targets 0xda568bc, is taken when t1(?) != a2(?), and falls through when t1(?) == a2(?).
  The `beq` branch at 0xda56a18 targets 0xda5782c and is always taken.
  The `beq` branch at 0xda56a24 targets 0xda56dc0, is taken when v0(=[a3+8]) == v1(=0x1), and falls through when v0(=[a3+8]) != v1(=0x1).
  The `beq` branch at 0xda56a2c targets 0xda56c20, is taken when v0(=[a3+8]) == a3(=0x2), and falls through when v0(=[a3+8]) != a3(=0x2).
  The `beq` branch at 0xda56a34 targets 0xda56b4c, is taken when v0(=[a3+8]) == a0(=0x3), and falls through when v0(=[a3+8]) != a0(=0x3).
  The `bne` branch at 0xda56a3c targets 0xda56f78, is taken when v0(=[a3+8]) != a1(=0x4), and falls through when v0(=[a3+8]) == a1(=0x4).
  The `blez` branch at 0xda56a44 targets 0xda57828, is taken when t5(=[a3]) <= 0 (signed), and falls through when t5(=[a3]) > 0 (signed).
  The `bne` branch at 0xda56b3c targets 0xda56a84, is taken when t1(?) != a0(?), and falls through when t1(?) == a0(?).
  The `beq` branch at 0xda56b44 targets 0xda5782c and is always taken.
  The `blez` branch at 0xda56b4c targets 0xda57828, is taken when t5(=[a3]) <= 0 (signed), and falls through when t5(=[a3]) > 0 (signed).
  The `bne` branch at 0xda56c10 targets 0xda56b80, is taken when t1(?) != a0(?), and falls through when t1(?) == a0(?).
  The `beq` branch at 0xda56c18 targets 0xda5782c and is always taken.
  The `blez` branch at 0xda56c20 targets 0xda57828, is taken when t5(=[a3]) <= 0 (signed), and falls through when t5(=[a3]) > 0 (signed).
  The `beql` branch at 0xda56c2c targets 0xda56cb8, is taken when (t5(=[a3]) & 0x1) == 0, and falls through when (t5(=[a3]) & 0x1) != 0; its branch-likely delay slot `lw t9,84(sp)` at 0xda56c30 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda56cac targets 0xda57828, is taken when t0(=0x1) == t5(=[a3]), and falls through when t0(=0x1) != t5(=[a3]).
  The `bne` branch at 0xda56db0 targets 0xda56ce8, is taken when t1(?) != t4(?), and falls through when t1(?) == t4(?).
  The `beq` branch at 0xda56db8 targets 0xda5782c and is always taken.
  The `blez` branch at 0xda56dc0 targets 0xda57828, is taken when t5(=[a3]) <= 0 (signed), and falls through when t5(=[a3]) > 0 (signed).
  The `beq` branch at 0xda56dcc targets 0xda56e44, is taken when (t5(=[a3]) & 0x3) == 0, and falls through when (t5(=[a3]) & 0x3) != 0.
  The `bne` branch at 0xda56e34 targets 0xda56df0, is taken when v1(?) != t0(?), and falls through when v1(?) == t0(?).
  The `beql` branch at 0xda56e3c targets 0xda5782c, is taken when t0(?) == t5(=[a3]), and falls through when t0(?) != t5(=[a3]); its branch-likely delay slot `lw ra,36(sp)` at 0xda56e40 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda56f68 targets 0xda56e74, is taken when t1(?) != a2(?), and falls through when t1(?) == a2(?).
  The `beq` branch at 0xda56f70 targets 0xda5782c and is always taken.
  The `blez` branch at 0xda56f78 targets 0xda57828, is taken when t5(=[a3]) <= 0 (signed), and falls through when t5(=[a3]) > 0 (signed).
  The `blez` branch at 0xda56f9c targets 0xda56ff0, is taken when t0(=[a3+8]) <= 0 (signed), and falls through when t0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xda56fbc targets 0xda56fe4, is taken when v0(=a0+4) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(=a0+4) < v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda56fdc targets 0xda56fc4, is taken when v0(?) < v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(?) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `blez` branch at 0xda5700c targets 0xda57058, is taken when t0(=[a3+8]) <= 0 (signed), and falls through when t0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xda57024 targets 0xda5704c, is taken when v0(=a0+4) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(=a0+4) < v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda57044 targets 0xda5702c, is taken when v0(?) < v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(?) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda57070 targets 0xda56f90, is taken when t1(?) != a2(?), and falls through when t1(?) == a2(?).
  The `beq` branch at 0xda57078 targets 0xda5782c and is always taken.
  The `beq` branch at 0xda57084 targets 0xda575e4, is taken when v0(=[a3+8]) == v1(=0x1), and falls through when v0(=[a3+8]) != v1(=0x1).
  The `beq` branch at 0xda5708c targets 0xda57494, is taken when v0(=[a3+8]) == a3(=0x2), and falls through when v0(=[a3+8]) != a3(=0x2).
  The `beq` branch at 0xda57094 targets 0xda572d4, is taken when v0(=[a3+8]) == a0(=0x3), and falls through when v0(=[a3+8]) != a0(=0x3).
  The `bne` branch at 0xda5709c targets 0xda576cc, is taken when v0(=[a3+8]) != a1(=0x4), and falls through when v0(=[a3+8]) == a1(=0x4).
  The `blez` branch at 0xda570a4 targets 0xda57828, is taken when t5(=[a3]) <= 0 (signed), and falls through when t5(=[a3]) > 0 (signed).
  The `beq` branch at 0xda570b0 targets 0xda57158, is taken when (t5(=[a3]) & 0x3) == 0, and falls through when (t5(=[a3]) & 0x3) != 0.
  The `bne` branch at 0xda57148 targets 0xda570ec, is taken when v0(?) != t0(?), and falls through when v0(?) == t0(?).
  The `beql` branch at 0xda57150 targets 0xda5782c, is taken when t0(?) == t5(=[a3]), and falls through when t0(?) != t5(=[a3]); its branch-likely delay slot `lw ra,36(sp)` at 0xda57154 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda572c4 targets 0xda57194, is taken when t1(?) != v0(?), and falls through when t1(?) == v0(?).
  The `beq` branch at 0xda572cc targets 0xda5782c and is always taken.
  The `blez` branch at 0xda572d4 targets 0xda57828, is taken when t5(=[a3]) <= 0 (signed), and falls through when t5(=[a3]) > 0 (signed).
  The `beq` branch at 0xda572e0 targets 0xda57368, is taken when (t5(=[a3]) & 0x3) == 0, and falls through when (t5(=[a3]) & 0x3) != 0.
  The `bne` branch at 0xda57358 targets 0xda57310, is taken when v0(?) != t0(?), and falls through when v0(?) == t0(?).
  The `beql` branch at 0xda57360 targets 0xda5782c, is taken when t0(?) == t5(=[a3]), and falls through when t0(?) != t5(=[a3]); its branch-likely delay slot `lw ra,36(sp)` at 0xda57364 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda57484 targets 0xda57398, is taken when t1(?) != v0(?), and falls through when t1(?) == v0(?).
  The `beq` branch at 0xda5748c targets 0xda5782c and is always taken.
  The `blez` branch at 0xda57494 targets 0xda57828, is taken when t5(=[a3]) <= 0 (signed), and falls through when t5(=[a3]) > 0 (signed).
  The `beq` branch at 0xda574a0 targets 0xda57508, is taken when (t5(=[a3]) & 0x3) == 0, and falls through when (t5(=[a3]) & 0x3) != 0.
  The `bne` branch at 0xda574f8 targets 0xda574c4, is taken when v0(?) != t0(?), and falls through when v0(?) == t0(?).
  The `beql` branch at 0xda57500 targets 0xda5782c, is taken when t0(?) == t5(=[a3]), and falls through when t0(?) != t5(=[a3]); its branch-likely delay slot `lw ra,36(sp)` at 0xda57504 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda575d4 targets 0xda5752c, is taken when t1(?) != v0(?), and falls through when t1(?) == v0(?).
  The `beq` branch at 0xda575dc targets 0xda5782c and is always taken.
  The `blez` branch at 0xda575e4 targets 0xda57828, is taken when t5(=[a3]) <= 0 (signed), and falls through when t5(=[a3]) > 0 (signed).
  The `beq` branch at 0xda575f0 targets 0xda5763c, is taken when (t5(=[a3]) & 0x3) == 0, and falls through when (t5(=[a3]) & 0x3) != 0.
  The `bne` branch at 0xda5762c targets 0xda5760c, is taken when v0(?) != t0(?), and falls through when v0(?) == t0(?).
  The `beql` branch at 0xda57634 targets 0xda5782c, is taken when t0(?) == t5(=[a3]), and falls through when t0(?) != t5(=[a3]); its branch-likely delay slot `lw ra,36(sp)` at 0xda57638 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda576bc targets 0xda57658, is taken when t1(?) != v0(?), and falls through when t1(?) == v0(?).
  The `beq` branch at 0xda576c4 targets 0xda5782c and is always taken.
  The `blez` branch at 0xda576cc targets 0xda57828, is taken when t5(=[a3]) <= 0 (signed), and falls through when t5(=[a3]) > 0 (signed).
  The `blez` branch at 0xda576f0 targets 0xda57744, is taken when t0(=[a3+8]) <= 0 (signed), and falls through when t0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xda57710 targets 0xda57738, is taken when v0(=a0+4) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(=a0+4) < v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda57730 targets 0xda57718, is taken when v0(?) < v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(?) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda57754 targets 0xda576e4, is taken when t1(?) != a2(?), and falls through when t1(?) == a2(?).
  The `beq` branch at 0xda5775c targets 0xda5782c and is always taken.
  The `blez` branch at 0xda57764 targets 0xda57828, is taken when t5(=[a3]) <= 0 (signed), and falls through when t5(=[a3]) > 0 (signed).
  The `blez` branch at 0xda5778c targets 0xda5781c, is taken when t6(=[a3+4]) <= 0 (signed), and falls through when t6(=[a3+4]) > 0 (signed).
  The `blez` branch at 0xda577a0 targets 0xda577f0, is taken when t0(=[a3+8]) <= 0 (signed), and falls through when t0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xda577bc targets 0xda577e4, is taken when v0(=a0+4) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(=a0+4) < v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda577dc targets 0xda577c4, is taken when v0(?) < v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(?) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bnel` branch at 0xda57814 targets 0xda57798, is taken when a2(?) < t8(=[a3+4]) (signed), and falls through when a2(?) >= t8(=[a3+4]) (signed); its branch-likely delay slot `lw t0,8(s1)` at 0xda57818 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda57820 targets 0xda5777c, is taken when t1(?) != t3(?), and falls through when t1(?) == t3(?).
  The return at 0xda57834 has v0 = one of ?, (([a3] + [a3]) + [a3]), ([a3] + [a3]), [a3+8].
  The instructions from 0xda57080 to 0xda57080 are not reached by any path from the entry, and their branches are not listed.

- `DoDomain2WithDerivs` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda5783c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda5783c-0xda59f60 (10020 bytes).
  It occupies 10020 bytes.
  The `lwc1` at 0xda5786c loads 4 bytes from a3 (arg3 at entry) +0x10.
  The `lwc1` at 0xda57870 loads 4 bytes from a3 (arg3 at entry) +0xc.
  The `lwc1` at 0xda5788c loads 4 bytes from a3 (arg3 at entry) +0x14.
  The `lwc1` at 0xda57890 loads 4 bytes from a3 (arg3 at entry) +0x18.
  The `lwc1` at 0xda578c0 loads 4 bytes from a0 (arg0 at entry) +0x2f4.
  The `lw` at 0xda578dc loads 4 bytes from a0 (arg0 at entry) +0x584.
  7 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x4, including `lw` at 0xda578ec, `lw` at 0xda57900, `lw` at 0xda57930.
  The `lw` at 0xda578f0 loads 4 bytes from a0 (arg0 at entry) +0x57c.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x2f8, including `lwc1` at 0xda578f8, `lwc1` at 0xda5793c.
  The `sw` at 0xda5792c stores 4 bytes to a0 (arg0 at entry) +0x584.
  The `swc1` at 0xda57934 stores 4 bytes to a0 (arg0 at entry) +0x2f4.
  The `sw` at 0xda57938 stores 4 bytes to a0 (arg0 at entry) +0x57c.
  The `lw` at 0xda57958 loads 4 bytes from a0 (arg0 at entry) +0x588.
  18 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x8, including `lw` at 0xda57964, `lw` at 0xda57978, `lw` at 0xda57998.
  The `lw` at 0xda57968 loads 4 bytes from a0 (arg0 at entry) +0x580.
  The `sw` at 0xda57994 stores 4 bytes to a0 (arg0 at entry) +0x588.
  The `swc1` at 0xda5799c stores 4 bytes to a0 (arg0 at entry) +0x2f8.
  The `sw` at 0xda579a0 stores 4 bytes to a0 (arg0 at entry) +0x580.
  The `lw` at 0xda579a8 loads 4 bytes from a3 (arg3 at entry) +0x0.
  60 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x39c, including `lwc1` at 0xda57a44, `lwc1` at 0xda57b08, `lwc1` at 0xda57bc0.
  350 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda57a48, `lwc1` at 0xda57a58, `lwc1` at 0xda57a84.
  43 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x3a0, including `lwc1` at 0xda57a4c, `lwc1` at 0xda57b10, `lwc1` at 0xda57bc4.
  20 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x3a4, including `lwc1` at 0xda57a68, `lwc1` at 0xda57b20, `lwc1` at 0xda57bec.
  10 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x3a8, including `lwc1` at 0xda57a9c, `lwc1` at 0xda57b38, `lwc1` at 0xda57c04.
  54 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x2fc, including `lwc1` at 0xda57aa4, `lwc1` at 0xda57af8, `lwc1` at 0xda57dc0.
  174 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda57ab0, `swc1` at 0xda57abc, `swc1` at 0xda57b04.
  27 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x43c, including `lwc1` at 0xda57ab4, `lwc1` at 0xda57e00, `lwc1` at 0xda58098.
  57 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4dc, including `lwc1` at 0xda57ac0, `lwc1` at 0xda57b6c, `lwc1` at 0xda57c3c.
  43 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4e0, including `lwc1` at 0xda57ac8, `lwc1` at 0xda57b74, `lwc1` at 0xda57c40.
  20 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4e4, including `lwc1` at 0xda57ad8, `lwc1` at 0xda57b84, `lwc1` at 0xda57c50.
  10 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4e8, including `lwc1` at 0xda57af0, `lwc1` at 0xda57b9c, `lwc1` at 0xda57c68.
  28 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x300, including `lwc1` at 0xda57b40, `lwc1` at 0xda57ba4, `lwc1` at 0xda57e64.
  14 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x440, including `lwc1` at 0xda57b58, `lwc1` at 0xda57e84, `lwc1` at 0xda580fc.
  20 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x304, including `lwc1` at 0xda57c0c, `lwc1` at 0xda57c70, `lwc1` at 0xda57f00.
  10 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x444, including `lwc1` at 0xda57c24, `lwc1` at 0xda57f20, `lwc1` at 0xda58174.
  10 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x308, including `lwc1` at 0xda57cd4, `lwc1` at 0xda57d38, `lwc1` at 0xda57fa0.
  5 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x448, including `lwc1` at 0xda57cec, `lwc1` at 0xda57fc0, `lwc1` at 0xda581f0.
  The `jalr` at 0xda57918 calls PreEvaluateWithDeriv [0xda547cc] with a0=[a3+4], a1=?, a2=a0+764, a3=a0+1084; fp f12=[a3+16], f14=[a3+24].
  The `jalr` at 0xda57984 calls PreEvaluateWithDeriv [0xda547cc] with a0=[a3+8], a1=?, a2=a0+924, a3=a0+1244.
  The `bc1tl` branch at 0xda57884 targets 0xda59f48, is taken when f0(=[a3+12]) == f12(=[a3+16]) (c.eq.s at 0xda5787c), and falls through when not (f0(=[a3+12]) == f12(=[a3+16]) (c.eq.s at 0xda5787c)); its branch-likely delay slot `lw ra,44(sp)` at 0xda57888 runs only when taken and is annulled on fall-through.
  The `bc1tl` branch at 0xda578a0 targets 0xda59f48, is taken when f2(=[a3+20]) == f14(=[a3+24]) (c.eq.s at 0xda57898), and falls through when not (f2(=[a3+20]) == f14(=[a3+24]) (c.eq.s at 0xda57898)); its branch-likely delay slot `lw ra,44(sp)` at 0xda578a4 runs only when taken and is annulled on fall-through.
  The `bc1f` branch at 0xda578d4 targets 0xda578fc, is taken when not (f16 == f8(=[a0+756]) (c.eq.s at 0xda578cc)), and falls through when f16 == f8(=[a0+756]) (c.eq.s at 0xda578cc).
  The `bne` branch at 0xda578e4 targets 0xda578fc, is taken when s2(=0x1) != t6(=[a0+1412]), and falls through when s2(=0x1) == t6(=[a0+1412]).
  The `beql` branch at 0xda578f4 targets 0xda57940, is taken when t7(=[a3+4]) == t8(=[a0+1404]), and falls through when t7(=[a3+4]) != t8(=[a0+1404]); its branch-likely delay slot `lwc1 $f10,760(s0)` at 0xda578f8 runs only when taken and is annulled on fall-through.
  The `bc1f` branch at 0xda57950 targets 0xda57974, is taken when not (f18 == f10(=[a0+760]) (c.eq.s at 0xda57948)), and falls through when f18 == f10(=[a0+760]) (c.eq.s at 0xda57948).
  The `bne` branch at 0xda5795c targets 0xda57974, is taken when s2(=0x1) != t6(=[a0+1416]), and falls through when s2(=0x1) == t6(=[a0+1416]).
  The `beql` branch at 0xda5796c targets 0xda579a8, is taken when t7(=[a3+8]) == t8(=[a0+1408]), and falls through when t7(=[a3+8]) != t8(=[a0+1408]); its branch-likely delay slot `lw v0,4(s1)` at 0xda57970 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda579b0 targets 0xda597c4, is taken when v0(=[a3+4]) == s2(=0x1), and falls through when v0(=[a3+4]) != s2(=0x1); its branch-likely delay slot `lw v0,8(s1)` at 0xda579b4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda579b8 targets 0xda590b8, is taken when v0(=[a3+4]) == v1(=0x2), and falls through when v0(=[a3+4]) != v1(=0x2).
  The `beq` branch at 0xda579c0 targets 0xda586b8, is taken when v0(=[a3+4]) == a0(=0x3), and falls through when v0(=[a3+4]) != a0(=0x3).
  The `bne` branch at 0xda579c8 targets 0xda59e10, is taken when v0(=[a3+4]) != a1(=0x4), and falls through when v0(=[a3+4]) == a1(=0x4).
  The `beq` branch at 0xda579d4 targets 0xda58240, is taken when v0(=[a3+8]) == s2(=0x1), and falls through when v0(=[a3+8]) != s2(=0x1).
  The `beq` branch at 0xda579dc targets 0xda58020, is taken when v0(=[a3+8]) == v1(=0x2), and falls through when v0(=[a3+8]) != v1(=0x2).
  The `beq` branch at 0xda579e4 targets 0xda57d64, is taken when v0(=[a3+8]) == a0(=0x3), and falls through when v0(=[a3+8]) != a0(=0x3).
  The `bne` branch at 0xda579ec targets 0xda583c4, is taken when v0(=[a3+8]) != a1(=0x4), and falls through when v0(=[a3+8]) == a1(=0x4).
  The `blez` branch at 0xda579f4 targets 0xda59f44, is taken when s3(=[a3]) <= 0 (signed), and falls through when s3(=[a3]) > 0 (signed).
  The `bnel` branch at 0xda57d54 targets 0xda57a48, is taken when t1(?) != t6(?), and falls through when t1(?) == t6(?); its branch-likely delay slot `lwc1 $f4,924(s0)` at 0xda57d58 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda57d5c targets 0xda59f48 and is always taken.
  The `blez` branch at 0xda57d64 targets 0xda59f44, is taken when s3(=[a3]) <= 0 (signed), and falls through when s3(=[a3]) > 0 (signed).
  The `bne` branch at 0xda58010 targets 0xda57da0, is taken when t1(?) != t5(?), and falls through when t1(?) == t5(?).
  The `beq` branch at 0xda58018 targets 0xda59f48 and is always taken.
  The `blez` branch at 0xda58020 targets 0xda59f44, is taken when s3(=[a3]) <= 0 (signed), and falls through when s3(=[a3]) > 0 (signed).
  The `bne` branch at 0xda58230 targets 0xda58050, is taken when t1(?) != a1(?), and falls through when t1(?) == a1(?).
  The `beq` branch at 0xda58238 targets 0xda59f48 and is always taken.
  The `blez` branch at 0xda58240 targets 0xda59f44, is taken when s3(=[a3]) <= 0 (signed), and falls through when s3(=[a3]) > 0 (signed).
  The `bne` branch at 0xda583b4 targets 0xda58264, is taken when t1(?) != v1(?), and falls through when t1(?) == v1(?).
  The `beq` branch at 0xda583bc targets 0xda59f48 and is always taken.
  The `blez` branch at 0xda583c4 targets 0xda59f44, is taken when s3(=[a3]) <= 0 (signed), and falls through when s3(=[a3]) > 0 (signed).
  The `bne` branch at 0xda58404 targets 0xda58470, is taken when a3(=[a3+8]) < 0x2 (signed), and falls through when a3(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xda58428 targets 0xda5845c, is taken when v0(=a0+8) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(=a0+8) < v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda58454 targets 0xda58430, is taken when v0(?) < v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(?) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda584b4 targets 0xda5851c, is taken when a3(=[a3+8]) < 0x2 (signed), and falls through when a3(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xda584d4 targets 0xda58508, is taken when v0(=a0+8) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(=a0+8) < v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda58500 targets 0xda584dc, is taken when v0(?) < v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(?) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda58560 targets 0xda585c8, is taken when a3(=[a3+8]) < 0x2 (signed), and falls through when a3(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xda58580 targets 0xda585b4, is taken when v0(=a0+8) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(=a0+8) < v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda585ac targets 0xda58588, is taken when v0(?) < v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(?) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda5860c targets 0xda58674, is taken when a3(=[a3+8]) < 0x2 (signed), and falls through when a3(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xda5862c targets 0xda58660, is taken when v0(=a0+8) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(=a0+8) < v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda58658 targets 0xda58634, is taken when v0(?) < v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(?) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda586a8 targets 0xda583e8, is taken when t1(?) != a2(?), and falls through when t1(?) == a2(?).
  The `beq` branch at 0xda586b0 targets 0xda59f48 and is always taken.
  The `beq` branch at 0xda586bc targets 0xda58d44, is taken when v0(=[a3+8]) == s2(=0x1), and falls through when v0(=[a3+8]) != s2(=0x1).
  The `beq` branch at 0xda586c4 targets 0xda58ba0, is taken when v0(=[a3+8]) == v1(=0x2), and falls through when v0(=[a3+8]) != v1(=0x2).
  The `beq` branch at 0xda586cc targets 0xda58984, is taken when v0(=[a3+8]) == a0(=0x3), and falls through when v0(=[a3+8]) != a0(=0x3).
  The `bne` branch at 0xda586d4 targets 0xda58e70, is taken when v0(=[a3+8]) != a1(=0x4), and falls through when v0(=[a3+8]) == a1(=0x4).
  The `blez` branch at 0xda586dc targets 0xda59f44, is taken when s3(=[a3]) <= 0 (signed), and falls through when s3(=[a3]) > 0 (signed).
  The `bnel` branch at 0xda58974 targets 0xda58730, is taken when t1(?) != t6(?), and falls through when t1(?) == t6(?); its branch-likely delay slot `lwc1 $f10,924(s0)` at 0xda58978 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda5897c targets 0xda59f48 and is always taken.
  The `blez` branch at 0xda58984 targets 0xda59f44, is taken when s3(=[a3]) <= 0 (signed), and falls through when s3(=[a3]) > 0 (signed).
  The `bne` branch at 0xda58b90 targets 0xda589c0, is taken when t1(?) != t5(?), and falls through when t1(?) == t5(?).
  The `beq` branch at 0xda58b98 targets 0xda59f48 and is always taken.
  The `blez` branch at 0xda58ba0 targets 0xda59f44, is taken when s3(=[a3]) <= 0 (signed), and falls through when s3(=[a3]) > 0 (signed).
  The `bne` branch at 0xda58d34 targets 0xda58bd0, is taken when t1(?) != a1(?), and falls through when t1(?) == a1(?).
  The `beq` branch at 0xda58d3c targets 0xda59f48 and is always taken.
  The `blez` branch at 0xda58d44 targets 0xda59f44, is taken when s3(=[a3]) <= 0 (signed), and falls through when s3(=[a3]) > 0 (signed).
  The `bne` branch at 0xda58e60 targets 0xda58d68, is taken when t1(?) != v1(?), and falls through when t1(?) == v1(?).
  The `beq` branch at 0xda58e68 targets 0xda59f48 and is always taken.
  The `blez` branch at 0xda58e70 targets 0xda59f44, is taken when s3(=[a3]) <= 0 (signed), and falls through when s3(=[a3]) > 0 (signed).
  The `bne` branch at 0xda58eb0 targets 0xda58f1c, is taken when a3(=[a3+8]) < 0x2 (signed), and falls through when a3(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xda58ed4 targets 0xda58f08, is taken when v0(=a0+8) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(=a0+8) < v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda58f00 targets 0xda58edc, is taken when v0(?) < v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(?) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda58f60 targets 0xda58fc8, is taken when a3(=[a3+8]) < 0x2 (signed), and falls through when a3(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xda58f80 targets 0xda58fb4, is taken when v0(=a0+8) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(=a0+8) < v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda58fac targets 0xda58f88, is taken when v0(?) < v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(?) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda5900c targets 0xda59074, is taken when a3(=[a3+8]) < 0x2 (signed), and falls through when a3(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xda5902c targets 0xda59060, is taken when v0(=a0+8) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(=a0+8) < v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda59058 targets 0xda59034, is taken when v0(?) < v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(?) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda590a8 targets 0xda58e94, is taken when t1(?) != a2(?), and falls through when t1(?) == a2(?).
  The `beq` branch at 0xda590b0 targets 0xda59f48 and is always taken.
  The `beq` branch at 0xda590bc targets 0xda5955c, is taken when v0(=[a3+8]) == s2(=0x1), and falls through when v0(=[a3+8]) != s2(=0x1).
  The `beq` branch at 0xda590c4 targets 0xda59434, is taken when v0(=[a3+8]) == v1(=0x2), and falls through when v0(=[a3+8]) != v1(=0x2).
  The `beq` branch at 0xda590cc targets 0xda592b8, is taken when v0(=[a3+8]) == a0(=0x3), and falls through when v0(=[a3+8]) != a0(=0x3).
  The `bne` branch at 0xda590d4 targets 0xda59624, is taken when v0(=[a3+8]) != a1(=0x4), and falls through when v0(=[a3+8]) == a1(=0x4).
  The `blez` branch at 0xda590dc targets 0xda59f44, is taken when s3(=[a3]) <= 0 (signed), and falls through when s3(=[a3]) > 0 (signed).
  The `bnel` branch at 0xda592a8 targets 0xda5912c, is taken when t1(?) != t6(?), and falls through when t1(?) == t6(?); its branch-likely delay slot `lwc1 $f10,924(s0)` at 0xda592ac runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda592b0 targets 0xda59f48 and is always taken.
  The `blez` branch at 0xda592b8 targets 0xda59f44, is taken when s3(=[a3]) <= 0 (signed), and falls through when s3(=[a3]) > 0 (signed).
  The `bne` branch at 0xda59424 targets 0xda592f4, is taken when t1(?) != t5(?), and falls through when t1(?) == t5(?).
  The `beq` branch at 0xda5942c targets 0xda59f48 and is always taken.
  The `blez` branch at 0xda59434 targets 0xda59f44, is taken when s3(=[a3]) <= 0 (signed), and falls through when s3(=[a3]) > 0 (signed).
  The `bne` branch at 0xda5954c targets 0xda59464, is taken when t1(?) != a1(?), and falls through when t1(?) == a1(?).
  The `beq` branch at 0xda59554 targets 0xda59f48 and is always taken.
  The `blez` branch at 0xda5955c targets 0xda59f44, is taken when s3(=[a3]) <= 0 (signed), and falls through when s3(=[a3]) > 0 (signed).
  The `bne` branch at 0xda59614 targets 0xda59578, is taken when t1(?) != v0(?), and falls through when t1(?) == v0(?).
  The `beq` branch at 0xda5961c targets 0xda59f48 and is always taken.
  The `blez` branch at 0xda59624 targets 0xda59f44, is taken when s3(=[a3]) <= 0 (signed), and falls through when s3(=[a3]) > 0 (signed).
  The `bne` branch at 0xda59664 targets 0xda596d0, is taken when a3(=[a3+8]) < 0x2 (signed), and falls through when a3(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xda59688 targets 0xda596bc, is taken when v0(=a0+8) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(=a0+8) < v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda596b4 targets 0xda59690, is taken when v0(?) < v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(?) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda59714 targets 0xda5977c, is taken when a3(=[a3+8]) < 0x2 (signed), and falls through when a3(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xda59734 targets 0xda59768, is taken when v0(=a0+8) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(=a0+8) < v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda59760 targets 0xda5973c, is taken when v0(?) < v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(?) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda597b0 targets 0xda59648, is taken when t1(?) != a2(?), and falls through when t1(?) == a2(?).
  The `beq` branch at 0xda597b8 targets 0xda59f48 and is always taken.
  The `beq` branch at 0xda597c8 targets 0xda59b54, is taken when v0(=[a3+8]) == s2(=0x1), and falls through when v0(=[a3+8]) != s2(=0x1).
  The `beq` branch at 0xda597d0 targets 0xda599b8, is taken when v0(=[a3+8]) == v1(=0x2), and falls through when v0(=[a3+8]) != v1(=0x2).
  The `beq` branch at 0xda597d8 targets 0xda598e8, is taken when v0(=[a3+8]) == a0(=0x3), and falls through when v0(=[a3+8]) != a0(=0x3).
  The `bne` branch at 0xda597e0 targets 0xda59d20, is taken when v0(=[a3+8]) != a1(=0x4), and falls through when v0(=[a3+8]) == a1(=0x4).
  The `blez` branch at 0xda597e8 targets 0xda59f44, is taken when s3(=[a3]) <= 0 (signed), and falls through when s3(=[a3]) > 0 (signed).
  The `bne` branch at 0xda598d8 targets 0xda59824, is taken when t1(?) != v0(?), and falls through when t1(?) == v0(?).
  The `beq` branch at 0xda598e0 targets 0xda59f48 and is always taken.
  The `blez` branch at 0xda598e8 targets 0xda59f44, is taken when s3(=[a3]) <= 0 (signed), and falls through when s3(=[a3]) > 0 (signed).
  The `bne` branch at 0xda599a8 targets 0xda59918, is taken when t1(?) != v0(?), and falls through when t1(?) == v0(?).
  The `beq` branch at 0xda599b0 targets 0xda59f48 and is always taken.
  The `blez` branch at 0xda599b8 targets 0xda59f44, is taken when s3(=[a3]) <= 0 (signed), and falls through when s3(=[a3]) > 0 (signed).
  The `beql` branch at 0xda599c4 targets 0xda59a4c, is taken when (s3(=[a3]) & 0x1) == 0, and falls through when (s3(=[a3]) & 0x1) != 0; its branch-likely delay slot `lw t9,204(sp)` at 0xda599c8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda59a40 targets 0xda59f44, is taken when a0(=0x1) == s3(=[a3]), and falls through when a0(=0x1) != s3(=[a3]).
  The `bne` branch at 0xda59b44 targets 0xda59a7c, is taken when t1(?) != v0(?), and falls through when t1(?) == v0(?).
  The `beq` branch at 0xda59b4c targets 0xda59f48 and is always taken.
  The `blez` branch at 0xda59b54 targets 0xda59f44, is taken when s3(=[a3]) <= 0 (signed), and falls through when s3(=[a3]) > 0 (signed).
  The `beq` branch at 0xda59b60 targets 0xda59be8, is taken when (s3(=[a3]) & 0x3) == 0, and falls through when (s3(=[a3]) & 0x3) != 0.
  The `bne` branch at 0xda59bd8 targets 0xda59b8c, is taken when v0(?) != a0(?), and falls through when v0(?) == a0(?).
  The `beql` branch at 0xda59be0 targets 0xda59f48, is taken when a0(?) == s3(=[a3]), and falls through when a0(?) != s3(=[a3]); its branch-likely delay slot `lw ra,44(sp)` at 0xda59be4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda59d10 targets 0xda59c14, is taken when t1(?) != v0(?), and falls through when t1(?) == v0(?).
  The `beq` branch at 0xda59d18 targets 0xda59f48 and is always taken.
  The `blez` branch at 0xda59d20 targets 0xda59f44, is taken when s3(=[a3]) <= 0 (signed), and falls through when s3(=[a3]) > 0 (signed).
  The `bne` branch at 0xda59d60 targets 0xda59dcc, is taken when a3(=[a3+8]) < 0x2 (signed), and falls through when a3(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xda59d84 targets 0xda59db8, is taken when v0(=a0+8) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(=a0+8) < v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda59db0 targets 0xda59d8c, is taken when v0(?) < v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(?) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda59e00 targets 0xda59d44, is taken when t1(?) != a2(?), and falls through when t1(?) == a2(?).
  The `beq` branch at 0xda59e08 targets 0xda59f48 and is always taken.
  The `blez` branch at 0xda59e10 targets 0xda59f44, is taken when s3(=[a3]) <= 0 (signed), and falls through when s3(=[a3]) > 0 (signed).
  The `blez` branch at 0xda59e48 targets 0xda59f30, is taken when t8(=[a3+4]) <= 0 (signed), and falls through when t8(=[a3+4]) > 0 (signed).
  The `bne` branch at 0xda59e70 targets 0xda59edc, is taken when a3(=[a3+8]) < 0x2 (signed), and falls through when a3(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xda59e94 targets 0xda59ec8, is taken when v0(=a0+8) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(=a0+8) < v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda59ec0 targets 0xda59e9c, is taken when v0(?) < v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(?) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bnel` branch at 0xda59f28 targets 0xda59e58, is taken when a2(?) < t6(=[a3+4]) (signed), and falls through when a2(?) >= t6(=[a3+4]) (signed); its branch-likely delay slot `lwc1 $f0,0(a0)` at 0xda59f2c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda59f3c targets 0xda59e30, is taken when t1(?) != t5(?), and falls through when t1(?) == t5(?).
  The return at 0xda59f58 has v0 = one of ?, [a3+8].
  The instructions from 0xda597c0 to 0xda597c0 are not reached by any path from the entry, and their branches are not listed.

- `DoEvalCoord2` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda59f60 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda59f60-0xda5a808 (2216 bytes).
  It occupies 2216 bytes.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda59f9c, `lw` at 0xda59fac, `lw` at 0xda59fb4.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda59fa8, `sw` at 0xda59fb0, `sw` at 0xda59fbc.
  12 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0xda59fcc, `sw` at 0xda5a088, `sw` at 0xda5a10c.
  The `lw` at 0xda59fd4 loads 4 bytes from a0 (arg0 at entry) +0x700.
  9 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x714, including `lw` at 0xda59fe0, `lw` at 0xda59fe4, `lw` at 0xda5a094.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7028, including `lw` at 0xda5a00c, `lw` at 0xda5a180.
  15 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x0, including `lw` at 0xda5a078, `lw` at 0xda5a0fc, `lw` at 0xda5a154.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7024, including `lw` at 0xda5a0bc, `lw` at 0xda5a1d4.
  The `lw` at 0xda5a140 loads 4 bytes from a0 (arg0 at entry) +0x7010.
  The `lbu` at 0xda5a20c loads 1 byte from a0 (arg0 at entry) +0xc8d.
  The `lw` at 0xda5a234 loads 4 bytes from a0 (arg0 at entry) +0x700c.
  The `lw` at 0xda5a27c loads 4 bytes from a0 (arg0 at entry) +0x7008.
  The `lw` at 0xda5a2c4 loads 4 bytes from a0 (arg0 at entry) +0x7020.
  The `lw` at 0xda5a30c loads 4 bytes from a0 (arg0 at entry) +0x701c.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xdd0, including `lwc1` at 0xda5a330, `lwc1` at 0xda5a38c, `lwc1` at 0xda5a3e4.
  3 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x30, including `swc1` at 0xda5a344, `swc1` at 0xda5a39c, `swc1` at 0xda5a3f0.
  The `lw` at 0xda5a35c loads 4 bytes from a0 (arg0 at entry) +0x7018.
  2 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x2c, including `swc1` at 0xda5a388, `swc1` at 0xda5a3e0.
  The `lw` at 0xda5a3b4 loads 4 bytes from a0 (arg0 at entry) +0x7014.
  The `swc1` at 0xda5a3dc stores 4 bytes to a3 (arg3 at entry) +0x28.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x17ec, including `lw` at 0xda5a404, `lw` at 0xda5a42c, `lw` at 0xda5a454.
  The `lw` at 0xda5a40c loads 4 bytes from [a0+6124] +0x594.
  The `lw` at 0xda5a434 loads 4 bytes from [a0+6124] +0x5cc.
  The `lw` at 0xda5a45c loads 4 bytes from [a0+6124] +0x5fc.
  The `lw` at 0xda5a484 loads 4 bytes from [a0+6124] +0x67c.
  The `lw` at 0xda5a4b0 loads 4 bytes from [a0+6124] +0x50c.
  The `lw` at 0xda5a4d8 loads 4 bytes from [a0+6124] +0x52c.
  The `jalr` at 0xda5a02c calls DoDomain2WithDerivs [0xda5783c] with a0=sp-1432, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a0+28604.
  The `jalr` at 0xda5a04c calls ComputeFirstPartials [0xda55ac4] with a0=a3+52, a1=sp-1448, a2=sp-1464, a3=?.
  The `jalr` at 0xda5a070 calls ComputeNormal2 [0xda55b78] with a0=a0 at entry (arg0), a1=a3+20, a2=sp-1448, a3=sp-1464.
  The `jalr` at 0xda5a0d0 calls DoDomain2WithDerivs [0xda5783c] with a0=sp-1432, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a0+28564.
  The `jalr` at 0xda5a0f4 calls ComputeNormal2 [0xda55b78] with a0=a0 at entry (arg0), a1=a3+20, a2=sp-1476, a3=sp-1488.
  The `jalr` at 0xda5a14c calls DoDomain2 [0xda55c1c] with a0=sp-1432, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a0+28364.
  The `jalr` at 0xda5a198 calls DoDomain2 [0xda55c1c] with a0=sp-1432, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a0+28604.
  The `jalr` at 0xda5a1e8 calls DoDomain2 [0xda55c1c] with a0=sp-1432, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a0+28564.
  The `jalr` at 0xda5a248 calls DoDomain2 [0xda55c1c] with a0=sp-1432, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a0+28324.
  The `jalr` at 0xda5a290 calls DoDomain2 [0xda55c1c] with a0=sp-1432, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a0+28284.
  The `jalr` at 0xda5a2dc calls DoDomain2 [0xda55c1c] with a0=sp-1432, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a0+28524.
  The `jalr` at 0xda5a324 calls DoDomain2 [0xda55c1c] with a0=sp-1432, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a0+28484.
  The `jalr` at 0xda5a374 calls DoDomain2 [0xda55c1c] with a0=sp-1432, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a0+28444.
  The `jalr` at 0xda5a3c8 calls DoDomain2 [0xda55c1c] with a0=sp-1432, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a0+28404.
  The `jalr` at 0xda5a410 calls (unknown callee) with a0=a3+4, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a438 calls (unknown callee) with a0=a3+4, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a460 calls (unknown callee) with a0=a3+20, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a488 calls (unknown callee) with a0=a3+36, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a4b4 calls (unknown callee) with a0=a3+52, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a4dc calls (unknown callee) with a0=a3+52, a1=?, a2=?, a3=?.
  The `bne` branch at 0xda59fb8 targets 0xda59f9c, is taken when t9(?) != t0(=a0+1416), and falls through when t9(?) == t0(=a0+1416).
  The `bgezl` branch at 0xda59fdc targets 0xda5a120, is taken when t3(=([a0+1792] << 0x8)) >= 0 (signed), and falls through when t3(=([a0+1792] << 0x8)) < 0 (signed); its branch-likely delay slot `lw v0,1812(s1)` at 0xda59fe0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda59ff4 targets 0xda5a098, is taken when (v0(=[a0+1812]) & 0x100) == 0, and falls through when (v0(=[a0+1812]) & 0x100) != 0.
  The `beq` branch at 0xda5a090 targets 0xda5a20c and is always taken.
  The `beq` branch at 0xda5a098 targets 0xda5a20c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0xda5a114 targets 0xda5a20c and is always taken.
  The `beq` branch at 0xda5a12c targets 0xda5a168, is taken when (v0(=[a0+1812]) & 0x4) == 0, and falls through when (v0(=[a0+1812]) & 0x4) != 0.
  The `beq` branch at 0xda5a16c targets 0xda5a1c0, is taken when (v0(=[a0+1812]) & 0x100) == 0, and falls through when (v0(=[a0+1812]) & 0x100) != 0.
  The `beq` branch at 0xda5a1b8 targets 0xda5a20c and is always taken.
  The `beq` branch at 0xda5a1c0 targets 0xda5a20c, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0xda5a218 targets 0xda5a268, is taken when t0(=[a0+3213]:1) == 0, and falls through when t0(=[a0+3213]:1) != 0.
  The `beq` branch at 0xda5a220 targets 0xda5a2ac, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0xda5a260 targets 0xda5a2ac and is always taken.
  The `beq` branch at 0xda5a268 targets 0xda5a2ac, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0xda5a2b0 targets 0xda5a2f8, is taken when (v0(=[a0+1812]) & 0x40) == 0, and falls through when (v0(=[a0+1812]) & 0x40) != 0.
  The `beq` branch at 0xda5a2f0 targets 0xda5a3f4 and is always taken.
  The `beq` branch at 0xda5a2f8 targets 0xda5a348, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0xda5a340 targets 0xda5a3f4 and is always taken.
  The `beq` branch at 0xda5a348 targets 0xda5a3a0, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0xda5a398 targets 0xda5a3f4 and is always taken.
  The `beq` branch at 0xda5a3a0 targets 0xda5a3f4, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beql` branch at 0xda5a3fc targets 0xda5a424, is taken when (v0(=[a3]) & 0x1) == 0, and falls through when (v0(=[a3]) & 0x1) != 0; its branch-likely delay slot `andi t7,v0,0x2` at 0xda5a400 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda5a424 targets 0xda5a44c, is taken when t7(?) == 0, and falls through when t7(?) != 0; its branch-likely delay slot `andi t1,v0,0x4` at 0xda5a428 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda5a44c targets 0xda5a474, is taken when t1(?) == 0, and falls through when t1(?) != 0; its branch-likely delay slot `andi t3,v0,0x8` at 0xda5a450 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda5a474 targets 0xda5a498, is taken when t3(?) == 0, and falls through when t3(?) != 0; its branch-likely delay slot `lw t5,1540(sp)` at 0xda5a478 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda5a4a0 targets 0xda5a4c8, is taken when t5(?) != at(=0x3), and falls through when t5(?) == at(=0x3); its branch-likely delay slot `addiu at,zero,4` at 0xda5a4a4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda5a4bc targets 0xda5a4e8 and is always taken.
  The `bnel` branch at 0xda5a4c8 targets 0xda5a4ec, is taken when t6(?) != at(=0x4), and falls through when t6(?) == at(=0x4); its branch-likely delay slot `lw ra,52(sp)` at 0xda5a4cc runs only when taken and is annulled on fall-through.
  The return at 0xda5a4f4 has v0 = one of ?, ret(?).
  The instructions from 0xda5a11c to 0xda5a11c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda5a4c4 to 0xda5a4c4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda5a4fc to 0xda5a804 are not reached by any path from the entry, and their branches are not listed.

- `sendChange` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda5a808 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda5a808-0xda5b430 (3112 bytes).
  It occupies 3112 bytes.
  The `lw` at 0xda5a830 loads 4 bytes from a0 (arg0 at entry) +0x1b0.
  The `lw` at 0xda5a840 loads 4 bytes from a0 (arg0 at entry) +0x1b4.
  The `lw` at 0xda5a84c loads 4 bytes from a0 (arg0 at entry) +0x1b8.
  The `lw` at 0xda5a854 loads 4 bytes from a0 (arg0 at entry) +0x1bc.
  6 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0xda5a85c, `lw` at 0xda5a884, `lw` at 0xda5a8ac.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x17ec, including `lw` at 0xda5a86c, `lw` at 0xda5a894, `lw` at 0xda5a8bc.
  The `lw` at 0xda5a874 loads 4 bytes from [a0+6124] +0x594.
  The `lw` at 0xda5a89c loads 4 bytes from [a0+6124] +0x67c.
  The `lw` at 0xda5a8c4 loads 4 bytes from [a0+6124] +0x5fc.
  The `lw` at 0xda5a8ec loads 4 bytes from [a0+6124] +0x50c.
  The `lw` at 0xda5a914 loads 4 bytes from [a0+6124] +0x52c.
  The `lw` at 0xda5a934 loads 4 bytes from a0 (arg0 at entry) +0x700.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2e38, including `lw` at 0xda5a944, `lw` at 0xda5a984.
  The `sw` at 0xda5a968 stores 4 bytes to a0 (arg0 at entry) +0x1b0.
  The `sw` at 0xda5a970 stores 4 bytes to a0 (arg0 at entry) +0x1b4.
  The `sw` at 0xda5a978 stores 4 bytes to a0 (arg0 at entry) +0x1b8.
  The `sw` at 0xda5a980 stores 4 bytes to a0 (arg0 at entry) +0x1bc.
  The `jalr` at 0xda5a878 calls (unknown callee) with a0=a1+4, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda5a8a0 calls (unknown callee) with a0=a1+36, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a8c8 calls (unknown callee) with a0=a1+20, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a8f0 calls (unknown callee) with a0=a1+52, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a918 calls (unknown callee) with a0=a1+52, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a94c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a988 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beql` branch at 0xda5a864 targets 0xda5a88c, is taken when (v0(=[a1]) & 0x1) == 0, and falls through when (v0(=[a1]) & 0x1) != 0; its branch-likely delay slot `andi t3,v0,0x8` at 0xda5a868 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda5a88c targets 0xda5a8b4, is taken when t3(?) == 0, and falls through when t3(?) != 0; its branch-likely delay slot `andi t5,v0,0x4` at 0xda5a890 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda5a8b4 targets 0xda5a8dc, is taken when t5(?) == 0, and falls through when t5(?) != 0; its branch-likely delay slot `andi t7,v0,0x10` at 0xda5a8b8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda5a8dc targets 0xda5a904, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `beq` branch at 0xda5a8fc targets 0xda5a928 and is always taken.
  The `beql` branch at 0xda5a904 targets 0xda5a92c, is taken when t0(?) == 0, and falls through when t0(?) != 0; its branch-likely delay slot `andi t2,v0,0x1` at 0xda5a908 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda5a92c targets 0xda5a998, is taken when t2(?) == 0, and falls through when t2(?) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xda5a930 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda5a93c targets 0xda5a998, is taken when (t3(=[a0+1792]) & 0x80) == 0, and falls through when (t3(=[a0+1792]) & 0x80) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xda5a940 runs only when taken and is annulled on fall-through.
  The return at 0xda5a9a0 has v0 = one of [a1], ret(?).
  The instructions from 0xda5a9a8 to 0xda5b42c are not reached by any path from the entry, and their branches are not listed.

- `ImageChainAddOpTextureColor` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda723c0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda723c0-0xda7245c (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xda72404 loads 4 bytes from ret(ImageChainOpCreate) +0x8.
  The `sw` at 0xda72414 stores 4 bytes to ret(ImageChainOpCreate) +0x8.
  The `sw` at 0xda72424 stores 4 bytes to ret(ImageChainOpCreate) +0x0.
  The `sw` at 0xda72428 stores 4 bytes to ret(ImageChainOpCreate) +0x4.
  The `sw` at 0xda7242c stores 4 bytes to ret(ImageChainOpCreate) +0xc.
  The `jalr` at 0xda723e8 calls ImageChainOpCreate [0xda70648] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda7243c calls ImageChainAddOp [0xda70b14] with a0=a0 at entry (arg0), a1=ret(ImageChainOpCreate), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `bne` branch at 0xda723f4 targets 0xda72404, is taken when v0(=ret(ImageChainOpCreate)) != 0, and falls through when v0(=ret(ImageChainOpCreate)) == 0.
  The `beq` branch at 0xda723fc targets 0xda7244c and is always taken.
  The return at 0xda72454 has v0 = one of 0x0, 0x1.

- `RenderFunc_TextureColor` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda7245c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda7245c-0xda724a8 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xda72484 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0xda72488 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `jalr` at 0xda7248c calls __glOdysseyImageMovePixelsTexture [0xdaa043c] with a0=[a0+72], a1=[a0+68], a2=a1 at entry (arg1), a3=0x1.
  The return at 0xda724a0 has v0 = 0x1.

- `LoadTextureFilter` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda7c7b4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda7c7b4-0xda7c8d4 (288 bytes).
  It occupies 288 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x14, including `lw` at 0xda7c7c4, `lw` at 0xda7c820, `lw` at 0xda7c880.
  The `lw` at 0xda7c7cc loads 4 bytes from abs 0x1010.
  15 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda7c7ec, `lw` at 0xda7c7fc, `lw` at 0xda7c804.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda7c7f8, `sw` at 0xda7c800, `sw` at 0xda7c80c.
  The `sw` at 0xda7c81c stores 4 bytes to [0x1010] +0x8b04.
  The `sw` at 0xda7c83c stores 4 bytes to [0x1010] +0x8c0c.
  The `sw` at 0xda7c848 stores 4 bytes to [0x1010] +0x8c10.
  The `sw` at 0xda7c850 stores 4 bytes to [0x1010] +0x8c14.
  The `sw` at 0xda7c858 stores 4 bytes to [0x1010] +0x8c18.
  The `sw` at 0xda7c860 stores 4 bytes to [0x1010] +0x8c1c.
  The `sw` at 0xda7c868 stores 4 bytes to [0x1010] +0x8c20.
  The `sw` at 0xda7c870 stores 4 bytes to [0x1010] +0x8c24.
  The `sw` at 0xda7c878 stores 4 bytes to [0x1010] +0x8c28.
  The `sw` at 0xda7c87c stores 4 bytes to [0x1010] +0x8c08.
  The `sw` at 0xda7c89c stores 4 bytes to [0x1010] +0x8c8c.
  The `sw` at 0xda7c8a4 stores 4 bytes to [0x1010] +0x8c90.
  The `sw` at 0xda7c8ac stores 4 bytes to [0x1010] +0x8c94.
  The `lw` at 0xda7c8b0 loads 4 bytes from [0x1010] +0x168d0.
  The `sw` at 0xda7c8c0 stores 4 bytes to [0x1010] +0x168d0.
  The `sw` at 0xda7c8c4 stores 4 bytes to abs 0x1018.
  The `lw` at 0xda7c8c8 loads 4 bytes from [0x1010] +0x2d44.
  The `sw` at 0xda7c8d0 stores 4 bytes to [0x1010] +0x2d44.
  The `bne` branch at 0xda7c808 targets 0xda7c7ec, is taken when t8(?) != t1(?), and falls through when t8(?) == t1(?).
  The return at 0xda7c8cc has v0 = [0x1010].

- `ImageChainAddOpPixelTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda81428 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda81428-0xda814bc (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0xda8146c loads 4 bytes from ret(ImageChainOpCreate) +0x8.
  The `sw` at 0xda81474 stores 4 bytes to ret(ImageChainOpCreate) +0xc.
  The `sw` at 0xda81488 stores 4 bytes to ret(ImageChainOpCreate) +0x0.
  The `sw` at 0xda8148c stores 4 bytes to ret(ImageChainOpCreate) +0x8.
  The `sw` at 0xda81490 stores 4 bytes to ret(ImageChainOpCreate) +0x4.
  The `lw` at 0xda81498 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `jalr` at 0xda81448 calls ImageChainOpCreate [0xda70648] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda8149c calls ImageChainAddOp [0xda70b14] with a0=a0 at entry (arg0), a1=ret(ImageChainOpCreate), a2=[a0+8], a3=0x0.
  The `bne` branch at 0xda81458 targets 0xda81468, is taken when v0(=ret(ImageChainOpCreate)) != 0, and falls through when v0(=ret(ImageChainOpCreate)) == 0.
  The `beq` branch at 0xda81460 targets 0xda814ac and is always taken.
  The return at 0xda814b4 has v0 = one of 0x0, 0x1.

- `__glOdySpanEyeZ24ToWindowZ` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda85c6c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda85c6c-0xda85e28 (444 bytes).
  It occupies 444 bytes.
  The `lw` at 0xda85ca0 loads 4 bytes from a1 (arg1 at entry) +0x1f4.
  The `lw` at 0xda85ca4 loads 4 bytes from a1 (arg1 at entry) +0xa8.
  The `ldc1` at 0xda85ca8 loads 8 bytes from a1 (arg1 at entry) +0x200.
  The `ldc1` at 0xda85cac loads 8 bytes from [a1+500] +0x30.
  The `ldc1` at 0xda85cb0 loads 8 bytes from [a1+500] +0x40.
  The `ldc1` at 0xda85cc8 loads 8 bytes from [a1+500] +0x38.
  The `ldc1` at 0xda85ccc loads 8 bytes from [a1+500] +0x48.
  The `ldc1` at 0xda85cd4 loads 8 bytes from [a1+500] +0x0.
  The `lbu` at 0xda85d0c loads 1 byte from ?.
  The `lw` at 0xda85d34 loads 4 bytes from ?.
  3 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda85dc0, `swc1` at 0xda85de8, `swc1` at 0xda85dfc.
  The `blez` branch at 0xda85ce4 targets 0xda85e08, is taken when v0(=[a1+168]) <= 0 (signed), and falls through when v0(=[a1+168]) > 0 (signed).
  The `bc1tl` branch at 0xda85d84 targets 0xda85df8, is taken when f16 == f2 (c.eq.d at 0xda85d7c), and falls through when not (f16 == f2 (c.eq.d at 0xda85d7c)); its branch-likely delay slot `mtc1 at,$f8` at 0xda85d88 runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xda85dac targets 0xda85dc8, is taken when not (f12 < f10 (c.lt.s at 0xda85da4)), and falls through when f12 < f10 (c.lt.s at 0xda85da4); its branch-likely delay slot `cvt.d.s $f2,$f12` at 0xda85db0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda85dbc targets 0xda85e00 and is always taken.
  The `bc1fl` branch at 0xda85dd0 targets 0xda85de4, is taken when not (f14 < f2 (c.lt.d at 0xda85dc8)), and falls through when f14 < f2 (c.lt.d at 0xda85dc8); its branch-likely delay slot `mov.d $f0,$f2` at 0xda85dd4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda85dd8 targets 0xda85de4 and is always taken.
  The `beq` branch at 0xda85dec targets 0xda85e00 and is always taken.
  The `bne` branch at 0xda85e00 targets 0xda85cf8, is taken when t1(?) != v0(=[a1+168]), and falls through when t1(?) == v0(=[a1+168]).
  The return at 0xda85e20 has v0 = [a1+168].
  The instructions from 0xda85dc4 to 0xda85dc4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda85de0 to 0xda85de0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda85df4 to 0xda85df4 are not reached by any path from the entry, and their branches are not listed.

- `__glOdySpanEyeZ16ToWindowZ` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda85e28 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda85e28-0xda85fe4 (444 bytes).
  It occupies 444 bytes.
  The `lw` at 0xda85e5c loads 4 bytes from a1 (arg1 at entry) +0x1f4.
  The `lw` at 0xda85e60 loads 4 bytes from a1 (arg1 at entry) +0xa8.
  The `ldc1` at 0xda85e64 loads 8 bytes from a1 (arg1 at entry) +0x200.
  The `ldc1` at 0xda85e68 loads 8 bytes from [a1+500] +0x30.
  The `ldc1` at 0xda85e6c loads 8 bytes from [a1+500] +0x40.
  The `ldc1` at 0xda85e84 loads 8 bytes from [a1+500] +0x38.
  The `ldc1` at 0xda85e88 loads 8 bytes from [a1+500] +0x48.
  The `ldc1` at 0xda85e90 loads 8 bytes from [a1+500] +0x0.
  2 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0xda85ec8, `lhu` at 0xda85eec.
  3 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda85f7c, `swc1` at 0xda85fa4, `swc1` at 0xda85fb8.
  The `blez` branch at 0xda85ea0 targets 0xda85fc4, is taken when v0(=[a1+168]) <= 0 (signed), and falls through when v0(=[a1+168]) > 0 (signed).
  The `bc1tl` branch at 0xda85f40 targets 0xda85fb4, is taken when f16 == f2 (c.eq.d at 0xda85f38), and falls through when not (f16 == f2 (c.eq.d at 0xda85f38)); its branch-likely delay slot `mtc1 at,$f8` at 0xda85f44 runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xda85f68 targets 0xda85f84, is taken when not (f12 < f10 (c.lt.s at 0xda85f60)), and falls through when f12 < f10 (c.lt.s at 0xda85f60); its branch-likely delay slot `cvt.d.s $f2,$f12` at 0xda85f6c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda85f78 targets 0xda85fbc and is always taken.
  The `bc1fl` branch at 0xda85f8c targets 0xda85fa0, is taken when not (f14 < f2 (c.lt.d at 0xda85f84)), and falls through when f14 < f2 (c.lt.d at 0xda85f84); its branch-likely delay slot `mov.d $f0,$f2` at 0xda85f90 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda85f94 targets 0xda85fa0 and is always taken.
  The `beq` branch at 0xda85fa8 targets 0xda85fbc and is always taken.
  The `bne` branch at 0xda85fbc targets 0xda85eb4, is taken when t1(?) != v0(=[a1+168]), and falls through when t1(?) == v0(=[a1+168]).
  The return at 0xda85fdc has v0 = [a1+168].
  The instructions from 0xda85f80 to 0xda85f80 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda85f9c to 0xda85f9c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda85fb0 to 0xda85fb0 are not reached by any path from the entry, and their branches are not listed.

- `__glOdySpanPackPioStencil` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda87e44 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda87e44-0xda87eb8 (116 bytes).
  It occupies 116 bytes.
  The `lwc1` at 0xda87e5c loads 4 bytes from a1 (arg1 at entry) +0x13c.
  The `lwc1` at 0xda87e6c loads 4 bytes from a1 (arg1 at entry) +0x14c.
  2 such `swc1` accesses store 4 bytes to a1 (arg1 at entry) +0x13c, including `swc1` at 0xda87e78, `swc1` at 0xda87e9c.
  2 such `swc1` accesses store 4 bytes to a1 (arg1 at entry) +0x14c, including `swc1` at 0xda87e7c, `swc1` at 0xda87ea4.
  The `jalr` at 0xda87e88 calls __glOdySpanShiftOffsetIndex [0xda87750] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda87eb0 has v0 = ret(__glOdySpanShiftOffsetIndex).

- `__glOdysseyImageMovePixelsDMAtoHost` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda9fa78 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda9fa78-0xdaa043c (2500 bytes).
  It occupies 2500 bytes.
  The `lw` at 0xda9fa8c loads 4 bytes from abs 0x1010.
  The `lwc1` at 0xda9fae8 loads 4 bytes from a2 (arg2 at entry) +0x14.
  The `lwc1` at 0xda9faec loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `lwc1` at 0xda9fb0c loads 4 bytes from a2 (arg2 at entry) +0x1c.
  The `lwc1` at 0xda9fb14 loads 4 bytes from a2 (arg2 at entry) +0x18.
  The `lwc1` at 0xda9fb2c loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0xda9fb44 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lwc1` at 0xda9fb58 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lwc1` at 0xda9fb6c loads 4 bytes from a2 (arg2 at entry) +0xc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x24, including `lw` at 0xda9fb80, `lw` at 0xda9fd18.
  3 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x0, including `lbu` at 0xda9fb90, `lbu` at 0xda9feb4, `lbu` at 0xda9fef4.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0xda9fb9c, `lw` at 0xda9fcd8, `lw` at 0xda9fcf8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0xda9fba0, `lw` at 0xda9fc44, `lw` at 0xda9fc54.
  2 such `lbu` accesses load 1 byte from a1 (arg1 at entry) +0x9, including `lbu` at 0xda9fbe4, `lbu` at 0xdaa0038.
  The `lw` at 0xda9fc04 loads 4 bytes from [0x1010] +0x4d4.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x28, including `lw` at 0xda9fc6c, `lw` at 0xda9fc78.
  The `lw` at 0xda9fc7c loads 4 bytes from a1 (arg1 at entry) +0x2c.
  The `lw` at 0xda9fcb8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda9fcbc loads 4 bytes from a1 (arg1 at entry) +0x4.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x18, including `lw` at 0xda9fd34, `lw` at 0xda9fd3c, `lw` at 0xda9fdbc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0xda9fd48, `lw` at 0xda9fd54.
  The `sw` at 0xda9fd4c stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `lw` at 0xda9ff04 loads 4 bytes from [0x1010] +0x488.
  The `lw` at 0xda9ff58 loads 4 bytes from a0 (arg0 at entry) +0x28.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x10, including `lw` at 0xda9ffc8, `lw` at 0xdaa0024, `lw` at 0xdaa03a4.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xc, including `lw` at 0xda9ffcc, `lw` at 0xdaa03a0, `lw` at 0xdaa0400.
  The `lw` at 0xdaa003c loads 4 bytes from (([a1+16] << 0x2) + sp-132) +0x0.
  The `lw` at 0xdaa0040 loads 4 bytes from a1 (arg1 at entry) +0x14.
  The `lw` at 0xdaa00dc loads 4 bytes from a1 (arg1 at entry) +0x18.
  The `lw` at 0xdaa01e0 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `lw` at 0xdaa0360 loads 4 bytes from [0x1010] +0x7a90.
  The `lw` at 0xdaa037c loads 4 bytes from [0x1010] +0x21dd8.
  The `lw` at 0xdaa0388 loads 4 bytes from [0x1010] +0x718.
  The `jalr` at 0xda9fab8 calls memset with a0=sp-40, a1=0x0, a2=0x20, a3=a3 at entry (arg3).
  The `jalr` at 0xda9fad4 calls memset with a0=sp-152, a1=0x0, a2=0x14, a3=?.
  The `jalr` at 0xda9fba8 calls __glOdysseyImageCalcXferReadParams [0xdaa3354] with a0=[a0+8], a1=[a0+12], a2=a1 at entry (arg1), a3=sp-152.
  The `jalr` at 0xda9fbd4 calls __glSetError [0xdb1ac34] with a0=0x501, a1=?, a2=?, a3=?.
  The `jalr` at 0xda9fc98 calls ImageCalcDmaFieldOffsets [0xdaa2b64] with a0=[a1+40], a1=[a1+44], a2=one of 0x0, 0x1, a3=?.
  The `jalr` at 0xda9fce4 calls __glSpecElementsPerGroup [0xdaf8340] with a0=[a0+8], a1=[a0+12], a2=?, a3=?.
  The `jalr` at 0xda9fd00 calls __glSpecBytesPerElement [0xdaf8444] with a0=[a0+12], a1=?, a2=?, a3=?.
  The `jalr` at 0xda9fda8 calls ceilf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda9ffe8 calls __glOdysseyOpenPMObjReference [0xdaacf68] with a0=[0x1010], a1=[a1+12], a2=[a1+16], a3=[a1+16].
  The `jalr` at 0xdaa0014 calls __glSetError [0xdb1ac34] with a0=0x505, a1=?, a2=?, a3=?.
  The `jalr` at 0xdaa02f0 calls ImageToDmaHostPixelSize [0xdaa3330] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xdaa03c4 calls __glOdysseyReadFromPMObj [0xdaacb84] with a0=[0x1010], a1=[a1+12], a2=[a1+16], a3=?.
  The `jalr` at 0xdaa03e4 calls __glSetError [0xdb1ac34] with a0=0x505, a1=?, a2=?, a3=?.
  The `jalr` at 0xdaa0404 calls __glOdysseyClosePMObjReference [0xdaad5a0] with a0=[0x1010], a1=[a1+12], a2=[a1+16], a3=[a1+16].
  The `jalr` at 0xdaa0420 calls __glSetError [0xdb1ac34] with a0=0x505, a1=?, a2=?, a3=?.
  The `bne` branch at 0xda9fbc4 targets 0xda9fbe4, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beq` branch at 0xda9fbdc targets 0xdaa042c and is always taken.
  The `beql` branch at 0xda9fbf0 targets 0xda9fc54, is taken when t9(=[a1+9]:1) == 0, and falls through when t9(=[a1+9]:1) != 0; its branch-likely delay slot `sb t8,227(sp)` at 0xda9fbf4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda9fc10 targets 0xda9fc28, is taken when v0(=[[0x1010]+1236]) == at(=0x405), and falls through when v0(=[[0x1010]+1236]) != at(=0x405).
  The `beq` branch at 0xda9fc18 targets 0xda9fc28, is taken when v0(=[[0x1010]+1236]) == at(=0x402), and falls through when v0(=[[0x1010]+1236]) != at(=0x402).
  The `bnel` branch at 0xda9fc20 targets 0xda9fc30, is taken when v0(=[[0x1010]+1236]) != at(=0x403), and falls through when v0(=[[0x1010]+1236]) == at(=0x403); its branch-likely delay slot `addiu at,zero,1031` at 0xda9fc24 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda9fc30 targets 0xda9fc48, is taken when v0(=[[0x1010]+1236]) == at(=0x407), and falls through when v0(=[[0x1010]+1236]) != at(=0x407).
  The `beq` branch at 0xda9fc38 targets 0xda9fc48, is taken when v0(=[[0x1010]+1236]) == at(=0x401), and falls through when v0(=[[0x1010]+1236]) != at(=0x401).
  The `bnel` branch at 0xda9fc40 targets 0xda9fc58, is taken when v0(=[[0x1010]+1236]) != at(=0x403), and falls through when v0(=[[0x1010]+1236]) == at(=0x403); its branch-likely delay slot `lw v0,8(t0)` at 0xda9fc44 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda9fc48 targets 0xda9fc54 and is always taken.
  The `bnel` branch at 0xda9fc68 targets 0xda9fc7c, is taken when v1(?) < 0x1 (unsigned), and falls through when v1(?) >= 0x1 (unsigned); its branch-likely delay slot `lw a0,40(t5)` at 0xda9fc6c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda9fcb0 targets 0xdaa042c, is taken when v0(=ret(ImageCalcDmaFieldOffsets)) == 0, and falls through when v0(=ret(ImageCalcDmaFieldOffsets)) != 0.
  The `beq` branch at 0xda9fcc4 targets 0xda9fcd0, is taken when t7(=[a0+4]) == t8(=[a1+4]), and falls through when t7(=[a0+4]) != t8(=[a1+4]).
  The `bnel` branch at 0xda9fd30 targets 0xda9fd40, is taken when t9(=[a0+36]) != at(=0x1), and falls through when t9(=[a0+36]) == at(=0x1); its branch-likely delay slot `lw v0,24(t0)` at 0xda9fd34 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda9fd44 targets 0xda9fd58, is taken when v0(=[a0+24]) >= a1(?) (unsigned), and falls through when v0(=[a0+24]) < a1(?) (unsigned); its branch-likely delay slot `lw t6,16(t0)` at 0xda9fd48 runs only when taken and is annulled on fall-through.
  The `bgez` branch at 0xda9fd68 targets 0xda9fd80, is taken when t7(?) >= 0 (signed), and falls through when t7(?) < 0 (signed).
  The `bgez` branch at 0xda9fd80 targets 0xda9fd98, is taken when v0(?) >= 0 (signed), and falls through when v0(?) < 0 (signed).
  The `bgez` branch at 0xda9fdd0 targets 0xda9fde8, is taken when t8(=[a0+24]) >= 0 (signed), and falls through when t8(=[a0+24]) < 0 (signed).
  The `beq` branch at 0xda9fe14 targets 0xda9fe60, is taken when (t4(?) & 0x78) == 0, and falls through when (t4(?) & 0x78) != 0.
  The `bne` branch at 0xda9fe40 targets 0xda9fe58, is taken when (t4(?) & 0x78) != 0, and falls through when (t4(?) & 0x78) == 0.
  The `beq` branch at 0xda9fe50 targets 0xda9fe70 and is always taken.
  The `beq` branch at 0xda9fe58 targets 0xda9fe70 and is always taken.
  The `bltz` branch at 0xda9fe68 targets 0xda9fe58, is taken when t4(?) < 0 (signed), and falls through when t4(?) >= 0 (signed).
  The `beq` branch at 0xda9fe78 targets 0xda9fe88, is taken when t3(?) >= t2(?) (signed), and falls through when t3(?) < t2(?) (signed).
  The `beq` branch at 0xda9fe80 targets 0xda9fe88 and is always taken.
  The `beq` branch at 0xda9fe8c targets 0xda9fe9c, is taken when t2(?) >= t3(?) (signed), and falls through when t2(?) < t3(?) (signed).
  The `beq` branch at 0xda9fe94 targets 0xda9fe9c and is always taken.
  The `beql` branch at 0xda9feb0 targets 0xda9fef8, is taken when t4(?) >= t7(?) (unsigned), and falls through when t4(?) < t7(?) (unsigned); its branch-likely delay slot `lbu t9,0(t0)` at 0xda9feb4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda9febc targets 0xda9fecc, is taken when t3(?) >= t2(?) (signed), and falls through when t3(?) < t2(?) (signed).
  The `beq` branch at 0xda9fec4 targets 0xda9fecc and is always taken.
  The `beq` branch at 0xda9fed0 targets 0xda9fee0, is taken when t2(?) >= t3(?) (signed), and falls through when t2(?) < t3(?) (signed).
  The `beq` branch at 0xda9fed8 targets 0xda9fee0 and is always taken.
  The `bne` branch at 0xda9fefc targets 0xda9ff30, is taken when t9(=[a0]:1) != 0, and falls through when t9(=[a0]:1) == 0.
  The `bne` branch at 0xda9ff14 targets 0xda9ff20, is taken when v1(=[[0x1010]+1160]) != 0, and falls through when v1(=[[0x1010]+1160]) == 0.
  The `beq` branch at 0xda9ff24 targets 0xda9ff30, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xda9ff30 targets 0xda9ff40, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xda9ff38 targets 0xda9ff40 and is always taken.
  The `beq` branch at 0xda9ff44 targets 0xda9ff54, is taken when t2(?) >= t3(?) (signed), and falls through when t2(?) < t3(?) (signed).
  The `beq` branch at 0xda9ff4c targets 0xda9ff54 and is always taken.
  The `beq` branch at 0xda9ff80 targets 0xda9ff90, is taken when a2(?) >= a1(?) (signed), and falls through when a2(?) < a1(?) (signed).
  The `beq` branch at 0xda9ff88 targets 0xda9ff90 and is always taken.
  The `beq` branch at 0xda9ff94 targets 0xda9ffa4, is taken when t3(?) >= t2(?) (signed), and falls through when t3(?) < t2(?) (signed).
  The `beq` branch at 0xda9ff9c targets 0xda9ffa4 and is always taken.
  The `bne` branch at 0xdaa0004 targets 0xdaa0024, is taken when (v0(=ret(__glOdysseyOpenPMObjReference)) & 0xff) != 0, and falls through when (v0(=ret(__glOdysseyOpenPMObjReference)) & 0xff) == 0.
  The `beq` branch at 0xdaa001c targets 0xdaa042c and is always taken.
  The `beq` branch at 0xdaa0048 targets 0xdaa0064, is taken when t8(=[a1+9]:1) == 0, and falls through when t8(=[a1+9]:1) != 0.
  The `beq` branch at 0xdaa005c targets 0xdaa006c and is always taken.
  The `beq` branch at 0xdaa00a8 targets 0xdaa00b8, is taken when a1(?) >= a2(?) (signed), and falls through when a1(?) < a2(?) (signed).
  The `beq` branch at 0xdaa00b0 targets 0xdaa00bc and is always taken.
  The `beql` branch at 0xdaa00c8 targets 0xdaa00dc, is taken when a3(?) >= t0(?) (signed), and falls through when a3(?) < t0(?) (signed); its branch-likely delay slot `sh t0,254(sp)` at 0xdaa00cc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdaa00d0 targets 0xdaa00dc and is always taken.
  The `bnel` branch at 0xdaa00e4 targets 0xdaa0104, is taken when v0(=[a1+24]) != at(=0x1000), and falls through when v0(=[a1+24]) == at(=0x1000); its branch-likely delay slot `lhu t6,258(sp)` at 0xdaa00e8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdaa00f8 targets 0xdaa0114 and is always taken.
  The `beql` branch at 0xdaa0118 targets 0xdaa012c, is taken when a2(?) >= a1(?) (signed), and falls through when a2(?) < a1(?) (signed); its branch-likely delay slot `or v0,a2,zero` at 0xdaa011c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdaa0120 targets 0xdaa012c and is always taken.
  The `beq` branch at 0xdaa0130 targets 0xdaa0140, is taken when a1(?) >= a2(?) (signed), and falls through when a1(?) < a2(?) (signed).
  The `beq` branch at 0xdaa0138 targets 0xdaa0140 and is always taken.
  The `beq` branch at 0xdaa0148 targets 0xdaa0158, is taken when t0(?) >= a3(?) (signed), and falls through when t0(?) < a3(?) (signed).
  The `beq` branch at 0xdaa0150 targets 0xdaa015c and is always taken.
  The `beq` branch at 0xdaa0160 targets 0xdaa0170, is taken when a3(?) >= t0(?) (signed), and falls through when a3(?) < t0(?) (signed).
  The `beq` branch at 0xdaa0168 targets 0xdaa0170 and is always taken.
  The `beq` branch at 0xdaa0250 targets 0xdaa0260, is taken when t3(?) >= t2(?) (signed), and falls through when t3(?) < t2(?) (signed).
  The `beq` branch at 0xdaa0258 targets 0xdaa0260 and is always taken.
  The `beq` branch at 0xdaa0264 targets 0xdaa0274, is taken when t2(?) >= t3(?) (signed), and falls through when t2(?) < t3(?) (signed).
  The `beq` branch at 0xdaa026c targets 0xdaa0274 and is always taken.
  The `beq` branch at 0xdaa0290 targets 0xdaa02a0, is taken when t3(?) >= t2(?) (signed), and falls through when t3(?) < t2(?) (signed).
  The `beq` branch at 0xdaa0298 targets 0xdaa02a0 and is always taken.
  The `beq` branch at 0xdaa02a4 targets 0xdaa02b4, is taken when t2(?) >= t3(?) (signed), and falls through when t2(?) < t3(?) (signed).
  The `beq` branch at 0xdaa02ac targets 0xdaa02b4 and is always taken.
  The `beq` branch at 0xdaa0370 targets 0xdaa0398, is taken when (t6(=[[0x1010]+31376]) & 0x400) == 0, and falls through when (t6(=[[0x1010]+31376]) & 0x400) != 0.
  The `beql` branch at 0xdaa0380 targets 0xdaa039c, is taken when t8(=[[0x1010]+138712]) == 0, and falls through when t8(=[[0x1010]+138712]) != 0; its branch-likely delay slot `addiu v1,zero,2` at 0xdaa0384 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xdaa0390 targets 0xdaa03a0, is taken when (t7(=[[0x1010]+1816]) & 0x4) != 0, and falls through when (t7(=[[0x1010]+1816]) & 0x4) == 0; its branch-likely delay slot `lw t9,80(sp)` at 0xdaa0394 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdaa03d4 targets 0xdaa03f4, is taken when (v0(=ret(__glOdysseyReadFromPMObj)) & 0xff) != 0, and falls through when (v0(=ret(__glOdysseyReadFromPMObj)) & 0xff) == 0.
  The `beq` branch at 0xdaa03ec targets 0xdaa042c and is always taken.
  The `bne` branch at 0xdaa0410 targets 0xdaa042c, is taken when (v0(=ret(__glOdysseyClosePMObjReference)) & 0xff) != 0, and falls through when (v0(=ret(__glOdysseyClosePMObjReference)) & 0xff) == 0.
  The return at 0xdaa0434 has v0 = one of ret(__glSetError), ret(ImageCalcDmaFieldOffsets), ret(__glOdysseyClosePMObjReference).
  The instructions from 0xda9fc50 to 0xda9fc50 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdaa00d8 to 0xdaa00d8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdaa0100 to 0xdaa0100 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdaa0128 to 0xdaa0128 are not reached by any path from the entry, and their branches are not listed.

- `__glOdylc_Normal3b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaaad00 (o32).
  Appends a four-word record at the pointer held in the word at absolute 0x1030. Word 0 is filled
  with 0xffffffffc180cc16 by the `sw` at 0xdaaadc4, a fixed header value. The other three come from
  sign-extended bytes read at offsets +0x3, +0x7 and +0xb above the entry stack pointer and written
  to +0x4, +0x8 and +0xc (`sw` at 0xdaaadd4, 0xdaaade0, 0xdaaade8); those offsets fall inside the
  slots where the prologue saved a0, a1 and a2 (`sw` at 0xdaaad18, 0xdaaad1c, 0xdaaad20). The
  pointer is loaded at 0xdaaad2c and reloaded at 0xdaaada0 after the call; the record begins t0
  times four bytes beyond it. t0 is 1 when the word at 0x1034 is zero and bit 0x4 of the pointer is
  set (`bne` at 0xdaaad34, `beql` at 0xdaaad40), or when the reloaded pointer has that bit set
  (`beql` at 0xdaaada8), and 0 otherwise. The count a3 is the word at 0x1028, loaded at 0xdaaad30.
  If it is below 4 plus t0 (the `beql` at 0xdaaad54 falls through), `__glSPDlistSpace` is called at
  0xdaaad68 with a0 0, a1 and a2 as on entry and a3 the count, and the return value replaces a3 in
  the delay slot at 0xdaaad84. A zero return stores the pre-call pointer minus 4 to 0x1030 (`sw` at
  0xdaaad90), writes the word at 0x1028 plus one in the delay slot at 0xdaaad9c of the branch to the
  return, and leaves without a record. Otherwise the tail stores the record base plus 0x10 to 0x1030
  (`sw` at 0xdaaadf0), a3 less t0 less 4 to 0x1028 (`sw` at 0xdaaadf4) and the word at 0x1034 plus 4
  (`sw` at 0xdaaadfc).
  Inferred: the word at 0x1030 is a write pointer and the word at 0x1028 a free-word count, because
  the tail advances the first by 0x10 bytes and lowers the second by four words plus the pad flag,
  and the call runs only when the second is below that size.
  Unknown: the content of the routine at 0xdadf11c and the number it returns; the committed note
  covers only the IP30ODSY64 build, so a note for this build's routine would settle it.
  Unknown: whether the buffer behind the word at 0x1030 is device memory; no linked row or datasheet
  excerpt covers 0x1028 to 0x1034.
  Evidence grade: inferred.

- `__glOdylc_Normal3b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaaad00 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaaad00-0xdaaae10 (272 bytes).
  It occupies 272 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xdaaad28, `lw` at 0xdaaadec.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xdaaad2c, `lw` at 0xdaaada0.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xdaaad30, `lw` at 0xdaaad88.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xdaaad90, `sw` at 0xdaaadf0.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xdaaad9c, `sw` at 0xdaaadf4.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xdaaadc4, `sw` at 0xdaaadd4, `sw` at 0xdaaade0.
  The `sw` at 0xdaaadfc stores 4 bytes to abs 0x1034.
  The `jalr` at 0xdaaad68 calls __glSPDlistSpace [0xdadf11c] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1028].
  The `bne` branch at 0xdaaad34 targets 0xdaaad4c, is taken when t6(=[0x1034]) != 0, and falls through when t6(=[0x1034]) == 0.
  The `beql` branch at 0xdaaad40 targets 0xdaaad50, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `addiu t8,t0,4` at 0xdaaad44 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xdaaad54 targets 0xdaaadb8, is taken when a3(=[0x1028]) >= t8(=one of 0x4, 0x5) (signed), and falls through when a3(=[0x1028]) < t8(=one of 0x4, 0x5) (signed); its branch-likely delay slot `sll t5,t0,0x2` at 0xdaaad58 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdaaad80 targets 0xdaaada0, is taken when v0(=ret(__glSPDlistSpace)) != 0, and falls through when v0(=ret(__glSPDlistSpace)) == 0.
  The `beq` branch at 0xdaaad98 targets 0xdaaae00 and is always taken.
  The `beql` branch at 0xdaaada8 targets 0xdaaadb8, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `sll t5,t0,0x2` at 0xdaaadac runs only when taken and is annulled on fall-through.
  The return at 0xdaaae08 has v0 = one of ret(__glSPDlistSpace), ?.

- `__glOdylc_Normal3s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaab5a4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaab5a4-0xdaab6b4 (272 bytes).
  It occupies 272 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xdaab5cc, `lw` at 0xdaab690.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xdaab5d0, `lw` at 0xdaab644.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xdaab5d4, `lw` at 0xdaab62c.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xdaab634, `sw` at 0xdaab694.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xdaab640, `sw` at 0xdaab698.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xdaab668, `sw` at 0xdaab678, `sw` at 0xdaab684.
  The `sw` at 0xdaab6a0 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xdaab60c calls __glSPDlistSpace [0xdadf11c] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1028].
  The `bne` branch at 0xdaab5d8 targets 0xdaab5f0, is taken when t6(=[0x1034]) != 0, and falls through when t6(=[0x1034]) == 0.
  The `beql` branch at 0xdaab5e4 targets 0xdaab5f4, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `addiu t8,t0,4` at 0xdaab5e8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xdaab5f8 targets 0xdaab65c, is taken when a3(=[0x1028]) >= t8(=one of 0x4, 0x5) (signed), and falls through when a3(=[0x1028]) < t8(=one of 0x4, 0x5) (signed); its branch-likely delay slot `sll t5,t0,0x2` at 0xdaab5fc runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdaab624 targets 0xdaab644, is taken when v0(=ret(__glSPDlistSpace)) != 0, and falls through when v0(=ret(__glSPDlistSpace)) == 0.
  The `beq` branch at 0xdaab63c targets 0xdaab6a4 and is always taken.
  The `beql` branch at 0xdaab64c targets 0xdaab65c, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `sll t5,t0,0x2` at 0xdaab650 runs only when taken and is annulled on fall-through.
  The return at 0xdaab6ac has v0 = one of ret(__glSPDlistSpace), ?.

- `__glOdylc_Normal3s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaab5a4 (272 bytes).
  Evidence grade: inferred.
  It reads the state words at absolute 0x1034, 0x1030 (bit 0x4) and 0x1028 in branches before the call to `__glSPDlistSpace` at 0xdaab60c with a0 set to 0, which runs only when the word at 0x1028 is below a constant and the earlier tests lead to it. The facts do not show which memory the later stores in the routine go to. Role (from name): `__glSPDlistSpace` suggests display-list space; the facts do not state it. It is 272 bytes, smaller than the Color3 routines.
  Reviewed: 2026-11-12

- `__glOdyim_Begin` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaae2f0 (o32).
  The routine sorts its work by two words: the word at abs 0x1018 and the word at +0x168d4 of the
  pointer
  stored at abs 0x1010. The second of those words is read at 0xdaae31c and tested by the `beq` at
  0xdaae328; a nonzero result sends the code to the `bne` at 0xdaae330, which compares the word at abs
  0x1018 (`lw` at 0xdaae320) with zero, and a zero there becomes the constant 2 (0xdaae338) before the
  test at 0xdaae33c. Whatever the sorting, the three outcomes are a store to absolute words 0x4000 and
  0x1018, two calls through pointers, or a call to `__glSetError` with 0x500 or 0x502.
  The branch at 0xdaae348 sends a tested value other than 2 to the call at 0xdaae3a4, which passes
  0x502;
  a tested value of 2 falls to the block at 0xdaae350, and a zero value jumps to the block at 0xdaae3b4.
  Down the block at 0xdaae350, the `sb` at 0xdaae358 puts 1 into +0x168e4, the first indirect call
  (`jalr` at 0xdaae36c) gets the pointer twice as its leading arguments, the `sw` at 0xdaae378 clears
  absolute 0x1018, and the second indirect call (`jalr` at 0xdaae38c) gets the entry `a0` and then the
  pointer built from +0x17ec and +0x1c.
  Reached through the block at 0xdaae3b4, an entry `a0` below 0xa (`bne` at 0xdaae3b4) lands in the
  store group: 0x14400 goes to absolute 0x4000 (`sw` at 0xdaae3dc), the entry `a0` is then written
  to the
  same address (`sw` at 0xdaae3e8), 1 goes to absolute 0x1018 (`sw` at 0xdaae3ec), and a zero word
  goes to
  +0x19ca8 (`swc1` at 0xdaae3f4, whose register `$f4` is zeroed from `zero` at the start of the
  block at 0xdaae3d4). An entry `a0` of 0xa or more instead calls `__glSetError` with 0x500
  (`jalr` at 0xdaae3c4).
  Inferred: the callee note says `__glSetError` records the first GL error code of the context, which
  makes the 0x500 and 0x502 arguments error codes passed to it.
  Unknown: the routines reached through the pointers loaded at 0xdaae364 and 0xdaae388 have no note in
  this bundle, so the handling of the arguments by them is open.
  Evidence grade: inferred.

- `__glOdylc_TexCoord1d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab23f0 (o32).
  Builds a two-word record at the pointer held in the word at absolute 0x1030, loaded at 0xdab2410
  and loaded again at 0xdab248c after the call. Its first word is the constant 0xffffffffc380c41f
  (`sw` at 0xdab24b4). Its second word, at +0x4 (`swc1` at 0xdab24b8), is the double argument in f12
  narrowed to single precision; the narrowing happens on every path, in the delay slot at 0xdab243c,
  in the delay slot at 0xdab2498 or at 0xdab24a0. The record starts 4 times a1 bytes past the
  pointer, a1 being 0 or 1. a1 becomes 1 when the word at 0x1034 is zero and bit 0x4 of the pointer
  is set (`bne` at 0xdab2418, `beql` at 0xdab2424), or when the pointer reloaded after the call has
  that bit set (`beql` at 0xdab2494). A free count comes into a0 from the word at 0x1028 (`lw` at
  0xdab2414). Only if it is below a1 plus 2 (`beql` at 0xdab2438 falls through) does
  `__glSPDlistSpace` run at 0xdab2450, with a0 0, a1 as computed and a2 0x1028, while f12 is saved
  and restored around it (`sdc1` at 0xdab2454, `ldc1` at 0xdab2468); the return value becomes the
  new count in a0 (`bnez` at 0xdab246c, delay slot). A zero return stores the pre-call pointer minus
  4 to 0x1030 (`sw` at 0xdab247c), writes one more than the word at 0x1028 back to it (`sw` at
  0xdab2488, delay slot of the branch at 0xdab2484) and returns with no record. In the normal tail,
  0x1034 gains 2 (`sw` at 0xdab24d0), 0x1030 becomes the record base plus 8 (`sw` at 0xdab24d4) and
  0x1028 becomes a0 less a1 less 2 (`sw` at 0xdab24d8).
  Inferred: 0x1030 holds a write pointer and 0x1028 a free-word count, since after a record the
  pointer moves forward and the count drops by the words consumed.
  Unknown: how the routine at 0xdadf11c treats its arguments; only the IP30ODSY64 build has a
  committed note, so reading this build's copy is the route.
  Unknown: whether any device window lies behind the words at 0x1028, 0x1030 and 0x1034; a linked
  memory-mapped row for those addresses would settle it.
  Evidence grade: inferred.

- `__glOdylc_TexCoord1d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab23f0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdab23f0-0xdab24ec (252 bytes).
  It occupies 252 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xdab240c, `lw` at 0xdab24bc.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xdab2410, `lw` at 0xdab248c.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xdab2414, `lw` at 0xdab2474.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xdab247c, `sw` at 0xdab24d4.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xdab2488, `sw` at 0xdab24d8.
  The `sw` at 0xdab24b4 stores 4 bytes to ([0x1030] + (one of 0x0, 0x1 << 0x2)) +0x0.
  The `swc1` at 0xdab24b8 stores 4 bytes to ([0x1030] + (one of 0x0, 0x1 << 0x2)) +0x4.
  The `sw` at 0xdab24d0 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xdab2450 calls __glSPDlistSpace [0xdadf11c] with a0=0x0, a1=one of 0x0, 0x1, a2=0x1028, a3=a3 at entry (arg3).
  The `bne` branch at 0xdab2418 targets 0xdab2430, is taken when t6(=[0x1034]) != 0, and falls through when t6(=[0x1034]) == 0.
  The `beql` branch at 0xdab2424 targets 0xdab2434, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `addiu t8,a1,2` at 0xdab2428 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xdab2438 targets 0xdab24a4, is taken when a0(=[0x1028]) >= t8(=one of 0x2, 0x3) (signed), and falls through when a0(=[0x1028]) < t8(=one of 0x2, 0x3) (signed); its branch-likely delay slot `the Odyssey stack assembly unit 1.d $f4,$f12` at 0xdab243c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdab246c targets 0xdab248c, is taken when v0(=ret(__glSPDlistSpace)) != 0, and falls through when v0(=ret(__glSPDlistSpace)) == 0.
  The `beq` branch at 0xdab2484 targets 0xdab24dc and is always taken.
  The `beql` branch at 0xdab2494 targets 0xdab24a4, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `the Odyssey stack assembly unit 1.d $f4,$f12` at 0xdab2498 runs only when taken and is annulled on fall-through.
  The return at 0xdab24e4 has v0 = one of ret(__glSPDlistSpace), ?.

- `__glOdylc_TexCoord1f` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab25ec (o32).
  Stores the single-precision argument as the second word of a two-word record. The float arrives in
  f12 and is spilled at 0xdab2604 (`swc1`), so the `lwc1` at 0xdab26ac can fetch it after the call,
  and the `swc1` at 0xdab26b8 writes it unchanged to +0x4. Word 0 of the record gets the fixed value
  0xffffffffc380c41f from the `sw` at 0xdab26a8. The record is placed at the pointer in the word at
  absolute 0x1030 (`lw` at 0xdab2610, repeated at 0xdab2684 after the call) plus 4 times a1; a1 is 0
  unless the word at 0x1034 is zero and bit 0x4 of the pointer is set (`bnez` at 0xdab2618, `beql`
  at 0xdab2624) or the reloaded pointer has that bit set (`beql` at 0xdab268c). The word at 0x1028
  is loaded into a0 at 0xdab2614. When it is below a1 plus 2 (the `beql` at 0xdab2638 falls
  through), `__glSPDlistSpace` is entered at 0xdab264c with a0 0, a1 as computed and a2 0x1028, and
  the value it returns becomes the count in a0 (delay slot of the `bnez` at 0xdab2664). Returning
  zero stores the pre-call pointer minus 4 to 0x1030 (`sw` at 0xdab2674), then one more than the
  word at 0x1028 (`sw` at 0xdab2680, delay slot of the branch at 0xdab267c), and the routine ends
  without a record. Otherwise 0x1030 is set to the record base plus 8 (`sw` at 0xdab26c4), 0x1034
  grows by 2 (`sw` at 0xdab26cc) and 0x1028 is set to a0 less a1 less 2 (`sw` at 0xdab26d0).
  Inferred: the routine treats 0x1030 as the next free address and 0x1028 as how many words fit,
  because it tests the second against the record size before writing through the first.
  Unknown: the body of the routine at 0xdadf11c; no committed note exists for this build, and the
  IP30ODSY64 copy is a different binary.
  Unknown: whether the record memory is a hardware FIFO or plain host memory; a linked row for
  0x1028 to 0x1034 would settle it.
  Evidence grade: inferred.

- `__glOdylc_TexCoord1fv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab26e4 (o32).
  Copies the single-precision value at the address in a0 into the second word of a two-word record.
  The pointer argument is saved at 0xdab26fc, the value is fetched by the `lwc1` at 0xdab27b0 and
  written to +0x4 by the `swc1` at 0xdab27b8; the `sw` at 0xdab27a0 puts the fixed header
  0xffffffffc380c41f into word 0. The record sits at the pointer in the word at absolute 0x1030
  (loaded at 0xdab2708, loaded again at 0xdab277c after the call), moved on by four bytes when a2 is
  1. a2 is set to 1 when the word at 0x1034 is zero and bit 0x4 of the pointer is set (`bnez` at
  0xdab2710, `beql` at 0xdab271c), and after the call when the reloaded pointer has the bit set
  (`beql` at 0xdab2784). The word at 0x1028 is loaded as the count into a1 at 0xdab270c. If it is
  less than a2 plus 2 (the `beql` at 0xdab2730 is not taken), a call to `__glSPDlistSpace` at
  0xdab2744 passes a0 0, a1 the count, a2 the flag and a3 0x1028, and its return value replaces a1
  (delay slot of the `bnez` at 0xdab275c). A return of zero stores the pre-call pointer minus 4 to
  0x1030 (`sw` at 0xdab276c) and one more than the word at 0x1028 (`sw` at 0xdab2778, delay slot of
  the branch at 0xdab2774), and leaves without a record. On the way out the pointer word 0x1030 is
  advanced to the record base plus 8 (`sw` at 0xdab27c0), the count word 0x1028 is set to a1 less a2
  less 2 (`sw` at 0xdab27c4) and the word at 0x1034 is raised by 2 (`sw` at 0xdab27cc).
  Inferred: 0x1030 is the append position and 0x1028 the remaining room, since the tail raises one
  and lowers the other by the same record length.
  Unknown: the return value that the `bne` at 0xdab275c tests, produced inside the routine at
  0xdadf11c; a note for this build's copy would settle it.
  Unknown: any device mapping behind the three words at 0x1028, 0x1030 and 0x1034, since no
  datasheet excerpt or linked row mentions them.
  Evidence grade: inferred.

- `__glOdylc_TexCoord1i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab27e0 (o32).
  Places the integer argument a0 in a two-word record. The argument is saved at 0xdab27f8 and
  reloaded at 0xdab28a0 (`lw`), and the `sw` at 0xdab28ac stores it at +0x4. Word 0 of the record
  gets the header value 0xffffffffc380c41e from the `sw` at 0xdab289c. Record position: the pointer
  from the word at absolute 0x1030 (`lw` at 0xdab2804, reloaded at 0xdab2878 after the call), plus 4
  bytes if a2 is 1. a2 becomes 1 when the word at 0x1034 is zero and bit 0x4 of the pointer is set
  (`bnez` at 0xdab280c, `beql` at 0xdab2818) or when the reloaded pointer has that bit set (`beql`
  at 0xdab2880). The count in a1 is read from 0x1028 at 0xdab2808. With the count under a2 plus 2
  (the `beql` at 0xdab282c is not taken), the routine calls `__glSPDlistSpace` at 0xdab2840 with a0
  0, a1 the count, a2 the flag and a3 0x1028, and the return value replaces a1 (delay slot of the
  `bnez` at 0xdab2858). A zero return stores the pre-call pointer minus 4 to 0x1030 (`sw` at
  0xdab2868) and one more than the word at 0x1028 (`sw` at 0xdab2874, delay slot of the branch at
  0xdab2870), and no record is written. On the main path the stores that follow put the record base
  plus 8 into 0x1030 (`sw` at 0xdab28b8), a1 less a2 less 2 into 0x1028 (`sw` at 0xdab28c4) and
  0x1034 plus 2 into 0x1034 (`sw` at 0xdab28c0).
  Inferred: a cursor at 0x1030 and a space counter at 0x1028 drive the append, because the counter
  is compared with the record size and both are updated afterwards.
  Unknown: the handling inside the routine at 0xdadf11c of the four values passed to it; the
  committed note covers only the IP30ODSY64 build.
  Unknown: the device-side target, if there is one, of the stores through the 0x1030 pointer; no
  linked row covers that range.
  Evidence grade: inferred.

- `__glOdylc_TexCoord1iv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab28d8 (o32).
  Fetches the integer word at the address in a0 (`lw` at 0xdab29a4) and stores it as the second word
  of a two-word record (`sw` at 0xdab29ac, offset +0x4); word 0 holds the header value
  0xffffffffc380c41e from the `sw` at 0xdab2994. The argument pointer was saved at 0xdab28f0. The
  record is at the pointer in the word at absolute 0x1030 (`lw` at 0xdab28fc, again at 0xdab2970
  after the call) with 4 bytes added if a2 is 1. a2 is 1 for a zero word at 0x1034 together with bit
  0x4 of the pointer set (`bnez` at 0xdab2904, `beql` at 0xdab2910), or for that bit set in the
  reloaded pointer (`beql` at 0xdab2978). The count in a1 is the word at 0x1028 (loaded at
  0xdab2900). A count below a2 plus 2 (the `beql` at 0xdab2924 falls through) leads to
  `__glSPDlistSpace` at 0xdab2938, with a0 0, a1 the count, a2 the flag and a3 0x1028; its return
  value is moved into a1 in the delay slot of the `bnez` at 0xdab2950. Zero from the call stores the
  pre-call pointer minus 4 to 0x1030 (`sw` at 0xdab2960), writes the word at 0x1028 plus one (`sw`
  at 0xdab296c, delay slot of the branch at 0xdab2968), and returns without a record. Otherwise the
  last stores are the record base plus 8 to 0x1030 (`sw` at 0xdab29b4), a1 less a2 less 2 to 0x1028
  (`sw` at 0xdab29b8) and the old 0x1034 plus 2 (`sw` at 0xdab29c0).
  Inferred: 0x1030 serves as the fill pointer and 0x1028 as the free count of the buffer, as the
  space test and the post-write updates show.
  Unknown: which return values the routine at 0xdadf11c can produce; the IP30ODSY64 note does not
  cover this build, so its body needs a read.
  Unknown: the layout of the memory the 0x1030 pointer addresses on the device side; the route is a
  register table for 0x1028 to 0x1034.
  Evidence grade: inferred.

- `__glOdylc_TexCoord1s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab29d4 (o32).
  Puts a two-word record into the buffer that the state block at absolute 0x1028 describes; the block holds a count at +0x0, a pointer at +0x8 and a second counter at +0xc.
  Inferred: the word at 0x1028 counts free space and the word at 0x1030 is the write pointer, since the routine tests the first against the words it needs, writes through the second and then deducts the needed words from the first.
  A pad word count a2 is set to 1 only if the word at 0x1034 is zero and bit 0x4 of the pointer is set (`bne` at 0xdab2a00, `beql` at 0xdab2a0c); the need is a2 plus 2.
  If the free space is smaller than the need, the `beql` at 0xdab2a20 lets the code run on into a call to `__glSPDlistSpace` (`jalr` at 0xdab2a34) with a0=0, the free space, a2 and 0x1028; otherwise the call is skipped.
  When the call returns zero (`bne` at 0xdab2a4c not taken), the code at 0xdab2a54 stores the saved pointer minus 4 to 0x1030 (`sw` at 0xdab2a5c), and the delay slot of the unconditional `b` at 0xdab2a64 adds 1 to the word at 0x1028; no record is written.
  When it returns non-zero, that value replaces the free space, the pointer is read again at 0xdab2a6c and a2 is recomputed from its bit 0x4 (`beql` at 0xdab2a74).
  The record sits a2 times 4 bytes past the pointer. The `sw` at 0xdab2a90 writes the constant 0xffffffffc380c41e as the first word. The `lh` at 0xdab2a94 takes the low half of the saved `a0` and the `sw` at 0xdab2aa0 writes it unchanged at +0x4.
  The routine then stores the pointer plus a2 times 4 plus 8 to 0x1030 (`sw` at 0xdab2aac), adds 2 to the word at 0x1034 (`sw` at 0xdab2ab4) and stores the free space less a2 less 2 to 0x1028 (`sw` at 0xdab2ab8).
  Unknown: what larger structure owns the words at 0x1028, 0x1030 and 0x1034; the entry of a calling routine or of `__glSPDlistSpace` would settle that.
  Evidence grade: inferred.

- `__glOdylc_TexCoord2d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab2bc8 (o32).
  Emits a three-word record into the buffer that the state block at absolute 0x1028 describes (words at +0x0, +0x8 and +0xc), narrowing two double-precision arguments in `$f12` and `$f14` to single precision.
  Inferred: the word at 0x1028 is a free-space count and the word at 0x1030 the write pointer, because the record stores use the loaded 0x1030 value as their base while the 0x1028 value is checked against the need and lowered by it.
  Register a1 is 1 only when the word at 0x1034 is zero and the pointer has bit 0x4 set (`bne` at 0xdab2bf0, `beql` at 0xdab2bfc), and 0 otherwise; the space required is a1 plus 3 words.
  If the free space is below the need, the `beql` at 0xdab2c10 falls through into `__glSPDlistSpace` (`jalr` at 0xdab2c2c) with a0=0, a1 equal to the pad count, a2=0x1028 and a3 left as the caller passed it; the doubles are saved by the `sdc1` at 0xdab2c28 and 0xdab2c30 around the `jalr` and reloaded at 0xdab2c44 and 0xdab2c48.
  A zero return reaches 0xdab2c54, which stores the saved pointer minus 4 to 0x1030 (`sw` at 0xdab2c5c); the delay slot of the unconditional `b` at 0xdab2c64 adds 1 to the word at 0x1028 and no record is written.
  A non-zero return replaces the free space, the pointer is reloaded at 0xdab2c6c and the pad count is recomputed from its bit 0x4 (`beql` at 0xdab2c74).
  On every path that reaches the record stores, `$f4` is the narrowed `$f12` (in the delay slots at 0xdab2c14 and 0xdab2c78, or in the line just before the record stores on the remaining path) and `$f6` the narrowed `$f14`.
  The record sits a1 times 4 bytes past the pointer: the constant 0xffffffffc380c821 (`sw` at 0xdab2c98), then `$f4` at +0x4 (`swc1` at 0xdab2c9c) and `$f6` at +0x8 (`swc1` at 0xdab2ca0).
  Afterwards the word at 0x1034 gains 3 (`sw` at 0xdab2cb8), the pointer plus a1 times 4 plus 0xc goes to 0x1030 (`sw` at 0xdab2cbc), and the free space less a1 less 3 goes to 0x1028 (`sw` at 0xdab2cc0).
  Unknown: the structure that holds the words at 0x1028, 0x1030 and 0x1034; the entry of a caller would settle it.
  Evidence grade: inferred.

- `__glOdylc_TexCoord2d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab2bc8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdab2bc8-0xdab2cd4 (268 bytes).
  It occupies 268 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xdab2be4, `lw` at 0xdab2ca4.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xdab2be8, `lw` at 0xdab2c6c.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xdab2bec, `lw` at 0xdab2c54.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xdab2c5c, `sw` at 0xdab2cbc.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xdab2c68, `sw` at 0xdab2cc0.
  The `sw` at 0xdab2c98 stores 4 bytes to ([0x1030] + (one of 0x0, 0x1 << 0x2)) +0x0.
  The `swc1` at 0xdab2c9c stores 4 bytes to ([0x1030] + (one of 0x0, 0x1 << 0x2)) +0x4.
  The `swc1` at 0xdab2ca0 stores 4 bytes to ([0x1030] + (one of 0x0, 0x1 << 0x2)) +0x8.
  The `sw` at 0xdab2cb8 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xdab2c2c calls __glSPDlistSpace [0xdadf11c] with a0=0x0, a1=one of 0x0, 0x1, a2=0x1028, a3=a3 at entry (arg3).
  The `bne` branch at 0xdab2bf0 targets 0xdab2c08, is taken when t6(=[0x1034]) != 0, and falls through when t6(=[0x1034]) == 0.
  The `beql` branch at 0xdab2bfc targets 0xdab2c0c, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `addiu t8,a1,3` at 0xdab2c00 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xdab2c10 targets 0xdab2c84, is taken when a0(=[0x1028]) >= t8(=one of 0x3, 0x4) (signed), and falls through when a0(=[0x1028]) < t8(=one of 0x3, 0x4) (signed); its branch-likely delay slot `the Odyssey stack assembly unit 1.d $f4,$f12` at 0xdab2c14 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdab2c4c targets 0xdab2c6c, is taken when v0(=ret(__glSPDlistSpace)) != 0, and falls through when v0(=ret(__glSPDlistSpace)) == 0.
  The `beq` branch at 0xdab2c64 targets 0xdab2cc4 and is always taken.
  The `beql` branch at 0xdab2c74 targets 0xdab2c84, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `the Odyssey stack assembly unit 1.d $f4,$f12` at 0xdab2c78 runs only when taken and is annulled on fall-through.
  The return at 0xdab2ccc has v0 = one of ret(__glSPDlistSpace), ?.

- `__glOdylc_TexCoord2i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab2ff0 (o32).
  Emits a three-word record carrying the two integer arguments `a0` and `a1` into the buffer that the state block at absolute 0x1028 describes (words at +0x0, +0x8 and +0xc).
  Inferred: the word at 0x1028 is a free-space count and the word at 0x1030 the write pointer, since the record stores take the loaded 0x1030 value as their base while the 0x1028 value is compared with the need and reduced by it.
  The pad count a3 is 1 only when the word at 0x1034 is zero and bit 0x4 of the pointer is set (`bne` at 0xdab3020, `beql` at 0xdab302c), otherwise 0, and the need is a3 plus 3.
  Given too little free space, the `beql` at 0xdab3040 lets execution reach the call to `__glSPDlistSpace` (`jalr` at 0xdab3054), whose arguments are 0, a1 as received, the free space in a2 and the pad count in a3.
  A zero return makes the code at 0xdab3074 store the saved pointer minus 4 to 0x1030 (`sw` at 0xdab307c), the delay slot of the unconditional `b` at 0xdab3084 then adds 1 to the word at 0x1028, and the routine returns with no record written.
  Otherwise the returned value is the new free space, the pointer is loaded afresh at 0xdab308c and a3 is set again from bit 0x4 of it (`beql` at 0xdab3094).
  The record starts a3 times 4 bytes past the pointer, and its first word is the constant 0xffffffffc380c820 (`sw` at 0xdab30b0).
  The two arguments follow as plain copies: `a0`, reloaded from its frame slot at 0xdab30b4, goes to +0x4 (`sw` at 0xdab30c0) and `a1`, reloaded at 0xdab30c4, to +0x8 (`sw` at 0xdab30cc).
  The pointer plus a3 times 4 plus 0xc is then stored to 0x1030 (`sw` at 0xdab30d4), the free space less a3 less 3 to 0x1028 (`sw` at 0xdab30d8), and the word at 0x1034 gains 3 (`sw` at 0xdab30e0).
  Unknown: what owns the words at 0x1028, 0x1030 and 0x1034; the entry of a routine that calls this one would settle that.
  Evidence grade: inferred.

- `__glOdylc_TexCoord2i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab2ff0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdab2ff0-0xdab30f4 (260 bytes).
  It occupies 260 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xdab3014, `lw` at 0xdab30d0.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xdab3018, `lw` at 0xdab308c.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xdab301c, `lw` at 0xdab3074.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xdab307c, `sw` at 0xdab30d4.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xdab3088, `sw` at 0xdab30d8.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0xdab30b0, `sw` at 0xdab30c0, `sw` at 0xdab30cc.
  The `sw` at 0xdab30e0 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xdab3054 calls __glSPDlistSpace [0xdadf11c] with a0=0x0, a1=a1 at entry (arg1), a2=[0x1028], a3=one of 0x0, 0x1.
  The `bne` branch at 0xdab3020 targets 0xdab3038, is taken when t6(=[0x1034]) != 0, and falls through when t6(=[0x1034]) == 0.
  The `beql` branch at 0xdab302c targets 0xdab303c, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `addiu t8,a3,3` at 0xdab3030 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xdab3040 targets 0xdab30a4, is taken when a2(=[0x1028]) >= t8(=one of 0x3, 0x4) (signed), and falls through when a2(=[0x1028]) < t8(=one of 0x3, 0x4) (signed); its branch-likely delay slot `sll t4,a3,0x2` at 0xdab3044 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdab306c targets 0xdab308c, is taken when v0(=ret(__glSPDlistSpace)) != 0, and falls through when v0(=ret(__glSPDlistSpace)) == 0.
  The `beq` branch at 0xdab3084 targets 0xdab30e4 and is always taken.
  The `beql` branch at 0xdab3094 targets 0xdab30a4, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `sll t4,a3,0x2` at 0xdab3098 runs only when taken and is annulled on fall-through.
  The return at 0xdab30ec has v0 = one of ret(__glSPDlistSpace), ?.

- `__glOdylc_TexCoord3i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab3864 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdab3864-0xdab3974 (272 bytes).
  It occupies 272 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xdab388c, `lw` at 0xdab3950.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xdab3890, `lw` at 0xdab3904.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xdab3894, `lw` at 0xdab38ec.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xdab38f4, `sw` at 0xdab3954.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xdab3900, `sw` at 0xdab3958.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xdab3928, `sw` at 0xdab3938, `sw` at 0xdab3944.
  The `sw` at 0xdab3960 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xdab38cc calls __glSPDlistSpace [0xdadf11c] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1028].
  The `bne` branch at 0xdab3898 targets 0xdab38b0, is taken when t6(=[0x1034]) != 0, and falls through when t6(=[0x1034]) == 0.
  The `beql` branch at 0xdab38a4 targets 0xdab38b4, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `addiu t8,t0,4` at 0xdab38a8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xdab38b8 targets 0xdab391c, is taken when a3(=[0x1028]) >= t8(=one of 0x4, 0x5) (signed), and falls through when a3(=[0x1028]) < t8(=one of 0x4, 0x5) (signed); its branch-likely delay slot `sll t5,t0,0x2` at 0xdab38bc runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdab38e4 targets 0xdab3904, is taken when v0(=ret(__glSPDlistSpace)) != 0, and falls through when v0(=ret(__glSPDlistSpace)) == 0.
  The `beq` branch at 0xdab38fc targets 0xdab3964 and is always taken.
  The `beql` branch at 0xdab390c targets 0xdab391c, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `sll t5,t0,0x2` at 0xdab3910 runs only when taken and is annulled on fall-through.
  The return at 0xdab396c has v0 = one of ret(__glSPDlistSpace), ?.

- `__glOdylc_TexCoord3i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab3864 (272 bytes).
  Evidence grade: inferred.
  It reads the state words at absolute 0x1034, 0x1030 (bit 0x4) and 0x1028 in branches before the call to `__glSPDlistSpace` at 0xdab38cc with a0 set to 0, which runs only when the word at 0x1028 is below a constant and the earlier tests lead to it. The facts do not show which memory the later stores in the routine go to. Role (from name): `__glSPDlistSpace` suggests display-list space; the facts do not state it. It is 272 bytes, the same size as `__glOdylc_Normal3s`.
  Reviewed: 2026-11-12

- `__glOdylc_TexCoord4i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab413c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdab413c-0xdab4258 (284 bytes).
  It occupies 284 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xdab4168, `lw` at 0xdab4234.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xdab416c, `lw` at 0xdab41e0.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xdab4170, `lw` at 0xdab41c8.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xdab41d0, `sw` at 0xdab4238.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xdab41dc, `sw` at 0xdab423c.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xdab4204, `sw` at 0xdab4214, `sw` at 0xdab4220.
  The `sw` at 0xdab4244 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xdab41a8 calls __glSPDlistSpace [0xdadf11c] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xdab4174 targets 0xdab418c, is taken when t6(=[0x1034]) != 0, and falls through when t6(=[0x1034]) == 0.
  The `beql` branch at 0xdab4180 targets 0xdab4190, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `addiu t8,t1,5` at 0xdab4184 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xdab4194 targets 0xdab41f8, is taken when t0(=[0x1028]) >= t8(=one of 0x5, 0x6) (signed), and falls through when t0(=[0x1028]) < t8(=one of 0x5, 0x6) (signed); its branch-likely delay slot `sll t6,t1,0x2` at 0xdab4198 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdab41c0 targets 0xdab41e0, is taken when v0(=ret(__glSPDlistSpace)) != 0, and falls through when v0(=ret(__glSPDlistSpace)) == 0.
  The `beq` branch at 0xdab41d8 targets 0xdab4248 and is always taken.
  The `beql` branch at 0xdab41e8 targets 0xdab41f8, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `sll t6,t1,0x2` at 0xdab41ec runs only when taken and is annulled on fall-through.
  The return at 0xdab4250 has v0 = one of ret(__glSPDlistSpace), ?.

- `__glOdylc_TexCoord4i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab413c (284 bytes).
  Evidence grade: inferred.
  It reads the state words at absolute 0x1034, 0x1030 (bit 0x4) and 0x1028 in branches before the call to `__glSPDlistSpace` at 0xdab41a8 with a0 set to 0, which runs only when the word at 0x1028 is below a constant and the earlier tests lead to it. The facts do not show which memory the later stores in the routine go to. Role (from name): `__glSPDlistSpace` suggests display-list space; the facts do not state it. The call passes the routine's own a1 to a3 through. It is 284 bytes.
  Reviewed: 2026-11-12

- `FreeTextureObject` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab5370 (o32).
  Does not touch the device directly; it tests the word at +0x534 of the record in `a1` against -0x1 and
  calls through the pointer at +0xc of the record in `a0`. When that word equals -0x1, the `beql` at
  0xdab5394 jumps to 0xdab53c0 and its delay-slot `lw` at 0xdab5398 loads the pointer, so the call at
  0xdab53c4 runs with `a0` and `a1` as passed in. Otherwise the `jalr` at 0xdab53a8 calls
  `__glOdysseyDestroyPMObjGroup` with `a0` unchanged and `a1` + 0x534; the `sw` at 0xdab53a4 has saved
  `a0` at sp+0x20 and the delay-slot `sw` at 0xdab53ac has saved the `a1` value at sp+0x24, and the `lw`s
  at 0xdab53b4 and 0xdab53b8 reload those slots before the pointer call. Both paths return the `v0` left
  by the pointer call through the `jr ra` at 0xdab53d8.
  Unknown: the content of the pointer at +0xc of the record in `a0`, which the `lw`s at 0xdab5398 and
  0xdab53bc read; the route is the code that fills that field.
  Unknown: the handling by `__glOdysseyDestroyPMObjGroup` of the address `a1` + 0x534, since the callee
  note gives only its row; the route is that routine's own entry in `opengl/libglcore-odyssey-builds.md`.
  Evidence grade: established.

- `FreeTextureObject` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab5370 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdab5370-0xdab53e0 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xdab5388 loads 4 bytes from a1 (arg1 at entry) +0x534.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0xdab5398, `lw` at 0xdab53bc.
  The `jalr` at 0xdab53a8 calls __glOdysseyDestroyPMObjGroup [0xdaac74c] with a0=a0 at entry (arg0), a1=a1+1332, a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `jalr` at 0xdab53c4 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a1 at entry (arg1), a3=?.
  The `beql` branch at 0xdab5394 targets 0xdab53c0, is taken when t6(=[a1+1332]) == at(=-0x1), and falls through when t6(=[a1+1332]) != at(=-0x1); its branch-likely delay slot `lw t9,12(a0)` at 0xdab5398 runs only when taken and is annulled on fall-through.
  The return at 0xdab53d8 has v0 = ret(?).

- `InitTextureObject` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab53e0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdab53e0-0xdab561c (572 bytes).
  It occupies 572 bytes.
  The `sw` at 0xdab5410 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0xdab542c stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `sw` at 0xdab5430 stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `sw` at 0xdab5434 stores 4 bytes to a0 (arg0 at entry) +0xc.
  The `sw` at 0xdab5438 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0xdab543c stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `sw` at 0xdab5440 stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `sw` at 0xdab5444 stores 4 bytes to a0 (arg0 at entry) +0x1c.
  The `sw` at 0xdab5448 stores 4 bytes to a0 (arg0 at entry) +0x20.
  The `sw` at 0xdab544c stores 4 bytes to a0 (arg0 at entry) +0x24.
  The `sw` at 0xdab5450 stores 4 bytes to a0 (arg0 at entry) +0x40.
  The `sw` at 0xdab5454 stores 4 bytes to a0 (arg0 at entry) +0x44.
  The `swc1` at 0xdab5460 stores 4 bytes to a0 (arg0 at entry) +0x2c.
  The `swc1` at 0xdab5464 stores 4 bytes to a0 (arg0 at entry) +0x30.
  The `swc1` at 0xdab5468 stores 4 bytes to a0 (arg0 at entry) +0x34.
  The `swc1` at 0xdab546c stores 4 bytes to a0 (arg0 at entry) +0x38.
  The `swc1` at 0xdab5470 stores 4 bytes to a0 (arg0 at entry) +0x3c.
  13 such `sw` accesses store 4 bytes to ?, including `sw` at 0xdab5484, `sw` at 0xdab5488, `sw` at 0xdab548c.
  The `sw` at 0xdab54d4 stores 4 bytes to a0 (arg0 at entry) +0x534.
  The `sw` at 0xdab54d8 stores 4 bytes to a0 (arg0 at entry) +0x538.
  The `sw` at 0xdab54dc stores 4 bytes to a0 (arg0 at entry) +0xc0.
  The `sw` at 0xdab54e0 stores 4 bytes to a0 (arg0 at entry) +0x544.
  The `sw` at 0xdab54e4 stores 4 bytes to a0 (arg0 at entry) +0x548.
  The `sw` at 0xdab54e8 stores 4 bytes to a0 (arg0 at entry) +0x54c.
  The `sw` at 0xdab54ec stores 4 bytes to a0 (arg0 at entry) +0x550.
  The `sw` at 0xdab54f0 stores 4 bytes to a0 (arg0 at entry) +0x554.
  The `sw` at 0xdab5560 stores 4 bytes to a0 (arg0 at entry) +0x108.
  The `sw` at 0xdab5564 stores 4 bytes to a0 (arg0 at entry) +0x10c.
  The `sw` at 0xdab5568 stores 4 bytes to a0 (arg0 at entry) +0x110.
  The `sw` at 0xdab556c stores 4 bytes to a0 (arg0 at entry) +0xe0.
  The `sw` at 0xdab5570 stores 4 bytes to a0 (arg0 at entry) +0xe4.
  The `sw` at 0xdab5574 stores 4 bytes to a0 (arg0 at entry) +0xe8.
  The `sw` at 0xdab5578 stores 4 bytes to a0 (arg0 at entry) +0xec.
  The `sw` at 0xdab557c stores 4 bytes to a0 (arg0 at entry) +0xf0.
  The `sw` at 0xdab5580 stores 4 bytes to a0 (arg0 at entry) +0xf4.
  The `sw` at 0xdab5584 stores 4 bytes to a0 (arg0 at entry) +0xf8.
  The `sw` at 0xdab5588 stores 4 bytes to a0 (arg0 at entry) +0xfc.
  The `sw` at 0xdab558c stores 4 bytes to a0 (arg0 at entry) +0x100.
  The `sw` at 0xdab5590 stores 4 bytes to a0 (arg0 at entry) +0x104.
  The `sw` at 0xdab5594 stores 4 bytes to a0 (arg0 at entry) +0x7c.
  The `sw` at 0xdab5598 stores 4 bytes to a0 (arg0 at entry) +0x80.
  The `sw` at 0xdab559c stores 4 bytes to a0 (arg0 at entry) +0xc4.
  The `sw` at 0xdab55a0 stores 4 bytes to a0 (arg0 at entry) +0xc8.
  The `sw` at 0xdab55a4 stores 4 bytes to a0 (arg0 at entry) +0xcc.
  The `sw` at 0xdab55a8 stores 4 bytes to a0 (arg0 at entry) +0xd0.
  The `sw` at 0xdab55ac stores 4 bytes to a0 (arg0 at entry) +0xd8.
  The `sw` at 0xdab55b0 stores 4 bytes to a0 (arg0 at entry) +0xdc.
  The `sw` at 0xdab55b4 stores 4 bytes to a0 (arg0 at entry) +0xd4.
  The `sw` at 0xdab55b8 stores 4 bytes to a0 (arg0 at entry) +0x114.
  The `sw` at 0xdab55bc stores 4 bytes to a0 (arg0 at entry) +0x11c.
  The `sw` at 0xdab55c0 stores 4 bytes to a0 (arg0 at entry) +0x124.
  The `sw` at 0xdab55c4 stores 4 bytes to a0 (arg0 at entry) +0x12c.
  The `sw` at 0xdab55c8 stores 4 bytes to a0 (arg0 at entry) +0x118.
  The `sw` at 0xdab55cc stores 4 bytes to a0 (arg0 at entry) +0x120.
  The `sw` at 0xdab55d0 stores 4 bytes to a0 (arg0 at entry) +0x128.
  The `sw` at 0xdab55d4 stores 4 bytes to a0 (arg0 at entry) +0x130.
  The `swc1` at 0xdab55d8 stores 4 bytes to a0 (arg0 at entry) +0x68.
  The `swc1` at 0xdab55dc stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `swc1` at 0xdab55e0 stores 4 bytes to a0 (arg0 at entry) +0x70.
  The `swc1` at 0xdab55e4 stores 4 bytes to a0 (arg0 at entry) +0xa0.
  The `swc1` at 0xdab55e8 stores 4 bytes to a0 (arg0 at entry) +0xa4.
  The `swc1` at 0xdab55ec stores 4 bytes to a0 (arg0 at entry) +0xa8.
  The `swc1` at 0xdab55f0 stores 4 bytes to a0 (arg0 at entry) +0xac.
  The `swc1` at 0xdab55f4 stores 4 bytes to a0 (arg0 at entry) +0x90.
  The `swc1` at 0xdab55f8 stores 4 bytes to a0 (arg0 at entry) +0x94.
  The `swc1` at 0xdab55fc stores 4 bytes to a0 (arg0 at entry) +0x98.
  The `swc1` at 0xdab5600 stores 4 bytes to a0 (arg0 at entry) +0x9c.
  The `swc1` at 0xdab5604 stores 4 bytes to a0 (arg0 at entry) +0x74.
  The `swc1` at 0xdab5608 stores 4 bytes to a0 (arg0 at entry) +0x78.
  The `jalr` at 0xdab5500 calls bzero with a0=a0+308, a1=0x400, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xdab551c calls __glOdysseyTextureSetDetailTable [0xdabe880] with a0=a0 at entry (arg0), a1=0x2, a2=0xdbd36a0, a3=?.
  The `bne` branch at 0xdab54bc targets 0xdab5480, is taken when v1(?) != a1(=0x10), and falls through when v1(?) == a1(=0x10).
  The return at 0xdab5614 has v0 = 0x1000.

- `__glOdysseyTextureDriverDestroy` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab5838 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdab5838-0xdab5924 (236 bytes).
  It occupies 236 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x164ac, including `lw` at 0xdab585c, `lw` at 0xdab5880.
  The `lw` at 0xdab5864 loads 4 bytes from [a0+91308] +0x8.
  The `lw` at 0xdab5894 loads 4 bytes from a0 (arg0 at entry) +0x164b0.
  The `lw` at 0xdab5898 loads 4 bytes from [a0+91312] +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x164b4, including `lw` at 0xdab58a0, `lw` at 0xdab58c0.
  The `lw` at 0xdab58c4 loads 4 bytes from [a0+91316] +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x164b8, including `lw` at 0xdab58cc, `lw` at 0xdab58ec.
  The `lw` at 0xdab58f0 loads 4 bytes from [a0+91320] +0x8.
  The `jalr` at 0xdab587c calls __glNamesUnlockData [0xdb3e144] with a0=a0 at entry (arg0), a1=[a0+91308], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdab58b0 calls __glNamesUnlockData [0xdb3e144] with a0=a0 at entry (arg0), a1=[a0+91312], a2=?, a3=?.
  The `jalr` at 0xdab58dc calls __glNamesUnlockData [0xdb3e144] with a0=a0 at entry (arg0), a1=[a0+91316], a2=?, a3=?.
  The `jalr` at 0xdab5904 calls __glNamesUnlockData [0xdb3e144] with a0=a0 at entry (arg0), a1=[a0+91320], a2=?, a3=?.
  The `beql` branch at 0xdab5868 targets 0xdab588c, is taken when t7(=[[a0+91308]+8]) == 0, and falls through when t7(=[[a0+91308]+8]) != 0; its branch-likely delay slot `lui at,0x1` at 0xdab586c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xdab589c targets 0xdab58c4, is taken when t8(=[[a0+91312]+8]) == 0, and falls through when t8(=[[a0+91312]+8]) != 0; its branch-likely delay slot `lw a1,8(v0)` at 0xdab58a0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xdab58c8 targets 0xdab58f0, is taken when t9(=[[a0+91316]+8]) == 0, and falls through when t9(=[[a0+91316]+8]) != 0; its branch-likely delay slot `lw a1,12(v0)` at 0xdab58cc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xdab58f4 targets 0xdab5914, is taken when t0(=[[a0+91320]+8]) == 0, and falls through when t0(=[[a0+91320]+8]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xdab58f8 runs only when taken and is annulled on fall-through.
  The return at 0xdab591c has v0 = one of a0+91308, ret(__glNamesUnlockData).

- `__glOdysseyGetCurrentTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab5aa0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdab5aa0-0xdab5b58 (184 bytes).
  It occupies 184 bytes.
  The `lw` at 0xdab5af8 loads 4 bytes from a0 (arg0 at entry) +0x164ac.
  The `lw` at 0xdab5b04 loads 4 bytes from a0 (arg0 at entry) +0x164b0.
  The `lw` at 0xdab5b10 loads 4 bytes from a0 (arg0 at entry) +0x164b4.
  The `lw` at 0xdab5b1c loads 4 bytes from a0 (arg0 at entry) +0x164b8.
  The `beq` branch at 0xdab5aa4 targets 0xdab5af0, is taken when a1 == at(=0xde0), and falls through when a1 != at(=0xde0).
  The `beq` branch at 0xdab5ab0 targets 0xdab5afc, is taken when a1 == at(=0xde1), and falls through when a1 != at(=0xde1).
  The `beq` branch at 0xdab5abc targets 0xdab5b20, is taken when a1 == at(=0x8063), and falls through when a1 != at(=0x8063).
  The `beq` branch at 0xdab5ac4 targets 0xdab5b30, is taken when a1 == at(=0x8064), and falls through when a1 != at(=0x8064).
  The `beq` branch at 0xdab5acc targets 0xdab5b08, is taken when a1 == at(=0x806f), and falls through when a1 != at(=0x806f).
  The `beq` branch at 0xdab5ad8 targets 0xdab5b40, is taken when a1 == at(=0x8070), and falls through when a1 != at(=0x8070).
  The `beq` branch at 0xdab5ae0 targets 0xdab5b14, is taken when a1 == at(=0x8095), and falls through when a1 != at(=0x8095).
  The `beq` branch at 0xdab5ae8 targets 0xdab5b50 and is always taken.
  The return at 0xdab5af4 has v0 = [a0+91308].
  The return at 0xdab5b00 has v0 = [a0+91312].
  The return at 0xdab5b0c has v0 = [a0+91316].
  The return at 0xdab5b18 has v0 = [a0+91320].
  The return at 0xdab5b28 has v0 = a0+83748.
  The return at 0xdab5b38 has v0 = a0+86268.
  The return at 0xdab5b48 has v0 = a0+88788.
  The return at 0xdab5b50 has v0 = 0x0.

- `AllocateGfxMemForTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab60c0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdab60c0-0xdab677c (1724 bytes).
  It occupies 1724 bytes.
  The `lw` at 0xdab60d8 loads 4 bytes from abs 0x1010.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xdab64cc, `lw` at 0xdab64e0, `lw` at 0xdab64f0.
  21 such `sw` accesses store 4 bytes to ?, including `sw` at 0xdab6618, `sw` at 0xdab661c, `sw` at 0xdab6620.
  The `jalr` at 0xdab60fc calls __glOdysseyGetCurrentTexture [0xdab5aa0] with a0=[0x1010], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdab6134 calls ChooseSuitableBuzzTexObjFormat [0xdab5cf4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xdab6178 calls CalcTexelSizes [0xdab5e68] with a0=ret(ChooseSuitableBuzzTexObjFormat), a1=sp-12, a2=sp-16, a3=sp-20.
  The `jalr` at 0xdab61ac calls ceilf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xdab628c calls ceilf with a0=?, a1=one of 0x0, 0x1, a2=?, a3=?.
  The `jalr` at 0xdab634c calls __glOdysseyImageLogBase2 [0xdaa6250] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xdab639c calls memset with a0=sp-80, a1=0x0, a2=0x28, a3=?.
  The `jalr` at 0xdab6550 calls __glOdysseyDestroyPMObjGroup [0xdaac74c] with a0=[0x1010], a1=?, a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0xdab6578 calls __glOdysseyDestroyPMObj [0xdaac868] with a0=[0x1010], a1=?, a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0xdab659c calls __glOdysseyCreatePMObj [0xdaac57c] with a0=[0x1010], a1=sp-80, a2=?, a3=a1 at entry (arg1).
  The `jalr` at 0xdab65e0 calls memset with a0=?, a1=0x0, a2=0x44, a3=?.
  The `jalr` at 0xdab65fc calls __glSetError [0xdb1ac34] with a0=0x505, a1=?, a2=?, a3=?.
  The `jalr` at 0xdab6688 calls CalcPixelModePixelFormat [0xdab60a4] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xdab61dc targets 0xdab6228, is taken when (v0(?) & 0x78) == 0, and falls through when (v0(?) & 0x78) != 0.
  The `bne` branch at 0xdab6208 targets 0xdab6220, is taken when (v0(?) & 0x78) != 0, and falls through when (v0(?) & 0x78) == 0.
  The `beq` branch at 0xdab6218 targets 0xdab6238 and is always taken.
  The `beq` branch at 0xdab6220 targets 0xdab6238 and is always taken.
  The `bltz` branch at 0xdab6230 targets 0xdab6220, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `beq` branch at 0xdab6240 targets 0xdab6250, is taken when (v0(?) & 0x1) == 0, and falls through when (v0(?) & 0x1) != 0.
  The `beq` branch at 0xdab6248 targets 0xdab6254 and is always taken.
  The `beql` branch at 0xdab62c4 targets 0xdab6314, is taken when (t9(?) & 0x78) == 0, and falls through when (t9(?) & 0x78) != 0; its branch-likely delay slot `mfc1 t9,$f6` at 0xdab62c8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdab62f0 targets 0xdab6308, is taken when (t9(?) & 0x78) != 0, and falls through when (t9(?) & 0x78) == 0.
  The `beq` branch at 0xdab6300 targets 0xdab6320 and is always taken.
  The `beq` branch at 0xdab6308 targets 0xdab6320 and is always taken.
  The `bltz` branch at 0xdab6318 targets 0xdab6308, is taken when t9(?) < 0 (signed), and falls through when t9(?) >= 0 (signed).
  The `bne` branch at 0xdab632c targets 0xdab6370, is taken when t0(?) < 0x2 (signed), and falls through when t0(?) >= 0x2 (signed).
  The `beq` branch at 0xdab6368 targets 0xdab6380 and is always taken.
  The `beq` branch at 0xdab63e8 targets 0xdab6424, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0xdab641c targets 0xdab6430 and is always taken.
  The `beq` branch at 0xdab643c targets 0xdab6468, is taken when v0(=a0) == at(=0x8063), and falls through when v0(=a0) != at(=0x8063).
  The `beq` branch at 0xdab6448 targets 0xdab647c, is taken when v0(=a0) == at(=0x8064), and falls through when v0(=a0) != at(=0x8064).
  The `beq` branch at 0xdab6454 targets 0xdab6490, is taken when v0(=a0) == at(=0x8070), and falls through when v0(=a0) != at(=0x8070).
  The `beq` branch at 0xdab6460 targets 0xdab64a0 and is always taken.
  The `beq` branch at 0xdab6474 targets 0xdab64a0 and is always taken.
  The `beq` branch at 0xdab6488 targets 0xdab64a0 and is always taken.
  The `bne` branch at 0xdab64c4 targets 0xdab6590, is taken when t4(?) != 0, and falls through when t4(?) == 0.
  The `beql` branch at 0xdab64d8 targets 0xdab6614, is taken when t5(?) == at(=-0x1), and falls through when t5(?) != at(=-0x1); its branch-likely delay slot `lw t6,72(sp)` at 0xdab64dc runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xdab64e8 targets 0xdab6614, is taken when a1(=0x1) != t8(?), and falls through when a1(=0x1) == t8(?); its branch-likely delay slot `lw t6,72(sp)` at 0xdab64ec runs only when taken and is annulled on fall-through.
  The `blez` branch at 0xdab64fc targets 0xdab6538, is taken when a0(?) <= 0 (signed), and falls through when a0(?) > 0 (signed).
  The `beql` branch at 0xdab6504 targets 0xdab652c, is taken when v0(?) == a2(=a1), and falls through when v0(?) != a2(=a1); its branch-likely delay slot `addiu v0,v0,1` at 0xdab6508 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xdab651c targets 0xdab652c, is taken when a1(=0x1) != t4(?), and falls through when a1(=0x1) == t4(?); its branch-likely delay slot `addiu v0,v0,1` at 0xdab6520 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdab6530 targets 0xdab6504, is taken when v0(?) < a0(?) (signed), and falls through when v0(?) >= a0(?) (signed).
  The `beq` branch at 0xdab6538 targets 0xdab6568, is taken when v1(=one of 0x0, 0x1) == 0, and falls through when v1(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0xdab6560 targets 0xdab6610 and is always taken.
  The `beq` branch at 0xdab6588 targets 0xdab6610 and is always taken.
  The `bne` branch at 0xdab65ac targets 0xdab6610, is taken when v0(=ret(__glOdysseyCreatePMObj)) != 0, and falls through when v0(=ret(__glOdysseyCreatePMObj)) == 0.
  The `beq` branch at 0xdab65bc targets 0xdab65d4, is taken when v0(=a0) == at(=0x8063), and falls through when v0(=a0) != at(=0x8063).
  The `beq` branch at 0xdab65c4 targets 0xdab65d4, is taken when v0(=a0) == at(=0x8064), and falls through when v0(=a0) != at(=0x8064).
  The `bne` branch at 0xdab65cc targets 0xdab65f4, is taken when v0(=a0) != at(=0x8070), and falls through when v0(=a0) == at(=0x8070).
  The `beq` branch at 0xdab65ec targets 0xdab6768 and is always taken.
  The `beq` branch at 0xdab6608 targets 0xdab6768 and is always taken.
  The `bne` branch at 0xdab66cc targets 0xdab6764, is taken when t4(=a1) != 0, and falls through when t4(=a1) == 0.
  The `beq` branch at 0xdab66e0 targets 0xdab66f4, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0xdab66ec targets 0xdab66e8, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0xdab66f8 targets 0xdab670c, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `bne` branch at 0xdab6704 targets 0xdab6700, is taken when s1(?) != 0, and falls through when s1(?) == 0.
  The `beq` branch at 0xdab670c targets 0xdab6720, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0xdab6718 targets 0xdab6714, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xdab6728 targets 0xdab6738, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xdab6730 targets 0xdab673c and is always taken.
  The `beq` branch at 0xdab6740 targets 0xdab6760, is taken when v0(?) >= a1(?) (signed), and falls through when v0(?) < a1(?) (signed).
  The `beq` branch at 0xdab6748 targets 0xdab6758, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xdab6750 targets 0xdab6758 and is always taken.
  The `beq` branch at 0xdab6758 targets 0xdab6764 and is always taken.
  The return at 0xdab6774 has v0 = one of 0x0, 0x1.
  The instructions from 0xdab6310 to 0xdab6310 are not reached by any path from the entry, and their branches are not listed.

- `LoadTextureFromHost` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab677c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdab677c-0xdab6e30 (1716 bytes).
  It occupies 1716 bytes.
  The `lw` at 0xdab67a0 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdab67e4 loads 4 bytes from [0x1010] +0x164c0.
  The `sw` at 0xdab6810 stores 4 bytes to [0x1010] +0x164c0.
  4 such `lw` accesses load 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5c0, including `lw` at 0xdab684c, `lw` at 0xdab6878, `lw` at 0xdab688c.
  The `lw` at 0xdab6928 loads 4 bytes from [0x1010] +0x4c8.
  The `lw` at 0xdab6954 loads 4 bytes from [0x1010] +0x4a8.
  The `lw` at 0xdab6970 loads 4 bytes from [0x1010] +0x4bc.
  The `lw` at 0xdab698c loads 4 bytes from [0x1010] +0x4b4.
  The `lw` at 0xdab69a8 loads 4 bytes from [0x1010] +0x4b0.
  The `lw` at 0xdab69cc loads 4 bytes from [0x1010] +0x4ac.
  The `lw` at 0xdab6a58 loads 4 bytes from ret(__glOdysseyGetCurrentTexture) +0x534.
  The `lw` at 0xdab6a6c loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5a4.
  The `lw` at 0xdab6a78 loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5b4.
  The `lw` at 0xdab6a80 loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5b8.
  The `lw` at 0xdab6a88 loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5a0.
  3 such `lw` accesses load 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x59c, including `lw` at 0xdab6a94, `lw` at 0xdab6aa0, `lw` at 0xdab6c08.
  2 such `lw` accesses load 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x598, including `lw` at 0xdab6aac, `lw` at 0xdab6ae4.
  4 such `lw` accesses load 4 bytes from [0x1010] +0x7b7c, including `lw` at 0xdab6ac4, `lw` at 0xdab6afc, `lw` at 0xdab6b00.
  The `lw` at 0xdab6ad4 loads 4 bytes from [0x1010] +0x11c94.
  7 such `sw` accesses store 4 bytes to [0x1010] +0x7b7c, including `sw` at 0xdab6ae0, `sw` at 0xdab6b2c, `sw` at 0xdab6b58.
  2 such `lbu` accesses load 1 byte from [0x1010] +0x9d7, including `lbu` at 0xdab6b04, `lbu` at 0xdab6ba0.
  The `lbu` at 0xdab6b34 loads 1 byte from [0x1010] +0x9d4.
  The `lbu` at 0xdab6b60 loads 1 byte from [0x1010] +0x9d5.
  The `lbu` at 0xdab6b7c loads 1 byte from [0x1010] +0x9d6.
  The `lw` at 0xdab6be4 loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5a8.
  The `lw` at 0xdab6d38 loads 4 bytes from [0x1010] +0x4b8.
  The `lw` at 0xdab6df0 loads 4 bytes from [0x1010] +0x168d0.
  The `sw` at 0xdab6df8 stores 4 bytes to [0x1010] +0x168d0.
  The `sw` at 0xdab6dfc stores 4 bytes to abs 0x1018.
  The `lw` at 0xdab6e00 loads 4 bytes from [0x1010] +0x2d44.
  The `sw` at 0xdab6e04 stores 4 bytes to [0x1010] +0x2d44.
  The `sw` at 0xdab6e0c stores 4 bytes to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5ac.
  The `sw` at 0xdab6e14 stores 4 bytes to ret(__glOdysseyGetCurrentTexture) +0x544.
  The `jalr` at 0xdab67fc calls __glOdysseyTextureDeactivate [0xdab8908] with a0=[0x1010], a1=[[0x1010]+91328], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdab6820 calls __glOdysseyGetCurrentTexture [0xdab5aa0] with a0=[0x1010], a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xdab68bc calls __glSetError [0xdb1ac34] with a0=0x502, a1=?, a2=?, a3=?.
  The `jalr` at 0xdab68d8 calls memset with a0=sp-56, a1=0x0, a2=0x38, a3=?.
  The `jalr` at 0xdab6904 calls __glSpecElementsPerGroup [0xdaf8340] with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=?, a3=?.
  The `jalr` at 0xdab691c calls __glSpecBytesPerElement [0xdaf8444] with a0=a3 at entry (arg3), a1=?, a2=?, a3=?.
  The `jalr` at 0xdab6a2c calls memset with a0=sp-112, a1=0x0, a2=0x38, a3=?.
  The `jalr` at 0xdab6aa8 calls GetImageFmtEnumFromBuzzTexFormat [0xdab5b58] with a0=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1432], a1=?, a2=?, a3=?.
  The `jalr` at 0xdab6bf4 calls __glOdysseyImageXfer [0xda6af2c] with a0=sp-112, a1=sp-56, a2=sp-128, a3=0x0.
  The `jalr` at 0xdab6c78 calls ceilf with a0=sp-112, a1=sp-56, a2=sp-128, a3=?.
  The `jalr` at 0xdab6da8 calls __glOdysseyImageXfer [0xda6af2c] with a0=sp-112, a1=sp-56, a2=sp-128, a3=0x0.
  The `beql` branch at 0xdab67d8 targets 0xdab6e1c, is taken when t1(?) == 0, and falls through when t1(?) != 0; its branch-likely delay slot `lw ra,44(sp)` at 0xdab67dc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdab67e8 targets 0xdab6814, is taken when a1(=[[0x1010]+91328]) == 0, and falls through when a1(=[[0x1010]+91328]) != 0.
  The `beq` branch at 0xdab6858 targets 0xdab68cc, is taken when t6(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1472]) == 0, and falls through when t6(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1472]) != 0.
  The `beq` branch at 0xdab6860 targets 0xdab689c, is taken when v0(=a0) == at(=0xde0), and falls through when v0(=a0) != at(=0xde0).
  The `beq` branch at 0xdab6868 targets 0xdab6888, is taken when v0(=a0) == at(=0xde1), and falls through when v0(=a0) != at(=0xde1).
  The `bne` branch at 0xdab6870 targets 0xdab68b4, is taken when v0(=a0) != at(=0x806f), and falls through when v0(=a0) == at(=0x806f).
  The `beq` branch at 0xdab68ac targets 0xdab68cc and is always taken.
  The `beq` branch at 0xdab68c4 targets 0xdab6e18 and is always taken.
  The `bne` branch at 0xdab693c targets 0xdab6950, is taken when t2(=[[0x1010]+1224]) != at(=0x85a3), and falls through when t2(=[[0x1010]+1224]) == at(=0x85a3).
  The `beq` branch at 0xdab6948 targets 0xdab6954 and is always taken.
  The `beql` branch at 0xdab695c targets 0xdab6970, is taken when v0(=[[0x1010]+1192]) == 0, and falls through when v0(=[[0x1010]+1192]) != 0; its branch-likely delay slot `sw t4,208(sp)` at 0xdab6960 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdab6964 targets 0xdab6970 and is always taken.
  The `beql` branch at 0xdab6978 targets 0xdab698c, is taken when v0(=[[0x1010]+1212]) == 0, and falls through when v0(=[[0x1010]+1212]) != 0; its branch-likely delay slot `sw t5,212(sp)` at 0xdab697c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdab6980 targets 0xdab698c and is always taken.
  The `beql` branch at 0xdab6994 targets 0xdab69a8, is taken when v0(=[[0x1010]+1204]) >= s1(?) (unsigned), and falls through when v0(=[[0x1010]+1204]) < s1(?) (unsigned); its branch-likely delay slot `sw v0,216(sp)` at 0xdab6998 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdab699c targets 0xdab69a8 and is always taken.
  The `bgez` branch at 0xdab69b4 targets 0xdab69c8, is taken when t6(=[[0x1010]+1200]) >= 0 (signed), and falls through when t6(=[[0x1010]+1200]) < 0 (signed).
  The `bgez` branch at 0xdab69d8 targets 0xdab69ec, is taken when t7(=[[0x1010]+1196]) >= 0 (signed), and falls through when t7(=[[0x1010]+1196]) < 0 (signed).
  The `beq` branch at 0xdab6af0 targets 0xdab6b00, is taken when s0(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1432]) == 0, and falls through when s0(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1432]) != 0.
  The `bnel` branch at 0xdab6af8 targets 0xdab6b34, is taken when s0(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1432]) != at(=0x8), and falls through when s0(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1432]) == at(=0x8); its branch-likely delay slot `lw t7,31612(s2)` at 0xdab6afc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdab6b28 targets 0xdab6b5c and is always taken.
  The `beql` branch at 0xdab6be0 targets 0xdab6c08, is taken when t2(=a0) == at(=0x806f), and falls through when t2(=a0) != at(=0x806f); its branch-likely delay slot `lw t3,16(v1)` at 0xdab6be4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdab6bfc targets 0xdab6dd4 and is always taken.
  The `bgez` branch at 0xdab6c44 targets 0xdab6c58, is taken when t2(?) >= 0 (signed), and falls through when t2(?) < 0 (signed).
  The `bgez` branch at 0xdab6c58 targets 0xdab6c70, is taken when t6(?) >= 0 (signed), and falls through when t6(?) < 0 (signed).
  The `bgez` branch at 0xdab6c94 targets 0xdab6ca8, is taken when t3(?) >= 0 (signed), and falls through when t3(?) < 0 (signed).
  The `beql` branch at 0xdab6cd8 targets 0xdab6d28, is taken when (t5(?) & 0x78) == 0, and falls through when (t5(?) & 0x78) != 0; its branch-likely delay slot `mfc1 t5,$f10` at 0xdab6cdc runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdab6d04 targets 0xdab6d1c, is taken when (t5(?) & 0x78) != 0, and falls through when (t5(?) & 0x78) == 0.
  The `beq` branch at 0xdab6d14 targets 0xdab6d34 and is always taken.
  The `beq` branch at 0xdab6d1c targets 0xdab6d34 and is always taken.
  The `bltz` branch at 0xdab6d2c targets 0xdab6d1c, is taken when t5(?) < 0 (signed), and falls through when t5(?) >= 0 (signed).
  The `beql` branch at 0xdab6d64 targets 0xdab6dd8, is taken when t2(?) == 0, and falls through when t2(?) != 0; its branch-likely delay slot `lw t9,88(sp)` at 0xdab6d68 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdab6dcc targets 0xdab6d7c, is taken when v1(?) != t4(?), and falls through when v1(?) == t4(?).
  The return at 0xdab6e28 has v0 = ?.
  The instructions from 0xdab696c to 0xdab696c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdab6988 to 0xdab6988 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdab69a4 to 0xdab69a4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdab6b30 to 0xdab6b30 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdab6c04 to 0xdab6c04 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdab6d24 to 0xdab6d24 are not reached by any path from the entry, and their branches are not listed.

- `LoadTextureFromReadable` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab6e30 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdab6e30-0xdab7238 (1032 bytes).
  It occupies 1032 bytes.
  The `lw` at 0xdab6e68 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdab6e84 loads 4 bytes from [0x1010] +0x164c0.
  The `sw` at 0xdab6eb0 stores 4 bytes to [0x1010] +0x164c0.
  4 such `lw` accesses load 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5c0, including `lw` at 0xdab6ee4, `lw` at 0xdab6f14, `lw` at 0xdab6f28.
  The `lw` at 0xdab6fec loads 4 bytes from ret(__glOdysseyGetCurrentTexture) +0x534.
  The `lw` at 0xdab7000 loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5a4.
  The `lw` at 0xdab700c loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5b4.
  The `lw` at 0xdab7014 loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5b8.
  The `lw` at 0xdab701c loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5a0.
  3 such `lw` accesses load 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x59c, including `lw` at 0xdab7024, `lw` at 0xdab702c, `lw` at 0xdab7180.
  2 such `lw` accesses load 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x598, including `lw` at 0xdab7038, `lw` at 0xdab7074.
  The `lw` at 0xdab7060 loads 4 bytes from [0x1010] +0x11c94.
  4 such `lw` accesses load 4 bytes from [0x1010] +0x7b7c, including `lw` at 0xdab706c, `lw` at 0xdab7090, `lw` at 0xdab7094.
  7 such `sw` accesses store 4 bytes to [0x1010] +0x7b7c, including `sw` at 0xdab7070, `sw` at 0xdab70c0, `sw` at 0xdab70ec.
  2 such `lbu` accesses load 1 byte from [0x1010] +0x9d7, including `lbu` at 0xdab7098, `lbu` at 0xdab7134.
  The `lbu` at 0xdab70c8 loads 1 byte from [0x1010] +0x9d4.
  The `lbu` at 0xdab70f4 loads 1 byte from [0x1010] +0x9d5.
  The `lbu` at 0xdab7110 loads 1 byte from [0x1010] +0x9d6.
  The `lw` at 0xdab717c loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5a8.
  The `lw` at 0xdab71f8 loads 4 bytes from [0x1010] +0x168d0.
  The `sw` at 0xdab7208 stores 4 bytes to [0x1010] +0x168d0.
  The `sw` at 0xdab720c stores 4 bytes to abs 0x1018.
  The `lw` at 0xdab7210 loads 4 bytes from [0x1010] +0x2d44.
  The `sw` at 0xdab7214 stores 4 bytes to [0x1010] +0x2d44.
  The `sw` at 0xdab7218 stores 4 bytes to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5ac.
  The `sw` at 0xdab7220 stores 4 bytes to ret(__glOdysseyGetCurrentTexture) +0x544.
  The `jalr` at 0xdab6e9c calls __glOdysseyTextureDeactivate [0xdab8908] with a0=[0x1010], a1=[[0x1010]+91328], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdab6ec0 calls __glOdysseyGetCurrentTexture [0xdab5aa0] with a0=[0x1010], a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xdab6f58 calls __glSetError [0xdb1ac34] with a0=0x502, a1=?, a2=?, a3=?.
  The `jalr` at 0xdab6fc0 calls memset with a0=sp-56, a1=0x0, a2=0x38, a3=?.
  The `jalr` at 0xdab7040 calls GetImageFmtEnumFromBuzzTexFormat [0xdab5b58] with a0=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1432], a1=?, a2=?, a3=?.
  The `jalr` at 0xdab71d4 calls __glOdysseyImageXfer [0xda6af2c] with a0=sp-56, a1=[0x1010]+72912, a2=sp-72, a3=0x0.
  The `beql` branch at 0xdab6e74 targets 0xdab7228, is taken when t8(?) == 0, and falls through when t8(?) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xdab6e78 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdab6e88 targets 0xdab6eb4, is taken when a1(=[[0x1010]+91328]) == 0, and falls through when a1(=[[0x1010]+91328]) != 0.
  The `beq` branch at 0xdab6ef0 targets 0xdab6f68, is taken when t5(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1472]) == 0, and falls through when t5(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1472]) != 0.
  The `beq` branch at 0xdab6efc targets 0xdab6f38, is taken when v0(=a0) == at(=0xde0), and falls through when v0(=a0) != at(=0xde0).
  The `beq` branch at 0xdab6f04 targets 0xdab6f24, is taken when v0(=a0) == at(=0xde1), and falls through when v0(=a0) != at(=0xde1).
  The `bne` branch at 0xdab6f0c targets 0xdab6f50, is taken when v0(=a0) != at(=0x806f), and falls through when v0(=a0) == at(=0x806f).
  The `beq` branch at 0xdab6f48 targets 0xdab6f68 and is always taken.
  The `beq` branch at 0xdab6f60 targets 0xdab7224 and is always taken.
  The `beq` branch at 0xdab7080 targets 0xdab7094, is taken when v1(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1432]) == 0, and falls through when v1(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1432]) != 0.
  The `bnel` branch at 0xdab708c targets 0xdab70c8, is taken when v1(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1432]) != at(=0x8), and falls through when v1(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1432]) == at(=0x8); its branch-likely delay slot `lw t5,31612(s0)` at 0xdab7090 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdab70bc targets 0xdab70f0 and is always taken.
  The `bne` branch at 0xdab7174 targets 0xdab71b8, is taken when t6(=a0) != at(=0x806f), and falls through when t6(=a0) == at(=0x806f).
  The return at 0xdab7230 has v0 = ?.
  The instructions from 0xdab70c4 to 0xdab70c4 are not reached by any path from the entry, and their branches are not listed.

- `DownsampleTextureThruHW` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab7238 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdab7238-0xdab7e34 (3068 bytes).
  It occupies 3068 bytes.
  The `lw` at 0xdab7248 loads 4 bytes from abs 0x1010.
  4 such `lw` accesses load 4 bytes from [0x1010] +0x7ed0, including `lw` at 0xdab7260, `lw` at 0xdab76b8, `lw` at 0xdab77a8.
  4 such `lw` accesses load 4 bytes from [0x1010] +0x7ed4, including `lw` at 0xdab7270, `lw` at 0xdab76cc, `lw` at 0xdab77b8.
  4 such `lw` accesses load 4 bytes from [0x1010] +0x7ed8, including `lw` at 0xdab7280, `lw` at 0xdab7750, `lw` at 0xdab77c8.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7f00, including `lw` at 0xdab728c, `lw` at 0xdab7804.
  24 such `lw` accesses load 4 bytes from ?, including `lw` at 0xdab72a8, `lw` at 0xdab72b4, `lw` at 0xdab7330.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0xdab72b0, `lw` at 0xdab72c0, `lw` at 0xdab72c8.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7b20, including `lw` at 0xdab72d8, `lw` at 0xdab72dc.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7b20, including `sw` at 0xdab72f0, `sw` at 0xdab7304.
  10 such `lw` accesses load 4 bytes from [0x1010] +0x168d0, including `lw` at 0xdab7310, `lw` at 0xdab7674, `lw` at 0xdab77ec.
  9 such `sw` accesses store 4 bytes to [0x1010] +0x168d0, including `sw` at 0xdab7320, `sw` at 0xdab7688, `sw` at 0xdab77fc.
  9 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xdab7324, `sw` at 0xdab768c, `sw` at 0xdab7800.
  9 such `lw` accesses load 4 bytes from [0x1010] +0x2d44, including `lw` at 0xdab7328, `lw` at 0xdab7690, `lw` at 0xdab7808.
  9 such `sw` accesses store 4 bytes to [0x1010] +0x2d44, including `sw` at 0xdab732c, `sw` at 0xdab769c, `sw` at 0xdab781c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7be4, including `lw` at 0xdab741c, `lw` at 0xdab7460.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x7be4, including `sw` at 0xdab7438, `sw` at 0xdab7494, `sw` at 0xdab7498.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7be8, including `lw` at 0xdab749c, `lw` at 0xdab74fc.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x7be8, including `sw` at 0xdab74c4, `sw` at 0xdab74f4, `sw` at 0xdab7518.
  7 such `lw` accesses load 4 bytes from [0x1010] +0x7bf4, including `lw` at 0xdab74c8, `lw` at 0xdab74f8, `lw` at 0xdab753c.
  7 such `sw` accesses store 4 bytes to [0x1010] +0x7bf4, including `sw` at 0xdab74ec, `sw` at 0xdab7514, `sw` at 0xdab7558.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7bec, including `lw` at 0xdab751c, `lw` at 0xdab7568.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x7bec, including `sw` at 0xdab7538, `sw` at 0xdab7560, `sw` at 0xdab757c.
  The `lw` at 0xdab7580 loads 4 bytes from [0x1010] +0x7bf0.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7bf0, including `sw` at 0xdab7588, `sw` at 0xdab7594.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7bfc, including `lw` at 0xdab75ac, `lw` at 0xdab75dc.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7bfc, including `sw` at 0xdab75d0, `sw` at 0xdab75fc.
  The `lw` at 0xdab76b4 loads 4 bytes from (a0 + (a1 << 0x2)) +0x558.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7ed0, including `sw` at 0xdab76d0, `sw` at 0xdab7d28.
  5 such `sw` accesses store 4 bytes to [0x1010] +0x7ed4, including `sw` at 0xdab76f8, `sw` at 0xdab771c, `sw` at 0xdab773c.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7ed8, including `sw` at 0xdab7764, `sw` at 0xdab7d40.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x9750, including `lw` at 0xdab7768, `lw` at 0xdab7d44.
  5 such `sw` accesses store 4 bytes to [0x1010] +0x9750, including `sw` at 0xdab7784, `sw` at 0xdab77d8, `sw` at 0xdab7d10.
  28 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdab7788, `sw` at 0xdab7794, `sw` at 0xdab779c.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7f00, including `sw` at 0xdab7818, `sw` at 0xdab7de0.
  The `lw` at 0xdab7848 loads 4 bytes from [0x1010] +0x95c0.
  The `sw` at 0xdab7858 stores 4 bytes to [0x1010] +0x95c0.
  6 such `lw` accesses load 4 bytes from [0x1010] +0x95c4, including `lw` at 0xdab78a8, `lw` at 0xdab78dc, `lw` at 0xdab7900.
  6 such `sw` accesses store 4 bytes to [0x1010] +0x95c4, including `sw` at 0xdab78d8, `sw` at 0xdab78fc, `sw` at 0xdab7920.
  The `lw` at 0xdab7998 loads 4 bytes from (a0 + (a2 << 0x2)) +0x558.
  The `lw` at 0xdab799c loads 4 bytes from [0x1010] +0x95bc.
  The `sw` at 0xdab79b8 stores 4 bytes to [0x1010] +0x95bc.
  The `lw` at 0xdab7b18 loads 4 bytes from [0x1010] +0x7b44.
  4 such `sw` accesses store 4 bytes to [0x1010] +0x7b44, including `sw` at 0xdab7b1c, `sw` at 0xdab7b68, `sw` at 0xdab7b88.
  The `lw` at 0xdab7b28 loads 4 bytes from [0x1010] +0x7b40.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x7b40, including `sw` at 0xdab7b34, `sw` at 0xdab7b58, `sw` at 0xdab7df8.
  14 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xdab7c38, `swc1` at 0xdab7c40, `swc1` at 0xdab7c44.
  The `jalr` at 0xdab7408 calls __glOdysseyImageLogBase2 [0xdaa6250] with a0=?, a1=0xde0, a2=?, a3=[0x1010].
  The `jalr` at 0xdab744c calls __glOdysseyImageLogBase2 [0xdaa6250] with a0=?, a1=?, a2=?, a3=[0x1010].
  The `jalr` at 0xdab7628 calls ChooseSuitableBuzzTexModeBaseFmt [0xdab5c18] with a0=?, a1=?, a2=?, a3=[0x1010].
  The `jalr` at 0xdab7880 calls GetImageFmtEnumFromBuzzTexFormat [0xdab5b58] with a0=?, a1=[0x1010]+32768, a2=?, a3=[0x1010].
  The `jalr` at 0xdab7894 calls __glOdysseyImageCalcFieldFormat [0xda6b2e8] with a0=ret(GetImageFmtEnumFromBuzzTexFormat), a1=?, a2=?, a3=?.
  The `jalr` at 0xdab7bd4 calls __glOdysseyValidateHardware [0xda47694] with a0=[0x1010], a1=[0x1010]+32768, a2=?, a3=[0x1010].
  The `bnel` branch at 0xdab72ac targets 0xdab72cc, is taken when v1(=0x2) != t6(?), and falls through when v1(=0x2) == t6(?); its branch-likely delay slot `lw t9,12(a0)` at 0xdab72b0 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xdab72bc targets 0xdab72cc, is taken when v1(=0x2) != t7(?), and falls through when v1(=0x2) == t7(?); its branch-likely delay slot `lw t9,12(a0)` at 0xdab72c0 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xdab72d4 targets 0xdab72f8, is taken when a1(=0xde0) != t9(=[a0+12]), and falls through when a1(=0xde0) == t9(=[a0+12]); its branch-likely delay slot `lw t9,31520(a3)` at 0xdab72d8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdab72ec targets 0xdab7308 and is always taken.
  The `beq` branch at 0xdab7334 targets 0xdab7358, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xdab733c targets 0xdab7364, is taken when v1(?) == at(=0x1), and falls through when v1(?) != at(=0x1).
  The `beq` branch at 0xdab7348 targets 0xdab736c, is taken when v1(?) == at(=0x8), and falls through when v1(?) != at(=0x8).
  The `beq` branch at 0xdab7350 targets 0xdab7378 and is always taken.
  The `beq` branch at 0xdab735c targets 0xdab7378 and is always taken.
  The `beq` branch at 0xdab7364 targets 0xdab7378 and is always taken.
  The `beq` branch at 0xdab736c targets 0xdab7378 and is always taken.
  The `beq` branch at 0xdab7390 targets 0xdab73a0, is taken when a1(=0xde0) == t8(=[a0+12]), and falls through when a1(=0xde0) != t8(=[a0+12]).
  The `beq` branch at 0xdab7398 targets 0xdab73a4 and is always taken.
  The `beq` branch at 0xdab73a4 targets 0xdab73bc, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xdab73b4 targets 0xdab73c0 and is always taken.
  The `beq` branch at 0xdab73c0 targets 0xdab73d8, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xdab73d0 targets 0xdab73e0 and is always taken.
  The `beq` branch at 0xdab74c0 targets 0xdab74f8, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0xdab74f0 targets 0xdab751c and is always taken.
  The `beq` branch at 0xdab7534 targets 0xdab7564, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0xdab755c targets 0xdab7580 and is always taken.
  The `bne` branch at 0xdab7590 targets 0xdab75a0, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0xdab7598 targets 0xdab75d4, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0xdab75cc targets 0xdab7600 and is always taken.
  The `beq` branch at 0xdab7774 targets 0xdab77a4, is taken when t8(=[[0x1010]+38736]) == 0, and falls through when t8(=[[0x1010]+38736]) != 0.
  The `beq` branch at 0xdab79ec targets 0xdab7a64, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bgez` branch at 0xdab7a18 targets 0xdab7a34, is taken when t8(?) >= 0 (signed), and falls through when t8(?) < 0 (signed).
  The `beq` branch at 0xdab7a5c targets 0xdab7aa0 and is always taken.
  The `beq` branch at 0xdab7aa0 targets 0xdab7af8, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bgez` branch at 0xdab7ab8 targets 0xdab7ad0, is taken when t9(?) >= 0 (signed), and falls through when t9(?) < 0 (signed).
  The `beq` branch at 0xdab7af0 targets 0xdab7b18 and is always taken.
  The `beql` branch at 0xdab7ba8 targets 0xdab7c18, is taken when t8(=[[0x1010]+92368]) == 0, and falls through when t8(=[[0x1010]+92368]) != 0; its branch-likely delay slot `lui t7,0x1` at 0xdab7bac runs only when taken and is annulled on fall-through.
  The `bgez` branch at 0xdab7c4c targets 0xdab7c64, is taken when t8(?) >= 0 (signed), and falls through when t8(?) < 0 (signed).
  The `bgez` branch at 0xdab7c74 targets 0xdab7c88, is taken when t7(?) >= 0 (signed), and falls through when t7(?) < 0 (signed).
  The `bgez` branch at 0xdab7ca4 targets 0xdab7cb8, is taken when t8(?) >= 0 (signed), and falls through when t8(?) < 0 (signed).
  The `bgez` branch at 0xdab7cd8 targets 0xdab7cec, is taken when t9(?) >= 0 (signed), and falls through when t9(?) < 0 (signed).
  The `beq` branch at 0xdab7d50 targets 0xdab7d6c, is taken when t7(=[[0x1010]+38736]) == 0, and falls through when t7(=[[0x1010]+38736]) != 0.
  The return at 0xdab7e2c has v0 = ?.
  The instructions from 0xdab72f4 to 0xdab72f4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdab7374 to 0xdab7374 are not reached by any path from the entry, and their branches are not listed.

- `__glOdysseyTextureDeactivate` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab8908 (o32).
  Releases the object reference held in the record at arg1 and then in the record found through the
  context at arg0, and fills the dword slots of both records with fixed marker words. It calls
  `__glOdysseyClosePMObjReference` through the pointer at absolute 0xdbd7520, with arg0 and the
  words at arg1+0x534, +0x53c and +0x540 as its arguments (the `jalr` at 0xdab8938). If that call
  returned zero, it first calls `__glSetError` with 0x505 (the `jalr` at 0xdab8950); either way it
  then writes zero to arg1+0x538 (the `sw` at 0xdab8960).
  Inferred: the committed note for `__glSetError` says it records the first GL error code of the
  context, so the call at 0xdab8950 records error 0x505 when the first call returns zero.
  A loop then writes the constant 0xffffffffdeadbeef (the `sw` at 0xdab8980, in the delay slot of
  the `bne` at 0xdab897c) 16 times to arg1+0x554, with the base starting at arg1 and stepping by 4
  each pass, so the first store lands one step past arg1+0x554; the counter in v1 starts at 0, rises
  by 1 per pass and the loop ends when it reaches 0x10. It then reloads the saved arg0, reads the
  record pointer at a0+0x164b8 (the `lw` at 0xdab8990) and the word at +0x538 of that record (the
  `lw` at 0xdab8994). When that word is zero (the `beql` at 0xdab8998) it skips to the final loop.
  When it is nonzero it calls `__glOdysseyClosePMObjReference` on that record with its words at
  +0x534, +0x53c and +0x540 (the `jalr` at 0xdab89ac), calls `__glSetError` with 0x505 if that
  return is zero (the `jalr` at 0xdab89c4), and in both cases writes zero to +0x538 of the record
  (the `sw` at 0xdab89d0). The final loop, reached on both paths, sets v0 to 0xffffffffbaadcade and
  stores it, in each of four passes, to +0x55c, +0x560 and +0x564 of a base that starts at the
  record from a0+0x164b8 and steps by 0x10 per pass (the `sw` at 0xdab89ec to 0xdab89f4), and to
  +0x548 from the already stepped base in the delay slot of the `bne` at 0xdab89fc (the `sw` at
  0xdab8a00); the counter v1 steps by 4 until it reaches 0x10. The routine returns
  0xffffffffbaadcade.
  Unknown: which reader consumes the marker words stored from +0x554 on in the two records; the
  bundle shows only the stores, and a routine that reads those slots would settle it.
  Evidence grade: inferred.

- `__glOdysseyTextureDeactivate` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab8908 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdab8908-0xdab8a18 (272 bytes).
  It occupies 272 bytes.
  The `lw` at 0xdab8930 loads 4 bytes from a1 (arg1 at entry) +0x540.
  The `lw` at 0xdab8934 loads 4 bytes from a1 (arg1 at entry) +0x53c.
  The `lw` at 0xdab893c loads 4 bytes from a1 (arg1 at entry) +0x534.
  The `sw` at 0xdab8960 stores 4 bytes to a1 (arg1 at entry) +0x538.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xdab8980, `sw` at 0xdab89ec, `sw` at 0xdab89f0.
  The `lw` at 0xdab8990 loads 4 bytes from a0 (arg0 at entry) +0x164b8.
  The `lw` at 0xdab8994 loads 4 bytes from [a0+91320] +0x538.
  The `lw` at 0xdab89a4 loads 4 bytes from [a0+91320] +0x534.
  The `lw` at 0xdab89a8 loads 4 bytes from [a0+91320] +0x53c.
  The `lw` at 0xdab89b0 loads 4 bytes from [a0+91320] +0x540.
  The `sw` at 0xdab89d0 stores 4 bytes to [a0+91320] +0x538.
  The `jalr` at 0xdab8938 calls __glOdysseyClosePMObjReference [0xdaad5a0] with a0=a0 at entry (arg0), a1=[a1+1332], a2=[a1+1340], a3=[a1+1344].
  The `jalr` at 0xdab8950 calls __glSetError [0xdb1ac34] with a0=0x505, a1=?, a2=?, a3=?.
  The `jalr` at 0xdab89ac calls __glOdysseyClosePMObjReference [0xdaad5a0] with a0=a0 at entry (arg0), a1=[[a0+91320]+1332], a2=[[a0+91320]+1340], a3=[[a0+91320]+1344].
  The `jalr` at 0xdab89c4 calls __glSetError [0xdb1ac34] with a0=0x505, a1=?, a2=?, a3=?.
  The `bne` branch at 0xdab8940 targets 0xdab895c, is taken when v0(=ret(__glOdysseyClosePMObjReference)) != 0, and falls through when v0(=ret(__glOdysseyClosePMObjReference)) == 0.
  The `bne` branch at 0xdab897c targets 0xdab8970, is taken when v1(?) < 0x10 (signed), and falls through when v1(?) >= 0x10 (signed).
  The `beql` branch at 0xdab8998 targets 0xdab89d8, is taken when t6(=[[a0+91320]+1336]) == 0, and falls through when t6(=[[a0+91320]+1336]) != 0; its branch-likely delay slot `lui v0,0xbaad` at 0xdab899c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdab89b4 targets 0xdab89d0, is taken when v0(=ret(__glOdysseyClosePMObjReference)) != 0, and falls through when v0(=ret(__glOdysseyClosePMObjReference)) == 0.
  The `bne` branch at 0xdab89fc targets 0xdab89e8, is taken when v1(?) != a1(=0x10), and falls through when v1(?) == a1(=0x10).
  The return at 0xdab8a10 has v0 = 0xffffffffbaadcade.

- `__glOdysseyValidateClipmap` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab8a98 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdab8a98-0xdab97e8 (3408 bytes).
  It occupies 3408 bytes.
  The `lw` at 0xdab8aa4 loads 4 bytes from a0 (arg0 at entry) +0xe8c.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x5b4, including `lw` at 0xdab8ab4, `lw` at 0xdab8cd4.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x5b8, including `lw` at 0xdab8ac8, `lw` at 0xdab8cf0.
  13 such `lw` accesses load 4 bytes from ?, including `lw` at 0xdab8af8, `lw` at 0xdab8b08, `lw` at 0xdab8b2c.
  5 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x10, including `sw` at 0xdab8b50, `sw` at 0xdab8ba8, `sw` at 0xdab8be0.
  The `sw` at 0xdab8b54 stores 4 bytes to a1 (arg1 at entry) +0xbc.
  The `lw` at 0xdab8b58 loads 4 bytes from a1 (arg1 at entry) +0x5b0.
  The `lwc1` at 0xdab8c24 loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `lw` at 0xdab8c38 loads 4 bytes from a1 (arg1 at entry) +0xe0.
  The `lw` at 0xdab8c44 loads 4 bytes from a1 (arg1 at entry) +0xf4.
  The `lw` at 0xdab8c64 loads 4 bytes from a1 (arg1 at entry) +0xc4.
  The `sw` at 0xdab8c94 stores 4 bytes to a1 (arg1 at entry) +0xe0.
  The `lw` at 0xdab8c98 loads 4 bytes from a1 (arg1 at entry) +0xb0.
  The `sw` at 0xdab8ca8 stores 4 bytes to a1 (arg1 at entry) +0xf4.
  The `lw` at 0xdab8cb4 loads 4 bytes from a1 (arg1 at entry) +0xb4.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0xc4, including `sw` at 0xdab8cc8, `sw` at 0xdab8cf4.
  The `lw` at 0xdab8cdc loads 4 bytes from a1 (arg1 at entry) +0xc8.
  The `lw` at 0xdab8cfc loads 4 bytes from a1 (arg1 at entry) +0xcc.
  The `sw` at 0xdab8d08 stores 4 bytes to a1 (arg1 at entry) +0xc8.
  The `sw` at 0xdab8d18 stores 4 bytes to a1 (arg1 at entry) +0xcc.
  The `blezl` branch at 0xdab8aac targets 0xdab8b1c, is taken when v0(=[a0+3724]) <= 0 (signed), and falls through when v0(=[a0+3724]) > 0 (signed); its branch-likely delay slot `addiu t4,zero,68` at 0xdab8ab0 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xdab8ac0 targets 0xdab8b1c, is taken when t6(=[a1+1460]) < 0x2 (signed), and falls through when t6(=[a1+1460]) >= 0x2 (signed); its branch-likely delay slot `addiu t4,zero,68` at 0xdab8ac4 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xdab8ad4 targets 0xdab8b1c, is taken when t7(=[a1+1464]) < 0x2 (signed), and falls through when t7(=[a1+1464]) >= 0x2 (signed); its branch-likely delay slot `addiu t4,zero,68` at 0xdab8ad8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xdab8ae4 targets 0xdab8b1c, is taken when a2(?) >= v0(=[a0+3724]) (signed), and falls through when a2(?) < v0(=[a0+3724]) (signed); its branch-likely delay slot `addiu t4,zero,68` at 0xdab8ae8 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xdab8b00 targets 0xdab8b1c, is taken when t9(?) < 0x2 (signed), and falls through when t9(?) >= 0x2 (signed); its branch-likely delay slot `addiu t4,zero,68` at 0xdab8b04 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xdab8b10 targets 0xdab8ae0, is taken when t5(?) >= 0x2 (signed), and falls through when t5(?) < 0x2 (signed); its branch-likely delay slot `addiu a2,a2,1` at 0xdab8b14 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdab8b30 targets 0xdab8b4c, is taken when v1(=0x1) != t7(?), and falls through when v1(=0x1) == t7(?).
  The `beq` branch at 0xdab8b44 targets 0xdab8b54, is taken when v1(=0x1) == t8(?), and falls through when v1(=0x1) != t8(?).
  The `bltz` branch at 0xdab8b60 targets 0xdab8c20, is taken when t3(?) < 0 (signed), and falls through when t3(?) >= 0 (signed).
  The `bne` branch at 0xdab8b80 targets 0xdab8ba4, is taken when a3(=[a1+1456]) != t5(?), and falls through when a3(=[a1+1456]) == t5(?).
  The `bne` branch at 0xdab8b90 targets 0xdab8ba4, is taken when a2(?) != t3(?), and falls through when a2(?) == t3(?).
  The `beq` branch at 0xdab8b9c targets 0xdab8bac, is taken when t6(?) == 0, and falls through when t6(?) != 0.
  The `beq` branch at 0xdab8bac targets 0xdab8be4, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xdab8bb4 targets 0xdab8bcc, is taken when t0(?) != a2(?), and falls through when t0(?) == a2(?).
  The `bne` branch at 0xdab8bbc targets 0xdab8bcc, is taken when t1(?) != t3(?), and falls through when t1(?) == t3(?).
  The `beq` branch at 0xdab8bc4 targets 0xdab8c10 and is always taken.
  The `bne` branch at 0xdab8bcc targets 0xdab8bdc, is taken when t7(?) != a2(?), and falls through when t7(?) == a2(?).
  The `beql` branch at 0xdab8bd4 targets 0xdab8c14, is taken when t8(?) == t3(?), and falls through when t8(?) != t3(?); its branch-likely delay slot `addiu t2,t2,-1` at 0xdab8bd8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdab8bf4 targets 0xdab8c08, is taken when a2(?) != t5(?), and falls through when a2(?) == t5(?).
  The `beql` branch at 0xdab8c00 targets 0xdab8c14, is taken when t3(?) == t6(?), and falls through when t3(?) != t6(?); its branch-likely delay slot `addiu t2,t2,-1` at 0xdab8c04 runs only when taken and is annulled on fall-through.
  The `bgez` branch at 0xdab8c18 targets 0xdab8b78, is taken when t2(?) >= 0 (signed), and falls through when t2(?) < 0 (signed).
  The return at 0xdab8b4c has v0 = one of [a0+3724], 0x0.
  The return at 0xdab8ba4 has v0 = ?.
  The return at 0xdab8bdc has v0 = ?.
  The return at 0xdab8c08 has v0 = ?.
  The return at 0xdab8d1c has v0 = one of 0x0, ?.
  The instructions from 0xdab8d24 to 0xdab97e4 are not reached by any path from the entry, and their branches are not listed.

- `IsLegalRange` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab97e8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdab97e8-0xdab9868 (128 bytes).
  It occupies 128 bytes.
  The `jalr` at 0xdab9844 calls __glSetError [0xdb1ac34] with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bltz` branch at 0xdab97fc targets 0xdab9810, is taken when a1 < 0 (signed), and falls through when a1 >= 0 (signed).
  The `bne` branch at 0xdab9808 targets 0xdab9818, is taken when a1 < 0x2 (signed), and falls through when a1 >= 0x2 (signed).
  The `beq` branch at 0xdab9810 targets 0xdab9858 and is always taken.
  The `bltz` branch at 0xdab981c targets 0xdab983c, is taken when a0(?) < 0 (signed), and falls through when a0(?) >= 0 (signed).
  The `bne` branch at 0xdab9828 targets 0xdab983c, is taken when (v0(?) & a0(?)) != 0, and falls through when (v0(?) & a0(?)) == 0.
  The `bne` branch at 0xdab9834 targets 0xdab9858, is taken when v0(?) < at(=0x8000) (signed), and falls through when v0(?) >= at(=0x8000) (signed).
  The `beq` branch at 0xdab9850 targets 0xdab9858 and is always taken.
  The return at 0xdab9860 has v0 = one of 0x0, 0x1.

- `__glOdyim_BindTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdabec14 (o32).
  Takes a target token in `a0` and a name in `a1`, works on the context whose pointer sits at abs 0x1010,
  and ends by storing a record pointer into a per-target slot of that context.
  When the word at abs 0x1018 equals 1 (`bne` at 0xdabec48 falls through) it calls `__glSetError` with
  0x502 (`jalr` at 0xdabec58) and returns. Otherwise `a0` is matched against 0xde0, 0xde1, 0x806f and
  0x8095 (`beq` at 0xdabec6c, 0xdabec78, 0xdabec80 and 0xdabec88), which set `t0` to 0, 1, 2 and 3 (the
  delay slots at 0xdabec9c, 0xdabeca4, 0xdabecb4 and 0xdabecac); any other `a0` calls `__glSetError` with
  0x500 (`jalr` at 0xdabecc0) and returns.
  With `a1` zero (`bne` at 0xdabecd0 not taken) `a3` becomes the context pointer plus a multiple of `t0`
  plus 0x11fc4 (`addu` at 0xdabed04); with `a1` nonzero, `__glNamesLockData` is called with the context
  pointer, the word at +0x164bc and `a1` (`jalr` at 0xdabed1c), and its result becomes `a3`.
  A zero `a3` (`bne` at 0xdabed30 not taken) calls the routine behind the pointer at +0x0 of the context
  with 0x9d8 as its second argument (`jalr` at 0xdabed48). A zero result calls `__glSetError` with 0x505
  (`jalr` at 0xdabed68) and returns. A nonzero result is passed as the first argument of
  `InitTextureObject` (`jalr` at 0xdabed9c, with `a1` and `a0` as received), then `__glNamesNewData` is
  called with the context, the word at +0x164bc, `a1` and the new record (`jalr` at 0xdabedbc); a zero
  result returns, otherwise the word at +0x0 of the new record is loaded and stored back plus one (`sw` at
  0xdabede0, in the delay slot of the branch to the tail).
  A nonzero `a3` (taken `bne` at 0xdabed30) compares `a0` with the word at +0xc of the record `a3` points to
  (`beql` at 0xdabede8); when they differ it calls `__glSetError` with 0x502 (`jalr` at 0xdabedf8) and
  returns.
  The shared tail from 0xdabee0c works on a slot of the context at +0x64ac from the pointer plus 0x10000,
  indexed by `t0` scaled by 4 (`lw` at 0xdabee18). If the word at +0x8 of the record already in that slot
  is nonzero (`beql` at 0xdabee28), `__glNamesUnlockData` is called on it (`jalr` at 0xdabee3c); either way
  `a3` is stored into the slot (`sw` at 0xdabee2c or 0xdabee54). It then ORs 0x116200 into the word at +0xc0
  of `a3` (`sw` at 0xdabee68), ORs 0x200 into the context word at +0x168d4 (`lw` at 0xdabee6c, `sw` at
  0xdabee7c), writes 2 to abs 0x1018 (`sw` at 0xdabee84) and loads and stores back the word at +0x2d44
  (0xdabee88, 0xdabee8c). Finally, when the word at +0x164c0 is nonzero and differs from `a3` (`beql` at
  0xdabee94 and 0xdabee9c), it calls `__glOdysseyTextureDeactivate` with that word (`jalr` at 0xdabeeb0) and
  clears it (`sw` at 0xdabeec4).
  Inferred: `__glSetError` records its argument as the context's first GL error code, from its callee note,
  so 0x500, 0x502 and 0x505 are GL error codes here.
  Unknown: the content of the routine behind the pointer at +0x0 of the context, since the bundle has no
  note for it, and the changes `InitTextureObject` makes to the record, since its note is a bare row.
  Evidence grade: inferred.

- `__glOdyim_BindTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdabec14 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdabec14-0xdabeedc (712 bytes).
  It occupies 712 bytes.
  The `lw` at 0xdabec3c loads 4 bytes from abs 0x1018.
  The `lw` at 0xdabec44 loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x164bc, including `lw` at 0xdabed14, `lw` at 0xdabedc0.
  The `lw` at 0xdabed3c loads 4 bytes from [0x1010] +0x0.
  The `lw` at 0xdabedd4 loads 4 bytes from ret(?) +0x0.
  The `sw` at 0xdabede0 stores 4 bytes to ret(?) +0x0.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xdabede4, `lw` at 0xdabee18, `lw` at 0xdabee24.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0xdabee2c, `sw` at 0xdabee54, `sw` at 0xdabee68.
  The `lw` at 0xdabee6c loads 4 bytes from [0x1010] +0x168d4.
  The `sw` at 0xdabee7c stores 4 bytes to [0x1010] +0x168d4.
  The `sw` at 0xdabee84 stores 4 bytes to abs 0x1018.
  The `lw` at 0xdabee88 loads 4 bytes from [0x1010] +0x2d44.
  The `sw` at 0xdabee8c stores 4 bytes to [0x1010] +0x2d44.
  The `lw` at 0xdabee90 loads 4 bytes from [0x1010] +0x164c0.
  The `sw` at 0xdabeec4 stores 4 bytes to [0x1010] +0x164c0.
  The `jalr` at 0xdabec58 calls __glSetError [0xdb1ac34] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdabecc0 calls __glSetError [0xdb1ac34] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdabed1c calls __glNamesLockData [0xdb3d700] with a0=[0x1010], a1=[[0x1010]+91324], a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `jalr` at 0xdabed48 calls (unknown callee) with a0=[0x1010], a1=0x9d8, a2=?, a3=?.
  The `jalr` at 0xdabed68 calls __glSetError [0xdb1ac34] with a0=0x505, a1=?, a2=?, a3=ret(?).
  The `jalr` at 0xdabed9c calls InitTextureObject [0xdab53e0] with a0=ret(?), a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=ret(?).
  The `jalr` at 0xdabedbc calls __glNamesNewData [0xdb3d17c] with a0=[0x1010], a1=[[0x1010]+91324], a2=a1 at entry (arg1), a3=ret(?).
  The `jalr` at 0xdabedf8 calls __glSetError [0xdb1ac34] with a0=0x502, a1=?, a2=?, a3=?.
  The `jalr` at 0xdabee3c calls __glNamesUnlockData [0xdb3e144] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xdabeeb0 calls __glOdysseyTextureDeactivate [0xdab8908] with a0=[0x1010], a1=[[0x1010]+91328], a2=?, a3=?.
  The `bne` branch at 0xdabec48 targets 0xdabec68, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xdabec60 targets 0xdabeec8 and is always taken.
  The `beq` branch at 0xdabec6c targets 0xdabec98, is taken when t7(=a0) == at(=0xde0), and falls through when t7(=a0) != at(=0xde0).
  The `beq` branch at 0xdabec78 targets 0xdabeca0, is taken when t7(=a0) == at(=0xde1), and falls through when t7(=a0) != at(=0xde1).
  The `beq` branch at 0xdabec80 targets 0xdabecb0, is taken when t7(=a0) == at(=0x806f), and falls through when t7(=a0) != at(=0x806f).
  The `beq` branch at 0xdabec88 targets 0xdabeca8, is taken when t7(=a0) == at(=0x8095), and falls through when t7(=a0) != at(=0x8095).
  The `beq` branch at 0xdabec90 targets 0xdabecb8 and is always taken.
  The `beq` branch at 0xdabec98 targets 0xdabecd0 and is always taken.
  The `beq` branch at 0xdabeca0 targets 0xdabecd0 and is always taken.
  The `beq` branch at 0xdabeca8 targets 0xdabecd0 and is always taken.
  The `beq` branch at 0xdabecb0 targets 0xdabecd0 and is always taken.
  The `beq` branch at 0xdabecc8 targets 0xdabeec8 and is always taken.
  The `bne` branch at 0xdabecd0 targets 0xdabed08, is taken when t8(=a1) != 0, and falls through when t8(=a1) == 0.
  The `beq` branch at 0xdabed00 targets 0xdabed30 and is always taken.
  The `bne` branch at 0xdabed30 targets 0xdabede4, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `bne` branch at 0xdabed58 targets 0xdabed78, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0.
  The `beq` branch at 0xdabed70 targets 0xdabeec8 and is always taken.
  The `beq` branch at 0xdabedcc targets 0xdabeec8, is taken when v0(=ret(__glNamesNewData)) == 0, and falls through when v0(=ret(__glNamesNewData)) != 0.
  The `beq` branch at 0xdabeddc targets 0xdabee08 and is always taken.
  The `beql` branch at 0xdabede8 targets 0xdabee0c, is taken when t3(=a0) == t4(?), and falls through when t3(=a0) != t4(?); its branch-likely delay slot `sll t5,t0,0x2` at 0xdabedec runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdabee00 targets 0xdabeec8 and is always taken.
  The `beql` branch at 0xdabee28 targets 0xdabee58, is taken when t6(?) == 0, and falls through when t6(?) != 0; its branch-likely delay slot `sw a3,25772(v1)` at 0xdabee2c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xdabee94 targets 0xdabeecc, is taken when a1(=[[0x1010]+91328]) == 0, and falls through when a1(=[[0x1010]+91328]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xdabee98 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xdabee9c targets 0xdabeecc, is taken when a3(?) == a1(=[[0x1010]+91328]), and falls through when a3(?) != a1(=[[0x1010]+91328]); its branch-likely delay slot `lw ra,28(sp)` at 0xdabeea0 runs only when taken and is annulled on fall-through.
  The return at 0xdabeed4 has v0 = one of [0x1010]+65536, ?.

- `__glOdyim_DeleteTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdabeedc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdabeedc-0xdabf170 (660 bytes).
  It occupies 660 bytes.
  The `lw` at 0xdabef20 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdabef30 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdabef70 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0xdabef7c loads 4 bytes from [0x1010] +0x164bc.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x164c0, including `lw` at 0xdabef9c, `lw` at 0xdabf0fc.
  9 such `lw` accesses load 4 bytes from ?, including `lw` at 0xdabefa4, `lw` at 0xdabefac, `lw` at 0xdabefb4.
  The `lw` at 0xdabefa8 loads 4 bytes from [[0x1010]+91328] +0x8.
  The `sw` at 0xdabefd8 stores 4 bytes to [0x1010] +0x164c0.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xdabf07c, `sw` at 0xdabf080.
  The `lw` at 0xdabf084 loads 4 bytes from [0x1010] +0x168d0.
  The `sw` at 0xdabf09c stores 4 bytes to [0x1010] +0x168d0.
  2 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xdabf0a4, `sw` at 0xdabf134.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x2d44, including `lw` at 0xdabf0a8, `lw` at 0xdabf138.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x2d44, including `sw` at 0xdabf0ac, `sw` at 0xdabf13c.
  The `lw` at 0xdabf118 loads 4 bytes from [0x1010] +0x168d4.
  The `sw` at 0xdabf12c stores 4 bytes to [0x1010] +0x168d4.
  The `jalr` at 0xdabef3c calls __glSetError [0xdb1ac34] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdabef60 calls __glSetError [0xdb1ac34] with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdabefc4 calls __glOdysseyTextureDeactivate [0xdab8908] with a0=[0x1010], a1=[[0x1010]+91328], a2=?, a3=?.
  The `jalr` at 0xdabf000 calls __glNamesDeleteRange [0xdb3e580] with a0=[0x1010], a1=[[0x1010]+91324], a2=?, a3=?.
  The `jalr` at 0xdabf034 calls __glNamesUnlockData [0xdb3e144] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xdabf0d8 calls __glNamesDeleteRange [0xdb3e580] with a0=[0x1010], a1=[[0x1010]+91324], a2=?, a3=?.
  The `jalr` at 0xdabf110 calls __glNamesDeleteRange [0xdb3e580] with a0=[0x1010], a1=[[0x1010]+91324], a2=?, a3=?.
  The `bne` branch at 0xdabef2c targets 0xdabef4c, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xdabef44 targets 0xdabf140 and is always taken.
  The `bgezl` branch at 0xdabef50 targets 0xdabef70, is taken when t7(=a0) >= 0 (signed), and falls through when t7(=a0) < 0 (signed); its branch-likely delay slot `lw t8,120(sp)` at 0xdabef54 runs only when taken and is annulled on fall-through.
  The `blez` branch at 0xdabef84 targets 0xdabf100, is taken when t8(=a0) <= 0 (signed), and falls through when t8(=a0) > 0 (signed).
  The `beql` branch at 0xdabefa0 targets 0xdabefe0, is taken when a1(=[[0x1010]+91328]) == 0, and falls through when a1(=[[0x1010]+91328]) != 0; its branch-likely delay slot `lw v0,0(s4)` at 0xdabefa4 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xdabefb0 targets 0xdabefe0, is taken when t1(=[[[0x1010]+91328]+8]) != t2(?), and falls through when t1(=[[[0x1010]+91328]+8]) == t2(?); its branch-likely delay slot `lw v0,0(s4)` at 0xdabefb4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdabefe8 targets 0xdabf018, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0xdabf010 targets 0xdabf0ec and is always taken.
  The `bnel` branch at 0xdabf024 targets 0xdabf0bc, is taken when t3(?) != v0(?), and falls through when t3(?) == v0(?); its branch-likely delay slot `addiu s0,s0,1` at 0xdabf028 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdabf0b0 targets 0xdabf0c4 and is always taken.
  The `bne` branch at 0xdabf0bc targets 0xdabf01c, is taken when s0(?) != s3(=0x4), and falls through when s0(?) == s3(=0x4).
  The `beq` branch at 0xdabf0c4 targets 0xdabf0ec, is taken when s5(?) == v0(?), and falls through when s5(?) != v0(?).
  The `bnel` branch at 0xdabf0f8 targets 0xdabefa0, is taken when s4(?) != t1(=((a0 << 0x2) + a1)), and falls through when s4(?) == t1(=((a0 << 0x2) + a1)); its branch-likely delay slot `lw a1,25792(s7)` at 0xdabf0fc runs only when taken and is annulled on fall-through.
  The return at 0xdabf168 has v0 = one of ret(__glSetError), ret(__glNamesDeleteRange).
  The instructions from 0xdabf0b8 to 0xdabf0b8 are not reached by any path from the entry, and their branches are not listed.

- `__glOdyim_GenTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdabf170 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdabf170-0xdabf21c (172 bytes).
  It occupies 172 bytes.
  The `lw` at 0xdabf18c loads 4 bytes from abs 0x1010.
  The `lw` at 0xdabf19c loads 4 bytes from abs 0x1018.
  The `lw` at 0xdabf204 loads 4 bytes from [0x1010] +0x164bc.
  The `jalr` at 0xdabf1b4 calls __glSetError [0xdb1ac34] with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `jalr` at 0xdabf1d4 calls __glSetError [0xdb1ac34] with a0=0x501, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `jalr` at 0xdabf200 calls __glNamesGenNames [0xdb3e9f4] with a0=[0x1010], a1=[[0x1010]+91324], a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `bne` branch at 0xdabf1a4 targets 0xdabf1c4, is taken when t7(=[0x1018]) != at(=0x1), and falls through when t7(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xdabf1bc targets 0xdabf20c and is always taken.
  The `bgez` branch at 0xdabf1c4 targets 0xdabf1e4, is taken when a2(=a0) >= 0 (signed), and falls through when a2(=a0) < 0 (signed).
  The `beq` branch at 0xdabf1dc targets 0xdabf20c and is always taken.
  The `beql` branch at 0xdabf1e4 targets 0xdabf210, is taken when a3(=a1) == 0, and falls through when a3(=a1) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xdabf1e8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdabf1ec targets 0xdabf20c, is taken when a2(=a0) == 0, and falls through when a2(=a0) != 0.
  The return at 0xdabf214 has v0 = one of 0x1000, ?.

- `__glOdyim_AreTexturesResident` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdabf29c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdabf29c-0xdabf438 (412 bytes).
  It occupies 412 bytes.
  The `lw` at 0xdabf2e4 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdabf2f8 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdabf350 loads 4 bytes from ?.
  The `lw` at 0xdabf380 loads 4 bytes from [0x1010] +0x164bc.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0xdabf3d4, `sb` at 0xdabf3dc.
  The `jalr` at 0xdabf304 calls __glSetError [0xdb1ac34] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdabf328 calls __glSetError [0xdb1ac34] with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdabf364 calls __glSetError [0xdb1ac34] with a0=0x501, a1=?, a2=?, a3=?.
  The `jalr` at 0xdabf384 calls __glNamesLockData [0xdb3d700] with a0=[0x1010], a1=[[0x1010]+91324], a2=?, a3=?.
  The `jalr` at 0xdabf3a0 calls __glSetError [0xdb1ac34] with a0=0x501, a1=?, a2=?, a3=?.
  The `jalr` at 0xdabf3c0 calls __glOdysseyIsTextureResident [0xdabf21c] with a0=[0x1010], a1=ret(__glNamesLockData), a2=?, a3=?.
  The `jalr` at 0xdabf3ec calls __glNamesUnlockData [0xdb3e144] with a0=[0x1010], a1=ret(__glNamesLockData), a2=?, a3=?.
  The `bne` branch at 0xdabf2f4 targets 0xdabf318, is taken when t7(=[0x1018]) != at(=0x1), and falls through when t7(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xdabf310 targets 0xdabf408 and is always taken.
  The `bgez` branch at 0xdabf318 targets 0xdabf33c, is taken when s7(=a0) >= 0 (signed), and falls through when s7(=a0) < 0 (signed).
  The `beq` branch at 0xdabf334 targets 0xdabf408 and is always taken.
  The `blez` branch at 0xdabf33c targets 0xdabf404, is taken when s7(=a0) <= 0 (signed), and falls through when s7(=a0) > 0 (signed).
  The `bne` branch at 0xdabf354 targets 0xdabf378, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0xdabf370 targets 0xdabf408 and is always taken.
  The `bne` branch at 0xdabf390 targets 0xdabf3b4, is taken when v0(=ret(__glNamesLockData)) != 0, and falls through when v0(=ret(__glNamesLockData)) == 0.
  The `beq` branch at 0xdabf3ac targets 0xdabf408 and is always taken.
  The `beq` branch at 0xdabf3c8 targets 0xdabf3d8, is taken when v0(=ret(__glOdysseyIsTextureResident)) == 0, and falls through when v0(=ret(__glOdysseyIsTextureResident)) != 0.
  The `beq` branch at 0xdabf3d0 targets 0xdabf3e0 and is always taken.
  The `bne` branch at 0xdabf3fc targets 0xdabf350, is taken when s2(?) != s7(=a0), and falls through when s2(?) == s7(=a0).
  The return at 0xdabf430 has v0 = one of 0x0, ?.

- `Clampf` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdabf438 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdabf438-0xdac07a4 (4972 bytes).
  It occupies 4972 bytes.
  The `bc1fl` branch at 0xdabf444 targets 0xdabf458, is taken when not (f12 < f14 (c.lt.s at 0xdabf438)), and falls through when f12 < f14 (c.lt.s at 0xdabf438); its branch-likely delay slot `c.lt.s $f4,$f12` at 0xdabf448 runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xdabf45c targets 0xdabf470, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `mov.s $f0,$f12` at 0xdabf460 runs only when taken and is annulled on fall-through.
  The return at 0xdabf44c has v0 = ?.
  The return at 0xdabf464 has v0 = ?.
  The return at 0xdabf470 has v0 = ?.
  The instructions from 0xdabf454 to 0xdabf454 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdabf46c to 0xdabf46c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdabf478 to 0xdac07a0 are not reached by any path from the entry, and their branches are not listed.

- `__glOdyim_PrioritizeTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdabf478 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdabf478-0xdabf5f8 (384 bytes).
  It occupies 384 bytes.
  The `lw` at 0xdabf4b8 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdabf4d0 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdabf524 loads 4 bytes from ?.
  The `lw` at 0xdabf538 loads 4 bytes from [0x1010] +0x164bc.
  The `lwc1` at 0xdabf554 loads 4 bytes from ?.
  The `lw` at 0xdabf560 loads 4 bytes from [0x1010] +0xdd0.
  The `swc1` at 0xdabf574 stores 4 bytes to ret(__glNamesLockData) +0x3c.
  The `lw` at 0xdabf5a4 loads 4 bytes from [0x1010] +0x168d4.
  The `sw` at 0xdabf5b4 stores 4 bytes to [0x1010] +0x168d4.
  The `sw` at 0xdabf5bc stores 4 bytes to abs 0x1018.
  The `lw` at 0xdabf5c0 loads 4 bytes from [0x1010] +0x2d44.
  The `sw` at 0xdabf5c4 stores 4 bytes to [0x1010] +0x2d44.
  The `jalr` at 0xdabf4dc calls __glSetError [0xdb1ac34] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdabf4fc calls __glSetError [0xdb1ac34] with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdabf53c calls __glNamesLockData [0xdb3d700] with a0=[0x1010], a1=[[0x1010]+91324], a2=?, a3=?.
  The `jalr` at 0xdabf568 calls Clampf [0xdabf438] with a0=?, a1=?, a2=[[0x1010]+3536], a3=?; fp f14=f20.
  The `jalr` at 0xdabf584 calls __glNamesUnlockData [0xdb3e144] with a0=[0x1010], a1=ret(__glNamesLockData), a2=?, a3=?.
  The `bne` branch at 0xdabf4cc targets 0xdabf4ec, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xdabf4e4 targets 0xdabf5c8 and is always taken.
  The `bgez` branch at 0xdabf4ec targets 0xdabf508, is taken when s5(=a0) >= 0 (signed), and falls through when s5(=a0) < 0 (signed).
  The `blez` branch at 0xdabf508 targets 0xdabf59c, is taken when s5(=a0) <= 0 (signed), and falls through when s5(=a0) > 0 (signed).
  The `beql` branch at 0xdabf528 targets 0xdabf594, is taken when a2(?) == 0, and falls through when a2(?) != 0; its branch-likely delay slot `addiu s1,s1,4` at 0xdabf52c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdabf548 targets 0xdabf590, is taken when v0(=ret(__glNamesLockData)) == 0, and falls through when v0(=ret(__glNamesLockData)) != 0.
  The `bne` branch at 0xdabf594 targets 0xdabf524, is taken when s1(?) != s4(=((a0 << 0x2) + a1)), and falls through when s1(?) == s4(=((a0 << 0x2) + a1)).
  The return at 0xdabf5f0 has v0 = one of ret(__glSetError), ?.

- `__glOdyim_IsTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdabf5f8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdabf5f8-0xdabf6ac (180 bytes).
  It occupies 180 bytes.
  The `lw` at 0xdabf614 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdabf624 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdabf660 loads 4 bytes from [0x1010] +0x164bc.
  The `jalr` at 0xdabf630 calls __glSetError [0xdb1ac34] with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=[0x1010].
  The `jalr` at 0xdabf664 calls __glNamesLockData [0xdb3d700] with a0=[0x1010], a1=[[0x1010]+91324], a2=a0 at entry (arg0), a3=[0x1010].
  The `jalr` at 0xdabf68c calls __glNamesUnlockData [0xdb3e144] with a0=[0x1010], a1=ret(__glNamesLockData), a2=?, a3=[0x1010].
  The `bne` branch at 0xdabf620 targets 0xdabf644, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xdabf63c targets 0xdabf69c and is always taken.
  The `bne` branch at 0xdabf644 targets 0xdabf654, is taken when a2(=a0) != 0, and falls through when a2(=a0) == 0.
  The `beq` branch at 0xdabf64c targets 0xdabf69c and is always taken.
  The `bne` branch at 0xdabf674 targets 0xdabf684, is taken when v0(=ret(__glNamesLockData)) != 0, and falls through when v0(=ret(__glNamesLockData)) == 0.
  The `beq` branch at 0xdabf67c targets 0xdabf69c and is always taken.
  The return at 0xdabf6a4 has v0 = one of 0x0, 0x1.

- `__glOdyim_LoadMatrixf` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacb19c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacb19c-0xdacb220 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xdacb1b8 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdacb1c0 loads 4 bytes from abs 0x1010.
  The `jalr` at 0xdacb1d4 calls __glSetError [0xdb1ac34] with a0=0x502, a1=[0x1010], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdacb1ec calls __glim_LoadMatrixf [0xdb83b8c] with a0=a0 at entry (arg0), a1=[0x1010], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdacb204 calls dirtyMatrix [0xdacad90] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `bne` branch at 0xdacb1c4 targets 0xdacb1e4, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xdacb1dc targets 0xdacb210 and is always taken.
  The return at 0xdacb218 has v0 = one of ret(__glSetError), ret(dirtyMatrix).

- `__glOdyim_LoadMatrixd` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacb220 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacb220-0xdacb300 (224 bytes).
  It occupies 224 bytes.
  The `lw` at 0xdacb23c loads 4 bytes from abs 0x1018.
  The `lw` at 0xdacb244 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdacb288 loads 4 bytes from [0x1010] +0x6d0.
  The `ldc1` at 0xdacb298 loads 8 bytes from a0 (arg0 at entry) +0x50.
  The `sdc1` at 0xdacb2a4 stores 8 bytes to [0x1010] +0x16690.
  The `ldc1` at 0xdacb2a8 loads 8 bytes from a0 (arg0 at entry) +0x58.
  The `sdc1` at 0xdacb2b4 stores 8 bytes to [0x1010] +0x16698.
  The `ldc1` at 0xdacb2b8 loads 8 bytes from a0 (arg0 at entry) +0x70.
  The `sdc1` at 0xdacb2c4 stores 8 bytes to [0x1010] +0x166a0.
  The `ldc1` at 0xdacb2c8 loads 8 bytes from a0 (arg0 at entry) +0x78.
  The `sdc1` at 0xdacb2d4 stores 8 bytes to [0x1010] +0x166a8.
  The `jalr` at 0xdacb258 calls __glSetError [0xdb1ac34] with a0=0x502, a1=[0x1010], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdacb274 calls __glim_LoadMatrixd [0xdb83c7c] with a0=a0 at entry (arg0), a1=[0x1010], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdacb2e4 calls dirtyMatrix [0xdacad90] with a0=[0x1010], a1=[0x1010], a2=?, a3=?.
  The `bne` branch at 0xdacb248 targets 0xdacb268, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xdacb260 targets 0xdacb2f0 and is always taken.
  The `bne` branch at 0xdacb290 targets 0xdacb2d8, is taken when t7(=[[0x1010]+1744]) != at(=0x1701), and falls through when t7(=[[0x1010]+1744]) == at(=0x1701).
  The return at 0xdacb2f8 has v0 = one of ret(__glSetError), ret(dirtyMatrix).

- `__glOdysseyEyeToWindowZ` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacbd30 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacbd30-0xdacbde0 (176 bytes).
  It occupies 176 bytes.
  The `lw` at 0xdacbd3c loads 4 bytes from abs 0x1010.
  The `ldc1` at 0xdacbd54 loads 8 bytes from [0x1010] +0x16698.
  The `ldc1` at 0xdacbd5c loads 8 bytes from [0x1010] +0x166a8.
  The `ldc1` at 0xdacbd64 loads 8 bytes from [0x1010] +0x16690.
  The `ldc1` at 0xdacbd74 loads 8 bytes from [0x1010] +0x166a0.
  The `bc1tl` branch at 0xdacbd90 targets 0xdacbdac, is taken when f6 == f22 (c.eq.d at 0xdacbd88), and falls through when not (f6 == f22 (c.eq.d at 0xdacbd88)); its branch-likely delay slot `mul.d $f6,$f4,$f18` at 0xdacbd94 runs only when taken and is annulled on fall-through.
  The return at 0xdacbdd8 has v0 = [0x1010].

- `__glOdysseyNormalizedEyeToWindowZ` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacbde0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacbde0-0xdacbebc (220 bytes).
  It occupies 220 bytes.
  The `lw` at 0xdacbdec loads 4 bytes from abs 0x1010.
  The `lbu` at 0xdacbe08 loads 1 byte from [0x1010] +0x166b8.
  2 such `ldc1` accesses load 8 bytes from [0x1010] +0x16660, including `ldc1` at 0xdacbe10, `ldc1` at 0xdacbe30.
  The `ldc1` at 0xdacbe34 loads 8 bytes from [0x1010] +0x16668.
  The `jalr` at 0xdacbe20 calls __glOdysseyUpdateTransform [0xdac9830] with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdacbe50 calls __glOdysseyEyeToWindowZ [0xdacbd30] with a0=?, a1=?, a2=?, a3=?.
  The `beql` branch at 0xdacbe0c targets 0xdacbe34, is taken when t6(=[[0x1010]+91832]:1) == 0, and falls through when t6(=[[0x1010]+91832]:1) != 0; its branch-likely delay slot `ldc1 $f0,26208(v0)` at 0xdacbe10 runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xdacbe78 targets 0xdacbe90, is taken when not (f2 < f4 (c.lt.d at 0xdacbe68)), and falls through when f2 < f4 (c.lt.d at 0xdacbe68); its branch-likely delay slot `mtc1 at,$f9` at 0xdacbe7c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdacbe84 targets 0xdacbeb4 and is always taken.
  The `bc1fl` branch at 0xdacbea0 targets 0xdacbeb4, is taken when not (f8 < f2 (c.lt.d at 0xdacbe98)), and falls through when f8 < f2 (c.lt.d at 0xdacbe98); its branch-likely delay slot `mov.s $f0,$f12` at 0xdacbea4 runs only when taken and is annulled on fall-through.
  The return at 0xdacbeb4 has v0 = ret(__glOdysseyEyeToWindowZ).
  The instructions from 0xdacbe8c to 0xdacbe8c are not reached by any path from the entry, and their branches are not listed.

- `__glOdysseySoftClipBeginTriangles` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacdb48 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacdb48-0xdacdb7c (52 bytes).
  It occupies 52 bytes.
  The `sw` at 0xdacdb6c stores 4 bytes to a0 (arg0 at entry) +0x30e8.
  The `sw` at 0xdacdb70 stores 4 bytes to a0 (arg0 at entry) +0x2e04.
  The `sw` at 0xdacdb78 stores 4 bytes to a0 (arg0 at entry) +0x2e4c.
  The return at 0xdacdb74 has v0 = ?.

- `RGBSendFc` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacec48 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacec48-0xdacecd0 (136 bytes).
  It occupies 136 bytes.
  The `lbu` at 0xdacec48 loads 1 byte from a0 (arg0 at entry) +0xb8.
  3 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdacec78, `sw` at 0xdacec7c, `sw` at 0xdaceca8.
  The `lwc1` at 0xdacec80 loads 4 bytes from a0 (arg0 at entry) +0x90.
  8 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xdacec8c, `swc1` at 0xdacec94, `swc1` at 0xdacec9c.
  The `lwc1` at 0xdacec90 loads 4 bytes from a0 (arg0 at entry) +0x94.
  The `lwc1` at 0xdacec98 loads 4 bytes from a0 (arg0 at entry) +0x98.
  The `lwc1` at 0xdaceca0 loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `lwc1` at 0xdacecac loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lwc1` at 0xdacecb4 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `lwc1` at 0xdacecbc loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lwc1` at 0xdacecc4 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `beq` branch at 0xdacec54 targets 0xdacec64, is taken when t6(=[a0+184]:1) == 0, and falls through when t6(=[a0+184]:1) != 0.
  The `beq` branch at 0xdacec5c targets 0xdacec68 and is always taken.
  The return at 0xdacecc8 has v0 = one of 0xf, 0x10.

- `RGBSendClippedBmFmTN` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacfde0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacfde0-0xdad00c8 (744 bytes).
  It occupies 744 bytes.
  The `lbu` at 0xdacfdec loads 1 byte from a0 (arg0 at entry) +0xb8.
  The `lw` at 0xdacfdf0 loads 4 bytes from abs 0x1010.
  20 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdacfe14, `sw` at 0xdacfe38, `sw` at 0xdacfe54.
  The `lw` at 0xdacfe18 loads 4 bytes from [0x1010] +0x588.
  75 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xdacfe3c, `swc1` at 0xdacfe40, `swc1` at 0xdacfe48.
  The `lwc1` at 0xdacfe58 loads 4 bytes from a0 (arg0 at entry) +0x170.
  The `lwc1` at 0xdacfe68 loads 4 bytes from a0 (arg0 at entry) +0x174.
  The `lwc1` at 0xdacfe78 loads 4 bytes from a0 (arg0 at entry) +0x178.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9c, including `lwc1` at 0xdacfe9c, `lwc1` at 0xdacff98.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x90, including `lwc1` at 0xdacfeb0, `lwc1` at 0xdacffac.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x94, including `lwc1` at 0xdacfec0, `lwc1` at 0xdacffbc.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x98, including `lwc1` at 0xdacfed0, `lwc1` at 0xdacffcc.
  The `lwc1` at 0xdacfef4 loads 4 bytes from a0 (arg0 at entry) +0x180.
  The `lwc1` at 0xdacfefc loads 4 bytes from a0 (arg0 at entry) +0x184.
  The `lwc1` at 0xdacff04 loads 4 bytes from a0 (arg0 at entry) +0x188.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xac, including `lwc1` at 0xdacff20, `lwc1` at 0xdad0018.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xa0, including `lwc1` at 0xdacff2c, `lwc1` at 0xdad002c.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xa4, including `lwc1` at 0xdacff34, `lwc1` at 0xdad0034.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xa8, including `lwc1` at 0xdacff3c, `lwc1` at 0xdad003c.
  The `lwc1` at 0xdad0054 loads 4 bytes from a0 (arg0 at entry) +0xc0.
  The `lwc1` at 0xdad0064 loads 4 bytes from a0 (arg0 at entry) +0xc4.
  The `lwc1` at 0xdad0074 loads 4 bytes from a0 (arg0 at entry) +0xc8.
  The `lwc1` at 0xdad0080 loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `lwc1` at 0xdad0088 loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `lwc1` at 0xdad0090 loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `lwc1` at 0xdad0098 loads 4 bytes from a0 (arg0 at entry) +0x3c.
  The `lwc1` at 0xdad00a4 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lwc1` at 0xdad00ac loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `lwc1` at 0xdad00b4 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lwc1` at 0xdad00bc loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `beq` branch at 0xdacfdf8 targets 0xdacfe08, is taken when t6(=[a0+184]:1) == 0, and falls through when t6(=[a0+184]:1) != 0.
  The `beq` branch at 0xdacfe00 targets 0xdacfe08 and is always taken.
  The `bne` branch at 0xdacfe24 targets 0xdacff4c, is taken when t1(=[[0x1010]+1416]) != at(=0x81fa), and falls through when t1(=[[0x1010]+1416]) == at(=0x81fa).
  The `beq` branch at 0xdacff44 targets 0xdad0048 and is always taken.
  The return at 0xdad00c0 has v0 = [0x1010].

- `CISendFc` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad00c8 (o32).
  Emits a small fixed command group of eight words, all stored to the absolute address 0x4000 (base
  `zero`, displacement +0x4000), reading its inputs from the record in `a0`; there are no calls. The
  first word, stored at 0xdad00f8, is built from a selector that is shifted left by 0x18
  and then has 0x20000000, 0xc000 and 0x2e ORed in. The selector is 0x10 when the byte at `a0`+0xb8
  (the `lbu` at 0xdad00c8) is zero (the `beq` at 0xdad00d4 jumps to 0xdad00e4), and 0xf otherwise
  (the always-taken `beq` at 0xdad00dc, with the `addiu` at 0xdad00e0 in its delay slot); the `jr ra`
  at 0xdad0130 returns the same selector.
  The second word is the constant 0xffffffffc580c407 (`sw` at 0xdad00fc; the low half is ORed in by
  the delay slot of the branch at 0xdad00d4, so it is ready on both paths). It is followed by one
  float taken as-is from +0x90 (`swc1` at 0xdad010c), then the constant 0xffffffff8080d005 (`sw` at
  0xdad0110), then four floats taken as-is from +0x10, +0x14, +0x18 and +0x1c (the `swc1` at 0xdad0118,
  0xdad0120, 0xdad0128 and, in the delay slot of the return, 0xdad0134).
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): whether the address 0x4000 lies inside the linked board window 0x110000 or 0x120000; the
  board documentation for that range would settle it.
  Evidence grade: established.

- `CISendFc` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad00c8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad00c8-0xdad0138 (112 bytes).
  It occupies 112 bytes.
  The `lbu` at 0xdad00c8 loads 1 byte from a0 (arg0 at entry) +0xb8.
  3 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdad00f8, `sw` at 0xdad00fc, `sw` at 0xdad0110.
  The `lwc1` at 0xdad0100 loads 4 bytes from a0 (arg0 at entry) +0x90.
  5 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xdad010c, `swc1` at 0xdad0118, `swc1` at 0xdad0120.
  The `lwc1` at 0xdad0114 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lwc1` at 0xdad011c loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `lwc1` at 0xdad0124 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lwc1` at 0xdad012c loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `beq` branch at 0xdad00d4 targets 0xdad00e4, is taken when t6(=[a0+184]:1) == 0, and falls through when t6(=[a0+184]:1) != 0.
  The `beq` branch at 0xdad00dc targets 0xdad00e8 and is always taken.
  The return at 0xdad0130 has v0 = one of 0xf, 0x10.

- `CISendClippedBmFmN` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad0640 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad0640-0xdad07b4 (372 bytes).
  It occupies 372 bytes.
  The `lbu` at 0xdad064c loads 1 byte from a0 (arg0 at entry) +0xb8.
  11 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdad0678, `sw` at 0xdad0680, `sw` at 0xdad06a0.
  The `lwc1` at 0xdad0684 loads 4 bytes from a0 (arg0 at entry) +0x90.
  39 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xdad0690, `swc1` at 0xdad0694, `swc1` at 0xdad0698.
  The `lwc1` at 0xdad06f8 loads 4 bytes from a0 (arg0 at entry) +0xa0.
  The `lwc1` at 0xdad076c loads 4 bytes from a0 (arg0 at entry) +0xc0.
  The `lwc1` at 0xdad077c loads 4 bytes from a0 (arg0 at entry) +0xc4.
  The `lwc1` at 0xdad0784 loads 4 bytes from a0 (arg0 at entry) +0xc8.
  The `lwc1` at 0xdad0790 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lwc1` at 0xdad0798 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `lwc1` at 0xdad07a0 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lwc1` at 0xdad07a8 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `beq` branch at 0xdad0658 targets 0xdad0668, is taken when t6(=[a0+184]:1) == 0, and falls through when t6(=[a0+184]:1) != 0.
  The `beq` branch at 0xdad0660 targets 0xdad066c and is always taken.
  The return at 0xdad07ac has v0 = one of 0xf, 0x10.

- `__glOdysseySoftClipRenderPoint` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad1390 (o32).
  Brackets one indirect call with constant writes to absolute address 0x4000, and sets +0x9750 of
  the first argument after the call. It stores 0x14400 to absolute 0x4000 (the `sw` at 0xdad13b0)
  and then 0 (the `sw` at 0xdad13c0), then loads the function pointer at +0x19d8c of its first
  argument (the `lw` at 0xdad13c8) and calls it (the `jalr` at 0xdad13d0) with its second argument
  as both a0 and a1 and its third and fourth arguments unchanged. After the return it stores 1 at
  +0x9750 of the first argument (the `sw` at 0xdad13e8), stores 0x14001 to absolute 0x4000 (the `sw`
  at 0xdad13f8), and returns.
  Unknown: the routine behind the pointer at +0x19d8c, since no callee note is linked; a committed
  entry for it would settle how it uses its arguments.
  Unknown: which register absolute address 0x4000 is; the linked board windows at 0x110000 and
  0x120000 do not cover it, so a linked row or a datasheet entry for 0x4000 would settle it.
  Evidence grade: established.

- `vvec` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5360 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5360-0xdad6650 (4848 bytes).
  It occupies 4848 bytes.
  The `lw` at 0xdad5360 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lw` at 0xdad5364 loads 4 bytes from a2 (arg2 at entry) +0xc.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xdad537c, `lwc1` at 0xdad5384, `lwc1` at 0xdad540c.
  The `lwc1` at 0xdad5380 loads 4 bytes from a1 (arg1 at entry) +0xc.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xdad5388, `lwc1` at 0xdad53f4, `lwc1` at 0xdad543c.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xdad538c, `lwc1` at 0xdad53fc, `lwc1` at 0xdad5440.
  5 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x0, including `swc1` at 0xdad539c, `swc1` at 0xdad53d8, `swc1` at 0xdad53f0.
  The `lwc1` at 0xdad53a0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  5 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x4, including `swc1` at 0xdad53a4, `swc1` at 0xdad53dc, `swc1` at 0xdad53f8.
  The `lwc1` at 0xdad53a8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  5 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x8, including `swc1` at 0xdad53ac, `swc1` at 0xdad53e8, `swc1` at 0xdad5404.
  The `lwc1` at 0xdad53b0 loads 4 bytes from a2 (arg2 at entry) +0xc.
  3 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lwc1` at 0xdad53b4, `lwc1` at 0xdad5410, `lwc1` at 0xdad5444.
  3 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x4, including `lwc1` at 0xdad53b8, `lwc1` at 0xdad5414, `lwc1` at 0xdad5448.
  3 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lwc1` at 0xdad53bc, `lwc1` at 0xdad5418, `lwc1` at 0xdad544c.
  The `lwc1` at 0xdad53d0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `beq` branch at 0xdad536c targets 0xdad5408, is taken when t6(=([a1+12] << 0x1)) == 0, and falls through when t6(=([a1+12] << 0x1)) != 0.
  The `beql` branch at 0xdad5378 targets 0xdad53f0, is taken when t7(=([a2+12] << 0x1)) == 0, and falls through when t7(=([a2+12] << 0x1)) != 0; its branch-likely delay slot `lwc1 $f4,0(a2)` at 0xdad537c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xdad5408 targets 0xdad543c, is taken when t8(=([a2+12] << 0x1)) == 0, and falls through when t8(=([a2+12] << 0x1)) != 0; its branch-likely delay slot `lwc1 $f2,0(a2)` at 0xdad540c runs only when taken and is annulled on fall-through.
  The return at 0xdad53e4 has v0 = [a1+12].
  The return at 0xdad5400 has v0 = [a1+12].
  The return at 0xdad5430 has v0 = [a1+12].
  The return at 0xdad5468 has v0 = [a1+12].
  The instructions from 0xdad53ec to 0xdad53ec are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdad5438 to 0xdad5438 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdad5470 to 0xdad664c are not reached by any path from the entry, and their branches are not listed.

- `Dot` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6650 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6650-0xdad6680 (48 bytes).
  It occupies 48 bytes.
  The `lwc1` at 0xdad6650 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lwc1` at 0xdad6654 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xdad6658 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lwc1` at 0xdad665c loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xdad6664 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lwc1` at 0xdad666c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The return at 0xdad6678 has v0 = ?.

- `SphereGen` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6680 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6680-0xdad67c0 (320 bytes).
  It occupies 320 bytes.
  The `lw` at 0xdad66ac loads 4 bytes from a0 (arg0 at entry) +0x2dd8.
  The `lwc1` at 0xdad66ec loads 4 bytes from a1 (arg1 at entry) +0x20.
  The `lwc1` at 0xdad670c loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `lwc1` at 0xdad6720 loads 4 bytes from a1 (arg1 at entry) +0x28.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xdcc, including `lwc1` at 0xdad6770, `lwc1` at 0xdad6778, `lwc1` at 0xdad6788.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xdad6780, `swc1` at 0xdad67a0.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xdad6798, `swc1` at 0xdad67a8.
  The `jalr` at 0xdad66b8 calls (unknown callee) with a0=sp-16, a1=a1+96, a2=a2 at entry (arg2), a3=a1 at entry (arg1).
  The `jalr` at 0xdad66d8 calls Dot [0xdad6650] with a0=a1+32, a1=sp-16, a2=?, a3=a1 at entry (arg1).
  The `bc1tl` branch at 0xdad676c targets 0xdad67a0, is taken when f8 == f10 (c.eq.s at 0xdad6764), and falls through when not (f8 == f10 (c.eq.s at 0xdad6764)); its branch-likely delay slot `lwc1 $f10,3532(s0)` at 0xdad6770 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdad6794 targets 0xdad67ac and is always taken.
  The return at 0xdad67b8 has v0 = ret(Dot).
  The instructions from 0xdad679c to 0xdad679c are not reached by any path from the entry, and their branches are not listed.

- `grow_region` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdadf350 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdadf350-0xdadf54c (508 bytes).
  It occupies 508 bytes.
  The `lw` at 0xdadf360 loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0xdadf374, `lw` at 0xdadf3b4.
  The `lw` at 0xdadf384 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `lw` at 0xdadf3b8 loads 4 bytes from a0 (arg0 at entry) +0xc.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xdadf3d0, `lw` at 0xdadf42c, `lw` at 0xdadf460.
  7 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1c, including `lw` at 0xdadf3d4, `lw` at 0xdadf430, `lw` at 0xdadf464.
  The `lw` at 0xdadf3f4 loads 4 bytes from [0x1010] +0x8.
  The `sw` at 0xdadf420 stores 4 bytes to a0 (arg0 at entry) +0x1c.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xdadf448, `lw` at 0xdadf450, `lw` at 0xdadf458.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x14, including `lw` at 0xdadf480, `lw` at 0xdadf4b0.
  7 such `sw` accesses store 4 bytes to ?, including `sw` at 0xdadf484, `sw` at 0xdadf48c, `sw` at 0xdadf490.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x18, including `lw` at 0xdadf4c0, `lw` at 0xdadf4d0.
  The `sw` at 0xdadf514 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `lw` at 0xdadf518 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `sw` at 0xdadf51c stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `sw` at 0xdadf524 stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `sw` at 0xdadf52c stores 4 bytes to a0 (arg0 at entry) +0xc.
  The `sw` at 0xdadf538 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `jalr` at 0xdadf38c calls (unknown callee) with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xdadf3fc calls (unknown callee) with a0=[0x1010], a1=[a0+28], a2=?, a3=a0 at entry (arg0).
  The `bne` branch at 0xdadf3a0 targets 0xdadf3b0, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0.
  The `beq` branch at 0xdadf3a8 targets 0xdadf53c and is always taken.
  The `bne` branch at 0xdadf41c targets 0xdadf42c, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0.
  The `beq` branch at 0xdadf424 targets 0xdadf53c and is always taken.
  The `bnel` branch at 0xdadf47c targets 0xdadf4b4, is taken when t0(?) < v0(=[a0+4]) (signed), and falls through when t0(?) >= v0(=[a0+4]) (signed); its branch-likely delay slot `lw t5,20(a3)` at 0xdadf480 runs only when taken and is annulled on fall-through.
  The `bltz` branch at 0xdadf488 targets 0xdadf494, is taken when a0(?) < 0 (signed), and falls through when a0(?) >= 0 (signed).
  The `beq` branch at 0xdadf4a4 targets 0xdadf484, is taken when t0(?) >= v0(?) (signed), and falls through when t0(?) < v0(?) (signed).
  The `beql` branch at 0xdadf4b4 targets 0xdadf514, is taken when t5(=[a0+20]) == 0, and falls through when t5(=[a0+20]) != 0; its branch-likely delay slot `lw t6,4(a3)` at 0xdadf4b8 runs only when taken and is annulled on fall-through.
  The return at 0xdadf544 has v0 = one of -0x1, 0x0.

- `__glReadPixelSpans` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaf1df4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaf1df4-0xdaf1f9c (424 bytes).
  It occupies 424 bytes.
  The `lw` at 0xdaf1e34 loads 4 bytes from a0 (arg0 at entry) +0x7710.
  The `lw` at 0xdaf1e38 loads 4 bytes from a1 (arg1 at entry) +0x160.
  The `lw` at 0xdaf1e44 loads 4 bytes from a1 (arg1 at entry) +0xa8.
  The `lw` at 0xdaf1e4c loads 4 bytes from a1 (arg1 at entry) +0xac.
  The `lw` at 0xdaf1e74 loads 4 bytes from a1 (arg1 at entry) +0x164.
  The `lw` at 0xdaf1e78 loads 4 bytes from a0 (arg0 at entry) +0x12ec.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xdaf1ed4, `lw` at 0xdaf1f18.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x5c, including `lw` at 0xdaf1f28, `lw` at 0xdaf1f30.
  The `lwc1` at 0xdaf1f2c loads 4 bytes from a1 (arg1 at entry) +0xc0.
  The `lw` at 0xdaf1f34 loads 4 bytes from a1 (arg1 at entry) +0x60.
  The `sw` at 0xdaf1f44 stores 4 bytes to a1 (arg1 at entry) +0x5c.
  The `swc1` at 0xdaf1f48 stores 4 bytes to a1 (arg1 at entry) +0xc0.
  The `sw` at 0xdaf1f54 stores 4 bytes to a0 (arg0 at entry) +0x7710.
  The `jalr` at 0xdaf1ec0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xdaf1ee4 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xdaf1f24 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=[a1+92].
  The `blez` branch at 0xdaf1e7c targets 0xdaf1f64, is taken when t3(=[a1+172]) <= 0 (signed), and falls through when t3(=[a1+172]) > 0 (signed).
  The `blez` branch at 0xdaf1ec8 targets 0xdaf1f08, is taken when s5(=[a1+352]-1) <= 0 (signed), and falls through when s5(=[a1+352]-1) > 0 (signed).
  The `bne` branch at 0xdaf1f00 targets 0xdaf1ed4, is taken when s3(?) != s5(=[a1+352]-1), and falls through when s3(?) == s5(=[a1+352]-1).
  The `bnel` branch at 0xdaf1f5c targets 0xdaf1eac, is taken when s7(?) != t5(?), and falls through when s7(?) == t5(?); its branch-likely delay slot `lw t9,116(s8)` at 0xdaf1f60 runs only when taken and is annulled on fall-through.
  The return at 0xdaf1f94 has v0 = one of ?, ret(?).

- `Clear` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb0933c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb0933c-0xdb0c0fc (11712 bytes).
  It occupies 11712 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0xdb0935c, `lw` at 0xdb093ac.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0xdb09360, `lw` at 0xdb093b0.
  The `lw` at 0xdb0936c loads 4 bytes from [a0] +0x735c.
  The `lw` at 0xdb09370 loads 4 bytes from [a0] +0x7360.
  The `lw` at 0xdb09378 loads 4 bytes from [a0] +0x7368.
  The `lw` at 0xdb09388 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `lwc1` at 0xdb093bc loads 4 bytes from [a0] +0x7778.
  The `lwc1` at 0xdb093c0 loads 4 bytes from [a0] +0x670.
  The `lwc1` at 0xdb093c4 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0xdb093c8 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lwc1` at 0xdb093d0 loads 4 bytes from [a0] +0x777c.
  The `lwc1` at 0xdb093d4 loads 4 bytes from [a0] +0x674.
  The `lwc1` at 0xdb093e0 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  The `lwc1` at 0xdb093e8 loads 4 bytes from [a0] +0x7780.
  The `lwc1` at 0xdb093ec loads 4 bytes from [a0] +0x678.
  The `lwc1` at 0xdb093f8 loads 4 bytes from a0 (arg0 at entry) +0x50.
  The `lwc1` at 0xdb09404 loads 4 bytes from [a0] +0x77a0.
  The `lwc1` at 0xdb09408 loads 4 bytes from [a0] +0x67c.
  The `lwc1` at 0xdb0941c loads 4 bytes from a0 (arg0 at entry) +0x54.
  The `lw` at 0xdb09424 loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xdb09460 loads 4 bytes from [a0] +0xe44.
  The `lw` at 0xdb09470 loads 4 bytes from [a0] +0x7364.
  20 such `sh` accesses store 2 bytes to ?, including `sh` at 0xdb094b4, `sh` at 0xdb094b8, `sh` at 0xdb094bc.
  The `jalr` at 0xdb09394 calls (unknown callee) with a0=[a0], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xdb09374 targets 0xdb093b4, is taken when t5(=[a0+16]) != 0, and falls through when t5(=[a0+16]) == 0.
  The `beq` branch at 0xdb09494 targets 0xdb09530, is taken when t0(=[[a0]+29536]) >= t4(=[[a0]+29544]) (signed), and falls through when t0(=[[a0]+29536]) < t4(=[[a0]+29544]) (signed).
  The `bltz` branch at 0xdb094a8 targets 0xdb094fc, is taken when t1(?) < 0 (signed), and falls through when t1(?) >= 0 (signed).
  The `bgez` branch at 0xdb094f4 targets 0xdb094b0, is taken when v1(?) >= 0 (signed), and falls through when v1(?) < 0 (signed).
  The `bltz` branch at 0xdb094fc targets 0xdb09520, is taken when t2(?) < 0 (signed), and falls through when t2(?) >= 0 (signed).
  The `bgez` branch at 0xdb09518 targets 0xdb09504, is taken when v1(?) >= 0 (signed), and falls through when v1(?) < 0 (signed).
  The `bne` branch at 0xdb09528 targets 0xdb094a8, is taken when t0(?) < t4(=[[a0]+29544]) (signed), and falls through when t0(?) >= t4(=[[a0]+29544]) (signed).
  The return at 0xdb0953c has v0 = ?.
  The instructions from 0xdb09544 to 0xdb0c0f8 are not reached by any path from the entry, and their branches are not listed.

- `__glim_DrawBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb0ab58 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb0ab58-0xdb0ac9c (324 bytes).
  It occupies 324 bytes.
  The `lw` at 0xdb0ab74 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdb0ab7c loads 4 bytes from abs 0x1010.
  The `lw` at 0xdb0abc0 loads 4 bytes from table(0xdbbc6cc) +0x0.
  6 such `sw` accesses store 4 bytes to [0x1010] +0x760, including `sw` at 0xdb0abdc, `sw` at 0xdb0ac00, `sw` at 0xdb0ac1c.
  2 such `lbu` accesses load 1 byte from [0x1010] +0xc8e, including `lbu` at 0xdb0ac04, `lbu` at 0xdb0ac28.
  The `lw` at 0xdb0ac40 loads 4 bytes from [0x1010] +0xcd8.
  The `sw` at 0xdb0ac74 stores 4 bytes to [0x1010] +0x764.
  The `sw` at 0xdb0ac7c stores 4 bytes to abs 0x1018.
  The `lw` at 0xdb0ac80 loads 4 bytes from [0x1010] +0x2d44.
  The `sw` at 0xdb0ac88 stores 4 bytes to [0x1010] +0x2d44.
  The `jalr` at 0xdb0ab90 calls __glSetError [0xdb1ac34] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb0abe8 calls __glSetError [0xdb1ac34] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb0ac64 calls __glSetError [0xdb1ac34] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xdb0ab80 targets 0xdb0aba0, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xdb0ab98 targets 0xdb0ac8c and is always taken.
  The `beq` branch at 0xdb0aba0 targets 0xdb0abd0, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0xdb0abac targets 0xdb0ac5c, is taken when t7(=a0-1024) >= 0xd (unsigned), and falls through when t7(=a0-1024) < 0xd (unsigned).
  The `bne` branch at 0xdb0abd0 targets 0xdb0ac5c, is taken when a0 != 0, and falls through when a0 == 0.
  The `beq` branch at 0xdb0abd8 targets 0xdb0ac74 and is always taken.
  The `beq` branch at 0xdb0abf0 targets 0xdb0ac8c and is always taken.
  The `beq` branch at 0xdb0abfc targets 0xdb0ac74 and is always taken.
  The `bne` branch at 0xdb0ac10 targets 0xdb0ac20, is taken when t9(=[[0x1010]+3214]:1) != 0, and falls through when t9(=[[0x1010]+3214]:1) == 0.
  The `beq` branch at 0xdb0ac18 targets 0xdb0ac74 and is always taken.
  The `beq` branch at 0xdb0ac20 targets 0xdb0ac74 and is always taken.
  The `beq` branch at 0xdb0ac30 targets 0xdb0abe0, is taken when t2(=[[0x1010]+3214]:1) == 0, and falls through when t2(=[[0x1010]+3214]:1) != 0.
  The `beq` branch at 0xdb0ac38 targets 0xdb0ac74 and is always taken.
  The `beq` branch at 0xdb0ac4c targets 0xdb0abe0, is taken when t5(=a0-1033) >= t4(=[[0x1010]+3288]) (signed), and falls through when t5(=a0-1033) < t4(=[[0x1010]+3288]) (signed).
  The `beq` branch at 0xdb0ac54 targets 0xdb0ac74 and is always taken.
  The `beq` branch at 0xdb0ac6c targets 0xdb0ac8c and is always taken.
  The return at 0xdb0ac94 has v0 = one of ret(__glSetError), [0x1010].
  The indirect jump at 0xdb0abc8 uses the jump table at 0xdbbc6cc with targets 0xdb0abf8, 0xdb0abe0, 0xdb0ac28, 0xdb0abe0, 0xdb0abf8, 0xdb0ac28, 0xdb0ac04, 0xdb0abe0, 0xdb0ac04, 0xdb0ac40, 0xdb0ac40, 0xdb0ac40, 0xdb0ac40.

- `__glDoBlendMax` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb122ac (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb122ac-0xdb1232c (128 bytes).
  It occupies 128 bytes.
  The `lwc1` at 0xdb122b4 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `lwc1` at 0xdb122b8 loads 4 bytes from a2 (arg2 at entry) +0x0.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xdb122c8, `lwc1` at 0xdb122d0.
  The `swc1` at 0xdb122cc stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lwc1` at 0xdb122d4 loads 4 bytes from a3 (arg3 at entry) +0x4.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xdb122e4, `lwc1` at 0xdb122ec.
  The `swc1` at 0xdb122e8 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `lwc1` at 0xdb122f0 loads 4 bytes from a3 (arg3 at entry) +0x8.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lwc1` at 0xdb12300, `lwc1` at 0xdb12308.
  The `swc1` at 0xdb12304 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `lwc1` at 0xdb1230c loads 4 bytes from a3 (arg3 at entry) +0xc.
  The `swc1` at 0xdb12320 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The `bc1fl` branch at 0xdb122c4 targets 0xdb122d4, is taken when not (f4(=[a3]) < f0(=[a2]) (c.lt.s at 0xdb122bc)), and falls through when f4(=[a3]) < f0(=[a2]) (c.lt.s at 0xdb122bc); its branch-likely delay slot `lwc1 $f0,4(a2)` at 0xdb122c8 runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xdb122e0 targets 0xdb122f0, is taken when not (f6(=[a3+4]) < f0(=[a2+4]) (c.lt.s at 0xdb122d8)), and falls through when f6(=[a3+4]) < f0(=[a2+4]) (c.lt.s at 0xdb122d8); its branch-likely delay slot `lwc1 $f0,8(a2)` at 0xdb122e4 runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xdb122fc targets 0xdb1230c, is taken when not (f8(=[a3+8]) < f0(=[a2+8]) (c.lt.s at 0xdb122f4)), and falls through when f8(=[a3+8]) < f0(=[a2+8]) (c.lt.s at 0xdb122f4); its branch-likely delay slot `lwc1 $f0,12(a2)` at 0xdb12300 runs only when taken and is annulled on fall-through.
  The `bc1f` branch at 0xdb12318 targets 0xdb12324, is taken when not (f10(=[a3+12]) < f0(=[a2+12]) (c.lt.s at 0xdb12310)), and falls through when f10(=[a3+12]) < f0(=[a2+12]) (c.lt.s at 0xdb12310).
  The return at 0xdb12324 has v0 = ?.

- `__glFindWindowSize` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb1afdc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb1afdc-0xdb1b0b8 (220 bytes).
  It occupies 220 bytes.
  The `lw` at 0xdb1b004 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xdb1b01c loads 4 bytes from a0 (arg0 at entry) +0xe6c.
  The `lw` at 0xdb1b030 loads 4 bytes from a0 (arg0 at entry) +0xe70.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0xdb1b038, `lw` at 0xdb1b054.
  The `lw` at 0xdb1b06c loads 4 bytes from a0 (arg0 at entry) +0xe74.
  The `lw` at 0xdb1b080 loads 4 bytes from a0 (arg0 at entry) +0xe78.
  The `jalr` at 0xdb1b010 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-4, a2=sp-8, a3=sp-12.
  The `jalr` at 0xdb1b048 calls __glChangeWindowSize [0xdb1aeb8] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xdb1b060 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-20, a2=sp-24, a3=?.
  The `jalr` at 0xdb1b098 calls __glChangeReadWindowSize [0xdb1afd0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0xdb1b028 targets 0xdb1b03c, is taken when t7(?) != t8(=[a0+3692]), and falls through when t7(?) == t8(=[a0+3692]).
  The `beql` branch at 0xdb1b034 targets 0xdb1b058, is taken when t0(?) == t1(=[a0+3696]), and falls through when t0(?) != t1(=[a0+3696]); its branch-likely delay slot `lw t9,72(s0)` at 0xdb1b038 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdb1b078 targets 0xdb1b08c, is taken when t2(?) != t3(=[a0+3700]), and falls through when t2(?) == t3(=[a0+3700]).
  The `beql` branch at 0xdb1b084 targets 0xdb1b0a8, is taken when t4(?) == t5(=[a0+3704]), and falls through when t4(?) != t5(=[a0+3704]); its branch-likely delay slot `lw ra,36(sp)` at 0xdb1b088 runs only when taken and is annulled on fall-through.
  The return at 0xdb1b0b0 has v0 = one of ret(?), ret(__glChangeReadWindowSize).

- `StoreGREATER` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb1d2d0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb1d2d0-0xdb1d340 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xdb1d2d0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdb1d2d4 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xdb1d2d8 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdb1d2dc loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xdb1d2e0 loads 4 bytes from [a0] +0x79ac.
  The `lw` at 0xdb1d2e4 loads 4 bytes from [a0] +0x79a4.
  The `lw` at 0xdb1d2f4 loads 4 bytes from [a0] +0xe44.
  The `lw` at 0xdb1d31c loads 4 bytes from ?.
  The `sw` at 0xdb1d32c stores 4 bytes to ?.
  The `beq` branch at 0xdb1d324 targets 0xdb1d338, is taken when t2(?) >= v1(?) (unsigned), and falls through when t2(?) < v1(?) (unsigned).
  The return at 0xdb1d330 has v0 = 0x1.
  The return at 0xdb1d338 has v0 = 0x0.

- `StoreGREATER_s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb1d340 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb1d340-0xdb1d3b0 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xdb1d340 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdb1d344 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xdb1d348 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdb1d34c loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xdb1d350 loads 4 bytes from [a0] +0x79ac.
  The `lw` at 0xdb1d354 loads 4 bytes from [a0] +0x79a4.
  The `lw` at 0xdb1d364 loads 4 bytes from [a0] +0xe44.
  The `lw` at 0xdb1d38c loads 4 bytes from ?.
  The `sw` at 0xdb1d39c stores 4 bytes to ?.
  The `beq` branch at 0xdb1d394 targets 0xdb1d3a8, is taken when t2(?) >= v1(?) (signed), and falls through when t2(?) < v1(?) (signed).
  The return at 0xdb1d3a0 has v0 = 0x1.
  The return at 0xdb1d3a8 has v0 = 0x0.

- `StoreGEQUAL` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb1d41c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb1d41c-0xdb1d48c (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xdb1d41c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdb1d420 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xdb1d424 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdb1d428 loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xdb1d42c loads 4 bytes from [a0] +0x79ac.
  The `lw` at 0xdb1d430 loads 4 bytes from [a0] +0x79a4.
  The `lw` at 0xdb1d440 loads 4 bytes from [a0] +0xe44.
  The `lw` at 0xdb1d468 loads 4 bytes from ?.
  The `sw` at 0xdb1d478 stores 4 bytes to ?.
  The `bne` branch at 0xdb1d470 targets 0xdb1d484, is taken when v1(?) < t2(?) (unsigned), and falls through when v1(?) >= t2(?) (unsigned).
  The return at 0xdb1d47c has v0 = 0x1.
  The return at 0xdb1d484 has v0 = 0x0.

- `StoreGEQUAL_s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb1d48c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb1d48c-0xdb1d4fc (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xdb1d48c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdb1d490 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xdb1d494 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdb1d498 loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xdb1d49c loads 4 bytes from [a0] +0x79ac.
  The `lw` at 0xdb1d4a0 loads 4 bytes from [a0] +0x79a4.
  The `lw` at 0xdb1d4b0 loads 4 bytes from [a0] +0xe44.
  The `lw` at 0xdb1d4d8 loads 4 bytes from ?.
  The `sw` at 0xdb1d4e8 stores 4 bytes to ?.
  The `bne` branch at 0xdb1d4e0 targets 0xdb1d4f4, is taken when v1(?) < t2(?) (signed), and falls through when v1(?) >= t2(?) (signed).
  The return at 0xdb1d4ec has v0 = 0x1.
  The return at 0xdb1d4f4 has v0 = 0x0.

- `StoreGREATER_W` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb1d714 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb1d714-0xdb1d76c (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0xdb1d714 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdb1d718 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xdb1d71c loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xdb1d720 loads 4 bytes from [a0] +0x79ac.
  The `lw` at 0xdb1d724 loads 4 bytes from [a0] +0x79a4.
  The `lw` at 0xdb1d734 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdb1d738 loads 4 bytes from [a0] +0xe44.
  The `lw` at 0xdb1d75c loads 4 bytes from ?.
  The return at 0xdb1d764 has v0 = ?.

- `StoreGREATER_W_s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb1d76c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb1d76c-0xdb1d7c4 (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0xdb1d76c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdb1d770 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xdb1d774 loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xdb1d778 loads 4 bytes from [a0] +0x79ac.
  The `lw` at 0xdb1d77c loads 4 bytes from [a0] +0x79a4.
  The `lw` at 0xdb1d78c loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdb1d790 loads 4 bytes from [a0] +0xe44.
  The `lw` at 0xdb1d7b4 loads 4 bytes from ?.
  The return at 0xdb1d7bc has v0 = ?.

- `StoreGEQUAL_W` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb1d820 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb1d820-0xdb1d87c (92 bytes).
  It occupies 92 bytes.
  The `lw` at 0xdb1d820 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdb1d824 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xdb1d828 loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xdb1d82c loads 4 bytes from [a0] +0x79ac.
  The `lw` at 0xdb1d830 loads 4 bytes from [a0] +0x79a4.
  The `lw` at 0xdb1d840 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdb1d844 loads 4 bytes from [a0] +0xe44.
  The `lw` at 0xdb1d868 loads 4 bytes from ?.
  The return at 0xdb1d874 has v0 = ?.

- `StoreGEQUAL_W_s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb1d87c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb1d87c-0xdb1d8d8 (92 bytes).
  It occupies 92 bytes.
  The `lw` at 0xdb1d87c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdb1d880 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xdb1d884 loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xdb1d888 loads 4 bytes from [a0] +0x79ac.
  The `lw` at 0xdb1d88c loads 4 bytes from [a0] +0x79a4.
  The `lw` at 0xdb1d89c loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdb1d8a0 loads 4 bytes from [a0] +0xe44.
  The `lw` at 0xdb1d8c4 loads 4 bytes from ?.
  The return at 0xdb1d8d0 has v0 = ?.

- `Resize` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb1e048 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb1e048-0xdb23108 (20672 bytes).
  It occupies 20672 bytes.
  The `sb` at 0xdb1e078 stores 1 byte to a0 (arg0 at entry) +0x60.
  The `jalr` at 0xdb1e064 calls __glResizeBuffer [0xdb144b4] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdb1e084 has v0 = ret(__glResizeBuffer).
  The instructions from 0xdb1e08c to 0xdb23104 are not reached by any path from the entry, and their branches are not listed.

- `__glim_ResetHistogramEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb2ba5c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb2ba5c-0xdb2bb20 (196 bytes).
  It occupies 196 bytes.
  The `lw` at 0xdb2ba78 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdb2ba80 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdb2bacc loads 4 bytes from [0x1010] +0x4fc.
  The `lw` at 0xdb2baec loads 4 bytes from [0x1010] +0x4e0.
  The `lw` at 0xdb2baf4 loads 4 bytes from [0x1010] +0x4dc.
  The `jalr` at 0xdb2ba94 calls __glSetError [0xdb1ac34] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1010].
  The `jalr` at 0xdb2bab8 calls __glSetError [0xdb1ac34] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1010].
  The `jalr` at 0xdb2bad4 calls __glElementsPerGroup [0xdaf8120] with a0=[[0x1010]+1276], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1010].
  The `jalr` at 0xdb2bb04 calls memset with a0=[[0x1010]+1244], a1=0x0, a2=?, a3=[0x1010].
  The `bnel` branch at 0xdb2ba84 targets 0xdb2baa8, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1); its branch-likely delay slot `ori at,zero,0x8024` at 0xdb2ba88 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdb2ba9c targets 0xdb2bb10 and is always taken.
  The `beq` branch at 0xdb2baa8 targets 0xdb2bac8, is taken when a0 == at(=0x8024), and falls through when a0 != at(=0x8024).
  The `beq` branch at 0xdb2bac0 targets 0xdb2bb10 and is always taken.
  The return at 0xdb2bb18 has v0 = one of ret(__glSetError), ret(memset).
  The instructions from 0xdb2baa4 to 0xdb2baa4 are not reached by any path from the entry, and their branches are not listed.

- `__glResetArray` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb2bf98 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb2bf98-0xdb2c2b0 (792 bytes).
  It occupies 792 bytes.
  The `lw` at 0xdb2c014 loads 4 bytes from table(0xdbbeec8) +0x0.
  The `lw` at 0xdb2c0d0 loads 4 bytes from table(0xdbbeedc) +0x0.
  The `lw` at 0xdb2c17c loads 4 bytes from table(0xdbbeefc) +0x0.
  The `jalr` at 0xdb2c198 calls __glSetValue [0xdb2bed8] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xdb2c1b8 calls __glSetValue [0xdb2bed8] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xdb2c1d4 calls __glSetValue [0xdb2bed8] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xdb2c1f8 calls __glSetValue [0xdb2bed8] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xdb2c220 calls __glSetValue [0xdb2bed8] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xdb2c23c calls __glSetValue [0xdb2bed8] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xdb2c254 calls __glSetValue [0xdb2bed8] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xdb2c26c calls __glSetValue [0xdb2bed8] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xdb2bfd4 targets 0xdb2bff0, is taken when s1(?) == at(=0x1405), and falls through when s1(?) != at(=0x1405).
  The `beq` branch at 0xdb2bfe0 targets 0xdb2bff8, is taken when s1(?) == at(=0x1406), and falls through when s1(?) != at(=0x1406).
  The `beq` branch at 0xdb2bfe8 targets 0xdb2bff8 and is always taken.
  The `beq` branch at 0xdb2bff0 targets 0xdb2bff8 and is always taken.
  The `beql` branch at 0xdb2c000 targets 0xdb2c074, is taken when t6(=a0-6406) >= 0x5 (unsigned), and falls through when t6(=a0-6406) < 0x5 (unsigned); its branch-likely delay slot `ori at,zero,0x8001` at 0xdb2c004 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdb2c02c targets 0xdb2c070 and is always taken.
  The `beq` branch at 0xdb2c03c targets 0xdb2c070 and is always taken.
  The `beq` branch at 0xdb2c04c targets 0xdb2c070 and is always taken.
  The `beq` branch at 0xdb2c05c targets 0xdb2c070 and is always taken.
  The `bne` branch at 0xdb2c078 targets 0xdb2c098, is taken when a1 < at(=0x8001) (unsigned), and falls through when a1 >= at(=0x8001) (unsigned).
  The `beq` branch at 0xdb2c080 targets 0xdb2c100, is taken when a1 == at(=0x80e0), and falls through when a1 != at(=0x80e0).
  The `beq` branch at 0xdb2c088 targets 0xdb2c108, is taken when a1 == at(=0x80e1), and falls through when a1 != at(=0x80e1).
  The `beq` branch at 0xdb2c090 targets 0xdb2c118 and is always taken.
  The `bne` branch at 0xdb2c09c targets 0xdb2c0b8, is taken when a1 < 0x190b (unsigned), and falls through when a1 >= 0x190b (unsigned).
  The `beq` branch at 0xdb2c0a8 targets 0xdb2c108, is taken when a1 == at(=0x8000), and falls through when a1 != at(=0x8000).
  The `beq` branch at 0xdb2c0b0 targets 0xdb2c118 and is always taken.
  The `beql` branch at 0xdb2c0bc targets 0xdb2c118, is taken when t2(=a1-6403) >= 0x8 (unsigned), and falls through when t2(=a1-6403) < 0x8 (unsigned); its branch-likely delay slot `and t3,v1,v0` at 0xdb2c0c0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdb2c0e0 targets 0xdb2c114 and is always taken.
  The `beq` branch at 0xdb2c0e8 targets 0xdb2c114 and is always taken.
  The `beq` branch at 0xdb2c0f0 targets 0xdb2c114 and is always taken.
  The `beq` branch at 0xdb2c0f8 targets 0xdb2c114 and is always taken.
  The `beq` branch at 0xdb2c100 targets 0xdb2c114 and is always taken.
  The `beq` branch at 0xdb2c108 targets 0xdb2c114 and is always taken.
  The `beq` branch at 0xdb2c118 targets 0xdb2c28c, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beql` branch at 0xdb2c154 targets 0xdb2c290, is taken when a3 >= t8(?) (signed), and falls through when a3 < t8(?) (signed); its branch-likely delay slot `lw ra,52(sp)` at 0xdb2c158 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xdb2c168 targets 0xdb2c27c, is taken when t0(?) >= 0x27 (unsigned), and falls through when t0(?) < 0x27 (unsigned); its branch-likely delay slot `lw t6,112(sp)` at 0xdb2c16c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdb2c1a0 targets 0xdb2c278 and is always taken.
  The `beq` branch at 0xdb2c1c0 targets 0xdb2c278 and is always taken.
  The `beq` branch at 0xdb2c200 targets 0xdb2c278 and is always taken.
  The `bne` branch at 0xdb2c284 targets 0xdb2c15c, is taken when s2(?) != t6(?), and falls through when s2(?) == t6(?).
  The return at 0xdb2c2a8 has v0 = ?.
  The indirect jump at 0xdb2c01c uses the jump table at 0xdbbeec8 with targets 0xdb2c034, 0xdb2c054, 0xdb2c064, 0xdb2c024, 0xdb2c044.
  The indirect jump at 0xdb2c184 uses the jump table at 0xdbbeefc with targets 0xdb2c260, 0xdb2c18c, 0xdb2c278, 0xdb2c1a8, 0xdb2c278, 0xdb2c278, 0xdb2c22c, 0xdb2c260, 0xdb2c278, 0xdb2c278, 0xdb2c278, 0xdb2c278, 0xdb2c278, 0xdb2c278, 0xdb2c278, 0xdb2c18c, 0xdb2c248, 0xdb2c278, 0xdb2c278, 0xdb2c278, 0xdb2c278, 0xdb2c278, 0xdb2c278, 0xdb2c278, 0xdb2c278, 0xdb2c278, 0xdb2c278, 0xdb2c278, 0xdb2c278, 0xdb2c278, 0xdb2c278, 0xdb2c1e0, 0xdb2c1c8, 0xdb2c278, 0xdb2c278, 0xdb2c278, 0xdb2c278, 0xdb2c278, 0xdb2c208.
  The indirect jump at 0xdb2c184 uses the jump table at 0xdbbeefc with targets 0xdb2c260, 0xdb2c18c, 0xdb2c278, 0xdb2c1a8, 0xdb2c278, 0xdb2c278, 0xdb2c22c, 0xdb2c260, 0xdb2c278, 0xdb2c278, 0xdb2c278, 0xdb2c278, 0xdb2c278, 0xdb2c278, 0xdb2c278, 0xdb2c18c, 0xdb2c248, 0xdb2c278, 0xdb2c278, 0xdb2c278, 0xdb2c278, 0xdb2c278, 0xdb2c278, 0xdb2c278, 0xdb2c278, 0xdb2c278, 0xdb2c278, 0xdb2c278, 0xdb2c278, 0xdb2c278, 0xdb2c278, 0xdb2c1e0, 0xdb2c1c8, 0xdb2c278, 0xdb2c278, 0xdb2c278, 0xdb2c278, 0xdb2c278, 0xdb2c208.
  The indirect jump at 0xdb2c0d8 uses the jump table at 0xdbbeedc with targets 0xdb2c0e0, 0xdb2c0e8, 0xdb2c0f0, 0xdb2c0f8, 0xdb2c100, 0xdb2c108, 0xdb2c0e0, 0xdb2c110.
  The indirect jump at 0xdb2c0d8 uses the jump table at 0xdbbeedc with targets 0xdb2c0e0, 0xdb2c0e8, 0xdb2c0f0, 0xdb2c0f8, 0xdb2c100, 0xdb2c108, 0xdb2c0e0, 0xdb2c110.
  The indirect jump at 0xdb2c0d8 uses the jump table at 0xdbbeedc with targets 0xdb2c0e0, 0xdb2c0e8, 0xdb2c0f0, 0xdb2c0f8, 0xdb2c100, 0xdb2c108, 0xdb2c0e0, 0xdb2c110.
  The indirect jump at 0xdb2c0d8 uses the jump table at 0xdbbeedc with targets 0xdb2c0e0, 0xdb2c0e8, 0xdb2c0f0, 0xdb2c0f8, 0xdb2c100, 0xdb2c108, 0xdb2c0e0, 0xdb2c110.
  The indirect jump at 0xdb2c0d8 uses the jump table at 0xdbbeedc with targets 0xdb2c0e0, 0xdb2c0e8, 0xdb2c0f0, 0xdb2c0f8, 0xdb2c100, 0xdb2c108, 0xdb2c0e0, 0xdb2c110.

- `__glResetMinmax` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb2c930 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb2c930-0xdb2ca90 (352 bytes).
  It occupies 352 bytes.
  The `lw` at 0xdb2c93c loads 4 bytes from a0 (arg0 at entry) +0x55c.
  The `lw` at 0xdb2c964 loads 4 bytes from table(0xdbbf0bc) +0x0.
  The `lwc1` at 0xdb2c9c8 loads 4 bytes from abs 0xdbbf0d0.
  10 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xdb2c9d0, `swc1` at 0xdb2c9fc, `swc1` at 0xdb2ca00.
  The `lwc1` at 0xdb2c9f4 loads 4 bytes from abs 0xdbbf0d4.
  The `lwc1` at 0xdb2ca40 loads 4 bytes from abs 0xdbbf0d8.
  The `lwc1` at 0xdb2ca68 loads 4 bytes from abs 0xdbbf0dc.
  The `beq` branch at 0xdb2c950 targets 0xdb2c9a4, is taken when t7(=[a0+1372]-6406) >= 0x5 (unsigned), and falls through when t7(=[a0+1372]-6406) < 0x5 (unsigned).
  The `beq` branch at 0xdb2c978 targets 0xdb2c9a4 and is always taken.
  The `beq` branch at 0xdb2c984 targets 0xdb2c9a4 and is always taken.
  The `beq` branch at 0xdb2c990 targets 0xdb2c9a4 and is always taken.
  The `beq` branch at 0xdb2c99c targets 0xdb2c9a4 and is always taken.
  The `blez` branch at 0xdb2c9a4 targets 0xdb2ca14, is taken when v1(?) <= 0 (signed), and falls through when v1(?) > 0 (signed).
  The `beq` branch at 0xdb2c9b0 targets 0xdb2c9e4, is taken when (v1(?) & 0x3) == 0, and falls through when (v1(?) & 0x3) != 0.
  The `bne` branch at 0xdb2c9d4 targets 0xdb2c9cc, is taken when v0(?) != a2(?), and falls through when v0(?) == a2(?).
  The `beql` branch at 0xdb2c9dc targets 0xdb2ca18, is taken when a2(?) == v1(?), and falls through when a2(?) != v1(?); its branch-likely delay slot `slt at,v1,a1` at 0xdb2c9e0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdb2ca0c targets 0xdb2c9f8, is taken when a2(?) != v1(?), and falls through when a2(?) == v1(?).
  The `beq` branch at 0xdb2ca18 targets 0xdb2ca88, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xdb2ca28 targets 0xdb2ca5c, is taken when (t0(?) & 0x3) == 0, and falls through when (t0(?) & 0x3) != 0.
  The `bne` branch at 0xdb2ca4c targets 0xdb2ca44, is taken when a0(?) != a2(?), and falls through when a0(?) == a2(?).
  The `beq` branch at 0xdb2ca54 targets 0xdb2ca88, is taken when a2(?) == a1(?), and falls through when a2(?) != a1(?).
  The `bne` branch at 0xdb2ca80 targets 0xdb2ca6c, is taken when a2(?) != a1(?), and falls through when a2(?) == a1(?).
  The return at 0xdb2ca88 has v0 = one of ?, a0+1332.
  The indirect jump at 0xdb2c96c uses the jump table at 0xdbbf0bc with targets 0xdb2c974, 0xdb2c98c, 0xdb2c998, 0xdb2c974, 0xdb2c980.

- `__glim_ResetMinmaxEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb2cb84 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb2cb84-0xdb2cc14 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xdb2cba0 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdb2cba8 loads 4 bytes from abs 0x1010.
  The `jalr` at 0xdb2cbbc calls __glSetError [0xdb1ac34] with a0=0x502, a1=[0x1010], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb2cbe0 calls __glSetError [0xdb1ac34] with a0=0x500, a1=[0x1010], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb2cbf8 calls __glResetMinmax [0xdb2c930] with a0=[0x1010], a1=[0x1010], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bnel` branch at 0xdb2cbac targets 0xdb2cbd0, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1); its branch-likely delay slot `ori at,zero,0x802e` at 0xdb2cbb0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdb2cbc4 targets 0xdb2cc04 and is always taken.
  The `beq` branch at 0xdb2cbd0 targets 0xdb2cbf0, is taken when a0 == at(=0x802e), and falls through when a0 != at(=0x802e).
  The `beq` branch at 0xdb2cbe8 targets 0xdb2cc04 and is always taken.
  The return at 0xdb2cc0c has v0 = one of ret(__glSetError), ret(__glResetMinmax).
  The instructions from 0xdb2cbcc to 0xdb2cbcc are not reached by any path from the entry, and their branches are not listed.

- `Coverage` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb41c40 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb41c40-0xdb42bd0 (3984 bytes).
  It occupies 3984 bytes.
  The `bc1fl` branch at 0xdb41cb4 targets 0xdb41cc4, is taken when not (f20 <= f12 (c.le.s at 0xdb41cac)), and falls through when f20 <= f12 (c.le.s at 0xdb41cac); its branch-likely delay slot `mov.s $f14,$f18` at 0xdb41cb8 runs only when taken and is annulled on fall-through.
  The `bc1f` branch at 0xdb41cd4 targets 0xdb41ce0, is taken when not (f4 <= f12 (c.le.s at 0xdb41cc8)), and falls through when f4 <= f12 (c.le.s at 0xdb41cc8).
  The `bc1fl` branch at 0xdb41ce8 targets 0xdb41cf8, is taken when not (f6 <= f12 (c.le.s at 0xdb41ce0)), and falls through when f6 <= f12 (c.le.s at 0xdb41ce0); its branch-likely delay slot `c.le.s $f8,$f12` at 0xdb41cec runs only when taken and is annulled on fall-through.
  The `bc1f` branch at 0xdb41cfc targets 0xdb41d08, is taken when not (f8 <= f12 (c.le.s at 0xdb41cf4)), and falls through when f8 <= f12 (c.le.s at 0xdb41cf4).
  The `bgez` branch at 0xdb41d08 targets 0xdb41c9c, is taken when v0(?) >= 0 (signed), and falls through when v0(?) < 0 (signed).
  The return at 0xdb41d24 has v0 = ?.
  The instructions from 0xdb41d2c to 0xdb42bcc are not reached by any path from the entry, and their branches are not listed.

- `SetInitialParameters` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb45240 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb45240-0xdb46a70 (6192 bytes).
  It occupies 6192 bytes.
  The `lw` at 0xdb45268 loads 4 bytes from a0 (arg0 at entry) +0x7510.
  The `lw` at 0xdb4526c loads 4 bytes from a0 (arg0 at entry) +0x7514.
  The `lw` at 0xdb45270 loads 4 bytes from a0 (arg0 at entry) +0x763c.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x75a4, including `lwc1` at 0xdb452c0, `lwc1` at 0xdb454dc, `lwc1` at 0xdb4569c.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x75b4, including `lwc1` at 0xdb452c8, `lwc1` at 0xdb454e4, `lwc1` at 0xdb456a4.
  4 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xdb452d0, `lwc1` at 0xdb454ec, `lwc1` at 0xdb456ac.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x75a8, including `lwc1` at 0xdb452d4, `lwc1` at 0xdb456b0.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x75b8, including `lwc1` at 0xdb452dc, `lwc1` at 0xdb456b8.
  4 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7558, including `swc1` at 0xdb452f0, `swc1` at 0xdb45504, `swc1` at 0xdb456cc.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x75ac, including `lwc1` at 0xdb452f8, `lwc1` at 0xdb456d4.
  4 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7584, including `swc1` at 0xdb45300, `swc1` at 0xdb4550c, `swc1` at 0xdb456dc.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x75b0, including `lwc1` at 0xdb45304, `lwc1` at 0xdb456e0.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x75c0, including `lwc1` at 0xdb45308, `lwc1` at 0xdb456e4.
  4 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7594, including `swc1` at 0xdb4530c, `swc1` at 0xdb45510, `swc1` at 0xdb456e8.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xdb45310, `lwc1` at 0xdb456ec.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x755c, including `swc1` at 0xdb45328, `swc1` at 0xdb45704.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x75bc, including `lwc1` at 0xdb4532c, `lwc1` at 0xdb45708.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7588, including `swc1` at 0xdb45330, `swc1` at 0xdb4570c.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7588, including `lwc1` at 0xdb45334, `lwc1` at 0xdb45710.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7598, including `swc1` at 0xdb45340, `swc1` at 0xdb4571c.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xdb45344, `lwc1` at 0xdb45720.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7560, including `swc1` at 0xdb4535c, `swc1` at 0xdb45738.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x758c, including `swc1` at 0xdb45368, `swc1` at 0xdb45744.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x759c, including `swc1` at 0xdb4536c, `swc1` at 0xdb45748.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lwc1` at 0xdb45370, `lwc1` at 0xdb4574c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7564, including `swc1` at 0xdb45388, `swc1` at 0xdb45764.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7590, including `swc1` at 0xdb45390, `swc1` at 0xdb4576c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x75a0, including `swc1` at 0xdb45394, `swc1` at 0xdb45770.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x8c, including `lwc1` at 0xdb453a4, `lwc1` at 0xdb45780.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x30, including `lwc1` at 0xdb453a8, `lwc1` at 0xdb45784.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7604, including `lwc1` at 0xdb453b0, `lwc1` at 0xdb4578c.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7618, including `lwc1` at 0xdb453b8, `lwc1` at 0xdb45794.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7608, including `lwc1` at 0xdb453bc, `lwc1` at 0xdb45798.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x761c, including `lwc1` at 0xdb453c4, `lwc1` at 0xdb457a0.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7568, including `swc1` at 0xdb453dc, `swc1` at 0xdb457b8.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x75dc, including `swc1` at 0xdb453e4, `swc1` at 0xdb457c0.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x75f0, including `swc1` at 0xdb453e8, `swc1` at 0xdb457c4.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x34, including `lwc1` at 0xdb453ec, `lwc1` at 0xdb457c8.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x756c, including `swc1` at 0xdb4540c, `swc1` at 0xdb457e8.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x760c, including `lwc1` at 0xdb45414, `lwc1` at 0xdb457f0.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x75e0, including `swc1` at 0xdb4541c, `swc1` at 0xdb457f8.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7620, including `lwc1` at 0xdb45420, `lwc1` at 0xdb457fc.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7624, including `lwc1` at 0xdb45424, `lwc1` at 0xdb45800.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x75f4, including `swc1` at 0xdb45428, `swc1` at 0xdb45804.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x38, including `lwc1` at 0xdb45430, `lwc1` at 0xdb4580c.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7614, including `lwc1` at 0xdb45434, `lwc1` at 0xdb45810.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7628, including `lwc1` at 0xdb45438, `lwc1` at 0xdb45814.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7570, including `swc1` at 0xdb45458, `swc1` at 0xdb45834.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x75e4, including `swc1` at 0xdb45460, `swc1` at 0xdb4583c.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7610, including `lwc1` at 0xdb45464, `lwc1` at 0xdb45840.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x75f8, including `swc1` at 0xdb45468, `swc1` at 0xdb45844.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x3c, including `lwc1` at 0xdb45470, `lwc1` at 0xdb4584c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7574, including `swc1` at 0xdb45490, `swc1` at 0xdb4586c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x75e8, including `swc1` at 0xdb4549c, `swc1` at 0xdb45878.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x75fc, including `swc1` at 0xdb454a0, `swc1` at 0xdb4587c.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0xb4, including `lwc1` at 0xdb454a4, `lwc1` at 0xdb45880.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7578, including `swc1` at 0xdb454bc, `swc1` at 0xdb45898.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x75ec, including `swc1` at 0xdb454c4, `swc1` at 0xdb458a0.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7600, including `swc1` at 0xdb454cc, `swc1` at 0xdb458a8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x700, including `lw` at 0xdb45520, `lw` at 0xdb458fc.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x75d8, including `lwc1` at 0xdb45530, `lwc1` at 0xdb45564, `lwc1` at 0xdb4590c.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x7554, including `sw` at 0xdb45560, `sw` at 0xdb45610, `sw` at 0xdb4593c.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x75d4, including `lwc1` at 0xdb4556c, `lwc1` at 0xdb45574, `lwc1` at 0xdb45948.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x88, including `lwc1` at 0xdb45578, `lwc1` at 0xdb45954.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x75c4, including `sw` at 0xdb45634, `sw` at 0xdb45a10.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x75c8, including `sw` at 0xdb45638, `sw` at 0xdb45a14.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7638, including `lwc1` at 0xdb45648, `lwc1` at 0xdb45a24.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7634, including `lwc1` at 0xdb4564c, `lwc1` at 0xdb45a28.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x757c, including `swc1` at 0xdb4566c, `swc1` at 0xdb45a48.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x762c, including `swc1` at 0xdb45674, `swc1` at 0xdb45a50.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7630, including `swc1` at 0xdb4567c, `swc1` at 0xdb45a54.
  The `jalr` at 0xdb45548 calls __glPolygonOffsetZ [0xdb47e2c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xdb45924 calls __glPolygonOffsetZ [0xdb47e2c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `bc1f` branch at 0xdb45298 targets 0xdb45680, is taken when not (f20 < f0 (c.lt.s at 0xdb45290)), and falls through when f20 < f0 (c.lt.s at 0xdb45290).
  The `beq` branch at 0xdb452a4 targets 0xdb454d0, is taken when (t0(=[a0+30268]) & 0x1) == 0, and falls through when (t0(=[a0+30268]) & 0x1) != 0.
  The `beq` branch at 0xdb452b0 targets 0xdb45398, is taken when (t0(=[a0+30268]) & 0x2) == 0, and falls through when (t0(=[a0+30268]) & 0x2) != 0.
  The `beq` branch at 0xdb4539c targets 0xdb45514, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0xdb454c8 targets 0xdb45514 and is always taken.
  The `beq` branch at 0xdb454d0 targets 0xdb45514, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0xdb45518 targets 0xdb4563c, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bgezl` branch at 0xdb4552c targets 0xdb45574, is taken when t5(=([a0+1792] << 0x7)) >= 0 (signed), and falls through when t5(=([a0+1792] << 0x7)) < 0 (signed); its branch-likely delay slot `lwc1 $f0,200(v1)` at 0xdb45530 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdb45568 targets 0xdb45618 and is always taken.
  The `beql` branch at 0xdb455b0 targets 0xdb45600, is taken when (t7(?) & 0x78) == 0, and falls through when (t7(?) & 0x78) != 0; its branch-likely delay slot `mfc1 t7,$f6` at 0xdb455b4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdb455dc targets 0xdb455f4, is taken when (t7(?) & 0x78) != 0, and falls through when (t7(?) & 0x78) == 0.
  The `beq` branch at 0xdb455ec targets 0xdb4560c and is always taken.
  The `beq` branch at 0xdb455f4 targets 0xdb4560c and is always taken.
  The `bltz` branch at 0xdb45604 targets 0xdb455f4, is taken when t7(?) < 0 (signed), and falls through when t7(?) >= 0 (signed).
  The `beq` branch at 0xdb45640 targets 0xdb45a58, is taken when (t0(=[a0+30268]) & 0x1000) == 0, and falls through when (t0(=[a0+30268]) & 0x1000) != 0.
  The `beq` branch at 0xdb45678 targets 0xdb45a58 and is always taken.
  The `beq` branch at 0xdb45680 targets 0xdb458ac, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The `beq` branch at 0xdb4568c targets 0xdb45774, is taken when (t0(=[a0+30268]) & 0x2) == 0, and falls through when (t0(=[a0+30268]) & 0x2) != 0.
  The `beq` branch at 0xdb45778 targets 0xdb458f0, is taken when t6(?) == 0, and falls through when t6(?) != 0.
  The `beq` branch at 0xdb458a4 targets 0xdb458f0 and is always taken.
  The `beq` branch at 0xdb458ac targets 0xdb458f0, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `beq` branch at 0xdb458f4 targets 0xdb45a18, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bgezl` branch at 0xdb45908 targets 0xdb45950, is taken when t1(=([a0+1792] << 0x7)) >= 0 (signed), and falls through when t1(=([a0+1792] << 0x7)) < 0 (signed); its branch-likely delay slot `lwc1 $f0,200(v1)` at 0xdb4590c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdb45944 targets 0xdb459f4 and is always taken.
  The `beql` branch at 0xdb4598c targets 0xdb459dc, is taken when (t3(?) & 0x78) == 0, and falls through when (t3(?) & 0x78) != 0; its branch-likely delay slot `mfc1 t3,$f4` at 0xdb45990 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdb459b8 targets 0xdb459d0, is taken when (t3(?) & 0x78) != 0, and falls through when (t3(?) & 0x78) == 0.
  The `beq` branch at 0xdb459c8 targets 0xdb459e8 and is always taken.
  The `beq` branch at 0xdb459d0 targets 0xdb459e8 and is always taken.
  The `bltz` branch at 0xdb459e0 targets 0xdb459d0, is taken when t3(?) < 0 (signed), and falls through when t3(?) >= 0 (signed).
  The `beq` branch at 0xdb45a1c targets 0xdb45a58, is taken when (t0(=[a0+30268]) & 0x1000) == 0, and falls through when (t0(=[a0+30268]) & 0x1000) != 0.
  The return at 0xdb45a68 has v0 = ?.
  The instructions from 0xdb45570 to 0xdb45570 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdb455fc to 0xdb455fc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdb4594c to 0xdb4594c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdb459d8 to 0xdb459d8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdb45a70 to 0xdb46a6c are not reached by any path from the entry, and their branches are not listed.

- `__glReadSpan` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb50f60 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb50f60-0xdb50ff8 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xdb50fa8 loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `jalr` at 0xdb50fb8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=?.
  The `bltz` branch at 0xdb50fa0 targets 0xdb50fd4, is taken when s0(?) < 0 (signed), and falls through when s0(?) >= 0 (signed).
  The `bgez` branch at 0xdb50fcc targets 0xdb50fa8, is taken when s0(?) >= 0 (signed), and falls through when s0(?) < 0 (signed).
  The return at 0xdb50ff0 has v0 = 0x0.

- `SubdivRegCreaseEdge` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb56610 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb56610-0xdb5673c (300 bytes).
  It occupies 300 bytes.
  10 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xdb56654, `lwc1` at 0xdb56658, `lwc1` at 0xdb566b4.
  5 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xdb56680, `swc1` at 0xdb566d8, `swc1` at 0xdb566f4.
  The `blez` branch at 0xdb56620 targets 0xdb56734, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0xdb5662c targets 0xdb5668c, is taken when (a0 & 0x3) == 0, and falls through when (a0 & 0x3) != 0.
  The `bne` branch at 0xdb5667c targets 0xdb56654, is taken when t2(?) != v0(?), and falls through when t2(?) == v0(?).
  The `beq` branch at 0xdb56684 targets 0xdb56734, is taken when v0(?) == a0, and falls through when v0(?) != a0.
  The `bne` branch at 0xdb5672c targets 0xdb566b4, is taken when t1(?) != t2(=((a0 << 0x2) + a1)), and falls through when t1(?) == t2(=((a0 << 0x2) + a1)).
  The return at 0xdb56734 has v0 = one of 0x0, ?.

- `SubdivIRRegCreaseEdge` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb5673c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb5673c-0xdb568d0 (404 bytes).
  It occupies 404 bytes.
  10 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xdb56798, `lwc1` at 0xdb5679c, `lwc1` at 0xdb56818.
  5 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xdb567d0, `swc1` at 0xdb56848, `swc1` at 0xdb56870.
  The `blez` branch at 0xdb5674c targets 0xdb568c8, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0xdb56758 targets 0xdb567d8, is taken when (a0 & 0x3) == 0, and falls through when (a0 & 0x3) != 0.
  The `bne` branch at 0xdb567cc targets 0xdb56798, is taken when t2(?) != v0(?), and falls through when t2(?) == v0(?).
  The `beq` branch at 0xdb567d4 targets 0xdb568c8, is taken when v0(?) == a0, and falls through when v0(?) != a0.
  The `bne` branch at 0xdb568c0 targets 0xdb56818, is taken when t1(?) != t2(=((a0 << 0x2) + a1)), and falls through when t1(?) == t2(=((a0 << 0x2) + a1)).
  The return at 0xdb568c8 has v0 = one of 0x0, ?.

- `__glLookUpTextureParams` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb60970 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb60970-0xdb609bc (76 bytes).
  It occupies 76 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9ac, including `lw` at 0xdb60998, `lw` at 0xdb6099c, `lw` at 0xdb609a8.
  The `beq` branch at 0xdb60974 targets 0xdb60994, is taken when a1 == at(=0xde0), and falls through when a1 != at(=0xde0).
  The `beq` branch at 0xdb6097c targets 0xdb6099c, is taken when a1 == at(=0xde1), and falls through when a1 != at(=0xde1).
  The `beq` branch at 0xdb60984 targets 0xdb609a8, is taken when a1 == at(=0x806f), and falls through when a1 != at(=0x806f).
  The `beq` branch at 0xdb6098c targets 0xdb609b4 and is always taken.
  The return at 0xdb60994 has v0 = [a0+2476].
  The return at 0xdb609a0 has v0 = [a0+2476]+224.
  The return at 0xdb609ac has v0 = [a0+2476]+448.
  The return at 0xdb609b4 has v0 = 0x0.

- `__glLookUpTextureTexobjs` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb609bc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb609bc-0xdb60a0c (80 bytes).
  It occupies 80 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9ac, including `lw` at 0xdb609e0, `lw` at 0xdb609ec, `lw` at 0xdb609f8.
  The `beq` branch at 0xdb609c0 targets 0xdb609e0, is taken when a1 == at(=0xde0), and falls through when a1 != at(=0xde0).
  The `beq` branch at 0xdb609c8 targets 0xdb609ec, is taken when a1 == at(=0xde1), and falls through when a1 != at(=0xde1).
  The `beq` branch at 0xdb609d0 targets 0xdb609f8, is taken when a1 == at(=0x806f), and falls through when a1 != at(=0x806f).
  The `beq` branch at 0xdb609d8 targets 0xdb60a04 and is always taken.
  The return at 0xdb609e4 has v0 = [a0+2476]+216.
  The return at 0xdb609f0 has v0 = [a0+2476]+440.
  The return at 0xdb609fc has v0 = [a0+2476]+664.
  The return at 0xdb60a04 has v0 = 0x0.

- `__glLookUpTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb60a0c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb60a0c-0xdb60a98 (140 bytes).
  It occupies 140 bytes.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6d7c, including `lw` at 0xdb60a48, `lw` at 0xdb60a54, `lw` at 0xdb60a60.
  The `lw` at 0xdb60a50 loads 4 bytes from [a0+28028] +0x0.
  The `lw` at 0xdb60a5c loads 4 bytes from [a0+28028] +0x4.
  The `lw` at 0xdb60a68 loads 4 bytes from [a0+28028] +0x8.
  The `lw` at 0xdb60a74 loads 4 bytes from [a0+28028] +0xc.
  The `lw` at 0xdb60a80 loads 4 bytes from [a0+28028] +0x10.
  The `lw` at 0xdb60a8c loads 4 bytes from [a0+28028] +0x14.
  The `beq` branch at 0xdb60a10 targets 0xdb60a48, is taken when a1 == at(=0xde0), and falls through when a1 != at(=0xde0).
  The `beq` branch at 0xdb60a18 targets 0xdb60a54, is taken when a1 == at(=0xde1), and falls through when a1 != at(=0xde1).
  The `beq` branch at 0xdb60a20 targets 0xdb60a6c, is taken when a1 == at(=0x8063), and falls through when a1 != at(=0x8063).
  The `beq` branch at 0xdb60a28 targets 0xdb60a78, is taken when a1 == at(=0x8064), and falls through when a1 != at(=0x8064).
  The `beq` branch at 0xdb60a30 targets 0xdb60a60, is taken when a1 == at(=0x806f), and falls through when a1 != at(=0x806f).
  The `beq` branch at 0xdb60a38 targets 0xdb60a84, is taken when a1 == at(=0x8070), and falls through when a1 != at(=0x8070).
  The `beq` branch at 0xdb60a40 targets 0xdb60a90 and is always taken.
  The return at 0xdb60a4c has v0 = [[a0+28028]].
  The return at 0xdb60a58 has v0 = [[a0+28028]+4].
  The return at 0xdb60a64 has v0 = [[a0+28028]+8].
  The return at 0xdb60a70 has v0 = [[a0+28028]+12].
  The return at 0xdb60a7c has v0 = [[a0+28028]+16].
  The return at 0xdb60a88 has v0 = [[a0+28028]+20].
  The return at 0xdb60a90 has v0 = 0x0.

- `__glLookUpTextureObject` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb60a98 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb60a98-0xdb60ae8 (80 bytes).
  It occupies 80 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6d80, including `lw` at 0xdb60abc, `lw` at 0xdb60ac8, `lw` at 0xdb60ad4.
  The `lw` at 0xdb60ac4 loads 4 bytes from [a0+28032] +0x0.
  The `lw` at 0xdb60ad0 loads 4 bytes from [a0+28032] +0x4.
  The `lw` at 0xdb60adc loads 4 bytes from [a0+28032] +0x8.
  The `beq` branch at 0xdb60a9c targets 0xdb60abc, is taken when a1 == at(=0xde0), and falls through when a1 != at(=0xde0).
  The `beq` branch at 0xdb60aa4 targets 0xdb60ac8, is taken when a1 == at(=0xde1), and falls through when a1 != at(=0xde1).
  The `beq` branch at 0xdb60aac targets 0xdb60ad4, is taken when a1 == at(=0x806f), and falls through when a1 != at(=0x806f).
  The `beq` branch at 0xdb60ab4 targets 0xdb60ae0 and is always taken.
  The return at 0xdb60ac0 has v0 = [[a0+28032]].
  The return at 0xdb60acc has v0 = [[a0+28032]+4].
  The return at 0xdb60ad8 has v0 = [[a0+28032]+8].
  The return at 0xdb60ae0 has v0 = 0x0.

- `__glReadTexImage` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb60b6c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb60b6c-0xdb60bac (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xdb60b8c loads 4 bytes from a0 (arg0 at entry) +0x3078.
  The `jalr` at 0xdb60b90 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdb60ba4 has v0 = ret(?).

- `__glTexInitTextureObject` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb60bac (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb60bac-0xdb60bf0 (68 bytes).
  It occupies 68 bytes.
  The `sw` at 0xdb60bd0 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `sb` at 0xdb60bd4 stores 1 byte to a1 (arg1 at entry) +0xc.
  The `sw` at 0xdb60bd8 stores 4 bytes to a1 (arg1 at entry) +0xec.
  The `sw` at 0xdb60bdc stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `sw` at 0xdb60be0 stores 4 bytes to a1 (arg1 at entry) +0x108.
  The `sw` at 0xdb60be4 stores 4 bytes to a1 (arg1 at entry) +0x10c.
  The `swc1` at 0xdb60bec stores 4 bytes to a1 (arg1 at entry) +0xf0.
  The return at 0xdb60be8 has v0 = ?.

- `__glim_TextureColorMaskSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb63294 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb63294-0xdb6332c (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xdb632c0 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdb632dc loads 4 bytes from abs 0x1010.
  The `sb` at 0xdb632f8 stores 1 byte to [0x1010] +0x9d4.
  The `sb` at 0xdb632fc stores 1 byte to [0x1010] +0x9d5.
  The `sb` at 0xdb63300 stores 1 byte to [0x1010] +0x9d6.
  The `sb` at 0xdb63304 stores 1 byte to [0x1010] +0x9d7.
  The `sw` at 0xdb6330c stores 4 bytes to abs 0x1018.
  The `lw` at 0xdb63310 loads 4 bytes from [0x1010] +0x2d44.
  The `sw` at 0xdb63318 stores 4 bytes to [0x1010] +0x2d44.
  The `jalr` at 0xdb632e8 calls __glSetError [0xdb1ac34] with a0=0x502, a1=?, a2=?, a3=?.
  The `bne` branch at 0xdb632d8 targets 0xdb632f8, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xdb632f0 targets 0xdb6331c and is always taken.
  The return at 0xdb63324 has v0 = one of ret(__glSetError), [0x1010].

- `IsTextureConsistent` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb646f0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb646f0-0xdb64860 (368 bytes).
  It occupies 368 bytes.
  The `lw` at 0xdb646f8 loads 4 bytes from a1 (arg1 at entry) +0xe4.
  The `lw` at 0xdb646fc loads 4 bytes from [a1+228] +0x4.
  The `lw` at 0xdb64708 loads 4 bytes from [a1+228] +0x8.
  The `lw` at 0xdb64714 loads 4 bytes from [a1+228] +0xc.
  The `lw` at 0xdb64724 loads 4 bytes from a0 (arg0 at entry) +0x9b0.
  The `lw` at 0xdb64734 loads 4 bytes from [a1+228] +0x38.
  The `lw` at 0xdb64738 loads 4 bytes from a0 (arg0 at entry) +0xe8c.
  The `lw` at 0xdb6473c loads 4 bytes from [a0+2480] +0x0.
  The `lw` at 0xdb64750 loads 4 bytes from [a1+228] +0x40.
  The `lw` at 0xdb64758 loads 4 bytes from [a1+228] +0x3c.
  The `lw` at 0xdb64780 loads 4 bytes from a1 (arg1 at entry) +0x10.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0xdb647fc, `lw` at 0xdb64808, `lw` at 0xdb64814.
  The `beq` branch at 0xdb64700 targets 0xdb64728, is taken when t2(=[[a1+228]+4]) == 0, and falls through when t2(=[[a1+228]+4]) != 0.
  The `beq` branch at 0xdb6470c targets 0xdb64728, is taken when t3(=[[a1+228]+8]) == 0, and falls through when t3(=[[a1+228]+8]) != 0.
  The `bnel` branch at 0xdb64720 targets 0xdb64734, is taken when t4(=[[a1+228]+12]) != 0, and falls through when t4(=[[a1+228]+12]) == 0; its branch-likely delay slot `lw t8,2480(t7)` at 0xdb64724 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdb64754 targets 0xdb64778, is taken when t9(=[[a0+2480]]) != at(=0x2101), and falls through when t9(=[[a0+2480]]) == at(=0x2101).
  The `beq` branch at 0xdb64760 targets 0xdb64778, is taken when t5(=[[a1+228]+64]) == at(=0x1907), and falls through when t5(=[[a1+228]+64]) != at(=0x1907).
  The `beql` branch at 0xdb64768 targets 0xdb6477c, is taken when t5(=[[a1+228]+64]) == at(=0x1908), and falls through when t5(=[[a1+228]+64]) != at(=0x1908); its branch-likely delay slot `lw t6,4(sp)` at 0xdb6476c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdb64784 targets 0xdb6479c, is taken when t2(=[a1+16]) == at(=0x2600), and falls through when t2(=[a1+16]) != at(=0x2600).
  The `beq` branch at 0xdb6478c targets 0xdb6479c, is taken when t2(=[a1+16]) == at(=0x2601), and falls through when t2(=[a1+16]) != at(=0x2601).
  The `bnel` branch at 0xdb64794 targets 0xdb647a8, is taken when t2(=[a1+16]) != at(=0x8146), and falls through when t2(=[a1+16]) == at(=0x8146); its branch-likely delay slot `slti at,t0,2` at 0xdb64798 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdb647a8 targets 0xdb64854, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0xdb647b4 targets 0xdb647c0, is taken when v0(?) != t4(=0x1), and falls through when v0(?) == t4(=0x1).
  The `beq` branch at 0xdb647bc targets 0xdb64854, is taken when v1(?) == t4(=0x1), and falls through when v1(?) != t4(=0x1).
  The `bne` branch at 0xdb647d4 targets 0xdb647e0, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0xdb647e4 targets 0xdb647f0, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0xdb647f0 targets 0xdb647fc, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `bne` branch at 0xdb64800 targets 0xdb64844, is taken when a3(=[[a1+228]+56]) != t8(?), and falls through when a3(=[[a1+228]+56]) == t8(?).
  The `bne` branch at 0xdb6480c targets 0xdb64844, is taken when t1(=[[a1+228]+60]) != t9(?), and falls through when t1(=[[a1+228]+60]) == t9(?).
  The `bne` branch at 0xdb6481c targets 0xdb64844, is taken when t6(?) != t7(?), and falls through when t6(?) == t7(?).
  The `bne` branch at 0xdb6482c targets 0xdb64844, is taken when t8(?) != t9(?), and falls through when t8(?) == t9(?).
  The `beq` branch at 0xdb6483c targets 0xdb6484c, is taken when t6(?) == t7(?), and falls through when t6(?) != t7(?).
  The `bne` branch at 0xdb6484c targets 0xdb647b4, is taken when t2(?) != t0(=[a0+3724]), and falls through when t2(?) == t0(=[a0+3724]).
  The return at 0xdb64728 has v0 = 0x0.
  The return at 0xdb64770 has v0 = 0x0.
  The return at 0xdb6479c has v0 = 0x1.
  The return at 0xdb64844 has v0 = 0x0.
  The return at 0xdb64858 has v0 = 0x1.
  The instructions from 0xdb64730 to 0xdb64730 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdb647a4 to 0xdb647a4 are not reached by any path from the entry, and their branches are not listed.

- `__glTextureSBModulateA` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb6b1fc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb6b1fc-0xdb6b274 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xdb6b21c loads 4 bytes from a0 (arg0 at entry) +0x6d88.
  The `lwc1` at 0xdb6b220 loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `lwc1` at 0xdb6b228 loads 4 bytes from [a0+28040] +0xb8.
  The `lwc1` at 0xdb6b22c loads 4 bytes from [a0+28040] +0xc8.
  The `lw` at 0xdb6b238 loads 4 bytes from a0 (arg0 at entry) +0xdd0.
  The `swc1` at 0xdb6b254 stores 4 bytes to a2 (arg2 at entry) +0x10.
  The `lwc1` at 0xdb6b258 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `swc1` at 0xdb6b260 stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `jalr` at 0xdb6b240 calls __GL_TEXENV_CLAMP [0xdb6acf0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3536], a3=a3 at entry (arg3).
  The return at 0xdb6b26c has v0 = a1.

- `__glTextureSBReplaceA` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb6c338 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb6c338-0xdb6c3b8 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xdb6c358 loads 4 bytes from a0 (arg0 at entry) +0x6d88.
  The `lwc1` at 0xdb6c35c loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `lwc1` at 0xdb6c364 loads 4 bytes from [a0+28040] +0xb8.
  The `lwc1` at 0xdb6c368 loads 4 bytes from [a0+28040] +0xc8.
  The `lw` at 0xdb6c36c loads 4 bytes from a0 (arg0 at entry) +0xdd0.
  The `swc1` at 0xdb6c394 stores 4 bytes to a2 (arg2 at entry) +0x10.
  The `lwc1` at 0xdb6c398 loads 4 bytes from a0 (arg0 at entry) +0x77a0.
  The `swc1` at 0xdb6c3a4 stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `jalr` at 0xdb6c380 calls __GL_TEXENV_CLAMP [0xdb6acf0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3536], a3=a3 at entry (arg3).
  The return at 0xdb6c3b0 has v0 = ret(__GL_TEXENV_CLAMP).

- `__glim_GenTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb74c54 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb74c54-0xdb74d04 (176 bytes).
  It occupies 176 bytes.
  The `lw` at 0xdb74c70 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdb74c80 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdb74cec loads 4 bytes from [0x1010] +0x6da0.
  The `jalr` at 0xdb74c98 calls __glSetError [0xdb1ac34] with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `jalr` at 0xdb74cbc calls __glSetError [0xdb1ac34] with a0=0x501, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `jalr` at 0xdb74ce8 calls __glNamesGenNames [0xdb3e9f4] with a0=[0x1010], a1=[[0x1010]+28064], a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `bne` branch at 0xdb74c88 targets 0xdb74ca8, is taken when t7(=[0x1018]) != at(=0x1), and falls through when t7(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xdb74ca0 targets 0xdb74cf4 and is always taken.
  The `bgez` branch at 0xdb74ca8 targets 0xdb74cd0, is taken when a2(=a0) >= 0 (signed), and falls through when a2(=a0) < 0 (signed).
  The `beql` branch at 0xdb74cd0 targets 0xdb74cf8, is taken when a2(=a0) == 0, and falls through when a2(=a0) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xdb74cd4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xdb74cd8 targets 0xdb74cf8, is taken when a3(=a1) == 0, and falls through when a3(=a1) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xdb74cdc runs only when taken and is annulled on fall-through.
  The return at 0xdb74cfc has v0 = ?.

- `__glim_BindTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb751a4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb751a4-0xdb752b8 (276 bytes).
  It occupies 276 bytes.
  The `lw` at 0xdb751c4 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdb751cc loads 4 bytes from abs 0x1010.
  The `lw` at 0xdb751e8 loads 4 bytes from [0x1010] +0x2d60.
  2 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xdb75208, `sw` at 0xdb75294.
  The `lw` at 0xdb75298 loads 4 bytes from [0x1010] +0x2d44.
  The `sw` at 0xdb752a4 stores 4 bytes to [0x1010] +0x2d44.
  The `jalr` at 0xdb751f0 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=[0x1010].
  The `jalr` at 0xdb75214 calls __glSetError [0xdb1ac34] with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=[0x1010].
  The `jalr` at 0xdb75268 calls __glSetError [0xdb1ac34] with a0=0x500, a1=?, a2=a0 at entry (arg0), a3=[0x1010].
  The `jalr` at 0xdb75284 calls __glBindTexture [0xdb74f58] with a0=[0x1010], a1=one of 0x0, 0x1, 0x2, a2=a1 at entry (arg1), a3=[0x1010].
  The `beq` branch at 0xdb751d0 targets 0xdb75224, is taken when v0(=[0x1018]) == 0, and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xdb751d8 targets 0xdb7520c, is taken when v0(=[0x1018]) != at(=0x2), and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xdb75204 targets 0xdb75224 and is always taken.
  The `beq` branch at 0xdb7521c targets 0xdb752a8 and is always taken.
  The `beq` branch at 0xdb75228 targets 0xdb75248, is taken when a2(=a0) == at(=0xde0), and falls through when a2(=a0) != at(=0xde0).
  The `beq` branch at 0xdb75230 targets 0xdb75250, is taken when a2(=a0) == at(=0xde1), and falls through when a2(=a0) != at(=0xde1).
  The `beq` branch at 0xdb75238 targets 0xdb75258, is taken when a2(=a0) == at(=0x806f), and falls through when a2(=a0) != at(=0x806f).
  The `beq` branch at 0xdb75240 targets 0xdb75260 and is always taken.
  The `beq` branch at 0xdb75248 targets 0xdb75278 and is always taken.
  The `beq` branch at 0xdb75250 targets 0xdb75278 and is always taken.
  The `beq` branch at 0xdb75258 targets 0xdb75278 and is always taken.
  The `beq` branch at 0xdb75270 targets 0xdb752a8 and is always taken.
  The return at 0xdb752b0 has v0 = one of ret(__glSetError), ret(__glBindTexture).

- `__glim_PrioritizeTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb752b8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb752b8-0xdb75454 (412 bytes).
  It occupies 412 bytes.
  The `lw` at 0xdb752f8 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdb75310 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdb7536c loads 4 bytes from ?.
  The `lw` at 0xdb75380 loads 4 bytes from [0x1010] +0x6da0.
  The `lwc1` at 0xdb753a0 loads 4 bytes from ?.
  The `lw` at 0xdb753b0 loads 4 bytes from [0x1010] +0xdd0.
  2 such `lw` accesses load 4 bytes from ret(__glNamesLockData) +0x8, including `lw` at 0xdb753b8, `lw` at 0xdb753e8.
  The `swc1` at 0xdb753bc stores 4 bytes to ret(__glNamesLockData) +0xf0.
  The `lw` at 0xdb753c0 loads 4 bytes from [0x1010] +0x6d7c.
  The `lw` at 0xdb753c8 loads 4 bytes from ret(__glNamesLockData) +0xec.
  The `lw` at 0xdb753d0 loads 4 bytes from ([[0x1010]+28028] + ([ret(__glNamesLockData)+8] << 0x2)) +0x0.
  The `lw` at 0xdb753d4 loads 4 bytes from [([[0x1010]+28028] + ([ret(__glNamesLockData)+8] << 0x2))] +0xdc.
  The `lwc1` at 0xdb753e0 loads 4 bytes from ret(__glNamesLockData) +0xf0.
  The `swc1` at 0xdb753e4 stores 4 bytes to [([[0x1010]+28028] + ([ret(__glNamesLockData)+8] << 0x2))] +0xe0.
  The `lw` at 0xdb753ec loads 4 bytes from [0x1010] +0x9ac.
  The `swc1` at 0xdb753fc stores 4 bytes to ?.
  The `jalr` at 0xdb7531c calls __glSetError [0xdb1ac34] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb7533c calls __glSetError [0xdb1ac34] with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb75384 calls __glNamesLockData [0xdb3d700] with a0=[0x1010], a1=[[0x1010]+28064], a2=?, a3=?.
  The `jalr` at 0xdb753ac calls Clampf [0xdb60ae8] with a0=?, a1=?, a2=[[0x1010]+3536], a3=?; fp f14=f20.
  The `jalr` at 0xdb7540c calls __glNamesUnlockData [0xdb3e144] with a0=[0x1010], a1=ret(__glNamesLockData), a2=?, a3=?.
  The `bne` branch at 0xdb7530c targets 0xdb7532c, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xdb75324 targets 0xdb75424 and is always taken.
  The `bgez` branch at 0xdb7532c targets 0xdb75348, is taken when s6(=a0) >= 0 (signed), and falls through when s6(=a0) < 0 (signed).
  The `beql` branch at 0xdb75348 targets 0xdb75428, is taken when s6(=a0) == 0, and falls through when s6(=a0) != 0; its branch-likely delay slot `lw ra,68(sp)` at 0xdb7534c runs only when taken and is annulled on fall-through.
  The `blez` branch at 0xdb75350 targets 0xdb75424, is taken when s6(=a0) <= 0 (signed), and falls through when s6(=a0) > 0 (signed).
  The `beql` branch at 0xdb75370 targets 0xdb7541c, is taken when a2(?) == 0, and falls through when a2(?) != 0; its branch-likely delay slot `addiu s1,s1,4` at 0xdb75374 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdb75390 targets 0xdb75418, is taken when v0(=ret(__glNamesLockData)) == 0, and falls through when v0(=ret(__glNamesLockData)) != 0.
  The `bne` branch at 0xdb753d8 targets 0xdb75400, is taken when t3(=[ret(__glNamesLockData)+236]) != t4(=[[([[0x1010]+28028] + ([ret(__glNamesLockData)+8] << 0x2))]+220]), and falls through when t3(=[ret(__glNamesLockData)+236]) == t4(=[[([[0x1010]+28028] + ([ret(__glNamesLockData)+8] << 0x2))]+220]).
  The `bne` branch at 0xdb7541c targets 0xdb7536c, is taken when s1(?) != s4(=((a0 << 0x2) + a1)), and falls through when s1(?) == s4(=((a0 << 0x2) + a1)).
  The return at 0xdb7544c has v0 = ?.

- `__glim_IsTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb7569c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb7569c-0xdb7574c (176 bytes).
  It occupies 176 bytes.
  The `lw` at 0xdb756b8 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdb756c8 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdb756fc loads 4 bytes from [0x1010] +0x6da0.
  The `jalr` at 0xdb756d4 calls __glSetError [0xdb1ac34] with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=[0x1010].
  The `jalr` at 0xdb75704 calls __glNamesLockData [0xdb3d700] with a0=[0x1010], a1=[[0x1010]+28064], a2=a0 at entry (arg0), a3=[0x1010].
  The `jalr` at 0xdb7572c calls __glNamesUnlockData [0xdb3e144] with a0=[0x1010], a1=ret(__glNamesLockData), a2=?, a3=[0x1010].
  The `bne` branch at 0xdb756c4 targets 0xdb756e8, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xdb756e0 targets 0xdb7573c and is always taken.
  The `bne` branch at 0xdb756e8 targets 0xdb756f8, is taken when a2(=a0) != 0, and falls through when a2(=a0) == 0.
  The `beq` branch at 0xdb756f0 targets 0xdb7573c and is always taken.
  The `bne` branch at 0xdb75714 targets 0xdb75724, is taken when v0(=ret(__glNamesLockData)) != 0, and falls through when v0(=ret(__glNamesLockData)) == 0.
  The `beq` branch at 0xdb7571c targets 0xdb7573c and is always taken.
  The return at 0xdb75744 has v0 = one of 0x0, 0x1.

- `__glim_SelectTextureCoordSetSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb76230 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb76230-0xdb762cc (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xdb7624c loads 4 bytes from abs 0x1018.
  The `lw` at 0xdb76254 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdb76288 loads 4 bytes from [0x1010] +0xe14.
  The `sw` at 0xdb7629c stores 4 bytes to [0x1010] +0x6d8c.
  The `jalr` at 0xdb76268 calls __glSetError [0xdb1ac34] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb762a8 calls __glSetError [0xdb1ac34] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bnel` branch at 0xdb76258 targets 0xdb7627c, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1); its branch-likely delay slot `ori at,zero,0x83c7` at 0xdb7625c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdb76270 targets 0xdb762bc and is always taken.
  The `bne` branch at 0xdb76280 targets 0xdb762a0, is taken when a0 < at(=0x83c7) (unsigned), and falls through when a0 >= at(=0x83c7) (unsigned).
  The `beql` branch at 0xdb76298 targets 0xdb762bc, is taken when t8(=[[0x1010]+3604]+33735) >= a0 (unsigned), and falls through when t8(=[[0x1010]+3604]+33735) < a0 (unsigned); its branch-likely delay slot `sw a0,28044(v0)` at 0xdb7629c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdb762b0 targets 0xdb762bc and is always taken.
  The return at 0xdb762c4 has v0 = one of ret(__glSetError), [0x1010].
  The instructions from 0xdb76278 to 0xdb76278 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdb762b8 to 0xdb762b8 are not reached by any path from the entry, and their branches are not listed.

- `__glim_InterleavedTextureCoordSetsSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb82eb8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb82eb8-0xdb82f44 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xdb82ed4 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdb82edc loads 4 bytes from abs 0x1010.
  The `lw` at 0xdb82f08 loads 4 bytes from [0x1010] +0xe14.
  The `sw` at 0xdb82f14 stores 4 bytes to [0x1010] +0x1524.
  The `jalr` at 0xdb82ef0 calls __glSetError [0xdb1ac34] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb82f20 calls __glSetError [0xdb1ac34] with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xdb82ee0 targets 0xdb82f00, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xdb82ef8 targets 0xdb82f34 and is always taken.
  The `blez` branch at 0xdb82f00 targets 0xdb82f18, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beql` branch at 0xdb82f10 targets 0xdb82f34, is taken when t7(=[[0x1010]+3604]) >= a0 (signed), and falls through when t7(=[[0x1010]+3604]) < a0 (signed); its branch-likely delay slot `sw a0,5412(v0)` at 0xdb82f14 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdb82f28 targets 0xdb82f34 and is always taken.
  The return at 0xdb82f3c has v0 = one of ret(__glSetError), [0x1010].
  The instructions from 0xdb82f30 to 0xdb82f30 are not reached by any path from the entry, and their branches are not listed.

- `__glReadjustZCounts` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb84b40 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb84b40-0xdb84be0 (160 bytes).
  It occupies 160 bytes.
  The `lbu` at 0xdb84b58 loads 1 byte from a0 (arg0 at entry) +0x664.
  The `lbu` at 0xdb84b64 loads 1 byte from a0 (arg0 at entry) +0xc91.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x79a8, including `lw` at 0xdb84b70, `lw` at 0xdb84ba0, `lw` at 0xdb84bc0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x79a4, including `lw` at 0xdb84b74, `lw` at 0xdb84ba4.
  The `lw` at 0xdb84b84 loads 4 bytes from a0 (arg0 at entry) +0x79c0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x79a4, including `sw` at 0xdb84bb4, `sw` at 0xdb84bcc.
  The `sw` at 0xdb84bb8 stores 4 bytes to abs 0x1018.
  The `lw` at 0xdb84bbc loads 4 bytes from a0 (arg0 at entry) +0x2d44.
  The `sw` at 0xdb84bc8 stores 4 bytes to a0 (arg0 at entry) +0x2d44.
  The `jalr` at 0xdb84b8c calls (unknown callee) with a0=a0 at entry (arg0), a1=a0+31060, a2=[a0+31144], a3=a3 at entry (arg3).
  The `beql` branch at 0xdb84b5c targets 0xdb84bd4, is taken when t6(=[a0+1636]:1) == 0, and falls through when t6(=[a0+1636]:1) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xdb84b60 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xdb84b68 targets 0xdb84bd4, is taken when t7(=[a0+3217]:1) == 0, and falls through when t7(=[a0+3217]:1) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xdb84b6c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xdb84b78 targets 0xdb84bd4, is taken when a2(=[a0+31144]) == t8(=[a0+31140]), and falls through when a2(=[a0+31144]) != t8(=[a0+31140]); its branch-likely delay slot `lw ra,28(sp)` at 0xdb84b7c runs only when taken and is annulled on fall-through.
  The `bgezl` branch at 0xdb84bb0 targets 0xdb84bd0, is taken when t2(?) >= 0 (signed), and falls through when t2(?) < 0 (signed); its branch-likely delay slot `sw a2,31140(a0)` at 0xdb84bb4 runs only when taken and is annulled on fall-through.
  The return at 0xdb84bd8 has v0 = one of ?, ret(?).

- `__glReCompute2DMatrix` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb85f74 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb85f74-0xdb8601c (168 bytes).
  It occupies 168 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x40, including `lw` at 0xdb85f80, `lw` at 0xdb8600c.
  The `lwc1` at 0xdb85f90 loads 4 bytes from a0 (arg0 at entry) +0x6b8.
  The `lwc1` at 0xdb85f94 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xdb85f98 loads 4 bytes from a0 (arg0 at entry) +0x6c0.
  The `swc1` at 0xdb85fa4 stores 4 bytes to a0 (arg0 at entry) +0x738c.
  The `lwc1` at 0xdb85fa8 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `swc1` at 0xdb85fb0 stores 4 bytes to a0 (arg0 at entry) +0x7390.
  The `lwc1` at 0xdb85fb4 loads 4 bytes from a1 (arg1 at entry) +0x10.
  The `swc1` at 0xdb85fbc stores 4 bytes to a0 (arg0 at entry) +0x739c.
  The `lwc1` at 0xdb85fc0 loads 4 bytes from a1 (arg1 at entry) +0x14.
  The `lwc1` at 0xdb85fc4 loads 4 bytes from a0 (arg0 at entry) +0x6bc.
  The `swc1` at 0xdb85fcc stores 4 bytes to a0 (arg0 at entry) +0x73a0.
  The `lwc1` at 0xdb85fd0 loads 4 bytes from a1 (arg1 at entry) +0x28.
  The `swc1` at 0xdb85fd4 stores 4 bytes to a0 (arg0 at entry) +0x73b4.
  The `lwc1` at 0xdb85fd8 loads 4 bytes from a1 (arg1 at entry) +0x30.
  The `lwc1` at 0xdb85fe0 loads 4 bytes from a0 (arg0 at entry) +0x6c4.
  The `swc1` at 0xdb85fe8 stores 4 bytes to a0 (arg0 at entry) +0x73bc.
  The `lwc1` at 0xdb85fec loads 4 bytes from a1 (arg1 at entry) +0x34.
  The `swc1` at 0xdb85ffc stores 4 bytes to a0 (arg0 at entry) +0x73c0.
  The `lwc1` at 0xdb86000 loads 4 bytes from a1 (arg1 at entry) +0x38.
  The `swc1` at 0xdb86004 stores 4 bytes to a0 (arg0 at entry) +0x73c8.
  The `swc1` at 0xdb86008 stores 4 bytes to a0 (arg0 at entry) +0x73c4.
  The `sw` at 0xdb86010 stores 4 bytes to a0 (arg0 at entry) +0x73cc.
  The `bne` branch at 0xdb85f88 targets 0xdb86014, is taken when t6(=[a1+64]) < 0x2 (unsigned), and falls through when t6(=[a1+64]) >= 0x2 (unsigned).
  The return at 0xdb86014 has v0 = ?.

- `DestroySoftContext` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb862cc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb862cc-0xdb8633c (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xdb862e0 loads 4 bytes from abs 0x1010.
  2 such `sw` accesses store 4 bytes to abs 0x1010, including `sw` at 0xdb862ec, `sw` at 0xdb86338.
  The `jalr` at 0xdb862f4 calls __glFreeAttributeState [0xdb111d0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb86308 calls __glFreeBufData [0xdb1b384] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xdb8631c calls __glDestroyContext [0xdb1a814] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The return at 0xdb86334 has v0 = ret(__glDestroyContext).

- `Store_8` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb86ae0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb86ae0-0xdb86dd4 (756 bytes).
  It occupies 756 bytes.
  The `lw` at 0xdb86b04 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdb86b08 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0xdb86b0c loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xdb86b10 loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xdb86b14 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdb86b18 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0xdb86b24 loads 4 bytes from [a0] +0x700.
  The `lw` at 0xdb86b28 loads 4 bytes from [a0] +0xe44.
  The `lb` at 0xdb86b60 loads 1 byte from table(0xdbd3cd0) +0x0.
  The `lwc1` at 0xdb86b88 loads 4 bytes from [a0] +0xdcc.
  The `lw` at 0xdb86b98 loads 4 bytes from [a0] +0x704.
  The `lw` at 0xdb86bb8 loads 4 bytes from [a0] +0x3054.
  3 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xdb86be0, `lwc1` at 0xdb86c6c, `lwc1` at 0xdb86d00.
  The `lw` at 0xdb86c74 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `lw` at 0xdb86d08 loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `lw` at 0xdb86d94 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `lbu` at 0xdb86d98 loads 1 byte from ?.
  The `lw` at 0xdb86d9c loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `lw` at 0xdb86da0 loads 4 bytes from a0 (arg0 at entry) +0x98.
  The `sb` at 0xdb86dbc stores 1 byte to ?.
  The `jalr` at 0xdb86bc4 calls (unknown callee) with a0=[a0], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=sp-24.
  The `beq` branch at 0xdb86b48 targets 0xdb86b88, is taken when (v1(=[[a0]+1792]) & 0x8) == 0, and falls through when (v1(=[[a0]+1792]) & 0x8) != 0.
  The `beq` branch at 0xdb86b80 targets 0xdb86b8c and is always taken.
  The `bne` branch at 0xdb86b90 targets 0xdb86bac, is taken when (v1(=[[a0]+1792]) & 0x2) != 0, and falls through when (v1(=[[a0]+1792]) & 0x2) == 0.
  The `beq` branch at 0xdb86ba4 targets 0xdb86be0, is taken when (t8(=[[a0]+1796]) & 0x800) == 0, and falls through when (t8(=[[a0]+1796]) & 0x800) != 0.
  The `beq` branch at 0xdb86bd8 targets 0xdb86be0 and is always taken.
  The `beql` branch at 0xdb86c0c targets 0xdb86c5c, is taken when (t1(?) & 0x78) == 0, and falls through when (t1(?) & 0x78) != 0; its branch-likely delay slot `mfc1 t1,$f18` at 0xdb86c10 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdb86c38 targets 0xdb86c50, is taken when (t1(?) & 0x78) != 0, and falls through when (t1(?) & 0x78) == 0.
  The `beq` branch at 0xdb86c48 targets 0xdb86c68 and is always taken.
  The `beq` branch at 0xdb86c50 targets 0xdb86c68 and is always taken.
  The `bltz` branch at 0xdb86c60 targets 0xdb86c50, is taken when t1(?) < 0 (signed), and falls through when t1(?) >= 0 (signed).
  The `beql` branch at 0xdb86ca0 targets 0xdb86cf0, is taken when (t6(?) & 0x78) == 0, and falls through when (t6(?) & 0x78) != 0; its branch-likely delay slot `mfc1 t6,$f8` at 0xdb86ca4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdb86ccc targets 0xdb86ce4, is taken when (t6(?) & 0x78) != 0, and falls through when (t6(?) & 0x78) == 0.
  The `beq` branch at 0xdb86cdc targets 0xdb86cfc and is always taken.
  The `beq` branch at 0xdb86ce4 targets 0xdb86cfc and is always taken.
  The `bltz` branch at 0xdb86cf4 targets 0xdb86ce4, is taken when t6(?) < 0 (signed), and falls through when t6(?) >= 0 (signed).
  The `beql` branch at 0xdb86d38 targets 0xdb86d88, is taken when (t1(?) & 0x78) == 0, and falls through when (t1(?) & 0x78) != 0; its branch-likely delay slot `mfc1 t1,$f18` at 0xdb86d3c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdb86d64 targets 0xdb86d7c, is taken when (t1(?) & 0x78) != 0, and falls through when (t1(?) & 0x78) == 0.
  The `beq` branch at 0xdb86d74 targets 0xdb86d94 and is always taken.
  The `beq` branch at 0xdb86d7c targets 0xdb86d94 and is always taken.
  The `bltz` branch at 0xdb86d8c targets 0xdb86d7c, is taken when t1(?) < 0 (signed), and falls through when t1(?) >= 0 (signed).
  The return at 0xdb86dcc has v0 = ?.
  The instructions from 0xdb86c58 to 0xdb86c58 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdb86cec to 0xdb86cec are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdb86d84 to 0xdb86d84 are not reached by any path from the entry, and their branches are not listed.

- `Store_16` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb86dd4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb86dd4-0xdb870d4 (768 bytes).
  It occupies 768 bytes.
  The `lw` at 0xdb86df8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdb86dfc loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0xdb86e00 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xdb86e04 loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xdb86e08 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdb86e0c loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0xdb86e18 loads 4 bytes from [a0] +0x700.
  The `lw` at 0xdb86e1c loads 4 bytes from [a0] +0xe44.
  The `lb` at 0xdb86e60 loads 1 byte from table(0xdbd3cd0) +0x0.
  The `lwc1` at 0xdb86e88 loads 4 bytes from [a0] +0xdcc.
  The `lw` at 0xdb86e98 loads 4 bytes from [a0] +0x704.
  The `lw` at 0xdb86eb8 loads 4 bytes from [a0] +0x3054.
  3 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xdb86ee0, `lwc1` at 0xdb86f6c, `lwc1` at 0xdb87000.
  The `lw` at 0xdb86f74 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `lw` at 0xdb87008 loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `lw` at 0xdb87094 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `lhu` at 0xdb87098 loads 2 bytes from ?.
  The `lw` at 0xdb8709c loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `lw` at 0xdb870a0 loads 4 bytes from a0 (arg0 at entry) +0x98.
  The `sh` at 0xdb870bc stores 2 bytes to ?.
  The `jalr` at 0xdb86ec4 calls (unknown callee) with a0=[a0], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=sp-24.
  The `beq` branch at 0xdb86e40 targets 0xdb86e88, is taken when (v1(=[[a0]+1792]) & 0x8) == 0, and falls through when (v1(=[[a0]+1792]) & 0x8) != 0.
  The `beq` branch at 0xdb86e80 targets 0xdb86e8c and is always taken.
  The `bne` branch at 0xdb86e90 targets 0xdb86eac, is taken when (v1(=[[a0]+1792]) & 0x2) != 0, and falls through when (v1(=[[a0]+1792]) & 0x2) == 0.
  The `beq` branch at 0xdb86ea4 targets 0xdb86ee0, is taken when (t3(=[[a0]+1796]) & 0x800) == 0, and falls through when (t3(=[[a0]+1796]) & 0x800) != 0.
  The `beq` branch at 0xdb86ed8 targets 0xdb86ee0 and is always taken.
  The `beql` branch at 0xdb86f0c targets 0xdb86f5c, is taken when (t4(?) & 0x78) == 0, and falls through when (t4(?) & 0x78) != 0; its branch-likely delay slot `mfc1 t4,$f18` at 0xdb86f10 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdb86f38 targets 0xdb86f50, is taken when (t4(?) & 0x78) != 0, and falls through when (t4(?) & 0x78) == 0.
  The `beq` branch at 0xdb86f48 targets 0xdb86f68 and is always taken.
  The `beq` branch at 0xdb86f50 targets 0xdb86f68 and is always taken.
  The `bltz` branch at 0xdb86f60 targets 0xdb86f50, is taken when t4(?) < 0 (signed), and falls through when t4(?) >= 0 (signed).
  The `beql` branch at 0xdb86fa0 targets 0xdb86ff0, is taken when (t8(?) & 0x78) == 0, and falls through when (t8(?) & 0x78) != 0; its branch-likely delay slot `mfc1 t8,$f8` at 0xdb86fa4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdb86fcc targets 0xdb86fe4, is taken when (t8(?) & 0x78) != 0, and falls through when (t8(?) & 0x78) == 0.
  The `beq` branch at 0xdb86fdc targets 0xdb86ffc and is always taken.
  The `beq` branch at 0xdb86fe4 targets 0xdb86ffc and is always taken.
  The `bltz` branch at 0xdb86ff4 targets 0xdb86fe4, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `beql` branch at 0xdb87038 targets 0xdb87088, is taken when (t4(?) & 0x78) == 0, and falls through when (t4(?) & 0x78) != 0; its branch-likely delay slot `mfc1 t4,$f18` at 0xdb8703c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdb87064 targets 0xdb8707c, is taken when (t4(?) & 0x78) != 0, and falls through when (t4(?) & 0x78) == 0.
  The `beq` branch at 0xdb87074 targets 0xdb87094 and is always taken.
  The `beq` branch at 0xdb8707c targets 0xdb87094 and is always taken.
  The `bltz` branch at 0xdb8708c targets 0xdb8707c, is taken when t4(?) < 0 (signed), and falls through when t4(?) >= 0 (signed).
  The return at 0xdb870cc has v0 = ?.
  The instructions from 0xdb86f58 to 0xdb86f58 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdb86fec to 0xdb86fec are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdb87084 to 0xdb87084 are not reached by any path from the entry, and their branches are not listed.

- `Store_32` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb87420 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb87420-0xdb876d4 (692 bytes).
  It occupies 692 bytes.
  The `lw` at 0xdb87440 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdb87444 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0xdb87448 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xdb8744c loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xdb87450 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0xdb87454 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdb87460 loads 4 bytes from [a0] +0x700.
  The `lw` at 0xdb87464 loads 4 bytes from [a0] +0xe44.
  The `lw` at 0xdb8749c loads 4 bytes from [a0] +0x704.
  The `lw` at 0xdb874b8 loads 4 bytes from [a0] +0x3054.
  The `lwc1` at 0xdb874dc loads 4 bytes from [a0] +0xdcc.
  3 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xdb874e0, `lwc1` at 0xdb8756c, `lwc1` at 0xdb87600.
  The `lw` at 0xdb87574 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `lw` at 0xdb87608 loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `lw` at 0xdb87694 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `lw` at 0xdb87698 loads 4 bytes from ?.
  The `lw` at 0xdb8769c loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `lw` at 0xdb876a0 loads 4 bytes from a0 (arg0 at entry) +0x98.
  The `sw` at 0xdb876bc stores 4 bytes to ?.
  The `jalr` at 0xdb874c4 calls (unknown callee) with a0=[a0], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=sp-24.
  The `bne` branch at 0xdb87494 targets 0xdb874b0, is taken when (v1(=[[a0]+1792]) & 0x2) != 0, and falls through when (v1(=[[a0]+1792]) & 0x2) == 0.
  The `beq` branch at 0xdb874a8 targets 0xdb874dc, is taken when (t3(=[[a0]+1796]) & 0x800) == 0, and falls through when (t3(=[[a0]+1796]) & 0x800) != 0.
  The `beq` branch at 0xdb874d4 targets 0xdb874dc and is always taken.
  The `beql` branch at 0xdb8750c targets 0xdb8755c, is taken when (t4(?) & 0x78) == 0, and falls through when (t4(?) & 0x78) != 0; its branch-likely delay slot `mfc1 t4,$f8` at 0xdb87510 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdb87538 targets 0xdb87550, is taken when (t4(?) & 0x78) != 0, and falls through when (t4(?) & 0x78) == 0.
  The `beq` branch at 0xdb87548 targets 0xdb87568 and is always taken.
  The `beq` branch at 0xdb87550 targets 0xdb87568 and is always taken.
  The `bltz` branch at 0xdb87560 targets 0xdb87550, is taken when t4(?) < 0 (signed), and falls through when t4(?) >= 0 (signed).
  The `beql` branch at 0xdb875a0 targets 0xdb875f0, is taken when (t1(?) & 0x78) == 0, and falls through when (t1(?) & 0x78) != 0; its branch-likely delay slot `mfc1 t1,$f18` at 0xdb875a4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdb875cc targets 0xdb875e4, is taken when (t1(?) & 0x78) != 0, and falls through when (t1(?) & 0x78) == 0.
  The `beq` branch at 0xdb875dc targets 0xdb875fc and is always taken.
  The `beq` branch at 0xdb875e4 targets 0xdb875fc and is always taken.
  The `bltz` branch at 0xdb875f4 targets 0xdb875e4, is taken when t1(?) < 0 (signed), and falls through when t1(?) >= 0 (signed).
  The `beql` branch at 0xdb87638 targets 0xdb87688, is taken when (t4(?) & 0x78) == 0, and falls through when (t4(?) & 0x78) != 0; its branch-likely delay slot `mfc1 t4,$f8` at 0xdb8763c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdb87664 targets 0xdb8767c, is taken when (t4(?) & 0x78) != 0, and falls through when (t4(?) & 0x78) == 0.
  The `beq` branch at 0xdb87674 targets 0xdb87694 and is always taken.
  The `beq` branch at 0xdb8767c targets 0xdb87694 and is always taken.
  The `bltz` branch at 0xdb8768c targets 0xdb8767c, is taken when t4(?) < 0 (signed), and falls through when t4(?) >= 0 (signed).
  The return at 0xdb876cc has v0 = ?.
  The instructions from 0xdb87558 to 0xdb87558 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdb875ec to 0xdb875ec are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdb87684 to 0xdb87684 are not reached by any path from the entry, and their branches are not listed.

- `Fetch_8` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb876d4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb876d4-0xdb877ac (216 bytes).
  It occupies 216 bytes.
  The `lw` at 0xdb876e0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdb876e4 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xdb876e8 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdb876ec loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xdb876fc loads 4 bytes from [a0] +0xe44.
  The `lw` at 0xdb87700 loads 4 bytes from [a0] +0xcc0.
  The `lbu` at 0xdb87714 loads 1 byte from ?.
  The `lw` at 0xdb87718 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `swc1` at 0xdb8773c stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lw` at 0xdb87740 loads 4 bytes from [a0] +0xcc4.
  The `lw` at 0xdb87744 loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `swc1` at 0xdb8776c stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `lw` at 0xdb87770 loads 4 bytes from [a0] +0xcc8.
  The `lw` at 0xdb87774 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `swc1` at 0xdb8779c stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `lwc1` at 0xdb877a0 loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `swc1` at 0xdb877a8 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The `bgez` branch at 0xdb87728 targets 0xdb8773c, is taken when t9(?) >= 0 (signed), and falls through when t9(?) < 0 (signed).
  The `bgez` branch at 0xdb87758 targets 0xdb8776c, is taken when t7(?) >= 0 (signed), and falls through when t7(?) < 0 (signed).
  The `bgez` branch at 0xdb87788 targets 0xdb8779c, is taken when t4(?) >= 0 (signed), and falls through when t4(?) < 0 (signed).
  The return at 0xdb877a4 has v0 = [a0].

- `Fetch_16` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb877ac (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb877ac-0xdb87890 (228 bytes).
  It occupies 228 bytes.
  The `lw` at 0xdb877b8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdb877bc loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xdb877c0 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdb877c4 loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xdb877d4 loads 4 bytes from [a0] +0xe44.
  The `lhu` at 0xdb877f4 loads 2 bytes from ?.
  The `lw` at 0xdb877f8 loads 4 bytes from [a0] +0xcc0.
  The `lw` at 0xdb877fc loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `swc1` at 0xdb87820 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lw` at 0xdb87824 loads 4 bytes from [a0] +0xcc4.
  The `lw` at 0xdb87828 loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `swc1` at 0xdb87850 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `lw` at 0xdb87854 loads 4 bytes from [a0] +0xcc8.
  The `lw` at 0xdb87858 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `swc1` at 0xdb87880 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `lwc1` at 0xdb87884 loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `swc1` at 0xdb8788c stores 4 bytes to a3 (arg3 at entry) +0xc.
  The `bgez` branch at 0xdb8780c targets 0xdb87820, is taken when t6(?) >= 0 (signed), and falls through when t6(?) < 0 (signed).
  The `bgez` branch at 0xdb8783c targets 0xdb87850, is taken when t4(?) >= 0 (signed), and falls through when t4(?) < 0 (signed).
  The `bgez` branch at 0xdb8786c targets 0xdb87880, is taken when t8(?) >= 0 (signed), and falls through when t8(?) < 0 (signed).
  The return at 0xdb87888 has v0 = [a0].

- `Fetch_32` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb8799c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb8799c-0xdbb8550 (199604 bytes).
  It occupies 199604 bytes.
  The `lw` at 0xdb879a8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdb879ac loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xdb879b0 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdb879b4 loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xdb879c8 loads 4 bytes from [a0] +0xe44.
  The `lw` at 0xdb879e4 loads 4 bytes from ?.
  The `lw` at 0xdb879e8 loads 4 bytes from [a0] +0xcc0.
  The `lw` at 0xdb879ec loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `swc1` at 0xdb87a10 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lw` at 0xdb87a14 loads 4 bytes from [a0] +0xcc4.
  The `lw` at 0xdb87a18 loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `swc1` at 0xdb87a40 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `lw` at 0xdb87a44 loads 4 bytes from [a0] +0xcc8.
  The `lw` at 0xdb87a48 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `swc1` at 0xdb87a70 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `lwc1` at 0xdb87a74 loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `swc1` at 0xdb87a7c stores 4 bytes to a3 (arg3 at entry) +0xc.
  The `bgez` branch at 0xdb879fc targets 0xdb87a10, is taken when t4(?) >= 0 (signed), and falls through when t4(?) < 0 (signed).
  The `bgez` branch at 0xdb87a2c targets 0xdb87a40, is taken when t8(?) >= 0 (signed), and falls through when t8(?) < 0 (signed).
  The `bgez` branch at 0xdb87a5c targets 0xdb87a70, is taken when t4(?) >= 0 (signed), and falls through when t4(?) < 0 (signed).
  The return at 0xdb87a78 has v0 = [a0].
  The instructions from 0xdb87a80 to 0xdbb854c are not reached by any path from the entry, and their branches are not listed.

- `__gllc_DrawBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb905cc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb905cc-0xdb90640 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xdb905e4 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdb90610 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdb9061c stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xdb905f4 calls __glDlistAllocOp2 [0xdadacf0] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb90624 calls __glDlistAppendOp [0xdadad88] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xdb96db8, a3=?.
  The `beq` branch at 0xdb90604 targets 0xdb90630, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdb90638 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_LoadMatrixf` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb91eb4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb91eb4-0xdb91f3c (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xdb91ecc loads 4 bytes from abs 0x1010.
  The `sh` at 0xdb91ef0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `jalr` at 0xdb91edc calls __glDlistAllocOp2 [0xdadacf0] with a0=[0x1010], a1=0x40, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb91f04 calls memcpy with a0=ret(__glDlistAllocOp2)+16, a1=a0 at entry (arg0), a2=0x40, a3=?.
  The `jalr` at 0xdb91f20 calls __glDlistAppendOp [0xdadad88] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xdb979f0, a3=?.
  The `beq` branch at 0xdb91ee4 targets 0xdb91f2c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdb91f34 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_LoadMatrixd` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb91f3c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb91f3c-0xdb91fcc (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xdb91f54 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdb91f7c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xdb91f80 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `jalr` at 0xdb91f64 calls __glDlistAllocOp2 [0xdadacf0] with a0=[0x1010], a1=0x80, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb91f94 calls memcpy with a0=ret(__glDlistAllocOp2)+16, a1=a0 at entry (arg0), a2=0x80, a3=?.
  The `jalr` at 0xdb91fb0 calls __glDlistAppendOp [0xdadad88] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xdb97a2c, a3=?.
  The `beq` branch at 0xdb91f6c targets 0xdb91fbc, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdb91fc4 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_ResetHistogramEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb92dc4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb92dc4-0xdb92e38 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xdb92ddc loads 4 bytes from abs 0x1010.
  The `sh` at 0xdb92e08 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdb92e14 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xdb92dec calls __glDlistAllocOp2 [0xdadacf0] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb92e1c calls __glDlistAppendOp [0xdadad88] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xdb981a0, a3=?.
  The `beq` branch at 0xdb92dfc targets 0xdb92e28, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdb92e30 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_ResetMinmaxEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb92e38 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb92e38-0xdb92eac (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xdb92e50 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdb92e7c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdb92e88 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xdb92e60 calls __glDlistAllocOp2 [0xdadacf0] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb92e90 calls __glDlistAppendOp [0xdadad88] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xdb981e0, a3=?.
  The `beq` branch at 0xdb92e70 targets 0xdb92e9c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdb92ea4 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_BindTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb92eac (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb92eac-0xdb92f2c (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xdb92ec4 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdb92ef4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdb92f00 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xdb92f08 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xdb92ed8 calls __glDlistAllocOp2 [0xdadacf0] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb92f10 calls __glDlistAppendOp [0xdadad88] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xdb98220, a3=?.
  The `beq` branch at 0xdb92ee8 targets 0xdb92f1c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdb92f24 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_PrioritizeTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb92f2c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb92f2c-0xdb93038 (268 bytes).
  It occupies 268 bytes.
  The `lw` at 0xdb92f60 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdb92fbc stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdb92fcc stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xdb92f6c calls __gllc_InvalidValue [0xdadb250] with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb92f8c calls __gllc_InvalidValue [0xdadb250] with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb92fa8 calls __glDlistAllocOp2 [0xdadacf0] with a0=[0x1010], a1=((a0 << 0x2) + (a0 << 0x2))+4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb92fdc calls memcpy with a0=ret(__glDlistAllocOp2)+20, a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=?.
  The `jalr` at 0xdb92ffc calls memcpy with a0=(ret(__glDlistAllocOp2) + (a0 << 0x2))+20, a1=a2 at entry (arg2), a2=(a0 << 0x2), a3=ret(__glDlistAllocOp2).
  The `jalr` at 0xdb93018 calls __glDlistAppendOp [0xdadad88] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xdb98268, a3=?.
  The `bgez` branch at 0xdb92f5c targets 0xdb92f7c, is taken when s0(=(a0 << 0x2)) >= 0 (signed), and falls through when s0(=(a0 << 0x2)) < 0 (signed).
  The `beq` branch at 0xdb92f74 targets 0xdb93024 and is always taken.
  The `bgez` branch at 0xdb92f7c targets 0xdb92f9c, is taken when s0(=(a0 << 0x2)) >= 0 (signed), and falls through when s0(=(a0 << 0x2)) < 0 (signed).
  The `beq` branch at 0xdb92f94 targets 0xdb93024 and is always taken.
  The `beq` branch at 0xdb92fb0 targets 0xdb93024, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdb93030 has v0 = one of ret(__gllc_InvalidValue), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_ReadInstrumentsSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb94074 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb94074-0xdb940e8 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xdb9408c loads 4 bytes from abs 0x1010.
  The `sh` at 0xdb940b8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdb940c4 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xdb9409c calls __glDlistAllocOp2 [0xdadacf0] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb940cc calls __glDlistAppendOp [0xdadad88] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xdb98b10, a3=?.
  The `beq` branch at 0xdb940ac targets 0xdb940d8, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdb940e0 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_TextureColorMaskSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb95124 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb95124-0xdb951bc (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xdb9513c loads 4 bytes from abs 0x1010.
  The `sh` at 0xdb95174 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xdb95180 stores 1 byte to ret(__glDlistAllocOp2) +0x10.
  The `sb` at 0xdb95188 stores 1 byte to ret(__glDlistAllocOp2) +0x11.
  The `sb` at 0xdb95190 stores 1 byte to ret(__glDlistAllocOp2) +0x12.
  The `sb` at 0xdb95198 stores 1 byte to ret(__glDlistAllocOp2) +0x13.
  The `jalr` at 0xdb95158 calls __glDlistAllocOp2 [0xdadacf0] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb951a0 calls __glDlistAppendOp [0xdadad88] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xdb9938c, a3=?.
  The `beq` branch at 0xdb95168 targets 0xdb951ac, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdb951b4 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__glle_DrawBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb96db8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb96db8-0xdb96df8 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xdb96dc8 loads 4 bytes from abs 0x1150.
  The `lw` at 0xdb96ddc loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdb96dd8 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdb96df0 has v0 = a0+4.

- `__glle_LoadMatrixf` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb979f0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb979f0-0xdb97a2c (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdb979fc loads 4 bytes from abs 0x12b4.
  The `jalr` at 0xdb97a0c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdb97a24 has v0 = a0+64.

- `__glle_LoadMatrixd` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb97a2c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb97a2c-0xdb97a68 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdb97a38 loads 4 bytes from abs 0x12b8.
  The `jalr` at 0xdb97a48 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdb97a60 has v0 = a0+128.

- `__glle_ResetHistogramEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb981a0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb981a0-0xdb981e0 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xdb981b0 loads 4 bytes from abs 0x1358.
  The `lw` at 0xdb981c4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdb981c0 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdb981d8 has v0 = a0+4.

- `__glle_ResetMinmaxEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb981e0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb981e0-0xdb98220 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xdb981f0 loads 4 bytes from abs 0x135c.
  The `lw` at 0xdb98204 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdb98200 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdb98218 has v0 = a0+4.

- `__glle_BindTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb98220 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb98220-0xdb98268 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xdb98230 loads 4 bytes from abs 0x1390.
  The `lw` at 0xdb98240 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xdb98244 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdb98248 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0xdb98260 has v0 = a0+8.

- `__glle_PrioritizeTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb98268 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb98268-0xdb982cc (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0xdb98284 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdb98288 loads 4 bytes from abs 0x13a0.
  The `jalr` at 0xdb982a8 calls (unknown callee) with a0=[a0], a1=a0+4, a2=(a0 + ([a0] << 0x2))+4, a3=a0 at entry (arg0).
  The return at 0xdb982c4 has v0 = (a0 + (([a0] << 0x2) + ([a0] << 0x2))+4).

- `__glle_ReadInstrumentsSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb98b10 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb98b10-0xdb98b50 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xdb98b20 loads 4 bytes from abs 0x1460.
  The `lw` at 0xdb98b34 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdb98b30 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdb98b48 has v0 = a0+4.

- `__glle_TextureColorMaskSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb9938c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb9938c-0xdb993dc (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0xdb993a4 loads 4 bytes from abs 0x152c.
  The `lbu` at 0xdb993b0 loads 1 byte from a0 (arg0 at entry) +0x3.
  The `lbu` at 0xdb993b4 loads 1 byte from a0 (arg0 at entry) +0x2.
  The `lbu` at 0xdb993b8 loads 1 byte from a0 (arg0 at entry) +0x1.
  The `lbu` at 0xdb993c0 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdb993bc calls (unknown callee) with a0=[a0]:1, a1=[a0+1]:1, a2=[a0+2]:1, a3=[a0+3]:1.
  The return at 0xdb993d4 has v0 = a0+4.

- `__glsplc_DrawBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb9e008 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb9e008-0xdb9e054 (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xdb9e040 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdb9e02c calls __glSPDlalloc [0xda5278c] with a0=0x4, a1=0x7d, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdb9e034 targets 0xdb9e044, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdb9e04c has v0 = ret(__glSPDlalloc).

- `__glsplc_LoadMatrixf` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb9f13c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb9f13c-0xdb9f19c (96 bytes).
  It occupies 96 bytes.
  The `jalr` at 0xdb9f160 calls __glSPDlalloc [0xda5278c] with a0=0x40, a1=0xaf, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb9f180 calls memcpy with a0=ret(__glSPDlalloc), a1=a0 at entry (arg0), a2=0x40, a3=?.
  The `beq` branch at 0xdb9f16c targets 0xdb9f18c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdb9f194 has v0 = one of ret(__glSPDlalloc), ret(memcpy).

- `__glsplc_LoadMatrixd` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb9f19c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb9f19c-0xdb9f1fc (96 bytes).
  It occupies 96 bytes.
  The `jalr` at 0xdb9f1c0 calls __glSPDlalloc2 [0xda52988] with a0=0x80, a1=0xb0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb9f1e0 calls memcpy with a0=ret(__glSPDlalloc2), a1=a0 at entry (arg0), a2=0x80, a3=?.
  The `beq` branch at 0xdb9f1cc targets 0xdb9f1ec, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xdb9f1f4 has v0 = one of ret(__glSPDlalloc2), ret(memcpy).

- `__glsplc_ResetHistogramEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb9fbec (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb9fbec-0xdb9fc38 (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xdb9fc24 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdb9fc10 calls __glSPDlalloc [0xda5278c] with a0=0x4, a1=0xce, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdb9fc18 targets 0xdb9fc28, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdb9fc30 has v0 = ret(__glSPDlalloc).

- `__glsplc_ResetMinmaxEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb9fc38 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb9fc38-0xdb9fc84 (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xdb9fc70 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdb9fc5c calls __glSPDlalloc [0xda5278c] with a0=0x4, a1=0xcf, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdb9fc64 targets 0xdb9fc74, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdb9fc7c has v0 = ret(__glSPDlalloc).

- `__glsplc_BindTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb9fc84 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb9fc84-0xdb9fcdc (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xdb9fcc0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdb9fcc8 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdb9fcac calls __glSPDlalloc [0xda5278c] with a0=0x8, a1=0xd4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdb9fcb4 targets 0xdb9fccc, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdb9fcd4 has v0 = ret(__glSPDlalloc).

- `__glsplc_PrioritizeTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb9fcdc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb9fcdc-0xdb9fd84 (168 bytes).
  It occupies 168 bytes.
  The `sw` at 0xdb9fd38 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdb9fd18 calls __glSPDlalloc [0xda5278c] with a0=((a0 << 0x2) + (a0 << 0x2))+4, a1=0xd5, a2=a2 at entry (arg2), a3=(a0 << 0x2).
  The `jalr` at 0xdb9fd48 calls memcpy with a0=ret(__glSPDlalloc)+4, a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=(a0 << 0x2).
  The `jalr` at 0xdb9fd68 calls memcpy with a0=(ret(__glSPDlalloc) + (a0 << 0x2))+4, a1=a2 at entry (arg2), a2=(a0 << 0x2), a3=?.
  The `beq` branch at 0xdb9fd24 targets 0xdb9fd74, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdb9fd7c has v0 = one of ret(__glSPDlalloc), ret(memcpy).

- `__glsplc_ReadInstrumentsSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba0968 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba0968-0xdba09b4 (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xdba09a0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdba098c calls __glSPDlalloc [0xda5278c] with a0=0x4, a1=0xf2, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdba0994 targets 0xdba09a4, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdba09ac has v0 = ret(__glSPDlalloc).

- `__glsplc_TextureColorMaskSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba1564 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba1564-0xdba15d4 (112 bytes).
  It occupies 112 bytes.
  The `sb` at 0xdba15a8 stores 1 byte to ret(__glSPDlalloc) +0x0.
  The `sb` at 0xdba15b0 stores 1 byte to ret(__glSPDlalloc) +0x1.
  The `sb` at 0xdba15b8 stores 1 byte to ret(__glSPDlalloc) +0x2.
  The `sb` at 0xdba15c0 stores 1 byte to ret(__glSPDlalloc) +0x3.
  The `jalr` at 0xdba1594 calls __glSPDlalloc [0xda5278c] with a0=0x4, a1=0x111, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdba159c targets 0xdba15c4, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdba15cc has v0 = ret(__glSPDlalloc).

- `__glce_DrawBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba5628 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba5628-0xdba5630 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdba5628 targets 0xdba5ed8 and is always taken.

- `__glce_ResetHistogramEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba5a38 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba5a38-0xdba5a40 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdba5a38 targets 0xdba5ed8 and is always taken.

- `__glce_ResetMinmaxEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba5a40 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba5a40-0xdba5a48 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdba5a40 targets 0xdba5ed8 and is always taken.

- `__glce_AreTexturesResidentEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba5a90 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba5a90-0xdba5a98 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdba5a90 targets 0xdba5dd8 and is always taken.

- `__glce_BindTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba5a98 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba5a98-0xdba5aa0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdba5a98 targets 0xdba5ed8 and is always taken.

- `__glce_DeleteTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba5aa0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba5aa0-0xdba5aa8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdba5aa0 targets 0xdba5dd8 and is always taken.

- `__glce_GenTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba5aa8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba5aa8-0xdba5ab0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdba5aa8 targets 0xdba5dd8 and is always taken.

- `__glce_IsTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba5ab0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba5ab0-0xdba5ab8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdba5ab0 targets 0xdba5dd8 and is always taken.

- `__glce_PrioritizeTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba5ab8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba5ab8-0xdba5ac0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdba5ab8 targets 0xdba5ed8 and is always taken.

- `__glce_ReadInstrumentsSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba5c40 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba5c40-0xdba5c48 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdba5c40 targets 0xdba5ed8 and is always taken.

- `__glce_TextureColorMaskSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba5dd0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba5dd0-0xdba5dd8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdba5dd0 targets 0xdba5ed8 and is always taken.

- `glDrawBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6510 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6510-0xdba651c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6510 loads 4 bytes from abs 0x1150.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6514).

- `glLoadMatrixf` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba693c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba693c-0xdba6948 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba693c loads 4 bytes from abs 0x12b4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6940).

- `glLoadMatrixd` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6948 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6948-0xdba6954 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6948 loads 4 bytes from abs 0x12b8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba694c).

- `glBlendColorEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba69f0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba69f0-0xdba69fc (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba69f0 loads 4 bytes from abs 0x12f0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba69f4).

- `glBlendEquationEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba69fc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba69fc-0xdba6a08 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba69fc loads 4 bytes from abs 0x12f4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6a00).

- `glTexSubImage1DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6a14 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6a14-0xdba6a20 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6a14 loads 4 bytes from abs 0x12fc.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6a18).

- `glTexSubImage2DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6a20 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6a20-0xdba6a2c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6a20 loads 4 bytes from abs 0x1300.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6a24).

- `glConvolutionFilter1DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6a2c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6a2c-0xdba6a38 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6a2c loads 4 bytes from abs 0x1304.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6a30).

- `glConvolutionFilter2DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6a38 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6a38-0xdba6a44 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6a38 loads 4 bytes from abs 0x1308.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6a3c).

- `glConvolutionParameterfEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6a44 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6a44-0xdba6a50 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6a44 loads 4 bytes from abs 0x130c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6a48).

- `glConvolutionParameterfvEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6a50 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6a50-0xdba6a5c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6a50 loads 4 bytes from abs 0x1310.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6a54).

- `glConvolutionParameteriEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6a5c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6a5c-0xdba6a68 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6a5c loads 4 bytes from abs 0x1314.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6a60).

- `glConvolutionParameterivEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6a68 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6a68-0xdba6a74 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6a68 loads 4 bytes from abs 0x1318.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6a6c).

- `glCopyConvolutionFilter1DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6a74 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6a74-0xdba6a80 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6a74 loads 4 bytes from abs 0x131c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6a78).

- `glCopyConvolutionFilter2DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6a80 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6a80-0xdba6a8c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6a80 loads 4 bytes from abs 0x1320.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6a84).

- `glGetConvolutionFilterEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6a8c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6a8c-0xdba6a98 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6a8c loads 4 bytes from abs 0x1324.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6a90).

- `glGetConvolutionParameterfvEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6a98 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6a98-0xdba6aa4 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6a98 loads 4 bytes from abs 0x1328.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6a9c).

- `glGetConvolutionParameterivEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6aa4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6aa4-0xdba6ab0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6aa4 loads 4 bytes from abs 0x132c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6aa8).

- `glGetSeparableFilterEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6ab0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6ab0-0xdba6abc (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6ab0 loads 4 bytes from abs 0x1330.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6ab4).

- `glSeparableFilter2DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6abc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6abc-0xdba6ac8 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6abc loads 4 bytes from abs 0x1334.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6ac0).

- `glGetHistogramEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6ac8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6ac8-0xdba6ad4 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6ac8 loads 4 bytes from abs 0x1338.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6acc).

- `glGetHistogramParameterfvEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6ad4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6ad4-0xdba6ae0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6ad4 loads 4 bytes from abs 0x133c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6ad8).

- `glGetHistogramParameterivEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6ae0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6ae0-0xdba6aec (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6ae0 loads 4 bytes from abs 0x1340.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6ae4).

- `glGetMinmaxEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6aec (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6aec-0xdba6af8 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6aec loads 4 bytes from abs 0x1344.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6af0).

- `glGetMinmaxParameterfvEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6af8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6af8-0xdba6b04 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6af8 loads 4 bytes from abs 0x1348.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6afc).

- `glGetMinmaxParameterivEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6b04 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6b04-0xdba6b10 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6b04 loads 4 bytes from abs 0x134c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6b08).

- `glHistogramEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6b10 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6b10-0xdba6b1c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6b10 loads 4 bytes from abs 0x1350.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6b14).

- `glMinmaxEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6b1c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6b1c-0xdba6b28 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6b1c loads 4 bytes from abs 0x1354.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6b20).

- `glResetHistogram` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6b28 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6b28-0xdba6b34 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6b28 loads 4 bytes from abs 0x1358.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6b2c).

- `glResetMinmax` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6b34 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6b34-0xdba6b40 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6b34 loads 4 bytes from abs 0x135c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6b38).

- `glTexImage3DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6b40 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6b40-0xdba6b4c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6b40 loads 4 bytes from abs 0x1360.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6b44).

- `glTexSubImage3DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6b4c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6b4c-0xdba6b58 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6b4c loads 4 bytes from abs 0x1364.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6b50).

- `glArrayElementEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6b58 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6b58-0xdba6b64 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6b58 loads 4 bytes from abs 0x1368.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6b5c).

- `glDrawArraysEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6b70 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6b70-0xdba6b7c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6b70 loads 4 bytes from abs 0x1370.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6b74).

- `glGetPointervEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6b88 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6b88-0xdba6b94 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6b88 loads 4 bytes from abs 0x1378.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6b8c).

- `glAreTexturesResident` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bc4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bc4-0xdba6bd0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6bc4 loads 4 bytes from abs 0x138c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bc8).

- `glAreTexturesResidentEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bc4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bc4-0xdba6bd0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6bc4 loads 4 bytes from abs 0x138c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bc8).

- `glBindTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bd0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bd0-0xdba6bdc (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6bd0 loads 4 bytes from abs 0x1390.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bd4).

- `glBindTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bd0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bd0-0xdba6bdc (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6bd0 loads 4 bytes from abs 0x1390.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bd4).

- `glDeleteTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bdc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bdc-0xdba6be8 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6bdc loads 4 bytes from abs 0x1394.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6be0).

- `glDeleteTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bdc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bdc-0xdba6be8 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6bdc loads 4 bytes from abs 0x1394.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6be0).

- `glGenTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6be8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6be8-0xdba6bf4 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6be8 loads 4 bytes from abs 0x1398.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bec).

- `glGenTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6be8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6be8-0xdba6bf4 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6be8 loads 4 bytes from abs 0x1398.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bec).

- `glIsTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bf4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bf4-0xdba6c00 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6bf4 loads 4 bytes from abs 0x139c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bf8).

- `glIsTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bf4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bf4-0xdba6c00 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6bf4 loads 4 bytes from abs 0x139c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bf8).

- `glPrioritizeTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6c00 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6c00-0xdba6c0c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6c00 loads 4 bytes from abs 0x13a0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6c04).

- `glPrioritizeTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6c00 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6c00-0xdba6c0c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6c00 loads 4 bytes from abs 0x13a0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6c04).

- `glCopyTexImage1DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6c0c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6c0c-0xdba6c18 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6c0c loads 4 bytes from abs 0x13a4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6c10).

- `glCopyTexImage2DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6c18 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6c18-0xdba6c24 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6c18 loads 4 bytes from abs 0x13a8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6c1c).

- `glCopyTexSubImage1DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6c24 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6c24-0xdba6c30 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6c24 loads 4 bytes from abs 0x13ac.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6c28).

- `glCopyTexSubImage2DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6c30 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6c30-0xdba6c3c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6c30 loads 4 bytes from abs 0x13b0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6c34).

- `glCopyTexSubImage3DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6c3c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6c3c-0xdba6c48 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6c3c loads 4 bytes from abs 0x13b4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6c40).

- `glColorTableSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6d38 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6d38-0xdba6d44 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6d38 loads 4 bytes from abs 0x1408.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6d3c).

- `glColorTableParameterfvSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6d44 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6d44-0xdba6d50 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6d44 loads 4 bytes from abs 0x140c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6d48).

- `glColorTableParameterivSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6d50 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6d50-0xdba6d5c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6d50 loads 4 bytes from abs 0x1410.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6d54).

- `glCopyColorTableSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6d5c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6d5c-0xdba6d68 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6d5c loads 4 bytes from abs 0x1414.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6d60).

- `glGetColorTableSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6d68 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6d68-0xdba6d74 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6d68 loads 4 bytes from abs 0x1418.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6d6c).

- `glGetColorTableParameterfvSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6d74 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6d74-0xdba6d80 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6d74 loads 4 bytes from abs 0x141c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6d78).

- `glGetColorTableParameterivSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6d80 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6d80-0xdba6d8c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6d80 loads 4 bytes from abs 0x1420.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6d84).

- `glPointParameterfSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6df8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6df8-0xdba6e04 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6df8 loads 4 bytes from abs 0x1448.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6dfc).

- `glPointParameterfvSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6e04 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6e04-0xdba6e10 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6e04 loads 4 bytes from abs 0x144c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6e08).

- `glReadInstrumentsSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6e40 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6e40-0xdba6e4c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6e40 loads 4 bytes from abs 0x1460.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6e44).

- `__glOdyim_Vertex2d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba70c0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba70c0-0xdba70e0 (32 bytes).
  It occupies 32 bytes.
  The `sw` at 0xdba70d0 stores 4 bytes to abs 0x4000.
  2 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xdba70d4, `swc1` at 0xdba70dc.
  The return at 0xdba70d8 has v0 = ?.

- `__glOdyim_Vertex3d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba72c0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba72c0-0xdba72ec (44 bytes).
  It occupies 44 bytes.
  The `sw` at 0xdba72d8 stores 4 bytes to abs 0x4000.
  3 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xdba72dc, `swc1` at 0xdba72e0, `swc1` at 0xdba72e8.
  The return at 0xdba72e4 has v0 = ?.

- `__glOdyim_Vertex3i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba73c0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba73c0-0xdba73f4 (52 bytes).
  It occupies 52 bytes.
  4 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdba73e0, `sw` at 0xdba73e4, `sw` at 0xdba73e8.
  The return at 0xdba73ec has v0 = ?.

- `__glOdyim_Vertex4i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba75c0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba75c0-0xdba7600 (64 bytes).
  It occupies 64 bytes.
  5 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdba75e8, `sw` at 0xdba75ec, `sw` at 0xdba75f0.
  The return at 0xdba75f8 has v0 = ?.

- `__glOdyim_Vertex4iv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba7600 (o32).
  Writes a four-integer vertex, whose address is in a0, to the fixed address 0x4000 behind a header
  word, with no branch and no call. The four words are loaded at 0xdba7600 to 0xdba760c (a0+0, +4,
  +8 and +0xc). The `sw` at 0xdba7638 writes the constant 0xffffffff8080d004 (0x8080 at 0xdba7630,
  0xd004 at 0xdba7634) to 0x4000, then the `sw` at 0xdba763c, 0xdba7640 and 0xdba7644 write the
  first three words unchanged and the delay slot of the `jr ra` at 0xdba7648 (0xdba764c) writes the
  fourth. The routine also moves the four words into floating-point registers and converts them to
  single precision, but nothing in the routine reads those results. It does not write v0, so the
  value in v0 on return is whatever the caller held. Unknown: the register, if any, that 0x4000
  selects; a board-map row for that address would answer it.
  Evidence grade: established.

- `__glOdyim_Vertex2f_smallw` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba7880 (o32).
  On entry x and y are already single-precision in $f12 and $f14. The routine maps the point through
  the block whose address sits at absolute 0x1020, tests it against the block at absolute 0x1024, and
  ends by writing the vertex to absolute 0x4000 or deferring through a table word. Three words of the
  first block feed the sum: +0x3c, plus x times +0x30, plus y times +0x34; on every path the `swc1` at
  0xdba78b0 saves the sum, single precision, at +0x8 of the second block; that word was read earlier
  at 0xdba7898 and is the factor in the product. The compare at 0xdba78b8 of the product with its
  absolute value feeds the `bc1f` at 0xdba78c0, which leaves for the table word on a negative ordered
  product. In the other case, the delay-slot `c.ult.s` at 0xdba78c4 has compared |sum| with the +0x0
  word of the second block; the `bc1t` at 0xdba78cc leaves when |sum| is the smaller or the pair is
  unordered. When neither check trips, the constant 0xffffffff8080c801 is written to absolute 0x4000
  by the `sw` at 0xdba78d4 (immediates at 0xdba78c8 and 0xdba78d0); the `swc1` at 0xdba78d8 then
  writes x, and the `swc1` at 0xdba78e0 in the return's delay slot (0xdba78dc) writes y; the value
  returned is the word loaded from absolute 0x1020. The `jr` at 0xdba78ec is the exit for a failed
  check, jumping through the +0x20 word of the second block read at 0xdba78e4, with a0 and a1 as
  received, a2 zero and a3 0x3f800000. Unknown: the address the +0x20 word holds, since it is loaded
  from memory and no callee note is linked.
  Evidence grade: established.

- `__glOdyim_Vertex2i_smallw` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba7980 (o32).
  Direct path of a vertex call taking the two integer arguments a0 and a1: it converts them to single-
  precision floats, transforms them with the record whose pointer sits at abs 0x1020, and either writes a
  command word and the two values straight to 0x4000 or tail-jumps through the word at +0x20 of the record
  whose pointer sits at abs 0x1024.
  Two pointers are loaded at 0xdba7990 (record A, from abs 0x1020) and 0xdba7994 (record B, from abs
  0x1024), after the integer-to-float conversion at the start of the routine.
  Next it adds A+0x3c, the first value times A+0x30 and the second value times A+0x34 into a sum,
  multiplies the sum by the float at B+0x8, and the `swc1` at 0xdba79c0 stores the sum itself, from before
  that multiply, back to B+0x8 on every pass.
  Exactly two tests lead to the tail path at 0xdba79f4: the `bc1f` at 0xdba79d0 jumps when the product is
  negative (its absolute value, compared with it at 0xdba79c8, differs and is ordered), and the `bc1t` at
  0xdba79dc jumps when the absolute value of the sum is below the float at B+0x0 or unordered (that
  compare is in the delay slot of the first branch, at 0xdba79d4).
  On the pass-through path, the constant 0xffffffff8080c800 (0x8080 at 0xdba79d8, 0xc800 ORed in by the
  `ori` at 0xdba79e0) is stored to 0x4000 by the `sw` at 0xdba79e4.
  Next come a0 with the `sw` at 0xdba79e8 and then a1, the last `sw` sitting at 0xdba79f0 in the delay
  slot of the `jr ra` at 0xdba79ec, which returns v0, the word loaded from abs 0x1020 at 0xdba7990.
  When a test fails the `lw` at 0xdba79f4 reads t9 from B+0x20, a2 is cleared at 0xdba79f8, a3 is set to
  0x3f800000 by the `lui` at 0xdba7a00 in the delay slot of the `jr t9` at 0xdba79fc, and a0 and a1 are
  left as they arrived.
  Inferred: the tail path is the slower handler for vertices that fail the tests, because the direct path
  emits only three words while the tail receives the original arguments plus fixed a2 and a3.
  Unknown: the target entered by the `jr t9` at 0xdba79fc, which is the word at B+0x20 and whose runtime
  contents would settle it.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): which component answers at 0x4000, since no linked mmio row lists that address and the rows
  cover 0x110000 and 0x120000.
  Evidence grade: inferred.

- `__glOdyim_Vertex2iv_smallw` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba7a40 (o32).
  Fast path of a vertex call taking the two words at a0 and a0+0x4 (loaded into t4 and t5 by the `lw` at
  0xdba7a40 and 0xdba7a44): it casts them to single-precision floats, transforms them with the record
  whose pointer sits at abs 0x1020, and either writes a command word and the two values straight to 0x4000
  or tail-jumps through the word at +0x20 of the record whose pointer sits at abs 0x1024.
  The pointers are loaded at 0xdba7a58 (record A, from abs 0x1020) and 0xdba7a5c (record B, from abs
  0x1024), following the integer-to-float conversion at the start of the routine.
  The routine adds A+0x3c, the first value times A+0x30 and the second value times A+0x34 into a sum,
  weights the sum by the float at B+0x8, and the `swc1` at 0xdba7a88 stores the sum itself, from before
  that multiply, back to B+0x8 on every call.
  Two tests lead to the tail path at 0xdba7abc: the `bc1f` at 0xdba7a98 jumps when the product is negative
  (its absolute value, compared with it at 0xdba7a90, does not match and is ordered), and the `bc1t` at
  0xdba7aa4 jumps when the absolute value of the sum is below the float at B+0x0 or unordered (that
  compare is in the delay slot of the first branch, at 0xdba7a9c).
  With every test passed, the literal 0xffffffff8080c800 (0x8080 at 0xdba7aa0, 0xc800 ORed in by the `ori`
  at 0xdba7aa8) is stored to 0x4000 by the `sw` at 0xdba7aac.
  Then come the word loaded from a0 (t4) with the `sw` at 0xdba7ab0 and then the word loaded from a0+0x4
  (t5), the closing `sw` sitting at 0xdba7ab8 in the delay slot of the `jr ra` at 0xdba7ab4, which returns
  v0, the word loaded from abs 0x1020 at 0xdba7a58.
  On the tail path the `lw` at 0xdba7abc loads t9 from B+0x20, a2 is cleared at 0xdba7ac0, a3 is set to
  0x3f800000 by the `lui` at 0xdba7ac8 in the delay slot of the `jr t9` at 0xdba7ac4, and a0 and a1 are
  left as they arrived.
  Inferred: the tail path is the general-case handler for vertices that do not pass the tests, because the
  direct path emits only three words while the tail receives the original arguments plus fixed a2 and a3.
  Unknown: the routine entered by the `jr t9` at 0xdba7ac4, which is the word at B+0x20 and whose value at
  run time would settle it.
  Unknown: which device answers at 0x4000, since no linked mmio row covers that address and the rows cover
  0x110000 and 0x120000.
  Test: the mapping-address read in "Test that settles the rest" at the top of this file; a client mapping that starts at 0 makes 0x4000 board +0x120000.
  Evidence grade: inferred.

- `__glOdyim_Vertex2sv_smallw` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba7bc0 (o32).
  Short fast path for one two-component vertex given as a pointer to two halfwords: after two
  single-precision tests it writes the vertex to the absolute address 0x4000, otherwise it tail-
  jumps through a handler pointer kept in a state record. The halfwords at +0 and +2 of a0 are
  loaded as t4 and t5 and converted to single precision. A third value is formed from the record
  whose address sits at absolute 0x1020 by multiply-add (+0x3c plus the first value times +0x30 plus
  the second times +0x34). The `swc1` at 0xdba7c08 stores it to +0x8 of the record whose address
  sits at absolute 0x1024; the word that was at +0x8 is first multiplied by the new value. The
  `bc1f` at 0xdba7c18 jumps to the tail-jump block at 0xdba7c3c when that product's magnitude
  differs from the product, which is the negative case. The delay slot at 0xdba7c1c then compares
  the magnitude of the new value with the word at +0x0 of the 0x1024 record, and the `bc1t` at
  0xdba7c24 jumps to 0xdba7c3c when that magnitude is less than, or unordered with, the word. If
  neither branch is taken, the code at 0xdba7c2c writes 0xffffffff8080c800 (built at 0xdba7c20 and
  0xdba7c28) to 0x4000, then the halfword from +0 (0xdba7c30) and the halfword from +2 (0xdba7c38,
  in the delay slot of the `jr ra` at 0xdba7c34), each sign-extended and unchanged. v0 is not
  changed, so the return value is the word loaded from 0x1020. The tail-jump block loads the pointer
  at +0x20 of the 0x1024 record (0xdba7c3c), sets a2 to zero and puts 0x3f800000 in a3 in the delay
  slot of the `jr t9` at 0xdba7c44, with a0 and a1 as at entry. Inferred: the three stores to one
  absolute address, a constant word followed by the two halfwords, are a write sequence into a
  device window, since the bundle lists 0x4000 under memory-mapped I/O. Unknown: the landing point
  of the indirect jump at 0xdba7c44, which depends on the word the 0x1024 record holds at +0x20;
  following what fills that field would settle it.
  Evidence grade: inferred.

- `__glOdyim_Vertex3dv_smallw` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba7d40 (o32).
  Short fast path for one three-component vertex given as a pointer to three doubles: when two
  single-precision tests pass it writes the vertex to the absolute address 0x4000, otherwise it
  tail-jumps through a handler pointer kept in a state record. The doubles at +0, +8 and +0x10 of a0
  are loaded and narrowed to single precision into $f12, $f14 and $f0. Multiply-add over the record
  that absolute 0x1020 points to gives a fourth value (+0x3c plus the coordinates times +0x30, +0x34
  and +0x38). It is written by the `swc1` at 0xdba7d94 to +0x8 of the record whose address sits at
  absolute 0x1024, after the old word at +0x8 has been multiplied by it. Control passes from the
  `bc1f` at 0xdba7da4 to the tail-jump block at 0xdba7dcc when that product's magnitude differs from
  the product (the negative case). A compare sits in the delay slot at 0xdba7da8: new-value
  magnitude against the 0x1024 record's +0x0 word. When it reads less than or unordered, the `bc1t`
  at 0xdba7db0 takes control to 0xdba7dcc. When neither is taken, the block at 0xdba7db8 writes four
  words to 0x4000: 0xffffffff8080cc03 (built at 0xdba7dac and 0xdba7db4, `sw` at 0xdba7db8), then
  the single-precision first two coordinates (0xdba7dbc, 0xdba7dc0) and the third (0xdba7dc8, in the
  delay slot of the `jr ra` at 0xdba7dc4). The routine leaves v0 alone; the return value is
  therefore the word loaded from 0x1020. The slow-exit block fetches the pointer at +0x20 of the
  0x1024 record (0xdba7dcc), moves the single-precision third coordinate into a2, and puts
  0x3f800000 in a3 in the delay slot of the `jr t9` at 0xdba7dd4, with a0 and a1 as at entry.
  Inferred: because the bundle lists 0x4000 under memory-mapped I/O, the four-word burst there
  (constant first, then the three coordinates) is a device write sequence. Unknown: the target
  reached by the computed jump at 0xdba7dd4, which depends on the word the 0x1024 record holds at
  +0x20; following the writer of that field would settle it.
  Evidence grade: inferred.

- `__glOdyim_Vertex3f_smallw` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba7e00 (o32).
  Same shape of fast path for one three-float vertex (`$f12`, `$f14` and a third taken from `a2` into
  `$f0`), but its immediate writes go to absolute 0x4000 instead of a register built in `v0`.
  A sum is formed from the first record's +0x3c word and the coordinates times its +0x30, +0x34 and +0x38
  words (loads at 0xdba7e0c to 0xdba7e18). It is multiplied by the second record's old +0x8 word (load at
  0xdba7e20), and the `swc1` at 0xdba7e40 stores the sum itself over that +0x8 word.
  The `bc1f` at 0xdba7e50 jumps to 0xdba7e78 when the absolute value of the product differs from the
  product, which means the product is negative (compare at 0xdba7e48). In its delay slot (0xdba7e54) the
  absolute value of the sum is compared with the second record's +0x0 word (load at 0xdba7e1c), and the
  `bc1t` at 0xdba7e5c jumps to 0xdba7e78 when the sum is smaller or the compare is unordered.
  When neither jump is taken, the `sw` at 0xdba7e64 writes 0xffffffff8080cc03 (0x8080 at 0xdba7e58, 0xcc03
  ORed in at 0xdba7e60) to 0x4000, the `swc1` stores at 0xdba7e68 and 0xdba7e6c write `$f12` and `$f14`
  there, and `$f0` goes out in the delay slot of the return at 0xdba7e70 (store at 0xdba7e74). The return
  leaves `v0` holding the word loaded from 0x1020.
  The jump block loads `t9` from +0x20 of the second record (0xdba7e78), copies `$f0` back into `a2`,
  and the delay slot of the `jr t9` at 0xdba7e80 sets `a3` to 0x3f800000; `a0` and `a1` pass through.
  Unknown: where the `jr t9` at 0xdba7e80 lands, because the second record's +0x20 word is written at run time; a memory capture shows it.
  Unknown: the device that owns absolute 0x4000, target of the four writes; no linked row covers it, and a mapping record for that address would name it.
  Evidence grade: established.

- `__glOdyim_Vertex3iv_smallw` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba8040 (o32).
  Takes a pointer to three integer coordinates (loaded from +0x0, +0x4 and +0x8 of a0 at 0xdba8040 to 0xdba8048), converts each to single precision, and writes them to absolute 0x4000 behind a header word only if a clip-style test passes; if not, control passes to a pointer-selected routine.
  It loads two record pointers from absolute 0x1020 and 0x1024 (0xdba8064, 0xdba8068) and reads four floats from the first record at +0x30, +0x34, +0x38 and +0x3c and two from the second at +0x0 and +0x8.
  Inferred: the sum computed from the +0x3c float plus the three converted coordinates, each scaled by the +0x30, +0x34 and +0x38 float, is stored by the `swc1` at 0xdba80a0 into +0x8 of the second record, because the instructions between the loads and that store are multiply and add steps on those registers.
  That sum is multiplied by the old +0x8 float, and the absolute value of the product is compared for equality with the product (`c.ueq.s` at 0xdba80a8); the `bc1f` at 0xdba80b0 jumps to the tail block at 0xdba80d8 when they differ, meaning the product is negative.
  On the other path the delay slot at 0xdba80b4 compares the absolute value of the sum with the float loaded from +0x0 of the second record (`c.ult.s`), and the `bc1t` at 0xdba80bc jumps to the tail block when the absolute sum is less than that float or the compare is unordered.
  When both branches fall through, the `sw` at 0xdba80c4 writes the constant 0xffffffff8080cc02 (built at 0xdba80b8 and 0xdba80c0) to absolute 0x4000, the `sw` at 0xdba80c8 writes the word loaded from a0 +0x0, the `sw` at 0xdba80cc writes the word from a0 +0x4 and the `sw` at 0xdba80d4, in the delay slot of the return at 0xdba80d0, writes the word from a0 +0x8, all copied unchanged and all to the same address; it returns the pointer loaded from absolute 0x1020.
  The tail block at 0xdba80d8 loads a word from +0x20 of the second record into t9 and jumps to it with a0 and a1 as received, a2 set from the single-precision copy of the third coordinate, and a3 set by the `lui` at 0xdba80e4 to 0x3f800000.
  Unknown: the routine the `jr t9` at 0xdba80e0 reaches, which the value stored at +0x20 of the record behind absolute 0x1024 settles.
  Evidence grade: inferred.

- `__glOdyim_Vertex3sv_smallw` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba81c0 (o32).
  Takes a pointer to three halfword coordinates (`lh` at 0xdba81c0, 0xdba81c4 and 0xdba81c8, from +0x0, +0x2 and +0x4 of a0), narrows each into a float, and writes them as words to absolute 0x4000 behind a header word if a clip-style test passes; if not, it hands control to a routine chosen through the second record.
  It fetches record pointers from absolute 0x1020 and 0x1024 (0xdba81e4, 0xdba81e8) and reads four floats from the first record at +0x30, +0x34, +0x38 and +0x3c and two from the second at +0x0 and +0x8.
  Inferred: the `swc1` at 0xdba8220 writes the +0x3c float plus the three converted coordinates, each weighted by the +0x30, +0x34 or +0x38 float, into +0x8 of the second record, because only multiply and add steps on those registers sit between the fetches and the store.
  That sum is multiplied by the old +0x8 float, and the `bc1f` at 0xdba8230 jumps to the shared exit at 0xdba8258 when the product's absolute value differs from the product (`c.ueq.s` at 0xdba8228), meaning the product is negative.
  On the other path the delay slot at 0xdba8234 compares the absolute value of the sum with the float loaded from +0x0 of the second record (`c.ult.s`), and the `bc1t` at 0xdba823c jumps to the shared exit when the absolute sum is less than that float or the compare is unordered.
  When both branches fall through, the `sw` at 0xdba8244 writes the constant 0xffffffff8080cc02 (built at 0xdba8238 and 0xdba8240) to absolute 0x4000.
  Three more `sw` instructions (0xdba8248, 0xdba824c and the delay slot of the return at 0xdba8250) store the three coordinates as the loaded halfwords, sign-extended, to the same address, and the routine returns the pointer loaded from absolute 0x1020.
  The shared exit fetches a word from +0x20 of the second record into t9 (0xdba8258) and jumps to it with a0 and a1 as received, a2 set from the single-precision copy of the third coordinate, and a3 set by the `lui` at 0xdba8264 to 0x3f800000.
  Unknown: where the `jr t9` at 0xdba8260 lands, which the word held at +0x20 behind absolute 0x1024 would show.
  Evidence grade: inferred.

- `__glOdyim_Vertex2d_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba8880 (o32).
  Variant of the two-coordinate sender in the vpro-patch build, which targets a different output address: narrows the two incoming doubles in f12 and f14 to single precision at entry.
  The two record pointers A at absolute 0x1020 and B at absolute 0x1024 are fetched first (`lw` at 0xdba8888 and 0xdba888c); the routine
  evaluates w' = (f12 x A[+0x30]) + (f14 x A[+0x34]) + A[+0x3c] with single-precision arithmetic. Next it multiplies w' by the previous
  float at B+0x8 (loaded at 0xdba88a0), and overwrites B+0x8 with w' (`swc1` at 0xdba88b8), and also forms w' times B+0x4.
  A negativity test comes first: the compare at 0xdba88c8 sets a flag when the absolute value of the w'-times-old-B+0x8
  product equals the product itself or is unordered, and the `bc1f` at 0xdba88d0 jumps to the failure path when it does not, that is, for a negative product.
  The two less-than-or-unordered compares at 0xdba88f0 and 0xdba8918 each set the flag when the absolute value of w' times B+0x4 is below the absolute value of a
  further sum, namely A[+0xc] with f12 x A[+0x0] and f14 x A[+0x4] for the first, and A[+0x1c] with f12 x A[+0x10] and f14 x A[+0x14] for the second;
  the `bc1t` at 0xdba88f8 and 0xdba8920 branch away if the w' term is the smaller one or if either value is not a number.
  If every test passes, it writes the word 0xffffffff8080c801 to absolute 0x4000 (`sw` at 0xdba8928), then the single-precision f12 (`swc1` at 0xdba892c) and f14 (`swc1` in the return delay slot at 0xdba8934) to the same address, and returns with v0 still holding the pointer from 0x1020.
  On any failed test control reaches 0xdba8938: where the word at B+0x20 becomes the jump target of the `jr` at 0xdba8940, with a0 and a1 as they
  arrived, a2 zero and a3 set to 0x3f800000 by the `lui` in the delay slot at 0xdba8944.
  Unknown: the routine the word at B+0x20 points to, and the register at absolute 0x4000; a register map for 0x4000 and the contents of the record at 0x1024 would settle these.
  Evidence grade: established.

- `__glOdyim_Vertex2dv_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba8980 (o32).
  Takes a pointer to two doubles, narrows both to single precision (x in $f12, y in $f14), transforms
  the point with the matrix block whose address is held at absolute 0x1020 and tests it against limits
  from the block held at absolute 0x1024; if the tests pass it writes the vertex to the device window
  at absolute 0x4000, otherwise it hands the call on through a table entry. The first block supplies a
  row of coefficients at +0x30, +0x34 and +0x3c: the routine computes +0x3c plus x times +0x30 plus y
  times +0x34, stores that single-precision result back into the second block at +0x8 (the `swc1` at
  0xdba89c0, which overwrites the word loaded at 0xdba89a8), and scales it by the old +0x8 word and by
  the +0x4 word. Two more sums, from +0xc/+0x0/+0x4 and from +0x1c/+0x10/+0x14 of the first block, are
  formed the same way and reduced to absolute values. The first test (`bc1f` at 0xdba89d8) sends the
  call to the tail jump when the product with the old +0x8 word is not equal to its own absolute
  value, that is when it is negative and ordered; the next two (`bc1t` at 0xdba8a00 and 0xdba8a28)
  send it there when the absolute value of the scaled result is less than the absolute value of the
  respective transformed coordinate, or either is unordered. When all three pass, the `sw` at
  0xdba8a30 writes the constant 0xffffffff8080c801 to absolute 0x4000 (built by the `lui` at 0xdba8a24
  and `ori` at 0xdba8a2c), the `swc1` at 0xdba8a34 writes x to the same address, and the `swc1` at
  0xdba8a3c, in the delay slot of the return at 0xdba8a38, writes y there; v0 comes back as the word
  loaded from 0x1020. On any failed test the tail jump at 0xdba8a48 goes to the word loaded from +0x20
  of the second block (0xdba8a40), with a0 and a1 as received, a2 set to zero and a3 set to 0x3f800000
  in its delay slot. Unknown: the routine the +0x20 table word names; the bundle has no callee note,
  and the value of that word in a captured run would settle it.
  Evidence grade: established.

- `__glOdyim_Vertex2sv_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba8f40 (o32).
  Direct path of a vertex call taking the two signed halfwords at a0 and a0+0x2 (`lh` into t4 and t5 at
  0xdba8f40 and 0xdba8f44): it casts them to single-precision floats, runs three range tests against the
  records whose pointers sit at abs 0x1020 and abs 0x1024, and either writes a command word and the two
  values straight to 0x4000 or tail-jumps through the word at +0x20 of the second record.
  Two pointers are loaded at 0xdba8f58 (record A, from abs 0x1020) and 0xdba8f5c (record B, from abs
  0x1024), following the integer-to-float conversion at the start of the routine.
  Next it adds A+0x3c, the first value times A+0x30 and the second value times A+0x34 into a sum, weights
  the sum by the float at B+0x8, and the `swc1` at 0xdba8f88 stores the sum itself, from before that
  multiply, back to B+0x8 on every pass.
  Just three tests lead to the tail path at 0xdba9008: the `bc1f` at 0xdba8fa0 jumps when the product is
  negative (its absolute value, compared with it at 0xdba8f98, does not match and is ordered).
  After that the sum, times the float at B+0x4, is reduced to absolute value, and the `bc1t` at 0xdba8fc8
  jumps when that is below the absolute value of a second sum (A+0xc plus the first value times A+0x0 plus
  the second value times A+0x4) or unordered, compare at 0xdba8fc0.
  The `bc1t` at 0xdba8ff0 runs the same test against a third sum (A+0x1c plus the first value times A+0x10
  plus the second value times A+0x14), test at 0xdba8fe8.
  On the pass-through path, the literal 0xffffffff8080c800 (0x8080 at 0xdba8fec, 0xc800 ORed in by the
  `ori` at 0xdba8ff4) is stored to 0x4000 by the `sw` at 0xdba8ff8.
  Next come the sign-extended halfword from a0 (t4), as a word, with the `sw` at 0xdba8ffc and then the
  sign-extended halfword from a0+0x2 (t5), as a word, the closing `sw` sitting at 0xdba9004 in the delay
  slot of the `jr ra` at 0xdba9000, which returns v0, the word loaded from abs 0x1020 at 0xdba8f58.
  When a test fails the `lw` at 0xdba9008 loads t9 from B+0x20, a2 is cleared at 0xdba900c, a3 is set to
  0x3f800000 by the `lui` at 0xdba9014 in the delay slot of the `jr t9` at 0xdba9010, and a0 and a1 are
  left as they arrived.
  Inferred: the tail path is the slower handler for vertices that do not pass the tests, because the
  direct path emits only three words while the tail receives the original arguments plus fixed a2 and a3.
  Unknown: the target entered by the `jr t9` at 0xdba9010, which is the word at B+0x20 and whose value at
  run time would settle it.
  Unknown: which component answers at 0x4000, since no linked mmio row covers that address and the rows
  cover 0x110000 and 0x120000.
  Test: the mapping-address read in "Test that settles the rest" at the top of this file; a client mapping that starts at 0 makes 0x4000 board +0x120000.
  Evidence grade: inferred.

- `__glOdyim_Vertex3d_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba9040 (o32).
  Fast path for one three-component vertex passed as three doubles: when three single-precision
  tests pass it writes the vertex to the absolute address 0x4000, otherwise it tail-jumps through a
  handler pointer kept in a state record. The first two doubles arrive in $f12 and $f14, the third
  is loaded from the caller's stack at +0x10 (0xdba9048) into $f0, and all three are narrowed to
  single precision. A fourth value is formed from the record whose address sits at absolute 0x1020
  by multiply-add (+0x3c plus the coordinates times +0x30, +0x34 and +0x38). The word is then
  written by the `swc1` at 0xdba908c to +0x8 of the record whose address sits at absolute 0x1024;
  the old word at +0x8 is first multiplied by the new value, and the new value is also multiplied by
  the word at +0x4. At 0xdba90a4 a `bc1f` branches to the tail-jump block (0xdba9128) if the first
  product's magnitude differs from the product (the negative case). The `bc1t` at 0xdba90d8 and the
  `bc1t` at 0xdba910c each jump there when the magnitude of the second product is less than, or
  unordered with, the magnitude of another multiply-add over the 0x1020 record, using +0xc with
  +0x0, +0x4, +0x8 for the first and +0x1c with +0x10, +0x14, +0x18 for the second. If none is
  taken, the block at 0xdba9114 writes four words to 0x4000: 0xffffffff8080cc03 (built at 0xdba9108
  and 0xdba9110, `sw` at 0xdba9114), then the single-precision first two coordinates (0xdba9118,
  0xdba911c) and the third (0xdba9124, in the delay slot of the `jr ra` at 0xdba9120). Nothing
  writes v0 on the way, so the return value stays the word loaded from 0x1020. The block on the
  tail-jump path loads the pointer at +0x20 of the 0x1024 record (0xdba9128), moves the
  single-precision third coordinate into a2, and puts 0x3f800000 in a3 in the delay slot of the `jr
  t9` at 0xdba9130, with a0 and a1 as at entry. Inferred: 0x4000 is a device window, because the
  bundle lists it under memory-mapped I/O, and the four stores there (constant word, then the three
  coordinates) look like one submitted record. Unknown: where control ends up after the indirect
  jump at 0xdba9130, which depends on the word the 0x1024 record holds at +0x20; a trace of whatever
  fills that field would settle it.
  Evidence grade: inferred.

- `__glOdyim_Vertex3f_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba9240 (o32).
  Fast path for one three-component vertex passed as three single-precision floats: when three tests
  pass it writes the vertex to the absolute address 0x4000, otherwise it tail-jumps through a
  handler pointer kept in a state record. The first two floats arrive in $f12 and $f14 and the third
  arrives in a2, which the routine moves into $f0. A fourth value results from multiply-add over the
  record referenced by the pointer at absolute 0x1020 (+0x3c plus the coordinates times +0x30, +0x34
  and +0x38). The `swc1` instruction at 0xdba9280 stores it to +0x8 of the record whose address sits
  at absolute 0x1024; before the store the old +0x8 word is multiplied by the new value, and a
  second product uses the word at +0x4. The `bc1f` branch at 0xdba9298 targets 0xdba931c, the
  tail-jump block, and is taken when the first product's magnitude differs from the product (the
  negative case). The `bc1t` branches at 0xdba92cc and 0xdba9300 are taken to that block when the
  second product's magnitude is less than, or unordered with, that of another multiply-add over the
  0x1020 record, using +0xc with +0x0, +0x4, +0x8 for the first and +0x1c with +0x10, +0x14, +0x18
  for the second. If none is taken, the block at 0xdba9308 writes four words to 0x4000:
  0xffffffff8080cc03 (built at 0xdba92fc and 0xdba9304, `sw` at 0xdba9308), then the first two
  coordinates as passed (0xdba930c, 0xdba9310) and the third (0xdba9318, in the delay slot of the
  `jr ra` at 0xdba9314). With v0 left as it was, the return value is the word loaded from 0x1020.
  The block on the tail- jump path fetches the pointer at +0x20 of the 0x1024 record (0xdba931c),
  puts the third coordinate's bits in a2 and 0x3f800000 in a3 in the delay slot of the `jr t9` at
  0xdba9324, with a0 and a1 as at entry. Inferred: the burst of four stores to 0x4000 (constant
  word, then the three coordinates) goes to a device, since the bundle lists that address under
  memory-mapped I/O. Unknown: where control ends up after the computed jump at 0xdba9324, which
  depends on the word the 0x1024 record holds at +0x20; tracking the writer of that field would
  settle it.
  Evidence grade: inferred.

- `__glOdyim_Vertex3iv_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba9540 (o32).
  Array form of the integer vertex guard: it loads three integers from `a0` +0x0, +0x4 and +0x8 (into `t4`,
  `t5`, `t6`), converts them to single precision, runs three float branches against the records behind the
  words at absolute 0x1020 and 0x1024, and either writes the integers to absolute 0x4000 and returns or
  tail-jumps through a pointer in the second record.
  The first sum is the first record's +0x3c word plus its +0x30, +0x34 and +0x38 words each multiplied
  by one converted value. It is multiplied by the second record's old +0x8 word (load at 0xdba9580), scaled by that
  record's +0x4 word (load at 0xdba957c), and the `swc1` at 0xdba95a0 stores the sum over the +0x8 word.
  The `bc1f` at 0xdba95b8 leaves for the jump block at 0xdba963c when the product with the old +0x8 word
  is negative.
  Two further sums come from the first record: +0xc plus the values times +0x0, +0x4 and +0x8, and +0x1c
  plus the values times +0x10, +0x14 and +0x18. For each, the absolute scaled first sum is compared with the
  absolute second or third sum, and the `bc1t` at 0xdba95ec and the `bc1t` at 0xdba9620 leave for
  0xdba963c when the scaled first sum is smaller or the compare is unordered.
  Passing all three, the `sw` at 0xdba9628 writes 0xffffffff8080cc02 (0x8080 at 0xdba961c, 0xcc02 ORed in
  at 0xdba9624) to 0x4000, followed by the integers loaded from `a0` at 0xdba962c and 0xdba9630, then the third
  in the delay slot (0xdba9638) of the `jr ra` at 0xdba9634; the return leaves the word loaded from 0x1020 in `v0`.
  The jump block loads `t9` from +0x20 of the second record (0xdba963c), puts the converted third value into
  `a2` as float bits, and sets `a3` to 0x3f800000 in the delay slot of the `jr t9` at 0xdba9644; `a0` still
  points at the caller's array.
  Unknown: the code the `jr t9` at 0xdba9644 transfers to, since its pointer comes from the second record at +0x20 and is set at run time; a capture settles it.
  Unknown: the device behind absolute 0x4000; only a mapping record can name it, because the linked board windows start at 0x110000.
  Evidence grade: established.

- `__glOdyim_Vertex4dv_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba9a00 (o32).
  Reads four double-precision values from the array at a0 (`ldc1` at 0xdba9a00, 0xdba9a08, 0xdba9a10 and 0xdba9a18, offsets +0x0, +0x8, +0x10 and +0x18), narrows each to a single-precision float, and either posts them to absolute 0x4000 behind a header word or tail-goes elsewhere.
  Its first filter takes record pointers from absolute 0x1020 and 0x1024 (0xdba9a20, 0xdba9a24) and builds a weighted sum of the four floats with the first record's floats at +0x30, +0x34, +0x38 and +0x3c.
  Inferred: the `swc1` at 0xdba9a60 writes that sum to +0x8 of the second record, because only multiply and add steps on the loaded registers sit between the pulls and the store.
  The sum is multiplied by the earlier +0x8 float of the second record; the `bc1f` at 0xdba9a78 takes the tail exit at 0xdba9b08 when the product's absolute value differs from the product (`c.ueq.s` at 0xdba9a70), which is the negative-product case.
  Two more weighted sums follow, using the first record's floats at +0x0 to +0xc and then +0x10 to +0x1c; each is made absolute and compared by `c.ult.s` (0xdba9aa8, 0xdba9ae0) with the first sum times the +0x4 float of the second record, and the `bc1t` at 0xdba9ab0 or 0xdba9ae8 takes the tail exit when that scaled value is smaller or the compare is unordered.
  When all three tests pass, t0 is built as 0xffffffff8080d005 (0xdba9ae4, with the `ori` in the delay slot at 0xdba9aec) and the `sw` at 0xdba9af0 writes it to absolute 0x4000.
  The four narrowed floats follow to the same address, in order, with `swc1` at 0xdba9af4, 0xdba9af8, 0xdba9afc and 0xdba9b04 (the last in the delay slot of the `jr ra` at 0xdba9b00), and the return value is the pointer loaded from absolute 0x1020.
  The tail exit pulls +0x20 of the second record into t9 and the `jr t9` at 0xdba9b10 goes to it with a0 and a1 untouched, a2 set from the narrowed third value, and a3 set in the delay slot from the narrowed fourth value.
  Unknown: which routine the final `jr t9` enters; the word at +0x20 behind absolute 0x1024 holds the pointer.
  Evidence grade: inferred.

- `__glOdyim_Vertex4fv_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba9c40 (o32).
  Takes a pointer to four floats in a0 and either writes them, behind a header word, to the fixed
  address 0x4000, or hands the call on through a function pointer, depending on three float tests
  against two records addressed by the words at absolute 0x1020 and 0x1024 (the 0x1020 record and
  the 0x1024 record). The four floats come in through the loads at 0xdba9c40 to 0xdba9c4c; the
  routine forms the sum of each float times the matching word at +0x30, +0x34, +0x38 and +0x3c of
  the 0x1020 record (loads at 0xdba9c58 to 0xdba9c64), and the `swc1` at 0xdba9c90 stores that sum
  at +0x8 of the 0x1024 record, after the old word at +0x8 (loaded at 0xdba9c88) has been multiplied
  by it for the first test. The `bc1f` at 0xdba9ca8 leaves for the tail path when that product is
  negative (its absolute value differs from it, with an unordered result counting as equal). The
  `bc1t` at 0xdba9ce0 repeats the sum with the words at +0, +4, +8 and +0xc of the 0x1020 record,
  and the `bc1t` at 0xdba9d18 repeats it with +0x10, +0x14, +0x18 and +0x1c; each leaves when the
  first sum times the word at +0x4 of the 0x1024 record, in absolute value, is less than, or
  unordered with, the absolute value of the new sum. When none leaves, the `sw` at 0xdba9d20 writes
  the word 0xffffffff8080d005 (from 0x8080 at 0xdba9d14 and 0xd005 at 0xdba9d1c) to 0x4000, then the
  four `swc1` at 0xdba9d24 to 0xdba9d34 write the four floats to the same address in order, the last
  in the delay slot of the `jr ra` at 0xdba9d30, and the routine returns the 0x1020 word in v0. On
  any leaving branch, the `lw` at 0xdba9d38 loads t9 from +0x20 of the 0x1024 record and the `jr t9`
  at 0xdba9d40 jumps there with a0 and a1 as they arrived, a2 set from the third float and a3 (delay
  slot) from the fourth. Unknown: the target of the indirect jump through the +0x20 word of the
  0x1024 record; a note for the routine that stores that pointer would settle it. Unknown: which
  device register answers the 0x4000 stores; the linked board windows at 0x110000 and 0x120000 carry
  no names, and a board address map would settle it.
  Evidence grade: established.

- `__glOdyim_Vertex4i_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba9d80 (o32).
  Takes four integers in a0 to a3 and either writes them, behind a header word, to the fixed address
  0x4000, or hands the call on through a function pointer, depending on three float tests against
  two records addressed by the words at absolute 0x1020 and 0x1024 (the 0x1020 record and the 0x1024
  record). Each integer is moved into a floating-point register and converted to single precision
  before the tests, by the first eight instructions. The tests are the same as for the float form:
  the sum of the converted values times the words at +0x30 to +0x3c of the 0x1020 record is stored
  at +0x8 of the 0x1024 record by the `swc1` at 0xdba9de0, the `bc1f` at 0xdba9df8 takes the tail
  path when that sum times the previous +0x8 word is below zero, and the `bc1t` at 0xdba9e30 and
  0xdba9e68 leave when the absolute value of the sum with the +0 to +0xc words, or with the +0x10 to
  +0x1c words, exceeds the first sum scaled by the word at +0x4 of the 0x1024 record in absolute
  value, or is unordered with it. When none leaves, the `sw` at 0xdba9e70 writes 0xffffffff8080d004
  (0x8080 at 0xdba9e64, 0xd004 at 0xdba9e6c) to 0x4000, followed by a0, a1, a2 and a3 as the
  original integers (`sw` at 0xdba9e74, 0xdba9e78, 0xdba9e7c, and the delay slot of the `jr ra` at
  0xdba9e80 for a3); the 0x1020 word is what v0 holds on return. A leaving branch reaches the `lw`
  at 0xdba9e88, which loads t9 from +0x20 of the 0x1024 record; the `jr t9` at 0xdba9e90 jumps there
  with a0 and a1 as they arrived, but a2 and a3 now hold the converted single-precision values of
  the third and fourth integers (the delay slot supplies a3). Unknown: the callee behind the +0x20
  pointer of the 0x1024 record; the routine that initialises that record would settle it. Unknown:
  the device behind 0x4000; no linked row covers it, and a board address map would settle it.
  Evidence grade: established.

- `__glOdyim_Vertex4iv_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba9ec0 (o32).
  Takes the address of four integers in a0 and either writes them, behind a header word, to the
  fixed address 0x4000, or hands the call on through a function pointer, depending on three float
  tests against two records addressed by the words at absolute 0x1020 and 0x1024 (the 0x1020 record
  and the 0x1024 record, loaded at 0xdba9ef0 and 0xdba9ef4). The words are loaded at 0xdba9ec0 to
  0xdba9ecc into t4 to t7, moved to floating-point registers and converted to single precision. The
  `swc1` at 0xdba9f30 stores into +0x8 of the 0x1024 record the sum of those floats against the
  +0x30 to +0x3c words of the 0x1020 record. The `bc1f` at 0xdba9f48 is taken when the sum times the
  old +0x8 word is negative; the `bc1t` branches at 0xdba9f80 and 0xdba9fb8 each leave when the
  absolute sum for the +0 to +0xc words, or for the +0x10 to +0x1c words, is larger than the first
  sum scaled by the word at +0x4 of the 0x1024 record in absolute value, or is unordered with it.
  When none leaves, the `sw` at 0xdba9fc0 writes 0xffffffff8080d004 (0x8080 at 0xdba9fb4, 0xd004 at
  0xdba9fbc) to 0x4000, then the integers in t4 to t6 (`sw` at 0xdba9fc4, 0xdba9fc8, 0xdba9fcc) and
  t7 in the delay slot of the `jr ra` at 0xdba9fd0; on return v0 is that 0x1020 word. Any failed
  test lands on the `lw` at 0xdba9fd8, which reads t9 from +0x20 of the 0x1024 record, and the `jr
  t9` at 0xdba9fe0 continues there with a0 (still the pointer) and a1 as they arrived, a2 and a3
  (delay slot) holding the converted third and fourth values. Unknown: which entry the +0x20 slot of
  the 0x1024 record holds; a note on the setup code would settle it. Unknown: which unit decodes
  0x4000; the board address map would settle it.
  Evidence grade: established.

- `__glOdyim_Vertex2fv_mag_line0` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbaa700 (o32).
  Reads a pointer to two floats from a0, projects the 2-D point through the block held at absolute
  0x1020, runs a series of range checks against the block held at absolute 0x1024, and either emits
  the vertex to absolute 0x4000 or hands the call on through a table word. Both exits restore $f20 and
  $f22, which the entry code saved at 0xdbaa70c and 0xdbaa710. The first sum adds the +0x3c word, x
  times +0x30 and y times +0x34 of the first block; it is copied into $f20 and also stored as a
  single-precision word into the second block at +0x8 by the `swc1` at 0xdbaa748, before any check,
  over the +0x8 word that was loaded first and multiplies the sum. The `bc1f` at 0xdbaa760 sends the
  call to the tail jump when that product differs from its own absolute value (the `c.ueq.s` at
  0xdbaa758), that is when it is negative and ordered. The `bc1t` at 0xdbaa78c goes to the tail jump
  when the absolute value of the sum scaled by the +0x4 word of the second block is less than the
  absolute value of a second sum (the +0xc, +0x0 and +0x4 words of the first block combined with x and
  y), or when either is unordered. The sum of $f20 times the +0xc word of the second block and that
  second sum is then checked: a negative result takes the `bc1f` at 0xdbaa7a8 past the last test;
  otherwise the `bc1t` at 0xdbaa7b8 goes to the tail jump when it is less than the +0x18 word of the
  second block times $f20 (the multiply in the delay slot at 0xdbaa7ac), or unordered. A third sum
  from the +0x1c, +0x10 and +0x14 words of the first block gets the same pair of tests: the `bc1t` at
  0xdbaa7ec against the same scaled bound, then the `bc1f` at 0xdbaa808 and the `bc1t` at 0xdbaa818
  with the +0x10 and +0x18 words of the second block (multiply at 0xdbaa80c). A call that clears every
  test writes 0xffffffff8080c801 with the `sw` at 0xdbaa834 (immediates at 0xdbaa82c and 0xdbaa830) to
  absolute 0x4000, then x with the `swc1` at 0xdbaa838 and y with the `swc1` at 0xdbaa840 in the delay
  slot of the return at 0xdbaa83c, which hands back the word loaded from 0x1020. Any failed test
  reaches the `jr` at 0xdbaa858, which jumps to the word loaded from +0x20 of the second block
  (0xdbaa850) with a0 and a1 as received, a2 zero and a3 0x3f800000. Unknown: the content of the +0x20
  word and so the routine the deferral enters; a captured run reading that word would answer it.
  Evidence grade: established.

- `__glOdyim_Vertex2i_mag_line0` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbaa880 (o32).
  Takes two integer coordinates in a0 and a1, converts each to single precision for the arithmetic
  (floats $f12 and $f14), projects the point through the block held at absolute 0x1020, runs range
  checks against the block held at absolute 0x1024, and either emits the original integers at absolute
  0x4000 or defers through a table word. The frame holds $f20 and $f22 from the saves at 0xdbaa894 and
  0xdbaa898 until either exit reloads them. The sum is formed as +0x3c plus x times +0x30 plus y times
  +0x34, all words of the first block; it is copied into $f20 and stored as a single-precision word
  into the second block at +0x8 by the `swc1` at 0xdbaa8d0, before any test, over the +0x8 word that
  was loaded first and multiplies the sum. The `bc1f` at 0xdbaa8e8, after the `c.ueq.s` at 0xdbaa8e0,
  is taken for a product that is negative and ordered. The `bc1t` at 0xdbaa914 defers when the
  absolute value of the sum scaled by the +0x4 word of the second block is less than the absolute
  value of a second sum from the +0xc, +0x0 and +0x4 words of the first block (`c.ult.s` at
  0xdbaa90c), or either is unordered. Then $f20 times the +0xc word of the second block plus the
  second sum is tested: negative takes the `bc1f` at 0xdbaa930 past the last test, otherwise the
  `bc1t` at 0xdbaa940 defers when it is less than the +0x18 word of the second block times $f20
  (multiply in the delay slot at 0xdbaa934), or unordered. A third sum, from the +0x1c, +0x10 and
  +0x14 words, goes through the same pair: the `bc1t` at 0xdbaa974 against the same scaled bound, then
  the `bc1f` at 0xdbaa990 and the `bc1t` at 0xdbaa9a0 with the +0x10 and +0x18 words of the second
  block (multiply at 0xdbaa994). A call that clears all of them builds 0xffffffff8080c800 from the
  immediates at 0xdbaa9b4 and 0xdbaa9b8, stores it with the `sw` at 0xdbaa9bc, then a0 with the `sw`
  at 0xdbaa9c0 and a1 with the `sw` at 0xdbaa9c8 in the delay slot of the return at 0xdbaa9c4, all to
  absolute 0x4000; the caller gets the word loaded from 0x1020 in v0. Any failed test reaches the `jr`
  at 0xdbaa9e0, which goes to the word loaded from +0x20 of the second block (0xdbaa9d8) with a0 and
  a1 as received, a2 zero and a3 0x3f800000. Unknown: the callee named by the +0x20 word of the second
  block, which the tool leaves unresolved.
  Evidence grade: established.

- `__glOdyim_Vertex2iv_mag_line0` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbaaa00 (o32).
  Short path of a vertex call taking the two words at a0 and a0+0x4 (loaded into t4 and t5 by the `lw` at
  0xdbaaa00 and 0xdbaaa04): it turns them to single-precision floats, runs range tests against the records
  whose pointers sit at abs 0x1020 and abs 0x1024, and either writes a command word and the two values
  straight to 0x4000 or tail-jumps through the word at +0x20 of the second record.
  Both pointers are loaded at 0xdbaaa24 (record A, from abs 0x1020) and 0xdbaaa28 (record B, from abs
  0x1024), once the integer-to-float conversion at the start of the routine.
  It adds A+0x3c, the first value times A+0x30 and the second value times A+0x34 into a sum, scales the
  sum by the float at B+0x8, and the `swc1` at 0xdbaaa58 stores the sum itself, from before that multiply,
  back to B+0x8 on each call.
  Exactly seven branches follow the float work and five of them can jump to the tail path at 0xdbaab54.
  Call the sum s, the signed value A+0xc plus the first value times A+0x0 plus the second value times
  A+0x4 q, and the value A+0x1c plus the first value times A+0x10 plus the second value times A+0x14 u,
  with s and q held in two saved float registers.
  The `bc1f` at 0xdbaaa70 jumps to the tail path when s times the float at B+0x8 is negative (compare at
  0xdbaaa68), and the `bc1t` at 0xdbaaa9c branches there when s times the float at B+0x4, in absolute
  value, is below the absolute value of q or unordered (compare at 0xdbaaa94).
  Then, r is s times the float at B+0xc plus q. The `bc1f` at 0xdbaaab8 bypasses the following compare,
  going on to the u group, when r is below zero, and otherwise the `bc1t` at 0xdbaaac8 branches to the
  tail path when r is below s times the float at B+0x18 or unordered.
  The u group reruns the s-versus-B+0x4 test with u (the `bc1t` at 0xdbaaafc), then forms r as s times the
  float at B+0x10 plus u: the `bc1f` at 0xdbaab18 skips to the write path when it is negative, otherwise
  the `bc1t` at 0xdbaab28 branches to the tail path when it is below s times the float at B+0x18 or
  unordered.
  The two saved float registers are reloaded first. With every test passed, the fixed word
  0xffffffff8080c800 (0x8080 at 0xdbaab3c, 0xc800 ORed in by the `ori` at 0xdbaab40) is written to 0x4000
  by the `sw` at 0xdbaab44.
  After it come the word loaded from a0 (t4) with the `sw` at 0xdbaab48 and then the word loaded from
  a0+0x4 (t5), the final `sw` sitting at 0xdbaab50 in the delay slot of the `jr ra` at 0xdbaab4c, which
  returns v0, the word loaded from abs 0x1020 at 0xdbaaa24.
  In the tail block the `lw` at 0xdbaab60 fetches t9 from B+0x20, a2 is cleared at 0xdbaab64, a3 is set to
  0x3f800000 by the `lui` at 0xdbaab6c in the delay slot of the `jr t9` at 0xdbaab68, and a0 and a1 are
  left as they arrived.
  Inferred: the tail path is a general fallback for vertices that miss the tests, because the direct path
  emits only three words while the tail receives the original arguments plus fixed a2 and a3.
  Unknown: the code entered by the `jr t9` at 0xdbaab68, which is the word at B+0x20 and whose contents at
  run time would settle it.
  Unknown: which unit answers at 0x4000, since no linked mmio row names that address and the rows cover
  0x110000 and 0x120000.
  Test: the mapping-address read in "Test that settles the rest" at the top of this file; a client mapping that starts at 0 makes 0x4000 board +0x120000.
  Evidence grade: inferred.

- `__glOdyim_Vertex3f_mag_line0` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbab200 (o32).
  Fast path for one three-component vertex passed as three single-precision floats, with two extra
  sign-then-compare tests over the plain magnitude version: when the whole chain passes it writes
  the vertex to the absolute address 0x4000, otherwise it tail-jumps through a handler pointer kept
  in a state record. $f12 and $f14 hold the first two floats, and the third comes in through a2 and
  is moved into $f0 by the routine. From the pointer at absolute 0x1020 the code reaches a record
  and forms a fourth value by multiply-add (+0x3c plus the coordinates times +0x30, +0x34 and
  +0x38). It is also kept in a saved register, and the `swc1` at 0xdbab250 stores it to +0x8 of the
  record whose address sits at absolute 0x1024; the word previously at +0x8 is multiplied by it, and
  the word at +0x4 is multiplied by it as well. 0xdbab368, the tail-jump block, is entered by the
  `bc1f` at 0xdbab268 when the first product is negative. Two further exits, the `bc1t` at 0xdbab2a0
  and the `bc1t` at 0xdbab30c, fire when the magnitude of the second product is less than or
  unordered against the magnitude of a multiply-add over the 0x1020 record (+0xc with +0x0, +0x4,
  +0x8 for the first, +0x1c with +0x10, +0x14, +0x18 for the second). Two more stages follow, each
  adding the saved first value times a word of the 0x1024 record (+0xc, then +0x10) to the result of
  that multiply-add; in each, a negative sum makes the `bc1f` at 0xdbab2bc (then 0xdbab328) skip
  ahead to 0xdbab2d4 (then the store block at 0xdbab340), and otherwise the `bc1t` at 0xdbab2cc
  (then 0xdbab338) jumps to 0xdbab368 when the sum is less than, or unordered with, the saved value
  times the word at +0x18. The store block at 0xdbab340 restores the two saved floating-point
  registers (saved by the `sdc1` at 0xdbab208 and 0xdbab20c), builds 0xffffffff8080cc03 in t0, and
  writes four words to 0x4000: that constant (`sw` at 0xdbab354), the first two coordinates as
  passed (0xdbab358, 0xdbab35c) and the third (0xdbab364, in the delay slot of the `jr ra` at
  0xdbab360). No instruction here changes v0, which makes the return value the word loaded from
  0x1020. The block at the jump target fetches the pointer at +0x20 of the 0x1024 record
  (0xdbab374), puts the third coordinate's bits in a2 and 0x3f800000 in a3 in the delay slot of the
  `jr t9` at 0xdbab37c, with a0 and a1 as at entry. Inferred: four words go out to 0x4000: the
  constant, then the three coordinates. The bundle lists the address under memory-mapped I/O, so
  this is a device write sequence. Unknown: the routine entered through the computed jump at
  0xdbab37c, which depends on the word the 0x1024 record holds at +0x20; finding the writer of that
  field would settle it.
  Evidence grade: inferred.

- `__glOdyim_Vertex3fv_mag_line0` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbab3c0 (o32).
  Array form of a longer guard for a three-float vertex: the coordinates come from `a0` +0x0, +0x4 and
  +0x8 (loads at 0xdbab3c0 to 0xdbab3c8) into `$f12`, `$f14` and `$f0`, seven float branches test them
  against two records behind the words at absolute 0x1020 and 0x1024, and the result is either a write to
  absolute 0x4000 or a tail jump through a pointer in the second record. The frame of 16 bytes holds
  `$f20` and `$f22`, saved at 0xdbab3d0 and 0xdbab3d4 and reloaded on both exits.
  The first sum is the first record's +0x3c word plus the coordinates times its +0x30, +0x34 and +0x38
  words; it is kept in `$f20`, written to +0x8 of the second record by the `swc1` at 0xdbab418 after being
  multiplied by that word's old value, and also scaled by the second record's +0x4 word (load at
  0xdbab3f0). The `bc1f` at 0xdbab430 takes a negative product with the old +0x8 word to the exit block at 0xdbab530 (compare at 0xdbab428).
  A second sum from the first record's +0xc, +0x0, +0x4 and +0x8 words feeds the compare at 0xdbab460:
  the `bc1t` at 0xdbab468 jumps to 0xdbab530 when the scaled first sum, in absolute value, is smaller than
  the absolute second sum or the compare is unordered.
  Then the second sum plus the first sum times the second record's +0xc word (load at 0xdbab464) is
  checked: if it is not negative (compare at 0xdbab47c; the `bc1f` at 0xdbab484 skips ahead to 0xdbab49c
  otherwise), it is compared against the second record's +0x18 word times the first sum (compare at
  0xdbab48c) and the `bc1t` at 0xdbab494 jumps to 0xdbab530 when smaller or unordered. The same pair of
  tests repeats with a third sum from the first record's +0x1c, +0x10, +0x14 and +0x18 words and the
  second record's +0x10 word: `bc1t` at 0xdbab4d4, `bc1f` at 0xdbab4f0, `bc1t` at 0xdbab500.
  Reaching 0xdbab508, the routine reloads `$f20` and `$f22`, writes 0xffffffff8080cc03 (0x8080 at
  0xdbab514, 0xcc03 ORed in at 0xdbab518) to 0x4000 with the `sw` at 0xdbab51c, then `$f12` and `$f14`
  at 0xdbab520 and 0xdbab524 and `$f0` in the return's delay slot at 0xdbab52c; `v0` holds the word
  loaded from 0x1020.
  The exit block at 0xdbab530 reloads `$f20` and `$f22`, loads `t9` from +0x20 of the second record
  (0xdbab53c), puts `$f0` back into `a2`, and the `jr t9` at 0xdbab544 sets `a3` to 0x3f800000 in its
  delay slot; the caller's array pointer in `a0` is left alone.
  Unknown: the target of the `jr t9` at 0xdbab544; that pointer sits at +0x20 of the second record and is set at run time, so a capture would give it.
  Unknown: the register block behind absolute 0x4000, where the stores land; a mapping record is the route, since the linked windows begin at 0x110000.
  Evidence grade: established.

- `__glOdyim_Vertex3i_mag_line0` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbab580 (o32).
  Integer-argument form of the longer guard: `a0`, `a1` and `a2` are moved to the float unit and converted
  to single precision (into `$f12`, `$f14` and `$f0`), the converted values go through seven float branches
  against two records behind the words at absolute 0x1020 and 0x1024, and the raw integers are then either
  written to absolute 0x4000 or the routine tail-jumps through a pointer in the second record. A 16-byte
  frame holds `$f20` and `$f22`, saved by the `sdc1` at 0xdbab59c and 0xdbab5a0.
  The first sum adds the first record's +0x3c word to the converted values weighted by its +0x30,
  +0x34 and +0x38 words; it is kept in `$f20`, multiplied by the second record's old +0x8 word, scaled by its +0x4
  word (load at 0xdbab5bc), and stored over +0x8 of the second record by the `swc1` at 0xdbab5e4. When the product with the old +0x8 word is negative, the `bc1f`
  at 0xdbab5fc jumps to the exit block at 0xdbab6fc
  (compare at 0xdbab5f4).
  A second sum from the first record's +0xc, +0x0, +0x4 and +0x8 words feeds the compare at 0xdbab62c; the
  `bc1t` at 0xdbab634 jumps to 0xdbab6fc when the scaled first sum, in absolute value, is smaller than the
  absolute second sum or the compare is unordered.
  Next the second sum plus the first sum times the second record's +0xc word is checked: when it is
  negative (compare at 0xdbab648) the `bc1f` at 0xdbab650 skips to 0xdbab668, otherwise it is compared with
  the second record's +0x18 word times the first sum (compare at 0xdbab658), and the `bc1t` at 0xdbab660
  jumps to 0xdbab6fc when smaller or unordered. The same pair repeats with a third sum from the first
  record's +0x1c, +0x10, +0x14 and +0x18 words and the second record's +0x10 word: compare at 0xdbab698
  with the `bc1t` at 0xdbab6a0, then the `bc1f` at 0xdbab6bc and the `bc1t` at 0xdbab6cc.
  Passing everything, the routine reloads `$f20` and `$f22` and writes 0xffffffff8080cc02 (0x8080 at
  0xdbab6e0, 0xcc02 ORed in at 0xdbab6e4) to 0x4000 with the `sw` at 0xdbab6e8, then `a0`, `a1` and, in the
  return's delay slot, `a2` as the integers arrived; the register `v0` is left holding the word loaded from 0x1020.
  The exit block loads `t9` from +0x20 of the second record (0xdbab708), then puts the converted third
  value as float bits into `a2` and sets `a3` to 0x3f800000 in the delay slot of the `jr t9` at 0xdbab710;
  `a0` and `a1` are still the integers the caller passed.
  Unknown: the callee reached by the `jr t9` at 0xdbab710; its address is the run-time +0x20 word of the second record, which a capture would show.
  Unknown: which hardware sits at absolute 0x4000; the linked rows start at 0x110000, so a mapping record would have to name it for these stores.
  Evidence grade: established.

- `__glOdyim_Vertex3iv_mag_line0` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbab740 (o32).
  Same longer integer-array guard as the other build, but its accepted path writes to absolute 0x4000
  and returns the word loaded from 0x1020. It loads three integers from `a0` +0x0, +0x4 and +0x8
  (0xdbab740 to 0xdbab748), converts them to single precision, and runs seven float branches against the
  records behind the words at absolute 0x1020 and 0x1024, keeping `$f20` and `$f22` in a 16-byte frame
  (saved at 0xdbab768 and 0xdbab76c).
  The first sum is the first record's +0x3c word plus each converted value times one of its +0x30, +0x34
  and +0x38 words; it stays in `$f20`, is multiplied by the second record's old +0x8 word, scaled by its +0x4
  word (load at 0xdbab788), and the `swc1` at 0xdbab7b0 stores the sum over +0x8 of the second record. The
  `bc1f` at 0xdbab7c8 leaves for the exit block at 0xdbab8c8 when the product with the old +0x8 word is
  negative (compare at 0xdbab7c0).
  The remaining tests run in order. The `bc1t` at 0xdbab800 leaves when the scaled first sum is smaller, in
  absolute value, than a second sum built from the first record's +0xc, +0x0, +0x4 and +0x8 words. A
  quantity from that sum plus the first sum times the second record's +0xc word is then skipped by the
  `bc1f` at 0xdbab81c when negative, otherwise compared with the second record's +0x18 word times the first
  sum, and the `bc1t` at 0xdbab82c leaves when smaller or unordered. The pair repeats for a third sum from
  the first record's +0x1c, +0x10, +0x14 and +0x18 words: the `bc1t` at 0xdbab86c, the `bc1f` at 0xdbab888
  and the `bc1t` at 0xdbab898.
  On the accepted path the block at 0xdbab8a0 reloads `$f20` and `$f22` and writes 0xffffffff8080cc02 to
  0x4000 with the `sw` at 0xdbab8b4 (0x8080 at 0xdbab8ac, 0xcc02 ORed in at 0xdbab8b0), then the
  integers at 0xdbab8b8 and 0xdbab8bc, and the third in the delay slot (0xdbab8c4) of the `jr ra` at 0xdbab8c0.
  The exit block loads `t9` from +0x20 of the second record (0xdbab8d4), puts the converted third value into
  `a2` as float bits, and sets `a3` to 0x3f800000 in the delay slot at 0xdbab8e0 of the `jr t9` at
  0xdbab8dc; `a0` is still the caller's array pointer.
  Unknown: the jump target of the `jr t9` at 0xdbab8dc, read from +0x20 of the second record; the bundle holds no value for it, and a capture would.
  Unknown: the owner of absolute 0x4000, the target of these four stores; the route is a mapping record, since no linked row includes it.
  Evidence grade: established.

- `__glOdyim_Vertex3sv_mag_line0` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbabac0 (o32).
  Accepts a pointer to three halfword coordinates (`lh` at 0xdbabac0, 0xdbabac4 and 0xdbabac8, from +0x0, +0x2 and +0x4 of a0), turns each into a float, runs them through a longer series of range tests than the plain variant, and either writes them as words to absolute 0x4000 or branches to another routine.
  A pair of double-precision floating-point registers is parked in a 16-byte frame (`sdc1` at 0xdbabae8 and 0xdbabaec) and reloaded on both exits (0xdbabc20 to 0xdbabc24 on the store path, 0xdbabc48 to 0xdbabc4c on the jump path).
  It fetches record pointers from absolute 0x1020 and 0x1024 (0xdbabaf0, 0xdbabaf4); the first record gives the +0x30 to +0x3c floats (four of them) and the second gives the +0x4 and +0x8 floats.
  Inferred: the `swc1` at 0xdbabb30 writes the +0x3c float plus the three converted coordinates, each multiplied by the +0x30, +0x34 or +0x38 float, to +0x8 of the second record, since only multiply and add steps on those registers sit between the fetches and the store; the sum is also copied into $f20.
  That sum is multiplied by the old +0x8 float, and the `bc1f` at 0xdbabb48 branches to the tail block at 0xdbabc48 when the product's absolute value differs from the product (`c.ueq.s` at 0xdbabb40), meaning the product is negative.
  Otherwise two more sums are formed from the first record (+0x0, +0x4, +0x8 plus +0xc, kept in $f22, then +0x10, +0x14, +0x18 plus +0x1c), and after each the `bc1t` at 0xdbabb80 and at 0xdbabbec branches to the tail block when the first sum's scaled absolute value (the +0x4 float of the second record) is less than the new absolute sum or the compare is unordered.
  After each of those, the routine combines $f20 with the second record's +0xc float (first pass) or +0x10 float (second pass) and the newest sum; the `bc1f` at 0xdbabb9c and 0xdbabc08 skip the final check when that result is negative, and otherwise the `bc1t` at 0xdbabbac and 0xdbabc18 jump to the tail block when the result is less than the +0x18 float of the second record times the $f20 sum, or unordered.
  When no branch is taken, v0 is set from the word at absolute 0x1020 (the value the routine returns) and the `sw` at 0xdbabc34 writes the constant 0xffffffff8080cc02 (built at 0xdbabc2c and 0xdbabc30) to absolute 0x4000.
  Three more `sw` instructions (0xdbabc38, 0xdbabc3c and the delay slot of the return at 0xdbabc40) store the three coordinates as the loaded halfwords, sign-extended, to the same address.
  The tail block fetches a word from +0x20 of the second record into t9 (0xdbabc54) and branches to it with a0 and a1 as received, a2 set from the single-precision copy of the third coordinate, and a3 set by the `lui` at 0xdbabc60 to 0x3f800000.
  Unknown: the target of the `jr t9` at 0xdbabc5c, which depends on the word held at +0x20 behind absolute 0x1024.
  Evidence grade: inferred.

- `__glOdyim_Vertex4f_mag_line0` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbac000 (o32).
  Variant of the four-coordinate float vertex path with extra range checks: the coordinates are f12 and f14 plus the bits in a2 and a3, which the first two instructions copy into f0 and f2, and the routine either posts them to absolute 0x4000 behind a header word or tail-branches elsewhere.
  It parks two double-precision registers in a 16-byte frame (`sdc1` at 0xdbac00c and 0xdbac010) and reloads them on both exits (0xdbac150 and 0xdbac154 on the post path, 0xdbac17c and 0xdbac180 on the tail path).
  Pointers come from absolute 0x1020 and 0x1024 (0xdbac014, 0xdbac018); a weighted sum of the four coordinates uses the first record's floats at +0x30, +0x34, +0x38 and +0x3c, a copy of it is kept in $f20, and the `swc1` at 0xdbac058 writes it to +0x8 of the second record.
  The `bc1f` at 0xdbac070 goes to the exit block when the sum times the earlier +0x8 float is negative, and two more sums built from the first record's floats at +0x0 to +0xc and +0x10 to +0x1c (the latest kept in $f22) are compared against the first sum scaled by the +0x4 float of the second record, leaving through the `bc1t` at 0xdbac0ac and 0xdbac11c when the scaled value is smaller or unordered.
  Following each two, the routine forms $f20 times the second record's +0xc float (first pass) or +0x10 float (second pass) plus $f22; the `bc1f` at 0xdbac0c8 and 0xdbac138 skip the last test when that result is negative, and otherwise the `bc1t` at 0xdbac0d8 and 0xdbac148 exit to the tail when it is below the +0x18 float times $f20, or unordered.
  Surviving every test, the routine stores the header 0xffffffff8080d005 (built at 0xdbac15c and 0xdbac160) to absolute 0x4000 with the `sw` at 0xdbac164.
  The `swc1` at 0xdbac168, 0xdbac16c, 0xdbac170 and 0xdbac178 (delay slot of the `jr ra` at 0xdbac174) write f12, f14, f0 and f2 to that same address, and the return value is the pointer loaded from absolute 0x1020.
  The tail path reads +0x20 of the second record into t9 (0xdbac188) and `jr t9` at 0xdbac190 branches with a0 and a1 untouched and a2 and a3 refilled from f0 and f2.
  Unknown: the target of the closing `jr t9`, which depends on what sits at +0x20 behind absolute 0x1024.
  Evidence grade: inferred.

- `__glOdyim_Vertex4i_mag_line0` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbac380 (o32).
  Takes four integers in a0 to a3 and either writes them, behind a header word, to the fixed address
  0x4000, or hands the call on through a function pointer, depending on seven float tests against
  the records addressed by the words at absolute 0x1020 and 0x1024 (the 0x1020 record and the 0x1024
  record). The first instructions move the integers into floating-point registers and convert them
  to single precision. Two double-precision registers are saved on a 16-byte frame by the `sdc1` at
  0xdbac3a4 and 0xdbac3a8 and restored on both exits (`ldc1` at 0xdbac4e8 and 0xdbac4ec on the store
  path, 0xdbac514 and 0xdbac518 on the tail path). The first sum, the converted values times the
  words at +0x30 to +0x3c of the 0x1020 record, is kept in f20 by a register copy and stored by the
  `swc1` at 0xdbac3f0 at +0x8 of the 0x1024 record. The `bc1f` at 0xdbac408 leaves if the old +0x8
  word scaled by that sum is negative. Each of the two rows of the 0x1020 record, at +0 to +0xc and
  +0x10 to +0x1c, has a `bc1t` (0xdbac444, 0xdbac4b4) leaves when the absolute value of the row sum
  exceeds the first sum scaled by the word at +0x4 of the 0x1024 record, in absolute value, or is
  unordered with it; then f20 times a word of the 0x1024 record (+0xc for the first row, +0x10 for
  the second) plus the signed row sum is tested: the `bc1f` at 0xdbac460 or 0xdbac4d0 skips the last
  test when that value is negative, and otherwise the `bc1t` at 0xdbac470 or 0xdbac4e0 leaves when
  it is below f20 times the word at +0x18 of the 0x1024 record, or unordered. When none leaves, the
  `sw` at 0xdbac4fc writes 0xffffffff8080d004 (0x8080 at 0xdbac4f4, 0xd004 at 0xdbac4f8) to 0x4000,
  then a0, a1, a2 and a3 as the original integers (`sw` at 0xdbac500, 0xdbac504, 0xdbac508 and the
  delay slot of the `jr ra` at 0xdbac50c); v0 is left holding the word loaded from 0x1020. After any
  leaving branch the `lw` at 0xdbac520 fetches the +0x20 word of the 0x1024 record into t9; the `jr
  t9` at 0xdbac528 then goes there with a0 and a1 as they arrived, a2 and a3 (delay slot) holding
  the converted values of the third and fourth integers. Unknown: the destination of the register
  jump, held at +0x20 of the 0x1024 record; the code that sets up that record would settle it.
  Unknown: what sits at 0x4000 on the board; a row for that address in a board map would answer it.
  Evidence grade: established.

- `__glOdyim_TexCoord3d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbace80 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdbace80-0xdbaceac (44 bytes).
  It occupies 44 bytes.
  The `sw` at 0xdbace94 stores 4 bytes to abs 0x4000.
  3 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xdbace9c, `swc1` at 0xdbacea0, `swc1` at 0xdbacea8.
  The return at 0xdbacea4 has v0 = ?.

- `__glOdyim_ScratchColor3b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbad540 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdbad540-0xdbad564 (36 bytes).
  It occupies 36 bytes.
  2 such `sdc1` accesses store 8 bytes to abs 0x4000, including `sdc1` at 0xdbad558, `sdc1` at 0xdbad560.
  The return at 0xdbad55c has v0 = ?.

- `__glOdyim_Color3d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbad600 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdbad600-0xdbad62c (44 bytes).
  It occupies 44 bytes.
  The `sw` at 0xdbad614 stores 4 bytes to abs 0x4000.
  3 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xdbad61c, `swc1` at 0xdbad620, `swc1` at 0xdbad628.
  The return at 0xdbad624 has v0 = ?.

- `__glOdyim_ScratchColor3d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbad640 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdbad640-0xdbad66c (44 bytes).
  It occupies 44 bytes.
  The `sw` at 0xdbad654 stores 4 bytes to abs 0x4000.
  3 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xdbad65c, `swc1` at 0xdbad660, `swc1` at 0xdbad668.
  The return at 0xdbad664 has v0 = ?.

- `__glOdyim_ScratchColor3i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbad840 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdbad840-0xdbad864 (36 bytes).
  It occupies 36 bytes.
  2 such `sdc1` accesses store 8 bytes to abs 0x4000, including `sdc1` at 0xdbad858, `sdc1` at 0xdbad860.
  The return at 0xdbad85c has v0 = ?.

- `__glOdyim_ScratchColor3s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbad940 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdbad940-0xdbad964 (36 bytes).
  It occupies 36 bytes.
  2 such `sdc1` accesses store 8 bytes to abs 0x4000, including `sdc1` at 0xdbad958, `sdc1` at 0xdbad960.
  The return at 0xdbad95c has v0 = ?.

- `__glOdyim_ScratchColor3ui` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbadb40 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdbadb40-0xdbadb64 (36 bytes).
  It occupies 36 bytes.
  2 such `sdc1` accesses store 8 bytes to abs 0x4000, including `sdc1` at 0xdbadb58, `sdc1` at 0xdbadb60.
  The return at 0xdbadb5c has v0 = ?.

- `__glOdyim_ScratchColor3us` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbadc40 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdbadc40-0xdbadc64 (36 bytes).
  It occupies 36 bytes.
  2 such `sdc1` accesses store 8 bytes to abs 0x4000, including `sdc1` at 0xdbadc58, `sdc1` at 0xdbadc60.
  The return at 0xdbadc5c has v0 = ?.

- `__glOdyim_ScratchColor4b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbadd40 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdbadd40-0xdbadd68 (40 bytes).
  It occupies 40 bytes.
  The `sdc1` at 0xdbadd54 stores 8 bytes to abs 0x4000.
  3 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdbadd58, `sw` at 0xdbadd5c, `sw` at 0xdbadd64.
  The return at 0xdbadd60 has v0 = ?.

- `__glOdyim_ScratchColor4dv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbadec0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdbadec0-0xdbadf00 (64 bytes).
  It occupies 64 bytes.
  The `ldc1` at 0xdbadec0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ldc1` at 0xdbadec8 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ldc1` at 0xdbaded0 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ldc1` at 0xdbaded8 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `sw` at 0xdbadee0 stores 4 bytes to abs 0x4000.
  4 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xdbadee8, `swc1` at 0xdbadef0, `swc1` at 0xdbadef4.
  The return at 0xdbadef8 has v0 = ?.

- `__glOdyim_ScratchColor4i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbae040 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdbae040-0xdbae068 (40 bytes).
  It occupies 40 bytes.
  The `sdc1` at 0xdbae054 stores 8 bytes to abs 0x4000.
  3 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdbae058, `sw` at 0xdbae05c, `sw` at 0xdbae064.
  The return at 0xdbae060 has v0 = ?.

- `__glOdyim_ScratchColor4s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbae140 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdbae140-0xdbae168 (40 bytes).
  It occupies 40 bytes.
  The `sdc1` at 0xdbae154 stores 8 bytes to abs 0x4000.
  3 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdbae158, `sw` at 0xdbae15c, `sw` at 0xdbae164.
  The return at 0xdbae160 has v0 = ?.

- `__glOdyim_ScratchColor4ub` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbae240 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdbae240-0xdbae268 (40 bytes).
  It occupies 40 bytes.
  The `sdc1` at 0xdbae254 stores 8 bytes to abs 0x4000.
  3 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdbae258, `sw` at 0xdbae25c, `sw` at 0xdbae264.
  The return at 0xdbae260 has v0 = ?.

- `__glOdyim_ScratchColor4ui` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbae340 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdbae340-0xdbae368 (40 bytes).
  It occupies 40 bytes.
  The `sdc1` at 0xdbae354 stores 8 bytes to abs 0x4000.
  3 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdbae358, `sw` at 0xdbae35c, `sw` at 0xdbae364.
  The return at 0xdbae360 has v0 = ?.

- `__glOdyim_ScratchColor4us` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbae440 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdbae440-0xdbae468 (40 bytes).
  It occupies 40 bytes.
  The `sdc1` at 0xdbae454 stores 8 bytes to abs 0x4000.
  3 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdbae458, `sw` at 0xdbae45c, `sw` at 0xdbae464.
  The return at 0xdbae460 has v0 = ?.

- `__glOdyim_ScratchIndexd` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbae540 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdbae540-0xdbae558 (24 bytes).
  It occupies 24 bytes.
  The `sdc1` at 0xdbae554 stores 8 bytes to abs 0x4000.
  The return at 0xdbae550 has v0 = ?.

- `glColor3b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbb0000 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdbb0000-0xdbb0040 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xdbb0000 loads 4 bytes from abs 0x1590.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbb0004).
  The instructions from 0xdbb000c to 0xdbb003c are not reached by any path from the entry, and their branches are not listed.

- `glVertex2d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbb1500 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdbb1500-0xdbb1600 (256 bytes).
  It occupies 256 bytes.
  The `lw` at 0xdbb1500 loads 4 bytes from abs 0x1530.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbb1504).
  The instructions from 0xdbb150c to 0xdbb15fc are not reached by any path from the entry, and their branches are not listed.
