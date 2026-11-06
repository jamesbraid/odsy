# Instruction readings from hostfacts

Each entry summarizes selected non-stack accesses, calls with argument slots, conditional branches and return values for the exact binary path and function range shown. Every instruction claim cites its address. These readings describe software behavior, not hardware behavior.

- `splretr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb8fc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb8fc-0xb914 (24 bytes).
  It occupies 24 bytes.
  The return at 0xb90c has v0 = ?.
- `spltty` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb8fc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb8fc-0xb914 (24 bytes).
  It occupies 24 bytes.
  The return at 0xb90c has v0 = ?.
- `splvme` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb8fc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb8fc-0xb914 (24 bytes).
  It occupies 24 bytes.
  The return at 0xb90c has v0 = ?.
- `issplhi` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb914 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb914-0xb93c (40 bytes).
  It occupies 40 bytes.
  The `bne` branch at 0xb91c targets 0xb930, is taken when a1(?) != v1(=0x1), and falls through when a1(?) == v1(=0x1).
  The `bne` branch at 0xb928 targets 0xb934, is taken when (a0 & 0x1000) != 0, and falls through when (a0 & 0x1000) == 0.
  The return at 0xb934 has v0 = one of 0x0, 0x1.
- `issplprof` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb93c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb93c-0xb964 (40 bytes).
  It occupies 40 bytes.
  The `bne` branch at 0xb944 targets 0xb958, is taken when a1(?) != v1(=0x1), and falls through when a1(?) == v1(=0x1).
  The `bne` branch at 0xb950 targets 0xb95c, is taken when (a0 & 0xa000) != 0, and falls through when (a0 & 0xa000) == 0.
  The return at 0xb95c has v0 = one of 0x0, 0x1.
- `isspl7` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb964 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb964-0xb994 (48 bytes).
  It occupies 48 bytes.
  The `bne` branch at 0xb96c targets 0xb97c, is taken when (a0 & 0x1) != 0, and falls through when (a0 & 0x1) == 0.
  The `beq` branch at 0xb974 targets 0xb98c and is always taken.
  The `bne` branch at 0xb980 targets 0xb98c, is taken when (a0 & 0xff00) != 0, and falls through when (a0 & 0xff00) == 0.
  The return at 0xb98c has v0 = one of 0x0, 0x1.
- `spl65` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb994 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb994-0xb9ac (24 bytes).
  It occupies 24 bytes.
  The return at 0xb9a4 has v0 = ?.
- `splprof` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb994 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb994-0xb9ac (24 bytes).
  It occupies 24 bytes.
  The return at 0xb9a4 has v0 = ?.
- `spl7` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb9ac (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb9ac-0xb9c4 (24 bytes).
  It occupies 24 bytes.
  The return at 0xb9bc has v0 = ?.
- `splerr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb9ac (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb9ac-0xb9c4 (24 bytes).
  It occupies 24 bytes.
  The return at 0xb9bc has v0 = ?.
- `splecc` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb9c4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb9c4-0xb9e4 (32 bytes).
  It occupies 32 bytes.
  The return at 0xb9dc has v0 = ?.
- `splx` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb9e4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb9e4-0xba00 (28 bytes).
  It occupies 28 bytes.
  The return at 0xb9f8 has v0 = ?.
- `splxecc` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb9e4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb9e4-0xba00 (28 bytes).
  It occupies 28 bytes.
  The return at 0xb9f8 has v0 = ?.
- `isspl0` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xba00 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xba00-0xba20 (32 bytes).
  It occupies 32 bytes.
  The `bne` branch at 0xba08 targets 0xba18, is taken when a0(?) != v1(=0xff01), and falls through when a0(?) == v1(=0xff01).
  The return at 0xba10 has v0 = 0x1.
  The return at 0xba18 has v0 = 0x0.
- `VEC_fpe` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xba30 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xba30-0xba9c (108 bytes).
  It occupies 108 bytes.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0xba50, `ld` at 0xba54.
  The `ld` at 0xba58 loads 8 bytes from abs 0xffffffffffffc018.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xba5c, `lw` at 0xba68.
  The `sw` at 0xba64 stores 4 bytes to [-0x3fe8]:8 +0x540.
  The `sw` at 0xba6c stores 4 bytes to [-0x3fe8]:8 +0x544.
  The `jal` at 0xba48 calls trap with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=s0 at entry, a3=a3 at entry (arg3).
  The `jal` at 0xba84 calls fp_intr with a0=?, a1=?, a2=?, a3=?.
  Calls exception_exit via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0xba94).
  The `bne` branch at 0xba34 targets 0xba50, is taken when (s0 & 0x18) != 0, and falls through when (s0 & 0x18) == 0.
  The `bgez` branch at 0xba60 targets 0xba70, is taken when t0(?) >= 0 (signed), and falls through when t0(?) < 0 (signed).
- `tfi_save` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xbaa0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xbaa0-0xbad8 (56 bytes).
  It occupies 56 bytes.
  11 such `sd` accesses store 8 bytes to ?, including `sd` at 0xbaa0, `sd` at 0xbaa8, `sd` at 0xbab0.
  The return at 0xbad0 has v0 = ?.
- `tfi_restore` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xbad8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xbad8-0xbb10 (56 bytes).
  It occupies 56 bytes.
  11 such `ld` accesses load 8 bytes from ?, including `ld` at 0xbad8, `ld` at 0xbadc, `ld` at 0xbae0.
  The return at 0xbb08 has v0 = ?.
- `assfail` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xbb14 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xbb14-0xbf50 (1084 bytes).
  It occupies 1084 bytes.
  The `sd` at 0xbb2c stores 8 bytes to sym(_assregs) +0x8.
  The `lw` at 0xbb4c loads 4 bytes from sym(panic_cpu) +0x0.
  The `lh` at 0xbb58 loads 2 bytes from abs 0xffffffffffffc3a0.
  The `sw` at 0xbb70 stores 4 bytes to sym(panic_cpu) +0x0.
  The `sd` at 0xbb8c stores 8 bytes to sym(_assregs) +0xd8.
  2 such `sd` accesses store 8 bytes to sym(_assregs) +0xf8, including `sd` at 0xbbac, `sd` at 0xbf08.
  The `sd` at 0xbbcc stores 8 bytes to sym(_assregs) +0xe0.
  The `sd` at 0xbbe8 stores 8 bytes to sym(_assregs) +0x10.
  The `sd` at 0xbc04 stores 8 bytes to sym(_assregs) +0x30.
  The `sd` at 0xbc20 stores 8 bytes to sym(_assregs) +0x38.
  The `sd` at 0xbc3c stores 8 bytes to sym(_assregs) +0x40.
  The `sd` at 0xbc58 stores 8 bytes to sym(_assregs) +0x48.
  The `sd` at 0xbc74 stores 8 bytes to sym(_assregs) +0x50.
  The `sd` at 0xbc90 stores 8 bytes to sym(_assregs) +0x58.
  The `sd` at 0xbcac stores 8 bytes to sym(_assregs) +0x60.
  The `sd` at 0xbcc8 stores 8 bytes to sym(_assregs) +0x68.
  The `sd` at 0xbce4 stores 8 bytes to sym(_assregs) +0x70.
  The `sd` at 0xbd00 stores 8 bytes to sym(_assregs) +0x78.
  The `sd` at 0xbd1c stores 8 bytes to sym(_assregs) +0x80.
  The `sd` at 0xbd38 stores 8 bytes to sym(_assregs) +0x88.
  The `sd` at 0xbd54 stores 8 bytes to sym(_assregs) +0x90.
  The `sd` at 0xbd70 stores 8 bytes to sym(_assregs) +0x98.
  The `sd` at 0xbd8c stores 8 bytes to sym(_assregs) +0xa0.
  The `sd` at 0xbda8 stores 8 bytes to sym(_assregs) +0xa8.
  The `sd` at 0xbdc4 stores 8 bytes to sym(_assregs) +0xb0.
  The `sd` at 0xbde0 stores 8 bytes to sym(_assregs) +0xb8.
  The `sd` at 0xbdfc stores 8 bytes to sym(_assregs) +0xc0.
  The `sd` at 0xbe18 stores 8 bytes to sym(_assregs) +0xc8.
  The `sd` at 0xbe34 stores 8 bytes to sym(_assregs) +0xd0.
  The `sd` at 0xbe50 stores 8 bytes to sym(_assregs) +0xe8.
  The `sd` at 0xbe6c stores 8 bytes to sym(_assregs) +0xf0.
  The `sd` at 0xbe88 stores 8 bytes to sym(_assregs) +0x100.
  The `sd` at 0xbea8 stores 8 bytes to sym(_assregs) +0x108.
  The `sd` at 0xbec8 stores 8 bytes to sym(_assregs) +0x118.
  The `sd` at 0xbee8 stores 8 bytes to sym(_assregs) +0x110.
  The `sd` at 0xbf28 stores 8 bytes to sym(_assregs) +0x120.
  The `sd` at 0xbf44 stores 8 bytes to sym(_assregs) +0x160.
  Calls _assfail via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xbf48).
  The `bne` branch at 0xbb50 targets 0xbf48, is taken when v0(=[sym(panic_cpu)]) != at(=-0x1), and falls through when v0(=[sym(panic_cpu)]) == at(=-0x1).
- `getsr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xbf50 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xbf50-0xbf5c (12 bytes).
  It occupies 12 bytes.
  The return at 0xbf54 has v0 = ?.
- `setsr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xbf5c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xbf5c-0xbf6c (16 bytes).
  It occupies 16 bytes.
  The return at 0xbf64 has v0 = ?.
- `getpc` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xbf6c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xbf6c-0xbf74 (8 bytes).
  It occupies 8 bytes.
  The return at 0xbf6c has v0 = ra.
- `getsp` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xbf74 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xbf74-0xbf7c (8 bytes).
  It occupies 8 bytes.
  The return at 0xbf74 has v0 = sp.
- `getpcsp` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xbf7c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xbf7c-0xbf88 (12 bytes).
  It occupies 12 bytes.
  The `sd` at 0xbf7c stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `sd` at 0xbf84 stores 8 bytes to a1 (arg1 at entry) +0x0.
  The return at 0xbf80 has v0 = ?.
- `getgp` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xbf88 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xbf88-0xbf90 (8 bytes).
  It occupies 8 bytes.
  The return at 0xbf88 has v0 = gp.
- `getcause` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xbf90 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xbf90-0xbf9c (12 bytes).
  It occupies 12 bytes.
  The return at 0xbf94 has v0 = ?.
- `setcause` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xbf9c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xbf9c-0xbfa8 (12 bytes).
  It occupies 12 bytes.
  The return at 0xbfa0 has v0 = ?.
- `getbadvaddr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xbfa8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xbfa8-0xbfb4 (12 bytes).
  It occupies 12 bytes.
  The return at 0xbfac has v0 = ?.
- `get_sr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xbfb4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xbfb4-0xbfc0 (12 bytes).
  It occupies 12 bytes.
  The return at 0xbfb8 has v0 = ?.
- `set_sr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xbfc0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xbfc0-0xbfcc (12 bytes).
  It occupies 12 bytes.
  The return at 0xbfc4 has v0 = ?.
- `get_lladdr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xbfcc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xbfcc-0xbfd8 (12 bytes).
  It occupies 12 bytes.
  The return at 0xbfd0 has v0 = ?.
