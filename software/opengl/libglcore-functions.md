# libGLcore functions by source file and role

Release IRIX 6.5.30m, N32 `libGLcore.so` for IP30 (`usr/gfx/arch/IP30ODSY32`; the other ABIs and the IP35 copies are builds of the same sources). The disassembly is `software/opengl/asm/`, one file per source file, extracted by `retools/tools/odsy/extract_libglcore_odsy.py`.

Labels: the source file of each function is **established** from the compiler's `# Source:` line in the extracted assembly (a DWARF compilation unit of the library). The role of a source file is **inferred** from its name and from the names of the functions in it; where `opengl/opengl.md`, `buzz/README.md` or `ucode/buzz_isa.md` read a function in full, the finding is there and not repeated. The lists are names filed by source file and inferred role; they describe no function's behaviour, and the source file of each name is the only fact in them that was read from the binary.

How the library is organised (all **inferred** from names):

- Entry points come in forms named for the path they serve: `__glim_` the software renderer's immediate-mode form, `__glOdyim_` the Odyssey immediate-mode form that sends words to the board, `__glOdylc_` the Odyssey form compiled into a display list, `__gllc_`, `__glce_`, `__glle_` and `__glsplc_` the generic display-list compile, extended compile, execute and single-pass compile forms.
- `ODYSSEY` holds the board-specific code (context, program selection, vertex senders, textures, lighting, clipping, image processing, hyperpipe). The other directories are the generic OpenGL core: `soft` (host renderer, the fallback when the board path cannot draw), `dlist`, `pixel`, `PIXMAP`, `mips` and `g`.
- Functions with no `__gl` prefix (`Store`, `Fetch`, `Pick`, `ApplyParameterF`) are file-local helpers.

## Functions

### N32 colour command senders read from the 6.5.30 media build

- `__glOdylc_Color3b` (`usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd960aa0): **established.**
  Size 328 bytes. It marks the colour state dirty, obtains display-list space when the current list has fewer than four words, and writes a 16-byte three-component signed-byte record with token `0xc580cc0b` followed by the three arguments (`sw` at 0xd960b54, 0xd960b58, 0xd960b5c and 0xd960b60). It advances the list pointer by 16 bytes and the word count by four; a failed allocation restores the prior pointer and increments the pending count. Established from the complete N32 routine at 0xd960aa0.
- `__glOdylc_Color3bv` (`usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd960bf0): **established.**
  Size 316 bytes. It marks colour state dirty, reads three signed bytes from the caller's vector at offsets 0, 1 and 2 (`lb` at 0xd960c98, 0xd960ca4 and 0xd960cac), and stores them after token `0xc580cc0b` in a 16-byte display-list record (`sw` at 0xd960c94). It reserves space through `__glSPDlistSpace`, advances the pointer by 16 and counts four words, or leaves the pending allocation state for the caller when reservation fails. Established from the complete N32 routine at 0xd960bf0.
- `__glOdylc_Color3d` (`usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd960d30): **established.**
  Size 352 bytes. It converts the three double arguments to single precision (`the Odyssey stack assembly unit 1.d` at 0xd960df0, 0xd960dfc and 0xd960e04), then writes token `0xc580cc0e` and the three converted components into one 16-byte display-list record (`sw` at 0xd960df8 and `swc1` at 0xd960e00, 0xd960e08 and 0xd960e0c). It uses the same four-word reservation and pointer/count update, with the allocation-failure path restoring the saved arguments. Established from the complete N32 routine at 0xd960d30.
- `__glOdylc_Color3dv` (`usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd960e90): **established.**
  Size 328 bytes. It loads three doubles from vector offsets 0, 8 and 16 (`ldc1` at 0xd960f2c, 0xd960f38 and 0xd960f44), converts each to single precision, and writes them after token `0xc580cc0e` (`sw` at 0xd960f28 and `swc1` at 0xd960f34, 0xd960f40 and 0xd960f5c). The complete path marks colour dirty and advances a successful 16-byte record by four list words. Established from the complete N32 routine at 0xd960e90.
- `__glOdylc_Color3f` (`usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd960fe0): **established.**
  Size 340 bytes. It marks colour state dirty and writes the three single-precision arguments directly after token `0xc580cc0e` (`sw` at 0xd9610a4 and `swc1` at 0xd9610a8, 0xd9610ac and 0xd9610b0). The sender reserves four display-list words, advances its pointer by 16 bytes, and increments the pending word count; it retries through `__glSPDlistSpace` when the current list is full. Established from the complete N32 routine at 0xd960fe0.
- `__glOdylc_Color3fv` (`usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd961140): **established.**
  Size 316 bytes. It loads three single-precision components from vector offsets 0, 4 and 8 (`lwc1` at 0xd9611dc, 0xd9611e8 and 0xd9611f8), and stores them after token `0xc580cc0e` in a 16-byte record (`sw` at 0xd9611d8). It sets the colour dirty bit and updates the display-list pointer and four-word count after a successful reservation. Established from the complete N32 routine at 0xd961140.
- `__glOdylc_Color3i` (`usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd961280): **established.**
  Size 328 bytes. It marks colour state dirty and emits token `0xc580cc0d` followed by the three signed integer arguments (`sw` at 0xd961334, 0xd961338, 0xd96133c and 0xd961340). The output record is 16 bytes, so the routine advances the display-list pointer by 16 and the pending count by four, obtaining new space when fewer than four words remain. Established from the complete N32 routine at 0xd961280.
- `__glOdylc_Color3iv` (`usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd9613d0): **established.**
  Size 316 bytes. It fetches three signed integers from vector offsets 0, 4 and 8 (`lw` at 0xd961478, 0xd961484 and 0xd96148c), writes token `0xc580cc0d` and those values into a 16-byte display-list record (`sw` at 0xd961474), and marks colour state dirty. A successful record consumes four list words; the full-list path calls `__glSPDlistSpace` before retrying. Established from the complete N32 routine at 0xd9613d0.
- `__glOdylc_Color3s` (`usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd961510): **established.**
  Size 328 bytes. It emits the three signed short arguments as sign-extended words after token `0xc580cc0c` (`sw` at 0xd9615c4, 0xd9615c8, 0xd9615cc and 0xd9615d0). It sets the colour dirty flag, reserves a four-word display-list record, advances the record pointer by 16 bytes, and updates the pending word count. Established from the complete N32 routine at 0xd961510.
- `__glOdylc_Color3sv` (`usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd961660): **established.**
  Size 316 bytes. It sign-extends the three short vector elements loaded at offsets 0, 2 and 4 (`lh` at 0xd961708, 0xd961714 and 0xd96171c), then stores them after token `0xc580cc0c` (`sw` at 0xd961704). It marks colour state dirty and consumes four display-list words for the resulting 16-byte record. Established from the complete N32 routine at 0xd961660.
- `__glOdylc_Color3ub` (`usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd9617a0): **established.**
  Size 328 bytes. It writes the three unsigned byte arguments as words after token `0xc580cc08` (`sw` at 0xd961854, 0xd961858, 0xd96185c and 0xd961860), marks colour state dirty, and advances a 16-byte display-list record. The sender reserves four words and retries allocation when the current list cannot hold the record. Established from the complete N32 routine at 0xd9617a0.
- `__glOdylc_Color3ubv` (`usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd9618f0): **established.**
  Size 316 bytes. It loads three unsigned bytes from vector offsets 0, 1 and 2 (`lbu` at 0xd961998, 0xd9619a4 and 0xd9619ac), stores them after token `0xc580cc08` (`sw` at 0xd961994), and marks colour state dirty. The completed vector sender advances the list pointer by 16 bytes and the pending count by four. Established from the complete N32 routine at 0xd9618f0.
- `__glOdylc_Color3ui` (`usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd961a30): **established.**
  Size 328 bytes. It emits the three unsigned integer arguments after token `0xc580cc0a` (`sw` at 0xd961ae4, 0xd961ae8, 0xd961aec and 0xd961af0), sets the colour dirty bit, and records four consumed list words for the 16-byte command. It obtains fresh display-list space when the current block is too short. Established from the complete N32 routine at 0xd961a30.
- `__glOdylc_Color3uiv` (`usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd961b80): **established.**
  Size 316 bytes. It reads three unsigned integers from vector offsets 0, 4 and 8 (`lw` at 0xd961c28, 0xd961c34 and 0xd961c3c), emits them after token `0xc580cc0a` (`sw` at 0xd961c24), and marks colour state dirty. The vector form consumes one 16-byte record, advances by four words, and uses `__glSPDlistSpace` when needed. Established from the complete N32 routine at 0xd961b80.
- `__glOdylc_Color3us` (`usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd961cc0): **established.**
  Size 328 bytes. It emits the three unsigned short arguments as words after token `0xc580cc09` (`sw` at 0xd961d74, 0xd961d78, 0xd961d7c and 0xd961d80), marks colour state dirty, and advances the display-list pointer by 16 bytes and the count by four. A short list calls `__glSPDlistSpace` before the record is written. Established from the complete N32 routine at 0xd961cc0.
- `__glOdylc_Color3usv` (`usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd961e10): **established.**
  Size 316 bytes. It loads three unsigned shorts from vector offsets 0, 2 and 4 (`lhu` at 0xd961eb8, 0xd961ec4 and 0xd961ecc), writes them after token `0xc580cc09` (`sw` at 0xd961eb4), and marks colour state dirty. A successful vector record advances 16 bytes and four words; allocation failure leaves the list-space accounting on its retry path. Established from the complete N32 routine at 0xd961e10.

### N32 four-component colour command senders read from the 6.5.30 media build

- `__glOdylc_Color4b` (`usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd961f50): **established.**
  Size 344 bytes. It writes the four signed-byte arguments into a 20-byte display-list record (`sw` at 0xd962004, 0xd962008, 0xd96200c and 0xd962014), prefixes them with token `0xc580d012` (`sw` at 0xd96201c), and marks colour state dirty. The sender reserves five words and advances the list pointer by 20 bytes when the write succeeds. Established from the complete N32 routine at 0xd961f50.
- `__glOdylc_Color4bv` (`usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd9620b0): **established.**
  Size 324 bytes. It loads four signed bytes from vector offsets 0, 1, 2 and 3 (`lb` at 0xd962158, 0xd962160, 0xd96216c and 0xd962174), stores them after token `0xc580d012` (`sw` at 0xd962154), and sets the colour dirty flag. One successful vector command consumes five list words and updates the pointer by 20 bytes. Established from the complete N32 routine at 0xd9620b0.
- `__glOdylc_Color4d` (`usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd962200): **established.**
  Size 376 bytes. It saves four double arguments, converts them to single precision, and emits token `0xc580d015` (`sw` at 0xd9622d4) followed by four float components (`swc1` at 0xd9622dc, 0xd9622e4, 0xd9622ec and 0xd9622f0). The 20-byte record advances the display-list accounting by five words after space is available. Established from the complete N32 routine at 0xd962200.
- `__glOdylc_Color4dv` (`usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd962380): **established.**
  Size 340 bytes. It reads four doubles at vector offsets 0, 8, 16 and 24 (`ldc1` at 0xd96241c, 0xd962428, 0xd962434 and 0xd962440), converts the components as required, and writes them after token `0xc580d015` (`sw` at 0xd962418). The routine emits five list words and marks colour state dirty before returning. Established from the complete N32 routine at 0xd962380.
- `__glOdylc_Color4f` (`usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd9624e0): **established.**
  Size 360 bytes. It emits the four single-precision arguments after token `0xc580d015` (`sw` at 0xd9625b0 and `swc1` at 0xd9625b4, 0xd9625b8, 0xd9625bc and 0xd9625c0). It marks colour dirty, obtains five display-list words when needed, and advances the command pointer by 20 bytes. Established from the complete N32 routine at 0xd9624e0.
- `__glOdylc_Color4fv` (`usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd962650): **established.**
  Size 324 bytes. It loads four floats from vector offsets 0, 4, 8 and 12 (`lwc1` at 0xd9626ec, 0xd9626f4, 0xd962700 and 0xd962710), stores them after token `0xc580d015` (`sw` at 0xd9626e8), and updates the dirty colour state. A complete vector record is 20 bytes, or five pending words, in the display-list stream. Established from the complete N32 routine at 0xd962650.
- `__glOdylc_Color4i` (`usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd9627a0): **established.**
  Size 344 bytes. It writes four signed integer arguments after token `0xc580d014` (`sw` at 0xd962854, 0xd962858, 0xd96285c, 0xd962864 and 0xd96286c), marks the colour state dirty, and commits a five-word command. When the list lacks room, it obtains another block before writing the 20-byte record. Established from the complete N32 routine at 0xd9627a0.
- `__glOdylc_Color4iv` (`usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd962900): **established.**
  Size 324 bytes. It reads four signed integers from vector offsets 0, 4, 8 and 12 (`lw` at 0xd9629a8, 0xd9629b0, 0xd9629bc and 0xd9629c4), writes token `0xc580d014` at 0xd9629a4, and stores the values in the following four slots. The vector sender marks colour dirty and accounts for five display-list words. Established from the complete N32 routine at 0xd962900.
- `__glOdylc_Color4s` (`usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd962a50): **established.**
  Size 344 bytes. It emits four signed short arguments after token `0xc580d013` (`sw` at 0xd962b04, 0xd962b08, 0xd962b0c, 0xd962b14 and 0xd962b1c), sets the colour dirty flag, and advances a 20-byte display-list record. The reservation path requires five words and retries when the current block is too short. Established from the complete N32 routine at 0xd962a50.
- `__glOdylc_Color4sv` (`usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd962bb0): **established.**
  Size 324 bytes. It sign-extends vector shorts loaded at offsets 0, 2, 4 and 6 (`lh` at 0xd962c58, 0xd962c60, 0xd962c6c and 0xd962c74), then stores them after token `0xc580d013` (`sw` at 0xd962c54). The command consumes five list words and leaves the colour state dirty. Established from the complete N32 routine at 0xd962bb0.
- `__glOdylc_Color4ub` (`usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd962d00): **established.**
  Size 344 bytes. It places four unsigned-byte arguments after token `0xc580d00f` (`sw` at 0xd962db4, 0xd962db8, 0xd962dbc, 0xd962dc4 and 0xd962dcc), marks colour state dirty, and updates the five-word list accounting. The direct form advances the output pointer by 20 bytes. Established from the complete N32 routine at 0xd962d00.
- `__glOdylc_Color4ubv` (`usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd962e60): **established.**
  Size 324 bytes. It reads four unsigned bytes from vector offsets 0, 1, 2 and 3 (`lbu` at 0xd962f08, 0xd962f10, 0xd962f1c and 0xd962f24), stores them after token `0xc580d00f` (`sw` at 0xd962f04), and marks colour state dirty. A successful vector operation advances 20 bytes and five list words. Established from the complete N32 routine at 0xd962e60.
- `__glOdylc_Color4ui` (`usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd962fb0): **established.**
  Size 344 bytes. It emits four unsigned integer arguments after token `0xc580d011` (`sw` at 0xd963064, 0xd963068, 0xd96306c, 0xd963074 and 0xd96307c), sets colour dirty, and advances the display-list pointer by 20 bytes. The full-list branch obtains another five-word span before storing the record. Established from the complete N32 routine at 0xd962fb0.
- `__glOdylc_Color4uiv` (`usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd963110): **established.**
  Size 324 bytes. It loads four unsigned integers from vector offsets 0, 4, 8 and 12 (`lw` at 0xd9631b8, 0xd9631c0, 0xd9631cc and 0xd9631d4), writes token `0xc580d011` at 0xd9631b4, and places the values in the remaining record slots. It marks colour dirty and counts five words for the completed 20-byte command. Established from the complete N32 routine at 0xd963110.
- `__glOdylc_Color4us` (`usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd963260): **established.**
  Size 344 bytes. It writes four unsigned short arguments after token `0xc580d010` (`sw` at 0xd963314, 0xd963318, 0xd96331c, 0xd963324 and 0xd96332c), marks the colour state dirty, and advances a five-word display-list record. The sender reserves another block when fewer than five words remain. Established from the complete N32 routine at 0xd963260.
- `__glOdylc_Color4usv` (`usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd9633c0): **established.**
  Size 324 bytes. It loads four unsigned shorts at vector offsets 0, 2, 4 and 6 (`lhu` at 0xd963468, 0xd963470, 0xd96347c and 0xd963484), writes them after token `0xc580d010` (`sw` at 0xd963464), and marks colour state dirty. The vector record is 20 bytes and advances the pending count by five. Established from the complete N32 routine at 0xd9633c0.

### N32 colour-index command senders read from the 6.5.30 media build

- `__glOdylc_Indexd` (`usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd963510): **established.**
  Size 304 bytes. It converts the double argument to single precision (`the Odyssey stack assembly unit 1.d` at 0xd9635b8) and writes token `0xc580c407` followed by that float (`sw` at 0xd9635c0 and `swc1` at 0xd9635c4). The sender marks colour-index state dirty and advances an 8-byte, two-word display-list record. Established from the complete N32 routine at 0xd963510.
- `__glOdylc_Indexdv` (`usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd963640): **established.**
  Size 304 bytes. It loads one double from vector offset 0 (`ldc1` at 0xd9636dc), converts it to a single, and emits token `0xc580c407` plus the result (`sw` at 0xd9636d8 and `swc1` at 0xd9636f4). The vector form consumes two list words and marks colour-index state dirty. Established from the complete N32 routine at 0xd963640.
- `__glOdylc_Indexf` (`usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd963770): **established.**
  Size 300 bytes. It stores the single-precision argument after token `0xc580c407` (`sw` at 0xd96381c and `swc1` at 0xd963820), marks the indexed-colour state dirty, and advances the list pointer by 8 bytes. A short list obtains two fresh words before writing. Established from the complete N32 routine at 0xd963770.
- `__glOdylc_Indexfv` (`usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd9638a0): **established.**
  Size 300 bytes. It loads one float from vector offset 0 (`lwc1` at 0xd963948), writes it after token `0xc580c407` (`sw` at 0xd963944 and `swc1` at 0xd963950), and marks indexed-colour state dirty. The completed command occupies two display-list words. Established from the complete N32 routine at 0xd9638a0.
- `__glOdylc_Indexi` (`usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd9639d0): **established.**
  Size 296 bytes. It emits the signed integer argument after token `0xc580c406` (`sw` at 0xd963a78 and 0xd963a7c), marks indexed-colour state dirty, and accounts for one two-word record. The list-space path retries after reserving two words. Established from the complete N32 routine at 0xd9639d0.
- `__glOdylc_Indexiv` (`usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd963b00): **established.**
  Size 300 bytes. It reads the indexed-colour integer from the caller's vector and stores it after token `0xc580c406` (`sw` at 0xd963ba8 and 0xd963bb0). It sets the dirty state and advances the output pointer by 8 bytes, using the same two-word reservation path as the scalar sender. Established from the complete N32 routine at 0xd963b00.
- `__glOdylc_Indexs` (`usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd963c30): **established.**
  Size 296 bytes. It places the signed short argument in the second word after token `0xc580c406` (`sw` at 0xd963cd8 and 0xd963cdc), marks indexed-colour state dirty, and commits an 8-byte display-list command. If space is unavailable, it obtains a two-word span before retrying. Established from the complete N32 routine at 0xd963c30.
- `__glOdylc_Indexsv` (`usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd963d60): **established.**
  Size 300 bytes. It loads the short vector element at offset 0 (`lh` at 0xd963e0c), writes token `0xc580c406` and the value (`sw` at 0xd963e08 and 0xd963e10), and marks indexed-colour state dirty. The vector path advances the list pointer by 8 bytes and the pending count by two. Established from the complete N32 routine at 0xd963d60.
- `__glOdylc_Indexub` (`usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd963e90): **established.**
  Size 296 bytes. It emits the unsigned-byte index after token `0xc580c406` (`sw` at 0xd963f38 and 0xd963f3c), marks indexed-colour state dirty, and consumes two display-list words. The scalar path reserves a new two-word span when the current list is full. Established from the complete N32 routine at 0xd963e90.
- `__glOdylc_Indexubv` (`usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd963fc0): **established.**
  Size 300 bytes. It loads the unsigned-byte vector element at offset 0 (`lbu` at 0xd96406c), stores it after token `0xc580c406` (`sw` at 0xd964068 and 0xd964070), and marks indexed-colour state dirty. The vector sender updates the pointer by 8 bytes and the count by two after a successful reservation. Established from the complete N32 routine at 0xd963fc0.

### o32 attribute setters read from the 6.5.30 media build

- `__glOdyim_BlendEquationEXT` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, address `0xd95d73c`): **established.**
  Size 364 bytes. It rejects unsupported equation values with error 0x500, maps the accepted core and extension values to an index from 0 through 7, and stores the original value at context +0x72c (`sw` at 0xd95d868) and the index in bits 13:15 of the word at +0x7c34 (`sw` at 0xd95d86c). It sets the context dirty bit at +0x16960 and writes command 2 to the board window at 0x1018 (`sw` at 0xd95d88c). The mode-1 path reports error 0x502 instead. Established from the complete o32 routine at 0xd95d73c.
- `__glOdyim_ColorMask` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, address `0xd95d8a8`): **established.**
  Size 324 bytes. It reduces each of the four arguments to one byte, turns their nonzero status into bits 20 through 23 of the context word at +0x7c5c, and preserves the other bits (`lw` at 0xd95d90c and `sw` at 0xd95d958). The four byte values are cached at +0x75c through +0x75f (`sb` at 0xd95d9a0, 0xd95d9a4, 0xd95d9a8 and 0xd95d9ac), then the state is marked dirty at +0x16960 and command 2 is written to 0x1018 (`sw` at 0xd95d9d0). Mode 1 reports error 0x502. Established from the complete o32 routine at 0xd95d8a8.
- `__glOdyim_CullFace` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, address `0xd95db1c`): **established.**
  Size 280 bytes. It accepts the three cull enums 0x404, 0x405 and 0x408, translating them to the two-bit values 0x400, 0x200 and 0x600 in the context word at +0x7bfc (`lw` at 0xd95db8c and `sw` at 0xd95dba0). Unsupported values report error 0x500; a valid value is cached at +0x1ec (`sw` at 0xd95dc0c), marks dirty state at +0x16960 and emits command 2 at 0x1018 (`sw` at 0xd95dc04). Established from the complete o32 routine at 0xd95db1c.
- `__glOdyim_DepthFunc` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, address `0xd95dc34`): **established.**
  Size 280 bytes. It accepts only values 0x200 through 0x207, stores the enum at +0x660 (`sw` at 0xd95dcb0), and replaces the low three bits of the shadow word at +0x7c30 with the enum's low three bits (`sw` at 0xd95dcbc). It sets the raster dirty bit at +0x16964 (`sw` at 0xd95dd2c), writes the command word 0x10420 to the board window at 0x1000 (`sw` at 0xd95dd08), and reports error 0x500 for other values. Established from the complete o32 routine at 0xd95dc34.
- `__glOdyim_DepthMask` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, address `0xd95dd4c`): **established.**
  Size 192 bytes. It keeps the argument's low byte at +0x664 (`sb` at 0xd95dd9c), derives the enable bit from that byte and the context's +0xc99 flag, and updates bit 24 of the word at +0x7c5c (`sw` at 0xd95ddd0). It marks the state dirty at +0x16960 and emits command 2 at 0x1018 (`sw` at 0xd95ddf0); mode 1 reports error 0x502. Established from the complete o32 routine at 0xd95dd4c.
- `__glOdyim_FrontFace` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, address `0xd95e2e8`): **established.**
  Size 256 bytes. It handles only enums 0x900 and 0x901, clearing bit 7 of the word at +0x7bfc and setting it for the first enum (`sw` at 0xd95e36c and 0xd95e384). The selected enum is cached at +0x1f0 (`sw` at 0xd95e3c0), while +0x16960 receives dirty bit 2 (`sw` at 0xd95e3b4); invalid values report error 0x500. Established from the complete o32 routine at 0xd95e2e8.
- `__glOdyim_IndexMask` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, address `0xd95e3e8`): **established.**
  Size 164 bytes. It takes the argument's low twelve bits together with the context word at +0x7848, saves that result at +0x758 (`sw` at 0xd95e44c), and replaces the low twelve bits of the colour-mask shadow at +0x7c5c (`sw` at 0xd95e450). The update sets dirty bit 0x80 at +0x16960 (`sw` at 0xd95e468) and writes command 2 to 0x1018 (`sw` at 0xd95e470). Mode 1 reports error 0x502. Established from the complete o32 routine at 0xd95e3e8.
- `__glOdyim_LineStipple` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, address `0xd95e48c`): **established.**
  Size 288 bytes. It clamps the repeat factor to 1 through 256, retains the pattern's low halfword, and updates the three stipple shadow words at +0x7c44, +0x7c48 and +0x7c4c (`sw` at 0xd95e52c, 0xd95e530 and 0xd95e534). The factor and pattern are also cached as halfwords at +0x1e2 and +0x1e0 (`sh` at 0xd95e524 and 0xd95e528). When the cached command stream is active it emits the stipple words through 0x1000, including 0x10443 and 0x10446; otherwise the state remains shadowed. Established from the complete o32 routine at 0xd95e48c.
- `__glOdyim_LineWidth` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, address `0xd95e5ac`): **established.**
  Size 300 bytes. Nonpositive widths report error 0x501; accepted widths are cached as a float at +0x1d4 (`swc1` at 0xd95e638), rounded to an integer at +0x1dc (`sw` at 0xd95e650), and clamped against the context limits at +0xeac and +0xeb0 before being stored at +0x1d8 (`swc1` at 0xd95e684 and 0xd95e6a0). It sets dirty bit 0x800 at +0x16964 (`sw` at 0xd95e6b8) and emits command 2 at 0x1018 (`sw` at 0xd95e6bc). Established from the complete o32 routine at 0xd95e5ac.
- `__glOdyim_LogicOp` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, address `0xd95e6d8`): **established.**
  Size 244 bytes. It accepts the sixteen logic-operation enums from 0x1500 through 0x150f, stores the original enum at +0x740 (`sw` at 0xd95e760), and replaces the low nibble of the shadow word at +0x7c40 (`sw` at 0xd95e764). Invalid values report error 0x500. If a cached command stream is active it emits 0x10422 and the shadow word through the board window at 0x1000 (`sw` at 0xd95e790 and 0xd95e7b0). Established from the complete o32 routine at 0xd95e6d8.
- `__glOdyim_ReadBuffer` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, address `0xd95de0c`): **established.**
  Size 380 bytes. It dispatches values 0x400 through 0x40c through a jump table, rejects values outside that range with error 0x500, and rejects unavailable front or back targets with error 0x502. Accepted selections are stored at +0x4d4 or +0x4d8 (`sw` at 0xd95df60 and 0xd95df44), then dirty bit 0x10 is set in +0x2e24 (`sw` at 0xd95df74). The path also checks drawable flags at +0xc96 and +0xc97 and the buffer limit at +0xce0 (`lbu` at 0xd95de8c, 0xd95def0 and `lw` at 0xd95debc). Established from the complete o32 routine at 0xd95de0c.
- `__glOdyim_ShadeModel` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, address `0xd95fc1c`): **established.**
  Size 228 bytes. It accepts only 0x1d00 and 0x1d01, caches the enum at +0x570 (`sw` at 0xd95fc90), and sets or clears bit 12 in the raster shadow word at +0x7bfc (`sw` at 0xd95fcc8). The routine marks dirty bit 2 at +0x16960 (`sw` at 0xd95fce0), writes command 2 to 0x1018 (`sw` at 0xd95fce4), and sends error 0x500 for other values. Established from the complete o32 routine at 0xd95fc1c.
- `__glOdyim_StencilMask` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, address `0xd95fe54`): **established.**
  Size 292 bytes. It limits the argument to the current stencil width, caches the result as a halfword at +0x68a (`sh` at 0xd95fec0), and calls the context callback at +0x10 when the value changes outside the special full-mask cases (`lw` at 0xd95fed4 and `jalr` at 0xd95fee0). The hardware shadow stores the resulting mask in bits 12 through 15 of +0x7c5c (`sw` at 0xd95ff38), then marks dirty bit 0x80 at +0x16960 and writes command 2 at 0x1018 (`sw` at 0xd95ff50 and 0xd95ff58). Established from the complete o32 routine at 0xd95fe54.

### `ODYSSEY` (Odyssey path)

the Odyssey GL driver accumulation source unit: accumulation buffer operations.

`sendBlenderOpTokens`, `sendBlenderColorTokensAccum24`, `destroyScratchBufAccum`, `__glOdysseyAccumClose`, `initScratchBufAccum`, `initVisualNumComp`, `initAccumGfxImages`, `initBuffersForAccum`, `initGeomForAccum`, `softLoad`, `softAccumulate`, `softMult`, `softAdd`, `softReturn`, `__glSoftAllocAccum`, `softClear`, `__glOdySoftAccum`, `hardLoadAccumulate24`, `hardAdd24`, `hardMult24`, `hardReturn24`, `hardClear24`, `__glOdyHardAccum24`, `__glOdysseyInitAccum`, `__glOdyim_Accum`

the Odyssey GL driver asynchronous source unit: asynchronous markers and polling (SGIX async).

`__glOdysseyInitAsyncState`, `AsyncPollDequeue`, `__glOdysseyAsyncCheck`, `__glOdysseyAsyncDropMarker`, `__glOdyim_PollAsyncSGIX`, `__glOdyim_FinishAsyncSGIX`

