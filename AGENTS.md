# SGI VPro (Odyssey, odsy) reverse engineering

This repository reverse-engineers the SGI VPro (Odyssey, `odsy`) graphics subsystem. It publishes the result as C headers and notes for emulator authors, FPGA builders and the vintage SGI community. Layout and working style follow Dominik Behr's [gr2](https://github.com/techomancer/gr2) and [gr4](https://github.com/techomancer/gr4). Where this file is silent, do what gr4 does.

## 1. The board

VPro is the V6, V8, V10 and V12 line, used in the Octane2 (IP30) and in IP35 systems such as the Fuel, Tezro and Onyx 350. The software calls the driver `odyssey` (`odyssey.a`, `odyssey.so`). The first configuration read is a V12 Octane2 on IRIX 6.5.30m. Other boards and hosts are separate configurations, and a fact from one does not fill a gap in another.

The software on that install has an IP30 kernel driver, three `libGLcore.so` ABIs (o32, N32, 64-bit), IrisGL libraries, an X server module and a transform microcode image. **BUZZ** (the graphics ASIC) and **PB&J** (inferred to be the display back end behind the display FIFO) are names from the software. They are not findings until a header gives them a labelled description.

Label every fact **established** (read directly, with function, offset or path), **inferred** (with the reasoning) or **unknown**. Anything unlabelled is unknown. Do not fill gaps from memory, from other SGI graphics families or from other emulators.

## 2. Binaries and public sources

Proprietary SGI binaries are not tracked. Copy them from an authentic IRIX distribution into the gitignored `root/` as [evidence/irix-files.md](evidence/irix-files.md) lists. The tracked relative symlinks below resolve once `root/` is filled. Disassembly, decompiled C, headers and notes derived from the binaries are committed. Flat `*_disasm.txt` and `*_dwarfdump.txt` dumps are gitignored.

| Directory | Files | Target in `root/` | DWARF (6.5.30m) |
|---|---|---|---|
| `software/kernel/ip30/` | `odyssey.a` members (`odsy_*.o`), `kernel.o`, `gfx.o`, `rrm.o`, stub archives | `usr/cpu/sysgen/IP30boot/` | all 32 objects |
| `software/opengl/` | `libGLcore.so` (64-bit), `libGLcore_n32.so`, `libGLcore_o32.so`, `libGL.so` | `usr/gfx/arch/IP30ODSY64/`, `IP30ODSY32/`, `IP30ODSY/` | 64-bit, N32 and libGL; o32 stripped |
| `software/irisgl/` | `libgl.so`, `libfm.so` | `usr/gfx/arch/IGLOO32/`, `usr/lib32/` | yes |
| `software/xsgi/` | `odyssey.so`, `glx.so`, `Xsgi` | `usr/lib/X11/dyDDX/`, `usr/gfx/arch/GENERIC/` | stripped; dynamic symbols only |
| `software/ucode/` | `ODSY/` (`buzz_xform.bin`, `vof/`), `buzz_ucode_ip30.bin`, `buzz_ucode_ip35.bin` | `usr/gfx/ucode/ODSY/`, `ODSY-kernel/` | data |
| `software/firmware/` | `IP30prom.bin` | `usr/cpu/firmware/` | data |

The 6.5.30m DWARF holds compile units, function and variable names and line tables only. `dwarfdump -i` finds no structure, member or base-type entries, so layouts are recovered from code. `pyelftools` cannot read the 64-bit DWARF header; the extractor uses the symbol table there. The install has no VPro register-dump or diagnostic tool: `/usr/stand/ide` carries only the textport part of the driver. The DWARF column is what `map_binaries.py` reported on 6.5.30. Fill in a 6.5.0 column when you have a 6.5.0 install, since those binaries carry debug info.

