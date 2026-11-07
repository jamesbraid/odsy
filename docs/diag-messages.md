# Diagnostic and kernel-driver messages

The table [diag-messages.tsv](diag-messages.tsv) lists every call that prints in two shipped
programs of IRIX 6.5.30m: the compositor test program `usr/diags/compositor/bin/sting`, and the
Odyssey kernel driver `usr/cpu/sysgen/IP30boot/odyssey.a`, one row per call site. It is generated
by `scripts/diag_messages.py`; rerun that script to regenerate it, do not edit the table.

## Coverage

- **Compositor test program (`sting`):** 161 call sites in 37 routines. 17 print (`printf`,
  `fprintf`, the `dl_output_*` output helpers); 144 format a path or name into a buffer with
  `sprintf`, `vsprintf` or `snprintf`, which the table keeps with `output` set to `buffer`.
- **Odyssey kernel driver:** 389 call sites in 138 routines of 23 of the 29 members of
  `odyssey.a`. 387 print with `cmn_err`, and 6 with the kernel's `printf`; 2 format into a buffer.
  The six members with no printing call are not listed (their routines print nothing).
- **Not covered: `odydiags` (6.5.15, `usr/diags/ody/odydiags`).** Its root link is an absolute
  path into a store that the reverse-engineering container cannot mount, so the binary cannot be
  read there. Its message strings and call sites are open; the route is to make that store
  readable to the container, then run the same script with a new target.
- **Not covered: the IP35 kernel objects** (`odsy_kernel_ip35`). They are the same driver in
  another build; they are not read here, so their messages may differ.
- **Not covered: `kernel.o`, `gfx.o` and `rrm.o`** next to the driver. They are shared graphics
  code, not Odyssey code.

## Columns

- `hardware`: `yes` when the printed message names board hardware (register, DMA, interrupt,
  PLL, DAC, I2C, DDC and similar, matched as whole words in the message). `hw_words` lists the
  words. Hardware rows sort first.
- `output`: `printed` for a call that writes text out; `buffer` for a call that formats into
  memory, which prints only if the buffer is printed later (not followed here).
- `severity`: for `cmn_err`, the level from `a0` with its CE_ name: 4 is `CE_WARN`, 1 `CE_ALERT`, 5 `CE_NOTE`, 7 `CE_DEBUG`, 0

  `CE_PANIC`. Flag bits (0x8, 0x10, 0x20 and so on) are masked off and not shown. For `fprintf`,
  the stream when it is a named symbol (`stderr` or `stdout`); `stream not named` when the stream
  is a pointer taken from a structure.
- `message`: the C string the call passes, with `\n` shown as the two characters. `(not resolved)`
  when the format argument does not trace to a constant in the routine.
- `condition`: what the call's routine has to do before the call runs. A call is gated by a
  conditional branch when it can be reached only through one arm of that branch. The text gives the
  register test that holds on the path, and the branch that makes it. When the branches join before
  the call, no single branch decides it: the text says so, and says whether every return path runs
  the call.
- `grade`: `established` when the format and the severity were read from the instructions and
  the gating comes from a complete flow graph of the routine. `inferred` when the format or the
  stream did not trace, when the routine has an indirect jump the flow graph does not follow, or
  when the string is empty in the file.

## Method

The generator takes every routine of the target from the fact sheet
(`scripts/facts.py`), finds the calls that name a printing routine, and then:

1. Resolves the format argument by walking the instructions back from the call, through the
   delay slot (which runs before the callee). A register set in more than one place is resolved
   only when every incoming path gives the same value. Relocated addresses in the kernel objects
   come from the relocation records: a `gp`-relative load of a `.srdata` slot gives the `.rodata`
   address the slot holds, and the offset in the instruction is taken from the object's `gp`
   base. Linked addresses come from the file image.
2. Reads the C string at that address.
3. Builds the basic blocks of the routine, the edges between them and their dominators. A
   conditional branch gates the call when the call's block is unreachable from the entry once the
   edge along one arm is removed, so the call needs the other arm. A jump register's delay slot
   is treated as the branch's arm. A jump that lands on a branch's delay slot runs that instruction
   and then the next one, not either arm of the branch, so the landing is a copy of the slot's block
   that only falls through.

The fact sheet's argument values are not used for the format. For a relocatable object they drop
the immediate that a delay slot adds to a relocated address, so a format such as `.rodata+128`
reads as `.rodata`. The generator resolves the delay slot itself. That defect is in
`scripts/facts.py` and is not fixed here.

## Hardware-facing messages

Ninety-three rows name board hardware: seven in `sting` and 86 in the kernel driver. Three groups
account for most of the kernel rows.

- **Display and clock programming** in `odsy_brdmgr.o`: `odsy_LoadDCD2Regs` (the DCD2 output
  control, horizontal timing, RAMDAC and TMDS control writes, each on a failed write),
  `odsyLoadTimingTable` (the PLL and AMI PLL register writes, the "Reg 0x1" to "Reg 0x5"
  writes), and `odsy_reconfigDCD2FPLD` (reset of register 1 and register 2).
- **DMA completion checks** in `odsy_dma.o`: `odsyDMAWait` compares the completed operation
  number with the requested one and with the read pointer, and reports outstanding sync DMAs.
  The timeout handlers `odsy_dmawait_timeout` and `odsy_dmawait_harmless_timeout` print an
  alert and a debug line.
- **I2C and DDC** in `odsy_ddc.o` and `odsy_compositor.o`: the reset op-code failure and the
  I2C passthrough enable message.

Each is a single row with its routine, call address and gate in the table.

## What the table does not show

- **Caller-supplied formats.** The 15 `vsprintf` calls in the `dl_output_*` helpers of `sting`
  format a string the helper receives as an argument. Those rows show `(not resolved)`. The
  literal formats that callers pass are not joined to these rows.
- **Stream names.** Thirteen `fprintf` calls in `sting` have a stream that does not trace to a
  named symbol; the table says `stream not named`. The one traced (the call at `0x1001a77c` in
  `dl_output_init_crashlog`) takes a `FILE` pointer from a field of a structure.
- **Unresolved formats.** 32 rows have `(not resolved)`, graded `inferred`: the 15 wrapper rows
  above, 14 in `odsyRestoreVB`, where the search could not trace the format across the routine's joins, and one
  each in `odsy_hpipe_discover`, `gf_OdsyInitialize` and `odsy_ProbeRainier`. Those three were not
  traced further.
- **Dead code.** No row is dead code: every call in the table is reached from the routine's entry.
  A call that no branch reaches is marked `dead code` in the condition column.
