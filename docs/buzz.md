# BUZZ notes

Companion to `BUZZ.h`. Facts are labelled **established** (read from a binary, with where), **inferred** (a reasoned reading) or **unknown**. Release is IRIX 6.5.30 unless said. "IP35" means the kernel objects under `usr/cpu/sysgen/IP35boot/` (`odsy_kernel_ip35/`), read from the 6.5.30 Installation Tools and Overlays disc; the IP30 objects are under `odsy_kernel/`. A fact about one host does not fill a gap in the other.

## 1. IP35 against IP30: command FIFO set-up, water marks, flow control

### What was compared

IP35 `odyssey.a` members, `kernel.o`, `gfx.o`, `rrm.o`, `gfxs.a` and `gfxstubs.a` are in `root/`. They were disassembled with `scripts/disasm_kernel.py` (`KERNEL_DIR=odsy_kernel_ip35`) into `odsy_kernel_ip35/disasm/`. Line counts of the disassembly differ in most members (`odsy_init` 4394 against 5102, `odsy_flow` 285 against 490, `odsy_dvi` empty against 580, `kernel` 31723 against 77588); `odsy`, `odsy_compositor`, `odsy_ddc`, `odsy_denali`, `odsy_diag`, `odsy_hpipe`, `odsy_i2c` and `odsy_intr` are the same length. Only the parts below were read; the rest of the diff is **unknown**.

### Water-mark registers 0x6b0 to 0x6b3 and 0x7b5

