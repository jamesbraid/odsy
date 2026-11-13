# Hardware-facing routine explanations, odsy (Odyssey graphics), wave 1

Each entry says what one routine does to the hardware and cites the instruction addresses it rests on. The facts come from the routine bodies in the shipped binaries and from the linked register and ioctl rows of the inventory. Meanings that come from a datasheet or a callee are marked Inferred, and open points are marked Unknown with the route that would settle them.

## Absolute addresses 0x10000, 0x4000 and 0x1030

Many entries below end with the same open point: which device answers at an absolute address that no linked board window row lists. What the repository can already say, by address:

- **0x10000 (`CISendFc` in the 6.5.30m builds).** **inferred.** The kernel's mapping routine `gf_OdsyMapGfx` places board +0x110000, the command FIFO port, at user offset 0x10000 of a client's mapping (`buzz/README.md`, "Where `gf_OdsyMapGfx` places each window"; the offsets are **established** from the `v_mapkvsegment` arguments), and the words stored here (attribute words and the `0x2f00c02e` / `0x3000c02e` headers) are the kind of word the kernel sends to that port. So the stores are command FIFO writes, provided the client's mapping starts at virtual address 0. That proviso is the inferred part: the address the library hands to the mapping request has not been read.
- **0x4000 (`CISendFc` in the patch 4103 builds).** **inferred**, same proviso. User offset 0x4000 is board +0x120000, a window whose use is **unknown** (`buzz/README.md`, "The windows at board +0x100000, +0x120000 and +0x200000"). The patch 4103 senders store the same fixed command group there that the 6.5.30m senders store to 0x10000, so that build sends command words to this window. Whether it is a second command port or an alias of the FIFO is **unknown**. Test: the mapping-address read described under "Test that settles the rest" at the end of this section.
- **0x1030 (and 0x1010 to 0x1034).** **established** that the library treats these as ordinary memory: it loads a list pointer from 0x1030, stores small state values (0, 1, 2) back into it, and passes the doubleword at 0x1020 to a routine as a context pointer (`opengl/capability-trees.md`, `opengl/libglcore-odyssey-reads.md`). **established** that the kernel never reaches a board offset of 0x1030 by a constant displacement (`kernel/kernel.md`, search of every constant displacement). So 0x1030 is a process-global word, not a device register, and "which device" does not apply to it. Which mapping or allocation makes that page resident at 0x1000: **unknown**. If the client mapping did start at virtual 0, the +0x100000 window would cover 0x1030 and contradict the memory use, which is one reason to doubt that the start is 0.

Test that settles the rest: find the caller that supplies the client address to the graphics mapping request (the library or X module code that issues the mapping ioctl, and the fault path that reaches `gf_OdsyMapGfx`), read the address constant, and add it to the window table in `buzz/README.md`. If the start is 0, then 0x10000 is the FIFO port and 0x4000 the +0x120000 window. If the start is elsewhere, none of the three addresses reaches the board through that table, and the stores to 0x10000 and 0x4000 need another explanation.

- `AllocateGfxMemForTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb398b00 (n64).
  Inferred: the routine fills a per-index slot of the current texture record with the entry arguments and the results of the format and size routines, and creates or replaces the PM object behind it, since its stores go to slots at a stride of 0x44 and it calls `__glOdysseyCreatePMObj`, `__glOdysseyDestroyPMObj` and `__glOdysseyDestroyPMObjGroup`. It gets the current texture record T from `__glOdysseyGetCurrentTexture` (`bgezall` at 0xb398b58, an unconditional call because its register is zero) with the 8-byte word at abs 0x1020 and its first argument, then calls `ChooseSuitableBuzzTexObjFormat` (`bgezall` at 0xb398b70) and `CalcTexelSizes` (`bgezall` at 0xb398ba4) with seven frame addresses from sp-288 to sp-264 as a1 to a7.
  Two `ceilf` calls (`jalr` at 0xb398bd0 and 0xb398c18) round the values a2 minus twice a5 and a3 minus twice a6, each scaled by the 0.0625 literal in the delay slot (`lwc1` at 0xb398bb8), and the two sizes are multiplied. With a4 below 2 (`beq` at 0xb398c40 not taken) the product is kept; with a4 of 2 or more that `beq` is taken and `__glOdysseyImageLogBase2` (`jalr` at 0xb398f20) is called on the product, which its committed entry gives as a rounded-up base-2 logarithm, and 1 shifted left by the result is kept instead. The kept value goes to frame +0x90.
  The routine then zeroes 0x28 bytes at frame +0x1c (`memset`, `jalr` at 0xb398c58) and fills them as a request block for `__glOdysseyCreatePMObj`: a4, a3 and a2 at +0x34, +0x30 and +0x2c, the kept value at +0x3c, byte 4 at +0x1c, and three more words at +0x20, +0x24 and +0x28 that are zero when a5 is zero (`beq` at 0xb398c94) and otherwise 0x10 minus a5, a6 and a7, each masked with 0xf. It picks the pointer v0 by the first argument: P+0x14acc, P+0x154bc or P+0x15eac for 0x8063, 0x8064 or 0x8070 (`beq` at 0xb398cc8, 0xb398cd0 and 0xb398cd8), where P is the 8-byte word at abs 0x1020, and T+0x53c otherwise (`daddiu` at 0xb398cdc).
  When a2 times a3 times a4 is nonzero (`bne` at 0xb398cf8) the routine calls `__glOdysseyCreatePMObj` with the word at abs 0x1020, the request block, v0 and the second argument (`jalr` at 0xb398dac). A zero return (`beq` at 0xb398db4) goes to the error path: for first argument 0x8063, 0x8064 or 0x8070 it clears 0x44 bytes at S+0x5b0 with `memset` (`jalr` at 0xb39903c), otherwise it calls `__glSetError` with 0x505 (`jalr` at 0xb398fa0), and both return 0 at 0xb398fd0. When the product is zero, the 4-byte word at v0 equal to -1 (`beq` at 0xb398d0c) or the word at S+0x5c4 not equal to 1 (`bne` at 0xb398d1c) skips straight to the stores. Otherwise the routine walks the records at stride 0x44, T+0xc4 of them, other than S, looking for another record whose word at +0x5c4 is 1; if one is found (`beq` at 0xb398d80) it calls `__glOdysseyDestroyPMObj` (`jalr` at 0xb399058) with v0 and the second argument, and if none is found it calls `__glOdysseyDestroyPMObjGroup` (`jalr` at 0xb398d8c) with v0, before the stores.
  On the paths that reach the stores, the slot S = T + (((a1<<4)+a1)<<2) receives a2, a3, a4 and a5 at S+0x5cc, S+0x5d0, S+0x5d4 and S+0x5d8 (`sw` at 0xb398dd8, 0xb398dd4, 0xb398dd0 and 0xb398dcc, 0xb398d98 or 0xb399064), the ninth argument at S+0x5c8 (`sw` at 0xb398de0), the return of `ChooseSuitableBuzzTexObjFormat` at S+0x5b0 (`sw` at 0xb398e14), the seven words that `CalcTexelSizes` left at frame +0 to +0x18 at S+0x5dc, S+0x5e0, S+0x5e4, S+0x5e8, S+0x5ec, S+0x5f0 and S+0x5b4 (`sw` at 0xb398de8 to 0xb398e28), the result of `CalcPixelModePixelFormat` at S+0x5b8 (`sw` at 0xb398e3c), and the descriptor words at frame +0x38 and +0x3c at S+0x5bc and S+0x5c0 (`sw` at 0xb398e48 and 0xb398e58).
  A nonzero second argument returns 1 at 0xb398f14 after those stores (`bne` at 0xb398e54). With a second argument of zero, three loops first halve the values a2 minus twice a5, a3 minus twice a6 and a4 minus twice a7 until they reach zero, counting the passes from 0 (loops at 0xb398e90, 0xb398eb0 and 0xb398ed0); the counts go to T+0xb8, T+0xbc and T+0xc0 in that order, and T+0xc4 takes the largest of the three (`sw` at 0xb398edc to 0xb398ef4), before the return of 1.
  Unknown: the content of the seven frame words that `CalcTexelSizes` writes and the arguments of `ChooseSuitableBuzzTexObjFormat`, since the bundle has no entry for either callee; their own entries would settle them.
  Evidence grade: inferred.
- `CISendClippedBmFmN` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fe38c (o32).
  Streams a fixed sequence of word writes, all to the single address 0x10000 (`v1`, set by the `lui`
  at 0xd9fe3a0, displacement 0), from a record passed in `a0`, without calling anything. The first word, stored
  by the `sw` at 0xd9fe3c8, is 0xf or 0x10 shifted left by 0x18, with 0x20000000 and 0xc02e ORed in; the
  value is 0x10 when the byte at `a0`+0xb8 (loaded by the `lbu` at 0xd9fe398) is zero (`beq` at
  0xd9fe3a4) and 0xf otherwise (the `addiu` in the delay slot of the always-taken `beq` at 0xd9fe3ac),
  and the same 0xf or 0x10 is returned by the `jr ra` at 0xd9fe4fc.
  Ten more `sw` stores write constant header words, in order 0xffffffffc680d02f, 0xffffffffc780d030,
  0xffffffffc880d031, 0xffffffffc980d032, 0xffffffffca80d035, 0xffffffffcb80d036, 0xffffffffcc80d037,
  0xffffffffcd80d038, 0xffffffffc180cc19 and 0xffffffff8080d005, at 0xd9fe3d0, 0xd9fe3f0, 0xd9fe40c,
  0xd9fe428, 0xd9fe444, 0xd9fe464, 0xd9fe480, 0xd9fe49c, 0xd9fe4b8 and 0xd9fe4dc. Between these
  headers, 30 `swc1` stores write register `$f0`, which the routine fills from `zero` before its first
  store, so they write zero words; the other 9 `swc1` stores copy floats from the record
  unchanged: +0x90 (stored at 0xd9fe3e0, right after the first header), +0xa0 (0xd9fe454), then
  +0xc0, +0xc4, +0xc8 (0xd9fe4c8, 0xd9fe4d0, 0xd9fe4d8) and +0x10, +0x14, +0x18, +0x1c (0xd9fe4e4,
  0xd9fe4ec, 0xd9fe4f4, and 0xd9fe500 in the delay slot of the return).
  Inferred: the last two headers are attribute words, since the linked token rows list 0xc180cc19 as
  an attribute with count 3 and 0xffffffff8080d005 (token 0x8080d005) as an attribute with count 4,
  which matches the three floats from +0xc0 and the four from +0x10 that follow them.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): the board register block that the address 0x10000 belongs to; the linked mmio rows list
  windows 0x110000 and 0x120000 only, so the decode needs the board datasheet.
  Evidence grade: inferred.
- `CISendFc` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fde00 (o32).
  Writes a short fixed group of eight words to the single address 0x10000 (`v1`,
  displacement 0) from a record passed in `a0`, without calling anything. The group opens with a header word
  at 0xd9fde30: 0xf or 0x10, shifted left by 0x18, with 0x20000000, 0xc000 and 0x2e ORed in. A zero byte at
  `a0`+0xb8 (the `lbu` at 0xd9fde00) sends the `beq` at 0xd9fde0c to 0xd9fde1c, giving 0x10; otherwise the
  fall-through reaches the always-taken `beq` at 0xd9fde14 and its delay-slot `addiu` at 0xd9fde18 gives
  0xf. The `jr ra` at 0xd9fde6c hands back that number.
  Then comes the constant 0xffffffffc580c407 (`sw` at 0xd9fde38) and the float at +0x90, copied
  unchanged (`swc1` at 0xd9fde48). The `sw` at 0xd9fde4c writes the constant
  0xffffffff8080d005, and the floats at +0x10, +0x14, +0x18 and +0x1c follow as read (`swc1` at 0xd9fde54, 0xd9fde5c, 0xd9fde64 and, in the return's delay slot, 0xd9fde70).
  Inferred: the constant 0xffffffffc580c407 is an attribute header with a count of 1, since the linked
  token row lists it so, which matches the single float stored after it at +0x90.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): whether 0x10000 lies inside either linked board window (0x110000, 0x120000); only the board's
  address-decode table can say.
  Evidence grade: inferred.
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
- `CISendFc` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacbc00 (n32).
  Writes eight words to the absolute address 0x4000 and makes no calls and no conditional branches.
  The first store writes a header word whose top byte is 0x10 when the byte at +0xb8 of the argument (`lbu` at 0xdacbc00) is zero and 0xf when it is not, shifted left 24 and ORed with 0x2000c02e (`sw` at 0xdacbc28); the second writes the constant 0xffffffffc580c407 (`sw` at 0xdacbc30).
  The word at +0x90 of the argument goes out through $f4 (`lwc1` at 0xdacbc34, `swc1` at 0xdacbc3c), then the constant 0xffffffff8080d005 is written (`sw` at 0xdacbc44), then the words at +0x10, +0x14, +0x18 and +0x1c go out through $f3, $f2, $f1 and $f0 (`swc1` at 0xdacbc4c, 0xdacbc54, 0xdacbc5c and 0xdacbc68).
  The return at 0xdacbc64 leaves v0 at 0xffffffffc580c407 and $f0 at the word at +0x1c, with the last store in its delay slot.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): the device behind the absolute address 0x4000, given that the linked mmio rows cover the windows at 0x110000 and 0x120000 only and no datasheet excerpt covers 0x4000.
  Evidence grade: established.
- `CISendFc` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3b1470 (n64).
  Streams eight 4-byte words, one after another, to the single absolute address 0x4000 from a straight-line body with no branch or call; `a0` points at a caller record that supplies five of the words.
  The first word depends on the byte at record offset +0xc4 (`lbu` at 0xb3b1470): a selector starts as 0xf (set at 0xb3b1478) and is replaced by 0x10 (set at 0xb3b1474) when the byte is zero, so a nonzero byte keeps 0xf. The selector is shifted left by 0x18 (the shift at 0xb3b148c), ORed with 0x2000c02e, and stored by the `sw` at 0xb3b1498.
  Two constant words follow in fixed positions: the `sw` at 0xb3b14a0 stores 0xffffffffc580c407 as the second word, and the `sw` at 0xb3b14b4 stores 0xffffffff8080d005 as the fourth.
  The other five words are floating-point loads from the record written back out unchanged: +0x9c is the third word (`lwc1` at 0xb3b14a4, `swc1` at 0xb3b14ac), then +0x1c, +0x20, +0x24 and +0x28 are the fifth to eighth (`swc1` at 0xb3b14bc, 0xb3b14c4, 0xb3b14cc and the delay slot of the return at 0xb3b14d8).
  The return value in v0 is the constant 0xffffffffc580c407 set at 0xb3b149c, and f0 is the word loaded from +0x28.
  Unknown: which hardware register sits at the absolute address 0x4000, since no linked row or datasheet excerpt covers it; a register row or datasheet entry at that address would settle it.
  Evidence grade: established.
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
- `FreeTextureObject` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb397be0 (n64).
  Does not touch the device directly; it calls up to two routines, one through a pointer loaded from memory and one through a pointer inside the object in a0.
  The `lw` at 0xb397be4 reads the word at +0x53c of the record in a1, and the `beq` at 0xb397c04 jumps past the first call when that word equals -1.
  Otherwise the first call goes to `__glOdysseyDestroyPMObjGroup` at 0xb38f4d0, through a target loaded from the absolute address 0xb4c8100 by the `ld` at 0xb397c0c, with a1 set to the record plus 0x53c in the delay slot and a0, a2 and a3 as they arrived.
  The `ld` at 0xb397c20 reloads a1 from the frame slot that the `sd` at 0xb397c14 wrote, so the second call receives the entry a1 on both paths.
  The second call goes through the 8-byte pointer at +0x18 of the object in a0 (the `ld` at 0xb397c24), with a0 set from s8 in its delay slot, and the `jr ra` at 0xb397c3c returns the v0 that call leaves.
  Unknown: the content of the routine at 0xb38f4d0; its only committed row is for the IP30ODSY32 binary at 0xd9c69f0, a different build, so a row for this build would settle it.
  Unknown: the target of the pointer at +0x18 of the object in a0 and the v0 it returns, since both are read from memory at run time; a run that records the target, or a committed row for it, would settle them.
  Evidence grade: established.
- `GetBoardName` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8c3ef0 (n32).
  Reads a word from a table entry chosen by a1 and, when that word is below 0x40, opens
  `/dev/opengl`, issues one ioctl, and copies a string from the ioctl's buffer to the caller's buffer
  at a2. The table pointer is the word loaded from a0+0x20 (`lw` at 0xd8c3ef0) and the entry is that
  pointer plus a1 times 32 (`lw` at 0xd8c3f00); the `bne` at 0xd8c3f10 jumps to the open when the
  entry word is below 0x40 (signed), and the fall-through returns 0 at 0xd8c3f18. The open at
  0xd8c3f30 takes `/dev/opengl` (string at 0xd8e0538) with flags 0x802 and leaves the caller's a2 as its
  third argument; a negative result (`bltz` at 0xd8c3f40) returns 0 at
  0xd8c3fb8. The ioctl at 0xd8c3f6c takes that descriptor, request 0x66 and the three-word block at
  sp+0x0 as its argument: the table entry word (`sw` at 0xd8c3f70), the pointer sp+0x10 (`sw` at
  0xd8c3f58) and the length 0x28 (`sw` at 0xd8c3f4c). Inferred: the linked ioctl row labels request 0x66 as
  `graphics init`, so this call is taken to be that request. A negative ioctl result (`bltz` at
  0xd8c3f74) closes the descriptor at 0xd8c3fc4 and returns 0 at 0xd8c3fd4; otherwise `strlen` runs
  on the buffer (`jalr` at 0xd8c3f7c), `strncpy` copies that many bytes to a2 (`jalr` at 0xd8c3f90),
  the descriptor is closed at 0xd8c3f9c without testing the result, and the return at 0xd8c3fac
  gives 1. Unknown: the content of the string that request 0x66 leaves in the buffer at sp+0x10, and
  whether it always ends inside the space given by 0x28, since `strlen` at 0xd8c3f7c has no bound in
  the bundle; the kernel-side handler of request 0x66 or a capture of its output would settle it.
  Unknown: the fields of the table entries other than the word at +0, and the state that the 0x40
  threshold tests; the bundle has no table contents or caller, so the code that fills the table
  would settle it.
  Evidence grade: inferred.
- `GetBoardName` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf87cec (n64).
  Reads the 32-bit word at element `a1` of the 64-byte-stride table that the pointer at `a0`+0x30
  addresses, and returns 0 without touching the device when that word is 0x40 or more (the `bne` at
  0xcf87d0c falls to the return at 0xcf87d14). Otherwise it opens `/dev/opengl` (the string at
  0xcfa4538) with 0x802 in `a1` (the `jalr` at 0xcf87d2c), and a negative descriptor returns 0 at
  0xcf87db4 with no further calls. On success it builds a request block at the base of its own frame:
  the table word at +0 (the `sw` at 0xcf87d6c), a pointer to frame offset 0x18 at +8 (the `sd` at
  0xcf87d54) and the constant 0x28 at +0x10 (the `sw` at 0xcf87d48). It then sends one `ioctl` on the
  descriptor with request 0x66, with `a2` pointing at that block and the table word also in `a3` (the
  `jalr` at 0xcf87d68). A negative result closes the descriptor and returns 0 (the `jalr` at
  0xcf87dc0, the `jr` at 0xcf87dd0). Otherwise it measures the string at frame offset 0x18 with
  `strlen`, copies that many bytes into the caller's buffer `a2` with `strncpy`, closes the
  descriptor (the `jalr` at 0xcf87d98) and returns 1 (the constant at 0xcf87da4).
  Inferred: request 0x66 is the graphics-init request, because the linked ioctl row names it that way;
  the body has only the number.
  Unknown: the device-side use of the table word and of the 0x28 constant in the request block, and
  whether the call fills the bytes at frame offset 0x18; the linked ioctl row has no handler, so the
  handler for request 0x66 would settle it.
  Evidence grade: inferred.
- `RGBSendClippedBmFmTN` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222cec0 (n64).
  Writes one of two runs of words to the absolute address 0x10000 through `a2`, chosen by the word at +0x688 of the pointer stored at absolute 0x1020, and both runs take their float words from the record the caller passes in `a0`.
  The `ld` at 0x222cef8 reads that pointer and the `lw` at 0x222cf18 reads its +0x688 word, and the `beq` at 0x222cf2c jumps to 0x222d074 when that word equals 0x81fa (set at 0x222cf20), otherwise falling through to 0x222cf34.
  The word stored by the `sw` at 0x222cf0c, before the branch, depends on the byte at record offset +0xc0 (`lbu` at 0x222ceec): it is 0x2f00c02e (built at 0x222cef0 and 0x222cf00) when the byte is nonzero and 0x3000c02e (built at 0x222cef4 and 0x222cefc) when the byte is zero, because a conditional move before the store replaces the first value with the second only on zero.
  On the fall-through path the `sw` stores at 0x222cf34, 0x222cf48, 0x222cf5c, 0x222cf74, 0x222cf94, 0x222cfa8, 0x222cfbc and 0x222cfd4 write the constants 0xffffffffc680d02f, 0xffffffffc880d031, 0xffffffffc780d030, 0xffffffffc980d032, 0xffffffffca80d035, 0xffffffffcc80d037, 0xffffffffcb80d036 and 0xffffffffcd80d038, and the float words loaded from a0 at +0xa4, +0x98, +0x9c, +0xa0, +0xb4, +0xa8, +0xac and +0xb0 are stored between them by the `swc1` at 0x222cf70, 0x222cf7c, 0x222cf84, 0x222cf8c, 0x222cfd0, 0x222cfdc, 0x222cfe4 and 0x222cfec.
  On the branch path the same eight constants are stored in the same order, at 0x222d074, 0x222d088, 0x222d0a8, 0x222d0c0, 0x222d0e0, 0x222d0f4, 0x222d114 and 0x222d12c, with float words from a0 at +0x178, +0x17c, +0x180, +0xa4, +0x98, +0x9c, +0xa0, +0x188, +0x18c, +0x190, +0xb4, +0xa8, +0xac and +0xb0 between them, and the always-taken `beq` at 0x222d148 jumps to the common tail at 0x222cff4.
  The common tail writes the constant 0xffffffffc180cc19 at 0x222cffc, the constant 0xffffffffc380d025 at 0x222d020 and 0xffffffff8080d005 at 0x222d04c, with float words from a0 at +0xc8, +0xcc, +0xd0, +0x38, +0x3c, +0x40, +0x44, +0x18, +0x1c, +0x20 and +0x24 between them, and the `jr ra` at 0x222d06c returns with its delay-slot store at 0x222d070 writing the +0x24 word.
  The `swc1` stores of $f4 in the two runs write zero, since $f4 is set from the zero register by the first instruction of the routine (0x222cec0) and no later instruction loads it in this routine.
  No instruction in the routine writes v0, so the value returned at the `jr ra` at 0x222d06c is whatever the caller left in it.
  Unknown: the content of the pointer at absolute 0x1020, which no linked row covers; a committed row for it would settle it.
  Evidence grade: established.
- `RGBSendClippedBmFmTN` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3b11c0 (n64).
  Writes one of two runs of words to the absolute address 0x4000, chosen by the word at +0x690 of the pointer stored at absolute 0x1020, and both runs take their float words from the record the caller passes in `a0`.
  The `ld` at 0xb3b1204 reads that pointer and the `lw` at 0xb3b122c reads its +0x690 word, and the `beq` at 0xb3b1244 jumps to 0xb3b1388 when that word equals 0x81fa (set at 0xb3b1230); otherwise it falls through to 0xb3b124c. The delay slot of that `beq` loads $f4 with 0.0 from the literal pool at 0xb4cfa14 (`lwc1` at 0xb3b1248) on both paths.
  The `sw` at 0xb3b1218 runs before the branch on both paths and writes a word that ORs 0x2000c02e into a selector shifted left by 0x18 (the shift at 0xb3b120c).
  The selector depends on the byte at record offset +0xc4 (`lbu` at 0xb3b11e8): it is 0xf (set at 0xb3b11f4) when the byte is nonzero and 0x10 (set at 0xb3b11f0) when the byte is zero.
  On the fall-through path the `sw` stores at 0xb3b124c, 0xb3b1260, 0xb3b1274, 0xb3b128c, 0xb3b12ac, 0xb3b12c0, 0xb3b12d4 and 0xb3b12ec write the constants 0xffffffffc680d02f, 0xffffffffc880d031, 0xffffffffc780d030, 0xffffffffc980d032, 0xffffffffca80d035, 0xffffffffcc80d037, 0xffffffffcb80d036 and 0xffffffffcd80d038 in that order, the `swc1` stores between them write float words from a0 at +0xa8, +0x9c, +0xa0, +0xa4, +0xb8, +0xac, +0xb0 and +0xb4, and the `swc1` stores of $f4 write 0.0.
  On the branch path the stores from 0xb3b1388 to 0xb3b1460 write the same eight constants in the same order, at 0xb3b1388, 0xb3b139c, 0xb3b13bc, 0xb3b13d4, 0xb3b13f4, 0xb3b1408, 0xb3b1428 and 0xb3b1440, with float words from a0 at +0x180, +0x184, +0x188, +0xa8, +0x9c, +0xa0, +0xa4, +0x190, +0x194, +0x198, +0xb8, +0xac, +0xb0 and +0xb4 between them, and the always-taken `beq` at 0xb3b145c sends it to the common tail at 0xb3b130c.
  The common tail writes the constant 0xffffffffc180cc19 at 0xb3b1310, the constant 0xffffffffc380d025 at 0xb3b1334 and 0xffffffff8080d005 at 0xb3b1360, with float words from a0 at +0xd0, +0xd4, +0xd8, +0x3c, +0x40, +0x44, +0x48, +0x1c, +0x20, +0x24 and +0x28 between them, and the `jr ra` at 0xb3b1380 returns v0 = 0xffffffff8080d005 on both paths.
  Unknown: the content of the pointer at absolute 0x1020, and what sits at 0x4000; no linked row covers either (the mmio rows start at 0x110000 and 0x120000), so a committed row for each, or a datasheet entry for the record, would settle them.
  Evidence grade: established.
- `RGBSendFc` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fb0c8 (o32).
  Writes eleven words in a fixed order to the single address 0x10000 (`v1`, displacement 0),
  reading its data from the record in `a0`, with no calls made. The `sw` at 0xd9fb0f8 emits the first word, built by
  shifting a selector (0xf or 0x10) left by 0x18 and ORing in 0x20000000, 0xc000 and 0x2e. The selector follows the byte at `a0`+0xb8 (the `lbu` at 0xd9fb0c8): a zero byte makes the `beq`
  at 0xd9fb0d4 jump to 0xd9fb0e4, which gives 0x10; any other byte reaches the unconditional `beq` at
  0xd9fb0dc, whose delay-slot `addiu` at 0xd9fb0e0 gives 0xf. The same number comes back from the
  `jr ra` at 0xd9fb14c.
  The constant 0xffffffffc580d015 follows (`sw` at 0xd9fb100), then four floats copied unchanged from
  +0x90, +0x94, +0x98 and +0x9c (the `swc1` at 0xd9fb110, 0xd9fb118, 0xd9fb120 and 0xd9fb128). The
  constant 0xffffffff8080d005 comes next (`sw` at 0xd9fb12c), and four more floats from
  +0x10, +0x14, +0x18 and +0x1c, last of all (the `swc1` at 0xd9fb134, 0xd9fb13c, 0xd9fb144 and, in the return's delay
  slot, 0xd9fb150).
  Inferred: the constant 0xffffffffc580d015 is an attribute header with a count of 4, since the
  linked token row lists it so, which matches the four floats stored after it.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): the board register block holding the target address 0x10000, as only the windows 0x110000
  and 0x120000 are linked; the board's address map would settle it.
  Evidence grade: inferred.
- `RGBSendFc` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222bdf0 (n64).
  The body makes eleven stores to the absolute address 0x10000, eight carrying words from the record the caller passes in `a0`, two carrying constants and one carrying a value chosen by a record byte, with no branch or call anywhere.
  The first word depends on a record flag read by `lbu` at 0x222bdf4 from offset +0xc0: the `sw` at 0x222be10 stores 0x2f00c02e (built at 0x222bdf8 and 0x222be04) when the byte is nonzero, and 0x3000c02e (built at 0x222bdfc and 0x222be00) when the byte is zero, because a conditional move before the store replaces the first value with the second only on zero.
  At 0x222be18 the word 0xffffffffc580d015 is stored, assembled from 0xc580 at 0x222be08 and 0xd015 at 0x222be14; at 0x222be44 the word 0xffffffff8080d005 is stored, from 0x8080 at 0x222be38 and 0xd005 at 0x222be40.
  Eight float registers are written from the record: `$f7` to `$f4` from +0x98, +0x9c, +0xa0 and +0xa4 by the `swc1` at 0x222be20, 0x222be28, 0x222be30 and 0x222be3c, and `$f3` to `$f0` from +0x18, +0x1c, +0x20 and +0x24 by the `swc1` at 0x222be4c, 0x222be54, 0x222be5c and 0x222be68.
  On return, v0 holds 0xffffffff8080d005 (the word stored at 0x222be44), and the `swc1` at 0x222be68, the last store, rides in the delay slot of the `jr ra` at 0x222be64.
  Unknown: the register or device at the absolute address 0x10000, since the bundle carries no name for that address; a datasheet entry covering it would be the route.
  Evidence grade: established.
- `RGBSendFc` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaca820 (n32).
  A straight-line run of eleven stores to the absolute address 0x4000, with no calls and no branches.
  It opens with a header word whose top byte is 0x10 when the byte at +0xb8 of the argument (`lbu` at 0xdaca820) is zero and 0xf when it is not, shifted left 24 and ORed with 0x2000c02e (`sw` at 0xdaca848), then the constant 0xffffffffc580d015 (`sw` at 0xdaca850).
  Four words from the argument at +0x90, +0x94, +0x98 and +0x9c pass through $f2, $f1, $f0 and $f4 (`lwc1` at 0xdaca854, 0xdaca85c, 0xdaca864 and 0xdaca86c; `swc1` at 0xdaca858, 0xdaca860, 0xdaca868 and 0xdaca874).
  After the constant 0xffffffff8080d005 (`sw` at 0xdaca87c), the words at +0x10, +0x14, +0x18 and +0x1c pass through $f3, $f2, $f1 and $f0 (`swc1` at 0xdaca884, 0xdaca88c, 0xdaca894 and 0xdaca8a0).
  The return at 0xdaca89c gives v0 as 0xffffffffc580d015 and $f0 as the word at +0x1c.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): the target of the stores to 0x4000 in this entry, since no linked row or excerpt matches that address and the windows at 0x110000 and 0x120000 do not contain it.
  Evidence grade: established.
- `RenderFunc_Interlace` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9b054c (o32).
  Does not store to a fixed address; it sets and clears bytes at +0xc of the two sub-records whose
  pointers sit at +0x44 and +0x48 of the record in `a0`, around one call to
  `__glOdysseyImageMovePixelsTexture`.
  It reads the word at abs 0x1010 (`lw` at 0xd9b055c) and tests bit 0x20000 of the word at +0x704 of
  that pointer (`lw` at 0xd9b056c, `beq` at 0xd9b0580).
  With that bit clear the `beq` goes to 0xd9b0594 and the `sb` at 0xd9b0598 writes 0 to +0xc of the
  sub-record at +0x44; with it set, the byte written is 1 when the word at +0 of `a0`, XORed with 0xe at
  0xd9b058c, is below 1 unsigned (the compare at 0xd9b0590), and 0 otherwise.
  Bit 0x20 of the same word (`lw` at 0xd9b059c, `beql` at 0xd9b05a8) sets the byte for the sub-record at
  +0x48: when that bit is clear the `sb` at 0xd9b05d4 writes 0; when it is set, the byte is 1 if the byte
  at +0x8 of that sub-record (`lbu` at 0xd9b05b4, `bnel` at 0xd9b05bc) is nonzero, and otherwise the byte
  at +0xa (`lbu` at 0xd9b05c4) decides in the same way.
  Every path reaches the block at 0xd9b05d0, which calls `__glOdysseyImageMovePixelsTexture` (0xd9cb7f8)
  through a pointer loaded from abs 0xdafea04 (`lw` at 0xd9b05d8), with `a0` the sub-record at +0x48
  (`lw` at 0xd9b05e0), `a1` the one at +0x44 (`lw` at 0xd9b05dc), `a2` the second argument it received,
  and 1 in `a3` (0xd9b05d0).
  After the call it writes 0 to +0xc of both sub-records (`sb` at 0xd9b05f8 and 0xd9b0600), sets v0 to 1
  (0xd9b05f4) and returns (`jr ra` at 0xd9b0610), so the callee's return value is discarded.
  Unknown: which code reads the +0xc bytes that this routine sets and clears; the callers of this
  routine would show the reads.
  Unknown: which states bits 0x20000 and 0x20 of the word at +0x704 select; a field table for that word
  would settle it.
  Evidence grade: established.
- `__glOdyim_Begin` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9da170 (o32).
  Chooses a path from the word at abs 0x1018 and the word at +0x16964 of the pointer stored at abs
  0x1010:
  on one path it stores to absolute word 0x10000, on another it calls two routines through pointers, and
  on the rest it passes 0x500 or 0x502 to `__glSetError`.
  The word at +0x16964 is loaded at 0xd9da19c and tested by the `beq` at 0xd9da1a8; when it is nonzero,
  the word at abs 0x1018 (`lw` at 0xd9da1a0) is tested by the `bne` at 0xd9da1b0, and a zero there is
  replaced by 2 (the constant at 0xd9da1b8) before the test at 0xd9da1bc.
  A tested value of 2 takes the two-call path at 0xd9da1d0 (`bne` at 0xd9da1c8), zero takes the path at
  0xd9da234 (`beq` at 0xd9da1bc), and any other value calls `__glSetError` with 0x502 (`jalr` at
  0xd9da224).
  On the two-call path the `sb` at 0xd9da1d8 writes 1 to +0x16974, the call through the pointer
  loaded at
  0xd9da1e4 (`jalr` at 0xd9da1ec) takes the pointer as its first two arguments and 0x10000 as its
  fourth,
  the `sw` at 0xd9da1f8 writes 0 to absolute 0x1018, and the call through the pointer built from +0x17f4
  and +0x1c (`jalr` at 0xd9da20c) takes the entry `a0` as its first argument and the pointer as its
  second.
  On the zero path, an entry `a0` below 0xa (`bne` at 0xd9da234) goes on to the block at 0xd9da254
  onward: when `a0` equals 2 it also writes 1 to +0x19dce (`sb` at 0xd9da26c), and every such entry
  writes
  0x14400 and then the entry `a0` to absolute 0x10000 (`sw` at 0xd9da274 and 0xd9da278), 1 to absolute
  0x1018 (`sw` at 0xd9da284) and a zero word to +0x19d98 (`swc1` at 0xd9da28c, whose register `$f4`
  is zeroed from `zero` at the start of the block at 0xd9da270); an entry `a0` of 0xa
  or more calls `__glSetError` with 0x500 (`jalr` at 0xd9da244).
  Inferred: `__glSetError` records its code as the context's first GL error, from its callee note, so
  0x500 and 0x502 are GL error codes here.
  Unknown: the content of the routines behind the pointers loaded at 0xd9da1e4 and 0xd9da208, since the
  bundle has no note for either.
  Evidence grade: inferred.
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
- `__glOdyim_Begin` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x220ca00 (n64).
  Entry point for a begin request: the word at abs 0x1030 (`lw` at 0x220ca04) acts as a three-way state,
  and the context pointer comes from abs 0x1020 (`ld` at 0x220ca00).
  If the word at the context plus 0x18e58 (`lw` at 0x220ca18) is nonzero and the state word is zero, the
  state is replaced by 2 for the rest of the call (conditional move before the `beq` at 0x220ca38).
  Zero branches to the mode test (`beq` at 0x220ca38), 2 branches to 0x220caa8 (`beq` at 0x220ca4c), and
  any other value (1) calls `__glSetError` with 0x502 (`jalr` at 0x220ca58) and returns its result.
  When the state is zero and a0 is 0xa or more unsigned (`beq` at 0x220ca70), it calls `__glSetError` with 0x500
  (`jalr` at 0x220caec) and returns its result.
  When the state is zero and a0 is below 0xa, it writes 0x14400 and then a0 as it arrived to abs 0x10000 (`sw` at 0x220ca90
  and 0x220ca94), writes 1 to abs 0x1030 (`sw` at 0x220ca98) and returns. When a0 is 2 (`beq` at 0x220ca88),
  the delay slot at 0x220cae0 first stores the byte 1 at the context plus 0x1c492. The delay slot of the
  return stores a single-precision zero (a float register zeroed earlier in the routine) to the context plus
  0x1c458 (`swc1` at 0x220caa4).
  When the state is 2 it stores the byte 1 at the context plus 0x18e68 (`sb` at 0x220caac), calls the function pointer
  at the context plus 0x4748 with the context as argument (`jalr` at 0x220cab4), writes 0 to abs 0x1030
  (`sw` at 0x220cac0), then calls the pointer found by following the context plus 0x1ad8 and then +0x38
  with a0 as it arrived (`jalr` at 0x220cacc) and returns that result.
  Inferred: the 0x500 and 0x502 exits are error reports, since `__glSetError` per its callee note records the
  first GL error code of the context.
  Unknown: the routines behind the indirect calls at 0x220cab4 and 0x220cacc; callee notes for them would settle it.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): the owner of abs 0x1030 and abs 0x10000 (the latter written at 0x220ca90 and 0x220ca94); no linked register row covers either.
  Evidence grade: inferred.
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
- `__glOdyim_Begin` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaabd00 (n32).
  Inferred: T, the word at abs 0x1010, is the context pointer, since the `__glSetError` note reads its context from the process-page word at address 4112 (0x1010); this routine also reads the word at abs 0x1018 (`lw` at 0xdaabd20) as a state word S, and the word at T+0x168d4 (`lw` at 0xdaabd0c).
  When the word at T+0x168d4 is nonzero and S is zero, S is replaced by 2 (the conditional move between 0xdaabd24 and 0xdaabd38); otherwise S is used as read.
  Effective state 0 (`beq` at 0xdaabd38) and arg0 at 0xa or above (`beq` at 0xdaabd7c) calls `__glSetError` with 0x500 (`jalr` at 0xdaabdf4) and returns its value.
  Effective state 0 and arg0 under 0xa: the constant 0x14400 goes to abs 0x4000 (`sw` at 0xdaabd90) and the constant 1 to abs 0x1018 (`sw` at 0xdaabd98).
  Next, arg0 itself is written to abs 0x4000 (`sw` at 0xdaabd9c).
  The routine then returns 1 (`jr ra` at 0xdaabda4); the delay-slot `swc1` at 0xdaabda8 stores to T+0x19ca8 the float literal at 0xdbde448, which is 0.0.
  In state 2 (`beq` at 0xdaabd4c) it stores byte 1 at T+0x168e4 (`sb` at 0xdaabdb0), calls through the word at +0x2d60 of T with T as a0 (`jalr` at 0xdaabdbc), clears abs 0x1018 (`sw` at 0xdaabdc4), calls through the word at +0x1c of the object at T+0x17ec with arg0 (`jalr` at 0xdaabdd4), and returns with that call's value.
  A remaining state value calls `__glSetError` with 0x502 (`jalr` at 0xdaabd58) and returns its value.
  Unknown: the code behind the two indirect calls through T+0x2d60 and T+0x17ec, which only a note on the targets would give.
  Evidence grade: inferred.
- `__glOdyim_Begin` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb391130 (n64).
  Begin request in the board library: the word at abs 0x1030, loaded at 0xb391150, is a state that this
  routine advances, and the context pointer is loaded from abs 0x1020 (`ld` at 0xb391130).
  When the context word at +0x18fe0 (`lw` at 0xb39113c) is nonzero and the state is zero, a conditional
  move at 0xb391164 makes the working state 2; a zero context word skips it (`beq` at 0xb391154).
  Working state 0: a0 is checked unsigned against 0xa (`sltiu` at 0xb39116c). Values of 0xa and above end in
  `__glSetError` with 0x500 (`jalr` at 0xb391218), whose result is returned.
  Smaller values store 1 to abs 0x1030 (`sw` at 0xb3911b4), 0x14400 to abs 0x4000 (`sw` at 0xb3911bc) and a0
  unchanged to abs 0x4000 (`sw` at 0xb3911c0). The `swc1` at 0xb3911cc sits in the return's delay slot and
  stores the single-precision zero from 0xb3911a8 at the context +0x1c670.
  Working state 2 (`beq` at 0xb39117c): a byte holding 1 goes to the context +0x18ff0 (`sb` at 0xb3911d4);
  the pointer at the context +0x45a0 is called with the context in a0 (`jalr` at 0xb3911e0); abs 0x1030 is
  cleared (`sw` at 0xb3911e8); then the pointer reached through the context +0x1ae0 and +0x38 is called
  with the original a0 (`jalr` at 0xb3911f8), and its result is returned.
  Working state 1 (the only other value) ends in `__glSetError` with 0x502 (`jalr` at 0xb391188).
  Inferred: both error codes go to `__glSetError`, the callee whose note says it keeps the context's first
  GL error code, so the 0x500 and 0x502 exits are error reports.
  Unknown: where the two indirect calls (0xb3911e0, 0xb3911f8) land; a callee note for those targets would settle it.
  Unknown: what owns abs 0x4000, the target of the two word writes at 0xb3911bc and 0xb3911c0; a linked register row for that address would settle it.
  Evidence grade: inferred.
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
- `__glOdyim_BindTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3a1380 (n64).
  Binds the texture object with name a1 to the target a0 in the board library's context, whose pointer is
  loaded from abs 0x1020 (`ld` at 0xb3a13b4); it ends by marking state in the context and setting the word at abs 0x1030 to 2.
  If the word at abs 0x1030 equals 1 (`beq` at 0xb3a13b8) it calls `__glSetError` with 0x502 (`jalr` at
  0xb3a164c) and returns. Otherwise a0 selects a small slot number kept in the frame at sp+8: 0xde0 stores
  0 (`sd` at 0xb3a1450), 0xde1 stores 1 (0xb3a1558), 0x806f stores 2 (0xb3a1408) and 0x8095 stores 3
  (0xb3a1564). Any other a0 calls `__glSetError` with 0x500 (`jalr` at 0xb3a13e4) and returns.
  With name a1 nonzero, `__glNamesLockData` (`jalr` at 0xb3a1474) looks the name up in the table at the
  context plus 0x18b40 and the result becomes the object. With name zero the object is the default one at the
  context plus 0x14590 plus the slot number times 0x9f0 (the shift and add chain at 0xb3a1418 to 0xb3a1448).
  If no object is found, the routine calls the function pointer at the start of the context with 0x9f0
  (`jalr` at 0xb3a1574); a null result calls `__glSetError` with 0x505 (`jalr` at 0xb3a1620) and returns.
  Otherwise `InitTextureObject` (`jalr` at 0xb3a159c) initialises the new object with name a1 and target a0,
  and `__glNamesNewData` (`jalr` at 0xb3a15bc) registers it. A result whose low byte is zero returns at
  once (`beq` at 0xb3a15cc); otherwise the word at offset 0 of the new object is incremented by one
  (`lw` at 0xb3a15d8, `sw` at 0xb3a15e4) and binding continues.
  An existing object whose word at +0x14 differs from a0 (`bne` at 0xb3a1490) gets `__glSetError` with 0x502
  (`jalr` at 0xb3a15f4) and a return.
  The bind itself: the pointer held in the slot 0x74e0 below the context plus 0x20000, indexed by 8 times
  the slot number, is the previous object. If its word at +0x10 is nonzero (`beq` at 0xb3a14bc),
  `__glNamesUnlockData` is called (`jalr` at 0xb3a14c8). The new object pointer is stored in that slot
  (`sd` at 0xb3a14d4), the object's word at +0xc8 gets 0x116200 ORed in (`lw` at 0xb3a14dc, `sw` at 0xb3a14e8),
  the context word at +0x18fe0 gets 0x200 ORed in (`sw` at 0xb3a14f4), and abs 0x1030 is set to 2 (`sw` at 0xb3a14fc).
  Last, the pointer at the context plus 0x18b48 is loaded; if it is zero or equals the new object the routine
  returns. Otherwise it calls `__glOdysseyTextureDeactivate` (the `bgezall` on `zero` at 0xb3a153c always calls),
  clears the pointer at the context plus 0x18b48 (`sd` at 0xb3a1544) and returns.
  Unknown: the callee reached through the pointer at the start of the context (`jalr` at 0xb3a1574); the bundle has no callee note for it.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): which device or state the word at abs 0x1030 belongs to; no linked register row names that address.
  Evidence grade: established.
- `__glOdyim_DeleteTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdabc010 (n32).
  Inferred: T, the word at abs 0x1010, is the context pointer, because the `__glSetError` note reads its context from the process-page word at address 4112 (0x1010); arg0 is a count and arg1 an array of 4-byte names, since the loop steps a pointer by 4 per name until it reaches arg1 plus arg0 shifted left 2 (`beq` at 0xdabc128).
  If the word at abs 0x1018 is 1 (`beq` at 0xdabc040) it calls `__glSetError` with 0x502 (`jalr` at 0xdabc278) and returns that value (`jr ra` at 0xdabc294).
  A negative count (`bltz` at 0xdabc048) calls `__glSetError` with 0x501 (`jalr` at 0xdabc258) and then continues like a zero count: a count of zero or less (`blez` at 0xdabc070) skips the loop and goes to the final step at 0xdabc1f8.
  For each name e, the routine loads the pointer P at T+0x164c0 (`lw` at 0xdabc130); if P is nonzero and the word at P+0x8 equals e (`beq` at 0xdabc144), it calls `__glOdysseyTextureDeactivate` with T and P (`bgezall` at 0xdabc1a4, always linking since its operand is the zero register) and then stores 0 to T+0x164c0 (`sw` at 0xdabc1ac).
  A nonzero e then scans four slots, a pointer starting at T+0x164ac and stepping 4 per pass for a pass counter that ends at 4 (`bne` at 0xdabc168); a slot whose object has the word at +0x8 equal to e (`beq` at 0xdabc15c) calls `__glNamesUnlockData` with T in a0 (`jalr` at 0xdabc0b0).
  On that match the slot is rewritten with the address of entry i in the table at T+0x11fc4, i being the pass counter (`sw` at 0xdabc0f4 and 0xdabc0f8, value built by the shifts at 0xdabc0b8 to 0xdabc0f4); the routine ORs 0x116200 into the word at T+0x168d0 (`lw` at 0xdabc100, `sw` at 0xdabc10c) and writes 2 to abs 0x1018 (`sw` at 0xdabc114).
  Inferred: consecutive names are batched, because the running value in s1 goes up by 1 per element (`addiu` at 0xdabc12c) and each element is compared with it (`bne` at 0xdabc11c); on a break the routine calls `__glNamesDeleteRange` with T, the word saved from T+0x164bc, the saved first value of the run in a2, and s1 minus that value in a3 (`jalr` at 0xdabc188 and 0xdabc1d0), then starts a new run from the current element.
  The final step makes the same `__glNamesDeleteRange` call for the last run (`jalr` at 0xdabc20c), ORs 0x200 into the word at T+0x168d4 (`lw` at 0xdabc21c, `sw` at 0xdabc228), writes 2 to abs 0x1018 (`sw` at 0xdabc23c) and returns the callee's value (`jr ra` at 0xdabc244).
  Unknown: the content of the routines `__glOdysseyTextureDeactivate` and `__glNamesUnlockData`, since no callee note covers them; their bodies would settle it.
  Evidence grade: inferred.
- `__glOdyim_DeleteTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3a1690 (n64).
  Walks the caller's array of a0 32-bit names at a1 and drops them from the table of names kept at the context
  plus 0x18b40 in runs, then marks state in the context; the context pointer comes from abs 0x1020 (`ld` at 0xb3a16bc).
  If the word at abs 0x1030 is 1 (`beq` at 0xb3a16c0) the routine calls `__glSetError` with 0x502 (`jalr` at
  0xb3a18f8) and returns that result. A negative a0 (`bltz` at 0xb3a16c8) calls `__glSetError` with 0x501
  (`jalr` at 0xb3a18d8) and then carries on; since a0 is not positive the walk is skipped (`blez` at 0xb3a16f0).
  Each pass reads the name at s0, which starts at a1 and steps by 4 until it reaches a1 plus 4 times a0
  (`beq` at 0xb3a17a8). The first name seeds a running value s1 that increases by one per pass; the loop
  tracks a run start in the frame and, when the name read at 0xb3a1798 differs from the running value
  (`bne` at 0xb3a179c), flushes the run with `__glNamesDeleteRange` (`jalr` at 0xb3a1808), whose count argument is
  the running value minus the run start. A zero name flushes the same way (`jalr` at 0xb3a1850) and takes the
  next name from the following array word. After the last name a final `__glNamesDeleteRange` call covers the
  open run (`jalr` at 0xb3a188c), and its result is the routine's return value.
  Each name is also checked against the object pointer at the context plus 0x18b48: when that object's +0x10 field equals
  the name (`beq` at 0xb3a17c4), the `bgezall` on `zero` at 0xb3a1824 (always taken, so a plain call) calls
  `__glOdysseyTextureDeactivate` with the context, and the `sd` at 0xb3a182c then clears the pointer at +0x18b48.
  A second check scans the four 8-byte slots starting 0x18b20 into the context (`bne` at 0xb3a17e8 ends after four
  passes); a slot object whose +0x10 word equals the name (`beq` at 0xb3a17dc) is handed to `__glNamesUnlockData`
  (`jalr` at 0xb3a1730). The slot is then rewritten, twice (`sd` at 0xb3a1774 and 0xb3a1778), with the default object
  address: the context plus 0x14590 plus an offset scaled by the slot index (a shift-and-add chain ahead of the first store).
  The word at the context plus 0x18fdc gets 0x116200 ORed in (`lw` at 0xb3a1780, `sw` at 0xb3a178c) and abs 0x1030 is set to 2
  (`sw` at 0xb3a1794). On the way out the word at the context plus 0x18fe0 gets 0x200 ORed in (`lw` at 0xb3a189c, `sw` at
  0xb3a18a8) and abs 0x1030 is set to 2 again (`sw` at 0xb3a18bc).
  Inferred: the 0x501 and 0x502 exits are error reports, since `__glSetError` per its callee note records the first error code of the context.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): which device or state abs 0x1030 belongs to; the linked rows give it no name.
  Evidence grade: inferred.
- `__glOdyim_FragmentMaterialfvSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd98a1a8 (o32).
  Forwards its four arguments to `__glim_FragmentMaterialfvSGIX` and then, for three values of `a0`, sends
  one or two records from the context at abs 0x1010 to `ApplyMaterialF`.
  The first call is made before any test (`jalr` at 0xd98a1d4, through the pointer at abs 0xdafe800 loaded
  at 0xd98a1b8), with the entry `a0` through `a3` unchanged.
  The reloaded `a0` is compared with 0x404, 0x405 and 0x408 (`beq` at 0xd98a1f0, 0xd98a1fc and 0xd98a204):
  0x404 makes one call (`jalr` at 0xd98a220), 0x405 makes one (`jalr` at 0xd98a23c), 0x408 makes two
  (`jalr` at 0xd98a260 and 0xd98a284), and any other value returns the word at abs 0x1010 (`beq` at
  0xd98a20c).
  Each of those calls passes the entry `a1` and `a2` and, as `a0`, the context pointer plus 0x7c70 (the
  calls at 0xd98a220 and 0xd98a260) or plus 0x7c90 (the calls at 0xd98a23c and 0xd98a284), through the
  pointer at abs 0xdafe400 plus 0x6c8c (`lw` at 0xd98a214, 0xd98a230, 0xd98a24c and 0xd98a274).
  Inferred: the callee note for `ApplyMaterialF` gives `a0` as a pointer to a record, `a1` as a parameter
  enumerant and `a2` as a pointer to floats, and says it packs one parameter into fixed-point fields and
  sends the record to the board.
  Inferred: the callee note for `__glim_FragmentMaterialfvSGIX` says it reads a float at its third argument
  and calls an error check whose nonzero result goes to `__glSetError`.
  Unknown: the layout of the records at +0x7c70 and +0x7c90 of the context, which the bundle does not give.
  The routine never writes `a3`, and the callee note lists only three arguments for `ApplyMaterialF`, so
  the `a3` left in the register at those calls is not an argument.
  After the first call the return value is the result of the last `ApplyMaterialF` call for 0x404, 0x405
  and 0x408; for any other `a0` it is the word loaded from abs 0x1010 (`lw` at 0xd98a1e8).
  Evidence grade: inferred.
- `__glOdyim_FragmentMaterialivSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd98a7ec (o32).
  The word read from absolute 0x1010 (`lw` at 0xd98a800) is saved to the frame slot at sp+0x24 by the `sw`
  at 0xd98a81c, in the delay slot of the `jalr` that first calls `__glim_FragmentMaterialivSGIX` with a0 to
  a3 passed through.
  The reload of that slot into v0 at 0xd98a82c overwrites the return value of that call.
  The entry a0 value, saved at sp+0x28, is compared with 0x404 at 0xd98a834, 0x405 at 0xd98a840 and
  0x408 at 0xd98a848.
  Entry a0 equal to 0x404 calls `ApplyMaterialI` once at 0xd98a864 with its first argument set to the
  0x1010 word plus 0x7c70; 0x405 calls it once at 0xd98a880 with the word plus 0x7c90; 0x408 calls it
  twice, with plus 0x7c70 at 0xd98a8a4 and then plus 0x7c90 at 0xd98a8c8.
  Every call passes the saved entry a1 as the second argument and a2 as the third; the first argument is
  built from the 0x1010 word, not from a0.
  Inferred: the committed note for `ApplyMaterialI` in another build gives its arguments as a pointer to
  a bit-field record, a parameter enumerant and a pointer to four 32-bit integers, which fits the three
  arguments passed here.
  Any other a0 value skips the calls and returns the 0x1010 word itself in v0 at 0xd98a8dc; the three
  matching paths return what the last `ApplyMaterialI` call returned.
  Unknown: the content of the records at the 0x1010 word plus 0x7c70 and plus 0x7c90, which the calls
  receive as the first argument; the route is a bundle for `ApplyMaterialI` at 0xd98849c in this binary.
  Unknown: the content of the routine at 0xd98a67c, the target of the entry call at 0xd98a818; its
  committed note covers `__glim_FragmentMaterialivSGIX` in another build at 0x3218910, so the route is a
  bundle for 0xd98a67c in this binary.
  Evidence grade: inferred.
- `__glOdyim_IglooVertex2dv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9ed89c (o32).
  Inferred: this is the dispatch for a double-precision vertex call; the committed notes for
  `__glOdyim_Vertex2dv` and its variants, in the IP30ODSY64 build, read two doublewords from argument 0 at
  +0 and +8 and convert them to single precision.
  Reading the pointer at 0x1010 (`lw` at 0xd9ed8a8) comes first; the routine keeps that word and a0 in the
  frame, and the call to `BeforeIgloo` at 0xd9ed8dc passes a0 to a3 along but runs only when the low two
  bits at the 0x1010 pointer plus 0x7b40 equal 3, since the `bnel` at 0xd9ed8c4 jumps over it.
  A switch on the word at the pointer plus 0x19dbc (`lw` at 0xd9ed8f8) picks: 0 or 1 gives
  `__glOdyim_Vertex2dv` at 0xd9ed934, 2 gives `__glOdyim_Vertex2dv_smallw` at 0xd9ed958, and 3 gives
  `__glOdyim_Vertex2dv_mag` at 0xd9ed98c or `__glOdyim_Vertex2dv_mag_line0` at 0xd9ed9a8, decided by the
  sign of the word at the pointer plus 0x7b70 shifted left by 9 (`bgez` at 0xd9ed97c): non-negative takes
  the `mag_line0` call, negative the `mag` call.
  Values outside 0 to 3 bypass the calls: the default block at 0xd9ed920 loads the word at the pointer plus
  0x7b40, and the `andi` at 0xd9ed928 keeps its low two bits.
  The exit at 0xd9ed9c0 compares that two-bit value with 3 in the `bnel` at 0xd9ed9c4, so `AfterIgloo` at
  0xd9ed9d4 runs only on equality.
  The return at 0xd9ed9e8 hands back v0 from `AfterIgloo` when that call ran; on the skip path v0 holds
  the masked low two bits of the 0x7b40 word reread there (`andi` at 0xd9ed928, 0xd9ed94c, 0xd9ed970 or
  0xd9ed9bc), a value other than 3.
  Only a0 is prepared for the vertex callees, as the entry value or the copy reloaded at 0xd9ed8ec; the
  call-argument listing sets no a1, a2 or a3 on any path.
  Inferred: the callee notes for the four vertex routines have them write 0x8080c801 and two converted
  floating-point words to absolute 0x10000, in three of them only on some branches, so the entry itself
  makes no device access.
  Unknown: the content of the callees at 0xdad7ac0, 0xdad82c0, 0xdad9480 and 0xdadb040 in this binary;
  their notes describe another build, so a bundle per address would settle it.
  Evidence grade: inferred.
- `__glOdyim_IglooVertex2fv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9edb48 (o32).
  Inferred: this selects among single-precision vertex routines; the committed notes for
  `__glOdyim_Vertex2fv` and its variants, in the IP30ODSY64 build, describe those callees as loading two
  floating-point words from argument 0 at +0 and +4.
  Before any selection, the word at absolute 0x1010 (`lw` at 0xd9edb54) is kept with a0 in the frame, and
  `BeforeIgloo` runs at 0xd9edb88 with a0 to a3 unchanged, gated on the low two bits at the pointer plus
  0x7b40 being 3 (the `bnel` at 0xd9edb70 skips it otherwise).
  Vertex selection reads the word at the pointer plus 0x19dbc (`lw` at 0xd9edba4): values 0 and 1 call
  `__glOdyim_Vertex2fv` at 0xd9edbe0, value 2 calls `__glOdyim_Vertex2fv_smallw` at 0xd9edc04, and value 3
  calls `__glOdyim_Vertex2fv_mag` at 0xd9edc38 or `__glOdyim_Vertex2fv_mag_line0` at 0xd9edc54 according to
  the sign of the word at the pointer plus 0x7b70 shifted left by 9 (`bgez` at 0xd9edc28): non-negative
  takes the `mag_line0` call, negative the `mag` call.
  With any other value, the routine falls to the default block, which loads the word at the pointer plus
  0x7b40 and keeps its low two bits via the `andi` at 0xd9edbd4, with no vertex call.
  The shared exit at 0xd9edc6c then sends that masked value through the `bnel` at 0xd9edc70, and
  `AfterIgloo` at 0xd9edc80 is called only when the value equals 3.
  At the return (0xd9edc94) v0 is the result of `AfterIgloo` if it was called; if not, v0 is the low two
  bits of the reread 0x7b40 word (`andi` at 0xd9edbd4, 0xd9edbf8, 0xd9edc1c or 0xd9edc68), which differ
  from 3.
  The vertex calls receive a0 alone, the entry value or its reload at 0xd9edb98; a1 to a3 are never set
  before them.
  Inferred: the callee notes for the four vertex routines have them write 0x8080c801 and the two loaded
  floating-point words to absolute 0x10000, in three of them only on some branches, so the entry itself
  makes no device access.
  Unknown: the content of the routines at 0xdad7b40, 0xdad8400, 0xdad9680 and 0xdadb340 in this
  binary, since the notes cover another build; each address needs its own bundle.
  Evidence grade: inferred.
- `__glOdyim_IglooVertex2i` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9edc9c (o32).
  Inferred: this is a dispatch for a vertex call with word-sized coordinates, because the committed notes
  for `__glOdyim_Vertex2i` and its variants, in the IP30ODSY64 build, move the low words of arguments 0 and
  1 into floating-point registers and convert them to single precision.
  It reads the 0x1010 pointer (`lw` at 0xd9edca8), keeps the word with a0 and a1 in the frame, and runs
  `BeforeIgloo` at 0xd9edcdc with a0 to a3 as received, provided the low two bits of the pointer plus 0x7b40
  equal 3; otherwise the `bnel` at 0xd9edcc4 jumps over the call.
  Selection uses the word at the pointer plus 0x19dbc (`lw` at 0xd9edcfc): 0 or 1 gives
  `__glOdyim_Vertex2i` at 0xd9edd38, 2 gives `__glOdyim_Vertex2i_smallw` at 0xd9edd5c, and 3 gives
  `__glOdyim_Vertex2i_mag` at 0xd9edd90 or `__glOdyim_Vertex2i_mag_line0` at 0xd9eddac, based on the sign of
  the pointer plus 0x7b70 word shifted left by 9 (`bgez` at 0xd9edd80): a non-negative value reaches
  the `mag_line0` call and a negative one the `mag` call.
  Other selector values reach the default block at 0xd9edd24, where the word at the pointer plus 0x7b40 is
  masked to two bits by the `andi` at 0xd9edd2c and no vertex routine runs.
  All paths meet at the exit at 0xd9eddc4, where the `bnel` at 0xd9eddc8 jumps past `AfterIgloo` unless the
  masked value is 3; the call itself sits at 0xd9eddd8.
  Returning at 0xd9eddec, the routine passes on `AfterIgloo`'s v0 when it called it, and otherwise v0 is
  the 0x7b40 word's low two bits from the `andi` at 0xd9edd2c, 0xd9edd50, 0xd9edd74 or 0xd9eddc0, never 3.
  The four vertex calls get a0 and a1, each either the entry value or the copy reloaded from the frame
  (0xd9edcec, 0xd9edcf0); no a2 or a3 is set for them.
  Inferred: the callee notes for the four vertex routines have them write 0x8080c800 and the low words of
  arguments 0 and 1 to absolute 0x10000, in three of them only on some branches, so the entry itself
  makes no device access.
  Unknown: the content of the routines at 0xdad7b80, 0xdad8480, 0xdad9780 and 0xdadb4c0 in this binary;
  the notes that exist cover another build, so each needs a bundle of its own.
  Evidence grade: inferred.
- `__glOdyim_IglooVertex2iv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9eddf4 (o32).
  Inferred: this is a dispatch for a vertex call taking two words, since the committed notes for
  `__glOdyim_Vertex2iv` and its variants, in the IP30ODSY64 build, read two words from argument 0 at +0 and
  +4 and convert them to single precision.
  The routine reads 0x1010 (`lw` at 0xd9ede00) and stores that pointer and a0 to the frame, and
  `BeforeIgloo` at 0xd9ede34 receives a0 to a3 unchanged, but the call is made only when the word at the
  pointer plus 0x7b40, masked to its low two bits, equals 3, since the `bnel` at 0xd9ede1c skips it
  otherwise.
  The word at the pointer plus 0x19dbc (`lw` at 0xd9ede50) chooses: 0 or 1 calls `__glOdyim_Vertex2iv` at
  0xd9ede8c, 2 calls `__glOdyim_Vertex2iv_smallw` at 0xd9edeb0, 3 calls `__glOdyim_Vertex2iv_mag` at
  0xd9edee4 or `__glOdyim_Vertex2iv_mag_line0` at 0xd9edf00, and the choice at 3 follows the sign of the
  pointer plus 0x7b70 word shifted left by 9 (`bgez` at 0xd9eded4): non-negative goes to `mag_line0`,
  negative to `mag`.
  A value outside 0 to 3 jumps to the default block (`lw` at 0xd9ede78), which loads the 0x7b40 word and
  clears all but its low two bits with the `andi` at 0xd9ede80.
  On every path, the exit at 0xd9edf18 tests the masked value against 3 with the `bnel` at 0xd9edf1c, and
  `AfterIgloo` at 0xd9edf2c runs only when they are equal.
  The value in v0 at the return (0xd9edf40) is `AfterIgloo`'s result on the path that calls it; on the
  other paths it is the masked 0x7b40 word from the `andi` at 0xd9ede80, 0xd9edea4, 0xd9edec8 or
  0xd9edf14, which cannot be 3.
  Each vertex call gets only a0, taken from the entry register or the frame copy at 0xd9ede44; the
  call-argument listing shows nothing set in a1 to a3.
  Inferred: the callee notes for the four vertex routines have them write 0x8080c800 and the two loaded
  words to absolute 0x10000, in three of them only on some branches, so the entry itself makes no device
  access.
  Unknown: the bodies of the entries 0xdad7bc0, 0xdad8540, 0xdad9880 and 0xdadb640 here; existing notes
  describe another build, so a bundle per address would settle it.
  Evidence grade: inferred.
- `__glOdyim_IglooVertex2s` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9edf48 (o32).
  Reads the word at absolute 0x1010 (`lw` at 0xd9edf58) as a base P, then hands its two halfword
  arguments to one of four vertex-path callees picked by the word at P+0x19dbc (`lw` at
  0xd9edfbc). It calls `BeforeIgloo` (`jalr` at 0xd9edf9c) only when the low two bits of the word
  at P+0x7b40 (`lw` at 0xd9edf6c) equal 3, because the `bne` at 0xd9edf84 jumps past that block
  otherwise. Selector 0 or 1 goes to `__glOdyim_Vertex2s` (`jalr` at 0xd9edff8), 2 goes to
  `__glOdyim_Vertex2s_smallw` (`jalr` at 0xd9ee01c), and 3 splits on the sign of the word at
  P+0x7b70 (`lw` at 0xd9edfe0) shifted left 9: non-negative (`bgez` at 0xd9ee040) calls
  `__glOdyim_Vertex2s_mag_line0` (`jalr` at 0xd9ee06c), negative calls
  `__glOdyim_Vertex2s_mag` (`jalr` at 0xd9ee050), and any other value calls nothing. The tail
  rereads P+0x7b40 on each path and, when its low two bits are 3 (`bnel` at 0xd9ee088,
  fall-through), calls `AfterIgloo` (`jalr` at 0xd9ee098). Entry a0 and a1 are sign-extended halfwords (left shift then
  arithmetic right shift by 0x10): `BeforeIgloo` gets those two with a2 and a3 as received, and the vertex
  callees get a0 and a1 as the extended entry values or as halfword reloads from the frame at +0x2 and
  +0x6. When `AfterIgloo` is skipped, v0 at the return (0xd9ee0ac) is the masked low two bits, not 3;
  otherwise it is what `AfterIgloo` returned. Inferred: the committed notes for the
  four callees record word stores to absolute 0x10000 that begin with 0x8080c800 and carry
  argument words, with the stores in `__glOdyim_Vertex2s_smallw`, `__glOdyim_Vertex2s_mag` and
  `__glOdyim_Vertex2s_mag_line0` conditional on their own branches. Unknown: the field layout of
  the block at P, including the words at +0x19dbc, +0x7b40 and +0x7b70; a register table for that
  block would settle it. Unknown: which device the stores to absolute 0x10000 land in; a linked
  register row for that address would settle it.
  Evidence grade: inferred.
- `__glOdyim_IglooVertex2sv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9ee0b4 (o32).
  Forwards its entry a0 value to one of four vertex-path callees, the choice made by the word at
  P+0x19dbc (`lw` at 0xd9ee110), where P is the word at absolute 0x1010 (`lw` at 0xd9ee0c0).
  Before that dispatch the `bnel` at 0xd9ee0dc skips the `jalr` at 0xd9ee0f4 (`BeforeIgloo`, given
  the four entry argument registers) unless the low two bits of the word at P+0x7b40 (`lw` at
  0xd9ee0d0) are 3. Selector 0 or 1 calls `__glOdyim_Vertex2sv` (`jalr` at 0xd9ee14c), 2 calls
  `__glOdyim_Vertex2sv_smallw` (`jalr` at 0xd9ee170), and 3 calls
  `__glOdyim_Vertex2sv_mag_line0` (`jalr` at 0xd9ee1c0) when the word at P+0x7b70 (`lw` at
  0xd9ee134) shifted left 9 is non-negative (`bgez` at 0xd9ee194), or `__glOdyim_Vertex2sv_mag`
  (`jalr` at 0xd9ee1a4) when it is negative; a selector matching none of these makes no call. On exit the word at
  P+0x7b40 is read again on every path, and the `bnel` at 0xd9ee1dc returns directly unless its low
  two bits are 3, in which case the `jalr` at 0xd9ee1ec runs `AfterIgloo`. Inferred: the four
  callees have committed notes that place word stores to absolute 0x10000 ahead of the halfword
  values loaded through the pointer, opening with 0x8080c800, and three of those stores sit behind
  branches inside their callees. Unknown: the content of the fields at +0x19dbc, +0x7b40 and
  +0x7b70 of the block at P; no linked row or datasheet excerpt names them, so a structure table
  would settle it. Unknown: the hardware register behind absolute 0x10000, which only a row for
  that register could identify.
  Evidence grade: inferred.
- `__glOdyim_IglooVertex3dv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9ee370 (o32).
  Passes its entry a0 value to one of four vertex-path callees, selected by the word at P+0x19dbc
  (`lw` at 0xd9ee3cc), where P is the word at absolute 0x1010 (`lw` at 0xd9ee37c). The `bnel` at
  0xd9ee398 jumps past the `jalr` at 0xd9ee3b0 (`BeforeIgloo`, with the four entry argument
  registers) unless the low two bits of the word at P+0x7b40 (`lw` at 0xd9ee38c) are 3. Selector 0
  or 1 calls `__glOdyim_Vertex3dv` (`jalr` at 0xd9ee408), 2 calls `__glOdyim_Vertex3dv_smallw`
  (`jalr` at 0xd9ee42c), and 3 calls `__glOdyim_Vertex3dv_mag_line0` (`jalr` at 0xd9ee47c) if the
  word at P+0x7b70 (`lw` at 0xd9ee3f0) shifted left 9 is non-negative (`bgez` at 0xd9ee450), or
  `__glOdyim_Vertex3dv_mag` (`jalr` at 0xd9ee460) if it is negative; any selector outside those four cases calls no vertex routine.
  After the dispatch every path reads the word at P+0x7b40, and the `bnel` at 0xd9ee498 returns
  directly unless its low two bits are 3, when the `jalr` at 0xd9ee4a8 calls `AfterIgloo`.
  Inferred: the committed notes for the four callees show stores to absolute 0x10000 led by
  0x8080cc03 and followed by three floating-point words, and the stores in
  `__glOdyim_Vertex3dv_smallw`, `__glOdyim_Vertex3dv_mag` and `__glOdyim_Vertex3dv_mag_line0` sit
  behind branches inside those callees. Unknown: the content of the block at P beyond the three
  offsets read here; a structure table for it would settle that.
  Inferred: the three floating-point words are the doublewords at entry argument 0 offsets 0, +8 and
  +0x10 narrowed to single precision, since the committed note for `__glOdyim_Vertex3dv` reads them with
  that conversion before the stores.
  Evidence grade: inferred.
- `__glOdyim_IglooVertex3i` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9ee784 (o32).
  Passes its entry a0, a1 and a2 to one of four vertex-path callees, selected by the word at
  P+0x19dbc (`lw` at 0xd9ee7ec), where P is the word at absolute 0x1010 (`lw` at 0xd9ee790). The
  `bnel` at 0xd9ee7ac skips the `jalr` at 0xd9ee7c8 (`BeforeIgloo`, given all four argument
  registers) unless the low two bits of the word at P+0x7b40 (`lw` at 0xd9ee7a0) are 3. Selector 0
  or 1 calls `__glOdyim_Vertex3i` (`jalr` at 0xd9ee828), 2 calls `__glOdyim_Vertex3i_smallw`
  (`jalr` at 0xd9ee84c), and 3 calls `__glOdyim_Vertex3i_mag_line0` (`jalr` at 0xd9ee89c) when the
  word at P+0x7b70 (`lw` at 0xd9ee810) shifted left 9 is non-negative (`bgez` at 0xd9ee870), else
  `__glOdyim_Vertex3i_mag` (`jalr` at 0xd9ee880); a selector that matches none of them skips the vertex calls. On exit the word at
  P+0x7b40 is reread, and the `bnel` at 0xd9ee8b8 returns at once unless its low two bits are 3, in
  which case the `jalr` at 0xd9ee8c8 runs `AfterIgloo`. Inferred: `__glOdyim_Vertex3i_smallw`,
  `__glOdyim_Vertex3i_mag` and `__glOdyim_Vertex3i_mag_line0` have committed notes listing word
  stores to absolute 0x10000, each opening with 0x8080cc02 and carrying the low words of arguments
  0 through 2 behind a branch. Unknown: the block at P that the offsets +0x19dbc, +0x7b40 and
  +0x7b70 index, since no linked row or datasheet excerpt names those fields; a register table for
  it would settle that. Unknown: which hardware sits behind the 0x10000 stores; a register row keyed
  to that address is the route.
  Evidence grade: inferred.
- `__glOdyim_IglooVertex3sv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9eebb8 (o32).
  Hands its entry a0 value to one of four vertex-path callees picked by the word at P+0x19dbc
  (`lw` at 0xd9eec14), where P is the word at absolute 0x1010 (`lw` at 0xd9eebc4).
  `BeforeIgloo` runs (`jalr` at 0xd9eebf8, with the four entry argument registers) only on the
  fall-through of the `bnel` at 0xd9eebe0, which tests the low two bits of the word at P+0x7b40
  (`lw` at 0xd9eebd4) against 3. Selector 0 or 1 calls `__glOdyim_Vertex3sv` (`jalr` at 0xd9eec50),
  2 calls `__glOdyim_Vertex3sv_smallw` (`jalr` at 0xd9eec74), and 3 calls
  `__glOdyim_Vertex3sv_mag_line0` (`jalr` at 0xd9eecc4) when the word at P+0x7b70 (`lw` at
  0xd9eec38) shifted left 9 is non-negative (`bgez` at 0xd9eec98), or `__glOdyim_Vertex3sv_mag`
  (`jalr` at 0xd9eeca8) otherwise; for any other selector no vertex routine runs. Each path then rereads the word at
  P+0x7b40, and at the `bnel` at 0xd9eece0 it either returns or, when the low two bits are 3,
  reaches the `jalr` at 0xd9eecf0 that calls `AfterIgloo`. Inferred: the four callees carry
  committed notes recording word stores to absolute 0x10000 that open with 0x8080cc02 and continue
  with halfword values read through the pointer; three of those stores occur only on some paths.
  Unknown: the content of the structure P points at, including the words at +0x19dbc, +0x7b40 and
  +0x7b70; a table for that structure would settle it. Unknown: the device that takes the stores to absolute
  0x10000, which only a register row for that address could identify.
  Evidence grade: inferred.
- `__glOdyim_IglooVertex4d` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9eed0c (o32).
  Inferred: it picks one of four four-double vertex senders from a selector word and brackets the
  call with `BeforeIgloo` and `AfterIgloo`, because the callee notes for `__glOdyim_Vertex4d_smallw`,
  `__glOdyim_Vertex4d_mag` and `__glOdyim_Vertex4d_mag_line0` describe each as a sender of four
  doubles.
  It reads the word at absolute 0x1010 as a base address (`lw` at 0xd9eed18), then the selector
  word at that base plus 0x19dbc (`lw` at 0xd9eed6c), and compares the selector with 0, 1, 2 and 3
  at 0xd9eed78, 0xd9eed80, 0xd9eed8c and 0xd9eed94.
  When the word at base plus 0x7b40, masked with 0x3, equals 3 (the `bnel` at 0xd9eed34 falls
  through), it first calls `BeforeIgloo` at 0xd9ecac4 (the `jalr` at 0xd9eed4c) with its entry a0 to a3.
  Selector 0 calls `__glOdyim_Vertex4d` at 0xdad7f00 (the `jalr` at 0xd9eedb8), selectors 1 and 2
  call `__glOdyim_Vertex4d_smallw` at 0xdad8d80 (the `jalr` at 0xd9eede4), and selector 3 tests the
  word at base plus 0x7b70 shifted left by 9 (`bgez` at 0xd9eee10); a non-negative result calls
  `__glOdyim_Vertex4d_mag_line0` at 0xdadc8c0 (the `jalr` at 0xd9eee4c), and a negative one calls
  `__glOdyim_Vertex4d_mag` at 0xdada4c0 (the `jalr` at 0xd9eee28).
  The sender's first two doubles are reloaded into f12 and f14 from the frame (`ldc1` at 0xd9eed5c
  and 0xd9eed60), and the third and fourth doubles come from the caller's stack at entry +0x10 and
  +0x18 and are copied to the same offsets of the outgoing frame before each call.
  After the dispatch it rereads the word at base plus 0x7b40 under the mask 0x3 at 0xd9eee68 and
  calls `AfterIgloo` at 0xd9ec958 (the `jalr` at 0xd9eee78) only when the masked value equals 3,
  otherwise returning at 0xd9eee8c; a selector outside 0 to 3
  makes no sender call and reaches the same recheck. A call to `AfterIgloo` returns its value.
  Inferred: the callee note for `__glOdyim_Vertex4d` says it writes the word 0x8080d005 followed by
  four floating-point words to absolute 0x10000.
  Unknown: whether the call to `BeforeIgloo` at 0xd9ecac4 alters the selector word, because the
  committed note for it records no effects; a committed note carrying the body of `BeforeIgloo`
  would settle it.
  Evidence grade: inferred.
- `__glOdyim_IglooVertex4dv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9eee94 (o32).
  Inferred: its argument a0 is a pointer to four doubles that the dispatch below hands to one of
  four callees; the committed note for `__glOdyim_Vertex4dv_smallw` describes that callee as a
  sender that takes a pointer in a0 to four doubles.
  It spills a0 to +0x28 (`sw` at 0xd9eeecc) and loads the word at absolute 0x1010 (`lw` at
  0xd9eeea0) to use as the base for the selector word at base plus 0x19dbc (`lw` at 0xd9eeef0),
  which its branches test against 0, 1, 2 and 3 at 0xd9eeef8, 0xd9eef00, 0xd9eef08 and 0xd9eef10.
  The `bnel` at 0xd9eeebc falls through when the low two bits of the word at base plus 0x7b40 equal
  3, and that path calls `BeforeIgloo` at 0xd9ecac4 (the `jalr` at 0xd9eeed4) with the entry a0 to
  a3 before selecting.
  Selector 0 calls `__glOdyim_Vertex4dv` at 0xdad7f40 (the `jalr` at 0xd9eef2c), selectors 1 and 2
  call `__glOdyim_Vertex4dv_smallw` at 0xdad8e40 (the `jalr` at 0xd9eef50), and selector 3 tests the
  word at base plus 0x7b70 shifted left by 9 (`bgez` at 0xd9eef74), calling
  `__glOdyim_Vertex4dv_mag_line0` at 0xdadca80 (the `jalr` at 0xd9eefa0) when the test passes and
  `__glOdyim_Vertex4dv_mag` at 0xdada600 (the `jalr` at 0xd9eef84) when it fails; each of the four
  callees receives the entry a0 as its first argument.
  Each path ends at the test of the word at base plus 0x7b40 masked with 0x3 (0xd9eefbc), which runs
  `AfterIgloo` at 0xd9ec958 (the `jalr` at 0xd9eefcc) on a match with 3 and otherwise returns at
  0xd9eefe0; a selector outside 0 to 3 skips straight to that test.
  Its frame stores save ra, gp, v1 and a0 at +0x1c, +0x18, +0x24 and +0x28, and no store leaves the
  frame.
  Inferred: the committed note for `__glOdyim_Vertex4dv` records a store of 0x8080d005 followed by
  four floating-point words at absolute 0x10000 with no test attached, and the notes for
  `__glOdyim_Vertex4dv_smallw`, `__glOdyim_Vertex4dv_mag` and `__glOdyim_Vertex4dv_mag_line0` make
  that store conditional on a branch.
  Unknown: any change that `BeforeIgloo` makes to the word at 0x1010 or to the selector before
  0xd9eeef0 reads it; the body of `BeforeIgloo` would settle that.
  Evidence grade: inferred.
- `__glOdyim_SoftIndexub` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda0789c (o32).
  Inferred: it forwards a byte taken from its argument a0 to `__glOdyim_Indexub` and then to
  `__glim_Indexub`, because the note for the first lists a store to absolute 0x10000, and the note
  for the second lists a store through the doubleword at absolute 0x1020.
  It saves ra, a0 and gp in its frame (`sw` at 0xda078b0, 0xda078b4 and 0xda078b8), then loads the
  byte at offset 3 of the saved a0 word into a0 in the delay slot (`lbu` at 0xda078c0) of the call
  to `__glOdyim_Indexub` at 0xdadf680 (the `jalr` at 0xda078bc), whose other arguments are its
  entry a1, a2 and a3.
  After that call returns, it reloads gp and the same byte (`lw` at 0xda078c4, `lbu` at 0xda078c8)
  and calls `__glim_Indexub` at 0xda460f4 (the `jalr` at 0xda078d0) with the byte as its first
  argument.
  The exit at 0xda078e4 returns the value of `__glim_Indexub`, in v0 and f0.
  Inferred: the committed note for `__glOdyim_Indexub` says it writes 0xc580c406 and then the low
  word of its entry argument 0 to absolute 0x10000, so the first call writes two words there.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): the device that takes the two words at absolute 0x10000, and the register at offset
  +0x270 of the record at 0x1020 that `__glim_Indexub` writes; a register map for each would settle
  them.
  Evidence grade: inferred.
- `__glOdyim_SoftScratchColor3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda079ec (o32).
  Inferred: it takes three double-precision values, f12, f14 and a third double read from the
  caller's stack at entry +0x10, and calls `__glOdyim_ScratchColor3d` and then `__glim_Color3d`,
  because the committed note for the first converts three incoming double values to single
  precision.
  It saves f12 and f14 at +0x28 and +0x30 (`sdc1` at 0xda07a0c and 0xda07a10) and the stack double,
  held in f4, at +0x10 (`sdc1` at 0xda07a18, in the delay slot of the first call), then calls
  `__glOdyim_ScratchColor3d` at 0xdade340 (the `jalr` at 0xda07a14) with its entry a0 to a3.
  After that call it reloads the stack double into f6 (`ldc1` at 0xda07a20), reloads f12 and f14
  from +0x28 and +0x30 (`ldc1` at 0xda07a24 and 0xda07a2c), stores f6 back to +0x10 (`sdc1` at
  0xda07a30), and calls `__glim_Color3d` at 0xda44ff8 (the `jalr` at 0xda07a34).
  No integer argument register is set between the first call and the call at 0xda07a34, so the three
  doubles travel to `__glim_Color3d` in f12, f14 and the stack slot at +0x10, as they did to the
  first callee.
  When it exits at 0xda07a48, v0 and f0 hold the value `__glim_Color3d` returned.
  Inferred: `__glOdyim_ScratchColor3d` writes 0xce80cc0e and three floating-point words to absolute
  0x10000, according to its committed note, so the first call sends its words to that address.
  Inferred: `__glim_Color3d` writes four words at offsets +0x260 through +0x26c within a doubleword
  read from absolute 0x1020, per its committed note, so the second call writes into that record.
  Evidence grade: inferred.
- `__glOdyim_SoftScratchColor3f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda07a9c (o32).
  Inferred: it takes f12, f14 and a2 as inputs and hands them on to `__glOdyim_ScratchColor3f` and
  then to `__glim_Color3f`, because both committed notes place their stores at absolute 0x10000 or
  inside the record that absolute 0x1020 points to.
  Before the first call it spills f12 and f14 as words at +0x20 and +0x24 (`swc1` at 0xda07ab4 and
  0xda07ab8) and the entry a2 at +0x28 (`sw` at 0xda07ac0), reloads f14 (`lwc1` at 0xda07ac4) and f12
  (`lwc1` in that call's delay slot), and the `jalr` at 0xda07ac8 enters `__glOdyim_ScratchColor3f`
  at 0xdade440 with the entry a0 to a3 as arguments.
  Following the return, the routine restores gp, f12, f14 and the saved a2 (`lw` at 0xda07ad0,
  `lwc1` at 0xda07ad4 and 0xda07ad8, `lw` at 0xda07ae0), and the `jalr` at 0xda07ae4 enters
  `__glim_Color3f` at 0xdae8000 with a2 holding the entry value.
  The last instruction, `jr ra` at 0xda07af8, hands back `__glim_Color3f`'s return in v0 and f0.
  Inferred: according to its committed note, `__glOdyim_ScratchColor3f` puts the word 0xce80cc0e at
  absolute 0x10000 and follows it with three floating-point words, so the first call sends its
  words to that address.
  Inferred: per the committed note, `__glim_Color3f` stores f14, f13 and f12 as words at +0x268,
  +0x264 and +0x260 inside a doubleword read from absolute 0x1020, so the second call writes into
  that record.
  Unknown: the target of the `jalr` at 0x32c3a14 inside `__glim_Color3f`, which its committed note
  leaves unnamed; a note for that callee would settle it.
  Evidence grade: inferred.
- `__glOdyim_SoftScratchColor4d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda07f78 (o32).
  Does not touch the device directly; it runs `__glOdyim_ScratchColor4d` and then `__glim_Color4d` in turn.
  The `jalr` at 0xda07fa8 calls `__glOdyim_ScratchColor4d` at 0xdadeb40 with a0 to a3 as they
  arrived at entry.
  It saves f12 and f14 at entry +0x0 and +0x8 and copies the doubles at entry +0x10 and +0x18 into
  frame slots at entry -0x20 and -0x18 before that call, then repeats the copy and reloads f12 and
  f14 before the second call (`ldc1` at 0xda07fc0 and 0xda07fc4).
  Inferred: the committed note for the routine of the same name in the IP30ODSY64 build says it
  stores the word 0xffffffffce80d015 and then four floating-point words to absolute 0x10000, so the
  first call sends its words to that address.
  The `jalr` at 0xda07fcc calls `__glim_Color4d` at 0xda458fc, and the return at 0xda07fe0 gives
  back its v0 and f0.
  No integer argument register is set before the call at 0xda07fcc; the four doubles reach it in
  f12, f14 and the two stack slots at +0x10 and +0x18.
  Inferred: the committed note for `__glim_Color4d` records stores through the doubleword read from
  absolute 0x1020 at +0x26c, +0x268 and +0x264, so the second call writes into that record.
  Evidence grade: inferred.
- `__glOdyim_SoftScratchIndexf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda08524 (o32).
  Reaches no device register itself; its work is the pair of calls to `__glOdyim_ScratchIndexf` and `__glim_Indexf`.
  Through the `jalr` at 0xda08544, `__glOdyim_ScratchIndexf` at 0xdadf3c0 receives a0 to a3 unchanged from entry, and that call's delay slot reloads f12 from the single-precision word saved at entry +0x0 (`swc1` at 0xda0853c).
  Before the second call the same entry +0x0 word is reloaded into f12 (`lwc1` at 0xda08550), and the `jalr` at 0xda08558 calls `__glim_Indexf` at 0xda46058.
  Inferred: the committed note for the IP30ODSY64 routine of the same name says the first callee stores the word 0xffffffffce80c407 at absolute 0x10000 and then the f12 word there, so the f12 argument reaches that address.
  Inferred: the committed note for the IP30ODSY64 `__glim_Indexf` says it stores entry f12 as a word at +0x270 from the doubleword read at absolute 0x1020, so the second call writes the same f12 value into that record.
  No integer argument register is set before the call at 0xda08558, so the single-precision index travels to `__glim_Indexf` in f12 alone.
  The return at 0xda0856c gives back v0 and f0 from `__glim_Indexf`.
  Evidence grade: inferred.
- `__glOdyim_Vertex2d_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231c300 (n64).
  Same shape as the vertex fast path in this library, here with writes to abs 0x10000: the double arguments in f12
  and f13 are narrowed to single precision, six float conditions are checked against the blocks at the pointers
  abs 0x1038 (P) and abs 0x1040 (Q), and only if all hold are three words stored to abs 0x10000. Any failure leaves
  through the pointer at Q+0x20.
  Let w be P+0x3c plus f12 times P+0x30 plus f13 times P+0x34, built with two multiply-adds after the loads at
  0x231c310 to 0x231c320. The `swc1` at 0x231c334 stores w to Q+0x8. w times Q+0x8 must equal its own absolute
  value (`c.ueq.s` at 0x231c344, `bc1f` at 0x231c34c), meaning it is not negative, and a NaN passes.
  The sum P+0xc plus f12 times P+0x0 plus f13 times P+0x4 is then compared by absolute value with the absolute
  value of w times Q+0x4, and `bc1t` at 0x231c370 bails out when the latter is smaller or the pair is unordered
  (`c.ult.s` at 0x231c368).
  That sum plus w times Q+0xc, when non-negative (`c.ueq.s` at 0x231c380; `bc1f` at 0x231c388 skips the test
  otherwise), must not be below w times Q+0x18 (`c.ult.s` at 0x231c390, `bc1t` at 0x231c398).
  The second half repeats with the sum P+0x1c plus f12 times P+0x10 plus f13 times P+0x14 (`c.ult.s` at 0x231c3bc,
  `bc1t` at 0x231c3c4) and Q+0x10 in place of Q+0xc (`c.ueq.s` at 0x231c3d4, `bc1f` at 0x231c3dc, then `c.ult.s` at
  0x231c3e4 and `bc1t` at 0x231c3ec) against w times Q+0x18.
  If every check passes, the `sw` at 0x231c400 writes the word 0xffffffff8080c801, then the narrowed f12 and f13 follow to the
  same address (`swc1` at 0x231c404 and, in the delay slot of the return, 0x231c40c); v0 holds 0x10000 on return.
  The bail-out at 0x231c410 picks up t9 from Q+0x20, zeroes f14, loads f15 with a single-precision one and
  leaves via the `jr` at 0x231c41c, a0 to a3 as received.
  Unknown: the landing point of the jump at 0x231c41c, whose pointer is read from Q+0x20 while running.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): the identity of whatever sits at abs 0x10000; no linked register row names it.
  Evidence grade: established.
- `__glOdyim_Vertex2d_mag_line0` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49cbc0 (n64).
  Takes two doubles in f12 and f13, narrows both to single precision, and runs a series of float tests against
  the blocks reached from the pointers at abs 0x1038 (P) and abs 0x1040 (Q). When every test passes it writes a
  header word and the two floats directly to abs 0x4000; when one fails it tail-calls the pointer at Q+0x20.
  Two multiply-add steps after the loads of P+0x30 and P+0x34 (`lwc1` at 0xb49cbd0 and 0xb49cbd8) give
  w = P+0x3c + f12 * P+0x30 + f13 * P+0x34. The `swc1` at 0xb49cbf4 stores w to Q+0x8, and w is kept in a
  second register. The first product, w times Q+0x8, and the second, w times Q+0x4, are formed and taken to absolute values.
  The `bc1f` at 0xb49cc0c bails out when the first product differs from its absolute value (`c.ueq.s` at 0xb49cc04),
  that is when it is negative; NaN passes.
  The first sum is P+0xc + f12 * P+0x0 + f13 * P+0x4. The `bc1t` at 0xb49cc30 bails out when the second
  product's absolute value is below the absolute value of that sum or the two are unordered (`c.ult.s` at 0xb49cc28).
  Next the sum plus w times Q+0xc is formed, and Q+0x18 times w is the bound. If that value is non-negative (`c.ueq.s`
  at 0xb49cc40, `bc1f` at 0xb49cc48 skips the step otherwise), `bc1t` at 0xb49cc58 bails out when it is below the
  bound or unordered (`c.ult.s` at 0xb49cc50).
  The same three steps repeat with the sum P+0x1c + f12 * P+0x10 + f13 * P+0x14 (`c.ult.s` at 0xb49cc7c, `bc1t` at
  0xb49cc84), then w times Q+0x10 added to it (`c.ueq.s` at 0xb49cc94, `bc1f` at 0xb49cc9c) and a final bound test
  against Q+0x18 times w (`c.ult.s` at 0xb49cca4, `bc1t` at 0xb49ccac).
  Once every test is passed, the `sw` at 0xb49ccbc stores the word 0xffffffff8080c801 to abs 0x4000, then the narrowed
  f12 and f13 values go to the same address (`swc1` at 0xb49ccc0 and, in the return's delay slot, 0xb49ccc8).
  Every bail-out lands at 0xb49cccc: t9 comes from Q+0x20, f14 is zeroed, f15 gets a single-precision one, and the
  `jr` at 0xb49ccd8 goes there with a0 to a3 as received.
  Unknown: the destination of the tail jump at 0xb49ccd8; its pointer is only known at run time.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): the device behind abs 0x4000, where three words are stored; nothing in the linked rows labels it.
  Evidence grade: established.
- `__glOdyim_Vertex2d_mag` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad9380 (o32).
  Two-coordinate vertex sender for the 6.5.30 build, driven by three float tests: narrows the two incoming doubles in f12 and f14 to single precision at entry.
  It reads the record pointers A at absolute 0x1020 and B at absolute 0x1024 (`lw` at 0xdad9388 and 0xdad938c) and
  builds w' in single precision as A[+0x3c] plus f12 times A[+0x30] plus f14 times A[+0x34]. The float already at B+0x8 (loaded at 0xdad93a0), is multiplied by w', and w' then replaces it at B+0x8 (`swc1` at 0xdad93b8), ; w' times the float at B+0x4 is kept for the later compares.
  The path is picked by three compares. The compare at 0xdad93c8 sets a flag when the absolute value of the w'-times-old-B+0x8
  product equals the product itself or is unordered, and `bc1f` at 0xdad93d0 sends a negative product to the fallback.
  The two less-than-or-unordered compares at 0xdad93f0 and 0xdad9418 each compare the absolute value of that B+0x4 product with the absolute value of a
  second sum, built from A[+0xc], f12 x A[+0x0] and f14 x A[+0x4] (first), then A[+0x1c], f12 x A[+0x10] and f14 x A[+0x14] (second);
  the `bc1t` at 0xdad93f8 and 0xdad9420 divert to the fallback when the w' term is smaller, or on an unordered result.
  With every test passed, the routine sets v0 to 0x10000, writes the word 0xffffffff8080c801 there (`sw` at 0xdad942c), then writes the single-precision f12 (`swc1` at 0xdad9430) and f14 (`swc1` in the return delay slot at 0xdad9438) to the same address, and returns 0x10000 in v0.
  The fallback block at 0xdad943c: t9 is loaded from B+0x20 and the routine is tail-called with `jr` at 0xdad9444, with a0 and a1 as they
  arrived, a2 zero and a3 set to 0x3f800000 by the `lui` in the delay slot at 0xdad9448.
  Unknown: the identity of the routine named by the pointer at B+0x20 and of the register at absolute 0x10000; only an address map of 0x10000 and the record at 0x1024 can settle them.
  Evidence grade: established.
- `__glOdyim_Vertex2d_mag` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231ac00 (n64).
  Takes two doubles in f12 and f13 and narrows both to single precision, runs three float tests against
  blocks reached from the pointers at abs 0x1038 and abs 0x1040, and on success writes a header word and the
  two floats straight to abs 0x10000; otherwise it tail-calls the pointer at +0x20 of the second block.
  The first block (pointer at abs 0x1038) is read at +0x30, +0x34 and +0x3c, and the second (abs 0x1040) at +0x4 and +0x8. Two
  multiply-add steps (the two words after the load at 0x231ac20) form the f12 value times the +0x30 word plus the f13 value times the +0x34 word plus the
  +0x3c value. That sum is stored to the second block at +0x8 (`swc1` at 0x231ac30), then multiplied by the
  +0x8 value and by the +0x4 value, and both products are reduced to absolute values.
  The `bc1f` at 0x231ac48 leaves for the tail call when the first product differs from its absolute value, so a
  negative first product bails out; a NaN passes (compare `c.ueq.s` at 0x231ac40).
  Two more sums follow, each from three words of the first block: +0xc, +0x0 and +0x4, then +0x1c, +0x10 and +0x14, each
  combined with the f12 and f13 values by the same multiply-add steps. After each the absolute value is compared with the
  second product's absolute value (`c.ult.s` at 0x231ac60 and 0x231ac80); `bc1t` at 0x231ac68 and 0x231ac88 leaves for
  the tail call when that product is below the sum or the two are unordered.
  With all three tests passed, it stores the word 0xffffffff8080c801 to abs 0x10000 (`sw` at
  0x231ac94), then the narrowed f12 and f13 values to the same address (`swc1` at 0x231ac98 and, in the return's
  delay slot, 0x231aca0).
  A bail-out lands at 0x231aca4, which loads the pointer at the second block +0x20, sets f14 to zero and f15 to a
  single-precision one (the `lui` and `mtc1` before the `jr` at 0x231acb0), and jumps with a0 to a3 untouched; the
  doubles in f12 and f13 were already narrowed.
  Unknown: the destination of the tail jump at 0x231acb0, taken from a pointer; a callee note for that address would settle it.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): what sits at abs 0x10000, the target of three stores; the linked rows list nothing for it.
  Evidence grade: established.
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
- `__glOdyim_Vertex2d_smallw` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbadf00 (n32).
  Narrows its two double arguments in $f12 and $f13 to single precision in place (the first two instructions of the routine), loads the records at abs 0x1020 and abs 0x1024 (`lw` at 0xdbadf08 and 0xdbadf0c), computes a value in $f8 from the words at +0x30, +0x34 and +0x3c of the first record, and then either writes to abs 0x4000 and returns or tail-jumps through the word at +0x20 of the second record.
  The two instructions after the load at 0xdbadf20, which the tool lists as coprocessor-branch instructions, are multiply-adds: they add $f12 times the +0x30 word and $f13 times the +0x34 word into $f8, which was loaded from +0x3c (`lwc1` at 0xdbadf14).
  That sum is stored to +0x8 of the second record (`swc1` at 0xdbadf30); the instruction before it multiplies the sum by the old word at +0x8 of that record into $f7, and $f4 gets the absolute value of that product.
  The `bc1f` at 0xdbadf40 jumps to the tail when $f4 and $f7 are neither equal nor unordered (`c.ueq.s` at 0xdbadf38); otherwise the `bc1t` at 0xdbadf4c jumps to the tail when the absolute value of the sum is less than, or unordered with, the word at +0x0 of the second record in $f9 (`c.ult.s` at 0xdbadf44).
  When neither branch is taken, it writes 0xffffffff8080c801 to abs 0x4000 (`sw` at 0xdbadf54, built at 0xdbadf48 and 0xdbadf50), then the narrowed $f12 and $f13 to abs 0x4000 (`swc1` at 0xdbadf58 and, in the return's delay slot, at 0xdbadf60), and returns with v0 holding the word at abs 0x1020 (`jr ra` at 0xdbadf5c).
  The tail loads the word at +0x20 of the second record (`lw` at 0xdbadf64), clears $f14, moves 0x3f800000 into $f15 in the delay slot and jumps through the loaded word (`jr` at 0xdbadf70) with a0 to a3 as they arrived.
  Unknown: the routine reached through the word at +0x20 of the second record, since the target is a register load with no callee note.
  Evidence grade: established.
- `__glOdyim_Vertex2dv_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdadb040 (o32).
  Takes a pointer to two doubles, narrows them to single precision (x in $f12, y in $f14), transforms
  the point with the block whose address is held at absolute 0x1020, tests it against limits in the
  block held at absolute 0x1024, and either writes the vertex to absolute 0x10000 or hands the call on
  through a table word. $f20 and $f22 are spilled to the frame by the `sdc1` at 0xdadb054 and
  0xdadb058 and come back before both exits. The first sum is the +0x3c word plus x times +0x30 plus y
  times +0x34 of the first block, kept in $f20 and stored as a single-precision word into the second
  block at +0x8 by the `swc1` at 0xdadb090, on every path before any test; the word it replaces was
  loaded earlier and is the factor in the product tested next. The product is compared with its
  absolute value by the `c.ueq.s` at 0xdadb0a0; a negative, ordered product makes the `bc1f` at
  0xdadb0a8 leave the fast path. A second sum is built from the +0xc, +0x0 and +0x4 words of the first
  block in the same manner; the `bc1t` at 0xdadb0d4 goes to the tail jump when the absolute value of
  the first sum scaled by the +0x4 word of the second block is less than the absolute value of this
  second sum, or either is unordered (`c.ult.s` at 0xdadb0cc). Next, $f20 multiplied by the +0xc word
  of the second block is added to the second sum; if it is negative (`bc1f` at 0xdadb0f0 taken) the
  next check is skipped, otherwise the `bc1t` at 0xdadb100 goes to the tail jump when it is less than
  the +0x18 word of the second block times $f20 (the multiply in the delay slot at 0xdadb0f4), or
  unordered. A third sum from +0x1c, +0x10 and +0x14 of the first block gets the same two checks, the
  `bc1t` at 0xdadb134 against the same scaled bound, then the `bc1f` at 0xdadb150 skipping or the
  `bc1t` at 0xdadb160 testing the combination of $f20 with the +0x10 word of the second block against
  the +0x18 word times $f20 (the multiply at 0xdadb154). When none of the checks fail, the `sw` at
  0xdadb180 writes 0xffffffff8080c801 to absolute 0x10000 (built from the immediates at 0xdadb174 and
  0xdadb178), the `swc1` at 0xdadb184 writes x there, and the `swc1` at 0xdadb18c in the delay slot of
  the return at 0xdadb188 writes y; the caller gets 0x10000 in v0. The tail jump at 0xdadb1a4 takes
  any failed check to the word that 0xdadb19c loads from +0x20 of the second block, with a0 and a1 as
  received, a2 zero and a3 0x3f800000. Unknown: which routine the +0x20 table word points at; the
  bundle has no callee note, so a captured run that reads the word would settle it.
  Evidence grade: established.
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
- `__glOdyim_Vertex2dv_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231c440 (n64).
  Reads its input through the pointer in a0: it loads two doubles from the caller's pointer in a0 (`ldc1` at
  0x231c440 and at 0x231c448, offsets 0x0 and 0x8), narrows each to single precision, tests the narrowed pair against
  the blocks at abs 0x1038 (P) and abs 0x1040 (Q), and writes a header word and the pair to abs 0x10000 when all
  tests pass. A failed test leaves through the pointer at Q+0x20.
  Let w be P+0x3c plus the first float times P+0x30 plus the second float times P+0x34 (two
  multiply-adds after the loads at 0x231c458 to 0x231c468), and stored to Q+0x8 (`swc1` at 0x231c47c).
  The product of w and Q+0x8 must be non-negative (`c.ueq.s` at 0x231c48c, `bc1f` at 0x231c494 leaves otherwise).
  The absolute value of the sum P+0xc plus first float times P+0x0 plus second float times P+0x4 must not exceed
  the absolute value of w times Q+0x4 (`c.ult.s` at 0x231c4b0, `bc1t` at 0x231c4b8 leaves when it does or the pair is
  unordered). With that sum plus w times Q+0xc non-negative (`c.ueq.s` at 0x231c4c8, `bc1f` at 0x231c4d0 skips the
  next test otherwise) it must also be at least w times Q+0x18 (`c.ult.s` at 0x231c4d8, `bc1t` at 0x231c4e0).
  The second round uses P+0x1c, P+0x10 and P+0x14 (`c.ult.s` at 0x231c504, `bc1t` at 0x231c50c), then Q+0x10
  (`c.ueq.s` at 0x231c51c, `bc1f` at 0x231c524) and the same bound against Q+0x18 times w (`c.ult.s` at 0x231c52c,
  `bc1t` at 0x231c534).
  If nothing leaves, the `sw` at 0x231c548 puts the word 0xffffffff8080c801 to abs 0x10000, the two floats
  follow to that address (`swc1` at 0x231c54c and, in the return's delay slot, 0x231c554), and v0 holds 0x10000.
  Failure goes to 0x231c558: Q+0x20 into t9, zero into f14, a single-precision one into f15, then the `jr` at
  0x231c564 with the integer arguments unchanged.
  Unknown: which routine the `jr` at 0x231c564 enters; Q+0x20 holds a value known only at run time.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): what the stores to abs 0x10000 reach; the linked rows hold no entry for it.
  Evidence grade: established.
- `__glOdyim_Vertex2dv_mag_line0` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb06c0 (n32).
  Reads two doubles through `a0` (`ldc1` at 0xdbb06c0 and 0xdbb06c8), converts each to a float in $f12 and $f13, picks up the pointers at abs 0x1020 (record R) and abs 0x1024 (record Q) (`lw` at 0xdbb06d0 and 0xdbb06d4), and then either writes to abs 0x4000 and returns the word at abs 0x1020, or tail-jumps through the word at Q+0x20.
  The routine derives a scalar w = R+0x3c word + $f12 * R+0x30 word + $f13 * R+0x34 word; the two fused multiply-adds follow the load at 0xdbb06e8 and are the instructions the tool prints as coprocessor-branch forms, and a register move then leaves a copy of w in $f10.
  Before any test, w goes to Q+0x8 (`swc1` at 0xdbb06fc), after being multiplied by the previous Q+0x8 word, and $f8 becomes the absolute value of w times the Q+0x4 word.
  The first test sends control to the tail through the `bc1f` at 0xdbb0714 whenever the absolute value of that earlier product differs from the product itself and is not unordered with it (`c.ueq.s` at 0xdbb070c).
  The remaining tests come in two rounds, the first using R+0xc, R+0x0, R+0x4 and Q+0xc and the second using R+0x1c, R+0x10, R+0x14 and Q+0x10.
  In a round, the absolute value of (R constant word + $f12 * R word + $f13 * R word) is compared against $f8, and the `bc1t` at 0xdbb0738 (first round) or 0xdbb078c (second) exits to the tail if $f8 is smaller or either is unordered (`c.ult.s` at 0xdbb0730 and 0xdbb0784).
  The round then forms $f4 as that signed sum plus the Q word times w; when $f4 equals its absolute value or is unordered with it (`c.ueq.s` at 0xdbb0748 and 0xdbb079c), a last compare of $f4 with the Q+0x18 word times w decides an exit (`c.ult.s` at 0xdbb0758 and 0xdbb07ac, `bc1t` at 0xdbb0760 and 0xdbb07b4).
  Otherwise the `bc1f` at 0xdbb0750 or 0xdbb07a4 bypasses that last compare; the multiply by w is in that branch's delay slot, so it happens either way.
  With every test passed, the store block writes the constant 0xffffffff8080c801 to abs 0x4000 (`sw` at 0xdbb07c4), then $f12 and $f13 (`swc1` at 0xdbb07c8 and, in the delay slot of the `jr ra` at 0xdbb07cc, at 0xdbb07d0).
  The tail loads the word at Q+0x20 (`lw` at 0xdbb07d4), jumps through it (`jr` at 0xdbb07e0) and leaves 0x3f800000 in $f15 from the delay slot, with `a0` to `a3` untouched.
  Unknown: the target reached through the Q+0x20 word, since it is a register load and no callee note exists.
  Evidence grade: established.
- `__glOdyim_Vertex2dv_mag` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad9480 (o32).
  Pointer-argument form of the two-coordinate sender, which loads two doubles from the array at a0 (`ldc1` at 0xdad9480 and 0xdad9488) into f12 and f14 and narrows them to single precision.
  It reads the record pointers A at absolute 0x1020 and B at absolute 0x1024 (`lw` at 0xdad9490 and 0xdad9494) and
  derives w' (single precision) from A[+0x3c], f12 with A[+0x30], and f14 with A[+0x34]. The previous float at B+0x8 (loaded at 0xdad94a8), once multiplied by w', is replaced by w' itself (`swc1` at 0xdad94c0), ; w' times B+0x4 is held for the compares.
  Control flow follows three tests. The compare at 0xdad94d0 sets a flag when the absolute value of the w'-times-old-B+0x8
  product equals the product itself or is unordered, so the `bc1f` at 0xdad94d8 is taken for a negative product.
  The two less-than-or-unordered compares at 0xdad94f8 and 0xdad9520 each weigh the absolute value of w' times B+0x4 against the absolute value of one more
  sum: A[+0xc] plus f12 times A[+0x0] plus f14 times A[+0x4] for the first, A[+0x1c] plus f12 times A[+0x10] plus f14 times A[+0x14] for the second;
  the `bc1t` at 0xdad9500 and 0xdad9528 take the failure path if the w' term falls below the sum or the pair is unordered.
  On the path where all three tests pass, it sets v0 to 0x10000, writes the word 0xffffffff8080c801 there (`sw` at 0xdad9534), then the single-precision f12 (`swc1` at 0xdad9538) and f14 (`swc1` in the return delay slot at 0xdad9540) to the same address, and returns 0x10000 in v0.
  Failure path at 0xdad9544: B+0x20 supplies the t9 target of the tail call made by `jr` at 0xdad954c, with a0 and a1 as they
  arrived, a2 zero and a3 set to 0x3f800000 by the `lui` in the delay slot at 0xdad9550.
  Unknown: the jump target held at B+0x20 and the register at absolute 0x10000, both of which need the record at 0x1024 and an address map.
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
- `__glOdyim_Vertex2dv_smallw` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad82c0 (o32).
  Takes a pointer to two doubles, narrows them to single precision (x in $f12, y in $f14), transforms
  the point with the block whose address is held at absolute 0x1020, checks the result against the
  block held at absolute 0x1024, and then either writes the vertex to absolute 0x10000 or hands the
  call on through a table word. The sum starts from the +0x3c word of the first block and adds x times
  its +0x30 word and y times its +0x34 word; the `swc1` at 0xdad8300 then writes the sum, as a single-
  precision word, to +0x8 of the second block on every path, replacing the word that was loaded first
  and multiplies the sum. A negative, ordered product (unequal to its own absolute value, `c.ueq.s` at
  0xdad8308) makes the `bc1f` at 0xdad8310 give up on the vertex. Otherwise the `c.ult.s` in the delay
  slot at 0xdad8314 has set the flag from the sum's absolute value against the +0x0 word of the second
  block, and the `bc1t` at 0xdad831c defers on a smaller sum or an unordered pair. With both checks
  passed, the `sw` at 0xdad8328 stores 0xffffffff8080c801 to absolute 0x10000 (the immediates at
  0xdad8318 and 0xdad8320 build it), x goes out by the `swc1` at 0xdad832c, and y by the `swc1` at
  0xdad8334 in the delay slot of the return at 0xdad8330; on return v0 holds 0x10000. A failed check
  ends at the `jr` at 0xdad8340; its target is the +0x20 word of the second block, loaded at
  0xdad8338, with a0 and a1 as received, a2 zero and a3 0x3f800000. Unknown: the target of the
  deferral, a table word the tool cannot resolve; a committed entry for the callee or a captured run
  would fix it.
  Evidence grade: established.
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
- `__glOdyim_Vertex2dv_smallw` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2319bc0 (n64).
  Shortest of the pointer-argument variants: it loads two doubles from the pointer in a0 (`ldc1` at
  0x2319bc0 and 0x2319bc8, offsets 0x0 and 0x8), narrows each to single precision, applies two float tests that use
  the blocks at abs 0x1038 (P) and abs 0x1040 (Q), and on success writes a header word and both floats to abs 0x10000.
  Failing either test routes to the pointer at Q+0x20.
  The value w starts as P+0x3c, gains the first float times P+0x30 and the second float times P+0x34 (two
  multiply-adds after the loads at 0x2319bd8 to 0x2319be8) and stored to Q+0x8 (`swc1` at 0x2319bf8). The product of
  w and the old Q+0x8 must equal its own absolute value, so it is not negative (`c.ueq.s` at 0x2319c00; a branch at
  0x2319c08 leaves otherwise and a NaN passes).
  The `c.ult.s` in that branch's delay slot at 0x2319c0c compares the absolute value of w with Q+0x0. The `bc1t` at
  0x2319c14 leaves when the absolute value of w is below Q+0x0 or the pair is unordered; when the flag is clear
  it falls through.
  Past both tests, the `sw` at 0x2319c20 stores the word 0xffffffff8080c801 to abs 0x10000, then the two
  floats follow to the same address (`swc1` at 0x2319c24 and, in the return's delay slot, 0x2319c2c); v0 holds
  0x10000.
  The other route, at 0x2319c30, takes t9 from Q+0x20, clears f14, sets f15 to a single-precision one, and makes
  the `jr` at 0x2319c3c with the integer arguments untouched.
  Unknown: the routine entered by the `jr` at 0x2319c3c; Q+0x20 supplies a run-time value.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): what answers at abs 0x10000; the linked rows contain no entry.
  Evidence grade: established.
- `__glOdyim_Vertex2dv_smallw` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbadf80 (n32).
  Submits one vertex whose two coordinates are doubles at a0+0x0 and a0+0x8 (`ldc1` at 0xdbadf80 and
  0xdbadf88); each is converted to single precision into $f12 and $f13 straight after its load. The
  vertex is then checked against two records whose pointers are the words at fixed addresses 0x1020
  (record A, `lw` at 0xdbadf90) and 0x1024 (record B, `lw` at 0xdbadf94).
  Inferred: the two words that follow the loads at 0xdbadfa8, which the disassembler prints as
  coprocessor-3 branches, are floating-point multiply-adds by their field layout. They leave $f8 equal to
  A+0x3c plus $f12 times A+0x30 plus $f13 times A+0x34, and the `swc1` at 0xdbadfb8 stores that sum over
  B+0x8 on every path, after it was multiplied by the old B+0x8 to form $f7.
  The `bc1f` at 0xdbadfc8 sends control to the tail path at 0xdbadfec when $f7 is negative: the
  `c.ueq.s` at 0xdbadfc0 compares $f7 with its own absolute value. The `bc1t` at 0xdbadfd4 sends it there
  when the absolute value of the sum is below the word at B+0x0 or unordered with it, using the compare
  in the delay slot at 0xdbadfcc.
  If neither branch is taken, the routine writes three 4-byte values to absolute 0x4000: the constant
  0xffffffff8080c801 (`sw` at 0xdbadfdc, with the `ori` of 0xc801 in the delay slot at 0xdbadfd8 on top of
  0xffffffff80800000), $f12 (`swc1` at 0xdbadfe0) and $f13 (`swc1` at 0xdbadfe8, in the delay slot of the
  return at 0xdbadfe4). The routine returns the word it loaded from 0x1020 in v0.
  On the tail path the routine takes t9 from B+0x20 (`lw` at 0xdbadfec), leaves $f14 at zero, sets $f15
  to 0x3f800000 in the delay slot, and jumps at 0xdbadff8 with a0 to a3 as they arrived.
  Unknown: where the `jr t9` at 0xdbadff8 lands; the pointer sits in record B and is filled at run time.
  Unknown: which device register is at absolute 0x4000; the linked windows start at 0x110000 and 0x120000, so a datasheet row naming 0x4000 would settle it.
  Evidence grade: inferred.
- `__glOdyim_Vertex2f_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdadb1c0 (o32).
  Takes x and y already as single-precision values in $f12 and $f14, transforms the point with the
  block whose address is held at absolute 0x1020, checks it against limits in the block held at
  absolute 0x1024, and either writes the vertex to absolute 0x10000 or hands the call on through a
  table word. The prologue spills $f20 and $f22 (stores at 0xdadb1c4 and 0xdadb1c8); both exits reload
  them. The first sum is the +0x3c word plus x times +0x30 plus y times +0x34 of the first block, kept
  in $f20 and stored as a single-precision word into the second block at +0x8 by the `swc1` at
  0xdadb200, on every path before any check; this replaces the old +0x8 word, which had already been
  read to scale the sum. The `bc1f` at 0xdadb218 abandons the fast path when the product, set against
  its absolute value by the `c.ueq.s` at 0xdadb210, is negative and not unordered. The +0xc, +0x0 and
  +0x4 words of the first block give a second sum by the same steps; the `bc1t` at 0xdadb244 goes to
  the tail jump when the absolute value of the first sum scaled by the +0x4 word of the second block
  is less than the absolute value of the second sum, or either is unordered (`c.ult.s` at 0xdadb23c).
  The second sum is then added to $f20 times the +0xc word of the second block; when it is negative
  (`bc1f` at 0xdadb260 taken) the next check is skipped, otherwise the `bc1t` at 0xdadb270 goes to the
  tail jump when it is less than the +0x18 word of the second block times $f20 (multiply in the delay
  slot at 0xdadb264), or unordered. A third sum from +0x1c, +0x10 and +0x14 of the first block gets
  the same two checks: the `bc1t` at 0xdadb2a4 against the same scaled bound, then the `bc1f` at
  0xdadb2c0 skipping, or the `bc1t` at 0xdadb2d0 testing $f20 times the +0x10 word of the second block
  plus that sum against the +0x18 word times $f20 (multiply at 0xdadb2c4). When no check fails, the
  `sw` at 0xdadb2f0 writes 0xffffffff8080c801 to absolute 0x10000 (built from the immediates at
  0xdadb2e4 and 0xdadb2e8), the `swc1` at 0xdadb2f4 writes x there, and the `swc1` at 0xdadb2fc in the
  delay slot of the return at 0xdadb2f8 writes y; the return leaves 0x10000 in v0. Failed checks end
  at the `jr` at 0xdadb314, whose target is the +0x20 word of the second block loaded at 0xdadb30c,
  with a0 and a1 as received, a2 zero and a3 0x3f800000. Unknown: the callee reached through the +0x20
  word; the word is read at run time and only a captured run can show it.
  Evidence grade: established.
- `__glOdyim_Vertex2f_mag_line0` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb0800 (n32).
  Longer variant of the vertex check for a vertex held in $f12 and $f13: it tests against records A and B
  (pointers at fixed addresses 0x1020 and 0x1024, `lw` at 0xdbb0800 and 0xdbb0804). Passing writes three
  values to absolute 0x4000; failing jumps through a pointer in B.
  Inferred: the two words before the store at 0xdbb082c are multiply-adds by their field layout, so $f8
  holds A+0x3c plus $f12 times A+0x30 plus $f13 times A+0x34. That sum is copied to $f10, multiplied
  with the old B+0x8, scaled by B+0x4, and the `swc1` at 0xdbb082c stores it to B+0x8 on every path.
  The `bc1f` at 0xdbb0844 goes to the tail path at 0xdbb0904 when the first product is negative
  (`c.ueq.s` at 0xdbb083c).
  Two similar stages follow, each ending in two tests. Stage one takes A+0xc plus $f12 times A+0x0 plus
  $f13 times A+0x4 (A+0xc loaded in the delay slot at 0xdbb0848), keeps it, and the `bc1t` at 0xdbb0868
  goes to the tail path if the scaled product is below its absolute value or unordered (`c.ult.s` at
  0xdbb0860). It then forms that kept value plus B+0xc times $f10 (B+0xc loaded at 0xdbb0864): a negative
  result sends the `bc1f` at 0xdbb0880 straight to stage two at 0xdbb0898, otherwise the `bc1t` at
  0xdbb0890 goes to the tail path if the result is below B+0x18 times $f10 (the multiply sits in the
  delay slot at 0xdbb0884, so it runs on both paths).
  Stage two uses A+0x1c, A+0x10, A+0x14 and B+0x10 (branches at 0xdbb08bc, 0xdbb08d4, 0xdbb08e4); there a
  negative result at 0xdbb08d4 skips to the store block at 0xdbb08ec.
  The store block builds 0xffffffff8080c801 (constants at 0xdbb08ec and 0xdbb08f0) and stores it at
  0xdbb08f4, then stores $f12 (0xdbb08f8) and $f13 (0xdbb0900, return delay slot), all 4 bytes to
  absolute 0x4000; it returns the word loaded from 0x1020.
  The tail path loads t9 from B+0x20 (0xdbb0904), clears $f14, sets $f15 to 0x3f800000 and jumps at
  0xdbb0910 with a0 to a3 unchanged.
  Unknown: what the `jr t9` at 0xdbb0910 reaches, since record B is filled at run time and the bundle does not resolve it.
  Unknown: the identity of the register at absolute 0x4000, outside both linked windows (0x110000 and 0x120000); a datasheet row would settle it.
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
- `__glOdyim_Vertex2f_mag` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231ad80 (n64).
  Single-precision twin of the double-argument vertex fast path: the two floats arrive in f12 and f13 and need no
  narrowing. Three float tests draw on the blocks at abs 0x1038 (P) and abs 0x1040 (Q); when all pass, a header
  word and the two floats go straight to abs 0x10000, and otherwise the routine jumps through the pointer at Q+0x20.
  Let w be P+0x3c plus f12 times P+0x30 plus f13 times P+0x34 (two multiply-adds after the loads at
  0x231ad88 to 0x231ad98) and stored to Q+0x8 (`swc1` at 0x231ada8). Then w times Q+0x8 must equal its own
  absolute value, so it is not negative (`c.ueq.s` at 0x231adb8; `bc1f` at 0x231adc0 leaves otherwise, a NaN passes).
  w times Q+0x4 is kept as an absolute value for the next two tests.
  The sum P+0xc plus f12 times P+0x0 plus f13 times P+0x4 is formed; `bc1t` at 0x231ade0 leaves when the kept
  magnitude is below the absolute value of that sum or the pair is unordered (`c.ult.s` at 0x231add8).
  The sum P+0x1c plus f12 times P+0x10 plus f13 times P+0x14 gets the same check (`c.ult.s` at 0x231adf8, `bc1t`
  at 0x231ae00).
  If all tests hold, the `sw` at 0x231ae0c stores the word 0xffffffff8080c801 to abs 0x10000, then f12 and f13
  go to the same address (`swc1` at 0x231ae10 and, in the return's delay slot, 0x231ae18); v0 holds 0x10000.
  The leaving path begins at 0x231ae1c: t9 from Q+0x20, f14 cleared, f15 set to a single-precision one, then
  the `jr` at 0x231ae28 with a0 to a3 as received.
  Unknown: the target of the `jr` at 0x231ae28; Q+0x20 is read while running.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): what lies behind abs 0x10000; the linked rows list nothing there.
  Evidence grade: established.
- `__glOdyim_Vertex2f_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49b6c0 (n64).
  Takes the entry floats `$f12` and `$f13` and, if they pass three float tests against the two
  records whose addresses are the doublewords at absolute 0x1038 and 0x1040, writes a constant word
  and the two floats to absolute 0x4000, and otherwise it tail-jumps through a pointer held in the
  second record.
  Next, it computes a sum from the 0x1038 record: the word at +0x3c, plus `$f12` times the word at
  +0x30, plus `$f13` times the word at +0x34 (two multiply-adds).
  After that, the `swc1` at 0xb49b6e8 writes that sum, not the +0x3c word as loaded, to +0x8 of the
  0x1040 record, after the old +0x8 word has been read at 0xb49b6d8.
  From there, the sum is multiplied by that old word and by the +0x4 word of the 0x1040 record
  (loaded at 0xb49b6d4), and each product is then replaced by its absolute value.
  Following that, the `bc1f` at 0xb49b700 leaves for the path starting at 0xb49b758 unless the first
  product equals its own absolute value or the pair is unordered (`c.ueq.s` at 0xb49b6f8), that is,
  whenever that product is below zero.
  Beyond that, two more tests build a value from the 0x1038 record as the word at +0xc plus `$f12`
  times +0x0 plus `$f13` times +0x4, then the same with +0x1c, +0x10 and +0x14; each result is made
  absolute, and the `bc1t` at 0xb49b720 and at 0xb49b740 leaves for that path when the second
  product is less than that value or unordered (`c.ult.s` at 0xb49b718 and 0xb49b738).
  At this stage, with all three tests passed, the `sw` at 0xb49b748 writes 0xffffffff8080c801 to
  absolute 0x4000 (0xffffffff80800000 built at 0xb49b73c, 0xc801 ORed in at 0xb49b744), the `swc1`
  at 0xb49b74c writes `$f12` to the same address, and the `swc1` at 0xb49b754 in the delay slot of
  the return at 0xb49b750 writes `$f13`; the return value is the doubleword read from absolute
  0x1038.
  The tail-jump path loads `t9` from +0x20 of the 0x1040 record at 0xb49b758, clears `$f14`, and
  puts 0x3f800000 in `$f15` through `t0` (the `mtc1` in the delay slot of the `jr t9` at 0xb49b764),
  leaving `a0` to `a3`, `$f12` and `$f13` as at entry.
  Inferred: the three stores to absolute 0x4000 are one record, a header word followed by the two
  coordinates, because they hit the same address and the second and third write the entry
  coordinates.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): the board-side result of the stores to absolute 0x4000, since no linked row names that
  address and the linked board windows start at 0x110000; a reviewed datasheet would settle it.
  Unknown: where the `jr t9` at 0xb49b764 lands; a runtime trace of that jump would name it.
  Evidence grade: inferred.
- `__glOdyim_Vertex2f_smallw` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad8380 (o32).
  x and y arrive as single-precision floats in $f12 and $f14; the block pointed to from absolute
  0x1020 transforms them, the block pointed to from absolute 0x1024 supplies the limits, and a passing
  vertex is written to absolute 0x10000 while a failing one is passed on through a table word. x
  scales the +0x30 word and y the +0x34 word of the first block, and both are added to its +0x3c word;
  the sum goes back to +0x8 of the second block through the `swc1` at 0xdad83b0, on every path,
  replacing the +0x8 word read at 0xdad8398 for the product. If the product is negative and ordered,
  the `c.ueq.s` at 0xdad83b8 finds it unequal to its absolute value and the `bc1f` at 0xdad83c0 is
  taken. The delay-slot compare at 0xdad83c4 tests |sum| against the +0x0 word of the second block,
  and the `bc1t` at 0xdad83cc is taken for a smaller value or unordered operands. Past both checks,
  the `sw` at 0xdad83d8 puts 0xffffffff8080c801 at absolute 0x10000 (from the immediates at 0xdad83c8
  and 0xdad83d0), the `swc1` at 0xdad83dc puts x there next, and the `swc1` at 0xdad83e4, in the delay
  slot of the return at 0xdad83e0, puts y; it returns 0x10000. On failure the `jr` at 0xdad83f0 jumps
  through the second block's +0x20 word (loaded at 0xdad83e8), with a0 and a1 as received, a2 zero and
  a3 0x3f800000. Unknown: the routine the deferral lands in, because its address is the +0x20 word and
  the bundle does not resolve it.
  Evidence grade: established.
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
- `__glOdyim_Vertex2f_smallw` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2319c80 (n64).
  Takes the entry floats `$f12` and `$f13` and, if they clear two float tests against the two
  records whose addresses are the doublewords at absolute 0x1038 and 0x1040, writes a constant word
  and the two floats to absolute 0x10000, and when a test fails, a pointer from the second record is
  jumped to.
  Subsequently, the 0x1038 record's word at +0x3c, plus `$f12` times its word at +0x30, plus `$f13`
  times its word at +0x34, forms a sum (a pair of multiply-add steps).
  Further on, the `swc1` at 0x2319ca8 stores that sum, not the +0x3c word as loaded, to +0x8 of the
  0x1040 record, after the old +0x8 word was loaded at 0x2319c98.
  Then, the sum is multiplied by that old word, and the product is compared with its own absolute
  value (`c.ueq.s` at 0x2319cb0); the `bc1f` at 0x2319cb8 is redirected to the indirect tail call at
  0x2319ce0 unless the two are equal or unordered, so it leaves when the product is negative.
  Next, the compare in the delay slot at 0x2319cbc, which runs on both paths, checks the absolute
  value of the sum against the word at +0x0 of the 0x1040 record (loaded at 0x2319c94); the `bc1t`
  at 0x2319cc4 is redirected to the indirect tail call when the absolute sum is less than that word
  or unordered.
  After that, past both tests, `v0` becomes 0x10000 (immediate 0x1 at 0x2319ccc), the `sw` at
  0x2319cd0 writes 0xffffffff8080c801 through it (0xffffffff80800000 built at 0x2319cc0, 0xc801 ORed
  in at 0x2319cc8), the `swc1` at 0x2319cd4 writes `$f12` to the same address, and the `swc1` at
  0x2319cdc in the delay slot of the return at 0x2319cd8 writes `$f13`; the routine returns 0x10000.
  The tail-jump path retrieves `t9` from +0x20 of the 0x1040 record at 0x2319ce0, clears `$f14`, and
  puts 0x3f800000 in `$f15` through `t0` (the `mtc1` in the delay slot of the `jr t9` at 0x2319cec),
  leaving `a0` to `a3`, `$f12` and `$f13` as at entry.
  Inferred: the three stores to absolute 0x10000 are one record, a first header word and the two
  coordinate words, considering that they hit the same address and the second and third write the
  entry coordinates.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): the board-side handling of the three writes to absolute 0x10000, because the linked board
  windows begin at 0x110000; datasheet evidence for that address would settle the point.
  Unknown: the routine entered through the `jr t9` at 0x2319cec; watching the jump execute would
  settle the target.
  Evidence grade: inferred.
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
- `__glOdyim_Vertex2f_smallw` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49a640 (n64).
  Starts from the entry floats `$f12` and `$f13` and, if they pass two float tests against the two
  records whose addresses are the doublewords at absolute 0x1038 and 0x1040, writes a constant word
  and the two floats to absolute 0x4000, and otherwise control leaves through a pointer from the
  second record.
  In turn, the 0x1038 record's word at +0x3c, plus `$f12` times its word at +0x30, plus `$f13` times
  its word at +0x34, forms a sum (a pair of multiply-add steps).
  Subsequently, the `swc1` at 0xb49a668 stores that sum, not the +0x3c word as loaded, to +0x8 of
  the 0x1040 record, after the old +0x8 word was loaded at 0xb49a658.
  Further on, the sum is multiplied by that old word, and the product is compared with its own
  absolute value (`c.ueq.s` at 0xb49a670); the `bc1f` at 0xb49a678 bails out to the path starting at
  0xb49a69c unless the two are equal or unordered, so it leaves when the product is negative.
  Then, the compare in the delay slot at 0xb49a67c, which runs on both paths, checks the absolute
  value of the sum against the word at +0x0 of the 0x1040 record (loaded at 0xb49a654); the `bc1t`
  at 0xb49a684 bails out to the register jump when the absolute sum is less than that word or
  unordered.
  Next, when both tests pass, the `sw` at 0xb49a68c writes 0xffffffff8080c801 to absolute 0x4000
  (0xffffffff80800000 built at 0xb49a680, 0xc801 ORed in at 0xb49a688 in the delay slot of the
  branch), the `swc1` at 0xb49a690 writes `$f12` there, and the `swc1` at 0xb49a698 in the delay
  slot of the return at 0xb49a694 writes `$f13`; the doubleword read from absolute 0x1038 is what
  the caller receives.
  The tail-jump path gets `t9` from +0x20 of the 0x1040 record at 0xb49a69c, clears `$f14`, and puts
  0x3f800000 in `$f15` through `t0` (the `mtc1` in the delay slot of the `jr t9` at 0xb49a6a8),
  leaving `a0` to `a3`, `$f12` and `$f13` as at entry.
  Inferred: the three stores to absolute 0x4000 are one record, a header followed by the x and y
  words, on the grounds that they hit the same address and the second and third write the entry
  coordinates.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): the device side of absolute 0x4000; no linked row covers it and the board windows begin
  at 0x110000; a reviewed board datasheet is the remaining route.
  Unknown: the entry point the `jr t9` at 0xb49a6a8 reaches; the destination waits on a trace of
  that jump.
  Evidence grade: inferred.
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
- `__glOdyim_Vertex2fv_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231c6c0 (n64).
  Loads the float pair at `a0` +0x0 and +0x4 into `$f12` and `$f13` (the `lwc1` at 0x231c6c0 and
  0x231c6c4) and runs two rounds of float tests on it against the records at absolute 0x1038 and
  0x1040; a full pass writes a header word and the pair to absolute 0x10000, and otherwise a pointer
  in the second record is the jump target.
  Further on, it builds a sum from the 0x1038 record: the word at +0x3c, plus `$f12` times the word
  at +0x30, plus `$f13` times the word at +0x34 (a pair of multiply-add steps), and keeps a copy of
  it. The `swc1` at 0x231c6f4 copies that sum, not the +0x3c word as loaded, to +0x8 of the 0x1040
  record, after the old +0x8 word was loaded at 0x231c6e0.
  Then, the sum is multiplied by that old word and by the +0x4 word of the 0x1040 record (loaded at
  0x231c6dc), and the products become absolute values; the `bc1f` at 0x231c70c goes on to the tail
  path that starts at 0x231c7d0 unless the first product equals its own absolute value or the pair is
  unordered, so it leaves when that product is negative.
  Next, the first of the later tests forms the 0x1038 record's word at +0xc plus `$f12` times +0x0
  plus `$f13` times +0x4, keeps a copy, takes its absolute value, and the `bc1t` at 0x231c730 goes
  on to the tail branch when the second product is less than that value or unordered.
  After that, the word at +0xc of the 0x1040 record (loaded at 0x231c72c), times the kept first sum,
  is added to the kept copy of that value; a negative total takes the `bc1f` at 0x231c748 past the
  next comparison, and otherwise the `bc1t` at 0x231c758 goes on to the tail branch when the total
  is less than the +0x18 word of the 0x1040 record times the kept first sum, or unordered.
  From there, a second round does the same with the 0x1038 words at +0x1c, +0x10 and +0x14 and the
  0x1040 words at +0x10 and +0x18: the `bc1t` at 0x231c784 leaves on its first comparison, the
  `bc1f` at 0x231c79c skips the last comparison for a negative result and goes to the return block
  at 0x231c7b4, and the `bc1t` at 0x231c7ac leaves on the last one.
  Following that, on a full pass `v0` is set to 0x10000 (immediate at 0x231c7bc), the `sw` at
  0x231c7c0 writes 0xffffffff8080c801 through it (0x8080 loaded at 0x231c7b4, 0xc801 ORed in at
  0x231c7b8), the `swc1` at 0x231c7c4 writes `$f12`, and the `swc1` at 0x231c7cc in the delay slot
  of the return at 0x231c7c8 writes `$f13`; control returns carrying 0x10000.
  The tail-jump path grabs `t9` from +0x20 of the 0x1040 record at 0x231c7d0, clears `$f14`, and
  puts 0x3f800000 in `$f15` through `t0` (the `mtc1` in the delay slot of the `jr t9` at 0x231c7dc),
  leaving `a0` to `a3`, `$f12` and `$f13` as at entry.
  Inferred: the three stores to absolute 0x10000 form one record, header word, then coordinate one,
  then coordinate two, in view of the fact that they hit the same address and the second and third
  write the entry coordinates.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): the register block that absolute 0x10000 falls in; the linked board windows begin at
  0x110000 and none covers it; the point waits on a datasheet line for the address.
  Unknown: the place the `jr t9` at 0x231c7dc sends control; an execution trace through the jump
  would answer it.
  Evidence grade: inferred.
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
- `__glOdyim_Vertex2fv_mag` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231ae40 (n64).
  Loads the float pair at `a0` +0x0 and +0x4 into `$f12` and `$f13` (the `lwc1` at 0x231ae40 and
  0x231ae44); if the pair gets through three float tests against the records at absolute 0x1038 and
  0x1040 it writes a header word and the pair to absolute 0x10000, and a failed test sends it
  through a pointer in the second record.
  From there, it forms a sum from the 0x1038 record: the word at +0x3c, plus `$f12` times the word
  at +0x30, plus `$f13` times the word at +0x34 (two multiply-adds).
  Following that, the `swc1` at 0x231ae70 writes that sum, not the +0x3c word as loaded, to +0x8 of
  the 0x1040 record, once the old +0x8 word was loaded at 0x231ae60.
  Beyond that, the sum is multiplied by that old word and by the +0x4 word of the 0x1040 record
  (loaded at 0x231ae5c), and both products are reduced to absolute values.
  At this stage, the `bc1f` at 0x231ae88 branches to the tail path that starts at 0x231aee4 unless the first
  product equals its own absolute value or the pair is unordered (`c.ueq.s` at 0x231ae80), that is,
  whenever that product is below zero.
  In turn, two more tests build a value from the 0x1038 record as the word at +0xc plus `$f12` times
  +0x0 plus `$f13` times +0x4, then the same with +0x1c, +0x10 and +0x14; each result is made
  absolute, and the `bc1t` at 0x231aea8 and at 0x231aec8 branches to the pointer jump when the
  second product is less than that value or unordered (`c.ult.s` at 0x231aea0 and 0x231aec0).
  Subsequently, a pass of all three tests sets `v0` to 0x10000 (immediate 0x1 at 0x231aed0); the
  `sw` at 0x231aed4 then writes 0xffffffff8080c801 through it (0xffffffff80800000 built at
  0x231aec4, 0xc801 ORed in at 0x231aecc), the `swc1` at 0x231aed8 writes `$f12` to the same
  address, and the `swc1` at 0x231aee0, in the delay slot of the return at 0x231aedc, writes `$f13`;
  0x10000 comes back as the return value.
  The tail-jump path fetches `t9` from +0x20 of the 0x1040 record at 0x231aee4, clears `$f14`, and
  puts 0x3f800000 in `$f15` through `t0` (the `mtc1` in the delay slot of the `jr t9` at 0x231aef0),
  leaving `a0` to `a3`, `$f12` and `$f13` as at entry.
  Inferred: the three stores to absolute 0x10000 are one record, a leading header word with both
  coordinates behind it, as they hit the same address and the second and third write the entry
  coordinates.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): the board register behind absolute 0x10000, because no linked row names it and the board
  windows listed start at 0x110000; a reviewed register description is the route to an answer.
  Unknown: the target reached by the `jr t9` at 0x231aef0; the target needs a trace taken while the
  jump executes.
  Evidence grade: inferred.
- `__glOdyim_Vertex2fv_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49b780 (n64).
  Reads two floats from `a0` +0x0 and +0x4 into `$f12` and `$f13` (the `lwc1` at 0xb49b780 and
  0xb49b784) and, when they clear three float tests against the records at absolute 0x1038 and
  0x1040, emits a constant word and both floats to absolute 0x4000, and if a test fails it jumps
  through a pointer held in the second record.
  After that, it forms a sum from the 0x1038 record: the word at +0x3c, plus `$f12` times the word
  at +0x30, plus `$f13` times the word at +0x34 (two multiply-adds).
  From there, the `swc1` at 0xb49b7b0 stores that sum, not the +0x3c word as loaded, to +0x8 of the
  0x1040 record, once the old +0x8 word was loaded at 0xb49b7a0.
  Following that, the sum is multiplied by that old word and by the +0x4 word of the 0x1040 record
  (loaded at 0xb49b79c), and each product is then replaced by its absolute value.
  Beyond that, the `bc1f` at 0xb49b7c8 jumps to the tail path that starts at 0xb49b820 unless the first product
  equals its own absolute value or the pair is unordered (`c.ueq.s` at 0xb49b7c0), that is, whenever
  that product is below zero.
  At this stage, two more tests build a value from the 0x1038 record as the word at +0xc plus `$f12`
  times +0x0 plus `$f13` times +0x4, then the same with +0x1c, +0x10 and +0x14; each is reduced to
  an absolute value, and the `bc1t` at 0xb49b7e8 and at 0xb49b808 jumps to the indirect jump when
  the second product is less than that value or unordered (`c.ult.s` at 0xb49b7e0 and 0xb49b800).
  In turn, once every test passes, the `sw` at 0xb49b810 writes 0xffffffff8080c801 to absolute
  0x4000 (0xffffffff80800000 built at 0xb49b804, 0xc801 ORed in at 0xb49b80c), the `swc1` at
  0xb49b814 follows with `$f12`, and the `swc1` at 0xb49b81c, in the delay slot of the return at
  0xb49b818, writes `$f13`; it returns the doubleword read from absolute 0x1038.
  The tail-jump path reads `t9` from +0x20 of the 0x1040 record at 0xb49b820, clears `$f14`, and
  puts 0x3f800000 in `$f15` through `t0` (the `mtc1` in the delay slot of the `jr t9` at 0xb49b82c),
  leaving `a0` to `a3`, `$f12` and `$f13` as at entry.
  Inferred: the three stores to absolute 0x4000 are one record, one header word and then the two
  coordinates, since they hit the same address and the second and third write the entry coordinates.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): the device-side result of the writes to absolute 0x4000; no linked row names it and the
  linked board windows start at 0x110000; only a datasheet entry for that address would answer it.
  Unknown: the destination of the `jr t9` at 0xb49b82c; only a run that records the jump would name
  the target.
  Evidence grade: inferred.
- `__glOdyim_Vertex2fv_smallw` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad8400 (o32).
  Loads two floats from the array a0 points to (`lwc1` at 0xdad8400 and 0xdad8404) into $f12 and $f14,
  runs them through the block held at absolute 0x1020, tests the outcome against the block held at
  absolute 0x1024, and either emits the vertex at absolute 0x10000 or defers through a table word. A
  weighted sum of the +0x3c, +0x30 and +0x34 words of the first block is stored back into the second
  block at +0x8 (`swc1` at 0xdad8438) whichever way the tests go, replacing the +0x8 word that the sum
  was multiplied by. If that product is negative and ordered (it differs from its own absolute value,
  `c.ueq.s` at 0xdad8440), the `bc1f` at 0xdad8448 takes the deferral. Failing that, the `c.ult.s` in
  the delay slot at 0xdad844c has compared the absolute value of the sum with the +0x0 word of the
  second block, and the `bc1t` at 0xdad8454 defers when the sum is smaller or either is unordered.
  Both tests passed, the `sw` at 0xdad8460 writes 0xffffffff8080c801 to absolute 0x10000, using the
  immediates at 0xdad8450 and 0xdad8458; then comes x from the `swc1` at 0xdad8464 and y from the one
  at 0xdad846c, in the return's delay slot after the `jr ra` at 0xdad8468, which gives back 0x10000.
  The `jr` at 0xdad8478 is the deferral, jumping through the second block's +0x20 word loaded at
  0xdad8470, with a0 and a1 as received, a2 zero and a3 0x3f800000. Unknown: where the table jump
  goes, as the +0x20 word is unresolved and no callee note is present.
  Evidence grade: established.
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
- `__glOdyim_Vertex2i_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdadb4c0 (o32).
  Fast path of a vertex call taking the two integer arguments a0 and a1: it converts them to single-
  precision floats, runs range tests against the records whose pointers sit at abs 0x1020 and abs 0x1024,
  and either writes a command word and the two values straight to 0x10000 or tail-jumps through the word
  at +0x20 of the second record.
  The pointers are loaded at 0xdadb4dc (record A, from abs 0x1020) and 0xdadb4e0 (record B, from abs
  0x1024), after the integer-to-float conversion at the start of the routine.
  The routine adds A+0x3c, the first value times A+0x30 and the second value times A+0x34 into a sum,
  multiplies the sum by the float at B+0x8, and the `swc1` at 0xdadb510 stores the sum itself, from before
  that multiply, back to B+0x8 on every call.
  Seven branches follow the arithmetic and five of them can jump to the tail path at 0xdadb610. Call the
  sum s, the signed value A+0xc plus the first value times A+0x0 plus the second value times A+0x4 q, and
  the value A+0x1c plus the first value times A+0x10 plus the second value times A+0x14 u, with s and q
  carried in two saved float registers.
  The `bc1f` at 0xdadb528 jumps to the tail path when s times the float at B+0x8 is negative (compare at
  0xdadb520), and the `bc1t` at 0xdadb554 jumps there when s times the float at B+0x4, in absolute value,
  is below the absolute value of q or unordered (compare at 0xdadb54c).
  Next, r is s times the float at B+0xc plus q. The `bc1f` at 0xdadb570 skips the following compare, going
  on to the u group, when r is negative, and otherwise the `bc1t` at 0xdadb580 jumps to the tail path when
  r is below s times the float at B+0x18 or unordered.
  The u group repeats the s-versus-B+0x4 test with u (the `bc1t` at 0xdadb5b4), then forms r as s times
  the float at B+0x10 plus u: the `bc1f` at 0xdadb5d0 skips to the write path when it is negative,
  otherwise the `bc1t` at 0xdadb5e0 jumps to the tail path when it is below s times the float at B+0x18 or
  unordered.
  The saved float registers are restored first. With every test passed, the constant 0xffffffff8080c800
  (0x8080 at 0xdadb5f4, 0xc800 ORed in by the `ori` at 0xdadb5f8) is stored to 0x10000 by the `sw` at
  0xdadb600.
  Then come a0 with the `sw` at 0xdadb604 and then a1, the last `sw` sitting at 0xdadb60c in the delay
  slot of the `jr ra` at 0xdadb608, which returns v0, which the `lui` at 0xdadb5fc sets to 0x10000.
  On the tail path the `lw` at 0xdadb61c reads t9 from B+0x20, a2 is cleared at 0xdadb620, a3 is set to
  0x3f800000 by the `lui` at 0xdadb628 in the delay slot of the `jr t9` at 0xdadb624, and a0 and a1 are
  left as they arrived.
  Inferred: the tail path is the general-case handler for vertices that fail the tests, because the direct
  path emits only three words while the tail receives the original arguments plus fixed a2 and a3.
  Unknown: the routine entered by the `jr t9` at 0xdadb624, which is the word at B+0x20 and whose runtime
  contents would settle it.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): which device answers at 0x10000, since no linked mmio row lists that address and the rows cover
  0x110000 and 0x120000.
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
- `__glOdyim_Vertex2i_mag_line0` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb0a80 (n32).
  Takes integer coordinates in a0 and a1, moves them to floating-point registers and converts them to
  single precision in $f12 and $f13 for the checks, and keeps the integers for the output. The checks use
  records A and B, whose pointers are the words at fixed addresses 0x1020 and 0x1024 (`lw` at 0xdbb0a90
  and 0xdbb0a94).
  Inferred: the pair of words before the `swc1` at 0xdbb0abc are multiply-adds by their field layout,
  giving $f8 = A+0x3c plus $f12 times A+0x30 plus $f13 times A+0x34. The sum is also copied to $f10, and
  the store at 0xdbb0abc writes it to B+0x8 on every path after the multiply with the old B+0x8.
  The `bc1f` at 0xdbb0ad4 goes to the tail path at 0xdbb0b94 on a negative first product (`c.ueq.s` at
  0xdbb0acc). In stage one A+0xc (delay slot at 0xdbb0ad8) plus $f12 times A+0x0 plus $f13 times A+0x4 is
  compared with the sum scaled by B+0x4: the `bc1t` at 0xdbb0af8 jumps to the tail path if the scaled
  sum is below the value's absolute value or unordered (`c.ult.s` at 0xdbb0af0). Then that value plus
  B+0xc times $f10 is examined: a negative one makes the `bc1f` at 0xdbb0b10 skip to stage two at
  0xdbb0b28, otherwise the `bc1t` at 0xdbb0b20 jumps to the tail path if it is below B+0x18 times $f10
  (multiply in the delay slot at 0xdbb0b14, run on both paths).
  Stage two goes through A+0x1c, A+0x10, A+0x14 and B+0x10 (`bc1t` at 0xdbb0b4c and 0xdbb0b74); a
  negative result at the `bc1f` at 0xdbb0b64 jumps to the store block at 0xdbb0b7c.
  The block stores three 4-byte words to absolute 0x4000. 0xffffffff8080c800 goes first (formed by the
  instructions at 0xdbb0b7c and 0xdbb0b80, written by the `sw` at 0xdbb0b84); a0 follows at 0xdbb0b88
  and a1 last at 0xdbb0b90, in the return's delay slot, both as they arrived.
  On return v0 holds the word loaded from 0x1020.
  The tail path loads t9 from B+0x20 (0xdbb0b94), clears $f14, sets $f15 to 0x3f800000 and jumps at
  0xdbb0ba0, a0 to a3 unchanged.
  Unknown: the callee of the jump at 0xdbb0ba0, since the pointer in record B is filled at run time.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): the register at absolute 0x4000; the linked windows at 0x110000 and 0x120000 do not list it.
  Evidence grade: inferred.
- `__glOdyim_Vertex2i_mag_line0` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49d0c0 (n64).
  Converts the integers in `a0` and `a1` to single-precision floats in `$f12` and `$f13` and runs
  two rounds of float tests on them against the records at absolute 0x1038 and 0x1040; a full pass
  writes a header word and the two original integers to absolute 0x4000, and otherwise it leaves by
  an indirect jump whose pointer comes from the second record.
  Then, it forms a sum from the 0x1038 record: the word at +0x3c, plus `$f12` times the word at
  +0x30, plus `$f13` times the word at +0x34 (a pair of multiply-add steps), and keeps a copy of it.
  The `swc1` at 0xb49d0fc places that sum, not the +0x3c word as loaded, to +0x8 of the 0x1040
  record, after the old +0x8 word was loaded at 0xb49d0e8.
  Next, the sum is multiplied by that old word and by the +0x4 word of the 0x1040 record (loaded at
  0xb49d0e4), and the products become absolute values; the `bc1f` at 0xb49d114 transfers to the
  outgoing path starting at 0xb49d1d4 unless the first product equals its own absolute value or the pair is
  unordered, so it leaves when that product is negative.
  After that, the first of the later tests forms the 0x1038 record's word at +0xc plus `$f12` times
  +0x0 plus `$f13` times +0x4, keeps a copy, takes its absolute value, and the `bc1t` at 0xb49d138
  transfers to the outgoing jump when the second product is less than that value or unordered.
  From there, the word at +0xc of the 0x1040 record (loaded at 0xb49d134), times the kept first sum,
  is added to the kept copy of that value; a negative total takes the `bc1f` at 0xb49d150 past the
  next comparison, and otherwise the `bc1t` at 0xb49d160 transfers to the outgoing jump when the
  total is less than the +0x18 word of the 0x1040 record times the kept first sum, or unordered.
  Following that, a second round does the same with the 0x1038 words at +0x1c, +0x10 and +0x14 and
  the 0x1040 words at +0x10 and +0x18: the `bc1t` at 0xb49d18c leaves on its first comparison, the
  `bc1f` at 0xb49d1a4 skips the last comparison for a negative result and goes to the return block
  at 0xb49d1bc, and the `bc1t` at 0xb49d1b4 leaves on the last one.
  Beyond that, on a full pass the `sw` at 0xb49d1c4 writes 0xffffffff8080c800 to absolute 0x4000
  (0x8080 loaded at 0xb49d1bc, 0xc800 ORed in at 0xb49d1c0), the `sw` at 0xb49d1c8 writes `a0` as it
  came in, and the `sw` at 0xb49d1d0 in the delay slot of the return at 0xb49d1cc writes `a1`; the
  doubleword read from absolute 0x1038 is the returned value.
  The tail-jump path obtains `t9` from +0x20 of the 0x1040 record at 0xb49d1d4, clears `$f14`, and
  puts 0x3f800000 in `$f15` through `t0` (the `mtc1` in the delay slot of the `jr t9` at 0xb49d1e0),
  leaving `a0` to `a3`, `$f12` and `$f13` as at entry.
  Inferred: the three stores to absolute 0x4000 form one record, a header with the two coordinate
  words trailing it, owing to the fact that they hit the same address and the second and third write
  the entry coordinates.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): the board-side result of the three stores to absolute 0x4000, as no linked row covers it
  and the windows begin at 0x110000; a datasheet covering that address would close it.
  Unknown: the final target of the `jr t9` at 0xb49d1e0; a captured run of the jump is the remaining
  route.
  Evidence grade: inferred.
- `__glOdyim_Vertex2i_mag` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad9780 (o32).
  Takes the two integer coordinates in a0 and a1, converts each to single precision for the arithmetic
  (floats $f12 and $f14), transforms the point with the block held at absolute 0x1020, checks it
  against the block held at absolute 0x1024, and either emits the original integers at absolute
  0x10000 or defers through a table word. The first block's +0x3c word, x times +0x30 and y times
  +0x34 are added together; the `swc1` at 0xdad97c0 stores it as a single-precision word into the
  second block at +0x8 before any test, over the +0x8 word that was loaded first and multiplies the
  sum. Negative-product exit: the `c.ueq.s` at 0xdad97d0 against the absolute value, then the `bc1f`
  at 0xdad97d8. The `bc1t` at 0xdad9800 defers when the absolute value of the sum scaled by the +0x4
  word of the second block is less than the absolute value of a second sum built from the +0xc, +0x0
  and +0x4 words of the first block (`c.ult.s` at 0xdad97f8), or when either is unordered; the `bc1t`
  at 0xdad9828 makes the same comparison against a third sum built from the +0x1c, +0x10 and +0x14
  words (`c.ult.s` at 0xdad9820). When all three pass, the `lui` at 0xdad9824 and the `ori` at
  0xdad982c build 0xffffffff8080c800, the `sw` at 0xdad9834 stores that word to absolute 0x10000, the
  `sw` at 0xdad9838 stores a0 and the `sw` at 0xdad9840, in the delay slot of the return at 0xdad983c,
  stores a1, both as received; v0 comes back as 0x10000. Deferral goes through the `jr` at 0xdad984c,
  using the +0x20 word of the second block that 0xdad9844 loads, with a0 and a1 as received, a2 zero
  and a3 0x3f800000. Unknown: the destination held in the +0x20 word; nothing in the bundle resolves
  it, and a run capture would.
  Evidence grade: established.
- `__glOdyim_Vertex2i_mag` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231af00 (n64).
  Converts the integers in `a0` and `a1` to single-precision floats in `$f12` and `$f13` and runs
  three float tests on them against the records at absolute 0x1038 and 0x1040; a pass writes a
  constant word and the two integers, unconverted, to absolute 0x10000, and on failure it jumps
  through the second record's pointer.
  Beyond that, it computes a sum from the 0x1038 record: the word at +0x3c, plus `$f12` times the
  word at +0x30, plus `$f13` times the word at +0x34 (a pair of multiply-add steps).
  At this stage, the `swc1` at 0x231af38 writes that sum, not the +0x3c word as loaded, to +0x8 of
  the 0x1040 record, after the old +0x8 word has been read at 0x231af28.
  In turn, the sum is multiplied by that old word and by the +0x4 word of the 0x1040 record (loaded
  at 0x231af24), and both products are reduced to absolute values.
  Subsequently, the `bc1f` at 0x231af50 diverts to the tail path that starts at 0x231afac unless the first
  product equals its own absolute value or the pair is unordered (`c.ueq.s` at 0x231af48), so it
  leaves when that product is negative.
  Further on, two more tests build a value from the 0x1038 record as the word at +0xc plus `$f12`
  times +0x0 plus `$f13` times +0x4, then the same with +0x1c, +0x10 and +0x14; each is reduced to
  an absolute value, and the `bc1t` at 0x231af70 and at 0x231af90 diverts to the jump-out block when
  the second product is less than that value or unordered (`c.ult.s` at 0x231af68 and 0x231af88).
  Then, in the passing case `v0` becomes 0x10000 (immediate 0x1 at 0x231af98), the `sw` at 0x231af9c
  writes 0xffffffff8080c800 through it (0xffffffff80800000 built at 0x231af8c, 0xc800 ORed in at
  0x231af94), the `sw` at 0x231afa0 writes `a0` as it came in, and the `sw` at 0x231afa8 in the
  delay slot of the return at 0x231afa4 writes `a1`; the caller gets back 0x10000.
  The tail-jump path picks up `t9` from +0x20 of the 0x1040 record at 0x231afac, clears `$f14`, and
  puts 0x3f800000 in `$f15` through `t0` (the `mtc1` in the delay slot of the `jr t9` at 0x231afb8),
  leaving `a0` to `a3`, `$f12` and `$f13` as at entry.
  Inferred: the three stores to absolute 0x10000 are one record, a header word and the pair of
  coordinates after it, seeing that they hit the same address and the second and third write the
  incoming coordinates.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): the board-side destination of the writes to absolute 0x10000, as the linked windows start
  at 0x110000 and no row names it; a datasheet naming the address would resolve it.
  Unknown: the address the `jr t9` at 0x231afb8 jumps to; a trace of the running jump would name the
  destination.
  Evidence grade: inferred.
- `__glOdyim_Vertex2i_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49b840 (n64).
  Turns the integers in `a0` and `a1` into single-precision floats in `$f12` and `$f13` (two moves
  to the floating-point unit, then two word-to-single conversions) and, if those floats pass three
  tests against the records at absolute 0x1038 and 0x1040, writes a header word and the two original
  integers to absolute 0x4000, and any failure takes a pointer from the second record and jumps
  through it.
  Following that, it forms a sum from the 0x1038 record: the word at +0x3c, plus `$f12` times the
  word at +0x30, plus `$f13` times the word at +0x34 (a pair of multiply-add steps).
  Beyond that, the `swc1` at 0xb49b878 stores that sum, not the +0x3c word as loaded, to +0x8 of the
  0x1040 record, once the old +0x8 word has been read at 0xb49b868.
  At this stage, the sum is multiplied by that old word and by the +0x4 word of the 0x1040 record
  (loaded at 0xb49b864), and both products are reduced to absolute values.
  In turn, the `bc1f` at 0xb49b890 exits to the tail path that starts at 0xb49b8e8 unless the first product
  equals its own absolute value or the pair is unordered (`c.ueq.s` at 0xb49b888), so it leaves when
  that product is negative.
  Subsequently, two more tests build a value from the 0x1038 record as the word at +0xc plus `$f12`
  times +0x0 plus `$f13` times +0x4, then the same with +0x1c, +0x10 and +0x14; each is reduced to
  an absolute value, and the `bc1t` at 0xb49b8b0 and at 0xb49b8d0 exits to the tail call when the
  second product is less than that value or unordered (`c.ult.s` at 0xb49b8a8 and 0xb49b8c8).
  Further on, with the tests passed, the `sw` at 0xb49b8d8 writes 0xffffffff8080c800 to absolute
  0x4000 (0xffffffff80800000 built at 0xb49b8cc, 0xc800 ORed in at 0xb49b8d4), the `sw` at 0xb49b8dc
  writes `a0` as it came in, and the `sw` at 0xb49b8e4 in the delay slot of the return at 0xb49b8e0
  writes `a1` as it came in; the value returned is the doubleword read from absolute 0x1038.
  The tail-jump path pulls `t9` from +0x20 of the 0x1040 record at 0xb49b8e8, clears `$f14`, and
  puts 0x3f800000 in `$f15` through `t0` (the `mtc1` in the delay slot of the `jr t9` at 0xb49b8f4),
  leaving `a0` to `a3`, `$f12` and `$f13` as at entry.
  Inferred: the three stores to absolute 0x4000 are one record, the header word first, then both
  coordinates, given that they hit the same address and the second and third write the incoming
  coordinates.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): how absolute 0x4000 is seen on the board side; the linked rows begin at 0x110000 and none
  names it; the route is a datasheet line naming the address.
  Unknown: which routine the `jr t9` at 0xb49b8f4 enters; tracing the jump at run time is the route.
  Evidence grade: inferred.
- `__glOdyim_Vertex2i_smallw` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad8480 (o32).
  Short path of a vertex call taking the two integer arguments a0 and a1: it converts them to single-
  precision floats, transforms them with the record whose pointer sits at abs 0x1020, and either writes a
  command word and the two values straight to 0x10000 or tail-jumps through the word at +0x20 of the
  record whose pointer sits at abs 0x1024.
  Both pointers are loaded at 0xdad8490 (record A, from abs 0x1020) and 0xdad8494 (record B, from abs
  0x1024), after the integer-to-float conversion at the start of the routine.
  It adds A+0x3c, the first value times A+0x30 and the second value times A+0x34 into a sum, multiplies
  the sum by the float at B+0x8, and the `swc1` at 0xdad84c0 stores the sum itself, from before that
  multiply, back to B+0x8 on each call.
  Just two tests lead to the tail path at 0xdad84f8: the `bc1f` at 0xdad84d0 jumps when the product is
  negative (its absolute value, compared with it at 0xdad84c8, differs and is ordered), and the `bc1t` at
  0xdad84dc jumps when the absolute value of the sum is below the float at B+0x0 or unordered (that
  compare is in the delay slot of the first branch, at 0xdad84d4).
  When the tests fall through, the constant 0xffffffff8080c800 (0x8080 at 0xdad84d8, 0xc800 ORed in by the
  `ori` at 0xdad84e0) is stored to 0x10000 by the `sw` at 0xdad84e8.
  After it come a0 with the `sw` at 0xdad84ec and then a1, the last `sw` sitting at 0xdad84f4 in the delay
  slot of the `jr ra` at 0xdad84f0, which returns v0, which the `lui` at 0xdad84e4 sets to 0x10000.
  In the tail block the `lw` at 0xdad84f8 reads t9 from B+0x20, a2 is cleared at 0xdad84fc, a3 is set to
  0x3f800000 by the `lui` at 0xdad8504 in the delay slot of the `jr t9` at 0xdad8500, and a0 and a1 are
  left as they arrived.
  Inferred: the tail path is a general fallback for vertices that fail the tests, because the direct path
  emits only three words while the tail receives the original arguments plus fixed a2 and a3.
  Unknown: the code entered by the `jr t9` at 0xdad8500, which is the word at B+0x20 and whose runtime
  contents would settle it.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): which unit answers at 0x10000, since no linked mmio row lists that address and the rows cover
  0x110000 and 0x120000.
  Evidence grade: inferred.
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
- `__glOdyim_Vertex2iv_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdadb640 (o32).
  Direct path of a vertex call taking the two words at a0 and a0+0x4 (loaded into t4 and t5 by the `lw` at
  0xdadb640 and 0xdadb644): it turns them to single-precision floats, runs range tests against the records
  whose pointers sit at abs 0x1020 and abs 0x1024, and either writes a command word and the two values
  straight to 0x10000 or tail-jumps through the word at +0x20 of the second record.
  Two pointers are loaded at 0xdadb664 (record A, from abs 0x1020) and 0xdadb668 (record B, from abs
  0x1024), once the integer-to-float conversion at the start of the routine.
  Next it adds A+0x3c, the first value times A+0x30 and the second value times A+0x34 into a sum, scales
  the sum by the float at B+0x8, and the `swc1` at 0xdadb698 stores the sum itself, from before that
  multiply, back to B+0x8 on every pass.
  Altogether seven branches follow the float work and five of them can jump to the tail path at 0xdadb798.
  Call the sum s, the signed value A+0xc plus the first value times A+0x0 plus the second value times
  A+0x4 q, and the value A+0x1c plus the first value times A+0x10 plus the second value times A+0x14 u,
  with s and q kept in two saved float registers.
  The `bc1f` at 0xdadb6b0 jumps to the tail path when s times the float at B+0x8 is negative (compare at
  0xdadb6a8), and the `bc1t` at 0xdadb6dc goes there when s times the float at B+0x4, in absolute value,
  is below the absolute value of q or unordered (compare at 0xdadb6d4).
  After that, r is s times the float at B+0xc plus q. The `bc1f` at 0xdadb6f8 bypasses the following
  compare, going on to the u group, when r is less than zero, and otherwise the `bc1t` at 0xdadb708
  branches to the tail path when r is below s times the float at B+0x18 or unordered.
  The u group redoes the s-versus-B+0x4 test with u (the `bc1t` at 0xdadb73c), then forms r as s times the
  float at B+0x10 plus u: the `bc1f` at 0xdadb758 skips to the write path when it is negative, otherwise
  the `bc1t` at 0xdadb768 branches to the tail path when it is below s times the float at B+0x18 or
  unordered.
  Both saved float registers are reloaded first. With every test passed, the literal 0xffffffff8080c800
  (0x8080 at 0xdadb77c, 0xc800 ORed in by the `ori` at 0xdadb780) is written to 0x10000 by the `sw` at
  0xdadb788.
  Next come the word loaded from a0 (t4) with the `sw` at 0xdadb78c and then the word loaded from a0+0x4
  (t5), the final `sw` sitting at 0xdadb794 in the delay slot of the `jr ra` at 0xdadb790, which returns
  v0, which the `lui` at 0xdadb784 sets to 0x10000.
  When a test fails the `lw` at 0xdadb7a4 fetches t9 from B+0x20, a2 is cleared at 0xdadb7a8, a3 is set to
  0x3f800000 by the `lui` at 0xdadb7b0 in the delay slot of the `jr t9` at 0xdadb7ac, and a0 and a1 are
  left as they arrived.
  Inferred: the tail path is the slower handler for vertices that miss the tests, because the direct path
  emits only three words while the tail receives the original arguments plus fixed a2 and a3.
  Unknown: the target entered by the `jr t9` at 0xdadb7ac, which is the word at B+0x20 and whose contents
  at run time would settle it.
  Unknown: which component answers at 0x10000, since no linked mmio row names that address and the rows
  cover 0x110000 and 0x120000.
  Test: the mapping-address read in "Test that settles the rest" at the top of this file; a client mapping that starts at 0 makes 0x10000 board +0x110000.
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
- `__glOdyim_Vertex2iv_mag` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad9880 (o32).
  Fast path of a vertex call taking the two words at a0 and a0+0x4 (loaded into t4 and t5 by the `lw` at
  0xdad9880 and 0xdad9884): it turns them to single-precision floats, runs three range tests against the
  records whose pointers sit at abs 0x1020 and abs 0x1024, and either writes a command word and the two
  values straight to 0x10000 or tail-jumps through the word at +0x20 of the second record.
  The pointers are loaded at 0xdad9898 (record A, from abs 0x1020) and 0xdad989c (record B, from abs
  0x1024), once the integer-to-float conversion at the start of the routine.
  The routine adds A+0x3c, the first value times A+0x30 and the second value times A+0x34 into a sum,
  scales the sum by the float at B+0x8, and the `swc1` at 0xdad98c8 stores the sum itself, from before
  that multiply, back to B+0x8 on every call.
  Three tests lead to the tail path at 0xdad994c: the `bc1f` at 0xdad98e0 jumps when the product is
  negative (its absolute value, compared with it at 0xdad98d8, is unequal and is ordered).
  The sum, times the float at B+0x4, is put into absolute value, and the `bc1t` at 0xdad9908 jumps when
  that is below the absolute value of a second sum (A+0xc plus the first value times A+0x0 plus the second
  value times A+0x4) or unordered, compare at 0xdad9900.
  The `bc1t` at 0xdad9930 makes the same test against a third sum (A+0x1c plus the first value times
  A+0x10 plus the second value times A+0x14), the compare at 0xdad9928.
  With every test passed, the fixed word 0xffffffff8080c800 (0x8080 at 0xdad992c, 0xc800 ORed in by the
  `ori` at 0xdad9934) is stored to 0x10000 by the `sw` at 0xdad993c.
  Then come the word loaded from a0 (t4) with the `sw` at 0xdad9940 and then the word loaded from a0+0x4
  (t5), the final `sw` sitting at 0xdad9948 in the delay slot of the `jr ra` at 0xdad9944, which returns
  v0, which the `lui` at 0xdad9938 sets to 0x10000.
  On the tail path the `lw` at 0xdad994c fetches t9 from B+0x20, a2 is cleared at 0xdad9950, a3 is set to
  0x3f800000 by the `lui` at 0xdad9958 in the delay slot of the `jr t9` at 0xdad9954, and a0 and a1 are
  left as they arrived.
  Inferred: the tail path is the general-case handler for vertices that miss the tests, because the direct
  path emits only three words while the tail receives the original arguments plus fixed a2 and a3.
  Unknown: the routine entered by the `jr t9` at 0xdad9954, which is the word at B+0x20 and whose contents
  at run time would settle it.
  Unknown: which device answers at 0x10000, since no linked mmio row names that address and the rows cover
  0x110000 and 0x120000.
  Test: the mapping-address read in "Test that settles the rest" at the top of this file; a client mapping that starts at 0 makes 0x10000 board +0x110000.
  Evidence grade: inferred.
- `__glOdyim_Vertex2iv_mag` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231afc0 (n64).
  Reads two integer words from `a0` +0x0 and +0x4 (the `lw` at 0x231afc0 and 0x231afc4), converts
  them to single-precision floats in `$f12` and `$f13`, and applies three float tests against the
  records at absolute 0x1038 and 0x1040; if all pass it writes a header word and the two integer
  words to absolute 0x10000, and failing a test, it tail-calls the pointer in the second record.
  At this stage, it computes a sum from the 0x1038 record: the word at +0x3c, plus `$f12` times the
  word at +0x30, plus `$f13` times the word at +0x34 (two multiply-adds).
  In turn, the `swc1` at 0x231b000 writes that sum, not the +0x3c word as loaded, to +0x8 of the
  0x1040 record, once the old +0x8 word was loaded at 0x231aff0.
  Subsequently, the sum is multiplied by that old word and by the +0x4 word of the 0x1040 record
  (loaded at 0x231afec), and both products are reduced to absolute values.
  Further on, the `bc1f` at 0x231b018 heads for the tail path that starts at 0x231b074 unless the first product
  equals its own absolute value or the pair is unordered (`c.ueq.s` at 0x231b010), so it leaves when
  that product is negative.
  Then, two more tests build a value from the 0x1038 record as the word at +0xc plus `$f12` times
  +0x0 plus `$f13` times +0x4, then the same with +0x1c, +0x10 and +0x14; each result is made
  absolute, and the `bc1t` at 0x231b038 and at 0x231b058 heads for the fallback jump when the second
  product is less than that value or unordered (`c.ult.s` at 0x231b030 and 0x231b050).
  Next, on a full pass `v0` is set to 0x10000 (immediate 0x1 at 0x231b060), the `sw` at 0x231b064
  writes 0xffffffff8080c800 through it (0xffffffff80800000 built at 0x231b054, 0xc800 ORed in at
  0x231b05c), the `sw` at 0x231b068 writes the first integer word unchanged, and the `sw` at
  0x231b070 in the delay slot of the return at 0x231b06c writes the second; it hands back 0x10000.
  The tail-jump path takes `t9` from +0x20 of the 0x1040 record at 0x231b074, clears `$f14`, and
  puts 0x3f800000 in `$f15` through `t0` (the `mtc1` in the delay slot of the `jr t9` at 0x231b080),
  leaving `a0` to `a3`, `$f12` and `$f13` as at entry.
  Inferred: the three stores to absolute 0x10000 form one record, a word of header and then the
  coordinate pair, for the reason that they hit the same address and the second and third write the
  incoming coordinates.
  Unknown: the hardware reached by the writes to absolute 0x10000, since the linked board windows
  begin at 0x110000; a published register map would answer it.
  Test: the mapping-address read in "Test that settles the rest" at the top of this file; a client mapping that starts at 0 makes 0x10000 board +0x110000.
  Unknown: the callee behind the `jr t9` at 0x231b080; a recorded run is the route to the
  destination.
  Evidence grade: inferred.
- `__glOdyim_Vertex2iv_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbaf2c0 (n32).
  Takes two integer words from the buffer at a0 (loaded at 0xdbaf2c0 and 0xdbaf2c4), converts them
  to the single floats $f12 and $f13, and checks them against two parameter blocks before either
  emitting three words to abs 0x4000 or jumping onward through the second block.
  The blocks are the memory at the words held in abs 0x1020 (first) and abs 0x1024 (second), read at
  0xdbaf2d8 and 0xdbaf2dc.
  Two multiply-adds turn $f8, loaded from first+0x3c at 0xdbaf2e4, into first[+0x3c] +
  $f12*first[+0x30] + $f13*first[+0x34]. The `swc1` at 0xdbaf300 writes that sum to second+0x8 on
  every call, after $f7 has been set to the sum times the old second[+0x8] and before $f8 is
  multiplied by second[+0x4].
  First exit: the `c.ueq.s` at 0xdbaf310 compares |$f7| with $f7, and the `bc1f` at 0xdbaf318 takes
  the path to 0xdbaf370 when they differ, which means $f7 is negative.
  Second and third exits: $f9 is rebuilt from the first block as first[+0xc] + $f12*first[+0x0] +
  $f13*first[+0x4], then as first[+0x1c] + $f12*first[+0x10] + $f13*first[+0x14]. Compares at
  0xdbaf330 and 0xdbaf350 (`c.ult.s`) set |$f8| (the sum times second[+0x4], made absolute) against
  the absolute value of each, and the `bc1t` at 0xdbaf338 and 0xdbaf358 send control to 0xdbaf370 if
  |$f8| comes out lower or either side is a NaN.
  Falling through all three, the `sw` at 0xdbaf360 writes 0xffffffff8080c800 to abs 0x4000 (t0 is
  0xffffffff80800000 from 0xdbaf354 and the delay slot at 0xdbaf35c ORs in 0xc800), the `sw` at
  0xdbaf364 writes the first input word as loaded, and the `sw` at 0xdbaf36c in the delay slot of
  the return at 0xdbaf368 writes the second; the value left in v0 is the word read from abs 0x1020.
  The other path starts at 0xdbaf370: it reads the jump target from second+0x20, clears $f14, puts
  0x3f800000 in t0 (0xdbaf378) and copies it to $f15 in the delay slot of the `jr t9` at 0xdbaf37c,
  leaving a0 to a3 untouched and a4, a5 holding the two input words.
  Unknown: where the `jr t9` at 0xdbaf37c lands, because the pointer at second+0x20 is unresolved;
  stepping through the call would settle it.
  Unknown: any device behind abs 0x4000, since the linked mmio rows stop at the windows 0x110000 and
  0x120000; the board address map would settle it.
  Test: the mapping-address read in "Test that settles the rest" at the top of this file; a client mapping that starts at 0 makes 0x4000 board +0x120000.
  Evidence grade: established.
- `__glOdyim_Vertex2iv_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49b900 (n64).
  Reads two 32-bit words from a0 (`lw` at 0xb49b900 and 0xb49b904) and, if three float tests pass, writes them
  to abs 0x4000 behind a constant header word. A failing test instead makes a tail call through a pointer held
  in the record at the doubleword abs 0x1040. Before the two record pointers are loaded (`ld` at 0xb49b918 and
  0xb49b91c), both words are converted to single precision into f12 and f13. The first sum is the word at +0x3c
  of the record at the doubleword abs 0x1038, plus the converted words times the words at +0x30 and +0x34
  (`lwc1` at 0xb49b920 to 0xb49b928). The `swc1` at 0xb49b940 stores that sum to +0x8 of the record at abs
  0x1040, after the old +0x8 word was loaded at 0xb49b930. The first test (`c.ueq.s` at 0xb49b950, `bc1f` at
  0xb49b958) leaves for the tail path when the product of the new sum and the old +0x8 word is negative. The
  second and third tests scale the sum by the word at +0x4 of the second record (`lwc1` at 0xb49b92c) and
  compare its absolute value with the absolute value of a sum built from +0xc, +0x0 and +0x4 of the first
  record, then of one built from +0x1c, +0x10 and +0x14; the `bc1t` at 0xb49b978 and 0xb49b998 leave when the
  scaled value is below that sum or unordered with it (`c.ult.s` at 0xb49b970 and 0xb49b990). When none leaves,
  the `sw` at 0xb49b9a0 writes the constant 0xffffffff8080c800 (0x8080 at 0xb49b994, `ori` of 0xc800 at
  0xb49b99c) to abs 0x4000. After that the `sw` at 0xb49b9a4 writes the word from a0+0 and the `sw` at
  0xb49b9ac, in the delay slot of the `jr ra` at 0xb49b9a8, writes the word from a0+4. The return value v0 is
  the doubleword loaded from abs 0x1038. On the tail path the `ld` at 0xb49b9b0 loads t9 from +0x20 of the
  second record; a4 and a5 still hold the two words, f12 and f13 the converted ones, and the delay slot of the
  `jr t9` at 0xb49b9bc moves t0 (0x3f800000, set at 0xb49b9b8) into f15. Unknown: the target of the `jr t9` at
  0xb49b9bc, which is the doubleword at +0x20 of the second record, and a run-time read of it would settle it.
  Unknown: the device-side result of the writes to abs 0x4000, since the bundle has no linked register row or
  datasheet excerpt for that address.
  Test: the mapping-address read in "Test that settles the rest" at the top of this file; a client mapping that starts at 0 makes 0x4000 board +0x120000.
  Evidence grade: established.
- `__glOdyim_Vertex2iv_smallw` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad8540 (o32).
  Short path of a vertex call taking the two words at a0 and a0+0x4 (loaded into t4 and t5 by the `lw` at
  0xdad8540 and 0xdad8544): it casts them to single-precision floats, transforms them with the record
  whose pointer sits at abs 0x1020, and either writes a command word and the two values straight to
  0x10000 or tail-jumps through the word at +0x20 of the record whose pointer sits at abs 0x1024.
  Both pointers are loaded at 0xdad8558 (record A, from abs 0x1020) and 0xdad855c (record B, from abs
  0x1024), following the integer-to-float conversion at the start of the routine.
  It adds A+0x3c, the first value times A+0x30 and the second value times A+0x34 into a sum, weights the
  sum by the float at B+0x8, and the `swc1` at 0xdad8588 stores the sum itself, from before that multiply,
  back to B+0x8 on each call.
  Just two tests lead to the tail path at 0xdad85c0: the `bc1f` at 0xdad8598 jumps when the product is
  negative (its absolute value, compared with it at 0xdad8590, does not match and is ordered), and the
  `bc1t` at 0xdad85a4 jumps when the absolute value of the sum is below the float at B+0x0 or unordered
  (that compare is in the delay slot of the first branch, at 0xdad859c).
  When the tests fall through, the literal 0xffffffff8080c800 (0x8080 at 0xdad85a0, 0xc800 ORed in by the
  `ori` at 0xdad85a8) is stored to 0x10000 by the `sw` at 0xdad85b0.
  After it come the word loaded from a0 (t4) with the `sw` at 0xdad85b4 and then the word loaded from
  a0+0x4 (t5), the closing `sw` sitting at 0xdad85bc in the delay slot of the `jr ra` at 0xdad85b8, which
  returns v0, which the `lui` at 0xdad85ac sets to 0x10000.
  In the tail block the `lw` at 0xdad85c0 loads t9 from B+0x20, a2 is cleared at 0xdad85c4, a3 is set to
  0x3f800000 by the `lui` at 0xdad85cc in the delay slot of the `jr t9` at 0xdad85c8, and a0 and a1 are
  left as they arrived.
  Inferred: the tail path is a general fallback for vertices that do not pass the tests, because the
  direct path emits only three words while the tail receives the original arguments plus fixed a2 and a3.
  Unknown: the code entered by the `jr t9` at 0xdad85c8, which is the word at B+0x20 and whose value at
  run time would settle it.
  Unknown: which unit answers at 0x10000, since no linked mmio row covers that address and the rows cover
  0x110000 and 0x120000.
  Test: the mapping-address read in "Test that settles the rest" at the top of this file; a client mapping that starts at 0 makes 0x10000 board +0x110000.
  Evidence grade: inferred.
- `__glOdyim_Vertex2iv_smallw` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2319e40 (n64).
  Fetches two 32-bit words from a0 (`lw` at 0x2319e40 and 0x2319e44) and, if two float tests pass, writes them
  to abs 0x10000 behind a constant header word. Any test that fails diverts to a tail call through a pointer
  held in the record at the doubleword abs 0x1040. Before the record pointers are loaded (`ld` at 0x2319e58 and
  0x2319e5c), both words are converted to single precision into f12 and f13. The sum is the word at +0x3c of the
  record at the doubleword abs 0x1038, plus the converted words times the words at +0x30 and +0x34 (`lwc1` at
  0x2319e60 to 0x2319e68). The `swc1` at 0x2319e80 stores that sum to +0x8 of the record at abs 0x1040, after
  the old +0x8 word was loaded at 0x2319e70. The first test (`c.ueq.s` at 0x2319e88, `bc1f` at 0x2319e90) leaves
  for the tail path when the product of the new sum and the old +0x8 word is negative. The second test compares
  the absolute value of the sum with the word at +0x0 of the second record (`lwc1` at 0x2319e6c); the `c.ult.s`
  in the delay slot at 0x2319e94 sets the flag, and the `bc1t` at 0x2319e9c leaves when the sum is below that
  word or unordered with it. When neither leaves, the `sw` at 0x2319ea8 writes the constant 0xffffffff8080c800
  (0x8080 at 0x2319e98, `ori` of 0xc800 at 0x2319ea0) to abs 0x10000 through v0 set at 0x2319ea4. After that the
  `sw` at 0x2319eac writes the word from a0+0 and the `sw` at 0x2319eb4, in the delay slot of the `jr ra` at
  0x2319eb0, writes the word from a0+4. The return value v0 is 0x10000. On the tail path the `ld` at 0x2319eb8
  loads t9 from +0x20 of the second record; a4 and a5 still hold the two words, f12 and f13 the converted ones,
  and the delay slot of the `jr t9` at 0x2319ec4 moves t0 (0x3f800000, set at 0x2319ec0) into f15. Unknown: the
  destination of the `jr t9` at 0x2319ec4, which is the doubleword at +0x20 of the second record, and a run-time
  read of it would settle it. Unknown: the device-side outcome of the writes to abs 0x10000, since the bundle
  has no linked register row or datasheet excerpt for that address.
  Evidence grade: established.
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
- `__glOdyim_Vertex2sv_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdadb940 (o32).
  Fast path for one two-component vertex given as a pointer to two halfwords: when a chain of
  single-precision tests passes it writes the vertex to the absolute address 0x10000 and returns,
  otherwise it tail-jumps through a handler pointer kept in a state record. The two halfwords at +0
  and +2 of a0 are loaded as t4 and t5 and converted to single precision. A third value is built
  from the record whose address sits at absolute 0x1020 by multiply-add (+0x3c plus the first value
  times +0x30 plus the second times +0x34), kept in a saved register,. It lands via the `swc1` at
  0xdadb998 to +0x8 of the record whose address sits at absolute 0x1024; the word previously at +0x8
  was loaded first and multiplied by the new value. The tests then run in order. The `bc1f` at
  0xdadb9b0 leaves for the tail-jump block at 0xdadba98 when that product's magnitude differs from
  the product itself (a negative product). The `bc1t` at 0xdadb9dc leaves when the magnitude of the
  new value times the word at +0x4 of the 0x1024 record is less than, or unordered with, the
  magnitude of a second multiply-add over the 0x1020 record (+0xc, +0x0, +0x4). The pair at
  0xdadb9f8 and 0xdadba08, and the pair at 0xdadba58 and 0xdadba68, are further sign-then-compare
  tests against the 0x1024 record at +0xc, +0x10 and +0x18; the `bc1t` at 0xdadba3c repeats the
  magnitude test with the 0x1020 record at +0x10, +0x14 and +0x1c. Every exit path other than the
  final fall-through to 0xdadba70 goes to 0xdadba98. At 0xdadba70 the code restores the two saved
  floating-point registers (stored by the `sdc1` at 0xdadb95c and 0xdadb960), builds
  0xffffffff8080c800 in t0 (0xdadba7c and 0xdadba80), sets v0 to 0x10000, and writes three words to
  0x10000: the constant (`sw` at 0xdadba88), the halfword from +0 sign-extended unchanged
  (0xdadba8c), and the halfword from +2 in the delay slot of the `jr ra` at 0xdadba90. The tail-jump
  block restores the same registers, loads the pointer at +0x20 of the 0x1024 record (0xdadbaa4),
  sets a2 to zero and puts 0x3f800000 in a3 in the delay slot of the `jr t9` at 0xdadbaac, with a0
  and a1 as at entry. Inferred: three consecutive stores to one absolute address (a constant word
  followed by the two halfword values) are a write sequence into a device window, since the bundle
  lists 0x10000 under memory-mapped I/O. Unknown: the destination of the indirect jump at 0xdadbaac,
  which depends on the word the 0x1024 record holds at +0x20; examining the code that sets that
  field would settle it.
  Evidence grade: inferred.
- `__glOdyim_Vertex2sv_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231cbc0 (n64).
  Fetches two sign-extended halfwords from a0 (`lh` at 0x231cbc0 and 0x231cbc4) and, once a chain of seven float
  tests has passed, writes them to abs 0x10000 behind a constant header word. Any test that fails diverts to a
  tail call through a pointer stored in the record that the doubleword at abs 0x1040 addresses. Before the
  record pointers are loaded (`ld` at 0x231cbd8 and 0x231cbdc), both halfwords are converted to single precision
  into f12 and f13. The first sum is the word at +0x3c of the record at the doubleword abs 0x1038, plus the
  converted values times the words at +0x30 and +0x34 (`lwc1` at 0x231cbe0 to 0x231cbe8). It is copied into f10
  and the `swc1` at 0x231cc04 stores it to +0x8 of the record at abs 0x1040, after the old +0x8 word was loaded
  at 0x231cbf0. The first test (`c.ueq.s` at 0x231cc14, `bc1f` at 0x231cc1c) leaves for the tail path when the
  product of the sum and the old +0x8 word is negative. The second sum is built from +0xc, +0x0 and +0x4 of the
  first record; the `bc1t` at 0x231cc40 leaves when the absolute value of the first sum scaled by the word at
  +0x4 of the second record (`lwc1` at 0x231cbec) is below the absolute value of the second sum or unordered
  with it (`c.ult.s` at 0x231cc38). Then the word at +0xc of the second record (`lwc1` at 0x231cc3c) times the
  first sum, plus the second sum, is formed. If that result is negative (`bc1f` at 0x231cc58 after `c.ueq.s` at
  0x231cc50) the next test is skipped; otherwise the `bc1t` at 0x231cc68 leaves when it is below the word at
  +0x18 of the second record times f10 (the multiply in the delay slot at 0x231cc5c) or unordered with it
  (`c.ult.s` at 0x231cc60). The same two steps repeat with a third sum built from +0x1c, +0x10 and +0x14 of the
  first record and the word at +0x10 of the second: the `bc1t` at 0x231cc94 (`c.ult.s` at 0x231cc8c), then the
  `bc1f` at 0x231ccac that skips the last test when the result is negative (`c.ueq.s` at 0x231cca4), else the
  `bc1t` at 0x231ccbc (`c.ult.s` at 0x231ccb4, multiply in the delay slot at 0x231ccb0). When no test leaves,
  the `sw` at 0x231ccd0 writes the constant 0xffffffff8080c800 (0x8080 at 0x231ccc4, `ori` of 0xc800 at
  0x231ccc8) to abs 0x10000. After that the `sw` at 0x231ccd4 writes the halfword from a0+0 and the `sw` at
  0x231ccdc, in the delay slot of the `jr ra` at 0x231ccd8, writes the halfword from a0+2. On return v0 holds
  0x10000. On the tail path the `ld` at 0x231cce0 loads t9 from +0x20 of the second record, f12 and f13 hold the
  converted halfwords, and the delay slot of the `jr t9` at 0x231ccec moves t0 (0x3f800000, set at 0x231cce8)
  into f15. Unknown: the destination of the `jr t9` at 0x231ccec, taken from the doubleword at +0x20 of the
  second record, so reading that doubleword in a live run would settle it. Unknown: the device-side outcome of
  the writes to abs 0x10000. No linked register row or datasheet excerpt in the bundle covers that address.
  Evidence grade: established.
- `__glOdyim_Vertex2sv_mag_line0` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49d480 (n64).
  Loads two sign-extended halfwords from a0 (`lh` at 0xb49d480 and 0xb49d484) and, once a chain of seven float
  tests has passed, writes them to abs 0x4000 behind a constant header word. A failed test sends control by tail
  call through a pointer stored in the record that the doubleword at abs 0x1040 addresses. Before the record
  pointers are loaded (`ld` at 0xb49d498 and 0xb49d49c), both halfwords are converted to single precision into
  f12 and f13. The first sum is the word at +0x3c of the record at the doubleword abs 0x1038, plus the converted
  values times the words at +0x30 and +0x34 (`lwc1` at 0xb49d4a0 to 0xb49d4a8). It is copied into f10 and the
  `swc1` at 0xb49d4c4 stores it to +0x8 of the record at abs 0x1040, after the old +0x8 word was loaded at
  0xb49d4b0. The first test (`c.ueq.s` at 0xb49d4d4, `bc1f` at 0xb49d4dc) leaves for the tail path at 0xb49d59c
  when the product of the sum and the old +0x8 word is negative. The second sum is built from +0xc, +0x0 and
  +0x4 of the first record; the `bc1t` at 0xb49d500 leaves when the absolute value of the first sum scaled by
  the word at +0x4 of the second record (`lwc1` at 0xb49d4ac) is below the absolute value of the second sum or
  unordered with it (`c.ult.s` at 0xb49d4f8). Then the word at +0xc of the second record (`lwc1` at 0xb49d4fc)
  times the first sum, plus the second sum, is formed. If that result is negative (`bc1f` at 0xb49d518 after
  `c.ueq.s` at 0xb49d510) the next test is skipped; otherwise the `bc1t` at 0xb49d528 leaves when it is below
  the word at +0x18 of the second record times f10 (the multiply in the delay slot at 0xb49d51c) or unordered
  with it (`c.ult.s` at 0xb49d520). The same two steps repeat with a third sum built from +0x1c, +0x10 and +0x14
  of the first record and the word at +0x10 of the second: the `bc1t` at 0xb49d554 (`c.ult.s` at 0xb49d54c),
  then the `bc1f` at 0xb49d56c that skips the last test when the result is negative (`c.ueq.s` at 0xb49d564),
  else the `bc1t` at 0xb49d57c (`c.ult.s` at 0xb49d574, multiply in the delay slot at 0xb49d570). When no test
  leaves, the `sw` at 0xb49d58c writes the constant 0xffffffff8080c800 (0x8080 at 0xb49d584, `ori` of 0xc800 at
  0xb49d588) to abs 0x4000. After that the `sw` at 0xb49d590 writes the halfword from a0+0 and the `sw` at
  0xb49d598, in the delay slot of the `jr ra` at 0xb49d594, writes the halfword from a0+2. On return v0 holds
  the doubleword read from abs 0x1038. On the tail path the `ld` at 0xb49d59c loads t9 from +0x20 of the second
  record, f12 and f13 hold the converted halfwords, and the delay slot of the `jr t9` at 0xb49d5a8 moves t0
  (0x3f800000, set at 0xb49d5a4) into f15. Unknown: the address reached through the `jr t9` at 0xb49d5a8, taken
  from the doubleword at +0x20 of the second record, so reading that doubleword in a live run would settle it.
  Unknown: the hardware-side result of the writes to abs 0x4000. No linked register row or datasheet excerpt in
  the bundle covers that address.
  Test: the mapping-address read in "Test that settles the rest" at the top of this file; a client mapping that starts at 0 makes 0x4000 board +0x120000.
  Evidence grade: established.
- `__glOdyim_Vertex2sv_mag` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad9a80 (o32).
  Fast path of a vertex call taking the two signed halfwords at a0 and a0+0x2 (`lh` into t4 and t5 at
  0xdad9a80 and 0xdad9a84): it converts them to single-precision floats, runs three range tests against
  the records whose pointers sit at abs 0x1020 and abs 0x1024, and then either writes a command word and
  the two values straight to 0x10000 or tail-jumps through the word at +0x20 of the second record.
  The pointers are loaded at 0xdad9a98 (record A, from abs 0x1020) and 0xdad9a9c (record B, from abs
  0x1024), after the integer-to-float cast at the start of the routine.
  The routine adds A+0x3c, the first value times A+0x30 and the second value times A+0x34 into a sum,
  multiplies the sum by the float at B+0x8, and the `swc1` at 0xdad9ac8 writes the sum itself, from before
  that multiply, back to B+0x8 on every call.
  Three tests lead to the tail path at 0xdad9b4c: the `bc1f` at 0xdad9ae0 jumps when the product is
  negative (its absolute value, compared with it at 0xdad9ad8, differs and is ordered).
  The sum, times the float at B+0x4, is taken in absolute value, and the `bc1t` at 0xdad9b08 branches when
  that is below the absolute value of a second sum (A+0xc plus the first value times A+0x0 plus the second
  value times A+0x4) or unordered, compare at 0xdad9b00.
  The `bc1t` at 0xdad9b30 makes the same test against a third sum (A+0x1c plus the first value times
  A+0x10 plus the second value times A+0x14), compare at 0xdad9b28.
  With every test passed, the constant 0xffffffff8080c800 (0x8080 at 0xdad9b2c, 0xc800 ORed in by the
  `ori` at 0xdad9b34) is written to 0x10000 by the `sw` at 0xdad9b3c.
  Then come the sign-extended halfword from a0 (t4), as a word, with the `sw` at 0xdad9b40 and then the
  sign-extended halfword from a0+0x2 (t5), as a word, the last `sw` sitting at 0xdad9b48 in the delay slot
  of the `jr ra` at 0xdad9b44, which hands back v0, which the `lui` at 0xdad9b38 sets to 0x10000.
  On the tail path the `lw` at 0xdad9b4c reads t9 from B+0x20, a2 is cleared at 0xdad9b50, a3 is set to
  0x3f800000 by the `lui` at 0xdad9b58 in the delay slot of the `jr t9` at 0xdad9b54, and a0 and a1 are
  passed as they arrived.
  Inferred: the tail path is the general-case handler for vertices that fail the tests, because the direct
  path issues only three words while the tail receives the original arguments plus fixed a2 and a3.
  Unknown: the routine entered by the `jr t9` at 0xdad9b54, which is the word at B+0x20 and whose runtime
  contents would resolve it.
  Unknown: which device answers at 0x10000, since no linked mmio row lists that address and the rows span
  0x110000 and 0x120000.
  Test: the mapping-address read in "Test that settles the rest" at the top of this file; a client mapping that starts at 0 makes 0x10000 board +0x110000.
  Evidence grade: inferred.
- `__glOdyim_Vertex2sv_mag` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231b180 (n64).
  Reads two sign-extended halfwords from a0 (`lh` at 0x231b180 and 0x231b184) and, once three float tests have
  passed, writes them to abs 0x10000 behind a constant header word. A failing test instead makes a tail call
  through a pointer stored in the record that the doubleword at abs 0x1040 addresses. Before the record pointers
  are loaded (`ld` at 0x231b198 and 0x231b19c), both halfwords are converted to single precision into f12 and
  f13. The first sum is the word at +0x3c of the record at the doubleword abs 0x1038, plus the converted values
  times the words at +0x30 and +0x34 (`lwc1` at 0x231b1a0 to 0x231b1a8). The `swc1` at 0x231b1c0 stores that sum
  to +0x8 of the record at abs 0x1040, after the old +0x8 word was loaded at 0x231b1b0. The first test
  (`c.ueq.s` at 0x231b1d0, `bc1f` at 0x231b1d8) leaves for the tail path when the product of the new sum and the
  old +0x8 word is negative. The second and third tests scale the sum by the word at +0x4 of the second record
  (`lwc1` at 0x231b1ac) and compare its absolute value with the absolute value of a sum built from +0xc, +0x0
  and +0x4 of the first record, then of one built from +0x1c, +0x10 and +0x14; the `bc1t` at 0x231b1f8 and
  0x231b218 leave when the scaled value is below that sum or unordered with it (`c.ult.s` at 0x231b1f0 and
  0x231b210). When none leaves, the `sw` at 0x231b224 writes the constant 0xffffffff8080c800 (0x8080 at
  0x231b214, `ori` of 0xc800 at 0x231b21c) to abs 0x10000 through v0 set at 0x231b220. After that the `sw` at
  0x231b228 writes the halfword from a0+0 and the `sw` at 0x231b230, in the delay slot of the `jr ra` at
  0x231b22c, writes the halfword from a0+2. The routine returns 0x10000. On the tail path the `ld` at 0x231b234
  loads t9 from +0x20 of the second record; a4 and a5 still hold the two halfwords, f12 and f13 the converted
  ones, and the delay slot of the `jr t9` at 0x231b240 moves t0 (0x3f800000, set at 0x231b23c) into f15.
  Unknown: the target of the `jr t9` at 0x231b240, taken from the doubleword at +0x20 of the second record, so
  reading that doubleword in a live run would settle it. Unknown: the device-side result of the writes to abs
  0x10000. No linked register row or datasheet excerpt in the bundle covers that address.
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
- `__glOdyim_Vertex2sv_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbaf480 (n32).
  Reads two signed halfwords from a0 and a0+2 (loaded at 0xdbaf480 and 0xdbaf484), converts both to
  single floats in $f12 and $f13, and tests them against two parameter blocks; the surviving case
  emits three words to abs 0x4000, every other case jumps through second+0x20.
  Abs 0x1020 and abs 0x1024 hold the addresses of the first and second blocks, fetched at 0xdbaf498
  and 0xdbaf49c.
  The multiply-add pair on first[+0x3c], first[+0x30] and first[+0x34] gives $f8 = first[+0x3c] +
  $f12*first[+0x30] + $f13*first[+0x34]; the `swc1` at 0xdbaf4c0 writes this sum into second+0x8 on
  every call, between the product of the sum with the old second[+0x8] (into $f7) and the product
  with second[+0x4] (into $f8).
  Sign check on $f7: the `c.ueq.s` at 0xdbaf4d0 sets the flag from |$f7| and $f7; when they differ,
  which is when $f7 is negative, the `bc1f` at 0xdbaf4d8 takes the exit to 0xdbaf530.
  The other two tests recompute $f9 as first[+0xc] + $f12*first[+0x0] + $f13*first[+0x4] and
  first[+0x1c] + $f12*first[+0x10] + $f13*first[+0x14]; the `c.ult.s` at 0xdbaf4f0 and 0xdbaf510
  test |$f8| against |$f9|, and the `bc1t` at 0xdbaf4f8 and 0xdbaf518 take the exit to 0xdbaf530
  once |$f8| is the lower one or a NaN is involved.
  If all three pass, the `sw` at 0xdbaf520 writes t0 to abs 0x4000 (0xffffffff80800000 from
  0xdbaf514, with 0xc800 ORed in by the delay slot at 0xdbaf51c, gives 0xffffffff8080c800), the `sw`
  at 0xdbaf524 follows with the first halfword widened to a word, and the `sw` at 0xdbaf52c in the
  delay slot of the return at 0xdbaf528 does the same for the second; v0 is the word loaded from abs
  0x1020.
  The exit block at 0xdbaf530 loads t9 from second+0x20, clears $f14, sets t0 to 0x3f800000
  (0xdbaf538), and the `jr t9` at 0xdbaf53c moves it into $f15 in its delay slot; a0 to a3 are as
  received and a4, a5 are the two halfwords.
  Unknown: the destination of the `jr t9` at 0xdbaf53c, because second+0x20 is an unresolved
  pointer; a trace at that jump would settle it.
  Unknown: whether any device sits at abs 0x4000; only the windows 0x110000 and 0x120000 are linked,
  and the board address map would answer it.
  Test: the mapping-address read in "Test that settles the rest" at the top of this file; a client mapping that starts at 0 makes 0x4000 board +0x120000.
  Evidence grade: established.
- `__glOdyim_Vertex2sv_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49bac0 (n64).
  Loads two sign-extended halfwords from a0 (`lh` at 0xb49bac0 and 0xb49bac4) and, if three float tests pass,
  writes them to abs 0x4000 behind a constant header word. A failed test sends control by tail call through a
  pointer held in the record at the doubleword abs 0x1040. Before the record pointers are loaded (`ld` at
  0xb49bad8 and 0xb49badc), both halfwords are converted to single precision into f12 and f13. The first sum is
  the word at +0x3c of the record at the doubleword abs 0x1038, plus the converted values times the words at
  +0x30 and +0x34 (`lwc1` at 0xb49bae0 to 0xb49bae8). The `swc1` at 0xb49bb00 stores that sum to +0x8 of the
  record at abs 0x1040, after the old +0x8 word was loaded at 0xb49baf0. The first test (`c.ueq.s` at 0xb49bb10,
  `bc1f` at 0xb49bb18) leaves for the tail path when the product of the new sum and the old +0x8 word is
  negative. The second and third tests scale the sum by the word at +0x4 of the second record (`lwc1` at
  0xb49baec) and compare its absolute value with the absolute value of a sum built from +0xc, +0x0 and +0x4 of
  the first record, then of one built from +0x1c, +0x10 and +0x14; the `bc1t` at 0xb49bb38 and 0xb49bb58 leave
  when the scaled value is below that sum or unordered with it (`c.ult.s` at 0xb49bb30 and 0xb49bb50). When none
  leaves, the `sw` at 0xb49bb60 writes the constant 0xffffffff8080c800 (0x8080 at 0xb49bb54, `ori` of 0xc800 at
  0xb49bb5c) to abs 0x4000. After that the `sw` at 0xb49bb64 writes the halfword from a0+0 and the `sw` at
  0xb49bb6c, in the delay slot of the `jr ra` at 0xb49bb68, writes the halfword from a0+2. The routine returns
  the doubleword that was loaded from abs 0x1038 in v0. On the tail path the `ld` at 0xb49bb70 loads t9 from
  +0x20 of the second record; a4 and a5 still hold the two halfwords, f12 and f13 the converted ones, and the
  delay slot of the `jr t9` at 0xb49bb7c moves t0 (0x3f800000, set at 0xb49bb78) into f15. Unknown: the address
  reached through the `jr t9` at 0xb49bb7c, which is the doubleword at +0x20 of the second record, and a
  run-time read of it would settle it. Unknown: the hardware-side result of the writes to abs 0x4000, since the
  bundle has no linked register row or datasheet excerpt for that address.
  Evidence grade: established.
- `__glOdyim_Vertex2sv_smallw` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad86c0 (o32).
  Short fast path for one two-component vertex given as a pointer to two halfwords: when two
  single-precision tests pass it writes the vertex to the absolute address 0x10000 and returns
  0x10000, otherwise it tail-jumps through a handler pointer kept in a state record. The halfwords
  at +0 and +2 of a0 are converted to single precision and combined with the record whose address
  sits at absolute 0x1020 by multiply-add (+0x3c plus the first value times +0x30 plus the second
  times +0x34). The result is stored by the `swc1` at 0xdad8708 to +0x8 of the record whose address
  sits at absolute 0x1024, after the old word at +0x8 has been multiplied by it. A `bc1f` at
  0xdad8718 sends control to 0xdad8740, the tail-jump block, when that product's magnitude differs
  from the product (the negative case). The delay slot at 0xdad871c compares the magnitude of the
  new value with the word at +0x0 of the 0x1024 record, and the `bc1t` at 0xdad8724 jumps to
  0xdad8740 when the magnitude is less than, or unordered with, that word. When neither branch is
  taken, the block at 0xdad872c sets v0 to 0x10000 and writes three words there: 0xffffffff8080c800
  (built at 0xdad8720 and 0xdad8728, `sw` at 0xdad8730), the halfword from +0 sign-extended as
  loaded (0xdad8734), and the halfword from +2 (0xdad873c, in the delay slot of the `jr ra` at
  0xdad8738). The slow-exit block loads the pointer at +0x20 of the 0x1024 record (0xdad8740), sets
  a2 to zero and puts 0x3f800000 in a3 in the delay slot of the `jr t9` at 0xdad8748, with a0 and a1
  as at entry. Inferred: three successive writes to 0x10000 (a constant word, then the two
  halfwords) are most likely a command sequence sent to a device window, because the bundle lists
  0x10000 under memory-mapped I/O. Unknown: the target reached by the indirect jump at 0xdad8748,
  which depends on the word the 0x1024 record holds at +0x20; tracking what fills that field would
  settle it.
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
- `__glOdyim_Vertex2sv_smallw` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2319fc0 (n64).
  Reads two sign-extended halfwords from a0 and, provided two float tests pass, writes them to abs 0x10000
  behind a constant header word. A failing test instead makes a tail call through a pointer kept in the second
  record, whose address is the doubleword at abs 0x1040. Before the record pointers are loaded (`ld` at
  0x2319fd8 and 0x2319fdc), both halfwords are converted to single precision into f12 and f13. The sum is the
  word at +0x3c of the record at the doubleword abs 0x1038, plus the converted values times the words at +0x30
  and +0x34 (`lwc1` at 0x2319fe0 to 0x2319fe8). The `swc1` at 0x231a000 stores that sum to +0x8 of the record at
  abs 0x1040, after the old +0x8 word was loaded at 0x2319ff0. The first test (`c.ueq.s` at 0x231a008, `bc1f` at
  0x231a010) leaves for the tail path when the product of the new sum and the old +0x8 word is negative. The
  second test compares the absolute value of the sum with the word at +0x0 of the second record (`lwc1` at
  0x2319fec); the `c.ult.s` at 0x231a014 sits in the delay slot of the `bc1f`, so it runs on both paths, and the
  `bc1t` at 0x231a01c leaves when the sum is below that word or unordered with it. When neither leaves, the `sw`
  at 0x231a028 writes the constant 0xffffffff8080c800 (0x8080 at 0x231a018, `ori` of 0xc800 at 0x231a020) to abs
  0x10000 through v0 set at 0x231a024. After that the `sw` at 0x231a02c writes the halfword from a0+0 and the
  `sw` at 0x231a034, in the delay slot of the `jr ra` at 0x231a030, writes the halfword from a0+2. The return
  value v0 is the value 0x10000. On the tail path the `ld` at 0x231a038 loads t9 from +0x20 of the second
  record, f12 and f13 hold the converted halfwords, and the delay slot of the `jr t9` at 0x231a044 moves t0
  (0x3f800000, set at 0x231a040) into f15. Unknown: the target of the `jr t9` at 0x231a044, loaded from +0x20 of
  the second record, whose value a run-time read would settle. Unknown: the device-side result of the writes to
  abs 0x10000, because neither a linked register row nor a datasheet excerpt covers that address.
  Evidence grade: established.
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
- `__glOdyim_Vertex3d_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231cd00 (n64).
  Takes three double-precision arguments in f12 to f14 and narrows them to single precision in place and, when a
  chain of seven float tests passes, writes them to abs 0x10000 behind a constant header word. A failing test
  instead makes a tail call through a pointer found in the record behind abs 0x1040. The record pointers are
  loaded by the `ld` at 0x231cd0c and 0x231cd10. The first sum is the word at +0x3c of the record at the
  doubleword abs 0x1038, plus the three narrowed values times the words at +0x30, +0x34 and +0x38 (`lwc1` at
  0x231cd14 to 0x231cd20). It is copied into f10 and the `swc1` at 0x231cd40 stores it to +0x8 of the record at
  abs 0x1040, after the old +0x8 word was loaded at 0x231cd28. The first test (`c.ueq.s` at 0x231cd50, `bc1f` at
  0x231cd58) leaves for the tail path at 0x231ce30 when the product of the sum and the old +0x8 word is
  negative. The second sum is built from +0xc, +0x0, +0x4 and +0x8 of the first record; the `bc1t` at 0x231cd84
  leaves when the absolute value of the first sum scaled by the word at +0x4 of the second record (`lwc1` at
  0x231cd24) is below the absolute value of the second sum or unordered with it (`c.ult.s` at 0x231cd7c). Then
  the word at +0xc of the second record (`lwc1` at 0x231cd80) times the first sum, plus the second sum, is
  formed. If that result is negative (`bc1f` at 0x231cd9c after `c.ueq.s` at 0x231cd94) the next test is
  skipped; otherwise the `bc1t` at 0x231cdac leaves when it is below the word at +0x18 of the second record
  times f10 (the multiply in the delay slot at 0x231cda0) or unordered with it (`c.ult.s` at 0x231cda4). The
  same two steps repeat with a third sum built from +0x1c, +0x10, +0x14 and +0x18 of the first record and the
  word at +0x10 of the second: the `bc1t` at 0x231cde0 (`c.ult.s` at 0x231cdd8), then the `bc1f` at 0x231cdf8
  that skips the last test when the result is negative (`c.ueq.s` at 0x231cdf0), else the `bc1t` at 0x231ce08
  (`c.ult.s` at 0x231ce00, multiply in the delay slot at 0x231cdfc). When no test leaves, the `sw` at 0x231ce1c
  writes the constant 0xffffffff8080cc03 (0x8080 at 0x231ce10, `ori` of 0xcc03 at 0x231ce14) to abs 0x10000
  through v0 set at 0x231ce18, then the `swc1`s at 0x231ce20, 0x231ce24 and 0x231ce2c write the narrowed f12,
  f13 and f14, the last in the delay slot of the `jr ra` at 0x231ce28. On return v0 holds the value 0x10000. On
  the tail path the `ld` at 0x231ce30 loads t9 from +0x20 of the second record, f12 to f14 hold the narrowed
  values, and the delay slot of the `jr t9` at 0x231ce38 moves t0 (0x3f800000, set at 0x231ce34) into f15.
  Unknown: the target of the `jr t9` at 0x231ce38, which comes from the doubleword at +0x20 of the second record
  and could be read out in a live run. Unknown: the device-side result of the writes to abs 0x10000. A register
  row or datasheet excerpt for that address would settle it, and the bundle has none.
  Evidence grade: established.
- `__glOdyim_Vertex3d_mag_line0` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb0f80 (n32).
  Three double arguments arrive in $f12, $f13 and $f14 and are narrowed to singles; the routine then
  applies a series of floating-point comparisons against two parameter blocks and, if every one
  passes, writes a control word and the three floats to abs 0x4000, or otherwise jumps through the
  pointer at second+0x20.
  Abs 0x1020 and abs 0x1024 supply the addresses of the first and second blocks (loads at 0xdbb0f8c
  and 0xdbb0f90).
  Three multiply-adds fold $f12*first[+0x30], $f13*first[+0x34] and $f14*first[+0x38] into $f8,
  which started as first[+0x3c] (loaded at 0xdbb0f98); a copy goes to $f10, and the `swc1` at
  0xdbb0fc0 stores the sum to second+0x8 on every call. The sum times the old second[+0x8] becomes
  $f7, and the sum times second[+0x4] becomes $f8.
  At 0xdbb0fd0 a `c.ueq.s` compares |$f7| and $f7, then the `bc1f` at 0xdbb0fd8 leaves for 0xdbb10ac
  if they differ (a negative $f7).
  Next, $f9 is built from first[+0xc], first[+0x0], first[+0x4] and first[+0x8]; the `c.ult.s` at
  0xdbb0ffc and the `bc1t` at 0xdbb1004 leave when |$f8| is below it or unordered. $f4 = $f11 +
  second[+0xc]*$f10 then goes through the sign test at 0xdbb1014 and the `bc1f` at 0xdbb101c
  (negative jumps to 0xdbb1034), or else through `c.ult.s` at 0xdbb1024 and `bc1t` at 0xdbb102c
  against second[+0x18]*$f10.
  The last group takes first[+0x1c], [+0x10], [+0x14] and [+0x18], tests `c.ult.s` at 0xdbb1058 with
  the `bc1t` at 0xdbb1060, and repeats the $f4 test with second[+0x10]: a negative value takes the
  `bc1f` at 0xdbb1078 directly to 0xdbb1090, otherwise `c.ult.s` at 0xdbb1080 and the `bc1t` at
  0xdbb1088 compare it with second[+0x18]*$f10.
  At 0xdbb1090 t0 is built as 0xffffffff8080cc03 (0xdbb1094 adds 0xcc03) and the `sw` at 0xdbb1098
  writes it to abs 0x4000; the `swc1` at 0xdbb109c and 0xdbb10a0 write $f12 and $f13 and the one in
  the delay slot at 0xdbb10a8 of the `jr ra` at 0xdbb10a4 writes $f14, with v0 returned as the word
  loaded from abs 0x1020.
  At 0xdbb10ac the routine reads t9 from second+0x20, sets t0 to 0x3f800000 and hands it to $f15 in
  the delay slot of the `jr t9` at 0xdbb10b4, with a0 to a3 and $f12 to $f14 as they stand.
  Unknown: the landing address of the `jr t9` at 0xdbb10b4, because the pointer at second+0x20 is
  left unresolved; a debugger stop at the jump would settle it.
  Unknown: whether a device is mapped at abs 0x4000; the linked mmio rows list only 0x110000 and
  0x120000, and the board address map is the route.
  Test: the mapping-address read in "Test that settles the rest" at the top of this file; a client mapping that starts at 0 makes 0x4000 board +0x120000.
  Evidence grade: established.
- `__glOdyim_Vertex3d_mag` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231b280 (n64).
  Receives three double-precision arguments in f12 to f14, which it narrows to single precision in place and,
  provided three float tests pass, writes them to abs 0x10000 behind a constant header word. A failed test sends
  control by tail call through a pointer kept in the second record, whose address is the doubleword at abs
  0x1040. The record pointers are loaded by the `ld` at 0x231b28c and 0x231b290. The first sum is the word at
  +0x3c of the record at the doubleword abs 0x1038, plus the three narrowed values times the words at +0x30,
  +0x34 and +0x38 (`lwc1` at 0x231b294 to 0x231b2a0). The `swc1` at 0x231b2bc stores that sum to +0x8 of the
  record at abs 0x1040, after the old +0x8 word was loaded into f7 at 0x231b2a8. The first test (`c.ueq.s` at
  0x231b2cc, `bc1f` at 0x231b2d4) leaves for the tail path at 0x231b344 when the product of the new sum and the
  old +0x8 word is negative. The second and third tests scale the sum by the word at +0x4 of the second record
  (`lwc1` at 0x231b2a4) and compare its absolute value with the absolute value of a sum built from +0xc, +0x0,
  +0x4 and +0x8 of the first record, then of one built from +0x1c, +0x10, +0x14 and +0x18; the `bc1t` at
  0x231b2fc and 0x231b324 leave when the scaled value is below that sum or unordered with it (`c.ult.s` at
  0x231b2f4 and 0x231b31c). When none leaves, the `sw` at 0x231b330 writes the constant 0xffffffff8080cc03
  (0x8080 at 0x231b320, `ori` of 0xcc03 at 0x231b328) to abs 0x10000 through v0 set at 0x231b32c, then the
  `swc1`s at 0x231b334, 0x231b338 and 0x231b340 write the narrowed f12, f13 and f14, the last in the delay slot
  of the `jr ra` at 0x231b33c. The routine returns the value 0x10000. On the tail path the `ld` at 0x231b344
  loads t9 from +0x20 of the second record, f12 to f14 hold the narrowed values, and the delay slot of the
  `jr t9` at 0x231b34c moves t0 (0x3f800000, set at 0x231b348) into f15. Unknown: the address reached through
  the `jr t9` at 0x231b34c, loaded from +0x20 of the second record, whose value a run-time read would settle.
  Unknown: the hardware-side result of the writes to abs 0x10000, because neither a linked register row nor a
  datasheet excerpt covers that address.
  Test: the mapping-address read in "Test that settles the rest" at the top of this file; a client mapping that starts at 0 makes 0x10000 board +0x110000.
  Evidence grade: established.
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
- `__glOdyim_Vertex3d_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49bbc0 (n64).
  Accepts three double-precision arguments in f12 to f14 and narrows each to single precision in place and,
  provided three float tests pass, writes them to abs 0x4000 behind a constant header word. Any test that fails
  diverts to a tail call through a pointer kept in the second record, whose address is the doubleword at abs
  0x1040. The record pointers are loaded by the `ld` at 0xb49bbcc and 0xb49bbd0. The first sum is the word at
  +0x3c of the record at the doubleword abs 0x1038, plus the three narrowed values times the words at +0x30,
  +0x34 and +0x38 (`lwc1` at 0xb49bbd4 to 0xb49bbe0). The `swc1` at 0xb49bbfc stores that sum to +0x8 of the
  record at abs 0x1040, after the old +0x8 word was loaded into f7 at 0xb49bbe8. The first test (`c.ueq.s` at
  0xb49bc0c, `bc1f` at 0xb49bc14) leaves for the tail path at 0xb49bc80 when the product of the new sum and the
  old +0x8 word is negative. The second and third tests scale the sum by the word at +0x4 of the second record
  (`lwc1` at 0xb49bbe4) and compare its absolute value with the absolute value of a sum built from +0xc, +0x0,
  +0x4 and +0x8 of the first record, then of one built from +0x1c, +0x10, +0x14 and +0x18; the `bc1t` at
  0xb49bc3c and 0xb49bc64 leave when the scaled value is below that sum or unordered with it (`c.ult.s` at
  0xb49bc34 and 0xb49bc5c). When none leaves, the `sw` at 0xb49bc6c writes the constant 0xffffffff8080cc03
  (0x8080 at 0xb49bc60, `ori` of 0xcc03 at 0xb49bc68) to abs 0x4000, then the `swc1`s at 0xb49bc70, 0xb49bc74
  and 0xb49bc7c write the narrowed f12, f13 and f14, the last in the delay slot of the `jr ra` at 0xb49bc78. v0
  comes back as the doubleword taken from abs 0x1038. On the tail path the `ld` at 0xb49bc80 loads t9 from +0x20
  of the second record, f12 to f14 hold the narrowed values, and the delay slot of the `jr t9` at 0xb49bc88
  moves t0 (0x3f800000, set at 0xb49bc84) into f15. Unknown: the destination of the `jr t9` at 0xb49bc88, loaded
  from +0x20 of the second record, whose value a run-time read would settle. Unknown: the device-side outcome of
  the writes to abs 0x4000, because neither a linked register row nor a datasheet excerpt covers that address.
  Evidence grade: established.
- `__glOdyim_Vertex3d_smallw` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad8780 (o32).
  Short fast path for one three-component vertex passed as three doubles: when two single-precision
  tests pass it writes the vertex to the absolute address 0x10000 and returns 0x10000, otherwise it
  tail-jumps through a handler pointer kept in a state record. The first two doubles arrive in $f12
  and $f14 and the third is loaded from the caller's stack at +0x10 into $f0; all three are narrowed
  to single precision. The 0x1020 record (its address sits at absolute 0x1020) feeds a fourth value
  through multiply-add (+0x3c plus the three coordinates times +0x30, +0x34 and +0x38). Its store is
  the `swc1` at 0xdad87cc, writing to +0x8 of the record whose address sits at absolute 0x1024,
  after the old word at +0x8 has been multiplied by it. The first exit is the `bc1f` at 0xdad87dc,
  taken to 0xdad8808 when that product's magnitude differs from the product (the negative case). In
  the delay slot at 0xdad87e0 the magnitude of the new value is compared against the +0x0 word of
  the 0x1024 record; the `bc1t` at 0xdad87e8 then goes to 0xdad8808 if it is less than or unordered.
  When neither branch is taken, the block at 0xdad87f0 sets v0 to 0x10000 and writes four words
  there: 0xffffffff8080cc03 (built at 0xdad87e4 and 0xdad87ec, `sw` at 0xdad87f4), then the
  single-precision values of the first two coordinates (0xdad87f8, 0xdad87fc) and of the third
  (0xdad8804, in the delay slot of the `jr ra` at 0xdad8800). The block at the jump target loads the
  pointer at +0x20 of the 0x1024 record (0xdad8808), moves the single-precision third coordinate
  into a2, and puts 0x3f800000 in a3 in the delay slot of the `jr t9` at 0xdad8810, with a0 and a1
  as at entry. Inferred: the bundle lists 0x10000 under memory-mapped I/O, so the four writes to it,
  a constant word then the three coordinates, go to hardware as a single sequence. Unknown: the
  routine entered through the indirect jump at 0xdad8810, which depends on the word the 0x1024
  record holds at +0x20; following whatever fills that field would settle it.
  Evidence grade: inferred.
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
- `__glOdyim_Vertex3d_smallw` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231a080 (n64).
  Takes one vertex as three double-precision arguments and either writes it straight to the fixed
  address 0x10000 or tail-jumps to a handler pointer kept in the record at absolute 0x1040.
  The first three instructions narrow `f12`, `f13` and `f14` to single precision. The pointers at
  absolute 0x1038 and 0x1040 are loaded into `v0` and `v1` (0x231a08c, 0x231a090).
  Three multiply-adds form a sum in `f8`: it starts from the word at +0x3c of the 0x1038 record
  (0x231a098) and adds `f12` times the word at +0x30, `f13` times the word at +0x34 and `f14` times
  the word at +0x38. The `swc1` at 0x231a0bc stores that sum over +0x8 of the 0x1040 record on every
  path, after the old +0x8 word (0x231a0a8) was multiplied by it.
  Two tests decide the path. The `bc1f` at 0x231a0cc goes to the handler block at 0x231a0f8 when the
  product of the sum and the old +0x8 word differs from its own absolute value, which means the
  product is negative. The `bc1t` at 0x231a0d8 goes there when the absolute value of the sum is less
  than the word at +0x0 of the 0x1040 record (0x231a0a4), or when either is not a number. If both
  fall through, the vertex is written.
  The write sets `v0` to 0x10000 (0x231a0e0), stores the constant 0xffffffff8080cc03
  (0xffffffff80800000 from 0x231a0d4 with 0xcc03 ORed in at 0x231a0dc) by the `sw` at 0x231a0e4,
  then stores the narrowed `f12`, `f13` and `f14` to the same address (0x231a0e8, 0x231a0ec, and
  0x231a0f4 in the delay slot of the `jr ra` at 0x231a0f0). The routine returns 0x10000.
  The handler block loads `t9` from +0x20 of the 0x1040 record (0x231a0f8) and jumps through it at
  0x231a100, with `a0` to `a3` untouched and the word 0x3f800000 moved into `f15` in the delay slot.
  Inferred: the address 0x10000 acts as a write port for vertex data, because four stores follow one
  another to the same address with the pointer never stepping, a command word first and then the
  three coordinates.
  Unknown: what sits behind the address 0x10000; no linked row or datasheet excerpt covers it.
  Unknown: where the jump at 0x231a100 lands, since the pointer loaded at 0x231a0f8 sits in a record
  whose content is not in the bundle.
  Evidence grade: inferred.
- `__glOdyim_Vertex3d_smallw` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbae380 (n32).
  Narrows the double arguments in $f12, $f13 and $f14 to single floats and applies two
  floating-point tests against two parameter blocks; when both pass it writes a control word and the
  three floats to abs 0x4000, and otherwise it jumps through the pointer at second+0x20.
  The words at abs 0x1020 and abs 0x1024 give the first and second blocks (loaded at 0xdbae38c and
  0xdbae390).
  $f8 starts as first[+0x3c] (loaded at 0xdbae398) and absorbs three products, $f12*first[+0x30],
  $f13*first[+0x34] and $f14*first[+0x38]; $f7 is this sum times the old second[+0x8] and the `swc1`
  at 0xdbae3bc writes the sum to second+0x8 on every call, before any test can leave.
  First, the `c.ueq.s` at 0xdbae3c4 sets the flag from |$f7| and $f7 and the `bc1f` at 0xdbae3cc
  leaves for 0xdbae3f4 when $f7 is negative.
  Its delay slot holds the second compare, `c.ult.s` at 0xdbae3d0, which sets the flag for the
  `bc1t` at 0xdbae3d8 by comparing |sum| with second[+0x0] (loaded at 0xdbae3a4); that branch also
  leaves for 0xdbae3f4 when |sum| is below it or the operands are unordered.
  Past both, t0 is 0xffffffff8080cc03 (0xdbae3d4, with the `ori` in the delay slot at 0xdbae3dc) and
  the `sw` at 0xdbae3e0 writes it to abs 0x4000, followed by $f12 and $f13 via the `swc1` at
  0xdbae3e4 and 0xdbae3e8 and by $f14 via the `swc1` at 0xdbae3f0 in the delay slot of the return at
  0xdbae3ec; v0 comes back as the word loaded from abs 0x1020.
  The exit at 0xdbae3f4 loads t9 from second+0x20, sets t0 to 0x3f800000 and moves it into $f15 in
  the delay slot of the `jr t9` at 0xdbae3fc, leaving a0 to a3 and $f12 to $f14 as they stand.
  Unknown: the address reached by the `jr t9` at 0xdbae3fc, since second+0x20 is an unresolved
  pointer; watching the register at that jump would settle it.
  Unknown: whether any device is behind abs 0x4000; the linked mmio rows reach only 0x110000 and
  0x120000.
  Evidence grade: established.
- `__glOdyim_Vertex3d_smallw` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49a9c0 (n64).
  Takes one vertex as three double-precision arguments, narrows them to single precision, and either
  writes them to the fixed address 0x4000 or tail-jumps to a handler pointer from the record at
  absolute 0x1040.
  Three multiply-adds build a sum in `f8` from the word at +0x3c of the record at absolute 0x1038
  (loaded at 0xb49a9d8) plus the narrowed `f12`, `f13` and `f14` times the words at +0x30, +0x34 and
  +0x38. The old word at +0x8 of the 0x1040 record (0xb49a9e8) is multiplied by that sum, and the
  `swc1` at 0xb49a9fc then overwrites +0x8 with the sum itself, on every path.
  The `bc1f` at 0xb49aa0c sends execution to the handler block at 0xb49aa34 when that product
  differs from its own absolute value, that is when it is negative. The `bc1t` at 0xb49aa18 sends it
  there when the absolute value of the sum is below the word at +0x0 of the 0x1040 record
  (0xb49a9e4) or the comparison is unordered.
  When both tests fall through, the `sw` at 0xb49aa20 stores 0xffffffff8080cc03 to absolute 0x4000
  (0xffffffff80800000 at 0xb49aa14 with 0xcc03 ORed in at 0xb49aa1c). The `swc1` stores at
  0xb49aa24, 0xb49aa28 and 0xb49aa30 (the last in the delay slot of the `jr ra` at 0xb49aa2c) then
  write the narrowed coordinates to the same address. The routine hands back the pointer it loaded
  from 0x1038 at 0xb49a9cc.
  The handler block loads `t9` from +0x20 of the 0x1040 record at 0xb49aa34, puts 0x3f800000 in `t0`
  (0xb49aa38) and jumps through `t9` at 0xb49aa3c, moving `t0` into `f15` in the delay slot.
  Inferred: the address 0x4000 takes the vertex as a port, since the command word and three
  coordinates go to it back to back with no pointer step between them.
  Unknown: the device register that the address 0x4000 stands for, since the only linked windows are
  0x110000 and 0x120000.
  Unknown: the handler reached through `t9` at 0xb49aa3c, whose pointer comes from the load at
  0xb49aa34 with no value in the bundle.
  Evidence grade: inferred.
- `__glOdyim_Vertex3dv_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdadbc80 (o32).
  Fast path for one three-component vertex given as a pointer to three doubles, with two extra sign-
  then-compare tests over the plain magnitude version: when the whole chain passes it writes the
  vertex to the absolute address 0x10000 and returns 0x10000, otherwise it tail-jumps through a
  handler pointer kept in a state record. The doubles at +0, +8 and +0x10 of a0 are narrowed to
  single precision into $f12, $f14 and $f0. The routine derives a fourth value by multiply-add from
  the record pointed to by absolute 0x1020 (+0x3c plus the coordinates times +0x30, +0x34 and
  +0x38). It is copied to a saved register and stored by the `swc1` at 0xdadbce4 to +0x8 of the
  record whose address sits at absolute 0x1024; the old word at +0x8 is first multiplied by it, and
  it is also multiplied by the word at +0x4. The `bc1f` at 0xdadbcfc leaves for 0xdadbe00 (the
  tail-jump block) when the first product is negative. A `bc1t` at 0xdadbd34 and another at
  0xdadbda0 send control there when the second product's magnitude is less than or unordered with
  that of a multiply-add over the 0x1020 record (+0xc with +0x0, +0x4, +0x8 for the first, +0x1c
  with +0x10, +0x14, +0x18 for the second). Between them the saved first value times the 0x1024 word
  at +0xc (then +0x10) is added to that multiply-add result; the `bc1f` at 0xdadbd50 (then
  0xdadbdbc) skips to the next stage at 0xdadbd68 (then the store block at 0xdadbdd4) when the sum
  is negative, and otherwise the `bc1t` at 0xdadbd60 (then 0xdadbdcc) jumps to 0xdadbe00 when the
  sum is less than, or unordered with, the saved value times the word at +0x18. The store block at
  0xdadbdd4 restores the two saved floating-point registers (saved by the `sdc1` at 0xdadbc9c and
  0xdadbca0), builds 0xffffffff8080cc03 in t0, and writes four words to 0x10000: that constant (`sw`
  at 0xdadbdec), the single-precision first two coordinates (0xdadbdf0, 0xdadbdf4) and the third
  (0xdadbdfc, in the delay slot of the `jr ra` at 0xdadbdf8), with v0 set to 0x10000 at 0xdadbde8.
  The tail-jump block fetches the pointer at +0x20 of the 0x1024 record (0xdadbe0c), moves the
  single-precision third coordinate into a2, and puts 0x3f800000 in a3 in the delay slot of the `jr
  t9` at 0xdadbe14, with a0 and a1 as at entry. Inferred: the four stores land on 0x10000, an
  address the bundle lists under memory-mapped I/O; the constant leads and the three coordinates
  follow, as one write sequence. Unknown: the landing point of the computed jump at 0xdadbe14, which
  depends on the word the 0x1024 record holds at +0x20; a trace of the writer of that field would
  settle it.
  Evidence grade: inferred.
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
- `__glOdyim_Vertex3dv_mag_line0` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb10c0 (n32).
  Sends a vertex held as three doubles (a0, +0x8, +0x10) to the absolute address 0x4000 if every test in a long
  float chain succeeds; a failed test hands control to a handler pointer instead.
  Each `ldc1` (0xdbb10c0, 0xdbb10c8, 0xdbb10d0) is followed by a double-to-single conversion, so `$f12` to
  `$f14` hold single-precision values from here on.
  The loads at 0xdbb10d8 and 0xdbb10dc read the structure pointers kept at absolute 0x1020 and 0x1024. The first
  structure's +0x3c word, plus the three floats times its +0x30, +0x34 and +0x38 words (three multiply-adds),
  gives `$f8`; the sum is copied to `$f10` and the `swc1` at 0xdbb110c stores it unmodified at +0x8 of the
  second structure.
  The first gate is the old +0x8 word times the sum: the `bc1f` at 0xdbb1124 takes the exit to 0xdbb11f8 when
  that product is below zero.
  Next the sum is scaled by the second structure's +0x4 word and its absolute value is taken. The `c.ult.s` at
  0xdbb1148 and 0xdbb11a4 set it against the absolute weighted sum of the first structure's words +0x0 to +0xc
  and +0x10 to +0x1c, and the `bc1t` at 0xdbb1150 or 0xdbb11ac exits on smaller or unordered.
  Each group also gives a signed sum, which `$f4` combines with the second structure's +0xc (then +0x10) word
  times `$f10`. If `$f4` is negative, the `bc1f` at 0xdbb1168 or 0xdbb11c4 jumps over the final comparison (to
  0xdbb1180, or to the store block at 0xdbb11dc); if not, the +0x18 word times `$f10` (multiplied in the delay
  slot at 0xdbb116c or 0xdbb11c8) is the bound, and the `bc1t` at 0xdbb1178 or 0xdbb11d4 exits when `$f4` is
  below it or unordered.
  In the store block t0 becomes 0xffffffff8080cc03 (0xdbb11dc, 0xdbb11e0), the `sw` at 0xdbb11e4 writes it to
  0x4000, the `swc1` at 0xdbb11e8 and 0xdbb11ec add `$f12` and `$f13`, and `$f14` follows in the delay slot
  (0xdbb11f4) of the `jr ra` at 0xdbb11f0. v0 still holds the pointer loaded from 0x1020 and is returned.
  The exit block loads t9 from +0x20 of the second structure (0xdbb11f8); the `jr` at 0xdbb1200 leaves with a0
  untouched and `$f15` set from t0 = 0x3f800000 (0xdbb11fc) in the delay slot.
  Unknown: the target of the `jr` at 0xdbb1200, as t9 comes from memory; reading the +0x20 word while the code
  runs would show it.
  Unknown: which peripheral answers at absolute 0x4000; the linked windows start at 0x110000 and 0x120000,
  so the address map in a datasheet is the route.
  Evidence grade: established.
- `__glOdyim_Vertex3dv_mag` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad9c80 (o32).
  Fast path for one three-component vertex given as a pointer to three doubles: when three
  single-precision tests pass it writes the vertex to the absolute address 0x10000 and returns
  0x10000, otherwise it tail-jumps through a handler pointer kept in a state record. The doubles at
  +0, +8 and +0x10 of a0 are loaded (`ldc1` at 0xdad9c80, 0xdad9c88, 0xdad9c90) and narrowed to
  single precision into $f12, $f14 and $f0. A fourth value comes out of a multiply-add over the
  record addressed by the word at absolute 0x1020 (+0x3c plus the coordinates times +0x30, +0x34 and
  +0x38). The result goes out through the `swc1` at 0xdad9cd4 to +0x8 of the record whose address
  sits at absolute 0x1024; the word previously at +0x8 is multiplied by the new value, and the word
  at +0x4 is multiplied by it as well. Taken to 0xdad9d74, the tail-jump block, the `bc1f` at
  0xdad9cec fires when the first product's magnitude differs from the product (the negative case).
  Both the `bc1t` at 0xdad9d20 and the `bc1t` at 0xdad9d54 branch there if the magnitude of the
  second product falls below, or is unordered with, the magnitude of another multiply-add over the
  0x1020 record, using +0xc with +0x0, +0x4, +0x8 for the first and +0x1c with +0x10, +0x14, +0x18
  for the second. If none is taken, the block at 0xdad9d5c sets v0 to 0x10000 and writes four words
  there: 0xffffffff8080cc03 (built at 0xdad9d50 and 0xdad9d58, `sw` at 0xdad9d60), then the
  single-precision first two coordinates (0xdad9d64, 0xdad9d68) and the third (0xdad9d70, in the
  delay slot of the `jr ra` at 0xdad9d6c). The handoff block loads the pointer at +0x20 of the
  0x1024 record (0xdad9d74), moves the single-precision third coordinate into a2, and puts
  0x3f800000 in a3 in the delay slot of the `jr t9` at 0xdad9d7c, with a0 and a1 as at entry.
  Inferred: a constant word then the three coordinates, four stores in all, all go to 0x10000, which
  the bundle lists under memory-mapped I/O and so points at a device. Unknown: the destination of
  the computed jump at 0xdad9d7c, which depends on the word the 0x1024 record holds at +0x20;
  tracking whatever fills that field would settle it.
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
- `__glOdyim_Vertex3dv_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbaf680 (n32).
  Reads three doubles at offsets 0x0, 0x8 and 0x10 of the buffer in a0, narrows them to singles in
  $f12 to $f14, tests them against two parameter blocks in three floating-point steps, and either
  writes four words to abs 0x4000 or jumps through the pointer at second+0x20.
  Abs 0x1020 and abs 0x1024 hold the first and second block addresses (loaded at 0xdbaf698 and
  0xdbaf69c).
  From first[+0x3c] (loaded at 0xdbaf6a4) three multiply-adds add $f12*first[+0x30],
  $f13*first[+0x34] and $f14*first[+0x38] to form $f8; the `swc1` at 0xdbaf6c8 writes that sum into
  second+0x8 whenever the routine runs, after $f7 has been set to the sum times the old second[+0x8]
  and before $f8 is scaled by second[+0x4].
  A `c.ueq.s` at 0xdbaf6d8 relates |$f7| to $f7, and the `bc1f` at 0xdbaf6e0 jumps to 0xdbaf74c on
  inequality, i.e. a negative $f7.
  The remaining two steps compute $f9 from first[+0xc], [+0x0], [+0x4], [+0x8] and from
  first[+0x1c], [+0x10], [+0x14], [+0x18], each with $f12 to $f14 as multipliers of the last three;
  the two `c.ult.s` at 0xdbaf700 and 0xdbaf728 test |$f8| with |$f9| and the `bc1t` at 0xdbaf708 and
  0xdbaf730 leave for 0xdbaf74c when |$f8| is smaller or unordered.
  If neither leaves, t0 is 0xffffffff8080cc03 (0xdbaf72c, with the `ori` in the delay slot at
  0xdbaf734); the `sw` at 0xdbaf738 writes it to abs 0x4000, the `swc1` at 0xdbaf73c and 0xdbaf740
  write $f12 and $f13, and the `swc1` at 0xdbaf748 in the delay slot of the return at 0xdbaf744
  writes $f14, with v0 returned as the word loaded from abs 0x1020.
  The exit at 0xdbaf74c loads t9 from second+0x20 and the `jr t9` at 0xdbaf754 carries t0 =
  0x3f800000 into $f15 through its delay slot, while a0 to a3 and $f12 to $f14 stay as they are.
  Unknown: where the `jr t9` at 0xdbaf754 leads, since second+0x20 is an unresolved pointer; a probe
  of the pointer at that jump would settle it.
  Unknown: whether any device answers abs 0x4000; only 0x110000 and 0x120000 appear among the linked
  mmio rows.
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
- `__glOdyim_Vertex3dv_smallw` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231a140 (n64).
  Takes a pointer to three doubles in `a0`, and either writes that vertex as single-precision values
  to the fixed address 0x10000 or tail-jumps to a handler pointer kept in the record at absolute
  0x1040.
  It loads the doubles at +0x0, +0x8 and +0x10 of `a0` into `f12`, `f13` and `f14` (0x231a140,
  0x231a148, 0x231a150), narrowing each to single precision right after the load. The pointers at
  absolute 0x1038 and 0x1040 follow into `v0` and `v1` (0x231a158, 0x231a15c).
  A sum is built in `f8` by three multiply-adds: it starts at the word at +0x3c of the 0x1038 record
  (0x231a164) and adds the three coordinates times the words at +0x30, +0x34 and +0x38. The `swc1`
  at 0x231a188 overwrites +0x8 of the 0x1040 record with the sum, after the old +0x8 word
  (0x231a174) has been multiplied by it.
  The `bc1f` at 0x231a198 jumps to the handler block at 0x231a1c4 when that product is negative,
  meaning it differs from its absolute value. The `bc1t` at 0x231a1a4 jumps there when the sum's
  absolute value is less than the word at +0x0 of the 0x1040 record (0x231a170), or when the compare
  is unordered.
  Both falling through, the routine sets `v0` to 0x10000 (0x231a1ac), stores the constant
  0xffffffff8080cc03 at 0x231a1b0, built from 0xffffffff80800000 at 0x231a1a0 and 0xcc03 ORed in the
  delay slot at 0x231a1a8, then stores `f12` and `f13` (0x231a1b4, 0x231a1b8) and `f14` in the delay
  slot of the `jr ra` at 0x231a1bc, all to 0x10000, which it returns.
  The handler block reads `t9` from +0x20 of the 0x1040 record (0x231a1c4), puts 0x3f800000 in `t0`
  (0x231a1c8) and jumps via `t9` at 0x231a1cc, with that `t0` copied to `f15` in the delay slot.
  Inferred: the address 0x10000 behaves as a write port, since a command word and three coordinates
  are stored to it in sequence with the pointer unchanged.
  Unknown: whether the address 0x10000 belongs to a mapped device window, as the bundle's rows name
  just 0x110000 and 0x120000.
  Unknown: the target of the tail jump at 0x231a1cc, as the load at 0x231a1c4 reads a field of the
  0x1040 record that the bundle does not fill in.
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
- `__glOdyim_Vertex3dv_smallw` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbae440 (n32).
  Short double-precision vertex path: after two float tests it writes the vertex to the absolute address 0x4000,
  and when either test fails it tail-jumps to a handler pointer.
  Three `ldc1` loads (0xdbae440, 0xdbae448, 0xdbae450) take the doubles at a0, +0x8 and +0x10, and each is
  converted to single precision in `$f12` to `$f14` straight after.
  Absolute 0x1020 holds the first structure's address and 0x1024 the second's; they are read at 0xdbae458 and
  0xdbae45c. `$f8` is the first structure's +0x3c word plus the floats times its +0x30, +0x34 and +0x38 words
  (three multiply-adds). The old +0x8 word of the second structure is multiplied by `$f8`, and the `swc1` at
  0xdbae488 puts the sum itself into that +0x8 slot.
  Gate one (`c.ueq.s` at 0xdbae490, `bc1f` at 0xdbae498) goes to the exit at 0xdbae4c0 if the product is
  negative.
  Gate two takes the absolute sum against the second structure's +0x0 word. Its `c.ult.s` is in the delay slot
  at 0xdbae49c and runs either way; the `bc1t` at 0xdbae4a4 exits when the sum is smaller or unordered.
  Past both, the `ori` at 0xdbae4a8 finishes t0 = 0xffffffff8080cc03, the `sw` at 0xdbae4ac writes it to 0x4000,
  the `swc1` at 0xdbae4b0 and 0xdbae4b4 follow with `$f12` and `$f13`, and `$f14` is stored in the delay slot
  (0xdbae4bc) of the `jr ra` at 0xdbae4b8. The returned v0 is the pointer loaded from 0x1020.
  The exit takes t9 from the second structure's +0x20 word (0xdbae4c0), sets t0 = 0x3f800000 (0xdbae4c4), and
  the `jr` at 0xdbae4c8 leaves with a0 unchanged and `$f15` set from t0 in its delay slot.
  Unknown: where the `jr` at 0xdbae4c8 goes, since t9 is loaded from memory; the live value of the +0x20 word
  would name it.
  Unknown: what sits at the absolute address 0x4000, since no linked row covers it (the nearest windows begin
  at 0x110000 and 0x120000); the address decode in a datasheet would settle it.
  Evidence grade: established.
- `__glOdyim_Vertex3dv_smallw` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49aa80 (n64).
  Reads three doubles from the array at `a0`, narrows them to single precision and, if two tests
  pass, writes them to the fixed address 0x4000; otherwise it tail-jumps through a pointer in the
  record at absolute 0x1040.
  The doubles at +0x0, +0x8 and +0x10 of `a0` go into `f12` to `f14` (0xb49aa80, 0xb49aa88,
  0xb49aa90), each narrowed straight after its load. The words at absolute 0x1038 and 0x1040 are
  then read into `v0` and `v1` (0xb49aa98, 0xb49aa9c).
  Three multiply-adds make `f8`: the word at +0x3c of the 0x1038 record (0xb49aaa4) plus each
  coordinate times the word at +0x30, +0x34 or +0x38. After the old +0x8 word of the 0x1040 record
  (0xb49aab4) has been multiplied by that sum, the `swc1` at 0xb49aac8 replaces it with the sum.
  Taken branches go to the handler block at 0xb49ab00: the `bc1f` at 0xb49aad8 when the product is
  negative (it differs from its absolute value), and the `bc1t` at 0xb49aae4 when the sum's absolute
  value is below the +0x0 word of the 0x1040 record (0xb49aab0) or unordered with it.
  On the write path the `sw` at 0xb49aaec stores 0xffffffff8080cc03 to 0x4000 (0xffffffff80800000
  from 0xb49aae0 plus 0xcc03 ORed in at 0xb49aae8), followed by `f12` and `f13` (0xb49aaf0,
  0xb49aaf4) and `f14` in the delay slot of the `jr ra` at 0xb49aaf8. The return value is the
  pointer loaded from 0x1038.
  The handler block loads `t9` from +0x20 of the 0x1040 record (0xb49ab00), sets `t0` to 0x3f800000
  (0xb49ab04) and jumps through `t9` at 0xb49ab08; the delay slot moves `t0` to `f15`.
  Inferred: the address 0x4000 receives the vertex as a port, because the command word and the three
  coordinates are stored there in one run.
  Unknown: the register or port at the address 0x4000; the machine's address map would settle it.
  Unknown: which routine the indirect jump at 0xb49ab08 enters; the word fetched at 0xb49ab00 is not
  resolved in the bundle.
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
- `__glOdyim_Vertex3f_smallw` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad8900 (o32).
  Takes a vertex of three single-precision coordinates (`$f12`, `$f14` and a third that starts as the bits
  of `a2`, held in `$f0`), runs two float checks against two records whose addresses sit in the words at
  absolute 0x1020 and 0x1024, and then either writes the vertex to absolute 0x10000 and returns or
  tail-jumps through a pointer in the second record.
  The check value is the first record's +0x3c word plus the three coordinates times that record's +0x30,
  +0x34 and +0x38 words (loads at 0xdad890c to 0xdad8918); it is multiplied by the second record's old
  +0x8 word (load at 0xdad8920), and the sum itself is written back to +0x8 of the second record by the
  `swc1` at 0xdad8940.
  The first check compares the absolute value of that product with the product (0xdad8948): the `bc1f`
  at 0xdad8950 goes to the jump block at 0xdad897c when they differ and are ordered, that is, when the
  product is negative. The delay slot at 0xdad8954 compares the absolute value of the sum with the second
  record's +0x0 word (load at 0xdad891c), and the `bc1t` at 0xdad895c goes to 0xdad897c when the sum is
  smaller or the compare is unordered.
  With both checks passed, the code sets `v0` to 0x10000 (0xdad8964), writes 0xffffffff8080cc03 there with
  the `sw` at 0xdad8968 (0x8080 loaded at 0xdad8958, 0xcc03 ORed in at 0xdad8960), then the two coordinates
  in `$f12` and `$f14` at 0xdad896c and 0xdad8970, and `$f0` from the return's delay slot at 0xdad8978;
  it returns 0x10000.
  The jump block loads `t9` from +0x20 of the second record (0xdad897c), copies `$f0` back into `a2`, sets
  `a3` to 0x3f800000 in the delay slot of the `jr t9` at 0xdad8984, and leaves `a0` and `a1` untouched.
  Unknown: the routine entered by the `jr t9` at 0xdad8984, since the +0x20 word of the second record is filled at run time; a capture of that record settles it.
  Unknown: which device window the four writes to absolute 0x10000 reach; the linked board windows start at 0x110000, so a mapping record for 0x10000 would settle it.
  Evidence grade: established.
- `__glOdyim_Vertex3f_smallw` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231a200 (n64).
  Takes a vertex as three single-precision arguments in `f12`, `f13` and `f14` and either writes it
  to the fixed address 0x10000 or tail-jumps to a handler pointer from the record at absolute
  0x1040.
  No conversion is needed, so the routine starts at once by loading the pointers at absolute 0x1038
  and 0x1040 into `v0` and `v1` (0x231a200, 0x231a204).
  A sum in `f8` starts from the word at +0x3c of the 0x1038 record (0x231a20c) and gains each
  argument times the word at +0x30, +0x34 or +0x38 through three multiply-adds. The old word at +0x8
  of the 0x1040 record (0x231a21c) is multiplied by the sum, and the `swc1` at 0x231a230 stores the
  sum itself to +0x8 on every path.
  The `bc1f` at 0x231a240 branches to the handler block at 0x231a26c if the product is negative (not
  equal to its absolute value). The `bc1t` at 0x231a24c branches there if the absolute value of the
  sum is less than the +0x0 word of the 0x1040 record (0x231a218) or the compare is unordered.
  When neither branch is taken, `v0` becomes 0x10000 (0x231a254), the `sw` at 0x231a258 stores
  0xffffffff8080cc03 (0xffffffff80800000 from 0x231a248 with 0xcc03 ORed at 0x231a250) and `f12`,
  `f13` and `f14` follow to the same address at 0x231a25c, 0x231a260 and 0x231a268, the last in the
  delay slot of the `jr ra` at 0x231a264.
  The handler block loads `t9` from +0x20 of the 0x1040 record at 0x231a26c, sets `t0` to 0x3f800000
  (0x231a270) and jumps through `t9` at 0x231a274, passing `t0` into `f15` from the delay slot.
  Inferred: the address 0x10000 works as a write port, since one command word and three coordinates
  land on it consecutively with no pointer step.
  Unknown: which unit decodes the address 0x10000, because no row or excerpt in the bundle places
  it.
  Unknown: the destination of the register jump at 0x231a274, because the 0x1040 record word read at
  0x231a26c has no recorded value.
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
- `__glOdyim_Vertex3fv_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231d100 (n64).
  Reads three floats through `a0`, runs a chain of seven tests against the records at absolute
  0x1038 and 0x1040, and either writes the vertex to the fixed address 0x10000 or tail-jumps through
  a pointer in the 0x1040 record.
  `f12` to `f14` get the floats at +0x0, +0x4 and +0x8 of `a0` (0x231d100, 0x231d104, 0x231d108).
  After that come the loads of the records' pointers, absolute 0x1038 into `v0` and absolute 0x1040
  into `v1` (0x231d10c, 0x231d110).
  A sum in `f8` starts at the word at +0x3c of the 0x1038 record (0x231d118) and adds the
  coordinates times the words at +0x30, +0x34 and +0x38. The sum is copied to `f10`, multiplied by
  the old +0x8 word of the 0x1040 record (0x231d128) for a sign test, written over +0x8 by the
  `swc1` at 0x231d140, and multiplied by the word at +0x4 of the 0x1040 record (0x231d124) to give a
  bound, kept as an absolute value. The `bc1f` at 0x231d158 goes to the handler block at 0x231d230
  when the first product is negative.
  Two plane stages follow, each the same shape. The first forms a distance from the word at +0xc of
  the 0x1038 record and the coordinates times the words at +0x0, +0x4 and +0x8, and the `bc1t` at
  0x231d184 goes to the handler block if the bound is less than its absolute value or unordered. The
  second stage uses +0x1c with +0x10, +0x14 and +0x18, and the `bc1t` at 0x231d1e0.
  Each stage then runs a second check on the signed distance. It loads a word from the 0x1040 record
  (+0xc at 0x231d180, +0x10 at 0x231d1e4), multiplies it by the copy of the sum in `f10` and adds
  the distance. When that result is negative, the `bc1f` at 0x231d19c or at 0x231d1f8 skips the rest
  of the check. Otherwise the result is compared with the word at +0x18 of the 0x1040 record times
  the sum, and the `bc1t` at 0x231d1ac or 0x231d208 goes to the handler block if the result is less
  or unordered.
  A vertex that clears every test is written by the `sw` at 0x231d21c, which stores
  0xffffffff8080cc03 (0xffffffff80800000 from 0x231d210 with 0xcc03 ORed at 0x231d214) to 0x10000
  after `v0` is set to 0x10000 at 0x231d218. `f12` and `f13` follow at 0x231d220 and 0x231d224, and
  `f14` goes in the delay slot of the `jr ra` at 0x231d228. `v0` is left holding 0x10000 on return.
  The handler block loads `t9` from +0x20 of the 0x1040 record (0x231d230), sets `t0` to 0x3f800000
  (0x231d234) and jumps via `t9` at 0x231d238; the delay slot copies `t0` into `f15`.
  Inferred: the two stages read as plane checks on the vertex, because each sums three coordinate
  products and one more word of the 0x1038 record; the bundle gives those planes no name.
  Unknown: which device register the address 0x10000 reaches, because the linked rows list only the
  board windows at 0x110000 and 0x120000.
  Unknown: the code entered by the `jr` at 0x231d238, because the pointer read at 0x231d230 from
  +0x20 of the 0x1040 record points to memory the bundle does not hold.
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
- `__glOdyim_Vertex3fv_mag_line0` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb1380 (n32).
  Reads a three-float vertex from a0, runs it through a longer chain of float tests than its sibling routines,
  and writes it to the absolute address 0x4000 if every test passes; any failed test tail-jumps to a handler.
  The `lwc1` loads at 0xdbb1380, 0xdbb1384 and 0xdbb1388 put the floats in `$f12` to `$f14`. Absolute 0x1020 and 0x1024 each hold the address of a structure; both are loaded at 0xdbb138c and 0xdbb1390. Three multiply-adds
  build `$f8` from the first structure's +0x3c word plus the floats times its +0x30, +0x34 and +0x38 words; `$f10` receives a copy of the sum, and the sum goes unscaled to +0x8 of the second structure by the `swc1` at 0xdbb13c0.
  Before that store the old +0x8 word was multiplied by the sum; `c.ueq.s` at 0xdbb13d0 tests the product and the `bc1f` at 0xdbb13d8 exits to 0xdbb14ac when it is negative.
  Two more pairs follow, one per group of first-structure words (+0x0 to +0xc, then +0x10 to +0x1c). Each pair
  first compares the scaled absolute sum (the sum times the +0x4 word of the second structure) with the absolute
  value of the group's weighted sum (`c.ult.s` at 0xdbb13fc and 0xdbb1458; `bc1t` at 0xdbb1404 and 0xdbb1460
  leave for 0xdbb14ac on smaller or unordered). It then forms `$f4` as the second structure's word at +0xc (then
  +0x10) times `$f10` plus the group's signed sum. If `$f4` is ordered and negative the `bc1f` at 0xdbb141c or
  0xdbb1478 skips the last check (to 0xdbb1434 or the store block at 0xdbb1490); otherwise `$f4` is compared with
  the +0x18 word times `$f10` (the multiply is in the delay slot at 0xdbb1420 or 0xdbb147c), and the `bc1t` at
  0xdbb142c or 0xdbb1488 leaves when `$f4` is smaller or unordered.
  The store block builds t0 = 0xffffffff8080cc03 (0xdbb1490, 0xdbb1494), writes it with the `sw` at 0xdbb1498 to
  0x4000, then `$f12` and `$f13` (0xdbb149c, 0xdbb14a0) and `$f14` in the delay slot (0xdbb14a8) of the `jr ra`
  at 0xdbb14a4; v0 is still the pointer loaded from 0x1020, and it is what returns.
  The exit block at 0xdbb14ac loads t9 from the second structure's +0x20 word, builds t0 = 0x3f800000 (0xdbb14b0), and calls through t9 at 0xdbb14b4 with `$f15` filled from t0 in the delay slot.
  Unknown: the peripheral behind the absolute address 0x4000, given that the linked windows start at 0x110000
  and 0x120000; a register table covering 0x4000 would settle it.
  Unknown: the destination of the tail jump at 0xdbb14b4; the +0x20 word of the second structure, read during
  a run, would name it.
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
- `__glOdyim_Vertex3fv_mag` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231b580 (n64).
  Reads three floats through `a0` and stores them to the fixed address 0x10000 when a sign test and
  two distance tests against the records at absolute 0x1038 and 0x1040 all pass; if any one fails it
  jumps through a pointer held in the 0x1040 record.
  `f12` to `f14` receive the floats at +0x0, +0x4 and +0x8 of `a0` (0x231b580, 0x231b584,
  0x231b588), then `v0` and `v1` the pointers at absolute 0x1038 and 0x1040 (0x231b58c, 0x231b590).
  A sum in `f8` starts from the word at +0x3c of the 0x1038 record (0x231b598) and adds the
  coordinates times the words at +0x30, +0x34 and +0x38, using three multiply-adds. That sum is
  multiplied by the old +0x8 word of the 0x1040 record (0x231b5a8) for the sign test, written over
  +0x8 by the `swc1` at 0x231b5bc, and multiplied again by the word at +0x4 of the 0x1040 record
  (0x231b5a4) to give a bound, kept as an absolute value.
  A negative first product sends the `bc1f` at 0x231b5d4 to the handler block at 0x231b644. Next a
  distance is made from the word at +0xc of the 0x1038 record and the coordinates times the words at
  +0x0, +0x4 and +0x8, and the `bc1t` at 0x231b5fc leaves for the handler block when the bound is
  less than that distance's absolute value or unordered with it. A second distance uses +0x1c with
  +0x10, +0x14 and +0x18, and the `bc1t` at 0x231b624 applies the same rule.
  Passing everything, the routine sets `v0` to 0x10000 (0x231b62c), stores 0xffffffff8080cc03 at
  0x231b630 (from 0xffffffff80800000 at 0x231b620 and 0xcc03 ORed at 0x231b628), then `f12`, `f13`
  at 0x231b634, 0x231b638 and `f14` in the delay slot of the `jr ra` at 0x231b63c, and gives back
  0x10000.
  The handler block loads `t9` from +0x20 of the 0x1040 record (0x231b644), sets `t0` to 0x3f800000
  (0x231b648), and jumps through `t9` at 0x231b64c with `t0` copied to `f15` in the delay slot.
  Inferred: the second and third tests are plane checks of the vertex, since each adds one word to a
  sum of three coordinate products; nothing in the bundle names the planes.
  Unknown: where in the board's address map the address 0x10000 falls, since the rows cover other
  windows only.
  Unknown: the routine the tail call at 0x231b64c reaches, since the value fetched at 0x231b644
  belongs to a record the bundle leaves out.
  Evidence grade: inferred.
- `__glOdyim_Vertex3fv_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49bec0 (n64).
  Takes a pointer to three floats in `a0` and writes that vertex to the fixed address 0x4000 only if
  it passes three tests built from the records at absolute 0x1038 and 0x1040; any failed test makes
  it tail-jump through a pointer in the 0x1040 record instead.
  The floats at +0x0, +0x4 and +0x8 of `a0` go into `f12` to `f14` (0xb49bec0, 0xb49bec4,
  0xb49bec8). Then `v0` takes the pointer stored at absolute 0x1038 and `v1` the one at absolute
  0x1040 (0xb49becc, 0xb49bed0).
  Three multiply-adds make a sum in `f8` from the word at +0x3c of the 0x1038 record (0xb49bed8) and
  the coordinates times the words at +0x30, +0x34 and +0x38. The old word at +0x8 of the 0x1040
  record (0xb49bee8) is multiplied by that sum, and the `swc1` at 0xb49befc replaces it with the
  sum. The sum is also multiplied by the word at +0x4 of the 0x1040 record (0xb49bee4) and its
  absolute value kept as the bound for the next two tests.
  The first test, the `bc1f` at 0xb49bf14, goes to the handler block at 0xb49bf80 when the sum times
  the old +0x8 word is negative. The second and third tests each form a distance from four words of
  the 0x1038 record: the word at +0xc plus the coordinates times the words at +0x0, +0x4 and +0x8
  for the first, and the word at +0x1c plus the coordinates times the words at +0x10, +0x14 and
  +0x18 for the second. The `bc1t` at 0xb49bf3c and the one at 0xb49bf64 go to the handler block
  when the bound is less than the absolute value of that distance, or the compare is unordered.
  With all three passed, the `sw` at 0xb49bf6c stores 0xffffffff8080cc03 to 0x4000
  (0xffffffff80800000 from 0xb49bf60 and 0xcc03 ORed in at 0xb49bf68), `f12` and `f13` follow at
  0xb49bf70 and 0xb49bf74, and `f14` goes in the delay slot of the `jr ra` at 0xb49bf78. The return
  value is the pointer read from 0x1038.
  The handler block loads `t9` from +0x20 of the 0x1040 record (0xb49bf80), sets `t0` to 0x3f800000
  (0xb49bf84) and jumps via `t9` at 0xb49bf88, copying `t0` into `f15` in the delay slot.
  Inferred: the two distance tests read as plane checks against the 0x1038 record, because each
  combines three coordinate multiplies with a fourth additive word; the bundle holds no name for
  those planes.
  Unknown: which block owns the address 0x4000, since no linked row maps it.
  Unknown: the routine called by the final jump at 0xb49bf88; its address is the +0x20 field fetched
  at 0xb49bf80 and that field has no value in the bundle.
  Evidence grade: inferred.
- `__glOdyim_Vertex3fv_smallw` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad89c0 (o32).
  Array form of the three-float vertex fast path: it reads the coordinates from the three floats at `a0`
  +0x0, +0x4 and +0x8 into `$f12`, `$f14` and `$f0`, runs two float checks against the records behind the
  words at absolute 0x1020 and 0x1024, and either writes the coordinates to absolute 0x10000 or
  tail-jumps through a pointer in the second record.
  The checked sum is the first record's +0x3c word plus the coordinates times the +0x30, +0x34 and +0x38
  words (loads at 0xdad89d4 to 0xdad89e0); it is multiplied by the second record's old +0x8 word (load at
  0xdad89e8), and the `swc1` at 0xdad8a08 overwrites that +0x8 word with the sum.
  The `bc1f` at 0xdad8a18 jumps to 0xdad8a44 when the product is negative (absolute value unequal to the
  value). The compare in its delay slot, absolute sum against the second record's +0x0 word (load at
  0xdad89e4), feeds the `bc1t` at 0xdad8a24, which jumps to 0xdad8a44 when the sum is smaller or unordered.
  Falling through both, the routine sets `v0` to 0x10000 (0xdad8a2c), writes 0xffffffff8080cc03 with the
  `sw` at 0xdad8a30 (0x8080 at 0xdad8a20, 0xcc03 ORed in at 0xdad8a28), then the three floats from `a0`,
  by the `swc1` at 0xdad8a34 and 0xdad8a38 and in the return's delay slot at 0xdad8a40, and returns 0x10000.
  The jump block loads `t9` from +0x20 of the second record (0xdad8a44), puts the third float back into
  `a2`, and sets `a3` to 0x3f800000 in the delay slot of the `jr t9` at 0xdad8a4c; `a0` is left as the array pointer given by the caller.
  Unknown: which routine the `jr t9` at 0xdad8a4c reaches, as the pointer at the second record's +0x20 is not in the bundle; a capture of the record answers it.
  Unknown: whether absolute 0x10000 falls in a device window, as none of the linked rows reach it; a mapping record would settle that for the four stores.
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
- `__glOdyim_Vertex3i_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdadc1c0 (o32).
  Integer-argument guard for a three-coordinate vertex: `a0`, `a1` and `a2` are converted to single
  precision (`$f12`, `$f14`, `$f0`), seven float branches test them against the records behind the words at
  absolute 0x1020 and 0x1024, and the raw integers are then written to absolute 0x10000 or the routine
  tail-jumps through a pointer in the second record. The frame of 16 bytes keeps `$f20` and `$f22`
  (saved at 0xdadc1dc and 0xdadc1e0, reloaded on both exits).
  The first sum is the first record's +0x3c word plus the converted values times its +0x30, +0x34 and +0x38
  words; `$f20` holds it, and the second record's old +0x8 word multiplies it, its +0x4 word scales it
  (load at 0xdadc1fc), and the `swc1` at 0xdadc224 stores the sum over +0x8 of the second record. The
  `bc1f` at 0xdadc23c leaves for the exit block at 0xdadc340 when the product with the old +0x8 word is
  negative.
  A second sum from the first record's +0xc, +0x0, +0x4 and +0x8 words is compared with the scaled first
  sum, both in absolute value; the `bc1t` at 0xdadc274 leaves for 0xdadc340 when the scaled first sum is
  smaller or the compare is unordered. The second sum plus the first sum times the second record's +0xc
  word is then checked: when negative the `bc1f` at 0xdadc290 skips to 0xdadc2a8, otherwise it is compared
  with the second record's +0x18 word times the first sum and the `bc1t` at 0xdadc2a0 leaves for 0xdadc340
  when smaller or unordered. Another such pair runs for a third sum from the first record's +0x1c, +0x10, +0x14
  and +0x18 words and the second record's +0x10 word: the `bc1t` at 0xdadc2e0, the `bc1f` at 0xdadc2fc and
  the `bc1t` at 0xdadc30c.
  Passing all of them, the block at 0xdadc314 reloads `$f20` and `$f22`, sets `v0` to 0x10000 (0xdadc328),
  writes 0xffffffff8080cc02 there with the `sw` at 0xdadc32c (0x8080 at 0xdadc320, 0xcc02 ORed in at
  0xdadc324), then `a0` at 0xdadc330, `a1` at 0xdadc334 and `a2` in the delay slot of the `jr ra` at
  0xdadc338, and returns 0x10000.
  The exit block loads `t9` from +0x20 of the second record (0xdadc34c), puts the converted third value back
  into `a2` as float bits, and the `jr t9` at 0xdadc354 sets `a3` to 0x3f800000 in its delay slot at
  0xdadc358; `a0` and `a1` go out unchanged as the caller's integers.
  Unknown: the destination of the `jr t9` at 0xdadc354, a pointer held at +0x20 of the second record and set at run time; a capture of that record supplies it.
  Unknown: the destination block of the stores to absolute 0x10000; the linked board windows do not include it and a mapping record would settle it.
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
- `__glOdyim_Vertex3i_mag_line0` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb14c0 (n32).
  Takes a vertex as three integers in a0, a1 and a2; it tests float copies of them against two structures,
  and on success posts the raw integers to the absolute address 0x4000, otherwise tail-jumps to a handler.
  The integers are moved to the FPU and converted to single precision in `$f12` to `$f14` for the tests only.
  Structure addresses come from the absolute words 0x1020 and 0x1024 (0xdbb14d8, 0xdbb14dc). Three
  multiply-adds make `$f8` from the first structure's +0x3c word plus the converted values times its +0x30,
  +0x34 and +0x38 words; the sum is saved in `$f10` and written unchanged to the second structure's +0x8 word by the `swc1` at 0xdbb150c.
  The old +0x8 word times the sum is checked first (`c.ueq.s` at 0xdbb151c); a negative product sends the `bc1f` at 0xdbb1524 to 0xdbb15f8.
  Two groups of tests follow, over the first structure's words +0x0 to +0xc and then +0x10 to +0x1c. Each
  compares the absolute value of that group's weighted sum with the sum scaled by the second structure's +0x4
  word (`c.ult.s` at 0xdbb1548 and 0xdbb15a4; the `bc1t` at 0xdbb1550 and 0xdbb15ac leave for 0xdbb15f8 on
  smaller or unordered). Then `$f4` is the second structure's word at +0xc (then +0x10) times `$f10` plus the
  group's signed sum. If `$f4` is ordered and negative the `bc1f` at 0xdbb1568 or 0xdbb15c4 skips ahead (to
  0xdbb1580 or 0xdbb15dc); if not, `$f4` is compared with the +0x18 word times `$f10` (multiply in the delay slot
  at 0xdbb156c or 0xdbb15c8) and the `bc1t` at 0xdbb1578 or 0xdbb15d4 leaves when `$f4` is smaller or unordered.
  The block at 0xdbb15dc builds t0 = 0xffffffff8080cc02 (0xdbb15dc, 0xdbb15e0) and the `sw` at 0xdbb15e4 writes
  it to 0x4000; the `sw` at 0xdbb15e8, 0xdbb15ec and (in the delay slot of the `jr ra` at 0xdbb15f0) 0xdbb15f4
  then write a0, a1 and a2 as received. The return value in v0 is the pointer loaded from 0x1020.
  At 0xdbb15f8 t9 is loaded from +0x20 of the second structure, and the `jr` at 0xdbb1600 jumps through it with `$f15` set from t0 = 0x3f800000 (0xdbb15fc) in the delay slot.
  Inferred: 0x3f800000 is the single-precision pattern for one, which makes `$f15` one at the tail call.
  Unknown: the peripheral behind the absolute address 0x4000, because the linked windows start at 0x110000 and
  0x120000; the register table for 0x4000 is the route.
  Unknown: the destination of the tail jump at 0xdbb1600, since t9 is read from memory; the +0x20 word of the
  second structure during a live run would name it.
  Evidence grade: inferred.
- `__glOdyim_Vertex3i_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49bfc0 (n64).
  Takes a vertex as three 32-bit integers in `a0`, `a1` and `a2`, and writes the raw integers to the
  fixed address 0x4000 only if float conversions of them pass a sign test and two distance tests;
  otherwise it tail-jumps through a pointer from the record at absolute 0x1040.
  The integers are converted to single precision in `f12` to `f14` for the tests only, while the
  stores use the original integer registers. The pointers at absolute 0x1038 and 0x1040 load into
  `v0` and `v1` (0xb49bfd8, 0xb49bfdc).
  A sum in `f8` starts at the word at +0x3c of the 0x1038 record (0xb49bfe4) and adds each converted
  value times the words at +0x30, +0x34 and +0x38. The old +0x8 word of the 0x1040 record
  (0xb49bff4) is multiplied by it, then the `swc1` at 0xb49c008 overwrites +0x8 with the sum. The
  sum times the word at +0x4 of the 0x1040 record (0xb49bff0) gives a bound, kept as an absolute
  value.
  The `bc1f` at 0xb49c020 leaves for the handler block at 0xb49c08c when the first product is
  negative. Two distances follow: the word at +0xc plus the values times the words at +0x0, +0x4 and
  +0x8, and the word at +0x1c plus the values times the words at +0x10, +0x14 and +0x18, both of the
  0x1038 record. The `bc1t` at 0xb49c048 and the one at 0xb49c070 leave when the bound is less than
  the distance's absolute value, or the compare is unordered.
  The write path stores 0xffffffff8080cc02 with the `sw` at 0xb49c078 (0xffffffff80800000 at
  0xb49c06c, 0xcc02 ORed in at 0xb49c074), then `a0` at 0xb49c07c, `a1` at 0xb49c080 and `a2` in the
  delay slot of the `jr ra` at 0xb49c084, all to 0x4000. The return value is the pointer read from
  0x1038 at 0xb49bfd8.
  The handler block loads `t9` from +0x20 of the 0x1040 record (0xb49c08c), puts 0x3f800000 in `t0`
  (0xb49c090) and jumps through `t9` at 0xb49c094, with `t0` moved to `f15` in the delay slot.
  Inferred: the second and third tests are plane checks, since each is a sum of three coordinate
  products plus one word; the bundle does not name the planes.
  Unknown: the target register of the stores to the address 0x4000, as the datasheet excerpts do not
  mention it.
  Unknown: the continuation after 0xb49c094, whose pointer arrives from the load at 0xb49c08c and
  cannot be followed here.
  Evidence grade: inferred.
- `__glOdyim_Vertex3i_smallw` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad8a80 (o32).
  Short integer-argument guard for one vertex: `a0`, `a1` and `a2` are converted to single precision
  (`$f12`, `$f14`, `$f0`), two float branches test them against the records behind the words at absolute
  0x1020 and 0x1024, and the raw integers are then written to absolute 0x10000 or the routine tail-jumps
  through a pointer in the second record.
  The tested sum is the first record's +0x3c word plus the converted values times its +0x30, +0x34 and
  +0x38 words; it is multiplied by the second record's old +0x8 word (load at 0xdad8ab4), and the `swc1`
  at 0xdad8ad4 replaces that +0x8 word with the sum.
  The `bc1f` at 0xdad8ae4 leaves for 0xdad8b10 when the product is negative (compare at 0xdad8adc). The
  compare in its delay slot sets the flag the `bc1t` at 0xdad8af0 reads: the absolute sum against the second
  record's +0x0 word (load at 0xdad8ab0), and the branch leaves for 0xdad8b10 when the sum is smaller or
  the compare is unordered.
  Otherwise `v0` becomes 0x10000 (0xdad8af8), the `sw` at 0xdad8afc writes 0xffffffff8080cc02 there (0x8080
  at 0xdad8aec, 0xcc02 ORed in at 0xdad8af4), and `a0` and `a1` follow at 0xdad8b00 and 0xdad8b04, then `a2`
  in the delay slot (0xdad8b0c) of the `jr ra` at 0xdad8b08; the return value is 0x10000.
  The jump block loads `t9` from +0x20 of the second record (0xdad8b10), puts the converted third value
  back into `a2` as float bits, and sets `a3` to 0x3f800000 in the delay slot of the `jr t9` at 0xdad8b18;
  `a0` and `a1` are passed on exactly as received.
  Unknown: the entry point behind the `jr t9` at 0xdad8b18; the second record's +0x20 word is not in the bundle, so a capture is the route.
  Unknown: what lies at absolute 0x10000, the address of all four stores; a mapping record for it is the route, as no linked row names it.
  Evidence grade: established.
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
- `__glOdyim_Vertex3i_smallw` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbae640 (n32).
  Fast path for one vertex given as three integers in a0, a1 and a2: it turns them into single floats in $f12 to $f14, runs three float checks, and either writes four words to the single address 0x4000 or tail-jumps through a pointer. The checks use the two records whose addresses are the words at 0x1020 and 0x1024. A weighted sum goes into $f8: the word at +0x3c of the 0x1020 record plus the three coordinates times the words at +0x30, +0x34 and +0x38. $f7 becomes that sum times the word at +0x8 of the 0x1024 record, and the `swc1` at 0xdbae688 writes the sum itself back over +0x8 of the 0x1024 record, after +0x8 was read at 0xdbae674.
  First check: the `bc1f` at 0xdbae698 leaves for the pointer jump when the compare at 0xdbae690 (absolute value of $f7 against $f7, equal-or-unordered) is false, which happens when $f7 is negative and ordered. Second check: the delay slot at 0xdbae69c compares the absolute value of the sum with the word at +0x0 of the 0x1024 record, and the `bc1t` at 0xdbae6a4 leaves for the jump when the sum's absolute value is less than that word or unordered. The `ori` in its delay slot at 0xdbae6a8 runs on both paths and leaves t0 at 0xffffffff8080cc02.
  When both checks fall through the block at 0xdbae6ac stores t0, then a0, a1 and a2 unchanged, each with a word `sw` to 0x4000, the last of them in the delay slot of the `jr ra` at 0xdbae6b8, and returns the word loaded from 0x1020 in v0. On the other path the `lw` at 0xdbae6c0 reads t9 from +0x20 of the 0x1024 record, t0 becomes 0x3f800000 (the single-float bit pattern for 1.0), and the `jr t9` at 0xdbae6c8 jumps with $f15 loaded from t0 in its delay slot and a0 to a3 as they came in; nothing is stored to 0x4000 on that route.
  Inferred: the checks screen the vertex before the direct write, because every failed check leaves for the pointer at +0x20 of the 0x1024 record and no memory write happens on that route.
  Unknown: which routine the `jr t9` at 0xdbae6c8 enters; t9 comes from a word in the 0x1024 record that is only fixed during a run, so a stop at that jump would name it.
  Unknown: the device-side result of the four word stores to 0x4000; the linked rows cover only the windows at 0x110000 and 0x120000, so a map of the low addresses would settle it.
  Evidence grade: inferred.
- `__glOdyim_Vertex3i_smallw` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49ac80 (n64).
  Takes a vertex as three 32-bit integers in `a0`, `a1` and `a2`, tests a float conversion of it,
  and then either writes the raw integers to the fixed address 0x4000 or tail-jumps through a
  pointer in the record at absolute 0x1040.
  The integers are moved into floating-point registers and converted to single precision in `f12` to
  `f14` for the tests only; the stores later use the original integer registers.
  A sum in `f8` is built from the word at +0x3c of the 0x1038 record (0xb49aca4), plus the converted
  values times the words at +0x30, +0x34 and +0x38. The `swc1` at 0xb49acc8 puts the sum into +0x8
  of the 0x1040 record after the old +0x8 word (0xb49acb4) has been multiplied by it.
  The `bc1f` at 0xb49acd8 jumps to the handler block at 0xb49ad00 when that product is negative; the
  `bc1t` at 0xb49ace4 jumps there when the absolute value of the sum is below the +0x0 word of the
  0x1040 record (0xb49acb0) or unordered.
  On the write path the `sw` at 0xb49acec stores 0xffffffff8080cc02, formed from 0xffffffff80800000
  at 0xb49ace0 and 0xcc02 ORed in at 0xb49ace8, to 0x4000. The `sw` instructions at 0xb49acf0 and
  0xb49acf4 write `a0` and `a1`, and the one at 0xb49acfc in the delay slot of the `jr ra` at
  0xb49acf8 writes `a2`. The return value is the pointer loaded from 0x1038 at 0xb49ac98.
  The handler block loads `t9` from +0x20 of the 0x1040 record (0xb49ad00), sets `t0` to 0x3f800000
  (0xb49ad04) and jumps through `t9` at 0xb49ad08, with `mtc1 t0,$f15` in the delay slot.
  Inferred: 0x4000 is a write port taking this vertex as one command word and three integer words,
  because they are stored back to back; the command word here is the constant stored by the `sw` at
  0xb49acec.
  Unknown: the hardware block behind the address 0x4000; the bundle's mmio rows stop at the windows
  0x110000 and 0x120000.
  Unknown: what code follows the `jr t9` at 0xb49ad08, given that the field loaded at 0xb49ad00 is
  absent from the bundle.
  Evidence grade: inferred.
- `__glOdyim_Vertex3iv_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdadc380 (o32).
  Array form of the longer integer vertex guard: three integers are loaded from `a0` +0x0, +0x4 and +0x8
  (0xdadc380 to 0xdadc388), converted to single precision, and put through seven float branches against the
  records behind the words at absolute 0x1020 and 0x1024. The integers are then written to absolute 0x10000
  or the routine tail-jumps through a pointer in the second record. A 16-byte frame keeps `$f20` and
  `$f22`, saved at 0xdadc3a8 and 0xdadc3ac and reloaded on both exits.
  The first sum starts from the first record's +0x3c word and adds the converted values times its
  +0x30, +0x34 and +0x38 words; `$f20` holds it, and it is multiplied by the second record's old +0x8 word, scaled by its +0x4
  word (load at 0xdadc3c8), and the `swc1` at 0xdadc3f0 stores the sum over +0x8 of the second record.
  A negative product with the old +0x8 word sends the `bc1f` at 0xdadc408 to the exit block at 0xdadc50c (compare at 0xdadc400).
  A second sum from the first record's +0xc, +0x0, +0x4 and +0x8 words is compared with the scaled first
  sum in absolute value, and the `bc1t` at 0xdadc440 leaves for 0xdadc50c when the scaled first sum is
  smaller or the compare is unordered. The second sum plus the first sum times the second record's +0xc
  word is then checked: when negative, the `bc1f` at 0xdadc45c skips to 0xdadc474; otherwise it is compared
  with the second record's +0x18 word times the first sum and the `bc1t` at 0xdadc46c leaves when smaller or
  unordered. The pair then runs a second time for a third sum from the first record's +0x1c, +0x10, +0x14 and +0x18 words
  and the second record's +0x10 word: the `bc1t` at 0xdadc4ac, the `bc1f` at 0xdadc4c8 and the `bc1t` at
  0xdadc4d8.
  Passing all of them, the block at 0xdadc4e0 reloads `$f20` and `$f22`, sets `v0` to 0x10000 (0xdadc4f4),
  writes 0xffffffff8080cc02 with the `sw` at 0xdadc4f8 (0x8080 at 0xdadc4ec, 0xcc02 ORed in at 0xdadc4f0),
  then the integers at 0xdadc4fc and 0xdadc500, and the third in the delay slot (0xdadc508) of the
  `jr ra` at 0xdadc504, and returns 0x10000.
  At the exit block, `t9` comes from +0x20 of the second record (0xdadc518), puts the converted third value into
  `a2` as float bits, and sets `a3` to 0x3f800000 in the delay slot at 0xdadc524 of the `jr t9` at
  0xdadc520; `a0` keeps pointing at the caller's array.
  Unknown: what the `jr t9` at 0xdadc520 enters; the pointer at +0x20 of the second record is a run-time value that a capture would show.
  Unknown: which unit receives the four stores to absolute 0x10000; the linked rows do not cover it, so a mapping record is needed.
  Evidence grade: established.
- `__glOdyim_Vertex3iv_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad2600 (n32).
  Longer variant of the pointer-to-three-integers vertex fast path: it runs seven float checks instead of three before the direct write. The words at a0 +0, +4 and +8 are loaded into a4 to a6 and converted to floats in $f12 to $f14; the records are the ones behind the words at 0x1020 and 0x1024.
  Setup matches the shorter variants: $f8 is the word at +0x3c of the 0x1020 record plus the floats times +0x30, +0x34, +0x38, copied to $f10, stored by the `swc1` at 0xdad2658 over +0x8 of the 0x1024 record (read earlier at 0xdad2640), and scaled by the word at +0x4 of that record into $f8. Check one compares the absolute value of $f7 (the sum times the old +0x8 word) with $f7 at 0xdad2668, equal-or-unordered; the `bc1f` at 0xdad2670 leaves when that is false, meaning $f7 is negative and ordered. Check two forms +0xc plus the floats times +0x0, +0x4, +0x8 of the 0x1020 record, keeps it in $f11 and compares its absolute value with $f8; the `bc1t` at 0xdad269c leaves when $f8 is less or unordered.
  Checks three and four use more words of the 0x1024 record: $f4 becomes the word at +0xc of the 0x1024 record times $f10 plus $f11 (0xdad26a4). Check three (0xdad26ac) is the same absolute-value test applied to $f4, and its `bc1f` at 0xdad26b4 skips ahead to check five when $f4 is negative and ordered. Otherwise check four compares $f4 with the word at +0x18 of the 0x1024 record times $f10 (multiply in the delay slot at 0xdad26b8, compare at 0xdad26bc); the `bc1t` at 0xdad26c4 leaves when $f4 is less than it or unordered.
  Checks five to seven repeat the pattern with the next plane: +0x1c plus the floats times +0x10, +0x14, +0x18 from 0xdad26cc, kept in $f11 and compared at 0xdad26f0 with the `bc1t` at 0xdad26f8; then $f4 is the +0x10 word of the 0x1024 record times $f10 plus $f11 (0xdad2700), the absolute-value test at 0xdad2708 whose `bc1f` at 0xdad2710 jumps straight to the store block when $f4 is negative and ordered, and the compare against the +0x18 word times $f10 at 0xdad2718 whose `bc1t` at 0xdad2720 leaves when $f4 is less or unordered.
  Passing everything, the block at 0xdad2728 builds t0 = 0xffffffff8080cc02, sets v0 to 0x10000 (`lui` at 0xdad2730), stores t0 and then a4, a5 and a6 unchanged as words at that address (0xdad2734 to 0xdad2744, the last in the delay slot of the `jr ra` at 0xdad2740) and returns 0x10000. Each failed check goes to 0xdad2748, which reads t9 from +0x20 of the 0x1024 record, sets t0 to 0x3f800000, and `jr t9` at 0xdad2750 jumps with $f15 written from t0 and a0 to a3 unchanged, storing nothing.
  Unknown: the callee behind the `jr t9` at 0xdad2750; its address sits in the 0x1024 record at +0x20 and only a live run shows it.
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
- `__glOdyim_Vertex3iv_mag_line0` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49dc80 (n64).
  Checks an integer vertex of three 32-bit words against float bounds with two extra offset tests,
  then either writes a four-word packet to the fixed address 0x4000 and returns, or tail-jumps
  through a pointer.
  The three words at a0 (`lw` at 0xb49dc80, 0xb49dc84 and 0xb49dc88) are also turned into single-
  precision floats; the stored words are the integer originals.
  The doublewords at abs 0x1038 and 0x1040 (`ld` at 0xb49dca4 and 0xb49dca8) act as the two base
  pointers. The scalar w is the float at +0x3c of the first block plus the converted words times the
  floats at +0x30, +0x34 and +0x38. It is copied to $f10, and the `swc1` at 0xb49dcd8 saves w at
  +0x8 of the second block after the old float there was loaded at 0xb49dcc0.
  The `bc1f` at 0xb49dcf0 goes to the tail jump when the absolute value of the product of w and that
  old float is ordered and unequal to the product, which means the product is negative. The `bc1t`
  at 0xb49dd1c next jumps to the tail if the absolute value of w times the float at +0x4 of the
  second block is less than, or unordered with, the absolute value of the plane sum built from the
  float at +0xc and the converted words times the floats at +0x0, +0x4 and +0x8.
  That signed plane sum then goes through a multiply-add with the float at +0xc of the second block
  and w. If the result is negative (`bc1f` at 0xb49dd34), the next test is skipped; otherwise the
  `bc1t` at 0xb49dd44 jumps to the tail when the result is less than, or unordered with, the float
  at +0x18 of the second block scaled by w (multiply in the delay slot at 0xb49dd38).
  The second plane (floats at +0x10, +0x14, +0x18 and +0x1c of the first block) repeats the pair:
  the `bc1t` at 0xb49dd78 against the same bound, then the multiply-add with +0x10 of the second
  block, the skip on a negative result at the `bc1f` at 0xb49dd90 and the `bc1t` at 0xb49dda0
  against +0x18 scaled by w.
  With every test passed, the `sw` at 0xb49ddb0 writes the constant 0xffffffff8080cc02 (immediate
  0x8080 at 0xb49dda8, `ori` of 0xcc02 at 0xb49ddac) to 0x4000. The `sw` at 0xb49ddb4 and 0xb49ddb8
  store the first two integers back as they were and the delay slot of the `jr ra` at 0xb49ddbc
  writes the third; the value returned in v0 is the doubleword at 0x1038.
  The fall-back route loads t9 with the `ld` at 0xb49ddc4 from +0x20 of the block addressed by the
  doubleword at 0x1040 and jumps through the `jr t9` at 0xb49ddcc; the delay slot loads $f15 with
  0x3f800000.
  Unknown: the routine entered through the `jr t9` at 0xb49ddcc, because the pointer at +0x20 is
  read from memory the bundle does not resolve.
  Unknown: the contents of the blocks addressed by the doublewords at 0x1038 and 0x1040, because
  only the offsets above show how they are laid out.
  Evidence grade: established.
- `__glOdyim_Vertex3iv_mag` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad09c0 (n32).
  Fast path for one vertex passed by pointer as three 32-bit integers (a0 +0, +4, +8, loaded into a4 to a6 at 0xdad09c0 to 0xdad09c8). It converts them to single floats in $f12 to $f14, runs three float checks against the records addressed by the words at 0x1020 and 0x1024, and then either writes four words to 0x10000 and returns or tail-jumps through a pointer.
  The sum in $f8 is the word at +0x3c of the 0x1020 record plus the three floats times the words at +0x30, +0x34 and +0x38. $f7 is that sum times the word at +0x8 of the 0x1024 record, and $f8 is then multiplied by the word at +0x4 of that record. The `swc1` at 0xdad0a14 stores the sum, before the second multiply, over +0x8 of the 0x1024 record. Check one is the `bc1f` at 0xdad0a2c, which leaves for the jump when the compare at 0xdad0a24 (absolute value of $f7 against $f7, equal-or-unordered) is false, meaning $f7 is negative and ordered.
  Checks two and three each form another weighted sum plus a constant term and compare its absolute value with the absolute value of $f8, the scaled sum. For check two the terms are +0xc plus the floats times +0x0, +0x4 and +0x8 of the 0x1020 record (compare at 0xdad0a4c); for check three they are +0x1c plus the floats times +0x10, +0x14 and +0x18 (compare at 0xdad0a74). The `bc1t` at 0xdad0a54 and the one at 0xdad0a7c leave for the jump when $f8 is less than that value or unordered.
  If no check leaves, the `ori` at 0xdad0a80 (delay slot of the last `bc1t`) has made t0 0xffffffff8080cc02, v0 is set to 0x10000 by the `lui` at 0xdad0a84, and four word stores follow at that address: t0 at 0xdad0a88, then a4, a5 and a6 unchanged, the last in the delay slot of the `jr ra` at 0xdad0a94, which returns v0 = 0x10000. The exit at 0xdad0a9c reads t9 from +0x20 of the 0x1024 record, sets t0 to 0x3f800000, and `jr t9` at 0xdad0aa4 jumps with $f15 loaded from t0 in the delay slot, a0 to a3 as received and a4 to a6 holding the three words; it stores nothing.
  Inferred: the three checks gate the direct write, since each failed one jumps to the +0x20 pointer and the stores sit only on the all-passed path.
  Unknown: the target of the `jr t9` at 0xdad0aa4, which lies in the word at +0x20 of the 0x1024 record; reading that word in a live run settles it.
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
- `__glOdyim_Vertex3iv_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbafa80 (n32).
  Takes a pointer to three 32-bit integers in a0 (words at +0, +4, +8, loaded into a4 to a6 at 0xdbafa80 to 0xdbafa88), converts them to single floats in $f12 to $f14, tests the resulting point against the records behind the words at 0x1020 and 0x1024, and either writes four words to 0x4000 and returns or tail-jumps through a pointer.
  The sum in $f8 is the word at +0x3c of the 0x1020 record plus the floats times +0x30, +0x34 and +0x38. The `swc1` at 0xdbafad4 writes that sum to +0x8 of the 0x1024 record, after +0x8 was read at 0xdbafac0 and multiplied by the sum into $f7. The sum is then multiplied by the word at +0x4 of the 0x1024 record into $f8, and both $f7 and $f8 are reduced to absolute values.
  Check one, the `bc1f` at 0xdbafaec, leaves for the jump when $f7 is negative and ordered (the compare at 0xdbafae4 of the absolute value against the value is false). Checks two and three compute a second and third weighted sum and compare their absolute values with $f8: +0xc plus the floats times +0x0, +0x4, +0x8 of the 0x1020 record, compared at 0xdbafb0c; then +0x1c plus the floats times +0x10, +0x14, +0x18, compared at 0xdbafb34. The `bc1t` at 0xdbafb14 and the one at 0xdbafb3c leave when $f8 is less than that value or unordered.
  Passing all three, the block at 0xdbafb44 stores t0 (0xffffffff8080cc02 after the `ori` in the delay slot at 0xdbafb40), then the three loaded words unchanged, as word stores to 0x4000, the last in the delay slot of the `jr ra` at 0xdbafb50, and returns the word loaded from 0x1020 in v0. The exit at 0xdbafb58 reads t9 from +0x20 of the 0x1024 record, sets t0 to 0x3f800000, and `jr t9` at 0xdbafb60 jumps with $f15 written from t0, a0 to a3 unchanged and a4 to a6 holding the loaded words.
  Inferred: the direct write at 0x4000 is the accepted case, because only the path on which all three checks pass reaches the stores.
  Unknown: where the `jr t9` at 0xdbafb60 lands; the pointer is read from +0x20 of the 0x1024 record, which a trace of a running system would show.
  Evidence grade: inferred.
- `__glOdyim_Vertex3iv_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49c0c0 (n64).
  Tests a vertex given as three 32-bit integers against float bounds, then either writes a four-word
  packet to the fixed address 0x4000 and returns, or tail-jumps through a pointer.
  The three words at a0 (`lw` at 0xb49c0c0, 0xb49c0c4 and 0xb49c0c8) are also converted to single
  precision; the integer originals are what get stored.
  The doublewords at abs 0x1038 and 0x1040 (`ld` at 0xb49c0e4 and 0xb49c0e8) serve as base pointers.
  A scalar w is the float at +0x3c of the first block plus the converted words times the floats at
  +0x30, +0x34 and +0x38 (loads at 0xb49c0ec to 0xb49c0f8), and the `swc1` at 0xb49c114 writes w to
  +0x8 of the second block after the old float there was loaded at 0xb49c100.
  The `bc1f` at 0xb49c12c leaves for the tail jump when the absolute value of the product of w and
  that old +0x8 float is ordered and unequal to the product, that is, when the product is negative.
  The bound is the absolute value of w times the float at +0x4 of the second block (loaded at
  0xb49c0fc). The `bc1t` at 0xb49c154 and the one at 0xb49c17c each jump to the tail when that bound
  is less than, or unordered with, the absolute value of a plane sum: the float at +0xc plus the
  converted words times the floats at +0x0, +0x4 and +0x8 for the first, and the float at +0x1c plus
  the converted words times the floats at +0x10, +0x14 and +0x18 for the second.
  When all three tests fall through, the `sw` at 0xb49c184 writes the constant 0xffffffff8080cc02
  (immediate 0x8080 at 0xb49c178, `ori` of 0xcc02 at 0xb49c180) to 0x4000. The `sw` at 0xb49c188 and
  0xb49c18c write the first two integers back unchanged and the delay slot of the `jr ra` at
  0xb49c190 writes the third; v0 on return is the doubleword at 0x1038.
  The tail route loads t9 with the `ld` at 0xb49c198 from +0x20 of the block addressed by the
  doubleword at 0x1040 and jumps through the `jr t9` at 0xb49c1a0 with a0 to a3 as at entry and a4
  to a6 holding the three integers; its delay slot loads $f15 with 0x3f800000.
  Unknown: the routine reached through the `jr t9` at 0xb49c1a0, because the pointer at +0x20 is
  read from memory the bundle does not resolve.
  Unknown: the content of the blocks addressed by the doublewords at 0x1038 and 0x1040, because
  their layout is visible only through the offsets above.
  Evidence grade: established.
- `__glOdyim_Vertex3iv_smallw` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231a400 (n64).
  Screens an integer vertex of three 32-bit words against two float bounds, then either writes a
  four-word packet to the fixed address 0x10000 and returns, or tail-jumps through a pointer.
  The three words at a0 (`lw` at 0x231a400, 0x231a404 and 0x231a408) are converted as well to single
  precision; the packet carries the integer originals.
  The doublewords at abs 0x1038 and 0x1040 (`ld` at 0x231a424 and 0x231a428) supply base pointers.
  Let w be the float at +0x3c of the first block plus the converted words times the floats at +0x30,
  +0x34 and +0x38 (loads at 0x231a42c to 0x231a438). The `swc1` at 0x231a454 stores w into +0x8 of
  the second block after the old float there was loaded at 0x231a440; the +0x0 float of the second
  block comes from the load at 0x231a43c.
  The `bc1f` at 0x231a464 branches to the tail jump when the absolute value of the product of w and
  the old +0x8 float is ordered and unequal to the product, so the jump happens for a negative
  product. The comparison placed in its delay slot at 0x231a468 sets the flag for the `bc1t` at
  0x231a470, which jumps to the tail when the absolute value of w is less than, or unordered with,
  the float from +0x0 of the second block.
  With both tests passed, the `lui` at 0x231a478 sets v0 to 0x10000 and the `sw` at 0x231a47c writes
  the constant 0xffffffff8080cc02 there (immediate 0x8080 at 0x231a46c, `ori` of 0xcc02 in the delay
  slot at 0x231a474). The `sw` at 0x231a480 and 0x231a484 put the first two integers out unchanged
  and the delay slot of the `jr ra` at 0x231a488 writes the third; the returned v0 is 0x10000.
  Leaving by the tail, t9 comes from the `ld` at 0x231a490 from +0x20 of the block addressed by the
  doubleword at 0x1040 and jumps through the `jr t9` at 0x231a498; $f15 is set to 0x3f800000 in the
  delay slot.
  Unknown: the code reached through the `jr t9` at 0x231a498, because the pointer at +0x20 is read
  from memory the bundle does not resolve.
  Unknown: the data of the blocks addressed by the doublewords at 0x1038 and 0x1040, because the
  offsets above are the only view of their layout.
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
- `__glOdyim_Vertex3iv_smallw` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49ad40 (n64).
  Runs bound checks on an integer vertex of three 32-bit words against two float bounds, then either
  writes a four-word packet to the fixed address 0x4000 and returns, or tail-jumps through a
  pointer.
  The three words at a0 (`lw` at 0xb49ad40, 0xb49ad44 and 0xb49ad48) also get a single-precision
  copy; the integer originals go to the packet.
  The doublewords at abs 0x1038 and 0x1040 (`ld` at 0xb49ad64 and 0xb49ad68) become base pointers. A
  value w is the float at +0x3c of the first block plus the converted words times the floats at
  +0x30, +0x34 and +0x38 (loads at 0xb49ad6c to 0xb49ad78). The `swc1` at 0xb49ad94 puts w at +0x8
  of the second block after the old float there was loaded at 0xb49ad80; the second block
  contributes its +0x0 float through the load at 0xb49ad7c.
  The `bc1f` at 0xb49ada4 exits to the tail jump when the absolute value of the product of w and the
  old +0x8 float is ordered and unequal to the product, in other words for a negative product. The
  `c.ult.s` in its delay slot at 0xb49ada8 sets the flag for the `bc1t` at 0xb49adb0, which jumps to
  the tail when the absolute value of w is less than, or unordered with, the float from +0x0 of the
  second block.
  With both tests passed, the `sw` at 0xb49adb8 writes the constant 0xffffffff8080cc02 (immediate
  0x8080 at 0xb49adac, `ori` of 0xcc02 in the delay slot at 0xb49adb4) to 0x4000. The `sw` at
  0xb49adbc and 0xb49adc0 emit the first two integers untouched and the delay slot of the `jr ra` at
  0xb49adc4 writes the third; v0 comes back as the doubleword at 0x1038.
  On the tail path t9 is read by the `ld` at 0xb49adcc from +0x20 of the block addressed by the
  doubleword at 0x1040 and jumps through the `jr t9` at 0xb49add4; the delay slot sets $f15 to
  0x3f800000.
  Unknown: the destination of the `jr t9` at 0xb49add4, because the pointer at +0x20 is read from
  memory the bundle does not resolve.
  Unknown: the fields of the blocks addressed by the doublewords at 0x1038 and 0x1040, because the
  layout appears only as the offsets above.
  Evidence grade: established.
- `__glOdyim_Vertex3sv_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdadc700 (o32).
  Receives a pointer to three halfword coordinates (`lh` at 0xdadc700, 0xdadc704 and 0xdadc708, from +0x0, +0x2 and +0x4 of a0), turns each into a float, runs them through a longer series of range tests than the plain variant, and either writes them as words to absolute 0x10000 or transfers control to another routine.
  Two double-precision floating-point registers are saved in a 16-byte frame (`sdc1` at 0xdadc728 and 0xdadc72c) and restores them on both exits (0xdadc860 to 0xdadc864 on the store path, 0xdadc88c to 0xdadc890 on the jump path).
  It reads record pointers from absolute 0x1020 and 0x1024 (0xdadc730, 0xdadc734); its +0x30, +0x34, +0x38 and +0x3c floats come from the first and its +0x4 and +0x8 floats from the second.
  Inferred: the `swc1` at 0xdadc770 stores into +0x8 of the second record the +0x3c float plus the three converted coordinates, each multiplied by the +0x30, +0x34 or +0x38 float, because only multiply and add steps on those registers sit between the reads and the store; $f20 keeps a copy of the sum.
  That sum is multiplied by the old +0x8 float, and the `bc1f` at 0xdadc788 transfers control to the exit block at 0xdadc88c when the product's absolute value differs from the product (`c.ueq.s` at 0xdadc780), meaning the product is negative.
  Otherwise two more sums are formed from the first record (+0x0, +0x4, +0x8 plus +0xc, kept in $f22, then +0x10, +0x14, +0x18 plus +0x1c), and after each the `bc1t` at 0xdadc7c0 and at 0xdadc82c transfers control to the exit block when the first sum's scaled absolute value (the +0x4 float of the second record) is less than the new absolute sum or the compare is unordered.
  After each of those, the routine multiplies the $f20 sum by a float from +0xc (first pass) or +0x10 (second pass) of the second record, plus the newest sum; the `bc1f` at 0xdadc7dc and 0xdadc848 skip the final check when that result is negative, and otherwise the `bc1t` at 0xdadc7ec and 0xdadc858 jump to the exit block when the result is less than the +0x18 float of the second record times the $f20 sum, or unordered.
  When no branch is taken, v0 is set to 0x10000 (0xdadc874) and the `sw` at 0xdadc878 writes the constant 0xffffffff8080cc02 (built at 0xdadc86c and 0xdadc870) to that address.
  Three more `sw` instructions (0xdadc87c, 0xdadc880 and the delay slot of the return at 0xdadc884) store the three coordinates as the loaded halfwords, sign-extended, to the same address, and the return value is 0x10000.
  The exit block reads a word from +0x20 of the second record into t9 (0xdadc898) and transfers control to it with a0 and a1 as received, a2 set from the single-precision copy of the third coordinate, and a3 set by the `lui` at 0xdadc8a4 to 0x3f800000.
  Unknown: the routine the `jr t9` at 0xdadc8a0 lands in, which the value stored at +0x20 of the record behind absolute 0x1024 settles.
  Evidence grade: inferred.
- `__glOdyim_Vertex3sv_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad2900 (n32).
  Seven-check fast path for a vertex given by pointer as three signed 16-bit values. The `lh` loads at 0xdad2900, 0xdad2904 and 0xdad2908 read a0 +0, +2 and +4 into a4 to a6; each is then moved to the float unit and converted to a single float in $f12 to $f14. The routine reads the 0x1020 and 0x1024 words as record pointers and, if every check passes, writes four words to 0x10000; otherwise it jumps through a pointer.
  Step by step: $f8 gets the +0x3c word of the 0x1020 record plus x, y and z times its +0x30, +0x34 and +0x38 words. A copy goes to $f10, the sum itself also lands in the +0x8 slot of the 0x1024 record through the `swc1` at 0xdad2958 (that slot having been read into $f7 beforehand at 0xdad2940), and $f8 is rescaled by the +0x4 word of the 0x1024 record. At 0xdad2968 the absolute value of $f7 (the sum times the old +0x8 word) is compared with $f7, and the `bc1f` at 0xdad2970 exits when they differ, which is the case for a negative ordered $f7.
  Check two sums +0xc with the coordinates times +0x0, +0x4 and +0x8 of the 0x1020 record into $f9, retains the signed sum in $f11, and exits at the `bc1t` at 0xdad299c if $f8 is below the absolute value of $f9 or unordered. Then $f4 = (+0xc word of the 0x1024 record) times $f10 plus $f11; a negative ordered result takes the `bc1f` at 0xdad29b4 over the next comparison, while any other result is compared at 0xdad29bc with the +0x18 word times $f10 (scaled in the delay slot at 0xdad29b8) and exits at the `bc1t` at 0xdad29c4 when less or unordered.
  Checks five to seven repeat this with +0x1c as the constant and +0x10, +0x14 and +0x18 as the multipliers, compared at 0xdad29f0 (exit at the `bc1t` at 0xdad29f8), then $f4 from the +0x10 word of the 0x1024 record at 0xdad2a00, where a negative ordered value makes the `bc1f` at 0xdad2a10 jump directly to the write block and anything else goes through the last compare at 0xdad2a18 (exit at the `bc1t` at 0xdad2a20).
  The write block at 0xdad2a28 forms t0 = 0xffffffff8080cc02, puts 0x10000 in v0 (`lui` at 0xdad2a30), and stores t0 and the three sign-extended values as words there (0xdad2a34 to 0xdad2a44, the last in the delay slot of the `jr ra` at 0xdad2a40); it returns 0x10000. The exit at 0xdad2a48 loads t9 from +0x20 of the 0x1024 record, sets t0 to 0x3f800000, and `jr t9` at 0xdad2a50 jumps with $f15 written from t0 in its delay slot, a0 to a3 untouched and the three values still in a4 to a6; nothing is stored on that route.
  Unknown: the handler reached by the `jr t9` at 0xdad2a50, whose entry is the word at +0x20 of the 0x1024 record; a breakpoint there on a running system would reveal it.
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
- `__glOdyim_Vertex3sv_mag` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdada380 (o32).
  Gets a pointer to three halfword coordinates (`lh` at 0xdada380, 0xdada384 and 0xdada388, from +0x0, +0x2 and +0x4 of a0), casts each to float, runs them through a clip-style test against two records, and either writes them as words to absolute 0x10000 or goes to another routine.
  It pulls record pointers from absolute 0x1020 and 0x1024 (0xdada3a4, 0xdada3a8); the first record supplies floats at +0x30, +0x34, +0x38 and +0x3c, and the second supplies floats at +0x4 and +0x8.
  Inferred: the `swc1` at 0xdada3e0 stores into +0x8 of the second record the +0x3c float plus the three converted coordinates, each multiplied by the +0x30, +0x34 or +0x38 float, because the instructions between the pulls and that store are multiply and add steps on those registers.
  The same sum is multiplied by the old +0x8 float and its absolute value is compared for equality with the product (`c.ueq.s` at 0xdada3f0); the `bc1f` at 0xdada3f8 goes to the shared exit at 0xdada480 when they differ, which means the product is negative.
  Otherwise the routine forms two more sums from the first record, using +0x0, +0x4, +0x8 and +0xc, then +0x10, +0x14, +0x18 and +0x1c, in the same way; each time the absolute value of the new sum is compared with the absolute value of the first sum times the +0x4 float of the second record (`c.ult.s` at 0xdada424 and 0xdada458).
  The `bc1t` at 0xdada42c and at 0xdada460 goes to the shared exit when the first sum's scaled absolute value is less than the new one or the compare is unordered.
  When all three branches fall through, v0 is set to 0x10000 (0xdada468) and the `sw` at 0xdada46c writes the constant 0xffffffff8080cc02 (built at 0xdada45c and 0xdada464) to that address, then the `sw` at 0xdada470 writes the first coordinate, the `sw` at 0xdada474 the second, and the `sw` at 0xdada47c, in the delay slot of the return at 0xdada478, the third, each the sign-extended halfword as loaded, all to the same address; the return value is 0x10000.
  The shared exit pulls a word from +0x20 of the second record into t9 (0xdada480) and goes to it with a0 and a1 as received, a2 set from the single-precision copy of the third coordinate, and a3 set by the `lui` at 0xdada48c to 0x3f800000.
  Unknown: the routine the `jr t9` at 0xdada488 arrives at, which the value stored at +0x20 of the record behind absolute 0x1024 settles.
  Evidence grade: inferred.
- `__glOdyim_Vertex3sv_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49c2c0 (n64).
  Filters a vertex of three signed 16-bit values against float bounds, then either writes a four-
  word packet to the fixed address 0x4000 and returns, or tail-jumps through a pointer.
  The halfwords at a0 (`lh` at 0xb49c2c0, 0xb49c2c4 and 0xb49c2c8, sign-extended) are additionally
  narrowed or converted to floats; each is stored later as a full word.
  The doublewords at abs 0x1038 and 0x1040 (`ld` at 0xb49c2e4 and 0xb49c2e8) are taken as base
  pointers. The value w is the float at +0x3c of the first block plus the converted values times the
  floats at +0x30, +0x34 and +0x38 (loads at 0xb49c2ec to 0xb49c2f8), and the `swc1` at 0xb49c314
  deposits w in +0x8 of the second block after the old float there was loaded at 0xb49c300.
  The `bc1f` at 0xb49c32c sends control to the tail jump when the absolute value of the product of w
  and that old float is ordered and unequal to the product, that is, for a product below zero.
  The reference value is the absolute value of w times the float at +0x4 of the second block (loaded
  at 0xb49c2fc). The `bc1t` at 0xb49c354 and the one at 0xb49c37c both divert to the tail if that
  bound is below, or unordered with, the absolute value of a plane sum: the float at +0xc plus the
  converted values times the floats at +0x0, +0x4 and +0x8 for the first, and the float at +0x1c
  plus the converted values times the floats at +0x10, +0x14 and +0x18 for the second.
  When all three tests fall through, the `sw` at 0xb49c384 writes the constant 0xffffffff8080cc02 to
  0x4000 (immediate 0x8080 at 0xb49c378, `ori` of 0xcc02 at 0xb49c380, which runs on both paths of
  the branch at 0xb49c37c). The `sw` at 0xb49c388 and 0xb49c38c then write the first two sign-
  extended values as words and the delay slot of the `jr ra` at 0xb49c390 writes the third; the
  return leaves v0 holding the doubleword at 0x1038.
  The other route fetches t9 with the `ld` at 0xb49c398 from +0x20 of the block addressed by the
  doubleword at 0x1040 and jumps through the `jr t9` at 0xb49c3a0; in the delay slot $f15 receives
  0x3f800000.
  Unknown: the target reached by the `jr t9` at 0xb49c3a0, because the pointer at +0x20 is read from
  memory the bundle does not resolve.
  Unknown: the stored values of the blocks addressed by the doublewords at 0x1038 and 0x1040,
  because nothing but the offsets above reveals the layout.
  Evidence grade: established.
- `__glOdyim_Vertex3sv_smallw` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad8cc0 (o32).
  Gets a pointer to three halfword coordinates (`lh` at 0xdad8cc0, 0xdad8cc4 and 0xdad8cc8, from +0x0, +0x2 and +0x4 of a0), converts each to single precision, and writes them as words to absolute 0x10000 behind a header word if a clip-style test passes; otherwise a routine picked from the second record gets control.
  It loads record pointers from absolute 0x1020 and 0x1024 (0xdad8ce4, 0xdad8ce8) and reads four floats from the first record at +0x30, +0x34, +0x38 and +0x3c and two from the second at +0x0 and +0x8.
  Inferred: the `swc1` at 0xdad8d20 stores into +0x8 of the second record the +0x3c float plus the three converted coordinates, each multiplied by the +0x30, +0x34 or +0x38 float, because only multiply and add steps on those registers sit between the loads and the store.
  That sum is multiplied by the old +0x8 float, and the `bc1f` at 0xdad8d30 jumps to the exit block at 0xdad8d5c when the product's absolute value differs from the product (`c.ueq.s` at 0xdad8d28), meaning the product is negative.
  Otherwise the delay slot at 0xdad8d34 compares the absolute value of the sum with the float loaded from +0x0 of the second record (`c.ult.s`), and the `bc1t` at 0xdad8d3c jumps to the exit block when the absolute sum is less than that float or the compare is unordered.
  When both branches fall through, v0 is set to 0x10000 (0xdad8d44) and the `sw` at 0xdad8d48 writes the constant 0xffffffff8080cc02 (built at 0xdad8d38 and 0xdad8d40) to that address.
  Three more `sw` instructions (0xdad8d4c, 0xdad8d50 and the delay slot of the return at 0xdad8d54) store the three coordinates as the loaded halfwords, sign-extended, to the same address, and the routine returns 0x10000.
  The exit block loads a word from +0x20 of the second record into t9 (0xdad8d5c) and jumps to it with a0 and a1 as received, a2 set from the single-precision copy of the third coordinate, and a3 set by the `lui` at 0xdad8d68 to 0x3f800000.
  Unknown: the routine the `jr t9` at 0xdad8d64 reaches, which the value stored at +0x20 of the record behind absolute 0x1024 answers.
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
- `__glOdyim_Vertex4dv_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad2c00 (n32).
  Seven-check version of the four-doubles vertex fast path. The doubles at a0 +0x0, +0x8, +0x10 and +0x18 are narrowed to single floats in $f12 to $f15, and the point is tested against the records behind the words at 0x1020 and 0x1024; passing all seven writes five words to 0x10000, failing any goes to a pointer jump.
  The first sum is $f12 to $f15 times the words at +0x30, +0x34, +0x38 and +0x3c of the 0x1020 record. It is copied to $f10, multiplied by the +0x8 word of the 0x1024 record into $f7, and written by the `swc1` at 0xdad2c58 over that +0x8 word; times the +0x4 word it becomes $f8. Check one: the `bc1f` at 0xdad2c70 leaves when the absolute value of $f7 differs from $f7 (compare at 0xdad2c68), so when $f7 is negative and ordered.
  Check two sums the floats times +0x0, +0x4, +0x8 and +0xc of the 0x1020 record into $f9, saves it in $f11, and the `bc1t` at 0xdad2ca0 leaves when $f8 is less than the absolute value of $f9 or unordered (compare at 0xdad2c98). Checks three and four use the 0x1024 record: $f4 is its +0xc word times $f10 plus $f11 (0xdad2ca8); the `bc1f` at 0xdad2cb8 skips to check five when the absolute value of $f4 differs from $f4 with both ordered, otherwise the `bc1t` at 0xdad2cc8 leaves when $f4 is less than the +0x18 word times $f10 (multiply in the delay slot at 0xdad2cbc, compare at 0xdad2cc0) or unordered.
  Checks five to seven repeat this for the next plane: the floats times +0x10 to +0x1c of the 0x1020 record, kept in $f11 and compared with $f8 at 0xdad2cf8 (leaves at the `bc1t` at 0xdad2d00); then $f4 is the +0x10 word of the 0x1024 record times $f10 plus $f11 (0xdad2d08), a negative ordered $f4 sends the `bc1f` at 0xdad2d18 straight to the store block, and otherwise the compare at 0xdad2d20 against the +0x18 word times $f10 leaves at the `bc1t` at 0xdad2d28 when less or unordered.
  The store block at 0xdad2d30 makes t0 = 0xffffffff8080d005, sets v0 to 0x10000 (0xdad2d38), stores t0 as a word, then $f12, $f13, $f14 and $f15 with `swc1`, the last in the delay slot of the `jr ra` at 0xdad2d4c, and returns 0x10000. The failure exit at 0xdad2d54 loads t9 from +0x20 of the 0x1024 record and `jr t9` at 0xdad2d58 jumps with a0 to a3 as received.
  Unknown: the code the `jr t9` at 0xdad2d58 reaches, since its pointer is the +0x20 word of the 0x1024 record, set at run time.
  Evidence grade: established.
- `__glOdyim_Vertex4dv_mag` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad0dc0 (n32).
  Takes a pointer in a0 to four doubles (+0x0, +0x8, +0x10, +0x18), narrows each to a single float in $f12 to $f15, checks the point against the records behind the words at 0x1020 and 0x1024, and then either writes five words to 0x10000 or jumps through a pointer.
  The sum in $f8 is $f12 to $f15 times the words at +0x30, +0x34, +0x38 and +0x3c of the 0x1020 record. After the +0x8 word of the 0x1024 record is read at 0xdad0e0c, the sum is multiplied by it into $f7 and the `swc1` at 0xdad0e14 replaces that word with the sum; and the sum times the +0x4 word becomes $f8. Absolute values of $f7 and $f8 are taken next. The `bc1f` at 0xdad0e2c leaves for the jump when the compare at 0xdad0e24 of that absolute value with $f7 is false, i.e. when $f7 is negative and ordered.
  Next two sums: the four floats times +0x0, +0x4, +0x8 and +0xc of the 0x1020 record (compare with $f8 at 0xdad0e50), then times +0x10, +0x14, +0x18 and +0x1c (compare at 0xdad0e7c). The `bc1t` at 0xdad0e58 and at 0xdad0e84 jump out when $f8 is less than the sum's absolute value or unordered.
  On the pass path, t0 holds 0xffffffff8080d005 (the `ori` at 0xdad0e88 sits in the delay slot of the second `bc1t`), the `lui` at 0xdad0e8c sets v0 to 0x10000, and the stores follow: `sw` of t0 at 0xdad0e90, then `swc1` of $f12, $f13, $f14 and $f15, the last in the delay slot of the `jr ra` at 0xdad0ea0, which returns v0 = 0x10000. On the other path 0xdad0ea8 loads t9 from +0x20 of the 0x1024 record and `jr t9` at 0xdad0eac transfers with a0 to a3 as received and an empty delay slot.
  Unknown: the routine that `jr t9` at 0xdad0eac enters; t9 is read from the 0x1024 record at +0x20, a word only a running system fills in.
  Evidence grade: established.
- `__glOdyim_Vertex4dv_mag` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231bb80 (n64).
  Gates a vertex given as four doubles against float bounds, then either writes a five-word packet
  to the fixed address 0x10000 and returns, or tail-jumps through a pointer.
  The four doubles at a0, +0x0, +0x8, +0x10 and +0x18 (`ldc1` at 0x231bb80, 0x231bb88, 0x231bb90 and
  0x231bb98), are narrowed to single precision in $f12 to $f15, so the packet carries floats and not
  the original doubles.
  The doublewords at abs 0x1038 and 0x1040 (`ld` at 0x231bba0 and 0x231bba4) are kept as base
  pointers. The number w is the four narrowed values times the floats at +0x30, +0x34, +0x38 and
  +0x3c of the first block (loads at 0x231bba8 to 0x231bbb4), and the `swc1` at 0x231bbd4 records w
  at +0x8 of the second block after the old float there was loaded at 0x231bbcc.
  The `bc1f` at 0x231bbec jumps out to the tail when the absolute value of the product of w and that
  old float is ordered and unequal to the product, which is the case of a negative product.
  The cutoff is the absolute value of the float at +0x4 of the second block (loaded at 0x231bbb8)
  times w. The `bc1t` at 0x231bc18 and the one at 0x231bc44 each exit to the tail when that bound is
  less than, or unordered with, the absolute value of a plane sum: the four values times the floats
  at +0x0, +0x4, +0x8 and +0xc for the first, and times the floats at +0x10, +0x14, +0x18 and +0x1c
  for the second.
  With every test passed, the `lui` at 0x231bc4c sets v0 to 0x10000 and the `sw` at 0x231bc50 writes
  the constant 0xffffffff8080d005 there (immediate 0x8080 at 0x231bc40, `ori` of 0xd005 in the delay
  slot at 0x231bc48). The `swc1` at 0x231bc54, 0x231bc58, 0x231bc5c and 0x231bc64 then write the
  four floats; the last write fills the delay slot of the `jr ra` at 0x231bc60, and the returned v0
  is 0x10000.
  The jump route reads t9 with the `ld` at 0x231bc68 from +0x20 of the block addressed by the
  doubleword at 0x1040 and jumps through the `jr t9` at 0x231bc6c with a0 to a3 as at entry.
  Unknown: the callee entered by the `jr t9` at 0x231bc6c, because the pointer at +0x20 is read from
  memory the bundle does not resolve.
  Unknown: the words of the blocks addressed by the doublewords at 0x1038 and 0x1040, because the
  offsets above are all the bundle gives of the layout.
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
- `__glOdyim_Vertex4dv_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbafe80 (n32).
  Fast path for one four-component vertex passed by pointer as double-precision values: double loads (`ldc1`) each followed by a narrowing convert turn the doubles at a0 +0x0, +0x8, +0x10 and +0x18 into single floats in $f12 to $f15. It then runs three float checks against the records addressed by the words at 0x1020 and 0x1024, and either stores five words to the absolute address 0x4000 and returns or tail-jumps through a pointer.
  The first value, $f8, is the four floats times the words at +0x30, +0x34, +0x38 and +0x3c of the 0x1020 record, summed (one multiply, then three multiply-adds). $f7 becomes that sum times the word at +0x8 of the 0x1024 record, reloaded at 0xdbafecc, and the `swc1` at 0xdbafed4 writes the sum itself over that +0x8 word. $f8 is then rescaled by the word at +0x4 of the 0x1024 record. Both $f7 and $f8 are reduced to absolute values; the `bc1f` at 0xdbafeec leaves for the jump when the absolute value of $f7 differs from $f7 with both ordered, which means $f7 is negative.
  Two more sums follow, each four floats times four consecutive words of the 0x1020 record, taken in absolute value and compared with $f8: +0x0 to +0xc (compare at 0xdbaff10) and +0x10 to +0x1c (compare at 0xdbaff3c). The `bc1t` at 0xdbaff18 and the one at 0xdbaff44 leave for the jump when $f8 is less than the sum or unordered.
  If all three pass, the `ori` in the delay slot at 0xdbaff48 has made t0 0xffffffff8080d005, and the block at 0xdbaff4c stores t0 as a word to the absolute address 0x4000, then the single floats $f12, $f13, $f14 and $f15 with `swc1` (the last in the delay slot of the `jr ra` at 0xdbaff5c); v0 returns the word loaded from 0x1020. The exit at 0xdbaff64 reads t9 from +0x20 of the 0x1024 record and `jr t9` at 0xdbaff68 jumps with a0 to a3 unchanged and a `nop` in the delay slot.
  Inferred: the direct write handles vertices that pass every check, since the stores occur only after the last check falls through.
  Unknown: the destination of the `jr t9` at 0xdbaff68, taken from +0x20 of the 0x1024 record; a stop at that instruction in a live run would show it.
  Unknown: the device-side result of the five stores to absolute address 0x4000; no linked row names that address (the rows start at 0x110000), so a map of the low addresses would settle it.
  Evidence grade: inferred.
- `__glOdyim_Vertex4f_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdadcc40 (o32).
  Longer-test form of the four-coordinate float vertex path: f12 and f14 arrive in registers, the other two coordinates arrive as bits in a2 and a3 and are moved into f0 and f2 first, and the outcome is a post to absolute 0x10000 or a tail jump.
  Two double-precision registers are saved in the 16-byte frame by `sdc1` at 0xdadcc4c and 0xdadcc50, and `ldc1` restores them at 0xdadcd90 (post path) and 0xdadcdc0 (tail path).
  After loading record pointers from absolute 0x1020 and 0x1024 (0xdadcc54, 0xdadcc58), it forms the weighted sum of the four coordinates from the first record's +0x30, +0x34, +0x38 and +0x3c floats, keeps a copy in $f20 and stores it to +0x8 of the second record with the `swc1` at 0xdadcc98.
  The `bc1f` at 0xdadccb0 jumps to the tail when the sum times the old +0x8 float has a different absolute value from itself, a negative product.
  Two more sums, from the first record's +0x0 to +0xc and +0x10 to +0x1c floats, face the first sum scaled by the second record's +0x4 float, and the `bc1t` at 0xdadccec and 0xdadcd5c jump to the tail if the scaled value is smaller or unordered.
  A second kind of test follows each, built from $f20, the second record's +0xc then +0x10 float and the newest sum: the `bc1f` at 0xdadcd08 and 0xdadcd78 skip it for negative results, and the `bc1t` at 0xdadcd18 and 0xdadcd88 jump to the tail when the result is below the +0x18 float times $f20 or unordered.
  The post path sets v0 to 0x10000 (0xdadcda4), writes the header 0xffffffff8080d005 (built at 0xdadcd9c and 0xdadcda0) with the `sw` at 0xdadcda8, then stores f12, f14, f0 and f2 with `swc1` at 0xdadcdac, 0xdadcdb0, 0xdadcdb4 and 0xdadcdbc (delay slot of the return at 0xdadcdb8) and returns 0x10000.
  The tail path fetches +0x20 of the second record into t9 (0xdadcdcc) and the `jr t9` at 0xdadcdd4 jumps there with a0 and a1 unchanged and a2 and a3 refilled from f0 and f2.
  Unknown: the destination of the final `jr t9`, fixed by the pointer found at +0x20 behind absolute 0x1024.
  Evidence grade: inferred.
- `__glOdyim_Vertex4f_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad2d80 (n32).
  Seven-check fast path for a vertex whose four floats are already in $f12 to $f15 when the routine starts, so it loads nothing from a0. It reads the words at 0x1020 and 0x1024 as record pointers; if every check passes it writes five words to 0x10000 and returns, and if any fails it jumps through a pointer.
  The opening dot product is $f12 to $f15 against the +0x30, +0x34, +0x38 and +0x3c words of the 0x1020 record. Its result is copied to $f10 (that copy happens after the +0x8 word of the 0x1024 record is loaded at 0xdad2dac), then multiplied by that +0x8 word, written to the +0x8 slot by the `swc1` at 0xdad2db8, and multiplied by the +0x4 word to give the reference value in $f8. Absolute values are taken of both products. The `bc1f` at 0xdad2dd0 exits when the compare at 0xdad2dc8 finds the absolute value of the first product different from it, which means that product is negative and ordered.
  Check two: the dot product of $f12 to $f15 with the +0x0 to +0xc words of the 0x1020 record goes to $f9, the signed sum is also held in $f11, and the `bc1t` at 0xdad2e00 exits if the reference value is less than its absolute value or unordered. Checks three and four: $f4 = (+0xc word of the 0x1024 record) times $f10 plus $f11 at 0xdad2e08; if it is negative and ordered the `bc1f` at 0xdad2e18 skips ahead, otherwise it is compared (0xdad2e20) with the +0x18 word times $f10 and the `bc1t` at 0xdad2e28 exits when less or unordered.
  Checks five to seven work the same way on the +0x10 to +0x1c words of the 0x1020 record (compare at 0xdad2e58, exit at the `bc1t` at 0xdad2e60) and the +0x10 word of the 0x1024 record at 0xdad2e68; there a negative ordered $f4 sends the `bc1f` at 0xdad2e78 to the write block and the remaining compare at 0xdad2e80 can still exit at the `bc1t` at 0xdad2e88.
  The write block at 0xdad2e90 sets t0 = 0xffffffff8080d005, puts 0x10000 in v0 (0xdad2e98), and stores t0 as a word followed by $f12, $f13, $f14 and $f15 with `swc1`; the last store is in the delay slot of the `jr ra` at 0xdad2eac, which returns 0x10000. The exit at 0xdad2eb4 loads t9 from +0x20 of the 0x1024 record and `jr t9` at 0xdad2eb8 leaves with a0 to a3 as received.
  Unknown: where the `jr t9` at 0xdad2eb8 ends up, because the pointer is the +0x20 word of the 0x1024 record and is only known at run time.
  Evidence grade: established.
- `__glOdyim_Vertex4f_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231db40 (n64).
  Examines a vertex whose four floats arrive in $f12 to $f15 against float bounds with four extra
  offset tests, then either writes a five-word packet to the fixed address 0x10000 and returns, or
  tail-jumps through a pointer.
  The doublewords at abs 0x1038 and 0x1040 are held as base pointers. The scalar called w is the
  four argument floats times the floats at +0x30, +0x34, +0x38 and +0x3c of the first block (loads
  at 0x231db48 to 0x231db54). It is copied to $f10, and the `swc1` at 0x231db78 places w in +0x8 of
  the second block after the old float there was loaded at 0x231db6c.
  The `bc1f` at 0x231db90 heads for the tail jump when the absolute value of the product of w and
  that old float is ordered and unequal to the product, so the product has to be negative. The
  `bc1t` at 0x231dbc0 branches next to the tail if the absolute value of the float at +0x4 of the
  second block (loaded at 0x231db58) times w is less than, or unordered with, the absolute value of
  the plane sum of the four floats and the first-block floats at +0x0, +0x4, +0x8 and +0xc.
  The signed plane sum is retained in $f11. A multiply-add step on the float at +0xc of the second
  block (loaded at 0x231dbbc) and w gives a second value. On a negative value the `bc1f` at
  0x231dbd8 moves beyond the next test; in the remaining case the `bc1t` at 0x231dbe8 jumps to the
  tail when the value is less than, or unordered with, the float at +0x18 of the second block times
  w (the multiply in the delay slot at 0x231dbdc).
  The same sequence covers the second plane (first-block floats at +0x10, +0x14, +0x18 and +0x1c):
  the `bc1t` at 0x231dc20 against the same bound, then a multiply-add with the float at +0x10 of the
  second block (loaded at 0x231dc24), the skip on a negative value at the `bc1f` at 0x231dc38 and
  the `bc1t` at 0x231dc48 against the +0x18 float times w.
  With every test passed, the `lui` at 0x231dc58 sets v0 to 0x10000 and the `sw` at 0x231dc5c writes
  the constant 0xffffffff8080d005 there (immediate 0x8080 at 0x231dc50, `ori` of 0xd005 at
  0x231dc54). The `swc1` at 0x231dc60, 0x231dc64, 0x231dc68 and 0x231dc70 place $f12 to $f15
  unchanged; the fourth write is placed in the delay slot of the `jr ra` at 0x231dc6c, and the
  returned v0 is 0x10000.
  Taking the tail, t9 is read by the `ld` at 0x231dc74 from +0x20 of the block addressed by the
  doubleword at 0x1040 and jumps through the `jr t9` at 0x231dc78 with a0 to a3 and the argument
  floats as at entry.
  Unknown: the landing point of the `jr t9` at 0x231dc78, because the pointer at +0x20 is read from
  memory the bundle does not resolve.
  Unknown: the bytes of the blocks addressed by the doublewords at 0x1038 and 0x1040, because the
  offsets above are the sole trace of the layout.
  Evidence grade: established.
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
- `__glOdyim_Vertex4f_mag` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdada740 (o32).
  Takes four single-precision coordinates, the first two already in floating-point registers f12 and f14 and the last two as raw bits in a2 and a3 that the first two instructions copy into f0 and f2, and either posts them to absolute 0x10000 behind a header word or tail-transfers control elsewhere.
  Two record pointers come from absolute 0x1020 and 0x1024 (0xdada748, 0xdada74c); the first record's floats at +0x30, +0x34, +0x38 and +0x3c weight the four coordinates in a sum.
  Inferred: the `swc1` at 0xdada788 saves that sum at +0x8 of the second record, because only multiply and add steps on the loaded registers sit between the reads and the store.
  The `bc1f` at 0xdada7a0 exits to the shared exit at 0xdada834 when the sum times the old +0x8 float has an absolute value different from itself (`c.ueq.s` at 0xdada798), meaning that product is negative.
  Two further sums use the first record's floats at +0x0 to +0xc and +0x10 to +0x1c; their absolute values are compared (`c.ult.s` at 0xdada7d0 and 0xdada808) against the first sum times the +0x4 float of the second record, and the `bc1t` at 0xdada7d8 and 0xdada810 leave for the shared exit when the scaled value is smaller or the compare is unordered.
  With no early exit, v0 becomes 0x10000 (0xdada818), the header 0xffffffff8080d005 is formed (0xdada80c and the `ori` in the delay slot at 0xdada814) and the `sw` at 0xdada81c puts it at that address.
  Then `swc1` writes f12 (0xdada820), f14 (0xdada824), f0 (0xdada828) and f2 (0xdada830, in the delay slot of the `jr ra` at 0xdada82c) to the same address, and the return value is 0x10000.
  The shared exit fetches +0x20 of the second record into t9 (0xdada834) and the `jr t9` at 0xdada83c transfers control to it with a0 and a1 untouched, and with a2 and a3 refilled from f0 and f2.
  Unknown: where the `jr t9` at the end lands; the word stored at +0x20 behind absolute 0x1024 would say.
  Evidence grade: inferred.
- `__glOdyim_Vertex4f_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbaff80 (n32).
  Fast path for a four-component vertex whose floats arrive already in $f12 to $f15, with no conversion step. It tests the point against the records behind the words at 0x1020 and 0x1024, and either stores five words to 0x4000 and returns or leaves through a pointer jump.
  Its first sum, $f8, is the four floats times the words at +0x30, +0x34, +0x38 and +0x3c of the 0x1020 record. $f7 is the sum times the +0x8 word of the 0x1024 record (read at 0xdbaffac); the `swc1` at 0xdbaffb4 then overwrites that +0x8 word with the sum, and $f8 becomes the sum times the +0x4 word. The `bc1f` at 0xdbaffcc leaves when the absolute value of $f7 differs from $f7 (compare at 0xdbaffc4), which means $f7 is negative and ordered.
  The two remaining checks add up the floats times +0x0 to +0xc and then +0x10 to +0x1c of the 0x1020 record and compare each sum's absolute value with $f8 (0xdbafff0 and 0xdbb001c); the `bc1t` at 0xdbafff8 and the one at 0xdbb0024 leave when $f8 is less or unordered.
  When none leaves, the `ori` in the delay slot at 0xdbb0028 has made t0 0xffffffff8080d005; the block at 0xdbb002c stores t0 as a word, then $f12 to $f15 with `swc1`, the last in the delay slot of the `jr ra` at 0xdbb003c, all to 0x4000, and returns the word loaded from 0x1020 in v0. The exit at 0xdbb0044 loads t9 from +0x20 of the 0x1024 record and `jr t9` at 0xdbb0048 jumps with a0 to a3 as received; the delay slot is a `nop`.
  Inferred: the four stores form the accepted case, because the pointer jump is the only other exit and it writes nothing.
  Unknown: the routine at the end of the `jr t9` at 0xdbb0048; the +0x20 word of the 0x1024 record holds its address and is only visible on a running system.
  Evidence grade: inferred.
- `__glOdyim_Vertex4f_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49c5c0 (n64).
  Vets a vertex whose four floats arrive in $f12 to $f15 against float bounds, then either writes a
  five-word packet to the fixed address 0x4000 and returns, or tail-jumps through a pointer.
  The doublewords at abs 0x1038 and 0x1040 (`ld` at 0xb49c5c0 and 0xb49c5c4) provide base pointers.
  A single float w is the four argument floats times the floats at +0x30, +0x34, +0x38 and +0x3c of
  the first block (loads at 0xb49c5c8 to 0xb49c5d4), and the `swc1` at 0xb49c5f4 copies w to +0x8 of
  the second block after the old float there was loaded at 0xb49c5ec.
  The `bc1f` at 0xb49c60c diverts to the tail jump when the absolute value of the product of w and
  that old float is ordered and unequal to the product, meaning the product is below zero.
  The comparison limit is the absolute value of the float at +0x4 of the second block (loaded at
  0xb49c5d8) times w. The `bc1t` at 0xb49c638 and the one at 0xb49c664 each send control to the tail
  when that bound is under, or unordered with, the absolute value of a plane sum: the four floats
  times the floats at +0x0, +0x4, +0x8 and +0xc for the first, and times the floats at +0x10, +0x14,
  +0x18 and +0x1c for the second.
  With every test passed, the `sw` at 0xb49c66c writes the constant 0xffffffff8080d005 (immediate
  0x8080 at 0xb49c660, `ori` of 0xd005 in the delay slot at 0xb49c668) to 0x4000. The `swc1` at
  0xb49c670, 0xb49c674, 0xb49c678 and 0xb49c680 commit $f12 to $f15 unchanged; the final write rides
  in the delay slot of the `jr ra` at 0xb49c67c, and the result left in v0 is the doubleword at
  0x1038.
  On the exit route t9 is fetched with the `ld` at 0xb49c684 from +0x20 of the block addressed by
  the doubleword at 0x1040 and jumps through the `jr t9` at 0xb49c688 with a0 to a3 and the argument
  floats as at entry.
  Unknown: the routine jumped to by the `jr t9` at 0xb49c688, because the pointer at +0x20 is read
  from memory the bundle does not resolve.
  Unknown: the record layout of the blocks addressed by the doublewords at 0x1038 and 0x1040,
  because the bundle gives their layout only as the offsets above.
  Evidence grade: established.
- `__glOdyim_Vertex4fv_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdadce00 (o32).
  Variant of the four-float submit routine with two extra tests per row: it takes a pointer to four
  floats in a0 and either writes them, behind a header word, to the address 0x10000, or hands the
  call on through a function pointer, depending on seven float tests against the records addressed
  by the words at absolute 0x1020 and 0x1024 (the 0x1020 record and the 0x1024 record). It saves two
  double-precision registers on a 16-byte frame (`sdc1` at 0xdadce14 and 0xdadce18) and restores
  them on both exits (`ldc1` at 0xdadcf58 and 0xdadcf5c on the store path, 0xdadcf88 and 0xdadcf8c
  on the tail path). The first sum is each float times the matching word at +0x30 to +0x3c of the
  0x1020 record; a register copy keeps it in f20, and the `swc1` at 0xdadce60 stores it at +0x8 of
  the 0x1024 record. The `bc1f` at 0xdadce78 jumps out when the product of that sum and the old +0x8
  word is negative. The `bc1t` at 0xdadceb4 leaves when the absolute value of the sum with the +0,
  +4, +8, +0xc words, compared with the first sum scaled by the word at +0x4 of the 0x1024 record in
  absolute value, is the larger or unordered. A second pair follows: f20 times the word at +0xc of
  the 0x1024 record plus the signed row sum; the `bc1f` at 0xdadced0 skips the next test when that
  value is negative, and otherwise the `bc1t` at 0xdadcee0 leaves when it is less than f20 times the
  word at +0x18 of the 0x1024 record, or unordered. The same three-step pattern repeats for the
  +0x10 to +0x1c row (`bc1t` at 0xdadcf24, `bc1f` at 0xdadcf40, `bc1t` at 0xdadcf50), using the
  words at +0x10 and +0x18 of the 0x1024 record. When none leaves, v0 is set to 0x10000 (0xdadcf6c),
  the `sw` at 0xdadcf70 writes 0xffffffff8080d005 (0x8080 at 0xdadcf64, 0xd005 at 0xdadcf68), the
  `swc1` at 0xdadcf74 to 0xdadcf7c and the delay-slot `swc1` at 0xdadcf84 write the four floats, and
  the `jr ra` at 0xdadcf80 returns v0 = 0x10000. A leaving branch reaches the `lw` at 0xdadcf94,
  loading t9 from +0x20 of the 0x1024 record, and the `jr t9` at 0xdadcf9c jumps there with a0 and
  a1 as they arrived, a2 set from the third float and a3 (delay slot) from the fourth. Unknown:
  where the tail jump lands, since the +0x20 word of the 0x1024 record is filled elsewhere; a note
  on its writer would settle it. Unknown: whether 0x10000 is a device register or plain memory; the
  board address map would answer it.
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
- `__glOdyim_Vertex4fv_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231dc80 (n64).
  Runs float tests on a vertex of four floats read from the array at a0 against float bounds with
  four extra offset tests, then either writes a five-word packet to the fixed address 0x10000 and
  returns, or tail-jumps through a pointer.
  The four floats at a0, +0x0, +0x4, +0x8 and +0xc, land in $f12 to $f15 (`lwc1` at 0x231dc80 to
  0x231dc8c). The doublewords at abs 0x1038 and 0x1040 are loaded to be base pointers.
  The running value w is the four floats times the floats at +0x30, +0x34, +0x38 and +0x3c of the
  first block (loads at 0x231dc98 to 0x231dca4). It is copied to $f10, and the `swc1` at 0x231dcc8
  keeps w in +0x8 of the second block after the old float there was loaded at 0x231dcbc.
  The `bc1f` at 0x231dce0 bails out to the tail jump when the absolute value of the product of w and
  that old float is ordered and unequal to the product, the condition for a negative product. The
  `bc1t` at 0x231dd10 then diverts to the tail when the absolute value of the float at +0x4 of the
  second block (loaded at 0x231dca8) times w is less than, or unordered with, the absolute value of
  the plane sum of the four floats and the first-block floats at +0x0, +0x4, +0x8 and +0xc.
  The plane sum, with its sign, is placed in $f11. A single multiply-add with the float at +0xc of
  the second block (loaded at 0x231dd0c) and w gives a second value. If the value is below zero, the
  `bc1f` at 0x231dd28 steps around the next test; with any other value the `bc1t` at 0x231dd38 jumps
  to the tail when the value is less than, or unordered with, the float at +0x18 of the second block
  times w (the multiply in the delay slot at 0x231dd2c).
  For the second plane the pair recurs (first-block floats at +0x10, +0x14, +0x18 and +0x1c): the
  `bc1t` at 0x231dd70 against the same bound, then a multiply-add with the float at +0x10 of the
  second block (loaded at 0x231dd74), the skip on a negative value at the `bc1f` at 0x231dd88 and
  the `bc1t` at 0x231dd98 against the +0x18 float times w.
  With every test passed, the `lui` at 0x231dda8 sets v0 to 0x10000 and the `sw` at 0x231ddac writes
  the constant 0xffffffff8080d005 there. The `swc1` at 0x231ddb0, 0x231ddb4, 0x231ddb8 and 0x231ddc0
  record the four floats read from a0 unchanged; the final float is stored in the delay slot of the
  `jr ra` at 0x231ddbc, and the returned v0 is 0x10000.
  The escape route loads t9 through the `ld` at 0x231ddc4 from +0x20 of the block addressed by the
  doubleword at 0x1040 and jumps through the `jr t9` at 0x231ddc8 with a0 to a3 as at entry.
  Unknown: the routine behind the `jr t9` at 0x231ddc8, because the pointer at +0x20 is read from
  memory the bundle does not resolve.
  Unknown: the structure of the blocks addressed by the doublewords at 0x1038 and 0x1040, because
  the offsets above give the only glimpse of the layout.
  Evidence grade: established.
- `__glOdyim_Vertex4fv_mag_line0` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb1f00 (n32).

  Variant of the vertex entry that reads four floats at `a0`, compares them using the records behind the
  words at absolute 0x1020 and 0x1024, and then stores the vertex at absolute 0x4000 or jumps on through
  the second record.
  Four `lwc1` loads from 0xdbb1f00 to 0xdbb1f0c set f12 to f15, and the `lw` pair at 0xdbb1f10 and
  0xdbb1f14 sets v0 and v1 to the record pointers. The first record is read from +0x0 through +0x3c; the
  second is read at +0x4, +0x8, +0xc, +0x10 and +0x18, and each call runs the `swc1` at 0xdbb1f48, which
  puts f8 into +0x8 of that second record.
  The route to the jump at 0xdbb2044 has seven branch points: the `bc1f` at 0xdbb1f60 when a `c.ueq.s`
  compare is false; the `bc1t` at 0xdbb1f90, 0xdbb1fb8, 0xdbb1ff0 and 0xdbb2018 when a `c.ult.s` compare
  is true; and the `bc1f` at 0xdbb1fa8 and 0xdbb2008, which on a false `c.ueq.s` compare skip the next
  `c.ult.s` test and land on 0xdbb1fc0 and 0xdbb2020.
  Past all of them, the `sw` at 0xdbb2028 writes 0xffffffff8080d005 (t0 from 0xdbb2020 and 0xdbb2024) to
  absolute 0x4000. Then `swc1` at 0xdbb202c, 0xdbb2030, 0xdbb2034 and 0xdbb203c, the last in the delay
  slot of the `jr ra` at 0xdbb2038, write the floats from `a0` +0x0 to +0xc to the same address, and the
  return value is the word read from absolute 0x1020.
  If a test diverts, the `lw` at 0xdbb2040 takes t9 from +0x20 of the second record, the `jr t9` at
  0xdbb2044 leaves with a0 to a3 as they came in, and the stores to 0x4000 never happen.
  Unknown: the destination of the `jr t9` at 0xdbb2044, a word in the record at absolute 0x1024 whose
  content a run would reveal.
  Unknown: the float that the `swc1` at 0xdbb1f48 writes, since three words following the multiply into f8
  do not decode as ordinary instructions and could alter f8; a decode of them would settle that.
  Unknown: the device behind absolute 0x4000, as the linked board windows begin at 0x110000 and 0x120000
  and exclude it; a linked row naming 0x4000 would answer that.
  Evidence grade: established.
- `__glOdyim_Vertex4fv_mag` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdada880 (o32).
  Takes a pointer to four floats in a0 and either writes them, behind a header word, to the address
  0x10000, or hands the call on through a function pointer, depending on three float tests against
  two records addressed by the words at absolute 0x1020 and 0x1024 (the 0x1020 record and the 0x1024
  record). Loads of the four floats sit at 0xdada880 to 0xdada88c. The routine forms the sum of each
  float times the matching word at +0x30, +0x34, +0x38 and +0x3c of the 0x1020 record, and the
  `swc1` at 0xdada8d0 stores that sum at +0x8 of the 0x1024 record after multiplying the old word
  there by it for the first test. The `bc1f` at 0xdada8e8 leaves for the tail path when that product
  is negative (its absolute value differs from it; unordered counts as equal). The `bc1t` at
  0xdada920 repeats the sum with the words at +0, +4, +8 and +0xc of the 0x1020 record and the
  `bc1t` at 0xdada958 repeats it with +0x10 to +0x1c; either leaves if the new sum has the larger
  absolute value, or is unordered, against the first sum scaled by the +0x4 word of the 0x1024
  record. When none leaves, v0 is set to 0x10000 at 0xdada960, the `sw` at 0xdada964 writes
  0xffffffff8080d005 (from 0x8080 at 0xdada954 and 0xd005 at 0xdada95c), the `swc1` at 0xdada968,
  0xdada96c and 0xdada970 and the delay-slot `swc1` at 0xdada978 write the four floats in order
  through v0, and the `jr ra` at 0xdada974 returns with v0 = 0x10000. Every leaving branch reaches
  the `lw` at 0xdada97c, which loads t9 from +0x20 of the 0x1024 record; the `jr t9` at 0xdada984
  jumps there with a0 and a1 as they arrived, a2 set from the third float and a3 (delay slot) from
  the fourth. Unknown: which routine the +0x20 word of the 0x1024 record points at; the code that
  fills that word would settle it. Unknown: the register, if any, that sits at 0x10000; only a board
  address map can place it, since the linked windows at 0x110000 and 0x120000 carry no names.
  Evidence grade: established.
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
- `__glOdyim_Vertex4fv_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49c6c0 (n64).
  Probes a vertex of four floats read from the array at a0 against float bounds, then either writes
  a five-word packet to the fixed address 0x4000 and returns, or tail-jumps through a pointer.
  The four floats at a0, +0x0, +0x4, +0x8 and +0xc, are placed in $f12 to $f15 (`lwc1` at 0xb49c6c0
  to 0xb49c6cc). The doublewords at abs 0x1038 and 0x1040 (`ld` at 0xb49c6d0 and 0xb49c6d4) work as
  base pointers.
  The quantity w is the four floats times the floats at +0x30, +0x34, +0x38 and +0x3c of the first
  block (loads at 0xb49c6d8 to 0xb49c6e4), and the `swc1` at 0xb49c704 leaves w at +0x8 of the
  second block after the old float there was loaded at 0xb49c6fc.
  The `bc1f` at 0xb49c71c takes the tail jump when the absolute value of the product of w and that
  old float is ordered and unequal to the product, hence a negative product takes the jump.
  The comparison threshold is the absolute value of the float at +0x4 of the second block (loaded at
  0xb49c6e8) times w. The `bc1t` at 0xb49c748 and the one at 0xb49c774 both leave for the tail when
  the bound is less than, or unordered with, the absolute value of a plane sum: the four floats
  times the floats at +0x0, +0x4, +0x8 and +0xc for the first, and times the floats at +0x10, +0x14,
  +0x18 and +0x1c for the second.
  With every test passed, the `sw` at 0xb49c77c writes the constant 0xffffffff8080d005 (`ori` of
  0xd005 in the delay slot at 0xb49c778) to 0x4000. The `swc1` at 0xb49c780, 0xb49c784, 0xb49c788
  and 0xb49c790 deposit the four floats read from a0 unchanged; the last store rides in the delay
  slot of the `jr ra` at 0xb49c78c, and the returned v0 is the doubleword at 0x1038.
  The remaining route takes t9 from the `ld` at 0xb49c794 from +0x20 of the block addressed by the
  doubleword at 0x1040 and jumps through the `jr t9` at 0xb49c798 with a0 to a3 as at entry.
  Unknown: the code entered via the `jr t9` at 0xb49c798, because the pointer at +0x20 is read from
  memory the bundle does not resolve.
  Unknown: the record format of the blocks addressed by the doublewords at 0x1038 and 0x1040,
  because their layout shows only in the offsets above.
  Evidence grade: established.
- `__glOdyim_Vertex4i_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdadcfc0 (o32).
  Takes four integers in a0 to a3 and either writes them, behind a header word, to the address
  0x10000, or hands the call on through a function pointer, depending on seven float tests against
  the records addressed by the words at absolute 0x1020 and 0x1024 (the 0x1020 record, loaded at
  0xdadcfec, and the 0x1024 record, loaded at 0xdadcff0). The integers are first moved to
  floating-point registers and converted to single precision. The routine pushes f20 and f22 onto a
  16-byte frame with the `sdc1` at 0xdadcfe4 and 0xdadcfe8 and restored on both exits (`ldc1` at
  0xdadd128 and 0xdadd12c, or 0xdadd158 and 0xdadd15c). f20 keeps a copy of the first sum (converted
  values against the +0x30 to +0x3c words of the 0x1020 record), and the `swc1` at 0xdadd030 saves
  that sum into +0x8 of the 0x1024 record. The `bc1f` at 0xdadd048 branches out when multiplying the
  previous +0x8 word by that sum gives a negative. Per row (+0 to +0xc, then +0x10 to +0x1c), a
  first `bc1t` (0xdadd084, 0xdadd0f4) leaves when the absolute row sum exceeds the first sum scaled
  by the word at +0x4 of the 0x1024 record, in absolute value, or is unordered with it; then a
  second value, f20 times the word at +0xc (first row) or +0x10 (second row) of the 0x1024 record
  plus the signed row sum, is checked: the `bc1f` at 0xdadd0a0 or 0xdadd110 skips the last test when
  it is negative, otherwise the `bc1t` at 0xdadd0b0 or 0xdadd120 leaves when it is below f20 times
  the word at +0x18 of the 0x1024 record, or unordered. When none leaves, the `sw` at 0xdadd140
  writes 0xffffffff8080d004 (0x8080 at 0xdadd134, 0xd004 at 0xdadd138) to 0x10000 (v0 set at
  0xdadd13c), then a0 to a3 as the original integers (`sw` at 0xdadd144, 0xdadd148, 0xdadd14c and
  the delay slot of the `jr ra` at 0xdadd150); v0 returns as 0x10000. On every leaving branch the
  `lw` at 0xdadd164 loads t9 from +0x20 of the 0x1024 record and the `jr t9` at 0xdadd16c transfers
  there with a0 and a1 as they arrived, a2 and a3 (delay slot) holding the converted values of the
  third and fourth integers. Unknown: the handler reached through the +0x20 entry of the 0x1024
  record; its writer would settle it. Unknown: whether the writes to 0x10000 reach a register; a
  board address map would answer it.
  Evidence grade: established.
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
- `__glOdyim_Vertex4i_mag_line0` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb2080 (n32).
  Writes a constant and the argument registers a0 to a3 to abs 0x4000 when no float test in its chain leaves;
  otherwise it tail-jumps through a pointer read from +0x20 of the record that abs 0x1024 points to.
  Each call reads the words at abs 0x1020 and 0x1024 into v0 and v1 with the `lw` pair at 0xdbb20a0 and
  0xdbb20a4, and the `swc1` at 0xdbb20d8 in the first block writes f8 to +0x8 of the v1 record
  unconditionally.
  The `bc1f` at 0xdbb20f0 leaves unless `c.ueq.s` finds f4 equal to f7 or unordered; the `bc1t` at
  0xdbb2120, 0xdbb2148, 0xdbb2180 and 0xdbb21a8 leave when their `c.ult.s` compares hold; and the `bc1f`
  at 0xdbb2138 and 0xdbb2198 skip ahead to 0xdbb2150 and 0xdbb21b0 when their compares are false.
  The floating-point multiply in the delay slots at 0xdbb213c and 0xdbb219c runs on both paths of its
  branch and multiplies f6 by f10.
  The block at 0xdbb21b0 holds the store path: t0 at 0xdbb21b4 holds 0xffffffff8080d004 (from
  0xffffffff80800000 at 0xdbb21b0 and the immediate 0xd004), the `sw` at 0xdbb21b8 stores it to abs
  0x4000, the `sw` at 0xdbb21bc, 0xdbb21c0 and 0xdbb21c4 store a0 to a2 as they arrived, the `jr ra` at
  0xdbb21c8 returns the word loaded from abs 0x1020, and its delay-slot `sw` at 0xdbb21cc stores a3.
  The exit block at 0xdbb21d0 starts with the `lw` that sets t9 from +0x20 of the v1 record, and the
  `jr t9` at 0xdbb21d4 leaves with a0 to a3 unchanged.
  Inferred: before the checks the arguments a0 to a3 are turned into single-precision floats held in f12 to f15, which
  the eight leading instructions (four moves to the floating-point unit, four conversions) suggest; those
  instructions are not among the listed accesses.
  Unknown: which routine the `jr t9` at 0xdbb21d4 transfers to; the pointer is loaded at 0xdbb21d0 from
  the record that abs 0x1024 points to, and the route is that record's contents at the time of the call.
  Unknown: the floats in f8 at the store at 0xdbb20d8 and in f10 at the multiplies at 0xdbb213c and
  0xdbb219c, which the tool cannot track; the route is a trace of those two registers from 0xdbb2080.
  Evidence grade: inferred.
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
- `__glOdyim_Vertex4i_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb0180 (n32).
  Stores the constant 0xffffffff8080d004 and the four argument registers a0 to a3 to abs 0x4000 and returns the
  word at abs 0x1020 when no float test leaves, and otherwise tail-jumps through a pointer read from
  +0x20 of the record at abs 0x1024.
  Every call loads the words at abs 0x1020 and 0x1024 into v0 and v1 (the `lw` at 0xdbb01a0 and
  0xdbb01a4), reads floats at +0x0 to +0x3c from those records, and writes f8 to +0x8 of the v1 record
  with the `swc1` at 0xdbb01d4, which sits in the first block.
  Three branches decide it: the `bc1f` at 0xdbb01ec goes to the block at 0xdbb0264 when its `c.ueq.s`
  compare of f4 and f7 is false, and the `bc1t` at 0xdbb0218 and 0xdbb0244 go there when their
  `c.ult.s` compares of f8 and f9 are true.
  When it falls through, the `ori` at 0xdbb0248 ORs 0xd004 into t0 in the delay slot of the branch at
  0xdbb0244, so it runs on both paths; the `sw` at 0xdbb024c stores that result, from the immediate
  0x8080 at 0xdbb0240, to abs 0x4000, then the `sw` at 0xdbb0250, 0xdbb0254, 0xdbb0258 and 0xdbb0260
  store a0, a1, a2 and a3 as they arrived, and the `jr ra` at 0xdbb025c returns the word at abs 0x1020.
  Otherwise the block at 0xdbb0264 takes t9 from +0x20 of the record that abs 0x1024 points to, and the
  `jr t9` at 0xdbb0268 transfers control with a0 to a3 unchanged, skipping the stores at 0xdbb024c to
  0xdbb0260.
  Inferred: the instruction stream starts by converting a0 to a3 to single-precision floats in f12 to f15, using four
  moves to the floating-point unit and four integer-to-float conversions; the access listing has no entry for them.
  Unknown: the callee behind the `jr t9` at 0xdbb0268, which depends on the word the record at abs 0x1024
  holds at run time; the route is reading that word during a call.
  Unknown: the content of f8 that the `swc1` at 0xdbb01d4 stores, which the `c.ult.s` compares at
  0xdbb0210 and 0xdbb023c also read; the tool stops at floating-point registers, so the route is a
  manual trace of f8 backward from 0xdbb01d4.
  Unknown: what the abs 0x4000 store targets, since no linked row names that address; the route is an
  inventory row for 0x4000.
  Evidence grade: inferred.
- `__glOdyim_Vertex4i_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49c7c0 (n64).
  Takes four integer arguments a0 to a3, converts each to single precision in the floating-point unit
  (four pairs of register moves and integer-to-single conversions at the top of the routine), tests that
  point against three groups of four floats, and either writes the raw integers to absolute 0x4000 or
  jumps through a routine pointer.
  The `ld` at 0xb49c7e0 loads the doubleword at 0x1038 into v0 and the `ld` at 0xb49c7e4 loads the
  doubleword at 0x1040 into v1; the three groups are the floats at v0 +0x30 to +0x3c, +0x0 to +0xc and
  +0x10 to +0x1c. Each group is combined with the four converted arguments as one multiply and three
  multiply-adds, one float per argument, giving a single float.
  The first group's result is stored by the `swc1` at 0xb49c814 to v1 +0x8, after the old word at v1 +0x8
  was loaded at 0xb49c80c and multiplied by it; the same result is also multiplied by the float at v1 +0x4
  to give the bound f8, whose absolute value is used by the two later tests.
  The `bc1f` at 0xb49c82c leaves for the jump unless the absolute value of the product with the old v1 +0x8
  word equals that product or is unordered (`c.ueq.s` at 0xb49c824).
  The `bc1t` at 0xb49c858 and 0xb49c884 leave for the jump when the bound is less than the absolute value
  of the second or third group's result, or unordered (`c.ult.s` at 0xb49c850 and 0xb49c87c).
  When all three tests fall through, the `sw` at 0xb49c88c stores the constant 0xffffffff8080d004 (0x8080
  set at 0xb49c880, 0xd004 ORed in by the instruction in the delay slot at 0xb49c888) to absolute 0x4000,
  then the `sw` instructions at 0xb49c890 to 0xb49c8a0 store a0, a1, a2 and a3 unchanged to the same
  address, the last in the delay slot of the `jr ra` at 0xb49c89c, which returns the doubleword at 0x1038.
  Inferred: the five stores to one address form a single command of a header word and four values, since
  the header constant is written first and the four argument words follow back to back.
  On the exit path the `ld` at 0xb49c8a4 loads t9 from the doubleword at v1 +0x20 and the `jr t9` at
  0xb49c8a8 jumps there with a0 to a3 as they arrived.
  Unknown: which routine the `jr t9` at 0xb49c8a8 enters, since the pointer comes from memory; a live read
  of the doubleword at 0x1040 plus 0x20 would name it.
  Evidence grade: inferred.
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
- `__glOdyim_Vertex4iv_mag_line0` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb2200 (n32).
  Patched-build counterpart of the two-group integer-vector vertex entry: words from `a0` are emitted to
  absolute 0x4000 behind a header constant, unless float checks against the records at absolute 0x1020 and
  0x1024 divert it to a tail jump through the second record.
  The loads at 0xdbb2200 to 0xdbb220c fetch offsets 0, 4, 8 and 12 of `a0` into a4 to a7; those at 0xdbb2230
  and 0xdbb2234 fetch the record pointers into v0 and v1. The `swc1` at 0xdbb2268 writes f8 into +0x8 of
  the second record on every call, ahead of all branches.
  Inferred: f12 to f15 hold the four words converted to float, because the routine contains four moves to
  the floating-point unit and four integer-to-float conversions after the first loads; they are not in the
  listed accesses.
  There are seven branches. The `bc1f` at 0xdbb2280 diverts when a `c.ueq.s` compare is false. The `bc1t`
  at 0xdbb22b0 and 0xdbb2310 divert when `c.ult.s` of f8 and f9 is true, and the `bc1t` at 0xdbb22d8 and
  0xdbb2338 when `c.ult.s` of f4 and f6 is true. The `bc1f` at 0xdbb22c8 and 0xdbb2328 go to 0xdbb22e0 and
  0xdbb2340 when a `c.ueq.s` of f5 and f4 is false, so the `c.ult.s` test just below them is not run.
  When nothing diverts, the `sw` at 0xdbb2348 stores the constant 0xffffffff8080d004 (t0 assembled at
  0xdbb2340 and 0xdbb2344) to absolute 0x4000.
  The `sw` at 0xdbb234c, 0xdbb2350, 0xdbb2354 and 0xdbb235c then
  copy a4 to a7 after it, with the last in the delay slot of the `jr ra` at 0xdbb2358, and v0 carries
  the word read from absolute 0x1020 back to the caller.
  When something diverts, the `lw` at 0xdbb2360 takes t9 from +0x20 of the second record, and the `jr t9`
  at 0xdbb2364 jumps, a0 to a3 unchanged and a4 to a7 holding the words, with no store to 0x4000.
  Unknown: the entry held in t9 at 0xdbb2364, a word in the record at absolute 0x1024 that only a run shows.
  Unknown: the float the `swc1` at 0xdbb2268 writes, since the extracted facts stop at floating-point
  registers; a trace of f8 backward from that store would answer it.
  Evidence grade: inferred.
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
- `__glOdyim_Vertex4iv_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb0280 (n32).
  Integer-vector vertex entry: it loads four words from the array at `a0`, checks floating-point values from
  the records at absolute 0x1020 and 0x1024, and either emits a header and the four words to absolute 0x4000
  or tail-jumps through the second record.
  Loads at 0xdbb0280 to 0xdbb028c put offsets 0, 4, 8 and 12 of `a0` into a4 to a7. Loads at 0xdbb02b0 and
  0xdbb02b4 take the record pointers into v0 and v1, and the `swc1` at 0xdbb02e4 writes f8 into +0x8 of the
  second record before any test runs.
  Inferred: f12 to f15 receive the four words converted to single-precision float right after the loads,
  since the routine holds four moves to the floating-point unit and four integer-to-float conversions there;
  they are missing from the extracted access list.
  Three branches pick the path. The `bc1f` at 0xdbb02fc leaves for the jump block at 0xdbb0374 when its
  `c.ueq.s` compare of f4 and f7 is false; the `bc1t` at 0xdbb0328 and 0xdbb0354 leave for it when their
  `c.ult.s` compares of f8 and f9 are true.
  If none leaves, the `sw` at 0xdbb035c writes the constant 0xffffffff8080d004 to absolute 0x4000; t0 gets
  it from 0xdbb0350 and from the `ori` at 0xdbb0358, which sits in the delay slot of the `bc1t` at
  0xdbb0354. The `sw` at 0xdbb0360, 0xdbb0364, 0xdbb0368 and 0xdbb0370 copy a4 to a7 to the same address,
  the last in the delay slot of the `jr ra` at 0xdbb036c, and v0 returns the word loaded from absolute 0x1020.
  If one leaves, the `lw` at 0xdbb0374 reads t9 from +0x20 of the second record and the `jr t9` at
  0xdbb0378 goes there carrying a0 to a3 and the four words in a4 to a7, with nothing stored to 0x4000.
  Unknown: the entry point that t9 holds at 0xdbb0378; it is a word of the record at absolute 0x1024 that
  only a run can show.
  Unknown: the float that the `swc1` at 0xdbb02e4 stores, since floating-point registers are not followed
  here; tracing f8 back from the store would answer it.
  Unknown: the device behind absolute 0x4000, which falls outside the linked board windows at 0x110000 and
  0x120000; a row naming 0x4000 would answer it.
  Evidence grade: inferred.
- `__glOdyim_Vertex4iv_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49c8c0 (n64).
  Reads four integers through the pointer in a0, turns each into a single precision float, runs the
  resulting point past three float tests, and on success sends the raw integers to absolute 0x4000;
  on failure control moves to a routine pointer instead.
  The `lw` loads at 0xb49c8c0 to 0xb49c8cc put a0 +0x0, +0x4, +0x8 and +0xc in a4 to a7, and the
  conversion pairs that follow leave the floats in f12 to f15. The doubleword at 0x1038 goes to v0 (`ld`
  at 0xb49c8f0) and the one at 0x1040 to v1 (`ld` at 0xb49c8f4). Three float groups hang off v0, at +0x30
  to +0x3c, +0x0 to +0xc and +0x10 to +0x1c; each is reduced to one float by a multiply followed by
  three multiply-adds against f12 to f15.
  For the first group the result goes back out through the `swc1` at 0xb49c924, to v1 +0x8; before that
  the word there is loaded (0xb49c91c) and multiplied by the result, and the result is also multiplied
  by the float at v1 +0x4 and kept as an absolute value in f8.
  Test one is the `bc1f` at 0xb49c93c: it jumps to the pointer exit unless the absolute value of the
  v1 +0x8 product matches the product itself or is unordered (`c.ueq.s` at 0xb49c934).
  Tests two and three are the `bc1t` branches at 0xb49c968 and 0xb49c994, which take the exit when f8
  is below the absolute value of the second or third group's float, unordered included (`c.ult.s` at
  0xb49c960 and 0xb49c98c).
  Falling through all three, the routine builds 0xffffffff8080d004 (0x8080 at 0xb49c990, 0xd004 ORed in
  at 0xb49c998) and stores it to absolute 0x4000 with the `sw` at 0xb49c99c, then the `sw` stores at
  0xb49c9a0 to 0xb49c9b0 write a4 to a7, the words from a0 +0x0, +0x4, +0x8 and +0xc, as loaded; the last
  one sits in the delay slot of the `jr ra` at 0xb49c9ac, which hands back the doubleword at 0x1038.
  The exit loads t9 from v1 +0x20 (`ld` at 0xb49c9b4) and jumps with `jr t9` at 0xb49c9b8; a0 to a3 are
  untouched and a4 to a7 still hold the four words.
  Unknown: the destination of the `jr t9` at 0xb49c9b8, which depends on the word at 0x1040 plus 0x20 at
  run time; a live read of it would give the answer.
  Evidence grade: established.
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
- `__glOdyim_Vertex4iv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbaddc0 (n32).
  Straight-line routine that takes four 32-bit words from the array at `a0` and writes a header word and
  those four words, one after another, to the single absolute address 0x4000.
  Four `lw` loads, from 0xdbaddc0 to 0xdbaddcc, bring in the words at offsets 0, 4, 8 and 12 of `a0`, landing in a4 to a7. The `sw` at
  0xdbaddf8 then writes the constant 0xffffffff8080d004, built in t0 at 0xdbaddf0 and 0xdbaddf4, and the
  `sw` at 0xdbaddfc, 0xdbade00, 0xdbade04 and 0xdbade0c write the four loaded words unchanged, the last
  one in the delay slot of the `jr ra` at 0xdbade08.
  There is no branch and no call, so every instruction runs on each entry.
  The routine does not write v0, so the caller sees whatever v0 held on entry.
  Inferred: the four loaded words are also converted from integer to single-precision float into f12 to
  f15 before the header store, because the routine contains four moves to the floating-point unit and
  four integer-to-float conversions; the hostfacts access list does not carry them, so the evidence is
  the instruction stream alone.
  Unknown: which register or device sits at the absolute address 0x4000, which the bundle lists as
  memory-mapped I/O; the linked board windows at 0x110000 and 0x120000 do not include it, so a register
  row for 0x4000 would close it.
  Evidence grade: inferred.
- `__glOdyim_Vertex4sv_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdadd540 (o32).
  Takes the address of four 16-bit integers in a0 and either writes them, behind a header word, to
  the address 0x10000, or hands the call on through a function pointer, depending on seven float
  tests against the records addressed by the words at absolute 0x1020 and 0x1024 (the 0x1020 record,
  loaded at 0xdadd57c, and the 0x1024 record, loaded at 0xdadd580). The halfwords at a0+0, +2, +4
  and +6 are loaded signed (`lh` at 0xdadd540 to 0xdadd54c), moved to floating-point registers and
  converted to single precision. A 16-byte frame holds f20 and f22 for the duration, written by the
  `sdc1` at 0xdadd574 and 0xdadd578 and restored on both exits (`ldc1` at 0xdadd6b8 and 0xdadd6bc,
  or 0xdadd6e8 and 0xdadd6ec). The first sum goes through a register copy into f20 before the `swc1`
  at 0xdadd5c0 writes it to +0x8 of the 0x1024 record; it is formed from the converted values and
  the +0x30 to +0x3c words of the 0x1020 record. The `bc1f` at 0xdadd5d8 leaves the main path if
  that sum, multiplied by the old +0x8 word, is negative. For the row at +0 to +0xc and again for
  the row at +0x10 to +0x1c, the `bc1t` (0xdadd614, 0xdadd684) leaves when the absolute row sum
  exceeds the first sum scaled by the word at +0x4 of the 0x1024 record, in absolute value, or is
  unordered with it; then f20 times the word at +0xc (first row) or +0x10 (second row) of the 0x1024
  record plus the signed row sum is checked: the `bc1f` at 0xdadd630 or 0xdadd6a0 skips the last
  test when it is negative, otherwise the `bc1t` at 0xdadd640 or 0xdadd6b0 leaves when it is below
  f20 times the word at +0x18 of the 0x1024 record, or unordered. When none leaves, v0 is set to
  0x10000 (0xdadd6cc), the `sw` at 0xdadd6d0 writes 0xffffffff8080d004 (0x8080 at 0xdadd6c4, 0xd004
  at 0xdadd6c8) through it, then the four sign-extended halfwords as words (`sw` at 0xdadd6d4,
  0xdadd6d8, 0xdadd6dc and the delay-slot `sw` at 0xdadd6e4 of the `jr ra` at 0xdadd6e0); v0 returns as
  0x10000. Control reaching the `lw` at 0xdadd6f4 (from any leaving branch) takes t9 from the +0x20
  word of the 0x1024 record, and the `jr t9` at 0xdadd6fc jumps through it with a0 (still the
  pointer) and a1 as they arrived, a2 and a3 (delay slot) holding the converted third and fourth
  values. Unknown: the next stage after the tail jump, whose pointer sits at +0x20 of the 0x1024
  record; the code that writes the pointer would settle it. Unknown: whether 0x10000 reaches a
  device; a board address map would settle it.
  Evidence grade: established.
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
- `__glOdyim_Vertex4sv_mag_line0` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49eb40 (n64).
  Line-mode variant of the four-halfword vertex check: it floats the halfwords at a0, tests the point
  against three float groups with two extra sum tests that reuse the first group's result, and writes the
  vertex to absolute 0x4000 only if everything passes; any failure goes to a routine pointer.
  The `lh` loads at 0xb49eb40 to 0xb49eb4c read a0 +0x0, +0x2, +0x4 and +0x6 into a4 to a7, and the
  integer-to-single conversions that follow fill f12 to f15. v0 and v1 receive the doublewords at 0x1038
  and 0x1040 (`ld` at 0xb49eb70 and 0xb49eb74). The groups of four floats at v0 +0x30 to +0x3c, +0x0 to
  +0xc and +0x10 to +0x1c each become one number, a multiply and three multiply-adds against f12 to f15;
  call them d1, d2 and d3.
  d1 is copied into f10 (a register copy), written by the `swc1` at 0xb49eba8 to v1 +0x8 once the old
  v1 +0x8 word has been multiplied by it, and scaled by the float at v1 +0x4 into the bound f8, kept as an
  absolute value.
  The `bc1f` at 0xb49ebc0 exits unless the absolute value of the product with the old v1 +0x8 word equals
  the product or is unordered (`c.ueq.s` at 0xb49ebb8). The `bc1t` at 0xb49ebf0 exits when f8 is below the
  absolute value of d2 (`c.ult.s` at 0xb49ebe8), unordered included.
  For d2 a further sum follows: d2 plus the float at v1 +0xc times d1 (a multiply-add), then the float at
  v1 +0x18 times d1. The `bc1f` at 0xb49ec08 skips the next test, going to 0xb49ec20, when the sum is
  negative (`c.ueq.s` at 0xb49ec00); otherwise the `bc1t` at 0xb49ec18 exits if the sum is less than that
  scaled float or unordered with it (`c.ult.s` at 0xb49ec10).
  d3 repeats the pattern. The `bc1t` at 0xb49ec50 exits when f8 is below the absolute value of d3
  (`c.ult.s` at 0xb49ec48); the sum is d3 plus the float at v1 +0x10 times d1, tested by the `bc1f` at
  0xb49ec68 (`c.ueq.s` at 0xb49ec60), which on a negative sum jumps straight to the store block at
  0xb49ec80; otherwise the `bc1t` at 0xb49ec78 exits if the sum is less than the float at v1 +0x18 times
  d1 (`c.ult.s` at 0xb49ec70).
  The store block builds 0xffffffff8080d004 (0x8080 at 0xb49ec80, 0xd004 at 0xb49ec84), stores it to
  absolute 0x4000 at 0xb49ec88, then writes the four sign-extended halfwords at 0xb49ec8c, 0xb49ec90 and 0xb49ec94,
  and at 0xb49ec9c in the delay slot of the `jr ra` at 0xb49ec98; v0 comes back as the doubleword at 0x1038.
  All exits land on 0xb49eca0, which loads t9 from v1 +0x20; `jr t9` at 0xb49eca4 then runs with a0 to a3
  as received and a4 to a7 holding the halfwords.
  Unknown: where the `jr t9` at 0xb49eca4 goes, since it follows a pointer read at run time; dumping the
  doubleword at 0x1040 plus 0x20 from a live system would show it.
  Evidence grade: established.
- `__glOdyim_Vertex4sv_mag` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdadad80 (o32).
  Takes the address of four 16-bit integers in a0 and either writes them, behind a header word, to
  the address 0x10000, or hands the call on through a function pointer, depending on three float
  tests against two records addressed by the words at absolute 0x1020 and 0x1024 (the 0x1020 record
  and the 0x1024 record, loaded at 0xdadadb0 and 0xdadadb4). The halfwords at a0+0, +2, +4 and +6
  are loaded signed (`lh` at 0xdadad80 to 0xdadad8c) into t4 to t7, moved to floating-point
  registers and converted to single precision. That sum of floats against the +0x30 to +0x3c words
  of the 0x1020 record goes to +0x8 of the 0x1024 record through the `swc1` at 0xdadadf0. The `bc1f`
  at 0xdadae08 leaves on a negative product of the old +0x8 word with that sum; the pair of `bc1t`
  at 0xdadae40 and 0xdadae78 leave when the absolute sum with the +0 to +0xc words, or with the
  +0x10 to +0x1c words, is bigger than the first sum scaled by the word at +0x4 of the 0x1024 record
  in absolute value, or is unordered with it. When none leaves, v0 is set to 0x10000 (0xdadae80),
  the `sw` at 0xdadae84 writes 0xffffffff8080d004 (0x8080 at 0xdadae74, 0xd004 at 0xdadae7c) through
  it, followed by the four sign- extended halfwords as words (`sw` at 0xdadae88, 0xdadae8c,
  0xdadae90 and the delay-slot `sw` at 0xdadae98 of the `jr ra` at 0xdadae94); v0 returns as 0x10000. All
  three leaving branches share the `lw` at 0xdadae9c that loads t9 from the +0x20 word of the 0x1024
  record; the `jr t9` at 0xdadaea4 then hands over with a0 (still the pointer) and a1 as they
  arrived, a2 and a3 (delay slot) holding the converted third and fourth values. Unknown: the
  address the final jump takes from +0x20 of the 0x1024 record; the routine that populates that slot
  would settle it. Unknown: the register behind 0x10000, if there is one; a board address row would
  settle it.
  Evidence grade: established.
- `__glOdyim_Vertex4sv_mag` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231c1c0 (n64).
  Gate for a four-halfword vertex: it converts the halfwords at a0 to floats, applies three float tests, and
  on success writes the vertex as five words to the address 0x10000, else it jumps through a routine
  pointer without writing.
  The `lh` loads at 0x231c1c0 to 0x231c1cc sign-extend a0 +0x0, +0x2, +0x4 and +0x6 into a4 to a7; the
  instructions after them move each into the floating-point unit and convert it from integer to single
  precision, giving f12 to f15. The `ld` at 0x231c1f0 reads the doubleword at 0x1038 into v0 and the
  `ld` at 0x231c1f4 the doubleword at 0x1040 into v1. Each of the three float groups at v0 +0x30 to
  +0x3c, +0x0 to +0xc and +0x10 to +0x1c is a dot product with f12 to f15 (one multiply, three
  multiply-adds).
  The first dot product is written out by the `swc1` at 0x231c224 to v1 +0x8; the word previously at
  v1 +0x8 (loaded at 0x231c21c) is first multiplied by it, and the product with the float at v1 +0x4
  becomes the bound f8, held as an absolute value.
  Branch one is the `bc1f` at 0x231c23c; it exits unless the absolute value of the product with the old
  v1 +0x8 word equals the product or is unordered (`c.ueq.s` at 0x231c234). Branches two and three, the
  `bc1t` at 0x231c268 and 0x231c294, exit when f8 is less than the absolute value of the second or third
  dot product, or unordered (`c.ult.s` at 0x231c260 and 0x231c28c).
  When none exits, the instruction at 0x231c29c loads 0x10000 into v0, which serves as the store address,
  and the `sw` at 0x231c2a0 writes the constant 0xffffffff8080d004 (0x8080 at 0x231c290, 0xd004 ORed in
  at 0x231c298) to it. The `sw` instructions at 0x231c2a4, 0x231c2a8 and 0x231c2ac, and the one at 0x231c2b4 in the delay
  slot of the `jr ra` at 0x231c2b0, write the four sign-extended halfwords to the same address, and v0
  is returned as 0x10000.
  The exit loads t9 from the doubleword at v1 +0x20 (0x231c2b8) and runs `jr t9` at 0x231c2bc with a0 to
  a3 as received.
  Unknown: the routine at the end of the `jr t9` at 0x231c2bc; the live value of the doubleword at 0x1040
  plus 0x20 would identify it.
  Evidence grade: established.
- `__glOdyim_Vertex4sv_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49cac0 (n64).
  Four halfwords come in through the pointer in a0; the routine floats them, checks them against three
  float tests, and either writes them as words to absolute 0x4000 or hands control to a routine pointer.
  Loads: `lh` at 0xb49cac0, 0xb49cac4, 0xb49cac8 and 0xb49cacc fetch a0 +0x0, +0x2, +0x4 and +0x6 into
  a4 to a7 with sign extension, and integer-to-single conversion then fills f12 to f15. v0 gets the
  doubleword at 0x1038 and v1 the one at 0x1040 (`ld` at 0xb49caf0 and 0xb49caf4). The float groups at
  v0 +0x30 to +0x3c, +0x0 to +0xc and +0x10 to +0x1c each collapse to one float: a multiply by f12, then
  multiply-adds with f13, f14 and f15.
  Group one has extra work. The `swc1` at 0xb49cb24 writes its result to v1 +0x8, once the previous word
  there (loaded at 0xb49cb1c) has been multiplied by it; the result is also scaled by the float at v1 +0x4
  and its absolute value kept in f8.
  The first branch, `bc1f` at 0xb49cb3c, goes to the exit unless the previous v1 +0x8 word times the
  group result has an absolute value equal to itself or is unordered (`c.ueq.s` at 0xb49cb34).
  The next two, `bc1t` at 0xb49cb68 and 0xb49cb94, go to the exit if f8 is smaller than the absolute value
  of group two's or group three's float, or unordered (`c.ult.s` at 0xb49cb60 and 0xb49cb8c).
  If none is taken, 0xffffffff8080d004 is formed (0x8080 at 0xb49cb90, 0xd004 ORed in by the delay slot
  at 0xb49cb98) and stored to absolute 0x4000 at 0xb49cb9c; the four sign-extended halfwords follow
  as words at 0xb49cba0, 0xb49cba4 and 0xb49cba8, and at 0xb49cbb0 in the delay slot of the
  `jr ra` at 0xb49cbac. The routine hands back the doubleword at 0x1038.
  The exit is `ld` t9 from v1 +0x20 at 0xb49cbb4, then `jr t9` at 0xb49cbb8, with a0 to a3 as called
  and the halfwords in a4 to a7.
  Unknown: the routine behind the `jr t9` at 0xb49cbb8; a run that dumps the doubleword at 0x1040 plus
  0x20 would settle it.
  Evidence grade: established.
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
- `__glOdylc_Color3b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda50eb0 (n32).
  Appends a four-word record built from a0, a1, a2 and a constant header to the buffer whose write
  pointer is the word at absolute 0x1030, making room first through `__glSPDlistSpace` when the word
  at 0x1028 is too small. At entry the word at +0x13cc of the record that the word at 0x1010 points
  to is loaded (0xda50ebc), has 0x10000 ORed in, and is stored back (`sw` at 0xda50ec8). The routine
  then computes a pad of 1 word when bit 0x4 of the pointer at 0x1030 is set and the word at 0x1034
  is zero, else 0 (between 0xda50ed8 and 0xda50ee8). If the word at 0x1028, as a signed value, is
  below 4 plus the pad, the call at 0xda50f18 runs with a0 zero and a1 to a3 unchanged; a zero
  return (`beq` at 0xda50f38) jumps to 0xda50fa4, where the `sw` stores the old pointer less 4 to
  0x1030, the `sw` at 0xda50fc0 adds 1 to the word at 0x1028, and the routine returns the callee's
  value. A nonzero return falls to 0xda50f40, which reloads the pointer at 0x1030 and sets the pad
  to 1 when bit 0x4 of it is set, else keeps the earlier pad. When the word at 0x1028 is large
  enough (`beq` at 0xda50efc taken) the call is skipped. The shared block at 0xda50f50 stores a2, a1
  and a0 at +0xc, +0x8 and +0x4 of the pointer plus four times the pad, and stores the constant
  0xffffffffc580cc0b (built from 0xc580 and 0xcc0b) at +0x0 (`sw` at 0xda50f64, 0xda50f68, 0xda50f70
  and 0xda50f78). The `sw` at 0xda50f80 then writes the word at 0x1028 (or the callee's return) less
  the pad less 4 to 0x1028, the `sw` at 0xda50f88 writes the record address plus 0x10 to 0x1030, and
  the `sw` at 0xda50fa0, in the delay slot of the return, adds 4 to the word at 0x1034. This path
  returns the word loaded from 0x1028 when the call was skipped, otherwise the callee's value.
  Inferred: 0x1030 holds a write pointer into a display-list buffer and 0x1028 a count of free
  words, since a record moves the pointer on by 0x10, takes the pad plus 4 off the count, and a
  short count leads to `__glSPDlistSpace`.
  Unknown: how the header word 0xffffffffc580cc0b divides into fields; a header-field table in the
  board's command-format datasheet would settle it.
  Evidence grade: inferred.
- `__glOdylc_Color3b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb335390 (n64).
  Appends a four-word record (a header constant followed by the arguments a0, a1 and a2) at the position
  held in the doubleword at absolute 0x1058, after making sure the word at 0x1048 allows it, and sets a
  flag bit in a structure reached through the doubleword at 0x1020.
  The flag: the word at offset 0x15ec from the doubleword at 0x1020 is loaded at 0xb33539c, ORed with
  0x10000 and stored back by the `sw` at 0xb3353a8.
  Before the check the routine computes a pad of 1 or 0: 1 when bit 0x4 of the 0x1058 doubleword is set
  and the word at 0x1060 is zero, otherwise 0. The `beq` at 0xb3353dc is taken, straight to the record
  stores, when the 0x1048 word is at least that pad plus 4 (signed compare); otherwise `__glSPDlistSpace`
  is called with a0 zero (`jalr` at 0xb3353f8) after the arguments are parked in the frame.
  Inferred: the 0x1048 word is a count of remaining words and the pad is one word that rounds the record
  start up to an 8-byte boundary, because the check needs the pad plus 4 words, the pad is 1 only when the
  address has bit 0x4 set, and the record stores then reduce the word by 4 plus the pad.
  A zero result (`beq` at 0xb335418) goes to the `sd` at 0xb335484, which stores the old 0x1058 doubleword
  minus 4 back to 0x1058, and the `jr ra` at 0xb33549c whose delay slot `sw` at 0xb3354a0 stores the 0x1048
  word plus 1; no record is written on that path and v0 holds the callee's zero.
  A nonzero result reloads the 0x1058 doubleword (0xb335420) and sets the pad to 1 if bit 0x4 of it is set,
  keeping the earlier pad otherwise, then joins the direct path.
  The record starts at the 0x1058 doubleword plus 4 times the pad, not at the doubleword itself: the
  stores at 0xb335444, 0xb335448 and 0xb335450 put a2, a1 and a0 at +0xc, +0x8 and +0x4, and the `sw` at
  0xb335458 puts 0xffffffffc580cc0b (0xc580 and 0xcc0b built at 0xb33544c and 0xb335454) at +0x0.
  Afterwards the `sw` at 0xb335460 stores the 0x1048 word, or the callee result when the call ran, minus
  the pad minus 4; the `sd` at 0xb335468 stores the record address plus 0x10 into 0x1058; and the `sw` at
  0xb335480, which runs in the delay slot of the `jr ra` at 0xb33547c, raises the word at 0x1060 by 4.
  Per the existing note on `__glSPDlistSpace`, that callee reads the doubleword at 0x1020 and then makes
  an indirect call at 0x328fda0.
  Unknown: the target of that indirect call at 0x328fda0, whose result picks the zero or nonzero path in
  this routine; the entry for `__glSPDlistSpace` itself would settle it.
  Evidence grade: inferred.
- `__glOdylc_Normal3b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2209300 (n64).
  Appends a four-word record to the area addressed by the doubleword at absolute 0x1058: a header constant
  and then the arguments a0, a1 and a2, each stored as a word. Before writing it checks the word at 0x1048
  against what the record needs, and calls `__glSPDlistSpace` when that is not enough.
  The pad: the routine starts with a pad of 0, and on the path where the word at 0x1060 is zero (`beq` at
  0x2209328) it sets the pad to 1 if bit 0x4 of the 0x1058 doubleword is set. That path then goes to the
  record stores when the 0x1048 word is at least the pad plus 4 (`beq` at 0x22093f0), and otherwise to the
  call. When the 0x1060 word is nonzero the pad stays 0 and the test is the 0x1048 word against 4 alone
  (`beq` at 0x2209334, taken to the record stores when it is at least 4).
  Inferred: the 0x1048 word is a count of remaining words and the pad is one word that rounds the record
  start up to an 8-byte boundary, because the pad is 1 only when the address has bit 0x4 set and the
  record stores later lower the word by 4 plus the pad.
  The call (`jalr` at 0x2209354) passes a0 zero, with a0, a1 and a2 held in the frame meanwhile. A zero
  result (`beq` at 0x2209370) goes to the `sd` at 0x2209410, which writes the 0x1058 doubleword back as it
  was loaded at 0x220931c minus 4, and then the `sw` at 0x2209424 stores the 0x1048 word plus 1 before the
  return; v0 is the zero from the call and nothing is written to the record. A nonzero result reloads the
  0x1058 doubleword (`ld` at 0x2209378), sets the pad to 1 if bit 0x4 of it is set, and joins the record
  path.
  The record base in a7 is the 0x1058 doubleword plus 4 times the pad. The `sw` at 0x22093a4 writes
  0xffffffffc180cc16 (0xc180 and 0xcc16 built at 0x220939c and 0x22093a0) at +0x0, and the stores at
  0x22093a8, 0x22093ac and 0x22093b0 write a0, a1 and a2 at +0x4, +0x8 and +0xc. The `sd` at 0x22093b8
  stores a7 plus 0x10 to 0x1058; the `sw` at 0x22093c4 stores the 0x1048 word, or the call result when the
  call ran, minus the pad minus 4; and the `sw` at 0x22093d4, in the delay slot of the `jr ra` at
  0x22093d0, adds 4 to the word at 0x1060.
  The callee note for `__glSPDlistSpace` records a read of the doubleword at 0x1020 and an indirect call at
  0x328fda0 whose own target stays open.
  Unknown: the outcome of the indirect call at 0x328fda0 inside `__glSPDlistSpace`, which sets the result
  that decides between the zero and nonzero paths here; the content of that callee is the route.
  Evidence grade: inferred.
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
- `__glOdylc_Normal3b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaa87a0 (n32).
  Queues one four-word record (a constant header plus a0, a1 and a2) at the pointer held in the word
  at absolute 0x1030, after making room through `__glSPDlistSpace` if the word at 0x1028 is short.
  It first loads the pointer at 0xdaa87a8, the word at 0x1034 and the word at 0x1028, and works out
  a pad of 1 word when bit 0x4 of the pointer is set and the word at 0x1034 is zero, else 0 (from
  0xdaa87b4 on). The `beq` at 0xdaa87d8 avoids the call if the signed word at 0x1028 is 4 plus the
  pad or more. Otherwise the call at 0xdaa87f4 runs with a0 zeroed and a1 and a2 restored from the
  frame. A zero return (`beq` at 0xdaa880c) jumps to 0xdaa8878, where the `sw` at 0xdaa8880 writes
  the pointer loaded at 0xdaa87a8, less 4, to 0x1030 and the `sw` at 0xdaa889c adds 1 to the word at
  0x1028, with `jr ra` at 0xdaa8898 returning the callee's value. After a nonzero return the pointer
  is read again at 0xdaa8814; bit 0x4 of it sets the pad to 1, and without that bit the earlier pad
  stays. At 0xdaa8824 the record address `a3` is the pointer plus four times the pad (0xdaa882c).
  The header 0xffffffffc180cc16 (built at 0xdaa883c and 0xdaa8840 from 0xc180 and 0xcc16) goes to
  +0x0 (`sw` at 0xdaa8844) and a0, a1 and a2 go to +0x4, +0x8 and +0xc (`sw`s at 0xdaa8848,
  0xdaa884c and 0xdaa8850). The `sw` at 0xdaa8858 stores `a3` plus 0x10 to 0x1030, the `sw` at
  0xdaa8864 stores the space value (the word at 0x1028, or the callee's return) less the pad less 4
  to 0x1028, and the `sw` at 0xdaa8874 in the return's delay slot writes the word at 0x1034 plus 4,
  which is also left in v0.
  Inferred: a display-list write pointer sits at 0x1030 and the number of free words at 0x1028; the
  evidence is the cursor step of 0x10, the counter drop of the pad plus 4 and the `__glSPDlistSpace`
  call on a low count.
  Unknown: which parts of the leading word 0xffffffffc180cc16 select the record type and size; the
  board's datasheet table of command words would settle it.
  Evidence grade: inferred.
- `__glOdylc_Normal3s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2209ce0 (n64).
  Writes one four-word record to the area addressed by the doubleword at absolute 0x1058, made of a header
  constant and the arguments a0, a1 and a2 stored as words, and keeps the words at 0x1048 and 0x1060 up to
  date; when the 0x1048 word is too small it first calls `__glSPDlistSpace`.
  Room check, in order: with the 0x1060 word nonzero (`beq` at 0x2209d08 not taken) the pad is 0 and the
  `beq` at 0x2209d14 sends the routine to the record stores when the 0x1048 word is at least 4; with it
  zero, the pad is 1 if bit 0x4 of the 0x1058 doubleword is set, else 0, and the `beq` at 0x2209dd0 sends
  it to the record stores when the 0x1048 word is at least the pad plus 4. In either case a shortfall
  leads to the call.
  Inferred: the pad is one word that rounds the record start up to an 8-byte boundary and the 0x1048
  word counts the words left, because the pad is 1 only when the address has bit 0x4 set and the record
  stores subtract 4 plus the pad from the word.
  `__glSPDlistSpace` is entered by the `jalr` at 0x2209d34, a0 cleared; a0, a1 and a2 wait in the frame. If it returns zero
  (`beq` at 0x2209d50) the routine jumps to the `sd` at 0x2209df0, storing the 0x1058 doubleword as loaded
  at 0x2209cfc less 4, and the `sw` at 0x2209e04 adds 1 to the 0x1048 word; the record is not written and
  v0 stays zero. Any other result is taken as the new count: the `ld` at 0x2209d58 reloads the 0x1058
  doubleword, the pad becomes 1 if its bit 0x4 is set, and the record stores follow.
  Record stores go through a7, the 0x1058 doubleword plus 4 times the pad: 0xffffffffc180cc17 (from 0xc180
  at 0x2209d7c and 0xcc17 at 0x2209d80) at +0x0 by the `sw` at 0x2209d84, and a0, a1, a2 at +0x4, +0x8,
  +0xc by the stores at 0x2209d88 to 0x2209d90. The `sd` at 0x2209d98 moves 0x1058 to a7 plus 0x10, the
  `sw` at 0x2209da4 sets the 0x1048 word to its old value (or the call result) less the pad and less 4,
  and the `sw` at 0x2209db4 in the delay slot of the `jr ra` at 0x2209db0 adds 4 to the 0x1060 word.
  The existing note on `__glSPDlistSpace` lists a read of the doubleword at 0x1020 and an indirect call at
  0x328fda0.
  Unknown: where the indirect call at 0x328fda0 leads, since its result decides the zero or nonzero path
  above; the entry for `__glSPDlistSpace` is the place to look.
  Evidence grade: inferred.
- `__glOdylc_TexCoord1d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9de5b0 (o32).
  Emits a two-word record through the pointer in the word at absolute 0x1030 (loaded at 0xd9de5d0,
  re-read at 0xd9de64c once the call has returned). The constant 0xffffffffc380c41f goes to the
  first slot (`sw` at 0xd9de674). A single-precision copy of the double in f12 goes to +0x4 (`swc1`
  at 0xd9de678), the conversion sitting in the delay slot at 0xd9de5fc, the delay slot at 0xd9de658
  or at 0xd9de660, so it is done whichever way the code arrives. Four times a1 bytes are added to
  the pointer to find the record, a1 holding 0 or 1: it holds 1 once the word at 0x1034 is zero and
  bit 0x4 of the pointer is set (`bnez` at 0xd9de5d8, `beql` at 0xd9de5e4), or when the reloaded
  pointer shows that bit set (`beql` at 0xd9de654). The word at 0x1028 is read into a0 at 0xd9de5d4;
  if it is under a1 plus 2 (`beql` at 0xd9de5f8 not taken) the routine calls `__glSPDlistSpace` at
  0xd9de610 with a0 0, a1 as computed and a2 0x1028, keeping f12 across the call (`sdc1` at
  0xd9de614, `ldc1` at 0xd9de628), and the returned value takes over as the count in a0 (delay slot
  of the `bnez` at 0xd9de62c). Returning zero stores the pre-call pointer minus 4 to 0x1030 (`sw` at
  0xd9de63c) and lifts the word at 0x1028 by one in the delay slot at 0xd9de648, with no record
  written. Otherwise the closing stores add 2 to the word at 0x1034 (`sw` at 0xd9de690), set 0x1030
  to the record base plus 8 (`sw` at 0xd9de694) and set 0x1028 to a0 less a1 less 2 (`sw` at
  0xd9de698).
  Inferred: the pair of words at 0x1030 and 0x1028 behaves as a pointer into a buffer and the space
  left in it, because both shift together by the size of what was written.
  Unknown: the content of the routine at 0xda0f8cc and its returned value; the committed note is for
  the IP30ODSY64 build alone, and a note for this build's copy would settle both.
  Unknown: if the memory reached through 0x1030 belongs to a device; the bundle has no linked row or
  datasheet line for that range.
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
- `__glOdylc_TexCoord1d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2210920 (n64).
  Takes one double precision argument in f12 and appends a two-word record to the area addressed by the
  doubleword at absolute 0x1058: a header constant, then the argument narrowed to single precision. The
  words at 0x1048 and 0x1060 are updated around it, and `__glSPDlistSpace` is called first when the 0x1048
  word is too small.
  Space test: with the 0x1060 word nonzero (the `beq` at 0x221094c not taken) the pad is 0 and the `beq` at
  0x2210958 goes straight to the record stores when the 0x1048 word is at least 2. With it zero, the pad
  is 1 when bit 0x4 of the 0x1058 doubleword is set and otherwise 0, and the `beq` at 0x2210a00 goes to the
  record stores when the 0x1048 word is at least the pad plus 2. A shortfall on either route saves f12 in
  the frame (`sdc1` at 0x2210960 or 0x2210a08) and calls.
  Inferred: the 0x1048 word counts words left and the pad rounds the record start up to an 8-byte boundary,
  because the record stores lower the word by 2 plus the pad and the pad is 1 only with bit 0x4 set.
  The `jalr` at 0x2210970 makes the call, clearing a0 in its delay slot. A zero result (`beq` at 0x2210984) jumps to the `sd`
  at 0x2210a18, which stores the 0x1058 doubleword loaded at 0x221093c less 4, and the `sw` at 0x2210a2c
  adds 1 to the 0x1048 word; the record is skipped. A nonzero result reloads the 0x1058 doubleword (`ld`
  at 0x221098c), sets the pad to 1 if its bit 0x4 is set, and goes on to the record with the double
  that the `ldc1` at 0x2210980 reloaded from the frame.
  The base of the record is a4, the 0x1058 doubleword plus 4 times the pad. The `sw` at 0x22109bc puts
  0xffffffffc380c41f (0xc380 and 0xc41f) at +0x0, and the `swc1` at 0x22109c0 puts the single precision
  value, the conversion of the argument double (f12, or its copy reloaded after the call), at +0x4. The
  `sd` at 0x22109c8 sets 0x1058 to a4 plus 8, the `sw` at 0x22109d4 stores the 0x1048 word (or the call
  result) less the pad and less 2, and the `sw` at 0x22109e4, in the delay slot of the `jr ra` at
  0x22109e0, adds 2 to the 0x1060 word.
  Per the existing note on `__glSPDlistSpace`, that callee reads the doubleword at 0x1020 and makes an
  indirect call.
  Unknown: what the indirect call inside `__glSPDlistSpace` reaches, because its result picks between the zero and
  nonzero cases above; the entry for `__glSPDlistSpace` would settle it.
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
- `__glOdylc_TexCoord1d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaaf900 (n32).
  Queues a two-word record, a constant header and the double-precision argument in `$f12` narrowed
  to single precision, at the pointer held in the word at absolute 0x1030, after making room through
  `__glSPDlistSpace` if the word at 0x1028 is short. The routine loads the pointer (0xdaaf908), the
  word at 0x1034 (0xdaaf910) and the word at 0x1028 (0xdaaf91c), and sets a pad of 1 word when bit
  0x4 of the pointer is set and the word at 0x1034 is zero, else 0. A signed 0x1028 word of at least
  2 plus the pad takes the `beq` at 0xdaaf93c past the call. Otherwise the call at 0xdaaf950 runs
  with a0 zeroed and the double saved in the frame (`sdc1` at 0xdaaf94c, reloaded at 0xdaaf958).
  Returning zero from the callee (`beq` at 0xdaaf960) ends at 0xdaaf9c8, which restores 0x1030 to
  the old pointer less 4 (`sw` at 0xdaaf9d0), bumps the 0x1028 word by 1 (`sw` at 0xdaaf9ec), and
  passes the zero back in v0. The pointer reloaded at 0xdaaf968 after a nonzero return raises the
  pad to 1 when bit 0x4 is set and leaves the earlier pad otherwise. Here `a0` is the append
  address, the pointer with the pad word count scaled by 4 added. The header 0xffffffffc380c41f
  (built at 0xdaaf990 and 0xdaaf998 from 0xc380 and 0xc41f) goes to +0x0 (`sw` at 0xdaaf99c) and the
  narrowed double (converted into `$f0` just before the header `ori`) goes to +0x4 (`swc1` at
  0xdaaf9a0). The `sw` at 0xdaaf9a8 stores the record address plus 8 to 0x1030, the `sw` at
  0xdaaf9b4 stores the space value (the word at 0x1028, or the callee's return) less the pad less 2
  to 0x1028, and the `sw` at 0xdaaf9c4 in the return's delay slot writes the word at 0x1034 plus 2,
  which `jr ra` at 0xdaaf9c0 returns in v0.
  Inferred: the routine treats 0x1030 as the next free slot of a display list and 0x1028 as the room
  left, since the slot moves by 8, the room shrinks by the pad plus 2, and `__glSPDlistSpace` is
  called when the room is short.
  Unknown: the field breakdown of 0xffffffffc380c41f, the first word of the record; the command-
  format datasheet for the board would settle it.
  Evidence grade: inferred.
- `__glOdylc_TexCoord1dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9de6ac (o32).
  Reads the double that a0 points at, narrows it to single precision and stores it as the second
  word of a two-word record. The argument pointer is saved at 0xd9de6c4 and reloaded at 0xd9de76c,
  `ldc1` at 0xd9de778 fetches the double, and the `swc1` at 0xd9de784 writes the narrowed float to
  +0x4. A fixed header, 0xffffffffc380c41f, is written to word 0 by the `sw` at 0xd9de768. The
  record lies a2 times four bytes past the pointer in the word at absolute 0x1030 (`lw` at
  0xd9de6d0, again at 0xd9de744 after the call). a2 is 1 after the tests at `bnez` 0xd9de6d8 and
  `beql` 0xd9de6e4 find 0x1034 zero and bit 0x4 of the pointer set, or when `beql` 0xd9de74c finds
  that bit set in the reloaded pointer; otherwise it is 0. The count in a1 is the word at 0x1028
  (`lw` at 0xd9de6d4). When that is below a2 plus 2 (`beql` at 0xd9de6f8 falls through)
  `__glSPDlistSpace` is invoked at 0xd9de70c with a0 0, a1 the count, a2 the flag and a3 0x1028, and
  its return value replaces a1 (delay slot at 0xd9de728). A zero return stores the pre-call pointer
  minus 4 to 0x1030 (`sw` at 0xd9de734), writes the word at 0x1028 plus one (`sw` at 0xd9de740,
  delay slot of the branch at 0xd9de73c) and exits with no record. Last come the record base plus 8
  into 0x1030 (`sw` at 0xd9de78c), a1 less a2 less 2 into 0x1028 (`sw` at 0xd9de790) and a 2 added
  to 0x1034 (`sw` at 0xd9de798).
  Inferred: a buffer cursor sits at 0x1030 and the words remaining sit at 0x1028, as the tail adds
  the record length to one and subtracts it from the other.
  Unknown: the result the routine at 0xda0f8cc hands back and the work it does first; the IP30ODSY64
  build has the only committed note.
  Unknown: the device, if any, that owns the memory the pointer at 0x1030 addresses; no datasheet
  excerpt names it.
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
- `__glOdylc_TexCoord1dv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaaf9f0 (n32).
  Appends a two-word record to the buffer addressed by the word at absolute 0x1030: a constant
  header, then the double that a0 points to rounded to single precision. `__glSPDlistSpace` is
  called beforehand if the word at 0x1028 is too small. The routine loads the pointer (0xdaaf9f8),
  the word at 0x1034 (0xdaafa00) and the word at 0x1028 (0xdaafa0c), and sets a pad of 1 when bit
  0x4 of the pointer is set and the word at 0x1034 is zero, else 0. At 0xdaafa28 a `beq` jumps over
  the call when the 0x1028 word, signed, is not below 2 plus the pad. Otherwise the call at
  0xdaafa3c runs with a0 zeroed, and a0 is reloaded from the frame afterwards (0xdaafa44). If the
  callee returns zero (`beq` at 0xdaafa4c), 0xdaafab8 runs; it stores the old pointer less 4 to
  0x1030 (`sw` at 0xdaafac0), increments the 0x1028 word (`sw` at 0xdaafadc) and hands back the
  callee's value. A nonzero return reloads the pointer at 0xdaafa54 and sets the pad to 1 when its
  bit 0x4 is set. In `a1` the record address is built as pointer + (pad << 2). The `sw` at 0xdaafa74
  stores the header 0xffffffffc380c41f at +0x0; the `ldc1` at 0xdaafa78 loads the double from a0 and
  the `swc1` at 0xdaafa90 stores the narrowed value at +0x4. The `sw` at 0xdaafa98 stores the record
  address plus 8 to 0x1030, the `sw` at 0xdaafaa4 stores the space value (the word at 0x1028, or the
  callee's return) less the pad less 2 to 0x1028, and the `sw` at 0xdaafab4 in the return's delay
  slot writes the word at 0x1034 plus 2, which is also left in v0.
  Inferred: this is a buffer append, with the pointer at 0x1030 stepping 8 per record and the free-
  word count at 0x1028 falling by the pad plus 2; the `__glSPDlistSpace` call on a short count is
  the reason for that reading.
  Unknown: what bit layout 0xffffffffc380c41f has as a command word; a section of the board
  datasheet on command encodings would settle it.
  Evidence grade: inferred.
- `__glOdylc_TexCoord1dv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb395030 (n64).
  Takes a pointer in a0 to one double, and appends a two-word record to the area addressed by the
  doubleword at absolute 0x1058: a header constant, then that double narrowed to single precision. It
  calls `__glSPDlistSpace` first when the word at 0x1048 cannot hold the record.
  The pad and the test come before any call. The routine reads the 0x1058 doubleword (0xb395038), the word
  at 0x1060 and the word at 0x1048 (0xb39504c), then sets the pad to 1 if bit 0x4 of the 0x1058
  doubleword is set and the 0x1060 word is zero, else 0. The `beq` at 0xb395068 skips the call when the
  0x1048 word is at least the pad plus 2.
  Inferred: the pad is a word of alignment to an 8-byte boundary and the 0x1048 word is a tally of words
  left; the pad is 1 only when address bit 0x4 is set, and the 0x1048 word is lowered by the pad plus 2
  per record.
  Otherwise a0 is saved to the frame, and the `jalr` at 0xb39507c runs with a0 zero. A zero result (`beq`
  at 0xb39508c) goes to the `sd` at 0xb395100, which stores the earlier 0x1058 doubleword less 4, and the
  `sw` at 0xb39511c in the return's delay slot, which raises the 0x1048 word by 1; no record is written.
  A nonzero result reloads the 0x1058 doubleword (0xb395094) and makes the pad 1 if its bit 0x4 is set.
  Record writing then uses a1, the 0x1058 doubleword plus 4 times the pad: the `sw` at 0xb3950b4 stores
  0xffffffffc380c41f at +0x0, and the `swc1` at 0xb3950d0 stores at +0x4 the double loaded by the `ldc1`
  at 0xb3950b8 from a0 +0x0 and narrowed to single precision. The `sd` at 0xb3950d8 sets 0x1058 to a1 plus
  8, the `sw` at 0xb3950e4 stores the 0x1048 word (or the call result) less the pad and less 2, and the
  `sw` at 0xb3950f4, in the delay slot of the `jr ra`, adds 2 to the 0x1060 word, which is also left in v0.
  Unknown: the destination of the indirect call that `__glSPDlistSpace` makes at 0x328fda0, which gives
  this routine its zero or nonzero result; its own entry is the route.
  Evidence grade: inferred.
- `__glOdylc_TexCoord1f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2210b60 (n64).
  Pushes a two-word record to a list whose current end is the doubleword at absolute 0x1058,
  opening with the constant 0xffffffffc380c41f (the `sw` at 0x2210bf8). It continues with the
  single-precision argument in f12 (the `swc1` at 0x2210bfc). Inferred: the word at absolute 0x1048
  counts free words, because the routine checks it with 2 plus a flag, calls `__glSPDlistSpace`
  when it is too small, and then reduces it by the 2 words written plus the flag. If the word at
  absolute 0x1060 is zero (the `beq` at 0x2210b8c), the flag is 1 if bit 0x4 of the cursor is set,
  and the `beq` at 0x2210c3c avoids the call when the word at 0x1048 is at least flag plus 2. When
  0x1060 is nonzero the flag is 0 and the `beq` at 0x2210b98 skips the call when the word at 0x1048
  is at least 2. With too little room, f12 waits in the frame during the call, and the `jalr` at
  0x2210bb0 calls `__glSPDlistSpace` with a0 zero in the delay slot. A zero return goes at
  0x2210bc4 to the block at 0x2210c50, which reduces the cursor by 4 (`sd` at 0x2210c54), raises
  the word at 0x1048 by 1 (`sw` at 0x2210c68) and hands back the zero with no record written. A
  nonzero return rereads the cursor at 0x2210bcc and sets the flag to 1 when its bit 0x4 is set.
  The tail at 0x2210bdc puts the record at cursor plus 4 times the flag, saves record plus 8 back
  to the cursor (`sd` at 0x2210c04), stores the word at 0x1048 (its first value, or the call's
  return) minus the flag minus 2 (`sw` at 0x2210c10), and adds 2 to the word at 0x1060 (`sw` at
  0x2210c20). v0 is not touched at the `jr` at 0x2210c1c: it retains the 0x136358 set at 0x2210b80
  when the call is skipped, and the call's return otherwise. Unknown: which structure of the
  absolute words 0x1048, 0x1058 and 0x1060 is open, since neither a linked register row nor a
  datasheet excerpt names them.
  Evidence grade: inferred.
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
- `__glOdylc_TexCoord1f` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb395120 (n64).
  Pushes a two-word record to a buffer whose fill pointer is the doubleword at absolute 0x1058,
  opening with the constant 0xffffffffc380c41f (the `sw` at 0xb3951b8). Next in the record come the
  single-precision argument in f12 (the `swc1` at 0xb3951bc). Inferred: the word at absolute 0x1048
  counts free words, because the routine compares it with 2 plus a flag, calls `__glSPDlistSpace`
  when it is too small, and ends by lowering it by the 2 words written plus the flag. The flag is 1
  when bit 0x4 of the cursor is set, and falls back to 0 when the word at absolute 0x1060 is
  nonzero. The `beq` at 0xb39515c bypasses the call when the word at 0x1048 is at least flag plus
  2. Otherwise, f12 waits in the frame (the `sdc1` at 0xb39516c, reloaded by the `ldc1` at
  0xb395178), and the `jalr` at 0xb395170 calls `__glSPDlistSpace` with a0 zero in the delay slot.
  A zero return goes at 0xb395180 to the block at 0xb3951e4, which reduces the cursor by 4 (`sd` at
  0xb3951ec), raises the word at 0x1048 by 1 (`sw` at 0xb395208) and returns the call's zero with
  no record written. A nonzero return reloads the cursor at 0xb395188 and promotes the flag to 1
  when its bit 0x4 is set. The tail at 0xb395198 writes the record at cursor plus 4 times the flag,
  stores record plus 8 back to the cursor (`sd` at 0xb3951c4), stores the word at 0x1048 (its first
  value, or the call's return) minus the flag minus 2 (`sw` at 0xb3951d0), and adds 2 to the word
  at 0x1060 (`sw` at 0xb3951e0). That sum is passed out in v0 (`jr` at 0xb3951dc). Unknown: which
  structure of the absolute words 0x1048, 0x1058 and 0x1060 is unnamed, since neither a linked
  register row nor a datasheet excerpt lists them.
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
- `__glOdylc_TexCoord1fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2210c80 (n64).
  Adds a two-word record to a buffer whose current end is the doubleword at absolute 0x1058,
  opening with the constant 0xffffffffc380c41f (the `sw` at 0x2210d10). Next in the record come the
  single-precision value that a0 points to (the `lwc1` at 0x2210d14, the `swc1` at 0x2210d1c).
  Inferred: the word at absolute 0x1048 tracks free space in words, because the routine compares it
  with 2 plus a flag, enters `__glSPDlistSpace` when it is smaller, and then reduces it by the 2
  words written plus the flag. When the word at absolute 0x1060 is zero (the `beq` at 0x2210ca8),
  the flag is 1 if bit 0x4 of the cursor is set, and the `beq` at 0x2210d5c skips the call when the
  word at 0x1048 is at least flag plus 2. If 0x1060 is nonzero the flag is 0 and the `beq` at
  0x2210cb4 bypasses the call when the word at 0x1048 is at least 2. Otherwise, a0 is saved in the
  frame (0x2210cbc) and restored at 0x2210cdc, and the `jalr` at 0x2210ccc invokes
  `__glSPDlistSpace` with a0 zero in the delay slot. A zero return goes at 0x2210ce0 to the block
  at 0x2210d70, which steps back the cursor by 4 (`sd` at 0x2210d74), bumps the word at 0x1048 by 1
  (`sw` at 0x2210d88) and returns the call's zero with no record written. A nonzero return fetches
  again the cursor at 0x2210ce8 and forces the flag to 1 when its bit 0x4 is set. The tail at
  0x2210cf8 lays down the record at cursor plus 4 times the flag, writes record plus 8 back to the
  cursor (`sd` at 0x2210d24), writes the word at 0x1048 (its first value, or the call's return)
  minus the flag minus 2 (`sw` at 0x2210d30), and adds 2 to the word at 0x1060 (`sw` at 0x2210d40).
  v0 is not touched at the `jr` at 0x2210d3c: it holds the 0x136238 set at 0x2210ca0 when the call
  is skipped, and the call's return otherwise. Unknown: the owning structure of the absolute words
  0x1048, 0x1058 and 0x1060 is unresolved, as none of the linked rows or excerpts gives them.
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
- `__glOdylc_TexCoord1fv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb395210 (n64).
  Appends a two-word record to a list whose fill pointer is the doubleword at absolute 0x1058,
  opening with the constant 0xffffffffc380c41f (the `sw` at 0xb3952a0). The rest of the record is
  the single-precision value that a0 points to (the `lwc1` at 0xb3952a4, the `swc1` at 0xb3952ac).
  Inferred: the word at absolute 0x1048 counts free words, because the routine compares it with 2
  plus a flag, calls `__glSPDlistSpace` when it is smaller, and finally lowers it by the 2 words
  written plus the flag. The flag starts as 1 when bit 0x4 of the cursor is set, and is reset to 0
  when the word at absolute 0x1060 is nonzero. The `beq` at 0xb395248 skips the call when the word
  at 0x1048 is at least flag plus 2. If room is short, a0 is saved in the frame (0xb395254) and
  restored at 0xb395264, and the `jalr` at 0xb39525c invokes `__glSPDlistSpace` with a0 zero in the
  delay slot. A zero return goes at 0xb39526c to the block at 0xb3952d4, which reduces the cursor
  by 4 (`sd` at 0xb3952dc), bumps the word at 0x1048 by 1 (`sw` at 0xb3952f8) and returns the
  call's zero with no record written. A nonzero return reads back the cursor at 0xb395274 and sets
  the flag to 1 when its bit 0x4 is set. The tail at 0xb395284 emits the record at cursor plus 4
  times the flag, saves record plus 8 back to the cursor (`sd` at 0xb3952b4), stores the word at
  0x1048 (its first value, or the call's return) minus the flag minus 2 (`sw` at 0xb3952c0), and
  adds 2 to the word at 0x1060 (`sw` at 0xb3952d0). This total is passed out in v0 (`jr` at
  0xb3952cc). Unknown: the home of the absolute words 0x1048, 0x1058 and 0x1060 is not stated, as
  no linked register row or datasheet excerpt gives them.
  Evidence grade: inferred.
- `__glOdylc_TexCoord1i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9de9a0 (o32).
  Writes a two-word record. Word 0 is the header 0xffffffffc380c41e (`sw` at 0xd9dea5c). Word 1 is
  the integer argument a0, saved at 0xd9de9b8, reloaded at 0xd9dea60 and stored at +0x4 (`sw` at
  0xd9dea6c). The record base is the pointer in the word at absolute 0x1030 (`lw` at 0xd9de9c4,
  repeated at 0xd9dea38 following the call) offset by 4 when a2 is 1. a2 is raised to 1 if the word
  at 0x1034 is zero and bit 0x4 of the pointer is set (`bnez` at 0xd9de9cc, `beql` at 0xd9de9d8), or
  if the reloaded pointer has that bit set (`beql` at 0xd9dea40). a1 is loaded with the word at
  0x1028 at 0xd9de9c8. A count below a2 plus 2 (the `beql` at 0xd9de9ec does not jump) sends the
  routine through the pointer loaded at 0xd9de9f4 (`jalr` at 0xd9dea00) with a0 0, a1 the count, a2
  the flag and a3 0x1028; the result replaces a1 in the delay slot of the `bnez` at 0xd9dea18. If
  the result is zero, the pointer less 4 goes to 0x1030 (`sw` at 0xd9dea28) and the word at 0x1028
  plus one is stored in the delay slot at 0xd9dea34, and nothing else is written. The normal tail
  stores the record base plus 8 to 0x1030 (`sw` at 0xd9dea78), the old 0x1034 plus 2 to 0x1034 (`sw`
  at 0xd9dea80) and a1 less a2 less 2 to 0x1028 (`sw` at 0xd9dea84).
  Inferred: the word at 0x1030 marks where the next record goes and the word at 0x1028 counts room
  left, since each record advances one and shrinks the other.
  Unknown: the routine at 0xda0f8cc, whose treatment of the four passed values and whose result lack
  a note for this build.
  Unknown: whether hardware sits behind the 0x1030 pointer; neither a linked row nor a datasheet
  line covers 0x1028 to 0x1034.
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
- `__glOdylc_TexCoord1i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2210da0 (n64).
  Appends a two-word record to a buffer whose fill pointer is the doubleword at absolute 0x1058,
  opening with the constant 0xffffffffc380c41e (the `sw` at 0x2210e34). Next in the record come the
  integer argument a0 unchanged (the `sw` at 0x2210e38). Inferred: the word at absolute 0x1048
  holds the remaining room in words, because the routine checks it with 2 plus a flag, calls
  `__glSPDlistSpace` when it is too small, and then reduces it by the 2 words written plus the
  flag. If the word at absolute 0x1060 is zero (the `beq` at 0x2210dc8), the flag is 1 if bit 0x4
  of the cursor is set, and the `beq` at 0x2210e78 skips the call when the word at 0x1048 is at
  least flag plus 2. If 0x1060 is nonzero the flag is 0 and the `beq` at 0x2210dd4 steps past the
  call when the word at 0x1048 is at least 2. When the room is short, a0 is saved in the frame
  (0x2210ddc) and restored at 0x2210dfc, and the `jalr` at 0x2210dec invokes `__glSPDlistSpace`
  with a0 zero in the delay slot. A zero return branches at 0x2210e00 to the block at 0x2210e8c,
  which lowers the cursor by 4 (`sd` at 0x2210e90), increments the word at 0x1048 by 1 (`sw` at
  0x2210ea4) and hands back the zero with no record written. A nonzero return fetches again the
  cursor at 0x2210e08 and sets the flag to 1 when its bit 0x4 is set. The tail at 0x2210e18 writes
  the record at cursor plus 4 times the flag, moves record plus 8 back to the cursor (`sd` at
  0x2210e40), stores the word at 0x1048 (its first value, or the call's return) minus the flag
  minus 2 (`sw` at 0x2210e4c), and adds 2 to the word at 0x1060 (`sw` at 0x2210e5c). v0 is not
  assigned at the `jr` at 0x2210e58: it retains the 0x136118 set at 0x2210dc0 when the call is
  skipped, and the call's return otherwise. Unknown: the home of the absolute words 0x1048, 0x1058
  and 0x1060 is open, as no linked register row or datasheet excerpt gives them.
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
- `__glOdylc_TexCoord1i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb395300 (n64).
  Pushes a two-word record to a list whose fill pointer is the doubleword at absolute 0x1058,
  opening with the constant 0xffffffffc380c41e (the `sw` at 0xb395394). The rest of the record is
  the integer argument a0 unchanged (the `sw` at 0xb395398). Inferred: the word at absolute 0x1048
  counts free words, because the routine compares it with 2 plus a flag, enters `__glSPDlistSpace`
  when it is too small, and ends by lowering it by the 2 words written plus the flag. The flag is 1
  when bit 0x4 of the cursor is set, and is cleared to 0 when the word at absolute 0x1060 is
  nonzero. The `beq` at 0xb395338 avoids the call when the word at 0x1048 is at least flag plus 2.
  With too little room, a0 is saved in the frame (0xb395344) and restored at 0xb395354, and the
  `jalr` at 0xb39534c calls `__glSPDlistSpace` with a0 zero in the delay slot. A zero return goes
  at 0xb39535c to the block at 0xb3953c0, which lowers the cursor by 4 (`sd` at 0xb3953c8),
  increments the word at 0x1048 by 1 (`sw` at 0xb3953e4) and hands back the zero with no record
  written. A nonzero return reads back the cursor at 0xb395364 and raises the flag to 1 when its
  bit 0x4 is set. The tail at 0xb395374 lays down the record at cursor plus 4 times the flag, saves
  record plus 8 back to the cursor (`sd` at 0xb3953a0), stores the word at 0x1048 (its first value,
  or the call's return) minus the flag minus 2 (`sw` at 0xb3953ac), and adds 2 to the word at
  0x1060 (`sw` at 0xb3953bc). That sum is handed back in v0 (`jr` at 0xb3953b8). Unknown: which
  structure of the absolute words 0x1048, 0x1058 and 0x1060 is not stated, as no linked register
  row or datasheet excerpt lists them.
  Evidence grade: inferred.
- `__glOdylc_TexCoord1iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9dea98 (o32).
  Reads one integer word through a0 (`lw` at 0xd9deb64) and stores it at +0x4 of a two-word record
  (`sw` at 0xd9deb6c). Word 0 of that record was written first, with the fixed header
  0xffffffffc380c41e (`sw` at 0xd9deb54). a0 was saved at 0xd9deab0. The record starts at the
  pointer in the word at absolute 0x1030 (`lw` at 0xd9deabc, reloaded at 0xd9deb30 after the call),
  4 bytes further when a2 is 1. a2 gets 1 if the word at 0x1034 is zero and bit 0x4 of the pointer
  is set (`bnez` at 0xd9deac4, `beql` at 0xd9dead0), or if the reloaded pointer has the bit set
  (`beql` at 0xd9deb38). The word at 0x1028 is the count, loaded into a1 at 0xd9deac0. When the
  count is less than a2 plus 2 (the `beql` at 0xd9deae4 does not take), the routine calls through
  the pointer loaded at 0xd9deaec (`jalr` at 0xd9deaf8) with a0 0, a1 the count, a2 the flag and a3
  0x1028, and the returned value goes into a1 (delay slot of the `bnez` at 0xd9deb10). With a zero
  return, the pre-call pointer less 4 is stored to 0x1030 (`sw` at 0xd9deb20) and 0x1028 gets one
  more than its old value (`sw` at 0xd9deb2c, in the delay slot of the branch at 0xd9deb28); no
  record is written. In the normal case the closing stores set 0x1030 to the record base plus 8
  (`sw` at 0xd9deb74), 0x1028 to a1 less a2 less 2 (`sw` at 0xd9deb78) and 0x1034 to its old value
  plus 2 (`sw` at 0xd9deb80).
  Inferred: the pair 0x1030 and 0x1028 acts as buffer cursor plus capacity left, because the record
  length is added to the cursor and taken from the capacity.
  Unknown: the body of the routine called at 0xd9deaf8 and the value it returns; a note for this
  build's copy would settle both.
  Unknown: whether the words at 0x1028, 0x1030 and 0x1034 belong to a device; a linked row or
  datasheet table for that range is the route.
  Evidence grade: inferred.
- `__glOdylc_TexCoord1iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2210ec0 (n64).
  Appends a two-word record to a buffer whose current end is the doubleword at absolute 0x1058,
  opening with the constant 0xffffffffc380c41e (the `sw` at 0x2210f54). Next in the record come the
  32-bit integer that a0 points to (the `lw` at 0x2210f58, the `sw` at 0x2210f5c). Inferred: the
  word at absolute 0x1048 tracks free space in words, because the routine compares it with 2 plus a
  flag, enters `__glSPDlistSpace` when it is smaller, and finally lowers it by the 2 words written
  plus the flag. If the word at absolute 0x1060 is zero (the `beq` at 0x2210ee8), the flag is 1 if
  bit 0x4 of the cursor is set, and the `beq` at 0x2210f9c steps past the call when the word at
  0x1048 is at least flag plus 2. When 0x1060 is nonzero the flag is 0 and the `beq` at 0x2210ef4
  steps past the call when the word at 0x1048 is at least 2. Below that bound, a0 is saved in the
  frame (0x2210efc) and restored at 0x2210f1c, and the `jalr` at 0x2210f0c invokes
  `__glSPDlistSpace` with a0 zero in the delay slot. A zero return goes at 0x2210f20 to the block
  at 0x2210fb0, which reduces the cursor by 4 (`sd` at 0x2210fb4), increments the word at 0x1048 by
  1 (`sw` at 0x2210fc8) and hands back the zero with no record written. A nonzero return reads back
  the cursor at 0x2210f28 and promotes the flag to 1 when its bit 0x4 is set. The tail at 0x2210f38
  writes the record at cursor plus 4 times the flag, writes record plus 8 back to the cursor (`sd`
  at 0x2210f64), stores the word at 0x1048 (its first value, or the call's return) minus the flag
  minus 2 (`sw` at 0x2210f70), and adds 2 to the word at 0x1060 (`sw` at 0x2210f80). v0 is never
  written at the `jr` at 0x2210f7c: it still carries the 0x135ff8 set at 0x2210ee0 when the call is
  skipped, and the call's return otherwise. Unknown: the owner of the absolute words 0x1048, 0x1058
  and 0x1060 is open, because none of the linked rows or excerpts names them.
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
- `__glOdylc_TexCoord1iv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaafdb0 (n32).
  Queues one 32-bit value from the array a0 points to. The absolute word 0x1030 acts as the cursor; the entry
  occupies two words there, a header and the payload.
  The header word is the constant 0xffffffffc380c41e, of which the `sw` at 0xdaafe40 stores the low 32 bits.
  The payload is the word at a0 +0, loaded at 0xdaafe48 and stored unchanged by the `sw` at 0xdaafe4c, 4 bytes
  after the header.
  The entry starts at the cursor plus 4 times a pad flag. The flag is 1 only if bit 0x4 of the cursor is set
  (the mask at 0xdaafdc4) and the word at 0x1034 is zero, because a conditional move zeroes it when 0x1034 is
  nonzero. After a refill call that returns nonzero, the flag becomes 1 whenever the reloaded cursor has bit 0x4
  set (0xdaafe14 to 0xdaafe20), whatever 0x1034 holds.
  Bookkeeping after the stores: 0x1030 gets the entry base plus 8 (`sw` at 0xdaafe54), 0x1028 gets its word
  minus the flag minus 2 (`sw` at 0xdaafe60), and 0x1034 gets its word plus 2 (`sw` at 0xdaafe70), which the
  `jr ra` at 0xdaafe6c returns in v0.
  The `beq` at 0xdaafde8 jumps straight to that path when the signed 0x1028 word is at least the flag plus 2.
  If not, `__glSPDlistSpace` runs at 0xdaafdfc with a0 zero. A zero result (`beq` at 0xdaafe0c) abandons the
  entry: 0x1030 is set to the cursor value read at entry minus 4 (`sw` at 0xdaafe7c), 0x1028 to its reread word
  plus 1 (`sw` at 0xdaafe98), and the zero comes back in v0.
  Inferred: reading 0x1030 as a write cursor, 0x1028 as a space counter and 0x1034 as a running count fits the strides (8 per entry; 2 plus pad; 2); no label in the bundle names them.
  Unknown: the handling inside `__glSPDlistSpace` in this build; its one committed note is for the IP30ODSY64 build and reads the doubleword at absolute 0x1020.
  Evidence grade: inferred.
- `__glOdylc_TexCoord1s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9deb94 (o32).
  Appends a two-word record to the buffer described by the state block at absolute 0x1028 (words at +0x0, +0x8 and +0xc).
  Inferred: 0x1028 holds free space and 0x1030 a write pointer, because the first is compared with the words needed and reduced by them while the second is the base of the record stores.
  The routine picks a2 first: it is 1 when the word at 0x1034 is zero and the pointer has bit 0x4 set (`bne` at 0xd9debc0, `beql` at 0xd9debcc), and 0 otherwise. The record takes a2 plus 2 words.
  Only when the free space is smaller than a2 plus 2 does it call `__glSPDlistSpace` (`jalr` at 0xd9debf4; otherwise the `beql` at 0xd9debe0 jumps over it), passing 0, the free space, a2 and 0x1028.
  A zero return falls through to 0xd9dec14, a block that stores the saved pointer minus 4 to 0x1030 (`sw` at 0xd9dec1c), adds 1 to the word at 0x1028 in the delay slot of the unconditional `b` at 0xd9dec24, and returns without writing the record.
  Any other result is taken as the new free space; the pointer is loaded again at 0xd9dec2c and a2 is redone from its bit 0x4 (`beql` at 0xd9dec34).
  The record goes to the pointer plus a2 times 4. The `sw` at 0xd9dec50 puts the constant 0xffffffffc380c41e in the first word.
  Its second word, at +0x4, is the halfword loaded by the `lh` at 0xd9dec54 from the low half of the saved `a0`, written unchanged by the `sw` at 0xd9dec60.
  Afterwards the pointer plus a2 times 4 plus 8 is stored to 0x1030 (`sw` at 0xd9dec6c), the word at 0x1034 gains 2 (`sw` at 0xd9dec74) and the free space less a2 less 2 is stored to 0x1028 (`sw` at 0xd9dec78).
  Unknown: the owner and layout of the three state words at 0x1028, 0x1030 and 0x1034; a caller's entry would settle it.
  Evidence grade: inferred.
- `__glOdylc_TexCoord1s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2210fe0 (n64).
  Pushes a two-word record to a list whose write cursor is the doubleword at absolute 0x1058,
  opening with the constant 0xffffffffc380c41e (the `sw` at 0x2211074). The rest of the record is
  the whole of a0 as a word (the `sw` at 0x2211078). Inferred: the word at absolute 0x1048 holds
  the remaining room in words, because the routine checks it with 2 plus a flag, calls
  `__glSPDlistSpace` when it is smaller, and finally lowers it by the 2 words written plus the
  flag. If the word at absolute 0x1060 is zero (the `beq` at 0x2211008), the flag is 1 if bit 0x4
  of the cursor is set, and the `beq` at 0x22110b8 bypasses the call when the word at 0x1048 is at
  least flag plus 2. If 0x1060 is nonzero the flag is 0 and the `beq` at 0x2211014 skips the call
  when the word at 0x1048 is at least 2. Otherwise, a0 is saved in the frame (0x221101c) and
  restored at 0x221103c, and the `jalr` at 0x221102c calls `__glSPDlistSpace` with a0 zero in the
  delay slot. A zero return branches at 0x2211040 to the block at 0x22110cc, which reduces the
  cursor by 4 (`sd` at 0x22110d0), bumps the word at 0x1048 by 1 (`sw` at 0x22110e4) and hands back
  the zero with no record written. A nonzero return rereads the cursor at 0x2211048 and forces the
  flag to 1 when its bit 0x4 is set. The tail at 0x2211058 places the record at cursor plus 4 times
  the flag, moves record plus 8 back to the cursor (`sd` at 0x2211080), writes the word at 0x1048
  (its first value, or the call's return) minus the flag minus 2 (`sw` at 0x221108c), and adds 2 to
  the word at 0x1060 (`sw` at 0x221109c). v0 is left unwritten at the `jr` at 0x2211098: it keeps
  the 0x135ed8 set at 0x2211000 when the call is skipped, and the call's return otherwise. Unknown:
  the home of the absolute words 0x1048, 0x1058 and 0x1060 is not stated, as neither a linked
  register row nor a datasheet excerpt gives them.
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
- `__glOdylc_TexCoord1s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3954e0 (n64).
  Adds a two-word record to a buffer whose fill pointer is the doubleword at absolute 0x1058,
  opening with the constant 0xffffffffc380c41e (the `sw` at 0xb395574). It continues with the whole
  of a0 as a word (the `sw` at 0xb395578). Inferred: the word at absolute 0x1048 tracks free space
  in words, because the routine compares it with 2 plus a flag, calls `__glSPDlistSpace` when it is
  too small, and then reduces it by the 2 words written plus the flag. The flag begins as 1 when
  bit 0x4 of the cursor is set, and drops to 0 when the word at absolute 0x1060 is nonzero. The
  `beq` at 0xb395518 steps past the call when the word at 0x1048 is at least flag plus 2. When the
  room is short, a0 is saved in the frame (0xb395524) and restored at 0xb395534, and the `jalr` at
  0xb39552c calls `__glSPDlistSpace` with a0 zero in the delay slot. A zero return branches at
  0xb39553c to the block at 0xb3955a0, which steps back the cursor by 4 (`sd` at 0xb3955a8), bumps
  the word at 0x1048 by 1 (`sw` at 0xb3955c4) and returns the call's zero with no record written. A
  nonzero return fetches again the cursor at 0xb395544 and promotes the flag to 1 when its bit 0x4
  is set. The tail at 0xb395554 emits the record at cursor plus 4 times the flag, moves record plus
  8 back to the cursor (`sd` at 0xb395580), writes the word at 0x1048 (its first value, or the
  call's return) minus the flag minus 2 (`sw` at 0xb39558c), and adds 2 to the word at 0x1060 (`sw`
  at 0xb39559c). The updated count is handed back in v0 (`jr` at 0xb395598). Unknown: the owning
  structure of the absolute words 0x1048, 0x1058 and 0x1060 is unresolved, since none of the linked
  rows or excerpts names them.
  Evidence grade: inferred.
- `__glOdylc_TexCoord1sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9dec8c (o32).
  Appends a two-word record to the buffer described by the state block at absolute 0x1028 (words at +0x0, +0x8 and +0xc), taking the value from a halfword that `a0` points to.
  Inferred: the word at 0x1028 is a free-space count and the word at 0x1030 an address, because the record stores use the loaded 0x1030 value as base and the 0x1028 value is checked against the need and lowered by it.
  A pad register a2 gets 1 when the word at 0x1034 is zero and bit 0x4 of the pointer is set (`bne` at 0xd9decb8, `beql` at 0xd9decc4); otherwise it stays 0, and a2 plus 2 words are needed.
  If the free space is under the need, `__glSPDlistSpace` is called (`jalr` at 0xd9decec) with 0, the free space, a2 and 0x1028; the `beql` at 0xd9decd8 branches past the call when there is room.
  A zero return falls through to 0xd9ded0c, where the `sw` at 0xd9ded14 stores the saved pointer less 4 to 0x1030; the `b` at 0xd9ded1c always branches to the epilogue and its delay slot adds 1 to the word at 0x1028, so no record is written.
  A return other than zero is stored as the free space, and the pointer is fetched again at 0xd9ded24 so that a2 can be recomputed from its bit 0x4 (`beql` at 0xd9ded2c).
  The record lands at the pointer plus a2 times 4. Its first word is the constant 0xffffffffc380c41e (`sw` at 0xd9ded48); its second word, at +0x4, is the halfword loaded by the `lh` at 0xd9ded58 from the start of the array behind the saved `a0`, written unchanged by the `sw` at 0xd9ded60.
  The pointer plus a2 times 4 plus 8 then goes to 0x1030 (`sw` at 0xd9ded68), the free space less a2 less 2 goes to 0x1028 (`sw` at 0xd9ded6c), and the word at 0x1034 gains 2 (`sw` at 0xd9ded74).
  Unknown: the object behind the words at 0x1028, 0x1030 and 0x1034; the entry of a calling routine would settle it.
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
- `__glOdylc_TexCoord1sv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaaff90 (n32).
  Queues a signed halfword. It loads the
  halfword at a0 +0 (`lh` at 0xdab0028) and stores it widened to a full word 4 bytes into the entry (`sw` at
  0xdab002c); a header constant, 0xffffffffc380c41e in its low 32 bits, goes in front of it (`sw` at 0xdab0020).
  The entry base is the cursor in the absolute word 0x1030 plus 4 times a pad flag. The flag is 1 only when the
  cursor has bit 0x4 set and the word at 0x1034 is zero; a nonzero 0x1034 word clears it through a conditional move. After a refill call returns nonzero, the flag is forced to 1 if the reloaded cursor has bit 0x4
  set (reload at 0xdaafff4).
  On the write path the routine finishes with: 0x1030 takes the entry base plus 8 (`sw` at 0xdab0034), 0x1028 takes its word less the
  flag less 2 (`sw` at 0xdab0040), and 0x1034 takes its word plus 2 and also leaves in v0 (`sw` at 0xdab0050,
  `jr ra` at 0xdab004c).
  The refill is bypassed by the `beq` at 0xdaaffc8 when the signed 0x1028 word is at least the flag plus 2;
  when it is not, the routine calls `__glSPDlistSpace` at 0xdaaffdc, passing a0 as zero. When it returns zero (`beq` at 0xdaaffec)
  the entry is dropped: 0x1030 becomes the entry-time cursor minus 4 (`sw` at 0xdab005c), 0x1028 becomes its
  reread word plus 1 (`sw` at 0xdab0078), and v0 is zero.
  Inferred: the stride pattern (cursor up 8, 0x1028 down 2 plus pad) fits a command-buffer write pointer and its free-space count; the bundle gives no register name for either word.
  Unknown: the result `__glSPDlistSpace` computes in this build; no committed note covers it.
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
- `__glOdylc_TexCoord2d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3956c0 (n64).
  Adds a three-word record to a buffer whose write cursor is the doubleword at absolute 0x1058,
  opening with the constant 0xffffffffc380c821 (the `sw` at 0xb395768). Next in the record come the
  two double-precision arguments, each narrowed to single precision: f12 at +4 (the `swc1` at
  0xb395770) and f13 at +8 (the `swc1` at 0xb395774). Inferred: the word at absolute 0x1048 holds
  the remaining room in words, because the routine compares it with 3 plus a flag, calls
  `__glSPDlistSpace` when it is too small, and then reduces it by the 3 words written plus the
  flag. The flag starts as 1 when bit 0x4 of the cursor is set, and is forced to 0 when the word at
  absolute 0x1060 is nonzero. The `beq` at 0xb395700 jumps over the call when the word at 0x1048 is
  at least flag plus 3. If room is short, both arguments are copied to the frame (0xb39570c,
  0xb395714) and reloaded afterwards, and the `jalr` at 0xb395718 calls `__glSPDlistSpace` with a0
  zero in the delay slot. A zero return branches at 0xb39572c to the block at 0xb39579c, which
  steps back the cursor by 4 (`sd` at 0xb3957a4), bumps the word at 0x1048 by 1 (`sw` at 0xb3957c0)
  and hands back the zero with no record written. A nonzero return reloads the cursor at 0xb395734
  and sets the flag to 1 when its bit 0x4 is set. The tail at 0xb395744 puts the record at cursor
  plus 4 times the flag, stores record plus 12 back to the cursor (`sd` at 0xb39577c), writes the
  word at 0x1048 (its first value, or the call's return) minus the flag minus 3 (`sw` at
  0xb395788), and adds 3 to the word at 0x1060 (`sw` at 0xb395798). This total is handed back in v0
  (`jr` at 0xb395794). Unknown: the owning structure of the absolute words 0x1048, 0x1058 and
  0x1060 is open, since no linked register row or datasheet excerpt lists them.
  Evidence grade: inferred.
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
- `__glOdylc_TexCoord3i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdab0cd0 (n32).
  Queues three integer components, passed in a0, a1 and a2, as a four-word entry at the cursor in the
  absolute word 0x1030. The header word at +0 is the constant 0xffffffffc380cc22 (low 32 bits, `sw` at 0xdab0d74);
  the components follow at +4, +8 and +0xc (`sw`s at 0xdab0d78 to 0xdab0d80). The base, held in a3, is the
  cursor plus 4 times a pad flag.
  The flag is 1 when bit 0x4 of the cursor is set and the word at 0x1034 is zero; a conditional move zeroes it if 0x1034 is nonzero. Following a refill call that returned nonzero, a reloaded cursor with bit 0x4 set
  forces the flag to 1 (0xdab0d44 to 0xdab0d50).
  The `beq` at 0xdab0d08 skips the refill when the signed 0x1028 word is at least the flag plus 4. Otherwise
  `__glSPDlistSpace` runs at 0xdab0d24 with a0 zero, and a0 to a2 are reloaded from the frame (0xdab0d2c to
  0xdab0d34), so the entry holds the caller's values on every path.
  If the refill call returns zero (`beq` at 0xdab0d3c) nothing is written and 0x1030 becomes the entry-time cursor minus 4 (`sw` at
  0xdab0db0), 0x1028 its reread word plus 1 (`sw` at 0xdab0dcc), and zero is returned.
  On the write path 0x1030 takes the base plus 0x10 (`sw` at 0xdab0d88), 0x1028 takes the working word less the flag
  less 4 (`sw` at 0xdab0d94), and 0x1034 takes its word plus 4, the value the `jr ra` at 0xdab0da0 returns
  (`sw` at 0xdab0da4).
  Inferred: a cursor advancing 16 with a counter dropping 4 plus pad reads as a command-buffer pointer and free-space count; the bundle carries no name for either.
  Unknown: the device-side result of the refill call `__glSPDlistSpace` in this build.
  Evidence grade: inferred.
- `__glOdylc_TexCoord4i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9e02fc (o32).
  Emits a five-word record carrying the four integer arguments `a0` to `a3` into the buffer that the state block at absolute 0x1028 describes (words at +0x0, +0x8 and +0xc).
  Inferred: 0x1028 counts the words still free and 0x1030 is where the next record goes, since the record stores take the loaded 0x1030 value as their base while the 0x1028 value is compared with the need and reduced by it.
  Register t1 starts as 0 and becomes 1 if the word at 0x1034 is zero and the pointer has bit 0x4 set (`bne` at 0xd9e0334, `beql` at 0xd9e0340); t1 plus 5 words must fit.
  The `beql` at 0xd9e0354 skips the next step when the free space is enough; if not, `__glSPDlistSpace` is called (`jalr` at 0xd9e0368) with a0 set to 0 and a1, a2 and a3 unchanged from entry.
  If it returns zero, the `sw` at 0xd9e0390 writes the saved pointer less 4 back to 0x1030, the `sw` in the delay slot of the always-taken branch at 0xd9e0398 raises the word at 0x1028 by 1, and the routine returns with nothing written.
  Any other return value becomes the new free space, after which the pointer is loaded once more at 0xd9e03a0 and t1 is set again from its bit 0x4 (`beql` at 0xd9e03a8).
  The record begins t1 times 4 bytes past the pointer with the constant 0xffffffffc380d024 (`sw` at 0xd9e03c4).
  The four arguments follow as plain copies reloaded from their frame slots: `a0` at +0x4 (`sw` at 0xd9e03d4), `a1` at +0x8 (0xd9e03e0), `a2` at +0xc (0xd9e03e8) and `a3` at +0x10 (0xd9e03f0).
  Then the pointer plus t1 times 4 plus 0x14 is stored to 0x1030 (`sw` at 0xd9e03f8), the free space less t1 less 5 to 0x1028 (`sw` at 0xd9e03fc), and the word at 0x1034 gains 5 (`sw` at 0xd9e0404).
  Unknown: the larger structure to which the words at 0x1028, 0x1030 and 0x1034 belong; a calling routine's entry would settle it.
  Evidence grade: inferred.
- `__glOdylc_TexCoord4i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdab1550 (n32).
  Writes a five-word record for four integer components (a0 to a3) to the buffer whose cursor is the absolute
  word 0x1030. Word 0 is the constant 0xffffffffc380d024 (low 32 bits, `sw` at 0xdab15fc); words 1 to 4 are
  a0, a1, a2 and a3 (`sw`s at 0xdab1600 to 0xdab160c). The record base sits in t0 and equals the cursor plus
  4 times a pad flag.
  The flag is 1 when the cursor has bit 0x4 set and the word at 0x1034 is zero, and a conditional move zeroes
  it otherwise. A call that returns nonzero reloads the cursor (0xdab15cc) and sets the flag to 1 if bit 0x4
  of the reloaded value is set.
  The `beq` at 0xdab1588 avoids the refill when the signed 0x1028 word is at least the flag plus 5.
  If the space is short, the routine calls `__glSPDlistSpace` at 0xdab15a8 with a0 passed as zero; a0 to a3 come back from the frame
  (0xdab15b0 to 0xdab15bc), so the record carries the caller's values on every path.
  When the refill call returns zero (`beq` at 0xdab15c4) the record is skipped and 0x1030 becomes the entry-time cursor minus 4 (`sw` at
  0xdab163c), 0x1028 becomes its reread word plus 1 (`sw` at 0xdab1658), and zero is returned.
  On the write path 0x1030 takes the base plus 0x14 (`sw` at 0xdab1614), 0x1028 takes the working word less the flag
  less 5 (`sw` at 0xdab1620), and 0x1034 takes its word plus 5, which `jr ra` at 0xdab162c returns
  (`sw` at 0xdab1630).
  Inferred: the cursor moves 20 per record while the counter drops 5 plus pad, which fits a buffer pointer and free-space count; no name for either word appears in the bundle.
  Unknown: the handling inside `__glSPDlistSpace` in this build, which only another build's note covers.
  Evidence grade: inferred.
- `__glOdylc_TexCoord4i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb396b90 (n64).
  Appends a five-word record to a buffer whose write pointer is the doubleword at absolute 0x1058: the
  constant 0xffffffffc380d024 (`sw` at 0xb396c3c) followed by the four incoming arguments a0 to a3 (`sw` at
  0xb396c40 to 0xb396c4c, offsets +0x4 to +0x10). Then it stores the pointer advanced by 0x14 (`sd` at
  0xb396c54). The record starts at the pointer plus 4 when a flag is set, otherwise at the pointer. The
  flag is 1 when bit 0x4 of the pointer is set and the word at 0x1060 is zero (the values are loaded at
  0xb396b98 and 0xb396ba0); it is recomputed from the reloaded pointer after the call (0xb396c18), and
  that second computation does not test 0x1060. The word at 0x1048 is a free-space count: the signed compare before the `beq` at 0xb396bc8 tests it against 5
  plus the flag, and the `beq` at 0xb396bc8 skips the space check when it is not lower. Otherwise the
  routine calls `__glSPDlistSpace` with a0 zero and the original a1 to a3 (`jalr` at 0xb396be8, target
  from 0xb4c9108). If that returns zero (`beq` at 0xb396c04), the record is not written: block 0xb396c74
  stores the pointer minus 4 (`sd` at 0xb396c7c), adds one to the word at 0x1048 (`sw` at 0xb396c98) and
  returns zero. On the write path the word at 0x1048 becomes the count (loaded value, or the call's
  return) minus the flag minus 5 (`sw` at 0xb396c60), the word at 0x1060 is increased by 5 (`sw` at
  0xb396c70), and that new 0x1060 value is returned.
  Unknown: what the three absolute locations hold and where the buffer lives; the route is the code that
  initialises 0x1048, 0x1058 and 0x1060.
  Evidence grade: established.
- `__glOdysseyAssignToPMObj` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9d8860 (o32).
  Builds an 80-byte request block in its frame from its arguments and sends it to the board through `__glOdysseyIoctl` as the private ioctl 0x6f640006 (`jalr` at 0xd9d8970), provided `CheckMMXfrArgs` accepts the block first.
  The `bzero` call at 0xd9d8898 clears the block (a1 = 0x50, a0 = frame offset 0x28). The routine then clears the high bits of a word in the caller's structure: it loads the word at +0x14 of the pointer passed as the last stack argument (`lw` at 0xd9d88ac), keeps its low 17 bits with the mask 0x1ffff and stores it back (`sw` at 0xd9d88bc).
  Block fields: `a1` goes to frame offset 0x2c, the low halfword of `a2` to 0x30 (`sh` at 0xd9d88e8), `a3` to 0x3c with its sign word, from the arithmetic right shift by 0x1f, at 0x38.
  The word at stack-argument offset 0x8c ORed with 1 goes to 0x64 (`sw` at 0xd9d88dc), the word at 0x88 to 0x40 and the word at 0x90 to 0x68; eight words from the start of the caller's structure are copied to frame offset 0x44 (loads from 0xd9d88ec to 0xd9d8928).
  `CheckMMXfrArgs` is called with the block at 0xd9d8948. A zero return makes the routine return 0 without the ioctl (`bne` at 0xd9d8950, `b` at 0xd9d8958).
  A non-zero ioctl return stores 0 into the result word at frame offset 0x24, which held 1 from the `sw` at 0xd9d8890, and returns it.
  A zero ioctl return tests the 0x2 bit of the word stored at 0x64 (`beq` at 0xd9d8998): with the bit set, the `sw` at 0xd9d89a8 writes 0 to a0 +0x21ee8; with it clear, the `sw` at 0xd9d89b8 writes the frame word at offset 0x74 there. The routine then returns 1 on either branch.
  Inferred: the frame word at offset 0x74 lies inside the 80-byte block that starts at 0x28, so it is zero from the `bzero` call unless the ioctl wrote it.
  Unknown: the device-side result of request 0x6f640006 on this block; the handler for it in the kernel driver would settle it.
  Evidence grade: inferred.
- `__glOdysseyAssignToPMObj` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb38f7f0 (n64).
  Builds a 0x50-byte request block on its stack from its arguments, validates it with `CheckMMXfrArgs`,
  and submits it as private ioctl 0x6f640006 through
  `__glOdysseyIoctl`, with a0 from entry and the block as a2 (`jalr` at 0xb38f8e4).
  Inferred: the board-side handler for 0x6f640006 is `gfP_OdsyMMxfr` according to the linked ioctl row, so the block describes a transfer.
  The block is zeroed first with `bzero` (a1 = 0x50, `jalr` at 0xb38f848). The routine then rewrites the
  word at +0x14 of the a7 record in place, keeping the low 17 bits (`and` with 0x1ffff, `sw` at 0xb38f86c).
  It fills the block with a2 as a halfword at +0x8 (`sh` at 0xb38f878), a1 as a word at +0x4 (0xb38f888),
  a3 as a doubleword at +0x10 (0xb38f880), a4 as a word at +0x18 (0xb38f8c4), the a5 argument ORed with 1
  as a word at +0x3c (0xb38f874) and the a6 argument as a word at +0x40 (0xb38f8b0). A loop of eight
  passes (counter from 0x8 down by one, `bgtz` at 0xb38f8a4) copies eight words of the a7 record, at
  offsets stepping by 4, into the block starting at +0x1c (the `sw` at 0xb38f8a8 stores through the
  block pointer stepped by 4 per pass).
  The `bgezall` at 0xb38f8c0 has zero as its tested register, so it always branches and links: it is an
  unconditional call of `CheckMMXfrArgs` with the block as a0, the a7 record as a1 and the block at +0x1c
  as a2. A zero return (`beq` at 0xb38f8cc) skips the ioctl and returns 0 at 0xb38f954.
  A zero ioctl result (`beq` at 0xb38f904) stores a word at a0 + 0x287d0 (`sw` at 0xb38f924): the block
  word at +0x48, or zero when bit 0x2 of the block word at +0x3c is set. The routine then returns 1. A
  nonzero ioctl result skips that store and returns 0 (`b` at 0xb38f90c with its delay slot).
  Unknown: the content of the block word at +0x48, which the routine zeroes and never writes; the route is
  the handling by `CheckMMXfrArgs` of the block.
  Evidence grade: inferred.
- `__glOdysseyBindHyperpipe` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda09438 (o32).
  Inferred: the routine issues private ioctl 0x6f640014 (the linked ioctl row lists it as a private request)
  for the current context, and only when a byte of that context allows it.
  The context pointer is the word at abs 0x1010 (the `lw` at 0xda0944c), and the byte at +0xc96 of that context
  gates the request (the `lbu` at 0xda09458 and the `bne` at 0xda09464).
  When the byte is zero, the routine returns 1 without any ioctl (the `beq` at 0xda0946c and the `addiu` in its
  delay slot).
  When it is nonzero, `__glOdysseyIoctl` is called at 0xda09480 with the context word as its first argument,
  request 0x6f640014, and as third argument a pointer to a frame word holding the caller's second argument
  (the `sw` at 0xda09478 saves it at frame offset 0x28).
  A nonzero ioctl return gives 1 and a zero return gives 0 (the `beq` at 0xda09488).
  Inferred: the committed note for `__glOdysseyIoctl` says it is the route every private board request in this
  build takes, so this request goes through it.
  Unknown: the device block at abs 0x1010 and the byte at +0xc96 of it; no linked mmio or register row names
  either.
  Evidence grade: inferred.
- `__glOdysseyBindHyperpipe` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2239260 (n64).
  Sends private ioctl 0x6f640014 through `__glOdysseyIoctl`, but only when the byte at offset 0xde6 of the
  structure pointed to by the doubleword at absolute 0x1020 is nonzero (`lbu` at 0x2239264, `beq` at
  0x223927c). When that byte is zero the call is skipped and the routine returns 1 (block at 0x22392bc).
  Otherwise the entry a1 is saved as a word at the stack pointer (`sw` at 0x223928c) and the `jalr` at
  0x2239298 passes the structure pointer as a0, 0x6f640014 as a1, the address of that stack slot as a2
  and the entry a3 unchanged as a3. After the call the return value is 1 if the ioctl result is nonzero
  and 0 if it is zero (a2 set to 1 at 0x22392a4, cleared by a conditional move just before the return when the
  result is zero, copied to v0 in the delay slot at 0x22392b8).
  Inferred: the linked ioctl row ties 0x6f640014 to a handler called `gfP_OdsyHPbind`, so this is a bind request.
  Unknown: which feature the byte at +0xde6 of the structure at 0x1020 records; the route is the code that
  initialises that structure.
  Evidence grade: inferred.
- `__glOdysseyCreatePMObj` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb38f2f0 (n64).
  Fills a request block on its stack, submits it as private ioctl 0x6f640001 through `__glOdysseyIoctl`
  (a0 from entry, the block as a2, `jalr` at 0xb38f370), then either records the result in the caller's
  word at a2 and in a table reached through a0, or backs out by walking a set and removing a group.
  The block holds -1 at +0 (`sw` at 0xb38f328), a copy of the word at a2 at +0x4 (`sw` at 0xb38f334), the
  low halfword of a3 at +0x8 (`sh` at 0xb38f31c), and from +0xc a ten-pass copy of words from a1, the
  pointer stepping by 4 per pass (`sw` at 0xb38f358). The word at +0x34 is cleared first (0xb38f2fc).
  If the ioctl returns zero (`beq` at 0xb38f388): when the block word at +0x4, reloaded at 0xb38f37c, is
  still -1 the routine returns 0 (`beq` at 0xb38f470). Otherwise that word is stored to the caller's a2
  word (`sw` at 0xb38f478). Then, when bit 0x2 of the block word at +0x34 is set (`beq` at 0xb38f490),
  the doubleword at block +0x38 is stored (`sd` at 0xb38f4a8) at +0x28 of an entry selected in the
  table whose pointer is the doubleword at a0 + 0x192f8 (a3 from 0xb38f384, added to a0 and loaded at
  0xb38f49c); the entry is the halfword at block +0x40 times 8 past that pointer. It returns 1 either way.
  If the ioctl returns nonzero, the routine returns 0 at once when the reloaded block word at +0x4 is not
  -1 (`bne` at 0xb38f390) or when the word at a2 is already -1 (`beq` at 0xb38f39c). Otherwise it
  cleans up: `InitCSetCursor` starts a walk over the set at a0 + 0x192f8 (each of the five `bgezall` calls in this routine names the zero register, which makes it a plain call), then for
  each element returned by `NextCSetElem` (0xb38f3d0, 0xb38f428) it calls `LookupKnownGroup` with the
  word at a2 as a1 (0xb38f444) and, if that returns nonzero, `RemoveKnownGroup` with the element and
  the looked-up value (0xb38f460). When `NextCSetElem` returns zero (0xb38f3e0, 0xb38f430) the routine
  stores the block word at +0x4 (-1) into the word at a2 (`sw` at 0xb38f400) and returns 0.
  Inferred: the linked ioctl row ties 0x6f640001 to a handler called `gfP_OdsyMMalloc`, so this is an allocation request.
  Unknown: the internals of `InitCSetCursor`, `NextCSetElem`, `LookupKnownGroup` and `RemoveKnownGroup`,
  which no note covers; reading the routines at 0xb390f00, 0xb390f20, 0xb390500 and 0xb3909c0 settles it.
  Evidence grade: inferred.
- `__glOdysseyDestroyPMObjGroup` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb38f4d0 (n64).
  Loops over the elements reached through the pointer at a0+0x192f8 with `NextCSetElem`, calls
  `LookupKnownGroup` on each element with the word at a1 and a2 zero, calls `RemoveKnownGroup` on the
  element when that lookup returns nonzero, and then sends ioctl 0x6f640002 with a block built from the
  word at a1. Before the loop, `InitCSetCursor` is called at 0xb38f510 with a0 from the same pointer, and
  a zero result from the first `NextCSetElem` at 0xb38f528 skips the loop to the ioctl. The block at the
  stack pointer holds a copy of the word at a1 at +4 (`sw` at 0xb38f5c8) and zero at +0x34 (`sw` at
  0xb38f5a8). The `jalr` at 0xb38f5c4 passes the block address as a2 along with the entry a0. A zero ioctl result
  (`beq` at 0xb38f5d4) overwrites the word at a1 with -1 (`sw` at 0xb38f600) and returns 1 at 0xb38f610;
  a nonzero result returns 0 at 0xb38f5ec.
  The `bgezall` calls at 0xb38f510, 0xb38f528, 0xb38f558, 0xb38f574 and 0xb38f588 use the zero register
  as their test, so none is a real condition; the exits come from the `beq` tests on return values.
  Inferred: the linked ioctl row lists `gfP_OdsyMMdealloc` as the handler of 0x6f640002.
  Unknown: which group `LookupKnownGroup` returns for the id at a1 and how `RemoveKnownGroup` detaches it;
  the route is a reading of the routines at 0xb390500 and 0xb3909c0.
  Evidence grade: inferred.
- `__glOdysseyDestroyPMObj` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9d86b4 (o32).
  Sends private ioctl 0x6f640002 (the linked ioctl row lists it as a private request) with a small request block in its frame, then walks a cursor set held in the context and removes matching elements.
  Inferred: the block starts at frame offset 0x30, because that is the address passed as the third argument of `__glOdysseyIoctl` (`jalr` at 0xd9d8718); the routine fills it with the word that the pointer in `a1` addresses, at frame offset 0x34 (`sw` at 0xd9d86f4), and the low halfword of `a2` at 0x38 (`sh` at 0xd9d86ec).
  An `a2` that is negative, or not below 0x11 (signed), makes the routine return 0 before any ioctl (the `bltz` at 0xd9d86f0 and the `bne` at 0xd9d86fc).
  The ioctl takes the context from `a0` and the request 0x6f640002; a non-zero return makes the routine return 0 (the `beq` at 0xd9d8720).
  On a zero return it reloads the frame word at offset 0x64, which the `sw` at 0xd9d86dc set to 1 before the call and which the ioctl may have rewritten; if it is non-zero the `bnel` at 0xd9d8734 returns 1 and the cursor walk is skipped.
  Otherwise it calls `InitCSetCursor` (0xd9d874c) and `NextCSetElem` (0xd9d8764) on the cursor at the context word +0x16c94; a zero element ends the walk.
  Each element goes to `LookupKnownGroup` with the word at the start of the `a1` buffer and 0 (call at 0xd9d8788); if that returns non-zero, the element and the result go to `RemoveKnownGroup` (call at 0xd9d87a8).
  `NextCSetElem` is called again at 0xd9d87c0 and the loop repeats while it returns non-zero (`bne` at 0xd9d87cc).
  When the walk ends, the `sw` at 0xd9d87d8 stores -1 into the word at the start of the `a1` buffer and the routine returns 1.
  Inferred: `InitCSetCursor` resets the cursor, because its committed note says it stores zero at +16 and +20 and copies word 0 to word 4.
  Unknown: the device-side result of request 0x6f640002 on the block at frame offset 0x30, including whether it rewrites the word at offset 0x64; the driver handler for the request would settle it.
  Unknown: the order in which `NextCSetElem` returns elements and the match rule of `LookupKnownGroup`, since the committed notes for both are table rows without detail.
  Evidence grade: inferred.
- `__glOdysseyDestroyPMObj` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaaa1a0 (n32).
  Sends private board request 0x6f640002 through `__glOdysseyIoctl` with the context in a0 and, when
  that succeeds and a frame flag is zero, walks a cursor set held in the context, calling `LookupKnownGroup`
  and `RemoveKnownGroup` on its elements.
  Inferred: the linked ioctl row for 0x6f640002 is a private handler named `gfP_OdsyMMdealloc`, so the
  request is a deallocation request.
  Request buffer: the word at a1 +0 is copied to +4 of the 160-byte frame (`lw` at 0xdaaa1b8, `sw` at
  0xdaaa1d0) and the low halfword of a2 to +8 (`sh` at 0xdaaa1c4). The frame start is passed as the third
  call argument, with request 0x6f640002 and 1 as the fourth argument (call at 0xdaaa204). The word at frame
  +0x34 is preset to 1 (`sw` at 0xdaaa1a8) and reloaded after the call (0xdaaa224).
  Only a2 in the range 0 to 0x10 reaches the call: the `bltz` at 0xdaaa1cc (a2 negative) and the `bne` at
  0xdaaa1d8 (not taken when a2 is at least 0x11) both lead to returning 0 at 0xdaaa1e8.
  A nonzero ioctl result returns 0 at 0xdaaa21c (`beq` at 0xdaaa20c). On a zero result the `beq` at
  0xdaaa228 tests the reloaded +0x34 word: nonzero returns 1 at 0xdaaa234, zero starts the cleanup walk at
  0xdaaa23c.
  The walk calls `InitCSetCursor` with the word at ctx +0x16ba4 (a0 plus 0x10000 plus 0x6ba4) and a1 still
  holding 0x10000, then `NextCSetElem` on the same word. While `NextCSetElem` returns an element, it is
  saved at frame +0x50 and passed to `LookupKnownGroup` with the word at a1 +0 and a2 zero. A zero lookup
  skips to the next element; a nonzero lookup is passed to `RemoveKnownGroup` together with the element
  (a1 = the lookup result), after which `NextCSetElem` runs again. Each `bgezall` in the walk tests the zero
  register, which is never negative, so every one of those calls is always made and its delay-slot load of a0
  always runs.
  When `NextCSetElem` returns zero (`beq` at 0xdaaa274 or 0xdaaa298), the `sw` at 0xdaaa2f0 writes -1 to the
  word at a1 +0 in the delay slot of the branch at 0xdaaa2ec, and the routine returns 1.
  Unknown: the results of `InitCSetCursor`, `NextCSetElem`, `LookupKnownGroup` and `RemoveKnownGroup`; their
  bodies at 0xdaabad0, 0xdaabaf0, 0xdaab0a0 and 0xdaab590 are not in this bundle, so their own entries settle it.
  Unknown: whether the ioctl handler writes the +0x34 word the reload reads, which would change the branch at
  0xdaaa228; the handler's own entry settles it.
  Evidence grade: inferred.
- `__glOdysseyDestroyPMObj` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb38f620 (n64).
  Submits private ioctl 0x6f640002 through `__glOdysseyIoctl` for the object whose id is the word at a1,
  and, depending on a flag word in the request block that the call can return changed, also walks a set
  and removes the matching group. Arguments with a2 negative (`bltz` at 0xb38f64c) or a2 not below 0x11
  (the comparison feeding the `bne` at 0xb38f658) return 0 at 0xb38f668 with no request sent.
  The request block on the stack holds the word at a1 at +0x4 (`sw` at 0xb38f650), the low halfword of a2
  at +0x8 (`sh` at 0xb38f644) and 1 at +0x34 (`sw` at 0xb38f628, the value of a3 set at 0xb38f624). The
  `jalr` at 0xb38f684 passes a0 from entry, 0x6f640002 and the block as a2. A nonzero result returns 0
  (0xb38f69c).
  Inferred: `gfP_OdsyMMdealloc` is the handler for 0x6f640002 in the linked ioctl row, which makes this a release request.
  After a zero result the word at +0x34 is reloaded (0xb38f6a4); the `beq` at 0xb38f6a8 skips ahead when it
  is zero, and the delay slot sets v0 to 1 either way, so the routine returns 1 on both paths. When the
  reloaded word is nonzero it returns at once (0xb38f6b4). When it is zero, the routine runs
  `InitCSetCursor` on the set at a0 + 0x192f8 (a1 = 0x20000 at 0xb38f6c4) and loops over `NextCSetElem`
  results (0xb38f6e8, 0xb38f710). For each element it calls `LookupKnownGroup` with the element, the
  word at a1 and a2 zero (0xb38f734), and, if that returns nonzero, `RemoveKnownGroup` on the element
  with the looked-up value (0xb38f750). Once `NextCSetElem` returns zero, on the first call or a later one, the word at a1 is overwritten with
  -1 (`sw` at 0xb38f770). Every `bgezall` in the routine uses the zero register, so none of them is a real test.
  Unknown: whether the handler ever clears the block word at +0x34, since the stored 1 is the only value
  this routine writes there; the route is the board-side result of request 0x6f640002.
  Unknown: the element type that `NextCSetElem` returns and the group record `LookupKnownGroup` finds; the
  route is a reading of the routines at 0xb390f20 and 0xb390500.
  Evidence grade: inferred.
- `__glOdysseyDriverMakeCurrent` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x221e420 (n64).
  Asks the board, through private ioctl 0x6f640008, to make the context in a0 current. On success it
  copies the fields that came back in the request block into the context from offset 0x19308 upward and
  returns 1; on a negative result it calls a context function pointer with a failure string and returns 0.
  The stack block starts zeroed at +0 and +0x28 (`sw` at 0x221e424 and 0x221e428). Context word +0xe34
  above zero makes block +0 equal 2 (`blez` at 0x221e44c, `sw` at 0x221e458), and context word +0xed4
  above zero makes block +0x28 equal 2 (`blez` at 0x221e460, `sw` at 0x221e46c). A zero context byte at
  +0xde4 changes block +0 to its value ORed with 4 (`sw` at 0x221e5b8, delay slot of the jump at
  0x221e5b4), and a zero byte at +0xe84 does the same for block +0x28 (`sw` at 0x221e5c0, delay slot of
  the jump at 0x221e5bc).
  The `bgezall` at 0x221e498 names the zero register, so `__glOdysseyIoctl` is always called, with the
  context, 0x6f640008 and the block address.
  Inferred: the linked ioctl row ties 0x6f640008 to a handler called `gfP_OdsyMakeCurrent`, which matches
  the failure string 'odsy: MakeCurrent ioctl failed' at 0x232c7e0.
  A negative result (`bltz` at 0x221e4a0) sends that string, with the context, to the function pointer at
  context +0x28 (`jalr` at 0x221e65c), and the routine returns 0 at 0x221e674. After a nonnegative
  result, block +0x4, +0x8, the byte +0x22, the halfword +0x20 and the byte +0x23 are stored as five
  words at context +0x19308 through +0x19318 (`sw` at 0x221e4b0 through 0x221e4d0). The block byte at
  +0x24 (`lbu` at 0x221e4d4) then selects among three layouts. At 0, ten doublewords from context
  +0x19330 to +0x19378 are zeroed (`sd` at 0x221e5c4 through 0x221e5ec). At 1, eight block fields are
  copied to +0x19330 through +0x19350 (`sw` at 0x221e5f0 through 0x221e64c) and the area from +0x19358
  to +0x1937c is zeroed. At 2, block fields are copied to +0x19330 through +0x19378 (`sw` at 0x221e534
  through 0x221e5b0). Every case, whatever the byte value, continues at 0x221e4f8, where block +0x2c,
  +0x30, the byte +0x4a, the halfword +0x48 and the byte +0x4b go to context +0x1931c through +0x1932c
  (`sw` at 0x221e500 through 0x221e52c) before the return of 1.
  Inferred: the routine writes only block +0 and +0x28 before the call, so the ioctl handler must fill
  the other block fields through a2.
  Unknown: the layout of the values that handler fills in; the route is the device-side result of
  request 0x6f640008.
  Evidence grade: inferred.
- `__glOdysseyDriverMakeCurrent` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3a2920 (n64).
  Sends private ioctl 0x6f640008 for the context in a0, then copies the fields that come back in the
  request block into the context at offsets from 0x19430 up, and returns 1; on a negative ioctl result it
  reports a failure string through a function pointer in the context and returns 0.
  Before the call it fills two words of the block, both zeroed first (`sw` at 0xb3a2924 and 0xb3a2928).
  Block +0 is 2 when the context word at +0xe3c is above zero (`blez` at 0xb3a294c, `sw` at 0xb3a2958)
  and block +0x28 is 2 when the context word at +0xedc is above zero (`blez` at 0xb3a2960, `sw` at
  0xb3a296c). When the context byte at +0xdec is zero, block +0 is replaced by its value ORed with 4
  (`sw` at 0xb3a2a40, delay slot of the jump at 0xb3a2a3c); when the context byte at +0xe8c is zero,
  block +0x28 is replaced the same way (`sw` at 0xb3a2a4c, delay slot of the jump at 0xb3a2a48).
  The `bgezall` at 0xb3a299c has zero as its tested register, so the call of `__glOdysseyIoctl` (a0 =
  context, a1 = 0x6f640008, a2 = the block) is unconditional.
  Inferred: `gfP_OdsyMakeCurrent` is the handler row for 0x6f640008, and the string at 0xb4a86e8 reads as its failure message.
  If the result is negative (`bltz` at 0xb3a29a4), the routine calls the function pointer at context +0x28
  (`jalr` at 0xb3a2ae0) with the context and the string 'odsy: MakeCurrent ioctl failed' at 0xb4a86e8,
  then returns 0 at 0xb3a2af8. Otherwise the block words at +0x4, +0x8, +0x22 (byte), +0x20 (halfword)
  and +0x23 (byte) go to context +0x19430 to +0x19440, one word each (`sw` at 0xb3a29bc to 0xb3a29dc).
  The byte at block +0x24 (`lbu` at 0xb3a29e0) then picks one of three layouts. Value 0 zeroes 0x50
  bytes at context +0x19458 with `bzero` (0xb3a2b10). Value 1 copies eight block fields to +0x19458
  through +0x19478 (`sw` at 0xb3a2b20 to 0xb3a2b70) and zeroes 0x14 bytes at +0x19480 and at +0x19494
  (0xb3a2b6c, 0xb3a2b84). Value 2 copies block fields to +0x19458 through +0x194a0 (`sw` at 0xb3a2a54
  to 0xb3a2ad0). For any value, the path then copies the block words at +0x2c, +0x30, +0x4a (byte),
  +0x48 (halfword) and +0x4b (byte) to context +0x19444 through +0x19454 (`sw` at 0xb3a2a00 to
  0xb3a2a2c) and returns 1.
  Inferred: only block +0 and +0x28 are written before the call, so the handler behind the request must
  supply every other block field this routine copies out.
  Unknown: what values the handler returns in the block fields; the route is the board-side result of
  request 0x6f640008.
  Evidence grade: inferred.
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
- `__glOdysseyElementsInt_V3F` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbabe68 (n32).
  Feeds elements selected through an index array to the absolute address 0x4000, one pass per index. a1 points at 32-bit
  indices and a2 at a table of 12-byte elements; each pass loads the next index (`lw` at 0xdbabe8c), multiplies it
  by 0xc (set at 0xdbabe84) and adds a2, then reads the three words at offsets 0, 4 and 8 of that element
  (`lw`s at 0xdbabe9c, 0xdbabea0, 0xdbabea4).
  Each pass ends in four word stores to 0x4000: the constant 0xffffffff8080cc03 (low 32 bits, `sw` at
  0xdbabea8, built at 0xdbabe7c and 0xdbabe80), then the three element words unchanged (`sw`s at 0xdbabeac,
  0xdbabeb0, 0xdbabeb4).
  Passes repeat on the `bne` at 0xdbabeb8 while a0, decremented at the top of each pass, is nonzero; a1 steps 4
  bytes in its delay slot at 0xdbabebc; the pass count is a0 at entry, and a0 equal to zero wraps and loops
  about 2^32 times. The return does not assign v0.
  Inferred: the four back-to-back stores to one fixed address look like a header word followed by three data
  words pushed into a hardware port, since the bundle's access list marks 0x4000 as an address outside the
  file; the bundle's linked board windows (0x110000 and 0x120000) do not include it.
  Unknown: which register the address 0x4000 names; the board's register table would settle it.
  Evidence grade: inferred.
- `__glOdysseyElementsInt_V3F` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4985f8 (n64).
  Streams a list of three-word vertices to one absolute address, 0x4000, four word writes per element.
  A0 is the element count and a1 points to an array of 32-bit indices. For each index (`lw` at 0xb49861c)
  the routine multiplies it by 0xc (set at 0xb498614), adds it to a2, and loads three consecutive words
  from there (`lw` at 0xb49862c, 0xb498630, 0xb498634), so a2 is the base of an array of 12-byte vertices.
  The four `sw` stores at 0xb498638 to 0xb498644 all target absolute 0x4000: first the constant
  0xffffffff8080cc03 (built at 0xb49860c and 0xb498610), then the three vertex words in order.
  The loop decrements a0 at the top of each pass (0xb498618) and the `bne` at 0xb498648 repeats while a0
  is nonzero, stepping a1 by 4 in its delay slot. The routine writes no return value to v0.
  Unknown: which register the writes to 0x4000 reach and what the leading word 0xffffffff8080cc03
  encodes; no linked row or datasheet excerpt covers that address, and the route is the datasheet for
  the window that contains it.
  Evidence grade: established.
- `__glOdysseyFindWindowSize` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9682d0 (o32).
  Gets four integer values, from the board through private ioctl 0x6f64000f or from a function pointer in the context, folds two of them into floats in the context, and tells `__glChangeWindowSize` and `__glChangeReadWindowSize` when the size words in the context differ from them.
  It copies four words from the data at 0xdaf8050 into the frame block at offset 0x2c (`sw` at 0xd968300 to 0xd968328), and saves the context words at +0xe74 and +0xe78 into frame offsets 0x4c and 0x48 (`sw` at 0xd968334 and 0xd96833c).
  If the byte at context +0x19de1 is zero (`beql` at 0xd968344), the ioctl is skipped and the function pointer at context +0x1c is called (`jalr` at 0xd9683d4) with the context and the frame addresses 0x54, 0x50 and 0x4c as a1 to a3.
  If the byte is non-zero, the ioctl runs with the context, request 0x6f64000f and the block at frame offset 0x2c (`jalr` at 0xd968358). A zero return copies the block words at 0x2c, 0x30, 0x34 and 0x38 to frame offsets 0x54, 0x50, 0x4c and 0x48 (`sw` at 0xd9683ac to 0xd9683bc). A non-zero return calls the function pointer at +0x1c instead (`jalr` at 0xd968388).
  Next it converts the integer at frame offset 0x54 to single precision, adds the float word at context +0x19da4 and stores the sum to +0x19d9c (`swc1` at 0xd968400). It does the same for the integer at 0x50, storing to +0x19da0 (`swc1` at 0xd968420).
  If either frame word at 0x4c or 0x48 differs from the context words at +0xe74 or +0xe78 (`bne` at 0xd968430, `beql` at 0xd96843c), `__glChangeWindowSize` is called with those two frame words (`jalr` at 0xd968450).
  The byte at context +0xdd0 then picks a second pair: if it is non-zero, the frame words at 0x4c and 0x48 are copied to 0x44 and 0x40; if it is zero, the function pointer at context +0x48 fills 0x44 and 0x40 (`jalr` at 0xd968488).
  If either of those differs from the context words at +0xe7c or +0xe80 (`bne` at 0xd9684a0, `beql` at 0xd9684ac), `__glChangeReadWindowSize` is called with them (`jalr` at 0xd9684c0).
  A non-zero word at context +0x16984 (`beql` at 0xd9684d8) calls `__glChangeWindowSize` again with the words at context +0x6a0 and +0x6a4 (`jalr` at 0xd9684ec).
  Last, if the byte at context +0xc98 is non-zero and the frame words at 0x4c and 0x48 differ from the context words at +0xe74 or +0xe78 as they now stand, the `sb` at 0xd968528 stores 1 to context +0x120f4.
  Inferred: the four values from the ioctl or the pointer at +0x1c are window geometry, because the routine compares the last two against the stored size words and passes them to the two window-size callees.
  Unknown: the device-side result of request 0x6f64000f on the block at frame offset 0x2c, and what the routines reached through the pointers at +0x1c and +0x48 (calls at 0xd968388, 0xd9683d4 and 0xd968488) store; no symbol or committed note identifies them.
  Unknown: the handling by `__glChangeWindowSize` and `__glChangeReadWindowSize` of their arguments in this build, since their committed notes cover the 64-bit build only, and the value left in `v0` at the return.
  Evidence grade: inferred.
- `__glOdysseyFindWindowSize` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a9c80 (n64).
  Obtains the current drawable size, either from private ioctl 0x6f64000f or from a function pointer in
  the context, then pushes it into the context's window and read-window size fields through the two
  size-change routines and flags the context when the size differs from the one stored there.
  The routine zeroes a four-word request block at the stack pointer and saves the context words +0xfd8
  and +0xfdc at frame +0x10 and +0x14 (`sw` at 0x21a9ca4 and 0x21a9cac). When the byte at context +0x1c4a5 is
  nonzero (`lbu` at 0x21a9cb0, `beq` at 0x21a9ccc), the `jalr` at 0x21a9ce0 calls `__glOdysseyIoctl` with
  a1 = 0x6f64000f and the block as a2. A zero result copies the block words +0, +4, +8, +0xc to frame
  +0x18, +0x1c, +0x10, +0x14 (0x21a9e10 to 0x21a9e2c); a nonzero result instead calls the pointer at
  context +0x38 with the addresses of frame +0x18, +0x1c, +0x10, +0x14 (`jalr` at 0x21a9d04). A zero byte
  at +0x1c4a5 skips the ioctl and makes the same pointer call at once (`jalr` at 0x21a9e40).
  Inferred: `gfP_OdsyGetDrawableGeometry` is the handler row for 0x6f64000f, so the block carries drawable geometry.
  The integers at frame +0x18 and +0x1c are then converted to single precision, a float loaded at
  displacement -0x3b9c from context + 0x20000 is added to each, and the results are stored with
  displacements -0x3ba4 and -0x3ba0 from that base (`swc1` at 0x21a9d24 and 0x21a9d38).
  If the context words +0xfd8 and +0xfdc differ from frame +0x10 and +0x14 (`bne` at 0x21a9d48, `beq` at
  0x21a9d50), `__glChangeWindowSize` is called (`jalr` at 0x21a9d58) with the context, those two frame
  words, and the frame words at +0x1c and +0x18 among its later arguments. When the byte at context +0xf20
  is nonzero (`lbu` at 0x21a9d60), frame +0x20 and +0x24 are copies of frame +0x10 and +0x14; when it is
  zero, the pointer at context +0x90 is called with the addresses of frame +0x20 and +0x24 and those two
  slots are reloaded (`jalr` at 0x21a9e5c). If the context words +0xfe0 and +0xfe4 differ from frame
  +0x20 and +0x24 (`bne` at 0x21a9d7c, `beq` at 0x21a9d84), `__glChangeReadWindowSize` is called (`jalr`
  at 0x21a9d8c).
  When a word at displacement -0x7188 from context + 0x20000 is nonzero (`lw` at 0x21a9d98, `beq` at
  0x21a9d9c), `__glChangeWindowSize` is called again with the context words +0x7a0 and +0x7a4 (`jalr` at
  0x21a9dac). Finally, when the byte at +0xde8 is nonzero (`beq` at 0x21a9dc8) and either context word
  +0xfd8 or +0xfdc (reloaded) still differs from frame +0x10 or +0x14, the `sb` at 0x21a9dfc stores 1 at
  context +0x144b8 in the delay slot of the return; otherwise the routine returns without that store.
  The routine sets no return value.
  Unknown: whether the committed notes for `__glChangeWindowSize` and `__glChangeReadWindowSize` match the
  calls here, because the notes cover other build addresses (0x32ca2e0, 0x32ca400) and the calls go to
  0x227a2e0 and 0x227a400; the route is a reading of the routines at those two addresses.
  Unknown: the handling by the routines behind context +0x38 and +0x90 of the frame slot addresses they
  receive; the route is a reading of their targets.
  Evidence grade: inferred.
- `__glOdysseyGetHardwareShadow` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x221dae0 (n64).
  Issues the private board request 0x6f64000c through `__glOdysseyIoctl` and, if that fails, reports it through a callback held in the context. The `bgezall` at 0x221db08 tests the `zero` register, so it always branches and links: it is a plain call to `__glOdysseyIoctl` at 0x221da60. The call carries a0 as it arrived, the request number (high half set at 0x221db00, low bits ORed in by the delay slot at 0x221db0c), the entry a1 passed on in a2 and the entry a3 untouched; the saved a0 goes to the frame at 0x221daf8. A result that is zero or positive (fall-through of the `bltz` at 0x221db10) leaves through 0x221db1c with the ioctl result still in v0. A negative result (branch to 0x221db24) reloads the saved a0, loads the pointer at a0 +0x28 (0x221db2c) and calls through it at 0x221db34 with a0 and a1 set to the failure message string at 0x232c788 (the `daddiu` in the delay slot at 0x221db38 adjusts the word loaded from the table slot at 0x221db30). The error path then jumps back to the shared exit (0x221db3c) and returns whatever that callback returned.
  Inferred: the failure text and the handler name `gfP_OdsySaveHwShadow` in the linked row for 0x6f64000c both point at a save of the hardware shadow.
  Unknown: the target routine the pointer at a0 +0x28 holds at run time; the `jalr` at 0x221db34 is where it is read, and no bundle line fixes its value.
  Evidence grade: inferred.
- `__glOdysseyGetHardwareShadow` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdabc8f0 (n32).
  Inferred: request 0x6f64000c is the linked row `gfP_OdsySaveHwShadow`, and the string at 0xdbc1240 is
  a failure message for a save-hardware-shadow step, so the routine asks the board to save the hardware shadow for the
  context in a0 and has a failure path for that request.
  The `bgezall` at 0xdabc918 calls `__glOdysseyIoctl` with request 0x6f64000c, a0 as the first argument,
  the caller's a1 moved into a2, and the caller's a3 passed through in a3, and stores a0 at +8 of the frame in its
  delay slot.
  A negative result (`bltz` at 0xdabc920) takes the failure path, which loads the pointer at a0 +0x14
  (`lw` at 0xdabc93c) and calls through it with a0 and the string at 0xdbc1240 as a1 (`jalr` at
  0xdabc944); a non-negative result goes to the return at 0xdabc92c.
  The return at 0xdabc92c passes back v0 from either path, so the caller receives the ioctl's result or
  whatever the routine called through the pointer returned (the `beq` at 0xdabc94c always joins the
  return).
  Unknown: the routine behind the pointer at a0 +0x14, which has no entry in this bundle; its own entry
  settles it.
  The `bgezall` at 0xdabc918 tests the zero register, which is never negative, so the call is always made
  and its delay-slot store of a0 always runs.
  Evidence grade: inferred.
- `__glOdysseyGetHardwareShadow` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3a1f70 (n64).
  Wraps request 0x6f64000c to the board; a negative result makes it call a context callback with a failure string. The `bgezall` at 0xb3a1f98 tests the `zero` register, so it always branches and links: it is a plain call to `__glOdysseyIoctl` at 0xb3a1ef0, and its delay slot (0xb3a1f9c) saves a0 to the frame. The call carries a0, the request number (`lui` at 0xb3a1f8c, `ori` at 0xb3a1f94), the entry a1 copied into a2 and the entry a3 untouched. A zero or positive result falls through the `bltz` at 0xb3a1fa0 to the exit at 0xb3a1fac with v0 untouched. A negative one branches to 0xb3a1fb4, reloads the saved a0, loads the pointer at a0 +0x28 (0xb3a1fbc) and calls through it at 0xb3a1fc4. The first argument is a0 and the second is the failure message string at 0xb4a8690 (adjusted by the `daddiu` in the delay slot at 0xb3a1fc8). The routine then jumps back to the exit (0xb3a1fcc) and returns that callback's result.
  Inferred: the string and the handler `gfP_OdsySaveHwShadow` on the 0x6f64000c row both indicate a hardware-shadow save.
  Unknown: the routine at the pointer in a0 +0x28; its value comes only from run time.
  Evidence grade: inferred.
- `__glOdysseyHyperpipePixelAverage` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda09278 (o32).
  Inferred: the message 'Setting pixel average mode' at 0xdaf0000 names the mode, and request 0x6f640018,
  which this routine passes, carries a set-attribute handler in the linked ioctl row, so the routine is the
  private path that sets pixel averaging on the context in a0.
  It first calls `fprintf` through its GOT slot at the `jalr` at 0xda092b0, with the address `__iob`+32
  and the entry values of a2 and a3 after the format.
  Six words of a block at sp at entry -0x28 through -0x14 are stored before the ioctl call: the `sw` at
  0xda092d4 stores the word the `lw` at 0xda092c8 loaded from a0 +0x21ef0, the `sw` at 0xda09300 stores
  the word loaded through a3 at 0xda092d8, the `sw` at 0xda092dc stores 0x4, the `sw` at 0xda09308 stores
  a2, the `sw` at 0xda092f0 stores the sign of a3 (the word shifted right arithmetically by 0x1f at
  0xda092ec, so 0 or all ones), and the `sw` at 0xda092fc stores a3 itself.
  The `jalr` at 0xda09304 then calls `__glOdysseyIoctl` with a0 reloaded from its frame slot (the entry a0),
  request 0x6f640018, and the block at sp at entry -0x28 as the third argument; a3 is not set after the
  `fprintf` call.
  A returned 0 makes the `beq` at 0xda0930c jump to 0xda0931c, which returns 0. A nonzero return falls
  through to the `addiu` at 0xda09318, the delay slot of the `beq` at 0xda09314, which loads 1 before the
  `jr ra` at 0xda09328.
  Inferred: the committed note on `__glOdysseyIoctl` says it relays to the C library's `ioctl` with the word at
  the context's +0x7b48 as the first argument, so the block is the argument that reaches that library call
  after the request number.
  Unknown: the device-side result of request 0x6f640018 on the block, and which of its words the request
  reads; the handler's own entry would settle it.
  Evidence grade: inferred.
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
- `__glOdysseyHyperpipePixelAverage` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22390d0 (n64).
  Prints the text 'Setting pixel average mode' with `fprintf`, then sends the private request 0x6f640018 for the context in a0 through `__glOdysseyIoctl`, with a four-word block built in its frame. The `fprintf` call at 0x2239108 takes `__iob` +64 as its first argument and the string at 0x232c818 as its second. The block words are the word at a0 +0x285d8 at +0x0 (loaded at 0x2239128, stored at 0x223912c), the word read through the entry a3 pointer at +0x4 (loaded at 0x2239130, stored at 0x2239158), the constant 0x4 at +0x8 (0x2239140) and the entry a2 at +0xc (0x223914c). The call at 0x2239154 passes a0, the request number and the frame base as its three real arguments; the registers after them hold what was left from building the block (the entry a2, 0x4, the word read through the entry a3 pointer, the entry a3 and the word at a0 +0x285d8), and the callee note says everything from a1 on reaches the C library's ioctl untouched. There is no branch on the ioctl result, but the return value still depends on it: a register preset to 1 at 0x2239164 is cleared by a conditional move when the ioctl returned zero, and the delay slot at 0x2239178 copies it into v0 for the `jr` at 0x2239174. A nonzero ioctl result therefore gives 1 and a zero result gives 0.
  Inferred: the printed text mentions a pixel average mode and the row for 0x6f640018 gives handler `gfP_OdsyHPsetAttrib`, so the request sets that mode.
  Unknown: the block fields the handler for 0x6f640018 reads, with no field table to settle it.
  Evidence grade: inferred.
- `__glOdysseyHyperpipeRect` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2238fe0 (n64).
  Fills four words on the stack and issues private request 0x6f640018 over them via `__glOdysseyIoctl`. The words are: the word at a0 +0x285d8 at +0x0 (loaded at 0x2238ff4, stored by the delay slot at 0x2239030), the entry a1 at +0x4 (0x2239020), the constant 1 at +0x8 (0x2239004) and the entry a2 at +0xc (0x2239018). The call at 0x223902c uses a0, the request number and the frame base. The a3 value of 1 and the a4 value 0x10ded8 that the tool lists after them are leftovers, the first from the constant stored at +0x8 and the second from the offset used to set up gp, and the callee note says registers from a1 on reach the C library's ioctl untouched. No branch tests the ioctl result, but the return value still depends on it: v1 is set to 1 at 0x2239038 and a conditional move just before the `jr` at 0x2239048 clears it when the ioctl returned zero, and the delay slot at 0x223904c copies it into v0. The caller gets 1 if the ioctl failed to return zero, else 0.
  Inferred: handler `gfP_OdsyHPsetAttrib` on the 0x6f640018 row points at an attribute write.
  Unknown: which block fields the handler for 0x6f640018 consumes, since the bundle carries no layout for it.
  Evidence grade: inferred.
- `__glOdysseyInitLighting` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9d2390 (o32).
  Inferred: the linked token rows name the word 0xc18093ff as an attribute slot (slot 0x1, count 0x4, op 0x3ff)
  and the word 0x908091bb as state, and this routine stores both to 0x10000 (`sw` at 0xd9d23e8 and at
  0xd9d2534), so it writes attribute and state words to that address as a command sequence.
  It stores 0xff at a0+0x1696c (`sw` at 0xd9d23cc) and copies that word unchanged to a0+0x16968 (`sw` at
  0xd9d23e4), writes 0x19a to a0+0xa1f8 (`sw` at 0xd9d2590) and 0x18 to a0+0xa21c (`sw` at 0xd9d2598), writes
  back the word loaded from a0+0xa1f8 at 0xd9d258c, before the 0x19a store, unchanged (`sw` at 0xd9d2670), and
  sets a0+0xa21c, a0+0xa218, a0+0xa1d4 and a0+0xa1d8 to 0, 0, 0x3 and 0x10 (`sw` at 0xd9d2674, 0xd9d267c,
  0xd9d2678 and 0xd9d2680).
  The `sw` at 0xd9d2500 and 0xd9d254c write 0xf0 and 0xf4 to a0+0xa218, and the `sw` at 0xd9d2530 and 0xd9d2574
  each write a port word built from two loads of that field (at 0xd9d2504 and 0xd9d2508, and at 0xd9d2550 and
  0xd9d2554): the field is masked with 0x3ff, ORed with 0x31000000, ORed with the field shifted right by 0xa and
  left by 0x17, and ORed with 0x8000. The `sw` at 0xd9d2610 and 0xd9d26a4 build their words the same way from
  a0+0xa1f8 with 0x29000000, the `sw` at 0xd9d2638 and 0xd9d26c8 from a0+0xa21c with 0x32000000, the `sw` at
  0xd9d26ec from a0+0xa1d4 with 0x20000000, the `sw` at 0xd9d2714 from a0+0xa218 with 0x31000000, and the
  `sw` in the return delay slot at 0xd9d273c from a0+0xa1d8 with 0x21000000. Between the first of these and
  the second, the `sw` at 0xd9d2640 writes the constant 0xffffffff8e809015 and the `swc1` at 0xd9d2650,
  0xd9d265c, 0xd9d2664 and 0xd9d266c copy the four floats at a0+0xa1b4, a0+0xa1b8, a0+0xa1bc and a0+0xa1c0
  to the same address.
  The byte at a0+0xc94 selects one of two sets of floating-point stores (`lbu` at 0xd9d259c, `beql` at
  0xd9d25a4). When it is zero, the branch-likely delay slot `mtc1 zero,$f18` at 0xd9d25a8 runs, and the `swc1`
  stores at 0xd9d25dc, 0xd9d25e0, 0xd9d25e4 and 0xd9d25e8 write $f18 (zero) to a0+0xa1b8 and a0+0xa1bc and $f16 (0x3f800000, built by the `lui` at
  0xd9d25d4) to a0+0xa1b4 and a0+0xa1c0. When it is nonzero, the `lwc1` at 0xd9d25b0 sets $f0 to 0x3e4ccccd (0.2 as single
  precision, from the literal pool at 0xdaeed68), the `swc1` stores at 0xd9d25bc, 0xd9d25c0 and 0xd9d25c4 write
  $f0 to a0+0xa1b4, a0+0xa1b8 and a0+0xa1bc, and the delay slot at 0xd9d25cc writes $f2 to a0+0xa1c0.
  Throughout, the routine writes a long run of `sw` and `swc1` to 0x10000, which the bundle lists as memory-mapped
  I/O; its constant words include 0xffffffffc18093ff at 0xd9d23e8, 0xffffffffc180cc19 at 0xd9d2404, and
  0xffffffff908091bb at 0xd9d2534 and 0xd9d2578, and the `swc1` stores at 0xd9d2420, 0xd9d2424 and 0xd9d242c write
  $f12, which the `lwc1` at 0xd9d23b0 set from the literal pool at 0xdaeed60 to 0x3e4ccccd. The other
  float registers in that run hold plain constants: $f0 is zero (a register copy from zero in the prologue), $f2 is
  0x3f800000 (the `lui` at 0xd9d239c copied into the register), and $f14 is 0x3f4ccccd (the `lwc1` at 0xd9d23c0
  from the literal pool at 0xdaeed64); the four floats after the first command word (0xffffffffc18093ff) are 0, 0, 1.0 and 1.0
  (the `swc1` at 0xd9d23ec, 0xd9d23f0, 0xd9d23f8 and 0xd9d2400).
  It returns with v0 = 0x10000 at the `jr ra` at 0xd9d2738, and the last store to 0x10000, `sw t3,0(v0)`, runs in
  the delay slot at 0xd9d273c.
  Unknown: which device register or window the address 0x10000 selects, since no linked mmio row covers it (the
  linked rows are the windows at 0x110000 and 0x120000); the board's address map for that address would settle it.
  Evidence grade: inferred.
- `__glOdysseyInitLighting` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2206600 (n64).
  Seeds a set of context words at a0 and streams a long run of packed words and single-precision values to the single address 0x10000, with no calls. Two words at a0 +0x18e60 and +0x18e5c get the constant 0xff first (0x2206618, 0x2206620). Between 0x2206630 and 0x2206744 the routine stores constant words to 0x10000, such as 0xffffffffc18093ff at 0x2206630 and 0xffffffffc680d02f at 0x220666c, each followed by three or four float stores. The floats come from registers loaded at 0x220663c, 0x2206640 and 0x2206644 (0x3f4ccccd, 0x3f800000 and 0x3e4ccccd) plus $f6, which a register move at the entry fills from the zero register, so $f6 is 0.
  The context words at a0 +0xc568, +0xc56c, +0xc548, +0xc524 and +0xc528 then feed nine packed words that the routine also stores to 0x10000. Each is the loaded word with its low 10 bits kept, ORed with the bits above bit 9 moved up to start at bit 23, and ORed with a constant: 0x31008000 at 0x2206778 and 0x22067b8, 0x29008000 at 0x2206824 and 0x22068b0, 0x32008000 at 0x220684c and 0x22068d0, 0x20008000 at 0x22068f8, 0x31008000 again at 0x2206918, and 0x21008000 at 0x2206944. The first of them reads +0xc568 right after the store of 0xf0 there (0x220674c); the second reads it after 0xf4 is stored (0x2206798). Between them +0xc548 takes 0x19a (0x22067d8) and +0xc56c takes 0x18 (0x22067e0); the original +0xc548 word was loaded at 0x22067d0 and is stored back unmodified at 0x2206878. The value 0x19a therefore only feeds the packed word built at 0x2206824, and the later packed word at 0x22068b0 reads the restored original. Then +0xc56c and +0xc568 are cleared (0x220687c, 0x2206888), +0xc524 gets 3 (0x2206884) and +0xc528 gets 0x10 (0x2206890) before the remaining packed words are stored.
  The byte at a0 +0xde4 (loaded at 0x22067e4) picks four float words at a0 +0xc504 to +0xc510. When it is zero, the `beq` at 0x22067e8 jumps to 0x2206948, which stores 1.0 (0x3f800000) to +0xc510 and +0xc504 and the zero in $f6 to +0xc50c and +0xc508, then returns to 0x2206800 through the branch at 0x2206954. When it is nonzero the fall-through stores 1.0 to +0xc510 and 0x3e4ccccd to +0xc50c, +0xc508 and +0xc504 (0x22067f0 to 0x22067fc). Both paths meet at 0x2206800, and the four floats are later reloaded and stored to 0x10000 (0x2206858 to 0x2206874) after the packed word of constant 0xffffffff8e809015, in the order +0xc504, +0xc508, +0xc50c, +0xc510.
  Unknown: which board window the address 0x10000 falls in; the linked rows list windows at 0x110000 and 0x120000 and the bundle maps neither onto it.
  Unknown: which fields of the stored words the constants and the packed values set; no field table or datasheet line is linked for them.
  Evidence grade: established.
- `__glOdysseyInitLighting` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaa5b30 (n32).
  Fills a block of fields in the context at a0 with fixed starting values and, in the same pass, writes a long
  fixed run of words and single floats to the one absolute address 0x4000 (base register zero): 22 word stores and 51
  `swc1` stores, each to the same address, so the order of the writes is what carries the data.
  Context fields: the `sw` at 0xdaa5b54 and 0xdaa5b58 store 0xff to +0x168dc and +0x168d8; the `sw` at 0xdaa5c7c and
  0xdaa5cac store 0xf0 then 0xf4 to +0xa138; 0x18 goes to +0xa13c at 0xdaa5cd0; the word at +0xa118 is loaded at
  0xdaa5cd4, replaced by 0x19a at 0xdaa5cdc and stored back as loaded at 0xdaa5d90; later 0x10 goes to +0xa0f8,
  zero to +0xa138, 3 to +0xa0f4 and zero to +0xa13c (0xdaa5d7c to 0xdaa5d8c).
  Float fields +0xa0d4, +0xa0d8, +0xa0dc and +0xa0e0 depend on the byte at +0xc8c (the `lbu` at 0xdaa5ce0). When it is
  zero the `beq` at 0xdaa5cec jumps to 0xdaa5e28, which stores 0x3f800000 to +0xa0e0, zero to +0xa0dc and +0xa0d8,
  and, in the delay slot of the jump back at 0xdaa5e34, 0x3f800000 to +0xa0d4. When it is nonzero the fall-through
  stores 0x3f800000 to +0xa0e0 and 0x3e4ccccd to +0xa0dc, +0xa0d8 and +0xa0d4. Both paths join at 0xdaa5d04, and
  the four floats are later reloaded in the order +0xa0d4, +0xa0d8, +0xa0dc, +0xa0e0 and each written to 0x4000
  (0xdaa5d4c to 0xdaa5d70).
  The stream to 0x4000 is a repeating pattern: a constant word (the first, at 0xdaa5b68, is the sign-extended
  0xffffffffc18093ff; the next is 0xffffffffc180cc19; others are loaded the same way) followed by three or four floats drawn from zero,
  0x3f800000, 0x3e4ccccd and 0x3f4ccccd. Later words are built from context fields: the field's low 10 bits
  ORed with the field shifted right 10 and left 23, ORed with a constant (0x29008000 for the +0xa118 word that
  was loaded at 0xdaa5cd4, 0x32008000 for the two +0xa13c words, 0x20008000 for +0xa0f4, 0x31008000 for +0xa138,
  0x21008000 for +0xa0f8). The first such store, at 0xdaa5d14, writes 0x2900819a, which is the constant 0x19a
  merged the same way.
  The routine makes no calls. It returns at 0xdaa5e20 with the final 0x4000 store in the delay slot at 0xdaa5e24,
  so v0 at return holds that last word.
  Unknown: which device or board window address 0x4000 reaches in the process; the linked mmio rows list windows at
  0x110000 and 0x120000 only, and the mapping of this address needs the caller or the loader's mapping setup.
  Evidence grade: established.
- `__glOdysseyQueryHyperpipeBestRect` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda08fd0 (o32).
  Inferred: request 0x6f640016 carries a query-attribute handler in the linked ioctl row, so this routine
  assembles a block for that query and hands it to the ioctl path.
  The word the `lw` at 0xda08ff8 loads from a0 +0x21ef0 is stored at sp at entry -0x28 (`sw` at 0xda09034);
  the constant 0x1 goes to -0x20 (`sw` at 0xda09004), the entry a1 to -0x24 (`sw` at 0xda0900c), the entry a2
  to -0x1c (`sw` at 0xda09010), the entry a3 to -0x14 (`sw` at 0xda09028), and the word the `lw` at 0xda09000
  loads into t0 from the caller's argument area goes to -0xc (`sw` at 0xda0903c, the delay slot of the call).
  The `jalr` at 0xda09038 calls `__glOdysseyIoctl` with the entry a0, request 0x6f640016 and the block at sp at
  entry -0x28 as its third argument; a3 is still the entry value there.
  The return value becomes a flag. When the ioctl returns 0 the `beq` at 0xda09040 jumps to 0xda09050 and
  the routine returns 0. Any other result falls through to the delay-slot `addiu` at 0xda0904c, which loads
  1 on the way out through the `jr ra` at 0xda0905c.
  Inferred: `__glOdysseyIoctl`, per its committed note, passes through to the C library's `ioctl` keyed on the
  word at the context's +0x7b48, so the block lands as that call's third argument.
  Unknown: whether the board writes results into the block after request 0x6f640016 or only consumes the block;
  the handler's entry would settle it.
  The two remaining words of the block are sign words: the `sw` at 0xda09020 stores the fifth argument
  (the word loaded at 0xda09000) shifted right arithmetically by 0x1f, to -0x10, and the `sw` at
  0xda09024 stores a3 shifted the same way, to -0x18, so each of those two 32-bit values sits in a pair of
  block words with its sign word first.
  Evidence grade: inferred.
- `__glOdysseyQueryHyperpipeBestRect` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9f46c0 (n32).
  It issues one private ioctl for the context in a0, through `__glOdysseyIoctl` (the `jalr` at 0xd9f4720), with request 0x6f640016 in a1, the constant 0x1 in a3 (0xd9f46f4) and 0x103ed0 in a5 (0xd9f46fc).
  Before that call it fills four words of its own frame at sp-48, which is the third argument: the word loaded from a0+0x21ef0 at 0xd9f46dc goes in at offset 0 (the `sw` at 0xd9f4724), the caller's a1 at +0x4 (0xd9f4714), the constant 1 at +0x8 (0xd9f46f8) and the caller's a2 at +0xc (0xd9f470c).
  It has no branches, and the return at 0xd9f473c takes its value from the `or` in the delay slot (0xd9f4740), which copies v1; v1 is set to 0x1 at 0xd9f472c, so the routine returns 1 and not the ioctl's result.
  Inferred: the linked ioctl row for 0x6f640016 (constant and table evidence) puts this number in the private handler table, and the callee note says every private board request in this build takes the `__glOdysseyIoctl` route, so the request is a board query.
  Unknown: which field of the context the word at a0+0x21ef0 holds; no datasheet excerpt in the bundle covers that offset.
  Unknown: how the handler reads the frame words and the a5 constant 0x103ed0; the handler's own code is not in this bundle.
  Evidence grade: inferred.
- `__glOdysseyQueryHyperpipeBestRect` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2238e80 (n64).
  Collects its arguments in a stack block and hands the block to `__glOdysseyIoctl` under the private request 0x6f640016. Block layout: +0x0 takes the word at a0 +0x285d8 (load at 0x2238e94, store in the call's delay slot at 0x2238ed4), +0x4 the entry a1 (0x2238ec4), +0x8 the constant 1 (0x2238ea8), +0xc the entry a2 (0x2238ebc), and +0x10 and +0x18 the entry a3 and a4 as doublewords (0x2238e9c, 0x2238e98). Three arguments are real at the `jalr` at 0x2238ed0: a0, the request number and the block address. Registers a3 and a5 still hold 1 (the constant stored at +0x8) and 0x10e038 (the offset constant that sets up gp), which are leftovers. After the call v1 is set to 1 (0x2238edc); a conditional move just before the `jr` at 0x2238eec zeroes it if the ioctl returned zero, and the delay slot at 0x2238ef0 moves it into v0. So the caller sees 1 for a nonzero ioctl result and 0 otherwise.
  Inferred: the table row for 0x6f640016 gives the handler `gfP_OdsyHPqueryAttrib`, which suggests an attribute read.
  Unknown: the block words the handler for 0x6f640016 fills in (the linked rows give no layout).
  Evidence grade: inferred.
- `__glOdysseyQueryHyperpipeLimit` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda090e8 (o32).
  Inferred: the linked ioctl row ties request 0x6f640018, the one this wrapper submits, to a set-attribute
  handler, so a routine whose name reads as a query goes through the attribute-setting request.
  The routine builds a frame block and submits it through the ioctl relay. Relative to sp at entry, -0x28
  gets the word loaded from a0 +0x21ef0 (`lw` at 0xda09110; `sw` at 0xda09144 in the call's delay slot),
  -0x24 gets a1 (`sw` at 0xda09120), -0x20 gets the constant 0x2 (`sw` at 0xda09118), -0x1c gets a2 (`sw` at
  0xda09124), and -0x10 and -0xc hold a3 widened to two words: the sign word is a3 shifted right
  arithmetically by 0x1f (`sw` at 0xda09130) and a3 itself follows (`sw` at 0xda09134). Nothing writes the two
  words between the -0x1c and -0x10 slots.
  The `jalr` at 0xda09140 calls `__glOdysseyIoctl` with the received a0, the request 0x6f640018, and the block
  address (an `addiu` at 0xda0913c puts it in a2); a3 is the entry value because no instruction touches it first.
  A zero return from that call makes the `beq` at 0xda09148 jump to 0xda09158 and the routine returns 0;
  otherwise the delay slot `addiu` at 0xda09154 (under the `beq` at 0xda09150) sets 1 and the `jr ra` at
  0xda09164 returns that.
  Inferred: per the committed note, `__glOdysseyIoctl` relays to the C library's `ioctl` keyed on the word at
  the context's +0x7b48, leaving the later arguments alone, so the block is that call's third argument.
  Unknown: whether any block word is altered by the board once request 0x6f640018 completes; reading the
  routine behind that request number would answer it.
  Evidence grade: inferred.
- `__glOdysseyQueryHyperpipeLimit` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2238f70 (n64).
  Calls `__glOdysseyIoctl` with the private request 0x6f640018, passing a block of five values built in the frame; the linked row ties that number to the handler `gfP_OdsyHPsetAttrib`. The block takes the word from a0 +0x285d8 first (load at 0x2238f84, delay-slot `sw` at 0x2238fc0), then the entry a1 (+0x4, 0x2238fb0), the constant 2 (+0x8, 0x2238f94), the entry a2 (+0xc, 0x2238fa8) and the entry a3 as a doubleword (+0x18, 0x2238f88). The `jalr` at 0x2238fbc supplies a0, the request number and the block address; a3 (holding 2) and a4 (holding 0x10df48, the constant that builds gp) are not set for the call. The routine hands back 1 when the ioctl returned nonzero and 0 otherwise, because v1 starts at 1 (0x2238fc8), a conditional move before the `jr` at 0x2238fd8 zeroes it on a zero result, and the delay slot at 0x2238fdc moves it into v0.
  Inferred: the constant 2 at +0x8 may pick which attribute the block carries, since the request number is shared with the attribute-setting handler.
  Unknown: how the handler for request 0x6f640018 reads the block words, as its layout is absent here.
  Evidence grade: inferred.
- `__glOdysseyQueryHyperpipePixelAverage` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22391f0 (n64).
  Sends private request 0x6f640016 through `__glOdysseyIoctl`, using a block the routine writes to its own frame first. Block contents: the word loaded from a0 +0x285d8 at 0x2239204 (stored last, in the call's delay slot at 0x2239240), the entry a1 at +0x4 (0x2239230), the constant 4 at +0x8 (0x2239214), the entry a2 at +0xc (0x2239228), and the entry a3 at +0x18 (0x2239208, a doubleword store). At the `jalr` at 0x223923c the callee gets a0, the request and the block address; a3 (4) and a4 (0x10dcc8) are residue, the latter being the constant that builds gp. Return value: v1 is set to 1 at 0x2239248, a conditional move ahead of the `jr` at 0x2239258 zeroes it when the ioctl returned zero, and 0x223925c moves it into v0.
  Inferred: handler `gfP_OdsyHPqueryAttrib` on the row for 0x6f640016 implies a query of one hyperpipe attribute.
  Unknown: which words of the block the handler returns data in, since the bundle carries no layout for it.
  Evidence grade: inferred.
- `__glOdysseyQueryHyperpipeRect` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda09064 (o32).
  Inferred: the linked ioctl row ties request 0x6f640016 to a query-attribute handler, so this wrapper packs
  its arguments into a small frame block and submits that block through the query request.
  Block layout, relative to sp at entry: -0x28 gets the word loaded from a0 +0x21ef0 (`lw` at 0xda0908c,
  `sw` at 0xda090c0 in the call's delay slot), -0x24 gets a1 (`sw` at 0xda0909c), -0x20 gets the constant 0x1
  (`sw` at 0xda09094), -0x1c gets a2 (`sw` at 0xda090a0), and -0x10 and -0xc get a3 widened to two words:
  the sign word is a3 shifted right arithmetically by 0x1f (t0, stored by the `sw` at 0xda090ac) and a3
  itself follows (`sw` at 0xda090b0). No instruction writes the two words between the -0x1c and -0x10 slots.
  The `jalr` at 0xda090bc calls `__glOdysseyIoctl` with a0 as received, 0x6f640016 as the request and the
  address of the block (sp at entry -0x28) as the third argument. Its a3 is the entry value, since nothing
  in the routine changes it before the call.
  The result is reduced to a flag: a zero from the ioctl takes the `beq` at 0xda090c4 to 0xda090d4 and the
  routine returns 0, while any other value runs the delay-slot `addiu` at 0xda090d0 (under the `beq` at
  0xda090cc) and the routine returns 1 at the `jr ra` at 0xda090e0.
  Inferred: the committed note on `__glOdysseyIoctl` makes it a pass-through to the C library's `ioctl`,
  taking the word at the context's +0x7b48 as the first argument, so the block arrives as the third.
  Unknown: the words the board sends back into the block for request 0x6f640016, and whether it reads the
  block first; the handler's entry is the route.
  Evidence grade: inferred.
- `__glOdysseyQueryHyperpipeRect` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9f4750 (n32).
  The routine makes a single call to `__glOdysseyIoctl` at 0xd9f47a4, passing request 0x6f640016 in a1, the context in a0, its own frame pointer in a2, the constant 0x1 in a3 (0xd9f4778) and 0x103e40 in a5 (0xd9f4780).
  The four words of that frame are written just before the call: the context word from a0+0x21ef0 (the `lw` at 0xd9f4768, stored at offset 0 by the `sw` at 0xd9f47a8), the caller's a1 at +0x4 (0xd9f4798), the constant 1 at +0x8 (0xd9f477c) and the caller's a2 at +0xc (0xd9f4790).
  Whatever the call returns, the delay slot of the return (the `or` at 0xd9f47c4) overwrites v0 with v1, which 0xd9f47b0 sets to 0x1, so the routine returns 1.
  Inferred: the callee note says every private board request in this build goes through `__glOdysseyIoctl`, and the linked ioctl row for 0x6f640016 gives constant and table evidence for it, so this is a request to the board.
  Unknown: the field that the context word at +0x21ef0 supplies; the bundle has no datasheet excerpt for that offset.
  Unknown: the handler's use of the a5 constant 0x103e40, which needs the handler body; that body is not in this bundle.
  Evidence grade: inferred.
- `__glOdysseyQueryHyperpipeRect` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2238f00 (n64).
  The block this routine puts on the stack for private request 0x6f640016 holds the word loaded from a0 +0x285d8 at 0x2238f14 (stored in the `jalr` delay slot, 0x2238f50), the entry a1 at +0x4 (0x2238f40), a constant 1 at +0x8 (0x2238f24), the entry a2 at +0xc (0x2238f38) and the entry a3 at +0x18 as a doubleword (0x2238f18). `__glOdysseyIoctl` is called at 0x2238f4c with a0, the request and the block address; leftover a3 (1) and a4 (0x10dfb8, the gp-building constant) ride along. The routine answers 1 for a nonzero ioctl result and 0 for zero: v1 is preset to 1 (0x2238f58), a conditional move before the `jr` at 0x2238f68 clears it on zero, and the delay slot at 0x2238f6c copies it to v0.
  Inferred: the row for 0x6f640016 names handler `gfP_OdsyHPqueryAttrib`, an attribute query.
  Unknown: the fields that the handler for 0x6f640016 writes into the block: the bundle does not carry its layout.
  Evidence grade: inferred.
- `__glOdysseyQueryHyperpipeStereo` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda09330 (o32).
  Packs its arguments into a stack block and sends it as one private ioctl request, returning a success flag.
  The block, relative to sp at entry, is: -0x28 the word loaded from a0 +0x21ef0 (`lw` at 0xda09358, `sw`
  at 0xda0938c in the call's delay slot), -0x24 a1 (`sw` at 0xda09368), -0x20 the constant 0x3 (`sw` at
  0xda09360), -0x1c a2 (`sw` at 0xda0936c), then -0x10 and -0xc hold a3 widened to two words, the first
  being a3 shifted right arithmetically by 0x1f (`sw` at 0xda09378) and the second a3 itself (`sw` at
  0xda0937c). The block slots between -0x1c and -0x10 are left unwritten by this routine.
  The `jalr` at 0xda09388 calls `__glOdysseyIoctl` with the entry a0, the request 0x6f640016, and the block
  address (sp at entry -0x28) as the third argument; a3 is the entry value because nothing changes it first.
  A zero from the ioctl makes the `beq` at 0xda09390 skip to 0xda093a0, so the routine returns 0; any other
  value executes the `addiu` at 0xda0939c (delay slot of the `beq` at 0xda09398) and the return value is 1 at
  the `jr ra` at 0xda093ac.
  Inferred: the callee note says `__glOdysseyIoctl` is the route every private board request takes, and the
  linked ioctl row lists 0x6f640016 in the private table with a query-attribute handler, so the block is a
  board attribute query.
  Unknown: the kernel-side handling of request 0x6f640016 and the selection the constant 0x3 word makes in the
  block; the handler entry for that number in the kernel driver would settle both.
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
- `__glOdysseyQueryHyperpipeStereo` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2239180 (n64).
  A thin wrapper over `__glOdysseyIoctl` for private request 0x6f640016. Before the call at 0x22391cc it fills five slots in its frame: a0 +0x285d8 (loaded at 0x2239194) at +0x0 through the delay-slot `sw` at 0x22391d0, the entry a1 at +0x4 (0x22391c0), the constant 3 at +0x8 (0x22391a4), the entry a2 at +0xc (0x22391b8) and the entry a3 at +0x18 (0x2239198). Only a0, the request and the block address are arguments; the 3 still in a3 and the 0x10dd38 in a4 are left over, the latter from the gp setup. v1 is set to 1 at 0x22391d8 and cleared by a conditional move before the `jr` at 0x22391e8 if the ioctl returned zero, so the caller gets 1 for a nonzero result and 0 for zero (the move into v0 is the delay slot at 0x22391ec).
  Inferred: `gfP_OdsyHPqueryAttrib`, the handler on the 0x6f640016 row, indicates an attribute query.
  Unknown: the block fields returned by the handler for 0x6f640016; the bundle has no field table.
  Evidence grade: inferred.
- `__glOdysseyRasterPos4` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9dcb24 (o32).
  The routine itself writes no device register. It copies the four single-precision words loaded from a1 (the `lwc1` at
  0xd9dcb3c, 0xd9dcb4c, 0xd9dcb58 and 0xd9dcb60) into four frame slots (the `swc1` at 0xd9dcb48, 0xd9dcb54,
  0xd9dcb5c and 0xd9dcb6c) and passes that frame array to `__glOdysseyRasterPosGeneral`. The callee
  pointer is the word loaded from 0xdafe418 at 0xd9dcb40, less 0x3b80 (the constant at 0xd9dcb50),
  which gives 0xd9dc480. The call (the `jalr` at 0xd9dcb68) passes a0 unchanged, the frame array as
  argument 1, the constant 0x4 as argument 2 (set at 0xd9dcb44) and a3 unchanged, and the v0 left at the
  `jr ra` (0xd9dcb7c) is the callee's return value. Inferred: the IP30ODSY32 build's note on this routine,
  at 0xd9ca3b0, is the only evidence for the callee's body here, and it copies argument 1's four words
  into argument 0 +0x100 through +0x10c, stores 0 at +0xf0, and branches on argument 2 = 4 at 0xd9ca404.
  Unknown: which pointer this binary's callee at 0xd9dc480 calls when its argument 2 is 4, since the
  sibling note stops before naming it; the callee's own code at that address would settle it.
  Evidence grade: inferred.
- `__glOdysseyReadFromPMObj` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x220b3f0 (n64).
  Copies the record whose address arrives in `a7` into the stack frame and passes the frame to the
  private ioctl request 0x6f640006 when the call to `CheckMMXfrArgs` returns nonzero.
  The `sw` at 0x220b408 stores back the word loaded at 0x220b3f4 from +0x14 of that record ANDed with
  0x1ffff, which keeps only the low 17 bits; the eight words at +0x0 to +0x1c are then copied into the
  frame by the loads and stores at 0x220b440 to 0x220b478, so the copy of +0x14 holds the masked word.
  The `bgezall` at 0x220b488 calls `CheckMMXfrArgs` with the frame address in `a0` and the record words
  +0x1c down to +0x4 in `a1` through `a7`, and the `beq` at 0x220b490 returns 0 at 0x220b4d4 when that
  call's result is zero.
  Otherwise `__glOdysseyIoctl` is called at 0x220b4a8 with `a0` at entry, 0x6f640006 in `a1` and the
  frame in `a2`; a nonzero result returns 0, with `v0` set at 0x220b4bc.
  If the ioctl returns zero, the `beq` at 0x220b4b0 leads to a bit test on the saved `a5` (loaded at
  0x220b4dc from entry sp -0x34) at 0x220b4f4: when bit 0x2 is set, the `sw` at 0x220b4fc clears the
  word at `a0` +0x285d0, and when it is clear, the `sw` at 0x220b50c stores the value loaded at
  0x220b4f0 from entry sp -0x28 there; both paths return 1.
  Inferred: the committed entry for `__glOdysseyIoctl` (its copy in the IP30ODSY build) says it passes
  the request and the later arguments unchanged to the C library's `ioctl`, reading the first argument
  from `a0` +0x7b48, so this call reaches that library call.
  The `bgezall` at 0x220b488 tests `zero`, so it always branches and links: `CheckMMXfrArgs` runs on
  every call, with its delay-slot `daddiu` setting `a0` to the frame address.
  Unknown: the word in the frame slot at entry sp -0x28 that the `sw` at 0x220b50c writes, since no
  store in this routine fills that slot before the frame address goes to the ioctl at 0x220b4a8.
  Evidence grade: inferred.
- `__glOdysseySetDrawbuf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9ec58c (o32).
  Sends the draw-buffer request to the board through `__glOdysseyIoctl`, then writes a long run of words to
  the address 0x10000: mostly constants, plus four words copied from the context in a0.
  The ioctl request is 0x6f640009 (the `jalr` at 0xd9ec60c). Its third argument is the address of a frame word
  that collects four flags from the arguments: 0x1 when the low byte of a1 is non-zero (`beq` at 0xd9ec5c4),
  0x2 for a2 (`ori` at 0xd9ec5d8, skipped by the `beq` at 0xd9ec5d0 when the byte is zero), 0x4 for a3 (`ori`
  at 0xd9ec5e4, skipped by the `beql` at 0xd9ec5dc), and 0x8 when the byte at sp at entry +0x13, the low byte
  of the fifth argument (`lbu` at 0xd9ec5e0 or 0xd9ec5e8), is non-zero (`beq` at 0xd9ec5f4; the `sw` at
  0xd9ec5ec stores the word first and the `sw` at 0xd9ec5fc stores it again with 0x8 added). Its fourth
  argument is a3 masked to its low byte.
  If the ioctl returns non-zero (the `beq` at 0xd9ec614 falls through), the routine calls the function pointer
  at context +0x14 (the `jalr` at 0xd9ec628) with the context and the string " can't set drawbuf" at
  0xdaefd30. Either way it goes on to the writes.
  The writes go through v0, which holds 0x10000 (set at 0xd9ec63c). They start with constants such as 0x10443,
  0xfa, 0x10046 and 0x96, and copy the context words at +0x969c, +0x96a0, +0x96a4 and +0x96a8 (for example
  the `sw` at 0xd9ec734 to 0xd9ec74c); in one copy the +0x96a4 word has 0x800000 ORed in before its store at
  0xd9ec7cc.
  The word at +0x96a4 is shifted right by 0x1b and masked to one bit at 0xd9ec6b8 and again at 0xd9ec834.
  When that bit is clear the branch is taken and the routine stores 0xffffffff90008116 (the `sw` at 0xd9ec724
  and 0xd9ec884). When it is set the routine stores 0x10841, 0x1204b, 0xffffff and 0x10840, with zero words
  between them, in place of that store and jumps past it.
  Zeros also go to context +0x9830 at 0xd9ec688, 0xd9ec768, 0xd9ec80c and 0xd9ec8c8, and the routine returns
  0x10000 in v0 (the `jr ra` at 0xd9ec8e8).
  Inferred: the linked ioctl row ties request 0x6f640009 to a draw-buffer handler, and the failure string
  names a draw buffer, so the words written at 0x10000 are the draw-buffer setup.
  Unknown: which board window the address 0x10000 maps to; the linked rows name windows at 0x110000 and
  0x120000 only, and the board address map would settle it.
  Evidence grade: inferred.
- `__glOdysseySetDrawbuf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x221e680 (n64).
  Builds a small flag word on the stack from its second to fifth arguments, sends it with the private ioctl
  request 0x6f640009 through `__glOdysseyIoctl`, then streams a fixed run of words, mixed with copies of
  four context words, to the single address 0x10000.
  The flag word at `sp` starts at 0 and gains 1, 2, 4 and 8 in turn when `a1`, `a2`, `a3` and `a4` at entry
  are nonzero (the `beq`/`bne` pairs at 0x221e6a4 to 0x221e6c8 and 0x221e8f0 to 0x221e900, with a `sw` to
  `sp` after each step); its address goes to the ioctl in `a2` at 0x221e6e0, with `a0` the context.
  A nonzero ioctl result (the `beq` at 0x221e6f0 falls through) calls the pointer loaded from `a0` +0x28
  at 0x221e6f8 with `a1` the string at 0x232c800 (" can't set drawbuf"); a zero result skips that call.
  Every later `sw` to 0x10000 uses the base register `a2` holding 0x10000, so all of them hit one address,
  none advancing it. The first run stores 0x10443, 0xfa, 0x10046, 0x10019 and 0x96; a `sw` of zero to
  `a0` +0xbb80 sits inside it at 0x221e754 and again at 0x221e868 and 0x221e8d4.
  The `bltz` at 0x221e784 tests the word at `a0` +0xb9f4 shifted left by 4. When it is negative the block at
  0x221e910 stores 0x10841, 0x1204b, 0xffffff and 0x10840 with zeros between, then joins the main block at
  0x221e79c; otherwise the `sw` at 0x221e798 stores the 0xffffffff90008116 value first.
  The main block stores copies of `a0` +0xb9ec, +0xb9f0, +0xb9f4 and +0xb9f8 three times: the second copy
  writes zero in place of +0xb9f4 (0x221e804) and the third ORs 0x800000 into it (the `sw` at 0x221e830).
  The tail from 0x221e894 copies the same four words a fourth time. A second `bltz` at 0x221e888 repeats the +0xb9f4 test and picks
  either the 0x221e954 constant block or the 0xffffffff90008116 store at 0x221e890.
  The return value is the word at `a0` +0xb9f4.
  Inferred: the 0x10000 target appears in the inventory as an address outside the file (memory-mapped I/O),
  and the ioctl row names a set-drawbuffer handler; those two rows are the only support for treating the
  stores as device commands, and no linked board window starts at 0x10000.
  Unknown: how the bits of each constant word sent to 0x10000 (0x10443 and 0x10046 among them) divide into
  fields; no register name is linked to that address, so a datasheet entry for it would settle it.
  Evidence grade: inferred.
- `__glOdysseySetDrawbuf` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdabd510 (n32).
  Sends a private board request for the context in a0 and then writes a fixed run of words to the one absolute
  address 0x4000 (base register zero), mixing constants with words copied from the context.
  The request: the four arguments a1 to a4 are each tested against zero (the `beq` at 0xdabd530, 0xdabd53c,
  0xdabd548 and 0xdabd554, with the re-tests at 0xdabd840, 0xdabd848 and 0xdabd850 entering the same chain at
  other points), and a word at sp+0 collects one bit per argument that is nonzero: 1 for a1, 2 for a2, 4 for a3
  and 8 for a4 (the `ori` steps at 0xdabd538, 0xdabd544, 0xdabd550 and 0xdabd560). It is zeroed at 0xdabd52c, and the
  `bgezall` at 0xdabd57c then calls `__glOdysseyIoctl` with a1 = 0x6f640009 (set in the delay slot at 0xdabd580)
  and a2 pointing at that word. A nonzero result (the `beq` at 0xdabd584 falls through) calls the function pointer at
  context +0x14 (the `lw` at 0xdabd58c, the `jalr` at 0xdabd598) with the string " can't set drawbuf" at
  0xdbc12b8 as its second argument; a zero result skips that. Either way the routine continues; the result is not
  returned.
  Writes to 0x4000: the sequence stores 0x10443, then 0xfa or 0x96, then 0x10046 words (for example 0xdabd5b8,
  0xdabd5c4, 0xdabd5cc), each such group preceded by a store of zero to context +0x9750 (the `sw` at 0xdabd5b0,
  0xdabd5e0, 0xdabd600). Bit 0x1b of the word at context +0x95c4 (loaded at 0xdabd614 and again at 0xdabd778)
  chooses between two forms, twice. When the bit is set the stores 0xdabd638 to 0xdabd68c (0x10841, 0x1204b,
  0xffffff and zeros, then 0x10840) and later 0xdabd79c to 0xdabd7e0 run; when it is clear the `beq` at 0xdabd630
  and 0xdabd794 skip them and a single store of 0xffffffff90008116 (0xdabd868 and 0xdabd880) is made instead.
  The words at context +0x95bc, +0x95c0, +0x95c4 and +0x95c8 are copied unchanged to 0x4000 at 0xdabd698, 0xdabd6a0,
  0xdabd6a8 and 0xdabd6b0 and again at 0xdabd7ec to 0xdabd804, and a later copy at 0xdabd724 ORs 0x800000 into the
  +0x95c4 word before storing it.
  The routine ends at 0xdabd838 with the store of 0x10046 in the delay slot, and returns the +0x95c4 word loaded
  at 0xdabd7f8.
  Inferred: the linked ioctl row for 0x6f640009 shows a private handler with a draw-buffer name, and the string at
  0xdbc12b8 reports failure to set the draw buffer, so the request asks the board to set the draw buffer.
  Unknown: which device or board window the absolute address 0x4000 falls in, and which fields of the word at
  +0x95c4 bit 0x1b and the 0x800000 bit belong to; no linked row or datasheet excerpt covers either.
  Evidence grade: inferred.
- `__glOdysseySetDrawbuf` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3a2ba0 (n64).
  Packs four of its arguments into a flag word on the stack and hands that word to the private ioctl
  request 0x6f640009 (through `__glOdysseyIoctl`), then emits a fixed run of words, interleaved with copies
  of four context words, all to the one address 0x4000.
  The flag word at `sp` begins as 0. Bit values 1, 2, 4 and 8 are added in that order for each of `a1`,
  `a2`, `a3` and `a4` that is nonzero at entry (the branches at 0xb3a2bc0 to 0xb3a2be4 and 0xb3a2ed0 to
  0xb3a2ee0, each step followed by a `sw` to `sp`). The ioctl receives its address in `a2` (0xb3a2c00).
  If the ioctl returns nonzero (the `beq` at 0xb3a2c14 falls through), the pointer at `a0` +0x28 is called
  with the string at 0xb4a8708 (" can't set drawbuf") as `a1`; if it returns zero that call is skipped.
  Every store from here on is a `sw` with `zero` as base and displacement 0x4000, so the address never
  moves. The first run is 0x10443, 0xfa, 0x10046, 0x10019 and 0x96, with a `sw` of zero to `a0` +0xbc58
  inside it (0xb3a2c40, 0xb3a2c70, 0xb3a2c90) and again after later runs.
  The `beq` at 0xb3a2cc0 shifts the word at `a0` +0xbacc right by 0x1b and masks it with 1. Zero jumps to
  0xb3a2ef0, which writes the 0xffffffff90008116 value; one falls through to the block that writes 0x10841,
  0x1204b, 0xffffff and 0x10840 with zeros between. Both continue at the tail 0xb3a2d20.
  The tail copies `a0` +0xbac4, +0xbac8, +0xbacc and +0xbad0 more than once. In the second copy zero
  replaces the +0xbacc word (0xb3a2d88); in the third, 0x800000 is ORed into it (the `sw` at 0xb3a2db4).
  The same bit test at 0xb3a2e24 then selects, with a zero result, the 0xffffffff90008116 write at
  0xb3a2f10 or, with a one, the 0x10841 block, followed by one more copy of the four words. The routine
  returns the word at `a0` +0xbacc.
  Inferred: the inventory lists 0x4000 as an address outside the file (memory-mapped I/O) and links the
  request to a handler named `gfP_OdsySetDrawBuffer`; that is the only reason to read these stores as
  device commands, and no linked board window starts at 0x4000.
  Unknown: the bit layout of each constant word sent to 0x4000 (0x10443 and 0x10046 among them), since no
  register name is linked to that address, so only a datasheet row for 0x4000 can settle it.
  Evidence grade: inferred.
- `__glOdysseySetProgram` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9dc0b8 (o32).
  Streams tagged 32-bit words from tables in the context to the address 0x10000, for the slot record
  chosen by a1; the record is at context + (a1 shifted left by 5) + 0xa658, and its words at +0xa658, +0xa65c,
  +0xa660, +0xa664, +0xa668, +0xa66c, +0xa670 and +0xa674 steer the work. The routine makes no call.
  If the byte at context +0x21ef8 is non-zero (`beq` at 0xd9dc0f4), it stores the constant 0x298080c5 as a word
  to 0x10000 (the `sw` at 0xd9dc10c, in the delay slot of the jump to the exit) and leaves. If the word at context
  +0xa654 is zero (`beql` at 0xd9dc118), it leaves with nothing written.
  Otherwise v1 is the word at +0xa6b0 and a2 the word at +0xa6ac. The working copy of a1 becomes v1 minus a2
  plus 0x738 when a2 is non-zero and v1 is not below it (unsigned, `bne` at 0xd9dc128), and v1 itself in the
  other cases. The `sw` at 0xd9dc174 writes a header word from v1: the low 10 bits, the bits above bit 9
  moved up to start at bit 0x17, 0x27000000 and 0x8000 ORed in. The loop at 0xd9dc180 then runs six passes
  (counter from 5, `bgez` at 0xd9dc1a4): each loads a halfword going down by 2 from the row address, the
  context word at +0x16d34 plus the working a1 times 0xc, plus 0xa, and writes it with the same bit packing
  and 0x40000000 instead of 0x27000000 (`sw` at 0xd9dc1a8).
  The `sw` at 0xd9dc1b4 stores the entry a1 to context +0xa6a8. When the record word at +0xa66c is zero
  (`beql` at 0xd9dc1d4), or equals the word at +0xa6ac (`beql` at 0xd9dc1e0), the routine skips ahead to
  0xd9dc29c. Otherwise it streams more rows: the count is the word at +0x16d38 minus the +0xa66c word, capped
  at 0xc7, and for each row the `sw` at 0xd9dc248 writes a header from a counter that starts at 0x738 and
  rises by 1, followed by the six halfword words of the row at the +0x16d34 table (loop at 0xd9dc254, `sw` at
  0xd9dc27c), the row address stepping by 0xc. If the count is not positive the loop is skipped. Both paths
  then store the record's +0xa66c word to context +0xa6ac (`sw` at 0xd9dc294).
  At 0xd9dc29c every path that gets this far copies the record word at +0xa670 to context +0xa6b0 (`sw` at
  0xd9dc2ac), writes it as a header word tagged 0x27000000 (`sw` at 0xd9dc2e4), and streams the six halfwords
  of the row named by the record word at +0xa674 the same way (`sw` at 0xd9dc314).
  The tail sets context +0xa220 to the record word at +0xa668 plus one (`sw` at 0xd9dc328) and context
  +0xa1f8 to the table entry at context + (that word times 4) + 0xa254 (`sw` at 0xd9dc344). It then writes
  packed words from +0xa1f8 tagged 0x29000000 (0xd9dc368) and from +0xa220 tagged 0x33000000 (0xd9dc390),
  the constant 0xffffffff90808800 and two zero words (0xd9dc398 to 0xd9dc3a0). It reloads +0xa220, +0xa1f8,
  +0xa1fc and +0xa204 from the record words at +0xa664, +0xa658, +0xa65c and +0xa660 (0xd9dc3a8 to 0xd9dc3c0)
  and writes them packed with tags 0x33000000, 0x29000000, 0x2a000000 and 0x2c000000 (`sw` at 0xd9dc3e4,
  0xd9dc408, 0xd9dc42c and 0xd9dc454), then returns.
  Inferred: the linked token row labels 0x298080c5 as a sequencer word for register 0x29, so the early store
  is a sequencer write.
  Unknown: the board window that holds the streaming address 0x10000; only windows at 0x110000 and 0x120000
  appear in the linked rows, so the board address map is the route to an answer.
  Evidence grade: inferred.
- `__glOdysseySetProgram` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaad4b0 (n32).
  Takes the context in a0 and an index in a1 that selects a 32-byte record at a0 + (a1 << 0x5), and streams packed
  words for that record to the one absolute address 0x4000 (base register zero), updating bookkeeping fields in
  the context as it goes. It makes no calls.
  Early exits: when the byte at +0x21dec is nonzero (`lbu` at 0xdaad4c0, falls through the `beq` at 0xdaad4d4), the
  routine returns the constant 0x29808062 and stores that same constant to 0x4000 in the return's delay slot
  (0xdaad4e0). When that byte is zero and the word at +0xa574 is zero (`beq` at 0xdaad4fc), it returns the same
  constant at 0xdaad960 with no store.
  Otherwise the first stores go to 0x4000. The word at +0xa5d0 gives the first header: its low 10 bits, plus the
  bits from bit 10 up moved to start at bit 23, ORed with 0x27008000 (0xdaad544). Six more words follow
  (0xdaad564 to 0xdaad5fc), each built the same way from a halfword read downward from a pointer, with 0x40008000
  ORed in. The pointer is the table pointer at +0x16c44 plus 0xc bytes per entry plus 0xa; the entry number is the
  +0xa5d0 word, unless the word at +0xa5cc is nonzero and at or below it (unsigned compare at 0xdaad510), in which case it is the
  +0xa5d0 word minus the +0xa5cc word plus 0x738 (0xdaad518 and 0xdaad51c).
  The routine then stores a1 to +0xa5c8 (0xdaad600), reads the record word at +0xa58c and sets a1 to 0x738 in the
  branch delay slot (0xdaad60c); the record pointer was computed before that (the load at 0xdaad604 already used it), so the record loads after
  that point still use the original index. A zero record word goes to the tail at 0xdaad754 (via 0xdaad954); a record
  word equal to the +0xa5cc word also goes to the tail (via 0xdaad74c), and in both cases +0xa5cc is not written.
  Loop path: the count is the word at +0x16c48 minus the record word, clamped to at most 0xc7. If it is not above zero (`blez` at 0xdaad640) the loop is skipped. Otherwise each pass
  stores a header word built from a1 (0x738 on the first pass, one more each pass) ORed with 0x27008000, then six
  packed words from six halfwords below a pointer that starts at the table pointer plus 0xc bytes per record
  plus 0xa and steps by 0xc each pass (0xdaad674 to 0xdaad72c). When the loop ends, the record word is stored to
  +0xa5cc (`sw` in the delay slot at 0xdaad748).
  Tail: the record word at +0xa590 is copied to +0xa5d0 (0xdaad758), then a header of that word ORed with 0x27008000
  and six halfword-packed words (0xdaad788 to 0xdaad844, the pointer using the record word at +0xa594) go to
  0x4000. The record word at +0xa588 plus one is stored to +0xa140 (0xdaad850). The word at a0 + 4 * the +0xa588
  word, +0xa174, is stored to +0xa118 (0xdaad874) and packed with 0x29008000 to 0x4000, then the +0xa140 word is
  packed with 0x33008000 and stored, followed by 0xffffffff90808800 and two zero words (0xdaad8a8 to 0xdaad8b0).
  Last, the record words at +0xa584, +0xa578, +0xa57c and +0xa580 are copied to +0xa140, +0xa118, +0xa11c and
  +0xa124 (0xdaad8b8 to 0xdaad8e0), and each is packed to 0x4000 with the constants 0x33008000, 0x29008000,
  0x2a008000 and 0x2c008000. The last of those is the `sw` at 0xdaad950 in the return's delay slot, and v0 at
  the return holds that packed word.
  Unknown: which device or board window the absolute address 0x4000 falls in, and the device-side result of these
  packed words; the bundle links no register row or datasheet excerpt for that address.
  Evidence grade: established.
- `__glOdysseySoftClipClipTriangleFast` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda02150 (o32).
  Does not touch the device directly; it gathers three pointer arguments into a small array in its own frame
  and calls `__glOdysseyDoTriangleClipFast` on it.
  The `sw` at 0xda02174, 0xda02178 and 0xda0217c copy a1, a2 and a3 into three consecutive frame words at sp at
  entry -0x10, -0xc and -0x8. The `jalr` at 0xda0218c then calls the function whose pointer was loaded at
  0xda02160 with a0 as received, a1 the address of that array (the `addiu` in the delay slot at 0xda02190),
  a2 the constant 0x3 (set at 0xda02188), and a3 the word at sp at entry +0x10 (the `lw` at 0xda02184, the
  first argument passed on the caller's stack). The result of the call is returned unchanged by the `jr ra`
  at 0xda021a0.
  Inferred: the note on `__glOdysseyDoTriangleClipFast`, written for the IP30ODSY32 build's routine at
  0xd9edbc0, says its second argument points to a list of vertex-record pointers, its third is the vertex
  count and its fourth is a plane mask, so this wrapper presents three vertices and passes the stacked word as
  the plane mask.
  Unknown: whether the callee in this binary at 0xda01ec0 reads its arguments the way the IP30ODSY32 note
  says; its own code would settle it.
  Evidence grade: inferred.
- `__glOdysseySoftClipRenderLine` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda00860 (o32).
  Takes the context at arg0 and two vertex records at arg1 and arg2, computes four single-precision
  words into them (+0x80 and +0x84 of each record), and then either returns 1 right after the
  compare tests or runs a chain of indirect calls bracketed by writes of 0x14400, 1 and 0x14001 to
  absolute 0x10000 (the `sw` at 0xda00b94, 0xda00b9c and 0xda00d48). On the 0x1d00 path (the word at
  a0+0x570 equals 0x1d00, the `bne` at 0xda008b4 falls through) it copies the word at absolute
  0xdb00110 into a0+0x2f2c (the `sw` at 0xda008c8), then the `beql` at 0xda008d8 tests whether every
  bit of the word at a0+0x6de4 is set in the word at offset 0 of the pointer at a0+0x6de0, and the
  fall-through calls the function pointer at offset 0xc of that pointer (the `jalr` at 0xda008ec).
  Both outcomes store back the word read from +0x2f2c at 0xda008c0 (the `sw` at 0xda008dc or
  0xda008fc), so the copy is overwritten before the code goes on. The `bltz` at 0xda00918 tests the
  word at a0+0x7b70 shifted left by 9; when it is negative the code jumps to 0xda00b8c, skipping all
  the floating-point work. Otherwise the first floating-point block stores into +0x80 of arg1 (the
  `swc1` at 0xda00a14) and of arg2 (0xda00a5c) the sum of four products, the record words at +0x10
  to +0x1c times the words at a0+0x9588 to a0+0x9594, scaled by a reciprocal (one divided by the
  same four record words weighted by a0+0x95b8 to a0+0x95c4). It adds the word at a0+0x19d9c to
  arg2's new word and tests that sum against zero (double compare at 0xda00a70) and against the word
  at a0+0x19da8; if both hold and arg1's new word is at most arg2's plus the word at a0+0x19da4, the
  `bc1tl` at 0xda00aa8 jumps to 0xda00d90 and the routine returns 1 with no store to absolute
  0x10000. The second block at 0xda00ab4 repeats this with the words at a0+0x9598 to a0+0x95a4,
  storing +0x84 of arg1 and arg2 (0xda00af4, 0xda00b3c) and using the words at a0+0x19da0,
  a0+0x19da8 and a0+0x19da4; if its three tests hold, the `bc1t` at 0xda00b88 jumps to 0xda00d8c and
  the routine again returns 1. Every other path reaches 0xda00b90 with t5 holding 0x10000 with
  0x4400 ORed in, so the `sw` at 0xda00b94 writes 0x14400 to absolute 0x10000 and the `sw` at
  0xda00b9c writes 1. Four tails follow, chosen by the byte at +0x191 of arg1 (v1) and of arg2 (t0).
  Both nonzero: copy the word at a0+0xa6a8 into a0+0xa698 and a0+0xa69c, then call through the
  pointer at a0+0x19e94 with arg1 and then arg2. arg1 zero and arg2 nonzero: write 1 to a0+0xa698,
  call `__glOdysseySetProgram` (via the pointer at absolute 0xdafeb0c) with a1 = 1, call through
  a0+0x19e98 with arg1, call `__glOdysseySetProgram` with the word from a0+0xa6a8, write that word
  to a0+0xa69c, and call through a0+0x19e94 with arg2. arg1 nonzero and arg2 zero: copy the word
  from a0+0xa6a8 into a0+0xa698, call through a0+0x19e94 with arg1, write 1 to a0+0xa69c, call
  `__glOdysseySetProgram` with 1, call through a0+0x19e98 with arg2, and call
  `__glOdysseySetProgram` with the copied word. Both zero: write 1 to a0+0xa698 and a0+0xa69c, call
  `__glOdysseySetProgram` with 1, call through a0+0x19e98 with arg1 and arg2, and call
  `__glOdysseySetProgram` with the word from a0+0xa6a8. Every tail reaches 0xda00d3c, which writes
  0x14001 to absolute 0x10000 (the `sw` at 0xda00d48), then, depending on the word at a0+0x96f4 (the
  `beq` at 0xda00d58), either writes zero to a0+0x9830 and the constants 0x10443, 0xfa, 0x10046 and
  0x10046 again to absolute 0x10000 (the `sw` at 0xda00d6c to 0xda00d80) or skips them, writes 1 to
  a0+0x9830 (the `sw` at 0xda00d88), and returns 0x10046.
  Unknown: the routines reached through the pointers at a0+0x19e94 and a0+0x19e98, and the handling
  inside `__glOdysseySetProgram` of its arguments; its committed row gives only its location and
  size, so its own entry would settle it.
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
- `__glOdysseySoftClipRenderLine` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2230f10 (n64).
  Takes a context in `a0` and two vertex records in `a1` and `a2`. It either returns early after float
  tests, or writes a short fixed word sequence to the single address 0x10000 around calls through function
  pointers in the context, and returns 0x14001.
  If the word at `a0` +0x670 equals 0x1d00 (`beq` at 0x2230f58), the entry first swaps the 8-byte slot at
  `a0` +0x4920 to the value loaded from the slot at abs 0x2342a00 (the `sd` at 0x22312c8). Only when the
  word at `a0` +0x8ce0 has a bit that is clear in the word at the pointer `a0` +0x8cd8 points to
  (0x22312d8), it calls the pointer at +0x10 of that same pointer's target. It then stores the saved slot
  back at 0x2231308, sets both flag bytes read from +0x199 of `a1` and `a2` to zero in registers, and resumes at 0x2230f60.
  The word at `a0` +0x9ec0, shifted left by 0x29, decides the next step (`bgez` at 0x2230f6c). Non-negative
  goes to the float path below. Negative stores 0x14400 and then 1 to 0x10000 (the `sw` at 0x2230f7c and the
  one in the delay slot at 0x2230f88), then picks one of four call sequences from the flag bytes at +0x199
  of `a1` and `a2`. All four set the words at `a0` +0xc9ec and +0xc9e8, calling the pointers at `a0`
  +0x1c560 or +0x1c568 and `__glOdysseySetProgram` (through the slot at abs 0x233fd08) with `a1` equal to 1
  or to the word saved from `a0` +0xc9f8.
  With both bytes nonzero (0x2230f94): both words get the +0xc9f8 value, then the +0x1c560 pointer is called
  for `a1`, then for `a2`.
  With the `a1` byte nonzero and the `a2` byte zero (0x2231314): +0xc9e8 gets the +0xc9f8 value, +0x1c560
  is called for `a1`, then SetProgram with 1, +0x1c568 for `a2`, then SetProgram with the saved value.
  With the `a1` byte zero and the `a2` byte nonzero (0x22310a4): SetProgram with 1 and +0xc9e8 set to 1,
  +0x1c568 for `a1`, SetProgram with the saved value, +0xc9ec set to it, then +0x1c560 for `a2`.
  With both bytes zero (0x2231044): both words are set to 1, SetProgram with 1, +0x1c568 for `a1` and for
  `a2`, then SetProgram with the saved value.
  All four continue at 0x2230fbc, which stores 0x14001 to 0x10000. If the word at `a0` +0xba44 is nonzero,
  the `sw` at 0x2230fd8 first zeroes `a0` +0xbb80 and 0x10443, 0xfa and 0x10046 (twice) are stored to
  0x10000; the `sw` at 0x2230ffc then sets +0xbb80 to 1, and the return at 0x223100c leaves 0x14001 in `v0`.
  The float path (0x22310f4) takes a four-term product-sum of `a0` +0xb908 to +0xb914 with +0x18 to +0x24
  of `a1`, divides the double at abs 0x2347a18 by it, narrows the quotient to single precision, then does
  the same for `a2`. It multiplies each quotient by a second product-sum with `a0` +0xb8d8 to +0xb8e4 and
  stores the single-precision result at +0x88 of `a1` (0x2231184) and of `a2` (0x22311c0). Adding the
  `a2` +0x88 value to `a0` +0x1c45c and +0x1c464, it returns early (0x2231014) if the first sum is not
  below 0, is below the word at +0x1c468, and the `a1` +0x88 value is at most the second sum. Otherwise
  the same is repeated with `a0` +0xb8e8 to +0xb8f4, storing +0x8c of `a1` (0x223123c) and `a2` (0x2231274)
  and using `a0` +0x1c460, +0x1c464 and +0x1c468; all three tests holding returns early (0x2231018), and
  any failing jumps to the sequence from 0x2230f74 that stores 0x14400 (the `sw` at 0x2230f7c).
  Unknown: the content of the word sequences sent to 0x10000 (0x14400, 0x14001, 0x10443), since no register
  name is linked to that address, so a datasheet row for 0x10000 is what would settle it.
  Unknown: the targets of the calls through `a0` +0x1c560, +0x1c568 and +0x10 of the pointer at +0x8cd8;
  the bundle holds no entry for them, and `v0` is not set on the early-return path.
  Evidence grade: established.
- `__glOdysseySoftClipRenderLine` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacc7e0 (n32).
  Arguments are the context (a0) and two records (a1, a2); each record has a flag byte at +0x191, read at 0xdacc7e4
  for a1 and 0xdacc7e0 for a2. Unless a rejection test succeeds it writes 0x14400 and 1 and, at the end, 0x14001 to the one
  address 0x4000, and calls per-record routines through two pointers in the context, bracketed by
  `__glOdysseySetProgram` calls.
  Special case: if the whole word at +0x570 equals 0x1d00 (`beq` at 0xdacc834) the block at 0xdaccbac saves the
  word at +0x2e4c, overwrites it with the word loaded from the global at 0xdbdbca0 (`sw` at 0xdaccbb4) and, if the
  word at +0x6d04 has a bit set that is clear in the first word of the table that the word at +0x6d00 points to
  (the `beq` at 0xdaccbc8), calls the function at +0x8 of that table with a1 set to the table. It then writes the
  saved word back (`sw` at 0xdaccbf8), zeroes both flag bytes (0xdaccbf4 and the delay slot at 0xdaccc00) and joins
  the main path at 0xdacc83c.
  Early exit: the word at +0x7a90 is ANDed with 0x400000 and, when the result is zero, the `beq` at
  0xdacc860 sends the routine to the float block at 0xdacc9a8; with the bit set the stores start directly. The float
  block divides a double constant (the `ldc1` at 0xdacc85c) by a four-term product-sum of each record's words at
  +0x10 to +0x1c with the context words +0x94d8 to +0x94e4, narrows the quotient to single, and stores into each
  record the product-sum with the context words +0x94a8 to +0x94b4 times that reciprocal at +0x80 (`swc1` at 0xdacca30
  for a1 and 0xdacca6c for a2) and the product-sum with +0x94b8 to +0x94c4 times it at +0x84 (0xdaccb0c and
  0xdaccb44). Two groups of three compares follow, on the +0x80 values and then the +0x84 values: a double constant
  (loaded at 0xdacca78, 0x0 in the branch table) is at or below the context word at +0x19cac (+0x19cb0
  for the second group) plus a2's stored value, that sum is below the word at +0x19cb8, and a1's stored value is at
  or below the word at +0x19cb4 plus a2's stored value. The listing leaves a number of these float compares as raw words. If all three hold in a group the routine restores its registers and returns
  with no store to 0x4000 (0xdaccad0 and 0xdaccba4); any false compare (`bc1f` at 0xdacca84 to 0xdaccb80) sends it on to the
  stores at 0xdacc868.
  The writes to 0x4000 begin with 0x14400 (0xdacc868) and 1 (delay slot at 0xdacc870). After that the flag bytes pick the calls: a record with a nonzero flag is passed to the pointer at +0x19d8c, one with a zero flag to the pointer at
  +0x19d90. Both nonzero: the word at +0xa5c8 is stored to +0xa5bc and +0xa5b8 and +0x19d8c is called on a1 and a2.
  Otherwise `__glOdysseySetProgram` is called with index 1 around the zero-flag record or records, with 1 stored to
  +0xa5b8 or +0xa5bc (or both) and the +0xa5c8 word stored to the other, and called again with the +0xa5c8 word as
  index.
  Exit path at 0xdacc90c: stores 1 to +0x9750 (0xdacc918) and returns at 0xdacc938, with 0x14001 stored to 0x4000 in the
  delay slot at 0xdacc93c. v0 on the main return is the result of the last call, which the bundle does not resolve.
  Inferred: since a group of three true compares ends the routine before any write to 0x4000, the groups look like a
  trivial-reject check; nothing in the bundle beyond the control flow supports that reading.
  Unknown: what the double constant behind the `ldc1` at 0xdacc85c holds. Unknown: how the device responds to the words
  written to 0x4000, since no linked row or datasheet excerpt covers that address.
  Unknown: the code reached through the pointers at +0x19d8c and +0x19d90; it lies outside this bundle.
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
- `__glOdysseySoftClipRenderPoint` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaccd80 (n32).
  Stores to the address 0x4000 on both sides of one indirect call, and after the call writes 1 to a0+0x9750 of the structure at a0; the call target is read from +0x19d8c of a0.
  Two words go to 0x4000 before the call: 0x14400 (`sw` at 0xdaccd90) and then zero (`sw` at 0xdaccd98), and the delay slot of the call at 0xdaccdc0 passes the entry a1 as its a0.
  After the call it stores 1 to a0+0x9750 (`sw` at 0xdaccde8), sets v0 to 0x14001 (at 0xdaccdec), and returns; the delay slot of the return (`sw` at 0xdaccdf4) writes that 0x14001 to 0x4000, so the value the call returned is overwritten and not returned.
  No strings are referenced, and the callee carries no committed note.
  Unknown: the content of the routine at the pointer read from +0x19d8c of a0, which the bundle does not contain.
  Unknown: the peripheral reply, if any, to the words stored at 0x4000 and at a0+0x9750; the bundle names no register at either place.
  Evidence grade: established.
- `__glOdysseySoftClipRenderPoint` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3b25f0 (n64).
  Writes control words to 0x4000 around one call through a function pointer at `a0` +0x1c760, and afterwards
  sets the word at `a0` +0xbc58 to 1.
  The `sw` at 0xb3b2600 writes 0x14400 to 0x4000, and the `sw` at 0xb3b2608 writes 0 there before the call.
  The `ld` at 0xb3b2620 loads the pointer from `a0` +0x1c760, and the `jalr` at 0xb3b2630 calls it with `a0`
  and `a1` both set to the argument `a1` (the `or` in its delay slot), and `a2` and `a3` passed unchanged.
  After the call, the `sw` at 0xb3b2658 writes 1 to the word at `a0` +0xbc58, and the return (the `jr` at
  0xb3b2660) has a `sw` in its delay slot that writes 0x14001 to 0x4000, and it returns 0x14001 in `v0`.
  Inferred: the address 0x4000 counts as a device address because the bundle's address list marks it
  memory-mapped I/O outside the file; the linked windows are elsewhere, at 0x110000 and 0x120000.
  Unknown: the target of the call through the pointer at `a0` +0x1c760, which the bundle does not name and
  no callee note covers.
  Unknown: which fields the words 0x14400, 0 and 0x14001 sent to 0x4000 carry; a datasheet table for that
  register or a device-side capture would settle it.
  Evidence grade: inferred.
- `__glOdysseySoftClipRenderTriangle` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda004c0 (o32).
  Every path first stores 0x14400 and then 0x4 to absolute address 0x10000 (the `sw` at 0xda00500
  and 0xda0050c), then branches on the word at a0+0x570 against 0x1d00 (the `bnel` at 0xda00518).
  When that word is not 0x1d00, it makes three indirect calls through the pointer at a0+0x19e94 (the
  `jalr` at 0xda00608, 0xda0061c and 0xda00630), passing the caller's a1, a2 and a3 in turn as the
  first argument, and falls through to the tail. When it is 0x1d00, it copies the word at absolute
  0xdb00110 into a0+0x2f2c (the `sw` at 0xda0052c), then the `beql` at 0xda0053c tests whether every
  bit of the word at a0+0x6de4 is also set in the word at offset 0 of the pointer at a0+0x6de0. When
  some bit is not set, it saves the word that was at +0x2f2c before the copy (the `sw` at 0xda00548)
  and calls the function pointer at offset 0xc of that pointer (the `jalr` at 0xda00554) with a1 set
  to the pointer and a2 to the word at a0+0x6de4. Both sub-paths reach the `sw` at 0xda0056c, which
  writes back the word read from +0x2f2c at 0xda00524, so the copy is overwritten before the return;
  this block then calls through the pointer at a0+0x19e9c (the `jalr` at 0xda00580, 0xda00594 and
  0xda005a8) and the pointer at a0+0x19e98 (the `jalr` at 0xda005bc, 0xda005d0 and 0xda005e4) and
  joins the tail at 0xda0063c. The tail stores 0x14001 to absolute 0x10000 (the `sw` at 0xda00644),
  then reads the word at a0+0x96f4 (the `lw` at 0xda0064c): when it is zero it writes 1 to a0+0x9830
  (the `sw` at 0xda00688), and when it is nonzero it first writes 0 to a0+0x9830 and 0x10443, 0xfa
  and 0x10046 (twice) to absolute 0x10000 (the `sw` at 0xda0066c to 0xda00680), then writes 1 to
  a0+0x9830 as well; it returns 0x10046.
  Unknown: the routines behind the pointers at a0+0x19e94, a0+0x19e98 and a0+0x19e9c and behind the
  pointer at offset 0xc of the pointer at a0+0x6de0; no callee note is linked, so a committed entry
  for each would settle which registers each one writes.
  Unknown: which register at absolute address 0x10000 each written word reaches; the linked board
  windows at 0x110000 and 0x120000 do not include that address, so a linked row or a datasheet entry
  for 0x10000 would settle it.
  Evidence grade: established.
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
- `__glOdysseySoftClipRenderTriangle` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacc500 (n32).
  Reads the board word at `a0`+0x570, the record pointer at `a0`+0x6d00 with the word beside it at
  `a0`+0x6d04, the word at `a0`+0x2e4c, and the table words at `a0`+0x19d8c to +0x19d94, and writes
  to absolute 0x4000 and to `a0`+0x9750. Two constant words, `0x14400` then `0x4`, go to absolute
  0x4000 first (the `sw` at 0xdacc514 and 0xdacc520), and only after that does the `bne` at 0xdacc554
  compare the word at `a0`+0x570 with 0x1d00. On equality, the `lw` at 0xdacc55c loads the word at
  `a0`+0x2e4c and the `sw` at 0xdacc560 overwrites it with the word at absolute 0xdbdbca0 (the `lw` at
  0xdacc550); the `jalr` at 0xdacc590 then calls through the record's +0x8 word, but only when the word
  at `a0`+0x6d04, ANDed with the complement of the record's +0x0 word, is nonzero (the `beq` at
  0xdacc57c). Further along that branch, the `sw` at 0xdacc59c stores the value read at
  0xdacc55c before the overwrite, and six calls through `a0`+0x19d90 and `a0`+0x19d94 run from the
  `jalr` at 0xdacc5a8 through the one at 0xdacc5f0. On inequality, three calls land on the table word
  at `a0`+0x19d8c (the `jalr` at 0xdacc618, 0xdacc628 and 0xdacc634), and the second and third get the
  entry `a2` and `a3` as their first argument. The common exit stores the constant 1 at `a0`+0x9750
  (the `sw` at 0xdacc658) and then writes `0x14001` to absolute 0x4000 from the delay slot of the `jr`
  at 0xdacc668 (the `sw` at 0xdacc66c).
  Unknown: the device response to the words written to absolute 0x4000, and the code behind each table
  word at `a0`+0x19d8c to +0x19d94; neither an mmio row nor a callee note answers either, so a datasheet
  excerpt for that address or notes for those callees would settle it.
  Evidence grade: established.
- `__glOdysseyTextureDeactivate` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2216bc0 (n64).
  This routine has no device access of its own. It calls `__glOdysseyClosePMObjReference` on two records, the one
  passed in `a1` and the one whose doubleword pointer sits at `a0` +0x18888, then poisons both.
  The first call passes `a0`, the word at +0x504 of the `a1` record and the words at `a0` +0x18890 and
  +0x18894 (the `jalr` at 0x2216bec); nothing branches on its result. Afterwards the `sd` at 0x2216bf4
  zeroes the doubleword at `a0` +0x18880, and the sixteen words from +0x528 to +0x564 of the `a1` record
  are set to 0xffffffffdeadbeef (stores from 0x2216c04 to 0x2216c40, highest offset first).
  The routine then loads the doubleword at `a0` +0x18888 (0x2216c44). If it is zero, the `beq` at 0x2216c48
  goes to the return at 0x2216ccc and `v0` is still the first call's result. Otherwise it calls the
  callee again with `a0`, the word at +0x504 of that record and the words at `a0` +0x18898 and +0x1889c
  (the `jalr` at 0x2216c5c), writes 0xffffffffbaadcade to the same sixteen words of that record (stores
  from 0x2216c70 to 0x2216cac), zeroes the doubleword at `a0` +0x18888 (the `sd` at 0x2216cb4) and returns
  at 0x2216cbc with the second call's result in `v0`.
  Inferred: the callee's name is the only basis for reading the two calls as releasing a reference held by
  each record.
  Unknown: the device-side outcome of each close, and which routine later reads the two fill patterns
  back; a committed entry for the callee and a listing of this routine's callers would settle both.
  Evidence grade: inferred.
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
- `__glOdysseyTextureDeactivate` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb39ac40 (n64).
  Makes no device access of its own; it runs the same teardown on two records, the one passed in `a1` and
  the one whose pointer is stored at `a0` +0x18b38, and calls `__glOdysseyClosePMObjReference` for each.
  For the `a1` record it calls that routine with `a0` and the words at +0x53c, +0x544 and +0x548 (the
  `jalr` at 0xb39ac64). A zero return makes it call `__glSetError` with 0x505 (the `jalr` at 0xb39ad64);
  either way it then stores zero at +0x540 of the record (the `sw` at 0xb39ac7c) and writes
  0xffffffffdeadbeef to the sixteen words from +0x570 to +0x5ac (stores from 0xb39ac84 to 0xb39acc4).
  It then loads the second record's pointer (the `ld` at 0xb39acd0). If the word at +0x540 of that record
  is zero, the `beq` at 0xb39acd8 skips straight to the fill. Otherwise it calls
  `__glOdysseyClosePMObjReference` with the same three words (the `jalr` at 0xb39acec), calls
  `__glSetError` with 0x505 on a zero return (the `jalr` at 0xb39ad78), and stores zero at +0x540 (the
  `sw` at 0xb39ad00).
  Both paths of the second record then write 0xffffffffbaadcade to the sixteen words from +0x570 to +0x5ac
  (stores from 0xb39ad18 to 0xb39ad54, highest offset first) and return at the `jr` at 0xb39ad58.
  Inferred: the committed note on `__glSetError` says it records the first GL error code of the context,
  so the 0x505 calls record that code when a close returns zero.
  Inferred: the callee's name is the only basis for reading the pair of calls as releasing a reference held
  by each record.
  Unknown: the device-side result of each close, and which routine reads the 0xffffffffdeadbeef and
  0xffffffffbaadcade words back; the callee's committed entry and a listing of this routine's callers would
  settle both.
  Evidence grade: inferred.
- `__glPixmapMakeCurrent` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab6fcc (o32).
  Fills in the context record at arg0: it copies two 0x75c-byte tables into the context, runs a
  fixed set of setup routines chosen by bits of the word at a0+0xa8, and ends by copying one table
  to a place picked from the word at absolute 0x1048. It first stores the address a0+0x1f60 at
  a0+0x17f4 (the `sw` at 0xdab6ff8) and copies the table whose address is the word at absolute
  0xdb02130 into that block (a loop of three words per pass, ending when the source pointer has
  advanced 0x75c, plus one trailing word), then copies the table whose address is the word at
  absolute 0xdb02134 into the block at a0+0x17f8 in the same way. It writes the constant 2 to
  absolute 0x1018 (the `sw` at 0xdab7074) and ORs 0x80 into the word at a0+0x2e24 (the `lw` at
  0xdab7078, the `sw` at 0xdab708c). When bit 0x4 of the word at a0+0xa8 is clear, it calls
  `InitBuffers` with arg0 and arg1 (the `jalr` at 0xdab709c); when the bit is set the call is
  skipped (the `bne` at 0xdab7088). It always calls `__glMakeCurrentBuffers` with arg0 and the
  address of a frame local (the `jalr` at 0xdab70b4); when that returns nonzero it stores arg1 at
  a0+0x7810 (the `sw` at 0xdab70d0) and writes zero at +0x18 of the record pointed to by the word at
  +0x1c of the pointer loaded from a0+0x7b44 (the `sw` at 0xdab70d4). Both paths then store
  a0+0x7800 at a0+0x77f8 and a0+0x78dc at a0+0x77fc (the `sw` at 0xdab70e8 and 0xdab70f0). With bit
  0x4 clear it also calls `InitFnPtrs` with arg0 (the `jalr` at 0xdab7100); every path then calls
  `__glFindWindowSize` with arg0 (the `jalr` at 0xdab7114). The word at a0+0xa8 ANDed with 0x6 picks
  the next step: nonzero calls `ApplyViewport` (the `jalr` at 0xdab71a4); zero calls
  `__glSoftResetContext` (the `jalr` at 0xdab7138) and then two indirect calls, through the table
  words at absolute 0xdafc37c and 0xdafc178 (the `jalr` at 0xdab7164 and 0xdab7188), each with a0
  and a1 zero and a2 and a3 taken from a0+0xe74 and a0+0xe78. Both continue with
  `__glContextSetColorScales` (the `jalr` at 0xdab71b8) and a call through the pointer at a0+0x2e40
  (the `jalr` at 0xdab71cc). The tail reads the word at absolute 0x1048 (the `lw` at 0xdab71d4) and
  the word at a0+0x137c, and has four outcomes. Word at 0x1048 nonzero and a0+0x137c zero: store
  a0+0x1f60 at a0+0x17f4 (the `sw` at 0xdab723c) and copy nothing. Both nonzero: store a0+0x26c0 at
  a0+0x17f4 (the `sw` at 0xdab71f8) and copy the table at a0+0x17f8 into the block at a0+0x1f60,
  0x75c bytes plus one word. Word at 0x1048 zero and a0+0x137c zero: store the constant 0x1050 at
  a0+0x17f4 (the `sw` at 0xdab7294) and copy the block at a0+0x1f60 to absolute address 0x1050, the
  same length. Word at 0x1048 zero and a0+0x137c nonzero: store a0+0x26c0 at a0+0x17f4 (the `sw` at
  0xdab7250) and copy the table at a0+0x17f8 to absolute address 0x1050. Every outcome ends by ORing
  0x4 into the word at a0+0xa8 (the `sw` at 0xdab72dc) and storing it again with bit 0x2 cleared
  (the `and` with 0xfffffffd, the `sw` at 0xdab72e4), and the routine returns 1. Bit 0x4 is the bit
  tested at the start, so a later call finds it set.
  Unknown: which structures the words at absolute 0x1018, 0x1048 and the block at 0x1050 belong to;
  no linked row or datasheet entry covers them, so a row for those addresses would settle it.
  Unknown: the setup work of `InitBuffers`, `InitFnPtrs`, `ApplyViewport` and the two table-word
  callees; the bundle has no committed entry for them.
  Evidence grade: established.
- `__glXGetDrawableAttributes` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd820f84 (o32).
  Performs a request and reply exchange on the connection passed in `a0` and fills the 0x1c-byte record
  in `a2` from the reply. Success returns 1; each failure exit returns 0.
  Step one is `__glXSetupForCommand`, called with `a0` to `a3` as received (the `jalr` at 0xd820fb4); the
  byte it returns is saved on the stack at 0xd820fc4, and a zero return ends the routine with 0.
  Step two reads the low byte of `a3` (0xd820fd0). When it is zero (the `beql` at 0xd820fd4) the request is
  8 bytes long, when nonzero 16 bytes. In both cases a non-null structure at `a0` +0x4d0 has its first word
  called with `a0`, `_XFlush` runs if the space left (the limit at +0x70 against the pointer at +0x6c advanced by the request length) is
  short (the `jalr` at 0xd82101c or 0xd82112c), and the pointer at +0x6c is stored to +0x64.
  Layout of the 16-byte request: the halfword at +2 is 4, the byte at +1 is 0x11, the byte at +0 is first
  0x10 and then the saved setup byte, the word at +4 is 0x1000a and the word at +0xc is the saved `a1`
  (0xd821080). Layout of the 8-byte request: the halfword at +2 is 2, the byte at +1 is 0x1d, the byte at
  +0 is the setup byte and the word at +4 is the saved `a1` (0xd821188). Afterwards the pointer at +0x6c is advanced by the request length (0x10
  or 8) and the word at +0x60 by one.
  The routine then calls `_XReply` with `a0`, a stack buffer and two zeros (0xd821090 or 0xd821190). If
  that returns zero it takes the shared failure exit: the second word of the +0x4d0 structure is called
  if it exists, then the pointer at `a0` +0x7c if nonzero, then it returns 0.
  The reply buffer's count, at offset 8 of that buffer, is the number of 8-byte pairs to read (loaded at 0xd8211e4 and tested at 0xd8211e8; zero takes the
  failure exit). `malloc` gets that number shifted left by 3 (the `jalr` at 0xd821240) and a null return
  also takes the failure exit. `_XRead` loads the block (0xd8212ac) and the call at 0xd8212c8 zeroes 0x1c
  bytes of the `a2` record.
  Pair handling: the first word minus 0x800c is the key. A key of 0x1a or above is passed over and the
  walk continues with the next pair (0xd8212fc). Any smaller key is a slot in the jump table at
  0xd841cd0 (0xd821318). Slot 0 writes the pair's second word to +0 of the `a2` record, slot 7 to +4,
  slot 17 to +8, the two slots after it to +0xc and +0x10, and the last slot, after five empty ones, to
  +0x18; slots 15 and 16 write only its low byte, to +0x14 and +0x15.
  The loop ends after the counted pairs (the `bnel` at 0xd821360); the exit calls run, the block is freed
  (0xd8213ac) and 1 is returned (0xd8213b8).
  Inferred: the library callee names `_XFlush`, `_XReply`, `_XRead`, `malloc`, `memset` and `free`, plus
  the committed note that `__glXSetupForCommand` selects the display's current context, are the reason
  for reading this as a request and reply exchange; none of the library callees has a committed entry.
  Unknown: how the request bytes 0x10, 0x11 and 0x1d and the word 0x1000a divide into fields, and what
  the reply keys select; committed entries for the library callees would settle both.
  Evidence grade: inferred.
- `__glXGetDrawableAttributes` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8bf964 (o32).
  Sends one GLX-style request over the connection in `a0` and unpacks the reply into the 0x1c-byte caller
  record in `a2`. It returns 1 on success and 0 on every failure exit.
  It first calls `__glXSetupForCommand` with its four arguments unchanged (the `jalr` at 0xd8bf994) and
  keeps the returned byte on the stack (the `sb` at 0xd8bf9a4); a zero return leaves with 0.
  The low byte of `a3` (the `lbu` at 0xd8bf9b0) then picks the request shape: nonzero builds a 16-byte
  request, zero (the `beql` at 0xd8bf9b4) an 8-byte one. Either way, if the structure at `a0` +0x4d0 is
  present, its first word is called as a function with `a0`; then, when the limit at `a0` +0x70 is below
  the pointer at +0x6c plus the request size, `_XFlush` runs (the `jalr` at 0xd8bf9fc or 0xd8bfb0c) and
  the pointer is reread, and the pointer is copied to `a0` +0x64.
  The 16-byte request has the halfword 4 at +2, 0x11 at +1, the setup byte at +0 (after 0x10 was written
  there first), 0x1000a at +4 and the saved `a1` at +0xc (the `sw` at 0xd8bfa60). The 8-byte one has the
  halfword 2 at +2, 0x1d at +1, the setup byte at +0 and the saved `a1` at +4 (the `sw` at 0xd8bfb68).
  The pointer at +0x6c then advances by 0x10 or 8 and the count at +0x60 by one.
  `_XReply` is called with `a0`, a reply buffer on the stack, and zeros (the `jalr` at 0xd8bfa70 or
  0xd8bfb70). A zero return runs the same exit path as every other failure: the second word of the
  `a0` +0x4d0 structure is called when present, the function pointer at `a0` +0x7c is called when nonzero,
  and 0 is returned.
  On success the word at +8 of the reply buffer is a count (read at 0xd8bfbc8). A zero count takes the
  failure exit. Otherwise `malloc` is called with the count shifted left by 3 (the `jalr` at 0xd8bfc20);
  a null result takes the failure exit. `_XRead` then fills the block from the connection (the `jalr`
  at 0xd8bfc8c), and the call at 0xd8bfca8 clears 0x1c bytes of the record in `a2`.
  The loop runs once per count over 8-byte pairs in the block. It subtracts 0x800c from the first word of
  a pair; a result of 0x1a or more skips the pair (the branch-if-zero at 0xd8bfcdc) and the loop goes on to the next
  one. A smaller result indexes the jump table at 0xd8de3a0 (the `jr` at 0xd8bfcf8). Table slot 0 stores the
  pair's second word at +0 of the record and slot 7 at +4. Slots 15 and 16 store its low byte at +0x14 and
  +0x15. Slot 17 stores the word at +8 and the two slots after it +0xc and +0x10; the last slot, after five
  empty ones, stores +0x18. Every other slot stores nothing.
  After the loop it makes the same two exit calls, frees the block (the `jalr` at 0xd8bfd8c) and returns 1
  (0xd8bfd98).
  Inferred: the callees `_XFlush`, `_XReply`, `_XRead`, `malloc`, `memset` and `free` are known library
  names, and the committed note says `__glXSetupForCommand` selects the display's current context, so the
  routine is a request and reply exchange; no committed entry covers the library callees.
  Unknown: the field layout of the request bytes 0x10, 0x11 and 0x1d and the word 0x1000a, and of the
  reply keys; committed entries for the library callees and for the reader of the record would settle them.
  Evidence grade: inferred.
- `__glXGetDrawableAttributes` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8b29c8 (n32).
  Inferred: this sends one request to the X server and unpacks the reply into the 0x1c-byte block at
  entry a2, because it appends a small request record at the display's output pointer, calls `_XReply`,
  reads a counted list of 8-byte key and value pairs with `_XRead` into a `malloc` buffer, and sets
  fields of a2 from the pairs. The `jalr` at 0xd8b29f8 calls `__glXSetupForCommand`; a zero low byte in
  its return gives a return of 0 at 0xd8b2d90 (`beq` at 0xd8b2a0c). With entry a3 non-zero (`beq` at
  0xd8b2a14 falls through) the routine calls the first function pointer of the table at a0+0x4d0, when
  that word is non-zero, with a0 set to the display (`jalr` at 0xd8b2a28). It then checks room for 0x10
  bytes (`bne` at 0xd8b2a40 calls `_XFlush`, `jalr` at 0xd8b2c0c, when the word at +0x70 is below the
  word at +0x6c plus 0x10) and writes the 0x10-byte record at the word at +0x6c: byte 0x10 at +0x0
  (`sb` at 0xd8b2a5c), byte 0x11 at +0x1, halfword 4 at +0x2, word 0x1000a at +0x4 and entry a1 at +0xc.
  The `sb` at 0xd8b2aa8, in the delay slot of the `_XReply` call, then replaces byte +0x0 with the low
  byte of the `__glXSetupForCommand` return. The same word at +0x6c is saved at +0x64 (`sw` at
  0xd8b2a4c), +0x60 is incremented by one (`sw` at 0xd8b2a70) and +0x6c is advanced by 0x10 (`sw` at
  0xd8b2a78). `_XReply` is called with the display, the buffer sp+0x0, 0 and 0 (`jalr` at 0xd8b2aa4); a
  zero reply runs the optional cleanup calls (word at +0x4 of the +0x4d0 table, then the function
  pointer at +0x7c) and returns 0 (`beq` at 0xd8b2aac). With a3 zero the routine instead writes an
  8-byte record: byte 0x1d at +0x0 and +0x1, halfword 2 at +0x2, entry a1 at +0x4, advancing +0x6c by
  8 (`sw` at 0xd8b2b84), and calls `_XReply` with the buffer sp+0x20 (`jalr` at 0xd8b2ba0); the +0x0
  byte is again replaced by the setup return's low byte (`sb` at 0xd8b2ba4). The count is the word at
  offset 8 of the `_XReply` buffer (`lw` at 0xd8b2ab8, or at 0xd8b2bb4 which reads the word at +0x28 =
  buffer sp+0x20 plus 8); zero runs the cleanup calls and returns 0. Otherwise `malloc` gets the count
  shifted left by 3 (`jalr` at 0xd8b2ac8; null runs the cleanup calls and returns 0), `_XRead` reads
  that many bytes into the buffer (`jalr` at 0xd8b2c28), `memset` clears 0x1c bytes at a2 (`jalr` at
  0xd8b2c3c), and a loop runs once per pair while the counter differs from the count (`beq` at
  0xd8b2c68). Each pair's first word minus 0x800c, if below 0x1a (`beq` at 0xd8b2c94), indexes the jump
  table at 0xd8e0760 (`jr` at 0xd8b2ca0); other keys are skipped. Six of the table's targets store the
  pair's second word (loaded at 0xd8b2c90) to a2 as a word: at +0x4 (`sw` at 0xd8b2cac), +0x0
  (0xd8b2cb4), +0x8 (0xd8b2cc4), +0xc (0xd8b2ccc), +0x10 (0xd8b2cd4) and +0x18 (0xd8b2cdc), and two
  store its low byte, to +0x14 (`sb` at 0xd8b2cbc) and +0x15 (`sb` at 0xd8b2c5c).
  After the loop
  the cleanup calls run, `free` releases the buffer (`jalr` at 0xd8b2d10) and the return is 1 (0xd8b2d2c).
  Unknown: which attribute each key selects, since the bundle has no strings or datasheet excerpt for
  the keys; the server-side request handler would settle it.
  Evidence grade: inferred.
- `__glXSendMakeCurrentRead` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd81de58 (n32).
  Inferred: this sends one request to the X server for the display in a0 and reads its reply, because
  it appends a record at the display's output pointer (the word at +0x6c), calls `_XReply`, reads extra
  reply bytes with `_XRead`, and posts `__glXPostHiddenError` when the reply fails.
  The `jalr` at 0xd81de88 passes the entry arguments through to `__glXSetupForCommand`, and its return
  is kept at sp+0x10 and stored as the first byte of the record (`sb` at 0xd81df34 or 0xd81e098), after
  a call to the first pointer of the block at a0+0x4d0 when that word is non-zero (`jalr` at
  0xd81dea0). The ninth argument, the word at sp+0xa4 (`lw` at 0xd81dea8), selects the record: non-zero
  gives a 0x18-byte record (`beq` at 0xd81deb8 falls through), zero a 0x14-byte one.
  The 0x18-byte record is byte 0x10 then the setup return at +0x0, byte 0x11 at +0x1, halfword 6 at +0x2,
  word 0x10001 at +0x4, then a2, a4 and a5 as entered at +0x8, +0xc and +0x10, and at +0x14 the word at
  entry a1 plus 0x14, or 0 when a1 is zero (`beq` at 0xd81df30, `sw` at 0xd81df60 in the delay slot of
  the `_XReply` call). The 0x14-byte record is byte 0x1a at +0x0 (then the setup return) and +0x1,
  halfword 5 at +0x2, a2, a4 and a5 at +0x4, +0x8 and +0xc, and the same a1-based word at +0x10 (`sw`
  at 0xd81e0bc). Each layout first calls `_XFlush` when the word at +0x70 is below the +0x6c pointer
  plus the record size (`bne` at 0xd81dec8 or 0xd81e034), saves the pointer at +0x64, adds one to the
  word at +0x60 and advances +0x6c by 0x18 or 0x14. `_XReply` is called with the display, entry a3 as
  its second argument, 0 and 0 (`jalr` at 0xd81df5c or 0xd81e0b8).
  A non-zero reply continues only when the word at +0x4 of the block at a3 is non-zero (`beq` at
  0xd81df70): `malloc` gets 0x10 (`jalr` at 0xd81df78), `_XRead` fills it with 0x10 bytes (`jalr` at
  0xd81df94), its four words go to a7+0x18, a7+0x1c, a6+0x18 and a6+0x1c (`sw` at 0xd81dfa8 to
  0xd81dfc8), and `free` releases it (`jalr` at 0xd81dfc4). After that, or without the read, the
  optional calls through +0x4 of the +0x4d0 block and through the pointer at +0x7c run, and the return
  is 1 (0xd81dffc). A zero reply (`beq` at 0xd81df64 or 0xd81e0c0) runs the same optional calls, calls
  `__glXPostHiddenError` with a2 0x11 after the 0x18-byte record (`jalr` at 0xd81e110) or 0x1a after
  the 0x14-byte one (`jalr` at 0xd81e180), passing the word at entry a1 plus 0x14 as a3, and returns 0.
  Unknown: the value of the ninth argument and the content of the block at a3, since both come from the
  callers; the callers of this routine would settle them.
  Evidence grade: inferred.
- `__glXSendMakeCurrentRead` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2152a58 (n64).
  Queues one of two request records in the output buffer of the connection context in `a0`, whose
  write pointer is at +0xb0 and limit at +0xb8, then waits for a reply and returns 1, or posts an
  error and returns 0. It first calls `__glXSetupForCommand` with the incoming register arguments
  `a0` to `a6` (the `jalr` at 0x2152a88), keeps its result in a frame slot (the `sd` at 0x2152a98),
  and calls slot +0 of the pointer at +0x968 when that pointer is non-zero (the `jalr` at 0x2152aa0).
  The stack word at entry sp+4 (the `lw` at 0x2152aa8) selects the record: non-zero (the `beq` at
  0x2152ab8 falls through) gives the 0x18-byte one, zero gives the 0x14-byte one.
  The 0x18-byte record: if the limit at +0xb8 is below the write pointer plus 0x18 (the `bne` at
  0x2152ac8), it calls `_XFlush` (the `jalr` at 0x2152c1c) and reloads the pointer without a second
  check. It stores the pointer in +0xa0, the halfword 6 at +2 (the `sh` at 0x2152ae4), the byte 0x11 at
  +1 (the `sb` at 0x2152b28), 0x10001 at +4 (the `sw` at 0x2152b20), the saved `a2`, `a4` and `a5` at
  +8, +0xc and +0x10 (the `sw` at 0x2152b10, 0x2152b0c and 0x2152b08), and finally the low byte of the
  `__glXSetupForCommand` result at +0 (the `sb` at 0x2152b34, after the 0x10 written at 0x2152aec
  has been overwritten). It adds 1 to the doubleword at +0x98 and 0x18 to the write pointer (the `sd`
  at 0x2152afc and 0x2152b04). Then the word at +0x14 gets the word at +0x28 of `a1`, or zero when
  `a1` is null (the `sw` at 0x2152b5c, delay slot of the `_XReply` call at 0x2152b58, which passes `a3`
  as its second argument and the incremented counter as `a7`).
  The 0x14-byte record follows the same steps with the limit test against pointer plus 0x14 (the
  `bne` at 0x2152c30, `_XFlush` at 0x2152d28): halfword 5 at +2, byte 0x1a at +1, the saved `a2`, `a4`
  and `a5` at +4, +8 and +0xc, the `__glXSetupForCommand` low byte at +0, the word at +0x28 of `a1`
  or zero at +0x10 (the `sw` at 0x2152cb4, delay slot of the `_XReply` call at 0x2152cb0), and 0x14
  added to the write pointer.
  After a non-zero `_XReply` result both records share the tail at 0x2152b6c: when the word at `a3`+4
  is non-zero it calls `malloc` for 0x10 bytes, fills the block with `_XRead` (the `jalr` at
  0x2152b90), copies its first two words to +0x24 and +0x28 of `a7` and its last two to +0x24 and
  +0x28 of `a6` (the `sw` at 0x2152ba4 to 0x2152bc4), and calls `free` (the `jalr` at 0x2152bc0). The
  normal exit calls slot +8 of the +0x968 pointer and the routine at +0xd0 when those are non-zero (the
  `jalr` at 0x2152bd8 and 0x2152bec), and returns 1 (the `jr` at 0x2152c04). A zero `_XReply` result
  from the first record posts code 0x11 through `__glXPostHiddenError` (the `jalr` at 0x2152d08), from
  the second record code 0x1a (the `jalr` at 0x2152d78); both return 0 (the `jr` at 0x2152c10).
  Inferred: the halfword at +2 (6 and 5) is the record size in 4-byte units, because 0x18 and 0x14
  bytes divided by 4 give those values.
  Unknown: the device-side result of the records, the routines behind the pointers at +0x968 and
  +0xd0, and the value `_XReply` returns beyond its zero test; a committed note for each of those
  routines and for `_XReply` would settle them.
  Evidence grade: inferred.
- `__glim_FragmentMaterialfvSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd98a06c (o32).
  Validates a three-argument material call and, when it passes, hands the values to
  `ApplyParameterF` once or twice for the context record. It first calls `__glErrorCheckMaterial`
  with arg0, arg1, the word at the start of arg2 and arg2 itself (the `jalr` at 0xd98a0a4). A
  nonzero result goes to `__glSetError` as its only argument (the `jalr` at 0xd98a0c4) and the
  routine returns with whatever that call left in v0.
  Inferred: the pointer loaded from absolute 0x1010 at 0xd98a09c is the context, as the committed
  note for `__glSetError` gives for process-page word 4112.
  On a zero check result, arg0 (reloaded from the frame) is compared with 0x404 (`beq` at
  0xd98a0d8), 0x405 (`beq` at 0xd98a0e4) and 0x408 (`beq` at 0xd98a0f0). For 0x404 the routine calls
  `ApplyParameterF` with the context, the context plus 0x164f4, arg1 and arg2 (`jalr` at 0xd98a114);
  for 0x405 the same with the context plus 0x16544 (`jalr` at 0xd98a138); for 0x408 it calls it with
  the context plus 0x16544 (`jalr` at 0xd98a160) and then with the context plus 0x164f4 (`jalr` at
  0xd98a188). Any other value skips the calls and returns the zero check result (the `beq` at
  0xd98a0f8 goes straight to the return). On the other paths the return value is whatever the last
  called routine left in v0. The routine stores nothing outside its 40-byte frame.
  Unknown: the writes that `ApplyParameterF` makes to the words at +0x164f4 and +0x16544; only a
  location and size row exists for it, so a written entry for that routine would settle this.
  Evidence grade: inferred.
- `__glsplc_Begin` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd976b20 (o32).
  Updates the three-word record at absolute 0x1028 (words at 0x1028, 0x1030 and 0x1034, all
  addressed from `a3` = 0x1028) and the flag words at +0x169dc to +0x169ec of the block whose
  pointer is at abs 0x1010, either appending a three-word entry at the address in the word at 0x1030
  or falling back to `__glSPDlalloc`, and calling `RemoveIlists` and `__glSPDlistSpace` on the
  record. The append path runs only when the byte at +0x169e4 is nonzero, the word at +0x169e8 is 1,
  the word at 0x1034 is zero, the word at +0x13dc is at least 3 (unsigned), two pairs of table words
  are equal, the byte at +0x169ec is zero and the first argument is not 2 (the branches at
  0xd976b50, 0xd976b64, 0xd976b70, 0xd976b80, 0xd976ba0, 0xd976bb4, 0xd976bc4 and 0xd976bd4 each
  leave for the allocation path when their test fails). The table is the one whose pointer is the
  word at +5080 and whose count is the word at +5084 of the block at abs 0x1010. The allocation path
  calls `__glSPDlalloc` with a0 = 4 and a1 = 3 (`jalr` at 0xd976d80) and returns at once on a zero
  result, skipping everything below. On a nonzero result it stores the first argument in the first
  word of the returned block (the `sw` at 0xd976da4); when the word at +0x169e8 is positive (`bgtz`
  at 0xd976dbc) it sets the byte at +0x169e4 to 1 and clears the word at +0x169e8 (stores at
  0xd976dd4 and 0xd976de0), and otherwise sets that byte to 0 (store at 0xd976dd0). It then stores
  the byte at +0x169ec as 1 when the first argument equals 2 and 0 otherwise (the `xori` at
  0xd976db4, the `sltiu` at 0xd976db8, the `sb` at 0xd976dec) and joins the common tail. On the
  append path, `RemoveIlists` runs first. When the word at 0x1030 equals an address built from two
  table words (`beq` at 0xd976bfc), the code first adds the table word loaded at 0xd976be8 to the
  word at 0x1034, subtracts 4 from the word at 0x1030 and adds 1 to the word at 0x1028 (stores at
  0xd976c40, 0xd976c48 and 0xd976c4c), then calls `RemoveIlists` with a0 = 2 (call at 0xd976c5c).
  Otherwise it calls it with a0 = 1 (call at 0xd976c18) and changes nothing in the record. A
  variable a1 is then 1 when the word at 0x1034 is zero and bit 0x4 of the word at 0x1030 is set,
  and 0 otherwise (`bne` at 0xd976c84, `beql` at 0xd976c90). Unless the word at 0x1028 is at least
  a1 + 3 (`beql` at 0xd976ca4), `__glSPDlistSpace` runs with a0 = 0 and a1 (`jalr` at 0xd976cc4). A
  zero return subtracts 4 from the word at 0x1030 and adds 1 to the word at 0x1028 (stores at
  0xd976cf8 and 0xd976d04) and returns without the tail below. A nonzero return, or the count test
  passing, writes 0x14001, 0x14400 and the first argument to three words at the address in the word
  at 0x1030 plus 4 times a1 (stores at 0xd976d34, 0xd976d38 and 0xd976d48), adds 3 to the word at
  0x1034 (0xd976d5c), stores the count less a1 and less 3 at 0x1028 (0xd976d64), where the count is
  the word at 0x1028 or, on the nonzero path, the value `__glSPDlistSpace` returned, advances the
  word at 0x1030 by 12 plus 4 times a1 (0xd976d60), clears the word at +0x169e8 (0xd976d70) and
  stores the byte at +0x169ec (0xd976dec); that byte is 0 here because the first argument is not 2.
  The common tail, reached after the append and after a nonzero allocation, tests the byte at
  +0x169dc (`beql` at 0xd976df4). When it is nonzero, the routine stores 0x7f7fffff (the literal at
  0xdaedc98) to +0x1698c, +0x16994 and +0x1699c and 0xff7fffff (the literal at 0xdaedc9c) to
  +0x16990, +0x16998 and +0x169a0 (stores at 0xd976e14 to 0xd976e50).
  Unknown: the contents of the table reached through the pointer at +5080 and the count at +5084
  from abs 0x1010, which supply the words the tests compare, and the handling of the record by
  `RemoveIlists` for a0 of 1 and 2; the committed note for `RemoveIlists` covers only its first
  comparison.
  Evidence grade: established.
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
- `__glsplc_Begin` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda61370 (n32).
  Puts a three-word entry into a growing buffer. The buffer's write pointer is the word at absolute
  0x1030, the room left is counted at absolute 0x1028, a running total sits at absolute 0x1034, and
  the state block is addressed by the word at absolute 0x1010. A shortcut applies only if six
  conditions hold; the first failure jumps to 0xda6143c, which calls `__glSPDlalloc` with 4 and 3.
  The conditions: the byte at state +0x16950 is set (the `beq` at 0xda61398); the word at +0x16954 is
  1 (0xda613a8); absolute 0x1034 is 0 (0xda613b4); the word at +0x13d4 is 3 or more unsigned
  (0xda613c4); the table entry found from the word at +0x13d0 and eight times that count has its
  word at -0x10 equal to the state word at +0x13b0 (0xda613dc); and its word at -0x8 equals the word
  at +0x58 of the record behind the state word at +0x13ac (0xda613f0).
  The allocation branch behaves as follows. A zero return exits at 0xda614a4 with nothing more
  written. A nonzero return receives the entry `a0` in its first word (the `sw` at 0xda61454). The
  word at +0x16954 is then tested (the `blez` at 0xda6145c): positive means it is cleared (the `sw` at 0xda61464) and the
  byte at +0x16950 is set to 1 (the `sb` at 0xda61468); otherwise only that
  byte is cleared (the `sb` at 0xda614b8).
  The shortcut branch starts with the `beq` at 0xda61410, which compares absolute 0x1030 against the
  entry's word at -0xc plus four times the word that points to plus 8. When they match, the pointed-to
  word is added to absolute 0x1034, 4 is taken from absolute 0x1030, 1 is added to absolute 0x1028
  (the delay slot of the `bgezall` at 0xda614e0) and `RemoveIlists` is called with 2. When they differ,
  `RemoveIlists` is called with 1 (the `bgezall` at 0xda61420). Both reach 0xda614ec, which computes
  R: 1 if bit 0x4 of absolute 0x1030 is set and absolute 0x1034 is zero, else 0. A room count under
  3 plus R (the `bnez` at 0xda6150c) triggers `__glSPDlistSpace` with 0 (the `jalr` at 0xda6156c).
  If that returns zero, the routine stores the old absolute 0x1030 less 4 (the `sw` at 0xda615a4),
  stores absolute 0x1028 plus 1 in the delay slot of the `jr` at 0xda615b8, and returns zero. If it
  returns nonzero, that value is the new room count, and R becomes 1 when bit 0x4 of the reloaded
  absolute 0x1030 is set (the `movn` at 0xda61598), else it is unchanged.
  The entry is then written starting at the write pointer plus 4R: 0x10001, 0x10400, then `a0` (the
  `sw` at 0xda61528, 0xda61530 and 0xda61534). Afterwards absolute 0x1030 points past those three
  words, absolute 0x1028 becomes the room count minus R minus 3, absolute 0x1034 gains 3, and the word
  at +0x16954 is zeroed (the `sw` at 0xda6155c).
  Every path ends at 0xda6146c. When the byte at +0x16948 is set (the `beq` at 0xda61474), six
  single-precision values are stored: 0xff7fffff (about -3.4e38) at +0x1690c, +0x16904 and +0x168fc,
  and 0x7f7fffff (about +3.4e38) at +0x16908, +0x16900 and +0x168f8. The routine then returns.
  Unknown: the content of `RemoveIlists` (0xda612f0) and `__glSPDlistSpace` (0xdadafc0) in this build,
  which no committed note covers; notes for those routines would settle it.
  Evidence grade: established.
- `__glsplc_Begin` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb345840 (n64).
  Makes no device access of its own: it works on the context pointer at absolute 0x1020 and on the
  fixed-address words 0x1048, 0x1058 and 0x1060, either by reusing the previous record or by allocating a
  new one, and then appends a three-word record at the cursor in the doubleword at 0x1058.
  The reuse test (branches 0xb345868 to 0xb3458dc) needs all of: the byte at context +0x1905c nonzero, the
  word at +0x19060 equal to 1, the word at 0x1060 zero, the word at +0x15f8 at least 3, the doubleword in
  the 16-byte table entry (table at +0x15f0, index that word minus 2) equal to the doubleword at +0x15b8,
  and the doubleword in entry index minus 1 equal to the doubleword at +0xb0 of the pointer at +0x15b0.
  Any failure goes to the allocation at 0xb345928, which calls `__glSPDlalloc` with 8, 3 and the context
  in `a3`. A zero return leaves at once with `v0` zero (0xb345998). Otherwise the saved entry argument `a0` is
  stored as the first word of the returned record (the `sw` at 0xb345940). The word at +0x19060 is then
  read: above zero, it is cleared and the byte at +0x1905c set to 1 (0xb345950, 0xb345954); zero or below,
  the byte is cleared (0xb3459a4). Next the byte at +0x19054 is tested (0xb345960). If it is nonzero, the
  words at +0x19004, +0x1900c and +0x19014 get 0x7f7fffff and those at +0x19008, +0x19010 and +0x19018 get
  0xff7fffff, from the literal pool words at 0xb4cfaac and 0xb4cfab0 (stores 0xb345968 to 0xb34597c). The
  routine then returns with `v0` not set by it.
  When the reuse test passes, the entry's pointer at +8 gives a record whose first word is a count; if that
  record's end (pointer plus 8 plus 4 per count) equals the cursor at 0x1058 (0xb3458fc), the cursor drops
  by 4 (the `sd` at 0xb3459b0), the word at 0x1060 gets the count added (the `sw` at 0xb3459c8) and the word
  at 0x1048 gets 1 added in the delay slot of the `RemoveIlists` call with 2 (0xb3459d0). If the ends differ,
  `RemoveIlists` is called with 1 (0xb34590c) and the count update is skipped. Both then join at 0xb3459dc.
  The join reads the cursor, the word at 0x1060 and the word at 0x1048. It needs 3 words of room, or 4 when
  bit 4 of the cursor is set and the word at 0x1060 is zero. When the word at 0x1048 is smaller than that
  (the `bnez` at 0xb3459fc), it calls `__glSPDlistSpace` with a0 zero (0xb345a5c). A zero return stores the
  cursor minus 4 to 0x1058, adds 1 to 0x1048 and returns with `v0` zero (0xb345aa8). A nonzero return rechecks
  the cursor bit and retries the room test at 0xb345a00.
  With enough room the three words 0x10001, 0x10400 and the saved entry argument go to cursor +0, +4 and +8,
  the cursor store at 0xb345a2c moves the cursor on by 0xc (plus 4 when the room test allowed for the extra
  word), 0x1048 drops by the allowance plus 3, 0x1060 gains 3 and the word at context +0x19060 is cleared
  (the `sw` at 0xb345a4c); it then falls into the float-limit test above.
  Inferred: the committed entry for `__glSPDlistSpace` reads the doubleword at absolute 0x1020 as a pointer
  to context memory, and the stores here go to ordinary words around that pointer; no linked row ties any
  of them to a device register.
  Unknown: the content and consumer of the three-word record 0x10001, 0x10400 and the entry argument; the
  committed entries for `__glSPDlalloc` and `RemoveIlists` and the reader of 0x1058 would settle it.
  Evidence grade: inferred.
- `ddxFindAvailableBoards..CGC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10082870 (n32).
  Inferred: this is the X server's one-time enumeration of graphics boards, because it opens
  `/dev/opengl`, reads a board count with ioctl 0x65, queries each board with ioctl 0x66, and logs
  failures through `ErrorF`. It returns 1 at once when the word at 0x102e7644 is already non-zero (`beq`
  at 0x10082878); on success it closes the descriptor and stores 1 in that word (`sw` at 0x10082a84)
  before returning 1 at 0x10082880. It opens `/dev/opengl` with flags 2 (`jalr` at 0x100828a4); a
  negative result logs `Xsgi: Couldn't open %s` and returns 0. A negative result from ioctl 0x65 (`jalr`
  at 0x100828c4) logs `Couldn't get number of boards`, closes the descriptor and returns 0. The count
  goes to the word at 0x102ca720 (`nBoards..163`): the ioctl result itself when the word at 0x102ca714
  (`sgiNoDriverDDX`) is zero (`sw` at 0x100828fc), or the result plus one when that word is non-zero and
  the result is not 0x10 (`sw` at 0x100828f8). A result of 0x11 or more (`beq` at 0x100828d8)
  logs `Warning! More boards (%d) than allowed (%d)` with 0x10 in both arguments and clamps the count to
  0x10: with `sgiNoDriverDDX` zero it stores 0x10 (`sw` at 0x10082bb0); with it non-zero, the warning is
  logged a second time with 0x11 as the second argument (`jal` at 0x10082b30), `sgiNoDriverDDX` is
  cleared to zero (`sw` at 0x10082b24) and 0x10 is stored as the count (`sw` at 0x10082b34). A result of
  exactly 0x10 with `sgiNoDriverDDX` non-zero takes the same second-warning path (`beq` at 0x100828e8).
  The per-board loop runs with a counter starting at the count (before any plus one) minus one and
  decremented by one per pass (`addiu` at 0x100829cc) until it reaches -1 (`bne` at 0x100829d4), so it
  makes one pass per ioctl-reported board and is skipped when that count is zero (`beq` at 0x1008290c).
  Each pass sends ioctl 0x66 with a three-word block on the stack at sp+0x28: the counter, a pointer to
  a stack area, and 0x28 (stores at 0x1008293c, 0x10082948, 0x10082934); a negative result logs
  `Get board info (short) failed` and returns 0. It reads the word at sp+0x24 as a length, and if that
  length is not positive or `__malloc..ML` returns null (`jal` at 0x10082978) it logs `Alloc of board info
  failed` and returns 0, after a `FatalError` with `Out of memory` when `Must_have_memory` is non-zero
  (`jal` at 0x10082aa4). The malloc call is bracketed by `__libc_lockmalloc` and `__libc_unlockmalloc`
  only when the word at `__us_rsthread_malloc` is non-zero (`beq` at 0x10082968 and 0x10082988). The
  second ioctl 0x66 (`jalr` at 0x100829bc) passes the counter, the new buffer and the length in the same
  three words; a negative result logs `Get board info (long) failed` and returns 0. Otherwise the buffer
  pointer is stored (`sw` at 0x100829d0) in a table of words at 0x102ca724 plus four times the count,
  stepping down four bytes per pass. After the loop, when `sgiNoDriverDDX` is still non-zero, it calls
  `Xalloc` with 0x1000 (`jal` at 0x10082a10; null logs `Alloc of board info failed` and returns 0),
  copies the string at `sgiNoDriverDDX` into that block with `strlen` and `bcopy`, writes 0x1000 as a
  word at +0x24 and the halfwords from `sgiNoDriverHeight` and `sgiNoDriverWidth` at +0x22 and +0x20
  (0x10082a4c to 0x10082a64), and stores the block pointer in the same table at the slot indexed by
  `nBoards..163` (`sw` at 0x10082a6c). Unknown: the layout of the reply the kernel writes into the stack
  area and into the allocated buffer, since the bundle holds no handler for ioctls 0x65 and 0x66; a
  capture of the requests or the kernel-side handlers would settle it.
  Evidence grade: inferred.
- `getVeniceInfo` in `usr/gfx/gfxinfo` at 0x100188e0 (n32).
  Inferred: the routine fetches board information for the pipe number in arg0 from the graphics
  device through the descriptor in `ven_gfxfd`, because its error strings name `getboardinfo()` and
  its ioctl requests 0x65 and 0x66 are the graphics-init requests of the linked ioctl rows (101 and
  102). If `ven_pipeMapped` is zero it prints a probe message with `fprintf` (the `jalr` at
  0x10018a70) and returns 0; otherwise ioctl 0x65 (the `jalr` at 0x10018920) decides the rest, and a
  failure there logs the board-count message (the `jalr` at 0x10018ab8) and returns -1. If arg0 is not
  less than the value ioctl 0x65 returned (the `slt` at 0x1001892c and the `bne` at 0x10018930), the
  routine logs the invalid-pipe message (the `jalr` at 0x10018948, string 0x10023100) and returns -1.
  Otherwise it calls ioctl 0x66 (the `jalr` at 0x1001897c) with a buffer of arg0, a pointer to sp-80, and
  0x28 (the `sw` at 0x10018958, 0x10018974 and 0x10018960), and a failure logs the getboardinfo message
  (the `jalr` at 0x10018a94) and returns -1. After that it compares the two bytes at sp-80 with the
  two-byte string at 0x10027ebc (the `jalr` at 0x10018998, length 2, the `beq` at 0x100189a0); a mismatch
  logs the message that the hardware is not a RealityEngine (string 0x10023170, the `jalr` at
  0x100189bc) and returns -1, and a match mallocs the size in the frame word at 0x34 (the `jalr` at
  0x100189dc, the `lw` at 0x100189e0), logging the malloc message (string 0x100231b0) and returning -1
  when that returns zero. Otherwise it calls ioctl 0x66 again with a buffer of arg0, the malloc pointer
  and 0x3a8 (the `sw` at 0x100189ec, 0x10018a08 and 0x100189f4, the `jalr` at 0x10018a10), and a failure
  logs the getboardinfo message (the `jalr` at 0x10018b00) and returns -1. On success a loop copies 0xea
  words from the malloc block to the buffer at arg1, which is saved at frame offset 0x38 (the `bgtz` at
  0x10018a44, the store at 0x10018a48), then calls `free` on the malloc block (the `jalr` at 0x10018a50)
  and returns 0. Inferred: the malloc size is the word at frame offset 0x34, which lies inside the 0x28-byte reply
  area at frame offset 0x10 that the request block of the first ioctl 0x66 call points to (the `sw` at 0x10018974, 0x10018960), so the ioctl fills it; the first two
  bytes of the same area are the ones compared at 0x10018998. A failure of the second ioctl 0x66
  call (the `beq` at 0x10018a20) leaves the malloc block unfreed. Unknown: the content of the
  two bytes at 0x10027ebc, which the bundle does not give; and the field layout of the 0x66 reply
  inside the 0x28-byte area, which no access in this routine decodes beyond the two bytes compared
  and the word at frame offset 0x34; route: the string table of this binary at 0x10027ebc and a
  bundle for the caller that reads the copied 0xea words.
  Evidence grade: inferred.
- `getVeniceInfo` in `usr/gfx/setmon` at 0x10013184 (n32).
  Fetches a block of 0x3a8 bytes from the graphics device through three ioctls and copies it into the
  buffer whose pointer is in a1. If the global `ven_pipeMapped` is zero (`beq` at 0x100131ac), it prints
  the string at 0x1003a420 through the `fprintf` at 0x10013314 and returns 0. Otherwise it issues ioctl
  0x65 (101) on `ven_gfxfd` at 0x100131c4; a negative result prints the string at 0x1003a460 through the
  `syslog` at 0x1001335c and returns -1, and a result not above the entry a0 (`slt` at 0x100131d0)
  logs the string at 0x1003a4a8 with the `syslog` at 0x100131ec (the invalid-pipe message) and returns -1.
  Inferred: the linked ioctl row names request 101 as graphics init, and the string at 0x1003a460 calls
  its result the number of graphics boards, so the first request reads a count.
  The frame at sp holds the entry a0 at +0, a pointer to frame +0x10 at +4 and 0x28 at +8 (stores at
  0x100131fc, 0x10013218 and 0x10013204), and that frame is the third argument of ioctl 0x66 (102) at
  0x10013220; a result of -1 (`beq` at 0x1001322c) prints the string at 0x1003a4d8 (`syslog` at 0x10013338) and returns -1.
  A mismatch of the first two bytes at +0x10 against the constant at 0x1004212c (`strncmp` at
  0x1001323c) prints the string at 0x1003a518 with the global `vs2ProductName` and returns -1.
  On a match, `malloc` at 0x10013280 is called with the value of frame +0x34, and a null result prints
  the string at 0x1003a558 and returns -1.
  Otherwise the frame, now holding the malloc result at +4 and 0x3a8 at +8 (stores at 0x100132ac and
  0x10013298), is passed to a second ioctl 0x66 at 0x100132b4; a result of -1 (`beq` at 0x100132c4)
  prints the string at 0x1003a4d8 (`syslog` at 0x100133a4) and returns -1 without freeing the malloc result.
  On success a loop of 0xea passes copies one word per pass from the malloc result into the buffer from
  a1 (the `sw` at 0x100132ec, advancing 4 bytes per pass), `free` at 0x100132f4 releases the malloc
  result, and the routine returns 0 (0x10013300).
  Inferred: the malloc size in frame +0x34 lies inside the 0x28-byte area at frame +0x10 that the first
  ioctl 0x66 call is given as its reply pointer (the stores at 0x10013204 and 0x10013218), so the ioctl
  fills it; the first two bytes of that area are the ones compared by the `strncmp`.
  Unknown: the content the device writes into the malloc result and the field layout of the 0x3a8 bytes
  and of the 0x28-byte reply; no datasheet excerpt covers request 102 and no field table is linked.
  Evidence grade: inferred.
- `glXBindSwapBarrierSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8399a4 (o32).
  Inferred: the word at +0x6c of the context in `a0` is a cursor into a request buffer that the routine appends to, since stores land through it, it advances by 0x14 (`sw` at 0xd839a54), and the `beql` at 0xd839a0c compares it plus 0x14 with the word at +0x70 before `_XFlush` is called.
  The `jalr` at 0xd8399cc passes all four entry arguments to `__glXSetupForCommand`, and the `sb` at 0xd8399d4 parks the byte it returns in the frame at entry sp -0x9.
  Ahead of the append, the `beql` at 0xd8399e0 reads the word at +0x4d0 of the context: zero bypasses the callback, while a nonzero table pointer sends the `jalr` at 0xd8399f0 to slot +0x0 of that table with the context as argument.
  The `beql` at 0xd839a0c weighs the word at +0x70 (unsigned) against the cursor plus 0x14; when the word is smaller, `_XFlush` runs (`jalr` at 0xd839a1c) and the cursor is stored at +0x64 afterwards (`sw` at 0xd839a2c), and when it is not smaller the store at +0x64 happens first (`sw` at 0xd839a10).
  The appended bytes then go through the cursor: a halfword 0x5 at +0x2 (`sh` at 0xd839a38), a byte 0x10 at +0x0 (`sb` at 0xd839a3c), a byte 0x10 at +0x1 (`sb` at 0xd839a64), a word 0x1000c at +0x4 (`sw` at 0xd839a68), and the parked byte over +0x0 (`sb` at 0xd839a6c); the entry a1 and a2 follow at +0xc and +0x10 (`sw` at 0xd839a74 and `sw` at 0xd839a7c), and the context's cursor word at +0x6c and its counter at +0x60 advance by 0x14 and 1 (`sw` at 0xd839a54 and 0xd839a58).
  Next, slot +0x4 of the table is called with the context and 0x10 when the table is set (`jalr` at 0xd839a94); the pointer at +0x7c is called (`jalr` at 0xd839ab0) when its word is set, and the return value is that word when it is zero (`beql` at 0xd839aa8) and otherwise the callee's result.
  Unknown: the callees behind table slots +0x0 and +0x4 and the pointer at +0x7c, which carry no callee notes in the bundle; the code that fills that table would identify them.
  Unknown: what reads the bytes that land at the cursor, since no linked register row covers this routine; the reader of that buffer would settle it.
  Evidence grade: inferred.
- `glXBindSwapBarrierSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83c110 (n32).
  Inferred: the routine appends one 0x14-byte request record to the buffer whose write pointer is at +0x6c of the display in a0, because it first calls `__glXSetupForCommand` (committed note: it selects the display's current context) and calls `_XFlush` when the buffer is short.
  The `jalr` at 0xd83c140 passes the display, a1 and a2 through to `__glXSetupForCommand`, and that return is saved at 0xd83c150 and reloaded at 0xd83c174.
  When the word at +0x4d0 is nonzero, the `jalr` at 0xd83c158 calls through the pointer at offset 0 of the block that word points to, with the display in a0.
  If the word at +0x70 is below the write pointer plus 0x14 (unsigned `bne` at 0xd83c170), the routine calls `_XFlush` at 0xd83c208 and then writes the record without a second check.
  The write pointer is copied to +0x64 (`sw` at 0xd83c17c), the record is written at that pointer with the byte 0x10 at +0x0 (`sb` at 0xd83c18c), the halfword 0x5 at +0x2 (`sh` at 0xd83c184), the byte 0x10 at +0x1 and the word 0x1000c at +0x4 (`sb` at 0xd83c1bc, `sw` at 0xd83c1b8), a1 as it arrived at +0xc (`sw` at 0xd83c1b0) and a2 as it arrived at +0x10 (`sw` at 0xd83c1a8), and the pointer at +0x6c is advanced by 0x14 (`sw` at 0xd83c1a4).
  The byte at +0x0 is then overwritten with the return value of `__glXSetupForCommand` (`sb` at 0xd83c1c0), and the word at +0x60 is incremented by one (`sw` at 0xd83c19c).
  If the word at +0x4d0 is nonzero, the `jalr` at 0xd83c1d4 calls through the pointer at +0x4 of that block with the display in a0; if the word at +0x7c is nonzero, the `jalr` at 0xd83c1e8 calls through it with the display in a0.
  The routine sets v0 nowhere after the first call, so the value returned at the `jr ra` at 0xd83c1fc is
  the return of the last call made: the pointer at +0x7c, the +0x4 pointer of the +0x4d0 block, `_XFlush`
  or, when none of those runs, `__glXSetupForCommand`.
  Unknown: the content of the three calls through pointers at 0xd83c158, 0xd83c1d4 and 0xd83c1e8, since
  the bundle holds no committed entry for their targets; the code that fills the +0x4d0 block and the
  +0x7c pointer would settle it.
  Evidence grade: inferred.
- `glXBindSwapBarrierSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2170da8 (n64).
  Writes a 0x14-byte record at the buffer pointer kept at +0xb0 of the context in a0, copying that
  pointer to +0xa0 first (the `sd` at 0x2170e14) and advancing +0xb0 by 0x14 (the `sd` at
  0x2170e3c). It calls `__glXSetupForCommand` with the four argument registers first (the `jalr`
  at 0x2170dd8), keeps its result in a frame slot (the `sd` at 0x2170de8), and calls slot +0 of the
  pointer at +0x968 when that pointer is non-zero (the `jalr` at 0x2170df0). Inferred: the
  note committed for `__glXSetupForCommand` (written for the IP30ODSY image of the same library) gives its result as a per-context byte, a
  looked-up byte, or zero, which is why the saved result is what the record keeps at +0. When the pointer
  at +0xb8 is below the buffer pointer plus 0x14 (the `bne` at 0x2170e08), it calls `_XFlush` with
  the saved result in a4 (the `jalr` at 0x2170ea0), reloads the buffer pointer, and then writes the
  record. The record holds 0x5 as a halfword at +2 (the `sh` at 0x2170e1c), 0x10 at +1 (the `sb` at
  0x2170e54), 0x1000c at +4 (the `sw` at 0x2170e50), the arguments a2 and a1 at +0x10 and +0xc (the
  `sw` at 0x2170e40 and 0x2170e48), and the saved result at +0 (the `sb` at 0x2170e58, after the
  `sb` at 0x2170e24 wrote 0x10 there); it also adds 1 to the doubleword at +0x98 (the `sd` at 0x2170e34).
  When the pointer at +0x968 is non-zero, it calls slot +8 of that pointer's table with 0x1000c,
  0x10 and 0x5 among its arguments (the `jalr` at 0x2170e6c). When the pointer at +0xd0 is
  non-zero (the `beq` at 0x2170e78), it calls that pointer (the `jalr` at 0x2170e80) and returns
  (the `jr ra` at 0x2170e94). Unknown: the value the return at 0x2170e94 leaves in v0 on the path
  that skips the call at 0x2170e80, and the content of the routines behind +0x968 and +0xd0 and
  of `_XFlush`; their committed notes are the route to it.
  Evidence grade: inferred.
- `glXBindSwapBarrierSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d86ec (o32).
  Inferred: the routine assembles a request at the pointer held at +0x6c of the context in `a0`, since the stores land through that pointer, it advances by 0x14, and it is compared with the word at +0x70 before `_XFlush` is called.
  A `jalr` at 0xd8d8714 hands the four entry arguments to `__glXSetupForCommand`, and the `sb` at 0xd8d871c keeps its returned byte in the frame at entry sp -0x9.
  Table gating comes first: a zero word at +0x4d0 skips the callback (`beql` at 0xd8d8728), and a nonzero one leads the `jalr` at 0xd8d8738 into slot +0x0 with the context as the only argument.
  An unsigned compare (`beql` at 0xd8d8754) sets the word at +0x70 against the pointer plus 0x14: below the bound, `_XFlush` (`jalr` at 0xd8d8764) runs before the pointer is stored at +0x64 (`sw` at 0xd8d8774); otherwise that store (`sw` at 0xd8d8758) comes first.
  Every path then reaches the same writes: the halfword 0x5 at +0x2 (`sh` at 0xd8d8780), the bytes 0x10 at +0x0 and +0x1 (`sb` at 0xd8d8784 and 0xd8d87ac), the word 0x1000c at +0x4 (`sw` at 0xd8d87b0), the parked byte over +0x0 (`sb` at 0xd8d87b4), and the entry a1 and a2 at +0xc and +0x10 (`sw` at 0xd8d87bc and 0xd8d87c4); the context's +0x6c pointer gains 0x14 (`sw` at 0xd8d879c) and its +0x60 counter gains 1 (`sw` at 0xd8d87a0).
  Last, slot +0x4 of the table is invoked with the context and 0x10 when the table is set (`jalr` at 0xd8d87dc), and the pointer at +0x7c is invoked (`jalr` at 0xd8d87f8) when its word is set; the result is that word itself when it is zero (`beql` at 0xd8d87f0).
  Unknown: the routines reached through table slots +0x0 and +0x4 and through the +0x7c pointer, for which the bundle includes no callee notes; whoever populates the table would name them.
  Unknown: the device-side fate of the request bytes at the cursor; no linked register row covers this routine, so the transport code past the cursor would settle it.
  Evidence grade: inferred.
- `glXCreateContextWithConfigSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8280a0 (o32).
  Does not touch the device directly; it forwards its arguments to `CreateContext` (the `jalr` at
  0xd8280f0) and returns that call's result unchanged (`v0` is the return of `CreateContext` at 0xd828104).
  The callee receives the entry a0 as its first argument, the constant 0x0 (set at 0xd8280e4) as its
  second, and the entry a1 and a2 as its third and fourth.
  Four more words go in outgoing stack slots: the entry a3 at +0x10 (`sw` at 0xd8280ec), the caller's
  stack word at entry +0x10 (`lw` at 0xd8280bc) at +0x14 in the delay slot of the call (`sw` at
  0xd8280f4), zero at +0x18 (`sw` at 0xd8280e8), and the constant 0x1 at +0x1c (`sw` at 0xd8280e0).
  Control flow is straight-line.
  Inferred: the committed note on `CreateContext` (allocates a 0x12c-byte client context record, resolves the
  FBConfig or visual, fails on allocation or lookup error) makes this routine's return value that record or failure.
  Unknown: which `CreateContext` parameters take the zero second argument and the stack words holding 0 and 1;
  reading that callee's body is the route.
  Evidence grade: inferred.
- `glXCreateGLXPbufferSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd824c48 (n32).
  Inferred: this creates a drawable for the display in a0 by sending one variable-length request,
  because it calls a function through the display's word at +0x2c, registers the result with
  `__glXAddDrawableInterest` (committed note: a search of a list of drawable interests), writes a
  request record at the display's output pointer and waits for `_XReply`.
  The `jalr` at 0xd824c80 calls `__glXSetupForCommand` with the entry arguments; its return is masked
  to the low 8 bits and kept at sp+0x30, and zero returns 0 at 0xd824e9c (`beq` at 0xd824c90). The
  call through +0x2c (`jalr` at 0xd824c9c, a0 = display) gives a value kept in s1 and passed to
  `__glXAddDrawableInterest` (`jalr` at 0xd824cac). A zero result (`beq` at 0xd824cb4) calls
  `__glXPostError` with 0xb, 0x10 and 0 (`jalr` at 0xd824f50) and returns 0; otherwise the word 4 is
  stored at +0x2c of the returned record (`sw` at 0xd824cc4) and the record pointer is kept at sp+0x28.
  The routine then counts 8-byte pairs in the list at a4: zero pairs when a4 is null (`beq` at
  0xd824cc8) or its first word is zero (`beq` at 0xd824cd8), otherwise the loop at 0xd824ce4 to
  0xd824d0c counts pairs until the next pair's first word is zero. After the optional call through the
  first pointer of the block at +0x4d0 (`jalr` at 0xd824d24), the request size is 0x20 plus 8 times the
  count. If the word at +0x70 is below the word at +0x6c plus that size (`bne` at 0xd824d48) `_XFlush`
  runs first (`jalr` at 0xd824eb0). The record at +0x6c is byte 0x10 at +0x0 (replaced at 0xd824da8 by
  the masked setup return), byte 0x11 at +0x1, the size divided by four as a halfword at +0x2 (`sh` at
  0xd824d68), word 0x10007 at +0x4, the word at a1+0x24 at +0xc, the word at a1+0x48 at +0x10, the
  value returned by the +0x2c call at +0x14, a2 at +0x18 and a3 at +0x1c. The pointer is saved at +0x64
  (`sw` at 0xd824d54), +0x60 is incremented by one and +0x6c advances by the request size (`sw` at
  0xd824d88). When a4 is non-zero and the count is positive, the loop at 0xd824de8 to 0xd824e04 copies
  the pairs from a4 to the record from +0x20, two words per pair, one pair per pass.
  `_XReply` is called with the display, sp+0x0, 0 and 0 (`jalr` at 0xd824e1c). A zero reply (`beq` at
  0xd824e24) runs the optional calls through +0x4 of the +0x4d0 block and through the pointer at +0x7c,
  calls `__glXPostHiddenError` with 0x11 (`jalr` at 0xd824f00), then `__glXRemoveDrawableInterest` and
  `__glXFreeDrawablePrivate` on the record, zeroing the record's first word in the delay slot of the
  latter (`sw` at 0xd824f24), and returns 0. A non-zero reply runs the same optional calls, calls
  `__glXRemoveDrawableInterest` on the record (`jalr` at 0xd824e58) and returns the value kept in s1 from
  the +0x2c call (`move` at 0xd824e64). Unknown: the return value of the +0x2c call and the content of
  the pair list, since both come from the caller and the display; the callers of this routine would
  settle it.
  Evidence grade: inferred.
- `glXCreateGLXPbufferSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2159650 (n64).
  Queues a variable-length request in the output buffer of the connection context in `a0` (write
  pointer at +0xb0, limit at +0xb8), waits for a reply, and returns the result of a context callback.
  It returns 0 without writing when the low byte of the `__glXSetupForCommand` result is zero (the
  `beq` at 0x2159698). Otherwise it calls the routine at +0x48 of the context (the `jalr` at
  0x21596a4), keeps its result in a frame slot (the `sd` at 0x21596d4), passes it to
  `__glXAddDrawableInterest` (the `jalr` at 0x21596b4), and when that result is zero posts
  `__glXPostError` with 0xb and 0x10 and returns 0 (the `jalr` at 0x2159948). Inferred: the committed
  note on `__glXAddDrawableInterest` describes it as finding or creating a drawable record, so the 0x4
  that the `sw` at 0x21596cc stores at +0x40 of its return goes into that record.
  With a non-null fifth argument `a4` whose first word is non-zero (the `beq` at 0x21596d0 and
  0x21596e0), the routine counts steps along 0x18-byte entries: it adds 1 after reading the field at
  +8 of an entry, leaves if that field is zero (the `beq` at 0x21596f4), adds 1 after the field at +0x10
  and leaves if that is zero (the `beq` at 0x2159704), and otherwise adds 1 after loading the word at
  +0x18, stepping the entry pointer by 0x18 and repeating while that word is non-zero (the `bne` at
  0x2159714). With a null `a4` or a zero first word the count is zero. Call the count N. When the
  pointer at +0x968 is non-zero, the routine calls slot +0 of its table (the `jalr` at 0x215972c).
  The request size is 0x20 plus 8N bytes. If the limit at +0xb8 is below the write pointer plus that
  size (the `bne` at 0x2159754), it calls `_XFlush` and reloads the pointer (the `jalr` at 0x21598a8).
  The routine stores the pointer in +0xa0, the size divided by 4 as a halfword at +2 (the `sh` at
  0x2159768), the byte 0x11 at +1, 0x10007 at +4 (the `sw` at 0x21597a0), the saved
  `__glXSetupForCommand` low byte at +0 (the `sb` at 0x21597ac, after the 0x10 written at 0x2159770),
  the words at +0x24 and +0x48 of `a1` at +0xc and +0x10 (the `sw` at 0x21597b4 and 0x21597d0), the
  saved result of the +0x48 routine at +0x14 (the `sw` at 0x21597c0), `a2` at +0x18 and `a3` at +0x1c.
  It adds 1 to the doubleword at +0x98 and the size to +0xb0. When `a4` is non-null and N is
  positive, it then copies N pairs of words from the start of `a4` into the record from +0x20 on, 8
  bytes per pass, in two `sw` per pass (the `sw` at 0x21597e8 and 0x21597fc).
  It then calls `_XReply` with the stack buffer at the frame base as its second argument (the `jalr`
  at 0x2159814). A non-zero result calls slot +8 of the +0x968 table and the routine at +0xd0 when
  those are non-zero (the `jalr` at 0x2159830 and 0x2159844), calls `__glXRemoveDrawableInterest` on
  the record (the `jalr` at 0x2159850) and returns the saved result of the +0x48 routine. A zero
  result calls the same two pointers (the `jalr` at 0x21598cc and 0x21598e0), posts code 0x11 through
  `__glXPostHiddenError` (the `jalr` at 0x21598f8), calls `__glXRemoveDrawableInterest` and
  `__glXFreeDrawablePrivate` on the record (the `jalr` at 0x2159904 and 0x2159918), clears the first
  doubleword of the record (the `sd` at 0x215991c) and returns 0.
  Unknown: the content of the routine at +0x48 of the context and of the routines behind the pointers
  at +0x968 and +0xd0; a committed note for each would settle it.
  Evidence grade: inferred.
- `glXCreateGLXPbufferSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8c24e0 (o32).
  Inferred: the routine builds a create request in the buffer whose cursor is the word at +0x6c of the context in `a0`, waits for a reply, and registers a drawable record first, since it stores through that cursor, advances it, calls `_XFlush` when the buffer limit at +0x70 would be passed, calls `_XReply`, and calls `__glXAddDrawableInterest`, which per its callee note finds or allocates a record in a linked drawable list and returns zero on failure.
  The `jalr` at 0xd8c2510 calls `__glXSetupForCommand` with the four entry arguments and saves its byte at entry sp -0x2d (the `sb` at 0xd8c2524); a zero return goes straight to a return of zero (`bne` at 0xd8c2520 falls through to the `beq` at 0xd8c2528).
  The routine calls the pointer at +0x2c of the context with the context as argument (`jalr` at 0xd8c253c) and passes that result to `__glXAddDrawableInterest` (`jalr` at 0xd8c2554); when the add returns zero, `__glXPostError` is called with 0xb, 0x10 and 0 (`jalr` at 0xd8c257c) and the routine returns zero.
  On success the record gets the constant 0x4 at +0x2c (`sw` at 0xd8c2598).
  The stack word at entry +0x10 (`lw` at 0xd8c2590) is a list pointer: when it and the first word it points at are nonzero, the loop at 0xd8c25b8 to 0xd8c25c0 adds one to a count (starting from the frame word at entry -0x3c, which holds zero) and steps the pointer by 8 each pass, until the word at the next pointer+0x8 is zero.
  When the word at +0x4d0 of the context is nonzero, the pointer at +0x0 of that table is called with the context (`jalr` at 0xd8c25e4).
  The request size is eight times the count plus 0x20 (shifts at 0xd8c25fc and 0xd8c2604, `addiu` at 0xd8c2608); if the limit at +0x70 is below the cursor plus that size (`beql` at 0xd8c2614), `_XFlush` runs (`jalr` at 0xd8c262c), and the cursor is saved at +0x64 either way (`sw` at 0xd8c264c).
  The request is written through the cursor: the halfword at +0x2 is the size shifted right by 2 arithmetically (`sh` at 0xd8c2658), the byte 0x10 at +0x0 and 0x11 at +0x1, the word 0x10007 at +0x4, the words at +0x24 and +0x48 of the entry a1 at +0xc and +0x10, the result of the +0x2c callback at +0x14, and the entry a2 and a3 at +0x18 and +0x1c; the saved setup byte overwrites +0x0 (`sb` at 0xd8c2690). The cursor at +0x6c then advances by the size and the counter at +0x60 by 1 (`sw` at 0xd8c2674 and 0xd8c2678).
  If the list pointer and the loop count are nonzero, the loop at 0xd8c26d8 to 0xd8c26fc copies the list into the request from the cursor+0x20 (`addiu` at 0xd8c269c), two words (8 bytes) per pass, once per counted entry.
  `_XReply` is then called with the context, a frame address at entry -0x28 and zeros (`jalr` at 0xd8c270c).
  If it returns zero (`bne` at 0xd8c2714 falls through), the routine calls the pointer at +0x4 of the +0x4d0 table when that table is set and the pointer at +0x7c of the context when set, posts hidden error 0x11 through `__glXPostHiddenError` (`jalr` at 0xd8c2768), calls `__glXRemoveDrawableInterest` on the record, stores zero at the record's +0x0 (`sw` at 0xd8c278c), calls `__glXFreeDrawablePrivate`, and returns zero.
  If it returns nonzero, the same two callbacks run, `__glXRemoveDrawableInterest` is called on the record (`jalr` at 0xd8c27f0), and the routine returns the result of the +0x2c callback saved at entry -0x2c (`lw` at 0xd8c27fc).
  Unknown: the content of the list entries and of the routines behind the callbacks at +0x2c and at +0x0 and +0x4 of the tables, which carry no callee notes; the code that fills the context's function table would settle it.
  Evidence grade: inferred.
- `glXCreateGLXPixmapWithConfigSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8c5ffc (o32).
  Inferred: the word at +0x6c of the context in `a0` locates a request buffer that the routine fills, since the stores land through that cursor, it advances by 0x1c (`sw` at 0xd8c60bc), and the cursor plus 0x1c is compared with the limit at +0x70 before `_XFlush` is called.
  A zero result from `__glXSetupForCommand` (the `jalr` at 0xd8c6024, whose byte the `sb` at 0xd8c6034 parks at entry sp -0xd) ends the routine at once with zero, through the `bne` at 0xd8c6030 and the `beq` at 0xd8c6038.
  Table slot +0x0 is used first when the table pointer at +0x4d0 is set (`jalr` at 0xd8c6054, with the context as the first argument); the unsigned test at `beql` 0xd8c6070 then compares the word at +0x70 with the cursor plus 0x1c, and below that bound `_XFlush` (`jalr` at 0xd8c6080) precedes the cursor's store at +0x64 (`sw` at 0xd8c6094).
  Fields then land at the cursor: halfword 0x7 at +0x2 (`sh` at 0xd8c60a0), byte 0x10 at +0x0 and +0x1 (`sb` at 0xd8c60a4 and 0xd8c60cc), word 0x10006 at +0x4 (`sw` at 0xd8c60d0), the parked byte over +0x0 (`sb` at 0xd8c60d4), words from entry a1 at +0x24 and +0x48 placed at +0xc and +0x10, and entry a2 at +0x14; the context's +0x6c word gains 0x1c (`sw` at 0xd8c60bc) and its +0x60 word gains 1 (`sw` at 0xd8c60c0).
  Two callbacks follow: `jalr` at 0xd8c60fc calls the pointer at +0x2c with the context as the first argument (a1 still holds 0x10 and a2 the entry a1 at that call), and its result lands at +0x18 of the cursor (`sw` at 0xd8c6110); `jalr` at 0xd8c6128 calls table slot +0x4 when set, and `jalr` at 0xd8c6144 calls the pointer at +0x7c when that word is set.
  The return is the +0x2c result read back from entry -0xc by the `lw` at 0xd8c6140 or 0xd8c6150, except zero on the setup-failure path.
  Unknown: the handlers behind table slots +0x0 and +0x4 and behind the pointers at +0x2c and +0x7c; no callee notes cover them, and a reader of the context-table setup would name them.
  Unknown: whether the bytes written at the cursor leave the client, since no linked register row covers this routine; a trace of the send path would decide it.
  Evidence grade: inferred.
- `glXCreateGLXPixmapWithConfigSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8c7bb8 (n32).
  Inferred: this appends one 0x1c-byte request record to the display's output buffer (the pointer at
  +0x6c of the display in a0) from the structure at a1 and the value a2, and returns a value obtained
  through the display's word at +0x2c, because the record is written between a call to
  `__glXSetupForCommand` (committed note: it selects the display's current context) and that call.
  The `jalr` at 0xd8c7be0 calls `__glXSetupForCommand` with a1 and a2 as they arrived; its return is
  masked to the low 8 bits and saved at sp+0x20, and when that byte is zero (`beq` at 0xd8c7bf8) the
  routine returns 0 at 0xd8c7d04 without writing anything. When the word at +0x4d0 is non-zero (`beq` at
  0xd8c7c04) the `jalr` at 0xd8c7c10 calls the pointer at offset 0 of the block it points to, with the
  display in a0. If the word at +0x70 is below the word at +0x6c plus 0x1c (unsigned `bne` at
  0xd8c7c28), `_XFlush` runs first (`jalr` at 0xd8c7cec) and the pointer is reloaded.
  The record at the +0x6c pointer is: byte 0x10 at +0x0 (`sb` at 0xd8c7c40), later replaced by the
  masked setup return (`sb` at 0xd8c7c70); byte 0x10 at +0x1 (`sb` at 0xd8c7c6c); halfword 7 at +0x2
  (`sh` at 0xd8c7c38); word 0x10006 at +0x4 (`sw` at 0xd8c7c68); the word at a1+0x24 at +0xc; the word
  at a1+0x48 at +0x10; and a2 at +0x14 (`sw` at 0xd8c7c84). The pointer is also saved at +0x64 (`sw` at
  0xd8c7c30), +0x60 is incremented by one (`sw` at 0xd8c7c54) and +0x6c advances by 0x1c (`sw` at
  0xd8c7c60). The `jalr` at 0xd8c7c94 then calls the pointer at +0x2c with the display in a0; its return
  value is stored at +0x18 of the record (`sw` at 0xd8c7ca0) and kept at sp+0x0. The routine then runs
  the optional calls through +0x4 of the +0x4d0 block (`jalr` at 0xd8c7cb4) and through the pointer at
  +0x7c (`jalr` at 0xd8c7cc8), when those words are non-zero, and returns the saved value of the +0x2c
  call (`ld` at 0xd8c7cd4). Unknown: the return value of the routine behind the word at +0x2c, which
  is both stored in the record and returned; the code that fills that word would settle it.
  Evidence grade: inferred.
- `glXCreateGLXPixmapWithConfigSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf8b9dc (n64).
  Writes a 0x1c-byte record at the buffer pointer kept at +0xb0 of the context in `a0` and advances
  that pointer by 0x1c (the `sd` at 0xcf8ba7c). It calls `__glXSetupForCommand` first (the `jalr`
  at 0xcf8ba04) and returns 0 without writing when the low byte of its result is zero (the `beq`
  at 0xcf8ba14); otherwise it calls slot +0 of the pointer at +0x968 when that pointer is non-zero
  (the `jalr` at 0xcf8ba2c). Inferred: the note committed for `__glXSetupForCommand` (written for the
  IP30ODSY image of the same library) gives its result as a context byte, a looked-up byte, or zero,
  and that saved result is what the record keeps at +0. When the pointer at +0xb8 is below the +0xb0
  pointer plus 0x1c (the `bne` at 0xcf8ba44), it calls `_XFlush` (the `jalr` at 0xcf8bb08) and
  reloads the buffer pointer before writing. The record then holds 0x7 as a halfword at +2 (the `sh`
  at 0xcf8ba54), 0x10 at +0 followed by the saved result at +0 (the `sb` at 0xcf8ba5c and 0xcf8ba8c),
  0x10 at +1 (the `sb` at 0xcf8ba88) and 0x10006 at +4 (the `sw` at 0xcf8ba84), with the words at
  +0x24 and +0x48 of `a1` going to +0xc and +0x10 (the `sw` at 0xcf8ba94 and 0xcf8baa4) and `a2` at
  +0x14 (the `sw` at 0xcf8baa0); the `sd` at 0xcf8ba70 adds 1 to the doubleword at +0x98. The
  routine at +0x48 of the context is then called with the new write pointer in `a3`, `a2` in `a4`,
  the two `a1` words in `a5` and `a6`, and 0x10006 in `a7` (the `jalr` at 0xcf8bab0), and its result
  goes to +0x18 of the record (the `sw` at 0xcf8babc). When the pointer at +0x968 is non-zero, it
  calls slot +8 of that pointer's table (the `jalr` at 0xcf8bad0); when the pointer at +0xd0 is
  non-zero, it calls that pointer (the `jalr` at 0xcf8bae4), and it returns (the `jr ra` at
  0xcf8bafc) with whatever the last of those calls left in v0, or the +0x48 routine's result when
  neither ran.
  Unknown: the content of the routines behind +0x48 of the context, slot 0 and slot +8 of the pointer
  at +0x968, and the pointer at +0xd0; a committed note for each of them would settle it.
  Evidence grade: inferred.
- `glXCreateGLXVideoSourceSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd824988 (o32).
  Inferred: it creates the interest record and private structure for a drawable, then appends a 0x2c-byte
  entry to the buffer whose pointer sits at +0x6c of its first argument.
  Its loads and stores cover its first argument's structure, the record `__glXAddDrawableInterest` returns,
  the private structure at that record's +0x2c, the buffer entry, and its frame, and none addresses a fixed
  device location.
  It returns early when `__glXSetupForCommand` returns zero (the `bne` at 0xd8249c4), when the word at entry
  sp+0x10 is neither 2 nor 5 (the `beq` at 0xd8249dc and 0xd8249e4), or when `__glXInitializeVideoLibrary`
  returns zero (the `bne` at 0xd824a00); otherwise it calls the pointer at +0x2c of its first argument (the
  `jalr` at 0xd824a18) and passes that result to `__glXAddDrawableInterest` (the `jalr` at 0xd824a30), which
  returns early on zero (the `bne` at 0xd824a3c).
  On success it stores the second argument at +0x8 of the new record (the `sw` at 0xd824a6c), zero at +0xc,
  the first argument at +0x10, the byte 1 at +0x20, 3 at +0x2c and zero at +0x30 (the stores from 0xd824a4c to
  0xd824a68), then calls `__glXCreateVideoSourcePrivate` on the record plus 0x2c (the `jalr` at 0xd824a78).
  A zero result there removes the interest (the `jalr` at 0xd824a94) and returns.
  The private structure then gets the stack word at entry sp+0x10 at +0 (the `sw` at 0xd824ab4), and three
  calls through the pointer loaded from `abs 0xd846784` (the `jalr` at 0xd824ad0, 0xd824b30 and 0xd824b88)
  take the entry's third and fourth argument registers as the first two arguments, the stack word at entry
  sp+0x14 as the third, 4, 6 or 7 as the fourth, and the address of the frame area at entry sp-0x70 in the
  outgoing stack slot (the `sw` at 0xd824ac0, 0xd824b24 and 0xd824b78); each negative result removes the
  interest and returns (the `bgez` branches at 0xd824adc, 0xd824b3c and 0xd824b94).
  After the calls that pass 4, 6 and 7 the routine copies the frame words back into the private structure:
  entry sp-0x70 to +4 and sp-0x6c to +8 (the `sw` at 0xd824b0c and 0xd824b18), sp-0x70 to +0xc (0xd824b6c),
  and sp-0x70 to +0x10 (0xd824bc0), so the callee fills that frame area.
  If the word at +0x4d0 is nonzero (the `beql` at 0xd824be4), the pointer at offset 0 of that word is called
  with the first argument (the `jalr` at 0xd824bf8); the return of `videoPackingToInternalFormat` (the `jalr`
  at 0xd824bcc) goes into the private structure's +0x14 (the `sw` at 0xd824bdc).
  When the word at +0x70 is at least the word at +0x6c plus 0x2c, as unsigned values (the `beql` at
  0xd824c18), the entry is written at the old pointer P; below that, `_XFlush` runs on the first argument
  first (the `jalr` at 0xd824c2c).
  The entry gets the setup byte at P+0 (the `sb` at 0xd824c84, replacing the 0x10 the `sb` at 0xd824c50 wrote),
  0x10 at P+1, halfword 0xb at P+2, the word 0x10002 at P+4, zero at P+8, the value the +0x2c callee returned at
  P+0xc, the second argument at P+0x10, the stack word at entry sp+0x10 at P+0x14, and the private structure's
  +4 through +0x14 at P+0x18 through P+0x28; the word at +0x6c then rises by 0x2c and the word at +0x60 by one.
  Inferred: a linked token row covers the word 0x10002 (block 0x002, class 1, id 2), so the entry carries a
  token.
  Last, when the word at +0x4d0 is nonzero it calls its slot at offset 4 with 0x10 as second argument (the
  `jalr` at 0xd824cdc), calls the word at +0x7c when that is nonzero (the `jalr` at 0xd824cf8), and removes
  the interest (the `jalr` at 0xd824d0c) before the return.
  The success path returns the result of the +0x2c callee, saved at entry sp-0xc and reloaded by the `lw` at
  0xd824d18; the failure paths return zero.
  Unknown: the fields of the frame area that the callee behind the pointer at `abs 0xd846784` fills; the code
  of that callee would settle them.
  Evidence grade: inferred.
- `glXCreateGLXVideoSourceSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8252cc (n32).
  Inferred: creates a video-source record for a drawable and appends a 0x2c-byte request describing it to the display's output buffer, since the cursor at arg0+0x6c is advanced by 0x2c with a `_XFlush` call (0xd8255b0) when the buffer limit at arg0+0x70 would be passed; it works on arg0's display record and on the interest record R that `__glXAddDrawableInterest` returns.
  It returns 0 unless `__glXSetupForCommand` (`jalr` at 0xd825300) leaves a nonzero low byte in `v0` (`beq` at 0xd82530c) and entry `a4` is 2 or 5 (`beq` at 0xd825318 and 0xd825324); in the 2-or-5 case it calls `__glXInitializeVideoLibrary` (`jalr` at 0xd825358) and returns 0 if that gives zero (`beq` at 0xd825360).
  It calls the pointer at arg0+0x2c (`lw` at 0xd82536c, `jalr` at 0xd825370), passes its result to `__glXAddDrawableInterest` (`jalr` at 0xd825380), and returns 0 if that is zero (`beq` at 0xd825388); otherwise it writes R with 0 at +0x30 and +0xc, 3 at +0x2c, entry `a1` at +0x8, arg0 at +0x10, and the byte 1 at +0x20 (0xd82539c to 0xd8253c4).
  It then calls `__glXCreateVideoSourcePrivate` with R+0x2c and 3 (`jalr` at 0xd8253c0), which returns the record P, and calls the pointer at abs 0xd846d24 three times (`jalr` at 0xd8253ec, 0xd825424 and 0xd825450) with entry `a2`, `a3` and `a5` as its first three arguments, the constants 4, 6 and 7 as `a3`, and the frame bottom (sp at entry minus 0xc0) as `a4`; entry `a4` goes to P+0x0 in the delay slot of the first call (0xd8253f0). P+0x4 and P+0x8 take frame words 0 and 4 as left by the first call (0xd825414, 0xd825428), P+0xc takes frame word 0 after the second call (0xd825454) and P+0x10 takes it after the third (0xd825470).
  The `bgezall` at 0xd825474 tests `$zero`, so it always branches and links to `videoPackingToInternalFormat` (0xd8251f8) with frame word 0 as its argument (delay slot `lw` at 0xd825478); the result goes to P+0x14 (0xd825484). A zero result from the create call (`beq` at 0xd8253c8), or a negative result from any of the three pointer calls (`bltz` at 0xd8253f4, 0xd82542c and 0xd825458), removes R with `__glXRemoveDrawableInterest` (`jalr` at 0xd8255cc, 0xd8255e0, 0xd8255f8 and 0xd82560c) and returns 0.
  Before the request is written it calls the pointer at [arg0+0x4d0] +0 (`jalr` at 0xd825498) only when that table pointer is nonzero (`beq` at 0xd82548c); if arg0+0x70 is below the cursor at arg0+0x6c plus 0x2c (`bne` at 0xd8254b4), it calls `_XFlush` (0xd8255b0) first. The write cursor is first recorded at arg0+0x64 (0xd8254d0), then filled in: byte 0x10 goes to +0x0 and +0x1 (0xd8254e0, 0xd825518), halfword 0xb to +0x2, 0x10002 to +0x4, 0 to +0x8, the result of the call at 0xd825370 to +0xc, entry `a1` to +0x10, entry `a4` to +0x14, and P's words +0x4 to +0x14 to +0x18 to +0x28 (0xd825524 to 0xd825544). The byte at +0x0 is then overwritten (0xd82551c) with the low byte `__glXSetupForCommand` returned, saved at 0xd82531c; arg0+0x60 gains 1 and the cursor gains 0x2c (0xd8254f0, 0xd8254f8).
  It then calls the pointer at [arg0+0x4d0] +4 (`jalr` at 0xd82555c, `beq` at 0xd82554c) and the pointer at arg0+0x7c (`jalr` at 0xd825574, `beq` at 0xd82556c), each only when nonzero, removes R with `__glXRemoveDrawableInterest` (`jalr` at 0xd825580), and returns the result of the call at 0xd825370 (frame slot at 0x70(sp) reloaded at 0xd82558c).
  Unknown: the target of the pointer at arg0+0x2c (called at 0xd825370), and so the word it leaves at +0xc of the request and in the return value; the code at the pointer address 0xd846d24 would settle the three calls too.
  Evidence grade: inferred.
- `glXCreateGLXVideoSourceSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf77a14 (n64).
  Sets up a drawable record and a private video-source object, runs three calls through one pointer, then
  queues a 0x2c-byte request in the output buffer of the context in `a0` and returns the result of
  the context's +0x48 routine. It returns 0 when the low byte of the `__glXSetupForCommand` result
  is zero (the `beq` at 0xcf77a68) or when `a4` is neither 2 nor 5 (the `beq` at 0xcf77a70 and
  0xcf77a78). Otherwise it calls `__glXInitializeVideoLibrary` (the `jalr` at 0xcf77a94) and returns
  0 when that is zero (the `beq` at 0xcf77a9c). It calls the routine at +0x48 of the context (the
  `jalr` at 0xcf77aac), keeps its result in a frame slot, passes it to `__glXAddDrawableInterest` (the
  `jalr` at 0xcf77ac0) and returns 0 when that is zero (the `bne` at 0xcf77ad4). Inferred: the
  committed note on `__glXAddDrawableInterest` says it returns the interest record or zero, so the
  stores at 0xcf77b08 to 0xcf77b30 go into that record: zero doublewords at +0x48 and +0x10, the
  word 3 at +0x40, the byte 1 at +0x2c, `a1` at +0xc and `a0` at +0x18.
  It calls `__glXCreateVideoSourcePrivate` with the record plus 0x40 and 3 (the `jalr` at 0xcf77b34);
  a zero result removes the record through `__glXRemoveDrawableInterest` and returns 0 (the `jalr` at
  0xcf77d40). With a non-zero result P, it makes three calls through the pointer held in the `.bss`
  slot at 0xcfa8490, each with `a2`, `a3` and `a5` as the first three arguments, a code in `a3` and
  a buffer at its own frame base in `a4`: code 4 (the `jalr` at 0xcf77b70, with `a4` stored to the
  word at P+0 in its delay slot), then 6 (0xcf77bac), then 7 (0xcf77be0). A negative result from
  any of them removes the record and returns 0 (the `bltz` at 0xcf77b78, 0xcf77bb4 and 0xcf77be8).
  After the first call the frame-base words at +0 and +4 go to P+4 and P+8 (the `sw` at 0xcf77b90
  and 0xcf77ba4); after the second the word at +0 goes to P+0xc (0xcf77bd8); after the third the
  word at +0 goes to P+0x10 (0xcf77bf8). The `bgezall` at 0xcf77c00 tests `zero`, so it always
  calls `videoPackingToInternalFormat`, with that frame-base word as its argument, and the `sw` at
  0xcf77c10 stores the result at P+0x14.
  The routine then calls slot 0 of the pointer at +0x968 when it is non-zero (the `jalr` at
  0xcf77c24). If the limit at +0xb8 is below the write pointer plus 0x2c (the `bne` at 0xcf77c40) it
  calls `_XFlush` and reloads the pointer (the `jalr` at 0xcf77d64). The request holds the byte 0x10
  at +1 (the `sb` at 0xcf77c88), the halfword 0xb at +2 (the `sh` at 0xcf77c58), 0x10002 at +4 (the
  `sw` at 0xcf77ca0), zero at +8, the saved result of the +0x48 routine at +0xc, the saved `a1` at
  +0x10 (the `sw` at 0xcf77c98), `a4` at +0x14 (the `sw` at 0xcf77c7c), the low byte of the
  `__glXSetupForCommand` result at +0 (the `sb` at 0xcf77c8c), and P+4 through P+0x14 copied to
  +0x18 through +0x28 (the `sw` at 0xcf77cac to 0xcf77ccc). It adds 0x2c to the write pointer and
  1 to the doubleword at +0x98 (the `sd` at 0xcf77c78 and 0xcf77c6c). Finally it calls slot +8 of the
  +0x968 pointer and the routine at +0xd0 when those are non-zero (the `jalr` at 0xcf77ce0 and
  0xcf77cf8), removes the record (the `jalr` at 0xcf77d04) and returns the saved result of the +0x48
  routine (the `ld` at 0xcf77d10, the `jr` at 0xcf77d1c).
  Inferred: the halfword 0xb at +2 is the request size in 4-byte units, because 0x2c divided by 4 is 11.
  Unknown: the content of the routine in the `.bss` slot at 0xcfa8490, of the routine at +0x48 of the
  context, and of the routines behind the pointers at +0x968 and +0xd0; committed entries for those
  would settle it.
  Evidence grade: inferred.
- `glXCreateNewContext` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d6400 (o32).
  Does not touch the device directly; its first argument goes on to `CreateContext` at 0xd8ae040 through
  the `jalr` at 0xd8d644c, with a zero in the second argument register and its own second and third
  arguments in a2 and a3.
  The fourth entry argument goes to the outgoing stack slot at +0x10 (`sw` at 0xd8d6448), the caller's
  stack word at entry +0x10 (`lw` at 0xd8d641c) goes to +0x14 in the delay slot of the call (`sw` at
  0xd8d6450), and the stores at 0xd8d6440 and 0xd8d6444 put zero in the slots at +0x18 and +0x1c.
  Its other stores save ra (`sw` at 0xd8d6428) and gp (`sw` at 0xd8d6438) in its 48-byte frame.
  There is no conditional branch; `v0` at the return (0xd8d6460) is whatever `CreateContext` handed back.
  Inferred: the committed note for a routine of the same name in another build describes it as the path
  that allocates a client context record and chooses direct or indirect creation, so this entry hands a
  context-creation request to it.
  Unknown: the parameter slots of `CreateContext` that receive the zero second argument and the two zero
  stack words; reading the routine at 0xd8ae040 would settle them.
  Evidence grade: inferred.
- `glXDestroyGLXPbufferSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8243fc (n32).
  Inferred: releases the client-side drawable-interest record for arg1 and then appends a 0x10-byte request to the display's output buffer, since the cursor at arg0+0x6c advances by 0x10 and `_XFlush` (0xd82452c) runs when the limit at arg0+0x70 would be passed.
  If `__glXSetupForCommand` (`jalr` at 0xd824428) leaves a zero low byte (`beq` at 0xd824434), the routine returns at once with that masked zero in `v0`; the masked byte is saved to the frame in the delay slot (`sd` at 0xd824438) on both paths.
  Otherwise it calls `__glXAddDrawableInterest` with arg1 (`jalr` at 0xd824444) and passes its result R to `__glXRemoveDrawableInterest` (`jalr` at 0xd824454). It then loads R's word at +0x14 (0xd82445c), and when that is zero (`beq` at 0xd824460) stores zero to R's word at +0x0 (`sw` at 0xd824540); `__glXFreeDrawablePrivate` (`jalr` at 0xd824468) then takes R on both paths. Inferred: the word at +0x14 is the reference count, since the `__glXAddDrawableInterest` note says a match increments the count at +0x14.
  Next, entry +0 of the table pointer at arg0+0x4d0 is called (`jalr` at 0xd824480) when that pointer is nonzero (`beq` at 0xd824474). If the limit at arg0+0x70 is below the cursor at arg0+0x6c plus 0x10 (`bne` at 0xd824498), `_XFlush` runs first. The write cursor is first recorded at arg0+0x64 (0xd8244a0), then the request is filled in: halfword 4 goes to +0x2, byte 0x10 to +0x0 (0xd8244b0), entry `a1` to +0xc, 0x10008 to +0x4, byte 0x10 to +0x1 (0xd8244dc), and last +0x0 is overwritten (`sb` at 0xd8244e0) with the masked byte saved at 0xd824438. Afterwards arg0+0x6c is 0x10 higher and arg0+0x60 is one higher (0xd8244c8, 0xd8244c0).
  Entry +4 of the table follows (`jalr` at 0xd8244f4) when the pointer is nonzero (`beq` at 0xd8244e8), then the pointer at arg0+0x7c (`jalr` at 0xd824508) when it is nonzero (`beq` at 0xd824500). The routine returns with `v0` as the last executed call or load left it (0xd824520); the bundle does not follow that value.
  Unknown: the routines the pointers at [arg0+0x4d0] (entries +0 and +4) and at arg0+0x7c lead to, and so the device-side result of the request written before the +4 entry.
  Unknown: the handling of R by `__glXRemoveDrawableInterest` and `__glXFreeDrawablePrivate`; neither has a committed note, so the word at +0x14 after the remove call is not settled.
  Evidence grade: inferred.
- `glXDestroyGLXPbufferSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2158e08 (n64).
  Inferred: it acts on the drawable record that `__glXAddDrawableInterest` returns for the second argument, since the committed note for that callee says it returns the matching record from the drawable-interest list, and it runs only after `__glXSetupForCommand` passes (the `beq` at 0x2158e44 returns at once when the low byte of that result is zero).
  Otherwise it calls `__glXAddDrawableInterest` with a1 (`jalr` at 0x2158e50), then `__glXRemoveDrawableInterest` on the record (`jalr` at 0x2158e60).
  When the word at +0x20 of the record is zero (`lw` at 0x2158e68), the `sd` at 0x2158f4c zeroes the record's first doubleword before the `jalr` at 0x2158e74 calls `__glXFreeDrawablePrivate` on it; the other path reaches that call without the store.
  Before writing, the pointer at +0xb0 of the first argument is compared, unsigned, with the pointer at +0xb8 after adding 0x10 (the `bne` at 0x2158ea4); when +0xb8 is lower, `_XFlush` is called on the first argument (`jalr` at 0x2158f38) and the pointer is reloaded, so the 0x10-byte block always fits.
  That pointer is then copied into +0xa0 (`sd` at 0x2158eac), and the block at it gets a halfword 0x4 at +0x2 (`sh` at 0x2158eb4), a byte 0x10 at +0x0 (`sb` at 0x2158ebc), the second argument at +0xc (`sw` at 0x2158edc), the word 0x10008 at +0x4 (`sw` at 0x2158ee4) and a byte 0x10 at +0x1 (`sb` at 0x2158ee8); the `sb` at 0x2158eec then overwrites +0x0 with the saved `__glXSetupForCommand` result.
  The `sd` at 0x2158ecc adds one to the doubleword at +0x98, and the `sd` at 0x2158ed4 adds 0x10 to the pointer at +0xb0.
  A call through the table pointer at +0x968 (offset 0 of that table, `jalr` at 0x2158e8c) runs before the block is written, and one through offset 8 (`jalr` at 0x2158f00) runs after it; each is skipped when the +0x968 pointer is zero.
  Last, a call through the pointer at +0xd0 (`jalr` at 0x2158f14) runs only when that pointer is nonzero (the `beq` at 0x2158f0c), and the routine then returns.
  Unknown: the routine each of the calls through the pointers at +0x968 and +0xd0 reaches (`jalr` at 0x2158e8c, 0x2158f00 and 0x2158f14), since the bundle names no routine behind those pointer words; reading the display's pointer tables would settle it.
  Unknown: the value left in v0 at the return at 0x2158f2c on the paths that pass the calls, since the bundle gives v0 as ? there.
  Evidence grade: inferred.
- `glXDestroyGLXVideoSourceSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd824818 (o32).
  Inferred: it dismantles the interest record of the drawable in its second argument and appends entries at
  the pointer held in +0x6c of its first argument.
  Its loads and stores stay within its first argument's structure, the record that `__glXAddDrawableInterest`
  returns, the buffer entry, and its frame; nothing in the body addresses a fixed device location.
  It calls `__glXSetupForCommand` with its four argument registers (the `jalr` at 0xd82483c), keeps the byte it
  returns at frame +0x27 (the `sb` at 0xd82484c), and returns at once when that result is zero (the `beq` at
  0xd824848); with a zero second argument it returns the nonzero result instead (the `beql` at 0xd824854).
  Otherwise `__glXAddDrawableInterest` takes the second argument (the `jalr` at 0xd824860), and
  `__glXRemoveDrawableInterest` and `__glXFreeDrawablePrivate` take the record that call returned (the `jalr`
  at 0xd824878 and 0xd82488c).
  Inferred: the committed note for that add call describes a lookup for the supplied drawable that bumps an
  existing record's count or allocates a new one, so the second argument stands for the drawable.
  A nonzero word at +0x4d0 of the first argument leads to a call through offset 0 of that word with the first
  argument (the `jalr` at 0xd8248ac); if the word is still nonzero (the `beql` at 0xd82493c), a call through
  offset 4 with 0x10 as second argument follows later (the `jalr` at 0xd82494c).
  The word at +0x70 is compared with the word at +0x6c plus 0x10, as unsigned values (the `beql` at 0xd8248c8):
  when the first is at least the second, the word at +0x6c goes into +0x64 in the delay slot (the `sw` at
  0xd8248cc); when it is less, `_XFlush` runs on the first argument (the `jalr` at 0xd8248d8) before the same
  store (the `sw` at 0xd8248e8).
  Inferred: the limit test reads as a space check on the pointer at +0x6c, given that the entry written next
  advances that pointer by 0x10.
  The entry at the old pointer P gets the setup byte at P+0 (the `sb` at 0xd82492c, which replaces the 0x10 the
  `sb` at 0xd8248f8 wrote there), 0x10 at P+1 (the `sb` at 0xd824920), halfword 4 at P+2 (the `sh` at 0xd8248f4),
  the word 0x10003 at P+4 (the `sw` at 0xd824924), zero at P+8 (the `sw` at 0xd824928) and the second argument at
  P+0xc (the `sw` at 0xd824934); then the word at +0x6c rises by 0x10 (the `sw` at 0xd824910) and the word at
  +0x60 rises by one (the `sw` at 0xd824914).
  Inferred: the token table has an entry for 0x10003 (block 0x003, class 1, id 3), which makes the entry a
  token.
  The word at +0x7c is loaded at 0xd824940 or 0xd824958; zero sends the routine out at once (the `beql` at
  0xd824960), and a nonzero word receives the first argument as its call (the `jalr` at 0xd824968).
  Zero comes back from the setup-zero exit (`beq` at 0xd824848); the setup call's own nonzero result comes back when the
  second argument is zero (`beql` at 0xd824854); otherwise the result of the callee behind the +0x7c word is passed on
  (`jalr` at 0xd824968).
  Unknown: the content of the routines behind offsets 0 and 4 of the +0x4d0 table and behind the +0x7c word, which carry no
  callee notes; the code that fills that table would settle it.
  Evidence grade: inferred.
- `glXDestroyGLXVideoSourceSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8c31b8 (o32).
  Inferred: it tears down the interest record for the drawable in its second argument and writes fixed-size
  entries at the pointer the word at +0x6c of its first argument holds.
  Its memory writes land in its first argument's structure, the buffer entry, the record returned by
  `__glXAddDrawableInterest`, and its frame, and the body never names a fixed device location.
  The `jalr` at 0xd8c31dc calls `__glXSetupForCommand` with all four argument registers; a zero result
  sends the routine to the epilogue (the `beq` at 0xd8c31e8), and the byte it returns is saved at frame +0x27
  in the delay slot (the `sb` at 0xd8c31ec).
  With a zero second argument the epilogue hands back that nonzero result (the `beql` at 0xd8c31f4); with a
  nonzero one, the add, remove and free calls run in that order (the `jalr` at 0xd8c3200, 0xd8c3218 and
  0xd8c322c), the last two on the record the add call returned.
  Inferred: the committed note for the add call describes a lookup that bumps the count of an existing record
  for the supplied drawable or allocates one, which is why the second argument is treated as the drawable.
  A nonzero word at +0x4d0 gates a call through offset 0 of that word with the first argument (the `jalr` at
  0xd8c324c); a later call through offset 4, with 0x10 as second argument, needs the same word to stay nonzero
  (the `beql` at 0xd8c32dc and the `jalr` at 0xd8c32ec).
  A comparison of the word at +0x70 against the word at +0x6c plus 0x10, as unsigned values (the `beql` at
  0xd8c3268), picks the path: at or above the sum, the word at +0x6c is copied into +0x64 from the delay slot
  (the `sw` at 0xd8c326c); below it, `_XFlush` runs first (the `jalr` at 0xd8c3278) and the same copy follows
  (the `sw` at 0xd8c3288).
  Inferred: that comparison is a room check, because the entry written next moves the pointer by 0x10.
  The entry at the old pointer P has its setup byte at P+0 (the `sb` at 0xd8c32cc, which overwrites the 0x10
  that the `sb` at 0xd8c3298 placed there), 0x10 at P+1 (the `sb` at 0xd8c32c0), halfword 4 at P+2 (the `sh` at
  0xd8c3294), the word 0x10003 at P+4 (the `sw` at 0xd8c32c4), zero at P+8 (the `sw` at 0xd8c32c8) and the second
  argument at P+0xc (the `sw` at 0xd8c32d4).
  Last, the pointer at +0x6c is raised by 0x10 (the `sw` at 0xd8c32b0), the word at +0x60 by one (the `sw` at
  0xd8c32b4), and the word at +0x7c, when nonzero, is called with the first argument (the `beql` at 0xd8c3300
  and the `jalr` at 0xd8c3308).
  Unknown: how the consumer of the entry reads the word 0x10003 at P+4; the bundle has no linked entry for that word.
  What comes back: zero from the setup-zero exit (`beq` at 0xd8c31e8), the setup call's own nonzero result when the second
  argument is zero (`beql` at 0xd8c31f4), and the result of the callee behind the +0x7c word when that word is set (`jalr` at 0xd8c3308).
  Unknown: the routines reached through slots 0 and 4 of the +0x4d0 table and through the +0x7c word; no callee note covers
  them, and the code that fills the table would settle them.
  Evidence grade: inferred.
- `glXDestroyGLXVideoSourceSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf777fc (n64).
  Inferred: it acts on the drawable record that `__glXAddDrawableInterest` returns for the second argument, since the committed note for that callee says it returns the matching record from the drawable-interest list; it returns at once when `__glXSetupForCommand` gives a zero low byte (`beq` at 0xcf77830) or when the second argument is zero (`beq` at 0xcf77838).
  Otherwise it calls `__glXAddDrawableInterest` with a1 (`jalr` at 0xcf77844), then `__glXRemoveDrawableInterest` and `__glXFreeDrawablePrivate` on the record (`jalr` at 0xcf77854 and 0xcf77860), with no store to the record.
  The pointer at +0xb0 of the first argument is copied into +0xa0 (`sd` at 0xcf77898), and the block at that pointer gets a halfword 0x4 at +0x2 (`sh` at 0xcf778a0), a byte 0x10 at +0x0 (`sb` at 0xcf778a8), the second argument at +0xc (`sw` at 0xcf778c8), the word 0 at +0x8 (`sw` at 0xcf778d0), the word 0x10003 at +0x4 (`sw` at 0xcf778d8) and a byte 0x10 at +0x1 (`sb` at 0xcf778dc); the `sb` at 0xcf778e0 then overwrites +0x0 with the saved `__glXSetupForCommand` result.
  `sd` at 0xcf778bc adds one to the doubleword at +0x98, and `sd` at 0xcf778c4 adds 0x10 to the pointer at +0xb0.
  When the `bne` at 0xcf77890 is taken (the pointer at +0xb8 below the pointer at +0xb0 plus 0x10, unsigned), the `jalr` at 0xcf77940 calls `_XFlush` and the pointer at +0xb0 is reloaded (`ld` at 0xcf7794c) before the block writes.
  The `jalr` at 0xcf77878 calls through the first entry of the table at +0x968 before the block is written, and the `jalr` at 0xcf778f4 calls through its second entry (+0x8) after the block writes, each only when the +0x968 pointer is nonzero, with a2 the incremented +0x98 doubleword and a3 the advanced +0xb0 pointer; the `jalr` at 0xcf77908 calls through the pointer at +0xd0 when that pointer is nonzero.
  On the two early returns (0xcf77830 and 0xcf77838) v0 still holds the `__glXSetupForCommand` result.
  Unknown: the routines behind the pointers at +0x968 (offsets +0x0 and +0x8) and at +0xd0; the contents of those words in the display would settle it.
  Evidence grade: inferred.
- `glXDestroyHyperpipeConfigSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83d18c (n32).
  Inferred: puts a 0x20-byte request into the display's output buffer, then calls `_XReply` to collect the answer, judging by the cursor in arg0+0x6c, `_XFlush` (0xd83d2ac) runs when the limit at arg0+0x70 would be passed and `_XReply` (`jalr` at 0xd83d250) is called after the write.
  It calls `__glXSetupForCommand` (`jalr` at 0xd83d1b8) and saves the result in the frame (`sd` at 0xd83d1c8, sp at entry minus 0x20); unlike the other build of this routine it does not test the result. When arg0+0x4d0 holds a table pointer (`beq` at 0xd83d1c4) it calls that table's entry +0 (`jalr` at 0xd83d1d0).
  If the limit at arg0+0x70 is below the cursor plus 0x20 (`bne` at 0xd83d1e8), `_XFlush` runs first. The current cursor goes into arg0+0x64 (0xd83d1f4); byte 0x10 goes to +0x0, halfword 8 to +0x2, 0x10011 to +0x4, byte 0x11 to +0x1, the word at arg0+0x84 to +0xc, entry `a1` to +0x10, and +0x0 is then overwritten with the low byte of the saved setup result (`sb` at 0xd83d234). The cursor word at arg0+0x6c advances by 0x20 and the counter at arg0+0x60 by 1 (0xd83d220, 0xd83d214).
  `_XReply` (`jalr` at 0xd83d250) gets `a1` set to the frame bottom (sp at entry minus 0x50), zeros in `a2` and `a3`, and the cursor from before the advance in `a5`.
  A zero result (`beq` at 0xd83d258) goes to the entry +4 call (`jalr` at 0xd83d2c8) and the arg0+0x7c call (`jalr` at 0xd83d2dc), each made only with a nonzero pointer (`beq` at 0xd83d2bc and 0xd83d2d4), and then returns 0x5c (0xd83d2ec).
  A nonzero result runs the same two calls at 0xd83d270 and 0xd83d284, guarded at 0xd83d264 and 0xd83d27c, and returns the word at frame offset 0x10 above the buffer start, loaded at 0xd83d260 after `_XReply` returned and returned in `v0` (return at 0xd83d2a0).
  Unknown: the routines behind the pointers at [arg0+0x4d0] (entries +0 and +4) and at arg0+0x7c, reached from 0xd83d1d0, 0xd83d270, 0xd83d284, 0xd83d2c8 and 0xd83d2dc, and so the device-side result of the request.
  Unknown: the origin of the word at frame offset 0x10 that becomes the return value; a note for `_XReply` would settle it.
  Evidence grade: inferred.
- `glXDestroyHyperpipeConfigSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8cbecc (n32).
  Inferred: writes a 0x20-byte request at the output-buffer cursor in arg0+0x6c and then blocks on the answer, since `_XFlush` (0xd8cbfec) runs when the limit at arg0+0x70 would be passed and `_XReply` (`jalr` at 0xd8cbf94) is called after the write.
  `__glXSetupForCommand` (`jalr` at 0xd8cbef4) runs first and its low byte is kept (`andi` result in `t2`, saved at 0xd8cbf0c on the call path). If the table pointer at arg0+0x4d0 is nonzero (`beq` at 0xd8cbf00), entry +0 of that table is called (`jalr` at 0xd8cbf10) with arg0 in `a0`, the table pointer in `a1` and the setup's low byte in `a6`.
  If the limit at arg0+0x70 is below the cursor plus 0x20 (`bne` at 0xd8cbf2c), `_XFlush` runs before the write. The cursor value is copied to arg0+0x64 (0xd8cbf34); byte 0x10 goes to +0x0, halfword 8 to +0x2, 0x10011 to +0x4, byte 0x11 to +0x1, the word at arg0+0x84 to +0xc, entry `a1` to +0x10, and +0x0 is then overwritten with the setup's low byte (0xd8cbf6c). The word at arg0+0x6c then grows by 0x20 and the word at arg0+0x60 by 1 (0xd8cbf60, 0xd8cbf54).
  `_XReply` is called with arg0, the frame bottom (sp at entry minus 0x60) in `a1`, and zeros in `a2` and `a3`.
  A zero result (`beq` at 0xd8cbf9c) goes to 0xd8cc000: the entry +4 call (`jalr` at 0xd8cc00c, guarded at 0xd8cc000) and the arg0+0x7c call (`jalr` at 0xd8cc020, guarded at 0xd8cc018) run only where their pointers are nonzero, and the routine returns 0x5c (0xd8cc030).
  A nonzero result runs the same two calls (`jalr` at 0xd8cbfb0 and 0xd8cbfc4, guarded at 0xd8cbfa4 and 0xd8cbfbc) and returns the word at frame offset 0x10 above the buffer start, loaded at 0xd8cbfa8 after `_XReply` returned and returned in `v0` (return at 0xd8cbfe0).
  Unknown: the routines behind the calls at 0xd8cbf10, 0xd8cbfb0, 0xd8cbfc4, 0xd8cc00c and 0xd8cc020, which the table pointers at arg0+0x4d0 and arg0+0x7c select, and so the device-side result of the request.
  Unknown: the reply field that ends up at frame offset 0x10 and is returned; settling it takes the code behind `_XReply`.
  Evidence grade: inferred.
- `glXDestroyHyperpipeConfigSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf8fccc (n64).
  Inferred: it fills a 0x20-byte request block at the pointer held at +0xb0 of the first argument and then waits on `_XReply`, since the routine calls `_XFlush` when that pointer plus 0x20 would pass the limit doubleword at +0xb8 and calls `_XReply` right after the block is filled.
  It first calls `__glXSetupForCommand` with its four argument registers (`jalr` at 0xcf8fcf4) and does not test the result; the result is saved in a frame slot (`sd` at 0xcf8fd0c) only around the optional call through the first word of the table at +0x968 (`jalr` at 0xcf8fd10, skipped when the +0x968 doubleword is zero).
  When the limit doubleword at +0xb8 is below the pointer plus 0x20, unsigned (`bne` at 0xcf8fd2c), `_XFlush` is called (`jalr` at 0xcf8fdec) and the pointer at +0xb0 is reloaded before the block is written.
  The pointer is copied to +0xa0 (`sd` at 0xcf8fd34); the block gets a halfword 0x8 at +0x2 (`sh` at 0xcf8fd3c), a byte 0x10 at +0x0 (`sb` at 0xcf8fd44), a byte 0x11 at +0x1 (`sb` at 0xcf8fd70), the word 0x10011 at +0x4 (`sw` at 0xcf8fd68), the word loaded from +0xe0 of the first argument at +0xc (`sw` at 0xcf8fd98) and the second argument at +0x10 (`sw` at 0xcf8fd8c); then the `sb` at 0xcf8fd74 overwrites +0x0 with the low byte of the saved `__glXSetupForCommand` result, which every path reloads from the frame slot or still holds in v0.
  The doubleword at +0x98 gets one added (`sd` at 0xcf8fd54) and the pointer at +0xb0 gets 0x20 added (`sd` at 0xcf8fd60).
  `_XReply` is then called (`jalr` at 0xcf8fd94) with a1 the frame base, a2 and a3 zero, a4 the word from +0xe0, a5 0x10011, a6 the block pointer and a7 0x11.
  A nonzero reply (fall-through of the `beq` at 0xcf8fd9c) runs the call through the second word of the +0x968 table (`jalr` at 0xcf8fdb0) and the call through the pointer at +0xd0 (`jalr` at 0xcf8fdc4), each only when the pointer is nonzero, and returns the word loaded from frame offset 0x10 (`lw` at 0xcf8fda8), which is the reply buffer passed to `_XReply`.
  A zero reply makes the same two optional calls (0xcf8fe0c and 0xcf8fe20) and returns the constant 0x5c (set at 0xcf8fe30).
  Unknown: the routines behind the pointers at +0x968 and +0xd0, and what field of the reply sits at frame offset 0x10; reading the display's pointer tables and the reply layout would settle it.
  Evidence grade: inferred.
- `glXGetVideoSyncSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd823e34 (o32).
  Inferred: the routine reads a video-sync value from the resource manager through an ioctl, since the linked
  ioctl row lists request 0x3fe (1022) in the resource-manager table with evidence "sent,table", and the only
  store outside the frame is a word written back to the caller's pointer in `a0` (the `sw` at 0xd823eb8).
  It loads the pointer T from fixed address 0x1014 (the `lw` at 0xd823e54) and the word V at T+0x114 (the `lw` at
  0xd823e58); when V is zero the `beq` at 0xd823e5c jumps to the epilogue and the routine returns 5 (the `addiu`
  at 0xd823e74 in the delay slot of the jump at 0xd823e70).
  Otherwise it tests the word at V+0xc4 (the `lw` at 0xd823e64 and the `bnel` at 0xd823e68); zero also gives the
  return of 5, and nonzero runs the ioctl path.
  On that path the word at V+0xcc is stored into the frame at entry sp-0xc (the `sw` at 0xd823e84), and `ioctl`
  is called (the `jalr` at 0xd823ea0) with the first argument taken from the word at T + 4W + 4, where W is the
  word at T+0x108 (the `lw` at 0xd823e8c and 0xd823e9c), the request 0x3fe, and the address of the frame word at
  entry sp-0xc.
  The ioctl result is not tested: the routine loads the frame word at entry sp-0x8 (the `lw` at 0xd823ea8),
  stores it to +0x0 of its first argument (the `sw` at 0xd823eb8) and returns 0.
  Inferred: that frame word at entry sp-0x8 sits directly after the word at sp-0xc whose address is the ioctl
  argument, and the routine writes nothing else to it, so the ioctl must be what fills it.
  Unknown: the layout of the buffer that the request 0x3fe takes and returns, including which word is the input
  and which the output; the handler for that request would settle it.
  Unknown: what the structures behind T and V hold, since the pointer at 0x1014 is stored by code outside this
  routine; the routine that stores that pointer would settle it.
  Evidence grade: inferred.
- `glXGetVideoSyncSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd824f64 (n32).
  Inferred: reads a video-sync value from the resource manager through an ioctl and stores one word through arg0, since the linked ioctl row for number 1022 (0x3fe) names a resource-manager video-sync handler.
  It loads the pointer at absolute 0x1014, then the pointer P at +0x114 from it (`lw` at 0xd824f64 and 0xd824f68), and P's word at +0xc4 (`lw` at 0xd824f88). It returns 5 (`v0` set at 0xd824f6c) without a call when P is zero or when that word is zero (`beq` at 0xd824f80 and 0xd824f8c); the pointer at 0x1014 itself is not tested.
  Otherwise it copies P's word at +0xcc into the frame word at sp-0x20 (`lw` at 0xd824f94, `sw` at 0xd824f98) and calls `ioctl` (`jalr` at 0xd824fbc) with 1022 as `a1`, the frame address sp-0x20 as `a2`, and as `a0` the word at +0x4 of table slot idx, where the table is the pointer at 0x1014 and idx is its word at +0x108 (`lw` at 0xd824f9c, 0xd824fa0 and 0xd824fc0, in the delay slot of the call).
  The ioctl's return value is not tested: the routine loads the frame word at sp-0x1c (`lw` at 0xd824fd4), stores it to arg0+0x0 in the delay slot of the return (`sw` at 0xd824fe0) and returns 0 (`v0` set at 0xd824fd0).
  Unknown: which words of the buffer at sp-0x20 the ioctl at 0xd824fbc fills, since the routine reads back only the word at sp-0x1c.
  Unknown: the handler behind ioctl number 0x3fe, which the bundle links by row but gives no reading for.
  Evidence grade: inferred.
- `glXGetVideoSyncSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8c2814 (o32).
  Inferred: it is a query helper that sends ioctl request 0x3fe on a device handle and passes one
  word back through the caller's pointer in `a0`, since that ioctl is its only call and the store to
  `a0` at 0xd8c2898 writes the result.
  The word at +0x114 of the pointer loaded from abs 0x1014 (`lw` at 0xd8c2838) must be nonzero
  (`beq` at 0xd8c283c), and so must the word at +0xc4 of that value (`lw` at 0xd8c2844, `bnel` at
  0xd8c2848); otherwise the routine returns 5 (`addiu` at 0xd8c2854).
  On the other path the word at +0xcc of that value is copied to sp-12 (`lw` at 0xd8c284c in the
  branch-likely delay slot, `sw` at 0xd8c2864), and ioctl is called with `a1` = 0x3fe, `a2` = sp-12
  and `a3` = 0x1000, with `a0` read from a four-byte table based at the pointer loaded from 0x1014:
  the index is the word at +0x108 of that pointer, and `a0` is the word at +0x4 of the selected
  entry (`lw` at 0xd8c286c and 0xd8c287c, `jalr` at 0xd8c2880).
  No branch tests the ioctl's return. The routine then loads the word at sp-0x8 (`lw` at 0xd8c2888),
  copies it to the caller's pointer (`sw` at 0xd8c2898) and sets `v0` to 0 (at 0xd8c2894).
  The word at sp-0x8 lies four bytes after sp-12, the start of the `a2` buffer passed to the ioctl
  (the routine filled that first word from +0xcc, `sw` at 0xd8c2864).
  Inferred: the value returned to the caller is the second word of that buffer as the ioctl left
  it, since nothing else in the routine stores to sp-0x8.
  Unknown: the device-side handling of ioctl 0x3fe, which the bundle does not contain; the
  resource-manager side would settle how it fills the second word.
  Unknown: the caller's handling of the value 5 returned on the early path at 0xd8c2854; the code of
  the callers would settle it.
  Evidence grade: inferred.
- `glXHyperpipeConfigSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83a758 (o32).
  Inferred: it appends one request block to the request buffer of the context at `a0` and then waits
  for a reply, flushing the buffer first when the block does not fit, since the block is written
  through the pointer loaded from +0x6c, the room check reads +0x70, and the routine calls `_XFlush`
  and `_XReply`.
  It returns 0x5b before the block is written when `a2` is zero or negative (`blez` at 0xd83a798),
  when `a3` is zero (`beq` at 0xd83a7a0), when `a2` is 0x21 or more (`slti` at 0xd83a7a4, `bne` at
  0xd83a7a8), or when `a1` is negative (`bgez` at 0xd83a7b8).
  When the word at +0x4d0 is nonzero it calls the entry at offset 0 of that table (`jalr` at
  0xd83a7f8); when it is zero the call is skipped and `a3` is loaded from +0x6c (`beql` at 0xd83a7e4).
  A room check compares the word at +0x70 with the pointer at +0x6c plus a size the routine computes
  from `a2` (`beql` at 0xd83a81c); when the block does not fit it calls `_XFlush` (`jalr` at
  0xd83a830), and the pointer is saved at +0x64 on both paths (`sw` at 0xd83a820 and 0xd83a848).
  The block then takes the halfword equal to the size shifted right by 2 (arithmetic) at +0x2 (`sh`
  at 0xd83a854), the byte 0x10 at +0x0 (`sb` at 0xd83a858), the byte 0x11 at +0x1 (`sb` at
  0xd83a884), the word 0x10010 at +0x4 (`sw` at 0xd83a888), the word at +0x84 of the context at +0xc
  (`sw` at 0xd83a89c), `a2` at +0x10 (`sw` at 0xd83a894) and `a1` at +0x14 (`sw` at 0xd83a8ac); the
  byte at +0x0 is then overwritten with the byte `__glXSetupForCommand` returned, saved at sp-0x2d
  (`sb` at 0xd83a88c), and the word at +0x6c advances by the size while the word at +0x60 goes up by
  one (`sw` at 0xd83a870 and 0xd83a874).
  Unless the size minus 0x20 is zero or negative (`blez` at 0xd83a8b0), the payload is copied
  bytewise from the buffer whose pointer was passed in `a3` to the block base plus 0x20 (`addiu` at
  0xd83a8a4; `lbu` and `sb` at 0xd83a8c8 and 0xd83a8dc, then the four-bytes-per-pass loop from
  0xd83a8f0 to 0xd83a91c); the first loop handles the low two bits of the length (the mask at 0xd83a8bc). Then `_XReply` runs with `a1` at sp-44 and zeros in `a2` and `a3` (`jalr` at
  0xd83a930). A zero result calls the entry at offset 4 of the table at +0x4d0 when that word is
  nonzero (`jalr` at 0xd83a958) and the address at +0x7c when nonzero (`jalr` at 0xd83a974), then
  returns 0x5b.
  A nonzero result branches to 0xd83a988 (`bne` at 0xd83a93c). There the word at sp-0x18 is stored
  through the pointer loaded from the caller's stack at entry +0x10 (`sw` at 0xd83a990). The word at
  sp-0x1c is compared with the saved `a2` (`bnel` at 0xd83a998), and when they are equal and the
  word at sp-0x18 is nonnegative (`bgezl` at 0xd83a9a0) the routine runs the same two calls via
  +0x4d0 and +0x7c and returns 0 (0xd83aa14 to 0xd83aa28); otherwise it runs the same two calls and returns 0x5b
  (0xd83a9e4).
  Inferred: the words at sp-0x18 and sp-0x1c are fields of the reply that `_XReply` fills at sp-44,
  since sp-44 is the buffer passed as `a1` and these slots lie inside it.
  Unknown: which reply fields sit at sp-0x18 and sp-0x1c; the layout of the reply, from the callers
  of this routine, would settle it.
  Evidence grade: inferred.
- `glXHyperpipeConfigSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83cecc (n32).
  Inferred: sends a variable-length request to the display's output buffer, with the data block a3 points to appended, and waits for the answer, since the cursor at arg0+0x6c advances by the record size, `_XFlush` (0xd83d134) runs when the limit at arg0+0x70 would be passed, and `_XReply` (`jalr` at 0xd83d050) is called after the copy.
  It calls `__glXSetupForCommand` (`jalr` at 0xd83cf08) and returns 0x5b at once when entry `a2` is zero or negative, when entry `a3` is zero, when entry `a2` is 0x21 or more, or when entry `a1` is negative (the branches at 0xd83cf10, 0xd83cf18, 0xd83cf20 and 0xd83cf28). Otherwise the setup result is saved at 0xd83cf38 and, if the table pointer at arg0+0x4d0 is nonzero (`beq` at 0xd83cf34), entry +0 of that table is called (`jalr` at 0xd83cf40).
  The data length is 92 times `a2` bytes: the shifts and subtractions at 0xd83cf50 to 0xd83cf64 compute it into `s0`. The request is that length plus 0x20 bytes. If the limit at arg0+0x70 is below the cursor plus that size (`bne` at 0xd83cf78), `_XFlush` runs first.
  The cursor value goes to arg0+0x64 (0xd83cf84). Into the record go byte 0x10 at +0x0 (0xd83cf8c), the request size shifted right by 2 as a halfword at +0x2 (0xd83cf98), 0x10010 at +0x4 (0xd83cfc4), byte 0x11 at +0x1 (0xd83cfcc), the word at arg0+0x84 at +0xc (0xd83cfec, delay slot), entry `a2` at +0x10 (0xd83cfe0) and entry `a1` at +0x14 (0xd83cfd8). Byte +0x0 is overwritten with the low byte of the setup result (`sb` at 0xd83cfd0). The cursor gains the request size and arg0+0x60 gains 1 (0xd83cfbc, 0xd83cfac).
  The data block is copied from the buffer at entry `a3` to record offset +0x20: one leading byte if `s0` is odd (`lbu` at 0xd83d000, `sb` at 0xd83d00c), then a loop of two bytes per pass (`lbu` at 0xd83d01c and 0xd83d02c, `sb` at 0xd83d024 and 0xd83d038) with both pointers stepping by 2 until the counter in `v0` reaches `s0` (`bne` at 0xd83d034). The copy is skipped when `s0` is not positive (`blez` at 0xd83cfe8).
  `_XReply` is then called (`jalr` at 0xd83d050) with arg0, the frame bottom in `a1`, and zeros in `a2` and `a3`. A zero result (`beq` at 0xd83d058) calls entry +4 of the arg0+0x4d0 table and the pointer at arg0+0x7c, each only when nonzero (0xd83d144 to 0xd83d168), and returns 0x5b (0xd83d178).
  With a nonzero result, the frame word at offset 0x14 is stored through entry `a4` (`lw` at 0xd83d060, `sw` at 0xd83d064), and the frame word at offset 0x10 is compared with entry `a2` (`bne` at 0xd83d06c). If they differ, or the word at offset 0x14 is negative (`bltz` at 0xd83d074), the same two guarded calls run and the routine returns 0x5b (0xd83d12c). If they match and the word is not negative, the two guarded calls run and it returns 0 (0xd83d0b4, return at 0xd83d0c0).
  Unknown: the routines behind the calls at 0xd83cf40, 0xd83d08c, 0xd83d0a0, 0xd83d0f8, 0xd83d10c, 0xd83d154 and 0xd83d168, which the pointers at arg0+0x4d0 and arg0+0x7c select, and so the device-side result of the request.
  Unknown: which reply fields `_XReply` places at frame offsets 0x10 and 0x14, since the bundle has no note for `_XReply`.
  Evidence grade: inferred.
- `glXHyperpipeConfigSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2171af0 (n64).
  Packs the caller's byte array (a3, with a count in a2) into a request block in the first argument's buffer at +0xb0, waits for a reply with `_XReply`, and stores one reply word through the pointer in a4.
  It calls `__glXSetupForCommand` with its four arguments first (`jalr` at 0x2171b2c), then returns 0x5b before writing anything when the count is zero or negative (`blez` at 0x2171b34), when a3 is zero (`beq` at 0x2171b3c), when the count is 0x21 or more (`beq` at 0x2171b44), or when a1 is negative (`bltz` at 0x2171b4c).
  The setup result is kept in a frame slot (`sd` at 0x2171b5c); if the doubleword at +0x968 of the first argument is nonzero, a call goes through the first word of the table it points to (`jalr` at 0x2171b64).
  The block size is the count scaled by a fixed shift-and-subtract sequence (0x2171b6c to 0x2171b7c) plus 0x20.
  When the limit doubleword at +0xb8 is below the pointer at +0xb0 plus that size, unsigned (`bne` at 0x2171b98), the size is saved, `_XFlush` is called (`jalr` at 0x2171d58), and the size and the +0xb0 pointer are reloaded.
  The pointer is then copied to +0xa0 (`sd` at 0x2171ba8) and the block gets the size shifted right by 2 as a halfword at +0x2 (`sh` at 0x2171bb0), bytes 0x10 and 0x11 at +0x0 and +0x1 (`sb` at 0x2171bb8 and 0x2171be8), the word 0x10010 at +0x4 (`sw` at 0x2171bdc), the word from +0xe0 of the first argument at +0xc (`sw` at 0x2171c08), a1 at +0x14 (`sw` at 0x2171bf0) and the count at +0x10 (`sw` at 0x2171bfc).
  The `sb` at 0x2171be0 then overwrites the byte at +0x0 with the low byte of the saved setup result, the `sd` at 0x2171bc8 adds one to the doubleword at +0x98, and the `sd` at 0x2171bd4 adds the size to the pointer at +0xb0.
  The array is copied to the block from +0x20 on, skipped when the size less 0x20 is zero or negative (`blez` at 0x2171c04); a first single-byte copy (`lbu` at 0x2171c1c, `sb` at 0x2171c28) runs when the low bit of that difference is set (`beq` at 0x2171c10), and the loop at 0x2171c40 to 0x2171c5c then moves two bytes per pass from the caller's array to the block until its counter, stepping by 2, equals the difference.
  `_XReply` is called with a1 the frame base and a2 and a3 zero (`jalr` at 0x2171c70).
  When it returns zero (`beq` at 0x2171c78) the routine makes the two optional calls through the second word of the +0x968 table and the pointer at +0xd0 (`jalr` at 0x2171d7c and 0x2171d90) and returns 0x5b.
  Otherwise the reply word at frame offset 0x14 is stored through the pointer from a4 (`sw` at 0x2171c84); if the reply word at frame offset 0x10 differs from the count, or the word at 0x14 is negative (`bne` at 0x2171c8c, `bltz` at 0x2171c94), the two optional calls at 0x2171d18 and 0x2171d2c run and it returns 0x5b, and otherwise those at 0x2171cac and 0x2171cc0 run and it returns 0x0.
  Unknown: the routines behind the pointers at +0x968 and +0xd0, and what the reply words at frame offsets 0x10 and 0x14 hold; the layout of the reply would settle it.
  Evidence grade: established.
- `glXHyperpipeConfigSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf8f99c (n64).
  Packs the caller's byte array (a3, with a count in a2) into a request block in the first argument's buffer at +0xb0, waits for a reply with `_XReply`, and stores one reply word through the pointer in a4.
  It calls `__glXSetupForCommand` with its four arguments first (`jalr` at 0xcf8f9d8), then returns 0x5b before writing anything when the count is zero or negative (`blez` at 0xcf8f9e0), when a3 is zero (`beq` at 0xcf8f9e8), when the count is 0x21 or more (`beq` at 0xcf8f9f0), or when a1 is negative (`bltz` at 0xcf8f9f8).
  If the doubleword at +0x968 of the first argument is nonzero, the setup result is saved in a frame slot (`sd` at 0xcf8fa10) around a call through the first word of the table it points to (`jalr` at 0xcf8fa14).
  The block size is the count scaled by a fixed shift-and-subtract sequence (0xcf8fa20 to 0xcf8fa30) plus 0x20.
  When the limit doubleword at +0xb8 is below the pointer at +0xb0 plus that size, unsigned (`bne` at 0xcf8fa4c), the size and the setup result are saved, `_XFlush` is called (`jalr` at 0xcf8fc40) and the pointer at +0xb0, the size and the setup result are reloaded.
  The pointer is then copied to +0xa0 (`sd` at 0xcf8fa54) and the block gets the size shifted right by 2 as a halfword at +0x2 (`sh` at 0xcf8fa5c), bytes 0x10 and 0x11 at +0x0 and +0x1 (`sb` at 0xcf8fa64 and 0xcf8fa90), the word 0x10010 at +0x4 (`sw` at 0xcf8fa88), the word from +0xe0 of the first argument at +0xc (`sw` at 0xcf8fab8), a1 at +0x14 (`sw` at 0xcf8faa0) and the count at +0x10 (`sw` at 0xcf8faac).
  The `sb` at 0xcf8fa94 then overwrites the byte at +0x0 with the low byte of the setup result, the `sd` at 0xcf8fa74 adds one to the doubleword at +0x98, and the `sd` at 0xcf8fa80 adds the size to the pointer at +0xb0.
  Unless the size is below 0x21 (`bne` at 0xcf8fab4 jumps to the `_XReply` call), the array is copied to the block from +0x20 on: first a byte loop (`lbu` at 0xcf8fad8, `sb` at 0xcf8fae4) for the low two bits of the size less 0x20 (`beq` at 0xcf8fac4, `bne` at 0xcf8fae0), then a loop of four bytes per pass (`lbu` at 0xcf8fb0c to 0xcf8fb2c, `sb` at 0xcf8fb10 to 0xcf8fb38) that runs only when that difference shifted right by 2 is nonzero (`beq` at 0xcf8fafc) and ends when its counter, stepping by 4, equals the difference (`bne` at 0xcf8fb34).
  `_XReply` is called with a1 the frame base and a2 and a3 zero (`jalr` at 0xcf8fb4c).
  When it returns zero (`beq` at 0xcf8fb54) the routine makes the two optional calls through the second word of the +0x968 table and the pointer at +0xd0 (`jalr` at 0xcf8fc68 and 0xcf8fc7c) and returns 0x5b.
  Otherwise the reply word at frame offset 0x14 is stored through the pointer from a4 (`sw` at 0xcf8fb60); if the reply word at frame offset 0x10 differs from the count, or the word at 0x14 is negative (`bne` at 0xcf8fb68, `bltz` at 0xcf8fb70), the two optional calls at 0xcf8fbf8 and 0xcf8fc0c run and it returns 0x5b, and otherwise those at 0xcf8fb88 and 0xcf8fb9c run and it returns 0x0.
  Unknown: the routines behind the pointers at +0x968 and +0xd0, and what the reply words at frame offsets 0x10 and 0x14 hold; the layout of the reply would settle it.
  Evidence grade: established.
- `glXJoinSwapGroupSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83c008 (n32).
  Inferred: writes a short 0x14-byte request into the display's output buffer and never reads an answer, going by the cursor at arg0+0x6c (advanced by 0x14) and the `_XFlush` call (0xd83c100) taken at 0xd83c068 when arg0+0x70 would be crossed.
  `__glXSetupForCommand` is called first with the entry arguments (`jalr` at 0xd83c038) and its result is saved in the frame (`sd` at 0xd83c048). When the table pointer at arg0+0x4d0 is nonzero (`beq` at 0xd83c044), slot +0x0 of that table is called (`jalr` at 0xd83c050) with arg0 in `a0`.
  If the limit at arg0+0x70 is below the cursor plus 0x14 (`bne` at 0xd83c068), `_XFlush` runs first and the cursor is reloaded in the delay slot of the branch at 0xd83c108. At 0xd83c078 the cursor is saved in arg0+0x64. Into the record at the cursor go halfword 5 at +0x2 (`sh` at 0xd83c080), byte 0x10 at +0x0 (`sb` at 0xd83c088) and +0x1 (`sb` at 0xd83c0b8), 0x1000b at +0x4 (`sw` at 0xd83c0b4), entry `a1` at +0xc (`sw` at 0xd83c0ac) and entry `a2` at +0x10 (`sw` at 0xd83c0a4). After the fields, arg0+0x60 is incremented and arg0+0x6c is moved on by 0x14 (`sw` at 0xd83c098 and 0xd83c0a0). Byte +0x0 is then overwritten with the low byte of the saved setup result (`sb` at 0xd83c0bc).
  The routine ends with two optional calls: slot +0x4 of the arg0+0x4d0 table (`jalr` at 0xd83c0d0, guarded at 0xd83c0c4) and the pointer at arg0+0x7c (`jalr` at 0xd83c0e4, guarded at 0xd83c0dc).
  Unknown: the targets of the table slots and of the arg0+0x7c pointer, so the device-side outcome of the request stays open until the stores that fill them are found.
  Unknown: what `v0` holds at the `jr ra` at 0xd83c0f8 when the arg0+0x7c pointer is zero; tracing `v0` from the slot +0x4 call settles it.
  Evidence grade: inferred.
- `glXJoinSwapGroupSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2170ca0 (n64).
  Appends a 0x14-byte block to the buffer whose write pointer is the word at +0xb0 of the first argument, and advances that pointer by 0x14 (`sd` at 0x2170d38).
  It calls `__glXSetupForCommand` on its four argument registers first (`jalr` at 0x2170cd0) and saves the result in a frame slot (`sd` at 0x2170ce0); if the doubleword at +0x968 is nonzero, a call goes through the first word of the table it points to (`jalr` at 0x2170ce8).
  When the limit doubleword at +0xb8 is below the pointer at +0xb0 plus 0x14, unsigned (`bne` at 0x2170d00), `_XFlush` is called first (`jalr` at 0x2170d98) and the pointer is reloaded.
  The block holds the halfword 0x5 at +0x2 (`sh` at 0x2170d18), the byte 0x10 at +0x1 (`sb` at 0x2170d50), the word 0x1000b at +0x4 (`sw` at 0x2170d4c), a1 at +0xc (`sw` at 0x2170d44) and a2 at +0x10 (`sw` at 0x2170d3c).
  The byte at +0x0 is first set to 0x10 (`sb` at 0x2170d20) and then overwritten by the `sb` at 0x2170d54 with the low byte of the saved setup result.
  The doubleword at +0x98 gets one added (`sd` at 0x2170d30), and the pointer at +0xa0 receives the block address from before the advance (`sd` at 0x2170d10).
  After the writes, a call goes through the second word of the +0x968 table (`jalr` at 0x2170d68) when that table pointer is nonzero (`beq` at 0x2170d5c), and a call goes through the pointer at +0xd0 (`jalr` at 0x2170d7c) when it is nonzero (`beq` at 0x2170d74).
  Unknown: the target of the table calls and of the +0xd0 pointer, which the bundle reaches only through registers; and the value in v0 at the return at 0x2170d90, which is whatever the last call left.
  Evidence grade: established.
- `glXJoinSwapGroupSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d85c0 (o32).
  Inferred: it appends one 0x14-byte request block to the request buffer of the context at `a0`,
  flushing the buffer first when the block does not fit, since the block is written through the
  pointer loaded from +0x6c, the room test compares +0x70 with that pointer plus 0x14, and the
  routine calls `_XFlush`.
  It calls the entry at offset 0 of the table whose pointer is at +0x4d0 when that word is nonzero
  (`jalr` at 0xd8d860c), calls `_XFlush` (`jalr` at 0xd8d8638) only when the word at +0x70 is below
  the pointer at +0x6c plus 0x14 (`beql` at 0xd8d8628), and saves that pointer at +0x64 on both paths
  (`sw` at 0xd8d862c and 0xd8d8648).
  The block gets the halfword 0x5 at +0x2 (`sh` at 0xd8d8654), then 0x10 at +0x0 (`sb` at
  0xd8d8658), 0x10 at +0x1 (`sb` at 0xd8d8680), the word 0x1000b at +0x4 (`sw` at 0xd8d8684), the
  entry `a1` at +0xc (`sw` at 0xd8d8690) and the entry `a2` at +0x10 (`sw` at 0xd8d8698); the byte
  at +0x0 is then overwritten with the byte `__glXSetupForCommand` returned, saved at sp-0x9 (`sb`
  at 0xd8d8688).
  The pointer at +0x6c advances by 0x14 and the word at +0x60 goes up by one (`sw` at 0xd8d8670 and
  0xd8d8674, both read-modify-write).
  When the table pointer at +0x4d0 is nonzero it calls the entry at offset 4 with `a1` = 0x10 (`jalr`
  at 0xd8d86b0), and when the word at +0x7c is nonzero it calls the address stored there (`jalr` at
  0xd8d86cc); the return value is that call's result, or 0 when the word at +0x7c is zero (`beql` at
  0xd8d86c4).
  Unknown: the handling of the block by the routines reached through the table at +0x4d0 and through
  the pointer at +0x7c; the code at those callees would settle it.
  Evidence grade: inferred.
- `glXJoinSwapGroupSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8cad24 (n32).
  Inferred: queues a fixed 0x14-byte request in the display's output buffer without waiting for an answer, since arg0+0x6c moves up by 0x14 and the `bne` at 0xd8cad90 diverts to `_XFlush` (0xd8cae30) when arg0+0x70 would be passed.
  It calls `__glXSetupForCommand` with the entry arguments (`jalr` at 0xd8cad50) and keeps the low 8 bits of the result in `a0` (at 0xd8cad5c). When the table pointer at arg0+0x4d0 is nonzero (`beq` at 0xd8cad60), slot +0x0 of that table is called with arg0 in `a0` and the table pointer in `a1` (`jalr` at 0xd8cad70); the kept byte is saved before that call and reloaded after it (0xd8cad6c, 0xd8cad78).
  The `sw` at 0xd8cad98 copies the cursor into arg0+0x64. Into the record at the cursor go byte 0x10 at +0x0 (`sb` at 0xd8cada0), halfword 5 at +0x2 (`sh` at 0xd8cada8), 0x1000b at +0x4 (`sw` at 0xd8cadd4), byte 0x10 at +0x1 (`sb` at 0xd8cadd8), entry `a1` at +0xc (`sw` at 0xd8cadcc) and entry `a2` at +0x10 (`sw` at 0xd8cade0). Byte +0x0 is overwritten with the kept low byte of the setup result (`sb` at 0xd8caddc). The counter at arg0+0x60 is bumped by 1 and the cursor by 0x14 (`sw` at 0xd8cadbc and 0xd8cadc4).
  When the limit test at 0xd8cad90 holds, `_XFlush` is called (`jalr` at 0xd8cae30) and the cursor is reloaded (`lw` at 0xd8cae38) before the stores.
  Once the stores are done, the second slot (+0x4) of the table behind arg0+0x4d0 runs (`jalr` at 0xd8cadf8, skipped by the `beq` at 0xd8cade8 on a zero pointer), followed by the function pointer at arg0+0x7c (`jalr` at 0xd8cae10, skipped by the `beq` at 0xd8cae08 on zero).
  Unknown: which code the table slots and the arg0+0x7c pointer reach, hence the device-side result of the request; whatever fills those fields of the display record would settle it.
  Unknown: the `v0` returned by the `jr ra` at 0xd8cae24 on the path where the arg0+0x7c pointer is zero; the bundle prints `?` for it, and a trace of `v0` from the slot +0x4 call settles it.
  Evidence grade: inferred.
- `glXQueryHyperpipeConfigSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83d300 (n32).
  Inferred: sends a 0x20-byte request through the display's output buffer, waits for the answer with `_XReply` (`jalr` at 0xd83d3d4) and hands back a heap block holding the reply data plus a count through the pointer in entry `a2`, since `_XFlush` (0xd83d520) runs when the limit at arg0+0x70 would be passed and the reply path calls `malloc` and `_XRead`.
  `__glXSetupForCommand` runs first (`jalr` at 0xd83d330) on the entry arguments and its result is saved in the frame (`sd` at 0xd83d344); the `sw` at 0xd83d338 then zeroes the word that entry `a2` points to, and slot +0x0 of the table at arg0+0x4d0 is called (`jalr` at 0xd83d34c) when that pointer is nonzero.
  The cursor at arg0+0x6c is stored to arg0+0x64 (`sw` at 0xd83d378). Into the record go halfword 8 at +0x2 (`sh` at 0xd83d380), byte 0x10 at +0x0 (`sb` at 0xd83d388), 0x1000f at +0x4 (`sw` at 0xd83d3ac), byte 0x11 at +0x1 (`sb` at 0xd83d3b4), entry `a1` at +0x10 (`sw` at 0xd83d3cc) and the word at arg0+0x84 at +0xc (`sw` at 0xd83d3d8, delay slot of the `_XReply` call). The `sb` at 0xd83d3b8 finally replaces byte +0x0 with the low byte of the saved setup result. arg0+0x6c moves up by 0x20 and arg0+0x60 by 1 (`sw` at 0xd83d3a4 and 0xd83d398).
  The `_XReply` call takes arg0, a1 = address of the frame bottom, and zero in `a2` and `a3`. A zero result (`beq` at 0xd83d3dc) goes to 0xd83d530: it zeroes the word at entry `a2`, calls slot +0x4 of the arg0+0x4d0 table and the pointer at arg0+0x7c when each is nonzero, and returns 0.
  With a nonzero result, the frame words at offsets 0x10 and 0xc are loaded (0xd83d3e0, 0xd83d3e4; the offset 0xc word is saved at 0xd83d3e8) and the offset 0x10 word, call it n, is stored through entry `a2` by the `sw` at 0xd83d3f0, the delay slot of the positive-count branch. If n is not positive, zero is stored through `a2` afterwards (0xd83d3f4), the two guarded calls run, and the routine returns 0.
  If n is positive, `malloc` is called (`jalr` at 0xd83d458) with a size computed from n by the shift and subtract steps at 0xd83d448 to 0xd83d45c (n shifted left 2, minus n, shifted left 3, minus n, then shifted left 2 in the delay slot). With a null block, `_XEatData` is called with arg0 and the saved offset 0xc word (`jalr` at 0xd83d470), zero is stored through `a2` (0xd83d478), the guarded calls run and the routine returns 0. With a block, `_XRead` is called with arg0, the block and the saved offset 0xc word (`jalr` at 0xd83d4d4), the guarded calls run, and the routine returns the block (reloaded from sp+0x28 at 0xd83d4fc and 0xd83d508; return at 0xd83d518).
  Inferred: the frame words at offsets 0xc and 0x10 are reply data written by `_XReply`, because it receives the frame bottom and no other store touches them.
  Unknown: the code at the table slots and the arg0+0x7c pointer, and what reply fields land at offsets 0xc and 0x10 (the content of those fields needs the code behind `_XReply`).
  Evidence grade: inferred.
- `glXQueryHyperpipeConfigSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d9914 (o32).
  Inferred: the routine runs a request-and-reply exchange over the context at `a0`; when `_XReply` returns
  nonzero it reads a payload into memory it allocates, because its calls are `_XReply`, `malloc`
  and `_XRead`, in that order.
  On entry, `a2` points at a word that is cleared (`sw` at 0xd8d9950); a nonzero word at +0x4d0 makes
  the routine call the entry at offset 0 of that table (`jalr` at 0xd8d9968), and `_XFlush` (`jalr` at
  0xd8d9994) runs unless the word at +0x70 is at least the pointer at +0x6c plus 0x20 (`beql` at
  0xd8d9984).
  The pointer loaded from +0x6c is where the block goes: 0x8 is a halfword at +0x2 (`sh` at 0xd8d99b0),
  0x10 and 0x11 are bytes at +0x0 and +0x1 (`sb` at 0xd8d99b4 and 0xd8d99e0), 0x1000f is a word at +0x4
  (`sw` at 0xd8d99e4), +0xc takes the word at +0x84 of the context (`sw` at 0xd8d99f8), and +0x10 takes
  `a1` (`sw` at 0xd8d9a08); the first byte is finally replaced by the result of `__glXSetupForCommand`, kept
  at sp-0x2d (`sb` at 0xd8d99e8), and the pointer at +0x6c advances by 0x20 while the word at +0x60
  goes up by one (`sw` at 0xd8d99cc and 0xd8d99d0).
  The reply is read by `_XReply` (`jalr` at 0xd8d9a10), handed `a1` = sp-44 and zeros in `a2` and `a3`;
  a zero result clears the word at `a2` (`sw` at 0xd8d9a24), calls the entry at offset 4 of the +0x4d0
  table if that pointer is nonzero (`jalr` at 0xd8d9a3c), calls the address at +0x7c if that is
  nonzero (`jalr` at 0xd8d9a58), and returns 0 (`or` at 0xd8d9a68).
  A nonzero result (`bne` at 0xd8d9a18) stores the word at sp-0x1c to the word at `a2` (`sw` at
  0xd8d9a7c); when that word is above zero (`bgtz` at 0xd8d9a78), a size built from it by shifts and
  subtractions goes to `malloc` (`jalr` at 0xd8d9ae8), and otherwise the word at `a2` is zeroed (`sw`
  at 0xd8d9a80) and the routine makes the same table calls as the zero result and returns 0.
  On a successful `malloc` (`bne` at 0xd8d9af8), `_XRead` is called with the malloc result and the
  length word at sp-0x34 (`jalr` at 0xd8d9b70), the table calls at 0xd8d9b90 and 0xd8d9bac run, each only when its
  pointer is nonzero, and the routine returns the pointer stored at sp-4 (`sw` at 0xd8d9b6c, reloaded
  at 0xd8d9ba8 and 0xd8d9bb8).
  On a zero `malloc` result, `_XEatData` is called with the same length word (`jalr` at
  0xd8d9b0c), the word at `a2` is zeroed (`sw` at 0xd8d9b1c), the table calls at 0xd8d9b34 and
  0xd8d9b50 run, and the routine returns 0 (`or` at 0xd8d9b60).
  No store in the routine writes the words at sp-0x1c and sp-0x20, and both fall within the buffer at
  sp-44 that `_XReply` receives as `a1` (0xd8d9a10); the word at sp-0x20 is copied to
  sp-0x34 (`sw` at 0xd8d9ad0) and used as the length by `_XRead` and `_XEatData`.
  Inferred: `_XReply` fills those two words, because they sit in the buffer handed to it.
  Unknown: the field names of the two reply words; the callers of this routine would settle them.
  Evidence grade: inferred.
- `glXQueryHyperpipeConfigSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf8fe44 (n64).
  Sends a 0x20-byte request through the first argument's buffer at +0xb0, waits for a reply with `_XReply`, stores a reply count through the pointer in a2, and returns a heap buffer filled from the reply data, or zero.
  It calls `__glXSetupForCommand` on its four argument registers (`jalr` at 0xcf8fe70), stores zero through a2 (`sw` at 0xcf8fe78), and, if the doubleword at +0x968 is nonzero, saves the setup result and makes a call through the first word of the table it points to (`jalr` at 0xcf8fe90).
  When the limit doubleword at +0xb8 is below the pointer at +0xb0 plus 0x20, unsigned (`bne` at 0xcf8feac), `_XFlush` is called first (`jalr` at 0xcf90068) and the pointer is reloaded.
  The pointer is copied to +0xa0 (`sd` at 0xcf8feb4); the block gets the halfword 0x8 at +0x2 (`sh` at 0xcf8febc), the word 0x1000f at +0x4 (`sw` at 0xcf8feec), the byte 0x11 at +0x1 (`sb` at 0xcf8fef4), a1 at +0x10 (`sw` at 0xcf8ff10) and the word loaded from +0xe0 of the first argument at +0xc (`sw` at 0xcf8ff1c, in the delay slot of the `_XReply` call).
  The byte at +0x0 is first set to 0x10 (`sb` at 0xcf8fec4) and then overwritten by the `sb` at 0xcf8fef8 with the low byte of the saved setup result; the `sd` at 0xcf8fed8 adds one to the doubleword at +0x98 and the `sd` at 0xcf8fee4 adds 0x20 to the pointer at +0xb0.
  `_XReply` is called with a1 the frame base and a2 and a3 zero (`jalr` at 0xcf8ff18); a zero return (`beq` at 0xcf8ff20) stores zero through a2 again (`sw` at 0xcf9007c), makes the two optional calls through the second word of the +0x968 table and the pointer at +0xd0 (`jalr` at 0xcf90090 and 0xcf900a4), and returns zero.
  Otherwise the reply word at frame offset 0x10 is stored through a2 (`sw` at 0xcf8ff34, in the delay slot of the `bgtz` at 0xcf8ff30), and the word at frame offset 0xc is kept in a frame slot.
  If the count is not positive, a2 is zeroed (`sw` at 0xcf8ff38), the two optional calls run (`jalr` at 0xcf8ff4c and 0xcf8ff60) and the routine returns zero.
  If it is positive, `malloc` is called with a size computed from the count by shifts and subtractions (`jalr` at 0xcf8ff9c); a null result calls `_XEatData` with the saved word at frame offset 0xc (`jalr` at 0xcf8ffb4), zeroes a2 (`sw` at 0xcf8ffbc), makes the two optional calls (0xcf8ffd0 and 0xcf8ffe4) and returns zero.
  A non-null result is passed to `_XRead` with the saved frame word as the length (`jalr` at 0xcf90014), the two optional calls run (0xcf9002c and 0xcf90040) and the routine returns the `malloc` result reloaded from its frame slot.
  Unknown: the routines behind the pointers at +0x968 and +0xd0, and what the reply words at frame offsets 0xc and 0x10 hold; the layout of the reply would settle it.
  Evidence grade: established.
- `glXQueryHyperpipeNetworkSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83a484 (o32).
  It acts on the context in arg0 and the output word at arg1, which it zeroes right after the setup
  call (the `sw` at 0xd83a4bc); it then writes fields through the pointer at +0x6c and calls `_XReply`
  on the context with a frame buffer at (entry - 0x60) + 0x34 (the `jalr` at 0xd83a574).
  Inferred: it is a request-and-reply query that returns a malloc-allocated array to the caller,
  since it sends a request block, calls `_XReply`, and returns the `malloc` pointer after `_XRead`.
  When the word at +0x4d0 is nonzero, the entry at offset 0 of the table it points to is called
  first (the `jalr` at 0xd83a4d4).
  Whether the word at +0x70 is below the word at +0x6c plus 0x10 (unsigned, the `beql` at 0xd83a4f0)
  decides if `_XFlush` on the context runs (the `jalr` at 0xd83a500): if not, the word at +0x6c is
  copied to +0x64 in the delay slot (the `sw` at 0xd83a4f4); if so, the flush comes first and the
  copy is at 0xd83a510.
  The fields written through that pointer are a halfword 4 at +2 (the `sh` at 0xd83a51c), bytes 0x10
  at +0 and 0x11 at +1 (the `sb`s at 0xd83a520 and 0xd83a54c), the word 0x1000e at +4 (the `sw` at
  0xd83a550), the setup byte at +0 (the `sb` at 0xd83a554, copied from the byte stored at entry -0x2d
  by the `sb` at 0xd83a4b8), and the word at +0x84 at +0xc (the `sw` at 0xd83a564); the pointer then
  advances by 0x10 and the word at +0x60 by 1 (the `sw`s at 0xd83a538 and 0xd83a53c).
  A zero `_XReply` result (the `bne` at 0xd83a57c falls through) calls the entry at offset 4 of the
  +0x4d0 table when that word is nonzero (the `jalr` at 0xd83a598), calls the address at +0x7c when
  that is nonzero (the `jalr` at 0xd83a5b4), zeroes the output word at arg1 (the `sw` at 0xd83a5cc)
  and returns 0; a nonzero result copies the word at entry -0x1c to that output word
  (the `sw` at 0xd83a5e0) and branches on it.
  For a word above zero and below 0x21 (signed; the `blez` at 0xd83a5dc falls through and the `bne` at
  0xd83a5e8 is taken), it calls `malloc` with a size built by shifts and adds from that word (the
  `jalr` at 0xd83a670), and the result is moved into `a1` (the `or` in the delay slot at 0xd83a684).
  For a word that is zero or negative (the `blez` at 0xd83a5dc taken) or 0x21 or more (the `bne` at
  0xd83a5e8 not taken), `_XEatData` is called with the word at entry -0x20 in its second and third
  arguments (the `jalr` at 0xd83a5fc), the same two table calls run (0xd83a614, 0xd83a638), the
  caller's arg1 word is zeroed (the `sw` at 0xd83a650) and the routine returns 0.
  A null result calls `_XEatData` with the word at entry -0x20 in its second and third arguments (the
  `jalr` at 0xd83a694), zeroes the caller's original arg1 word (the `sw` at 0xd83a6e8), and returns 0;
  a nonnull result calls `_XRead` on the context into that buffer with the word at entry -0x20 as its
  third argument (the `jalr` at 0xd83a6f8) and returns the buffer's address.
  No store in this routine writes the words at entry -0x1c and entry -0x20; both lie in the buffer
  that starts at entry -0x2c and goes to `_XReply` as `a1`.
  Inferred: the reply supplies both words, since they sit in that buffer.
  Unknown: the reply fields behind those two words; the callers would settle it.
  Unknown: the targets of the indirect calls through the words at +0x4d0 and +0x7c (the `jalr`s at
  0xd83a4d4, 0xd83a598, 0xd83a5b4, 0xd83a614, 0xd83a638, 0xd83a6b4, 0xd83a6d0, 0xd83a718 and
  0xd83a734), which no line of the bundle names; reading the pointers in a run settles them.
  Evidence grade: inferred.
- `glXQueryHyperpipeNetworkSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83cc58 (n32).
  Inferred: sends a 0x10-byte request through the display's output buffer, waits for the answer with `_XReply` (`jalr` at 0xd83cd20) and returns a heap block holding the reply data, with a count stored through entry `a1`, since `_XFlush` (0xd83ce70) runs when the limit at arg0+0x70 would be passed and the reply path calls `malloc` and `_XRead`.
  `__glXSetupForCommand` runs first (`jalr` at 0xd83cc84); its result is saved in the frame (`sd` at 0xd83cc98), the `sw` at 0xd83cc8c zeroes the word that entry `a1` points to, and slot +0x0 of the table at arg0+0x4d0 is called (`jalr` at 0xd83cca0) when that pointer is nonzero.
  The cursor at arg0+0x6c is stored to arg0+0x64 (`sw` at 0xd83ccc8) when the limit test at 0xd83ccb8 passes, after a `_XFlush` call if it does not. Into the record go halfword 4 at +0x2 (`sh` at 0xd83ccd0), byte 0x10 at +0x0 (`sb` at 0xd83ccd8), 0x1000e at +0x4 (`sw` at 0xd83ccfc), byte 0x11 at +0x1 (`sb` at 0xd83cd04) and the word at arg0+0x84 at +0xc (`sw` at 0xd83cd24, delay slot of the `_XReply` call). Byte +0x0 is rewritten last from the saved setup result, low byte only (`sb` at 0xd83cd0c). Then arg0+0x6c grows by 0x10 and arg0+0x60 by 1 (`sw` at 0xd83ccf4 and 0xd83cce8).
  `_XReply` is called with arg0, the address of the frame bottom as `a1`, and `a2` and `a3` both zero. A zero result (`beq` at 0xd83cd28) goes to 0xd83ce80: it calls slot +0x4 of the arg0+0x4d0 table and the pointer at arg0+0x7c when each is nonzero, zeroes the word at entry `a1` (`sw` at 0xd83cebc) and returns 0.
  With a nonzero result, the frame word at offset 0x10, call it n, is loaded at 0xd83cd2c and stored through entry `a1` by the `sw` at 0xd83cd38, the delay slot of the `blez`; the frame word at offset 0xc is loaded at 0xd83cd30. If n is between 1 and 32 (`blez` at 0xd83cd34, branch at 0xd83cd40 on n below 0x21), `malloc` is called (`jalr` at 0xd83cdbc) with a size computed from n by the shift and add steps at 0xd83cda8 to 0xd83cdc0 (n shifted left 2, plus n, shifted left 2, plus n, then shifted left 2 in the delay slot), the offset 0xc word being saved at sp+0x50 first (`sd` at 0xd83cdb4).
  If n is not in that range, `_XEatData` is called with arg0 and the offset 0xc word (`jalr` at 0xd83cd50), the two guarded calls run, zero is stored through `a1` (0xd83cd84) and the routine returns 0. A null `malloc` result takes the same `_XEatData` call (`jalr` at 0xd83cdd8), the guarded calls and the zero store (0xd83ce0c). A block result calls `_XRead` with arg0, the block and the offset 0xc word (`jalr` at 0xd83ce20), runs the guarded calls and returns the block (reloaded from sp+0x20 at 0xd83ce48 and 0xd83ce54; return at 0xd83ce68).
  Inferred: `_XReply` fills the frame words at offsets 0xc and 0x10, as it is handed the frame bottom and nothing else stores there.
  Unknown: where the table slots and the arg0+0x7c pointer lead, and the content of the two reply fields at offsets 0xc and 0x10; reading the code behind `_XReply` would settle the latter.
  Evidence grade: inferred.
- `glXQueryHyperpipeNetworkSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d91b8 (o32).
  Inferred: the routine reads a reply word over the context at `a0` and, for a value above zero and
  below 0x21, calls `_XRead` with memory returned by `malloc`, since the calls run `_XReply`, then
  `malloc`, then `_XRead` on the returned pointer.
  Entry clears the word at `a1` (`sw` at 0xd8d91f0), calls table entry 0 through the pointer at +0x4d0
  when that pointer is nonzero (`jalr` at 0xd8d9208), and calls `_XFlush` (`jalr` at 0xd8d9234) unless
  the word at +0x70 is at least the pointer at +0x6c plus 0x10 (`beql` at 0xd8d9224).
  A 0x10 block goes at the pointer from +0x6c: halfword 0x4 at +0x2 (`sh` at 0xd8d9250), bytes 0x10 and
  0x11 at +0x0 and +0x1 (`sb` at 0xd8d9254 and 0xd8d9280), the word 0x1000e at +0x4 (`sw` at
  0xd8d9284), and +0xc takes the word at +0x84 of the context (`sw` at 0xd8d9298); the byte at +0x0 ends
  up as the byte `__glXSetupForCommand` returned, saved at sp-0x2d (`sb` at 0xd8d9288), and the pointer
  at +0x6c advances by 0x10 while the word at +0x60 goes up by one (`sw` at 0xd8d926c and 0xd8d9270).
  `_XReply` (`jalr` at 0xd8d92a8) receives the sp-44 buffer as `a1` and zeros as `a2` and `a3`; a zero
  result instead calls table entry 4 when the pointer at +0x4d0 is nonzero (`jalr` at 0xd8d92cc), calls
  the address at +0x7c when that is nonzero (`jalr` at 0xd8d92e8), clears the word at `a1` (`sw` at
  0xd8d9300), and returns 0.
  A nonzero result stores the word at sp-0x1c to the word at `a1` (`sw` at 0xd8d9314) and branches on
  that word: when it is zero or negative (`blez` at 0xd8d9310), or 0x21 or more (`bne` at 0xd8d931c),
  `_XEatData` is called first with the word at sp-0x20 as both length arguments (`jalr` at
  0xd8d9330), then the table calls run, the word at `a1` is zeroed (`sw` at 0xd8d9384) and the
  routine returns 0.
  Otherwise `malloc` is called with a size built from that word by shifts and adds (`jalr` at
  0xd8d93a4); a nonzero allocation (`bne` at 0xd8d93b4) calls `_XRead` with it and the word at sp-0x34
  as the length (`jalr` at 0xd8d942c), runs the table calls, and returns the pointer stored at sp-4
  (`sw` at 0xd8d9428).
  A zero allocation calls `_XEatData` with the same length (`jalr` at 0xd8d93c8),
  runs the table calls, zeroes the word at `a1` (`sw` at 0xd8d941c) and returns 0.
  Both words sit within the sp-44 buffer given to `_XReply` as `a1` (0xd8d92a8) and the routine
  never stores to them; sp-0x20 is saved at sp-0x34 in the delay slot of the `jalr` at 0xd8d93a4 and
  serves as the length in the later calls.
  Inferred: the two words come from the reply, since the buffer passed to `_XReply` contains them.
  Unknown: which reply fields these are; the layout is not in the bundle, and the code that calls
  this routine would settle it.
  Evidence grade: inferred.
- `glXQueryHyperpipeNetworkSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf8f714 (n64).
  Sends a 0x10-byte request through the first argument's buffer at +0xb0, waits for a reply with `_XReply`, stores a reply count through the pointer in a1, and returns a heap buffer filled from the reply data, or zero.
  It calls `__glXSetupForCommand` on its four argument registers (`jalr` at 0xcf8f740), stores zero through a1 (`sw` at 0xcf8f748), keeps the setup result in s2 (`or` in the delay slot at 0xcf8f754), and, if the doubleword at +0x968 is nonzero, makes a call through the first word of the table it points to (`jalr` at 0xcf8f75c).
  When the limit doubleword at +0xb8 is below the pointer at +0xb0 plus 0x10, unsigned (`bne` at 0xcf8f774), `_XFlush` is called first (`jalr` at 0xcf8f940) and the pointer is reloaded.
  The pointer is copied to +0xa0 (`sd` at 0xcf8f77c) and the block gets the halfword 0x4 at +0x2 (`sh` at 0xcf8f784), the word 0x1000e at +0x4 (`sw` at 0xcf8f7b4), the byte 0x11 at +0x1 (`sb` at 0xcf8f7bc) and the word loaded from +0xe0 of the first argument at +0xc (`sw` at 0xcf8f7dc, in the delay slot of the `_XReply` call).
  The byte at +0x0 is first set to 0x10 (`sb` at 0xcf8f78c) and then overwritten with the low byte of the setup result (`sb` at 0xcf8f7c0); the `sd` at 0xcf8f7a0 adds one to the doubleword at +0x98 and the `sd` at 0xcf8f7ac adds 0x10 to the pointer at +0xb0.
  `_XReply` is called with a1 the frame base and a2 and a3 zero (`jalr` at 0xcf8f7d8).
  A zero return (`beq` at 0xcf8f7e0) makes the two optional calls through the second word of the +0x968 table and the pointer at +0xd0 (`jalr` at 0xcf8f960 and 0xcf8f974), stores zero through a1 (`sw` at 0xcf8f98c) and returns zero.
  Otherwise the reply word at frame offset 0x10 is stored through a1 (`sw` at 0xcf8f7f0) and the word at frame offset 0xc is kept.
  If that count is zero or negative, or 0x21 or more (`blez` at 0xcf8f7f4, `bne` at 0xcf8f7fc), `_XEatData` is called with the kept word (`jalr` at 0xcf8f808), the two optional calls run (0xcf8f820 and 0xcf8f834), a1 is zeroed again (`sw` at 0xcf8f84c) and the routine returns zero.
  Otherwise `malloc` is called with a size computed from the count by shifts and additions (`jalr` at 0xcf8f878); a null result calls `_XEatData` with the kept word (`jalr` at 0xcf8f894), makes the optional calls (0xcf8f8ac and 0xcf8f8c0), zeroes a1 (`sw` at 0xcf8f8d8) and returns zero.
  A non-null result is passed to `_XRead` with the kept word as the length (`jalr` at 0xcf8f8f0), the optional calls run (0xcf8f908 and 0xcf8f91c) and the routine returns the `malloc` result reloaded from its frame slot.
  Unknown: the routines behind the pointers at +0x968 and +0xd0, and what the reply words at frame offsets 0xc and 0x10 hold; the layout of the reply would settle it.
  Evidence grade: established.
- `glXQueryMaxSwapBarriersSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d8818 (o32).
  Inferred: it is a request-and-reply query that returns a flag and one reply word to the caller,
  since it appends a request block, calls `_XReply`, and stores a reply-buffer word through the
  pointer in `a2`.
  It acts on the context in arg0 and the caller's pointer in a2: after the setup call (the `jalr` at
  0xd8d8840), it writes fields through the pointer at +0x6c of the context, advances that pointer by
  0x10, and calls `_XReply` on the context with a frame buffer at (entry - 0x58) + 0x30 (the `jalr` at
  0xd8d8904).
  The `beql` at 0xd8d8880 compares the word at +0x70 with the word at +0x6c plus 0x10 (unsigned): when
  the first is at least the second it skips the flush and copies the word at +0x6c to +0x64 through its
  delay slot (the `sw` at 0xd8d8884); when it is below, `_XFlush` on the context (the `jalr` at
  0xd8d8890) runs before the same copy (the `sw` at 0xd8d88a0).
  The record's bytes are 0x10 and 0x11 at +0 and +1 (the `sb`s at 0xd8d88b0 and 0xd8d88dc), the
  halfword 4 at +2 (the `sh` at 0xd8d88ac), the word 0x1000d at +4 (the `sw` at 0xd8d88e0), the second
  argument at +0xc (the `sw` at 0xd8d88f4), and last the setup byte at +0 (the `sb` at 0xd8d88e4,
  copied from the byte stored at entry -0x29 by the `sb` at 0xd8d8848).
  A zero `_XReply` result (the `bne` at 0xd8d890c falls through) returns 0 without storing to the
  caller's pointer, after any indirect calls on the words at +0x4d0 and +0x7c; a nonzero result stores
  the frame word at entry -0x20 through the caller's pointer in a2 (the `sw` at 0xd8d89a0) and returns
  1 (the constant at 0xd8d899c).
  Nothing in this routine writes the frame word at entry -0x20, and it falls inside the buffer
  beginning at entry -0x28 that `_XReply` gets as `a1`.
  Inferred: the reply supplies that word, since it sits in that buffer.
  Unknown: the reply field behind that word; how a caller uses the stored value would settle it.
  Unknown: the destination of each call at 0xd8d8864, 0xd8d8928, 0xd8d8944, 0xd8d896c and 0xd8d8988,
  since the bundle gives only the pointer loads; reading the words at +0x4d0 and +0x7c in a run would
  resolve it.
  Evidence grade: inferred.
- `glXSelectEventSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd823d98 (n32).
  Appends a 24-byte (0x18) request record to the output buffer held in the structure passed in a0, filling it from its two stacked arguments.
  Inferred: the structure at a0 is the per-display state, because it first passes a0 to `__glXSetupForCommand` (`jalr` at 0xd823dc4), which the callee note says selects the display's current context.
  The low byte of that call's return is kept in a0 (masked with 0xff just after the call); when it is zero (`beq` at 0xd823dd0) the routine returns at once with the call's return value; otherwise the byte is saved to the stack at 0xd823de0 and, when the pointer at +0x4d0 (1232) is not zero, the routine calls through the word at offset 0 of the object that pointer names (`jalr` at 0xd823de8).
  It then reads the buffer cursor at +0x6c and the limit at +0x70; if the limit is below the cursor plus 0x18 (unsigned, `bne` at 0xd823e00) it calls `_XFlush` on a0 (`jalr` at 0xd823ea4), reloads the cursor and rechecks.
  With room available it stores the cursor to +0x64 (`sw` at 0xd823e10), adds 1 to the word at +0x60 (`sw` at 0xd823e30) and adds 0x18 to the cursor at +0x6c (`sw` at 0xd823e38).
  The record at the old cursor gets: byte 0x10 at +0x1 (`sb` at 0xd823e4c), halfword 6 at +0x2 (`sh` at 0xd823e18), word 0x10009 at +0x4 (`sw` at 0xd823e5c), argument a1 at +0xc (`sw` at 0xd823e48), 0x801f at +0x10 (`sw` at 0xd823e44) and argument a2 at +0x14 (`sw` at 0xd823e3c).
  Byte +0 is written twice: 0x10 at 0xd823e20, then the low byte kept from the `__glXSetupForCommand` return and saved at 0xd823de0 (`sb` at 0xd823e54).
  Afterwards, when the pointer at +0x4d0 is not zero, it calls through the word at +4 of that object (`jalr` at 0xd823e70) with a1 set to argument a2, a2 to 0x801f, a3 to argument a1, a5 to 0x10 and a7 to the incremented word at +0x60; then, when the word at +0x7c is not zero, it calls through that word (`jalr` at 0xd823e84) and returns.
  Unknown: the field layout of the 24-byte record, since no field table is linked.
  Unknown: which request fields the words 0x801f and 0x10009 fill in the record, since no ioctl or token row links to them.
  Evidence grade: inferred.
- `glXSelectEventSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x21587b0 (n64).
  Appends a 0x18-byte block to the buffer whose write pointer is the word at +0xb0 of the first argument and advances that pointer by 0x18 (`sd` at 0x2158850); no reply is read.
  It calls `__glXSetupForCommand` on its four argument registers (`jalr` at 0x21587dc); when the low byte of the result is zero (`beq` at 0x21587e8) it returns at once with that result still in v0 and writes nothing.
  Otherwise the result is saved in a frame slot (`sd` at 0x21587f8) and, if the doubleword at +0x968 is nonzero, a call goes through the first word of the table it points to (`jalr` at 0x2158800).
  When the limit doubleword at +0xb8 is below the pointer at +0xb0 plus 0x18, unsigned (`bne` at 0x2158818), `_XFlush` is called first (`jalr` at 0x21588bc) and the pointer is reloaded.
  The block gets the halfword 0x6 at +0x2 (`sh` at 0x2158830), the byte 0x10 at +0x1 (`sb` at 0x215886c), the word 0x10009 at +0x4 (`sw` at 0x2158868), the word 0x801f at +0x10 (`sw` at 0x2158860), a1 at +0xc (`sw` at 0x2158874) and a2 at +0x14 (`sw` at 0x2158854).
  The byte at +0x0 is first set to 0x10 (`sb` at 0x2158838) and then overwritten with the low byte of the saved setup result (`sb` at 0x2158870); the pointer at +0xa0 receives the block address from before the advance (`sd` at 0x2158828), and the doubleword at +0x98 gets one added (`sd` at 0x2158848).
  After the writes a call goes through the second word of the +0x968 table (`jalr` at 0x2158888) when that pointer is nonzero (`beq` at 0x215887c), and a call goes through the pointer at +0xd0 (`jalr` at 0x215889c) when it is nonzero (`beq` at 0x2158894).
  Unknown: the routines behind the table words and the +0xd0 pointer, which the bundle reaches only through registers; and the field boundaries inside the words 0x10009 at +0x4 and 0x801f at +0x10, since the datasheet excerpts carry no table for them.
  Evidence grade: established.
- `glXSelectEventSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8bf738 (o32).
  Inferred: it sends a fixed-size request block, with no reply read, since it only appends to the
  buffer through +0x6c, optionally flushes, and makes no call that waits for a reply.
  It acts on the context in arg0: once `__glXSetupForCommand` returns a nonzero value (the `jalr` at
  0xd8bf760), it writes fields through the pointer at +0x6c of that context and advances that pointer
  by 0x18 and adds one to the word at +0x60 (the `sw`s at 0xd8bf7ec and 0xd8bf7f0).
  A zero setup result returns at once with that zero (the `beq` at 0xd8bf76c).
  When the word at +0x4d0 is nonzero, the routine first calls through the word at +0 of that value
  (the `jalr` at 0xd8bf788).
  The flush `_XFlush` on the context (the `jalr` at 0xd8bf7b4) is made only on the path where the word
  at +0x70 is below the word at +0x6c plus 0x18 (unsigned, the `beql` at 0xd8bf7a4); the copy of the
  word at +0x6c into +0x64 happens on both paths, through the `sw` at 0xd8bf7a8 or 0xd8bf7c4.
  Bytes 0x10 at +0 and +1 come from the `sb`s at 0xd8bf7d4 and 0xd8bf7fc, the halfword 6 at +2 from the
  `sh` at 0xd8bf7d0, the word 0x10009 at +4 from the `sw` at 0xd8bf800, the word 0x801f at +0x10 from
  the `sw` at 0xd8bf810, and the second and third arguments at +0xc and +0x14 from the `sw`s at
  0xd8bf814 and 0xd8bf81c; the `sb` at 0xd8bf804 then writes the setup byte at +0 (the byte stored at
  entry -0x9 by the `sb` at 0xd8bf770).
  When the word at +0x4d0 is nonzero, the routine then calls through the word at +4 of that value with
  0x10 as its second argument (the `jalr` at 0xd8bf834); if the word at +0x7c is zero it returns that
  word (the `beql` at 0xd8bf848), and otherwise it calls through that word (the `jalr` at 0xd8bf850)
  and returns the v0 that call leaves.
  Unknown: the code behind the calls at 0xd8bf788, 0xd8bf834 and 0xd8bf850, which the bundle shows
  only as pointer loads; a trace of the words in +0x4d0 and +0x7c would settle it.
  Evidence grade: inferred.
- `glXSelectEventSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf76340 (n64).
  Appends a 0x18-byte block to the buffer whose write pointer is the word at +0xb0 of the first argument and advances that pointer by 0x18 (`sd` at 0xcf763d4); no reply is read.
  It calls `__glXSetupForCommand` on its four argument registers (`jalr` at 0xcf76368) and saves the result in a frame slot (`sd` at 0xcf76370); when the low byte of that result is zero (`beq` at 0xcf76378) it returns at once with v0 holding that masked byte, zero, and writes nothing.
  Otherwise, if the doubleword at +0x968 is nonzero, a call goes through the first word of the table it points to (`jalr` at 0xcf76390).
  When the limit doubleword at +0xb8 is below the pointer at +0xb0 plus 0x18, unsigned (`bne` at 0xcf763a8), `_XFlush` is called first (`jalr` at 0xcf7644c) and the pointer is reloaded.
  The block gets the halfword 0x6 at +0x2 (`sh` at 0xcf763b8), the byte 0x10 at +0x1 (`sb` at 0xcf763f4), the word 0x10009 at +0x4 (`sw` at 0xcf763f0), the word 0x801f at +0x10 (`sw` at 0xcf763fc), a1 at +0xc (`sw` at 0xcf763e8) and a2 at +0x14 (`sw` at 0xcf76408).
  The byte at +0x0 is first set to 0x10 (`sb` at 0xcf763c0) and then overwritten with the low byte of the saved setup result (`sb` at 0xcf76400); the pointer at +0xa0 receives the block address from before the advance (`sd` at 0xcf763b0), and the doubleword at +0x98 gets one added (`sd` at 0xcf763e0).
  After the writes a call goes through the second word of the +0x968 table (`jalr` at 0xcf7641c) when that pointer is nonzero (`beq` at 0xcf76410), and a call goes through the pointer at +0xd0 (`jalr` at 0xcf76430) when it is nonzero (`beq` at 0xcf76428).
  Unknown: the routines behind the table words and the +0xd0 pointer, which the bundle reaches only through registers; and the field boundaries inside the words 0x10009 at +0x4 and 0x801f at +0x10, since the datasheet excerpts carry no table for them.
  Evidence grade: established.
- `glXSwapIntervalSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd824f58 (o32).
  Inferred: the linked ioctl row for number 1006 (0x3ee) names a swap-interval request, so this
  routine is the client side of that request, reached through the pointer stored at absolute 0x1014.
  It returns 5 when the word at +0x114 of that pointer is zero (the `bne` at 0xd824f88 falls through
  to the `beq` at 0xd824f90), and returns 6 when the first argument is not positive (the `bgtzl` at
  0xd824f98 falls through to the `beq` at 0xd824fa0).
  With a positive first argument and a nonzero word at +0xc4 of the address at +0x114 (the `beql` at
  0xd824fac falls through), it calls ioctl with request 0x3ee (the `jalr` at 0xd824fe0) and returns
  0 (the `or` at 0xd824ff0 after the call); the first argument is the word at +4 of the table entry
  that the word at +0x108 indexes (the `lw` at 0xd824fe4), and the third is the address of a frame
  buffer whose first word is the word at +0xcc of that address (stored at 0xd824fc0) and whose
  second word is the routine's first argument (stored at 0xd824fc4).
  When the word at +0xc4 is zero, the routine loads the word at +0xd8 of that address as its context
  (the `lw` at 0xd824fb0), returns 5 if that is null (the `bne` at 0xd824ff8 falls through to the
  `beq` at 0xd825000), and otherwise carries on.
  Inferred: the committed note for `__glXSetupForCommand` says it selects the display's current
  context, so the `jalr` at 0xd825014, which passes that context and 0x1000, selects it before the routine uses it, and the byte it returns is kept in a frame slot (the
  `sb` at 0xd82501c).
  The word at +0x4d0 of the context decides whether an indirect call through the word at +0 of that
  value runs (the `beql` at 0xd825028 skips it when zero); the `beql` at 0xd825054 copies the word at
  +0x6c to +0x64 through its delay slot (the `sw` at 0xd825058) when the word at +0x70 is at least the
  word at +0x6c plus 0x10 (unsigned), and otherwise `_XFlush` on the context (the `jalr` at 0xd825064)
  runs first and the copy happens at 0xd825074.
  Then it writes through the pointer at +0x6c: a halfword 4 at +2 (the `sh` at 0xd825080), bytes 0x10
  at +0 and +1 (the `sb`s at 0xd825084 and 0xd8250a8), a word 0x10000 at +4 (the `sw` at 0xd8250ac),
  the setup byte at +0 (the `sb` at 0xd8250b0), the word at +0x3c of the address at +0x114 saved in
  the delay slot of the setup call, at +8 (the `sw` at 0xd8250b8), and the first argument at +0xc
  (the `sw` at 0xd8250c0); it then advances the word at +0x6c by 0x10 and the word at +0x60 by 1 (the
  `sw`s at 0xd82509c and 0xd8250a0), calls the entry at offset 4 of the +0x4d0 table with 0x10 as its second argument when that word is
  nonzero (the `jalr` at 0xd8250d8), calls the address at +0x7c when that is nonzero (the `jalr` at
  0xd8250f4), runs `XFlush` on the context (the `jalr` at 0xd825108), and
  returns 0 (the constant at 0xd825114).
  Unknown: the code the pointer values at +0x4d0 and +0x7c select for the calls at 0xd825038,
  0xd8250d8 and 0xd8250f4, since the bundle gives no name for it; the pointers read during a run
  would settle it.
  Evidence grade: inferred.
- `glXSwapIntervalSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8b42f8 (n32).
  Inferred: the table at abs 0x1014 is the one the callee note for `__glXSetupForCommand` names as the source of the display's current context, and the linked ioctl row gives request 0x3ee (1006) the resource-manager handler `RRM_SetSwapInterval`, so the routine works on a swap-interval request.
  It returns 5 when the entry at +0x114 of that table is zero (`beq` at 0xd8b431c), returns 6 when arg0 is zero or negative (`blez` at 0xd8b4324), and when the word at +0xc4 of the entry is not zero it calls ioctl with request 0x3ee (`jalr` at 0xd8b4364) and returns 0 (`jr ra` at 0xd8b437c).
  That ioctl call takes arg0 from the word at +0x4 of the table slot selected by the word at +0x108 of the table, and passes the frame at sp-80, which holds the word at +0xcc of the entry and arg0 (`sw` at 0xd8b4340 and 0xd8b433c).
  Otherwise, when the context pointer at +0xd8 of the entry is zero it returns 5 (`bne` at 0xd8b438c); when it is not zero it calls `__glXSetupForCommand` with that context, arg1, the word at +0x3c of the entry and arg3 (`jalr` at 0xd8b43b8), and masks the return to its low 8 bits (`andi` at 0xd8b43c8).
  If the word at +0x4d0 of the context is not zero, it calls through the word at offset 0 of that object (`jalr` at 0xd8b43d4); then, when the word at +0x70 is below the word at +0x6c plus 0x10 (unsigned), it calls `_XFlush` on the context first (`jalr` at 0xd8b44a8).
  The record at the pointer R held at +0x6c gets 0x10 at +0x0 (`sb` at 0xd8b4400), 4 at +0x2 (`sh` at 0xd8b4408), arg0 at +0xc (`sw` at 0xd8b4428), the word from +0x3c of the entry at +0x8 (`sw` at 0xd8b442c), 0x10000 at +0x4 (`sw` at 0xd8b4434) and 0x10 at +0x1 (`sb` at 0xd8b443c), and R is saved to +0x64 of the context (`sw` at 0xd8b43f8); the byte at +0x0 is then written with the low 8 bits of the setup return (`sb` at 0xd8b4438), and the context's +0x60 gets 1 added (`sw` at 0xd8b441c) and its +0x6c gets 0x10 added (`sw` at 0xd8b4424).
  If the word at +0x4d0 of the context is not zero, it calls through the word at +4 of that object with a1 0x10000 and a2 R (`jalr` at 0xd8b4450); then, if the word at +0x7c is not zero, it calls through that word (`jalr` at 0xd8b4464), and on every path that reaches the record it calls `XFlush` on the context (`jalr` at 0xd8b4470) and returns 0 (`jr ra` at 0xd8b448c).
  The byte stored at +0x0 by the `sb` at 0xd8b4438 is the same masked setup return on every path: it is saved to the frame by the `sd` at 0xd8b43d0 or 0xd8b44a4 and reloaded at 0xd8b43dc or 0xd8b44b8.
  At the call through +0x7c (`jalr` at 0xd8b4464), a1 is 0x10000 and a2 is R when the pointer at +0x4d0 is zero; when it is not zero they are whatever the call at 0xd8b4450 left.
  Unknown: which request fields the words 0x10000 and 0x10 fill in the record, since the linked ioctl row belongs to the other call and no field table is linked.
  Evidence grade: inferred.
- `glXSwapIntervalSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf77f34 (n64).
  Inferred: this is the swap-interval request path of the board's GL library, since the linked ioctl row for 0x3ee names a swap-interval handler, and it works through the pointer at abs 0x1028. Let P be the 8-byte word at abs 0x1028, Q the 8-byte word at P+0x118 (`ld` at 0xcf77f3c) and R the 8-byte word at Q+0x138 (`ld` at 0xcf77fc0); it returns 5 (`jr ra` at 0xcf780d8) when Q is zero (`beq` at 0xcf77f54) and 6 (`jr ra` at 0xcf78104) when the first argument is zero or less (`blez` at 0xcf77f5c). When the 4-byte word at Q+0x118 is nonzero (`lw` at 0xcf77f64), it copies the 4-byte word at Q+0x128 and the first argument into the first two words of its frame (`sw` at 0xcf77f78 and 0xcf77f74), calls `ioctl` with request 0x3ee and that frame as the third argument (`jalr` at 0xcf77f9c), and returns 0 (`jr ra` at 0xcf77fb4) whatever the call returns; the descriptor is the word at offset 4 of the table entry indexed by the 4-byte word at P+0x108 (`lw` at 0xcf77f80), with the index shifted left by 0x2 (`lw` at 0xcf77fa0).
  Inferred: when the word at Q+0x118 is zero and R is nonzero (`bne` at 0xcf77fc4), it calls `__glXSetupForCommand`, which the committed entry for that routine gives as selecting the display's current context and returning a single byte, with R, the a1 and a3 values as they arrived, and the 4-byte word at Q+0x68 (`lw` at 0xcf77fe4; `jalr` at 0xcf77ff0), keeping the return in the frame (`sd` at 0xcf78008); when R is zero it returns 5 (`jr ra` at 0xcf77fdc). If the 8-byte word E at R+0x968 (`ld` at 0xcf77ff8) is nonzero (`beq` at 0xcf77ffc), it calls the pointer at offset 0 of E with R as first argument (`jalr` at 0xcf7800c). Before the stores it calls `_XFlush` (`jalr` at 0xcf780e4) when the 8-byte word at R+0xb8 (`ld` at 0xcf7801c) is below D+0x10 (unsigned, `bne` at 0xcf78028), where D is the 8-byte word at R+0xb0 (`ld` at 0xcf78018); it then stores D into R+0xa0 (`sd` at 0xcf78030; on the flush path D is reloaded from R+0xb0 by the `ld` at 0xcf780ec first) and writes the record at D: the low byte of the saved return of `__glXSetupForCommand` at +0 (`sb` at 0xcf78070, which overwrites the 0x10 that the `sb` at 0xcf78038 wrote there), 0x10 at +1 (`sb` at 0xcf78074), the halfword 4 at +2 (`sh` at 0xcf78040), the word 0x10000 at +4 (`sw` at 0xcf7806c), the saved Q+0x68 word at +8 (`sw` at 0xcf78064) and the first argument at +0xc (`sw` at 0xcf78060), adds 1 to the word at R+0x98 (`sd` at 0xcf78054) and 0x10 to the word at R+0xb0 (`sd` at 0xcf7805c), calls the pointer at offset 8 of E when E is nonzero (`jalr` at 0xcf78088), calls the pointer at R+0xd0 when that word is nonzero (`jalr` at 0xcf7809c), and then always calls `XFlush` (`jalr` at 0xcf780a8) before returning 0 (`jr ra` at 0xcf780c4).
  Unknown: the second and third arguments of the call through the pointer at offset 0 of E (`jalr` at 0xcf7800c), which the bundle leaves as unresolved; the entry of the routine that pointer names would settle them.
  Unknown: the reply that request 0x3ee at 0xcf77f9c hands back to the driver layer, which the return at 0xcf77fb4 discards; the handler's own entry for that request would settle it.
  Evidence grade: inferred.
- `glXWaitVideoSyncSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x21599e8 (n64).
  Inferred: this is the video-sync wait request of the board's GL library, since the linked ioctl row for 0x3ff names a video-sync wait handler; it works through the pointer at abs 0x1028. Let P be the 8-byte word at abs 0x1028 and Q the 8-byte word at P+0x118 (`ld` at 0x21599f8); it returns 5 (`jr ra` at 0x2159a50) when Q is zero (`beq` at 0x2159a10) or the 4-byte word at Q+0x118 is zero (`beq` at 0x2159a1c), and 6 (`jr ra` at 0x2159a40) when the first argument is zero or less (`blez` at 0x2159a24) or the second argument is negative (`bltz` at 0x2159a2c). When the second argument is below the first, signed (`bne` at 0x2159a34), the request path runs; otherwise it returns 6 at 0x2159a40. The `sd` in the delay slot of that `bne` (0x2159a38) saves the pointer in a2 to frame +0x10 on both paths, and the request path copies the 4-byte word at Q+0x128 (`lw` at 0x2159a58) and the first and second arguments into the first three words of its frame (`sw` at 0x2159a64, 0x2159a60 and 0x2159a5c). It then calls `ioctl` with request 0x3ff and that frame as the third argument (`jalr` at 0x2159a88), with the descriptor being the word at offset 4 of the table entry indexed by the 4-byte word at P+0x108 (`lw` at 0x2159a6c and 0x2159a8c, index shifted left by 0x2). It then returns 0 (`jr ra` at 0x2159aa8) after writing the 4-byte word from frame +0xc through the pointer in a2 (`sw` at 0x2159aac in the return's delay slot, with the pointer reloaded from frame +0x10 at 0x2159a98).
  Unknown: the value that the request at 0x2159a88 yields, which the return at 0x2159aa8 replaces with 0; the handler's own entry for request 0x3ff would show it.
  Inferred: the word at frame +0xc lies inside the 16-byte block whose address the `ioctl` call receives as its third argument (`jalr` at 0x2159a88), and no store in this routine writes it, so the value handed back through the third argument pointer is the one the request leaves there.
  Evidence grade: inferred.
- `glXWaitVideoSyncSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8c30f0 (o32).
  Inferred: the linked ioctl row for number 1023 (0x3ff) names a video-sync wait, so this routine
  is the client side that issues that request through the pointer stored at absolute 0x1014.
  The `lw` at 0xd8c311c loads the word at +0x114 of that pointer, and the `lw` at 0xd8c3128 loads
  the word at +0xc4 of the address it holds.
  It returns 5 when that first word is zero (the `beq` at 0xd8c3120) or the second is zero (the
  `bne` at 0xd8c312c).
  It returns 6 when the first argument is not positive (the `blez` at 0xd8c313c), when the saved
  second argument is negative (the `bltz` at 0xd8c3144), or when that second argument is not below
  the first, signed (the `bnel` at 0xd8c314c).
  Otherwise the delay slot of that `bnel` loads the word at +0xcc of the same address (the `lw` at
  0xd8c3150), the `sw` at 0xd8c3168 stores it into a frame slot, and the `jalr` at 0xd8c318c calls
  ioctl with request 0x3ff, its first argument the word at +4 of the table entry at the pointer plus
  4 times the word at +0x108 (the `lw` at 0xd8c3190), and its third argument the address of a
  four-word frame buffer that starts at entry -0x14. The routine fills the first three words before
  the call: the word at +0xcc (the `sw` at 0xd8c3168), the first argument (the `sw` at 0xd8c3164) and
  the saved second argument (the `sw` at 0xd8c316c).
  After the call the `sw` at 0xd8c31a4 copies the frame word at entry -0x8 to the caller's pointer
  in a2, and the routine returns 0 whatever ioctl returned, since v0 is set to 0 at 0xd8c31a0.
  The frame word at entry -0x8 is the fourth word of that buffer, and no store in this routine
  writes it.
  Inferred: the value copied to the caller is the fourth word of the buffer as the ioctl left it,
  since the buffer is the third argument of the call.
  Unknown: the device-side result of request 0x3ff, which the handler for that request in the driver
  decides; the route is that handler's entry in the driver.
  Evidence grade: inferred.
- `gl_g_gversion` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec748f0 (o32).
  Fills the buffer at a0 with a string copied from a set environment variable or from the string
  held behind the global `gl_sstatep`; when both are absent it passes a0 on to `gversionIoctl` after
  the display calls below. Before any test it calls `__iglooInitializeVersion` at 0xec74910
  with a0 through a3 passed through unchanged, and no branch reads the value that call returns. The
  `getenv` call at 0xec74924 is passed the pointer loaded from 0xecdd500 (`lw` at 0xec74928); a
  non-zero result, whatever `gl_sstatep` holds, sends the routine to `strncpy` at 0xec7497c, which
  copies at most 0xb bytes of the value into a0, and then the `sb` at 0xec74990 (in the delay slot of
  the branch at 0xec7498c) writes a zero byte at a0+0xb before the routine returns 0 at 0xec74a08.
  Unknown: the variable name passed to `getenv`, which is the string at the pointer stored at
  0xecdd500; no string at that address is in the bundle, so reading the library's data there would
  settle it. With `getenv` returning zero and `gl_sstatep` non-zero (the `beq` at 0xec7493c falls
  through), `strcpy` at 0xec74958 copies the string at the word loaded from `gl_sstatep`+0x1c (`lw`
  at 0xec74950) plus 0x104 into a0, and the routine returns 0. With both zero, `XOpenDisplay` is
  called with a null name at 0xec749a0; a null result (`beq` at 0xec749ac) goes straight to the
  `gversionIoctl` call, while a non-null display calls `XDefaultScreen` at 0xec749bc, stores its
  result at sp+0x20 (`sw` at 0xec749cc), and calls `XCloseDisplay` at 0xec749d4 before that call.
  `gversionIoctl` is called at 0xec749f0 with a0 from the entry and a1 from sp+0x20, which is zero on
  the null-display path because the zero stored at 0xec74998 is not overwritten there; the routine
  returns 0 at 0xec74a08. Unknown: the content of `gversionIoctl` at 0xec74b14 and what it writes
  through a0, since no committed entry for it is in the bundle; reading that routine would settle it.
  Evidence grade: established.
- `glxBindSwapBarrierSGIX` in `usr/lib/X11/dyDDX/glx.so` at 0x2990830 (n32).
  Inferred: the routine works on a drawable and its swap-group record, and the ioctl requests it sends,
  0x3f5 (1013) and 0x3fb (1019), are the swap-group and swap-ready requests of the linked ioctl rows.
  It looks up the request id, the word at [a1+12], as a drawable with `LookupDrawable` (the `jalr` at
  0x2990888, with 0x69014 as the third argument). If that finds nothing it tries `LookupIDByType`
  against `__glXWindowRes` (the `jalr` at 0x29908b4); a hit replaces the drawable pointer with the
  word the result points at (the `lw` at 0x29908d4) and goes on to the type check. A miss calls the
  local routine at 0x298f2f0 (the `bgezall` at 0x29908f0, an unconditional call): a nonzero result
  returns 0 at once with no ioctl, a zero result stores the id at +0x18 of the object reached from
  the word at +0x2c of arg0 (the `sw` at 0x2990918) and returns the word at the symbol
  `__glXBadDrawable`. When the drawable's first byte is neither 0 nor 2 (the `lbu` at 0x2990934
  and 0x2990944, the `beq` at 0x299094c) the same bad-drawable exit is taken from the `sw` at 0x299095c.
  Otherwise the handle word is read from +0x64 of the object found by following the drawable's
  +0x10 word and then that word's +0x74 word (the `lw` at 0x2990978, 0x299097c, 0x2990a38), and the
  routine does a `LookupIDByType` against `__glXSwapGroupRes` (the `jalr` at 0x2990994) with the
  +0x74 word as a2. If that finds nothing, `Xalloc` allocates 4 bytes (the `jalr` at 0x29909b8), its
  first word is set to 0 (the `sw` at 0x29909cc), and `AddResource` registers it (the `jalr` at
  0x29909e4); if the add fails, `Xfree` releases the block and the routine returns 0xb (the `jalr`
  at 0x2990a00, the constant 0xb at 0x2990a08). If the first word of the group record is zero (the
  `lw` at 0x2990a1c, the `bne` at 0x2990a20), ioctl 0x3f5 is sent on that handle with a stack
  buffer holding the request id and a zero word (the `sw` at 0x2990a2c and 0x2990a30; the `jalr` at
  0x2990a48); on success that first word is set to 1 (the `sw` at 0x2990a78), and on failure the
  routine returns the word at `__glXBadDrawable`. Next, ioctl 0x3fb is sent (the `jalr` at
  0x2990ac8) with a buffer holding the request id and two more words, set to 0 and 0 when the word
  at [a1+16] is zero, and otherwise to that word minus 1 and 1 (the `sw` at 0x2990a98 and the `sw`
  at 0x2990aa0); a failed 0x3fb returns 2 when errno (the `lw` at 0x2990ae0) is 0x10 or 0x25 and
  returns 0 otherwise, and a successful one returns 0. Unknown: the content of the local routine at
  0x298f2f0, which has no note; route: a callee note for 0x298f2f0.
  Evidence grade: inferred.
- `glxJoinSwapGroupSGIX` in `usr/lib/X11/dyDDX/glx.so` at 0x29cddc0 (n32).
  Inferred: the two request ids at [a1+12] and [a1+16] are drawables whose swap-group records are set
  up on the device, because the ioctl 0x3f5 (1013) it sends is the swap-group request of the linked
  ioctl row, and its buffer holds both ids (the `sw` at 0x29ce1c4 and 0x29ce1cc). The first id is
  looked up as a drawable with `LookupDrawable` (the `jalr` at 0x29cde18) and, if that finds nothing,
  against `__glXWindowRes` with `LookupIDByType` (the `jalr` at 0x29cde44); a window hit replaces the
  drawable pointer with the word the result points at (the `lw` at 0x29cde64). If both lookups miss,
  the local routine at 0x298f2f0 is called with the first id (the `jalr` at 0x29cde80) and then with
  the second (the `jalr` at 0x29cdea0): a nonzero result from either returns 0 with no ioctl, and
  only when both return zero is the first id stored at +0x18 of the object reached from the word at
  +0x2c of arg0 (the `sw` at 0x29cdec4) and the word at `__glXBadDrawable` returned. A found first
  drawable must have a first byte of 0 or 2 (the `lbu` at 0x29cdee0, the `beq` at 0x29cdef8), else
  the first id is stored at +0x18 the same way (the `sw` at 0x29cdf08) and `__glXBadDrawable` is
  returned. The handle word is then read from +0x64 of the object reached by following the first
  drawable's +0x10 word and then that word's +0x74 word (the `lw` at 0x29cdf24, 0x29cdf28,
  0x29ce150), which is also a2 of the first swap-group lookup. The first id gets a swap-group
  record: `LookupIDByType` against `__glXSwapGroupRes` (the `jalr` at 0x29cdf40), and when that finds
  nothing `Xalloc` of 4 bytes (the `jalr` at 0x29cdf64), its first word set to 0 (the `sw` at
  0x29cdf78), and `AddResource` (the `jalr` at 0x29cdf90); an add failure frees the block with
  `Xfree` and the routine returns 0xb (the constant at 0x29cdfb4). When the second id is zero (the branch at
  0x29cdfc8) the second-id work is skipped. Otherwise the second id is looked up with `LookupDrawable`
  (the `jalr` at 0x29cdfdc); when that finds nothing, the window lookup at 0x29ce008 uses the first
  id, [a1+12], not the second, and a miss there stores the second id at +0x18 (the `sw` at
  0x29ce040) and returns `__glXBadDrawable`. A hit there is not stored where the type test looks, so
  the byte test at 0x29ce05c then reads through the still-zero second-drawable slot. The second drawable's
  first byte must be 0 or 2 (the `beq` at 0x29ce074), else the second id is stored at +0x18 (the
  `sw` at 0x29ce084) and `__glXBadDrawable` returned. The second id gets its own swap-group record
  the same way (the `jalr` at 0x29ce0ac, 0x29ce0d0 and 0x29ce0fc; 0xb at 0x29ce120). When the first
  word of that record is zero (the `lw` at 0x29ce134, the `bne` at 0x29ce138), ioctl 0x3f5 goes out
  with the words id2 and 0 at +0x30 and +0x34 (the stores at 0x29ce144 and 0x29ce148, the `jalr` at
  0x29ce160); on success that first word is set to 1 (the `sw` at 0x29ce190), and a failed ioctl
  returns the word at `__glXBadDrawable` instead. If the two ids are equal the routine returns 0
  (the `bne` at 0x29ce19c not taken). Otherwise it stores id1 and id2 at +0x30 and +0x34, picks the
  request 0x3f5 when [a1+16] is nonzero and 0x3f6 when it is zero (the `sw` at 0x29ce1f0 and
  0x29ce1e0), sends it (the `jalr` at 0x29ce208), reads errno after a failed ioctl (the `lw` at
  0x29ce220), then stores 1 when [a1+16] is nonzero and 0 otherwise into the first word of the first
  id's record (the `sw` at 0x29ce234), and returns 0 (the `sd` at 0x29ce238) whatever the ioctl
  returned. Unknown: the content of the local routine at 0x298f2f0 for its id argument, which has no
  note; and the request 0x3f6, since no linked row names it; route: a callee note for 0x298f2f0 and
  a linked ioctl row for 0x3f6.
  Evidence grade: inferred.
- `gr2_init` in `usr/gfx/gfxinfo` at 0x10007a20 (n32).
  Inferred: the routine loads two graphics microcode images, named by the strings "Loading HQ2
  ucode" and "Loading GE7 ucode" (0x10020698 and 0x100206d8), and hands each one to the device with
  ioctl 0x6c, which the linked row 108 gives as graphics init. It copies the directory from arg2 into
  the stack buffer at sp-512 with `strcpy` and appends "hq2.bin" (0x10027ae8) with `strcat`, opens the
  file with flags 0x800 (the `jalr` at 0x10007a9c), maps it with `mmap` using the frame word at 0x13c
  as the length (the `lw` at 0x10007ad8, the `jalr` at 0x10007adc, protection and flags 0x1), and
  closes the descriptor right after the map (the `jalr` at 0x10007aec). On a successful ioctl 0x6c it
  unmaps the image (the `jalr` at 0x10007b30); the record passed to the ioctl at sp-512+0x198 holds the
  word loaded from frame 0x138 and the map address (the `sw` at 0x10007b1c and 0x10007b00). A failed
  ioctl unmaps and logs a download-failed message (0x100206c0, the `jalr` at 0x10007d00) and returns -1;
  an open, fstat or mmap failure logs "%s: %m" with the path (0x10027af0, the `jalr` at 0x10007cb0,
  0x10007ccc or 0x10007c78) and returns -1, with the fstat failure logging first and then closing the descriptor (the `jalr` at 0x10007cd8). The
  same sequence then runs for "ge7.bin" (`strcpy` and `strcat` at 0x10007b44 and 0x10007b54, open at
  0x10007b84, ioctl 0x6c at 0x10007bfc), and the argument in arg3 only gates the two progress messages:
  a zero arg3 skips the HQ2 printf (the `beq` at 0x10007a70) and the GE7 printf (the `beq` at
  0x10007b5c). After the second unmap, a positive byte at arg1 +0x38 (the `lbu` at 0x10007c18, the
  `blez` at 0x10007c1c) makes the routine call `ev1_init` (the `jal` at 0x10007c28) with that byte as
  a4, logs "Video Initialization failed" (the `jalr` at 0x10007c40) when `ev1_init` returns nonzero,
  and in every success case returns 0. Inferred: the mmap length (the word at frame 0x13c) and the word at frame 0x138 passed in the ioctl record
  lie inside the buffer at sp-256 that `fstat` fills (the `jalr` at 0x10007ab8), so both come from
  the fstat result, not from the caller; the ioctl itself takes arg0 as its descriptor (the `jalr` at
  0x10007b18). Unknown: the content of `ev1_init` and its arguments a0 to a3, which the
  bundle leaves unset; the reply the device gives to ioctl 0x6c, which the bundle does not read; and
  the field of the arg1 structure at +0x38 that the byte comes from; route: a bundle for `ev1_init`
  at 0x10007a18, and the caller's arg1 structure.
  Evidence grade: inferred.
- `gversionIoctl` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec78af0 (n32).
  Opens `/dev/opengl` (string at 0xecd1bc8) with flags 0x800 (`jalr` at 0xec78b34), asks the driver
  about the board whose index is entry a1, and hands the answer to `match_gfx` and then to
  `makeGversionString` with entry a0. Before the open it zeroes the first 0x28 bytes at sp+0x0 and builds a
  three-word block at sp+0x28: entry a1, the pointer sp+0x0 (at sp+0x2c) and the length 0x28 (at
  sp+0x30). Inferred: the linked ioctl rows label requests 0x65 and 0x66 as `graphics init`. Ioctl 0x65
  (`jalr` at 0xec78b50, third argument 0) ends the routine's work when its result is zero or negative
  (`blez` at 0xec78b58), and ioctl 0x66 with the block (`jalr` at 0xec78b68) does the same on a
  negative result (`bltz` at 0xec78b70); both go to 0xec78bf0, which closes the descriptor
  (`jalr` at 0xec78bfc) when the open succeeded (`bltz` on s0) and returns, so
  `makeGversionString` is not reached. A failed open returns the negative result straight away
  (`bltz` at 0xec78b3c). After a good 0x66, `uname` fills sp+0x38 (`jalr` at 0xec78b78) and `strcmp`
  compares the string at sp+0x0 with the strings that the words at 0xecdefc4, 0xecdefc8 and 0xecdefcc
  point to (`jalr` at 0xec78b88, 0xec78ba0, 0xec78bb4); a match with any of them goes to the block at
  0xec78c18, where `match_gfx` is called on the word at 0xecdefc4 (the `bgezall` at 0xec78c1c tests the
  zero register, so it is an unconditional call). With no match, `match_gfx` is called on sp+0x0
  instead (`bgezall` at 0xec78bcc, also unconditional) and its result goes to t1. In the match block
  the result is saved at sp+0xd48, `__iglooMalloc` is called with the word at sp+0x24 (`jalr` at
  0xec78c2c), and a null return skips to 0xec78bd8 with that saved result. Otherwise the block at
  sp+0x28 is rewritten with entry a1, the allocated pointer at sp+0x2c and the word at sp+0x24 at
  sp+0x30, and ioctl 0x66 is issued again (`jalr` at 0xec78c64); a negative result skips to
  0xec78bd8. On success the byte at offset 0x2d of the allocation is read (`lbu` at 0xec78c78): when it
  is non-zero the routine skips to 0xec78bd8, and when it is zero `match_gfx` is called on the word at
  0xecdefd0 (`bgezall` at 0xec78c88, unconditional) and its result replaces t1. The block at
  0xec78bd8 calls `makeGversionString` (`bgezall` at 0xec78be8, unconditional) with entry a0, the word
  at offset 8 of t1 and the address sp+0x23a, then returns through the close check. Unknown: the value
  in v0 at the return at 0xec78c0c, which is the `close` or `makeGversionString` result, or the failed
  open result, depending on the path; the content of the reply to ioctls 0x65 and 0x66, since the
  bundle has no handler for them.
  Evidence grade: inferred.
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
- `irixKernInit` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10124250 (n32).
  Inferred: this is the X server's set-up of one graphics board by index (entry a1), because it opens
  `/dev/opengl` and `/dev/gfx`, runs ioctls 0x67, 0x3e8, 0x3ea and 0x6f on them, and logs `Xsgi:`
  messages on failure. It compares the word at 0x102cc0dc with `serverGeneration` (`bne` at
  0x10124288); on a mismatch it copies the generation into 0x102cc0dc (the `sw` at 0x10124310, in the
  delay slot of the call to `AllocateScreenPrivateIndex`) and returns 0 if that call's result is negative
  (`bgez` at 0x10124314). A bit `1 << a1` in the word at 0x102d0bfc marks a board already set up: when
  it is set (`beq` at 0x101242a8 falls through) the routine loads four words from the per-board table
  at 0x102d0bb0, at +0x50, +0x90, +0xd0 and +0x110 past 4 times a1, stores them through the output
  pointers a4, a3, a5 and a6 respectively, and returns 1 without touching the device. When the bit is
  clear it ORs it in (`sw` at 0x1012434c, in the delay slot of the `open` of `/dev/opengl` with flags
  0x802 at 0x10124348), so the mark is set even if that open fails; a negative result (`bltz` at
  0x10124350) logs `Xsgi: open of %s failed: %s` and returns 0. Otherwise the descriptor is kept at
  sp+0x38 and `fcntl` is called on it with 0x2 and 0x5 (`jalr` at 0x10124364). It writes the board
  index at sp+0x0 and at sp+0x4 the base address: entry a2, or when a2 is zero the word at 0x102cc0d4
  (`RRMBOARDBASE`), plus a1 times the word at 0x102cc0d8 (`RRMBOARDSIZE`) (`sw`
  at 0x101243a0). It sends that two-word block with ioctl 0x67 on the `/dev/opengl` descriptor (`jalr`
  at 0x1012439c); a -1 result logs the failure string at 0x1028ea18, then a
  second `ErrorF` with the two block words (string 0x1028ea48), and returns 0. It then opens `/dev/gfx`
  with flags 0x802 (`jalr` at 0x101243c4; failure logs `Xsgi: /dev/gfx open failed: %s` and returns 0)
  and calls `fcntl` on it with 0x2 and 0x5. Ioctl 0x3e8 on the `/dev/opengl` descriptor (`jalr` at
  0x10124400) sends a block at sp+0x8 holding -1 and 0; a -1 result logs `Xsgi: rendering node open
  failed: %s` and returns 0, else its result is kept at sp+0x28. After a `getpagesize` call
  (0x10124418), ioctl 0x3ea (`jalr` at 0x10124434) sends that result at sp+0x10; -1 logs `rendering
  node bind  failed` and returns 0. `sprintf` then formats `:%s.%d` from the word at `display`
  and entry a0 into sp+0x18 (`jalr` at 0x10124464), and ioctl 0x6f sends that string (`jalr` at
  0x10124478); a -1 result logs the string at 0x1028eaf8 with the board index and continues rather than
  returning. The common tail calls `shmiqLink` with the `/dev/gfx` descriptor, entry a0, the routine at
  0x101e9ff0 (`rrmEvent`) and 0 (`jal` at 0x10124498), stores its result, the `/dev/opengl` descriptor,
  the ioctl 0x3e8 result and the sp+0x4 address into the table at +0x50, +0x90, +0xd0 and +0x110
  (`sw` at 0x101244bc to 0x101244d4), writes the same four values through a4, a3, a5 and a6, and
  returns 1. Unknown: the device-side result of ioctls 0x67, 0x3e8, 0x3ea and 0x6f, and the handling by
  `shmiqLink` of the `/dev/gfx` descriptor, since the bundle has no handler for those requests and no
  committed entry for `shmiqLink`; a capture of those requests or the kernel-side handlers would settle
  them.
  Evidence grade: inferred.
- `isNotProxy` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2166f68 (n64).
  Inferred: this is a graphics-init probe of '/dev/opengl' that runs when the signed word at arg0+0x40 is below 0x40, since the string at 0x2178560 is that path and the linked ioctl rows for 0x65 and 0x66 tag their requests as graphics init with no handler named. Below 0x40 (`bne` at 0x2166f7c jumps), the routine opens the path with flags 0x802 (`jalr` at 0x2166fa0), and a failed open (`bltz` at 0x2166fa8) returns 0 from 0x21670b4; 0x40 or more falls through to a return of 0 at the shared return 0x2166f88. fcntl follows (`jalr` at 0x2166fbc) with 0x2 and 0x5 as its second and third arguments, and a negative answer (`bltz` at 0x2166fc4) closes the descriptor (`jalr` at 0x21670cc) before 0 comes back through 0x2166f88 (`beq` at 0x21670d8). Request 0x65 (`jalr` at 0x2166fd8) passes zero as its third argument, and a result of 0 or less (`blez` at 0x2166fe0) closes the descriptor (`jalr` at 0x21670f8) and returns 0 (`beq` at 0x2167104). The `bne` at 0x2166ff4 compares the word at arg0+0x40 with that result (signed); when the word is not below, the descriptor is closed and 0 returns (`jalr` at 0x2166ffc, return at 0x216700c), and when it is below, request 0x66 (`jalr` at 0x2167034) runs on a request block at the frame base that holds the word at arg0+0x40 at +0 (`sw` at 0x2167038), the address of frame +0x18 at +8 (`sd` at 0x2167024) and 0x28 at +0x10 (`sw` at 0x2167018), and a negative result closes the descriptor (`jalr` at 0x21670e4) and returns 0 (`beq` at 0x21670f0). After a non-negative request 0x66 the descriptor is closed (`jalr` at 0x2167044) and strchr searches the string at the pointer found at offset 0xd8 from the 8-byte word at arg0+0x198 for 0x3a (`jalr` at 0x2167058; `sd` at 0x2166f80 saves that word to frame +0x40), with a nil result returning 0 (`beq` at 0x2167064). The byte at the pointer strchr returned is compared with frame +0x28 (`lbu` at 0x216706c and 0x2167070, `bne` at 0x2167074, a mismatch returning 0 at 0x21670a4); the bytes after it are then compared one per pass with frame bytes read from frame +0x18 with displacement 0x11 (`lbu` at 0x216708c and 0x2167090, `beq` at 0x2167098), and a '.' (0x2e) or the end of the string sets the return to 1 (`addiu` at 0x21670c8).
  Unknown: which frame bytes from +0x18 plus 0x11 on carry the reply to request 0x66, since the bundle has no reply layout for it; the handler's entry for 0x66 would settle it.
  Evidence grade: inferred.
- `isNotProxy` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf853e8 (n64).
  Inferred: the routine runs a graphics-init check on a device node when the signed word at arg0+0x40 is below 0x40, since the string at 0xcfa4538 is the path '/dev/opengl' and the linked ioctl rows for 0x65 and 0x66 both tag their requests as graphics init without naming a handler. The word at arg0+0x40 gates everything: 0x40 or more (the `bne` at 0xcf853fc falls through) returns 0 from the return at 0xcf85408, and anything lower goes on to open '/dev/opengl' with flags 0x802 (`jalr` at 0xcf85420), where a failed open (`bltz` at 0xcf85430) returns 0 from the return at 0xcf85538. Next is fcntl (`jalr` at 0xcf85444) with 0x2 and 0x5 as its second and third arguments; a negative answer (`bltz` at 0xcf8544c) makes the routine close the descriptor (`jalr` at 0xcf8555c) and return 0 at 0xcf8556c. The ioctl 0x65 call (`jalr` at 0xcf8545c) takes zero as its third argument, and a result of 0 or less (`blez` at 0xcf85464) ends with a close (`jalr` at 0xcf85594) and a return of 0 at 0xcf855a4. When the word at arg0+0x40 is not below that ioctl result (signed, `bne` at 0xcf85474), the descriptor is closed (`jalr` at 0xcf85480) and 0 returns from 0xcf85490; when it is below, ioctl 0x66 runs (`jalr` at 0xcf854b4) on a request block at the frame base that holds the word at arg0+0x40 at +0 (`sw` at 0xcf854b8), the address of frame +0x18 at +8 (`sd` at 0xcf854a4) and 0x28 at +0x10 (`sw` at 0xcf85498), and a negative result closes the descriptor and returns 0 at 0xcf85588 (`bltz` at 0xcf854bc). When that ioctl result is not negative, the descriptor is closed (`jalr` at 0xcf854c4) and strchr is called with 0x3a on the string at the pointer found at offset 0xd8 from the 8-byte word at arg0+0x198 (`jalr` at 0xcf854d8; that word is saved to frame +0x40 by the `sd` at 0xcf85400), and a nil result returns 0 at 0xcf85544 (`beq` at 0xcf854e0). The byte at the pointer strchr returned must equal the byte at frame +0x28 (`lbu` at 0xcf854e8 and 0xcf854ec, `bne` at 0xcf854f0, with a mismatch returning 0 at 0xcf8552c), and the bytes after it are then compared one per pass with frame bytes read from frame +0x18 with displacement 0x11 (`lbu` at 0xcf85518, `beq` at 0xcf85520), until a '.' (0x2e) or the end of the string, which returns 1 at 0xcf85550 (`beq` at 0xcf85504 and 0xcf8550c); a pair of unequal bytes returns 0 at 0xcf8552c.
  Unknown: the reply bytes in the frame that request 0x66 fills, which the frame-byte reads above compare against, since the bundle has no reply layout for that request; the handler's own entry for 0x66 would settle it.
  Evidence grade: inferred.
- `konasetmon` in `usr/gfx/setmon` at 0x1000a9c4 (n32).
  Does not touch the device registers or issue an ioctl itself; it changes the video format combination
  of a pipe through X library calls, and its only direct device-side effects are the `close` of `gfxfd`
  at 0x1000ad78 and the store to `Xvc_sa_pipenum` in that call's delay slot.
  Inferred: the `XSGIvc` call names and the string at 0x10038be8, which says the X Window System must be
  running to change combinations on the fly, place the routine in the X server's video-combination control.
  The argument name is copied with `strcpy` at 0x1000aa18 and given the suffix `.cmb` (string at
  0x10042040) by `strcat` at 0x1000aa4c, unless its last four characters already match it (`strcmp` at
  0x1000aa38; a name shorter than four characters skips the compare, `bne` at 0x1000aa24).
  It converts the global `pipenum` with `pipenumToString` at 0x1000aa70 and opens an X display for that
  name with `timeoutXOpenDisplay` at 0x1000aa84; a zero from either call (`beq` at 0x1000aa78 or
  0x1000aa8c) leads to a call of an unnamed routine at 0x1000be44 (`jal` at 0x1000ab38) with `pipenum`.
  A nonzero return from that routine prints the string at 0x10038b20 and exits with -1 (0x1000ab60); a zero
  return goes to the standalone path: `close` of `gfxfd` with the current value of `pipenum` stored to
  `Xvc_sa_pipenum` in its delay slot (0x1000ad60 to 0x1000ad7c), then
  `saXSGIvcListVideoFormatCombinations` (0x1000ad9c) with 0x64 as a3.
  With a display it calls `XSynchronize` with 1 (0x1000aaa0), installs an error handler at 0x1000a1f8
  (0x1000aabc) and calls `XSGIvcListVideoFormatCombinations` (0x1000aad8) with the screen index at
  display +0x84, the name buffer, 1 as a3 and the address of the frame base word as a4, then `XFree`
  on its result (0x1000aae4). The frame base word is cleared at entry (`sw zero` at 0x1000a9c8) and
  is read back at 0x1000aaec after that call; a zero value (the `beq` at 0x1000aaf0) prints the string
  at 0x10038b90 with the name buffer and exits with -1 (0x1000ae14).
  A nonzero entry a3 requires root: a nonzero `getuid` result (0x1000ab00) prints the string at 0x10038bb0
  and exits with -1 (0x1000ab24).
  With a display and a nonzero a3 it calls `XSGIvcSetPlatformParameter` with a2 = 0, a3 = -1 and the
  address of a frame byte at +0x510 that holds 1 (the call at 0x1000ab90, the `sb` in its delay slot),
  then `XSGIvcLoadVideoFormatCombination` with the name buffer (0x1000aba4), saving the result at
  frame +0x514 (the `sw` at 0x1000abac). A nonzero entry a2 then loads again (0x1000abdc; with a zero a3 this is the
  only load on this path),
  compares arg0 with the string at 0x10042330 by `strncmp` (0x1000ac00), and on a match with entry
  a4 equal to 0x1b or 0x1c calls `XSGISetStereoMode` with a2 = 0x1ec and a4 = 1 or 2 (0x1000ae54,
  0x1000ae90); on a mismatch it calls `XSGIQueryStereoMode` (0x1000ad30) and, if that returns
  nonzero, `XSGISetStereoMode` with zero arguments (0x1000ad50). `XSync` with 1 follows (0x1000ac28).
  Inferred: a zero load result ends in a call at 0x1000ae1c with a0 = 1 through the same table slot as
  the `exit` calls, so the routine exits with 1 when the combination fails to load.
  With a display and a zero a3 and a nonzero `genlockFlag` (read by the `lw` at 0x1000ac50) it prints the string at
  0x10038c38 with `printf` (0x1000ac60) and calls `XSGIvcSetScreenInputSyncSource` with 1 and -2
  (0x1000ac78); with a zero `genlockFlag` it calls the same slot with 1 and -1 (0x1000ade8).
  Without a display, a nonzero a3 calls `saXSGIvcSetPlatformParameter` (0x1000acec) with a frame word
  at +0x518 holding 1, a5 = 4 and a6 = 1, then `saXSGIvcLoadVideoFormatCombination` (0x1000ad00); a
  nonzero a2 in that case prints the string at 0x10038be8 and exits with -1 (0x1000adc8, 0x1000add4).
  Unknown: the device-side result of the `XSGIvcLoadVideoFormatCombination` and stereo calls, which
  the bundle gives only as argument expressions; the route is per-callee notes for the `XSGI`
  routines.
  Unknown: the content of the unnamed routine at 0x1000be44; a note for it would settle that.
  Evidence grade: inferred.
- `pipeCountOfSystem` in `usr/gfx/gfxinfo` at 0x10017d04 (n32).
  Queries the graphics device node `/dev/graphics` (string at 0x10022c70) with ioctl request 0x65 and
  returns that result. It opens the node with flags 0x802 at 0x10017d2c, issues the ioctl at 0x10017d48
  with a third argument of zero, and on success closes the descriptor at 0x10017d5c before returning the
  ioctl result, which is saved at 0x10017d54 and reloaded at 0x10017d64. Each failure prints a fixed
  message to the stream at `__iob`+32 and returns zero: a negative open result (`bltz` at 0x10017d34)
  prints the string at 0x10022c80 through the `fprintf` at 0x10017dbc, and a negative ioctl result
  (`bltz` at 0x10017d50) prints the string at 0x10022ca8 through the `fprintf` at 0x10017d90 and returns
  without closing the descriptor.
  Inferred: the linked ioctl row labels request 101 graphics init, which is the only label the bundle
  gives it.
  Inferred: the message at 0x10022ca8 calls the ioctl result a count of boards, which is the only
  statement in the bundle about what the value counts.
  Unknown: the device-side result of request 101 and whether it reports pipes, boards or something else;
  a datasheet excerpt for the request or a captured return value would settle it.
  Evidence grade: inferred.
- `pipenumToString` in `usr/gfx/setmon` at 0x1000bdb4 (n32).
  Issues ioctl request 0x66 (102) on the descriptor held in the global `gfxfd` (loaded at 0x1000bdf4),
  passing as the third argument (call at 0x1000bdf0) a three-word request block at frame +0x28: the
  entry a0 (the `sw` at 0x1000bdc4), then a pointer to the frame base (the `sw` at 0x1000bdb8, at +0x2c),
  then the constant 0x28 (the `sw` at 0x1000bdc0, at +0x30). Inferred: the linked ioctl row for
  request 102 reads graphics init, which is the reason this ioctl is taken as an init step, and the
  pointer and the 0x28 in the block make the first 0x28 bytes of the frame the reply area the ioctl
  fills.
  If the ioctl reports an error (`beq` at 0x1000bdfc taken), the routine calls `perror` at 0x1000be28 with the
  string `setmon` at 0x10042068 and returns 0 (0x1000be3c).
  Otherwise it calls `strcpy` at 0x1000be08 to copy from the address at frame +0x10, inside that reply
  area, into the buffer whose pointer was passed in a1 (saved at +0x38 by the `sd` at 0x1000bdcc and
  reloaded at 0x1000be04), then returns 1 (0x1000be1c).
  Unknown: which field of the reply the string at frame +0x10 is, since the routine stores nothing
  there; a trace of the ioctl's writes on a run, or the caller's use of the returned buffer, would
  settle it.
  Evidence grade: inferred.
- `vs2setmon` in `usr/gfx/setmon` at 0x1000bac8 (n32).
  Opens `/dev/graphics` (string at 0x10038c80) and issues four ioctls on it for the pipe number in the
  global `pipenum`, then calls `venice_set_pipeaddr`, `vs2GeneratePath` and `vs2Setmon`, copies a path
  into a frame buffer, calls `vensetmon` and returns its value. A nonzero entry a3 first requires root:
  a nonzero `getuid` result (0x1000bb08) prints the string at 0x10038ee8 and exits with -1 (0x1000bb30).
  Inferred: that string says root privilege is needed to write the eeprom, so a nonzero a3 selects an
  eeprom write.
  The open at 0x1000bb50 uses flags 0x802; a negative result prints the string at 0x10038c90 and exits with
  1 (0x1000bd2c).
  The request 0x66 (102) gets a frame structure with `pipenum` at +0 (stored at 0x1000bb98), a pointer to
  frame +0x10 at +4 (0x1000bb6c) and 0x3a8 at +8 (0x1000bb7c); a result of -1 (`beq` at 0x1000bba0) exits
  with 1 after a message at 0x1000bd60.
  The request 0x71 (113) takes no buffer; a negative result (`bltz` at 0x1000bbbc) exits with 1 after a
  message at 0x1000bd40.
  The request 0x67 (103) takes a buffer at frame +0x3b8 that holds `pipenum` (loaded at 0x1000bbd8, stored by the `sw` at 0x1000bbe4) and the word
  0x2000000 at +0x3bc (0x1000bbc8); a result of -1 (0x1000bbec) exits with 1 after a message at 0x1000bd80.
  The request 0x6e (110) takes no buffer; a result of -1 (0x1000bc0c) exits with 1 after a message at
  0x1000bda0.
  Inferred: the linked ioctl rows name requests 102, 103, 110 and 113 as graphics init.
  Then `venice_set_pipeaddr` runs with frame +0x10, the descriptor, 0x2000000 and `pipenum` (`jal` at 0x1000bc24),
  and `vs2GeneratePath` writes the path into the buffer at 0x10042900 (0x1000bc44); when `verboseFlag` is
  nonzero (`beq` at 0x1000bc54 falls through), the path is printed with the format at 0x10038f40.
  The `lw` at 0x1000bc8c loads `genlockTTL` and the `lw` at 0x1000bc9c loads `genlockFlag`; the routine then resets them: it
  stores 0 to `genlockTTL` (`sw` at 0x1000bc94) and 1 to `genlockFlag` (0x1000bca8, in the delay slot of the
  call). `vs2Setmon` therefore receives their values from before the resets, as a4 and a3, together
  with `pipenum`, the buffer, `verboseFlag` and a constant 1 as a5 (0x1000bca4). It then copies the
  buffer to frame +0x3c0 and appends the string at 0x10038f58 (`strcpy` at 0x1000bcb8, `strcat` at
  0x1000bcd0), and returns the value of `vensetmon` (0x1000bcf4, 0x1000bd08), which gets 0 as a0, the
  frame +0x3c0 buffer as a1, the entry a2 as a3, the entry a3 as a4, 1 as a5 and the entry a4 as a6.
  Unknown: the text of the four messages at 0x1000bd40, 0x1000bd60, 0x1000bd80 and 0x1000bda0; their
  string addresses are a global load minus an addend that the bundle does not resolve, and the strings
  table carries none of them.
  Unknown: the device-side result of the calls to `venice_set_pipeaddr`, `vs2GeneratePath`, `vs2Setmon`
  and `vensetmon`, which have no committed notes; their own entries would settle it.
  Evidence grade: inferred.
