# Instruction readings from hostfacts

Each entry summarizes selected non-stack accesses, calls with argument slots, conditional branches and return values for the exact binary path and function range shown. Every instruction claim cites its address. These readings describe software behavior, not hardware behavior.

- `splretr` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb8fc, 24 bytes) Inferred.
  `jr` at 0xb90c returns with v0 = ?; its delay slot executes `mtc0` at 0xb910.

- `spltty` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb8fc, 24 bytes) Inferred.
  `jr` at 0xb90c returns with v0 = ?; its delay slot executes `mtc0` at 0xb910.

- `splvme` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb8fc, 24 bytes) Inferred.
  `jr` at 0xb90c returns with v0 = ?; its delay slot executes `mtc0` at 0xb910.

- `issplhi` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb914, 40 bytes) Inferred.
  At `bne` at 0xb91c, it is taken when a1(?) != v1(=0x1); it falls through when a1(?) == v1(=0x1) (`bne` at 0xb91c).
  At `bne` at 0xb928, it is taken when (a0 & 0x1000) != 0; it falls through when (a0 & 0x1000) == 0 (`bne` at 0xb928).
  `jr` at 0xb934 returns with v0 = one of 0x0, 0x1; its delay slot executes `nop` at 0xb938.

- `issplprof` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb93c, 40 bytes) Inferred.
  At `bne` at 0xb944, it is taken when a1(?) != v1(=0x1); it falls through when a1(?) == v1(=0x1) (`bne` at 0xb944).
  At `bne` at 0xb950, it is taken when (a0 & 0xa000) != 0; it falls through when (a0 & 0xa000) == 0 (`bne` at 0xb950).
  `jr` at 0xb95c returns with v0 = one of 0x0, 0x1; its delay slot executes `nop` at 0xb960.

- `isspl7` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb964, 48 bytes) Inferred.
  At `bne` at 0xb96c, it is taken when (a0 & 0x1) != 0; it falls through when (a0 & 0x1) == 0 (`bne` at 0xb96c).
  At `bne` at 0xb980, it is taken when (a0 & 0xff00) != 0; it falls through when (a0 & 0xff00) == 0 (`bne` at 0xb980).
  `jr` at 0xb98c returns with v0 = one of 0x0, 0x1; its delay slot executes `nop` at 0xb990.

- `spl65` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb994, 24 bytes) Inferred.
  `jr` at 0xb9a4 returns with v0 = ?; its delay slot executes `mtc0` at 0xb9a8.

- `splprof` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb994, 24 bytes) Inferred.
  `jr` at 0xb9a4 returns with v0 = ?; its delay slot executes `mtc0` at 0xb9a8.

- `spl7` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb9ac, 24 bytes) Inferred.
  `jr` at 0xb9bc returns with v0 = ?; its delay slot executes `mtc0` at 0xb9c0.

- `splerr` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb9ac, 24 bytes) Inferred.
  `jr` at 0xb9bc returns with v0 = ?; its delay slot executes `mtc0` at 0xb9c0.

- `splecc` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb9c4, 32 bytes) Inferred.
  `jr` at 0xb9dc returns with v0 = ?; its delay slot executes `mtc0` at 0xb9e0.

- `splx` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb9e4, 28 bytes) Inferred.
  `jr` at 0xb9f8 returns with v0 = ?; its delay slot executes `mtc0` at 0xb9fc.

- `splxecc` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb9e4, 28 bytes) Inferred.
  `jr` at 0xb9f8 returns with v0 = ?; its delay slot executes `mtc0` at 0xb9fc.

- `isspl0` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xba00, 32 bytes) Inferred.
  At `bne` at 0xba08, it is taken when a0(?) != v1(=0xff01); it falls through when a0(?) == v1(=0xff01) (`bne` at 0xba08).
  `jr` at 0xba10 returns with v0 = 0x1; its delay slot executes `addiu` at 0xba14.
  `jr` at 0xba18 returns with v0 = 0x0; its delay slot executes `addiu` at 0xba1c.