the Odyssey GL driver attribute state source unit (part 1): attribute state setters and the attribute stack.

`ValidateColorMaterial`, `__glOdyim_IsEnabled`, `__glOdyim_Hint`, `__glOdyim_Enable`, `PushAttributes`, `__glOdyim_PushAttrib`, `__glOdyssey_CopyContext`, `TargetIndexToTargetEnum`, `__glOdyssey_ResolveContext`, `__glOdyim_PopAttrib`, `__glOdysseyFreeAttributeState`, `__glOdyim_AlphaFunc`, `__glOdyim_BlendFunc`, `__glOdyim_BlendEquationEXT`, `__glOdyim_ColorMask`, `__glOdyim_ColorMaterial`, `__glOdyim_CullFace`, `__glOdyim_DepthFunc`, `__glOdyim_DepthMask`, `__glOdyim_ReadBuffer`, `__glOdyim_DrawBuffer`, `__glOdyim_FrontFace`, `__glOdyim_IndexMask`, `__glOdyim_LineStipple`, `__glOdyim_LineWidth`, `__glOdyim_LogicOp`, `__glOdyim_Materialfv`, `__glOdyim_Materialf`, `ApplyParameterI`, `__glOdyim_Materialiv`, `__glOdyim_Materiali`, `__glOdyim_PointSize`, `__glOdyim_PolygonMode`, `__glOdysseyConvertStipple`, `__glOdyim_ShadeModel`, `__glOdyim_StencilFunc`, `__glOdyim_StencilMask`, `__glOdyim_StencilOp`, `__glOdyim_Disable`, `__glOdyim_BlendColorEXT`

the Odyssey GL driver attribute state source unit (part 2): attribute state setters and the attribute stack.

`__glOdyim_PolygonOffset`, `__glOdyim_PolygonOffsetEXT`

the Odyssey GL driver bitmap source unit: bitmap rendering.

`__glOdysseyRenderBitmap`, `__glOdyim_Bitmap`

the Odyssey GL driver immediate-mode API source unit (2): colour entry points, display-list compile forms.

`__glOdylc_Color3bv`, `__glOdylc_Color3d`, `__glOdylc_Color3dv`, `__glOdylc_Color3f`, `__glOdylc_Color3fv`, `__glOdylc_Color3i`, `__glOdylc_Color3iv`, `__glOdylc_Color3sv`, `__glOdylc_Color3ub`, `__glOdylc_Color3ubv`, `__glOdylc_Color3uiv`, `__glOdylc_Color3us`, `__glOdylc_Color3usv`, `__glOdylc_Color4bv`, `__glOdylc_Color4d`, `__glOdylc_Color4dv`, `__glOdylc_Color4f`, `__glOdylc_Color4fv`, `__glOdylc_Color4iv`, `__glOdylc_Color4sv`, `__glOdylc_Color4ubv`, `__glOdylc_Color4uiv`, `__glOdylc_Color4usv`, `__glOdylc_Indexdv`, `__glOdylc_Indexf`, `__glOdylc_Indexfv`, `__glOdylc_Indexi`, `__glOdylc_Indexiv`, `__glOdylc_Indexs`, `__glOdylc_Indexsv`, `__glOdylc_Indexub`, `__glOdylc_Indexubv`

the Odyssey GL driver color-index source unit: colour-index span store, fetch and pick.

`Store`, `Pick`, `Fetch`, `StoreStippledSpan`, `StoreSpan`, `__glOdysseyInitCI`

the Odyssey GL driver clear source unit: glClear.

`__glOdyim_Clear`, `__glOdysseyClear`, `__glOdyim_SoftClear`

the Odyssey GL driver clipping source unit: clip-plane and vertex clipping.

`OdysseyClipAll`, `__glOdysseyGetNumHWClipPlanes`, `__glOdysseyGetNumSWClipPlanes`, `__glOdysseyValidateSoftClipPlanes`, `__glOdysseySoftClipPickParameterClipProcs`, `__glOdysseySendShadowAttributes`, `__glOdysseySendShadowVertex`, `__glOdysseyVertexWARClip`, `__glOdysseyVertexWARClipNOP`, `__glOdyim_SoftClipEnd`

the Odyssey GL driver context source unit: context creation, validation and state defaults.

`GetBoardInfo`, `__glOdysseyFindWindowSize`, `ApplyViewport`, `InitialFree`, `InitialDestroyContext`, `DestroyContext`, `ApplyScissor`, `CopyColorIndexCode`, `CopyNormalCode`, `CopyTexCoordCode`, `CopyVertexCode`, `AllocInitFastDispatchCodeBuffers`, `InitFastDispatch`, `FastDispatchInstall`, `InitFunctionPtrs`, `InitBuffers`, `__glOdysseyValidate`, `__glOdysseyValidateClipPlanes`, `__glOdysseyValidateContextRasterMisc`, `__glOdysseyValidateScissor`, `HWInit`, `SWInit`, `CopyContext`, `BindHyperpipe`, `QueryHyperpipeBestAttrib`, `QueryHyperpipeAttrib`, `HyperpipeAttrib`, `__glOdysseyCreateContext`, `__glOdyim_RenderMode`, `__glOdysseyInitIgloo`, `ConvertFromShadow`, `getCurrent`, `setCurrent`, `__glOdysseyValidateDispatchTable`

the Odyssey GL driver display-list execution source unit: display-list execution.

`__glOdyle_TexImage1D`, `__glOdyle_TexImage2D`, `__glOdyle_TexImage3DEXT`, `__glOdyle_TexSubImage1DEXT`, `__glOdyle_TexSubImage2DEXT`, `__glOdyle_TexSubImage3DEXT`, `__glOdyle_ConvolutionFilter1DEXT`, `__glOdyle_ConvolutionFilter2DEXT`, `__glOdyle_SeparableFilter2DEXT`, `__glOdyle_ColorTableSGI`, `__glOdyle_ColorSubTable`

the Odyssey GL driver display-list interpretation source unit: display-list interpretation.

`__glOdysseyDlistInterpret`, `__glOdysseyDlistInterpretPreclip`, `pack_ub`, `pack_us`, `pack_b`, `pack_s`, `InterpretVertex`, `InterpretColorIndex`, `InterpretNormal`, `InterpretTexCoord`

the Odyssey GL driver display-list source unit (part 1): display-list management.

`__glOdyim_ListParameterfvSGIX`, `__glOdyim_ListParameterfSGIX`, `__glOdyim_ListParameterivSGIX`, `__glOdyim_ListParameteriSGIX`, `__glOdyim_GetListParameterfvSGIX`, `__glOdyim_GetListParameterivSGIX`, `__glOdysseyDlistOptimizer`, `__glOdysseyIsBboxClippedRange`, `__glOdysseyIsBboxClippedRange2`, `__glOdysseyDlistPush`, `__glOdyle_Begin`, `__glOdyle_End`, `Bogus`, `__glOdysseyDlistInitState`, `callSetError`, `__glOdylc_Error`, `__glSPDlalloc`, `__glSPDlalloc2`, `RemoveIlists`, `__glsplc_Begin`, `__glOdysplc_End`, `__glOdysplc_CallList`, `__glOdysplc_CallLists`, `__glOdysplc_PopAttrib`, `__glOdysplc_EvalCoord1d`, `__glOdysplc_EvalCoord1dv`, `__glOdysplc_EvalCoord1f`, `__glOdysplc_EvalCoord1fv`, `__glOdysplc_EvalCoord2d`, `__glOdysplc_EvalCoord2dv`, `__glOdysplc_EvalCoord2f`, `__glOdysplc_EvalCoord2fv`, `__glOdysplc_EvalMesh1`, `__glOdysplc_EvalMesh2`, `__glOdysplc_EvalPoint1`, `__glOdysplc_EvalPoint2`, `__glOdysplc_Frustum`, `__glOdysplc_Ortho`, `__glOdysplc_LoadIdentity`, `__glOdysplc_LoadMatrixf`

the Odyssey GL driver display-list source unit (part 2): display-list management.

`__glOdysplc_LoadMatrixd`, `__glOdysplc_MultMatrixf`, `__glOdysplc_MultMatrixd`, `__glOdysplc_PopMatrix`, `__glOdysplc_Rotated`, `__glOdysplc_Rotatef`, `__glOdysplc_Scaled`, `__glOdysplc_Scalef`, `__glOdysplc_Translated`, `__glOdysplc_Translatef`, `__glOdysplc_Viewport`, `__glOdysplc_DrawElements`, `__glOdysplc_DrawArraysEXT`, `__glOdyim_ArrayElementEXT`, `__glsplc_AddSentinel`, `ExecuteDlist`, `ExecuteDlistNomem`, `makeDLState`, `__glOdysseySPBalloc`, `__glOdysseySPBfree`, `__glOdysseySPCompMachdep`

the Odyssey GL driver evaluator source unit: evaluators (glMap, glEvalMesh).

`__glOdyim_EvalCoord1d`, `__glOdyim_EvalCoord1dv`, `__glOdyim_EvalCoord1f`, `__glOdyim_EvalCoord1fv`, `__glOdyim_EvalCoord2d`, `__glOdyim_EvalCoord2dv`, `__glOdyim_EvalCoord2f`, `__glOdyim_EvalCoord2fv`, `__glOdyim_EvalMesh1`, `__glOdyim_EvalPoint1`, `__glOdyim_EvalMesh2`, `__glOdyim_EvalPoint2`, `PreEvaluate`, `PreEvaluateWithDeriv`, `DoDomain1`, `GetCurrentState`, `RestoreCurrentState`, `DoEvalCoord1`, `__glOdysseyDoEvalCoord1`, `ComputeFirstPartials`, `ComputeNormal2`, `DoDomain2`, `DoDomain2WithDerivs`, `DoEvalCoord2`, `__glOdysseyDoEvalCoord2`, `__glOdysseyEvalMesh1Line`, `__glOdysseyEvalMesh1Point`, `sendChange`, `__glOdysseyEvalMesh2Fill`, `__glOdysseyEvalMesh2Point`, `__glOdysseyEvalMesh2Line`

the Odyssey GL driver source unit 1: FFT lerp-tree set-up for image filtering.

`LoadATree`, `LoadBTree`, `LoadCTree`, `LoadDTree`, `PackQuadLerpTree`, `__glOdysseySetRealLerpEvenEven`, `__glOdysseySetImaginaryLerpEvenEven`, `__glOdysseySetRealLerpOddEven`, `__glOdysseySetImaginaryLerpOddEven`, `__glOdysseySetRealLerpEvenOdd`, `__glOdysseySetImaginaryLerpEvenOdd`, `__glOdysseySetRealLerpOddOdd`, `__glOdysseySetImaginaryLerpOddOdd`, `__glOdysseySetSkewLerp`, `__glOdysseyProgramFFTFilter`

the Odyssey GL driver fog source unit: fog.

`CubicBezierFitConstant`, `CubicBezierFitLinear`, `Phi`, `Det3`, `CubicBezierFitQuadratic`, `Det4`, `CubicBezierFitCubic`, `FogFitCurve`, `__glOdysseyValidateFog`, `__glOdyim_Fogfv`, `__glOdyim_Fogf`, `__glOdyim_Fogiv`, `__glOdyim_Fogi`, `__glOdyim_FogFuncSGIS`

the Odyssey GL driver fragment source unit: fragment lighting (SGIX) and material application.

`ValidateFragmentColorMaterial`, `__glOdysseyValidateFragment`, `__glOdyim_FragmentLightfvSGIX`, `__glOdyim_FragmentLightfSGIX`, `__glOdyim_FragmentLightivSGIX`, `__glOdyim_FragmentLightiSGIX`, `__glOdyim_FragmentLightModelfvSGIX`, `__glOdyim_FragmentLightModelfSGIX`, `__glOdyim_FragmentLightModelivSGIX`, `__glOdyim_FragmentLightModeliSGIX`, `ApplyMaterialF`, `ApplyMaterialI`, `__glim_FragmentMaterialfvSGIX`, `__glOdyim_FragmentMaterialfvSGIX`, `__glOdyim_FragmentMaterialfSGIX`, `ApplyParameterI`, `__glim_FragmentMaterialivSGIX`, `__glOdyim_FragmentMaterialivSGIX`, `__glOdyim_FragmentMaterialiSGIX`, `__glOdyim_FragmentColorMaterialSGIX`, `__glOdysseyInitFragmentLighting`, `__glOdysseyInitFragmentMaterial`, `__glOdyim_LightEnviSGIX`

the Odyssey GL driver state query source unit: state queries (glGet family).

`GetTexDim`, `__glOdyim_GetTexLevelParameterfv`, `__glOdyim_GetTexLevelParameteriv`, `__glOdyim_GetClipPlane`, `__glOdyim_GetDoublev`, `__glOdyim_GetFloatv`, `__glOdyim_GetIntegerv`, `__glOdyim_GetBooleanv`, `__glOdyim_GetTexParameterfv`, `__glOdyim_GetTexParameteriv`, `__glOdyim_GetTexEnvfv`, `__glOdyim_GetTexEnviv`, `__glOdyim_GetDetailTexFuncSGIS`, `__glOdyim_GetMaterialfv`, `__glOdyim_GetMaterialiv`, `__glOdyim_GetFogFuncSGIS`, `__glOdyim_GetFragmentLightfvSGIX`, `__glOdyim_GetFragmentLightivSGIX`, `__glOdyim_GetFragmentMaterialfvSGIX`, `__glOdyim_GetFragmentMaterialivSGIX`

the Odyssey GL driver hyper-pipe source unit: hyperpipe (multi-pipe) control.

`__glOdysseyEnableHyperpipe`, `__glOdysseyDisableHyperpipe`, `__glOdysseyFinishHyperpipe`, `__glOdysseyInitHyperpipeState`, `__glOdysseyQueryHyperpipeBestRect`, `__glOdysseyQueryHyperpipeRect`, `__glOdysseyQueryHyperpipeLimit`, `__glOdysseyHyperpipeRect`, `__glOdysseyHyperpipeStereo`, `__glOdysseyHyperpipePixelAverage`, `__glOdysseyQueryHyperpipeStereo`, `__glOdysseyQueryHyperpipePixelAverage`, `__glOdysseyBindHyperpipe`, `__glOdysseyUnbindHyperpipe`

the Odyssey GL driver source unit 3: IGLOO interface entry points.

`__glOdyim_Swaptmesh`, `__glOdyim_lmcolor`, `__glOdyim_FullScreen`, `__glOdyim_IglooInterfaceSGIX`

the Odyssey GL driver image source unit: image transfer set-up.

`__glOdysseyImageInit`, `__glOdysseyImageClose`, `__glOdysseyImageXfer`

the Odyssey GL driver image API source unit: image processing API.

`__glOdyim_DrawPixels`, `__glOdyim_ReadPixels`, `__glOdyim_CopyPixels`, `__glOdyim_PixelZoom`, `__glOdyim_PixelTransferf`, `__glOdyim_PixelTransferi`, `__glOdyim_PixelMapfv`, `__glOdyim_PixelMapuiv`, `__glOdyim_PixelMapusv`, `__glOdysseyConvolutionFilter`, `__glOdysseySeparableFilter`, `__glOdysseyGetSeparableFilter`, `__glOdyim_CopyConvolutionFilter1DEXT`, `__glOdyim_CopyConvolutionFilter2DEXT`, `__glOdyim_ConvolutionParameterfvEXT`, `__glOdyim_ConvolutionParameterfEXT`, `__glOdyim_ConvolutionParameterivEXT`, `__glOdyim_ConvolutionParameteriEXT`, `__glOdyim_GetConvolutionParameterfvEXT`, `__glOdyim_GetConvolutionParameterivEXT`, `__glOdyim_ColorTableSGI`, `__glOdyim_CopyColorTableSGI`, `__glOdyim_ColorSubTable`, `__glOdyim_CopyColorSubTable`, `__glOdysseyDrawPixels`, `__glOdyim_PixelTexGenParameteriSGIS`, `__glOdyim_PixelTexGenParameterivSGIS`, `__glOdyim_GetPixelTexGenParameterivSGIS`, `__glOdyim_PixelTexGenParameterfSGIS`, `__glOdyim_PixelTexGenParameterfvSGIS`, `__glOdyim_GetPixelTexGenParameterfvSGIS`, `__glOdyim_SoftDrawPixels`

the Odyssey GL driver image chain source unit (part 1): image processing operation chains.

`__glOdysseyImageChainCreate`, `__glOdysseyImageChainFree`, `ImageChainOpCreate`, `ImageChainOpAllocateFilters`, `ImageChainOpFree`, `ImageChainOpCreateScratchImage`, `ImageChainAddOp`, `ImageChainDetermineChainType`, `ImageChainValidateScratchBufferFormats`, `ImageChainBuildColorChain`, `ImageChainBuildDepthChain`, `ImageChainBuildStencilChain`, `ImageChainBuildChain`, `ImageChainAddOpTextureColor`, `RenderFunc_TextureColor`, `ImageChainAddOpCopyColor`, `RenderFunc_CopyColor`, `ImageChainAddOpLut`, `RenderFunc_Lut`, `__glOdysseyClearScratchBuffer`, `ImageChainAddOpConvolve`, `RenderFunc_Convolve`, `RenderFunc_FastConvolve`, `RenderFunc_Convolve24BitMode`, `ImageChainAddOpConvolveResidue`, `RenderFunc_ConvolveResidue`, `ImageChainAddOpScaleBias`, `RenderFunc_ScaleBias`, `RenderFunc_ScaleBiasForSignedTypes`, `ImageChainAddOpScaleBiasGfx`, `RenderFunc_ScaleBiasGfx`, `__glOdysseyImageChainAddOpAcceptSignedDataFromHost`, `RenderFunc_AcceptSignedDataFromHost`, `ImageChainAddOpColorMatrix`, `RenderFunc_ColorMatrix`, `SetupScaleBiasForTexFilter`, `LoadTextureFilter`, `ConvolutionDenormAndScale`, `ConvolutionClampToZero`, `AddConvolutionBorders`

the Odyssey GL driver image chain source unit (part 2): image processing operation chains.

`ImageChainAddOpHistogramMinmax`, `RenderFunc_HistogramMinmax`, `ImageChainAddOpPixelTexture`, `RenderFunc_PixelTexture`, `ImageChainAddOpDownloadDepth`, `RenderFunc_DownloadDepth`, `ImageChainAddOpDownloadStencil`, `RenderFunc_DownloadStencil`, `ImageChainAddOpReadbackDepth`, `RenderFunc_ReadbackDepth`, `ImageChainAddOpReadbackStencil`, `RenderFunc_ReadbackStencil`, `ImageChainAddOpCopyDepth`, `RenderFunc_CopyDepth`, `ImageChainAddOpCopyStencil`, `RenderFunc_CopyStencil`, `ImageChainAddOpDownloadColor`, `__glOdysseyRenderFunc_DownloadColor`, `ImageChainAddOpReadbackColor`, `__glOdysseyRenderFunc_ReadbackColor`, `ImageChainAddOpColorZoom`, `RenderFunc_ColorZoom`, `ImageChainAddOpIndexZoom`, `RenderFunc_IndexZoom`, `ImageChainAddOpInterlace`, `RenderFunc_Interlace`, `ImageChainAddOpIndexShiftOffset`, `RenderFunc_IndexShiftOffset`

the Odyssey GL driver image conversion source unit: image format conversion.

`__glOdyUpdateDepthSpanInfo`, `__glOdySpanEyeZ24ToWindowZ`, `__glOdySpanEyeZ16ToWindowZ`, `__glOdySpanEyeZ16ToEyeZ24`, `__glOdySpanEyeZ24ToFloat`, `__glOdySpanEyeZ24ToFloat2`, `__glOdySpanFloatToEyeZ24`, `__glOdySpanOrthoZToEyeZ24`, `__glOdySpanWindowZToEyeZ24`, `__glOdySpanSwapBytes2`, `__glOdySpanSwapBytes4`, `__glOdySpanUnpackUbyte`, `__glOdySpanUnpackUshort`, `__glOdySpanUnpackUint`, `__glOdySpanUnpackUbyteI`, `__glOdySpanUnpackUshortI`, `__glOdySpanUnpackFloatI`, `__glOdySpanShiftOffsetIndex`, `__glOdySpanScaleBiasComponent`, `__glOdySpanMapStencil`, `__glOdySpanClampComponent`, `__glOdySpanPackPioStencil`, `__glOdySpanPackUbyte`, `__glOdySpanPackUbyteI`, `__glOdySpanPackByte`, `__glOdySpanPackUshort`, `__glOdySpanPackUshortI`, `__glOdySpanPackUint`, `__glOdysseyImageConvertHostImage`, `__glOdysseyImageCalcSuitableGfxFormatForReadback`, `__glOdysseyImageCalcSuitableHostFormatForDownload`, `__glOdysseyImageZoomHostImage`

the Odyssey GL driver image convolution source unit: image convolution.

`__glOdysseyInitLerpTree`, `__glOdysseyGetFilter`, `__glOdysseySetCurrentFilter`, `__glOdysseyCvtToFloat`, `__glOdysseyScaleBiasFilter`, `__glOdysseyCvtScaleBias`, `__glOdysseyInitConvolutionState`, `__glOdysseyCvtToRGBA`, `__glOdysseyCvtToResidue`, `__glOdysseyReconstructFromResidue`, `multiplicative_inverse`, `get_prime_sums`, `__glOdyssey_ks_to_alphas`, `__glOdysseyCvtToInternalFmt`, `__glOdysseyMap2DFilterToAlphas`, `__glOdysseyMap1DFilterToAlphas`, `__glOdysseyMapSepFilterToAlphas`, `__glOdysseyProgram1DOffsets`, `__glOdysseyProgram2DOffsets`, `__glOdysseyProgramSepOffsets`, `__glOdysseyGenericConvolution`, `ConvertToLerps`, `PackAlpha`, `PackAlphaResidue`, `PackLerpTree`, `PackLerpTreeResidue`, `__glOdysseyProgramTexFilter`, `__glOdysseyProgramConvolutionFilter`, `__glOdysseyProgramGenericConvolutionFilter`

the Odyssey GL driver image histogram source unit: image histogram.

`__glOdyim_GetHistogramEXT`, `__glOdyim_GetMinmaxEXT`, `doOdysseyHistogramMinMax`, `__glOdysseyHistogramMinMax`

the Odyssey GL driver image move source unit: pixel moves and copies.

`ImageCopyPixelBody`, `SendPixelsAsUserPIO`, `__glOdysseyImageMovePixelsDMAtoGfx`, `__glOdysseyImageMovePixelsDMAtoHost`, `__glOdysseyImageMovePixelsTexture`, `OdysseyImageCalcXferCopyParams`, `__glOdysseyImageCalcXferWriteParams`, `ImageCalcDmaFieldOffsets`, `__glOdysseyImageCalcTexObjFormats`, `__glOdysseyImageCalcTexOffset`, `ImageToDmaHostPixelSize`, `__glOdysseyImageCalcXferReadParams`, `ImageUpdateRasterTokensForDrawable`

the Odyssey GL driver image tiling source unit: image tiling.

`__glOdysseyImageTilingCreate`, `__glOdysseyImageTilingFree`

the Odyssey GL driver image utility source unit: image helpers.

`__glOdysseyImageSaveUserBuzzRasterState`, `__glOdysseyImageLoadBuzzRasterState`, `__glOdysseyImageCalcOdyEyeSpaceRasterPosZ`

the Odyssey GL driver lighting source unit: lighting.

`dirtyLight`, `__glOdyim_Lightfv`, `__glOdyim_Lightf`, `__glOdyim_Lightiv`, `__glOdyim_Lighti`, `__glOdyim_LightModelfv`, `__glOdyim_LightModelf`, `__glOdyim_LightModeliv`, `__glOdyim_LightModeli`, `ValidateLight`, `ValidateLightColor`, `ValidateFragmentLightColor`, `__glOdysseyValidateLighting`

the Odyssey GL driver line clipping source unit: line clipping.

`__glOdysseySoftClipClipLine`

the Odyssey GL driver line drawing source unit: line drawing.

`__glOdysseySoftClipRenderLine`, `__glOdysseySoftClipProcessLine`

the Odyssey GL driver line finish source unit: line primitive assembly.

`SoftClipSecondLinesVertex`, `SoftClipFirstLinesVertex`, `__glOdysseySoftClipBeginLines`, `SoftClipLineStripVertex`, `SoftClipFirstLineStripVertex`, `__glOdysseySoftClipBeginLStrip`, `SoftClipEndLineLoop`, `SoftClipLineLoopVertex`, `SoftClipSecondLineLoopVertex`, `SoftClipFirstLineLoopVertex`, `__glOdysseySoftClipBeginLLoop`, `SoftClipSecondLineLoopVertexPartial`, `SoftClipFirstLineLoopVertexPartial`, `__glOdysseySoftClipBeginLLoopPartial`

the Odyssey GL driver source unit 4: atomic lock primitives.

`__glOdysseyAtomicTestAndSet`, `__glOdysseyAtomicAdd`, `__glOdysseyAtomicSubtract`

the Odyssey GL driver lookup-table source unit: lookup tables.

`__glOdysseyInitLUTs`, `__glOdysseyStoreLUT`, `ResizeLUTData`

the Odyssey GL driver normal-mode API source unit (2): normal entry points, display-list compile forms.

`__glOdylc_Normal3bv`, `__glOdylc_Normal3d`, `__glOdylc_Normal3dv`, `__glOdylc_Normal3f`, `__glOdylc_Normal3fv`, `__glOdylc_Normal3i`, `__glOdylc_Normal3iv`, `__glOdylc_Normal3sv`

the Odyssey GL driver picking source unit: rendering procedure selection.

`__glOdysseyPickDepthProcs`, `__glOdysseyPickPixelProcs`, `__glOdysseyPickRenderBitmapProcs`, `__glOdysseyPickTextureProcs`, `__glOdysseyPickAllProcs`, `__glOdysseySoftClipPickAllProcs`, `__glOdysseySoftClipPickClipProcs`, `__glOdysseySoftClipPickClipProcsFast`, `__glOdysseySoftClipPickLineProcs`, `__glOdysseySoftClipPickPointProcs`, `__glOdysseySoftClipPickTriangleProcs`, `__glOdysseySoftClipPickTriangleProcsFast`, `__glOdysseySoftClipPickTextureProcs`

the Odyssey GL driver pixmap object source unit: pixel-memory objects shared with the kernel.

`__glOdysseySharePM`, `__glOdysseyUnSharePM`, `__glOdysseyDestroyPMObjGroup`, `__glOdysseyDestroyPMObj`, `CheckMMXfrArgs`, `OpenPipeMemReference`, `__glOdysseyPMObjGroupResident`, `__glOdysseyOpenPMObjReference`, `__glOdysseyOpenPMObjWriteReference`, `__glOdysseyClosePMObjWriteReference`, `__glOdysseyClosePMObjReference`, `LookupKnownGroup`, `LookupCoresidRange`, `LookupCoresidRangeWithLevel`, `AddKnownGroup`, `RemoveKnownGroup`, `DestroyKnownGroup`, `InitCSet`, `DestroyCSet`, `NewChunkNode`, `AllocSpecificCSetId`, `InitCSetCursor`, `NextCSetElem`, `DeallocCSetId`, `LookupCSetId`

the Odyssey GL driver point drawing source unit: point drawing.

`__glOdysseySoftClipRenderPoint`

the Odyssey GL driver point finish source unit: point primitive assembly.

`SoftClipPointVertex`, `__glOdysseySoftClipBeginPoints`

the Odyssey GL driver polygon clipping source unit: polygon clipping.

`__glOdysseyClipToPlaneObj`, `__glOdysseyDoTriangleClip`, `__glOdysseySoftClipClipTriangle`, `__glOdysseyDoTriangleClipFast`, `__glOdysseySoftClipClipTriangleFast`

the Odyssey GL driver polygon drawing source unit: polygon drawing.

`__glOdysseySoftClipRenderTriangle`, `__glOdysseySoftClipProcessTriangle`

the Odyssey GL driver polygon finish source unit: triangle and polygon primitive assembly.

`__glOdysseySoftClipMatValidateVbuf0N`, `__glOdysseySoftClipMatValidateV1`, `__glOdysseySoftClipMatValidateV1V2`, `__glOdysseySoftClipMatValidateVbuf0V1`, `__glOdysseySoftClipMatValidateV1V2V3`, `__glOdysseySoftClipMatValidateV2V3`, `__glOdysseySoftClipMatValidateVbuf0V1V2`, `SoftClipThirdTrianglesVertex`, `SoftClipSecondTrianglesVertex`, `SoftClipFirstTrianglesVertex`, `__glOdysseySoftClipBeginTriangles`, `__glOdysseySoftClipEvenTriangleStripVertex`, `__glOdysseySoftClipOddTriangleStripVertex`, `SoftClipSecondTriangleStripVertex`, `SoftClipFirstTriangleStripVertex`, `__glOdysseySoftClipBeginTStrip`, `SoftClipTriangleFanVertex`, `SoftClipSecondTriangleFanVertex`, `SoftClipFirstTriangleFanVertex`, `__glOdysseySoftClipBeginTFan`, `SoftClipForthQuadsVertex`, `SoftClipThirdQuadsVertex`, `SoftClipSecondQuadsVertex`, `SoftClipFirstQuadsVertex`, `__glOdysseySoftClipBeginQuads`, `SoftClipEvenQuadStripVertex`, `SoftClipOddQuadStripVertex`, `SoftClipSecondQuadStripVertex`, `SoftClipFirstQuadStripVertex`, `__glOdysseySoftClipBeginQStrip`, `SoftClipEndPolygon3Verts`, `SoftClipEndPolygon`, `SoftClipPolygonVertex`, `SoftClipForthPolygonVertex`, `SoftClipThirdPolygonVertex`, `SoftClipSecondPolygonVertex`, `SoftClipFirstPolygonVertex`, `__glOdysseySoftClipBeginPolygon`