- `set_lladdr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xbfd8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xbfd8-0xbfe4 (12 bytes).
  It occupies 12 bytes.
  The return at 0xbfdc has v0 = ?.
- `do_sync_instruction` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xbfe4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xbfe4-0xbff0 (12 bytes).
  It occupies 12 bytes.
  The return at 0xbfe8 has v0 = ?.
- `siron` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xbff0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xbff0-0xc018 (40 bytes).
  It occupies 40 bytes.
  The return at 0xc010 has v0 = ?.
- `siroff` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc018 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc018-0xc044 (44 bytes).
  It occupies 44 bytes.
  The return at 0xc03c has v0 = ?.
- `flushbus` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc044 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc044-0xc064 (32 bytes).
  It occupies 32 bytes.
  The `ld` at 0xc048 loads 8 bytes from abs 0xffffffffaff50000.
  The `ld` at 0xc050 loads 8 bytes from abs 0xffffffffb8000000.
  The return at 0xc05c has v0 = ?.
- `wbflush` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc064 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc064-0xc06c (8 bytes).
  It occupies 8 bytes.
  The return at 0xc064 has v0 = ?.
- `ip26_enable_ucmem` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc06c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc06c-0xc074 (8 bytes).
  It occupies 8 bytes.
  The return at 0xc06c has v0 = ?.
- `ip26_return_ucmem` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc06c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc06c-0xc074 (8 bytes).
  It occupies 8 bytes.
  The return at 0xc06c has v0 = ?.
- `ip28_enable_ucmem` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc06c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc06c-0xc074 (8 bytes).
  It occupies 8 bytes.
  The return at 0xc06c has v0 = ?.
- `ip28_return_ucmem` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc06c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc06c-0xc074 (8 bytes).
  It occupies 8 bytes.
  The return at 0xc06c has v0 = ?.
- `badaddr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc080 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc080-0xc1a8 (296 bytes).
  It occupies 296 bytes.
  The `ld` at 0xc098 loads 8 bytes from abs 0xffffffffb8000060.
  The `sd` at 0xc09c stores 8 bytes to abs 0xffffffffb8000040.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffb8000000, including `ld` at 0xc0a0, `ld` at 0xc158.
  The `sd` at 0xc0a4 stores 8 bytes to abs 0xffffffffb8000060.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffaff10040, including `ld` at 0xc0b0, `ld` at 0xc17c.
  The `sd` at 0xc0b4 stores 8 bytes to abs 0xffffffffaff10040.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffaff50000, including `ld` at 0xc0bc, `ld` at 0xc150.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc020, including `ld` at 0xc0c0, `ld` at 0xc18c.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0xc0c8, `sh` at 0xc190.
  The `lb` at 0xc0d8 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lh` at 0xc0f0 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xc108 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `ld` at 0xc120 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `jal` at 0xc144 calls cmn_err with a0=0x0, a1=sym(.data)+1016, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xc0d0 targets 0xc0e4, is taken when a1 != at(=0x1), and falls through when a1 == at(=0x1).
  The `beq` branch at 0xc0dc targets 0xc14c and is always taken.
  The `bne` branch at 0xc0e8 targets 0xc0fc, is taken when a1 != at(=0x2), and falls through when a1 == at(=0x2).
  The `beq` branch at 0xc0f4 targets 0xc14c and is always taken.
  The `bne` branch at 0xc100 targets 0xc114, is taken when a1 != at(=0x4), and falls through when a1 == at(=0x4).
  The `beq` branch at 0xc10c targets 0xc14c and is always taken.
  The `bne` branch at 0xc118 targets 0xc12c, is taken when a1 != at(=0x8), and falls through when a1 == at(=0x8).
  The `beq` branch at 0xc124 targets 0xc14c and is always taken.
  The `bne` branch at 0xc168 targets 0xc788, is taken when (t1(?) & 0x4000) != 0, and falls through when (t1(?) & 0x4000) == 0.
  The `bne` branch at 0xc184 targets 0xc788, is taken when (t1(=[0xffffffffaff10040]:8) & at(=0x10000)) != 0, and falls through when (t1(=[0xffffffffaff10040]:8) & at(=0x10000)) == 0.
  The return at 0xc1a0 has v0 = 0x0.
- `badaddr_val` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc1a8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc1a8-0xc314 (364 bytes).
  It occupies 364 bytes.
  The `ld` at 0xc1c0 loads 8 bytes from abs 0xffffffffb8000060.
  The `sd` at 0xc1c4 stores 8 bytes to abs 0xffffffffb8000040.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffb8000000, including `ld` at 0xc1c8, `ld` at 0xc2b0.
  The `sd` at 0xc1cc stores 8 bytes to abs 0xffffffffb8000060.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffaff10040, including `ld` at 0xc1d8, `ld` at 0xc2d4.
  The `sd` at 0xc1dc stores 8 bytes to abs 0xffffffffaff10040.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffaff50000, including `ld` at 0xc1e4, `ld` at 0xc2a8.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc020, including `ld` at 0xc1e8, `ld` at 0xc2e4.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0xc1f4, `sh` at 0xc2f0.
  2 such `sw` accesses store 4 bytes to abs 0xffffffffffffc404, including `sw` at 0xc200, `sw` at 0xc2fc.
  The `lb` at 0xc210 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `sb` at 0xc218 stores 1 byte to a2 (arg2 at entry) +0x0.
  The `lh` at 0xc230 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xc238 stores 2 bytes to a2 (arg2 at entry) +0x0.
  The `lw` at 0xc250 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xc258 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `ld` at 0xc270 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sd` at 0xc278 stores 8 bytes to a2 (arg2 at entry) +0x0.
  The `jal` at 0xc29c calls cmn_err with a0=0x0, a1=sym(.data)+1025, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xc1ec targets 0xc200, is taken when t2(=[-0x3fe0]:8) == 0, and falls through when t2(=[-0x3fe0]:8) != 0.
  The `beq` branch at 0xc1f8 targets 0xc204 and is always taken.
  The `bne` branch at 0xc208 targets 0xc224, is taken when a1 != at(=0x1), and falls through when a1 == at(=0x1).
  The `beq` branch at 0xc21c targets 0xc2a4 and is always taken.
  The `bne` branch at 0xc228 targets 0xc244, is taken when a1 != at(=0x2), and falls through when a1 == at(=0x2).
  The `beq` branch at 0xc23c targets 0xc2a4 and is always taken.
  The `bne` branch at 0xc248 targets 0xc264, is taken when a1 != at(=0x4), and falls through when a1 == at(=0x4).
  The `beq` branch at 0xc25c targets 0xc2a4 and is always taken.
  The `bne` branch at 0xc268 targets 0xc284, is taken when a1 != at(=0x8), and falls through when a1 == at(=0x8).
  The `beq` branch at 0xc27c targets 0xc2a4 and is always taken.
  The `bne` branch at 0xc2c0 targets 0xc788, is taken when (t1(?) & 0x4000) != 0, and falls through when (t1(?) & 0x4000) == 0.
  The `bne` branch at 0xc2dc targets 0xc788, is taken when (t1(=[0xffffffffaff10040]:8) & at(=0x10000)) != 0, and falls through when (t1(=[0xffffffffaff10040]:8) & at(=0x10000)) == 0.
  The `beq` branch at 0xc2e8 targets 0xc2fc, is taken when t2(=[-0x3fe0]:8) == 0, and falls through when t2(=[-0x3fe0]:8) != 0.
  The `beq` branch at 0xc2f4 targets 0xc300 and is always taken.
  The return at 0xc30c has v0 = 0x0.
- `wbadaddr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc314 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc314-0xc460 (332 bytes).
  It occupies 332 bytes.
  The `ld` at 0xc32c loads 8 bytes from abs 0xffffffffb8000060.
  The `sd` at 0xc330 stores 8 bytes to abs 0xffffffffb8000040.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffb8000000, including `ld` at 0xc334, `ld` at 0xc3ec, `ld` at 0xc400.
  The `sd` at 0xc338 stores 8 bytes to abs 0xffffffffb8000060.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffaff10040, including `ld` at 0xc344, `ld` at 0xc434.
  The `sd` at 0xc348 stores 8 bytes to abs 0xffffffffaff10040.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffaff50000, including `ld` at 0xc350, `ld` at 0xc3e4, `ld` at 0xc3f8.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc020, including `ld` at 0xc354, `ld` at 0xc444.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0xc35c, `sh` at 0xc448.
  The `sb` at 0xc36c stores 1 byte to a0 (arg0 at entry) +0x0.
  The `sh` at 0xc384 stores 2 bytes to a0 (arg0 at entry) +0x0.
  The `sw` at 0xc39c stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `sd` at 0xc3b4 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `lw` at 0xc410 loads 4 bytes from abs 0x9000000000000000.
  The `jal` at 0xc3d8 calls cmn_err with a0=0x0, a1=sym(.data)+1038, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xc364 targets 0xc378, is taken when a1 != at(=0x1), and falls through when a1 == at(=0x1).
  The `beq` branch at 0xc370 targets 0xc3e0 and is always taken.
  The `bne` branch at 0xc37c targets 0xc390, is taken when a1 != at(=0x2), and falls through when a1 == at(=0x2).
  The `beq` branch at 0xc388 targets 0xc3e0 and is always taken.
  The `bne` branch at 0xc394 targets 0xc3a8, is taken when a1 != at(=0x4), and falls through when a1 == at(=0x4).
  The `beq` branch at 0xc3a0 targets 0xc3e0 and is always taken.
  The `bne` branch at 0xc3ac targets 0xc3c0, is taken when a1 != at(=0x8), and falls through when a1 == at(=0x8).
  The `beq` branch at 0xc3b8 targets 0xc3e0 and is always taken.
  The `bne` branch at 0xc420 targets 0xc788, is taken when (t1(?) & 0x4000) != 0, and falls through when (t1(?) & 0x4000) == 0.
  The `bne` branch at 0xc43c targets 0xc788, is taken when (t1(=[0xffffffffaff10040]:8) & at(=0x10000)) != 0, and falls through when (t1(=[0xffffffffaff10040]:8) & at(=0x10000)) == 0.
  The return at 0xc458 has v0 = 0x0.
- `wbadaddr_val` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc460 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc460-0xc5c8 (360 bytes).
  It occupies 360 bytes.
  The `ld` at 0xc478 loads 8 bytes from abs 0xffffffffb8000060.
  The `sd` at 0xc47c stores 8 bytes to abs 0xffffffffb8000040.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffb8000000, including `ld` at 0xc480, `ld` at 0xc558, `ld` at 0xc56c.
  The `sd` at 0xc484 stores 8 bytes to abs 0xffffffffb8000060.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffaff10040, including `ld` at 0xc490, `ld` at 0xc59c.
  The `sd` at 0xc494 stores 8 bytes to abs 0xffffffffaff10040.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffaff50000, including `ld` at 0xc49c, `ld` at 0xc550, `ld` at 0xc564.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc020, including `ld` at 0xc4a0, `ld` at 0xc5ac.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0xc4a8, `sh` at 0xc5b0.
  The `lb` at 0xc4b8 loads 1 byte from a2 (arg2 at entry) +0x0.
  The `sb` at 0xc4c0 stores 1 byte to a0 (arg0 at entry) +0x0.
  The `lh` at 0xc4d8 loads 2 bytes from a2 (arg2 at entry) +0x0.
  The `sh` at 0xc4e0 stores 2 bytes to a0 (arg0 at entry) +0x0.
  The `lw` at 0xc4f8 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `sw` at 0xc500 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `ld` at 0xc518 loads 8 bytes from a2 (arg2 at entry) +0x0.
  The `sd` at 0xc520 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `lw` at 0xc57c loads 4 bytes from abs 0x9000000000000000.
  The `jal` at 0xc544 calls cmn_err with a0=0x0, a1=sym(.data)+1048, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xc4b0 targets 0xc4cc, is taken when a1 != at(=0x1), and falls through when a1 == at(=0x1).
  The `beq` branch at 0xc4c4 targets 0xc54c and is always taken.
  The `bne` branch at 0xc4d0 targets 0xc4ec, is taken when a1 != at(=0x2), and falls through when a1 == at(=0x2).
  The `beq` branch at 0xc4e4 targets 0xc54c and is always taken.
  The `bne` branch at 0xc4f0 targets 0xc50c, is taken when a1 != at(=0x4), and falls through when a1 == at(=0x4).
  The `beq` branch at 0xc504 targets 0xc54c and is always taken.
  The `bne` branch at 0xc510 targets 0xc52c, is taken when a1 != at(=0x8), and falls through when a1 == at(=0x8).
  The `beq` branch at 0xc524 targets 0xc54c and is always taken.
  The `bne` branch at 0xc588 targets 0xc788, is taken when (t1(?) & 0x4000) != 0, and falls through when (t1(?) & 0x4000) == 0.
  The `bne` branch at 0xc5a4 targets 0xc788, is taken when (t1(=[0xffffffffaff10040]:8) & at(=0x10000)) != 0, and falls through when (t1(=[0xffffffffaff10040]:8) & at(=0x10000)) == 0.
  The return at 0xc5c0 has v0 = 0x0.
- `earlybadaddr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc5c8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc5c8-0xc700 (312 bytes).
  It occupies 312 bytes.
  The `ld` at 0xc5e0 loads 8 bytes from abs 0xffffffffb8000060.
  The `sd` at 0xc5e4 stores 8 bytes to abs 0xffffffffb8000040.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffb8000000, including `ld` at 0xc5e8, `ld` at 0xc69c.
  The `sd` at 0xc5ec stores 8 bytes to abs 0xffffffffb8000060.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffaff10040, including `ld` at 0xc5f8, `ld` at 0xc6c0.
  The `sd` at 0xc5fc stores 8 bytes to abs 0xffffffffaff10040.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffaff50000, including `ld` at 0xc604, `ld` at 0xc694.
  2 such `sw` accesses store 4 bytes to sym(nofault) +0x0, including `sw` at 0xc624, `sw` at 0xc6e8.
  The `lb` at 0xc634 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lh` at 0xc64c loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xc664 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jal` at 0xc688 calls cmn_err with a0=0x0, a1=sym(.data)+1062, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xc62c targets 0xc640, is taken when a1 != at(=0x1), and falls through when a1 == at(=0x1).
  The `beq` branch at 0xc638 targets 0xc690 and is always taken.
  The `bne` branch at 0xc644 targets 0xc658, is taken when a1 != at(=0x2), and falls through when a1 == at(=0x2).
  The `beq` branch at 0xc650 targets 0xc690 and is always taken.
  The `bne` branch at 0xc65c targets 0xc670, is taken when a1 != at(=0x4), and falls through when a1 == at(=0x4).
  The `beq` branch at 0xc668 targets 0xc690 and is always taken.
  The `bne` branch at 0xc6ac targets 0xc7e4, is taken when (t1(?) & 0x4000) != 0, and falls through when (t1(?) & 0x4000) == 0.
  The `bne` branch at 0xc6c8 targets 0xc7e4, is taken when (t1(=[0xffffffffaff10040]:8) & at(=0x10000)) != 0, and falls through when (t1(=[0xffffffffaff10040]:8) & at(=0x10000)) == 0.
  The return at 0xc6f8 has v0 = 0x0.
