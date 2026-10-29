# Open questions

Questions the binaries and published sources have not yet answered. One entry each: the question, every route already tried, and the next route. When an entry is answered, move the finding into the owning header or chapter and delete the entry. `AGENTS.md` section 6 gives the rules.

**Routes every entry below has already taken**, so each entry lists only what it adds: the IP30 and IP35 kernel objects of `odyssey.a` (6.5.30m, every function read where the entry names it), the N32 libGLcore with its o32 and 64-bit siblings where a constant was searched, `odyssey.so`, `gfxinfo`, and both transform microcode images. **Routes no entry has taken yet**, to try in this order unless an entry says otherwise:

1. **Earlier releases.** The VPro files exist from 6.5.8 (IP30) and 6.5.14 (IP35). A changed constant or an added check between releases often names a field. No release carries richer debug information (`IRIX_FILES.md` section 5), so this is a diff of code, not of symbols.
2. **Diagnostics on other media.** The IP35 PROM and its diagnostics, and the Octane2 VPro Patches disc, may test registers the driver only writes.
3. **Published output from real machines.** `gfxinfo -v`, `hinv -v` and diagnostic transcripts for V6 to V12 boards in newsgroup and mailing-list archives.
4. **The shipped driver under an emulator.** Run it and log what it reads back and what it waits for. This shows the driver's expectation, not the board's behaviour, and is labelled so.

An entry that exhausts all five is relabelled "unknown: no shipped software or published source depends on it" in its owning file, with the routes listed, and removed here.

## BUZZ