the Odyssey GL driver primitive source unit: primitive begin and end.

`__glOdyim_Begin`, `__glOdyim_End`, `__glOdysseyRect`, `__glOdyim_SoftBegin`

the Odyssey GL driver source unit 5: vertex-array push loops.

`__glOdysseyPushLoop`, `__glOdysseyArraysInt_V3F`, `__glOdysseyArraysInt_C3F_V3F`, `__glOdysseyArraysSep_C3F_V3F`, `__glOdysseyArraysInt_N3F_V3F`, `__glOdysseyArraysInt_V3F_N3F`, `__glOdysseyArraysSep_N3F_V3F`, `__glOdysseyArraysSep_N3S_V3F`, `__glOdysseyArraysInt_T2F_V3F`, `__glOdysseyArraysSep_T2F_V3F`, `__glOdysseyElementsInt_V3F`, `__glOdysseyElementsInt_C3F_V3F`, `__glOdysseyElementsSep_C3F_V3F`, `__glOdysseyElementsInt_N3F_V3F`, `__glOdysseyElementsInt_V3F_N3F`, `__glOdysseyElementsSep_N3F_V3F`, `__glOdysseyElementsSep_N3S_V3F`, `__glOdysseyElementsInt_T2F_V3F`, `__glOdysseyElementsSep_T2F_V3F`

the Odyssey GL driver raster position source unit: raster position.

`__glOdysseyRasterPosGeneral`, `__glOdysseyRasterPos2`, `__glOdysseyRasterPos3`, `__glOdysseyRasterPos4`

the Odyssey GL driver RGB source unit: RGB span store, fetch and pick.

`Store`, `Pick`, `Fetch`, `StoreStippledSpan`, `StoreSpan`, `__glOdysseyInitRGB`

the Odyssey GL driver selection source unit: selection-mode vertex entry points (__glTRim_*) and vertex-buffer overflow handling.

`VbufCopy`, `ProcessOverflow`, `Pass`, `Reject`, `__glTRim_Begin`, `__glTRim_End`, `__glTRim_Vertex2fv`, `__glTRim_Vertex3fv`, `__glTRim_Vertex4fv`, `__glTRim_Vertex2f`, `__glTRim_Vertex2d`, `__glTRim_Vertex2dv`, `__glTRim_Vertex2i`, `__glTRim_Vertex2iv`, `__glTRim_Vertex2s`, `__glTRim_Vertex2sv`, `__glTRim_Vertex3f`, `__glTRim_Vertex3d`, `__glTRim_Vertex3dv`, `__glTRim_Vertex3i`, `__glTRim_Vertex3iv`, `__glTRim_Vertex3s`, `__glTRim_Vertex3sv`, `__glTRim_Vertex4f`, `__glTRim_Vertex4d`, `__glTRim_Vertex4dv`, `__glTRim_Vertex4i`, `__glTRim_Vertex4iv`, `__glTRim_Vertex4s`, `__glTRim_Vertex4sv`

the Odyssey GL driver source unit 6: software attribute setters.

`__glOdyim_SoftClipEnable`, `__glOdyim_SoftClipDisable`, `SoftClipApplyParameterF`, `__glOdyim_SoftClipMaterialfv`, `__glOdyim_SoftClipMaterialf`, `SoftClipApplyParameterI`, `__glOdyim_SoftClipMaterialiv`, `__glOdyim_SoftClipMateriali`

the Odyssey GL driver source unit 7 (part 1): software colour entry points.

`__glOdyim_SoftColor3b`, `__glOdyim_SoftColor3bv`, `__glOdyim_SoftColor3d`, `__glOdyim_SoftColor3dv`, `__glOdyim_SoftColor3f`, `__glOdyim_SoftColor3fv`, `__glOdyim_SoftColor3i`, `__glOdyim_SoftColor3iv`, `__glOdyim_SoftColor3s`, `__glOdyim_SoftColor3sv`, `__glOdyim_SoftColor3ub`, `__glOdyim_SoftColor3ubv`, `__glOdyim_SoftColor3ui`, `__glOdyim_SoftColor3uiv`, `__glOdyim_SoftColor3us`, `__glOdyim_SoftColor3usv`, `__glOdyim_SoftColor4b`, `__glOdyim_SoftColor4bv`, `__glOdyim_SoftColor4d`, `__glOdyim_SoftColor4dv`, `__glOdyim_SoftColor4f`, `__glOdyim_SoftColor4fv`, `__glOdyim_SoftColor4i`, `__glOdyim_SoftColor4iv`, `__glOdyim_SoftColor4s`, `__glOdyim_SoftColor4sv`, `__glOdyim_SoftColor4ub`, `__glOdyim_SoftColor4ubv`, `__glOdyim_SoftColor4ui`, `__glOdyim_SoftColor4uiv`, `__glOdyim_SoftColor4us`, `__glOdyim_SoftColor4usv`, `__glOdyim_SoftIndexd`, `__glOdyim_SoftIndexdv`, `__glOdyim_SoftIndexf`, `__glOdyim_SoftIndexfv`, `__glOdyim_SoftIndexi`, `__glOdyim_SoftIndexiv`, `__glOdyim_SoftIndexs`, `__glOdyim_SoftIndexsv`

the Odyssey GL driver source unit 7 (part 2): software colour entry points.

`__glOdyim_SoftIndexub`, `__glOdyim_SoftIndexubv`, `__glOdyim_SoftScratchColor3b`, `__glOdyim_SoftScratchColor3bv`, `__glOdyim_SoftScratchColor3d`, `__glOdyim_SoftScratchColor3dv`, `__glOdyim_SoftScratchColor3f`, `__glOdyim_SoftScratchColor3fv`, `__glOdyim_SoftScratchColor3i`, `__glOdyim_SoftScratchColor3iv`, `__glOdyim_SoftScratchColor3s`, `__glOdyim_SoftScratchColor3sv`, `__glOdyim_SoftScratchColor3ub`, `__glOdyim_SoftScratchColor3ubv`, `__glOdyim_SoftScratchColor3ui`, `__glOdyim_SoftScratchColor3uiv`, `__glOdyim_SoftScratchColor3us`, `__glOdyim_SoftScratchColor3usv`, `__glOdyim_SoftScratchColor4b`, `__glOdyim_SoftScratchColor4bv`, `__glOdyim_SoftScratchColor4d`, `__glOdyim_SoftScratchColor4dv`, `__glOdyim_SoftScratchColor4f`, `__glOdyim_SoftScratchColor4fv`, `__glOdyim_SoftScratchColor4i`, `__glOdyim_SoftScratchColor4iv`, `__glOdyim_SoftScratchColor4s`, `__glOdyim_SoftScratchColor4sv`, `__glOdyim_SoftScratchColor4ub`, `__glOdyim_SoftScratchColor4ubv`, `__glOdyim_SoftScratchColor4ui`, `__glOdyim_SoftScratchColor4uiv`, `__glOdyim_SoftScratchColor4us`, `__glOdyim_SoftScratchColor4usv`, `__glOdyim_SoftScratchIndexd`, `__glOdyim_SoftScratchIndexdv`, `__glOdyim_SoftScratchIndexf`, `__glOdyim_SoftScratchIndexfv`, `__glOdyim_SoftScratchIndexi`, `__glOdyim_SoftScratchIndexiv`

the Odyssey GL driver source unit 7 (part 3): software colour entry points.

`__glOdyim_SoftScratchIndexs`, `__glOdyim_SoftScratchIndexsv`, `__glOdyim_SoftScratchIndexub`, `__glOdyim_SoftScratchIndexubv`

the Odyssey GL driver source unit 8: software state queries.

`__glOdyim_SoftGetDoublev`, `__glOdyim_SoftGetFloatv`, `__glOdyim_SoftGetIntegerv`, `__glOdyim_SoftGetBooleanv`, `__glOdyim_SoftGetMaterialfv`, `__glOdyim_SoftGetMaterialiv`

the Odyssey GL driver source unit 9: software lighting.

`__glOdysseySoftClipCopyMaterialOneSided`, `__glOdysseySoftClipCopyMaterialTwoSided`, `__glOdysseyChangeMaterialEmission`, `__glOdysseyChangeMaterialSpecular`, `__glOdysseyChangeMaterialAmbient`, `__glOdysseyChangeMaterialDiffuse`, `__glOdysseyChangeMaterialAmbientAndDiffuse`, `__glOdysseyChangeFrontMaterialColor`, `__glOdysseyChangeBackMaterialColor`, `__glOdysseyChangeBothMaterialColors`, `__glOdysseyPickColorMaterialProcs`, `__glOdysseyComputeLightState`, `vvec`, `__glOdysseySoftClipCalcRGBColor`, `__glOdysseySoftClipCalcCIColor`, `__glOdysseySoftClipFlatShade`

the Odyssey GL driver source unit 10: software texture path.

`Dot`, `SphereGen`, `__glOdysseySoftClipCalcSphereMapS`, `__glOdysseySoftClipCalcSphereMapT`, `__glOdysseySoftClipCalcSphereMapST`

the Odyssey GL driver source unit 11: software vertex entry points.

`__glOdyim_SoftVertex2d`, `__glOdyim_SoftVertex2dv`, `__glOdyim_SoftVertex2f`, `__glOdyim_SoftVertex2fv`, `__glOdyim_SoftVertex2i`, `__glOdyim_SoftVertex2iv`, `__glOdyim_SoftVertex2s`, `__glOdyim_SoftVertex2sv`, `__glOdyim_SoftVertex3d`, `__glOdyim_SoftVertex3dv`, `__glOdyim_SoftVertex3f`, `__glOdyim_SoftVertex3fv`, `__glOdyim_SoftVertex3i`, `__glOdyim_SoftVertex3iv`, `__glOdyim_SoftVertex3s`, `__glOdyim_SoftVertex3sv`, `__glOdyim_SoftVertex4d`, `__glOdyim_SoftVertex4dv`, `__glOdyim_SoftVertex4f`, `__glOdyim_SoftVertex4fv`, `__glOdyim_SoftVertex4i`, `__glOdyim_SoftVertex4iv`, `__glOdyim_SoftVertex4s`, `__glOdyim_SoftVertex4sv`

the Odyssey GL driver source unit 12: MIPS sync.

`__glOdysseyMIPS_SYNC`

the Odyssey GL driver texture API source unit (2): texture-coordinate entry points, display-list compile forms.

`__glOdylc_TexCoord1dv`, `__glOdylc_TexCoord1f`, `__glOdylc_TexCoord1fv`, `__glOdylc_TexCoord1i`, `__glOdylc_TexCoord1iv`, `__glOdylc_TexCoord1s`, `__glOdylc_TexCoord1sv`, `__glOdylc_TexCoord2dv`, `__glOdylc_TexCoord2f`, `__glOdylc_TexCoord2fv`, `__glOdylc_TexCoord2i`, `__glOdylc_TexCoord2iv`, `__glOdylc_TexCoord2s`, `__glOdylc_TexCoord2sv`, `__glOdylc_TexCoord3d`, `__glOdylc_TexCoord3dv`, `__glOdylc_TexCoord3f`, `__glOdylc_TexCoord3fv`, `__glOdylc_TexCoord3iv`, `__glOdylc_TexCoord3s`, `__glOdylc_TexCoord3sv`, `__glOdylc_TexCoord4d`, `__glOdylc_TexCoord4dv`, `__glOdylc_TexCoord4f`, `__glOdylc_TexCoord4fv`, `__glOdylc_TexCoord4iv`, `__glOdylc_TexCoord4s`, `__glOdylc_TexCoord4sv`

the Odyssey GL driver texture-coordinate generation source unit: texture coordinate generation.

`__glOdyim_TexGenfv`, `__glOdyim_TexGenf`, `__glOdyim_TexGendv`, `__glOdyim_TexGend`, `__glOdyim_TexGeniv`, `__glOdyim_TexGeni`, `updateTexGenCoord`

the Odyssey GL driver texture source unit (part 1): texture objects, state and validation.

`FreeTextureObject`, `__glOdysseyTextureDriverInit`, `__glOdysseyTextureDriverDestroy`, `__glOdysseyGetCurrentTexture`, `GetImageFmtEnumFromBuzzTexFormat`, `ChooseSuitableBuzzTexModeBaseFmt`, `LoadTextureFromHost`, `LoadTextureFromReadable`, `DownsampleTextureThruHW`, `DoMipmapHackHW`, `DoMipmapHack`, `__glOdysseyTextureDeactivate`, `IsLegalRange`, `CheckSubImageSizes`, `CheckInternalFormat`, `CheckHostFormatType`, `CheckTargetLevel`, `CopyTexImage`, `TexSubImage`, `CopyTexSubImage`, `__glOdyim_TexImage1D`, `__glOdyim_TexImage2D`, `__glOdyim_TexImage3D`, `__glOdyim_CopyTexImage1DEXT`, `__glOdyim_CopyTexImage2DEXT`, `__glOdyim_TexSubImage1D`, `__glOdyim_TexSubImage2D`, `__glOdyim_TexSubImage3D`, `__glOdyim_CopyTexSubImage1DEXT`, `__glOdyim_CopyTexSubImage2DEXT`, `__glOdyim_CopyTexSubImage3DEXT`, `__glOdyim_GetTexImage`, `__glOdysseyTextureSetSWrap`, `__glOdysseyTextureSetTWrap`, `__glOdysseyTextureSetRWrap`, `__glOdysseyTextureSetMagFilter`, `__glOdysseyTextureSetMaxClamp`, `__glOdyim_TexParameterf`, `__glOdyim_TexParameteriv`, `__glOdyim_TexParameteri`

the Odyssey GL driver texture source unit (part 2): texture objects, state and validation.

`__glOdyim_TexEnvfv`, `__glOdyim_TexEnvf`, `__glOdyim_TexEnviv`, `__glOdyim_TexEnvi`, `QuickSortPairs`, `__glOdyim_BindTexture`, `__glOdyim_DeleteTextures`, `__glOdyim_GenTextures`, `__glOdysseyIsTextureResident`, `__glOdyim_AreTexturesResident`, `Clampf`, `__glOdyim_PrioritizeTextures`, `__glOdyim_IsTexture`

the Odyssey GL driver native context source unit: per-process driver glue (ioctl, swap, flush, finish, make-current).

`__glOdysseyIoctl`, `__glOdysseyGetHardwareShadowTest`, `__glOdysseyVisualsMatch`, `__glOdysseyGetBoardInfoRaw`

the Odyssey GL driver vertex API source unit: vertex entry points.

`__glOdyim_EdgeFlag`, `__glOdyim_EdgeFlagv`, `AfterIgloo`, `BeforeIgloo`, `__glOdyim_IglooVertex2d`, `__glOdyim_IglooVertex2dv`, `__glOdyim_IglooVertex2f`, `__glOdyim_IglooVertex2fv`, `__glOdyim_IglooVertex2i`, `__glOdyim_IglooVertex2iv`, `__glOdyim_IglooVertex2s`, `__glOdyim_IglooVertex2sv`, `__glOdyim_IglooVertex3d`, `__glOdyim_IglooVertex3dv`, `__glOdyim_IglooVertex3f`, `__glOdyim_IglooVertex3fv`, `__glOdyim_IglooVertex3i`, `__glOdyim_IglooVertex3iv`, `__glOdyim_IglooVertex3s`, `__glOdyim_IglooVertex3sv`, `__glOdyim_IglooVertex4d`, `__glOdyim_IglooVertex4dv`, `__glOdyim_IglooVertex4f`, `__glOdyim_IglooVertex4fv`, `__glOdyim_IglooVertex4i`, `__glOdyim_IglooVertex4iv`, `__glOdyim_IglooVertex4s`, `__glOdyim_IglooVertex4sv`

the Odyssey GL driver vertex API source unit (6) (part 1): vertex entry points, display-list compile forms.

`__glOdylc_Vertex2d`, `__glOdylc_Vertex2dv`, `__glOdylc_Vertex2f`, `__glOdylc_Vertex2fv`, `__glOdylc_Vertex2i`, `__glOdylc_Vertex2iv`, `__glOdylc_Vertex2s`, `__glOdylc_Vertex2sv`, `__glOdylc_Vertex3d`, `__glOdylc_Vertex3dv`, `__glOdylc_Vertex3f`, `__glOdylc_Vertex3fv`, `__glOdylc_Vertex3i`, `__glOdylc_Vertex3iv`, `__glOdylc_Vertex3s`, `__glOdylc_Vertex3sv`, `__glOdylc_Vertex4d`, `__glOdylc_Vertex4dv`, `__glOdylc_Vertex4f`, `__glOdylc_Vertex4fv`, `__glOdylc_Vertex4i`, `__glOdylc_Vertex4iv`, `__glOdylc_Vertex4s`, `__glOdylc_Vertex4sv`, `__glOdylc_Vertex2dBbox`, `__glOdylc_Vertex2dvBbox`, `__glOdylc_Vertex2fBbox`, `__glOdylc_Vertex2fvBbox`, `__glOdylc_Vertex2iBbox`, `__glOdylc_Vertex2ivBbox`, `__glOdylc_Vertex2sBbox`, `__glOdylc_Vertex2svBbox`, `__glOdylc_Vertex3dBbox`, `__glOdylc_Vertex3dvBbox`, `__glOdylc_Vertex3fBbox`, `__glOdylc_Vertex3fvBbox`, `__glOdylc_Vertex3iBbox`, `__glOdylc_Vertex3ivBbox`, `__glOdylc_Vertex3sBbox`, `__glOdylc_Vertex3svBbox`

the Odyssey GL driver vertex API source unit (6) (part 2): vertex entry points, display-list compile forms.

`__glOdylc_Vertex4dBbox`, `__glOdylc_Vertex4dvBbox`, `__glOdylc_Vertex4fBbox`, `__glOdylc_Vertex4fvBbox`, `__glOdylc_Vertex4iBbox`, `__glOdylc_Vertex4ivBbox`, `__glOdylc_Vertex4sBbox`, `__glOdylc_Vertex4svBbox`

the Odyssey GL driver vertex-array source unit: vertex arrays.

`AnalyzeVertarrays`, `__glOdyim_DrawArraysEXT`, `__glOdyim_DrawElements`, `__glOdyim_DrawRangeElements`, `__glOdyim_ColorPointerEXT`, `__glOdyim_ColorPointer`, `__glOdyim_EdgeFlagPointerEXT`, `__glOdyim_EdgeFlagPointer`, `__glOdyim_IndexPointerEXT`, `__glOdyim_IndexPointer`, `__glOdyim_NormalPointerEXT`, `__glOdyim_NormalPointer`, `__glOdyim_TexCoordPointerEXT`, `__glOdyim_TexCoordPointer`, `__glOdyim_VertexPointerEXT`, `__glOdyim_VertexPointer`

the Odyssey GL driver vertex source unit: vertex senders and saves.

`__glOdysseyClipCheck`, `__glOdysseySaveN`, `__glOdysseySaveCN`, `__glOdysseySaveTN`, `__glOdysseySaveCTN`, `RGBSendFcN`, `RGBSendFcT`, `RGBSendFcTN`, `RGBSendUnclippedFmN`, `RGBSendUnclippedFmTN`, `RGBSendUnclippedBmFmN`, `RGBSendUnclippedBmFmTN`, `RGBSendClippedFmN`, `RGBSendClippedFmTN`, `RGBSendClippedBmFmN`, `RGBSendClippedBmFmTN`, `RGBSendUnclippedFmNFast`, `RGBSendUnclippedFmTNFast`, `RGBSendUnclippedBmFmNFast`, `RGBSendUnclippedBmFmTNFast`, `RGBSendClippedFmNFast`, `RGBSendClippedFmTNFast`, `RGBSendClippedBmFmNFast`, `RGBSendClippedBmFmTNFast`, `CISendFc`, `CISendUnclippedFmN`, `CISendUnclippedBmFmN`, `CISendClippedFmN`, `CISendClippedBmFmN`, `__glOdysseySoftClipValidateVertex`, `__glOdysseySoftClipPickVertexProcs`, `__glOdysseySoftClipRenderTriangleFast`, `__glOdyim_SoftVertex3dFast`, `__glOdyim_SoftVertex3dvFast`, `__glOdyim_SoftVertex3fFast`, `__glOdyim_SoftVertex3fvFast`, `__glOdyim_SoftVertex4dFast`, `__glOdyim_SoftVertex4dvFast`, `__glOdyim_SoftVertex4fFast`, `__glOdyim_SoftVertex4fvFast`

the Odyssey GL driver transform source unit: transform and matrix state.

`__glOdysseyUpdateTransform`, `__glOdysseyValidateMatrixComb`, `__glOdysseyValidateMatrixMV`, `__glOdysseyValidateMatrixNorm`, `__glOdysseyValidateMatrixTex`, `dirtyMatrix`, `__glOdyim_ClipPlane`, `__glOdyim_Scissor`, `__glOdyim_Frustum`, `__glOdyim_LoadIdentity`, `__glOdyim_LoadMatrixf`, `__glOdyim_LoadMatrixd`, `__glOdyim_MatrixMode`, `__glOdyim_MultMatrixf`, `__glOdyim_MultMatrixd`, `__glOdyim_Ortho`, `__glOdyim_PopMatrix`, `__glOdyim_PushMatrix`, `__glOdyim_Rotated`, `__glOdyim_Rotatef`, `__glOdyim_Scaled`, `__glOdyim_Scalef`, `__glOdyim_Translated`, `__glOdyim_Translatef`, `__glOdyim_Viewport`, `__glOdysseyWindowToEyeZ`, `__glOdysseyWindowToNormalizedEyeZ`, `__glOdysseyEyeToWindowZ`, `__glOdysseyNormalizedEyeToWindowZ`, `__glOdyim_DepthRange`, `__glOdysseyValidateDepthRange`, `__glOdysseyValidateDepthRangeNewXform`


### `ODYSSEY.IP30.N32_M4.O` (IP30 N32 objects)

the GL front end API source unit (part 1): GL API entry points.

`glNewList`, `glEndList`, `glCallList`, `glCallLists`, `glDeleteLists`, `glGenLists`, `glListBase`, `glBegin`, `glBitmap`, `glEdgeFlag`, `glEdgeFlagv`, `glEnd`, `glRasterPos2d`, `glRasterPos2dv`, `glRasterPos2f`, `glRasterPos2fv`, `glRasterPos2i`, `glRasterPos2iv`, `glRasterPos2s`, `glRasterPos2sv`, `glRasterPos3d`, `glRasterPos3dv`, `glRasterPos3f`, `glRasterPos3fv`, `glRasterPos3i`, `glRasterPos3iv`, `glRasterPos3s`, `glRasterPos3sv`, `glRasterPos4d`, `glRasterPos4dv`, `glRasterPos4f`, `glRasterPos4fv`, `glRasterPos4i`, `glRasterPos4iv`, `glRasterPos4s`, `glRasterPos4sv`, `glRectd`, `glRectdv`, `glRectf`, `glRectfv`

the GL front end API source unit (part 2): GL API entry points.

`glRecti`, `glRectiv`, `glRects`, `glRectsv`, `glClipPlane`, `glColorMaterial`, `glCullFace`, `glFogf`, `glFogfv`, `glFogi`, `glFogiv`, `glFrontFace`, `glHint`, `glLightf`, `glLightfv`, `glLighti`, `glLightiv`, `glLightModelf`, `glLightModelfv`, `glLightModeli`, `glLightModeliv`, `glLineStipple`, `glLineWidth`, `glMaterialf`, `glMaterialfv`, `glMateriali`, `glMaterialiv`, `glPointSize`, `glPolygonMode`, `glPolygonStipple`, `glScissor`, `glShadeModel`, `glTexParameterf`, `glTexParameterfv`, `glTexParameteri`, `glTexParameteriv`, `glTexImage1D`, `glTexImage2D`, `glTexEnvf`, `glTexEnvfv`

the GL front end API source unit (part 3): GL API entry points.

`glTexEnvi`, `glTexEnviv`, `glTexGend`, `glTexGendv`, `glTexGenf`, `glTexGenfv`, `glTexGeni`, `glTexGeniv`, `glFeedbackBuffer`, `glSelectBuffer`, `glRenderMode`, `glInitNames`, `glLoadName`, `glPassThrough`, `glPopName`, `glPushName`, `glDrawBuffer`, `glClearAccum`, `glClearIndex`, `glClearColor`, `glClearStencil`, `glClearDepth`, `glStencilMask`, `glColorMask`, `glDepthMask`, `glIndexMask`, `glAccum`, `glDisable`, `glEnable`, `glFinish`, `glFlush`, `glPopAttrib`, `glPushAttrib`, `glMap1d`, `glMap1f`, `glMap2d`, `glMap2f`, `glMapGrid1d`, `glMapGrid1f`, `glMapGrid2d`

the GL front end API source unit (part 4): GL API entry points.

`glMapGrid2f`, `glEvalCoord1d`, `glEvalCoord1dv`, `glEvalCoord1f`, `glEvalCoord1fv`, `glEvalCoord2d`, `glEvalCoord2dv`, `glEvalCoord2f`, `glEvalCoord2fv`, `glEvalMesh1`, `glEvalPoint1`, `glEvalMesh2`, `glEvalPoint2`, `glAlphaFunc`, `glBlendFunc`, `glLogicOp`, `glStencilFunc`, `glStencilOp`, `glDepthFunc`, `glPixelZoom`, `glPixelTransferf`, `glPixelTransferi`, `glPixelStoref`, `glPixelStorei`, `glPixelMapfv`, `glPixelMapuiv`, `glPixelMapusv`, `glReadBuffer`, `glCopyPixels`, `glGetBooleanv`, `glGetClipPlane`, `glGetDoublev`, `glGetError`, `glGetFloatv`, `glGetIntegerv`, `glGetLightfv`, `glGetLightiv`, `glGetMapdv`, `glGetMapfv`, `glGetMapiv`

the GL front end API source unit (part 5): GL API entry points.

`glGetMaterialfv`, `glGetMaterialiv`, `glGetPixelMapfv`, `glGetPixelMapuiv`, `glGetPixelMapusv`, `glGetPolygonStipple`, `glGetString`, `glGetTexEnvfv`, `glGetTexEnviv`, `glGetTexGendv`, `glGetTexGenfv`, `glGetTexGeniv`, `glGetTexImage`, `glGetTexParameterfv`, `glGetTexParameteriv`, `glGetTexLevelParameterfv`, `glGetTexLevelParameteriv`, `glIsEnabled`, `glIsList`, `glDepthRange`, `glFrustum`, `glLoadIdentity`, `glLoadMatrixf`, `glLoadMatrixd`, `glMatrixMode`, `glMultMatrixf`, `glMultMatrixd`, `glOrtho`, `glPopMatrix`, `glPushMatrix`, `glRotated`, `glRotatef`, `glScaled`, `glScalef`, `glTranslated`, `glTranslatef`, `glViewport`, `glBlendColorEXT`, `glBlendEquationEXT`, `glPolygonOffsetEXT`

the GL front end API source unit (part 6): GL API entry points.

`glTexSubImage1DEXT`, `glTexSubImage2DEXT`, `glConvolutionFilter1DEXT`, `glConvolutionFilter2DEXT`, `glConvolutionParameterfEXT`, `glConvolutionParameterfvEXT`, `glConvolutionParameteriEXT`, `glConvolutionParameterivEXT`, `glCopyConvolutionFilter1DEXT`, `glCopyConvolutionFilter2DEXT`, `glGetConvolutionFilterEXT`, `glGetConvolutionParameterfvEXT`, `glGetConvolutionParameterivEXT`, `glGetSeparableFilterEXT`, `glSeparableFilter2DEXT`, `glGetHistogramEXT`, `glGetHistogramParameterfvEXT`, `glGetHistogramParameterivEXT`, `glGetMinmaxEXT`, `glGetMinmaxParameterfvEXT`, `glGetMinmaxParameterivEXT`, `glHistogramEXT`, `glMinmaxEXT`, `glResetHistogramEXT`, `glResetMinmaxEXT`, `glTexImage3DEXT`, `glTexSubImage3DEXT`, `glArrayElementEXT`, `glColorPointerEXT`, `glDrawArraysEXT`, `glEdgeFlagPointerEXT`, `glGetPointervEXT`, `glIndexPointerEXT`, `glNormalPointerEXT`, `glTexCoordPointerEXT`, `glVertexPointerEXT`, `glAreTexturesResidentEXT`, `glBindTextureEXT`, `glDeleteTexturesEXT`, `glGenTexturesEXT`

the GL front end API source unit (part 7): GL API entry points.

