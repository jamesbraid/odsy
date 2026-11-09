# Ghidra tooling

Everything that runs inside Ghidra lives here. Each component has its own
acceptance test; run them from the repository root, inside the Ghidra image,
with `root/` populated ([IRIX_FILES.md](../IRIX_FILES.md)). The checkers need
only Python 3 and run in the ordinary toolchain image.

```
ghidra/
  processors/<name>/   one Ghidra processor extension per directory
  import/<name>/       loader and import scripts for firmware images
  types/<name>/        data-type scripts
```

`processors/odsy-buzz` is a link into `retools/ghidra/processors/odsy-buzz`. It stays a link because
its `tests/run-ghidra.sh` locates the module as `ghidra/processors/odsy-buzz` from the repository root.
The shared IRIX scripts are used directly from `retools/ghidra/scripts/`.

## Build and run

Run a component's `tests/run-ghidra.sh` in the Ghidra image, then its
`tests/check.py` on the dump directory it writes:

```sh
retools/tools/re-run --ghidra ghidra/processors/odsy-buzz/tests/run-ghidra.sh .cache/odsy-buzz
retools/tools/re-run python3 ghidra/processors/odsy-buzz/tests/check.py .cache/odsy-buzz
```

(`retools/tools/re-run` mounts the workspace at `/work`, the Ghidra image with `--ghidra` and
the toolchain image without.) `run-ghidra.sh` installs a processor as a user
extension in a throwaway settings directory, so nothing is added to a Ghidra
installation. The Sleigh compiler output (`*.sla`) is not committed.

## Components

| Path | What it is |
|---|---|
| [processors/odsy-buzz/](processors/odsy-buzz/) | the BUZZ transform-microcode processor (`ODSY-BUZZ`) and its import script `BuzzImport.java`; build and use are in [docs/tooling.md](../docs/tooling.md) |
| [retools/ghidra/scripts/](../retools/ghidra/scripts/) | the IRIX MIPS scripts (shared, in the retools submodule): `IrixGp`, `IrixJumpTables`, `FindWindowStores`, `DumpCallEdges`, `DecompileFunctions`, `ApplyStruct`, `MarkVolatileWindows` (every store to a fixed-address command window in the decompile); see [retools/ghidra/scripts/README.md](../retools/ghidra/scripts/README.md) |

## Decompiled C as JSON, typed structures and function similarity

`retools/tools/re-run --ghidra-export OBJECT` runs Ghidra over one ELF object under `root/` (a linked
library or kernel, or a relocatable driver object) and prints the path of the JSON it wrote under
`.cache/ghidra-export/`, which git ignores, so there is nothing to commit by accident. It builds the
Ghidra image on first use. A relocatable object has no load address: name its functions, do not give
addresses (Ghidra places such an object itself, so the addresses in its JSON are Ghidra's, not section offsets). The options are listed at the top of [retools/tools/ghidra-export.py](../retools/tools/ghidra-export.py);
function-similarity databases live in `.cache/ghidra-bsim/`.

```sh
# decompiled C per function, as JSON with the decompiler's warnings
retools/tools/re-run --ghidra-export root/usr/gfx/arch/IP30ODSY32/libGLcore.so \
    --decompile-symbol NAME --decompile-symbol 'prefix_*' --decompile-symbol @0xADDRESS
# the same, with named structure fields
retools/tools/re-run --ghidra-export root/usr/gfx/arch/IP30ODSY32/libGLcore.so \
    --decompile-symbol NAME --types ghidra/types/context.types.json
# every function, or a list file (one name, glob or @address per line)
retools/tools/re-run --ghidra-export OBJECT --decompile-all
retools/tools/re-run --ghidra-export OBJECT --decompile-list names.txt
# function similarity: one object per run, each matched against those before it
retools/tools/re-run --ghidra-export OBJECT --bsim-db libglcore --bsim-label family-host-abi
```

`--types` takes a JSON file kept in the repository, with `structs`
(`name`, `size`, `fields` of `offset`, `name`, `type`, optional `comment`),
`functions` (`match`: a name, a glob or `@0xADDRESS`; `params` with `type` and
`name`; optional `returns`) and optional `globals` (`address`, `type`, `name`).
Types are `u8 s8 u16 s16 u32 s32 u64 s64 f32 f64`, a struct name, a trailing `*`
or `[N]`. Set `pointer_bytes` (4 for o32 and N32, 8 for 64-bit): a spec for one
pointer width is skipped on the other, since the offsets differ. Only fields
with a source belong in a spec; an unnamed gap stays `field_0x..` in the output.

A flat image (a PROM) has no header for Ghidra to read, so describe it. `--flat --load ADDR` reads the
file as raw bytes with its first byte at machine address `ADDR`, `--header N` skips a container header,
and `--processor` picks the language (default `MIPS:BE:64:default`, which holds the 64-bit pointers a PROM uses). A
flat image has no names: ask for routines by `@0xADDR` or use `--decompile-all`. In the JSON, `address`
is the machine address and `ghidra_address` where Ghidra holds it (the C text uses Ghidra's).

```sh
# every routine of a PROM image, given its container header size and load address
retools/tools/re-run --ghidra-export root/firmware/PROM.img --flat --header HEADER_BYTES --load 0xLOAD_ADDRESS \
    --decompile-all
```

Decompiler output and similarity scores are navigation, not evidence. The decompiler folds stores,
misses switches and invents parameters; a typed field name only says that a
definition was applied; BSim says two bodies look alike and does not say they are
the same routine, and it cannot say anything about small routines (under about 128 bytes).
A committed claim still rests on the disassembly and the fact sheets. Quote the
instruction, not the C.
