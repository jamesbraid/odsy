# Readings: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)`

One entry per routine, filed here from the reading batches by binary.

- `gfx_disp` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0xc28
  **Inferred.** Same code as the `gfx.o` copy in this batch: calls `gthread_find` at 0xc30, walks the record chain reached through it, tests bit 0x4 at +8 and calls `valusema` at 0xd44 before returning 0 or 1. The rendered facts do not say what the records hold.
  Reviewed: 2026-11-12

- `gfx_fault` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0xd5c
  **Inferred.** Same code as the `gfx.o` copy: calls `curthreadhandle` at 0xd6c and `gthread_find` at 0xd78, tests bits 0x8 and 0x1 of +4 of a1, calls `RRM_ValidFault` at 0xdc4 and uses `psema` and `vsema` on the semaphore at a1+80. The callees' contracts are not in the facts.
  Reviewed: 2026-11-12

- `gfx_shcheck` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0xfe0
  **Inferred.** Same code as the `gfx.o` copy: `gthread_find` at 0xfec, list lock through `GfxListWriterLock` at 0x10dc, teardown through `gthread_detach_list`, `gthread_detach_group`, `cleargfxsched_thread` and `gthread_destroy` at 0x10a0 to 0x10b8. The share-check name is not confirmed by the facts.
  Reviewed: 2026-11-12

- `gfx_shdup` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x1234
  **Inferred.** Same code as the `gfx.o` copy: `gthread_find` at 0x1240, then `gthread_create` at 0x1284, `gthread_attach_list` at 0x1298 and `setgfxsched_thread` at 0x12a0 on the shared-record path. The duplicate-for-child reading is inferred from the calls.
  Reviewed: 2026-11-12

- `gfxopen` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x1fb8
  **Inferred.** Same code as the `gfx.o` copy: `psema` on `GfxBoardInitSema` at 0x1fe0, a 0x100-byte `kern_malloc` block at 0x2158 and a second one at 0x2148 only when `gthread_find_gfxp` returned zero, spinlock and semaphore setup at 0x21a0 and 0x21bc, thread registration at 0x2224 and 0x2234, and `cmn_err_tag` error reports with ids 0x84e and 0x84f. The meaning of the return values is not settled.
  Reviewed: 2026-11-12

- `gfxclose` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x24d0
  **Inferred.** Same code as the `gfx.o` copy: `psema` at 0x2518, `GfxDetach` at 0x2604, thread detach and destroy at 0x26e0 to 0x26f0, then `gfxcleanup` at 0x2720, and `psignal` with 0x6 (on `curproc`, 0x275c) or 0x9 (0x2a4c). The facts do not show what makes a process the owner. The purpose of each path is inferred from the callees.
  Reviewed: 2026-11-12