- **Command blocks the software only stores.** What blocks 0x018, 0x019, 0x043, 0x044, 0x046, 0x050, 0x054 (operands 0 and 0x0fffffff), 0x170, 0x022 and 0x258 (operand 0x00120000) do, the 0x8e and 0x90 state words, and the field layouts of the replayed blocks with no known use (`docs/buzz.md` sections 8 and 9, `docs/kernel.md`). Tried: every sender in libGLcore, the X module and both kernels; the restore walkers. Next: route 1 (diff the senders across 6.5.8 to 6.5.30), then 5.
- **Blocks the hardware validator sends.** Field layouts of blocks 0x004, 0x005 (beyond bit 25), 0x006 and 0x052, what block 0x047's six zero words and bit 0 of block 0x051 set, the fields of block 0x013's four texture-object words, and the remaining bits of block 0x01c (`docs/tokens.md`, "Blocks only the hardware validator sends"). Tried: `__glOdysseyValidateHardware` and the setters named there. Next: read the writers listed for each shadow word (`ody_attrib.s`, `ody_texture.s`, `ody_image_chain.s`) and the texture-object builder that fills offsets 192 to 204, then route 5.
- **COUNT 9 to 14.** Whether the board accepts class-1 words with these counts; no software sends one (`docs/buzz.md` section 9). Tried: a scan of every constant command word. Next: route 5; failing that, it becomes "no shipped software depends on it".
- **Attribute ids never sent.** Opcodes 0x1a, 0x1b, 0x1d and 0x27 to 0x2e have no constant sender (`docs/buzz.md` section 9). Tried: every `lui`/`ori` attribute word. Next: the run-time word builders in libGLcore, then route 5.
- **Tables 0x220 and 0x230.** No libGLcore writer of either table (`docs/buzz.md` section 9, `BUZZ.h` section 2). Tried: constant-displacement stores in libGLcore. Next: stores through computed pointers into the hardware-state area, then route 4.
- **Water marks 0x6b0 to 0x6b3 and register 0x7f0.** Units, which mark is high, and what 0x3b9aca00 (10^9) counts (`docs/buzz.md`, reset section). Tried: every store and `.lit8` constant in the kernel objects. Next: route 1, then 5.
- **ID word 0x003d0046 at +0x201594.** Field split of the word the reset compares (`BUZZ.h` section 5). Tried: the single comparison in `odsyInitCfifo`. Next: route 3 (published `gfxinfo` output of V6, V8, V10 and V12 boards), then 2.
- **Flags bits 12 and 26 and the routing registers.** What sets the two flags bits no code tests, and the bit meanings of 0x34, 0x3c, 0x5c and 0x1044 to 0x105c (`docs/buzz.md`, interrupts). Tried: every reader of the flags register; the routing set-up and teardown. Next: route 2, then 5.
- **The 0x4000 group and the user windows.** Remaining bit fields of 0x4000 to 0x405c, 0x100c, 0x4014, 0x4044 and widget word +0x24, and what the +0x100000, +0x120000 and +0x200000 windows hold (`docs/buzz.md` section 9, `docs/kernel.md`). Tried: `odsy_diag.o`, the reset path and the libGLcore mapping table. Next: route 2, then 4 for the offsets libGLcore touches in its windows.
- **Context save on the board.** What the restored tables behind registers 0x31 and 0x34, data memory entries 0 to 24 and the seventeen attribute slots hold, and whether the board writes the completion word and the saved record (`docs/buzz.md` section 4 and pass 9). Tried: the save, switch and restore code on both hosts. Next: route 4, then 5.
- **Texture arithmetic.** Sub-texel and filter-weight widths, what the board does with the format index, storage class and level descriptor word 2, and how it uses the clamp value (`BUZZ.h` sections 2 and 3, `docs/buzz.md` section 9). Tried: every texture state writer in libGLcore; word 2 has no writer. Next: route 5, then any software fallback in libGLcore that must match the board's filtering.
- **DMA engine details.** What kick id 0xe03 selects, the operands of block 0x05a beyond the tag page (0xd0a on the error path), the board's use of entry bit 31 and the page list's end marker, and the data path of the diagnostic transfer (`docs/kernel.md`, host DMA). Tried: every DMA routine in `odsy_dma.o` and `odsy_pmm.o`. Next: route 2 (a diagnostic that drives `DIAGdma`), then 5.
- **Shadow descriptor table.** Who fills the 20-byte descriptors after the 2304-byte saved record, and their values for the five glGet names (`docs/opengl.md`, shadow descriptors). Tried: libGLcore (no store), `odsyResetHwShadow` (clears only the record). Next: the kernel's `MMattach` mapping and `DIAGgetShadowPtrs`, then route 4.
- **Drawable registers 0x608 to 0x60f and block 0x017.** What the board does with the buffer locations, origins and descriptor fields, and bit 23 of block 0x017's third word (`docs/opengl.md`, drawable binding and clip push; `docs/display.md`). Tried: bind, clip push, buffer select, swap and restore. Next: route 5.
- **Image path words.** The id of the PIO pixel-chunk word (a local in `odsyDrawImagePIO`), the mono-image and glyph cell routines `odsyDrawMonoImage`, `odsyDrawOpaqueMonoImage` and `odsyImageGlyphBlt` call, and the pixel-size codes the X module puts in its DMA headers (`docs/opengl.md`, `docs/kernel.md`). Tried: the routines' own text. Next: read the callees and the header builders in `odyssey.so` (static, not yet done).

## PB&J and display

