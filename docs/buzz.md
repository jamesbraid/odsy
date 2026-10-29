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
- **established.** `odsyRestoreXform` (about 690 lines), `odsyRestoreVB` (about 1125 lines) and `odsyRestoreVertex` with the `restore*` primitive walkers (`restorePoints`, `restoreLines`, `restoreTriangles`, `restoreTriStrip`, `restoreTriFan`, `restoreQuads`, `restoreQuadStrip`, `restorePolygon`, `restoreRect`) replay transform state and the vertices of an interrupted primitive. Their word formats were not read: **unknown**. `odsyResetHwShadow` clears the kernel's shadow of hardware state (not read in detail).

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
- **established.** `__glOdyGetFromShadow` calls `__glOdyGetFromHardware` (above) and then `__glOdyDecodeShadowFormat` on a table of 20-byte descriptors (index times 20 from a context pointer at `0x16d24`), which is how glGet reads state that exists only on the board. The descriptor layout: **unknown**.
- **unknown.** What libGLcore does at make-current and lose-current with respect to the board's saved state (`MakeCurrent`, `LoseCurrent`, `__glOdysseyDriverMakeCurrent` not read), and the IP35 diff of `odsy_ctxsw`.

### What is not done

- Where the user context's shadow sits and how libGLcore keeps it (the `libGLcore` side of save and restore, `__glOdysseyMakeCurrent` and the dirty-bit words in the context): not read. **unknown.**
- The per-field layout of the 4165-word textport image replayed by `odsy_tpinit` (`odsy_kern.h`) is not related to this path and was not examined.

## 5. Display timing

See `docs/display.md`.

## 6. Interrupt sources, routing and the handlers not covered earlier

Release IRIX 6.5.30m, IP30 kernel objects (`odsy_init.o`, `odsy_intr.o`, `odsy_dma.o`, `odsy_retrace.o`). IP35 was not diffed: **unknown**. Handler order was read from the `.rel.srdata` relocations of `odsy_init.o` (`readelf -r`), the board offsets from the disassembly in `odsy_kernel/disasm/`.

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