`glIsTextureEXT`, `glPrioritizeTexturesEXT`, `glCopyTexImage1DEXT`, `glCopyTexImage2DEXT`, `glCopyTexSubImage1DEXT`, `glCopyTexSubImage2DEXT`, `glCopyTexSubImage3DEXT`, `glColorPointer`, `glDisableClientState`, `glDrawElements`, `glEdgeFlagPointer`, `glEnableClientState`, `glIndexPointer`, `glInterleavedArrays`, `glNormalPointer`, `glTexCoordPointer`, `glVertexPointer`, `glPolygonOffset`, `glPopClientAttrib`, `glPushClientAttrib`, `glSampleMaskSGIS`, `glSamplePatternSGIS`, `glTagSampleBufferSGIX`, `glGetDetailTexFuncSGIS`, `glGetSharpenTexFuncSGIS`, `glColorTableSGI`, `glColorTableParameterfvSGI`, `glColorTableParameterivSGI`, `glCopyColorTableSGI`, `glGetColorTableSGI`, `glGetColorTableParameterfvSGI`, `glGetColorTableParameterivSGI`, `glTexImage4DSGIS`, `glTexSubImage4DSGIS`, `glPixelTexGenSGIX`, `glSpriteParameterfSGIX`, `glSpriteParameterfvSGIX`, `glSpriteParameteriSGIX`, `glSpriteParameterivSGIX`, `glGetTexFilterFuncSGIS`

the GL front end API source unit (part 8): GL API entry points.

`glTexFilterFuncSGIS`, `glPointParameterfSGIS`, `glPointParameterfvSGIS`, `glFogFuncSGIS`, `glGetInstrumentsSGIX`, `glInstrumentsBufferSGIX`, `glPollInstrumentsSGIX`, `glReadInstrumentsSGIX`, `glStartInstrumentsSGIX`, `glStopInstrumentsSGIX`, `glFlushRasterSGIX`, `glReferencePlaneSGIX`, `glFrameZoomSGIX`, `glIglooInterfaceSGIX`, `glDeformationMap3dSGIX`, `glDeformationMap3fSGIX`, `glDeformSGIX`, `glLoadIdentityDeformationMapSGIX`, `glGetListParameterfvSGIX`, `glGetListParameterivSGIX`, `glListParameterfSGIX`, `glListParameterfvSGIX`, `glListParameteriSGIX`, `glListParameterivSGIX`, `glColorSubTable`, `glCopyColorSubTable`, `glDrawRangeElements`, `glGetFogFuncSGIS`, `glPixelTexGenParameteriSGIS`, `glPixelTexGenParameterivSGIS`, `glPixelTexGenParameterfSGIS`, `glPixelTexGenParameterfvSGIS`, `glGetPixelTexGenParameterivSGIS`, `glGetPixelTexGenParameterfvSGIS`, `glAsyncMarkerSGIX`, `glFinishAsyncSGIX`, `glPollAsyncSGIX`, `glGenAsyncMarkersSGIX`, `glDeleteAsyncMarkersSGIX`, `glIsAsyncMarkerSGIX`

the GL front end API source unit (part 9): GL API entry points.

`glFragmentColorMaterialSGIX`, `glFragmentLightfSGIX`, `glFragmentLightfvSGIX`, `glFragmentLightiSGIX`, `glFragmentLightivSGIX`, `glFragmentLightModelfSGIX`, `glFragmentLightModelfvSGIX`, `glFragmentLightModeliSGIX`, `glFragmentLightModelivSGIX`, `glFragmentMaterialfSGIX`, `glFragmentMaterialfvSGIX`, `glFragmentMaterialiSGIX`, `glFragmentMaterialivSGIX`, `glGetFragmentLightfvSGIX`, `glGetFragmentLightivSGIX`, `glGetFragmentMaterialfvSGIX`, `glGetFragmentMaterialivSGIX`, `glLightEnviSGIX`, `glTextureColorMaskSGIS`, `glDrawArrays`, `glAreTexturesResident`, `glDeleteTextures`, `glGenTextures`, `glIsTexture`, `glGetColorTable`, `glGetColorTableParameterfv`, `glGetColorTableParameteriv`, `glGetConvolutionFilter`, `glGetConvolutionParameterfv`, `glGetConvolutionParameteriv`, `glGetSeparableFilter`, `glGetHistogram`, `glGetHistogramParameterfv`, `glGetHistogramParameteriv`, `glGetMinmax`, `glGetMinmaxParameterfv`, `glGetMinmaxParameteriv`

the GL front end source unit 1 (part 1): Odyssey fast-dispatch entry points.

`__glOdyssey_FastDispatchBase`, `glColor3b`, `glColor3bv`, `glColor3d`, `glColor3dv`, `glColor3f`, `glColor3fv`, `glColor3i`, `glColor3iv`, `glColor3s`, `glColor3sv`, `glColor3ub`, `glColor3ubv`, `glColor3ui`, `glColor3uiv`, `glColor3us`, `glColor3usv`, `glColor4b`, `glColor4bv`, `glColor4d`, `glColor4dv`, `glColor4f`, `glColor4fv`, `glColor4i`, `glColor4iv`, `glColor4s`, `glColor4sv`, `glColor4ub`, `glColor4ubv`, `glColor4ui`, `glColor4uiv`, `glColor4us`, `glColor4usv`, `glIndexd`, `glIndexdv`, `glIndexf`, `glIndexfv`, `glIndexi`, `glIndexiv`, `glIndexs`

the GL front end source unit 1 (part 2): Odyssey fast-dispatch entry points.

`glIndexsv`, `glNormal3b`, `glNormal3bv`, `glNormal3d`, `glNormal3dv`, `glNormal3f`, `glNormal3fv`, `glNormal3i`, `glNormal3iv`, `glNormal3s`, `glNormal3sv`, `glTexCoord1d`, `glTexCoord1dv`, `glTexCoord1f`, `glTexCoord1fv`, `glTexCoord1i`, `glTexCoord1iv`, `glTexCoord1s`, `glTexCoord1sv`, `glTexCoord2d`, `glTexCoord2dv`, `glTexCoord2f`, `glTexCoord2fv`, `glTexCoord2i`, `glTexCoord2iv`, `glTexCoord2s`, `glTexCoord2sv`, `glTexCoord3d`, `glTexCoord3dv`, `glTexCoord3f`, `glTexCoord3fv`, `glTexCoord3i`, `glTexCoord3iv`, `glTexCoord3s`, `glTexCoord3sv`, `glTexCoord4d`, `glTexCoord4dv`, `glTexCoord4f`, `glTexCoord4fv`, `glTexCoord4i`

the GL front end source unit 1 (part 3): Odyssey fast-dispatch entry points.

`glTexCoord4iv`, `glTexCoord4s`, `glTexCoord4sv`, `__glOdyssey_FastDispatchVertexBase`, `glVertex2d`, `glVertex2dv`, `glVertex2f`, `glVertex2fv`, `glVertex2i`, `glVertex2iv`, `glVertex2s`, `glVertex2sv`, `glVertex3d`, `glVertex3dv`, `glVertex3f`, `glVertex3fv`, `glVertex3i`, `glVertex3iv`, `glVertex3s`, `glVertex3sv`, `glVertex4d`, `glVertex4dv`, `glVertex4f`, `glVertex4fv`, `glVertex4i`, `glVertex4iv`, `glVertex4s`, `glVertex4sv`, `glIndexub`, `glIndexubv`, `__glOdyssey_FastDispatchEnd`

the MIPS assembly fast path lighting source unit: lighting colour clamp.

`__glClampAndScaleColor`, `__glFastCalcRGBColor`

the MIPS assembly fast path polygon source unit: triangle rendering.

`__glRenderFlatTriangle`, `__glRenderFlatOneFaceTriangle`, `__glRenderSmoothTriangle`, `__glRenderSmoothOneFaceTriangle`, `__glRenderSmoothOneFaceTmesh`

the MIPS assembly fast path source unit 1: frustum clip checks.

`__glMipsClipCheckFrustum`, `__glMipsClipCheckFrustum_W`, `__glMipsClipCheckFrustum2D`, `__glMipsClipCheckSafe2`, `__glMipsClipCheckSafe3`, `__glMipsClipCheckSafe4`, `__glMipsClipCheckAll2`, `__glMipsClipCheckAll3`, `__glMipsClipCheckAll`

the MIPS assembly fast path transform source unit: vertex transforms.

`__glMipsXForm2_2DNRW`, `__glMipsXForm2_2DW`, `__glMipsXForm2_W`, `__glMipsXForm2`, `__glMipsXForm3_2DNRW`, `__glMipsXForm3_2DW`, `__glMipsXForm3_W`, `__glMipsXForm3AsmLink_W`, `__glMipsXForm3`, `__glMipsXForm3AsmLink`, `__glMipsXForm4_2DNRW`, `__glMipsXForm4_2DW`, `__glMipsXForm4_W`, `__glMipsXForm4`, `__glMipsMultMatrix`

the MIPS assembly fast path fast API source unit: fast-path colour entry points.

`__glim_Color3f`, `__glim_Color3fv`, `__glim_Color4f`, `__glim_Color4fv`, `__glim_Normal3f`, `__glim_Normal3fv`, `__glim_TexCoord2f`, `__glim_TexCoord2fv`

the MIPS assembly fast path polygon finish source unit: triangle and polygon primitive assembly.

`__glEvenTStripVertex`, `__glOddTStripVertex`, `__glEvenTStripVertexFast`, `__glOddTStripVertexFast`, `__glFourthQuadsVertex`

the MIPS assembly fast path primitive source unit: primitive begin and end.

`__glOtherLStripVertexFast`, `__glFastClipLine`, `__glSecondLinesVertex`, `__glSecondLLoopVertex`, `__glPoint`, `__glPointFast`

the MIPS assembly fast path vertex source unit: vertex validation.

`__glValidateVertex2`, `__glValidateVertex3`, `__glValidateVertex4`, `__glValidateLitVertex2`, `__glValidateLitVertex3`, `__glValidateLitVertex4`

the Odyssey GL driver immediate-mode API source unit (part 1): colour entry points in assembly.

`__glOdyim_Color3b`, `__glOdyim_Color3bv`, `__glOdyim_ScratchColor3bv`, `__glOdyim_Color3dv`, `__glOdyim_ScratchColor3dv`, `__glOdyim_Color3f`, `__glOdyim_ScratchColor3f`, `__glOdyim_Color3fv`, `__glOdyim_ScratchColor3fv`, `__glOdyim_Color3i`, `__glOdyim_Color3iv`, `__glOdyim_ScratchColor3iv`, `__glOdyim_Color3s`, `__glOdyim_Color3sv`, `__glOdyim_ScratchColor3sv`, `__glOdyim_Color3ub`, `__glOdyim_ScratchColor3ub`, `__glOdyim_Color3ubv`, `__glOdyim_ScratchColor3ubv`, `__glOdyim_Color3ui`, `__glOdyim_Color3uiv`, `__glOdyim_ScratchColor3uiv`, `__glOdyim_Color3us`, `__glOdyim_Color3usv`, `__glOdyim_ScratchColor3usv`, `__glOdyim_Color4b`, `__glOdyim_Color4bv`, `__glOdyim_ScratchColor4bv`, `__glOdyim_Color4d`, `__glOdyim_ScratchColor4d`, `__glOdyim_Color4f`, `__glOdyim_ScratchColor4f`, `__glOdyim_Color4fv`, `__glOdyim_ScratchColor4fv`, `__glOdyim_Color4i`, `__glOdyim_Color4iv`, `__glOdyim_ScratchColor4iv`, `__glOdyim_Color4s`, `__glOdyim_Color4sv`, `__glOdyim_ScratchColor4sv`

the Odyssey GL driver immediate-mode API source unit (part 2): colour entry points in assembly.

`__glOdyim_Color4ub`, `__glOdyim_Color4ubv`, `__glOdyim_ScratchColor4ubv`, `__glOdyim_Color4ui`, `__glOdyim_Color4uiv`, `__glOdyim_ScratchColor4uiv`, `__glOdyim_Color4us`, `__glOdyim_Color4usv`, `__glOdyim_ScratchColor4usv`, `__glOdyim_Indexd`, `__glOdyim_Indexdv`, `__glOdyim_ScratchIndexdv`, `__glOdyim_Indexf`, `__glOdyim_ScratchIndexf`, `__glOdyim_Indexfv`, `__glOdyim_ScratchIndexfv`, `__glOdyim_Indexi`, `__glOdyim_ScratchIndexi`, `__glOdyim_Indexiv`, `__glOdyim_ScratchIndexiv`, `__glOdyim_Indexs`, `__glOdyim_ScratchIndexs`, `__glOdyim_Indexsv`, `__glOdyim_ScratchIndexsv`, `__glOdyim_Indexub`, `__glOdyim_ScratchIndexub`, `__glOdyim_Indexubv`, `__glOdyim_ScratchIndexubv`

the Odyssey GL driver normal-mode API source unit: normal entry points in assembly.

`__glOdyim_Normal3b`, `__glOdyim_Normal3bv`, `__glOdyim_Normal3d`, `__glOdyim_Normal3dv`, `__glOdyim_Normal3f`, `__glOdyim_Normal3fv`, `__glOdyim_Normal3i`, `__glOdyim_Normal3iv`, `__glOdyim_Normal3s`, `__glOdyim_Normal3sv`

the Odyssey GL driver texture API source unit: texture-coordinate entry points in assembly.

`__glOdyim_TexCoord1d`, `__glOdyim_TexCoord1dv`, `__glOdyim_TexCoord1f`, `__glOdyim_TexCoord1fv`, `__glOdyim_TexCoord1i`, `__glOdyim_TexCoord1iv`, `__glOdyim_TexCoord1s`, `__glOdyim_TexCoord1sv`, `__glOdyim_TexCoord2d`, `__glOdyim_TexCoord2dv`, `__glOdyim_TexCoord2f`, `__glOdyim_TexCoord2fv`, `__glOdyim_TexCoord2i`, `__glOdyim_TexCoord2iv`, `__glOdyim_TexCoord2s`, `__glOdyim_TexCoord2sv`, `__glOdyim_TexCoord3dv`, `__glOdyim_TexCoord3f`, `__glOdyim_TexCoord3fv`, `__glOdyim_TexCoord3i`, `__glOdyim_TexCoord3iv`, `__glOdyim_TexCoord3s`, `__glOdyim_TexCoord3sv`, `__glOdyim_TexCoord4d`, `__glOdyim_TexCoord4f`, `__glOdyim_TexCoord4fv`, `__glOdyim_TexCoord4i`, `__glOdyim_TexCoord4iv`, `__glOdyim_TexCoord4s`, `__glOdyim_TexCoord4sv`

the Odyssey GL driver vertex API source unit (2): vertex entry points in assembly.

`__glOdyim_Vertex2d`, `__glOdyim_Vertex2dv`, `__glOdyim_Vertex2f`, `__glOdyim_Vertex2fv`, `__glOdyim_Vertex2i`, `__glOdyim_Vertex2iv`, `__glOdyim_Vertex2s`, `__glOdyim_Vertex2sv`, `__glOdyim_Vertex3d`, `__glOdyim_Vertex3dv`, `__glOdyim_Vertex3f`, `__glOdyim_Vertex3fv`, `__glOdyim_Vertex3iv`, `__glOdyim_Vertex3s`, `__glOdyim_Vertex3sv`, `__glOdyim_Vertex4d`, `__glOdyim_Vertex4dv`, `__glOdyim_Vertex4f`, `__glOdyim_Vertex4fv`, `__glOdyim_Vertex4iv`, `__glOdyim_Vertex4s`, `__glOdyim_Vertex4sv`

the Odyssey GL driver vertex API source unit (3): vertex entry points in assembly, magnified variant.

`__glOdyim_Vertex2d_mag`, `__glOdyim_Vertex2dv_mag`, `__glOdyim_Vertex2f_mag`, `__glOdyim_Vertex2fv_mag`, `__glOdyim_Vertex2i_mag`, `__glOdyim_Vertex2iv_mag`, `__glOdyim_Vertex2s_mag`, `__glOdyim_Vertex2sv_mag`, `__glOdyim_Vertex3d_mag`, `__glOdyim_Vertex3dv_mag`, `__glOdyim_Vertex3f_mag`, `__glOdyim_Vertex3fv_mag`, `__glOdyim_Vertex3i_mag`, `__glOdyim_Vertex3iv_mag`, `__glOdyim_Vertex3s_mag`, `__glOdyim_Vertex3sv_mag`, `__glOdyim_Vertex4d_mag`, `__glOdyim_Vertex4dv_mag`, `__glOdyim_Vertex4f_mag`, `__glOdyim_Vertex4fv_mag`, `__glOdyim_Vertex4i_mag`, `__glOdyim_Vertex4iv_mag`, `__glOdyim_Vertex4s_mag`, `__glOdyim_Vertex4sv_mag`

the Odyssey GL driver vertex API source unit (4): vertex entry points in assembly, magnified line variant.

`__glOdyim_Vertex2d_mag_line0`, `__glOdyim_Vertex2dv_mag_line0`, `__glOdyim_Vertex2f_mag_line0`, `__glOdyim_Vertex2fv_mag_line0`, `__glOdyim_Vertex2i_mag_line0`, `__glOdyim_Vertex2iv_mag_line0`, `__glOdyim_Vertex2s_mag_line0`, `__glOdyim_Vertex2sv_mag_line0`, `__glOdyim_Vertex3d_mag_line0`, `__glOdyim_Vertex3dv_mag_line0`, `__glOdyim_Vertex3f_mag_line0`, `__glOdyim_Vertex3fv_mag_line0`, `__glOdyim_Vertex3i_mag_line0`, `__glOdyim_Vertex3iv_mag_line0`, `__glOdyim_Vertex3s_mag_line0`, `__glOdyim_Vertex3sv_mag_line0`, `__glOdyim_Vertex4d_mag_line0`, `__glOdyim_Vertex4dv_mag_line0`, `__glOdyim_Vertex4f_mag_line0`, `__glOdyim_Vertex4fv_mag_line0`, `__glOdyim_Vertex4i_mag_line0`, `__glOdyim_Vertex4iv_mag_line0`, `__glOdyim_Vertex4s_mag_line0`, `__glOdyim_Vertex4sv_mag_line0`

the Odyssey GL driver vertex API source unit (5): vertex entry points in assembly, small-window variant.

`__glOdyim_Vertex2d_smallw`, `__glOdyim_Vertex2dv_smallw`, `__glOdyim_Vertex2f_smallw`, `__glOdyim_Vertex2fv_smallw`, `__glOdyim_Vertex2i_smallw`, `__glOdyim_Vertex2iv_smallw`, `__glOdyim_Vertex2s_smallw`, `__glOdyim_Vertex2sv_smallw`, `__glOdyim_Vertex3d_smallw`, `__glOdyim_Vertex3dv_smallw`, `__glOdyim_Vertex3f_smallw`, `__glOdyim_Vertex3fv_smallw`, `__glOdyim_Vertex3i_smallw`, `__glOdyim_Vertex3iv_smallw`, `__glOdyim_Vertex3s_smallw`, `__glOdyim_Vertex3sv_smallw`, `__glOdyim_Vertex4d_smallw`, `__glOdyim_Vertex4dv_smallw`, `__glOdyim_Vertex4f_smallw`, `__glOdyim_Vertex4fv_smallw`, `__glOdyim_Vertex4i_smallw`, `__glOdyim_Vertex4iv_smallw`, `__glOdyim_Vertex4s_smallw`, `__glOdyim_Vertex4sv_smallw`


### `PIXMAP` (pixmap renderer)

the pixel path color-index source unit: colour-index span store, fetch and pick.

`Store_8`, `Store_16`, `Store_32`, `Fetch_8`, `Fetch_16`, `Fetch_32`, `Clear`, `StoreSpan`, `StoreStippledSpan`, `Pick`, `Resize`, `__glPixInitCI`

the pixel path color source unit: pixmap context.

`__glPixmapAllocAccum`, `ApplyViewport`, `ApplyScissor`, `Finish`, `Flush`, `SwapBuffers`, `DestroySoftContext`, `InitFnPtrs`, `InitBuffers`, `__glPixmapMakeCurrent`

the pixel path picking source unit: pixmap procedure pick.

`__glPixPickSpanProcs`, `__glPixPickStoreProcs`

the pixel path RGB source unit: RGB span store, fetch and pick.

`Store_8`, `Store_16`, `Store_32A`, `Store_32`, `Fetch_8`, `Fetch_16`, `Fetch_32A`, `Fetch_32`, `Clear`, `StoreSpan`, `StoreStippledSpan`, `Pick`, `Resize`, `__glPixInitRGB`


### `dlist` (display lists)

`dl_block.c`: display-list block allocator.

`__glDlistBlockStateInit`, `__glDlistBlockStateFree`, `block_grow_region`, `__glDlistPreallocBlocks`, `__glDlistAllocBlock`, `__glDlistFreeBlock`, `__glDlistCompactBlocks`, `__glDlistIsBlock`, `__glDlistTransientBlock`, `__glDlistFreeTransient`

`dl_heap.c`: display-list heap.

`__glDlistHeapInit`, `__glDlistHeapFree`, `__glDlistHeapQueryMin`, `__glDlistHeapRemoveMin`, `__glDlistHeapInsert`, `__glDlistHeapRemove`, `__glDlistHeapPriorityChanged`, `__glDlistPrintHeap`, `upheap`, `downheap`

`dl_init.c`: display-list initialisation.

`__glShareDlist`, `__glInitDlistState`, `__glFreeDlistState`

the display-list code interpretation source unit: display-list interpreter.

`__glDoInterpret`, `__glle_Sentinel`, `__glSPInterpret`, `__glsple_Sentinel`

`dl_list.c`: display-list creation and call.

`__glim_NewList`, `__glce_EndList`, `__glim_EndList`, `DoCallList`, `__gllc_CallList`, `__glle_CallList`, `__glce_CallList`, `__glce_CallLists`, `__glim_CallList`, `DoCallLists`, `__gllc_CallLists`, `__glle_CallLists`, `__glim_CallLists`, `__glce_DrawArraysEXT`, `__glce_DrawElements`, `__glce_DrawRangeElements`, `__glce_ArrayElementEXT`, `__glDlistAllocOp2`, `__glDlistFreeOp`, `__glDlistAppendOp`

the display-list code matrix optimization source unit: material optimisation in display lists.

`ApplyMatChange`, `FreeFastMaterial`, `__glDlistOptimizeMaterial`, `__glle_FastMaterial`

`dl_opt.c`: display-list optimiser.

`__glGenericDlistOptimizer`, `__gllc_Begin`, `__glle_Begin_LineLoop`, `__glle_Begin_LineStrip`, `__glle_Begin_Lines`, `__glle_Begin_Points`, `__glle_Begin_Polygon`, `__glle_Begin_TriangleStrip`, `__glle_Begin_TriangleFan`, `__glle_Begin_Triangles`, `__glle_Begin_QuadStrip`, `__glle_Begin_Quads`, `__gllc_InvalidValue`, `__gllc_InvalidEnum`, `__gllc_InvalidOperation`, `__gllc_TableTooLarge`, `__gllc_UnimplementedExtension`, `__gllc_Error`, `__glle_InvalidValue`, `__glle_InvalidEnum`, `__glle_InvalidOperation`, `__glle_TableTooLarge`, `__glle_UnimplementedExtension`

the display-list code paging source unit: display-list pages.

`grow_region`, `__glDlistInitPageState`, `__glDlistFreePageState`, `__glDlistAllocPage`, `__glDlistFreePage`, `__glDlistIsPage`

the display-list code list source unit: preprocessed (SP) display lists.

`__glSPExecuteDlist`, `__glSPDlistAddFree`, `__glSPFreeDlist`, `__glSPDlistCompiler`, `__glSPDlistSpace`, `__glsplc_AddIlist`, `__glSPDlistFreeSegments`

the display-list code compile source unit: single-pass display-list compile.

`__glsplc_InvalidValue`, `__glsplc_InvalidEnum`, `__glsplc_InvalidOperation`, `__glsplc_Error`, `__glsplc_UnimplementedExtension`, `__glsplc_CallList`, `__glsplc_CallLists`, `__glsplc_Bitmap`, `__glsplc_PolygonStipple`, `__glsplc_Map1f`, `__glsplc_Map1d`, `__glsplc_Map2f`, `__glsplc_Map2d`, `__glsplc_DeformationMap3fSGIX`, `__glsplc_DeformationMap3dSGIX`, `FormatAndType`, `__glsplc_DrawPixels`, `__glsplc_TexImage1D`, `__glsplc_TexImage2D`, `__glsplc_TexSubImage1DEXT`, `__glsplc_TexSubImage2DEXT`, `__glsplc_ConvolutionFilter1DEXT`, `__glsplc_ConvolutionFilter2DEXT`, `__glsplc_SeparableFilter2DEXT`, `__glsplc_TexImage3DEXT`, `__glsplc_TexSubImage3DEXT`, `__glsplc_Disable`, `__glsplc_Enable`, `__glsplc_ColorTableSGI`, `__glsplc_ColorSubTable`, `__glsplc_DrawArraysEXT`, `__glsplc_DrawElements`, `__glsplc_DrawRangeElements`

`dl_table.c`: display-list tables.

`__glDisposeDlist`, `__glEmptyFreeDlist`, `__glEmptyExecuteDlist`, `__glDlistNewArray`, `__glDlistFreeArray`, `__glim_IsList`, `__glim_GenLists`, `__glim_ListBase`, `__glim_DeleteLists`


### `g` (generated entry points)

the GL front end list compile source unit (part 1): display-list compile entry points (__gllc_).

`__gllc_ListBase`, `__gllc_Color3b`, `__gllc_Color3bv`, `__gllc_Color3d`, `__gllc_Color3dv`, `__gllc_Color3f`, `__gllc_Color3fv`, `__gllc_Color3i`, `__gllc_Color3iv`, `__gllc_Color3s`, `__gllc_Color3sv`, `__gllc_Color3ub`, `__gllc_Color3ubv`, `__gllc_Color3ui`, `__gllc_Color3uiv`, `__gllc_Color3us`, `__gllc_Color3usv`, `__gllc_Color4b`, `__gllc_Color4bv`, `__gllc_Color4d`, `__gllc_Color4dv`, `__gllc_Color4f`, `__gllc_Color4fv`, `__gllc_Color4i`, `__gllc_Color4iv`, `__gllc_Color4s`, `__gllc_Color4sv`, `__gllc_Color4ub`, `__gllc_Color4ubv`, `__gllc_Color4ui`, `__gllc_Color4uiv`, `__gllc_Color4us`, `__gllc_Color4usv`, `__gllc_EdgeFlag`, `__gllc_EdgeFlagv`, `__gllc_End`, `__gllc_Indexd`, `__gllc_Indexdv`, `__gllc_Indexf`, `__gllc_Indexfv`

the GL front end list compile source unit (part 2): display-list compile entry points (__gllc_).

`__gllc_Indexi`, `__gllc_Indexiv`, `__gllc_Indexs`, `__gllc_Indexsv`, `__gllc_Normal3b`, `__gllc_Normal3bv`, `__gllc_Normal3d`, `__gllc_Normal3dv`, `__gllc_Normal3f`, `__gllc_Normal3fv`, `__gllc_Normal3i`, `__gllc_Normal3iv`, `__gllc_Normal3s`, `__gllc_Normal3sv`, `__gllc_RasterPos2d`, `__gllc_RasterPos2dv`, `__gllc_RasterPos2f`, `__gllc_RasterPos2fv`, `__gllc_RasterPos2i`, `__gllc_RasterPos2iv`, `__gllc_RasterPos2s`, `__gllc_RasterPos2sv`, `__gllc_RasterPos3d`, `__gllc_RasterPos3dv`, `__gllc_RasterPos3f`, `__gllc_RasterPos3fv`, `__gllc_RasterPos3i`, `__gllc_RasterPos3iv`, `__gllc_RasterPos3s`, `__gllc_RasterPos3sv`, `__gllc_RasterPos4d`, `__gllc_RasterPos4dv`, `__gllc_RasterPos4f`, `__gllc_RasterPos4fv`, `__gllc_RasterPos4i`, `__gllc_RasterPos4iv`, `__gllc_RasterPos4s`, `__gllc_RasterPos4sv`, `__gllc_Rectd`, `__gllc_Rectdv`

the GL front end list compile source unit (part 3): display-list compile entry points (__gllc_).

`__gllc_Rectf`, `__gllc_Rectfv`, `__gllc_Recti`, `__gllc_Rectiv`, `__gllc_Rects`, `__gllc_Rectsv`, `__gllc_TexCoord1d`, `__gllc_TexCoord1dv`, `__gllc_TexCoord1f`, `__gllc_TexCoord1fv`, `__gllc_TexCoord1i`, `__gllc_TexCoord1iv`, `__gllc_TexCoord1s`, `__gllc_TexCoord1sv`, `__gllc_TexCoord2d`, `__gllc_TexCoord2dv`, `__gllc_TexCoord2f`, `__gllc_TexCoord2fv`, `__gllc_TexCoord2i`, `__gllc_TexCoord2iv`, `__gllc_TexCoord2s`, `__gllc_TexCoord2sv`, `__gllc_TexCoord3d`, `__gllc_TexCoord3dv`, `__gllc_TexCoord3f`, `__gllc_TexCoord3fv`, `__gllc_TexCoord3i`, `__gllc_TexCoord3iv`, `__gllc_TexCoord3s`, `__gllc_TexCoord3sv`, `__gllc_TexCoord4d`, `__gllc_TexCoord4dv`, `__gllc_TexCoord4f`, `__gllc_TexCoord4fv`, `__gllc_TexCoord4i`, `__gllc_TexCoord4iv`, `__gllc_TexCoord4s`, `__gllc_TexCoord4sv`, `__gllc_Vertex2d`, `__gllc_Vertex2dv`

the GL front end list compile source unit (part 4): display-list compile entry points (__gllc_).

