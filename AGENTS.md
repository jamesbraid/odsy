# SGI VPro (Odyssey) Reverse Engineering Workspace

This workspace is for reverse-engineering the SGI VPro (Odyssey) graphics subsystem. The goal is to document its architecture as C headers and notes under `docs/`, for the vintage SGI community.

## 0. Role of this repository

This is a reader workspace. Researchers populate `root/` from their own IRIX install and write findings here. Origami's datasheet writers may read it as one input. Implementers of the QEMU `sgi-odyssey` device read only Origami's reviewed datasheets, never this repository.

The layout and working style follow [gr2](https://github.com/techomancer/gr2) and [gr4](https://github.com/techomancer/gr4).

## 1. Board overview

The first supported configuration in Origami is one V12-class Odyssey endpoint attached directly to IP30 XIO. V6, V8, V10, dual-board IP30, dual-channel display, Fuel and IP35 V-brick configurations are separate scopes [1]. Board inventory reported by one owner: BUZZ B.1, PB&J 1, 128 MB, four banks, CAS latency 3 [1].

Hardware facts in this file come only from Origami's published datasheets, cited as numbers in brackets. Anything not cited is unknown. Do not fill gaps from memory, other SGI graphics families or public emulators.

## 2. Chip roles

- **BUZZ**: Graphics ASIC named in the board inventory. A transform program, `buzz_xform.bin`, is uploaded by the guest [1]. Internal role and register map: unknown.
- **PB&J**: Second ASIC named in the board inventory (version 1) [1]. Role: unknown.
- **Board memory**: 128 MB, four banks, CAS latency 3 on the reported board [1]. Organisation and addressing: unknown.
- **Display output**: Single and dual-channel display options exist. Output hardware and timing: unknown [1].

TODO: per-chip sections (register map, access widths, reset state, DMA, interrupts). Fill them as findings land in headers, and mark each fact established, inferred or unknown.

## 3. Directory layout

| Path | Content |
|---|---|
| `root/` | Local, git-ignored copy of proprietary IRIX files. See [IRIX_FILES.md](IRIX_FILES.md). |
| `kernel/` | Symlinks to the kernel driver objects, plus extraction output and notes. |
| `libglcore/` | Symlinks to the OpenGL core driver and notes. |
| `ddx/` | Symlinks to the X server module and GLX module, plus notes. |
| `ucode/` | Symlinks to microcode and display tables, plus notes. |
| `docs/` | Findings, written in your own words. |
| `scripts/` | Disassembly, extraction and decompilation helpers. |
| `m2c/`, `spimdisasm/`, `libdwarf-code/` | Public tool submodules. |
| `irix-657m-src/`, `mame/`, `netbsd/`, `OpenGL-Registry/`, `ogl-sample/`, `sgi-docs/` | Public reference submodules. |

Submodules are declared in `.gitmodules` and are not checked out by default. Run `git submodule update --init <name>` for the ones you need.

## 4. Workflow

1. Copy files from your IRIX install into `root/` following [IRIX_FILES.md](IRIX_FILES.md).
2. Create relative symlinks from `kernel/`, `libglcore/`, `ddx/` and `ucode/` into `root/`.
3. Disassemble and decompile with the scripts in `scripts/` (`*_disasm.txt` and `*_dwarfdump.txt` outputs are git-ignored). Tools: `dwarfdump` from `libdwarf-code`, a MIPS cross `objdump`/`readelf`, `spimdisasm`, `m2c`.
4. Write findings into C headers (one per chip, by convention) and into `docs/`.
5. Mark every fact established, inferred or unknown. Cite how it was derived.

## 5. Conventions

- Never commit proprietary binaries, disk images, disassembly or dwarfdump output. `root/` and the generated text files are git-ignored.
- Write in your own words. Do not paste decompiled code or comments into committed files.
- Unknown stays unknown. Do not guess register offsets, widths or reset values.
- Commit subjects: lowercase, component-prefixed, imperative.

## References

[1] Origami `docs/datasheets/odyssey.md`: Odyssey/VPro direct-XIO interface.