- `VEC_fpe` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xba30, 108 bytes) Inferred.
  Loads 8 bytes into t1 from ? (base unknown) (`ld` at 0xba50).
  Loads 8 bytes into t0 from ? (base unknown) (`ld` at 0xba54).
  Loads 8 bytes into t3 from abs 0xffffffffffffc018 (`ld` at 0xba58).
  Loads 4 bytes into t2 from ? (base unknown) (`lw` at 0xba5c).
  Stores 4 bytes from t2 to [-0x3fe8]:8 +0x540 (`sw` at 0xba64).
  Loads 4 bytes into t2 from ? (base unknown) (`lw` at 0xba68).
  Stores 4 bytes from t2 to [-0x3fe8]:8 +0x544 (`sw` at 0xba6c).
  Calls `trap` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=s0 at entry, a3=a3 at entry (arg3) (`jal` at 0xba48).
  Calls `fp_intr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xba84).
  Calls `exception_exit` via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0xba94).
  At `bne` at 0xba34, it is taken when (s0 & 0x18) != 0; it falls through when (s0 & 0x18) == 0 (`bne` at 0xba34).
  At `bgez` at 0xba60, it is taken when t0(?) >= 0 (signed); it falls through when t0(?) < 0 (signed) (`bgez` at 0xba60).

- `tfi_save` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xbaa0, 56 bytes) Inferred.
  Stores 8 bytes from t0 to ? (base unknown), value t0 (`sd` at 0xbaa0).
  Stores 8 bytes from t1 to ? (base unknown), value t1 (`sd` at 0xbaa8).
  Stores 8 bytes from v0 to ? (base unknown) (`sd` at 0xbab0).
  Stores 8 bytes from v1 to ? (base unknown) (`sd` at 0xbab4).
  Stores 8 bytes from t2 to ? (base unknown), value t2 (`sd` at 0xbab8).
  Stores 8 bytes from t3 to ? (base unknown), value t3 (`sd` at 0xbabc).
  Stores 8 bytes from t8 to ? (base unknown), value t8 (`sd` at 0xbac0).
  Stores 8 bytes from t9 to ? (base unknown), value t9 (`sd` at 0xbac4).
  Stores 8 bytes from s8 to ? (base unknown), value s8 (`sd` at 0xbac8).
  Stores 8 bytes from t0 to ? (base unknown) (`sd` at 0xbacc).
  Stores 8 bytes from t1 to ? (base unknown) (`sd` at 0xbad4).
  `jr` at 0xbad0 returns with v0 = ?; its delay slot executes `sd` at 0xbad4.

- `tfi_restore` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xbad8, 56 bytes) Inferred.
  Loads 8 bytes into v0 from ? (base unknown) (`ld` at 0xbad8).
  Loads 8 bytes into v1 from ? (base unknown) (`ld` at 0xbadc).
  Loads 8 bytes into t0 from ? (base unknown) (`ld` at 0xbae0).
  Loads 8 bytes into t1 from ? (base unknown) (`ld` at 0xbae4).
  Loads 8 bytes into v0 from ? (base unknown) (`ld` at 0xbaec).
  Loads 8 bytes into v1 from ? (base unknown) (`ld` at 0xbaf4).
  Loads 8 bytes into t2 from ? (base unknown) (`ld` at 0xbaf8).
  Loads 8 bytes into t3 from ? (base unknown) (`ld` at 0xbafc).
  Loads 8 bytes into t8 from ? (base unknown) (`ld` at 0xbb00).
  Loads 8 bytes into t9 from ? (base unknown) (`ld` at 0xbb04).
  Loads 8 bytes into s8 from ? (base unknown) (`ld` at 0xbb0c).
  `jr` at 0xbb08 returns with v0 = ?; its delay slot executes `ld` at 0xbb0c.

- `assfail` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xbb14, 1084 bytes) Inferred.
  Stores 8 bytes from v0 to sym(_assregs) +0x8 (`sd` at 0xbb2c).
  Loads 4 bytes into v0 from sym(panic_cpu) +0x0 (`lw` at 0xbb4c).
  Loads 2 bytes into v0 from abs 0xffffffffffffc3a0 (`lh` at 0xbb58).
  Stores 4 bytes from v0 to sym(panic_cpu) +0x0, value [-0x3c60]:2 (`sw` at 0xbb70).
  Stores 8 bytes from gp to sym(_assregs) +0xd8, value gp (`sd` at 0xbb8c).
  2 such 8-byte stores from v0 to sym(_assregs) +0xf8 (including `sd` at 0xbbac, `sd` at 0xbf08).
  Stores 8 bytes from sp to sym(_assregs) +0xe0, value sp (`sd` at 0xbbcc).
  Stores 8 bytes from v1 to sym(_assregs) +0x10 (`sd` at 0xbbe8).
  Stores 8 bytes from a3 to sym(_assregs) +0x30, value a3 (`sd` at 0xbc04).
  Stores 8 bytes from a4 to sym(_assregs) +0x38, value a4 (`sd` at 0xbc20).
  Stores 8 bytes from a5 to sym(_assregs) +0x40, value a5 (`sd` at 0xbc3c).
  Stores 8 bytes from a6 to sym(_assregs) +0x48, value a6 (`sd` at 0xbc58).
  Stores 8 bytes from a7 to sym(_assregs) +0x50, value a7 (`sd` at 0xbc74).
  Stores 8 bytes from t0 to sym(_assregs) +0x58, value t0 (`sd` at 0xbc90).
  Stores 8 bytes from t1 to sym(_assregs) +0x60, value t1 (`sd` at 0xbcac).
  Stores 8 bytes from t2 to sym(_assregs) +0x68, value t2 (`sd` at 0xbcc8).
  Stores 8 bytes from t3 to sym(_assregs) +0x70, value t3 (`sd` at 0xbce4).
  Stores 8 bytes from s0 to sym(_assregs) +0x78, value s0 (`sd` at 0xbd00).
  Stores 8 bytes from s1 to sym(_assregs) +0x80, value s1 (`sd` at 0xbd1c).
  Stores 8 bytes from s2 to sym(_assregs) +0x88, value s2 (`sd` at 0xbd38).
  Stores 8 bytes from s3 to sym(_assregs) +0x90, value s3 (`sd` at 0xbd54).
  Stores 8 bytes from s4 to sym(_assregs) +0x98, value s4 (`sd` at 0xbd70).
  Stores 8 bytes from s5 to sym(_assregs) +0xa0, value s5 (`sd` at 0xbd8c).
  Stores 8 bytes from s6 to sym(_assregs) +0xa8, value s6 (`sd` at 0xbda8).
  Stores 8 bytes from s7 to sym(_assregs) +0xb0, value s7 (`sd` at 0xbdc4).
  Stores 8 bytes from t8 to sym(_assregs) +0xb8, value t8 (`sd` at 0xbde0).
  Stores 8 bytes from t9 to sym(_assregs) +0xc0, value t9 (`sd` at 0xbdfc).
  Stores 8 bytes from k0 to sym(_assregs) +0xc8 (`sd` at 0xbe18).
  Stores 8 bytes from k1 to sym(_assregs) +0xd0 (`sd` at 0xbe34).
  Stores 8 bytes from s8 to sym(_assregs) +0xe8, value s8 (`sd` at 0xbe50).
  Stores 8 bytes from ra to sym(_assregs) +0xf0, value ra (`sd` at 0xbe6c).
  Stores 8 bytes from v0 to sym(_assregs) +0x100 (`sd` at 0xbe88).
  Stores 8 bytes from v0 to sym(_assregs) +0x108 (`sd` at 0xbea8).
  Stores 8 bytes from v0 to sym(_assregs) +0x118 (`sd` at 0xbec8).
  Stores 8 bytes from v0 to sym(_assregs) +0x110 (`sd` at 0xbee8).
  Stores 8 bytes from v0 to sym(_assregs) +0x120 (`sd` at 0xbf28).
  Stores 8 bytes from v0 to sym(_assregs) +0x160 (`sd` at 0xbf44).
  Calls `_assfail` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xbf48).
  At `bne` at 0xbb50, it is taken when v0(=[sym(panic_cpu)]) != at(=-0x1); it falls through when v0(=[sym(panic_cpu)]) == at(=-0x1) (`bne` at 0xbb50).

- `getsr` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xbf50, 12 bytes) Inferred.
  `jr` at 0xbf54 returns with v0 = ?; its delay slot executes `nop` at 0xbf58.

- `setsr` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xbf5c, 16 bytes) Inferred.
  `jr` at 0xbf64 returns with v0 = ?; its delay slot executes `nop` at 0xbf68.

- `getpc` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xbf6c, 8 bytes) Inferred.
  `jr` at 0xbf6c returns with v0 = ra; its delay slot executes `or` at 0xbf70.

- `getsp` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xbf74, 8 bytes) Inferred.
  `jr` at 0xbf74 returns with v0 = sp; its delay slot executes `or` at 0xbf78.

- `getpcsp` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xbf7c, 12 bytes) Inferred.
  Stores 8 bytes from ra to a0 (arg0 at entry) +0x0, value ra (`sd` at 0xbf7c).
  Stores 8 bytes from sp to a1 (arg1 at entry) +0x0, value sp (`sd` at 0xbf84).
  `jr` at 0xbf80 returns with v0 = ?; its delay slot executes `sd` at 0xbf84.

- `getgp` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xbf88, 8 bytes) Inferred.
  `jr` at 0xbf88 returns with v0 = gp; its delay slot executes `or` at 0xbf8c.

- `getcause` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xbf90, 12 bytes) Inferred.
  `jr` at 0xbf94 returns with v0 = ?; its delay slot executes `nop` at 0xbf98.

- `setcause` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xbf9c, 12 bytes) Inferred.
  `jr` at 0xbfa0 returns with v0 = ?; its delay slot executes `nop` at 0xbfa4.

- `getbadvaddr` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xbfa8, 12 bytes) Inferred.
  `jr` at 0xbfac returns with v0 = ?; its delay slot executes `nop` at 0xbfb0.

- `get_sr` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xbfb4, 12 bytes) Inferred.
  `jr` at 0xbfb8 returns with v0 = ?; its delay slot executes `nop` at 0xbfbc.

- `set_sr` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xbfc0, 12 bytes) Inferred.
  `jr` at 0xbfc4 returns with v0 = ?; its delay slot executes `nop` at 0xbfc8.

- `get_lladdr` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xbfcc, 12 bytes) Inferred.
  `jr` at 0xbfd0 returns with v0 = ?; its delay slot executes `nop` at 0xbfd4.

- `set_lladdr` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xbfd8, 12 bytes) Inferred.
  `jr` at 0xbfdc returns with v0 = ?; its delay slot executes `nop` at 0xbfe0.

- `do_sync_instruction` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xbfe4, 12 bytes) Inferred.
  `jr` at 0xbfe8 returns with v0 = ?; its delay slot executes `nop` at 0xbfec.

- `siron` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xbff0, 40 bytes) Inferred.
  `jr` at 0xc010 returns with v0 = ?; its delay slot executes `mtc0` at 0xc014.

- `siroff` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xc018, 44 bytes) Inferred.
  `jr` at 0xc03c returns with v0 = ?; its delay slot executes `mtc0` at 0xc040.

- `flushbus` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xc044, 32 bytes) Inferred.
  Loads 8 bytes into zero from abs 0xffffffffaff50000 (`ld` at 0xc048).
  Loads 8 bytes into zero from abs 0xffffffffb8000000 (`ld` at 0xc050).
  `jr` at 0xc05c returns with v0 = ?; its delay slot executes `nop` at 0xc060.

- `wbflush` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xc064, 8 bytes) Inferred.
  `jr` at 0xc064 returns with v0 = ?; its delay slot executes `nop` at 0xc068.

- `ip26_enable_ucmem` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xc06c, 8 bytes) Inferred.
  `jr` at 0xc06c returns with v0 = ?; its delay slot executes `nop` at 0xc070.

- `ip26_return_ucmem` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xc06c, 8 bytes) Inferred.
  `jr` at 0xc06c returns with v0 = ?; its delay slot executes `nop` at 0xc070.

- `ip28_enable_ucmem` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xc06c, 8 bytes) Inferred.
  `jr` at 0xc06c returns with v0 = ?; its delay slot executes `nop` at 0xc070.

- `ip28_return_ucmem` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xc06c, 8 bytes) Inferred.
  `jr` at 0xc06c returns with v0 = ?; its delay slot executes `nop` at 0xc070.

- `badaddr` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xc080, 296 bytes) Inferred.
  Loads 8 bytes into at from abs 0xffffffffb8000060 (`ld` at 0xc098).
  Stores 8 bytes from zero to abs 0xffffffffb8000040, value 0x0 (`sd` at 0xc09c).
  Loads 8 bytes into zero from abs 0xffffffffb8000000 (`ld` at 0xc0a0).
  Stores 8 bytes from at to abs 0xffffffffb8000060, value [0xffffffffb8000060]:8 (`sd` at 0xc0a4).
  Loads 8 bytes into at from abs 0xffffffffaff10040 (`ld` at 0xc0b0).
  Stores 8 bytes from at to abs 0xffffffffaff10040, value [0xffffffffaff10040]:8 (`sd` at 0xc0b4).
  2 such 8-byte loads into zero read from abs 0xffffffffaff50000 (including `ld` at 0xc0bc, `ld` at 0xc150).
  2 such 8-byte loads into t2 read from abs 0xffffffffffffc020 (including `ld` at 0xc0c0, `ld` at 0xc18c).
  Stores 2 bytes from v0 to [-0x3fe0]:8 +0xf6, value 0x1 (`sh` at 0xc0c8).
  Loads 1 byte into v0 from a0 (arg0 at entry) +0x0 (`lb` at 0xc0d8).
  Loads 2 bytes into v0 from a0 (arg0 at entry) +0x0 (`lh` at 0xc0f0).
  Loads 4 bytes into v0 from a0 (arg0 at entry) +0x0 (`lw` at 0xc108).
  Loads 8 bytes into v0 from a0 (arg0 at entry) +0x0 (`ld` at 0xc120).
  Loads 8 bytes into zero from abs 0xffffffffb8000000 (`ld` at 0xc158).
  Loads 8 bytes into t1 from abs 0xffffffffaff10040 (`ld` at 0xc17c).
  Stores 2 bytes from zero to [-0x3fe0]:8 +0xf6, value 0x0 (`sh` at 0xc190).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(sr_desc+344), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xc144).
  At `bne` at 0xc0d0, it is taken when a1 != at(=0x1); it falls through when a1 == at(=0x1) (`bne` at 0xc0d0).
  At `bne` at 0xc0e8, it is taken when a1 != at(=0x2); it falls through when a1 == at(=0x2) (`bne` at 0xc0e8).
  At `bne` at 0xc100, it is taken when a1 != at(=0x4); it falls through when a1 == at(=0x4) (`bne` at 0xc100).
  At `bne` at 0xc118, it is taken when a1 != at(=0x8); it falls through when a1 == at(=0x8) (`bne` at 0xc118).
  At `bne` at 0xc168, it is taken when (t1(?) & 0x4000) != 0; it falls through when (t1(?) & 0x4000) == 0 (`bne` at 0xc168).
  At `bne` at 0xc184, it is taken when (t1(=[0xffffffffaff10040]:8) & at(=0x10000)) != 0; it falls through when (t1(=[0xffffffffaff10040]:8) & at(=0x10000)) == 0 (`bne` at 0xc184).
  `jr` at 0xc1a0 returns with v0 = 0x0; its delay slot executes `or` at 0xc1a4.

- `badaddr_val` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xc1a8, 364 bytes) Inferred.
  Loads 8 bytes into at from abs 0xffffffffb8000060 (`ld` at 0xc1c0).
  Stores 8 bytes from zero to abs 0xffffffffb8000040, value 0x0 (`sd` at 0xc1c4).
  Loads 8 bytes into zero from abs 0xffffffffb8000000 (`ld` at 0xc1c8).
  Stores 8 bytes from at to abs 0xffffffffb8000060, value [0xffffffffb8000060]:8 (`sd` at 0xc1cc).
  Loads 8 bytes into at from abs 0xffffffffaff10040 (`ld` at 0xc1d8).
  Stores 8 bytes from at to abs 0xffffffffaff10040, value [0xffffffffaff10040]:8 (`sd` at 0xc1dc).
  2 such 8-byte loads into zero read from abs 0xffffffffaff50000 (including `ld` at 0xc1e4, `ld` at 0xc2a8).
  2 such 8-byte loads into t2 read from abs 0xffffffffffffc020 (including `ld` at 0xc1e8, `ld` at 0xc2e4).
  Stores 2 bytes from v0 to [-0x3fe0]:8 +0xf6, value 0x1 (`sh` at 0xc1f4).
  Stores 4 bytes from v0 to abs 0xffffffffffffc404, value 0x1 (`sw` at 0xc200).
  Loads 1 byte into v0 from a0 (arg0 at entry) +0x0 (`lb` at 0xc210).
  Stores 1 byte from v0 to a2 (arg2 at entry) +0x0, value [a0]:1 (`sb` at 0xc218).
  Loads 2 bytes into v0 from a0 (arg0 at entry) +0x0 (`lh` at 0xc230).
  Stores 2 bytes from v0 to a2 (arg2 at entry) +0x0, value [a0]:2 (`sh` at 0xc238).
  Loads 4 bytes into v0 from a0 (arg0 at entry) +0x0 (`lw` at 0xc250).
  Stores 4 bytes from v0 to a2 (arg2 at entry) +0x0, value [a0] (`sw` at 0xc258).
  Loads 8 bytes into v0 from a0 (arg0 at entry) +0x0 (`ld` at 0xc270).
  Stores 8 bytes from v0 to a2 (arg2 at entry) +0x0, value [a0]:8 (`sd` at 0xc278).
  Loads 8 bytes into zero from abs 0xffffffffb8000000 (`ld` at 0xc2b0).
  Loads 8 bytes into t1 from abs 0xffffffffaff10040 (`ld` at 0xc2d4).
  Stores 2 bytes from zero to [-0x3fe0]:8 +0xf6, value 0x0 (`sh` at 0xc2f0).
  Stores 4 bytes from zero to abs 0xffffffffffffc404, value 0x0 (`sw` at 0xc2fc).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(sr_desc+362), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xc29c).
  At `beq` at 0xc1ec, it is taken when t2(=[-0x3fe0]:8) == 0; it falls through when t2(=[-0x3fe0]:8) != 0 (`beq` at 0xc1ec).
  At `bne` at 0xc208, it is taken when a1 != at(=0x1); it falls through when a1 == at(=0x1) (`bne` at 0xc208).
  At `bne` at 0xc228, it is taken when a1 != at(=0x2); it falls through when a1 == at(=0x2) (`bne` at 0xc228).
  At `bne` at 0xc248, it is taken when a1 != at(=0x4); it falls through when a1 == at(=0x4) (`bne` at 0xc248).
  At `bne` at 0xc268, it is taken when a1 != at(=0x8); it falls through when a1 == at(=0x8) (`bne` at 0xc268).
  At `bne` at 0xc2c0, it is taken when (t1(?) & 0x4000) != 0; it falls through when (t1(?) & 0x4000) == 0 (`bne` at 0xc2c0).
  At `bne` at 0xc2dc, it is taken when (t1(=[0xffffffffaff10040]:8) & at(=0x10000)) != 0; it falls through when (t1(=[0xffffffffaff10040]:8) & at(=0x10000)) == 0 (`bne` at 0xc2dc).
  At `beq` at 0xc2e8, it is taken when t2(=[-0x3fe0]:8) == 0; it falls through when t2(=[-0x3fe0]:8) != 0 (`beq` at 0xc2e8).
  `jr` at 0xc30c returns with v0 = 0x0; its delay slot executes `or` at 0xc310.

- `wbadaddr` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xc314, 332 bytes) Inferred.
  Loads 8 bytes into at from abs 0xffffffffb8000060 (`ld` at 0xc32c).
  Stores 8 bytes from zero to abs 0xffffffffb8000040, value 0x0 (`sd` at 0xc330).
  Loads 8 bytes into zero from abs 0xffffffffb8000000 (`ld` at 0xc334).
  Stores 8 bytes from at to abs 0xffffffffb8000060, value [0xffffffffb8000060]:8 (`sd` at 0xc338).
  Loads 8 bytes into at from abs 0xffffffffaff10040 (`ld` at 0xc344).
  Stores 8 bytes from at to abs 0xffffffffaff10040, value [0xffffffffaff10040]:8 (`sd` at 0xc348).
  3 such 8-byte loads into zero read from abs 0xffffffffaff50000 (including `ld` at 0xc350, `ld` at 0xc3e4, `ld` at 0xc3f8).
  2 such 8-byte loads into t2 read from abs 0xffffffffffffc020 (including `ld` at 0xc354, `ld` at 0xc444).
  Stores 2 bytes from v0 to [-0x3fe0]:8 +0xf6, value 0x1 (`sh` at 0xc35c).
  Stores 1 byte from zero to a0 (arg0 at entry) +0x0, value 0x0 (`sb` at 0xc36c).
  Stores 2 bytes from zero to a0 (arg0 at entry) +0x0, value 0x0 (`sh` at 0xc384).
  Stores 4 bytes from zero to a0 (arg0 at entry) +0x0, value 0x0 (`sw` at 0xc39c).
  Stores 8 bytes from zero to a0 (arg0 at entry) +0x0, value 0x0 (`sd` at 0xc3b4).
  2 such 8-byte loads into zero read from abs 0xffffffffb8000000 (including `ld` at 0xc3ec, `ld` at 0xc400).
  Loads 4 bytes into t2 from abs 0x9000000000000000 (`lw` at 0xc410).
  Loads 8 bytes into t1 from abs 0xffffffffaff10040 (`ld` at 0xc434).
  Stores 2 bytes from zero to [-0x3fe0]:8 +0xf6, value 0x0 (`sh` at 0xc448).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(sr_desc+388), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xc3d8).
  At `bne` at 0xc364, it is taken when a1 != at(=0x1); it falls through when a1 == at(=0x1) (`bne` at 0xc364).
  At `bne` at 0xc37c, it is taken when a1 != at(=0x2); it falls through when a1 == at(=0x2) (`bne` at 0xc37c).
  At `bne` at 0xc394, it is taken when a1 != at(=0x4); it falls through when a1 == at(=0x4) (`bne` at 0xc394).
  At `bne` at 0xc3ac, it is taken when a1 != at(=0x8); it falls through when a1 == at(=0x8) (`bne` at 0xc3ac).
  At `bne` at 0xc420, it is taken when (t1(?) & 0x4000) != 0; it falls through when (t1(?) & 0x4000) == 0 (`bne` at 0xc420).
  At `bne` at 0xc43c, it is taken when (t1(=[0xffffffffaff10040]:8) & at(=0x10000)) != 0; it falls through when (t1(=[0xffffffffaff10040]:8) & at(=0x10000)) == 0 (`bne` at 0xc43c).
  `jr` at 0xc458 returns with v0 = 0x0; its delay slot executes `or` at 0xc45c.

- `wbadaddr_val` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xc460, 360 bytes) Inferred.
  Loads 8 bytes into at from abs 0xffffffffb8000060 (`ld` at 0xc478).
  Stores 8 bytes from zero to abs 0xffffffffb8000040, value 0x0 (`sd` at 0xc47c).
  Loads 8 bytes into zero from abs 0xffffffffb8000000 (`ld` at 0xc480).
  Stores 8 bytes from at to abs 0xffffffffb8000060, value [0xffffffffb8000060]:8 (`sd` at 0xc484).
  Loads 8 bytes into at from abs 0xffffffffaff10040 (`ld` at 0xc490).
  Stores 8 bytes from at to abs 0xffffffffaff10040, value [0xffffffffaff10040]:8 (`sd` at 0xc494).
  3 such 8-byte loads into zero read from abs 0xffffffffaff50000 (including `ld` at 0xc49c, `ld` at 0xc550, `ld` at 0xc564).
  2 such 8-byte loads into t2 read from abs 0xffffffffffffc020 (including `ld` at 0xc4a0, `ld` at 0xc5ac).
  Stores 2 bytes from v0 to [-0x3fe0]:8 +0xf6, value 0x1 (`sh` at 0xc4a8).
  Loads 1 byte into v0 from a2 (arg2 at entry) +0x0 (`lb` at 0xc4b8).
  Stores 1 byte from v0 to a0 (arg0 at entry) +0x0, value [a2]:1 (`sb` at 0xc4c0).
  Loads 2 bytes into v0 from a2 (arg2 at entry) +0x0 (`lh` at 0xc4d8).
  Stores 2 bytes from v0 to a0 (arg0 at entry) +0x0, value [a2]:2 (`sh` at 0xc4e0).
  Loads 4 bytes into v0 from a2 (arg2 at entry) +0x0 (`lw` at 0xc4f8).
  Stores 4 bytes from v0 to a0 (arg0 at entry) +0x0, value [a2] (`sw` at 0xc500).
  Loads 8 bytes into v0 from a2 (arg2 at entry) +0x0 (`ld` at 0xc518).
  Stores 8 bytes from v0 to a0 (arg0 at entry) +0x0, value [a2]:8 (`sd` at 0xc520).
  2 such 8-byte loads into zero read from abs 0xffffffffb8000000 (including `ld` at 0xc558, `ld` at 0xc56c).
  Loads 4 bytes into t2 from abs 0x9000000000000000 (`lw` at 0xc57c).
  Loads 8 bytes into t1 from abs 0xffffffffaff10040 (`ld` at 0xc59c).
  Stores 2 bytes from zero to [-0x3fe0]:8 +0xf6, value 0x0 (`sh` at 0xc5b0).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(sr_desc+408), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xc544).
  At `bne` at 0xc4b0, it is taken when a1 != at(=0x1); it falls through when a1 == at(=0x1) (`bne` at 0xc4b0).
  At `bne` at 0xc4d0, it is taken when a1 != at(=0x2); it falls through when a1 == at(=0x2) (`bne` at 0xc4d0).
  At `bne` at 0xc4f0, it is taken when a1 != at(=0x4); it falls through when a1 == at(=0x4) (`bne` at 0xc4f0).
  At `bne` at 0xc510, it is taken when a1 != at(=0x8); it falls through when a1 == at(=0x8) (`bne` at 0xc510).
  At `bne` at 0xc588, it is taken when (t1(?) & 0x4000) != 0; it falls through when (t1(?) & 0x4000) == 0 (`bne` at 0xc588).
  At `bne` at 0xc5a4, it is taken when (t1(=[0xffffffffaff10040]:8) & at(=0x10000)) != 0; it falls through when (t1(=[0xffffffffaff10040]:8) & at(=0x10000)) == 0 (`bne` at 0xc5a4).
  `jr` at 0xc5c0 returns with v0 = 0x0; its delay slot executes `or` at 0xc5c4.

- `earlybadaddr` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xc5c8, 312 bytes) Inferred.
  Loads 8 bytes into at from abs 0xffffffffb8000060 (`ld` at 0xc5e0).
  Stores 8 bytes from zero to abs 0xffffffffb8000040, value 0x0 (`sd` at 0xc5e4).
  Loads 8 bytes into zero from abs 0xffffffffb8000000 (`ld` at 0xc5e8).
  Stores 8 bytes from at to abs 0xffffffffb8000060, value [0xffffffffb8000060]:8 (`sd` at 0xc5ec).
  Loads 8 bytes into at from abs 0xffffffffaff10040 (`ld` at 0xc5f8).
  Stores 8 bytes from at to abs 0xffffffffaff10040, value [0xffffffffaff10040]:8 (`sd` at 0xc5fc).
  2 such 8-byte loads into zero read from abs 0xffffffffaff50000 (including `ld` at 0xc604, `ld` at 0xc694).
  Stores 4 bytes from v0 to sym(nofault) +0x0, value 0x9 (`sw` at 0xc624).
  Loads 1 byte into v0 from a0 (arg0 at entry) +0x0 (`lb` at 0xc634).
  Loads 2 bytes into v0 from a0 (arg0 at entry) +0x0 (`lh` at 0xc64c).
  Loads 4 bytes into v0 from a0 (arg0 at entry) +0x0 (`lw` at 0xc664).
  Loads 8 bytes into zero from abs 0xffffffffb8000000 (`ld` at 0xc69c).
  Loads 8 bytes into t1 from abs 0xffffffffaff10040 (`ld` at 0xc6c0).
  Stores 4 bytes from zero to sym(nofault) +0x0, value 0x0 (`sw` at 0xc6e8).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(sr_desc+436), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xc688).
  At `bne` at 0xc62c, it is taken when a1 != at(=0x1); it falls through when a1 == at(=0x1) (`bne` at 0xc62c).
  At `bne` at 0xc644, it is taken when a1 != at(=0x2); it falls through when a1 == at(=0x2) (`bne` at 0xc644).
  At `bne` at 0xc65c, it is taken when a1 != at(=0x4); it falls through when a1 == at(=0x4) (`bne` at 0xc65c).
  At `bne` at 0xc6ac, it is taken when (t1(?) & 0x4000) != 0; it falls through when (t1(?) & 0x4000) == 0 (`bne` at 0xc6ac).
  At `bne` at 0xc6c8, it is taken when (t1(=[0xffffffffaff10040]:8) & at(=0x10000)) != 0; it falls through when (t1(=[0xffffffffaff10040]:8) & at(=0x10000)) == 0 (`bne` at 0xc6c8).
  `jr` at 0xc6f8 returns with v0 = 0x0; its delay slot executes `or` at 0xc6fc.

- `wbadmemaddr` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xc700, 136 bytes) Inferred.
  Stores 4 bytes from v0 to sym(nofault) +0x0, value 0x9 (`sw` at 0xc730).
  Stores 4 bytes from zero to a0 (arg0 at entry) +0x0, value 0x0 (`sw` at 0xc734).
  Loads 4 bytes into v0 from a0 (arg0 at entry) +0x0 (`lw` at 0xc738).
  Loads 8 bytes into t1 from abs 0xffffffffaff10040 (`ld` at 0xc748).
  Stores 4 bytes from zero to sym(nofault) +0x0, value 0x0 (`sw` at 0xc770).
  At `bne` at 0xc750, it is taken when (t1(=[0xffffffffaff10040]:8) & at(=0x10000)) != 0; it falls through when (t1(=[0xffffffffaff10040]:8) & at(=0x10000)) == 0 (`bne` at 0xc750).
  `jr` at 0xc780 returns with v0 = 0x0; its delay slot executes `or` at 0xc784.

- `baerror` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xc788, 92 bytes) Inferred.
  Loads 8 bytes into at from abs 0xffffffffb8000060 (`ld` at 0xc78c).
  Stores 8 bytes from zero to abs 0xffffffffb8000040, value 0x0 (`sd` at 0xc790).
  Loads 8 bytes into zero from abs 0xffffffffb8000000 (`ld` at 0xc794).
  Stores 8 bytes from at to abs 0xffffffffb8000060, value [0xffffffffb8000060]:8 (`sd` at 0xc798).
  Loads 8 bytes into at from abs 0xffffffffaff10040 (`ld` at 0xc7a4).
  Stores 8 bytes from at to abs 0xffffffffaff10040, value [0xffffffffaff10040]:8 (`sd` at 0xc7a8).
  Loads 8 bytes into zero from abs 0xffffffffaff50000 (`ld` at 0xc7b0).
  Loads 8 bytes into t2 from abs 0xffffffffffffc020 (`ld` at 0xc7b8).
  Stores 2 bytes from zero to [-0x3fe0]:8 +0xf6, value 0x0 (`sh` at 0xc7c4).
  Stores 4 bytes from zero to abs 0xffffffffffffc404, value 0x0 (`sw` at 0xc7d0).
  At `beq` at 0xc7bc, it is taken when t2(=[-0x3fe0]:8) == 0; it falls through when t2(=[-0x3fe0]:8) != 0 (`beq` at 0xc7bc).
  `jr` at 0xc7dc returns with v0 = 0x1; its delay slot executes `nop` at 0xc7e0.

- `earlybaerror` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xc7e4, 96 bytes) Inferred.
  Loads 8 bytes into at from abs 0xffffffffb8000060 (`ld` at 0xc7e8).
  Stores 8 bytes from zero to abs 0xffffffffb8000040, value 0x0 (`sd` at 0xc7ec).
  Loads 8 bytes into zero from abs 0xffffffffb8000000 (`ld` at 0xc7f0).
  Stores 8 bytes from at to abs 0xffffffffb8000060, value [0xffffffffb8000060]:8 (`sd` at 0xc7f4).
  Loads 8 bytes into at from abs 0xffffffffaff10040 (`ld` at 0xc800).
  Stores 8 bytes from at to abs 0xffffffffaff10040, value [0xffffffffaff10040]:8 (`sd` at 0xc804).
  Loads 8 bytes into zero from abs 0xffffffffaff50000 (`ld` at 0xc80c).
  Stores 4 bytes from zero to sym(nofault) +0x0, value 0x0 (`sw` at 0xc830).
  `jr` at 0xc83c returns with v0 = 0x1; its delay slot executes `nop` at 0xc840.

- `VEC_breakpoint` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xc850, 12 bytes) Inferred.
  Calls `VEC_trap` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xc850).

- `debug` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xc85c, 120 bytes) Inferred.
  Loads 2 bytes into t0 from sym(kdebug) +0x0 (`lh` at 0xc874).
  Stores 2 bytes from zero to sym(kbdstate) +0x0, value 0x0 (`sh` at 0xc8ac).
  Stores 1 byte from zero to sym(kbdcntrlstate) +0x0, value 0x0 (`sb` at 0xc8c8).
  At `blez` at 0xc878, it is taken when t0(=[sym(kdebug)]:2) <= 0 (signed); it falls through when t0(=[sym(kdebug)]:2) > 0 (signed) (`blez` at 0xc878).
  `jr` at 0xc8cc returns with v0 = ?; its delay slot executes `nop` at 0xc8d0.

- `ULIsystrap` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xc8e0, 736 bytes) Inferred.
  2 such 8-byte loads into t0 read from abs 0xffffffffffffc028 (including `ld` at 0xc8fc, `ld` at 0xc98c).
  Loads 8 bytes into sp from [-0x3fd8]:8 +0x88 (`ld` at 0xc90c).
  2 such 8-byte loads into k0 read from abs 0xffffffffffffc028 (including `ld` at 0xc930, `ld` at 0xca30).
  Loads 8 bytes into k1 from [-0x3fd8]:8 +0x88 (`ld` at 0xc934).
  Stores 8 bytes from a1 to ? (base unknown), value a1 (`sd` at 0xc948).
  Stores 8 bytes from a2 to ? (base unknown), value a2 (`sd` at 0xc94c).
  Stores 8 bytes from a3 to ? (base unknown), value a3 (`sd` at 0xc950).
  Stores 8 bytes from ra to ? (base unknown), value ra (`sd` at 0xc958).
  Stores 8 bytes from s8 to ? (base unknown), value s8 (`sd` at 0xc95c).
  Stores 8 bytes from sp to ? (base unknown), value sp (`sd` at 0xc960).
  Stores 8 bytes from t0 to ? (base unknown) (`sd` at 0xc968).
  Stores 8 bytes from gp to ? (base unknown), value gp (`sd` at 0xc974).
  Stores 8 bytes from t1 to ? (base unknown) (`sd` at 0xc97c).
  Stores 1 byte from t0 to abs 0xffffffffffffc04f, value 0x2 (`sb` at 0xc984).
  Loads 8 bytes into t1 from [-0x3fd8]:8 +0x90 (`ld` at 0xc998).
  Stores 8 bytes from t1 to abs 0xffffffffffffc018, value [[-0x3fd8]:8+144]:8 (`sd` at 0xc9a0).
  Loads 2 bytes into a0 from [-0x3fd8]:8 +0xa8 (`lh` at 0xc9a8).
  Loads 8 bytes into t0 from ? (base unknown) (`ld` at 0xc9ac).
  Loads 8 bytes into t2 from abs 0xffffffffffffc028 (`ld` at 0xc9ec).
  Stores 1 byte from t1 to abs 0xffffffffffffc04f, value 0x4 (`sb` at 0xc9f8).
  Loads 8 bytes into a1 from [-0x3fd8]:8 +0x98 (`ld` at 0xc9fc).
  Stores 8 bytes from a1 to abs 0xffffffffffffc018, value [[-0x3fd8]:8+152]:8 (`sd` at 0xca00).
  Loads 2 bytes into a0 from [-0x3fd8]:8 +0xaa (`lh` at 0xca08).
  Loads 8 bytes into t2 from ? (base unknown) (`ld` at 0xca0c).
  Loads 8 bytes into t1 from ? (base unknown) (`ld` at 0xca10).
  Loads 8 bytes into ra from ? (base unknown) (`ld` at 0xca14).
  Loads 8 bytes into s8 from ? (base unknown) (`ld` at 0xca1c).
  Loads 8 bytes into sp from ? (base unknown) (`ld` at 0xca20).
  Loads 8 bytes into gp from ? (base unknown) (`ld` at 0xca28).
  Loads 4 bytes into k1 from [-0x3fd8]:8 +0xe8 (`lw` at 0xca34).
  Stores 8 bytes from sp to [-0x3fd8]:8 +0x1d0 (`sd` at 0xca44).
  Stores 8 bytes from gp to [-0x3fd8]:8 +0x1c8 (`sd` at 0xca48).
  Loads 8 bytes into at from abs 0xffffffffffffc038 (`ld` at 0xca4c).
  Stores 8 bytes from at to [-0x3fd8]:8 +0xf0, value [-0x3fc8]:8 (`sd` at 0xca50).
  Stores 8 bytes from a0 to [-0x3fd8]:8 +0x108 (`sd` at 0xca54).
  Stores 8 bytes from a1 to [-0x3fd8]:8 +0x110 (`sd` at 0xca58).
  Stores 8 bytes from a2 to [-0x3fd8]:8 +0x118 (`sd` at 0xca5c).
  Stores 8 bytes from a3 to [-0x3fd8]:8 +0x120 (`sd` at 0xca60).
  Stores 8 bytes from a4 to [-0x3fd8]:8 +0x128 (`sd` at 0xca64).
  Stores 8 bytes from a5 to [-0x3fd8]:8 +0x130 (`sd` at 0xca68).
  Stores 8 bytes from a6 to [-0x3fd8]:8 +0x138 (`sd` at 0xca6c).
  Stores 8 bytes from a7 to [-0x3fd8]:8 +0x140 (`sd` at 0xca70).
  Stores 8 bytes from s0 to [-0x3fd8]:8 +0x168, value s0 (`sd` at 0xca74).
  Stores 8 bytes from s1 to [-0x3fd8]:8 +0x170, value s1 (`sd` at 0xca78).
  Stores 8 bytes from s2 to [-0x3fd8]:8 +0x178, value s2 (`sd` at 0xca7c).
  Stores 8 bytes from s3 to [-0x3fd8]:8 +0x180, value s3 (`sd` at 0xca80).
  Stores 8 bytes from s4 to [-0x3fd8]:8 +0x188, value s4 (`sd` at 0xca84).
  Stores 8 bytes from s5 to [-0x3fd8]:8 +0x190, value s5 (`sd` at 0xca88).
  Stores 8 bytes from s6 to [-0x3fd8]:8 +0x198, value s6 (`sd` at 0xca8c).
  Stores 8 bytes from s7 to [-0x3fd8]:8 +0x1a0, value s7 (`sd` at 0xca90).
  Stores 8 bytes from ra to [-0x3fd8]:8 +0x1e0 (`sd` at 0xcaa4).
  Stores 8 bytes from s0 to [-0x3fd8]:8 +0x1e8 (`sd` at 0xcab0).
  Stores 8 bytes from s2 to [-0x3fd8]:8 +0x208 (`sd` at 0xcab4).
  Stores 8 bytes from s3 to [-0x3fd8]:8 +0x210 (`sd` at 0xcab8).
  Stores 8 bytes from s3 to [-0x3fd8]:8 +0x250 (`sd` at 0xcabc).
  Stores 8 bytes from at to [-0x3fd8]:8 +0x200 (`sd` at 0xcac0).
  Stores 4 bytes from k0 to [-0x3fd8]:8 +0xe8, value [-0x3fd8]:8 (`sw` at 0xcac4).
  Loads 8 bytes into sp from [-0x3fd8]:8 +0x88 (`ld` at 0xcacc).
  Calls `uli_return` via direct with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xc928).
  Calls `uli_setasids` via direct with a0=[[-0x3fd8]:8+168]:2, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xc9a4).
  Calls `ULI_syscall` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xc9c8).
  Calls `uli_setasids` via direct with a0=[[-0x3fd8]:8+170]:2, a1=[[-0x3fd8]:8+152]:8, a2=?, a3=one of 0x0, 0x1 (`jal` at 0xca04).
  Calls `tfi_save` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xcaa8).
  Calls `uli_badtrap` via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0xcaec).
  At `bne` at 0xc8e4, it is taken when v0(?) != at(=0x410); it falls through when v0(?) == at(=0x410) (`bne` at 0xc8e4).
  At `bne` at 0xc8ec, it is taken when a0 != at(=0xa8); it falls through when a0 == at(=0xa8) (`bne` at 0xc8ec).
  At `bne` at 0xc8f4, it is taken when a1 != at(=0x3); it falls through when a1 == at(=0x3) (`bne` at 0xc8f4).
  At `bnel` at 0xc9dc, it is taken when v0(=ret(ULI_syscall)) != 0; it falls through when v0(=ret(ULI_syscall)) == 0 (`bnel` at 0xc9dc).
  At `bne` at 0xca38, it is taken when k1(=[[-0x3fd8]:8+232]) != 0; it falls through when k1(=[[-0x3fd8]:8+232]) == 0 (`bne` at 0xca38).
  At `beq` at 0xcb08, it is taken when condition not analyzed; it falls through when condition not analyzed (`beq` at 0xcb08).

- `keruliframe` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xca30, 400 bytes) Inferred.
  Loads 8 bytes into k0 from abs 0xffffffffffffc028 (`ld` at 0xca30).
  Loads 4 bytes into k1 from [-0x3fd8]:8 +0xe8 (`lw` at 0xca34).
  Stores 8 bytes from sp to [-0x3fd8]:8 +0x1d0, value sp (`sd` at 0xca44).
  Stores 8 bytes from gp to [-0x3fd8]:8 +0x1c8, value gp (`sd` at 0xca48).
  Loads 8 bytes into at from abs 0xffffffffffffc038 (`ld` at 0xca4c).
  Stores 8 bytes from at to [-0x3fd8]:8 +0xf0, value [-0x3fc8]:8 (`sd` at 0xca50).
  Stores 8 bytes from a0 to [-0x3fd8]:8 +0x108, value a0 (`sd` at 0xca54).
  Stores 8 bytes from a1 to [-0x3fd8]:8 +0x110, value a1 (`sd` at 0xca58).
  Stores 8 bytes from a2 to [-0x3fd8]:8 +0x118, value a2 (`sd` at 0xca5c).
  Stores 8 bytes from a3 to [-0x3fd8]:8 +0x120, value a3 (`sd` at 0xca60).
  Stores 8 bytes from a4 to [-0x3fd8]:8 +0x128, value a4 (`sd` at 0xca64).
  Stores 8 bytes from a5 to [-0x3fd8]:8 +0x130, value a5 (`sd` at 0xca68).
  Stores 8 bytes from a6 to [-0x3fd8]:8 +0x138, value a6 (`sd` at 0xca6c).
  Stores 8 bytes from a7 to [-0x3fd8]:8 +0x140, value a7 (`sd` at 0xca70).
  Stores 8 bytes from s0 to [-0x3fd8]:8 +0x168, value s0 (`sd` at 0xca74).
  Stores 8 bytes from s1 to [-0x3fd8]:8 +0x170, value s1 (`sd` at 0xca78).
  Stores 8 bytes from s2 to [-0x3fd8]:8 +0x178, value s2 (`sd` at 0xca7c).
  Stores 8 bytes from s3 to [-0x3fd8]:8 +0x180, value s3 (`sd` at 0xca80).
  Stores 8 bytes from s4 to [-0x3fd8]:8 +0x188, value s4 (`sd` at 0xca84).
  Stores 8 bytes from s5 to [-0x3fd8]:8 +0x190, value s5 (`sd` at 0xca88).
  Stores 8 bytes from s6 to [-0x3fd8]:8 +0x198, value s6 (`sd` at 0xca8c).
  Stores 8 bytes from s7 to [-0x3fd8]:8 +0x1a0, value s7 (`sd` at 0xca90).
  Stores 8 bytes from ra to [-0x3fd8]:8 +0x1e0, value ra (`sd` at 0xcaa4).
  Stores 8 bytes from s0 to [-0x3fd8]:8 +0x1e8 (`sd` at 0xcab0).
  Stores 8 bytes from s2 to [-0x3fd8]:8 +0x208 (`sd` at 0xcab4).
  Stores 8 bytes from s3 to [-0x3fd8]:8 +0x210 (`sd` at 0xcab8).
  Stores 8 bytes from s3 to [-0x3fd8]:8 +0x250 (`sd` at 0xcabc).
  Stores 8 bytes from at to [-0x3fd8]:8 +0x200 (`sd` at 0xcac0).
  Stores 4 bytes from k0 to [-0x3fd8]:8 +0xe8, value [-0x3fd8]:8 (`sw` at 0xcac4).
  Loads 8 bytes into sp from [-0x3fd8]:8 +0x88 (`ld` at 0xcacc).
  Calls `tfi_save` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xcaa8).
  Calls `uli_badtrap` via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0xcaec).
  At `bne` at 0xca38, it is taken when k1(=[[-0x3fd8]:8+232]) != 0; it falls through when k1(=[[-0x3fd8]:8+232]) == 0 (`bne` at 0xca38).
  At `beq` at 0xcb08, it is taken when condition not analyzed; it falls through when condition not analyzed (`beq` at 0xcb08).

- `_baduk` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xcc54, 1052 bytes) Inferred.
  Loads 8 bytes into sp from abs 0xffffffffffffc3c0 (`ld` at 0xcc58).
  Calls `assfail` via direct with a0=sym(sr_desc+1192), a1=sym(exc_values+18), a2=0x0, a3=a3 at entry (arg3) (`j` at 0xcc88).
  At `beq` at 0xccdc, it is taken when condition not analyzed; it falls through when condition not analyzed (`beq` at 0xccdc).
  At `beq` at 0xccfc, it is taken when condition not analyzed; it falls through when condition not analyzed (`beq` at 0xccfc).
  At `bltz` at 0xcdf4, it is taken when condition not analyzed; it falls through when condition not analyzed (`bltz` at 0xcdf4).
  At `bne` at 0xce1c, it is taken when condition not analyzed; it falls through when condition not analyzed (`bne` at 0xce1c).
  At `beq` at 0xce28, it is taken when condition not analyzed; it falls through when condition not analyzed (`beq` at 0xce28).
  At `beq` at 0xce40, it is taken when condition not analyzed; it falls through when condition not analyzed (`beq` at 0xce40).
  At `bne` at 0xce58, it is taken when condition not analyzed; it falls through when condition not analyzed (`bne` at 0xce58).
  At `bne` at 0xce64, it is taken when condition not analyzed; it falls through when condition not analyzed (`bne` at 0xce64).
  At `beq` at 0xce70, it is taken when condition not analyzed; it falls through when condition not analyzed (`beq` at 0xce70).
  At `beq` at 0xceb0, it is taken when condition not analyzed; it falls through when condition not analyzed (`beq` at 0xceb0).
  At `bne` at 0xcec8, it is taken when condition not analyzed; it falls through when condition not analyzed (`bne` at 0xcec8).
  At `bne` at 0xcee8, it is taken when condition not analyzed; it falls through when condition not analyzed (`bne` at 0xcee8).
  The branch at 0xcf14 targets 0xd02c; its condition is not analyzed.
  At `bne` at 0xcf3c, it is taken when condition not analyzed; it falls through when condition not analyzed (`bne` at 0xcf3c).
  At `beq` at 0xcf48, it is taken when condition not analyzed; it falls through when condition not analyzed (`beq` at 0xcf48).
  The branch at 0xcf60 targets 0xd02c; its condition is not analyzed.
  At `bne` at 0xcf78, it is taken when condition not analyzed; it falls through when condition not analyzed (`bne` at 0xcf78).
  At `beq` at 0xcf88, it is taken when condition not analyzed; it falls through when condition not analyzed (`beq` at 0xcf88).
  At `bne` at 0xcf94, it is taken when condition not analyzed; it falls through when condition not analyzed (`bne` at 0xcf94).
  At `bne` at 0xcfa0, it is taken when condition not analyzed; it falls through when condition not analyzed (`bne` at 0xcfa0).
  At `beq` at 0xcfa8, it is taken when condition not analyzed; it falls through when condition not analyzed (`beq` at 0xcfa8).
  At `bne` at 0xcfb4, it is taken when condition not analyzed; it falls through when condition not analyzed (`bne` at 0xcfb4).
  At `beq` at 0xcfc0, it is taken when condition not analyzed; it falls through when condition not analyzed (`beq` at 0xcfc0).
  At `beq` at 0xcfc8, it is taken when condition not analyzed; it falls through when condition not analyzed (`beq` at 0xcfc8).
  At `bne` at 0xcfd4, it is taken when condition not analyzed; it falls through when condition not analyzed (`bne` at 0xcfd4).
  At `bne` at 0xcfe0, it is taken when condition not analyzed; it falls through when condition not analyzed (`bne` at 0xcfe0).
  At `beq` at 0xcfe8, it is taken when condition not analyzed; it falls through when condition not analyzed (`beq` at 0xcfe8).
  At `beq` at 0xcff4, it is taken when condition not analyzed; it falls through when condition not analyzed (`beq` at 0xcff4).
  At `beq` at 0xcffc, it is taken when condition not analyzed; it falls through when condition not analyzed (`beq` at 0xcffc).
  At `beq` at 0xd00c, it is taken when condition not analyzed; it falls through when condition not analyzed (`beq` at 0xd00c).
  At `beq` at 0xd020, it is taken when condition not analyzed; it falls through when condition not analyzed (`beq` at 0xd020).
  At `bne` at 0xd048, it is taken when condition not analyzed; it falls through when condition not analyzed (`bne` at 0xd048).
  At `beq` at 0xd054, it is taken when condition not analyzed; it falls through when condition not analyzed (`beq` at 0xd054).

- `ecommon` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xd070, 180 bytes) Inferred.
  Loads 8 bytes into at from abs 0xffffffffffffc038 (`ld` at 0xd070).
  Stores 8 bytes from ra to ? (base unknown), value ra (`sd` at 0xd074).
  Stores 8 bytes from a7 to ? (base unknown), value a7 (`sd` at 0xd078).
  Stores 8 bytes from a6 to ? (base unknown), value a6 (`sd` at 0xd07c).
  Stores 8 bytes from a5 to ? (base unknown), value a5 (`sd` at 0xd080).
  Stores 8 bytes from a4 to ? (base unknown), value a4 (`sd` at 0xd084).
  Stores 8 bytes from a3 to ? (base unknown), value a3 (`sd` at 0xd088).
  Stores 8 bytes from a2 to ? (base unknown), value a2 (`sd` at 0xd08c).
  Stores 8 bytes from a1 to ? (base unknown), value a1 (`sd` at 0xd090).
  Stores 8 bytes from a0 to ? (base unknown), value a0 (`sd` at 0xd094).
  Stores 8 bytes from s7 to ? (base unknown), value s7 (`sd` at 0xd098).
  Stores 8 bytes from s6 to ? (base unknown), value s6 (`sd` at 0xd09c).
  Stores 8 bytes from s5 to ? (base unknown), value s5 (`sd` at 0xd0a0).
  Stores 8 bytes from s4 to ? (base unknown), value s4 (`sd` at 0xd0a4).
  Stores 8 bytes from s3 to ? (base unknown), value s3 (`sd` at 0xd0a8).
  Stores 8 bytes from s2 to ? (base unknown), value s2 (`sd` at 0xd0ac).
  Stores 8 bytes from s1 to ? (base unknown), value s1 (`sd` at 0xd0b0).
  Stores 8 bytes from s0 to ? (base unknown), value s0 (`sd` at 0xd0b4).
  Stores 8 bytes from at to ? (base unknown), value [-0x3fc8]:8 (`sd` at 0xd0bc).
  Loads 8 bytes into a0 from abs 0xffffffffffffc020 (`ld` at 0xd0c0).
  Loads 4 bytes into s7 from [-0x3fe0]:8 +0x2e0 (`lw` at 0xd0d4).
  Stores 8 bytes from a3 to ? (base unknown) (`sd` at 0xd0f0).
  Stores 8 bytes from a0 to ? (base unknown) (`sd` at 0xd0f8).
  Stores 8 bytes from a0 to ? (base unknown) (`sd` at 0xd0fc).
  Stores 8 bytes from s0 to ? (base unknown) (`sd` at 0xd104).
  Stores 8 bytes from a0 to ? (base unknown) (`sd` at 0xd10c).
  Loads 8 bytes into a2 from ? (base unknown) (`ld` at 0xd118).
  Calls `tfi_save` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xd0b8).
  Calls `ktimer_switch` via direct with a0=[-0x3fe0]:8, a1=?, a2=?, a3=? (`jal` at 0xd0e0).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=? (`jr` at 0xd11c).
  At `beq` at 0xd0c8, it is taken when a0(=[-0x3fe0]:8) == 0; it falls through when a0(=[-0x3fe0]:8) != 0 (`beq` at 0xd0c8).
  At `bne` at 0xd0d8, it is taken when (k0(?) & 0x100) != 0; it falls through when (k0(?) & 0x100) == 0 (`bne` at 0xd0d8).

- `ecommon_allsaved` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xd0c0, 100 bytes) Inferred.
  Loads 8 bytes into a0 from abs 0xffffffffffffc020 (`ld` at 0xd0c0).
  Loads 4 bytes into s7 from [-0x3fe0]:8 +0x2e0 (`lw` at 0xd0d4).
  Stores 8 bytes from a3 to ? (base unknown) (`sd` at 0xd0f0).
  Stores 8 bytes from a0 to ? (base unknown) (`sd` at 0xd0f8).
  Stores 8 bytes from a0 to ? (base unknown) (`sd` at 0xd0fc).
  Stores 8 bytes from s0 to ? (base unknown) (`sd` at 0xd104).
  Stores 8 bytes from a0 to ? (base unknown) (`sd` at 0xd10c).
  Loads 8 bytes into a2 from ? (base unknown) (`ld` at 0xd118).
  Calls `ktimer_switch` via direct with a0=[-0x3fe0]:8, a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xd0e0).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=? (`jr` at 0xd11c).
  At `beq` at 0xd0c8, it is taken when a0(=[-0x3fe0]:8) == 0; it falls through when a0(=[-0x3fe0]:8) != 0 (`beq` at 0xd0c8).
  At `bne` at 0xd0d8, it is taken when (k0(?) & 0x100) != 0; it falls through when (k0(?) & 0x100) == 0 (`bne` at 0xd0d8).

- `softfp_adderr` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xd124, 36 bytes) Inferred.
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+2120, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xd130).
  `jr` at 0xd140 returns with v0 = 0x0; its delay slot executes `daddiu` at 0xd144.

- `softfp_insterr` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xd148, 40 bytes) Inferred.
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+2120, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xd158).
  `jr` at 0xd168 returns with v0 = 0x0; its delay slot executes `daddiu` at 0xd16c.

- `ioerror_dump` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xd170, 724 bytes) Inferred.
  Loads 8 bytes into a6 from (sym(imask_values) + (a2 << 0x3)) +0x0 (`ld` at 0xd1f8).
  14 such 4-byte loads into a0 read from a3 (arg3 at entry) +0x0 (including `lw` at 0xd1fc, `lw` at 0xd21c, `lw` at 0xd304).
  Loads 2 bytes into a2 from a3 (arg3 at entry) +0x4 (`lh` at 0xd210).
  2 such 2-byte loads into a1 read from a3 (arg3 at entry) +0xa (including `lh` at 0xd28c, `lh` at 0xd440).
  Loads 8 bytes into a2 from (sym(pdaindr) + ([a3+10]:2 << 0x4)) +0x8 (`ld` at 0xd29c).
  Loads 8 bytes into a2 from [(sym(pdaindr) + ([a3+10]:2 << 0x4))+8]:8 +0x648 (`ld` at 0xd2a8).
  Loads 2 bytes into a2 from a3 (arg3 at entry) +0x6 (`lh` at 0xd2f4).
  Loads 2 bytes into a2 from a3 (arg3 at entry) +0x8 (`lh` at 0xd30c).
  Loads 2 bytes into a2 from a3 (arg3 at entry) +0xa (`lh` at 0xd328).
  Loads 2 bytes into a2 from a3 (arg3 at entry) +0xc (`lh` at 0xd344).
  Loads 2 bytes into a2 from a3 (arg3 at entry) +0xe (`lh` at 0xd360).
  Loads 8 bytes into a2 from a3 (arg3 at entry) +0x10 (`ld` at 0xd378).
  Loads 8 bytes into a2 from a3 (arg3 at entry) +0x18 (`ld` at 0xd390).
  Loads 8 bytes into a2 from a3 (arg3 at entry) +0x20 (`ld` at 0xd3a8).
  Loads 8 bytes into a2 from a3 (arg3 at entry) +0x28 (`ld` at 0xd3c4).
  Loads 8 bytes into a2 from a3 (arg3 at entry) +0x30 (`ld` at 0xd3e0).
  Loads 8 bytes into a2 from a3 (arg3 at entry) +0x38 (`ld` at 0xd3fc).
  Loads 8 bytes into a2 from a3 (arg3 at entry) +0x40 (`ld` at 0xd418).
  Loads 8 bytes into a2 from a3 (arg3 at entry) +0x48 (`ld` at 0xd430).
  Calls `printf` via direct with a0=sym(.rodata)+2120, a1=a0 at entry (arg0), a2=sym(.rodata)+2120, a3=sym(.rodata)+2120, a4=sym(.rodata)+2120, a5=sym(.rodata)+2120, a6=[(sym(imask_values) + (a2 << 0x3))]:8, a7=(a2 << 0x3) (`jal` at 0xd1f4).
  Calls `printf` via direct with a0=sym(.rodata)+2120, a1=sym(.rodata)+2120, a2=[a3+4]:2, a3=? (`jal` at 0xd214).
  Calls `printf` via direct with a0=sym(.rodata)+2120, a1=[a3+10]:2, a2=[[(sym(pdaindr) + ([a3+10]:2 << 0x4))+8]:8+1608]:8, a3=([a3+10]:2 << 0x4) (`jal` at 0xd2a4).
  Calls `printf` via direct with a0=sym(.rodata)+2120, a1=?, a2=?, a3=? (`jal` at 0xd2b8).
  Calls `printf` via direct with a0=sym(.rodata)+2120, a1=sym(.rodata)+2120, a2=[a3+6]:2, a3=? (`jal` at 0xd2f8).
  Calls `printf` via direct with a0=sym(.rodata)+2120, a1=sym(.rodata)+2120, a2=[a3+8]:2, a3=? (`jal` at 0xd310).
  Calls `printf` via direct with a0=sym(.rodata)+2120, a1=sym(.rodata)+2120, a2=[a3+10]:2, a3=? (`jal` at 0xd32c).
  Calls `printf` via direct with a0=sym(.rodata)+2120, a1=sym(.rodata)+2120, a2=[a3+12]:2, a3=? (`jal` at 0xd348).
  Calls `printf` via direct with a0=sym(.rodata)+2120, a1=sym(.rodata)+2120, a2=[a3+14]:2, a3=? (`jal` at 0xd364).
  Calls `printf` via direct with a0=sym(.rodata)+2120, a1=sym(.rodata)+2120, a2=[a3+16]:8, a3=? (`jal` at 0xd37c).
  Calls `printf` via direct with a0=sym(.rodata)+2120, a1=sym(.rodata)+2120, a2=[a3+24]:8, a3=? (`jal` at 0xd394).
  Calls `printf` via direct with a0=sym(.rodata)+2120, a1=sym(.rodata)+2120, a2=[a3+32]:8, a3=? (`jal` at 0xd3ac).
  Calls `printf` via direct with a0=sym(.rodata)+2120, a1=sym(.rodata)+2120, a2=[a3+40]:8, a3=? (`jal` at 0xd3c8).
  Calls `printf` via direct with a0=sym(.rodata)+2120, a1=sym(.rodata)+2120, a2=[a3+48]:8, a3=? (`jal` at 0xd3e4).
  Calls `printf` via direct with a0=sym(.rodata)+2120, a1=sym(.rodata)+2120, a2=[a3+56]:8, a3=? (`jal` at 0xd400).
  Calls `printf` via direct with a0=sym(.rodata)+2120, a1=sym(.rodata)+2120, a2=[a3+64]:8, a3=([a3] << 0xd) (`jal` at 0xd41c).
  Calls `printf` via direct with a0=sym(.rodata)+2120, a1=sym(.rodata)+2120, a2=[a3+72]:8, a3=([a3] << 0xd) (`jal` at 0xd434).
  At `beq` at 0xd18c, it is taken when (a1 & 0x4) == 0; it falls through when (a1 & 0x4) != 0 (`beq` at 0xd18c).
  At `beq` at 0xd1a0, it is taken when (a1 & 0x8) == 0; it falls through when (a1 & 0x8) != 0 (`beq` at 0xd1a0).
  At `beq` at 0xd1b4, it is taken when (a1 & 0x1) == 0; it falls through when (a1 & 0x1) != 0 (`beq` at 0xd1b4).
  At `beq` at 0xd1c8, it is taken when (a1 & 0x2) == 0; it falls through when (a1 & 0x2) != 0 (`beq` at 0xd1c8).
  At `beq` at 0xd204, it is taken when a7(?) == 0; it falls through when a7(?) != 0 (`beq` at 0xd204).
  At `bltz` at 0xd224, it is taken when t0(=([a3] << 0x1)) < 0 (signed); it falls through when t0(=([a3] << 0x1)) >= 0 (signed) (`bltz` at 0xd224).
  At `bltz` at 0xd22c, it is taken when t1(=([a3] << 0x2)) < 0 (signed); it falls through when t1(=([a3] << 0x2)) >= 0 (signed) (`bltz` at 0xd22c).
  At `bltz` at 0xd234, it is taken when t2(=([a3] << 0x3)) < 0 (signed); it falls through when t2(=([a3] << 0x3)) >= 0 (signed) (`bltz` at 0xd234).
  At `bltz` at 0xd23c, it is taken when t3(=([a3] << 0x4)) < 0 (signed); it falls through when t3(=([a3] << 0x4)) >= 0 (signed) (`bltz` at 0xd23c).
  At `bltz` at 0xd244, it is taken when t8(=([a3] << 0x5)) < 0 (signed); it falls through when t8(=([a3] << 0x5)) >= 0 (signed) (`bltz` at 0xd244).
  At `bltz` at 0xd24c, it is taken when t9(=([a3] << 0x6)) < 0 (signed); it falls through when t9(=([a3] << 0x6)) >= 0 (signed) (`bltz` at 0xd24c).
  At `bltz` at 0xd254, it is taken when ra(=([a3] << 0x7)) < 0 (signed); it falls through when ra(=([a3] << 0x7)) >= 0 (signed) (`bltz` at 0xd254).
  At `bltz` at 0xd25c, it is taken when at(=([a3] << 0x8)) < 0 (signed); it falls through when at(=([a3] << 0x8)) >= 0 (signed) (`bltz` at 0xd25c).
  At `bltz` at 0xd264, it is taken when v0(=([a3] << 0x9)) < 0 (signed); it falls through when v0(=([a3] << 0x9)) >= 0 (signed) (`bltz` at 0xd264).
  At `bltz` at 0xd26c, it is taken when v1(=([a3] << 0xa)) < 0 (signed); it falls through when v1(=([a3] << 0xa)) >= 0 (signed) (`bltz` at 0xd26c).
  At `bltz` at 0xd274, it is taken when a1(=([a3] << 0xb)) < 0 (signed); it falls through when a1(=([a3] << 0xb)) >= 0 (signed) (`bltz` at 0xd274).
  At `bltz` at 0xd27c, it is taken when a2(=([a3] << 0xc)) < 0 (signed); it falls through when a2(=([a3] << 0xc)) >= 0 (signed) (`bltz` at 0xd27c).
  At `bltz` at 0xd284, it is taken when a3(=([a3] << 0xd)) < 0 (signed); it falls through when a3(=([a3] << 0xd)) >= 0 (signed) (`bltz` at 0xd284).
  `jr` at 0xd2c4 returns with v0 = ret(printf); its delay slot executes `daddiu` at 0xd2c8.

- `error_mark_page` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xd444, 36 bytes) Inferred.
  Calls `cmn_err` via direct with a0=0x5, a1=sym(.rodata)+2120, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xd454).
  `jr` at 0xd460 returns with v0 = ret(cmn_err); its delay slot executes `daddiu` at 0xd464.

- `error_reclaim_page` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xd468, 40 bytes) Inferred.
  Calls `cmn_err` via direct with a0=0x5, a1=sym(.rodata)+2120, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xd478).
  `jr` at 0xd488 returns with v0 = 0x0; its delay slot executes `daddiu` at 0xd48c.

- `_hook_exceptions` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xd490, 648 bytes) Inferred.
  Loads 4 bytes into a4 from sym(utlbmiss_prolog_patch) +0x0 (`lw` at 0xd4a8).
  Loads 4 bytes into a7 from sym(utlbmiss_prolog_mp) -0x4 (`lw` at 0xd4f0).
  Stores 4 bytes from a7 to ? (base unknown), value [sym(utlbmiss_prolog_mp)-4] (`sw` at 0xd4f4).
  Loads 4 bytes into t0 from sym(utlbmiss_prolog_mp) -0x4 (`lw` at 0xd508).
  Stores 4 bytes from t0 to ? (base unknown), value [sym(utlbmiss_prolog_mp)-4] (`sw` at 0xd510).
  Stores 4 bytes from a4 to abs 0xffffffffa0000000, value [sym(utlbmiss_prolog_patch)] (`sw` at 0xd520).
  Loads 4 bytes into a5 from sym(utlbmiss_prolog_patch) +0x0 (`lw` at 0xd584).
  2 such 4-byte loads into ra read from ? (base unknown) (including `lw` at 0xd590, `lw` at 0xd638).
  Stores 4 bytes from ra to ? (base unknown) (`sw` at 0xd594).
  Loads 4 bytes into at from ? (base unknown) (`lw` at 0xd5a8).
  Stores 4 bytes from at to ? (base unknown) (`sw` at 0xd5b0).
  Loads 4 bytes into t0 from ? (base unknown) (`lw` at 0xd5dc).
  Stores 4 bytes from t0 to ? (base unknown) (`sw` at 0xd5e0).
  Loads 4 bytes into t1 from ? (base unknown) (`lw` at 0xd5f4).
  Stores 4 bytes from t1 to ? (base unknown) (`sw` at 0xd5fc).
  Stores 4 bytes from a5 to abs 0xffffffffa0000080, value [sym(utlbmiss_prolog_patch)] (`sw` at 0xd60c).
  Loads 4 bytes into t9 from ? (base unknown) (`lw` at 0xd620).
  Stores 4 bytes from t9 to ? (base unknown) (`sw` at 0xd624).
  Stores 4 bytes from ra to ? (base unknown) (`sw` at 0xd640).
  Loads 4 bytes into ra from sym(_ecc_errorvec) -0x4 (`lw` at 0xd670).
  Stores 4 bytes from ra to ? (base unknown), value [sym(_ecc_errorvec)-4] (`sw` at 0xd674).
  Loads 4 bytes into at from sym(_ecc_errorvec) -0x4 (`lw` at 0xd688).
  Stores 4 bytes from at to ? (base unknown), value [sym(_ecc_errorvec)-4] (`sw` at 0xd690).
  Loads 4 bytes into a3 from sym(_j_exceptnorm) -0x4 (`lw` at 0xd6b0).
  Stores 4 bytes from a3 to ? (base unknown), value [sym(_j_exceptnorm)-4] (`sw` at 0xd6b4).
  Loads 4 bytes into a4 from sym(_j_exceptnorm) -0x4 (`lw` at 0xd6c8).
  Stores 4 bytes from a4 to ? (base unknown), value [sym(_j_exceptnorm)-4] (`sw` at 0xd6d0).
  Stores 8 bytes from t0 to abs 0xa800000000000418, value -0x4000 (`sd` at 0xd6e8).
  Stores 8 bytes from a6 to abs 0xa800000000000420, value -0x3b38 (`sd` at 0xd6f4).
  Calls `flush_cache` via direct with a0=?, a1=?, a2=sym(_j_endexceptnorm), a3=?, a6=-0x3b38, a7=0xa800000000000420 (`jal` at 0xd6f0).
  Calls `assfail` via direct with a0=sym(.rodata)+3000, a1=sym(.rodata)+3000, a2=0x19e, a3=?, a4=sym(utlbmiss), a5=0x1, a6=sym(utlbmiss_prolog_patch) (`jal` at 0xd708).
  At `blez` at 0xd4a4, it is taken when at(=[sym(kdebug)]:2) <= 0 (signed); it falls through when at(=[sym(kdebug)]:2) > 0 (signed) (`blez` at 0xd4a4).
  At `beq` at 0xd4d8, it is taken when a1(=sym(utlbmiss_prolog_mp)) >= s2(=sym(eutlbmiss_prolog_mp)) (unsigned); it falls through when a1(=sym(utlbmiss_prolog_mp)) < s2(=sym(eutlbmiss_prolog_mp)) (unsigned) (`beq` at 0xd4d8).
  At `beq` at 0xd4f8, it is taken when a1(=sym(utlbmiss_prolog_mp)) >= s2(=sym(eutlbmiss_prolog_mp)) (unsigned); it falls through when a1(=sym(utlbmiss_prolog_mp)) < s2(=sym(eutlbmiss_prolog_mp)) (unsigned) (`beq` at 0xd4f8).
  At `bne` at 0xd50c, it is taken when a1(=sym(utlbmiss_prolog_mp)) < s2(=sym(eutlbmiss_prolog_mp)) (unsigned); it falls through when a1(=sym(utlbmiss_prolog_mp)) >= s2(=sym(eutlbmiss_prolog_mp)) (unsigned) (`bne` at 0xd50c).
  At `beq` at 0xd518, it is taken when t2(=[sym(need_utlbmiss_patch)]) == 0; it falls through when t2(=[sym(need_utlbmiss_patch)]) != 0 (`beq` at 0xd518).
  At `beq` at 0xd54c, it is taken when t3(?) >= 0x81 (signed); it falls through when t3(?) < 0x81 (signed) (`beq` at 0xd54c).
  At `beq` at 0xd570, it is taken when t8(?) >= 0x81 (signed); it falls through when t8(?) < 0x81 (signed) (`beq` at 0xd570).
  At `beq` at 0xd580, it is taken when s3(?) >= s1(?) (unsigned); it falls through when s3(?) < s1(?) (unsigned) (`beq` at 0xd580).
  At `beq` at 0xd598, it is taken when a1(?) >= s1(?) (unsigned); it falls through when a1(?) < s1(?) (unsigned) (`beq` at 0xd598).
  At `bne` at 0xd5ac, it is taken when a1(?) < s1(?) (unsigned); it falls through when a1(?) >= s1(?) (unsigned) (`bne` at 0xd5ac).
  At `blez` at 0xd5c4, it is taken when a1(=[sym(utlbmiss_prolog_size)]) <= 0 (signed); it falls through when a1(=[sym(utlbmiss_prolog_size)]) > 0 (signed) (`blez` at 0xd5c4).
  At `beq` at 0xd5e4, it is taken when a1(?) >= s2(=sym(eutlbmiss_prolog_mp)) (unsigned); it falls through when a1(?) < s2(=sym(eutlbmiss_prolog_mp)) (unsigned) (`beq` at 0xd5e4).
  At `bne` at 0xd5f8, it is taken when a1(?) < s2(=sym(eutlbmiss_prolog_mp)) (unsigned); it falls through when a1(?) >= s2(=sym(eutlbmiss_prolog_mp)) (unsigned) (`bne` at 0xd5f8).
  At `beq` at 0xd604, it is taken when t3(=[sym(need_utlbmiss_patch)]) == 0; it falls through when t3(=[sym(need_utlbmiss_patch)]) != 0 (`beq` at 0xd604).
  At `beq` at 0xd610, it is taken when a4(?) == 0; it falls through when a4(?) != 0 (`beq` at 0xd610).
  At `beq` at 0xd628, it is taken when a1(?) >= s1(?) (unsigned); it falls through when a1(?) < s1(?) (unsigned) (`beq` at 0xd628).
  At `bne` at 0xd63c, it is taken when a1(?) < s1(?) (unsigned); it falls through when a1(?) >= s1(?) (unsigned) (`bne` at 0xd63c).
  At `beq` at 0xd660, it is taken when a1(=sym(_ecc_errorvec)) >= a3(=sym(_ecc_end)) (unsigned); it falls through when a1(=sym(_ecc_errorvec)) < a3(=sym(_ecc_end)) (unsigned) (`beq` at 0xd660).
  At `beq` at 0xd678, it is taken when a1(=sym(_ecc_errorvec)) >= a3(=sym(_ecc_end)) (unsigned); it falls through when a1(=sym(_ecc_errorvec)) < a3(=sym(_ecc_end)) (unsigned) (`beq` at 0xd678).
  At `bne` at 0xd68c, it is taken when a1(=sym(_ecc_errorvec)) < a3(=sym(_ecc_end)) (unsigned); it falls through when a1(=sym(_ecc_errorvec)) >= a3(=sym(_ecc_end)) (unsigned) (`bne` at 0xd68c).
  At `beq` at 0xd698, it is taken when a5(=sym(_j_exceptnorm)) >= a2(=sym(_j_endexceptnorm)) (unsigned); it falls through when a5(=sym(_j_exceptnorm)) < a2(=sym(_j_endexceptnorm)) (unsigned) (`beq` at 0xd698).
  At `beq` at 0xd6b8, it is taken when a1(=sym(_j_exceptnorm)) >= a2(=sym(_j_endexceptnorm)) (unsigned); it falls through when a1(=sym(_j_exceptnorm)) < a2(=sym(_j_endexceptnorm)) (unsigned) (`beq` at 0xd6b8).
  At `bne` at 0xd6cc, it is taken when a1(=sym(_j_exceptnorm)) < a2(=sym(_j_endexceptnorm)) (unsigned); it falls through when a1(=sym(_j_exceptnorm)) >= a2(=sym(_j_endexceptnorm)) (unsigned) (`bne` at 0xd6cc).
  `jr` at 0xd6fc returns with v0 = ret(flush_cache); its delay slot executes `daddiu` at 0xd700.

- `sw_cachesynch_patch` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xd718, 108 bytes) Inferred.
  Loads 8 bytes into v0 from sym(.data) +0x1d10 (`ld` at 0xd740).
  Loads 4 bytes into v1 from sym(sw_cachesynch_patch_insts) +0x0 (`lw` at 0xd750).
  Stores 4 bytes from v1 to ? (base unknown), value [sym(sw_cachesynch_patch_insts)] (`sw` at 0xd754).
  Loads 8 bytes into a1 from sym(.data) +0x1d18 (`ld` at 0xd758).
  Loads 4 bytes into a0 from sym(sw_cachesynch_patch_insts) +0x4 (`lw` at 0xd764).
  Stores 4 bytes from a0 to sym(sw_cachesynch_op2) +0x0, value [sym(sw_cachesynch_patch_insts)+4] (`sw` at 0xd768).
  Loads 8 bytes into a1 from sym(.data) +0x1d20 (`ld` at 0xd76c).
  Calls `get_cpu_irr` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xd720).
  At `bne` at 0xd734, it is taken when at(?) != v0(=0x4); it falls through when at(?) == v0(=0x4) (`bne` at 0xd734).
  At `beq` at 0xd748, it is taken when v0(=sym(sw_cachesynch_op1)) == 0; it falls through when v0(=sym(sw_cachesynch_op1)) != 0 (`beq` at 0xd748).
  At `beq` at 0xd75c, it is taken when a1(=sym(sw_cachesynch_op2)) == 0; it falls through when a1(=sym(sw_cachesynch_op2)) != 0 (`beq` at 0xd75c).
  At `bne` at 0xd774, it is taken when a1(=sym(sw_cachesynch_op3)) != 0; it falls through when a1(=sym(sw_cachesynch_op3)) == 0 (`bne` at 0xd774).
  `jr` at 0xd77c returns with v0 = ?; its delay slot executes `daddiu` at 0xd780.

- `_j_exceptnorm` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xd790, 16 bytes) Inferred.
  Loads 8 bytes into k0 from abs 0xffffffffffffc000 (`ld` at 0xd790).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd798).

- `_j_endexceptnorm` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xd7a0, 16 bytes) Inferred.
  Calls `exception` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xd7a8).

- `_j_exceptnorm_nosymmon` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xd7a0, 16 bytes) Inferred.
  Calls `exception` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xd7a8).

- `utlbmiss` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xd880, 40 bytes) Inferred.
  Loads 8 bytes into k1 from ? (base unknown) (`ld` at 0xd890).
  Loads 8 bytes into k0 from ? (base unknown) (`ld` at 0xd894).

- `utlbmiss_not_large_page` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xd890, 24 bytes) Inferred.
  Loads 8 bytes into k1 from ? (base unknown) (`ld` at 0xd890).
  Loads 8 bytes into k0 from ? (base unknown) (`ld` at 0xd894).

- `eutlbmiss` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xd8a8, 136 bytes) Inferred.
  Loads 8 bytes into k1 from ? (base unknown) (`ld` at 0xd8b8).
  Stores 8 bytes from at to abs 0xffffffffffffc038 (`sd` at 0xd8cc).
  2 such 8-byte loads into at read from ? (base unknown) (including `ld` at 0xd904, `ld` at 0xd910).
  Loads 8 bytes into at from abs 0xffffffffffffc038 (`ld` at 0xd928).
  At `beq` at 0xd8c4, it is taken when (k1(?) & 0xf) == 0; it falls through when (k1(?) & 0xf) != 0 (`beq` at 0xd8c4).

- `lpg_utlbmiss` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xd8a8, 136 bytes) Inferred.
  Loads 8 bytes into k1 from ? (base unknown) (`ld` at 0xd8b8).
  Stores 8 bytes from at to abs 0xffffffffffffc038 (`sd` at 0xd8cc).
  2 such 8-byte loads into at read from ? (base unknown) (including `ld` at 0xd904, `ld` at 0xd910).
  Loads 8 bytes into at from abs 0xffffffffffffc038 (`ld` at 0xd928).
  At `beq` at 0xd8c4, it is taken when (k1(?) & 0xf) == 0; it falls through when (k1(?) & 0xf) != 0 (`beq` at 0xd8c4).

- `utlbmiss2` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xd980, 60 bytes) Inferred.
  Loads 8 bytes into k1 from ? (base unknown) (`ld` at 0xd990).
  Loads 8 bytes into k0 from ? (base unknown) (`ld` at 0xd994).
  At `beq` at 0xd9a4, it is taken when k1(?) == 0; it falls through when k1(?) != 0 (`beq` at 0xd9a4).
  At `beq` at 0xd9ac, it is taken when k0(?) == 0; it falls through when k0(?) != 0 (`beq` at 0xd9ac).

- `utlbmiss2_not_large_page` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xd990, 44 bytes) Inferred.
  Loads 8 bytes into k1 from ? (base unknown) (`ld` at 0xd990).
  Loads 8 bytes into k0 from ? (base unknown) (`ld` at 0xd994).
  At `beq` at 0xd9a4, it is taken when k1(?) == 0; it falls through when k1(?) != 0 (`beq` at 0xd9a4).
  At `beq` at 0xd9ac, it is taken when k0(?) == 0; it falls through when k0(?) != 0 (`beq` at 0xd9ac).

- `utlbmiss_sharedseg1` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xd9c0, 96 bytes) Inferred.
  2 such 8-byte loads into k0 read from ? (base unknown) (including `ld` at 0xd9e0, `ld` at 0xda10).
  Loads 8 bytes into k1 from ? (base unknown) (`ld` at 0xd9e4).
  At `bne` at 0xd9c0, it is taken when k0(?) != 0; it falls through when k0(?) == 0 (`bne` at 0xd9c0).

- `utlbmiss_sharedseg2` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xda24, 40 bytes) Inferred.
  Loads 8 bytes into k1 from ? (base unknown) (`ld` at 0xda3c).

- `lpg_overlay_utlbmiss` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xda4c, 136 bytes) Inferred.
  Loads 8 bytes into k1 from ? (base unknown) (`ld` at 0xda5c).
  Stores 8 bytes from at to abs 0xffffffffffffc038 (`sd` at 0xda70).
  2 such 8-byte loads into at read from ? (base unknown) (including `ld` at 0xdaa8, `ld` at 0xdab4).
  Loads 8 bytes into at from abs 0xffffffffffffc038 (`ld` at 0xdacc).
  At `beq` at 0xda68, it is taken when (k1(?) & 0xf) == 0; it falls through when (k1(?) & 0xf) != 0 (`beq` at 0xda68).

- `elpg_overlay_utlbmiss` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xdad4, 44 bytes) Inferred.
  Loads 4 bytes into k1 from abs 0xffffffffffffc4bc (`lw` at 0xdae0).
  Stores 4 bytes from k1 to abs 0xffffffffffffc4bc, value [-0x3b44]+1 (`sw` at 0xdaec).
  Loads 4 bytes into k1 from abs 0xffffffffffffc4c0 (`lw` at 0xdaf0).
  Stores 4 bytes from k1 to abs 0xffffffffffffc4c0, value [-0x3b40]+1 (`sw` at 0xdafc).
  Calls `utlbmiss` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdae8).
  Calls `utlbmiss` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdaf8).
  At `beq` at 0xdadc, it is taken when (k1(?) & 0x10) == 0; it falls through when (k1(?) & 0x10) != 0 (`beq` at 0xdadc).

- `utlbmiss1` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xdad4, 44 bytes) Inferred.
  Loads 4 bytes into k1 from abs 0xffffffffffffc4bc (`lw` at 0xdae0).
  Stores 4 bytes from k1 to abs 0xffffffffffffc4bc, value [-0x3b44]+1 (`sw` at 0xdaec).
  Loads 4 bytes into k1 from abs 0xffffffffffffc4c0 (`lw` at 0xdaf0).
  Stores 4 bytes from k1 to abs 0xffffffffffffc4c0, value [-0x3b40]+1 (`sw` at 0xdafc).
  Calls `utlbmiss` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdae8).
  Calls `utlbmiss` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdaf8).
  At `beq` at 0xdadc, it is taken when (k1(?) & 0x10) == 0; it falls through when (k1(?) & 0x10) != 0 (`beq` at 0xdadc).

- `eutlbmiss1` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xdb00, 44 bytes) Inferred.
  Loads 4 bytes into k1 from abs 0xffffffffffffc4bc (`lw` at 0xdb0c).
  Stores 4 bytes from k1 to abs 0xffffffffffffc4bc, value [-0x3b44]+1 (`sw` at 0xdb18).
  Loads 4 bytes into k1 from abs 0xffffffffffffc4c0 (`lw` at 0xdb1c).
  Stores 4 bytes from k1 to abs 0xffffffffffffc4c0, value [-0x3b40]+1 (`sw` at 0xdb28).
  Calls `lpg_utlbmiss` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdb14).
  Calls `lpg_utlbmiss` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdb24).
  At `beq` at 0xdb08, it is taken when (k1(?) & 0x10) == 0; it falls through when (k1(?) & 0x10) != 0 (`beq` at 0xdb08).

- `lpg_counting_utlbmiss` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xdb00, 44 bytes) Inferred.
  Loads 4 bytes into k1 from abs 0xffffffffffffc4bc (`lw` at 0xdb0c).
  Stores 4 bytes from k1 to abs 0xffffffffffffc4bc, value [-0x3b44]+1 (`sw` at 0xdb18).
  Loads 4 bytes into k1 from abs 0xffffffffffffc4c0 (`lw` at 0xdb1c).
  Stores 4 bytes from k1 to abs 0xffffffffffffc4c0, value [-0x3b40]+1 (`sw` at 0xdb28).
  Calls `lpg_utlbmiss` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdb14).
  Calls `lpg_utlbmiss` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdb24).
  At `beq` at 0xdb08, it is taken when (k1(?) & 0x10) == 0; it falls through when (k1(?) & 0x10) != 0 (`beq` at 0xdb08).

- `elpg_counting_utlbmiss` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xdb2c, 44 bytes) Inferred.
  Loads 4 bytes into k1 from abs 0xffffffffffffc4bc (`lw` at 0xdb38).
  Stores 4 bytes from k1 to abs 0xffffffffffffc4bc, value [-0x3b44]+1 (`sw` at 0xdb44).
  Loads 4 bytes into k1 from abs 0xffffffffffffc4c0 (`lw` at 0xdb48).
  Stores 4 bytes from k1 to abs 0xffffffffffffc4c0, value [-0x3b40]+1 (`sw` at 0xdb54).
  Calls `utlbmiss2` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdb40).
  Calls `utlbmiss2` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdb50).
  At `beq` at 0xdb34, it is taken when (k1(?) & 0x10) == 0; it falls through when (k1(?) & 0x10) != 0 (`beq` at 0xdb34).

- `utlbmiss3` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xdb2c, 44 bytes) Inferred.
  Loads 4 bytes into k1 from abs 0xffffffffffffc4bc (`lw` at 0xdb38).
  Stores 4 bytes from k1 to abs 0xffffffffffffc4bc, value [-0x3b44]+1 (`sw` at 0xdb44).
  Loads 4 bytes into k1 from abs 0xffffffffffffc4c0 (`lw` at 0xdb48).
  Stores 4 bytes from k1 to abs 0xffffffffffffc4c0, value [-0x3b40]+1 (`sw` at 0xdb54).
  Calls `utlbmiss2` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdb40).
  Calls `utlbmiss2` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdb50).
  At `beq` at 0xdb34, it is taken when (k1(?) & 0x10) == 0; it falls through when (k1(?) & 0x10) != 0 (`beq` at 0xdb34).

- `eutlbmiss3` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xdb58, 44 bytes) Inferred.
  Loads 4 bytes into k1 from abs 0xffffffffffffc4bc (`lw` at 0xdb64).
  Stores 4 bytes from k1 to abs 0xffffffffffffc4bc, value [-0x3b44]+1 (`sw` at 0xdb70).
  Loads 4 bytes into k1 from abs 0xffffffffffffc4c0 (`lw` at 0xdb74).
  Stores 4 bytes from k1 to abs 0xffffffffffffc4c0, value [-0x3b40]+1 (`sw` at 0xdb80).
  Calls `lpg_overlay_utlbmiss` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdb6c).
  Calls `lpg_overlay_utlbmiss` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdb7c).
  At `beq` at 0xdb60, it is taken when (k1(?) & 0x10) == 0; it falls through when (k1(?) & 0x10) != 0 (`beq` at 0xdb60).

- `lpg_overlay_counting_utlbmiss` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xdb58, 44 bytes) Inferred.
  Loads 4 bytes into k1 from abs 0xffffffffffffc4bc (`lw` at 0xdb64).
  Stores 4 bytes from k1 to abs 0xffffffffffffc4bc, value [-0x3b44]+1 (`sw` at 0xdb70).
  Loads 4 bytes into k1 from abs 0xffffffffffffc4c0 (`lw` at 0xdb74).
  Stores 4 bytes from k1 to abs 0xffffffffffffc4c0, value [-0x3b40]+1 (`sw` at 0xdb80).
  Calls `lpg_overlay_utlbmiss` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdb6c).
  Calls `lpg_overlay_utlbmiss` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdb7c).
  At `beq` at 0xdb60, it is taken when (k1(?) & 0x10) == 0; it falls through when (k1(?) & 0x10) != 0 (`beq` at 0xdb60).

- `elpg_overlay_counting_utlbmiss` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xdb84, 4 bytes) Inferred.
  Loads 8 bytes into k1 from abs 0xffffffffffffc4c8 (`ld` at 0xdb84).

- `utlbmiss_prolog_patch` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xdb84, 4 bytes) Inferred.
  Loads 8 bytes into k1 from abs 0xffffffffffffc4c8 (`ld` at 0xdb84).

- `utlbmissj` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xdb88, 32 bytes) Inferred.
  Calls `utlbmiss` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdb98).

- `_ecc_errorvec` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xdbb0, 104 bytes) Inferred.
  Loads 8 bytes into k1 from abs 0xffffffffaff50000 (`ld` at 0xdbcc).
  Loads 8 bytes into k1 from ([0xffffffffaff50000]:8 << 0x3) +0xff0 (`ld` at 0xdbd4).
  Stores 8 bytes from k0 to [([0xffffffffaff50000]:8 << 0x3)+4080]:8 +0xc8 (`sd` at 0xdbd8).
  Stores 8 bytes from at to [([0xffffffffaff50000]:8 << 0x3)+4080]:8 +0x0 (`sd` at 0xdbdc).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdc10).

- `_ecc_end` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xdc18, 24 bytes) Inferred.
  Loads 4 bytes into v0 from (a0 << 0x2) -0x500fffe0 (`lw` at 0xdc2c).
  `jr` at 0xdc28 returns with v0 = [(a0 << 0x2)-1343225824]; its delay slot executes `lw` at 0xdc2c.

- `get_mem_conf` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xdc18, 24 bytes) Inferred.
  Loads 4 bytes into v0 from (a0 << 0x2) -0x500fffe0 (`lw` at 0xdc2c).
  `jr` at 0xdc28 returns with v0 = [(a0 << 0x2)-1343225824]; its delay slot executes `lw` at 0xdc2c.

- `bank_addrlo` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xdc30, 36 bytes) Inferred.
  Calls `_ecc_end [0xdc18]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xdc38).
  `jr` at 0xdc4c returns with v0 = ?; its delay slot executes `dsll` at 0xdc50.

