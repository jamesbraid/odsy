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