- `wbadmemaddr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc700 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc700-0xc788 (136 bytes).
  It occupies 136 bytes.
  2 such `sw` accesses store 4 bytes to sym(nofault) +0x0, including `sw` at 0xc730, `sw` at 0xc770.
  The `sw` at 0xc734 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `lw` at 0xc738 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `ld` at 0xc748 loads 8 bytes from abs 0xffffffffaff10040.
  The `bne` branch at 0xc750 targets 0xc788, is taken when (t1(=[0xffffffffaff10040]:8) & at(=0x10000)) != 0, and falls through when (t1(=[0xffffffffaff10040]:8) & at(=0x10000)) == 0.
  The return at 0xc780 has v0 = 0x0.
- `baerror` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc788 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc788-0xc7e4 (92 bytes).
  It occupies 92 bytes.
  The `ld` at 0xc78c loads 8 bytes from abs 0xffffffffb8000060.
  The `sd` at 0xc790 stores 8 bytes to abs 0xffffffffb8000040.
  The `ld` at 0xc794 loads 8 bytes from abs 0xffffffffb8000000.
  The `sd` at 0xc798 stores 8 bytes to abs 0xffffffffb8000060.
  The `ld` at 0xc7a4 loads 8 bytes from abs 0xffffffffaff10040.
  The `sd` at 0xc7a8 stores 8 bytes to abs 0xffffffffaff10040.
  The `ld` at 0xc7b0 loads 8 bytes from abs 0xffffffffaff50000.
  The `ld` at 0xc7b8 loads 8 bytes from abs 0xffffffffffffc020.
  The `sh` at 0xc7c4 stores 2 bytes to [-0x3fe0]:8 +0xf6.
  The `sw` at 0xc7d0 stores 4 bytes to abs 0xffffffffffffc404.
  The `beq` branch at 0xc7bc targets 0xc7d0, is taken when t2(=[-0x3fe0]:8) == 0, and falls through when t2(=[-0x3fe0]:8) != 0.
  The `beq` branch at 0xc7c8 targets 0xc7d4 and is always taken.
  The return at 0xc7dc has v0 = 0x1.
- `earlybaerror` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc7e4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc7e4-0xc844 (96 bytes).
  It occupies 96 bytes.
  The `ld` at 0xc7e8 loads 8 bytes from abs 0xffffffffb8000060.
  The `sd` at 0xc7ec stores 8 bytes to abs 0xffffffffb8000040.
  The `ld` at 0xc7f0 loads 8 bytes from abs 0xffffffffb8000000.
  The `sd` at 0xc7f4 stores 8 bytes to abs 0xffffffffb8000060.
  The `ld` at 0xc800 loads 8 bytes from abs 0xffffffffaff10040.
  The `sd` at 0xc804 stores 8 bytes to abs 0xffffffffaff10040.
  The `ld` at 0xc80c loads 8 bytes from abs 0xffffffffaff50000.
  The `sw` at 0xc830 stores 4 bytes to sym(nofault) +0x0.
  The return at 0xc83c has v0 = 0x1.
- `VEC_breakpoint` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc850 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc850-0xc85c (12 bytes).
  It occupies 12 bytes.
  Calls VEC_trap via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xc850).
  The instructions from 0xc858 to 0xc858 are not reached by any path from the entry, and their branches are not listed.
- `debug` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc85c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc85c-0xc8d4 (120 bytes).
  It occupies 120 bytes.
  The `lh` at 0xc874 loads 2 bytes from sym(kdebug) +0x0.
  The `sh` at 0xc8ac stores 2 bytes to sym(kbdstate) +0x0.
  The `sb` at 0xc8c8 stores 1 byte to sym(kbdcntrlstate) +0x0.
  The `blez` branch at 0xc878 targets 0xc8cc, is taken when t0(=[sym(kdebug)]:2) <= 0 (signed), and falls through when t0(=[sym(kdebug)]:2) > 0 (signed).
  The return at 0xc8cc has v0 = ?.
- `ULIsystrap` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc8e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc8e0-0xcbc0 (736 bytes).
  It occupies 736 bytes.
  5 such `ld` accesses load 8 bytes from abs 0xffffffffffffc028, including `ld` at 0xc8fc, `ld` at 0xc930, `ld` at 0xc98c.
  3 such `ld` accesses load 8 bytes from [-0x3fd8]:8 +0x88, including `ld` at 0xc90c, `ld` at 0xc934, `ld` at 0xcacc.
  9 such `sd` accesses store 8 bytes to ?, including `sd` at 0xc948, `sd` at 0xc94c, `sd` at 0xc950.
  2 such `sb` accesses store 1 byte to abs 0xffffffffffffc04f, including `sb` at 0xc984, `sb` at 0xc9f8.
  The `ld` at 0xc998 loads 8 bytes from [-0x3fd8]:8 +0x90.
  2 such `sd` accesses store 8 bytes to abs 0xffffffffffffc018, including `sd` at 0xc9a0, `sd` at 0xca00.
  The `lh` at 0xc9a8 loads 2 bytes from [-0x3fd8]:8 +0xa8.
  7 such `ld` accesses load 8 bytes from ?, including `ld` at 0xc9ac, `ld` at 0xca0c, `ld` at 0xca10.
  The `ld` at 0xc9fc loads 8 bytes from [-0x3fd8]:8 +0x98.
  The `lh` at 0xca08 loads 2 bytes from [-0x3fd8]:8 +0xaa.
  The `lw` at 0xca34 loads 4 bytes from [-0x3fd8]:8 +0xe8.
  The `sd` at 0xca44 stores 8 bytes to [-0x3fd8]:8 +0x1d0.
  The `sd` at 0xca48 stores 8 bytes to [-0x3fd8]:8 +0x1c8.
  The `ld` at 0xca4c loads 8 bytes from abs 0xffffffffffffc038.
  The `sd` at 0xca50 stores 8 bytes to [-0x3fd8]:8 +0xf0.
  The `sd` at 0xca54 stores 8 bytes to [-0x3fd8]:8 +0x108.
  The `sd` at 0xca58 stores 8 bytes to [-0x3fd8]:8 +0x110.
  The `sd` at 0xca5c stores 8 bytes to [-0x3fd8]:8 +0x118.
  The `sd` at 0xca60 stores 8 bytes to [-0x3fd8]:8 +0x120.
  The `sd` at 0xca64 stores 8 bytes to [-0x3fd8]:8 +0x128.
  The `sd` at 0xca68 stores 8 bytes to [-0x3fd8]:8 +0x130.
  The `sd` at 0xca6c stores 8 bytes to [-0x3fd8]:8 +0x138.
  The `sd` at 0xca70 stores 8 bytes to [-0x3fd8]:8 +0x140.
  The `sd` at 0xca74 stores 8 bytes to [-0x3fd8]:8 +0x168.
  The `sd` at 0xca78 stores 8 bytes to [-0x3fd8]:8 +0x170.
  The `sd` at 0xca7c stores 8 bytes to [-0x3fd8]:8 +0x178.
  The `sd` at 0xca80 stores 8 bytes to [-0x3fd8]:8 +0x180.
  The `sd` at 0xca84 stores 8 bytes to [-0x3fd8]:8 +0x188.
  The `sd` at 0xca88 stores 8 bytes to [-0x3fd8]:8 +0x190.
  The `sd` at 0xca8c stores 8 bytes to [-0x3fd8]:8 +0x198.
  The `sd` at 0xca90 stores 8 bytes to [-0x3fd8]:8 +0x1a0.
  The `sd` at 0xcaa4 stores 8 bytes to [-0x3fd8]:8 +0x1e0.
  The `sd` at 0xcab0 stores 8 bytes to [-0x3fd8]:8 +0x1e8.
  The `sd` at 0xcab4 stores 8 bytes to [-0x3fd8]:8 +0x208.
  The `sd` at 0xcab8 stores 8 bytes to [-0x3fd8]:8 +0x210.
  The `sd` at 0xcabc stores 8 bytes to [-0x3fd8]:8 +0x250.
  The `sd` at 0xcac0 stores 8 bytes to [-0x3fd8]:8 +0x200.
  The `sw` at 0xcac4 stores 4 bytes to [-0x3fd8]:8 +0xe8.
  Calls uli_return via direct with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xc928).
  The `jal` at 0xc9a4 calls uli_setasids with a0=[[-0x3fd8]:8+168]:2, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xc9c8 calls ULI_syscall with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xca04 calls uli_setasids with a0=[[-0x3fd8]:8+170]:2, a1=[[-0x3fd8]:8+152]:8, a2=?, a3=one of 0x0, 0x1.
  The `jal` at 0xcaa8 calls tfi_save with a0=?, a1=?, a2=?, a3=?.
  Calls uli_badtrap via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0xcaec).
  The `bne` branch at 0xc8e4 targets 0xca30, is taken when v0(?) != at(=0x410), and falls through when v0(?) == at(=0x410).
  The `bne` branch at 0xc8ec targets 0xca30, is taken when a0 != at(=0xa8), and falls through when a0 == at(=0xa8).
  The `bne` branch at 0xc8f4 targets 0xc930, is taken when a1 != at(=0x3), and falls through when a1 == at(=0x3).
  The `bnel` branch at 0xc9dc targets 0xc9ec, is taken when v0(=ret(ULI_syscall)) != 0, and falls through when v0(=ret(ULI_syscall)) == 0; its branch-likely delay slot `addiu a3,zero,1` at 0xc9e0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xca38 targets 0xcac8, is taken when k1(=[[-0x3fd8]:8+232]) != 0, and falls through when k1(=[[-0x3fd8]:8+232]) == 0.
  The instructions from 0xcaf4 to 0xcbbc are not reached by any path from the entry, and their branches are not listed.
- `keruliframe` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xca30 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xca30-0xcbc0 (400 bytes).
  It occupies 400 bytes.
  The `ld` at 0xca30 loads 8 bytes from abs 0xffffffffffffc028.
  The `lw` at 0xca34 loads 4 bytes from [-0x3fd8]:8 +0xe8.
  The `sd` at 0xca44 stores 8 bytes to [-0x3fd8]:8 +0x1d0.
  The `sd` at 0xca48 stores 8 bytes to [-0x3fd8]:8 +0x1c8.
  The `ld` at 0xca4c loads 8 bytes from abs 0xffffffffffffc038.
  The `sd` at 0xca50 stores 8 bytes to [-0x3fd8]:8 +0xf0.
  The `sd` at 0xca54 stores 8 bytes to [-0x3fd8]:8 +0x108.
  The `sd` at 0xca58 stores 8 bytes to [-0x3fd8]:8 +0x110.
  The `sd` at 0xca5c stores 8 bytes to [-0x3fd8]:8 +0x118.
  The `sd` at 0xca60 stores 8 bytes to [-0x3fd8]:8 +0x120.
  The `sd` at 0xca64 stores 8 bytes to [-0x3fd8]:8 +0x128.
  The `sd` at 0xca68 stores 8 bytes to [-0x3fd8]:8 +0x130.
  The `sd` at 0xca6c stores 8 bytes to [-0x3fd8]:8 +0x138.
  The `sd` at 0xca70 stores 8 bytes to [-0x3fd8]:8 +0x140.
  The `sd` at 0xca74 stores 8 bytes to [-0x3fd8]:8 +0x168.
  The `sd` at 0xca78 stores 8 bytes to [-0x3fd8]:8 +0x170.
  The `sd` at 0xca7c stores 8 bytes to [-0x3fd8]:8 +0x178.
  The `sd` at 0xca80 stores 8 bytes to [-0x3fd8]:8 +0x180.
  The `sd` at 0xca84 stores 8 bytes to [-0x3fd8]:8 +0x188.
  The `sd` at 0xca88 stores 8 bytes to [-0x3fd8]:8 +0x190.
  The `sd` at 0xca8c stores 8 bytes to [-0x3fd8]:8 +0x198.
  The `sd` at 0xca90 stores 8 bytes to [-0x3fd8]:8 +0x1a0.
  The `sd` at 0xcaa4 stores 8 bytes to [-0x3fd8]:8 +0x1e0.
  The `sd` at 0xcab0 stores 8 bytes to [-0x3fd8]:8 +0x1e8.
  The `sd` at 0xcab4 stores 8 bytes to [-0x3fd8]:8 +0x208.
  The `sd` at 0xcab8 stores 8 bytes to [-0x3fd8]:8 +0x210.
  The `sd` at 0xcabc stores 8 bytes to [-0x3fd8]:8 +0x250.
  The `sd` at 0xcac0 stores 8 bytes to [-0x3fd8]:8 +0x200.
  The `sw` at 0xcac4 stores 4 bytes to [-0x3fd8]:8 +0xe8.
  The `ld` at 0xcacc loads 8 bytes from [-0x3fd8]:8 +0x88.
  The `jal` at 0xcaa8 calls tfi_save with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  Calls uli_badtrap via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0xcaec).
  The `bne` branch at 0xca38 targets 0xcac8, is taken when k1(=[[-0x3fd8]:8+232]) != 0, and falls through when k1(=[[-0x3fd8]:8+232]) == 0.
  The instructions from 0xcaf4 to 0xcbbc are not reached by any path from the entry, and their branches are not listed.
- `_baduk` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xcc54 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xcc54-0xd070 (1052 bytes).
  It occupies 1052 bytes.
  The `ld` at 0xcc58 loads 8 bytes from abs 0xffffffffffffc3c0.
  Calls assfail via direct with a0=sym(.data)+1440, a1=sym(.data)+1453, a2=0x0, a3=a3 at entry (arg3) (`j` at 0xcc88).
  The instructions from 0xcc90 to 0xd06c are not reached by any path from the entry, and their branches are not listed.
- `ecommon` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd070 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd070-0xd124 (180 bytes).
  It occupies 180 bytes.
  The `ld` at 0xd070 loads 8 bytes from abs 0xffffffffffffc038.
  23 such `sd` accesses store 8 bytes to ?, including `sd` at 0xd074, `sd` at 0xd078, `sd` at 0xd07c.
  The `ld` at 0xd0c0 loads 8 bytes from abs 0xffffffffffffc020.
  The `lw` at 0xd0d4 loads 4 bytes from [-0x3fe0]:8 +0x2e0.
  The `ld` at 0xd118 loads 8 bytes from ?.
  The `jal` at 0xd0b8 calls tfi_save with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xd0e0 calls ktimer_switch with a0=[-0x3fe0]:8, a1=?, a2=?, a3=?.
  Calls (unknown callee) via register with a0=?, a1=?, a2=?, a3=? (`jr` at 0xd11c).
  The `beq` branch at 0xd0c8 targets 0xd0e8, is taken when a0(=[-0x3fe0]:8) == 0, and falls through when a0(=[-0x3fe0]:8) != 0.
  The `bne` branch at 0xd0d8 targets 0xd0e8, is taken when (k0(?) & 0x100) != 0, and falls through when (k0(?) & 0x100) == 0.
- `ecommon_allsaved` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd0c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd0c0-0xd124 (100 bytes).
  It occupies 100 bytes.
  The `ld` at 0xd0c0 loads 8 bytes from abs 0xffffffffffffc020.
  The `lw` at 0xd0d4 loads 4 bytes from [-0x3fe0]:8 +0x2e0.
  5 such `sd` accesses store 8 bytes to ?, including `sd` at 0xd0f0, `sd` at 0xd0f8, `sd` at 0xd0fc.
  The `ld` at 0xd118 loads 8 bytes from ?.
  The `jal` at 0xd0e0 calls ktimer_switch with a0=[-0x3fe0]:8, a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  Calls (unknown callee) via register with a0=?, a1=?, a2=?, a3=? (`jr` at 0xd11c).
  The `beq` branch at 0xd0c8 targets 0xd0e8, is taken when a0(=[-0x3fe0]:8) == 0, and falls through when a0(=[-0x3fe0]:8) != 0.
  The `bne` branch at 0xd0d8 targets 0xd0e8, is taken when (k0(?) & 0x100) != 0, and falls through when (k0(?) & 0x100) == 0.
- `softfp_adderr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd124 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd124-0xd148 (36 bytes).
  It occupies 36 bytes.
  The `jal` at 0xd130 calls cmn_err with a0=0x0, a1=sym(.rodata)+2120, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd140 has v0 = 0x0.