- `banksz` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xdc54, 68 bytes) Inferred.
  Calls `_ecc_end [0xdc18]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xdc5c).
  At `beq` at 0xdc7c, it is taken when (v0(=ret(_ecc_end)) & a3(=0xffffffff80000000)) == 0; it falls through when (v0(=ret(_ecc_end)) & a3(=0xffffffff80000000)) != 0 (`beq` at 0xdc7c).
  `jr` at 0xdc88 returns with v0 = ?; its delay slot executes `daddiu` at 0xdc8c.

- `addr_to_bank` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xdc98, 164 bytes) Inferred.
  Calls `banksz [0xdc54]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xdcdc).
  Calls `bank_addrlo [0xdc30]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xdcec).
  At `bne` at 0xdcb0, it is taken when a0 < at(=0x20000000) (unsigned); it falls through when a0 >= at(=0x20000000) (unsigned) (`bne` at 0xdcb0).
  At `beq` at 0xdcd4, it is taken when s0(?) >= 0x4 (signed); it falls through when s0(?) < 0x4 (signed) (`beq` at 0xdcd4).
  At `beq` at 0xdce4, it is taken when v0(=ret(banksz)) == 0; it falls through when v0(=ret(banksz)) != 0 (`beq` at 0xdce4).
  At `bne` at 0xdd00, it is taken when s2(?) < v0(=ret(bank_addrlo)) (unsigned); it falls through when s2(?) >= v0(=ret(bank_addrlo)) (unsigned) (`bne` at 0xdd00).
  At `beq` at 0xdd0c, it is taken when s2(?) >= a0(?) (unsigned); it falls through when s2(?) < a0(?) (unsigned) (`beq` at 0xdd0c).
  `jr` at 0xdd34 returns with v0 = ?; its delay slot executes `daddiu` at 0xdd38.

- `szmem` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xdd3c, 160 bytes) Inferred.
  Calls `banksz [0xdc54]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xdd74).
  At `beq` at 0xdd54, it is taken when at(=[sym(.sdata)+216]:8) == 0; it falls through when at(=[sym(.sdata)+216]:8) != 0 (`beq` at 0xdd54).
  At `bne` at 0xdd8c, it is taken when s0(?) < 0x4 (signed); it falls through when s0(?) >= 0x4 (signed) (`bne` at 0xdd8c).
  At `beq` at 0xdd9c, it is taken when s2(=a1) == 0; it falls through when s2(=a1) != 0 (`beq` at 0xdd9c).
  `jr` at 0xdd60 returns with v0 = ?; its delay slot executes `daddiu` at 0xdd64.

