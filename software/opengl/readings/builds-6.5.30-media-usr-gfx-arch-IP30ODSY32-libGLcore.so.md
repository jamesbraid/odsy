# Readings: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`

One entry per routine, filed here from the reading batches by binary.

- `__glOdylc_Color3b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd960aa0 (n32).
  Appends a four-word record built from a0, a1, a2 and a constant header to the buffer whose write
  pointer is the word at absolute 0x1030, calling `__glSPDlistSpace` first when the word at 0x1028
  is too small. On every path 0x10000 is ORed into the word at +0x13d4 of the record that the word
  at 0x1010 points to, and the `sw` at 0xd960abc writes it back. The pad is cleared at entry. If the
  word at 0x1034 is nonzero (`beq` at 0xd960adc not taken), the call is skipped when the word at
  0x1028 is at least 4 as a signed value (`beq` at 0xd960ae8 jumps to 0xd960b8c and on to the record
  block at 0xd960b3c). If the word at 0x1034 is zero, the pad becomes 1 when bit 0x4 of the pointer
  at 0x1030 is set, and the call is skipped when the word at 0x1028 is at least 4 plus the pad
  (`beq` at 0xd960ba4). When the call is skipped, v0 still holds 0x197af0 from the global-pointer
  arithmetic at 0xd960ad0. The call at 0xd960b08 runs with a0 zeroed; a zero return jumps to
  0xd960bc0, which writes the old pointer less 4 to 0x1030 (`sw` at 0xd960bc4), adds 1 to the word
  at 0x1028 (`sw` at 0xd960bd8) and returns the callee's value. A nonzero return reloads the pointer
  at 0xd960b2c, sets the pad to 1 if its bit 0x4 is set, and takes the callee's return in place of
  the word at 0x1028. The record block stores the constant 0xffffffffc580cc0b (built at 0xd960b48
  and 0xd960b50 from 0xc580 and 0xcc0b), a0, a1 and a2 at +0x0, +0x4, +0x8 and +0xc of the pointer
  plus four times the pad (`sw`s at 0xd960b54 to 0xd960b60). The `sw` at 0xd960b68 then writes that
  address plus 0x10 to 0x1030, the `sw` at 0xd960b70 writes the space value less the pad less 4 to
  0x1028, and the `sw` at 0xd960b88 in the return's delay slot adds 4 to the word at 0x1034.
  Inferred: the words at 0x1030 and 0x1028 act as a buffer cursor and a space counter, because every
  pass advances the cursor by 0x10 and drops the counter by the pad plus 4, and a low counter
  triggers the `__glSPDlistSpace` call.
  Unknown: the bit fields inside the constant 0xffffffffc580cc0b written first; a command-format
  datasheet entry for the board would settle it.
  Evidence grade: inferred.

- `__glOdylc_Color3s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd961510
  `__glOdylc_Color3s` is a 328-byte n32 routine. It loads the pointer at abs 0x1010 and a word at +0x13d4 from it, and stores a word back at +0x13d4 (the facts do not show an increment). It reads the words at abs 0x1028 and 0x1034. When [0x1034] is nonzero and [0x1028] is below 4 it calls `__glSPDlistSpace` (0xd961578) with a3 = [0x1010], a4 = 0x10000 and a5 = [0x1028], and on that path returns the call's value. Other paths return an unknown value or the constant 0x197080. The `lc` in the name suggests a display-list-compile variant of `glColor3s`, but the facts show only the storage pattern.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glOdylc_Color3ui` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd961a30
  `__glOdylc_Color3ui` is a 328-byte n32 routine. It loads the pointer at abs 0x1010 and a word at +0x13d4 from it, and stores a word back at +0x13d4 (the facts do not show an increment). It reads the words at abs 0x1028 and 0x1034. When [0x1034] is nonzero and [0x1028] is below 4 it calls `__glSPDlistSpace` (0xd961a98) with a3 = [0x1010], a4 = 0x10000 and a5 = [0x1028], and on that path returns the call's value. Other paths return an unknown value or the constant 0x196b60. It has the same shape as `Color3s`. The word stores whose targets the facts do not resolve are not identified, so what it writes into the list is open.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glOdylc_Color3us` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd961cc0
  `__glOdylc_Color3us` is a 328-byte n32 routine. It loads the pointer at abs 0x1010 and a word at +0x13d4 from it, and stores a word back at +0x13d4 (the facts do not show an increment). It reads the words at abs 0x1028 and 0x1034. When [0x1034] is nonzero and [0x1028] is below 4 it calls `__glSPDlistSpace` (0xd961d28) with a3 = [0x1010], a4 = 0x10000 and a5 = [0x1028], and on that path returns the call's value. Other paths return an unknown value or the constant 0x1968d0. It has the same shape as the `Color3s` and `Color3ui` entries; the only difference the facts show is the returned constant. The name points to a list-compile variant of `glColor3us`, which the facts do not confirm.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glOdylc_Color4b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd961f50.
  Grade: inferred.
  Appears to be the display-list-compile form of glColor4b. Its one visible call is __glSPDlistSpace at 0xd961fbc, with a5 = 0x10000 and globals read from 0x1010 and 0x1028; branches on the globals at 0x1034 and 0x1028 can skip that call. One return path gives that call's result; another returns a value the facts do not resolve. The facts do not show how the four color bytes are stored, so the rest of the body is unread.
  Reviewed: 2026-11-12

- `__glOdylc_Color4b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd961f50
  `__glOdylc_Color4b` is a 344-byte n32 routine. It loads the pointer at abs 0x1010 and a word at +0x13d4 from it, and stores a word back at +0x13d4 (the facts do not show an increment). It reads the words at abs 0x1028 and 0x1034. When [0x1034] is nonzero and [0x1028] is below 5 it calls `__glSPDlistSpace` (0xd961fbc) with the entry argument a3 passed through, a4 = [0x1010], a5 = 0x10000 and a6 = [0x1028], and on that path returns the call's value. Other paths return an unknown value or the constant 0x196640. Compared with the Color3 entries the call has a different argument order. The call shape is taken from the rendered call, not from a documented signature.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glOdylc_Color4i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9627a0.
  Grade: inferred.
  Appears to be the display-list-compile form of glColor4i, the same shape as its glColor4b sibling. Its one visible call is __glSPDlistSpace at 0xd96280c, with a5 = 0x10000 and the same globals at 0x1010 and 0x1028. The body after that call is not read, so how the four int values are stored is open.
  Reviewed: 2026-11-12

- `__glOdylc_Color4i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9627a0
  `__glOdylc_Color4i` is a 344-byte n32 routine. It loads the pointer at abs 0x1010 and a word at +0x13d4 from it, and stores a word back at +0x13d4 (the facts do not show an increment). It reads the words at abs 0x1028 and 0x1034. When [0x1034] is nonzero and [0x1028] is below 5 it calls `__glSPDlistSpace` (0xd96280c) with the entry argument a3 passed through, a4 = [0x1010], a5 = 0x10000 and a6 = [0x1028], and on that path returns the call's value. Other paths return an unknown value or the constant 0x195df0. It has the same call shape as `Color4b`. Apart from the returned constant, the facts show no difference.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glOdylc_Color4s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd962a50.
  Grade: inferred.
  Appears to be the display-list-compile form of glColor4s. It makes one visible call, __glSPDlistSpace at 0xd962abc, with a5 = 0x10000 and globals at 0x1010 and 0x1028. One return path gives that call's value; the other returns a value the facts do not resolve. The facts do not say how the short components are stored.
  Reviewed: 2026-11-12

- `__glOdylc_Color4s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd962a50
  `__glOdylc_Color4s` is a 344-byte n32 routine. It loads the pointer at abs 0x1010 and a word at +0x13d4 from it, and stores a word back at +0x13d4 (the facts do not show an increment). It reads the words at abs 0x1028 and 0x1034. When [0x1034] is nonzero and [0x1028] is below 5 it calls `__glSPDlistSpace` (0xd962abc) with the entry argument a3 passed through, a4 = [0x1010], a5 = 0x10000 and a6 = [0x1028], and on that path returns the call's value. Other paths return an unknown value or the constant 0x195b40. It has the same call shape as `Color4b`. The facts do not say which list or which element is written.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glOdylc_Color4ub` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd962d00
  `__glOdylc_Color4ub` is a 344-byte n32 routine. It loads the pointer at abs 0x1010 and a word at +0x13d4 from it, and stores a word back at +0x13d4 (the facts do not show an increment). It reads the words at abs 0x1028 and 0x1034. When [0x1034] is nonzero and [0x1028] is below 5 it calls `__glSPDlistSpace` (0xd962d6c) with the entry argument a3 passed through, a4 = [0x1010], a5 = 0x10000 and a6 = [0x1028], and on that path returns the call's value. Other paths return an unknown value or the constant 0x195890. It has the same call shape as `Color4b`. The name suggests unsigned-byte color arguments; the byte-width loads are not shown, so that is not confirmed.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glOdylc_Color4ui` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd962fb0
  `__glOdylc_Color4ui` is a 344-byte n32 routine. It loads the pointer at abs 0x1010 and a word at +0x13d4 from it, and stores a word back at +0x13d4 (the facts do not show an increment). It reads the words at abs 0x1028 and 0x1034. When [0x1034] is nonzero and [0x1028] is below 5 it calls `__glSPDlistSpace` (0xd96301c) with the entry argument a3 passed through, a4 = [0x1010], a5 = 0x10000 and a6 = [0x1028], and on that path returns the call's value. Other paths return an unknown value or the constant 0x1955e0. It has the same call shape as `Color4b`. The name suggests unsigned-int color arguments; the facts do not show the argument loads, so that reading is inferred.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glOdylc_Color4us` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd963260.
  Grade: inferred.
  Appears to be the display-list-compile form of glColor4us. Its one visible call is __glSPDlistSpace at 0xd9632cc, with a5 = 0x10000 and globals at 0x1010 and 0x1028. The unsigned-short storage and any other side effects are not shown by these facts.
  Reviewed: 2026-11-12

- `__glOdylc_Color4us` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd963260
  `__glOdylc_Color4us` is a 344-byte n32 routine. It loads the pointer at abs 0x1010 and a word at +0x13d4 from it, and stores a word back at +0x13d4 (the facts do not show an increment). It reads the words at abs 0x1028 and 0x1034. When [0x1034] is nonzero and [0x1028] is below 5 it calls `__glSPDlistSpace` (0xd9632cc) with the entry argument a3 passed through, a4 = [0x1010], a5 = 0x10000 and a6 = [0x1028], and on that path returns the call's value. Other paths return an unknown value or the constant 0x195330. It has the same call shape as `Color4b`. The name suggests unsigned-short color arguments; nothing else in the facts identifies the element written.
  Grade: inferred.
  Reviewed: 2026-11-12

- `Pick` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd964190 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xd964190-0xd964198 (8 bytes).
  It occupies 8 bytes.
  The return at 0xd964190 has v0 = ?.

- `Fetch` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9641a0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xd9641a0-0xd9641a8 (8 bytes).
  It occupies 8 bytes.
  The return at 0xd9641a0 has v0 = ?.

- `StoreStippledSpan` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9641b0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xd9641b0-0xd9642d8 (296 bytes).
  It occupies 296 bytes.
  The `lw` at 0xd9641b0 loads 4 bytes from a0 (arg0 at entry) +0x7630.
  The `lw` at 0xd9641bc loads 4 bytes from a0 (arg0 at entry) +0x7740.
  The `lw` at 0xd9641c4 loads 4 bytes from a0 (arg0 at entry) +0x7660.
  The `lw` at 0xd9641d0 loads 4 bytes from a0 (arg0 at entry) +0x7748.
  The `lw` at 0xd9641d8 loads 4 bytes from a0 (arg0 at entry) +0x7738.
  The `lw` at 0xd9641e4 loads 4 bytes from a0 (arg0 at entry) +0x762c.
  The `lw` at 0xd964234 loads 4 bytes from ?.
  The `lwc1` at 0xd96425c loads 4 bytes from ?.
  The `lw` at 0xd964264 loads 4 bytes from [a0+30536] +0xa4.
  The `jalr` at 0xd96426c calls (unknown callee) with a0=[a0+30536], a1=sp-160, a2=?, a3=?.
  The `beq` branch at 0xd9641f0 targets 0xd9642b4, is taken when s7(=[a0+30304]) == 0, and falls through when s7(=[a0+30304]) != 0.
  The `bltz` branch at 0xd964238 targets 0xd96429c, is taken when a0(?) < 0 (signed), and falls through when a0(?) >= 0 (signed).
  The `beq` branch at 0xd964250 targets 0xd964274, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0xd964284 targets 0xd964250, is taken when s4(?) != s6(=-0x1), and falls through when s4(?) == s6(=-0x1).
  The `bne` branch at 0xd96429c targets 0xd964210, is taken when s7(?) != 0, and falls through when s7(?) == 0.
  The return at 0xd9642d0 has v0 = 0x0.

- `StoreSpan` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9642e0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xd9642e0-0xd96437c (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xd9642e8 loads 4 bytes from a0 (arg0 at entry) +0x7660.
  The `lw` at 0xd9642ec loads 4 bytes from a0 (arg0 at entry) +0x7630.
  The `lw` at 0xd9642f8 loads 4 bytes from a0 (arg0 at entry) +0x762c.
  The `lw` at 0xd9642fc loads 4 bytes from a0 (arg0 at entry) +0x7748.
  The `lw` at 0xd964314 loads 4 bytes from a0 (arg0 at entry) +0x7738.
  The `lwc1` at 0xd964334 loads 4 bytes from ?.
  The `lw` at 0xd96433c loads 4 bytes from [a0+30536] +0xa4.
  The `jalr` at 0xd964348 calls (unknown callee) with a0=[a0+30536], a1=sp-112, a2=?, a3=?.
  The `beq` branch at 0xd964320 targets 0xd96435c, is taken when s0(=[a0+30252]) >= s3(=([a0+30252] + [a0+30304])) (signed), and falls through when s0(=[a0+30252]) < s3(=([a0+30252] + [a0+30304])) (signed).
  The `bne` branch at 0xd964354 targets 0xd964330, is taken when s3(=([a0+30252] + [a0+30304])) != s0(?), and falls through when s3(=([a0+30252] + [a0+30304])) == s0(?).
  The return at 0xd964374 has v0 = 0x0.

- `__glOdyim_Clear` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9644d0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xd9644d0-0xd964a94 (1476 bytes).
  It occupies 1476 bytes.
  The `lw` at 0xd9644d8 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9644dc loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9644ec loads 4 bytes from [0x1010] +0x16964.
  The `sb` at 0xd964544 stores 1 byte to [0x1010] +0x16975.
  The `lw` at 0xd964548 loads 4 bytes from [0x1010] +0x2e40.
  5 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xd964554, `sw` at 0xd964684, `sw` at 0xd96478c.
  The `lw` at 0xd964588 loads 4 bytes from [0x1010] +0xc84.
  The `lbu` at 0xd9645a4 loads 1 byte from [0x1010] +0xc98.
  The `lw` at 0xd9645b0 loads 4 bytes from [0x1010] +0x7b24.
  The `lbu` at 0xd9645cc loads 1 byte from ?.
  4 such `lw` accesses load 4 bytes from [0x1010] +0x7c20, including `lw` at 0xd9645d8, `lw` at 0xd964650, `lw` at 0xd964940.
  8 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd9645dc, `lw` at 0xd9645f0, `lw` at 0xd964600.
  4 such `lw` accesses load 4 bytes from [0x1010] +0x7c24, including `lw` at 0xd9645ec, `lw` at 0xd964658, `lw` at 0xd96495c.
  The `sw` at 0xd9645fc stores 4 bytes to [0x1010] +0x7c20.
  The `sw` at 0xd964604 stores 4 bytes to [0x1010] +0x7c24.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd96461c, `sw` at 0xd964678, `sw` at 0xd964784.
  7 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xd964624, `sw` at 0xd964630, `sw` at 0xd964638.
  The `lw` at 0xd964660 loads 4 bytes from [0x1010] +0x7b70.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7bfc, including `lw` at 0xd96469c, `lw` at 0xd964794.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c5c, including `lw` at 0xd9646a0, `lw` at 0xd9646e0.
  The `lbu` at 0xd9646b4 loads 1 byte from [0x1010] +0xc94.
  The `lwc1` at 0xd9646c0 loads 4 bytes from [0x1010] +0x744.
  The `lwc1` at 0xd9646c8 loads 4 bytes from [0x1010] +0x748.
  The `lwc1` at 0xd9646d0 loads 4 bytes from [0x1010] +0x74c.
  The `lwc1` at 0xd9646d8 loads 4 bytes from [0x1010] +0x750.
  2 such `lbu` accesses load 1 byte from [0x1010] +0xc99, including `lbu` at 0xd9646e4, `lbu` at 0xd964a58.
  The `lbu` at 0xd964700 loads 1 byte from [0x1010] +0x664.
  2 such `lbu` accesses load 1 byte from [0x1010] +0xc9a, including `lbu` at 0xd964710, `lbu` at 0xd964a80.
  The `lh` at 0xd964728 loads 2 bytes from [0x1010] +0x68a.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x7c5c, including `sw` at 0xd964778, `sw` at 0xd964828, `sw` at 0xd96492c.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7bfc, including `sw` at 0xd9647a0, `sw` at 0xd964830.
  The `ldc1` at 0xd9647b8 loads 8 bytes from [0x1010] +0x668.
  The `lw` at 0xd9647c4 loads 4 bytes from [0x1010] +0xce4.
  The `lbu` at 0xd9647d0 loads 1 byte from [0x1010] +0x7b74.
  2 such `lw` accesses load 4 bytes from [0x1010] +0xe78, including `lw` at 0xd9647ec, `lw` at 0xd9649e4.
  2 such `lw` accesses load 4 bytes from [0x1010] +0xe74, including `lw` at 0xd9647f8, `lw` at 0xd9649ec.
  2 such `lh` accesses load 2 bytes from [0x1010] +0x684, including `lh` at 0xd964804, `lh` at 0xd9649f4.
  The `lw` at 0xd964898 loads 4 bytes from [0x1010] +0x760.
  The `lwc1` at 0xd9648d4 loads 4 bytes from [0x1010] +0x754.
  The `lbu` at 0xd9649b8 loads 1 byte from [0x1010] +0xc97.
  The `jalr` at 0xd964520 calls __glSetError [0xda34dc0] with a0=0x502, a1=[0x1018], a2=0x10000, a3=a3 at entry (arg3).
  The `jalr` at 0xd96454c calls (unknown callee) with a0=[0x1010], a1=[0x1018], a2=0x10000, a3=a3 at entry (arg3).
  The `jalr` at 0xd964570 calls __glSetError [0xda34dc0] with a0=0x501, a1=?, a2=-0x4701, a3=a0 at entry (arg0).
  The `jalr` at 0xd9645b4 calls (unknown callee) with a0=[0x1010]+31416, a1=?, a2=-0x4701, a3=a0 at entry (arg0), a4=[[0x1010]+3204], a5=0x1c00, a7=[[0x1010]+3224]:1.
  The `jalr` at 0xd9647bc calls __glOdysseyWindowToNormalizedEyeZ [0xd9e4890] with a0=0xfffffffffffbffff, a1=?, a2=?, a3=?, a4=0xff000, a5=0xfffffffffff00fff, a6=[[0x1010]+3226]:1.
  The `bgezall` at 0xd964810 calls __glOdysseyClear [0xd964aa0] with a0=[0x1010], a1=sp-128, a2=?, a3=[[0x1010]+1668]:2, a4=0x0, a5=0x0, a6=[[0x1010]+3700], a7=[[0x1010]+3704].
  The `jalr` at 0xd964988 calls __glOdysseyIoctl [0xd9d9360] with a0=[0x1010], a1=0x6f64000d, a2=sp-144, a3=?.
  The `jalr` at 0xd9649dc calls __glOdysseySetDrawbuf [0xd9d9fb0] with a0=[0x1010], a1=0x0, a2=0x0, a3=one of 0x0, 0x1.
  The `bgezall` at 0xd964a28 calls __glOdysseyClear [0xd964aa0] with a0=[0x1010], a1=sp-128, a2=?, a3=[[0x1010]+1668]:2, a4=0x0, a5=0x0, a6=[[0x1010]+3700], a7=[[0x1010]+3704]; fp f15=0x41fffff800000000.
  The `jalr` at 0xd964a44 calls __glOdysseySetDrawbuf [0xd9d9fb0] with a0=[0x1010], a1=?, a2=?, a3=0x0, a4=0x0.
  The `beq` branch at 0xd964504 targets 0xd964688, is taken when at(=[[0x1010]+92516]) == 0, and falls through when at(=[[0x1010]+92516]) != 0.
  The `beq` branch at 0xd96450c targets 0xd964540, is taken when a1(=[0x1018]) == 0, and falls through when a1(=[0x1018]) != 0.
  The `beq` branch at 0xd964518 targets 0xd96453c, is taken when a1(=[0x1018]) == v0(=0x2), and falls through when a1(=[0x1018]) != v0(=0x2).
  The `beq` branch at 0xd964564 targets 0xd964580, is taken when (a1(=a0) & a2(=-0x4701)) == 0, and falls through when (a1(=a0) & a2(=-0x4701)) != 0.
  The `beq` branch at 0xd964578 targets 0xd96452c and is always taken.
  The `beq` branch at 0xd964580 targets 0xd96452c, is taken when a3(=a0) == 0, and falls through when a3(=a0) != 0.
  The `bne` branch at 0xd964590 targets 0xd964528, is taken when a4(=[[0x1010]+3204]) != a5(=0x1c00), and falls through when a4(=[[0x1010]+3204]) == a5(=0x1c00).
  The `beq` branch at 0xd96459c targets 0xd9645cc, is taken when (a6(=a0) & 0x200) == 0, and falls through when (a6(=a0) & 0x200) != 0.
  The `beq` branch at 0xd9645a8 targets 0xd9645cc, is taken when a7(=[[0x1010]+3224]:1) == 0, and falls through when a7(=[[0x1010]+3224]:1) != 0.
  The `beq` branch at 0xd9645c4 targets 0xd964528, is taken when (t0(=a0) & 0x4500) == 0, and falls through when (t0(=a0) & 0x4500) != 0.
  The `bne` branch at 0xd9645d0 targets 0xd964528, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bne` branch at 0xd9645e0 targets 0xd9645fc, is taken when t2(=[[0x1010]+31776]) != a1(?), and falls through when t2(=[[0x1010]+31776]) == a1(?).
  The `beq` branch at 0xd9645f4 targets 0xd964698, is taken when a2(?) == a3(=[[0x1010]+31780]), and falls through when a2(?) != a3(=[[0x1010]+31780]).
  The `beq` branch at 0xd96460c targets 0xd964644, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bgez` branch at 0xd964668 targets 0xd964930, is taken when t2(=([[0x1010]+31600] << 0x2b)) >= 0 (signed), and falls through when t2(=([[0x1010]+31600] << 0x2b)) < 0 (signed).
  The `beq` branch at 0xd964680 targets 0xd964698 and is always taken.
  The `bne` branch at 0xd964688 targets 0xd964518, is taken when a1(=[0x1018]) != 0, and falls through when a1(=[0x1018]) == 0.
  The `beq` branch at 0xd964690 targets 0xd96455c and is always taken.
  The `beq` branch at 0xd9646ac targets 0xd9648ec, is taken when (a7(=a0) & 0x4000) == 0, and falls through when (a7(=a0) & 0x4000) != 0.
  The `beq` branch at 0xd9646b8 targets 0xd9648d4, is taken when t0(=[[0x1010]+3220]:1) == 0, and falls through when t0(=[[0x1010]+3220]:1) != 0.
  The `beq` branch at 0xd9646e8 targets 0xd964710, is taken when a3(=[[0x1010]+3225]:1) == 0, and falls through when a3(=[[0x1010]+3225]:1) != 0.
  The `beq` branch at 0xd9646f8 targets 0xd964710, is taken when (t1(=a0) & 0x100) == 0, and falls through when (t1(=a0) & 0x100) != 0.
  The `beq` branch at 0xd964704 targets 0xd964710, is taken when t2(=[[0x1010]+1636]:1) == 0, and falls through when t2(=[[0x1010]+1636]:1) != 0.
  The `beq` branch at 0xd964714 targets 0xd964854, is taken when a6(=[[0x1010]+3226]:1) == 0, and falls through when a6(=[[0x1010]+3226]:1) != 0.
  The `beq` branch at 0xd964720 targets 0xd964854, is taken when (t3(=a0) & 0x400) == 0, and falls through when (t3(=a0) & 0x400) != 0.
  The `beq` branch at 0xd96472c targets 0xd96485c, is taken when a3(=[[0x1010]+3225]:1) == 0, and falls through when a3(=[[0x1010]+3225]:1) != 0.
  The `beq` branch at 0xd9647c8 targets 0xd964868, is taken when a6(=[[0x1010]+3300]) == 0, and falls through when a6(=[[0x1010]+3300]) != 0.
  The `beq` branch at 0xd9647d4 targets 0xd964898, is taken when a7(=[[0x1010]+31604]:1) == 0, and falls through when a7(=[[0x1010]+31604]:1) != 0.
  The `beq` branch at 0xd964854 targets 0xd96472c and is always taken.
  The `beq` branch at 0xd964860 targets 0xd964740 and is always taken.
  The `beq` branch at 0xd96486c targets 0xd9647d0, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0xd96487c targets 0xd964a58, is taken when (t9(=a0) & 0x100) == 0, and falls through when (t9(=a0) & 0x100) != 0.
  The `beq` branch at 0xd964888 targets 0xd964a80, is taken when (ra(=a0) & 0x400) == 0, and falls through when (ra(=a0) & 0x400) != 0.
  The `beq` branch at 0xd964890 targets 0xd9647d0 and is always taken.
  The `beq` branch at 0xd9648a0 targets 0xd964998, is taken when a1(=[[0x1010]+1888]) == at(=0x406), and falls through when a1(=[[0x1010]+1888]) != at(=0x406).
  The `beq` branch at 0xd9648a8 targets 0xd964a6c, is taken when a1(=[[0x1010]+1888]) == v0(=0x407), and falls through when a1(=[[0x1010]+1888]) != v0(=0x407).
  The `beq` branch at 0xd9648b4 targets 0xd9649b0, is taken when a1(=[[0x1010]+1888]) == v1(=0x408), and falls through when a1(=[[0x1010]+1888]) != v1(=0x408).
  The `beq` branch at 0xd9648cc targets 0xd9647ec and is always taken.
  The `beq` branch at 0xd9648e4 targets 0xd9646e0 and is always taken.
  The `beq` branch at 0xd964928 targets 0xd9646e4 and is always taken.
  The `beq` branch at 0xd964990 targets 0xd964670 and is always taken.
  The `beq` branch at 0xd9649a8 targets 0xd9649c8 and is always taken.
  The `beq` branch at 0xd964a50 targets 0xd9647ec and is always taken.
  The `bne` branch at 0xd964a5c targets 0xd9647d0, is taken when t1(=[[0x1010]+3225]:1) != 0, and falls through when t1(=[[0x1010]+3225]:1) == 0.
  The `beq` branch at 0xd964a64 targets 0xd964884 and is always taken.
  The `beq` branch at 0xd964a78 targets 0xd9649c8 and is always taken.
  The `bne` branch at 0xd964a84 targets 0xd9647d0, is taken when t3(=[[0x1010]+3226]:1) != 0, and falls through when t3(=[[0x1010]+3226]:1) == 0.
  The `beq` branch at 0xd964a8c targets 0xd964890 and is always taken.
  The return at 0xd964534 has v0 = one of ?, ret(__glSetError).
  The return at 0xd96484c has v0 = ret(__glOdysseyClear).

- `__glOdyim_Clear` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9644d0
  `__glOdyim_Clear` is a 1476-byte n32 routine. It reads the pointer at abs 0x1010 and a word at 0x1018, and tests bytes at context offsets 0xc99 and 0xc9a and a halfword at 0x68a. It calls `__glSetError` with 0x502 when [0x1018] is neither 0 nor 2 (0xd964520), and with 0x501 when (a0 & -0x4701) is nonzero (0xd964570); these match the standard GL error values, which the facts do not name. It calls `__glOdysseyClear` (callee 0xd964aa0, calls at 0xd964810 and 0xd964a28) and `__glOdysseyIoctl` (0xd964988), and `__glOdysseySetDrawbuf` at 0xd9649dc and again at 0xd964a44, around the clear call at 0xd964a28. It also calls `__glOdysseyWindowToNormalizedEyeZ` (0xd9647bc) with a4 = 0xff000 and wide masks in a0 and a5 (0xfffffffffffbffff, 0xfffffffffff00fff). What is passed as the value is not shown, and the mask decode is only partly resolved.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glsplc_Begin` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd975260 (n32).
  Appends a three-word record to a buffer whose write pointer is the word at absolute 0x1030, with
  the remaining-room count at absolute 0x1028 and a running word total at absolute 0x1034; the state
  block base is the word at absolute 0x1010. The routine first checks eight conditions, and any
  failure sends it to an allocation path that calls `__glSPDlalloc` with a0 = 4 and a1 = 3 (the
  `bgezall` at 0xd97533c): the byte at state +0x169e4 is nonzero (0xd975290), the word at +0x169e8
  equals 1 (0xd9752a0), absolute 0x1034 is zero (0xd9752ac), the word at +0x13dc is at least 3
  unsigned (0xd9752c4), the word at -0x10 of the table entry addressed by the word at +0x13d8 plus
  eight times that count equals the state word at +0x13b8 (0xd9752d8), the entry's word at -0x8
  equals the word at +0x58 of the record the state word at +0x13b4 points to (0xd9752e4), the byte
  at +0x169ec is zero (0xd9752f0), and the entry `a0` is not 2 (0xd9752f8). In the allocation path a
  zero return ends the routine with that zero (the `beq` at 0xd975348); a nonzero return gets the
  entry `a0` stored in its first word (the `sw` at 0xd975354). Then, if the word at +0x169e8 is
  positive (the `blez` at 0xd97535c), the routine clears it (the `sw` at 0xd975364) and sets the byte at +0x169e4 to 1 (the
  `sb` at 0xd975368); otherwise it clears that byte (the `sb` at 0xd9753cc).
  When all eight conditions hold, the `beq` at 0xd975318 compares absolute 0x1030 with the entry's
  word at -0xc plus four times the word it points to plus 8. On equality the routine adds that
  pointed-to word to absolute 0x1034, subtracts 4 from absolute 0x1030 and adds 1 to absolute
  0x1028, and calls `RemoveIlists` with a0 = 2 (the `bgezall` at 0xd9753f4); otherwise it calls
  `RemoveIlists` with a0 = 1 (the `bgezall` at 0xd975324). Both then reach 0xd9753fc, which decides
  whether room must be made: with absolute 0x1034 nonzero the count at 0x1028 is tested against 3
  (0xd975410), and with it zero against 3 plus one when bit 0x4 of absolute 0x1030 is set
  (0xd9754b8). When the count is short, `__glSPDlistSpace` is called with a0 = 0 (the `jalr` at
  0xd975424); a zero return stores the earlier absolute 0x1030 minus 4 and the word at 0x1028 plus 1 and returns the zero
  (the `sw` at 0xd9754d0 and the delay-slot `sw` at 0xd9754f0 of the `jr` at 0xd9754ec). Otherwise,
  with R equal to 1 when bit 0x4 of absolute 0x1030 is set (forced to 0 when absolute 0x1034 is
  nonzero and the count was already 3 or more), and the count being the word at 0x1028 or the
  `__glSPDlistSpace` return, the routine writes 0x14001, 0x14400 and the entry `a0` to the three words
  starting at the write pointer plus 4R (the `sw` at 0xd975464, 0xd97546c and 0xd975470), sets
  absolute 0x1030 to the address after them, sets absolute 0x1028 to the count minus R minus 3, adds
  3 to absolute 0x1034, and clears the word at +0x169e8 (the `sw` at 0xd97549c).
  Both paths join at 0xd975370 with v0 = 2. The `sb` at 0xd97538c stores 1 to the byte at +0x169ec
  when `a0` is 2 and 0 otherwise. If the byte at +0x169dc is zero (0xd975388) the routine returns 2
  at once; otherwise it stores the single-precision value 0xff7fffff (about -3.4e38) to +0x169a0,
  +0x16998 and +0x16990 and 0x7f7fffff (about +3.4e38) to +0x1699c, +0x16994 and +0x1698c, then
  returns 2.
  Unknown: the content of the two callees `RemoveIlists` (at 0xd9751f0) and `__glSPDlistSpace` (at
  0xd9fb4b0); no committed note covers them for this build, and one for each would settle it.
  Evidence grade: established.

- `ApplyMaterialF` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd983680 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xd983680-0xd983de4 (1892 bytes).
  It occupies 1892 bytes.
  The `lw` at 0xd983688 loads 4 bytes from abs 0x1010.
  7 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xd983698, `lwc1` at 0xd9836d0, `lwc1` at 0xd983904.
  The `lw` at 0xd9836fc loads 4 bytes from a0 (arg0 at entry) +0x18.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x18, including `sw` at 0xd98371c, `sw` at 0xd98375c.
  6 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xd983720, `lwc1` at 0xd9839a8, `lwc1` at 0xd983b08.
  6 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xd983760, `lwc1` at 0xd9839e8, `lwc1` at 0xd983b84.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1c, including `lw` at 0xd98378c, `lw` at 0xd983968.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x1c, including `sw` at 0xd9837a0, `sw` at 0xd983974, `sw` at 0xd983de0.
  The `lw` at 0xd9837ac loads 4 bytes from [0x1010] +0x9830.
  The `sw` at 0xd9837b8 stores 4 bytes to [0x1010] +0x9830.
  38 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xd9837c0, `sw` at 0xd9837c8, `sw` at 0xd9837d0.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c70, including `lw` at 0xd9837e0, `lw` at 0xd98386c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c74, including `lw` at 0xd9837e8, `lw` at 0xd983874.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c78, including `lw` at 0xd9837f0, `lw` at 0xd98387c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c7c, including `lw` at 0xd9837f8, `lw` at 0xd983884.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c80, including `lw` at 0xd983800, `lw` at 0xd98388c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c84, including `lw` at 0xd983808, `lw` at 0xd983894.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c88, including `lw` at 0xd983810, `lw` at 0xd98389c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c8c, including `lw` at 0xd983818, `lw` at 0xd9838a4.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c90, including `lw` at 0xd983820, `lw` at 0xd9838ac.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c94, including `lw` at 0xd983828, `lw` at 0xd9838b4.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c98, including `lw` at 0xd983830, `lw` at 0xd9838bc.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c9c, including `lw` at 0xd983838, `lw` at 0xd9838c4.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7ca0, including `lw` at 0xd983840, `lw` at 0xd9838cc.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7ca4, including `lw` at 0xd983848, `lw` at 0xd9838d4.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7ca8, including `lw` at 0xd983850, `lw` at 0xd9838dc.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7cac, including `lw` at 0xd983858, `lw` at 0xd9838e4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0xd983984, `lw` at 0xd983aa4.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x8, including `sw` at 0xd9839a4, `sw` at 0xd9839e4, `sw` at 0xd983ac4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0xd983a10, `lw` at 0xd983bac.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xc, including `sw` at 0xd983a28, `sw` at 0xd983a68, `sw` at 0xd983bc4.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lwc1` at 0xd983a2c, `lwc1` at 0xd983c08.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0xd983aec, `lw` at 0xd983c54.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x0, including `sw` at 0xd983b04, `sw` at 0xd983b80, `sw` at 0xd983c74.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xd983bec, `lw` at 0xd983ce4.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x4, including `sw` at 0xd983c04, `sw` at 0xd983cfc.
  The `lw` at 0xd983d0c loads 4 bytes from a0 (arg0 at entry) +0x10.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x10, including `sw` at 0xd983d2c, `sw` at 0xd983d6c.
  The `lw` at 0xd983d9c loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `sw` at 0xd983db4 stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `bne` branch at 0xd983684 targets 0xd9836b8, is taken when a1 < 0x1600 (unsigned), and falls through when a1 >= 0x1600 (unsigned).
  The `beq` branch at 0xd983690 targets 0xd9838f0, is taken when a1 >= 0x1601 (unsigned), and falls through when a1 < 0x1601 (unsigned).
  The `bc1f` branch at 0xd9836a8 targets 0xd9836f0, is taken when not (f4(=0x3ff0000000000000) <= f0 (c.le.d at 0xd9836a4)), and falls through when f4(=0x3ff0000000000000) <= f0 (c.le.d at 0xd9836a4).
  The `beq` branch at 0xd9836b0 targets 0xd9836f4 and is always taken.
  The `bne` branch at 0xd9836bc targets 0xd983924, is taken when a1 < 0x1201 (unsigned), and falls through when a1 >= 0x1201 (unsigned).
  The `beq` branch at 0xd9836c8 targets 0xd983a6c, is taken when a1 >= 0x1202 (unsigned), and falls through when a1 < 0x1202 (unsigned).
  The `bc1f` branch at 0xd9836e0 targets 0xd983978, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `beq` branch at 0xd9836e8 targets 0xd98397c and is always taken.
  The `bc1f` branch at 0xd98372c targets 0xd98373c, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `beq` branch at 0xd983734 targets 0xd983740 and is always taken.
  The `bc1f` branch at 0xd98376c targets 0xd98377c, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `beq` branch at 0xd983774 targets 0xd983780 and is always taken.
  The `beq` branch at 0xd9837b0 targets 0xd983864, is taken when t2(=[[0x1010]+38960]) == 0, and falls through when t2(=[[0x1010]+38960]) != 0.
  The `bne` branch at 0xd9838f0 targets 0xd98394c, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0xd9838fc targets 0xd9837a4, is taken when a1 >= 0x1603 (unsigned), and falls through when a1 < 0x1603 (unsigned).
  The `bc1f` branch at 0xd983914 targets 0xd983a94, is taken when FP condition code 4 is false, and falls through when FP condition code 4 is true.
  The `beq` branch at 0xd98391c targets 0xd983a9c and is always taken.
  The `bne` branch at 0xd983924 targets 0xd9837a4, is taken when a1 != a6(=0x1200), and falls through when a1 == a6(=0x1200).
  The `bc1f` branch at 0xd98393c targets 0xd983c48, is taken when FP condition code 5 is false, and falls through when FP condition code 5 is true.
  The `beq` branch at 0xd983944 targets 0xd983c4c and is always taken.
  The `bne` branch at 0xd98394c targets 0xd9837a4, is taken when a1 != a7(=0x1601), and falls through when a1 == a7(=0x1601).
  The `bc1f` branch at 0xd983964 targets 0xd983db8, is taken when FP condition code 6 is false, and falls through when FP condition code 6 is true.
  The `beq` branch at 0xd983970 targets 0xd9837a4 and is always taken.
  The `bc1f` branch at 0xd9839b4 targets 0xd9839c4, is taken when FP condition code 7 is false, and falls through when FP condition code 7 is true.
  The `beq` branch at 0xd9839bc targets 0xd9839c8 and is always taken.
  The `bc1f` branch at 0xd9839f4 targets 0xd983a04, is taken when not (f4(=0x3ff0000000000000) <= f7 (c.le.d at 0xd9839f0)), and falls through when f4(=0x3ff0000000000000) <= f7 (c.le.d at 0xd9839f0).
  The `beq` branch at 0xd9839fc targets 0xd983a08 and is always taken.
  The `bc1f` branch at 0xd983a38 targets 0xd983a48, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `beq` branch at 0xd983a40 targets 0xd983a4c and is always taken.
  The `beq` branch at 0xd983a64 targets 0xd9837a4 and is always taken.
  The `bne` branch at 0xd983a6c targets 0xd9837a4, is taken when a1 != t2(=0x1202), and falls through when a1 == t2(=0x1202).
  The `bc1f` branch at 0xd983a84 targets 0xd983d00, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `beq` branch at 0xd983a8c targets 0xd983d04 and is always taken.
  The `bc1t` branch at 0xd983ad4 targets 0xd983ae4, is taken when FP condition code 3 is true, and falls through when FP condition code 3 is false.
  The `bc1f` branch at 0xd983b14 targets 0xd983b24, is taken when FP condition code 4 is false, and falls through when FP condition code 4 is true.
  The `beq` branch at 0xd983b1c targets 0xd983b28 and is always taken.
  The `bc1f` branch at 0xd983b54 targets 0xd983b64, is taken when FP condition code 5 is false, and falls through when FP condition code 5 is true.
  The `beq` branch at 0xd983b5c targets 0xd983b68 and is always taken.
  The `bc1f` branch at 0xd983b90 targets 0xd983ba0, is taken when FP condition code 6 is false, and falls through when FP condition code 6 is true.
  The `beq` branch at 0xd983b98 targets 0xd983ba4 and is always taken.
  The `bc1t` branch at 0xd983bd4 targets 0xd983be4, is taken when FP condition code 7 is true, and falls through when FP condition code 7 is false.
  The `bc1f` branch at 0xd983c14 targets 0xd983c24, is taken when not (f4(=0x3ff0000000000000) <= f7 (c.le.d at 0xd983c10)), and falls through when f4(=0x3ff0000000000000) <= f7 (c.le.d at 0xd983c10).
  The `beq` branch at 0xd983c1c targets 0xd983c28 and is always taken.
  The `beq` branch at 0xd983c40 targets 0xd9837a4 and is always taken.
  The `bc1f` branch at 0xd983c84 targets 0xd983c94, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `beq` branch at 0xd983c8c targets 0xd983c98 and is always taken.
  The `bc1f` branch at 0xd983cc4 targets 0xd983cd4, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `beq` branch at 0xd983ccc targets 0xd983cd8 and is always taken.
  The `beq` branch at 0xd983cf8 targets 0xd9837a4 and is always taken.
  The `bc1f` branch at 0xd983d3c targets 0xd983d4c, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `beq` branch at 0xd983d44 targets 0xd983d50 and is always taken.
  The `bc1f` branch at 0xd983d7c targets 0xd983d8c, is taken when FP condition code 4 is false, and falls through when FP condition code 4 is true.
  The `beq` branch at 0xd983d84 targets 0xd983d90 and is always taken.
  The `beq` branch at 0xd983db0 targets 0xd9837a4 and is always taken.
  The `beq` branch at 0xd983ddc targets 0xd9837a4 and is always taken.
  The return at 0xd98385c has v0 = [[0x1010]+31900].
  The return at 0xd9838e8 has v0 = [[0x1010]+31860].

- `ApplyMaterialF` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd983680
  `ApplyMaterialF` is a 1892-byte n32 routine. It branches on a1 against 0x1200, 0x1201, 0x1202 and 0x1600 through 0x1603, loads single-precision values (`lwc1` at +0x0, +0x4, +0x8 and +0xc, base not shown) and compares them against 1.0 (`c.le.d` with 0x3ff0000000000000). It stores words at offsets 0x18, 0x1c, 0x8 and 0xc from a base the facts do not name. On one path it reads 16 words at context offsets 0x7c70 through 0x7cac in steps of 4, through the pointer at abs 0x1010, and returns [[0x1010]+31900] or [[0x1010]+31860]. The name suggests the float form of `glMaterial`, but the facts do not name the face or parameter enum, so the material mapping is not established.
  Grade: inferred.
  Reviewed: 2026-11-12

- `ApplyMaterialI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd983df0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xd983df0-0xd98470c (2332 bytes).
  It occupies 2332 bytes.
  The `lw` at 0xd983df8 loads 4 bytes from abs 0x1010.
  7 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lw` at 0xd983e08, `lw` at 0xd983e58, `lw` at 0xd9840c8.
  20 such `lwc1` accesses load 4 bytes from [0x1010] +0xdf0, including `lwc1` at 0xd983e20, `lwc1` at 0xd983e70, `lwc1` at 0xd983ed4.
  The `lw` at 0xd983ea8 loads 4 bytes from a0 (arg0 at entry) +0x18.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x18, including `sw` at 0xd983ec0, `sw` at 0xd983f14.
  6 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0xd983ec4, `lw` at 0xd9841b0, `lw` at 0xd98437c.
  6 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lw` at 0xd983f18, `lw` at 0xd984204, `lw` at 0xd984420.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1c, including `lw` at 0xd983f58, `lw` at 0xd984170.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x1c, including `sw` at 0xd983f6c, `sw` at 0xd98417c, `sw` at 0xd984708.
  The `lw` at 0xd983f78 loads 4 bytes from [0x1010] +0x9830.
  The `sw` at 0xd983f84 stores 4 bytes to [0x1010] +0x9830.
  38 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xd983f8c, `sw` at 0xd983f94, `sw` at 0xd983f9c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c70, including `lw` at 0xd983fac, `lw` at 0xd984034.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c74, including `lw` at 0xd983fb4, `lw` at 0xd98403c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c78, including `lw` at 0xd983fbc, `lw` at 0xd984044.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c7c, including `lw` at 0xd983fc4, `lw` at 0xd98404c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c80, including `lw` at 0xd983fcc, `lw` at 0xd984054.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c84, including `lw` at 0xd983fd4, `lw` at 0xd98405c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c88, including `lw` at 0xd983fdc, `lw` at 0xd984064.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c8c, including `lw` at 0xd983fe4, `lw` at 0xd98406c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c90, including `lw` at 0xd983fec, `lw` at 0xd984074.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c94, including `lw` at 0xd983ff4, `lw` at 0xd98407c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c98, including `lw` at 0xd983ffc, `lw` at 0xd984084.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c9c, including `lw` at 0xd984004, `lw` at 0xd98408c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7ca0, including `lw` at 0xd98400c, `lw` at 0xd984094.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7ca4, including `lw` at 0xd984014, `lw` at 0xd98409c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7ca8, including `lw` at 0xd98401c, `lw` at 0xd9840a4.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7cac, including `lw` at 0xd984024, `lw` at 0xd9840ac.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0xd984194, `lw` at 0xd984304.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x8, including `sw` at 0xd9841ac, `sw` at 0xd984200, `sw` at 0xd984324.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0xd984244, `lw` at 0xd98445c.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xc, including `sw` at 0xd984258, `sw` at 0xd9842ac, `sw` at 0xd984474.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lw` at 0xd98425c, `lw` at 0xd9844cc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0xd984360, `lw` at 0xd984534.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x0, including `sw` at 0xd984378, `sw` at 0xd98441c, `sw` at 0xd98454c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xd9844b0, `lw` at 0xd9845e4.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x4, including `sw` at 0xd9844c8, `sw` at 0xd9845fc.
  The `lw` at 0xd984614 loads 4 bytes from a0 (arg0 at entry) +0x10.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x10, including `sw` at 0xd98462c, `sw` at 0xd984680.
  The `lw` at 0xd9846c4 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `sw` at 0xd9846dc stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `bne` branch at 0xd983df4 targets 0xd983e44, is taken when a1 < 0x1600 (unsigned), and falls through when a1 >= 0x1600 (unsigned).
  The `beq` branch at 0xd983e00 targets 0xd9840b8, is taken when a1 >= 0x1601 (unsigned), and falls through when a1 < 0x1601 (unsigned).
  The `bc1f` branch at 0xd983e34 targets 0xd983e94, is taken when not (f5(=0x3ff0000000000000) <= f0 (c.le.d at 0xd983e30)), and falls through when f5(=0x3ff0000000000000) <= f0 (c.le.d at 0xd983e30).
  The `beq` branch at 0xd983e3c targets 0xd983e98 and is always taken.
  The `bne` branch at 0xd983e48 targets 0xd984104, is taken when a1 < 0x1201 (unsigned), and falls through when a1 >= 0x1201 (unsigned).
  The `beq` branch at 0xd983e50 targets 0xd9842b0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bc1f` branch at 0xd983e84 targets 0xd984180, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `beq` branch at 0xd983e8c targets 0xd984184 and is always taken.
  The `bc1f` branch at 0xd983ee4 targets 0xd983ef4, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `beq` branch at 0xd983eec targets 0xd983ef8 and is always taken.
  The `bc1f` branch at 0xd983f38 targets 0xd983f48, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `beq` branch at 0xd983f40 targets 0xd983f4c and is always taken.
  The `beq` branch at 0xd983f7c targets 0xd984030, is taken when t3(=[[0x1010]+38960]) == 0, and falls through when t3(=[[0x1010]+38960]) != 0.
  The `bne` branch at 0xd9840b8 targets 0xd98414c, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0xd9840c0 targets 0xd983f70, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bc1f` branch at 0xd9840f4 targets 0xd9842f4, is taken when FP condition code 4 is false, and falls through when FP condition code 4 is true.
  The `beq` branch at 0xd9840fc targets 0xd9842fc and is always taken.
  The `bne` branch at 0xd984108 targets 0xd983f70, is taken when a1 != a7(=0x1200), and falls through when a1 == a7(=0x1200).
  The `bc1f` branch at 0xd98413c targets 0xd984520, is taken when FP condition code 5 is false, and falls through when FP condition code 5 is true.
  The `beq` branch at 0xd984144 targets 0xd984524 and is always taken.
  The `bne` branch at 0xd984150 targets 0xd983f70, is taken when a1 != t1(=0x1601), and falls through when a1 == t1(=0x1601).
  The `bc1f` branch at 0xd98416c targets 0xd9846e0, is taken when FP condition code 6 is false, and falls through when FP condition code 6 is true.
  The `beq` branch at 0xd984178 targets 0xd983f70 and is always taken.
  The `bc1f` branch at 0xd9841d0 targets 0xd9841e0, is taken when FP condition code 7 is false, and falls through when FP condition code 7 is true.
  The `beq` branch at 0xd9841d8 targets 0xd9841e4 and is always taken.
  The `bc1f` branch at 0xd984224 targets 0xd984234, is taken when not (f5(=0x3ff0000000000000) <= f9 (c.le.d at 0xd984220)), and falls through when f5(=0x3ff0000000000000) <= f9 (c.le.d at 0xd984220).
  The `beq` branch at 0xd98422c targets 0xd984238 and is always taken.
  The `bc1f` branch at 0xd98427c targets 0xd98428c, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `beq` branch at 0xd984284 targets 0xd984290 and is always taken.
  The `beq` branch at 0xd9842a8 targets 0xd983f70 and is always taken.
  The `bne` branch at 0xd9842b0 targets 0xd983f70, is taken when a1 != t2(=0x1202), and falls through when a1 == t2(=0x1202).
  The `bc1f` branch at 0xd9842e4 targets 0xd984600, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `beq` branch at 0xd9842ec targets 0xd984604 and is always taken.
  The `bc1t` branch at 0xd984348 targets 0xd984358, is taken when FP condition code 3 is true, and falls through when FP condition code 3 is false.
  The `bc1f` branch at 0xd98439c targets 0xd9843ac, is taken when FP condition code 4 is false, and falls through when FP condition code 4 is true.
  The `beq` branch at 0xd9843a4 targets 0xd9843b0 and is always taken.
  The `bc1f` branch at 0xd9843f0 targets 0xd984400, is taken when FP condition code 5 is false, and falls through when FP condition code 5 is true.
  The `beq` branch at 0xd9843f8 targets 0xd984404 and is always taken.
  The `bc1f` branch at 0xd984440 targets 0xd984450, is taken when FP condition code 6 is false, and falls through when FP condition code 6 is true.
  The `beq` branch at 0xd984448 targets 0xd984454 and is always taken.
  The `bc1t` branch at 0xd984498 targets 0xd9844a8, is taken when FP condition code 7 is true, and falls through when FP condition code 7 is false.
  The `bc1f` branch at 0xd9844ec targets 0xd9844fc, is taken when not (f5(=0x3ff0000000000000) <= f9 (c.le.d at 0xd9844e8)), and falls through when f5(=0x3ff0000000000000) <= f9 (c.le.d at 0xd9844e8).
  The `beq` branch at 0xd9844f4 targets 0xd984500 and is always taken.
  The `beq` branch at 0xd984518 targets 0xd983f70 and is always taken.
  The `bc1f` branch at 0xd984570 targets 0xd984580, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `beq` branch at 0xd984578 targets 0xd984584 and is always taken.
  The `bc1f` branch at 0xd9845c4 targets 0xd9845d4, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `beq` branch at 0xd9845cc targets 0xd9845d8 and is always taken.
  The `beq` branch at 0xd9845f8 targets 0xd983f70 and is always taken.
  The `bc1f` branch at 0xd984650 targets 0xd984660, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `beq` branch at 0xd984658 targets 0xd984664 and is always taken.
  The `bc1f` branch at 0xd9846a4 targets 0xd9846b4, is taken when FP condition code 4 is false, and falls through when FP condition code 4 is true.
  The `beq` branch at 0xd9846ac targets 0xd9846b8 and is always taken.
  The `beq` branch at 0xd9846d8 targets 0xd983f70 and is always taken.
  The `beq` branch at 0xd984704 targets 0xd983f70 and is always taken.
  The return at 0xd984028 has v0 = [[0x1010]+31904].
  The return at 0xd9840b0 has v0 = [[0x1010]+31864].

- `AddConvolutionBorders` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd99e4b0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xd99e4b0-0xd9a0b38 (9864 bytes).
  It occupies 9864 bytes.
  The `lw` at 0xd99e4cc loads 4 bytes from abs 0x1010.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x2fc, including `lw` at 0xd99e4d4, `lw` at 0xd99e784, `lw` at 0xd99f168.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7bfc, including `lw` at 0xd99e4d8, `lw` at 0xd99ed14.
  The `lwc1` at 0xd99e4dc loads 4 bytes from [[0x1010]+764] +0x3c.
  The `lwc1` at 0xd99e4e0 loads 4 bytes from [[0x1010]+764] +0x38.
  The `lwc1` at 0xd99e4e4 loads 4 bytes from [[0x1010]+764] +0x34.
  The `lwc1` at 0xd99e4e8 loads 4 bytes from [[0x1010]+764] +0x30.
  The `lw` at 0xd99e4f8 loads 4 bytes from a1 (arg1 at entry) +0x10.
  2 such `lw` accesses load 4 bytes from [[0x1010]+764] +0x44, including `lw` at 0xd99e504, `lw` at 0xd99f180.
  2 such `lw` accesses load 4 bytes from [[0x1010]+764] +0x40, including `lw` at 0xd99e50c, `lw` at 0xd99f16c.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7bfc, including `sw` at 0xd99e518, `sw` at 0xd99ed20.
  13 such `lw` accesses load 4 bytes from [0x1010] +0x16960, including `lw` at 0xd99e520, `lw` at 0xd99e618, `lw` at 0xd99e638.
  13 such `sw` accesses store 4 bytes to [0x1010] +0x16960, including `sw` at 0xd99e534, `sw` at 0xd99e624, `sw` at 0xd99e64c.
  13 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xd99e540, `sw` at 0xd99e630, `sw` at 0xd99e668.
  63 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x14, including `lw` at 0xd99e54c, `lw` at 0xd99e560, `lw` at 0xd99e56c.
  56 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xd99e55c, `swc1` at 0xd99e568, `swc1` at 0xd99e574.
  4 such `lw` accesses load 4 bytes from [0x1010] +0x7cd4, including `lw` at 0xd99e604, `lw` at 0xd99e9d4, `lw` at 0xd99ee78.
  4 such `sw` accesses store 4 bytes to [0x1010] +0x7cd4, including `sw` at 0xd99e614, `sw` at 0xd99e9e4, `sw` at 0xd99ee88.
  5 such `lw` accesses load 4 bytes from [0x1010] +0x96a4, including `lw` at 0xd99e644, `lw` at 0xd99ea08, `lw` at 0xd99ecf0.
  5 such `sw` accesses store 4 bytes to [0x1010] +0x96a4, including `sw` at 0xd99e65c, `sw` at 0xd99ea24, `sw` at 0xd99ed08.
  28 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lw` at 0xd99e670, `lw` at 0xd99e7cc, `lw` at 0xd99e864.
  28 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0xd99e678, `lw` at 0xd99e7d4, `lw` at 0xd99e86c.
  28 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lw` at 0xd99e680, `lw` at 0xd99e7dc, `lw` at 0xd99e874.
  28 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lw` at 0xd99e688, `lw` at 0xd99e7e4, `lw` at 0xd99e87c.
  28 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x10, including `lw` at 0xd99e690, `lw` at 0xd99e7ec, `lw` at 0xd99e884.
  28 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x14, including `lw` at 0xd99e698, `lw` at 0xd99e7f4, `lw` at 0xd99e88c.
  28 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x18, including `lw` at 0xd99e6a0, `lw` at 0xd99e7fc, `lw` at 0xd99e894.
  28 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x1c, including `lw` at 0xd99e6a8, `lw` at 0xd99e804, `lw` at 0xd99e89c.
  28 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x20, including `lw` at 0xd99e6b0, `lw` at 0xd99e80c, `lw` at 0xd99e8a4.
  24 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x44, including `lw` at 0xd99e6fc, `lw` at 0xd99e848, `lw` at 0xd99ea48.
  The `lw` at 0xd99e788 loads 4 bytes from [[0x1010]+764] +0x0.
  The `lw` at 0xd99e7a0 loads 4 bytes from [0x1010] +0x11bd4.
  18 such `lbu` accesses load 1 byte from a2 (arg2 at entry) +0x20, including `lbu` at 0xd99e8cc, `lbu` at 0xd99eb94, `lbu` at 0xd99ef50.
  18 such `lbu` accesses load 1 byte from a2 (arg2 at entry) +0x23, including `lbu` at 0xd99e91c, `lbu` at 0xd99ec30, `lbu` at 0xd99eff4.
  The `lw` at 0xd99ea50 loads 4 bytes from [a1+68] +0xc.
  2 such `lbu` accesses load 1 byte from [0x1010] +0x11bd0, including `lbu` at 0xd99ea88, `lbu` at 0xd99ee00.
  12 such `lbu` accesses load 1 byte from a2 (arg2 at entry) +0x21, including `lbu` at 0xd99ebec, `lbu` at 0xd99efb0, `lbu` at 0xd99f614.
  11 such `lbu` accesses load 1 byte from a2 (arg2 at entry) +0x22, including `lbu` at 0xd99ec7c, `lbu` at 0xd99f044, `lbu` at 0xd99f500.
  The `lw` at 0xd99ed38 loads 4 bytes from [0x1010] +0x7c34.
  The `sw` at 0xd99ed48 stores 4 bytes to [0x1010] +0x7c34.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7c40, including `sw` at 0xd99ed60, `sw` at 0xd99f0a8.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x9830, including `lw` at 0xd99ed64, `lw` at 0xd99f0ac.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x9830, including `sw` at 0xd99ed74, `sw` at 0xd99f0cc.
  12 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xd99ed7c, `sw` at 0xd99ed84, `sw` at 0xd99ed8c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c40, including `lw` at 0xd99eda0, `lw` at 0xd99f0f0.
  The `lw` at 0xd99eda8 loads 4 bytes from [0x1010] +0x7c3c.
  The `lw` at 0xd99edb0 loads 4 bytes from [0x1010] +0x7c38.
  The `sw` at 0xd99eddc stores 4 bytes to [0x1010] +0x7c3c.
  The `sw` at 0xd99ede4 stores 4 bytes to [0x1010] +0x7c38.
  The `sw` at 0xd99f238 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `sw` at 0xd99f240 stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `sw` at 0xd99f248 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0xd99f250 stores 4 bytes to a0 (arg0 at entry) +0xc.
  The `sw` at 0xd99f258 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0xd99f260 stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `sw` at 0xd99f268 stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `sw` at 0xd99f270 stores 4 bytes to a0 (arg0 at entry) +0x1c.
  The `sw` at 0xd99f278 stores 4 bytes to a0 (arg0 at entry) +0x20.
  The `sb` at 0xd99f400 stores 1 byte to a2 (arg2 at entry) +0x23.
  The `sb` at 0xd99f408 stores 1 byte to a2 (arg2 at entry) +0x22.
  The `jalr` at 0xd99e5fc calls __glOdysseyProgramTexFilter [0xd9b6820] with a0=?, a1=a1 at entry (arg1), a2=?, a3=[[[0x1010]+764]+64], a4=[[[0x1010]+764]+68].
  The `bgezall` at 0xd99e664 calls LoadTextureFilter [0xd99cb60] with a0=a1 at entry (arg1), a1=[a1+16]-1, a2=?, a3=?.
  The `jalr` at 0xd99e6f8 calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0, a5=[a2+24], a6=[a2+20], a7=[a2+16].
  The `jalr` at 0xd99e76c calls __glOdysseyProgramTexFilter [0xd9b6820] with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0xd99e77c calls LoadTextureFilter [0xd99cb60] with a0=a1 at entry (arg1), a1=[a1+16]-1, a2=?, a3=?.
  The `jalr` at 0xd99e844 calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0, a5=[a2+4], a7=[a2].
  The `jalr` at 0xd99e8f0 calls floorf with a0=[a2+32]:1, a1=?, a2=?, a3=?, a4=sp-432.
  The `jalr` at 0xd99e908 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99e938 calls floorf with a0=?, a1=[a2+35]:1, a2=?, a3=?.
  The `jalr` at 0xd99e950 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99e9cc calls __glOdysseyProgramTexFilter [0xd9b6820] with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0xd99ea2c calls LoadTextureFilter [0xd99cb60] with a0=a1 at entry (arg1), a1=[a1+16]-1, a2=?, a3=?.
  The `jalr` at 0xd99ea44 calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0.
  The `jalr` at 0xd99eb00 calls __glOdysseyProgramTexFilter [0xd9b6820] with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0xd99eb10 calls LoadTextureFilter [0xd99cb60] with a0=a1 at entry (arg1), a1=[a1+16]-1, a2=?, a3=?.
  The `jalr` at 0xd99ebc0 calls floorf with a0=[a2], a1=[a2+32]:1, a2=?, a3=?.
  The `jalr` at 0xd99ebd8 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99ec08 calls floorf with a0=?, a1=?, a2=[a2+33]:1, a3=?.
  The `jalr` at 0xd99ec1c calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99ec4c calls floorf with a0=?, a1=?, a2=?, a3=[a2+35]:1.
  The `jalr` at 0xd99ec68 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99ec98 calls floorf with a0=a3 at entry (arg3), a1=?, a2=?, a3=?, a4=[a2+34]:1.
  The `jalr` at 0xd99ecb0 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99ece0 calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a3 at entry (arg3), a1=a4 at entry (arg4), a2=sp-432, a3=0x0.
  The `jalr` at 0xd99ee70 calls __glOdysseyProgramTexFilter [0xd9b6820] with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0xd99eed0 calls LoadTextureFilter [0xd99cb60] with a0=a1 at entry (arg1), a1=[a1+16]-1, a2=[[0x1010]+38564], a3=((0x40000 | [[0x1010]+31956]) | 0x4000), a4=[[0x1010]+31956].
  The `jalr` at 0xd99ef84 calls floorf with a0=?, a1=sp-432, a2=?, a3=?, a4=sp-432, a6=[a2+32], a7=[a2+28].
  The `jalr` at 0xd99ef9c calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99efd0 calls ceilf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99efe4 calls ceilf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f014 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f030 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f064 calls ceilf with a0=[a2+34]:1, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f07c calls ceilf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f09c calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a3 at entry (arg3), a1=a4 at entry (arg4), a2=sp-432, a3=0x0.
  The `jalr` at 0xd99f160 calls __glOdysseyProgramTexFilter [0xd9b6820] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f198 calls ceilf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f1c4 calls ceilf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f1e8 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f200 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f32c calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a3 at entry (arg3), a1=a4 at entry (arg4), a2=sp-432, a3=0x0, a4=sp-432.
  The `jalr` at 0xd99f484 calls floorf with a0=?, a1=[[0x1010]+72660], a2=[a2+32]:1, a3=[a2+32]:1, a4=sp-432, a5=[a2+32].
  The `jalr` at 0xd99f4a4 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f4b8 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f4cc calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f4e8 calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0.
  The `jalr` at 0xd99f58c calls floorf with a0=[a2+32], a1=[a2+28], a2=[a2+24], a3=[a2+20], a4=sp-432, a5=[a2+16].
  The `jalr` at 0xd99f5b0 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f5cc calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f5e4 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f604 calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0.
  The `jalr` at 0xd99f6ac calls floorf with a0=[a2+16], a1=[a2+12], a2=[a2+8], a3=[a2+4], a4=sp-432, a5=[a2].
  The `jalr` at 0xd99f6d4 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f6ec calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f708 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f724 calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0.
  The `jalr` at 0xd99f7d0 calls floorf with a0=?, a1=?, a2=[a2+33]:1, a3=?, a4=sp-432, a7=[a2+34]:1.
  The `jalr` at 0xd99f7fc calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f81c calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f83c calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f85c calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0.
  The `jalr` at 0xd99f8ec calls floorf with a0=[a2+32], a1=[a2+28], a2=[a2+24], a3=[a2+20], a4=sp-432, a5=[a2+16].
  The `jalr` at 0xd99f904 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f928 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f938 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f958 calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0.
  The `jalr` at 0xd99f9ec calls floorf with a0=[a2+16], a1=[a2+12], a2=[a2+8], a3=[a2+4], a4=sp-432, a5=[a2].
  The `jalr` at 0xd99fa08 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99fa3c calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99fa4c calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99fa6c calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0.
  The `jalr` at 0xd99fb04 calls floorf with a0=?, a1=?, a2=?, a3=?, a4=sp-432, a7=[a2+35]:1.
  The `jalr` at 0xd99fb28 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99fb38 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99fb54 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99fb70 calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0.
  The `jalr` at 0xd99fc0c calls floorf with a0=[a2+34]:1, a1=[a2+32], a2=[a2+28], a3=[a2+24], a4=sp-432, a5=[a2+20].
  The `jalr` at 0xd99fc28 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99fc40 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99fc58 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99fc80 calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0.
  The `jalr` at 0xd99fd1c calls floorf with a0=[a2+28], a1=[a2+24], a2=[a2+20], a3=[a2+16], a4=sp-432, a5=[a2+12]; fp f13=0x3f800000.
  The `jalr` at 0xd99fd38 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99fd54 calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0.
  The `jalr` at 0xd99fe00 calls floorf with a0=[a2+8], a1=[a2+4], a2=[a2+32]:1, a3=[a2], a4=sp-432; fp f14=0xffffffffbf800000, f15=[a2+4].
  The `jalr` at 0xd99fe24 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99fe44 calls floorf with a0=?, a1=?, a2=?, a3=?, a4=[a2+35]:1.
  The `jalr` at 0xd99fe5c calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99fe7c calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0.
  The `jalr` at 0xd99ff28 calls floorf with a0=?, a1=?, a2=[a2+33]:1, a3=?, a4=sp-432, a5=[a2+35]:1.
  The `jalr` at 0xd99ff4c calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99ff68 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99ff7c calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99ffa0 calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0.
  The `jalr` at 0xd9a004c calls floorf with a0=[a2+34]:1, a1=[a2+32], a2=[a2+33]:1, a3=[a2+28], a4=sp-432, a5=[a2+24], a7=[a2+20].
  The `jalr` at 0xd9a007c calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a009c calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a00b4 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a00d8 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a00f0 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a0110 calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0.
  The `jalr` at 0xd9a01a4 calls floorf with a0=[a2+24], a1=[a2+20], a2=[a2+16], a3=[a2+12], a4=sp-432, a5=[a2+8]; fp f13=[a2+4], f14=[a2+8], f15=0x3f800000.
  The `jalr` at 0xd9a01cc calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a01dc calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a01fc calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0.
  The `jalr` at 0xd9a0298 calls floorf with a0=[a2+8], a1=[a2+4], a2=[a2], a3=?, a4=sp-432; fp f15=0xffffffffbf800000, f16=[a2+4].
  The `jalr` at 0xd9a02bc calls floorf with a0=?, a1=?, a2=?, a3=[a2+32]:1.
  The `jalr` at 0xd9a02d4 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a0304 calls floorf with a0=?, a1=?, a2=?, a3=?, a4=[a2+35]:1.
  The `jalr` at 0xd9a0314 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a0334 calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0.
  The `jalr` at 0xd9a03cc calls floorf with a0=?, a1=?, a2=?, a3=?, a4=sp-432, a5=[a2+35]:1; fp f13=[a2], f14=[a2+8], f15=[a2+12], f16=0x3f800000.
  The `jalr` at 0xd9a03f4 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a0404 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a0428 calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0.
  The `jalr` at 0xd9a04cc calls floorf with a0=[a2+34]:1, a1=[a2+32], a2=[a2+28], a3=[a2+24], a4=sp-432, a5=[a2+20].
  The `jalr` at 0xd9a0500 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a0510 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a0538 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a0550 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a0570 calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0.
  The `jalr` at 0xd9a0614 calls __glOdysseyProgramTexFilter [0xd9b6820] with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0xd9a0674 calls LoadTextureFilter [0xd99cb60] with a0=a1 at entry (arg1), a1=[a1+16]-1, a2=?, a3=?.
  The `jalr` at 0xd9a06ec calls floorf with a0=[a2+28], a1=[a2+24], a2=[a2+20], a3=[a2+16], a4=sp-432, a5=[a2+12].
  The `jalr` at 0xd9a0718 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a0738 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a0758 calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0.
  The `jalr` at 0xd9a07c4 calls floorf with a0=[a2+16], a1=[a2+12], a2=[a2+8], a3=[a2+4], a4=sp-432, a5=[a2].
  The `jalr` at 0xd9a07f8 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a081c calls floorf with a0=?, a1=?, a2=?, a3=?, a6=[a2+32]:1.
  The `jalr` at 0xd9a0834 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a0860 calls floorf with a0=?, a1=?, a2=?, a3=?, a7=[a2+35]:1.
  The `jalr` at 0xd9a0888 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a08a8 calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0.
  The `jalr` at 0xd9a0918 calls floorf with a0=[a2], a1=?, a2=?, a3=?, a4=sp-432.
  The `jalr` at 0xd9a0950 calls floorf with a0=?, a1=[a2+32]:1, a2=?, a3=?.
  The `jalr` at 0xd9a0980 calls floorf with a0=?, a1=?, a2=[a2+33]:1, a3=?.
  The `jalr` at 0xd9a09a4 calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0.
  The `jalr` at 0xd9a0a14 calls floorf with a0=?, a1=?, a2=?, a3=[a2+34]:1, a4=sp-432, a5=[a2+32].
  The `jalr` at 0xd9a0a44 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a0a60 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a0a74 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a0a9c calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a0acc calls floorf with a0=[a2+33]:1, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a0af0 calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0.
  The `beq` branch at 0xd99e798 targets 0xd99f400, is taken when t1(=[[[0x1010]+764]]) == t2(=0x8010), and falls through when t1(=[[[0x1010]+764]]) != t2(=0x8010).
  The `beq` branch at 0xd99e7a8 targets 0xd99e858, is taken when a1(=[[0x1010]+72660]) == t2(=0x8150), and falls through when a1(=[[0x1010]+72660]) != t2(=0x8150).
  The `beq` branch at 0xd99e7b4 targets 0xd99f40c, is taken when a1(=[[0x1010]+72660]) == t3(=0x8152), and falls through when a1(=[[0x1010]+72660]) != t3(=0x8152).
  The `beq` branch at 0xd99e7bc targets 0xd9a059c, is taken when a1(=[[0x1010]+72660]) == t8(=0x8151), and falls through when a1(=[[0x1010]+72660]) != t8(=0x8151).
  The `beq` branch at 0xd99e7c4 targets 0xd99fc94, is taken when a1(=[[0x1010]+72660]) == t9(=0x8153), and falls through when a1(=[[0x1010]+72660]) != t9(=0x8153).
  The `beq` branch at 0xd99e850 targets 0xd99ea4c and is always taken.
  The `beq` branch at 0xd99e8d8 targets 0xd99e91c, is taken when a0(=[a2+32]:1) == 0, and falls through when a0(=[a2+32]:1) != 0.
  The `beq` branch at 0xd99e920 targets 0xd99e960, is taken when a1(=[a2+35]:1) == 0, and falls through when a1(=[a2+35]:1) != 0.
  The `beq` branch at 0xd99ea58 targets 0xd99ea98, is taken when a1(=[[a1+68]+12]) == v0(=0x1403), and falls through when a1(=[[a1+68]+12]) != v0(=0x1403).
  The `beq` branch at 0xd99ea64 targets 0xd99ea98, is taken when a1(=[[a1+68]+12]) == a2(=0x1402), and falls through when a1(=[[a1+68]+12]) != a2(=0x1402).
  The `beq` branch at 0xd99ea70 targets 0xd99ea98, is taken when a1(=[[a1+68]+12]) == a3(=0x1405), and falls through when a1(=[[a1+68]+12]) != a3(=0x1405).
  The `beq` branch at 0xd99ea7c targets 0xd99ea94, is taken when a1(=[[a1+68]+12]) == a4(=0x1404), and falls through when a1(=[[a1+68]+12]) != a4(=0x1404).
  The `beq` branch at 0xd99ea8c targets 0xd99ea98 and is always taken.
  The `beq` branch at 0xd99eb1c targets 0xd99f388, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0xd99eba8 targets 0xd99ebec, is taken when a1(=[a2+32]:1) == 0, and falls through when a1(=[a2+32]:1) != 0.
  The `beq` branch at 0xd99ebf0 targets 0xd99ec30, is taken when a2(=[a2+33]:1) == 0, and falls through when a2(=[a2+33]:1) != 0.
  The `beq` branch at 0xd99ec34 targets 0xd99ec7c, is taken when a3(=[a2+35]:1) == 0, and falls through when a3(=[a2+35]:1) != 0.
  The `beq` branch at 0xd99ec80 targets 0xd99ecc4, is taken when a4(=[a2+34]:1) == 0, and falls through when a4(=[a2+34]:1) != 0.
  The `beq` branch at 0xd99ed68 targets 0xd99ed98, is taken when a5(=[[0x1010]+38960]) == 0, and falls through when a5(=[[0x1010]+38960]) != 0.
  The `beq` branch at 0xd99eedc targets 0xd99f2b4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xd99ef64 targets 0xd99efb0, is taken when at(=[a2+32]:1) == 0, and falls through when at(=[a2+32]:1) != 0.
  The `beq` branch at 0xd99efb4 targets 0xd99eff4, is taken when v0(=[a2+33]:1) == 0, and falls through when v0(=[a2+33]:1) != 0.
  The `beq` branch at 0xd99eff8 targets 0xd99f044, is taken when v1(=[a2+35]:1) == 0, and falls through when v1(=[a2+35]:1) != 0.
  The `beq` branch at 0xd99f048 targets 0xd99f090, is taken when a0(=[a2+34]:1) == 0, and falls through when a0(=[a2+34]:1) != 0.
  The `beq` branch at 0xd99f0c0 targets 0xd99f0ec, is taken when a2(=[[0x1010]+38960]) == 0, and falls through when a2(=[[0x1010]+38960]) != 0.
  The `beq` branch at 0xd99f380 targets 0xd99f0a4 and is always taken.
  The `beq` branch at 0xd99f3f8 targets 0xd99ecc0 and is always taken.
  The `beq` branch at 0xd99f404 targets 0xd99e7a0 and is always taken.
  The `beq` branch at 0xd99f410 targets 0xd9a0584, is taken when a3(=[a2+32]:1) == 0, and falls through when a3(=[a2+32]:1) != 0.
  The `beq` branch at 0xd99f41c targets 0xd9a0b20, is taken when a4(=[a2+35]:1) == 0, and falls through when a4(=[a2+35]:1) != 0.
  The `beq` branch at 0xd99f4f8 targets 0xd9a0594, is taken when a2(=[a2+32]:1) == 0, and falls through when a2(=[a2+32]:1) != 0.
  The `beq` branch at 0xd99f504 targets 0xd9a0b28, is taken when v1(=[a2+34]:1) == 0, and falls through when v1(=[a2+34]:1) != 0.
  The `beq` branch at 0xd99f618 targets 0xd9a0b04, is taken when a2(=[a2+33]:1) == 0, and falls through when a2(=[a2+33]:1) != 0.
  The `beq` branch at 0xd99f624 targets 0xd9a0b30, is taken when t9(=[a2+35]:1) == 0, and falls through when t9(=[a2+35]:1) != 0.
  The `beq` branch at 0xd99f738 targets 0xd99f864, is taken when a2(=[a2+33]:1) == 0, and falls through when a2(=[a2+33]:1) != 0.
  The `beq` branch at 0xd99f744 targets 0xd99f864, is taken when a7(=[a2+34]:1) == 0, and falls through when a7(=[a2+34]:1) != 0.
  The `beq` branch at 0xd99f868 targets 0xd99f960, is taken when v1(=[a2+32]:1) == 0, and falls through when v1(=[a2+32]:1) != 0.
  The `beq` branch at 0xd99f910 targets 0xd99f948, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0xd99f964 targets 0xd99fa74, is taken when t9(=[a2+33]:1) == 0, and falls through when t9(=[a2+33]:1) != 0.
  The `beq` branch at 0xd99fa24 targets 0xd99fa5c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xd99fa78 targets 0xd99fb78, is taken when a7(=[a2+35]:1) == 0, and falls through when a7(=[a2+35]:1) != 0.
  The `beq` branch at 0xd99fb10 targets 0xd99fb4c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xd99fb7c targets 0xd99fc8c, is taken when a0(=[a2+34]:1) == 0, and falls through when a0(=[a2+34]:1) != 0.
  The `beq` branch at 0xd99fc1c targets 0xd99fc54, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0xd99fc8c targets 0xd99e860 and is always taken.
  The `beq` branch at 0xd99fc98 targets 0xd9a0b0c, is taken when at(=[a2+32]:1) == 0, and falls through when at(=[a2+32]:1) != 0.
  The `beq` branch at 0xd99fca4 targets 0xd9a0b10, is taken when v0(=[a2+35]:1) == 0, and falls through when v0(=[a2+35]:1) != 0.
  The `beq` branch at 0xd99fd60 targets 0xd9a0b18, is taken when a2(=[a2+32]:1) == 0, and falls through when a2(=[a2+32]:1) != 0.
  The `beq` branch at 0xd99fd6c targets 0xd99fe84, is taken when t3(=[a2+34]:1) == 0, and falls through when t3(=[a2+34]:1) != 0.
  The `beq` branch at 0xd99fe3c targets 0xd99fe6c, is taken when a4(=[a2+35]:1) == 0, and falls through when a4(=[a2+35]:1) != 0.
  The `beq` branch at 0xd99fe88 targets 0xd9a0118, is taken when a2(=[a2+33]:1) == 0, and falls through when a2(=[a2+33]:1) != 0.
  The `beq` branch at 0xd99fe94 targets 0xd99ffac, is taken when a5(=[a2+35]:1) == 0, and falls through when a5(=[a2+35]:1) != 0.
  The `beq` branch at 0xd99ff5c targets 0xd99ff94, is taken when v1(=[a2+32]:1) == 0, and falls through when v1(=[a2+32]:1) != 0.
  The `beq` branch at 0xd99ffac targets 0xd9a0118, is taken when a2(=[a2+33]:1) == 0, and falls through when a2(=[a2+33]:1) != 0.
  The `beq` branch at 0xd99ffb8 targets 0xd9a0118, is taken when a0(=[a2+34]:1) == 0, and falls through when a0(=[a2+34]:1) != 0.
  The `beq` branch at 0xd9a0094 targets 0xd9a00c8, is taken when t9(=[a2+32]:1) == 0, and falls through when t9(=[a2+32]:1) != 0.
  The `beq` branch at 0xd9a00cc targets 0xd9a0104, is taken when ra(=[a2+35]:1) == 0, and falls through when ra(=[a2+35]:1) != 0.
  The `beq` branch at 0xd9a011c targets 0xd9a0204, is taken when at(=[a2+32]:1) == 0, and falls through when at(=[a2+32]:1) != 0.
  The `beq` branch at 0xd9a01b4 targets 0xd9a01f0, is taken when t2(=[a2+35]:1) == 0, and falls through when t2(=[a2+35]:1) != 0.
  The `beq` branch at 0xd9a0208 targets 0xd9a033c, is taken when t3(=[a2+33]:1) == 0, and falls through when t3(=[a2+33]:1) != 0.
  The `beq` branch at 0xd9a02b0 targets 0xd9a02e8, is taken when a3(=[a2+32]:1) == 0, and falls through when a3(=[a2+32]:1) != 0.
  The `beq` branch at 0xd9a02ec targets 0xd9a0328, is taken when a4(=[a2+35]:1) == 0, and falls through when a4(=[a2+35]:1) != 0.
  The `beq` branch at 0xd9a0340 targets 0xd9a0430, is taken when a5(=[a2+35]:1) == 0, and falls through when a5(=[a2+35]:1) != 0.
  The `beq` branch at 0xd9a03dc targets 0xd9a041c, is taken when v1(=[a2+32]:1) == 0, and falls through when v1(=[a2+32]:1) != 0.
  The `beq` branch at 0xd9a0434 targets 0xd9a057c, is taken when a0(=[a2+34]:1) == 0, and falls through when a0(=[a2+34]:1) != 0.
  The `beq` branch at 0xd9a04e4 targets 0xd9a0528, is taken when t9(=[a2+32]:1) == 0, and falls through when t9(=[a2+32]:1) != 0.
  The `beq` branch at 0xd9a052c targets 0xd9a0564, is taken when ra(=[a2+35]:1) == 0, and falls through when ra(=[a2+35]:1) != 0.
  The `beq` branch at 0xd9a057c targets 0xd99e860 and is always taken.
  The `bne` branch at 0xd9a058c targets 0xd99f500, is taken when a2(=[a2+32]:1) != 0, and falls through when a2(=[a2+32]:1) == 0.
  The `beq` branch at 0xd9a0594 targets 0xd99f614 and is always taken.
  The `beq` branch at 0xd9a0680 targets 0xd9a0760, is taken when v0(=[a2+32]:1) == 0, and falls through when v0(=[a2+32]:1) != 0.
  The `beq` branch at 0xd9a0710 targets 0xd9a0728, is taken when t3(=[a2+35]:1) == 0, and falls through when t3(=[a2+35]:1) != 0.
  The `beq` branch at 0xd9a072c targets 0xd9a074c, is taken when t8(=[a2+34]:1) == 0, and falls through when t8(=[a2+34]:1) != 0.
  The `beq` branch at 0xd9a0764 targets 0xd9a08b0, is taken when t9(=[a2+33]:1) == 0, and falls through when t9(=[a2+33]:1) != 0.
  The `beq` branch at 0xd9a0810 targets 0xd9a0848, is taken when a6(=[a2+32]:1) == 0, and falls through when a6(=[a2+32]:1) != 0.
  The `beq` branch at 0xd9a084c targets 0xd9a0870, is taken when a7(=[a2+35]:1) == 0, and falls through when a7(=[a2+35]:1) != 0.
  The `beq` branch at 0xd9a0874 targets 0xd9a089c, is taken when t0(=[a2+34]:1) == 0, and falls through when t0(=[a2+34]:1) != 0.
  The `beq` branch at 0xd9a08b4 targets 0xd9a09ac, is taken when t1(=[a2+35]:1) == 0, and falls through when t1(=[a2+35]:1) != 0.
  The `beq` branch at 0xd9a093c targets 0xd9a0968, is taken when a1(=[a2+32]:1) == 0, and falls through when a1(=[a2+32]:1) != 0.
  The `beq` branch at 0xd9a096c targets 0xd9a0998, is taken when a2(=[a2+33]:1) == 0, and falls through when a2(=[a2+33]:1) != 0.
  The `beq` branch at 0xd9a09b0 targets 0xd9a0af8, is taken when a3(=[a2+34]:1) == 0, and falls through when a3(=[a2+34]:1) != 0.
  The `beq` branch at 0xd9a0a58 targets 0xd9a0a84, is taken when v0(=[a2+35]:1) == 0, and falls through when v0(=[a2+35]:1) != 0.
  The `beq` branch at 0xd9a0a88 targets 0xd9a0ab4, is taken when v1(=[a2+32]:1) == 0, and falls through when v1(=[a2+32]:1) != 0.
  The `beq` branch at 0xd9a0ab8 targets 0xd9a0ae4, is taken when a0(=[a2+33]:1) == 0, and falls through when a0(=[a2+33]:1) != 0.
  The `beq` branch at 0xd9a0afc targets 0xd99e860 and is always taken.
  The `beq` branch at 0xd9a0b04 targets 0xd99f738 and is always taken.
  The `bne` branch at 0xd9a0b10 targets 0xd99fd68, is taken when a2(=[a2+32]:1) != 0, and falls through when a2(=[a2+32]:1) == 0.
  The `beq` branch at 0xd9a0b18 targets 0xd99fe88 and is always taken.
  The `beq` branch at 0xd9a0b20 targets 0xd9a058c and is always taken.
  The `beq` branch at 0xd9a0b28 targets 0xd99f614 and is always taken.
  The `beq` branch at 0xd9a0b30 targets 0xd99f738 and is always taken.
  The return at 0xd99f2ac has v0 = ?.

- `__glOdyim_Begin` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9c84e0 (n32).
  Inferred: the word at abs 0x1010 is a context pointer T, because the callee note for `__glSetError` says that routine takes its context from the process-page word at address 4112, which is 0x1010; the routine also reads the word at abs 0x1018 at entry (`lw` at 0xd9c84e4) as a state word S.
  It forms an effective state from S and the word at T+0x16964 (`lw` at 0xd9c84f8): when that word is nonzero and S is zero the state becomes 2 (the two conditional moves between 0xd9c84f8 and 0xd9c8510), otherwise it is S.
  In effective state 2 (`beq` at 0xd9c8528) it stores byte 1 at T+0x16974 (`sb` at 0xd9c8598), calls through the word at +0x2e40 of T (`jalr` at 0xd9c85a0), clears abs 0x1018 (`sw` at 0xd9c85ac), calls through the word at +0x1c of the object at T+0x17f4 with arg0 (`jalr` at 0xd9c85b8), and returns with that call's value.
  A state of neither 0 nor 2 calls `__glSetError` with 0x502 (`jalr` at 0xd9c8534) and returns its value.
  With state 0 and arg0 at 0xa or above (`beq` at 0xd9c855c) calls `__glSetError` with 0x500 (`jalr` at 0xd9c85d8) and returns its value.
  State 0 with arg0 below 0xa stores byte 1 at T+0x19dce (`sb` at 0xd9c85cc) only if arg0 is 2 (`beq` at 0xd9c8568), then writes 0x14400 and arg0 to abs 0x10000 (`sw` at 0xd9c8574 and 0xd9c8578) and 1 to abs 0x1018 (`sw` at 0xd9c8580).
  It returns (`jr ra` at 0xd9c8588) with v0 still the word loaded from T+0x16964, and the delay slot stores $f0, set to zero before the return, to T+0x19d98 (`swc1` at 0xd9c858c).
  Unknown: what the two indirect calls through T+0x2e40 and T+0x17f4 reach; the target routines would settle it.
  Evidence grade: inferred.

- `__glOdylc_TexCoord1d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9cc350 (n32).
  Queues a two-word record, a constant header and the double in `$f12` narrowed to single precision,
  at the pointer held in the word at absolute 0x1030, calling `__glSPDlistSpace` first when the word
  at 0x1028 is too small. Before any test, the pad is zero. If the word at 0x1034 is nonzero (`beq`
  at 0xd9cc37c falls through), a signed 0x1028 word of 2 or more takes the `beq` at 0xd9cc388 to
  0xd9cc418 and then the record block at 0xd9cc3cc, skipping the call. If the 0x1034 word is zero,
  the pad is 1 when bit 0x4 of the pointer loaded at 0xd9cc36c is set, and the `beq` at 0xd9cc430
  bypasses the call once the 0x1028 word reaches 2 plus the pad. On the skip path v0 is the 0x12c240
  left by the global-pointer arithmetic at 0xd9cc370. The call at 0xd9cc3a0 runs with a0 zero, a2
  the word at 0x1028 and a1 and a3 as at entry, and the double is saved in the frame and reloaded at
  0xd9cc3b0. The `beq` at 0xd9cc3b4 sends a zero return to 0xd9cc444, which undoes the pointer move
  with the `sw` at 0xd9cc448 (old pointer less 4 to 0x1030), adds 1 to the 0x1028 word with the `sw`
  at 0xd9cc45c, and returns the callee's value. A nonzero return replaces the space value, the
  pointer is read again at 0xd9cc3bc, and bit 0x4 of it sets the pad to 1. The record lands at the
  pointer plus 4 bytes per pad word, held in `t0`. The header 0xffffffffc380c41f goes to +0x0 (`sw`
  at 0xd9cc3ec) and the narrowed double (converted into `$f0` ahead of the header store) goes to
  +0x4 (`swc1` at 0xd9cc3f0). The `sw` at 0xd9cc3f8 stores the record address plus 8 to 0x1030, the
  `sw` at 0xd9cc404 stores the space value (the word at 0x1028, or the callee's return) less the pad
  less 2 to 0x1028, and the `sw` at 0xd9cc414 in the return's delay slot writes the word at 0x1034
  plus 2.
  Inferred: 0x1028 is the free-word count of a display-list buffer and 0x1030 its fill pointer,
  going by the 8 step of the pointer, the the pad plus 2 decrease of the count and the
  `__glSPDlistSpace` call that follows a low count.
  Unknown: the encoding of the opening word 0xffffffffc380c41f; a datasheet table of command words
  for the board would settle it.
  Evidence grade: inferred.

- `__glOdylc_TexCoord1dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9cc470 (n32).
  Writes a header word and a single-precision copy of the double behind a0 into the buffer whose
  write pointer is at absolute 0x1030, first calling `__glSPDlistSpace` when the word at 0x1028
  shows too little room. No pad is applied until a test sets one. A nonzero word at 0x1034 (`beq` at
  0xd9cc498 not taken) makes the routine test the 0x1028 word against 2 only; at 2 or above, the
  `beq` at 0xd9cc4a4 reaches 0xd9cc538 and then the record block at 0xd9cc4e8 with no call. A zero
  0x1034 word makes the pad depend on bit 0x4 of the pointer from 0xd9cc48c; the `beq` at 0xd9cc550
  then avoids the call if the 0x1028 word is not below 2 plus the pad. With no call made, v0 stays
  0x12c120, set by the global-pointer arithmetic at 0xd9cc490. At 0xd9cc4bc the call is made with a0
  cleared; a0 comes back from the frame at 0xd9cc4cc. A callee value of zero (`beq` at 0xd9cc4d0)
  leads to 0xd9cc564, where 0x1030 gets the old pointer less 4 (`sw` at 0xd9cc568), 0x1028 gets one
  more (`sw` at 0xd9cc57c), and the callee's value comes back in v0. With a nonzero return, the
  callee's value is the new space, and the pointer reloaded at 0xd9cc4d8 gives a pad of 1 if its bit
  0x4 is set. Register `t1` ends up as the start of the record, the pointer offset by the pad times
  4. Header 0xffffffffc380c41f is written first (`sw` at 0xd9cc4f4); then the double is read from a0
  by the `ldc1` at 0xd9cc4f8, narrowed, and written at +0x4 by the `swc1` at 0xd9cc510. The `sw` at
  0xd9cc518 writes the record address plus 8 to 0x1030; the `sw` at 0xd9cc524 writes the space value
  minus the pad minus 2 to 0x1028; the `sw` at 0xd9cc534, in the return's delay slot, writes the
  0x1034 word plus 2.
  Inferred: the word at 0x1030 marks where the next record goes in a display-list buffer and the
  word at 0x1028 how many words remain, because the first moves 8, the second drops the pad plus 2,
  and `__glSPDlistSpace` runs when space is short.
  Unknown: the field boundaries within the record header 0xffffffffc380c41f; a command-word table in
  the board datasheet would settle it.
  Evidence grade: inferred.

- `__glOdylc_TexCoord1fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9cc6b0 (n32).
  Queues a two-word record, a constant header and the single-precision float that a0 points to, at
  the pointer held in the word at absolute 0x1030, calling `__glSPDlistSpace` first when the word at
  0x1028 is too small. Padding is 0 on entry. When the word at 0x1034 is nonzero, as the `beq` at
  0xd9cc6d8 falling through shows, the call is bypassed if the signed 0x1028 word is at least 2: the
  `beq` at 0xd9cc6e4 goes to 0xd9cc774, then to the record block at 0xd9cc728. When the word at
  0x1034 is zero, the pointer loaded at 0xd9cc6cc sets the pad to 1 through its bit 0x4, and the
  `beq` at 0xd9cc78c jumps past the call if the 0x1028 word is at least 2 plus that pad. Skipping
  the call means v0 still carries 0x12bee0 from 0xd9cc6d0, part of the global-pointer arithmetic.
  The call at 0xd9cc6fc passes zero in a0, and the frame copy of a0 is reloaded at 0xd9cc70c. Zero
  from the callee (`beq` at 0xd9cc710) goes to 0xd9cc7a0: the pointer at 0x1030 is rewritten as the
  old value minus 4 by the `sw` at 0xd9cc7a4, the 0x1028 word grows by 1 through the `sw` at
  0xd9cc7b8, and v0 returns the callee's value. When the callee returns nonzero, that value serves
  as the space, the pointer is reloaded at 0xd9cc718, and a set bit 0x4 makes the pad 1. The pad
  moves the record start up by four bytes per pad word; the result is in `t1`. The header
  0xffffffffc380c41f goes to +0x0 (`sw` at 0xd9cc740), and the float read by the `lwc1` at 0xd9cc744
  through a0 is copied unchanged to +0x4 (`swc1` at 0xd9cc74c). Three stores finish the routine: the
  `sw` at 0xd9cc754 (record address plus 8 to 0x1030), the `sw` at 0xd9cc760 (space less pad less 2
  to 0x1028) and the `sw` at 0xd9cc770 in the return's delay slot (0x1034 word plus 2).
  Inferred: 0x1030 and 0x1028 form a pointer and remaining-space pair for a display list: the
  pointer gains 8, the space loses the pad plus 2, and the space helper `__glSPDlistSpace` is called
  when the space falls short.
  Unknown: how 0xffffffffc380c41f is composed from fields; the datasheet section on the board's
  command words would settle it.
  Evidence grade: inferred.

- `__glOdylc_TexCoord1i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9cc7d0 (n32).
  Queues a two-word record, a constant header and the integer argument in a0 stored as it is, at the
  pointer held in the word at absolute 0x1030, calling `__glSPDlistSpace` first when the word at
  0x1028 is too small. The pad word count begins at zero. Taking the nonzero-0x1034 side (the `beq`
  at 0xd9cc7f8 not taken), the routine bypasses the call when the 0x1028 word is signed 2 or more,
  through the `beq` at 0xd9cc804, 0xd9cc890 and the record block at 0xd9cc848. With 0x1034 zero, bit
  0x4 of the pointer read at 0xd9cc7ec gives a pad of 1 when set; the `beq` at 0xd9cc8a8 skips the
  call for a 0x1028 word of 2 plus the pad or more. v0 keeps the value 0x12bdc0 from 0xd9cc7f0
  (global-pointer arithmetic) whenever the call is bypassed. The call at 0xd9cc81c runs with a0
  zeroed, and a0 is reloaded from the frame afterwards (0xd9cc82c). Should `__glSPDlistSpace` return
  zero (`beq` at 0xd9cc830), 0xd9cc8bc stores the old pointer less 4 at 0x1030 (`sw` at 0xd9cc8c0)
  and one more than before at 0x1028 (`sw` at 0xd9cc8d4), then returns the callee's value. Any other
  return value becomes the space, and the pointer re-read at 0xd9cc838 sets the pad to 1 when its
  bit 0x4 is set. The append address is kept in `t1` and equals the pointer plus the pad count times
  4. The header 0xffffffffc380c41e (built from 0xc380 and 0xc41e) goes to +0x0 (`sw` at 0xd9cc864)
  and a0 goes to +0x4 (`sw` at 0xd9cc868). 0x1030 gets the record address plus 8 from the `sw` at
  0xd9cc870, 0x1028 gets the space minus the pad minus 2 from the `sw` at 0xd9cc87c, and the delay-
  slot `sw` at 0xd9cc88c writes the 0x1034 word plus 2.
  Inferred: the pointer-and-count pair at 0x1030 and 0x1028 describes a display-list buffer; a
  record bumps the pointer by 8 and cuts the count by the pad plus 2, and `__glSPDlistSpace` is the
  fallback when the count is short.
  Unknown: the decoding of the header constant 0xffffffffc380c41e; a datasheet entry listing the
  board's command words would settle it.
  Evidence grade: inferred.

- `__glOdylc_TexCoord1sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9ccb30 (n32).
  Queues a signed halfword from the address in a0 into the buffer whose cursor is the absolute word 0x1030. The
  `lh` at 0xd9ccbc8 loads it and the `sw` at 0xd9ccbcc stores it as a word; the `sw` at 0xd9ccbc4 puts the
  header constant 0xffffffffc380c41e (low 32 bits) in the word before it. The entry address is the cursor plus
  4 times a pad flag held in s0, formed by the `sll` at 0xd9ccbac and a following add.
  The flag starts at zero. If the word at 0x1034 is zero (`beqz` at 0xd9ccb58), it becomes 1 when bit 0x4 of the
  cursor is set, and the `beqz` at 0xd9ccc0c skips the refill when the signed 0x1028 word is at least the flag
  plus 2. If 0x1034 is nonzero the flag stays zero and the `beqz` at 0xd9ccb64 skips the refill when the
  0x1028 word is at least 2.
  Otherwise `__glSPDlistSpace` is called at 0xd9ccb7c with a0 zero and a3 holding the 0x1028 word. A zero
  return (`beqz` at 0xd9ccb90) drops the entry: 0x1030 is set to the entry-time cursor minus 4 (`sw` at
  0xd9ccc24) and 0x1028 to its reread word plus 1 (`sw` at 0xd9ccc38). A nonzero return replaces the working
  0x1028 value (delay slot at 0xd9ccb94), the cursor is reloaded at 0xd9ccb98, and the flag becomes 1 if that
  cursor has bit 0x4 set, otherwise it keeps its earlier value.
  After the entry is written: 0x1030 takes the entry address plus 8 (`sw` at 0xd9ccbd4), 0x1028 takes the
  working value less the flag less 2 (`sw` at 0xd9ccbe0), and 0x1034 takes its word plus 2 (`sw` at 0xd9ccbf0).
  Unlike the vpro-patch build, this routine does not put the new 0x1034 value in v0.
  Inferred: cursor up 8 and counter down 2 plus pad is the pattern of a buffer write pointer with a free-space count; the bundle names neither word.
  Unknown: the return of `__glSPDlistSpace` in this build; a committed note exists only for another build.
  Evidence grade: inferred.

- `__glOdylc_TexCoord2i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9cd110 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xd9cd110-0xd9cd234 (292 bytes).
  It occupies 292 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xd9cd110, `lw` at 0xd9cd218.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xd9cd11c, `lw` at 0xd9cd1c0.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xd9cd12c, `lw` at 0xd9cd180.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd9cd1ac, `sw` at 0xd9cd1b0, `sw` at 0xd9cd1b4.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xd9cd1bc, `sw` at 0xd9cd210.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xd9cd1c8, `sw` at 0xd9cd224.
  The `sw` at 0xd9cd1d8 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xd9cd160 calls __glSPDlistSpace [0xd9fb4b0] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[0x1028].
  The `beq` branch at 0xd9cd138 targets 0xd9cd1e4, is taken when at(=[0x1034]) == 0, and falls through when at(=[0x1034]) != 0.
  The `beq` branch at 0xd9cd144 targets 0xd9cd1dc, is taken when a4(=[0x1028]) >= 0x3 (signed), and falls through when a4(=[0x1028]) < 0x3 (signed).
  The `beq` branch at 0xd9cd178 targets 0xd9cd20c, is taken when v0(=ret(__glSPDlistSpace)) == 0, and falls through when v0(=ret(__glSPDlistSpace)) != 0.
  The `beq` branch at 0xd9cd1dc targets 0xd9cd190 and is always taken.
  The `beq` branch at 0xd9cd1f4 targets 0xd9cd18c, is taken when a4(=[0x1028]) >= a7(?) (signed), and falls through when a4(=[0x1028]) < a7(?) (signed).
  The `beq` branch at 0xd9cd204 targets 0xd9cd15c and is always taken.
  The return at 0xd9cd1d4 has v0 = one of ?, 0x12b480.
  The return at 0xd9cd22c has v0 = ret(__glSPDlistSpace).

- `DownsampleTextureThruHW` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9d11a0.
  Grade: inferred.
  Appears to downsample a texture in hardware and set its format. It calls __glOdysseyImageLogBase2 at 0xd9c1e40 twice, then picks a hardware texture mode with ChooseSuitableBuzzTexModeBaseFmt at 0xd9cfc80 and maps a format through GetImageFmtEnumFromBuzzTexFormat at 0xd9cfbd0. It calls __glOdysseyImageCalcFieldFormat at 0xd9d15bc and then __glOdysseyValidateHardware at 0xd9d17a0, with bit 0x200000 added to the mask. The downsample arithmetic is not visible in these facts, so the label comes from the name.
  Reviewed: 2026-11-12

- `Clampf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9d90f0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xd9d90f0-0xd9d9114 (36 bytes).
  It occupies 36 bytes.
  The `bc1t` branch at 0xd9d90f4 targets 0xd9d910c, is taken when f12 < f13 (c.lt.s at 0xd9d90f0), and falls through when not (f12 < f13 (c.lt.s at 0xd9d90f0)).
  The return at 0xd9d9104 has v0 = ?.
  The return at 0xd9d910c has v0 = ?.

- `__glOdysseyGetHardwareShadow` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9d93e0.
  Grade: inferred.
  Role (from name): queries a hardware shadow value. It calls __glOdysseyIoctl at 0xd9d9408 with request 0x6f64000c; when the result is not negative the routine returns, with a value that is either that result or one the facts do not resolve. When the result is negative, control reaches a call to an unnamed callee at 0xd9d9434 with the constant 0xdae4dc8. It is not clear what "shadow" refers to, or what the returned value means.
  Reviewed: 2026-11-12

- `__glOdysseyWindowToNormalizedEyeZ` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9e4890 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xd9e4890-0xd9e4958 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xd9e48b4 loads 4 bytes from abs 0x1010.
  The `ldc1` at 0xd9e48c0 loads 8 bytes from [0x1010] +0x165c8.
  The `ldc1` at 0xd9e48c8 loads 8 bytes from [0x1010] +0x165d0.
  The `bgezall` at 0xd9e48b0 calls __glOdysseyWindowToEyeZ [0xd9e4710] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9e4930 calls isnan with a0=?, a1=?, a2=?, a3=?.
  The `bc1t` branch at 0xd9e48f4 targets 0xd9e4914, is taken when f12 < f0(=ret(__glOdysseyWindowToEyeZ)) (c.lt.d at 0xd9e48e8), and falls through when not (f12 < f0(=ret(__glOdysseyWindowToEyeZ)) (c.lt.d at 0xd9e48e8)).
  The `bc1f` branch at 0xd9e4900 targets 0xd9e492c, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The return at 0xd9e490c has v0 = [0x1010]+65536.
  The return at 0xd9e4924 has v0 = [0x1010]+65536.
  The return at 0xd9e4950 has v0 = ret(isnan).

- `__glOdysseySoftClipBeginTriangles` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9e63c0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xd9e63c0-0xd9e63f4 (52 bytes).
  It occupies 52 bytes.
  The `sw` at 0xd9e63d4 stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `lw` at 0xd9e63dc loads 4 bytes from abs 0xdaf10bc.
  The `lw` at 0xd9e63e0 loads 4 bytes from abs 0xdaf05cc.
  The `sw` at 0xd9e63e4 stores 4 bytes to a0 (arg0 at entry) +0x2f2c.
  The `sw` at 0xd9e63f0 stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The return at 0xd9e63ec has v0 = 0xd9e6380.

- `__glOdysseySoftClipRenderTriangle` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9ec360 (n32).
  Acts on the word at `a0`+0x570, the record pointer at `a0`+0x6de0 and the table words at
  `a0`+0x19e94 to +0x19e9c, and writes constant words to absolute 0x10000. It writes `0x14400` and
  then `0x4` to absolute 0x10000 (the `sw` at 0xd9ec378 and 0xd9ec380), then compares the word at
  `a0`+0x570 with 0x1d00 (the `bne` at 0xd9ec3ac). When that word equals 0x1d00, the `lw` at
  0xd9ec3b4 reads the word at `a0`+0x2f2c, the `sw` at 0xd9ec3bc replaces it with the word at absolute
  0xdaf22c0, and the `jalr` at 0xd9ec3ec calls through the record's +0xc word, but only when the word
  at `a0`+0x6de4, ANDed with the complement of the record's +0x0 word, is nonzero (the `beq` at
  0xd9ec3d4). The `sw` at 0xd9ec3fc stores the word read at 0xd9ec3b4, from before the replacement,
  into `a0`+0x2f2c, and six calls through the table words at `a0`+0x19e98 and `a0`+0x19e9c follow
  (the `jalr` at 0xd9ec404 to 0xd9ec448). Otherwise, when the word at `a0`+0x570 is not 0x1d00, three
  calls go through the table word at `a0`+0x19e94 (the `jalr` at 0xd9ec464, 0xd9ec470 and
  0xd9ec47c), and the last two pass the entry `a2` and `a3` as their first argument. Both paths then
  store `0x14001` to absolute 0x10000 (the `sw` at 0xd9ec498) and branch on the word at `a0`+0x96f4
  (the `beq` at 0xd9ec4b4): a zero word writes 1 to `a0`+0x9830 (the `sw` at 0xd9ec4e0) and returns,
  while a nonzero word writes `0x10443`, `0xfa` and `0x10046` (twice) to absolute 0x10000 (the `sw`
  at 0xd9ec4bc to 0xd9ec4cc), then writes 1 to `a0`+0x9830 (the `sw` at 0xd9ec4d4) and returns.
  Unknown: the device-side result of the words written to absolute 0x10000, and the work done by the
  callees at the table words `a0`+0x19e94 to +0x19e9c; no mmio row or callee note covers either, so
  a datasheet excerpt naming that address, or notes for those callees, would settle it.
  Evidence grade: established.

- `__glOdysseySoftClipRenderLine` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9ec690 (n32).
  Takes the context in a0 and two records in a1 and a2, each with a flag byte at +0x191 (the `lbu` at 0xd9ec694 for a1
  and 0xd9ec690 for a2). Unless a rejection test succeeds it sends a short fixed word sequence to the one address
  0x10000 and calls per-record routines through two pointers in the context, bracketing them with
  `__glOdysseySetProgram` calls.
  Special state: when the whole word at +0x570 equals 0x1d00 (`beq` at 0xd9ec6d8) the block at 0xd9eca3c first
  saves the word at +0x2f2c, overwrites it with the word loaded from the global at 0xdaf22c0 (`sw` at 0xd9eca44) and,
  if the word at +0x6de4 has a bit set that is clear in the first word of the table that the word at +0x6de0 points to,
  calls the function at +0xc of that table. It then writes the saved word back (`sw` at 0xd9eca88) and forces both
  flag bytes to zero before joining the main path at 0xd9ec6e0.
  Rejection tests: the word at +0x7b70 is shifted left by 0x29 as a 64-bit value (0xd9ec6e4) and the sign decides
  (`bgez` at 0xd9ec6ec); when the tested bit is clear the float block at 0xd9ec874 runs, otherwise the stores start
  directly. The float block divides a double constant (the `ldc1` at 0xd9ec8a4) by a four-term product-sum of each
  record's words at +0x10, +0x14, +0x18 and +0x1c with the context words at +0x95b8 to +0x95c4, narrows the quotient to
  single, and stores into each record the product-sum with the context words +0x9588 to +0x9594 times that
  reciprocal at +0x80 (`swc1` at 0xd9ec904 for a1 and 0xd9ec940 for a2) and the same with +0x9598 to +0x95a4 at +0x84
  (0xd9ec9bc and 0xd9ec9f4). Then two groups of three compares follow, on the +0x80 values and then the +0x84 values:
  zero is at or below the context word at +0x19d9c (+0x19da0 for the second group) plus a2's stored value; that sum is
  below the word at +0x19da8; and a1's stored value is at or below the word at +0x19da4 plus a2's stored value. Several of
  the floating-point compare instructions show up only as raw words in the listing. If all three hold in a group the routine restores its registers and returns with no store to 0x10000
  (the `bc1t` at 0xd9ec988 to 0xd9ec794, and the fall-through at 0xd9eca34 to 0xd9ec798); any false compare sends it to the
  stores.
  Stores: 0x14400 and then 1 go to 0x10000 (the `sw` at 0xd9ec6fc and the delay slot at 0xd9ec708). The two flag
  bytes then pick the order of calls. Pointer +0x19e94 is called with the record in a0 for a record whose flag is
  nonzero and +0x19e98 for a zero flag. Both flags nonzero: the word at +0xa6a8 is stored to +0xa69c and +0xa698 and
  +0x19e94 is called on a1 then a2. Otherwise `__glOdysseySetProgram` is called with index 1 around the
  zero-flag record or records, with 1 stored to +0xa69c or +0xa698 (or both) and the +0xa6a8 word stored to the other
  one, and a second call with the +0xa6a8 word as index to restore.
  Tail at 0xd9ec73c: stores 0x14001 to 0x10000 (0xd9ec740). When the word at +0x96f4 is nonzero (the `beq` at
  0xd9ec750 falls through) it stores 0 to +0x9830 and then 0x10443, 0xfa and 0x10046 twice to 0x10000; it always
  stores 1 to +0x9830 (0xd9ec77c) and returns at 0xd9ec78c with v0 = 0x14001.
  Inferred: the compare groups return without any store to 0x10000 when all three hold, which is how an early rejection
  of the line would look; the bundle has no source for that reading beyond the control flow.
  Unknown: the value of the double constant at abs 0xdaf4d78 and the device-side result of the words sent to 0x10000;
  no linked row or datasheet excerpt covers that address.
  Unknown: the content of the routines behind the pointers at +0x19e94 and +0x19e98, which the bundle does not contain.
  Evidence grade: inferred.

- `__glOdysseySoftClipRenderPoint` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9ecc20 (n32).
  Writes a fixed set of words to the address 0x10000 and a word at a0+0x9830, around one call through the pointer at +0x19e94 of a0.
  It stores 0x14400 and then zero to 0x10000 (`sw` at 0xd9ecc38 and 0xd9ecc44), calls through the pointer loaded at 0xd9ecc50 with a0 set from a1 in the call's delay slot (`jalr` at 0xd9ecc5c), and then stores 0x14001 to 0x10000 (`sw` at 0xd9ecc70).
  If the word at +0x96f4 of a0 is zero (`beq` at 0xd9ecc90), it stores 1 to a0+0x9830 (`sw` at 0xd9eccbc) and returns; otherwise it stores 0x10443, 0xfa and then 0x10046 twice to 0x10000 (`sw` at 0xd9ecc98 through 0xd9ecca4), stores 1 to a0+0x9830 (`sw` at 0xd9eccac), and returns.
  Nothing writes v0 after the call, so both returns (0xd9eccb4 and 0xd9eccc8) hand back whatever the call left in v0.
  No strings are referenced, and the callee carries no note.
  Unknown: the content of the routine at the pointer read from +0x19e94 of a0, so the value it returns stays open; the call-argument section lists no argument register set for that call.
  Unknown: the board-side change that writing 0x14400, 0x14001, 0x10443, 0xfa and 0x10046 to 0x10000 makes; the bundle has no register row for that address.
  Evidence grade: established.

- `vvec` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9f0ec0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xd9f0ec0-0xd9f0f9c (220 bytes).
  It occupies 220 bytes.
  The `lw` at 0xd9f0ec0 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lw` at 0xd9f0ec8 loads 4 bytes from a2 (arg2 at entry) +0xc.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xd9f0ed4, `lwc1` at 0xd9f0f7c.
  The `lwc1` at 0xd9f0ee0 loads 4 bytes from a1 (arg1 at entry) +0xc.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xd9f0ee4, `lwc1` at 0xd9f0f60, `lwc1` at 0xd9f0f78.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xd9f0ee8, `lwc1` at 0xd9f0f68, `lwc1` at 0xd9f0f74.
  5 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x0, including `swc1` at 0xd9f0ef4, `swc1` at 0xd9f0f2c, `swc1` at 0xd9f0f58.
  5 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x4, including `swc1` at 0xd9f0efc, `swc1` at 0xd9f0f24, `swc1` at 0xd9f0f50.
  5 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x8, including `swc1` at 0xd9f0f00, `swc1` at 0xd9f0f20, `swc1` at 0xd9f0f48.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lwc1` at 0xd9f0f04, `lwc1` at 0xd9f0f34.
  The `lwc1` at 0xd9f0f08 loads 4 bytes from a2 (arg2 at entry) +0xc.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x4, including `lwc1` at 0xd9f0f0c, `lwc1` at 0xd9f0f3c.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lwc1` at 0xd9f0f10, `lwc1` at 0xd9f0f30.
  The `beq` branch at 0xd9f0ecc targets 0xd9f0f30, is taken when a5(=([a1+12] << 0x1)) == 0, and falls through when a5(=([a1+12] << 0x1)) != 0.
  The `beq` branch at 0xd9f0ed8 targets 0xd9f0f5c, is taken when a4(=([a2+12] << 0x1)) == 0, and falls through when a4(=([a2+12] << 0x1)) != 0.
  The `beq` branch at 0xd9f0f38 targets 0xd9f0f74, is taken when a4(=([a2+12] << 0x1)) == 0, and falls through when a4(=([a2+12] << 0x1)) != 0.
  The return at 0xd9f0f28 has v0 = ?.
  The return at 0xd9f0f54 has v0 = ?.
  The return at 0xd9f0f6c has v0 = ?.
  The return at 0xd9f0f94 has v0 = ?.

- `Dot` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9f1f00 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xd9f1f00-0xd9f1f28 (40 bytes).
  It occupies 40 bytes.
  The `lwc1` at 0xd9f1f00 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xd9f1f04 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xd9f1f08 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lwc1` at 0xd9f1f0c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lwc1` at 0xd9f1f10 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lwc1` at 0xd9f1f18 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The return at 0xd9f1f20 has v0 = ?.

- `SphereGen` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9f1f30 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xd9f1f30-0xd9f202c (252 bytes).
  It occupies 252 bytes.
  The `lw` at 0xd9f1f38 loads 4 bytes from a0 (arg0 at entry) +0x2eb8.
  The `lwc1` at 0xd9f1f74 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `lwc1` at 0xd9f1f7c loads 4 bytes from a1 (arg1 at entry) +0x20.
  The `lwc1` at 0xd9f1f80 loads 4 bytes from a1 (arg1 at entry) +0x28.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xdd4, including `lwc1` at 0xd9f1fd8, `lwc1` at 0xd9f1fec, `lwc1` at 0xd9f2014.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xd9f1fe8, `swc1` at 0xd9f2010.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xd9f2000, `swc1` at 0xd9f201c.
  The `jalr` at 0xd9f1f58 calls (unknown callee) with a0=sp-48, a1=a1+96, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xd9f1f6c calls Dot [0xd9f1f00] with a0=a1+32, a1=sp-48, a2=?, a3=?.
  The `bc1t` branch at 0xd9f1fd4 targets 0xd9f2010, is taken when f6 == f0(=ret(Dot)) (c.eq.s at 0xd9f1fc8), and falls through when not (f6 == f0(=ret(Dot)) (c.eq.s at 0xd9f1fc8)).
  The return at 0xd9f2008 has v0 = ret(Dot).
  The return at 0xd9f2024 has v0 = ret(Dot).

- `__glOdysseyQueryHyperpipeBestRect` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9f46c0 (n32).
  It issues one private ioctl for the context in a0, through `__glOdysseyIoctl` (the `jalr` at 0xd9f4720), with request 0x6f640016 in a1, the constant 0x1 in a3 (0xd9f46f4) and 0x103ed0 in a5 (0xd9f46fc).
  Before that call it fills four words of its own frame at sp-48, which is the third argument: the word loaded from a0+0x21ef0 at 0xd9f46dc goes in at offset 0 (the `sw` at 0xd9f4724), the caller's a1 at +0x4 (0xd9f4714), the constant 1 at +0x8 (0xd9f46f8) and the caller's a2 at +0xc (0xd9f470c).
  It has no branches, and the return at 0xd9f473c takes its value from the `or` in the delay slot (0xd9f4740), which copies v1; v1 is set to 0x1 at 0xd9f472c, so the routine returns 1 and not the ioctl's result.
  Inferred: the linked ioctl row for 0x6f640016 (constant and table evidence) puts this number in the private handler table, and the callee note says every private board request in this build takes the `__glOdysseyIoctl` route, so the request is a board query.
  Unknown: which field of the context the word at a0+0x21ef0 holds; no datasheet excerpt in the bundle covers that offset.
  Unknown: how the handler reads the frame words and the a5 constant 0x103ed0; the handler's own code is not in this bundle.
  Evidence grade: inferred.

- `__glOdysseyQueryHyperpipeBestRect` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9f46c0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xd9f46c0-0xd9f4744 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xd9f46dc loads 4 bytes from a0 (arg0 at entry) +0x21ef0.
  The `jalr` at 0xd9f4720 calls __glOdysseyIoctl [0xd9d9360] with a0=a0 at entry (arg0), a1=0x6f640016, a2=sp-48, a3=0x1, a5=0x103ed0.
  The return at 0xd9f473c has v0 = one of 0x0, 0x1.

- `__glOdysseyQueryHyperpipeRect` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9f4750 (n32).
  The routine makes a single call to `__glOdysseyIoctl` at 0xd9f47a4, passing request 0x6f640016 in a1, the context in a0, its own frame pointer in a2, the constant 0x1 in a3 (0xd9f4778) and 0x103e40 in a5 (0xd9f4780).
  The four words of that frame are written just before the call: the context word from a0+0x21ef0 (the `lw` at 0xd9f4768, stored at offset 0 by the `sw` at 0xd9f47a8), the caller's a1 at +0x4 (0xd9f4798), the constant 1 at +0x8 (0xd9f477c) and the caller's a2 at +0xc (0xd9f4790).
  Whatever the call returns, the delay slot of the return (the `or` at 0xd9f47c4) overwrites v0 with v1, which 0xd9f47b0 sets to 0x1, so the routine returns 1.
  Inferred: the callee note says every private board request in this build goes through `__glOdysseyIoctl`, and the linked ioctl row for 0x6f640016 gives constant and table evidence for it, so this is a request to the board.
  Unknown: the field that the context word at +0x21ef0 supplies; the bundle has no datasheet excerpt for that offset.
  Unknown: the handler's use of the a5 constant 0x103e40, which needs the handler body; that body is not in this bundle.
  Evidence grade: inferred.

- `__glOdysseyQueryHyperpipeLimit` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9f47d0.
  Grade: inferred.
  Role (from name): queries a hyperpipe limit. It makes a single __glOdysseyIoctl call at 0xd9f4824 with request 0x6f640018, a2 = a stack buffer at sp-48, a3 = 2 and a5 = 0x103dc0. It returns 0 or 1. Whether the ioctl reads or writes is not shown, and the facts do not give the limit's unit or meaning.
  Reviewed: 2026-11-12

- `__glOdysseyHyperpipeRect` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9f4850.
  Grade: inferred.
  Role (from name): passes a hyperpipe rectangle setting to the driver. It makes one __glOdysseyIoctl call at 0xd9f48a4 with request 0x6f640018, a2 = a stack buffer at sp-48, a3 = 1 and a5 = 0x103d40. It returns 0 or 1. The facts do not say whether the rectangle is written or read, so the direction is taken from the name, and they do not show what 0x103d40 points to.
  Reviewed: 2026-11-12

- `__glOdysseyHyperpipeStereo` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9f48d0.
  Grade: inferred.
  Role (from name): passes a stereo hyperpipe setting to the driver. It makes one __glOdysseyIoctl call at 0xd9f4928 with request 0x6f640018, a3 taken from the caller, a4 = 0x103cc0 and a5 read from the context at +138992. It returns 0 or 1. The request code is shared with its neighbors, so this routine's meaning rests on its name and on the difference in arguments.
  Reviewed: 2026-11-12

- `__glOdysseyHyperpipePixelAverage` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9f4950 (n32).
  Inferred: request 0x6f640018 is the linked row `gfP_OdsyHPsetAttrib` and the string at 0xdae4e58 reads
  'Setting pixel average mode', so the routine sends a hyperpipe attribute request about pixel averaging
  through `__glOdysseyIoctl`, with the context in a0.
  It first prints that string through `fprintf` (`jalr` at 0xd9f4988) to the stream at `__iob`+32, passing
  the caller's a2 and a3 as the format arguments. It then fills a request block at the bottom of its 80-byte
  frame and calls `__glOdysseyIoctl` at 0xd9f49dc with request 0x6f640018 and the address of that block in the register after the request.
  Block contents: +0 the word at ctx +0x21ef0 (`lw` at 0xd9f49a8), +4 the word the caller's a3 points to (`lw`
  at 0xd9f49b4, stored in the delay slot at 0xd9f49e0), +8 the constant 4, +12 the caller's a2, and a
  doubleword at +0x10 holding the low 32 bits of the caller's a3 (a shift left then right by 32 bits feeding the
  `sd` at 0xd9f49d4).
  The return value is a flag derived from the ioctl result: v0 becomes 1 (set at 0xd9f49ec) unless the
  ioctl returned zero, in which case a conditional move before the return at 0xd9f49fc replaces it with 0.
  Unknown: the board-side result of request 0x6f640018; the entry for that ioctl's handler would settle it.
  Unknown: which attribute field the words at block offsets 0 and 4 select, since no linked register row or
  datasheet line names them; the handler's own entry or a register table would settle it.
  Evidence grade: inferred.

- `__glOdysseyQueryHyperpipeStereo` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9f4a10 (n32).
  This routine calls `__glOdysseyIoctl` once (the `jalr` at 0xd9f4a64) with request 0x6f640016 in a1, the context in a0, a pointer to its frame in a2, the constant 0x3 in a3 (0xd9f4a38) and 0x103b80 in a5 (0xd9f4a40).
  The frame gets the context word from a0+0x21ef0 (the `lw` at 0xd9f4a28, stored at offset 0 by the `sw` at 0xd9f4a68), the caller's a1 at +0x4 (0xd9f4a58), the constant 0x3 at +0x8 (0xd9f4a3c) and the caller's a2 at +0xc (0xd9f4a50).
  The return at 0xd9f4a80 takes its value from the delay-slot `or` at 0xd9f4a84, which copies v1, and v1 is set to 0x1 at 0xd9f4a70, so the ioctl's result is not what the routine returns.
  The routine has no conditional branch, so the ioctl call is always made.
  Inferred: the callee note says the `__glOdysseyIoctl` route is the one every private board request in this build takes, and the linked ioctl row gives constant and table evidence for 0x6f640016, so the request goes to the board.
  Unknown: which mode the value 0x3 in a3 selects in the handler; the handler body is outside this bundle.
  Unknown: the device-side result of the request, because the bundle does not include the handler's code.
  Evidence grade: inferred.

- `__glOdysseyQueryHyperpipePixelAverage` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9f4a90.
  Grade: inferred.
  Role (from name): queries a pixel-average hyperpipe value. It makes one __glOdysseyIoctl call at 0xd9f4ae4 with request 0x6f640016, a2 = a stack buffer at sp-48, a3 = 4 and a5 = 0x103b00. It returns 0 or 1. The request code differs from the 0x6f640018 used by the neighboring hyperpipe routines, which suggests a different command in the same driver interface, but the facts do not name it or show the transfer direction.
  Reviewed: 2026-11-12

- `__glOdysseyBindHyperpipe` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9f4b10 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xd9f4b10-0xd9f4b7c (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xd9f4b10 loads 4 bytes from abs 0x1010.
  The `lbu` at 0xd9f4b14 loads 1 byte from [0x1010] +0xc96.
  The `jalr` at 0xd9f4b48 calls __glOdysseyIoctl [0xd9d9360] with a0=[0x1010], a1=0x6f640014, a2=sp-32, a3=a3 at entry (arg3), a4=a1 at entry (arg1).
  The `beq` branch at 0xd9f4b2c targets 0xd9f4b6c, is taken when v0(=[[0x1010]+3222]:1) == 0, and falls through when v0(=[[0x1010]+3222]:1) != 0.
  The return at 0xd9f4b64 has v0 = one of 0x0, 0x1.
  The return at 0xd9f4b74 has v0 = 0x1.

- `__glOdysseyUnbindHyperpipe` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9f4b80 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xd9f4b80-0xd9f4bd0 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0xd9f4b98 loads 4 bytes from abs 0x1010.
  The `jalr` at 0xd9f4bac calls __glOdysseyIoctl [0xd9d9360] with a0=[0x1010], a1=0x6f640015, a2=sp-32, a3=a3 at entry (arg3).
  The return at 0xd9f4bc8 has v0 = one of 0x0, 0x1.

- `__glReadPixelSpans` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda0b9f0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda0b9f0-0xda0bb98 (424 bytes).
  It occupies 424 bytes.
  The `lw` at 0xda0ba0c loads 4 bytes from a1 (arg1 at entry) +0xa8.
  The `lw` at 0xda0ba14 loads 4 bytes from a1 (arg1 at entry) +0x160.
  The `lw` at 0xda0ba38 loads 4 bytes from a0 (arg0 at entry) +0x77f0.
  The `lw` at 0xda0ba50 loads 4 bytes from a0 (arg0 at entry) +0x12f4.
  The `lw` at 0xda0ba58 loads 4 bytes from a1 (arg1 at entry) +0xac.
  The `lw` at 0xda0ba5c loads 4 bytes from a1 (arg1 at entry) +0x164.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda0bab0, `lw` at 0xda0bae4.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x5c, including `lw` at 0xda0baf4, `lw` at 0xda0bafc.
  The `lwc1` at 0xda0bb00 loads 4 bytes from a1 (arg1 at entry) +0xc0.
  The `lw` at 0xda0bb04 loads 4 bytes from a1 (arg1 at entry) +0x60.
  The `sw` at 0xda0bb14 stores 4 bytes to a1 (arg1 at entry) +0x5c.
  The `swc1` at 0xda0bb1c stores 4 bytes to a1 (arg1 at entry) +0xc0.
  The `sw` at 0xda0bb24 stores 4 bytes to a0 (arg0 at entry) +0x77f0.
  The `jalr` at 0xda0bac0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xda0baf0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=[a1+92].
  The `jalr` at 0xda0bb34 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `blez` branch at 0xda0ba6c targets 0xda0bb78, is taken when at(=[a1+172]) <= 0 (signed), and falls through when at(=[a1+172]) > 0 (signed).
  The `beq` branch at 0xda0baa8 targets 0xda0bb28 and is always taken.
  The `bne` branch at 0xda0bad0 targets 0xda0bab0, is taken when s1(?) != s5(=(([a1+352]-1 << 0x2) + a1)), and falls through when s1(?) == s5(=(([a1+352]-1 << 0x2) + a1)).
  The `beq` branch at 0xda0bb20 targets 0xda0bb5c, is taken when at(=[a1+172]) == s7(?), and falls through when at(=[a1+172]) != s7(?).
  The `bgtz` branch at 0xda0bb4c targets 0xda0bab0, is taken when a0(=[a1+352]-1) > 0 (signed), and falls through when a0(=[a1+352]-1) <= 0 (signed).
  The `beq` branch at 0xda0bb54 targets 0xda0badc and is always taken.
  The return at 0xda0bb90 has v0 = one of ?, ([a1+96] + [a1+92]).

- `Clear` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda223d0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda223d0-0xda226fc (812 bytes).
  It occupies 812 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0xda223e8, `lw` at 0xda226f8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0xda223f0, `lw` at 0xda226f0.
  The `lw` at 0xda223f8 loads 4 bytes from [a0] +0x7448.
  The `lw` at 0xda22404 loads 4 bytes from [a0] +0x7440.
  The `lw` at 0xda22410 loads 4 bytes from [a0] +0x743c.
  The `lw` at 0xda22414 loads 4 bytes from [a0] +0x7444.
  The `lwc1` at 0xda22418 loads 4 bytes from a0 (arg0 at entry) +0x54.
  The `lwc1` at 0xda2241c loads 4 bytes from [a0] +0x67c.
  The `lwc1` at 0xda22420 loads 4 bytes from [a0] +0x7880.
  The `lwc1` at 0xda22424 loads 4 bytes from a0 (arg0 at entry) +0x50.
  The `lwc1` at 0xda22428 loads 4 bytes from [a0] +0x678.
  The `lwc1` at 0xda2242c loads 4 bytes from [a0] +0x7860.
  The `lwc1` at 0xda22430 loads 4 bytes from [a0] +0x674.
  The `lw` at 0xda22434 loads 4 bytes from [a0] +0xe50.
  The `lw` at 0xda22438 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lwc1` at 0xda22440 loads 4 bytes from [a0] +0x785c.
  The `lwc1` at 0xda2244c loads 4 bytes from [a0] +0x670.
  The `lwc1` at 0xda22458 loads 4 bytes from [a0] +0x7858.
  The `lwc1` at 0xda22460 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  The `lwc1` at 0xda22468 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0xda224a4 loads 4 bytes from [a0] +0xe4c.
  84 such `sh` accesses store 2 bytes to ?, including `sh` at 0xda224f4, `sh` at 0xda224f8, `sh` at 0xda224fc.
  The `lw` at 0xda226d0 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `jalr` at 0xda226e0 calls (unknown callee) with a0=[a0], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda2240c targets 0xda226d0, is taken when a1(=[a0+16]) == 0, and falls through when a1(=[a0+16]) != 0.
  The `beq` branch at 0xda224c8 targets 0xda226b4, is taken when s0(=[[a0]+29760]) >= s1(=[[a0]+29768]) (signed), and falls through when s0(=[[a0]+29760]) < s1(=[[a0]+29768]) (signed).
  The `beq` branch at 0xda224dc targets 0xda22694 and is always taken.
  The `bne` branch at 0xda22538 targets 0xda224f0, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xda22540 targets 0xda2265c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xda22654 targets 0xda22550, is taken when a0(?) != a1(=-0x1), and falls through when a0(?) == a1(=-0x1).
  The `bltz` branch at 0xda22660 targets 0xda2268c, is taken when t2(?) < 0 (signed), and falls through when t2(?) >= 0 (signed).
  The `bne` branch at 0xda22684 targets 0xda22670, is taken when a0(?) != a1(=-0x1), and falls through when a0(?) == a1(=-0x1).
  The `beq` branch at 0xda2268c targets 0xda226b4, is taken when s0(?) == s1(=[[a0]+29768]), and falls through when s0(?) != s1(=[[a0]+29768]).
  The `bltz` branch at 0xda22694 targets 0xda2265c, is taken when t3(?) < 0 (signed), and falls through when t3(?) >= 0 (signed).
  The `bne` branch at 0xda226a4 targets 0xda224f0, is taken when (t1(?) & 0x3) != 0, and falls through when (t1(?) & 0x3) == 0.
  The `beq` branch at 0xda226ac targets 0xda22540 and is always taken.
  The `beq` branch at 0xda226f4 targets 0xda22414 and is always taken.
  The return at 0xda226c8 has v0 = ?.
  The instructions from 0xda224e4 to 0xda224ec are not reached by any path from the entry, and their branches are not listed.

- `__glChangeReadWindowSize` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda35140 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda35140-0xda3514c (12 bytes).
  It occupies 12 bytes.
  The `sw` at 0xda35140 stores 4 bytes to a0 (arg0 at entry) +0xe80.
  The `sw` at 0xda35148 stores 4 bytes to a0 (arg0 at entry) +0xe7c.
  The return at 0xda35144 has v0 = ?.

- `__glFindWindowSize` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda35150 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda35150-0xda35224 (212 bytes).
  It occupies 212 bytes.
  The `lw` at 0xda35164 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xda35190 loads 4 bytes from a0 (arg0 at entry) +0xe74.
  The `lw` at 0xda35194 loads 4 bytes from a0 (arg0 at entry) +0xe78.
  The `lbu` at 0xda351b0 loads 1 byte from a0 (arg0 at entry) +0xdd0.
  The `lw` at 0xda351c8 loads 4 bytes from a0 (arg0 at entry) +0xe7c.
  The `lw` at 0xda351d0 loads 4 bytes from a0 (arg0 at entry) +0xe80.
  The `lw` at 0xda35204 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `jalr` at 0xda35184 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-48, a2=sp-44, a3=sp-40, a4=sp-36.
  The `bgezall` at 0xda351a8 calls __glChangeWindowSize [0xda35030] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezall` at 0xda351f4 calls __glChangeReadWindowSize [0xda35140] with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+3708], a4=[a0+3712].
  The `jalr` at 0xda35210 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-32, a2=sp-28, a3=?.
  The `bne` branch at 0xda35198 targets 0xda351a4, is taken when v0(=[a0+3700]) != a1(?), and falls through when v0(=[a0+3700]) == a1(?).
  The `beq` branch at 0xda351a0 targets 0xda351b0, is taken when v1(=[a0+3704]) == a2(?), and falls through when v1(=[a0+3704]) != a2(?).
  The `beq` branch at 0xda351b4 targets 0xda35204, is taken when a0(=[a0+3536]:1) == 0, and falls through when a0(=[a0+3536]:1) != 0.
  The `bne` branch at 0xda351cc targets 0xda351f0, is taken when a3(=[a0+3708]) != a1(?), and falls through when a3(=[a0+3708]) == a1(?).
  The `bne` branch at 0xda351d4 targets 0xda351f4, is taken when a4(=[a0+3712]) != a2(?), and falls through when a4(=[a0+3712]) == a2(?).
  The `beq` branch at 0xda351fc targets 0xda351e0 and is always taken.
  The `beq` branch at 0xda3521c targets 0xda351c8 and is always taken.
  The return at 0xda351e8 has v0 = one of ?, ret(__glChangeReadWindowSize).

- `Resize` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda383f0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda383f0-0xda38438 (72 bytes).
  It occupies 72 bytes.
  The `sb` at 0xda38428 stores 1 byte to a0 (arg0 at entry) +0x60.
  The `jalr` at 0xda38414 calls __glResizeBuffer [0xda2e4a0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda38430 has v0 = 0x1.

- `__glim_ResetHistogramEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda47190 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda47190-0xda47230 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xda47194 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda47198 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda471ec loads 4 bytes from [0x1010] +0x4fc.
  The `lw` at 0xda471f4 loads 4 bytes from [0x1010] +0x4e0.
  The `lw` at 0xda47204 loads 4 bytes from [0x1010] +0x4dc.
  The `jalr` at 0xda471c8 calls __glSetError [0xda34dc0] with a0=0x500, a1=0x8024, a2=[0x1010], a3=a3 at entry (arg3).
  The `jalr` at 0xda471e8 calls __glElementsPerGroup [0xda11c10] with a0=[[0x1010]+1276], a1=0x8024, a2=[0x1010], a3=a3 at entry (arg3).
  The `jalr` at 0xda4720c calls memset with a0=[[0x1010]+1244], a1=0x0, a2=?, a3=?.
  The `jalr` at 0xda47220 calls __glSetError [0xda34dc0] with a0=0x502, a1=0x8024, a2=[0x1010], a3=a3 at entry (arg3).
  The `beq` branch at 0xda471b4 targets 0xda4721c, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xda471bc targets 0xda471e0, is taken when a0 == a1(=0x8024), and falls through when a0 != a1(=0x8024).
  The `beq` branch at 0xda47214 targets 0xda471d4 and is always taken.
  The `beq` branch at 0xda47228 targets 0xda471d4 and is always taken.
  The return at 0xda471d8 has v0 = one of ret(__glSetError), ret(memset).

- `__glResetArray` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda47770 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda47770-0xda47b3c (972 bytes).
  It occupies 972 bytes.
  The `lw` at 0xda47920 loads 4 bytes from table(0xdaea098) +0x0.
  The `bgezall` at 0xda478a8 calls __glSetValue [0xda47730] with a0=?, a1=entry(0xdaea098), a2=a5 at entry (arg5), a3=?; fp f13=f18.
  The `bgezall` at 0xda478bc calls __glSetValue [0xda47730] with a0=?, a1=?, a2=a5 at entry (arg5), a3=?; fp f13=f18.
  The `bgezall` at 0xda478d0 calls __glSetValue [0xda47730] with a0=?, a1=?, a2=a5 at entry (arg5), a3=?; fp f13=f18.
  The `bgezall` at 0xda478e4 calls __glSetValue [0xda47730] with a0=?, a1=?, a2=a5 at entry (arg5), a3=?; fp f13=f18.
  The `bgezall` at 0xda47938 calls __glSetValue [0xda47730] with a0=?, a1=entry(0xdaea098), a2=a5 at entry (arg5), a3=?; fp f13=f18.
  The `bgezall` at 0xda4794c calls __glSetValue [0xda47730] with a0=?, a1=?, a2=a5 at entry (arg5), a3=?; fp f13=f18.
  The `bgezall` at 0xda47968 calls __glSetValue [0xda47730] with a0=?, a1=entry(0xdaea098), a2=a5 at entry (arg5), a3=?; fp f13=f18.
  The `bgezall` at 0xda47984 calls __glSetValue [0xda47730] with a0=?, a1=entry(0xdaea098), a2=a5 at entry (arg5), a3=?; fp f13=f18.
  The `beq` branch at 0xda477bc targets 0xda47a1c, is taken when a5 == at(=0x1405), and falls through when a5 != at(=0x1405).
  The `beq` branch at 0xda477c8 targets 0xda47a9c, is taken when a5 == v1(=0x1406), and falls through when a5 != v1(=0x1406).
  The `beq` branch at 0xda477d0 targets 0xda47a28, is taken when a5(=0x1909) == a0, and falls through when a5(=0x1909) != a0.
  The `beq` branch at 0xda477d8 targets 0xda47aa8, is taken when a0 == a4(=0x1906), and falls through when a0 != a4(=0x1906).
  The `beq` branch at 0xda477e0 targets 0xda47ab8, is taken when a0 == a6(=0x190a), and falls through when a0 != a6(=0x190a).
  The `beq` branch at 0xda477e8 targets 0xda47ac8, is taken when a0 == a7(=0x1907), and falls through when a0 != a7(=0x1907).
  The `beq` branch at 0xda477f0 targets 0xda47ad8, is taken when a0 == t0(=0x1908), and falls through when a0 != t0(=0x1908).
  The `bne` branch at 0xda477fc targets 0xda479cc, is taken when a1 < 0x1908 (unsigned), and falls through when a1 >= 0x1908 (unsigned).
  The `bne` branch at 0xda47804 targets 0xda47844, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bne` branch at 0xda47814 targets 0xda47a34, is taken when a1 < a4(=0x8000) (unsigned), and falls through when a1 >= a4(=0x8000) (unsigned).
  The `beq` branch at 0xda47828 targets 0xda47840, is taken when a4(=0x8000) >= a1 (unsigned), and falls through when a4(=0x8000) < a1 (unsigned).
  The `bne` branch at 0xda47830 targets 0xda47b10, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `bne` branch at 0xda47838 targets 0xda47998, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `beq` branch at 0xda47844 targets 0xda47998, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0xda47878 targets 0xda47994, is taken when a3 >= s6(=a4) (signed), and falls through when a3 < s6(=a4) (signed).
  The `beq` branch at 0xda47898 targets 0xda47b20 and is always taken.
  The `beq` branch at 0xda47910 targets 0xda47994, is taken when s6(=a4) == s4(?), and falls through when s6(=a4) != s4(?).
  The `beq` branch at 0xda47918 targets 0xda478ec, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0xda47954 targets 0xda478f0 and is always taken.
  The `beq` branch at 0xda47970 targets 0xda478f0 and is always taken.
  The `beq` branch at 0xda4798c targets 0xda478f0 and is always taken.
  The `bne` branch at 0xda479d0 targets 0xda479f8, is taken when a1 < 0x1905 (unsigned), and falls through when a1 >= 0x1905 (unsigned).
  The `beq` branch at 0xda479dc targets 0xda47a58, is taken when a1 >= 0x1906 (unsigned), and falls through when a1 < 0x1906 (unsigned).
  The `beq` branch at 0xda479e8 targets 0xda47994, is taken when (a0(?) & 0x4) == 0, and falls through when (a0(?) & 0x4) != 0.
  The `beq` branch at 0xda479f0 targets 0xda47854 and is always taken.
  The `bne` branch at 0xda479f8 targets 0xda47a7c, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0xda47a00 targets 0xda47998, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xda47a08 targets 0xda47998, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0xda47a14 targets 0xda47854 and is always taken.
  The `beq` branch at 0xda47a20 targets 0xda477cc and is always taken.
  The `beq` branch at 0xda47a2c targets 0xda477f8 and is always taken.
  The `bne` branch at 0xda47a38 targets 0xda47ae8, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0xda47a40 targets 0xda47994, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0xda47a48 targets 0xda47998, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0xda47a50 targets 0xda47854 and is always taken.
  The `bne` branch at 0xda47a5c targets 0xda47af8, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `beq` branch at 0xda47a64 targets 0xda47994, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xda47a6c targets 0xda47994, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0xda47a74 targets 0xda47854 and is always taken.
  The `bne` branch at 0xda47a80 targets 0xda47998, is taken when a1 != at(=0x1903), and falls through when a1 == at(=0x1903).
  The `beq` branch at 0xda47a8c targets 0xda47994, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xda47a94 targets 0xda47854 and is always taken.
  The `beq` branch at 0xda47aa0 targets 0xda477cc and is always taken.
  The `beq` branch at 0xda47ab0 targets 0xda477f8 and is always taken.
  The `beq` branch at 0xda47ac0 targets 0xda477f8 and is always taken.
  The `beq` branch at 0xda47ad0 targets 0xda477f8 and is always taken.
  The `beq` branch at 0xda47ae0 targets 0xda477f8 and is always taken.
  The `bne` branch at 0xda47ae8 targets 0xda47998, is taken when a5(=0x1909) != a1, and falls through when a5(=0x1909) == a1.
  The `beq` branch at 0xda47af0 targets 0xda47a8c and is always taken.
  The `bne` branch at 0xda47af8 targets 0xda47998, is taken when a1 != t1(=0x1906), and falls through when a1 == t1(=0x1906).
  The `beq` branch at 0xda47b00 targets 0xda47998, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0xda47b08 targets 0xda47850 and is always taken.
  The `bne` branch at 0xda47b10 targets 0xda47998, is taken when a1 != t3(=0x80e0), and falls through when a1 == t3(=0x80e0).
  The `beq` branch at 0xda47b18 targets 0xda47a6c and is always taken.
  The `beq` branch at 0xda47b34 targets 0xda47918 and is always taken.
  The return at 0xda479c4 has v0 = one of 0xb0e20, ?.
  The indirect jump at 0xda47924 uses the jump table at 0xdaea098 with targets 0xda478ec, 0xda478d8, 0xda4795c, 0xda478ec, 0xda47978, 0xda478ec, 0xda478ec, 0xda478b0, 0xda478d8, 0xda478ec, 0xda478ec, 0xda478ec, 0xda478ec, 0xda478ec, 0xda478ec, 0xda478ec, 0xda4795c, 0xda478c4, 0xda478ec, 0xda478ec, 0xda478ec, 0xda478ec, 0xda478ec, 0xda478ec, 0xda478ec, 0xda478ec, 0xda478ec, 0xda478ec, 0xda478ec, 0xda478ec, 0xda478ec, 0xda478ec, 0xda47940, 0xda4792c, 0xda478ec, 0xda478ec, 0xda478ec, 0xda478ec, 0xda478ec, 0xda478a0.
  The indirect jump at 0xda47924 uses the jump table at 0xdaea098 with targets 0xda478ec, 0xda478d8, 0xda4795c, 0xda478ec, 0xda47978, 0xda478ec, 0xda478ec, 0xda478b0, 0xda478d8, 0xda478ec, 0xda478ec, 0xda478ec, 0xda478ec, 0xda478ec, 0xda478ec, 0xda478ec, 0xda4795c, 0xda478c4, 0xda478ec, 0xda478ec, 0xda478ec, 0xda478ec, 0xda478ec, 0xda478ec, 0xda478ec, 0xda478ec, 0xda478ec, 0xda478ec, 0xda478ec, 0xda478ec, 0xda478ec, 0xda478ec, 0xda47940, 0xda4792c, 0xda478ec, 0xda478ec, 0xda478ec, 0xda478ec, 0xda478ec, 0xda478a0.

- `__glResetMinmax` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda484f0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda484f0-0xda4863c (332 bytes).
  It occupies 332 bytes.
  The `lw` at 0xda484f8 loads 4 bytes from a0 (arg0 at entry) +0x55c.
  The `lwc1` at 0xda48554 loads 4 bytes from abs 0xdaf4ba4.
  10 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda48564, `swc1` at 0xda48570, `swc1` at 0xda4857c.
  The `lwc1` at 0xda485ac loads 4 bytes from abs 0xdaf4ba8.
  The `beq` branch at 0xda4850c targets 0xda48610, is taken when a3(=[a0+1372]) == v1(=0x1906), and falls through when a3(=[a0+1372]) != v1(=0x1906).
  The `beq` branch at 0xda48518 targets 0xda48610, is taken when a3(=[a0+1372]) == v1(=0x1909), and falls through when a3(=[a0+1372]) != v1(=0x1909).
  The `beq` branch at 0xda48524 targets 0xda4861c, is taken when a3(=[a0+1372]) == a0(=0x190a), and falls through when a3(=[a0+1372]) != a0(=0x190a).
  The `beq` branch at 0xda48530 targets 0xda48624, is taken when a3(=[a0+1372]) == a1(=0x1907), and falls through when a3(=[a0+1372]) != a1(=0x1907).
  The `beq` branch at 0xda48538 targets 0xda4862c, is taken when a3(=[a0+1372]) == a2(=0x1908), and falls through when a3(=[a0+1372]) != a2(=0x1908).
  The `blez` branch at 0xda48544 targets 0xda48634, is taken when a4(?) <= 0 (signed), and falls through when a4(?) > 0 (signed).
  The `beq` branch at 0xda48568 targets 0xda4859c, is taken when a0(?) == a3(?), and falls through when a0(?) != a3(?).
  The `beq` branch at 0xda48574 targets 0xda4859c, is taken when a0(?) == a3(?), and falls through when a0(?) != a3(?).
  The `beq` branch at 0xda48580 targets 0xda4859c, is taken when a0(?) == a3(?), and falls through when a0(?) != a3(?).
  The `beq` branch at 0xda4858c targets 0xda4859c, is taken when a0(?) == a3(?), and falls through when a0(?) != a3(?).
  The `bne` branch at 0xda48594 targets 0xda48560, is taken when a0(?) != a3(?), and falls through when a0(?) == a3(?).
  The `beq` branch at 0xda485b0 targets 0xda48608, is taken when a4(?) >= a6(?) (signed), and falls through when a4(?) < a6(?) (signed).
  The `beq` branch at 0xda485c4 targets 0xda485e0, is taken when (a5(?) & 0x3) == 0, and falls through when (a5(?) & 0x3) != 0.
  The `bne` branch at 0xda485d4 targets 0xda485cc, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0xda485e0 targets 0xda48608, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0xda48600 targets 0xda485f0, is taken when a0(?) != a3(?), and falls through when a0(?) == a3(?).
  The `beq` branch at 0xda48614 targets 0xda48550 and is always taken.
  The `beq` branch at 0xda4861c targets 0xda48550 and is always taken.
  The `beq` branch at 0xda48624 targets 0xda48550 and is always taken.
  The `beq` branch at 0xda4862c targets 0xda48550 and is always taken.
  The `beq` branch at 0xda48634 targets 0xda485a0 and is always taken.
  The return at 0xda48608 has v0 = 0xb00a0.

- `__glim_ResetMinmaxEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda48720 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda48720-0xda48790 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xda48724 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda48770 loads 4 bytes from abs 0x1010.
  The `jalr` at 0xda48754 calls __glSetError [0xda34dc0] with a0=0x500, a1=0x802e, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xda4876c calls __glResetMinmax [0xda484f0] with a0=[0x1010], a1=0x802e, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda48780 calls __glSetError [0xda34dc0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda4873c targets 0xda4877c, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xda48748 targets 0xda4876c, is taken when a0 == a1(=0x802e), and falls through when a0 != a1(=0x802e).
  The `beq` branch at 0xda48774 targets 0xda48760 and is always taken.
  The `beq` branch at 0xda48788 targets 0xda48760 and is always taken.
  The return at 0xda48764 has v0 = one of ret(__glSetError), ret(__glResetMinmax).

- `Coverage` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda5e2e0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda5e2e0-0xda5e430 (336 bytes).
  It occupies 336 bytes.
  The `bc1f` branch at 0xda5e320 targets 0xda5e32c, is taken when not (f10 <= f5 (c.le.s at 0xda5e318)), and falls through when f10 <= f5 (c.le.s at 0xda5e318).
  The `bc1f` branch at 0xda5e330 targets 0xda5e33c, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0xda5e33c targets 0xda5e348, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0xda5e348 targets 0xda5e354, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bc1f` branch at 0xda5e360 targets 0xda5e36c, is taken when FP condition code 4 is false, and falls through when FP condition code 4 is true.
  The `bc1f` branch at 0xda5e370 targets 0xda5e37c, is taken when FP condition code 5 is false, and falls through when FP condition code 5 is true.
  The `bc1f` branch at 0xda5e380 targets 0xda5e38c, is taken when FP condition code 6 is false, and falls through when FP condition code 6 is true.
  The `bc1f` branch at 0xda5e390 targets 0xda5e39c, is taken when FP condition code 7 is false, and falls through when FP condition code 7 is true.
  The `bc1f` branch at 0xda5e3ac targets 0xda5e3b8, is taken when not (f10 <= f5 (c.le.s at 0xda5e3a4)), and falls through when f10 <= f5 (c.le.s at 0xda5e3a4).
  The `bc1f` branch at 0xda5e3bc targets 0xda5e3c8, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0xda5e3cc targets 0xda5e3d8, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0xda5e3d8 targets 0xda5e3e4, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bc1f` branch at 0xda5e3e8 targets 0xda5e3f4, is taken when FP condition code 4 is false, and falls through when FP condition code 4 is true.
  The `bc1f` branch at 0xda5e3f8 targets 0xda5e404, is taken when FP condition code 5 is false, and falls through when FP condition code 5 is true.
  The `bc1f` branch at 0xda5e408 targets 0xda5e414, is taken when FP condition code 6 is false, and falls through when FP condition code 6 is true.
  The `bc1f` branch at 0xda5e418 targets 0xda5e428, is taken when FP condition code 7 is false, and falls through when FP condition code 7 is true.
  The return at 0xda5e420 has v0 = ?.
  The return at 0xda5e428 has v0 = ?.

- `SetInitialParameters` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda60820 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda60820-0xda60dc0 (1440 bytes).
  It occupies 1440 bytes.
  The `lw` at 0xda60820 loads 4 bytes from a0 (arg0 at entry) +0x75f4.
  The `lw` at 0xda60824 loads 4 bytes from a0 (arg0 at entry) +0x75f0.
  The `lw` at 0xda60844 loads 4 bytes from a0 (arg0 at entry) +0x771c.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7684, including `lwc1` at 0xda60888, `lwc1` at 0xda60a70, `lwc1` at 0xda60d60.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7694, including `lwc1` at 0xda6088c, `lwc1` at 0xda60a74, `lwc1` at 0xda60d64.
  4 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xda60890, `lwc1` at 0xda60a78, `lwc1` at 0xda60d68.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7698, including `lwc1` at 0xda608a0, `lwc1` at 0xda60a88.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7688, including `lwc1` at 0xda608a4, `lwc1` at 0xda60a8c.
  4 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7638, including `swc1` at 0xda608a8, `swc1` at 0xda60a90, `swc1` at 0xda60d88.
  4 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7664, including `swc1` at 0xda608ac, `swc1` at 0xda60a94, `swc1` at 0xda60d78.
  4 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7674, including `swc1` at 0xda608b4, `swc1` at 0xda60a9c, `swc1` at 0xda60d80.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda608b8, `lwc1` at 0xda60aa0.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x769c, including `lwc1` at 0xda608c8, `lwc1` at 0xda60ab0.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x768c, including `lwc1` at 0xda608cc, `lwc1` at 0xda60ab4.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7668, including `swc1` at 0xda608d0, `swc1` at 0xda60abc.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x763c, including `swc1` at 0xda608d4, `swc1` at 0xda60ab8.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7678, including `swc1` at 0xda608dc, `swc1` at 0xda60ac4.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xda608e0, `lwc1` at 0xda60ac8.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x76a0, including `lwc1` at 0xda608f0, `lwc1` at 0xda60ad8.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7690, including `lwc1` at 0xda608f4, `lwc1` at 0xda60adc.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x766c, including `swc1` at 0xda608f8, `swc1` at 0xda60ae4.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7640, including `swc1` at 0xda608fc, `swc1` at 0xda60ae0.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x767c, including `swc1` at 0xda60904, `swc1` at 0xda60aec.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lwc1` at 0xda6090c, `lwc1` at 0xda60af4.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7670, including `swc1` at 0xda60918, `swc1` at 0xda60b00.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7680, including `swc1` at 0xda60920, `swc1` at 0xda60b08.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7644, including `swc1` at 0xda60924, `swc1` at 0xda60b0c.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x8c, including `lwc1` at 0xda60934, `lwc1` at 0xda60b1c.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x76e4, including `lwc1` at 0xda60938, `lwc1` at 0xda60b20.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x30, including `lwc1` at 0xda6093c, `lwc1` at 0xda60b24.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x76f8, including `lwc1` at 0xda60940, `lwc1` at 0xda60b28.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x76e8, including `lwc1` at 0xda60954, `lwc1` at 0xda60b3c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x76bc, including `swc1` at 0xda60958, `swc1` at 0xda60b44.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7648, including `swc1` at 0xda6095c, `swc1` at 0xda60b40.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x76d0, including `swc1` at 0xda60964, `swc1` at 0xda60b4c.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x34, including `lwc1` at 0xda60968, `lwc1` at 0xda60b50.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x76fc, including `lwc1` at 0xda6096c, `lwc1` at 0xda60b54.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x76ec, including `lwc1` at 0xda60980, `lwc1` at 0xda60b68.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x76c0, including `swc1` at 0xda60984, `swc1` at 0xda60b70.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x764c, including `swc1` at 0xda60988, `swc1` at 0xda60b6c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x76d4, including `swc1` at 0xda60990, `swc1` at 0xda60b78.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x38, including `lwc1` at 0xda60994, `lwc1` at 0xda60b7c.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7700, including `lwc1` at 0xda60998, `lwc1` at 0xda60b80.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x76f0, including `lwc1` at 0xda609ac, `lwc1` at 0xda60b94.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x76c4, including `swc1` at 0xda609b0, `swc1` at 0xda60b9c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7650, including `swc1` at 0xda609b4, `swc1` at 0xda60b98.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x76d8, including `swc1` at 0xda609bc, `swc1` at 0xda60ba4.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x3c, including `lwc1` at 0xda609c0, `lwc1` at 0xda60ba8.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7704, including `lwc1` at 0xda609c4, `lwc1` at 0xda60bac.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7708, including `lwc1` at 0xda609d8, `lwc1` at 0xda60bc0.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x76f4, including `lwc1` at 0xda609dc, `lwc1` at 0xda60bc4.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x76c8, including `swc1` at 0xda609e0, `swc1` at 0xda60bcc.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7654, including `swc1` at 0xda609e4, `swc1` at 0xda60bc8.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x76dc, including `swc1` at 0xda609ec, `swc1` at 0xda60bd4.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0xb4, including `lwc1` at 0xda609f4, `lwc1` at 0xda60bdc.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x76cc, including `swc1` at 0xda60a00, `swc1` at 0xda60be8.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x76e0, including `swc1` at 0xda60a08, `swc1` at 0xda60bf0.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7658, including `swc1` at 0xda60a0c, `swc1` at 0xda60bf4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x700, including `lw` at 0xda60a18, `lw` at 0xda60c00.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x76b4, including `lwc1` at 0xda60a50, `lwc1` at 0xda60c38, `lwc1` at 0xda60c4c.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x76b8, including `lwc1` at 0xda60a54, `lwc1` at 0xda60c3c, `lwc1` at 0xda60c48.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x7634, including `sw` at 0xda60a5c, `sw` at 0xda60c44, `sw` at 0xda60c64.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x88, including `lwc1` at 0xda60c50, `lwc1` at 0xda60ccc.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x76a4, including `swc1` at 0xda60c74, `swc1` at 0xda60cf0.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x76a8, including `swc1` at 0xda60c7c, `swc1` at 0xda60cf8.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7718, including `lwc1` at 0xda60c88, `lwc1` at 0xda60d04.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7714, including `lwc1` at 0xda60c8c, `lwc1` at 0xda60d08.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x770c, including `swc1` at 0xda60ca8, `swc1` at 0xda60d20.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7710, including `swc1` at 0xda60cb0, `swc1` at 0xda60d28.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x765c, including `swc1` at 0xda60cb4, `swc1` at 0xda60d2c.
  The `bgezall` at 0xda60a3c calls __glPolygonOffsetZ [0xda62d90] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f14=f16, f15=f17.
  The `bgezall` at 0xda60c24 calls __glPolygonOffsetZ [0xda62d90] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=([a0+1792] << 0x27); fp f14=f16, f15=f17.
  The `bc1f` branch at 0xda60870 targets 0xda60a60, is taken when not (f24 < f0 (c.lt.s at 0xda60848)), and falls through when f24 < f0 (c.lt.s at 0xda60848).
  The `beq` branch at 0xda60878 targets 0xda60d58, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xda60880 targets 0xda6092c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xda6092c targets 0xda60a10, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xda60a10 targets 0xda60c80, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bgez` branch at 0xda60a20 targets 0xda60c48, is taken when a0(=([a0+1792] << 0x27)) >= 0 (signed), and falls through when a0(=([a0+1792] << 0x27)) < 0 (signed).
  The `beq` branch at 0xda60a58 targets 0xda60c68 and is always taken.
  The `beq` branch at 0xda60a60 targets 0xda60d8c, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xda60a68 targets 0xda60b10, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xda60b14 targets 0xda60bf8, is taken when (t0(=[a0+30492]) & 0x8) == 0, and falls through when (t0(=[a0+30492]) & 0x8) != 0.
  The `beq` branch at 0xda60bf8 targets 0xda60cfc, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bgez` branch at 0xda60c08 targets 0xda60cc4, is taken when a3(=([a0+1792] << 0x27)) >= 0 (signed), and falls through when a3(=([a0+1792] << 0x27)) < 0 (signed).
  The `beq` branch at 0xda60c40 targets 0xda60ce4 and is always taken.
  The `beq` branch at 0xda60c80 targets 0xda60d40, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xda60cfc targets 0xda60d40, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xda60d58 targets 0xda60a10, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xda60d84 targets 0xda60a10 and is always taken.
  The `beq` branch at 0xda60d8c targets 0xda60bf8, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xda60db8 targets 0xda60bf8 and is always taken.
  The return at 0xda60cbc has v0 = ?.
  The return at 0xda60d38 has v0 = ?.
  The return at 0xda60d50 has v0 = ?.

- `__glReadSpan` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda6c180 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda6c180-0xda6c224 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0xda6c1d0 loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `jalr` at 0xda6c1e0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=?.
  The `bltz` branch at 0xda6c1b8 targets 0xda6c200, is taken when s2(=a4-1) < 0 (signed), and falls through when s2(=a4-1) >= 0 (signed).
  The `bne` branch at 0xda6c1f0 targets 0xda6c1d0, is taken when s2(?) != s5(=-0x1), and falls through when s2(?) == s5(=-0x1).
  The return at 0xda6c21c has v0 = 0x0.

- `SubdivRegCreaseEdge` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda721f0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda721f0-0xda722d8 (232 bytes).
  It occupies 232 bytes.
  10 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda72208, `lwc1` at 0xda7220c, `lwc1` at 0xda72250.
  5 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda72234, `swc1` at 0xda72268, `swc1` at 0xda72284.
  The `blez` branch at 0xda721f0 targets 0xda722d0, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0xda72200 targets 0xda72238, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0xda72230 targets 0xda72208, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0xda7223c targets 0xda722d0, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0xda722c8 targets 0xda72250, is taken when a1(?) != a5(=((a0 << 0x2) + a1)), and falls through when a1(?) == a5(=((a0 << 0x2) + a1)).
  The return at 0xda722d0 has v0 = ?.

- `SubdivIRRegCreaseEdge` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda722e0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda722e0-0xda723f8 (280 bytes).
  It occupies 280 bytes.
  10 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda72300, `lwc1` at 0xda72304, `lwc1` at 0xda72350.
  5 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda72334, `swc1` at 0xda72370, `swc1` at 0xda72394.
  The `blez` branch at 0xda722e0 targets 0xda723f0, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0xda722f8 targets 0xda72338, is taken when (a0 & 0x3) == 0, and falls through when (a0 & 0x3) != 0.
  The `bne` branch at 0xda72330 targets 0xda72300, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0xda7233c targets 0xda723f0, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0xda723e8 targets 0xda72350, is taken when a1(?) != a5(=((a0 << 0x2) + a1)), and falls through when a1(?) == a5(=((a0 << 0x2) + a1)).
  The return at 0xda723f0 has v0 = ?.

- `__glReadTexImage` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda7b0b0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda7b0b0-0xda7b0e4 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0xda7b0c4 loads 4 bytes from a0 (arg0 at entry) +0x3158.
  The `jalr` at 0xda7b0cc calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda7b0dc has v0 = ret(?).

- `DestroySoftContext` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda9ec10 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda9ec10-0xda9ec7c (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xda9ec1c loads 4 bytes from abs 0x1010.
  2 such `sw` accesses store 4 bytes to abs 0x1010, including `sw` at 0xda9ec44, `sw` at 0xda9ec6c.
  The `jalr` at 0xda9ec40 calls __glFreeAttributeState [0xda2ae10] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda9ec4c calls __glFreeBufData [0xda354b0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xda9ec58 calls __glDestroyContext [0xda34a60] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The return at 0xda9ec74 has v0 = ret(__glDestroyContext).

- `__gllc_ResetHistogramEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaab990 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdaab990-0xdaaba04 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xdaab994 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdaab9e8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdaab9f8 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xdaab9bc calls __glDlistAllocOp2 [0xd9f6b60] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdaab9f4 calls __glDlistAppendOp [0xd9f6bf0] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xdab1660, a3=a0 at entry (arg0).
  The `bne` branch at 0xdaab9c4 targets 0xdaab9d8, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xdaab9fc targets 0xdaab9cc and is always taken.
  The return at 0xdaab9d0 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_ResetMinmaxEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaaba10 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdaaba10-0xdaaba84 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xdaaba14 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdaaba68 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdaaba78 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xdaaba3c calls __glDlistAllocOp2 [0xd9f6b60] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdaaba74 calls __glDlistAppendOp [0xd9f6bf0] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xdab16b0, a3=a0 at entry (arg0).
  The `bne` branch at 0xdaaba44 targets 0xdaaba58, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xdaaba7c targets 0xdaaba4c and is always taken.
  The return at 0xdaaba50 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_ReadInstrumentsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaacd00 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdaacd00-0xdaacd74 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xdaacd04 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdaacd58 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdaacd68 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xdaacd2c calls __glDlistAllocOp2 [0xd9f6b60] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdaacd64 calls __glDlistAppendOp [0xd9f6bf0] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xdab2030, a3=a0 at entry (arg0).
  The `bne` branch at 0xdaacd34 targets 0xdaacd48, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xdaacd6c targets 0xdaacd3c and is always taken.
  The return at 0xdaacd40 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__glle_ResetHistogramEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdab1660 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdab1660-0xdab16a4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0xdab1674 loads 4 bytes from abs 0x1358.
  The `lw` at 0xdab1688 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdab1684 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdab169c has v0 = a0+4.

- `__glle_ResetMinmaxEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdab16b0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdab16b0-0xdab16f4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0xdab16c4 loads 4 bytes from abs 0x135c.
  The `lw` at 0xdab16d8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdab16d4 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdab16ec has v0 = a0+4.

- `__glle_ReadInstrumentsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdab2030 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdab2030-0xdab2074 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0xdab2044 loads 4 bytes from abs 0x1460.
  The `lw` at 0xdab2058 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdab2054 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdab206c has v0 = a0+4.

- `__glsplc_ResetHistogramEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdab9ce0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdab9ce0-0xdab9d34 (84 bytes).
  It occupies 84 bytes.
  The `sw` at 0xdab9d24 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdab9d04 calls __glSPDlalloc [0xd974de0] with a0=0x4, a1=0xce, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdab9d0c targets 0xdab9d28, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdab9d20 has v0 = ret(__glSPDlalloc).
  The return at 0xdab9d2c has v0 = ret(__glSPDlalloc).

- `__glsplc_ResetMinmaxEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdab9d40 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdab9d40-0xdab9d94 (84 bytes).
  It occupies 84 bytes.
  The `sw` at 0xdab9d84 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdab9d64 calls __glSPDlalloc [0xd974de0] with a0=0x4, a1=0xcf, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdab9d6c targets 0xdab9d88, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdab9d80 has v0 = ret(__glSPDlalloc).
  The return at 0xdab9d8c has v0 = ret(__glSPDlalloc).

- `__glsplc_ReadInstrumentsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdababd0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdababd0-0xdabac24 (84 bytes).
  It occupies 84 bytes.
  The `sw` at 0xdabac14 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdababf4 calls __glSPDlalloc [0xd974de0] with a0=0x4, a1=0xf2, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdababfc targets 0xdabac18, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdabac10 has v0 = ret(__glSPDlalloc).
  The return at 0xdabac1c has v0 = ret(__glSPDlalloc).

- `__glce_ResetHistogramEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdac5e10 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdac5e10-0xdac5e84 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xdac5e10 loads 4 bytes from abs 0x1358.
  The `lw` at 0xdac5e28 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdac5e40 loads 4 bytes from [0x1010] +0x1b00.
  3 such `sw` accesses store 4 bytes to abs 0x1358, including `sw` at 0xdac5e4c, `sw` at 0xdac5e64, `sw` at 0xdac5e80.
  The `lw` at 0xdac5e58 loads 4 bytes from [0x1010] +0x29c8.
  The `jalr` at 0xdac5e48 calls glResetHistogramEXT with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac5e60 calls glResetHistogramEXT with a0=a0 at entry (arg0), a1=[[0x1010]+10696], a2=?, a3=?.
  The return at 0xdac5e7c has v0 = ret(glResetHistogramEXT).

- `__glce_ResetMinmaxEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdac5e90 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdac5e90-0xdac5f04 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xdac5e90 loads 4 bytes from abs 0x135c.
  The `lw` at 0xdac5ea8 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdac5ec0 loads 4 bytes from [0x1010] +0x1b04.
  3 such `sw` accesses store 4 bytes to abs 0x135c, including `sw` at 0xdac5ecc, `sw` at 0xdac5ee4, `sw` at 0xdac5f00.
  The `lw` at 0xdac5ed8 loads 4 bytes from [0x1010] +0x29cc.
  The `jalr` at 0xdac5ec8 calls glResetMinmaxEXT with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac5ee0 calls glResetMinmaxEXT with a0=a0 at entry (arg0), a1=[[0x1010]+10700], a2=?, a3=?.
  The return at 0xdac5efc has v0 = ret(glResetMinmaxEXT).

- `__glce_ReadInstrumentsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdac7c10 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdac7c10-0xdac7c84 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xdac7c10 loads 4 bytes from abs 0x1460.
  The `lw` at 0xdac7c28 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdac7c40 loads 4 bytes from [0x1010] +0x1c08.
  3 such `sw` accesses store 4 bytes to abs 0x1460, including `sw` at 0xdac7c4c, `sw` at 0xdac7c64, `sw` at 0xdac7c80.
  The `lw` at 0xdac7c58 loads 4 bytes from [0x1010] +0x2ad0.
  The `jalr` at 0xdac7c48 calls glReadInstrumentsSGIX with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdac7c60 calls glReadInstrumentsSGIX with a0=a0 at entry (arg0), a1=[[0x1010]+10960], a2=?, a3=?.
  The return at 0xdac7c7c has v0 = ret(glReadInstrumentsSGIX).

- `__glce_AreTexturesResident` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdac9480 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdac9480-0xdac94d0 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0xdac9488 loads 4 bytes from abs 0x1534.
  The `lw` at 0xdac9490 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdac94a8 loads 4 bytes from [0x1010] +0x2ba4.
  2 such `sw` accesses store 4 bytes to abs 0x1534, including `sw` at 0xdac94b0, `sw` at 0xdac94c0.
  The `jalr` at 0xdac94ac calls glAreTexturesResident with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac94c8 has v0 = ?.

- `__glce_DeleteTextures` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdac94d0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdac94d0-0xdac951c (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xdac94d8 loads 4 bytes from abs 0x1538.
  The `lw` at 0xdac94e0 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdac94f8 loads 4 bytes from [0x1010] +0x2ba8.
  2 such `sw` accesses store 4 bytes to abs 0x1538, including `sw` at 0xdac9500, `sw` at 0xdac950c.
  The `jalr` at 0xdac94fc calls glDeleteTextures with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac9514 has v0 = ret(glDeleteTextures).

- `__glce_GenTextures` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdac9520 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdac9520-0xdac956c (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xdac9528 loads 4 bytes from abs 0x153c.
  The `lw` at 0xdac9530 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdac9548 loads 4 bytes from [0x1010] +0x2bac.
  2 such `sw` accesses store 4 bytes to abs 0x153c, including `sw` at 0xdac9550, `sw` at 0xdac955c.
  The `jalr` at 0xdac954c calls glGenTextures with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac9564 has v0 = ret(glGenTextures).

- `__glce_IsTexture` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdac9570 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdac9570-0xdac95c0 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0xdac9578 loads 4 bytes from abs 0x1540.
  The `lw` at 0xdac9580 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdac9598 loads 4 bytes from [0x1010] +0x2bb0.
  2 such `sw` accesses store 4 bytes to abs 0x1540, including `sw` at 0xdac95a0, `sw` at 0xdac95b0.
  The `jalr` at 0xdac959c calls glIsTexture with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac95b8 has v0 = ?.

- `__glOdysseyElementsInt_V3F` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaccab0 (n32).
  Takes elements picked through an index array and writes them to the address 0x10000, held in v0
  from the prologue (0xdaccac4). a1 walks an array of 32-bit indices and a2 is the base of 12-byte elements: per pass the index
  loaded at 0xdaccad8 is multiplied by 0xc (set at 0xdaccad0) and added to a2, and the words at offsets 0, 4
  and 8 are read at 0xdaccae8, 0xdaccaec and 0xdaccaf0.
  Every pass emits four words via v0: the constant 0xffffffff8080cc03 (low 32 bits, `sw` at 0xdaccaf4),
  followed by the three element words as loaded (`sw`s at 0xdaccaf8, 0xdaccafc, 0xdaccb00).
  The `bne` at 0xdaccb04 loops again while a0, decremented at the start of the pass, is nonzero; a1 advances 4
  bytes in the delay slot at 0xdaccb08. A zero a0 at entry wraps and loops about 2^32 times. The return
  at 0xdaccb1c leaves v0 at 0x10000, the address constant.
  Inferred: four consecutive stores to one fixed address read as a header word then three data words
  pushed into a hardware port, since the access list marks 0x10000 as an address outside the file; the
  linked board windows (0x110000 and 0x120000) do not include it.
  Unknown: the register behind the address 0x10000, which a board register table would name.
  Evidence grade: inferred.

- `glBlendColorEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacde00 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacde00-0xdacde0c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacde00 loads 4 bytes from abs 0x12f0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacde04).

- `glBlendEquationEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacde0c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacde0c-0xdacde18 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacde0c loads 4 bytes from abs 0x12f4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacde10).

- `glTexSubImage1DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacde24 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacde24-0xdacde30 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacde24 loads 4 bytes from abs 0x12fc.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacde28).

- `glTexSubImage2DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacde30 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacde30-0xdacde3c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacde30 loads 4 bytes from abs 0x1300.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacde34).

- `glConvolutionFilter1DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacde3c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacde3c-0xdacde48 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacde3c loads 4 bytes from abs 0x1304.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacde40).

- `glConvolutionFilter2DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacde48 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacde48-0xdacde54 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacde48 loads 4 bytes from abs 0x1308.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacde4c).

- `glConvolutionParameterfEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacde54 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacde54-0xdacde60 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacde54 loads 4 bytes from abs 0x130c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacde58).

- `glConvolutionParameterfvEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacde60 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacde60-0xdacde6c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacde60 loads 4 bytes from abs 0x1310.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacde64).

- `glConvolutionParameteriEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacde6c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacde6c-0xdacde78 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacde6c loads 4 bytes from abs 0x1314.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacde70).

- `glConvolutionParameterivEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacde78 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacde78-0xdacde84 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacde78 loads 4 bytes from abs 0x1318.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacde7c).

- `glCopyConvolutionFilter1DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacde84 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacde84-0xdacde90 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacde84 loads 4 bytes from abs 0x131c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacde88).

- `glCopyConvolutionFilter2DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacde90 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacde90-0xdacde9c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacde90 loads 4 bytes from abs 0x1320.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacde94).

- `glSeparableFilter2DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacdecc (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacdecc-0xdacded8 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacdecc loads 4 bytes from abs 0x1334.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacded0).

- `glHistogramEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacdf20 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacdf20-0xdacdf2c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacdf20 loads 4 bytes from abs 0x1350.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacdf24).

- `glMinmaxEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacdf2c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacdf2c-0xdacdf38 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacdf2c loads 4 bytes from abs 0x1354.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacdf30).

- `glResetHistogram` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacdf38 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacdf38-0xdacdf44 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacdf38 loads 4 bytes from abs 0x1358.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacdf3c).

- `glResetMinmax` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacdf44 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacdf44-0xdacdf50 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacdf44 loads 4 bytes from abs 0x135c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacdf48).

- `glTexImage3DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacdf50 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacdf50-0xdacdf5c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacdf50 loads 4 bytes from abs 0x1360.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacdf54).

- `glTexSubImage3DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacdf5c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacdf5c-0xdacdf68 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacdf5c loads 4 bytes from abs 0x1364.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacdf60).

- `glArrayElementEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacdf68 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacdf68-0xdacdf74 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacdf68 loads 4 bytes from abs 0x1368.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacdf6c).

- `glGetPointervEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacdf98 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacdf98-0xdacdfa4 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacdf98 loads 4 bytes from abs 0x1378.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacdf9c).

- `glBindTexture` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacdfe0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacdfe0-0xdacdfec (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacdfe0 loads 4 bytes from abs 0x1390.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacdfe4).

- `glBindTextureEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacdfe0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacdfe0-0xdacdfec (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacdfe0 loads 4 bytes from abs 0x1390.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacdfe4).

- `glPrioritizeTextures` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace010 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdace010-0xdace01c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdace010 loads 4 bytes from abs 0x13a0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdace014).

- `glPrioritizeTexturesEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace010 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdace010-0xdace01c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdace010 loads 4 bytes from abs 0x13a0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdace014).

- `glCopyTexImage1DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace01c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdace01c-0xdace028 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdace01c loads 4 bytes from abs 0x13a4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdace020).

- `glCopyTexImage2DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace028 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdace028-0xdace034 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdace028 loads 4 bytes from abs 0x13a8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdace02c).

- `glCopyTexSubImage1DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace034 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdace034-0xdace040 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdace034 loads 4 bytes from abs 0x13ac.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdace038).

- `glCopyTexSubImage2DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace040 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdace040-0xdace04c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdace040 loads 4 bytes from abs 0x13b0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdace044).

- `glCopyTexSubImage3DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace04c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdace04c-0xdace058 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdace04c loads 4 bytes from abs 0x13b4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdace050).

- `glColorTableSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace148 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdace148-0xdace154 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdace148 loads 4 bytes from abs 0x1408.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdace14c).

- `glColorTableParameterfvSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace154 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdace154-0xdace160 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdace154 loads 4 bytes from abs 0x140c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdace158).

- `glColorTableParameterivSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace160 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdace160-0xdace16c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdace160 loads 4 bytes from abs 0x1410.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdace164).

- `glCopyColorTableSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace16c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdace16c-0xdace178 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdace16c loads 4 bytes from abs 0x1414.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdace170).

- `glPointParameterfSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace208 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdace208-0xdace214 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdace208 loads 4 bytes from abs 0x1448.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdace20c).

- `glPointParameterfvSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace214 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdace214-0xdace220 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdace214 loads 4 bytes from abs 0x144c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdace218).

- `glReadInstrumentsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace250 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdace250-0xdace25c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdace250 loads 4 bytes from abs 0x1460.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdace254).

- `__glOdyim_Vertex2d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace5c0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdace5c0-0xdace5e4 (36 bytes).
  It occupies 36 bytes.
  The `sw` at 0xdace5d4 stores 4 bytes to abs 0x10000.
  2 such `swc1` accesses store 4 bytes to abs 0x10000, including `swc1` at 0xdace5d8, `swc1` at 0xdace5e0.
  The return at 0xdace5dc has v0 = 0x10000.

- `__glOdyim_Vertex3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace7c0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdace7c0-0xdace7ec (44 bytes).
  It occupies 44 bytes.
  The `sw` at 0xdace7d8 stores 4 bytes to abs 0x10000.
  3 such `swc1` accesses store 4 bytes to abs 0x10000, including `swc1` at 0xdace7dc, `swc1` at 0xdace7e0, `swc1` at 0xdace7e8.
  The return at 0xdace7e4 has v0 = 0x10000.

- `__glOdyim_Vertex4sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaced00 (n32).
  Straight-line routine that takes four halfword values from the array at `a0` and writes a header word and
  those four values, one after another as 4-byte words, to the single absolute address 0x10000.
  The `lh` loads at 0xdaced00, 0xdaced04, 0xdaced08 and 0xdaced0c read `a0` +0x0, +0x2, +0x4 and +0x6
  into a4 to a7. v0 is set to 0x10000 at 0xdaced38. The `sw` at 0xdaced3c writes the header word
  0xffffffff8080d004, which t0 receives at 0xdaced30 and 0xdaced34. Next the `sw` at 0xdaced40,
  0xdaced44 and 0xdaced48 write the first three loaded values to the same address, and the fourth goes
  out in the `sw` at 0xdaced50, in the delay slot of the `jr ra` at 0xdaced4c. Each loaded value is
  stored as the register holds it, with no arithmetic in between.
  There is no branch and no call, so every instruction runs on each entry, and the routine returns with v0
  equal to 0x10000.
  Inferred: the four values are also converted from integer to single-precision float into f12 to f15
  between the loads and the stores, because the routine contains four moves to the floating-point unit
  and four integer-to-float conversions; the access extraction ignores them.
  Unknown: the device-side result of the five word stores to 0x10000; the linked board windows at 0x110000
  and 0x120000 leave that address without a register row, so a row for 0x10000 would answer it.
  Evidence grade: inferred.

- `__glOdyim_Vertex2dv_smallw` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacee00 (n32).
  Reads a pair of doubles through a0 (`ldc1` at 0xdacee00 and 0xdacee08), narrows them into $f12 and $f13,
  and tests the pair against records A and B. Two `lw` loads at 0xdacee10 and 0xdacee14 fetch their
  pointers from the fixed addresses 0x1020 and 0x1024.
  Inferred: the two coprocessor-3 branch lookalikes after the loads at 0xdacee28 are multiply-adds by
  their field layout, so $f8 ends as A+0x3c plus $f12 times A+0x30 plus $f13 times A+0x34. The `swc1`
  at 0xdacee38 writes that value over B+0x8 whichever way the tests go; just before, it was multiplied by
  the old B+0x8 into $f7.
  Two exits lead to the tail path at 0xdacee70. The `bc1f` at 0xdacee48 takes it if $f7 is negative
  (`c.ueq.s` at 0xdacee40 against $f7's absolute value). The `bc1t` at 0xdacee54 takes it if the
  absolute value of the sum is below B+0x0 or unordered; the compare sits in the delay slot at 0xdacee4c.
  Past both, v0 becomes 0x10000 (constant at 0xdacee5c) and the routine stores three 4-byte values at that
  address: 0xffffffff8080c801 at 0xdacee60 (0xffffffff80800000 at 0xdacee50, plus 0xc801 from the `ori`
  in the delay slot at 0xdacee58), $f12 at 0xdacee64, and $f13 at 0xdacee6c in the delay slot of the
  return at 0xdacee68. v0 is left at 0x10000.
  The tail path reads t9 from B+0x20 (`lw` at 0xdacee70), zeroes $f14, puts 0x3f800000 in $f15 and jumps
  at 0xdacee7c; a0 to a3 are untouched.
  Unknown: the routine at the end of that jump, because the pointer in record B is set at run time.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): which device register sits at 0x10000, which neither linked window (0x110000, 0x120000) covers.
  Evidence grade: inferred.

- `__glOdyim_Vertex2f_smallw` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaceec0 (n32).
  Checks a vertex held in $f12 and $f13 twice against records A and B (pointers at fixed addresses 0x1020
  and 0x1024, `lw` at 0xdaceec0 and 0xdaceec4); a pass stores three values to 0x10000, a fail jumps
  through a pointer in B.
  Inferred: the two words ahead of the store at 0xdaceee8 are multiply-adds by their field layout,
  giving $f8 = A+0x3c plus $f12 times A+0x30 plus $f13 times A+0x34. That sum goes to B+0x8 at 0xdaceee8
  on every path, after being multiplied by the old B+0x8 into $f7.
  The `bc1f` at 0xdaceef8 is the first check: tail path at 0xdacef20 when $f7 is negative (`c.ueq.s` at
  0xdaceef0 against its absolute value). The `bc1t` at 0xdacef04 is the second: tail path when the
  sum's absolute value is below B+0x0 or unordered, from the compare in the delay slot at 0xdaceefc.
  Surviving both, v0 is set to 0x10000 (0xdacef0c) and three 4-byte stores follow: 0xffffffff8080c801 at
  0xdacef10 (ori of 0xc801 in the delay slot at 0xdacef08), $f12 at 0xdacef14, $f13 at 0xdacef1c in the
  return's delay slot at 0xdacef18; v0 comes back as 0x10000.
  The tail path loads t9 from B+0x20 (0xdacef20), zeroes $f14, sets $f15 to 0x3f800000 and jumps at
  0xdacef2c, a0 to a3 as they came in.
  Unknown: the routine behind the `jr t9` at 0xdacef2c, since record B is filled at run time.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): the register behind address 0x10000; it lies outside both linked windows (0x110000, 0x120000).
  Evidence grade: inferred.

- `__glOdyim_Vertex2fv_smallw` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacef40 (n32).
  Pulls two single-precision coordinates from a0+0x0 and a0+0x4 into $f12 and $f13 (`lwc1` at 0xdacef40
  and 0xdacef44) and gates them with two checks against records A and B, whose pointers come from fixed
  addresses 0x1020 and 0x1024 (`lw` at 0xdacef48 and 0xdacef4c).
  Inferred: the pair of words ahead of the `swc1` at 0xdacef70 are multiply-adds by their field layout,
  so $f8 is A+0x3c plus $f12 times A+0x30 plus $f13 times A+0x34. That store puts the sum in B+0x8 on
  every path; it has just been multiplied by the old B+0x8 to give the value the first check reads.
  The `bc1f` at 0xdacef80 jumps to the tail path at 0xdacefa8 when that product is negative (`c.ueq.s`
  at 0xdacef78 against its absolute value). The `bc1t` at 0xdacef8c jumps there when the absolute value
  of the sum is below the word at B+0x0 or unordered with it, per the compare in the delay slot at
  0xdacef84.
  If neither jumps, v0 is set to 0x10000 (0xdacef94) and the routine stores three 4-byte values there:
  0xffffffff8080c801 at 0xdacef98 (its `ori` of 0xc801 is in the delay slot at 0xdacef90), $f12 at
  0xdacef9c, and $f13 at 0xdacefa4 in the return's delay slot. v0 returns as 0x10000.
  The tail path loads t9 from B+0x20 (0xdacefa8), leaves $f14 zero, sets $f15 to 0x3f800000 in the delay
  slot of the jump at 0xdacefb4, and passes a0 to a3 along unchanged.
  Unknown: the routine behind that `jr t9`, because record B is filled at run time.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): which register 0x10000 addresses; the linked windows (0x110000 and 0x120000) leave it out.
  Evidence grade: inferred.

- `__glOdyim_Vertex2sv_smallw` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacf200 (n32).
  Widens two halfwords from a0 and a0+2 (loaded at 0xdacf200 and 0xdacf204) into the single floats
  $f12 and $f13 and subjects them to two floating-point tests; passing both stores three words to
  abs 0x10000, while failing either sends control through the pointer at second+0x20.
  Its first and second blocks are the memory behind the words at abs 0x1020 and abs 0x1024, loaded
  at 0xdacf218 and 0xdacf21c.
  $f8 is loaded from first+0x3c (0xdacf224) and given two multiply-add terms, $f12 times
  first[+0x30] and $f13 times first[+0x34]; $f7 is that sum times the old second[+0x8] (loaded at
  0xdacf230) and the `swc1` at 0xdacf240 stores the sum itself to second+0x8 on every call.
  Test one: the `c.ueq.s` at 0xdacf248 compares |$f7| with $f7 and the `bc1f` at 0xdacf250 branches
  to 0xdacf278 when $f7 is negative.
  Test two sits in that branch's delay slot: the `c.ult.s` at 0xdacf254 compares |sum| with
  second[+0x0] (loaded at 0xdacf22c), and the `bc1t` at 0xdacf25c branches to 0xdacf278 if |sum| is
  lower or either side is a NaN.
  Reaching 0xdacf264 means both passed: t0 has become 0xffffffff8080c800 (0xdacf258, 0xdacf260), v0
  is 0x10000, the `sw` at 0xdacf268 writes t0 to abs 0x10000, the `sw` at 0xdacf26c writes the first
  halfword widened to a word, and the `sw` at 0xdacf274 in the delay slot of the return at 0xdacf270
  writes the second; v0 is what the routine returns.
  The other target, 0xdacf278, loads t9 from second+0x20, clears $f14, sets t0 to 0x3f800000
  (0xdacf280) and jumps at 0xdacf284 with that value in $f15 from the delay slot; a0 to a3 are as
  received and a4, a5 hold the two halfwords.
  Unknown: where the `jr t9` at 0xdacf284 ends up, since the +0x20 pointer of the second block is
  not followed by the tool; following the pointer at runtime would settle it.
  Unknown: the device behind abs 0x10000, if any; the linked mmio rows cover only 0x110000 and
  0x120000.
  Test: the mapping-address read in "Test that settles the rest" at the top of this file; a client mapping that starts at 0 makes 0x10000 board +0x110000.
  Evidence grade: established.

- `__glOdyim_Vertex3d_smallw` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacf2c0 (n32).
  Takes its three double arguments from $f12, $f13 and $f14, narrows them to singles, and applies
  two floating-point tests to them against two parameter blocks; both passing means a control word
  and the three floats go to abs 0x10000, while either failing means a jump through second+0x20.
  Abs 0x1020 and abs 0x1024 hold the addresses of the first and second blocks, loaded at 0xdacf2cc
  and 0xdacf2d0.
  Starting at first[+0x3c] (loaded at 0xdacf2d8), three multiply-adds add $f12*first[+0x30],
  $f13*first[+0x34] and $f14*first[+0x38]; $f7 becomes the sum times the old second[+0x8], and the
  `swc1` at 0xdacf2fc stores the sum to second+0x8 on every call.
  Test one is the `c.ueq.s` at 0xdacf304 comparing |$f7| with $f7, with the `bc1f` at 0xdacf30c
  going to 0xdacf338 when $f7 is negative.
  Test two is placed in that branch's delay slot: the `c.ult.s` at 0xdacf310 compares |sum| with
  second[+0x0] (loaded at 0xdacf2e4), and the `bc1t` at 0xdacf318 also goes to 0xdacf338 if |sum| is
  under it or the pair cannot be ordered.
  When both fall through, the block at 0xdacf320 sets v0 to 0x10000, t0 has become
  0xffffffff8080cc03 (0xdacf314, plus the `ori` in the delay slot at 0xdacf31c), and the `sw` at
  0xdacf324 writes it to abs 0x10000; the `swc1` at 0xdacf328 and 0xdacf32c then write $f12 and
  $f13, and the one at 0xdacf334, in the delay slot of the return at 0xdacf330, writes $f14; the
  value returned is 0x10000 in v0.
  The block at 0xdacf338 reads t9 from second+0x20, sets t0 to 0x3f800000 and copies it into $f15 in
  the delay slot of the `jr t9` at 0xdacf340, with a0 to a3 and $f12 to $f14 unchanged.
  Unknown: the place the `jr t9` at 0xdacf340 lands, because the +0x20 pointer of the second block
  stays unresolved; capturing the pointer at runtime would settle it.
  Unknown: whether a device answers abs 0x10000; the linked mmio rows cover only the windows at
  0x110000 and 0x120000.
  Test: the mapping-address read in "Test that settles the rest" at the top of this file; a client mapping that starts at 0 makes 0x10000 board +0x110000.
  Evidence grade: established.

- `__glOdyim_Vertex3dv_smallw` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacf380 (n32).
  Double-precision vertex fast path for the 6.5.30 library: two float checks gate a write of the vertex to
  absolute 0x10000; a failure leaves through a jump to a stored handler.
  The `ldc1` loads at 0xdacf380, 0xdacf388 and 0xdacf390 read three doubles from a0, +0x8 and +0x10 and are
  each followed by a narrowing to single precision (`$f12` to `$f14`).
  Reads at 0xdacf398 and 0xdacf39c fetch the pointer in absolute 0x1020 and the one in 0x1024, which locate two
  structures. `$f8` is the +0x3c word of the first plus the narrowed floats times its words at +0x30, +0x34 and
  +0x38. Multiplying the old +0x8 word of the second structure by `$f8` precedes the `swc1` at 0xdacf3c8, which
  then stores `$f8` into that +0x8 slot.
  Check one (`c.ueq.s` at 0xdacf3d0, `bc1f` at 0xdacf3d8) branches to the handler jump (`jr` at 0xdacf40c) when the
  product is negative.
  Check two compares the absolute value of `$f8` with the second structure's +0x0 word: the `c.ult.s` at
  0xdacf3dc is a delay-slot instruction that runs on both paths, and the `bc1t` at 0xdacf3e4 branches to the same
  place when `$f8` is smaller or unordered.
  When neither check fires, the `ori` at 0xdacf3e8 completes t0 = 0xffffffff8080cc03, v0 becomes 0x10000
  (0xdacf3ec), and the `sw` at 0xdacf3f0 stores t0 at that address; `$f12` and `$f13` follow (0xdacf3f4,
  0xdacf3f8), `$f14` rides in the delay slot (0xdacf400) of the `jr ra` at 0xdacf3fc, and v0 = 0x10000 comes back.
  On the other path t9 is loaded from +0x20 of the second structure (0xdacf404), t0 is set to 0x3f800000
  (0xdacf408), and the `jr` at 0xdacf40c jumps with a0 intact and `$f15` loaded from t0 in the delay slot.
  Unknown: the address reached by the `jr` at 0xdacf40c; t9 comes from memory, and the +0x20 word during a live
  run would give it.
  Unknown: the device at absolute 0x10000, which lies below the linked windows at 0x110000 and 0x120000; a
  datasheet with the full address decode would settle it.
  Evidence grade: established.

- `__glOdyim_Vertex3fv_smallw` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacf4c0 (n32).
  Short vertex fast path for a three-float array at a0: two float tests decide between writing the vertex to
  the absolute address 0x10000 and a tail call.
  The `lwc1` loads at 0xdacf4c0, 0xdacf4c4 and 0xdacf4c8 supply `$f12` to `$f14` (a0, +0x4, +0x8), and the
  words at absolute 0x1020 and 0x1024 (0xdacf4cc, 0xdacf4d0) are base pointers to two structures. Three
  multiply-adds form `$f8` as the first structure's +0x3c word plus the floats times its +0x30, +0x34 and +0x38
  words. The `swc1` at 0xdacf4fc stores this sum to +0x8 of the second structure; before that the old word
  there was multiplied by the sum.
  The first test (`c.ueq.s` at 0xdacf504) lets the `bc1f` at 0xdacf50c jump to 0xdacf538 when that product is
  ordered and negative. The second compares the absolute sum with the second structure's +0x0 word: the
  `c.ult.s` is in the delay slot at 0xdacf510, and the `bc1t` at 0xdacf518 also jumps to 0xdacf538 when the
  sum is smaller or unordered.
  With both branches untaken, the `ori` at 0xdacf51c completes t0 = 0xffffffff8080cc03, v0 becomes 0x10000
  (0xdacf520), and the `sw` at 0xdacf524 writes t0 there. The `swc1` at 0xdacf528 and 0xdacf52c send `$f12` and
  `$f13` to the same address and the delay slot at 0xdacf534 sends `$f14`, around the `jr ra` at 0xdacf530
  that returns 0x10000.
  The fallback at 0xdacf538 loads t9 from +0x20 of the second structure, sets t0 = 0x3f800000 (0xdacf53c), and
  jumps through t9 at 0xdacf540 with `$f15` set from t0 in the delay slot.
  Inferred: 0x3f800000 is the single-precision encoding of one, so the tail call passes one in `$f15`.
  Unknown: the device behind the absolute address 0x10000, since neither linked window (0x110000, 0x120000)
  contains it; a register table for that address would settle it.
  Unknown: the target of the `jr t9` at 0xdacf540, which comes from the +0x20 word of the second structure;
  a run that reads that word would settle it.
  Evidence grade: inferred.

- `__glOdyim_Vertex3i_smallw` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacf580 (n32).
  Integer-vertex fast path: a0, a1 and a2 are converted to single precision for two float tests, and when both
  pass the raw integers are posted to the absolute address 0x10000; otherwise the call is tail-jumped.
  Two base pointers, one per structure, are read first from the absolute words 0x1020 and 0x1024 (0xdacf598, 0xdacf59c). Three
  multiply-adds build `$f8` from the first structure's +0x3c word plus the converted values times its +0x30,
  +0x34 and +0x38 words, and the `swc1` at 0xdacf5c8 stores that sum to +0x8 of the second structure (the old
  word there has just been multiplied by the sum).
  The first test (`c.ueq.s` at 0xdacf5d0) sends the `bc1f` at 0xdacf5d8 to 0xdacf604 when that product is
  ordered and negative. The `c.ult.s` in the delay slot at 0xdacf5dc compares the absolute sum with the second
  structure's +0x0 word, and the `bc1t` at 0xdacf5e4 goes to the same target when the sum is smaller or
  unordered.
  When both branches fall through, the `ori` at 0xdacf5e8 completes t0 = 0xffffffff8080cc02, v0 is set to
  0x10000 (0xdacf5ec) and the `sw` at 0xdacf5f0 writes t0 there. Then the `sw` at 0xdacf5f4 and 0xdacf5f8 write
  a0 and a1 as received, and a2 follows in the delay slot at 0xdacf600 of the `jr ra` at 0xdacf5fc, which returns
  0x10000.
  The other path loads t9 from +0x20 of the second structure (0xdacf604), sets t0 = 0x3f800000 (0xdacf608) and
  jumps through t9 at 0xdacf60c; the delay slot sets `$f15` from t0.
  Inferred: the bit pattern 0x3f800000 encodes one in single precision, so `$f15` holds one for the callee.
  Unknown: the device behind 0x10000 that takes the four stores, since no linked window reaches that address;
  a probe of that address on a running system would settle it.
  Unknown: the callee reached by the tail jump at 0xdacf60c, because its address is the +0x20 word of the
  second structure, which is not resolved here; its run-time value is the open point.
  Evidence grade: inferred.

- `__glOdyim_Vertex2f_mag` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacffc0 (n32).
  Takes a vertex that is already in $f12 and $f13 and runs it through three tests against records A and
  B, whose pointers are the words at fixed addresses 0x1020 and 0x1024 (`lw` at 0xdacffc0 and 0xdacffc4).
  A pass writes a three-value sequence to one address; a failure jumps through a pointer in B.
  Inferred: the pair of words just before the store at 0xdacffe8 are multiply-adds by their field layout (the
  same layout shows as a multiply-add later in this routine), which makes $f8 equal to A+0x3c plus $f12
  times A+0x30 plus $f13 times A+0x34. The `swc1` at 0xdacffe8 writes that sum to B+0x8. A product of the
  sum with the old B+0x8 and a second product with B+0x4 are formed first, and both products are replaced
  by their absolute values.
  Test one: the `bc1f` at 0xdad0000 reaches the tail path at 0xdad005c when the first product is negative
  (`c.ueq.s` at 0xdacfff8). Test two uses A+0xc plus $f12 times A+0x0 plus $f13 times A+0x4, with A+0xc
  loaded in the delay slot at 0xdad0004; the `bc1t` at 0xdad0020 reaches the tail path when the
  second product is below that value's absolute value or unordered (`c.ult.s` at 0xdad0018). Test three
  is the same with A+0x1c (delay slot at 0xdad0024), A+0x10 and A+0x14, the compare at 0xdad0038 and the
  `bc1t` at 0xdad0040.
  If all three fall through, three 4-byte stores go to absolute 0x10000 (v0 set at 0xdad0048): the constant
  0xffffffff8080c801 at 0xdad004c (the `ori` of 0xc801 at 0xdad0044 is in the delay slot of the third
  branch), $f12 at 0xdad0050 and $f13 at 0xdad0058 in the return's delay slot. v0 stays 0x10000.
  The tail path loads t9 from B+0x20 (0xdad005c), clears $f14, sets $f15 to 0x3f800000 and jumps at
  0xdad0068 with a0 to a3 as received.
  Unknown: the target of the indirect jump at 0xdad0068, which depends on a word in record B set at run time.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): the device register at 0x10000; no linked window row (0x110000, 0x120000) includes that address.
  Evidence grade: inferred.

- `__glOdyim_Vertex2fv_mag` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad0080 (n32).
  Reads a vertex's two single-precision coordinates from a0+0x0 and a0+0x4 into $f12 and $f13
  (`lwc1` at 0xdad0080 and 0xdad0084) and puts it through three tests against records A and B, whose
  pointers are the words at fixed addresses 0x1020 and 0x1024 (`lw` at 0xdad0088 and 0xdad008c).
  Inferred: the two words before the store at 0xdad00b0 are multiply-adds by their field layout, so $f8
  becomes A+0x3c plus $f12 times A+0x30 plus $f13 times A+0x34. The `swc1` at 0xdad00b0 stores it to
  B+0x8 on all paths; the routine has already multiplied it by the old B+0x8 and by B+0x4, and replaced
  both products with absolute values.
  First test: the `bc1f` at 0xdad00c8 goes to the tail path at 0xdad0124 if the first product is negative
  (`c.ueq.s` at 0xdad00c0). Second and third tests compare the second product with the absolute value of
  A+0xc plus $f12 times A+0x0 plus $f13 times A+0x4 (A+0xc loaded in the delay slot at 0xdad00cc) and then
  of A+0x1c plus $f12 times A+0x10 plus $f13 times A+0x14 (delay slot at 0xdad00ec); the `bc1t` at
  0xdad00e8 or 0xdad0108 goes to the tail path when the product is below that value or unordered
  (`c.ult.s` at 0xdad00e0 and 0xdad0100).
  Falling through all three, v0 is set to 0x10000 (0xdad0110) and the routine stores three 4-byte values
  there: 0xffffffff8080c801 at 0xdad0114 (its `ori` of 0xc801 is in the delay slot at 0xdad010c), $f12 at
  0xdad0118 and $f13 at 0xdad0120 in the return's delay slot. v0 stays 0x10000.
  The tail path reads t9 from B+0x20 (0xdad0124), clears $f14, sets $f15 to 0x3f800000 and jumps at
  0xdad0130 with a0 to a3 untouched and $f12 and $f13 holding the two loaded coordinates.
  Unknown: the callee of the jump at 0xdad0130, whose pointer lives in record B and is set at run time.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): the register at address 0x10000, absent from the linked windows at 0x110000 and 0x120000.
  Evidence grade: inferred.

- `__glOdyim_Vertex3dv_mag` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad05c0 (n32).
  Loads three doubles from a0, a0+0x8 and a0+0x10 (`ldc1` at 0xdad05c0 and the two that follow),
  narrows them to the single floats $f12 to $f14, runs three floating-point tests against two
  parameter blocks, and either writes four words to abs 0x10000 or jumps through the pointer at
  second+0x20.
  The first and second blocks come from the words at abs 0x1020 and abs 0x1024, loaded at 0xdad05d8
  and 0xdad05dc.
  $f8 begins as first[+0x3c] (loaded at 0xdad05e4) and receives $f12*first[+0x30], $f13*first[+0x34]
  and $f14*first[+0x38]; the `swc1` at 0xdad0608 writes the sum to second+0x8 on every call, and $f7
  and $f8 are the sum times the old second[+0x8] and, in absolute value, times second[+0x4].
  Sign check: `c.ueq.s` at 0xdad0618 on |$f7| against $f7, then the `bc1f` at 0xdad0620 goes to
  0xdad0690 when $f7 is negative.
  Two more groups build $f9 as first[+0xc] + $f12*first[+0x0] + $f13*first[+0x4] + $f14*first[+0x8]
  and as first[+0x1c] + $f12*first[+0x10] + $f13*first[+0x14] + $f14*first[+0x18], and compare |$f8|
  with |$f9| in the `c.ult.s` at 0xdad0640 and 0xdad0668; the `bc1t` at 0xdad0648 and 0xdad0670 go
  to 0xdad0690 when |$f8| is the lower or the pair is not comparable.
  With none taken, t0 becomes 0xffffffff8080cc03 (0xdad066c, plus the `ori` in the delay slot at
  0xdad0674) and v0 is set to 0x10000 at 0xdad0678; the `sw` at 0xdad067c writes t0 to abs 0x10000,
  the `swc1` at 0xdad0680 and 0xdad0684 write $f12 and $f13, and the `swc1` at 0xdad068c in the
  delay slot of the return at 0xdad0688 writes $f14; v0 is returned.
  The block at 0xdad0690 reads t9 from second+0x20, puts 0x3f800000 in t0 and moves it to $f15 in
  the delay slot of the `jr t9` at 0xdad0698, leaving a0 to a3 and $f12 to $f14 as they stand.
  Unknown: the address the `jr t9` at 0xdad0698 transfers to; the pointer at second+0x20 is
  unresolved and a trace at the call would settle it.
  Unknown: whether a device is behind abs 0x10000, since the linked mmio rows list only 0x110000 and
  0x120000.
  Evidence grade: established.

- `__glOdyim_Vertex3f_mag` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad06c0 (n32).
  Entry point for a vertex whose three float coordinates arrive in `$f12` to `$f14` (a0 is not an input): it
  writes them to the absolute address 0x10000 if three float tests pass, and otherwise tail-jumps to a handler.
  The routine reads the words at absolute 0x1020 and 0x1024 (0xdad06c0, 0xdad06c4) as base pointers to two
  structures, and three multiply-adds make `$f8` from the first structure's +0x3c word plus the coordinates
  times its +0x30, +0x34 and +0x38 words. The `swc1` at 0xdad06f0 stores that sum to +0x8 of the second
  structure, after the same sum has been multiplied into the old +0x8 word and into the +0x4 word.
  The product with the old +0x8 word feeds the first test (`c.ueq.s` at 0xdad0700): the `bc1f` at 0xdad0708
  jumps to 0xdad0778 when that product is ordered and negative.
  The product with the +0x4 word, made absolute, is compared (`c.ult.s` at 0xdad0728 and 0xdad0750) with the
  absolute value of a weighted sum built the same way from the first structure's words +0x0 to +0xc, then +0x10
  to +0x1c. The `bc1t` at 0xdad0730 or 0xdad0758 jumps to 0xdad0778 when the scaled value is smaller or
  unordered.
  If none of the three branches is taken, t0 is completed as 0xffffffff8080cc03 (0xdad0754, 0xdad075c) and v0
  becomes 0x10000 (0xdad0760). The `sw` at 0xdad0764 writes t0 to that address, the `swc1` at 0xdad0768 and
  0xdad076c add `$f12` and `$f13`, and `$f14` goes in the delay slot (0xdad0774) of the `jr ra` at 0xdad0770,
  which returns v0 = 0x10000.
  The branch target 0xdad0778 loads t9 from +0x20 of the second structure, puts 0x3f800000 in t0 (0xdad077c),
  and leaves by the `jr` at 0xdad0780 with `$f15` set from t0 in its delay slot (0xdad0784).
  Unknown: the destination of the `jr` at 0xdad0780, since t9 comes from memory; the +0x20 word read during a
  live run would name it.
  Unknown: the hardware reached by the stores to 0x10000; the linked board windows begin at 0x110000 and
  0x120000, so a datasheet that maps 0x10000 would name it.
  Evidence grade: established.

- `__glOdyim_Vertex3fv_mag` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad07c0 (n32).
  Takes a vertex as an array of three floats at a0 and hands it to the absolute address 0x10000 only when three
  float tests pass; every other outcome ends in a tail call.
  The `lwc1` loads at 0xdad07c0, 0xdad07c4 and 0xdad07c8 fill `$f12` to `$f14` from a0, +0x4 and +0x8, and
  nothing rewrites those registers before the stores. The pointer word at absolute 0x1020 locates a first structure and the one at 0x1024 a second (loaded at 0xdad07cc and 0xdad07d0). Three multiply-adds make `$f8` from the first structure's
  +0x3c word plus the floats times its +0x30, +0x34 and +0x38 words, and the `swc1` at 0xdad07fc stores that
  sum to +0x8 of the second structure.
  Test one (`c.ueq.s` at 0xdad080c) multiplies the sum by the old +0x8 word, and the `bc1f` at 0xdad0814
  leaves for 0xdad0884 when the product is ordered and negative. Tests two and three scale the sum by the second
  structure's +0x4 word, take the absolute value, and compare it (`c.ult.s` at 0xdad0834 and 0xdad085c) with the
  absolute value of a sum from the first structure's words +0x0 to +0xc, then +0x10 to +0x1c; the `bc1t` at
  0xdad083c or 0xdad0864 leaves for 0xdad0884 when the scaled value is smaller or unordered.
  With none taken, the `ori` at 0xdad0868 completes t0 = 0xffffffff8080cc03, v0 is set to 0x10000, the `sw` at
  0xdad0870 writes t0 there, and the `swc1` at 0xdad0874, 0xdad0878 and (in the delay slot of the `jr ra` at
  0xdad087c) 0xdad0880 write the three floats to the same address; v0 = 0x10000 is returned.
  The tail call is a `jr t9` at 0xdad088c, with t9 loaded from +0x20 of the second structure by the `lw` at
  0xdad0884; a0 and the three float registers pass through, and its delay slot sets `$f15` from t0.
  Inferred: t0 holds 0x3f800000 from 0xdad0888, the single-precision encoding of one, so the callee receives one
  in `$f15`.
  Unknown: the peripheral behind the absolute address 0x10000, since the linked windows begin at 0x110000 and
  0x120000; the register table that covers 0x10000 would settle it.
  Unknown: the destination of the tail jump at 0xdad088c, which depends on the +0x20 word of the second
  structure; that word's value during a live run is the open point.
  Evidence grade: inferred.

- `__glOdyim_Vertex3iv_mag` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad09c0 (n32).
  Fast path for one vertex passed by pointer as three 32-bit integers (a0 +0, +4, +8, loaded into a4 to a6 at 0xdad09c0 to 0xdad09c8). It converts them to single floats in $f12 to $f14, runs three float checks against the records addressed by the words at 0x1020 and 0x1024, and then either writes four words to 0x10000 and returns or tail-jumps through a pointer.
  The sum in $f8 is the word at +0x3c of the 0x1020 record plus the three floats times the words at +0x30, +0x34 and +0x38. $f7 is that sum times the word at +0x8 of the 0x1024 record, and $f8 is then multiplied by the word at +0x4 of that record. The `swc1` at 0xdad0a14 stores the sum, before the second multiply, over +0x8 of the 0x1024 record. Check one is the `bc1f` at 0xdad0a2c, which leaves for the jump when the compare at 0xdad0a24 (absolute value of $f7 against $f7, equal-or-unordered) is false, meaning $f7 is negative and ordered.
  Checks two and three each form another weighted sum plus a constant term and compare its absolute value with the absolute value of $f8, the scaled sum. For check two the terms are +0xc plus the floats times +0x0, +0x4 and +0x8 of the 0x1020 record (compare at 0xdad0a4c); for check three they are +0x1c plus the floats times +0x10, +0x14 and +0x18 (compare at 0xdad0a74). The `bc1t` at 0xdad0a54 and the one at 0xdad0a7c leave for the jump when $f8 is less than that value or unordered.
  If no check leaves, the `ori` at 0xdad0a80 (delay slot of the last `bc1t`) has made t0 0xffffffff8080cc02, v0 is set to 0x10000 by the `lui` at 0xdad0a84, and four word stores follow at that address: t0 at 0xdad0a88, then a4, a5 and a6 unchanged, the last in the delay slot of the `jr ra` at 0xdad0a94, which returns v0 = 0x10000. The exit at 0xdad0a9c reads t9 from +0x20 of the 0x1024 record, sets t0 to 0x3f800000, and `jr t9` at 0xdad0aa4 jumps with $f15 loaded from t0 in the delay slot, a0 to a3 as received and a4 to a6 holding the three words; it stores nothing.
  Inferred: the three checks gate the direct write, since each failed one jumps to the +0x20 pointer and the stores sit only on the all-passed path.
  Unknown: the target of the `jr t9` at 0xdad0aa4, which lies in the word at +0x20 of the 0x1024 record; reading that word in a live run settles it.
  Evidence grade: inferred.

- `__glOdyim_Vertex4dv_mag` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad0dc0 (n32).
  Takes a pointer in a0 to four doubles (+0x0, +0x8, +0x10, +0x18), narrows each to a single float in $f12 to $f15, checks the point against the records behind the words at 0x1020 and 0x1024, and then either writes five words to 0x10000 or jumps through a pointer.
  The sum in $f8 is $f12 to $f15 times the words at +0x30, +0x34, +0x38 and +0x3c of the 0x1020 record. After the +0x8 word of the 0x1024 record is read at 0xdad0e0c, the sum is multiplied by it into $f7 and the `swc1` at 0xdad0e14 replaces that word with the sum; and the sum times the +0x4 word becomes $f8. Absolute values of $f7 and $f8 are taken next. The `bc1f` at 0xdad0e2c leaves for the jump when the compare at 0xdad0e24 of that absolute value with $f7 is false, i.e. when $f7 is negative and ordered.
  Next two sums: the four floats times +0x0, +0x4, +0x8 and +0xc of the 0x1020 record (compare with $f8 at 0xdad0e50), then times +0x10, +0x14, +0x18 and +0x1c (compare at 0xdad0e7c). The `bc1t` at 0xdad0e58 and at 0xdad0e84 jump out when $f8 is less than the sum's absolute value or unordered.
  On the pass path, t0 holds 0xffffffff8080d005 (the `ori` at 0xdad0e88 sits in the delay slot of the second `bc1t`), the `lui` at 0xdad0e8c sets v0 to 0x10000, and the stores follow: `sw` of t0 at 0xdad0e90, then `swc1` of $f12, $f13, $f14 and $f15, the last in the delay slot of the `jr ra` at 0xdad0ea0, which returns v0 = 0x10000. On the other path 0xdad0ea8 loads t9 from +0x20 of the 0x1024 record and `jr t9` at 0xdad0eac transfers with a0 to a3 as received and an empty delay slot.
  Unknown: the routine that `jr t9` at 0xdad0eac enters; t9 is read from the 0x1024 record at +0x20, a word only a running system fills in.
  Evidence grade: established.

- `__glOdyim_Vertex4i_mag` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad10c0 (n32).
  Returns 0x10000 in v0 after writing the constant 0xffffffff8080d004 and the four argument registers a0 to a3 to
  the word at abs 0x10000, unless one of three float tests in the chain sends control to a tail jump
  through a pointer read from +0x20 of the record at abs 0x1024.
  The `lw` at 0xdad10e0 and 0xdad10e4 fetch the words at abs 0x1020 and 0x1024, the `lwc1` reads cover +0x0 to
  +0x3c of the first record and +0x4 and +0x8 of the second, and the `swc1` at 0xdad1114, in the first block, writes f8 to +0x8
  of the v1 record on every call.
  Three guards: the `bc1f` at 0xdad112c leaves for the tail jump (`jr t9` at 0xdad11ac) unless `c.ueq.s` finds f4
  equal to f7 or unordered with it, and the `bc1t` at 0xdad1158 and 0xdad1184 leave for it when
  `c.ult.s` finds f8 less than f9 or unordered.
  The store path, reached when no guard leaves, starts with the `sw` at 0xdad1190, which writes the
  constant built in t0 at 0xdad1180 and 0xdad1188 to abs 0x10000.
  The `sw` at 0xdad1194, 0xdad1198 and 0xdad119c store a0 to a2 as they arrived, the `jr ra` at
  0xdad11a0 returns with its delay-slot `sw` at 0xdad11a4 storing a3, and these stores go through v0,
  which the immediate 0x1 at 0xdad118c sets to 0x10000.
  Otherwise the `lw` at 0xdad11a8 pulls t9 from +0x20 of the record at abs 0x1024, and the `jr t9` at
  0xdad11ac transfers control with a0 to a3 unchanged, writing none of the stores.
  Inferred: f12 to f15 receive a0 to a3 converted from integer to float at the entry, since the first eight
  instructions are four register moves to the floating-point unit and four integer-to-float conversions; the
  extracted accesses do not list them.
  Unknown: the target of the `jr t9` at 0xdad11ac, since t9 is the word at +0x20 of the record at abs
  0x1024 and the route is reading that word during a run.
  Unknown: the content of f8 that the `swc1` at 0xdad1114 stores, since the tool reports no value for f8
  at that point and the route is a manual trace back from that store.
  Evidence grade: inferred.

- `__glOdyim_Vertex2dv_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad1680 (n32).
  Narrows the two doubles at `a0` (`ldc1` at 0xdad1680 and 0xdad1688) to single precision in $f12 and $f13, loads the records R and Q from the words at abs 0x1020 and abs 0x1024 (`lw` at 0xdad1690 and 0xdad1694), and runs a chain of float tests that ends either in writes to abs 0x10000 and a return, or in a tail jump through the word at Q+0x20.
  First it computes w, a single-precision sum of the word at R+0x3c, $f12 times the word at R+0x30 and $f13 times the word at R+0x34; two instructions after the load at 0xdad16a8 that the tool prints as coprocessor-branch instructions are the multiply-adds, and a plain register move then copies w into $f10, which gives the source of $f10 in the later scalings.
  It stores w to Q+0x8 (`swc1` at 0xdad16bc) after multiplying w by the old Q+0x8 word, and forms $f8 as the absolute value of w times the word at Q+0x4.
  The `bc1f` at 0xdad16d4 goes to the tail when the absolute value of the product with the old Q+0x8 word is neither equal to nor unordered with that product (`c.ueq.s` at 0xdad16cc).
  Each of two groups then forms the absolute value of a plane-like sum, the word at R+0xc (group 1) or R+0x1c (group 2) plus $f12 times the word at R+0x0 or R+0x10 plus $f13 times the word at R+0x4 or R+0x14, and the `bc1t` at 0xdad16f8 (group 1) or 0xdad174c (group 2) goes to the tail when $f8 is below that absolute value or unordered with it (`c.ult.s` at 0xdad16f0 and 0xdad1744).
  Each group next adds the signed sum to w times the word at Q+0xc (group 1) or Q+0x10 (group 2) in $f4; when $f4 equals or is unordered with its absolute value (`c.ueq.s` at 0xdad1708 and 0xdad175c; the `bc1f` at 0xdad1710 and 0xdad1764 skips the next test otherwise), the `bc1t` at 0xdad1720 or 0xdad1774 goes to the tail if $f4 is below, or unordered with, the word at Q+0x18 times w (`c.ult.s` at 0xdad1718 and 0xdad176c), the multiply sitting in the delay slot of the `bc1f`.
  If no test sends it to the tail, the store block writes 0xffffffff8080c801 to abs 0x10000 (`sw` at 0xdad1788), then the narrowed $f12 and $f13 (`swc1` at 0xdad178c and, in the return's delay slot, at 0xdad1794), and returns 0x10000 in `v0` (`jr ra` at 0xdad1790).
  The tail loads the word at Q+0x20 (`lw` at 0xdad1798) and jumps through it (`jr` at 0xdad17a4), with 0x3f800000 moved into $f15 in the delay slot and `a0` to `a3` as they arrived.
  Unknown: the routine reached through the word at Q+0x20, since the target is a register load with no callee note.
  Evidence grade: established.

- `__glOdyim_Vertex2fv_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad1900 (n32).
  Longer version of the pointer-argument vertex check: the single-precision coordinates come from a0+0x0
  and a0+0x4 into $f12 and $f13 (`lwc1` at 0xdad1900 and 0xdad1904), and the checks run against records
  A and B, whose pointers are the words at fixed addresses 0x1020 and 0x1024 (`lw` at 0xdad1908 and
  0xdad190c).
  Inferred: the two words before the `swc1` at 0xdad1934 are multiply-adds by their field layout, so $f8
  becomes A+0x3c plus $f12 times A+0x30 plus $f13 times A+0x34; a copy goes to $f10, and the store
  at 0xdad1934 puts the sum in B+0x8 on every path, after it was multiplied by the old B+0x8.
  A negative first product sends the `bc1f` at 0xdad194c to the tail path at 0xdad1a10 (`c.ueq.s` at
  0xdad1944). Stage one forms A+0xc plus $f12 times A+0x0 plus $f13 times A+0x4 (A+0xc loaded in the delay
  slot at 0xdad1950) and keeps the value; the `bc1t` at 0xdad1970 jumps to the tail path when the sum
  scaled by B+0x4 is below its absolute value or unordered (`c.ult.s` at 0xdad1968). The kept value plus
  B+0xc times $f10 is tested next: if negative, the `bc1f` at 0xdad1988 skips ahead to stage two at
  0xdad19a0; if not, the `bc1t` at 0xdad1998 jumps to the tail path when it is below B+0x18 times $f10
  (that multiply is in the delay slot at 0xdad198c and runs on both paths).
  Stage two takes A+0x1c, A+0x10, A+0x14 and B+0x10 (`bc1t` at 0xdad19c4 and 0xdad19ec). Its negative
  case at the `bc1f` at 0xdad19dc goes straight to the store block at 0xdad19f4.
  The store block sets v0 to 0x10000 (0xdad19fc) and writes three 4-byte values there: the constant
  0xffffffff8080c801 (constants at 0xdad19f4 and 0xdad19f8, `sw` at 0xdad1a00), $f12 (0xdad1a04) and $f13
  (0xdad1a0c, return delay slot); v0 stays 0x10000.
  The tail path loads t9 from B+0x20 (0xdad1a10), clears $f14, sets $f15 to 0x3f800000 and jumps at
  0xdad1a1c, a0 to a3 untouched.
  Unknown: the routine that jump at 0xdad1a1c reaches, because record B is filled at run time.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): the device register at 0x10000, which falls outside the linked windows (0x110000 and 0x120000).
  Evidence grade: inferred.

- `__glOdyim_Vertex2i_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad1a40 (n32).
  Integer-coordinate form of the long vertex check: a0 and a1 are copied into floating-point registers
  and converted to single precision in $f12 and $f13 for the tests, while the original integers are what
  a pass stores. The records tested are A and B, whose pointers are the words at fixed addresses 0x1020
  and 0x1024 (`lw` at 0xdad1a50 and 0xdad1a54).
  Inferred: the two words before the `swc1` at 0xdad1a7c are multiply-adds by their field layout, so $f8
  holds A+0x3c plus $f12 times A+0x30 plus $f13 times A+0x34. A copy goes to $f10, and the store at
  0xdad1a7c puts the sum in B+0x8 on every path, following its multiplication by the old B+0x8.
  The first test is the `bc1f` at 0xdad1a94, which jumps to 0xdad1b58 on a negative product (`c.ueq.s`
  at 0xdad1a8c). Stage one: A+0xc plus $f12 times A+0x0 plus $f13 times A+0x4 (A+0xc loaded in the delay
  slot at 0xdad1a98); the `bc1t` at 0xdad1ab8 jumps to the tail path if the sum scaled by B+0x4 is below
  that value's absolute value or unordered (`c.ult.s` at 0xdad1ab0). The value plus B+0xc times $f10 is
  tested next: negative skips to stage two at 0xdad1ae8 (`bc1f` at 0xdad1ad0); otherwise the `bc1t` at
  0xdad1ae0 jumps to the tail path when it is under B+0x18 times $f10, a multiply placed in the delay slot
  at 0xdad1ad4 so it runs either way.
  Stage two reuses the pattern with A+0x1c, A+0x10, A+0x14 and B+0x10 (`bc1t` at 0xdad1b0c and
  0xdad1b34), and a negative value at the `bc1f` at 0xdad1b24 jumps to the store block at 0xdad1b3c.
  That block sets v0 to 0x10000 (0xdad1b44) and writes three 4-byte words there. The first is 0xffffffff8080c800
  (built at 0xdad1b3c and 0xdad1b40, stored by the `sw` at 0xdad1b48). The other two are a0 (0xdad1b4c) and
  a1 (0xdad1b54, return delay slot) as they arrived. v0 stays 0x10000.
  The tail path loads t9 from B+0x20 (0xdad1b58), clears $f14, sets $f15 to 0x3f800000 and jumps at
  0xdad1b64, a0 to a3 as received.
  Unknown: the routine entered by the jump at 0xdad1b64, whose pointer in record B is set at run time.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): the register behind 0x10000, which the linked windows at 0x110000 and 0x120000 do not list.
  Evidence grade: inferred.

- `__glOdyim_Vertex2iv_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad1b80 (n32).
  Converts the two integer words at a0 and a0+4 (loaded at 0xdad1b80 and 0xdad1b84) into the single
  floats $f12 and $f13 and runs a chain of floating-point tests against two parameter blocks; if no
  test diverts control it writes three words to abs 0x10000, and otherwise it jumps through
  second+0x20.
  The first and second blocks are the memory behind the words at abs 0x1020 and abs 0x1024, loaded
  at 0xdad1b98 and 0xdad1b9c.
  A pair of multiply-adds starting from first[+0x3c] (loaded at 0xdad1ba4) makes the sum
  first[+0x3c] + $f12*first[+0x30] + $f13*first[+0x34]; a register copy keeps it in $f10, the `swc1`
  at 0xdad1bc4 stores it to second+0x8 on every call, and $f7 and $f8 become the sum times the old
  second[+0x8] and times second[+0x4].
  At 0xdad1bd4 a `c.ueq.s` sets the flag from |$f7| against $f7, and the `bc1f` at 0xdad1bdc diverts
  to 0xdad1ca0 when $f7 is negative.
  Next, $f9 = first[+0xc] + $f12*first[+0x0] + $f13*first[+0x4] is copied to $f11 and made absolute;
  the `c.ult.s` at 0xdad1bf8 sets the flag from |$f8| against it and the `bc1t` at 0xdad1c00 diverts
  to 0xdad1ca0 if |$f8| is smaller or the two are unordered.
  Then $f4 = $f11 + second[+0xc]*$f10 is checked for sign by the `c.ueq.s` at 0xdad1c10: the `bc1f`
  at 0xdad1c18 jumps to 0xdad1c30 when $f4 is negative, and otherwise the `c.ult.s` at 0xdad1c20
  feeds the `bc1t` at 0xdad1c28, which diverts when $f4 is below second[+0x18]*$f10 or unordered.
  A second round with first[+0x1c], first[+0x10] and first[+0x14] follows the same pattern:
  `c.ult.s` at 0xdad1c4c with the `bc1t` at 0xdad1c54, then $f4 = $f11 + second[+0x10]*$f10 (loaded
  at 0xdad1c58), a sign check at 0xdad1c64, a `bc1f` at 0xdad1c6c that goes straight to the store
  block 0xdad1c84 for a negative $f4, and a last `c.ult.s` at 0xdad1c74 with the `bc1t` at 0xdad1c7c
  against second[+0x18]*$f10 (loaded at 0xdad1c68).
  The store block writes t0 = 0xffffffff8080c800 (built at 0xdad1c84 and 0xdad1c88) to abs 0x10000
  with the `sw` at 0xdad1c90, then the words loaded from a0 and a0+4 (the `sw` at 0xdad1c94, and the
  one at 0xdad1c9c in the delay slot of the return at 0xdad1c98); v0 is set to 0x10000 at 0xdad1c8c
  and returned.
  The diversion target at 0xdad1ca0 fetches t9 from second+0x20, loads 0x3f800000 into t0
  (0xdad1ca8), clears $f14, and runs the `jr t9` at 0xdad1cac with t0 copied into $f15 in its delay
  slot; a0 to a3 are unchanged and a4, a5 hold the two input words.
  Unknown: the landing point of the `jr t9` at 0xdad1cac, since the pointer at second+0x20 is not
  resolved; a run to that jump with the pointer printed would settle it.
  Unknown: which device, if any, answers abs 0x10000; the linked mmio rows (0x110000 and 0x120000)
  do not cover it, so the board address map is the route.
  Test: the mapping-address read in "Test that settles the rest" at the top of this file; a client mapping that starts at 0 makes 0x10000 board +0x110000.
  Evidence grade: established.

- `__glOdyim_Vertex3d_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad1f40 (n32).
  Narrows the three double arguments in $f12, $f13 and $f14 to single floats and walks them through
  a chain of floating-point tests against two parameter blocks; surviving the chain writes four
  words to abs 0x10000, otherwise control is handed to the pointer at second+0x20.
  The first block is the memory at the word in abs 0x1020 and the second the memory at the word in
  abs 0x1024; they are loaded at 0xdad1f4c and 0xdad1f50.
  Starting from first[+0x3c] (0xdad1f58), three multiply-adds add $f12*first[+0x30],
  $f13*first[+0x34] and $f14*first[+0x38] (loaded at 0xdad1f54, 0xdad1f5c and 0xdad1f60); the result
  is copied to $f10 and stored to second+0x8 by the `swc1` at 0xdad1f80 on every call, and $f7 and
  $f8 are scaled copies of it (by the old second[+0x8] and by second[+0x4]).
  The `c.ueq.s` at 0xdad1f90 and the `bc1f` at 0xdad1f98 divert to 0xdad2070 when $f7 is negative.
  The second group builds $f9 from first[+0xc], first[+0x0], first[+0x4] and first[+0x8], and tests
  it against |$f8| with the `c.ult.s` at 0xdad1fbc and the `bc1t` at 0xdad1fc4; then $f4 = $f11 +
  second[+0xc]*$f10 has its sign tested at 0xdad1fd4 (the `bc1f` at 0xdad1fdc jumps to 0xdad1ff4 if
  negative) and otherwise is bounded by second[+0x18]*$f10 through the `c.ult.s` at 0xdad1fe4 and
  the `bc1t` at 0xdad1fec.
  The third group uses first[+0x1c], [+0x10], [+0x14] and [+0x18] with the `c.ult.s` at 0xdad2018
  and the `bc1t` at 0xdad2020, then $f4 = $f11 + second[+0x10]*$f10 (loaded at 0xdad2024), whose
  sign test at 0xdad2030 sends the negative case via the `bc1f` at 0xdad2038 straight to 0xdad2050
  and otherwise bounds it by second[+0x18]*$f10 with the `c.ult.s` at 0xdad2040 and the `bc1t` at
  0xdad2048.
  The final block builds t0 = 0xffffffff8080cc03 (0xdad2050, 0xdad2054), sets v0 to 0x10000
  (0xdad2058), and writes t0 with the `sw` at 0xdad205c, then $f12 and $f13 with the `swc1` at
  0xdad2060 and 0xdad2064 and $f14 in the delay slot at 0xdad206c of the return at 0xdad2068, all to
  abs 0x10000; it returns v0 = 0x10000.
  The diversion block at 0xdad2070 loads t9 from second+0x20, puts 0x3f800000 in t0 (0xdad2074) and
  moves it into $f15 in the delay slot of the `jr t9` at 0xdad2078; a0 to a3 and $f12 to $f14 are
  passed as they stand.
  Unknown: the address the `jr t9` at 0xdad2078 reaches, as the pointer at second+0x20 is
  unresolved; reading the pointer from a live run would settle it.
  Unknown: which unit, if any, decodes abs 0x10000; the linked mmio rows list only 0x110000 and
  0x120000.
  Test: the mapping-address read in "Test that settles the rest" at the top of this file; a client mapping that starts at 0 makes 0x10000 board +0x110000.
  Evidence grade: established.

- `__glOdyim_Vertex3dv_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad2080 (n32).
  Posts one vertex, given as three doubles at a0, to the absolute address 0x10000 when a chain of float tests
  passes, and otherwise tail-jumps to a handler pointer.
  The `ldc1` loads at 0xdad2080, 0xdad2088 and 0xdad2090 read the doubles at a0, +0x8 and +0x10; a conversion
  behind each load narrows it to single precision in `$f12` to `$f14`.
  Two structure pointers are fetched from the absolute words 0x1020 and 0x1024 (0xdad2098, 0xdad209c). A triple
  of multiply-adds yields `$f8`, the first structure's +0x3c word plus the floats times its +0x30, +0x34 and
  +0x38 words; a register copy parks that sum in `$f10`, and the `swc1` at 0xdad20cc writes it, unscaled, to
  +0x8 of the second structure.
  Test one multiplies the sum by the old +0x8 word; the `bc1f` at 0xdad20e4 jumps to the tail jump (`jr` at 0xdad21c4)
  if the product is ordered and negative.
  The sum is separately multiplied by the second structure's +0x4 word and made absolute. Tests two and three
  compare that value (`c.ult.s` at 0xdad2108 and 0xdad2164) with the absolute value of a weighted sum over the
  first structure's words +0x0 to +0xc, then +0x10 to +0x1c; the `bc1t` at 0xdad2110 or 0xdad216c exits to the
  tail jump if the scaled value is smaller or unordered.
  Behind each of those comes a check on `$f4`, the second structure's +0xc word (then +0x10) times `$f10` plus
  that group's signed weighted sum. A negative `$f4` makes the `bc1f` at 0xdad2128 or 0xdad2184 skip forward (to
  0xdad2140, or to the store path at 0xdad219c). Otherwise `$f4` is compared with the second structure's +0x18
  word times `$f10` (the multiply is in the delay slot at 0xdad212c or 0xdad2188), and the `bc1t` at 0xdad2138
  or 0xdad2194 exits when `$f4` is smaller or unordered.
  The store path builds t0 = 0xffffffff8080cc03 (0xdad219c, 0xdad21a0) and sets v0 to 0x10000 (0xdad21a4). The
  `sw` at 0xdad21a8 writes t0 there, the `swc1` at 0xdad21ac and 0xdad21b0 write the narrowed `$f12` and `$f13`,
  and `$f14` goes in the delay slot (0xdad21b8) of the `jr ra` at 0xdad21b4, which returns 0x10000.
  The tail jump loads t9 from +0x20 of the second structure (`lw` at 0xdad21bc) and the `jr` at 0xdad21c4 keeps
  a0 intact; its delay slot sets `$f15` from t0 = 0x3f800000.
  Unknown: where the `jr` at 0xdad21c4 lands, as t9 is read from memory; the +0x20 word in a live run would
  name it.
  Unknown: the peripheral at the absolute address 0x10000, whose address lies below the linked windows at
  0x110000 and 0x120000; the board's address map in a datasheet is the route.
  Evidence grade: established.

- `__glOdyim_Vertex3iv_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad2600 (n32).
  Longer variant of the pointer-to-three-integers vertex fast path: it runs seven float checks instead of three before the direct write. The words at a0 +0, +4 and +8 are loaded into a4 to a6 and converted to floats in $f12 to $f14; the records are the ones behind the words at 0x1020 and 0x1024.
  Setup matches the shorter variants: $f8 is the word at +0x3c of the 0x1020 record plus the floats times +0x30, +0x34, +0x38, copied to $f10, stored by the `swc1` at 0xdad2658 over +0x8 of the 0x1024 record (read earlier at 0xdad2640), and scaled by the word at +0x4 of that record into $f8. Check one compares the absolute value of $f7 (the sum times the old +0x8 word) with $f7 at 0xdad2668, equal-or-unordered; the `bc1f` at 0xdad2670 leaves when that is false, meaning $f7 is negative and ordered. Check two forms +0xc plus the floats times +0x0, +0x4, +0x8 of the 0x1020 record, keeps it in $f11 and compares its absolute value with $f8; the `bc1t` at 0xdad269c leaves when $f8 is less or unordered.
  Checks three and four use more words of the 0x1024 record: $f4 becomes the word at +0xc of the 0x1024 record times $f10 plus $f11 (0xdad26a4). Check three (0xdad26ac) is the same absolute-value test applied to $f4, and its `bc1f` at 0xdad26b4 skips ahead to check five when $f4 is negative and ordered. Otherwise check four compares $f4 with the word at +0x18 of the 0x1024 record times $f10 (multiply in the delay slot at 0xdad26b8, compare at 0xdad26bc); the `bc1t` at 0xdad26c4 leaves when $f4 is less than it or unordered.
  Checks five to seven repeat the pattern with the next plane: +0x1c plus the floats times +0x10, +0x14, +0x18 from 0xdad26cc, kept in $f11 and compared at 0xdad26f0 with the `bc1t` at 0xdad26f8; then $f4 is the +0x10 word of the 0x1024 record times $f10 plus $f11 (0xdad2700), the absolute-value test at 0xdad2708 whose `bc1f` at 0xdad2710 jumps straight to the store block when $f4 is negative and ordered, and the compare against the +0x18 word times $f10 at 0xdad2718 whose `bc1t` at 0xdad2720 leaves when $f4 is less or unordered.
  Passing everything, the block at 0xdad2728 builds t0 = 0xffffffff8080cc02, sets v0 to 0x10000 (`lui` at 0xdad2730), stores t0 and then a4, a5 and a6 unchanged as words at that address (0xdad2734 to 0xdad2744, the last in the delay slot of the `jr ra` at 0xdad2740) and returns 0x10000. Each failed check goes to 0xdad2748, which reads t9 from +0x20 of the 0x1024 record, sets t0 to 0x3f800000, and `jr t9` at 0xdad2750 jumps with $f15 written from t0 and a0 to a3 unchanged, storing nothing.
  Unknown: the callee behind the `jr t9` at 0xdad2750; its address sits in the 0x1024 record at +0x20 and only a live run shows it.
  Evidence grade: established.

- `__glOdyim_Vertex3sv_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad2900 (n32).
  Seven-check fast path for a vertex given by pointer as three signed 16-bit values. The `lh` loads at 0xdad2900, 0xdad2904 and 0xdad2908 read a0 +0, +2 and +4 into a4 to a6; each is then moved to the float unit and converted to a single float in $f12 to $f14. The routine reads the 0x1020 and 0x1024 words as record pointers and, if every check passes, writes four words to 0x10000; otherwise it jumps through a pointer.
  Step by step: $f8 gets the +0x3c word of the 0x1020 record plus x, y and z times its +0x30, +0x34 and +0x38 words. A copy goes to $f10, the sum itself also lands in the +0x8 slot of the 0x1024 record through the `swc1` at 0xdad2958 (that slot having been read into $f7 beforehand at 0xdad2940), and $f8 is rescaled by the +0x4 word of the 0x1024 record. At 0xdad2968 the absolute value of $f7 (the sum times the old +0x8 word) is compared with $f7, and the `bc1f` at 0xdad2970 exits when they differ, which is the case for a negative ordered $f7.
  Check two sums +0xc with the coordinates times +0x0, +0x4 and +0x8 of the 0x1020 record into $f9, retains the signed sum in $f11, and exits at the `bc1t` at 0xdad299c if $f8 is below the absolute value of $f9 or unordered. Then $f4 = (+0xc word of the 0x1024 record) times $f10 plus $f11; a negative ordered result takes the `bc1f` at 0xdad29b4 over the next comparison, while any other result is compared at 0xdad29bc with the +0x18 word times $f10 (scaled in the delay slot at 0xdad29b8) and exits at the `bc1t` at 0xdad29c4 when less or unordered.
  Checks five to seven repeat this with +0x1c as the constant and +0x10, +0x14 and +0x18 as the multipliers, compared at 0xdad29f0 (exit at the `bc1t` at 0xdad29f8), then $f4 from the +0x10 word of the 0x1024 record at 0xdad2a00, where a negative ordered value makes the `bc1f` at 0xdad2a10 jump directly to the write block and anything else goes through the last compare at 0xdad2a18 (exit at the `bc1t` at 0xdad2a20).
  The write block at 0xdad2a28 forms t0 = 0xffffffff8080cc02, puts 0x10000 in v0 (`lui` at 0xdad2a30), and stores t0 and the three sign-extended values as words there (0xdad2a34 to 0xdad2a44, the last in the delay slot of the `jr ra` at 0xdad2a40); it returns 0x10000. The exit at 0xdad2a48 loads t9 from +0x20 of the 0x1024 record, sets t0 to 0x3f800000, and `jr t9` at 0xdad2a50 jumps with $f15 written from t0 in its delay slot, a0 to a3 untouched and the three values still in a4 to a6; nothing is stored on that route.
  Unknown: the handler reached by the `jr t9` at 0xdad2a50, whose entry is the word at +0x20 of the 0x1024 record; a breakpoint there on a running system would reveal it.
  Evidence grade: established.

- `__glOdyim_Vertex4dv_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad2c00 (n32).
  Seven-check version of the four-doubles vertex fast path. The doubles at a0 +0x0, +0x8, +0x10 and +0x18 are narrowed to single floats in $f12 to $f15, and the point is tested against the records behind the words at 0x1020 and 0x1024; passing all seven writes five words to 0x10000, failing any goes to a pointer jump.
  The first sum is $f12 to $f15 times the words at +0x30, +0x34, +0x38 and +0x3c of the 0x1020 record. It is copied to $f10, multiplied by the +0x8 word of the 0x1024 record into $f7, and written by the `swc1` at 0xdad2c58 over that +0x8 word; times the +0x4 word it becomes $f8. Check one: the `bc1f` at 0xdad2c70 leaves when the absolute value of $f7 differs from $f7 (compare at 0xdad2c68), so when $f7 is negative and ordered.
  Check two sums the floats times +0x0, +0x4, +0x8 and +0xc of the 0x1020 record into $f9, saves it in $f11, and the `bc1t` at 0xdad2ca0 leaves when $f8 is less than the absolute value of $f9 or unordered (compare at 0xdad2c98). Checks three and four use the 0x1024 record: $f4 is its +0xc word times $f10 plus $f11 (0xdad2ca8); the `bc1f` at 0xdad2cb8 skips to check five when the absolute value of $f4 differs from $f4 with both ordered, otherwise the `bc1t` at 0xdad2cc8 leaves when $f4 is less than the +0x18 word times $f10 (multiply in the delay slot at 0xdad2cbc, compare at 0xdad2cc0) or unordered.
  Checks five to seven repeat this for the next plane: the floats times +0x10 to +0x1c of the 0x1020 record, kept in $f11 and compared with $f8 at 0xdad2cf8 (leaves at the `bc1t` at 0xdad2d00); then $f4 is the +0x10 word of the 0x1024 record times $f10 plus $f11 (0xdad2d08), a negative ordered $f4 sends the `bc1f` at 0xdad2d18 straight to the store block, and otherwise the compare at 0xdad2d20 against the +0x18 word times $f10 leaves at the `bc1t` at 0xdad2d28 when less or unordered.
  The store block at 0xdad2d30 makes t0 = 0xffffffff8080d005, sets v0 to 0x10000 (0xdad2d38), stores t0 as a word, then $f12, $f13, $f14 and $f15 with `swc1`, the last in the delay slot of the `jr ra` at 0xdad2d4c, and returns 0x10000. The failure exit at 0xdad2d54 loads t9 from +0x20 of the 0x1024 record and `jr t9` at 0xdad2d58 jumps with a0 to a3 as received.
  Unknown: the code the `jr t9` at 0xdad2d58 reaches, since its pointer is the +0x20 word of the 0x1024 record, set at run time.
  Evidence grade: established.

- `__glOdyim_Vertex4f_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad2d80 (n32).
  Seven-check fast path for a vertex whose four floats are already in $f12 to $f15 when the routine starts, so it loads nothing from a0. It reads the words at 0x1020 and 0x1024 as record pointers; if every check passes it writes five words to 0x10000 and returns, and if any fails it jumps through a pointer.
  The opening dot product is $f12 to $f15 against the +0x30, +0x34, +0x38 and +0x3c words of the 0x1020 record. Its result is copied to $f10 (that copy happens after the +0x8 word of the 0x1024 record is loaded at 0xdad2dac), then multiplied by that +0x8 word, written to the +0x8 slot by the `swc1` at 0xdad2db8, and multiplied by the +0x4 word to give the reference value in $f8. Absolute values are taken of both products. The `bc1f` at 0xdad2dd0 exits when the compare at 0xdad2dc8 finds the absolute value of the first product different from it, which means that product is negative and ordered.
  Check two: the dot product of $f12 to $f15 with the +0x0 to +0xc words of the 0x1020 record goes to $f9, the signed sum is also held in $f11, and the `bc1t` at 0xdad2e00 exits if the reference value is less than its absolute value or unordered. Checks three and four: $f4 = (+0xc word of the 0x1024 record) times $f10 plus $f11 at 0xdad2e08; if it is negative and ordered the `bc1f` at 0xdad2e18 skips ahead, otherwise it is compared (0xdad2e20) with the +0x18 word times $f10 and the `bc1t` at 0xdad2e28 exits when less or unordered.
  Checks five to seven work the same way on the +0x10 to +0x1c words of the 0x1020 record (compare at 0xdad2e58, exit at the `bc1t` at 0xdad2e60) and the +0x10 word of the 0x1024 record at 0xdad2e68; there a negative ordered $f4 sends the `bc1f` at 0xdad2e78 to the write block and the remaining compare at 0xdad2e80 can still exit at the `bc1t` at 0xdad2e88.
  The write block at 0xdad2e90 sets t0 = 0xffffffff8080d005, puts 0x10000 in v0 (0xdad2e98), and stores t0 as a word followed by $f12, $f13, $f14 and $f15 with `swc1`; the last store is in the delay slot of the `jr ra` at 0xdad2eac, which returns 0x10000. The exit at 0xdad2eb4 loads t9 from +0x20 of the 0x1024 record and `jr t9` at 0xdad2eb8 leaves with a0 to a3 as received.
  Unknown: where the `jr t9` at 0xdad2eb8 ends up, because the pointer is the +0x20 word of the 0x1024 record and is only known at run time.
  Evidence grade: established.

- `__glOdyim_Vertex4fv_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad2ec0 (n32).

  Vertex entry that loads four floats from the array at `a0`, tests them against two records whose pointers
  sit at absolute 0x1020 and 0x1024, and then either pushes the vertex to absolute 0x10000 or tail-jumps
  through the second record.
  Loads at 0xdad2ec0 to 0xdad2ecc fill f12 to f15 from `a0` +0x0 to +0xc; the pair at 0xdad2ed0 and
  0xdad2ed4 fetches the record pointers into v0 and v1. Reads of the first record cover +0x0 to +0x3c, reads
  of the second sit at +0x4, +0x8, +0xc, +0x10 and +0x18, and the `swc1` at 0xdad2f08 writes f8 into +0x8
  of the second record whether or not any test passes.
  Seven conditional branches pick the outcome. The `bc1t` at 0xdad2f50, 0xdad2f78, 0xdad2fb0 and
  0xdad2fd8 divert to the tail jump when their `c.ult.s` compare is true; the `bc1f` at 0xdad2f20 diverts
  when its `c.ueq.s` compare is false; the `bc1f` at 0xdad2f68 and 0xdad2fc8, when their `c.ueq.s` compare
  is false, jump past the following `c.ult.s` test to 0xdad2f80 and 0xdad2fe0.
  With every test passed, the `sw` at 0xdad2fec stores 0xffffffff8080d005 to absolute 0x10000, where v0
  was set by the `lui` at 0xdad2fe8; four `swc1` at 0xdad2ff0, 0xdad2ff4, 0xdad2ff8 and 0xdad3000 then
  follow with f12 to f15, which are the floats at `a0` +0x0, +0x4, +0x8 and +0xc. The `jr ra` at
  0xdad2ffc returns 0x10000 in v0.
  Otherwise the `lw` at 0xdad3004 reads t9 from +0x20 of the second record, and the `jr t9` at 0xdad3008
  jumps with a0 to a3 untouched and nothing stored to 0x10000.
  Unknown: where the `jr t9` at 0xdad3008 lands, since t9 is a word inside the record at absolute 0x1024
  that only a run can show.
  Unknown: the float that the `swc1` at 0xdad2f08 writes, since words between the multiply into f8 and
  the store do not decode as ordinary instructions and could alter f8; decoding them is the route to the answer.
  Unknown: which register or memory lies behind absolute 0x10000, because the linked board windows start
  at 0x110000 and 0x120000 and leave it out; an inventory row naming it would answer that.
  Evidence grade: established.

- `__glOdyim_Vertex4iv_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad31c0 (n32).
  Longer form of the integer-vector vertex entry with two groups of float checks. It reads four words from `a0`,
  compares floats from the records at absolute 0x1020 and 0x1024, and ends in either a store of the vertex
  to absolute 0x10000 or a tail jump through the second record.
  Loads at 0xdad31c0 to 0xdad31cc take offsets 0, 4, 8 and 12 of `a0` into a4 to a7, loads at 0xdad31f0 and
  0xdad31f4 take the record pointers into v0 and v1, and the `swc1` at 0xdad3228 is the only store before
  the exit blocks: it writes f8 into +0x8 of the second record on every call.
  Inferred: the eight instructions after the first loads (four moves to the floating-point unit, four
  integer-to-float conversions) put the words into f12 to f15 as floats; the access list does not show them.
  Seven branches decide the path. A false `c.ueq.s` compare of f4 and f7 sends the `bc1f` at 0xdad3240 to
  the jump block at 0xdad3324. A true `c.ult.s` compare sends there the `bc1t` at 0xdad3270 and 0xdad32d0
  (f8 against f9) and the `bc1t` at 0xdad3298 and 0xdad32f8 (f4 against f6). A false `c.ueq.s` compare of f5
  and f4 makes the `bc1f` at 0xdad3288 and 0xdad32e8 skip the following `c.ult.s` test, landing on
  0xdad32a0 and 0xdad3300.
  With no divert, v0 is set to 0x10000 at 0xdad3308, the `sw` at 0xdad330c stores 0xffffffff8080d004
  there (t0 built at 0xdad3300 and 0xdad3304), and the `sw` at 0xdad3310, 0xdad3314, 0xdad3318 and
  0xdad3320 write a4 to a7 as loaded; the last sits in the delay slot of the `jr ra` at 0xdad331c, which
  returns 0x10000.
  A divert runs the `lw` at 0xdad3324, which reads t9 from +0x20 of the second record, and the `jr t9` at
  0xdad3328 then jumps with a0 to a3 unchanged and a4 to a7 holding the words, nothing stored to 0x10000.
  Unknown: the entry that t9 holds at 0xdad3328, a word of the record at absolute 0x1024 that a run would
  show.
  Unknown: the float stored by the `swc1` at 0xdad3228, because floating-point registers are not followed
  in the extracted facts; tracing f8 back from that store would answer it.
  Evidence grade: inferred.

- `__glOdyim_Vertex4sv_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad34c0 (n32).
  Takes a pointer to four signed halfwords, tests them in floating point against coefficient sets in
  two records, and either pushes the vector to the fixed word at 0x10000 or hands the call on
  through an indirect jump. The halfwords at a0 +0x0, +0x2, +0x4 and +0x6 are loaded at 0xdad34c0 to
  0xdad34cc, moved to the FPU and converted from integer to single precision (just before the loads
  at 0xdad34f0). The routine then loads the words at absolute 0x1020 and 0x1024 and uses them as
  record pointers. A multiply and three multiply-adds (between 0xdad3508 and 0xdad351c) form the dot
  product of the four floats with the record at 0x1020 offsets 0x30, 0x34, 0x38 and 0x3c, and the
  `swc1` at 0xdad3528 stores that result to +0x8 of the 0x1024 record, after the old +0x8 value was
  loaded at 0xdad351c. The old +0x8 value is multiplied by the new result, and the `c.ueq.s` compare
  at 0xdad3538 with the `bc1f` at 0xdad3540 jumps to the tail block at 0xdad3624 when that product is
  negative. A second dot product, against the 0x1020 record offsets 0x0, 0x4, 0x8 and 0xc, is
  compared with the first one scaled by +0x4 of the 0x1024 record (`c.ult.s` at 0xdad3568, `bc1t` at
  0xdad3570 to the tail jump); a third, against offsets 0x10, 0x14, 0x18 and 0x1c, gets the same
  comparison at 0xdad35c8 and 0xdad35d0. For the second and third products each adds the first
  result times +0xc (resp. +0x10) of the 0x1024 record; when that sum is negative (`bc1f` at
  0xdad3588 and 0xdad35e8) the second sum moves on to the third test and the third sum goes to the
  store block, and when it is not negative the sum is compared with +0x18 of the 0x1024 record times
  the first result, and a smaller sum (`bc1t` at 0xdad3598 and 0xdad35f8) goes to the tail jump. The
  store block at 0xdad3600 writes 0xffffffff8080d004 (built from 0x8080 and 0xd004) to 0x10000 with
  the `sw` at 0xdad360c, then writes each halfword, sign-extended, to the same address with the `sw`
  at 0xdad3610, 0xdad3614 and 0xdad3618, and 0xdad3620 in the delay slot of the return; v0 returns
  0x10000. The tail block loads t9 from +0x20 of the 0x1024 record, jumps at 0xdad3628, and leaves a0 to a3
  untouched.
  Unknown: the destination of the stores at 0x10000; the linked board windows begin at 0x110000 and
  0x120000, so a reviewed datasheet entry for the address would settle it.
  Unknown: the routine that the `jr t9` at 0xdad3628 transfers to, because t9 is read at run time;
  the content of the 0x1024 record at +0x20 would settle it.
  Unknown: the content of the words at absolute 0x1020 and 0x1024, which are set outside this
  routine; the code that stores them would settle it.
  Evidence grade: established.

- `__glOdyim_ScratchColor3b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4140 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdad4140-0xdad4160 (32 bytes).
  It occupies 32 bytes.
  4 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xdad414c, `sw` at 0xdad4150, `sw` at 0xdad4154.
  The return at 0xdad4158 has v0 = 0x10000.

- `__glOdyim_ScratchColor3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4240 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdad4240-0xdad426c (44 bytes).
  It occupies 44 bytes.
  The `sw` at 0xdad4258 stores 4 bytes to abs 0x10000.
  3 such `swc1` accesses store 4 bytes to abs 0x10000, including `swc1` at 0xdad425c, `swc1` at 0xdad4260, `swc1` at 0xdad4268.
  The return at 0xdad4264 has v0 = 0x10000.

- `__glOdyim_ScratchColor3i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4440 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdad4440-0xdad4460 (32 bytes).
  It occupies 32 bytes.
  4 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xdad444c, `sw` at 0xdad4450, `sw` at 0xdad4454.
  The return at 0xdad4458 has v0 = 0x10000.

- `__glOdyim_ScratchColor3s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4540 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdad4540-0xdad4560 (32 bytes).
  It occupies 32 bytes.
  4 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xdad454c, `sw` at 0xdad4550, `sw` at 0xdad4554.
  The return at 0xdad4558 has v0 = 0x10000.

- `__glOdyim_ScratchColor3ui` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4740 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdad4740-0xdad4760 (32 bytes).
  It occupies 32 bytes.
  4 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xdad474c, `sw` at 0xdad4750, `sw` at 0xdad4754.
  The return at 0xdad4758 has v0 = 0x10000.

- `__glOdyim_ScratchColor3us` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4840 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdad4840-0xdad4860 (32 bytes).
  It occupies 32 bytes.
  4 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xdad484c, `sw` at 0xdad4850, `sw` at 0xdad4854.
  The return at 0xdad4858 has v0 = 0x10000.

- `__glOdyim_ScratchColor3us` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4840 (n32)
  **Inferred.** Writes four 4-byte words to the fixed address 0x10000, at 0xdad484c, 0xdad4850, 0xdad4854 and 0xdad485c, and returns 0x10000 in v0 at 0xdad4858 (the last store at 0xdad485c follows that return in the delay slot). The values written are not traced, so the effect on color state is open. The name suggests a three-component unsigned-short color setter, which this read does not confirm.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4940 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdad4940-0xdad4964 (36 bytes).
  It occupies 36 bytes.
  5 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xdad494c, `sw` at 0xdad4950, `sw` at 0xdad4954.
  The return at 0xdad495c has v0 = 0x10000.

- `__glOdyim_ScratchColor4dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4b00 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdad4b00-0xdad4b44 (68 bytes).
  It occupies 68 bytes.
  The `ldc1` at 0xdad4b00 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ldc1` at 0xdad4b0c loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ldc1` at 0xdad4b14 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ldc1` at 0xdad4b1c loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `sw` at 0xdad4b24 stores 4 bytes to abs 0x10000.
  4 such `swc1` accesses store 4 bytes to abs 0x10000, including `swc1` at 0xdad4b2c, `swc1` at 0xdad4b34, `swc1` at 0xdad4b38.
  The return at 0xdad4b3c has v0 = 0x10000.

- `__glOdyim_ScratchColor4i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4cc0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdad4cc0-0xdad4ce4 (36 bytes).
  It occupies 36 bytes.
  5 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xdad4ccc, `sw` at 0xdad4cd0, `sw` at 0xdad4cd4.
  The return at 0xdad4cdc has v0 = 0x10000.

- `__glOdyim_ScratchColor4s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4dc0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdad4dc0-0xdad4de4 (36 bytes).
  It occupies 36 bytes.
  5 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xdad4dcc, `sw` at 0xdad4dd0, `sw` at 0xdad4dd4.
  The return at 0xdad4ddc has v0 = 0x10000.

- `__glOdyim_ScratchColor4ub` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4ec0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdad4ec0-0xdad4ee4 (36 bytes).
  It occupies 36 bytes.
  5 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xdad4ecc, `sw` at 0xdad4ed0, `sw` at 0xdad4ed4.
  The return at 0xdad4edc has v0 = 0x10000.

- `__glOdyim_ScratchColor4ui` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4fc0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdad4fc0-0xdad4fe4 (36 bytes).
  It occupies 36 bytes.
  5 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xdad4fcc, `sw` at 0xdad4fd0, `sw` at 0xdad4fd4.
  The return at 0xdad4fdc has v0 = 0x10000.

- `__glOdyim_ScratchColor4us` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad50c0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdad50c0-0xdad50e4 (36 bytes).
  It occupies 36 bytes.
  5 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xdad50cc, `sw` at 0xdad50d0, `sw` at 0xdad50d4.
  The return at 0xdad50dc has v0 = 0x10000.

- `__glOdyim_ScratchIndexd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad51c0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdad51c0-0xdad51dc (28 bytes).
  It occupies 28 bytes.
  The `sw` at 0xdad51d0 stores 4 bytes to abs 0x10000.
  The `swc1` at 0xdad51d8 stores 4 bytes to abs 0x10000.
  The return at 0xdad51d4 has v0 = 0x10000.

- `glColor3b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad8000 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdad8000-0xdad8080 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xdad8000 loads 4 bytes from abs 0x15d8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad8004).
  The instructions from 0xdad800c to 0xdad807c are not reached by any path from the entry, and their branches are not listed.

- `glVertex2d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdada900 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdada900-0xdadaa00 (256 bytes).
  It occupies 256 bytes.
  The `lw` at 0xdada900 loads 4 bytes from abs 0x1578.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdada904).
  The instructions from 0xdada90c to 0xdada9fc are not reached by any path from the entry, and their branches are not listed.

- `__glDTP_NEVER` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae1f14 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae1f14-0xdae1f20 (12 bytes).
  It occupies 12 bytes.
  The `beq` branch at 0xdae1f18 targets 0xdae1e88 and is always taken.

- `__glDTP_LEQUAL` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae1f20 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae1f20-0xdae1f40 (32 bytes).
  It occupies 32 bytes.
  The `sw` at 0xdae1f30 stores 4 bytes to a7 (arg7 at entry) +0x0.
  The `bne` branch at 0xdae1f24 targets 0xdae1f34, is taken when a3 < t0 (unsigned), and falls through when a3 >= t0 (unsigned).
  The `beq` branch at 0xdae1f2c targets 0xdae1e88 and is always taken.
  The `beq` branch at 0xdae1f38 targets 0xdae1e88 and is always taken.

- `__glDTP_LEQUAL_s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae1f40 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae1f40-0xdae1f60 (32 bytes).
  It occupies 32 bytes.
  The `sw` at 0xdae1f50 stores 4 bytes to a7 (arg7 at entry) +0x0.
  The `bne` branch at 0xdae1f44 targets 0xdae1f54, is taken when a3 < t0 (signed), and falls through when a3 >= t0 (signed).
  The `beq` branch at 0xdae1f4c targets 0xdae1e88 and is always taken.
  The `beq` branch at 0xdae1f58 targets 0xdae1e88 and is always taken.

- `__glDTP_LESS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae1f60 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae1f60-0xdae1f80 (32 bytes).
  It occupies 32 bytes.
  The `sw` at 0xdae1f70 stores 4 bytes to a7 (arg7 at entry) +0x0.
  The `beq` branch at 0xdae1f64 targets 0xdae1f74, is taken when t0 >= a3 (unsigned), and falls through when t0 < a3 (unsigned).
  The `beq` branch at 0xdae1f6c targets 0xdae1e88 and is always taken.
  The `beq` branch at 0xdae1f78 targets 0xdae1e88 and is always taken.

- `__glDTP_LESS_s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae1f80 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae1f80-0xdae1fa0 (32 bytes).
  It occupies 32 bytes.
  The `sw` at 0xdae1f90 stores 4 bytes to a7 (arg7 at entry) +0x0.
  The `beq` branch at 0xdae1f84 targets 0xdae1f94, is taken when t0 >= a3 (signed), and falls through when t0 < a3 (signed).
  The `beq` branch at 0xdae1f8c targets 0xdae1e88 and is always taken.
  The `beq` branch at 0xdae1f98 targets 0xdae1e88 and is always taken.

- `__glDTP_EQUAL` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae1fa0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae1fa0-0xdae1fbc (28 bytes).
  It occupies 28 bytes.
  The `sw` at 0xdae1fac stores 4 bytes to a7 (arg7 at entry) +0x0.
  The `bne` branch at 0xdae1fa0 targets 0xdae1fb0, is taken when t0 != a3, and falls through when t0 == a3.
  The `beq` branch at 0xdae1fa8 targets 0xdae1e88 and is always taken.
  The `beq` branch at 0xdae1fb4 targets 0xdae1e88 and is always taken.

- `__glDTP_GREATER` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae1fbc (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae1fbc-0xdae1fdc (32 bytes).
  It occupies 32 bytes.
  The `sw` at 0xdae1fcc stores 4 bytes to a7 (arg7 at entry) +0x0.
  The `beq` branch at 0xdae1fc0 targets 0xdae1fd0, is taken when a3 >= t0 (unsigned), and falls through when a3 < t0 (unsigned).
  The `beq` branch at 0xdae1fc8 targets 0xdae1e88 and is always taken.
  The `beq` branch at 0xdae1fd4 targets 0xdae1e88 and is always taken.

- `__glDTP_GREATER_s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae1fdc (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae1fdc-0xdae1ffc (32 bytes).
  It occupies 32 bytes.
  The `sw` at 0xdae1fec stores 4 bytes to a7 (arg7 at entry) +0x0.
  The `beq` branch at 0xdae1fe0 targets 0xdae1ff0, is taken when a3 >= t0 (signed), and falls through when a3 < t0 (signed).
  The `beq` branch at 0xdae1fe8 targets 0xdae1e88 and is always taken.
  The `beq` branch at 0xdae1ff4 targets 0xdae1e88 and is always taken.

- `__glDTP_NOTEQUAL` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae1ffc (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae1ffc-0xdae2018 (28 bytes).
  It occupies 28 bytes.
  The `sw` at 0xdae2008 stores 4 bytes to a7 (arg7 at entry) +0x0.
  The `beq` branch at 0xdae1ffc targets 0xdae200c, is taken when t0 == a3, and falls through when t0 != a3.
  The `beq` branch at 0xdae2004 targets 0xdae1e88 and is always taken.
  The `beq` branch at 0xdae2010 targets 0xdae1e88 and is always taken.

- `__glDTP_GEQUAL` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2018 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2018-0xdae2038 (32 bytes).
  It occupies 32 bytes.
  The `sw` at 0xdae2028 stores 4 bytes to a7 (arg7 at entry) +0x0.
  The `bne` branch at 0xdae201c targets 0xdae202c, is taken when t0 < a3 (unsigned), and falls through when t0 >= a3 (unsigned).
  The `beq` branch at 0xdae2024 targets 0xdae1e88 and is always taken.
  The `beq` branch at 0xdae2030 targets 0xdae1e88 and is always taken.

- `__glDTP_GEQUAL_s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2038 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2038-0xdae2058 (32 bytes).
  It occupies 32 bytes.
  The `sw` at 0xdae2048 stores 4 bytes to a7 (arg7 at entry) +0x0.
  The `bne` branch at 0xdae203c targets 0xdae204c, is taken when t0 < a3 (signed), and falls through when t0 >= a3 (signed).
  The `beq` branch at 0xdae2044 targets 0xdae1e88 and is always taken.
  The `beq` branch at 0xdae2050 targets 0xdae1e88 and is always taken.

- `__glDTP_ALWAYS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2058 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2058-0xdae2064 (12 bytes).
  It occupies 12 bytes.
  The `sw` at 0xdae2060 stores 4 bytes to a7 (arg7 at entry) +0x0.
  The `beq` branch at 0xdae205c targets 0xdae1e88 and is always taken.

- `__glDTP_LEQUAL_M` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2064 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2064-0xdae2084 (32 bytes).
  It occupies 32 bytes.
  The `bne` branch at 0xdae2068 targets 0xdae2078, is taken when a3 < t0 (unsigned), and falls through when a3 >= t0 (unsigned).
  The `beq` branch at 0xdae2070 targets 0xdae1e88 and is always taken.
  The `beq` branch at 0xdae207c targets 0xdae1e88 and is always taken.

- `__glDTP_LEQUAL_M_s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2084 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2084-0xdae20a4 (32 bytes).
  It occupies 32 bytes.
  The `bne` branch at 0xdae2088 targets 0xdae2098, is taken when a3 < t0 (signed), and falls through when a3 >= t0 (signed).
  The `beq` branch at 0xdae2090 targets 0xdae1e88 and is always taken.
  The `beq` branch at 0xdae209c targets 0xdae1e88 and is always taken.

- `__glDTP_LESS_M` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae20a4 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae20a4-0xdae20c4 (32 bytes).
  It occupies 32 bytes.
  The `beq` branch at 0xdae20a8 targets 0xdae20b8, is taken when t0 >= a3 (unsigned), and falls through when t0 < a3 (unsigned).
  The `beq` branch at 0xdae20b0 targets 0xdae1e88 and is always taken.
  The `beq` branch at 0xdae20bc targets 0xdae1e88 and is always taken.

- `__glDTP_LESS_M_s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae20c4 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae20c4-0xdae20e4 (32 bytes).
  It occupies 32 bytes.
  The `beq` branch at 0xdae20c8 targets 0xdae20d8, is taken when t0 >= a3 (signed), and falls through when t0 < a3 (signed).
  The `beq` branch at 0xdae20d0 targets 0xdae1e88 and is always taken.
  The `beq` branch at 0xdae20dc targets 0xdae1e88 and is always taken.

- `__glDTP_EQUAL_M` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae20e4 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae20e4-0xdae2100 (28 bytes).
  It occupies 28 bytes.
  The `bne` branch at 0xdae20e4 targets 0xdae20f4, is taken when t0 != a3, and falls through when t0 == a3.
  The `beq` branch at 0xdae20ec targets 0xdae1e88 and is always taken.
  The `beq` branch at 0xdae20f8 targets 0xdae1e88 and is always taken.

- `__glDTP_GREATER_M` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2100 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2100-0xdae2120 (32 bytes).
  It occupies 32 bytes.
  The `beq` branch at 0xdae2104 targets 0xdae2114, is taken when a3 >= t0 (unsigned), and falls through when a3 < t0 (unsigned).
  The `beq` branch at 0xdae210c targets 0xdae1e88 and is always taken.
  The `beq` branch at 0xdae2118 targets 0xdae1e88 and is always taken.

- `__glDTP_GREATER_M_s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2120 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2120-0xdae2140 (32 bytes).
  It occupies 32 bytes.
  The `beq` branch at 0xdae2124 targets 0xdae2134, is taken when a3 >= t0 (signed), and falls through when a3 < t0 (signed).
  The `beq` branch at 0xdae212c targets 0xdae1e88 and is always taken.
  The `beq` branch at 0xdae2138 targets 0xdae1e88 and is always taken.

- `__glDTP_NOTEQUAL_M` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2140 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2140-0xdae215c (28 bytes).
  It occupies 28 bytes.
  The `beq` branch at 0xdae2140 targets 0xdae2150, is taken when t0 == a3, and falls through when t0 != a3.
  The `beq` branch at 0xdae2148 targets 0xdae1e88 and is always taken.
  The `beq` branch at 0xdae2154 targets 0xdae1e88 and is always taken.

- `__glDTP_GEQUAL_M` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae215c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae215c-0xdae217c (32 bytes).
  It occupies 32 bytes.
  The `bne` branch at 0xdae2160 targets 0xdae2170, is taken when t0 < a3 (unsigned), and falls through when t0 >= a3 (unsigned).
  The `beq` branch at 0xdae2168 targets 0xdae1e88 and is always taken.
  The `beq` branch at 0xdae2174 targets 0xdae1e88 and is always taken.

- `__glDTP_GEQUAL_M_s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae217c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae217c-0xdae219c (32 bytes).
  It occupies 32 bytes.
  The `bne` branch at 0xdae2180 targets 0xdae2190, is taken when t0 < a3 (signed), and falls through when t0 >= a3 (signed).
  The `beq` branch at 0xdae2188 targets 0xdae1e88 and is always taken.
  The `beq` branch at 0xdae2194 targets 0xdae1e88 and is always taken.

- `__glDTP_ALWAYS_M` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae219c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae219c-0xdae21b0 (20 bytes).
  It occupies 20 bytes.
  The `beq` branch at 0xdae21a0 targets 0xdae1e88 and is always taken.
  The instructions from 0xdae21a8 to 0xdae21ac are not reached by any path from the entry, and their branches are not listed.

- `__glDTS_NEVER` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae243c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae243c-0xdae244c (16 bytes).
  It occupies 16 bytes.
  The return at 0xdae2444 has v0 = ?.

- `__glDTS_LEQUAL` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae244c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae244c-0xdae2474 (40 bytes).
  It occupies 40 bytes.
  The `sw` at 0xdae2458 stores 4 bytes to t2 +0x0.
  The `bne` branch at 0xdae2450 targets 0xdae2464, is taken when t1 < t0 (unsigned), and falls through when t1 >= t0 (unsigned).
  The return at 0xdae245c has v0 = ?.
  The return at 0xdae246c has v0 = ?.

- `__glDTS_LEQUAL_s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2474 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2474-0xdae249c (40 bytes).
  It occupies 40 bytes.
  The `sw` at 0xdae2480 stores 4 bytes to t2 +0x0.
  The `bne` branch at 0xdae2478 targets 0xdae248c, is taken when t1 < t0 (signed), and falls through when t1 >= t0 (signed).
  The return at 0xdae2484 has v0 = ?.
  The return at 0xdae2494 has v0 = ?.

- `__glDTS_LESS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae249c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae249c-0xdae24c4 (40 bytes).
  It occupies 40 bytes.
  The `sw` at 0xdae24a8 stores 4 bytes to t2 +0x0.
  The `beq` branch at 0xdae24a0 targets 0xdae24b4, is taken when t0 >= t1 (unsigned), and falls through when t0 < t1 (unsigned).
  The return at 0xdae24ac has v0 = ?.
  The return at 0xdae24bc has v0 = ?.

- `__glDTS_LESS_s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae24c4 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae24c4-0xdae24ec (40 bytes).
  It occupies 40 bytes.
  The `sw` at 0xdae24d0 stores 4 bytes to t2 +0x0.
  The `beq` branch at 0xdae24c8 targets 0xdae24dc, is taken when t0 >= t1 (signed), and falls through when t0 < t1 (signed).
  The return at 0xdae24d4 has v0 = ?.
  The return at 0xdae24e4 has v0 = ?.

- `__glDTS_EQUAL` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae24ec (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae24ec-0xdae2510 (36 bytes).
  It occupies 36 bytes.
  The `sw` at 0xdae24f4 stores 4 bytes to t2 +0x0.
  The `bne` branch at 0xdae24ec targets 0xdae2500, is taken when t0 != t1, and falls through when t0 == t1.
  The return at 0xdae24f8 has v0 = ?.
  The return at 0xdae2508 has v0 = ?.

- `__glDTS_GREATER` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2510 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2510-0xdae2538 (40 bytes).
  It occupies 40 bytes.
  The `sw` at 0xdae251c stores 4 bytes to t2 +0x0.
  The `beq` branch at 0xdae2514 targets 0xdae2528, is taken when t1 >= t0 (unsigned), and falls through when t1 < t0 (unsigned).
  The return at 0xdae2520 has v0 = ?.
  The return at 0xdae2530 has v0 = ?.

- `__glDTS_GREATER_s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2538 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2538-0xdae2560 (40 bytes).
  It occupies 40 bytes.
  The `sw` at 0xdae2544 stores 4 bytes to t2 +0x0.
  The `beq` branch at 0xdae253c targets 0xdae2550, is taken when t1 >= t0 (signed), and falls through when t1 < t0 (signed).
  The return at 0xdae2548 has v0 = ?.
  The return at 0xdae2558 has v0 = ?.

- `__glDTS_NOTEQUAL` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2560 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2560-0xdae2584 (36 bytes).
  It occupies 36 bytes.
  The `sw` at 0xdae2568 stores 4 bytes to t2 +0x0.
  The `beq` branch at 0xdae2560 targets 0xdae2574, is taken when t0 == t1, and falls through when t0 != t1.
  The return at 0xdae256c has v0 = ?.
  The return at 0xdae257c has v0 = ?.

- `__glDTS_GEQUAL` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2584 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2584-0xdae25ac (40 bytes).
  It occupies 40 bytes.
  The `sw` at 0xdae2590 stores 4 bytes to t2 +0x0.
  The `bne` branch at 0xdae2588 targets 0xdae259c, is taken when t0 < t1 (unsigned), and falls through when t0 >= t1 (unsigned).
  The return at 0xdae2594 has v0 = ?.
  The return at 0xdae25a4 has v0 = ?.

- `__glDTS_GEQUAL_s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae25ac (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae25ac-0xdae25d4 (40 bytes).
  It occupies 40 bytes.
  The `sw` at 0xdae25b8 stores 4 bytes to t2 +0x0.
  The `bne` branch at 0xdae25b0 targets 0xdae25c4, is taken when t0 < t1 (signed), and falls through when t0 >= t1 (signed).
  The return at 0xdae25bc has v0 = ?.
  The return at 0xdae25cc has v0 = ?.

- `__glDTS_ALWAYS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae25d4 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae25d4-0xdae25e0 (12 bytes).
  It occupies 12 bytes.
  The `sw` at 0xdae25d4 stores 4 bytes to t2 +0x0.
  The return at 0xdae25d8 has v0 = ?.

- `__glDTS_LEQUAL_M` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae25e0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae25e0-0xdae2600 (32 bytes).
  It occupies 32 bytes.
  The `bne` branch at 0xdae25e4 targets 0xdae25f4, is taken when t1 < t0 (unsigned), and falls through when t1 >= t0 (unsigned).
  The return at 0xdae25ec has v0 = ?.
  The return at 0xdae25f8 has v0 = ?.

- `__glDTS_LEQUAL_M_s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2600 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2600-0xdae2620 (32 bytes).
  It occupies 32 bytes.
  The `bne` branch at 0xdae2604 targets 0xdae2614, is taken when t1 < t0 (signed), and falls through when t1 >= t0 (signed).
  The return at 0xdae260c has v0 = ?.
  The return at 0xdae2618 has v0 = ?.

- `__glDTS_LESS_M` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2620 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2620-0xdae2640 (32 bytes).
  It occupies 32 bytes.
  The `beq` branch at 0xdae2624 targets 0xdae2634, is taken when t0 >= t1 (unsigned), and falls through when t0 < t1 (unsigned).
  The return at 0xdae262c has v0 = ?.
  The return at 0xdae2638 has v0 = ?.

- `__glDTS_LESS_M_s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2640 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2640-0xdae2660 (32 bytes).
  It occupies 32 bytes.
  The `beq` branch at 0xdae2644 targets 0xdae2654, is taken when t0 >= t1 (signed), and falls through when t0 < t1 (signed).
  The return at 0xdae264c has v0 = ?.
  The return at 0xdae2658 has v0 = ?.

- `__glDTS_EQUAL_M` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2660 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2660-0xdae267c (28 bytes).
  It occupies 28 bytes.
  The `bne` branch at 0xdae2660 targets 0xdae2670, is taken when t0 != t1, and falls through when t0 == t1.
  The return at 0xdae2668 has v0 = ?.
  The return at 0xdae2674 has v0 = ?.

- `__glDTS_GREATER_M` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae267c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae267c-0xdae269c (32 bytes).
  It occupies 32 bytes.
  The `beq` branch at 0xdae2680 targets 0xdae2690, is taken when t1 >= t0 (unsigned), and falls through when t1 < t0 (unsigned).
  The return at 0xdae2688 has v0 = ?.
  The return at 0xdae2694 has v0 = ?.

- `__glDTS_GREATER_M_s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae269c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae269c-0xdae26bc (32 bytes).
  It occupies 32 bytes.
  The `beq` branch at 0xdae26a0 targets 0xdae26b0, is taken when t1 >= t0 (signed), and falls through when t1 < t0 (signed).
  The return at 0xdae26a8 has v0 = ?.
  The return at 0xdae26b4 has v0 = ?.

- `__glDTS_NOTEQUAL_M` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae26bc (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae26bc-0xdae26d8 (28 bytes).
  It occupies 28 bytes.
  The `beq` branch at 0xdae26bc targets 0xdae26cc, is taken when t0 == t1, and falls through when t0 != t1.
  The return at 0xdae26c4 has v0 = ?.
  The return at 0xdae26d0 has v0 = ?.

- `__glDTS_GEQUAL_M` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae26d8 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae26d8-0xdae26f8 (32 bytes).
  It occupies 32 bytes.
  The `bne` branch at 0xdae26dc targets 0xdae26ec, is taken when t0 < t1 (unsigned), and falls through when t0 >= t1 (unsigned).
  The return at 0xdae26e4 has v0 = ?.
  The return at 0xdae26f0 has v0 = ?.

- `__glDTS_GEQUAL_M_s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae26f8 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae26f8-0xdae2718 (32 bytes).
  It occupies 32 bytes.
  The `bne` branch at 0xdae26fc targets 0xdae270c, is taken when t0 < t1 (signed), and falls through when t0 >= t1 (signed).
  The return at 0xdae2704 has v0 = ?.
  The return at 0xdae2710 has v0 = ?.

- `__glDTS_ALWAYS_M` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2718 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2718-0xdae2720 (8 bytes).
  It occupies 8 bytes.
  The return at 0xdae2718 has v0 = ?.

- `__glMipsChangeMaterialEmission` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2ca0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2ca0-0xdae2d14 (116 bytes).
  It occupies 116 bytes.
  The `lwc1` at 0xdae2ca0 loads 4 bytes from a0 (arg0 at entry) +0x1b0.
  The `lwc1` at 0xdae2ca4 loads 4 bytes from a0 (arg0 at entry) +0x7858.
  The `lwc1` at 0xdae2ca8 loads 4 bytes from a0 (arg0 at entry) +0x1b4.
  The `lwc1` at 0xdae2cac loads 4 bytes from a0 (arg0 at entry) +0x785c.
  The `lwc1` at 0xdae2cb0 loads 4 bytes from a0 (arg0 at entry) +0x1b8.
  The `lwc1` at 0xdae2cb8 loads 4 bytes from a0 (arg0 at entry) +0x7860.
  The `lwc1` at 0xdae2cc0 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xdae2cc8 loads 4 bytes from a0 (arg0 at entry) +0x574.
  The `lwc1` at 0xdae2ccc loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xdae2cd0 loads 4 bytes from a0 (arg0 at entry) +0x578.
  The `lwc1` at 0xdae2cd8 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lwc1` at 0xdae2cdc loads 4 bytes from a0 (arg0 at entry) +0x57c.
  The `lwc1` at 0xdae2ce4 loads 4 bytes from a0 (arg0 at entry) +0x1bc.
  The `lwc1` at 0xdae2ce8 loads 4 bytes from a0 (arg0 at entry) +0x7880.
  The `swc1` at 0xdae2cf0 stores 4 bytes to a1 (arg1 at entry) +0x30.
  The `swc1` at 0xdae2cf8 stores 4 bytes to a1 (arg1 at entry) +0x34.
  The `swc1` at 0xdae2cfc stores 4 bytes to a1 (arg1 at entry) +0x38.
  The `swc1` at 0xdae2d00 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `swc1` at 0xdae2d04 stores 4 bytes to a2 (arg2 at entry) +0x4.
  The `swc1` at 0xdae2d08 stores 4 bytes to a2 (arg2 at entry) +0x8.
  The `swc1` at 0xdae2d10 stores 4 bytes to a1 (arg1 at entry) +0x3c.
  The return at 0xdae2d0c has v0 = ?.

- `__glMipsChangeMaterialSpecular` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2d14 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2d14-0xdae2d8c (120 bytes).
  It occupies 120 bytes.
  The `lwc1` at 0xdae2d14 loads 4 bytes from a0 (arg0 at entry) +0x1b0.
  The `lwc1` at 0xdae2d18 loads 4 bytes from a0 (arg0 at entry) +0x1b4.
  The `lwc1` at 0xdae2d1c loads 4 bytes from a0 (arg0 at entry) +0x1b8.
  The `lwc1` at 0xdae2d20 loads 4 bytes from a0 (arg0 at entry) +0x1bc.
  The `swc1` at 0xdae2d24 stores 4 bytes to a1 (arg1 at entry) +0x20.
  The `swc1` at 0xdae2d28 stores 4 bytes to a1 (arg1 at entry) +0x24.
  The `swc1` at 0xdae2d2c stores 4 bytes to a1 (arg1 at entry) +0x28.
  The `swc1` at 0xdae2d30 stores 4 bytes to a1 (arg1 at entry) +0x2c.
  The `lw` at 0xdae2d34 loads 4 bytes from a0 (arg0 at entry) +0x6e4c.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xdae2d50, `lw` at 0xdae2d6c.
  3 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xdae2d58, `lwc1` at 0xdae2d5c, `lwc1` at 0xdae2d60.
  3 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xdae2d74, `swc1` at 0xdae2d78, `swc1` at 0xdae2d80.
  The `beq` branch at 0xdae2d48 targets 0xdae2d84, is taken when v0(=[a0+28236]) == 0, and falls through when v0(=[a0+28236]) != 0.
  The `bne` branch at 0xdae2d7c targets 0xdae2d50, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The return at 0xdae2d84 has v0 = one of [a0+28236], ?.

- `__glMipsChangeMaterialAmbient` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2d8c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2d8c-0xdae2e30 (164 bytes).
  It occupies 164 bytes.
  The `lwc1` at 0xdae2d8c loads 4 bytes from a0 (arg0 at entry) +0x1b0.
  The `lwc1` at 0xdae2d90 loads 4 bytes from a1 (arg1 at entry) +0x30.
  The `lwc1` at 0xdae2d94 loads 4 bytes from a0 (arg0 at entry) +0x574.
  The `lwc1` at 0xdae2d98 loads 4 bytes from a0 (arg0 at entry) +0x1b4.
  The `lwc1` at 0xdae2da0 loads 4 bytes from a1 (arg1 at entry) +0x34.
  The `lwc1` at 0xdae2da4 loads 4 bytes from a0 (arg0 at entry) +0x578.
  The `lwc1` at 0xdae2da8 loads 4 bytes from a1 (arg1 at entry) +0x38.
  The `lwc1` at 0xdae2db0 loads 4 bytes from a0 (arg0 at entry) +0x1b8.
  The `lwc1` at 0xdae2db4 loads 4 bytes from a0 (arg0 at entry) +0x57c.
  The `lwc1` at 0xdae2db8 loads 4 bytes from a0 (arg0 at entry) +0x1bc.
  The `swc1` at 0xdae2dbc stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lw` at 0xdae2dc4 loads 4 bytes from a0 (arg0 at entry) +0x6e4c.
  The `swc1` at 0xdae2dcc stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `swc1` at 0xdae2dd0 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `swc1` at 0xdae2dd4 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `swc1` at 0xdae2dd8 stores 4 bytes to a2 (arg2 at entry) +0x4.
  The `swc1` at 0xdae2ddc stores 4 bytes to a2 (arg2 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xdae2df4, `lw` at 0xdae2e10.
  3 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xdae2dfc, `lwc1` at 0xdae2e00, `lwc1` at 0xdae2e04.
  3 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xdae2e18, `swc1` at 0xdae2e1c, `swc1` at 0xdae2e24.
  The `swc1` at 0xdae2e2c stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `beq` branch at 0xdae2dec targets 0xdae2e28, is taken when t1(=[a0+28236]) == 0, and falls through when t1(=[a0+28236]) != 0.
  The `bne` branch at 0xdae2e20 targets 0xdae2df4, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The return at 0xdae2e28 has v0 = ?.

- `__glMipsChangeMaterialDiffuse` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2e30 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2e30-0xdae2ecc (156 bytes).
  It occupies 156 bytes.
  The `lwc1` at 0xdae2e30 loads 4 bytes from a0 (arg0 at entry) +0x1b0.
  The `lwc1` at 0xdae2e34 loads 4 bytes from a0 (arg0 at entry) +0x1b4.
  The `lwc1` at 0xdae2e38 loads 4 bytes from a0 (arg0 at entry) +0x1b8.
  The `lwc1` at 0xdae2e3c loads 4 bytes from a0 (arg0 at entry) +0x1bc.
  The `swc1` at 0xdae2e40 stores 4 bytes to a1 (arg1 at entry) +0x10.
  The `swc1` at 0xdae2e44 stores 4 bytes to a1 (arg1 at entry) +0x14.
  The `swc1` at 0xdae2e48 stores 4 bytes to a1 (arg1 at entry) +0x18.
  The `swc1` at 0xdae2e4c stores 4 bytes to a1 (arg1 at entry) +0x1c.
  The `lwc1` at 0xdae2e60 loads 4 bytes from a0 (arg0 at entry) +0x7880.
  The `lw` at 0xdae2e74 loads 4 bytes from a0 (arg0 at entry) +0x6e4c.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xdae2e90, `lw` at 0xdae2eac.
  3 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xdae2e98, `lwc1` at 0xdae2e9c, `lwc1` at 0xdae2ea0.
  3 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xdae2eb4, `swc1` at 0xdae2eb8, `swc1` at 0xdae2ec0.
  The `swc1` at 0xdae2ec8 stores 4 bytes to a2 (arg2 at entry) +0x24.
  The `beq` branch at 0xdae2e88 targets 0xdae2ec4, is taken when t9(=[a0+28236]) == 0, and falls through when t9(=[a0+28236]) != 0.
  The `bne` branch at 0xdae2ebc targets 0xdae2e90, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The return at 0xdae2ec4 has v0 = a0+28196.

- `__glMipsChangeMaterialAmbientAndDiffuse` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2ecc (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2ecc-0xdae2fc4 (248 bytes).
  It occupies 248 bytes.
  The `lwc1` at 0xdae2ecc loads 4 bytes from a0 (arg0 at entry) +0x1b0.
  The `lwc1` at 0xdae2ed0 loads 4 bytes from a1 (arg1 at entry) +0x30.
  The `lwc1` at 0xdae2ed4 loads 4 bytes from a0 (arg0 at entry) +0x574.
  The `lwc1` at 0xdae2ed8 loads 4 bytes from a0 (arg0 at entry) +0x1b4.
  The `lwc1` at 0xdae2ee0 loads 4 bytes from a1 (arg1 at entry) +0x34.
  The `lwc1` at 0xdae2ee4 loads 4 bytes from a0 (arg0 at entry) +0x578.
  The `lwc1` at 0xdae2ee8 loads 4 bytes from a1 (arg1 at entry) +0x38.
  The `lwc1` at 0xdae2ef0 loads 4 bytes from a0 (arg0 at entry) +0x1b8.
  The `lwc1` at 0xdae2ef4 loads 4 bytes from a0 (arg0 at entry) +0x57c.
  The `ld` at 0xdae2ef8 loads 8 bytes from a0 (arg0 at entry) +0x1b0.
  The `ld` at 0xdae2efc loads 8 bytes from a0 (arg0 at entry) +0x1b8.
  The `lwc1` at 0xdae2f04 loads 4 bytes from a0 (arg0 at entry) +0x1bc.
  The `sd` at 0xdae2f08 stores 8 bytes to a1 (arg1 at entry) +0x0.
  The `sd` at 0xdae2f0c stores 8 bytes to a1 (arg1 at entry) +0x10.
  The `sd` at 0xdae2f10 stores 8 bytes to a1 (arg1 at entry) +0x8.
  The `sd` at 0xdae2f14 stores 8 bytes to a1 (arg1 at entry) +0x18.
  The `swc1` at 0xdae2f18 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `swc1` at 0xdae2f1c stores 4 bytes to a2 (arg2 at entry) +0x4.
  The `swc1` at 0xdae2f20 stores 4 bytes to a2 (arg2 at entry) +0x8.
  The `lwc1` at 0xdae2f34 loads 4 bytes from a0 (arg0 at entry) +0x7880.
  The `lw` at 0xdae2f48 loads 4 bytes from a0 (arg0 at entry) +0x6e4c.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xdae2f64, `lw` at 0xdae2fa8.
  6 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xdae2f6c, `lwc1` at 0xdae2f70, `lwc1` at 0xdae2f74.
  6 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xdae2f94, `swc1` at 0xdae2f9c, `swc1` at 0xdae2fa4.
  The `swc1` at 0xdae2fc0 stores 4 bytes to a2 (arg2 at entry) +0x24.
  The `beq` branch at 0xdae2f5c targets 0xdae2fbc, is taken when a4(=[a0+28236]) == 0, and falls through when a4(=[a0+28236]) != 0.
  The `bne` branch at 0xdae2fb4 targets 0xdae2f64, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The return at 0xdae2fbc has v0 = ?.

- `__glMipsClipCheckSafe2` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae3cd8 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae3cd8-0xdae3cf4 (28 bytes).
  It occupies 28 bytes.
  The `lw` at 0xdae3cd8 loads 4 bytes from a0 (arg0 at entry) +0x2ed8.
  The `lwc1` at 0xdae3cdc loads 4 bytes from a1 (arg1 at entry) +0x7c.
  The `lwc1` at 0xdae3ce0 loads 4 bytes from a1 (arg1 at entry) +0x70.
  The `lwc1` at 0xdae3ce8 loads 4 bytes from a1 (arg1 at entry) +0x74.
  The `lwc1` at 0xdae3cf0 loads 4 bytes from a1 (arg1 at entry) +0x78.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdae3cec).

- `__glMipsClipCheckSafe3` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae3cf4 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae3cf4-0xdae3d10 (28 bytes).
  It occupies 28 bytes.
  The `lw` at 0xdae3cf4 loads 4 bytes from a0 (arg0 at entry) +0x2edc.
  The `lwc1` at 0xdae3cf8 loads 4 bytes from a1 (arg1 at entry) +0x7c.
  The `lwc1` at 0xdae3cfc loads 4 bytes from a1 (arg1 at entry) +0x70.
  The `lwc1` at 0xdae3d04 loads 4 bytes from a1 (arg1 at entry) +0x74.
  The `lwc1` at 0xdae3d0c loads 4 bytes from a1 (arg1 at entry) +0x78.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdae3d08).

- `__glMipsClipCheckSafe4` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae3d10 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae3d10-0xdae3d2c (28 bytes).
  It occupies 28 bytes.
  The `lw` at 0xdae3d10 loads 4 bytes from a0 (arg0 at entry) +0x2ee0.
  The `lwc1` at 0xdae3d14 loads 4 bytes from a1 (arg1 at entry) +0x7c.
  The `lwc1` at 0xdae3d18 loads 4 bytes from a1 (arg1 at entry) +0x70.
  The `lwc1` at 0xdae3d20 loads 4 bytes from a1 (arg1 at entry) +0x74.
  The `lwc1` at 0xdae3d28 loads 4 bytes from a1 (arg1 at entry) +0x78.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdae3d24).

- `__glOdyim_Indexf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad5280
  **Established.** Immediate-mode colour-index sender for a float argument. The `sw` at 0xdad528c puts the command word 0xc580c407 on the FIFO window at process address 0x10000, and the float already in f12 follows in the delay slot of the return (`swc1` at 0xdad5294). Nothing is checked, counted or converted on the way.

- `__glOdyim_Indexi` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad5380
  **Established.** Hands an integer colour index to the board in two stores to the FIFO window at 0x10000: the word 0xc580c406 (`sw` at 0xdad538c), then argument a0 untouched (`sw` at 0xdad5394, in the return's delay slot). The routine reads no memory and makes no call.

- `__glOdyim_Indexs` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad5480
  **Established.** This colour-index entry for a short argument is byte for byte the integer routine's code: it stores 0xc580c406 to the window at 0x10000 (`sw` at 0xdad548c) and then a0 as it arrived (`sw` at 0xdad5494). No narrowing or masking is applied to the argument.

- `__glOdyim_Indexub` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad5580
  **Established.** Sends an unsigned-byte colour index as the pair 0xc580c406 (`sw` at 0xdad558c) and a0 (`sw` at 0xdad5594) written to the command window at 0x10000. The six instructions have no branch, no load and no conversion; the byte is passed on as the full register.

- `__glOdyim_ScratchIndexf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad52c0
  **Established.** The scratch-slot twin of the float colour-index sender: its command word is 0xce80c407, whose top half 0xce80 names the scratch colour slot instead of 0xc580. The store of the word is at 0xdad52cc and the float in f12 goes out in the return's delay slot at 0xdad52d4, both to the window at 0x10000.

- `__glOdyim_ScratchIndexi` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad53c0
  **Established.** Writes word 0xce80c406 (`sw` at 0xdad53cc) and then the integer in a0 (`sw` at 0xdad53d4) to the FIFO window at 0x10000. The 0xce80 half of the word selects the scratch colour slot, where the plain integer index sender uses 0xc580.

- `__glOdyim_ScratchIndexs` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad54c0
  **Established.** A scratch-slot colour-index sender that shares its code with the integer version: the word 0xce80c406 is stored at 0xdad54cc, then a0 is forwarded at 0xdad54d4. Both stores target address 0x10000, and the routine neither loads nor branches.

- `__glOdyim_ScratchIndexub` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad55c0
  **Established.** For the unsigned-byte scratch index, the two window writes are word 0xce80c406 at 0xdad55cc and the unmodified a0 at 0xdad55d4. The slot half 0xce80 of the word, not any processing in the routine, is what separates it from the ordinary byte index sender.

- `__glOdyim_Indexd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad5180
  **Established.** Colour-index sender for a double: `cvt.s.d` at 0xdad5180 narrows f12 to single precision before anything is written. The word 0xc580c407 then goes to the FIFO window at 0x10000 (`sw` at 0xdad5190) and the narrowed float follows in the delay slot at 0xdad5198.

- `__glOdyim_Indexfv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad5300
  **Established.** Pointer form of the float colour-index sender. It loads the word at a0 +0 with `lw` at 0xdad5300, stores the command word 0xc580c407 to the window at 0x10000 (`sw` at 0xdad5310) and writes the loaded bits as the operand in the delay slot (`sw` at 0xdad5318); the value is moved as raw bits, with no float register involved.

- `__glOdyim_Indexiv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad5400
  **Established.** Reads the first integer of the array in a0 (`lw` at 0xdad5400) and emits it behind the word 0xc580c406 in two stores to 0x10000, at 0xdad5410 and 0xdad5418. It is the vector twin of the integer index sender and differs from the float vector sender only in the low word of the command.

- `__glOdyim_Indexsv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad5500
  **Established.** Takes one signed halfword from a0 with `lh` at 0xdad5500, which sign-extends it to 32 bits, then stores the command word 0xc580c406 (`sw` at 0xdad5510) and that widened value (`sw` at 0xdad5518) to the command window at 0x10000.

- `__glOdyim_Indexubv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad5600
  **Established.** Loads one unsigned byte from the array at a0 (`lbu` at 0xdad5600), zero-extending it, and sends it to the board after the word 0xc580c406. The stores are at 0xdad5610 and 0xdad5618, both to the window at 0x10000.

- `__glOdyim_Indexdv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad5200
  **Established.** Pointer form of the double colour-index sender: `ldc1` at 0xdad5200 loads the double at a0, `cvt.s.d` at 0xdad520c narrows it, and the narrowed float is stored after the word 0xc580c407. The two window stores are at 0xdad5214 and 0xdad521c.

- `__glOdyim_ScratchIndexfv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad5340
  **Established.** Scratch-slot colour-index sender taking a pointer to a float. The first word of the array is loaded at 0xdad5340 and forwarded as raw bits behind the command word 0xce80c407; the stores are at 0xdad5350 and 0xdad5358, to the window at 0x10000.

- `__glOdyim_ScratchIndexiv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad5440
  **Established.** Dereferences a0 with `lw` at 0xdad5440 and writes two words to 0x10000: the scratch-slot index command 0xce80c406 (at 0xdad5450) and the loaded integer (at 0xdad5458). It makes no calls and has no branch.

- `__glOdyim_ScratchIndexsv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad5540
  **Established.** Halfword array form of the scratch-slot colour index: `lh` at 0xdad5540 fetches the value with sign extension, after which 0xce80c406 is stored at 0xdad5550 and the value at 0xdad5558. The window address is 0x10000 in both stores.

- `__glOdyim_ScratchIndexubv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad5640
  **Established.** Unsigned byte array form of the scratch-slot colour index. A `lbu` at 0xdad5640 supplies the operand; the command word 0xce80c406 (`sw` at 0xdad5650) and the operand (`sw` at 0xdad5658) are the only writes, both to the FIFO window at 0x10000.

- `__glOdyim_ScratchIndexdv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad5240
  **Established.** Double array form of the scratch-slot colour index: `ldc1` at 0xdad5240 reads the double at a0, `cvt.s.d` at 0xdad524c makes it a float, and the command word 0xce80c407 and that float are stored at 0xdad5254 and 0xdad525c to the window at 0x10000.

- `__glOdyim_TexCoord1f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad36c0
  **Established.** Texture-coordinate sender with one float component. The `sw` at 0xdad36cc writes the command word 0xc380c41f, an attribute word for the texture slot (top half 0xc380), to the FIFO window at 0x10000; f12 follows at 0xdad36d4.

- `__glOdyim_TexCoord1i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad3740
  **Established.** A one-component integer texture coordinate is written as the word 0xc380c41e (`sw` at 0xdad374c) and the unchanged a0 (`sw` at 0xdad3754) to the window at 0x10000; the integer opcode is 0x1e where the float form uses 0x1f.

- `__glOdyim_TexCoord1s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad37c0
  **Established.** Short-argument texture coordinate. Its six instructions are the same as the integer variant's: 0xc380c41e stored at 0xdad37cc, a0 stored at 0xdad37d4, both to 0x10000.

- `__glOdyim_TexCoord1d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad3640
  **Established.** Narrows the double in f12 with `cvt.s.d` at 0xdad3640 and sends it as a one-component texture coordinate: command word 0xc380c41f at 0xdad3650, then the float at 0xdad3658. Both stores go to the window at 0x10000.

- `__glOdyim_TexCoord1fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad3700
  **Established.** Array form of the float s coordinate. It loads the first word at a0 (`lw` at 0xdad3700) as raw bits and stores it after 0xc380c41f; the two stores to 0x10000 are at 0xdad3710 and 0xdad3718.

- `__glOdyim_TexCoord1iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad3780
  **Established.** Loads an integer from a0 (`lw` at 0xdad3780) and writes it behind the texture word 0xc380c41e; the stores at 0xdad3790 and 0xdad3798 both hit the command window at 0x10000. No float conversion happens in the routine.

- `__glOdyim_TexCoord1sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad3800
  **Established.** Reads a signed halfword through a0 (`lh` at 0xdad3800) and forwards it, extended to 32 bits, after the integer texture word 0xc380c41e. The command store is at 0xdad3810 and the operand store at 0xdad3818.

- `__glOdyim_TexCoord1dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad3680
  **Established.** Loads one double from a0 with `ldc1` at 0xdad3680, narrows it with `cvt.s.d` at 0xdad368c and stores it after the float texture word 0xc380c41f, at 0xdad3694 and 0xdad369c in the window at 0x10000.

- `__glOdyim_TexCoord2f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad38c0
  **Established.** Two-component float texture coordinate: after the word 0xc380c821 (`sw` at 0xdad38cc) the routine stores f12 at 0xdad38d0 and f13 at 0xdad38d8, all at the window address 0x10000. The word's opcode 0x21 marks the float pair.

- `__glOdyim_TexCoord2i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad3940
  **Established.** Sends an integer s,t pair: 0xc380c820 (`sw` at 0xdad394c), then a0 (`sw` at 0xdad3950) and a1 (`sw` at 0xdad3958). Each store targets the FIFO window at process address 0x10000; the opcode field 0x20 is the integer pair.

- `__glOdyim_TexCoord2s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad39c0
  **Established.** The short-argument form carries the same body as the integer pair sender, so its two operands are a0 and a1 as received, stored at 0xdad39d0 and 0xdad39d8 after the command at 0xdad39cc (the word 0xc380c820).

- `__glOdyim_TexCoord2d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad3840
  **Established.** Narrows both doubles first (`cvt.s.d` on f12 at 0xdad3840 and on f13 following it), then writes the word 0xc380c821 at 0xdad3854, f12 at 0xdad3858 and f13 at 0xdad3860 to the window at 0x10000.

- `__glOdyim_TexCoord2fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad3900
  **Established.** Moves a float pair from the array at a0 to the board as one 64-bit store. The unaligned doubleword is assembled with `ldl` at 0xdad3900 and `ldr` and written with `sd` at 0xdad391c, after the word 0xc380c821 stored at 0xdad3914.

- `__glOdyim_TexCoord2iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad3980
  **Established.** Integer pair from memory: `ldl` at 0xdad3980 with a matching `ldr` builds a doubleword out of the two ints at a0, and `sd` at 0xdad399c writes it behind the command 0xc380c820 (`sw` at 0xdad3994). Both go to the window at 0x10000, so the pair crosses the port as one 8-byte write.

- `__glOdyim_TexCoord2sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad3a00
  **Established.** Reads two halfwords at a0 +0 and +2 (`lh` at 0xdad3a00 and the next load), then writes the integer pair word 0xc380c820 at 0xdad3a14 followed by the two widened values at 0xdad3a18 and 0xdad3a20. The port is the window at 0x10000.

- `__glOdyim_TexCoord2dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad3880
  **Established.** Loads the two doubles at a0 +0 and +8 (`ldc1` at 0xdad3880), narrows each with `cvt.s.d` (the first at 0xdad3890), and sends the float pair after the word 0xc380c821. Stores are at 0xdad3898, 0xdad38a0 and 0xdad38a8.

- `__glOdyim_TexCoord3f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad3ac0
  **Established.** Three float components go behind the word 0xc380cc23, whose opcode field 0x23 is the three-float texture form: stores at 0xdad3acc (the word), 0xdad3ad0 (f12), 0xdad3ad4 (f13) and 0xdad3adc (f14), all to the window at 0x10000.

- `__glOdyim_TexCoord3i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad3b40
  **Established.** Writes the integer texture word 0xc380cc22 and then the integer arguments a0, a1 and a2 in order, as four stores to 0x10000 at 0xdad3b4c, 0xdad3b50, 0xdad3b54 and 0xdad3b5c. The opcode 0x22 is the three-integer form.

- `__glOdyim_TexCoord3s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad3bc0
  **Established.** Short-argument three-component texture coordinate. The body is the integer sender's: command 0xc380cc22 at 0xdad3bcc, then a0, a1 and a2 at 0xdad3bd0, 0xdad3bd4 and 0xdad3bdc, all as received and all to the window at 0x10000.

- `__glOdyim_TexCoord3fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad3b00
  **Established.** Sends a three-float coordinate from memory with two operand stores instead of three. A `lwu` supplies the first float and an unaligned doubleword pair (`ldl` at 0xdad3b00 with an `ldr`) the other two; the stores are the word 0xc380cc23 at 0xdad3b18, the single at 0xdad3b1c and the 8-byte store at 0xdad3b24.

- `__glOdyim_TexCoord3iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad3b80
  **Established.** Integer triple in memory: one zero-extending word load and one unaligned doubleword load collect a0's three ints, and the port gets 0xc380cc22 (`sw` at 0xdad3b98), the first int (`sw` at 0xdad3b9c) and the last two together (`sd` at 0xdad3ba4) at address 0x10000.

- `__glOdyim_TexCoord3sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad3c00
  **Established.** Three halfwords at a0 +0, +2 and +4 are loaded with `lh` from 0xdad3c00 on, and written to 0x10000 after the word 0xc380cc22: stores at 0xdad3c18, 0xdad3c1c, 0xdad3c20 and 0xdad3c28. The values go out sign-extended to 32 bits.

- `__glOdyim_TexCoord3dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad3a80
  **Established.** Three doubles at a0 +0, +8 and +16 are loaded (`ldc1` from 0xdad3a80), narrowed one by one with `cvt.s.d` (first at 0xdad3a94) and written as floats behind the word 0xc380cc23; the four stores run from 0xdad3aa0 to 0xdad3ab4.

- `__glOdyim_TexCoord4f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad3d00
  **Established.** Full four-component float texture coordinate. The word 0xc380d025 (opcode 0x25, `sw` at 0xdad3d0c) is followed by f12, f13, f14 and f15 stored at 0xdad3d10, 0xdad3d14, 0xdad3d18 and 0xdad3d20, all to the window at 0x10000.

- `__glOdyim_TexCoord4i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad3d80
  **Established.** Integer four-component texture coordinate: the command 0xc380d024 at 0xdad3d8c (opcode 0x24) and then a0 to a3 at 0xdad3d90, 0xdad3d94, 0xdad3d98 and 0xdad3da0, five stores in all to the port at 0x10000.

- `__glOdyim_TexCoord4s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad3e00
  **Established.** The short four-component sender repeats the integer one instruction for instruction: 0xc380d024 at 0xdad3e0c, then the four argument registers at 0xdad3e10, 0xdad3e14, 0xdad3e18 and 0xdad3e20. The window is 0x10000.

- `__glOdyim_TexCoord4d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad3c40
  **Established.** Four doubles arrive in f12 to f15 and are each narrowed with `cvt.s.d` (the first at 0xdad3c40); the float word 0xc380d025 and the four floats are then stored from 0xdad3c5c to 0xdad3c70 to the window at 0x10000.

- `__glOdyim_TexCoord4fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad3d40
  **Established.** Four floats are moved out of the array at a0 as two 8-byte stores built with `ldl` and `ldr` pairs (first load at 0xdad3d40). The command word 0xc380d025 is stored at 0xdad3d5c, the doublewords at 0xdad3d60 and 0xdad3d68, so five instruction groups cover the whole coordinate.

- `__glOdyim_TexCoord4iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad3dc0
  **Established.** Two unaligned doubleword loads starting at 0xdad3dc0 pick up four integers from a0; the routine stores 0xc380d024 at 0xdad3ddc and then the two doublewords at 0xdad3de0 and 0xdad3de8 to the command window at 0x10000.

- `__glOdyim_TexCoord4sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad3e40
  **Established.** Four halfwords at a0 +0, +2, +4 and +6 are fetched with `lh` from 0xdad3e40, and sent after the integer word 0xc380d024. The five stores sit between 0xdad3e5c and 0xdad3e70; the window is 0x10000.

- `__glOdyim_TexCoord4dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad3c80
  **Established.** The vector form of the double four-component coordinate: four `ldc1` loads from 0xdad3c80, four `cvt.s.d` narrowings (the first at 0xdad3c98) and the command word 0xc380d025 with the four floats stored from 0xdad3ca4 to 0xdad3cc0.

- `__glOdyim_Vertex2f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace640
  **Established.** Two-float vertex sender. It sends the position word 0x8080c801 (top half 0x8080, the vertex slot) to the FIFO window at 0x10000 with `sw` at 0xdace64c, then f12 at 0xdace650 and f13 at 0xdace658. The word is built first in t0 and the window address in v0; no other register is touched.

- `__glOdyim_Vertex2fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace680
  **Established.** Reads x and y from the float array at a0 into f12 and f13 (`lwc1` at 0xdace680 and the next instruction) and then performs the same three stores as the two-float sender: the vertex word 0x8080c801 at 0xdace694, then the floats at 0xdace698 and 0xdace6a0.

- `__glOdyim_Vertex2dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace600
  **Established.** Two doubles at a0 +0 and +8 are loaded into f12 and f13 and each narrowed with `cvt.s.d` (the first at 0xdace604); the vertex word 0x8080c801 and the two singles then go to 0x10000, stored at 0xdace61c, 0xdace620 and 0xdace628.

- `__glOdyim_Vertex2i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace6c0
  **Established.** Integer two-component vertex sender. It converts a0 and a1 into floats in f12 and f13 (`mtc1` and `cvt.s.w`, first conversion at 0xdace6c8) but stores the original integers, behind the integer-form word 0x8080c800 (opcode 0x00): stores at 0xdace6dc, 0xdace6e0 and 0xdace6e8. The converted floats stay in registers and are not written by this routine.

- `__glOdyim_Vertex2s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace740
  **Established.** Short-argument two-component vertex sender, identical in code to the integer one: the converted floats in f12 and f13 are left in registers while the board receives the word 0x8080c800 (`sw` at 0xdace75c) and the arguments a0 and a1 (at 0xdace760 and 0xdace768).

- `__glOdyim_Vertex2iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace700
  **Established.** Loads two integers from a0 (`lw` at 0xdace700 and +4), converts them to f12 and f13 with `cvt.s.w` (first at 0xdace710), and writes the integers, not the floats, after the integer vertex word 0x8080c800. The three stores are at 0xdace724, 0xdace728 and 0xdace730.

- `__glOdyim_Vertex2sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace780
  **Established.** Takes two halfwords from the array at a0 (`lh` at 0xdace780), sign-extending them, leaves their float conversions in f12 and f13 and stores the word 0x8080c800 and the two widened integers (at 0xdace7a4, 0xdace7a8 and 0xdace7b0) to the window at 0x10000.

- `__glOdyim_Vertex3f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace840
  **Established.** Three-float vertex sender: the word 0x8080cc03 (opcode 0x03, `sw` at 0xdace84c) and then f12, f13 and f14 stored in order at 0xdace850, 0xdace854 and 0xdace85c. The routine has no loads, no branches and no calls.

- `__glOdyim_Vertex3fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace880
  **Established.** Array form of the three-float vertex: `lwc1` from 0xdace880 puts x, y and z in f12 to f14 and the stores that follow are the word 0x8080cc03 at 0xdace898 and the three floats at 0xdace89c, 0xdace8a0 and 0xdace8a8, all to the command window at 0x10000.

- `__glOdyim_Vertex3dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace800
  **Established.** Loads three doubles from a0, narrowing each one in turn with `cvt.s.d` (the first at 0xdace804); after that it writes the vertex word 0x8080cc03 and the three floats at 0xdace824 through 0xdace834. The window is 0x10000.

- `__glOdyim_Vertex3s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace980
  **Established.** Integer three-component vertex sender for short arguments. It converts a0, a1 and a2 to floats in f12 to f14 (`cvt.s.w`, first at 0xdace988) and sends the originals behind the integer-form word 0x8080cc02 (opcode 0x02): stores at 0xdace9a4, 0xdace9a8, 0xdace9ac and 0xdace9b4.

- `__glOdyim_Vertex3iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace900
  **Established.** Loads three integers from a0 into a4, a5 and a6, converts them to f12 to f14 (first `cvt.s.w` at 0xdace914) and stores the integers after the word 0x8080cc02. The four window stores run from 0xdace930 to 0xdace940.

- `__glOdyim_Vertex3sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace9c0
  **Established.** A three-halfword array version of the integer vertex sender: `lh` from 0xdace9c0 loads the components, the float conversions land in f12 to f14, and the board receives 0x8080cc02 and the three integers (stores at 0xdace9f0, 0xdace9f4, 0xdace9f8 and 0xdacea00).

- `__glOdyim_Vertex4f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaceb00
  **Established.** Four-float vertex sender using the word 0x8080d005 (opcode 0x05). The stores are the word at 0xdaceb0c and then f12, f13, f14 and f15 at 0xdaceb10, 0xdaceb14, 0xdaceb18 and 0xdaceb20, to the FIFO window at 0x10000.

- `__glOdyim_Vertex4d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacea40
  **Established.** Four doubles in f12 to f15 are narrowed in place by `cvt.s.d` (first at 0xdacea40) before the vertex word 0x8080d005 and the four floats are stored, from 0xdacea5c to 0xdacea70, to the window at 0x10000.

- `__glOdyim_Vertex4fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaceb40
  **Established.** Reads the four floats at a0 +0, +4, +8 and +12 with `lwc1` (first at 0xdaceb40) and sends them behind 0x8080d005. Five stores, at 0xdaceb5c, 0xdaceb60, 0xdaceb64, 0xdaceb68 and 0xdaceb70.

- `__glOdyim_Vertex4dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacea80
  **Established.** The double array version of the four-component vertex: four `ldc1` and four `cvt.s.d` (first conversion at 0xdacea84) precede the word 0x8080d005, and the five stores run from 0xdaceaac to 0xdaceac0 in the window at 0x10000.

- `__glOdyim_Vertex4s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacec80
  **Established.** Short four-component vertex. a0 to a3 are converted into f12 to f15 for the caller's benefit (`cvt.s.w`, first at 0xdacec88), while the board gets the integer-form word 0x8080d004 (opcode 0x04) and the four original arguments, at 0xdacecac, 0xdacecb0, 0xdacecb4, 0xdacecb8 and 0xdacecc0.

- `__glOdyim_Vertex4iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacec00
  **Established.** Four integers are loaded from a0 into a4 to a7 (`lw` from 0xdacec00), converted to f12 to f15, and written unconverted after the word 0x8080d004. This is the longest of the vertex senders, at 84 bytes; its stores run from 0xdacec3c to 0xdacec50.

- `__glOdyim_Color3b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4100
  **Established.** Signed-byte RGB colour sender: the colour word 0xc580cc0b (top half 0xc580) is stored at 0xdad410c, followed by a0, a1 and a2 as they arrived at 0xdad4110, 0xdad4114 and 0xdad411c. Every store goes to the window at 0x10000.

- `__glOdyim_Color3f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4300
  **Established.** Floating colour in three registers. The `sw` at 0xdad430c writes 0xc580cc0e; f12, f13 and f14 (red, green, blue) are then stored at 0xdad4310, 0xdad4314 and 0xdad431c. No clamping or scaling is done in this routine.

- `__glOdyim_Color3i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4400
  **Established.** Three integer colour components written straight from a0, a1 and a2 after the word 0xc580cc0d: stores at 0xdad440c, 0xdad4410, 0xdad4414 and 0xdad441c. The code is a four-store straight line with no branch.

- `__glOdyim_Color3s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4500
  **Established.** The word 0xc580cc0c is stored at 0xdad450c and the three short components a0 to a2 follow at 0xdad4510, 0xdad4514 and 0xdad451c. The routine neither extends nor scales them; they go to 0x10000 in the form the caller left them.

- `__glOdyim_Color3ub` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4600
  **Established.** Unsigned-byte RGB colour: command 0xc580cc08 at 0xdad460c, then a0, a1 and a2 at 0xdad4610, 0xdad4614 and 0xdad461c. Opcode 0x08 in the low half of the word marks the unsigned-byte form.

- `__glOdyim_Color3ui` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4700
  **Established.** Unsigned-integer RGB colour. After 0xc580cc0a (`sw` at 0xdad470c), the three argument registers a0, a1 and a2 are stored at 0xdad4710, 0xdad4714 and 0xdad471c, so the board sees the raw 32-bit values.

- `__glOdyim_Color3us` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4800
  **Established.** Unsigned-short RGB colour: the word 0xc580cc09 (opcode 0x09) at 0xdad480c and the three arguments at 0xdad4810, 0xdad4814 and 0xdad481c. Like its sibling senders the routine is straight-line code ending in the delay-slot store.

- `__glOdyim_Color3fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4380
  **Established.** Float array RGB colour with a 64-bit operand store: `lwu` loads the first float, an `ldl` at 0xdad4380 and `ldr` pair loads the other two as one doubleword, and the stores are 0xc580cc0e at 0xdad4398, the first float at 0xdad439c and the doubleword at 0xdad43a4.

- `__glOdyim_Color3iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4480
  **Established.** Integer array RGB colour. The first int is loaded with `lwu`, the last two are gathered by `ldl` at 0xdad4480 plus `ldr`, and the port gets the word 0xc580cc0d (`sw` at 0xdad4498), then one 4-byte store at 0xdad449c and one 8-byte store at 0xdad44a4.

- `__glOdyim_Color3uiv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4780
  **Established.** Unsigned integer array RGB colour sent with the same three-store shape as the signed array form: 0xc580cc0a at 0xdad4798, one word at 0xdad479c, and a doubleword built by `ldl` at 0xdad4780 and `ldr` stored at 0xdad47a4.

- `__glOdyim_Color3bv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4180
  **Established.** Reads three signed bytes from a0 (`lb` at 0xdad4180, +1 and +2) and sends them as separate 32-bit operands after 0xc580cc0b; stores at 0xdad4198, 0xdad419c, 0xdad41a0 and 0xdad41a8.

- `__glOdyim_Color3sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4580
  **Established.** Three halfwords at a0 +0, +2 and +4 are loaded with `lh` from 0xdad4580 and sent, sign-extended, behind 0xc580cc0c. The word is stored at 0xdad4598, the components at 0xdad459c, 0xdad45a0 and 0xdad45a8.

- `__glOdyim_Color3ubv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4680
  **Established.** Loads three unsigned bytes at a0 (`lbu` from 0xdad4680), so each component reaches the board zero-extended after the command word 0xc580cc08; the four stores run from 0xdad4698 to 0xdad46a8.

- `__glOdyim_Color3usv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4880
  **Established.** Unsigned halfword array colour: `lhu` at 0xdad4880 and the two following loads fetch the components at a0 +0, +2 and +4, which are written after 0xc580cc09 at 0xdad489c, 0xdad48a0 and 0xdad48a8. The command store is at 0xdad4898.

- `__glOdyim_Color3dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4280
  **Established.** Double array RGB colour: `ldc1` from 0xdad4280 loads red, green and blue, `cvt.s.d` (first at 0xdad4294) narrows each one and the board receives 0xc580cc0e and the three floats from 0xdad42a0 to 0xdad42b4.

- `__glOdyim_Color4f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4b80
  **Established.** Four-float colour with alpha. The word 0xc580d015 (opcode 0x15) is stored at 0xdad4b8c; f12 to f15 follow at 0xdad4b90, 0xdad4b94, 0xdad4b98 and 0xdad4ba0. All stores target 0x10000.

- `__glOdyim_Color4ub` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4e80
  **Established.** Unsigned-byte RGBA colour: command 0xc580d00f at 0xdad4e8c and the four argument registers a0 to a3 at 0xdad4e90, 0xdad4e94, 0xdad4e98 and 0xdad4ea0. No packing is done; each byte travels in its own 32-bit store.

- `__glOdyim_Color4fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4c00
  **Established.** RGBA float array sent as two 8-byte operands: two `ldl` and two `ldr` loads (the first at 0xdad4c00) gather the four floats and the stores are the word 0xc580d015 at 0xdad4c1c and doublewords at 0xdad4c20 and 0xdad4c28.

- `__glOdyim_Color4iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4d00
  **Established.** Integer RGBA array, forwarded with the doubleword technique: unaligned loads from 0xdad4d00 on build two 64-bit values, and the port receives 0xc580d014 (`sw` at 0xdad4d1c) followed by the two `sd` stores at 0xdad4d20 and 0xdad4d28.

- `__glOdyim_Color4uiv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad5000
  **Established.** Unsigned integer RGBA array. The command word 0xc580d011 (opcode 0x11) is stored at 0xdad501c, then two 8-byte stores at 0xdad5020 and 0xdad5028 carry the four values loaded by the `ldl` and `ldr` pairs from 0xdad5000.

- `__glOdyim_Color4d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4a00
  **Established.** Double RGBA colour in f12 to f15; each is narrowed in place by `cvt.s.d` (first at 0xdad4a00) and written as a float after 0xc580d015. Five stores, at 0xdad4a1c, 0xdad4a20, 0xdad4a24, 0xdad4a28 and 0xdad4a30.

- `__glOdyim_Color4dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4a80
  **Established.** The array twin of the double RGBA sender: four `ldc1` loads from 0xdad4a80, four narrowings (first at 0xdad4a98), and five stores starting with 0xc580d015 at 0xdad4aa4. At 68 bytes it is one of the longer colour entries.

- `__glOdyim_ScratchColor3f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4340
  **Established.** Scratch-slot RGB float colour. Its command word is 0xce80cc0e, and the 0xce80 half routes the colour to the scratch slot; the stores are at 0xdad434c (word), 0xdad4350, 0xdad4354 and 0xdad435c (f12, f13, f14).

- `__glOdyim_ScratchColor3ub` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4640
  **Established.** Unsigned-byte colour for the scratch slot: 0xce80cc08 at 0xdad464c and a0, a1, a2 at 0xdad4650, 0xdad4654 and 0xdad465c. Compared with the normal byte colour sender only the top half of the word differs.

- `__glOdyim_ScratchColor3fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad43c0
  **Established.** Float array colour for the scratch slot, with the same loads as the plain float array version (`lwu` plus an `ldl` and `ldr` pair from 0xdad43c0) and the word 0xce80cc0e stored at 0xdad43d8; operands go out at 0xdad43dc and 0xdad43e4.

- `__glOdyim_ScratchColor3iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad44c0
  **Established.** Integer array colour for the scratch slot. The word 0xce80cc0d is stored at 0xdad44d8, one 32-bit operand at 0xdad44dc and one 64-bit operand at 0xdad44e4, assembled from three ints by `lwu` and the `ldl` at 0xdad44c0 with its `ldr`.

- `__glOdyim_ScratchColor3uiv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad47c0
  **Established.** Unsigned integer array colour for the scratch slot: 0xce80cc0a at 0xdad47d8, the first component at 0xdad47dc, and the remaining two as one doubleword at 0xdad47e4.

- `__glOdyim_ScratchColor3bv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad41c0
  **Established.** Signed-byte array colour for the scratch slot. Three `lb` loads from 0xdad41c0 feed the stores that follow the word 0xce80cc0b: 0xdad41d8, 0xdad41dc, 0xdad41e0 and 0xdad41e8.

- `__glOdyim_ScratchColor3sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad45c0
  **Established.** Short array colour for the scratch slot; `lh` loads at 0xdad45c0, +2 and +4, the word 0xce80cc0c stored at 0xdad45d8, and operands stored at 0xdad45dc, 0xdad45e0 and 0xdad45e8.

- `__glOdyim_ScratchColor3ubv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad46c0
  **Established.** Unsigned byte array colour for the scratch slot, three `lbu` loads from 0xdad46c0 and four stores from 0xdad46d8 (the word 0xce80cc08) to 0xdad46e8.

- `__glOdyim_ScratchColor3usv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad48c0
  **Established.** Unsigned halfword array scratch colour: loads with `lhu` from 0xdad48c0, command 0xce80cc09 at 0xdad48d8, components at 0xdad48dc, 0xdad48e0 and 0xdad48e8.

- `__glOdyim_ScratchColor3dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad42c0
  **Established.** Double array scratch colour: three `ldc1` loads from 0xdad42c0, three `cvt.s.d` narrowings (first at 0xdad42d4), then 0xce80cc0e and three floats from 0xdad42e0 to 0xdad42f4.

- `__glOdyim_ScratchColor4f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4bc0
  **Established.** Scratch-slot RGBA float colour: 0xce80d015 at 0xdad4bcc, then f12 to f15 at 0xdad4bd0, 0xdad4bd4, 0xdad4bd8 and 0xdad4be0.

- `__glOdyim_ScratchColor4fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4c40
  **Established.** Scratch-slot RGBA float array. The command word 0xce80d015 is stored at 0xdad4c5c and the four floats leave as two doublewords at 0xdad4c60 and 0xdad4c68, gathered by `ldl` and `ldr` pairs from 0xdad4c40.

- `__glOdyim_ScratchColor4iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4d40
  **Established.** Scratch-slot RGBA integer array with the doubleword store pattern: 0xce80d014 at 0xdad4d5c, doublewords at 0xdad4d60 and 0xdad4d68, loads from 0xdad4d40.

- `__glOdyim_ScratchColor4uiv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad5040
  **Established.** Scratch-slot RGBA unsigned integer array: command 0xce80d011 (`sw` at 0xdad505c) and two 8-byte operand stores at 0xdad5060 and 0xdad5068.

- `__glOdyim_ScratchColor4bv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad49c0
  **Established.** Signed byte RGBA array for the scratch slot. Four `lb` loads from 0xdad49c0 give the components, and the stores are 0xce80d012 at 0xdad49dc and then one word each at 0xdad49e0, 0xdad49e4, 0xdad49e8 and 0xdad49f0.

- `__glOdyim_ScratchColor4d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4a40
  **Established.** Double RGBA to the scratch slot, narrowed by `cvt.s.d` (first at 0xdad4a40) and written after 0xce80d015; stores at 0xdad4a5c, 0xdad4a60, 0xdad4a64, 0xdad4a68 and 0xdad4a70.

- `__glOdyim_ScratchColor4sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4e40
  **Established.** Halfword RGBA array for the scratch slot: `lh` loads from 0xdad4e40 through +6, the word 0xce80d013 at 0xdad4e5c, then four 32-bit stores ending at 0xdad4e70.

- `__glOdyim_ScratchColor4ubv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4f40
  **Established.** Four unsigned bytes from a0 (`lbu` from 0xdad4f40) after the scratch colour word 0xce80d00f, stored at 0xdad4f5c, 0xdad4f60, 0xdad4f64, 0xdad4f68 and 0xdad4f70.

- `__glOdyim_ScratchColor4usv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad5140
  **Established.** Four unsigned halfwords from a0 (`lhu` from 0xdad5140) after the scratch colour word 0xce80d010; the five stores run from 0xdad515c to 0xdad5170.

- `__glOdyim_Normal3b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad3e80
  **Established.** Normal sender for signed bytes. The word 0xc180cc16 carries the normal slot in its top half (0xc180); it is stored at 0xdad3e8c, and a0, a1 and a2 follow unchanged at 0xdad3e90, 0xdad3e94 and 0xdad3e9c.

- `__glOdyim_Normal3f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad3f80
  **Established.** Float normal: 0xc180cc19 at 0xdad3f8c and then f12, f13 and f14 at 0xdad3f90, 0xdad3f94 and 0xdad3f9c. The routine passes the three components through without normalising them.

- `__glOdyim_Normal3i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4000
  **Established.** Integer normal. Stores at 0xdad400c (the word 0xc180cc18), 0xdad4010, 0xdad4014 and 0xdad401c write the command and the three integers a0, a1 and a2 to the window at 0x10000.

- `__glOdyim_Normal3s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4080
  **Established.** Short normal; same body as the integer normal, so after 0xc180cc17 (at 0xdad408c) the stores at 0xdad4090, 0xdad4094 and 0xdad409c carry a0, a1 and a2 as they came.

- `__glOdyim_Normal3fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad3fc0
  **Established.** Float array normal in the three-store shape: 0xc180cc19 at 0xdad3fd8, one word (`lwu`) at 0xdad3fdc and the other two components as one doubleword (`ldl` at 0xdad3fc0 and `ldr`) at 0xdad3fe4.

- `__glOdyim_Normal3iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4040
  **Established.** Integer array normal. Its loads are one `lwu` and an `ldl` at 0xdad4040 with an `ldr`, and the three stores are the word 0xc180cc18 at 0xdad4058, then 0xdad405c and 0xdad4064.

- `__glOdyim_Normal3bv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad3ec0
  **Established.** Signed bytes at a0 +0, +1 and +2 (`lb` from 0xdad3ec0) become three 32-bit operands after the normal word 0xc180cc16; stores at 0xdad3ed8, 0xdad3edc, 0xdad3ee0 and 0xdad3ee8.

- `__glOdyim_Normal3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad3f00
  **Established.** Double normal: f12, f13 and f14 are each narrowed with `cvt.s.d` (first at 0xdad3f00), then the word 0xc180cc19 and the three floats are written, from 0xdad3f18 to 0xdad3f28.

- `__glOdyim_Normal3sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad40c0
  **Established.** Short array normal, three `lh` loads from 0xdad40c0, then 0xc180cc17 at 0xdad40d8 and the components at 0xdad40dc, 0xdad40e0 and 0xdad40e8.

- `__glOdyim_Normal3dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad3f40
  **Established.** Double array normal: `ldc1` loads from 0xdad3f40 and `cvt.s.d` narrowings (first at 0xdad3f54) before 0xc180cc19 and the three floats are stored, from 0xdad3f60 to 0xdad3f74.

- `__glOdyim_EdgeFlag` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9da2e0
  **Established.** Edge-flag sender. A single `movz` at 0xd9da2f4 chooses between two command words, 0x3000c02e when the flag in a0 is zero and 0x2f00c02e when it is nonzero, and the delay-slot store at 0xd9da2fc writes the choice to the window at 0x10000. It sends no operand.

- `__glOdyim_EdgeFlagv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9da300
  **Established.** Loads the flag byte at a0 with `lbu` at 0xd9da300 and then behaves like the by-value edge flag sender: a `movz` selects 0x3000c02e for a zero byte and 0x2f00c02e for a nonzero one, and the one store at 0xd9da320 puts the word on the command window at 0x10000.

- `__glOdysseyDisableHyperpipe` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9f4690
  **Established.** Does nothing in this N32 build: the whole 8-byte body is `jr ra` at 0xd9f4690 with a `nop` in its delay slot. It reads no register, touches no memory and sets no result, so a caller's disable request has no effect here.

- `__glOdysseyEnableHyperpipe` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9f4680
  **Established.** Empty routine: a return at 0xd9f4680 and a `nop` in the delay slot are all there is. It shares its bytes with the disable and finish hyperpipe stubs, and calling it changes nothing in the context or on the board.

- `__glOdysseyFinishHyperpipe` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9f46a0
  **Established.** A return-only stub (`jr ra` at 0xd9f46a0, delay slot `nop`). It does not wait, flush or set a value, so the caller continues at once.

- `__glOdysseyInitAsyncState` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd956030
  **Established.** The asynchronous-state initialiser has an empty body in this build, two instructions long: `jr ra` at 0xd956030 and a `nop`. No field of the context is written.

- `__glOdysseyInitFragmentMaterial` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd985210
  **Established.** Returns at once. The 8 bytes are `jr ra` at 0xd985210 and a `nop`, with no stores, so no fragment-material state is initialised in this build.

- `__glOdysseyPickDepthProcs` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9c59e0
  **Established.** The depth-procedure picker is a bare return (`jr ra` at 0xd9c59e0, then `nop`); it assigns no function pointers and returns nothing.

- `__glOdysseyInitHyperpipeState` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9f46b0
  **Established.** Clears one word. The delay slot of the return stores zero at the address in a0 (`sw` at 0xd9f46b4), so the first word of the hyperpipe state record is reset and nothing else is touched.

- `__glOdysseyMIPS_SYNC` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacd040
  **Established.** Wraps the MIPS `sync` instruction: the return at 0xdacd040 carries `sync` in its delay slot, so every earlier load and store completes before the caller proceeds. It reads no argument and returns no value.

- `__glOdysseyChangeMaterialAmbient` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9f0800
  **Established.** Copies the four floats held at context +432, +436, +440 and +444 (a0) to the first four words of the destination in a1, loading from 0xd9f0800 on and storing at offsets 0, 4, 8 and 12. The last store sits in the return's delay slot at 0xd9f0820.

- `__glOdysseyChangeMaterialDiffuse` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9f0830
  **Established.** Takes the four floats at context +432 to +444 and writes them into the destination at a1 +16, +20, +24 and +28; loads start at 0xd9f0830 and the final store is at 0xd9f0850. The block at +16 follows the four words used for ambient colour.

- `__glOdysseyChangeMaterialSpecular` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9f07d0
  **Established.** Moves the colour quadruple at a0 +432 through +444 to a1 +32, +36, +40 and +44 using four `lwc1` and four `swc1` pairs (first load at 0xd9f07d0, last store at 0xd9f07f0). It fills the third group of four words of the destination.

- `__glOdysseyChangeMaterialEmission` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9f07a0
  **Established.** Fourth of the material copy helpers: the same four floats at a0 +432 to +444 are stored at a1 +48, +52, +56 and +60. Interleaved loads and stores run from 0xd9f07a0 to 0xd9f07c0, and the helper calls nothing.

- `__glOdysseyChangeMaterialAmbientAndDiffuse` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9f0860
  **Established.** Writes each of the four floats at a0 +432 to +444 twice, once to a1 +0..+12 and once to a1 +16..+28, so ambient and diffuse take the same colour in one pass. Four loads (the first at 0xd9f0860) feed eight stores, the last at 0xd9f0890.

- `__glOdysseyAtomicTestAndSet` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacd050
  **Established.** Atomic exchange with one: the `ll` at 0xdacd050 reads the word at a0, `sc` stores 1 back, and the loop repeats while `sc` reports failure (`beqz` at 0xdacd0e0, after thirty-two `nop` words). The previous value is returned in v0, so the caller learns the earlier state of the word.

- `__glOdysseyAtomicAdd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacd0f0
  **Established.** Atomically increments the word at a0 with a load-linked and store-conditional pair (`ll` at 0xdacd0f0) and retries until the store succeeds. The value it returns is the incremented one: v0 holds the old value plus 1.

- `__glOdysseyAtomicSubtract` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacd190
  **Established.** Atomic decrement of the word at a0: `ll` at 0xdacd190, `addi` by -1, `sc`, and a retry branch on failure. v0 returns the new, decremented value, not the one that was read. Thirty-two `nop` instructions separate the `sc` from the retry branch.

- `__glOdyssey_FastDispatchBase` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad8000
  **Established.** Trampoline for the fast-dispatch code region. The first instruction at 0xdad8000 loads a code address from absolute location 5592 (0x15d8), `jr` jumps to it, and the remaining 120 bytes of the 128 are `nop` padding. It leaves the arguments in place for the target.

- `__glOdyssey_FastDispatchVertexBase` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdada900
  **Established.** Vertex-side trampoline of the fast dispatch region: `lw` at 0xdada900 reads the target address from absolute location 5496 (0x1578) and `jr` jumps to it. The other 250 bytes of the 256 are `nop` words.

- `__glOdysseyImageLogBase2` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9c1e40
  **Established.** Rounded-up base-2 logarithm of a0, returned in v0. A zero argument returns 0 straight away (`beqz` at 0xd9c1e40). Otherwise `and` with a0 - 1 and `sltu` give v0 = 1 when a0 is not a power of two and 0 when it is; a0 is shifted right once, and each further shift adds 1 to v0 until a0 is zero. So 1 gives 0, 8 gives 3 and 9 gives 4.