- `softfp_insterr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd148 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd148-0xd170 (40 bytes).
  It occupies 40 bytes.
  The `jal` at 0xd158 calls cmn_err with a0=0x0, a1=sym(.rodata)+2120, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd168 has v0 = 0x0.
- `ioerror_dump` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd170 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd170-0xd444 (724 bytes).
  It occupies 724 bytes.
  The `ld` at 0xd1f8 loads 8 bytes from (sym(imask_values) + (a2 << 0x3)) +0x0.
  14 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x0, including `lw` at 0xd1fc, `lw` at 0xd21c, `lw` at 0xd304.
  The `lh` at 0xd210 loads 2 bytes from a3 (arg3 at entry) +0x4.
  3 such `lh` accesses load 2 bytes from a3 (arg3 at entry) +0xa, including `lh` at 0xd28c, `lh` at 0xd328, `lh` at 0xd440.
  The `ld` at 0xd29c loads 8 bytes from (sym(pdaindr) + ([a3+10]:2 << 0x4)) +0x8.
  The `ld` at 0xd2a8 loads 8 bytes from [(sym(pdaindr) + ([a3+10]:2 << 0x4))+8]:8 +0x648.
  The `lh` at 0xd2f4 loads 2 bytes from a3 (arg3 at entry) +0x6.
  The `lh` at 0xd30c loads 2 bytes from a3 (arg3 at entry) +0x8.
  The `lh` at 0xd344 loads 2 bytes from a3 (arg3 at entry) +0xc.
  The `lh` at 0xd360 loads 2 bytes from a3 (arg3 at entry) +0xe.
  The `ld` at 0xd378 loads 8 bytes from a3 (arg3 at entry) +0x10.
  The `ld` at 0xd390 loads 8 bytes from a3 (arg3 at entry) +0x18.
  The `ld` at 0xd3a8 loads 8 bytes from a3 (arg3 at entry) +0x20.
  The `ld` at 0xd3c4 loads 8 bytes from a3 (arg3 at entry) +0x28.
  The `ld` at 0xd3e0 loads 8 bytes from a3 (arg3 at entry) +0x30.
  The `ld` at 0xd3fc loads 8 bytes from a3 (arg3 at entry) +0x38.
  The `ld` at 0xd418 loads 8 bytes from a3 (arg3 at entry) +0x40.
  The `ld` at 0xd430 loads 8 bytes from a3 (arg3 at entry) +0x48.
  The `jal` at 0xd1f4 calls printf with a0=sym(.rodata)+2120, a1=a0 at entry (arg0), a2=sym(.rodata)+2120, a3=sym(.rodata)+2120, a4=sym(.rodata)+2120, a5=sym(.rodata)+2120, a6=[(sym(imask_values) + (a2 << 0x3))]:8, a7=(a2 << 0x3).
  The `jal` at 0xd214 calls printf with a0=sym(.rodata)+2120, a1=sym(.rodata)+2120, a2=[a3+4]:2, a3=?.
  The `jal` at 0xd2a4 calls printf with a0=sym(.rodata)+2120, a1=[a3+10]:2, a2=[[(sym(pdaindr) + ([a3+10]:2 << 0x4))+8]:8+1608]:8, a3=([a3+10]:2 << 0x4).
  The `jal` at 0xd2b8 calls printf with a0=sym(.rodata)+2120, a1=?, a2=?, a3=?.
  The `jal` at 0xd2f8 calls printf with a0=sym(.rodata)+2120, a1=sym(.rodata)+2120, a2=[a3+6]:2, a3=?.
  The `jal` at 0xd310 calls printf with a0=sym(.rodata)+2120, a1=sym(.rodata)+2120, a2=[a3+8]:2, a3=?.
  The `jal` at 0xd32c calls printf with a0=sym(.rodata)+2120, a1=sym(.rodata)+2120, a2=[a3+10]:2, a3=?.
  The `jal` at 0xd348 calls printf with a0=sym(.rodata)+2120, a1=sym(.rodata)+2120, a2=[a3+12]:2, a3=?.
  The `jal` at 0xd364 calls printf with a0=sym(.rodata)+2120, a1=sym(.rodata)+2120, a2=[a3+14]:2, a3=?.
  The `jal` at 0xd37c calls printf with a0=sym(.rodata)+2120, a1=sym(.rodata)+2120, a2=[a3+16]:8, a3=?.
  The `jal` at 0xd394 calls printf with a0=sym(.rodata)+2120, a1=sym(.rodata)+2120, a2=[a3+24]:8, a3=?.
  The `jal` at 0xd3ac calls printf with a0=sym(.rodata)+2120, a1=sym(.rodata)+2120, a2=[a3+32]:8, a3=?.
  The `jal` at 0xd3c8 calls printf with a0=sym(.rodata)+2120, a1=sym(.rodata)+2120, a2=[a3+40]:8, a3=?.
  The `jal` at 0xd3e4 calls printf with a0=sym(.rodata)+2120, a1=sym(.rodata)+2120, a2=[a3+48]:8, a3=?.
  The `jal` at 0xd400 calls printf with a0=sym(.rodata)+2120, a1=sym(.rodata)+2120, a2=[a3+56]:8, a3=?.
  The `jal` at 0xd41c calls printf with a0=sym(.rodata)+2120, a1=sym(.rodata)+2120, a2=[a3+64]:8, a3=([a3] << 0xd).
  The `jal` at 0xd434 calls printf with a0=sym(.rodata)+2120, a1=sym(.rodata)+2120, a2=[a3+72]:8, a3=([a3] << 0xd).
  The `beq` branch at 0xd18c targets 0xd2cc, is taken when (a1 & 0x4) == 0, and falls through when (a1 & 0x4) != 0.
  The `beq` branch at 0xd1a0 targets 0xd2d8, is taken when (a1 & 0x8) == 0, and falls through when (a1 & 0x8) != 0.
  The `beq` branch at 0xd1b4 targets 0xd2e0, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The `beq` branch at 0xd1c8 targets 0xd2e8, is taken when (a1 & 0x2) == 0, and falls through when (a1 & 0x2) != 0.
  The `beq` branch at 0xd204 targets 0xd224, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bltz` branch at 0xd224 targets 0xd2f0, is taken when t0(=([a3] << 0x1)) < 0 (signed), and falls through when t0(=([a3] << 0x1)) >= 0 (signed).
  The `bltz` branch at 0xd22c targets 0xd308, is taken when t1(=([a3] << 0x2)) < 0 (signed), and falls through when t1(=([a3] << 0x2)) >= 0 (signed).
  The `bltz` branch at 0xd234 targets 0xd320, is taken when t2(=([a3] << 0x3)) < 0 (signed), and falls through when t2(=([a3] << 0x3)) >= 0 (signed).
  The `bltz` branch at 0xd23c targets 0xd33c, is taken when t3(=([a3] << 0x4)) < 0 (signed), and falls through when t3(=([a3] << 0x4)) >= 0 (signed).
  The `bltz` branch at 0xd244 targets 0xd358, is taken when t8(=([a3] << 0x5)) < 0 (signed), and falls through when t8(=([a3] << 0x5)) >= 0 (signed).
  The `bltz` branch at 0xd24c targets 0xd374, is taken when t9(=([a3] << 0x6)) < 0 (signed), and falls through when t9(=([a3] << 0x6)) >= 0 (signed).
  The `bltz` branch at 0xd254 targets 0xd38c, is taken when ra(=([a3] << 0x7)) < 0 (signed), and falls through when ra(=([a3] << 0x7)) >= 0 (signed).
  The `bltz` branch at 0xd25c targets 0xd3a4, is taken when at(=([a3] << 0x8)) < 0 (signed), and falls through when at(=([a3] << 0x8)) >= 0 (signed).
  The `bltz` branch at 0xd264 targets 0xd3bc, is taken when v0(=([a3] << 0x9)) < 0 (signed), and falls through when v0(=([a3] << 0x9)) >= 0 (signed).
  The `bltz` branch at 0xd26c targets 0xd3d8, is taken when v1(=([a3] << 0xa)) < 0 (signed), and falls through when v1(=([a3] << 0xa)) >= 0 (signed).
  The `bltz` branch at 0xd274 targets 0xd3f4, is taken when a1(=([a3] << 0xb)) < 0 (signed), and falls through when a1(=([a3] << 0xb)) >= 0 (signed).
  The `bltz` branch at 0xd27c targets 0xd410, is taken when a2(=([a3] << 0xc)) < 0 (signed), and falls through when a2(=([a3] << 0xc)) >= 0 (signed).
  The `bltz` branch at 0xd284 targets 0xd42c, is taken when a3(=([a3] << 0xd)) < 0 (signed), and falls through when a3(=([a3] << 0xd)) >= 0 (signed).
  The `beq` branch at 0xd2d0 targets 0xd19c and is always taken.
  The `beq` branch at 0xd2d8 targets 0xd1b0 and is always taken.
  The `beq` branch at 0xd2e0 targets 0xd1c4 and is always taken.
  The `beq` branch at 0xd2e8 targets 0xd1d8 and is always taken.
  The `beq` branch at 0xd300 targets 0xd228 and is always taken.
  The `beq` branch at 0xd318 targets 0xd230 and is always taken.
  The `beq` branch at 0xd334 targets 0xd238 and is always taken.
  The `beq` branch at 0xd350 targets 0xd240 and is always taken.
  The `beq` branch at 0xd36c targets 0xd248 and is always taken.
  The `beq` branch at 0xd384 targets 0xd250 and is always taken.
  The `beq` branch at 0xd39c targets 0xd258 and is always taken.
  The `beq` branch at 0xd3b4 targets 0xd260 and is always taken.
  The `beq` branch at 0xd3d0 targets 0xd268 and is always taken.
  The `beq` branch at 0xd3ec targets 0xd270 and is always taken.
  The `beq` branch at 0xd408 targets 0xd278 and is always taken.
  The `beq` branch at 0xd424 targets 0xd280 and is always taken.
  The `beq` branch at 0xd43c targets 0xd290 and is always taken.
  The return at 0xd2c4 has v0 = ret(printf).