`__gllc_Vertex2f`, `__gllc_Vertex2fv`, `__gllc_Vertex2i`, `__gllc_Vertex2iv`, `__gllc_Vertex2s`, `__gllc_Vertex2sv`, `__gllc_Vertex3d`, `__gllc_Vertex3dv`, `__gllc_Vertex3f`, `__gllc_Vertex3fv`, `__gllc_Vertex3i`, `__gllc_Vertex3iv`, `__gllc_Vertex3s`, `__gllc_Vertex3sv`, `__gllc_Vertex4d`, `__gllc_Vertex4dv`, `__gllc_Vertex4f`, `__gllc_Vertex4fv`, `__gllc_Vertex4i`, `__gllc_Vertex4iv`, `__gllc_Vertex4s`, `__gllc_Vertex4sv`, `__gllc_ClipPlane`, `__gllc_ColorMaterial`, `__gllc_CullFace`, `__gllc_Fogf`, `__gllc_Fogfv`, `__gllc_Fogi`, `__gllc_Fogiv`, `__gllc_FrontFace`, `__gllc_Hint`, `__gllc_Lightf`, `__gllc_Lightfv`, `__gllc_Lighti`, `__gllc_Lightiv`, `__gllc_LightModelf`, `__gllc_LightModelfv`, `__gllc_LightModeli`, `__gllc_LightModeliv`, `__gllc_LineStipple`

the GL front end list compile source unit (part 5): display-list compile entry points (__gllc_).

`__gllc_LineWidth`, `__gllc_Materialf`, `__gllc_Materialfv`, `__gllc_Materiali`, `__gllc_Materialiv`, `__gllc_PointSize`, `__gllc_PolygonMode`, `__gllc_Scissor`, `__gllc_ShadeModel`, `__gllc_TexParameterf`, `__gllc_TexParameterfv`, `__gllc_TexParameteri`, `__gllc_TexParameteriv`, `__gllc_TexEnvf`, `__gllc_TexEnvfv`, `__gllc_TexEnvi`, `__gllc_TexEnviv`, `__gllc_TexGend`, `__gllc_TexGendv`, `__gllc_TexGenf`, `__gllc_TexGenfv`, `__gllc_TexGeni`, `__gllc_TexGeniv`, `__gllc_InitNames`, `__gllc_LoadName`, `__gllc_PassThrough`, `__gllc_PopName`, `__gllc_PushName`, `__gllc_DrawBuffer`, `__gllc_Clear`, `__gllc_ClearAccum`, `__gllc_ClearIndex`, `__gllc_ClearColor`, `__gllc_ClearStencil`, `__gllc_ClearDepth`, `__gllc_StencilMask`, `__gllc_ColorMask`, `__gllc_DepthMask`, `__gllc_IndexMask`, `__gllc_Accum`

the GL front end list compile source unit (part 6): display-list compile entry points (__gllc_).

`__gllc_PopAttrib`, `__gllc_PushAttrib`, `__gllc_MapGrid1d`, `__gllc_MapGrid1f`, `__gllc_MapGrid2d`, `__gllc_MapGrid2f`, `__gllc_EvalCoord1d`, `__gllc_EvalCoord1dv`, `__gllc_EvalCoord1f`, `__gllc_EvalCoord1fv`, `__gllc_EvalCoord2d`, `__gllc_EvalCoord2dv`, `__gllc_EvalCoord2f`, `__gllc_EvalCoord2fv`, `__gllc_EvalMesh1`, `__gllc_EvalPoint1`, `__gllc_EvalMesh2`, `__gllc_EvalPoint2`, `__gllc_AlphaFunc`, `__gllc_BlendFunc`, `__gllc_LogicOp`, `__gllc_StencilFunc`, `__gllc_StencilOp`, `__gllc_DepthFunc`, `__gllc_PixelZoom`, `__gllc_PixelTransferf`, `__gllc_PixelTransferi`, `__gllc_PixelMapfv`, `__gllc_PixelMapuiv`, `__gllc_PixelMapusv`, `__gllc_ReadBuffer`, `__gllc_CopyPixels`, `__gllc_DepthRange`, `__gllc_Frustum`, `__gllc_LoadIdentity`, `__gllc_LoadMatrixf`, `__gllc_LoadMatrixd`, `__gllc_MatrixMode`, `__gllc_MultMatrixf`, `__gllc_MultMatrixd`

the GL front end list compile source unit (part 7): display-list compile entry points (__gllc_).

`__gllc_Ortho`, `__gllc_PopMatrix`, `__gllc_PushMatrix`, `__gllc_Rotated`, `__gllc_Rotatef`, `__gllc_Scaled`, `__gllc_Scalef`, `__gllc_Translated`, `__gllc_Translatef`, `__gllc_Viewport`, `__gllc_BlendColorEXT`, `__gllc_BlendEquationEXT`, `__gllc_PolygonOffsetEXT`, `__gllc_ConvolutionParameterfEXT`, `__gllc_ConvolutionParameterfvEXT`, `__gllc_ConvolutionParameteriEXT`, `__gllc_ConvolutionParameterivEXT`, `__gllc_CopyConvolutionFilter1DEXT`, `__gllc_CopyConvolutionFilter2DEXT`, `__gllc_HistogramEXT`, `__gllc_MinmaxEXT`, `__gllc_ResetHistogramEXT`, `__gllc_ResetMinmaxEXT`, `__gllc_BindTextureEXT`, `__gllc_PrioritizeTexturesEXT`, `__gllc_CopyTexImage1DEXT`, `__gllc_CopyTexImage2DEXT`, `__gllc_CopyTexSubImage1DEXT`, `__gllc_CopyTexSubImage2DEXT`, `__gllc_CopyTexSubImage3DEXT`, `__gllc_PolygonOffset`, `__gllc_Indexub`, `__gllc_Indexubv`, `__gllc_SampleMaskSGIS`, `__gllc_SamplePatternSGIS`, `__gllc_TagSampleBufferSGIX`, `__gllc_DetailTexFuncSGIS`, `__gllc_SharpenTexFuncSGIS`, `__gllc_ColorTableParameterfvSGI`, `__gllc_ColorTableParameterivSGI`

the GL front end list compile source unit (part 8): display-list compile entry points (__gllc_).

`__gllc_CopyColorTableSGI`, `__gllc_PixelTexGenSGIX`, `__gllc_SpriteParameterfSGIX`, `__gllc_SpriteParameterfvSGIX`, `__gllc_SpriteParameteriSGIX`, `__gllc_SpriteParameterivSGIX`, `__gllc_TexFilterFuncSGIS`, `__gllc_PointParameterfSGIS`, `__gllc_PointParameterfvSGIS`, `__gllc_FogFuncSGIS`, `__gllc_ReadInstrumentsSGIX`, `__gllc_StartInstrumentsSGIX`, `__gllc_StopInstrumentsSGIX`, `__gllc_ReferencePlaneSGIX`, `__gllc_FrameZoomSGIX`, `__gllc_DeformSGIX`, `__gllc_LoadIdentityDeformationMapSGIX`, `__gllc_CopyColorSubTable`, `__gllc_PixelTexGenParameteriSGIS`, `__gllc_PixelTexGenParameterivSGIS`, `__gllc_PixelTexGenParameterfSGIS`, `__gllc_PixelTexGenParameterfvSGIS`, `__gllc_AsyncMarkerSGIX`, `__gllc_FragmentColorMaterialSGIX`, `__gllc_FragmentLightfSGIX`, `__gllc_FragmentLightfvSGIX`, `__gllc_FragmentLightiSGIX`, `__gllc_FragmentLightivSGIX`, `__gllc_FragmentLightModelfSGIX`, `__gllc_FragmentLightModelfvSGIX`, `__gllc_FragmentLightModeliSGIX`, `__gllc_FragmentLightModelivSGIX`, `__gllc_FragmentMaterialfSGIX`, `__gllc_FragmentMaterialfvSGIX`, `__gllc_FragmentMaterialiSGIX`, `__gllc_FragmentMaterialivSGIX`, `__gllc_LightEnviSGIX`, `__gllc_TextureColorMaskSGIS`

the GL front end extended list compile source unit (part 1): extended display-list compile entry points (__glce_).

`__glce_NewList`, `__glce_DeleteLists`, `__glce_GenLists`, `__glce_ListBase`, `__glce_Begin`, `__glce_Bitmap`, `__glce_Color3b`, `__glce_Color3bv`, `__glce_Color3d`, `__glce_Color3dv`, `__glce_Color3f`, `__glce_Color3fv`, `__glce_Color3i`, `__glce_Color3iv`, `__glce_Color3s`, `__glce_Color3sv`, `__glce_Color3ub`, `__glce_Color3ubv`, `__glce_Color3ui`, `__glce_Color3uiv`, `__glce_Color3us`, `__glce_Color3usv`, `__glce_Color4b`, `__glce_Color4bv`, `__glce_Color4d`, `__glce_Color4dv`, `__glce_Color4f`, `__glce_Color4fv`, `__glce_Color4i`, `__glce_Color4iv`, `__glce_Color4s`, `__glce_Color4sv`, `__glce_Color4ub`, `__glce_Color4ubv`, `__glce_Color4ui`, `__glce_Color4uiv`, `__glce_Color4us`, `__glce_Color4usv`, `__glce_EdgeFlag`, `__glce_EdgeFlagv`

the GL front end extended list compile source unit (part 2): extended display-list compile entry points (__glce_).

`__glce_End`, `__glce_Indexd`, `__glce_Indexdv`, `__glce_Indexf`, `__glce_Indexfv`, `__glce_Indexi`, `__glce_Indexiv`, `__glce_Indexs`, `__glce_Indexsv`, `__glce_Normal3b`, `__glce_Normal3bv`, `__glce_Normal3d`, `__glce_Normal3dv`, `__glce_Normal3f`, `__glce_Normal3fv`, `__glce_Normal3i`, `__glce_Normal3iv`, `__glce_Normal3s`, `__glce_Normal3sv`, `__glce_RasterPos2d`, `__glce_RasterPos2dv`, `__glce_RasterPos2f`, `__glce_RasterPos2fv`, `__glce_RasterPos2i`, `__glce_RasterPos2iv`, `__glce_RasterPos2s`, `__glce_RasterPos2sv`, `__glce_RasterPos3d`, `__glce_RasterPos3dv`, `__glce_RasterPos3f`, `__glce_RasterPos3fv`, `__glce_RasterPos3i`, `__glce_RasterPos3iv`, `__glce_RasterPos3s`, `__glce_RasterPos3sv`, `__glce_RasterPos4d`, `__glce_RasterPos4dv`, `__glce_RasterPos4f`, `__glce_RasterPos4fv`, `__glce_RasterPos4i`

the GL front end extended list compile source unit (part 3): extended display-list compile entry points (__glce_).

`__glce_RasterPos4iv`, `__glce_RasterPos4s`, `__glce_RasterPos4sv`, `__glce_Rectd`, `__glce_Rectdv`, `__glce_Rectf`, `__glce_Rectfv`, `__glce_Recti`, `__glce_Rectiv`, `__glce_Rects`, `__glce_Rectsv`, `__glce_TexCoord1d`, `__glce_TexCoord1dv`, `__glce_TexCoord1f`, `__glce_TexCoord1fv`, `__glce_TexCoord1i`, `__glce_TexCoord1iv`, `__glce_TexCoord1s`, `__glce_TexCoord1sv`, `__glce_TexCoord2d`, `__glce_TexCoord2dv`, `__glce_TexCoord2f`, `__glce_TexCoord2fv`, `__glce_TexCoord2i`, `__glce_TexCoord2iv`, `__glce_TexCoord2s`, `__glce_TexCoord2sv`, `__glce_TexCoord3d`, `__glce_TexCoord3dv`, `__glce_TexCoord3f`, `__glce_TexCoord3fv`, `__glce_TexCoord3i`, `__glce_TexCoord3iv`, `__glce_TexCoord3s`, `__glce_TexCoord3sv`, `__glce_TexCoord4d`, `__glce_TexCoord4dv`, `__glce_TexCoord4f`, `__glce_TexCoord4fv`, `__glce_TexCoord4i`

the GL front end extended list compile source unit (part 4): extended display-list compile entry points (__glce_).

`__glce_TexCoord4iv`, `__glce_TexCoord4s`, `__glce_TexCoord4sv`, `__glce_Vertex2d`, `__glce_Vertex2dv`, `__glce_Vertex2f`, `__glce_Vertex2fv`, `__glce_Vertex2i`, `__glce_Vertex2iv`, `__glce_Vertex2s`, `__glce_Vertex2sv`, `__glce_Vertex3d`, `__glce_Vertex3dv`, `__glce_Vertex3f`, `__glce_Vertex3fv`, `__glce_Vertex3i`, `__glce_Vertex3iv`, `__glce_Vertex3s`, `__glce_Vertex3sv`, `__glce_Vertex4d`, `__glce_Vertex4dv`, `__glce_Vertex4f`, `__glce_Vertex4fv`, `__glce_Vertex4i`, `__glce_Vertex4iv`, `__glce_Vertex4s`, `__glce_Vertex4sv`, `__glce_ClipPlane`, `__glce_ColorMaterial`, `__glce_CullFace`, `__glce_Fogf`, `__glce_Fogfv`, `__glce_Fogi`, `__glce_Fogiv`, `__glce_FrontFace`, `__glce_Hint`, `__glce_Lightf`, `__glce_Lightfv`, `__glce_Lighti`, `__glce_Lightiv`

the GL front end extended list compile source unit (part 5): extended display-list compile entry points (__glce_).

`__glce_LightModelf`, `__glce_LightModelfv`, `__glce_LightModeli`, `__glce_LightModeliv`, `__glce_LineStipple`, `__glce_LineWidth`, `__glce_Materialf`, `__glce_Materialfv`, `__glce_Materiali`, `__glce_Materialiv`, `__glce_PointSize`, `__glce_PolygonMode`, `__glce_PolygonStipple`, `__glce_Scissor`, `__glce_ShadeModel`, `__glce_TexParameterf`, `__glce_TexParameterfv`, `__glce_TexParameteri`, `__glce_TexParameteriv`, `__glce_TexImage1D`, `__glce_TexImage2D`, `__glce_TexEnvf`, `__glce_TexEnvfv`, `__glce_TexEnvi`, `__glce_TexEnviv`, `__glce_TexGend`, `__glce_TexGendv`, `__glce_TexGenf`, `__glce_TexGenfv`, `__glce_TexGeni`, `__glce_TexGeniv`, `__glce_FeedbackBuffer`, `__glce_SelectBuffer`, `__glce_RenderMode`, `__glce_InitNames`, `__glce_LoadName`, `__glce_PassThrough`, `__glce_PopName`, `__glce_PushName`, `__glce_DrawBuffer`

the GL front end extended list compile source unit (part 6): extended display-list compile entry points (__glce_).

`__glce_Clear`, `__glce_ClearAccum`, `__glce_ClearIndex`, `__glce_ClearColor`, `__glce_ClearStencil`, `__glce_ClearDepth`, `__glce_StencilMask`, `__glce_ColorMask`, `__glce_DepthMask`, `__glce_IndexMask`, `__glce_Accum`, `__glce_Disable`, `__glce_Enable`, `__glce_Finish`, `__glce_Flush`, `__glce_PopAttrib`, `__glce_PushAttrib`, `__glce_Map1d`, `__glce_Map1f`, `__glce_Map2d`, `__glce_Map2f`, `__glce_MapGrid1d`, `__glce_MapGrid1f`, `__glce_MapGrid2d`, `__glce_MapGrid2f`, `__glce_EvalCoord1d`, `__glce_EvalCoord1dv`, `__glce_EvalCoord1f`, `__glce_EvalCoord1fv`, `__glce_EvalCoord2d`, `__glce_EvalCoord2dv`, `__glce_EvalCoord2f`, `__glce_EvalCoord2fv`, `__glce_EvalMesh1`, `__glce_EvalPoint1`, `__glce_EvalMesh2`, `__glce_EvalPoint2`, `__glce_AlphaFunc`, `__glce_BlendFunc`, `__glce_LogicOp`

the GL front end extended list compile source unit (part 7): extended display-list compile entry points (__glce_).

`__glce_StencilFunc`, `__glce_StencilOp`, `__glce_DepthFunc`, `__glce_PixelZoom`, `__glce_PixelTransferf`, `__glce_PixelTransferi`, `__glce_PixelStoref`, `__glce_PixelStorei`, `__glce_PixelMapfv`, `__glce_PixelMapuiv`, `__glce_PixelMapusv`, `__glce_ReadBuffer`, `__glce_CopyPixels`, `__glce_ReadPixels`, `__glce_DrawPixels`, `__glce_GetBooleanv`, `__glce_GetClipPlane`, `__glce_GetDoublev`, `__glce_GetError`, `__glce_GetFloatv`, `__glce_GetIntegerv`, `__glce_GetLightfv`, `__glce_GetLightiv`, `__glce_GetMapdv`, `__glce_GetMapfv`, `__glce_GetMapiv`, `__glce_GetMaterialfv`, `__glce_GetMaterialiv`, `__glce_GetPixelMapfv`, `__glce_GetPixelMapuiv`, `__glce_GetPixelMapusv`, `__glce_GetPolygonStipple`, `__glce_GetString`, `__glce_GetTexEnvfv`, `__glce_GetTexEnviv`, `__glce_GetTexGendv`, `__glce_GetTexGenfv`, `__glce_GetTexGeniv`, `__glce_GetTexImage`, `__glce_GetTexParameterfv`

the GL front end extended list compile source unit (part 8): extended display-list compile entry points (__glce_).

`__glce_GetTexParameteriv`, `__glce_GetTexLevelParameterfv`, `__glce_GetTexLevelParameteriv`, `__glce_IsEnabled`, `__glce_IsList`, `__glce_DepthRange`, `__glce_Frustum`, `__glce_LoadIdentity`, `__glce_LoadMatrixf`, `__glce_LoadMatrixd`, `__glce_MatrixMode`, `__glce_MultMatrixf`, `__glce_MultMatrixd`, `__glce_Ortho`, `__glce_PopMatrix`, `__glce_PushMatrix`, `__glce_Rotated`, `__glce_Rotatef`, `__glce_Scaled`, `__glce_Scalef`, `__glce_Translated`, `__glce_Translatef`, `__glce_Viewport`, `__glce_BlendColorEXT`, `__glce_BlendEquationEXT`, `__glce_PolygonOffsetEXT`, `__glce_TexSubImage1DEXT`, `__glce_TexSubImage2DEXT`, `__glce_ConvolutionFilter1DEXT`, `__glce_ConvolutionFilter2DEXT`, `__glce_ConvolutionParameterfEXT`, `__glce_ConvolutionParameterfvEXT`, `__glce_ConvolutionParameteriEXT`, `__glce_ConvolutionParameterivEXT`, `__glce_CopyConvolutionFilter1DEXT`, `__glce_CopyConvolutionFilter2DEXT`, `__glce_GetConvolutionFilterEXT`, `__glce_GetConvolutionParameterfvEXT`, `__glce_GetConvolutionParameterivEXT`, `__glce_GetSeparableFilterEXT`

the GL front end extended list compile source unit (part 9): extended display-list compile entry points (__glce_).

`__glce_SeparableFilter2DEXT`, `__glce_GetHistogramEXT`, `__glce_GetHistogramParameterfvEXT`, `__glce_GetHistogramParameterivEXT`, `__glce_GetMinmaxEXT`, `__glce_GetMinmaxParameterfvEXT`, `__glce_GetMinmaxParameterivEXT`, `__glce_HistogramEXT`, `__glce_MinmaxEXT`, `__glce_ResetHistogramEXT`, `__glce_ResetMinmaxEXT`, `__glce_TexImage3DEXT`, `__glce_TexSubImage3DEXT`, `__glce_ColorPointerEXT`, `__glce_EdgeFlagPointerEXT`, `__glce_GetPointervEXT`, `__glce_IndexPointerEXT`, `__glce_NormalPointerEXT`, `__glce_TexCoordPointerEXT`, `__glce_VertexPointerEXT`, `__glce_AreTexturesResidentEXT`, `__glce_BindTextureEXT`, `__glce_DeleteTexturesEXT`, `__glce_GenTexturesEXT`, `__glce_IsTextureEXT`, `__glce_PrioritizeTexturesEXT`, `__glce_CopyTexImage1DEXT`, `__glce_CopyTexImage2DEXT`, `__glce_CopyTexSubImage1DEXT`, `__glce_CopyTexSubImage2DEXT`, `__glce_CopyTexSubImage3DEXT`, `__glce_ColorPointer`, `__glce_DisableClientState`, `__glce_EdgeFlagPointer`, `__glce_EnableClientState`, `__glce_IndexPointer`, `__glce_InterleavedArrays`, `__glce_NormalPointer`, `__glce_TexCoordPointer`, `__glce_VertexPointer`

the GL front end extended list compile source unit (part 10): extended display-list compile entry points (__glce_).

`__glce_PolygonOffset`, `__glce_Indexub`, `__glce_Indexubv`, `__glce_PopClientAttrib`, `__glce_PushClientAttrib`, `__glce_SampleMaskSGIS`, `__glce_SamplePatternSGIS`, `__glce_TagSampleBufferSGIX`, `__glce_DetailTexFuncSGIS`, `__glce_GetDetailTexFuncSGIS`, `__glce_SharpenTexFuncSGIS`, `__glce_GetSharpenTexFuncSGIS`, `__glce_ColorTableSGI`, `__glce_ColorTableParameterfvSGI`, `__glce_ColorTableParameterivSGI`, `__glce_CopyColorTableSGI`, `__glce_GetColorTableSGI`, `__glce_GetColorTableParameterfvSGI`, `__glce_GetColorTableParameterivSGI`, `__glce_TexImage4DSGIS`, `__glce_TexSubImage4DSGIS`, `__glce_PixelTexGenSGIX`, `__glce_SpriteParameterfSGIX`, `__glce_SpriteParameterfvSGIX`, `__glce_SpriteParameteriSGIX`, `__glce_SpriteParameterivSGIX`, `__glce_GetTexFilterFuncSGIS`, `__glce_TexFilterFuncSGIS`, `__glce_PointParameterfSGIS`, `__glce_PointParameterfvSGIS`, `__glce_FogFuncSGIS`, `__glce_GetInstrumentsSGIX`, `__glce_InstrumentsBufferSGIX`, `__glce_PollInstrumentsSGIX`, `__glce_ReadInstrumentsSGIX`, `__glce_StartInstrumentsSGIX`, `__glce_StopInstrumentsSGIX`, `__glce_FlushRasterSGIX`, `__glce_ReferencePlaneSGIX`, `__glce_FrameZoomSGIX`

the GL front end extended list compile source unit (part 11): extended display-list compile entry points (__glce_).

`__glce_IglooInterfaceSGIX`, `__glce_DeformationMap3dSGIX`, `__glce_DeformationMap3fSGIX`, `__glce_DeformSGIX`, `__glce_LoadIdentityDeformationMapSGIX`, `__glce_GetListParameterfvSGIX`, `__glce_GetListParameterivSGIX`, `__glce_ListParameterfSGIX`, `__glce_ListParameterfvSGIX`, `__glce_ListParameteriSGIX`, `__glce_ListParameterivSGIX`, `__glce_ColorSubTable`, `__glce_CopyColorSubTable`, `__glce_GetFogFuncSGIS`, `__glce_PixelTexGenParameteriSGIS`, `__glce_PixelTexGenParameterivSGIS`, `__glce_PixelTexGenParameterfSGIS`, `__glce_PixelTexGenParameterfvSGIS`, `__glce_GetPixelTexGenParameterivSGIS`, `__glce_GetPixelTexGenParameterfvSGIS`, `__glce_AsyncMarkerSGIX`, `__glce_FinishAsyncSGIX`, `__glce_PollAsyncSGIX`, `__glce_GenAsyncMarkersSGIX`, `__glce_DeleteAsyncMarkersSGIX`, `__glce_IsAsyncMarkerSGIX`, `__glce_FragmentColorMaterialSGIX`, `__glce_FragmentLightfSGIX`, `__glce_FragmentLightfvSGIX`, `__glce_FragmentLightiSGIX`, `__glce_FragmentLightivSGIX`, `__glce_FragmentLightModelfSGIX`, `__glce_FragmentLightModelfvSGIX`, `__glce_FragmentLightModeliSGIX`, `__glce_FragmentLightModelivSGIX`, `__glce_FragmentMaterialfSGIX`, `__glce_FragmentMaterialfvSGIX`, `__glce_FragmentMaterialiSGIX`, `__glce_FragmentMaterialivSGIX`, `__glce_GetFragmentLightfvSGIX`

the GL front end extended list compile source unit (part 12): extended display-list compile entry points (__glce_).

`__glce_GetFragmentLightivSGIX`, `__glce_GetFragmentMaterialfvSGIX`, `__glce_GetFragmentMaterialivSGIX`, `__glce_LightEnviSGIX`, `__glce_TextureColorMaskSGIS`, `__glce_DrawArrays`, `__glce_AreTexturesResident`, `__glce_DeleteTextures`, `__glce_GenTextures`, `__glce_IsTexture`, `__glce_GetColorTable`, `__glce_GetColorTableParameterfv`, `__glce_GetColorTableParameteriv`, `__glce_GetConvolutionFilter`, `__glce_GetConvolutionParameterfv`, `__glce_GetConvolutionParameteriv`, `__glce_GetSeparableFilter`, `__glce_GetHistogram`, `__glce_GetHistogramParameterfv`, `__glce_GetHistogramParameteriv`, `__glce_GetMinmax`, `__glce_GetMinmaxParameterfv`, `__glce_GetMinmaxParameteriv`

the GL front end list execute source unit (part 1): display-list execute entry points (__glle_).

`__glle_ListBase`, `__glle_Color3bv`, `__glle_Color3dv`, `__glle_Color3fv`, `__glle_Color3iv`, `__glle_Color3sv`, `__glle_Color3ubv`, `__glle_Color3uiv`, `__glle_Color3usv`, `__glle_Color4bv`, `__glle_Color4dv`, `__glle_Color4fv`, `__glle_Color4iv`, `__glle_Color4sv`, `__glle_Color4ubv`, `__glle_Color4uiv`, `__glle_Color4usv`, `__glle_EdgeFlagv`, `__glle_End`, `__glle_Indexdv`, `__glle_Indexfv`, `__glle_Indexiv`, `__glle_Indexsv`, `__glle_Normal3bv`, `__glle_Normal3dv`, `__glle_Normal3fv`, `__glle_Normal3iv`, `__glle_Normal3sv`, `__glle_RasterPos2dv`, `__glle_RasterPos2fv`, `__glle_RasterPos2iv`, `__glle_RasterPos2sv`, `__glle_RasterPos3dv`, `__glle_RasterPos3fv`, `__glle_RasterPos3iv`, `__glle_RasterPos3sv`, `__glle_RasterPos4dv`, `__glle_RasterPos4fv`, `__glle_RasterPos4iv`, `__glle_RasterPos4sv`

the GL front end list execute source unit (part 2): display-list execute entry points (__glle_).

`__glle_Rectdv`, `__glle_Rectfv`, `__glle_Rectiv`, `__glle_Rectsv`, `__glle_TexCoord1dv`, `__glle_TexCoord1fv`, `__glle_TexCoord1iv`, `__glle_TexCoord1sv`, `__glle_TexCoord2dv`, `__glle_TexCoord2fv`, `__glle_TexCoord2iv`, `__glle_TexCoord2sv`, `__glle_TexCoord3dv`, `__glle_TexCoord3fv`, `__glle_TexCoord3iv`, `__glle_TexCoord3sv`, `__glle_TexCoord4dv`, `__glle_TexCoord4fv`, `__glle_TexCoord4iv`, `__glle_TexCoord4sv`, `__glle_Vertex2dv`, `__glle_Vertex2fv`, `__glle_Vertex2iv`, `__glle_Vertex2sv`, `__glle_Vertex3dv`, `__glle_Vertex3fv`, `__glle_Vertex3iv`, `__glle_Vertex3sv`, `__glle_Vertex4dv`, `__glle_Vertex4fv`, `__glle_Vertex4iv`, `__glle_Vertex4sv`, `__glle_ClipPlane`, `__glle_ColorMaterial`, `__glle_CullFace`, `__glle_Fogf`, `__glle_Fogfv`, `__glle_Fogi`, `__glle_Fogiv`, `__glle_FrontFace`

the GL front end list execute source unit (part 3): display-list execute entry points (__glle_).

`__glle_Hint`, `__glle_Lightfv`, `__glle_Lightiv`, `__glle_LightModelfv`, `__glle_LightModeliv`, `__glle_LineStipple`, `__glle_LineWidth`, `__glle_Materialfv`, `__glle_Materialiv`, `__glle_PointSize`, `__glle_PolygonMode`, `__glle_Scissor`, `__glle_ShadeModel`, `__glle_TexParameterfv`, `__glle_TexParameteriv`, `__glle_TexEnvfv`, `__glle_TexEnviv`, `__glle_TexGendv`, `__glle_TexGenfv`, `__glle_TexGeniv`, `__glle_InitNames`, `__glle_LoadName`, `__glle_PassThrough`, `__glle_PopName`, `__glle_PushName`, `__glle_DrawBuffer`, `__glle_Clear`, `__glle_ClearAccum`, `__glle_ClearIndex`, `__glle_ClearColor`, `__glle_ClearStencil`, `__glle_ClearDepth`, `__glle_StencilMask`, `__glle_ColorMask`, `__glle_DepthMask`, `__glle_IndexMask`, `__glle_Accum`, `__glle_PopAttrib`, `__glle_PushAttrib`, `__glle_MapGrid1d`