- **Display register bit fields and the colour-map top.** Fields of the registers in `PBJ.h` section 3, of 0x2700 beyond those named, of 0x2b00, and the mode-table words (`docs/pbj.md`, `docs/kernel.md`). Tried: every writer, now named by format field (`docs/display.md`, structure builder). Next: route 1, then 3.
- **Display FIFO type 7, other type values and the FIFO depth** (`PBJ.h` section 2). Tried: every display-FIFO writer. Next: route 5.
- **How PB&J fetches pixels from BUZZ memory** (`docs/pbj.md`). Tried: no kernel path moves data to PB&J except by PIO. Next: route 5.
- **What raises retrace, video sync, genlock and DBE overflow** (`PBJ.h` section 5, `docs/kernel.md`). Tried: every handler. Next: route 5.
- **Line-table encoding.** Low-byte signal bits, event entries, bit 13 and the entry duration rule (`docs/display.md`, line-table structure). Tried: both built-in timings and the `.vfo` state tables. Next: any `.vfo` source or format compiler on another disc, then route 5.
- **Display-mode word bits 23:12 and 3:0, repeat against scale, narrow visuals** (`DISPLAY.h` section 2). Tried: the X module's visual tables and pixel conversion. Next: route 3 (published screenshots of 12- and 15-bit visuals), then 5.
- **Cursor two-bit codes and the control word bits** (`docs/display.md`, cursor). Tried: `odsyRealizeCursor` in full; the nibble table is extracted. Next: the X module's cursor colour set-up (which code it pairs with which colour register), then route 5.
- **Overlay capability.** Where the server registers overlay visuals and what the two ddx overlay flags set (`docs/display.md`, overlay section). Tried: `odsyInit`'s visual loop. Next: the readers of visual-record offset 56 in `Xsgi` and `odyssey.so`.
- **Clock parts and the digital output.** Identity of the clock parts at I2C 0x26 and 0x58, and the IP35 DVI FPGA and transmitter registers (`docs/display.md`). Tried: every I2C routine on both hosts. Next: route 3 (board photographs and parts lists), then the parts' public datasheets.

## Board memory

- **Memory organisation, bits 5 and 8 of 0x1004 and strap size code 3** (`docs/board.md`). Tried: the strap reader and the 0x1004 sequence on both hosts. Next: route 3 (`gfxinfo` output that prints memory size per board), then 5.

## Microcode

- **Operation meanings and end marks 1 and 2** (`ucode/buzz_isa.md`). Opcode dispatch is answered in `ucode/buzz_routines.md` (opcodes of 0x100 or more are entry records), and every routine `AddProgram` or its program table selects now has an entry there. Tried: both images, every host-side sender, the entry lists and the program table of 6.5.30m and patches 4103 and 4104. Next: route 4, a trace of the sequencer through one table program.
- **Value-3 marks and the loop entries.** Every table patch turns a value-3 mark into an end (`ucode/buzz_routines.md`, "The program table"). What decides between the loop and the alternate entry at a mark is not shown. Next: route 4.
- **Closing null routines.** 1153 to 1193 are bit-identical null routines, so the board can only tell them apart by address; which unit reads the closing entry's address is not shown (`ucode/buzz_routines.md`, "Closing routines"). Tried: `AddProgram`, `__glOdysseySetProgram`, `__glOdysseyValidateProgram`. Next: route 4, then 5.
- **Routines no host code names.** 278, 525, 542, 563, 584 and 605 follow end marks in both images, but no immediate, table record or sequencer word in the 6.5.30m or patch 4103 libGLcore, the X module or the kernel names them (constant-word scan of every file in `root/`). Next: route 1 (the 6.5.8 to 6.5.29 libGLcore program tables), then route 5.
- **Kernel-copy routine rows.** The routine entries are keyed by image record; the kernel copy's rows from 792 on carry other numbers and are only mentioned. Next: give the kernel copy its own entries where the routine differs or where the kernel itself selects it (`odsy_tport.o`, `odsy_ctxsw.o`).
## Where this pass stopped

The libGLcore context row, the DMA direction, the timing-structure map, the cursor table, the allocation and transfer arguments and the fill operand were answered statically and moved into the owning files. The next static work is the "Image path words" entry above, then route 1 for the BUZZ and display entries.

Program-table pass (6.5.30m libGLcore, patches 4103 and 4104): `AddProgram`'s 24-record program table, its key bits, every routine it or the generic path selects, the fragment-lighting branch and the overlay routines from 1226 on are read (`ucode/buzz_routines.md`); the fog and fragment light model blocks of `__glOdysseyValidateHardware` are read and its other seven blocks located (`docs/tokens.md`). Stopped at the seven located blocks: next is the writers of context words +31740, +31744, +31836 and +32736, then the texture-object words behind block 0x013, then the open microcode entries above.