- `error_mark_page` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd444 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd444-0xd468 (36 bytes).
  It occupies 36 bytes.
  The `jal` at 0xd454 calls cmn_err with a0=0x5, a1=sym(.rodata)+2120, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd460 has v0 = ret(cmn_err).
- `error_reclaim_page` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd468 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd468-0xd490 (40 bytes).
  It occupies 40 bytes.
  The `jal` at 0xd478 calls cmn_err with a0=0x5, a1=sym(.rodata)+2120, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd488 has v0 = 0x0.
- `_hook_exceptions` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd490 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd490-0xd718 (648 bytes).
  It occupies 648 bytes.
  2 such `lw` accesses load 4 bytes from sym(utlbmiss_prolog_patch) +0x0, including `lw` at 0xd4a8, `lw` at 0xd584.
  2 such `lw` accesses load 4 bytes from sym(utlbmiss_prolog_mp) -0x4, including `lw` at 0xd4f0, `lw` at 0xd508.
  12 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd4f4, `sw` at 0xd510, `sw` at 0xd594.
  The `sw` at 0xd520 stores 4 bytes to abs 0xffffffffa0000000.
  6 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd590, `lw` at 0xd5a8, `lw` at 0xd5dc.
  The `sw` at 0xd60c stores 4 bytes to abs 0xffffffffa0000080.
  2 such `lw` accesses load 4 bytes from sym(_ecc_errorvec) -0x4, including `lw` at 0xd670, `lw` at 0xd688.
  2 such `lw` accesses load 4 bytes from sym(_j_exceptnorm) -0x4, including `lw` at 0xd6b0, `lw` at 0xd6c8.
  The `sd` at 0xd6e8 stores 8 bytes to abs 0xa800000000000418.
  The `sd` at 0xd6f4 stores 8 bytes to abs 0xa800000000000420.
  The `jal` at 0xd6f0 calls flush_cache with a0=?, a1=?, a2=sym(_j_endexceptnorm), a3=?, a6=-0x3b38, a7=0xa800000000000420.
  The `jal` at 0xd708 calls assfail with a0=sym(.rodata)+3000, a1=sym(.rodata)+3000, a2=0x19e, a3=?, a4=sym(utlbmiss), a5=0x1, a6=sym(utlbmiss_prolog_patch).
  The `blez` branch at 0xd4a4 targets 0xd4b8, is taken when at(=[sym(kdebug)]:2) <= 0 (signed), and falls through when at(=[sym(kdebug)]:2) > 0 (signed).
  The `beq` branch at 0xd4d8 targets 0xd514, is taken when a1(=sym(utlbmiss_prolog_mp)) >= s2(=sym(eutlbmiss_prolog_mp)) (unsigned), and falls through when a1(=sym(utlbmiss_prolog_mp)) < s2(=sym(eutlbmiss_prolog_mp)) (unsigned).
  The `beq` branch at 0xd4f8 targets 0xd514, is taken when a1(=sym(utlbmiss_prolog_mp)) >= s2(=sym(eutlbmiss_prolog_mp)) (unsigned), and falls through when a1(=sym(utlbmiss_prolog_mp)) < s2(=sym(eutlbmiss_prolog_mp)) (unsigned).
  The `bne` branch at 0xd50c targets 0xd4e4, is taken when a1(=sym(utlbmiss_prolog_mp)) < s2(=sym(eutlbmiss_prolog_mp)) (unsigned), and falls through when a1(=sym(utlbmiss_prolog_mp)) >= s2(=sym(eutlbmiss_prolog_mp)) (unsigned).
  The `beq` branch at 0xd518 targets 0xd528, is taken when t2(=[sym(need_utlbmiss_patch)]) == 0, and falls through when t2(=[sym(need_utlbmiss_patch)]) != 0.
  The `beq` branch at 0xd54c targets 0xd560, is taken when t3(?) >= 0x81 (signed), and falls through when t3(?) < 0x81 (signed).
  The `beq` branch at 0xd558 targets 0xd564 and is always taken.
  The `beq` branch at 0xd570 targets 0xd704, is taken when t8(?) >= 0x81 (signed), and falls through when t8(?) < 0x81 (signed).
  The `beq` branch at 0xd580 targets 0xd5b4, is taken when s3(?) >= s1(?) (unsigned), and falls through when s3(?) < s1(?) (unsigned).
  The `beq` branch at 0xd598 targets 0xd5b4, is taken when a1(?) >= s1(?) (unsigned), and falls through when a1(?) < s1(?) (unsigned).
  The `bne` branch at 0xd5ac targets 0xd588, is taken when a1(?) < s1(?) (unsigned), and falls through when a1(?) >= s1(?) (unsigned).
  The `blez` branch at 0xd5c4 targets 0xd600, is taken when a1(=[sym(utlbmiss_prolog_size)]) <= 0 (signed), and falls through when a1(=[sym(utlbmiss_prolog_size)]) > 0 (signed).
  The `beq` branch at 0xd5e4 targets 0xd600, is taken when a1(?) >= s2(=sym(eutlbmiss_prolog_mp)) (unsigned), and falls through when a1(?) < s2(=sym(eutlbmiss_prolog_mp)) (unsigned).
  The `bne` branch at 0xd5f8 targets 0xd5d0, is taken when a1(?) < s2(=sym(eutlbmiss_prolog_mp)) (unsigned), and falls through when a1(?) >= s2(=sym(eutlbmiss_prolog_mp)) (unsigned).
  The `beq` branch at 0xd604 targets 0xd610, is taken when t3(=[sym(need_utlbmiss_patch)]) == 0, and falls through when t3(=[sym(need_utlbmiss_patch)]) != 0.
  The `beq` branch at 0xd610 targets 0xd644, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xd628 targets 0xd644, is taken when a1(?) >= s1(?) (unsigned), and falls through when a1(?) < s1(?) (unsigned).
  The `bne` branch at 0xd63c targets 0xd618, is taken when a1(?) < s1(?) (unsigned), and falls through when a1(?) >= s1(?) (unsigned).
  The `beq` branch at 0xd660 targets 0xd694, is taken when a1(=sym(_ecc_errorvec)) >= a3(=sym(_ecc_end)) (unsigned), and falls through when a1(=sym(_ecc_errorvec)) < a3(=sym(_ecc_end)) (unsigned).
  The `beq` branch at 0xd678 targets 0xd694, is taken when a1(=sym(_ecc_errorvec)) >= a3(=sym(_ecc_end)) (unsigned), and falls through when a1(=sym(_ecc_errorvec)) < a3(=sym(_ecc_end)) (unsigned).
  The `bne` branch at 0xd68c targets 0xd668, is taken when a1(=sym(_ecc_errorvec)) < a3(=sym(_ecc_end)) (unsigned), and falls through when a1(=sym(_ecc_errorvec)) >= a3(=sym(_ecc_end)) (unsigned).
  The `beq` branch at 0xd698 targets 0xd6d8, is taken when a5(=sym(_j_exceptnorm)) >= a2(=sym(_j_endexceptnorm)) (unsigned), and falls through when a5(=sym(_j_exceptnorm)) < a2(=sym(_j_endexceptnorm)) (unsigned).
  The `beq` branch at 0xd6b8 targets 0xd6d4, is taken when a1(=sym(_j_exceptnorm)) >= a2(=sym(_j_endexceptnorm)) (unsigned), and falls through when a1(=sym(_j_exceptnorm)) < a2(=sym(_j_endexceptnorm)) (unsigned).
  The `bne` branch at 0xd6cc targets 0xd6a8, is taken when a1(=sym(_j_exceptnorm)) < a2(=sym(_j_endexceptnorm)) (unsigned), and falls through when a1(=sym(_j_exceptnorm)) >= a2(=sym(_j_endexceptnorm)) (unsigned).
  The `beq` branch at 0xd710 targets 0xd578 and is always taken.
  The return at 0xd6fc has v0 = ret(flush_cache).
- `sw_cachesynch_patch` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd718 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd718-0xd784 (108 bytes).
  It occupies 108 bytes.
  The `ld` at 0xd740 loads 8 bytes from sym(.data) +0x1d10.
  The `lw` at 0xd750 loads 4 bytes from sym(sw_cachesynch_patch_insts) +0x0.
  The `sw` at 0xd754 stores 4 bytes to ?.
  The `ld` at 0xd758 loads 8 bytes from sym(.data) +0x1d18.
  The `lw` at 0xd764 loads 4 bytes from sym(sw_cachesynch_patch_insts) +0x4.
  The `sw` at 0xd768 stores 4 bytes to sym(sw_cachesynch_op2) +0x0.
  The `ld` at 0xd76c loads 8 bytes from sym(.data) +0x1d20.
  The `jal` at 0xd720 calls get_cpu_irr with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xd734 targets 0xd77c, is taken when at(?) != v0(=0x4), and falls through when at(?) == v0(=0x4).
  The `beq` branch at 0xd748 targets 0xd77c, is taken when v0(=sym(sw_cachesynch_op1)) == 0, and falls through when v0(=sym(sw_cachesynch_op1)) != 0.
  The `beq` branch at 0xd75c targets 0xd77c, is taken when a1(=sym(sw_cachesynch_op2)) == 0, and falls through when a1(=sym(sw_cachesynch_op2)) != 0.
  The `bne` branch at 0xd774 targets 0xd750, is taken when a1(=sym(sw_cachesynch_op3)) != 0, and falls through when a1(=sym(sw_cachesynch_op3)) == 0.
  The return at 0xd77c has v0 = one of 0x4, sym(sw_cachesynch_op1).