Public source trees are submodules in `references/code/`. The OpenBSD sgi port is pinned to its last commit (7011342f6a72, May 2021) and holds a small text-console VPro driver. For the Octane, Linux contributes only crossbar enumeration; fetch it with `git submodule update --init --depth 1 linux`. [devices/buzz/README.md](devices/buzz/README.md) section 11 records what each part programs against the binaries. `references/documents/` holds full copies of the published patents, papers, reports and manuals that [references/documents/published-sources.md](references/documents/published-sources.md) cites, with SHA-256 values in [references/documents/README.md](references/documents/README.md). They are designers' published statements, graded as that file says.

## 3. Deliverables

The code is the document. Hardware facts live in `devices/<unit>/registers.toml`, one graded and sourced file per block. `generated/` (C, Rust, Python, JSON and XML) and every `devices/*/registers.md` are generated from them and never edited by hand. To change a fact, edit the `registers.toml`, then run `retools/tools/defs/defs-gen`. `retools/tools/defs/defs-check --build` checks the sources and their leak rules. CI runs `retools/tools/defs/ci-check`.

Prose goes in the commented headers (`devices/buzz/BUZZ.h`, `devices/pbj/PBJ.h`, `devices/display/DISPLAY.h`), each unit's `README.md`, and pages under `devices/`, `software/` and `evidence/`. Every definition says how it was derived and how sure it is. [evidence/coverage.md](evidence/coverage.md) maps what is written and what is missing, with open problems in priority order. Driver structures are captured in `software/kernel/ip30/include/odsy_kern.h` and `software/opengl/include/glcore_odsy.h`.

## 4. Tools

Scripts come from the `retools/` submodule: shared tools in `retools/tools/`, VPro ones in `retools/tools/odsy/`. Run them from the repository root through `retools/tools/re-run`. Only the inventory config (`tools/config/inventory-config.json`) and `tools/odsy_checks.py` live here, with no local copies or symlinks of shared tools. [evidence/tooling.md](evidence/tooling.md) and [tools/ghidra/README.md](tools/ghidra/README.md) cover the BUZZ microcode Ghidra module. Ghidra scripts for IRIX code, and the rules for choosing between them and the pipeline, are in [retools/ghidra/scripts/README.md](retools/ghidra/scripts/README.md).

The toolchain needs `dwarfdump` (build the `libdwarf` submodule), big-endian MIPS binutils (`MIPS_OBJDUMP` and `MIPS_READELF` name another prefix), `m2c` (`-t mipsn32` for N32, `-t mips` for o32 and 64-bit), `spimdisasm` and Python 3 with `pyelftools`. Initialise only what you need: `git submodule update --init references/code/m2c references/code/spimdisasm references/code/libdwarf`. The scripts descend from gr4's and carry its BSD-3 notice ([retools/tools/LICENSE-gr4](retools/tools/LICENSE-gr4)).

- `map_binaries.py`, `disasm_kernel.py`, `resolve_got.py`, `clean_asm.py`: catalogue the binaries and turn kernel objects into m2c-ready assembly.
- `extract_libglcore_odsy.py`, `extract_odsy_ddx.py`: extract compile units, types and functions from `libGLcore.so` and the X module. A binary without DWARF falls back to its symbol table.
- `analyze_fifo.py`, `extract_gl_tokens.py`, `fifo_words.py`: find accesses to a hardware window and the words a routine stores to a command window. They take the address window as an argument; none is built in.
- `texfmt_sweep.py`, `glcore_probe.py`: run libGLcore routines under Unicorn. The result is the shipped code's behaviour, not the board's.
- `inventory.py`: measure coverage from the binaries and write `evidence/inventory/*.tsv`.

## Evidence order