- **established.** IP35 `odsyInitCfifo` (`odsy_init.o`) sends the same five doubleword stores in the same order as IP30, with the same values: 0x6b0 = 0, 0x6b1 = 0x100, 0x6b3 = 0x5e50, 0x6b2 = 0x7dc0, 0x7b5 = 1, and 0x7f0 = 0x3b9aca00 after the microcode. The values sit in `.lit8` (IP30 offsets 0x30 to 0x50, IP35 offsets 0x48 to 0x68, byte-identical entries); the 0x6b0 store is built from `li 107; dsll32 4` in both. Source: `.lit8` dump of both `odsy_init.o`, and the `odsyInitCfifo` disassembly of both.
- **established.** These are the only stores to those ids in either set of objects: an eight-byte scan of every non-debug section of every `.o` in `odsy_kernel/` and `odsy_kernel_ip35/` finds the five pairs only in `odsy_init.o` `.lit8`, and the IP35 disassembly has no immediate load of 0x6b0 to 0x6b3 or 0x7b5.
- **established.** The rest of the init sequence is the same: block 0x054 with two operands, 2000 microsecond delay, read of board+0x201594 against `0x003d0046`, header words `0x2e008380`, `0x2600807f`, `0x27008000`, then 2048 groups of six from `buzz_ucode`. The array itself is byte-identical on both hosts (`ucode/buzz_ucode.md`).
- **established.** One difference in that routine: the argument passed with the delay call. IP30 loads the address 0xaff00080 (HEART space, also read by IP30's `gfx_flow_flush_my_wg`); IP35 loads a gp-relative value that is not resolved in the object. The effect on timing: **unknown**.
- **conclusion.** The water-mark values do not depend on the host. Their meaning stays **inferred** as in `BUZZ.h` (two threshold pairs for the command FIFO); the IP35 kernel adds no read-back and no name for them, so the units, which of 0x6b2 and 0x6b3 is the high mark, and whether 0x6b0/0x6b1 are a second pair remain **unknown**.

### Flow control

Where the code lives. **established.** On IP30 the credit accessors `gfx_flow_credit_*` are in `gfxs.a(gfx_flow.o)` and call `heart_flow_control_enable/disable` in the kernel image. On IP35 the same names are in `gfxs.a(gfx_flow.o)` of the IP35 set and touch registers directly; `odsy_flow.o` holds the interrupt handlers on both. IP35 `odsy_flow.o` additionally carries `gfx_flow_pipe_head`, `gfx_flow_clean_up_other_gfxp` and `odsy_flow_await_returned_credits` (IP30's copies are elsewhere or absent in `odyssey.a`).

| Item | IP30 | IP35 |
|---|---|---|
| Credit count read | HEART doubleword at 0xaff00060 + 8 * tnum, shifted left 3 | doubleword at `.lit8[0]` + 776 + 40 * s, shifted left 3, where s is bit 0 of a byte at offset 1320 of a per-cpu record (derived from the disassembly of `gfx_flow_credit_count_get`) |
| tnum (`gfx_flow_credit_tnum_get`) | record word at +88, plus 24 | constant 17 |
| Total (`credit_total_get`) | record field at +24, shifted left 3 | record field at +16, shifted left 3; `gfx_flow_alloc` stores min(arg >> 3, 256) there and at +20 |
| Bias (`credit_bias_get`) | constant 552 | record field at +24, shifted left 3; `gfx_flow_alloc` stores 68, so 544 |
| Attach | writes per-widget bits of HEART register 0xaff00040, then `heart_flow_control_enable` | writes 0 to the register at base + 784 + 40 * s, then the record's credit total (field +20) to base + 776 + 40 * s, then the record's word +8 with bit 40 set to base + 768 + 40 * s, then a widget identification word to the address held at record +88 |
| Detach | clears those HEART bits, `heart_flow_control_disable` | not read |
| Credit-flow disable on a stuck pipe (`odsyHiwaterInterrupt` failure path) | `heart_flow_control_disable` | stores 0 to base + 784 + 40 * s (the register attach zeroed first) |

`base` is the `.lit8[0]` constant of `gfx_flow.o`, 0x92000000_01000000, an uncached 64-bit address constant; the object carries no relocation on it.

What the register at +784 is, and what +768 and +776 hold beyond the above, is **inferred** only: +776 behaves as the live credit counter (attach loads the initial total, the count accessor reads it back), +784 as the credit-flow enable (zeroed before attach and on a stuck-pipe timeout) and +768 as a configuration word (a flag at bit 40 is added). The block's real name and layout: **unknown**. That 17 and the layout belong to an IP35 interconnect and not to HEART is **inferred** from the absence of any 0xaff000xx access in the IP35 flow code (disassembly of `gfx_flow.o`, `odsy_flow.o`, `odsy_init.o`).

Board-side registers are the same on both hosts. **established.** `odsyHiwaterInterrupt` and `odsyLowaterInterrupt` write the same board registers with the same values (0x200 to 0x101c in the high-water path and to 0x103c in the low-water path; the 0x1034 and 0x1014 stores of the high-water path carry the same values), keep the same 10-try, 1-microsecond credit wait, set the same flag word bit 9 and arm the same 1500-tick `odsyFifoTimer`. Only board-record offsets move (spinlock 0xb440 against 0xb458, cpu-id word -15456 against -15320). So `BUZZ.h`'s flow-control registers apply to both; the difference is the host-side credit source above.

The host-side threshold in `BUZZ.h` (552 on IP30) is a different number on IP35 (544, from the record). **established** by the disassembly cited above; why the two differ is **unknown**.

## 2. Per-vertex and attribute words

The words below are written to the command FIFO by the immediate-mode entry points (`__glOdylc_*`), the vertex-array senders and the clipped-vertex senders in `libGLcore` (N32 build). Values come from every `lui`/`ori` pair in `libglcore/asm/ODYSSEY/*.s` whose result has bit 31 set and bit 15 set (script-free search; the function names are the first owners listed per value).

### Layout

**inferred** from the table below and from `ApplyParameterF/I` (`ody_attrib.s`, from 0x0d95c4e0), which builds the word as `0xc080d000 | (slot << 24) | opcode` in a loop (slot starts at 6, opcode at 47, count from the d0 field, both counted up per iteration; slot 10, opcode 53 for the second set):

```
 31 30 29      24 23      16 15 14 13    10 9           0
 +----+---------+----------+-----+--------+-------------+
 | T  |  SLOT   | 0x80     | 1 1 | COUNT  |   OPCODE    |  T=1,0 for slot 0; 1,1 otherwise
 +----+---------+----------+-----+--------+-------------+
```

- Bits 15:0 are laid out like a class-1 word's low half (`BUZZ.h` section 1: count in 13:10, id in 9:0), with bits 15:14 both set where class 1 has 0 and P. **established** for the values; the equivalence is inferred.
- Bits 31:24 name an attribute slot: 0x80 position, 0xc1 normal, 0xc3 texture coordinate, 0xc5 colour or colour index, 0xc6 to 0xc9 and 0xca to 0xcd the slots used by the clipped-vertex senders. **established** as values; reading bits 29:24 as a slot number is **inferred** from the loop above.
- COUNT is the number of operand words that follow. **established** for every immediate-mode sender (Vertex3f sends 0x8080cc03 and three floats).
- The opcode numbers a conversion: low bit 1 means the operands are floats, 0 means integer forms converted by the board (Vertex2i/2s share 0x8080c800, Vertex2d/2f share 0x8080c801). **inferred** from the pairs.

### Opcodes (established as values, in the functions named)

| Opcode | Word (slot 0 base) | Sender |
|---|---|---|
| 0x00, 0x01 | 0x8080c800 / c801 | Vertex2 integer / float |
| 0x02, 0x03 | 0x8080cc02 / cc03 | Vertex3 integer / float |
| 0x04, 0x05 | 0x8080d004 / d005 | Vertex4 integer / float |
| 0x06, 0x07 | 0xc580c406 / c407 | Index integer / float |
| 0x08 to 0x0e | 0xc580cc08 to cc0e | Color3 ub, us, ui, b, s, i, float |
| 0x0f to 0x15 | 0xc580d00f to d015 | Color4 ub, us, ui, b, s, i, float |
| 0x16 to 0x19 | 0xc180cc16 to cc19 | Normal3 b, s, i, float |
| 0x1e, 0x1f | 0xc380c41e / c41f | TexCoord1 integer / float |
| 0x20, 0x21 | 0xc380c820 / c821 | TexCoord2 integer / float |
| 0x22, 0x23 | 0xc380cc22 / cc23 | TexCoord3 integer / float |
| 0x24, 0x25 | 0xc380d024 / d025 | TexCoord4 integer / float |
| 0x2f to 0x32 | 0xc680d02f, c780d030, c880d031, c980d032 | clipped-vertex senders (`CISendClipped*`, `RGBSendClipped*`), four floats each, slots 6 to 9 |
| 0x35 to 0x38 | 0xca80d035, cb80d036, cc80d037, cd80d038 | same senders, slots 10 to 13 |

Order of the data type codes: unsigned byte, unsigned short, unsigned int, byte, short, int, float (colours); byte, short, int, float (normals). **established** from the opcode to entry-point pairing. Opcodes 0x1a to 0x1d, 0x26 to 0x2e and 0x33, 0x34 were not seen: **unknown** whether they exist.

Other words with the 0x8x or 0x9x form (`0x8e809015`, `0x908091bb`, `0x908091df`, `0x908091ea`, `0x9080bda2`, `0x9080bdc8`, `0x90008116`, `0x90808800`, `0x8f80a944`, `0x8f80b968`, `0xcf80a92f`, `0xd080c433`, `0xd080c439`) have bits 15:14 = 10 (or 11 for `0xd080c4xx`) and are state, program and pixel-transfer words (lighting, clip planes, matrices, `__glOdysseySetProgram`, `ApplyParameter`). Their field meaning: **unknown**. `0x80000000`, `0xdeadbeef` and `0xbaadcade` in the same list are masks or markers, not words.

## 3. The maximum texture clamp field

Owner: `BUZZ.h` TEXMODE1 to TEXMODE3.

- **established.** `__glOdysseyValidateTexture` (0x0d9d26d0, `ody_texture.s`, source lines 2183 to 2195) builds words 1 to 3 of block 0x016 as follows. For each axis it takes n = max(0, size_level_n - base_level) (object offsets 144, 152 and 148 minus 92 for S, T, R; the S/T/R assignment follows `BUZZ.h`), forms the float 2^n, multiplies by the object's clamp float (offsets 72, 76 and 80, set from `GL_TEXTURE_MAX_CLAMP_S/T/R_SGIX`), converts with `trunc.w.s`, masks with 0x1ffff and ORs it into the context word (offsets 168, 172, 176), keeping the old bits 31:17 (mask 0xfffe0000).
- **established.** The result is not saturated: a product above 0x1ffff wraps through the mask. A size of 2^17 texels reads as 0. Reaching that needs a level of 2^17 or a clamp float of 2^(17-n) or more; the largest texture the driver validates was not checked, so whether the wrap is reachable is **unknown**.
- **established.** The default is 1.0 for all three (`InitTextureObject`, 0x0d9cf5a0, `_lit_3f800000` stored at offsets 72, 76, 80), so the register carries 2^n, the full level size in texels, not size - 1.
- **established.** The TexParameter setters reject a negative value (`c.lt.s` against zero, then `__glSetError`); the float is stored unconverted and the conversion happens in the validate step above.
- **established.** Bits 31:24 and 17 of words 2 and 3 start at 0 (`InitTextureObject`, offsets 172, 176) and this routine only preserves them; bits 23:18 are the wrap auxiliary field written by the wrap setters (see `BUZZ.h`). Word 1 (offset 168) keeps the bits it already holds in 31:17 in the same way. What a nonzero bit 17 or bits 31:24 would do: **unknown**.
- **unknown.** How the board uses the value (clamp coordinate scale, comparison against texel coordinates, interaction with borders). No code in the driver reads it back.

## 4. Context save and restore (kernel, `odsy_ctxsw.o`)

Hosts: IP30 read in full; the IP35 `odsy_ctxsw` is 8 lines longer and was not diffed. **unknown** whether the protocol below is identical on IP35.

### Switch-out: ask the board to save

- **established.** `gf_OdsyPcxSwap` and `gfP_OdsySaveHwShadow` store one doubleword at board PIO base + 0x118000 (the FIFO port is at + 0x110000). In `gf_OdsyPcxSwap(board, outgoing, incoming)` the value is `(7 << 40) | (s << 16) | 1`, where `s` is the slot of the *incoming* context (word 0 of its hardware state) or 127 when there is none; the store is made only when there is an outgoing context. `gfP_OdsySaveHwShadow`, which saves without switching, sends the constant `0x00000700_007f0001` (slot 127, from `.lit8[8]` of `odsy_ctxsw.o`, relocation confirmed). Slot numbers are 7 bits wide: the code uses 127 as "none" and masks with 0x7f. (Pass 5 corrects an earlier reading that the slot was the outgoing one.)
- **established.** Before the store the driver zeroes the word at offset 2300 of the outgoing context's record (the record pointed to at offset 192 of the context's hardware state) and afterwards arms a 1500-tick timeout (`odsy_ctxsw_timeout`, which tears the board down) and polls that word, in `gfP_OdsySaveHwShadow` with a 1-microsecond delay loop. A nonzero word cancels the timeout (`untimeout_wait`). Who writes the word: **inferred** the board (a DMA write into the record), because the driver only clears and reads it.
- **established.** The context's save area is announced to the board before this: the driver sets `kvtophys(record)` and stores its upper 16 bits (masked with 0xffff) at board + 0x4004 and the lower 32 at board + 0x400c (`gf_OdsyPcxSwap`, stores of offsets 16388 and 16396), and keeps both in the board record (-31284 and -31280 from the record base plus 0x10000). **inferred** that these name the DMA target for the save.
- **established.** The caller first detaches other graphics processes from flow control (`gfx_flow_clean_up_other_gfxp`) and checks flow-control attachment; a failed save returns -1.

### Switch-in: select and replay

- **established.** After `odsyMMvalidatePcxSwap` and `gf_OdsyValidateClip` the driver sends class-1 block 0x050 with two operands: `((slot << 12) & 0x7f000) | (some mask & value) | 0xf` and 0, then 0x00014400 (primitive begin) with operand 0, 0x00014001 (primitive end), and four words 0x740, 0x1ed, 0x741, 0, which read as two class-0 writes (bit 16 clear, COUNT 1): id 0x340 = 0x1ed and id 0x341 = 0 (pass 5, below). The choice of slot (`s3`), and the mask from `.lit8[0x10]` = 0xfffffffffff80fff, show that bits 18:12 of the first operand select the context slot and its low nibble is 0xf. What the block does: **inferred** to activate the saved context on the board.
- **established.** When the save fails or the microcode may be lost, the swap path calls `odsyDownloadUcode` and then replays state with `odsyRestoreXform`, `odsyRestoreRaster`, `odsyRestoreGfe` and `odsyRestartContext` (all in `odsy_ctxsw.o`, called from `gf_OdsyPcxSwap` in that order). The condition that selects this path: **inferred** a board reset after a timeout; the branch was not traced.
- **established.** The replay routines write the kernel's shadow back into the FIFO. Class-1 words with visible `lui 1; ori` immediates:
  - `odsyRestoreRaster`, as id/count (ids from bits 9:0, counts from bits 13:10): 018/0 019/0 004/1 005/1 006/1 007/1 015/1 01e/1 01f/1 020/1 022/1 024/1 03f/1 043/1 04c/1 051/1 052/1 056/1 057/1 058/1 258/1 01d/2 03d/2 040/2 041/2 042/2 04a/2 01c/3 021/3 03e/3 048/3 280/3 (the level descriptors, `0x280 + i`) 013/4 017/4 023/4 03a/4 01b/5 053/5 000/6 01a/6 047/6 016/7 030/8 031/8 032/8 033/8 03b/8 04b/8 028/15 029/15 02a/15 02b/15 038/15 04d/15 04e/15 04f/15 200/15 210/15 220/15 230/15 240/15 (the 256-word tables, `BUZZ.h`).
  - `odsyRestoreGfe`: 0x00014400 and 0x00014001 (primitive begin and end).
  - `odsyRestartContext`: 019/0 046/0 000/1 043/1 044/1 258/1 050/2 017/4.
  The list is the set of immediates visible in the disassembly; blocks built with other instructions are not in it. Several coincide with ids in `BUZZ.h` (texture block 0x016, 0x013, 0x01b; settle words 0x043, 0x046, 0x019). Their per-field meaning stays as written there; for the others: **unknown**.
- **established.** `odsyRestoreXform` (about 690 lines), `odsyRestoreVB` (about 1125 lines) and `odsyRestoreVertex` with the `restore*` primitive walkers (`restorePoints`, `restoreLines`, `restoreTriangles`, `restoreTriStrip`, `restoreTriFan`, `restoreQuads`, `restoreQuadStrip`, `restorePolygon`, `restoreRect`) replay transform state and the vertices of an interrupted primitive. Their word formats are in pass 9 below. `odsyResetHwShadow` clears the kernel's shadow of hardware state (not read in detail).

### Pass 5: completion word, saved record and the libGLcore side

**Who writes the completion word.**

- **established.** Offset 2300 of a context record is written by the kernel only as zero, before the save request, and read in the poll loops (`gfP_OdsySaveHwShadow`, `gf_OdsyPcxSwap`; no other store to `2300(` in any IP30 kernel object). No interrupt handler touches it.
- **established.** The record whose physical address goes to +0x4004/+0x400c is the *incoming* context's record (`kvtophys` of the record at offset 192 of the incoming hardware state, `gf_OdsyPcxSwap`), sent after the save completes. The record polled at the next switch-out is that same context's record, now outgoing.
- **inferred.** The board saves into the record last announced through +0x4004/+0x400c, so each context's record receives its own state, and the board writes the nonzero completion word itself, as the last write of the save. Reason: the driver announces exactly that address, never writes the word, and the same board has a host write-back of a 16-bit tag (block 0x5a, below). Not confirmed by hardware.

**Block 0x5a, host tag write-back.**

- **established.** `__glOdyGetFromHardware` (`ody_get.s`, N32 libGLcore 0x0d985aa0) sends a class-0 word `0x4c0 + n` (n = 0..3 by its argument, COUNT 1) with a sequence number, then `0x00010a5a` with two operands: a halfword index and a 16-bit tag (the incremented counter at context `0x10000 - 22860`). It then polls the halfword at that index in a page the kernel mapped for it (context offsets 27800 and 27964, set from an ioctl in `ody_pmobj.s`) until it equals the tag, or a word at offset 124 of another shared buffer until it equals the sequence number.
- **inferred.** Block 0x5a writes its second operand to host memory at the place its first operand names; `odsyDMAOp`'s use (first operand ORed with 0x8000, tag `0x5a00 | n`) is the same block with a kernel target. The 0x8000 bit's meaning: **unknown**.

**Saved record layout, as the restore code reads it.** **established** as offsets (`odsyRestoreVertex`, `odsyRestoreVB`, the `restore*` walkers in `odsy_ctxsw.o`); the record is the one at offset 192 of the hardware state:

| Offset | Content |
|---|---|
| 140 + 8v | a descriptor word for vertex v (v = 0..3); 2-bit fields at bits 17:16, 15:14 and below select, per attribute, which of four stored entries belongs to the vertex |
| 256 + 4v | the position command word of vertex v (an attribute word, `BUZZ.h` section 1), COUNT in bits 13:10 |
| 768 + 16v + 4j | its operands, j < COUNT |
| 384 + 4k, 1280 + 16k + 4j | first attribute slot: four stored command words (k from descriptor bits 17:16) and their operands |
| 400 + 4k, 1344 + 16k + 4j | second attribute slot (k from bits 15:14) |
| 2300 | completion word |

`odsyRestoreVertex` replays the vertex's position word and operands into the FIFO; a word with COUNT 0 must be `0x2f00c02e` or `0x3000c02e` (with bits 22:16 masked) or the kernel logs an error. Before that it calls `odsyRestoreVB` for the attribute slots and, when word 10972 of the structure at hardware-state offset 176 is set, `odsySetProgram` with the program number at 11040 + 4v of that structure. The walkers pick the vertices to replay: `restorePoints` replays none, `restoreLines` one, and `restoreTriStrip` the count n it is given, starting at `(p - n + 4) & 3` for its fourth argument p and stepping modulo 4. **inferred:** the board keeps the last four vertices of the primitive in flight as a ring, and its save writes them with their command words, so that the kernel can resend the vertices a strip or fan still needs. The other slots read by `odsyRestoreVB` after the two above, and `odsyRestoreXform`'s words (it uses sequencer registers 0x20, 0x28, 0x29, 0x31, 0x32, 0x34 and the words `0x8e80xxxx`, `0x9080xxxx`, `ucode/buzz_isa.md`), were not decoded.

**libGLcore side.**

- **established.** `__glOdysseyGetHardwareShadow` (`ody_unixcontext.s`) issues ioctl `0x6f64000c` on the device descriptor. **inferred** from the name that the kernel side is `gfP_OdsySaveHwShadow`; the ioctl switch was not traced.
- **established.** `__glOdyGetFromShadow` calls `__glOdyGetFromHardware` (above) and then `__glOdyDecodeShadowFormat` on a table of 20-byte descriptors (index times 20 from a context pointer at `0x16d24`), which is how glGet reads state that exists only on the board. The descriptor layout is **established** in `docs/opengl.md` ("The 20-byte shadow descriptors").
- Make-current and lose-current were read in a later pass (`docs/opengl.md`, make-current and lose-current), and the IP35 `odsy_ctxsw` diff is in section 7 below.

### Pass 9: `odsyRestoreXform` and `odsyRestoreVB`

IRIX 6.5.30m, IP30 `odsy_ctxsw.o`. **established** by reading both routines in full; the store sequences were extracted mechanically from the disassembly (constants folded, loads kept as shadow offsets) and checked by hand. `H` is the context's hardware-state structure (offset 176 of the context passed in), `R` its saved record (offset 192 of the structure). `enc(v)` is `(v & 0x3ff) | ((v >> 10) << 23)`, the way the driver spreads a value over a command word (the same form as the sequencer-register words in `ucode/buzz_isa.md`). Every store goes to the command FIFO port with a `sync`.

**`odsyRestoreXform`** writes the transform engine's state in this order. The "full" steps run only when the incoming context's slot (word 0 of the structure) is nonzero and differs from the board's current slot (record +820); otherwise only the steps marked "always" run.

1. *Full.* Register 0x31 is a table index and block id 0x1a2 its 16-word data port: for each group start `i` = 0, 16, ..., 496 except 320 and 480 (so 30 groups, 480 words): `0x31008000 | enc(i)`, then `0x9080bda2` (the group at i = 160 sends `0x9000bda2` instead; **established** as values, the data words are the same count), then 16 words from `H + 7356 + 4*i`, then `0x31008000 | enc(H[9888])` (re-selecting the register's saved index). **inferred** that the 512-word table is one 2048-byte block of the saved state and that groups 320-335 and 480-495 are not saved because the board does not hold them.
2. *Full.* Register 0x29 = 410 (`0x2900819a`), register 0x32 = 24 (`0x32008018`), then `0x8e809015` and four words from `H + 9788`: data memory entry 24. Then for entry n = 0..23: `0x32008000 | enc(n)`, `0x8e809015` and four words from `H + 9404 + 16*n`. `ucode/buzz_isa.md` reads the same sequence in libGLcore as a data-memory load; this confirms register 0x32 is the data address and 410 the load routine's entry.
3. Always: `0x28008000` (register 0x28 = 0), then the program entry list: when the count at `H + 10972` is below 255 the words `0x60008000 | enc(H[9948 + 4*j])` for j < count (a count of 255 or more logs an error and sends SIGKILL to the current process). **inferred** that 0x60 words are the AddProgram routine entry list (`ucode/buzz_isa.md`).
4. Always: `H[9900]` is cleared and used as the saved index of register 0x34 (`0x34008000 | enc(H[9900])`); register 0x34 is a 68-word table: index 0 and block `0x9080bdc8` with 16 words from `H + 6672`; index 16 and `0x908091df` with 4 words from `H + 6736`. *Full only:* index 36, 16 words from `H + 6752`; index 52, 16 words from `H + 6816`; index 20, 16 words from `H + 6880`. Each block is followed by a reselect of index 0. So `H + 6672 + 4*a` is table word `a` (a = 0..67, contiguous).
5. Always: the sequencer registers 0x20 + r for r = 0..21 as `((0x20 + r) << 24) | 0x8000 | enc(H[9820 + 4*r])`, skipping r = 6, 11, 13 and 15, and for r = 14 sending `0x2e008380` when the shadow word is zero (the same header word `odsyInitCfifo` opens the microcode load with, `BUZZ.h`).

**`odsyRestoreVB`** (arguments: board, hardware state, a vertex descriptor, one unused word, a count) replays attribute slots from the saved record `R`. A slot is a four-entry array of command words at `R + c` (COUNT in bits 13:10) with, for entry k, its operands at `R + d + 16*k`. The vertex descriptor word 0 (and word 1 for the last two slots) holds a 2-bit entry selector per slot; the routine sends the selected entry's command word and then COUNT operands:

| Descriptor field | Command words `R +` | Operands `R +` |
|---|---|---|
| word 0 bits 17:16 | 384 | 1280 |
| word 0 bits 15:14 | 400 | 1344 |
| word 0 bits 13:12 | 416 | 1408 |
| word 0 bits 11:10 | 432 | 1472 |
| word 0 bits 9:8 | 448 | 1536 |
| word 0 bits 5:4 | 480 | 1664 |
| word 0 bits 3:2 | 496 | 1728 |
| word 0 bits 1:0 | 512 | 1792 |
| word 1 bits 31:30 | 528 | 1856 |
| word 1 bits 29:28 | 544 | 1920 |
| word 0 bits 27:26 | 304 | 960 |
| word 0 bits 25:24 | 320 | 1024 |
| word 0 bits 23:22 | 336 | 1088 |
| word 0 bits 21:20 | 352 | 1152 |
| word 0 bits 19:18 | 368 | 1216 |
| word 0 bits 31:30 | 272 | 832 |
| word 0 bits 29:28 | 288 | 896 |

Bits 7:6 of word 0 select nothing (no slot 464 is read anywhere). The full replay runs when the context's slot is nonzero and either differs from the board's current slot (record +820) or the count argument is positive; its order is the first twelve rows (bits 17:16 down to 11:10, then 5:4, 3:2, 1:0, word 1 bits 31:30, then 27:26 to 21:20), then the 448 and 544 slots, then the last three rows. Otherwise (slot zero, or already resident with a count of zero or less) only the last three rows (word 0 bits 31:30, 29:28 and 19:18) are replayed. The 448 and 544 slots are also read through a second path. **established** (`odsyRestoreVB`, `odsy_ctxsw.o`, IP30): it is not conditional on anything beyond the full replay itself. It sits between the last of the first twelve rows (word 0 bits 21:20) and the 448 slot, and the only other way in is a jump from that row's error path, so every full replay sends it once. It sends the word `0x908091ea` (bits 15:14 = 10, COUNT bits 13:10 = 4, opcode 0x1ea), then four operands: operand 0 of the selected 448 entry (`R + 1536 + 16*s`, `s` from word 0 bits 9:8), the same word with bit 31 flipped, operand 0 of the selected 544 entry (`R + 1920 + 16*s`, `s` from word 1 bits 29:28), and that word with bit 31 flipped. The partial replay (slot zero or resident) does not send it. **inferred** that it is a board-side pair of values built from the first operand of each of the two slots (the flipped copy being the other half of a pair); what block 0x1ea does with them: **unknown, needs a hardware capture** (a command-stream trace around a context switch with a known value in the first operand of each slot).

- **unknown: needs a hardware capture.** What the 512-word table behind register 0x31, the 68-word table behind 0x34, data memory entries 0-24 and the seventeen attribute slots hold on the board. A capture that settles it: a dump of the saved record after a save request (`BUZZ.h`, +0x118000) taken together with the command stream that built the state, so that each shadow word can be matched to the stream word that wrote it.

### What is not done

- Where the user context's shadow sits and how libGLcore keeps it (the `libGLcore` side of save and restore, `__glOdysseyMakeCurrent` and the dirty-bit words in the context): not read. **unknown.**
- The per-field layout of the 4165-word textport image replayed by `odsy_tpinit` (`odsy_kern.h`) is not related to this path and was not examined.

## 5. Display timing

See `docs/display.md`.

## 6. Interrupt sources, routing and the handlers not covered earlier

Release IRIX 6.5.30m, IP30 kernel objects (`odsy_init.o`, `odsy_intr.o`, `odsy_dma.o`, `odsy_retrace.o`). IP35 was compared in pass 8 (below). Handler order was read from the `.rel.srdata` relocations of `odsy_init.o` (`readelf -r`), the board offsets from the disassembly in `odsy_kernel/disasm/`.

### Five interrupt sources

- **established.** `odsyInitIntr` (`odsy_init.o`) allocates five crossbar-widget interrupts with `xtalk_intr_alloc`, reads the vector number of each with `xtalk_intr_vector_get`, and connects them to five handlers with `xtalk_intr_connect`. The handler pointers sit in `.srdata` at offsets 0x30 to 0x50 in this order:

| Source | Handler | Vector kept at board record offset (+0x10000 base) |
|---|---|---|
| 0 | `odsyXtErrorInterrupt` | -19704 |
| 1 | `odsyFlagInterrupt` | -19702 |
| 2 | `odsyDmaInterrupt` | -19700 |
| 3 | `odsyRetraceHandler` | -19698 |
| 4 | `odsySsyncInterrupt` | -19696 |

- **established.** The target address of source 0 is stored at record -19688 and of source 1 at -19680. No address is read for sources 2 to 4.
- **inferred.** Sources 1 to 4 share the one address of source 1 (the board gets one address word for them, below) and the board tells them apart by vector number only. Reason: only two addresses are fetched and only one register pair is written for 1 to 4.

### Routing registers (`odsyInitInterrupts`, `odsyDisableInterrupts`)

**established** as stores (offsets from the board PIO base; each word is built in a record copy by read-modify-write and then stored once):

| Offset | Content as written |
|---|---|
| 0x34 | bits 31:24 vector of source 0; bits 23, 22, 21 set; bits 19:16 = `xtalk_intr_target_get` & 0xf; bits 15:0 = bits 47:32 of the source 0 address |
| 0x3c | bits 31:0 of the source 0 address |
| 0x5c | bit 13 set, bits 12:8 cleared, then bits 12:10 and 7:0 set |
| 0x1034 | the interrupt enable mask (`BUZZ.h` flags section) |
| 0x103c | `odsyDisableInterrupts` stores 0xffffffff |
| 0x1044 | bits 28:25 = the target number (bits 19:16 of the 0x34 word), bit 29 set, bits 24:22, 19 and 18:16 set, bits 15:0 = bits 47:32 of the source 1 address |
| 0x104c | bits 31:0 of the source 1 address |
| 0x1054 | bits 7:0 vector of source 1, 15:8 source 2, 23:16 source 3, 31:24 source 4 |
| 0x105c | a word that carries the target number in three places (bits 9:6, 19:16, 29:26) plus constant bit runs; not decoded further |

- **established.** `odsyDisableInterrupts` clears bit 21 of the 0x34 word, clears bits 18:16 of the 0x1044 word, then writes 0xffffffff to 0x1034's neighbour 0x103c. (It stores to record offset 4156 = 0x103c.)
- **inferred.** 0x34/0x3c is the error-widget interrupt (vector, target, address of the crossbar error source) and bit 21 of 0x34 its enable; 0x1054 carries the four other sources' vector numbers. 0x103c is a write-one-to-clear counterpart of 0x1034, because `odsyDisableInterrupts` writes all ones to it and `odsyLowaterInterrupt` writes 0x200 to it. Not confirmed by hardware.
- **unknown.** The meaning of 0x5c, of the bit runs in 0x1044 and 0x105c, and which register fields the target number selects.

### `odsyDmaInterrupt` and `odsySsyncInterrupt`

- **established.** `odsyDmaInterrupt` calls `odsyDMAIrptWakeup`, then increments a per-CPU counter; it reads no board register. `odsyDMAIrptWakeup` takes the board DMA mutex, pops the head of a singly linked list at record offset 28448, clears bit 1 of the entry's word at +8, and when the word is then zero calls `odsyDMADone` and broadcasts the DMA condition variable (record +5816).
- **established.** `odsySsyncInterrupt` calls `odsySwap_softsync_intr`, then `odsyDMAWakeup`, then the same counter increment. `odsySwap_softsync_intr` walks 32 swap slots (bit s of the words at 28568 and 28548) and, for each slot whose condition value read from a host-visible halfword table has reached its limit, calls `odsySwapBuffer`.
- **established.** `odsyDMAWakeup` reads the halfword at the host-mapped page whose address is kept at record +5824; if its high byte is 0x5a it is a block 0x5a tag (`BUZZ_REG_TAG_WRITEBACK`), low byte 0 to 127. It compares the tag with a ring index kept at record +5848 (modulo 128, the 128-entry ring of in-flight DMA ops at record +5856, eight bytes per entry) and retires that many ring entries: for each it clears bit 1 of the op's word at +8, and when that leaves the word zero calls `odsyDMADone`. Counters at record +6880 and +6888 are the retired and issued counts.
- **inferred.** The tag is what `odsyDMAOp` sends with block 0x5a after each op (`0x5a00 | n`, n mod 128), so the board reports completion by writing the tag into the host page, and the Ssync handler is the interrupt that makes the host look at it. The fallback bit-1 list in `odsyDMAIrptWakeup` is for ops that complete by interrupt instead. Not confirmed on hardware.
- **unknown.** Why `odsySsyncInterrupt` runs both swap and DMA retirement, and the meaning of the flag bits other than bit 1 in an op's word at +8.

### `odsyRetraceHandler` and the swap registers

**established** (`odsy_retrace.o`, `odsyRetraceHandler`, `odsySwapBuffer`, `odsyValidateBuffer`, `gf_OdsySchedRetraceEvent`):

- The handler takes the retrace mutex (record +28504), counts the retrace (record +124 and +128), reads the 32-bit word at board +0x10d4 and XORs it with the record copy at +28528 to find the slots whose state changed. For each of the 32 slots with a pending swap (bit in word +28568) it either calls `odsyValidateBuffer`, calls `odsySwapBuffer`, or writes the slot's bit to +0x10b4 after a repeat count (a slot not completing within 300 retraces is forced and logged).
- `odsySwapBuffer` writes bit sets to +0x10c4 and +0x10cc (the first word is the bits that go to one state, the second the complement among the same slots), a toggle-like set to +0x10b4, and a word to +0x10bc; each write is followed by `sync`. `odsyRetraceHandler` writes 0 to +0x10bc when a pending word (record +28544) is nonzero and the swap list head (record +28536) is empty.
- After the loop the handler wakes the retrace condition variable (record +28520), calls `rrmValidateRetrace` for each client event queued at record +29864 (`gf_OdsySchedRetraceEvent` adds to that list), `rrmValidateVideoSync` when record +136 is set, and `odsyDMAWakeup`.
- **inferred.** +0x10d4 is a read-back of per-slot buffer-select bits (one bit per double-buffered window or screen slot, 32 slots), +0x10c4 and +0x10cc set and clear those bits, +0x10b4 and +0x10bc are further per-slot enable or pending bitmaps. Reason: every register is written with masks derived from the same 32-bit slot words, and the record keeps an XOR shadow of +0x10d4. The retrace event itself reaching the host as interrupt source 3 is established by the handler table; which board condition raises it (vertical retrace is the handler's name only) is **unknown**.
- **unknown.** The exact semantics of each of the five registers; the 300 and 2 repeat counts' units; `rrm*` internals (`rrm.o`, not read).

## 7. IP35 context switch against IP30 (`odsy_ctxsw.o`)

**established** by a diff of `odsy_kernel/disasm/odsy_ctxsw/` and `odsy_kernel_ip35/disasm/odsy_ctxsw/` (both 6.5.30, the IP35 set from the Installation Tools and Overlays disc), `.lit8` dumps and the jump-and-link target lists of the two objects. The two files have the same function labels in the same order.

- **Same on both.** The save request and the select sequence of section 4: `.lit8` offsets 0x00 (`0xfffffffffffe0fff`, the slot-field mask), 0x08 (`0x00000700007f0001`, the slot-127 save word) and the slot mask `0xfffffffffff80fff` are byte-identical; the board save-address stores at +0x4004/+0x400c, the zeroing of the completion word at record +2300 and its poll, the 1500-tick timeout and the same six uses of +2300 occur in both. So the board-visible protocol is the same on IP35 and IP30.
- **Read-back after the doorbell.** In `gf_OdsyPcxSwap` both hosts follow the 0x118000 store with `sync` and, in the delay slot of the `timeout` call, a doubleword load whose result is not used. IP30 loads from `0xaff00080` (a host-chip register). IP35 loads from the address in `.lit8` offset 0x10, `0x9200000001030100`, an uncached constant in the same 0x92000000_01xxxxxx range as the flow-control block of section 1. **inferred** that this load is a read-back that pushes the posted doorbell out to the board before the timeout is armed; the destination register is not used afterwards.
- **Flow-control credits differ.** IP35 `odsy_ctxsw.o` calls `gfx_flow_credit_count_get` and `gfx_flow_credit_bias_get` before each of six save or switch points and, when the count is below the bias, pins the thread (`rt_pin_thread`), releases the interrupt level, calls `odsy_flow_await_returned_credits(board)`, re-raises the level and unpins. IP30 has none of these calls. After attaching to flow control, IP35 also calls `gfx_flow_attach_me_finish`, and takes the credit target number from a board-record word (record `-19376` from the base plus 0x10000) where IP30 calls `gfx_flow_credit_tnum_get`; the register write is the same (0x1074 with the number in bits 16:12, then 0x107c = 0). **established** as call lists and the code of the attach path. **inferred** that IP35 makes the save wait for credits the board has not returned, because its credit counters are the host-side registers of section 1 and the board could otherwise be switched while a flow-control credit is in flight; IP30's credit state is held in a host chip that the driver does not poll here.
- **Other.** The stack frame of `gf_OdsyPcxSwap` grows from 112 to 144 bytes, which accounts for the local copies of the pinned-thread state. Everything else in the 8 extra lines of the file is addressing differences.
- **Not compared.** The bodies of `odsyRestoreXform`, `odsyRestoreVB` and the other replay routines were diffed only by length (the files differ by 8 lines in 6800) and by the `.lit8` constants above; they are **unknown** to differ beyond what the target lists show.

## 8. Register map (pass 7)

Two kinds of BUZZ register exist: PIO registers the host loads and stores directly in the board window, and command-stream register blocks reached only through the command FIFO. Release IRIX 6.5.30m, IP30 kernel objects unless IP35 is named.

### PIO registers

**established** by a base-register scan of every IP30 kernel object (loads of the PIO base from board record +824, followed through constant offsets; the IP35 scan gives the same offsets and access types). The scan misses accesses through bases passed in as arguments, so the list is complete for constant offsets only. Offsets 0x220000 and up belong to PB&J (`PBJ.h`).

| Offset | Access | Users | What is known | Where |
|---|---|---|---|---|
| 0x0004 | load | `odsyGatherInfo` | bits 31:28 BUZZ revision type | `docs/board.md` |
| 0x000c, 0x0014, 0x001c, 0x0044 | load (0x44 also store 0) | `odsyXtErrorInterrupt` | crossbar error status, high error, low address, header | `BUZZ.h` section 5 |
| 0x0024 | load, store | `odsyFindBoardAddr`, `odsyReset`, `odsyLLPReset` | widget id in the low nibble; written id \| 0x4200 at reset | `docs/kernel.md` |
| 0x0034, 0x003c, 0x005c | store | interrupt set-up | error interrupt vector, target and address; 0x5c unknown | section 6 |
| 0x1004 | store | `odsyReset` | SDRAM configuration | `docs/board.md` |
| 0x100c | store | `odsyLowLevelReset` | reset control, 0x200 or 0x16d then 0 | `docs/kernel.md` |
| 0x1014 | load, store | flags handler, `gfP_OdsyDIAGdma` | flags | `BUZZ.h` |
| 0x101c, 0x1034, 0x103c | store (0x1034 also load) | flags, flow, timing load | flag clear, interrupt enable, disable | `BUZZ.h` |
| 0x1044, 0x104c, 0x1054, 0x105c | store | interrupt set-up | sources 1-4 target, address, vectors | section 6 |
| 0x1064 | load | `odsyHiwaterInterrupt`, `odsyPrintRegs` | status0 | `BUZZ.h` |
| 0x106c | load | 15 functions | FIFO levels (15:0), strap (31:24) | `BUZZ.h`, `docs/board.md` |
| 0x1074, 0x107c | store | 15 and 18 functions | flow configuration, flow off | `BUZZ.h` |
| 0x1084 | store | `odsyReset`, `odsy_tpinit`, `gf_OdsyInitialize` | command FIFO reset pulse | `BUZZ.h` |
| 0x108c, 0x109c, 0x10a4, 0x10ac | store 0 | `odsyReset` only | unknown; zeroed at reset | |
| 0x10b4, 0x10bc, 0x10c4, 0x10cc, 0x10d4 | store (0x10d4 load) | retrace and swap code | per-slot buffer select and swap bitmaps | section 6 |
| 0x4004, 0x400c | store | `gf_OdsyPcxSwap` | context save address | section 4 |
| 0x4014, 0x4044 | store | `odsyReset` | master id fields plus fixed bits | `docs/kernel.md` |
| 0x401c, 0x4024 | store | `odsyReset`, `odsyInitPfRgn`, `odsyDestroyPfRgn` | written when a performance region is set up and torn down | |
| 0x402c | store | `odsyReset`, `gfP_OdsyPerfStat` | performance statistics control | |
| 0x4034, 0x403c | store | `odsyReset`, `gf_OdsyStart` | written at start | |
| 0x404c, 0x4054, 0x405c | store 0 | `odsyReset` only | unknown | |
| 0x110000 | 32- and 64-bit store | 13 functions | command FIFO port | `BUZZ.h` |
| 0x118000 | 64-bit store | `gf_OdsyPcxSwap` | context save request | section 4 |
| 0x201594 | load | `odsyInitCfifo` | must read 0x003d0046 before the microcode load | `BUZZ.h` |
| 0x400000 | 64-bit store | 27 functions | display FIFO port | `PBJ.h` |

- **inferred.** The 0x4000 group holds the context-save engine (0x4004/0x400c) and the performance and diagnostic regions: `odsyInitPfRgn`/`odsyDestroyPfRgn` and `gfP_OdsyPerfStat` are its only users outside reset, and the status0 bits `PERF_STATS_PUSH_ACTV` and `DIAG_HIST_PUSH_ACTV` name such engines. The field layouts were not read.
- **established.** `gf_OdsyMapGfx` hands clients windows at board +0x000000 (2 pages, so these PIO registers up to 0x7fff), +0x100000, +0x110000 (the command FIFO), +0x118000, +0x120000, +0x200000, +0x220000 (8 pages, the PB&J read-back) and +0x400000 (the display FIFO) (`BUZZ.h` section 5). What +0x100000, +0x120000 and +0x200000 hold beyond the one read at +0x201594: **unknown**.

### Command-stream register blocks

The full set of blocks the board holds as context state is what the kernel replays after a lost context (`odsyRestoreRaster`, `odsy_ctxsw.o`, decompiled with m2c from `odsy_kernel/disasm/odsy_ctxsw/`). **established**: each row is a class-1 word the routine sends, its operand count, and the offset in the hardware-shadow record (the structure at offset 0xb0 of the routine's second argument) it reads the operands from, in send order. Settle groups (0x043, 0x046, 0x019) between them are left out.

| Block | Words | Shadow offset | Known from |
|---|---|---|---|
| 0x017 | 4 | 0x1b24 | |
| 0x023 | 4 | 0xe8 | X module and textport send it with the 0x022 sequencer pair (`docs/opengl.md`) |
| 0x052 | 1 | 0xe4 | |
| 0x01d | 2 | 0xa8 | |
| 0x053 | 5 | 0x1b34 | rectangle copy (`docs/opengl.md`) |
| 0x004, 0x005, 0x022, 0x015, 0x056 | 1 each | 0x84, 0x88, 0xc8, 0x8c, 0x1cb0 | 0x004 raster mode (textport) |
| 0x048 | 3 | 0xcc | |
| 0x03f | 1 | 0x80 | glyph set-up (textport sends 6) |
| 0x04e, 0x04f | 16 each | 0x00, 0x40 | 32 x 32 stipple or glyph bitmap (`BUZZ.h` section 5) |
| 0x04a | 2 | 0xdc | |
| 0x01b | 5 | 0x138 | texture environment |
| 0x016 | 7 | 0x14c | texture modes |
| 0x051, 0x04c | 1 each | 0x1b20, 0x1cac | |
| 0x021 | 3 | 0xbc | constant colour |
| 0x030-0x033, 0x03d or 0x03b | 4 x 8, 2 or 8 | 0x1174 | post-filter scale and bias, by the mode word at shadow 0x1170 (1 or other: 0x030-0x033; 3: 0x03d; 2: 0x03b) |
| 0x028-0x02b, 0x03a or 0x038 | 4 x 16, 4 or 16 | 0x1070 | a second three-layout set chosen by the word at 0x106c (1 or other: 0x028-0x02b; 3: 0x03a; 2: 0x038) |
| 0x01e, 0x01f, 0x020, 0x058 | 1 each | 0xb0, 0xb4, 0xb8, 0xd8 | |
| 0x01a | 6 | 0x90 | |
| 0x047 | 6 | 0x1b94 | |
| 0x013 | 4 | 0x1bac | texture LOD |
| 0x03e and the tables | 3, then 0x200-0x24f and 0x280+i | 0x11f4 | texture offset, five tables, level descriptors (`BUZZ.h` section 2) |
| 0x006 | 1 | 0x468 | |
| 0x018 | 0 | | |
| 0x01c | 3 | 0x1a04 | |
| 0x057 | 1 | 0x1cb4 | |
| 0x04d | 16 | 0xf8 | a third 16-word bitmap beside 0x04e/0x04f |
| 0x042 | 2 | 0x1ca4 | |
| 0x007 | 8 operands built in registers | | |
| 0x04b | 8 | 0x2b40 | window descriptor (`docs/opengl.md`) |
| 0x041, 0x024, 0x040 | 2, 1, 2 | 0x2b60, 0x2b68, 0x2b6c | 0x040/0x041 also sent by `odsyClipPush` |

- **established.** The 0x028-0x02b / 0x03a / 0x038 choice is a new instance of the three-layout pattern of the post-filter blocks: one shadow region (0x1070-0x116f, 64 words) goes out as four 16-word blocks, one 16-word block or one 4-word block. libGLcore sends 0x00013c28-0x00013c2b, 0x0001103a and 0x00013c38 only from `ody_context.s` (`__glOdysseyValidateHardware`). What these blocks hold: **unknown**; their size (a 4 x 4 matrix per block, or four 16-entry sets) is the only clue.
- **established.** Every block id the kernel replays is below 0x060 apart from the tables (0x200-0x24f), the level descriptors (0x280+) and 0x258 (`0x00010658` with one operand, the last word of the routine). A scan of `lui 1` / `ori` command words in libGLcore, the X module and the kernel finds no class-1 id between 0x060 and 0x1ff that is stored to the FIFO; the libGLcore hits in that range are context offsets, not command words (checked by their use as load and store displacements). So the raster state the board holds as context is the set above. **inferred**, because the scan relies on the immediate form.
- **unknown.** Field layouts of the blocks with no "Known from" entry, and the meaning of the shadow record outside these offsets.

### Attribute word defaults (`odsyResetHwShadow`)

**established.** `odsyResetHwShadow` (`odsy_ctxsw.o`) clears 0x900 bytes of the vertex shadow and stores one default attribute word per slot (`BUZZ_ATTR_WORD` layout, `BUZZ.h` section 1). Slot is bits 31:24 (0x80 for position, 0xc0 | slot otherwise); the opcode is bits 9:0; the count bits 13:10.

| Slot | Default word | Opcode | Count | Note |
|---|---|---|---|---|
| 0 (position) | 0x8080c800 | 0x00 | 2 | Vertex2 integer |
| 1 | 0xc180cc18 | 0x18 | 3 | a Normal3 form (0x16-0x19 are Normal3) |
| 2 | 0xc280cc1c | 0x1c | 3 | |
| 3 | 0xc380c41e | 0x1e | 1 | TexCoord1 integer |
| 4 | 0xc480c426 | 0x26 | 1 | |
| 5 | 0xc580cc0d | 0x0d | 3 | Color3 (0x08-0x0e), the int form |
| 6-9 | 0xc680d02f .. 0xc980d032 | 0x2f-0x32 | 4 | the clipped-vertex senders' forms |
| 10-13 | 0xca80d035 .. 0xcd80d038 | 0x35-0x38 | 4 | as above |
| 14 | 0xce80c406 | 0x06 | 1 | Index |
| 16 | 0xd080c433, 0xd080cc34, 0xd080c439, 0xd080cc3a | 0x33, 0x34, 0x39, 0x3a | 1, 3, 1, 3 | four words for one slot |

The word `0x3000c02e` (sequencer register 0x30 form, `ucode/buzz_isa.md`) is stored beside them. So opcodes 0x1c (slot 2, three components), 0x26 (slot 4, one component) and the slot-16 family 0x33/0x34/0x39/0x3a exist as board-visible defaults; what attributes slots 2, 4 and 16 carry: **unknown** (slot 2 with three components and slot 4 with one are consistent with a secondary colour and a fog coordinate, but nothing names them).

## Interrupts: IP35 comparison and the flags no code tests

Pass 8. **established** by comparing the IP30 and IP35 (`odsy_kernel_ip35/`) disassembly of `odsyInitIntr`, `odsyInitInterrupts`, `odsyDisableInterrupts` (identical loads, stores, constants and calls once registers are renamed) and of the five handlers plus `odsyRetraceHandler`, `odsySwapBuffer`, `odsyValidateBuffer` and `odsySwap_softsync_intr` (identical after masking the host-record displacements, which move by 24 bytes: for example -19352 against -19328, and the gp-relative loads). Board register offsets, written values, the five-source order, the teardown mask 0x39f02587 and the enable mask building are therefore the same on both hosts. `gf_OdsySchedSwapBuf` differs (53 instruction differences) and was not read: it is a scheduling call, not an interrupt path. The IP35 credit source for the DMA path is the one `section 1` already describes.

**established.** The flags register's bit 12 (named CTXSW_DONE in the driver's own bit table) and bit 26 (unnamed in the table) are never tested by `odsyFlagInterrupt`, are outside the teardown mask, and the other flags readers (`gfP_OdsyDIAGdma` tests bit 11 only, `odsy_flow.o` writes the register without testing named bits) do not test them either. Context-switch completion in software is the host-memory word at record +2300 (section 4), not this bit. So no code in the install gives either bit a use, and nothing says whether the board ever raises them: **unknown, needs a hardware capture** of the flags register (0x1014) read immediately after a context switch (bit 12) and across a workload (bit 26).

**unknown, needs a hardware capture or the board's own description.** The bit meanings of routing registers 0x34, 0x3c, 0x5c, 0x1044 to 0x105c: the code only builds and stores them, and the fields' names appear nowhere in the binaries. A capture that settles each field: a read-back of those registers on a running board (not known to be readable) or a bus trace of the stores combined with a change of the interrupt target's node number to see which field moves.

## Reset: the fields the binaries cannot settle

Pass 8. The reset row's open items were block 0x054, register 0x7f0 with the ID word, and the water-mark units. **established:** each is written or compared exactly once, by `odsyInitCfifo` on IP30 and IP35 alike (`BUZZ.h` section 5; IP35 comparison in section 1 above). No kernel object reads any of them back, and none of the values (0x003d0046, 0x3b9aca00, 0x5e50, 0x7dc0) occurs as a 32-bit word in `buzz_xform.bin` or in either kernel microcode array (byte search, pass 8), so they do not come from the transform program. The software says nothing more, so each stays **unknown** with the capture that would settle it:

- **Water marks 0x6b0-0x6b3, units and which is high: unknown, needs a hardware capture.** Fill the command FIFO with a known number of words with the board's consumer stalled, reading 0x1064 (CFIFO_LW, CFIFO_HW) and the level field of 0x106c after each store, and record the level at which each bit changes; repeat after changing one of the four values through the FIFO port. The level where HW asserts gives the unit and the value that sets it.
- **Block 0x054 operands (0, 0x0fffffff): unknown, needs a hardware capture.** Compare the board's state (flags 0x1014, status 0x1064, FIFO level) after the reset sequence with and without that block; a bus trace of the board's response to it would name its function.
- **ID word 0x003d0046 at +0x201594: unknown, needs a hardware capture.** Read the register on boards of each member of the family (V6, V8, V10, V12) and on both hosts; if it varies, the field split follows from which parts vary. **inferred** only that it is an identification or ready word, from the skipped microcode load when it differs.
- **Register 0x7f0 = 0x3b9aca00: unknown, needs a hardware capture.** The value is 10^9, which suggests a timeout or counter reload, but nothing in the binaries supports a unit. Settle by changing it through the FIFO port and timing the behaviour it controls (the first thing to try: the interval of a stalled-FIFO timeout).

## 9. Pass 10: closing the register and command rows

Release IRIX 6.5.30m, IP30 kernel objects and the N32 libGLcore unless named. Each item is **established**, **inferred** or **unknown** with the capture that would settle it.

### The 0x4000 register group (`odsy_diag.o`)

**established** by reading `odsyInitPfRgn`, `odsyDestroyPfRgn` and `gfP_OdsyPerfStat` (private ioctl 51) in full.

- **Statistics region address, 0x401c and 0x4024.** `odsyInitPfRgn(board, size)` returns at once when a region already exists. Otherwise it allocates a zeroed 16384-byte kernel buffer, keeps `min(size, 16384)` as the region size, pins and maps it for the client, converts the buffer to a physical address and writes bits 47:32 of it to board +0x401c and bits 31:0 to +0x4024, each followed by `sync`. `odsyDestroyPfRgn` frees the buffer and writes zero to both. This is the same high-half and low-half split the shadow region uses at +0x4034 and +0x403c (`docs/kernel.md`). **inferred** that both pairs are the physical address of a host-memory region the board writes into, from the split and from the pin-and-map step; what the board writes there: **unknown, needs a hardware capture** (the contents of the region after a draw, taken together with the stream that drew).
- **Statistics control, 0x402c.** The ioctl copies in a 24-byte argument. Word 0 is a request mask: bit 0 create the region, bit 1 write the control register, bit 2 destroy it; a mask with bits 0 and 2 both set is refused with error 22. Creation takes a size from byte 16 of the argument as `(2 << n) * 32` bytes for `n` = that byte (the region is capped at 16384 by `odsyInitPfRgn`), destroys any existing region first, and returns the client's mapping address of the region at offset 8 of the argument. The control word written to +0x402c is built from the same argument bytes: bits 3:0 = byte 16 (low nibble), bit 4 = byte 17 bit 0, bit 5 = byte 18 bit 0, bit 6 = byte 19 bit 0, bit 7 cleared, bits 10:8 = byte 21 (low three bits), plus the fixed bits 31 and 27 (0x88000000). **established** as bit positions. What each field selects on the board: **unknown, needs a hardware capture** (a read of the status0 `PERF_STATS_PUSH_ACTV` bit and of the region's contents while each control bit is set alone).
- Everything else the group holds (0x4004/0x400c context save, 0x4014/0x4044 master ids, 0x4034/0x403c, 0x404c-0x405c) is covered in section 4 and `docs/kernel.md`. The group's remaining bit fields are **unknown, needs a hardware capture**: a read-back of each register after reset.

### COUNT 8 to 14 in command words

**established.** A scan of every `lui 1` / `ori` pair that forms a class-1 command word across libGLcore (all ABIs' decompiled sources), the X module and both kernel sets finds COUNT 8 words only for ids 0x30-0x33, 0x3b and 0x4b, and in each of them the kernel's replay routines send exactly eight operands (`odsyRestoreRaster`, `odsyClipPush`), so COUNT 8 means 8 operands. The pairs with COUNT 9 to 14 in that scan are address offsets used with `addu` or as a load or store displacement (for example `0x201c` in the accumulation code and `0x3420` before a call to `__glOdysseyValidateTexGen`), not words stored to the FIFO. So no software sends COUNT 9 to 14 as a class-1 word. **unknown** whether the board accepts them: needs the chip's own description; no capture of existing software can show it.

### Attribute ids not sent as constants

**established** that no `lui`/`ori` attribute word in libGLcore, the X module or the kernel has opcode 0x1a, 0x1b, 0x1d or 0x27 to 0x2e. Opcodes 0x1c, 0x26, 0x33, 0x34, 0x39 and 0x3a appear only as the defaults in section 8. **unknown, needs a hardware capture:** whether the board defines the other opcodes, and what slots 2, 4 and 16 carry. A capture that settles it: the FIFO stream of an application that sets a secondary colour and a fog coordinate, next to a stream that does not.

### The 0x220 and 0x230 tables

**established** that no libGLcore store targets context offset 0x7fe4 or 0x83e4 by constant displacement. The only stores at displacements near 0x7fe4 are the level-descriptor writes below, which end at context offset 32740 (the descriptors cover 31968 to 32735). The 0x220 table is therefore a second table with no writer in libGLcore, like the 0x230 table (`BUZZ.h` section 2). **unknown, needs a hardware capture:** the content of both tables on a running board (a dump of the saved record after a save, `BUZZ.h` +0x118000) while a texture-heavy scene runs, to see whether either ever differs from zero.

### Level descriptor words (blocks 0x280 + i)

**established** by reading `__glOdysseyTextureActivate` (`ody_texture.s`, source lines 1976-2005), which writes three 32-bit words per level into the context at 12-byte stride (`GC_HW_TEXLEVEL`, `glcore_odsy.h`), ending at context offset 32736:

| Word | Fields written |
|---|---|
| 0 | bits 28:0 from a per-level value of the texture object (object offset 1300 + 4 x level); bits 31:29 kept |
| 1 | bits 11:0 from the level's width in 16-texel units, `(w + 15) >> 4`, rounded up to even (when that value is 4096 the field is cleared and bit 0 is set instead); bits 25:20 from a per-level field at offset 1364 of the texture object's 68-byte per-level record; bits 31:30 from the field at offset 1368 of the same record; other bits kept |
| 2 | not written by this routine |

The rounding to an even tile count and the 16-texel unit are **established** as arithmetic; that word 0 is a board-memory address of the level (the object's per-level value comes from a memory-object reference opened just before) and that word 1 holds a pitch in tiles are **inferred**. The record fields behind bits 25:20 and 31:30 are **established** from `AllocateGfxMemForTexture` (`ody_texture.s`, N32 0x0d9d03b0-0x0d9d089f), which fills the per-level record (`docs/opengl.md`, texture level records): record offset 0 (bits 25:20) is the texel format index that `ChooseSuitableBuzzTexObjFormat` returns (`BUZZ.h` section 3, 0 to 49, so six bits hold it), and record offset 4 (bits 31:30) is the storage class `CalcTexelSizes` returns (0, 1 or 2, the `c` of the allocation's element size `2 << c`). **established** that word 2 has no writer in libGLcore: the only constant-displacement accesses to the level descriptors (`__glOdysseyTextureActivate`, `ody_texture.s` 0x0d9d1f90-0x0d9d2537, the stores at 31968 and 31972; and the loads at 31968-31988 in `ody_context.s` that send them) store words 0 and 1 and only load word 2. So word 2 is sent as whatever the context holds at that place. What the board does with each field: **unknown**. The capture that settles it is the block 0x280 + i operands, matched with the rendered result, for one texture of each storage class.

### The windows at board +0x100000, +0x120000 and +0x200000

**unknown, needs a hardware capture.** The mapping table is in `BUZZ.h` section 5. The only established access is the kernel's read at +0x201594. A capture that settles each window: a bus trace of a libGLcore client's accesses into its mapping, or a read of the first words of each window on a quiescent board.

### What stays unknown in the register and command rows

Field layouts of the replayed blocks with no entry in the "Known from" column of section 8, the meanings of blocks 0x019, 0x043 and 0x046, the 0x8e and 0x90 state words, and the water marks are all values the code only stores. The software never reads the board back for them, so a capture is the only source: the first needs the operands of each block taken from a stream whose GL state is known, one state at a time; the others are named in the reset section above.