- `_j_exceptnorm` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd790 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd790-0xd7a0 (16 bytes).
  It occupies 16 bytes.
  The `ld` at 0xd790 loads 8 bytes from abs 0xffffffffffffc000.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd798).
- `_j_endexceptnorm` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd7a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd7a0-0xd7b0 (16 bytes).
  It occupies 16 bytes.
  Calls exception via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xd7a8).
- `_j_exceptnorm_nosymmon` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd7a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd7a0-0xd7b0 (16 bytes).
  It occupies 16 bytes.
  Calls exception via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xd7a8).
- `utlbmiss` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd880 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd880-0xd8a8 (40 bytes).
  It occupies 40 bytes.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0xd890, `ld` at 0xd894.
- `utlbmiss_not_large_page` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd890 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd890-0xd8a8 (24 bytes).
  It occupies 24 bytes.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0xd890, `ld` at 0xd894.
- `eutlbmiss` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd8a8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd8a8-0xd930 (136 bytes).
  It occupies 136 bytes.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0xd8b8, `ld` at 0xd904, `ld` at 0xd910.
  The `sd` at 0xd8cc stores 8 bytes to abs 0xffffffffffffc038.
  The `ld` at 0xd928 loads 8 bytes from abs 0xffffffffffffc038.
  The `beq` branch at 0xd8c4 targets 0xd890, is taken when (k1(?) & 0xf) == 0, and falls through when (k1(?) & 0xf) != 0.
- `lpg_utlbmiss` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd8a8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd8a8-0xd930 (136 bytes).
  It occupies 136 bytes.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0xd8b8, `ld` at 0xd904, `ld` at 0xd910.
  The `sd` at 0xd8cc stores 8 bytes to abs 0xffffffffffffc038.
  The `ld` at 0xd928 loads 8 bytes from abs 0xffffffffffffc038.
  The `beq` branch at 0xd8c4 targets 0xd890, is taken when (k1(?) & 0xf) == 0, and falls through when (k1(?) & 0xf) != 0.
- `utlbmiss2` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd980 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd980-0xd9bc (60 bytes).
  It occupies 60 bytes.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0xd990, `ld` at 0xd994.
  The `beq` branch at 0xd9a4 targets 0xd9bc, is taken when k1(?) == 0, and falls through when k1(?) != 0.
  The `beq` branch at 0xd9ac targets 0xda20, is taken when k0(?) == 0, and falls through when k0(?) != 0.
- `utlbmiss2_not_large_page` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd990 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd990-0xd9bc (44 bytes).
  It occupies 44 bytes.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0xd990, `ld` at 0xd994.
  The `beq` branch at 0xd9a4 targets 0xd9bc, is taken when k1(?) == 0, and falls through when k1(?) != 0.
  The `beq` branch at 0xd9ac targets 0xda20, is taken when k0(?) == 0, and falls through when k0(?) != 0.
- `utlbmiss_sharedseg1` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd9c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd9c0-0xda20 (96 bytes).
  It occupies 96 bytes.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0xd9e0, `ld` at 0xd9e4, `ld` at 0xda10.
  The `bne` branch at 0xd9c0 targets 0xd9f8, is taken when k0(?) != 0, and falls through when k0(?) == 0.
- `utlbmiss_sharedseg2` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xda24 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xda24-0xda4c (40 bytes).
  It occupies 40 bytes.
  The `ld` at 0xda3c loads 8 bytes from ?.
- `lpg_overlay_utlbmiss` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xda4c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xda4c-0xdad4 (136 bytes).
  It occupies 136 bytes.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0xda5c, `ld` at 0xdaa8, `ld` at 0xdab4.
  The `sd` at 0xda70 stores 8 bytes to abs 0xffffffffffffc038.
  The `ld` at 0xdacc loads 8 bytes from abs 0xffffffffffffc038.
  The `beq` branch at 0xda68 targets 0xd990, is taken when (k1(?) & 0xf) == 0, and falls through when (k1(?) & 0xf) != 0.
- `elpg_overlay_utlbmiss` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xdad4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xdad4-0xdb00 (44 bytes).
  It occupies 44 bytes.
  The `lw` at 0xdae0 loads 4 bytes from abs 0xffffffffffffc4bc.
  The `sw` at 0xdaec stores 4 bytes to abs 0xffffffffffffc4bc.
  The `lw` at 0xdaf0 loads 4 bytes from abs 0xffffffffffffc4c0.
  The `sw` at 0xdafc stores 4 bytes to abs 0xffffffffffffc4c0.
  Calls utlbmiss via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdae8).
  Calls utlbmiss via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdaf8).
  The `beq` branch at 0xdadc targets 0xdaf0, is taken when (k1(?) & 0x10) == 0, and falls through when (k1(?) & 0x10) != 0.
- `utlbmiss1` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xdad4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xdad4-0xdb00 (44 bytes).
  It occupies 44 bytes.
  The `lw` at 0xdae0 loads 4 bytes from abs 0xffffffffffffc4bc.
  The `sw` at 0xdaec stores 4 bytes to abs 0xffffffffffffc4bc.
  The `lw` at 0xdaf0 loads 4 bytes from abs 0xffffffffffffc4c0.
  The `sw` at 0xdafc stores 4 bytes to abs 0xffffffffffffc4c0.
  Calls utlbmiss via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdae8).
  Calls utlbmiss via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdaf8).
  The `beq` branch at 0xdadc targets 0xdaf0, is taken when (k1(?) & 0x10) == 0, and falls through when (k1(?) & 0x10) != 0.
- `eutlbmiss1` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xdb00 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xdb00-0xdb2c (44 bytes).
  It occupies 44 bytes.
  The `lw` at 0xdb0c loads 4 bytes from abs 0xffffffffffffc4bc.
  The `sw` at 0xdb18 stores 4 bytes to abs 0xffffffffffffc4bc.
  The `lw` at 0xdb1c loads 4 bytes from abs 0xffffffffffffc4c0.
  The `sw` at 0xdb28 stores 4 bytes to abs 0xffffffffffffc4c0.
  Calls lpg_utlbmiss via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdb14).
  Calls lpg_utlbmiss via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdb24).
  The `beq` branch at 0xdb08 targets 0xdb1c, is taken when (k1(?) & 0x10) == 0, and falls through when (k1(?) & 0x10) != 0.
- `lpg_counting_utlbmiss` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xdb00 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xdb00-0xdb2c (44 bytes).
  It occupies 44 bytes.
  The `lw` at 0xdb0c loads 4 bytes from abs 0xffffffffffffc4bc.
  The `sw` at 0xdb18 stores 4 bytes to abs 0xffffffffffffc4bc.
  The `lw` at 0xdb1c loads 4 bytes from abs 0xffffffffffffc4c0.
  The `sw` at 0xdb28 stores 4 bytes to abs 0xffffffffffffc4c0.
  Calls lpg_utlbmiss via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdb14).
  Calls lpg_utlbmiss via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdb24).
  The `beq` branch at 0xdb08 targets 0xdb1c, is taken when (k1(?) & 0x10) == 0, and falls through when (k1(?) & 0x10) != 0.
- `elpg_counting_utlbmiss` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xdb2c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xdb2c-0xdb58 (44 bytes).
  It occupies 44 bytes.
  The `lw` at 0xdb38 loads 4 bytes from abs 0xffffffffffffc4bc.
  The `sw` at 0xdb44 stores 4 bytes to abs 0xffffffffffffc4bc.
  The `lw` at 0xdb48 loads 4 bytes from abs 0xffffffffffffc4c0.
  The `sw` at 0xdb54 stores 4 bytes to abs 0xffffffffffffc4c0.
  Calls utlbmiss2 via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdb40).
  Calls utlbmiss2 via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdb50).
  The `beq` branch at 0xdb34 targets 0xdb48, is taken when (k1(?) & 0x10) == 0, and falls through when (k1(?) & 0x10) != 0.
- `utlbmiss3` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xdb2c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xdb2c-0xdb58 (44 bytes).
  It occupies 44 bytes.
  The `lw` at 0xdb38 loads 4 bytes from abs 0xffffffffffffc4bc.
  The `sw` at 0xdb44 stores 4 bytes to abs 0xffffffffffffc4bc.
  The `lw` at 0xdb48 loads 4 bytes from abs 0xffffffffffffc4c0.
  The `sw` at 0xdb54 stores 4 bytes to abs 0xffffffffffffc4c0.
  Calls utlbmiss2 via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdb40).
  Calls utlbmiss2 via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdb50).
  The `beq` branch at 0xdb34 targets 0xdb48, is taken when (k1(?) & 0x10) == 0, and falls through when (k1(?) & 0x10) != 0.
- `eutlbmiss3` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xdb58 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xdb58-0xdb84 (44 bytes).
  It occupies 44 bytes.
  The `lw` at 0xdb64 loads 4 bytes from abs 0xffffffffffffc4bc.
  The `sw` at 0xdb70 stores 4 bytes to abs 0xffffffffffffc4bc.
  The `lw` at 0xdb74 loads 4 bytes from abs 0xffffffffffffc4c0.
  The `sw` at 0xdb80 stores 4 bytes to abs 0xffffffffffffc4c0.
  Calls lpg_overlay_utlbmiss via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdb6c).
  Calls lpg_overlay_utlbmiss via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdb7c).
  The `beq` branch at 0xdb60 targets 0xdb74, is taken when (k1(?) & 0x10) == 0, and falls through when (k1(?) & 0x10) != 0.
- `lpg_overlay_counting_utlbmiss` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xdb58 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xdb58-0xdb84 (44 bytes).
  It occupies 44 bytes.
  The `lw` at 0xdb64 loads 4 bytes from abs 0xffffffffffffc4bc.
  The `sw` at 0xdb70 stores 4 bytes to abs 0xffffffffffffc4bc.
  The `lw` at 0xdb74 loads 4 bytes from abs 0xffffffffffffc4c0.
  The `sw` at 0xdb80 stores 4 bytes to abs 0xffffffffffffc4c0.
  Calls lpg_overlay_utlbmiss via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdb6c).
  Calls lpg_overlay_utlbmiss via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdb7c).
  The `beq` branch at 0xdb60 targets 0xdb74, is taken when (k1(?) & 0x10) == 0, and falls through when (k1(?) & 0x10) != 0.
- `elpg_overlay_counting_utlbmiss` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xdb84 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xdb84-0xdb88 (4 bytes).
  It occupies 4 bytes.
  The `ld` at 0xdb84 loads 8 bytes from abs 0xffffffffffffc4c8.
- `utlbmiss_prolog_patch` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xdb84 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xdb84-0xdb88 (4 bytes).
  It occupies 4 bytes.
  The `ld` at 0xdb84 loads 8 bytes from abs 0xffffffffffffc4c8.
- `utlbmissj` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xdb88 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xdb88-0xdba8 (32 bytes).
  It occupies 32 bytes.
  Calls utlbmiss via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdb98).
  The instructions from 0xdba0 to 0xdba4 are not reached by any path from the entry, and their branches are not listed.
- `_ecc_errorvec` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xdbb0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xdbb0-0xdc18 (104 bytes).
  It occupies 104 bytes.
  The `ld` at 0xdbcc loads 8 bytes from abs 0xffffffffaff50000.
  The `ld` at 0xdbd4 loads 8 bytes from ([0xffffffffaff50000]:8 << 0x3) +0xff0.
  The `sd` at 0xdbd8 stores 8 bytes to [([0xffffffffaff50000]:8 << 0x3)+4080]:8 +0xc8.
  The `sd` at 0xdbdc stores 8 bytes to [([0xffffffffaff50000]:8 << 0x3)+4080]:8 +0x0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdc10).
- `_ecc_end` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xdc18 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xdc18-0xdc30 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0xdc2c loads 4 bytes from (a0 << 0x2) -0x500fffe0.
  The return at 0xdc28 has v0 = [(a0 << 0x2)-1343225824].
- `get_mem_conf` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xdc18 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xdc18-0xdc30 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0xdc2c loads 4 bytes from (a0 << 0x2) -0x500fffe0.
  The return at 0xdc28 has v0 = [(a0 << 0x2)-1343225824].
