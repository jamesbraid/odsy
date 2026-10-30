# Tooling: the Ghidra processor module for the BUZZ microcode

The index of all Ghidra tooling is [ghidra/README.md](../ghidra/README.md).

The MIPS binaries go through the pipeline in [AGENTS.md](../AGENTS.md#5-reverse-engineering-toolchain--pipeline) or Ghidra's stock MIPS support. The BUZZ transform microcode (`ucode/ODSY/buzz_xform.bin`, the kernel's copy `ucode/buzz_ucode_ip30.bin`, and the field diagnostics' `diagxform.bin`) is not MIPS code, and no stock Ghidra processor reads it. `ghidra/processors/odsy-buzz/` is a Ghidra extension that disassembles and decompiles it. Built and tested with Ghidra 12.1.3.

| Path | What it is |
|---|---|
| `data/languages/odsy_buzz.slaspec` | The SLEIGH spec: fields, display, units and timing |
| `data/languages/odsy_buzz.{ldefs,pspec,cspec}` | Language `ODSY-BUZZ:BE:16:default` |
| `ghidra_scripts/BuzzImport.java` | The import recipe, run as a pre-script on a raw import |
| `tests/run-ghidra.sh`, `tests/*.java` | Import the three images and dump listings, functions and decompiled routines |
| `tests/check.py` | Compares those dumps with `scripts/buzz_ucode_disasm.py` and the documents |

## How the decode works

A record is 96 bits, six big-endian halfwords; bits 95:94 are never set ([ucode/buzz_isa.md](../ucode/buzz_isa.md#instruction-fields-provisional)). Ghidra only addresses units of 1, 2, 4 or 8 bytes, so:

- code space `code` has an 8-byte unit holding record bits 63:0, one record per address. Ghidra's addressable word offset is the record number, so labels read `entry_214`, `prog_1520_loop` and so on. The listing column shows the byte offset, eight times the record number.
- The import script writes bits 93:64 (fields `a`, `r1`, `r2`, `r3`, `b`, `ln`, `rb`, `bx`) and a few derived bits into the context register at each record, along with the end-mark bookkeeping below.
- An instruction prints `rec`, `end`, `end2` or `seq3` (the end mark of bits 1:0), then every nonzero field under the listing's name. The idle record prints `idle`. Ghidra prefixes delay-slot records with `_`.

The script tells the images apart by record count: 2794 is `buzz_xform.bin`, 2266 is the kernel copy (records from 891 on sit 99 lower, and 792 to 890 are missing), and any other count gets end marks only, with no program table. A trailer shorter than a record is ignored.

Address spaces, each with names from the documents:

| Space | Contents | Names |
|---|---|---|
| `vreg` | register file, word 4r + lane | `R0_x` to `R31_w` |
| `pmem` | parameter memory, one word per address | `pm_000` to `pm_3ff`; the constants at 0x1e0 to 0x1ef as `k_1`, `k_0_5`, `k_m1`, `k_0`, ... |
| `cmem` | colour unit memory, entry e at 4e | `col0_r` to `col127_a` |
| `inp` | slot s at 4s, operand k at 64 + k | `P_x`, `N_x`, `T_x`, `C_x`, `Mamb_x`, ..., `op0` to `op15` |
| `outw` | the vertex packet's words, volatile so every write survives | `word0` to `word31` |

Registers: `SEQ20` to `SEQ35` are the sequencer registers, with `SEQ31` and `SEQ32` the parameter and colour light bases. `AX`-`AW` is the issue latch, `BX`-`BW` the operand latch, `K` the factor, `F` the 0xe/6 factor, `INVW` the output stage's reciprocal, and `CSR`-`CSA` the colour unit's running result.

## What the semantics cover

The units follow [ucode/buzz_isa.md](../ucode/buzz_isa.md), passes 12 to 18. Each constructor carries its label from there as a comment. The latch-and-fire timing is modelled as delay lines that every record shifts by one before its units run:

- a fired product reaches port V and the scalar unit six records later, and the output stage ten;
- a load reaches port V seven records later;
- a scalar result reaches port P and the output stage four records later;
- a parameter read reaches port P two records later;
- a lane read reaches the scalar unit one record later;
- an output-stage result reaches port V seven records later.

Each slot has a valid flag. A unit whose slot is empty under the rules takes `in_NOSRC` in the decompiler, the `-` of `scripts/buzz_ucode_dataflow.py`. Inside a routine the flags are constants and fold away. At a routine entry they are what the routine before left, so they show as `in_` inputs: a routine reads its predecessor's products the way the sequencer runs them.

| Unit | Modelled (label in buzz_isa.md) | Named pcodeop (unknown) |
|---|---|---|
| Vector unit | issue, fire on bit 44 and after an issue, slot and register loads, lane merge, the r1/r2 read rule (lanes x to z from r1, w from r2), operand loads fill every lane (all inferred) | none |
| Scalar unit | codes 8 pass, 1 reciprocal square root, 0xc and 4 negate, 0xd and 5 times K, 0xe and 6 times F; the operand bit and the store exception (all inferred) | `scalar_table` for 0xb and 3 (one function, shape open), `scalar_op2` for 2, `scalar_op` for any other code |
| Factor K | d2 bit 7 with its source order (inferred) | none |
| Parameter memory | reads, stores of the lane read, bit 9 adding `SEQ31` (inferred) | none |
| Write ports | port V with its output-stage fallback, port P sources b = 0 and 2 (inferred) | `portp_source` for b = 1 and 3 |
| Output stage | 0x2b and 0x33 form 1/w, 0x10 forms it without a word, 0x46, 0x26, 0x44 and 0x24 multiply by it, 0x25 sends it, 0x08 consumes; word bit 4 from bit 16 (established) | `stage_op(code, x)` for 0x21, 0x23, 0x27, 0x2c, 0x90, 0xa1, 0xa3, 0xa6 and 0xc6; `packet_header`, `packet_last` for the framing |
| Colour unit | entry, light-relative bit, store, operation bits 0x20, 0x10, 0x40, 0x80 and 0x08 (inferred) | `colour_assemble` (bit 2, lane order unknown), `colour_send` and `colour_send_assembled` (bit 1, word packing unknown), `colour_op` for 0x48 |

Flow follows the end marks and the program table:

- End marks 1 and 2 return after four delay slots. Neither the next list entry nor the next command is in the program.
- A value-3 mark inside a table program continues after its delay slots at the program's loop record (sequencer 0x2a) or exit record (0x2c). The choice is `seq_take_exit()`, so the decompiler shows the program as a loop over vertices.
- Outside a known program, including every value-3 mark of `diagxform.bin`, a value-3 mark returns like an end mark.
- Two kinds of mark are shown without flow, because Ghidra cannot nest delay slots or branch into one. The first is a mark inside an earlier mark's delay slots (record 118 of `buzz_xform.bin`, 1610 of `diagxform.bin`). The second is a program's patch record (255), the end mark the host copies over the value-3 mark.

Functions: a function at each table program's 0x29 record, then at record 0, five records after every end mark, at the libGLcore list entries and at the eight opcode entries, unless a program's flow already covers the record. Those inside a program (1545 inside 1520, for example) are labelled entry points in that function.

Not modelled: the patching of a program's value-3 mark and the overlay paging (Ghidra shows the image, not the 2048-word RAM). The sequencer registers' effect on the colour format (0x22 to 0x25) is not modelled either. Nothing models rounding: products and sums are IEEE single, while [ucode/buzz_isa.md](../ucode/buzz_isa.md#precision) infers a 22-bit truncating sum at 2^17.

## Build and run

From the repository root, with `root/` populated and Ghidra's `support/` directory (`sleigh`, `analyzeHeadless`) on `PATH`:

```sh
ghidra/processors/odsy-buzz/tests/run-ghidra.sh .cache/odsy-buzz     # needs Ghidra
python3 ghidra/processors/odsy-buzz/tests/check.py .cache/odsy-buzz  # needs Python 3 only
```

`run-ghidra.sh` installs the module as a user extension in a temporary settings directory, compiles the spec and imports each image. With no local Ghidra, the same commands run in any container that has Ghidra on `PATH` and the workspace mounted as the working directory. A `root/` that is a symlink must resolve inside the container.

To use the module interactively, copy or link `ghidra/processors/odsy-buzz` into Ghidra's `Extensions` directory and run `sleigh` on the spec. Then import an image with the recipe, from the GUI (Raw Binary, language `ODSY-BUZZ:BE:16:default`, then run `BuzzImport.java` from the Script Manager) or headless:

```sh
analyzeHeadless PROJDIR PROJ -import ucode/ODSY/buzz_xform.bin -loader BinaryLoader \
  -processor ODSY-BUZZ:BE:16:default \
  -scriptPath ghidra/processors/odsy-buzz/ghidra_scripts -preScript BuzzImport.java
```

Run the script before auto-analysis. It replaces the raw block with the code block and the data spaces, sets the context, decodes every record, and creates the labels and functions.

Reading the decompiler output: a routine's results are its writes to `vreg`, `pmem`, `cmem` and `outw`. A register write at the end of a routine is a store to `vreg`, so it survives. A product still in flight when a routine ends belongs to the next routine and does not appear. Run the routine that follows it, or read its `in_DQ`/`in_VQ` inputs.

## Acceptance results

From `check.py` against IRIX 6.5.30m `buzz_xform.bin`, the kernel copy and the 6.5.15 `odydiags` `diagxform.bin`:

- **(a) passes.** All 2794, 2266 and 2021 records match `scripts/buzz_ucode_disasm.py` field for field, end marks and idle records included.
- **(b) passes.** All 128 entries of the routine table in [ucode/buzz_routines.md](../ucode/buzz_routines.md#routines) are found in `buzz_xform.bin`: 102 as function entries, the rest as records inside a table program's flow. The same holds for all 119 kernel records that the copy holds.
- **(c) passes.** The decompiled routines show the documented arithmetic:
  - Clip-plane routine 0: `R27_x` to `R27_w` are the modelview rows R9 to R12 against `P`, and R26 takes plane B from `pm_124` to `pm_127`.
  - Unlit program 214: `word3 = 1.0 / (R3 . P)`, and words 5, 6 and 4 are the R0, R1 and R2 products times it, once before the vertex loop and once in it.
  - Normalize program 1520: the eye normal from R13 to R15 against `N`, `1.0 / SQRT(|n|^2 + R17_w^2)` from code 1, code 6 scaling the specular dot against R18 by it, and code 3 taking that result plus `R16_w * R18_w`, the 8 + s term.

  `check.py` resolves the decompiler's temporaries before matching, and it fails if a row, register or input is swapped.

One reading the model makes visible: in program 1520 the colour unit's operation 0x58 at record 1535 multiplies by the product reaching the output stage, the unscaled L.n fired at 1525. That follows the operation-bit reading of pass 13. Pass 17 says code 6's scaled N.L is what the colour unit needs. The two readings disagree for this record, and the module follows pass 13.
