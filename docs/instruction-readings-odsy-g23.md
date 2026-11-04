# Instruction readings from hostfacts

Each entry records selected accesses, calls and arguments, branch conditions, and return values from the exact binary range cited. These observations establish software behavior in the named build, not board behavior.

Skipped 5,598 understood and 46,048 located rows because targets were limited to named-only or undocumented; skipped 295 named-only or undocumented rows with exact binary/member/routine entries; and skipped 54,401 further eligible rows because they rank after the first 250 hardware-facing targets.

- `__glx_AreTexturesResident` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83ec54 (o32).
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83ec54-0xd83ee58 (516 bytes).
  Stores 4 bytes from a3 to [[[0x1014]+276]+216] +0x64 (`sw` at 0xd83ed0c) with value [[[[0x1014]+276]+216]+108].
  Stores 4 bytes from a3 to [[[0x1014]+276]+216] +0x64 (`sw` at 0xd83ed34) with value [[[[0x1014]+276]+216]+108].
  Stores 2 bytes from t4 to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd83ed40).
  Stores 1 bytes from zero to [[[[0x1014]+276]+216]+108] +0x0 (`sb` at 0xd83ed44) with value 0x0.
  Stores 4 bytes from t1 to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd83ed60) with value [[[[0x1014]+276]+216]+96]+1.
  Stores 4 bytes from t7 to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd83ed64).
  Stores 1 bytes from t2 to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd83ed6c) with value 0x8f.
  Stores 1 bytes from t8 to [[[[0x1014]+276]+216]+108] +0x0 (`sb` at 0xd83ed74) with value [[[0x1014]+276]+272].
  Stores 4 bytes from t3 to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd83ed80) with value [[[0x1014]+276]+60].
  Stores 4 bytes from t4 to [[[[0x1014]+276]+216]+108] +0x8 (`sw` at 0xd83ed88) with value a0.
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4] (`jalr` at 0xd83ecb4).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd83ecd4).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+108] (`jalr` at 0xd83ed1c).
  Calls `memcpy` via got with a0=[[[[0x1014]+276]+216]+108]+12, a1=a1 at entry (arg1), a2=?, a3=[[[[0x1014]+276]+216]+108] (`jalr` at 0xd83ed94).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-56, a2=0x0, a3=0x0 (`jalr` at 0xd83edb4).
  Calls `_XRead` via got with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=a0 at entry (arg0), a3=? (`jalr` at 0xd83edd8).
  Calls `_XEatData` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd83edf8).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd83ee18).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd83ee34).
  At `bgez` at 0xd83ec90 (target 0xd83eca0), taken when a0 >= 0 (signed) and falls through when a0 < 0 (signed).
  At `beql` at 0xd83eca0 (target 0xd83ee44), taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  At `beql` at 0xd83ecc4 (target 0xd83ece4), taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  At `beql` at 0xd83ed08 (target 0xd83ed38), taken when t8(=[[[[0x1014]+276]+216]+112]) >= t2(?) (unsigned) and falls through when t8(=[[[[0x1014]+276]+216]+112]) < t2(?) (unsigned).
  At `beq` at 0xd83ede4 (target 0xd83ee04), taken when (s1(=a0) & 0x3) == 0 and falls through when (s1(=a0) & 0x3) != 0.
  At `beql` at 0xd83ee08 (target 0xd83ee28), taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  At `beql` at 0xd83ee2c (target 0xd83ee44), taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Returns v0 = ? (`jr` at 0xd83ee50).

- `__glx_DeleteTextures` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83ee58 (o32).
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83ee58-0xd83efe4 (396 bytes).
  Stores 4 bytes from a3 to [[[0x1014]+276]+216] +0x64 (`sw` at 0xd83ef00) with value [[[[0x1014]+276]+216]+108].
  Stores 4 bytes from a3 to [[[0x1014]+276]+216] +0x64 (`sw` at 0xd83ef28) with value [[[[0x1014]+276]+216]+108].
  Stores 2 bytes from t4 to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd83ef34).
  Stores 1 bytes from zero to [[[[0x1014]+276]+216]+108] +0x0 (`sb` at 0xd83ef38) with value 0x0.
  Stores 4 bytes from t1 to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd83ef54) with value [[[[0x1014]+276]+216]+96]+1.
  Stores 4 bytes from t7 to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd83ef58).
  Stores 1 bytes from t2 to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd83ef60) with value 0x90.
  Stores 1 bytes from t8 to [[[[0x1014]+276]+216]+108] +0x0 (`sb` at 0xd83ef68) with value [[[0x1014]+276]+272].
  Stores 4 bytes from t3 to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd83ef74) with value [[[0x1014]+276]+60].
  Stores 4 bytes from t4 to [[[[0x1014]+276]+216]+108] +0x8 (`sw` at 0xd83ef7c) with value a0.
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[[0x1014]+276]+4], a3=a3 at entry (arg3) (`jalr` at 0xd83eea8).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd83eec8).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+108] (`jalr` at 0xd83ef10).
  Calls `memcpy` via got with a0=[[[[0x1014]+276]+216]+108]+12, a1=a1 at entry (arg1), a2=?, a3=[[[[0x1014]+276]+216]+108] (`jalr` at 0xd83ef88).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd83efa8).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd83efc4).
  At `bltz` at 0xd83ee8c (target 0xd83efd0), taken when a0 < 0 (signed) and falls through when a0 >= 0 (signed).
  At `beql` at 0xd83ee94 (target 0xd83efd4), taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  At `beql` at 0xd83eeb8 (target 0xd83eed8), taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  At `beql` at 0xd83eefc (target 0xd83ef2c), taken when t8(=[[[[0x1014]+276]+216]+112]) >= t2(?) (unsigned) and falls through when t8(=[[[[0x1014]+276]+216]+112]) < t2(?) (unsigned).
  At `beql` at 0xd83ef98 (target 0xd83efb8), taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  At `beql` at 0xd83efbc (target 0xd83efd4), taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Returns v0 = ? (`jr` at 0xd83efdc).

- `__glx_GenTextures` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83efe4 (o32).
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83efe4-0xd83f164 (384 bytes).
  Stores 4 bytes from v1 to [[[0x1014]+276]+216] +0x64 (`sw` at 0xd83f070) with value [[[[0x1014]+276]+216]+108].
  Stores 4 bytes from v1 to [[[0x1014]+276]+216] +0x64 (`sw` at 0xd83f08c) with value [[[[0x1014]+276]+216]+108].
  Stores 2 bytes from t0 to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd83f094) with value 0x3.
  Stores 1 bytes from zero to [[[[0x1014]+276]+216]+108] +0x0 (`sb` at 0xd83f098) with value 0x0.
  Stores 4 bytes from t2 to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd83f0b0) with value [[[[0x1014]+276]+216]+108]+12.
  Stores 4 bytes from t4 to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd83f0b4) with value [[[[0x1014]+276]+216]+96]+1.
  Stores 1 bytes from t6 to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd83f0bc) with value 0x91.
  Stores 1 bytes from t5 to [[[[0x1014]+276]+216]+108] +0x0 (`sb` at 0xd83f0c4) with value [[[0x1014]+276]+272].
  Stores 4 bytes from t9 to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd83f0d4) with value [[[0x1014]+276]+60].
  Stores 4 bytes from t7 to [[[[0x1014]+276]+216]+108] +0x8 (`sw` at 0xd83f0e0) with value a0.
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[[0x1014]+276]+4], a3=a3 at entry (arg3) (`jalr` at 0xd83f030).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd83f050).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd83f07c).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-48, a2=0x0, a3=0x0 (`jalr` at 0xd83f0e8).
  Calls `_XRead` via got with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=? (`jalr` at 0xd83f108).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd83f128).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd83f144).
  At `beql` at 0xd83f01c (target 0xd83f154), taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  At `beql` at 0xd83f040 (target 0xd83f060), taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  At `beql` at 0xd83f06c (target 0xd83f090), taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned) and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned).
  At `beql` at 0xd83f118 (target 0xd83f138), taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  At `beql` at 0xd83f13c (target 0xd83f154), taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Returns v0 = ? (`jr` at 0xd83f15c).

- `__glx_IsTexture` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83f164 (o32).
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83f164-0xd83f2d8 (372 bytes).
  Stores 4 bytes from v1 to [[[0x1014]+276]+216] +0x64 (`sw` at 0xd83f1ec) with value [[[[0x1014]+276]+216]+108].
  Stores 4 bytes from v1 to [[[0x1014]+276]+216] +0x64 (`sw` at 0xd83f208) with value [[[[0x1014]+276]+216]+108].
  Stores 2 bytes from t0 to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd83f210) with value 0x3.
  Stores 1 bytes from zero to [[[[0x1014]+276]+216]+108] +0x0 (`sb` at 0xd83f214) with value 0x0.
  Stores 4 bytes from t2 to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd83f22c) with value [[[[0x1014]+276]+216]+108]+12.
  Stores 4 bytes from t4 to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd83f230) with value [[[[0x1014]+276]+216]+96]+1.
  Stores 1 bytes from t6 to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd83f238) with value 0x92.
  Stores 1 bytes from t5 to [[[[0x1014]+276]+216]+108] +0x0 (`sb` at 0xd83f240) with value [[[0x1014]+276]+272].
  Stores 4 bytes from t9 to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd83f250) with value [[[0x1014]+276]+60].
  Stores 4 bytes from t7 to [[[[0x1014]+276]+216]+108] +0x8 (`sw` at 0xd83f25c) with value a0.
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd83f1ac).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd83f1cc).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd83f1f8).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0 (`jalr` at 0xd83f264).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd83f28c).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd83f2b0).
  At `beql` at 0xd83f19c (target 0xd83f2c4), taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  At `beql` at 0xd83f1bc (target 0xd83f1dc), taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  At `beql` at 0xd83f1e8 (target 0xd83f20c), taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned) and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned).
  At `beql` at 0xd83f278 (target 0xd83f2a0), taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  At `beql` at 0xd83f2a4 (target 0xd83f2c4), taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Returns v0 = ? (`jr` at 0xd83f2d0).

- `__glce_AreTexturesResident` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6620 (o32).
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6620-0xdad6628 (8 bytes).
  Role: unknown. Hostfacts reports no reached access, call, branch, or return in 0xdad6620-0xdad6628.

- `__glce_DeleteTextures` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6628 (o32).
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6628-0xdad6630 (8 bytes).
  Role: unknown. Hostfacts reports no reached access, call, branch, or return in 0xdad6628-0xdad6630.

- `__glce_GenTextures` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6630 (o32).
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6630-0xdad6638 (8 bytes).
  Role: unknown. Hostfacts reports no reached access, call, branch, or return in 0xdad6630-0xdad6638.

- `__glce_IsTexture` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6638 (o32).
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6638-0xdad6640 (8 bytes).
  Role: unknown. Hostfacts reports no reached access, call, branch, or return in 0xdad6638-0xdad6640.

- `glBindTexture` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad74a0 (o32).
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad74a0-0xdad74ac (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad74a4).

- `glBindTextureEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad74a0 (o32).
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad74a0-0xdad74ac (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad74a4).

- `glPrioritizeTextures` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad74d0 (o32).
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad74d0-0xdad74dc (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad74d4).

- `glPrioritizeTexturesEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad74d0 (o32).
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad74d0-0xdad74dc (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad74d4).

- `__glx_AreTexturesResident` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83ffec (n32).
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd83ffec-0xd8401cc (480 bytes).
  Stores 4 bytes from a4 to [[[0x1014]+276]+216] +0x64 (`sw` at 0xd8400a8) with value [[[[0x1014]+276]+216]+108].
  Stores 1 bytes from zero to [[[[0x1014]+276]+216]+108] +0x0 (`sb` at 0xd8400ac) with value 0x0.
  Stores 2 bytes from t3 to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd8400b8).
  Stores 4 bytes from t1 to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd8400c8) with value [[[[0x1014]+276]+216]+96]+1.
  Stores 4 bytes from t2 to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd8400d8).
  Stores 1 bytes from a7 to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd8400e4) with value 0x8f.
  Stores 1 bytes from t0 to [[[[0x1014]+276]+216]+108] +0x0 (`sb` at 0xd8400ec).
  Stores 4 bytes from a7 to [[[[0x1014]+276]+216]+108] +0x8 (`sw` at 0xd8400f8) with value a0.
  Stores 4 bytes from a6 to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd840104).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[[0x1014]+276] (`jalr` at 0xd840054).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?, a4=[[[[0x1014]+276]+216]+1232], a5=a0 at entry (arg0) (`jalr` at 0xd84006c).
  Calls `memcpy` via got with a0=[[[[0x1014]+276]+216]+108]+12, a1=a1 at entry (arg1), a2=?, a3=?, a4=[[[[0x1014]+276]+216]+108], a7=a0 at entry (arg0) (`jalr` at 0xd840100).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-112, a2=0x0, a3=0x0 (`jalr` at 0xd840118).
  Calls `_XRead` via got with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=a0 at entry (arg0), a3=? (`jalr` at 0xd840134).
  Calls `_XEatData` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd840154).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?, a4=[[[[0x1014]+276]+216]+1232] (`jalr` at 0xd84016c).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd840180).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=?, a3=?, a4=[[[[0x1014]+276]+216]+108], a5=(a0 << 0x2), a7=-0x4 (`jalr` at 0xd8401b4).
  At `bltz` at 0xd840010 (target 0xd840190), taken when a0 < 0 (signed) and falls through when a0 >= 0 (signed).
  At `bne` at 0xd840024 (target 0xd840048), taken when s0(=[[[0x1014]+276]+216]) != 0 and falls through when s0(=[[[0x1014]+276]+216]) == 0.
  At `beq` at 0xd840060 (target 0xd840078), taken when a4(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when a4(=[[[[0x1014]+276]+216]+1232]) != 0.
  At `bne` at 0xd84009c (target 0xd8401a8), taken when a2(=[[[[0x1014]+276]+216]+112]) < a3(?) (unsigned) and falls through when a2(=[[[[0x1014]+276]+216]+112]) >= a3(?) (unsigned).
  At `beq` at 0xd840144 (target 0xd84015c), taken when (a4(=a0) & 0x3) == 0 and falls through when (a4(=a0) & 0x3) != 0.
  At `beq` at 0xd840160 (target 0xd840174), taken when a4(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when a4(=[[[[0x1014]+276]+216]+1232]) != 0.
  At `beq` at 0xd840178 (target 0xd840030), taken when t9(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when t9(=[[[[0x1014]+276]+216]+124]) != 0.
  Returns v0 = ? (`jr` at 0xd840040).
  Returns v0 = 0x0 (`jr` at 0xd8401a0).

- `__glx_DeleteTextures` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8401cc (n32).
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8401cc-0xd840328 (348 bytes).
  Stores 4 bytes from a4 to [[[0x1014]+276]+216] +0x64 (`sw` at 0xd840268) with value [[[[0x1014]+276]+216]+108].
  Stores 1 bytes from zero to [[[[0x1014]+276]+216]+108] +0x0 (`sb` at 0xd84026c) with value 0x0.
  Stores 2 bytes from t1 to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd840278).
  Stores 4 bytes from a7 to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd84028c) with value [[[[0x1014]+276]+216]+96]+1.
  Stores 4 bytes from t0 to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd840298).
  Stores 1 bytes from a5 to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd8402a4) with value 0x90.
  Stores 1 bytes from a6 to [[[[0x1014]+276]+216]+108] +0x0 (`sb` at 0xd8402ac).
  Stores 4 bytes from a5 to [[[[0x1014]+276]+216]+108] +0x8 (`sw` at 0xd8402b4) with value a0.
  Stores 4 bytes from a3 to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd8402c0).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd840214).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=[[[[0x1014]+276]+216]+1232], a3=? (`jalr` at 0xd84022c).
  Calls `memcpy` via got with a0=[[[[0x1014]+276]+216]+108]+12, a1=a1 at entry (arg1), a2=?, a3=?, a4=[[[[0x1014]+276]+216]+108], a5=a0 at entry (arg0), a7=[[[[0x1014]+276]+216]+96]+1 (`jalr` at 0xd8402bc).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=[[[[0x1014]+276]+216]+1232], a3=? (`jalr` at 0xd8402d4).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd8402e8).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=?, a4=[[[[0x1014]+276]+216]+108] (`jalr` at 0xd840310).
  At `bltz` at 0xd8401f0 (target 0xd8402f0), taken when a0 < 0 (signed) and falls through when a0 >= 0 (signed).
  At `beq` at 0xd840200 (target 0xd8402f0), taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  At `beq` at 0xd840220 (target 0xd840234), taken when a2(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when a2(=[[[[0x1014]+276]+216]+1232]) != 0.
  At `bne` at 0xd84025c (target 0xd840304), taken when a3(=[[[[0x1014]+276]+216]+112]) < a6(?) (unsigned) and falls through when a3(=[[[[0x1014]+276]+216]+112]) >= a6(?) (unsigned).
  At `beq` at 0xd8402c8 (target 0xd8402dc), taken when a2(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when a2(=[[[[0x1014]+276]+216]+1232]) != 0.
  At `beq` at 0xd8402e0 (target 0xd8402f4), taken when t9(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when t9(=[[[[0x1014]+276]+216]+124]) != 0.
  Returns v0 = ? (`jr` at 0xd8402fc).

- `__glx_GenTextures` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd840328 (n32).
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd840328-0xd84046c (324 bytes).
  Stores 4 bytes from a5 to [[[0x1014]+276]+216] +0x64 (`sw` at 0xd8403a4) with value [[[[0x1014]+276]+216]+108].
  Stores 2 bytes from a2 to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd8403ac) with value 0x3.
  Stores 1 bytes from zero to [[[[0x1014]+276]+216]+108] +0x0 (`sb` at 0xd8403b0) with value 0x0.
  Stores 4 bytes from a0 to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd8403c0) with value [[[[0x1014]+276]+216]+96]+1.
  Stores 4 bytes from a1 to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd8403c8) with value [[[[0x1014]+276]+216]+108]+12.
  Stores 1 bytes from v0 to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd8403d4) with value 0x91.
  Stores 1 bytes from v1 to [[[[0x1014]+276]+216]+108] +0x0 (`sb` at 0xd8403d8) with value [[[0x1014]+276]+272].
  Stores 4 bytes from s1 to [[[[0x1014]+276]+216]+108] +0x8 (`sw` at 0xd8403ec) with value a0.
  Stores 4 bytes from at to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd8403f8) with value [[[0x1014]+276]+60].
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd84036c).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+1232] (`jalr` at 0xd840384).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-80, a2=0x0, a3=0x0, a5=[[[[0x1014]+276]+216]+108] (`jalr` at 0xd8403f4).
  Calls `_XRead` via got with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=? (`jalr` at 0xd840408).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+1232] (`jalr` at 0xd840420).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd840434).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?, a5=[[[[0x1014]+276]+216]+108] (`jalr` at 0xd84045c).
  At `beq` at 0xd84035c (target 0xd84043c), taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  At `beq` at 0xd840378 (target 0xd84038c), taken when a3(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when a3(=[[[[0x1014]+276]+216]+1232]) != 0.
  At `bne` at 0xd84039c (target 0xd840458), taken when t8(=[[[[0x1014]+276]+216]+112]) < t9(=[[[[0x1014]+276]+216]+108]+12) (unsigned) and falls through when t8(=[[[[0x1014]+276]+216]+112]) >= t9(=[[[[0x1014]+276]+216]+108]+12) (unsigned).
  At `beq` at 0xd840414 (target 0xd840428), taken when a3(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when a3(=[[[[0x1014]+276]+216]+1232]) != 0.
  At `beq` at 0xd84042c (target 0xd84043c), taken when t9(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when t9(=[[[[0x1014]+276]+216]+124]) != 0.
  Returns v0 = ? (`jr` at 0xd840450).

- `__glx_IsTexture` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd84046c (n32).
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd84046c-0xd8405bc (336 bytes).
  Stores 4 bytes from v0 to [[[0x1014]+276]+216] +0x64 (`sw` at 0xd8404ec) with value [[[[0x1014]+276]+216]+108].
  Stores 2 bytes from t1 to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd8404f4) with value 0x3.
  Stores 1 bytes from zero to [[[[0x1014]+276]+216]+108] +0x0 (`sb` at 0xd8404f8) with value 0x0.
  Stores 4 bytes from a7 to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd840508) with value [[[[0x1014]+276]+216]+96]+1.
  Stores 4 bytes from t0 to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd840510) with value [[[[0x1014]+276]+216]+108]+12.
  Stores 1 bytes from a5 to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd84051c) with value 0x92.
  Stores 1 bytes from a6 to [[[[0x1014]+276]+216]+108] +0x0 (`sb` at 0xd840524).
  Stores 4 bytes from a5 to [[[[0x1014]+276]+216]+108] +0x8 (`sw` at 0xd840538) with value a0.
  Stores 4 bytes from a4 to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd840544).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8404b0).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+1232] (`jalr` at 0xd8404c8).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-80, a2=0x0, a3=0x0, a5=a0 at entry (arg0), a7=[[[[0x1014]+276]+216]+96]+1 (`jalr` at 0xd840540).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+1232] (`jalr` at 0xd84055c).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd840574).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+108]+12 (`jalr` at 0xd8405ac).
  At `beq` at 0xd840498 (target 0xd840588), taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  At `beq` at 0xd8404bc (target 0xd8404d0), taken when a3(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when a3(=[[[[0x1014]+276]+216]+1232]) != 0.
  At `bne` at 0xd8404e0 (target 0xd8405a8), taken when a2(=[[[[0x1014]+276]+216]+112]) < a3(=[[[[0x1014]+276]+216]+108]+12) (unsigned) and falls through when a2(=[[[[0x1014]+276]+216]+112]) >= a3(=[[[[0x1014]+276]+216]+108]+12) (unsigned).
  At `beq` at 0xd840550 (target 0xd840564), taken when a3(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when a3(=[[[[0x1014]+276]+216]+1232]) != 0.
  At `beq` at 0xd84056c (target 0xd840598), taken when t9(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when t9(=[[[[0x1014]+276]+216]+124]) != 0.
  Returns v0 = 0x0 (`jr` at 0xd840590).
  Returns v0 = ? (`jr` at 0xd8405a0).

- `SphereGen` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9f1f30 (n32).
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xd9f1f30-0xd9f202c (252 bytes).
  Stores 4 bytes from $f13 to a2 (arg2 at entry) +0x0 (`swc1` at 0xd9f1fe8).
  Stores 4 bytes from $f11 to a2 (arg2 at entry) +0x4 (`swc1` at 0xd9f2000).
  Stores 4 bytes from $f5 to a2 (arg2 at entry) +0x0 (`swc1` at 0xd9f2010) with value [a0+3540].
  Stores 4 bytes from $f14 to a2 (arg2 at entry) +0x4 (`swc1` at 0xd9f201c) with value [a0+3540].
  Calls `(unknown callee)` via register with a0=sp-48, a1=a1+96, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd9f1f58).
  Calls `Dot [0xd9f1f00]` via direct with a0=a1+32, a1=sp-48, a2=?, a3=? (`bgezall` at 0xd9f1f6c).
  At `bc3fl` at 0xd9f1f94 (target 0xd9f2878), taken when (condition not decoded) -> outside and falls through when (condition not decoded).
  At `bc1t` at 0xd9f1fd4 (target 0xd9f2010), taken when f6 == f0(=ret(Dot)) (c.eq.s at 0xd9f1fc8) and falls through when not (f6 == f0(=ret(Dot)) (c.eq.s at 0xd9f1fc8)).
  Returns v0 = ret(Dot); f0 = ret(Dot) (`jr` at 0xd9f2008).
  Returns v0 = ret(Dot); f0 = ret(Dot) (`jr` at 0xd9f2024).

- `__glce_AreTexturesResident` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdac9480 (n32).
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdac9480-0xdac94d0 (80 bytes).
  Stores 4 bytes from at to abs 0x1534 (`sw` at 0xdac94b0) with value [[0x1010]+11172].
  Stores 4 bytes from s8 to abs 0x1534 (`sw` at 0xdac94c0) with value [0x1534].
  Calls `glAreTexturesResident` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdac94ac).
  Returns v0 = ?; f0 = ret(glAreTexturesResident) (`jr` at 0xdac94c8).

- `__glce_DeleteTextures` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdac94d0 (n32).
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdac94d0-0xdac951c (76 bytes).
  Stores 4 bytes from at to abs 0x1538 (`sw` at 0xdac9500) with value [[0x1010]+11176].
  Stores 4 bytes from s8 to abs 0x1538 (`sw` at 0xdac950c) with value [0x1538].
  Calls `glDeleteTextures` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdac94fc).
  Returns v0 = ret(glDeleteTextures); f0 = ret(glDeleteTextures) (`jr` at 0xdac9514).

- `__glce_GenTextures` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdac9520 (n32).
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdac9520-0xdac956c (76 bytes).
  Stores 4 bytes from at to abs 0x153c (`sw` at 0xdac9550) with value [[0x1010]+11180].
  Stores 4 bytes from s8 to abs 0x153c (`sw` at 0xdac955c) with value [0x153c].
  Calls `glGenTextures` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdac954c).
  Returns v0 = ret(glGenTextures); f0 = ret(glGenTextures) (`jr` at 0xdac9564).

- `__glce_IsTexture` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdac9570 (n32).
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdac9570-0xdac95c0 (80 bytes).
  Stores 4 bytes from at to abs 0x1540 (`sw` at 0xdac95a0) with value [[0x1010]+11184].
  Stores 4 bytes from s8 to abs 0x1540 (`sw` at 0xdac95b0) with value [0x1540].
  Calls `glIsTexture` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdac959c).
  Returns v0 = ?; f0 = ret(glIsTexture) (`jr` at 0xdac95b8).

- `glBindTexture` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacdfe0 (n32).
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacdfe0-0xdacdfec (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacdfe4).

- `glBindTextureEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacdfe0 (n32).
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacdfe0-0xdacdfec (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacdfe4).
- `glPrioritizeTextures` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace010 (n32).
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdace010-0xdace01c (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdace014).

- `glPrioritizeTexturesEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace010 (n32).
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdace010-0xdace01c (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdace014).

- `__glx_AreTexturesResident` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2174b5c (n64).
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x2174b5c-0x2174d44 (488 bytes).
  Stores 8 bytes from a4 to [[[0x1028]:8+280]:8+312]:8 +0xa0 (`sd` at 0x2174c24) with value [[[[0x1028]:8+280]:8+312]:8+176]:8.
  Stores 1 bytes from zero to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x0 (`sb` at 0x2174c28) with value 0x0.
  Stores 2 bytes from t3 to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x2 (`sh` at 0x2174c30).
  Stores 8 bytes from t1 to [[[0x1028]:8+280]:8+312]:8 +0x98 (`sd` at 0x2174c48) with value [[[[0x1028]:8+280]:8+312]:8+152]:8+1.
  Stores 8 bytes from t2 to [[[0x1028]:8+280]:8+312]:8 +0xb0 (`sd` at 0x2174c50).
  Stores 1 bytes from a7 to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x1 (`sb` at 0x2174c5c) with value 0x8f.
  Stores 1 bytes from t0 to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x0 (`sb` at 0x2174c64).
  Stores 4 bytes from a7 to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x8 (`sw` at 0x2174c70) with value a0.
  Stores 4 bytes from a6 to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x4 (`sw` at 0x2174c7c).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[[0x1028]:8+280]:8 (`jalr` at 0x2174bc0).
  Calls `(unknown callee)` via register with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?, a4=[[[[0x1028]:8+280]:8+312]:8+2408]:8, a5=a0 at entry (arg0) (`jalr` at 0x2174bd8).
  Calls `memcpy` via got with a0=[[[[0x1028]:8+280]:8+312]:8+176]:8+12, a1=a1 at entry (arg1), a2=?, a3=?, a4=[[[[0x1028]:8+280]:8+312]:8+176]:8, a7=a0 at entry (arg0) (`jalr` at 0x2174c78).
  Calls `_XReply` via got with a0=[[[0x1028]:8+280]:8+312]:8, a1=sp-112, a2=0x0, a3=0x0 (`jalr` at 0x2174c90).
  Calls `_XRead` via got with a0=[[[0x1028]:8+280]:8+312]:8, a1=a2 at entry (arg2), a2=a0 at entry (arg0), a3=? (`jalr` at 0x2174cac).
  Calls `_XEatData` via got with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=? (`jalr` at 0x2174ccc).
  Calls `(unknown callee)` via register with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?, a4=[[[[0x1028]:8+280]:8+312]:8+2408]:8 (`jalr` at 0x2174ce4).
  Calls `(unknown callee)` via register with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=? (`jalr` at 0x2174cf8).
  Calls `_XFlush` via got with a0=[[[0x1028]:8+280]:8+312]:8, a1=a1 at entry (arg1), a2=?, a3=?, a4=[[[[0x1028]:8+280]:8+312]:8+176]:8, a5=(a0 << 0x2), a7=-0x4 (`jalr` at 0x2174d2c).
  At `bltz` at 0x2174b80 (target 0x2174d08), taken when a0 < 0 (signed) and falls through when a0 >= 0 (signed).
  At `bne` at 0x2174b94 (target 0x2174bb8), taken when s0(=[[[0x1028]:8+280]:8+312]:8) != 0 and falls through when s0(=[[[0x1028]:8+280]:8+312]:8) == 0.
  At `beq` at 0x2174bcc (target 0x2174be4), taken when a4(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0 and falls through when a4(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  At `bne` at 0x2174c10 (target 0x2174d20), taken when a2(=[[[[0x1028]:8+280]:8+312]:8+184]:8) < a3(?) (unsigned) and falls through when a2(=[[[[0x1028]:8+280]:8+312]:8+184]:8) >= a3(?) (unsigned).
  At `beq` at 0x2174cbc (target 0x2174cd4), taken when (a4(=a0) & 0x3) == 0 and falls through when (a4(=a0) & 0x3) != 0.
  At `beq` at 0x2174cd8 (target 0x2174cec), taken when a4(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0 and falls through when a4(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  At `beq` at 0x2174cf0 (target 0x2174ba0), taken when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) == 0 and falls through when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) != 0.
  Returns v0 = ? (`jr` at 0x2174bb0).
  Returns v0 = 0x0 (`jr` at 0x2174d18).

- `__glx_DeleteTextures` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2174d44 (n64).
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x2174d44-0x2174ea8 (356 bytes).
  Stores 8 bytes from a4 to [[[0x1028]:8+280]:8+312]:8 +0xa0 (`sd` at 0x2174de8) with value [[[[0x1028]:8+280]:8+312]:8+176]:8.
  Stores 1 bytes from zero to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x0 (`sb` at 0x2174dec) with value 0x0.
  Stores 2 bytes from t1 to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x2 (`sh` at 0x2174df8).
  Stores 8 bytes from a7 to [[[0x1028]:8+280]:8+312]:8 +0x98 (`sd` at 0x2174e10) with value [[[[0x1028]:8+280]:8+312]:8+152]:8+1.
  Stores 8 bytes from t0 to [[[0x1028]:8+280]:8+312]:8 +0xb0 (`sd` at 0x2174e18).
  Stores 1 bytes from a5 to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x1 (`sb` at 0x2174e24) with value 0x90.
  Stores 1 bytes from a6 to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x0 (`sb` at 0x2174e2c).
  Stores 4 bytes from a5 to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x8 (`sw` at 0x2174e34) with value a0.
  Stores 4 bytes from a3 to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x4 (`sw` at 0x2174e40).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8, a2=[[0x1028]:8+280]:8, a3=a3 at entry (arg3) (`jalr` at 0x2174d88).
  Calls `(unknown callee)` via register with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=[[[[0x1028]:8+280]:8+312]:8+2408]:8, a3=? (`jalr` at 0x2174da0).
  Calls `memcpy` via got with a0=[[[[0x1028]:8+280]:8+312]:8+176]:8+12, a1=a1 at entry (arg1), a2=?, a3=?, a4=[[[[0x1028]:8+280]:8+312]:8+176]:8, a5=a0 at entry (arg0), a7=[[[[0x1028]:8+280]:8+312]:8+152]:8+1 (`jalr` at 0x2174e3c).
  Calls `(unknown callee)` via register with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=[[[[0x1028]:8+280]:8+312]:8+2408]:8, a3=? (`jalr` at 0x2174e54).
  Calls `(unknown callee)` via register with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=? (`jalr` at 0x2174e68).
  Calls `_XFlush` via got with a0=[[[0x1028]:8+280]:8+312]:8, a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=?, a4=[[[[0x1028]:8+280]:8+312]:8+176]:8 (`jalr` at 0x2174e90).
  At `bltz` at 0x2174d68 (target 0x2174e70), taken when a0 < 0 (signed) and falls through when a0 >= 0 (signed).
  At `beq` at 0x2174d78 (target 0x2174e70), taken when s0(=[[[0x1028]:8+280]:8+312]:8) == 0 and falls through when s0(=[[[0x1028]:8+280]:8+312]:8) != 0.
  At `beq` at 0x2174d94 (target 0x2174da8), taken when a2(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0 and falls through when a2(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  At `bne` at 0x2174dd8 (target 0x2174e84), taken when a3(=[[[[0x1028]:8+280]:8+312]:8+184]:8) < a6(?) (unsigned) and falls through when a3(=[[[[0x1028]:8+280]:8+312]:8+184]:8) >= a6(?) (unsigned).
  At `beq` at 0x2174e48 (target 0x2174e5c), taken when a2(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0 and falls through when a2(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  At `beq` at 0x2174e60 (target 0x2174e74), taken when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) == 0 and falls through when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) != 0.
  Returns v0 = ? (`jr` at 0x2174e7c).

- `__glx_GenTextures` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2174ea8 (n64).
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x2174ea8-0x2174fec (324 bytes).
  Stores 8 bytes from a5 to [[[0x1028]:8+280]:8+312]:8 +0xa0 (`sd` at 0x2174f24) with value [[[[0x1028]:8+280]:8+312]:8+176]:8.
  Stores 2 bytes from a2 to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x2 (`sh` at 0x2174f2c) with value 0x3.
  Stores 1 bytes from zero to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x0 (`sb` at 0x2174f30) with value 0x0.
  Stores 8 bytes from a0 to [[[0x1028]:8+280]:8+312]:8 +0x98 (`sd` at 0x2174f40) with value [[[[0x1028]:8+280]:8+312]:8+152]:8+1.
  Stores 8 bytes from a1 to [[[0x1028]:8+280]:8+312]:8 +0xb0 (`sd` at 0x2174f48) with value [[[[0x1028]:8+280]:8+312]:8+176]:8+12.
  Stores 1 bytes from v0 to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x1 (`sb` at 0x2174f54) with value 0x91.
  Stores 1 bytes from v1 to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x0 (`sb` at 0x2174f58) with value [[[0x1028]:8+280]:8+420].
  Stores 4 bytes from s1 to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x8 (`sw` at 0x2174f6c) with value a0.
  Stores 4 bytes from at to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x4 (`sw` at 0x2174f78) with value [[[0x1028]:8+280]:8+104].
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x2174eec).
  Calls `(unknown callee)` via register with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=[[[[0x1028]:8+280]:8+312]:8+2408]:8 (`jalr` at 0x2174f04).
  Calls `_XReply` via got with a0=[[[0x1028]:8+280]:8+312]:8, a1=sp-80, a2=0x0, a3=0x0, a5=[[[[0x1028]:8+280]:8+312]:8+176]:8 (`jalr` at 0x2174f74).
  Calls `_XRead` via got with a0=[[[0x1028]:8+280]:8+312]:8, a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=? (`jalr` at 0x2174f88).
  Calls `(unknown callee)` via register with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=[[[[0x1028]:8+280]:8+312]:8+2408]:8 (`jalr` at 0x2174fa0).
  Calls `(unknown callee)` via register with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=? (`jalr` at 0x2174fb4).
  Calls `_XFlush` via got with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?, a5=[[[[0x1028]:8+280]:8+312]:8+176]:8 (`jalr` at 0x2174fdc).
  At `beq` at 0x2174edc (target 0x2174fbc), taken when s0(=[[[0x1028]:8+280]:8+312]:8) == 0 and falls through when s0(=[[[0x1028]:8+280]:8+312]:8) != 0.
  At `beq` at 0x2174ef8 (target 0x2174f0c), taken when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0 and falls through when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  At `bne` at 0x2174f1c (target 0x2174fd8), taken when t8(=[[[[0x1028]:8+280]:8+312]:8+184]:8) < t9(=[[[[0x1028]:8+280]:8+312]:8+176]:8+12) (unsigned) and falls through when t8(=[[[[0x1028]:8+280]:8+312]:8+184]:8) >= t9(=[[[[0x1028]:8+280]:8+312]:8+176]:8+12) (unsigned).
  At `beq` at 0x2174f94 (target 0x2174fa8), taken when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0 and falls through when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  At `beq` at 0x2174fac (target 0x2174fbc), taken when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) == 0 and falls through when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) != 0.
  Returns v0 = ? (`jr` at 0x2174fd0).

- `__glx_IsTexture` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2174fec (n64).
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x2174fec-0x217513c (336 bytes).
  Stores 8 bytes from v0 to [[[0x1028]:8+280]:8+312]:8 +0xa0 (`sd` at 0x217506c) with value [[[[0x1028]:8+280]:8+312]:8+176]:8.
  Stores 2 bytes from t1 to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x2 (`sh` at 0x2175074) with value 0x3.
  Stores 1 bytes from zero to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x0 (`sb` at 0x2175078) with value 0x0.
  Stores 8 bytes from a7 to [[[0x1028]:8+280]:8+312]:8 +0x98 (`sd` at 0x2175088) with value [[[[0x1028]:8+280]:8+312]:8+152]:8+1.
  Stores 8 bytes from t0 to [[[0x1028]:8+280]:8+312]:8 +0xb0 (`sd` at 0x2175090) with value [[[[0x1028]:8+280]:8+312]:8+176]:8+12.
  Stores 1 bytes from a5 to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x1 (`sb` at 0x217509c) with value 0x92.
  Stores 1 bytes from a6 to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x0 (`sb` at 0x21750a4).
  Stores 4 bytes from a5 to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x8 (`sw` at 0x21750b8) with value a0.
  Stores 4 bytes from a4 to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x4 (`sw` at 0x21750c4).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x2175030).
  Calls `(unknown callee)` via register with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=[[[[0x1028]:8+280]:8+312]:8+2408]:8 (`jalr` at 0x2175048).
  Calls `_XReply` via got with a0=[[[0x1028]:8+280]:8+312]:8, a1=sp-80, a2=0x0, a3=0x0, a5=a0 at entry (arg0), a7=[[[[0x1028]:8+280]:8+312]:8+152]:8+1 (`jalr` at 0x21750c0).
  Calls `(unknown callee)` via register with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=[[[[0x1028]:8+280]:8+312]:8+2408]:8 (`jalr` at 0x21750dc).
  Calls `(unknown callee)` via register with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=? (`jalr` at 0x21750f4).
  Calls `_XFlush` via got with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=[[[[0x1028]:8+280]:8+312]:8+176]:8+12 (`jalr` at 0x217512c).
  At `beq` at 0x2175018 (target 0x2175108), taken when s0(=[[[0x1028]:8+280]:8+312]:8) == 0 and falls through when s0(=[[[0x1028]:8+280]:8+312]:8) != 0.
  At `beq` at 0x217503c (target 0x2175050), taken when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0 and falls through when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  At `bne` at 0x2175060 (target 0x2175128), taken when a2(=[[[[0x1028]:8+280]:8+312]:8+184]:8) < a3(=[[[[0x1028]:8+280]:8+312]:8+176]:8+12) (unsigned) and falls through when a2(=[[[[0x1028]:8+280]:8+312]:8+184]:8) >= a3(=[[[[0x1028]:8+280]:8+312]:8+176]:8+12) (unsigned).
  At `beq` at 0x21750d0 (target 0x21750e4), taken when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0 and falls through when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  At `beq` at 0x21750ec (target 0x2175118), taken when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) == 0 and falls through when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) != 0.
  Returns v0 = 0x0 (`jr` at 0x2175110).
  Returns v0 = ? (`jr` at 0x2175120).

- `InitBuffers` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21abea0 (n64).
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x21abea0-0x21ac0a4 (516 bytes).
  Stores 8 bytes from a3 to a0 (arg0 at entry) +0x9950 (`sd` at 0x21abeb8) with value a0+39264.
  Stores 8 bytes from a3 to a0 (arg0 at entry) +0x4720 (`sd` at 0x21abecc) with value a0+39264.
  Stores 8 bytes from t9 to a0 (arg0 at entry) +0x9958 (`sd` at 0x21abed8) with value a0+39600.
  Stores 8 bytes from t9 to a0 (arg0 at entry) +0x4718 (`sd` at 0x21abee8) with value a0+39600.
  Stores 4 bytes from a4 to a0 (arg0 at entry) +0x1458 (`sw` at 0x21abf94) with value -0x1.
  Stores 1 bytes from a2 to a0 (arg0 at entry) +0x1454 (`sb` at 0x21abfa0) with value 0x1.
  Stores 4 bytes from a2 to a0 (arg0 at entry) +0x9d5c (`sw` at 0x21abfe4) with value 0x1ffff800.
  Stores 8 bytes from a3 to a0 (arg0 at entry) +0x4718 (`sd` at 0x21ac02c) with value a0+39264.
  Calls `__glOdysseyInitCI [0x21a86b0]` via direct with a0=a0+39264, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a0+39264 (`bgezall` at 0x21abef4).
  Calls `__glOdysseyInitCI [0x21a86b0]` via direct with a0=[a0+39256]:8, a1=a0 at entry (arg0), a2=?, a3=? (`bgezall` at 0x21abf04).
  Calls `__glOdysseyInitCI [0x21a86b0]` via direct with a0=?, a1=a0 at entry (arg0), a2=?, a3=? (`bgezall` at 0x21abf44).
  Calls `__glOdysseyInitRGB [0x220f2a0]` via register-constant with a0=?, a1=a0 at entry (arg0), a2=?, a3=? (`jalr` at 0x21abf74).
  Calls `__glOdysseyInitAccum [0x2199f60]` via register-constant with a0=a0+40368, a1=a0 at entry (arg0), a2=0x1, a3=[a0+3560]:1, a4=-0x1 (`jalr` at 0x21abfb0).
  Calls `__glInitDepth [0x227db10]` via register-constant with a0=a0+40160, a1=a0 at entry (arg0), a2=?, a3=? (`jalr` at 0x21abfd4).
  Calls `__glInitStencil8 [0x22b5940]` via register-constant with a0=a0+39944, a1=a0 at entry (arg0), a2=0x1ffff800, a3=? (`jalr` at 0x21abffc).
  Calls `__glUpdateDepthRange [0x22e6060]` via register-constant with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x21ac008).
  Calls `__glOdysseyInitCI [0x21a86b0]` via direct with a0=a0+39264, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a0+39264 (`bgezall` at 0x21ac040).
  Calls `__glOdysseyInitRGB [0x220f2a0]` via register-constant with a0=a0+39264, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a0+39264 (`jalr` at 0x21ac058).
  Calls `__glOdysseyInitRGB [0x220f2a0]` via register-constant with a0=[a0+39256]:8, a1=a0 at entry (arg0), a2=?, a3=? (`jalr` at 0x21ac068).
  Calls `__glOdysseyInitRGB [0x220f2a0]` via register-constant with a0=a0+39264, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a0+39264 (`jalr` at 0x21ac094).
  At `beq` at 0x21abec8 (target 0x21ac028), taken when at(=[a0+3558]:1) == 0 and falls through when at(=[a0+3558]:1) != 0.
  At `beq` at 0x21abee4 (target 0x21ac050), taken when t8(=[a0+3557]:1) == 0 and falls through when t8(=[a0+3557]:1) != 0.
  At `blez` at 0x21abf10 (target 0x21abf8c), taken when a0(=[a0+3632]) <= 0 (signed) and falls through when a0(=[a0+3632]) > 0 (signed).
  At `beq` at 0x21abf50 (target 0x21abf84), taken when s1(?) == s3(=((((([a0+3632] << 0x2) + [a0+3632]) << 0x2) + [a0+3632]) << 0x4)) and falls through when s1(?) != s3(=((((([a0+3632] << 0x2) + [a0+3632]) << 0x2) + [a0+3632]) << 0x4)).
  At `bne` at 0x21abf68 (target 0x21abf40), taken when a1(=[a0+3557]:1) != 0 and falls through when a1(=[a0+3557]:1) == 0.
  At `beq` at 0x21abf9c (target 0x21abfc0), taken when a3(=[a0+3560]:1) == 0 and falls through when a3(=[a0+3560]:1) != 0.
  At `beq` at 0x21abfb8 (target 0x21ac078), taken when v0(=ret(__glOdysseyInitAccum)) == 0 and falls through when v0(=ret(__glOdysseyInitAccum)) != 0.
  At `beq` at 0x21abfc4 (target 0x21abfdc), taken when a1(=[a0+3561]:1) == 0 and falls through when a1(=[a0+3561]:1) != 0.
  At `beq` at 0x21abfec (target 0x21ac004), taken when a1(=[a0+3562]:1) == 0 and falls through when a1(=[a0+3562]:1) != 0.
  At `beq` at 0x21ac030 (target 0x21ac08c), taken when a1(=[a0+3557]:1) == 0 and falls through when a1(=[a0+3557]:1) != 0.
  Returns v0 = 0x1; f0 = ret(__glUpdateDepthRange) (`jr` at 0x21ac020).
  Returns v0 = 0x0; f0 = ret(__glOdysseyInitAccum) (`jr` at 0x21ac084).
  The instructions from 0x21abf3c to 0x21abf3c are not reached by any path from the entry, and their branches are not listed.

- `SphereGen` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22366f0 (n64).
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22366f0-0x22367ec (252 bytes).
  Stores 4 bytes from $f13 to a2 (arg2 at entry) +0x0 (`swc1` at 0x22367a8).
  Stores 4 bytes from $f11 to a2 (arg2 at entry) +0x4 (`swc1` at 0x22367c0).
  Stores 4 bytes from $f5 to a2 (arg2 at entry) +0x0 (`swc1` at 0x22367d0) with value [a0+3880].
  Stores 4 bytes from $f14 to a2 (arg2 at entry) +0x4 (`swc1` at 0x22367dc) with value [a0+3880].
  Calls `(unknown callee)` via register with a0=sp-48, a1=a1+104, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x2236718).
  Calls `Dot [0x22366c0]` via direct with a0=a1+40, a1=sp-48, a2=?, a3=? (`bgezall` at 0x223672c).
  At `bc3fl` at 0x2236754 (target 0x2237038), taken when (condition not decoded) -> outside and falls through when (condition not decoded).
  At `bc1t` at 0x2236794 (target 0x22367d0), taken when f6 == f0(=ret(Dot)) (c.eq.s at 0x2236788) and falls through when not (f6 == f0(=ret(Dot)) (c.eq.s at 0x2236788)).
  Returns v0 = ret(Dot); f0 = ret(Dot) (`jr` at 0x22367c8).
  Returns v0 = ret(Dot); f0 = ret(Dot) (`jr` at 0x22367e4).

- `__glce_AreTexturesResident` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x23142f0 (n64).
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x23142f0-0x2314340 (80 bytes).
  Stores 8 bytes from at to abs 0x1a58 (`sd` at 0x2314320) with value [[0x1020]:8+16928]:8.
  Stores 8 bytes from s8 to abs 0x1a58 (`sd` at 0x2314330) with value [0x1a58]:8.
  Calls `glAreTexturesResident` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x231431c).
  Returns v0 = ?; f0 = ret(glAreTexturesResident) (`jr` at 0x2314338).

- `__glce_DeleteTextures` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2314340 (n64).
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2314340-0x231438c (76 bytes).
  Stores 8 bytes from at to abs 0x1a60 (`sd` at 0x2314370) with value [[0x1020]:8+16936]:8.
  Stores 8 bytes from s8 to abs 0x1a60 (`sd` at 0x231437c) with value [0x1a60]:8.
  Calls `glDeleteTextures` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x231436c).
  Returns v0 = ret(glDeleteTextures); f0 = ret(glDeleteTextures) (`jr` at 0x2314384).

- `__glce_GenTextures` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2314390 (n64).
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2314390-0x23143dc (76 bytes).
  Stores 8 bytes from at to abs 0x1a68 (`sd` at 0x23143c0) with value [[0x1020]:8+16944]:8.
  Stores 8 bytes from s8 to abs 0x1a68 (`sd` at 0x23143cc) with value [0x1a68]:8.
  Calls `glGenTextures` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x23143bc).
  Returns v0 = ret(glGenTextures); f0 = ret(glGenTextures) (`jr` at 0x23143d4).

- `__glce_IsTexture` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x23143e0 (n64).
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x23143e0-0x2314430 (80 bytes).
  Stores 8 bytes from at to abs 0x1a70 (`sd` at 0x2314410) with value [[0x1020]:8+16952]:8.
  Stores 8 bytes from s8 to abs 0x1a70 (`sd` at 0x2314420) with value [0x1a70]:8.
  Calls `glIsTexture` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x231440c).
  Returns v0 = ?; f0 = ret(glIsTexture) (`jr` at 0x2314428).

- `glBindTexture` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318da0 (n64).
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318da0-0x2318dac (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318da4).

- `glBindTextureEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318da0 (n64).
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318da0-0x2318dac (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318da4).

- `glPrioritizeTextures` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318dd0 (n64).
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318dd0-0x2318ddc (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318dd4).

- `glPrioritizeTexturesEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318dd0 (n64).
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318dd0-0x2318ddc (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318dd4).

- `glAreTexturesResident` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4999d4 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb4999d4-0xb4999e0 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb4999d8).

- `glAreTexturesResidentEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4999d4 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb4999d4-0xb4999e0 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb4999d8).

- `glBindTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4999e0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb4999e0-0xb4999ec (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb4999e4).

- `glBindTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4999e0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb4999e0-0xb4999ec (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb4999e4).

- `glDeleteTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4999ec (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb4999ec-0xb4999f8 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb4999f0).

- `glDeleteTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4999ec (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb4999ec-0xb4999f8 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb4999f0).

- `glGenTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4999f8 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb4999f8-0xb499a04 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb4999fc).

- `glGenTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4999f8 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb4999f8-0xb499a04 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb4999fc).

- `glIsTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499a04 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb499a04-0xb499a10 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb499a08).
- `glIsTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499a04 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb499a04-0xb499a10 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb499a08).

- `glPrioritizeTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499a10 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb499a10-0xb499a1c (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb499a14).

- `glPrioritizeTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499a10 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb499a10-0xb499a1c (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb499a14).

- `glAreTexturesResident` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bc4 (o32).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bc4-0xdba6bd0 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bc8).

- `glAreTexturesResidentEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bc4 (o32).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bc4-0xdba6bd0 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bc8).

- `glBindTexture` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bd0 (o32).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bd0-0xdba6bdc (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bd4).

- `glBindTextureEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bd0 (o32).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bd0-0xdba6bdc (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bd4).

- `glDeleteTextures` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bdc (o32).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bdc-0xdba6be8 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6be0).

- `glDeleteTexturesEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bdc (o32).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bdc-0xdba6be8 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6be0).

- `glGenTextures` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6be8 (o32).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6be8-0xdba6bf4 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bec).

- `glGenTexturesEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6be8 (o32).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6be8-0xdba6bf4 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bec).

- `glIsTexture` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bf4 (o32).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bf4-0xdba6c00 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bf8).

- `glIsTextureEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bf4 (o32).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bf4-0xdba6c00 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bf8).

- `glPrioritizeTextures` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6c00 (o32).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6c00-0xdba6c0c (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6c04).

- `glPrioritizeTexturesEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6c00 (o32).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6c00-0xdba6c0c (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6c04).

- `glAreTexturesResident` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad364 (n32).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad364-0xdbad370 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad368).

- `glAreTexturesResidentEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad364 (n32).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad364-0xdbad370 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad368).

- `glBindTexture` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad370 (n32).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad370-0xdbad37c (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad374).

- `glBindTextureEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad370 (n32).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad370-0xdbad37c (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad374).

- `glDeleteTextures` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad37c (n32).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad37c-0xdbad388 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad380).

- `glDeleteTexturesEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad37c (n32).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad37c-0xdbad388 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad380).

- `glGenTextures` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad388 (n32).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad388-0xdbad394 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad38c).

- `glGenTexturesEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad388 (n32).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad388-0xdbad394 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad38c).

- `glIsTexture` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad394 (n32).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad394-0xdbad3a0 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad398).

- `glIsTextureEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad394 (n32).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad394-0xdbad3a0 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad398).
- `glPrioritizeTextures` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad3a0 (n32).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad3a0-0xdbad3ac (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad3a4).

- `glPrioritizeTexturesEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad3a0 (n32).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad3a0-0xdbad3ac (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad3a4).

- `InitBuffers` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbd5b6b0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbd5b6b0-0xbd5b8b4 (516 bytes).
  Stores 8 bytes from a3 to a0 (arg0 at entry) +0x9a28 (`sd` at 0xbd5b6c8) with value a0+39480.
  Stores 8 bytes from a3 to a0 (arg0 at entry) +0x4578 (`sd` at 0xbd5b6e4) with value a0+39480.
  Stores 8 bytes from v0 to a0 (arg0 at entry) +0x9a30 (`sd` at 0xbd5b6e8) with value a0+39816.
  Stores 8 bytes from v0 to a0 (arg0 at entry) +0x4570 (`sd` at 0xbd5b6f8) with value a0+39816.
  Stores 4 bytes from v1 to a0 (arg0 at entry) +0x1460 (`sw` at 0xbd5b7a4) with value -0x1.
  Stores 1 bytes from at to a0 (arg0 at entry) +0x145c (`sb` at 0xbd5b7b0) with value 0x1.
  Stores 4 bytes from at to a0 (arg0 at entry) +0x9e34 (`sw` at 0xbd5b7f4) with value 0x1ffff800.
  Stores 8 bytes from a3 to a0 (arg0 at entry) +0x4570 (`sd` at 0xbd5b844) with value a0+39480.
  Calls `__glOdysseyInitCI [0xbd58440]` via direct with a0=a0+39480, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a0+39480 (`bgezall` at 0xbd5b704).
  Calls `__glOdysseyInitCI [0xbd58440]` via direct with a0=[a0+39472]:8, a1=a0 at entry (arg0), a2=?, a3=? (`bgezall` at 0xbd5b714).
  Calls `__glOdysseyInitCI [0xbd58440]` via direct with a0=?, a1=a0 at entry (arg0), a2=[a0+3565]:1, a3=? (`bgezall` at 0xbd5b754).
  Calls `__glOdysseyInitRGB [0xbdb3720]` via register-constant with a0=?, a1=a0 at entry (arg0), a2=[a0+3565]:1, a3=? (`jalr` at 0xbd5b784).
  Calls `__glOdysseyInitAccum [0xbd4ad90]` via register-constant with a0=a0+40584, a1=a0 at entry (arg0), a2=?, a3=? (`jalr` at 0xbd5b7c0).
  Calls `__glInitDepth [0xbe1c0a0]` via register-constant with a0=a0+40376, a1=a0 at entry (arg0), a2=[a0+3569]:1, a3=? (`jalr` at 0xbd5b7e4).
  Calls `__glInitStencil8 [0xbe54f40]` via register-constant with a0=a0+40160, a1=a0 at entry (arg0), a2=[a0+3570]:1, a3=? (`jalr` at 0xbd5b80c).
  Calls `__glUpdateDepthRange [0xbe86170]` via register-constant with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xbd5b818).
  Calls `__glOdysseyInitCI [0xbd58440]` via direct with a0=a0+39480, a1=a0 at entry (arg0), a2=[a0+3565]:1, a3=a0+39480 (`bgezall` at 0xbd5b850).
  Calls `__glOdysseyInitRGB [0xbdb3720]` via register-constant with a0=a0+39480, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a0+39480 (`jalr` at 0xbd5b868).
  Calls `__glOdysseyInitRGB [0xbdb3720]` via register-constant with a0=[a0+39472]:8, a1=a0 at entry (arg0), a2=?, a3=? (`jalr` at 0xbd5b878).
  Calls `__glOdysseyInitRGB [0xbdb3720]` via register-constant with a0=a0+39480, a1=a0 at entry (arg0), a2=[a0+3565]:1, a3=a0+39480 (`jalr` at 0xbd5b8a4).
  At `beq` at 0xbd5b6e0 (target 0xbd5b838), taken when at(=[a0+3566]:1) == 0 and falls through when at(=[a0+3566]:1) != 0.
  At `beq` at 0xbd5b6f4 (target 0xbd5b860), taken when at(=[a0+3565]:1) == 0 and falls through when at(=[a0+3565]:1) != 0.
  At `blez` at 0xbd5b724 (target 0xbd5b79c), taken when a0(=[a0+3640]) <= 0 (signed) and falls through when a0(=[a0+3640]) > 0 (signed).
  At `beq` at 0xbd5b760 (target 0xbd5b794), taken when s2(?) == s4(=((((([a0+3640] << 0x2) + [a0+3640]) << 0x2) + [a0+3640]) << 0x4)) and falls through when s2(?) != s4(=((((([a0+3640] << 0x2) + [a0+3640]) << 0x2) + [a0+3640]) << 0x4)).
  At `bne` at 0xbd5b778 (target 0xbd5b750), taken when a2(=[a0+3565]:1) != 0 and falls through when a2(=[a0+3565]:1) == 0.
  At `beq` at 0xbd5b7ac (target 0xbd5b7d0), taken when v0(=[a0+3568]:1) == 0 and falls through when v0(=[a0+3568]:1) != 0.
  At `beq` at 0xbd5b7c8 (target 0xbd5b888), taken when v0(=ret(__glOdysseyInitAccum)) == 0 and falls through when v0(=ret(__glOdysseyInitAccum)) != 0.
  At `beq` at 0xbd5b7d4 (target 0xbd5b7ec), taken when a2(=[a0+3569]:1) == 0 and falls through when a2(=[a0+3569]:1) != 0.
  At `beq` at 0xbd5b7fc (target 0xbd5b814), taken when a2(=[a0+3570]:1) == 0 and falls through when a2(=[a0+3570]:1) != 0.
  At `beq` at 0xbd5b840 (target 0xbd5b89c), taken when a2(=[a0+3565]:1) == 0 and falls through when a2(=[a0+3565]:1) != 0.
  Returns v0 = 0x1; f0 = ret(__glUpdateDepthRange) (`jr` at 0xbd5b830).
  Returns v0 = 0x0; f0 = ret(__glOdysseyInitAccum) (`jr` at 0xbd5b894).

- `SphereGen` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbdd70b0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbdd70b0-0xbdd719c (236 bytes).
  Stores 4 bytes from $f2 to a2 (arg2 at entry) +0x0 (`swc1` at 0xbdd7168).
  Stores 4 bytes from $f0 to a2 (arg2 at entry) +0x4 (`swc1` at 0xbdd7178).
  Stores 4 bytes from $f5 to a2 (arg2 at entry) +0x0 (`swc1` at 0xbdd7180) with value [a0+3888].
  Stores 4 bytes from $f3 to a2 (arg2 at entry) +0x4 (`swc1` at 0xbdd7188) with value [a0+3888].
  Calls `(unknown callee)` via register with a0=sp-80, a1=a1+108, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xbdd70d8).
  Calls `Dot [0xbdd7080]` via direct with a0=a1+44, a1=sp-80, a2=?, a3=? (`bgezall` at 0xbdd70ec).
  At `bc3f` at 0xbdd711c (target 0xbddba00), taken when (condition not decoded) -> outside and falls through when (condition not decoded).
  At `bc1t` at 0xbdd7154 (target 0xbdd717c), taken when f6 == f0(=0x0) (c.eq.s at 0xbdd7148) and falls through when not (f6 == f0(=0x0) (c.eq.s at 0xbdd7148)).
  Returns v0 = ret(Dot) (`jr` at 0xbdd7194).

- `glAreTexturesResident` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb99d4 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb99d4-0xbeb99e0 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb99d8).

- `glAreTexturesResidentEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb99d4 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb99d4-0xbeb99e0 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb99d8).

- `glBindTexture` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb99e0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb99e0-0xbeb99ec (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb99e4).

- `glBindTextureEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb99e0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb99e0-0xbeb99ec (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb99e4).

- `glDeleteTextures` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb99ec (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb99ec-0xbeb99f8 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb99f0).

- `glDeleteTexturesEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb99ec (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb99ec-0xbeb99f8 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb99f0).

- `glGenTextures` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb99f8 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb99f8-0xbeb9a04 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb99fc).

- `glGenTexturesEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb99f8 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb99f8-0xbeb9a04 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb99fc).

- `glIsTexture` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb9a04 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb9a04-0xbeb9a10 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb9a08).

- `glIsTextureEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb9a04 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb9a04-0xbeb9a10 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb9a08).

- `glPrioritizeTextures` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb9a10 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb9a10-0xbeb9a1c (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb9a14).

- `glPrioritizeTexturesEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb9a10 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb9a10-0xbeb9a1c (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb9a14).

- `doFinishRegionDragCallback__21GammaMapEditorClassUISGP10_WidgetRecP7_XEventPPcPUi` in `usr/bin/X11/xsetmon` at 0x100225d0 (n32).
  Evidence grade: established.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100225d0-0x10022640 (112 bytes).
  Calls `XtVaGetValues` via got with a0=a0 at entry (arg0), a1=-0xa, a2=sp-48, a3=0x0 (`jalr` at 0x10022604).
  Calls `(unknown callee)` via register with a0=?, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=? (`jalr` at 0x10022624).
  Returns v0 = ret(?); f0 = ret(?) (`jr` at 0x10022638).

- `saveSettingsFileCallback__18XSetmonWindowClassSGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10024460 (n32).
  Evidence grade: established.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10024460-0x100244a4 (68 bytes).
  Calls `(unknown callee)` via register with a0=([[a1+8]+432] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x3449c (`jalr` at 0x1002448c).
  Returns v0 = ret(?); f0 = ret(?) (`jr` at 0x1002449c).

- `doDragRegion__21GammaMapEditorClassUIGP10_WidgetRecP7_XEvent` in `usr/bin/X11/xsetmon` at 0x10024720 (n32).
  Evidence grade: established.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10024720-0x10024728 (8 bytes).
  Returns v0 = ? (`jr` at 0x10024720).

- `doArmRegionDragCallback__21GammaMapEditorClassUISGP10_WidgetRecP7_XEventPPcPUi` in `usr/bin/X11/xsetmon` at 0x10024f00 (n32).
  Evidence grade: established.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10024f00-0x10024f70 (112 bytes).
  Calls `XtVaGetValues` via got with a0=a0 at entry (arg0), a1=-0xa, a2=sp-48, a3=0x0 (`jalr` at 0x10024f34).
  Calls `(unknown callee)` via register with a0=?, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=? (`jalr` at 0x10024f54).
  Returns v0 = ret(?); f0 = ret(?) (`jr` at 0x10024f68).

- `saveSettingsFile__18XSetmonWindowClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10024f80 (n32).
  Evidence grade: established.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10024f80-0x1002504c (204 bytes).
  Stores 4 bytes from v0 to [sym(xsetmonApp)] +0x88 (`sw` at 0x10025028) with value ret(strdup).
  Calls `getTheFileSelectionDialog__Gv` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x10024f9c).
  Calls `(unknown callee)` via register with a0=([[ret(getTheFileSelectionDialog__Gv)+8]+264] + ret(getTheFileSelectionDialog__Gv)), a1=0x0, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0 (`jalr` at 0x10024fcc).
  Calls `free` via got with a0=[[sym(xsetmonApp)]+136], a1=0x1, a2=?, a3=? (`jalr` at 0x10024ff8).
  Calls `getTheFileSelectionDialog__Gv` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x10025004).
  Calls `strdup` via got with a0=[ret(getTheFileSelectionDialog__Gv)+84], a1=?, a2=?, a3=? (`jalr` at 0x10025010).
  Calls `saveData__21MasterTabbedDeckClassGPCc [0x1002c050]` via direct with a0=[a0+68], a1=[[sym(xsetmonApp)]+136], a2=[sym(xsetmonApp)], a3=? (`jal` at 0x10025034).
  At `bne` at 0x10024fd8 (target 0x10025040), taken when v0(=ret(?)) != a1(=0x1) and falls through when v0(=ret(?)) == a1(=0x1).
  At `beq` at 0x10024fec (target 0x10025004), taken when a0(=[[sym(xsetmonApp)]+136]) == 0 and falls through when a0(=[[sym(xsetmonApp)]+136]) != 0.
  Returns v0 = ? (`jr` at 0x10025044).

- `RegisterGammaAssignmentClassInterface__20GammaAssignmentClassSGv` in `usr/bin/X11/xsetmon` at 0x100258a0 (n32).
  Evidence grade: established.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100258a0-0x100258b8 (24 bytes).
  Returns v0 = 0x1004d670 (`jr` at 0x100258b0).

- `unregisterChild__12MyTabbedDeckGP11VkComponentPCc` in `usr/bin/X11/xsetmon` at 0x10025b40 (n32).
  Evidence grade: established.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10025b40-0x10025bbc (124 bytes).
  Calls `baseWidget__11VkComponentCGv` via got with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x10025b68).
  Calls `VkGetResource__GP10_WidgetRecPCcN32` via got with a0=ret(baseWidget__11VkComponentCGv), a1=0x10049590, a2=0x100495a0, a3=-0x1a, a4=a2 at entry (arg2) (`jalr` at 0x10025b8c).
  Calls `removeTab__10VkTabPanelGPc` via got with a0=[a0+36], a1=ret(VkGetResource__GP10_WidgetRecPCcN32), a2=?, a3=? (`jalr` at 0x10025ba4).
  Returns v0 = ret(removeTab__10VkTabPanelGPc); f0 = ret(removeTab__10VkTabPanelGPc) (`jr` at 0x10025bb4).

- `RegisterGammaMapEditorClassInterface__19GammaMapEditorClassSGv` in `usr/bin/X11/xsetmon` at 0x10026b00 (n32).
  Evidence grade: established.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10026b00-0x10026b18 (24 bytes).
  Returns v0 = 0x1004dcd8 (`jr` at 0x10026b10).

- `doResetEditing__18XSetmonWindowClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10026e80 (n32).
  Evidence grade: established.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10026e80-0x10026eb4 (52 bytes).
  Calls `resetEditing__21MasterTabbedDeckClassGv [0x100394b0]` via direct with a0=[a0+68], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x10026e9c).
  Returns v0 = ret(resetEditing__21MasterTabbedDeckClassGv); f0 = ret(resetEditing__21MasterTabbedDeckClassGv) (`jr` at 0x10026eac).
- `__ct__18XSetmonWindowClassGPCcP3ArgUi` in `usr/bin/X11/xsetmon` at 0x10027170 (n32).
  Evidence grade: established.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10027170-0x10027490 (800 bytes).
  Stores 4 bytes from v1 to a0 (arg0 at entry) +0x8 (`sw` at 0x100271a4) with value sym(__vtbl__18XSetmonWindowClass).
  Stores 4 bytes from a0 to a0 (arg0 at entry) +0x44 (`sw` at 0x10027230).
  Stores 4 bytes from v0 to a0 (arg0 at entry) +0x48 (`sw` at 0x100272c8) with value ret(addMenuPane__8VkWindowGPCc).
  Stores 4 bytes from v0 to a0 (arg0 at entry) +0x4c (`sw` at 0x100272e8) with value ret(addSeparator__6VkMenuGi).
  Stores 4 bytes from v0 to a0 (arg0 at entry) +0x50 (`sw` at 0x10027314) with value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi).
  Stores 4 bytes from v0 to a0 (arg0 at entry) +0x54 (`sw` at 0x10027340) with value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi).
  Stores 4 bytes from v0 to a0 (arg0 at entry) +0x5c (`sw` at 0x10027368) with value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi).
  Stores 4 bytes from v0 to a0 (arg0 at entry) +0x58 (`sw` at 0x10027388) with value ret(addSeparator__6VkMenuGi).
  Stores 4 bytes from v0 to a0 (arg0 at entry) +0x60 (`sw` at 0x100273b4) with value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi).
  Stores 4 bytes from v0 to a0 (arg0 at entry) +0x64 (`sw` at 0x100273d0) with value ret(addMenuPane__8VkWindowGPCc).
  Stores 4 bytes from v0 to a0 (arg0 at entry) +0x6c (`sw` at 0x10027418) with value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi).
  Stores 4 bytes from a0 to [sym(theApplication)] +0x50 (`sw` at 0x10027460).
  Stores 4 bytes from zero to [sym(theApplication)] +0x50 (`sw` at 0x10027480) with value 0x0.
  Calls `__ct__8VkWindowGPCcP3ArgUi` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x10027190).
  Calls `baseWidget__11VkComponentCGv` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x100271a8).
  Calls `setDefaultResources__11VkComponentGP10_WidgetRecPCPc` via got with a0=a0 at entry (arg0), a1=ret(baseWidget__11VkComponentCGv), a2=sym(_defaultXSetmonWindowClassResources__18XSetmonWindowClass), a3=? (`jalr` at 0x100271bc).
  Calls `__nw__GUi` via got with a0=0x44, a1=?, a2=?, a3=? (`jalr` at 0x100271cc).
  Calls `(unknown callee)` via register with a0=([[a0+8]+228] + a0), a1=a0 at entry (arg0), a2=?, a3=? (`jalr` at 0x100271f8).
  Calls `__ct__21MasterTabbedDeckClassGPCcP10_WidgetRec [0x1002e390]` via direct with a0=?, a1=0x10048818, a2=ret(?), a3=? (`jal` at 0x10027210).
  Calls `strncmp` via got with a0=[sym(xsetmonApp)]+164, a1=0x100518f0, a2=0x4, a3=? (`jalr` at 0x10027254).
  Calls `baseWidget__11VkComponentCGv` via got with a0=[a0+68], a1=?, a2=?, a3=? (`jalr` at 0x10027270).
  Calls `XtVaSetValues` via got with a0=ret(baseWidget__11VkComponentCGv), a1=-0x17, a2=one of 0x2f8, 0x474, a3=-0x16, a4=0x2bc, a5=0x0 (`jalr` at 0x10027290).
  Calls `addView__14VkSimpleWindowGP11VkComponent` via got with a0=a0 at entry (arg0), a1=[a0+68], a2=?, a3=? (`jalr` at 0x100272a4).
  Calls `addMenuPane__8VkWindowGPCc` via got with a0=a0 at entry (arg0), a1=0x10048830, a2=?, a3=? (`jalr` at 0x100272b8).
  Calls `addSeparator__6VkMenuGi` via got with a0=[a0+72], a1=-0x1, a2=?, a3=? (`jalr` at 0x100272d4).
  Calls `addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi` via got with a0=[a0+72], a1=0x10048840, a2=sym(loadSettingsFileCallback__18XSetmonWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1 (`jalr` at 0x10027300).
  Calls `addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi` via got with a0=[a0+72], a1=0x10048858, a2=sym(saveSettingsFileCallback__18XSetmonWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1 (`jalr` at 0x1002732c).
  Calls `addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi` via got with a0=[a0+72], a1=0x10048870, a2=sym(closeCallback__18XSetmonWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1 (`jalr` at 0x10027358).
  Calls `addSeparator__6VkMenuGi` via got with a0=[a0+72], a1=-0x1, a2=?, a3=? (`jalr` at 0x10027374).
  Calls `addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi` via got with a0=[a0+72], a1=0x10048880, a2=sym(quitCallback__18XSetmonWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1 (`jalr` at 0x100273a0).
  Calls `addMenuPane__8VkWindowGPCc` via got with a0=a0 at entry (arg0), a1=0x10048890, a2=a0 at entry (arg0), a3=? (`jalr` at 0x100273bc).
  Calls `getTheUndoManager__Gv` via got with a0=?, a1=?, a2=?, a3=a0 at entry (arg0) (`jalr` at 0x100273cc).
  Calls `add__6VkMenuGP10VkMenuItemi` via got with a0=[a0+100], a1=ret(getTheUndoManager__Gv), a2=-0x1, a3=? (`jalr` at 0x100273e4).
  Calls `addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi` via got with a0=[a0+100], a1=0x100488a0, a2=sym(doResetEditingCallback__18XSetmonWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1 (`jalr` at 0x10027408).
  Calls `__nw__GUi` via got with a0=0x58, a1=?, a2=a0 at entry (arg0), a3=? (`jalr` at 0x10027420).
  Calls `__ct__16AboutDialogClassGPCc [0x1002e170]` via direct with a0=ret(__nw__GUi), a1=0x100488b0, a2=?, a3=0x1 (`jal` at 0x10027444).
  At `beq` at 0x100271d8 (target 0x10027228), taken when v0(=ret(__nw__GUi)) == 0 and falls through when v0(=ret(__nw__GUi)) != 0.
  At `bne` at 0x10027240 (target 0x10027264), taken when (a2(=[[sym(xsetmonApp)]+156]) & 0x2) != 0 and falls through when (a2(=[[sym(xsetmonApp)]+156]) & 0x2) == 0.
  At `bne` at 0x1002725c (target 0x10027268), taken when v0(=ret(strncmp)) != 0 and falls through when v0(=ret(strncmp)) == 0.
  At `beq` at 0x10027428 (target 0x10027470), taken when v0(=ret(__nw__GUi)) == 0 and falls through when v0(=ret(__nw__GUi)) != 0.
  Returns v0 = a0; f0 = ret(__ct__16AboutDialogClassGPCc) (`jr` at 0x10027468).
  Returns v0 = a0; f0 = ret(__nw__GUi) (`jr` at 0x10027488).

- `okToQuit__18XSetmonWindowClassGv` in `usr/bin/X11/xsetmon` at 0x10027690 (n32).
  Evidence grade: established.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10027690-0x100276d0 (64 bytes).
  Calls `(unknown callee)` via register with a0=([[[a0+68]+8]+72] + [a0+68]), a1=[a0+68], a2=0x3126c, a3=a3 at entry (arg3) (`jalr` at 0x100276b8).
  Returns v0 = ret(?); f0 = ret(?) (`jr` at 0x100276c8).

- `RegisterServerInfoFormClassInterface__19ServerInfoFormClassSGv` in `usr/bin/X11/xsetmon` at 0x10027c50 (n32).
  Evidence grade: established.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10027c50-0x10027c68 (24 bytes).
  Returns v0 = 0x1004e168 (`jr` at 0x10027c60).

- `RegisterAboutXsetmonFormClassInterface__21AboutXsetmonFormClassSGv` in `usr/bin/X11/xsetmon` at 0x10028fd0 (n32).
  Evidence grade: established.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10028fd0-0x10028fe8 (24 bytes).
  Returns v0 = 0x1004c620 (`jr` at 0x10028fe0).

- `className__18XSetmonWindowClassGv` in `usr/bin/X11/xsetmon` at 0x10029660 (n32).
  Evidence grade: established.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10029660-0x10029678 (24 bytes).
  Returns v0 = 0x100488c0 (`jr` at 0x10029670).

- `closeCallback__18XSetmonWindowClassSGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x1002a7b0 (n32).
  Evidence grade: established.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002a7b0-0x1002a7f4 (68 bytes).
  Calls `(unknown callee)` via register with a0=([[a1+8]+384] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x2e14c (`jalr` at 0x1002a7dc).
  Returns v0 = ret(?); f0 = ret(?) (`jr` at 0x1002a7ec).

- `close__18XSetmonWindowClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x1002b080 (n32).
  Evidence grade: established.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002b080-0x1002b124 (164 bytes).
  Calls `getTheTargetPromptDialog__Gv [0x1003df60]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1002b09c).
  Calls `(unknown callee)` via register with a0=([[ret(getTheTargetPromptDialog__Gv)+8]+264] + ret(getTheTargetPromptDialog__Gv)), a1=0x0, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0 (`jalr` at 0x1002b0cc).
  Calls `getTheTargetPromptDialog__Gv [0x1003df60]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1002b0dc).
  Calls `XmTextFieldGetString` via got with a0=[ret(getTheTargetPromptDialog__Gv)+84], a1=?, a2=?, a3=? (`jalr` at 0x1002b0e8).
  Calls `changeTargetDisplay__21MasterTabbedDeckClassGPc [0x10031540]` via direct with a0=[a0+68], a1=ret(XmTextFieldGetString), a2=?, a3=? (`jal` at 0x1002b100).
  Calls `free` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x1002b10c).
  At `beq` at 0x1002b0d4 (target 0x1002b114), taken when v0(=ret(?)) == 0 and falls through when v0(=ret(?)) != 0.
  Returns v0 = ? (`jr` at 0x1002b11c).

- `__dt__18XSetmonWindowClassGv` in `usr/bin/X11/xsetmon` at 0x1002b7b0 (n32).
  Evidence grade: established.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002b7b0-0x1002b840 (144 bytes).
  Stores 4 bytes from v0 to a0 (arg0 at entry) +0x8 (`sw` at 0x1002b7d8) with value sym(__vtbl__18XSetmonWindowClass).
  Calls `(unknown callee)` via register with a0=([[[a0+68]+8]+12] + [a0+68]), a1=0x3, a2=a2 at entry (arg2), a3=[a0+68] (`jalr` at 0x1002b7fc).
  Calls `__dt__8VkWindowGv` via got with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=? (`jalr` at 0x1002b80c).
  Calls `__dl__GPv` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x1002b828).
  At `beq` at 0x1002b7c8 (target 0x1002b830), taken when a0 == 0 and falls through when a0 != 0.
  At `beq` at 0x1002b7e4 (target 0x1002b80c), taken when a3(=[a0+68]) == 0 and falls through when a3(=[a0+68]) != 0.
  At `beq` at 0x1002b81c (target 0x1002b834), taken when (a1 & 0x1) == 0 and falls through when (a1 & 0x1) != 0.
  Returns v0 = ? (`jr` at 0x1002b838).

- `doDragRegion__19GammaMapEditorClassGP10_WidgetRecP7_XEvent` in `usr/bin/X11/xsetmon` at 0x1002c2c0 (n32).
  Evidence grade: established.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002c2c0-0x1002c610 (848 bytes).
  Stores 4 bytes from $f3 to ([a0+176] + ([a0+112] << 0x2)) +0x0 (`swc1` at 0x1002c404).
  Stores 4 bytes from $f2 to ([a0+180] + ([a0+112] << 0x2)) +0x0 (`swc1` at 0x1002c428).
  Stores 2 bytes from a0 to ? (base unknown) (`sh` at 0x1002c47c).
  Stores 4 bytes from a0 to a0 (arg0 at entry) +0x68 (`sw` at 0x1002c530) with value 0x1.
  Calls `vGammaToWindow__19GammaMapEditorClassCGiT1P6XPoint [0x1003a020]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=sp-72, a5=[a0+112] (`jal` at 0x1002c358).
  Calls `vWindowToGamma__19GammaMapEditorClassCGPC6XPointRiT2 [0x10027000]` via direct with a0=a0 at entry (arg0), a1=sp-80, a2=sp-64, a3=sp-60 (`jal` at 0x1002c3e0).
  Calls `vSplineFit__19GammaMapEditorClassCGiT1PCfT3Pf [0x10037b40]` via direct with a0=a0 at entry (arg0), a1=[a0+184], a2=[a0+188], a3=[a0+176], a4=[a0+180], a5=[a0+168] (`jal` at 0x1002c440).
  Calls `fSplineCalc__19GammaMapEditorClassCGiT1PfN23T1 [0x10033820]` via direct with a0=a0 at entry (arg0), a1=[a0+184], a2=[a0+188], a3=[a0+176], a4=[a0+180], a5=[a0+168] (`jal` at 0x1002c4ac).
  Calls `vClearScreen__19GammaMapEditorClassCGv [0x1002de60]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x1002c4ec).
  Calls `calculateDrawing__19GammaMapEditorClassGv [0x10026710]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x1002c4f8).
  Calls `redraw__19GammaMapEditorClassCGi [0x1002ad90]` via direct with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=? (`jal` at 0x1002c508).
  Calls `vDrawControlPoint__19GammaMapEditorClassCGPC6XPointP4_XGC [0x10030f10]` via direct with a0=a0 at entry (arg0), a1=sp-80, a2=[a0+76], a3=? (`jal` at 0x1002c51c).
  Calls `vGammaToWindow__19GammaMapEditorClassCGiT1P6XPoint [0x1003a020]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=sp-76, a5=[a0+112] (`jal` at 0x1002c594).
  Calls `vGammaToWindow__19GammaMapEditorClassCGiT1P6XPoint [0x1003a020]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=sp-68, a4=([a0+176] + ([a0+112] << 0x2)), a5=([a0+112] << 0x2), a6=([a0+180] + ([a0+112] << 0x2)) (`jal` at 0x1002c5e0).
  At `beq` at 0x1002c2dc (target 0x1002c540), taken when v0(=[a0+108]) == 0 and falls through when v0(=[a0+108]) != 0.
  At `beq` at 0x1002c304 (target 0x1002c560), taken when a5(=[a0+112]) == 0 and falls through when a5(=[a0+112]) != 0.
  At `beq` at 0x1002c314 (target 0x1002c560), taken when a5(=[a0+112]) == v1(=[a0+172]-1) and falls through when a5(=[a0+112]) != v1(=[a0+172]-1).
  At `beq` at 0x1002c31c (target 0x1002c388), taken when a5(=[a0+112]) == 0 and falls through when a5(=[a0+112]) != 0.
  At `bne` at 0x1002c36c (target 0x1002c384), taken when a2(?) < a0(?) (signed) and falls through when a2(?) >= a0(?) (signed).
  At `bne` at 0x1002c390 (target 0x1002c5ac), taken when a5(=[a0+112]) != a1(=[a0+172]-1) and falls through when a5(=[a0+112]) == a1(=[a0+172]-1).
  At `bltz` at 0x1002c398 (target 0x1002c550), taken when a2(?) < 0 (signed) and falls through when a2(?) >= 0 (signed).
  At `bne` at 0x1002c3a8 (target 0x1002c3b4), taken when a2(?) < a3(=[a0+150]:2) (signed) and falls through when a2(?) >= a3(=[a0+150]:2) (signed).
  At `bltz` at 0x1002c3b4 (target 0x1002c558), taken when a0(?) < 0 (signed) and falls through when a0(?) >= 0 (signed).
  At `bne` at 0x1002c3c4 (target 0x1002c3d0), taken when a0(?) < a2(=[a0+148]:2) (signed) and falls through when a0(?) >= a2(=[a0+148]:2) (signed).
  At `blez` at 0x1002c454 (target 0x1002c4dc), taken when ra(=[a0+84]) <= 0 (signed) and falls through when ra(=[a0+84]) > 0 (signed).
  At `beq` at 0x1002c470 (target 0x1002c47c), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0x1002c488 (target 0x1002c4dc), taken when s1(?) >= v0(=[a0+84]) (signed) and falls through when s1(?) < v0(=[a0+84]) (signed).
  At `bgez` at 0x1002c4cc (target 0x1002c470), taken when a0(?) >= 0 (signed) and falls through when a0(?) < 0 (signed).
  At `bgez` at 0x1002c550 (target 0x1002c3bc), taken when a0(?) >= 0 (signed) and falls through when a0(?) < 0 (signed).
  At `bne` at 0x1002c5f4 (target 0x1002c394), taken when a0(?) < a2(?) (signed) -> outside and falls through when a0(?) >= a2(?) (signed).
  Returns v0 = ret(vDrawControlPoint__19GammaMapEditorClassCGPC6XPointP4_XGC); f0 = ret(vDrawControlPoint__19GammaMapEditorClassCGPC6XPointP4_XGC) (`jr` at 0x1002c538).
  Returns v0 = [a0+108] (`jr` at 0x1002c548).
  The instructions from 0x1002c464 to 0x1002c46c are not reached by any path from the entry, and their branches are not listed.

- `loadData__18XSetmonWindowClassGPCc` in `usr/bin/X11/xsetmon` at 0x1002dcb0 (n32).
  Evidence grade: established.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002dcb0-0x1002ddd0 (288 bytes).
  Calls `getTheFileSelectionDialog__Gv` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x1002dce8).
  Calls `setSelection__21VkFileSelectionDialogGPCc` via got with a0=ret(getTheFileSelectionDialog__Gv), a1=a1 at entry (arg1), a2=?, a3=? (`jalr` at 0x1002dcf8).
  Calls `getcwd` via got with a0=0x0, a1=0x64, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x1002dd14).
  Calls `strlen` via got with a0=ret(getcwd), a1=?, a2=?, a3=? (`jalr` at 0x1002dd28).
  Calls `strlen` via got with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jalr` at 0x1002dd38).
  Calls `__nwa__GUi` via got with a0=(ret(strlen) + ret(strlen))+10, a1=?, a2=?, a3=? (`jalr` at 0x1002dd48).
  Calls `sprintf` via got with a0=ret(__nwa__GUi), a1=0x100518f8, a2=ret(getcwd), a3=a1 at entry (arg1) (`jalr` at 0x1002dd64).
  Calls `getTheFileSelectionDialog__Gv` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x1002dd70).
  Calls `setSelection__21VkFileSelectionDialogGPCc` via got with a0=ret(getTheFileSelectionDialog__Gv), a1=ret(__nwa__GUi), a2=?, a3=? (`jalr` at 0x1002dd80).
  Calls `free` via got with a0=ret(getcwd), a1=?, a2=?, a3=? (`jalr` at 0x1002dd8c).
  Calls `__dla__GPv` via got with a0=ret(__nwa__GUi), a1=?, a2=?, a3=? (`jalr` at 0x1002dd98).
  Calls `loadData__21MasterTabbedDeckClassGPCc [0x1002b910]` via direct with a0=[a0+68], a1=a1 at entry (arg1), a2=?, a3=? (`jal` at 0x1002ddb4).
  At `bne` at 0x1002dcdc (target 0x1002dd08), taken when at(=[a1]:1) != v0(=0x2f) and falls through when at(=[a1]:1) == v0(=0x2f).
  Returns v0 = ret(loadData__21MasterTabbedDeckClassGPCc); f0 = ret(loadData__21MasterTabbedDeckClassGPCc) (`jr` at 0x1002ddc8).

- `quitCallback__18XSetmonWindowClassSGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x1002e9f0 (n32).
  Evidence grade: established.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002e9f0-0x1002ea34 (68 bytes).
  Calls `(unknown callee)` via register with a0=([[a1+8]+420] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x29f0c (`jalr` at 0x1002ea1c).
  Returns v0 = ret(?); f0 = ret(?) (`jr` at 0x1002ea2c).

- `doFinishRegionDrag__19GammaMapEditorClassGP10_WidgetRecP7_XEvent` in `usr/bin/X11/xsetmon` at 0x100327e0 (n32).
  Evidence grade: established.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100327e0-0x10032934 (340 bytes).
  Stores 4 bytes from zero to a0 (arg0 at entry) +0x6c (`sw` at 0x100327e0) with value 0x0.
  Calls `(unknown callee)` via register with a0=([[[sym(xsetmonApp)]+8]+288] + [sym(xsetmonApp)]), a1=0x0, a2=0x0, a3=[sym(xsetmonApp)] (`jalr` at 0x10032828).
  Calls `XSGIvcStoreGammaColors16` via got with a0=[[sym(xsetmonApp)]+312], a1=[[sym(xsetmonApp)]+316], a2=[[a0+88]], a3=[a0+84], a4=[a0+96], a5=[a0+80] (`jalr` at 0x10032854).
  Calls `XSync` via got with a0=[[sym(xsetmonApp)]+312], a1=0x0, a2=?, a3=? (`jalr` at 0x1003286c).
  Calls `__nw__GUi` via got with a0=0x14, a1=?, a2=?, a3=? (`jalr` at 0x1003287c).
  Calls `__ct__13GammaEditUndoGP19GammaMapEditorClass [0x1002e2e0]` via direct with a0=ret(__nw__GUi), a1=a0 at entry (arg0), a2=?, a3=? (`jal` at 0x1003289c).
  Calls `getTheUndoManager__Gv` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x100328bc).
  Calls `VkGetResource__GPCcT1` via got with a0=0x100459a0, a1=0x100459a0, a2=?, a3=? (`jalr` at 0x100328d4).
  Calls `add__17VkMenuUndoManagerGPCcPGP10_WidgetRecPvT2_vPv` via got with a0=?, a1=ret(VkGetResource__GPCcT1), a2=sym(vPerformUndo__13GammaEditUndoSGPvT1), a3=? (`jalr` at 0x100328ec).
  Calls `(unknown callee)` via register with a0=([[[sym(xsetmonApp)]+8]+312] + [sym(xsetmonApp)]), a1=[sym(xsetmonApp)], a2=?, a3=? (`jalr` at 0x10032908).
  Calls `redraw__19GammaMapEditorClassCGi [0x1002ad90]` via direct with a0=a0 at entry (arg0), a1=0x1, a2=?, a3=? (`jal` at 0x10032918).
  At `beq` at 0x10032804 (target 0x10032910), taken when at(=[a0+104]) == 0 and falls through when at(=[a0+104]) != 0.
  At `beq` at 0x10032888 (target 0x100328b4), taken when v0(=ret(__nw__GUi)) == 0 and falls through when v0(=ret(__nw__GUi)) != 0.
  Returns v0 = ret(redraw__19GammaMapEditorClassCGi); f0 = ret(redraw__19GammaMapEditorClassCGi) (`jr` at 0x1003292c).

- `RegisterGainControlClassInterface__16GainControlClassSGv` in `usr/bin/X11/xsetmon` at 0x100329c0 (n32).
  Evidence grade: established.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100329c0-0x100329d8 (24 bytes).
  Returns v0 = 0x1004d390 (`jr` at 0x100329d0).

- `quit__18XSetmonWindowClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10032d10 (n32).
  Evidence grade: established.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10032d10-0x10032d54 (68 bytes).
  Calls `(unknown callee)` via register with a0=([[[sym(theApplication)]+8]+192] + [sym(theApplication)]), a1=[sym(theApplication)], a2=0x25bec, a3=a3 at entry (arg3) (`jalr` at 0x10032d3c).
  Returns v0 = ret(?); f0 = ret(?) (`jr` at 0x10032d4c).

- `populateAssignmentWindow__22GammaAssignmentClassUIGP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x10033170 (n32).
  Evidence grade: established.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10033170-0x10033820 (1712 bytes).
  Stores 4 bytes from v0 to a0 (arg0 at entry) +0x38 (`sw` at 0x10033208) with value ret(__nwa__GUi).
  Stores 4 bytes from v0 to a0 (arg0 at entry) +0x3c (`sw` at 0x10033220) with value ret(__nwa__GUi).
  Stores 4 bytes from a0 to ? (base unknown) (`sw` at 0x10033258).
  Stores 4 bytes from v0 to ? (base unknown) (`sw` at 0x10033290) with value ret(__nwa__GUi).
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x100332ac) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x100332d0) with value 0x0.
  Stores 4 bytes from s0 to ret(__nw__GUi) +0x8 (`sw` at 0x10033378).
  Stores 4 bytes from s6 to ret(__nw__GUi) +0x4 (`sw` at 0x10033384).
  Stores 4 bytes from s3 to ret(__nw__GUi) +0x0 (`sw` at 0x10033390) with value a0.
  Stores 4 bytes from v0 to ? (base unknown) (`sw` at 0x100333ac) with value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi).
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x10033638) with value 0x0.
  Calls `XSGIvcQueryScreenGammaMaps` via got with a0=[[sym(xsetmonApp)]+312], a1=[[sym(xsetmonApp)]+316], a2=a0+64, a3=a3 at entry (arg3) (`jalr` at 0x100331a8).
  Calls `XtUnmanageChild` via got with a0=[a0+44], a1=?, a2=?, a3=? (`jalr` at 0x100331e0).
  Calls `__nwa__GUi` via got with a0=([[sym(xsetmonApp)]+152] << 0x3), a1=?, a2=?, a3=? (`jalr` at 0x100331f8).
  Calls `__nwa__GUi` via got with a0=([[sym(xsetmonApp)]+152] << 0x2), a1=?, a2=?, a3=? (`jalr` at 0x10033214).
  Calls `baseWidget__10VkMenuItemCGv` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x10033254).
  Calls `XtVaSetValues` via got with a0=ret(baseWidget__10VkMenuItemCGv), a1=-0x7, a2=ret(XmStringCreateSimple), a3=0x0 (`jalr` at 0x1003326c).
  Calls `XmStringFree` via got with a0=ret(XmStringCreateSimple), a1=?, a2=?, a3=? (`jalr` at 0x10033278).
  Calls `__nwa__GUi` via got with a0=([a0+64] << 0x2), a1=?, a2=?, a3=? (`jalr` at 0x10033288).
  Calls `XSGIvcQueryChannelInfo` via got with a0=[[sym(xsetmonApp)]+312], a1=[[sym(xsetmonApp)]+316], a2=?, a3=sp-128 (`jalr` at 0x100332fc).
  Calls `__nw__GUi` via got with a0=0xc, a1=?, a2=?, a3=? (`jalr` at 0x10033330).
  Calls `sprintf` via got with a0=sp-344, a1=[0x10051b80], a2=?, a3=? (`jalr` at 0x10033348).
  Calls `VkGetResource__GPCcT1` via got with a0=0x10045148, a1=0x10045148, a2=?, a3=? (`jalr` at 0x1003335c).
  Calls `sprintf` via got with a0=sp-240, a1=ret(VkGetResource__GPCcT1), a2=?, a3=? (`jalr` at 0x10033370).
  Calls `addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi` via got with a0=?, a1=sp-240, a2=sym(assignChannelMapCallback__22GammaAssignmentClassUISGP10_WidgetRecPvT2), a3=ret(__nw__GUi), a4=-0x1 (`jalr` at 0x10033398).
  Calls `XSGIvcQueryChannelGammaMap` via got with a0=[[sym(xsetmonApp)]+312], a1=[[sym(xsetmonApp)]+316], a2=?, a3=sp-124 (`jalr` at 0x100333e0).
  Calls `__ct__9strstreamGv` via got with a0=sp-496, a1=0x0, a2=?, a3=[[sym(xsetmonApp)]+148]:1 (`jalr` at 0x10033438).
  Calls `__ls__7ostreamGPCc` via got with a0=sp-416, a1=0x10045188, a2=?, a3=? (`jalr` at 0x1003344c).
  Calls `endl__GR7ostream` via got with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=? (`jalr` at 0x1003345c).
  Calls `__ls__7ostreamGPCc` via got with a0=sp-416, a1=0x10045198, a2=?, a3=? (`jalr` at 0x10033470).
  Calls `__ls__7ostreamGi` via got with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=? (`jalr` at 0x10033480).
  Calls `__ls__7ostreamGPCc` via got with a0=ret(__ls__7ostreamGi), a1=0x100451c8, a2=?, a3=? (`jalr` at 0x10033494).
  Calls `__ls__7ostreamGi` via got with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=? (`jalr` at 0x100334a4).
  Calls `endl__GR7ostream` via got with a0=ret(__ls__7ostreamGi), a1=?, a2=?, a3=? (`jalr` at 0x100334b0).
  Calls `__ls__7ostreamGPCc` via got with a0=sp-416, a1=0x100451e0, a2=?, a3=? (`jalr` at 0x100334c4).
  Calls `__ls__7ostreamGi` via got with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=? (`jalr` at 0x100334d8).
  Calls `__ls__7ostreamGPCc` via got with a0=ret(__ls__7ostreamGi), a1=0x10045208, a2=?, a3=? (`jalr` at 0x100334ec).
  Calls `endl__GR7ostream` via got with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=? (`jalr` at 0x100334f8).
  Calls `__ls__7ostreamGPCc` via got with a0=sp-416, a1=0x10045220, a2=?, a3=? (`jalr` at 0x10033538).
  Calls `__ls__7ostreamGi` via got with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=? (`jalr` at 0x10033548).
  Calls `endl__GR7ostream` via got with a0=ret(__ls__7ostreamGi), a1=?, a2=?, a3=? (`jalr` at 0x10033554).
  Calls `__assert` via got with a0=0x10045230, a1=0x10045250, a2=0x90, a3=? (`jalr` at 0x10033598).
  Calls `(unknown callee)` via register with a0=([[[[sym(xsetmonApp)]+308]+4]+24] + [[sym(xsetmonApp)]+308]), a1=sp-496, a2=[[sym(xsetmonApp)]+308], a3=? (`jalr` at 0x100335b4).
  Calls `__dt__9strstreamGv` via got with a0=sp-496, a1=0x2, a2=?, a3=? (`jalr` at 0x100335c4).
  Calls `baseWidget__10VkMenuItemCGv` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x100335d0).
  Calls `XtSetSensitive` via got with a0=ret(baseWidget__10VkMenuItemCGv), a1=0x0, a2=?, a3=? (`jalr` at 0x100335e0).
  Calls `XFree` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x100335ec).
  Calls `sprintf` via got with a0=sp-344, a1=[0x10051b84], a2=?, a3=? (`jalr` at 0x1003364c).
  Calls `VkGetResource__GPCcT1` via got with a0=0x10045108, a1=0x10045108, a2=?, a3=? (`jalr` at 0x10033660).
  Calls `sprintf` via got with a0=sp-240, a1=ret(VkGetResource__GPCcT1), a2=?, a3=? (`jalr` at 0x10033674).
  Calls `XmStringCreateSimple` via got with a0=sp-240, a1=?, a2=?, a3=? (`jalr` at 0x10033680).
  Calls `__nw__GUi` via got with a0=0x4c, a1=?, a2=?, a3=? (`jalr` at 0x10033694).
  Calls `__ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv` via got with a0=ret(__nw__GUi), a1=a1 at entry (arg1), a2=sp-344, a3=0x0, a4=0x0 (`jalr` at 0x100336c4).
  Calls `set__12VkOptionMenuGP10VkMenuItem` via got with a0=?, a1=?, a2=?, a3=sym(xsetmonApp) (`jalr` at 0x100336dc).
  Calls `baseWidget__10VkMenuItemCGv` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x1003370c).
  Calls `XtSetSensitive` via got with a0=ret(baseWidget__10VkMenuItemCGv), a1=0x0, a2=?, a3=? (`jalr` at 0x1003371c).
  Calls `__ls__7ostreamGPCc` via got with a0=sym(cerr), a1=0x10045118, a2=?, a3=? (`jalr` at 0x1003376c).
  Calls `__ls__7ostreamGi` via got with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=? (`jalr` at 0x1003377c).
  Calls `__ls__7ostreamGPCc` via got with a0=ret(__ls__7ostreamGi), a1=0x10051658, a2=?, a3=? (`jalr` at 0x1003378c).
  Calls `endl__GR7ostream` via got with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=? (`jalr` at 0x10033798).
  Calls `exit` via got with a0=0x1, a1=?, a2=?, a3=? (`jalr` at 0x100337a4).
  Calls `(unknown callee)` via register with a0=sym(cerr), a1=0x10045158, a2=?, a3=? (`jalr` at 0x100337b4).
  Calls `__ls__7ostreamGi` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x100337c4).
  Calls `__ls__7ostreamGPCc` via got with a0=ret(__ls__7ostreamGi), a1=0x10051658, a2=?, a3=? (`jalr` at 0x100337d4).
  Calls `endl__GR7ostream` via got with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=? (`jalr` at 0x100337e0).
  Calls `exit` via got with a0=0x1, a1=?, a2=?, a3=? (`jalr` at 0x100337ec).
  Calls `__ls__7ostreamGPCc` via got with a0=sym(cerr), a1=0x100450e0, a2=?, a3=? (`jalr` at 0x10033800).
  Calls `endl__GR7ostream` via got with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=? (`jalr` at 0x1003380c).
  Calls `exit` via got with a0=0x1, a1=?, a2=?, a3=? (`jalr` at 0x10033818).
  At `beq` at 0x100331cc (target 0x100337f4), taken when v0(=ret(XSGIvcQueryScreenGammaMaps)) == 0 and falls through when v0(=ret(XSGIvcQueryScreenGammaMaps)) != 0.
  At `beq` at 0x100331d8 (target 0x1003372c), taken when v1(=[a0+64]) == 0 and falls through when v1(=[a0+64]) != 0.
  At `blez` at 0x1003322c (target 0x1003372c), taken when a1(=[[sym(xsetmonApp)]+152]) <= 0 (signed) and falls through when a1(=[[sym(xsetmonApp)]+152]) > 0 (signed).
  At `blez` at 0x1003329c (target 0x100332e8), taken when a1(=[a0+64]) <= 0 (signed) and falls through when a1(=[a0+64]) > 0 (signed).
  At `beq` at 0x100332c0 (target 0x100332e8), taken when v0(?) >= a2(=[a0+64]) (signed) and falls through when v0(?) < a2(=[a0+64]) (signed).
  At `bne` at 0x100332e0 (target 0x100332a4), taken when v0(?) < a5(=[a0+64]) (signed) and falls through when v0(?) >= a5(=[a0+64]) (signed).
  At `beq` at 0x10033304 (target 0x10033760), taken when v0(=ret(XSGIvcQueryChannelInfo)) == 0 and falls through when v0(=ret(XSGIvcQueryChannelInfo)) != 0.
  At `blez` at 0x10033310 (target 0x100333d0), taken when a1(?) <= 0 (signed) and falls through when a1(?) > 0 (signed).
  At `bne` at 0x100333c0 (target 0x10033320), taken when s4(?) < a1(?) (signed) and falls through when s4(?) >= a1(?) (signed).
  At `beq` at 0x100333e8 (target 0x100337ac), taken when v0(=ret(XSGIvcQueryChannelGammaMap)) == 0 and falls through when v0(=ret(XSGIvcQueryChannelGammaMap)) != 0.
  At `beq` at 0x100333fc (target 0x10033420), taken when v0(?) >= a1(=[a0+64]) (signed) and falls through when v0(?) < a1(=[a0+64]) (signed).
  At `bne` at 0x10033414 (target 0x100336dc), taken when a1(?) != 0 and falls through when a1(?) == 0.
  At `beq` at 0x10033428 (target 0x100335d0), taken when a3(=[[sym(xsetmonApp)]+148]:1) == 0 and falls through when a3(=[[sym(xsetmonApp)]+148]:1) != 0.
  At `blez` at 0x1003350c (target 0x10033574), taken when a2(?) <= 0 (signed) and falls through when a2(?) > 0 (signed).
  At `bne` at 0x1003356c (target 0x10033520), taken when s2(?) < t8(?) (signed) and falls through when s2(?) >= t8(?) (signed).
  At `bne` at 0x10033580 (target 0x100335a0), taken when t9(=[[sym(xsetmonApp)]+308]) != 0 and falls through when t9(=[[sym(xsetmonApp)]+308]) == 0.
  At `beq` at 0x1003361c (target 0x1003372c), taken when s6(?) >= a1(=[[sym(xsetmonApp)]+152]) (signed) and falls through when s6(?) < a1(=[[sym(xsetmonApp)]+152]) (signed).
  At `beq` at 0x100336a0 (target 0x1003324c), taken when v0(=ret(__nw__GUi)) == 0 and falls through when v0(=ret(__nw__GUi)) != 0.
  At `beq` at 0x100336f0 (target 0x100335ec), taken when a2(?) >= 0x2 (signed) and falls through when a2(?) < 0x2 (signed).
  Returns v0 = ? (`jr` at 0x10033758).

- `doArmRegionDrag__19GammaMapEditorClassGP10_WidgetRecP7_XEvent` in `usr/bin/X11/xsetmon` at 0x10033ae0 (n32).
  Evidence grade: established.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10033ae0-0x10033c68 (392 bytes).
  Stores 4 bytes from zero to a0 (arg0 at entry) +0x70 (`sw` at 0x10033ae0) with value 0x0.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0x6c (`sw` at 0x10033ae4) with value 0x0.
  Stores 4 bytes from a5 to a0 (arg0 at entry) +0x70 (`sw` at 0x10033b44) with value [a0+112]+1.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0x68 (`sw` at 0x10033bd0) with value 0x0.
  Stores 4 bytes from v0 to a0 (arg0 at entry) +0x6c (`sw` at 0x10033bd8) with value 0x1.
  Stores 2 bytes from at to a0 (arg0 at entry) +0x74 (`sh` at 0x10033be0) with value [a2+32].
  Stores 2 bytes from at to a0 (arg0 at entry) +0x78 (`sh` at 0x10033be4) with value [a2+32].
  Stores 2 bytes from t9 to a0 (arg0 at entry) +0x76 (`sh` at 0x10033bf0) with value [a2+36].
  Stores 2 bytes from t9 to a0 (arg0 at entry) +0x7a (`sh` at 0x10033bfc) with value [a2+36].
  Stores 2 bytes from a1 to ? (base unknown) (`sh` at 0x10033c04).
  Stores 2 bytes from a5 to ? (base unknown) (`sh` at 0x10033c20).
  Calls `vGammaToWindow__19GammaMapEditorClassCGiT1P6XPoint [0x1003a020]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=sp-48 (`jal` at 0x10033b7c).
  Calls `vDrawControlPoint__19GammaMapEditorClassCGPC6XPointP4_XGC [0x10030f10]` via direct with a0=a0 at entry (arg0), a1=sp-48, a2=[a0+76], a3=? (`jal` at 0x10033c48).
  At `blez` at 0x10033b14 (target 0x10033c50), taken when at(=[a0+172]) <= 0 (signed) and falls through when at(=[a0+172]) > 0 (signed).
  At `beq` at 0x10033b40 (target 0x10033c50), taken when a5(=[a0+112]+1) >= v1(=[a0+172]) (signed) and falls through when a5(=[a0+112]+1) < v1(=[a0+172]) (signed).
  At `bne` at 0x10033b9c (target 0x10033b30), taken when a3(=[a2+32]) < t1(?) (signed) and falls through when a3(=[a2+32]) >= t1(?) (signed).
  At `bne` at 0x10033ba8 (target 0x10033b30), taken when t2(?) != 0 and falls through when t2(?) == 0.
  At `bne` at 0x10033bb8 (target 0x10033b30), taken when a0(=[a2+36]) < t3(?) (signed) and falls through when a0(=[a2+36]) >= t3(?) (signed).
  At `bne` at 0x10033bc0 (target 0x10033b30), taken when t8(?) != 0 and falls through when t8(?) == 0.
  At `blez` at 0x10033bf8 (target 0x10033c3c), taken when ra(=[a0+84]) <= 0 (signed) and falls through when ra(=[a0+84]) > 0 (signed).
  At `beq` at 0x10033c14 (target 0x10033c3c), taken when a2(?) >= v1(=[a0+84]) (signed) and falls through when a2(?) < v1(=[a0+84]) (signed).
  At `bne` at 0x10033c34 (target 0x10033c00), taken when a2(?) < a4(=[a0+84]) (signed) and falls through when a2(?) >= a4(=[a0+84]) (signed).
  Returns v0 = ? (`jr` at 0x10033c60).
  The instructions from 0x10033b24 to 0x10033b2c are not reached by any path from the entry, and their branches are not listed.

- `vFindRegionAffected__19GammaMapEditorClassGP6XPointT1f` in `usr/bin/X11/xsetmon` at 0x100345e0 (n32).
  Evidence grade: established.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100345e0-0x10034750 (368 bytes).
  Stores 2 bytes from a1 to a2 (arg2 at entry) +0x0 (`sh` at 0x100346a4).
  Stores 2 bytes from a0 to a2 (arg2 at entry) +0x2 (`sh` at 0x100346b4).
  Stores 2 bytes from v0 to a0 (arg0 at entry) +0x7c (`sh` at 0x1003471c) with value ret(sFindDistanceIndex__19GammaMapEditorClassGfsT2).
  Stores 2 bytes from s4 to a0 (arg0 at entry) +0x80 (`sh` at 0x10034724).
  Stores 2 bytes from v0 to a0 (arg0 at entry) +0x7e (`sh` at 0x1003472c) with value ret(sFindDistanceIndex__19GammaMapEditorClassGfsT2).
  Calls `fDistanceFunction__19GammaMapEditorClassGfN31 [0x10043150]` via direct with a0=a0 at entry (arg0), a1=[a1]:2, a2=[a1+2]:2, a3=? (`jal` at 0x10034680).
  Calls `sFindDistanceIndex__19GammaMapEditorClassGfsT2 [0x10034040]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=-0x1 (`jal` at 0x100346f4).
  Calls `sFindDistanceIndex__19GammaMapEditorClassGfsT2 [0x10034040]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x1 (`jal` at 0x10034718).
  At `blez` at 0x10034628 (target 0x10034740), taken when at(=[a0+84]) <= 0 (signed) and falls through when at(=[a0+84]) > 0 (signed).
  At `bc1f` at 0x10034690 (target 0x100346b8), taken when not (f0(=ret(fDistanceFunction__19GammaMapEditorClassGfN31)) < f20 (c.lt.s at 0x10034688)) and falls through when f0(=ret(fDistanceFunction__19GammaMapEditorClassGfN31)) < f20 (c.lt.s at 0x10034688).
  At `bne` at 0x100346cc (target 0x10034640), taken when s0(?) < a1(=[a0+84]) (signed) and falls through when s0(?) >= a1(=[a0+84]) (signed).
  Returns v0 = ret(sFindDistanceIndex__19GammaMapEditorClassGfsT2); f0 = ret(sFindDistanceIndex__19GammaMapEditorClassGfsT2) (`jr` at 0x10034738).

- `configureGain__16GainControlClassGiT1` in `usr/bin/X11/xsetmon` at 0x10037340 (n32).
  Evidence grade: established.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037340-0x10037420 (224 bytes).
  Stores 4 bytes from a1 to a0 (arg0 at entry) +0x34 (`sw` at 0x1003734c) with value a1.
  Stores 4 bytes from a2 to a0 (arg0 at entry) +0x38 (`sw` at 0x10037360) with value a2.
  Calls `XSGIvcQueryOutputGain` via got with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=sp-32 (`jalr` at 0x10037388).
  Calls `XtVaSetValues` via got with a0=[a0+36], a1=-0x8, a2=?, a3=0x0 (`jalr` at 0x100373b8).
  Calls `__ls__7ostreamGPCc` via got with a0=sym(cerr), a1=0x10044f20, a2=?, a3=? (`jalr` at 0x100373e0).
  Calls `__ls__7ostreamGi` via got with a0=ret(__ls__7ostreamGPCc), a1=[a0+52], a2=?, a3=? (`jalr` at 0x100373f0).
  Calls `__ls__7ostreamGPCc` via got with a0=ret(__ls__7ostreamGi), a1=0x10051600, a2=?, a3=? (`jalr` at 0x10037400).
  Calls `endl__GR7ostream` via got with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=? (`jalr` at 0x1003740c).
  Calls `exit` via got with a0=0x1, a1=?, a2=?, a3=? (`jalr` at 0x10037418).
  At `beq` at 0x10037390 (target 0x100373d4), taken when v0(=ret(XSGIvcQueryOutputGain)) == 0 and falls through when v0(=ret(XSGIvcQueryOutputGain)) != 0.
  Returns v0 = ret(XtVaSetValues); f0 = ret(XtVaSetValues) (`jr` at 0x100373cc).

- `prepost__16AboutDialogClassGPCcPGP10_WidgetRecPvT2_vN22PvT1P14VkSimpleWindow` in `usr/bin/X11/xsetmon` at 0x10037420 (n32).
  Evidence grade: established.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037420-0x10037454 (52 bytes).
  Calls `prepost__15VkDialogManagerGPCcPGP10_WidgetRecPvT2_vN22PvT1P14VkSimpleWindow` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x1003743c).
  Returns v0 = ret(prepost__15VkDialogManagerGPCcPGP10_WidgetRecPvT2_vN22PvT1P14VkSimpleWindow); f0 = ret(prepost__15VkDialogManagerGPCcPGP10_WidgetRecPvT2_vN22PvT1P14VkSimpleWindow) (`jr` at 0x1003744c).

- `loadSettingsFileCallback__18XSetmonWindowClassSGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10037590 (n32).
  Evidence grade: established.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037590-0x100375d4 (68 bytes).
  Calls `(unknown callee)` via register with a0=([[a1+8]+408] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x2136c (`jalr` at 0x100375bc).
  Returns v0 = ret(?); f0 = ret(?) (`jr` at 0x100375cc).

- `RegisterSetmonMasterFormClassInterface__21SetmonMasterFormClassSGv` in `usr/bin/X11/xsetmon` at 0x10037da0 (n32).
  Evidence grade: established.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037da0-0x10037db8 (24 bytes).
  Returns v0 = 0x1004e4e8 (`jr` at 0x10037db0).

- `RegisterGammaClassInterface__10GammaClassSGv` in `usr/bin/X11/xsetmon` at 0x10037f20 (n32).
  Evidence grade: established.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037f20-0x10037f38 (24 bytes).
  Returns v0 = 0x1004d950 (`jr` at 0x10037f30).

- `RegisterSyncSelectorFrameInterface__17SyncSelectorFrameSGv` in `usr/bin/X11/xsetmon` at 0x10038c40 (n32).
  Evidence grade: established.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10038c40-0x10038c58 (24 bytes).
  Returns v0 = 0x1004ec70 (`jr` at 0x10038c50).

- `doResetEditingCallback__18XSetmonWindowClassSGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10038df0 (n32).
  Evidence grade: established.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10038df0-0x10038e34 (68 bytes).
  Calls `(unknown callee)` via register with a0=([[a1+8]+396] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1fb0c (`jalr` at 0x10038e1c).
  Returns v0 = ret(?); f0 = ret(?) (`jr` at 0x10038e2c).

- `RegisterFormatCombinationListsClassInterface__27FormatCombinationListsClassSGv` in `usr/bin/X11/xsetmon` at 0x10039ae0 (n32).
  Evidence grade: established.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10039ae0-0x10039af8 (24 bytes).
  Returns v0 = 0x1004d020 (`jr` at 0x10039af0).
- `vGammaToWindow__19GammaMapEditorClassCGiT1P6XPoint` in `usr/bin/X11/xsetmon` at 0x1003a020 (n32).
  Evidence grade: established.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003a020-0x1003a078 (88 bytes).
  Stores 2 bytes from v1 to a3 (arg3 at entry) +0x0 (`sh` at 0x1003a044).
  Stores 2 bytes from at to a3 (arg3 at entry) +0x2 (`sh` at 0x1003a074).
  Returns v0 = [a0+150]:2 (`jr` at 0x1003a070).

- `doDragRegionCallback__21GammaMapEditorClassUISGP10_WidgetRecP7_XEventPPcPUi` in `usr/bin/X11/xsetmon` at 0x1003aee0 (n32).
  Evidence grade: established.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003aee0-0x1003af50 (112 bytes).
  Calls `XtVaGetValues` via got with a0=a0 at entry (arg0), a1=-0xa, a2=sp-48, a3=0x0 (`jalr` at 0x1003af14).
  Calls `(unknown callee)` via register with a0=?, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=? (`jalr` at 0x1003af34).
  Returns v0 = ret(?); f0 = ret(?) (`jr` at 0x1003af48).

- `RegisterStatisticsFormClassInterface__19StatisticsFormClassSGv` in `usr/bin/X11/xsetmon` at 0x1003cba0 (n32).
  Evidence grade: established.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003cba0-0x1003cbb8 (24 bytes).
  Returns v0 = 0x1004e840 (`jr` at 0x1003cbb0).

- `RegisterCombinationContentsListClassInterface__28CombinationContentsListClassSGv` in `usr/bin/X11/xsetmon` at 0x1003d910 (n32).
  Evidence grade: established.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003d910-0x1003d928 (24 bytes).
  Returns v0 = 0x1004ccd0 (`jr` at 0x1003d920).

- `RegisterChannelFormClassInterface__16ChannelFormClassSGv` in `usr/bin/X11/xsetmon` at 0x1003dec0 (n32).
  Evidence grade: established.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003dec0-0x1003ded8 (24 bytes).
  Returns v0 = 0x1004c940 (`jr` at 0x1003ded0).

- `doFinishRegionDrag__21GammaMapEditorClassUIGP10_WidgetRecP7_XEvent` in `usr/bin/X11/xsetmon` at 0x1003e030 (n32).
  Evidence grade: established.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003e030-0x1003e038 (8 bytes).
  Returns v0 = ? (`jr` at 0x1003e030).

- `doArmRegionDrag__21GammaMapEditorClassUIGP10_WidgetRecP7_XEvent` in `usr/bin/X11/xsetmon` at 0x1003e970 (n32).
  Evidence grade: established.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003e970-0x1003e978 (8 bytes).
  Returns v0 = ? (`jr` at 0x1003e970).

- `createWindows__7xsetmonGv` in `usr/bin/X11/xsetmon` at 0x10041b80 (n32).
  Evidence grade: established.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10041b80-0x10041c24 (164 bytes).
  Stores 4 bytes from v0 to a0 (arg0 at entry) +0x130 (`sw` at 0x10041bf8).
  Calls `__nw__GUi` via got with a0=0x70, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x10041ba8).
  Calls `__ct__18XSetmonWindowClassGPCcP3ArgUi [0x10027170]` via direct with a0=ret(__nw__GUi), a1=0x10043c60, a2=0x0, a3=0x0 (`jal` at 0x10041bd4).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=[a0+132]:1, a3=? (`jalr` at 0x10041c08).
  At `beq` at 0x10041bb4 (target 0x10041bec), taken when v0(=ret(__nw__GUi)) == 0 and falls through when v0(=ret(__nw__GUi)) != 0.
  At `beq` at 0x10041bf4 (target 0x10041c10), taken when a2(=[a0+132]:1) == 0 and falls through when a2(=[a0+132]:1) != 0.
  Returns v0 = ? (`jr` at 0x10041c1c).

- `registerChild__12MyTabbedDeckGP11VkComponentPCc` in `usr/bin/X11/xsetmon` at 0x10041ed0 (n32).
  Evidence grade: established.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10041ed0-0x10041f8c (188 bytes).
  Calls `baseWidget__11VkComponentCGv` via got with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x10041f04).
  Calls `VkGetResource__GP10_WidgetRecPCcN32` via got with a0=ret(baseWidget__11VkComponentCGv), a1=0x10049590, a2=0x100495a0, a3=-0x1a, a4=a2 at entry (arg2) (`jalr` at 0x10041f2c).
  Calls `addView__6VkDeckGP11VkComponent` via got with a0=[a0+32], a1=a1 at entry (arg1), a2=?, a3=? (`jalr` at 0x10041f44).
  Calls `baseWidget__11VkComponentCGv` via got with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jalr` at 0x10041f50).
  Calls `addTab__10VkTabPanelGPcPvc` via got with a0=[a0+36], a1=ret(VkGetResource__GP10_WidgetRecPCcN32), a2=ret(baseWidget__11VkComponentCGv), a3=0x0 (`jalr` at 0x10041f6c).
  Returns v0 = ret(addTab__10VkTabPanelGPcPvc); f0 = ret(addTab__10VkTabPanelGPcPvc) (`jr` at 0x10041f84).

- `loadSettingsFile__18XSetmonWindowClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10042160 (n32).
  Evidence grade: established.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10042160-0x100421f4 (148 bytes).
  Calls `getTheFileSelectionDialog__Gv` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x1004217c).
  Calls `(unknown callee)` via register with a0=([[ret(getTheFileSelectionDialog__Gv)+8]+264] + ret(getTheFileSelectionDialog__Gv)), a1=0x0, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0 (`jalr` at 0x100421ac).
  Calls `getTheFileSelectionDialog__Gv` via got with a0=?, a1=0x1, a2=?, a3=? (`jalr` at 0x100421d0).
  Calls `loadData__21MasterTabbedDeckClassGPCc [0x1002b910]` via direct with a0=[a0+68], a1=[ret(getTheFileSelectionDialog__Gv)+84], a2=?, a3=? (`jal` at 0x100421e4).
  At `beq` at 0x100421b8 (target 0x100421cc), taken when v0(=ret(?)) == a1(=0x1) and falls through when v0(=ret(?)) != a1(=0x1).
  Returns v0 = ? (`jr` at 0x100421c4).

- `ProcXineramaDestroyWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1005fa40 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1005fa40-0x1005fbac (364 bytes).
  Stores 4 bytes from a5 to abs 0x102ca77c (xineramaPostponeEvents) (`sw` at 0x1005facc) with value 0x1.
  Stores 4 bytes from a5 to sym(panoramiXMode) +0x0 (`sw` at 0x1005fad0) with value 0x1.
  Stores 4 bytes from zero to sym(panoramiXScreen0) +0x0 (`sw` at 0x1005fb20) with value 0x0.
  Stores 4 bytes from t8 to [a0+8] +0x4 (`sw` at 0x1005fb3c).
  Stores 4 bytes from t9 to sym(panoramiXScreen0) +0x0 (`sw` at 0x1005fb44) with value 0x1.
  Stores 4 bytes from zero to sym(panoramiXScreen0) +0x0 (`sw` at 0x1005fb48) with value 0x0.
  Stores 4 bytes from zero to abs 0x102ca77c (xineramaPostponeEvents) (`sw` at 0x1005fb78) with value 0x0.
  Stores 4 bytes from zero to sym(panoramiXMode) +0x0 (`sw` at 0x1005fb8c) with value 0x0.
  Calls `SecurityLookupIDByType [0x100d6140]` via direct with a0=a0 at entry (arg0), a1=[[a0+8]+4], a2=[sym(XRT_WINDOW)], a3=0x4 (`jal` at 0x1005faac).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x1005fb14).
  Calls `XineramaDeliverVisibilityNotify [0x10197300]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1005fb4c).
  Calls `XineramaDeliverExpose [0x100e7410]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1005fb6c).
  At `beq` at 0x1005fa68 (target 0x1005fa94), taken when v1(=[a0+72]) == a1(=0x2) and falls through when v1(=[a0+72]) != a1(=0x2).
  At `beq` at 0x1005fac0 (target 0x1005fb90), taken when v0(=ret(SecurityLookupIDByType)) == 0 and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  At `blez` at 0x1005faec (target 0x1005fba4), taken when a3(=[0x102c5f1c]) <= 0 (signed) and falls through when a3(=[0x102c5f1c]) > 0 (signed).
  At `bne` at 0x1005fb24 (target 0x1005fb4c), taken when v0(=ret(?)) != 0 and falls through when v0(=ret(?)) == 0.
  At `beq` at 0x1005fb2c (target 0x1005fb48), taken when s0(?) == s6(=ret(SecurityLookupIDByType)-8) and falls through when s0(?) != s6(=ret(SecurityLookupIDByType)-8).
  At `bne` at 0x1005fb38 (target 0x1005fb10), taken when s4(=ret(SecurityLookupIDByType)) != s0(?) and falls through when s4(=ret(SecurityLookupIDByType)) == s0(?).
  Returns v0 = 0x10 (`jr` at 0x1005fa7c).
  Returns v0 = ? (`jr` at 0x1005fa8c).
  The instructions from 0x1005fb08 to 0x1005fb0c are not reached by any path from the entry, and their branches are not listed.

- `ProcXineramaUnmapSubwindows` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10060940 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10060940-0x10060a90 (336 bytes).
  Stores 4 bytes from v0 to abs 0x102ca77c (xineramaPostponeEvents) (`sw` at 0x100609c8) with value 0x1.
  Stores 4 bytes from v0 to sym(panoramiXMode) +0x0 (`sw` at 0x100609d0) with value 0x1.
  Stores 4 bytes from a3 to ? (base unknown) (`sw` at 0x10060a0c).
  Stores 4 bytes from t1 to sym(panoramiXScreen0) +0x0 (`sw` at 0x10060a10) with value 0x1.
  Stores 4 bytes from zero to sym(panoramiXScreen0) +0x0 (`sw` at 0x10060a3c) with value 0x0.
  Stores 4 bytes from zero to abs 0x102ca77c (xineramaPostponeEvents) (`sw` at 0x10060a5c) with value 0x0.
  Stores 4 bytes from zero to sym(panoramiXMode) +0x0 (`sw` at 0x10060a6c) with value 0x0.
  Stores 4 bytes from zero to sym(panoramiXScreen0) +0x0 (`sw` at 0x10060a80) with value 0x0.
  Calls `SecurityLookupIDByType [0x100d6140]` via direct with a0=a0 at entry (arg0), a1=[[a0+8]+4], a2=[sym(XRT_WINDOW)], a3=0x1 (`jal` at 0x100609a4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a7=sym(panoramiXScreen0) (`jalr` at 0x10060a1c).
  Calls `XineramaDeliverVisibilityNotify [0x10197300]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x10060a48).
  Calls `XineramaDeliverExpose [0x100e7410]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x10060a50).
  At `beq` at 0x10060964 (target 0x10060988), taken when v1(=[a0+72]) == a1(=0x2) and falls through when v1(=[a0+72]) != a1(=0x2).
  At `beq` at 0x100609bc (target 0x10060a70), taken when v0(=ret(SecurityLookupIDByType)) == 0 and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  At `blez` at 0x100609cc (target 0x10060a84), taken when a5(=[0x102c5f1c]) <= 0 (signed) and falls through when a5(=[0x102c5f1c]) > 0 (signed).
  At `beq` at 0x100609e8 (target 0x10060a7c), taken when a4(?) >= a2(=[0x102c5f1c]) (signed) and falls through when a4(?) < a2(=[0x102c5f1c]) (signed).
  At `bne` at 0x10060a08 (target 0x10060a14), taken when a6(?) != a5(?) and falls through when a6(?) == a5(?).
  At `beq` at 0x10060a40 (target 0x100609e0), taken when v0(=ret(?)) == 0 and falls through when v0(=ret(?)) != 0.
  Returns v0 = 0x10 (`jr` at 0x10060970).
  Returns v0 = ? (`jr` at 0x10060980).

- `ProcGetBufferInfo..HKC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10063190 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10063190-0x10063a00 (2160 bytes).
  Stores 8 bytes from a0 to sp (at entry) -0x88 (`sd` at 0x100631a0) with value a0.
  Stores 8 bytes from a1 to sp (at entry) -0x60 (`sd` at 0x100631a4) with value s8.
  Stores 8 bytes from ra to sp (at entry) -0x58 (`sd` at 0x100631b0) with value ra.
  Stores 8 bytes from s0 to sp (at entry) -0xc0 (`sd` at 0x100631c8) with value s0.
  Stores 8 bytes from a3 to sp (at entry) -0x70 (`sd` at 0x100631dc) with value [ret(SecurityLookupDrawable)+16].
  Stores 8 bytes from s1 to sp (at entry) -0xc8 (`sd` at 0x100631ec) with value s1.
  Stores 8 bytes from t8 to sp (at entry) -0xb8 (`sd` at 0x10063234) with value [sym(panoramiXDisabled)].
  Stores 1 bytes from t2 to sp (at entry) -0x40 (`sb` at 0x100633c4) with value 0x1.
  Stores 2 bytes from zero to sp (at entry) -0x36 (`sh` at 0x100633cc) with value 0x0.
  Stores 2 bytes from a3 to sp (at entry) -0x3e (`sh` at 0x100633d0) with value [a0+28].
  Stores 1 bytes from zero to sp (at entry) -0x35 (`sb` at 0x100633e0) with value 0x0.
  Stores 1 bytes from zero to sp (at entry) -0x36 (`sb` at 0x100633e4) with value 0x0.
  Stores 1 bytes from a4 to sp (at entry) -0x3e (`sb` at 0x100633ec).
  Stores 1 bytes from a1 to sp (at entry) -0x37 (`sb` at 0x100633f8).
  Stores 1 bytes from a0 to sp (at entry) -0x38 (`sb` at 0x100633fc).
  Stores 1 bytes from v1 to sp (at entry) -0x3a (`sb` at 0x10063408).
  Stores 1 bytes from v0 to sp (at entry) -0x3b (`sb` at 0x1006340c).
  Stores 1 bytes from at to sp (at entry) -0x39 (`sb` at 0x10063418).
  Stores 1 bytes from ra to sp (at entry) -0x3c (`sb` at 0x1006341c).
  Stores 1 bytes from t3 to sp (at entry) -0x3d (`sb` at 0x10063428).
  Stores 8 bytes from a2 to sp (at entry) -0x50 (`sd` at 0x10063444).
  Stores 8 bytes from zero to sp (at entry) -0x98 (`sd` at 0x10063448) with value 0x0.
  Stores 8 bytes from zero to sp (at entry) -0x80 (`sd` at 0x1006344c) with value 0x0.
  Stores 8 bytes from s7 to sp (at entry) -0xe8 (`sd` at 0x10063450) with value s7.
  Stores 8 bytes from s5 to sp (at entry) -0xf0 (`sd` at 0x10063458) with value s5.
  Stores 8 bytes from zero to sp (at entry) -0x90 (`sd` at 0x10063460) with value 0x0.
  Stores 8 bytes from a5 to sp (at entry) -0x78 (`sd` at 0x10063468).
  Stores 8 bytes from s3 to sp (at entry) -0xd8 (`sd` at 0x1006346c) with value s3.
  Stores 8 bytes from s4 to sp (at entry) -0xe0 (`sd` at 0x10063474) with value s4.
  Stores 8 bytes from s6 to sp (at entry) -0xf8 (`sd` at 0x10063480) with value s6.
  Stores 8 bytes from s2 to sp (at entry) -0xd0 (`sd` at 0x10063488) with value s2.
  Stores 8 bytes from a4 to sp (at entry) -0x68 (`sd` at 0x10063498).
  Stores 8 bytes from a6 to sp (at entry) -0x80 (`sd` at 0x100634b0).
  Stores 4 bytes from a4 to ? (base unknown) (`sw` at 0x10063534).
  Stores 2 bytes from t1 to ? (base unknown) (`sh` at 0x10063540) with value [ret(nmbxLookupCapability)+8].
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10063548).
  Stores 8 bytes from v0 to sp (at entry) -0x98 (`sd` at 0x10063560).
  Stores 8 bytes from at to sp (at entry) -0x90 (`sd` at 0x10063570).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x10063578).
  Stores 1 bytes from a7 to ? (base unknown) (`sb` at 0x1006357c).
  Stores 1 bytes from a6 to ? (base unknown) (`sb` at 0x10063580).
  Stores 1 bytes from t0 to ? (base unknown) (`sb` at 0x10063588).
  Stores 1 bytes from t2 to ? (base unknown) (`sb` at 0x10063598).
  Stores 1 bytes from t3 to ? (base unknown) (`sb` at 0x100635a0).
  Stores 2 bytes from t8 to sp (at entry) -0x38 (`sh` at 0x1006367c).
  Stores 4 bytes from t8 to sp (at entry) -0x3c (`sw` at 0x10063688).
  Stores 8 bytes from v1 to sp (at entry) -0xb0 (`sd` at 0x100636d0).
  Stores 8 bytes from s1 to sp (at entry) -0xc8 (`sd` at 0x10063734) with value s1.
  Stores 4 bytes from a5 to sp (at entry) -0x1c (`sw` at 0x10063740) with value [[ret(SecurityLookupDrawable)+16]].
  Stores 8 bytes from t8 to sp (at entry) -0xb8 (`sd` at 0x10063790) with value [sym(panoramiXDisabled)].
  Stores 8 bytes from a7 to sp (at entry) -0xa8 (`sd` at 0x10063908).
  Stores 8 bytes from a6 to sp (at entry) -0xa0 (`sd` at 0x10063918).
  Stores 8 bytes from zero to sp (at entry) -0x98 (`sd` at 0x1006393c) with value 0x0.
  Stores 8 bytes from zero to sp (at entry) -0x90 (`sd` at 0x10063940) with value 0x0.
  Stores 8 bytes from a2 to sp (at entry) -0x50 (`sd` at 0x10063948).
  Stores 8 bytes from t8 to sp (at entry) -0xb8 (`sd` at 0x10063958) with value [sym(panoramiXDisabled)].
  Calls `SecurityLookupDrawable [0x101e03e0]` via direct with a0=[[a0+8]+4], a1=a0 at entry (arg0), a2=0x0, a3=a3 at entry (arg3) (`jal` at 0x100631b8).
  Calls `nmbxLookupCapability [0x101ffee0]` via direct with a0=?, a1=?, a2=[0x102ca7e0], a3=? (`jal` at 0x10063504).
  Calls `WriteToClient [0x100b3500]` via direct with a0=a0 at entry (arg0), a1=0x20, a2=sp-64, a3=? (`jal` at 0x10063684).
  Calls `WriteToClient [0x100b3500]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x10063698).
  At `beq` at 0x100631c4 (target 0x100636ec), taken when v0(=ret(SecurityLookupDrawable)) == 0 and falls through when v0(=ret(SecurityLookupDrawable)) != 0.
  At `beq` at 0x100631d8 (target 0x10063728), taken when t8(=[sym(panoramiXDisabled)]) == 0 and falls through when t8(=[sym(panoramiXDisabled)]) != 0.
  At `blez` at 0x100631e8 (target 0x10063934), taken when a4(=[[ret(SecurityLookupDrawable)+16]+16]:2) <= 0 (signed) and falls through when a4(=[[ret(SecurityLookupDrawable)+16]+16]:2) > 0 (signed).
  At `beq` at 0x10063204 (target 0x10063220), taken when (a4(=[[ret(SecurityLookupDrawable)+16]+16]:2) & 0x7) == 0 and falls through when (a4(=[[ret(SecurityLookupDrawable)+16]+16]:2) & 0x7) != 0.
  At `bne` at 0x10063218 (target 0x1006320c), taken when a3(?) != 0 and falls through when a3(?) == 0.
  At `beq` at 0x10063224 (target 0x1006339c), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `bne` at 0x1006322c (target 0x100639b0), taken when a7(?) != 0 and falls through when a7(?) == 0.
  At `beq` at 0x100632c0 (target 0x100636bc), taken when t9(?) == t0(=([[ret(SecurityLookupDrawable)+16]+20] + ([[ret(SecurityLookupDrawable)+16]+16]:2 << 0x3))-128) and falls through when t9(?) != t0(=([[ret(SecurityLookupDrawable)+16]+20] + ([[ret(SecurityLookupDrawable)+16]+16]:2 << 0x3))-128).
  At `bne` at 0x10063308 (target 0x10063280), taken when t8(?) != t0(=([[ret(SecurityLookupDrawable)+16]+20] + ([[ret(SecurityLookupDrawable)+16]+16]:2 << 0x3))-128) and falls through when t8(?) == t0(=([[ret(SecurityLookupDrawable)+16]+20] + ([[ret(SecurityLookupDrawable)+16]+16]:2 << 0x3))-128).
  At `beq` at 0x100633b4 (target 0x10063708), taken when sp(?) == 0 and falls through when sp(?) != 0.
  At `beq` at 0x100633d8 (target 0x1006342c), taken when t1(=[a0+16]) == 0 and falls through when t1(=[a0+16]) != 0.
  At `beq` at 0x1006342c (target 0x100638ec), taken when t8(=[sym(panoramiXDisabled)]) == 0 and falls through when t8(=[sym(panoramiXDisabled)]) != 0.
  At `blez` at 0x1006343c (target 0x1006393c), taken when a3(?) <= 0 (signed) and falls through when a3(?) > 0 (signed).
  At `beq` at 0x100634ac (target 0x10063648), taken when a6(?) == a7(?) and falls through when a6(?) != a7(?).
  At `beq` at 0x100634bc (target 0x10063634), taken when t0(=[sym(panoramiXDisabled)]) == 0 and falls through when t0(=[sym(panoramiXDisabled)]) != 0.
  At `blez` at 0x100634d4 (target 0x100634a0), taken when t8(?) <= 0 (signed) and falls through when t8(?) > 0 (signed).
  At `beq` at 0x10063510 (target 0x100635a8), taken when v0(=ret(nmbxLookupCapability)) == 0 and falls through when v0(=ret(nmbxLookupCapability)) != 0.
  At `bne` at 0x10063520 (target 0x100635a8), taken when t9(=[ret(nmbxLookupCapability)+8]) < 0x2 (unsigned) and falls through when t9(=[ret(nmbxLookupCapability)+8]) >= 0x2 (unsigned).
  At `beq` at 0x1006356c (target 0x100635a4), taken when ra(=[a0+16]) == 0 and falls through when ra(=[a0+16]) != 0.
  At `beq` at 0x100635b4 (target 0x100634a0), taken when s2(?) >= t8(?) (signed) and falls through when s2(?) < t8(?) (signed).
  At `beq` at 0x100635cc (target 0x100634f8), taken when t1(=[0x102cabb8]) >= a3(=[sym(screenInfo)+68]) (signed) and falls through when t1(=[0x102cabb8]) < a3(=[sym(screenInfo)+68]) (signed).
  At `blez` at 0x100635f8 (target 0x10063624), taken when t2(?) <= 0 (signed) and falls through when t2(?) > 0 (signed).
  At `beq` at 0x10063614 (target 0x100634f0), taken when t0(?) == a5(?) and falls through when t0(?) != a5(?).
  At `bne` at 0x1006361c (target 0x10063610), taken when a3(?) != a6(?) and falls through when a3(?) == a6(?).
  At `bne` at 0x10063624 (target 0x100635e8), taken when a7(?) != t8(=(([sym(screenInfo)+68] << 0x2) + sym(screenInfo))) and falls through when a7(?) == t8(=(([sym(screenInfo)+68] << 0x2) + sym(screenInfo))).
  At `blez` at 0x1006373c (target 0x1006394c), taken when a4(=[sym(PanoramiXNumDepths)]) <= 0 (signed) and falls through when a4(=[sym(PanoramiXNumDepths)]) > 0 (signed).
  At `beq` at 0x10063760 (target 0x1006377c), taken when (a4(=[sym(PanoramiXNumDepths)]) & 0x7) == 0 and falls through when (a4(=[sym(PanoramiXNumDepths)]) & 0x7) != 0.
  At `bne` at 0x10063774 (target 0x10063768), taken when a3(?) != 0 and falls through when a3(?) == 0.
  At `beq` at 0x10063780 (target 0x100638e4), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `bne` at 0x10063788 (target 0x10063958), taken when a6(?) != 0 and falls through when a6(?) == 0.
  At `beq` at 0x1006380c (target 0x100638f4), taken when t9(?) == t0(=(([sym(PanoramiXNumDepths)] << 0x3) + [(([[ret(SecurityLookupDrawable)+16]] << 0x2) + sym(PanoramiXDepths))])-128) and falls through when t9(?) != t0(=(([sym(PanoramiXNumDepths)] << 0x3) + [(([[ret(SecurityLookupDrawable)+16]] << 0x2) + sym(PanoramiXDepths))])-128).
  At `bne` at 0x10063854 (target 0x100637cc), taken when t8(?) != t0(=(([sym(PanoramiXNumDepths)] << 0x3) + [(([[ret(SecurityLookupDrawable)+16]] << 0x2) + sym(PanoramiXDepths))])-128) and falls through when t8(?) == t0(=(([sym(PanoramiXNumDepths)] << 0x3) + [(([[ret(SecurityLookupDrawable)+16]] << 0x2) + sym(PanoramiXDepths))])-128).
  At `bne` at 0x1006399c (target 0x1006395c), taken when a2(?) != t2(=(([sym(PanoramiXNumDepths)] << 0x3) + [(([[ret(SecurityLookupDrawable)+16]] << 0x2) + sym(PanoramiXDepths))])) and falls through when a2(?) == t2(=(([sym(PanoramiXNumDepths)] << 0x3) + [(([[ret(SecurityLookupDrawable)+16]] << 0x2) + sym(PanoramiXDepths))])).
  At `beq` at 0x100639f0 (target 0x1006339c), taken when a2(?) == a5(=([[ret(SecurityLookupDrawable)+16]+20] + ([[ret(SecurityLookupDrawable)+16]+16]:2 << 0x3))) and falls through when a2(?) != a5(=([[ret(SecurityLookupDrawable)+16]+20] + ([[ret(SecurityLookupDrawable)+16]+16]:2 << 0x3))).
  Returns v0 = [a0+40]; f0 = ret(WriteToClient) (`jr` at 0x100636b4).
  Returns v0 = 0x9; f0 = ret(SecurityLookupDrawable) (`jr` at 0x10063700).
  Returns v0 = 0xb; f0 = ret(SecurityLookupDrawable) (`jr` at 0x10063720).
  The instructions from 0x1006349c to 0x1006349c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x100634e4 to 0x100634ec are not reached by any path from the entry, and their branches are not listed.

- `ShmRegisterFuncs` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10063d90 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10063d90-0x10063db0 (32 bytes).
  Stores 4 bytes from a1 to table(0x102caa00) +0x0 (`sw` at 0x10063dac) with value a1.
  Returns v0 = table(0x102c5d40) (`jr` at 0x10063da8).

- `LbxFreeOsBuffers` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10063db0 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10063db0-0x10063f24 (372 bytes).
  Stores 4 bytes from s2 to table(0x102c71c0) +0x0 (`sw` at 0x10063e1c) with value [[a0+1116]+8].
  Stores 4 bytes from s2 to abs 0x102c71b8 (Lfree..4) (`sw` at 0x10063e20) with value [[a0+1116]+8].
  Stores 4 bytes from a4 to abs 0x102c7240 (freeidx..3) (`sw` at 0x10063e30).
  Stores 4 bytes from s0 to table(0x102c71c0) +0x0 (`sw` at 0x10063e84) with value [a0+1116].
  Stores 4 bytes from s0 to abs 0x102c71b8 (Lfree..4) (`sw` at 0x10063e88) with value [a0+1116].
  Stores 4 bytes from a4 to abs 0x102c7240 (freeidx..3) (`sw` at 0x10063e98).
  Stores 4 bytes from a5 to a0 (arg0 at entry) +0x45c (`sw` at 0x10063ec4) with value [[a0+1116]].
  Calls `__libc_lockmalloc` via got with a0=?, a1=?, a2=[sym(__us_rsthread_malloc)], a3=?, a5=[[a0+1116]] (`jalr` at 0x10063de4).
  Calls `realfree..NL [0x1025db70]` via direct with a0=entry(0x102c71c0), a1=?, a2=table(0x102c5d40), a3=[0x102c7240], a5=[sym(__us_rsthread_malloc)] (`jal` at 0x10063e04).
  Calls `__libc_unlockmalloc` via got with a0=?, a1=?, a2=table(0x102c5d40), a3=[0x102c7240], a5=[sym(__us_rsthread_malloc)] (`jalr` at 0x10063e38).
  Calls `__libc_lockmalloc` via got with a0=?, a1=?, a2=?, a3=?, a5=[sym(__us_rsthread_malloc)] (`jalr` at 0x10063e4c).
  Calls `realfree..NL [0x1025db70]` via direct with a0=entry(0x102c71c0), a1=?, a2=table(0x102c5d40), a3=[0x102c7240], a5=[sym(__us_rsthread_malloc)] (`jal` at 0x10063e6c).
  Calls `__libc_unlockmalloc` via got with a0=?, a1=?, a2=table(0x102c5d40), a3=[0x102c7240], a5=[sym(__us_rsthread_malloc)] (`jalr` at 0x10063ea0).
  At `beq` at 0x10063dc0 (target 0x10063efc), taken when s0(=[a0+1116]) == 0 and falls through when s0(=[a0+1116]) != 0.
  At `beq` at 0x10063dfc (target 0x10063e1c), taken when a0(=entry(0x102c71c0)) == 0 and falls through when a0(=entry(0x102c71c0)) != 0.
  At `beq` at 0x10063e2c (target 0x10063e40), taken when a5(=[sym(__us_rsthread_malloc)]) == 0 and falls through when a5(=[sym(__us_rsthread_malloc)]) != 0.
  At `beq` at 0x10063e44 (target 0x10063e54), taken when a5(=[sym(__us_rsthread_malloc)]) == 0 and falls through when a5(=[sym(__us_rsthread_malloc)]) != 0.
  At `beq` at 0x10063e64 (target 0x10063e84), taken when a0(=entry(0x102c71c0)) == 0 and falls through when a0(=entry(0x102c71c0)) != 0.
  At `beq` at 0x10063e94 (target 0x10063ea8), taken when a5(=[sym(__us_rsthread_malloc)]) == 0 and falls through when a5(=[sym(__us_rsthread_malloc)]) != 0.
  At `beq` at 0x10063eb8 (target 0x10063ee4), taken when s0(=[a0+1116]) == 0 and falls through when s0(=[a0+1116]) != 0.
  At `beq` at 0x10063ecc (target 0x10063e40), taken when s2(=[[a0+1116]+8]) == 0 and falls through when s2(=[[a0+1116]+8]) != 0.
  At `bne` at 0x10063ed4 (target 0x10063de4), taken when a2(=[sym(__us_rsthread_malloc)]) != 0 and falls through when a2(=[sym(__us_rsthread_malloc)]) == 0.
  Returns v0 = ? (`jr` at 0x10063f04).

- `SProcXineramaCreateWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100640a0 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100640a0-0x1006499c (2300 bytes).
  Stores 1 bytes from v1 to [a0+8] +0x3 (`sb` at 0x100640ac) with value [[a0+8]+2]:1.
  Stores 1 bytes from a1 to [a0+8] +0x2 (`sb` at 0x100640b0) with value [[a0+8]+3]:1.
  Stores 1 bytes from v1 to [a0+8] +0x7 (`sb` at 0x10064100) with value [[a0+8]+4]:1.
  Stores 1 bytes from a0 to [a0+8] +0x13 (`sb` at 0x10064108) with value [[a0+8]+18]:1.
  Stores 1 bytes from a3 to [a0+8] +0x4 (`sb` at 0x1006410c) with value [[a0+8]+7]:1.
  Stores 1 bytes from a6 to [a0+8] +0x18 (`sb` at 0x10064128) with value [[a0+8]+27]:1.
  Stores 1 bytes from a7 to [a0+8] +0x1b (`sb` at 0x10064130) with value [[a0+8]+24]:1.
  Stores 1 bytes from t8 to [a0+8] +0x1c (`sb` at 0x10064138) with value [[a0+8]+31]:1.
  Stores 1 bytes from t9 to [a0+8] +0x1f (`sb` at 0x10064140) with value [[a0+8]+28]:1.
  Stores 1 bytes from v0 to [a0+8] +0x1e (`sb` at 0x10064148) with value [[a0+8]+29]:1.
  Stores 1 bytes from ra to [a0+8] +0x1d (`sb` at 0x10064150) with value [[a0+8]+30]:1.
  Stores 1 bytes from ra to [a0+8] +0x10 (`sb` at 0x10064158) with value [[a0+8]+17]:1.
  Stores 1 bytes from t9 to [a0+8] +0xf (`sb` at 0x1006415c) with value [[a0+8]+14]:1.
  Stores 1 bytes from t0 to [a0+8] +0x19 (`sb` at 0x10064168) with value [[a0+8]+26]:1.
  Stores 1 bytes from t3 to [a0+8] +0x1a (`sb` at 0x10064170) with value [[a0+8]+25]:1.
  Stores 1 bytes from t0 to [a0+8] +0xc (`sb` at 0x10064178) with value [[a0+8]+13]:1.
  Stores 1 bytes from a7 to [a0+8] +0xa (`sb` at 0x1006417c) with value [[a0+8]+9]:1.
  Stores 1 bytes from a6 to [a0+8] +0x9 (`sb` at 0x10064180) with value [[a0+8]+10]:1.
  Stores 1 bytes from a5 to [a0+8] +0x17 (`sb` at 0x1006418c) with value [[a0+8]+22]:1.
  Stores 1 bytes from a4 to [a0+8] +0x16 (`sb` at 0x10064194) with value [[a0+8]+23]:1.
  Stores 1 bytes from a5 to [a0+8] +0xb (`sb` at 0x1006419c) with value [[a0+8]+8]:1.
  Stores 1 bytes from v0 to [a0+8] +0x11 (`sb` at 0x100641a0) with value [[a0+8]+16]:1.
  Stores 1 bytes from t8 to [a0+8] +0xe (`sb` at 0x100641a4) with value [[a0+8]+15]:1.
  Stores 1 bytes from a2 to [a0+8] +0x15 (`sb` at 0x100641b0) with value [[a0+8]+20]:1.
  Stores 1 bytes from a4 to [a0+8] +0x8 (`sb` at 0x100641b8) with value [[a0+8]+11]:1.
  Stores 1 bytes from a1 to [a0+8] +0x14 (`sb` at 0x100641bc) with value [[a0+8]+21]:1.
  Stores 1 bytes from t3 to [a0+8] +0xd (`sb` at 0x100641cc) with value [[a0+8]+12]:1.
  Stores 1 bytes from a2 to [a0+8] +0x6 (`sb` at 0x100641d4) with value [[a0+8]+5]:1.
  Stores 1 bytes from v1 to [a0+8] +0x12 (`sb` at 0x100641e4) with value [[a0+8]+19]:1.
  Stores 1 bytes from a4 to [a0+8] +0x5 (`sb` at 0x100641ec) with value [[a0+8]+6]:1.
  Stores 1 bytes from a4 to [a0+8] +0x23 (`sb` at 0x1006421c) with value [[a0+8]+32]:1.
  Stores 1 bytes from a2 to [a0+8] +0x20 (`sb` at 0x10064224) with value [[a0+8]+35]:1.
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x10064234).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10064238).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10064244).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x10064248).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10064254).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x10064258).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10064264).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x10064268).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10064274).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x10064278).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10064284).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x10064288).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10064294).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x10064298).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100642a4).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100642a8).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100642b4).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100642b8).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100642c4).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100642c8).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100642d4).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100642d8).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100642e4).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100642e8).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100642f4).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100642f8).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10064304).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x10064308).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10064314).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x10064318).
  Stores 1 bytes from a3 to ? (base unknown) (`sb` at 0x10064320).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10064328).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x10064348).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x1006434c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10064358).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x1006435c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10064368).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x1006436c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10064378).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x1006437c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10064388).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x1006438c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10064398).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x1006439c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100643a8).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100643ac).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100643b8).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100643bc).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100643c8).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100643cc).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100643d8).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100643dc).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100643e8).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100643ec).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100643f8).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100643fc).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10064408).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x1006440c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10064418).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x1006441c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10064428).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x1006442c).
  Stores 1 bytes from a3 to ? (base unknown) (`sb` at 0x10064434).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x1006443c).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x1006445c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10064460).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x1006446c).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x10064470).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x1006447c).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x10064480).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x1006448c).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x10064490).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x1006449c).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100644a0).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100644ac).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100644b0).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100644bc).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100644c0).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100644cc).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100644d0).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100644dc).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100644e0).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100644ec).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100644f0).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100644fc).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x10064500).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x1006450c).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x10064510).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x1006451c).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x10064520).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x1006452c).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x10064530).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x1006453c).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x10064540).
  Stores 1 bytes from a3 to ? (base unknown) (`sb` at 0x10064548).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10064550).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x10064574).
  Stores 1 bytes from t3 to ? (base unknown) (`sb` at 0x1006457c).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x10064584).
  Stores 1 bytes from t3 to ? (base unknown) (`sb` at 0x1006458c).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x10064594).
  Stores 1 bytes from t9 to ? (base unknown) (`sb` at 0x100645b8).
  Stores 1 bytes from ra to ? (base unknown) (`sb` at 0x100645c0).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100645c8).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x100645d0).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x100645d8).
  Stores 1 bytes from a6 to ? (base unknown) (`sb` at 0x100645e0).
  Stores 1 bytes from a7 to ? (base unknown) (`sb` at 0x100645e8).
  Stores 1 bytes from t0 to ? (base unknown) (`sb` at 0x100645f0).
  Stores 1 bytes from t0 to ? (base unknown) (`sb` at 0x100645f8).
  Stores 1 bytes from a7 to ? (base unknown) (`sb` at 0x10064600).
  Stores 1 bytes from a6 to ? (base unknown) (`sb` at 0x10064608).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x10064610).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x10064618).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10064620).
  Stores 1 bytes from ra to ? (base unknown) (`sb` at 0x10064628).
  Stores 1 bytes from t9 to ? (base unknown) (`sb` at 0x10064630).
  Stores 1 bytes from t9 to ? (base unknown) (`sb` at 0x10064638).
  Stores 1 bytes from ra to ? (base unknown) (`sb` at 0x1006463c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10064640).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x10064644).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x10064648).
  Stores 1 bytes from a6 to ? (base unknown) (`sb` at 0x1006464c).
  Stores 1 bytes from a7 to ? (base unknown) (`sb` at 0x10064650).
  Stores 1 bytes from t0 to ? (base unknown) (`sb` at 0x10064654).
  Stores 1 bytes from t3 to ? (base unknown) (`sb` at 0x10064658).
  Stores 1 bytes from a3 to ? (base unknown) (`sb` at 0x10064660).
  Stores 1 bytes from t0 to ? (base unknown) (`sb` at 0x10064684).
  Stores 1 bytes from t3 to ? (base unknown) (`sb` at 0x1006468c).
  Stores 1 bytes from a7 to ? (base unknown) (`sb` at 0x10064694).
  Stores 1 bytes from a6 to ? (base unknown) (`sb` at 0x1006469c).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x100646a8).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100646b0).
  Stores 1 bytes from ra to ? (base unknown) (`sb` at 0x100646b8).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x100646c0).
  Stores 1 bytes from t9 to ? (base unknown) (`sb` at 0x100646c8).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x100646d0).
  Stores 1 bytes from t9 to ? (base unknown) (`sb` at 0x100646d8).
  Stores 1 bytes from ra to ? (base unknown) (`sb` at 0x100646e0).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100646e8).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x100646f0).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x100646f8).
  Stores 1 bytes from a6 to ? (base unknown) (`sb` at 0x10064700).
  Stores 1 bytes from a7 to ? (base unknown) (`sb` at 0x10064708).
  Stores 1 bytes from t3 to ? (base unknown) (`sb` at 0x10064710).
  Stores 1 bytes from t0 to ? (base unknown) (`sb` at 0x10064718).
  Stores 1 bytes from t0 to ? (base unknown) (`sb` at 0x10064720).
  Stores 1 bytes from a7 to ? (base unknown) (`sb` at 0x10064724).
  Stores 1 bytes from a6 to ? (base unknown) (`sb` at 0x10064728).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x1006472c).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x10064734).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10064738).
  Stores 1 bytes from ra to ? (base unknown) (`sb` at 0x1006473c).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x10064740).
  Stores 1 bytes from t9 to ? (base unknown) (`sb` at 0x10064748).
  Stores 1 bytes from t3 to ? (base unknown) (`sb` at 0x1006474c).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x10064750).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x1006475c).
  Stores 1 bytes from a7 to ? (base unknown) (`sb` at 0x100647a8).
  Stores 1 bytes from a6 to ? (base unknown) (`sb` at 0x100647b0).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x100647b4).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100647c0).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100647cc).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x100647d0).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100647e0).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100647ec).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100647f8).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100647fc).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x1006480c).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x10064818).
  Stores 1 bytes from a4 to ? (base unknown) (`sb` at 0x10064868).
  Stores 1 bytes from a3 to ? (base unknown) (`sb` at 0x1006486c).
  Stores 1 bytes from a2 to ? (base unknown) (`sb` at 0x10064878).
  Stores 1 bytes from a1 to ? (base unknown) (`sb` at 0x1006487c).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x10064888).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x1006488c).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x10064898).
  Stores 1 bytes from ra to ? (base unknown) (`sb` at 0x1006489c).
  Stores 1 bytes from t9 to ? (base unknown) (`sb` at 0x100648a8).
  Stores 1 bytes from t0 to ? (base unknown) (`sb` at 0x100648ac).
  Stores 1 bytes from a7 to ? (base unknown) (`sb` at 0x100648b8).
  Stores 1 bytes from a6 to ? (base unknown) (`sb` at 0x100648bc).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x100648c8).
  Stores 1 bytes from a4 to ? (base unknown) (`sb` at 0x100648cc).
  Stores 1 bytes from a3 to ? (base unknown) (`sb` at 0x100648d8).
  Stores 1 bytes from a2 to ? (base unknown) (`sb` at 0x100648dc).
  Stores 1 bytes from a1 to ? (base unknown) (`sb` at 0x100648e8).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x100648ec).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x100648f8).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100648fc).
  Stores 1 bytes from ra to ? (base unknown) (`sb` at 0x10064908).
  Stores 1 bytes from t9 to ? (base unknown) (`sb` at 0x1006490c).
  Stores 1 bytes from t0 to ? (base unknown) (`sb` at 0x10064918).
  Stores 1 bytes from a7 to ? (base unknown) (`sb` at 0x1006491c).
  Stores 1 bytes from a6 to ? (base unknown) (`sb` at 0x10064928).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x1006492c).
  Stores 1 bytes from a4 to ? (base unknown) (`sb` at 0x10064938).
  Stores 1 bytes from a3 to ? (base unknown) (`sb` at 0x1006493c).
  Stores 1 bytes from a2 to ? (base unknown) (`sb` at 0x10064948).
  Stores 1 bytes from a1 to ? (base unknown) (`sb` at 0x1006494c).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x10064960).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x1006496c).
  Stores 1 bytes from t0 to ? (base unknown) (`sb` at 0x10064980).
  Stores 1 bytes from a7 to ? (base unknown) (`sb` at 0x10064984).
  Stores 1 bytes from a6 to ? (base unknown) (`sb` at 0x10064990).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x10064998).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x10064824).
  At `beq` at 0x100640d8 (target 0x100640f4), taken when v0(=[a0+72]) >= 0x8 (unsigned) and falls through when v0(=[a0+72]) < 0x8 (unsigned).
  At `bne` at 0x100641f0 (target 0x10064760), taken when t3(=[[a0+8]+2]:2-8) < 0x8 (unsigned) and falls through when t3(=[[a0+8]+2]:2-8) >= 0x8 (unsigned).
  At `bne` at 0x100641f8 (target 0x1006485c), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `bne` at 0x10064200 (target 0x1006485c), taken when v0(?) != 0 and falls through when v0(?) == 0.
  At `bne` at 0x1006433c (target 0x10064854), taken when a1(?) < 0x8 (unsigned) and falls through when a1(?) >= 0x8 (unsigned).
  At `bne` at 0x10064450 (target 0x10064844), taken when a1(?) < 0x8 (unsigned) and falls through when a1(?) >= 0x8 (unsigned).
  At `beq` at 0x10064564 (target 0x10064230), taken when a1(?) >= 0x8 (unsigned) and falls through when a1(?) < 0x8 (unsigned).
  At `beq` at 0x10064774 (target 0x1006481c), taken when t3(?) == 0 and falls through when t3(?) != 0.
  At `bne` at 0x1006477c (target 0x10064788), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `bne` at 0x10064794 (target 0x10064978), taken when t2(?) < 0x2 (signed) and falls through when t2(?) >= 0x2 (signed).
  At `beq` at 0x100647e4 (target 0x1006483c), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `bne` at 0x10064810 (target 0x100647c0), taken when at(?) != 0 and falls through when at(?) == 0.
  At `bne` at 0x10064968 (target 0x10064760), taken when t3(?) < 0x8 (unsigned) and falls through when t3(?) >= 0x8 (unsigned).
  Returns v0 = 0x10 (`jr` at 0x100640ec).
  Returns v0 = ret(?); f0 = ret(?) (`jr` at 0x10064834).

- `ProcDbeGetBackBufferAttributes..AIC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1006add0 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1006add0-0x1006aeb8 (232 bytes).
  Calls `SecurityLookupIDByType [0x100d6140]` via direct with a0=a0 at entry (arg0), a1=[[a0+8]+4], a2=[0x102ca7cc], a3=0x1 (`jal` at 0x1006ae0c).
  Calls `WriteToClient [0x100b3500]` via direct with a0=a0 at entry (arg0), a1=0x20, a2=sp-48, a3=? (`jal` at 0x1006ae9c).
  At `beq` at 0x1006ade0 (target 0x1006adf0), taken when at(=[a0+72]) == v0(=0x2) and falls through when at(=[a0+72]) != v0(=0x2).
  At `bne` at 0x1006ae18 (target 0x1006ae28), taken when v0(=ret(SecurityLookupIDByType)) != 0 and falls through when v0(=ret(SecurityLookupIDByType)) == 0.
  At `beq` at 0x1006ae50 (target 0x1006ae90), taken when a3(=[a0+16]) == 0 and falls through when a3(=[a0+16]) != 0.
  Returns v0 = 0x10 (`jr` at 0x1006ade8).
  Returns v0 = [a0+40]; f0 = ret(WriteToClient) (`jr` at 0x1006aeb0).

- `SecurityLookupWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1006ce40 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1006ce40-0x1006cf38 (248 bytes).
  Stores 4 bytes from a0 to a1 (arg1 at entry) +0x18 (`sw` at 0x1006ce40) with value a0.
  Stores 4 bytes from zero to a1 (arg1 at entry) +0x34 (`sw` at 0x1006cf24) with value 0x0.
  Stores 4 bytes from zero to a1 (arg1 at entry) +0x38 (`sw` at 0x1006cf28) with value 0x0.
  Stores 4 bytes from s1 to a1 (arg1 at entry) +0x30 (`sw` at 0x1006cf2c) with value a0.
  Stores 4 bytes from v0 to a1 (arg1 at entry) +0x2c (`sw` at 0x1006cf34) with value ret(SecurityLookupIDByType).
  Calls `SecurityLookupIDByType [0x100d6140]` via direct with a0=a1 at entry (arg1), a1=a0 at entry (arg0), a2=0xffffffffc0000001, a3=a2 at entry (arg2) (`j` at 0x1006ce84).
  Calls `SecurityLookupIDByType [0x100d6140]` via direct with a0=a1 at entry (arg1), a1=a0 at entry (arg0), a2=0xffffffffc0000001, a3=a2 at entry (arg2), a4=[a1+48] (`jal` at 0x1006cec8).
  At `beq` at 0x1006ce58 (target 0x1006cf10), taken when a0 == 0 and falls through when a0 != 0.
  At `beq` at 0x1006ce64 (target 0x1006ce8c), taken when at(=[a1+116]) == 0 and falls through when at(=[a1+116]) != 0.
  At `bne` at 0x1006ce90 (target 0x1006ceb4), taken when a4(=[a1+48]) != a0 and falls through when a4(=[a1+48]) == a0.
  At `beq` at 0x1006cea0 (target 0x1006cefc), taken when a5(=[[a1+44]]:1) == 0 and falls through when a5(=[[a1+44]]:1) != 0.
  At `beq` at 0x1006ced4 (target 0x1006cee8), taken when v0(=ret(SecurityLookupIDByType)) == 0 and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  At `beq` at 0x1006cee0 (target 0x1006cf24), taken when a3(=[ret(SecurityLookupIDByType)]:1) == 0 and falls through when a3(=[ret(SecurityLookupIDByType)]:1) != 0.
  Returns v0 = 0x0 (`jr` at 0x1006ceac).
  Returns v0 = ret(SecurityLookupIDByType); f0 = ret(SecurityLookupIDByType) (`jr` at 0x1006cef4).
  Returns v0 = [a1+44] (`jr` at 0x1006cf08).
  Returns v0 = 0x0 (`jr` at 0x1006cf1c).

- `XETSwReparentWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10070e10 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10070e10-0x10070e84 (116 bytes).
  Stores 1 bytes from t3 to a0 (arg0 at entry) +0xf (`sb` at 0x10070e48) with value [a0+14]:1.
  Stores 1 bytes from t2 to a0 (arg0 at entry) +0xe (`sb` at 0x10070e4c) with value [a0+15]:1.
  Stores 1 bytes from t1 to a0 (arg0 at entry) +0xd (`sb` at 0x10070e50) with value [a0+12]:1.
  Stores 1 bytes from t0 to a0 (arg0 at entry) +0xc (`sb` at 0x10070e54) with value [a0+13]:1.
  Stores 1 bytes from a7 to a0 (arg0 at entry) +0xa (`sb` at 0x10070e58) with value [a0+9]:1.
  Stores 1 bytes from a6 to a0 (arg0 at entry) +0x9 (`sb` at 0x10070e5c) with value [a0+10]:1.
  Stores 1 bytes from a5 to a0 (arg0 at entry) +0xb (`sb` at 0x10070e60) with value [a0+8]:1.
  Stores 1 bytes from a4 to a0 (arg0 at entry) +0x8 (`sb` at 0x10070e64) with value [a0+11]:1.
  Stores 1 bytes from a3 to a0 (arg0 at entry) +0x6 (`sb` at 0x10070e68) with value [a0+5]:1.
  Stores 1 bytes from a2 to a0 (arg0 at entry) +0x5 (`sb` at 0x10070e6c) with value [a0+6]:1.
  Stores 1 bytes from a1 to a0 (arg0 at entry) +0x7 (`sb` at 0x10070e70) with value [a0+4]:1.
  Stores 1 bytes from v1 to a0 (arg0 at entry) +0x4 (`sb` at 0x10070e74) with value [a0+7]:1.
  Stores 1 bytes from v0 to a0 (arg0 at entry) +0x3 (`sb` at 0x10070e78) with value [a0+2]:1.
  Stores 1 bytes from at to a0 (arg0 at entry) +0x2 (`sb` at 0x10070e80) with value [a0+3]:1.
  Returns v0 = [a0+2]:1 (`jr` at 0x10070e7c).

- `MultibufferResetProc..NJC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10072430 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10072430-0x1007244c (28 bytes).
  Stores 4 bytes from zero to abs 0x102ca8c4 (dbcTicketResType..87) (`sw` at 0x1007243c) with value 0x0.
  Stores 4 bytes from v0 to sym(dbcWindowPrivateIndex) +0x0 (`sw` at 0x10072448) with value -0x1.
  Returns v0 = -0x1 (`jr` at 0x10072444).

- `FindWindowWithOptional` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10073360 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10073360-0x10073378 (24 bytes).
  At `beq` at 0x10073368 (target 0x10073360), taken when at(?) == 0 and falls through when at(?) != 0.
  Returns v0 = ? (`jr` at 0x10073370).

- `DeleteWindowFromAnyEvents` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100743e0 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100743e0-0x10074fcc (3052 bytes).
  Stores 4 bytes from zero to [[sym(inputInfo)+16]+148] +0x8 (`sw` at 0x100744bc) with value 0x0.
  Stores 4 bytes from a3 to table(0x102c5f98) +0x0 (`sw` at 0x100744f0) with value entry(0x102c5f98)-1.
  Stores 4 bytes from t1 to ? (base unknown) (`sw` at 0x10074568) with value [[sym(WindowTable)]].
  Stores 4 bytes from t0 to ? (base unknown) (`sw` at 0x10074578) with value [[[sym(WindowTable)]]+4].
  Stores 4 bytes from a2 to ? (base unknown) (`sw` at 0x10074664).
  Stores 4 bytes from t9 to ? (base unknown) (`sw` at 0x10074684).
  Stores 4 bytes from t8 to [[sym(clients)]] +0x30 (`sw` at 0x100746e4) with value [[[sym(WindowTable)]]+4].
  Stores 4 bytes from t3 to [[sym(clients)]] +0x2c (`sw` at 0x100746ec) with value [[sym(WindowTable)]].
  Stores 4 bytes from s0 to table(0x102c71c0) +0x0 (`sw` at 0x10074768).
  Stores 4 bytes from s0 to abs 0x102c71b8 (Lfree..4) (`sw` at 0x1007476c).
  Stores 4 bytes from a4 to abs 0x102c7240 (freeidx..3) (`sw` at 0x1007477c).
  Stores 4 bytes from t2 to ? (base unknown) (`sw` at 0x10074808) with value [[[sym(WindowTable)]]+4].
  Stores 4 bytes from t1 to ? (base unknown) (`sw` at 0x10074810) with value [[sym(WindowTable)]].
  Stores 4 bytes from t9 to ? (base unknown) (`sw` at 0x1007483c) with value [[[sym(WindowTable)]]+4].
  Stores 4 bytes from t8 to ? (base unknown) (`sw` at 0x10074844) with value [[sym(WindowTable)]].
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x10074868) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x10074870) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x1007487c) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x10074884) with value 0x0.
  Stores 4 bytes from t1 to ? (base unknown) (`sw` at 0x100748b4) with value [[sym(WindowTable)]].
  Stores 4 bytes from t0 to ? (base unknown) (`sw` at 0x100748c4) with value [[[sym(WindowTable)]]+4].
  Stores 4 bytes from zero to [[sym(clients)]] +0x34 (`sw` at 0x100748f0) with value 0x0.
  Stores 4 bytes from zero to [[sym(clients)]] +0x38 (`sw` at 0x100748f8) with value 0x0.
  Stores 4 bytes from t1 to ? (base unknown) (`sw` at 0x10074968) with value [[sym(WindowTable)]].
  Stores 4 bytes from t0 to ? (base unknown) (`sw` at 0x10074978) with value [[[sym(WindowTable)]]+4].
  Stores 4 bytes from a2 to ? (base unknown) (`sw` at 0x10074a6c).
  Stores 4 bytes from t9 to ? (base unknown) (`sw` at 0x10074a88).
  Stores 4 bytes from t8 to [[sym(clients)]] +0x30 (`sw` at 0x10074ae8) with value [[[sym(WindowTable)]]+4].
  Stores 4 bytes from t3 to [[sym(clients)]] +0x2c (`sw` at 0x10074af0) with value [[sym(WindowTable)]].
  Stores 4 bytes from s0 to table(0x102c71c0) +0x0 (`sw` at 0x10074b78).
  Stores 4 bytes from s0 to abs 0x102c71b8 (Lfree..4) (`sw` at 0x10074b7c).
  Stores 4 bytes from a4 to abs 0x102c7240 (freeidx..3) (`sw` at 0x10074b8c).
  Stores 4 bytes from t3 to ? (base unknown) (`sw` at 0x10074c24) with value [[[sym(WindowTable)]]+4].
  Stores 4 bytes from t2 to ? (base unknown) (`sw` at 0x10074c2c) with value [[sym(WindowTable)]].
  Stores 4 bytes from ra to ? (base unknown) (`sw` at 0x10074c58) with value [[[sym(WindowTable)]]+4].
  Stores 4 bytes from t9 to ? (base unknown) (`sw` at 0x10074c60) with value [[sym(WindowTable)]].
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x10074c8c) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x10074c94) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x10074ca0) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x10074ca8) with value 0x0.
  Stores 4 bytes from t0 to ? (base unknown) (`sw` at 0x10074cd8) with value [[sym(WindowTable)]].
  Stores 4 bytes from a7 to ? (base unknown) (`sw` at 0x10074ce8) with value [[[sym(WindowTable)]]+4].
  Stores 4 bytes from zero to [[sym(clients)]] +0x34 (`sw` at 0x10074d10) with value 0x0.
  Stores 4 bytes from zero to [[sym(clients)]] +0x38 (`sw` at 0x10074d18) with value 0x0.
  Stores 4 bytes from a2 to [[sym(inputInfo)+12]+156] +0x18 (`sw` at 0x10074f64).
  Stores 4 bytes from zero to [[sym(inputInfo)+12]+156] +0x4 (`sw` at 0x10074f84) with value 0x0.
  Stores 4 bytes from s3 to [[sym(inputInfo)+12]+156] +0x0 (`sw` at 0x10074f8c).
  Stores 4 bytes from zero to [[sym(inputInfo)+12]+156] +0x18 (`sw` at 0x10074f9c) with value 0x0.
  Stores 4 bytes from zero to [[sym(inputInfo)+12]+156] +0x0 (`sw` at 0x10074fa4) with value 0x0.
  Stores 4 bytes from zero to [[sym(inputInfo)+12]+156] +0x18 (`sw` at 0x10074fb4) with value 0x0.
  Stores 4 bytes from s3 to [[sym(inputInfo)+12]+156] +0x0 (`sw` at 0x10074fbc) with value 0x1.
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x10074718).
  Calls `__libc_lockmalloc` via got with a0=?, a1=?, a2=?, a3=[0x102c7240] (`jalr` at 0x10074730).
  Calls `realfree..NL [0x1025db70]` via direct with a0=entry(0x102c71c0), a1=?, a2=table(0x102c5d40), a3=[0x102c7240], a5=[sym(__us_rsthread_malloc)] (`jal` at 0x10074750).
  Calls `__libc_unlockmalloc` via got with a0=?, a1=?, a2=table(0x102c5d40), a3=[0x102c7240], a5=[sym(__us_rsthread_malloc)] (`jalr` at 0x10074784).
  Calls `(unknown callee)` via register with a0=?, a1=sp-192, a2=[0x102c60fc], a3=?, a6=[sym(clients)] (`jalr` at 0x100747f0).
  Calls `FatalError [0x10094f20]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x100748d8).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x10074b28).
  Calls `__libc_lockmalloc` via got with a0=?, a1=?, a2=?, a3=[0x102c7240] (`jalr` at 0x10074b40).
  Calls `realfree..NL [0x1025db70]` via direct with a0=entry(0x102c71c0), a1=?, a2=table(0x102c5d40), a3=[0x102c7240], a5=[sym(__us_rsthread_malloc)] (`jal` at 0x10074b60).
  Calls `__libc_unlockmalloc` via got with a0=?, a1=?, a2=table(0x102c5d40), a3=[0x102c7240], a5=[sym(__us_rsthread_malloc)] (`jalr` at 0x10074b94).
  Calls `(unknown callee)` via register with a0=?, a1=sp-192, a2=[0x102c60fc], a3=?, a5=0x1, a7=[sym(clients)] (`jalr` at 0x10074c08).
  Calls `FatalError [0x10094f20]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x10074cf8).
  Calls `DeleteWindowFromAnyExtEvents [0x1024dd90]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=? (`jal` at 0x10074d20).
  Calls `(unknown callee)` via register with a0=[sym(inputInfo)+16], a1=a1 at entry (arg1), a2=[[sym(inputInfo)+16]+44], a3=a3 at entry (arg3) (`jalr` at 0x10074f20).
  Calls `(unknown callee)` via register with a0=[sym(inputInfo)+12], a1=a0 at entry (arg0), a2=[[sym(inputInfo)+12]+44], a3=? (`jalr` at 0x10074f44).
  Calls `DoFocusEvents [0x10071a90]` via direct with a0=[sym(inputInfo)+12], a1=a0 at entry (arg0), a2=?, a3=one of 0x0, 0x3, a5=[[[sym(inputInfo)+12]+156]+4] (`jal` at 0x10074f7c).
  Calls `DoFocusEvents [0x10071a90]` via direct with a0=[sym(inputInfo)+12], a1=a0 at entry (arg0), a2=0x0, a3=one of 0x0, 0x3, a5=[[[sym(inputInfo)+12]+156]+4] (`jal` at 0x10074f94).
  Calls `DoFocusEvents [0x10071a90]` via direct with a0=[sym(inputInfo)+12], a1=a0 at entry (arg0), a2=0x1, a3=one of 0x0, 0x3, a4=0x2, a5=[[[sym(inputInfo)+12]+156]+4] (`jal` at 0x10074fac).
  At `beq` at 0x10074424 (target 0x10074448), taken when a2(=[[sym(inputInfo)+16]+44]) == 0 and falls through when a2(=[[sym(inputInfo)+16]+44]) != 0.
  At `beq` at 0x10074434 (target 0x10074f1c), taken when t8(=[[[sym(inputInfo)+16]+44]+12]) == t9(=a0) and falls through when t8(=[[[sym(inputInfo)+16]+44]+12]) != t9(=a0).
  At `beq` at 0x10074440 (target 0x10074f1c), taken when ra(=[[[sym(inputInfo)+16]+44]+40]) == at(=a0) and falls through when ra(=[[[sym(inputInfo)+16]+44]+40]) != at(=a0).
  At `beq` at 0x1007444c (target 0x1007445c), taken when a2(=[[sym(inputInfo)+12]+44]) == 0 -> outside and falls through when a2(=[[sym(inputInfo)+12]+44]) != 0.
  At `beq` at 0x10074458 (target 0x10074f40), taken when v0(=[[[sym(inputInfo)+12]+44]+12]) == v1(=a0) and falls through when v0(=[[[sym(inputInfo)+12]+44]+12]) != v1(=a0).
  At `bne` at 0x10074464 (target 0x100744a8), taken when a0(=[[[sym(inputInfo)+12]+156]]) != a1(=a0) and falls through when a0(=[[[sym(inputInfo)+12]+156]]) == a1(=a0).
  At `beq` at 0x10074470 (target 0x100744a8), taken when a2(=[a0+24]) == 0 and falls through when a2(=[a0+24]) != 0.
  At `beq` at 0x1007447c (target 0x10074488), taken when a3(=[[sym(inputInfo)+12]+44]) == 0 and falls through when a3(=[[sym(inputInfo)+12]+44]) != 0.
  At `beq` at 0x1007448c (target 0x10074f90), taken when a5(=[[[sym(inputInfo)+12]+156]+4]) == 0 and falls through when a5(=[[[sym(inputInfo)+12]+156]+4]) != 0.
  At `beq` at 0x10074498 (target 0x10074f54), taken when a5(=[[[sym(inputInfo)+12]+156]+4]) == a4(=0x2) and falls through when a5(=[[[sym(inputInfo)+12]+156]+4]) != a4(=0x2).
  At `beq` at 0x100744a0 (target 0x10074fa8), taken when a5(=[[[sym(inputInfo)+12]+156]+4]) == s3(=0x1) and falls through when a5(=[[[sym(inputInfo)+12]+156]+4]) != s3(=0x1).
  At `bne` at 0x100744b4 (target 0x100744c4), taken when a5(=[[[sym(inputInfo)+16]+148]+8]) != a6(=a0) and falls through when a5(=[[[sym(inputInfo)+16]+148]+8]) == a6(=a0).
  At `beq` at 0x100744c4 (target 0x10074d1c), taken when a7(=a1) == 0 and falls through when a7(=a1) != 0.
  At `beq` at 0x100744d8 (target 0x100744f4), taken when (a2(?) & 0x7) == 0 and falls through when (a2(?) & 0x7) != 0.
  At `beq` at 0x100744fc (target 0x10074f38), taken when a2(=[a0+120]) == 0 and falls through when a2(=[a0+120]) != 0.
  At `beq` at 0x10074508 (target 0x100748fc), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `beq` at 0x10074550 (target 0x1007457c), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `bne` at 0x1007455c (target 0x1007457c), taken when a7(?) != s3(?) and falls through when a7(?) == s3(?).
  At `beq` at 0x1007457c (target 0x100748d0), taken when a3(=one of 0x0, 0x1) == 0 and falls through when a3(=one of 0x0, 0x1) != 0.
  At `beq` at 0x10074588 (target 0x10074594), taken when a2(=[a0+120]) == 0 and falls through when a2(=[a0+120]) != 0.
  At `beq` at 0x10074594 (target 0x100748fc), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `beq` at 0x100745cc (target 0x100748d0), taken when a6(?) >= 0x100 (signed) and falls through when a6(?) < 0x100 (signed).
  At `beq` at 0x100745e4 (target 0x100748d0), taken when a7(?) == 0 and falls through when a7(?) != 0.
  At `beq` at 0x100745ec (target 0x10074d84), taken when a2(?) == t9(=0x6) and falls through when a2(?) != t9(=0x6).
  At `beq` at 0x100745f4 (target 0x10074ddc), taken when a2(?) == ra(=0x7) and falls through when a2(?) != ra(=0x7).
  At `beq` at 0x100745fc (target 0x10074e34), taken when a2(?) == at(=0x8) and falls through when a2(?) != at(=0x8).
  At `beq` at 0x10074604 (target 0x10074e80), taken when a2(?) == v0(=0x9) and falls through when a2(?) != v0(=0x9).
  At `beq` at 0x1007460c (target 0x10074ec0), taken when a2(?) == v1(=0xa) and falls through when a2(?) != v1(=0xa).
  At `beq` at 0x10074614 (target 0x10074efc), taken when a2(?) == a0(=0xb) and falls through when a2(?) != a0(=0xb).
  At `beq` at 0x10074630 (target 0x10074888), taken when s0(?) == 0 and falls through when s0(?) != 0.
  At `beq` at 0x10074648 (target 0x10074540), taken when s0(?) == 0 and falls through when s0(?) != 0.
  At `bne` at 0x1007465c (target 0x10074640), taken when t8(?) != s3(?) and falls through when t8(?) == s3(?).
  At `beq` at 0x10074680 (target 0x100746f8), taken when (s4(=0xffffffff80000000) & s1(?)) == 0 and falls through when (s4(=0xffffffff80000000) & s1(?)) != 0.
  At `beq` at 0x100746a0 (target 0x100746f8), taken when ra(?) == 0 and falls through when ra(?) != 0.
  At `blez` at 0x100746ac (target 0x100746f8), taken when a2(=[0x102c5d70]) <= 0 (signed) and falls through when a2(=[0x102c5d70]) > 0 (signed).
  At `beq` at 0x100746bc (target 0x100746f0), taken when t3(?) == 0 and falls through when t3(?) != 0.
  At `beq` at 0x100746c8 (target 0x100746f0), taken when a2(=[[sym(clients)]]) == 0 and falls through when a2(=[[sym(clients)]]) != 0.
  At `bne` at 0x100746d4 (target 0x100748e8), taken when t0(=[[[sym(clients)]]+48]) != a5(?) and falls through when t0(=[[[sym(clients)]]+48]) == a5(?).
  At `bnel` at 0x100746f0 (target 0x10074820), taken when t1(?) != 0 and falls through when t1(?) == 0.
  At `beq` at 0x100746f8 (target 0x10074720), taken when s1(?) == 0 and falls through when s1(?) != 0.
  At `beq` at 0x10074724 (target 0x1007473c), taken when at(=[sym(__us_rsthread_malloc)]) == 0 and falls through when at(=[sym(__us_rsthread_malloc)]) != 0.
  At `beq` at 0x10074748 (target 0x10074768), taken when a0(=entry(0x102c71c0)) == 0 and falls through when a0(=entry(0x102c71c0)) != 0.
  At `beq` at 0x10074778 (target 0x1007478c), taken when a5(=[sym(__us_rsthread_malloc)]) == 0 and falls through when a5(=[sym(__us_rsthread_malloc)]) != 0.
  At `beq` at 0x100747a8 (target 0x100747b4), taken when a7(?) == t0(?) and falls through when a7(?) != t0(?).
  At `beq` at 0x100747b8 (target 0x100747f8), taken when a2(=[0x102c60fc]) == 0 and falls through when a2(=[0x102c60fc]) != 0.
  At `beq` at 0x100747c8 (target 0x100747f8), taken when t1(?) >= a3(?) (unsigned) and falls through when t1(?) < a3(?) (unsigned).
  At `beq` at 0x100747e0 (target 0x100747f8), taken when a7(?) == 0 and falls through when a7(?) != 0.
  At `beq` at 0x10074814 (target 0x100746f8), taken when a3(?) == a7(=([sym(clients)] + ([0x102c5d70] << 0x2))) and falls through when a3(?) != a7(=([sym(clients)] + ([0x102c5d70] << 0x2))).
  At `beq` at 0x10074820 (target 0x10074848), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `bne` at 0x1007482c (target 0x10074874), taken when t3(?) != a5(?) and falls through when t3(?) == a5(?).
  At `beq` at 0x1007484c (target 0x10074814), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `beq` at 0x10074858 (target 0x10074800), taken when ra(?) == a5(?) and falls through when ra(?) != a5(?).
  At `bne` at 0x10074860 (target 0x10074814), taken when t0(?) != a5(?) and falls through when t0(?) == a5(?).
  At `bne` at 0x10074874 (target 0x10074848), taken when t0(?) != a5(?) and falls through when t0(?) == a5(?).
  At `beq` at 0x1007489c (target 0x100748d0), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `bne` at 0x100748a8 (target 0x100748d4), taken when a7(?) != s3(?) and falls through when a7(?) == s3(?).
  At `bne` at 0x100748e8 (target 0x100746f0), taken when t0(=[[[sym(clients)]]+56]) != a5(?) and falls through when t0(=[[[sym(clients)]]+56]) == a5(?).
  At `beq` at 0x10074908 (target 0x10074f30), taken when a2(=[a0+120]) == 0 and falls through when a2(=[a0+120]) != 0.
  At `beq` at 0x10074914 (target 0x10074d1c), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `beq` at 0x10074950 (target 0x1007497c), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `bne` at 0x1007495c (target 0x1007497c), taken when a7(?) != s3(?) and falls through when a7(?) == s3(?).
  At `beq` at 0x1007497c (target 0x10074cf0), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `beq` at 0x1007498c (target 0x10074998), taken when a2(=[a0+120]) == 0 and falls through when a2(=[a0+120]) != 0.
  At `beq` at 0x10074998 (target 0x10074d1c), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `beq` at 0x100749cc (target 0x10074cf0), taken when a3(?) >= 0x100 (signed) and falls through when a3(?) < 0x100 (signed).
  At `beq` at 0x100749e8 (target 0x10074cf0), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0x100749f0 (target 0x10074d58), taken when a2(?) == t9(=0x6) and falls through when a2(?) != t9(=0x6).
  At `beq` at 0x100749f8 (target 0x10074db0), taken when a2(?) == ra(=0x7) and falls through when a2(?) != ra(=0x7).
  At `beq` at 0x10074a00 (target 0x10074e08), taken when a2(?) == at(=0x8) and falls through when a2(?) != at(=0x8).
  At `beq` at 0x10074a08 (target 0x10074e60), taken when a2(?) == v0(=0x9) and falls through when a2(?) != v0(=0x9).
  At `beq` at 0x10074a10 (target 0x10074ea0), taken when a2(?) == v1(=0xa) and falls through when a2(?) != v1(=0xa).
  At `beq` at 0x10074a18 (target 0x10074ee0), taken when a2(?) == a0(=0xb) and falls through when a2(?) != a0(=0xb).
  At `beq` at 0x10074a34 (target 0x10074cac), taken when s0(?) == 0 and falls through when s0(?) != 0.
  At `beq` at 0x10074a4c (target 0x10074940), taken when s0(?) == 0 and falls through when s0(?) != 0.
  At `bne` at 0x10074a64 (target 0x10074a44), taken when t8(?) != s3(?) and falls through when t8(?) == s3(?).
  At `beq` at 0x10074a84 (target 0x10074b08), taken when (s4(=0xffffffff80000000) & s1(?)) == 0 and falls through when (s4(=0xffffffff80000000) & s1(?)) != 0.
  At `beq` at 0x10074aa4 (target 0x10074b08), taken when ra(?) == 0 and falls through when ra(?) != 0.
  At `blez` at 0x10074ab0 (target 0x10074b08), taken when a2(=[0x102c5d70]) <= 0 (signed) and falls through when a2(=[0x102c5d70]) > 0 (signed).
  At `beq` at 0x10074ac0 (target 0x10074b00), taken when t3(?) == 0 and falls through when t3(?) != 0.
  At `beq` at 0x10074acc (target 0x10074b00), taken when a2(=[[sym(clients)]]) == 0 and falls through when a2(=[[sym(clients)]]) != 0.
  At `bne` at 0x10074ad8 (target 0x10074d08), taken when t0(=[[[sym(clients)]]+48]) != a5(?) and falls through when t0(=[[[sym(clients)]]+48]) == a5(?).
  At `bnel` at 0x10074b00 (target 0x10074c3c), taken when t1(?) != 0 and falls through when t1(?) == 0.
  At `beq` at 0x10074b08 (target 0x10074b30), taken when s1(?) == 0 and falls through when s1(?) != 0.
  At `beq` at 0x10074b34 (target 0x10074b4c), taken when at(=[sym(__us_rsthread_malloc)]) == 0 and falls through when at(=[sym(__us_rsthread_malloc)]) != 0.
  At `beq` at 0x10074b58 (target 0x10074b78), taken when a0(=entry(0x102c71c0)) == 0 and falls through when a0(=entry(0x102c71c0)) != 0.
  At `beq` at 0x10074b88 (target 0x10074b9c), taken when a5(=[sym(__us_rsthread_malloc)]) == 0 and falls through when a5(=[sym(__us_rsthread_malloc)]) != 0.
  At `beq` at 0x10074bbc (target 0x10074bc8), taken when t0(?) == t1(?) and falls through when t0(?) != t1(?).
  At `beq` at 0x10074bcc (target 0x10074a48), taken when a2(=[0x102c60fc]) == 0 and falls through when a2(=[0x102c60fc]) != 0.
  At `beq` at 0x10074bdc (target 0x10074a48), taken when t2(?) >= a3(?) (unsigned) and falls through when t2(?) < a3(?) (unsigned).
  At `beq` at 0x10074bf4 (target 0x10074a48), taken when t0(?) == 0 and falls through when t0(?) != 0.
  At `beq` at 0x10074c30 (target 0x10074b08), taken when a3(?) == a7(=([sym(clients)] + ([0x102c5d70] << 0x2))) and falls through when a3(?) != a7(=([sym(clients)] + ([0x102c5d70] << 0x2))).
  At `beq` at 0x10074c3c (target 0x10074c64), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `bne` at 0x10074c48 (target 0x10074c84), taken when t8(?) != a5(?) and falls through when t8(?) == a5(?).
  At `beq` at 0x10074c68 (target 0x10074c30), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `bne` at 0x10074c74 (target 0x10074c98), taken when at(?) != a5(?) and falls through when at(?) == a5(?).
  At `bne` at 0x10074c84 (target 0x10074c64), taken when t0(?) != a5(?) and falls through when t0(?) == a5(?).
  At `bne` at 0x10074c98 (target 0x10074c30), taken when t0(?) != a5(?) and falls through when t0(?) == a5(?).
  At `beq` at 0x10074cc0 (target 0x10074cf0), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `bne` at 0x10074ccc (target 0x10074cf4), taken when a6(?) != s3(?) and falls through when a6(?) == s3(?).
  At `bne` at 0x10074d08 (target 0x10074b00), taken when t0(=[[[sym(clients)]]+56]) != a5(?) and falls through when t0(=[[[sym(clients)]]+56]) == a5(?).
  At `bgez` at 0x10074f70 (target 0x10074f5c), taken when a4(?) >= 0 (signed) and falls through when a4(?) < 0 (signed).
  Returns v0 = ret(DeleteWindowFromAnyExtEvents); f0 = ret(DeleteWindowFromAnyExtEvents) (`jr` at 0x10074d50).
  The instructions from 0x10074534 to 0x1007453c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x10074934 to 0x1007493c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x10074c18 to 0x10074c1c are not reached by any path from the entry, and their branches are not listed.

- `sgiCapPaintWindowBackground..ABE` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10075ba0 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10075ba0-0x10075ca8 (264 bytes).
  Stores 4 bytes from t9 to [a0+16] +0xd8 (`sw` at 0x10075bd8) with value [[([[a0+16]+436] + ([0x102cf2c4] << 0x2))]+20].
  Stores 4 bytes from at to [a0+16] +0xd8 (`sw` at 0x10075c58) with value 0x10075ba0.
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=? (`jalr` at 0x10075c38).
  Calls `(unknown callee)` via register with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jalr` at 0x10075c70).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=a1 at entry (arg1), a3=? (`jalr` at 0x10075c8c).
  At `beq` at 0x10075bf8 (target 0x10075c2c), taken when at(=[[([[a0+16]+436] + ([0x102cf2c4] << 0x2))]+40]) == 0 and falls through when at(=[[([[a0+16]+436] + ([0x102cf2c4] << 0x2))]+40]) != 0.
  At `beq` at 0x10075c00 (target 0x10075c2c), taken when s0(=[[([[a0+16]+436] + ([0x102cf2c4] << 0x2))]+44]) == 0 and falls through when s0(=[[([[a0+16]+436] + ([0x102cf2c4] << 0x2))]+44]) != 0.
  At `beq` at 0x10075c14 (target 0x10075c68), taken when t9(?) == 0 and falls through when t9(?) != 0.
  At `bne` at 0x10075c20 (target 0x10075c10), taken when s0(?) != 0 and falls through when s0(?) == 0.
  At `beq` at 0x10075c78 (target 0x10075c94), taken when v0(=ret(?)) == 0 and falls through when v0(=ret(?)) != 0.
  At `bne` at 0x10075c98 (target 0x10075c10), taken when s0(?) != 0 and falls through when s0(?) == 0.
  Returns v0 = ret(?); f0 = ret(?) (`jr` at 0x10075c60).

- `nmbxCanSupportBuffers` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10079be0 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10079be0-0x10079c50 (112 bytes).
  Calls `lookupCapabilityByVisualID [0x1020c970]` via direct with a0=?, a1=[0x102cac04], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x10079c1c).
  At `beq` at 0x10079bf0 (target 0x10079c04), taken when v0(=[a0+120]) == 0 and falls through when v0(=[a0+120]) != 0.
  At `beq` at 0x10079c0c (target 0x10079c04), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0x10079c28 (target 0x10079c40), taken when v0(=ret(lookupCapabilityByVisualID)) == 0 and falls through when v0(=ret(lookupCapabilityByVisualID)) != 0.
  Returns v0 = [ret(lookupCapabilityByVisualID)+8]; f0 = ret(lookupCapabilityByVisualID) (`jr` at 0x10079c38).
  Returns v0 = 0x0; f0 = ret(lookupCapabilityByVisualID) (`jr` at 0x10079c48).

- `ProcXineramaDestroySubwindows` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1007a5b0 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1007a5b0-0x1007a71c (364 bytes).
  Stores 4 bytes from a5 to abs 0x102ca77c (xineramaPostponeEvents) (`sw` at 0x1007a63c) with value 0x1.
  Stores 4 bytes from a5 to sym(panoramiXMode) +0x0 (`sw` at 0x1007a640) with value 0x1.
  Stores 4 bytes from zero to sym(panoramiXScreen0) +0x0 (`sw` at 0x1007a690) with value 0x0.
  Stores 4 bytes from t8 to [a0+8] +0x4 (`sw` at 0x1007a6ac).
  Stores 4 bytes from t9 to sym(panoramiXScreen0) +0x0 (`sw` at 0x1007a6b4) with value 0x1.
  Stores 4 bytes from zero to sym(panoramiXScreen0) +0x0 (`sw` at 0x1007a6b8) with value 0x0.
  Stores 4 bytes from zero to abs 0x102ca77c (xineramaPostponeEvents) (`sw` at 0x1007a6e8) with value 0x0.
  Stores 4 bytes from zero to sym(panoramiXMode) +0x0 (`sw` at 0x1007a6fc) with value 0x0.
  Calls `SecurityLookupIDByType [0x100d6140]` via direct with a0=a0 at entry (arg0), a1=[[a0+8]+4], a2=[sym(XRT_WINDOW)], a3=0x4 (`jal` at 0x1007a61c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x1007a684).
  Calls `XineramaDeliverVisibilityNotify [0x10197300]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1007a6bc).
  Calls `XineramaDeliverExpose [0x100e7410]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1007a6dc).
  At `beq` at 0x1007a5d8 (target 0x1007a604), taken when v1(=[a0+72]) == a1(=0x2) and falls through when v1(=[a0+72]) != a1(=0x2).
  At `beq` at 0x1007a630 (target 0x1007a700), taken when v0(=ret(SecurityLookupIDByType)) == 0 and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  At `blez` at 0x1007a65c (target 0x1007a714), taken when a3(=[0x102c5f1c]) <= 0 (signed) and falls through when a3(=[0x102c5f1c]) > 0 (signed).
  At `bne` at 0x1007a694 (target 0x1007a6bc), taken when v0(=ret(?)) != 0 and falls through when v0(=ret(?)) == 0.
  At `beq` at 0x1007a69c (target 0x1007a6b8), taken when s0(?) == s6(=ret(SecurityLookupIDByType)-8) and falls through when s0(?) != s6(=ret(SecurityLookupIDByType)-8).
  At `bne` at 0x1007a6a8 (target 0x1007a680), taken when s4(=ret(SecurityLookupIDByType)) != s0(?) and falls through when s4(=ret(SecurityLookupIDByType)) == s0(?).
  Returns v0 = 0x10 (`jr` at 0x1007a5ec).
  Returns v0 = ? (`jr` at 0x1007a5fc).
  The instructions from 0x1007a678 to 0x1007a67c are not reached by any path from the entry, and their branches are not listed.
- `InitModMap..CG` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1007cac0 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1007cac0-0x1007cca4 (484 bytes).
  Stores 1 bytes from zero to a0 (arg0 at entry) +0x150 (`sb` at 0x1007cac4) with value 0x0.
  Stores 1 bytes from a7 to ? (base unknown) (`sb` at 0x1007cb74).
  Stores 1 bytes from a7 to a0 (arg0 at entry) +0x150 (`sb` at 0x1007cb80).
  Stores 4 bytes from v0 to a0 (arg0 at entry) +0x20 (`sw` at 0x1007cb90) with value ret(Xalloc).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x1007cc4c).
  Stores 1 bytes from a7 to ? (base unknown) (`sb` at 0x1007cc54).
  Calls `Xalloc [0x1020aeb0]` via direct with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?, a4=0x1 (`jal` at 0x1007cb88).
  Calls `bzero` via got with a0=ret(Xalloc), a1=([a0+336]:1 << 0x3), a2=?, a3=?, a6=[a0+336]:1 (`jalr` at 0x1007cbc4).
  At `beq` at 0x1007cb28 (target 0x1007cb84), taken when a0(?) == s2(=0xf8) and falls through when a0(?) != s2(=0xf8).
  At `beq` at 0x1007cb40 (target 0x1007cb20), taken when v0(?) == s0(=0x8) and falls through when v0(?) != s0(=0x8).
  At `beq` at 0x1007cb58 (target 0x1007cb40), taken when (at(?) & a4(?)) == 0 and falls through when (at(?) & a4(?)) != 0.
  At `beq` at 0x1007cb70 (target 0x1007cb40), taken when a6(?) >= a7(?) (signed) and falls through when a6(?) < a7(?) (signed).
  At `bne` at 0x1007cb94 (target 0x1007cbbc), taken when v0(=ret(Xalloc)) != 0 and falls through when v0(=ret(Xalloc)) == 0.
  At `beq` at 0x1007cb9c (target 0x1007cbbc), taken when a6(=[a0+336]:1) == 0 and falls through when a6(=[a0+336]:1) != 0.
  At `beq` at 0x1007cc28 (target 0x1007cc58), taken when (t1(?) & a5(?)) == 0 and falls through when (t1(?) & a5(?)) != 0.
  At `bne` at 0x1007cc64 (target 0x1007cc20), taken when a3(?) != s0(=0x8) and falls through when a3(?) == s0(=0x8).
  At `bne` at 0x1007cc78 (target 0x1007cc10), taken when t0(?) != s2(=0xf8) and falls through when t0(?) == s2(=0xf8).
  Returns v0 = 0x0; f0 = ret(Xalloc) (`jr` at 0x1007cbb4).
  Returns v0 = 0x1; f0 = ret(bzero) (`jr` at 0x1007cc8c).
  The instructions from 0x1007cb18 to 0x1007cb1c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1007cb3c to 0x1007cb3c are not reached by any path from the entry, and their branches are not listed.

- `SProcSetMBufferAttributes..GLC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10082010 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10082010-0x10082778 (1896 bytes).
  Stores 1 bytes from v0 to [a0+8] +0x3 (`sb` at 0x10082024) with value [[a0+8]+2]:1.
  Stores 1 bytes from v1 to [a0+8] +0x2 (`sb` at 0x10082028) with value [[a0+8]+3]:1.
  Stores 1 bytes from a3 to [a0+8] +0x4 (`sb` at 0x10082064) with value [[a0+8]+7]:1.
  Stores 1 bytes from a4 to [a0+8] +0x7 (`sb` at 0x10082068) with value [[a0+8]+4]:1.
  Stores 1 bytes from t2 to [a0+8] +0xa (`sb` at 0x10082084) with value [[a0+8]+9]:1.
  Stores 1 bytes from t1 to [a0+8] +0xb (`sb` at 0x10082088) with value [[a0+8]+8]:1.
  Stores 1 bytes from a5 to [a0+8] +0x5 (`sb` at 0x10082098) with value [[a0+8]+6]:1.
  Stores 1 bytes from t0 to [a0+8] +0x8 (`sb` at 0x100820a4) with value [[a0+8]+11]:1.
  Stores 1 bytes from a7 to [a0+8] +0x6 (`sb` at 0x100820ac) with value [[a0+8]+5]:1.
  Stores 1 bytes from a1 to [a0+8] +0x9 (`sb` at 0x100820b8) with value [[a0+8]+10]:1.
  Stores 1 bytes from at to [a0+8] +0x20 (`sb` at 0x10082148) with value [[a0+8]+35]:1.
  Stores 1 bytes from v0 to [a0+8] +0x23 (`sb` at 0x10082154) with value [[a0+8]+32]:1.
  Stores 1 bytes from s6 to ? (base unknown) (`sb` at 0x10082174).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10082178).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x1008217c).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x10082180).
  Stores 1 bytes from a1 to ? (base unknown) (`sb` at 0x10082184).
  Stores 1 bytes from a2 to ? (base unknown) (`sb` at 0x10082188).
  Stores 1 bytes from a3 to ? (base unknown) (`sb` at 0x1008218c).
  Stores 1 bytes from a4 to ? (base unknown) (`sb` at 0x10082190).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x10082194).
  Stores 1 bytes from a6 to ? (base unknown) (`sb` at 0x10082198).
  Stores 1 bytes from a7 to ? (base unknown) (`sb` at 0x1008219c).
  Stores 1 bytes from t0 to ? (base unknown) (`sb` at 0x100821a0).
  Stores 1 bytes from t1 to ? (base unknown) (`sb` at 0x100821a4).
  Stores 1 bytes from t2 to ? (base unknown) (`sb` at 0x100821a8).
  Stores 1 bytes from t3 to ? (base unknown) (`sb` at 0x100821ac).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x100821b0).
  Stores 1 bytes from t9 to ? (base unknown) (`sb` at 0x100821b4).
  Stores 1 bytes from ra to ? (base unknown) (`sb` at 0x100821b8).
  Stores 1 bytes from s0 to ? (base unknown) (`sb` at 0x100821bc).
  Stores 1 bytes from s1 to ? (base unknown) (`sb` at 0x100821c0).
  Stores 1 bytes from s2 to ? (base unknown) (`sb` at 0x100821c4).
  Stores 1 bytes from s3 to ? (base unknown) (`sb` at 0x100821c8).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10082224).
  Stores 1 bytes from s6 to ? (base unknown) (`sb` at 0x10082228).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10082234).
  Stores 1 bytes from s6 to ? (base unknown) (`sb` at 0x10082238).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10082244).
  Stores 1 bytes from s6 to ? (base unknown) (`sb` at 0x10082248).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10082254).
  Stores 1 bytes from s6 to ? (base unknown) (`sb` at 0x10082258).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x10082260).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10082268).
  Stores 1 bytes from s6 to ? (base unknown) (`sb` at 0x10082288).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x1008228c).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x10082290).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x10082294).
  Stores 1 bytes from a1 to ? (base unknown) (`sb` at 0x10082298).
  Stores 1 bytes from a2 to ? (base unknown) (`sb` at 0x1008229c).
  Stores 1 bytes from a3 to ? (base unknown) (`sb` at 0x100822a0).
  Stores 1 bytes from a4 to ? (base unknown) (`sb` at 0x100822a4).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x100822a8).
  Stores 1 bytes from a6 to ? (base unknown) (`sb` at 0x100822ac).
  Stores 1 bytes from a7 to ? (base unknown) (`sb` at 0x100822b0).
  Stores 1 bytes from t0 to ? (base unknown) (`sb` at 0x100822b4).
  Stores 1 bytes from t1 to ? (base unknown) (`sb` at 0x100822b8).
  Stores 1 bytes from t2 to ? (base unknown) (`sb` at 0x100822bc).
  Stores 1 bytes from t3 to ? (base unknown) (`sb` at 0x100822c0).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x100822c4).
  Stores 1 bytes from t9 to ? (base unknown) (`sb` at 0x100822c8).
  Stores 1 bytes from ra to ? (base unknown) (`sb` at 0x100822cc).
  Stores 1 bytes from s0 to ? (base unknown) (`sb` at 0x100822d0).
  Stores 1 bytes from s1 to ? (base unknown) (`sb` at 0x100822d4).
  Stores 1 bytes from s2 to ? (base unknown) (`sb` at 0x100822d8).
  Stores 1 bytes from s3 to ? (base unknown) (`sb` at 0x100822dc).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10082338).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x1008233c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10082348).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x1008234c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10082358).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x1008235c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10082368).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x1008236c).
  Stores 1 bytes from s6 to ? (base unknown) (`sb` at 0x10082374).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x1008237c).
  Stores 1 bytes from a3 to ? (base unknown) (`sb` at 0x1008241c).
  Stores 1 bytes from a4 to ? (base unknown) (`sb` at 0x10082420).
  Stores 1 bytes from t9 to ? (base unknown) (`sb` at 0x10082424).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x10082428).
  Stores 1 bytes from a7 to ? (base unknown) (`sb` at 0x1008242c).
  Stores 1 bytes from t0 to ? (base unknown) (`sb` at 0x10082430).
  Stores 1 bytes from t1 to ? (base unknown) (`sb` at 0x10082434).
  Stores 1 bytes from t2 to ? (base unknown) (`sb` at 0x10082438).
  Stores 1 bytes from t3 to ? (base unknown) (`sb` at 0x1008243c).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x10082440).
  Stores 1 bytes from a1 to ? (base unknown) (`sb` at 0x10082444).
  Stores 1 bytes from a2 to ? (base unknown) (`sb` at 0x10082448).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10082450).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x10082458).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x10082460).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x10082468).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10082470).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x10082478).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10082480).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x1008248c).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x10082494).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x1008249c).
  Stores 1 bytes from s7 to ? (base unknown) (`sb` at 0x100824a4).
  Stores 1 bytes from s7 to ? (base unknown) (`sb` at 0x100824ac).
  Stores 1 bytes from s7 to ? (base unknown) (`sb` at 0x100824b4).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x100824bc).
  Stores 1 bytes from s7 to ? (base unknown) (`sb` at 0x100824c4).
  Stores 1 bytes from s7 to ? (base unknown) (`sb` at 0x100824cc).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x100824d4).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x100824d8).
  Stores 1 bytes from t9 to ? (base unknown) (`sb` at 0x1008252c).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x10082530).
  Stores 1 bytes from t3 to ? (base unknown) (`sb` at 0x10082534).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x10082540).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x1008254c).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x10082550).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10082560).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x1008256c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10082578).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x1008257c).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x1008258c).
  Stores 1 bytes from a4 to ? (base unknown) (`sb` at 0x100825a0).
  Stores 1 bytes from t9 to [a0+8] +0x2a (`sb` at 0x10082650) with value [[a0+8]+41]:1.
  Stores 1 bytes from t8 to [a0+8] +0x29 (`sb` at 0x10082654) with value [[a0+8]+42]:1.
  Stores 1 bytes from s7 to [a0+8] +0x2b (`sb` at 0x10082660) with value [[a0+8]+40]:1.
  Stores 1 bytes from s4 to [a0+8] +0x28 (`sb` at 0x10082664) with value [[a0+8]+43]:1.
  Stores 1 bytes from t3 to [a0+8] +0x26 (`sb` at 0x10082670) with value [[a0+8]+37]:1.
  Stores 1 bytes from t2 to [a0+8] +0x25 (`sb` at 0x10082674) with value [[a0+8]+38]:1.
  Stores 1 bytes from t1 to [a0+8] +0x27 (`sb` at 0x10082680) with value [[a0+8]+36]:1.
  Stores 1 bytes from t0 to [a0+8] +0x24 (`sb` at 0x10082684) with value [[a0+8]+39]:1.
  Stores 1 bytes from a7 to [a0+8] +0x22 (`sb` at 0x10082690) with value [[a0+8]+33]:1.
  Stores 1 bytes from a4 to [a0+8] +0x21 (`sb` at 0x10082694) with value [[a0+8]+34]:1.
  Stores 1 bytes from a2 to [a0+8] +0x23 (`sb` at 0x100826a0) with value [[a0+8]+32]:1.
  Stores 1 bytes from a1 to [a0+8] +0x20 (`sb` at 0x100826a4) with value [[a0+8]+35]:1.
  Stores 1 bytes from a0 to [a0+8] +0x1e (`sb` at 0x100826b0) with value [[a0+8]+29]:1.
  Stores 1 bytes from v1 to [a0+8] +0x1d (`sb` at 0x100826b4) with value [[a0+8]+30]:1.
  Stores 1 bytes from v0 to [a0+8] +0x1f (`sb` at 0x100826c0) with value [[a0+8]+28]:1.
  Stores 1 bytes from at to [a0+8] +0x1c (`sb` at 0x100826c4) with value [[a0+8]+31]:1.
  Stores 1 bytes from t9 to [a0+8] +0x1a (`sb` at 0x100826d0) with value [[a0+8]+25]:1.
  Stores 1 bytes from t8 to [a0+8] +0x19 (`sb` at 0x100826d4) with value [[a0+8]+26]:1.
  Stores 1 bytes from s7 to [a0+8] +0x1b (`sb` at 0x100826e0) with value [[a0+8]+24]:1.
  Stores 1 bytes from s4 to [a0+8] +0x18 (`sb` at 0x100826e4) with value [[a0+8]+27]:1.
  Stores 1 bytes from t3 to [a0+8] +0x16 (`sb` at 0x100826f0) with value [[a0+8]+21]:1.
  Stores 1 bytes from t2 to [a0+8] +0x15 (`sb` at 0x100826f4) with value [[a0+8]+22]:1.
  Stores 1 bytes from t1 to [a0+8] +0x17 (`sb` at 0x10082700) with value [[a0+8]+20]:1.
  Stores 1 bytes from t0 to [a0+8] +0x14 (`sb` at 0x10082704) with value [[a0+8]+23]:1.
  Stores 1 bytes from a7 to [a0+8] +0x12 (`sb` at 0x10082710) with value [[a0+8]+17]:1.
  Stores 1 bytes from a4 to [a0+8] +0x11 (`sb` at 0x10082714) with value [[a0+8]+18]:1.
  Stores 1 bytes from a2 to [a0+8] +0x13 (`sb` at 0x10082720) with value [[a0+8]+16]:1.
  Stores 1 bytes from a1 to [a0+8] +0x10 (`sb` at 0x10082724) with value [[a0+8]+19]:1.
  Stores 1 bytes from a0 to [a0+8] +0xe (`sb` at 0x10082730) with value [[a0+8]+13]:1.
  Stores 1 bytes from v1 to [a0+8] +0xd (`sb` at 0x10082734) with value [[a0+8]+14]:1.
  Stores 1 bytes from v0 to [a0+8] +0xf (`sb` at 0x10082744) with value [[a0+8]+12]:1.
  Stores 1 bytes from at to [a0+8] +0xc (`sb` at 0x10082750) with value [[a0+8]+15]:1.
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x1008275c).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x10082760).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x1008276c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10082774).
  Calls `ProcSetMBufferAttributes..DKC [0x10217120]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=a0 at entry (arg0) (`j` at 0x100825b8).
  At `beq` at 0x10082044 (target 0x10082060), taken when at(=[a0+72]) >= 0x3 (unsigned) and falls through when at(=[a0+72]) < 0x3 (unsigned).
  At `bne` at 0x100820bc (target 0x100824e0), taken when a5(=[[a0+8]+2]:2-3) < 0x8 (unsigned) and falls through when a5(=[[a0+8]+2]:2-3) >= 0x8 (unsigned).
  At `bne` at 0x100820c4 (target 0x10082648), taken when a1(?) != 0 and falls through when a1(?) == 0.
  At `bne` at 0x1008227c (target 0x100825cc), taken when s4(?) < 0x8 (unsigned) and falls through when s4(?) >= 0x8 (unsigned).
  At `beq` at 0x10082390 (target 0x10082170), taken when s4(?) >= 0x8 (unsigned) and falls through when s4(?) < 0x8 (unsigned).
  At `beq` at 0x100824f8 (target 0x100825a4), taken when s4(?) == 0 and falls through when s4(?) != 0.
  At `bne` at 0x10082500 (target 0x1008250c), taken when a2(?) != 0 and falls through when a2(?) == 0.
  At `bne` at 0x10082514 (target 0x10082754), taken when s6(?) < 0x2 (signed) and falls through when s6(?) >= 0x2 (signed).
  At `beq` at 0x10082564 (target 0x100825c0), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `bne` at 0x10082590 (target 0x10082540), taken when at(?) != 0 and falls through when at(?) == 0.
  Returns v0 = 0x10 (`jr` at 0x10082058).

- `AccessUnmapSubwindows` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10082780 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10082780-0x10082864 (228 bytes).
  Stores 4 bytes from a1 to a0 (arg0 at entry) +0x18 (`sw` at 0x10082808).
  Calls `SecurityLookupWindow [0x1006ce40]` via direct with a0=[[a0+8]+4], a1=a0 at entry (arg0), a2=0x0, a3=a3 at entry (arg3) (`jal` at 0x100827d8).
  Calls `CheckWindowAccess [0x1018ed00]` via direct with a0=0x1, a1=a0 at entry (arg0), a2=ret(SecurityLookupWindow), a3=0x0 (`jal` at 0x10082814).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x10082850).
  At `beq` at 0x100827a4 (target 0x100827c8), taken when v1(=[a0+72]) == a1(=0x2) and falls through when v1(=[a0+72]) != a1(=0x2).
  At `bne` at 0x100827e0 (target 0x1008280c), taken when v0(=ret(SecurityLookupWindow)) != 0 and falls through when v0(=ret(SecurityLookupWindow)) == 0.
  At `bne` at 0x1008281c (target 0x1008282c), taken when v0(=ret(CheckWindowAccess)) != 0 and falls through when v0(=ret(CheckWindowAccess)) == 0.
  Returns v0 = 0x10 (`jr` at 0x100827b0).
  Returns v0 = ? (`jr` at 0x100827c0).
  Returns v0 = 0x3; f0 = ret(SecurityLookupWindow) (`jr` at 0x10082804).

- `ShmInfoAddWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1008b560 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1008b560-0x1008b6b8 (344 bytes).
  Stores 4 bytes from a2 to ret(ShmInfoAlloc..KJ) +0x0 (`sw` at 0x1008b62c) with value [a0+4].
  Stores 4 bytes from zero to ret(ShmInfoAlloc..KJ) +0x4 (`sw` at 0x1008b634) with value 0x0.
  Stores 4 bytes from zero to ret(ShmInfoAlloc..KJ) +0x8 (`sw` at 0x1008b63c) with value 0x0.
  Stores 4 bytes from a4 to ret(ShmInfoAlloc..KJ) +0xc (`sw` at 0x1008b64c).
  Stores 4 bytes from v0 to ? (base unknown) (`sw` at 0x1008b650).
  Stores 4 bytes from a5 to ? (base unknown) (`sw` at 0x1008b660).
  Stores 4 bytes from a3 to a0 (arg0 at entry) +0x80 (`sw` at 0x1008b668) with value ret(ShmInfoAlloc..KJ).
  Stores 4 bytes from a1 to ret(ShmInfoAlloc..KJ) +0xc (`sw` at 0x1008b6a4).
  Stores 4 bytes from v0 to ? (base unknown) (`sw` at 0x1008b6ac).
  Calls `ShmInfoAlloc..KJ [0x10173f20]` via direct with a0=0x10, a1=?, a2=?, a3=? (`jal` at 0x1008b60c).
  Calls `FatalError [0x10094f20]` via direct with a0=0x10290788, a1=?, a2=?, a3=?, a4=[a0+4] (`jal` at 0x1008b690).
  At `beq` at 0x1008b5cc (target 0x1008b6b0), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0x1008b5e4 (target 0x1008b60c), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0x1008b5f8 (target 0x1008b5e0), taken when a2(?) < a4(=[a0+4]) (unsigned) and falls through when a2(?) >= a4(=[a0+4]) (unsigned).
  At `beq` at 0x1008b604 (target 0x1008b68c), taken when a5(?) == a4(=[a0+4]) and falls through when a5(?) != a4(=[a0+4]).
  At `beq` at 0x1008b618 (target 0x1008b678), taken when v0(=ret(ShmInfoAlloc..KJ)) == 0 and falls through when v0(=ret(ShmInfoAlloc..KJ)) != 0.
  At `beq` at 0x1008b640 (target 0x1008b6a0), taken when s0(?) == 0 and falls through when s0(?) != 0.
  Returns v0 = 0x1; f0 = ret(ShmInfoAlloc..KJ) (`jr` at 0x1008b670).
  Returns v0 = 0x0; f0 = ret(ShmInfoAlloc..KJ) (`jr` at 0x1008b684).

- `SGICapCaptureGLWindows` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1008d7c0 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1008d7c0-0x1008d814 (84 bytes).
  Calls `TraverseTree [0x101cc0f0]` via direct with a0=[([sym(WindowTable)] + ([[a0]] << 0x2))], a1=0x10152680, a2=a0 at entry (arg0), a3=a3 at entry (arg3) (`jal` at 0x1008d7fc).
  Returns v0 = ret(TraverseTree); f0 = ret(TraverseTree) (`jr` at 0x1008d80c).

- `SProcDbeSwapBuffers..KIC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1008e5b0 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1008e5b0-0x1008e644 (148 bytes).
  Stores 1 bytes from v0 to [a0+8] +0x3 (`sb` at 0x1008e5bc) with value [[a0+8]+2]:1.
  Stores 1 bytes from v1 to [a0+8] +0x2 (`sb` at 0x1008e5c0) with value [[a0+8]+3]:1.
  Stores 1 bytes from a2 to [a0+8] +0x7 (`sb` at 0x1008e5e4) with value [[a0+8]+4]:1.
  Stores 1 bytes from a5 to [a0+8] +0x4 (`sb` at 0x1008e5e8) with value [[a0+8]+7]:1.
  Stores 1 bytes from a1 to [a0+8] +0x6 (`sb` at 0x1008e5f4) with value [[a0+8]+5]:1.
  Stores 1 bytes from a4 to [a0+8] +0x5 (`sb` at 0x1008e5f8) with value [[a0+8]+6]:1.
  Stores 1 bytes from t1 to [a0+8] +0xa (`sb` at 0x1008e618) with value [[a0+8]+9]:1.
  Stores 1 bytes from t0 to [a0+8] +0x9 (`sb` at 0x1008e61c) with value [[a0+8]+10]:1.
  Stores 1 bytes from a7 to [a0+8] +0xb (`sb` at 0x1008e630) with value [[a0+8]+8]:1.
  Stores 1 bytes from a5 to [a0+8] +0x8 (`sb` at 0x1008e638) with value [[a0+8]+11]:1.
  Calls `ProcDbeSwapBuffers..NHC [0x1025b770]` via direct with a0=a0 at entry (arg0), a1=[[a0+8]+5]:1, a2=?, a3=[a0+8], a4=[[a0+8]+4] (`j` at 0x1008e63c).
  At `beq` at 0x1008e5d4 (target 0x1008e5e4), taken when at(=[a0+72]) >= 0x2 (unsigned) and falls through when at(=[a0+72]) < 0x2 (unsigned).
  At `beq` at 0x1008e600 (target 0x1008e63c), taken when a4(=[[a0+8]+4]) == 0 and falls through when a4(=[[a0+8]+4]) != 0.
  At `bne` at 0x1008e634 (target 0x1008e610), taken when a2(?) < a4(=[[a0+8]+4]) (unsigned) and falls through when a2(?) >= a4(=[[a0+8]+4]) (unsigned).
  Returns v0 = 0x10 (`jr` at 0x1008e5dc).

- `ProcXineramaCreateWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1008e8c0 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1008e8c0-0x1008f314 (2644 bytes).
  Stores 4 bytes from zero to ret(Xalloc) +0x9c (`sw` at 0x1008ebe4) with value 0x0.
  Stores 4 bytes from zero to ret(Xalloc) +0xa0 (`sw` at 0x1008ebec) with value 0x0.
  Stores 4 bytes from zero to ret(Xalloc) +0x88 (`sw` at 0x1008ebfc) with value 0x0.
  Stores 1 bytes from t9 to ret(Xalloc) +0x8c (`sb` at 0x1008ec30) with value 0x2.
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x1008ec4c) with value 0x2.
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x1008ec54) with value 0x2.
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x1008ec58) with value 0x2.
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x1008ec64) with value 0x2.
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x1008ec68) with value 0x2.
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x1008ec78) with value 0x2.
  Stores 1 bytes from ra to ret(Xalloc) +0x84 (`sb` at 0x1008ec80) with value 0x3.
  Stores 4 bytes from t1 to ret(Xalloc) +0x80 (`sw` at 0x1008ec84) with value [sym(XRT_WINDOW)].
  Stores 1 bytes from a6 to ret(Xalloc) +0xa4 (`sb` at 0x1008ec90) with value [[a0+8]+22]:2.
  Stores 4 bytes from a2 to ret(Xalloc) +0x0 (`sw` at 0x1008ec9c) with value [[a0+8]+4].
  Stores 4 bytes from v1 to sym(panoramiXMode) +0x0 (`sw` at 0x1008edd0) with value 0x1.
  Stores 4 bytes from zero to sym(panoramiXScreen0) +0x0 (`sw` at 0x1008ee30) with value 0x0.
  Stores 4 bytes from a1 to [a0+8] +0x4 (`sw` at 0x1008ee5c).
  Stores 4 bytes from v1 to [a0+8] +0x8 (`sw` at 0x1008ee68).
  Stores 4 bytes from a0 to [a0+8] +0x20 (`sw` at 0x1008eec8).
  Stores 4 bytes from a2 to ? (base unknown) (`sw` at 0x1008eed8).
  Stores 4 bytes from a5 to ? (base unknown) (`sw` at 0x1008eef0).
  Stores 4 bytes from t0 to sym(panoramiXScreen0) +0x0 (`sw` at 0x1008ef04) with value 0x1.
  Stores 4 bytes from at to [a0+8] +0x18 (`sw` at 0x1008ef20).
  Stores 2 bytes from a0 to [a0+8] +0xc (`sh` at 0x1008ef44).
  Stores 2 bytes from v0 to [a0+8] +0xe (`sh` at 0x1008ef54).
  Stores 4 bytes from zero to sym(panoramiXScreen0) +0x0 (`sw` at 0x1008ef58) with value 0x0.
  Stores 4 bytes from zero to sym(panoramiXMode) +0x0 (`sw` at 0x1008ef68) with value 0x0.
  Stores 4 bytes from ra to ret(Xalloc) +0xc (`sw` at 0x1008f03c).
  Stores 4 bytes from s3 to ret(Xalloc) +0x4 (`sw` at 0x1008f040) with value ret(FakeClientID).
  Stores 4 bytes from s4 to ret(Xalloc) +0x8 (`sw` at 0x1008f044) with value [0x102ca824].
  Stores 4 bytes from at to ret(Xalloc) +0x0 (`sw` at 0x1008f048).
  Stores 4 bytes from v0 to ? (base unknown) (`sw` at 0x1008f04c) with value ret(Xalloc).
  Stores 4 bytes from t9 to ? (base unknown) (`sw` at 0x1008f060).
  Stores 4 bytes from v0 to ? (base unknown) (`sw` at 0x1008f09c) with value ret(FakeClientID).
  Stores 4 bytes from at to ? (base unknown) (`sw` at 0x1008f17c) with value ret(FakeClientID)+1.
  Stores 2 bytes from at to [a0+8] +0x16 (`sh` at 0x1008f274) with value [ret(SecurityLookupIDByType)+164]:1.
  Stores 4 bytes from zero to [a0+8] +0x18 (`sw` at 0x1008f2c8) with value 0x0.
  Stores 1 bytes from ra to ret(Xalloc) +0x84 (`sb` at 0x1008f2e8) with value 0x3.
  Stores 4 bytes from t1 to ret(Xalloc) +0x80 (`sw` at 0x1008f2ec) with value [sym(XRT_WINDOW)].
  Stores 1 bytes from a0 to ret(Xalloc) +0xa4 (`sb` at 0x1008f2f4) with value [[a0+8]+22]:2.
  Stores 4 bytes from v0 to ret(Xalloc) +0x0 (`sw` at 0x1008f300) with value [[a0+8]+4].
  Stores 1 bytes from a2 to ? (base unknown) (`sb` at 0x1008f308) with value 0x2.
  Stores 1 bytes from a2 to ? (base unknown) (`sb` at 0x1008f310) with value 0x2.
  Calls `SecurityLookupIDByType [0x100d6140]` via direct with a0=a0 at entry (arg0), a1=[[a0+8]+8], a2=[sym(XRT_WINDOW)], a3=0x2, a4=0x3f, a5=0x104104105 (`jal` at 0x1008e9a0).
  Calls `SecurityLookupIDByType [0x100d6140]` via direct with a0=a0 at entry (arg0), a1=[[a0+8]+32], a2=[sym(XRT_PIXMAP)], a3=0x1, a5=0x1 (`jal` at 0x1008e9f0).
  Calls `SecurityLookupIDByType [0x100d6140]` via direct with a0=a0 at entry (arg0), a1=?, a2=[sym(XRT_PIXMAP)], a3=0x1 (`jal` at 0x1008eaa4).
  Calls `SecurityLookupIDByType [0x100d6140]` via direct with a0=a0 at entry (arg0), a1=?, a2=[sym(XRT_COLORMAP)], a3=0x1 (`jal` at 0x1008eb5c).
  Calls `Xalloc [0x1020aeb0]` via direct with a0=0xa8, a1=?, a2=?, a3=? (`jal` at 0x1008ebbc).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x1008ee08).
  Calls `ErrorF [0x10094ec0]` via direct with a0=?, a1=?, a2=?, a3=?, a4=([sym(PanoramiXNumVisuals)] << 0x2) (`jal` at 0x1008eeac).
  Calls `AddResource [0x1010ec30]` via direct with a0=?, a1=[sym(XRT_WINDOW)], a2=?, a3=? (`jal` at 0x1008ef80).
  Calls `Xfree [0x101fc9c0]` via direct with a0=?, a1=sym(panoramiXMode), a2=?, a3=? (`jal` at 0x1008ef94).
  Calls `Xalloc [0x1020aeb0]` via direct with a0=0x10, a1=?, a2=0x9, a3=0xa, a4=0xb (`jal` at 0x1008f028).
  Calls `FakeClientID [0x10069920]` via direct with a0=[a0], a1=[0x102c5f1c], a2=?, a3=? (`jal` at 0x1008f07c).
  Calls `RebuildTable..ID [0x101c6ee0]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1008f0d4).
  Calls `(unknown callee)` via register with a0=?, a1=ret(FakeClientID), a2=?, a3=? (`jalr` at 0x1008f100).
  Calls `ErrorF [0x10094ec0]` via direct with a0=?, a1=ret(FakeClientID), a2=[0x102ca824], a3=? (`jal` at 0x1008f21c).
  Calls `FatalError [0x10094f20]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1008f228).
  At `bne` at 0x1008e8e4 (target 0x1008eb8c), taken when at(=[a0+72]) < 0x8 (unsigned) and falls through when at(=[a0+72]) >= 0x8 (unsigned).
  At `beq` at 0x1008e964 (target 0x1008e988), taken when a0(=[a0+72]-8) == a1(?) and falls through when a0(=[a0+72]-8) != a1(?).
  At `beq` at 0x1008e9a8 (target 0x1008ecd8), taken when v0(=ret(SecurityLookupIDByType)) == 0 and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  At `beq` at 0x1008e9b4 (target 0x1008f268), taken when at(=[[a0+8]+22]:2) == 0 and falls through when at(=[[a0+8]+22]:2) != 0.
  At `beq` at 0x1008e9c0 (target 0x1008f240), taken when a3(=0x2) == at(?) and falls through when a3(=0x2) != at(?).
  At `beq` at 0x1008e9cc (target 0x1008f260), taken when (v1(=[[a0+8]+28]) & 0x1) == 0 and falls through when (v1(=[[a0+8]+28]) & 0x1) != 0.
  At `beq` at 0x1008e9d8 (target 0x1008f298), taken when a1(=[[a0+8]+32]) == 0 and falls through when a1(=[[a0+8]+32]) != 0.
  At `beq` at 0x1008e9e0 (target 0x1008ecf0), taken when a1(=[[a0+8]+32]) == a5(=0x1) and falls through when a1(=[[a0+8]+32]) != a5(=0x1).
  At `beq` at 0x1008e9f8 (target 0x1008f2b0), taken when v0(=ret(SecurityLookupIDByType)) == 0 and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  At `beq` at 0x1008ea0c (target 0x1008f28c), taken when (v1(=[[a0+8]+28]) & 0x4) == 0 and falls through when (v1(=[[a0+8]+28]) & 0x4) != 0.
  At `beq` at 0x1008ea90 (target 0x1008ecd0), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `beq` at 0x1008eab0 (target 0x1008f2a0), taken when v0(=ret(SecurityLookupIDByType)) == 0 and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  At `beq` at 0x1008eac0 (target 0x1008eba4), taken when (v1(=[[a0+8]+28]) & 0x2000) == 0 and falls through when (v1(=[[a0+8]+28]) & 0x2000) != 0.
  At `beq` at 0x1008eb44 (target 0x1008ecf8), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `bne` at 0x1008eb68 (target 0x1008ebb0), taken when v0(=ret(SecurityLookupIDByType)) != 0 and falls through when v0(=ret(SecurityLookupIDByType)) == 0.
  At `beq` at 0x1008ebc8 (target 0x1008f278), taken when v0(=ret(Xalloc)) == 0 and falls through when v0(=ret(Xalloc)) != 0.
  At `bne` at 0x1008ec04 (target 0x1008f2e4), taken when a1(=[0x102c5f1c]) < 0x1 (signed) and falls through when a1(=[0x102c5f1c]) >= 0x1 (signed).
  At `beq` at 0x1008ec1c (target 0x1008ec34), taken when (a1(=[0x102c5f1c]) & 0x1) == 0 and falls through when (a1(=[0x102c5f1c]) & 0x1) != 0.
  At `beq` at 0x1008ec38 (target 0x1008ec7c), taken when t8(?) == 0 and falls through when t8(?) != 0.
  At `bne` at 0x1008ec40 (target 0x1008f304), taken when v0(?) != 0 and falls through when v0(?) == 0.
  At `beq` at 0x1008ec5c (target 0x1008f238), taken when at(?) == a0(=([0x102c5f1c] + ret(Xalloc))-2) and falls through when at(?) != a0(=([0x102c5f1c] + ret(Xalloc))-2).
  At `bne` at 0x1008ec6c (target 0x1008ec54), taken when v1(?) != a0(=([0x102c5f1c] + ret(Xalloc))-2) and falls through when v1(?) == a0(=([0x102c5f1c] + ret(Xalloc))-2).
  At `bne` at 0x1008ec98 (target 0x1008ed1c), taken when a1(=[0x102c5f1c]) < 0x2 (signed) and falls through when a1(=[0x102c5f1c]) >= 0x2 (signed).
  At `beq` at 0x1008ed24 (target 0x1008f2c4), taken when a5(=0x2) == a6(=[[a0+8]+22]:2) and falls through when a5(=0x2) != a6(=[[a0+8]+22]:2).
  At `beq` at 0x1008ed64 (target 0x1008f2cc), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `bne` at 0x1008ee2c (target 0x1008ef5c), taken when v0(=ret(?)) != 0 and falls through when v0(=ret(?)) == 0.
  At `beq` at 0x1008ee44 (target 0x1008ef58), taken when s1(?) == ra(?) and falls through when s1(?) != ra(?).
  At `bne` at 0x1008ee64 (target 0x1008ef24), taken when a0(?) != 0 and falls through when a0(?) == 0.
  At `beq` at 0x1008ee6c (target 0x1008eeb4), taken when s0(?) == 0 and falls through when s0(?) != 0.
  At `blez` at 0x1008ee78 (target 0x1008eea8), taken when at(=[sym(PanoramiXNumVisuals)]) <= 0 (signed) and falls through when at(=[sym(PanoramiXNumVisuals)]) > 0 (signed).
  At `beq` at 0x1008ee98 (target 0x1008ef08), taken when v0(?) == s0(?) and falls through when v0(?) != s0(?).
  At `bne` at 0x1008eea0 (target 0x1008ee90), taken when at(?) != a1(=(([sym(PanoramiXNumVisuals)] << 0x2) + [sym(PanoramiXVisuals)])) and falls through when at(?) == a1(=(([sym(PanoramiXNumVisuals)] << 0x2) + [sym(PanoramiXVisuals)])).
  At `beq` at 0x1008eebc (target 0x1008eecc), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0x1008eecc (target 0x1008eedc), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `beq` at 0x1008eee4 (target 0x1008eef4), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `bne` at 0x1008eef8 (target 0x1008ee04), taken when a7(?) != s1(?) and falls through when a7(?) == s1(?).
  At `beq` at 0x1008ef14 (target 0x1008eeac), taken when at(?) == t2(=-0x1) and falls through when at(?) != t2(=-0x1).
  At `bne` at 0x1008ef64 (target 0x1008ef90), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `beq` at 0x1008efe0 (target 0x1008f110), taken when at(?) == v1(=0x6) and falls through when at(?) != v1(=0x6).
  At `beq` at 0x1008efec (target 0x1008f13c), taken when at(?) == a0(=0x7) and falls through when at(?) != a0(=0x7).
  At `beq` at 0x1008eff4 (target 0x1008f180), taken when at(?) == a1(=0x8) and falls through when at(?) != a1(=0x8).
  At `beq` at 0x1008effc (target 0x1008f1ac), taken when at(?) == a2(=0x9) and falls through when at(?) != a2(=0x9).
  At `beq` at 0x1008f004 (target 0x1008f1cc), taken when at(?) == a3(=0xa) and falls through when at(?) != a3(=0xa).
  At `beq` at 0x1008f00c (target 0x1008f1ec), taken when at(?) == a4(=0xb) and falls through when at(?) != a4(=0xb).
  At `beq` at 0x1008f030 (target 0x1008f0e4), taken when v0(=ret(Xalloc)) == 0 and falls through when v0(=ret(Xalloc)) != 0.
  At `beq` at 0x1008f05c (target 0x1008f168), taken when (s7(=0x40000000) & s3(=ret(FakeClientID))) == 0 and falls through when (s7(=0x40000000) & s3(=ret(FakeClientID))) != 0.
  At `beq` at 0x1008f070 (target 0x1008ed04), taken when s5(?) >= a1(=[0x102c5f1c]) (signed) and falls through when s5(?) < a1(=[0x102c5f1c]) (signed).
  At `beq` at 0x1008f0ac (target 0x1008f208), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `bne` at 0x1008f0c0 (target 0x1008efd4), taken when t8(?) < t9(?) (signed) and falls through when t8(?) >= t9(?) (signed).
  At `beq` at 0x1008f0cc (target 0x1008efd8), taken when at(?) >= 0xb (signed) and falls through when at(?) < 0xb (signed).
  At `bne` at 0x1008f170 (target 0x1008f064), taken when s3(=ret(FakeClientID)) < v1(?) (unsigned) and falls through when s3(=ret(FakeClientID)) >= v1(?) (unsigned).
  At `beq` at 0x1008f24c (target 0x1008e9c8), taken when (v1(=[[a0+8]+28]) & v0(=-0x5a21)) == 0 and falls through when (v1(=[[a0+8]+28]) & v0(=-0x5a21)) != 0.
  Returns v0 = one of 0x4, 0x8, 0xb, 0x10 (`jr` at 0x1008e980).
  Returns v0 = 0xc; f0 = ret(SecurityLookupIDByType) (`jr` at 0x1008eb84).
  Returns v0 = 0x10 (`jr` at 0x1008eb9c).
  Returns v0 = 0x3; f0 = ret(SecurityLookupIDByType) (`jr` at 0x1008ece8).
  Returns v0 = ? (`jr` at 0x1008efcc).

- `CreateImageBuffers` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10090b70 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10090b70-0x10090fe0 (1136 bytes).
  Stores 4 bytes from zero to ret(Xalloc) +0x4 (`sw` at 0x10090c58) with value 0x0.
  Stores 4 bytes from a3 to ret(Xalloc) +0x1c (`sw` at 0x10090c64) with value ret(Xalloc)+32.
  Stores 4 bytes from a0 to ret(Xalloc) +0x0 (`sw` at 0x10090c68) with value a0.
  Stores 4 bytes from s5 to ret(Xalloc) +0x8 (`sw` at 0x10090d44) with value [0x102ca7ec].
  Stores 4 bytes from s4 to ret(Xalloc) +0x4 (`sw` at 0x10090d48).
  Stores 4 bytes from at to ret(Xalloc) +0x0 (`sw` at 0x10090d50).
  Stores 4 bytes from ra to ret(Xalloc) +0xc (`sw` at 0x10090d54) with value a0.
  Stores 4 bytes from v0 to ? (base unknown) (`sw` at 0x10090d58) with value ret(Xalloc).
  Stores 4 bytes from t9 to ? (base unknown) (`sw` at 0x10090d7c).
  Stores 4 bytes from v0 to ? (base unknown) (`sw` at 0x10090d88).
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x10090d98) with value 0x0.
  Stores 4 bytes from s1 to ? (base unknown) (`sw` at 0x10090d9c).
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x10090da0) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x10090da4) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x10090da8) with value 0x0.
  Stores 4 bytes from a7 to ? (base unknown) (`sw` at 0x10090e48).
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x10090f54) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x10090f8c) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x10090f90) with value 0x0.
  Stores 4 bytes from a0 to ? (base unknown) (`sw` at 0x10090f94) with value a4.
  Stores 4 bytes from a1 to ? (base unknown) (`sw` at 0x10090f98) with value a3.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x10090f9c) with value 0x0.
  Stores 4 bytes from s1 to ? (base unknown) (`sw` at 0x10090fa0).
  Stores 4 bytes from at to ([a0+132] + ([0x102cc3a8] << 0x2)) +0x0 (`sw` at 0x10090fbc).
  Calls `lookupCapabilityByVisualID [0x1020c970]` via direct with a0=?, a1=[0x102ca7e0], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x10090bc8).
  Calls `DestroyImageBuffers [0x10275970]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a7=0x8 (`jal` at 0x10090bf0).
  Calls `Xalloc [0x1020aeb0]` via direct with a0=?, a1=a1 at entry (arg1), a2=?, a3=? (`jal` at 0x10090c10).
  Calls `AddResource [0x1010ec30]` via direct with a0=[a0+4], a1=[0x102ca7f0], a2=ret(Xalloc), a3=ret(Xalloc)+32, a7=0xb (`jal` at 0x10090c6c).
  Calls `Xalloc [0x1020aeb0]` via direct with a0=0x10, a1=?, a2=?, a3=?, a6=0x6 (`jal` at 0x10090d30).
  Calls `RebuildTable..ID [0x101c6ee0]` via direct with a0=?, a1=?, a2=?, a3=?, a6=0x6 (`jal` at 0x10090df8).
  Calls `ErrorF [0x10094ec0]` via direct with a0=?, a1=?, a2=[0x102ca7ec], a3=a0 at entry (arg0) (`jal` at 0x10090f18).
  Calls `FatalError [0x10094f20]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x10090f24).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x10090f4c).
  Calls `Xfree [0x101fc9c0]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x10090fcc).
  At `beq` at 0x10090b80 (target 0x10090ba0), taken when v0(=[a0+120]) == 0 and falls through when v0(=[a0+120]) != 0.
  At `beq` at 0x10090bb8 (target 0x10090bb0), taken when a7(?) == 0 and falls through when a7(?) != 0.
  At `beq` at 0x10090bd4 (target 0x10090c34), taken when v0(=ret(lookupCapabilityByVisualID)) == 0 and falls through when v0(=ret(lookupCapabilityByVisualID)) != 0.
  At `bne` at 0x10090be4 (target 0x10090c38), taken when v1(=[ret(lookupCapabilityByVisualID)+8]) < 0x2 (unsigned) and falls through when v1(=[ret(lookupCapabilityByVisualID)+8]) >= 0x2 (unsigned).
  At `bne` at 0x10090c20 (target 0x10090c4c), taken when v0(=ret(Xalloc)) != 0 and falls through when v0(=ret(Xalloc)) == 0.
  At `beq` at 0x10090c74 (target 0x10090fc8), taken when v0(=ret(AddResource)) == 0 and falls through when v0(=ret(AddResource)) != 0.
  At `blez` at 0x10090ca4 (target 0x10090f58), taken when a4(=a1) <= 0 (signed) and falls through when a4(=a1) > 0 (signed).
  At `beq` at 0x10090cec (target 0x10090e08), taken when a7(?) == a6(=0x6) and falls through when a7(?) != a6(=0x6).
  At `beq` at 0x10090cf8 (target 0x10090e4c), taken when a7(?) == t0(=0x7) and falls through when a7(?) != t0(=0x7).
  At `beq` at 0x10090d00 (target 0x10090e78), taken when a7(?) == t1(=0x8) and falls through when a7(?) != t1(=0x8).
  At `beq` at 0x10090d08 (target 0x10090ea4), taken when a7(?) == t2(=0x9) and falls through when a7(?) != t2(=0x9).
  At `beq` at 0x10090d10 (target 0x10090ec4), taken when a7(?) == t3(=0xa) and falls through when a7(?) != t3(=0xa).
  At `beq` at 0x10090d18 (target 0x10090ee4), taken when a7(?) == t8(=0xb) and falls through when a7(?) != t8(=0xb).
  At `beq` at 0x10090d38 (target 0x10090f34), taken when v0(=ret(Xalloc)) == 0 and falls through when v0(=ret(Xalloc)) != 0.
  At `beq` at 0x10090d78 (target 0x10090e34), taken when (s8(=0x40000000) & s4(?)) == 0 and falls through when (s8(=0x40000000) & s4(?)) != 0.
  At `beq` at 0x10090d84 (target 0x10090f58), taken when s1(?) == v1(=a1) and falls through when s1(?) != v1(=a1).
  At `beq` at 0x10090dd0 (target 0x10090f04), taken when t0(?) == 0 and falls through when t0(?) != 0.
  At `bne` at 0x10090de4 (target 0x10090ce0), taken when t8(?) < t9(?) (signed) and falls through when t8(?) >= t9(?) (signed).
  At `beq` at 0x10090df0 (target 0x10090ce4), taken when a7(?) >= 0xb (signed) and falls through when a7(?) < 0xb (signed).
  At `bne` at 0x10090e3c (target 0x10090d80), taken when s4(?) < t1(?) (unsigned) and falls through when s4(?) >= t1(?) (unsigned).
  Returns v0 = 0x8; f0 = ret(lookupCapabilityByVisualID) (`jr` at 0x10090c38).
  Returns v0 = 0xb (`jr` at 0x10090c44).
  Returns v0 = 0x0 (`jr` at 0x10090fc0).

- `ProcReparentWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100912b0 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100912b0-0x100913f4 (324 bytes).
  Calls `SecurityLookupWindow [0x1006ce40]` via direct with a0=[[a0+8]+4], a1=a0 at entry (arg0), a2=0x2, a3=a3 at entry (arg3) (`jal` at 0x10091304).
  Calls `SecurityLookupWindow [0x1006ce40]` via direct with a0=?, a1=a0 at entry (arg0), a2=0x2, a3=?, a5=0x3 (`jal` at 0x10091338).
  Calls `ReparentWindow [0x1009bb80]` via direct with a0=?, a1=ret(SecurityLookupWindow), a2=?, a3=?, a4=a0 at entry (arg0), a6=[ret(SecurityLookupWindow)+1]:1, a7=0x2 (`jal` at 0x1009139c).
  At `beq` at 0x100912d4 (target 0x100912f4), taken when v1(=[a0+72]) == a1(=0x4) and falls through when v1(=[a0+72]) != a1(=0x4).
  At `bne` at 0x10091310 (target 0x1009132c), taken when v0(=ret(SecurityLookupWindow)) != 0 and falls through when v0(=ret(SecurityLookupWindow)) == 0.
  At `beq` at 0x10091344 (target 0x100913c4), taken when v0(=ret(SecurityLookupWindow)) == 0 and falls through when v0(=ret(SecurityLookupWindow)) != 0.
  At `bne` at 0x10091360 (target 0x100913bc), taken when a1(?) != a2(=[ret(SecurityLookupWindow)+16]) and falls through when a1(?) == a2(=[ret(SecurityLookupWindow)+16]).
  At `beq` at 0x10091374 (target 0x100913d4), taken when t0(?) == t1(=0x1) and falls through when t0(?) != t1(=0x1).
  At `beq` at 0x1009137c (target 0x1009138c), taken when a7(=0x2) == a5(?) and falls through when a7(=0x2) != a5(?).
  At `beq` at 0x10091384 (target 0x100913cc), taken when a7(=0x2) == a6(=[ret(SecurityLookupWindow)+1]:1) and falls through when a7(=0x2) != a6(=[ret(SecurityLookupWindow)+1]:1).
  At `beq` at 0x100913ac (target 0x100913ec), taken when a5(=[a0+40]) == 0 and falls through when a5(=[a0+40]) != 0.
  At `beq` at 0x100913dc (target 0x1009137c), taken when t0(?) == t1(=[ret(SecurityLookupWindow)+2]:1) and falls through when t0(?) != t1(=[ret(SecurityLookupWindow)+2]:1).
  Returns v0 = 0x10 (`jr` at 0x100912e0).
  Returns v0 = ? (`jr` at 0x100912ec).
  Returns v0 = 0x3; f0 = ret(SecurityLookupWindow) (`jr` at 0x10091324).

- `GetSpriteWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10091530 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10091530-0x10091540 (16 bytes).
  Returns v0 = [0x102c6004] (`jr` at 0x10091538).

- `FontFileUnregisterBitmapSource` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10095250 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10095250-0x1009545c (524 bytes).
  Stores 4 bytes from a2 to abs 0x102c7308 (FontFileBitmapSources+8) (`sw` at 0x100952a8) with value [0x102c7308]-1.
  Stores 4 bytes from t2 to ? (base unknown) (`sw` at 0x100952e0).
  Stores 4 bytes from t8 to ? (base unknown) (`sw` at 0x10095308).
  Stores 4 bytes from t3 to ? (base unknown) (`sw` at 0x10095310).
  Stores 4 bytes from a2 to ? (base unknown) (`sw` at 0x10095320).
  Stores 4 bytes from v1 to ? (base unknown) (`sw` at 0x10095324).
  Stores 4 bytes from a0 to ? (base unknown) (`sw` at 0x1009533c).
  Stores 4 bytes from v1 to ? (base unknown) (`sw` at 0x10095344).
  Stores 4 bytes from a2 to ? (base unknown) (`sw` at 0x10095348).
  Stores 4 bytes from at to ? (base unknown) (`sw` at 0x1009534c).
  Stores 4 bytes from at to ? (base unknown) (`sw` at 0x10095364).
  Stores 4 bytes from a0 to ? (base unknown) (`sw` at 0x1009536c).
  Stores 4 bytes from v1 to ? (base unknown) (`sw` at 0x10095370).
  Stores 4 bytes from a2 to ? (base unknown) (`sw` at 0x10095374).
  Stores 4 bytes from zero to abs 0x102c7304 (FontFileBitmapSources+4) (`sw` at 0x10095390) with value 0x0.
  Stores 4 bytes from s0 to table(0x102c71c0) +0x0 (`sw` at 0x100953fc) with value [0x102c7300].
  Stores 4 bytes from s0 to abs 0x102c71b8 (Lfree..4) (`sw` at 0x10095400) with value [0x102c7300].
  Stores 4 bytes from a1 to abs 0x102c7240 (freeidx..3) (`sw` at 0x10095410).
  Stores 4 bytes from zero to abs 0x102c7300 (FontFileBitmapSources) (`sw` at 0x10095428) with value 0x0.
  Stores 4 bytes from a6 to ? (base unknown) (`sw` at 0x10095440).
  Stores 4 bytes from a5 to ? (base unknown) (`sw` at 0x10095448).
  Stores 4 bytes from a4 to ? (base unknown) (`sw` at 0x10095450).
  Stores 4 bytes from a2 to ? (base unknown) (`sw` at 0x10095458).
  Calls `__libc_lockmalloc` via got with a0=?, a1=?, a2=[0x102c7308]-1, a3=? (`jalr` at 0x100953ac).
  Calls `realfree..NL [0x1025db70]` via direct with a0=entry(0x102c71c0), a1=?, a2=?, a3=? (`jal` at 0x100953d8).
  Calls `__libc_unlockmalloc` via got with a0=?, a1=?, a2=[sym(__us_rsthread_malloc)], a3=? (`jalr` at 0x1009541c).
  At `blez` at 0x10095268 (target 0x10095294), taken when t0(=[0x102c7308]) <= 0 (signed) and falls through when t0(=[0x102c7308]) > 0 (signed).
  At `beq` at 0x10095284 (target 0x100952a0), taken when a1(?) == a0 and falls through when a1(?) != a0.
  At `bne` at 0x1009528c (target 0x10095280), taken when at(?) != v0(=(([0x102c7308] << 0x2) + [0x102c7300])) and falls through when at(?) == v0(=(([0x102c7308] << 0x2) + [0x102c7300])).
  At `beq` at 0x100952ac (target 0x1009538c), taken when a2(=[0x102c7308]-1) == 0 and falls through when a2(=[0x102c7308]-1) != 0.
  At `blez` at 0x100952b8 (target 0x10095294), taken when a0(?) <= 0 (signed) and falls through when a0(?) > 0 (signed).
  At `beq` at 0x100952c8 (target 0x100952e4), taken when at(?) == 0 and falls through when at(?) != 0.
  At `bne` at 0x100952dc (target 0x100952d0), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0x100952e8 (target 0x10095378), taken when t0(?) == 0 and falls through when t0(?) != 0.
  At `bne` at 0x100952f0 (target 0x10095438), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0x10095340 (target 0x10095380), taken when a1(?) == v0(=(([0x102c7308]-1 << 0x2) + [0x102c7300])-16) and falls through when a1(?) != v0(=(([0x102c7308]-1 << 0x2) + [0x102c7300])-16).
  At `bne` at 0x10095368 (target 0x10095320), taken when a3(?) != v0(=(([0x102c7308]-1 << 0x2) + [0x102c7300])-16) and falls through when a3(?) == v0(=(([0x102c7308]-1 << 0x2) + [0x102c7300])-16).
  At `beq` at 0x1009538c (target 0x10095428), taken when s0(=[0x102c7300]) == 0 and falls through when s0(=[0x102c7300]) != 0.
  At `beq` at 0x1009539c (target 0x100953bc), taken when t9(=[sym(__us_rsthread_malloc)]) == 0 and falls through when t9(=[sym(__us_rsthread_malloc)]) != 0.
  At `beq` at 0x100953cc (target 0x100953f8), taken when a0(=entry(0x102c71c0)) == 0 and falls through when a0(=entry(0x102c71c0)) != 0.
  At `beq` at 0x1009540c (target 0x10095428), taken when a2(=[sym(__us_rsthread_malloc)]) == 0 and falls through when a2(=[sym(__us_rsthread_malloc)]) != 0.
  Returns v0 = ? (`jr` at 0x10095298).
  Returns v0 = ? (`jr` at 0x10095430).

- `XvDestroyWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10095540 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10095540-0x100956a8 (360 bytes).
  Stores 4 bytes from t9 to [a0+16] +0xb8 (`sw` at 0x10095588) with value [[([[a0+16]+436] + ([0x102caa74] << 0x2))]+16].
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x10095648) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x1009564c) with value 0x0.
  Stores 4 bytes from at to ? (base unknown) (`sw` at 0x10095658) with value [sym(currentTime)+4].
  Stores 4 bytes from ra to ? (base unknown) (`sw` at 0x10095660) with value [sym(currentTime)].
  Stores 4 bytes from v1 to [a0+16] +0xb8 (`sw` at 0x10095698) with value 0x10095540.
  Calls `XvdiSendVideoNotify [0x101a7330]` via direct with a0=?, a1=?, a2=0x3, a3=? (`jal` at 0x10095628).
  Calls `(unknown callee)` via register with a0=0x0, a1=?, a2=?, a3=? (`jalr` at 0x10095640).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x1009567c).
  At `blez` at 0x1009558c (target 0x1009567c), taken when a3(=[[([[a0+16]+436] + ([0x102caa74] << 0x2))]+8]) <= 0 (signed) and falls through when a3(=[[([[a0+16]+436] + ([0x102caa74] << 0x2))]+8]) > 0 (signed).
  At `beq` at 0x100955d4 (target 0x10095664), taken when s4(?) == s5(?) and falls through when s4(?) != s5(?).
  At `blez` at 0x100955e8 (target 0x100955d0), taken when a0(?) <= 0 (signed) and falls through when a0(?) > 0 (signed).
  At `beq` at 0x10095614 (target 0x100955d0), taken when s0(?) == s1(?) and falls through when s0(?) != s1(?).
  At `bne` at 0x10095620 (target 0x10095610), taken when a1(?) != s2(=a0) and falls through when a1(?) == s2(=a0).
  Returns v0 = ret(?); f0 = ret(?) (`jr` at 0x100956a0).
  The instructions from 0x100955c4 to 0x100955cc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x10095604 to 0x1009560c are not reached by any path from the entry, and their branches are not listed.

- `SGICapValidateDirtyRegion` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10096b90 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10096b90-0x10096c0c (124 bytes).
  Calls `(unknown callee)` via register with a0=[[([[a0]+436] + ([0x102cf2c4] << 0x2))]+56], a1=a0+4, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x10096bd4).
  Calls `(unknown callee)` via register with a0=[a0+16], a1=[a0+16], a2=?, a3=? (`jalr` at 0x10096bf0).
  Returns v0 = ret(?); f0 = ret(?) (`jr` at 0x10096c04).

- `dbcDelayedSwapBufferDone` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10098a20 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10098a20-0x100995e0 (3008 bytes).
  Stores 1 bytes from zero to ([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2)) +0x2 (`sb` at 0x10098ae8) with value 0x0.
  Stores 4 bytes from a1 to sym(globalSerialNumber) +0x0 (`sw` at 0x10098b10) with value 0x1.
  Stores 4 bytes from t8 to [[sym(clients)]] +0x30 (`sw` at 0x10098b54) with value [[[sym(WindowTable)]]+4].
  Stores 4 bytes from t3 to [[sym(clients)]] +0x2c (`sw` at 0x10098b5c) with value [[sym(WindowTable)]].
  Stores 4 bytes from a0 to ? (base unknown) (`sw` at 0x10098b94).
  Stores 4 bytes from a3 to ? (base unknown) (`sw` at 0x10098bb4).
  Stores 4 bytes from a5 to ? (base unknown) (`sw` at 0x10098bd4).
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x10098c14) with value 0x0.
  Stores 4 bytes from a1 to sym(globalSerialNumber) +0x0 (`sw` at 0x10098c28) with value [sym(globalSerialNumber)]+1.
  Stores 4 bytes from a1 to ret(SecurityLookupIDByType) +0x14 (`sw` at 0x10098c48).
  Stores 4 bytes from t3 to ? (base unknown) (`sw` at 0x10098c68) with value [[[sym(WindowTable)]]+4].
  Stores 4 bytes from t2 to ? (base unknown) (`sw` at 0x10098c70) with value [[sym(WindowTable)]].
  Stores 4 bytes from ra to ? (base unknown) (`sw` at 0x10098c9c) with value [[[sym(WindowTable)]]+4].
  Stores 4 bytes from t9 to ? (base unknown) (`sw` at 0x10098ca4) with value [[sym(WindowTable)]].
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x10098cc8) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x10098cd0) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x10098cdc) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x10098ce4) with value 0x0.
  Stores 4 bytes from a0 to ? (base unknown) (`sw` at 0x10098cfc).
  Stores 4 bytes from v0 to ? (base unknown) (`sw` at 0x10098d08).
  Stores 4 bytes from v0 to ? (base unknown) (`sw` at 0x10098e28).
  Stores 4 bytes from t9 to ? (base unknown) (`sw` at 0x10098e44).
  Stores 4 bytes from t9 to [[sym(clients)]] +0x30 (`sw` at 0x10098eac) with value [[[sym(WindowTable)]]+4].
  Stores 4 bytes from t8 to [[sym(clients)]] +0x2c (`sw` at 0x10098eb4) with value [[sym(WindowTable)]].
  Stores 4 bytes from s0 to table(0x102c71c0) +0x0 (`sw` at 0x10098f44).
  Stores 4 bytes from s0 to abs 0x102c71b8 (Lfree..4) (`sw` at 0x10098f48).
  Stores 4 bytes from a1 to abs 0x102c7240 (freeidx..3) (`sw` at 0x10098f58).
  Stores 4 bytes from t1 to ? (base unknown) (`sw` at 0x10098ff4) with value [[[sym(WindowTable)]]+4].
  Stores 4 bytes from a4 to ? (base unknown) (`sw` at 0x10098ffc) with value [[sym(WindowTable)]].
  Stores 4 bytes from t8 to ? (base unknown) (`sw` at 0x10099028) with value [[[sym(WindowTable)]]+4].
  Stores 4 bytes from t3 to ? (base unknown) (`sw` at 0x10099030) with value [[sym(WindowTable)]].
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x1009905c) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x10099064) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x10099070) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x10099078) with value 0x0.
  Stores 4 bytes from a5 to ? (base unknown) (`sw` at 0x100990ac) with value [[sym(WindowTable)]].
  Stores 4 bytes from a4 to ? (base unknown) (`sw` at 0x100990bc) with value [[[sym(WindowTable)]]+4].
  Stores 4 bytes from a5 to abs 0x102ca8d0 (dbcNumTickets..90) (`sw` at 0x100990d8) with value [0x102ca8d0]-1.
  Stores 1 bytes from a6 to ([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2)) +0x2 (`sb` at 0x100990f0) with value 0x1.
  Stores 4 bytes from a4 to ? (base unknown) (`sw` at 0x10099158) with value [[sym(WindowTable)]].
  Stores 4 bytes from a3 to ? (base unknown) (`sw` at 0x10099168) with value [[[sym(WindowTable)]]+4].
  Stores 4 bytes from zero to [[sym(clients)]] +0x34 (`sw` at 0x10099194) with value 0x0.
  Stores 4 bytes from zero to [[sym(clients)]] +0x38 (`sw` at 0x1009919c) with value 0x0.
  Stores 4 bytes from zero to [[sym(clients)]] +0x34 (`sw` at 0x100991a8) with value 0x0.
  Stores 4 bytes from zero to [[sym(clients)]] +0x38 (`sw` at 0x100991b0) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x100991bc) with value 0x0.
  Stores 4 bytes from a0 to abs 0x102ca8c8 (dbcTicketQueueFront..88) (`sw` at 0x100991c4).
  Stores 4 bytes from zero to entry(0x102c61a0) +0xc (`sw` at 0x100991fc) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x10099200) with value 0x0.
  Stores 4 bytes from a1 to abs 0x102ca8cc (dbcTicketQueueEnd..89) (`sw` at 0x10099208).
  Stores 1 bytes from a5 to ([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2)) +0x1 (`sb` at 0x100992cc) with value -0x2.
  Stores 1 bytes from ra to ? (base unknown) (`sb` at 0x10099314).
  Stores 4 bytes from a4 to table(0x102c66f0) +0x0 (`sw` at 0x10099368).
  Stores 4 bytes from a4 to table(0x102c66b0) +0x0 (`sw` at 0x10099380).
  Stores 4 bytes from a2 to table(0x102c66d0) +0x0 (`sw` at 0x1009938c).
  Stores 4 bytes from a5 to table(0x102c6710) +0x0 (`sw` at 0x1009939c).
  Stores 1 bytes from a3 to ([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2)) +0x0 (`sb` at 0x10099420) with value [([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+2]:1.
  Stores 1 bytes from zero to ([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2)) +0x1 (`sb` at 0x10099424) with value 0x0.
  Stores 4 bytes from zero to abs 0x102ca8cc (dbcTicketQueueEnd..89) (`sw` at 0x10099460) with value 0x0.
  Stores 4 bytes from zero to abs 0x102ca8c8 (dbcTicketQueueFront..88) (`sw` at 0x10099468) with value 0x0.
  Stores 4 bytes from zero to [entry(0x102c61a0)+8] +0x420 (`sw` at 0x10099474) with value 0x0.
  Stores 1 bytes from a5 to ([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2)) +0x1 (`sb` at 0x10099480) with value -0x3.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x100994b4) with value 0x0.
  Stores 4 bytes from ra to ? (base unknown) (`sw` at 0x100994bc).
  Stores 1 bytes from a5 to ([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2)) +0x1 (`sb` at 0x10099568) with value 0x1.
  Stores 4 bytes from a1 to ? (base unknown) (`sw` at 0x1009959c).
  Stores 4 bytes from a7 to table(0x102c67e8) +0x0 (`sw` at 0x100995b0).
  Stores 4 bytes from a5 to table(0x102c67c8) +0x0 (`sw` at 0x100995bc).
  Stores 4 bytes from a7 to table(0x102c6808) +0x0 (`sw` at 0x100995cc).
  Calls `SecurityLookupIDByType [0x100d6140]` via direct with a0=0x0, a1=a0 at entry (arg0), a2=0xffffffffc0000001, a3=0x0 (`jal` at 0x10098aa8).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x10098de4).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x10098ee4).
  Calls `__libc_lockmalloc` via got with a0=?, a1=?, a2=[0x102c7240], a3=? (`jalr` at 0x10098f00).
  Calls `realfree..NL [0x1025db70]` via direct with a0=entry(0x102c71c0), a1=?, a2=[0x102c7240], a3=?, a5=entry(0x102c71c0) (`jal` at 0x10098f24).
  Calls `__libc_unlockmalloc` via got with a0=sym(__us_rsthread_malloc), a1=?, a2=[0x102c7240], a3=[sym(__us_rsthread_malloc)] (`jalr` at 0x10098f60).
  Calls `(unknown callee)` via register with a0=?, a1=sp-160, a2=[0x102c60fc], a3=?, a6=[sym(clients)] (`jalr` at 0x10098fdc).
  Calls `FatalError [0x10094f20]` via direct with a0=0x1028f428, a1=?, a2=?, a3=? (`jal` at 0x10099178).
  Calls `(unknown callee)` via register with a0=ret(SecurityLookupIDByType), a1=0x0, a2=0x0, a3=0x0, a4=0x0, a5=0x0, a7=0x2 (`jalr` at 0x100992f8).
  Calls `(unknown callee)` via register with a0=ret(SecurityLookupIDByType), a1=[([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+3]:1, a2=?, a3=?, a4=-0x1, a5=0x1, a7=0x2 (`jalr` at 0x100993e0).
  Calls `GetScratchGC [0x1026a500]` via direct with a0=[ret(SecurityLookupIDByType)+2]:1, a1=[ret(SecurityLookupIDByType)+16], a2=?, a3=[([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+2]:1, a4=[([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+2]:1, a5=0x1, a7=0x2 (`jal` at 0x1009943c).
  Calls `(unknown callee)` via register with a0=ret(GetScratchGC), a1=[ret(GetScratchGC)+60], a2=?, a3=? (`jalr` at 0x100994a4).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=0x0, a4=0x0, a7=0x0 (`jalr` at 0x100994e0).
  Calls `FreeGC [0x1010a5b0]` via direct with a0=?, a1=0x0, a2=?, a3=? (`jal` at 0x10099528).
  At `beq` at 0x10098a40 (target 0x10098c18), taken when at(=[0x102ca8c8]) == 0 and falls through when at(=[0x102ca8c8]) != 0.
  At `blez` at 0x10098a5c (target 0x10098a84), taken when a2(?) <= 0 (signed) and falls through when a2(?) > 0 (signed).
  At `beq` at 0x10098a74 (target 0x10098a98), taken when a2(?) == a1(=a0) and falls through when a2(?) != a1(=a0).
  At `bne` at 0x10098a7c (target 0x10098a70), taken when v0(?) != a0(?) and falls through when v0(?) == a0(?).
  At `bne` at 0x10098a88 (target 0x10098a54), taken when s1(?) != 0 and falls through when s1(?) == 0.
  At `beq` at 0x10098ab0 (target 0x10098b88), taken when v0(=ret(SecurityLookupIDByType)) == 0 and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  At `beq` at 0x10098ad4 (target 0x10098b88), taken when a3(=[([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+3]:1) == a4(=-0x1) and falls through when a3(=[([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+3]:1) != a4(=-0x1).
  At `beq` at 0x10098ae0 (target 0x100990e8), taken when a1(=[([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+2]:1) == 0 and falls through when a1(=[([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+2]:1) != 0.
  At `beq` at 0x10098b00 (target 0x10098c28), taken when a3(=0x10000000) >= a1(=[sym(globalSerialNumber)]+1) (unsigned) and falls through when a3(=0x10000000) < a1(=[sym(globalSerialNumber)]+1) (unsigned).
  At `blez` at 0x10098b14 (target 0x10098b70), taken when t2(=[0x102c5d70]) <= 0 (signed) and falls through when t2(=[0x102c5d70]) > 0 (signed).
  At `beq` at 0x10098b2c (target 0x10098b64), taken when (t2(=[0x102c5d70]) & 0x1) == 0 and falls through when (t2(=[0x102c5d70]) & 0x1) != 0.
  At `beq` at 0x10098b38 (target 0x10098b60), taken when a5(=[[sym(clients)]]) == 0 and falls through when a5(=[[sym(clients)]]) != 0.
  At `bne` at 0x10098b44 (target 0x10099188), taken when t2(=[[[sym(clients)]]+48]) != a7(=[ret(SecurityLookupIDByType)+4]) and falls through when t2(=[[[sym(clients)]]+48]) == a7(=[ret(SecurityLookupIDByType)+4]).
  At `bnel` at 0x10098b68 (target 0x10098c80), taken when t9(?) != 0 and falls through when t9(?) == 0.
  At `bltz` at 0x10098b78 (target 0x100990f4), taken when ra(=([ret(SecurityLookupIDByType)+124] << 0x14)) < 0 (signed) and falls through when ra(=([ret(SecurityLookupIDByType)+124] << 0x14)) >= 0 (signed).
  At `bne` at 0x10098b80 (target 0x10098de4), taken when a2(?) != 0 and falls through when a2(?) == 0.
  At `beq` at 0x10098b90 (target 0x10098ce8), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `beq` at 0x10098b9c (target 0x10098bf0), taken when s0(?) >= a0(?) (unsigned) and falls through when s0(?) < a0(?) (unsigned).
  At `beq` at 0x10098bc8 (target 0x10098bf0), taken when a0(?) >= a2(?) (unsigned) and falls through when a0(?) < a2(?) (unsigned).
  At `bne` at 0x10098be8 (target 0x10098bb0), taken when a0(?) < a4(?) (unsigned) and falls through when a0(?) >= a4(?) (unsigned).
  At `bne` at 0x10098c50 (target 0x10098b14), taken when t0(?) != 0 and falls through when t0(?) == 0.
  At `beq` at 0x10098c74 (target 0x10098b70), taken when a6(?) == t1(=([sym(clients)] + ([0x102c5d70] << 0x2))) and falls through when a6(?) != t1(=([sym(clients)] + ([0x102c5d70] << 0x2))).
  At `beq` at 0x10098c80 (target 0x10098ca8), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `bne` at 0x10098c8c (target 0x10098cd4), taken when t8(?) != a7(=[ret(SecurityLookupIDByType)+4]) and falls through when t8(?) == a7(=[ret(SecurityLookupIDByType)+4]).
  At `beq` at 0x10098cac (target 0x10098c74), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `beq` at 0x10098cb8 (target 0x10098c60), taken when at(?) == a7(=[ret(SecurityLookupIDByType)+4]) and falls through when at(?) != a7(=[ret(SecurityLookupIDByType)+4]).
  At `bne` at 0x10098cc0 (target 0x10098c74), taken when t2(?) != a7(=[ret(SecurityLookupIDByType)+4]) and falls through when t2(?) == a7(=[ret(SecurityLookupIDByType)+4]).
  At `bne` at 0x10098cd4 (target 0x10098ca8), taken when t2(?) != a7(=[ret(SecurityLookupIDByType)+4]) and falls through when t2(?) == a7(=[ret(SecurityLookupIDByType)+4]).
  At `beq` at 0x10098cec (target 0x100991b4), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `beq` at 0x10098cf4 (target 0x10099200), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `beq` at 0x10098d14 (target 0x100991c8), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `beq` at 0x10098d30 (target 0x10099170), taken when a0(?) >= 0x100 (signed) and falls through when a0(?) < 0x100 (signed).
  At `beq` at 0x10098d54 (target 0x10099170), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `beq` at 0x10098d68 (target 0x1009920c), taken when v0(?) == a3(=0x6) and falls through when v0(?) != a3(=0x6).
  At `beq` at 0x10098d74 (target 0x10099238), taken when v0(?) == v1(=0x7) and falls through when v0(?) != v1(=0x7).
  At `beq` at 0x10098d80 (target 0x10099264), taken when v0(?) == a1(=0x8) and falls through when v0(?) != a1(=0x8).
  At `beq` at 0x10098d8c (target 0x10099290), taken when v0(?) == a2(=0x9) and falls through when v0(?) != a2(=0x9).
  At `beq` at 0x10098d94 (target 0x100993a0), taken when v0(?) == a3(=0xa) and falls through when v0(?) != a3(=0xa).
  At `beq` at 0x10098d9c (target 0x100993f4), taken when v0(?) == a4(=0xb) and falls through when v0(?) != a4(=0xb).
  At `beq` at 0x10098dc8 (target 0x10099128), taken when s0(?) == 0 and falls through when s0(?) != 0.
  At `beq` at 0x10098e04 (target 0x1009907c), taken when s0(?) == 0 and falls through when s0(?) != 0.
  At `bne` at 0x10098e18 (target 0x10098df4), taken when s1(?) != t8(?) and falls through when s1(?) == t8(?).
  At `beq` at 0x10098e40 (target 0x10098ec0), taken when (at(=0xffffffff80000000) & s1(?)) == 0 and falls through when (at(=0xffffffff80000000) & s1(?)) != 0.
  At `beq` at 0x10098e64 (target 0x10098ec0), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `blez` at 0x10098e74 (target 0x10098ec0), taken when t2(=[0x102c5d70]) <= 0 (signed) and falls through when t2(=[0x102c5d70]) > 0 (signed).
  At `beq` at 0x10098e84 (target 0x10098eb8), taken when t8(?) == 0 and falls through when t8(?) != 0.
  At `beq` at 0x10098e90 (target 0x10098eb8), taken when v0(=[[sym(clients)]]) == 0 and falls through when v0(=[[sym(clients)]]) != 0.
  At `bne` at 0x10098e9c (target 0x100991a0), taken when t2(=[[[sym(clients)]]+48]) != a5(?) and falls through when t2(=[[[sym(clients)]]+48]) == a5(?).
  At `bnel` at 0x10098eb8 (target 0x1009900c), taken when t1(?) != 0 and falls through when t1(?) == 0.
  At `beq` at 0x10098ec0 (target 0x10098ef0), taken when s1(?) == 0 and falls through when s1(?) != 0.
  At `beq` at 0x10098ef4 (target 0x10098f0c), taken when at(=[sym(__us_rsthread_malloc)]) == 0 and falls through when at(=[sym(__us_rsthread_malloc)]) != 0.
  At `beq` at 0x10098f1c (target 0x10098f40), taken when a5(=entry(0x102c71c0)) == 0 and falls through when a5(=entry(0x102c71c0)) != 0.
  At `beq` at 0x10098f54 (target 0x10098f68), taken when a3(=[sym(__us_rsthread_malloc)]) == 0 and falls through when a3(=[sym(__us_rsthread_malloc)]) != 0.
  At `beq` at 0x10098f90 (target 0x10098fa0), taken when a7(?) == t0(?) and falls through when a7(?) != t0(?).
  At `beq` at 0x10098fa0 (target 0x10098fe4), taken when a2(=[0x102c60fc]) == 0 and falls through when a2(=[0x102c60fc]) != 0.
  At `beq` at 0x10098fb4 (target 0x10098fe4), taken when t1(?) >= v0(?) (unsigned) and falls through when t1(?) < v0(?) (unsigned).
  At `beq` at 0x10098fcc (target 0x10098fe4), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `beq` at 0x10099000 (target 0x10098ec0), taken when a2(?) == a7(=([sym(clients)] + ([0x102c5d70] << 0x2))) and falls through when a2(?) != a7(=([sym(clients)] + ([0x102c5d70] << 0x2))).
  At `beq` at 0x1009900c (target 0x10099034), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0x10099018 (target 0x10099054), taken when t2(?) != a5(?) and falls through when t2(?) == a5(?).
  At `beq` at 0x10099038 (target 0x10099000), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0x10099044 (target 0x10099068), taken when t9(?) != a5(?) and falls through when t9(?) == a5(?).
  At `bne` at 0x10099054 (target 0x10099034), taken when a6(?) != a5(?) and falls through when a6(?) == a5(?).
  At `bne` at 0x10099068 (target 0x10099000), taken when a6(?) != a5(?) and falls through when a6(?) == a5(?).
  At `beq` at 0x10099090 (target 0x100990c0), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0x1009909c (target 0x100990c0), taken when a1(?) != a3(?) and falls through when a1(?) == a3(?).
  At `beq` at 0x100990c0 (target 0x1009916c), taken when a2(=one of 0x0, 0x1) == 0 and falls through when a2(=one of 0x0, 0x1) != 0.
  At `beq` at 0x100990f8 (target 0x10099114), taken when a1(=[([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+3]:1) == 0 -> outside and falls through when a1(=[([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+3]:1) != 0.
  At `beq` at 0x10099100 (target 0x100992b4), taken when a1(=[([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+3]:1) == a5(=0x1) and falls through when a1(=[([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+3]:1) != a5(=0x1).
  At `beq` at 0x10099108 (target 0x100993c4), taken when a1(=[([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+3]:1) == a7(=0x2) and falls through when a1(=[([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+3]:1) != a7(=0x2).
  At `beq` at 0x10099110 (target 0x10099414), taken when a1(=[([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+3]:1) == t0(=0x3) and falls through when a1(=[([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+3]:1) != t0(=0x3).
  At `bne` at 0x10099118 (target 0x10098b88), taken when t1(?) != 0 and falls through when t1(?) == 0.
  At `beq` at 0x1009913c (target 0x1009916c), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0x10099148 (target 0x1009916c), taken when a1(?) != a2(?) and falls through when a1(?) == a2(?).
  At `bne` at 0x1009918c (target 0x10098b60), taken when a3(=[[[sym(clients)]]+56]) != a7(=[ret(SecurityLookupIDByType)+4]) and falls through when a3(=[[[sym(clients)]]+56]) == a7(=[ret(SecurityLookupIDByType)+4]).
  At `bne` at 0x100991a0 (target 0x10098eb8), taken when a6(=[[[sym(clients)]]+56]) != a5(?) and falls through when a6(=[[[sym(clients)]]+56]) == a5(?).
  At `beq` at 0x100991b4 (target 0x10099460), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `beq` at 0x100991e4 (target 0x10099318), taken when a0(=entry(0x102c61a0)) == 0 and falls through when a0(=entry(0x102c61a0)) != 0.
  At `beq` at 0x100991f0 (target 0x1009946c), taken when a2(=[entry(0x102c61a0)+12]) == a5(=0x1) and falls through when a2(=[entry(0x102c61a0)+12]) != a5(=0x1).
  At `beq` at 0x100992bc (target 0x10099478), taken when a3(=[([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+2]:1) == 0 and falls through when a3(=[([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+2]:1) != 0.
  At `beq` at 0x10099320 (target 0x1009953c), taken when a6(=[sym(GrabInProgress)]) == 0 and falls through when a6(=[sym(GrabInProgress)]) != 0.
  At `beq` at 0x10099348 (target 0x10099360), taken when a2(?) == a6(=[sym(GrabInProgress)]) and falls through when a2(?) != a6(=[sym(GrabInProgress)]).
  At `beq` at 0x10099358 (target 0x100995a0), taken when (a1(=entry(0x102c67a8)) & a0(?)) == 0 and falls through when (a1(=entry(0x102c67a8)) & a0(?)) != 0.
  At `beq` at 0x10099388 (target 0x10098d1c), taken when (a3(=entry(0x102c6788)) & a0(?)) == 0 and falls through when (a3(=entry(0x102c6788)) & a0(?)) != 0.
  At `beq` at 0x100993d0 (target 0x10099118), taken when t9(=[[[ret(SecurityLookupIDByType)+16]+116]+264]) == 0 and falls through when t9(=[[[ret(SecurityLookupIDByType)+16]+116]+264]) != 0.
  At `beq` at 0x1009941c (target 0x10099568), taken when a4(=[([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+2]:1) == 0 and falls through when a4(=[([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+2]:1) != 0.
  At `bne` at 0x1009944c (target 0x10099490), taken when v0(=ret(GetScratchGC)) != 0 and falls through when v0(=ret(GetScratchGC)) == 0.
  At `bltz` at 0x100994f4 (target 0x10099520), taken when a7(?) < 0 (signed) and falls through when a7(?) >= 0 (signed).
  At `beq` at 0x10099510 (target 0x10099578), taken when t3(?) == t0(?) and falls through when t3(?) != t0(?).
  At `beq` at 0x10099518 (target 0x10099508), taken when a7(?) == 0 and falls through when a7(?) != 0.
  At `beq` at 0x100995b8 (target 0x10098d1c), taken when (a6(=entry(0x102c6788)) & a0(?)) == 0 and falls through when (a6(=entry(0x102c6788)) & a0(?)) != 0.
  Returns v0 = ? (`jr` at 0x10098c10).
  Returns v0 = ? (`jr` at 0x10098c20).
  Returns v0 = ? (`jr` at 0x100990e0).
  The instructions from 0x10098fec to 0x10098fec are not reached by any path from the entry, and their branches are not listed.

- `ProcXineramaDbeSwapBuffers..EIC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100996a0 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100996a0-0x10099d18 (1656 bytes).
  Stores 8 bytes from v0 to sp (at entry) -0x78 (`sd` at 0x100996b0) with value s8.
  Stores 8 bytes from s0 to sp (at entry) -0x70 (`sd` at 0x100996b4) with value s0.
  Stores 8 bytes from s4 to sp (at entry) -0x80 (`sd` at 0x100996bc) with value s4.
  Stores 8 bytes from sp to sp (at entry) -0x98 (`sd` at 0x100996ec).
  Stores 8 bytes from s7 to sp (at entry) -0x58 (`sd` at 0x100996f0) with value s7.
  Stores 8 bytes from ra to sp (at entry) -0x38 (`sd` at 0x100996f4) with value ra.
  Stores 8 bytes from s6 to sp (at entry) -0x50 (`sd` at 0x100996f8) with value s6.
  Stores 8 bytes from s5 to sp (at entry) -0x48 (`sd` at 0x100996fc) with value s5.
  Stores 8 bytes from s2 to sp (at entry) -0x68 (`sd` at 0x10099700) with value s2.
  Stores 8 bytes from s3 to sp (at entry) -0x60 (`sd` at 0x10099704) with value s3.
  Stores 8 bytes from s1 to sp (at entry) -0x40 (`sd` at 0x10099710) with value s1.
  Stores 8 bytes from ra to sp (at entry) -0x38 (`sd` at 0x10099740) with value ra.
  Stores 4 bytes from a4 to ? (base unknown) (`sw` at 0x10099758).
  Stores 8 bytes from s2 to sp (at entry) -0x68 (`sd` at 0x1009992c) with value s2.
  Stores 4 bytes from a7 to abs 0x102ca77c (xineramaPostponeEvents) (`sw` at 0x10099958) with value 0x1.
  Stores 8 bytes from a6 to sp (at entry) -0x90 (`sd` at 0x10099968) with value [0x102c5f1c].
  Stores 4 bytes from a7 to sym(panoramiXMode) +0x0 (`sw` at 0x10099974) with value 0x1.
  Stores 4 bytes from t3 to ? (base unknown) (`sw` at 0x100999bc).
  Stores 4 bytes from t9 to ? (base unknown) (`sw` at 0x100999e0).
  Stores 4 bytes from a0 to sp (at entry) -0x1c (`sw` at 0x10099a2c) with value [[a0+8]+4].
  Stores 8 bytes from sp to sp (at entry) -0x30 (`sd` at 0x10099a60).
  Stores 8 bytes from sp to sp (at entry) -0x88 (`sd` at 0x10099a64).
  Stores 4 bytes from a4 to a0 (arg0 at entry) +0x18 (`sw` at 0x10099a7c).
  Stores 8 bytes from a1 to sp (at entry) -0xa0 (`sd` at 0x10099a90).
  Stores 4 bytes from t0 to ? (base unknown) (`sw` at 0x10099b48).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10099b50).
  Stores 8 bytes from ra to sp (at entry) -0x88 (`sd` at 0x10099b64).
  Stores 8 bytes from a4 to sp (at entry) -0x28 (`sd` at 0x10099bc4).
  Stores 8 bytes from a1 to sp (at entry) -0xa0 (`sd` at 0x10099c0c).
  Stores 4 bytes from zero to sym(panoramiXMode) +0x0 (`sw` at 0x10099c6c) with value 0x0.
  Stores 4 bytes from zero to abs 0x102ca77c (xineramaPostponeEvents) (`sw` at 0x10099c74) with value 0x0.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0x34 (`sw` at 0x10099ce4) with value 0x0.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0x38 (`sw` at 0x10099ce8) with value 0x0.
  Stores 4 bytes from v0 to a0 (arg0 at entry) +0x2c (`sw` at 0x10099cec) with value ret(SecurityLookupIDByType).
  Stores 4 bytes from a6 to a0 (arg0 at entry) +0x30 (`sw` at 0x10099cf8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[sym(XRT_WINDOW)], a3=0x2, a7=0x6 (`jalr` at 0x10099838).
  Calls `SecurityLookupIDByType [0x100d6140]` via direct with a0=a0 at entry (arg0), a1=?, a2=0xffffffffc0000001, a3=0x2 (`jal` at 0x10099aa0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=sp-28, a2=?, a3=? (`jalr` at 0x10099ba0).
  Calls `SecurityLookupIDByType [0x100d6140]` via direct with a0=a0 at entry (arg0), a1=?, a2=0xffffffffc0000001, a3=0x2 (`jal` at 0x10099c18).
  Calls `XineramaDeliverVisibilityNotify [0x10197300]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x10099c44).
  Calls `XineramaDeliverExpose [0x100e7410]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x10099c60).
  At `bne` at 0x100996c4 (target 0x10099910), taken when at(=[a0+72]) < 0x2 (unsigned) and falls through when at(=[a0+72]) >= 0x2 (unsigned).
  At `beq` at 0x100996d0 (target 0x1009992c), taken when v0(=[[a0+8]+4]) == 0 and falls through when v0(=[[a0+8]+4]) != 0.
  At `beq` at 0x100996e8 (target 0x10099cc0), taken when sp(?) == 0 and falls through when sp(?) != 0.
  At `beq` at 0x1009970c (target 0x10099954), taken when v0(=[[a0+8]+4]) == 0 and falls through when v0(=[[a0+8]+4]) != 0.
  At `beq` at 0x10099754 (target 0x10099c78), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0x10099768 (target 0x10099954), taken when s3(?) >= t9(=[[a0+8]+4]) (unsigned) and falls through when s3(?) < t9(=[[a0+8]+4]) (unsigned).
  At `beq` at 0x10099788 (target 0x10099750), taken when a2(?) >= 0x100 (signed) and falls through when a2(?) < 0x100 (signed).
  At `beq` at 0x100997a4 (target 0x10099868), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `beq` at 0x100997ac (target 0x10099870), taken when v0(?) == a7(=0x6) and falls through when v0(?) != a7(=0x6).
  At `beq` at 0x100997b4 (target 0x10099890), taken when v0(?) == t0(=0x7) and falls through when v0(?) != t0(=0x7).
  At `beq` at 0x100997bc (target 0x100998b0), taken when v0(?) == t1(=0x8) and falls through when v0(?) != t1(=0x8).
  At `beq` at 0x100997c4 (target 0x100998d0), taken when v0(?) == t2(=0x9) and falls through when v0(?) != t2(=0x9).
  At `beq` at 0x100997cc (target 0x100998e4), taken when v0(?) == t3(=0xa) and falls through when v0(?) != t3(=0xa).
  At `beq` at 0x100997d4 (target 0x100998f8), taken when v0(?) == t8(=0xb) and falls through when v0(?) != t8(=0xb).
  At `beq` at 0x100997e8 (target 0x10099860), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0x100997fc (target 0x10099860), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0x10099808 (target 0x100997f8), taken when v1(?) != a1(?) and falls through when v1(?) == a1(?).
  At `bne` at 0x10099810 (target 0x100997f8), taken when a2(=[sym(XRT_WINDOW)]) != a4(?) and falls through when a2(=[sym(XRT_WINDOW)]) == a4(?).
  At `beq` at 0x1009981c (target 0x10099750), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0x10099824 (target 0x10099750), taken when s4(=a0) == 0 and falls through when s4(=a0) != 0.
  At `beq` at 0x10099830 (target 0x10099750), taken when t9(=[a0+120]) == 0 and falls through when t9(=[a0+120]) != 0.
  At `blez` at 0x10099970 (target 0x10099c40), taken when a6(=[0x102c5f1c]) <= 0 (signed) and falls through when a6(=[0x102c5f1c]) > 0 (signed).
  At `bne` at 0x10099988 (target 0x10099c44), taken when v0(?) != 0 and falls through when v0(?) == 0.
  At `beq` at 0x10099998 (target 0x10099c44), taken when s5(?) == t0(?) and falls through when s5(?) != t0(?).
  At `beq` at 0x100999a4 (target 0x100999fc), taken when t1(=[[a0+8]+4]) == 0 and falls through when t1(=[[a0+8]+4]) != 0.
  At `beq` at 0x100999cc (target 0x100999fc), taken when v0(?) >= t2(=[[a0+8]+4]) (unsigned) and falls through when v0(?) < t2(=[[a0+8]+4]) (unsigned).
  At `bne` at 0x100999f4 (target 0x100999b0), taken when v0(?) < t8(=[[a0+8]+4]) (unsigned) and falls through when v0(?) >= t8(=[[a0+8]+4]) (unsigned).
  At `bne` at 0x10099a18 (target 0x10099980), taken when ra(=[a0+72]) < 0x2 (unsigned) and falls through when ra(=[a0+72]) >= 0x2 (unsigned).
  At `beq` at 0x10099a30 (target 0x10099bf8), taken when a0(=[[a0+8]+4]) == 0 and falls through when a0(=[[a0+8]+4]) != 0.
  At `bne` at 0x10099a48 (target 0x10099a58), taken when sp(?) != 0 and falls through when sp(?) == 0.
  At `blez` at 0x10099a58 (target 0x10099cb8), taken when a0(=[[a0+8]+4]) <= 0 (signed) and falls through when a0(=[[a0+8]+4]) > 0 (signed).
  At `beq` at 0x10099a78 (target 0x10099bdc), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0x10099a84 (target 0x10099bc0), taken when v1(=[a0+116]) == 0 and falls through when v1(=[a0+116]) != 0.
  At `beq` at 0x10099aac (target 0x10099bdc), taken when v0(=ret(SecurityLookupIDByType)) == 0 and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  At `bltz` at 0x10099acc (target 0x10099cdc), taken when v0(=[0x102ca7c4]) < 0 (signed) and falls through when v0(=[0x102ca7c4]) >= 0 (signed).
  At `beq` at 0x10099ae0 (target 0x10099cdc), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `beq` at 0x10099af4 (target 0x10099b20), taken when s2(?) >= a0(?) (signed) and falls through when s2(?) < a0(?) (signed).
  At `beq` at 0x10099b10 (target 0x10099bf0), taken when t1(?) == a6(?) and falls through when t1(?) != a6(?).
  At `bnel` at 0x10099b18 (target 0x10099b10), taken when a4(?) != a7(?) and falls through when a4(?) == a7(?).
  At `beq` at 0x10099b28 (target 0x10099b48), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0x10099b30 (target 0x10099b48), taken when t2(=0x1) == v0(?) and falls through when t2(=0x1) != v0(?).
  At `beq` at 0x10099b38 (target 0x10099b48), taken when t3(=0x2) == v0(?) and falls through when t3(=0x2) != v0(?).
  At `bne` at 0x10099b40 (target 0x10099cfc), taken when t8(=0x3) != v0(?) and falls through when t8(=0x3) == v0(?).
  At `bne` at 0x10099b60 (target 0x10099a68), taken when a1(?) < a0(?) (signed) and falls through when a1(?) >= a0(?) (signed).
  At `blez` at 0x10099b68 (target 0x10099cb8), taken when a0(?) <= 0 (signed) and falls through when a0(?) > 0 (signed).
  At `bltz` at 0x10099b78 (target 0x10099d04), taken when a0(=[0x102ca7c0]) < 0 (signed) and falls through when a0(=[0x102ca7c0]) >= 0 (signed).
  At `beq` at 0x10099ba8 (target 0x10099cb0), taken when v0(=ret(?)) == 0 and falls through when v0(=ret(?)) != 0.
  At `bne` at 0x10099bc0 (target 0x10099c00), taken when v0(=[a0+48]) != a4(?) and falls through when v0(=[a0+48]) == a4(?).
  At `bne` at 0x10099bcc (target 0x10099bdc), taken when v1(=[[a0+44]]:1) != 0 and falls through when v1(=[[a0+44]]:1) == 0.
  At `bne` at 0x10099bd4 (target 0x10099ab8), taken when t0(?) != 0 and falls through when t0(?) == 0.
  At `beq` at 0x10099c24 (target 0x10099bd4), taken when v0(=ret(SecurityLookupIDByType)) == 0 and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  At `bne` at 0x10099c30 (target 0x10099bd4), taken when a3(=[ret(SecurityLookupIDByType)]:1) != 0 and falls through when a3(=[ret(SecurityLookupIDByType)]:1) == 0.
  At `bgtz` at 0x10099cb0 (target 0x10099b74), taken when a0(?) > 0 (signed) and falls through when a0(?) <= 0 (signed).
  Returns v0 = 0x10 (`jr` at 0x10099924).
  Returns v0 = ? (`jr` at 0x1009994c).
  Returns v0 = 0x3 (`jr` at 0x10099ca8).
  Returns v0 = 0xb (`jr` at 0x10099cd4).
  The instructions from 0x1009974c to 0x1009974c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x10099bb8 to 0x10099bbc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x10099be4 to 0x10099bec are not reached by any path from the entry, and their branches are not listed.

- `ReparentWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1009bb80 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1009bb80-0x1009bfc0 (1088 bytes).
  Stores 4 bytes from a0 to [a0+24] +0x24 (`sw` at 0x1009bca4) with value [a0+28].
  Stores 4 bytes from t0 to [a0+24] +0x28 (`sw` at 0x1009bcbc) with value [a0+32].
  Stores 4 bytes from a3 to [a0+28] +0x20 (`sw` at 0x1009bccc) with value [a0+32].
  Stores 4 bytes from a0 to [a0+32] +0x1c (`sw` at 0x1009bcdc) with value [a0+28].
  Stores 4 bytes from s1 to a0 (arg0 at entry) +0x18 (`sw` at 0x1009bce0) with value a1.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0x20 (`sw` at 0x1009bcfc) with value 0x0.
  Stores 4 bytes from a0 to a0 (arg0 at entry) +0x1c (`sw` at 0x1009bd00) with value [a1+36].
  Stores 4 bytes from s0 to [a1+36] +0x20 (`sw` at 0x1009bd10) with value a0.
  Stores 4 bytes from s0 to a1 (arg1 at entry) +0x24 (`sw` at 0x1009bd14) with value a0.
  Stores 2 bytes from t3 to a0 (arg0 at entry) +0x62 (`sh` at 0x1009bd1c).
  Stores 2 bytes from ra to a0 (arg0 at entry) +0x60 (`sh` at 0x1009bd24).
  Stores 2 bytes from t8 to a0 (arg0 at entry) +0x8 (`sh` at 0x1009bd34).
  Stores 2 bytes from t2 to a0 (arg0 at entry) +0xa (`sh` at 0x1009bd48).
  Stores 2 bytes from a6 to ? (base unknown) (`sh` at 0x1009bde4).
  Stores 2 bytes from t1 to ? (base unknown) (`sh` at 0x1009be04).
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x1009be24) with value 0x0.
  Stores 4 bytes from t2 to ? (base unknown) (`sw` at 0x1009be50).
  Stores 4 bytes from s0 to a1 (arg1 at entry) +0x28 (`sw` at 0x1009bf40) with value a0.
  Stores 4 bytes from a4 to a0 (arg0 at entry) +0x1c (`sw` at 0x1009bf98) with value [[a1+36]+28].
  Stores 4 bytes from s0 to [[a1+36]+28] +0x20 (`sw` at 0x1009bfa8) with value a0.
  Stores 4 bytes from s0 to [a1+36] +0x1c (`sw` at 0x1009bfac) with value a0.
  Stores 4 bytes from a0 to a0 (arg0 at entry) +0x20 (`sw` at 0x1009bfb4) with value [a1+36].
  Stores 4 bytes from s0 to a1 (arg1 at entry) +0x28 (`sw` at 0x1009bfbc) with value a0.
  Calls `TraverseTree [0x101cc0f0]` via direct with a0=a0 at entry (arg0), a1=0x10219f20, a2=a1+4, a3=a3 at entry (arg3) (`jal` at 0x1009bbd8).
  Calls `MakeWindowOptional [0x10135300]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x1009bbe8).
  Calls `UnmapWindow [0x101eef00]` via direct with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?, a6=0x15 (`jal` at 0x1009bc08).
  Calls `DeliverEvents [0x10064f80]` via direct with a0=a0 at entry (arg0), a1=sp-112, a2=0x1, a3=a1 at entry (arg1), a5=[a0+4], a6=0x15 (`jal` at 0x1009bc88).
  Calls `SetWinSize [0x101092a0]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[sym(screenIsSaved)], a6=sym(screenIsSaved), a7=[[a0+24]+40] (`jal` at 0x1009bd44).
  Calls `SetBorderSize [0x10261e30]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x1009bd50).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+24], a2=?, a3=? (`jalr` at 0x1009bd64).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+8]:2, a2=[a0+10]:2, a3=? (`jalr` at 0x1009bd78).
  Calls `ResizeChildrenWinSize [0x1009cc50]` via direct with a0=a0 at entry (arg0), a1=0x0, a2=0x0, a3=0x0, a4=0x0 (`jal` at 0x1009bd94).
  Calls `CheckWindowOptionalNeed [0x10123eb0]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x1009bda0).
  Calls `MapWindow [0x10193330]` via direct with a0=a0 at entry (arg0), a1=a4 at entry (arg4), a2=?, a3=? (`jal` at 0x1009bdb4).
  At `beq` at 0x1009bbe0 (target 0x1009bf14), taken when v0(=ret(TraverseTree)) == 0 and falls through when v0(=ret(TraverseTree)) != 0.
  At `beq` at 0x1009bbf0 (target 0x1009bf44), taken when v0(=ret(MakeWindowOptional)) == 0 and falls through when v0(=ret(MakeWindowOptional)) != 0.
  At `beq` at 0x1009bbf8 (target 0x1009bc14), taken when s5(?) == 0 and falls through when s5(?) != 0.
  At `beq` at 0x1009bc34 (target 0x1009bc64), taken when a4(=[sym(panoramiXMode)]) == 0 and falls through when a4(=[sym(panoramiXMode)]) != 0.
  At `bne` at 0x1009bc44 (target 0x1009bc64), taken when a1(=[a1+24]) != 0 and falls through when a1(=[a1+24]) == 0.
  At `bne` at 0x1009bc9c (target 0x1009bca8), taken when a5(=[[a0+24]+36]) != s0(=a0) and falls through when a5(=[[a0+24]+36]) == s0(=a0).
  At `bne` at 0x1009bcb0 (target 0x1009bcc0), taken when a7(=[[a0+24]+40]) != s0(=a0) and falls through when a7(=[[a0+24]+40]) == s0(=a0).
  At `beq` at 0x1009bcc4 (target 0x1009bcd0), taken when a0(=[a0+28]) == 0 and falls through when a0(=[a0+28]) != 0.
  At `beq` at 0x1009bcd4 (target 0x1009bce0), taken when a3(=[a0+32]) == 0 and falls through when a3(=[a0+32]) != 0.
  At `bne` at 0x1009bce8 (target 0x1009bcf8), taken when t1(=[a1+24]) != 0 and falls through when t1(=[a1+24]) == 0.
  At `beq` at 0x1009bcf0 (target 0x1009bf6c), taken when a5(=[sym(screenIsSaved)]) == 0 and falls through when a5(=[sym(screenIsSaved)]) != 0.
  At `beq` at 0x1009bd08 (target 0x1009bf3c), taken when a3(=[a1+36]) == 0 and falls through when a3(=[a1+36]) != 0.
  At `beq` at 0x1009bd5c (target 0x1009bd6c), taken when t9(=[[a0+16]+496]) == 0 and falls through when t9(=[[a0+16]+496]) != 0.
  At `beq` at 0x1009bda8 (target 0x1009bdbc), taken when s5(?) == 0 and falls through when s5(?) != 0.
  At `beq` at 0x1009bde0 (target 0x1009be08), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `beq` at 0x1009bde8 (target 0x1009be90), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0x1009be0c (target 0x1009be74), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `beq` at 0x1009be1c (target 0x1009bdd0), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0x1009be2c (target 0x1009be38), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0x1009be38 (target 0x1009be64), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `bne` at 0x1009be58 (target 0x1009be40), taken when a1(?) != 0 and falls through when a1(?) == 0.
  At `beq` at 0x1009be64 (target 0x1009bdd4), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0x1009be78 (target 0x1009beac), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `beq` at 0x1009be80 (target 0x1009beec), taken when a3(?) == s0(=a0) and falls through when a3(?) != s0(=a0).
  At `beq` at 0x1009beac (target 0x1009be80), taken when s0(=a0) == a3(?) and falls through when s0(=a0) != a3(?).
  At `bne` at 0x1009bebc (target 0x1009be80), taken when a0(?) != 0 and falls through when a0(?) == 0.
  At `beq` at 0x1009bec4 (target 0x1009be80), taken when s0(=a0) == a3(?) and falls through when s0(=a0) != a3(?).
  At `bne` at 0x1009bed4 (target 0x1009be80), taken when a0(?) != 0 and falls through when a0(?) == 0.
  At `bne` at 0x1009bedc (target 0x1009beb4), taken when s0(=a0) != a3(?) and falls through when s0(=a0) == a3(?).
  At `beq` at 0x1009bf84 (target 0x1009bcf8), taken when a2(=[(sym(savedScreenInfo) + ([[a1+16]] << 0x4))]) == 0 and falls through when a2(=[(sym(savedScreenInfo) + ([[a1+16]] << 0x4))]) != 0.
  At `beq` at 0x1009bf8c (target 0x1009bcfc), taken when a0(=[a1+36]) == 0 and falls through when a0(=[a1+36]) != 0.
  At `beq` at 0x1009bfa0 (target 0x1009bfb8), taken when a3(=[[a1+36]+28]) == 0 and falls through when a3(=[[a1+36]+28]) != 0.
  Returns v0 = 0x0 (`jr` at 0x1009bf0c).
  Returns v0 = 0x8; f0 = ret(TraverseTree) (`jr` at 0x1009bf34).
  Returns v0 = 0xb; f0 = ret(MakeWindowOptional) (`jr` at 0x1009bf64).
  The instructions from 0x1009bdc8 to 0x1009bdcc are not reached by any path from the entry, and their branches are not listed.

- `FreeOsBuffers` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1009c590 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1009c590-0x1009c670 (224 bytes).
  Stores 4 bytes from zero to abs 0x102c7280 (AvailableInput) (`sw` at 0x1009c5b4) with value 0x0.
  Stores 4 bytes from zero to [a0+4] +0x10 (`sw` at 0x1009c5e4) with value 0x0.
  Stores 4 bytes from zero to [a0+4] +0xc (`sw` at 0x1009c5e8) with value 0x0.
  Stores 4 bytes from zero to [a0+4] +0x0 (`sw` at 0x1009c5ec) with value 0x0.
  Stores 4 bytes from s0 to abs 0x102c7278 (FreeInputs) (`sw` at 0x1009c5f0) with value [a0+4].
  Stores 4 bytes from v0 to [a0+4] +0x8 (`sw` at 0x1009c5f8) with value [[a0+4]+4].
  Stores 4 bytes from zero to [a0+8] +0xc (`sw` at 0x1009c62c) with value 0x0.
  Stores 4 bytes from zero to [a0+8] +0x0 (`sw` at 0x1009c630) with value 0x0.
  Stores 4 bytes from s0 to abs 0x102c727c (FreeOutputs) (`sw` at 0x1009c634) with value [a0+8].
  Calls `Xfree [0x101fc9c0]` via direct with a0=[[a0+4]+4], a1=a1 at entry (arg1), a2=[0x102c7278], a3=a3 at entry (arg3) (`jal` at 0x1009c5c8).
  Calls `Xfree [0x101fc9c0]` via direct with a0=[a0+4], a1=?, a2=?, a3=? (`jal` at 0x1009c5d4).
  Calls `Xfree [0x101fc9c0]` via direct with a0=[[a0+8]+8], a1=?, a2=?, a3=? (`jal` at 0x1009c610).
  Calls `Xfree [0x101fc9c0]` via direct with a0=[a0+8], a1=?, a2=?, a3=? (`jal` at 0x1009c61c).
  Calls `Xfree [0x101fc9c0]` via direct with a0=[[a0+28]+4], a1=?, a2=?, a3=? (`jal` at 0x1009c648).
  Calls `Xfree [0x101fc9c0]` via direct with a0=[a0+28], a1=?, a2=?, a3=? (`jal` at 0x1009c654).
  At `bne` at 0x1009c5ac (target 0x1009c5b8), taken when at(=[0x102c7280]) != a0 and falls through when at(=[0x102c7280]) == a0.
  At `beq` at 0x1009c5b8 (target 0x1009c5fc), taken when s0(=[a0+4]) == 0 and falls through when s0(=[a0+4]) != 0.
  At `beq` at 0x1009c5c0 (target 0x1009c5e4), taken when a2(=[0x102c7278]) == 0 and falls through when a2(=[0x102c7278]) != 0.
  At `beq` at 0x1009c600 (target 0x1009c638), taken when s0(=[a0+8]) == 0 and falls through when s0(=[a0+8]) != 0.
  At `beq` at 0x1009c608 (target 0x1009c62c), taken when a0(=[0x102c727c]) == 0 and falls through when a0(=[0x102c727c]) != 0.
  At `beq` at 0x1009c63c (target 0x1009c660), taken when s0(=[a0+28]) == 0 and falls through when s0(=[a0+28]) != 0.
  Returns v0 = ? (`jr` at 0x1009c668).

- `FreeWindowResources..F` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1009ea90 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1009ea90-0x1009eca4 (532 bytes).
  Stores 4 bytes from zero to [0x102c609c] +0x14 (`sw` at 0x1009eae4) with value 0x0.
  Stores 4 bytes from zero to [0x102c609c] +0xc (`sw` at 0x1009eae8) with value 0x0.
  Stores 4 bytes from zero to [0x102c609c] +0x10 (`sw` at 0x1009eaec) with value 0x0.
  Stores 4 bytes from at to a0 (arg0 at entry) +0x7c (`sw` at 0x1009ec10) with value ([a0+124] | 0x10000000).
  Stores 4 bytes from zero to a0 (arg0 at entry) +0x78 (`sw` at 0x1009ec18) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x1009ec68) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x1009ec6c) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x1009ec70) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x1009ec80) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x1009ec84) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x1009ec8c) with value 0x0.
  Calls `DeleteWindowFromAnySaveSet [0x1014dca0]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1009eaa4).
  Calls `DeleteWindowFromAnyEvents [0x100743e0]` via direct with a0=a0 at entry (arg0), a1=0x1, a2=?, a3=[0x102c60a0] (`jal` at 0x1009eb04).
  Calls `(unknown callee)` via register with a0=a0+44, a1=?, a2=?, a3=? (`jalr` at 0x1009eb10).
  Calls `(unknown callee)` via register with a0=a0+72, a1=?, a2=?, a3=? (`jalr` at 0x1009eb1c).
  Calls `(unknown callee)` via register with a0=a0+56, a1=?, a2=?, a3=? (`jalr` at 0x1009eb28).
  Calls `(unknown callee)` via register with a0=a0+84, a1=?, a2=?, a3=? (`jalr` at 0x1009eb34).
  Calls `(unknown callee)` via register with a0=[[a0+120]+40], a1=?, a2=?, a3=[a0+120] (`jalr` at 0x1009eb58).
  Calls `(unknown callee)` via register with a0=[[a0+120]+44], a1=?, a2=?, a3=[a0+120] (`jalr` at 0x1009eb7c).
  Calls `(unknown callee)` via register with a0=[a0+112], a1=?, a2=[a0+124], a3=?, a5=([a0+124] << 0x2), a7=0x3 (`jalr` at 0x1009eb98).
  Calls `ShmInfoPropDeleteAll [0x100b6aa0]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x1009ebb4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x1009ebc0).
  Calls `FreeCursor [0x10205d70]` via direct with a0=[[a0+120]+4], a1=0x0, a2=[a0+124], a3=[a0+120] (`jal` at 0x1009ebec).
  Calls `Xfree [0x101fc9c0]` via direct with a0=[a0+120], a1=?, a2=[a0+124], a3=[a0+120] (`jal` at 0x1009ec0c).
  Calls `ShmInfoDeleteWindow [0x102172c0]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`j` at 0x1009ec28).
  Calls `ShmInfoDeleteWindow [0x102172c0]` via direct with a0=a0 at entry (arg0), a1=?, a2=[a0+124], a3=[a0+120] (`j` at 0x1009ec40).
  Calls `(unknown callee)` via register with a0=[a0+108], a1=?, a2=[a0+124], a3=?, a7=0x3 (`jalr` at 0x1009ec94).
  At `blez` at 0x1009eabc (target 0x1009eb00), taken when a4(=[0x102c60a0]) <= 0 (signed) and falls through when a4(=[0x102c60a0]) > 0 (signed).
  At `beq` at 0x1009ead0 (target 0x1009eaf4), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `bne` at 0x1009eadc (target 0x1009eaf0), taken when a1(=[[0x102c609c]+16]) != s0(=a0) and falls through when a1(=[[0x102c609c]+16]) == s0(=a0).
  At `bnel` at 0x1009eaf8 (target 0x1009ec60), taken when a4(?) != 0 and falls through when a4(?) == 0.
  At `beq` at 0x1009eb40 (target 0x1009eb84), taken when a3(=[a0+120]) == 0 and falls through when a3(=[a0+120]) != 0.
  At `beq` at 0x1009eb4c (target 0x1009eb64), taken when a0(=[[a0+120]+40]) == 0 and falls through when a0(=[[a0+120]+40]) != 0.
  At `beq` at 0x1009eb64 (target 0x1009eb84), taken when a3(=[a0+120]) == 0 and falls through when a3(=[a0+120]) != 0.
  At `beq` at 0x1009eb70 (target 0x1009eb84), taken when a0(=[[a0+120]+44]) == 0 and falls through when a0(=[[a0+120]+44]) != 0.
  At `bltz` at 0x1009eb8c (target 0x1009eba8), taken when a5(=([a0+124] << 0x2)) < 0 (signed) and falls through when a5(=([a0+124] << 0x2)) >= 0 (signed).
  At `beq` at 0x1009ebac (target 0x1009ec90), taken when a6(?) == a7(=0x3) and falls through when a6(?) != a7(=0x3).
  At `beq` at 0x1009ebcc (target 0x1009ec30), taken when a3(=[a0+120]) == 0 and falls through when a3(=[a0+120]) != 0.
  At `bltz` at 0x1009ebd8 (target 0x1009ec00), taken when t0(=([a0+124] << 0x3)) < 0 (signed) and falls through when t0(=([a0+124] << 0x3)) >= 0 (signed).
  At `beq` at 0x1009ec54 (target 0x1009eb00), taken when a2(?) == a0(?) and falls through when a2(?) != a0(?).
  At `bne` at 0x1009ec60 (target 0x1009ec74), taken when v0(?) != s0(=a0) and falls through when v0(?) == s0(=a0).
  At `bne` at 0x1009ec78 (target 0x1009ec50), taken when v1(?) != s0(=a0) and falls through when v1(?) == s0(=a0).
  The instructions from 0x1009ec48 to 0x1009ec4c are not reached by any path from the entry, and their branches are not listed.

- `WindowsRestructured` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100a39e0 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100a39e0-0x100a3a0c (44 bytes).
  Calls `CheckMotion..IC [0x1023a050]` via direct with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x100a39f4).
  Returns v0 = ret(CheckMotion..IC); f0 = ret(CheckMotion..IC) (`jr` at 0x100a3a04).

- `SProcXineramaChangeWindowAttributes` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100a6690 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100a6690-0x100a6e20 (1936 bytes).
  Stores 1 bytes from v1 to [a0+8] +0x3 (`sb` at 0x100a66a4) with value [[a0+8]+2]:1.
  Stores 1 bytes from a1 to [a0+8] +0x2 (`sb` at 0x100a66a8) with value [[a0+8]+3]:1.
  Stores 1 bytes from t0 to [a0+8] +0x8 (`sb` at 0x100a6714) with value [[a0+8]+11]:1.
  Stores 1 bytes from a7 to [a0+8] +0xb (`sb` at 0x100a6718) with value [[a0+8]+8]:1.
  Stores 1 bytes from t9 to [a0+8] +0x9 (`sb` at 0x100a671c) with value [[a0+8]+10]:1.
  Stores 1 bytes from t8 to [a0+8] +0x4 (`sb` at 0x100a6724) with value [[a0+8]+7]:1.
  Stores 1 bytes from t3 to [a0+8] +0x7 (`sb` at 0x100a6728) with value [[a0+8]+4]:1.
  Stores 1 bytes from t2 to [a0+8] +0x5 (`sb` at 0x100a6730) with value [[a0+8]+6]:1.
  Stores 1 bytes from t1 to [a0+8] +0x6 (`sb` at 0x100a6740) with value [[a0+8]+5]:1.
  Stores 1 bytes from a4 to [a0+8] +0xa (`sb` at 0x100a6748) with value [[a0+8]+9]:1.
  Stores 1 bytes from at to [a0+8] +0x20 (`sb` at 0x100a67d4) with value [[a0+8]+35]:1.
  Stores 1 bytes from v0 to [a0+8] +0x23 (`sb` at 0x100a67e0) with value [[a0+8]+32]:1.
  Stores 1 bytes from s6 to ? (base unknown) (`sb` at 0x100a67f4).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100a67f8).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x100a67fc).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100a6800).
  Stores 1 bytes from a1 to ? (base unknown) (`sb` at 0x100a6804).
  Stores 1 bytes from a2 to ? (base unknown) (`sb` at 0x100a6808).
  Stores 1 bytes from a3 to ? (base unknown) (`sb` at 0x100a680c).
  Stores 1 bytes from a4 to ? (base unknown) (`sb` at 0x100a6810).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x100a6814).
  Stores 1 bytes from a6 to ? (base unknown) (`sb` at 0x100a6818).
  Stores 1 bytes from a7 to ? (base unknown) (`sb` at 0x100a681c).
  Stores 1 bytes from t0 to ? (base unknown) (`sb` at 0x100a6820).
  Stores 1 bytes from t1 to ? (base unknown) (`sb` at 0x100a6824).
  Stores 1 bytes from t2 to ? (base unknown) (`sb` at 0x100a6828).
  Stores 1 bytes from t3 to ? (base unknown) (`sb` at 0x100a682c).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x100a6830).
  Stores 1 bytes from t9 to ? (base unknown) (`sb` at 0x100a6834).
  Stores 1 bytes from ra to ? (base unknown) (`sb` at 0x100a6838).
  Stores 1 bytes from s0 to ? (base unknown) (`sb` at 0x100a683c).
  Stores 1 bytes from s1 to ? (base unknown) (`sb` at 0x100a6840).
  Stores 1 bytes from s2 to ? (base unknown) (`sb` at 0x100a6844).
  Stores 1 bytes from s3 to ? (base unknown) (`sb` at 0x100a6848).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100a68a4).
  Stores 1 bytes from s6 to ? (base unknown) (`sb` at 0x100a68a8).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100a68b4).
  Stores 1 bytes from s6 to ? (base unknown) (`sb` at 0x100a68b8).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100a68c4).
  Stores 1 bytes from s6 to ? (base unknown) (`sb` at 0x100a68c8).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100a68d4).
  Stores 1 bytes from s6 to ? (base unknown) (`sb` at 0x100a68d8).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100a68e0).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100a68e8).
  Stores 1 bytes from s6 to ? (base unknown) (`sb` at 0x100a6908).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100a690c).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x100a6910).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100a6914).
  Stores 1 bytes from a1 to ? (base unknown) (`sb` at 0x100a6918).
  Stores 1 bytes from a2 to ? (base unknown) (`sb` at 0x100a691c).
  Stores 1 bytes from a3 to ? (base unknown) (`sb` at 0x100a6920).
  Stores 1 bytes from a4 to ? (base unknown) (`sb` at 0x100a6924).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x100a6928).
  Stores 1 bytes from a6 to ? (base unknown) (`sb` at 0x100a692c).
  Stores 1 bytes from a7 to ? (base unknown) (`sb` at 0x100a6930).
  Stores 1 bytes from t0 to ? (base unknown) (`sb` at 0x100a6934).
  Stores 1 bytes from t1 to ? (base unknown) (`sb` at 0x100a6938).
  Stores 1 bytes from t2 to ? (base unknown) (`sb` at 0x100a693c).
  Stores 1 bytes from t3 to ? (base unknown) (`sb` at 0x100a6940).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x100a6944).
  Stores 1 bytes from t9 to ? (base unknown) (`sb` at 0x100a6948).
  Stores 1 bytes from ra to ? (base unknown) (`sb` at 0x100a694c).
  Stores 1 bytes from s0 to ? (base unknown) (`sb` at 0x100a6950).
  Stores 1 bytes from s1 to ? (base unknown) (`sb` at 0x100a6954).
  Stores 1 bytes from s2 to ? (base unknown) (`sb` at 0x100a6958).
  Stores 1 bytes from s3 to ? (base unknown) (`sb` at 0x100a695c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100a69b8).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100a69bc).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100a69c8).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100a69cc).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100a69d8).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100a69dc).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100a69e8).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100a69ec).
  Stores 1 bytes from s6 to ? (base unknown) (`sb` at 0x100a69f4).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100a69fc).
  Stores 1 bytes from a3 to ? (base unknown) (`sb` at 0x100a6a9c).
  Stores 1 bytes from a4 to ? (base unknown) (`sb` at 0x100a6aa0).
  Stores 1 bytes from ra to ? (base unknown) (`sb` at 0x100a6aa4).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x100a6aa8).
  Stores 1 bytes from a7 to ? (base unknown) (`sb` at 0x100a6aac).
  Stores 1 bytes from t0 to ? (base unknown) (`sb` at 0x100a6ab0).
  Stores 1 bytes from t1 to ? (base unknown) (`sb` at 0x100a6ab4).
  Stores 1 bytes from t2 to ? (base unknown) (`sb` at 0x100a6ab8).
  Stores 1 bytes from t3 to ? (base unknown) (`sb` at 0x100a6abc).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x100a6ac0).
  Stores 1 bytes from t9 to ? (base unknown) (`sb` at 0x100a6ac4).
  Stores 1 bytes from a1 to ? (base unknown) (`sb` at 0x100a6ac8).
  Stores 1 bytes from a2 to ? (base unknown) (`sb` at 0x100a6acc).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100a6ad4).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x100a6adc).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x100a6ae4).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x100a6aec).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100a6af4).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x100a6afc).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100a6b04).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x100a6b10).
  Stores 1 bytes from s7 to ? (base unknown) (`sb` at 0x100a6b18).
  Stores 1 bytes from s7 to ? (base unknown) (`sb` at 0x100a6b20).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x100a6b28).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x100a6b30).
  Stores 1 bytes from s7 to ? (base unknown) (`sb` at 0x100a6b38).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x100a6b40).
  Stores 1 bytes from s7 to ? (base unknown) (`sb` at 0x100a6b48).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x100a6b50).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x100a6b54).
  Stores 1 bytes from t9 to ? (base unknown) (`sb` at 0x100a6ba4).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x100a6ba8).
  Stores 1 bytes from t3 to ? (base unknown) (`sb` at 0x100a6bb4).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100a6bc0).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100a6bcc).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x100a6bd0).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100a6be0).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100a6bec).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100a6bf8).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100a6bfc).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x100a6c0c).
  Stores 1 bytes from a4 to ? (base unknown) (`sb` at 0x100a6c20).
  Stores 1 bytes from t9 to [a0+8] +0x1c (`sb` at 0x100a6cfc) with value [[a0+8]+31]:1.
  Stores 1 bytes from s7 to [a0+8] +0x2a (`sb` at 0x100a6d08) with value [[a0+8]+41]:1.
  Stores 1 bytes from t8 to [a0+8] +0x1a (`sb` at 0x100a6d10) with value [[a0+8]+25]:1.
  Stores 1 bytes from ra to [a0+8] +0x1f (`sb` at 0x100a6d44) with value [[a0+8]+28]:1.
  Stores 1 bytes from at to [a0+8] +0x1d (`sb` at 0x100a6d4c) with value [[a0+8]+30]:1.
  Stores 1 bytes from v0 to [a0+8] +0x1e (`sb` at 0x100a6d54) with value [[a0+8]+29]:1.
  Stores 1 bytes from v1 to [a0+8] +0x20 (`sb` at 0x100a6d5c) with value [[a0+8]+35]:1.
  Stores 1 bytes from a0 to [a0+8] +0x23 (`sb` at 0x100a6d64) with value [[a0+8]+32]:1.
  Stores 1 bytes from a1 to [a0+8] +0x21 (`sb` at 0x100a6d6c) with value [[a0+8]+34]:1.
  Stores 1 bytes from a2 to [a0+8] +0x22 (`sb` at 0x100a6d74) with value [[a0+8]+33]:1.
  Stores 1 bytes from a4 to [a0+8] +0x24 (`sb` at 0x100a6d7c) with value [[a0+8]+39]:1.
  Stores 1 bytes from a7 to [a0+8] +0x27 (`sb` at 0x100a6d84) with value [[a0+8]+36]:1.
  Stores 1 bytes from t0 to [a0+8] +0x25 (`sb` at 0x100a6d8c) with value [[a0+8]+38]:1.
  Stores 1 bytes from t1 to [a0+8] +0x26 (`sb` at 0x100a6d94) with value [[a0+8]+37]:1.
  Stores 1 bytes from t2 to [a0+8] +0x28 (`sb` at 0x100a6d9c) with value [[a0+8]+43]:1.
  Stores 1 bytes from s4 to [a0+8] +0x29 (`sb` at 0x100a6da4) with value [[a0+8]+42]:1.
  Stores 1 bytes from t3 to [a0+8] +0x2b (`sb` at 0x100a6dac) with value [[a0+8]+40]:1.
  Stores 1 bytes from t3 to [a0+8] +0x18 (`sb` at 0x100a6db4) with value [[a0+8]+27]:1.
  Stores 1 bytes from t2 to [a0+8] +0x16 (`sb` at 0x100a6db8) with value [[a0+8]+21]:1.
  Stores 1 bytes from t1 to [a0+8] +0x15 (`sb` at 0x100a6dbc) with value [[a0+8]+22]:1.
  Stores 1 bytes from t0 to [a0+8] +0x17 (`sb` at 0x100a6dc0) with value [[a0+8]+20]:1.
  Stores 1 bytes from a7 to [a0+8] +0x14 (`sb` at 0x100a6dc4) with value [[a0+8]+23]:1.
  Stores 1 bytes from a4 to [a0+8] +0x12 (`sb` at 0x100a6dc8) with value [[a0+8]+17]:1.
  Stores 1 bytes from a2 to [a0+8] +0x11 (`sb` at 0x100a6dcc) with value [[a0+8]+18]:1.
  Stores 1 bytes from a1 to [a0+8] +0x13 (`sb` at 0x100a6dd0) with value [[a0+8]+16]:1.
  Stores 1 bytes from a0 to [a0+8] +0x10 (`sb` at 0x100a6dd4) with value [[a0+8]+19]:1.
  Stores 1 bytes from v1 to [a0+8] +0xe (`sb` at 0x100a6dd8) with value [[a0+8]+13]:1.
  Stores 1 bytes from v0 to [a0+8] +0xd (`sb` at 0x100a6ddc) with value [[a0+8]+14]:1.
  Stores 1 bytes from at to [a0+8] +0xf (`sb` at 0x100a6de0) with value [[a0+8]+12]:1.
  Stores 1 bytes from s4 to [a0+8] +0x1b (`sb` at 0x100a6de4) with value [[a0+8]+24]:1.
  Stores 1 bytes from s7 to [a0+8] +0x19 (`sb` at 0x100a6dec) with value [[a0+8]+26]:1.
  Stores 1 bytes from ra to [a0+8] +0xc (`sb` at 0x100a6df8) with value [[a0+8]+15]:1.
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100a6e04).
  Stores 1 bytes from ra to ? (base unknown) (`sb` at 0x100a6e08).
  Stores 1 bytes from t9 to ? (base unknown) (`sb` at 0x100a6e14).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x100a6e1c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=a0 at entry (arg0) (`jalr` at 0x100a6c34).
  At `beq` at 0x100a66cc (target 0x100a66ec), taken when v0(=[a0+72]) >= 0x3 (unsigned) and falls through when v0(=[a0+72]) < 0x3 (unsigned).
  At `bne` at 0x100a674c (target 0x100a6cdc), taken when a5(=[[a0+8]+2]:2-3) < 0x8 (unsigned) and falls through when a5(=[[a0+8]+2]:2-3) >= 0x8 (unsigned).
  At `bne` at 0x100a6754 (target 0x100a6cec), taken when a1(?) != 0 and falls through when a1(?) == 0.
  At `bne` at 0x100a68fc (target 0x100a6c60), taken when s4(?) < 0x8 (unsigned) and falls through when s4(?) >= 0x8 (unsigned).
  At `beq` at 0x100a6a10 (target 0x100a67f0), taken when s4(?) >= 0x8 (unsigned) and falls through when s4(?) < 0x8 (unsigned).
  At `beq` at 0x100a6b74 (target 0x100a6c24), taken when s4(?) == 0 and falls through when s4(?) != 0.
  At `bne` at 0x100a6b7c (target 0x100a6b88), taken when a2(?) != 0 and falls through when a2(?) == 0.
  At `bne` at 0x100a6b8c (target 0x100a6dfc), taken when s6(?) < 0x2 (signed) and falls through when s6(?) >= 0x2 (signed).
  At `beq` at 0x100a6be4 (target 0x100a6c54), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `bne` at 0x100a6c10 (target 0x100a6bc0), taken when at(?) != 0 and falls through when at(?) == 0.
  Returns v0 = 0x10 (`jr` at 0x100a66e4).
  Returns v0 = ret(?); f0 = ret(?) (`jr` at 0x100a6c4c).

- `glxMiAllocPbuffer` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100a8120 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100a8120-0x100a86c0 (1440 bytes).
  Stores 2 bytes from ra to ? (base unknown) (`sh` at 0x100a8260).
  Stores 4 bytes from s1 to ret(__malloc..ML) +0x8 (`sw` at 0x100a82cc).
  Stores 4 bytes from s7 to ret(__malloc..ML) +0x0 (`sw` at 0x100a82d0) with value a0.
  Stores 4 bytes from s0 to ret(__malloc..ML) +0xc (`sw` at 0x100a82e0).
  Stores 4 bytes from v0 to ? (base unknown) (`sw` at 0x100a8374) with value ret(?).
  Stores 2 bytes from zero to ? (base unknown) (`sh` at 0x100a84a8) with value 0x0.
  Stores 4 bytes from s7 to ? (base unknown) (`sw` at 0x100a8540) with value a0.
  Stores 4 bytes from s7 to ? (base unknown) (`sw` at 0x100a8594) with value a0.
  Stores 4 bytes from ra to ? (base unknown) (`sw` at 0x100a859c).
  Stores 4 bytes from v0 to ? (base unknown) (`sw` at 0x100a85a4).
  Stores 4 bytes from a1 to ? (base unknown) (`sw` at 0x100a85d0).
  Stores 4 bytes from a3 to ? (base unknown) (`sw` at 0x100a8600) with value 0x1.
  Stores 4 bytes from a3 to ? (base unknown) (`sw` at 0x100a8618) with value 0x1.
  Stores 4 bytes from a3 to ? (base unknown) (`sw` at 0x100a8628) with value 0x1.
  Stores 4 bytes from a3 to ? (base unknown) (`sw` at 0x100a8638) with value 0x1.
  Stores 4 bytes from a3 to ? (base unknown) (`sw` at 0x100a8650) with value 0x1.
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x100a8270).
  Calls `__libc_lockmalloc` via got with a0=[sym(__us_rsthread_malloc)], a1=?, a2=?, a3=? (`jalr` at 0x100a8298).
  Calls `__malloc..ML [0x101e7680]` via direct with a0=0x10, a1=?, a2=?, a3=? (`jal` at 0x100a82a4).
  Calls `__libc_unlockmalloc` via got with a0=?, a1=[sym(__us_rsthread_malloc)], a2=?, a3=? (`jalr` at 0x100a82bc).
  Calls `(unknown callee)` via register with a0=sp-240, a1=0x1, a2=?, a3=? (`jalr` at 0x100a8368).
  Calls `FatalError [0x10094f20]` via direct with a0=0x10291460, a1=?, a2=?, a3=?, a5=[sym(Must_have_memory)] (`jal` at 0x100a84bc).
  Calls `__libc_lockmalloc` via got with a0=[sym(__us_rsthread_malloc)], a1=?, a2=?, a3=? (`jalr` at 0x100a8564).
  Calls `__malloc..ML [0x101e7680]` via direct with a0=0x8, a1=?, a2=?, a3=? (`jal` at 0x100a856c).
  Calls `__libc_unlockmalloc` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x100a8580).
  Calls `FatalError [0x10094f20]` via direct with a0=0x10291460, a1=?, a2=?, a3=? (`jal` at 0x100a85bc).
  At `bne` at 0x100a8198 (target 0x100a8448), taken when at(=[[[([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))]+128]]) < v0(=[a0+12]:2) (signed) and falls through when at(=[[[([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))]+128]]) >= v0(=[a0+12]:2) (signed).
  At `bne` at 0x100a81ac (target 0x100a8448), taken when t2(=[[[([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))]+128]+4]) < t3(=[a0+14]:2) (signed) and falls through when t2(=[[[([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))]+128]+4]) >= t3(=[a0+14]:2) (signed).
  At `bltz` at 0x100a81d0 (target 0x100a8464), taken when v0(=[[[([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))]+128]+8]-1) < 0 (signed) and falls through when v0(=[[[([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))]+128]+8]-1) >= 0 (signed).
  At `beq` at 0x100a821c (target 0x100a8464), taken when s2(?) == s6(=[[[([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))]+128]+8]) and falls through when s2(?) != s6(=[[[([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))]+128]+8]).
  At `bne` at 0x100a8230 (target 0x100a8210), taken when t8(?) != 0 and falls through when t8(?) == 0.
  At `bne` at 0x100a8240 (target 0x100a8214), taken when s8(?) != s3(?) and falls through when s8(?) == s3(?).
  At `beq` at 0x100a8268 (target 0x100a8288), taken when t9(?) == 0 and falls through when t9(?) != 0.
  At `beq` at 0x100a8278 (target 0x100a849c), taken when v0(=ret(?)) == 0 and falls through when v0(=ret(?)) != 0.
  At `bne` at 0x100a8280 (target 0x100a8218), taken when s4(=one of 0x0, 0x1) != 0 and falls through when s4(=one of 0x0, 0x1) == 0.
  At `beq` at 0x100a8290 (target 0x100a82a0), taken when a0(=[sym(__us_rsthread_malloc)]) == 0 and falls through when a0(=[sym(__us_rsthread_malloc)]) != 0.
  At `beq` at 0x100a82b0 (target 0x100a82c4), taken when a1(=[sym(__us_rsthread_malloc)]) == 0 and falls through when a1(=[sym(__us_rsthread_malloc)]) != 0.
  At `beq` at 0x100a82c4 (target 0x100a84ac), taken when s2(=ret(__malloc..ML)) == 0 and falls through when s2(=ret(__malloc..ML)) != 0.
  At `beq` at 0x100a82e8 (target 0x100a86b8), taken when a3(=[a0+52]) == 0 and falls through when a3(=[a0+52]) != 0.
  At `beq` at 0x100a83c8 (target 0x100a85c4), taken when a0(?) >= a6(?) (signed) and falls through when a0(?) < a6(?) (signed).
  At `beq` at 0x100a8438 (target 0x100a868c), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `beq` at 0x100a84b0 (target 0x100a84c4), taken when a5(=[sym(Must_have_memory)]) == 0 and falls through when a5(=[sym(Must_have_memory)]) != 0.
  At `beq` at 0x100a84f4 (target 0x100a868c), taken when a1(?) == a2(?) and falls through when a1(?) != a2(?).
  At `beq` at 0x100a8528 (target 0x100a84e8), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `beq` at 0x100a8548 (target 0x100a84e8), taken when s2(?) == s4(?) and falls through when s2(?) != s4(?).
  At `bne` at 0x100a8554 (target 0x100a8540), taken when t8(=[[([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))]+4]) != 0 and falls through when t8(=[[([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))]+4]) == 0.
  At `beq` at 0x100a855c (target 0x100a856c), taken when a0(=[sym(__us_rsthread_malloc)]) == 0 and falls through when a0(=[sym(__us_rsthread_malloc)]) != 0.
  At `beq` at 0x100a8578 (target 0x100a858c), taken when t9(=[sym(__us_rsthread_malloc)]) == 0 and falls through when t9(=[sym(__us_rsthread_malloc)]) != 0.
  At `beq` at 0x100a858c (target 0x100a85a8), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0x100a85ac (target 0x100a85c8), taken when at(=[sym(Must_have_memory)]) == 0 and falls through when at(=[sym(Must_have_memory)]) != 0.
  At `blez` at 0x100a85cc (target 0x100a8654), taken when s8(?) <= 0 (signed) and falls through when s8(?) > 0 (signed).
  At `beq` at 0x100a85e4 (target 0x100a8604), taken when (s8(?) & 0x3) == 0 and falls through when (s8(?) & 0x3) != 0.
  At `bne` at 0x100a85fc (target 0x100a85ec), taken when a4(?) != 0 and falls through when a4(?) == 0.
  At `beq` at 0x100a8608 (target 0x100a8654), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `bne` at 0x100a864c (target 0x100a8610), taken when v0(?) != a0(?) and falls through when v0(?) == a0(?).
  At `bne` at 0x100a86a8 (target 0x100a8434), taken when t3(?) < t8(?) (signed) and falls through when t3(?) >= t8(?) (signed).
  Returns v0 = 0x0 (`jr` at 0x100a845c).
  Returns v0 = 0x0 (`jr` at 0x100a8494).
  Returns v0 = 0x1 (`jr` at 0x100a8684).
  The instructions from 0x100a8208 to 0x100a820c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x100a8538 to 0x100a853c are not reached by any path from the entry, and their branches are not listed.

- `ProcMultibufferDispatch..JKC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100a86c0 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100a86c0-0x100a8814 (340 bytes).
  Calls `ProcGetBufferVersion..OJC [0x1011db20]` via direct with a0=a0 at entry (arg0), a1=entry(0x1028e0c0), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x100a8720).
  Calls `ProcClearImageBufferArea..IKC [0x10135d60]` via direct with a0=a0 at entry (arg0), a1=entry(0x1028e0c0), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x100a8738).
  Calls `ProcGetBufferInfo..HKC [0x10063190]` via direct with a0=a0 at entry (arg0), a1=entry(0x1028e0c0), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x100a8750).
  Calls `ProcGetBufferAttributes..GKC [0x101763e0]` via direct with a0=a0 at entry (arg0), a1=entry(0x1028e0c0), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x100a8768).
  Calls `ProcSetBufferAttributes..FKC [0x100e0c10]` via direct with a0=a0 at entry (arg0), a1=entry(0x1028e0c0), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x100a8780).
  Calls `ProcGetMBufferAttributes..EKC [0x102234e0]` via direct with a0=a0 at entry (arg0), a1=entry(0x1028e0c0), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x100a8798).
  Calls `ProcSetMBufferAttributes..DKC [0x10217120]` via direct with a0=a0 at entry (arg0), a1=entry(0x1028e0c0), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x100a87b0).
  Calls `ProcDisplayImageBuffers..BKC [0x100f1450]` via direct with a0=a0 at entry (arg0), a1=entry(0x1028e0c0), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x100a87cc).
  Calls `ProcDestroyImageBuffers..CKC [0x101921a0]` via direct with a0=a0 at entry (arg0), a1=entry(0x1028e0c0), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x100a87e8).
  Calls `ProcCreateImageBuffers..AKC [0x100aae40]` via direct with a0=a0 at entry (arg0), a1=entry(0x1028e0c0), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x100a8800).
  At `beq` at 0x100a86e8 (target 0x100a86fc), taken when v1(=[[a0+8]+1]:1) >= 0xb (unsigned) and falls through when v1(=[[a0+8]+1]:1) < 0xb (unsigned).
  Returns v0 = 0x1 (`jr` at 0x100a8704).
  Returns v0 = ? (`jr` at 0x100a8714).
  Returns v0 = ret(ProcSetMBufferAttributes..DKC); f0 = ret(ProcSetMBufferAttributes..DKC) (`jr` at 0x100a87c0).
  Returns v0 = ret(ProcDisplayImageBuffers..BKC); f0 = ret(ProcDisplayImageBuffers..BKC) (`jr` at 0x100a87dc).

- `SProcSGIvcStoreGammaColors8..EHG` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100a8820 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100a8820-0x100a88d0 (176 bytes).
  Stores 1 bytes from v0 to [a0+8] +0x3 (`sb` at 0x100a882c) with value [[a0+8]+2]:1.
  Stores 1 bytes from v1 to [a0+8] +0x2 (`sb` at 0x100a8830) with value [[a0+8]+3]:1.
  Stores 1 bytes from v1 to [a0+8] +0x7 (`sb` at 0x100a8888) with value [[a0+8]+4]:1.
  Stores 1 bytes from v0 to [a0+8] +0x5 (`sb` at 0x100a888c) with value [[a0+8]+6]:1.
  Stores 1 bytes from at to [a0+8] +0x6 (`sb` at 0x100a8890) with value [[a0+8]+5]:1.
  Stores 1 bytes from t9 to [a0+8] +0x8 (`sb` at 0x100a8894) with value [[a0+8]+11]:1.
  Stores 1 bytes from t8 to [a0+8] +0xb (`sb` at 0x100a8898) with value [[a0+8]+8]:1.
  Stores 1 bytes from t3 to [a0+8] +0x9 (`sb` at 0x100a889c) with value [[a0+8]+10]:1.
  Stores 1 bytes from t2 to [a0+8] +0xa (`sb` at 0x100a88a0) with value [[a0+8]+9]:1.
  Stores 1 bytes from t1 to [a0+8] +0xc (`sb` at 0x100a88a4) with value [[a0+8]+15]:1.
  Stores 1 bytes from t0 to [a0+8] +0xf (`sb` at 0x100a88a8) with value [[a0+8]+12]:1.
  Stores 1 bytes from a7 to [a0+8] +0xd (`sb` at 0x100a88ac) with value [[a0+8]+14]:1.
  Stores 1 bytes from a6 to [a0+8] +0xe (`sb` at 0x100a88b0) with value [[a0+8]+13]:1.
  Stores 1 bytes from a5 to [a0+8] +0x10 (`sb` at 0x100a88b4) with value [[a0+8]+19]:1.
  Stores 1 bytes from a4 to [a0+8] +0x13 (`sb` at 0x100a88b8) with value [[a0+8]+16]:1.
  Stores 1 bytes from a1 to [a0+8] +0x4 (`sb` at 0x100a88bc) with value [[a0+8]+7]:1.
  Stores 1 bytes from a3 to [a0+8] +0x11 (`sb` at 0x100a88c4) with value [[a0+8]+18]:1.
  Stores 1 bytes from a1 to [a0+8] +0x12 (`sb` at 0x100a88cc) with value [[a0+8]+17]:1.
  Calls `ProcSGIvcStoreGammaColors8 [0x102087e0]` via direct with a0=a0 at entry (arg0), a1=[[a0+8]+17]:1, a2=[a0+8], a3=[[a0+8]+18]:1, a4=[[a0+8]+16]:1, a5=[[a0+8]+19]:1, a6=[[a0+8]+13]:1, a7=[[a0+8]+14]:1 (`j` at 0x100a88c8).
  At `beq` at 0x100a883c (target 0x100a884c), taken when at(=[a0+72]) >= 0x5 (unsigned) and falls through when at(=[a0+72]) < 0x5 (unsigned).
  Returns v0 = 0x10 (`jr` at 0x100a8844).

- `AccessMapWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100a92d0 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100a92d0-0x100a93b4 (228 bytes).
  Stores 4 bytes from a1 to a0 (arg0 at entry) +0x18 (`sw` at 0x100a9358).
  Calls `SecurityLookupWindow [0x1006ce40]` via direct with a0=[[a0+8]+4], a1=a0 at entry (arg0), a2=0x0, a3=a3 at entry (arg3) (`jal` at 0x100a9328).
  Calls `CheckWindowAccess [0x1018ed00]` via direct with a0=0x1, a1=a0 at entry (arg0), a2=ret(SecurityLookupWindow), a3=0x0 (`jal` at 0x100a9364).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x100a93a0).
  At `beq` at 0x100a92f4 (target 0x100a9318), taken when v1(=[a0+72]) == a1(=0x2) and falls through when v1(=[a0+72]) != a1(=0x2).
  At `bne` at 0x100a9330 (target 0x100a935c), taken when v0(=ret(SecurityLookupWindow)) != 0 and falls through when v0(=ret(SecurityLookupWindow)) == 0.
  At `bne` at 0x100a936c (target 0x100a937c), taken when v0(=ret(CheckWindowAccess)) != 0 and falls through when v0(=ret(CheckWindowAccess)) == 0.
  Returns v0 = 0x10 (`jr` at 0x100a9300).
  Returns v0 = ? (`jr` at 0x100a9310).
  Returns v0 = 0x3; f0 = ret(SecurityLookupWindow) (`jr` at 0x100a9354).

- `RecordSanityCheckRegisterClients..IJG` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100aa7c0 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100aa7c0-0x100aaae8 (808 bytes).
  Stores 4 bytes from a1 to a1 (arg1 at entry) +0x18 (`sw` at 0x100aa808) with value [a2+8]:1.
  Stores 4 bytes from a7 to a1 (arg1 at entry) +0x18 (`sw` at 0x100aaa48).
  Stores 4 bytes from a7 to a1 (arg1 at entry) +0x18 (`sw` at 0x100aaa58).
  Stores 4 bytes from t9 to a1 (arg1 at entry) +0x18 (`sw` at 0x100aaa6c).
  Stores 4 bytes from t2 to a1 (arg1 at entry) +0x18 (`sw` at 0x100aaa7c).
  Stores 4 bytes from a7 to a1 (arg1 at entry) +0x18 (`sw` at 0x100aaa94).
  Stores 4 bytes from a7 to a1 (arg1 at entry) +0x18 (`sw` at 0x100aaaa0).
  Stores 4 bytes from a7 to a1 (arg1 at entry) +0x18 (`sw` at 0x100aaab0).
  Stores 4 bytes from a7 to a1 (arg1 at entry) +0x18 (`sw` at 0x100aaabc).
  Stores 4 bytes from t8 to a1 (arg1 at entry) +0x18 (`sw` at 0x100aaac8).
  Stores 4 bytes from a5 to a1 (arg1 at entry) +0x18 (`sw` at 0x100aaad8).
  Stores 4 bytes from a6 to a1 (arg1 at entry) +0x18 (`sw` at 0x100aaae4).
  Calls `RecordSanityCheckClientSpecifiers..FJG [0x10178010]` via direct with a0=a2+20, a1=[a2+12], a2=?, a3=a3 at entry (arg3), a5=-0x8, a6=a1 at entry (arg1), a7=[a2+12] (`jal` at 0x100aa840).
  At `bne` at 0x100aa7f4 (target 0x100aa814), taken when at(?) != v0(=([a1+72] << 0x2)-20) and falls through when at(?) == v0(=([a1+72] << 0x2)-20).
  At `beq` at 0x100aa800 (target 0x100aa820), taken when (a1(=[a2+8]:1) & a5(=-0x8)) == 0 and falls through when (a1(=[a2+8]:1) & a5(=-0x8)) != 0.
  At `beq` at 0x100aa828 (target 0x100aaa2c), taken when v0(=[a0+4]) == 0 and falls through when v0(=[a0+4]) != 0.
  At `beq` at 0x100aa84c (target 0x100aa85c), taken when v0(=ret(RecordSanityCheckClientSpecifiers..FJG)) == 0 and falls through when v0(=ret(RecordSanityCheckClientSpecifiers..FJG)) != 0.
  At `beq` at 0x100aa878 (target 0x100aaa80), taken when a0(=[a2+16]) == 0 and falls through when a0(=[a2+16]) != 0.
  At `bne` at 0x100aa890 (target 0x100aaa70), taken when a0(?) != 0 and falls through when a0(?) == 0.
  At `bne` at 0x100aa898 (target 0x100aaa70), taken when at(?) != 0 and falls through when at(?) == 0.
  At `bne` at 0x100aa8a0 (target 0x100aaa70), taken when a7(?) != 0 and falls through when a7(?) == 0.
  At `bne` at 0x100aa8a8 (target 0x100aaac0), taken when t1(?) != 0 and falls through when t1(?) == 0.
  At `beq` at 0x100aa8b0 (target 0x100aa8c0), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `bne` at 0x100aa8b8 (target 0x100aaacc), taken when t3(=0x1) != a5(?) and falls through when t3(=0x1) == a5(?).
  At `beq` at 0x100aa8c0 (target 0x100aa8d0), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `bne` at 0x100aa8c8 (target 0x100aaadc), taken when t3(=0x1) != a6(?) and falls through when t3(=0x1) == a6(?).
  At `beq` at 0x100aa8d0 (target 0x100aaa80), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `bne` at 0x100aa8fc (target 0x100aaa88), taken when a3(?) < a7(?) (signed) and falls through when a3(?) >= a7(?) (signed).
  At `bne` at 0x100aa910 (target 0x100aaa98), taken when a4(?) < a7(?) (signed) and falls through when a4(?) >= a7(?) (signed).
  At `beq` at 0x100aa920 (target 0x100aa9fc), taken when a7(?) == 0 and falls through when a7(?) != 0.
  At `bne` at 0x100aa928 (target 0x100aaa38), taken when t0(?) != 0 and falls through when t0(?) == 0.
  At `bne` at 0x100aa938 (target 0x100aaa38), taken when t0(?) < 0x80 (signed) and falls through when t0(?) >= 0x80 (signed).
  At `bne` at 0x100aa940 (target 0x100aaa38), taken when t0(?) != 0 and falls through when t0(?) == 0.
  At `bne` at 0x100aa954 (target 0x100aaaa4), taken when at(?) < a7(?) (signed) and falls through when at(?) >= a7(?) (signed).
  At `beq` at 0x100aa964 (target 0x100aaa0c), taken when a7(?) == 0 and falls through when a7(?) != 0.
  At `bne` at 0x100aa96c (target 0x100aaa4c), taken when t0(?) != 0 and falls through when t0(?) == 0.
  At `bne` at 0x100aa97c (target 0x100aaa4c), taken when t0(?) < 0x80 (signed) and falls through when t0(?) >= 0x80 (signed).
  At `bne` at 0x100aa984 (target 0x100aaa4c), taken when t0(?) != 0 and falls through when t0(?) == 0.
  At `bne` at 0x100aa998 (target 0x100aaab4), taken when at(?) < a7(?) (signed) and falls through when at(?) >= a7(?) (signed).
  At `beq` at 0x100aa9b0 (target 0x100aaa1c), taken when t0(?) == 0 and falls through when t0(?) != 0.
  At `bne` at 0x100aa9b8 (target 0x100aaa5c), taken when a7(?) != 0 and falls through when a7(?) == 0.
  At `bne` at 0x100aa9c0 (target 0x100aaa60), taken when t2(?) != 0 and falls through when t2(?) == 0.
  At `bne` at 0x100aa9c8 (target 0x100aaa60), taken when t0(?) != 0 and falls through when t0(?) == 0.
  At `bne` at 0x100aa9e4 (target 0x100aa890), taken when t2(?) != 0 and falls through when t2(?) == 0.
  At `bne` at 0x100aa9ec (target 0x100aa890), taken when t0(?) != 0 and falls through when t0(?) == 0.
  At `bne` at 0x100aa9fc (target 0x100aa928), taken when t2(?) != 0 and falls through when t2(?) == 0.
  At `bne` at 0x100aaa0c (target 0x100aa96c), taken when t2(?) != 0 and falls through when t2(?) == 0.
  At `bne` at 0x100aaa1c (target 0x100aa9b8), taken when t2(?) != 0 and falls through when t2(?) == 0.
  Returns v0 = one of 0x0, 0x2 (`jr` at 0x100aa80c).
  Returns v0 = 0x10 (`jr` at 0x100aa818).
  Returns v0 = ret(RecordSanityCheckClientSpecifiers..FJG); f0 = ret(RecordSanityCheckClientSpecifiers..FJG) (`jr` at 0x100aa854).
  Returns v0 = 0x2; f0 = ret(RecordSanityCheckClientSpecifiers..FJG) (`jr` at 0x100aaa44).
- `ProcCreateImageBuffers..AKC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100aae40 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100aae40-0x100ab718 (2264 bytes).
  Stores 4 bytes from a3 to a0 (arg0 at entry) +0x18 (`sw` at 0x100aaec0) with value [[a0+8]+8]:1.
  Stores 4 bytes from a3 to a0 (arg0 at entry) +0x18 (`sw` at 0x100aaf2c).
  Stores 4 bytes from a4 to a0 (arg0 at entry) +0x18 (`sw` at 0x100ab010) with value [[a0+8]+9]:1.
  Stores 4 bytes from t0 to ? (base unknown) (`sw` at 0x100ab190) with value [[sym(WindowTable)]].
  Stores 4 bytes from a7 to ? (base unknown) (`sw` at 0x100ab1a0) with value [[[sym(WindowTable)]]+4].
  Stores 4 bytes from a1 to ? (base unknown) (`sw` at 0x100ab290).
  Stores 4 bytes from s8 to ? (base unknown) (`sw` at 0x100ab2a4).
  Stores 4 bytes from t9 to [[sym(clients)]] +0x30 (`sw` at 0x100ab310) with value [[[sym(WindowTable)]]+4].
  Stores 4 bytes from t8 to [[sym(clients)]] +0x2c (`sw` at 0x100ab318) with value [[sym(WindowTable)]].
  Stores 4 bytes from s0 to table(0x102c71c0) +0x0 (`sw` at 0x100ab3a4).
  Stores 4 bytes from s0 to abs 0x102c71b8 (Lfree..4) (`sw` at 0x100ab3a8).
  Stores 4 bytes from a4 to abs 0x102c7240 (freeidx..3) (`sw` at 0x100ab3b8).
  Stores 4 bytes from t3 to ? (base unknown) (`sw` at 0x100ab444) with value [[[sym(WindowTable)]]+4].
  Stores 4 bytes from t2 to ? (base unknown) (`sw` at 0x100ab44c) with value [[sym(WindowTable)]].
  Stores 4 bytes from ra to ? (base unknown) (`sw` at 0x100ab478) with value [[[sym(WindowTable)]]+4].
  Stores 4 bytes from t9 to ? (base unknown) (`sw` at 0x100ab480) with value [[sym(WindowTable)]].
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x100ab4ac) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x100ab4b4) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x100ab4c0) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x100ab4c8) with value 0x0.
  Stores 4 bytes from a7 to ? (base unknown) (`sw` at 0x100ab500) with value [[sym(WindowTable)]].
  Stores 4 bytes from a6 to ? (base unknown) (`sw` at 0x100ab510) with value [[[sym(WindowTable)]]+4].
  Stores 4 bytes from zero to [[sym(clients)]] +0x34 (`sw` at 0x100ab534) with value 0x0.
  Stores 4 bytes from zero to [[sym(clients)]] +0x38 (`sw` at 0x100ab53c) with value 0x0.
  Calls `SecurityLookupWindow [0x1006ce40]` via direct with a0=[[a0+8]+4], a1=a0 at entry (arg0), a2=0x0, a3=a3 at entry (arg3) (`jal` at 0x100aae7c).
  Calls `SecurityLookupIDByClass [0x10236190]` via direct with a0=0x0, a1=?, a2=-0x1, a3=0x0, a5=[sym(panoramiXDisabled)] (`jal` at 0x100aaef4).
  Calls `CreateImageBuffers [0x10090b70]` via direct with a0=?, a1=?, a2=[a0+8]+12, a3=[[a0+8]+8]:1, a4=[[a0+8]+9]:1 (`jal` at 0x100ab0d8).
  Calls `dbcMakeDoubleBuffered [0x1027abd0]` via direct with a0=?, a1=[[a0+8]+8]:1, a2=?, a3=? (`jal` at 0x100ab108).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x100ab344).
  Calls `__libc_lockmalloc` via got with a0=?, a1=?, a2=?, a3=[0x102c7240] (`jalr` at 0x100ab360).
  Calls `realfree..NL [0x1025db70]` via direct with a0=entry(0x102c71c0), a1=table(0x102c5d40), a2=([0x102c7240] << 0x2), a3=[0x102c7240] (`jal` at 0x100ab384).
  Calls `__libc_unlockmalloc` via got with a0=?, a1=table(0x102c5d40), a2=([0x102c7240] << 0x2), a3=[0x102c7240], a5=[sym(__us_rsthread_malloc)] (`jalr` at 0x100ab3c0).
  Calls `(unknown callee)` via register with a0=?, a1=sp-208, a2=?, a3=[0x102c60fc], a6=[sym(clients)], a7=0x4 (`jalr` at 0x100ab42c).
  Calls `FatalError [0x10094f20]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x100ab51c).
  Calls `WriteToClient [0x100b3500]` via direct with a0=a0 at entry (arg0), a1=0x20, a2=sp-192, a3=?, a4=0x1 (`jal` at 0x100ab6d4).
  At `bne` at 0x100aae58 (target 0x100aaed8), taken when at(=[a0+72]) < 0x3 (unsigned) and falls through when at(=[a0+72]) >= 0x3 (unsigned).
  At `beq` at 0x100aae68 (target 0x100ab024), taken when v0(=[[a0+8]+2]:2-3) == 0 and falls through when v0(=[[a0+8]+2]:2-3) != 0.
  At `beq` at 0x100aae84 (target 0x100ab0a4), taken when v0(=ret(SecurityLookupWindow)) == 0 and falls through when v0(=ret(SecurityLookupWindow)) != 0.
  At `beq` at 0x100aae94 (target 0x100ab0f4), taken when a0(=0x2) == v1(=[ret(SecurityLookupWindow)+1]:1) and falls through when a0(=0x2) != v1(=[ret(SecurityLookupWindow)+1]:1).
  At `beq` at 0x100aaea0 (target 0x100aafe4), taken when a3(=[[a0+8]+8]:1) == 0 and falls through when a3(=[[a0+8]+8]:1) != 0.
  At `beq` at 0x100aaea8 (target 0x100aafe4), taken when a3(=[[a0+8]+8]:1) == a1(=0x1) and falls through when a3(=[[a0+8]+8]:1) != a1(=0x1).
  At `beq` at 0x100aaeb0 (target 0x100aafe4), taken when a0(=0x2) == a3(=[[a0+8]+8]:1) and falls through when a0(=0x2) != a3(=[[a0+8]+8]:1).
  At `beq` at 0x100aaeb8 (target 0x100aafe4), taken when a3(=[[a0+8]+8]:1) == a2(=0x3) and falls through when a3(=[[a0+8]+8]:1) != a2(=0x3).
  At `beq` at 0x100aaefc (target 0x100aaf6c), taken when v0(=ret(SecurityLookupIDByClass)) == 0 and falls through when v0(=ret(SecurityLookupIDByClass)) != 0.
  At `bne` at 0x100aaf64 (target 0x100aaeec), taken when a1(?) < a4(?) (unsigned) and falls through when a1(?) >= a4(?) (unsigned).
  At `beq` at 0x100aaf70 (target 0x100ab0b4), taken when s0(?) == s4(?) and falls through when s0(?) != s4(?).
  At `beq` at 0x100aaf7c (target 0x100aaf98), taken when a5(=[sym(panoramiXDisabled)]) == 0 and falls through when a5(=[sym(panoramiXDisabled)]) != 0.
  At `bne` at 0x100aaf88 (target 0x100aaf10), taken when a3(=[a0+4]) != a6(?) and falls through when a3(=[a0+4]) == a6(?).
  At `beq` at 0x100aafa4 (target 0x100ab014), taken when a6(=[a0]) == 0 and falls through when a6(=[a0]) != 0.
  At `bne` at 0x100aafb4 (target 0x100aaf84), taken when a1(?) < t0(=(0x40000000 | [a0+4])) (unsigned) and falls through when a1(?) >= t0(=(0x40000000 | [a0+4])) (unsigned).
  At `bne` at 0x100aafd4 (target 0x100aaf88), taken when t1(?) < a1(?) (unsigned) and falls through when t1(?) >= a1(?) (unsigned).
  At `beq` at 0x100aafe8 (target 0x100ab038), taken when a4(=[[a0+8]+9]:1) == 0 and falls through when a4(=[[a0+8]+9]:1) != 0.
  At `beq` at 0x100aaff0 (target 0x100ab03c), taken when a4(=[[a0+8]+9]:1) == t2(=0x1) and falls through when a4(=[[a0+8]+9]:1) != t2(=0x1).
  At `beq` at 0x100aaff8 (target 0x100ab03c), taken when a0(=0x2) == a4(=[[a0+8]+9]:1) and falls through when a0(=0x2) != a4(=[[a0+8]+9]:1).
  At `beq` at 0x100ab014 (target 0x100aafbc), taken when a7(?) == 0 and falls through when a7(?) != 0.
  At `beq` at 0x100ab054 (target 0x100ab060), taken when t8(?) >= a0(=0x2) (signed) and falls through when t8(?) < a0(=0x2) (signed).
  At `blez` at 0x100ab064 (target 0x100ab0c8), taken when a1(?) <= 0 (signed) and falls through when a1(?) > 0 (signed).
  At `beq` at 0x100ab0e0 (target 0x100ab104), taken when v0(=ret(CreateImageBuffers)) == 0 and falls through when v0(=ret(CreateImageBuffers)) != 0.
  At `beq` at 0x100ab118 (target 0x100ab63c), taken when v0(=ret(dbcMakeDoubleBuffered)) == 0 and falls through when v0(=ret(dbcMakeDoubleBuffered)) != 0.
  At `blez` at 0x100ab128 (target 0x100ab620), taken when ra(?) <= 0 (signed) and falls through when ra(?) > 0 (signed).
  At `beq` at 0x100ab178 (target 0x100ab1a4), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `bne` at 0x100ab184 (target 0x100ab1a4), taken when a5(?) != s3(?) and falls through when a5(?) == s3(?).
  At `beq` at 0x100ab1a4 (target 0x100ab514), taken when a3(=one of 0x0, 0x1) == 0 and falls through when a3(=one of 0x0, 0x1) != 0.
  At `beq` at 0x100ab1c4 (target 0x100ab620), taken when t1(?) == s4(?) and falls through when t1(?) != s4(?).
  At `beq` at 0x100ab1e8 (target 0x100ab514), taken when a4(?) >= 0x100 (signed) and falls through when a4(?) < 0x100 (signed).
  At `beq` at 0x100ab200 (target 0x100ab514), taken when t8(?) == 0 and falls through when t8(?) != 0.
  At `beq` at 0x100ab20c (target 0x100ab540), taken when a1(?) == t8(=0x6) and falls through when a1(?) != t8(=0x6).
  At `beq` at 0x100ab214 (target 0x100ab56c), taken when a1(?) == t9(=0x7) and falls through when a1(?) != t9(=0x7).
  At `beq` at 0x100ab21c (target 0x100ab598), taken when a1(?) == ra(=0x8) and falls through when a1(?) != ra(=0x8).
  At `beq` at 0x100ab224 (target 0x100ab5c4), taken when a1(?) == at(=0x9) and falls through when a1(?) != at(=0x9).
  At `beq` at 0x100ab22c (target 0x100ab5e4), taken when a1(?) == v0(=0xa) and falls through when a1(?) != v0(=0xa).
  At `beq` at 0x100ab234 (target 0x100ab604), taken when a1(?) == v1(=0xb) and falls through when a1(?) != v1(=0xb).
  At `bne` at 0x100ab254 (target 0x100ab6f4), taken when s0(?) != 0 and falls through when s0(?) == 0.
  At `beq` at 0x100ab278 (target 0x100ab160), taken when s0(?) == 0 and falls through when s0(?) != 0.
  At `bne` at 0x100ab288 (target 0x100ab270), taken when t8(?) != s3(?) and falls through when t8(?) == s3(?).
  At `beq` at 0x100ab2a0 (target 0x100ab324), taken when (s7(=0xffffffff80000000) & s1(?)) == 0 and falls through when (s7(=0xffffffff80000000) & s1(?)) != 0.
  At `beq` at 0x100ab2c8 (target 0x100ab324), taken when ra(?) == 0 and falls through when ra(?) != 0.
  At `blez` at 0x100ab2d8 (target 0x100ab324), taken when a3(=[0x102c5d70]) <= 0 (signed) and falls through when a3(=[0x102c5d70]) > 0 (signed).
  At `beq` at 0x100ab2e8 (target 0x100ab31c), taken when t3(?) == 0 and falls through when t3(?) != 0.
  At `beq` at 0x100ab2f4 (target 0x100ab31c), taken when a3(=[[sym(clients)]]) == 0 and falls through when a3(=[[sym(clients)]]) != 0.
  At `bne` at 0x100ab300 (target 0x100ab52c), taken when t3(=[[[sym(clients)]]+48]) != a6(?) and falls through when t3(=[[[sym(clients)]]+48]) == a6(?).
  At `bnel` at 0x100ab31c (target 0x100ab45c), taken when t0(?) != 0 and falls through when t0(?) == 0.
  At `beq` at 0x100ab324 (target 0x100ab34c), taken when s1(?) == 0 and falls through when s1(?) != 0.
  At `beq` at 0x100ab354 (target 0x100ab36c), taken when at(=[sym(__us_rsthread_malloc)]) == 0 and falls through when at(=[sym(__us_rsthread_malloc)]) != 0.
  At `beq` at 0x100ab37c (target 0x100ab3a0), taken when a0(=entry(0x102c71c0)) == 0 and falls through when a0(=entry(0x102c71c0)) != 0.
  At `beq` at 0x100ab3b4 (target 0x100ab3c8), taken when a5(=[sym(__us_rsthread_malloc)]) == 0 and falls through when a5(=[sym(__us_rsthread_malloc)]) != 0.
  At `beq` at 0x100ab3e0 (target 0x100ab3ec), taken when a5(?) == s8(?) and falls through when a5(?) != s8(?).
  At `beq` at 0x100ab3f0 (target 0x100ab434), taken when a3(=[0x102c60fc]) == 0 and falls through when a3(=[0x102c60fc]) != 0.
  At `beq` at 0x100ab400 (target 0x100ab434), taken when a7(?) >= a1(?) (unsigned) and falls through when a7(?) < a1(?) (unsigned).
  At `beq` at 0x100ab41c (target 0x100ab434), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `beq` at 0x100ab450 (target 0x100ab324), taken when a4(?) == a7(=([sym(clients)] + ([0x102c5d70] << 0x2))) and falls through when a4(?) != a7(=([sym(clients)] + ([0x102c5d70] << 0x2))).
  At `beq` at 0x100ab45c (target 0x100ab484), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `bne` at 0x100ab468 (target 0x100ab4a4), taken when t8(?) != a6(?) and falls through when t8(?) == a6(?).
  At `beq` at 0x100ab488 (target 0x100ab450), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `bne` at 0x100ab494 (target 0x100ab4b8), taken when at(?) != a6(?) and falls through when at(?) == a6(?).
  At `bne` at 0x100ab4a4 (target 0x100ab484), taken when t0(?) != a6(?) and falls through when t0(?) == a6(?).
  At `bne` at 0x100ab4b8 (target 0x100ab450), taken when t0(?) != a6(?) and falls through when t0(?) == a6(?).
  At `beq` at 0x100ab4e0 (target 0x100ab518), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `bne` at 0x100ab4ec (target 0x100ab518), taken when a5(?) != s3(?) and falls through when a5(?) == s3(?).
  At `bne` at 0x100ab52c (target 0x100ab31c), taken when a1(=[[[sym(clients)]]+56]) != a6(?) and falls through when a1(=[[[sym(clients)]]+56]) == a6(?).
  At `beq` at 0x100ab65c (target 0x100ab6a4), taken when a2(=[a0+16]) == 0 and falls through when a2(=[a0+16]) != 0.
  At `bne` at 0x100ab6a4 (target 0x100ab6cc), taken when t1(=[sym(panoramiXDisabled)]) != 0 and falls through when t1(=[sym(panoramiXDisabled)]) == 0.
  At `beq` at 0x100ab6b4 (target 0x100ab6cc), taken when t2(=[sym(panoramiXMode)]) == 0 and falls through when t2(=[sym(panoramiXMode)]) != 0.
  At `beq` at 0x100ab6c4 (target 0x100ab6dc), taken when t3(=[sym(panoramiXScreen0)]) == 0 and falls through when t3(=[sym(panoramiXScreen0)]) != 0.
  Returns v0 = 0x2; f0 = ret(SecurityLookupWindow) (`jr` at 0x100aaed0).
  Returns v0 = 0x10 (`jr` at 0x100aaee4).
  Returns v0 = ? (`jr` at 0x100aaf44).
  Returns v0 = 0x10 (`jr` at 0x100ab030).
  The instructions from 0x100ab264 to 0x100ab26c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x100ab43c to 0x100ab43c are not reached by any path from the entry, and their branches are not listed.

- `PanoramiXSetWindowPntrs..HB` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100aeb00 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100aeb00-0x100aec30 (304 bytes).
  Stores 4 bytes from v0 to ? (base unknown) (`sw` at 0x100aebc4) with value ret(SecurityLookupIDByType).
  Calls `memcpy` via got with a0=0x102c603c, a1=[sym(WindowTable)], a2=([0x102c5f1c] << 0x2), a3=a3 at entry (arg3) (`jalr` at 0x100aeb2c).
  Calls `SecurityLookupIDByType [0x100d6140]` via direct with a0=0x0, a1=[a0+4], a2=[sym(XRT_WINDOW)], a3=0x0 (`jal` at 0x100aeb68).
  Calls `SecurityLookupIDByType [0x100d6140]` via direct with a0=0x0, a1=?, a2=0xffffffffc0000001, a3=0x0 (`jal` at 0x100aebbc).
  At `bne` at 0x100aeb18 (target 0x100aeb50), taken when at(=[[sym(WindowTable)]]) != a0 and falls through when at(=[[sym(WindowTable)]]) == a0.
  At `beq` at 0x100aeb74 (target 0x100aec1c), taken when v0(=ret(SecurityLookupIDByType)) == 0 and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  At `blez` at 0x100aeb80 (target 0x100aeb38), taken when a0(=[0x102c5f1c]) <= 0 (signed) and falls through when a0(=[0x102c5f1c]) > 0 (signed).
  At `beq` at 0x100aebc8 (target 0x100aebf8), taken when v0(=ret(SecurityLookupIDByType)) == 0 and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  At `bne` at 0x100aebe0 (target 0x100aebb0), taken when s0(?) < a3(=[0x102c5f1c]) (signed) and falls through when s0(?) >= a3(=[0x102c5f1c]) (signed).
  Returns v0 = 0x1 (`jr` at 0x100aeb48).
  Returns v0 = 0x0; f0 = ret(SecurityLookupIDByType) (`jr` at 0x100aec14).
  Returns v0 = 0x0; f0 = ret(SecurityLookupIDByType) (`jr` at 0x100aec28).

- `AccessDestroySubwindows` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100aeea0 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100aeea0-0x100aef84 (228 bytes).
  Stores 4 bytes from a1 to a0 (arg0 at entry) +0x18 (`sw` at 0x100aef28).
  Calls `SecurityLookupWindow [0x1006ce40]` via direct with a0=[[a0+8]+4], a1=a0 at entry (arg0), a2=0x0, a3=a3 at entry (arg3) (`jal` at 0x100aeef8).
  Calls `CheckWindowAccess [0x1018ed00]` via direct with a0=0x4, a1=a0 at entry (arg0), a2=ret(SecurityLookupWindow), a3=0x0 (`jal` at 0x100aef34).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x100aef70).
  At `beq` at 0x100aeec4 (target 0x100aeee8), taken when v1(=[a0+72]) == a1(=0x2) and falls through when v1(=[a0+72]) != a1(=0x2).
  At `bne` at 0x100aef00 (target 0x100aef2c), taken when v0(=ret(SecurityLookupWindow)) != 0 and falls through when v0(=ret(SecurityLookupWindow)) == 0.
  At `bne` at 0x100aef3c (target 0x100aef50), taken when v0(=ret(CheckWindowAccess)) != 0 and falls through when v0(=ret(CheckWindowAccess)) == 0.
  Returns v0 = 0x10 (`jr` at 0x100aeed0).
  Returns v0 = ? (`jr` at 0x100aeee0).
  Returns v0 = 0x3; f0 = ret(SecurityLookupWindow) (`jr` at 0x100aef24).

- `SProcXineramaReparentWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100b6080 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100b6080-0x100b6144 (196 bytes).
  Stores 1 bytes from a2 to [a0+8] +0x3 (`sb` at 0x100b608c) with value [[a0+8]+2]:1.
  Stores 1 bytes from a4 to [a0+8] +0x2 (`sb` at 0x100b6090) with value [[a0+8]+3]:1.
  Stores 1 bytes from ra to [a0+8] +0xf (`sb` at 0x100b60f4) with value [[a0+8]+14]:1.
  Stores 1 bytes from at to [a0+8] +0xe (`sb` at 0x100b60f8) with value [[a0+8]+15]:1.
  Stores 1 bytes from v0 to [a0+8] +0xd (`sb` at 0x100b60fc) with value [[a0+8]+12]:1.
  Stores 1 bytes from v1 to [a0+8] +0xc (`sb` at 0x100b6100) with value [[a0+8]+13]:1.
  Stores 1 bytes from a1 to [a0+8] +0xa (`sb` at 0x100b6104) with value [[a0+8]+9]:1.
  Stores 1 bytes from a2 to [a0+8] +0x9 (`sb` at 0x100b6108) with value [[a0+8]+10]:1.
  Stores 1 bytes from a4 to [a0+8] +0xb (`sb` at 0x100b610c) with value [[a0+8]+8]:1.
  Stores 1 bytes from a5 to [a0+8] +0x8 (`sb` at 0x100b6110) with value [[a0+8]+11]:1.
  Stores 1 bytes from a6 to [a0+8] +0x6 (`sb` at 0x100b6114) with value [[a0+8]+5]:1.
  Stores 1 bytes from a7 to [a0+8] +0x5 (`sb` at 0x100b6118) with value [[a0+8]+6]:1.
  Stores 1 bytes from t0 to [a0+8] +0x7 (`sb` at 0x100b611c) with value [[a0+8]+4]:1.
  Stores 1 bytes from t1 to [a0+8] +0x4 (`sb` at 0x100b6124) with value [[a0+8]+7]:1.
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[[a0+8]+9]:1, a2=[[a0+8]+10]:1, a3=[a0+8], a4=[[a0+8]+8]:1, a5=[[a0+8]+11]:1, a6=[[a0+8]+5]:1, a7=[[a0+8]+6]:1 (`jalr` at 0x100b612c).
  At `beq` at 0x100b60ac (target 0x100b60c0), taken when v1(=[a0+72]) == a1(=0x4) and falls through when v1(=[a0+72]) != a1(=0x4).
  Returns v0 = 0x10 (`jr` at 0x100b60b8).
  Returns v0 = ret(?); f0 = ret(?) (`jr` at 0x100b613c).

- `ProcDestroyWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100b69f0 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100b69f0-0x100b6a94 (164 bytes).
  Calls `SecurityLookupWindow [0x1006ce40]` via direct with a0=[[a0+8]+4], a1=a0 at entry (arg0), a2=0x4, a3=a3 at entry (arg3) (`jal` at 0x100b6a38).
  Calls `FreeResource [0x100bc480]` via direct with a0=?, a1=0x0, a2=?, a3=? (`jal` at 0x100b6a74).
  At `beq` at 0x100b6a14 (target 0x100b6a28), taken when v1(=[a0+72]) == a1(=0x2) and falls through when v1(=[a0+72]) != a1(=0x2).
  At `beq` at 0x100b6a40 (target 0x100b6a84), taken when v0(=ret(SecurityLookupWindow)) == 0 and falls through when v0(=ret(SecurityLookupWindow)) != 0.
  At `bne` at 0x100b6a4c (target 0x100b6a68), taken when a1(=[ret(SecurityLookupWindow)+24]) != 0 and falls through when a1(=[ret(SecurityLookupWindow)+24]) == 0.
  Returns v0 = 0x10 (`jr` at 0x100b6a20).
  Returns v0 = [a0+40] (`jr` at 0x100b6a60).
  Returns v0 = 0x3; f0 = ret(SecurityLookupWindow) (`jr` at 0x100b6a8c).

- `ProcRecordRegisterClients..OJG` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100b8390 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100b8390-0x100b8410 (128 bytes).
  Stores 4 bytes from a2 to a0 (arg0 at entry) +0x18 (`sw` at 0x100b83f8).
  Calls `SecurityLookupIDByType [0x100d6140]` via direct with a0=0x0, a1=[[a0+8]+4], a2=[0x102cc0b0], a3=0x0 (`jal` at 0x100b83d0).
  Calls `RecordRegisterClients..LJG [0x1022acf0]` via direct with a0=ret(SecurityLookupIDByType), a1=a0 at entry (arg0), a2=?, a3=? (`j` at 0x100b8408).
  At `beq` at 0x100b83a8 (target 0x100b83b8), taken when at(=[a0+72]) >= 0x5 (unsigned) and falls through when at(=[a0+72]) < 0x5 (unsigned).
  At `bne` at 0x100b83d8 (target 0x100b83fc), taken when v0(=ret(SecurityLookupIDByType)) != 0 and falls through when v0(=ret(SecurityLookupIDByType)) == 0.
  Returns v0 = 0x10 (`jr` at 0x100b83b0).
  Returns v0 = [0x102cc0b4]; f0 = ret(SecurityLookupIDByType) (`jr` at 0x100b83f4).

- `SetupWildMatch..EO` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100b9a70 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100b9a70-0x100b9cd8 (616 bytes).
  Stores 4 bytes from at to a4 (arg4 at entry) +0x0 (`sw` at 0x100b9b3c) with value [a1+6]:2.
  Stores 4 bytes from s0 to a2 (arg2 at entry) +0x0 (`sw` at 0x100b9bd8).
  Stores 4 bytes from s1 to a3 (arg3 at entry) +0x0 (`sw` at 0x100b9be8).
  Stores 4 bytes from at to a4 (arg4 at entry) +0x0 (`sw` at 0x100b9c28) with value -0x1.
  Stores 4 bytes from zero to a3 (arg3 at entry) +0x0 (`sw` at 0x100b9c9c) with value 0x0.
  Stores 4 bytes from t9 to a2 (arg2 at entry) +0x0 (`sw` at 0x100b9ca8) with value 0x1.
  Stores 4 bytes from t3 to a4 (arg4 at entry) +0x0 (`sw` at 0x100b9cb0) with value -0x1.
  Stores 4 bytes from s1 to a3 (arg3 at entry) +0x0 (`sw` at 0x100b9cc0) with value [a0].
  Stores 4 bytes from zero to a2 (arg2 at entry) +0x0 (`sw` at 0x100b9ccc) with value 0x0.
  Calls `strncmp` via got with a0=[a1], a1=?, a2=?, a3=? (`jalr` at 0x100b9b98).
  Calls `strcmp` via got with a0=[a1], a1=?, a2=?, a3=? (`jalr` at 0x100b9c70).
  At `beq` at 0x100b9ab8 (target 0x100b9c1c), taken when v0(=[[a1]]:1) == 0 and falls through when v0(=[[a1]]:1) != 0.
  At `beq` at 0x100b9ad4 (target 0x100b9b30), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0x100b9adc (target 0x100b9b20), taken when t0(=0x2a) == v0(?) and falls through when t0(=0x2a) != v0(?).
  At `beq` at 0x100b9ae4 (target 0x100b9b20), taken when t1(=0x3f) == v0(?) and falls through when t1(=0x3f) != v0(?).
  At `beq` at 0x100b9af0 (target 0x100b9b30), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0x100b9af8 (target 0x100b9b08), taken when t0(=0x2a) == v0(?) and falls through when t0(=0x2a) != v0(?).
  At `bne` at 0x100b9b00 (target 0x100b9ad0), taken when t1(=0x3f) != v0(?) and falls through when t1(=0x3f) == v0(?).
  At `bne` at 0x100b9b08 (target 0x100b9ad0), taken when t2(?) != 0 and falls through when t2(?) == 0.
  At `bne` at 0x100b9b20 (target 0x100b9aec), taken when t2(?) != 0 and falls through when t2(?) == 0.
  At `beq` at 0x100b9b30 (target 0x100b9cac), taken when t2(?) == 0 and falls through when t2(?) != 0.
  At `beq` at 0x100b9b40 (target 0x100b9cb4), taken when a0(=[a0+12]) == 0 and falls through when a0(=[a0+12]) != 0.
  At `beq` at 0x100b9b48 (target 0x100b9c30), taken when t2(?) == 0 and falls through when t2(?) != 0.
  At `blez` at 0x100b9b50 (target 0x100b9bb8), taken when s1(=[a0]) <= 0 (signed) and falls through when s1(=[a0]) > 0 (signed).
  At `beq` at 0x100b9b68 (target 0x100b9bc0), taken when s0(?) >= s1(?) (signed) and falls through when s0(?) < s1(?) (signed).
  At `beq` at 0x100b9ba0 (target 0x100b9bbc), taken when v0(=ret(strncmp)) == 0 and falls through when v0(=ret(strncmp)) != 0.
  At `bgez` at 0x100b9ba8 (target 0x100b9b60), taken when v0(=ret(strncmp)) >= 0 (signed) and falls through when v0(=ret(strncmp)) < 0 (signed).
  At `beq` at 0x100b9c24 (target 0x100b9cb4), taken when v0(=[a0+12]) == 0 and falls through when v0(=[a0+12]) != 0.
  At `blez` at 0x100b9c30 (target 0x100b9c90), taken when s1(=[a0]) <= 0 (signed) and falls through when s1(=[a0]) > 0 (signed).
  At `beq` at 0x100b9c48 (target 0x100b9c90), taken when s0(?) >= s1(?) (signed) and falls through when s0(?) < s1(?) (signed).
  At `beq` at 0x100b9c78 (target 0x100b9cd0), taken when v0(=ret(strcmp)) == 0 and falls through when v0(=ret(strcmp)) != 0.
  At `bgez` at 0x100b9c80 (target 0x100b9c40), taken when v0(=ret(strcmp)) >= 0 (signed) and falls through when v0(=ret(strcmp)) < 0 (signed).
  Returns v0 = -0x1 (`jr` at 0x100b9bf0).
  Returns v0 = ? (`jr` at 0x100b9c14).
  The instructions from 0x100b9b18 to 0x100b9b1c are not reached by any path from the entry, and their branches are not listed.

- `ProcCirculateWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100b9fb0 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100b9fb0-0x100ba074 (196 bytes).
  Stores 4 bytes from a6 to a0 (arg0 at entry) +0x18 (`sw` at 0x100ba024) with value [[a0+8]+1]:1.
  Calls `SecurityLookupWindow [0x1006ce40]` via direct with a0=[[a0+8]+4], a1=a0 at entry (arg0), a2=0x2, a3=a3 at entry (arg3), a5=[a0+8], a6=[[a0+8]+1]:1, a7=0x1 (`jal` at 0x100ba034).
  Calls `CirculateWindow [0x101610f0]` via direct with a0=ret(SecurityLookupWindow), a1=?, a2=a0 at entry (arg0), a3=?, a5=0x3 (`jal` at 0x100ba05c).
  At `beq` at 0x100b9fcc (target 0x100b9ff0), taken when v1(=[a0+72]) == a1(=0x2) and falls through when v1(=[a0+72]) != a1(=0x2).
  At `beq` at 0x100ba004 (target 0x100ba028), taken when a6(=[[a0+8]+1]:1) == 0 and falls through when a6(=[[a0+8]+1]:1) != 0.
  At `beq` at 0x100ba00c (target 0x100ba028), taken when a6(=[[a0+8]+1]:1) == a7(=0x1) and falls through when a6(=[[a0+8]+1]:1) != a7(=0x1).
  At `bne` at 0x100ba040 (target 0x100ba050), taken when v0(=ret(SecurityLookupWindow)) != 0 and falls through when v0(=ret(SecurityLookupWindow)) == 0.
  Returns v0 = 0x10 (`jr` at 0x100b9fd8).
  Returns v0 = ? (`jr` at 0x100b9fe8).
  Returns v0 = 0x2 (`jr` at 0x100ba020).

- `t1_CopyRegion` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100c0a10 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100c0a10-0x100c0cfc (748 bytes).
  Stores 4 bytes from zero to ret(t1_Allocate) +0x1c (`sw` at 0x100c0a4c) with value 0x0.
  Stores 4 bytes from v0 to ret(t1_Allocate) +0x20 (`sw` at 0x100c0adc) with value ret(t1_Dup).
  Stores 4 bytes from a7 to ? (base unknown) (`sw` at 0x100c0b10) with value ret(t1_Allocate).
  Stores 1 bytes from v0 to ret(t1_Allocate) +0x1 (`sb` at 0x100c0b98) with value 0x80.
  Stores 4 bytes from a0 to ret(t1_Allocate) +0x14 (`sw` at 0x100c0b9c) with value ret(t1_Allocate)+24.
  Stores 2 bytes from s2 to ret(t1_Allocate) +0x12 (`sh` at 0x100c0ba0).
  Stores 2 bytes from s3 to ret(t1_Allocate) +0x10 (`sh` at 0x100c0ba4).
  Stores 2 bytes from s6 to ret(t1_Allocate) +0xe (`sh` at 0x100c0ba8).
  Stores 2 bytes from s7 to ret(t1_Allocate) +0xc (`sh` at 0x100c0bb4).
  Stores 4 bytes from v0 to ret(t1_Allocate) +0x14 (`sw` at 0x100c0bc0).
  Stores 4 bytes from v1 to ? (base unknown) (`sw` at 0x100c0c04).
  Stores 4 bytes from a4 to ? (base unknown) (`sw` at 0x100c0c20).
  Stores 4 bytes from a3 to ? (base unknown) (`sw` at 0x100c0c28).
  Stores 4 bytes from a2 to ? (base unknown) (`sw` at 0x100c0c30).
  Stores 4 bytes from at to ? (base unknown) (`sw` at 0x100c0c40).
  Stores 4 bytes from at to ? (base unknown) (`sw` at 0x100c0c4c).
  Stores 4 bytes from at to ? (base unknown) (`sw` at 0x100c0c54).
  Stores 4 bytes from at to ? (base unknown) (`sw` at 0x100c0c5c).
  Stores 4 bytes from at to ? (base unknown) (`sw` at 0x100c0c6c).
  Stores 4 bytes from at to ? (base unknown) (`sw` at 0x100c0c78).
  Stores 4 bytes from at to ? (base unknown) (`sw` at 0x100c0c80).
  Stores 4 bytes from at to ? (base unknown) (`sw` at 0x100c0c88).
  Stores 4 bytes from at to ? (base unknown) (`sw` at 0x100c0c98).
  Stores 4 bytes from a7 to ret(t1_Allocate) +0x1c (`sw` at 0x100c0cac) with value ret(t1_Allocate).
  Stores 4 bytes from t2 to ? (base unknown) (`sw` at 0x100c0cd0).
  Stores 4 bytes from t1 to ? (base unknown) (`sw` at 0x100c0cd8).
  Stores 4 bytes from t0 to ? (base unknown) (`sw` at 0x100c0ce0).
  Stores 4 bytes from a6 to ? (base unknown) (`sw` at 0x100c0cec).
  Calls `t1_Allocate [0x1011d0f0]` via direct with a0=0x50, a1=a0 at entry (arg0), a2=0x0, a3=a3 at entry (arg3) (`jal` at 0x100c0a30).
  Calls `t1_Dup [0x101565b0]` via direct with a0=[a0+32], a1=?, a2=?, a3=? (`jal` at 0x100c0ad0).
  Calls `t1_Allocate [0x1011d0f0]` via direct with a0=0x18, a1=?, a2=?, a3=? (`jal` at 0x100c0b70).
  Calls `FatalError [0x10094f20]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x100c0cbc).
  At `beq` at 0x100c0a6c (target 0x100c0a94), taken when s0(=[a0+28]) == 0 and falls through when s0(=[a0+28]) != 0.
  At `beq` at 0x100c0a80 (target 0x100c0a94), taken when s3(=[[a0+28]+16]:2) >= s2(=[[a0+28]+18]:2) (signed) and falls through when s3(=[[a0+28]+16]:2) < s2(=[[a0+28]+18]:2) (signed).
  At `beq` at 0x100c0aac (target 0x100c0af0), taken when a0(=[a0+32]) == 0 and falls through when a0(=[a0+32]) != 0.
  At `beq` at 0x100c0b18 (target 0x100c0a94), taken when s0(?) == 0 and falls through when s0(?) != 0.
  At `beq` at 0x100c0b2c (target 0x100c0a94), taken when s3(?) >= s2(?) (signed) and falls through when s3(?) < s2(?) (signed).
  At `beq` at 0x100c0b48 (target 0x100c0cb8), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `beq` at 0x100c0b90 (target 0x100c0b9c), taken when ra(?) == 0 and falls through when ra(?) != 0.
  At `beq` at 0x100c0bb8 (target 0x100c0bc8), taken when s3(?) == s8(?) and falls through when s3(?) != s8(?).
  At `blez` at 0x100c0be0 (target 0x100c0c9c), taken when v0(?) <= 0 (signed) and falls through when v0(?) > 0 (signed).
  At `beq` at 0x100c0be8 (target 0x100c0c08), taken when at(?) == 0 and falls through when at(?) != 0.
  At `bne` at 0x100c0c00 (target 0x100c0bf0), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0x100c0c0c (target 0x100c0c9c), taken when t0(?) == 0 and falls through when t0(?) != 0.
  At `bne` at 0x100c0c14 (target 0x100c0ccc), taken when t2(?) != 0 and falls through when t2(?) == 0.
  At `beq` at 0x100c0c64 (target 0x100c0cb0), taken when a0(?) == v0(?) and falls through when a0(?) != v0(?).
  At `bne` at 0x100c0c90 (target 0x100c0c40), taken when a0(?) != v0(?) and falls through when a0(?) == v0(?).
  At `bne` at 0x100c0ca0 (target 0x100c0b10), taken when a5(=[ret(t1_Allocate)+28]) != 0 and falls through when a5(=[ret(t1_Allocate)+28]) == 0.
  Returns v0 = ret(t1_Allocate); f0 = ret(t1_Dup) (`jr` at 0x100c0ae8).
  Returns v0 = ret(t1_Allocate); f0 = ret(t1_Allocate) (`jr` at 0x100c0b08).

- `FontFileRegisterBitmapSource` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100c1c50 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100c1c50-0x100c1d10 (192 bytes).
  Stores 4 bytes from v0 to abs 0x102c7300 (FontFileBitmapSources) (`sw` at 0x100c1cc8) with value ret(Xrealloc).
  Stores 4 bytes from a3 to abs 0x102c7304 (FontFileBitmapSources+4) (`sw` at 0x100c1ccc).
  Stores 4 bytes from a5 to abs 0x102c7308 (FontFileBitmapSources+8) (`sw` at 0x100c1cd8) with value [0x102c7308]+1.
  Stores 4 bytes from s0 to ? (base unknown) (`sw` at 0x100c1ce4) with value a0.
  Calls `Xrealloc [0x101b9470]` via direct with a0=[0x102c7300], a1=([0x102c7304] << 0x2)+16, a2=[0x102c7304]+4, a3=?, a5=[0x102c7308], a6=[0x102c7300], a7=[0x102c7304] (`jal` at 0x100c1cac).
  At `blez` at 0x100c1c68 (target 0x100c1c90), taken when a5(=[0x102c7308]) <= 0 (signed) and falls through when a5(=[0x102c7308]) > 0 (signed).
  At `beq` at 0x100c1c80 (target 0x100c1cf4), taken when t0(?) == s0(=a0) and falls through when t0(?) != s0(=a0).
  At `bnel` at 0x100c1c88 (target 0x100c1c80), taken when a3(?) != a4(=(([0x102c7308] << 0x2) + [0x102c7300])) and falls through when a3(?) == a4(=(([0x102c7308] << 0x2) + [0x102c7300])).
  At `bne` at 0x100c1c90 (target 0x100c1cd0), taken when a7(=[0x102c7304]) != a5(=[0x102c7308]) and falls through when a7(=[0x102c7304]) == a5(=[0x102c7308]).
  At `beq` at 0x100c1cbc (target 0x100c1d00), taken when v0(=ret(Xrealloc)) == 0 and falls through when v0(=ret(Xrealloc)) != 0.
  Returns v0 = 0x1 (`jr` at 0x100c1cec).
  Returns v0 = 0x1 (`jr` at 0x100c1cf8).
  Returns v0 = 0x0; f0 = ret(Xrealloc) (`jr` at 0x100c1d08).

- `AllocateOutputBuffer` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100c1f40 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100c1f40-0x100c1fc0 (128 bytes).
  Stores 4 bytes from v0 to ? (base unknown) (`sw` at 0x100c1f88) with value ret(Xalloc).
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x100c1f90) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x100c1f94) with value 0x0.
  Stores 4 bytes from a3 to ? (base unknown) (`sw` at 0x100c1fa0) with value 0x1000.
  Calls `Xalloc [0x1020aeb0]` via direct with a0=0x14, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x100c1f4c).
  Calls `Xalloc [0x1020aeb0]` via direct with a0=0x1000, a1=?, a2=?, a3=? (`jal` at 0x100c1f70).
  Calls `Xfree [0x101fc9c0]` via direct with a0=?, a1=?, a2=?, a3=0x1000 (`jal` at 0x100c1fa8).
  At `bne` at 0x100c1f54 (target 0x100c1f6c), taken when v0(=ret(Xalloc)) != 0 and falls through when v0(=ret(Xalloc)) == 0.
  At `beq` at 0x100c1f84 (target 0x100c1fa4), taken when v0(=ret(Xalloc)) == 0 and falls through when v0(=ret(Xalloc)) != 0.
  Returns v0 = 0x0; f0 = ret(Xalloc) (`jr` at 0x100c1f64).
  Returns v0 = ?; f0 = ret(Xalloc) (`jr` at 0x100c1f9c).
  Returns v0 = 0x0; f0 = ret(Xfree) (`jr` at 0x100c1fb8).

- `AnyWindowOverlapsMe..L` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100c2610 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100c2610-0x100c28fc (748 bytes).
  Calls `(unknown callee)` via register with a0=a2 at entry (arg2), a1=0x1, a2=?, a3=?, a7=[a2+4]:2 (`jalr` at 0x100c2748).
  Calls `(unknown callee)` via register with a0=ret(?), a1=?, a2=?, a3=?, a5=[a0+120], a6=[[a0+120]+40] (`jalr` at 0x100c2784).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=?, a5=[a0+120] (`jalr` at 0x100c27ac).
  Calls `(unknown callee)` via register with a0=?, a1=[a0+96]:2, a2=[a0+98]:2, a3=? (`jalr` at 0x100c27c8).
  Calls `(unknown callee)` via register with a0=sp-96, a1=0x1, a2=?, a3=? (`jalr` at 0x100c27e0).
  Calls `(unknown callee)` via register with a0=ret(?), a1=?, a2=?, a3=? (`jalr` at 0x100c2818).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x100c283c).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x100c2854).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x100c286c).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x100c287c).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x100c2890).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x100c28a0).
  At `beq` at 0x100c262c (target 0x100c28d0), taken when a1 == s0(=[a0+32]) and falls through when a1 != s0(=[a0+32]).
  At `beq` at 0x100c2644 (target 0x100c28d4), taken when s1(=a1) == s0(?) and falls through when s1(=a1) != s0(?).
  At `bgez` at 0x100c2654 (target 0x100c2640), taken when at(?) >= 0 (signed) and falls through when at(?) < 0 (signed).
  At `beq` at 0x100c26dc (target 0x100c2640), taken when v1(=[a2]:2) >= a3(?) (signed) and falls through when v1(=[a2]:2) < a3(?) (signed).
  At `beq` at 0x100c26f0 (target 0x100c2640), taken when a1(?) >= a7(=[a2+4]:2) (signed) and falls through when a1(?) < a7(=[a2+4]:2) (signed).
  At `beq` at 0x100c26f8 (target 0x100c2640), taken when t0(?) == 0 and falls through when t0(?) != 0.
  At `beq` at 0x100c2700 (target 0x100c2640), taken when t1(?) == 0 and falls through when t1(?) != 0.
  At `beq` at 0x100c270c (target 0x100c2720), taken when a5(=[a0+120]) == 0 and falls through when a5(=[a0+120]) != 0.
  At `bne` at 0x100c2718 (target 0x100c2738), taken when a4(=[[a0+120]+40]) != 0 and falls through when a4(=[[a0+120]+40]) == 0.
  At `beq` at 0x100c2724 (target 0x100c28b8), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `beq` at 0x100c2730 (target 0x100c28b4), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `beq` at 0x100c2758 (target 0x100c27d0), taken when a5(=[a0+120]) == 0 and falls through when a5(=[a0+120]) != 0.
  At `beq` at 0x100c2764 (target 0x100c27d0), taken when a6(=[[a0+120]+40]) == 0 and falls through when a6(=[[a0+120]+40]) != 0.
  At `beq` at 0x100c2794 (target 0x100c28ec), taken when a5(=[a0+120]) == 0 and falls through when a5(=[a0+120]) != 0.
  At `beq` at 0x100c27ec (target 0x100c285c), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `beq` at 0x100c27f8 (target 0x100c2860), taken when ra(?) == 0 and falls through when ra(?) != 0.
  At `beq` at 0x100c2824 (target 0x100c28f4), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `beq` at 0x100c28ac (target 0x100c2640), taken when ra(?) == 0 and falls through when ra(?) != 0.
  Returns v0 = 0x1 (`jr` at 0x100c28c8).
  Returns v0 = 0x0 (`jr` at 0x100c28e4).
  The instructions from 0x100c263c to 0x100c263c are not reached by any path from the entry, and their branches are not listed.

- `ProcXineramaCreateImageBuffers..KKC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100c2900 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100c2900-0x100c3134 (2100 bytes).
  Stores 4 bytes from s1 to ? (base unknown) (`sw` at 0x100c2a48) with value ret(Xalloc).
  Stores 4 bytes from a0 to ret(Xalloc) +0x80 (`sw` at 0x100c2a50) with value [0x102ca7f8].
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x100c2a5c) with value 0x0.
  Stores 4 bytes from ra to ? (base unknown) (`sw` at 0x100c2a78).
  Stores 4 bytes from v0 to ? (base unknown) (`sw` at 0x100c2aa8) with value ret(FakeClientID).
  Stores 4 bytes from a3 to abs 0x102ca77c (xineramaPostponeEvents) (`sw` at 0x100c2ad8) with value 0x1.
  Stores 4 bytes from a3 to sym(panoramiXMode) +0x0 (`sw` at 0x100c2ae4) with value 0x1.
  Stores 4 bytes from zero to sym(panoramiXScreen0) +0x0 (`sw` at 0x100c2b38) with value 0x0.
  Stores 4 bytes from v1 to [a0+8] +0xc (`sw` at 0x100c2b80).
  Stores 4 bytes from a4 to ? (base unknown) (`sw` at 0x100c2b9c).
  Stores 4 bytes from a3 to ? (base unknown) (`sw` at 0x100c2bb8).
  Stores 4 bytes from a5 to [a0+8] +0x4 (`sw` at 0x100c2bc4).
  Stores 4 bytes from a6 to sym(panoramiXScreen0) +0x0 (`sw` at 0x100c2bcc) with value 0x1.
  Stores 4 bytes from zero to sym(panoramiXScreen0) +0x0 (`sw` at 0x100c2bd0) with value 0x0.
  Stores 4 bytes from zero to sym(panoramiXMode) +0x0 (`sw` at 0x100c2be8) with value 0x0.
  Stores 4 bytes from zero to abs 0x102ca77c (xineramaPostponeEvents) (`sw` at 0x100c2bf0) with value 0x0.
  Stores 4 bytes from s2 to table(0x102c71c0) +0x0 (`sw` at 0x100c2c54).
  Stores 4 bytes from s2 to abs 0x102c71b8 (Lfree..4) (`sw` at 0x100c2c58).
  Stores 4 bytes from a3 to abs 0x102c7240 (freeidx..3) (`sw` at 0x100c2c68).
  Stores 4 bytes from v0 to ? (base unknown) (`sw` at 0x100c2cd8) with value ret(Xalloc).
  Stores 4 bytes from a6 to table(0x102c71c0) +0x0 (`sw` at 0x100c2d58).
  Stores 4 bytes from a6 to abs 0x102c71b8 (Lfree..4) (`sw` at 0x100c2d60).
  Stores 4 bytes from a4 to abs 0x102c7240 (freeidx..3) (`sw` at 0x100c2d6c).
  Stores 4 bytes from a6 to table(0x102c71c0) +0x0 (`sw` at 0x100c2e3c).
  Stores 4 bytes from a6 to abs 0x102c71b8 (Lfree..4) (`sw` at 0x100c2e44).
  Stores 4 bytes from a5 to abs 0x102c7240 (freeidx..3) (`sw` at 0x100c2e50).
  Stores 4 bytes from s4 to ret(Xalloc) +0xc (`sw` at 0x100c2f18).
  Stores 4 bytes from s3 to ret(Xalloc) +0x8 (`sw` at 0x100c2f1c) with value [0x102ca7f8].
  Stores 4 bytes from s2 to ret(Xalloc) +0x4 (`sw` at 0x100c2f20).
  Stores 4 bytes from ra to ret(Xalloc) +0x0 (`sw` at 0x100c2f24).
  Stores 4 bytes from v0 to ? (base unknown) (`sw` at 0x100c2f28) with value ret(Xalloc).
  Stores 4 bytes from t9 to ? (base unknown) (`sw` at 0x100c2f40).
  Stores 4 bytes from a4 to ? (base unknown) (`sw` at 0x100c303c).
  Calls `SecurityLookupIDByType [0x100d6140]` via direct with a0=a0 at entry (arg0), a1=[[a0+8]+4], a2=[sym(XRT_WINDOW)], a3=0x1 (`jal` at 0x100c2950).
  Calls `Xalloc [0x1020aeb0]` via direct with a0=([[a0+8]+2]:2 << 0x2)-12, a1=[[a0+8]+2]:2-3, a2=?, a3=0x1, a4=[ret(SecurityLookupIDByType)+164]:1 (`jal` at 0x100c29b0).
  Calls `Xalloc [0x1020aeb0]` via direct with a0=0xa8, a1=?, a2=?, a3=? (`jal` at 0x100c2a28).
  Calls `bzero` via got with a0=ret(Xalloc), a1=0xa8, a2=?, a3=? (`jalr` at 0x100c2a40).
  Calls `FakeClientID [0x10069920]` via direct with a0=[a0], a1=[0x102c5f1c], a2=?, a3=? (`jal` at 0x100c2a84).
  Calls `ProcCreateImageBuffers..AKC [0x100aae40]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=0x1 (`jal` at 0x100c2b20).
  Calls `XineramaDeliverVisibilityNotify [0x10197300]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x100c2bd4).
  Calls `XineramaDeliverExpose [0x100e7410]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x100c2bdc).
  Calls `__libc_lockmalloc` via got with a0=?, a1=[sym(__us_rsthread_malloc)], a2=?, a3=? (`jalr` at 0x100c2c1c).
  Calls `realfree..NL [0x1025db70]` via direct with a0=entry(0x102c71c0), a1=table(0x102c5d40), a2=[0x102c7240], a3=?, a4=[sym(__us_rsthread_malloc)] (`jal` at 0x100c2c3c).
  Calls `__libc_unlockmalloc` via got with a0=?, a1=table(0x102c5d40), a2=[0x102c7240], a3=?, a4=[sym(__us_rsthread_malloc)] (`jalr` at 0x100c2c70).
  Calls `Xfree [0x101fc9c0]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x100c2ca4).
  Calls `realfree..NL [0x1025db70]` via direct with a0=entry(0x102c71c0), a1=table(0x102c5d40), a2=[0x102c7240], a3=([0x102c7240] << 0x2) (`jal` at 0x100c2d38).
  Calls `__libc_unlockmalloc` via got with a0=?, a1=table(0x102c5d40), a2=[0x102c7240], a3=([0x102c7240] << 0x2), a5=[sym(__us_rsthread_malloc)] (`jalr` at 0x100c2d74).
  Calls `__libc_lockmalloc` via got with a0=?, a1=[sym(__us_rsthread_malloc)], a2=?, a3=? (`jalr` at 0x100c2dac).
  Calls `__libc_lockmalloc` via got with a0=?, a1=?, a2=?, a3=?, a4=[sym(__us_rsthread_malloc)] (`jalr` at 0x100c2dec).
  Calls `realfree..NL [0x1025db70]` via direct with a0=entry(0x102c71c0), a1=table(0x102c5d40), a2=[0x102c7240], a3=([0x102c7240] << 0x2), a4=[sym(__us_rsthread_malloc)] (`jal` at 0x100c2e14).
  Calls `__libc_unlockmalloc` via got with a0=?, a1=table(0x102c5d40), a2=[0x102c7240], a3=([0x102c7240] << 0x2), a4=[sym(__us_rsthread_malloc)] (`jalr` at 0x100c2e58).
  Calls `Xalloc [0x1020aeb0]` via direct with a0=0x10, a1=?, a2=?, a3=? (`jal` at 0x100c2f04).
  Calls `RebuildTable..ID [0x101c6ee0]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x100c2f9c).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x100c2fc4).
  Calls `ErrorF [0x10094ec0]` via direct with a0=?, a1=?, a2=[0x102ca7f8], a3=? (`jal` at 0x100c30e0).
  Calls `FatalError [0x10094f20]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x100c30ec).
  At `beq` at 0x100c2918 (target 0x100c293c), taken when at(=[a0+72]) >= 0x3 (unsigned) and falls through when at(=[a0+72]) < 0x3 (unsigned).
  At `beq` at 0x100c2958 (target 0x100c2988), taken when v0(=ret(SecurityLookupIDByType)) == 0 and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  At `beq` at 0x100c2968 (target 0x100c299c), taken when a3(=0x1) == a4(=[ret(SecurityLookupIDByType)+164]:1) and falls through when a3(=0x1) != a4(=[ret(SecurityLookupIDByType)+164]:1).
  At `beq` at 0x100c29bc (target 0x100c2e6c), taken when v0(=ret(Xalloc)) == 0 and falls through when v0(=ret(Xalloc)) != 0.
  At `blez` at 0x100c29c8 (target 0x100c2ab4), taken when a3(?) <= 0 (signed) and falls through when a3(?) > 0 (signed).
  At `beq` at 0x100c2a18 (target 0x100c2ad0), taken when s2(?) == s5(?) and falls through when s2(?) != s5(?).
  At `beq` at 0x100c2a30 (target 0x100c2cd8), taken when v0(=ret(Xalloc)) == 0 and falls through when v0(=ret(Xalloc)) != 0.
  At `bne` at 0x100c2a74 (target 0x100c2a08), taken when a1(=[0x102c5f1c]) < 0x2 (signed) and falls through when a1(=[0x102c5f1c]) >= 0x2 (signed).
  At `bne` at 0x100c2aa4 (target 0x100c2a80), taken when s0(?) < a1(=[0x102c5f1c]) (signed) and falls through when s0(?) >= a1(=[0x102c5f1c]) (signed).
  At `blez` at 0x100c2ae0 (target 0x100c3104), taken when a1(=[0x102c5f1c]) <= 0 (signed) and falls through when a1(=[0x102c5f1c]) > 0 (signed).
  At `bne` at 0x100c2b34 (target 0x100c2bd4), taken when v0(=ret(ProcCreateImageBuffers..AKC)) != 0 and falls through when v0(=ret(ProcCreateImageBuffers..AKC)) == 0.
  At `beq` at 0x100c2b48 (target 0x100c2bd0), taken when s1(?) == t9(?) and falls through when s1(?) != t9(?).
  At `beq` at 0x100c2b58 (target 0x100c2bbc), taken when ra(?) == 0 and falls through when ra(?) != 0.
  At `beq` at 0x100c2b64 (target 0x100c2b84), taken when (s6(?) & 0x1) == 0 and falls through when (s6(?) & 0x1) != 0.
  At `beq` at 0x100c2b84 (target 0x100c2bbc), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0x100c2bb4 (target 0x100c2b90), taken when a1(?) != s5(?) and falls through when a1(?) == s5(?).
  At `bne` at 0x100c2bc0 (target 0x100c2b20), taken when s2(?) != s1(?) and falls through when s2(?) == s1(?).
  At `beq` at 0x100c2bec (target 0x100c2e7c), taken when a7(?) == 0 and falls through when a7(?) != 0.
  At `blez` at 0x100c2bf4 (target 0x100c2ca4), taken when s6(?) <= 0 (signed) and falls through when s6(?) > 0 (signed).
  At `beq` at 0x100c2c34 (target 0x100c2c54), taken when a0(=entry(0x102c71c0)) == 0 and falls through when a0(=entry(0x102c71c0)) != 0.
  At `beq` at 0x100c2c64 (target 0x100c2c78), taken when a4(=[sym(__us_rsthread_malloc)]) == 0 and falls through when a4(=[sym(__us_rsthread_malloc)]) != 0.
  At `beq` at 0x100c2c7c (target 0x100c2ca0), taken when s1(?) == s5(?) and falls through when s1(?) != s5(?).
  At `beq` at 0x100c2c88 (target 0x100c2c78), taken when s2(?) == 0 and falls through when s2(?) != 0.
  At `bne` at 0x100c2c90 (target 0x100c2c18), taken when a1(=[sym(__us_rsthread_malloc)]) != 0 and falls through when a1(=[sym(__us_rsthread_malloc)]) == 0.
  At `blez` at 0x100c2cf8 (target 0x100c2dd8), taken when a4(?) <= 0 (signed) and falls through when a4(?) > 0 (signed).
  At `beq` at 0x100c2d68 (target 0x100c2d7c), taken when a5(=[sym(__us_rsthread_malloc)]) == 0 and falls through when a5(=[sym(__us_rsthread_malloc)]) != 0.
  At `beq` at 0x100c2d88 (target 0x100c2dd8), taken when a7(?) == t0(?) and falls through when a7(?) != t0(?).
  At `beq` at 0x100c2d98 (target 0x100c2d7c), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0x100c2da0 (target 0x100c2db4), taken when a1(=[sym(__us_rsthread_malloc)]) == 0 and falls through when a1(=[sym(__us_rsthread_malloc)]) != 0.
  At `bne` at 0x100c2dc8 (target 0x100c2d38), taken when a0(=entry(0x102c71c0)) != 0 and falls through when a0(=entry(0x102c71c0)) == 0.
  At `beq` at 0x100c2de0 (target 0x100c2df8), taken when a4(=[sym(__us_rsthread_malloc)]) == 0 and falls through when a4(=[sym(__us_rsthread_malloc)]) != 0.
  At `beq` at 0x100c2e0c (target 0x100c2e34), taken when a0(=entry(0x102c71c0)) == 0 and falls through when a0(=entry(0x102c71c0)) != 0.
  At `beq` at 0x100c2e4c (target 0x100c2e64), taken when a4(=[sym(__us_rsthread_malloc)]) == 0 and falls through when a4(=[sym(__us_rsthread_malloc)]) != 0.
  At `blez` at 0x100c2e7c (target 0x100c2cb0), taken when s6(?) <= 0 (signed) and falls through when s6(?) > 0 (signed).
  At `beq` at 0x100c2ec0 (target 0x100c2fd4), taken when a7(?) == t0(=0x6) and falls through when a7(?) != t0(=0x6).
  At `beq` at 0x100c2ecc (target 0x100c3000), taken when a7(?) == t1(=0x7) and falls through when a7(?) != t1(=0x7).
  At `beq` at 0x100c2ed4 (target 0x100c3040), taken when a7(?) == t2(=0x8) and falls through when a7(?) != t2(=0x8).
  At `beq` at 0x100c2edc (target 0x100c306c), taken when a7(?) == t3(=0x9) and falls through when a7(?) != t3(=0x9).
  At `beq` at 0x100c2ee4 (target 0x100c308c), taken when a7(?) == t8(=0xa) and falls through when a7(?) != t8(=0xa).
  At `beq` at 0x100c2eec (target 0x100c30ac), taken when a7(?) == t9(=0xb) and falls through when a7(?) != t9(=0xb).
  At `beq` at 0x100c2f0c (target 0x100c2fac), taken when v0(=ret(Xalloc)) == 0 and falls through when v0(=ret(Xalloc)) != 0.
  At `beq` at 0x100c2f3c (target 0x100c302c), taken when (s7(=0x40000000) & s2(?)) == 0 and falls through when (s7(=0x40000000) & s2(?)) != 0.
  At `beq` at 0x100c2f48 (target 0x100c30fc), taken when s1(?) == s5(?) and falls through when s1(?) != s5(?).
  At `beq` at 0x100c2f74 (target 0x100c30cc), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `bne` at 0x100c2f88 (target 0x100c2eb0), taken when t8(?) < t9(?) (signed) and falls through when t8(?) >= t9(?) (signed).
  At `beq` at 0x100c2f94 (target 0x100c2eb4), taken when a7(?) >= 0xb (signed) and falls through when a7(?) < 0xb (signed).
  At `bne` at 0x100c3030 (target 0x100c2f44), taken when s2(?) < a1(?) (unsigned) and falls through when s2(?) >= a1(?) (unsigned).
  Returns v0 = 0x10 (`jr` at 0x100c292c).
  Returns v0 = ? (`jr` at 0x100c2934).
  Returns v0 = 0x8; f0 = ret(SecurityLookupIDByType) (`jr` at 0x100c2980).
  Returns v0 = 0x3; f0 = ret(SecurityLookupIDByType) (`jr` at 0x100c2994).

- `glxWrapRealizeWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100c8030 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100c8030-0x100c80c8 (152 bytes).
  Stores 4 bytes from t9 to [a0+16] +0xc4 (`sw` at 0x100c808c) with value [[([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))]+72].
  Stores 4 bytes from v1 to [a0+16] +0xc4 (`sw` at 0x100c809c) with value sym(glxWrapRealizeWindow).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x100c8088).
  Calls `glxAddDeepWindow [0x101bff40]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x100c80b8).
  At `bne` at 0x100c8098 (target 0x100c80b4), taken when a0(?) != 0 and falls through when a0(?) == 0.
  Returns v0 = ? (`jr` at 0x100c80ac).

- `RegisterBlockAndWakeupHandlers` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100c9fb0 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100c9fb0-0x100ca064 (180 bytes).
  Stores 4 bytes from v0 to abs 0x102c6120 (handlers..67) (`sw` at 0x100ca018) with value ret(Xrealloc).
  Stores 4 bytes from a3 to abs 0x102c6128 (sizeHandlers..70) (`sw` at 0x100ca020) with value [0x102c6124]+1.
  Stores 4 bytes from a5 to abs 0x102c6124 (numHandlers..66) (`sw` at 0x100ca02c) with value [0x102c6124]+1.
  Stores 4 bytes from a7 to ? (base unknown) (`sw` at 0x100ca038) with value a0.
  Stores 4 bytes from a1 to ? (base unknown) (`sw` at 0x100ca03c) with value a1.
  Stores 4 bytes from a2 to ? (base unknown) (`sw` at 0x100ca044) with value a2.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x100ca050) with value 0x0.
  Calls `Xrealloc [0x101b9470]` via direct with a0=[0x102c6120], a1=([0x102c6124] << 0x4)+16, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[0x102c6124], a6=[0x102c6120], a7=a0 at entry (arg0) (`jal` at 0x100c9ff4).
  At `bne` at 0x100c9fd0 (target 0x100ca024), taken when a5(=[0x102c6124]) < at(=[0x102c6128]) (signed) and falls through when a5(=[0x102c6124]) >= at(=[0x102c6128]) (signed).
  At `beq` at 0x100ca000 (target 0x100ca054), taken when v0(=ret(Xrealloc)) == 0 and falls through when v0(=ret(Xrealloc)) != 0.
  Returns v0 = 0x1 (`jr` at 0x100ca04c).
  Returns v0 = 0x0; f0 = ret(Xrealloc) (`jr` at 0x100ca05c).

- `XETSwCreateWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100ca740 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100ca740-0x100cafdc (2204 bytes).
  Stores 1 bytes from v0 to a0 (arg0 at entry) +0x11 (`sb` at 0x100ca748) with value [a0+16]:1.
  Stores 1 bytes from v1 to a0 (arg0 at entry) +0x10 (`sb` at 0x100ca760) with value [a0+17]:1.
  Stores 1 bytes from a3 to a0 (arg0 at entry) +0xd (`sb` at 0x100ca768) with value [a0+12]:1.
  Stores 1 bytes from a4 to a0 (arg0 at entry) +0xc (`sb` at 0x100ca770) with value [a0+13]:1.
  Stores 1 bytes from a5 to a0 (arg0 at entry) +0xa (`sb` at 0x100ca778) with value [a0+9]:1.
  Stores 1 bytes from a6 to a0 (arg0 at entry) +0x9 (`sb` at 0x100ca780) with value [a0+10]:1.
  Stores 1 bytes from a7 to a0 (arg0 at entry) +0xb (`sb` at 0x100ca790) with value [a0+8]:1.
  Stores 1 bytes from t3 to a0 (arg0 at entry) +0x5 (`sb` at 0x100ca7a0) with value [a0+6]:1.
  Stores 1 bytes from t8 to a0 (arg0 at entry) +0x7 (`sb` at 0x100ca7ac) with value [a0+4]:1.
  Stores 1 bytes from t9 to a0 (arg0 at entry) +0x4 (`sb` at 0x100ca7b8) with value [a0+7]:1.
  Stores 1 bytes from t9 to a0 (arg0 at entry) +0x13 (`sb` at 0x100ca7c0) with value [a0+18]:1.
  Stores 1 bytes from t8 to a0 (arg0 at entry) +0x14 (`sb` at 0x100ca7c4) with value [a0+21]:1.
  Stores 1 bytes from t0 to a0 (arg0 at entry) +0x8 (`sb` at 0x100ca7c8) with value [a0+11]:1.
  Stores 1 bytes from t2 to a0 (arg0 at entry) +0x6 (`sb` at 0x100ca7d0) with value [a0+5]:1.
  Stores 1 bytes from t0 to a0 (arg0 at entry) +0x17 (`sb` at 0x100ca7d8) with value [a0+22]:1.
  Stores 1 bytes from a7 to a0 (arg0 at entry) +0x18 (`sb` at 0x100ca7dc) with value [a0+27]:1.
  Stores 1 bytes from a6 to a0 (arg0 at entry) +0x1b (`sb` at 0x100ca7e0) with value [a0+24]:1.
  Stores 1 bytes from a5 to a0 (arg0 at entry) +0x19 (`sb` at 0x100ca7e4) with value [a0+26]:1.
  Stores 1 bytes from t3 to a0 (arg0 at entry) +0x15 (`sb` at 0x100ca7e8) with value [a0+20]:1.
  Stores 1 bytes from a4 to a0 (arg0 at entry) +0x1a (`sb` at 0x100ca7ec) with value [a0+25]:1.
  Stores 1 bytes from a2 to a0 (arg0 at entry) +0xe (`sb` at 0x100ca7f8) with value [a0+15]:1.
  Stores 1 bytes from a2 to a0 (arg0 at entry) +0x1f (`sb` at 0x100ca800) with value [a0+28]:1.
  Stores 1 bytes from a1 to a0 (arg0 at entry) +0xf (`sb` at 0x100ca808) with value [a0+14]:1.
  Stores 1 bytes from v1 to a0 (arg0 at entry) +0x1e (`sb` at 0x100ca81c) with value [a0+29]:1.
  Stores 1 bytes from t2 to a0 (arg0 at entry) +0x16 (`sb` at 0x100ca824) with value [a0+23]:1.
  Stores 1 bytes from at to a0 (arg0 at entry) +0x12 (`sb` at 0x100ca82c) with value [a0+19]:1.
  Stores 1 bytes from a2 to a0 (arg0 at entry) +0x1d (`sb` at 0x100ca838) with value [a0+30]:1.
  Stores 1 bytes from a3 to a0 (arg0 at entry) +0x1c (`sb` at 0x100ca844) with value [a0+31]:1.
  Stores 1 bytes from v1 to a0 (arg0 at entry) +0x23 (`sb` at 0x100ca870) with value [a0+32]:1.
  Stores 1 bytes from at to a0 (arg0 at entry) +0x20 (`sb` at 0x100ca878) with value [a0+35]:1.
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100ca884).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100ca888).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100ca894).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100ca898).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100ca8a4).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100ca8a8).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100ca8b4).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100ca8b8).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100ca8c4).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100ca8c8).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100ca8d4).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100ca8d8).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100ca8e4).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100ca8e8).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100ca8f4).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100ca8f8).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100ca904).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100ca908).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100ca914).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100ca918).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100ca924).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100ca928).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100ca934).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100ca938).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100ca944).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100ca948).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100ca954).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100ca958).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100ca964).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100ca968).
  Stores 1 bytes from a3 to ? (base unknown) (`sb` at 0x100ca970).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100ca978).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100ca998).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100ca99c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100ca9a8).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100ca9ac).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100ca9b8).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100ca9bc).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100ca9c8).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100ca9cc).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100ca9d8).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100ca9dc).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100ca9e8).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100ca9ec).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100ca9f8).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100ca9fc).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100caa08).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100caa0c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100caa18).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100caa1c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100caa28).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100caa2c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100caa38).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100caa3c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100caa48).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100caa4c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100caa58).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100caa5c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100caa68).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100caa6c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100caa78).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100caa7c).
  Stores 1 bytes from a3 to ? (base unknown) (`sb` at 0x100caa84).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100caa8c).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100caaac).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100caab0).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100caabc).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100caac0).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100caacc).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100caad0).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100caadc).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100caae0).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100caaec).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100caaf0).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100caafc).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100cab00).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100cab0c).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100cab10).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100cab1c).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100cab20).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100cab2c).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100cab30).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100cab3c).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100cab40).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100cab4c).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100cab50).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100cab5c).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100cab60).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100cab6c).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100cab70).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100cab7c).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100cab80).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100cab8c).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100cab90).
  Stores 1 bytes from a3 to ? (base unknown) (`sb` at 0x100cab98).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100caba0).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100cabc8).
  Stores 1 bytes from t2 to ? (base unknown) (`sb` at 0x100cabd0).
  Stores 1 bytes from t3 to ? (base unknown) (`sb` at 0x100cabd8).
  Stores 1 bytes from t2 to ? (base unknown) (`sb` at 0x100cabe0).
  Stores 1 bytes from t3 to ? (base unknown) (`sb` at 0x100cabe8).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x100cac0c).
  Stores 1 bytes from t9 to ? (base unknown) (`sb` at 0x100cac14).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100cac1c).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x100cac24).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x100cac2c).
  Stores 1 bytes from a6 to ? (base unknown) (`sb` at 0x100cac34).
  Stores 1 bytes from a7 to ? (base unknown) (`sb` at 0x100cac3c).
  Stores 1 bytes from t0 to ? (base unknown) (`sb` at 0x100cac44).
  Stores 1 bytes from t0 to ? (base unknown) (`sb` at 0x100cac4c).
  Stores 1 bytes from a7 to ? (base unknown) (`sb` at 0x100cac54).
  Stores 1 bytes from a6 to ? (base unknown) (`sb` at 0x100cac5c).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x100cac64).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x100cac6c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100cac74).
  Stores 1 bytes from t9 to ? (base unknown) (`sb` at 0x100cac7c).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x100cac84).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x100cac8c).
  Stores 1 bytes from t9 to ? (base unknown) (`sb` at 0x100cac90).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100cac94).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x100cac98).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x100cac9c).
  Stores 1 bytes from a6 to ? (base unknown) (`sb` at 0x100caca0).
  Stores 1 bytes from a7 to ? (base unknown) (`sb` at 0x100caca4).
  Stores 1 bytes from t0 to ? (base unknown) (`sb` at 0x100caca8).
  Stores 1 bytes from t2 to ? (base unknown) (`sb` at 0x100cacac).
  Stores 1 bytes from a3 to ? (base unknown) (`sb` at 0x100cacb4).
  Stores 1 bytes from t0 to ? (base unknown) (`sb` at 0x100cacd8).
  Stores 1 bytes from t2 to ? (base unknown) (`sb` at 0x100cace0).
  Stores 1 bytes from a7 to ? (base unknown) (`sb` at 0x100cace8).
  Stores 1 bytes from a6 to ? (base unknown) (`sb` at 0x100cacf0).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x100cacfc).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100cad04).
  Stores 1 bytes from t9 to ? (base unknown) (`sb` at 0x100cad0c).
  Stores 1 bytes from t3 to ? (base unknown) (`sb` at 0x100cad14).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x100cad1c).
  Stores 1 bytes from t3 to ? (base unknown) (`sb` at 0x100cad24).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x100cad2c).
  Stores 1 bytes from t9 to ? (base unknown) (`sb` at 0x100cad34).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100cad3c).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x100cad44).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x100cad4c).
  Stores 1 bytes from a6 to ? (base unknown) (`sb` at 0x100cad54).
  Stores 1 bytes from a7 to ? (base unknown) (`sb` at 0x100cad5c).
  Stores 1 bytes from t2 to ? (base unknown) (`sb` at 0x100cad64).
  Stores 1 bytes from t0 to ? (base unknown) (`sb` at 0x100cad6c).
  Stores 1 bytes from t0 to ? (base unknown) (`sb` at 0x100cad74).
  Stores 1 bytes from a7 to ? (base unknown) (`sb` at 0x100cad78).
  Stores 1 bytes from a6 to ? (base unknown) (`sb` at 0x100cad7c).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x100cad80).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x100cad88).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100cad8c).
  Stores 1 bytes from t9 to ? (base unknown) (`sb` at 0x100cad90).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x100cad94).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x100cad9c).
  Stores 1 bytes from t2 to ? (base unknown) (`sb` at 0x100cada0).
  Stores 1 bytes from t3 to ? (base unknown) (`sb` at 0x100cada4).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x100cadb0).
  Stores 1 bytes from a6 to ? (base unknown) (`sb` at 0x100cadfc).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x100cae00).
  Stores 1 bytes from a4 to ? (base unknown) (`sb` at 0x100cae04).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100cae10).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100cae1c).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x100cae20).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100cae30).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100cae3c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100cae48).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100cae4c).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x100cae5c).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100cae68).
  Stores 1 bytes from t0 to a0 (arg0 at entry) +0x2 (`sb` at 0x100cae74) with value [a0+3]:1.
  Stores 1 bytes from a7 to a0 (arg0 at entry) +0x3 (`sb` at 0x100cae7c) with value [a0+2]:1.
  Stores 1 bytes from a2 to ? (base unknown) (`sb` at 0x100caea8).
  Stores 1 bytes from a1 to ? (base unknown) (`sb` at 0x100caeac).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x100caeb8).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100caebc).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100caec8).
  Stores 1 bytes from t9 to ? (base unknown) (`sb` at 0x100caecc).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x100caed8).
  Stores 1 bytes from t0 to ? (base unknown) (`sb` at 0x100caedc).
  Stores 1 bytes from a7 to ? (base unknown) (`sb` at 0x100caee8).
  Stores 1 bytes from a6 to ? (base unknown) (`sb` at 0x100caeec).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x100caef8).
  Stores 1 bytes from a4 to ? (base unknown) (`sb` at 0x100caefc).
  Stores 1 bytes from a3 to ? (base unknown) (`sb` at 0x100caf08).
  Stores 1 bytes from a2 to ? (base unknown) (`sb` at 0x100caf0c).
  Stores 1 bytes from a1 to ? (base unknown) (`sb` at 0x100caf18).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x100caf1c).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100caf28).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100caf2c).
  Stores 1 bytes from t9 to ? (base unknown) (`sb` at 0x100caf38).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x100caf3c).
  Stores 1 bytes from t0 to ? (base unknown) (`sb` at 0x100caf48).
  Stores 1 bytes from a7 to ? (base unknown) (`sb` at 0x100caf4c).
  Stores 1 bytes from a6 to ? (base unknown) (`sb` at 0x100caf58).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x100caf5c).
  Stores 1 bytes from a4 to ? (base unknown) (`sb` at 0x100caf68).
  Stores 1 bytes from a3 to ? (base unknown) (`sb` at 0x100caf6c).
  Stores 1 bytes from a2 to ? (base unknown) (`sb` at 0x100caf78).
  Stores 1 bytes from a1 to ? (base unknown) (`sb` at 0x100caf7c).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x100caf88).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100caf8c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100cafa0).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x100cafac).
  Stores 1 bytes from a6 to ? (base unknown) (`sb` at 0x100cafc0).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x100cafc4).
  Stores 1 bytes from a4 to ? (base unknown) (`sb` at 0x100cafd0).
  Stores 1 bytes from a3 to ? (base unknown) (`sb` at 0x100cafd8).
  At `bne` at 0x100ca848 (target 0x100cadb4), taken when t2(=[a0+2]:2-8) < 0x8 (unsigned) and falls through when t2(=[a0+2]:2-8) >= 0x8 (unsigned).
  At `bne` at 0x100ca850 (target 0x100cae9c), taken when v0(?) != 0 and falls through when v0(?) == 0.
  At `bne` at 0x100ca858 (target 0x100caea0), taken when at(?) != 0 and falls through when at(?) == 0.
  At `bne` at 0x100ca98c (target 0x100cae90), taken when a1(?) < 0x8 (unsigned) and falls through when a1(?) >= 0x8 (unsigned).
  At `bne` at 0x100caaa0 (target 0x100cae88), taken when a1(?) < 0x8 (unsigned) and falls through when a1(?) >= 0x8 (unsigned).
  At `beq` at 0x100cabb4 (target 0x100ca880), taken when a1(?) >= 0x8 (unsigned) and falls through when a1(?) < 0x8 (unsigned).
  At `beq` at 0x100cadcc (target 0x100cae6c), taken when t2(?) == 0 and falls through when t2(?) != 0.
  At `bne` at 0x100cadd4 (target 0x100cade0), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `bne` at 0x100cade4 (target 0x100cafb8), taken when v0(?) < 0x2 (signed) and falls through when v0(?) >= 0x2 (signed).
  At `beq` at 0x100cae34 (target 0x100cae80), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `bne` at 0x100cae60 (target 0x100cae10), taken when at(?) != 0 and falls through when at(?) == 0.
  At `bne` at 0x100cafa8 (target 0x100cadb4), taken when t2(?) < 0x8 (unsigned) and falls through when t2(?) >= 0x8 (unsigned).
  Returns v0 = ? (`jr` at 0x100cae78).

- `LbxChangeWindowProperty` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100d3cd0 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100d3cd0-0x100d3f7c (684 bytes).
  Stores 4 bytes from v0 to ? (base unknown) (`sw` at 0x100d3dd8).
  Calls `ShmInfoPropCreate [0x10149190]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=a6 at entry (arg6), a6=a7 at entry (arg7) (`jal` at 0x100d3d6c).
  Calls `DeliverEvents [0x10064f80]` via direct with a0=a1 at entry (arg1), a1=sp-176, a2=0x1, a3=0x0, a4=[sym(currentTime)+4], a6=[a1+4], a7=0x1c (`jal` at 0x100d3dc4).
  Calls `LbxStallPropRequest [0x1014a660]` via direct with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x100d3e60).
  Calls `TagDeleteTag [0x101a10a0]` via direct with a0=?, a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x100d3e90).
  Calls `ShmInfoPropPrepend [0x10205710]` via direct with a0=?, a1=a6 at entry (arg6), a2=?, a3=0x1 (`jal` at 0x100d3ecc).
  Calls `MakeWindowOptional [0x10135300]` via direct with a0=a1 at entry (arg1), a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x100d3f04).
  Calls `ShmInfoPropReplace [0x101cfaf0]` via direct with a0=a0 at entry (arg0), a1=?, a2=a3 at entry (arg3), a3=a4 at entry (arg4), a4=a6 at entry (arg6), a5=a7 at entry (arg7) (`jal` at 0x100d3f48).
  Calls `ShmInfoPropAppend [0x100be990]` via direct with a0=?, a1=a6 at entry (arg6), a2=?, a3=? (`jal` at 0x100d3f64).
  At `beq` at 0x100d3cec (target 0x100d3e18), taken when v0(=[a1+120]) == 0 and falls through when v0(=[a1+120]) != 0.
  At `beq` at 0x100d3cfc (target 0x100d3d24), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `beq` at 0x100d3d10 (target 0x100d3d4c), taken when s0(?) == 0 and falls through when s0(?) != 0.
  At `bne` at 0x100d3d1c (target 0x100d3d0c), taken when at(?) != s1(=a2) and falls through when at(?) == s1(=a2).
  At `beq` at 0x100d3d24 (target 0x100d3d4c), taken when s0(?) == 0 and falls through when s0(?) != 0.
  At `beq` at 0x100d3d30 (target 0x100d3df4), taken when v0(?) == a4 and falls through when v0(?) != a4.
  At `beq` at 0x100d3d38 (target 0x100d3df4), taken when a5 == 0 and falls through when a5 != 0.
  At `beq` at 0x100d3d50 (target 0x100d3eec), taken when v0(=[a1+120]) == 0 and falls through when v0(=[a1+120]) != 0.
  At `beq` at 0x100d3d7c (target 0x100d3ee4), taken when v0(=ret(ShmInfoPropCreate)) == 0 and falls through when v0(=ret(ShmInfoPropCreate)) != 0.
  At `beq` at 0x100d3d88 (target 0x100d3dcc), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0x100d3dd0 (target 0x100d3ddc), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0x100d3e00 (target 0x100d3e24), taken when t1(?) == a3 and falls through when t1(?) != a3.
  At `beq` at 0x100d3e08 (target 0x100d3e74), taken when a5 == 0 and falls through when a5 != 0.
  At `beq` at 0x100d3e24 (target 0x100d3e74), taken when a5 == 0 and falls through when a5 != 0.
  At `beq` at 0x100d3e38 (target 0x100d3ea0), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `beq` at 0x100d3e54 (target 0x100d3e8c), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0x100d3e84 (target 0x100d3ea0), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `beq` at 0x100d3ea0 (target 0x100d3f30), taken when a5 == 0 and falls through when a5 != 0.
  At `beq` at 0x100d3ea8 (target 0x100d3d88), taken when t8(=a6) == 0 and falls through when t8(=a6) != 0.
  At `beq` at 0x100d3eb0 (target 0x100d3f60), taken when a5 == v0(=0x2) and falls through when a5 != v0(=0x2).
  At `bne` at 0x100d3ebc (target 0x100d3d88), taken when a5 != a3(=0x1) and falls through when a5 == a3(=0x1).
  At `bne` at 0x100d3ed4 (target 0x100d3d88), taken when v0(=ret(ShmInfoPropPrepend)) != 0 and falls through when v0(=ret(ShmInfoPropPrepend)) == 0.
  At `bne` at 0x100d3f1c (target 0x100d3d58), taken when v0(=ret(MakeWindowOptional)) != 0 and falls through when v0(=ret(MakeWindowOptional)) == 0.
  At `bne` at 0x100d3f50 (target 0x100d3d88), taken when v0(=ret(ShmInfoPropReplace)) != 0 and falls through when v0(=ret(ShmInfoPropReplace)) == 0.
  At `bne` at 0x100d3f6c (target 0x100d3d88), taken when v0(=ret(ShmInfoPropAppend)) != 0 and falls through when v0(=ret(ShmInfoPropAppend)) == 0.
  Returns v0 = 0x8 (`jr` at 0x100d3d44).
  Returns v0 = ? (`jr` at 0x100d3dec).

- `SProcChangeKeyboardMapping` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100d4270 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100d4270-0x100d4878 (1544 bytes).
  Stores 1 bytes from a1 to [a0+8] +0x2 (`sb` at 0x100d4284) with value [[a0+8]+3]:1.
  Stores 1 bytes from v1 to [a0+8] +0x3 (`sb` at 0x100d4288) with value [[a0+8]+2]:1.
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d4310).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x100d4314).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d431c).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d4320).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d432c).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d4330).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d433c).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d4340).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d434c).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d4350).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d435c).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d4360).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d436c).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d4370).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d437c).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d4380).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d438c).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d4390).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d439c).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d43a0).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d43ac).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d43b0).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d43bc).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d43c0).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d43dc).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d43e0).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x100d43e4).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x100d43e8).
  Stores 1 bytes from a2 to ? (base unknown) (`sb` at 0x100d43ec).
  Stores 1 bytes from a1 to ? (base unknown) (`sb` at 0x100d43f0).
  Stores 1 bytes from t0 to ? (base unknown) (`sb` at 0x100d4404).
  Stores 1 bytes from t2 to ? (base unknown) (`sb` at 0x100d440c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d4424).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x100d4428).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d4430).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d4434).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d4440).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d4444).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d4450).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d4454).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d4460).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d4464).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d4470).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d4474).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d4480).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d4484).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d4490).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d4494).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d44a0).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d44a4).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d44b0).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d44b4).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d44c0).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d44c4).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d44d0).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d44d4).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d44f0).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d44f4).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x100d44f8).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x100d44fc).
  Stores 1 bytes from a2 to ? (base unknown) (`sb` at 0x100d4500).
  Stores 1 bytes from a1 to ? (base unknown) (`sb` at 0x100d4504).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x100d4518).
  Stores 1 bytes from a4 to ? (base unknown) (`sb` at 0x100d4520).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d453c).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x100d4540).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d4548).
  Stores 1 bytes from t0 to ? (base unknown) (`sb` at 0x100d454c).
  Stores 1 bytes from t2 to ? (base unknown) (`sb` at 0x100d4550).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x100d4574).
  Stores 1 bytes from s1 to ? (base unknown) (`sb` at 0x100d457c).
  Stores 1 bytes from t3 to ? (base unknown) (`sb` at 0x100d4584).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x100d458c).
  Stores 1 bytes from a4 to ? (base unknown) (`sb` at 0x100d4594).
  Stores 1 bytes from a2 to ? (base unknown) (`sb` at 0x100d459c).
  Stores 1 bytes from a1 to ? (base unknown) (`sb` at 0x100d45a4).
  Stores 1 bytes from t9 to ? (base unknown) (`sb` at 0x100d45ac).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x100d45b4).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x100d45bc).
  Stores 1 bytes from a1 to ? (base unknown) (`sb` at 0x100d45c4).
  Stores 1 bytes from a2 to ? (base unknown) (`sb` at 0x100d45cc).
  Stores 1 bytes from a4 to ? (base unknown) (`sb` at 0x100d45d4).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x100d45dc).
  Stores 1 bytes from s1 to ? (base unknown) (`sb` at 0x100d45e4).
  Stores 1 bytes from t3 to ? (base unknown) (`sb` at 0x100d45ec).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x100d45f4).
  Stores 1 bytes from t9 to ? (base unknown) (`sb` at 0x100d45fc).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x100d4604).
  Stores 1 bytes from t9 to ? (base unknown) (`sb` at 0x100d4608).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x100d460c).
  Stores 1 bytes from t3 to ? (base unknown) (`sb` at 0x100d4610).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x100d4614).
  Stores 1 bytes from a4 to ? (base unknown) (`sb` at 0x100d4618).
  Stores 1 bytes from a2 to ? (base unknown) (`sb` at 0x100d461c).
  Stores 1 bytes from s1 to ? (base unknown) (`sb` at 0x100d4620).
  Stores 1 bytes from a1 to ? (base unknown) (`sb` at 0x100d4628).
  Stores 1 bytes from t2 to ? (base unknown) (`sb` at 0x100d4670).
  Stores 1 bytes from t1 to ? (base unknown) (`sb` at 0x100d4674).
  Stores 1 bytes from t0 to ? (base unknown) (`sb` at 0x100d4680).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d4690).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d469c).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x100d46a0).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d46b0).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d46bc).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d46c8).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d46cc).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x100d46dc).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d46e8).
  Stores 1 bytes from t9 to [a0+8] +0x26 (`sb` at 0x100d4750) with value [[a0+8]+37]:1.
  Stores 1 bytes from t8 to [a0+8] +0x25 (`sb` at 0x100d4754) with value [[a0+8]+38]:1.
  Stores 1 bytes from s1 to [a0+8] +0x27 (`sb` at 0x100d4760) with value [[a0+8]+36]:1.
  Stores 1 bytes from t3 to [a0+8] +0x24 (`sb` at 0x100d4764) with value [[a0+8]+39]:1.
  Stores 1 bytes from t2 to [a0+8] +0x22 (`sb` at 0x100d4770) with value [[a0+8]+33]:1.
  Stores 1 bytes from t1 to [a0+8] +0x21 (`sb` at 0x100d4774) with value [[a0+8]+34]:1.
  Stores 1 bytes from t0 to [a0+8] +0x23 (`sb` at 0x100d4780) with value [[a0+8]+32]:1.
  Stores 1 bytes from a7 to [a0+8] +0x20 (`sb` at 0x100d4784) with value [[a0+8]+35]:1.
  Stores 1 bytes from a6 to [a0+8] +0x1e (`sb` at 0x100d4790) with value [[a0+8]+29]:1.
  Stores 1 bytes from a5 to [a0+8] +0x1d (`sb` at 0x100d4794) with value [[a0+8]+30]:1.
  Stores 1 bytes from a4 to [a0+8] +0x1f (`sb` at 0x100d47a0) with value [[a0+8]+28]:1.
  Stores 1 bytes from a2 to [a0+8] +0x1c (`sb` at 0x100d47a4) with value [[a0+8]+31]:1.
  Stores 1 bytes from a1 to [a0+8] +0x1a (`sb` at 0x100d47b0) with value [[a0+8]+25]:1.
  Stores 1 bytes from a0 to [a0+8] +0x19 (`sb` at 0x100d47b4) with value [[a0+8]+26]:1.
  Stores 1 bytes from v1 to [a0+8] +0x1b (`sb` at 0x100d47c0) with value [[a0+8]+24]:1.
  Stores 1 bytes from at to [a0+8] +0x18 (`sb` at 0x100d47c4) with value [[a0+8]+27]:1.
  Stores 1 bytes from t9 to [a0+8] +0x16 (`sb` at 0x100d47d0) with value [[a0+8]+21]:1.
  Stores 1 bytes from t8 to [a0+8] +0x15 (`sb` at 0x100d47d4) with value [[a0+8]+22]:1.
  Stores 1 bytes from s1 to [a0+8] +0x17 (`sb` at 0x100d47e0) with value [[a0+8]+20]:1.
  Stores 1 bytes from t3 to [a0+8] +0x14 (`sb` at 0x100d47e4) with value [[a0+8]+23]:1.
  Stores 1 bytes from t2 to [a0+8] +0x12 (`sb` at 0x100d47f0) with value [[a0+8]+17]:1.
  Stores 1 bytes from t1 to [a0+8] +0x11 (`sb` at 0x100d47f4) with value [[a0+8]+18]:1.
  Stores 1 bytes from t0 to [a0+8] +0x13 (`sb` at 0x100d4800) with value [[a0+8]+16]:1.
  Stores 1 bytes from a7 to [a0+8] +0x10 (`sb` at 0x100d4804) with value [[a0+8]+19]:1.
  Stores 1 bytes from a6 to [a0+8] +0xe (`sb` at 0x100d4810) with value [[a0+8]+13]:1.
  Stores 1 bytes from a5 to [a0+8] +0xd (`sb` at 0x100d4814) with value [[a0+8]+14]:1.
  Stores 1 bytes from a4 to [a0+8] +0xf (`sb` at 0x100d4820) with value [[a0+8]+12]:1.
  Stores 1 bytes from a2 to [a0+8] +0xc (`sb` at 0x100d4824) with value [[a0+8]+15]:1.
  Stores 1 bytes from a1 to [a0+8] +0xa (`sb` at 0x100d4830) with value [[a0+8]+9]:1.
  Stores 1 bytes from a0 to [a0+8] +0x9 (`sb` at 0x100d4834) with value [[a0+8]+10]:1.
  Stores 1 bytes from v1 to [a0+8] +0xb (`sb` at 0x100d4844) with value [[a0+8]+8]:1.
  Stores 1 bytes from at to [a0+8] +0x8 (`sb` at 0x100d4850) with value [[a0+8]+11]:1.
  Stores 1 bytes from a1 to ? (base unknown) (`sb` at 0x100d485c).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x100d4860).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d486c).
  Stores 1 bytes from ra to ? (base unknown) (`sb` at 0x100d4874).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=a0 at entry (arg0) (`jalr` at 0x100d46f8).
  At `bne` at 0x100d42b0 (target 0x100d471c), taken when v0(=[a0+72]) < 0x2 (unsigned) and falls through when v0(=[a0+72]) >= 0x2 (unsigned).
  At `bne` at 0x100d42d4 (target 0x100d462c), taken when v0(=[[a0+8]+2]:2-2) < 0x8 (unsigned) and falls through when v0(=[[a0+8]+2]:2-2) >= 0x8 (unsigned).
  At `bne` at 0x100d42dc (target 0x100d4748), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `bne` at 0x100d441c (target 0x100d4734), taken when a6(?) < 0x8 (unsigned) and falls through when a6(?) >= 0x8 (unsigned).
  At `beq` at 0x100d4530 (target 0x100d4310), taken when a6(?) >= 0x8 (unsigned) and falls through when a6(?) < 0x8 (unsigned).
  At `beq` at 0x100d4640 (target 0x100d46ec), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `bne` at 0x100d4648 (target 0x100d4654), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `bne` at 0x100d4658 (target 0x100d4854), taken when s0(?) < 0x2 (signed) and falls through when s0(?) >= 0x2 (signed).
  At `beq` at 0x100d46b4 (target 0x100d4714), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `bne` at 0x100d46e0 (target 0x100d4690), taken when at(?) != 0 and falls through when at(?) == 0.
  Returns v0 = ret(?); f0 = ret(?) (`jr` at 0x100d470c).
  Returns v0 = 0x10 (`jr` at 0x100d472c).

- `t1_KillRegion` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100d6350 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100d6350-0x100d6468 (280 bytes).
  Stores 2 bytes from a2 to a0 (arg0 at entry) +0x2 (`sh` at 0x100d6390).
  Stores 1 bytes from zero to ? (base unknown) (`sb` at 0x100d63bc) with value 0x0.
  Stores 1 bytes from zero to a0 (arg0 at entry) +0x0 (`sb` at 0x100d63e4) with value 0x0.
  Stores 1 bytes from zero to ? (base unknown) (`sb` at 0x100d642c) with value 0x0.
  Calls `xiFree [0x100f0a40]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x100d63c0).
  Calls `xiFree [0x100f0a40]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`j` at 0x100d63f0).
  Calls `FatalError [0x10094f20]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x100d6420).
  Calls `FatalError [0x10094f20]` via direct with a0=0x102939e8, a1=a1 at entry (arg1), a2=[a0+2]:2, a3=a3 at entry (arg3) (`jal` at 0x100d643c).
  Calls `FatalError [0x10094f20]` via direct with a0=0x10293698, a1=?, a2=?, a3=?, a4=[a0]:1 (`jal` at 0x100d6458).
  At `bltz` at 0x100d6368 (target 0x100d6430), taken when a2(=[a0+2]:2) < 0 (signed) and falls through when a2(=[a0+2]:2) >= 0 (signed).
  At `beq` at 0x100d6394 (target 0x100d6404), taken when a2(?) >= 0x2 (signed) -> outside and falls through when a2(?) < 0x2 (signed).
  At `beq` at 0x100d639c (target 0x100d63f8), taken when a2(?) == a3(=0x1) and falls through when a2(?) != a3(=0x1).
  At `beq` at 0x100d63a4 (target 0x100d63d0), taken when s0(=[a0+28]) == 0 and falls through when s0(=[a0+28]) != 0.
  At `beq` at 0x100d63b4 (target 0x100d641c), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `bne` at 0x100d63c8 (target 0x100d63b0), taken when s1(?) != 0 and falls through when s1(?) == 0.
  At `beq` at 0x100d63d4 (target 0x100d644c), taken when a4(=[a0]:1) == 0 and falls through when a4(=[a0]:1) != 0.
  At `bne` at 0x100d6400 (target 0x100d63a4), taken when (a5(=[a0+1]:1) & 0x1) != 0 and falls through when (a5(=[a0+1]:1) & 0x1) == 0.
  Returns v0 = ? (`jr` at 0x100d6414).

- `CheckDeviceGrabAndHintWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100d7be0 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100d7be0-0x100d7d14 (308 bytes).
  Stores 4 bytes from t9 to ? (base unknown) (`sw` at 0x100d7d10) with value a0.
  Calls `(unknown callee)` via register with a0=?, a1=sp-80, a2=[sym(currentTime)]:8, a3=0x1, a4=0x20000000, a6=a0 at entry (arg0) (`jalr` at 0x100d7ce8).
  At `beq` at 0x100d7c0c (target 0x100d7cfc), taken when at(=[sym(inputInfo)+4]) == 0 and falls through when at(=[sym(inputInfo)+4]) != 0.
  At `beq` at 0x100d7c20 (target 0x100d7cfc), taken when a7(?) == 0 and falls through when a7(?) != 0.
  At `bne` at 0x100d7c2c (target 0x100d7c1c), taken when at(?) != t0(?) and falls through when at(?) == t0(?).
  At `beq` at 0x100d7c38 (target 0x100d7c54), taken when a2(=[[sym(inputInfo)+16]+76]:1) == t0(?) and falls through when a2(=[[sym(inputInfo)+16]+76]:1) != t0(?).
  At `beq` at 0x100d7c44 (target 0x100d7c54), taken when a6(=[[sym(inputInfo)+12]+76]:1) == t0(?) and falls through when a6(=[[sym(inputInfo)+12]+76]:1) != t0(?).
  At `beq` at 0x100d7c58 (target 0x100d7d04), taken when t1(=[0x102c6084]) == a1 and falls through when t1(=[0x102c6084]) != a1.
  At `bne` at 0x100d7c60 (target 0x100d7cf4), taken when t2(=[0x102c5f70]) != a1 and falls through when t2(=[0x102c5f70]) == a1.
  At `bne` at 0x100d7c68 (target 0x100d7cf4), taken when a3 != 0 and falls through when a3 == 0.
  At `beq` at 0x100d7c70 (target 0x100d7cf4), taken when a0(?) == 0 and falls through when a0(?) != 0.
  Returns v0 = ? (`jr` at 0x100d7cf4).
  Returns v0 = ? (`jr` at 0x100d7d0c).

- `SProcDisplayImageBuffers..ELC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100d9a90 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100d9a90-0x100da080 (1520 bytes).
  Stores 1 bytes from v1 to [a0+8] +0x2 (`sb` at 0x100d9aa4) with value [[a0+8]+3]:1.
  Stores 1 bytes from v0 to [a0+8] +0x3 (`sb` at 0x100d9aa8) with value [[a0+8]+2]:1.
  Stores 1 bytes from a2 to [a0+8] +0x7 (`sb` at 0x100d9aec) with value [[a0+8]+6]:1.
  Stores 1 bytes from a0 to [a0+8] +0x5 (`sb` at 0x100d9b04) with value [[a0+8]+4]:1.
  Stores 1 bytes from a1 to [a0+8] +0x6 (`sb` at 0x100d9b0c) with value [[a0+8]+7]:1.
  Stores 1 bytes from v1 to [a0+8] +0x4 (`sb` at 0x100d9b18) with value [[a0+8]+5]:1.
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d9b50).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x100d9b54).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d9b5c).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d9b60).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d9b6c).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d9b70).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d9b7c).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d9b80).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d9b8c).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d9b90).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d9b9c).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d9ba0).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d9bac).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d9bb0).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d9bbc).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d9bc0).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d9bcc).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d9bd0).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d9bdc).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d9be0).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d9bec).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d9bf0).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d9bfc).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d9c00).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d9c1c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d9c20).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x100d9c24).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x100d9c28).
  Stores 1 bytes from a2 to ? (base unknown) (`sb` at 0x100d9c2c).
  Stores 1 bytes from a1 to ? (base unknown) (`sb` at 0x100d9c30).
  Stores 1 bytes from t0 to ? (base unknown) (`sb` at 0x100d9c44).
  Stores 1 bytes from t2 to ? (base unknown) (`sb` at 0x100d9c4c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d9c64).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x100d9c68).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d9c70).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d9c74).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d9c80).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d9c84).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d9c90).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d9c94).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d9ca0).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d9ca4).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d9cb0).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d9cb4).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d9cc0).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d9cc4).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d9cd0).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d9cd4).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d9ce0).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d9ce4).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d9cf0).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d9cf4).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d9d00).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d9d04).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d9d10).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d9d14).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d9d30).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d9d34).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x100d9d38).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x100d9d3c).
  Stores 1 bytes from a2 to ? (base unknown) (`sb` at 0x100d9d40).
  Stores 1 bytes from a1 to ? (base unknown) (`sb` at 0x100d9d44).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x100d9d58).
  Stores 1 bytes from a4 to ? (base unknown) (`sb` at 0x100d9d60).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d9d7c).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x100d9d80).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d9d88).
  Stores 1 bytes from t0 to ? (base unknown) (`sb` at 0x100d9d8c).
  Stores 1 bytes from t2 to ? (base unknown) (`sb` at 0x100d9d90).
  Stores 1 bytes from a1 to ? (base unknown) (`sb` at 0x100d9db4).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x100d9dbc).
  Stores 1 bytes from t9 to ? (base unknown) (`sb` at 0x100d9dc4).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x100d9dcc).
  Stores 1 bytes from s1 to ? (base unknown) (`sb` at 0x100d9dd4).
  Stores 1 bytes from t3 to ? (base unknown) (`sb` at 0x100d9ddc).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x100d9de4).
  Stores 1 bytes from a2 to ? (base unknown) (`sb` at 0x100d9dec).
  Stores 1 bytes from a4 to ? (base unknown) (`sb` at 0x100d9df4).
  Stores 1 bytes from a4 to ? (base unknown) (`sb` at 0x100d9dfc).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x100d9e04).
  Stores 1 bytes from t3 to ? (base unknown) (`sb` at 0x100d9e0c).
  Stores 1 bytes from s1 to ? (base unknown) (`sb` at 0x100d9e14).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x100d9e1c).
  Stores 1 bytes from t9 to ? (base unknown) (`sb` at 0x100d9e24).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x100d9e2c).
  Stores 1 bytes from a1 to ? (base unknown) (`sb` at 0x100d9e34).
  Stores 1 bytes from a2 to ? (base unknown) (`sb` at 0x100d9e3c).
  Stores 1 bytes from a4 to ? (base unknown) (`sb` at 0x100d9e44).
  Stores 1 bytes from a2 to ? (base unknown) (`sb` at 0x100d9e48).
  Stores 1 bytes from a1 to ? (base unknown) (`sb` at 0x100d9e4c).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x100d9e50).
  Stores 1 bytes from t9 to ? (base unknown) (`sb` at 0x100d9e54).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x100d9e58).
  Stores 1 bytes from t3 to ? (base unknown) (`sb` at 0x100d9e5c).
  Stores 1 bytes from s1 to ? (base unknown) (`sb` at 0x100d9e60).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x100d9e68).
  Stores 1 bytes from t2 to ? (base unknown) (`sb` at 0x100d9eb0).
  Stores 1 bytes from t1 to ? (base unknown) (`sb` at 0x100d9eb4).
  Stores 1 bytes from t0 to ? (base unknown) (`sb` at 0x100d9eb8).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d9ec0).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d9ecc).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x100d9ed0).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d9ee0).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d9eec).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100d9ef8).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d9efc).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x100d9f0c).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x100d9f18).
  Stores 1 bytes from t2 to [a0+8] +0x26 (`sb` at 0x100d9f58) with value [[a0+8]+37]:1.
  Stores 1 bytes from t1 to [a0+8] +0x25 (`sb` at 0x100d9f5c) with value [[a0+8]+38]:1.
  Stores 1 bytes from t0 to [a0+8] +0x27 (`sb` at 0x100d9f68) with value [[a0+8]+36]:1.
  Stores 1 bytes from a7 to [a0+8] +0x24 (`sb` at 0x100d9f6c) with value [[a0+8]+39]:1.
  Stores 1 bytes from a6 to [a0+8] +0x22 (`sb` at 0x100d9f78) with value [[a0+8]+33]:1.
  Stores 1 bytes from a5 to [a0+8] +0x21 (`sb` at 0x100d9f7c) with value [[a0+8]+34]:1.
  Stores 1 bytes from a4 to [a0+8] +0x23 (`sb` at 0x100d9f88) with value [[a0+8]+32]:1.
  Stores 1 bytes from a2 to [a0+8] +0x20 (`sb` at 0x100d9f8c) with value [[a0+8]+35]:1.
  Stores 1 bytes from a1 to [a0+8] +0x1e (`sb` at 0x100d9f98) with value [[a0+8]+29]:1.
  Stores 1 bytes from a0 to [a0+8] +0x1d (`sb` at 0x100d9f9c) with value [[a0+8]+30]:1.
  Stores 1 bytes from v1 to [a0+8] +0x1f (`sb` at 0x100d9fa8) with value [[a0+8]+28]:1.
  Stores 1 bytes from at to [a0+8] +0x1c (`sb` at 0x100d9fac) with value [[a0+8]+31]:1.
  Stores 1 bytes from t9 to [a0+8] +0x1a (`sb` at 0x100d9fb8) with value [[a0+8]+25]:1.
  Stores 1 bytes from t8 to [a0+8] +0x19 (`sb` at 0x100d9fbc) with value [[a0+8]+26]:1.
  Stores 1 bytes from s1 to [a0+8] +0x1b (`sb` at 0x100d9fc8) with value [[a0+8]+24]:1.
  Stores 1 bytes from t3 to [a0+8] +0x18 (`sb` at 0x100d9fcc) with value [[a0+8]+27]:1.
  Stores 1 bytes from t2 to [a0+8] +0x16 (`sb` at 0x100d9fd8) with value [[a0+8]+21]:1.
  Stores 1 bytes from t1 to [a0+8] +0x15 (`sb` at 0x100d9fdc) with value [[a0+8]+22]:1.
  Stores 1 bytes from t0 to [a0+8] +0x17 (`sb` at 0x100d9fe8) with value [[a0+8]+20]:1.
  Stores 1 bytes from a7 to [a0+8] +0x14 (`sb` at 0x100d9fec) with value [[a0+8]+23]:1.
  Stores 1 bytes from a6 to [a0+8] +0x12 (`sb` at 0x100d9ff8) with value [[a0+8]+17]:1.
  Stores 1 bytes from a5 to [a0+8] +0x11 (`sb` at 0x100d9ffc) with value [[a0+8]+18]:1.
  Stores 1 bytes from a4 to [a0+8] +0x13 (`sb` at 0x100da008) with value [[a0+8]+16]:1.
  Stores 1 bytes from a2 to [a0+8] +0x10 (`sb` at 0x100da00c) with value [[a0+8]+19]:1.
  Stores 1 bytes from a1 to [a0+8] +0xe (`sb` at 0x100da018) with value [[a0+8]+13]:1.
  Stores 1 bytes from a0 to [a0+8] +0xd (`sb` at 0x100da01c) with value [[a0+8]+14]:1.
  Stores 1 bytes from v1 to [a0+8] +0xf (`sb` at 0x100da028) with value [[a0+8]+12]:1.
  Stores 1 bytes from at to [a0+8] +0xc (`sb` at 0x100da02c) with value [[a0+8]+15]:1.
  Stores 1 bytes from t9 to [a0+8] +0xa (`sb` at 0x100da038) with value [[a0+8]+9]:1.
  Stores 1 bytes from t8 to [a0+8] +0x9 (`sb` at 0x100da03c) with value [[a0+8]+10]:1.
  Stores 1 bytes from s1 to [a0+8] +0xb (`sb` at 0x100da04c) with value [[a0+8]+8]:1.
  Stores 1 bytes from t3 to [a0+8] +0x8 (`sb` at 0x100da058) with value [[a0+8]+11]:1.
  Stores 1 bytes from ra to ? (base unknown) (`sb` at 0x100da064).
  Stores 1 bytes from t9 to ? (base unknown) (`sb` at 0x100da068).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x100da074).
  Stores 1 bytes from t3 to ? (base unknown) (`sb` at 0x100da07c).
  Calls `ProcDisplayImageBuffers..BKC [0x100f1450]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=a0 at entry (arg0) (`j` at 0x100d9f2c).
  At `beq` at 0x100d9ac4 (target 0x100d9ae0), taken when at(=[a0+72]) >= 0x2 (unsigned) and falls through when at(=[a0+72]) < 0x2 (unsigned).
  At `bne` at 0x100d9b1c (target 0x100d9e6c), taken when v0(=[[a0+8]+2]:2-2) < 0x8 (unsigned) and falls through when v0(=[[a0+8]+2]:2-2) >= 0x8 (unsigned).
  At `bne` at 0x100d9b24 (target 0x100d9f50), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `bne` at 0x100d9c5c (target 0x100d9f3c), taken when a6(?) < 0x8 (unsigned) and falls through when a6(?) >= 0x8 (unsigned).
  At `beq` at 0x100d9d70 (target 0x100d9b50), taken when a6(?) >= 0x8 (unsigned) and falls through when a6(?) < 0x8 (unsigned).
  At `beq` at 0x100d9e80 (target 0x100d9f1c), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `bne` at 0x100d9e88 (target 0x100d9e94), taken when a5(?) != 0 and falls through when a5(?) == 0.
  At `bne` at 0x100d9e98 (target 0x100da05c), taken when s0(?) < 0x2 (signed) and falls through when s0(?) >= 0x2 (signed).
  At `beq` at 0x100d9ee4 (target 0x100d9f34), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `bne` at 0x100d9f10 (target 0x100d9ec0), taken when at(?) != 0 and falls through when at(?) == 0.
  Returns v0 = 0x10 (`jr` at 0x100d9ad8).

- `DestroySubwindows` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100de460 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100de460-0x100de9c8 (1384 bytes).
  Stores 4 bytes from t0 to ? (base unknown) (`sw` at 0x100de4fc) with value [[sym(WindowTable)]].
  Stores 4 bytes from a7 to ? (base unknown) (`sw` at 0x100de50c) with value [[[sym(WindowTable)]]+4].
  Stores 4 bytes from a1 to ? (base unknown) (`sw` at 0x100de5f0).
  Stores 4 bytes from s6 to ? (base unknown) (`sw` at 0x100de604).
  Stores 4 bytes from t8 to [[sym(clients)]] +0x30 (`sw` at 0x100de66c) with value [[[sym(WindowTable)]]+4].
  Stores 4 bytes from t3 to [[sym(clients)]] +0x2c (`sw` at 0x100de674) with value [[sym(WindowTable)]].
  Stores 4 bytes from s0 to table(0x102c71c0) +0x0 (`sw` at 0x100de704).
  Stores 4 bytes from s0 to abs 0x102c71b8 (Lfree..4) (`sw` at 0x100de708).
  Stores 4 bytes from a4 to abs 0x102c7240 (freeidx..3) (`sw` at 0x100de718).
  Stores 4 bytes from t2 to ? (base unknown) (`sw` at 0x100de7a8) with value [[[sym(WindowTable)]]+4].
  Stores 4 bytes from t1 to ? (base unknown) (`sw` at 0x100de7b0) with value [[sym(WindowTable)]].
  Stores 4 bytes from t9 to ? (base unknown) (`sw` at 0x100de7d4) with value [[[sym(WindowTable)]]+4].
  Stores 4 bytes from t8 to ? (base unknown) (`sw` at 0x100de7dc) with value [[sym(WindowTable)]].
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x100de808) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x100de810) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x100de81c) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x100de824) with value 0x0.
  Stores 4 bytes from t0 to ? (base unknown) (`sw` at 0x100de854) with value [[sym(WindowTable)]].
  Stores 4 bytes from a7 to ? (base unknown) (`sw` at 0x100de864) with value [[[sym(WindowTable)]]+4].
  Stores 4 bytes from zero to [[sym(clients)]] +0x34 (`sw` at 0x100de890) with value 0x0.
  Stores 4 bytes from zero to [[sym(clients)]] +0x38 (`sw` at 0x100de898) with value 0x0.
  Calls `UnmapSubwindows [0x101b06f0]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x100de48c).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x100de6ac).
  Calls `__libc_lockmalloc` via got with a0=?, a1=?, a2=?, a3=[0x102c7240] (`jalr` at 0x100de6c4).
  Calls `realfree..NL [0x1025db70]` via direct with a0=entry(0x102c71c0), a1=table(0x102c5d40), a2=([0x102c7240] << 0x2), a3=[0x102c7240], a5=[sym(__us_rsthread_malloc)] (`jal` at 0x100de6e8).
  Calls `__libc_unlockmalloc` via got with a0=?, a1=table(0x102c5d40), a2=([0x102c7240] << 0x2), a3=[0x102c7240], a5=[sym(__us_rsthread_malloc)] (`jalr` at 0x100de720).
  Calls `(unknown callee)` via register with a0=?, a1=sp-144, a2=?, a3=[0x102c60fc], a5=[sym(clients)], a7=0x4 (`jalr` at 0x100de788).
  Calls `FatalError [0x10094f20]` via direct with a0=?, a1=[[a0+40]+4], a2=?, a3=? (`jal` at 0x100de878).
  At `beq` at 0x100de49c (target 0x100de89c), taken when a1(=[a0+40]) == 0 and falls through when a1(=[a0+40]) != 0.
  At `beq` at 0x100de4e4 (target 0x100de510), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `bne` at 0x100de4f0 (target 0x100de510), taken when a6(?) != s3(=[[a0+40]+4]) and falls through when a6(?) == s3(=[[a0+40]+4]).
  At `beq` at 0x100de510 (target 0x100de870), taken when a3(=one of 0x0, 0x1) == 0 and falls through when a3(=one of 0x0, 0x1) != 0.
  At `beq` at 0x100de520 (target 0x100de89c), taken when a1(=[a0+40]) == 0 and falls through when a1(=[a0+40]) != 0.
  At `beq` at 0x100de554 (target 0x100de870), taken when a4(?) >= 0x100 (signed) and falls through when a4(?) < 0x100 (signed).
  At `beq` at 0x100de56c (target 0x100de870), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `beq` at 0x100de574 (target 0x100de8cc), taken when a1(?) == t9(=0x6) and falls through when a1(?) != t9(=0x6).
  At `beq` at 0x100de57c (target 0x100de8f8), taken when a1(?) == ra(=0x7) and falls through when a1(?) != ra(=0x7).
  At `beq` at 0x100de584 (target 0x100de924), taken when a1(?) == at(=0x8) and falls through when a1(?) != at(=0x8).
  At `beq` at 0x100de58c (target 0x100de950), taken when a1(?) == v0(=0x9) and falls through when a1(?) != v0(=0x9).
  At `beq` at 0x100de594 (target 0x100de970), taken when a1(?) == v1(=0xa) and falls through when a1(?) != v1(=0xa).
  At `beq` at 0x100de59c (target 0x100de990), taken when a1(?) == a0(=0xb) and falls through when a1(?) != a0(=0xb).
  At `bne` at 0x100de5bc (target 0x100de9b0), taken when s0(?) != 0 and falls through when s0(?) == 0.
  At `beq` at 0x100de5d8 (target 0x100de4d0), taken when s0(?) == 0 and falls through when s0(?) != 0.
  At `bne` at 0x100de5e8 (target 0x100de5d0), taken when t8(?) != s3(=[[a0+40]+4]) and falls through when t8(?) == s3(=[[a0+40]+4]).
  At `beq` at 0x100de600 (target 0x100de688), taken when (s5(=0xffffffff80000000) & s1(?)) == 0 and falls through when (s5(=0xffffffff80000000) & s1(?)) != 0.
  At `beq` at 0x100de624 (target 0x100de688), taken when t8(?) == 0 and falls through when t8(?) != 0.
  At `blez` at 0x100de634 (target 0x100de688), taken when a3(=[0x102c5d70]) <= 0 (signed) and falls through when a3(=[0x102c5d70]) > 0 (signed).
  At `beq` at 0x100de644 (target 0x100de680), taken when t2(?) == 0 and falls through when t2(?) != 0.
  At `beq` at 0x100de650 (target 0x100de680), taken when a3(=[[sym(clients)]]) == 0 and falls through when a3(=[[sym(clients)]]) != 0.
  At `bne` at 0x100de65c (target 0x100de888), taken when t2(=[[[sym(clients)]]+48]) != a5(?) and falls through when t2(=[[[sym(clients)]]+48]) == a5(?).
  At `bnel` at 0x100de680 (target 0x100de7ec), taken when a7(?) != 0 and falls through when a7(?) == 0.
  At `beq` at 0x100de688 (target 0x100de6b8), taken when s1(?) == 0 and falls through when s1(?) != 0.
  At `beq` at 0x100de6b8 (target 0x100de6d0), taken when at(=[sym(__us_rsthread_malloc)]) == 0 and falls through when at(=[sym(__us_rsthread_malloc)]) != 0.
  At `beq` at 0x100de6e0 (target 0x100de704), taken when a0(=entry(0x102c71c0)) == 0 and falls through when a0(=entry(0x102c71c0)) != 0.
  At `beq` at 0x100de714 (target 0x100de728), taken when a5(=[sym(__us_rsthread_malloc)]) == 0 and falls through when a5(=[sym(__us_rsthread_malloc)]) != 0.
  At `beq` at 0x100de73c (target 0x100de748), taken when a6(?) == s6(?) and falls through when a6(?) != s6(?).
  At `beq` at 0x100de74c (target 0x100de790), taken when a3(=[0x102c60fc]) == 0 and falls through when a3(=[0x102c60fc]) != 0.
  At `beq` at 0x100de75c (target 0x100de790), taken when a7(?) >= a1(?) (unsigned) and falls through when a7(?) < a1(?) (unsigned).
  At `beq` at 0x100de778 (target 0x100de790), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `beq` at 0x100de7b8 (target 0x100de7e0), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `bne` at 0x100de7c4 (target 0x100de814), taken when t3(?) != a5(?) and falls through when t3(?) == a5(?).
  At `beq` at 0x100de7e0 (target 0x100de688), taken when a4(?) == a6(=([sym(clients)] + ([0x102c5d70] << 0x2))) and falls through when a4(?) != a6(=([sym(clients)] + ([0x102c5d70] << 0x2))).
  At `beq` at 0x100de7ec (target 0x100de7b4), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `beq` at 0x100de7f8 (target 0x100de7a0), taken when ra(?) == a5(?) and falls through when ra(?) != a5(?).
  At `bne` at 0x100de800 (target 0x100de7b4), taken when a7(?) != a5(?) and falls through when a7(?) == a5(?).
  At `bne` at 0x100de814 (target 0x100de7e0), taken when a7(?) != a5(?) and falls through when a7(?) == a5(?).
  At `beq` at 0x100de83c (target 0x100de870), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `bne` at 0x100de848 (target 0x100de874), taken when a6(?) != s3(=[[a0+40]+4]) and falls through when a6(?) == s3(=[[a0+40]+4]).
  At `bne` at 0x100de888 (target 0x100de680), taken when a1(=[[[sym(clients)]]+56]) != a5(?) and falls through when a1(=[[[sym(clients)]]+56]) == a5(?).
  Returns v0 = ? (`jr` at 0x100de8c4).
  The instructions from 0x100de4c8 to 0x100de4cc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x100de5cc to 0x100de5cc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x100de798 to 0x100de79c are not reached by any path from the entry, and their branches are not listed.

- `ProcXineramaMapWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100e02d0 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100e02d0-0x100e044c (380 bytes).
  Stores 4 bytes from t1 to abs 0x102ca77c (xineramaPostponeEvents) (`sw` at 0x100e0364) with value 0x1.
  Stores 4 bytes from t1 to sym(panoramiXMode) +0x0 (`sw` at 0x100e0370) with value 0x1.
  Stores 4 bytes from t8 to ? (base unknown) (`sw` at 0x100e03a4).
  Stores 4 bytes from ra to sym(panoramiXScreen0) +0x0 (`sw` at 0x100e03a8) with value 0x1.
  Stores 4 bytes from zero to sym(panoramiXScreen0) +0x0 (`sw` at 0x100e03dc) with value 0x0.
  Stores 4 bytes from zero to abs 0x102ca77c (xineramaPostponeEvents) (`sw` at 0x100e03fc) with value 0x0.
  Stores 4 bytes from zero to sym(panoramiXMode) +0x0 (`sw` at 0x100e040c) with value 0x0.
  Stores 4 bytes from zero to sym(panoramiXScreen0) +0x0 (`sw` at 0x100e0428) with value 0x0.
  Calls `SecurityLookupIDByType [0x100d6140]` via direct with a0=a0 at entry (arg0), a1=[[a0+8]+4], a2=[sym(XRT_WINDOW)], a3=0x1 (`jal` at 0x100e0334).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=sym(panoramiXScreen0) (`jalr` at 0x100e03bc).
  Calls `XineramaDeliverVisibilityNotify [0x10197300]` via direct with a0=?, a1=?, a2=?, a3=?, a6=sym(panoramiXScreen0) (`jal` at 0x100e03e8).
  Calls `XineramaDeliverExpose [0x100e7410]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x100e03f0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[0x102c5f68], a3=sym(ProcVector), a4=[0x102c5f1c], a5=ret(SecurityLookupIDByType), a6=sym(panoramiXScreen0) (`jalr` at 0x100e042c).
  At `beq` at 0x100e02f4 (target 0x100e0318), taken when v1(=[a0+72]) == a1(=0x2) and falls through when v1(=[a0+72]) != a1(=0x2).
  At `beq` at 0x100e034c (target 0x100e0410), taken when a2(=[0x102c5f68]) == 0 and falls through when a2(=[0x102c5f68]) != 0.
  At `beq` at 0x100e0354 (target 0x100e042c), taken when v0(=ret(SecurityLookupIDByType)) == 0 and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  At `blez` at 0x100e036c (target 0x100e0440), taken when a4(=[0x102c5f1c]) <= 0 (signed) and falls through when a4(=[0x102c5f1c]) > 0 (signed).
  At `beq` at 0x100e0384 (target 0x100e0424), taken when a3(?) >= t3(=[0x102c5f1c]) (signed) and falls through when a3(?) < t3(=[0x102c5f1c]) (signed).
  At `bne` at 0x100e03a0 (target 0x100e03b0), taken when a5(?) != a4(?) and falls through when a5(?) == a4(?).
  At `beq` at 0x100e03e0 (target 0x100e037c), taken when v0(=ret(?)) == 0 and falls through when v0(=ret(?)) != 0.
  At `bne` at 0x100e0410 (target 0x100e0360), taken when v0(=ret(SecurityLookupIDByType)) != 0 and falls through when v0(=ret(SecurityLookupIDByType)) == 0.
  Returns v0 = 0x10 (`jr` at 0x100e0300).
  Returns v0 = ? (`jr` at 0x100e0310).

- `DefineInitialRootWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100e0a00 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100e0a00-0x100e0c08 (520 bytes).
  Stores 4 bytes from s0 to abs 0x102c601c (sprite+52) (`sw` at 0x100e0a54) with value [a0+16].
  Stores 4 bytes from a3 to abs 0x102c6014 (sprite+44) (`sw` at 0x100e0a68).
  Stores 4 bytes from s0 to abs 0x102c6010 (sprite+40) (`sw` at 0x100e0a70) with value [a0+16].
  Stores 4 bytes from a3 to abs 0x102c6008 (sprite+32) (`sw` at 0x100e0a78).
  Stores 4 bytes from a2 to abs 0x102c600c (sprite+36) (`sw` at 0x100e0a84).
  Stores 4 bytes from a2 to abs 0x102c6018 (sprite+48) (`sw` at 0x100e0a88).
  Stores 2 bytes from a1 to abs 0x102c5ff0 (sprite+8) (`sh` at 0x100e0a90) with value [[a0+16]+8]:2.
  Stores 4 bytes from s1 to abs 0x102c6004 (sprite+28) (`sw` at 0x100e0a98) with value a0.
  Stores 2 bytes from a0 to abs 0x102c5ff2 (sprite+10) (`sh` at 0x100e0a9c) with value [[a0+16]+10]:2.
  Stores 4 bytes from a5 to abs 0x102c5fe8 (sprite) (`sw` at 0x100e0ae8).
  Stores 4 bytes from s1 to [0x102c5fd8] +0x0 (`sw` at 0x100e0aec) with value a0.
  Stores 4 bytes from a4 to abs 0x102c5fe0 (`sw` at 0x100e0af8) with value 0x1.
  Stores 4 bytes from zero to abs 0x102c5ff4 (sprite+12) (`sw` at 0x100e0b18) with value 0x0.
  Stores 2 bytes from t3 to abs 0x102c5fec (sprite+4) (`sh` at 0x100e0b8c).
  Stores 2 bytes from t2 to abs 0x102c5fee (sprite+6) (`sh` at 0x100e0b9c).
  Stores 2 bytes from t1 to abs 0x102c5ff0 (sprite+8) (`sh` at 0x100e0bac).
  Stores 4 bytes from s0 to abs 0x102c6020 (sprite+56) (`sw` at 0x100e0bb4) with value [a0+16].
  Stores 4 bytes from zero to abs 0x102c607c (sprite+148) (`sw` at 0x100e0bb8) with value 0x0.
  Stores 2 bytes from t1 to abs 0x102c6000 (sprite+24) (`sh` at 0x100e0bbc).
  Stores 2 bytes from t2 to abs 0x102c5ffe (sprite+22) (`sh` at 0x100e0bc0).
  Stores 2 bytes from t3 to abs 0x102c5ffc (sprite+20) (`sh` at 0x100e0bc4).
  Stores 2 bytes from t0 to abs 0x102c6002 (sprite+26) (`sh` at 0x100e0bcc).
  Stores 2 bytes from t0 to abs 0x102c5ff2 (sprite+10) (`sh` at 0x100e0bd0).
  Calls `LbxChangeWindowProperty [0x100d3cd0]` via direct with a0=0x0, a1=a0 at entry (arg0), a2=0x45, a3=0x13, a4=0x20, a5=0x0, a6=0x1, a7=0x1 (`jal` at 0x100e0a4c).
  Calls `(unknown callee)` via register with a0=[a0+16], a1=[0x102c5fe8], a2=0x102c5fec, a3=0x102c5ffc, a4=0x1, a6=[0x102c5fd8] (`jalr` at 0x100e0b10).
  Calls `(unknown callee)` via register with a0=[a0+16], a1=?, a2=?, a3=? (`jalr` at 0x100e0b24).
  Calls `(unknown callee)` via register with a0=[a0+16], a1=[0x102c6008], a2=[0x102c600c], a3=0x0 (`jalr` at 0x100e0b3c).
  Calls `(unknown callee)` via register with a0=[a0+16], a1=[0x102c5fe8], a2=?, a3=? (`jalr` at 0x100e0b4c).
  Calls `(unknown callee)` via register with a0=0x102c6024, a1=0x0, a2=0x1, a3=?, a7=[sym(panoramiXDisabled)] (`jalr` at 0x100e0be4).
  Calls `(unknown callee)` via register with a0=0x102c6030, a1=0x0, a2=0x1, a3=? (`jalr` at 0x100e0bf8).
  At `bltz` at 0x100e0aac (target 0x100e0b74), taken when v1(=([a0+124] << 0x3)) < 0 (signed) and falls through when v1(=([a0+124] << 0x3)) >= 0 (signed).
  At `beq` at 0x100e0ab4 (target 0x100e0ac4), taken when a0(=[a0+120]) == 0 and falls through when a0(=[a0+120]) != 0.
  At `beq` at 0x100e0ad8 (target 0x100e0ad0), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `beq` at 0x100e0b5c (target 0x100e0b7c), taken when a7(=[sym(panoramiXDisabled)]) == 0 and falls through when a7(=[sym(panoramiXDisabled)]) != 0.
  Returns v0 = ret(?); f0 = ret(?) (`jr` at 0x100e0b6c).

- `ProcSetBufferAttributes..FKC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100e0c10 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100e0c10-0x100e14a0 (2192 bytes).
  Stores 4 bytes from s7 to ? (base unknown) (`sw` at 0x100e0de4).
  Stores 4 bytes from s7 to ? (base unknown) (`sw` at 0x100e0e88).
  Stores 4 bytes from a1 to ? (base unknown) (`sw` at 0x100e0eb4).
  Stores 4 bytes from s7 to ret(Xalloc) +0x8 (`sw` at 0x100e0ed0).
  Stores 4 bytes from v0 to ret(Xalloc) +0x4 (`sw` at 0x100e0ee8) with value ret(FakeClientID).
  Stores 4 bytes from a1 to ret(Xalloc) +0x0 (`sw` at 0x100e0f04).
  Stores 4 bytes from s1 to ? (base unknown) (`sw` at 0x100e0f10) with value ret(Xalloc).
  Stores 4 bytes from v0 to ? (base unknown) (`sw` at 0x100e0ff4).
  Stores 4 bytes from at to ? (base unknown) (`sw` at 0x100e1014).
  Stores 4 bytes from t9 to [[sym(clients)]] +0x30 (`sw` at 0x100e1084) with value [[[sym(WindowTable)]]+4].
  Stores 4 bytes from t8 to [[sym(clients)]] +0x2c (`sw` at 0x100e108c) with value [[sym(WindowTable)]].
  Stores 4 bytes from s8 to table(0x102c71c0) +0x0 (`sw` at 0x100e112c).
  Stores 4 bytes from s8 to abs 0x102c71b8 (Lfree..4) (`sw` at 0x100e1130).
  Stores 4 bytes from a2 to abs 0x102c7240 (freeidx..3) (`sw` at 0x100e1140).
  Stores 4 bytes from t2 to ? (base unknown) (`sw` at 0x100e11e4) with value [[[sym(WindowTable)]]+4].
  Stores 4 bytes from a7 to ? (base unknown) (`sw` at 0x100e11ec) with value [[sym(WindowTable)]].
  Stores 4 bytes from t9 to ? (base unknown) (`sw` at 0x100e1210) with value [[[sym(WindowTable)]]+4].
  Stores 4 bytes from t8 to ? (base unknown) (`sw` at 0x100e1218) with value [[sym(WindowTable)]].
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x100e124c) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x100e1254) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x100e1260) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x100e1268) with value 0x0.
  Stores 4 bytes from a7 to ? (base unknown) (`sw` at 0x100e1294) with value [[sym(WindowTable)]].
  Stores 4 bytes from a6 to ? (base unknown) (`sw` at 0x100e12a4) with value [[[sym(WindowTable)]]+4].
  Stores 4 bytes from s7 to a0 (arg0 at entry) +0x18 (`sw` at 0x100e12dc).
  Stores 4 bytes from zero to [[sym(clients)]] +0x34 (`sw` at 0x100e130c) with value 0x0.
  Stores 4 bytes from zero to [[sym(clients)]] +0x38 (`sw` at 0x100e1314) with value 0x0.
  Stores 4 bytes from t0 to a0 (arg0 at entry) +0x18 (`sw` at 0x100e1360).
  Stores 4 bytes from a5 to ? (base unknown) (`sw` at 0x100e146c) with value [[sym(WindowTable)]].
  Stores 4 bytes from a4 to ? (base unknown) (`sw` at 0x100e1480) with value [[[sym(WindowTable)]]+4].
  Calls `SecurityLookupIDByType [0x100d6140]` via direct with a0=0x0, a1=[[a0+8]+4], a2=[0x102ca7ec], a3=0x0 (`jal` at 0x100e0c70).
  Calls `Xalloc [0x1020aeb0]` via direct with a0=0xc, a1=?, a2=?, a3=? (`jal` at 0x100e0ebc).
  Calls `FakeClientID [0x10069920]` via direct with a0=[a0], a1=?, a2=?, a3=? (`jal` at 0x100e0ed4).
  Calls `AddResource [0x1010ec30]` via direct with a0=ret(FakeClientID), a1=[0x102ca7f4], a2=?, a3=? (`jal` at 0x100e0ef0).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x100e10c0).
  Calls `__libc_lockmalloc` via got with a0=?, a1=[0x102c7240], a2=?, a3=? (`jalr` at 0x100e10e0).
  Calls `realfree..NL [0x1025db70]` via direct with a0=entry(0x102c71c0), a1=[0x102c7240], a2=entry(0x102c71c0), a3=? (`jal` at 0x100e1108).
  Calls `__libc_unlockmalloc` via got with a0=sym(__us_rsthread_malloc), a1=[0x102c7240], a2=?, a3=[sym(__us_rsthread_malloc)] (`jalr` at 0x100e1148).
  Calls `(unknown callee)` via register with a0=?, a1=sp-176, a2=[0x102c60fc], a3=?, a4=0x4, a5=[sym(clients)] (`jalr` at 0x100e11c4).
  Calls `FatalError [0x10094f20]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x100e12b4).
  Calls `Xfree [0x101fc9c0]` via direct with a0=ret(Xalloc), a1=?, a2=?, a3=? (`jal` at 0x100e1490).
  At `beq` at 0x100e0c28 (target 0x100e0c58), taken when at(=[a0+72]) >= 0x3 (unsigned) and falls through when at(=[a0+72]) < 0x3 (unsigned).
  At `beq` at 0x100e0c78 (target 0x100e12c4), taken when v0(=ret(SecurityLookupIDByType)) == 0 and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  At `blez` at 0x100e0c98 (target 0x100e0ce8), taken when a0(=[[([ret(SecurityLookupIDByType)+132] + ([0x102cc3a8] << 0x2))]+4]) <= 0 (signed) and falls through when a0(=[[([ret(SecurityLookupIDByType)+132] + ([0x102cc3a8] << 0x2))]+4]) > 0 (signed).
  At `beq` at 0x100e0cd0 (target 0x100e0cfc), taken when a4(?) == a1(?) and falls through when a4(?) != a1(?).
  At `bnel` at 0x100e0cdc (target 0x100e0cd0), taken when v0(?) != a2(?) and falls through when v0(?) == a2(?).
  At `beq` at 0x100e0cfc (target 0x100e0ce8), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0x100e0d88 (target 0x100e12fc), taken when a5(?) != a6(?) and falls through when a5(?) == a6(?).
  At `beq` at 0x100e0da4 (target 0x100e1318), taken when s4(?) == 0 and falls through when s4(?) != 0.
  At `bne` at 0x100e0dec (target 0x100e12e0), taken when t3(=[a0+40]) != 0 and falls through when t3(=[a0+40]) == 0.
  At `beq` at 0x100e0df8 (target 0x100e1318), taken when s4(?) == 0 and falls through when s4(?) != 0.
  At `bne` at 0x100e0e1c (target 0x100e1338), taken when v0(=0x1) != t9(?) and falls through when v0(=0x1) == t9(?).
  At `bne` at 0x100e0e2c (target 0x100e12dc), taken when (ra(=0xfffffffff9ff7fff) & s7(?)) != 0 and falls through when (ra(=0xfffffffff9ff7fff) & s7(?)) == 0.
  At `beq` at 0x100e0e4c (target 0x100e0de4), taken when at(?) == s2(=a0) and falls through when at(?) != s2(=a0).
  At `beq` at 0x100e0e54 (target 0x100e0ebc), taken when s1(?) == 0 and falls through when s1(?) != 0.
  At `beq` at 0x100e0e68 (target 0x100e0ebc), taken when s1(?) == 0 and falls through when s1(?) != 0.
  At `bne` at 0x100e0e78 (target 0x100e0e64), taken when v0(=[a0+4]) != v1(?) and falls through when v0(=[a0+4]) == v1(?).
  At `beq` at 0x100e0e80 (target 0x100e0f20), taken when s7(?) == 0 and falls through when s7(?) != 0.
  At `beq` at 0x100e0e8c (target 0x100e0ebc), taken when s1(?) == 0 and falls through when s1(?) != 0.
  At `beq` at 0x100e0e98 (target 0x100e0f14), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0x100e0ea8 (target 0x100e0ea0), taken when v0(?) != 0 and falls through when v0(?) == 0.
  At `beq` at 0x100e0ec4 (target 0x100e1484), taken when v0(=ret(Xalloc)) == 0 and falls through when v0(=ret(Xalloc)) != 0.
  At `beq` at 0x100e0ef8 (target 0x100e148c), taken when v0(=ret(AddResource)) == 0 and falls through when v0(=ret(AddResource)) != 0.
  At `beq` at 0x100e0f40 (target 0x100e12ac), taken when a5(?) >= 0x100 (signed) -> outside and falls through when a5(?) < 0x100 (signed).
  At `beq` at 0x100e0f60 (target 0x100e12ac), taken when a7(?) == 0 -> outside and falls through when a7(?) != 0.
  At `beq` at 0x100e0f6c (target 0x100e1364), taken when v0(?) == t0(=0x6) and falls through when v0(?) != t0(=0x6).
  At `beq` at 0x100e0f74 (target 0x100e1390), taken when v0(?) == t2(=0x7) and falls through when v0(?) != t2(=0x7).
  At `beq` at 0x100e0f7c (target 0x100e13bc), taken when v0(?) == t3(=0x8) and falls through when v0(?) != t3(=0x8).
  At `beq` at 0x100e0f84 (target 0x100e13e8), taken when v0(?) == t8(=0x9) and falls through when v0(?) != t8(=0x9).
  At `beq` at 0x100e0f8c (target 0x100e1408), taken when v0(?) == t9(=0xa) and falls through when v0(?) != t9(=0xa).
  At `beq` at 0x100e0f94 (target 0x100e1428), taken when v0(?) == ra(=0xb) and falls through when v0(?) != ra(=0xb).
  At `beq` at 0x100e0fb8 (target 0x100e1444), taken when s8(?) == 0 and falls through when s8(?) != 0.
  At `beq` at 0x100e0fd4 (target 0x100e126c), taken when s8(?) == 0 and falls through when s8(?) != 0.
  At `bne` at 0x100e0fe8 (target 0x100e0fc8), taken when ra(?) != s6(?) and falls through when ra(?) == s6(?).
  At `beq` at 0x100e1010 (target 0x100e1098), taken when (a1(=0xffffffff80000000) & a0(?)) == 0 and falls through when (a1(=0xffffffff80000000) & a0(?)) != 0.
  At `beq` at 0x100e1034 (target 0x100e1098), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `blez` at 0x100e1044 (target 0x100e1098), taken when v0(=[0x102c5d70]) <= 0 (signed) and falls through when v0(=[0x102c5d70]) > 0 (signed).
  At `beq` at 0x100e1054 (target 0x100e1090), taken when t3(?) == 0 and falls through when t3(?) != 0.
  At `beq` at 0x100e1068 (target 0x100e1090), taken when v0(=[[sym(clients)]]) == 0 and falls through when v0(=[[sym(clients)]]) != 0.
  At `bne` at 0x100e1074 (target 0x100e1304), taken when t3(=[[[sym(clients)]]+48]) != a2(?) and falls through when t3(=[[[sym(clients)]]+48]) == a2(?).
  At `bnel` at 0x100e1090 (target 0x100e1228), taken when a7(?) != 0 and falls through when a7(?) == 0.
  At `beq` at 0x100e1098 (target 0x100e10cc), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `beq` at 0x100e10d4 (target 0x100e10f0), taken when v0(=[sym(__us_rsthread_malloc)]) == 0 and falls through when v0(=[sym(__us_rsthread_malloc)]) != 0.
  At `beq` at 0x100e1100 (target 0x100e1128), taken when a2(=entry(0x102c71c0)) == 0 and falls through when a2(=entry(0x102c71c0)) != 0.
  At `beq` at 0x100e113c (target 0x100e1154), taken when a3(=[sym(__us_rsthread_malloc)]) == 0 and falls through when a3(=[sym(__us_rsthread_malloc)]) != 0.
  At `beq` at 0x100e1170 (target 0x100e1180), taken when a2(?) == a3(?) and falls through when a2(?) != a3(?).
  At `beq` at 0x100e1188 (target 0x100e11d0), taken when a2(=[0x102c60fc]) == 0 and falls through when a2(=[0x102c60fc]) != 0.
  At `beq` at 0x100e1198 (target 0x100e11d0), taken when a4(?) >= v0(?) (unsigned) and falls through when a4(?) < v0(?) (unsigned).
  At `beq` at 0x100e11b4 (target 0x100e11d0), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `beq` at 0x100e11f4 (target 0x100e121c), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0x100e1200 (target 0x100e1244), taken when t3(?) != a2(?) and falls through when t3(?) == a2(?).
  At `beq` at 0x100e121c (target 0x100e1098), taken when a5(?) == a6(=([sym(clients)] + ([0x102c5d70] << 0x2))) and falls through when a5(?) != a6(=([sym(clients)] + ([0x102c5d70] << 0x2))).
  At `beq` at 0x100e1228 (target 0x100e11f0), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0x100e1234 (target 0x100e1258), taken when ra(?) != a2(?) and falls through when ra(?) == a2(?).
  At `bne` at 0x100e1244 (target 0x100e121c), taken when a7(?) != a2(?) and falls through when a7(?) == a2(?).
  At `bne` at 0x100e1258 (target 0x100e11f0), taken when a7(?) != a2(?) and falls through when a7(?) == a2(?).
  At `beq` at 0x100e127c (target 0x100e12a8), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0x100e1288 (target 0x100e12a8), taken when a4(?) != s6(?) and falls through when a4(?) == s6(?).
  At `bne` at 0x100e12a8 (target 0x100e0e8c), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `bne` at 0x100e1304 (target 0x100e1090), taken when a1(=[[[sym(clients)]]+56]) != a2(?) and falls through when a1(=[[[sym(clients)]]+56]) == a2(?).
  At `beq` at 0x100e1450 (target 0x100e12b0), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0x100e145c (target 0x100e12ac), taken when a3(?) != s6(?) -> outside and falls through when a3(?) == s6(?).
  Returns v0 = 0x10 (`jr` at 0x100e0c38).
  Returns v0 = ? (`jr` at 0x100e0c50).
  Returns v0 = [0x102ca7e8]; f0 = ret(SecurityLookupIDByType) (`jr` at 0x100e0cf4).
  Returns v0 = [0x102ca7e8]; f0 = ret(SecurityLookupIDByType) (`jr` at 0x100e12d4).
  The instructions from 0x100e0eb8 to 0x100e0eb8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x100e11d8 to 0x100e11dc are not reached by any path from the entry, and their branches are not listed.
- `LookupWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100e63c0 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100e63c0-0x100e63ec (44 bytes).
  Calls `SecurityLookupWindow [0x1006ce40]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x0, a3=a3 at entry (arg3) (`jal` at 0x100e63d4).
  Returns v0 = ret(SecurityLookupWindow); f0 = ret(SecurityLookupWindow) (`jr` at 0x100e63e4).

- `RegionOperate..BNC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100e6f00 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100e6f00-0x100e7148 (584 bytes).
  Stores 4 bytes from s0 to a0 (arg0 at entry) +0x18 (`sw` at 0x100e6fdc) with value a5.
  Stores 4 bytes from s2 to a3 (arg3 at entry) +0x0 (`sw` at 0x100e7094) with value a4.
  Stores 4 bytes from s2 to a3 (arg3 at entry) +0x0 (`sw` at 0x100e710c) with value a4.
  Stores 4 bytes from v0 to a3 (arg3 at entry) +0x0 (`sw` at 0x100e7128) with value ret(?).
  Stores 4 bytes from v0 to a3 (arg3 at entry) +0x0 (`sw` at 0x100e7144) with value ret(?).
  Calls `(unknown callee)` via register with a0=a4 at entry (arg4), a1=a6 at entry (arg6), a2=a7 at entry (arg7), a3=a3 at entry (arg3) (`jalr` at 0x100e6f50).
  Calls `(unknown callee)` via register with a0=a4 at entry (arg4), a1=?, a2=?, a3=? (`jalr` at 0x100e6f74).
  Calls `(unknown callee)` via register with a0=[a3], a1=a4 at entry (arg4), a2=[a3], a3=a0 at entry (arg0) (`jalr` at 0x100e6ff4).
  Calls `(unknown callee)` via register with a0=a4 at entry (arg4), a1=?, a2=?, a3=? (`jalr` at 0x100e7008).
  Calls `(unknown callee)` via register with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jalr` at 0x100e7014).
  Calls `SendShapeNotify..GNC [0x101b58a0]` via direct with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=?, a3=[sym(panoramiXScreen0)], a4=sym(panoramiXScreen0) (`jal` at 0x100e704c).
  Calls `(unknown callee)` via register with a0=[a3], a1=a3 at entry (arg3), a2=?, a3=? (`jalr` at 0x100e7084).
  Calls `(unknown callee)` via register with a0=[a3], a1=[a3], a2=a4 at entry (arg4), a3=? (`jalr` at 0x100e70ac).
  Calls `(unknown callee)` via register with a0=[a3], a1=[a3], a2=a4 at entry (arg4), a3=a3 at entry (arg3) (`jalr` at 0x100e70d0).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=a4 at entry (arg4), a3=? (`jalr` at 0x100e70f8).
  Calls `(unknown callee)` via register with a0=0x0, a1=0x0, a2=0x4, a3=a0 at entry (arg0) (`jalr` at 0x100e7118).
  Calls `(unknown callee)` via register with a0=a1 at entry (arg1), a1=[a3], a2=[a3], a3=a0 at entry (arg0) (`jalr` at 0x100e7130).
  At `beq` at 0x100e6f2c (target 0x100e6f58), taken when a4 == 0 and falls through when a4 != 0.
  At `bne` at 0x100e6f34 (target 0x100e6f44), taken when a6 != 0 and falls through when a6 == 0.
  At `beq` at 0x100e6f3c (target 0x100e6f5c), taken when a7 == 0 and falls through when a7 != 0.
  At `bne` at 0x100e6f60 (target 0x100e6f98), taken when v0(=[a1+24]) != 0 and falls through when v0(=[a1+24]) == 0.
  At `beq` at 0x100e6f68 (target 0x100e6f80), taken when s2(=a4) == 0 and falls through when s2(=a4) != 0.
  At `beq` at 0x100e6f98 (target 0x100e7070), taken when s0(=a5) == 0 and falls through when s0(=a5) != 0.
  At `beq` at 0x100e6fa4 (target 0x100e7098), taken when s0(=a5) == v1(=0x1) and falls through when s0(=a5) != v1(=0x1).
  At `beq` at 0x100e6fb0 (target 0x100e70bc), taken when s0(=a5) == a0(=0x2) and falls through when s0(=a5) != a0(=0x2).
  At `beq` at 0x100e6fbc (target 0x100e70e0), taken when s0(=a5) == a1(=0x3) and falls through when s0(=a5) != a1(=0x3).
  At `beq` at 0x100e6fc8 (target 0x100e6fe0), taken when s0(=a5) == a2(=0x4) and falls through when s0(=a5) != a2(=0x4).
  At `beq` at 0x100e6fe4 (target 0x100e7110), taken when a0(=[a3]) == 0 and falls through when a0(=[a3]) != 0.
  At `beq` at 0x100e6ffc (target 0x100e7010), taken when s2(=a4) == 0 and falls through when s2(=a4) != 0.
  At `bne` at 0x100e7030 (target 0x100e7048), taken when v1(=[sym(panoramiXDisabled)]) != 0 and falls through when v1(=[sym(panoramiXDisabled)]) == 0.
  At `beq` at 0x100e7038 (target 0x100e704c), taken when v0(=[sym(panoramiXMode)]) == 0 and falls through when v0(=[sym(panoramiXMode)]) != 0.
  At `beq` at 0x100e7040 (target 0x100e7058), taken when a3(=[sym(panoramiXScreen0)]) == 0 and falls through when a3(=[sym(panoramiXScreen0)]) != 0.
  At `beq` at 0x100e7078 (target 0x100e7090), taken when a0(=[a3]) == 0 and falls through when a0(=[a3]) != 0.
  At `beq` at 0x100e709c (target 0x100e6ffc), taken when a0(=[a3]) == 0 and falls through when a0(=[a3]) != 0.
  At `beq` at 0x100e70c0 (target 0x100e7108), taken when a0(=[a3]) == 0 and falls through when a0(=[a3]) != 0.
  At `beq` at 0x100e70e8 (target 0x100e712c), taken when a2(=[a3]) == 0 and falls through when a2(=[a3]) != 0.
  Returns v0 = 0x0 (`jr` at 0x100e6f90).
  Returns v0 = one of 0x0, 0x2 (`jr` at 0x100e7068).

- `MultibufferExtensionInit` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100e7150 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100e7150-0x100e7408 (696 bytes).
  Stores 4 bytes from v0 to abs 0x102cc3a8 (MultibufferWindowIndex) (`sw` at 0x100e7168) with value [0x102c6118].
  Stores 4 bytes from v0 to abs 0x102c6118 (windowPrivateCount..91) (`sw` at 0x100e717c) with value [0x102c6118]+1.
  Stores 4 bytes from a0 to abs 0x102ca7f8 (`sw` at 0x100e7194).
  Stores 4 bytes from v0 to abs 0x102ca7e0 (`sw` at 0x100e71c8) with value ret(MakeAtom).
  Stores 4 bytes from a5 to abs 0x102ca7ec (`sw` at 0x100e71d8).
  Stores 4 bytes from a5 to abs 0x102ca7f0 (`sw` at 0x100e71e8).
  Stores 4 bytes from zero to abs 0x102ca7f4 (`sw` at 0x100e71f8) with value 0x0.
  Stores 4 bytes from v0 to abs 0x102c610c (DeleteFuncs..18) (`sw` at 0x100e7230) with value ret(Xrealloc).
  Stores 4 bytes from a5 to abs 0x102c6100 (lastResourceType..85) (`sw` at 0x100e7238).
  Stores 4 bytes from a5 to abs 0x102ca7f4 (`sw` at 0x100e7240).
  Stores 4 bytes from a2 to ? (base unknown) (`sw` at 0x100e7254) with value 0x101506c0.
  Stores 4 bytes from at to abs 0x102ca7e8 (`sw` at 0x100e72c4) with value [ret(AddXineramaExtension)+24].
  Stores 4 bytes from t3 to abs 0x102ca7e4 (`sw` at 0x100e72cc) with value [ret(AddXineramaExtension)+16].
  Stores 4 bytes from t8 to abs 0x102ca7ec (`sw` at 0x100e72d8) with value ([0x102ca7ec] | 0xffffffffc0000000).
  Stores 4 bytes from t2 to (sym(EventSwapVector) + ([ret(AddXineramaExtension)+16] << 0x2)) +0x0 (`sw` at 0x100e72e8) with value 0x1008a290.
  Stores 4 bytes from t0 to (sym(EventSwapVector) + ([ret(AddXineramaExtension)+16] << 0x2)) +0x4 (`sw` at 0x100e72f4) with value 0x1026f830.
  Stores 4 bytes from v0 to abs 0x102c610c (DeleteFuncs..18) (`sw` at 0x100e735c) with value ret(Xrealloc).
  Stores 4 bytes from a5 to abs 0x102c6100 (lastResourceType..85) (`sw` at 0x100e7360).
  Stores 4 bytes from a1 to ? (base unknown) (`sw` at 0x100e7374) with value 0x101f80a0.
  Stores 4 bytes from v0 to abs 0x102c610c (DeleteFuncs..18) (`sw` at 0x100e73b8) with value ret(Xrealloc).
  Stores 4 bytes from a5 to abs 0x102c6100 (lastResourceType..85) (`sw` at 0x100e73bc).
  Stores 4 bytes from a1 to ? (base unknown) (`sw` at 0x100e73d0) with value 0x101e64e0.
  Stores 4 bytes from zero to abs 0x102ca7f4 (`sw` at 0x100e73e0) with value 0x0.
  Stores 4 bytes from v0 to abs 0x102c610c (DeleteFuncs..18) (`sw` at 0x100e73ec) with value ret(Xrealloc).
  Stores 4 bytes from a0 to abs 0x102c6100 (lastResourceType..85) (`sw` at 0x100e73f0).
  Stores 4 bytes from a2 to ? (base unknown) (`sw` at 0x100e7404) with value 0x10227310.
  Calls `dbcInit [0x1010a0a0]` via direct with a0=?, a1=[sym(XRC_DRAWABLE)], a2=?, a3=? (`jal` at 0x100e7190).
  Calls `strlen` via got with a0=sym(nmbxMaxDisplayBuffersString), a1=?, a2=?, a3=? (`jalr` at 0x100e719c).
  Calls `MakeAtom [0x10238200]` via direct with a0=sym(nmbxMaxDisplayBuffersString), a1=ret(strlen), a2=0x1, a3=? (`jal` at 0x100e71b0).
  Calls `Xrealloc [0x101b9470]` via direct with a0=[0x102c610c], a1=?, a2=?, a3=? (`jal` at 0x100e7218).
  Calls `AddXineramaExtension [0x101f12e0]` via direct with a0=0x102989d8, a1=0x2, a2=0x1, a3=0x1019d470, a4=0x1018e260, a5=0x100a86c0, a6=0x10225f00, a7=0x10072430 (`jal` at 0x100e72a0).
  Calls `Xrealloc [0x101b9470]` via direct with a0=[0x102c610c], a1=([0x102c6100] << 0x2)+8, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[0x102c6100] (`jal` at 0x100e7304).
  Calls `Xrealloc [0x101b9470]` via direct with a0=[0x102c610c], a1=([0x102c6100] << 0x2)+8, a2=?, a3=[0x102c6100]+1, a4=[0x102c6100] (`jal` at 0x100e7334).
  Calls `Xrealloc [0x101b9470]` via direct with a0=[0x102c610c], a1=?, a2=?, a3=?, a5=0x0 (`jal` at 0x100e7390).
  At `beq` at 0x100e7178 (target 0x100e72f8), taken when (at(=[0x102c6104]) & v1(=[0x102c6100]+1)) == 0 and falls through when (at(=[0x102c6104]) & v1(=[0x102c6100]+1)) != 0.
  At `beq` at 0x100e71cc (target 0x100e7328), taken when (a0(=[0x102c6104]) & a3(=[0x102c6100]+1)) == 0 and falls through when (a0(=[0x102c6104]) & a3(=[0x102c6100]+1)) != 0.
  At `beq` at 0x100e71e0 (target 0x100e7384), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `beq` at 0x100e71ec (target 0x100e720c), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `beq` at 0x100e7224 (target 0x100e73e0), taken when v0(=ret(Xrealloc)) == 0 and falls through when v0(=ret(Xrealloc)) != 0.
  At `beq` at 0x100e7250 (target 0x100e7204), taken when a4(=[0x102ca7ec]) == 0 and falls through when a4(=[0x102ca7ec]) != 0.
  At `beq` at 0x100e7258 (target 0x100e7204), taken when a0(=[0x102ca7f0]) == 0 and falls through when a0(=[0x102ca7f0]) != 0.
  At `beq` at 0x100e7260 (target 0x100e7204), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `bne` at 0x100e7314 (target 0x100e73ec), taken when v0(=ret(Xrealloc)) != 0 and falls through when v0(=ret(Xrealloc)) == 0.
  At `bne` at 0x100e7344 (target 0x100e7358), taken when v0(=ret(Xrealloc)) != 0 and falls through when v0(=ret(Xrealloc)) == 0.
  At `bne` at 0x100e73a0 (target 0x100e73b4), taken when v0(=ret(Xrealloc)) != 0 and falls through when v0(=ret(Xrealloc)) == 0.
  Returns v0 = ? (`jr` at 0x100e71fc).
  Returns v0 = ret(Xrealloc); f0 = ret(Xrealloc) (`jr` at 0x100e7204).
  Returns v0 = ret(AddXineramaExtension); f0 = ret(AddXineramaExtension) (`jr` at 0x100e72f0).
  Returns v0 = ret(Xrealloc); f0 = ret(Xrealloc) (`jr` at 0x100e73e4).

- `ProcXineramaSetMBufferAttributes..NKC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100e7c50 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100e7c50-0x100e7eb8 (616 bytes).
  Stores 4 bytes from s1 to sym(panoramiXMode) +0x0 (`sw` at 0x100e7cbc) with value 0x1.
  Stores 4 bytes from s1 to abs 0x102ca77c (xineramaPostponeEvents) (`sw` at 0x100e7cc0) with value 0x1.
  Stores 4 bytes from t8 to [a0+8] +0x4 (`sw` at 0x100e7d08).
  Stores 4 bytes from v0 to [([ret(SecurityLookupWindow)+132] + ([0x102cc3a8] << 0x2))] +0x10 (`sw` at 0x100e7e04).
  Stores 4 bytes from v0 to a0 (arg0 at entry) +0x18 (`sw` at 0x100e7e44).
  Stores 4 bytes from zero to abs 0x102ca77c (xineramaPostponeEvents) (`sw` at 0x100e7e6c) with value 0x0.
  Stores 4 bytes from zero to sym(panoramiXMode) +0x0 (`sw` at 0x100e7e90) with value 0x0.
  Stores 4 bytes from t1 to a0 (arg0 at entry) +0x18 (`sw` at 0x100e7ea8) with value [[a0+8]+8].
  Calls `SecurityLookupIDByType [0x100d6140]` via direct with a0=a0 at entry (arg0), a1=[[a0+8]+4], a2=[sym(XRT_WINDOW)], a3=0x2 (`jal` at 0x100e7c9c).
  Calls `SecurityLookupWindow [0x1006ce40]` via direct with a0=[[a0+8]+4], a1=a0 at entry (arg0), a2=0x0, a3=?, a5=0x10 (`jal` at 0x100e7d24).
  Calls `XineramaDeliverVisibilityNotify [0x10197300]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x100e7e50).
  Calls `XineramaDeliverExpose [0x100e7410]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x100e7e64).
  At `beq` at 0x100e7c6c (target 0x100e7c88), taken when at(=[a0+72]) == v0(=0x3) and falls through when at(=[a0+72]) != v0(=0x3).
  At `beq` at 0x100e7cac (target 0x100e7eac), taken when v0(=ret(SecurityLookupIDByType)) == 0 and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  At `blez` at 0x100e7cdc (target 0x100e7e48), taken when a0(=[0x102c5f1c]) <= 0 (signed) and falls through when a0(=[0x102c5f1c]) > 0 (signed).
  At `bne` at 0x100e7cf4 (target 0x100e7e50), taken when a5(?) != 0 and falls through when a5(?) == 0.
  At `beq` at 0x100e7cfc (target 0x100e7e50), taken when s0(?) == s5(=ret(SecurityLookupIDByType)-8) and falls through when s0(?) != s5(=ret(SecurityLookupIDByType)-8).
  At `bne` at 0x100e7d14 (target 0x100e7cf0), taken when s3(=[a0+72]) < 0x3 (unsigned) and falls through when s3(=[a0+72]) >= 0x3 (unsigned).
  At `bne` at 0x100e7d2c (target 0x100e7d3c), taken when v0(=ret(SecurityLookupWindow)) != 0 and falls through when v0(=ret(SecurityLookupWindow)) == 0.
  At `bne` at 0x100e7d50 (target 0x100e7d60), taken when a0(=[([ret(SecurityLookupWindow)+132] + ([0x102cc3a8] << 0x2))]) != 0 and falls through when a0(=[([ret(SecurityLookupWindow)+132] + ([0x102cc3a8] << 0x2))]) == 0.
  At `beq` at 0x100e7ddc (target 0x100e7dec), taken when a2(=[[a0+8]+2]:2-3) == a3(?) and falls through when a2(=[[a0+8]+2]:2-3) != a3(?).
  At `beq` at 0x100e7dec (target 0x100e7e94), taken when a4(=[[a0+8]+8]) == 0 and falls through when a4(=[[a0+8]+8]) != 0.
  At `beq` at 0x100e7e00 (target 0x100e7e94), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `bne` at 0x100e7e18 (target 0x100e7e9c), taken when s1(=0x1) != a7(?) and falls through when s1(=0x1) == a7(?).
  At `beq` at 0x100e7e24 (target 0x100e7e00), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0x100e7e2c (target 0x100e7e00), taken when s1(=0x1) == v0(?) and falls through when s1(=0x1) != v0(?).
  At `beq` at 0x100e7e34 (target 0x100e7e00), taken when s6(=0x2) == v0(?) and falls through when s6(=0x2) != v0(?).
  Returns v0 = one of 0x3, 0x10 (`jr` at 0x100e7c80).
  Returns v0 = ?; f0 = ret(XineramaDeliverExpose) (`jr` at 0x100e7e8c).
  The instructions from 0x100e7dfc to 0x100e7dfc are not reached by any path from the entry, and their branches are not listed.

- `RegisterAuthorizations` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100ec0d0 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100ec0d0-0x100ec2a4 (468 bytes).
  Stores 1 bytes from a2 to ? (base unknown) (`sb` at 0x100ec1a0).
  Stores 1 bytes from t0 to ? (base unknown) (`sb` at 0x100ec1bc).
  Stores 1 bytes from a7 to ? (base unknown) (`sb` at 0x100ec1c4).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x100ec1cc).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100ec1e0).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100ec1ec).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100ec1f4).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100ec1fc).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100ec20c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100ec218).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100ec220).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100ec228).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100ec23c).
  Stores 4 bytes from t3 to ([0x102c7194] + ([0x102c7190]:1 << 0x3)) -0x4 (`sw` at 0x100ec25c).
  Stores 4 bytes from t1 to ([0x102c7194] + ([0x102c7190]:1 << 0x3)) -0x8 (`sw` at 0x100ec264).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x100ec284).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x100ec28c).
  Stores 1 bytes from ra to ? (base unknown) (`sb` at 0x100ec294).
  Stores 1 bytes from t9 to ? (base unknown) (`sb` at 0x100ec2a0).
  Calls `Xalloc [0x1020aeb0]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x100ec10c).
  Calls `XdmcpReallocARRAYofARRAY8 [0x101f1c20]` via direct with a0=?, a1=[0x102c7190]:1+1, a2=?, a3=? (`jal` at 0x100ec15c).
  Calls `Xfree [0x101fc9c0]` via direct with a0=ret(Xalloc), a1=?, a2=?, a3=? (`jal` at 0x100ec270).
  At `bne` at 0x100ec118 (target 0x100ec14c), taken when v0(=ret(Xalloc)) != 0 and falls through when v0(=ret(Xalloc)) == 0.
  At `bne` at 0x100ec124 (target 0x100ec100), taken when s0(?) != s2(=0x102cc118) and falls through when s0(?) == s2(=0x102cc118).
  At `beq` at 0x100ec164 (target 0x100ec270), taken when v0(=ret(XdmcpReallocARRAYofARRAY8)) == 0 and falls through when v0(=ret(XdmcpReallocARRAYofARRAY8)) != 0.
  At `blez` at 0x100ec16c (target 0x100ec240), taken when s1(?) <= 0 (signed) and falls through when s1(?) > 0 (signed).
  At `beq` at 0x100ec184 (target 0x100ec1a4), taken when (s1(?) & 0x3) == 0 and falls through when (s1(?) & 0x3) != 0.
  At `bne` at 0x100ec19c (target 0x100ec18c), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0x100ec1a8 (target 0x100ec240), taken when a7(?) == 0 and falls through when a7(?) != 0.
  At `bne` at 0x100ec1b0 (target 0x100ec280), taken when t0(?) != 0 and falls through when t0(?) == 0.
  At `beq` at 0x100ec204 (target 0x100ec268), taken when a0(?) == v0(?) and falls through when a0(?) != v0(?).
  At `bne` at 0x100ec230 (target 0x100ec1e0), taken when a0(?) != v0(?) and falls through when a0(?) == v0(?).
  Returns v0 = ? (`jr` at 0x100ec144).

- `glxRemoveDeepWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100effd0 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100effd0-0x100f00b0 (224 bytes).
  Stores 4 bytes from a4 to ? (base unknown) (`sw` at 0x100f0048).
  Stores 4 bytes from a2 to ? (base unknown) (`sw` at 0x100f005c).
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x100f0064) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x100f0068) with value 0x0.
  Stores 4 bytes from a2 to [([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))] +0x78 (`sw` at 0x100f00a4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=[([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))], a5=([sym(glxScreenPrivateIndex)] << 0x2) (`jalr` at 0x100f0070).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=? (`jr` at 0x100f0090).
  At `beq` at 0x100f000c (target 0x100f0098), taken when s0(=[[([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))]+120]) == 0 and falls through when s0(=[[([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))]+120]) != 0.
  At `beq` at 0x100f0014 (target 0x100f0030), taken when a2(=[([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))]) == s0(=[[([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))]+120]) and falls through when a2(=[([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))]) != s0(=[[([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))]+120]).
  At `beq` at 0x100f0020 (target 0x100f0098), taken when s0(?) == 0 and falls through when s0(?) != 0.
  At `bne` at 0x100f0028 (target 0x100f001c), taken when a2(=[([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))]) != s0(?) and falls through when a2(=[([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))]) == s0(?).
  At `beq` at 0x100f0030 (target 0x100f0098), taken when s0(?) == 0 and falls through when s0(?) != 0.
  At `beq` at 0x100f0040 (target 0x100f0050), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `beq` at 0x100f0054 (target 0x100f00a4), taken when a4(?) == 0 and falls through when a4(?) != 0.
  Returns v0 = ? (`jr` at 0x100f009c).

- `ProcDisplayImageBuffers..BKC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100f1450 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100f1450-0x100f1774 (804 bytes).
  Stores 8 bytes from v0 to sp (at entry) -0x80 (`sd` at 0x100f1460) with value s8.
  Stores 8 bytes from s1 to sp (at entry) -0x78 (`sd` at 0x100f146c) with value s1.
  Stores 8 bytes from s3 to sp (at entry) -0x98 (`sd` at 0x100f148c) with value s3.
  Stores 8 bytes from sp to sp (at entry) -0x70 (`sd` at 0x100f14b0).
  Stores 8 bytes from a6 to sp (at entry) -0x68 (`sd` at 0x100f14b8) with value [[a0+8]+4]:2.
  Stores 4 bytes from zero to sp (at entry) -0x20 (`sw` at 0x100f14d4) with value 0x0.
  Stores 4 bytes from zero to sp (at entry) -0x1c (`sw` at 0x100f14d8) with value 0x0.
  Stores 8 bytes from sp to sp (at entry) -0x50 (`sd` at 0x100f14dc).
  Stores 8 bytes from a0 to sp (at entry) -0x58 (`sd` at 0x100f14e0) with value a0.
  Stores 8 bytes from ra to sp (at entry) -0x88 (`sd` at 0x100f14e4) with value ra.
  Stores 8 bytes from s2 to sp (at entry) -0xa0 (`sd` at 0x100f14e8) with value s2.
  Stores 8 bytes from s0 to sp (at entry) -0x90 (`sd` at 0x100f14f4) with value s0.
  Stores 8 bytes from sp to sp (at entry) -0x50 (`sd` at 0x100f14f8).
  Stores 8 bytes from sp to sp (at entry) -0x60 (`sd` at 0x100f14fc).
  Stores 8 bytes from a0 to sp (at entry) -0x58 (`sd` at 0x100f1500) with value a0.
  Stores 8 bytes from ra to sp (at entry) -0x88 (`sd` at 0x100f1504) with value ra.
  Stores 8 bytes from s0 to sp (at entry) -0x90 (`sd` at 0x100f1508) with value s0.
  Stores 4 bytes from a6 to ? (base unknown) (`sw` at 0x100f1548) with value [([ret(SecurityLookupIDByType)+132] + ([0x102cc3a8] << 0x2))].
  Stores 4 bytes from v0 to ? (base unknown) (`sw` at 0x100f159c).
  Stores 4 bytes from t3 to sp (at entry) -0x34 (`sw` at 0x100f15c8) with value [[([ret(SecurityLookupIDByType)+132] + ([0x102cc3a8] << 0x2))]+24].
  Stores 4 bytes from t1 to sp (at entry) -0x38 (`sw` at 0x100f15d4) with value [[([ret(SecurityLookupIDByType)+132] + ([0x102cc3a8] << 0x2))]+20].
  Stores 8 bytes from a0 to sp (at entry) -0x60 (`sd` at 0x100f15e4).
  Stores 4 bytes from t1 to sp (at entry) -0x38 (`sw` at 0x100f15f4) with value [[([ret(SecurityLookupIDByType)+132] + ([0x102cc3a8] << 0x2))]+20]+1.
  Stores 4 bytes from a3 to sp (at entry) -0x34 (`sw` at 0x100f15f8).
  Stores 8 bytes from t8 to sp (at entry) -0x28 (`sd` at 0x100f1604).
  Stores 8 bytes from t9 to sp (at entry) -0x30 (`sd` at 0x100f1610).
  Stores 4 bytes from a3 to sp (at entry) -0x1c (`sw` at 0x100f1638).
  Stores 4 bytes from t1 to sp (at entry) -0x20 (`sw` at 0x100f163c).
  Stores 8 bytes from a7 to sp (at entry) -0x40 (`sd` at 0x100f1668).
  Stores 8 bytes from a6 to sp (at entry) -0x48 (`sd` at 0x100f1670) with value [sym(currentTime)]:8.
  Stores 4 bytes from a2 to a0 (arg0 at entry) +0x18 (`sw` at 0x100f16ec).
  Stores 4 bytes from zero to a0 (arg0 at entry) +0x18 (`sw` at 0x100f1724) with value 0x0.
  Stores 8 bytes from ra to sp (at entry) -0x88 (`sd` at 0x100f1730) with value ra.
  Stores 8 bytes from ra to sp (at entry) -0x88 (`sd` at 0x100f1738) with value ra.
  Stores 4 bytes from a6 to a0 (arg0 at entry) +0x18 (`sw` at 0x100f1754).
  Stores 4 bytes from t0 to a0 (arg0 at entry) +0x18 (`sw` at 0x100f1770).
  Calls `SecurityLookupIDByType [0x100d6140]` via direct with a0=0x0, a1=?, a2=[0x102ca7ec], a3=0x0 (`jal` at 0x100f1520).
  Calls `UpdateCurrentTime [0x10064a10]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x100f1648).
  Calls `QueueDisplayRequest..IMC [0x101eb640]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=[sym(currentTime)]:8 (`jal` at 0x100f16a8).
  Calls `PerformDisplayRequest..HMC [0x100fbaa0]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=[[a0+8]+2]:2-2 (`jal` at 0x100f16c0).
  At `bne` at 0x100f1478 (target 0x100f170c), taken when at(=[a0+72]) < 0x2 (unsigned) and falls through when at(=[a0+72]) >= 0x2 (unsigned).
  At `beq` at 0x100f1490 (target 0x100f1734), taken when v1(=[[a0+8]+2]:2) == a3(=0x2) and falls through when v1(=[[a0+8]+2]:2) != a3(=0x2).
  At `beq` at 0x100f14c4 (target 0x100f1724), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0x100f14cc (target 0x100f1724), taken when sp(?) == 0 and falls through when sp(?) != 0.
  At `blez` at 0x100f14f0 (target 0x100f1648), taken when s3(=[[a0+8]+2]:2-2) <= 0 (signed) and falls through when s3(=[[a0+8]+2]:2-2) > 0 (signed).
  At `beq` at 0x100f1528 (target 0x100f173c), taken when v0(=ret(SecurityLookupIDByType)) == 0 and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  At `blez` at 0x100f155c (target 0x100f1594), taken when t2(=[[([ret(SecurityLookupIDByType)+132] + ([0x102cc3a8] << 0x2))]+4]) <= 0 (signed) and falls through when t2(=[[([ret(SecurityLookupIDByType)+132] + ([0x102cc3a8] << 0x2))]+4]) > 0 (signed).
  At `beq` at 0x100f1580 (target 0x100f1598), taken when t2(?) == a7(?) and falls through when t2(?) != a7(?).
  At `bnel` at 0x100f158c (target 0x100f1580), taken when v0(?) != t0(?) and falls through when v0(?) == t0(?).
  At `beq` at 0x100f1598 (target 0x100f1758), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `blez` at 0x100f15a0 (target 0x100f15c0), taken when s2(?) <= 0 (signed) and falls through when s2(?) > 0 (signed).
  At `beq` at 0x100f15b0 (target 0x100f16d8), taken when t8(?) == a6(=[([ret(SecurityLookupIDByType)+132] + ([0x102cc3a8] << 0x2))]) and falls through when t8(?) != a6(=[([ret(SecurityLookupIDByType)+132] + ([0x102cc3a8] << 0x2))]).
  At `bnel` at 0x100f15b8 (target 0x100f15b0), taken when v0(?) != s0(?) and falls through when v0(?) == s0(?).
  At `beq` at 0x100f15e8 (target 0x100f15f8), taken when a3(?) >= t3(=[[([ret(SecurityLookupIDByType)+132] + ([0x102cc3a8] << 0x2))]+24]) (unsigned) and falls through when a3(?) < t3(=[[([ret(SecurityLookupIDByType)+132] + ([0x102cc3a8] << 0x2))]+24]) (unsigned).
  At `bne` at 0x100f1618 (target 0x100f1640), taken when t2(?) < a6(?) (unsigned) and falls through when t2(?) >= a6(?) (unsigned).
  At `bne` at 0x100f1620 (target 0x100f1638), taken when a6(?) != 0 and falls through when a6(?) == 0.
  At `bne` at 0x100f1628 (target 0x100f1640), taken when ra(?) != 0 and falls through when ra(?) == 0.
  At `beq` at 0x100f1630 (target 0x100f1640), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `bne` at 0x100f1640 (target 0x100f1510), taken when s2(?) != s3(=[[a0+8]+2]:2-2) and falls through when s2(?) == s3(=[[a0+8]+2]:2-2).
  At `bne` at 0x100f166c (target 0x100f16b4), taken when a3(?) < v0(?) (unsigned) -> outside and falls through when a3(?) >= v0(?) (unsigned).
  At `bne` at 0x100f1678 (target 0x100f16a4), taken when v0(?) < a3(?) (unsigned) and falls through when v0(?) >= a3(?) (unsigned).
  At `bne` at 0x100f1690 (target 0x100f16b8), taken when v0(?) < a3(?) (unsigned) and falls through when v0(?) >= a3(?) (unsigned).
  At `beq` at 0x100f169c (target 0x100f16b8), taken when a3(?) >= v0(?) (unsigned) and falls through when a3(?) < v0(?) (unsigned).
  At `bne` at 0x100f16b0 (target 0x100f16c8), taken when v0(=ret(QueueDisplayRequest..IMC)) != 0 and falls through when v0(=ret(QueueDisplayRequest..IMC)) == 0.
  Returns v0 = ? (`jr` at 0x100f1704).
  Returns v0 = 0x10 (`jr` at 0x100f171c).

- `SProcClearImageBufferArea..LLC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100fba10 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100fba10-0x100fbaa0 (144 bytes).
  Stores 1 bytes from v1 to [a0+8] +0x3 (`sb` at 0x100fba1c) with value [[a0+8]+2]:1.
  Stores 1 bytes from a1 to [a0+8] +0x2 (`sb` at 0x100fba20) with value [[a0+8]+3]:1.
  Stores 1 bytes from at to [a0+8] +0x4 (`sb` at 0x100fba6c) with value [[a0+8]+7]:1.
  Stores 1 bytes from t9 to [a0+8] +0x7 (`sb` at 0x100fba70) with value [[a0+8]+4]:1.
  Stores 1 bytes from t8 to [a0+8] +0x5 (`sb` at 0x100fba74) with value [[a0+8]+6]:1.
  Stores 1 bytes from t3 to [a0+8] +0x6 (`sb` at 0x100fba78) with value [[a0+8]+5]:1.
  Stores 1 bytes from t2 to [a0+8] +0x8 (`sb` at 0x100fba7c) with value [[a0+8]+9]:1.
  Stores 1 bytes from t1 to [a0+8] +0x9 (`sb` at 0x100fba80) with value [[a0+8]+8]:1.
  Stores 1 bytes from t0 to [a0+8] +0xa (`sb` at 0x100fba84) with value [[a0+8]+11]:1.
  Stores 1 bytes from a7 to [a0+8] +0xb (`sb` at 0x100fba88) with value [[a0+8]+10]:1.
  Stores 1 bytes from a6 to [a0+8] +0xc (`sb` at 0x100fba8c) with value [[a0+8]+13]:1.
  Stores 1 bytes from a5 to [a0+8] +0xd (`sb` at 0x100fba90) with value [[a0+8]+12]:1.
  Stores 1 bytes from a4 to [a0+8] +0xe (`sb` at 0x100fba94) with value [[a0+8]+15]:1.
  Stores 1 bytes from a3 to [a0+8] +0xf (`sb` at 0x100fba9c) with value [[a0+8]+14]:1.
  Calls `ProcClearImageBufferArea..IKC [0x10135d60]` via direct with a0=a0 at entry (arg0), a1=[[a0+8]+3]:1, a2=[a0+8], a3=[[a0+8]+14]:1, a4=[[a0+8]+15]:1, a5=[[a0+8]+12]:1, a6=[[a0+8]+13]:1, a7=[[a0+8]+10]:1 (`j` at 0x100fba98).
  At `beq` at 0x100fba2c (target 0x100fba3c), taken when at(=[a0+72]) == v0(=0x5) and falls through when at(=[a0+72]) != v0(=0x5).
  Returns v0 = 0x10 (`jr` at 0x100fba34).

- `RemoveXineramaRegion..FAE` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100fe310 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100fe310-0x100fe3dc (204 bytes).
  Stores 4 bytes from a6 to ? (base unknown) (`sw` at 0x100fe394).
  Stores 4 bytes from a3 to abs 0x102ca984 (`sw` at 0x100fe3c8) with value [[0x102ca984]+8].
  Calls `Xfree [0x101fc9c0]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x100fe398).
  Calls `Xfree [0x101fc9c0]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x100fe3a4).
  Calls `Xfree [0x101fc9c0]` via direct with a0=[0x102ca984], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[[0x102ca984]+8], a4=[0x102ca984] (`jal` at 0x100fe3c4).
  At `beq` at 0x100fe328 (target 0x100fe3bc), taken when at(=[[0x102ca984]+4]) == a0 and falls through when at(=[[0x102ca984]+4]) != a0.
  At `beq` at 0x100fe330 (target 0x100fe37c), taken when a3(=[[0x102ca984]+8]) == 0 and falls through when a3(=[[0x102ca984]+8]) != 0.
  At `beq` at 0x100fe33c (target 0x100fe37c), taken when v1(=[[[0x102ca984]+8]+4]) == a0 and falls through when v1(=[[[0x102ca984]+8]+4]) != a0.
  At `beq` at 0x100fe34c (target 0x100fe37c), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `beq` at 0x100fe358 (target 0x100fe37c), taken when a1(?) == a0 and falls through when a1(?) != a0.
  At `beq` at 0x100fe368 (target 0x100fe37c), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `bne` at 0x100fe374 (target 0x100fe344), taken when a2(?) != a0 and falls through when a2(?) == a0.
  At `bne` at 0x100fe37c (target 0x100fe38c), taken when a3(?) != 0 and falls through when a3(?) == 0.
  Returns v0 = 0xe (`jr` at 0x100fe384).
  Returns v0 = 0x0; f0 = ret(Xfree) (`jr` at 0x100fe3b4).
  Returns v0 = 0x0; f0 = ret(Xfree) (`jr` at 0x100fe3d4).

- `ShmRegisterFbFuncs` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100ff280 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100ff280-0x100ff2a4 (36 bytes).
  Stores 4 bytes from v0 to table(0x102caa00) +0x0 (`sw` at 0x100ff2a0) with value 0x102cf350.
  Returns v0 = 0x102cf350 (`jr` at 0x100ff29c).

- `SendEventToAllWindows` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10100ba0 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10100ba0-0x10100ca8 (264 bytes).
  Calls `DeliverEventsToWindow [0x10184890]` via direct with a0=?, a1=a2 at entry (arg2), a2=0x1, a3=a1 at entry (arg1), a4=0x0, a5=[a0+76]:1 (`jal` at 0x10100c10).
  Calls `DeliverEventsToWindow [0x10184890]` via direct with a0=?, a1=a2 at entry (arg2), a2=0x1, a3=a1 at entry (arg1), a4=0x0, a5=[a0+76]:1 (`jal` at 0x10100c3c).
  Calls `FindInterestedChildren [0x10275be0]` via direct with a0=a0 at entry (arg0), a1=?, a2=a1 at entry (arg1), a3=a2 at entry (arg2) (`jal` at 0x10100c50).
  At `blez` at 0x10100bd4 (target 0x10100c88), taken when at(=[sym(screenInfo)+68]) <= 0 (signed) and falls through when at(=[sym(screenInfo)+68]) > 0 (signed).
  At `beq` at 0x10100c1c (target 0x10100c64), taken when t8(?) == 0 and falls through when t8(?) != 0.
  At `bne` at 0x10100c5c (target 0x10100c28), taken when s0(?) != 0 and falls through when s0(?) == 0.
  At `bne` at 0x10100c70 (target 0x10100bf0), taken when s6(?) < t9(=[sym(screenInfo)+68]) (signed) and falls through when s6(?) >= t9(=[sym(screenInfo)+68]) (signed).
  Returns v0 = ? (`jr` at 0x10100ca0).

- `glxMiFreeDeepWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10106040 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10106040-0x10106408 (968 bytes).
  Stores 4 bytes from t8 to ? (base unknown) (`sw` at 0x1010627c).
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x101062b4) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x101062d4) with value 0x0.
  Stores 4 bytes from a1 to ? (base unknown) (`sw` at 0x10106338).
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x10106340) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x10106368) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x10106370) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x101063d0) with value 0x0.
  Calls `free [0x1016b9e0]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x10106284).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=0x1 (`jalr` at 0x101062c8).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=0x1 (`jalr` at 0x1010635c).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x101063a0).
  Calls `Xfree [0x101fc9c0]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x101063ac).
  At `beq` at 0x10106074 (target 0x101063d4), taken when a2(=[[([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))]+84]) == 0 and falls through when a2(=[[([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))]+84]) != 0.
  At `beq` at 0x101060b4 (target 0x101063e4), taken when a7(=[[[[([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))]+84]+4]+8]) == 0 and falls through when a7(=[[[[([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))]+84]+4]+8]) != 0.
  At `blez` at 0x101060c0 (target 0x10106380), taken when a2(=[[[[[([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))]+84]+4]+8]+4]) <= 0 (signed) and falls through when a2(=[[[[[([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))]+84]+4]+8]+4]) > 0 (signed).
  At `beq` at 0x1010613c (target 0x10106374), taken when t1(?) == t2(?) and falls through when t1(?) != t2(?).
  At `beq` at 0x10106194 (target 0x10106130), taken when a4(?) >= a5(?) (signed) and falls through when a4(?) < a5(?) (signed).
  At `beq` at 0x101061a0 (target 0x10106134), taken when a3(?) >= a2(?) (signed) and falls through when a3(?) < a2(?) (signed).
  At `beq` at 0x101061f8 (target 0x10106130), taken when a1(?) == a2(?) and falls through when a1(?) != a2(?).
  At `beq` at 0x1010621c (target 0x101061e0), taken when a5(?) == a6(?) and falls through when a5(?) != a6(?).
  At `beq` at 0x10106254 (target 0x10106210), taken when t9(?) == 0 and falls through when t9(?) != 0.
  At `beq` at 0x10106278 (target 0x10106344), taken when t8(?) == 0 and falls through when t8(?) != 0.
  At `beq` at 0x10106298 (target 0x10106210), taken when s0(?) == s5(?) and falls through when s0(?) != s5(?).
  At `beq` at 0x101062a4 (target 0x101062d8), taken when t9(=[[([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))]+4]) == 0 and falls through when t9(=[[([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))]+4]) != 0.
  At `beq` at 0x101062b0 (target 0x1010633c), taken when ra(?) == s6(=0x2) and falls through when ra(?) != s6(=0x2).
  At `beq` at 0x101062bc (target 0x1010628c), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0x101062dc (target 0x10106270), taken when s2(?) == 0 and falls through when s2(?) != 0.
  At `beq` at 0x101062e8 (target 0x10106270), taken when v0(?) == s7(=a0) and falls through when v0(?) != s7(=a0).
  At `beq` at 0x101062f8 (target 0x10106328), taken when s2(?) == 0 and falls through when s2(?) != 0.
  At `beq` at 0x10106304 (target 0x10106328), taken when v1(?) == s7(=a0) and falls through when v1(?) != s7(=a0).
  At `beq` at 0x10106314 (target 0x10106328), taken when s2(?) == 0 and falls through when s2(?) != 0.
  At `bne` at 0x10106320 (target 0x101062f0), taken when a0(?) != s7(=a0) and falls through when a0(?) == s7(=a0).
  At `beq` at 0x10106328 (target 0x10106270), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `beq` at 0x10106344 (target 0x1010636c), taken when a2(?) == a3(=0x1) and falls through when a2(?) != a3(=0x1).
  At `beq` at 0x10106350 (target 0x10106284), taken when a4(?) == 0 and falls through when a4(?) != 0.
  Returns v0 = ret(Xfree); f0 = ret(Xfree) (`jr` at 0x101063cc).
  Returns v0 = ? (`jr` at 0x101063dc).
  The instructions from 0x1010612c to 0x1010612c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x101061d8 to 0x101061dc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1010620c to 0x1010620c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1010626c to 0x1010626c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x101063f4 to 0x101063fc are not reached by any path from the entry, and their branches are not listed.

- `ProcUnmapWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10108cb0 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10108cb0-0x10108d3c (140 bytes).
  Calls `SecurityLookupWindow [0x1006ce40]` via direct with a0=[[a0+8]+4], a1=a0 at entry (arg0), a2=0x1, a3=a3 at entry (arg3) (`jal` at 0x10108cf0).
  Calls `UnmapWindow [0x101eef00]` via direct with a0=ret(SecurityLookupWindow), a1=0x0, a2=?, a3=?, a4=0x3 (`jal` at 0x10108d1c).
  At `beq` at 0x10108ccc (target 0x10108ce0), taken when v1(=[a0+72]) == a0(=0x2) and falls through when v1(=[a0+72]) != a0(=0x2).
  At `bne` at 0x10108cfc (target 0x10108d14), taken when v0(=ret(SecurityLookupWindow)) != 0 and falls through when v0(=ret(SecurityLookupWindow)) == 0.
  Returns v0 = 0x10 (`jr` at 0x10108cd8).
  Returns v0 = 0x3; f0 = ret(SecurityLookupWindow) (`jr` at 0x10108d0c).
  Returns v0 = [a0+40]; f0 = ret(UnmapWindow) (`jr` at 0x10108d34).

- `dbcSwapBuffers` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1010bea0 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1010bea0-0x1010c168 (712 bytes).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x1010bf40).
  Stores 4 bytes from t3 to ? (base unknown) (`sw` at 0x1010bf5c).
  Stores 4 bytes from v0 to ret(Xalloc) +0x0 (`sw` at 0x1010bf74) with value ret(FakeClientID).
  Stores 4 bytes from s2 to ret(Xalloc) +0x8 (`sw` at 0x1010bf90) with value a0.
  Stores 4 bytes from s1 to ret(Xalloc) +0x4 (`sw` at 0x1010bf94) with value a1.
  Stores 4 bytes from ra to ret(Xalloc) +0x14 (`sw` at 0x1010bf9c) with value a4.
  Stores 4 bytes from s0 to abs 0x102ca8c8 (dbcTicketQueueFront..88) (`sw` at 0x1010bfa0) with value ret(Xalloc).
  Stores 4 bytes from zero to ret(Xalloc) +0xc (`sw` at 0x1010bfa8) with value 0x0.
  Stores 4 bytes from s0 to [0x102ca8cc] +0x10 (`sw` at 0x1010bfb0) with value ret(Xalloc).
  Stores 4 bytes from at to ret(Xalloc) +0xc (`sw` at 0x1010bfb4) with value [0x102ca8cc].
  Stores 4 bytes from zero to ret(Xalloc) +0x10 (`sw` at 0x1010bfbc) with value 0x0.
  Stores 1 bytes from a4 to abs 0x102c60e0 (isItTimeToYield) (`sb` at 0x1010bfe0) with value 0x1.
  Stores 4 bytes from s0 to abs 0x102ca8cc (dbcTicketQueueEnd..89) (`sw` at 0x1010bfe4) with value ret(Xalloc).
  Stores 4 bytes from a2 to abs 0x102ca8d0 (dbcNumTickets..90) (`sw` at 0x1010bff0) with value [0x102ca8d0]+1.
  Stores 4 bytes from v1 to entry(0x102c61a0) +0xc (`sw` at 0x1010c004) with value 0x2.
  Stores 4 bytes from a4 to table(0x102c6788) +0x0 (`sw` at 0x1010c09c).
  Stores 4 bytes from t0 to table(0x102c66d0) +0x0 (`sw` at 0x1010c0a4).
  Stores 4 bytes from a7 to table(0x102c6710) +0x0 (`sw` at 0x1010c0ac).
  Stores 4 bytes from a6 to table(0x102c66f0) +0x0 (`sw` at 0x1010c0b4).
  Stores 4 bytes from a5 to table(0x102c66b0) +0x0 (`sw` at 0x1010c0bc).
  Stores 4 bytes from t1 to table(0x102c6788) +0x0 (`sw` at 0x1010c0e8).
  Stores 4 bytes from a3 to table(0x102c6788) +0x0 (`sw` at 0x1010c114).
  Stores 4 bytes from t9 to table(0x102c6808) +0x0 (`sw` at 0x1010c11c).
  Stores 4 bytes from t8 to table(0x102c67c8) +0x0 (`sw` at 0x1010c120).
  Stores 4 bytes from t3 to table(0x102c67e8) +0x0 (`sw` at 0x1010c128).
  Stores 4 bytes from ra to table(0x102c6788) +0x0 (`sw` at 0x1010c164).
  Calls `Xalloc [0x1020aeb0]` via direct with a0=(a1 << 0x2)+24, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1010bef0).
  Calls `FakeClientID [0x10069920]` via direct with a0=[a0], a1=?, a2=?, a3=? (`jal` at 0x1010bf64).
  Calls `AddResource [0x1010ec30]` via direct with a0=ret(FakeClientID), a1=[0x102ca8c4], a2=ret(Xalloc), a3=? (`jal` at 0x1010bf7c).
  Calls `(unknown callee)` via register with a0=a2 at entry (arg2), a1=a1 at entry (arg1), a2=?, a3=? (`jalr` at 0x1010c014).
  Calls `Xfree [0x101fc9c0]` via direct with a0=ret(Xalloc), a1=?, a2=?, a3=? (`jal` at 0x1010c130).
  At `beq` at 0x1010befc (target 0x1010c0c0), taken when v0(=ret(Xalloc)) == 0 and falls through when v0(=ret(Xalloc)) != 0.
  At `blez` at 0x1010bf04 (target 0x1010bf64), taken when s1(=a1) <= 0 (signed) and falls through when s1(=a1) > 0 (signed).
  At `bne` at 0x1010bf58 (target 0x1010bf30), taken when a3(?) != t1(=(a1 + a3)) and falls through when a3(?) == t1(=(a1 + a3)).
  At `beq` at 0x1010bf84 (target 0x1010c12c), taken when v0(=ret(AddResource)) == 0 and falls through when v0(=ret(AddResource)) != 0.
  At `bne` at 0x1010bf98 (target 0x1010bfac), taken when a0(=[0x102ca8c8]) != 0 and falls through when a0(=[0x102ca8c8]) == 0.
  At `beq` at 0x1010bff4 (target 0x1010c03c), taken when v0(=entry(0x102c61a0)) == 0 and falls through when v0(=entry(0x102c61a0)) != 0.
  At `beq` at 0x1010c068 (target 0x1010c078), taken when ra(=[sym(GrabInProgress)]) == 0 -> outside and falls through when ra(=[sym(GrabInProgress)]) != 0.
  At `beq` at 0x1010c074 (target 0x1010c0ec), taken when (a2(?) & a3(=entry(0x102c66d0))) == 0 and falls through when (a2(?) & a3(=entry(0x102c66d0))) != 0.
  At `beq` at 0x1010c094 (target 0x1010c0e4), taken when (a2(?) & a1(=entry(0x102c6710))) == 0 and falls through when (a2(?) & a1(=entry(0x102c6710))) != 0.
  At `beq` at 0x1010c10c (target 0x1010c15c), taken when (a2(?) & a1(=entry(0x102c6808))) == 0 and falls through when (a2(?) & a1(=entry(0x102c6808))) != 0.
  Returns v0 = 0x0; f0 = ret(?) (`jr` at 0x1010c034).
  Returns v0 = 0xb; f0 = ret(Xalloc) (`jr` at 0x1010c0dc).
  Returns v0 = 0xb; f0 = ret(Xfree) (`jr` at 0x1010c154).

- `XkbApplyLedMapChanges` in `usr/gfx/arch/GENERIC/Xsgi` at 0x101123b0 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x101123b0-0x10112844 (1172 bytes).
  Stores 4 bytes from a5 to ? (base unknown) (`sw` at 0x10112464).
  Stores 4 bytes from s1 to a1 (arg1 at entry) +0x1c (`sw` at 0x101124a0).
  Stores 4 bytes from t8 to a1 (arg1 at entry) +0x40 (`sw` at 0x101124a8).
  Stores 4 bytes from t9 to a1 (arg1 at entry) +0x3c (`sw` at 0x101124b0).
  Stores 4 bytes from ra to a1 (arg1 at entry) +0x38 (`sw` at 0x101124b8).
  Stores 4 bytes from at to a1 (arg1 at entry) +0x34 (`sw` at 0x101124c0).
  Stores 4 bytes from v0 to a1 (arg1 at entry) +0x30 (`sw` at 0x101124c8).
  Stores 4 bytes from v1 to a1 (arg1 at entry) +0x2c (`sw` at 0x101124d0).
  Stores 4 bytes from s3 to a1 (arg1 at entry) +0x1c (`sw` at 0x10112508).
  Stores 4 bytes from s3 to a1 (arg1 at entry) +0x2c (`sw` at 0x10112534).
  Stores 4 bytes from at to a1 (arg1 at entry) +0x30 (`sw` at 0x10112548).
  Stores 4 bytes from v0 to a1 (arg1 at entry) +0x34 (`sw` at 0x1011255c).
  Stores 4 bytes from v1 to a1 (arg1 at entry) +0x38 (`sw` at 0x10112570).
  Stores 4 bytes from a0 to a1 (arg1 at entry) +0x3c (`sw` at 0x10112584).
  Stores 4 bytes from a3 to a1 (arg1 at entry) +0x40 (`sw` at 0x1011259c).
  Stores 1 bytes from s3 to ? (base unknown) (`sb` at 0x101125b0).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x1011261c).
  Stores 4 bytes from zero to a1 (arg1 at entry) +0x44 (`sw` at 0x1011267c) with value 0x0.
  Stores 4 bytes from a4 to a1 (arg1 at entry) +0x44 (`sw` at 0x10112680) with value 0x22.
  Stores 4 bytes from a2 to a1 (arg1 at entry) +0x44 (`sw` at 0x10112698) with value (one of 0x0, 0x22 | 0x44).
  Stores 4 bytes from a2 to a1 (arg1 at entry) +0x44 (`sw` at 0x101126ac).
  Stores 4 bytes from a2 to a1 (arg1 at entry) +0x44 (`sw` at 0x101126c0).
  Stores 4 bytes from t3 to a1 (arg1 at entry) +0x44 (`sw` at 0x101126d0).
  Stores 2 bytes from a0 to ? (base unknown) (`sh` at 0x101126dc).
  Stores 2 bytes from v1 to ? (base unknown) (`sh` at 0x101126e4) with value [a1+2]:2.
  Stores 2 bytes from v0 to ? (base unknown) (`sh` at 0x101126ec) with value [a1+4]:2.
  Stores 4 bytes from ra to ? (base unknown) (`sw` at 0x10112704) with value ([a1+28] | [a1+32]).
  Stores 2 bytes from t9 to ? (base unknown) (`sh` at 0x1011271c) with value 0x1e.
  Stores 4 bytes from t8 to ? (base unknown) (`sw` at 0x10112728) with value [a1+24].
  Stores 8 bytes from zero to sp (at entry) -0xd8 (`sd` at 0x1011281c) with value 0x0.
  Stores 8 bytes from zero to sp (at entry) -0xd0 (`sd` at 0x10112820) with value 0x0.
  Stores 8 bytes from zero to sp (at entry) -0xc8 (`sd` at 0x10112824) with value 0x0.
  Stores 8 bytes from zero to sp (at entry) -0xc0 (`sd` at 0x10112828) with value 0x0.
  Stores 8 bytes from zero to sp (at entry) -0xb8 (`sd` at 0x1011282c) with value 0x0.
  Stores 8 bytes from zero to sp (at entry) -0xb0 (`sd` at 0x10112830) with value 0x0.
  Stores 8 bytes from zero to sp (at entry) -0xa8 (`sd` at 0x10112834) with value 0x0.
  Stores 8 bytes from zero to sp (at entry) -0xa0 (`sd` at 0x10112838) with value 0x0.
  Stores 8 bytes from zero to sp (at entry) -0x98 (`sd` at 0x10112840) with value 0x0.
  Calls `XkbUpdateLedAutoState [0x1013e4b0]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?, a6=[a1+44], a7=[a1+48] (`jal` at 0x10112724).
  Calls `XkbFlushLedEvents [0x1012d350]` via direct with a0=a0 at entry (arg0), a1=?, a2=a1 at entry (arg1), a3=? (`jal` at 0x1011275c).
  Calls `XkbFlushLedEvents [0x1012d350]` via direct with a0=a0 at entry (arg0), a1=?, a2=a1 at entry (arg1), a3=a3 at entry (arg3) (`jal` at 0x101127ec).
  At `beq` at 0x101123f0 (target 0x10112764), taken when a2 == 0 and falls through when a2 != 0.
  At `beq` at 0x101123fc (target 0x10112798), taken when a0(=[a0+144]) == 0 and falls through when a0(=[a0+144]) != 0.
  At `beq` at 0x10112408 (target 0x10112794), taken when at(=[[a0+144]+344]) == 0 and falls through when at(=[[a0+144]+344]) != 0.
  At `beq` at 0x10112410 (target 0x101127a4), taken when a3 == 0 and falls through when a3 != 0.
  At `beq` at 0x10112424 (target 0x1011243c), taken when (v1(=[a3+10]:2) & 0x1c) == 0 -> outside and falls through when (v1(=[a3+10]:2) & 0x1c) != 0.
  At `bne` at 0x10112430 (target 0x101127d8), taken when a0(=[a1+2]:2) != a1(=[a3+12]:2) and falls through when a0(=[a1+2]:2) == a1(=[a3+12]:2).
  At `bne` at 0x10112438 (target 0x101127d8), taken when a0(=[a1+4]:2) != a2(=[a3+14]:2) and falls through when a0(=[a1+4]:2) == a2(=[a3+14]:2).
  At `bne` at 0x10112440 (target 0x1011246c), taken when s5(=a0) != a3(?) and falls through when s5(=a0) == a3(?).
  At `beq` at 0x1011244c (target 0x10112470), taken when (a0(=[a1]:2) & 0x1) == 0 and falls through when (a0(=[a1]:2) & 0x1) != 0.
  At `beq` at 0x10112454 (target 0x10112814), taken when s7(=a4) == 0 and falls through when s7(=a4) != 0.
  At `beq` at 0x10112474 (target 0x101127fc), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `beq` at 0x1011252c (target 0x10112538), taken when (t0(?) & 0x1) == 0 and falls through when (t0(?) & 0x1) != 0.
  At `beq` at 0x10112538 (target 0x1011254c), taken when t2(?) == 0 and falls through when t2(?) != 0.
  At `beq` at 0x1011254c (target 0x10112560), taken when t9(?) == 0 and falls through when t9(?) != 0.
  At `beq` at 0x10112560 (target 0x10112574), taken when a7(?) == 0 and falls through when a7(?) != 0.
  At `beq` at 0x10112574 (target 0x10112588), taken when t2(?) == 0 and falls through when t2(?) != 0.
  At `beq` at 0x1011258c (target 0x101125a0), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `beq` at 0x101125b4 (target 0x10112620), taken when t9(?) == 0 and falls through when t9(?) != 0.
  At `beq` at 0x101125d4 (target 0x101125ec), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0x101125ec (target 0x10112604), taken when t2(?) == 0 and falls through when t2(?) != 0.
  At `bne` at 0x10112610 (target 0x101125d0), taken when a7(?) != s1(=0x10) and falls through when a7(?) == s1(=0x10).
  At `beq` at 0x10112624 (target 0x10112670), taken when s2(?) == a2(=0x20) and falls through when s2(?) != a2(=0x20).
  At `beq` at 0x10112634 (target 0x10112620), taken when (s4(=a2) & t8(?)) == 0 and falls through when (s4(=a2) & t8(?)) != 0.
  At `bne` at 0x10112640 (target 0x10112500), taken when a3(?) != 0 and falls through when a3(?) == 0.
  At `bne` at 0x10112650 (target 0x10112500), taken when a5(?) != 0 and falls through when a5(?) == 0.
  At `bne` at 0x10112658 (target 0x10112500), taken when a0(?) != 0 and falls through when a0(?) == 0.
  At `bne` at 0x10112660 (target 0x10112500), taken when a3(?) != 0 and falls through when a3(?) == 0.
  At `beq` at 0x10112678 (target 0x10112688), taken when a6(=[a1+44]) == 0 and falls through when a6(=[a1+44]) != 0.
  At `beq` at 0x1011268c (target 0x1011269c), taken when a7(=[a1+48]) == 0 and falls through when a7(=[a1+48]) != 0.
  At `beq` at 0x101126a0 (target 0x101126b0), taken when t0(=[a1+52]) == 0 and falls through when t0(=[a1+52]) != 0.
  At `beq` at 0x101126b4 (target 0x101126c4), taken when t1(=[a1+56]) == 0 and falls through when t1(=[a1+56]) != 0.
  At `beq` at 0x101126c8 (target 0x101126d4), taken when t2(=[a1+60]) == 0 and falls through when t2(=[a1+60]) != 0.
  At `beq` at 0x10112730 (target 0x101127bc), taken when s7(?) == a1(=sp-224) and falls through when s7(?) != a1(=sp-224).
  At `bne` at 0x10112738 (target 0x10112764), taken when s6(?) != sp(=sp-256) and falls through when s6(?) == sp(=sp-256).
  At `beq` at 0x10112740 (target 0x10112768), taken when s6(?) == 0 and falls through when s6(?) != 0.
  At `bne` at 0x1011279c (target 0x10112418), taken when s6(=a3) != 0 and falls through when s6(=a3) == 0.
  At `beq` at 0x101127bc (target 0x10112804), taken when s6(?) == sp(=sp-256) and falls through when s6(?) != sp(=sp-256).
  At `beq` at 0x101127c4 (target 0x10112768), taken when s7(?) == 0 and falls through when s7(?) != 0.
  At `beq` at 0x10112804 (target 0x10112740), taken when s7(?) == 0 and falls through when s7(?) != 0.
  Returns v0 = ? (`jr` at 0x1011278c).
  The instructions from 0x101124f8 to 0x101124fc are not reached by any path from the entry, and their branches are not listed.

- `XkbSendMapNotify` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10114270 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10114270-0x10114774 (1284 bytes).
  Stores 1 bytes from v0 to a1 (arg1 at entry) +0xc (`sb` at 0x101142b0) with value [[[[a0+144]+344]+36]+8]:1.
  Stores 1 bytes from at to a1 (arg1 at entry) +0xd (`sb` at 0x101142e0) with value [[[[a0+144]+344]+36]+9]:1.
  Stores 4 bytes from s7 to a1 (arg1 at entry) +0x4 (`sw` at 0x10114390).
  Stores 2 bytes from s3 to a1 (arg1 at entry) +0xa (`sh` at 0x1011439c) with value [a1+10]:2.
  Stores 2 bytes from a4 to a1 (arg1 at entry) +0x2 (`sh` at 0x101143a0).
  Stores 1 bytes from t0 to a1 (arg1 at entry) +0x6 (`sb` at 0x101143d4).
  Stores 1 bytes from t3 to a1 (arg1 at entry) +0x5 (`sb` at 0x101143d8).
  Stores 1 bytes from a7 to a1 (arg1 at entry) +0xa (`sb` at 0x101143dc).
  Stores 1 bytes from t8 to a1 (arg1 at entry) +0x7 (`sb` at 0x101143e4).
  Stores 1 bytes from a2 to a1 (arg1 at entry) +0x4 (`sb` at 0x101143e8).
  Stores 1 bytes from a4 to a1 (arg1 at entry) +0x3 (`sb` at 0x101143ec).
  Stores 1 bytes from a1 to a1 (arg1 at entry) +0x2 (`sb` at 0x101143f0).
  Stores 1 bytes from a6 to a1 (arg1 at entry) +0xb (`sb` at 0x101143fc).
  Stores 4 bytes from t9 to abs 0x102c727c (FreeOutputs) (`sw` at 0x10114424) with value [[0x102c727c]].
  Stores 4 bytes from s8 to ? (base unknown) (`sw` at 0x10114434).
  Stores 4 bytes from a2 to ? (base unknown) (`sw` at 0x101144a4).
  Stores 4 bytes from ra to table(0x102c6750) +0x0 (`sw` at 0x10114540).
  Stores 1 bytes from v0 to a1 (arg1 at entry) +0x1 (`sb` at 0x10114578) with value 0x1.
  Stores 1 bytes from v1 to a1 (arg1 at entry) +0x0 (`sb` at 0x10114588) with value [0x102cb27c].
  Stores 1 bytes from at to a1 (arg1 at entry) +0x8 (`sb` at 0x10114598) with value [a0+76]:1.
  Stores 4 bytes from a4 to table(0x102c6750) +0x0 (`sw` at 0x101145d4).
  Stores 4 bytes from a3 to abs 0x102c6770 (NewOutputPending) (`sw` at 0x101145dc) with value 0x1.
  Stores 4 bytes from a5 to ? (base unknown) (`sw` at 0x101145fc) with value table(0x20).
  Stores 4 bytes from zero to abs 0x102c6770 (NewOutputPending) (`sw` at 0x1011464c) with value 0x0.
  Stores 4 bytes from zero to abs 0x102c7270 (CriticalOutputPending) (`sw` at 0x10114654) with value 0x0.
  Stores 4 bytes from v1 to ? (base unknown) (`sw` at 0x101146c0).
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x1011475c) with value 0x0.
  Stores 4 bytes from t8 to ? (base unknown) (`sw` at 0x10114770) with value -0x1.
  Calls `(unknown callee)` via register with a0=?, a1=sp-168, a2=[0x102c7268], a3=? (`jalr` at 0x101144d8).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=a1 at entry (arg1), a3=0x20 (`jalr` at 0x10114560).
  Calls `times` via got with a0=sp-184, a1=?, a2=?, a3=?, a4=[0x102c5d70] (`jalr` at 0x10114594).
  Calls `memmove` via got with a0=?, a1=a1 at entry (arg1), a2=0x20, a3=0x1, a6=table(0x102c5d40), a7=entry(0x102c6750) (`jalr` at 0x101145e0).
  Calls `AllocateOutputBuffer [0x100c1f40]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x10114608).
  Calls `(unknown callee)` via register with a0=?, a1=sp-168, a2=[0x102c7268], a3=? (`jalr` at 0x101146ec).
  Calls `sgiCheckCloneBuffer..NM [0x1011fef0]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x10114704).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x10114728).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x10114740).
  Calls `_XSERVTransFreeConnInfo [0x100d3a20]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x10114748).
  At `bne` at 0x101142dc (target 0x10114448), taken when a4(=[0x102c5d70]) < 0x2 (signed) and falls through when a4(=[0x102c5d70]) >= 0x2 (signed).
  At `beq` at 0x10114310 (target 0x10114468), taken when s4(?) == 0 and falls through when s4(?) != 0.
  At `beq` at 0x10114338 (target 0x10114438), taken when s1(?) >= a4(=[0x102c5d70]) (signed) and falls through when s1(?) < a4(=[0x102c5d70]) (signed).
  At `beq` at 0x1011434c (target 0x10114330), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `bne` at 0x10114358 (target 0x10114330), taken when a6(?) != 0 and falls through when a6(?) == 0.
  At `beq` at 0x1011436c (target 0x10114330), taken when a7(?) == s5(=0x102cc150) and falls through when a7(?) != s5(=0x102cc150).
  At `beq` at 0x10114378 (target 0x10114330), taken when (a6(?) & 0x8000) == 0 and falls through when (a6(?) & 0x8000) != 0.
  At `beq` at 0x10114380 (target 0x10114330), taken when a7(?) == 0 and falls through when a7(?) != 0.
  At `beq` at 0x10114388 (target 0x10114570), taken when t2(?) == 0 and falls through when t2(?) != 0.
  At `beq` at 0x101143cc (target 0x10114404), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `bne` at 0x1011440c (target 0x10114310), taken when s8(?) != 0 and falls through when s8(?) == 0.
  At `beq` at 0x10114418 (target 0x10114600), taken when s8(=[0x102c727c]) == 0 and falls through when s8(=[0x102c727c]) != 0.
  At `bne` at 0x10114428 (target 0x10114310), taken when t1(?) != 0 and falls through when t1(?) == 0.
  At `beq` at 0x10114478 (target 0x101144ec), taken when ra(=[0x102c7268]) == 0 and falls through when ra(=[0x102c7268]) != 0.
  At `beq` at 0x1011449c (target 0x10114658), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `beq` at 0x101144b0 (target 0x101144ec), taken when a7(?) == 0 and falls through when a7(?) != 0.
  At `beq` at 0x101144bc (target 0x101144ec), taken when a2(=[0x102c7268]) == 0 and falls through when a2(=[0x102c7268]) != 0.
  At `beq` at 0x10114530 (target 0x101145bc), taken when t3(?) >= t9(=table(0x20)) (signed) and falls through when t3(?) < t9(=table(0x20)) (signed).
  At `beq` at 0x1011454c (target 0x1011462c), taken when t9(=[0x102c6750]:8) == 0 and falls through when t9(=[0x102c6750]:8) != 0.
  At `beq` at 0x1011461c (target 0x10114704), taken when v0(=ret(AllocateOutputBuffer)) == 0 and falls through when v0(=ret(AllocateOutputBuffer)) != 0.
  At `bne` at 0x1011462c (target 0x10114554), taken when a2(=[0x102c6758]:8) != 0 and falls through when a2(=[0x102c6758]:8) == 0.
  At `bne` at 0x10114638 (target 0x10114554), taken when a6(=[0x102c6760]:8) != 0 and falls through when a6(=[0x102c6760]:8) == 0.
  At `bne` at 0x10114644 (target 0x10114554), taken when a7(=[0x102c6768]:8) != 0 and falls through when a7(=[0x102c6768]:8) == 0.
  At `bne` at 0x10114658 (target 0x101144ec), taken when a4(?) != t0(=0x2) and falls through when a4(?) == t0(=0x2).
  At `bne` at 0x10114668 (target 0x101144ec), taken when t1(=0x1) != t3(=[a1]:1) and falls through when t1(=0x1) == t3(=[a1]:1).
  At `beq` at 0x10114674 (target 0x101146ac), taken when t8(?) == 0 and falls through when t8(?) != 0.
  At `beq` at 0x101146c4 (target 0x101144ec), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `beq` at 0x101146d0 (target 0x101144ec), taken when a2(=[0x102c7268]) == 0 and falls through when a2(=[0x102c7268]) != 0.
  At `beq` at 0x10114718 (target 0x10114760), taken when a0(?) == 0 and falls through when a0(?) != 0.
  Returns v0 = ? (`jr` at 0x10114460).
  The instructions from 0x1011430c to 0x1011430c are not reached by any path from the entry, and their branches are not listed.

- `FontFileRegisterLazyFontFileFunctions` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10114f40 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10114f40-0x10114f9c (92 bytes).
  Calls `BitmapRegisterFontFileFunctions [0x10178730]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x10114f4c).
  Calls `FontFileRegisterRenderer [0x10131b90]` via direct with a0=0x102ccb20, a1=?, a2=?, a3=? (`jal` at 0x10114f60).
  Calls `FontFileRegisterRenderer [0x10131b90]` via direct with a0=0x102cc6f0, a1=?, a2=?, a3=? (`jal` at 0x10114f6c).
  Calls `FontFileRegisterRenderer [0x10131b90]` via direct with a0=0x102cc710, a1=?, a2=?, a3=? (`jal` at 0x10114f78).
  Calls `FontFileRegisterRenderer [0x10131b90]` via direct with a0=0x102cc730, a1=?, a2=?, a3=? (`j` at 0x10114f94).

- `DbeWindowPrivDelete..GJC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x101161a0 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x101161a0-0x10116398 (504 bytes).
  Stores 4 bytes from zero to ([a0+24] + ([a0+16] << 0x2)) -0x4 (`sw` at 0x10116240) with value 0x0.
  Stores 4 bytes from a4 to a0 (arg0 at entry) +0x10 (`sw` at 0x1011625c) with value [a0+16]-1.
  Stores 4 bytes from zero to ([[a0]+132] + ([0x102ca7c4] << 0x2)) +0x0 (`sw` at 0x10116350) with value 0x0.
  Stores 8 bytes from a6 to a0 (arg0 at entry) +0x1c (`sdl` at 0x10116374).
  Stores 8 bytes from a6 to a0 (arg0 at entry) +0x23 (`sdr` at 0x10116378).
  Stores 4 bytes from t1 to a0 (arg0 at entry) +0x14 (`sw` at 0x10116388) with value 0x2.
  Stores 4 bytes from t0 to a0 (arg0 at entry) +0x18 (`sw` at 0x10116394).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a4=([0x102ca7c0] << 0x2) (`jalr` at 0x10116294).
  Calls `memmove` via got with a0=?, a1=?, a2=?, a3=[a0+16]-1, a4=[a0+16], a6=[a0+24] (`jalr` at 0x101162e4).
  Calls `Xfree [0x101fc9c0]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=([[a0]+132] + ([0x102ca7c4] << 0x2)), a5=([0x102ca7c4] << 0x2) (`jal` at 0x1011634c).
  Calls `Xfree [0x101fc9c0]` via direct with a0=[a0+24], a1=[a0+24], a2=?, a3=?, a4=[a0+16]-1, a5=a0+28, a7=[a0+24] (`jal` at 0x1011637c).
  At `blez` at 0x101161d0 (target 0x10116314), taken when a4(=[a0+16]) <= 0 (signed) and falls through when a4(=[a0+16]) > 0 (signed).
  At `beq` at 0x101161e4 (target 0x101162c4), taken when v0(=[[a0+24]]) == a1 and falls through when v0(=[[a0+24]]) != a1.
  At `beq` at 0x101161f8 (target 0x1011622c), taken when v1(?) == s1(=a1) and falls through when v1(?) != s1(=a1).
  At `beq` at 0x10116208 (target 0x1011622c), taken when a5(?) >= a4(=[a0+16]) (signed) and falls through when a5(?) < a4(=[a0+16]) (signed).
  At `beq` at 0x10116214 (target 0x1011622c), taken when a7(?) == s1(=a1) and falls through when a7(?) != s1(=a1).
  At `bne` at 0x10116224 (target 0x101161f4), taken when a5(?) < a4(=[a0+16]) (signed) and falls through when a5(?) >= a4(=[a0+16]) (signed).
  At `beq` at 0x1011622c (target 0x101162f8), taken when a5(?) == a4(=[a0+16]) and falls through when a5(?) != a4(=[a0+16]).
  At `bne` at 0x10116234 (target 0x101162cc), taken when t1(?) != 0 and falls through when t1(?) == 0.
  At `bne` at 0x10116258 (target 0x10116264), taken when t2(=[a0+20]) < 0x3 (signed) -> outside and falls through when t2(=[a0+20]) >= 0x3 (signed).
  At `beq` at 0x10116260 (target 0x1011635c), taken when a4(=[a0+16]-1) == a0(=0x2) and falls through when a4(=[a0+16]-1) != a0(=0x2).
  At `bltz` at 0x10116270 (target 0x1011628c), taken when a0(=[0x102ca7c0]) < 0 (signed) and falls through when a0(=[0x102ca7c0]) >= 0 (signed).
  At `beq` at 0x101162a0 (target 0x10116334), taken when a4(=[a0+16]) == 0 and falls through when a4(=[a0+16]) != 0.
  At `bne` at 0x101162c4 (target 0x1011623c), taken when a7(?) != 0 and falls through when a7(?) == 0.
  At `beq` at 0x10116314 (target 0x101162fc), taken when a4(=[a0+16]) == 0 and falls through when a4(=[a0+16]) != 0.
  At `bne` at 0x1011631c (target 0x1011632c), taken when a7(?) != 0 and falls through when a7(?) == 0.
  Returns v0 = 0x0 (`jr` at 0x101162bc).
  Returns v0 = 0x2 (`jr` at 0x1011630c).

- `AccessUnmapWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10119f30 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10119f30-0x1011a014 (228 bytes).
  Stores 4 bytes from a1 to a0 (arg0 at entry) +0x18 (`sw` at 0x10119fb8).
  Calls `SecurityLookupWindow [0x1006ce40]` via direct with a0=[[a0+8]+4], a1=a0 at entry (arg0), a2=0x0, a3=a3 at entry (arg3) (`jal` at 0x10119f88).
  Calls `CheckWindowAccess [0x1018ed00]` via direct with a0=0x1, a1=a0 at entry (arg0), a2=ret(SecurityLookupWindow), a3=0x0 (`jal` at 0x10119fc4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x1011a000).
  At `beq` at 0x10119f54 (target 0x10119f78), taken when v1(=[a0+72]) == a1(=0x2) and falls through when v1(=[a0+72]) != a1(=0x2).
  At `bne` at 0x10119f90 (target 0x10119fbc), taken when v0(=ret(SecurityLookupWindow)) != 0 and falls through when v0(=ret(SecurityLookupWindow)) == 0.
  At `bne` at 0x10119fcc (target 0x10119fdc), taken when v0(=ret(CheckWindowAccess)) != 0 and falls through when v0(=ret(CheckWindowAccess)) == 0.
  Returns v0 = 0x10 (`jr` at 0x10119f60).
  Returns v0 = ? (`jr` at 0x10119f70).
  Returns v0 = 0x3; f0 = ret(SecurityLookupWindow) (`jr` at 0x10119fb4).

- `MultibufferExpose` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1011d7a0 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1011d7a0-0x1011d8dc (316 bytes).
  Stores 8 bytes from at to sp (at entry) -0x30 (`sd` at 0x1011d7ac) with value s8.
  Stores 8 bytes from s0 to sp (at entry) -0x28 (`sd` at 0x1011d7b0) with value s0.
  Stores 8 bytes from s1 to sp (at entry) -0x20 (`sd` at 0x1011d7b8) with value s1.
  Stores 8 bytes from ra to sp (at entry) -0x38 (`sd` at 0x1011d7c4) with value ra.
  Stores 1 bytes from a7 to ? (base unknown) (`sb` at 0x1011d860) with value 0xc.
  Stores 4 bytes from t3 to ? (base unknown) (`sw` at 0x1011d868) with value [a0+20].
  Stores 2 bytes from t2 to ? (base unknown) (`sh` at 0x1011d870).
  Stores 2 bytes from t1 to ? (base unknown) (`sh` at 0x1011d878).
  Stores 2 bytes from a0 to ? (base unknown) (`sh` at 0x1011d888).
  Stores 2 bytes from a4 to ? (base unknown) (`sh` at 0x1011d89c).
  Stores 2 bytes from v0 to ? (base unknown) (`sh` at 0x1011d8ac).
  Calls `SecurityLookupIDByType [0x100d6140]` via direct with a0=0x0, a1=[a0+20], a2=[0x102ca7ec], a3=0x0, a4=[a1+8] (`jal` at 0x1011d7ec).
  Calls `(unknown callee)` via register with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jalr` at 0x1011d80c).
  Calls `DeliverEventsToMultibuffer..JMC [0x10126550]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x8000, a7=0xc (`jal` at 0x1011d8b8).
  At `beq` at 0x1011d7c0 (target 0x1011d8c0), taken when a1 == 0 and falls through when a1 != 0.
  At `beq` at 0x1011d7cc (target 0x1011d7e0), taken when a4(=[a1+8]) == 0 and falls through when a4(=[a1+8]) != 0.
  At `beq` at 0x1011d7d8 (target 0x1011d8c0), taken when v0(=[[a1+8]+4]) == 0 and falls through when v0(=[[a1+8]+4]) != 0.
  At `beq` at 0x1011d820 (target 0x1011d830), taken when a4(=[a1+8]) == 0 and falls through when a4(=[a1+8]) != 0.
  At `beq` at 0x1011d84c (target 0x1011d8c0), taken when sp(?) == 0 and falls through when sp(?) != 0.
  At `blez` at 0x1011d854 (target 0x1011d8b0), taken when a2(?) <= 0 (signed) and falls through when a2(?) > 0 (signed).
  At `bne` at 0x1011d8a8 (target 0x1011d860), taken when a5(?) != a6(?) and falls through when a5(?) == a6(?).
  Returns v0 = ? (`jr` at 0x1011d8d4).

- `ProcGetBufferVersion..OJC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1011db20 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1011db20-0x1011dbb0 (144 bytes).
  Calls `WriteToClient [0x100b3500]` via direct with a0=a0 at entry (arg0), a1=0x20, a2=sp-48, a3=0x1 (`jal` at 0x1011db94).
  At `beq` at 0x1011db2c (target 0x1011db3c), taken when a3(=0x1) == at(=[a0+72]) and falls through when a3(=0x1) != at(=[a0+72]).
  At `beq` at 0x1011db64 (target 0x1011db88), taken when v1(=[a0+16]) == 0 and falls through when v1(=[a0+16]) != 0.
  Returns v0 = 0x10 (`jr` at 0x1011db34).
  Returns v0 = [a0+40]; f0 = ret(WriteToClient) (`jr` at 0x1011dba8).

- `sgiCheckCloneBuffer..NM` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1011fef0 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1011fef0-0x1011ffa4 (180 bytes).
  Stores 4 bytes from s1 to abs 0x102c7288 (sgiInputWrappers) (`sw` at 0x1011ff78) with value [a0+4].
  Stores 4 bytes from zero to a0 (arg0 at entry) +0x4 (`sw` at 0x1011ff80) with value 0x0.
  Calls `sgiCloneBuffer..MM [0x1021f840]` via direct with a0=a0 at entry (arg0), a1=?, a2=0x0, a3=[[a0+4]+4] (`jal` at 0x1011ff38).
  Calls `(unknown callee)` via register with a0=[a0+20], a1=[[a0+4]+4], a2=?, a3=? (`jalr` at 0x1011ff64).
  Calls `Xfree [0x101fc9c0]` via direct with a0=[a0+4], a1=?, a2=?, a3=? (`jal` at 0x1011ff94).
  At `beq` at 0x1011ff04 (target 0x1011ff48), taken when s1(=[a0+4]) == 0 and falls through when s1(=[a0+4]) != 0.
  At `beq` at 0x1011ff0c (target 0x1011ff48), taken when at(=[a0+20]) == 0 and falls through when at(=[a0+20]) != 0.
  At `beq` at 0x1011ff18 (target 0x1011ff48), taken when v0(=[[a0+4]+24]) == 0 and falls through when v0(=[[a0+4]+24]) != 0.
  At `beq` at 0x1011ff40 (target 0x1011ff58), taken when v0(=ret(sgiCloneBuffer..MM)) == 0 and falls through when v0(=ret(sgiCloneBuffer..MM)) != 0.
  At `bne` at 0x1011ff70 (target 0x1011ff94), taken when ra(=[0x102c7288]) != 0 and falls through when ra(=[0x102c7288]) == 0.
  Returns v0 = ? (`jr` at 0x1011ff50).
  Returns v0 = ? (`jr` at 0x1011ff8c).

- `SGetWindowAttributesReply` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10120430 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10120430-0x1012056c (316 bytes).
  Stores 1 bytes from a5 to a2 (arg2 at entry) +0x2 (`sb` at 0x1012044c) with value [a2+3]:1.
  Stores 1 bytes from a6 to a2 (arg2 at entry) +0x11 (`sb` at 0x10120454) with value [a2+18]:1.
  Stores 1 bytes from a7 to a2 (arg2 at entry) +0x13 (`sb` at 0x1012045c) with value [a2+16]:1.
  Stores 1 bytes from t0 to a2 (arg2 at entry) +0x10 (`sb` at 0x10120464) with value [a2+19]:1.
  Stores 1 bytes from t1 to a2 (arg2 at entry) +0xd (`sb` at 0x1012046c) with value [a2+12]:1.
  Stores 1 bytes from t2 to a2 (arg2 at entry) +0xc (`sb` at 0x10120474) with value [a2+13]:1.
  Stores 1 bytes from t3 to a2 (arg2 at entry) +0xa (`sb` at 0x10120484) with value [a2+9]:1.
  Stores 1 bytes from at to a2 (arg2 at entry) +0x6 (`sb` at 0x10120494) with value [a2+5]:1.
  Stores 1 bytes from ra to a2 (arg2 at entry) +0x8 (`sb` at 0x101204ac) with value [a2+11]:1.
  Stores 1 bytes from at to a2 (arg2 at entry) +0x1c (`sb` at 0x101204b4) with value [a2+31]:1.
  Stores 1 bytes from t8 to a2 (arg2 at entry) +0x9 (`sb` at 0x101204b8) with value [a2+10]:1.
  Stores 1 bytes from t9 to a2 (arg2 at entry) +0xb (`sb` at 0x101204c0) with value [a2+8]:1.
  Stores 1 bytes from t8 to a2 (arg2 at entry) +0x1e (`sb` at 0x101204c8) with value [a2+29]:1.
  Stores 1 bytes from t3 to a2 (arg2 at entry) +0x20 (`sb` at 0x101204cc) with value [a2+35]:1.
  Stores 1 bytes from t2 to a2 (arg2 at entry) +0x23 (`sb` at 0x101204d0) with value [a2+32]:1.
  Stores 1 bytes from t1 to a2 (arg2 at entry) +0x21 (`sb` at 0x101204d4) with value [a2+34]:1.
  Stores 1 bytes from t0 to a2 (arg2 at entry) +0x22 (`sb` at 0x101204d8) with value [a2+33]:1.
  Stores 1 bytes from a7 to a2 (arg2 at entry) +0x24 (`sb` at 0x101204dc) with value [a2+39]:1.
  Stores 1 bytes from a6 to a2 (arg2 at entry) +0x27 (`sb` at 0x101204e0) with value [a2+36]:1.
  Stores 1 bytes from a4 to a2 (arg2 at entry) +0x3 (`sb` at 0x101204e4) with value [a2+2]:1.
  Stores 1 bytes from a3 to a2 (arg2 at entry) +0x4 (`sb` at 0x101204f4) with value [a2+7]:1.
  Stores 1 bytes from v1 to a2 (arg2 at entry) +0x7 (`sb` at 0x101204fc) with value [a2+4]:1.
  Stores 1 bytes from v0 to a2 (arg2 at entry) +0x5 (`sb` at 0x10120504) with value [a2+6]:1.
  Stores 1 bytes from v1 to a2 (arg2 at entry) +0x15 (`sb` at 0x1012050c) with value [a2+22]:1.
  Stores 1 bytes from a3 to a2 (arg2 at entry) +0x17 (`sb` at 0x10120514) with value [a2+20]:1.
  Stores 1 bytes from a4 to a2 (arg2 at entry) +0x14 (`sb` at 0x1012051c) with value [a2+23]:1.
  Stores 1 bytes from a5 to a2 (arg2 at entry) +0x12 (`sb` at 0x10120524) with value [a2+17]:1.
  Stores 1 bytes from a5 to a2 (arg2 at entry) +0x25 (`sb` at 0x1012052c) with value [a2+38]:1.
  Stores 1 bytes from a4 to a2 (arg2 at entry) +0x26 (`sb` at 0x10120530) with value [a2+37]:1.
  Stores 1 bytes from v0 to a2 (arg2 at entry) +0x16 (`sb` at 0x10120538) with value [a2+21]:1.
  Stores 1 bytes from t9 to a2 (arg2 at entry) +0x1d (`sb` at 0x10120540) with value [a2+30]:1.
  Stores 1 bytes from a3 to a2 (arg2 at entry) +0x28 (`sb` at 0x1012054c) with value [a2+41]:1.
  Stores 1 bytes from ra to a2 (arg2 at entry) +0x1f (`sb` at 0x10120550) with value [a2+28]:1.
  Stores 1 bytes from v1 to a2 (arg2 at entry) +0x29 (`sb` at 0x10120558) with value [a2+40]:1.
  Calls `WriteToClient [0x100b3500]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a2+41]:1, a4=[a2+37]:1, a5=[a2+38]:1, a6=[a2+36]:1, a7=[a2+39]:1 (`jal` at 0x10120554).
  Returns v0 = ret(WriteToClient); f0 = ret(WriteToClient) (`jr` at 0x10120564).

- `CheckWindowOptionalNeed` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10123eb0 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10123eb0-0x10124014 (356 bytes).
  Stores 4 bytes from a1 to a0 (arg0 at entry) +0x7c (`sw` at 0x10123ff4) with value ([a0+124] | 0x10000000).
  Stores 4 bytes from zero to a0 (arg0 at entry) +0x78 (`sw` at 0x10124008) with value 0x0.
  Calls `FreeCursor [0x10205d70]` via direct with a0=[[a0+120]+4], a1=0x0, a2=a0 at entry (arg0), a3=[[a0+120]+4], a4=[a0+24], a5=[a0+124], a7=[[a0+120]+44] (`jal` at 0x10123fcc).
  Calls `Xfree [0x101fc9c0]` via direct with a0=[a0+120], a1=([a0+124] | 0x10000000), a2=a0 at entry (arg0), a3=?, a5=[a0+124] (`jal` at 0x10123ff0).
  At `beq` at 0x10123eb8 (target 0x1012400c), taken when a4(=[a0+24]) == 0 and falls through when a4(=[a0+24]) != 0.
  At `bne` at 0x10123ee4 (target 0x1012400c), taken when at(?) != v0(=[[a0+120]+12]) and falls through when at(?) == v0(=[[a0+120]+12]).
  At `bne` at 0x10123eec (target 0x1012400c), taken when a3(=[[a0+120]+16]) != 0 and falls through when a3(=[[a0+120]+16]) == 0.
  At `bne` at 0x10123f04 (target 0x1012400c), taken when a1(=[[a0+120]+20]) != 0 and falls through when a1(=[[a0+120]+20]) == 0.
  At `bne` at 0x10123f0c (target 0x1012400c), taken when a3(=[[a0+120]+24]) != 0 and falls through when a3(=[[a0+120]+24]) == 0.
  At `bne` at 0x10123f14 (target 0x1012400c), taken when a6(=[[a0+120]+28]) != 0 and falls through when a6(=[[a0+120]+28]) == 0.
  At `bne` at 0x10123f1c (target 0x1012400c), taken when t0(=[[a0+120]+32]) != a7(=-0x1) and falls through when t0(=[[a0+120]+32]) == a7(=-0x1).
  At `bne` at 0x10123f28 (target 0x1012400c), taken when a3(=[[a0+120]+36]) != 0 and falls through when a3(=[[a0+120]+36]) == 0.
  At `bne` at 0x10123f34 (target 0x1012400c), taken when a6(=[[a0+120]+40]) != 0 and falls through when a6(=[[a0+120]+40]) == 0.
  At `bne` at 0x10123f40 (target 0x1012400c), taken when a7(=[[a0+120]+44]) != 0 and falls through when a7(=[[a0+120]+44]) == 0.
  At `bne` at 0x10123f4c (target 0x1012400c), taken when t0(=[[a0+120]+48]) != 0 and falls through when t0(=[[a0+120]+48]) == 0.
  At `beq` at 0x10123f5c (target 0x10123f54), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `bne` at 0x10123f6c (target 0x1012400c), taken when t1(?) != t2(=[[a0+120]]) and falls through when t1(?) == t2(=[[a0+120]]).
  At `beq` at 0x10123f78 (target 0x10123f9c), taken when a3(=[[a0+120]+4]) == 0 and falls through when a3(=[[a0+120]+4]) != 0.
  At `bne` at 0x10123f84 (target 0x1012400c), taken when t3(?) != a3(=[[a0+120]+4]) and falls through when t3(?) == a3(=[[a0+120]+4]).
  At `bltz` at 0x10123f94 (target 0x1012400c), taken when t8(=([[a0+24]+124] << 0x3)) < 0 (signed) and falls through when t8(=([[a0+24]+124] << 0x3)) >= 0 (signed).
  At `bne` at 0x10123fa4 (target 0x1012400c), taken when t9(?) != at(=[[a0+120]+8]) and falls through when t9(?) == at(=[[a0+120]+8]).
  At `beq` at 0x10123fac (target 0x1012400c), taken when a0(=[a0+120]) == 0 and falls through when a0(=[a0+120]) != 0.
  At `bltz` at 0x10123fb8 (target 0x10123fe0), taken when v0(=([a0+124] << 0x3)) < 0 (signed) and falls through when v0(=([a0+124] << 0x3)) >= 0 (signed).
  Returns v0 = ret(Xfree); f0 = ret(Xfree) (`jr` at 0x10124004).
  Returns v0 = ? (`jr` at 0x1012400c).

- `ProcXineramaSGICapRegisterInterest..GPD` in `usr/gfx/arch/GENERIC/Xsgi` at 0x101248f0 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x101248f0-0x1012559c (3244 bytes).
  Stores 4 bytes from ra to ret(Xalloc) +0x80 (`sw` at 0x10124a48) with value [0x102ca980].
  Stores 4 bytes from a1 to ? (base unknown) (`sw` at 0x10124ad0).
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x10124c60) with value 0x0.
  Stores 4 bytes from a1 to a0 (arg0 at entry) +0x18 (`sw` at 0x10124c78).
  Stores 4 bytes from v0 to ? (base unknown) (`sw` at 0x10124f84) with value ret(FakeClientID).
  Stores 4 bytes from a5 to ? (base unknown) (`sw` at 0x10125044).
  Stores 2 bytes from a4 to ? (base unknown) (`sh` at 0x1012504c).
  Stores 2 bytes from a3 to ? (base unknown) (`sh` at 0x10125054).
  Stores 2 bytes from a2 to ? (base unknown) (`sh` at 0x1012505c).
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x10125064) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x10125068) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x1012506c) with value 0x0.
  Stores 2 bytes from a1 to ? (base unknown) (`sh` at 0x10125074).
  Stores 2 bytes from v1 to ? (base unknown) (`sh` at 0x1012507c).
  Stores 2 bytes from v0 to ? (base unknown) (`sh` at 0x10125084).
  Stores 2 bytes from at to ? (base unknown) (`sh` at 0x10125088).
  Stores 2 bytes from ra to ? (base unknown) (`sh` at 0x10125090).
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x101250b0) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x101250b4) with value 0x0.
  Stores 4 bytes from v0 to ? (base unknown) (`sw` at 0x101250b8) with value ret(?).
  Stores 4 bytes from a7 to ret(Xalloc) +0xc (`sw` at 0x10125198).
  Stores 4 bytes from t0 to ret(Xalloc) +0x8 (`sw` at 0x1012519c).
  Stores 4 bytes from a5 to ret(Xalloc) +0x4 (`sw` at 0x101251a0).
  Stores 4 bytes from t1 to ret(Xalloc) +0x0 (`sw` at 0x101251a4).
  Stores 4 bytes from v0 to ? (base unknown) (`sw` at 0x101251ac) with value ret(Xalloc).
  Stores 4 bytes from a2 to ? (base unknown) (`sw` at 0x101251c0).
  Stores 4 bytes from t0 to ? (base unknown) (`sw` at 0x101252d4).
  Stores 4 bytes from a6 to table(0x102c71c0) +0x0 (`sw` at 0x101254d8).
  Stores 4 bytes from a6 to abs 0x102c71b8 (Lfree..4) (`sw` at 0x101254e0).
  Stores 4 bytes from a4 to abs 0x102c7240 (freeidx..3) (`sw` at 0x101254ec).
  Stores 4 bytes from a6 to table(0x102c71c0) +0x0 (`sw` at 0x10125558).
  Stores 4 bytes from a6 to abs 0x102c71b8 (Lfree..4) (`sw` at 0x10125560).
  Stores 4 bytes from a4 to abs 0x102c7240 (freeidx..3) (`sw` at 0x1012556c).
  Stores 4 bytes from a6 to a0 (arg0 at entry) +0x18 (`sw` at 0x10125598).
  Calls `AddXineramaRegion..EAE [0x1016bf00]` via direct with a0=[[a0+8]+16], a1=?, a2=[[a0+8]+14]:2, a3=([[a0+8]+8]:2 + [[a0+8]+12]:2), a4=[[a0+8]+12]:2, a5=[[a0+8]+10]:2, a6=[[a0+8]+8]:2 (`jal` at 0x10124960).
  Calls `SecurityLookupIDByClass [0x10236190]` via direct with a0=a0 at entry (arg0), a1=?, a2=[sym(XRC_DRAWABLE)], a3=0x2 (`jal` at 0x1012498c).
  Calls `Xalloc [0x1020aeb0]` via direct with a0=0xa8, a1=?, a2=?, a3=? (`jal` at 0x10124a0c).
  Calls `(unknown callee)` via register with a0=sp-200, a1=sp-208, a2=0x1, a3=? (`jalr` at 0x10124a60).
  Calls `(unknown callee)` via register with a0=sp-184, a1=0x0, a2=0x1, a3=? (`jalr` at 0x10124a78).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x0 (`jalr` at 0x10124bc8).
  Calls `(unknown callee)` via register with a0=table(0x102c5e50), a1=sp-200, a2=?, a3=? (`jalr` at 0x10124c30).
  Calls `(unknown callee)` via register with a0=sp-184, a1=sp-200, a2=table(0x102c5e50), a3=? (`jalr` at 0x10124ca4).
  Calls `AddResource [0x1010ec30]` via direct with a0=?, a1=[0x102ca980], a2=?, a3=? (`jal` at 0x10124dbc).
  Calls `(unknown callee)` via register with a0=sp-200, a1=?, a2=?, a3=? (`jalr` at 0x10124dd0).
  Calls `(unknown callee)` via register with a0=sp-184, a1=?, a2=?, a3=? (`jalr` at 0x10124de0).
  Calls `FakeClientID [0x10069920]` via direct with a0=[a0], a1=?, a2=?, a3=? (`jal` at 0x10124f6c).
  Calls `SecurityLookupIDByClass [0x10236190]` via direct with a0=0x0, a1=ret(FakeClientID), a2=-0x1, a3=0x0, a6=[a0] (`jal` at 0x10124fdc).
  Calls `__libc_lockmalloc` via got with a0=?, a1=?, a2=?, a3=?, a7=[sym(__us_rsthread_malloc)] (`jalr` at 0x10125000).
  Calls `__malloc..ML [0x101e7680]` via direct with a0=0x2c, a1=?, a2=?, a3=? (`jal` at 0x10125008).
  Calls `__libc_unlockmalloc` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x10125024).
  Calls `(unknown callee)` via register with a0=?, a1=0x1, a2=?, a3=? (`jalr` at 0x101250a0).
  Calls `Xalloc [0x1020aeb0]` via direct with a0=0x10, a1=?, a2=?, a3=? (`jal` at 0x10125170).
  Calls `(unknown callee)` via register with a0=sp-200, a1=sp-200, a2=sp-184, a3=? (`jalr` at 0x101251d4).
  Calls `(unknown callee)` via register with a0=sp-200, a1=?, a2=?, a3=? (`jalr` at 0x101251e4).
  Calls `RebuildTable..ID [0x101c6ee0]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x10125330).
  Calls `ErrorF [0x10094ec0]` via direct with a0=?, a1=?, a2=[sym(RT_SGICapInterest)], a3=?, a6=[sym(RT_SGICapInterest)] (`jal` at 0x101253cc).
  Calls `FatalError [0x10094f20]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x101253d8).
  Calls `Xfree [0x101fc9c0]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x101253fc).
  Calls `FatalError [0x10094f20]` via direct with a0=0x10291460, a1=?, a2=?, a3=? (`jal` at 0x10125438).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x10125464).
  Calls `__libc_lockmalloc` via got with a0=?, a1=?, a2=[sym(__us_rsthread_malloc)], a3=?, a6=sym(__us_rsthread_malloc) (`jalr` at 0x10125490).
  Calls `realfree..NL [0x1025db70]` via direct with a0=entry(0x102c71c0), a1=table(0x102c5d40), a2=[0x102c7240], a3=([0x102c7240] << 0x2), a5=sym(__us_rsthread_malloc) (`jal` at 0x101254b4).
  Calls `__libc_unlockmalloc` via got with a0=?, a1=table(0x102c5d40), a2=[0x102c7240], a3=([0x102c7240] << 0x2), a5=[sym(__us_rsthread_malloc)] (`jalr` at 0x101254f4).
  Calls `__libc_lockmalloc` via got with a0=?, a1=?, a2=[0x102c7240], a3=?, a6=[sym(__us_rsthread_malloc)] (`jalr` at 0x10125510).
  Calls `realfree..NL [0x1025db70]` via direct with a0=entry(0x102c71c0), a1=table(0x102c5d40), a2=[0x102c7240], a3=([0x102c7240] << 0x2), a5=sym(__us_rsthread_malloc) (`jal` at 0x10125534).
  Calls `__libc_unlockmalloc` via got with a0=?, a1=table(0x102c5d40), a2=[0x102c7240], a3=([0x102c7240] << 0x2), a5=[sym(__us_rsthread_malloc)] (`jalr` at 0x10125574).
  At `beq` at 0x10124904 (target 0x10124924), taken when at(=[a0+72]) == v0(=0x5) and falls through when at(=[a0+72]) != v0(=0x5).
  At `beq` at 0x1012496c (target 0x101249fc), taken when v0(=ret(AddXineramaRegion..EAE)) == a1(=0xb) and falls through when v0(=ret(AddXineramaRegion..EAE)) != a1(=0xb).
  At `beq` at 0x10124994 (target 0x10124a2c), taken when v0(=ret(SecurityLookupIDByClass)) == 0 and falls through when v0(=ret(SecurityLookupIDByClass)) != 0.
  At `bltz` at 0x101249a0 (target 0x101249ec), taken when a1(?) < 0 (signed) and falls through when a1(?) >= 0 (signed).
  At `bne` at 0x101249b8 (target 0x101249f0), taken when a2(=[0x102c5f60]) < a3(?) (signed) and falls through when a2(=[0x102c5f60]) >= a3(?) (signed).
  At `bltz` at 0x101249c8 (target 0x101249f0), taken when a1(?) < 0 (signed) and falls through when a1(?) >= 0 (signed).
  At `beq` at 0x101249e4 (target 0x10124a08), taken when a2(=[0x102c5f64]) >= a3(?) (signed) and falls through when a2(=[0x102c5f64]) < a3(?) (signed).
  At `bne` at 0x10124a14 (target 0x10124a3c), taken when v0(=ret(Xalloc)) != 0 and falls through when v0(=ret(Xalloc)) == 0.
  At `blez` at 0x10124a84 (target 0x10124dac), taken when ra(=[0x102c5f1c]) <= 0 (signed) and falls through when ra(=[0x102c5f1c]) > 0 (signed).
  At `bne` at 0x10124ad8 (target 0x10124aec), taken when v1(=[a0+48]) != a1(?) -> outside and falls through when v1(=[a0+48]) == a1(?).
  At `beq` at 0x10124ae8 (target 0x10124e90), taken when a3(=[a0+116]) == 0 and falls through when a3(=[a0+116]) != 0.
  At `beq` at 0x10124af8 (target 0x10124c70), taken when a3(?) >= 0x100 (signed) and falls through when a3(?) < 0x100 (signed).
  At `beq` at 0x10124b14 (target 0x10124c70), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `beq` at 0x10124b20 (target 0x10124df4), taken when a3(?) == t2(=0x6) and falls through when a3(?) != t2(=0x6).
  At `beq` at 0x10124b28 (target 0x10124e1c), taken when a3(?) == t3(=0x7) and falls through when a3(?) != t3(=0x7).
  At `beq` at 0x10124b30 (target 0x10124e44), taken when a3(?) == t8(=0x8) and falls through when a3(?) != t8(=0x8).
  At `beq` at 0x10124b38 (target 0x10124e70), taken when a3(?) == a5(=0x9) and falls through when a3(?) != a5(=0x9).
  At `beq` at 0x10124b40 (target 0x10124e9c), taken when a3(?) == a6(=0xa) and falls through when a3(?) != a6(=0xa).
  At `beq` at 0x10124b4c (target 0x10125200), taken when a3(?) == t9(=0xb) and falls through when a3(?) != t9(=0xb).
  At `beq` at 0x10124b68 (target 0x10124c70), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `beq` at 0x10124b7c (target 0x10124c70), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `bne` at 0x10124b8c (target 0x10124b78), taken when a6(?) != a1(?) and falls through when a6(?) == a1(?).
  At `beql` at 0x10124b94 (target 0x10124b7c), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0x10124ba0 (target 0x10124bdc), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0x10124ba8 (target 0x10124bdc), taken when t0(=a0) == 0 and falls through when t0(=a0) != 0.
  At `beq` at 0x10124bb4 (target 0x10124bdc), taken when t9(=[a0+120]) == 0 and falls through when t9(=[a0+120]) != 0.
  At `beq` at 0x10124bdc (target 0x10124c64), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0x10124bec (target 0x101253f0), taken when ra(=0x2) == at(?) and falls through when ra(=0x2) != at(?).
  At `bne` at 0x10124c00 (target 0x101253ac), taken when v0(?) != 0 and falls through when v0(?) == 0.
  At `beq` at 0x10124c40 (target 0x10124eb8), taken when v0(=ret(?)) == ra(=0x1) and falls through when v0(=ret(?)) != ra(=0x1).
  At `bne` at 0x10124c48 (target 0x10124c7c), taken when v0(=ret(?)) != 0 and falls through when v0(=ret(?)) == 0.
  At `beq` at 0x10124cb4 (target 0x1012521c), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `beq` at 0x10124d70 (target 0x10124f64), taken when t8(?) == 0 and falls through when t8(?) != 0.
  At `bne` at 0x10124da4 (target 0x10124ac4), taken when t9(?) < ra(=[0x102c5f1c]) (signed) and falls through when t9(?) >= ra(=[0x102c5f1c]) (signed).
  At `beq` at 0x10124dc4 (target 0x101253f8), taken when v0(=ret(AddResource)) == 0 and falls through when v0(=ret(AddResource)) != 0.
  At `beq` at 0x10124f80 (target 0x10125224), taken when a2(=[sym(panoramiXDisabled)]) == 0 and falls through when a2(=[sym(panoramiXDisabled)]) != 0.
  At `bne` at 0x10124f98 (target 0x10124fe8), taken when a3(=[a0+4]) != a4(?) -> outside and falls through when a3(=[a0+4]) == a4(?).
  At `bne` at 0x10124fc0 (target 0x10124fd0), taken when v0(=ret(FakeClientID)) < a4(?) (unsigned) and falls through when v0(=ret(FakeClientID)) >= a4(?) (unsigned).
  At `beq` at 0x10124fe4 (target 0x10124fc8), taken when v0(=ret(SecurityLookupIDByClass)) == 0 and falls through when v0(=ret(SecurityLookupIDByClass)) != 0.
  At `beq` at 0x10124fec (target 0x10125584), taken when a1(=one of 0x0, 0x1) == 0 and falls through when a1(=one of 0x0, 0x1) != 0.
  At `beq` at 0x10124ff8 (target 0x10125008), taken when a7(=[sym(__us_rsthread_malloc)]) == 0 and falls through when a7(=[sym(__us_rsthread_malloc)]) != 0.
  At `beq` at 0x10125018 (target 0x1012502c), taken when t0(=[sym(__us_rsthread_malloc)]) == 0 and falls through when t0(=[sym(__us_rsthread_malloc)]) != 0.
  At `beq` at 0x10125030 (target 0x10125424), taken when t1(?) == 0 and falls through when t1(?) != 0.
  At `beq` at 0x101250f0 (target 0x101253b4), taken when t0(?) == 0 and falls through when t0(?) != 0.
  At `bne` at 0x10125108 (target 0x10125118), taken when t1(?) < t2(?) (signed) -> outside and falls through when t1(?) >= t2(?) (signed).
  At `bne` at 0x10125114 (target 0x10125330), taken when a7(?) < 0xb (signed) and falls through when a7(?) >= 0xb (signed).
  At `beq` at 0x1012511c (target 0x10125280), taken when a7(?) == t8(=0x6) and falls through when a7(?) != t8(=0x6).
  At `beq` at 0x10125124 (target 0x101252d8), taken when a7(?) == t9(=0x7) and falls through when a7(?) != t9(=0x7).
  At `beq` at 0x10125130 (target 0x10125304), taken when a7(?) == ra(=0x8) and falls through when a7(?) != ra(=0x8).
  At `beq` at 0x1012513c (target 0x10125344), taken when a7(?) == at(=0x9) and falls through when a7(?) != at(=0x9).
  At `beq` at 0x10125144 (target 0x10125368), taken when a7(?) == v0(=0xa) and falls through when a7(?) != v0(=0xa).
  At `beq` at 0x10125150 (target 0x10125388), taken when a7(?) == v1(=0xb) and falls through when a7(?) != v1(=0xb).
  At `beq` at 0x10125178 (target 0x10125448), taken when v0(=ret(Xalloc)) == 0 and falls through when v0(=ret(Xalloc)) != 0.
  At `beq` at 0x101251bc (target 0x101252b0), taken when (a4(=0x40000000) & a5(?)) == 0 and falls through when (a4(=0x40000000) & a5(?)) != 0.
  At `bne` at 0x101251f0 (target 0x10124d74), taken when v0(=ret(?)) != 0 -> outside and falls through when v0(=ret(?)) == 0.
  At `beq` at 0x1012522c (target 0x1012540c), taken when a3(=[a0]) == 0 and falls through when a3(=[a0]) != 0.
  At `bne` at 0x10125240 (target 0x10124f88), taken when v0(=ret(FakeClientID)) < a2(=(0x40000000 | [a0+4])) (unsigned) and falls through when v0(=ret(FakeClientID)) >= a2(=(0x40000000 | [a0+4])) (unsigned).
  At `bne` at 0x10125270 (target 0x10124f8c), taken when a4(?) < v0(=ret(FakeClientID)) (unsigned) and falls through when a4(?) >= v0(=ret(FakeClientID)) (unsigned).
  At `bne` at 0x101252c0 (target 0x101251c4), taken when a6(?) < a7(?) (unsigned) and falls through when a6(?) >= a7(?) (unsigned).
  At `beq` at 0x10125414 (target 0x10125248), taken when v0(=ret(FakeClientID)) >= t1(=([a0+4] | 0x20)) (unsigned) and falls through when v0(=ret(FakeClientID)) < t1(=([a0+4] | 0x20)) (unsigned).
  At `beq` at 0x10125428 (target 0x10125440), taken when t2(=[sym(Must_have_memory)]) == 0 and falls through when t2(=[sym(Must_have_memory)]) != 0.
  At `beq` at 0x10125474 (target 0x10125500), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `beq` at 0x10125484 (target 0x10125498), taken when a2(=[sym(__us_rsthread_malloc)]) == 0 and falls through when a2(=[sym(__us_rsthread_malloc)]) != 0.
  At `beq` at 0x101254ac (target 0x101254d0), taken when a0(=entry(0x102c71c0)) == 0 and falls through when a0(=entry(0x102c71c0)) != 0.
  At `beq` at 0x101254e8 (target 0x101254fc), taken when a5(=[sym(__us_rsthread_malloc)]) == 0 and falls through when a5(=[sym(__us_rsthread_malloc)]) != 0.
  At `beq` at 0x10125504 (target 0x1012551c), taken when a6(=[sym(__us_rsthread_malloc)]) == 0 and falls through when a6(=[sym(__us_rsthread_malloc)]) != 0.
  At `beq` at 0x1012552c (target 0x10125550), taken when a0(=entry(0x102c71c0)) == 0 and falls through when a0(=entry(0x102c71c0)) != 0.
  At `beq` at 0x10125568 (target 0x1012557c), taken when a5(=[sym(__us_rsthread_malloc)]) == 0 and falls through when a5(=[sym(__us_rsthread_malloc)]) != 0.
  Returns v0 = 0x10 (`jr` at 0x10124910).
  Returns v0 = ? (`jr` at 0x1012491c).
  Returns v0 = 0x8; f0 = ret(SecurityLookupIDByClass) (`jr` at 0x101249f4).
  Returns v0 = 0xb; f0 = ret(AddXineramaRegion..EAE) (`jr` at 0x10124a00).
  Returns v0 = 0xb; f0 = ret(Xalloc) (`jr` at 0x10124a24).
  Returns v0 = 0x9; f0 = ret(SecurityLookupIDByClass) (`jr` at 0x10124a34).
- `DeliverEventsToMultibuffer..JMC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10126550 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10126550-0x10126a54 (1284 bytes).
  Stores 4 bytes from a2 to abs 0x102c7270 (CriticalOutputPending) (`sw` at 0x1012662c) with value 0x1.
  Stores 1 bytes from a2 to a1 (arg1 at entry) +0x1 (`sb` at 0x1012680c) with value 0x1.
  Stores 2 bytes from at to ? (base unknown) (`sh` at 0x10126874).
  Stores 4 bytes from v1 to [0x102c5f80] +0x1c (`sw` at 0x101268b0) with value [[0x102c5f80]+28]+1.
  Stores 2 bytes from v0 to ? (base unknown) (`sh` at 0x101268b8) with value [[0x102c5f80]+28].
  Stores 1 bytes from a2 to a1 (arg1 at entry) +0x1 (`sb` at 0x101269f8) with value 0x1.
  Stores 1 bytes from zero to a1 (arg1 at entry) +0x1 (`sb` at 0x10126a38) with value 0x0.
  Stores 1 bytes from zero to a1 (arg1 at entry) +0x1 (`sb` at 0x10126a50) with value 0x0.
  Calls `TryClientEvents [0x10136730]` via direct with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0], a4=a3 at entry (arg3), a5=0x0 (`jal` at 0x101265c4).
  Calls `WriteEventsToClient [0x10180840]` via direct with a0=?, a1=a2 at entry (arg2), a2=a1 at entry (arg1), a3=?, a4=table(0x102cc0d0), a6=0xb (`jal` at 0x10126638).
  At `beq` at 0x10126580 (target 0x101268bc), taken when (a3 & at(=([a0+4] | [a0]))) == 0 and falls through when (a3 & at(=([a0+4] | [a0]))) != 0.
  At `beq` at 0x101265cc (target 0x101268d8), taken when v0(=ret(TryClientEvents)) == 0 and falls through when v0(=ret(TryClientEvents)) != 0.
  At `blez` at 0x101265d4 (target 0x10126970), taken when v0(=ret(TryClientEvents)) <= 0 (signed) and falls through when v0(=ret(TryClientEvents)) > 0 (signed).
  At `beq` at 0x101265dc (target 0x10126990), taken when s2(=[a0+8]) == 0 and falls through when s2(=[a0+8]) != 0.
  At `beq` at 0x10126624 (target 0x10126634), taken when (t8(=entry(0x102cc360)) & a3(?)) == 0 and falls through when (t8(=entry(0x102cc360)) & a3(?)) != 0.
  At `beq` at 0x10126654 (target 0x10126714), taken when s2(?) == 0 and falls through when s2(?) != 0.
  At `beq` at 0x10126684 (target 0x101266a0), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `beq` at 0x1012668c (target 0x101266a0), taken when a7(=[sym(serverClient)]) == a0(?) and falls through when a7(=[sym(serverClient)]) != a0(?).
  At `beq` at 0x10126698 (target 0x1012674c), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `beq` at 0x101266a0 (target 0x10126650), taken when v0(=[0x102c5f78]) == 0 and falls through when v0(=[0x102c5f78]) != 0.
  At `beq` at 0x101266a8 (target 0x10126650), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `beq` at 0x101266b0 (target 0x10126650), taken when t0(=[sym(serverClient)]) == a0(?) and falls through when t0(=[sym(serverClient)]) != a0(?).
  At `bne` at 0x101266bc (target 0x10126650), taken when a4(?) != 0 and falls through when a4(?) == 0.
  At `blez` at 0x101266c8 (target 0x101266f0), taken when t3(=[0x102c5f74]) <= 0 (signed) and falls through when t3(=[0x102c5f74]) > 0 (signed).
  At `beq` at 0x101266e0 (target 0x10126928), taken when a7(?) == s3(=a1) and falls through when a7(?) != s3(=a1).
  At `bnel` at 0x101266e8 (target 0x101266e0), taken when v0(?) != t1(=table(0x102d0bb0)) and falls through when v0(?) == t1(=table(0x102d0bb0)).
  At `beq` at 0x101266f0 (target 0x10126704), taken when s6(=a3) == 0 and falls through when s6(=a3) != 0.
  At `beq` at 0x101266f8 (target 0x10126704), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `bne` at 0x10126704 (target 0x1012675c), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0x10126718 (target 0x101268fc), taken when s8(?) == 0 and falls through when s8(?) != 0.
  At `beq` at 0x1012674c (target 0x10126758), taken when s6(=a3) == 0 -> outside and falls through when s6(=a3) != 0.
  At `beq` at 0x10126754 (target 0x101266a0), taken when t3(?) == 0 and falls through when t3(?) != 0.
  At `beq` at 0x10126778 (target 0x10126998), taken when t9(=[0x102c6080]) == a2(=0x1) and falls through when t9(=[0x102c6080]) != a2(=0x1).
  At `beq` at 0x10126788 (target 0x101269c4), taken when v1(=0x6) == a1(=[a1]:1) and falls through when v1(=0x6) != a1(=[a1]:1).
  At `bne` at 0x10126790 (target 0x10126814), taken when t3(=[0x102c6084]) != a1(=[a1]:1) and falls through when t3(=[0x102c6084]) == a1(=[a1]:1).
  At `beq` at 0x10126798 (target 0x101269fc), taken when v0(=[sym(inputInfo)+4]) == 0 and falls through when v0(=[sym(inputInfo)+4]) != 0.
  At `beq` at 0x101267ac (target 0x101269fc), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0x101267b8 (target 0x101267a8), taken when a5(?) != a4(?) and falls through when a5(?) == a4(?).
  At `beq` at 0x101267cc (target 0x10126938), taken when a6(=[[sym(inputInfo)+16]+76]:1) == a4(?) and falls through when a6(=[[sym(inputInfo)+16]+76]:1) != a4(?).
  At `beq` at 0x101267d8 (target 0x10126938), taken when at(=[[sym(inputInfo)+12]+76]:1) == a4(?) and falls through when at(=[[sym(inputInfo)+12]+76]:1) != a4(?).
  At `bne` at 0x101267e0 (target 0x10126810), taken when t3(=[0x102c6084]) != a1(=[a1]:1) and falls through when t3(=[0x102c6084]) == a1(=[a1]:1).
  At `beq` at 0x101267e8 (target 0x10126a34), taken when ra(?) == 0 and falls through when ra(?) != 0.
  At `bne` at 0x101267f8 (target 0x10126958), taken when a4(?) != 0 and falls through when a4(?) == 0.
  At `beq` at 0x10126804 (target 0x10126968), taken when a5(=[a1+12]) == 0 and falls through when a5(=[a1+12]) != 0.
  At `beq` at 0x10126834 (target 0x1012661c), taken when a6(=0xb) == a7(?) and falls through when a6(=0xb) != a7(?).
  At `beq` at 0x10126840 (target 0x1012661c), taken when a7(?) == 0 and falls through when a7(?) != 0.
  At `beq` at 0x10126860 (target 0x101268a0), taken when a7(?) == t0(?) and falls through when a7(?) != t0(?).
  At `bnel` at 0x10126868 (target 0x10126860), taken when v0(?) != t1(=table(0x102d0bb0)) and falls through when v0(?) == t1(=table(0x102d0bb0)).
  At `beq` at 0x1012687c (target 0x1012661c), taken when a7(?) == s1(=(a1 + (a2 << 0x5))) and falls through when a7(?) != s1(=(a1 + (a2 << 0x5))).
  At `beq` at 0x10126884 (target 0x10126870), taken when t2(=[0x102c5f78]) == 0 and falls through when t2(=[0x102c5f78]) != 0.
  At `bgtz` at 0x1012688c (target 0x1012685c), taken when t3(=[0x102c5f74]) > 0 (signed) and falls through when t3(=[0x102c5f74]) <= 0 (signed).
  At `beq` at 0x101268a0 (target 0x10126870), taken when t0(?) == 0 and falls through when t0(?) != 0.
  At `beq` at 0x101268d8 (target 0x101268f8), taken when s2(=[a0+8]) == 0 and falls through when s2(=[a0+8]) != 0.
  At `bne` at 0x10126928 (target 0x1012675c), taken when a7(?) != 0 and falls through when a7(?) == 0.
  At `bne` at 0x10126938 (target 0x10126810), taken when t3(=[0x102c6084]) != a1(=[a1]:1) and falls through when t3(=[0x102c6084]) == a1(=[a1]:1).
  At `beq` at 0x10126940 (target 0x10126a34), taken when ra(?) == 0 and falls through when ra(?) != 0.
  At `beq` at 0x10126950 (target 0x10126800), taken when a4(=[[0x94]+8]) == 0 and falls through when a4(=[[0x94]+8]) != 0.
  At `bne` at 0x10126960 (target 0x1012680c), taken when a5(?) != a6(=[a1+12]) and falls through when a5(?) == a6(=[a1+12]).
  At `beq` at 0x10126970 (target 0x10126a28), taken when s2(=[a0+8]) == 0 and falls through when s2(=[a0+8]) != 0.
  At `bne` at 0x1012699c (target 0x10126780), taken when a7(?) != 0 and falls through when a7(?) == 0.
  At `beq` at 0x101269a4 (target 0x10126780), taken when t3(=0xc) == a1(=[a1]:1) and falls through when t3(=0xc) != a1(=[a1]:1).
  At `beq` at 0x101269ac (target 0x10126784), taken when t9(=0x16) == a1(=[a1]:1) and falls through when t9(=0x16) != a1(=[a1]:1).
  At `beq` at 0x101269d0 (target 0x10126a4c), taken when (t2(?) & 0x80) == 0 and falls through when (t2(?) & 0x80) != 0.
  At `beq` at 0x101269e0 (target 0x10126a3c), taken when a4(=[[[sym(inputInfo)+16]+148]+8]) == 0 and falls through when a4(=[[[sym(inputInfo)+16]+148]+8]) != 0.
  At `beq` at 0x101269ec (target 0x10126644), taken when a5(=[[[[sym(inputInfo)+16]+148]+8]+4]) == a3(=[a1+12]) and falls through when a5(=[[[[sym(inputInfo)+16]+148]+8]+4]) != a3(=[a1+12]).
  At `bne` at 0x101269fc (target 0x10126810), taken when t3(=[0x102c6084]) != a1(=[a1]:1) and falls through when t3(=[0x102c6084]) == a1(=[a1]:1).
  At `beq` at 0x10126a08 (target 0x10126a34), taken when (a6(=[0x102cac7c]) & t2(?)) == 0 and falls through when (a6(=[0x102cac7c]) & t2(?)) != 0.
  At `beq` at 0x10126a18 (target 0x10126800), taken when a4(=[[0x94]+8]) == 0 and falls through when a4(=[[0x94]+8]) != 0.
  At `bne` at 0x10126a3c (target 0x101269f4), taken when a3(=[a1+12]) != 0 and falls through when a3(=[a1+12]) == 0.
  Returns v0 = ? (`jr` at 0x10126744).
  Returns v0 = 0x0 (`jr` at 0x101268d0).
  Returns v0 = ? (`jr` at 0x10126920).
  The instructions from 0x10126854 to 0x10126858 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1012689c to 0x1012689c are not reached by any path from the entry, and their branches are not listed.

- `ProcSGISetStereoBuffer..PLD` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1012b3f0 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1012b3f0-0x1012b4ec (252 bytes).
  Stores 4 bytes from a4 to a0 (arg0 at entry) +0x18 (`sw` at 0x1012b484).
  Stores 4 bytes from a2 to a0 (arg0 at entry) +0x18 (`sw` at 0x1012b49c).
  Stores 4 bytes from a3 to a0 (arg0 at entry) +0x18 (`sw` at 0x1012b4bc).
  Calls `SecurityLookupIDByClass [0x10236190]` via direct with a0=a0 at entry (arg0), a1=[[a0+8]+4], a2=0x40000000, a3=0x0 (`jal` at 0x1012b448).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x1012b4d4).
  At `beq` at 0x1012b400 (target 0x1012b410), taken when at(=[a0+72]) == v0(=0x3) and falls through when at(=[a0+72]) != v0(=0x3).
  At `bne` at 0x1012b418 (target 0x1012b434), taken when v1(=[a0+48]) != a1(=[[a0+8]+4]) and falls through when v1(=[a0+48]) == a1(=[[a0+8]+4]).
  At `bne` at 0x1012b424 (target 0x1012b438), taken when a2(=[a0+116]) != 0 and falls through when a2(=[a0+116]) == 0.
  At `beq` at 0x1012b458 (target 0x1012b4a8), taken when v0(=ret(SecurityLookupIDByClass)) == 0 and falls through when v0(=ret(SecurityLookupIDByClass)) != 0.
  At `beq` at 0x1012b46c (target 0x1012b488), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `bltz` at 0x1012b48c (target 0x1012b49c), taken when a2(?) < 0 (signed) and falls through when a2(?) >= 0 (signed).
  At `bne` at 0x1012b494 (target 0x1012b4c0), taken when a5(?) != 0 and falls through when a5(?) == 0.
  Returns v0 = ? (`jr` at 0x1012b408).
  Returns v0 = 0x9 (`jr` at 0x1012b480).
  Returns v0 = 0x2 (`jr` at 0x1012b4a0).
  Returns v0 = 0x9; f0 = ret(SecurityLookupIDByClass) (`jr` at 0x1012b4b8).

- `Type1RegisterFontFileFunctions` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1012c080 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1012c080-0x1012c180 (256 bytes).
  Stores 4 bytes from v0 to abs 0x102c731c (renderers..128+4) (`sw` at 0x1012c12c) with value ret(Xrealloc).
  Stores 4 bytes from s1 to abs 0x102c7318 (renderers..128) (`sw` at 0x1012c130) with value [0x102c7318]+1.
  Stores 4 bytes from s0 to ? (base unknown) (`sw` at 0x1012c138) with value [0x102c7318].
  Stores 4 bytes from s4 to (ret(Xrealloc) + ([0x102c7318]+1 << 0x2)) -0x4 (`sw` at 0x1012c140).
  Calls `Type1InitStdProps [0x10264750]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1012c094).
  Calls `strcmp` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x1012c0e4).
  Calls `Xrealloc [0x101b9470]` via direct with a0=[0x102c731c], a1=([0x102c7318] << 0x2)+4, a2=?, a3=? (`jal` at 0x1012c11c).
  At `blez` at 0x1012c0c0 (target 0x1012c10c), taken when v0(=[0x102c7318]) <= 0 (signed) and falls through when v0(=[0x102c7318]) > 0 (signed).
  At `beq` at 0x1012c0ec (target 0x1012c148), taken when v0(=ret(strcmp)) == 0 and falls through when v0(=ret(strcmp)) != 0.
  At `bne` at 0x1012c104 (target 0x1012c0d0), taken when s1(?) < v0(=[0x102c7318]) (signed) and falls through when s1(?) >= v0(=[0x102c7318]) (signed).
  At `beq` at 0x1012c124 (target 0x1012c148), taken when v0(=ret(Xrealloc)) == 0 and falls through when v0(=ret(Xrealloc)) != 0.
  At `bne` at 0x1012c154 (target 0x1012c0b8), taken when s5(?) != a3(=0x2) and falls through when s5(?) == a3(=0x2).
  Returns v0 = ? (`jr` at 0x1012c178).

- `XkbSendMap..MCF` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1012d490 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1012d490-0x1012ddf0 (2400 bytes).
  Stores 8 bytes from t8 to sp (at entry) -0x38 (`sd` at 0x1012d49c) with value s8.
  Stores 8 bytes from s5 to sp (at entry) -0x48 (`sd` at 0x1012d4a0) with value s5.
  Stores 8 bytes from s7 to sp (at entry) -0x50 (`sd` at 0x1012d4a4) with value s7.
  Stores 8 bytes from s1 to sp (at entry) -0x60 (`sd` at 0x1012d4b0) with value s1.
  Stores 8 bytes from s0 to sp (at entry) -0x40 (`sd` at 0x1012d4b8) with value s0.
  Stores 8 bytes from s4 to sp (at entry) -0x68 (`sd` at 0x1012d4c4) with value s4.
  Stores 8 bytes from ra to sp (at entry) -0x70 (`sd` at 0x1012d4d0) with value ra.
  Stores 8 bytes from s3 to sp (at entry) -0x78 (`sd` at 0x1012d4dc) with value s3.
  Stores 8 bytes from s6 to sp (at entry) -0x30 (`sd` at 0x1012d4e8) with value s6.
  Stores 8 bytes from s2 to sp (at entry) -0x58 (`sd` at 0x1012d4f4) with value s2.
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x1012d534).
  Stores 1 bytes from t3 to ? (base unknown) (`sb` at 0x1012d53c).
  Stores 2 bytes from t2 to ? (base unknown) (`sh` at 0x1012d544).
  Stores 1 bytes from t2 to ? (base unknown) (`sb` at 0x1012d560).
  Stores 1 bytes from t1 to ? (base unknown) (`sb` at 0x1012d564).
  Stores 1 bytes from t3 to ? (base unknown) (`sb` at 0x1012d598).
  Stores 1 bytes from t2 to ? (base unknown) (`sb` at 0x1012d5a0).
  Stores 2 bytes from a5 to ? (base unknown) (`sh` at 0x1012d5a8).
  Stores 1 bytes from t1 to ? (base unknown) (`sb` at 0x1012d5b0).
  Stores 1 bytes from a7 to ? (base unknown) (`sb` at 0x1012d5b8).
  Stores 1 bytes from a6 to ? (base unknown) (`sb` at 0x1012d5c4).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x1012d5e0).
  Stores 1 bytes from a6 to ? (base unknown) (`sb` at 0x1012d5e4).
  Stores 1 bytes from ra to ? (base unknown) (`sb` at 0x1012d614).
  Stores 1 bytes from t9 to ? (base unknown) (`sb` at 0x1012d61c).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x1012d624).
  Stores 1 bytes from t3 to ? (base unknown) (`sb` at 0x1012d62c).
  Stores 2 bytes from t2 to ? (base unknown) (`sh` at 0x1012d634).
  Stores 1 bytes from t2 to ? (base unknown) (`sb` at 0x1012d650).
  Stores 1 bytes from t1 to ? (base unknown) (`sb` at 0x1012d654).
  Stores 1 bytes from t1 to ? (base unknown) (`sb` at 0x1012d6d4).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x1012d6e0).
  Stores 1 bytes from t3 to ? (base unknown) (`sb` at 0x1012d6fc).
  Stores 1 bytes from t2 to ? (base unknown) (`sb` at 0x1012d704).
  Stores 1 bytes from a2 to ? (base unknown) (`sb` at 0x1012d710).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x1012d714).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x1012d72c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x1012d734).
  Stores 1 bytes from a2 to ? (base unknown) (`sb` at 0x1012d738).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x1012d73c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x1012d754).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x1012d75c).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x1012d760).
  Stores 1 bytes from a2 to ? (base unknown) (`sb` at 0x1012d764).
  Stores 1 bytes from a4 to ? (base unknown) (`sb` at 0x1012d798).
  Stores 1 bytes from a3 to ? (base unknown) (`sb` at 0x1012d7a0).
  Stores 1 bytes from a2 to ? (base unknown) (`sb` at 0x1012d7a8).
  Stores 1 bytes from a1 to ? (base unknown) (`sb` at 0x1012d7b0).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x1012d7b8).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x1012d7c0).
  Stores 2 bytes from ra to ? (base unknown) (`sh` at 0x1012d7d8).
  Stores 1 bytes from t1 to ? (base unknown) (`sb` at 0x1012d870).
  Stores 1 bytes from zero to ? (base unknown) (`sb` at 0x1012d8b4) with value 0x0.
  Stores 1 bytes from t3 to ? (base unknown) (`sb` at 0x1012d9a4).
  Stores 1 bytes from t2 to ? (base unknown) (`sb` at 0x1012d9ac).
  Stores 1 bytes from t1 to ? (base unknown) (`sb` at 0x1012d9b4).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x1012d9e4).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x1012d9ec).
  Stores 1 bytes from ra to ? (base unknown) (`sb` at 0x1012d9f4).
  Stores 1 bytes from a2 to ? (base unknown) (`sb` at 0x1012da54).
  Stores 1 bytes from t2 to ? (base unknown) (`sb` at 0x1012da80).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x1012dae4).
  Stores 1 bytes from t3 to ? (base unknown) (`sb` at 0x1012daec).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x1012db1c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x1012db24).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x1012db94).
  Stores 1 bytes from t3 to ? (base unknown) (`sb` at 0x1012db9c).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x1012dbcc).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x1012dbd4).
  Stores 1 bytes from t2 to ? (base unknown) (`sb` at 0x1012dc44).
  Stores 2 bytes from t1 to ? (base unknown) (`sh` at 0x1012dc4c).
  Stores 1 bytes from ra to ? (base unknown) (`sb` at 0x1012dc7c).
  Stores 2 bytes from t9 to ? (base unknown) (`sh` at 0x1012dc84).
  Stores 1 bytes from t2 to a2 (arg2 at entry) +0x17 (`sb` at 0x1012dce8) with value [a2+22]:1.
  Stores 1 bytes from t1 to a2 (arg2 at entry) +0x16 (`sb` at 0x1012dcec) with value [a2+23]:1.
  Stores 1 bytes from t0 to a2 (arg2 at entry) +0x13 (`sb` at 0x1012dcf0) with value [a2+18]:1.
  Stores 1 bytes from a7 to a2 (arg2 at entry) +0x12 (`sb` at 0x1012dcf4) with value [a2+19]:1.
  Stores 1 bytes from a6 to a2 (arg2 at entry) +0xd (`sb` at 0x1012dcf8) with value [a2+12]:1.
  Stores 1 bytes from a5 to a2 (arg2 at entry) +0xc (`sb` at 0x1012dcfc) with value [a2+13]:1.
  Stores 1 bytes from a4 to a2 (arg2 at entry) +0x6 (`sb` at 0x1012dd00) with value [a2+5]:1.
  Stores 1 bytes from a3 to a2 (arg2 at entry) +0x5 (`sb` at 0x1012dd04) with value [a2+6]:1.
  Stores 1 bytes from a2 to a2 (arg2 at entry) +0x7 (`sb` at 0x1012dd08) with value [a2+4]:1.
  Stores 1 bytes from a1 to a2 (arg2 at entry) +0x4 (`sb` at 0x1012dd0c) with value [a2+7]:1.
  Stores 1 bytes from a0 to a2 (arg2 at entry) +0x3 (`sb` at 0x1012dd10) with value [a2+2]:1.
  Stores 1 bytes from v1 to a2 (arg2 at entry) +0x2 (`sb` at 0x1012dd14) with value [a2+3]:1.
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x1012ddd4).
  Stores 1 bytes from a4 to ? (base unknown) (`sb` at 0x1012ddd8).
  Stores 1 bytes from a3 to ? (base unknown) (`sb` at 0x1012dde4).
  Stores 1 bytes from a2 to ? (base unknown) (`sb` at 0x1012ddec).
  Calls `memcpy` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x1012d804).
  Calls `memcpy` via got with a0=?, a1=?, a2=?, a3=?, a7=[a2+24]:1 (`jalr` at 0x1012d948).
  Calls `WriteToClient [0x100b3500]` via direct with a0=a0 at entry (arg0), a1=0x28, a2=a2 at entry (arg2), a3=? (`jal` at 0x1012dd30).
  Calls `WriteToClient [0x100b3500]` via direct with a0=a0 at entry (arg0), a1=([a2+4] << 0x2)-8, a2=?, a3=? (`jal` at 0x1012dd44).
  Calls `ErrorF [0x10094ec0]` via direct with a0=0x1029b4c8, a1=([a2+4] << 0x2)-8, a2=?, a3=?, a7=[a2+35]:1 (`jal` at 0x1012dd84).
  At `beq` at 0x1012d4f8 (target 0x1012dd94), taken when sp(?) == 0 and falls through when sp(?) != 0.
  At `blez` at 0x1012d504 (target 0x1012d698), taken when t9(=[a2+15]:1) <= 0 (signed) and falls through when t9(=[a2+15]:1) > 0 (signed).
  At `beq` at 0x1012d558 (target 0x1012d568), taken when t3(=[a0+16]) == 0 and falls through when t3(=[a0+16]) != 0.
  At `bne` at 0x1012d574 (target 0x1012d530), taken when a7(?) < t9(?) (unsigned) and falls through when a7(?) >= t9(?) (unsigned).
  At `beq` at 0x1012d58c (target 0x1012d694), taken when a0(?) >= at(=[a2+15]:1) (unsigned) and falls through when a0(?) < at(=[a2+15]:1) (unsigned).
  At `beq` at 0x1012d5d8 (target 0x1012d5e8), taken when a7(=[a0+16]) == 0 and falls through when a7(=[a0+16]) != 0.
  At `blez` at 0x1012d5f0 (target 0x1012d584), taken when t8(?) <= 0 (signed) and falls through when t8(?) > 0 (signed).
  At `beq` at 0x1012d600 (target 0x1012d66c), taken when t1(?) == 0 and falls through when t1(?) != 0.
  At `beq` at 0x1012d648 (target 0x1012d658), taken when t3(=[a0+16]) == 0 and falls through when t3(=[a0+16]) != 0.
  At `bne` at 0x1012d664 (target 0x1012d610), taken when a6(?) < t1(?) (unsigned) and falls through when a6(?) >= t1(?) (unsigned).
  At `beq` at 0x1012d67c (target 0x1012d584), taken when t2(?) == 0 and falls through when t2(?) != 0.
  At `bne` at 0x1012d684 (target 0x1012d530), taken when t1(?) != 0 and falls through when t1(?) == 0.
  At `blez` at 0x1012d69c (target 0x1012d830), taken when v1(=[a2+20]:1) <= 0 (signed) and falls through when v1(=[a2+20]:1) > 0 (signed).
  At `blez` at 0x1012d6dc (target 0x1012d768), taken when a6(?) <= 0 (signed) and falls through when a6(?) > 0 (signed).
  At `bne` at 0x1012d6e4 (target 0x1012ddcc), taken when a5(?) != 0 and falls through when a5(?) == 0.
  At `beq` at 0x1012d730 (target 0x1012d828), taken when a1(?) == v0(?) and falls through when a1(?) != v0(?).
  At `bne` at 0x1012d758 (target 0x1012d710), taken when a3(?) != v0(?) and falls through when a3(?) == v0(?).
  At `beq` at 0x1012d76c (target 0x1012d778), taken when a7(?) == 0 and falls through when a7(?) != 0.
  At `beq` at 0x1012d78c (target 0x1012d830), taken when s4(?) >= t9(=[a2+20]:1) (unsigned) and falls through when s4(?) < t9(=[a2+20]:1) (unsigned).
  At `beq` at 0x1012d7e0 (target 0x1012d780), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `bne` at 0x1012d814 (target 0x1012d6c0), taken when a2(=[a0+16]) != 0 and falls through when a2(=[a0+16]) == 0.
  At `blez` at 0x1012d834 (target 0x1012d968), taken when a4(=[a2+24]:1) <= 0 (signed) and falls through when a4(=[a2+24]:1) > 0 (signed).
  At `beq` at 0x1012d87c (target 0x1012d8b8), taken when a6(?) >= a7(=[a2+24]:1) (unsigned) and falls through when a6(?) < a7(=[a2+24]:1) (unsigned).
  At `bne` at 0x1012d8a8 (target 0x1012d850), taken when t9(?) != 0 and falls through when t9(?) == 0.
  At `beq` at 0x1012d8c8 (target 0x1012d964), taken when a7(=[a2+24]:1) == 0 and falls through when a7(=[a2+24]:1) != 0.
  At `beq` at 0x1012d8f4 (target 0x1012d964), taken when a6(?) >= a7(=[a2+24]:1) (unsigned) and falls through when a6(?) < a7(=[a2+24]:1) (unsigned).
  At `beq` at 0x1012d904 (target 0x1012d8ec), taken when t0(?) == 0 and falls through when t0(?) != 0.
  At `bne` at 0x1012d95c (target 0x1012d8d0), taken when s3(?) < a7(=[a2+24]:1) (unsigned) and falls through when s3(?) >= a7(=[a2+24]:1) (unsigned).
  At `blez` at 0x1012d974 (target 0x1012da10), taken when a5(=[a2+27]:1) <= 0 (signed) and falls through when a5(=[a2+27]:1) > 0 (signed).
  At `beq` at 0x1012d988 (target 0x1012da10), taken when a7(=[a2+26]:1) == 0 and falls through when a7(=[a2+26]:1) != 0.
  At `beq` at 0x1012d994 (target 0x1012d9c0), taken when t0(?) == 0 and falls through when t0(?) != 0.
  At `beq` at 0x1012d9c8 (target 0x1012da10), taken when a5(?) >= a7(=[a2+26]:1) (unsigned) and falls through when a5(?) < a7(=[a2+26]:1) (unsigned).
  At `beq` at 0x1012d9d4 (target 0x1012da00), taken when t9(?) == 0 and falls through when t9(?) != 0.
  At `bne` at 0x1012da08 (target 0x1012d990), taken when a5(?) < a7(=[a2+26]:1) (unsigned) and falls through when a5(?) >= a7(=[a2+26]:1) (unsigned).
  At `beq` at 0x1012da14 (target 0x1012da9c), taken when a0(=[a2+38]:2) == 0 and falls through when a0(=[a2+38]:2) != 0.
  At `beq` at 0x1012da38 (target 0x1012da58), taken when (t0(?) & a1(=[a2+38]:2)) == 0 and falls through when (t0(?) & a1(=[a2+38]:2)) != 0.
  At `beq` at 0x1012da64 (target 0x1012da84), taken when (t0(?) & t1(=[a2+38]:2)) == 0 and falls through when (t0(?) & t1(=[a2+38]:2)) != 0.
  At `bne` at 0x1012da88 (target 0x1012da30), taken when a5(?) != a0(=0x10) and falls through when a5(?) == a0(=0x10).
  At `blez` at 0x1012daac (target 0x1012db58), taken when t9(=[a2+30]:1) <= 0 (signed) and falls through when t9(=[a2+30]:1) > 0 (signed).
  At `beq` at 0x1012dabc (target 0x1012db40), taken when a7(=[a2+29]:1) == 0 and falls through when a7(=[a2+29]:1) != 0.
  At `beq` at 0x1012dad4 (target 0x1012daf8), taken when t2(?) == 0 and falls through when t2(?) != 0.
  At `beq` at 0x1012db00 (target 0x1012db40), taken when a5(?) >= a7(=[a2+29]:1) (unsigned) and falls through when a5(?) < a7(=[a2+29]:1) (unsigned).
  At `beq` at 0x1012db0c (target 0x1012db30), taken when ra(?) == 0 and falls through when ra(?) != 0.
  At `bne` at 0x1012db38 (target 0x1012dad0), taken when a5(?) < a7(=[a2+29]:1) (unsigned) and falls through when a5(?) >= a7(=[a2+29]:1) (unsigned).
  At `blez` at 0x1012db68 (target 0x1012dc08), taken when ra(=[a2+33]:1) <= 0 (signed) and falls through when ra(=[a2+33]:1) > 0 (signed).
  At `beq` at 0x1012db78 (target 0x1012dbf0), taken when a7(=[a2+32]:1) == 0 and falls through when a7(=[a2+32]:1) != 0.
  At `beq` at 0x1012db84 (target 0x1012dba8), taken when t2(?) == 0 and falls through when t2(?) != 0.
  At `beq` at 0x1012dbb0 (target 0x1012dbf0), taken when a5(?) >= a7(=[a2+32]:1) (unsigned) and falls through when a5(?) < a7(=[a2+32]:1) (unsigned).
  At `beq` at 0x1012dbbc (target 0x1012dbe0), taken when ra(?) == 0 and falls through when ra(?) != 0.
  At `bne` at 0x1012dbe8 (target 0x1012db80), taken when a5(?) < a7(=[a2+32]:1) (unsigned) and falls through when a5(?) >= a7(=[a2+32]:1) (unsigned).
  At `blez` at 0x1012dc18 (target 0x1012dca0), taken when ra(=[a2+36]:1) <= 0 (signed) and falls through when ra(=[a2+36]:1) > 0 (signed).
  At `beq` at 0x1012dc28 (target 0x1012dca0), taken when a7(=[a2+35]:1) == 0 and falls through when a7(=[a2+35]:1) != 0.
  At `beq` at 0x1012dc34 (target 0x1012dc58), taken when t0(?) == 0 and falls through when t0(?) != 0.
  At `beq` at 0x1012dc60 (target 0x1012dca0), taken when a5(?) >= a7(=[a2+35]:1) (unsigned) and falls through when a5(?) < a7(=[a2+35]:1) (unsigned).
  At `beq` at 0x1012dc6c (target 0x1012dc90), taken when t8(?) == 0 and falls through when t8(?) != 0.
  At `bne` at 0x1012dc98 (target 0x1012dc30), taken when a5(?) < a7(=[a2+35]:1) (unsigned) and falls through when a5(?) >= a7(=[a2+35]:1) (unsigned).
  At `bne` at 0x1012dca4 (target 0x1012dd7c), taken when a2(?) != s7(=([a2+4] << 0x2)-8) and falls through when a2(?) == s7(=([a2+4] << 0x2)-8).
  At `beq` at 0x1012dcb0 (target 0x1012dd1c), taken when v0(=[a0+16]) == 0 and falls through when v0(=[a0+16]) != 0.
  Returns v0 = [a0+40]; f0 = ret(WriteToClient) (`jr` at 0x1012dd74).
  Returns v0 = 0xb (`jr` at 0x1012ddc4).
  The instructions from 0x1012d528 to 0x1012d52c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1012d6bc to 0x1012d6bc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1012d844 to 0x1012d84c are not reached by any path from the entry, and their branches are not listed.

- `FontFileRegisterRenderer` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10131b90 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10131b90-0x10131ca8 (280 bytes).
  Stores 4 bytes from s0 to abs 0x102c7318 (renderers..128) (`sw` at 0x10131c34) with value [0x102c7318]+1.
  Stores 4 bytes from v0 to abs 0x102c731c (renderers..128+4) (`sw` at 0x10131c38) with value ret(Xrealloc).
  Stores 4 bytes from s1 to a0 (arg0 at entry) +0x18 (`sw` at 0x10131c44) with value [0x102c7318].
  Stores 4 bytes from s2 to (ret(Xrealloc) + ([0x102c7318]+1 << 0x2)) -0x4 (`sw` at 0x10131c54) with value a0.
  Calls `strcmp` via got with a0=?, a1=[a0], a2=?, a3=? (`jalr` at 0x10131be0).
  Calls `Xrealloc [0x101b9470]` via direct with a0=[0x102c731c], a1=([0x102c7318] << 0x2)+4, a2=?, a3=? (`jal` at 0x10131c18).
  At `blez` at 0x10131bc4 (target 0x10131c04), taken when v0(=[0x102c7318]) <= 0 (signed) and falls through when v0(=[0x102c7318]) > 0 (signed).
  At `beq` at 0x10131be8 (target 0x10131c84), taken when v0(=ret(strcmp)) == 0 and falls through when v0(=ret(strcmp)) != 0.
  At `bne` at 0x10131bfc (target 0x10131bd0), taken when s1(?) < v0(=[0x102c7318]) (signed) and falls through when s1(?) >= v0(=[0x102c7318]) (signed).
  At `beq` at 0x10131c2c (target 0x10131c64), taken when v0(=ret(Xrealloc)) == 0 and falls through when v0(=ret(Xrealloc)) != 0.
  Returns v0 = 0x1; f0 = ret(Xrealloc) (`jr` at 0x10131c5c).
  Returns v0 = 0x0; f0 = ret(Xrealloc) (`jr` at 0x10131c7c).
  Returns v0 = 0x1; f0 = ret(strcmp) (`jr` at 0x10131ca0).

- `sgiCapPaintWindowBorder..BBE` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10134a10 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10134a10-0x10134b18 (264 bytes).
  Stores 4 bytes from t9 to [a0+16] +0xdc (`sw` at 0x10134a48) with value [[([[a0+16]+436] + ([0x102cf2c4] << 0x2))]+24].
  Stores 4 bytes from at to [a0+16] +0xdc (`sw` at 0x10134ac8) with value 0x10134a10.
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=? (`jalr` at 0x10134aa8).
  Calls `(unknown callee)` via register with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jalr` at 0x10134ae0).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=a1 at entry (arg1), a3=? (`jalr` at 0x10134afc).
  At `beq` at 0x10134a68 (target 0x10134a9c), taken when at(=[[([[a0+16]+436] + ([0x102cf2c4] << 0x2))]+40]) == 0 and falls through when at(=[[([[a0+16]+436] + ([0x102cf2c4] << 0x2))]+40]) != 0.
  At `beq` at 0x10134a70 (target 0x10134a9c), taken when s0(=[[([[a0+16]+436] + ([0x102cf2c4] << 0x2))]+44]) == 0 and falls through when s0(=[[([[a0+16]+436] + ([0x102cf2c4] << 0x2))]+44]) != 0.
  At `beq` at 0x10134a84 (target 0x10134ad8), taken when t9(?) == 0 and falls through when t9(?) != 0.
  At `bne` at 0x10134a90 (target 0x10134a80), taken when s0(?) != 0 and falls through when s0(?) == 0.
  At `beq` at 0x10134ae8 (target 0x10134b04), taken when v0(=ret(?)) == 0 and falls through when v0(=ret(?)) != 0.
  At `bne` at 0x10134b08 (target 0x10134a80), taken when s0(?) != 0 and falls through when s0(?) == 0.
  Returns v0 = ret(?); f0 = ret(?) (`jr` at 0x10134ad0).

- `MakeWindowOptional` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10135300 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10135300-0x10135414 (276 bytes).
  Stores 4 bytes from zero to ret(Xalloc) +0x10 (`sw` at 0x1013535c) with value 0x0.
  Stores 4 bytes from zero to ret(Xalloc) +0x14 (`sw` at 0x10135360) with value 0x0.
  Stores 4 bytes from zero to ret(Xalloc) +0x18 (`sw` at 0x10135364) with value 0x0.
  Stores 4 bytes from zero to ret(Xalloc) +0x1c (`sw` at 0x10135368) with value 0x0.
  Stores 4 bytes from a2 to ret(Xalloc) +0x20 (`sw` at 0x1013536c) with value -0x1.
  Stores 4 bytes from zero to ret(Xalloc) +0x24 (`sw` at 0x10135370) with value 0x0.
  Stores 4 bytes from zero to ret(Xalloc) +0x28 (`sw` at 0x10135378) with value 0x0.
  Stores 4 bytes from zero to ret(Xalloc) +0x2c (`sw` at 0x10135380) with value 0x0.
  Stores 4 bytes from zero to ret(Xalloc) +0x30 (`sw` at 0x10135388) with value 0x0.
  Stores 4 bytes from a0 to ret(Xalloc) +0xc (`sw` at 0x10135394).
  Stores 4 bytes from a6 to ret(Xalloc) +0x0 (`sw` at 0x101353b8).
  Stores 4 bytes from t0 to ret(Xalloc) +0x4 (`sw` at 0x101353d0).
  Stores 4 bytes from a7 to ? (base unknown) (`sw` at 0x101353dc).
  Stores 4 bytes from t1 to ret(Xalloc) +0x8 (`sw` at 0x101353ec).
  Stores 4 bytes from a5 to a0 (arg0 at entry) +0x78 (`sw` at 0x101353f8) with value ret(Xalloc).
  Stores 4 bytes from zero to ret(Xalloc) +0x4 (`sw` at 0x10135400) with value 0x0.
  Calls `Xalloc [0x1020aeb0]` via direct with a0=0x34, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x10135334).
  At `beq` at 0x10135318 (target 0x1013532c), taken when v1(=[a0+120]) == 0 and falls through when v1(=[a0+120]) != 0.
  At `beq` at 0x10135340 (target 0x10135404), taken when v0(=ret(Xalloc)) == 0 and falls through when v0(=ret(Xalloc)) != 0.
  At `beq` at 0x101353a8 (target 0x101353a0), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `bltz` at 0x101353c4 (target 0x101353fc), taken when a3(=([a0+124] << 0x3)) < 0 (signed) and falls through when a3(=([a0+124] << 0x3)) >= 0 (signed).
  Returns v0 = 0x1 (`jr` at 0x10135324).
  Returns v0 = 0x1; f0 = ret(Xalloc) (`jr` at 0x101353f4).
  Returns v0 = 0x0; f0 = ret(Xalloc) (`jr` at 0x1013540c).

- `ProcClearImageBufferArea..IKC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10135d60 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10135d60-0x10136204 (1188 bytes).
  Stores 4 bytes from a1 to a0 (arg0 at entry) +0x18 (`sw` at 0x10135e4c).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x10135f54).
  Stores 4 bytes from t0 to sym(globalSerialNumber) +0x0 (`sw` at 0x10135f60) with value 0x1.
  Stores 4 bytes from t0 to sym(globalSerialNumber) +0x0 (`sw` at 0x10135f64) with value [sym(globalSerialNumber)]+1.
  Stores 4 bytes from t0 to ? (base unknown) (`sw` at 0x10135f84).
  Stores 4 bytes from t9 to [[sym(clients)]] +0x30 (`sw` at 0x10135fdc) with value [[[sym(WindowTable)]]+4].
  Stores 4 bytes from t8 to [[sym(clients)]] +0x2c (`sw` at 0x10135fe4) with value [[sym(WindowTable)]].
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x1013601c) with value 0x0.
  Stores 4 bytes from ra to ? (base unknown) (`sw` at 0x10136028).
  Stores 4 bytes from ra to ? (base unknown) (`sw` at 0x1013611c).
  Stores 4 bytes from t8 to ? (base unknown) (`sw` at 0x10136164) with value [[[sym(WindowTable)]]+4].
  Stores 4 bytes from t3 to ? (base unknown) (`sw` at 0x1013616c) with value [[sym(WindowTable)]].
  Stores 4 bytes from at to ? (base unknown) (`sw` at 0x10136198) with value [[[sym(WindowTable)]]+4].
  Stores 4 bytes from ra to ? (base unknown) (`sw` at 0x101361a0) with value [[sym(WindowTable)]].
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x101361cc) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x101361d4) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x101361e0) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x101361e8) with value 0x0.
  Stores 4 bytes from zero to [[sym(clients)]] +0x34 (`sw` at 0x101361f8) with value 0x0.
  Stores 4 bytes from zero to [[sym(clients)]] +0x38 (`sw` at 0x10136200) with value 0x0.
  Calls `SecurityLookupIDByType [0x100d6140]` via direct with a0=0x0, a1=[[a0+8]+4], a2=[0x102ca7ec], a3=0x0 (`jal` at 0x10135da0).
  Calls `GetScratchGC [0x1026a500]` via direct with a0=[ret(SecurityLookupIDByType)+2]:1, a1=[ret(SecurityLookupIDByType)+16], a2=?, a3=?, a5=[ret(SecurityLookupIDByType)+12]:2, a6=[ret(SecurityLookupIDByType)+14]:2, a7=[ret(SecurityLookupIDByType)+16] (`jal` at 0x10135eb0).
  Calls `SetupBackgroundPainter..PJC [0x101b40e0]` via direct with a0=?, a1=ret(GetScratchGC), a2=?, a3=? (`jal` at 0x10135ec0).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x1013600c).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=0x1, a3=sp-96 (`jalr` at 0x10136034).
  Calls `FreeGC [0x1010a5b0]` via direct with a0=?, a1=0x0, a2=?, a3=? (`jal` at 0x1013607c).
  Calls `(unknown callee)` via register with a0=sp-80, a1=sp-88, a2=0x1, a3=? (`jalr` at 0x101360c8).
  Calls `MultibufferExpose [0x1011d7a0]` via direct with a0=?, a1=sp-80, a2=?, a3=? (`jal` at 0x101360d4).
  Calls `(unknown callee)` via register with a0=sp-80, a1=?, a2=?, a3=? (`jalr` at 0x101360e4).
  At `beq` at 0x10135d74 (target 0x10135d88), taken when at(=[a0+72]) == v0(=0x5) and falls through when at(=[a0+72]) != v0(=0x5).
  At `blez` at 0x10135dc0 (target 0x10135e04), taken when t0(=[[([ret(SecurityLookupIDByType)+132] + ([0x102cc3a8] << 0x2))]+4]) <= 0 (signed) -> outside and falls through when t0(=[[([ret(SecurityLookupIDByType)+132] + ([0x102cc3a8] << 0x2))]+4]) > 0 (signed).
  At `beq` at 0x10135df4 (target 0x10135e18), taken when t2(?) == a5(?) and falls through when t2(?) != a5(?).
  At `bne` at 0x10135e00 (target 0x10135df0), taken when a1(?) != a6(?) and falls through when a1(?) == a6(?).
  At `beq` at 0x10135e18 (target 0x10135e04), taken when a1(?) == 0 -> outside and falls through when a1(?) != 0.
  At `beq` at 0x10135e28 (target 0x10135e50), taken when a2(=0x1) == a1(?) and falls through when a2(=0x1) != a1(?).
  At `beq` at 0x10135e30 (target 0x10135e50), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `beq` at 0x10135e74 (target 0x10136150), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `beq` at 0x10135e88 (target 0x10136158), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `beq` at 0x10135e9c (target 0x10136084), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `blez` at 0x10135ef0 (target 0x10135f30), taken when t0(?) <= 0 (signed) and falls through when t0(?) > 0 (signed).
  At `beq` at 0x10135f1c (target 0x10136120), taken when t8(?) == a5(?) and falls through when t8(?) != a5(?).
  At `bnel` at 0x10135f28 (target 0x10135f1c), taken when a6(?) != a7(?) and falls through when a6(?) == a7(?).
  At `beq` at 0x10135f38 (target 0x10135ff8), taken when t9(?) == a5(?) and falls through when t9(?) != a5(?).
  At `beq` at 0x10135f50 (target 0x10135f64), taken when ra(=0x10000000) >= t0(=[sym(globalSerialNumber)]+1) (unsigned) and falls through when ra(=0x10000000) < t0(=[sym(globalSerialNumber)]+1) (unsigned).
  At `beq` at 0x10135f90 (target 0x10135ff8), taken when t1(?) == 0 and falls through when t1(?) != 0.
  At `blez` at 0x10135f98 (target 0x10135ffc), taken when a5(=[0x102c5d70]) <= 0 (signed) and falls through when a5(=[0x102c5d70]) > 0 (signed).
  At `beq` at 0x10135fb4 (target 0x10135fec), taken when (a5(=[0x102c5d70]) & 0x1) == 0 and falls through when (a5(=[0x102c5d70]) & 0x1) != 0.
  At `beq` at 0x10135fc0 (target 0x10135fe8), taken when a5(=[[sym(clients)]]) == 0 and falls through when a5(=[[sym(clients)]]) != 0.
  At `bne` at 0x10135fcc (target 0x101361ec), taken when t3(=[[[sym(clients)]]+48]) != a7(?) and falls through when t3(=[[[sym(clients)]]+48]) == a7(?).
  At `bnel` at 0x10135ff0 (target 0x1013617c), taken when ra(?) != 0 and falls through when ra(?) == 0.
  At `bltz` at 0x10136048 (target 0x10136074), taken when a6(?) < 0 (signed) and falls through when a6(?) >= 0 (signed).
  At `beq` at 0x10136064 (target 0x10136100), taken when a1(?) == v0(?) and falls through when a1(?) != v0(?).
  At `beq` at 0x1013606c (target 0x1013605c), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `beq` at 0x1013608c (target 0x101360ec), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `beq` at 0x10136120 (target 0x10135f30), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `beq` at 0x10136130 (target 0x10135f30), taken when v1(?) == a0(?) and falls through when v1(?) != a0(?).
  At `beq` at 0x10136170 (target 0x10135ff8), taken when a6(?) == t0(=(([0x102c5d70] << 0x2) + [sym(clients)])) and falls through when a6(?) != t0(=(([0x102c5d70] << 0x2) + [sym(clients)])).
  At `beq` at 0x1013617c (target 0x101361a4), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `bne` at 0x10136188 (target 0x101361c4), taken when t9(?) != a7(?) and falls through when t9(?) == a7(?).
  At `beq` at 0x101361a8 (target 0x10136170), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `bne` at 0x101361b4 (target 0x101361d8), taken when v0(?) != a7(?) and falls through when v0(?) == a7(?).
  At `bne` at 0x101361c4 (target 0x101361a4), taken when t1(?) != a7(?) and falls through when t1(?) == a7(?).
  At `bne` at 0x101361d8 (target 0x10136170), taken when t1(?) != a7(?) and falls through when t1(?) == a7(?).
  At `bne` at 0x101361f0 (target 0x10135fe8), taken when v1(=[[[sym(clients)]]+56]) != a7(?) and falls through when v1(=[[[sym(clients)]]+56]) == a7(?).
  Returns v0 = 0x10 (`jr` at 0x10135d80).
  Returns v0 = [0x102ca7e8]; f0 = ret(SecurityLookupIDByType) (`jr` at 0x10135e10).
  Returns v0 = 0x2; f0 = ret(SecurityLookupIDByType) (`jr` at 0x10135e48).
  Returns v0 = 0x0 (`jr` at 0x101360f8).

- `SProcCreateImageBuffers..DLC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10137b40 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10137b40-0x10138288 (1864 bytes).
  Stores 1 bytes from v0 to [a0+8] +0x3 (`sb` at 0x10137b54) with value [[a0+8]+2]:1.
  Stores 1 bytes from v1 to [a0+8] +0x2 (`sb` at 0x10137b58) with value [[a0+8]+3]:1.
  Stores 1 bytes from a3 to [a0+8] +0x4 (`sb` at 0x10137b94) with value [[a0+8]+7]:1.
  Stores 1 bytes from a5 to [a0+8] +0x6 (`sb` at 0x10137ba8) with value [[a0+8]+5]:1.
  Stores 1 bytes from a4 to [a0+8] +0x7 (`sb` at 0x10137bb4) with value [[a0+8]+4]:1.
  Stores 1 bytes from a1 to [a0+8] +0x5 (`sb` at 0x10137bc8) with value [[a0+8]+6]:1.
  Stores 1 bytes from at to [a0+8] +0x20 (`sb` at 0x10137c58) with value [[a0+8]+35]:1.
  Stores 1 bytes from v0 to [a0+8] +0x23 (`sb` at 0x10137c64) with value [[a0+8]+32]:1.
  Stores 1 bytes from s6 to ? (base unknown) (`sb` at 0x10137c84).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10137c88).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x10137c8c).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x10137c90).
  Stores 1 bytes from a1 to ? (base unknown) (`sb` at 0x10137c94).
  Stores 1 bytes from a2 to ? (base unknown) (`sb` at 0x10137c98).
  Stores 1 bytes from a3 to ? (base unknown) (`sb` at 0x10137c9c).
  Stores 1 bytes from a4 to ? (base unknown) (`sb` at 0x10137ca0).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x10137ca4).
  Stores 1 bytes from a6 to ? (base unknown) (`sb` at 0x10137ca8).
  Stores 1 bytes from a7 to ? (base unknown) (`sb` at 0x10137cac).
  Stores 1 bytes from t0 to ? (base unknown) (`sb` at 0x10137cb0).
  Stores 1 bytes from t1 to ? (base unknown) (`sb` at 0x10137cb4).
  Stores 1 bytes from t2 to ? (base unknown) (`sb` at 0x10137cb8).
  Stores 1 bytes from t3 to ? (base unknown) (`sb` at 0x10137cbc).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x10137cc0).
  Stores 1 bytes from t9 to ? (base unknown) (`sb` at 0x10137cc4).
  Stores 1 bytes from ra to ? (base unknown) (`sb` at 0x10137cc8).
  Stores 1 bytes from s0 to ? (base unknown) (`sb` at 0x10137ccc).
  Stores 1 bytes from s1 to ? (base unknown) (`sb` at 0x10137cd0).
  Stores 1 bytes from s2 to ? (base unknown) (`sb` at 0x10137cd4).
  Stores 1 bytes from s3 to ? (base unknown) (`sb` at 0x10137cd8).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10137d34).
  Stores 1 bytes from s6 to ? (base unknown) (`sb` at 0x10137d38).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10137d44).
  Stores 1 bytes from s6 to ? (base unknown) (`sb` at 0x10137d48).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10137d54).
  Stores 1 bytes from s6 to ? (base unknown) (`sb` at 0x10137d58).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10137d64).
  Stores 1 bytes from s6 to ? (base unknown) (`sb` at 0x10137d68).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x10137d70).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10137d78).
  Stores 1 bytes from s6 to ? (base unknown) (`sb` at 0x10137d98).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10137d9c).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x10137da0).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x10137da4).
  Stores 1 bytes from a1 to ? (base unknown) (`sb` at 0x10137da8).
  Stores 1 bytes from a2 to ? (base unknown) (`sb` at 0x10137dac).
  Stores 1 bytes from a3 to ? (base unknown) (`sb` at 0x10137db0).
  Stores 1 bytes from a4 to ? (base unknown) (`sb` at 0x10137db4).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x10137db8).
  Stores 1 bytes from a6 to ? (base unknown) (`sb` at 0x10137dbc).
  Stores 1 bytes from a7 to ? (base unknown) (`sb` at 0x10137dc0).
  Stores 1 bytes from t0 to ? (base unknown) (`sb` at 0x10137dc4).
  Stores 1 bytes from t1 to ? (base unknown) (`sb` at 0x10137dc8).
  Stores 1 bytes from t2 to ? (base unknown) (`sb` at 0x10137dcc).
  Stores 1 bytes from t3 to ? (base unknown) (`sb` at 0x10137dd0).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x10137dd4).
  Stores 1 bytes from t9 to ? (base unknown) (`sb` at 0x10137dd8).
  Stores 1 bytes from ra to ? (base unknown) (`sb` at 0x10137ddc).
  Stores 1 bytes from s0 to ? (base unknown) (`sb` at 0x10137de0).
  Stores 1 bytes from s1 to ? (base unknown) (`sb` at 0x10137de4).
  Stores 1 bytes from s2 to ? (base unknown) (`sb` at 0x10137de8).
  Stores 1 bytes from s3 to ? (base unknown) (`sb` at 0x10137dec).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10137e48).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x10137e4c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10137e58).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x10137e5c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10137e68).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x10137e6c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10137e78).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x10137e7c).
  Stores 1 bytes from s6 to ? (base unknown) (`sb` at 0x10137e84).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10137e8c).
  Stores 1 bytes from a3 to ? (base unknown) (`sb` at 0x10137f2c).
  Stores 1 bytes from a4 to ? (base unknown) (`sb` at 0x10137f30).
  Stores 1 bytes from t9 to ? (base unknown) (`sb` at 0x10137f34).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x10137f38).
  Stores 1 bytes from a7 to ? (base unknown) (`sb` at 0x10137f3c).
  Stores 1 bytes from t0 to ? (base unknown) (`sb` at 0x10137f40).
  Stores 1 bytes from t1 to ? (base unknown) (`sb` at 0x10137f44).
  Stores 1 bytes from t2 to ? (base unknown) (`sb` at 0x10137f48).
  Stores 1 bytes from t3 to ? (base unknown) (`sb` at 0x10137f4c).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x10137f50).
  Stores 1 bytes from a1 to ? (base unknown) (`sb` at 0x10137f54).
  Stores 1 bytes from a2 to ? (base unknown) (`sb` at 0x10137f58).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10137f60).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x10137f68).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x10137f70).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x10137f78).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10137f80).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x10137f88).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10137f90).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x10137f9c).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x10137fa4).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x10137fac).
  Stores 1 bytes from s7 to ? (base unknown) (`sb` at 0x10137fb4).
  Stores 1 bytes from s7 to ? (base unknown) (`sb` at 0x10137fbc).
  Stores 1 bytes from s7 to ? (base unknown) (`sb` at 0x10137fc4).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x10137fcc).
  Stores 1 bytes from s7 to ? (base unknown) (`sb` at 0x10137fd4).
  Stores 1 bytes from s7 to ? (base unknown) (`sb` at 0x10137fdc).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x10137fe4).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x10137fe8).
  Stores 1 bytes from t9 to ? (base unknown) (`sb` at 0x1013803c).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x10138040).
  Stores 1 bytes from t3 to ? (base unknown) (`sb` at 0x10138044).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x10138050).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x1013805c).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x10138060).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10138070).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x1013807c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10138088).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x1013808c).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x1013809c).
  Stores 1 bytes from a4 to ? (base unknown) (`sb` at 0x101380b0).
  Stores 1 bytes from t9 to [a0+8] +0x2a (`sb` at 0x10138160) with value [[a0+8]+41]:1.
  Stores 1 bytes from t8 to [a0+8] +0x29 (`sb` at 0x10138164) with value [[a0+8]+42]:1.
  Stores 1 bytes from s7 to [a0+8] +0x2b (`sb` at 0x10138170) with value [[a0+8]+40]:1.
  Stores 1 bytes from s4 to [a0+8] +0x28 (`sb` at 0x10138174) with value [[a0+8]+43]:1.
  Stores 1 bytes from t3 to [a0+8] +0x26 (`sb` at 0x10138180) with value [[a0+8]+37]:1.
  Stores 1 bytes from t2 to [a0+8] +0x25 (`sb` at 0x10138184) with value [[a0+8]+38]:1.
  Stores 1 bytes from t1 to [a0+8] +0x27 (`sb` at 0x10138190) with value [[a0+8]+36]:1.
  Stores 1 bytes from t0 to [a0+8] +0x24 (`sb` at 0x10138194) with value [[a0+8]+39]:1.
  Stores 1 bytes from a7 to [a0+8] +0x22 (`sb` at 0x101381a0) with value [[a0+8]+33]:1.
  Stores 1 bytes from a4 to [a0+8] +0x21 (`sb` at 0x101381a4) with value [[a0+8]+34]:1.
  Stores 1 bytes from a2 to [a0+8] +0x23 (`sb` at 0x101381b0) with value [[a0+8]+32]:1.
  Stores 1 bytes from a1 to [a0+8] +0x20 (`sb` at 0x101381b4) with value [[a0+8]+35]:1.
  Stores 1 bytes from a0 to [a0+8] +0x1e (`sb` at 0x101381c0) with value [[a0+8]+29]:1.
  Stores 1 bytes from v1 to [a0+8] +0x1d (`sb` at 0x101381c4) with value [[a0+8]+30]:1.
  Stores 1 bytes from v0 to [a0+8] +0x1f (`sb` at 0x101381d0) with value [[a0+8]+28]:1.
  Stores 1 bytes from at to [a0+8] +0x1c (`sb` at 0x101381d4) with value [[a0+8]+31]:1.
  Stores 1 bytes from t9 to [a0+8] +0x1a (`sb` at 0x101381e0) with value [[a0+8]+25]:1.
  Stores 1 bytes from t8 to [a0+8] +0x19 (`sb` at 0x101381e4) with value [[a0+8]+26]:1.
  Stores 1 bytes from s7 to [a0+8] +0x1b (`sb` at 0x101381f0) with value [[a0+8]+24]:1.
  Stores 1 bytes from s4 to [a0+8] +0x18 (`sb` at 0x101381f4) with value [[a0+8]+27]:1.
  Stores 1 bytes from t3 to [a0+8] +0x16 (`sb` at 0x10138200) with value [[a0+8]+21]:1.
  Stores 1 bytes from t2 to [a0+8] +0x15 (`sb` at 0x10138204) with value [[a0+8]+22]:1.
  Stores 1 bytes from t1 to [a0+8] +0x17 (`sb` at 0x10138210) with value [[a0+8]+20]:1.
  Stores 1 bytes from t0 to [a0+8] +0x14 (`sb` at 0x10138214) with value [[a0+8]+23]:1.
  Stores 1 bytes from a7 to [a0+8] +0x12 (`sb` at 0x10138220) with value [[a0+8]+17]:1.
  Stores 1 bytes from a4 to [a0+8] +0x11 (`sb` at 0x10138224) with value [[a0+8]+18]:1.
  Stores 1 bytes from a2 to [a0+8] +0x13 (`sb` at 0x10138230) with value [[a0+8]+16]:1.
  Stores 1 bytes from a1 to [a0+8] +0x10 (`sb` at 0x10138234) with value [[a0+8]+19]:1.
  Stores 1 bytes from a0 to [a0+8] +0xe (`sb` at 0x10138240) with value [[a0+8]+13]:1.
  Stores 1 bytes from v1 to [a0+8] +0xd (`sb` at 0x10138244) with value [[a0+8]+14]:1.
  Stores 1 bytes from v0 to [a0+8] +0xf (`sb` at 0x10138254) with value [[a0+8]+12]:1.
  Stores 1 bytes from at to [a0+8] +0xc (`sb` at 0x10138260) with value [[a0+8]+15]:1.
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x1013826c).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x10138270).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x1013827c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x10138284).
  Calls `ProcCreateImageBuffers..AKC [0x100aae40]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=a0 at entry (arg0) (`j` at 0x101380c8).
  At `beq` at 0x10137b74 (target 0x10137b90), taken when at(=[a0+72]) >= 0x3 (unsigned) and falls through when at(=[a0+72]) < 0x3 (unsigned).
  At `bne` at 0x10137bcc (target 0x10137ff0), taken when a5(=[[a0+8]+2]:2-3) < 0x8 (unsigned) and falls through when a5(=[[a0+8]+2]:2-3) >= 0x8 (unsigned).
  At `bne` at 0x10137bd4 (target 0x10138158), taken when a1(?) != 0 and falls through when a1(?) == 0.
  At `bne` at 0x10137d8c (target 0x101380dc), taken when s4(?) < 0x8 (unsigned) and falls through when s4(?) >= 0x8 (unsigned).
  At `beq` at 0x10137ea0 (target 0x10137c80), taken when s4(?) >= 0x8 (unsigned) and falls through when s4(?) < 0x8 (unsigned).
  At `beq` at 0x10138008 (target 0x101380b4), taken when s4(?) == 0 and falls through when s4(?) != 0.
  At `bne` at 0x10138010 (target 0x1013801c), taken when a2(?) != 0 and falls through when a2(?) == 0.
  At `bne` at 0x10138024 (target 0x10138264), taken when s6(?) < 0x2 (signed) and falls through when s6(?) >= 0x2 (signed).
  At `beq` at 0x10138074 (target 0x101380d0), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `bne` at 0x101380a0 (target 0x10138050), taken when at(?) != 0 and falls through when at(?) == 0.
  Returns v0 = 0x10 (`jr` at 0x10137b88).

- `ProcSGIvcStoreGammaColors16` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10138290 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10138290-0x101383b0 (288 bytes).
  Calls `(unknown callee)` via register with a0=[(sym(screenInfo) + ([[a0+8]+4] << 0x2))+72], a1=[[a0+8]+16], a2=[[a0+8]+8], a3=[[a0+8]+12], a4=[a0+8]+20, a7=[a0+8] (`jalr` at 0x1013835c).
  At `bne` at 0x101382b4 (target 0x10138374), taken when a1(=[a0+72]) < 0x5 (unsigned) and falls through when a1(=[a0+72]) >= 0x5 (unsigned).
  At `beq` at 0x101382d8 (target 0x10138380), taken when t0(=[[a0+8]+4]) >= t3(=[sym(screenInfo)+68]) (unsigned) and falls through when t0(=[[a0+8]+4]) < t3(=[sym(screenInfo)+68]) (unsigned).
  At `bne` at 0x101382f8 (target 0x10138388), taken when a4(=([a0+72] << 0x2)-20) != a5(?) and falls through when a4(=([a0+72] << 0x2)-20) == a5(?).
  At `beq` at 0x1013830c (target 0x101383a0), taken when t0(=[([[(sym(screenInfo) + ([[a0+8]+4] << 0x2))+72]+436] + ([sym(vcScreenPrivateIndex)] << 0x2))]) == 0 and falls through when t0(=[([[(sym(screenInfo) + ([[a0+8]+4] << 0x2))+72]+436] + ([sym(vcScreenPrivateIndex)] << 0x2))]) != 0.
  At `beq` at 0x1013832c (target 0x10138390), taken when a2(=[[a0+8]+8]) >= t3(=[[([[(sym(screenInfo) + ([[a0+8]+4] << 0x2))+72]+436] + ([sym(vcScreenPrivateIndex)] << 0x2))]+32]) (signed) and falls through when a2(=[[a0+8]+8]) < t3(=[[([[(sym(screenInfo) + ([[a0+8]+4] << 0x2))+72]+436] + ([sym(vcScreenPrivateIndex)] << 0x2))]+32]) (signed).
  At `bne` at 0x1013833c (target 0x10138398), taken when t8(?) < a3(=[[a0+8]+12]) (unsigned) and falls through when t8(?) >= a3(=[[a0+8]+12]) (unsigned).
  At `beq` at 0x10138344 (target 0x101383a8), taken when t1(?) == 0 and falls through when t1(?) != 0.
  At `beq` at 0x10138350 (target 0x1013836c), taken when t9(=[[([[(sym(screenInfo) + ([[a0+8]+4] << 0x2))+72]+436] + ([sym(vcScreenPrivateIndex)] << 0x2))]+124]) == 0 and falls through when t9(=[[([[(sym(screenInfo) + ([[a0+8]+4] << 0x2))+72]+436] + ([sym(vcScreenPrivateIndex)] << 0x2))]+124]) != 0.
  Returns v0 = 0x0 (`jr` at 0x1013836c).
  Returns v0 = one of 0x0, 0x2, 0x10 (`jr` at 0x10138378).
  Returns v0 = 0x2 (`jr` at 0x10138380).

- `glxUpdateDeepWindowList` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1013af40 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1013af40-0x1013b070 (304 bytes).
  Calls `(unknown callee)` via register with a0=sp-64, a1=0x0, a2=0x0, a3=a3 at entry (arg3) (`jalr` at 0x1013af7c).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x1013afb4).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x1013afc8).
  Calls `(unknown callee)` via register with a0=sp-64, a1=?, a2=?, a3=? (`jalr` at 0x1013aff4).
  Calls `(unknown callee)` via register with a0=sp-64, a1=?, a2=?, a3=? (`jalr` at 0x1013b024).
  Calls `(unknown callee)` via register with a0=sp-64, a1=?, a2=?, a3=? (`jalr` at 0x1013b058).
  At `beq` at 0x1013af88 (target 0x1013b04c), taken when s0(=[[([a0+436] + ([sym(glxScreenPrivateIndex)] << 0x2))]+120]) == 0 and falls through when s0(=[[([a0+436] + ([sym(glxScreenPrivateIndex)] << 0x2))]+120]) != 0.
  At `bne` at 0x1013af9c (target 0x1013afd0), taken when a0(=one of 0x0, 0x1) != 0 and falls through when a0(=one of 0x0, 0x1) == 0.
  At `beq` at 0x1013afd4 (target 0x1013b04c), taken when s0(?) == 0 and falls through when s0(?) != 0.
  At `beq` at 0x1013b000 (target 0x1013afb0), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `bne` at 0x1013b00c (target 0x1013afb0), taken when a3(?) != 0 and falls through when a3(?) == 0.
  At `beq` at 0x1013b030 (target 0x1013af98), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `bne` at 0x1013b03c (target 0x1013af98), taken when a2(?) != 0 and falls through when a2(?) == 0.
  Returns v0 = ret(?); f0 = ret(?) (`jr` at 0x1013b068).

- `glxMiAllocDeepWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10141570 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10141570-0x101418ec (892 bytes).
  Stores 4 bytes from s3 to ret(Xalloc) +0x0 (`sw` at 0x10141640) with value a0.
  Stores 4 bytes from a4 to ? (base unknown) (`sw` at 0x10141650).
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x10141654) with value 0x0.
  Stores 4 bytes from v0 to ? (base unknown) (`sw` at 0x10141658) with value ret(PixelRegionToBrickRegion..OMD).
  Stores 4 bytes from s3 to ? (base unknown) (`sw` at 0x101417f0) with value a0.
  Stores 4 bytes from s3 to ret(__malloc..ML) +0x0 (`sw` at 0x10141844) with value a0.
  Stores 4 bytes from ra to ret(__malloc..ML) +0x4 (`sw` at 0x1014184c).
  Stores 4 bytes from s6 to ? (base unknown) (`sw` at 0x10141854) with value ret(__malloc..ML).
  Stores 4 bytes from a0 to ? (base unknown) (`sw` at 0x101418c0).
  Stores 4 bytes from zero to [([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))] +0x54 (`sw` at 0x101418d0) with value 0x0.
  Calls `Xalloc [0x1020aeb0]` via direct with a0=0x10, a1=?, a2=[[([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))]+54]:2, a3=[([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))], a4=([sym(glxWindowPrivateIndex)] << 0x2), a5=0x102d0000 (`jal` at 0x10141600).
  Calls `PixelRegionToBrickRegion..OMD [0x10275cf0]` via direct with a0=?, a1=?, a2=a0+44, a3=?, a7=ret(Xalloc) (`jal` at 0x1014163c).
  Calls `FatalError [0x10094f20]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x101416dc).
  Calls `__libc_lockmalloc` via got with a0=?, a1=?, a2=?, a3=[sym(__us_rsthread_malloc)] (`jalr` at 0x10141814).
  Calls `__malloc..ML [0x101e7680]` via direct with a0=0x8, a1=?, a2=?, a3=? (`jal` at 0x1014181c).
  Calls `__libc_unlockmalloc` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x10141834).
  At `blez` at 0x101415f0 (target 0x101418c4), taken when at(?) <= 0 (signed) and falls through when at(?) > 0 (signed).
  At `bne` at 0x10141608 (target 0x10141628), taken when v0(=ret(Xalloc)) != 0 and falls through when v0(=ret(Xalloc)) == 0.
  At `beq` at 0x10141660 (target 0x101418d4), taken when a0(=[ret(PixelRegionToBrickRegion..OMD)+8]) == 0 and falls through when a0(=[ret(PixelRegionToBrickRegion..OMD)+8]) != 0.
  At `blez` at 0x1014166c (target 0x101418a0), taken when a3(=[[ret(PixelRegionToBrickRegion..OMD)+8]+4]) <= 0 (signed) and falls through when a3(=[[ret(PixelRegionToBrickRegion..OMD)+8]+4]) > 0 (signed).
  At `beq` at 0x101416d4 (target 0x101416e4), taken when ra(=[sym(Must_have_memory)]) == 0 and falls through when ra(=[sym(Must_have_memory)]) != 0.
  At `beq` at 0x101416f0 (target 0x10141880), taken when at(?) == v0(?) and falls through when at(?) != v0(?).
  At `beq` at 0x1014174c (target 0x101416e4), taken when a6(?) >= a4(?) (signed) and falls through when a6(?) < a4(?) (signed).
  At `beq` at 0x1014178c (target 0x10141858), taken when ra(?) == 0 and falls through when ra(?) != 0.
  At `beq` at 0x101417ac (target 0x10141858), taken when v0(?) == v1(?) and falls through when v0(?) != v1(?).
  At `bltz` at 0x101417d8 (target 0x101417a0), taken when a0(?) < 0 (signed) and falls through when a0(?) >= 0 (signed).
  At `beq` at 0x101417f8 (target 0x101417a0), taken when s1(?) == s4(?) and falls through when s1(?) != s4(?).
  At `bne` at 0x10141804 (target 0x101417f0), taken when t8(=[[([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))]+4]) != 0 and falls through when t8(=[[([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))]+4]) == 0.
  At `beq` at 0x1014180c (target 0x1014181c), taken when a3(=[sym(__us_rsthread_malloc)]) == 0 and falls through when a3(=[sym(__us_rsthread_malloc)]) != 0.
  At `beq` at 0x10141828 (target 0x1014183c), taken when t9(=[sym(__us_rsthread_malloc)]) == 0 and falls through when t9(=[sym(__us_rsthread_malloc)]) != 0.
  At `beq` at 0x1014183c (target 0x101416d0), taken when s6(=ret(__malloc..ML)) == 0 and falls through when s6(=ret(__malloc..ML)) != 0.
  At `bne` at 0x10141870 (target 0x10141788), taken when at(?) != v0(?) and falls through when at(?) == v0(?).
  Returns v0 = one of 0x0, 0x1 (`jr` at 0x10141620).
  Returns v0 = 0x1 (`jr` at 0x101418bc).
  The instructions from 0x1014179c to 0x1014179c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x101417e8 to 0x101417ec are not reached by any path from the entry, and their branches are not listed.

- `TellGainedMap` in `usr/gfx/arch/GENERIC/Xsgi` at 0x101439c0 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x101439c0-0x10143a98 (216 bytes).
  Calls `DeliverEvents [0x10064f80]` via direct with a0=a0 at entry (arg0), a1=sp-48, a2=0x1, a3=0x0, a4=[a1], a5=a1 at entry (arg1), a6=[a0+4], a7=0x20 (`jal` at 0x10143a88).
  At `beq` at 0x101439e4 (target 0x10143a30), taken when at(=[sym(panoramiXMode)]) == 0 and falls through when at(=[sym(panoramiXMode)]) != 0.
  At `beq` at 0x101439f4 (target 0x10143a30), taken when v1(=[[a0+16]]) == 0 and falls through when v1(=[[a0+16]]) != 0.
  At `beq` at 0x10143a10 (target 0x10143a08), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `beq` at 0x10143a1c (target 0x10143a58), taken when a3(?) == a4(=[a1]) and falls through when a3(?) != a4(=[a1]).
  At `beq` at 0x10143a34 (target 0x10143a50), taken when a1(=[a0+1]:1) == a2(=0x2) and falls through when a1(=[a0+1]:1) != a2(=0x2).
  At `beq` at 0x10143a40 (target 0x10143a08), taken when a1(=[a0+120]) == 0 and falls through when a1(=[a0+120]) != 0.
  At `bne` at 0x10143a50 (target 0x10143a24), taken when a4(=[a1]) != 0 and falls through when a4(=[a1]) == 0.
  Returns v0 = 0x0 (`jr` at 0x10143a00).
  Returns v0 = 0x1 (`jr` at 0x10143a28).

- `ProcDestroySubwindows` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10146900 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10146900-0x10146988 (136 bytes).
  Calls `SecurityLookupWindow [0x1006ce40]` via direct with a0=[[a0+8]+4], a1=a0 at entry (arg0), a2=0x4, a3=a3 at entry (arg3) (`jal` at 0x10146940).
  Calls `DestroySubwindows [0x100de460]` via direct with a0=ret(SecurityLookupWindow), a1=a0 at entry (arg0), a2=?, a3=?, a4=0x3 (`jal` at 0x10146968).
  At `beq` at 0x1014691c (target 0x10146930), taken when v1(=[a0+72]) == a0(=0x2) and falls through when v1(=[a0+72]) != a0(=0x2).
  At `bne` at 0x1014694c (target 0x10146964), taken when v0(=ret(SecurityLookupWindow)) != 0 and falls through when v0(=ret(SecurityLookupWindow)) == 0.
  Returns v0 = 0x10 (`jr` at 0x10146928).
  Returns v0 = 0x3; f0 = ret(SecurityLookupWindow) (`jr` at 0x1014695c).
  Returns v0 = [a0+40]; f0 = ret(DestroySubwindows) (`jr` at 0x10146980).

- `AccessDestroyWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1014b560 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1014b560-0x1014b644 (228 bytes).
  Stores 4 bytes from a1 to a0 (arg0 at entry) +0x18 (`sw` at 0x1014b5e8).
  Calls `SecurityLookupWindow [0x1006ce40]` via direct with a0=[[a0+8]+4], a1=a0 at entry (arg0), a2=0x0, a3=a3 at entry (arg3) (`jal` at 0x1014b5b8).
  Calls `CheckWindowAccess [0x1018ed00]` via direct with a0=0x4, a1=a0 at entry (arg0), a2=ret(SecurityLookupWindow), a3=0x0 (`jal` at 0x1014b5f4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x1014b630).
  At `beq` at 0x1014b584 (target 0x1014b5a8), taken when v1(=[a0+72]) == a1(=0x2) and falls through when v1(=[a0+72]) != a1(=0x2).
  At `bne` at 0x1014b5c0 (target 0x1014b5ec), taken when v0(=ret(SecurityLookupWindow)) != 0 and falls through when v0(=ret(SecurityLookupWindow)) == 0.
  At `bne` at 0x1014b5fc (target 0x1014b610), taken when v0(=ret(CheckWindowAccess)) != 0 and falls through when v0(=ret(CheckWindowAccess)) == 0.
  Returns v0 = 0x10 (`jr` at 0x1014b590).
  Returns v0 = ? (`jr` at 0x1014b5a0).
  Returns v0 = 0x3; f0 = ret(SecurityLookupWindow) (`jr` at 0x1014b5e4).

- `XkbModMaskText` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1014cc80 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1014cc80-0x1014ce2c (428 bytes).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x1014cd04) with value 0x2b.
  Stores 4 bytes from t8 to abs 0x102cb548 (tbNext..51) (`sw` at 0x1014cda8).
  Calls `strcpy` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x1014cd14).
  Calls `strlen` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x1014cd20).
  Calls `strlen` via got with a0=sp-144, a1=?, a2=?, a3=? (`jalr` at 0x1014cd5c).
  Calls `strcpy` via got with a0=?, a1=sp-144, a2=?, a3=?, a4=0x102c5d40, a5=0x200 (`jalr` at 0x1014cdb8).
  At `beq` at 0x1014cca8 (target 0x1014cdd8), taken when v0(?) == at(=0xff) and falls through when v0(?) != at(=0xff).
  At `beq` at 0x1014ccbc (target 0x1014cdf4), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0x1014ccf4 (target 0x1014cd2c), taken when (s1(?) & s4(=a0)) == 0 and falls through when (s1(?) & s4(=a0)) != 0.
  At `beq` at 0x1014ccfc (target 0x1014cd10), taken when s0(?) == s8(=sp-144) and falls through when s0(?) != s8(=sp-144).
  At `bne` at 0x1014cd38 (target 0x1014ccf0), taken when s3(?) != s5(=0x8) and falls through when s3(?) == s5(=0x8).
  At `beq` at 0x1014cd7c (target 0x1014cdb0), taken when a0(=ret(strlen)+1) >= 0x200 (unsigned) and falls through when a0(=ret(strlen)+1) < 0x200 (unsigned).
  At `bne` at 0x1014cd8c (target 0x1014cd9c), taken when a0(=ret(strlen)+1) < a2(?) (unsigned) and falls through when a0(=ret(strlen)+1) >= a2(?) (unsigned).
  Returns v0 = ?; f0 = ret(strcpy) (`jr` at 0x1014cdd0).

- `DeleteWindowFromAnySaveSet` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1014dca0 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1014dca0-0x1014df08 (616 bytes).
  Stores 4 bytes from t2 to ? (base unknown) (`sw` at 0x1014dd84).
  Stores 4 bytes from t8 to ? (base unknown) (`sw` at 0x1014dda8).
  Stores 4 bytes from t3 to ? (base unknown) (`sw` at 0x1014ddb0).
  Stores 4 bytes from a2 to ? (base unknown) (`sw` at 0x1014ddc0).
  Stores 4 bytes from v1 to ? (base unknown) (`sw` at 0x1014ddc4).
  Stores 4 bytes from a0 to ? (base unknown) (`sw` at 0x1014dddc).
  Stores 4 bytes from v1 to ? (base unknown) (`sw` at 0x1014dde4).
  Stores 4 bytes from a2 to ? (base unknown) (`sw` at 0x1014dde8).
  Stores 4 bytes from at to ? (base unknown) (`sw` at 0x1014ddec).
  Stores 4 bytes from at to ? (base unknown) (`sw` at 0x1014de04).
  Stores 4 bytes from a0 to ? (base unknown) (`sw` at 0x1014de0c).
  Stores 4 bytes from v1 to ? (base unknown) (`sw` at 0x1014de10).
  Stores 4 bytes from a2 to ? (base unknown) (`sw` at 0x1014de14).
  Stores 4 bytes from v0 to ? (base unknown) (`sw` at 0x1014de3c) with value ret(Xrealloc).
  Stores 4 bytes from a2 to ? (base unknown) (`sw` at 0x1014de48).
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x1014deb0) with value 0x0.
  Stores 4 bytes from v0 to ? (base unknown) (`sw` at 0x1014deec).
  Stores 4 bytes from at to ? (base unknown) (`sw` at 0x1014def4).
  Stores 4 bytes from ra to ? (base unknown) (`sw` at 0x1014defc).
  Stores 4 bytes from t9 to ? (base unknown) (`sw` at 0x1014df04).
  Calls `Xrealloc [0x101b9470]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1014de2c).
  Calls `Xfree [0x101fc9c0]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1014dea4).
  At `blez` at 0x1014dce8 (target 0x1014deb4), taken when v1(=[0x102c5d70]) <= 0 (signed) and falls through when v1(=[0x102c5d70]) > 0 (signed).
  At `beq` at 0x1014dd04 (target 0x1014dd38), taken when a1(?) == s4(=a0) and falls through when a1(?) != s4(=a0).
  At `beq` at 0x1014dd14 (target 0x1014dd38), taken when at(?) >= s0(?) (signed) and falls through when at(?) < s0(?) (signed).
  At `beq` at 0x1014dd20 (target 0x1014dd38), taken when a3(?) == s4(=a0) and falls through when a3(?) != s4(=a0).
  At `bne` at 0x1014dd30 (target 0x1014dd00), taken when at(?) < s0(?) (signed) and falls through when at(?) >= s0(?) (signed).
  At `beq` at 0x1014dd40 (target 0x1014de4c), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `bne` at 0x1014dd58 (target 0x1014de1c), taken when v0(?) < 0x2 (signed) and falls through when v0(?) >= 0x2 (signed).
  At `beq` at 0x1014dd6c (target 0x1014dd88), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0x1014dd80 (target 0x1014dd74), taken when v0(?) != 0 and falls through when v0(?) == 0.
  At `beq` at 0x1014dd88 (target 0x1014de18), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `bne` at 0x1014dd90 (target 0x1014dee4), taken when t1(?) != 0 and falls through when t1(?) == 0.
  At `beq` at 0x1014dde0 (target 0x1014de98), taken when a1(?) == v0(?) and falls through when a1(?) != v0(?).
  At `bne` at 0x1014de08 (target 0x1014ddc0), taken when a3(?) != v0(?) and falls through when a3(?) == v0(?).
  At `beq` at 0x1014de1c (target 0x1014dea4), taken when s0(?) == s6(=0x1) and falls through when s0(?) != s6(=0x1).
  At `beq` at 0x1014de34 (target 0x1014de44), taken when v0(=ret(Xrealloc)) == 0 and falls through when v0(=ret(Xrealloc)) != 0.
  At `beq` at 0x1014de54 (target 0x1014deb4), taken when s3(?) >= v1(=[0x102c5d70]) (signed) and falls through when s3(?) < v1(=[0x102c5d70]) (signed).
  At `beq` at 0x1014de68 (target 0x1014de4c), taken when s2(?) == 0 and falls through when s2(?) != 0.
  At `beq` at 0x1014de74 (target 0x1014de4c), taken when s0(?) == 0 and falls through when s0(?) != 0.
  At `blez` at 0x1014de7c (target 0x1014dd3c), taken when s0(?) <= 0 (signed) and falls through when s0(?) > 0 (signed).
  At `beq` at 0x1014de88 (target 0x1014dd38), taken when t8(?) == s4(=a0) and falls through when t8(?) != s4(=a0).
  Returns v0 = ? (`jr` at 0x1014dedc).
  The instructions from 0x1014dcf8 to 0x1014dcfc are not reached by any path from the entry, and their branches are not listed.

- `ProcXineramaConfigureWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x101552e0 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x101552e0-0x10155738 (1112 bytes).
  Stores 4 bytes from a1 to abs 0x102ca77c (xineramaPostponeEvents) (`sw` at 0x10155554) with value 0x1.
  Stores 4 bytes from a1 to sym(panoramiXMode) +0x0 (`sw` at 0x10155578) with value 0x1.
  Stores 4 bytes from v0 to [a0+8] +0x4 (`sw` at 0x101555cc).
  Stores 4 bytes from a0 to ? (base unknown) (`sw` at 0x101555d4).
  Stores 4 bytes from a2 to ? (base unknown) (`sw` at 0x101555f4).
  Stores 4 bytes from t8 to ? (base unknown) (`sw` at 0x10155610).
  Stores 4 bytes from at to sym(panoramiXScreen0) +0x0 (`sw` at 0x10155628) with value 0x1.
  Stores 4 bytes from zero to sym(panoramiXScreen0) +0x0 (`sw` at 0x1015567c) with value 0x0.
  Stores 4 bytes from zero to abs 0x102ca77c (xineramaPostponeEvents) (`sw` at 0x10155698) with value 0x0.
  Stores 4 bytes from zero to sym(panoramiXMode) +0x0 (`sw` at 0x101556ac) with value 0x0.
  Stores 4 bytes from zero to sym(panoramiXScreen0) +0x0 (`sw` at 0x1015570c) with value 0x0.
  Calls `SecurityLookupIDByType [0x100d6140]` via direct with a0=a0 at entry (arg0), a1=[[a0+8]+4], a2=[sym(XRT_WINDOW)], a3=0x2, a6=0x3f, a7=0x104104105 (`jal` at 0x101553b8).
  Calls `SecurityLookupIDByType [0x100d6140]` via direct with a0=a0 at entry (arg0), a1=[[a0+8]+4], a2=0xffffffffc0000001, a3=0x2 (`jal` at 0x101553e8).
  Calls `SecurityLookupIDByType [0x100d6140]` via direct with a0=a0 at entry (arg0), a1=?, a2=[sym(XRT_WINDOW)], a3=0x1, a4=ret(SecurityLookupIDByType) (`jal` at 0x101554ac).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[sym(panoramiXdataPtr)], a2=?, a3=? (`jalr` at 0x10155644).
  Calls `XineramaDeliverVisibilityNotify [0x10197300]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x10155688).
  Calls `XineramaDeliverExpose [0x100e7410]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x10155690).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=[0x102c5f68], a4=ret(SecurityLookupIDByType) (`jalr` at 0x101556c8).
  At `bne` at 0x10155300 (target 0x1015553c), taken when a1(=[a0+72]) < 0x3 (unsigned) and falls through when a1(=[a0+72]) >= 0x3 (unsigned).
  At `beq` at 0x10155380 (target 0x101553a0), taken when a0(=[a0+72]-3) == a2(?) and falls through when a0(=[a0+72]-3) != a2(?).
  At `beq` at 0x101553c4 (target 0x101556dc), taken when a3(=[0x102c5f68]) == 0 and falls through when a3(=[0x102c5f68]) != 0.
  At `beq` at 0x101553d0 (target 0x101556bc), taken when a4(=ret(SecurityLookupIDByType)) == 0 and falls through when a4(=ret(SecurityLookupIDByType)) != 0.
  At `beq` at 0x101553fc (target 0x101556f8), taken when v0(=ret(SecurityLookupIDByType)) == 0 and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  At `beq` at 0x1015541c (target 0x10155700), taken when (t0(=[[a0+8]+8]:2) & 0x20) == 0 and falls through when (t0(=[[a0+8]+8]:2) & 0x20) != 0.
  At `beq` at 0x1015548c (target 0x101556b0), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `beq` at 0x101554bc (target 0x10155710), taken when v0(=ret(SecurityLookupIDByType)) == 0 and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  At `beq` at 0x101554e0 (target 0x10155550), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `bne` at 0x101554f0 (target 0x10155550), taken when a6(=[[sym(WindowTable)]]) != a1(?) and falls through when a6(=[[sym(WindowTable)]]) == a1(?).
  At `beq` at 0x10155508 (target 0x10155728), taken when (a5(=[[a0+8]+8]:2) & 0x1) == 0 and falls through when (a5(=[[a0+8]+8]:2) & 0x1) != 0.
  At `beq` at 0x1015551c (target 0x10155730), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `blez` at 0x10155574 (target 0x1015571c), taken when t2(=[0x102c5f1c]) <= 0 (signed) and falls through when t2(=[0x102c5f1c]) > 0 (signed).
  At `beq` at 0x101555b0 (target 0x10155708), taken when a6(?) >= at(=[0x102c5f1c]) (signed) and falls through when a6(?) < at(=[0x102c5f1c]) (signed).
  At `beq` at 0x101555c8 (target 0x101555d8), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `bltz` at 0x101555d8 (target 0x101555f8), taken when t0(?) < 0 (signed) and falls through when t0(?) >= 0 (signed).
  At `bltz` at 0x101555f8 (target 0x10155614), taken when t1(?) < 0 (signed) and falls through when t1(?) >= 0 (signed).
  At `bne` at 0x10155620 (target 0x10155634), taken when ra(?) != a4(?) and falls through when ra(?) == a4(?).
  At `beq` at 0x10155680 (target 0x101555a8), taken when v0(=ret(?)) == 0 and falls through when v0(=ret(?)) != 0.
  At `bne` at 0x101556e0 (target 0x101553d8), taken when ra(=ret(SecurityLookupIDByType)) != 0 and falls through when ra(=ret(SecurityLookupIDByType)) == 0.
  Returns v0 = ? (`jr` at 0x10155398).
  Returns v0 = 0x10 (`jr` at 0x10155548).

- `RegisterKeyboardDevice` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1015a4c0 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1015a4c0-0x1015a578 (184 bytes).
  Stores 4 bytes from a0 to sym(inputInfo) +0xc (`sw` at 0x1015a4ec) with value a0.
  Stores 4 bytes from a1 to a0 (arg0 at entry) +0x4 (`sw` at 0x1015a4f0) with value 0x10191ca0.
  Stores 4 bytes from a1 to a0 (arg0 at entry) +0x8 (`sw` at 0x1015a4f4) with value 0x10191ca0.
  Stores 4 bytes from a3 to a0 (arg0 at entry) +0x88 (`sw` at 0x1015a508) with value 0x1026c3e0.
  Stores 4 bytes from a5 to a0 (arg0 at entry) +0x8c (`sw` at 0x1015a514) with value 0x100bb0d0.
  Stores 4 bytes from a6 to a0 (arg0 at entry) +0x8 (`sw` at 0x1015a52c) with value sym(ProcessKeyboardEvent).
  Stores 4 bytes from a6 to a0 (arg0 at entry) +0x4 (`sw` at 0x1015a534) with value sym(ProcessKeyboardEvent).
  Stores 4 bytes from v0 to a0 (arg0 at entry) +0x48 (`sw` at 0x1015a560) with value ret(Xalloc).
  Calls `strlen` via got with a0=0x1028f578, a1=0x10191ca0, a2=0x102d0000, a3=0x1026c3e0, a4=[a0+72], a5=0x100bb0d0 (`jalr` at 0x1015a548).
  Calls `Xalloc [0x1020aeb0]` via direct with a0=ret(strlen)+1, a1=?, a2=?, a3=? (`jal` at 0x1015a554).
  Calls `strcpy` via got with a0=ret(Xalloc), a1=?, a2=?, a3=? (`jalr` at 0x1015a568).
  At `beq` at 0x1015a4e8 (target 0x1015a528), taken when v0(=[0x102c5d44]) == 0 and falls through when v0(=[0x102c5d44]) != 0.
  At `beq` at 0x1015a510 (target 0x1015a538), taken when a4(=[a0+72]) == 0 and falls through when a4(=[a0+72]) != 0.
  Returns v0 = ? (`jr` at 0x1015a520).

- `SProcConfigureWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1015ace0 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1015ace0-0x1015b460 (1920 bytes).
  Stores 1 bytes from v1 to [a0+8] +0x3 (`sb` at 0x1015acf4) with value [[a0+8]+2]:1.
  Stores 1 bytes from a1 to [a0+8] +0x2 (`sb` at 0x1015acf8) with value [[a0+8]+3]:1.
  Stores 1 bytes from t0 to [a0+8] +0x5 (`sb` at 0x1015ad5c) with value [[a0+8]+6]:1.
  Stores 1 bytes from a7 to [a0+8] +0x6 (`sb` at 0x1015ad64) with value [[a0+8]+5]:1.
  Stores 1 bytes from t3 to [a0+8] +0x8 (`sb` at 0x1015ad68) with value [[a0+8]+9]:1.
  Stores 1 bytes from t2 to [a0+8] +0x4 (`sb` at 0x1015ad70) with value [[a0+8]+7]:1.
  Stores 1 bytes from t1 to [a0+8] +0x7 (`sb` at 0x1015ad80) with value [[a0+8]+4]:1.
  Stores 1 bytes from a4 to [a0+8] +0x9 (`sb` at 0x1015ad88) with value [[a0+8]+8]:1.
  Stores 1 bytes from at to [a0+8] +0x20 (`sb` at 0x1015ae14) with value [[a0+8]+35]:1.
  Stores 1 bytes from v0 to [a0+8] +0x23 (`sb` at 0x1015ae20) with value [[a0+8]+32]:1.
  Stores 1 bytes from s6 to ? (base unknown) (`sb` at 0x1015ae34).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x1015ae38).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x1015ae3c).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x1015ae40).
  Stores 1 bytes from a1 to ? (base unknown) (`sb` at 0x1015ae44).
  Stores 1 bytes from a2 to ? (base unknown) (`sb` at 0x1015ae48).
  Stores 1 bytes from a3 to ? (base unknown) (`sb` at 0x1015ae4c).
  Stores 1 bytes from a4 to ? (base unknown) (`sb` at 0x1015ae50).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x1015ae54).
  Stores 1 bytes from a6 to ? (base unknown) (`sb` at 0x1015ae58).
  Stores 1 bytes from a7 to ? (base unknown) (`sb` at 0x1015ae5c).
  Stores 1 bytes from t0 to ? (base unknown) (`sb` at 0x1015ae60).
  Stores 1 bytes from t1 to ? (base unknown) (`sb` at 0x1015ae64).
  Stores 1 bytes from t2 to ? (base unknown) (`sb` at 0x1015ae68).
  Stores 1 bytes from t3 to ? (base unknown) (`sb` at 0x1015ae6c).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x1015ae70).
  Stores 1 bytes from t9 to ? (base unknown) (`sb` at 0x1015ae74).
  Stores 1 bytes from ra to ? (base unknown) (`sb` at 0x1015ae78).
  Stores 1 bytes from s0 to ? (base unknown) (`sb` at 0x1015ae7c).
  Stores 1 bytes from s1 to ? (base unknown) (`sb` at 0x1015ae80).
  Stores 1 bytes from s2 to ? (base unknown) (`sb` at 0x1015ae84).
  Stores 1 bytes from s3 to ? (base unknown) (`sb` at 0x1015ae88).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x1015aee4).
  Stores 1 bytes from s6 to ? (base unknown) (`sb` at 0x1015aee8).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x1015aef4).
  Stores 1 bytes from s6 to ? (base unknown) (`sb` at 0x1015aef8).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x1015af04).
  Stores 1 bytes from s6 to ? (base unknown) (`sb` at 0x1015af08).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x1015af14).
  Stores 1 bytes from s6 to ? (base unknown) (`sb` at 0x1015af18).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x1015af20).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x1015af28).
  Stores 1 bytes from s6 to ? (base unknown) (`sb` at 0x1015af48).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x1015af4c).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x1015af50).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x1015af54).
  Stores 1 bytes from a1 to ? (base unknown) (`sb` at 0x1015af58).
  Stores 1 bytes from a2 to ? (base unknown) (`sb` at 0x1015af5c).
  Stores 1 bytes from a3 to ? (base unknown) (`sb` at 0x1015af60).
  Stores 1 bytes from a4 to ? (base unknown) (`sb` at 0x1015af64).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x1015af68).
  Stores 1 bytes from a6 to ? (base unknown) (`sb` at 0x1015af6c).
  Stores 1 bytes from a7 to ? (base unknown) (`sb` at 0x1015af70).
  Stores 1 bytes from t0 to ? (base unknown) (`sb` at 0x1015af74).
  Stores 1 bytes from t1 to ? (base unknown) (`sb` at 0x1015af78).
  Stores 1 bytes from t2 to ? (base unknown) (`sb` at 0x1015af7c).
  Stores 1 bytes from t3 to ? (base unknown) (`sb` at 0x1015af80).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x1015af84).
  Stores 1 bytes from t9 to ? (base unknown) (`sb` at 0x1015af88).
  Stores 1 bytes from ra to ? (base unknown) (`sb` at 0x1015af8c).
  Stores 1 bytes from s0 to ? (base unknown) (`sb` at 0x1015af90).
  Stores 1 bytes from s1 to ? (base unknown) (`sb` at 0x1015af94).
  Stores 1 bytes from s2 to ? (base unknown) (`sb` at 0x1015af98).
  Stores 1 bytes from s3 to ? (base unknown) (`sb` at 0x1015af9c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x1015aff8).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x1015affc).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x1015b008).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x1015b00c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x1015b018).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x1015b01c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x1015b028).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x1015b02c).
  Stores 1 bytes from s6 to ? (base unknown) (`sb` at 0x1015b034).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x1015b03c).
  Stores 1 bytes from a3 to ? (base unknown) (`sb` at 0x1015b0dc).
  Stores 1 bytes from a4 to ? (base unknown) (`sb` at 0x1015b0e0).
  Stores 1 bytes from ra to ? (base unknown) (`sb` at 0x1015b0e4).
  Stores 1 bytes from a5 to ? (base unknown) (`sb` at 0x1015b0e8).
  Stores 1 bytes from a7 to ? (base unknown) (`sb` at 0x1015b0ec).
  Stores 1 bytes from t0 to ? (base unknown) (`sb` at 0x1015b0f0).
  Stores 1 bytes from t1 to ? (base unknown) (`sb` at 0x1015b0f4).
  Stores 1 bytes from t2 to ? (base unknown) (`sb` at 0x1015b0f8).
  Stores 1 bytes from t3 to ? (base unknown) (`sb` at 0x1015b0fc).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x1015b100).
  Stores 1 bytes from t9 to ? (base unknown) (`sb` at 0x1015b104).
  Stores 1 bytes from a1 to ? (base unknown) (`sb` at 0x1015b108).
  Stores 1 bytes from a2 to ? (base unknown) (`sb` at 0x1015b10c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x1015b114).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x1015b11c).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x1015b124).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x1015b12c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x1015b134).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x1015b13c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x1015b144).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x1015b150).
  Stores 1 bytes from s7 to ? (base unknown) (`sb` at 0x1015b158).
  Stores 1 bytes from s7 to ? (base unknown) (`sb` at 0x1015b160).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x1015b168).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x1015b170).
  Stores 1 bytes from s7 to ? (base unknown) (`sb` at 0x1015b178).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x1015b180).
  Stores 1 bytes from s7 to ? (base unknown) (`sb` at 0x1015b188).
  Stores 1 bytes from a0 to ? (base unknown) (`sb` at 0x1015b190).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x1015b194).
  Stores 1 bytes from t9 to ? (base unknown) (`sb` at 0x1015b1e4).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x1015b1e8).
  Stores 1 bytes from t3 to ? (base unknown) (`sb` at 0x1015b1f4).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x1015b200).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x1015b20c).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x1015b210).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x1015b220).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x1015b22c).
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x1015b238).
  Stores 1 bytes from v0 to ? (base unknown) (`sb` at 0x1015b23c).
  Stores 1 bytes from v1 to ? (base unknown) (`sb` at 0x1015b24c).
  Stores 1 bytes from a4 to ? (base unknown) (`sb` at 0x1015b260).
  Stores 1 bytes from t9 to [a0+8] +0x1c (`sb` at 0x1015b33c) with value [[a0+8]+31]:1.
  Stores 1 bytes from s7 to [a0+8] +0x2a (`sb` at 0x1015b348) with value [[a0+8]+41]:1.
  Stores 1 bytes from t8 to [a0+8] +0x1a (`sb` at 0x1015b350) with value [[a0+8]+25]:1.
  Stores 1 bytes from ra to [a0+8] +0x1f (`sb` at 0x1015b384) with value [[a0+8]+28]:1.
  Stores 1 bytes from at to [a0+8] +0x1d (`sb` at 0x1015b38c) with value [[a0+8]+30]:1.
  Stores 1 bytes from v0 to [a0+8] +0x1e (`sb` at 0x1015b394) with value [[a0+8]+29]:1.
  Stores 1 bytes from v1 to [a0+8] +0x20 (`sb` at 0x1015b39c) with value [[a0+8]+35]:1.
  Stores 1 bytes from a0 to [a0+8] +0x23 (`sb` at 0x1015b3a4) with value [[a0+8]+32]:1.
  Stores 1 bytes from a1 to [a0+8] +0x21 (`sb` at 0x1015b3ac) with value [[a0+8]+34]:1.
  Stores 1 bytes from a2 to [a0+8] +0x22 (`sb` at 0x1015b3b4) with value [[a0+8]+33]:1.
  Stores 1 bytes from a4 to [a0+8] +0x24 (`sb` at 0x1015b3bc) with value [[a0+8]+39]:1.
  Stores 1 bytes from a7 to [a0+8] +0x27 (`sb` at 0x1015b3c4) with value [[a0+8]+36]:1.
  Stores 1 bytes from t0 to [a0+8] +0x25 (`sb` at 0x1015b3cc) with value [[a0+8]+38]:1.
  Stores 1 bytes from t1 to [a0+8] +0x26 (`sb` at 0x1015b3d4) with value [[a0+8]+37]:1.
  Stores 1 bytes from t2 to [a0+8] +0x28 (`sb` at 0x1015b3dc) with value [[a0+8]+43]:1.
  Stores 1 bytes from s4 to [a0+8] +0x29 (`sb` at 0x1015b3e4) with value [[a0+8]+42]:1.
  Stores 1 bytes from t3 to [a0+8] +0x2b (`sb` at 0x1015b3ec) with value [[a0+8]+40]:1.
  Stores 1 bytes from t3 to [a0+8] +0x18 (`sb` at 0x1015b3f4) with value [[a0+8]+27]:1.
  Stores 1 bytes from t2 to [a0+8] +0x16 (`sb` at 0x1015b3f8) with value [[a0+8]+21]:1.
  Stores 1 bytes from t1 to [a0+8] +0x15 (`sb` at 0x1015b3fc) with value [[a0+8]+22]:1.
  Stores 1 bytes from t0 to [a0+8] +0x17 (`sb` at 0x1015b400) with value [[a0+8]+20]:1.
  Stores 1 bytes from a7 to [a0+8] +0x14 (`sb` at 0x1015b404) with value [[a0+8]+23]:1.
  Stores 1 bytes from a4 to [a0+8] +0x12 (`sb` at 0x1015b408) with value [[a0+8]+17]:1.
  Stores 1 bytes from a2 to [a0+8] +0x11 (`sb` at 0x1015b40c) with value [[a0+8]+18]:1.
  Stores 1 bytes from a1 to [a0+8] +0x13 (`sb` at 0x1015b410) with value [[a0+8]+16]:1.
  Stores 1 bytes from a0 to [a0+8] +0x10 (`sb` at 0x1015b414) with value [[a0+8]+19]:1.
  Stores 1 bytes from v1 to [a0+8] +0xe (`sb` at 0x1015b418) with value [[a0+8]+13]:1.
  Stores 1 bytes from v0 to [a0+8] +0xd (`sb` at 0x1015b41c) with value [[a0+8]+14]:1.
  Stores 1 bytes from at to [a0+8] +0xf (`sb` at 0x1015b420) with value [[a0+8]+12]:1.
  Stores 1 bytes from s4 to [a0+8] +0x1b (`sb` at 0x1015b424) with value [[a0+8]+24]:1.
  Stores 1 bytes from s7 to [a0+8] +0x19 (`sb` at 0x1015b42c) with value [[a0+8]+26]:1.
  Stores 1 bytes from ra to [a0+8] +0xc (`sb` at 0x1015b438) with value [[a0+8]+15]:1.
  Stores 1 bytes from at to ? (base unknown) (`sb` at 0x1015b444).
  Stores 1 bytes from ra to ? (base unknown) (`sb` at 0x1015b448).
  Stores 1 bytes from t9 to ? (base unknown) (`sb` at 0x1015b454).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x1015b45c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=a0 at entry (arg0) (`jalr` at 0x1015b274).
  At `beq` at 0x1015ad1c (target 0x1015ad3c), taken when v0(=[a0+72]) >= 0x3 (unsigned) and falls through when v0(=[a0+72]) < 0x3 (unsigned).
  At `bne` at 0x1015ad8c (target 0x1015b31c), taken when a5(=[[a0+8]+2]:2-3) < 0x8 (unsigned) and falls through when a5(=[[a0+8]+2]:2-3) >= 0x8 (unsigned).
  At `bne` at 0x1015ad94 (target 0x1015b32c), taken when a1(?) != 0 and falls through when a1(?) == 0.
  At `bne` at 0x1015af3c (target 0x1015b2a0), taken when s4(?) < 0x8 (unsigned) and falls through when s4(?) >= 0x8 (unsigned).
  At `beq` at 0x1015b050 (target 0x1015ae30), taken when s4(?) >= 0x8 (unsigned) and falls through when s4(?) < 0x8 (unsigned).
  At `beq` at 0x1015b1b4 (target 0x1015b264), taken when s4(?) == 0 and falls through when s4(?) != 0.
  At `bne` at 0x1015b1bc (target 0x1015b1c8), taken when a2(?) != 0 and falls through when a2(?) == 0.
  At `bne` at 0x1015b1cc (target 0x1015b43c), taken when s6(?) < 0x2 (signed) and falls through when s6(?) >= 0x2 (signed).
  At `beq` at 0x1015b224 (target 0x1015b294), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `bne` at 0x1015b250 (target 0x1015b200), taken when at(?) != 0 and falls through when at(?) == 0.
  Returns v0 = 0x10 (`jr` at 0x1015ad34).
  Returns v0 = ret(?); f0 = ret(?) (`jr` at 0x1015b28c).

- `dbcSetDrawBuffer` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1015c520 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1015c520-0x1015c964 (1092 bytes).
  Stores 1 bytes from a0 to ([a0+132] + ([sym(dbcWindowPrivateIndex)] << 0x2)) +0x1 (`sb` at 0x1015c63c).
  Stores 4 bytes from a4 to sym(globalSerialNumber) +0x0 (`sw` at 0x1015c648) with value 0x1.
  Stores 4 bytes from a4 to sym(globalSerialNumber) +0x0 (`sw` at 0x1015c64c) with value [sym(globalSerialNumber)]+1.
  Stores 4 bytes from a4 to a0 (arg0 at entry) +0x14 (`sw` at 0x1015c66c).
  Stores 4 bytes from t1 to [[sym(clients)]] +0x30 (`sw` at 0x1015c6c0) with value [[[sym(WindowTable)]]+4].
  Stores 4 bytes from t0 to [[sym(clients)]] +0x2c (`sw` at 0x1015c6c8) with value [[sym(WindowTable)]].
  Stores 4 bytes from t8 to ? (base unknown) (`sw` at 0x1015c6f4) with value [[[sym(WindowTable)]]+4].
  Stores 4 bytes from t3 to ? (base unknown) (`sw` at 0x1015c6fc) with value [[sym(WindowTable)]].
  Stores 4 bytes from v0 to ? (base unknown) (`sw` at 0x1015c728) with value [[[sym(WindowTable)]]+4].
  Stores 4 bytes from at to ? (base unknown) (`sw` at 0x1015c730) with value [[sym(WindowTable)]].
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x1015c75c) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x1015c764) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x1015c770) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x1015c778) with value 0x0.
  Stores 1 bytes from a0 to ([a0+132] + ([sym(dbcWindowPrivateIndex)] << 0x2)) +0x1 (`sb` at 0x1015c804).
  Stores 4 bytes from a4 to sym(globalSerialNumber) +0x0 (`sw` at 0x1015c834) with value 0x1.
  Stores 4 bytes from a4 to sym(globalSerialNumber) +0x0 (`sw` at 0x1015c838) with value [sym(globalSerialNumber)]+1.
  Stores 4 bytes from a4 to a0 (arg0 at entry) +0x14 (`sw` at 0x1015c84c).
  Stores 4 bytes from t9 to [[sym(clients)]] +0x30 (`sw` at 0x1015c894) with value [[[sym(WindowTable)]]+4].
  Stores 4 bytes from t8 to [[sym(clients)]] +0x2c (`sw` at 0x1015c89c) with value [[sym(WindowTable)]].
  Stores 4 bytes from v0 to ? (base unknown) (`sw` at 0x1015c8b8) with value [[[sym(WindowTable)]]+4].
  Stores 4 bytes from at to ? (base unknown) (`sw` at 0x1015c8c0) with value [[sym(WindowTable)]].
  Stores 4 bytes from a3 to ? (base unknown) (`sw` at 0x1015c8e4) with value [[[sym(WindowTable)]]+4].
  Stores 4 bytes from a1 to ? (base unknown) (`sw` at 0x1015c8ec) with value [[sym(WindowTable)]].
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x1015c918) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x1015c920) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x1015c92c) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x1015c934) with value 0x0.
  Stores 4 bytes from zero to [[sym(clients)]] +0x34 (`sw` at 0x1015c940) with value 0x0.
  Stores 4 bytes from zero to [[sym(clients)]] +0x38 (`sw` at 0x1015c948) with value 0x0.
  Stores 4 bytes from zero to [[sym(clients)]] +0x34 (`sw` at 0x1015c958) with value 0x0.
  Stores 4 bytes from zero to [[sym(clients)]] +0x38 (`sw` at 0x1015c960) with value 0x0.
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=0x8, a2=0x1, a3=a3 at entry (arg3), a4=[a0+132], a5=[([a0+132] + ([sym(rrmWindowPrivateIndex)] << 0x2))], a6=[0x102cc3a8] (`jalr` at 0x1015c598).
  At `beq` at 0x1015c554 (target 0x1015c5ac), taken when a5(=[([a0+132] + ([sym(rrmWindowPrivateIndex)] << 0x2))]) == 0 and falls through when a5(=[([a0+132] + ([sym(rrmWindowPrivateIndex)] << 0x2))]) != 0.
  At `beq` at 0x1015c564 (target 0x1015c5b0), taken when (a7(=[[([a0+132] + ([sym(rrmWindowPrivateIndex)] << 0x2))]+4]:1) & 0x8) == 0 and falls through when (a7(=[[([a0+132] + ([sym(rrmWindowPrivateIndex)] << 0x2))]+4]:1) & 0x8) != 0.
  At `beq` at 0x1015c5c8 (target 0x1015c7ac), taken when a6(=[([a0+132] + ([0x102cc3a8] << 0x2))]) == 0 and falls through when a6(=[([a0+132] + ([0x102cc3a8] << 0x2))]) != 0.
  At `blez` at 0x1015c5d4 (target 0x1015c614), taken when a0(=[[([a0+132] + ([0x102cc3a8] << 0x2))]+4]) <= 0 (signed) and falls through when a0(=[[([a0+132] + ([0x102cc3a8] << 0x2))]+4]) > 0 (signed).
  At `beq` at 0x1015c600 (target 0x1015c77c), taken when a7(?) == s0(=a1) and falls through when a7(?) != s0(=a1).
  At `bnel` at 0x1015c60c (target 0x1015c600), taken when a2(?) != a1(?) and falls through when a2(?) == a1(?).
  At `beq` at 0x1015c61c (target 0x1015c6e0), taken when t0(=[([a0+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+1]:1) == a0(?) and falls through when t0(=[([a0+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+1]:1) != a0(?).
  At `beq` at 0x1015c638 (target 0x1015c64c), taken when t1(=0x10000000) >= a4(=[sym(globalSerialNumber)]+1) (unsigned) and falls through when t1(=0x10000000) < a4(=[sym(globalSerialNumber)]+1) (unsigned).
  At `beq` at 0x1015c674 (target 0x1015c6e0), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `blez` at 0x1015c680 (target 0x1015c6dc), taken when a0(=[0x102c5d70]) <= 0 (signed) and falls through when a0(=[0x102c5d70]) > 0 (signed).
  At `beq` at 0x1015c698 (target 0x1015c6d0), taken when (a0(=[0x102c5d70]) & 0x1) == 0 and falls through when (a0(=[0x102c5d70]) & 0x1) != 0.
  At `beq` at 0x1015c6a4 (target 0x1015c6cc), taken when a0(=[[sym(clients)]]) == 0 and falls through when a0(=[[sym(clients)]]) != 0.
  At `bne` at 0x1015c6b0 (target 0x1015c938), taken when a7(=[[[sym(clients)]]+48]) != a2(=[a0+4]) and falls through when a7(=[[[sym(clients)]]+48]) == a2(=[a0+4]).
  At `bnel` at 0x1015c6d4 (target 0x1015c70c), taken when t2(?) != 0 and falls through when t2(?) == 0.
  At `beq` at 0x1015c700 (target 0x1015c6dc), taken when a1(?) == a4(=([sym(clients)] + ([0x102c5d70] << 0x2))) and falls through when a1(?) != a4(=([sym(clients)] + ([0x102c5d70] << 0x2))).
  At `beq` at 0x1015c70c (target 0x1015c734), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `bne` at 0x1015c718 (target 0x1015c754), taken when t9(?) != a2(=[a0+4]) and falls through when t9(?) == a2(=[a0+4]).
  At `beq` at 0x1015c738 (target 0x1015c700), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `bne` at 0x1015c744 (target 0x1015c768), taken when v1(?) != a2(=[a0+4]) and falls through when v1(?) == a2(=[a0+4]).
  At `bne` at 0x1015c754 (target 0x1015c734), taken when a6(?) != a2(=[a0+4]) and falls through when a6(?) == a2(=[a0+4]).
  At `bne` at 0x1015c768 (target 0x1015c700), taken when a6(?) != a2(=[a0+4]) and falls through when a6(?) == a2(=[a0+4]).
  At `beq` at 0x1015c77c (target 0x1015c614), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `beq` at 0x1015c78c (target 0x1015c614), taken when a0(=[[([a0+132] + ([0x102cc3a8] << 0x2))]+8]) == a1(?) and falls through when a0(=[[([a0+132] + ([0x102cc3a8] << 0x2))]+8]) != a1(?).
  At `bne` at 0x1015c7b8 (target 0x1015c7d0), taken when a2 != 0 and falls through when a2 == 0.
  At `beq` at 0x1015c7c0 (target 0x1015c6e0), taken when a1(=[([a0+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+1]:1) == a0(=-0x1) and falls through when a1(=[([a0+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+1]:1) != a0(=-0x1).
  At `bne` at 0x1015c7d4 (target 0x1015c7e8), taken when a3(=[a0+4]) != s0(=a1) and falls through when a3(=[a0+4]) == s0(=a1).
  At `beq` at 0x1015c7f4 (target 0x1015c6e0), taken when a1(=[([a0+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+1]:1) == a0(?) and falls through when a1(=[([a0+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+1]:1) != a0(?).
  At `beq` at 0x1015c824 (target 0x1015c838), taken when a3(=0x10000000) >= a4(=[sym(globalSerialNumber)]+1) (unsigned) and falls through when a3(=0x10000000) < a4(=[sym(globalSerialNumber)]+1) (unsigned).
  At `beq` at 0x1015c858 (target 0x1015c6dc), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `blez` at 0x1015c860 (target 0x1015c6dc), taken when a0(=[0x102c5d70]) <= 0 (signed) and falls through when a0(=[0x102c5d70]) > 0 (signed).
  At `beq` at 0x1015c86c (target 0x1015c8a0), taken when t2(?) == 0 and falls through when t2(?) != 0.
  At `beq` at 0x1015c878 (target 0x1015c8a0), taken when a0(=[[sym(clients)]]) == 0 and falls through when a0(=[[sym(clients)]]) != 0.
  At `bne` at 0x1015c884 (target 0x1015c94c), taken when t3(=[[[sym(clients)]]+48]) != a6(=[a0+4]) and falls through when t3(=[[[sym(clients)]]+48]) == a6(=[a0+4]).
  At `bnel` at 0x1015c8a0 (target 0x1015c8fc), taken when t0(?) != 0 and falls through when t0(?) == 0.
  At `beq` at 0x1015c8c8 (target 0x1015c8f0), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `bne` at 0x1015c8d4 (target 0x1015c924), taken when v1(?) != a6(=[a0+4]) and falls through when v1(?) == a6(=[a0+4]).
  At `beq` at 0x1015c8f0 (target 0x1015c8a8), taken when a2(?) == a4(=([sym(clients)] + ([0x102c5d70] << 0x2))) and falls through when a2(?) != a4(=([sym(clients)] + ([0x102c5d70] << 0x2))).
  At `beq` at 0x1015c8fc (target 0x1015c8c4), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `beq` at 0x1015c908 (target 0x1015c8b0), taken when a7(?) == a6(=[a0+4]) and falls through when a7(?) != a6(=[a0+4]).
  At `bne` at 0x1015c910 (target 0x1015c8c4), taken when a1(?) != a6(=[a0+4]) and falls through when a1(?) == a6(=[a0+4]).
  At `bne` at 0x1015c924 (target 0x1015c8f0), taken when a1(?) != a6(=[a0+4]) and falls through when a1(?) == a6(=[a0+4]).
  At `bne` at 0x1015c938 (target 0x1015c6cc), taken when a7(=[[[sym(clients)]]+56]) != a2(=[a0+4]) and falls through when a7(=[[[sym(clients)]]+56]) == a2(=[a0+4]).
  At `bne` at 0x1015c950 (target 0x1015c8a0), taken when t2(=[[[sym(clients)]]+56]) != a6(=[a0+4]) and falls through when t2(=[[[sym(clients)]]+56]) == a6(=[a0+4]).
  Returns v0 = ? (`jr` at 0x1015c6e8).

- `ProcDbeDeallocateBackBufferName..MHC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1015c970 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1015c970-0x1015cab0 (320 bytes).
  Stores 4 bytes from a0 to a0 (arg0 at entry) +0x18 (`sw` at 0x1015ca60).
  Stores 4 bytes from t2 to a0 (arg0 at entry) +0x18 (`sw` at 0x1015ca7c).
  Calls `SecurityLookupIDByType [0x100d6140]` via direct with a0=a0 at entry (arg0), a1=[[a0+8]+4], a2=[0x102ca7cc], a3=0x4 (`jal` at 0x1015c9b8).
  Calls `SecurityLookupIDByType [0x100d6140]` via direct with a0=a0 at entry (arg0), a1=?, a2=[0x102ca7c8], a3=0x4 (`jal` at 0x1015c9e0).
  Calls `FreeResource [0x100bc480]` via direct with a0=?, a1=0x0, a2=?, a3=? (`jal` at 0x1015ca90).
  At `beq` at 0x1015c988 (target 0x1015c9a0), taken when at(=[a0+72]) == v0(=0x2) and falls through when at(=[a0+72]) != v0(=0x2).
  At `beq` at 0x1015c9c4 (target 0x1015ca64), taken when v0(=ret(SecurityLookupIDByType)) == 0 and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  At `beq` at 0x1015c9e8 (target 0x1015ca64), taken when v0(=ret(SecurityLookupIDByType)) == 0 and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  At `blez` at 0x1015ca00 (target 0x1015ca80), taken when a7(?) <= 0 (signed) and falls through when a7(?) > 0 (signed).
  At `beq` at 0x1015ca28 (target 0x1015ca50), taken when a6(?) == a0(?) and falls through when a6(?) != a0(?).
  At `beq` at 0x1015ca30 (target 0x1015ca50), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `beq` at 0x1015ca40 (target 0x1015ca50), taken when t0(?) == a0(?) and falls through when t0(?) != a0(?).
  At `bne` at 0x1015ca48 (target 0x1015ca20), taken when a6(?) != 0 and falls through when a6(?) == 0.
  At `bne` at 0x1015ca50 (target 0x1015ca90), taken when a3(?) != a7(?) and falls through when a3(?) == a7(?).
  At `beq` at 0x1015ca80 (target 0x1015caa4), taken when a7(?) == 0 and falls through when a7(?) != 0.
  Returns v0 = 0x10 (`jr` at 0x1015c990).
  Returns v0 = ? (`jr` at 0x1015c998).
  Returns v0 = [0x102ca7d8]; f0 = ret(SecurityLookupIDByType) (`jr` at 0x1015ca78).

- `CirculateWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x101610f0 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x101610f0-0x101613dc (748 bytes).
  Calls `IOverlapAnyWindow..M [0x101d2290]` via direct with a0=?, a1=sp-96, a2=?, a3=? (`jal` at 0x10161228).
  Calls `MaybeDeliverEventsToClient [0x101b1c50]` via direct with a0=a0 at entry (arg0), a1=sp-88, a2=0x1, a3=0x100000, a4=a2 at entry (arg2), a5=0x1b (`jal` at 0x101612dc).
  Calls `DeliverEvents [0x10064f80]` via direct with a0=?, a1=sp-88, a2=0x1, a3=0x0, a7=0x1a (`jal` at 0x10161304).
  Calls `ReflectStackChange..O [0x10278200]` via direct with a0=?, a1=?, a2=0x1, a3=? (`jal` at 0x1016131c).
  Calls `AnyWindowOverlapsMe..L [0x100c2610]` via direct with a0=?, a1=?, a2=sp-96, a3=? (`jal` at 0x10161398).
  At `bne` at 0x10161110 (target 0x1016111c), taken when at(=[a0+24]) != 0 -> outside and falls through when at(=[a0+24]) == 0.
  At `beq` at 0x10161118 (target 0x10161240), taken when v0(=[sym(screenIsSaved)]) == 0 and falls through when v0(=[sym(screenIsSaved)]) != 0.
  At `beq` at 0x1016112c (target 0x10161184), taken when a0(=a1) == 0 and falls through when a0(=a1) != 0.
  At `beq` at 0x1016113c (target 0x1016116c), taken when s0(?) == 0 and falls through when s0(?) != 0.
  At `bltz` at 0x10161158 (target 0x101611d4), taken when a1(?) < 0 (signed) and falls through when a1(?) >= 0 (signed).
  At `bne` at 0x10161164 (target 0x10161150), taken when s0(?) != 0 and falls through when s0(?) == 0.
  At `beq` at 0x1016118c (target 0x101611bc), taken when s1(?) == s0(?) and falls through when s1(?) != s0(?).
  At `bltz` at 0x101611a8 (target 0x10161340), taken when a2(?) < 0 (signed) and falls through when a2(?) >= 0 (signed).
  At `bne` at 0x101611b4 (target 0x101611a0), taken when s1(?) != s0(?) and falls through when s1(?) == s0(?).
  At `bne` at 0x10161230 (target 0x1016127c), taken when v0(=ret(IOverlapAnyWindow..M)) != 0 and falls through when v0(=ret(IOverlapAnyWindow..M)) == 0.
  At `beq` at 0x1016125c (target 0x1016111c), taken when t9(=[(sym(savedScreenInfo) + ([[a0+16]] << 0x4))]) == 0 -> outside and falls through when t9(=[(sym(savedScreenInfo) + ([[a0+16]] << 0x4))]) != 0.
  At `beq` at 0x10161264 (target 0x10161124), taken when v0(=[a0+36]) == 0 and falls through when v0(=[a0+36]) != 0.
  At `beq` at 0x10161298 (target 0x101613b8), taken when a1 == 0 and falls through when a1 != 0.
  At `beq` at 0x101612a8 (target 0x101613c0), taken when a0(=[a0+120]) == 0 and falls through when a0(=[a0+120]) != 0.
  At `bgez` at 0x101612bc (target 0x101612f0), taken when a4(=(([[a0+120]+16] | [a0+104]) << 0x2b)) >= 0 (signed) and falls through when a4(=(([[a0+120]+16] | [a0+104]) << 0x2b)) < 0 (signed).
  At `beq` at 0x101612e8 (target 0x101613b0), taken when v0(=ret(MaybeDeliverEventsToClient)) == a6(=0x1) and falls through when v0(=ret(MaybeDeliverEventsToClient)) != a6(=0x1).
  At `beq` at 0x10161310 (target 0x101613d4), taken when t0(=a1) == 0 and falls through when t0(=a1) != 0.
  At `bne` at 0x101613a0 (target 0x1016127c), taken when v0(=ret(AnyWindowOverlapsMe..L)) != 0 and falls through when v0(=ret(AnyWindowOverlapsMe..L)) == 0.
  At `bltz` at 0x101613c4 (target 0x101612c8), taken when a1(=([a0+104] << 0x2b)) < 0 (signed) and falls through when a1(=([a0+104] << 0x2b)) >= 0 (signed).
  Returns v0 = 0x0 (`jr` at 0x1016117c).
  Returns v0 = 0x0 (`jr` at 0x101611cc).
  Returns v0 = 0x0; f0 = ret(ReflectStackChange..O) (`jr` at 0x10161338).
  The instructions from 0x10161278 to 0x10161278 are not reached by any path from the entry, and their branches are not listed.

- `ProcXineramaUnmapWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10161ef0 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10161ef0-0x10162040 (336 bytes).
  Stores 4 bytes from v0 to abs 0x102ca77c (xineramaPostponeEvents) (`sw` at 0x10161f78) with value 0x1.
  Stores 4 bytes from v0 to sym(panoramiXMode) +0x0 (`sw` at 0x10161f80) with value 0x1.
  Stores 4 bytes from a3 to ? (base unknown) (`sw` at 0x10161fbc).
  Stores 4 bytes from t1 to sym(panoramiXScreen0) +0x0 (`sw` at 0x10161fc0) with value 0x1.
  Stores 4 bytes from zero to sym(panoramiXScreen0) +0x0 (`sw` at 0x10161fec) with value 0x0.
  Stores 4 bytes from zero to abs 0x102ca77c (xineramaPostponeEvents) (`sw` at 0x1016200c) with value 0x0.
  Stores 4 bytes from zero to sym(panoramiXMode) +0x0 (`sw` at 0x1016201c) with value 0x0.
  Stores 4 bytes from zero to sym(panoramiXScreen0) +0x0 (`sw` at 0x10162030) with value 0x0.
  Calls `SecurityLookupIDByType [0x100d6140]` via direct with a0=a0 at entry (arg0), a1=[[a0+8]+4], a2=[sym(XRT_WINDOW)], a3=0x1 (`jal` at 0x10161f54).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a7=sym(panoramiXScreen0) (`jalr` at 0x10161fcc).
  Calls `XineramaDeliverVisibilityNotify [0x10197300]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x10161ff8).
  Calls `XineramaDeliverExpose [0x100e7410]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x10162000).
  At `beq` at 0x10161f14 (target 0x10161f38), taken when v1(=[a0+72]) == a1(=0x2) and falls through when v1(=[a0+72]) != a1(=0x2).
  At `beq` at 0x10161f6c (target 0x10162020), taken when v0(=ret(SecurityLookupIDByType)) == 0 and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  At `blez` at 0x10161f7c (target 0x10162034), taken when a5(=[0x102c5f1c]) <= 0 (signed) and falls through when a5(=[0x102c5f1c]) > 0 (signed).
  At `beq` at 0x10161f98 (target 0x1016202c), taken when a4(?) >= a2(=[0x102c5f1c]) (signed) and falls through when a4(?) < a2(=[0x102c5f1c]) (signed).
  At `bne` at 0x10161fb8 (target 0x10161fc4), taken when a6(?) != a5(?) and falls through when a6(?) == a5(?).
  At `beq` at 0x10161ff0 (target 0x10161f90), taken when v0(=ret(?)) == 0 and falls through when v0(=ret(?)) != 0.
  Returns v0 = 0x10 (`jr` at 0x10161f20).
  Returns v0 = ? (`jr` at 0x10161f30).

- `CIDRegisterFontFileFunctions` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10162530 (n32).
  Evidence grade: established.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10162530-0x10162608 (216 bytes).
  Stores 4 bytes from v0 to abs 0x102c731c (renderers..128+4) (`sw` at 0x101625bc) with value ret(Xrealloc).
  Stores 4 bytes from s0 to abs 0x102c7318 (renderers..128) (`sw` at 0x101625c4) with value [0x102c7318]+1.
  Stores 4 bytes from s1 to abs 0x102cd320 (CIDRendererInfo+24) (`sw` at 0x101625d4) with value [0x102c7318].
  Stores 4 bytes from a2 to (ret(Xrealloc) + ([0x102c7318]+1 << 0x2)) -0x4 (`sw` at 0x101625ec) with value 0x102cd308.
  Calls `Type1InitStdProps [0x10264750]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x10162540).
  Calls `strcmp` via got with a0=?, a1=[0x102cd308], a2=?, a3=? (`jalr` at 0x10162570).
  Calls `Xrealloc [0x101b9470]` via direct with a0=[0x102c731c], a1=([0x102c7318] << 0x2)+4, a2=?, a3=? (`jal` at 0x101625ac).
  At `blez` at 0x10162554 (target 0x10162598), taken when v0(=[0x102c7318]) <= 0 (signed) and falls through when v0(=[0x102c7318]) > 0 (signed).
  At `beq` at 0x10162578 (target 0x101625f4), taken when v0(=ret(strcmp)) == 0 and falls through when v0(=ret(strcmp)) != 0.
  At `bne` at 0x10162590 (target 0x10162560), taken when s1(?) < v0(=[0x102c7318]) (signed) and falls through when s1(?) >= v0(=[0x102c7318]) (signed).
  At `beq` at 0x101625b4 (target 0x101625f4), taken when v0(=ret(Xrealloc)) == 0 and falls through when v0(=ret(Xrealloc)) != 0.
  Returns v0 = ret(Xrealloc); f0 = ret(Xrealloc) (`jr` at 0x101625e8).
  Returns v0 = ? (`jr` at 0x10162600).
  The instructions from 0x101625f0 to 0x101625f0 are not reached by any path from the entry, and their branches are not listed.