- `is_in_main_memory` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xdddc, 56 bytes) Inferred.
  At `bne` at 0xddec, it is taken when a0 < a4(=0x20000000) (unsigned); it falls through when a0 >= a4(=0x20000000) (unsigned) (`bne` at 0xddec).
  At `bne` at 0xddf4, it is taken when a3(?) != 0; it falls through when a3(?) == 0 (`bne` at 0xddf4).
  At `beq` at 0xddfc, it is taken when v0(?) == 0; it falls through when v0(?) != 0 (`beq` at 0xddfc).
  `jr` at 0xde04 returns with v0 = 0x1; its delay slot executes `addiu` at 0xde08.
  `jr` at 0xde0c returns with v0 = 0x0; its delay slot executes `nop` at 0xde10.

- `block_is_in_main_memory` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xde14, 76 bytes) Inferred.
  Calls `is_in_main_memory` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xde20).
  Calls `is_in_main_memory` via direct with a0=(a0 + a1)-1, a1=a1 at entry (arg1), a2=?, a3=? (`jal` at 0xde38).
  At `beq` at 0xde28, it is taken when v0(=ret(is_in_main_memory)) == 0; it falls through when v0(=ret(is_in_main_memory)) != 0 (`beq` at 0xde28).
  At `beq` at 0xde40, it is taken when v0(=ret(is_in_main_memory)) == 0; it falls through when v0(=ret(is_in_main_memory)) != 0 (`beq` at 0xde40).
  `jr` at 0xde58 returns with v0 = one of 0x0, 0x1; its delay slot executes `daddiu` at 0xde5c.

