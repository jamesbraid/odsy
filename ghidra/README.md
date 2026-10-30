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
  scripts/             the shared IRIX scripts, byte-identical across workspaces
```

## Build and run

Run a component's `tests/run-ghidra.sh` in the Ghidra image, then its
`tests/check.py` on the dump directory it writes:

```sh
re-run --workspace . --ghidra -- ghidra/processors/odsy-buzz/tests/run-ghidra.sh .cache/odsy-buzz
re-run --workspace . -- python3 ghidra/processors/odsy-buzz/tests/check.py .cache/odsy-buzz
```

(`re-run` mounts the workspace at `/work`, the Ghidra image with `--ghidra` and
the toolchain image without.) `run-ghidra.sh` installs a processor as a user
extension in a throwaway settings directory, so nothing is added to a Ghidra
installation. The Sleigh compiler output (`*.sla`) is not committed.

## Components

| Path | What it is |
|---|---|
| [processors/odsy-buzz/](processors/odsy-buzz/) | the BUZZ transform-microcode processor (`ODSY-BUZZ`) and its import script `BuzzImport.java`; build and use are in [docs/tooling.md](../docs/tooling.md) |