- `bank_addrlo` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xdc30 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xdc30-0xdc54 (36 bytes).
  It occupies 36 bytes.
  The `jal` at 0xdc38 calls _ecc_end [0xdc18] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdc4c has v0 = ?.
- `banksz` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xdc54 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xdc54-0xdc98 (68 bytes).
  It occupies 68 bytes.
  The `jal` at 0xdc5c calls _ecc_end [0xdc18] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdc7c targets 0xdc90, is taken when (v0(=ret(_ecc_end)) & a3(=0xffffffff80000000)) == 0, and falls through when (v0(=ret(_ecc_end)) & a3(=0xffffffff80000000)) != 0.
  The `beq` branch at 0xdc90 targets 0xdc88 and is always taken.
  The return at 0xdc88 has v0 = one of ?, 0x0.
- `addr_to_bank` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xdc98 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xdc98-0xdd3c (164 bytes).
  It occupies 164 bytes.
  The `jal` at 0xdcdc calls banksz [0xdc54] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xdcec calls bank_addrlo [0xdc30] with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0xdcb0 targets 0xdcbc, is taken when a0 < at(=0x20000000) (unsigned), and falls through when a0 >= at(=0x20000000) (unsigned).
  The `beq` branch at 0xdcc4 targets 0xdcdc and is always taken.
  The `beq` branch at 0xdcd4 targets 0xdd1c, is taken when s0(?) >= 0x4 (signed), and falls through when s0(?) < 0x4 (signed).
  The `beq` branch at 0xdce4 targets 0xdccc, is taken when v0(=ret(banksz)) == 0, and falls through when v0(=ret(banksz)) != 0.
  The `bne` branch at 0xdd00 targets 0xdccc, is taken when s2(?) < v0(=ret(bank_addrlo)) (unsigned), and falls through when s2(?) >= v0(=ret(bank_addrlo)) (unsigned).
  The `beq` branch at 0xdd0c targets 0xdccc, is taken when s2(?) >= a0(?) (unsigned), and falls through when s2(?) < a0(?) (unsigned).
  The `beq` branch at 0xdd14 targets 0xdd24 and is always taken.
  The return at 0xdd34 has v0 = one of ?, -0x1.
- `szmem` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xdd3c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xdd3c-0xdddc (160 bytes).
  It occupies 160 bytes.
  The `jal` at 0xdd74 calls banksz [0xdc54] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xdd54 targets 0xdd68, is taken when at(=[sym(.sdata)+216]:8) == 0, and falls through when at(=[sym(.sdata)+216]:8) != 0.
  The `bne` branch at 0xdd8c targets 0xdd74, is taken when s0(?) < 0x4 (signed), and falls through when s0(?) >= 0x4 (signed).
  The `beq` branch at 0xdd9c targets 0xddd4, is taken when s2(=a1) == 0, and falls through when s2(=a1) != 0.
  The `beq` branch at 0xddcc targets 0xdd5c and is always taken.
  The `beq` branch at 0xddd4 targets 0xddb8 and is always taken.
  The return at 0xdd60 has v0 = one of ([sym(.sdata)+216]:8 << 0x0), ?.
- `is_in_main_memory` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xdddc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xdddc-0xde14 (56 bytes).
  It occupies 56 bytes.
  The `bne` branch at 0xddec targets 0xddfc, is taken when a0 < a4(=0x20000000) (unsigned), and falls through when a0 >= a4(=0x20000000) (unsigned).
  The `bne` branch at 0xddf4 targets 0xde04, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0xddfc targets 0xde0c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The return at 0xde04 has v0 = 0x1.
  The return at 0xde0c has v0 = 0x0.
- `block_is_in_main_memory` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xde14 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xde14-0xde60 (76 bytes).
  It occupies 76 bytes.
  The `jal` at 0xde20 calls is_in_main_memory with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xde38 calls is_in_main_memory with a0=(a0 + a1)-1, a1=a1 at entry (arg1), a2=?, a3=?.
  The `beq` branch at 0xde28 targets 0xde50, is taken when v0(=ret(is_in_main_memory)) == 0, and falls through when v0(=ret(is_in_main_memory)) != 0.
  The `beq` branch at 0xde40 targets 0xde54, is taken when v0(=ret(is_in_main_memory)) == 0, and falls through when v0(=ret(is_in_main_memory)) != 0.
  The `beq` branch at 0xde48 targets 0xde54 and is always taken.
  The return at 0xde58 has v0 = one of 0x0, 0x1.
- `is_in_pfdat` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xde60 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xde60-0xde94 (52 bytes).
  It occupies 52 bytes.
  The `bne` branch at 0xde70 targets 0xde88, is taken when a0 < at(?) (signed), and falls through when a0 >= at(?) (signed).
  The `bne` branch at 0xde80 targets 0xde8c, is taken when a0 < v1(=[sym(.sdata)+216]:8+32768) (unsigned), and falls through when a0 >= v1(=[sym(.sdata)+216]:8+32768) (unsigned).
  The return at 0xde8c has v0 = one of 0x0, 0x1.
- `clean_icache` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xde94 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xde94-0xdf28 (148 bytes).
  It occupies 148 bytes.
  The `jal` at 0xdef8 calls __icache_inval with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?, a5=0xa800000000000000, a6=0x1.
  The `jal` at 0xdf18 calls __cache_wb_inval with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=0xa800010000000000, a6=0x1.
  The `beq` branch at 0xdea0 targets 0xdf00, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0xdebc targets 0xdedc, is taken when (a3 & 0x100) == 0, and falls through when (a3 & 0x100) != 0.
  The `bne` branch at 0xded0 targets 0xdee0, is taken when a0 < at(=0xa800000000000000) (unsigned), and falls through when a0 >= at(=0xa800000000000000) (unsigned).
  The `bne` branch at 0xded8 targets 0xdf18, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `bne` branch at 0xdee8 targets 0xdef4, is taken when a0 < v0(=0x10000000000) (unsigned), and falls through when a0 >= v0(=0x10000000000) (unsigned).
  The `beq` branch at 0xdef0 targets 0xdf0c, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0xdf10 targets 0xdef8 and is always taken.
  The `beq` branch at 0xdf20 targets 0xdf04 and is always taken.
  The return at 0xdf04 has v0 = one of ?, ret(__cache_wb_inval).
- `clean_dcache` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xdf28 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xdf28-0xe008 (224 bytes).
  It occupies 224 bytes.
  The `jal` at 0xdfbc calls __dcache_inval with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=-0xb, a7=0x1.
  The `jal` at 0xdfd4 calls __dcache_wb with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=-0xb, a7=0x1.
  The `jal` at 0xdfe8 calls __cache_wb_inval with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=a0 at entry (arg0), a6=-0xb, a7=0x1.
  The `jal` at 0xdff8 calls __dcache_wb_inval with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=-0xb, a7=0x1.
  The `beq` branch at 0xdf38 targets 0xdfdc, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0xdf68 targets 0xdf88, is taken when (a3 & 0x100) == 0, and falls through when (a3 & 0x100) != 0.
  The `bne` branch at 0xdf7c targets 0xdf8c, is taken when a0 < t9(=0xa800000000000000) (unsigned), and falls through when a0 >= t9(=0xa800000000000000) (unsigned).
  The `bne` branch at 0xdf84 targets 0xdfe8, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `bne` branch at 0xdf98 targets 0xdfa8, is taken when a0 < at(=0x10000000000) (unsigned), and falls through when a0 >= at(=0x10000000000) (unsigned).
  The `beq` branch at 0xdfa0 targets 0xdfac, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xdfac targets 0xdff8, is taken when t2(?) == t3(=0x3), and falls through when t2(?) != t3(=0x3).
  The `beq` branch at 0xdfb4 targets 0xdfcc, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xdfc4 targets 0xdfe0 and is always taken.
  The `beq` branch at 0xdfcc targets 0xdfe0, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0xdff0 targets 0xdfe0 and is always taken.
  The `beq` branch at 0xe000 targets 0xdfe0 and is always taken.
  The return at 0xdfe0 has v0 = one of ret(__dcache_inval), ?, ret(__cache_wb_inval), ret(__dcache_wb_inval).
- `sync_dcaches_excl` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xe008 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xe008-0xe124 (284 bytes).
  It occupies 284 bytes.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc020, including `ld` at 0xe014, `ld` at 0xe080.
  2 such `lbu` accesses load 1 byte from abs 0xffffffffffffc04f, including `lbu` at 0xe038, `lbu` at 0xe0d0.
  3 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xe098, `lbu` at 0xe0ac, `lbu` at 0xe0c4.
  The `jal` at 0xe044 calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xe070 calls __dcache_wb_inval with a0=?, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0xe0dc calls splx with a0=?, a1=[-0x3fe0]:8, a2=?, a3=?, a5=0x2.
  The `jal` at 0xe104 calls rt_unpin_thread with a0=?, a1=[-0x3fe0]:8, a2=?, a3=?, a4=[-0x3fb1]:1, a5=0x2.
  The `jal` at 0xe114 calls rt_pin_thread with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xe030 targets 0xe044, is taken when at(=[-0x3fe0]:8) == 0, and falls through when at(=[-0x3fe0]:8) != 0.
  The `beq` branch at 0xe03c targets 0xe114, is taken when v0(=[-0x3fb1]:1) == v1(=0x2), and falls through when v0(=[-0x3fb1]:1) != v1(=0x2).
  The `beq` branch at 0xe07c targets 0xe0c8, is taken when s1(=a1) == 0, and falls through when s1(=a1) != 0.
  The `bne` branch at 0xe09c targets 0xe0c8, is taken when a0(=a1-1) < a2(?) (unsigned), and falls through when a0(=a1-1) >= a2(?) (unsigned).
  The `bne` branch at 0xe0b0 targets 0xe0c8, is taken when a0(=a1-1) < a2(?) (unsigned), and falls through when a0(=a1-1) >= a2(?) (unsigned).
  The `beq` branch at 0xe0c0 targets 0xe08c, is taken when a0(=a1-1) >= a2(?) (unsigned), and falls through when a0(=a1-1) < a2(?) (unsigned).
  The `beq` branch at 0xe0c8 targets 0xe0dc, is taken when a1(=[-0x3fe0]:8) == 0, and falls through when a1(=[-0x3fe0]:8) != 0.
  The `beq` branch at 0xe0d4 targets 0xe104, is taken when a4(=[-0x3fb1]:1) == a5(=0x2), and falls through when a4(=[-0x3fb1]:1) != a5(=0x2).
  The `beq` branch at 0xe10c targets 0xe0e8 and is always taken.
  The `beq` branch at 0xe11c targets 0xe050 and is always taken.
  The return at 0xe0fc has v0 = 0x1.