the GL front end list execute source unit (part 4): display-list execute entry points (__glle_).

`__glle_MapGrid1f`, `__glle_MapGrid2d`, `__glle_MapGrid2f`, `__glle_EvalCoord1dv`, `__glle_EvalCoord1fv`, `__glle_EvalCoord2dv`, `__glle_EvalCoord2fv`, `__glle_EvalMesh1`, `__glle_EvalPoint1`, `__glle_EvalMesh2`, `__glle_EvalPoint2`, `__glle_AlphaFunc`, `__glle_BlendFunc`, `__glle_LogicOp`, `__glle_StencilFunc`, `__glle_StencilOp`, `__glle_DepthFunc`, `__glle_PixelZoom`, `__glle_PixelTransferf`, `__glle_PixelTransferi`, `__glle_PixelMapfv`, `__glle_PixelMapuiv`, `__glle_PixelMapusv`, `__glle_ReadBuffer`, `__glle_CopyPixels`, `__glle_DepthRange`, `__glle_Frustum`, `__glle_LoadIdentity`, `__glle_LoadMatrixf`, `__glle_LoadMatrixd`, `__glle_MatrixMode`, `__glle_MultMatrixf`, `__glle_MultMatrixd`, `__glle_Ortho`, `__glle_PopMatrix`, `__glle_PushMatrix`, `__glle_Rotated`, `__glle_Rotatef`, `__glle_Scaled`, `__glle_Scalef`

the GL front end list execute source unit (part 5): display-list execute entry points (__glle_).

`__glle_Translated`, `__glle_Translatef`, `__glle_Viewport`, `__glle_BlendColorEXT`, `__glle_BlendEquationEXT`, `__glle_PolygonOffsetEXT`, `__glle_ConvolutionParameterfEXT`, `__glle_ConvolutionParameterfvEXT`, `__glle_ConvolutionParameteriEXT`, `__glle_ConvolutionParameterivEXT`, `__glle_CopyConvolutionFilter1DEXT`, `__glle_CopyConvolutionFilter2DEXT`, `__glle_HistogramEXT`, `__glle_MinmaxEXT`, `__glle_ResetHistogramEXT`, `__glle_ResetMinmaxEXT`, `__glle_BindTextureEXT`, `__glle_PrioritizeTexturesEXT`, `__glle_CopyTexImage1DEXT`, `__glle_CopyTexImage2DEXT`, `__glle_CopyTexSubImage1DEXT`, `__glle_CopyTexSubImage2DEXT`, `__glle_CopyTexSubImage3DEXT`, `__glle_PolygonOffset`, `__glle_Indexubv`, `__glle_SampleMaskSGIS`, `__glle_SamplePatternSGIS`, `__glle_TagSampleBufferSGIX`, `__glle_DetailTexFuncSGIS`, `__glle_SharpenTexFuncSGIS`, `__glle_ColorTableParameterfvSGI`, `__glle_ColorTableParameterivSGI`, `__glle_CopyColorTableSGI`, `__glle_PixelTexGenSGIX`, `__glle_SpriteParameterfSGIX`, `__glle_SpriteParameterfvSGIX`, `__glle_SpriteParameteriSGIX`, `__glle_SpriteParameterivSGIX`, `__glle_TexFilterFuncSGIS`, `__glle_PointParameterfSGIS`

the GL front end list execute source unit (part 6): display-list execute entry points (__glle_).

`__glle_PointParameterfvSGIS`, `__glle_FogFuncSGIS`, `__glle_ReadInstrumentsSGIX`, `__glle_StartInstrumentsSGIX`, `__glle_StopInstrumentsSGIX`, `__glle_ReferencePlaneSGIX`, `__glle_FrameZoomSGIX`, `__glle_DeformSGIX`, `__glle_LoadIdentityDeformationMapSGIX`, `__glle_CopyColorSubTable`, `__glle_PixelTexGenParameteriSGIS`, `__glle_PixelTexGenParameterivSGIS`, `__glle_PixelTexGenParameterfSGIS`, `__glle_PixelTexGenParameterfvSGIS`, `__glle_AsyncMarkerSGIX`, `__glle_FragmentColorMaterialSGIX`, `__glle_FragmentLightfSGIX`, `__glle_FragmentLightfvSGIX`, `__glle_FragmentLightiSGIX`, `__glle_FragmentLightivSGIX`, `__glle_FragmentLightModelfSGIX`, `__glle_FragmentLightModelfvSGIX`, `__glle_FragmentLightModeliSGIX`, `__glle_FragmentLightModelivSGIX`, `__glle_FragmentMaterialfSGIX`, `__glle_FragmentMaterialfvSGIX`, `__glle_FragmentMaterialiSGIX`, `__glle_FragmentMaterialivSGIX`, `__glle_LightEnviSGIX`, `__glle_TextureColorMaskSGIS`

the GL front end compile source unit (part 1): single-pass display-list compile.

`__glsplc_ListBase`, `__glsplc_Color3b`, `__glsplc_Color3bv`, `__glsplc_Color3d`, `__glsplc_Color3dv`, `__glsplc_Color3f`, `__glsplc_Color3fv`, `__glsplc_Color3i`, `__glsplc_Color3iv`, `__glsplc_Color3s`, `__glsplc_Color3sv`, `__glsplc_Color3ub`, `__glsplc_Color3ubv`, `__glsplc_Color3ui`, `__glsplc_Color3uiv`, `__glsplc_Color3us`, `__glsplc_Color3usv`, `__glsplc_Color4b`, `__glsplc_Color4bv`, `__glsplc_Color4d`, `__glsplc_Color4dv`, `__glsplc_Color4f`, `__glsplc_Color4fv`, `__glsplc_Color4i`, `__glsplc_Color4iv`, `__glsplc_Color4s`, `__glsplc_Color4sv`, `__glsplc_Color4ub`, `__glsplc_Color4ubv`, `__glsplc_Color4ui`, `__glsplc_Color4uiv`, `__glsplc_Color4us`, `__glsplc_Color4usv`, `__glsplc_EdgeFlag`, `__glsplc_EdgeFlagv`, `__glsplc_End`, `__glsplc_Indexd`, `__glsplc_Indexdv`, `__glsplc_Indexf`, `__glsplc_Indexfv`

the GL front end compile source unit (part 2): single-pass display-list compile.

`__glsplc_Indexi`, `__glsplc_Indexiv`, `__glsplc_Indexs`, `__glsplc_Indexsv`, `__glsplc_Normal3b`, `__glsplc_Normal3bv`, `__glsplc_Normal3d`, `__glsplc_Normal3dv`, `__glsplc_Normal3f`, `__glsplc_Normal3fv`, `__glsplc_Normal3i`, `__glsplc_Normal3iv`, `__glsplc_Normal3s`, `__glsplc_Normal3sv`, `__glsplc_RasterPos2d`, `__glsplc_RasterPos2dv`, `__glsplc_RasterPos2f`, `__glsplc_RasterPos2fv`, `__glsplc_RasterPos2i`, `__glsplc_RasterPos2iv`, `__glsplc_RasterPos2s`, `__glsplc_RasterPos2sv`, `__glsplc_RasterPos3d`, `__glsplc_RasterPos3dv`, `__glsplc_RasterPos3f`, `__glsplc_RasterPos3fv`, `__glsplc_RasterPos3i`, `__glsplc_RasterPos3iv`, `__glsplc_RasterPos3s`, `__glsplc_RasterPos3sv`, `__glsplc_RasterPos4d`, `__glsplc_RasterPos4dv`, `__glsplc_RasterPos4f`, `__glsplc_RasterPos4fv`, `__glsplc_RasterPos4i`, `__glsplc_RasterPos4iv`, `__glsplc_RasterPos4s`, `__glsplc_RasterPos4sv`, `__glsplc_Rectd`, `__glsplc_Rectdv`

the GL front end compile source unit (part 3): single-pass display-list compile.

`__glsplc_Rectf`, `__glsplc_Rectfv`, `__glsplc_Recti`, `__glsplc_Rectiv`, `__glsplc_Rects`, `__glsplc_Rectsv`, `__glsplc_TexCoord1d`, `__glsplc_TexCoord1dv`, `__glsplc_TexCoord1f`, `__glsplc_TexCoord1fv`, `__glsplc_TexCoord1i`, `__glsplc_TexCoord1iv`, `__glsplc_TexCoord1s`, `__glsplc_TexCoord1sv`, `__glsplc_TexCoord2d`, `__glsplc_TexCoord2dv`, `__glsplc_TexCoord2f`, `__glsplc_TexCoord2fv`, `__glsplc_TexCoord2i`, `__glsplc_TexCoord2iv`, `__glsplc_TexCoord2s`, `__glsplc_TexCoord2sv`, `__glsplc_TexCoord3d`, `__glsplc_TexCoord3dv`, `__glsplc_TexCoord3f`, `__glsplc_TexCoord3fv`, `__glsplc_TexCoord3i`, `__glsplc_TexCoord3iv`, `__glsplc_TexCoord3s`, `__glsplc_TexCoord3sv`, `__glsplc_TexCoord4d`, `__glsplc_TexCoord4dv`, `__glsplc_TexCoord4f`, `__glsplc_TexCoord4fv`, `__glsplc_TexCoord4i`, `__glsplc_TexCoord4iv`, `__glsplc_TexCoord4s`, `__glsplc_TexCoord4sv`, `__glsplc_Vertex2d`, `__glsplc_Vertex2dv`

the GL front end compile source unit (part 4): single-pass display-list compile.

`__glsplc_Vertex2f`, `__glsplc_Vertex2fv`, `__glsplc_Vertex2i`, `__glsplc_Vertex2iv`, `__glsplc_Vertex2s`, `__glsplc_Vertex2sv`, `__glsplc_Vertex3d`, `__glsplc_Vertex3dv`, `__glsplc_Vertex3f`, `__glsplc_Vertex3fv`, `__glsplc_Vertex3i`, `__glsplc_Vertex3iv`, `__glsplc_Vertex3s`, `__glsplc_Vertex3sv`, `__glsplc_Vertex4d`, `__glsplc_Vertex4dv`, `__glsplc_Vertex4f`, `__glsplc_Vertex4fv`, `__glsplc_Vertex4i`, `__glsplc_Vertex4iv`, `__glsplc_Vertex4s`, `__glsplc_Vertex4sv`, `__glsplc_ClipPlane`, `__glsplc_ColorMaterial`, `__glsplc_CullFace`, `__glsplc_Fogf`, `__glsplc_Fogfv`, `__glsplc_Fogi`, `__glsplc_Fogiv`, `__glsplc_FrontFace`, `__glsplc_Hint`, `__glsplc_Lightf`, `__glsplc_Lightfv`, `__glsplc_Lighti`, `__glsplc_Lightiv`, `__glsplc_LightModelf`, `__glsplc_LightModelfv`, `__glsplc_LightModeli`, `__glsplc_LightModeliv`, `__glsplc_LineStipple`

the GL front end compile source unit (part 5): single-pass display-list compile.

`__glsplc_LineWidth`, `__glsplc_Materialf`, `__glsplc_Materialfv`, `__glsplc_Materiali`, `__glsplc_Materialiv`, `__glsplc_PointSize`, `__glsplc_PolygonMode`, `__glsplc_Scissor`, `__glsplc_ShadeModel`, `__glsplc_TexParameterf`, `__glsplc_TexParameterfv`, `__glsplc_TexParameteri`, `__glsplc_TexParameteriv`, `__glsplc_TexEnvf`, `__glsplc_TexEnvfv`, `__glsplc_TexEnvi`, `__glsplc_TexEnviv`, `__glsplc_TexGend`, `__glsplc_TexGendv`, `__glsplc_TexGenf`, `__glsplc_TexGenfv`, `__glsplc_TexGeni`, `__glsplc_TexGeniv`, `__glsplc_InitNames`, `__glsplc_LoadName`, `__glsplc_PassThrough`, `__glsplc_PopName`, `__glsplc_PushName`, `__glsplc_DrawBuffer`, `__glsplc_Clear`, `__glsplc_ClearAccum`, `__glsplc_ClearIndex`, `__glsplc_ClearColor`, `__glsplc_ClearStencil`, `__glsplc_ClearDepth`, `__glsplc_StencilMask`, `__glsplc_ColorMask`, `__glsplc_DepthMask`, `__glsplc_IndexMask`, `__glsplc_Accum`

the GL front end compile source unit (part 6): single-pass display-list compile.

`__glsplc_PopAttrib`, `__glsplc_PushAttrib`, `__glsplc_MapGrid1d`, `__glsplc_MapGrid1f`, `__glsplc_MapGrid2d`, `__glsplc_MapGrid2f`, `__glsplc_EvalCoord1d`, `__glsplc_EvalCoord1dv`, `__glsplc_EvalCoord1f`, `__glsplc_EvalCoord1fv`, `__glsplc_EvalCoord2d`, `__glsplc_EvalCoord2dv`, `__glsplc_EvalCoord2f`, `__glsplc_EvalCoord2fv`, `__glsplc_EvalMesh1`, `__glsplc_EvalPoint1`, `__glsplc_EvalMesh2`, `__glsplc_EvalPoint2`, `__glsplc_AlphaFunc`, `__glsplc_BlendFunc`, `__glsplc_LogicOp`, `__glsplc_StencilFunc`, `__glsplc_StencilOp`, `__glsplc_DepthFunc`, `__glsplc_PixelZoom`, `__glsplc_PixelTransferf`, `__glsplc_PixelTransferi`, `__glsplc_PixelMapfv`, `__glsplc_PixelMapuiv`, `__glsplc_PixelMapusv`, `__glsplc_ReadBuffer`, `__glsplc_CopyPixels`, `__glsplc_DepthRange`, `__glsplc_Frustum`, `__glsplc_LoadIdentity`, `__glsplc_LoadMatrixf`, `__glsplc_LoadMatrixd`, `__glsplc_MatrixMode`, `__glsplc_MultMatrixf`, `__glsplc_MultMatrixd`

the GL front end compile source unit (part 7): single-pass display-list compile.

`__glsplc_Ortho`, `__glsplc_PopMatrix`, `__glsplc_PushMatrix`, `__glsplc_Rotated`, `__glsplc_Rotatef`, `__glsplc_Scaled`, `__glsplc_Scalef`, `__glsplc_Translated`, `__glsplc_Translatef`, `__glsplc_Viewport`, `__glsplc_BlendColorEXT`, `__glsplc_BlendEquationEXT`, `__glsplc_PolygonOffsetEXT`, `__glsplc_ConvolutionParameterfEXT`, `__glsplc_ConvolutionParameterfvEXT`, `__glsplc_ConvolutionParameteriEXT`, `__glsplc_ConvolutionParameterivEXT`, `__glsplc_CopyConvolutionFilter1DEXT`, `__glsplc_CopyConvolutionFilter2DEXT`, `__glsplc_HistogramEXT`, `__glsplc_MinmaxEXT`, `__glsplc_ResetHistogramEXT`, `__glsplc_ResetMinmaxEXT`, `__glsplc_BindTextureEXT`, `__glsplc_PrioritizeTexturesEXT`, `__glsplc_CopyTexImage1DEXT`, `__glsplc_CopyTexImage2DEXT`, `__glsplc_CopyTexSubImage1DEXT`, `__glsplc_CopyTexSubImage2DEXT`, `__glsplc_CopyTexSubImage3DEXT`, `__glsplc_PolygonOffset`, `__glsplc_Indexub`, `__glsplc_Indexubv`, `__glsplc_SampleMaskSGIS`, `__glsplc_SamplePatternSGIS`, `__glsplc_TagSampleBufferSGIX`, `__glsplc_DetailTexFuncSGIS`, `__glsplc_SharpenTexFuncSGIS`, `__glsplc_ColorTableParameterfvSGI`, `__glsplc_ColorTableParameterivSGI`

the GL front end compile source unit (part 8): single-pass display-list compile.

`__glsplc_CopyColorTableSGI`, `__glsplc_PixelTexGenSGIX`, `__glsplc_SpriteParameterfSGIX`, `__glsplc_SpriteParameterfvSGIX`, `__glsplc_SpriteParameteriSGIX`, `__glsplc_SpriteParameterivSGIX`, `__glsplc_TexFilterFuncSGIS`, `__glsplc_PointParameterfSGIS`, `__glsplc_PointParameterfvSGIS`, `__glsplc_FogFuncSGIS`, `__glsplc_ReadInstrumentsSGIX`, `__glsplc_StartInstrumentsSGIX`, `__glsplc_StopInstrumentsSGIX`, `__glsplc_ReferencePlaneSGIX`, `__glsplc_FrameZoomSGIX`, `__glsplc_DeformSGIX`, `__glsplc_LoadIdentityDeformationMapSGIX`, `__glsplc_CopyColorSubTable`, `__glsplc_PixelTexGenParameteriSGIS`, `__glsplc_PixelTexGenParameterivSGIS`, `__glsplc_PixelTexGenParameterfSGIS`, `__glsplc_PixelTexGenParameterfvSGIS`, `__glsplc_AsyncMarkerSGIX`, `__glsplc_FragmentColorMaterialSGIX`, `__glsplc_FragmentLightfSGIX`, `__glsplc_FragmentLightfvSGIX`, `__glsplc_FragmentLightiSGIX`, `__glsplc_FragmentLightivSGIX`, `__glsplc_FragmentLightModelfSGIX`, `__glsplc_FragmentLightModelfvSGIX`, `__glsplc_FragmentLightModeliSGIX`, `__glsplc_FragmentLightModelivSGIX`, `__glsplc_FragmentMaterialfSGIX`, `__glsplc_FragmentMaterialfvSGIX`, `__glsplc_FragmentMaterialiSGIX`, `__glsplc_FragmentMaterialivSGIX`, `__glsplc_LightEnviSGIX`, `__glsplc_TextureColorMaskSGIS`

the GL front end vertex-array source unit: DrawArrays variants.

`__glDrawArraysV`, `__glDrawArraysNV`, `__glDrawArraysCV`, `__glDrawArraysNCV`, `__glDrawArraysTV`, `__glDrawArraysNTV`, `__glDrawArraysCTV`, `__glDrawArraysNCTV`, `__glDrawArraysIV`, `__glDrawArraysNIV`, `__glDrawArraysCIV`, `__glDrawArraysNCIV`, `__glDrawArraysTIV`, `__glDrawArraysNTIV`, `__glDrawArraysCTIV`, `__glDrawArraysNCTIV`, `__glDrawArraysEV`, `__glDrawArraysNEV`, `__glDrawArraysCEV`, `__glDrawArraysNCEV`, `__glDrawArraysTEV`, `__glDrawArraysNTEV`, `__glDrawArraysCTEV`, `__glDrawArraysNCTEV`, `__glDrawArraysIEV`, `__glDrawArraysNIEV`, `__glDrawArraysCIEV`, `__glDrawArraysNCIEV`, `__glDrawArraysTIEV`, `__glDrawArraysNTIEV`, `__glDrawArraysCTIEV`, `__glDrawArraysNCTIEV`, `__glDrawArraysN`


### `mips` (hand-tuned MIPS)

the MIPS assembly fast path material source unit: material changes.

`__glMipsChangeMaterialEmission`, `__glMipsChangeMaterialSpecular`, `__glMipsChangeMaterialAmbient`, `__glMipsChangeMaterialDiffuse`, `__glMipsChangeMaterialAmbientAndDiffuse`

the MIPS assembly fast path matrix source unit: matrix normalisation.

`__glMipsNormalize`

the MIPS assembly fast path copy/display source unit: dispatch table copy.

`__glMipsCopyDispatch`

the MIPS assembly fast path source unit 2: stencil test span.

`__glStencilTestSpan_asm`

the MIPS assembly fast path texture utility source unit: texture helpers.

`__glFrac`, `__glFloor`

the MIPS assembly fast path vertex API source unit: vertex entry points.

`__glim_MipsVertex3fv`, `__glim_MipsVertex2fv`, `__glim_MipsVertex4fv`, `__glim_MipsVertex3fvFast`, `__glim_MipsVertex2fvFast`, `__glim_MipsVertex4fvFast`, `__glim_MipsNoXFVertex3fv`, `__glim_MipsNoXFVertex2fv`, `__glim_MipsNoXFVertex4fv`, `__glim_MipsNoXFVertex3fvFast`, `__glim_MipsNoXFVertex4fvFast`, `__glim_MipsNoXFVertex2fvFast2D`

the MIPS assembly fast path source unit 3: vertex save.

`__glSaveN`, `__glSaveCI`, `__glSaveC`, `__glSaveT`, `__glSaveCT`, `__glSaveNT`, `__glSaveCAll`, `__glSaveCIAll`, `__glSaveCN`, `__glSaveCNT`

the MIPS assembly fast path depth-function source unit: depth compare functions.

`__glDT_NEVER`, `__glDT_LEQUAL`, `__glDT_LEQUAL_s`, `__glDT_LESS`, `__glDT_LESS_s`, `__glDT_EQUAL`, `__glDT_GREATER`, `__glDT_GREATER_s`, `__glDT_NOTEQUAL`, `__glDT_GEQUAL`, `__glDT_GEQUAL_s`, `__glDT_ALWAYS`, `__glDT_LEQUAL_M`, `__glDT_LEQUAL_M_s`, `__glDT_LESS_M`, `__glDT_LESS_M_s`, `__glDT_EQUAL_M`, `__glDT_GREATER_M`, `__glDT_GREATER_M_s`, `__glDT_NOTEQUAL_M`, `__glDT_GEQUAL_M`, `__glDT_GEQUAL_M_s`, `__glDT_ALWAYS_M`

the MIPS assembly fast path source unit 4: depth-tested lines.

`__glDepthTestLine_LESS_asm`, `__glDepthTestLine_LESS_s_asm`, `__glDepthTestLine_asm`

the MIPS assembly fast path source unit 5: depth-tested spans.

`__glDepthTestSpan_asm`, `__glDepthTestStippledSpan_asm`, `__glDepthTestStencilSpan_asm`, `__glDepthTestStencilStippledSpan_asm`


### `misc` (linker stub)

the Odyssey stack source unit 2: __sgi_ld_generated_code.

`_stub`


### `pixel` (pixel paths)

`px_api.c`: pixel state set-up.

`__glInitDefaultPixelMap`, `__glPixelSetColorScales`, `__glFreePixelState`, `__glInitPixelState`, `__glim_PixelStoref`, `__glim_PixelStorei`, `__glim_PixelZoom`, `__glim_PixelTransferf`, `__glim_PixelTransferi`, `__glim_PixelMapfv`, `__glim_PixelMapuiv`, `__glim_PixelMapusv`, `__glim_ReadBuffer`, `__glCheckDrawPixelArgs`, `__glCheckReadPixelArgs`, `__glim_DrawPixels`, `__glim_ReadPixels`, `__glim_CopyPixels`

the pixel path color-matrix source unit: colour matrix spans.

`__glGenMatrixSignature`, `__glSpanColorMatrixSwizzleRGBA`, `__glSpanColorMatrixSwizzWithDropRGBA`, `__glSpanColorMatrixGeneralRGBA`, `__glSpanPostColorMatrixScaleBiasRGBA`

the pixel path convolution source unit: convolution filters.

`__glRowScaleSumRGBA`, `__glRowScaleSumRGB`, `__glRowScaleSumL`, `__glRowScaleSumLA`, `__glRowScaleSumI`, `__glSpanPostConvScaleBiasRGBA`, `__glRowSetNoAlpha`, `__glRowSetAll`, `__glSpanConvolveReduceRGB`, `__glSpanConvolveReduceRGBA`, `__glSpanConvolveReduceL`, `__glSpanConvolveReduceLA`, `__glSpanConvolveReduceI`, `__glSpanConvolve1DReduceRGB`, `__glSpanConvolve1DReduceRGBA`, `__glSpanConvolve1DReduceL`, `__glSpanConvolve1DReduceLA`, `__glSpanConvolve1DReduceI`, `__glSlowPickConvolutionFilter`, `__glSlowPickSeparableFilter`, `__glSlowPickGetConvolutionFilter`, `__glSlowPickGetSeparableFilter`, `__glSlowPickCopyConvolutionFilter1D`, `__glSlowPickCopyConvolutionFilter2D`, `__glSep2dZoomDrawPixels`, `__glConv2dDrawPixels`, `__glSep2dDrawPixels`, `__glConv2dReadPixels`, `__glSep2dReadPixels`, `__glGetCurrentSetDefaultPixelXferState`, `__glRestoreCurrentPixelXferState`, `__glConv2dCopyPixels`, `__glSep2dCopyPixels`, `__glConv2dCopyImage`, `__glSep2dCopyImage`

the pixel path histogram source unit: histogram and min-max.

`__glFClamp`, `__glSpanMinmaxA`, `__glSpanMinmaxL`, `__glSpanMinmaxLA`, `__glSpanMinmaxRGB`, `__glSpanMinmaxRGBA`, `__glSpanMinmaxSinkA`, `__glSpanMinmaxSinkL`, `__glSpanMinmaxSinkLA`, `__glSpanMinmaxSinkRGB`, `__glSpanMinmaxSinkRGBA`, `__glSpanHistogramA`, `__glSpanHistogramL`, `__glSpanHistogramLA`, `__glSpanHistogramRGB`, `__glSpanHistogramRGBA`, `__glSpanHistogramSinkA`, `__glSpanHistogramSinkL`, `__glSpanHistogramSinkLA`, `__glSpanHistogramSinkRGB`, `__glSpanHistogramSinkRGBA`

the pixel path modification source unit: pixel modify tables.

`__glBuildRGBAModifyTables`, `__glBuildItoIModifyTables`, `__glBuildItoRGBAModifyTables`, `__glSpanModifyRGBA`, `__glSpanModifyABGR`, `__glSpanModifyBGRA`, `__glSpanModifyRed`, `__glSpanModifyGreen`, `__glSpanModifyBlue`, `__glSpanModifyAlpha`, `__glSpanModifyRGB`, `__glSpanModifyBGR`, `__glSpanModifyLuminance`, `__glSpanModifyLuminanceAlpha`, `__glSpanModifyRedAlpha`, `__glSpanModifyDepth`, `__glSpanModifyStencil`, `__glSpanModifyCI`, `__glSpanApplyRGBAColorTable`

`px_pack.c` (part 1): pixel packing.

`__glInitPacker`, `__glInitPacker3D`, `__glSpanReduceRed`, `__glSpanReduceGreen`, `__glSpanReduceBlue`, `__glSpanReduceAlpha`, `__glSpanReduceRGB`, `__glSpanReduceBGR`, `__glSpanReorderABGR`, `__glSpanReorderBGRA`, `__glSpanReduceLuminance`, `__glSpanReduceLuminanceAlpha`, `__glSpanReduceRedAlpha`, `__glSpanReduceRedNS`, `__glSpanReduceGreenNS`, `__glSpanReduceBlueNS`, `__glSpanReduceAlphaNS`, `__glSpanReduceRGBNS`, `__glSpanReduceBGRNS`, `__glSpanReorderABGRNS`, `__glSpanReorderBGRANS`, `__glSpanReduceRedAlphaNS`, `__glSpanPackUbyte`, `__glSpanPackByte`, `__glSpanPackUshort`, `__glSpanPackShort`, `__glSpanPackUint`, `__glSpanPackInt`, `__glSpanPack332Ubyte`, `__glSpanPack233RevUbyte`, `__glSpanPack565Ushort`, `__glSpanPack565RevUshort`, `__glSpanPack4444Ushort`, `__glSpanPack4444RevUshort`, `__glSpanPack5551Ushort`, `__glSpanPack1555RevUshort`, `__glSpanPack8888Uint`, `__glSpanPack8888RevUint`, `__glSpanPack_10_10_10_2_Uint`, `__glSpanPack_2_10_10_10_RevUint`

`px_pack.c` (part 2): pixel packing.

`__glSpanPackUbyteI`, `__glSpanPackByteI`, `__glSpanPackUshortI`, `__glSpanPackShortI`, `__glSpanPackUintI`, `__glSpanPackIntI`, `__glSpanPackNonCompUbyte`, `__glSpanPackNonCompByte`, `__glSpanPackNonCompUshort`, `__glSpanPackNonCompShort`, `__glSpanPackNonCompUint`, `__glSpanPackNonCompInt`, `__glSpanCopy`, `__glSpanPackBitmap`, `__glSpanRGBAScaleBias`, `__glSpanRGBAScaleBiasReduce`

`px_paths.c` (part 1): DrawPixels and ReadPixels paths.

`PickSpanModifiers`, `__glClipDrawPixels`, `__glComputeSpanPixelArray`, `__glLoadUnpackModes`, `__glInitDrawPixelsInfo`, `__glDrawPixelSpans`, `__glDrawPixels2`, `__glDrawPixels1`, `__glDrawPixels0`, `__glLateScissorRender`, `__glInitLateScissor`, `__glSlowPickDrawPixels`, `__glGenericPickDrawPixels`, `__glClipReadPixels`, `__glLoadPackModes`, `__glInitReadPixelsInfo`, `__glReadPixelSpans`, `__glReadPixels2`, `__glReadPixels1`, `__glReadPixels0`, `__glSlowPickReadPixels`, `__glGenericPickReadPixels`, `__glClipCopyPixels`, `__glInitCopyPixelsInfo`, `__glCopyPixelSpans`, `__glCopyPixels2`, `__glCopyPixels1`, `__glCopyPixels0`, `__glCopyPixelsOverlapping`, `__glSlowPickCopyPixels`, `__glGenericPickCopyPixels`, `__glCopyImage1`, `__glCopyImage2`, `__glCopyImageSpans`, `__glGenericPickCopyImageSpan`, `__glCopyImage3D`, `__glGenericPickCopyImage`, `__glInitReadImageSrcInfo`, `__glGenericPickReadImage`, `__glInitMemLoad`

