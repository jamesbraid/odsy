# Readings: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddrn.o)`

One entry per routine, filed here from the reading batches by binary.

- `gf_OdsyCreateDDRN` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddrn.o)` at 0x54
  **Inferred.** Allocates zeroed memory with `kmem_zalloc` at 0x18c (size 0x4000) and and calls `OdsyInitCSet` (0x138), `OdsyAlloc32kSlot` (0x168), `odsyMapPages` (0x1d8, with a2 = the allocation and a3 = 0x4000) and `odsyResetHwShadow` (0x284). It takes `psema` on a0+6032 at 0x9c and calls `vsema` at 0x114 and 0x314 whose first argument the facts do not resolve (the global ODSYddrn appears as an argument to those calls). It has six `cmn_err` calls, and makes one `kmem_free` call (0x3a0, on the path where `odsyMapPages` returns nonzero). The return at 0x2cc is 0 or 1. The name indicates creation of a DDRN node; the facts give the setup calls but not the node's purpose.
  Reviewed: 2026-11-12

## `gf_OdsyDestroyDDRN` at `0x3cc`
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddrn.o)`.
  Range: 0x3cc-0x600 (564 bytes).
  It occupies 564 bytes.
  The `ld` at 0x3d4 loads 8 bytes from a2 (arg2 at entry) +0x70.
  The `ld` at 0x3dc loads 8 bytes from a1 (arg1 at entry) +0x20.
  The `ld` at 0x3e4 loads 8 bytes from [a1+32]:8 +0x8.
  The `lw` at 0x404 loads 4 bytes from a0 (arg0 at entry) +0x2d8.
  The `lw` at 0x418 loads 4 bytes from a0 (arg0 at entry) +0x28e8.
  2 such `ld` accesses load 8 bytes from [a2+112]:8 +0x70, including `ld` at 0x428, `ld` at 0x4b4.
  The `lw` at 0x438 loads 4 bytes from ?.
  The `sh` at 0x444 stores 2 bytes to a0 (arg0 at entry) +0x2c4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2dc, including `lw` at 0x448, `lw` at 0x5b4.
  The `lw` at 0x44c loads 4 bytes from [a2+112]:8 +0x0.
  The `sw` at 0x458 stores 4 bytes to a0 (arg0 at entry) +0x2dc.
  The `lw` at 0x45c loads 4 bytes from a2 (arg2 at entry) +0x1c.
  The `lw` at 0x4a0 loads 4 bytes from [a2+112]:8 +0x130.
  The `sd` at 0x4ac stores 8 bytes to [a2+112]:8 +0x90.
  The `sd` at 0x4b0 stores 8 bytes to a2 (arg2 at entry) +0x70.
  The `lw` at 0x4cc loads 4 bytes from [a2+112]:8 +0xa4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1220, including `lw` at 0x4e0, `lw` at 0x520.
  The `ld` at 0x4ec loads 8 bytes from a0 (arg0 at entry) +0x2d0.
  The `sd` at 0x500 stores 8 bytes to a0 (arg0 at entry) +0x2d0.
  The `ld` at 0x508 loads 8 bytes from a0 (arg0 at entry) +0x2e0.
  The `sw` at 0x50c stores 4 bytes to a0 (arg0 at entry) +0x28a4.
  The `sw` at 0x510 stores 4 bytes to [a0+736]:8 +0x1074.
  The `sw` at 0x518 stores 4 bytes to [a2+112]:8 +0x0.
  The `sw` at 0x52c stores 4 bytes to a0 (arg0 at entry) +0x1220.
  The `ld` at 0x53c loads 8 bytes from a1 (arg1 at entry) +0x0.
  The `ld` at 0x540 loads 8 bytes from [a1]:8 +0x8.
  The `ld` at 0x54c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0x584 stores 4 bytes to [a2+112]:8 +0x130.
  The `ld` at 0x58c loads 8 bytes from a1 (arg1 at entry) +0x18.
  The `ld` at 0x590 loads 8 bytes from [a1+24]:8 +0x78.
  The `jal` at 0x46c calls gf_OdsyUnSchedSwapBuf with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=[a2+28], a3=?, a5=[[a2+112]:8].
  The `jal` at 0x478 calls gf_OdsyUnSchedRetraceEvent with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=?, a3=?.
  The `jal` at 0x4c4 calls kmem_free with a0=[[a2+112]:8+112]:8, a1=0x4000, a2=?, a3=?.
  The `jal` at 0x4d0 calls OdsyFree32kSlot with a0=a0+6112, a1=[[a2+112]:8+164], a2=?, a3=?.
  The `jal` at 0x4f8 calls gfx_flow_dealloc with a0=[a0+720]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x560 calls odsyDMAFinish with a0=a0 at entry (arg0), a1=[a2+112]:8, a2=?, a3=?, a5=[[a2+112]:8+304].
  The `jal` at 0x56c calls odsyMMdetach with a0=a1 at entry (arg1), a1=[a2+112]:8, a2=?, a3=?.
  The `jal` at 0x574 calls odsyUnpinAndUnmapGctxRegions with a0=[a2+112]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x5a0 calls (unknown callee) with a0=[a1+32]:8, a1=a2 at entry (arg2), a2=0x0, a3=[[a1+32]:8+8]:8, a5=[[a1+24]:8+120]:8.
  The `jal` at 0x5cc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x5e8 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0x3fc targets 0x448, is taken when a3(=[[a1+32]:8+8]:8) != a2, and falls through when a3(=[[a1+32]:8+8]:8) == a2.
  The `beq` branch at 0x408 targets 0x53c, is taken when at(=[a0+728]) == 0, and falls through when at(=[a0+728]) != 0.
  The `beq` branch at 0x410 targets 0x58c, is taken when a0(=one of 0x0, 0x1) == 0, and falls through when a0(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x43c targets 0x58c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x450 targets 0x45c, is taken when a5(=[[a2+112]:8]) != at(=[a0+732]), and falls through when a5(=[[a2+112]:8]) == at(=[a0+732]).
  The `bltz` branch at 0x460 targets 0x474, is taken when a2(=[a2+28]) < 0 (signed), and falls through when a2(=[a2+28]) >= 0 (signed).
  The `bne` branch at 0x490 targets 0x5b8, is taken when s0(=[a2+112]:8) < v1(=sym(ODSYddrn)) (unsigned), and falls through when s0(=[a2+112]:8) >= v1(=sym(ODSYddrn)) (unsigned).
  The `bne` branch at 0x498 targets 0x5b8, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x4a4 targets 0x560, is taken when a5(=[[a2+112]:8+304]) == 0, and falls through when a5(=[[a2+112]:8+304]) != 0.
  The `beq` branch at 0x4b8 targets 0x4cc, is taken when a0(=[[a2+112]:8+112]:8) == 0, and falls through when a0(=[[a2+112]:8+112]:8) != 0.
  The `bne` branch at 0x4e4 targets 0x518, is taken when at(=[a0+4640]) != v1(=0x1), and falls through when at(=[a0+4640]) == v1(=0x1).
  The `beq` branch at 0x4f0 targets 0x508, is taken when a0(=[a0+720]:8) == 0, and falls through when a0(=[a0+720]:8) != 0.
  The `beq` branch at 0x544 targets 0x410, is taken when v1(=[[a1]:8+8]:8) == a4(=a1), and falls through when v1(=[[a1]:8+8]:8) != a4(=a1).
  The `beq` branch at 0x550 targets 0x410, is taken when a4(=[a0]:8) == 0, and falls through when a4(=[a0]:8) != 0.
  The `beq` branch at 0x558 targets 0x410 and is always taken.
  The `beq` branch at 0x580 targets 0x4ac and is always taken.
  The `bne` branch at 0x5a8 targets 0x5e0, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0.
  The `beq` branch at 0x5b0 targets 0x44c and is always taken.
  The `beq` branch at 0x5d8 targets 0x534 and is always taken.
  The `beq` branch at 0x5f8 targets 0x448 and is always taken.
  The return at 0x534 has v0 = one of ?, 0x1.
  The instructions from 0x588 to 0x588 are not reached by any path from the entry, and their branches are not listed.