- `is_in_pfdat` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xde60, 52 bytes) Inferred.
  At `bne` at 0xde70, it is taken when a0 < at(?) (signed); it falls through when a0 >= at(?) (signed) (`bne` at 0xde70).
  At `bne` at 0xde80, it is taken when a0 < v1(=[sym(.sdata)+216]:8+32768) (unsigned); it falls through when a0 >= v1(=[sym(.sdata)+216]:8+32768) (unsigned) (`bne` at 0xde80).
  `jr` at 0xde8c returns with v0 = one of 0x0, 0x1; its delay slot executes `nop` at 0xde90.

- `clean_icache` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xde94, 148 bytes) Inferred.
  Calls `__icache_inval` via direct with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?, a5=0xa800000000000000, a6=0x1 (`jal` at 0xdef8).
  Calls `__cache_wb_inval` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=0xa800010000000000, a6=0x1 (`jal` at 0xdf18).
  At `beq` at 0xdea0, it is taken when a1 == 0; it falls through when a1 != 0 (`beq` at 0xdea0).
  At `beq` at 0xdebc, it is taken when (a3 & 0x100) == 0; it falls through when (a3 & 0x100) != 0 (`beq` at 0xdebc).
  At `bne` at 0xded0, it is taken when a0 < at(=0xa800000000000000) (unsigned); it falls through when a0 >= at(=0xa800000000000000) (unsigned) (`bne` at 0xded0).
  At `bne` at 0xded8, it is taken when t2(?) != 0; it falls through when t2(?) == 0 (`bne` at 0xded8).
  At `bne` at 0xdee8, it is taken when a0 < v0(=0x10000000000) (unsigned); it falls through when a0 >= v0(=0x10000000000) (unsigned) (`bne` at 0xdee8).
  At `beq` at 0xdef0, it is taken when t3(?) == 0; it falls through when t3(?) != 0 (`beq` at 0xdef0).
  `jr` at 0xdf04 returns with v0 = ?; its delay slot executes `daddiu` at 0xdf08.