Take a register or behaviour fact from the highest source that states it, and grade it by that source. The order, the reset-value rules and the checks that enforce them are in [retools/tools/README-analysis.md](retools/tools/README-analysis.md#evidence-order). In short: IRIX source, shipped binaries, public Linux, OpenBSD and NetBSD drivers (established once the IRIX source confirms them), published manuals, then other projects' notes and emulator code, which may confirm or contradict a fact and never supply one. Emulator runs are model behaviour, never hardware evidence. A physical hardware read is a last resort and needs the repository owner's approval.

## 5. Evidence: software only, any source

No hardware is available. Do not plan, request or wait for measurements on a real machine. Readers may open every shipped binary on every IRIX release and any disassembly of it, the public IRIX source tree (`irix-657m-src`), vendor specifications (including embedded source or HDL pages), public drivers and emulators, manuals and release notes, and published output from real machines (`hinv`, `gfxinfo`, ide transcripts, X server logs, newsgroup and forum posts).

Running a shipped routine in `retools/tools/mips_shim.py` shows what that software computes. It says nothing about the board, so label it as the software's behaviour.

Write findings in your own words. Never paste vendor source, HDL, comments, macro bodies or proprietary binaries into the repository. Cite IRIX source by path in the tree. Symbol names from a shipped binary and names in published headers and manuals are fine.

- Before you call a fact unknown, search the binaries, the published documents and captures, the PROM code and the IRIX source tree, and list those routes among the routes tried.
- Use "established" only for what you read in full: the whole function body or table in a binary, the passage in a published document, or the IRIX source passage that defines the fact. A reading built from call lists, store summaries, a sibling build or a name is "inferred". Never reword an entry to change its grade. Independent audits sample entries against the binaries, and their rates are published beside the coverage figures.
- An entry written quickly and not yet checked ends with "Unverified." in place of "Inferred." or "Established.". It grades at most `located`. When you re-read it, correct it and change the label.
- Some facts no software reveals, such as the reset value of a register no driver reads. When every route is exhausted, write "unknown: no shipped software or published source depends on it" and list the routes. A reader who needs a value then chooses one and documents the choice. Never write "needs capture".
- An open question is not a stopping point. Record it in `questions/README.md` with every route tried and the next one, then carry on. When it is answered, move it into the owning header or page and delete the entry.

## 6. Done, and how to work

A coverage row is done when every inventory entry in its area (`evidence/inventory/`) is `understood` or `no-software-dependency`. `understood` needs a label, a role and hardware effect, and a citation specific to the item (offset, address, callee or archive member), in an entry whose subject the item is. Other names in an entry are mentions. A function is understood only in the binary the entry cites, plus builds with identical code. More than five entries sharing one sentence pattern count at most as `located`, so write each item its own sentence. `located` and `named-only` are partial. [evidence/inventory/README.md](evidence/inventory/README.md) has the exact rule. The repository is finished when every inventory table is done, not when the rows look full.

- Deep readers take the Priority list in `evidence/coverage.md` in order, and take the `mmio.tsv`, `tokens.tsv`, `ioctls.tsv` and `ucode.tsv` rows of each item to `understood`.
- Bulk readers pick rows below `understood`, `undocumented` first, one cluster at a time (rows sharing a function, register group or block). Start with `mmio.tsv` and `tokens.tsv`, then the `board-` functions in `functions.tsv`. A `named-only` or `located` row needs its role, hardware effect and derivation written. Backfill `evidence/coverage.md` the same way.
- Regenerate the inventory with `retools/tools/inventory.py` and commit the changed `evidence/inventory/` and `evidence/coverage.md` in the same commit as the doc or header that moves the rows. A row you claim must show `understood` in the regenerated file. If it does not, the entry lacks a label, citation or role, names more than three items on a line, or does not name the thing. If the script mis-detects a row, fix `tools/config/inventory-config.json` and say why in the commit. `inventory.py` is shared byte for byte with the other graphics workspaces; this family's settings are in that config.
- Findings go in the headers and pages under `devices/`, `software/` and `evidence/`, labelled with their derivation: binary and release, function or offset, or the published document. Findings may rest only on IRIX binaries, the IRIX source tree, published documents, captures, or public open-source code cited by project, revision and file.
- Readers of the headers and docs should not need to read the binaries.
- When you finish a task, regenerate the inventory and take the next entries below `understood`. Hand off only when your area meets the definition above or you must stop. Then say in `questions/README.md` where you stopped and what comes next.

Commit small and often, straight to `main`. Subjects are lowercase, component-prefixed imperatives (`software/kernel: label the display-mode field`). Bodies say why.