- `sync_dcaches` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xe124 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xe124-0xe26c (328 bytes).
  It occupies 328 bytes.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc020, including `ld` at 0xe168, `ld` at 0xe1a0.
  2 such `lbu` accesses load 1 byte from abs 0xffffffffffffc04f, including `lbu` at 0xe174, `lbu` at 0xe208.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xe1dc, `lbu` at 0xe1fc.
  The `jal` at 0xe158 calls sync_dcaches_excl with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xe180 calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xe214 calls rt_unpin_thread with a0=?, a1=[-0x3fe0]:8, a2=?, a3=?.
  The `jal` at 0xe224 calls splx with a0=?, a1=[-0x3fe0]:8, a2=?, a3=?.
  The `jal` at 0xe250 calls rt_pin_thread with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgez` branch at 0xe150 targets 0xe168, is taken when at(=(a3 << 0x2f)) >= 0 (signed), and falls through when at(=(a3 << 0x2f)) < 0 (signed).
  The `beq` branch at 0xe160 targets 0xe230 and is always taken.
  The `beq` branch at 0xe16c targets 0xe180, is taken when t8(=[-0x3fe0]:8) == 0, and falls through when t8(=[-0x3fe0]:8) != 0.
  The `beq` branch at 0xe178 targets 0xe250, is taken when t9(=[-0x3fb1]:1) == ra(=0x2), and falls through when t9(=[-0x3fb1]:1) != ra(=0x2).
  The `bne` branch at 0xe1a8 targets 0xe1b4, is taken when s0(?) < at(=0x10000000000) (unsigned), and falls through when s0(?) >= at(=0x10000000000) (unsigned).
  The `beq` branch at 0xe1b0 targets 0xe260, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0xe1c4 targets 0xe200, is taken when s1(=a1) == 0, and falls through when s1(=a1) != 0.
  The `bne` branch at 0xe1e4 targets 0xe200, is taken when a0(=a1-1) < v0(?) (unsigned), and falls through when a0(=a1-1) >= v0(?) (unsigned).
  The `beq` branch at 0xe1f8 targets 0xe1d0, is taken when a0(=a1-1) >= v0(?) (unsigned), and falls through when a0(=a1-1) < v0(?) (unsigned).
  The `beq` branch at 0xe200 targets 0xe224, is taken when a1(=[-0x3fe0]:8) == 0, and falls through when a1(=[-0x3fe0]:8) != 0.
  The `bne` branch at 0xe20c targets 0xe224, is taken when t2(=[-0x3fb1]:1) != t3(=0x2), and falls through when t2(=[-0x3fb1]:1) == t3(=0x2).
  The `beq` branch at 0xe21c targets 0xe230 and is always taken.
  The `beq` branch at 0xe258 targets 0xe18c and is always taken.
  The `beq` branch at 0xe264 targets 0xe1c4 and is always taken.
  The return at 0xe248 has v0 = one of ret(sync_dcaches_excl), 0x0.
- `__heart_invalidate_war` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xe26c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xe26c-0xe348 (220 bytes).
  It occupies 220 bytes.
  3 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xe2e8, `lbu` at 0xe2fc, `lbu` at 0xe314.
  The `jal` at 0xe2b8 calls __dcache_inval with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?, a4=a0 at entry (arg0).
  The `jal` at 0xe338 calls cache_operation with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x48001, a3=?, a4=a0 at entry (arg0).
  The `bne` branch at 0xe294 targets 0xe32c, is taken when a0 < at(=0xa800000000000000) (unsigned), and falls through when a0 >= at(=0xa800000000000000) (unsigned).
  The `beq` branch at 0xe29c targets 0xe32c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0xe2cc targets 0xe318, is taken when t8(=[sym(maxcpus)]) == t9(=0x1), and falls through when t8(=[sym(maxcpus)]) != t9(=0x1).
  The `beq` branch at 0xe2d4 targets 0xe31c, is taken when s1(=a1) == 0, and falls through when s1(=a1) != 0.
  The `bne` branch at 0xe2ec targets 0xe318, is taken when a0(=a1-1) < a3(?) (unsigned), and falls through when a0(=a1-1) >= a3(?) (unsigned).
  The `bne` branch at 0xe300 targets 0xe318, is taken when a0(=a1-1) < a3(?) (unsigned), and falls through when a0(=a1-1) >= a3(?) (unsigned).
  The `beq` branch at 0xe310 targets 0xe2dc, is taken when a0(=a1-1) >= a3(?) (unsigned), and falls through when a0(=a1-1) < a3(?) (unsigned).
  The `beq` branch at 0xe340 targets 0xe31c and is always taken.
  The return at 0xe324 has v0 = one of ret(__dcache_inval), ?, ret(cache_operation).
- `pmem_getfirstclick` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xe348 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xe348-0xe350 (8 bytes).
  It occupies 8 bytes.
  The return at 0xe348 has v0 = 0x8000.
- `node_getfirstfree` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xe350 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xe350-0xe358 (8 bytes).
  It occupies 8 bytes.
  The return at 0xe350 has v0 = 0x8000.
- `node_getmaxclick` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xe358 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xe358-0xe368 (16 bytes).
  It occupies 16 bytes.
  The return at 0xe360 has v0 = ([sym(.sdata)+216]:8+32767 << 0x0).
- `setupbadmem` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xe368 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xe368-0xe4ac (324 bytes).
  It occupies 324 bytes.
  The `sh` at 0xe3c4 stores 2 bytes to [sym(pfdat)]:8 +0x400014.
  The `sh` at 0xe3e4 stores 2 bytes to [sym(pfdat)]:8 +0x800014.
  The `sh` at 0xe43c stores 2 bytes to [sym(pfdat)]:8 +0xffffd4.
  The `sh` at 0xe460 stores 2 bytes to [sym(pfdat)]:8 +0x1ffffd4.
  The `jal` at 0xe37c calls banksz [0xdc54] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xe488 calls cmn_err with a0=0x5, a1=sym(.rodata)+3120, a2=0xffffc000, a3=0xffff, a6=one of 0xffff, 0x400000, a7=0x800000.
  The `jal` at 0xe49c calls cmn_err with a0=0x5, a1=sym(.rodata)+3120, a2=0x1ffffc000, a3=?.
  The `bne` branch at 0xe3ac targets 0xe3c8, is taken when a2(?) != at(=0x40000000), and falls through when a2(?) == at(=0x40000000).
  The `beq` branch at 0xe3c0 targets 0xe3ec and is always taken.
  The `bne` branch at 0xe3d4 targets 0xe3e8, is taken when a2(?) != a5(=0x80000000), and falls through when a2(?) == a5(=0x80000000).
  The `beq` branch at 0xe3e0 targets 0xe3ec and is always taken.
  The `beq` branch at 0xe3f8 targets 0xe464, is taken when a2(=[sym(tigon2_war_enable)]) == 0, and falls through when a2(=[sym(tigon2_war_enable)]) != 0.
  The `bne` branch at 0xe404 targets 0xe464, is taken when s1(?) < t2(=0x100000000) (unsigned), and falls through when s1(?) >= t2(=0x100000000) (unsigned).
  The `beq` branch at 0xe40c targets 0xe480, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0xe438 targets 0xe464, is taken when s1(?) < t9(=0x200000000) (unsigned), and falls through when s1(?) >= t9(=0x200000000) (unsigned).
  The `beq` branch at 0xe448 targets 0xe498, is taken when ra(=[sym(tigon2_war_enable)]) >= 0x2 (signed), and falls through when ra(=[sym(tigon2_war_enable)]) < 0x2 (signed).
  The `beq` branch at 0xe490 targets 0xe418 and is always taken.
  The `beq` branch at 0xe4a4 targets 0xe454 and is always taken.
  The return at 0xe478 has v0 = one of 0x0, 0x1, 0x2, 0x3.
## Skipped routines

Skipped routines from the first 250 targets: `odsy_usb_comp_update_tiles` in `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` (already documented in docs/driver-functions.md); `usb_comp_update_tiles` in `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` (already documented in docs/driver-functions.md); `odsy_usb_comp_readwrite_register` in `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` (already documented in docs/driver-functions.md); `usb_comp_readwrite_register` in `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` (already documented in docs/driver-functions.md); `odsy_usb_comp_update_tiles` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` (already documented in docs/driver-functions.md); `usb_comp_update_tiles` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` (already documented in docs/driver-functions.md); `odsy_usb_comp_readwrite_register` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` (already documented in docs/driver-functions.md); `usb_comp_readwrite_register` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` (already documented in docs/driver-functions.md); `getrand` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `tlbgetrand` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `ackkgclock` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `apsfail` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `bump_leds` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `check_delay_iflush` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `disallowboot` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `dma_mapinit` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g12.md); `dummy_func` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `heart_dcache_inval` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `heart_dcache_wb_inval` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `heart_write_dcache_inval` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `heart_write_dcache_wb_inval` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `stopkgclock` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `vme_init` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `vme_ivec_init` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `wd93_init` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `dcache_wb` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `dcache_wbinval` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `dki_dcache_wb` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `dki_dcache_wbinval` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `dummyret0_func` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `heart_need_flush` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `is_vme_space` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `vme_adapter` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `resetcounter` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `resetcounter_val` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `silence_all_audio` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `silence_bell` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicAddInt` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicAddUint` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicAddIntHot2` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicAddUintHot2` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicClearInt` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicClearUint` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `bitlock_release_32bit` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicClearInt64` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicClearLong` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicClearUint64` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicClearUlong` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `bitlock_release` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicAddInt64` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicAddUint64` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicAddInt64Hot2` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicAddUint64Hot2` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `test_and_set_int64` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `test_and_set_long` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `test_and_set_ptr` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `swap_int64` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `swap_long` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `swap_ptr` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `compare_and_swap_int64` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `compare_and_swap_kt` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `compare_and_swap_long` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `compare_and_swap_ptr` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `cerror` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `blkclr` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `bzero` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `bzero_end` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `bzerror` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `bcmp` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `memcmp` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `fubyte` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `fuibyte` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `subyte` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `suibyte` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `fuiword` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `fuword` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `suiword` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `suword` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `uerror` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `memcpy` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `bcopy` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `ovbcopy` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `bcopy_pref1` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `bcopy_end` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `swbcopy` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `timestamp_init` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `read_branch_diag` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `write_branch_diag` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `branch_prediction_off` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `branch_prediction_on` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `branch_prediction_taken` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `branch_prediction_fwd_not_taken` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `exception_endfast` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `nano_to_ust` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `ust_init` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `get_fpc_csr` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `set_fpc_csr` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `get_cpu_irr` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `reviderror` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `get_cpu_cnf` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `clear_sline` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `dCacheSize` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `iCacheSize` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `sCacheSize` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `getecc` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `setecc` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `_munge_decc` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `sw_cachesynch_patch_insts` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `cache_sync_bp_start` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `cache_sync` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `sw_cachesynch_op1` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `sw_cachesynch_op2` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `VEC_trap` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `soft_trap` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `uli_getasids` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `uli_setasids` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `uli_eret` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `spl0` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `spl1` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `spl3` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `spl5` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `spl6` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `splgio0` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `splgio1` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `splgio2` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `splhi` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `splhi_relnet` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `splimp` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `splnet` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `memmove` in `usr/cpu/sysgen/IP30boot/kernel.o` (address-based call check treats 0x78b8 as memcpy and requires _pagecopy at 0x78e4, outside the 12-byte range); `cache_sync_bp_end` in `usr/cpu/sysgen/IP30boot/kernel.o` (address-based call check resolves 0xb6e0 as cache_sync and requires longway at 0xb778, outside the 112-byte range); `assbuffer` in `usr/cpu/sysgen/IP30boot/kernel.o` (hostfacts reports no accesses, calls, conditional branches or returns for this inventory range); `kernelbp` in `usr/cpu/sysgen/IP30boot/kernel.o` (hostfacts reports no accesses, calls, conditional branches or returns for this inventory range); `sstepbp` in `usr/cpu/sysgen/IP30boot/kernel.o` (hostfacts reports no accesses, calls, conditional branches or returns for this inventory range); `_endexceptnorm_prolog` in `usr/cpu/sysgen/IP30boot/kernel.o` (hostfacts reports no accesses, calls, conditional branches or returns for this inventory range); `_exceptnorm_prolog` in `usr/cpu/sysgen/IP30boot/kernel.o` (hostfacts reports no accesses, calls, conditional branches or returns for this inventory range); `_j_endexceptnorm_nosymmon` in `usr/cpu/sysgen/IP30boot/kernel.o` (hostfacts reports no accesses, calls, conditional branches or returns for this inventory range); `utlbmiss_prolog_up` in `usr/cpu/sysgen/IP30boot/kernel.o` (hostfacts reports no accesses, calls, conditional branches or returns for this inventory range); `eutlbmiss_prolog_up` in `usr/cpu/sysgen/IP30boot/kernel.o` (hostfacts reports no accesses, calls, conditional branches or returns for this inventory range); `utlbmiss_prolog_mp` in `usr/cpu/sysgen/IP30boot/kernel.o` (hostfacts reports no accesses, calls, conditional branches or returns for this inventory range); `eutlbmiss_prolog_mp` in `usr/cpu/sysgen/IP30boot/kernel.o` (hostfacts reports no accesses, calls, conditional branches or returns for this inventory range); `elpg_utlbmiss` in `usr/cpu/sysgen/IP30boot/kernel.o` (hostfacts reports no accesses, calls, conditional branches or returns for this inventory range); `eutlbmiss2` in `usr/cpu/sysgen/IP30boot/kernel.o` (hostfacts reports no accesses, calls, conditional branches or returns for this inventory range); `utlbmiss_sharedseg1a` in `usr/cpu/sysgen/IP30boot/kernel.o` (hostfacts reports no accesses, calls, conditional branches or returns for this inventory range); `utlbmiss_sharedseg2a` in `usr/cpu/sysgen/IP30boot/kernel.o` (hostfacts reports no accesses, calls, conditional branches or returns for this inventory range); `eutlbmissj` in `usr/cpu/sysgen/IP30boot/kernel.o` (hostfacts reports no accesses, calls, conditional branches or returns for this inventory range).