- `clean_dcache` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xdf28, 224 bytes) Inferred.
  Calls `__dcache_inval` via direct with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=-0xb, a7=0x1 (`jal` at 0xdfbc).
  Calls `__dcache_wb` via direct with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=-0xb, a7=0x1 (`jal` at 0xdfd4).
  Calls `__cache_wb_inval` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=a0 at entry (arg0), a6=-0xb, a7=0x1 (`jal` at 0xdfe8).
  Calls `__dcache_wb_inval` via direct with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=-0xb, a7=0x1 (`jal` at 0xdff8).
  At `beq` at 0xdf38, it is taken when a1 == 0; it falls through when a1 != 0 (`beq` at 0xdf38).
  At `beq` at 0xdf68, it is taken when (a3 & 0x100) == 0; it falls through when (a3 & 0x100) != 0 (`beq` at 0xdf68).
  At `bne` at 0xdf7c, it is taken when a0 < t9(=0xa800000000000000) (unsigned); it falls through when a0 >= t9(=0xa800000000000000) (unsigned) (`bne` at 0xdf7c).
  At `bne` at 0xdf84, it is taken when t2(?) != 0; it falls through when t2(?) == 0 (`bne` at 0xdf84).
  At `bne` at 0xdf98, it is taken when a0 < at(=0x10000000000) (unsigned); it falls through when a0 >= at(=0x10000000000) (unsigned) (`bne` at 0xdf98).
  At `beq` at 0xdfa0, it is taken when v0(?) == 0; it falls through when v0(?) != 0 (`beq` at 0xdfa0).
  At `beq` at 0xdfac, it is taken when t2(?) == t3(=0x3); it falls through when t2(?) != t3(=0x3) (`beq` at 0xdfac).
  At `beq` at 0xdfb4, it is taken when v1(?) == 0; it falls through when v1(?) != 0 (`beq` at 0xdfb4).
  At `beq` at 0xdfcc, it is taken when ra(?) == 0; it falls through when ra(?) != 0 (`beq` at 0xdfcc).
  `jr` at 0xdfe0 returns with v0 = ?; its delay slot executes `daddiu` at 0xdfe4.