`px_paths.c` (part 2): DrawPixels and ReadPixels paths.

`__glInitMemGet`, `__glInitMemUnpack`, `__glInitMemPack`

`px_read.c`: span reads.

`__glSpanReadRGBA`, `__glSpanReadRGBA2`, `__glSpanReadCI`, `__glSpanReadCI2`, `__glSpanReadDepth`, `__glSpanReadDepth2`, `__glSpanReadDepthUint1`, `__glSpanReadDepthUint`, `__glSpanReadStencil`, `__glSpanReadStencil2`

the pixel path rendering source unit: pixel rendering.

`__glSlowDrawPixelsStore`, `__glSpanRenderRGBubyte`, `__glSpanRenderBGRubyte`, `__glSpanRenderRGBubyte2`, `__glSpanRenderBGRubyte2`, `__glSpanRenderRGBAubyte`, `__glSpanRenderRGBAubyte2`, `__glSpanRenderDepthUint`, `__glSpanRenderDepthUint1`, `__glSpanRenderStencilUshort`, `__glSpanRenderStencilUshort2`, `__glSpanRenderStencilUbyte`, `__glSpanRenderStencilUbyte2`, `__glSpanRenderCIushort`, `__glSpanRenderCIushort2`, `__glSpanRenderCIubyte`, `__glSpanRenderCIubyte2`, `__glSpanRenderCIubyte3`, `__glSpanRenderCIubyte4`, `__glSpanRenderRGBA`, `__glSpanRenderRGBA2`, `__glSpanRenderDepth`, `__glSpanRenderDepth2`, `__glSpanRenderCI`, `__glSpanRenderCI2`, `__glSpanRenderStencil`, `__glSpanRenderStencil2`

the pixel path unpacking source unit (part 1): pixel unpacking.

`__glElementsPerGroup`, `__glBytesPerElement`, `__glSpecElementsPerGroup`, `__glSpecBytesPerElement`, `__glInitUnpacker`, `__glInitUnpacker3D`, `__glSpanUnpackBitmap`, `__glSpanUnpackBitmap2`, `__glSpanUnpackRGBubyte`, `__glSpanUnpackIndexUbyte`, `__glSpanUnpackRGBAubyte`, `__glSpanSwapBytes2`, `__glSpanSwapBytes2Dst`, `__glSpanSwapAndSkipBytes2`, `__glSpanSwapBytes4`, `__glSpanSwapBytes4Dst`, `__glSpanSwapAndSkipBytes4`, `__glSpanSkipPixels1`, `__glSpanSkipPixels2`, `__glSpanSkipPixels4`, `__glSpanSlowSkipPixels2`, `__glSpanSlowSkipPixels4`, `__glSpanAlignPixels2`, `__glSpanAlignPixels2Dst`, `__glSpanAlignPixels4`, `__glSpanAlignPixels4Dst`, `__glSpanUnpackUbyte`, `__glSpanUnpackByte`, `__glSpanUnpackUshort`, `__glSpanUnpackShort`, `__glSpanUnpackUint`, `__glSpanUnpackInt`, `__glSpanUnpack332Ubyte`, `__glSpanUnpack233RevUbyte`, `__glSpanUnpack565Ushort`, `__glSpanUnpack565RevUshort`, `__glSpanUnpack4444Ushort`, `__glSpanUnpack4444RevUshort`, `__glSpanUnpack5551Ushort`, `__glSpanUnpack1555RevUshort`

the pixel path unpacking source unit (part 2): pixel unpacking.

`__glSpanUnpack8888Uint`, `__glSpanUnpack8888RevUint`, `__glSpanUnpack_10_10_10_2_Uint`, `__glSpanUnpack_2_10_10_10_RevUint`, `__glSpanUnpackUbyteI`, `__glSpanUnpackByteI`, `__glSpanUnpackUshortI`, `__glSpanUnpackShortI`, `__glSpanUnpackUintI`, `__glSpanUnpackIntI`, `__glSpanUnpackNonCompUint`, `__glSpanClampPreFloat`, `__glSpanClampNegPreFloat`, `__glSpanClampPostFloat`, `__glSpanClampRed`, `__glSpanClampGreen`, `__glSpanClampBlue`, `__glSpanClampAlpha`, `__glSpanClampRGB`, `__glSpanClampRGBA`, `__glSpanClampSigned`, `__glSpanExpandRed`, `__glSpanExpandGreen`, `__glSpanExpandBlue`, `__glSpanExpandAlpha`, `__glSpanExpandRGB`, `__glSpanExpandBGR`, `__glSpanExpandLuminance`, `__glSpanExpandLuminanceAlpha`, `__glSpanExpandRedAlpha`, `__glSpanExpandIntensity`, `__glSpanExpandRedNS`, `__glSpanExpandGreenNS`, `__glSpanExpandBlueNS`, `__glSpanExpandAlphaNS`, `__glSpanExpandRGBNS`, `__glSpanExpandBGRNS`, `__glSpanExpandLuminanceNS`, `__glSpanExpandLuminanceAlphaNS`, `__glSpanExpandRedAlphaNS`

the pixel path unpacking source unit (part 3): pixel unpacking.

`__glSpanExpandIntensityNS`, `__glSpanZeroFillAlpha`, `__glSpanScaleRGBA`, `__glSpanScaleABGR`, `__glSpanScaleBGRA`, `__glSpanPreReorderABGR`, `__glSpanPreReorderBGRA`, `__glSpanPreUnscaleRGBA`, `__glSpanPostUnscaleRGBA`, `__glSpanUnscaleABGR`, `__glSpanUnscaleBGRA`, `__glSpanGetMemRGBA`, `__glSpanGetMemRGB`, `__glSpanGetMemL`, `__glSpanGetMemLA`, `__glSpanGetMemI`, `__glSpanMemPutRGBA`, `__glSpanMemPutRGB`, `__glSpanMemPutL`, `__glSpanMemPutLA`, `__glSpanMemPutI`


### `soft` (software renderer)

the software renderer accumulation source unit: accumulation buffer operations.

`Load`, `Accumulate`, `Mult`, `Add`, `Return`, `Clear`, `Pick`, `__glInitAccum64`, `__glim_Accum`

the software renderer alpha test source unit: alpha test validation.

`__glValidateAlphaTest`

the software renderer asynchronous source unit: asynchronous markers and polling (SGIX async).

`__glInitAsyncState`, `__glFreeAsyncState`, `__glim_GenAsyncMarkersSGIX`, `__glim_IsAsyncMarkerSGIX`, `__glim_AsyncMarkerSGIX`, `__glim_DeleteAsyncMarkersSGIX`, `__glim_FinishAsyncSGIX`, `__glFreeAsyncMarker`, `__glDisposeAsyncMarker`

the software renderer attribute state source unit (part 1): attribute state setters and the attribute stack.

`__glim_AlphaFunc`, `__glim_BlendFunc`, `__glim_BlendEquationEXT`, `__glim_ClearAccum`, `__glim_ClearColor`, `__glim_ClearDepth`, `__glim_ClearIndex`, `__glim_ClearStencil`, `__glim_ColorMask`, `__glim_ColorMaterial`, `__glim_CullFace`, `__glim_DepthFunc`, `__glim_DepthMask`, `__glim_DrawBuffer`, `__glim_Fogfv`, `__glim_Fogf`, `__glim_Fogiv`, `__glim_Fogi`, `__glim_FrontFace`, `__glim_Hint`, `__glim_IndexMask`, `__glTransformLightDirection`, `__glim_Lightfv`, `__glim_Lightf`, `__glim_Lightiv`, `__glim_Lighti`, `__glim_LightModelfv`, `__glim_LightModelf`, `__glim_LightModeliv`, `__glim_LightModeli`, `__glim_LineStipple`, `RoundWidth`, `ClampWidth`, `__glim_LineWidth`, `__glim_LogicOp`, `__glErrorCheckMaterial`, `__glim_Materialfv`, `__glim_Materialf`, `ApplyParameterI`, `__glim_Materialiv`

the software renderer attribute state source unit (part 2): attribute state setters and the attribute stack.

`__glim_Materiali`, `RoundSize`, `ClampSize`, `__glim_PointSize`, `__glim_PolygonMode`, `__glim_PolygonStipple`, `__glim_ShadeModel`, `__glim_StencilMask`, `__glim_StencilFunc`, `__glim_StencilOp`, `__glCopyContext`, `__glim_PushAttrib`, `__glim_PopAttrib`, `__glim_Enable`, `__glim_Disable`, `__glim_IsEnabled`, `__glim_BlendColorEXT`, `__glim_PolygonOffsetEXT`, `__glim_PolygonOffset`, `__glFreeAttributeState`, `__glim_EnableClientState`, `__glim_DisableClientState`, `__glim_PushClientAttrib`, `__glim_PopClientAttrib`

the software renderer bitmap drawing source unit: bitmap drawing.

`__glDrawBitmap`, `__glFastDrawBitmap`, `__glRenderBitmap`

the software renderer bitmap source unit: bitmap rendering.

`__glim_Bitmap`

the software renderer blending source unit (part 1): blending.

`__glDoBlendAdd`, `__glDoBlendMin`, `__glDoBlendMax`, `__glDoBlendSubtract`, `__glDoBlendReverseSubtract`, `__glDoBlendAlphaMin`, `__glDoBlendAlphaMax`, `__glDoBlendLogicOp`, `__glDoBlendSourceZERO`, `__glDoBlendDestZERO`, `__glDoBlendSourceONE`, `__glDoBlendDestONE`, `__glDoBlendDestSC`, `__glDoBlendDestMSC`, `__glDoBlendSourceDC`, `__glDoBlendSourceMDC`, `__glDoBlendSourceSA`, `__glDoBlendDestSA`, `__glDoBlendSourceMSA`, `__glDoBlendDestMSA`, `__glDoBlendSourceDA`, `__glDoBlendDestDA`, `__glDoBlendSourceMDA`, `__glDoBlendDestMDA`, `__glDoBlendSourceSAT`, `__glDoBlendSourceCC`, `__glDoBlendDestCC`, `__glDoBlendSourceCA`, `__glDoBlendDestCA`, `__glDoBlendSourceMCC`, `__glDoBlendDestMCC`, `__glDoBlendSourceMCA`, `__glDoBlendDestMCA`, `Nop`, `__glDoNoFetchBlend`, `__glDoFetchBlend`, `__glDoBlend`, `__glDoBlendZeroClamp`, `__glDoBlendNoClamp`, `__glDoBlend_SA_ZERO`

the software renderer blending source unit (part 2): blending.

`__glDoBlend_SA_ONE`, `__glDoBlend_SA_MSA`, `__glDoBlend_MSA_SA`, `__glGenericPickBlendProcs`, `__glBlendSpan`, `__glBlendSpan_SA_MSA`, `__glBlendSpan_MSA_SA`, `__glBlendSpan_SA_ZERO`, `__glBlendSpan_SA_ONE`, `__glBlendStippledSpan`

the software renderer buffer source unit: frame buffer creation, resize and make-current.

`__glInitBuffer`, `__glMakeCurrentBuffer`, `__glLoseCurrentBuffer`, `__glResizeBuffer`, `__glMoveBuffer`, `__glFreeBuffer`

the software renderer immediate-mode API source unit: colour entry points (glColor family).

`__glim_Color3ub`, `__glim_Color3ubv`, `__glim_Color3b`, `__glim_Color3bv`, `__glim_Color3d`, `__glim_Color3dv`, `__glim_Color3i`, `__glim_Color3iv`, `__glim_Color3ui`, `__glim_Color3uiv`, `__glim_Color3s`, `__glim_Color3sv`, `__glim_Color3us`, `__glim_Color3usv`, `__glim_Color4ub`, `__glim_Color4ubv`, `__glim_Color4b`, `__glim_Color4bv`, `__glim_Color4d`, `__glim_Color4dv`, `__glim_Color4i`, `__glim_Color4iv`, `__glim_Color4ui`, `__glim_Color4uiv`, `__glim_Color4s`, `__glim_Color4sv`, `__glim_Color4us`, `__glim_Color4usv`, `__glim_Indexd`, `__glim_Indexf`, `__glim_Indexi`, `__glim_Indexs`, `__glim_Indexdv`, `__glim_Indexfv`, `__glim_Indexiv`, `__glim_Indexsv`, `__glim_Indexub`, `__glim_Indexubv`

the software renderer clear source unit: glClear.

`__glim_Clear`

the software renderer clipping source unit: clip-plane and vertex clipping.

`Clip`, `ClipC`, `ClipI`, `ClipBC`, `ClipBI`, `ClipT`, `ClipIT`, `ClipBIT`, `ClipCT`, `ClipBCT`, `ClipF`, `ClipIF`, `ClipBIF`, `ClipCF`, `ClipBCF`, `ClipFT`, `ClipIFT`, `ClipBIFT`, `ClipCFT`, `ClipBCFT`, `__glGenericPickParameterClipProcs`

the software renderer color-table source unit: colour tables.

`__glCheckColorTableArgs`, `__glCheckColorSubTableArgs`, `__glLoadColorTableParams`, `__glColorTableSGI`, `__glim_ColorTableSGI`, `__glColorSubTable`, `__glim_ColorSubTable`, `__glim_GetColorTableSGI`, `__glColorTableModifiers`, `__glColorTableParameterv`, `__glim_ColorTableParameterivSGI`, `__glim_ColorTableParameterfvSGI`, `__glGetColorTableParameterv`, `__glim_GetColorTableParameterivSGI`, `__glim_GetColorTableParameterfvSGI`, `__glim_CopyColorTableSGI`, `__glim_CopyColorSubTable`, `__glInitColorTables`, `__glFreeColorTables`, `__glCopyColorTableScaleBias`

the software renderer context source unit: context creation, validation and state defaults.

`__glDispatchExec`, `__glBeginDispatchOverride`, `__glEndDispatchOverride`, `__glEarlyInitContext`, `__glContextSetColorScales`, `__glSoftResetContext`, `__glDestroyContext`, `__glDestroySoftContext`, `__glFreePrivate`, `__glim_RenderMode`, `__glChangeWindowSize`, `__glChangeReadWindowSize`, `__glFindWindowSize`, `FillBufferInfo`, `__glFreeBufData`

the software renderer convolution source unit: convolution filters.

`__glCheckConvolutionFilterArgs`, `__glim_ConvolutionFilter1DEXT`, `__glim_ConvolutionFilter2DEXT`, `__glim_SeparableFilter2DEXT`, `__glim_CopyConvolutionFilter1DEXT`, `__glim_CopyConvolutionFilter2DEXT`, `__glim_GetConvolutionFilterEXT`, `__glim_GetSeparableFilterEXT`, `__GLconvolutionParameter`, `__glim_ConvolutionParameteriEXT`, `__glim_ConvolutionParameterivEXT`, `__glim_ConvolutionParameterfEXT`, `__glim_ConvolutionParameterfvEXT`, `__GLgetConvolutionParameter`, `__glim_GetConvolutionParameterivEXT`, `__glim_GetConvolutionParameterfvEXT`, `__glConvolutionParameterfvEXT_size`, `__glConvolutionParameterivEXT_size`, `__glCopyConvolutionPixelModeState`

the software renderer deformation source unit: deformation maps.

`__glFillDeformationMap3f`, `__glFillDeformationMap3d`, `__glCheckMap3Params`

the software renderer depth operations source unit: depth buffer fetch, store and test.

`FetchNon32`, `Fetch32`, `StoreNEVER`, `StoreLESS`, `StoreLESS_s`, `StoreEQUAL`, `StoreLEQUAL`, `StoreLEQUAL_s`, `StoreGREATER`, `StoreGREATER_s`, `StoreNOTEQUAL`, `StoreGEQUAL`, `StoreGEQUAL_s`, `StoreALWAYS`, `StoreLESS_W`, `StoreLESS_W_s`, `StoreEQUAL_W`, `StoreLEQUAL_W`, `StoreLEQUAL_W_s`, `StoreGREATER_W`, `StoreGREATER_W_s`, `StoreNOTEQUAL_W`, `StoreGEQUAL_W`, `StoreGEQUAL_W_s`, `StoreALWAYS_W`, `Clear`, `Fix_zbuffer`, `Pick`, `Resize`, `__glInitDepth24`, `__glInitDepth32`, `__glInitDepth`

the software renderer display-list source unit: display-list management.

`__glGenericFreeDlist`, `__glGenericExecuteDlist`, `__glGenericAllocDlist`, `__glle_Nop`, `__glGenericDlistCompiler`, `__glNopFreeDlist`, `__glNopExecuteDlist`, `__glNopAllocDlist`, `__glNopDlistCompiler`

the software renderer evaluator source unit (part 1): evaluators (glMap, glEvalMesh).

`__glEvalComputeK`, `__glInitEvaluatorState`, `__glFreeEvaluatorState`, `__glim_Map1d`, `__glim_Map1f`, `__glim_Map2d`, `__glim_Map2f`, `__glim_EvalCoord1d`, `__glim_EvalCoord1dv`, `__glim_EvalCoord1f`, `__glim_EvalCoord1fv`, `__glim_EvalCoord2d`, `__glim_EvalCoord2dv`, `__glim_EvalCoord2f`, `__glim_EvalCoord2fv`, `__glim_MapGrid1d`, `__glim_MapGrid1f`, `__glim_MapGrid2d`, `__glim_MapGrid2f`, `__glim_EvalMesh1`, `__glim_EvalPoint1`, `__glim_EvalMesh2`, `__glim_EvalPoint2`, `__glFillMap1f`, `__glFillMap1d`, `__glMap1_size`, `__glFillMap2f`, `__glFillMap2d`, `__glMap2_size`, `__glSetUpMap1`, `__glSetUpMap2`, `PreEvaluate`, `PreEvaluateWithDeriv`, `DoDomain1`, `DoEvalCoord1`, `__glDoEvalCoord1`, `ComputeFirstPartials`, `ComputeNormal2`, `DoDomain2`, `DoDomain2WithDerivs`

the software renderer evaluator source unit (part 2): evaluators (glMap, glEvalMesh).

`DoEvalCoord2`, `__glDoEvalCoord2`, `__glEvalMesh1Line`, `__glEvalMesh1Point`, `sendChange`, `__glEvalMesh2Fill`, `__glEvalMesh2Point`, `__glEvalMesh2Line`, `NurbsKnots1Common`, `NurbsKnots2Common`, `__glim_NurbsKnots1dSGIX`, `__glim_NurbsKnots1fSGIX`, `__glim_NurbsKnots1iSGIX`, `__glim_NurbsKnots2dSGIX`, `__glim_NurbsKnots2fSGIX`, `__glim_NurbsKnots2iSGIX`

the software renderer feedback source unit: feedback mode.

`__glim_FeedbackBuffer`, `__glim_PassThrough`, `__glFeedbackTag`, `feedback`, `__glFeedbackCopyPixels`, `__glFeedbackDrawPixels`, `__glFeedbackBitmap`, `__glFeedbackPoint`, `__glFeedbackLine`, `__glFeedbackTriangle`

the software renderer finish source unit: glFinish and glFlush.

`__glim_Finish`, `__glim_Flush`

the software renderer fog source unit: fog.

`__glFogSpan`, `__glFogStippledSpan`, `__glFogSpanSlow`, `__glFogStippledSpanSlow`, `__glFogFragmentSlow`, `__glFogVertex`, `__glFogVertexLinear`, `__glFogColorSlow`

the software renderer state query source unit: state queries (glGet family).

`__glim_GetTexEnvfv`, `__glim_GetTexEnviv`, `__glim_GetTexGenfv`, `__glim_GetTexGendv`, `__glim_GetTexGeniv`, `__glim_GetTexParameterfv`, `__glim_GetTexParameteriv`, `__glim_GetTexLevelParameterfv`, `__glim_GetTexLevelParameteriv`, `__glim_GetTexFilterFuncSGIS`, `__glim_GetClipPlane`, `__glInitImagePack`, `__glim_GetTexImage`, `__glim_GetPolygonStipple`, `__glim_GetLightfv`, `__glim_GetLightiv`, `__glim_GetMaterialfv`, `__glim_GetMaterialiv`, `__glim_GetMapfv`, `__glim_GetMapdv`, `__glim_GetMapiv`, `__glim_GetPixelMapfv`, `__glim_GetPixelMapuiv`, `__glim_GetPixelMapusv`, `__glDoGet`, `__glim_GetDoublev`, `__glim_GetFloatv`, `__glim_GetIntegerv`, `__glim_GetBooleanv`, `__glim_GetError`, `__glim_GetString`, `__glim_GetPointervEXT`

the software renderer histogram source unit: histogram and min-max.

`__glProcessHistogramArguments`, `__glInitHistogramStore`, `__glInitHistogramUnpack`, `__glim_ResetHistogramEXT`, `__glim_HistogramEXT`, `__glCheckGetArguments`, `__glSetValue`, `__glResetArray`, `__glim_GetHistogramEXT`, `__glGetHistogramParameters`, `__glim_GetHistogramParameterivEXT`, `__glim_GetHistogramParameterfvEXT`, `__glProcessMinmaxArguments`, `__glResetMinmax`, `__glim_MinmaxEXT`, `__glim_ResetMinmaxEXT`, `__glim_GetMinmaxEXT`, `__glGetMinmaxParameters`, `__glim_GetMinmaxParameterivEXT`, `__glim_GetMinmaxParameterfvEXT`

the software renderer image source unit: image transfer set-up.

`__glConvertStipple`, `__glImageSize`, `__glImageSize3D`, `__glFillImage3D`, `__glFillImage`, `__glEmptyImage`

the software renderer lighting source unit: lighting.

`__glScaleColorf`, `__glClampAndScaleColorf`, `__glClampColorf`, `__glScaleColori`, `__glClampAndScaleColori`, `__glClampColori`, `__glUnScaleColorf`, `__glUnScaleColori`, `__glClampRGBColor`, `vvec`, `__glCalcRGBColor`, `__glFogRGBColor`, `__glFogLitRGBColor`, `__glCalcCIColor`, `__glFastCalcCIColor`, `__glFogCIColor`, `__glFogLitCIColor`, `ChangeMaterialEmission`, `ChangeMaterialSpecular`, `ChangeMaterialAmbient`, `ChangeMaterialDiffuse`, `ChangeMaterialAmbientAndDiffuse`, `__glChangeOneMaterialColor`, `__glChangeBothMaterialColors`, `ComputeMaterialState`, `ComputeLightState`, `ComputeLightProcs`, `ComputeLightMaterialState`, `__glValidateMaterial`, `__glValidateLighting`, `__glGenericPickColorMaterialProcs`

the software renderer line clipping source unit: line clipping.

`__glClipLine`, `__glFastClipSmoothLine`, `__glFastClipFlatLine`

the software renderer line drawing source unit: line drawing.

`__glInitLineData`, `__glRenderAliasLine`, `__glRenderFlatFogLine`, `__glInitAALineData`, `__glRenderAntiAliasLine`, `__glPolygonOffsetLine`

the software renderer line finish source unit: line primitive assembly.

`__glFirstLinesVertex`, `__glBeginLines`, `__glOtherLStripVertex`, `__glSecondLStripVertex`, `__glFirstLStripVertex`, `__glBeginLStrip`, `FirstLLoopVertex`, `__glEndLLoop`, `__glBeginLLoop`

the software renderer line span source unit: line span processing.

`__glProcessLine`, `__glProcessLine3NW`, `__glWideLineRep`, `__glWideStippleLineRep`, `__glDrawBothLine`, `__glDrawBothStippledLine`, `__glScissorLine`, `__glScissorStippledLine`, `__glStippleLine`, `__glStencilTestLine`, `__glStencilTestStippledLine`, `__glDepthTestStippledLine`, `__glDepthTestStencilLine`, `__glDepthTestStencilStippledLine`, `__glDepthPassLine`, `__glDepthPassStippledLine`, `__glStoreLine`, `__glStoreStippledLine`, `__glAntiAliasLine`, `__glAntiAliasStippledLine`

the software renderer list compilation source unit (part 1): display-list compile and execute forms.

`__gllc_Bitmap`, `__glle_Bitmap`, `__gllei_PolygonStipple`, `__gllc_PolygonStipple`, `__glle_PolygonStipple`, `__gllc_Map1f`, `__glle_Map1`, `__gllc_Map1d`, `__gllc_Map2f`, `__glle_Map2`, `__gllc_Map2d`, `__gllc_DeformationMap3fSGIX`, `__glle_DeformationMap3SGIX`, `__gllc_DeformationMap3dSGIX`, `__glle_DrawPixels`, `__gllc_DrawPixels`, `__glle_TexImage1D`, `__glle_TexImage2D`, `__gllc_TexImage1D`, `__gllc_TexImage2D`, `__glle_TexImage3DEXT`, `__gllc_TexImage3DEXT`, `__glle_TexSubImage1DEXT`, `__gllc_TexSubImage1DEXT`, `__glle_TexSubImage2DEXT`, `__gllc_TexSubImage2DEXT`, `__glle_TexSubImage3DEXT`, `__gllc_TexSubImage3DEXT`, `__glle_ConvolutionFilter1DEXT`, `__gllc_ConvolutionFilter1DEXT`, `__glle_ConvolutionFilter2DEXT`, `__gllc_ConvolutionFilter2DEXT`, `__glle_SeparableFilter2DEXT`, `__gllc_SeparableFilter2DEXT`, `__glle_TexImage4DSGIS`, `__gllc_TexImage4DSGIS`, `__glle_TexSubImage4DSGIS`, `__gllc_TexSubImage4DSGIS`, `__glle_Disable`, `__gllc_Disable`

the software renderer list compilation source unit (part 2): display-list compile and execute forms.

`__glle_Enable`, `__gllc_Enable`, `__glle_DrawArraysEXT`, `__glle_DrawArrays`, `__glle_DrawElements`, `__glle_DrawRangeElements`, `__glle_ArrayElementEXT`, `__glle_ColorTableSGI`, `__gllc_ColorTableSGI`, `__glle_ColorSubTable`, `__gllc_ColorSubTable`, `__gllc_DrawArraysEXT`, `__gllc_DrawElements`, `__gllc_DrawRangeElements`

the software renderer math source unit: matrix maths.

`__glCopyMatrix`, `__glMakeIdentity`, `__glMultMatrix`, `__glInvertTransposeMatrix`, `__glFloorLog2`

the software renderer memory management source unit: arena memory management.

`NewBlock`, `DeleteBlock`, `__glNewArena`, `__glDeleteArena`, `__glArenaAlloc`, `__glArenaFreeAll`

the software renderer name tables source unit: name tables (selection, textures, lists).

`__glNamesNewArray`, `freeLeafData`, `freeLeaf`, `freeBranch`, `__glNamesFreeTree`, `__glNamesFreeArray`, `findLeaf`, `copyLeafInfo`, `fixMemoryProblem`, `computeMax`, `pushMaxVal`, `allocLeafData`, `reallocLeafData`, `allocLeaf`, `allocBranch`, `deleteChild`, `addChild`, `splitParent`, `buildParent`, `insertLeaf`, `deleteLeaf`, `resizeLeaf`, `prevLeaf`, `firstLeaf`, `nextLeaf`, `mergeLeaves`, `mergeLeaf`, `__glNamesNewData`, `__glNamesLockData`, `__glNamesLockDataList`, `__glNamesUnlockData`, `__glNamesUnlockDataList`, `__glNamesGenRange`, `__glNamesDeleteRange`, `__glNamesIsName`, `__glNamesGenNames`, `__glNamesDeleteNames`

the software renderer normal-mode API source unit: normal entry points (glNormal family).

`__glim_Normal3d`, `__glim_Normal3dv`, `__glim_Normal3b`, `__glim_Normal3bv`, `__glim_Normal3s`, `__glim_Normal3sv`, `__glim_Normal3i`, `__glim_Normal3iv`

the software renderer picking source unit: rendering procedure selection.

`__glGenericPickSpanProcs`, `__glGenericPickPointProcs`, `__glGenericPickLineProcs`, `__glGenericPickTriangleProcs`, `__glGenericPickRenderBitmapProcs`, `__glGenericPickClipProcs`, `__glGenericPickTextureProcs`, `__glGenericPickFogProcs`, `__glGenericPickBufferProcs`, `__glGenericPickPixelProcs`, `__glGenericPickTransformProcs`, `__glGenericPickDepthProcs`, `__glGenericValidate`, `__glGenericModeFlags`, `__glGenericPickAllProcs`

the software renderer antialiased point source unit: antialiased points.

`__glBuildAntiAliasIndex`, `Coverage`, `__glRenderAntiAliasedRGBPoint`, `__glRenderAntiAliasedCIPoint`

the software renderer point drawing source unit: point drawing.

`__glRenderAliasedPoint1_NoTex`, `__glRenderAliasedPoint1`, `__glRenderFlatFogPoint`, `__glRenderAliasedPointN`, `__glPolygonOffsetPoint`

the software renderer point finish source unit: point primitive assembly.

`__glBeginPoints`, `__glEndPoints`

