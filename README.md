# odsy

Reverse-engineering workspace for SGI VPro (Odyssey, `odsy`) graphics.

## Start here

- To use the findings in code (hardware-model authors, driver writers, tool authors), take the generated C headers and the Rust crate from [generated/c](generated/c) and [generated/rust](generated/rust). Python, JSON and XML forms are beside them.
- To understand one chip, board unit or engine, read its directory under [devices/](devices/): `README.md` says how the hardware works, `registers.toml` holds the graded register map, and `registers.md` is the generated table.
- How IRIX drives the board (the kernel driver, the OpenGL core, the X module, IRIS GL, the microcode and the install tools) is under [software/](software/).
- What is covered is in [evidence/coverage.md](evidence/coverage.md), and the open questions, each graded with what would settle it, are in [questions/README.md](questions/README.md). The routine readings, the generated inventory and the instruction readings are in [evidence/](evidence/).
- The published manuals, patents and reports are in [references/documents/](references/documents/), and the third-party source trees, as submodules, in [references/code/](references/code/).
- The repository's own scripts and configuration are in [tools/](tools/); the shared toolkit is the `retools/` submodule.

The layout and working style follow Dominik Behr's
[gr2](https://github.com/techomancer/gr2) and
[gr4](https://github.com/techomancer/gr4). Proprietary IRIX binaries are not
tracked. Copy them from your own IRIX install into the ignored `root/`
directory as [evidence/irix-files.md](evidence/irix-files.md) describes. [AGENTS.md](AGENTS.md) has the project goal, the
binaries and evidence, the toolchain and the working rules.

## Hardware definitions

The hardware facts live in `devices/<unit>/registers.toml`, one file per block; `tools/config/defs-check.toml` holds the
repo's check settings. `generated/` is generated from them and is never edited by hand. The
`registers.md` page beside each `registers.toml` is the published reference for the block, and `generated/c/` holds the C
headers. The root `*_DECODE.h` files are forwarding headers that include `generated/c/`, so
existing consumers keep their old macro names. To change a fact, edit its `registers.toml`, then run

    retools/tools/defs/defs-gen
    retools/tools/defs/defs-check --build

CI runs `retools/tools/defs/ci-check`.

## Running the tools and reproducing a result

The host needs Podman, git and python3. Everything else runs in a container built from
[retools/tools/Containerfile](retools/tools/Containerfile): MIPS binutils, dwarfdump, pyelftools, capstone, unicorn,
numpy, pycparser and spimdisasm, at pinned versions on a pinned Debian base.

    tools/setup-clone.sh --root /path/to/filled/root   # siblings at their pins, submodules, root/
    retools/tools/re-run python3 retools/tools/inventory.py          # the first run builds the image

`retools/tools/re-run COMMAND` runs `COMMAND` in the image with this repository mounted at `/work`, `root/`
included; with no command it opens a shell. `root/` is your own copy of the IRIX 6.5.30 files listed in
[evidence/irix-files.md](evidence/irix-files.md); they are never committed. Fill it from your install or media; the links the tools expect are tracked in this repository
and resolve once `root/` is filled.

To reproduce a cited result:

- Generated tables under `evidence/inventory/` come from `retools/tools/re-run python3 retools/tools/inventory.py`.
  `git status --short evidence` shows nothing afterwards when your `root/` matches `tools/config/inventory-root.sha256`.
- A claim an entry marks as established by execution is reproduced by the script in `retools/tools/` or `retools/tools/odsy/` that
  the entry names; its docstring says what it reproduces and how to run it, always as
  `retools/tools/re-run python3 retools/tools/odsy/NAME.py ...`.
- The shared tooling (container definitions, wrappers, Ghidra scripts, the inventory, fact sheet and the device extractors) is the `retools/` submodule (sgi-retools); a change to a shared tool is made there and the pin here moves with a commit. This repository keeps no links into it. The optional Ghidra image is built from `retools/tools/Containerfile.ghidra` by
  `retools/tools/re-run --ghidra COMMAND`, and `retools/tools/re-run --ghidra-export OBJECT` writes decompiled C and
  function-similarity output as JSON (see `tools/ghidra/README.md`); nothing else needs it. `retools/tools/README-analysis.md`
  describes the `.mdebug` importer and the kernel table extractors.

## Documents

Every tracked document, grouped by topic. The generated register tables (`devices/*/registers.md`), the routine readings and the per-batch instruction readings are left out; the last section covers them. Descriptions come from each document's own title or first sentence.

### Project and working files

- [README.md](README.md): Reverse-engineering workspace for SGI VPro (Odyssey, odsy) graphics.
- [AGENTS.md](AGENTS.md): SGI VPro (Odyssey, odsy) reverse engineering project: goals, evidence rules, workflow.
- [evidence/irix-files.md](evidence/irix-files.md): IRIX files needed for the VPro (odsy) reverse engineering.
- [evidence/coverage.md](evidence/coverage.md): Coverage of the workspace: measured inventory and written map.
- [questions/README.md](questions/README.md): Questions the binaries and published sources have not yet answered.
- [evidence/tooling.md](evidence/tooling.md): Tooling: the Ghidra processor module for the BUZZ microcode.
- [evidence/inventory/README.md](evidence/inventory/README.md): Generated inventory tables: generated by inventory.py, do not hand-edit.

### Devices (`devices/`)

- [devices/board/README.md](devices/board/README.md): Board memory and board configuration (IP30 kernel objects).
- [devices/buzz/README.md](devices/buzz/README.md): Companion to BUZZ.h, the graphics ASIC, with labelled facts.
- [devices/display/README.md](devices/display/README.md): Display notes, companion to DISPLAY.h, with labelled facts.
- [devices/pbj/README.md](devices/pbj/README.md): PB&J notes, companion to PBJ.h, with labelled facts.
- [devices/board/board-registers.md](devices/board/board-registers.md): Board registers, one entry each, with board offsets and widths.
- [devices/board/interrupts-fifo-reset.md](devices/board/interrupts-fifo-reset.md): Interrupts, command FIFO credits and reset: graded readings.
- [devices/buzz/blend-residue-fit.md](devices/buzz/blend-residue-fit.md): Measurements and fits of the blend frame's residue.
- [devices/buzz/numeric-formats.md](devices/buzz/numeric-formats.md): Numeric formats in the geometry and raster path, with confidence per stage.
- [devices/buzz/pixel-paths.md](devices/buzz/pixel-paths.md): Pixel paths: read, write and copy headers, libGLcore to board.
- [devices/buzz/raster.md](devices/buzz/raster.md): Raster rules: how BUZZ turns transformed vertices into pixels.
- [devices/buzz/tokens.md](devices/buzz/tokens.md): Command words found in code, grouped by family.
- [devices/buzz/words.md](devices/buzz/words.md): Command words, one entry each, with what stores them.
- [devices/compositor/compositor-registers.md](devices/compositor/compositor-registers.md): Register tables of the compositor diagnostic program sting.
- [devices/texture/texture-formats.md](devices/texture/texture-formats.md): Texture format index: every value the library can emit.
- [devices/texture/texture-state.md](devices/texture/texture-state.md): Texture state the library sends: bounds, wraps, environment, colour table.

### Kernel driver (`software/kernel/`)

- [software/kernel/compositor-probe.md](software/kernel/compositor-probe.md): How the driver detects a compositor, and gfxinfo's output.
- [software/kernel/diag-messages.md](software/kernel/diag-messages.md): Diagnostic and kernel-driver messages, one row per printing call.
- [software/kernel/driver-functions.md](software/kernel/driver-functions.md): Kernel driver functions, one entry each, IRIX 6.5.30m.
- [software/kernel/ioctls.md](software/kernel/ioctls.md): Ioctl entries, one per request, from IRIX 6.5.30m kernel objects.
- [software/kernel/kernel-config.md](software/kernel/kernel-config.md): Kernel configuration files that build the VPro driver in or out.
- [software/kernel/kernel-flow-control.md](software/kernel/kernel-flow-control.md): Kernel flow-control routines, one entry each, in gfx_flow.o.
- [software/kernel/kernel-functions.md](software/kernel/kernel-functions.md): Kernel driver functions grouped by object and role.
- [software/kernel/kernel-gfx-routines.md](software/kernel/kernel-gfx-routines.md): Generic graphics layer routines: group table and locks, one entry each.
- [software/kernel/kernel-objects.md](software/kernel/kernel-objects.md): The VPro driver archive, object by object, across four builds.
- [software/kernel/kernel-rrm-panes.md](software/kernel/kernel-rrm-panes.md): Resource-manager routines for panes, set-up and teardown, one entry each.
- [software/kernel/kernel-rrm-routines.md](software/kernel/kernel-rrm-routines.md): Resource-manager routines for masks, validation and waits, one entry each.
- [software/kernel/kernel-shared.md](software/kernel/kernel-shared.md): Shared kernel objects linked around the VPro driver, IRIX 6.5.30m.
- [software/kernel/kernel-textport.md](software/kernel/kernel-textport.md): Textport streams driver routines in tport.o, one entry each.
- [software/kernel/kernel.md](software/kernel/kernel.md): Kernel driver notes, companion to odsy_kern.h, labelled facts.

### OpenGL core (`software/opengl/`)

- [software/opengl/capability-trees.md](software/opengl/capability-trees.md): Capability trees of one N32 libGLcore routine (0xda289e0).
- [software/opengl/diagnostics-and-libgl-functions.md](software/opengl/diagnostics-and-libgl-functions.md): Diagnostics, libGL and leftover libGLcore functions, grouped by role.
- [software/opengl/gl-entry-points.md](software/opengl/gl-entry-points.md): Public GL entry points and the command words their senders emit.
- [software/opengl/libglcore-functions.md](software/opengl/libglcore-functions.md): libGLcore functions by source file and role, from the N32 build.
- [software/opengl/libglcore-odyssey-builds.md](software/opengl/libglcore-odyssey-builds.md): libGLcore Odyssey driver routines in the other builds.
- [software/opengl/libglcore-odyssey-reads.md](software/opengl/libglcore-odyssey-reads.md): Odyssey driver routines of libGLcore.so, each read in full.
- [software/opengl/libraries.md](software/opengl/libraries.md): Board OpenGL libraries of the install, one directory per ABI.
- [software/opengl/opengl.md](software/opengl/opengl.md): OpenGL core and X module notes, companion to glcore_odsy.h.
- [software/opengl/sample-implementation.md](software/opengl/sample-implementation.md): Public-source code in libGLcore, from the OpenGL sample implementation.

### X module and server (`software/xsgi/`)

- [software/xsgi/odyssey-so-functions.md](software/xsgi/odyssey-so-functions.md): X module (odyssey.so) functions grouped by role.
- [software/xsgi/odyssey-so-reads.md](software/xsgi/odyssey-so-reads.md): X module (odyssey.so) functions read in full, one entry each.
- [software/xsgi/x-module-functions.md](software/xsgi/x-module-functions.md): X module functions, one entry each, from the dynamic symbol table.
- [software/xsgi/x-server-and-iris-libraries.md](software/xsgi/x-server-and-iris-libraries.md): X server, GLX module and IRIS GL libraries, between app and board.

### Install tools, firmware and display files (`software/userland/`, `software/firmware/`, `software/video/`)

- [software/userland/install-tools.md](software/userland/install-tools.md): Install tools that touch the VPro board, what each does.
- [software/userland/vpro-tool-functions.md](software/userland/vpro-tool-functions.md): VPro tool functions, one entry each, with address and size.
- [software/firmware/compositor-files.md](software/firmware/compositor-files.md): Compositor install files: firmware images, versions, flash tool, formats.
- [software/firmware/firmware-images.md](software/firmware/firmware-images.md): Firmware and standalone images: IP30 and IP35 PROMs, IP30 monitor.
- [software/video/display-files.md](software/video/display-files.md): Display-table files of the VPro install, read from each file.
- [software/video/video-format-sources.md](software/video/video-format-sources.md): Video format compiler rules shipped with the VPro install.

### Microcode and Ghidra tooling (`software/ucode/`, `tools/ghidra/`)

- [software/ucode/buzz_isa.md](software/ucode/buzz_isa.md): BUZZ microcode: word format, loading and dispatch
- [software/ucode/buzz_routines.md](software/ucode/buzz_routines.md): BUZZ microcode: routine map
- [software/ucode/buzz_ucode.md](software/ucode/buzz_ucode.md): buzz_ucode: the microcode array in the kernel driver
- [tools/ghidra/README.md](tools/ghidra/README.md): Ghidra tooling

### Published sources (`references/documents/`)

- [references/documents/README.md](references/documents/README.md): Full copies of the published patents, papers, reports and manuals.
- [references/documents/published-sources.md](references/documents/published-sources.md): Published sources: patents, white papers and service references.

### Not listed one by one

- `evidence/instruction-readings-odsy-*.md` (one file per reading batch): a log of per-instruction readings.
- [evidence/hw-explanations-odsy-w1.md](evidence/hw-explanations-odsy-w1.md): Hardware-facing routine explanations for odsy, first wave.
- `evidence/routines/`: the routine readings.
- `evidence/inventory/*.tsv`: generated extraction tables, not documents.
- `devices/*/registers.md`: generated register tables.

Licence: BSD-3-Clause, see [LICENSE](LICENSE). The scripts descend from gr4's
and keep its notice in [retools/tools/LICENSE-gr4](retools/tools/LICENSE-gr4).