- `sync_dcaches_excl` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xe008, 284 bytes) Inferred.
  Loads 8 bytes into at from abs 0xffffffffffffc020 (`ld` at 0xe014).
  Loads 1 byte into v0 from abs 0xffffffffffffc04f (`lbu` at 0xe038).
  Loads 8 bytes into a1 from abs 0xffffffffffffc020 (`ld` at 0xe080).
  Loads 1 byte into ra from ? (base unknown) (`lbu` at 0xe098).
  Loads 1 byte into v0 from ? (base unknown) (`lbu` at 0xe0ac).
  Loads 1 byte into v1 from ? (base unknown) (`lbu` at 0xe0c4).
  Loads 1 byte into a4 from abs 0xffffffffffffc04f (`lbu` at 0xe0d0).
  Calls `splhi` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xe044).
  Calls `__dcache_wb_inval` via direct with a0=?, a1=a1 at entry (arg1), a2=?, a3=? (`jal` at 0xe070).
  Calls `splx` via direct with a0=?, a1=[-0x3fe0]:8, a2=?, a3=?, a5=0x2 (`jal` at 0xe0dc).
  Calls `rt_unpin_thread` via direct with a0=?, a1=[-0x3fe0]:8, a2=?, a3=?, a4=[-0x3fb1]:1, a5=0x2 (`jal` at 0xe104).
  Calls `rt_pin_thread` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xe114).
  At `beq` at 0xe030, it is taken when at(=[-0x3fe0]:8) == 0; it falls through when at(=[-0x3fe0]:8) != 0 (`beq` at 0xe030).
  At `beq` at 0xe03c, it is taken when v0(=[-0x3fb1]:1) == v1(=0x2); it falls through when v0(=[-0x3fb1]:1) != v1(=0x2) (`beq` at 0xe03c).
  At `beq` at 0xe07c, it is taken when s1(=a1) == 0; it falls through when s1(=a1) != 0 (`beq` at 0xe07c).
  At `bne` at 0xe09c, it is taken when a0(=a1-1) < a2(?) (unsigned); it falls through when a0(=a1-1) >= a2(?) (unsigned) (`bne` at 0xe09c).
  At `bne` at 0xe0b0, it is taken when a0(=a1-1) < a2(?) (unsigned); it falls through when a0(=a1-1) >= a2(?) (unsigned) (`bne` at 0xe0b0).
  At `beq` at 0xe0c0, it is taken when a0(=a1-1) >= a2(?) (unsigned); it falls through when a0(=a1-1) < a2(?) (unsigned) (`beq` at 0xe0c0).
  At `beq` at 0xe0c8, it is taken when a1(=[-0x3fe0]:8) == 0; it falls through when a1(=[-0x3fe0]:8) != 0 (`beq` at 0xe0c8).
  At `beq` at 0xe0d4, it is taken when a4(=[-0x3fb1]:1) == a5(=0x2); it falls through when a4(=[-0x3fb1]:1) != a5(=0x2) (`beq` at 0xe0d4).
  `jr` at 0xe0fc returns with v0 = 0x1; its delay slot executes `daddiu` at 0xe100.