the software renderer antialiased polygon source unit: antialiased polygons.

`FindLineEquation`, `FindPlaneEquation`, `FindP`, `ComputeCoverageStuff`, `Coverage`, `FillAASubTriangle`, `SetInitialParameters`, `__glFillAntiAliasedTriangle`

the software renderer polygon clipping source unit: polygon clipping.

`clipToPlane`, `clipToPlaneEye`, `__glDoPolygonClip`, `__glClipPolygon`, `__glClipTriangle`

the software renderer polygon drawing source unit: polygon drawing.

`FillSubTriangle`, `__glSnapXLeft`, `__glSnapXRight`, `__glComputePolygonOffset`, `__glPolygonOffsetForLineAndPoint`, `__glPolygonOffsetZ`, `SetInitialParameters`, `__glFillTriangle`, `__glFillFlatFogTriangle`

the software renderer polygon finish source unit: triangle and polygon primitive assembly.

`__glMatValidateVbuf0N`, `__glMatValidateVbuf0V1`, `__glMatValidateV1`, `__glMatValidateV1V2`, `__glMatValidateV1V2V3`, `__glMatValidateV2V3`, `OtherTFanVertex`, `SecondTFanVertex`, `FirstTFanVertex`, `__glBeginTFan`, `SecondTStripVertex`, `FirstTStripVertex`, `__glBeginTStrip`, `ThirdTrianglesVertex`, `SecondTrianglesVertex`, `FirstTrianglesVertex`, `__glBeginTriangles`, `FourthQStripVertex`, `ThirdQStripVertex`, `SecondQStripVertex`, `FirstQStripVertex`, `__glBeginQStrip`, `ThirdQuadsVertex`, `SecondQuadsVertex`, `__glFirstQuadsVertex`, `__glBeginQuads`, `PolygonVertex`, `__glEndPolygon`, `__glBeginPolygon`

the software renderer polygon mode source unit: polygon mode selection.

`__glRenderTriangle`, `__glDontRenderTriangle`

the software renderer polygon span source unit: polygon span processing.

`__glProcessSpan`, `__glProcessReplicateSpan`, `__glClipSpan`, `__glStippleSpan`, `__glStippleStippledSpan`, `__glAlphaTestSpan`, `__glAlphaTestStippledSpan`, `__glStencilTestStippledSpan`, `__glDepthTestOffsetSpan`, `__glDepthTestStippledOffsetSpan`, `__glDepthTestStencilOffsetSpan`, `__glDepthTestStencilStippledOffsetSpan`, `__glDepthPassSpan`, `__glDepthPassStippledSpan`, `__glShadeCISpan`, `__glShadeRGBASpan`, `__glFlatCISpan`, `__glFlatRGBASpan`, `__glTextureSpan`, `__glTextureStippledSpan`, `__glDitherCISpan`, `__glDitherCIStippledSpan`, `__glDitherRGBASpan`, `__glDitherRGBAStippledSpan`, `__glRoundCISpan`, `__glRoundCIStippledSpan`, `__glRoundRGBASpan`, `__glRoundRGBAStippledSpan`, `__glLogicOpSpan`, `__glLogicOpStippledSpan`, `__glMaskRGBASpan`, `__glMaskCISpan`

the software renderer primitive source unit: primitive begin and end.

`__glim_Begin`, `__glim_End`, `__glNop`, `__glEndPrim`, `__glim_UnimplementedExtension`

the software renderer raster API source unit: raster-position entry points.

`__glim_RasterPos2dv`, `__glim_RasterPos2fv`, `__glim_RasterPos2d`, `__glim_RasterPos2f`, `__glim_RasterPos2i`, `__glim_RasterPos2iv`, `__glim_RasterPos2s`, `__glim_RasterPos2sv`, `__glim_RasterPos3dv`, `__glim_RasterPos3fv`, `__glim_RasterPos3d`, `__glim_RasterPos3f`, `__glim_RasterPos3i`, `__glim_RasterPos3iv`, `__glim_RasterPos3s`, `__glim_RasterPos3sv`, `__glim_RasterPos4dv`, `__glim_RasterPos4fv`, `__glim_RasterPos4d`, `__glim_RasterPos4f`, `__glim_RasterPos4i`, `__glim_RasterPos4iv`, `__glim_RasterPos4s`, `__glim_RasterPos4sv`

the software renderer raster position source unit: raster position.

`__glRasterPos2`, `__glRasterPos3`, `__glRasterPos4`

the software renderer rectangle source unit: rectangles.

`__glim_Rectd`, `__glim_Rectdv`, `__glim_Rectf`, `__glim_Rectfv`, `__glim_Recti`, `__glim_Rectiv`, `__glim_Rects`, `__glim_Rectsv`, `__glRect`

the software renderer selection source unit: selection-mode vertex entry points (__glTRim_*) and vertex-buffer overflow handling.

`__glim_SelectBuffer`, `__glim_InitNames`, `__glim_LoadName`, `__glim_PopName`, `__glim_PushName`, `__glSelectHit`, `__glSelectTriangle`, `__glSelectLine`, `__glSelectPoint`

the software renderer size source unit: parameter-count tables for glFog, glLight and similar.

`__glFogiv_size`, `__glFogfv_size`, `__glLightfv_size`, `__glLightiv_size`, `__glLightModelfv_size`, `__glLightModeliv_size`, `__glMaterialfv_size`, `__glMaterialiv_size`, `__glColorTableParameterfvSGI_size`, `__glColorTableParameterivSGI_size`, `__glSpriteParameterfvSGIX_size`, `__glSpriteParameterivSGIX_size`, `__glPointParameterfvSGIS_size`, `__glPixelTransformParameterfvSGI_size`, `__glPixelTransformParameterivSGI_size`, `__glPixelTexGenParameterivSGIS_size`, `__glPixelTexGenParameterfvSGIS_size`, `__glFragmentMaterialfvSGIX_size`, `__glFragmentMaterialivSGIX_size`, `__glFragmentLightfvSGIX_size`, `__glFragmentLightivSGIX_size`, `__glFragmentLightModelfvSGIX_size`, `__glFragmentLightModelivSGIX_size`, `__glColorSubTable_size`

the software renderer slow span source unit: slow-path span read and write.

`__glReadSpan`, `__glReturnSpan`, `__glFetchSpan`

the software renderer specular cache source unit: specular lookup-table cache.

`__glInitLUTCache`, `__glFreeLUTCache`, `findEntry`, `__glCreateSpecLUT`, `__glFreeSpecLUT`

the software renderer stencil operations source unit: stencil operations.

`Fetch`, `Store`, `TestFunc`, `FailOp`, `PassDepthFailOp`, `DepthPassOp`, `Clear`, `buildOpTable`, `FreeStencilBuf`, `__glValidateStencil`, `Pick`, `__glInitStencil8`

the software renderer store source unit: span store dispatch.

`__glDoStore_ASD`, `__glDoStore_AS`, `__glDoStore_AD`, `__glDoStore_SD`, `__glDoStore_A`, `__glDoStore_S`, `__glDoStore_D`, `__glDoStore`, `__glDoNullStore`, `__glDoDoubleStore`, `__glGenericPickStoreProcs`

the software renderer stub source unit (part 1): extension entry-point stubs.

`glApplyTextureSGIX`, `glBinormal3bSGIX`, `glBinormal3bvSGIX`, `glBinormal3dSGIX`, `glBinormal3dvSGIX`, `glBinormal3fSGIX`, `glBinormal3fvSGIX`, `glBinormal3iSGIX`, `glBinormal3ivSGIX`, `glBinormal3sSGIX`, `glBinormal3svSGIX`, `glFogLayersSGIX`, `glFragmentLightSpaceSGIX`, `glGetPixelTransformParameterfvSGI`, `glGetPixelTransformParameterivSGI`, `glMultiTexCoord1dSGIS`, `glMultiTexCoord1fSGIS`, `glMultiTexCoord1iSGIS`, `glMultiTexCoord1sSGIS`, `glMultiTexCoord2dSGIS`, `glMultiTexCoord2fSGIS`, `glMultiTexCoord2iSGIS`, `glMultiTexCoord2sSGIS`, `glMultiTexCoord3dSGIS`, `glMultiTexCoord3fSGIS`, `glMultiTexCoord3iSGIS`, `glMultiTexCoord3sSGIS`, `glMultiTexCoord4dSGIS`, `glMultiTexCoord4fSGIS`, `glMultiTexCoord4iSGIS`, `glMultiTexCoord4sSGIS`, `glMultiTexCoordPointerSGIS`, `glNurbsKnots1dSGIX`, `glNurbsKnots1fSGIX`, `glNurbsKnots2dSGIX`, `glNurbsKnots2fSGIX`, `glPixelTransformParameterfSGI`, `glPixelTransformParameterfvSGI`, `glPixelTransformParameteriSGI`, `glPixelTransformParameterivSGI`

the software renderer stub source unit (part 2): extension entry-point stubs.

`glPixelTransformSGI`, `glSelectTextureSGIS`, `glSubdivPatchParameterfSGIX`, `glSubdivPatchParameteriSGIX`, `glSubdivPatchSGIX`, `glTangent3bSGIX`, `glTangent3bvSGIX`, `glTangent3dSGIX`, `glTangent3dvSGIX`, `glTangent3fSGIX`, `glTangent3fvSGIX`, `glTangent3iSGIX`, `glTangent3ivSGIX`, `glTangent3sSGIX`, `glTangent3svSGIX`, `glTextureLightSGIX`, `glTextureMaterialSGIX`

the software renderer subdivision source unit: subdivision surfaces (SGIX).

`__glim_SubdivPatchParameterfSGIX`, `__glim_SubdivPatchParameteriSGIX`, `__glim_SubdivPatchSGIX`, `CopyVertex`, `CopyRVertex`, `NormalizedCrossProduct`, `SubdivSmoothEdge`, `SubdivRegCreaseEdge`, `SubdivIRRegCreaseEdge`, `SubdivEdge`, `PrepSmoothVertex`, `UpdateSmoothVertex`, `UpdateConicalVertex`, `PrepCreaseVertex`, `UpdateCreaseVertex`, `UpdateVertex`, `SmoothPosition`, `CreasePosition`, `FinalPosition`, `SmoothNormal`, `CreaseNormal`, `CornerNormal`, `ComputeNormal`, `InitSubdivision`, `DoRow`, `DoNormal`, `DoInterpolate`, `DoInterpolateNormal`, `DoRender`

the software renderer texture API source unit: texture-coordinate entry points.

`__glim_TexCoord1d`, `__glim_TexCoord1f`, `__glim_TexCoord1i`, `__glim_TexCoord1s`, `__glim_TexCoord1dv`, `__glim_TexCoord1fv`, `__glim_TexCoord1iv`, `__glim_TexCoord1sv`, `__glim_TexCoord2d`, `__glim_TexCoord2i`, `__glim_TexCoord2s`, `__glim_TexCoord2dv`, `__glim_TexCoord2iv`, `__glim_TexCoord2sv`, `__glim_TexCoord3d`, `__glim_TexCoord3f`, `__glim_TexCoord3i`, `__glim_TexCoord3s`, `__glim_TexCoord3dv`, `__glim_TexCoord3fv`, `__glim_TexCoord3iv`, `__glim_TexCoord3sv`, `__glim_TexCoord4d`, `__glim_TexCoord4f`, `__glim_TexCoord4i`, `__glim_TexCoord4s`, `__glim_TexCoord4dv`, `__glim_TexCoord4fv`, `__glim_TexCoord4iv`, `__glim_TexCoord4sv`

the software renderer source unit 1: optimised texture spans.

`__glTextureRGB_F_F_Span`, `__glTextureRGB_F_F_StippledSpan`, `__glTextureRGB_F_LML_Span`, `__glTextureRGB_F_LML_StippledSpan`, `__glTextureRGB_L_NML_Span`, `__glTextureRGB_L_NML_StippledSpan`, `__glTextureRGB_L_LML_Span`, `__glTextureRGB_L_LML_StippledSpan`, `__glTextureRGB_N_N_Span`, `__glTextureRGB_N_N_StippledSpan`, `__glTextureRGB_N_NMN_Span`, `__glTextureRGB_N_NMN_StippledSpan`

the software renderer texture source unit (part 1): texture objects, state and validation.

`__glLookUpTextureParams`, `__glLookUpTextureTexobjs`, `__glLookUpTexture`, `__glLookUpTextureObject`, `Clampf`, `__glCopyTexImage`, `__glReadTexImage`, `__glTexInitTextureObject`, `__glShareTextureObjects`, `__glEarlyInitTextureState`, `InitTextureMachine`, `__glInitTextureState`, `__glFreeTextureState`, `__glim_TexGenfv`, `__glim_TexGenf`, `__glim_TexGendv`, `__glim_TexGend`, `__glim_TexGeniv`, `__glim_TexGeni`, `__glTexGendv_size`, `__glTexGenfv_size`, `__glTexGeniv_size`, `__glim_TexParameterfv`, `__glim_TexParameterf`, `__glim_TexParameteriv`, `__glim_TexParameteri`, `__glTexParameterfv_size`, `__glTexParameteriv_size`, `__glim_TexEnvfv`, `__glim_TexEnvf`, `__glim_TexEnviv`, `__glim_TexEnvi`, `__glTexEnvfv_size`, `__glTexEnviv_size`, `__glim_TextureColorMaskSGIS`, `__glExtractTexelL`, `__glExtractTexelLA`, `__glExtractTexelRGB`, `__glExtractTexelRGBA`, `__glExtractTexelA`

the software renderer texture source unit (part 2): texture objects, state and validation.

`__glExtractTexelI`, `__glExtractTexelRGB8`, `__glExtractTexelRGBA8`, `__glExtractTexelL_B`, `__glExtractTexelLA_B`, `__glExtractTexelRGB_B`, `__glExtractTexelRGBA_B`, `__glExtractTexelA_B`, `__glExtractTexelI_B`, `__glExtractTexelRGB8_B`, `__glExtractTexelRGBA8_B`, `__glExtractTexel3L`, `__glExtractTexel3LA`, `__glExtractTexel3RGB`, `__glExtractTexel3RGBA`, `__glExtractTexel3A`, `__glExtractTexel3I`, `__glExtractTexel3RGB8`, `__glExtractTexel3RGBA8`, `__glExtractTexel3L_B`, `__glExtractTexel3LA_B`, `__glExtractTexel3RGB_B`, `__glExtractTexel3RGBA_B`, `__glExtractTexel3A_B`, `__glExtractTexel3I_B`, `__glExtractTexel3RGB8_B`, `__glExtractTexel3RGBA8_B`, `IsTextureConsistent`, `__glIsTextureConsistent`, `CheckTexImageArgs`, `ComputeTexLevelSize`, `__glTexCreateProxyLevel`, `__glTexCreateLevel`, `__glInitTexImageStore`, `__glInitTexImageGet`, `__glInitTexSourceUnpack`, `__glInitTexDestPack`, `IsLegalRange`, `__glCheckTexImage1DArgs`, `__glCheckTexImage2DArgs`

the software renderer texture source unit (part 3): texture objects, state and validation.

`__glCheckTexImage3DArgs`, `__glCheckCopyTexImageArgs`, `__glim_TexImage1D`, `__gllei_TexImage1D`, `__glim_TexImage2D`, `__gllei_TexImage2D`, `__glim_TexImage3DEXT`, `__gllei_TexImage3DEXT`, `__glLoadDefaultFilterFuncSGIS`, `__glim_TexFilterFuncSGIS`, `__glNearestFilter1`, `__glNearestFilter2`, `__glNearestFilter3`, `__glLinearFilter1`, `__glLinearFilter2`, `__glLinearFilter3`, `__glFilter4Func`, `__glLinearFilter`, `__glNearestFilter`, `__glNMNFilter`, `__glLMNFilter`, `__glNMLFilter`, `__glLMLFilter`, `__glFilter4Func2`, `__glFilter4Func1`, `__glTextureModulateL`, `__glTextureModulateLA`, `__glTextureModulateRGB`, `__glTextureModulateRGBA`, `__glTextureModulateA`, `__glTextureModulateI`, `__glTextureDecalRGB`, `__glTextureDecalRGBA`, `__glTextureBlendL`, `__glTextureBlendLA`, `__glTextureBlendRGB`, `__glTextureBlendRGBA`, `__glTextureBlendA`, `__glTextureBlendI`, `__glTextureReplaceL`

the software renderer texture source unit (part 4): texture objects, state and validation.

`__glTextureReplaceLA`, `__glTextureReplaceRGB`, `__glTextureReplaceRGBA`, `__glTextureReplaceA`, `__glTextureReplaceI`, `__GL_TEXENV_CLAMP`, `__glTextureSBModulateL`, `__glTextureSBModulateLA`, `__glTextureSBModulateRGB`, `__glTextureSBModulateRGBA`, `__glTextureSBModulateA`, `__glTextureSBModulateI`, `__glTextureSBDecalRGB`, `__glTextureSBDecalRGBA`, `__glTextureSBBlendL`, `__glTextureSBBlendLA`, `__glTextureSBBlendRGB`, `__glTextureSBBlendRGBA`, `__glTextureSBBlendA`, `__glTextureSBBlendI`, `__glTextureSBReplaceL`, `__glTextureSBReplaceLA`, `__glTextureSBReplaceRGB`, `__glTextureSBReplaceRGBA`, `__glTextureSBReplaceA`, `__glTextureSBReplaceI`, `__glTextureCTModulateL`, `__glTextureCTModulateLA`, `__glTextureCTModulateRGB`, `__glTextureCTModulateRGBA`, `__glTextureCTModulateA`, `__glTextureCTModulateI`, `__glTextureCTDecalRGB`, `__glTextureCTDecalRGBA`, `__glTextureCTBlendL`, `__glTextureCTBlendLA`, `__glTextureCTBlendRGB`, `__glTextureCTBlendRGBA`, `__glTextureCTBlendA`, `__glTextureCTBlendI`

the software renderer texture source unit (part 5): texture objects, state and validation.

`__glTextureCTReplaceL`, `__glTextureCTReplaceLA`, `__glTextureCTReplaceRGB`, `__glTextureCTReplaceRGBA`, `__glTextureCTReplaceA`, `__glTextureCTReplaceI`, `__glNopPolygonRho`, `__glComputePolygonRho`, `__glNopLineRho`, `__glComputeLineRho`, `__glFastTextureFragment`, `__glTextureFragment`, `__glMipMapFragment`, `Dot`, `SphereGen`, `__glCalcMixedTexture`, `__glCalcSphereMap`, `__glCalcEyeLinear`, `__glCalcObjectLinear`, `__glCalcTexture`, `CheckTexSubImageArgs`, `__glInitTexSubImageStore`, `CheckTexSubImageRange`, `__glCheckTexSubImage1DArgs`, `__glCheckTexSubImage2DArgs`, `__glCheckTexSubImage3DArgs`, `__glCheckCopyTexSubImageArgs`, `__glim_TexSubImage1DEXT`, `__gllei_TexSubImage1DEXT`, `__glim_TexSubImage2DEXT`, `__gllei_TexSubImage2DEXT`, `__glim_TexSubImage3DEXT`, `__gllei_TexSubImage3DEXT`, `__glEmptyFreeTexObj`, `__glFreeTexObj`, `__glDisposeTexObj`, `__glim_GenTexturesEXT`, `__glim_DeleteTexturesEXT`, `__glBindTexture`, `__glim_BindTextureEXT`

the software renderer texture source unit (part 6): texture objects, state and validation.

`__glim_PrioritizeTexturesEXT`, `IsTextureResident`, `__glim_AreTexturesResidentEXT`, `__glim_IsTextureEXT`, `__glim_CopyTexImage1DEXT`, `__glim_CopyTexImage2DEXT`, `__glim_CopyTexSubImage1DEXT`, `__glim_CopyTexSubImage2DEXT`, `__glim_CopyTexSubImage3DEXT`, `__glim_SelectTextureCoordSetSGIS`

the software renderer vertex API source unit: vertex entry points.

`__glim_EdgeFlag`, `__glim_EdgeFlagv`, `__glim_Vertex2fv`, `__glim_Vertex3fv`, `__glim_Vertex4fv`, `__glim_Vertex2f`, `__glim_Vertex2d`, `__glim_Vertex2dv`, `__glim_Vertex2i`, `__glim_Vertex2iv`, `__glim_Vertex2s`, `__glim_Vertex2sv`, `__glim_Vertex3f`, `__glim_Vertex3d`, `__glim_Vertex3dv`, `__glim_Vertex3i`, `__glim_Vertex3iv`, `__glim_Vertex3s`, `__glim_Vertex3sv`, `__glim_Vertex4f`, `__glim_Vertex4d`, `__glim_Vertex4dv`, `__glim_Vertex4i`, `__glim_Vertex4iv`, `__glim_Vertex4s`, `__glim_Vertex4sv`

the software renderer vertex-array source unit: vertex arrays.

`__glInitVertexArrayState`, `__glim_ArrayElementEXT`, `__glim_DrawArraysEXT`, `glMultiTexCoord1svSGIS`, `glMultiTexCoord2svSGIS`, `glMultiTexCoord3svSGIS`, `glMultiTexCoord4svSGIS`, `glMultiTexCoord1ivSGIS`, `glMultiTexCoord2ivSGIS`, `glMultiTexCoord3ivSGIS`, `glMultiTexCoord4ivSGIS`, `glMultiTexCoord1fvSGIS`, `glMultiTexCoord2fvSGIS`, `glMultiTexCoord3fvSGIS`, `glMultiTexCoord4fvSGIS`, `glMultiTexCoord1dvSGIS`, `glMultiTexCoord2dvSGIS`, `glMultiTexCoord3dvSGIS`, `glMultiTexCoord4dvSGIS`, `__glim_VertexPointerEXT`, `__glim_NormalPointerEXT`, `__glim_ColorPointerEXT`, `__glim_TexCoordPointerEXT`, `__glim_EdgeFlagPointerEXT`, `__glim_IndexPointerEXT`, `__glim_ColorPointer`, `__glim_DrawElements`, `__glim_DrawRangeElements`, `__glim_EdgeFlagPointer`, `__glim_IndexPointer`, `__glim_InterleavedArrays`, `__glim_NormalPointer`, `__glim_TexCoordPointer`, `__glim_VertexPointer`, `__glim_InterleavedTextureCoordSetsSGIS`

the software renderer vertex source unit: vertex senders and saves.

`__glClipCheckAll2`, `__glClipCheckAll3`, `__glClipCheckAll`, `__glGenericPickVertexProcs`

the software renderer transform source unit (part 1): transform and matrix state.

`__glPickMatrixType`, `__glMultiplyMatrix`, `SetDepthRange`, `__glUpdateDepthRange`, `__glEarlyInitTransformState`, `__glInitTransformState`, `__glInvalidateSequenceNumbers`, `__glim_MatrixMode`, `__glim_LoadIdentity`, `__glim_LoadMatrixf`, `__glim_LoadMatrixd`, `__glim_MultMatrixf`, `__glim_MultMatrixd`, `__glim_Rotatef`, `__glim_Rotated`, `__glim_Scalef`, `__glim_Scaled`, `__glim_Translatef`, `__glim_Translated`, `__glim_PushMatrix`, `__glim_PopMatrix`, `__glim_Frustum`, `__glim_Ortho`, `__glUpdateViewport`, `__glUpdateViewportTransform`, `__glim_Viewport`, `__glim_DepthRange`, `__glReadjustZCounts`, `__glim_Scissor`, `__glim_ClipPlane`, `__glPushModelViewMatrix`, `__glPopModelViewMatrix`, `__glLoadIdentityModelViewMatrix`, `__glComputeInverseTranspose`, `__glPushProjectionMatrix`, `__glPopProjectionMatrix`, `__glLoadIdentityProjectionMatrix`, `__glPushTextureMatrix`, `__glPopTextureMatrix`, `__glLoadIdentityTextureMatrix`

the software renderer transform source unit (part 2): transform and matrix state.

`__glPushColorMatrix`, `__glPopColorMatrix`, `__glLoadIdentityColorMatrix`, `__glDoLoadMatrix`, `__glDoMultMatrix`, `__glDoRotate`, `__glScaleMatrix`, `__glDoScale`, `__glTranslateMatrix`, `__glDoTranslate`, `__glComputeClipBox`, `__glReCompute2DMatrix`, `__glGenericPickMvpMatrixProcs`, `__glGenericPickMatrixProcs`, `__glGenericPickInvTransposeProcs`


### Names present only in the o32 and 64-bit builds

The N32 sources above lack these names; they appear in the o32 and 64-bit libraries (`usr/gfx/arch/IP30ODSY`, `IP30ODSY64` and their IP35 copies). Roles are **inferred** from the names.

depth-test procedures by compare function, in two families __glDTP_* and __glDTS_* (what P and S stand for: **unknown**), with _M and _s variants (part 1).

`__glDTP_ALWAYS`, `__glDTP_ALWAYS_M`, `__glDTP_EQUAL`, `__glDTP_EQUAL_M`, `__glDTP_GEQUAL`, `__glDTP_GEQUAL_M`, `__glDTP_GEQUAL_M_s`, `__glDTP_GEQUAL_s`, `__glDTP_GREATER`, `__glDTP_GREATER_M`, `__glDTP_GREATER_M_s`, `__glDTP_GREATER_s`, `__glDTP_LEQUAL`, `__glDTP_LEQUAL_M`, `__glDTP_LEQUAL_M_s`, `__glDTP_LEQUAL_s`, `__glDTP_LESS`, `__glDTP_LESS_M`, `__glDTP_LESS_M_s`, `__glDTP_LESS_s`, `__glDTP_NEVER`, `__glDTP_NOTEQUAL`, `__glDTP_NOTEQUAL_M`, `__glDTS_ALWAYS`, `__glDTS_ALWAYS_M`, `__glDTS_EQUAL`, `__glDTS_EQUAL_M`, `__glDTS_GEQUAL`, `__glDTS_GEQUAL_M`, `__glDTS_GEQUAL_M_s`, `__glDTS_GEQUAL_s`, `__glDTS_GREATER`, `__glDTS_GREATER_M`, `__glDTS_GREATER_M_s`, `__glDTS_GREATER_s`, `__glDTS_LEQUAL`, `__glDTS_LEQUAL_M`, `__glDTS_LEQUAL_M_s`, `__glDTS_LEQUAL_s`, `__glDTS_LESS`

depth-test procedures by compare function, in two families __glDTP_* and __glDTS_* (what P and S stand for: **unknown**), with _M and _s variants (part 2).

`__glDTS_LESS_M`, `__glDTS_LESS_M_s`, `__glDTS_LESS_s`, `__glDTS_NEVER`, `__glDTS_NOTEQUAL`, `__glDTS_NOTEQUAL_M`

depth, stencil and line-test dispatchers.

`__glDepthTestLine`, `__glDepthTestSpan`, `__glDepthTestStencilSpan`, `__glDepthTestStencilStippledSpan`, `__glDepthTestStippledSpan`, `__glStencilTestSpan`

frustum clip checks and vertex transforms by dimension (__glXForm2, 3, 4, with _2DNRW, _2DW and _W variants).

`__glClipCheckFrustum`, `__glClipCheckFrustum2D`, `__glNormalize`, `__glXForm2`, `__glXForm2_2DNRW`, `__glXForm2_2DW`, `__glXForm2_W`, `__glXForm3`, `__glXForm3_2DNRW`, `__glXForm3_2DW`, `__glXForm3_W`, `__glXForm4`, `__glXForm4_2DNRW`, `__glXForm4_2DW`, `__glXForm4_W`

accumulation on the board (__glOdyim_HardAccum*, __glOdyim_SoftAccum, hard*, sendBlenderColorTokensAccum31).

`__glOdyim_HardAccum24`, `__glOdyim_HardAccum31`, `__glOdyim_SoftAccum`, `hardAccumulate24`, `hardAccumulate31`, `hardAdd31`, `hardClear31`, `hardLoad24`, `hardLoad31`, `hardMult31`, `sendBlenderColorTokensAccum31`

clipmap validation.

`__glOdysseyValidateClipmap`

display-list classification helpers.

`__glce_common_listable`, `__glce_common_not_listable`

OpenGL 1.1 to 1.2 and extension entry points (gl*) exported by the library.

`glArrayElement`, `glBindTexture`, `glBlendColor`, `glBlendEquation`, `glColorTable`, `glColorTableParameterfv`, `glColorTableParameteriv`, `glConvolutionFilter1D`, `glConvolutionFilter2D`, `glConvolutionParameterf`, `glConvolutionParameterfv`, `glConvolutionParameteri`, `glConvolutionParameteriv`, `glCopyColorTable`, `glCopyConvolutionFilter1D`, `glCopyConvolutionFilter2D`, `glCopyTexImage1D`, `glCopyTexImage2D`, `glCopyTexSubImage1D`, `glCopyTexSubImage2D`, `glCopyTexSubImage3D`, `glGetPointerv`, `glHistogram`, `glMinmax`, `glPointParameterfEXT`, `glPointParameterfvEXT`, `glPrioritizeTextures`, `glResetHistogram`, `glResetMinmax`, `glSeparableFilter2D`, `glTexImage3D`, `glTexSubImage1D`, `glTexSubImage2D`, `glTexSubImage3D`

terminal-control library calls (tcgetattr, cfgetispeed and relatives).

`cfgetispeed`, `cfgetospeed`, `cfsetispeed`, `cfsetospeed`, `tcgetattr`, `tcsetattr`
