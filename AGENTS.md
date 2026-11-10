# SGI VPro (Odyssey, odsy) Reverse Engineering Project

This project reverse-engineers the SGI **VPro (Odyssey)** graphics subsystem (internal name **odsy (`odyssey.a`, `odyssey.so`)**).
The goal is to document its architecture as C headers and notes, so that emulator authors, FPGA builders and the vintage SGI community can work from published findings.

The layout and working style follow [gr2](https://github.com/techomancer/gr2) and [gr4](https://github.com/techomancer/gr4) by Dominik Behr. Where this file is silent, do what gr4 does.

---

## 1. Board Overview

VPro is SGI's workstation graphics line of the V6, V8, V10 and V12 boards, used in the Octane2 (IP30) and in IP35 systems such as the Fuel, Tezro and Onyx 350. SGI's own short name for the board is **odsy** (the software calls the driver `odyssey`). The first configuration this project reads is a V12 Octane2; other boards and hosts are separate configurations, and a fact from one does not fill a gap in another.

The software on the reference install (IRIX 6.5.30m) spans an IP30 kernel driver (`odyssey.a`), three `libGLcore.so` ABIs (o32, N32, 64-bit), IrisGL libraries, an X server module and a transform microcode image.

Facts in this file are labelled **established** (read directly from a binary, with the function or offset), **inferred** (a reasoned reading, with the reasoning) or **unknown**. Anything unlabelled is unknown. Do not fill gaps from memory, from other SGI graphics families or from other emulators.

### Major ASIC and block roles

- **BUZZ**: the graphics ASIC named in the board inventory. A transform program, `buzz_xform.bin`, is uploaded by the driver. Internal role and registers: unknown.
- **PB&J**: a second chip named in the board inventory. Inferred to be the display back end behind the display FIFO; see `PBJ.h`.
- **Board memory**: bank count and timing are reported in the inventory. Organisation and addressing: unknown.
- **Display output**: single- and dual-channel options. Output hardware and timing: unknown.

Every role above is a name from the software, not a finding. Replace each with a labelled description as headers land.

---

## 2. Project Binaries & Evidence

For licensing reasons proprietary SGI binaries are **not checked into source control** (the local `root/` tree is gitignored). Copy them from an authentic IRIX distribution into `root/` following [IRIX_FILES.md](IRIX_FILES.md). Disassembly, decompiled C, headers and notes derived from them are committed.

The subdirectories below contain relative symbolic links resolving into `root/` (they are tracked in git and resolve once `root/` is filled; the `links` block in IRIX_FILES.md lists them):

| Directory | Symlinked files | Target in `root/` | DWARF status (6.5.30m) |
|---|---|---|---|
| `odsy_kernel/` | `odyssey.a` members (`odsy_*.o`), `kernel.o`, `gfx.o`, `rrm.o`, `gfxs.a`, `gfxstubs.a`, `odysseystubs.a` | `usr/cpu/sysgen/IP30boot/` | **DWARF** in all 32 objects |
| `libglcore/` | `libGLcore.so` (64-bit), `libGLcore_n32.so`, `libGLcore_o32.so`, `libGL.so` | `usr/gfx/arch/IP30ODSY64/`, `IP30ODSY32/`, `IP30ODSY/` | **DWARF** in the 64-bit and N32 libGLcore (N32: 200 compilation units) and libGL; o32 stripped. `pyelftools` cannot read the 64-bit DWARF header, so the extractor uses its symbol table; `dwarfdump` shows no type entries either |
| `irisgl/` | `libgl.so`, `libfm.so` | `usr/gfx/arch/IGLOO32/`, `usr/lib32/` | **DWARF** (160 and 61 compilation units) |
| `ddx/` | `odyssey.so`, `glx.so`, `Xsgi` | `usr/lib/X11/dyDDX/`, `usr/gfx/arch/GENERIC/` | Stripped; dynamic symbols only (`odyssey.so`: 1010 functions) |
| `ucode/` | `ODSY/` (`buzz_xform.bin`, `vof/`), `buzz_ucode_ip30.bin`, `buzz_ucode_ip35.bin` | `usr/gfx/ucode/ODSY/`, `ODSY-kernel/` (the kernel array, see `ucode/buzz_ucode.md`) | Data |
| `firmware/` | `IP30prom.bin` | `usr/cpu/firmware/` | Data |

The 6.5.30m DWARF in the kernel objects and the N32 libGLcore holds only compile units, function and variable names, and line tables: `dwarfdump -i` finds no structure, member or base-type entries. Structure layouts have to be recovered from the code. The install carries no VPro register-dump or diagnostic tool: `/usr/stand/ide` is the IP30 IDE with only the textport part of the driver, and `/usr/diags` holds the compositor and IR tools.

DWARF status is what `retools/tools/odsy/map_binaries.py` reported on the primary release (IRIX 6.5.30); fill in the 6.5.0 column when you have a 6.5.0 install, since 6.5.0 binaries carry debug info.

Other public sources in this repository:

- `openbsd/`: the OpenBSD sgi port, pinned to the last commit before it was retired from the tree (7011342f6a72, May 2021). The VPro driver is `sys/arch/sgi/xbow/odyssey.c` with `odysseyreg.h` and `odysseyvar.h`, the manual page is `share/man/man4/man4.sgi/odyssey.4`, and the raster-op values are in `sys/arch/sgi/dev/gl.h`. It is a small text-console driver (fill, copy, glyphs, gamma ramp), so it covers the command FIFO, the display FIFO and the start-up sequence only. `docs/buzz.md` section 11 records what each part programs against the binaries.
- `linux/`: for the Octane (IP30), only crossbar enumeration, not a VPro driver: `arch/mips/include/asm/xtalk/xwidget.h` (widget header offsets, widget identity table with the Odyssey entry), `arch/mips/sgi-ip30/ip30-xtalk.c` (widget numbers, window addresses, link-alive probe) and `arch/mips/pci/pci-xtalk-bridge.c`. Fetch it shallow: `git submodule update --init --depth 1 linux`.
- `docs/sources/`: full copies of the published patents, papers, technical reports, manuals and white papers that [docs/published-sources.md](docs/published-sources.md) cites for VPro, one entry each with its SHA-256 in [docs/sources/README.md](docs/sources/README.md). These are published designers' statements (labelled "established (published)" or "inferred" as that file says), not vendor source. Documents already in the `sgi-docs/` submodule are cited there, not copied.

---

## 3. Deliverables: The Hardware Headers

Our primary output is a set of C header files at the repository root, one per chip or block, in the style of gr2 and gr4. **The code is the document.** Each header holds register offsets and fields, packet and token formats, state machines and constants, with a comment on every definition saying how it was derived and whether it is established, inferred or unknown.

Headers at the repository root:

1. **`BUZZ.h`**: the graphics ASIC: registers, command and FIFO formats, texture and raster state, transform program interface. `BUZZ_DECODE.h`, `TEXTURE_DECODE.h` and `DMA_DECODE.h` are the publish-safe decode views of its command, texture and DMA words.
2. **`PBJ.h`**: the second chip, the display back end (`PBJ_DECODE.h` is its decode view).
3. **`DISPLAY.h`**: display channels, mode word, colour formats, cursor and scanout (`DISPLAY_DECODE.h` is its decode view).

Still planned: **`ODSY.h`**, the overall address map, board identification, configurations and common types. `retools/tools/defs/gen_decode_rust.py` generates Rust register modules under `generated/` from the decode headers.

[docs/coverage.md](docs/coverage.md) is the map of what is written and what is missing, with the open problems in priority order. Prose that does not fit a header goes in `docs/` chapters.

---

## 4. Software Driver Headers

Local headers capture internal driver structures:

- `odsy_kernel/include/odsy_kern.h`: kernel driver structures (attach state, ioctl arguments, DMA buffers, context and swap state).
- `libglcore/include/glcore_odsy.h`: OpenGL driver context and hardware state shadowing.
- `ddx/include/odsy_ddx.h`: X server module structures (screen, window and GC private data).
- `irisgl/include/igloo.h`: IrisGL layer structures and dispatch.

---

## 5. Reverse Engineering Toolchain & Pipeline

Install these on your workstation:

- **`dwarfdump`**: build `libdwarf-code` (submodule) so that `libdwarf-code/build/src/bin/dwarfdump/dwarfdump` exists. It parses SGI MIPS DWARF-2.
- **MIPS cross binutils**: `objdump`, `readelf`, `nm`, `gcc` for a big-endian MIPS target, normally `mips-unknown-linux-gnu-`. The scripts also accept `mips64-linux-gnuabi64-` and `mips-linux-gnu-`; set `MIPS_OBJDUMP` or `MIPS_READELF` to name another.
- **`m2c`**: the assembly-to-C decompiler in the `m2c` submodule, run as `m2c/m2c.py -t mipsn32` (N32) or `-t mips` (o32, 64-bit objects).
- **`spimdisasm`**: the `spimdisasm` submodule, for object-file disassembly and symbol recovery.
- **Python 3** with `pyelftools` (the scripts import `elftools`).

Initialise only the submodules you need: `git submodule update --init m2c spimdisasm libdwarf-code`.

Scripts come from the `retools/` submodule: shared tools in `retools/tools/`, Odyssey-specific ones in `retools/tools/odsy/`. Run them from the repository root. This repository keeps no local copies or symlinks of them; only its own `scripts/` files (inventory config and `odsy_checks.py`, the checks specific to these headers) live here. The publish-safety check and the Rust register generator are the shared decode-header tools in `retools/tools/defs/`, configured by `defs.toml`: `retools/tools/defs/check-publish-safe.py --config defs.toml` and `retools/tools/defs/gen_decode_rust.py --config defs.toml [--check]`.

- `map_binaries.py`: catalogue every linked binary (sections, functions, DWARF compilation units) into `binaries_manifest.json`.
- `disasm_kernel.py`: disassemble the kernel `.o` objects into m2c-ready assembly under `odsy_kernel/disasm/`. Unpack archives (`.a`) with `ar x` first.
- `resolve_got.py`, `clean_asm.py`: resolve `$gp`-relative GOT loads to symbol names.
- `extract_libglcore_odsy.py`: extract compilation units, types and functions from `libGLcore.so` into `libglcore/asm/` and `manifest.json`, and write `libglcore/decompile_libglcore.sh`. A binary without DWARF falls back to its symbol table.
- `extract_odsy_ddx.py`: the same for an X server module, grouped by function-name prefix or by your own `ddx/groups.json`.
- `inventory.py` (config `inventory-config.json`): measure coverage from the binaries. It lists every binary, function, board offset, command word, ioctl and microcode routine in the in-scope files and marks each `documented`, `no-software-dependency`, `named-only` or `undocumented` by searching the docs and headers. Output is `docs/inventory/*.tsv` (see `docs/inventory/README.md`).
- `ghidra/`: the Ghidra tooling, including a processor module and import script for the BUZZ transform microcode with its acceptance tests (`ghidra/processors/odsy-buzz/`); [ghidra/README.md](ghidra/README.md) indexes it and [docs/tooling.md](docs/tooling.md) says how to build and use the BUZZ module.
- `analyze_fifo.py`, `extract_gl_tokens.py`: find accesses to a hardware address window in the assembly, and map the first FIFO word each decompiled GL function stores to that function. Both take the address window or FIFO address you found as arguments; none is built in.
- `fifo_words.py`: for one routine's address range in an IRIX shared object, list the words it stores to a command window in program order, with each value folded to a constant or shown as its source (a context field, an argument, a call result). Calls are named from their target address. `test_fifo_words.py` covers its folding rules.
- `texfmt_sweep.py`: run the four texture-format routines of a libGLcore build (GL internal format to board format index, index to component widths and size code, index to pixel class, index and format to class) for every input under Unicorn, in any of the o32, N32 and 64-bit builds, and compare builds; the table it feeds is `docs/texture-formats.md`.
- `glcore_probe.py`: run one routine of an N32 libGLcore under Unicorn with a zeroed (or all-ones) context record and print the context words, command-window words and calls it makes, for settling what a switch ladder or setter does with given arguments. It is software evidence of the shipped code, not of the board.
- `retools/ghidra/scripts/`: Ghidra headless scripts for IRIX code (gp and jump-table recovery, register-window stores, call edges, struct typing, bulk decompile), with the rules for choosing between Ghidra and the pipeline in [retools/ghidra/scripts/README.md](retools/ghidra/scripts/README.md). Shared, byte for byte, with the other graphics workspaces.

The scripts descend from gr4's and carry its BSD-3 notice ([retools/tools/LICENSE-gr4](retools/tools/LICENSE-gr4)).

---

## 6. Evidence: software only, any source

No hardware is available for this work. Do not plan, request or wait for
measurements on a real machine. Every question is answered from software and
published material, and a row is not finished while either still has
something to read.

Readers may open anything:

- every shipped binary on every IRIX release, and any disassembly or
  decompilation of it;
- the IRIX source tree linked from this repository;
- vendor specifications, including any embedded source code or HDL pages;
- public drivers and emulators: Linux, NetBSD, OpenBSD, MAME and others;
- manuals, release notes and man pages;
- published output from real machines: `hinv`, `gfxinfo`, `irsaudit`, ide
  diagnostic transcripts, X server logs and screenshots in newsgroup and
  mailing-list posts, web pages, archives and forums.

Running the shipped software under an emulator, to watch which registers it
touches and what it expects back, is also software evidence. Label what it
shows as the driver's expectation, not as proof of hardware behaviour.

Write findings in your own words. Never paste vendor source, HDL or
proprietary binaries into the repository.

Findings taken from the linked IRIX source tree are committed like any
other finding: restated in your own words and cited by path, as in
`<source path>` or `<source path>`, with the release
(a release). Each chip header lists the source paths it drew on in its
opening comment. Never copy code, comments, macro bodies or file layout. Where
a 6.5.30 binary confirms the same fact, cite both.

Before you call a fact unknown, search the linked IRIX source tree for the
device, its diagnostics and its PROM code, and list that search among the
routes tried. A question is not exhausted until the source has been read.

Label honestly. Use "established" only for what you read in full: the whole
function body, table or source passage. A reading built from call lists,
register-store summaries, a sibling build or a name is "inferred". Never
reword or reformat an entry to change its grade. Independent audits sample
entries against the binaries, and their measured rates are published beside
the coverage figures.

An entry that was written quickly and not yet checked against the binary or
the source ends with "Unverified." in place of "Inferred." or "Established.".
It grades at most `located`, whatever else it says, so the understood figure
counts only what has been read. When you re-read it, correct it and change the
label to established or inferred.

Some facts no software reveals, such as the reset value of a register no
driver reads. When every route is exhausted, label the fact "unknown: no
shipped software or published source depends on it" and list the routes you
tried. An emulator author then chooses a value and documents the choice. Never
write "needs capture".

An open question is not a stopping point. Record it in
`docs/open-questions.md` with every route already tried and the next one to
try, then carry on with other work. When a question is answered, move it into
the owning chip header or chapter and delete the entry.

## 7. When work is finished

A coverage row is done when every inventory entry in its area
(`docs/inventory/`) is `understood` or `no-software-dependency`. `understood`
means the entry for that item carries a label (established or inferred), a role
and hardware effect, and a derivation citation (release, binary or path,
offset, callee or source path) in the same entry. Naming an item, or listing it
with others, is not enough. `no-software-dependency` is the section 6 label
"unknown: no shipped software or published source depends on it", with the
routes tried. `located` (identity, address or size, and callers or sites cited,
behaviour labelled unknown) and `named-only` are partial. The repository is
finished when every inventory table reaches done, not when the rows look full.

When you finish a task, regenerate the inventory, then pick the next entries
below `understood` and carry on. Hand off only when your assigned area meets
the definition above, or when the session ends. In that case, say in
`docs/open-questions.md` where you stopped and what comes next.


A row becomes `understood` only through an entry whose subject it is: a table row whose first column is the item, a list item or heading that starts with it, or a header comment on it. That entry carries a label, a role and hardware effect, and a citation specific to the item (its offset, address, callee, archive member or source path, not just a release). Other names in the entry count as mentions. A function is understood only in the binary the entry cites, plus any build with identical code. When more than five entries share one sentence pattern, they count at most as `located`, so read each item and write its own sentence. [docs/inventory/README.md](docs/inventory/README.md) gives the exact rule.

---

## 8. Working on this repository

Workflow: populate `root/` (IRIX_FILES.md), run the scripts above, then read, write headers and docs, and regenerate the inventory.

Roles:

- **Deep readers** take the Priority list in `docs/coverage.md`, in order, and take the rows of `docs/inventory/mmio.tsv`, `tokens.tsv`, `ioctls.tsv` and `ucode.tsv` that belong to the item to `understood`, whatever their status now.
- **Bulk readers** pick rows below `understood` from the inventory, `undocumented` first, one cluster at a time (the rows that share a function, a register group or a block), starting with `mmio.tsv` and `tokens.tsv`, then the functions of `board-` roles in `functions.tsv`. A `named-only` or `located` row needs its role, hardware effect and derivation written, not another mention. Backfill `docs/coverage.md` area rows the same way.
- Every reader regenerates the inventory (`retools/tools/inventory.py`) and commits the changed `docs/inventory/` and `docs/coverage.md` in the same commit as the doc or header that moves the rows. A row you claim to have understood must show `understood` in the regenerated file; if it does not, the entry lacks a label, a derivation citation or a role, names more than three items on a line, or does not name the thing (`docs/inventory/README.md` gives the rule). If the script mis-detects a row, fix `scripts/inventory-config.json` and say why in the commit. `retools/tools/inventory.py` is shared, byte for byte, with the other graphics workspaces; what belongs to this family is in `scripts/inventory-config.json`.

Output rules:

- Findings go in chip headers at the repository root plus `docs/` chapters, written in your own words.
- Label every fact established, inferred or unknown, with its derivation: binary and release, function or offset, or the public source path.
- Update `docs/coverage.md` and the inventory (`retools/tools/inventory.py`) in the same commit as the finding.
- Commit disassembly, decompiled C and traces you produce as data; keep the proprietary binaries in `root/`. Flat `*_disasm.txt` and `*_dwarfdump.txt` dumps are gitignored.
- Commit what you cite: findings may rest on IRIX binaries or public sources only.

Downstream emulator projects consume the headers and docs; they should not need to read the binaries.

Commit small and often, straight to `main`. Subjects are lowercase, component-prefixed imperatives (`odsy_kernel: label the display-mode field`); bodies say why. Do not wait to batch work.