- `sync_dcaches` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xe124, 328 bytes) Inferred.
  Loads 8 bytes into t8 from abs 0xffffffffffffc020 (`ld` at 0xe168).
  Loads 1 byte into t9 from abs 0xffffffffffffc04f (`lbu` at 0xe174).
  Loads 8 bytes into a1 from abs 0xffffffffffffc020 (`ld` at 0xe1a0).
  Loads 1 byte into a7 from ? (base unknown) (`lbu` at 0xe1dc).
  Loads 1 byte into t0 from ? (base unknown) (`lbu` at 0xe1fc).
  Loads 1 byte into t2 from abs 0xffffffffffffc04f (`lbu` at 0xe208).
  Calls `sync_dcaches_excl` via direct with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xe158).
  Calls `splhi` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xe180).
  Calls `rt_unpin_thread` via direct with a0=?, a1=[-0x3fe0]:8, a2=?, a3=? (`jal` at 0xe214).
  Calls `splx` via direct with a0=?, a1=[-0x3fe0]:8, a2=?, a3=? (`jal` at 0xe224).
  Calls `rt_pin_thread` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xe250).
  At `bgez` at 0xe150, it is taken when at(=(a3 << 0x2f)) >= 0 (signed); it falls through when at(=(a3 << 0x2f)) < 0 (signed) (`bgez` at 0xe150).
  At `beq` at 0xe16c, it is taken when t8(=[-0x3fe0]:8) == 0; it falls through when t8(=[-0x3fe0]:8) != 0 (`beq` at 0xe16c).
  At `beq` at 0xe178, it is taken when t9(=[-0x3fb1]:1) == ra(=0x2); it falls through when t9(=[-0x3fb1]:1) != ra(=0x2) (`beq` at 0xe178).
  At `bne` at 0xe1a8, it is taken when s0(?) < at(=0x10000000000) (unsigned); it falls through when s0(?) >= at(=0x10000000000) (unsigned) (`bne` at 0xe1a8).
  At `beq` at 0xe1b0, it is taken when a2(?) == 0; it falls through when a2(?) != 0 (`beq` at 0xe1b0).
  At `beq` at 0xe1c4, it is taken when s1(=a1) == 0; it falls through when s1(=a1) != 0 (`beq` at 0xe1c4).
  At `bne` at 0xe1e4, it is taken when a0(=a1-1) < v0(?) (unsigned); it falls through when a0(=a1-1) >= v0(?) (unsigned) (`bne` at 0xe1e4).
  At `beq` at 0xe1f8, it is taken when a0(=a1-1) >= v0(?) (unsigned); it falls through when a0(=a1-1) < v0(?) (unsigned) (`beq` at 0xe1f8).
  At `beq` at 0xe200, it is taken when a1(=[-0x3fe0]:8) == 0; it falls through when a1(=[-0x3fe0]:8) != 0 (`beq` at 0xe200).
  At `bne` at 0xe20c, it is taken when t2(=[-0x3fb1]:1) != t3(=0x2); it falls through when t2(=[-0x3fb1]:1) == t3(=0x2) (`bne` at 0xe20c).
  `jr` at 0xe248 returns with v0 = ?; its delay slot executes `daddiu` at 0xe24c.

- `__heart_invalidate_war` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xe26c, 220 bytes) Inferred.
  Loads 1 byte into at from ? (base unknown) (`lbu` at 0xe2e8).
  Loads 1 byte into v1 from ? (base unknown) (`lbu` at 0xe2fc).
  Loads 1 byte into a1 from ? (base unknown) (`lbu` at 0xe314).
  Calls `__dcache_inval` via direct with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?, a4=a0 at entry (arg0) (`jal` at 0xe2b8).
  Calls `cache_operation` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x48001, a3=?, a4=a0 at entry (arg0) (`jal` at 0xe338).
  At `bne` at 0xe294, it is taken when a0 < at(=0xa800000000000000) (unsigned); it falls through when a0 >= at(=0xa800000000000000) (unsigned) (`bne` at 0xe294).
  At `beq` at 0xe29c, it is taken when a3(?) == 0; it falls through when a3(?) != 0 (`beq` at 0xe29c).
  At `beq` at 0xe2cc, it is taken when t8(=[sym(maxcpus)]) == t9(=0x1); it falls through when t8(=[sym(maxcpus)]) != t9(=0x1) (`beq` at 0xe2cc).
  At `beq` at 0xe2d4, it is taken when s1(=a1) == 0; it falls through when s1(=a1) != 0 (`beq` at 0xe2d4).
  At `bne` at 0xe2ec, it is taken when a0(=a1-1) < a3(?) (unsigned); it falls through when a0(=a1-1) >= a3(?) (unsigned) (`bne` at 0xe2ec).
  At `bne` at 0xe300, it is taken when a0(=a1-1) < a3(?) (unsigned); it falls through when a0(=a1-1) >= a3(?) (unsigned) (`bne` at 0xe300).
  At `beq` at 0xe310, it is taken when a0(=a1-1) >= a3(?) (unsigned); it falls through when a0(=a1-1) < a3(?) (unsigned) (`beq` at 0xe310).
  `jr` at 0xe324 returns with v0 = ?; its delay slot executes `daddiu` at 0xe328.

- `pmem_getfirstclick` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xe348, 8 bytes) Inferred.
  `jr` at 0xe348 returns with v0 = 0x8000; its delay slot executes `dli` at 0xe34c.

- `node_getfirstfree` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xe350, 8 bytes) Inferred.
  `jr` at 0xe350 returns with v0 = 0x8000; its delay slot executes `dli` at 0xe354.

- `node_getmaxclick` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xe358, 16 bytes) Inferred.
  `jr` at 0xe360 returns with v0 = ([sym(.sdata)+216]:8+32767 << 0x0); its delay slot executes `sll` at 0xe364.

- `setupbadmem` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xe368, 324 bytes) Inferred.
  Stores 2 bytes from a3 to [sym(pfdat)]:8 +0x400014, value 0xffff (`sh` at 0xe3c4).
  Stores 2 bytes from a6 to [sym(pfdat)]:8 +0x800014, value 0xffff (`sh` at 0xe3e4).
  Stores 2 bytes from s8 to [sym(pfdat)]:8 +0xffffd4, value 0xffff (`sh` at 0xe43c).
  Stores 2 bytes from s8 to [sym(pfdat)]:8 +0x1ffffd4, value 0xffff (`sh` at 0xe460).
  Calls `banksz [0xdc54]` via direct with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xe37c).
  Calls `cmn_err` via direct with a0=0x5, a1=sym(.rodata)+3120, a2=0xffffc000, a3=0xffff, a6=one of 0xffff, 0x400000, a7=0x800000 (`jal` at 0xe488).
  Calls `cmn_err` via direct with a0=0x5, a1=sym(.rodata)+3120, a2=0x1ffffc000, a3=? (`jal` at 0xe49c).
  At `bne` at 0xe3ac, it is taken when a2(?) != at(=0x40000000); it falls through when a2(?) == at(=0x40000000) (`bne` at 0xe3ac).
  At `bne` at 0xe3d4, it is taken when a2(?) != a5(=0x80000000); it falls through when a2(?) == a5(=0x80000000) (`bne` at 0xe3d4).
  At `beq` at 0xe3f8, it is taken when a2(=[sym(tigon2_war_enable)]) == 0; it falls through when a2(=[sym(tigon2_war_enable)]) != 0 (`beq` at 0xe3f8).
  At `bne` at 0xe404, it is taken when s1(?) < t2(=0x100000000) (unsigned); it falls through when s1(?) >= t2(=0x100000000) (unsigned) (`bne` at 0xe404).
  At `beq` at 0xe40c, it is taken when t3(?) == 0; it falls through when t3(?) != 0 (`beq` at 0xe40c).
  At `bne` at 0xe438, it is taken when s1(?) < t9(=0x200000000) (unsigned); it falls through when s1(?) >= t9(=0x200000000) (unsigned) (`bne` at 0xe438).
  At `beq` at 0xe448, it is taken when ra(=[sym(tigon2_war_enable)]) >= 0x2 (signed); it falls through when ra(=[sym(tigon2_war_enable)]) < 0x2 (signed) (`beq` at 0xe448).
  `jr` at 0xe478 returns with v0 = one of 0x0, 0x1, 0x2, 0x3; its delay slot executes `daddiu` at 0xe47c.

## Skipped routines

Skipped routines from the first 250 targets: `odsy_usb_comp_update_tiles` in `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` (already documented in docs/driver-functions.md); `usb_comp_update_tiles` in `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` (already documented in docs/driver-functions.md); `odsy_usb_comp_readwrite_register` in `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` (already documented in docs/driver-functions.md); `usb_comp_readwrite_register` in `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` (already documented in docs/driver-functions.md); `odsy_usb_comp_update_tiles` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` (already documented in docs/driver-functions.md); `usb_comp_update_tiles` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` (already documented in docs/driver-functions.md); `odsy_usb_comp_readwrite_register` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` (already documented in docs/driver-functions.md); `usb_comp_readwrite_register` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` (already documented in docs/driver-functions.md); `getrand` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `tlbgetrand` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `ackkgclock` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `apsfail` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `bump_leds` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `check_delay_iflush` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `disallowboot` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `dma_mapinit` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g12.md); `dummy_func` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `heart_dcache_inval` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `heart_dcache_wb_inval` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `heart_write_dcache_inval` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `heart_write_dcache_wb_inval` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `stopkgclock` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `vme_init` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `vme_ivec_init` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `wd93_init` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `dcache_wb` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `dcache_wbinval` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `dki_dcache_wb` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `dki_dcache_wbinval` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `dummyret0_func` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `heart_need_flush` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `is_vme_space` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `vme_adapter` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `resetcounter` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `resetcounter_val` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `silence_all_audio` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `silence_bell` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicAddInt` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicAddUint` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicAddIntHot2` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicAddUintHot2` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicClearInt` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicClearUint` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `bitlock_release_32bit` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicClearInt64` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicClearLong` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicClearUint64` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicClearUlong` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `bitlock_release` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicAddInt64` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicAddUint64` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicAddInt64Hot2` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicAddUint64Hot2` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `test_and_set_int64` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `test_and_set_long` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `test_and_set_ptr` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `swap_int64` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `swap_long` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `swap_ptr` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `compare_and_swap_int64` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `compare_and_swap_kt` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `compare_and_swap_long` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `compare_and_swap_ptr` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `cerror` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `blkclr` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `bzero` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `bzero_end` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `bzerror` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `bcmp` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `memcmp` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `fubyte` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `fuibyte` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `subyte` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `suibyte` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `fuiword` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `fuword` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `suiword` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `suword` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `uerror` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `memcpy` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `bcopy` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `ovbcopy` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `bcopy_pref1` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `bcopy_end` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `swbcopy` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `timestamp_init` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `read_branch_diag` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `write_branch_diag` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `branch_prediction_off` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `branch_prediction_on` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `branch_prediction_taken` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `branch_prediction_fwd_not_taken` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `exception_endfast` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `nano_to_ust` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `ust_init` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `get_fpc_csr` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `set_fpc_csr` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `get_cpu_irr` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `reviderror` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `get_cpu_cnf` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `clear_sline` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `dCacheSize` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `iCacheSize` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `sCacheSize` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `getecc` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `setecc` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `_munge_decc` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `sw_cachesynch_patch_insts` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `cache_sync_bp_start` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `cache_sync` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `sw_cachesynch_op1` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `sw_cachesynch_op2` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `VEC_trap` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `soft_trap` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `uli_getasids` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `uli_setasids` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `uli_eret` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `spl0` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `spl1` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `spl3` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `spl5` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `spl6` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `splgio0` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `splgio1` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `splgio2` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `splhi` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `splhi_relnet` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `splimp` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `splnet` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g15.md); `memmove` in `usr/cpu/sysgen/IP30boot/kernel.o` (address-based call check treats 0x78b8 as memcpy and requires _pagecopy at 0x78e4, outside the 12-byte range); `cache_sync_bp_end` in `usr/cpu/sysgen/IP30boot/kernel.o` (address-based call check resolves 0xb6e0 as cache_sync and requires longway at 0xb778, outside the 112-byte range); `assbuffer` in `usr/cpu/sysgen/IP30boot/kernel.o` (hostfacts reports no accesses, calls, conditional branches or returns for this inventory range); `kernelbp` in `usr/cpu/sysgen/IP30boot/kernel.o` (hostfacts reports no accesses, calls, conditional branches or returns for this inventory range); `sstepbp` in `usr/cpu/sysgen/IP30boot/kernel.o` (hostfacts reports no accesses, calls, conditional branches or returns for this inventory range); `_endexceptnorm_prolog` in `usr/cpu/sysgen/IP30boot/kernel.o` (hostfacts reports no accesses, calls, conditional branches or returns for this inventory range); `_exceptnorm_prolog` in `usr/cpu/sysgen/IP30boot/kernel.o` (hostfacts reports no accesses, calls, conditional branches or returns for this inventory range); `_j_endexceptnorm_nosymmon` in `usr/cpu/sysgen/IP30boot/kernel.o` (hostfacts reports no accesses, calls, conditional branches or returns for this inventory range); `utlbmiss_prolog_up` in `usr/cpu/sysgen/IP30boot/kernel.o` (hostfacts reports no accesses, calls, conditional branches or returns for this inventory range); `eutlbmiss_prolog_up` in `usr/cpu/sysgen/IP30boot/kernel.o` (hostfacts reports no accesses, calls, conditional branches or returns for this inventory range); `utlbmiss_prolog_mp` in `usr/cpu/sysgen/IP30boot/kernel.o` (hostfacts reports no accesses, calls, conditional branches or returns for this inventory range); `eutlbmiss_prolog_mp` in `usr/cpu/sysgen/IP30boot/kernel.o` (hostfacts reports no accesses, calls, conditional branches or returns for this inventory range); `elpg_utlbmiss` in `usr/cpu/sysgen/IP30boot/kernel.o` (hostfacts reports no accesses, calls, conditional branches or returns for this inventory range); `eutlbmiss2` in `usr/cpu/sysgen/IP30boot/kernel.o` (hostfacts reports no accesses, calls, conditional branches or returns for this inventory range); `utlbmiss_sharedseg1a` in `usr/cpu/sysgen/IP30boot/kernel.o` (hostfacts reports no accesses, calls, conditional branches or returns for this inventory range); `utlbmiss_sharedseg2a` in `usr/cpu/sysgen/IP30boot/kernel.o` (hostfacts reports no accesses, calls, conditional branches or returns for this inventory range); `eutlbmissj` in `usr/cpu/sysgen/IP30boot/kernel.o` (hostfacts reports no accesses, calls, conditional branches or returns for this inventory range).
