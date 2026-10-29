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
- **PB&J**: a second ASIC named in the board inventory (version 1). Role: unknown.
- **Board memory**: bank count and timing are reported in the inventory. Organisation and addressing: unknown.
- **Display output**: single- and dual-channel options. Output hardware and timing: unknown.

Every role above is a name from the software, not a finding. Replace each with a labelled description as headers land.

---

## 2. Project Binaries & Evidence

For licensing reasons proprietary SGI binaries are **not checked into source control** (the local `root/` tree is gitignored). Copy them from an authentic IRIX distribution into `root/` following [IRIX_FILES.md](IRIX_FILES.md). Disassembly, decompiled C, headers and notes derived from them are committed.

The subdirectories below contain relative symbolic links resolving into `root/` (`scripts/populate-root` creates them from the `links` block in IRIX_FILES.md):

| Directory | Symlinked files | Target in `root/` | DWARF status (6.5.30m) |
|---|---|---|---|
| `odsy_kernel/` | `odyssey.a` members (`odsy_*.o`), `kernel.o`, `gfx.o`, `rrm.o`, `gfxs.a`, `gfxstubs.a`, `odysseystubs.a` | `usr/cpu/sysgen/IP30boot/` | **DWARF** in all 32 objects |
| `libglcore/` | `libGLcore.so` (64-bit), `libGLcore_n32.so`, `libGLcore_o32.so`, `libGL.so` | `usr/gfx/arch/IP30ODSY64/`, `IP30ODSY32/`, `IP30ODSY/` | **DWARF** in the 64-bit and N32 libGLcore (N32: 200 compilation units) and libGL; o32 stripped. `pyelftools` cannot read the 64-bit DWARF header, so the extractor uses its symbol table; `dwarfdump` shows no type entries either |
| `irisgl/` | `libgl.so`, `libfm.so` | `usr/gfx/arch/IGLOO32/`, `usr/lib32/` | **DWARF** (160 and 61 compilation units) |
| `ddx/` | `odyssey.so`, `glx.so`, `Xsgi` | `usr/lib/X11/dyDDX/`, `usr/gfx/arch/GENERIC/` | Stripped; dynamic symbols only (`odyssey.so`: 1010 functions) |
| `ucode/` | `ODSY/` (`buzz_xform.bin`, `vof/`) | `usr/gfx/ucode/ODSY/` | Data |
| `firmware/` | `IP30prom.bin` | `usr/cpu/firmware/` | Data |

The 6.5.30m DWARF in the kernel objects and the N32 libGLcore holds only compile units, function and variable names, and line tables: `dwarfdump -i` finds no structure, member or base-type entries. Structure layouts have to be recovered from the code. The install carries no VPro register-dump or diagnostic tool: `/usr/stand/ide` is the IP30 IDE with only the textport part of the driver, and `/usr/diags` holds the compositor and IR tools.

DWARF status is what `scripts/map_binaries.py` reported on the primary release (IRIX 6.5.30); fill in the 6.5.0 column when you have a 6.5.0 install, since 6.5.0 binaries carry debug info.

---

## 3. Deliverables: The Hardware Headers

Our primary output is a set of C header files at the repository root, one per chip or block, in the style of gr2 and gr4. **The code is the document.** Each header holds register offsets and fields, packet and token formats, state machines and constants, with a comment on every definition saying how it was derived and whether it is established, inferred or unknown.

Planned headers (none written yet; `docs/coverage.md` tracks each):

1. **`ODSY.h`**: overall address map, board identification, configurations and common types.
2. **`BUZZ.h`**: the graphics ASIC: registers, command and FIFO formats, texture and raster state, transform program interface.
3. **`PBJ.h`**: the second ASIC.
4. **`DISPLAY.h`**: display channels, mode word, colour formats, cursor and scanout.

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

Scripts (`scripts/`, run from the repository root):

- `populate-root`: create the symlinks listed in IRIX_FILES.md once `root/` is filled.
- `map_binaries.py`: catalogue every linked binary (sections, functions, DWARF compilation units) into `binaries_manifest.json`.
- `disasm_kernel.py`: disassemble the kernel `.o` objects into m2c-ready assembly under `odsy_kernel/disasm/`. Unpack archives (`.a`) with `ar x` first.
- `resolve_got.py`, `clean_asm.py`: resolve `$gp`-relative GOT loads to symbol names.
- `extract_libglcore_odsy.py`: extract compilation units, types and functions from `libGLcore.so` into `libglcore/asm/` and `manifest.json`, and write `libglcore/decompile_libglcore.sh`. A binary without DWARF falls back to its symbol table.
- `extract_odsy_ddx.py`: the same for an X server module, grouped by function-name prefix or by your own `ddx/groups.json`.
- `analyze_fifo.py`, `extract_gl_tokens.py`: find accesses to a hardware address window in the assembly, and map the first FIFO word each decompiled GL function stores to that function. Both take the address window or FIFO address you found as arguments; none is built in.

The scripts descend from gr4's and carry its BSD-3 notice ([scripts/LICENSE-gr4](scripts/LICENSE-gr4)).

---

## 6. Working on this repository

Workflow: populate `root/` (IRIX_FILES.md), run `scripts/populate-root`, run the scripts above, then read, write headers and docs, and update `docs/coverage.md`.

Roles:

- **Opus readers** take the Priority list in `docs/coverage.md`, in order.
- **Sonnet readers** backfill `docs/coverage.md` rows one block at a time.

Output rules:

- Findings go in chip headers at the repository root plus `docs/` chapters, written in your own words.
- Label every fact established, inferred or unknown, with its derivation: binary and release, function or offset, or the public source path.
- Update `docs/coverage.md` in the same commit as the finding.
- Commit disassembly, decompiled C and traces you produce as data; keep the proprietary binaries in `root/`. Flat `*_disasm.txt` and `*_dwarfdump.txt` dumps are gitignored.
- Commit what you cite: findings may rest on IRIX binaries or public sources only.

Downstream emulator projects consume the headers and docs; they should not need to read the binaries.

Commit small and often, straight to `main`. Subjects are lowercase, component-prefixed imperatives (`odsy_kernel: label the display-mode field`); bodies say why. Do not wait to batch work.
