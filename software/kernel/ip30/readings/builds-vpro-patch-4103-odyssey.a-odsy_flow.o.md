# Readings: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)`

One entry per routine, filed here from the reading batches by binary.

- `odsy_poll_dfifo_level` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)`.
  Range: 0x0-0x9c (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0x24 loads 4 bytes from a0 (arg0 at entry) +0x106c.
  The `jal` at 0x38 calls us_delay with a0=0x5, a1=?, a2=?, a3=?.
  The `jal` at 0x88 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x30 targets 0x54, is taken when s4(=a1) >= s5(?) (unsigned), and falls through when s4(=a1) < s5(?) (unsigned).
  The `beq` branch at 0x40 targets 0x54, is taken when s5(?) == 0, and falls through when s5(?) != 0.
  The `bne` branch at 0x48 targets 0x24, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0x50 targets 0x74, is taken when s5(?) != 0, and falls through when s5(?) == 0.
  The `beq` branch at 0x94 targets 0x6c and is always taken.
  The return at 0x6c has v0 = one of 0x0, 0x1.

- `odsy_flow_am_i_attached` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)` at 0x9c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)`.
  Range: 0x9c-0xdc (64 bytes).
  It occupies 64 bytes.
  The `jal` at 0xa8 calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xb4 calls gfx_flow_am_i_attached with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xc0 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The return at 0xd4 has v0 = ret(gfx_flow_am_i_attached).

- `odsyHiwaterInterrupt` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)` at 0xdc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)`.
  Range: 0xdc-0x2ac (464 bytes).
  It occupies 464 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2e0, including `ld` at 0xdc, `ld` at 0x1f8.
  The `lw` at 0x114 loads 4 bytes from a0 (arg0 at entry) +0x68.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2d0, including `ld` at 0x144, `ld` at 0x164, `ld` at 0x170.
  The `lw` at 0x148 loads 4 bytes from a0 (arg0 at entry) +0x2d8.
  2 such `lh` accesses load 2 bytes from abs 0xffffffffffffc3a0, including `lh` at 0x194, `lh` at 0x240.
  The `lw` at 0x1a4 loads 4 bytes from ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0x18.
  The `sw` at 0x1b0 stores 4 bytes to ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0x18.
  The `sw` at 0x1b8 stores 4 bytes to a0 (arg0 at entry) +0x68.
  The `ld` at 0x1bc loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0x1c0 loads 8 bytes from [a0+72]:8 +0x20.
  The `lw` at 0x1c8 loads 4 bytes from [[a0+72]:8+32]:8 +0x50.
  The `sw` at 0x1d8 stores 4 bytes to [[a0+72]:8+32]:8 +0x50.
  The `sw` at 0x1ec stores 4 bytes to a0 (arg0 at entry) +0x78.
  The `sw` at 0x1f4 stores 4 bytes to [a0+736]:8 +0x101c.
  The `lw` at 0x200 loads 4 bytes from [a0+736]:8 +0x1064.
  The `sw` at 0x218 stores 4 bytes to [a0+736]:8 +0x1014.
  The `lw` at 0x21c loads 4 bytes from a0 (arg0 at entry) +0x2890.
  The `sw` at 0x228 stores 4 bytes to a0 (arg0 at entry) +0x2890.
  The `sw` at 0x234 stores 4 bytes to [a0+736]:8 +0x1034.
  The `lw` at 0x250 loads 4 bytes from ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0x1c.
  The `sw` at 0x25c stores 4 bytes to ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0x1c.
  The `jal` at 0x100 calls mutex_spinlock with a0=a0+22260, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x120 calls mutex_spinunlock with a0=a0+22260, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x140 calls gfx_flow_pipe_head with a0=[a0+720]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x154 calls gfx_waitf_on with a0=?, a1=?, a2=[a0+728], a3=?.
  The `jal` at 0x160 calls gfx_flow_credit_count_get with a0=[a0+720]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x16c calls gfx_flow_credit_bias_get with a0=[a0+720]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x180 calls us_delay with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x1ac calls gfx_waitf_off with a0=?, a1=?, a2=?, a3=?, a4=[([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5))+24]+1, a5=([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)), a6=([-0x3c60]:2 << 0x5).
  The `jal` at 0x1d4 calls force_resched with a0=?, a1=?, a2=?, a3=?, a7=[[[a0+72]:8+32]:8+80]+1.
  The `jal` at 0x1e8 calls odsyFifoTimer with a0=a0 at entry (arg0), a1=0x1, a2=?, a3=?.
  The `jal` at 0x230 calls mutex_spinunlock with a0=a0+22260, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x258 calls gfx_waitf_off with a0=[([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5))+28]+1, a1=([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)), a2=([-0x3c60]:2 << 0x5), a3=?.
  The `jal` at 0x26c calls mutex_spinunlock with a0=a0+22260, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x284 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=[a0+728], a3=?.
  The `jal` at 0x28c calls heart_flow_control_disable with a0=ret(gfx_flow_pipe_head), a1=?, a2=?, a3=?.
  The `jal` at 0x29c calls mutex_spinunlock with a0=a0+22260, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `beq` branch at 0x118 targets 0x140, is taken when v0(=[a0+104]) == 0, and falls through when v0(=[a0+104]) != 0.
  The `bne` branch at 0x14c targets 0x27c, is taken when a2(=[a0+728]) != 0, and falls through when a2(=[a0+728]) == 0.
  The `beq` branch at 0x178 targets 0x240, is taken when s1(=ret(gfx_flow_credit_count_get)) >= v0(=ret(gfx_flow_credit_bias_get)) (unsigned), and falls through when s1(=ret(gfx_flow_credit_count_get)) < v0(=ret(gfx_flow_credit_bias_get)) (unsigned).
  The `bgtz` branch at 0x18c targets 0x160, is taken when s2(?) > 0 (signed), and falls through when s2(?) <= 0 (signed).
  The `beq` branch at 0x210 targets 0x21c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x238 targets 0x12c and is always taken.
  The `beq` branch at 0x274 targets 0x130 and is always taken.
  The `beq` branch at 0x2a4 targets 0x130 and is always taken.
  The return at 0x138 has v0 = ret(mutex_spinunlock).

- `odsyLowaterInterrupt` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)` at 0x2ac (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)`.
  Range: 0x2ac-0x32c (128 bytes).
  It occupies 128 bytes.
  The `ld` at 0x2c0 loads 8 bytes from a0 (arg0 at entry) +0x2e0.
  The `lw` at 0x2cc loads 4 bytes from a0 (arg0 at entry) +0x2890.
  The `sw` at 0x2d8 stores 4 bytes to a0 (arg0 at entry) +0x2890.
  The `sw` at 0x2e0 stores 4 bytes to [a0+736]:8 +0x103c.
  The `ld` at 0x2e4 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0x2e8 loads 8 bytes from [a0+72]:8 +0x20.
  The `lw` at 0x2ec loads 4 bytes from [[a0+72]:8+32]:8 +0x50.
  The `sw` at 0x300 stores 4 bytes to [[a0+72]:8+32]:8 +0x50.
  The `sw` at 0x304 stores 4 bytes to a0 (arg0 at entry) +0x68.
  The `jal` at 0x2c4 calls odsyFifoTimer with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2fc calls mutex_spinlock with a0=a0+22260, a1=-0x201, a2=?, a3=?.
  The `jal` at 0x310 calls mutex_spinunlock with a0=a0+22260, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x318 calls force_resched with a0=?, a1=?, a2=?, a3=?.
  The return at 0x324 has v0 = ret(force_resched).

- `odsyFifoTimer` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)` at 0x32c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)`.
  Range: 0x32c-0x390 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0x338 loads 4 bytes from a0 (arg0 at entry) +0x56f8.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x56f8, including `sw` at 0x36c, `sw` at 0x38c.
  The `jal` at 0x358 calls timeout with a0=sym(odsyFifoTimeout), a1=a0 at entry (arg0), a2=0x5dc, a3=a0 at entry (arg0), a4=[a0+22264].
  The `jal` at 0x378 calls untimeout with a0=[a0+22264], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a0 at entry (arg0), a4=[a0+22264].
  The `beq` branch at 0x334 targets 0x370, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x33c targets 0x34c, is taken when a4(=[a0+22264]) == 0, and falls through when a4(=[a0+22264]) != 0.
  The `beq` branch at 0x368 targets 0x344 and is always taken.
  The `beq` branch at 0x388 targets 0x344 and is always taken.
  The return at 0x344 has v0 = one of ?, ret(timeout), a0.

- `odsyFifoTimeout` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)` at 0x390 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)`.
  Range: 0x390-0x3e8 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0x3a4 stores 4 bytes to a0 (arg0 at entry) +0x68.
  The `ld` at 0x3b0 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0x3b4 loads 8 bytes from [a0+72]:8 +0x20.
  The `lw` at 0x3bc loads 4 bytes from [[a0+72]:8+32]:8 +0x50.
  The `sw` at 0x3d0 stores 4 bytes to [[a0+72]:8+32]:8 +0x50.
  The `sw` at 0x3d8 stores 4 bytes to a0 (arg0 at entry) +0x56f8.
  The `jal` at 0x39c calls odsy_teardown with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3a8 calls odsyDisableInterrupts with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x3cc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The return at 0x3e0 has v0 = ret(cmn_err).