- `gfxioctl` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x2b94 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)`.
  Range: 0x2b94-0x3368 (2004 bytes).
  It occupies 2004 bytes.
  The `lh` at 0x2bd0 loads 2 bytes from abs 0xffffffffffffc428.
  The `lw` at 0x2be0 loads 4 bytes from ([sym(gfxinfo)]:8 + ([-0x3bd8]:2 << 0x5)) +0xc.
  The `sw` at 0x2bf4 stores 4 bytes to ([sym(gfxinfo)]:8 + ([-0x3bd8]:2 << 0x5)) +0xc.
  The `ld` at 0x2c20 loads 8 bytes from table(sym(GfxDev)) +0x0.
  6 such `lw` accesses load 4 bytes from entry(sym(GfxDev)) +0x4, including `lw` at 0x2c34, `lw` at 0x2d1c, `lw` at 0x2dd8.
  5 such `ld` accesses load 8 bytes from ret(gthread_find) +0x18, including `ld` at 0x2c40, `ld` at 0x2d10, `ld` at 0x2df4.
  2 such `ld` accesses load 8 bytes from ret(gthread_find) +0x0, including `ld` at 0x2c4c, `ld` at 0x2eac.
  The `ld` at 0x2c50 loads 8 bytes from entry(sym(GfxDev)) +0x10.
  7 such `ld` accesses load 8 bytes from entry(sym(GfxDev)) +0x20, including `ld` at 0x2cb0, `ld` at 0x2dc0, `ld` at 0x3030.
  3 such `ld` accesses load 8 bytes from entry(sym(GfxDev)) +0x8, including `ld` at 0x2ce8, `ld` at 0x3338, `ld` at 0x3350.
  3 such `ld` accesses load 8 bytes from [entry(sym(GfxDev))+8]:8 +0x10, including `ld` at 0x2cec, `ld` at 0x333c, `ld` at 0x3354.
  2 such `sw` accesses store 4 bytes to a5 (arg5 at entry) +0x0, including `sw` at 0x2d0c, `sw` at 0x3178.
  The `ld` at 0x2d5c loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0xc8.
  The `ld` at 0x2d74 loads 8 bytes from entry(sym(GfxDev)) +0x48.
  17 such `ld` accesses load 8 bytes from entry(sym(GfxDev)) +0x28, including `ld` at 0x2d8c, `ld` at 0x2d98, `ld` at 0x2db0.
  3 such `ld` accesses load 8 bytes from entry(sym(GfxDev)) +0x30, including `ld` at 0x2d94, `ld` at 0x2dac, `ld` at 0x2de0.
  4 such `ld` accesses load 8 bytes from [entry(sym(GfxDev))+40]:8 +0x48, including `ld` at 0x2d9c, `ld` at 0x2db4, `ld` at 0x3008.
  The `ld` at 0x2dc4 loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x60.
  2 such `sw` accesses store 4 bytes to entry(sym(GfxDev)) +0x4, including `sw` at 0x2dec, `sw` at 0x2fc8.
  4 such `sd` accesses store 8 bytes to [entry(sym(GfxDev))+40]:8 +0x48, including `sd` at 0x2e58, `sd` at 0x304c, `sd` at 0x31d4.
  6 such `lw` accesses load 4 bytes from [entry(sym(GfxDev))+40]:8 +0x68, including `lw` at 0x2e60, `lw` at 0x2e78, `lw` at 0x31dc.
  The `ld` at 0x3014 loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x18.
  The `sw` at 0x302c stores 4 bytes to [entry(sym(GfxDev))+40]:8 +0x80.
  The `ld` at 0x3034 loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0xc0.
  The `ld` at 0x3094 loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x28.
  The `ld` at 0x30e0 loads 8 bytes from [entry(sym(GfxDev))+8]:8 +0x0.
  6 such `ld` accesses load 8 bytes from table(sym(GfxBoards)) +0x0, including `ld` at 0x313c, `ld` at 0x315c, `ld` at 0x3188.
  The `ld` at 0x3168 loads 8 bytes from entry(sym(GfxBoards)) +0x8.
  5 such `ld` accesses load 8 bytes from entry(sym(GfxBoards)) +0x38, including `ld` at 0x3248, `ld` at 0x3278, `ld` at 0x3290.
  The `ld` at 0x324c loads 8 bytes from [entry(sym(GfxBoards))+56]:8 +0x0.
  3 such `ld` accesses load 8 bytes from entry(sym(GfxBoards)) +0x40, including `ld` at 0x3260, `ld` at 0x3270, `ld` at 0x32f4.
  4 such `sd` accesses store 8 bytes to entry(sym(GfxDev)) +0x8, including `sd` at 0x326c, `sd` at 0x32b8, `sd` at 0x32e8.
  4 such `sd` accesses store 8 bytes to entry(sym(GfxDev)) +0x28, including `sd` at 0x3274, `sd` at 0x32b0, `sd` at 0x32f8.
  4 such `sd` accesses store 8 bytes to entry(sym(GfxDev)) +0x20, including `sd` at 0x327c, `sd` at 0x32ac, `sd` at 0x32f0.
  2 such `ld` accesses load 8 bytes from [entry(sym(GfxBoards))+56]:8 +0x8, including `ld` at 0x3294, `ld` at 0x3310.
  The `ld` at 0x32c0 loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x20.
  2 such `sd` accesses store 8 bytes to [entry(sym(GfxDev))+8]:8 +0x10, including `sd` at 0x334c, `sd` at 0x3364.
  The `jal` at 0x2bbc calls curthreadhandle with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2bc8 calls gthread_find with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x2c70 calls psema with a0=entry(sym(GfxDev))+80, a1=0x19, a2=0x1ffff, a3=[([sym(gfxinfo)]:8 + ([-0x3bd8]:2 << 0x5))+12]+1, a4=([sym(gfxinfo)]:8 + ([-0x3bd8]:2 << 0x5)), a5=([-0x3bd8]:2 << 0x5).
  The `jalr` at 0x2d70 calls (unknown callee) with a0=entry(sym(GfxDev)), a1=[entry(sym(GfxDev))+72]:8, a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=a5 at entry (arg5).
  The `jal` at 0x2d90 calls ddv_unlock with a0=[entry(sym(GfxDev))+48]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2da8 calls ddv_lock with a0=[entry(sym(GfxDev))+48]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x2dd0 calls (unknown callee) with a0=entry(sym(GfxDev)), a1=0x0, a2=-0x1, a3=?.
  The `jal` at 0x2de8 calls ddv_unlock with a0=[entry(sym(GfxDev))+48]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2e00 calls RRM_Dispatch with a0=entry(sym(GfxDev)), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a5 at entry (arg5).
  The `jal` at 0x2e3c calls cmn_err_tag with a0=0x850, a1=0x4, a2=sym(.rodata), a3=a1 at entry (arg1), a4=0x6f, a6=0x6c, a7=0x68.
  The `jal` at 0x2e4c calls psema with a0=[entry(sym(GfxDev))+40]:8+56, a1=0x219, a2=?, a3=?.
  The `jal` at 0x2e6c calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x2ea8 calls threadgroup_refcnt with a0=[ret(gthread_find)]:8, a1=0x67, a2=0x70, a3=0x71, a7=[ret(gthread_find)+24]:8.
  The `jal` at 0x2ec4 calls curproc_abi with a0=0x69, a1=?, a2=?, a3=?.
  The `jal` at 0x2ee4 calls copyin_xlate with a0=a2 at entry (arg2), a1=sp-112, a2=0x18, a3=sym(irix5_to_gfx_getboardinfo_args), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jal` at 0x2f04 calls copyin with a0=a2 at entry (arg2), a1=sp-72, a2=0x4, a3=?.
  The `jal` at 0x2f1c calls vsema with a0=entry(sym(GfxDev))+80, a1=?, a2=?, a3=?.
  The `jal` at 0x2f2c calls GfxDetach with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?.
  The `jal` at 0x2f3c calls curproc_abi with a0=0x69, a1=0x67, a2=0x70, a3=?.
  The `jal` at 0x2f5c calls copyin_xlate with a0=a2 at entry (arg2), a1=sp-112, a2=0x10, a3=sym(irix5_to_gfx_attach_board_args), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jal` at 0x2f74 calls curproc_abi with a0=0x69, a1=0x67, a2=0x70, a3=0x71.
  The `jal` at 0x2f94 calls copyin_xlate with a0=a2 at entry (arg2), a1=sp-112, a2=0x10, a3=sym(irix5_to_gfx_attach_board_args), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jal` at 0x2fac calls drv_priv with a0=a4 at entry (arg4), a1=0x67, a2=0x70, a3=0x71.
  The `jal` at 0x2fcc calls curproc_abi with a0=entry(sym(GfxDev)), a1=0x67, a2=0x70, a3=0x71, a6=0x6c, a7=0x68.
  The `jal` at 0x2fec calls copyin_xlate with a0=a2 at entry (arg2), a1=sp-112, a2=0x28, a3=sym(irix5_to_gfx_download_args), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jalr` at 0x3018 calls (unknown callee) with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?.
  The `jal` at 0x3028 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x3040 calls (unknown callee) with a0=entry(sym(GfxDev)), a1=[[entry(sym(GfxDev))+32]:8+192]:8, a2=?, a3=?.
  The `jal` at 0x3054 calls vsema with a0=[entry(sym(GfxDev))+40]:8+56, a1=[entry(sym(GfxDev))+40]:8, a2=?, a3=?.
  The `jal` at 0x305c calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x3074 calls rrmUnMapGfx with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?.
  The `jalr` at 0x3098 calls (unknown callee) with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?, a4=[[entry(sym(GfxDev))+32]:8+40]:8.
  The `jal` at 0x30ec calls copyin with a0=a2 at entry (arg2), a1=[[entry(sym(GfxDev))+8]:8]:8+16, a2=0x10, a3=[entry(sym(GfxDev))+8]:8, a4=0x6f, a6=0x6c, a7=0x68.
  The `jal` at 0x31c8 calls psema with a0=[entry(sym(GfxDev))+40]:8+56, a1=0x219, a2=[entry(sym(GfxDev))+40]:8, a3=[entry(sym(GfxDev))+8]:8, a6=0x6c, a7=0x68.
  The `jal` at 0x31e8 calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x3208 calls psema with a0=[entry(sym(GfxDev))+40]:8+56, a1=0x219, a2=[entry(sym(GfxDev))+40]:8, a3=[[entry(sym(GfxDev))+40]:8+72]:8, a6=0x6c, a7=0x68.
  The `jal` at 0x3228 calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jalr` at 0x325c calls (unknown callee) with a0=[entry(sym(GfxBoards))+64]:8, a1=?, a2=?, a3=a5 at entry (arg5), a4=entry(sym(GfxBoards)).
  The `jalr` at 0x329c calls (unknown callee) with a0=entry(sym(GfxDev)), a1=?, a2=entry(sym(GfxBoards)), a3=sym(GfxBoards).
  The `jalr` at 0x32c8 calls (unknown callee) with a0=entry(sym(GfxDev)), a1=sp-112, a2=?, a3=?.
  The `jalr` at 0x3318 calls (unknown callee) with a0=entry(sym(GfxDev)), a1=?, a2=entry(sym(GfxBoards)), a3=sym(GfxBoards), a4=[entry(sym(GfxDev))+32]:8.
  The `beq` branch at 0x2c0c targets 0x2d00, is taken when a1(?) >= at(=[sym(GfxDevLimit)]) (signed), and falls through when a1(?) < at(=[sym(GfxDevLimit)]) (signed).
  The `beq` branch at 0x2c24 targets 0x2d54, is taken when s0(=entry(sym(GfxDev))) == 0, and falls through when s0(=entry(sym(GfxDev))) != 0.
  The `beq` branch at 0x2c2c targets 0x2d4c, is taken when v0(=ret(gthread_find)) == 0, and falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0x2c3c targets 0x2c64, is taken when (t9(=[entry(sym(GfxDev))+4]) & 0x8) == 0, and falls through when (t9(=[entry(sym(GfxDev))+4]) & 0x8) != 0.
  The `beq` branch at 0x2c44 targets 0x2c7c, is taken when v0(=[ret(gthread_find)+24]:8) == 0, and falls through when v0(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0x2c54 targets 0x2c7c, is taken when ra(=[ret(gthread_find)]:8) == at(=[entry(sym(GfxDev))+16]:8), and falls through when ra(=[ret(gthread_find)]:8) != at(=[entry(sym(GfxDev))+16]:8).
  The `beq` branch at 0x2c5c targets 0x2d2c and is always taken.
  The `beq` branch at 0x2c64 targets 0x2c7c, is taken when v0(=[ret(gthread_find)+24]:8) == 0, and falls through when v0(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0x2c7c targets 0x2d08, is taken when s1(=a1) == v0(=0x65), and falls through when s1(=a1) != v0(=0x65).
  The `beq` branch at 0x2c88 targets 0x2ec4, is taken when s1(=a1) == v1(=0x66), and falls through when s1(=a1) != v1(=0x66).
  The `beq` branch at 0x2c90 targets 0x2efc, is taken when s1(=a1) == a0(=0x69), and falls through when s1(=a1) != a0(=0x69).
  The `beq` branch at 0x2c98 targets 0x2f3c, is taken when s1(=a1) == a1(=0x67), and falls through when s1(=a1) != a1(=0x67).
  The `beq` branch at 0x2ca0 targets 0x2f74, is taken when s1(=a1) == a2(=0x70), and falls through when s1(=a1) != a2(=0x70).
  The `beq` branch at 0x2ca8 targets 0x2fac, is taken when s1(=a1) == a3(=0x71), and falls through when s1(=a1) != a3(=0x71).
  The `beq` branch at 0x2cb4 targets 0x2d80, is taken when v0(=[entry(sym(GfxDev))+32]:8) == 0, and falls through when v0(=[entry(sym(GfxDev))+32]:8) != 0.
  The `beq` branch at 0x2cbc targets 0x2d5c, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x2cc4 targets 0x2df8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x2cd0 targets 0x2fcc, is taken when s1(=a1) == a6(=0x6c), and falls through when s1(=a1) != a6(=0x6c).
  The `beq` branch at 0x2cd8 targets 0x2e8c, is taken when s1(=a1) == a7(=0x68), and falls through when s1(=a1) != a7(=0x68).
  The `beq` branch at 0x2ce0 targets 0x2d88, is taken when s1(=a1) == t0(=0x6e), and falls through when s1(=a1) != t0(=0x6e).
  The `beq` branch at 0x2cf0 targets 0x2e10, is taken when t1(=[[entry(sym(GfxDev))+8]:8+16]:8) == s0(=entry(sym(GfxDev))), and falls through when t1(=[[entry(sym(GfxDev))+8]:8+16]:8) != s0(=entry(sym(GfxDev))).
  The `beq` branch at 0x2cf8 targets 0x2d10 and is always taken.
  The `beq` branch at 0x2d00 targets 0x2d2c and is always taken.
  The `beq` branch at 0x2d14 targets 0x2d2c, is taken when t3(=[ret(gthread_find)+24]:8) == 0, and falls through when t3(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0x2d24 targets 0x2f1c, is taken when (t8(=[entry(sym(GfxDev))+4]) & 0x8) == 0, and falls through when (t8(=[entry(sym(GfxDev))+4]) & 0x8) != 0.
  The `beq` branch at 0x2d4c targets 0x2d2c and is always taken.
  The `beq` branch at 0x2d54 targets 0x2d2c and is always taken.
  The `beq` branch at 0x2d78 targets 0x2d10 and is always taken.
  The `beq` branch at 0x2d80 targets 0x2d10 and is always taken.
  The `beq` branch at 0x2d88 targets 0x2d9c and is always taken.
  The `bne` branch at 0x2da0 targets 0x2e4c, is taken when ra(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))), and falls through when ra(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `bne` branch at 0x2db8 targets 0x2d90, is taken when at(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))), and falls through when at(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `beq` branch at 0x2df0 targets 0x2d14 and is always taken.
  The `beq` branch at 0x2e08 targets 0x2d10 and is always taken.
  The `beq` branch at 0x2e10 targets 0x3004, is taken when s1(=a1) == a0(=0x6a), and falls through when s1(=a1) != a0(=0x6a).
  The `beq` branch at 0x2e18 targets 0x3084, is taken when s1(=a1) == a1(=0x6b), and falls through when s1(=a1) != a1(=0x6b).
  The `beq` branch at 0x2e20 targets 0x30a8, is taken when s1(=a1) == a2(=0x6d), and falls through when s1(=a1) != a2(=0x6d).
  The `beq` branch at 0x2e28 targets 0x30e0, is taken when s1(=a1) == a4(=0x6f), and falls through when s1(=a1) != a4(=0x6f).
  The `beq` branch at 0x2e44 targets 0x2d10 and is always taken.
  The `beq` branch at 0x2e64 targets 0x2da8, is taken when a3(=[[entry(sym(GfxDev))+40]:8+104]) == 0, and falls through when a3(=[[entry(sym(GfxDev))+40]:8+104]) != 0.
  The `bne` branch at 0x2e7c targets 0x2e6c, is taken when a5(=[[entry(sym(GfxDev))+40]:8+104]) != 0, and falls through when a5(=[[entry(sym(GfxDev))+40]:8+104]) == 0.
  The `beq` branch at 0x2e84 targets 0x2da8 and is always taken.
  The `bne` branch at 0x2e94 targets 0x2f2c, is taken when (a6(=[entry(sym(GfxDev))+4]) & 0x8) != 0, and falls through when (a6(=[entry(sym(GfxDev))+4]) & 0x8) == 0.
  The `beq` branch at 0x2ea0 targets 0x2f2c, is taken when a7(=[ret(gthread_find)+24]:8) == 0, and falls through when a7(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0x2eb4 targets 0x2f2c, is taken when v0(=ret(threadgroup_refcnt)) == t0(=0x1), and falls through when v0(=ret(threadgroup_refcnt)) != t0(=0x1).
  The `beq` branch at 0x2ebc targets 0x2d10 and is always taken.
  The `beq` branch at 0x2eec targets 0x30b0, is taken when v0(=ret(copyin_xlate)) == 0, and falls through when v0(=ret(copyin_xlate)) != 0.
  The `beq` branch at 0x2ef4 targets 0x2d10 and is always taken.
  The `beq` branch at 0x2f0c targets 0x30c8, is taken when v0(=ret(copyin)) == 0, and falls through when v0(=ret(copyin)) != 0.
  The `beq` branch at 0x2f14 targets 0x2d10 and is always taken.
  The `beq` branch at 0x2f24 targets 0x2d2c and is always taken.
  The `beq` branch at 0x2f34 targets 0x2d10 and is always taken.
  The `beq` branch at 0x2f64 targets 0x3100, is taken when v0(=ret(copyin_xlate)) == 0, and falls through when v0(=ret(copyin_xlate)) != 0.
  The `beq` branch at 0x2f6c targets 0x2d10 and is always taken.
  The `beq` branch at 0x2f9c targets 0x3118, is taken when v0(=ret(copyin_xlate)) == 0, and falls through when v0(=ret(copyin_xlate)) != 0.
  The `beq` branch at 0x2fa4 targets 0x2d10 and is always taken.
  The `bne` branch at 0x2fb4 targets 0x2d10, is taken when v0(=ret(drv_priv)) != 0, and falls through when v0(=ret(drv_priv)) == 0.
  The `beq` branch at 0x2fc4 targets 0x2d10 and is always taken.
  The `beq` branch at 0x2ff4 targets 0x32bc, is taken when v0(=ret(copyin_xlate)) == 0, and falls through when v0(=ret(copyin_xlate)) != 0.
  The `beq` branch at 0x2ffc targets 0x2d10 and is always taken.
  The `bne` branch at 0x300c targets 0x31c8, is taken when t2(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))), and falls through when t2(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `beq` branch at 0x3038 targets 0x3048, is taken when a1(=[[entry(sym(GfxDev))+32]:8+192]:8) == 0, and falls through when a1(=[[entry(sym(GfxDev))+32]:8+192]:8) != 0.
  The `beq` branch at 0x306c targets 0x2d10, is taken when (a2(=[entry(sym(GfxDev))+4]) & 0x1) == 0, and falls through when (a2(=[entry(sym(GfxDev))+4]) & 0x1) != 0.
  The `beq` branch at 0x307c targets 0x2d14 and is always taken.
  The `bne` branch at 0x308c targets 0x3208, is taken when a3(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))), and falls through when a3(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `beq` branch at 0x30a0 targets 0x2d10 and is always taken.
  The `beq` branch at 0x30a8 targets 0x2d10 and is always taken.
  The `bne` branch at 0x30b8 targets 0x3130, is taken when v0(?) < a5(=[sym(GfxNumberOfBoards)]) (unsigned), and falls through when v0(?) >= a5(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `beq` branch at 0x30c0 targets 0x2d10 and is always taken.
  The `bne` branch at 0x30d0 targets 0x3150, is taken when a0(?) < a6(=[sym(GfxNumberOfBoards)]) (unsigned), and falls through when a0(?) >= a6(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `beq` branch at 0x30d8 targets 0x2d10 and is always taken.
  The `beq` branch at 0x30f8 targets 0x2d10 and is always taken.
  The `bne` branch at 0x3108 targets 0x317c, is taken when v0(?) < a2(=[sym(GfxNumberOfBoards)]) (unsigned), and falls through when v0(?) >= a2(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `beq` branch at 0x3110 targets 0x2d10 and is always taken.
  The `bne` branch at 0x3120 targets 0x31a8, is taken when v0(?) < a3(=[sym(GfxNumberOfBoards)]) (unsigned), and falls through when v0(?) >= a3(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `beq` branch at 0x3128 targets 0x2d10 and is always taken.
  The `bne` branch at 0x3140 targets 0x3248, is taken when a4(=entry(sym(GfxBoards))) != 0, and falls through when a4(=entry(sym(GfxBoards))) == 0.
  The `beq` branch at 0x3148 targets 0x2d10 and is always taken.
  The `beq` branch at 0x3160 targets 0x32d8, is taken when v0(=entry(sym(GfxBoards))) == 0, and falls through when v0(=entry(sym(GfxBoards))) != 0.
  The `beq` branch at 0x3174 targets 0x2d10 and is always taken.
  The `beq` branch at 0x318c targets 0x32e0, is taken when a2(=entry(sym(GfxBoards))) == 0, and falls through when a2(=entry(sym(GfxBoards))) != 0.
  The `beq` branch at 0x3198 targets 0x32e8, is taken when a4(=[entry(sym(GfxDev))+32]:8) == 0, and falls through when a4(=[entry(sym(GfxDev))+32]:8) != 0.
  The `beq` branch at 0x31a0 targets 0x2d10 and is always taken.
  The `bne` branch at 0x31b8 targets 0x326c, is taken when a2(=entry(sym(GfxBoards))) != 0, and falls through when a2(=entry(sym(GfxBoards))) == 0.
  The `beq` branch at 0x31c0 targets 0x2d10 and is always taken.
  The `beq` branch at 0x31e0 targets 0x3200, is taken when a3(=[[entry(sym(GfxDev))+40]:8+104]) == 0, and falls through when a3(=[[entry(sym(GfxDev))+40]:8+104]) != 0.
  The `bne` branch at 0x31f8 targets 0x31e8, is taken when a5(=[[entry(sym(GfxDev))+40]:8+104]) != 0, and falls through when a5(=[[entry(sym(GfxDev))+40]:8+104]) == 0.
  The `beq` branch at 0x3200 targets 0x3014 and is always taken.
  The `beq` branch at 0x3220 targets 0x3240, is taken when a6(=[[entry(sym(GfxDev))+40]:8+104]) == 0, and falls through when a6(=[[entry(sym(GfxDev))+40]:8+104]) != 0.
  The `bne` branch at 0x3238 targets 0x3228, is taken when t0(=[[entry(sym(GfxDev))+40]:8+104]) != 0, and falls through when t0(=[[entry(sym(GfxDev))+40]:8+104]) == 0.
  The `beq` branch at 0x3240 targets 0x3094 and is always taken.
  The `beq` branch at 0x3264 targets 0x2d10 and is always taken.
  The `beq` branch at 0x32a4 targets 0x3338, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x32b4 targets 0x2d10 and is always taken.
  The `beq` branch at 0x32d0 targets 0x2d10 and is always taken.
  The `beq` branch at 0x32d8 targets 0x2d10 and is always taken.
  The `beq` branch at 0x32e0 targets 0x2d10 and is always taken.
  The `beq` branch at 0x3320 targets 0x3350, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x3330 targets 0x2d10 and is always taken.
  The `bne` branch at 0x3340 targets 0x2d10, is taken when a0(=[[entry(sym(GfxDev))+8]:8+16]:8) != 0, and falls through when a0(=[[entry(sym(GfxDev))+8]:8+16]:8) == 0.
  The `beq` branch at 0x3348 targets 0x2d10 and is always taken.
  The `bne` branch at 0x3358 targets 0x2d10, is taken when a1(=[[entry(sym(GfxDev))+8]:8+16]:8) != 0, and falls through when a1(=[[entry(sym(GfxDev))+8]:8+16]:8) == 0.
  The `beq` branch at 0x3360 targets 0x2d10 and is always taken.
  The return at 0x2d44 has v0 = one of 0xd, 0x6, ?, 0x13.
