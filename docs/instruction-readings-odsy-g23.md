# Instruction readings from hostfacts

Each entry records selected accesses, calls and arguments, branch conditions, and return values from the exact binary range cited. These observations establish software behavior in the named build, not board behavior.

Skipped 5,598 understood and 46,048 located rows because targets were limited to named-only or undocumented; skipped 295 named-only or undocumented rows with exact binary/member/routine entries; and skipped 54,401 further eligible rows because they rank after the first 250 hardware-facing targets.

- `__glx_AreTexturesResident` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83ec54 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83ec54-0xd83ee58 (516 bytes).
  It occupies 516 bytes.
  The `lw` at 0xd83ec64 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83ec84 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83ec8c loads 4 bytes from [[0x1014]+276] +0x4.
  The `lw` at 0xd83ec94 loads 4 bytes from [[0x1014]+276] +0xd8.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd83ecbc, `lw` at 0xd83ee04.
  The `lw` at 0xd83eccc loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  3 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd83ece4, `lw` at 0xd83ed30, `lw` at 0xd83ed48.
  The `lw` at 0xd83ecf4 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd83ed0c, `sw` at 0xd83ed34.
  The `sh` at 0xd83ed40 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd83ed44, `sb` at 0xd83ed74.
  The `lw` at 0xd83ed4c loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd83ed60 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd83ed64 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `lw` at 0xd83ed68 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd83ed6c stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd83ed78 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd83ed80 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd83ed88 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd83ee0c, `lw` at 0xd83ee24.
  The `lw` at 0xd83ee10 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd83ecb4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd83ecd4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83ed1c calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+108].
  The `jalr` at 0xd83ed94 calls memcpy with a0=[[[[0x1014]+276]+216]+108]+12, a1=a1 at entry (arg1), a2=?, a3=[[[[0x1014]+276]+216]+108].
  The `jalr` at 0xd83edb4 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-56, a2=0x0, a3=0x0.
  The `jalr` at 0xd83edd8 calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0xd83edf8 calls _XEatData with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83ee18 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83ee34 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `bgez` branch at 0xd83ec90 targets 0xd83eca0, is taken when a0 >= 0 (signed), and falls through when a0 < 0 (signed).
  The `beq` branch at 0xd83ec98 targets 0xd83ee44 and is always taken.
  The `beql` branch at 0xd83eca0 targets 0xd83ee44, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lbu v0,99(sp)` at 0xd83eca4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83ecc4 targets 0xd83ece4, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw t0,120(sp)` at 0xd83ecc8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83ed08 targets 0xd83ed38, is taken when t8(=[[[[0x1014]+276]+216]+112]) >= t2(?) (unsigned), and falls through when t8(=[[[[0x1014]+276]+216]+112]) < t2(?) (unsigned); its branch-likely delay slot `sw a3,100(s0)` at 0xd83ed0c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83ede4 targets 0xd83ee04, is taken when (s1(=a0) & 0x3) == 0, and falls through when (s1(=a0) & 0x3) != 0.
  The `beql` branch at 0xd83ee08 targets 0xd83ee28, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83ee0c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83ee2c targets 0xd83ee44, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lbu v0,99(sp)` at 0xd83ee30 runs only when taken and is annulled on fall-through.
  The return at 0xd83ee50 has v0 = one of 0x0, ?.
- `__glx_DeleteTextures` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83ee58 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83ee58-0xd83efe4 (396 bytes).
  It occupies 396 bytes.
  The `lw` at 0xd83ee68 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83ee84 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83ee88 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd83ee90 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd83eeb0, `lw` at 0xd83ef90.
  The `lw` at 0xd83eec0 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  3 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd83eed8, `lw` at 0xd83ef24, `lw` at 0xd83ef3c.
  The `lw` at 0xd83eee8 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd83ef00, `sw` at 0xd83ef28.
  The `sh` at 0xd83ef34 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd83ef38, `sb` at 0xd83ef68.
  The `lw` at 0xd83ef40 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd83ef54 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd83ef58 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `lw` at 0xd83ef5c loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd83ef60 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd83ef6c loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd83ef74 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd83ef7c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd83ef9c, `lw` at 0xd83efb4.
  The `lw` at 0xd83efa0 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd83eea8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[[0x1014]+276]+4], a3=a3 at entry (arg3).
  The `jalr` at 0xd83eec8 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83ef10 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+108].
  The `jalr` at 0xd83ef88 calls memcpy with a0=[[[[0x1014]+276]+216]+108]+12, a1=a1 at entry (arg1), a2=?, a3=[[[[0x1014]+276]+216]+108].
  The `jalr` at 0xd83efa8 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83efc4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `bltz` branch at 0xd83ee8c targets 0xd83efd0, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `beql` branch at 0xd83ee94 targets 0xd83efd4, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd83ee98 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83eeb8 targets 0xd83eed8, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw t0,72(sp)` at 0xd83eebc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83eefc targets 0xd83ef2c, is taken when t8(=[[[[0x1014]+276]+216]+112]) >= t2(?) (unsigned), and falls through when t8(=[[[[0x1014]+276]+216]+112]) < t2(?) (unsigned); its branch-likely delay slot `sw a3,100(s0)` at 0xd83ef00 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83ef98 targets 0xd83efb8, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83ef9c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83efbc targets 0xd83efd4, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd83efc0 runs only when taken and is annulled on fall-through.
  The return at 0xd83efdc has v0 = one of ?, [[[[0x1014]+276]+216]+124].
- `__glx_GenTextures` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83efe4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83efe4-0xd83f164 (384 bytes).
  It occupies 384 bytes.
  The `lw` at 0xd83eff4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83f010 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83f014 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd83f018 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd83f038, `lw` at 0xd83f110.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd83f044, `lw` at 0xd83f05c, `lw` at 0xd83f088.
  The `lw` at 0xd83f048 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd83f060 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd83f070, `sw` at 0xd83f08c.
  The `sh` at 0xd83f094 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd83f098, `sb` at 0xd83f0c4.
  The `lw` at 0xd83f09c loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd83f0b0 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd83f0b4 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd83f0b8 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd83f0bc stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd83f0c8 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd83f0d4 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd83f0e0 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd83f11c, `lw` at 0xd83f134.
  The `lw` at 0xd83f120 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd83f030 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[[0x1014]+276]+4], a3=a3 at entry (arg3).
  The `jalr` at 0xd83f050 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83f07c calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83f0e8 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-48, a2=0x0, a3=0x0.
  The `jalr` at 0xd83f108 calls _XRead with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=?.
  The `jalr` at 0xd83f128 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83f144 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd83f01c targets 0xd83f154, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd83f020 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83f040 targets 0xd83f060, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd83f044 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83f06c targets 0xd83f090, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd83f070 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83f118 targets 0xd83f138, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83f11c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83f13c targets 0xd83f154, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd83f140 runs only when taken and is annulled on fall-through.
  The return at 0xd83f15c has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).
- `__glx_IsTexture` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83f164 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83f164-0xd83f2d8 (372 bytes).
  It occupies 372 bytes.
  The `lw` at 0xd83f174 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83f18c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83f194 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd83f198 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd83f1b4, `lw` at 0xd83f26c.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd83f1c0, `lw` at 0xd83f1d8, `lw` at 0xd83f204.
  The `lw` at 0xd83f1c4 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd83f1dc loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd83f1ec, `sw` at 0xd83f208.
  The `sh` at 0xd83f210 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd83f214, `sb` at 0xd83f240.
  The `lw` at 0xd83f218 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd83f22c stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd83f230 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd83f234 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd83f238 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd83f244 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd83f250 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd83f25c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd83f27c, `lw` at 0xd83f29c.
  The `lw` at 0xd83f284 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd83f1ac calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83f1cc calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83f1f8 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83f264 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd83f28c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83f2b0 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd83f19c targets 0xd83f2c4, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd83f1a0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83f1bc targets 0xd83f1dc, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd83f1c0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83f1e8 targets 0xd83f20c, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd83f1ec runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83f278 targets 0xd83f2a0, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83f27c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83f2a4 targets 0xd83f2c4, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd83f2a8 runs only when taken and is annulled on fall-through.
  The return at 0xd83f2d0 has v0 = one of 0x0, ?.
- `__glce_AreTexturesResident` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6620 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6620-0xdad6628 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6620 targets 0xdad66a8 and is always taken.
- `__glce_DeleteTextures` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6628 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6628-0xdad6630 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6628 targets 0xdad66a8 and is always taken.
- `__glce_GenTextures` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6630 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6630-0xdad6638 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6630 targets 0xdad66a8 and is always taken.
- `__glce_IsTexture` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6638 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6638-0xdad6640 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6638 targets 0xdad66a8 and is always taken.
- `glBindTexture` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad74a0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad74a0-0xdad74ac (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad74a0 loads 4 bytes from abs 0x1390.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad74a4).
- `glBindTextureEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad74a0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad74a0-0xdad74ac (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad74a0 loads 4 bytes from abs 0x1390.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad74a4).
- `glPrioritizeTextures` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad74d0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad74d0-0xdad74dc (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad74d0 loads 4 bytes from abs 0x13a0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad74d4).
- `glPrioritizeTexturesEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad74d0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad74d0-0xdad74dc (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad74d0 loads 4 bytes from abs 0x13a0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad74d4).
- `__glx_AreTexturesResident` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83ffec (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd83ffec-0xd8401cc (480 bytes).
  It occupies 480 bytes.
  The `lw` at 0xd83fff4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd840000 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd840014 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd840058 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd84005c, `lw` at 0xd84015c.
  The `lw` at 0xd840068 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  3 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd84007c, `lw` at 0xd8400c0, `lw` at 0xd8401c8.
  The `lw` at 0xd84008c loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  The `sw` at 0xd8400a8 stores 4 bytes to [[[0x1014]+276]+216] +0x64.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd8400ac, `sb` at 0xd8400ec.
  The `sh` at 0xd8400b8 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  The `lw` at 0xd8400bc loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8400c8 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8400d8 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd8400dc, `lw` at 0xd8400f0.
  The `sb` at 0xd8400e4 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `sw` at 0xd8400f8 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd840104 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `lw` at 0xd840168 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `lw` at 0xd840174 loads 4 bytes from [[[0x1014]+276]+216] +0x7c.
  The `jalr` at 0xd840054 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[[0x1014]+276].
  The `jalr` at 0xd84006c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?, a4=[[[[0x1014]+276]+216]+1232], a5=a0 at entry (arg0).
  The `jalr` at 0xd840100 calls memcpy with a0=[[[[0x1014]+276]+216]+108]+12, a1=a1 at entry (arg1), a2=?, a3=?, a4=[[[[0x1014]+276]+216]+108], a7=a0 at entry (arg0).
  The `jalr` at 0xd840118 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-112, a2=0x0, a3=0x0.
  The `jalr` at 0xd840134 calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0xd840154 calls _XEatData with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd84016c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?, a4=[[[[0x1014]+276]+216]+1232].
  The `jalr` at 0xd840180 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8401b4 calls _XFlush with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=?, a3=?, a4=[[[[0x1014]+276]+216]+108], a5=(a0 << 0x2), a7=-0x4.
  The `bltz` branch at 0xd840010 targets 0xd840190, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `bne` branch at 0xd840024 targets 0xd840048, is taken when s0(=[[[0x1014]+276]+216]) != 0, and falls through when s0(=[[[0x1014]+276]+216]) == 0.
  The `beq` branch at 0xd840060 targets 0xd840078, is taken when a4(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a4(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `bne` branch at 0xd84009c targets 0xd8401a8, is taken when a2(=[[[[0x1014]+276]+216]+112]) < a3(?) (unsigned), and falls through when a2(=[[[[0x1014]+276]+216]+112]) >= a3(?) (unsigned).
  The `beq` branch at 0xd840144 targets 0xd84015c, is taken when (a4(=a0) & 0x3) == 0, and falls through when (a4(=a0) & 0x3) != 0.
  The `beq` branch at 0xd840160 targets 0xd840174, is taken when a4(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a4(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `beq` branch at 0xd840178 targets 0xd840030, is taken when t9(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when t9(=[[[[0x1014]+276]+216]+124]) != 0.
  The `beq` branch at 0xd840188 targets 0xd840030 and is always taken.
  The `beq` branch at 0xd8401c4 targets 0xd8400a0 and is always taken.
  The return at 0xd840040 has v0 = one of 0x0, ?.
  The return at 0xd8401a0 has v0 = 0x0.
- `__glx_DeleteTextures` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8401cc (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8401cc-0xd840328 (348 bytes).
  It occupies 348 bytes.
  The `lw` at 0xd8401d4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8401e0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8401f4 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd840218 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd84021c, `lw` at 0xd8402c4.
  The `lw` at 0xd840228 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  3 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd84023c, `lw` at 0xd840280, `lw` at 0xd840324.
  The `lw` at 0xd84024c loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  The `sw` at 0xd840268 stores 4 bytes to [[[0x1014]+276]+216] +0x64.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd84026c, `sb` at 0xd8402ac.
  The `sh` at 0xd840278 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  The `lw` at 0xd84027c loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd84028c stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd840298 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd84029c, `lw` at 0xd8402b0.
  The `sb` at 0xd8402a4 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `sw` at 0xd8402b4 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd8402c0 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `lw` at 0xd8402d0 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `lw` at 0xd8402dc loads 4 bytes from [[[0x1014]+276]+216] +0x7c.
  The `jalr` at 0xd840214 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `jalr` at 0xd84022c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=[[[[0x1014]+276]+216]+1232], a3=?.
  The `jalr` at 0xd8402bc calls memcpy with a0=[[[[0x1014]+276]+216]+108]+12, a1=a1 at entry (arg1), a2=?, a3=?, a4=[[[[0x1014]+276]+216]+108], a5=a0 at entry (arg0), a7=[[[[0x1014]+276]+216]+96]+1.
  The `jalr` at 0xd8402d4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=[[[[0x1014]+276]+216]+1232], a3=?.
  The `jalr` at 0xd8402e8 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd840310 calls _XFlush with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=?, a4=[[[[0x1014]+276]+216]+108].
  The `bltz` branch at 0xd8401f0 targets 0xd8402f0, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `beq` branch at 0xd840200 targets 0xd8402f0, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  The `beq` branch at 0xd840220 targets 0xd840234, is taken when a2(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a2(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `bne` branch at 0xd84025c targets 0xd840304, is taken when a3(=[[[[0x1014]+276]+216]+112]) < a6(?) (unsigned), and falls through when a3(=[[[[0x1014]+276]+216]+112]) >= a6(?) (unsigned).
  The `beq` branch at 0xd8402c8 targets 0xd8402dc, is taken when a2(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a2(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `beq` branch at 0xd8402e0 targets 0xd8402f4, is taken when t9(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when t9(=[[[[0x1014]+276]+216]+124]) != 0.
  The `beq` branch at 0xd840320 targets 0xd840260 and is always taken.
  The return at 0xd8402fc has v0 = ?.
- `__glx_GenTextures` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd840328 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd840328-0xd84046c (324 bytes).
  It occupies 324 bytes.
  The `lw` at 0xd840330 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd840338 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd840340 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd840370 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd840374, `lw` at 0xd840410.
  The `lw` at 0xd840380 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  3 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd84038c, `lw` at 0xd8403b8, `lw` at 0xd840468.
  The `lw` at 0xd840390 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  The `sw` at 0xd8403a4 stores 4 bytes to [[[0x1014]+276]+216] +0x64.
  The `sh` at 0xd8403ac stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd8403b0, `sb` at 0xd8403d8.
  The `lw` at 0xd8403b4 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8403c0 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8403c8 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `lw` at 0xd8403cc loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd8403d4 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd8403e0 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd8403ec stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd8403f8 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `lw` at 0xd84041c loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `lw` at 0xd840428 loads 4 bytes from [[[0x1014]+276]+216] +0x7c.
  The `jalr` at 0xd84036c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd840384 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+1232].
  The `jalr` at 0xd8403f4 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-80, a2=0x0, a3=0x0, a5=[[[[0x1014]+276]+216]+108].
  The `jalr` at 0xd840408 calls _XRead with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=?.
  The `jalr` at 0xd840420 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+1232].
  The `jalr` at 0xd840434 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd84045c calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?, a5=[[[[0x1014]+276]+216]+108].
  The `beq` branch at 0xd84035c targets 0xd84043c, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  The `beq` branch at 0xd840378 targets 0xd84038c, is taken when a3(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a3(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `bne` branch at 0xd84039c targets 0xd840458, is taken when t8(=[[[[0x1014]+276]+216]+112]) < t9(=[[[[0x1014]+276]+216]+108]+12) (unsigned), and falls through when t8(=[[[[0x1014]+276]+216]+112]) >= t9(=[[[[0x1014]+276]+216]+108]+12) (unsigned).
  The `beq` branch at 0xd840414 targets 0xd840428, is taken when a3(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a3(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `beq` branch at 0xd84042c targets 0xd84043c, is taken when t9(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when t9(=[[[[0x1014]+276]+216]+124]) != 0.
  The `beq` branch at 0xd840464 targets 0xd8403a0 and is always taken.
  The return at 0xd840450 has v0 = one of ?, ret(?).
- `__glx_IsTexture` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd84046c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd84046c-0xd8405bc (336 bytes).
  It occupies 336 bytes.
  The `lw` at 0xd840474 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd840478 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd840480 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd8404b4 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd8404b8, `lw` at 0xd840548.
  The `lw` at 0xd8404c4 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  3 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8404d0, `lw` at 0xd840500, `lw` at 0xd8405b8.
  The `lw` at 0xd8404d4 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  The `sw` at 0xd8404ec stores 4 bytes to [[[0x1014]+276]+216] +0x64.
  The `sh` at 0xd8404f4 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd8404f8, `sb` at 0xd840524.
  The `lw` at 0xd8404fc loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd840508 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd840510 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd840514, `lw` at 0xd84052c.
  The `sb` at 0xd84051c stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `sw` at 0xd840538 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd840544 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `lw` at 0xd840558 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `lw` at 0xd840564 loads 4 bytes from [[[0x1014]+276]+216] +0x7c.
  The `jalr` at 0xd8404b0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8404c8 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+1232].
  The `jalr` at 0xd840540 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-80, a2=0x0, a3=0x0, a5=a0 at entry (arg0), a7=[[[[0x1014]+276]+216]+96]+1.
  The `jalr` at 0xd84055c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+1232].
  The `jalr` at 0xd840574 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8405ac calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+108]+12.
  The `beq` branch at 0xd840498 targets 0xd840588, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  The `beq` branch at 0xd8404bc targets 0xd8404d0, is taken when a3(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a3(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `bne` branch at 0xd8404e0 targets 0xd8405a8, is taken when a2(=[[[[0x1014]+276]+216]+112]) < a3(=[[[[0x1014]+276]+216]+108]+12) (unsigned), and falls through when a2(=[[[[0x1014]+276]+216]+112]) >= a3(=[[[[0x1014]+276]+216]+108]+12) (unsigned).
  The `beq` branch at 0xd840550 targets 0xd840564, is taken when a3(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a3(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `beq` branch at 0xd84056c targets 0xd840598, is taken when t9(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when t9(=[[[[0x1014]+276]+216]+124]) != 0.
  The `beq` branch at 0xd840580 targets 0xd840598 and is always taken.
  The `beq` branch at 0xd8405b4 targets 0xd8404e4 and is always taken.
  The return at 0xd840590 has v0 = 0x0.
  The return at 0xd8405a0 has v0 = ?.
- `SphereGen` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9f1f30 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xd9f1f30-0xd9f202c (252 bytes).
  It occupies 252 bytes.
  The `lw` at 0xd9f1f38 loads 4 bytes from a0 (arg0 at entry) +0x2eb8.
  The `lwc1` at 0xd9f1f74 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `lwc1` at 0xd9f1f7c loads 4 bytes from a1 (arg1 at entry) +0x20.
  The `lwc1` at 0xd9f1f80 loads 4 bytes from a1 (arg1 at entry) +0x28.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xdd4, including `lwc1` at 0xd9f1fd8, `lwc1` at 0xd9f1fec, `lwc1` at 0xd9f2014.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xd9f1fe8, `swc1` at 0xd9f2010.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xd9f2000, `swc1` at 0xd9f201c.
  The `jalr` at 0xd9f1f58 calls (unknown callee) with a0=sp-48, a1=a1+96, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xd9f1f6c calls Dot [0xd9f1f00] with a0=a1+32, a1=sp-48, a2=?, a3=?.
  The `bc1t` branch at 0xd9f1fd4 targets 0xd9f2010, is taken when f6 == f0(=ret(Dot)) (c.eq.s at 0xd9f1fc8), and falls through when not (f6 == f0(=ret(Dot)) (c.eq.s at 0xd9f1fc8)).
  The return at 0xd9f2008 has v0 = ret(Dot).
  The return at 0xd9f2024 has v0 = ret(Dot).
- `__glce_AreTexturesResident` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdac9480 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdac9480-0xdac94d0 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0xdac9488 loads 4 bytes from abs 0x1534.
  The `lw` at 0xdac9490 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdac94a8 loads 4 bytes from [0x1010] +0x2ba4.
  2 such `sw` accesses store 4 bytes to abs 0x1534, including `sw` at 0xdac94b0, `sw` at 0xdac94c0.
  The `jalr` at 0xdac94ac calls glAreTexturesResident with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac94c8 has v0 = ?.
- `__glce_DeleteTextures` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdac94d0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdac94d0-0xdac951c (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xdac94d8 loads 4 bytes from abs 0x1538.
  The `lw` at 0xdac94e0 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdac94f8 loads 4 bytes from [0x1010] +0x2ba8.
  2 such `sw` accesses store 4 bytes to abs 0x1538, including `sw` at 0xdac9500, `sw` at 0xdac950c.
  The `jalr` at 0xdac94fc calls glDeleteTextures with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac9514 has v0 = ret(glDeleteTextures).
- `__glce_GenTextures` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdac9520 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdac9520-0xdac956c (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xdac9528 loads 4 bytes from abs 0x153c.
  The `lw` at 0xdac9530 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdac9548 loads 4 bytes from [0x1010] +0x2bac.
  2 such `sw` accesses store 4 bytes to abs 0x153c, including `sw` at 0xdac9550, `sw` at 0xdac955c.
  The `jalr` at 0xdac954c calls glGenTextures with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac9564 has v0 = ret(glGenTextures).
- `__glce_IsTexture` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdac9570 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdac9570-0xdac95c0 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0xdac9578 loads 4 bytes from abs 0x1540.
  The `lw` at 0xdac9580 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdac9598 loads 4 bytes from [0x1010] +0x2bb0.
  2 such `sw` accesses store 4 bytes to abs 0x1540, including `sw` at 0xdac95a0, `sw` at 0xdac95b0.
  The `jalr` at 0xdac959c calls glIsTexture with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdac95b8 has v0 = ?.
- `glBindTexture` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacdfe0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacdfe0-0xdacdfec (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacdfe0 loads 4 bytes from abs 0x1390.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacdfe4).
- `glBindTextureEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacdfe0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacdfe0-0xdacdfec (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacdfe0 loads 4 bytes from abs 0x1390.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacdfe4).
- `glPrioritizeTextures` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace010 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdace010-0xdace01c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdace010 loads 4 bytes from abs 0x13a0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdace014).
- `glPrioritizeTexturesEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace010 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdace010-0xdace01c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdace010 loads 4 bytes from abs 0x13a0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdace014).
- `__glx_AreTexturesResident` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2174b5c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x2174b5c-0x2174d44 (488 bytes).
  It occupies 488 bytes.
  The `ld` at 0x2174b64 loads 8 bytes from abs 0x1028.
  The `ld` at 0x2174b70 loads 8 bytes from [0x1028]:8 +0x118.
  The `ld` at 0x2174b84 loads 8 bytes from [[0x1028]:8+280]:8 +0x138.
  The `ld` at 0x2174bc4 loads 8 bytes from [[0x1028]:8+280]:8 +0x8.
  2 such `ld` accesses load 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0x968, including `ld` at 0x2174bc8, `ld` at 0x2174cd4.
  The `ld` at 0x2174bd4 loads 8 bytes from [[[[0x1028]:8+280]:8+312]:8+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xb0, including `ld` at 0x2174bf4, `ld` at 0x2174c38, `ld` at 0x2174d40.
  The `ld` at 0x2174c00 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xb8.
  The `sd` at 0x2174c24 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0xa0.
  2 such `sb` accesses store 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x0, including `sb` at 0x2174c28, `sb` at 0x2174c64.
  The `sh` at 0x2174c30 stores 2 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x2.
  The `ld` at 0x2174c34 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0x98.
  The `sd` at 0x2174c48 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0x98.
  The `sd` at 0x2174c50 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0xb0.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x2174c54, `lw` at 0x2174c68.
  The `sb` at 0x2174c5c stores 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x1.
  The `sw` at 0x2174c70 stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x8.
  The `sw` at 0x2174c7c stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x4.
  The `ld` at 0x2174ce0 loads 8 bytes from [[[[0x1028]:8+280]:8+312]:8+2408]:8 +0x8.
  The `ld` at 0x2174cec loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xd0.
  The `jalr` at 0x2174bc0 calls __glXFlushRenderBuffer with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[[0x1028]:8+280]:8.
  The `jalr` at 0x2174bd8 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?, a4=[[[[0x1028]:8+280]:8+312]:8+2408]:8, a5=a0 at entry (arg0).
  The `jalr` at 0x2174c78 calls memcpy with a0=[[[[0x1028]:8+280]:8+312]:8+176]:8+12, a1=a1 at entry (arg1), a2=?, a3=?, a4=[[[[0x1028]:8+280]:8+312]:8+176]:8, a7=a0 at entry (arg0).
  The `jalr` at 0x2174c90 calls _XReply with a0=[[[0x1028]:8+280]:8+312]:8, a1=sp-112, a2=0x0, a3=0x0.
  The `jalr` at 0x2174cac calls _XRead with a0=[[[0x1028]:8+280]:8+312]:8, a1=a2 at entry (arg2), a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x2174ccc calls _XEatData with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x2174ce4 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?, a4=[[[[0x1028]:8+280]:8+312]:8+2408]:8.
  The `jalr` at 0x2174cf8 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x2174d2c calls _XFlush with a0=[[[0x1028]:8+280]:8+312]:8, a1=a1 at entry (arg1), a2=?, a3=?, a4=[[[[0x1028]:8+280]:8+312]:8+176]:8, a5=(a0 << 0x2), a7=-0x4.
  The `bltz` branch at 0x2174b80 targets 0x2174d08, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `bne` branch at 0x2174b94 targets 0x2174bb8, is taken when s0(=[[[0x1028]:8+280]:8+312]:8) != 0, and falls through when s0(=[[[0x1028]:8+280]:8+312]:8) == 0.
  The `beq` branch at 0x2174bcc targets 0x2174be4, is taken when a4(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0, and falls through when a4(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `bne` branch at 0x2174c10 targets 0x2174d20, is taken when a2(=[[[[0x1028]:8+280]:8+312]:8+184]:8) < a3(?) (unsigned), and falls through when a2(=[[[[0x1028]:8+280]:8+312]:8+184]:8) >= a3(?) (unsigned).
  The `beq` branch at 0x2174cbc targets 0x2174cd4, is taken when (a4(=a0) & 0x3) == 0, and falls through when (a4(=a0) & 0x3) != 0.
  The `beq` branch at 0x2174cd8 targets 0x2174cec, is taken when a4(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0, and falls through when a4(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `beq` branch at 0x2174cf0 targets 0x2174ba0, is taken when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) == 0, and falls through when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) != 0.
  The `beq` branch at 0x2174d00 targets 0x2174ba0 and is always taken.
  The `beq` branch at 0x2174d3c targets 0x2174c14 and is always taken.
  The return at 0x2174bb0 has v0 = one of 0x0, ?.
  The return at 0x2174d18 has v0 = 0x0.
- `__glx_DeleteTextures` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2174d44 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x2174d44-0x2174ea8 (356 bytes).
  It occupies 356 bytes.
  The `ld` at 0x2174d4c loads 8 bytes from abs 0x1028.
  The `ld` at 0x2174d58 loads 8 bytes from [0x1028]:8 +0x118.
  The `ld` at 0x2174d6c loads 8 bytes from [[0x1028]:8+280]:8 +0x138.
  The `ld` at 0x2174d8c loads 8 bytes from [[0x1028]:8+280]:8 +0x8.
  2 such `ld` accesses load 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0x968, including `ld` at 0x2174d90, `ld` at 0x2174e44.
  The `ld` at 0x2174d9c loads 8 bytes from [[[[0x1028]:8+280]:8+312]:8+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xb0, including `ld` at 0x2174dbc, `ld` at 0x2174e00, `ld` at 0x2174ea4.
  The `ld` at 0x2174dc8 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xb8.
  The `sd` at 0x2174de8 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0xa0.
  2 such `sb` accesses store 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x0, including `sb` at 0x2174dec, `sb` at 0x2174e2c.
  The `sh` at 0x2174df8 stores 2 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x2.
  The `ld` at 0x2174dfc loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0x98.
  The `sd` at 0x2174e10 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0x98.
  The `sd` at 0x2174e18 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0xb0.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x2174e1c, `lw` at 0x2174e30.
  The `sb` at 0x2174e24 stores 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x1.
  The `sw` at 0x2174e34 stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x8.
  The `sw` at 0x2174e40 stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x4.
  The `ld` at 0x2174e50 loads 8 bytes from [[[[0x1028]:8+280]:8+312]:8+2408]:8 +0x8.
  The `ld` at 0x2174e5c loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xd0.
  The `jalr` at 0x2174d88 calls __glXFlushRenderBuffer with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8, a2=[[0x1028]:8+280]:8, a3=a3 at entry (arg3).
  The `jalr` at 0x2174da0 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=[[[[0x1028]:8+280]:8+312]:8+2408]:8, a3=?.
  The `jalr` at 0x2174e3c calls memcpy with a0=[[[[0x1028]:8+280]:8+312]:8+176]:8+12, a1=a1 at entry (arg1), a2=?, a3=?, a4=[[[[0x1028]:8+280]:8+312]:8+176]:8, a5=a0 at entry (arg0), a7=[[[[0x1028]:8+280]:8+312]:8+152]:8+1.
  The `jalr` at 0x2174e54 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=[[[[0x1028]:8+280]:8+312]:8+2408]:8, a3=?.
  The `jalr` at 0x2174e68 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x2174e90 calls _XFlush with a0=[[[0x1028]:8+280]:8+312]:8, a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=?, a4=[[[[0x1028]:8+280]:8+312]:8+176]:8.
  The `bltz` branch at 0x2174d68 targets 0x2174e70, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `beq` branch at 0x2174d78 targets 0x2174e70, is taken when s0(=[[[0x1028]:8+280]:8+312]:8) == 0, and falls through when s0(=[[[0x1028]:8+280]:8+312]:8) != 0.
  The `beq` branch at 0x2174d94 targets 0x2174da8, is taken when a2(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0, and falls through when a2(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `bne` branch at 0x2174dd8 targets 0x2174e84, is taken when a3(=[[[[0x1028]:8+280]:8+312]:8+184]:8) < a6(?) (unsigned), and falls through when a3(=[[[[0x1028]:8+280]:8+312]:8+184]:8) >= a6(?) (unsigned).
  The `beq` branch at 0x2174e48 targets 0x2174e5c, is taken when a2(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0, and falls through when a2(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `beq` branch at 0x2174e60 targets 0x2174e74, is taken when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) == 0, and falls through when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) != 0.
  The `beq` branch at 0x2174ea0 targets 0x2174ddc and is always taken.
  The return at 0x2174e7c has v0 = ?.
- `__glx_GenTextures` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2174ea8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x2174ea8-0x2174fec (324 bytes).
  It occupies 324 bytes.
  The `ld` at 0x2174eb0 loads 8 bytes from abs 0x1028.
  The `ld` at 0x2174eb8 loads 8 bytes from [0x1028]:8 +0x118.
  The `ld` at 0x2174ec0 loads 8 bytes from [[0x1028]:8+280]:8 +0x138.
  The `ld` at 0x2174ef0 loads 8 bytes from [[0x1028]:8+280]:8 +0x8.
  2 such `ld` accesses load 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0x968, including `ld` at 0x2174ef4, `ld` at 0x2174f90.
  The `ld` at 0x2174f00 loads 8 bytes from [[[[0x1028]:8+280]:8+312]:8+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xb0, including `ld` at 0x2174f0c, `ld` at 0x2174f38, `ld` at 0x2174fe8.
  The `ld` at 0x2174f10 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xb8.
  The `sd` at 0x2174f24 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0xa0.
  The `sh` at 0x2174f2c stores 2 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x0, including `sb` at 0x2174f30, `sb` at 0x2174f58.
  The `ld` at 0x2174f34 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0x98.
  The `sd` at 0x2174f40 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0x98.
  The `sd` at 0x2174f48 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0xb0.
  The `lw` at 0x2174f4c loads 4 bytes from [[0x1028]:8+280]:8 +0x1a4.
  The `sb` at 0x2174f54 stores 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x1.
  The `lw` at 0x2174f60 loads 4 bytes from [[0x1028]:8+280]:8 +0x68.
  The `sw` at 0x2174f6c stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x8.
  The `sw` at 0x2174f78 stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x4.
  The `ld` at 0x2174f9c loads 8 bytes from [[[[0x1028]:8+280]:8+312]:8+2408]:8 +0x8.
  The `ld` at 0x2174fa8 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xd0.
  The `jalr` at 0x2174eec calls __glXFlushRenderBuffer with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2174f04 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=[[[[0x1028]:8+280]:8+312]:8+2408]:8.
  The `jalr` at 0x2174f74 calls _XReply with a0=[[[0x1028]:8+280]:8+312]:8, a1=sp-80, a2=0x0, a3=0x0, a5=[[[[0x1028]:8+280]:8+312]:8+176]:8.
  The `jalr` at 0x2174f88 calls _XRead with a0=[[[0x1028]:8+280]:8+312]:8, a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=?.
  The `jalr` at 0x2174fa0 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=[[[[0x1028]:8+280]:8+312]:8+2408]:8.
  The `jalr` at 0x2174fb4 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x2174fdc calls _XFlush with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?, a5=[[[[0x1028]:8+280]:8+312]:8+176]:8.
  The `beq` branch at 0x2174edc targets 0x2174fbc, is taken when s0(=[[[0x1028]:8+280]:8+312]:8) == 0, and falls through when s0(=[[[0x1028]:8+280]:8+312]:8) != 0.
  The `beq` branch at 0x2174ef8 targets 0x2174f0c, is taken when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0, and falls through when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `bne` branch at 0x2174f1c targets 0x2174fd8, is taken when t8(=[[[[0x1028]:8+280]:8+312]:8+184]:8) < t9(=[[[[0x1028]:8+280]:8+312]:8+176]:8+12) (unsigned), and falls through when t8(=[[[[0x1028]:8+280]:8+312]:8+184]:8) >= t9(=[[[[0x1028]:8+280]:8+312]:8+176]:8+12) (unsigned).
  The `beq` branch at 0x2174f94 targets 0x2174fa8, is taken when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0, and falls through when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `beq` branch at 0x2174fac targets 0x2174fbc, is taken when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) == 0, and falls through when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) != 0.
  The `beq` branch at 0x2174fe4 targets 0x2174f20 and is always taken.
  The return at 0x2174fd0 has v0 = one of ?, ret(?).
- `__glx_IsTexture` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2174fec (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x2174fec-0x217513c (336 bytes).
  It occupies 336 bytes.
  The `ld` at 0x2174ff4 loads 8 bytes from abs 0x1028.
  The `ld` at 0x2174ff8 loads 8 bytes from [0x1028]:8 +0x118.
  The `ld` at 0x2175000 loads 8 bytes from [[0x1028]:8+280]:8 +0x138.
  The `ld` at 0x2175034 loads 8 bytes from [[0x1028]:8+280]:8 +0x8.
  2 such `ld` accesses load 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0x968, including `ld` at 0x2175038, `ld` at 0x21750c8.
  The `ld` at 0x2175044 loads 8 bytes from [[[[0x1028]:8+280]:8+312]:8+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xb0, including `ld` at 0x2175050, `ld` at 0x2175080, `ld` at 0x2175138.
  The `ld` at 0x2175054 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xb8.
  The `sd` at 0x217506c stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0xa0.
  The `sh` at 0x2175074 stores 2 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x0, including `sb` at 0x2175078, `sb` at 0x21750a4.
  The `ld` at 0x217507c loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0x98.
  The `sd` at 0x2175088 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0x98.
  The `sd` at 0x2175090 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0xb0.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x2175094, `lw` at 0x21750ac.
  The `sb` at 0x217509c stores 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x1.
  The `sw` at 0x21750b8 stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x8.
  The `sw` at 0x21750c4 stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x4.
  The `ld` at 0x21750d8 loads 8 bytes from [[[[0x1028]:8+280]:8+312]:8+2408]:8 +0x8.
  The `ld` at 0x21750e4 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xd0.
  The `jalr` at 0x2175030 calls __glXFlushRenderBuffer with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2175048 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=[[[[0x1028]:8+280]:8+312]:8+2408]:8.
  The `jalr` at 0x21750c0 calls _XReply with a0=[[[0x1028]:8+280]:8+312]:8, a1=sp-80, a2=0x0, a3=0x0, a5=a0 at entry (arg0), a7=[[[[0x1028]:8+280]:8+312]:8+152]:8+1.
  The `jalr` at 0x21750dc calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=[[[[0x1028]:8+280]:8+312]:8+2408]:8.
  The `jalr` at 0x21750f4 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x217512c calls _XFlush with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=[[[[0x1028]:8+280]:8+312]:8+176]:8+12.
  The `beq` branch at 0x2175018 targets 0x2175108, is taken when s0(=[[[0x1028]:8+280]:8+312]:8) == 0, and falls through when s0(=[[[0x1028]:8+280]:8+312]:8) != 0.
  The `beq` branch at 0x217503c targets 0x2175050, is taken when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0, and falls through when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `bne` branch at 0x2175060 targets 0x2175128, is taken when a2(=[[[[0x1028]:8+280]:8+312]:8+184]:8) < a3(=[[[[0x1028]:8+280]:8+312]:8+176]:8+12) (unsigned), and falls through when a2(=[[[[0x1028]:8+280]:8+312]:8+184]:8) >= a3(=[[[[0x1028]:8+280]:8+312]:8+176]:8+12) (unsigned).
  The `beq` branch at 0x21750d0 targets 0x21750e4, is taken when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0, and falls through when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `beq` branch at 0x21750ec targets 0x2175118, is taken when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) == 0, and falls through when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) != 0.
  The `beq` branch at 0x2175100 targets 0x2175118 and is always taken.
  The `beq` branch at 0x2175134 targets 0x2175064 and is always taken.
  The return at 0x2175110 has v0 = 0x0.
  The return at 0x2175120 has v0 = ?.
- `InitBuffers` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21abea0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x21abea0-0x21ac0a4 (516 bytes).
  It occupies 516 bytes.
  The `sd` at 0x21abeb8 stores 8 bytes to a0 (arg0 at entry) +0x9950.
  The `lbu` at 0x21abebc loads 1 byte from a0 (arg0 at entry) +0xde6.
  The `sd` at 0x21abecc stores 8 bytes to a0 (arg0 at entry) +0x4720.
  The `sd` at 0x21abed8 stores 8 bytes to a0 (arg0 at entry) +0x9958.
  3 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xde5, including `lbu` at 0x21abedc, `lbu` at 0x21abf60, `lbu` at 0x21ac028.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x4718, including `sd` at 0x21abee8, `sd` at 0x21ac02c.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x9958, including `ld` at 0x21abf08, `ld` at 0x21ac06c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xe30, including `lw` at 0x21abf0c, `lw` at 0x21ac04c, `lw` at 0x21ac074.
  The `ld` at 0x21abf64 loads 8 bytes from a0 (arg0 at entry) +0x9c00.
  The `lbu` at 0x21abf8c loads 1 byte from a0 (arg0 at entry) +0xde8.
  The `sw` at 0x21abf94 stores 4 bytes to a0 (arg0 at entry) +0x1458.
  The `sb` at 0x21abfa0 stores 1 byte to a0 (arg0 at entry) +0x1454.
  The `lbu` at 0x21abfc0 loads 1 byte from a0 (arg0 at entry) +0xde9.
  The `sw` at 0x21abfe4 stores 4 bytes to a0 (arg0 at entry) +0x9d5c.
  The `lbu` at 0x21abfe8 loads 1 byte from a0 (arg0 at entry) +0xdea.
  The `bgezall` at 0x21abef4 calls __glOdysseyInitCI [0x21a86b0] with a0=a0+39264, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a0+39264.
  The `bgezall` at 0x21abf04 calls __glOdysseyInitCI [0x21a86b0] with a0=[a0+39256]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `bgezall` at 0x21abf44 calls __glOdysseyInitCI [0x21a86b0] with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x21abf74 calls __glOdysseyInitRGB [0x220f2a0] with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x21abfb0 calls __glOdysseyInitAccum [0x2199f60] with a0=a0+40368, a1=a0 at entry (arg0), a2=0x1, a3=[a0+3560]:1, a4=-0x1.
  The `jalr` at 0x21abfd4 calls __glInitDepth [0x227db10] with a0=a0+40160, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x21abffc calls __glInitStencil8 [0x22b5940] with a0=a0+39944, a1=a0 at entry (arg0), a2=0x1ffff800, a3=?.
  The `jalr` at 0x21ac008 calls __glUpdateDepthRange [0x22e6060] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezall` at 0x21ac040 calls __glOdysseyInitCI [0x21a86b0] with a0=a0+39264, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a0+39264.
  The `jalr` at 0x21ac058 calls __glOdysseyInitRGB [0x220f2a0] with a0=a0+39264, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a0+39264.
  The `jalr` at 0x21ac068 calls __glOdysseyInitRGB [0x220f2a0] with a0=[a0+39256]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x21ac094 calls __glOdysseyInitRGB [0x220f2a0] with a0=a0+39264, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a0+39264.
  The `beq` branch at 0x21abec8 targets 0x21ac028, is taken when at(=[a0+3558]:1) == 0, and falls through when at(=[a0+3558]:1) != 0.
  The `beq` branch at 0x21abee4 targets 0x21ac050, is taken when t8(=[a0+3557]:1) == 0, and falls through when t8(=[a0+3557]:1) != 0.
  The `blez` branch at 0x21abf10 targets 0x21abf8c, is taken when a0(=[a0+3632]) <= 0 (signed), and falls through when a0(=[a0+3632]) > 0 (signed).
  The `beq` branch at 0x21abf34 targets 0x21abf60 and is always taken.
  The `beq` branch at 0x21abf50 targets 0x21abf84, is taken when s1(?) == s3(=((((([a0+3632] << 0x2) + [a0+3632]) << 0x2) + [a0+3632]) << 0x4)), and falls through when s1(?) != s3(=((((([a0+3632] << 0x2) + [a0+3632]) << 0x2) + [a0+3632]) << 0x4)).
  The `bne` branch at 0x21abf68 targets 0x21abf40, is taken when a1(=[a0+3557]:1) != 0, and falls through when a1(=[a0+3557]:1) == 0.
  The `beq` branch at 0x21abf7c targets 0x21abf50 and is always taken.
  The `beq` branch at 0x21abf9c targets 0x21abfc0, is taken when a3(=[a0+3560]:1) == 0, and falls through when a3(=[a0+3560]:1) != 0.
  The `beq` branch at 0x21abfb8 targets 0x21ac078, is taken when v0(=ret(__glOdysseyInitAccum)) == 0, and falls through when v0(=ret(__glOdysseyInitAccum)) != 0.
  The `beq` branch at 0x21abfc4 targets 0x21abfdc, is taken when a1(=[a0+3561]:1) == 0, and falls through when a1(=[a0+3561]:1) != 0.
  The `beq` branch at 0x21abfec targets 0x21ac004, is taken when a1(=[a0+3562]:1) == 0, and falls through when a1(=[a0+3562]:1) != 0.
  The `beq` branch at 0x21ac030 targets 0x21ac08c, is taken when a1(=[a0+3557]:1) == 0, and falls through when a1(=[a0+3557]:1) != 0.
  The `beq` branch at 0x21ac048 targets 0x21abf10 and is always taken.
  The `beq` branch at 0x21ac070 targets 0x21abf10 and is always taken.
  The `beq` branch at 0x21ac09c targets 0x21abf10 and is always taken.
  The return at 0x21ac020 has v0 = 0x1.
  The return at 0x21ac084 has v0 = 0x0.
  The instructions from 0x21abf3c to 0x21abf3c are not reached by any path from the entry, and their branches are not listed.
- `SphereGen` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22366f0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22366f0-0x22367ec (252 bytes).
  It occupies 252 bytes.
  The `ld` at 0x22366f8 loads 8 bytes from a0 (arg0 at entry) +0x4838.
  The `lwc1` at 0x2236734 loads 4 bytes from a1 (arg1 at entry) +0x2c.
  The `lwc1` at 0x223673c loads 4 bytes from a1 (arg1 at entry) +0x28.
  The `lwc1` at 0x2236740 loads 4 bytes from a1 (arg1 at entry) +0x30.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xf28, including `lwc1` at 0x2236798, `lwc1` at 0x22367ac, `lwc1` at 0x22367d4.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0x22367a8, `swc1` at 0x22367d0.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0x22367c0, `swc1` at 0x22367dc.
  The `jalr` at 0x2236718 calls (unknown callee) with a0=sp-48, a1=a1+104, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x223672c calls Dot [0x22366c0] with a0=a1+40, a1=sp-48, a2=?, a3=?.
  The `bc1t` branch at 0x2236794 targets 0x22367d0, is taken when f6 == f0(=ret(Dot)) (c.eq.s at 0x2236788), and falls through when not (f6 == f0(=ret(Dot)) (c.eq.s at 0x2236788)).
  The return at 0x22367c8 has v0 = ret(Dot).
  The return at 0x22367e4 has v0 = ret(Dot).
- `__glce_AreTexturesResident` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x23142f0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x23142f0-0x2314340 (80 bytes).
  It occupies 80 bytes.
  The `ld` at 0x23142f8 loads 8 bytes from abs 0x1a58.
  The `ld` at 0x2314300 loads 8 bytes from abs 0x1020.
  The `ld` at 0x2314318 loads 8 bytes from [0x1020]:8 +0x4220.
  2 such `sd` accesses store 8 bytes to abs 0x1a58, including `sd` at 0x2314320, `sd` at 0x2314330.
  The `jalr` at 0x231431c calls glAreTexturesResident with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2314338 has v0 = ?.
- `__glce_DeleteTextures` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2314340 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2314340-0x231438c (76 bytes).
  It occupies 76 bytes.
  The `ld` at 0x2314348 loads 8 bytes from abs 0x1a60.
  The `ld` at 0x2314350 loads 8 bytes from abs 0x1020.
  The `ld` at 0x2314368 loads 8 bytes from [0x1020]:8 +0x4228.
  2 such `sd` accesses store 8 bytes to abs 0x1a60, including `sd` at 0x2314370, `sd` at 0x231437c.
  The `jalr` at 0x231436c calls glDeleteTextures with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2314384 has v0 = ret(glDeleteTextures).
- `__glce_GenTextures` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2314390 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2314390-0x23143dc (76 bytes).
  It occupies 76 bytes.
  The `ld` at 0x2314398 loads 8 bytes from abs 0x1a68.
  The `ld` at 0x23143a0 loads 8 bytes from abs 0x1020.
  The `ld` at 0x23143b8 loads 8 bytes from [0x1020]:8 +0x4230.
  2 such `sd` accesses store 8 bytes to abs 0x1a68, including `sd` at 0x23143c0, `sd` at 0x23143cc.
  The `jalr` at 0x23143bc calls glGenTextures with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x23143d4 has v0 = ret(glGenTextures).
- `__glce_IsTexture` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x23143e0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x23143e0-0x2314430 (80 bytes).
  It occupies 80 bytes.
  The `ld` at 0x23143e8 loads 8 bytes from abs 0x1a70.
  The `ld` at 0x23143f0 loads 8 bytes from abs 0x1020.
  The `ld` at 0x2314408 loads 8 bytes from [0x1020]:8 +0x4238.
  2 such `sd` accesses store 8 bytes to abs 0x1a70, including `sd` at 0x2314410, `sd` at 0x2314420.
  The `jalr` at 0x231440c calls glIsTexture with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2314428 has v0 = ?.
- `glBindTexture` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318da0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318da0-0x2318dac (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318da0 loads 8 bytes from abs 0x1710.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318da4).
- `glBindTextureEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318da0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318da0-0x2318dac (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318da0 loads 8 bytes from abs 0x1710.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318da4).
- `glPrioritizeTextures` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318dd0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318dd0-0x2318ddc (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318dd0 loads 8 bytes from abs 0x1730.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318dd4).
- `glPrioritizeTexturesEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318dd0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318dd0-0x2318ddc (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318dd0 loads 8 bytes from abs 0x1730.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318dd4).
- `glAreTexturesResident` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4999d4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb4999d4-0xb4999e0 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb4999d4 loads 8 bytes from abs 0x1708.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb4999d8).
- `glAreTexturesResidentEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4999d4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb4999d4-0xb4999e0 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb4999d4 loads 8 bytes from abs 0x1708.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb4999d8).
- `glBindTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4999e0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb4999e0-0xb4999ec (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb4999e0 loads 8 bytes from abs 0x1710.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb4999e4).
- `glBindTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4999e0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb4999e0-0xb4999ec (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb4999e0 loads 8 bytes from abs 0x1710.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb4999e4).
- `glDeleteTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4999ec (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb4999ec-0xb4999f8 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb4999ec loads 8 bytes from abs 0x1718.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb4999f0).
- `glDeleteTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4999ec (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb4999ec-0xb4999f8 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb4999ec loads 8 bytes from abs 0x1718.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb4999f0).
- `glGenTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4999f8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb4999f8-0xb499a04 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb4999f8 loads 8 bytes from abs 0x1720.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb4999fc).
- `glGenTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4999f8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb4999f8-0xb499a04 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb4999f8 loads 8 bytes from abs 0x1720.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb4999fc).
- `glIsTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499a04 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb499a04-0xb499a10 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb499a04 loads 8 bytes from abs 0x1728.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb499a08).
- `glIsTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499a04 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb499a04-0xb499a10 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb499a04 loads 8 bytes from abs 0x1728.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb499a08).
- `glPrioritizeTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499a10 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb499a10-0xb499a1c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb499a10 loads 8 bytes from abs 0x1730.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb499a14).
- `glPrioritizeTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499a10 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb499a10-0xb499a1c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb499a10 loads 8 bytes from abs 0x1730.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb499a14).
- `glAreTexturesResident` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bc4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bc4-0xdba6bd0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6bc4 loads 4 bytes from abs 0x138c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bc8).
- `glAreTexturesResidentEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bc4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bc4-0xdba6bd0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6bc4 loads 4 bytes from abs 0x138c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bc8).
- `glBindTexture` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bd0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bd0-0xdba6bdc (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6bd0 loads 4 bytes from abs 0x1390.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bd4).
- `glBindTextureEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bd0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bd0-0xdba6bdc (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6bd0 loads 4 bytes from abs 0x1390.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bd4).
- `glDeleteTextures` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bdc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bdc-0xdba6be8 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6bdc loads 4 bytes from abs 0x1394.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6be0).
- `glDeleteTexturesEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bdc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bdc-0xdba6be8 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6bdc loads 4 bytes from abs 0x1394.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6be0).
- `glGenTextures` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6be8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6be8-0xdba6bf4 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6be8 loads 4 bytes from abs 0x1398.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bec).
- `glGenTexturesEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6be8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6be8-0xdba6bf4 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6be8 loads 4 bytes from abs 0x1398.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bec).
- `glIsTexture` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bf4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bf4-0xdba6c00 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6bf4 loads 4 bytes from abs 0x139c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bf8).
- `glIsTextureEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bf4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bf4-0xdba6c00 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6bf4 loads 4 bytes from abs 0x139c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bf8).
- `glPrioritizeTextures` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6c00 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6c00-0xdba6c0c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6c00 loads 4 bytes from abs 0x13a0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6c04).
- `glPrioritizeTexturesEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6c00 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6c00-0xdba6c0c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6c00 loads 4 bytes from abs 0x13a0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6c04).
- `glAreTexturesResident` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad364 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad364-0xdbad370 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad364 loads 4 bytes from abs 0x138c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad368).
- `glAreTexturesResidentEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad364 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad364-0xdbad370 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad364 loads 4 bytes from abs 0x138c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad368).
- `glBindTexture` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad370 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad370-0xdbad37c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad370 loads 4 bytes from abs 0x1390.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad374).
- `glBindTextureEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad370 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad370-0xdbad37c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad370 loads 4 bytes from abs 0x1390.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad374).
- `glDeleteTextures` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad37c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad37c-0xdbad388 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad37c loads 4 bytes from abs 0x1394.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad380).
- `glDeleteTexturesEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad37c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad37c-0xdbad388 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad37c loads 4 bytes from abs 0x1394.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad380).
- `glGenTextures` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad388 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad388-0xdbad394 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad388 loads 4 bytes from abs 0x1398.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad38c).
- `glGenTexturesEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad388 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad388-0xdbad394 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad388 loads 4 bytes from abs 0x1398.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad38c).
- `glIsTexture` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad394 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad394-0xdbad3a0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad394 loads 4 bytes from abs 0x139c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad398).
- `glIsTextureEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad394 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad394-0xdbad3a0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad394 loads 4 bytes from abs 0x139c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad398).
- `glPrioritizeTextures` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad3a0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad3a0-0xdbad3ac (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad3a0 loads 4 bytes from abs 0x13a0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad3a4).
- `glPrioritizeTexturesEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad3a0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad3a0-0xdbad3ac (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad3a0 loads 4 bytes from abs 0x13a0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad3a4).
- `InitBuffers` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbd5b6b0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbd5b6b0-0xbd5b8b4 (516 bytes).
  It occupies 516 bytes.
  The `sd` at 0xbd5b6c8 stores 8 bytes to a0 (arg0 at entry) +0x9a28.
  The `lbu` at 0xbd5b6cc loads 1 byte from a0 (arg0 at entry) +0xdee.
  The `sd` at 0xbd5b6e4 stores 8 bytes to a0 (arg0 at entry) +0x4578.
  The `sd` at 0xbd5b6e8 stores 8 bytes to a0 (arg0 at entry) +0x9a30.
  3 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xded, including `lbu` at 0xbd5b6ec, `lbu` at 0xbd5b770, `lbu` at 0xbd5b838.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x4570, including `sd` at 0xbd5b6f8, `sd` at 0xbd5b844.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x9a30, including `ld` at 0xbd5b718, `ld` at 0xbd5b87c.
  The `lw` at 0xbd5b720 loads 4 bytes from a0 (arg0 at entry) +0xe38.
  The `ld` at 0xbd5b774 loads 8 bytes from a0 (arg0 at entry) +0x9cd8.
  The `lbu` at 0xbd5b79c loads 1 byte from a0 (arg0 at entry) +0xdf0.
  The `sw` at 0xbd5b7a4 stores 4 bytes to a0 (arg0 at entry) +0x1460.
  The `sb` at 0xbd5b7b0 stores 1 byte to a0 (arg0 at entry) +0x145c.
  The `lbu` at 0xbd5b7d0 loads 1 byte from a0 (arg0 at entry) +0xdf1.
  The `sw` at 0xbd5b7f4 stores 4 bytes to a0 (arg0 at entry) +0x9e34.
  The `lbu` at 0xbd5b7f8 loads 1 byte from a0 (arg0 at entry) +0xdf2.
  The `bgezall` at 0xbd5b704 calls __glOdysseyInitCI [0xbd58440] with a0=a0+39480, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a0+39480.
  The `bgezall` at 0xbd5b714 calls __glOdysseyInitCI [0xbd58440] with a0=[a0+39472]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `bgezall` at 0xbd5b754 calls __glOdysseyInitCI [0xbd58440] with a0=?, a1=a0 at entry (arg0), a2=[a0+3565]:1, a3=?.
  The `jalr` at 0xbd5b784 calls __glOdysseyInitRGB [0xbdb3720] with a0=?, a1=a0 at entry (arg0), a2=[a0+3565]:1, a3=?.
  The `jalr` at 0xbd5b7c0 calls __glOdysseyInitAccum [0xbd4ad90] with a0=a0+40584, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xbd5b7e4 calls __glInitDepth [0xbe1c0a0] with a0=a0+40376, a1=a0 at entry (arg0), a2=[a0+3569]:1, a3=?.
  The `jalr` at 0xbd5b80c calls __glInitStencil8 [0xbe54f40] with a0=a0+40160, a1=a0 at entry (arg0), a2=[a0+3570]:1, a3=?.
  The `jalr` at 0xbd5b818 calls __glUpdateDepthRange [0xbe86170] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezall` at 0xbd5b850 calls __glOdysseyInitCI [0xbd58440] with a0=a0+39480, a1=a0 at entry (arg0), a2=[a0+3565]:1, a3=a0+39480.
  The `jalr` at 0xbd5b868 calls __glOdysseyInitRGB [0xbdb3720] with a0=a0+39480, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a0+39480.
  The `jalr` at 0xbd5b878 calls __glOdysseyInitRGB [0xbdb3720] with a0=[a0+39472]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xbd5b8a4 calls __glOdysseyInitRGB [0xbdb3720] with a0=a0+39480, a1=a0 at entry (arg0), a2=[a0+3565]:1, a3=a0+39480.
  The `beq` branch at 0xbd5b6e0 targets 0xbd5b838, is taken when at(=[a0+3566]:1) == 0, and falls through when at(=[a0+3566]:1) != 0.
  The `beq` branch at 0xbd5b6f4 targets 0xbd5b860, is taken when at(=[a0+3565]:1) == 0, and falls through when at(=[a0+3565]:1) != 0.
  The `blez` branch at 0xbd5b724 targets 0xbd5b79c, is taken when a0(=[a0+3640]) <= 0 (signed), and falls through when a0(=[a0+3640]) > 0 (signed).
  The `beq` branch at 0xbd5b748 targets 0xbd5b770 and is always taken.
  The `beq` branch at 0xbd5b760 targets 0xbd5b794, is taken when s2(?) == s4(=((((([a0+3640] << 0x2) + [a0+3640]) << 0x2) + [a0+3640]) << 0x4)), and falls through when s2(?) != s4(=((((([a0+3640] << 0x2) + [a0+3640]) << 0x2) + [a0+3640]) << 0x4)).
  The `bne` branch at 0xbd5b778 targets 0xbd5b750, is taken when a2(=[a0+3565]:1) != 0, and falls through when a2(=[a0+3565]:1) == 0.
  The `beq` branch at 0xbd5b78c targets 0xbd5b760 and is always taken.
  The `beq` branch at 0xbd5b7ac targets 0xbd5b7d0, is taken when v0(=[a0+3568]:1) == 0, and falls through when v0(=[a0+3568]:1) != 0.
  The `beq` branch at 0xbd5b7c8 targets 0xbd5b888, is taken when v0(=ret(__glOdysseyInitAccum)) == 0, and falls through when v0(=ret(__glOdysseyInitAccum)) != 0.
  The `beq` branch at 0xbd5b7d4 targets 0xbd5b7ec, is taken when a2(=[a0+3569]:1) == 0, and falls through when a2(=[a0+3569]:1) != 0.
  The `beq` branch at 0xbd5b7fc targets 0xbd5b814, is taken when a2(=[a0+3570]:1) == 0, and falls through when a2(=[a0+3570]:1) != 0.
  The `beq` branch at 0xbd5b840 targets 0xbd5b89c, is taken when a2(=[a0+3565]:1) == 0, and falls through when a2(=[a0+3565]:1) != 0.
  The `beq` branch at 0xbd5b858 targets 0xbd5b720 and is always taken.
  The `beq` branch at 0xbd5b880 targets 0xbd5b720 and is always taken.
  The `beq` branch at 0xbd5b8ac targets 0xbd5b720 and is always taken.
  The return at 0xbd5b830 has v0 = 0x1.
  The return at 0xbd5b894 has v0 = 0x0.
- `SphereGen` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbdd70b0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbdd70b0-0xbdd719c (236 bytes).
  It occupies 236 bytes.
  The `ld` at 0xbdd70bc loads 8 bytes from a0 (arg0 at entry) +0x4690.
  The `lwc1` at 0xbdd70f4 loads 4 bytes from a1 (arg1 at entry) +0x34.
  The `lwc1` at 0xbdd70fc loads 4 bytes from a1 (arg1 at entry) +0x30.
  The `lwc1` at 0xbdd7100 loads 4 bytes from a1 (arg1 at entry) +0x2c.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xf30, including `lwc1` at 0xbdd714c, `lwc1` at 0xbdd716c, `lwc1` at 0xbdd7184.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xbdd7168, `swc1` at 0xbdd7180.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xbdd7178, `swc1` at 0xbdd7188.
  The `jalr` at 0xbdd70d8 calls (unknown callee) with a0=sp-80, a1=a1+108, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xbdd70ec calls Dot [0xbdd7080] with a0=a1+44, a1=sp-80, a2=?, a3=?.
  The `bc1t` branch at 0xbdd7154 targets 0xbdd717c, is taken when f6 == f0(=0x0) (c.eq.s at 0xbdd7148), and falls through when not (f6 == f0(=0x0) (c.eq.s at 0xbdd7148)).
  The `beq` branch at 0xbdd7174 targets 0xbdd718c and is always taken.
  The return at 0xbdd7194 has v0 = ret(Dot).
- `glAreTexturesResident` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb99d4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb99d4-0xbeb99e0 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb99d4 loads 8 bytes from abs 0x1708.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb99d8).
- `glAreTexturesResidentEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb99d4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb99d4-0xbeb99e0 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb99d4 loads 8 bytes from abs 0x1708.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb99d8).
- `glBindTexture` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb99e0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb99e0-0xbeb99ec (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb99e0 loads 8 bytes from abs 0x1710.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb99e4).
- `glBindTextureEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb99e0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb99e0-0xbeb99ec (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb99e0 loads 8 bytes from abs 0x1710.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb99e4).
- `glDeleteTextures` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb99ec (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb99ec-0xbeb99f8 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb99ec loads 8 bytes from abs 0x1718.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb99f0).
- `glDeleteTexturesEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb99ec (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb99ec-0xbeb99f8 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb99ec loads 8 bytes from abs 0x1718.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb99f0).
- `glGenTextures` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb99f8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb99f8-0xbeb9a04 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb99f8 loads 8 bytes from abs 0x1720.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb99fc).
- `glGenTexturesEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb99f8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb99f8-0xbeb9a04 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb99f8 loads 8 bytes from abs 0x1720.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb99fc).
- `glIsTexture` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb9a04 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb9a04-0xbeb9a10 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb9a04 loads 8 bytes from abs 0x1728.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb9a08).
- `glIsTextureEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb9a04 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb9a04-0xbeb9a10 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb9a04 loads 8 bytes from abs 0x1728.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb9a08).
- `glPrioritizeTextures` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb9a10 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb9a10-0xbeb9a1c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb9a10 loads 8 bytes from abs 0x1730.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb9a14).
- `glPrioritizeTexturesEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb9a10 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb9a10-0xbeb9a1c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb9a10 loads 8 bytes from abs 0x1730.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb9a14).
- `doFinishRegionDragCallback__21GammaMapEditorClassUISGP10_WidgetRecP7_XEventPPcPUi` in `usr/bin/X11/xsetmon` at 0x100225d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100225d0-0x10022640 (112 bytes).
  It occupies 112 bytes.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10022610, `lw` at 0x10022614, `lw` at 0x10022618.
  The `jalr` at 0x10022604 calls XtVaGetValues with a0=a0 at entry (arg0), a1=-0xa, a2=sp-48, a3=0x0.
  The `jalr` at 0x10022624 calls (unknown callee) with a0=?, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=?.
  The return at 0x10022638 has v0 = ret(?).
- `saveSettingsFileCallback__18XSetmonWindowClassSGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10024460 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10024460-0x100244a4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10024464 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10024470 loads 4 bytes from [a1+8] +0x1b0.
  The `lw` at 0x1002447c loads 4 bytes from [a1+8] +0x1b8.
  The `jalr` at 0x1002448c calls (unknown callee) with a0=([[a1+8]+432] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x3449c.
  The return at 0x1002449c has v0 = ret(?).
- `doDragRegion__21GammaMapEditorClassUIGP10_WidgetRecP7_XEvent` in `usr/bin/X11/xsetmon` at 0x10024720 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10024720-0x10024728 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10024720 has v0 = ?.
- `doArmRegionDragCallback__21GammaMapEditorClassUISGP10_WidgetRecP7_XEventPPcPUi` in `usr/bin/X11/xsetmon` at 0x10024f00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10024f00-0x10024f70 (112 bytes).
  It occupies 112 bytes.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10024f40, `lw` at 0x10024f44, `lw` at 0x10024f48.
  The `jalr` at 0x10024f34 calls XtVaGetValues with a0=a0 at entry (arg0), a1=-0xa, a2=sp-48, a3=0x0.
  The `jalr` at 0x10024f54 calls (unknown callee) with a0=?, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=?.
  The return at 0x10024f68 has v0 = ret(?).
- `saveSettingsFile__18XSetmonWindowClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10024f80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10024f80-0x1002504c (204 bytes).
  It occupies 204 bytes.
  The `lw` at 0x10024fa4 loads 4 bytes from ret(getTheFileSelectionDialog__Gv) +0x8.
  The `lw` at 0x10024fb4 loads 4 bytes from [ret(getTheFileSelectionDialog__Gv)+8] +0x110.
  The `lw` at 0x10024fc0 loads 4 bytes from [ret(getTheFileSelectionDialog__Gv)+8] +0x108.
  3 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x10024fe4, `lw` at 0x10025020, `lw` at 0x1002502c.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x88, including `lw` at 0x10024fe8, `lw` at 0x10025038.
  The `lw` at 0x10025014 loads 4 bytes from ret(getTheFileSelectionDialog__Gv) +0x54.
  The `sw` at 0x10025028 stores 4 bytes to [sym(xsetmonApp)] +0x88.
  The `lw` at 0x10025030 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `jalr` at 0x10024f9c calls getTheFileSelectionDialog__Gv with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10024fcc calls (unknown callee) with a0=([[ret(getTheFileSelectionDialog__Gv)+8]+264] + ret(getTheFileSelectionDialog__Gv)), a1=0x0, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x10024ff8 calls free with a0=[[sym(xsetmonApp)]+136], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x10025004 calls getTheFileSelectionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10025010 calls strdup with a0=[ret(getTheFileSelectionDialog__Gv)+84], a1=?, a2=?, a3=?.
  The `jal` at 0x10025034 calls saveData__21MasterTabbedDeckClassGPCc [0x1002c050] with a0=[a0+68], a1=[[sym(xsetmonApp)]+136], a2=[sym(xsetmonApp)], a3=?.
  The `bne` branch at 0x10024fd8 targets 0x10025040, is taken when v0(=ret(?)) != a1(=0x1), and falls through when v0(=ret(?)) == a1(=0x1).
  The `beq` branch at 0x10024fec targets 0x10025004, is taken when a0(=[[sym(xsetmonApp)]+136]) == 0, and falls through when a0(=[[sym(xsetmonApp)]+136]) != 0.
  The return at 0x10025044 has v0 = one of ret(?), ret(saveData__21MasterTabbedDeckClassGPCc).
- `RegisterGammaAssignmentClassInterface__20GammaAssignmentClassSGv` in `usr/bin/X11/xsetmon` at 0x100258a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100258a0-0x100258b8 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x100258ac loads 4 bytes from abs 0x10050950.
  The return at 0x100258b0 has v0 = 0x1004d670.
- `unregisterChild__12MyTabbedDeckGP11VkComponentPCc` in `usr/bin/X11/xsetmon` at 0x10025b40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10025b40-0x10025bbc (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0x10025ba8 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `jalr` at 0x10025b68 calls baseWidget__11VkComponentCGv with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10025b8c calls VkGetResource__GP10_WidgetRecPCcN32 with a0=ret(baseWidget__11VkComponentCGv), a1=0x10049590, a2=0x100495a0, a3=-0x1a, a4=a2 at entry (arg2).
  The `jalr` at 0x10025ba4 calls removeTab__10VkTabPanelGPc with a0=[a0+36], a1=ret(VkGetResource__GP10_WidgetRecPCcN32), a2=?, a3=?.
  The return at 0x10025bb4 has v0 = ret(removeTab__10VkTabPanelGPc).
- `RegisterGammaMapEditorClassInterface__19GammaMapEditorClassSGv` in `usr/bin/X11/xsetmon` at 0x10026b00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10026b00-0x10026b18 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x10026b0c loads 4 bytes from abs 0x10050950.
  The return at 0x10026b10 has v0 = 0x1004dcd8.
- `doResetEditing__18XSetmonWindowClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10026e80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10026e80-0x10026eb4 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x10026ea0 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `jal` at 0x10026e9c calls resetEditing__21MasterTabbedDeckClassGv [0x100394b0] with a0=[a0+68], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10026eac has v0 = ret(resetEditing__21MasterTabbedDeckClassGv).
- `__ct__18XSetmonWindowClassGPCcP3ArgUi` in `usr/bin/X11/xsetmon` at 0x10027170 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10027170-0x10027490 (800 bytes).
  It occupies 800 bytes.
  The `sw` at 0x100271a4 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `lw` at 0x100271ec loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x100271f0 loads 4 bytes from [a0+8] +0xec.
  The `lw` at 0x100271f4 loads 4 bytes from [a0+8] +0xe4.
  The `sw` at 0x10027230 stores 4 bytes to a0 (arg0 at entry) +0x44.
  The `lw` at 0x10027234 loads 4 bytes from sym(xsetmonApp) +0x0.
  The `lw` at 0x10027238 loads 4 bytes from [sym(xsetmonApp)] +0x9c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x10027274, `lw` at 0x100272a8.
  The `sw` at 0x100272c8 stores 4 bytes to a0 (arg0 at entry) +0x48.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x100272d8, `lw` at 0x10027304, `lw` at 0x10027330.
  The `sw` at 0x100272e8 stores 4 bytes to a0 (arg0 at entry) +0x4c.
  The `sw` at 0x10027314 stores 4 bytes to a0 (arg0 at entry) +0x50.
  The `sw` at 0x10027340 stores 4 bytes to a0 (arg0 at entry) +0x54.
  The `sw` at 0x10027368 stores 4 bytes to a0 (arg0 at entry) +0x5c.
  The `sw` at 0x10027388 stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `sw` at 0x100273b4 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0x100273d0 stores 4 bytes to a0 (arg0 at entry) +0x64.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x64, including `lw` at 0x100273e8, `lw` at 0x1002740c.
  The `sw` at 0x10027418 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  2 such `lw` accesses load 4 bytes from sym(theApplication) +0x0, including `lw` at 0x10027458, `lw` at 0x10027478.
  2 such `sw` accesses store 4 bytes to [sym(theApplication)] +0x50, including `sw` at 0x10027460, `sw` at 0x10027480.
  The `jalr` at 0x10027190 calls __ct__8VkWindowGPCcP3ArgUi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100271a8 calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x100271bc calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=ret(baseWidget__11VkComponentCGv), a2=sym(_defaultXSetmonWindowClassResources__18XSetmonWindowClass), a3=?.
  The `jalr` at 0x100271cc calls __nw__GUi with a0=0x44, a1=?, a2=?, a3=?.
  The `jalr` at 0x100271f8 calls (unknown callee) with a0=([[a0+8]+228] + a0), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x10027210 calls __ct__21MasterTabbedDeckClassGPCcP10_WidgetRec [0x1002e390] with a0=?, a1=0x10048818, a2=ret(?), a3=?.
  The `jalr` at 0x10027254 calls strncmp with a0=[sym(xsetmonApp)]+164, a1=0x100518f0, a2=0x4, a3=?.
  The `jalr` at 0x10027270 calls baseWidget__11VkComponentCGv with a0=[a0+68], a1=?, a2=?, a3=?.
  The `jalr` at 0x10027290 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x17, a2=one of 0x2f8, 0x474, a3=-0x16, a4=0x2bc, a5=0x0.
  The `jalr` at 0x100272a4 calls addView__14VkSimpleWindowGP11VkComponent with a0=a0 at entry (arg0), a1=[a0+68], a2=?, a3=?.
  The `jalr` at 0x100272b8 calls addMenuPane__8VkWindowGPCc with a0=a0 at entry (arg0), a1=0x10048830, a2=?, a3=?.
  The `jalr` at 0x100272d4 calls addSeparator__6VkMenuGi with a0=[a0+72], a1=-0x1, a2=?, a3=?.
  The `jalr` at 0x10027300 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x10048840, a2=sym(loadSettingsFileCallback__18XSetmonWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1002732c calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x10048858, a2=sym(saveSettingsFileCallback__18XSetmonWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10027358 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x10048870, a2=sym(closeCallback__18XSetmonWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10027374 calls addSeparator__6VkMenuGi with a0=[a0+72], a1=-0x1, a2=?, a3=?.
  The `jalr` at 0x100273a0 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x10048880, a2=sym(quitCallback__18XSetmonWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x100273bc calls addMenuPane__8VkWindowGPCc with a0=a0 at entry (arg0), a1=0x10048890, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x100273cc calls getTheUndoManager__Gv with a0=?, a1=?, a2=?, a3=a0 at entry (arg0).
  The `jalr` at 0x100273e4 calls add__6VkMenuGP10VkMenuItemi with a0=[a0+100], a1=ret(getTheUndoManager__Gv), a2=-0x1, a3=?.
  The `jalr` at 0x10027408 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+100], a1=0x100488a0, a2=sym(doResetEditingCallback__18XSetmonWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10027420 calls __nw__GUi with a0=0x58, a1=?, a2=a0 at entry (arg0), a3=?.
  The `jal` at 0x10027444 calls __ct__16AboutDialogClassGPCc [0x1002e170] with a0=ret(__nw__GUi), a1=0x100488b0, a2=?, a3=0x1.
  The `beq` branch at 0x100271d8 targets 0x10027228, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10027220 targets 0x1002722c and is always taken.
  The `bne` branch at 0x10027240 targets 0x10027264, is taken when (a2(=[[sym(xsetmonApp)]+156]) & 0x2) != 0, and falls through when (a2(=[[sym(xsetmonApp)]+156]) & 0x2) == 0.
  The `bne` branch at 0x1002725c targets 0x10027268, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The `beq` branch at 0x10027428 targets 0x10027470, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The return at 0x10027468 has v0 = a0.
  The return at 0x10027488 has v0 = a0.
- `okToQuit__18XSetmonWindowClassGv` in `usr/bin/X11/xsetmon` at 0x10027690 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10027690-0x100276d0 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x10027690 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x1002769c loads 4 bytes from [a0+68] +0x8.
  The `lw` at 0x100276ac loads 4 bytes from [[a0+68]+8] +0x50.
  The `lw` at 0x100276b0 loads 4 bytes from [[a0+68]+8] +0x48.
  The `jalr` at 0x100276b8 calls (unknown callee) with a0=([[[a0+68]+8]+72] + [a0+68]), a1=[a0+68], a2=0x3126c, a3=a3 at entry (arg3).
  The return at 0x100276c8 has v0 = ret(?).
- `RegisterServerInfoFormClassInterface__19ServerInfoFormClassSGv` in `usr/bin/X11/xsetmon` at 0x10027c50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10027c50-0x10027c68 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x10027c5c loads 4 bytes from abs 0x10050950.
  The return at 0x10027c60 has v0 = 0x1004e168.
- `RegisterAboutXsetmonFormClassInterface__21AboutXsetmonFormClassSGv` in `usr/bin/X11/xsetmon` at 0x10028fd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10028fd0-0x10028fe8 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x10028fdc loads 4 bytes from abs 0x10050950.
  The return at 0x10028fe0 has v0 = 0x1004c620.
- `className__18XSetmonWindowClassGv` in `usr/bin/X11/xsetmon` at 0x10029660 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10029660-0x10029678 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x1002966c loads 4 bytes from abs 0x10050920.
  The return at 0x10029670 has v0 = 0x100488c0.
- `closeCallback__18XSetmonWindowClassSGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x1002a7b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002a7b0-0x1002a7f4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1002a7b4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1002a7c0 loads 4 bytes from [a1+8] +0x180.
  The `lw` at 0x1002a7cc loads 4 bytes from [a1+8] +0x188.
  The `jalr` at 0x1002a7dc calls (unknown callee) with a0=([[a1+8]+384] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x2e14c.
  The return at 0x1002a7ec has v0 = ret(?).
- `close__18XSetmonWindowClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x1002b080 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002b080-0x1002b124 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0x1002b0a4 loads 4 bytes from ret(getTheTargetPromptDialog__Gv) +0x8.
  The `lw` at 0x1002b0b4 loads 4 bytes from [ret(getTheTargetPromptDialog__Gv)+8] +0x110.
  The `lw` at 0x1002b0c0 loads 4 bytes from [ret(getTheTargetPromptDialog__Gv)+8] +0x108.
  The `lw` at 0x1002b0ec loads 4 bytes from ret(getTheTargetPromptDialog__Gv) +0x54.
  The `lw` at 0x1002b104 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `jal` at 0x1002b09c calls getTheTargetPromptDialog__Gv [0x1003df60] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1002b0cc calls (unknown callee) with a0=([[ret(getTheTargetPromptDialog__Gv)+8]+264] + ret(getTheTargetPromptDialog__Gv)), a1=0x0, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jal` at 0x1002b0dc calls getTheTargetPromptDialog__Gv [0x1003df60] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002b0e8 calls XmTextFieldGetString with a0=[ret(getTheTargetPromptDialog__Gv)+84], a1=?, a2=?, a3=?.
  The `jal` at 0x1002b100 calls changeTargetDisplay__21MasterTabbedDeckClassGPc [0x10031540] with a0=[a0+68], a1=ret(XmTextFieldGetString), a2=?, a3=?.
  The `jalr` at 0x1002b10c calls free with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1002b0d4 targets 0x1002b114, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The return at 0x1002b11c has v0 = one of ret(?), ret(free).
- `__dt__18XSetmonWindowClassGv` in `usr/bin/X11/xsetmon` at 0x1002b7b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002b7b0-0x1002b840 (144 bytes).
  It occupies 144 bytes.
  The `sw` at 0x1002b7d8 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `lw` at 0x1002b7e0 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x1002b7ec loads 4 bytes from [a0+68] +0x8.
  The `lw` at 0x1002b7f0 loads 4 bytes from [[a0+68]+8] +0x14.
  The `lw` at 0x1002b7f4 loads 4 bytes from [[a0+68]+8] +0xc.
  The `jalr` at 0x1002b7fc calls (unknown callee) with a0=([[[a0+68]+8]+12] + [a0+68]), a1=0x3, a2=a2 at entry (arg2), a3=[a0+68].
  The `jalr` at 0x1002b80c calls __dt__8VkWindowGv with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1002b828 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1002b7c8 targets 0x1002b830, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x1002b7e4 targets 0x1002b80c, is taken when a3(=[a0+68]) == 0, and falls through when a3(=[a0+68]) != 0.
  The `beq` branch at 0x1002b81c targets 0x1002b834, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x1002b838 has v0 = one of ret(__dt__8VkWindowGv), ?.
- `doDragRegion__19GammaMapEditorClassGP10_WidgetRecP7_XEvent` in `usr/bin/X11/xsetmon` at 0x1002c2c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002c2c0-0x1002c610 (848 bytes).
  It occupies 848 bytes.
  The `lw` at 0x1002c2c0 loads 4 bytes from a0 (arg0 at entry) +0x6c.
  The `lh` at 0x1002c2e8 loads 2 bytes from a2 (arg2 at entry) +0x22.
  The `lw` at 0x1002c2f0 loads 4 bytes from a2 (arg2 at entry) +0x24.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0x1002c2f8, `lw` at 0x1002c384, `lw` at 0x1002c3f0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xac, including `lw` at 0x1002c30c, `lw` at 0x1002c388.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb4, including `lw` at 0x1002c324, `lw` at 0x1002c414, `lw` at 0x1002c430.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb0, including `lw` at 0x1002c32c, `lw` at 0x1002c3f4, `lw` at 0x1002c434.
  The `lwc1` at 0x1002c338 loads 4 bytes from ([a0+180] + ([a0+112] << 0x2)) -0x4.
  The `lwc1` at 0x1002c33c loads 4 bytes from ([a0+176] + ([a0+112] << 0x2)) -0x4.
  The `lhu` at 0x1002c3a0 loads 2 bytes from a0 (arg0 at entry) +0x96.
  The `lhu` at 0x1002c3bc loads 2 bytes from a0 (arg0 at entry) +0x94.
  The `swc1` at 0x1002c404 stores 4 bytes to ([a0+176] + ([a0+112] << 0x2)) +0x0.
  The `swc1` at 0x1002c428 stores 4 bytes to ([a0+180] + ([a0+112] << 0x2)) +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa8, including `lw` at 0x1002c42c, `lw` at 0x1002c460, `lw` at 0x1002c490.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xbc, including `lw` at 0x1002c438, `lw` at 0x1002c4a4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb8, including `lw` at 0x1002c444, `lw` at 0x1002c4b0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x54, including `lw` at 0x1002c448, `lw` at 0x1002c480.
  The `sh` at 0x1002c47c stores 2 bytes to ?.
  The `lw` at 0x1002c4b8 loads 4 bytes from a0 (arg0 at entry) +0x50.
  The `lw` at 0x1002c518 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  The `sw` at 0x1002c530 stores 4 bytes to a0 (arg0 at entry) +0x68.
  The `lwc1` at 0x1002c574 loads 4 bytes from ([a0+180] + ([a0+112] << 0x2)) +0x0.
  The `lwc1` at 0x1002c578 loads 4 bytes from ([a0+176] + ([a0+112] << 0x2)) +0x0.
  The `lwc1` at 0x1002c5c0 loads 4 bytes from ([a0+180] + ([a0+112] << 0x2)) +0x4.
  The `lwc1` at 0x1002c5c4 loads 4 bytes from ([a0+176] + ([a0+112] << 0x2)) +0x4.
  The `jal` at 0x1002c358 calls vGammaToWindow__19GammaMapEditorClassCGiT1P6XPoint [0x1003a020] with a0=a0 at entry (arg0), a1=?, a2=?, a3=sp-72, a5=[a0+112].
  The `jal` at 0x1002c3e0 calls vWindowToGamma__19GammaMapEditorClassCGPC6XPointRiT2 [0x10027000] with a0=a0 at entry (arg0), a1=sp-80, a2=sp-64, a3=sp-60.
  The `jal` at 0x1002c440 calls vSplineFit__19GammaMapEditorClassCGiT1PCfT3Pf [0x10037b40] with a0=a0 at entry (arg0), a1=[a0+184], a2=[a0+188], a3=[a0+176], a4=[a0+180], a5=[a0+168].
  The `jal` at 0x1002c4ac calls fSplineCalc__19GammaMapEditorClassCGiT1PfN23T1 [0x10033820] with a0=a0 at entry (arg0), a1=[a0+184], a2=[a0+188], a3=[a0+176], a4=[a0+180], a5=[a0+168].
  The `jal` at 0x1002c4ec calls vClearScreen__19GammaMapEditorClassCGv [0x1002de60] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1002c4f8 calls calculateDrawing__19GammaMapEditorClassGv [0x10026710] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1002c508 calls redraw__19GammaMapEditorClassCGi [0x1002ad90] with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jal` at 0x1002c51c calls vDrawControlPoint__19GammaMapEditorClassCGPC6XPointP4_XGC [0x10030f10] with a0=a0 at entry (arg0), a1=sp-80, a2=[a0+76], a3=?.
  The `jal` at 0x1002c594 calls vGammaToWindow__19GammaMapEditorClassCGiT1P6XPoint [0x1003a020] with a0=a0 at entry (arg0), a1=?, a2=?, a3=sp-76, a5=[a0+112].
  The `jal` at 0x1002c5e0 calls vGammaToWindow__19GammaMapEditorClassCGiT1P6XPoint [0x1003a020] with a0=a0 at entry (arg0), a1=?, a2=?, a3=sp-68, a4=([a0+176] + ([a0+112] << 0x2)), a5=([a0+112] << 0x2), a6=([a0+180] + ([a0+112] << 0x2)).
  The `beq` branch at 0x1002c2dc targets 0x1002c540, is taken when v0(=[a0+108]) == 0, and falls through when v0(=[a0+108]) != 0.
  The `beq` branch at 0x1002c304 targets 0x1002c560, is taken when a5(=[a0+112]) == 0, and falls through when a5(=[a0+112]) != 0.
  The `beq` branch at 0x1002c314 targets 0x1002c560, is taken when a5(=[a0+112]) == v1(=[a0+172]-1), and falls through when a5(=[a0+112]) != v1(=[a0+172]-1).
  The `beq` branch at 0x1002c31c targets 0x1002c388, is taken when a5(=[a0+112]) == 0, and falls through when a5(=[a0+112]) != 0.
  The `bne` branch at 0x1002c36c targets 0x1002c384, is taken when a2(?) < a0(?) (signed), and falls through when a2(?) >= a0(?) (signed).
  The `bne` branch at 0x1002c390 targets 0x1002c5ac, is taken when a5(=[a0+112]) != a1(=[a0+172]-1), and falls through when a5(=[a0+112]) == a1(=[a0+172]-1).
  The `bltz` branch at 0x1002c398 targets 0x1002c550, is taken when a2(?) < 0 (signed), and falls through when a2(?) >= 0 (signed).
  The `bne` branch at 0x1002c3a8 targets 0x1002c3b4, is taken when a2(?) < a3(=[a0+150]:2) (signed), and falls through when a2(?) >= a3(=[a0+150]:2) (signed).
  The `bltz` branch at 0x1002c3b4 targets 0x1002c558, is taken when a0(?) < 0 (signed), and falls through when a0(?) >= 0 (signed).
  The `bne` branch at 0x1002c3c4 targets 0x1002c3d0, is taken when a0(?) < a2(=[a0+148]:2) (signed), and falls through when a0(?) >= a2(=[a0+148]:2) (signed).
  The `blez` branch at 0x1002c454 targets 0x1002c4dc, is taken when ra(=[a0+84]) <= 0 (signed), and falls through when ra(=[a0+84]) > 0 (signed).
  The `beq` branch at 0x1002c45c targets 0x1002c494 and is always taken.
  The `beq` branch at 0x1002c470 targets 0x1002c47c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x1002c488 targets 0x1002c4dc, is taken when s1(?) >= v0(=[a0+84]) (signed), and falls through when s1(?) < v0(=[a0+84]) (signed).
  The `bgez` branch at 0x1002c4cc targets 0x1002c470, is taken when a0(?) >= 0 (signed), and falls through when a0(?) < 0 (signed).
  The `beq` branch at 0x1002c4d4 targets 0x1002c47c and is always taken.
  The `bgez` branch at 0x1002c550 targets 0x1002c3bc, is taken when a0(?) >= 0 (signed), and falls through when a0(?) < 0 (signed).
  The `beq` branch at 0x1002c558 targets 0x1002c3d0 and is always taken.
  The `beq` branch at 0x1002c5a4 targets 0x1002c31c and is always taken.
  The `bne` branch at 0x1002c5f4 targets 0x1002c394, is taken when a0(?) < a2(?) (signed), and falls through when a0(?) >= a2(?) (signed).
  The `beq` branch at 0x1002c608 targets 0x1002c394 and is always taken.
  The return at 0x1002c538 has v0 = ret(vDrawControlPoint__19GammaMapEditorClassCGPC6XPointP4_XGC).
  The return at 0x1002c548 has v0 = [a0+108].
  The instructions from 0x1002c464 to 0x1002c46c are not reached by any path from the entry, and their branches are not listed.
- `loadData__18XSetmonWindowClassGPCc` in `usr/bin/X11/xsetmon` at 0x1002dcb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002dcb0-0x1002ddd0 (288 bytes).
  It occupies 288 bytes.
  The `lbu` at 0x1002dcbc loads 1 byte from a1 (arg1 at entry) +0x0.
  The `lw` at 0x1002ddb8 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `jalr` at 0x1002dce8 calls getTheFileSelectionDialog__Gv with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1002dcf8 calls setSelection__21VkFileSelectionDialogGPCc with a0=ret(getTheFileSelectionDialog__Gv), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x1002dd14 calls getcwd with a0=0x0, a1=0x64, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1002dd28 calls strlen with a0=ret(getcwd), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002dd38 calls strlen with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002dd48 calls __nwa__GUi with a0=(ret(strlen) + ret(strlen))+10, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002dd64 calls sprintf with a0=ret(__nwa__GUi), a1=0x100518f8, a2=ret(getcwd), a3=a1 at entry (arg1).
  The `jalr` at 0x1002dd70 calls getTheFileSelectionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002dd80 calls setSelection__21VkFileSelectionDialogGPCc with a0=ret(getTheFileSelectionDialog__Gv), a1=ret(__nwa__GUi), a2=?, a3=?.
  The `jalr` at 0x1002dd8c calls free with a0=ret(getcwd), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002dd98 calls __dla__GPv with a0=ret(__nwa__GUi), a1=?, a2=?, a3=?.
  The `jal` at 0x1002ddb4 calls loadData__21MasterTabbedDeckClassGPCc [0x1002b910] with a0=[a0+68], a1=a1 at entry (arg1), a2=?, a3=?.
  The `bne` branch at 0x1002dcdc targets 0x1002dd08, is taken when at(=[a1]:1) != v0(=0x2f), and falls through when at(=[a1]:1) == v0(=0x2f).
  The `beq` branch at 0x1002dd00 targets 0x1002dda0 and is always taken.
  The return at 0x1002ddc8 has v0 = ret(loadData__21MasterTabbedDeckClassGPCc).
- `quitCallback__18XSetmonWindowClassSGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x1002e9f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002e9f0-0x1002ea34 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1002e9f4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1002ea00 loads 4 bytes from [a1+8] +0x1a4.
  The `lw` at 0x1002ea0c loads 4 bytes from [a1+8] +0x1ac.
  The `jalr` at 0x1002ea1c calls (unknown callee) with a0=([[a1+8]+420] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x29f0c.
  The return at 0x1002ea2c has v0 = ret(?).
- `doFinishRegionDrag__19GammaMapEditorClassGP10_WidgetRecP7_XEvent` in `usr/bin/X11/xsetmon` at 0x100327e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100327e0-0x10032934 (340 bytes).
  It occupies 340 bytes.
  The `sw` at 0x100327e0 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `lw` at 0x100327e8 loads 4 bytes from a0 (arg0 at entry) +0x68.
  4 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x10032810, `lw` at 0x10032848, `lw` at 0x10032864.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x8, including `lw` at 0x10032814, `lw` at 0x100328fc.
  The `lw` at 0x10032818 loads 4 bytes from [[sym(xsetmonApp)]+8] +0x128.
  The `lw` at 0x1003281c loads 4 bytes from [[sym(xsetmonApp)]+8] +0x120.
  The `lw` at 0x10032830 loads 4 bytes from a0 (arg0 at entry) +0x50.
  The `lw` at 0x10032834 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `lw` at 0x10032838 loads 4 bytes from a0 (arg0 at entry) +0x54.
  The `lw` at 0x1003283c loads 4 bytes from a0 (arg0 at entry) +0x58.
  The `lw` at 0x1003284c loads 4 bytes from [a0+88] +0x0.
  The `lw` at 0x10032850 loads 4 bytes from [sym(xsetmonApp)] +0x13c.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x138, including `lw` at 0x10032858, `lw` at 0x10032870.
  The `lw` at 0x10032900 loads 4 bytes from [[sym(xsetmonApp)]+8] +0x140.
  The `lw` at 0x10032904 loads 4 bytes from [[sym(xsetmonApp)]+8] +0x138.
  The `jalr` at 0x10032828 calls (unknown callee) with a0=([[[sym(xsetmonApp)]+8]+288] + [sym(xsetmonApp)]), a1=0x0, a2=0x0, a3=[sym(xsetmonApp)].
  The `jalr` at 0x10032854 calls XSGIvcStoreGammaColors16 with a0=[[sym(xsetmonApp)]+312], a1=[[sym(xsetmonApp)]+316], a2=[[a0+88]], a3=[a0+84], a4=[a0+96], a5=[a0+80].
  The `jalr` at 0x1003286c calls XSync with a0=[[sym(xsetmonApp)]+312], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1003287c calls __nw__GUi with a0=0x14, a1=?, a2=?, a3=?.
  The `jal` at 0x1003289c calls __ct__13GammaEditUndoGP19GammaMapEditorClass [0x1002e2e0] with a0=ret(__nw__GUi), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x100328bc calls getTheUndoManager__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100328d4 calls VkGetResource__GPCcT1 with a0=0x100459a0, a1=0x100459a0, a2=?, a3=?.
  The `jalr` at 0x100328ec calls add__17VkMenuUndoManagerGPCcPGP10_WidgetRecPvT2_vPv with a0=?, a1=ret(VkGetResource__GPCcT1), a2=sym(vPerformUndo__13GammaEditUndoSGPvT1), a3=?.
  The `jalr` at 0x10032908 calls (unknown callee) with a0=([[[sym(xsetmonApp)]+8]+312] + [sym(xsetmonApp)]), a1=[sym(xsetmonApp)], a2=?, a3=?.
  The `jal` at 0x10032918 calls redraw__19GammaMapEditorClassCGi [0x1002ad90] with a0=a0 at entry (arg0), a1=0x1, a2=?, a3=?.
  The `beq` branch at 0x10032804 targets 0x10032910, is taken when at(=[a0+104]) == 0, and falls through when at(=[a0+104]) != 0.
  The `beq` branch at 0x10032888 targets 0x100328b4, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x100328ac targets 0x100328b8 and is always taken.
  The return at 0x1003292c has v0 = ret(redraw__19GammaMapEditorClassCGi).
- `RegisterGainControlClassInterface__16GainControlClassSGv` in `usr/bin/X11/xsetmon` at 0x100329c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100329c0-0x100329d8 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x100329cc loads 4 bytes from abs 0x10050950.
  The return at 0x100329d0 has v0 = 0x1004d390.
- `quit__18XSetmonWindowClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10032d10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10032d10-0x10032d54 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10032d28 loads 4 bytes from sym(theApplication) +0x0.
  The `lw` at 0x10032d2c loads 4 bytes from [sym(theApplication)] +0x8.
  The `lw` at 0x10032d30 loads 4 bytes from [[sym(theApplication)]+8] +0xc8.
  The `lw` at 0x10032d34 loads 4 bytes from [[sym(theApplication)]+8] +0xc0.
  The `jalr` at 0x10032d3c calls (unknown callee) with a0=([[[sym(theApplication)]+8]+192] + [sym(theApplication)]), a1=[sym(theApplication)], a2=0x25bec, a3=a3 at entry (arg3).
  The return at 0x10032d4c has v0 = ret(?).
- `populateAssignmentWindow__22GammaAssignmentClassUIGP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x10033170 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10033170-0x10033820 (1712 bytes).
  It occupies 1712 bytes.
  10 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x10033194, `lw` at 0x100331f0, `lw` at 0x1003320c.
  3 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x13c, including `lw` at 0x100331a0, `lw` at 0x100332f4, `lw` at 0x100333d8.
  3 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x138, including `lw` at 0x100331ac, `lw` at 0x10033300, `lw` at 0x100333e4.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x100331d4, `lw` at 0x10033284, `lw` at 0x10033294.
  The `lw` at 0x100331e4 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  4 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x98, including `lw` at 0x100331f4, `lw` at 0x10033210, `lw` at 0x10033228.
  The `sw` at 0x10033208 stores 4 bytes to a0 (arg0 at entry) +0x38.
  The `sw` at 0x10033220 stores 4 bytes to a0 (arg0 at entry) +0x3c.
  6 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10033258, `sw` at 0x10033290, `sw` at 0x100332ac.
  20 such `lw` accesses load 4 bytes from ?, including `lw` at 0x100332a4, `lw` at 0x100332c8, `lw` at 0x1003330c.
  The `sw` at 0x10033378 stores 4 bytes to ret(__nw__GUi) +0x8.
  The `sw` at 0x10033384 stores 4 bytes to ret(__nw__GUi) +0x4.
  The `sw` at 0x10033390 stores 4 bytes to ret(__nw__GUi) +0x0.
  The `lbu` at 0x10033424 loads 1 byte from [sym(xsetmonApp)] +0x94.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x134, including `lw` at 0x1003357c, `lw` at 0x100335a0.
  The `lw` at 0x100335a4 loads 4 bytes from [[sym(xsetmonApp)]+308] +0x4.
  The `lw` at 0x100335a8 loads 4 bytes from [[[sym(xsetmonApp)]+308]+4] +0x20.
  The `lw` at 0x100335ac loads 4 bytes from [[[sym(xsetmonApp)]+308]+4] +0x18.
  The `lw` at 0x10033628 loads 4 bytes from a0 (arg0 at entry) +0x3c.
  The `lw` at 0x1003363c loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `jalr` at 0x100331a8 calls XSGIvcQueryScreenGammaMaps with a0=[[sym(xsetmonApp)]+312], a1=[[sym(xsetmonApp)]+316], a2=a0+64, a3=a3 at entry (arg3).
  The `jalr` at 0x100331e0 calls XtUnmanageChild with a0=[a0+44], a1=?, a2=?, a3=?.
  The `jalr` at 0x100331f8 calls __nwa__GUi with a0=([[sym(xsetmonApp)]+152] << 0x3), a1=?, a2=?, a3=?.
  The `jalr` at 0x10033214 calls __nwa__GUi with a0=([[sym(xsetmonApp)]+152] << 0x2), a1=?, a2=?, a3=?.
  The `jalr` at 0x10033254 calls baseWidget__10VkMenuItemCGv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003326c calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=-0x7, a2=ret(XmStringCreateSimple), a3=0x0.
  The `jalr` at 0x10033278 calls XmStringFree with a0=ret(XmStringCreateSimple), a1=?, a2=?, a3=?.
  The `jalr` at 0x10033288 calls __nwa__GUi with a0=([a0+64] << 0x2), a1=?, a2=?, a3=?.
  The `jalr` at 0x100332fc calls XSGIvcQueryChannelInfo with a0=[[sym(xsetmonApp)]+312], a1=[[sym(xsetmonApp)]+316], a2=?, a3=sp-128.
  The `jalr` at 0x10033330 calls __nw__GUi with a0=0xc, a1=?, a2=?, a3=?.
  The `jalr` at 0x10033348 calls sprintf with a0=sp-344, a1=[0x10051b80], a2=?, a3=?.
  The `jalr` at 0x1003335c calls VkGetResource__GPCcT1 with a0=0x10045148, a1=0x10045148, a2=?, a3=?.
  The `jalr` at 0x10033370 calls sprintf with a0=sp-240, a1=ret(VkGetResource__GPCcT1), a2=?, a3=?.
  The `jalr` at 0x10033398 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=?, a1=sp-240, a2=sym(assignChannelMapCallback__22GammaAssignmentClassUISGP10_WidgetRecPvT2), a3=ret(__nw__GUi), a4=-0x1.
  The `jalr` at 0x100333e0 calls XSGIvcQueryChannelGammaMap with a0=[[sym(xsetmonApp)]+312], a1=[[sym(xsetmonApp)]+316], a2=?, a3=sp-124.
  The `jalr` at 0x10033438 calls __ct__9strstreamGv with a0=sp-496, a1=0x0, a2=?, a3=[[sym(xsetmonApp)]+148]:1.
  The `jalr` at 0x1003344c calls __ls__7ostreamGPCc with a0=sp-416, a1=0x10045188, a2=?, a3=?.
  The `jalr` at 0x1003345c calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x10033470 calls __ls__7ostreamGPCc with a0=sp-416, a1=0x10045198, a2=?, a3=?.
  The `jalr` at 0x10033480 calls __ls__7ostreamGi with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x10033494 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGi), a1=0x100451c8, a2=?, a3=?.
  The `jalr` at 0x100334a4 calls __ls__7ostreamGi with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x100334b0 calls endl__GR7ostream with a0=ret(__ls__7ostreamGi), a1=?, a2=?, a3=?.
  The `jalr` at 0x100334c4 calls __ls__7ostreamGPCc with a0=sp-416, a1=0x100451e0, a2=?, a3=?.
  The `jalr` at 0x100334d8 calls __ls__7ostreamGi with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x100334ec calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGi), a1=0x10045208, a2=?, a3=?.
  The `jalr` at 0x100334f8 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x10033538 calls __ls__7ostreamGPCc with a0=sp-416, a1=0x10045220, a2=?, a3=?.
  The `jalr` at 0x10033548 calls __ls__7ostreamGi with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x10033554 calls endl__GR7ostream with a0=ret(__ls__7ostreamGi), a1=?, a2=?, a3=?.
  The `jalr` at 0x10033598 calls __assert with a0=0x10045230, a1=0x10045250, a2=0x90, a3=?.
  The `jalr` at 0x100335b4 calls (unknown callee) with a0=([[[[sym(xsetmonApp)]+308]+4]+24] + [[sym(xsetmonApp)]+308]), a1=sp-496, a2=[[sym(xsetmonApp)]+308], a3=?.
  The `jalr` at 0x100335c4 calls __dt__9strstreamGv with a0=sp-496, a1=0x2, a2=?, a3=?.
  The `jalr` at 0x100335d0 calls baseWidget__10VkMenuItemCGv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100335e0 calls XtSetSensitive with a0=ret(baseWidget__10VkMenuItemCGv), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x100335ec calls XFree with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003364c calls sprintf with a0=sp-344, a1=[0x10051b84], a2=?, a3=?.
  The `jalr` at 0x10033660 calls VkGetResource__GPCcT1 with a0=0x10045108, a1=0x10045108, a2=?, a3=?.
  The `jalr` at 0x10033674 calls sprintf with a0=sp-240, a1=ret(VkGetResource__GPCcT1), a2=?, a3=?.
  The `jalr` at 0x10033680 calls XmStringCreateSimple with a0=sp-240, a1=?, a2=?, a3=?.
  The `jalr` at 0x10033694 calls __nw__GUi with a0=0x4c, a1=?, a2=?, a3=?.
  The `jalr` at 0x100336c4 calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=a1 at entry (arg1), a2=sp-344, a3=0x0, a4=0x0.
  The `jalr` at 0x100336dc calls set__12VkOptionMenuGP10VkMenuItem with a0=?, a1=?, a2=?, a3=sym(xsetmonApp).
  The `jalr` at 0x1003370c calls baseWidget__10VkMenuItemCGv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003371c calls XtSetSensitive with a0=ret(baseWidget__10VkMenuItemCGv), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1003376c calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x10045118, a2=?, a3=?.
  The `jalr` at 0x1003377c calls __ls__7ostreamGi with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x1003378c calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGi), a1=0x10051658, a2=?, a3=?.
  The `jalr` at 0x10033798 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x100337a4 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x100337b4 calls (unknown callee) with a0=sym(cerr), a1=0x10045158, a2=?, a3=?.
  The `jalr` at 0x100337c4 calls __ls__7ostreamGi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100337d4 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGi), a1=0x10051658, a2=?, a3=?.
  The `jalr` at 0x100337e0 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x100337ec calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10033800 calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x100450e0, a2=?, a3=?.
  The `jalr` at 0x1003380c calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x10033818 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `beq` branch at 0x100331cc targets 0x100337f4, is taken when v0(=ret(XSGIvcQueryScreenGammaMaps)) == 0, and falls through when v0(=ret(XSGIvcQueryScreenGammaMaps)) != 0.
  The `beq` branch at 0x100331d8 targets 0x1003372c, is taken when v1(=[a0+64]) == 0, and falls through when v1(=[a0+64]) != 0.
  The `blez` branch at 0x1003322c targets 0x1003372c, is taken when a1(=[[sym(xsetmonApp)]+152]) <= 0 (signed), and falls through when a1(=[[sym(xsetmonApp)]+152]) > 0 (signed).
  The `beq` branch at 0x10033244 targets 0x10033624 and is always taken.
  The `blez` branch at 0x1003329c targets 0x100332e8, is taken when a1(=[a0+64]) <= 0 (signed), and falls through when a1(=[a0+64]) > 0 (signed).
  The `beq` branch at 0x100332c0 targets 0x100332e8, is taken when v0(?) >= a2(=[a0+64]) (signed), and falls through when v0(?) < a2(=[a0+64]) (signed).
  The `bne` branch at 0x100332e0 targets 0x100332a4, is taken when v0(?) < a5(=[a0+64]) (signed), and falls through when v0(?) >= a5(=[a0+64]) (signed).
  The `beq` branch at 0x10033304 targets 0x10033760, is taken when v0(=ret(XSGIvcQueryChannelInfo)) == 0, and falls through when v0(=ret(XSGIvcQueryChannelInfo)) != 0.
  The `blez` branch at 0x10033310 targets 0x100333d0, is taken when a1(?) <= 0 (signed), and falls through when a1(?) > 0 (signed).
  The `bne` branch at 0x100333c0 targets 0x10033320, is taken when s4(?) < a1(?) (signed), and falls through when s4(?) >= a1(?) (signed).
  The `beq` branch at 0x100333e8 targets 0x100337ac, is taken when v0(=ret(XSGIvcQueryChannelGammaMap)) == 0, and falls through when v0(=ret(XSGIvcQueryChannelGammaMap)) != 0.
  The `beq` branch at 0x100333fc targets 0x10033420, is taken when v0(?) >= a1(=[a0+64]) (signed), and falls through when v0(?) < a1(=[a0+64]) (signed).
  The `bne` branch at 0x10033414 targets 0x100336dc, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x10033428 targets 0x100335d0, is taken when a3(=[[sym(xsetmonApp)]+148]:1) == 0, and falls through when a3(=[[sym(xsetmonApp)]+148]:1) != 0.
  The `blez` branch at 0x1003350c targets 0x10033574, is taken when a2(?) <= 0 (signed), and falls through when a2(?) > 0 (signed).
  The `bne` branch at 0x1003356c targets 0x10033520, is taken when s2(?) < t8(?) (signed), and falls through when s2(?) >= t8(?) (signed).
  The `bne` branch at 0x10033580 targets 0x100335a0, is taken when t9(=[[sym(xsetmonApp)]+308]) != 0, and falls through when t9(=[[sym(xsetmonApp)]+308]) == 0.
  The `beq` branch at 0x1003361c targets 0x1003372c, is taken when s6(?) >= a1(=[[sym(xsetmonApp)]+152]) (signed), and falls through when s6(?) < a1(=[[sym(xsetmonApp)]+152]) (signed).
  The `beq` branch at 0x100336a0 targets 0x1003324c, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x100336d4 targets 0x10033250 and is always taken.
  The `beq` branch at 0x100336f0 targets 0x100335ec, is taken when a2(?) >= 0x2 (signed), and falls through when a2(?) < 0x2 (signed).
  The `beq` branch at 0x10033724 targets 0x100335ec and is always taken.
  The return at 0x10033758 has v0 = one of ret(XSGIvcQueryScreenGammaMaps), ret(__nwa__GUi), ?.
- `doArmRegionDrag__19GammaMapEditorClassGP10_WidgetRecP7_XEvent` in `usr/bin/X11/xsetmon` at 0x10033ae0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10033ae0-0x10033c68 (392 bytes).
  It occupies 392 bytes.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x70, including `sw` at 0x10033ae0, `sw` at 0x10033b44.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x6c, including `sw` at 0x10033ae4, `sw` at 0x10033bd8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xac, including `lw` at 0x10033af4, `lw` at 0x10033b34.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb4, including `lw` at 0x10033b20, `lw` at 0x10033b48.
  The `lw` at 0x10033b30 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `lw` at 0x10033b50 loads 4 bytes from a0 (arg0 at entry) +0xb0.
  2 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x10033b5c, `lwc1` at 0x10033b60.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x20, including `lw` at 0x10033b88, `lw` at 0x10033bdc.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x24, including `lw` at 0x10033bb0, `lw` at 0x10033bec.
  The `lw` at 0x10033bc8 loads 4 bytes from a0 (arg0 at entry) +0x64.
  The `lw` at 0x10033bcc loads 4 bytes from a0 (arg0 at entry) +0x50.
  The `sw` at 0x10033bd0 stores 4 bytes to a0 (arg0 at entry) +0x68.
  The `sh` at 0x10033be0 stores 2 bytes to a0 (arg0 at entry) +0x74.
  The `sh` at 0x10033be4 stores 2 bytes to a0 (arg0 at entry) +0x78.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x54, including `lw` at 0x10033be8, `lw` at 0x10033c08, `lw` at 0x10033c24.
  The `sh` at 0x10033bf0 stores 2 bytes to a0 (arg0 at entry) +0x76.
  The `sh` at 0x10033bfc stores 2 bytes to a0 (arg0 at entry) +0x7a.
  2 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x10033c00, `lhu` at 0x10033c1c.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0x10033c04, `sh` at 0x10033c20.
  The `lw` at 0x10033c44 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  The `jal` at 0x10033b7c calls vGammaToWindow__19GammaMapEditorClassCGiT1P6XPoint [0x1003a020] with a0=a0 at entry (arg0), a1=?, a2=?, a3=sp-48.
  The `jal` at 0x10033c48 calls vDrawControlPoint__19GammaMapEditorClassCGPC6XPointP4_XGC [0x10030f10] with a0=a0 at entry (arg0), a1=sp-48, a2=[a0+76], a3=?.
  The `blez` branch at 0x10033b14 targets 0x10033c50, is taken when at(=[a0+172]) <= 0 (signed), and falls through when at(=[a0+172]) > 0 (signed).
  The `beq` branch at 0x10033b1c targets 0x10033b4c and is always taken.
  The `beq` branch at 0x10033b40 targets 0x10033c50, is taken when a5(=[a0+112]+1) >= v1(=[a0+172]) (signed), and falls through when a5(=[a0+112]+1) < v1(=[a0+172]) (signed).
  The `bne` branch at 0x10033b9c targets 0x10033b30, is taken when a3(=[a2+32]) < t1(?) (signed), and falls through when a3(=[a2+32]) >= t1(?) (signed).
  The `bne` branch at 0x10033ba8 targets 0x10033b30, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `bne` branch at 0x10033bb8 targets 0x10033b30, is taken when a0(=[a2+36]) < t3(?) (signed), and falls through when a0(=[a2+36]) >= t3(?) (signed).
  The `bne` branch at 0x10033bc0 targets 0x10033b30, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `blez` branch at 0x10033bf8 targets 0x10033c3c, is taken when ra(=[a0+84]) <= 0 (signed), and falls through when ra(=[a0+84]) > 0 (signed).
  The `beq` branch at 0x10033c14 targets 0x10033c3c, is taken when a2(?) >= v1(=[a0+84]) (signed), and falls through when a2(?) < v1(=[a0+84]) (signed).
  The `bne` branch at 0x10033c34 targets 0x10033c00, is taken when a2(?) < a4(=[a0+84]) (signed), and falls through when a2(?) >= a4(=[a0+84]) (signed).
  The return at 0x10033c60 has v0 = one of 0x24e1c, ret(vGammaToWindow__19GammaMapEditorClassCGiT1P6XPoint), ret(vDrawControlPoint__19GammaMapEditorClassCGPC6XPointP4_XGC).
  The instructions from 0x10033b24 to 0x10033b2c are not reached by any path from the entry, and their branches are not listed.
- `vFindRegionAffected__19GammaMapEditorClassGP6XPointT1f` in `usr/bin/X11/xsetmon` at 0x100345e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100345e0-0x10034750 (368 bytes).
  It occupies 368 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x54, including `lw` at 0x10034604, `lw` at 0x100346bc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9c, including `lw` at 0x10034640, `lw` at 0x10034698.
  The `lh` at 0x10034644 loads 2 bytes from a1 (arg1 at entry) +0x2.
  The `lh` at 0x1003464c loads 2 bytes from a1 (arg1 at entry) +0x0.
  4 such `lh` accesses load 2 bytes from ?, including `lh` at 0x10034658, `lh` at 0x10034660, `lh` at 0x100346a0.
  The `sh` at 0x100346a4 stores 2 bytes to a2 (arg2 at entry) +0x0.
  The `sh` at 0x100346b4 stores 2 bytes to a2 (arg2 at entry) +0x2.
  The `sh` at 0x1003471c stores 2 bytes to a0 (arg0 at entry) +0x7c.
  The `sh` at 0x10034724 stores 2 bytes to a0 (arg0 at entry) +0x80.
  The `sh` at 0x1003472c stores 2 bytes to a0 (arg0 at entry) +0x7e.
  The `jal` at 0x10034680 calls fDistanceFunction__19GammaMapEditorClassGfN31 [0x10043150] with a0=a0 at entry (arg0), a1=[a1]:2, a2=[a1+2]:2, a3=?.
  The `jal` at 0x100346f4 calls sFindDistanceIndex__19GammaMapEditorClassGfsT2 [0x10034040] with a0=a0 at entry (arg0), a1=?, a2=?, a3=-0x1.
  The `jal` at 0x10034718 calls sFindDistanceIndex__19GammaMapEditorClassGfsT2 [0x10034040] with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x1.
  The `blez` branch at 0x10034628 targets 0x10034740, is taken when at(=[a0+84]) <= 0 (signed), and falls through when at(=[a0+84]) > 0 (signed).
  The `bc1f` branch at 0x10034690 targets 0x100346b8, is taken when not (f0(=ret(fDistanceFunction__19GammaMapEditorClassGfN31)) < f20 (c.lt.s at 0x10034688)), and falls through when f0(=ret(fDistanceFunction__19GammaMapEditorClassGfN31)) < f20 (c.lt.s at 0x10034688).
  The `bne` branch at 0x100346cc targets 0x10034640, is taken when s0(?) < a1(=[a0+84]) (signed), and falls through when s0(?) >= a1(=[a0+84]) (signed).
  The `beq` branch at 0x10034748 targets 0x100346d4 and is always taken.
  The return at 0x10034738 has v0 = ret(sFindDistanceIndex__19GammaMapEditorClassGfsT2).
- `configureGain__16GainControlClassGiT1` in `usr/bin/X11/xsetmon` at 0x10037340 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037340-0x10037420 (224 bytes).
  It occupies 224 bytes.
  The `sw` at 0x1003734c stores 4 bytes to a0 (arg0 at entry) +0x34.
  The `sw` at 0x10037360 stores 4 bytes to a0 (arg0 at entry) +0x38.
  The `lw` at 0x10037364 loads 4 bytes from sym(xsetmonApp) +0x0.
  The `lw` at 0x10037374 loads 4 bytes from [sym(xsetmonApp)] +0x138.
  The `lw` at 0x10037384 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84.
  The `lw` at 0x100373bc loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lw` at 0x100373f4 loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `jalr` at 0x10037388 calls XSGIvcQueryOutputGain with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=sp-32.
  The `jalr` at 0x100373b8 calls XtVaSetValues with a0=[a0+36], a1=-0x8, a2=?, a3=0x0.
  The `jalr` at 0x100373e0 calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x10044f20, a2=?, a3=?.
  The `jalr` at 0x100373f0 calls __ls__7ostreamGi with a0=ret(__ls__7ostreamGPCc), a1=[a0+52], a2=?, a3=?.
  The `jalr` at 0x10037400 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGi), a1=0x10051600, a2=?, a3=?.
  The `jalr` at 0x1003740c calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x10037418 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10037390 targets 0x100373d4, is taken when v0(=ret(XSGIvcQueryOutputGain)) == 0, and falls through when v0(=ret(XSGIvcQueryOutputGain)) != 0.
  The return at 0x100373cc has v0 = ret(XtVaSetValues).
- `prepost__16AboutDialogClassGPCcPGP10_WidgetRecPvT2_vN22PvT1P14VkSimpleWindow` in `usr/bin/X11/xsetmon` at 0x10037420 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037420-0x10037454 (52 bytes).
  It occupies 52 bytes.
  The `jalr` at 0x1003743c calls prepost__15VkDialogManagerGPCcPGP10_WidgetRecPvT2_vN22PvT1P14VkSimpleWindow with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1003744c has v0 = ret(prepost__15VkDialogManagerGPCcPGP10_WidgetRecPvT2_vN22PvT1P14VkSimpleWindow).
- `loadSettingsFileCallback__18XSetmonWindowClassSGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10037590 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037590-0x100375d4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10037594 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x100375a0 loads 4 bytes from [a1+8] +0x198.
  The `lw` at 0x100375ac loads 4 bytes from [a1+8] +0x1a0.
  The `jalr` at 0x100375bc calls (unknown callee) with a0=([[a1+8]+408] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x2136c.
  The return at 0x100375cc has v0 = ret(?).
- `RegisterSetmonMasterFormClassInterface__21SetmonMasterFormClassSGv` in `usr/bin/X11/xsetmon` at 0x10037da0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037da0-0x10037db8 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x10037dac loads 4 bytes from abs 0x10050950.
  The return at 0x10037db0 has v0 = 0x1004e4e8.
- `RegisterGammaClassInterface__10GammaClassSGv` in `usr/bin/X11/xsetmon` at 0x10037f20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037f20-0x10037f38 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x10037f2c loads 4 bytes from abs 0x10050950.
  The return at 0x10037f30 has v0 = 0x1004d950.
- `RegisterSyncSelectorFrameInterface__17SyncSelectorFrameSGv` in `usr/bin/X11/xsetmon` at 0x10038c40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10038c40-0x10038c58 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x10038c4c loads 4 bytes from abs 0x10050950.
  The return at 0x10038c50 has v0 = 0x1004ec70.
- `doResetEditingCallback__18XSetmonWindowClassSGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10038df0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10038df0-0x10038e34 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10038df4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10038e00 loads 4 bytes from [a1+8] +0x18c.
  The `lw` at 0x10038e0c loads 4 bytes from [a1+8] +0x194.
  The `jalr` at 0x10038e1c calls (unknown callee) with a0=([[a1+8]+396] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1fb0c.
  The return at 0x10038e2c has v0 = ret(?).
- `RegisterFormatCombinationListsClassInterface__27FormatCombinationListsClassSGv` in `usr/bin/X11/xsetmon` at 0x10039ae0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10039ae0-0x10039af8 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x10039aec loads 4 bytes from abs 0x10050950.
  The return at 0x10039af0 has v0 = 0x1004d020.
- `vGammaToWindow__19GammaMapEditorClassCGiT1P6XPoint` in `usr/bin/X11/xsetmon` at 0x1003a020 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003a020-0x1003a078 (88 bytes).
  It occupies 88 bytes.
  The `lwc1` at 0x1003a02c loads 4 bytes from a0 (arg0 at entry) +0xa0.
  The `sh` at 0x1003a044 stores 2 bytes to a3 (arg3 at entry) +0x0.
  The `lwc1` at 0x1003a048 loads 4 bytes from a0 (arg0 at entry) +0xa4.
  The `lhu` at 0x1003a050 loads 2 bytes from a0 (arg0 at entry) +0x96.
  The `sh` at 0x1003a074 stores 2 bytes to a3 (arg3 at entry) +0x2.
  The return at 0x1003a070 has v0 = [a0+150]:2.
- `doDragRegionCallback__21GammaMapEditorClassUISGP10_WidgetRecP7_XEventPPcPUi` in `usr/bin/X11/xsetmon` at 0x1003aee0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003aee0-0x1003af50 (112 bytes).
  It occupies 112 bytes.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1003af20, `lw` at 0x1003af24, `lw` at 0x1003af28.
  The `jalr` at 0x1003af14 calls XtVaGetValues with a0=a0 at entry (arg0), a1=-0xa, a2=sp-48, a3=0x0.
  The `jalr` at 0x1003af34 calls (unknown callee) with a0=?, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=?.
  The return at 0x1003af48 has v0 = ret(?).
- `RegisterStatisticsFormClassInterface__19StatisticsFormClassSGv` in `usr/bin/X11/xsetmon` at 0x1003cba0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003cba0-0x1003cbb8 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x1003cbac loads 4 bytes from abs 0x10050950.
  The return at 0x1003cbb0 has v0 = 0x1004e840.
- `RegisterCombinationContentsListClassInterface__28CombinationContentsListClassSGv` in `usr/bin/X11/xsetmon` at 0x1003d910 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003d910-0x1003d928 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x1003d91c loads 4 bytes from abs 0x10050950.
  The return at 0x1003d920 has v0 = 0x1004ccd0.
- `RegisterChannelFormClassInterface__16ChannelFormClassSGv` in `usr/bin/X11/xsetmon` at 0x1003dec0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003dec0-0x1003ded8 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x1003decc loads 4 bytes from abs 0x10050950.
  The return at 0x1003ded0 has v0 = 0x1004c940.
- `doFinishRegionDrag__21GammaMapEditorClassUIGP10_WidgetRecP7_XEvent` in `usr/bin/X11/xsetmon` at 0x1003e030 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003e030-0x1003e038 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1003e030 has v0 = ?.
- `doArmRegionDrag__21GammaMapEditorClassUIGP10_WidgetRecP7_XEvent` in `usr/bin/X11/xsetmon` at 0x1003e970 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003e970-0x1003e978 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1003e970 has v0 = ?.
- `createWindows__7xsetmonGv` in `usr/bin/X11/xsetmon` at 0x10041b80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10041b80-0x10041c24 (164 bytes).
  It occupies 164 bytes.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x84, including `lbu` at 0x10041be8, `lbu` at 0x10041bf0.
  The `sw` at 0x10041bf8 stores 4 bytes to a0 (arg0 at entry) +0x130.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10041bfc, `lw` at 0x10041c00, `lw` at 0x10041c04.
  The `jalr` at 0x10041ba8 calls __nw__GUi with a0=0x70, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10041bd4 calls __ct__18XSetmonWindowClassGPCcP3ArgUi [0x10027170] with a0=ret(__nw__GUi), a1=0x10043c60, a2=0x0, a3=0x0.
  The `jalr` at 0x10041c08 calls (unknown callee) with a0=?, a1=?, a2=[a0+132]:1, a3=?.
  The `beq` branch at 0x10041bb4 targets 0x10041bec, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10041be4 targets 0x10041bf4 and is always taken.
  The `beq` branch at 0x10041bf4 targets 0x10041c10, is taken when a2(=[a0+132]:1) == 0, and falls through when a2(=[a0+132]:1) != 0.
  The return at 0x10041c1c has v0 = one of ?, ret(?).
- `registerChild__12MyTabbedDeckGP11VkComponentPCc` in `usr/bin/X11/xsetmon` at 0x10041ed0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10041ed0-0x10041f8c (188 bytes).
  It occupies 188 bytes.
  The `lw` at 0x10041f48 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `lw` at 0x10041f70 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `jalr` at 0x10041f04 calls baseWidget__11VkComponentCGv with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10041f2c calls VkGetResource__GP10_WidgetRecPCcN32 with a0=ret(baseWidget__11VkComponentCGv), a1=0x10049590, a2=0x100495a0, a3=-0x1a, a4=a2 at entry (arg2).
  The `jalr` at 0x10041f44 calls addView__6VkDeckGP11VkComponent with a0=[a0+32], a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x10041f50 calls baseWidget__11VkComponentCGv with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x10041f6c calls addTab__10VkTabPanelGPcPvc with a0=[a0+36], a1=ret(VkGetResource__GP10_WidgetRecPCcN32), a2=ret(baseWidget__11VkComponentCGv), a3=0x0.
  The return at 0x10041f84 has v0 = ret(addTab__10VkTabPanelGPcPvc).
- `loadSettingsFile__18XSetmonWindowClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10042160 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10042160-0x100421f4 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0x10042184 loads 4 bytes from ret(getTheFileSelectionDialog__Gv) +0x8.
  The `lw` at 0x10042194 loads 4 bytes from [ret(getTheFileSelectionDialog__Gv)+8] +0x110.
  The `lw` at 0x100421a0 loads 4 bytes from [ret(getTheFileSelectionDialog__Gv)+8] +0x108.
  The `lw` at 0x100421e0 loads 4 bytes from ret(getTheFileSelectionDialog__Gv) +0x54.
  The `lw` at 0x100421e8 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `jalr` at 0x1004217c calls getTheFileSelectionDialog__Gv with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100421ac calls (unknown callee) with a0=([[ret(getTheFileSelectionDialog__Gv)+8]+264] + ret(getTheFileSelectionDialog__Gv)), a1=0x0, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x100421d0 calls getTheFileSelectionDialog__Gv with a0=?, a1=0x1, a2=?, a3=?.
  The `jal` at 0x100421e4 calls loadData__21MasterTabbedDeckClassGPCc [0x1002b910] with a0=[a0+68], a1=[ret(getTheFileSelectionDialog__Gv)+84], a2=?, a3=?.
  The `beq` branch at 0x100421b8 targets 0x100421cc, is taken when v0(=ret(?)) == a1(=0x1), and falls through when v0(=ret(?)) != a1(=0x1).
  The `beq` branch at 0x100421ec targets 0x100421c0 and is always taken.
  The return at 0x100421c4 has v0 = one of ret(?), ret(loadData__21MasterTabbedDeckClassGPCc).
- `ProcXineramaDestroyWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1005fa40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1005fa40-0x1005fbac (364 bytes).
  It occupies 364 bytes.
  The `lw` at 0x1005fa48 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x1005fa60 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x1005fa94 loads 4 bytes from [a0+8] +0x4.
  The `lw` at 0x1005fab0 loads 4 bytes from sym(XRT_WINDOW) +0x0.
  2 such `sw` accesses store 4 bytes to sym(panoramiXMode) +0x0, including `sw` at 0x1005fad0, `sw` at 0x1005fb8c.
  The `lw` at 0x1005fb10 loads 4 bytes from sym(ProcVector) +0x10.
  3 such `sw` accesses store 4 bytes to sym(panoramiXScreen0) +0x0, including `sw` at 0x1005fb20, `sw` at 0x1005fb44, `sw` at 0x1005fb48.
  The `lw` at 0x1005fb34 loads 4 bytes from ?.
  The `sw` at 0x1005fb3c stores 4 bytes to [a0+8] +0x4.
  The `jal` at 0x1005faac calls SecurityLookupIDByType [0x100d6140] with a0=a0 at entry (arg0), a1=[[a0+8]+4], a2=[sym(XRT_WINDOW)], a3=0x4.
  The `jalr` at 0x1005fb14 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1005fb4c calls XineramaDeliverVisibilityNotify [0x10197300] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1005fb6c calls XineramaDeliverExpose [0x100e7410] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1005fa68 targets 0x1005fa94, is taken when v1(=[a0+72]) == a1(=0x2), and falls through when v1(=[a0+72]) != a1(=0x2).
  The `beq` branch at 0x1005fac0 targets 0x1005fb90, is taken when v0(=ret(SecurityLookupIDByType)) == 0, and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  The `blez` branch at 0x1005faec targets 0x1005fba4, is taken when a3(=[0x102c5f1c]) <= 0 (signed), and falls through when a3(=[0x102c5f1c]) > 0 (signed).
  The `beq` branch at 0x1005fb00 targets 0x1005fb30 and is always taken.
  The `bne` branch at 0x1005fb24 targets 0x1005fb4c, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0.
  The `beq` branch at 0x1005fb2c targets 0x1005fb48, is taken when s0(?) == s6(=ret(SecurityLookupIDByType)-8), and falls through when s0(?) != s6(=ret(SecurityLookupIDByType)-8).
  The `bne` branch at 0x1005fb38 targets 0x1005fb10, is taken when s4(=ret(SecurityLookupIDByType)) != s0(?), and falls through when s4(=ret(SecurityLookupIDByType)) == s0(?).
  The `beq` branch at 0x1005fb40 targets 0x1005fb10 and is always taken.
  The `beq` branch at 0x1005fb88 targets 0x1005fa84 and is always taken.
  The `beq` branch at 0x1005fb9c targets 0x1005fa84 and is always taken.
  The `beq` branch at 0x1005fba4 targets 0x1005fb4c and is always taken.
  The return at 0x1005fa7c has v0 = 0x10.
  The return at 0x1005fa8c has v0 = one of ?, 0x3.
  The instructions from 0x1005fb08 to 0x1005fb0c are not reached by any path from the entry, and their branches are not listed.
- `ProcXineramaUnmapSubwindows` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10060940 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10060940-0x10060a90 (336 bytes).
  It occupies 336 bytes.
  The `lw` at 0x10060940 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x10060948 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x1006099c loads 4 bytes from [a0+8] +0x4.
  The `lw` at 0x100609a8 loads 4 bytes from sym(XRT_WINDOW) +0x0.
  2 such `sw` accesses store 4 bytes to sym(panoramiXMode) +0x0, including `sw` at 0x100609d0, `sw` at 0x10060a6c.
  The `lw` at 0x10060a00 loads 4 bytes from ?.
  The `sw` at 0x10060a0c stores 4 bytes to ?.
  3 such `sw` accesses store 4 bytes to sym(panoramiXScreen0) +0x0, including `sw` at 0x10060a10, `sw` at 0x10060a3c, `sw` at 0x10060a80.
  The `lw` at 0x10060a18 loads 4 bytes from sym(ProcVector) +0x2c.
  The `jal` at 0x100609a4 calls SecurityLookupIDByType [0x100d6140] with a0=a0 at entry (arg0), a1=[[a0+8]+4], a2=[sym(XRT_WINDOW)], a3=0x1.
  The `jalr` at 0x10060a1c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a7=sym(panoramiXScreen0).
  The `jal` at 0x10060a48 calls XineramaDeliverVisibilityNotify [0x10197300] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10060a50 calls XineramaDeliverExpose [0x100e7410] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10060964 targets 0x10060988, is taken when v1(=[a0+72]) == a1(=0x2), and falls through when v1(=[a0+72]) != a1(=0x2).
  The `beq` branch at 0x100609bc targets 0x10060a70, is taken when v0(=ret(SecurityLookupIDByType)) == 0, and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  The `blez` branch at 0x100609cc targets 0x10060a84, is taken when a5(=[0x102c5f1c]) <= 0 (signed), and falls through when a5(=[0x102c5f1c]) > 0 (signed).
  The `beq` branch at 0x100609d8 targets 0x100609f0 and is always taken.
  The `beq` branch at 0x100609e8 targets 0x10060a7c, is taken when a4(?) >= a2(=[0x102c5f1c]) (signed), and falls through when a4(?) < a2(=[0x102c5f1c]) (signed).
  The `bne` branch at 0x10060a08 targets 0x10060a14, is taken when a6(?) != a5(?), and falls through when a6(?) == a5(?).
  The `beq` branch at 0x10060a40 targets 0x100609e0, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x10060a68 targets 0x10060978 and is always taken.
  The `beq` branch at 0x10060a74 targets 0x1006097c and is always taken.
  The `beq` branch at 0x10060a7c targets 0x10060a48 and is always taken.
  The `beq` branch at 0x10060a88 targets 0x10060a48 and is always taken.
  The return at 0x10060970 has v0 = 0x10.
  The return at 0x10060980 has v0 = one of ?, 0x3.
- `ProcGetBufferInfo..HKC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10063190 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10063190-0x10063a00 (2160 bytes).
  It occupies 2160 bytes.
  The `lw` at 0x100631ac loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x100631bc loads 4 bytes from [a0+8] +0x4.
  2 such `lw` accesses load 4 bytes from sym(panoramiXDisabled) +0x0, including `lw` at 0x100631d0, `lw` at 0x100634b8.
  The `lw` at 0x100631d4 loads 4 bytes from ret(SecurityLookupDrawable) +0x10.
  2 such `lh` accesses load 2 bytes from [ret(SecurityLookupDrawable)+16] +0x10, including `lh` at 0x100631e4, `lh` at 0x10063438.
  The `lw` at 0x100631f8 loads 4 bytes from [ret(SecurityLookupDrawable)+16] +0x14.
  85 such `lh` accesses load 2 bytes from ?, including `lh` at 0x10063210, `lh` at 0x10063238, `lh` at 0x1006323c.
  The `lw` at 0x100633c8 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x100633d4, `lw` at 0x1006354c.
  9 such `lw` accesses load 4 bytes from ?, including `lw` at 0x100634c8, `lw` at 0x10063528, `lw` at 0x10063530.
  2 such `lw` accesses load 4 bytes from ret(nmbxLookupCapability) +0x8, including `lw` at 0x10063518, `lw` at 0x10063538.
  The `sw` at 0x10063534 stores 4 bytes to ?.
  The `sh` at 0x10063540 stores 2 bytes to ?.
  The `lbu` at 0x10063544 loads 1 byte from ?.
  7 such `sb` accesses store 1 byte to ?, including `sb` at 0x10063548, `sb` at 0x10063578, `sb` at 0x1006357c.
  The `lw` at 0x100635bc loads 4 bytes from sym(screenInfo) +0x44.
  The `lw` at 0x100636ac loads 4 bytes from a0 (arg0 at entry) +0x28.
  2 such `lw` accesses load 4 bytes from sym(PanoramiXNumDepths) +0x0, including `lw` at 0x10063730, `lw` at 0x100638f0.
  The `lw` at 0x10063738 loads 4 bytes from [ret(SecurityLookupDrawable)+16] +0x0.
  The `lw` at 0x10063754 loads 4 bytes from (([[ret(SecurityLookupDrawable)+16]] << 0x2) + sym(PanoramiXDepths)) +0x0.
  The `jal` at 0x100631b8 calls SecurityLookupDrawable [0x101e03e0] with a0=[[a0+8]+4], a1=a0 at entry (arg0), a2=0x0, a3=a3 at entry (arg3).
  The `jal` at 0x10063504 calls nmbxLookupCapability [0x101ffee0] with a0=?, a1=?, a2=[0x102ca7e0], a3=?.
  The `jal` at 0x10063684 calls WriteToClient [0x100b3500] with a0=a0 at entry (arg0), a1=0x20, a2=sp-64, a3=?.
  The `jal` at 0x10063698 calls WriteToClient [0x100b3500] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x100631c4 targets 0x100636ec, is taken when v0(=ret(SecurityLookupDrawable)) == 0, and falls through when v0(=ret(SecurityLookupDrawable)) != 0.
  The `beq` branch at 0x100631d8 targets 0x10063728, is taken when t8(=[sym(panoramiXDisabled)]) == 0, and falls through when t8(=[sym(panoramiXDisabled)]) != 0.
  The `blez` branch at 0x100631e8 targets 0x10063934, is taken when a4(=[[ret(SecurityLookupDrawable)+16]+16]:2) <= 0 (signed), and falls through when a4(=[[ret(SecurityLookupDrawable)+16]+16]:2) > 0 (signed).
  The `beq` branch at 0x10063204 targets 0x10063220, is taken when (a4(=[[ret(SecurityLookupDrawable)+16]+16]:2) & 0x7) == 0, and falls through when (a4(=[[ret(SecurityLookupDrawable)+16]+16]:2) & 0x7) != 0.
  The `bne` branch at 0x10063218 targets 0x1006320c, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x10063224 targets 0x1006339c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x1006322c targets 0x100639b0, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x100632c0 targets 0x100636bc, is taken when t9(?) == t0(=([[ret(SecurityLookupDrawable)+16]+20] + ([[ret(SecurityLookupDrawable)+16]+16]:2 << 0x3))-128), and falls through when t9(?) != t0(=([[ret(SecurityLookupDrawable)+16]+20] + ([[ret(SecurityLookupDrawable)+16]+16]:2 << 0x3))-128).
  The `bne` branch at 0x10063308 targets 0x10063280, is taken when t8(?) != t0(=([[ret(SecurityLookupDrawable)+16]+20] + ([[ret(SecurityLookupDrawable)+16]+16]:2 << 0x3))-128), and falls through when t8(?) == t0(=([[ret(SecurityLookupDrawable)+16]+20] + ([[ret(SecurityLookupDrawable)+16]+16]:2 << 0x3))-128).
  The `beq` branch at 0x100633b4 targets 0x10063708, is taken when sp(?) == 0, and falls through when sp(?) != 0.
  The `beq` branch at 0x100633d8 targets 0x1006342c, is taken when t1(=[a0+16]) == 0, and falls through when t1(=[a0+16]) != 0.
  The `beq` branch at 0x1006342c targets 0x100638ec, is taken when t8(=[sym(panoramiXDisabled)]) == 0, and falls through when t8(=[sym(panoramiXDisabled)]) != 0.
  The `blez` branch at 0x1006343c targets 0x1006393c, is taken when a3(?) <= 0 (signed), and falls through when a3(?) > 0 (signed).
  The `beq` branch at 0x10063494 targets 0x100634b4 and is always taken.
  The `beq` branch at 0x100634ac targets 0x10063648, is taken when a6(?) == a7(?), and falls through when a6(?) != a7(?).
  The `beq` branch at 0x100634bc targets 0x10063634, is taken when t0(=[sym(panoramiXDisabled)]) == 0, and falls through when t0(=[sym(panoramiXDisabled)]) != 0.
  The `blez` branch at 0x100634d4 targets 0x100634a0, is taken when t8(?) <= 0 (signed), and falls through when t8(?) > 0 (signed).
  The `beq` branch at 0x100634dc targets 0x100635bc and is always taken.
  The `beq` branch at 0x10063510 targets 0x100635a8, is taken when v0(=ret(nmbxLookupCapability)) == 0, and falls through when v0(=ret(nmbxLookupCapability)) != 0.
  The `bne` branch at 0x10063520 targets 0x100635a8, is taken when t9(=[ret(nmbxLookupCapability)+8]) < 0x2 (unsigned), and falls through when t9(=[ret(nmbxLookupCapability)+8]) >= 0x2 (unsigned).
  The `beq` branch at 0x1006356c targets 0x100635a4, is taken when ra(=[a0+16]) == 0, and falls through when ra(=[a0+16]) != 0.
  The `beq` branch at 0x100635b4 targets 0x100634a0, is taken when s2(?) >= t8(?) (signed), and falls through when s2(?) < t8(?) (signed).
  The `beq` branch at 0x100635cc targets 0x100634f8, is taken when t1(=[0x102cabb8]) >= a3(=[sym(screenInfo)+68]) (signed), and falls through when t1(=[0x102cabb8]) < a3(=[sym(screenInfo)+68]) (signed).
  The `blez` branch at 0x100635f8 targets 0x10063624, is taken when t2(?) <= 0 (signed), and falls through when t2(?) > 0 (signed).
  The `beq` branch at 0x10063614 targets 0x100634f0, is taken when t0(?) == a5(?), and falls through when t0(?) != a5(?).
  The `bne` branch at 0x1006361c targets 0x10063610, is taken when a3(?) != a6(?), and falls through when a3(?) == a6(?).
  The `bne` branch at 0x10063624 targets 0x100635e8, is taken when a7(?) != t8(=(([sym(screenInfo)+68] << 0x2) + sym(screenInfo))), and falls through when a7(?) == t8(=(([sym(screenInfo)+68] << 0x2) + sym(screenInfo))).
  The `beq` branch at 0x1006362c targets 0x100634fc and is always taken.
  The `beq` branch at 0x10063640 targets 0x100634d0 and is always taken.
  The `beq` branch at 0x100636e4 targets 0x10063348 and is always taken.
  The `blez` branch at 0x1006373c targets 0x1006394c, is taken when a4(=[sym(PanoramiXNumDepths)]) <= 0 (signed), and falls through when a4(=[sym(PanoramiXNumDepths)]) > 0 (signed).
  The `beq` branch at 0x10063760 targets 0x1006377c, is taken when (a4(=[sym(PanoramiXNumDepths)]) & 0x7) == 0, and falls through when (a4(=[sym(PanoramiXNumDepths)]) & 0x7) != 0.
  The `bne` branch at 0x10063774 targets 0x10063768, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x10063780 targets 0x100638e4, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x10063788 targets 0x10063958, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x1006380c targets 0x100638f4, is taken when t9(?) == t0(=(([sym(PanoramiXNumDepths)] << 0x3) + [(([[ret(SecurityLookupDrawable)+16]] << 0x2) + sym(PanoramiXDepths))])-128), and falls through when t9(?) != t0(=(([sym(PanoramiXNumDepths)] << 0x3) + [(([[ret(SecurityLookupDrawable)+16]] << 0x2) + sym(PanoramiXDepths))])-128).
  The `bne` branch at 0x10063854 targets 0x100637cc, is taken when t8(?) != t0(=(([sym(PanoramiXNumDepths)] << 0x3) + [(([[ret(SecurityLookupDrawable)+16]] << 0x2) + sym(PanoramiXDepths))])-128), and falls through when t8(?) == t0(=(([sym(PanoramiXNumDepths)] << 0x3) + [(([[ret(SecurityLookupDrawable)+16]] << 0x2) + sym(PanoramiXDepths))])-128).
  The `beq` branch at 0x100638e4 targets 0x100633a4 and is always taken.
  The `beq` branch at 0x100638ec targets 0x1006343c and is always taken.
  The `beq` branch at 0x1006392c targets 0x10063890 and is always taken.
  The `beq` branch at 0x10063934 targets 0x1006339c and is always taken.
  The `beq` branch at 0x10063944 targets 0x10063660 and is always taken.
  The `beq` branch at 0x10063950 targets 0x100633a0 and is always taken.
  The `bne` branch at 0x1006399c targets 0x1006395c, is taken when a2(?) != t2(=(([sym(PanoramiXNumDepths)] << 0x3) + [(([[ret(SecurityLookupDrawable)+16]] << 0x2) + sym(PanoramiXDepths))])), and falls through when a2(?) == t2(=(([sym(PanoramiXNumDepths)] << 0x3) + [(([[ret(SecurityLookupDrawable)+16]] << 0x2) + sym(PanoramiXDepths))])).
  The `beq` branch at 0x100639a8 targets 0x100638e4 and is always taken.
  The `beq` branch at 0x100639f0 targets 0x1006339c, is taken when a2(?) == a5(=([[ret(SecurityLookupDrawable)+16]+20] + ([[ret(SecurityLookupDrawable)+16]+16]:2 << 0x3))), and falls through when a2(?) != a5(=([[ret(SecurityLookupDrawable)+16]+20] + ([[ret(SecurityLookupDrawable)+16]+16]:2 << 0x3))).
  The `beq` branch at 0x100639f8 targets 0x100639b0 and is always taken.
  The return at 0x100636b4 has v0 = [a0+40].
  The return at 0x10063700 has v0 = 0x9.
  The return at 0x10063720 has v0 = 0xb.
  The instructions from 0x1006349c to 0x1006349c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x100634e4 to 0x100634ec are not reached by any path from the entry, and their branches are not listed.
- `ShmRegisterFuncs` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10063d90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10063d90-0x10063db0 (32 bytes).
  It occupies 32 bytes.
  The `lw` at 0x10063d90 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0x10063dac stores 4 bytes to table(0x102caa00) +0x0.
  The return at 0x10063da8 has v0 = table(0x102c5d40).
- `LbxFreeOsBuffers` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10063db0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10063db0-0x10063f24 (372 bytes).
  It occupies 372 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x45c, including `lw` at 0x10063db8, `lw` at 0x10063ea8.
  2 such `lw` accesses load 4 bytes from table(0x102c71c0) +0x0, including `lw` at 0x10063df8, `lw` at 0x10063e60.
  6 such `lw` accesses load 4 bytes from sym(__us_rsthread_malloc) +0x0, including `lw` at 0x10063e00, `lw` at 0x10063e18, `lw` at 0x10063e40.
  2 such `sw` accesses store 4 bytes to table(0x102c71c0) +0x0, including `sw` at 0x10063e1c, `sw` at 0x10063e84.
  2 such `lw` accesses load 4 bytes from [a0+1116] +0x0, including `lw` at 0x10063ec0, `lw` at 0x10063f20.
  The `sw` at 0x10063ec4 stores 4 bytes to a0 (arg0 at entry) +0x45c.
  The `lw` at 0x10063ec8 loads 4 bytes from [a0+1116] +0x8.
  The `jalr` at 0x10063de4 calls __libc_lockmalloc with a0=?, a1=?, a2=[sym(__us_rsthread_malloc)], a3=?, a5=[[a0+1116]].
  The `jal` at 0x10063e04 calls realfree..NL [0x1025db70] with a0=entry(0x102c71c0), a1=?, a2=table(0x102c5d40), a3=[0x102c7240], a5=[sym(__us_rsthread_malloc)].
  The `jalr` at 0x10063e38 calls __libc_unlockmalloc with a0=?, a1=?, a2=table(0x102c5d40), a3=[0x102c7240], a5=[sym(__us_rsthread_malloc)].
  The `jalr` at 0x10063e4c calls __libc_lockmalloc with a0=?, a1=?, a2=?, a3=?, a5=[sym(__us_rsthread_malloc)].
  The `jal` at 0x10063e6c calls realfree..NL [0x1025db70] with a0=entry(0x102c71c0), a1=?, a2=table(0x102c5d40), a3=[0x102c7240], a5=[sym(__us_rsthread_malloc)].
  The `jalr` at 0x10063ea0 calls __libc_unlockmalloc with a0=?, a1=?, a2=table(0x102c5d40), a3=[0x102c7240], a5=[sym(__us_rsthread_malloc)].
  The `beq` branch at 0x10063dc0 targets 0x10063efc, is taken when s0(=[a0+1116]) == 0, and falls through when s0(=[a0+1116]) != 0.
  The `beq` branch at 0x10063ddc targets 0x10063f0c and is always taken.
  The `beq` branch at 0x10063dfc targets 0x10063e1c, is taken when a0(=entry(0x102c71c0)) == 0, and falls through when a0(=entry(0x102c71c0)) != 0.
  The `beq` branch at 0x10063e2c targets 0x10063e40, is taken when a5(=[sym(__us_rsthread_malloc)]) == 0, and falls through when a5(=[sym(__us_rsthread_malloc)]) != 0.
  The `beq` branch at 0x10063e44 targets 0x10063e54, is taken when a5(=[sym(__us_rsthread_malloc)]) == 0, and falls through when a5(=[sym(__us_rsthread_malloc)]) != 0.
  The `beq` branch at 0x10063e64 targets 0x10063e84, is taken when a0(=entry(0x102c71c0)) == 0, and falls through when a0(=entry(0x102c71c0)) != 0.
  The `beq` branch at 0x10063e94 targets 0x10063ea8, is taken when a5(=[sym(__us_rsthread_malloc)]) == 0, and falls through when a5(=[sym(__us_rsthread_malloc)]) != 0.
  The `beq` branch at 0x10063eb8 targets 0x10063ee4, is taken when s0(=[a0+1116]) == 0, and falls through when s0(=[a0+1116]) != 0.
  The `beq` branch at 0x10063ecc targets 0x10063e40, is taken when s2(=[[a0+1116]+8]) == 0, and falls through when s2(=[[a0+1116]+8]) != 0.
  The `bne` branch at 0x10063ed4 targets 0x10063de4, is taken when a2(=[sym(__us_rsthread_malloc)]) != 0, and falls through when a2(=[sym(__us_rsthread_malloc)]) == 0.
  The `beq` branch at 0x10063edc targets 0x10063df0 and is always taken.
  The `beq` branch at 0x10063f1c targets 0x10063ec4 and is always taken.
  The return at 0x10063f04 has v0 = ?.
- `SProcXineramaCreateWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100640a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100640a0-0x1006499c (2300 bytes).
  It occupies 2300 bytes.
  The `lw` at 0x100640a0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lbu` at 0x100640a4 loads 1 byte from [a0+8] +0x3.
  The `lbu` at 0x100640a8 loads 1 byte from [a0+8] +0x2.
  The `sb` at 0x100640ac stores 1 byte to [a0+8] +0x3.
  The `sb` at 0x100640b0 stores 1 byte to [a0+8] +0x2.
  The `lw` at 0x100640b4 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lbu` at 0x100640d4 loads 1 byte from [a0+8] +0x12.
  The `lbu` at 0x100640f8 loads 1 byte from [a0+8] +0x7.
  The `lbu` at 0x100640fc loads 1 byte from [a0+8] +0x4.
  The `sb` at 0x10064100 stores 1 byte to [a0+8] +0x7.
  The `lbu` at 0x10064104 loads 1 byte from [a0+8] +0x13.
  The `sb` at 0x10064108 stores 1 byte to [a0+8] +0x13.
  The `sb` at 0x1006410c stores 1 byte to [a0+8] +0x4.
  The `lbu` at 0x10064110 loads 1 byte from [a0+8] +0x1e.
  The `lbu` at 0x10064114 loads 1 byte from [a0+8] +0x1d.
  The `lbu` at 0x10064118 loads 1 byte from [a0+8] +0x1c.
  The `lbu` at 0x1006411c loads 1 byte from [a0+8] +0x1f.
  The `lbu` at 0x10064120 loads 1 byte from [a0+8] +0x18.
  The `lbu` at 0x10064124 loads 1 byte from [a0+8] +0x1b.
  The `sb` at 0x10064128 stores 1 byte to [a0+8] +0x18.
  The `lbu` at 0x1006412c loads 1 byte from [a0+8] +0xa.
  The `sb` at 0x10064130 stores 1 byte to [a0+8] +0x1b.
  The `lbu` at 0x10064134 loads 1 byte from [a0+8] +0x9.
  The `sb` at 0x10064138 stores 1 byte to [a0+8] +0x1c.
  The `lbu` at 0x1006413c loads 1 byte from [a0+8] +0xf.
  The `sb` at 0x10064140 stores 1 byte to [a0+8] +0x1f.
  The `lbu` at 0x10064144 loads 1 byte from [a0+8] +0xe.
  The `sb` at 0x10064148 stores 1 byte to [a0+8] +0x1e.
  The `lbu` at 0x1006414c loads 1 byte from [a0+8] +0x10.
  The `sb` at 0x10064150 stores 1 byte to [a0+8] +0x1d.
  The `lbu` at 0x10064154 loads 1 byte from [a0+8] +0x11.
  The `sb` at 0x10064158 stores 1 byte to [a0+8] +0x10.
  The `sb` at 0x1006415c stores 1 byte to [a0+8] +0xf.
  The `lbu` at 0x10064160 loads 1 byte from [a0+8] +0x1a.
  The `lbu` at 0x10064164 loads 1 byte from [a0+8] +0x19.
  The `sb` at 0x10064168 stores 1 byte to [a0+8] +0x19.
  The `lbu` at 0x1006416c loads 1 byte from [a0+8] +0xd.
  The `sb` at 0x10064170 stores 1 byte to [a0+8] +0x1a.
  The `lbu` at 0x10064174 loads 1 byte from [a0+8] +0xc.
  The `sb` at 0x10064178 stores 1 byte to [a0+8] +0xc.
  The `sb` at 0x1006417c stores 1 byte to [a0+8] +0xa.
  The `sb` at 0x10064180 stores 1 byte to [a0+8] +0x9.
  The `lbu` at 0x10064184 loads 1 byte from [a0+8] +0x16.
  The `lbu` at 0x10064188 loads 1 byte from [a0+8] +0x17.
  The `sb` at 0x1006418c stores 1 byte to [a0+8] +0x17.
  The `lbu` at 0x10064190 loads 1 byte from [a0+8] +0x8.
  The `sb` at 0x10064194 stores 1 byte to [a0+8] +0x16.
  The `lbu` at 0x10064198 loads 1 byte from [a0+8] +0xb.
  The `sb` at 0x1006419c stores 1 byte to [a0+8] +0xb.
  The `sb` at 0x100641a0 stores 1 byte to [a0+8] +0x11.
  The `sb` at 0x100641a4 stores 1 byte to [a0+8] +0xe.
  The `lbu` at 0x100641a8 loads 1 byte from [a0+8] +0x14.
  The `lbu` at 0x100641ac loads 1 byte from [a0+8] +0x15.
  The `sb` at 0x100641b0 stores 1 byte to [a0+8] +0x15.
  The `lbu` at 0x100641b4 loads 1 byte from [a0+8] +0x5.
  The `sb` at 0x100641b8 stores 1 byte to [a0+8] +0x8.
  The `sb` at 0x100641bc stores 1 byte to [a0+8] +0x14.
  The `lhu` at 0x100641c0 loads 2 bytes from [a0+8] +0x2.
  The `lbu` at 0x100641c4 loads 1 byte from [a0+8] +0x6.
  The `sb` at 0x100641cc stores 1 byte to [a0+8] +0xd.
  The `sb` at 0x100641d4 stores 1 byte to [a0+8] +0x6.
  The `sb` at 0x100641e4 stores 1 byte to [a0+8] +0x12.
  The `sb` at 0x100641ec stores 1 byte to [a0+8] +0x5.
  The `lbu` at 0x10064208 loads 1 byte from [a0+8] +0x43.
  The `lbu` at 0x1006420c loads 1 byte from [a0+8] +0x3d.
  The `lbu` at 0x10064210 loads 1 byte from [a0+8] +0x23.
  The `lbu` at 0x10064214 loads 1 byte from [a0+8] +0x20.
  The `sb` at 0x1006421c stores 1 byte to [a0+8] +0x23.
  The `sb` at 0x10064224 stores 1 byte to [a0+8] +0x20.
  204 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x10064230, `lbu` at 0x1006423c, `lbu` at 0x10064240.
  206 such `sb` accesses store 1 byte to ?, including `sb` at 0x10064234, `sb` at 0x10064238, `sb` at 0x10064244.
  The `lw` at 0x10064820 loads 4 bytes from sym(ProcXineramaVector) +0x4.
  The `jalr` at 0x10064824 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x100640d8 targets 0x100640f4, is taken when v0(=[a0+72]) >= 0x8 (unsigned), and falls through when v0(=[a0+72]) < 0x8 (unsigned).
  The `bne` branch at 0x100641f0 targets 0x10064760, is taken when t3(=[[a0+8]+2]:2-8) < 0x8 (unsigned), and falls through when t3(=[[a0+8]+2]:2-8) >= 0x8 (unsigned).
  The `bne` branch at 0x100641f8 targets 0x1006485c, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0x10064200 targets 0x1006485c, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0x1006433c targets 0x10064854, is taken when a1(?) < 0x8 (unsigned), and falls through when a1(?) >= 0x8 (unsigned).
  The `bne` branch at 0x10064450 targets 0x10064844, is taken when a1(?) < 0x8 (unsigned), and falls through when a1(?) >= 0x8 (unsigned).
  The `beq` branch at 0x10064564 targets 0x10064230, is taken when a1(?) >= 0x8 (unsigned), and falls through when a1(?) < 0x8 (unsigned).
  The `beq` branch at 0x10064774 targets 0x1006481c, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0x1006477c targets 0x10064788, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0x10064794 targets 0x10064978, is taken when t2(?) < 0x2 (signed), and falls through when t2(?) >= 0x2 (signed).
  The `beq` branch at 0x100647e4 targets 0x1006483c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x10064810 targets 0x100647c0, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x1006483c targets 0x10064818 and is always taken.
  The `beq` branch at 0x1006484c targets 0x10064570 and is always taken.
  The `beq` branch at 0x10064854 targets 0x10064570 and is always taken.
  The `bne` branch at 0x10064968 targets 0x10064760, is taken when t3(?) < 0x8 (unsigned), and falls through when t3(?) >= 0x8 (unsigned).
  The `beq` branch at 0x10064970 targets 0x1006485c and is always taken.
  The `beq` branch at 0x10064994 targets 0x1006481c and is always taken.
  The return at 0x100640ec has v0 = 0x10.
  The return at 0x10064834 has v0 = ret(?).
- `ProcDbeGetBackBufferAttributes..AIC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1006add0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1006add0-0x1006aeb8 (232 bytes).
  It occupies 232 bytes.
  The `lw` at 0x1006add0 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x1006ae00 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x1006ae10 loads 4 bytes from [a0+8] +0x4.
  The `lw` at 0x1006ae28 loads 4 bytes from ret(SecurityLookupIDByType) +0x0.
  The `lw` at 0x1006ae2c loads 4 bytes from [ret(SecurityLookupIDByType)] +0x4.
  The `lw` at 0x1006ae38 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0x1006ae44 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x1006aeac loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `jal` at 0x1006ae0c calls SecurityLookupIDByType [0x100d6140] with a0=a0 at entry (arg0), a1=[[a0+8]+4], a2=[0x102ca7cc], a3=0x1.
  The `jal` at 0x1006ae9c calls WriteToClient [0x100b3500] with a0=a0 at entry (arg0), a1=0x20, a2=sp-48, a3=?.
  The `beq` branch at 0x1006ade0 targets 0x1006adf0, is taken when at(=[a0+72]) == v0(=0x2), and falls through when at(=[a0+72]) != v0(=0x2).
  The `bne` branch at 0x1006ae18 targets 0x1006ae28, is taken when v0(=ret(SecurityLookupIDByType)) != 0, and falls through when v0(=ret(SecurityLookupIDByType)) == 0.
  The `beq` branch at 0x1006ae20 targets 0x1006ae34 and is always taken.
  The `beq` branch at 0x1006ae50 targets 0x1006ae90, is taken when a3(=[a0+16]) == 0, and falls through when a3(=[a0+16]) != 0.
  The return at 0x1006ade8 has v0 = 0x10.
  The return at 0x1006aeb0 has v0 = [a0+40].
- `SecurityLookupWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1006ce40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1006ce40-0x1006cf38 (248 bytes).
  It occupies 248 bytes.
  The `sw` at 0x1006ce40 stores 4 bytes to a1 (arg1 at entry) +0x18.
  The `lw` at 0x1006ce60 loads 4 bytes from a1 (arg1 at entry) +0x74.
  The `lw` at 0x1006ce8c loads 4 bytes from a1 (arg1 at entry) +0x30.
  The `lw` at 0x1006ce94 loads 4 bytes from a1 (arg1 at entry) +0x2c.
  The `lbu` at 0x1006ce98 loads 1 byte from [a1+44] +0x0.
  The `lbu` at 0x1006cedc loads 1 byte from ret(SecurityLookupIDByType) +0x0.
  The `sw` at 0x1006cf24 stores 4 bytes to a1 (arg1 at entry) +0x34.
  The `sw` at 0x1006cf28 stores 4 bytes to a1 (arg1 at entry) +0x38.
  The `sw` at 0x1006cf2c stores 4 bytes to a1 (arg1 at entry) +0x30.
  The `sw` at 0x1006cf34 stores 4 bytes to a1 (arg1 at entry) +0x2c.
  Calls SecurityLookupIDByType [0x100d6140] via direct with a0=a1 at entry (arg1), a1=a0 at entry (arg0), a2=0xffffffffc0000001, a3=a2 at entry (arg2) (`j` at 0x1006ce84).
  The `jal` at 0x1006cec8 calls SecurityLookupIDByType [0x100d6140] with a0=a1 at entry (arg1), a1=a0 at entry (arg0), a2=0xffffffffc0000001, a3=a2 at entry (arg2), a4=[a1+48].
  The `beq` branch at 0x1006ce58 targets 0x1006cf10, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x1006ce64 targets 0x1006ce8c, is taken when at(=[a1+116]) == 0, and falls through when at(=[a1+116]) != 0.
  The `bne` branch at 0x1006ce90 targets 0x1006ceb4, is taken when a4(=[a1+48]) != a0, and falls through when a4(=[a1+48]) == a0.
  The `beq` branch at 0x1006cea0 targets 0x1006cefc, is taken when a5(=[[a1+44]]:1) == 0, and falls through when a5(=[[a1+44]]:1) != 0.
  The `beq` branch at 0x1006ced4 targets 0x1006cee8, is taken when v0(=ret(SecurityLookupIDByType)) == 0, and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  The `beq` branch at 0x1006cee0 targets 0x1006cf24, is taken when a3(=[ret(SecurityLookupIDByType)]:1) == 0, and falls through when a3(=[ret(SecurityLookupIDByType)]:1) != 0.
  The `beq` branch at 0x1006cf30 targets 0x1006cee8 and is always taken.
  The return at 0x1006ceac has v0 = 0x0.
  The return at 0x1006cef4 has v0 = ret(SecurityLookupIDByType).
  The return at 0x1006cf08 has v0 = [a1+44].
  The return at 0x1006cf1c has v0 = 0x0.
- `XETSwReparentWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10070e10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10070e10-0x10070e84 (116 bytes).
  It occupies 116 bytes.
  The `lbu` at 0x10070e10 loads 1 byte from a0 (arg0 at entry) +0x3.
  The `lbu` at 0x10070e14 loads 1 byte from a0 (arg0 at entry) +0x2.
  The `lbu` at 0x10070e18 loads 1 byte from a0 (arg0 at entry) +0x7.
  The `lbu` at 0x10070e1c loads 1 byte from a0 (arg0 at entry) +0x4.
  The `lbu` at 0x10070e20 loads 1 byte from a0 (arg0 at entry) +0x6.
  The `lbu` at 0x10070e24 loads 1 byte from a0 (arg0 at entry) +0x5.
  The `lbu` at 0x10070e28 loads 1 byte from a0 (arg0 at entry) +0xb.
  The `lbu` at 0x10070e2c loads 1 byte from a0 (arg0 at entry) +0x8.
  The `lbu` at 0x10070e30 loads 1 byte from a0 (arg0 at entry) +0xa.
  The `lbu` at 0x10070e34 loads 1 byte from a0 (arg0 at entry) +0x9.
  The `lbu` at 0x10070e38 loads 1 byte from a0 (arg0 at entry) +0xd.
  The `lbu` at 0x10070e3c loads 1 byte from a0 (arg0 at entry) +0xc.
  The `lbu` at 0x10070e40 loads 1 byte from a0 (arg0 at entry) +0xf.
  The `lbu` at 0x10070e44 loads 1 byte from a0 (arg0 at entry) +0xe.
  The `sb` at 0x10070e48 stores 1 byte to a0 (arg0 at entry) +0xf.
  The `sb` at 0x10070e4c stores 1 byte to a0 (arg0 at entry) +0xe.
  The `sb` at 0x10070e50 stores 1 byte to a0 (arg0 at entry) +0xd.
  The `sb` at 0x10070e54 stores 1 byte to a0 (arg0 at entry) +0xc.
  The `sb` at 0x10070e58 stores 1 byte to a0 (arg0 at entry) +0xa.
  The `sb` at 0x10070e5c stores 1 byte to a0 (arg0 at entry) +0x9.
  The `sb` at 0x10070e60 stores 1 byte to a0 (arg0 at entry) +0xb.
  The `sb` at 0x10070e64 stores 1 byte to a0 (arg0 at entry) +0x8.
  The `sb` at 0x10070e68 stores 1 byte to a0 (arg0 at entry) +0x6.
  The `sb` at 0x10070e6c stores 1 byte to a0 (arg0 at entry) +0x5.
  The `sb` at 0x10070e70 stores 1 byte to a0 (arg0 at entry) +0x7.
  The `sb` at 0x10070e74 stores 1 byte to a0 (arg0 at entry) +0x4.
  The `sb` at 0x10070e78 stores 1 byte to a0 (arg0 at entry) +0x3.
  The `sb` at 0x10070e80 stores 1 byte to a0 (arg0 at entry) +0x2.
  The return at 0x10070e7c has v0 = [a0+2]:1.
- `MultibufferResetProc..NJC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10072430 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10072430-0x1007244c (28 bytes).
  It occupies 28 bytes.
  The `lw` at 0x10072438 loads 4 bytes from abs 0x102c5c08.
  The `sw` at 0x1007243c stores 4 bytes to abs 0x102ca8c4 (dbcTicketResType..87).
  The `sw` at 0x10072448 stores 4 bytes to sym(dbcWindowPrivateIndex) +0x0.
  The return at 0x10072444 has v0 = -0x1.
- `FindWindowWithOptional` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10073360 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10073360-0x10073378 (24 bytes).
  It occupies 24 bytes.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10073360, `lw` at 0x10073364.
  The `beq` branch at 0x10073368 targets 0x10073360, is taken when at(?) == 0, and falls through when at(?) != 0.
  The return at 0x10073370 has v0 = ?.
- `DeleteWindowFromAnyEvents` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100743e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100743e0-0x10074fcc (3052 bytes).
  It occupies 3052 bytes.
  The `lw` at 0x10074410 loads 4 bytes from sym(inputInfo) +0x10.
  The `lw` at 0x10074418 loads 4 bytes from [sym(inputInfo)+16] +0x2c.
  The `lw` at 0x1007441c loads 4 bytes from sym(inputInfo) +0xc.
  The `lw` at 0x10074428 loads 4 bytes from [sym(inputInfo)+12] +0x9c.
  The `lw` at 0x10074430 loads 4 bytes from [[sym(inputInfo)+16]+44] +0xc.
  The `lw` at 0x1007443c loads 4 bytes from [[sym(inputInfo)+16]+44] +0x28.
  3 such `lw` accesses load 4 bytes from [sym(inputInfo)+12] +0x2c, including `lw` at 0x10074448, `lw` at 0x10074478, `lw` at 0x10074f2c.
  The `lw` at 0x10074454 loads 4 bytes from [[sym(inputInfo)+12]+44] +0xc.
  The `lw` at 0x10074460 loads 4 bytes from [[sym(inputInfo)+12]+156] +0x0.
  The `lw` at 0x1007446c loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x10074488 loads 4 bytes from [[sym(inputInfo)+12]+156] +0x4.
  The `lw` at 0x100744a8 loads 4 bytes from [sym(inputInfo)+16] +0x94.
  The `lw` at 0x100744b0 loads 4 bytes from [[sym(inputInfo)+16]+148] +0x8.
  The `sw` at 0x100744bc stores 4 bytes to [[sym(inputInfo)+16]+148] +0x8.
  The `lw` at 0x100744cc loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `lw` at 0x100744e8 loads 4 bytes from table(0x102c5f98) +0x0.
  The `sw` at 0x100744f0 stores 4 bytes to table(0x102c5f98) +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x78, including `lw` at 0x100744f8, `lw` at 0x10074584, `lw` at 0x10074984.
  2 such `lw` accesses load 4 bytes from [a0+120] +0x14, including `lw` at 0x10074504, `lw` at 0x10074590.
  8 such `lw` accesses load 4 bytes from sym(clients) +0x0, including `lw` at 0x10074540, `lw` at 0x10074658, `lw` at 0x1007479c.
  65 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10074548, `lw` at 0x10074558, `lw` at 0x10074570.
  6 such `lw` accesses load 4 bytes from sym(WindowTable) +0x0, including `lw` at 0x10074554, `lw` at 0x100746b8, `lw` at 0x100748a0.
  20 such `lw` accesses load 4 bytes from [sym(WindowTable)] +0x0, including `lw` at 0x10074564, `lw` at 0x1007456c, `lw` at 0x100746dc.
  28 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10074568, `sw` at 0x10074578, `sw` at 0x10074664.
  10 such `lw` accesses load 4 bytes from [[sym(WindowTable)]] +0x4, including `lw` at 0x10074574, `lw` at 0x100746e0, `lw` at 0x10074804.
  2 such `lw` accesses load 4 bytes from [sym(clients)] +0x0, including `lw` at 0x100746c4, `lw` at 0x10074ac8.
  2 such `lw` accesses load 4 bytes from [[sym(clients)]] +0x30, including `lw` at 0x100746d0, `lw` at 0x10074ad4.
  2 such `lw` accesses load 4 bytes from [[sym(clients)]] +0x38, including `lw` at 0x100746d8, `lw` at 0x10074adc.
  2 such `sw` accesses store 4 bytes to [[sym(clients)]] +0x30, including `sw` at 0x100746e4, `sw` at 0x10074ae8.
  2 such `sw` accesses store 4 bytes to [[sym(clients)]] +0x2c, including `sw` at 0x100746ec, `sw` at 0x10074af0.
  6 such `lw` accesses load 4 bytes from sym(__us_rsthread_malloc) +0x0, including `lw` at 0x10074720, `lw` at 0x1007474c, `lw` at 0x10074764.
  2 such `lw` accesses load 4 bytes from table(0x102c71c0) +0x0, including `lw` at 0x10074744, `lw` at 0x10074b54.
  2 such `sw` accesses store 4 bytes to table(0x102c71c0) +0x0, including `sw` at 0x10074768, `sw` at 0x10074b78.
  2 such `lw` accesses load 4 bytes from [0x102c60fc] +0x8, including `lw` at 0x100747e8, `lw` at 0x10074bfc.
  2 such `sw` accesses store 4 bytes to [[sym(clients)]] +0x34, including `sw` at 0x100748f0, `sw` at 0x10074d10.
  2 such `sw` accesses store 4 bytes to [[sym(clients)]] +0x38, including `sw` at 0x100748f8, `sw` at 0x10074d18.
  2 such `lw` accesses load 4 bytes from [a0+120] +0x18, including `lw` at 0x10074910, `lw` at 0x10074994.
  The `lw` at 0x10074f1c loads 4 bytes from [sym(inputInfo)+16] +0x8c.
  The `lw` at 0x10074f40 loads 4 bytes from [sym(inputInfo)+12] +0x8c.
  The `lw` at 0x10074f58 loads 4 bytes from [[sym(inputInfo)+12]+156] +0x18.
  3 such `sw` accesses store 4 bytes to [[sym(inputInfo)+12]+156] +0x18, including `sw` at 0x10074f64, `sw` at 0x10074f9c, `sw` at 0x10074fb4.
  The `sw` at 0x10074f84 stores 4 bytes to [[sym(inputInfo)+12]+156] +0x4.
  3 such `sw` accesses store 4 bytes to [[sym(inputInfo)+12]+156] +0x0, including `sw` at 0x10074f8c, `sw` at 0x10074fa4, `sw` at 0x10074fbc.
  The `jalr` at 0x10074718 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10074730 calls __libc_lockmalloc with a0=?, a1=?, a2=?, a3=[0x102c7240].
  The `jal` at 0x10074750 calls realfree..NL [0x1025db70] with a0=entry(0x102c71c0), a1=?, a2=table(0x102c5d40), a3=[0x102c7240], a5=[sym(__us_rsthread_malloc)].
  The `jalr` at 0x10074784 calls __libc_unlockmalloc with a0=?, a1=?, a2=table(0x102c5d40), a3=[0x102c7240], a5=[sym(__us_rsthread_malloc)].
  The `jalr` at 0x100747f0 calls (unknown callee) with a0=?, a1=sp-192, a2=[0x102c60fc], a3=?, a6=[sym(clients)].
  The `jal` at 0x100748d8 calls FatalError [0x10094f20] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10074b28 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10074b40 calls __libc_lockmalloc with a0=?, a1=?, a2=?, a3=[0x102c7240].
  The `jal` at 0x10074b60 calls realfree..NL [0x1025db70] with a0=entry(0x102c71c0), a1=?, a2=table(0x102c5d40), a3=[0x102c7240], a5=[sym(__us_rsthread_malloc)].
  The `jalr` at 0x10074b94 calls __libc_unlockmalloc with a0=?, a1=?, a2=table(0x102c5d40), a3=[0x102c7240], a5=[sym(__us_rsthread_malloc)].
  The `jalr` at 0x10074c08 calls (unknown callee) with a0=?, a1=sp-192, a2=[0x102c60fc], a3=?, a5=0x1, a7=[sym(clients)].
  The `jal` at 0x10074cf8 calls FatalError [0x10094f20] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10074d20 calls DeleteWindowFromAnyExtEvents [0x1024dd90] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x10074f20 calls (unknown callee) with a0=[sym(inputInfo)+16], a1=a1 at entry (arg1), a2=[[sym(inputInfo)+16]+44], a3=a3 at entry (arg3).
  The `jalr` at 0x10074f44 calls (unknown callee) with a0=[sym(inputInfo)+12], a1=a0 at entry (arg0), a2=[[sym(inputInfo)+12]+44], a3=?.
  The `jal` at 0x10074f7c calls DoFocusEvents [0x10071a90] with a0=[sym(inputInfo)+12], a1=a0 at entry (arg0), a2=?, a3=one of 0x0, 0x3, a5=[[[sym(inputInfo)+12]+156]+4].
  The `jal` at 0x10074f94 calls DoFocusEvents [0x10071a90] with a0=[sym(inputInfo)+12], a1=a0 at entry (arg0), a2=0x0, a3=one of 0x0, 0x3, a5=[[[sym(inputInfo)+12]+156]+4].
  The `jal` at 0x10074fac calls DoFocusEvents [0x10071a90] with a0=[sym(inputInfo)+12], a1=a0 at entry (arg0), a2=0x1, a3=one of 0x0, 0x3, a4=0x2, a5=[[[sym(inputInfo)+12]+156]+4].
  The `beq` branch at 0x10074424 targets 0x10074448, is taken when a2(=[[sym(inputInfo)+16]+44]) == 0, and falls through when a2(=[[sym(inputInfo)+16]+44]) != 0.
  The `beq` branch at 0x10074434 targets 0x10074f1c, is taken when t8(=[[[sym(inputInfo)+16]+44]+12]) == t9(=a0), and falls through when t8(=[[[sym(inputInfo)+16]+44]+12]) != t9(=a0).
  The `beq` branch at 0x10074440 targets 0x10074f1c, is taken when ra(=[[[sym(inputInfo)+16]+44]+40]) == at(=a0), and falls through when ra(=[[[sym(inputInfo)+16]+44]+40]) != at(=a0).
  The `beq` branch at 0x1007444c targets 0x1007445c, is taken when a2(=[[sym(inputInfo)+12]+44]) == 0, and falls through when a2(=[[sym(inputInfo)+12]+44]) != 0.
  The `beq` branch at 0x10074458 targets 0x10074f40, is taken when v0(=[[[sym(inputInfo)+12]+44]+12]) == v1(=a0), and falls through when v0(=[[[sym(inputInfo)+12]+44]+12]) != v1(=a0).
  The `bne` branch at 0x10074464 targets 0x100744a8, is taken when a0(=[[[sym(inputInfo)+12]+156]]) != a1(=a0), and falls through when a0(=[[[sym(inputInfo)+12]+156]]) == a1(=a0).
  The `beq` branch at 0x10074470 targets 0x100744a8, is taken when a2(=[a0+24]) == 0, and falls through when a2(=[a0+24]) != 0.
  The `beq` branch at 0x1007447c targets 0x10074488, is taken when a3(=[[sym(inputInfo)+12]+44]) == 0, and falls through when a3(=[[sym(inputInfo)+12]+44]) != 0.
  The `beq` branch at 0x1007448c targets 0x10074f90, is taken when a5(=[[[sym(inputInfo)+12]+156]+4]) == 0, and falls through when a5(=[[[sym(inputInfo)+12]+156]+4]) != 0.
  The `beq` branch at 0x10074498 targets 0x10074f54, is taken when a5(=[[[sym(inputInfo)+12]+156]+4]) == a4(=0x2), and falls through when a5(=[[[sym(inputInfo)+12]+156]+4]) != a4(=0x2).
  The `beq` branch at 0x100744a0 targets 0x10074fa8, is taken when a5(=[[[sym(inputInfo)+12]+156]+4]) == s3(=0x1), and falls through when a5(=[[[sym(inputInfo)+12]+156]+4]) != s3(=0x1).
  The `bne` branch at 0x100744b4 targets 0x100744c4, is taken when a5(=[[[sym(inputInfo)+16]+148]+8]) != a6(=a0), and falls through when a5(=[[[sym(inputInfo)+16]+148]+8]) == a6(=a0).
  The `beq` branch at 0x100744c4 targets 0x10074d1c, is taken when a7(=a1) == 0, and falls through when a7(=a1) != 0.
  The `beq` branch at 0x100744d8 targets 0x100744f4, is taken when (a2(?) & 0x7) == 0, and falls through when (a2(?) & 0x7) != 0.
  The `beq` branch at 0x100744fc targets 0x10074f38, is taken when a2(=[a0+120]) == 0, and falls through when a2(=[a0+120]) != 0.
  The `beq` branch at 0x10074508 targets 0x100748fc, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x1007452c targets 0x10074598 and is always taken.
  The `beq` branch at 0x10074550 targets 0x1007457c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x1007455c targets 0x1007457c, is taken when a7(?) != s3(?), and falls through when a7(?) == s3(?).
  The `beq` branch at 0x1007457c targets 0x100748d0, is taken when a3(=one of 0x0, 0x1) == 0, and falls through when a3(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x10074588 targets 0x10074594, is taken when a2(=[a0+120]) == 0, and falls through when a2(=[a0+120]) != 0.
  The `beq` branch at 0x10074594 targets 0x100748fc, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x100745cc targets 0x100748d0, is taken when a6(?) >= 0x100 (signed), and falls through when a6(?) < 0x100 (signed).
  The `beq` branch at 0x100745e4 targets 0x100748d0, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x100745ec targets 0x10074d84, is taken when a2(?) == t9(=0x6), and falls through when a2(?) != t9(=0x6).
  The `beq` branch at 0x100745f4 targets 0x10074ddc, is taken when a2(?) == ra(=0x7), and falls through when a2(?) != ra(=0x7).
  The `beq` branch at 0x100745fc targets 0x10074e34, is taken when a2(?) == at(=0x8), and falls through when a2(?) != at(=0x8).
  The `beq` branch at 0x10074604 targets 0x10074e80, is taken when a2(?) == v0(=0x9), and falls through when a2(?) != v0(=0x9).
  The `beq` branch at 0x1007460c targets 0x10074ec0, is taken when a2(?) == v1(=0xa), and falls through when a2(?) != v1(=0xa).
  The `beq` branch at 0x10074614 targets 0x10074efc, is taken when a2(?) == a0(=0xb), and falls through when a2(?) != a0(=0xb).
  The `beq` branch at 0x10074630 targets 0x10074888, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x10074638 targets 0x10074654 and is always taken.
  The `beq` branch at 0x10074648 targets 0x10074540, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x1007465c targets 0x10074640, is taken when t8(?) != s3(?), and falls through when t8(?) == s3(?).
  The `beq` branch at 0x10074680 targets 0x100746f8, is taken when (s4(=0xffffffff80000000) & s1(?)) == 0, and falls through when (s4(=0xffffffff80000000) & s1(?)) != 0.
  The `beq` branch at 0x100746a0 targets 0x100746f8, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `blez` branch at 0x100746ac targets 0x100746f8, is taken when a2(=[0x102c5d70]) <= 0 (signed), and falls through when a2(=[0x102c5d70]) > 0 (signed).
  The `beq` branch at 0x100746bc targets 0x100746f0, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x100746c8 targets 0x100746f0, is taken when a2(=[[sym(clients)]]) == 0, and falls through when a2(=[[sym(clients)]]) != 0.
  The `bne` branch at 0x100746d4 targets 0x100748e8, is taken when t0(=[[[sym(clients)]]+48]) != a5(?), and falls through when t0(=[[[sym(clients)]]+48]) == a5(?).
  The `bnel` branch at 0x100746f0 targets 0x10074820, is taken when t1(?) != 0, and falls through when t1(?) == 0; its branch-likely delay slot `lw a2,0(a3)` at 0x100746f4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x100746f8 targets 0x10074720, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x10074724 targets 0x1007473c, is taken when at(=[sym(__us_rsthread_malloc)]) == 0, and falls through when at(=[sym(__us_rsthread_malloc)]) != 0.
  The `beq` branch at 0x10074748 targets 0x10074768, is taken when a0(=entry(0x102c71c0)) == 0, and falls through when a0(=entry(0x102c71c0)) != 0.
  The `beq` branch at 0x10074778 targets 0x1007478c, is taken when a5(=[sym(__us_rsthread_malloc)]) == 0, and falls through when a5(=[sym(__us_rsthread_malloc)]) != 0.
  The `beq` branch at 0x100747a8 targets 0x100747b4, is taken when a7(?) == t0(?), and falls through when a7(?) != t0(?).
  The `beq` branch at 0x100747b8 targets 0x100747f8, is taken when a2(=[0x102c60fc]) == 0, and falls through when a2(=[0x102c60fc]) != 0.
  The `beq` branch at 0x100747c8 targets 0x100747f8, is taken when t1(?) >= a3(?) (unsigned), and falls through when t1(?) < a3(?) (unsigned).
  The `beq` branch at 0x100747e0 targets 0x100747f8, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x100747f8 targets 0x10074644 and is always taken.
  The `beq` branch at 0x10074814 targets 0x100746f8, is taken when a3(?) == a7(=([sym(clients)] + ([0x102c5d70] << 0x2))), and falls through when a3(?) != a7(=([sym(clients)] + ([0x102c5d70] << 0x2))).
  The `beq` branch at 0x10074820 targets 0x10074848, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x1007482c targets 0x10074874, is taken when t3(?) != a5(?), and falls through when t3(?) == a5(?).
  The `beq` branch at 0x1007484c targets 0x10074814, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x10074858 targets 0x10074800, is taken when ra(?) == a5(?), and falls through when ra(?) != a5(?).
  The `bne` branch at 0x10074860 targets 0x10074814, is taken when t0(?) != a5(?), and falls through when t0(?) == a5(?).
  The `beq` branch at 0x1007486c targets 0x10074814 and is always taken.
  The `bne` branch at 0x10074874 targets 0x10074848, is taken when t0(?) != a5(?), and falls through when t0(?) == a5(?).
  The `beq` branch at 0x10074880 targets 0x10074848 and is always taken.
  The `beq` branch at 0x1007489c targets 0x100748d0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x100748a8 targets 0x100748d4, is taken when a7(?) != s3(?), and falls through when a7(?) == s3(?).
  The `beq` branch at 0x100748e0 targets 0x10074584 and is always taken.
  The `bne` branch at 0x100748e8 targets 0x100746f0, is taken when t0(=[[[sym(clients)]]+56]) != a5(?), and falls through when t0(=[[[sym(clients)]]+56]) == a5(?).
  The `beq` branch at 0x100748f4 targets 0x100746f0 and is always taken.
  The `beq` branch at 0x10074908 targets 0x10074f30, is taken when a2(=[a0+120]) == 0, and falls through when a2(=[a0+120]) != 0.
  The `beq` branch at 0x10074914 targets 0x10074d1c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x1007492c targets 0x10074fc0 and is always taken.
  The `beq` branch at 0x10074950 targets 0x1007497c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x1007495c targets 0x1007497c, is taken when a7(?) != s3(?), and falls through when a7(?) == s3(?).
  The `beq` branch at 0x1007497c targets 0x10074cf0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x1007498c targets 0x10074998, is taken when a2(=[a0+120]) == 0, and falls through when a2(=[a0+120]) != 0.
  The `beq` branch at 0x10074998 targets 0x10074d1c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x100749cc targets 0x10074cf0, is taken when a3(?) >= 0x100 (signed), and falls through when a3(?) < 0x100 (signed).
  The `beq` branch at 0x100749e8 targets 0x10074cf0, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x100749f0 targets 0x10074d58, is taken when a2(?) == t9(=0x6), and falls through when a2(?) != t9(=0x6).
  The `beq` branch at 0x100749f8 targets 0x10074db0, is taken when a2(?) == ra(=0x7), and falls through when a2(?) != ra(=0x7).
  The `beq` branch at 0x10074a00 targets 0x10074e08, is taken when a2(?) == at(=0x8), and falls through when a2(?) != at(=0x8).
  The `beq` branch at 0x10074a08 targets 0x10074e60, is taken when a2(?) == v0(=0x9), and falls through when a2(?) != v0(=0x9).
  The `beq` branch at 0x10074a10 targets 0x10074ea0, is taken when a2(?) == v1(=0xa), and falls through when a2(?) != v1(=0xa).
  The `beq` branch at 0x10074a18 targets 0x10074ee0, is taken when a2(?) == a0(=0xb), and falls through when a2(?) != a0(=0xb).
  The `beq` branch at 0x10074a34 targets 0x10074cac, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x10074a3c targets 0x10074a58 and is always taken.
  The `beq` branch at 0x10074a4c targets 0x10074940, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x10074a64 targets 0x10074a44, is taken when t8(?) != s3(?), and falls through when t8(?) == s3(?).
  The `beq` branch at 0x10074a84 targets 0x10074b08, is taken when (s4(=0xffffffff80000000) & s1(?)) == 0, and falls through when (s4(=0xffffffff80000000) & s1(?)) != 0.
  The `beq` branch at 0x10074aa4 targets 0x10074b08, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `blez` branch at 0x10074ab0 targets 0x10074b08, is taken when a2(=[0x102c5d70]) <= 0 (signed), and falls through when a2(=[0x102c5d70]) > 0 (signed).
  The `beq` branch at 0x10074ac0 targets 0x10074b00, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x10074acc targets 0x10074b00, is taken when a2(=[[sym(clients)]]) == 0, and falls through when a2(=[[sym(clients)]]) != 0.
  The `bne` branch at 0x10074ad8 targets 0x10074d08, is taken when t0(=[[[sym(clients)]]+48]) != a5(?), and falls through when t0(=[[[sym(clients)]]+48]) == a5(?).
  The `bnel` branch at 0x10074b00 targets 0x10074c3c, is taken when t1(?) != 0, and falls through when t1(?) == 0; its branch-likely delay slot `lw a2,0(a3)` at 0x10074b04 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x10074b08 targets 0x10074b30, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x10074b34 targets 0x10074b4c, is taken when at(=[sym(__us_rsthread_malloc)]) == 0, and falls through when at(=[sym(__us_rsthread_malloc)]) != 0.
  The `beq` branch at 0x10074b58 targets 0x10074b78, is taken when a0(=entry(0x102c71c0)) == 0, and falls through when a0(=entry(0x102c71c0)) != 0.
  The `beq` branch at 0x10074b88 targets 0x10074b9c, is taken when a5(=[sym(__us_rsthread_malloc)]) == 0, and falls through when a5(=[sym(__us_rsthread_malloc)]) != 0.
  The `beq` branch at 0x10074bbc targets 0x10074bc8, is taken when t0(?) == t1(?), and falls through when t0(?) != t1(?).
  The `beq` branch at 0x10074bcc targets 0x10074a48, is taken when a2(=[0x102c60fc]) == 0, and falls through when a2(=[0x102c60fc]) != 0.
  The `beq` branch at 0x10074bdc targets 0x10074a48, is taken when t2(?) >= a3(?) (unsigned), and falls through when t2(?) < a3(?) (unsigned).
  The `beq` branch at 0x10074bf4 targets 0x10074a48, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x10074c10 targets 0x10074a48 and is always taken.
  The `beq` branch at 0x10074c30 targets 0x10074b08, is taken when a3(?) == a7(=([sym(clients)] + ([0x102c5d70] << 0x2))), and falls through when a3(?) != a7(=([sym(clients)] + ([0x102c5d70] << 0x2))).
  The `beq` branch at 0x10074c3c targets 0x10074c64, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x10074c48 targets 0x10074c84, is taken when t8(?) != a5(?), and falls through when t8(?) == a5(?).
  The `beq` branch at 0x10074c68 targets 0x10074c30, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x10074c74 targets 0x10074c98, is taken when at(?) != a5(?), and falls through when at(?) == a5(?).
  The `beq` branch at 0x10074c7c targets 0x10074c20 and is always taken.
  The `bne` branch at 0x10074c84 targets 0x10074c64, is taken when t0(?) != a5(?), and falls through when t0(?) == a5(?).
  The `beq` branch at 0x10074c90 targets 0x10074c64 and is always taken.
  The `bne` branch at 0x10074c98 targets 0x10074c30, is taken when t0(?) != a5(?), and falls through when t0(?) == a5(?).
  The `beq` branch at 0x10074ca4 targets 0x10074c30 and is always taken.
  The `beq` branch at 0x10074cc0 targets 0x10074cf0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x10074ccc targets 0x10074cf4, is taken when a6(?) != s3(?), and falls through when a6(?) == s3(?).
  The `beq` branch at 0x10074d00 targets 0x10074984 and is always taken.
  The `bne` branch at 0x10074d08 targets 0x10074b00, is taken when t0(=[[[sym(clients)]]+56]) != a5(?), and falls through when t0(=[[[sym(clients)]]+56]) == a5(?).
  The `beq` branch at 0x10074d14 targets 0x10074b00 and is always taken.
  The `beq` branch at 0x10074d7c targets 0x10074a24 and is always taken.
  The `beq` branch at 0x10074da8 targets 0x1007461c and is always taken.
  The `beq` branch at 0x10074dd4 targets 0x10074a24 and is always taken.
  The `beq` branch at 0x10074e00 targets 0x1007461c and is always taken.
  The `beq` branch at 0x10074e2c targets 0x10074a24 and is always taken.
  The `beq` branch at 0x10074e58 targets 0x1007461c and is always taken.
  The `beq` branch at 0x10074e78 targets 0x10074a24 and is always taken.
  The `beq` branch at 0x10074e98 targets 0x1007461c and is always taken.
  The `beq` branch at 0x10074eb8 targets 0x10074a24 and is always taken.
  The `beq` branch at 0x10074ed8 targets 0x1007461c and is always taken.
  The `beq` branch at 0x10074ef4 targets 0x10074a24 and is always taken.
  The `beq` branch at 0x10074f14 targets 0x1007461c and is always taken.
  The `beq` branch at 0x10074f28 targets 0x1007444c and is always taken.
  The `beq` branch at 0x10074f30 targets 0x10074914 and is always taken.
  The `beq` branch at 0x10074f38 targets 0x10074508 and is always taken.
  The `beq` branch at 0x10074f4c targets 0x10074460 and is always taken.
  The `bgez` branch at 0x10074f70 targets 0x10074f5c, is taken when a4(?) >= 0 (signed), and falls through when a4(?) < 0 (signed).
  The `beq` branch at 0x10074f88 targets 0x100744a8 and is always taken.
  The `beq` branch at 0x10074fa0 targets 0x100744a8 and is always taken.
  The `beq` branch at 0x10074fb8 targets 0x100744a8 and is always taken.
  The `beq` branch at 0x10074fc4 targets 0x100749a4 and is always taken.
  The return at 0x10074d50 has v0 = ret(DeleteWindowFromAnyExtEvents).
  The instructions from 0x10074534 to 0x1007453c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x10074934 to 0x1007493c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x10074c18 to 0x10074c1c are not reached by any path from the entry, and their branches are not listed.
- `sgiCapPaintWindowBackground..ABE` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10075ba0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10075ba0-0x10075ca8 (264 bytes).
  It occupies 264 bytes.
  The `lw` at 0x10075bb4 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x10075bc4 loads 4 bytes from [a0+16] +0x1b4.
  2 such `lw` accesses load 4 bytes from ([[a0+16]+436] + ([0x102cf2c4] << 0x2)) +0x0, including `lw` at 0x10075bd0, `lw` at 0x10075bdc.
  The `lw` at 0x10075bd4 loads 4 bytes from [([[a0+16]+436] + ([0x102cf2c4] << 0x2))] +0x14.
  2 such `sw` accesses store 4 bytes to [a0+16] +0xd8, including `sw` at 0x10075bd8, `sw` at 0x10075c58.
  The `lw` at 0x10075be4 loads 4 bytes from [([[a0+16]+436] + ([0x102cf2c4] << 0x2))] +0x28.
  The `lw` at 0x10075bfc loads 4 bytes from [([[a0+16]+436] + ([0x102cf2c4] << 0x2))] +0x2c.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10075c10, `lw` at 0x10075c1c, `lw` at 0x10075c84.
  2 such `lw` accesses load 4 bytes from [a0+16] +0xd8, including `lw` at 0x10075c28, `lw` at 0x10075ca4.
  The `lw` at 0x10075c68 loads 4 bytes from [a0+16] +0x17c.
  The `lw` at 0x10075c80 loads 4 bytes from [a0+16] +0x168.
  The `jalr` at 0x10075c38 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0x10075c70 calls (unknown callee) with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x10075c8c calls (unknown callee) with a0=?, a1=?, a2=a1 at entry (arg1), a3=?.
  The `beq` branch at 0x10075bf8 targets 0x10075c2c, is taken when at(=[[([[a0+16]+436] + ([0x102cf2c4] << 0x2))]+40]) == 0, and falls through when at(=[[([[a0+16]+436] + ([0x102cf2c4] << 0x2))]+40]) != 0.
  The `beq` branch at 0x10075c00 targets 0x10075c2c, is taken when s0(=[[([[a0+16]+436] + ([0x102cf2c4] << 0x2))]+44]) == 0, and falls through when s0(=[[([[a0+16]+436] + ([0x102cf2c4] << 0x2))]+44]) != 0.
  The `beq` branch at 0x10075c14 targets 0x10075c68, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x10075c20 targets 0x10075c10, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x10075c78 targets 0x10075c94, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `bne` branch at 0x10075c98 targets 0x10075c10, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x10075ca0 targets 0x10075c2c and is always taken.
  The return at 0x10075c60 has v0 = ret(?).
- `nmbxCanSupportBuffers` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10079be0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10079be0-0x10079c50 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x10079be0 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `lw` at 0x10079bf8 loads 4 bytes from [a0+120] +0x0.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10079c04, `lw` at 0x10079c08, `lw` at 0x10079c14.
  The `lw` at 0x10079c30 loads 4 bytes from ret(lookupCapabilityByVisualID) +0x8.
  The `jal` at 0x10079c1c calls lookupCapabilityByVisualID [0x1020c970] with a0=?, a1=[0x102cac04], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10079bf0 targets 0x10079c04, is taken when v0(=[a0+120]) == 0, and falls through when v0(=[a0+120]) != 0.
  The `beq` branch at 0x10079bfc targets 0x10079c1c and is always taken.
  The `beq` branch at 0x10079c0c targets 0x10079c04, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x10079c28 targets 0x10079c40, is taken when v0(=ret(lookupCapabilityByVisualID)) == 0, and falls through when v0(=ret(lookupCapabilityByVisualID)) != 0.
  The return at 0x10079c38 has v0 = [ret(lookupCapabilityByVisualID)+8].
  The return at 0x10079c48 has v0 = 0x0.
- `ProcXineramaDestroySubwindows` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1007a5b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1007a5b0-0x1007a71c (364 bytes).
  It occupies 364 bytes.
  The `lw` at 0x1007a5b8 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x1007a5d0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x1007a604 loads 4 bytes from [a0+8] +0x4.
  The `lw` at 0x1007a620 loads 4 bytes from sym(XRT_WINDOW) +0x0.
  2 such `sw` accesses store 4 bytes to sym(panoramiXMode) +0x0, including `sw` at 0x1007a640, `sw` at 0x1007a6fc.
  The `lw` at 0x1007a680 loads 4 bytes from sym(ProcVector) +0x14.
  3 such `sw` accesses store 4 bytes to sym(panoramiXScreen0) +0x0, including `sw` at 0x1007a690, `sw` at 0x1007a6b4, `sw` at 0x1007a6b8.
  The `lw` at 0x1007a6a4 loads 4 bytes from ?.
  The `sw` at 0x1007a6ac stores 4 bytes to [a0+8] +0x4.
  The `jal` at 0x1007a61c calls SecurityLookupIDByType [0x100d6140] with a0=a0 at entry (arg0), a1=[[a0+8]+4], a2=[sym(XRT_WINDOW)], a3=0x4.
  The `jalr` at 0x1007a684 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1007a6bc calls XineramaDeliverVisibilityNotify [0x10197300] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1007a6dc calls XineramaDeliverExpose [0x100e7410] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1007a5d8 targets 0x1007a604, is taken when v1(=[a0+72]) == a1(=0x2), and falls through when v1(=[a0+72]) != a1(=0x2).
  The `beq` branch at 0x1007a630 targets 0x1007a700, is taken when v0(=ret(SecurityLookupIDByType)) == 0, and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  The `blez` branch at 0x1007a65c targets 0x1007a714, is taken when a3(=[0x102c5f1c]) <= 0 (signed), and falls through when a3(=[0x102c5f1c]) > 0 (signed).
  The `beq` branch at 0x1007a670 targets 0x1007a6a0 and is always taken.
  The `bne` branch at 0x1007a694 targets 0x1007a6bc, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0.
  The `beq` branch at 0x1007a69c targets 0x1007a6b8, is taken when s0(?) == s6(=ret(SecurityLookupIDByType)-8), and falls through when s0(?) != s6(=ret(SecurityLookupIDByType)-8).
  The `bne` branch at 0x1007a6a8 targets 0x1007a680, is taken when s4(=ret(SecurityLookupIDByType)) != s0(?), and falls through when s4(=ret(SecurityLookupIDByType)) == s0(?).
  The `beq` branch at 0x1007a6b0 targets 0x1007a680 and is always taken.
  The `beq` branch at 0x1007a6f8 targets 0x1007a5f4 and is always taken.
  The `beq` branch at 0x1007a70c targets 0x1007a5f4 and is always taken.
  The `beq` branch at 0x1007a714 targets 0x1007a6bc and is always taken.
  The return at 0x1007a5ec has v0 = 0x10.
  The return at 0x1007a5fc has v0 = one of ?, 0x3.
  The instructions from 0x1007a678 to 0x1007a67c are not reached by any path from the entry, and their branches are not listed.
- `InitModMap..CG` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1007cac0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1007cac0-0x1007cca4 (484 bytes).
  It occupies 484 bytes.
  2 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x150, including `sb` at 0x1007cac4, `sb` at 0x1007cb80.
  4 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1007cb48, `lbu` at 0x1007cb60, `lbu` at 0x1007cc20.
  3 such `sb` accesses store 1 byte to ?, including `sb` at 0x1007cb74, `sb` at 0x1007cc4c, `sb` at 0x1007cc54.
  The `sw` at 0x1007cb90 stores 4 bytes to a0 (arg0 at entry) +0x20.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x150, including `lbu` at 0x1007cb98, `lbu` at 0x1007cc30.
  The `lw` at 0x1007cc3c loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `jal` at 0x1007cb88 calls Xalloc [0x1020aeb0] with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?, a4=0x1.
  The `jalr` at 0x1007cbc4 calls bzero with a0=ret(Xalloc), a1=([a0+336]:1 << 0x3), a2=?, a3=?, a6=[a0+336]:1.
  The `beq` branch at 0x1007cb10 targets 0x1007cc94 and is always taken.
  The `beq` branch at 0x1007cb28 targets 0x1007cb84, is taken when a0(?) == s2(=0xf8), and falls through when a0(?) != s2(=0xf8).
  The `beq` branch at 0x1007cb34 targets 0x1007cb48 and is always taken.
  The `beq` branch at 0x1007cb40 targets 0x1007cb20, is taken when v0(?) == s0(=0x8), and falls through when v0(?) != s0(=0x8).
  The `beq` branch at 0x1007cb58 targets 0x1007cb40, is taken when (at(?) & a4(?)) == 0, and falls through when (at(?) & a4(?)) != 0.
  The `beq` branch at 0x1007cb70 targets 0x1007cb40, is taken when a6(?) >= a7(?) (signed), and falls through when a6(?) < a7(?) (signed).
  The `beq` branch at 0x1007cb7c targets 0x1007cb40 and is always taken.
  The `bne` branch at 0x1007cb94 targets 0x1007cbbc, is taken when v0(=ret(Xalloc)) != 0, and falls through when v0(=ret(Xalloc)) == 0.
  The `beq` branch at 0x1007cb9c targets 0x1007cbbc, is taken when a6(=[a0+336]:1) == 0, and falls through when a6(=[a0+336]:1) != 0.
  The `beq` branch at 0x1007cc28 targets 0x1007cc58, is taken when (t1(?) & a5(?)) == 0, and falls through when (t1(?) & a5(?)) != 0.
  The `bne` branch at 0x1007cc64 targets 0x1007cc20, is taken when a3(?) != s0(=0x8), and falls through when a3(?) == s0(=0x8).
  The `bne` branch at 0x1007cc78 targets 0x1007cc10, is taken when t0(?) != s2(=0xf8), and falls through when t0(?) == s2(=0xf8).
  The `beq` branch at 0x1007cc9c targets 0x1007cb34 and is always taken.
  The return at 0x1007cbb4 has v0 = 0x0.
  The return at 0x1007cc8c has v0 = 0x1.
  The instructions from 0x1007cb18 to 0x1007cb1c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1007cb3c to 0x1007cb3c are not reached by any path from the entry, and their branches are not listed.
- `SProcSetMBufferAttributes..GLC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10082010 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10082010-0x10082778 (1896 bytes).
  It occupies 1896 bytes.
  The `lw` at 0x10082018 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lbu` at 0x1008201c loads 1 byte from [a0+8] +0x3.
  The `lbu` at 0x10082020 loads 1 byte from [a0+8] +0x2.
  The `sb` at 0x10082024 stores 1 byte to [a0+8] +0x3.
  The `sb` at 0x10082028 stores 1 byte to [a0+8] +0x2.
  The `lw` at 0x1008202c loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lbu` at 0x10082040 loads 1 byte from [a0+8] +0x7.
  The `lbu` at 0x10082060 loads 1 byte from [a0+8] +0x4.
  The `sb` at 0x10082064 stores 1 byte to [a0+8] +0x4.
  The `sb` at 0x10082068 stores 1 byte to [a0+8] +0x7.
  The `lbu` at 0x10082074 loads 1 byte from [a0+8] +0xb.
  The `lbu` at 0x10082078 loads 1 byte from [a0+8] +0x8.
  The `lbu` at 0x1008207c loads 1 byte from [a0+8] +0xa.
  The `lbu` at 0x10082080 loads 1 byte from [a0+8] +0x9.
  The `sb` at 0x10082084 stores 1 byte to [a0+8] +0xa.
  The `sb` at 0x10082088 stores 1 byte to [a0+8] +0xb.
  The `lbu` at 0x1008208c loads 1 byte from [a0+8] +0x5.
  The `lhu` at 0x10082090 loads 2 bytes from [a0+8] +0x2.
  The `lbu` at 0x10082094 loads 1 byte from [a0+8] +0x6.
  The `sb` at 0x10082098 stores 1 byte to [a0+8] +0x5.
  The `sb` at 0x100820a4 stores 1 byte to [a0+8] +0x8.
  The `sb` at 0x100820ac stores 1 byte to [a0+8] +0x6.
  The `sb` at 0x100820b8 stores 1 byte to [a0+8] +0x9.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x29, including `lbu` at 0x100820d8, `lbu` at 0x1008264c.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x1d, including `lbu` at 0x100820dc, `lbu` at 0x100826ac.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x1c, including `lbu` at 0x100820e0, `lbu` at 0x100826bc.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x1a, including `lbu` at 0x100820e4, `lbu` at 0x100826c8.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x19, including `lbu` at 0x100820e8, `lbu` at 0x100826cc.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x1b, including `lbu` at 0x100820f0, `lbu` at 0x100826d8.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x18, including `lbu` at 0x100820f4, `lbu` at 0x100826dc.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x16, including `lbu` at 0x100820f8, `lbu` at 0x100826e8.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x15, including `lbu` at 0x100820fc, `lbu` at 0x100826ec.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x17, including `lbu` at 0x10082100, `lbu` at 0x100826f8.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x14, including `lbu` at 0x10082104, `lbu` at 0x100826fc.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x12, including `lbu` at 0x10082108, `lbu` at 0x10082708.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x11, including `lbu` at 0x1008210c, `lbu` at 0x1008270c.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x13, including `lbu` at 0x10082114, `lbu` at 0x10082718.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x10, including `lbu` at 0x10082118, `lbu` at 0x1008271c.
  2 such `lbu` accesses load 1 byte from [a0+8] +0xe, including `lbu` at 0x10082120, `lbu` at 0x10082728.
  2 such `lbu` accesses load 1 byte from [a0+8] +0xd, including `lbu` at 0x10082128, `lbu` at 0x1008272c.
  2 such `lbu` accesses load 1 byte from [a0+8] +0xf, including `lbu` at 0x10082130, `lbu` at 0x10082738.
  2 such `lbu` accesses load 1 byte from [a0+8] +0xc, including `lbu` at 0x10082138, `lbu` at 0x1008273c.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x20, including `lbu` at 0x10082140, `lbu` at 0x1008269c.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x23, including `lbu` at 0x10082144, `lbu` at 0x10082698.
  2 such `sb` accesses store 1 byte to [a0+8] +0x20, including `sb` at 0x10082148, `sb` at 0x100826a4.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x1f, including `lbu` at 0x1008214c, `lbu` at 0x100826b8.
  2 such `sb` accesses store 1 byte to [a0+8] +0x23, including `sb` at 0x10082154, `sb` at 0x100826a0.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x1e, including `lbu` at 0x10082158, `lbu` at 0x100826a8.
  89 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x10082170, `lbu` at 0x100821cc, `lbu` at 0x100821d0.
  110 such `sb` accesses store 1 byte to ?, including `sb` at 0x10082174, `sb` at 0x10082178, `sb` at 0x1008217c.
  The `lbu` at 0x10082648 loads 1 byte from [a0+8] +0x2a.
  The `sb` at 0x10082650 stores 1 byte to [a0+8] +0x2a.
  The `sb` at 0x10082654 stores 1 byte to [a0+8] +0x29.
  The `lbu` at 0x10082658 loads 1 byte from [a0+8] +0x2b.
  The `lbu` at 0x1008265c loads 1 byte from [a0+8] +0x28.
  The `sb` at 0x10082660 stores 1 byte to [a0+8] +0x2b.
  The `sb` at 0x10082664 stores 1 byte to [a0+8] +0x28.
  The `lbu` at 0x10082668 loads 1 byte from [a0+8] +0x26.
  The `lbu` at 0x1008266c loads 1 byte from [a0+8] +0x25.
  The `sb` at 0x10082670 stores 1 byte to [a0+8] +0x26.
  The `sb` at 0x10082674 stores 1 byte to [a0+8] +0x25.
  The `lbu` at 0x10082678 loads 1 byte from [a0+8] +0x27.
  The `lbu` at 0x1008267c loads 1 byte from [a0+8] +0x24.
  The `sb` at 0x10082680 stores 1 byte to [a0+8] +0x27.
  The `sb` at 0x10082684 stores 1 byte to [a0+8] +0x24.
  The `lbu` at 0x10082688 loads 1 byte from [a0+8] +0x22.
  The `lbu` at 0x1008268c loads 1 byte from [a0+8] +0x21.
  The `sb` at 0x10082690 stores 1 byte to [a0+8] +0x22.
  The `sb` at 0x10082694 stores 1 byte to [a0+8] +0x21.
  The `sb` at 0x100826b0 stores 1 byte to [a0+8] +0x1e.
  The `sb` at 0x100826b4 stores 1 byte to [a0+8] +0x1d.
  The `sb` at 0x100826c0 stores 1 byte to [a0+8] +0x1f.
  The `sb` at 0x100826c4 stores 1 byte to [a0+8] +0x1c.
  The `sb` at 0x100826d0 stores 1 byte to [a0+8] +0x1a.
  The `sb` at 0x100826d4 stores 1 byte to [a0+8] +0x19.
  The `sb` at 0x100826e0 stores 1 byte to [a0+8] +0x1b.
  The `sb` at 0x100826e4 stores 1 byte to [a0+8] +0x18.
  The `sb` at 0x100826f0 stores 1 byte to [a0+8] +0x16.
  The `sb` at 0x100826f4 stores 1 byte to [a0+8] +0x15.
  The `sb` at 0x10082700 stores 1 byte to [a0+8] +0x17.
  The `sb` at 0x10082704 stores 1 byte to [a0+8] +0x14.
  The `sb` at 0x10082710 stores 1 byte to [a0+8] +0x12.
  The `sb` at 0x10082714 stores 1 byte to [a0+8] +0x11.
  The `sb` at 0x10082720 stores 1 byte to [a0+8] +0x13.
  The `sb` at 0x10082724 stores 1 byte to [a0+8] +0x10.
  The `sb` at 0x10082730 stores 1 byte to [a0+8] +0xe.
  The `sb` at 0x10082734 stores 1 byte to [a0+8] +0xd.
  The `sb` at 0x10082744 stores 1 byte to [a0+8] +0xf.
  The `sb` at 0x10082750 stores 1 byte to [a0+8] +0xc.
  Calls ProcSetMBufferAttributes..DKC [0x10217120] via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=a0 at entry (arg0) (`j` at 0x100825b8).
  The `beq` branch at 0x10082044 targets 0x10082060, is taken when at(=[a0+72]) >= 0x3 (unsigned), and falls through when at(=[a0+72]) < 0x3 (unsigned).
  The `bne` branch at 0x100820bc targets 0x100824e0, is taken when a5(=[[a0+8]+2]:2-3) < 0x8 (unsigned), and falls through when a5(=[[a0+8]+2]:2-3) >= 0x8 (unsigned).
  The `bne` branch at 0x100820c4 targets 0x10082648, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0x1008227c targets 0x100825cc, is taken when s4(?) < 0x8 (unsigned), and falls through when s4(?) >= 0x8 (unsigned).
  The `beq` branch at 0x10082390 targets 0x10082170, is taken when s4(?) >= 0x8 (unsigned), and falls through when s4(?) < 0x8 (unsigned).
  The `beq` branch at 0x100824f8 targets 0x100825a4, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `bne` branch at 0x10082500 targets 0x1008250c, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x10082514 targets 0x10082754, is taken when s6(?) < 0x2 (signed), and falls through when s6(?) >= 0x2 (signed).
  The `beq` branch at 0x10082564 targets 0x100825c0, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x10082590 targets 0x10082540, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x100825c4 targets 0x100825a0 and is always taken.
  The `beq` branch at 0x10082640 targets 0x10082410 and is always taken.
  The `beq` branch at 0x1008274c targets 0x100824e0 and is always taken.
  The `beq` branch at 0x10082770 targets 0x100825a4 and is always taken.
  The return at 0x10082058 has v0 = 0x10.
- `AccessUnmapSubwindows` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10082780 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10082780-0x10082864 (228 bytes).
  It occupies 228 bytes.
  The `lw` at 0x10082780 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x10082788 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x100827dc loads 4 bytes from [a0+8] +0x4.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x100827fc, `lw` at 0x1008284c.
  The `sw` at 0x10082808 stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `lw` at 0x10082838 loads 4 bytes from a0 (arg0 at entry) +0x58.
  The `lbu` at 0x1008283c loads 1 byte from ?.
  The `lw` at 0x10082840 loads 4 bytes from [a0+88] +0x0.
  The `jal` at 0x100827d8 calls SecurityLookupWindow [0x1006ce40] with a0=[[a0+8]+4], a1=a0 at entry (arg0), a2=0x0, a3=a3 at entry (arg3).
  The `jal` at 0x10082814 calls CheckWindowAccess [0x1018ed00] with a0=0x1, a1=a0 at entry (arg0), a2=ret(SecurityLookupWindow), a3=0x0.
  The `jalr` at 0x10082850 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x100827a4 targets 0x100827c8, is taken when v1(=[a0+72]) == a1(=0x2), and falls through when v1(=[a0+72]) != a1(=0x2).
  The `bne` branch at 0x100827e0 targets 0x1008280c, is taken when v0(=ret(SecurityLookupWindow)) != 0, and falls through when v0(=ret(SecurityLookupWindow)) == 0.
  The `bne` branch at 0x1008281c targets 0x1008282c, is taken when v0(=ret(CheckWindowAccess)) != 0, and falls through when v0(=ret(CheckWindowAccess)) == 0.
  The `beq` branch at 0x10082824 targets 0x100827b8 and is always taken.
  The `beq` branch at 0x1008285c targets 0x100827b8 and is always taken.
  The return at 0x100827b0 has v0 = 0x10.
  The return at 0x100827c0 has v0 = one of 0x3, ret(?).
  The return at 0x10082804 has v0 = 0x3.
- `ShmInfoAddWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1008b560 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1008b560-0x1008b6b8 (344 bytes).
  It occupies 344 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0x1008b564, `lw` at 0x1008b628.
  7 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1008b5bc, `lw` at 0x1008b5e0, `lw` at 0x1008b5f0.
  The `sw` at 0x1008b62c stores 4 bytes to ret(ShmInfoAlloc..KJ) +0x0.
  The `sw` at 0x1008b634 stores 4 bytes to ret(ShmInfoAlloc..KJ) +0x4.
  The `sw` at 0x1008b63c stores 4 bytes to ret(ShmInfoAlloc..KJ) +0x8.
  2 such `sw` accesses store 4 bytes to ret(ShmInfoAlloc..KJ) +0xc, including `sw` at 0x1008b64c, `sw` at 0x1008b6a4.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1008b650, `sw` at 0x1008b660, `sw` at 0x1008b6ac.
  The `sw` at 0x1008b668 stores 4 bytes to a0 (arg0 at entry) +0x80.
  The `jal` at 0x1008b60c calls ShmInfoAlloc..KJ [0x10173f20] with a0=0x10, a1=?, a2=?, a3=?.
  The `jal` at 0x1008b690 calls FatalError [0x10094f20] with a0=0x10290788, a1=?, a2=?, a3=?, a4=[a0+4].
  The `beq` branch at 0x1008b5cc targets 0x1008b6b0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x1008b5d8 targets 0x1008b5ec and is always taken.
  The `beq` branch at 0x1008b5e4 targets 0x1008b60c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x1008b5f8 targets 0x1008b5e0, is taken when a2(?) < a4(=[a0+4]) (unsigned), and falls through when a2(?) >= a4(=[a0+4]) (unsigned).
  The `beq` branch at 0x1008b604 targets 0x1008b68c, is taken when a5(?) == a4(=[a0+4]), and falls through when a5(?) != a4(=[a0+4]).
  The `beq` branch at 0x1008b618 targets 0x1008b678, is taken when v0(=ret(ShmInfoAlloc..KJ)) == 0, and falls through when v0(=ret(ShmInfoAlloc..KJ)) != 0.
  The `beq` branch at 0x1008b640 targets 0x1008b6a0, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x1008b698 targets 0x1008b60c and is always taken.
  The `beq` branch at 0x1008b6a8 targets 0x1008b654 and is always taken.
  The `beq` branch at 0x1008b6b0 targets 0x1008b60c and is always taken.
  The return at 0x1008b670 has v0 = 0x1.
  The return at 0x1008b684 has v0 = 0x0.
- `SGICapCaptureGLWindows` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1008d7c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1008d7c0-0x1008d814 (84 bytes).
  It occupies 84 bytes.
  The `lw` at 0x1008d7d4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x1008d7dc loads 4 bytes from [a0] +0x0.
  The `lw` at 0x1008d7e0 loads 4 bytes from sym(WindowTable) +0x0.
  The `lw` at 0x1008d800 loads 4 bytes from ([sym(WindowTable)] + ([[a0]] << 0x2)) +0x0.
  The `jal` at 0x1008d7fc calls TraverseTree [0x101cc0f0] with a0=[([sym(WindowTable)] + ([[a0]] << 0x2))], a1=0x10152680, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0x1008d80c has v0 = ret(TraverseTree).
- `SProcDbeSwapBuffers..KIC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1008e5b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1008e5b0-0x1008e644 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0x1008e5b0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lbu` at 0x1008e5b4 loads 1 byte from [a0+8] +0x3.
  The `lbu` at 0x1008e5b8 loads 1 byte from [a0+8] +0x2.
  The `sb` at 0x1008e5bc stores 1 byte to [a0+8] +0x3.
  The `sb` at 0x1008e5c0 stores 1 byte to [a0+8] +0x2.
  The `lw` at 0x1008e5c4 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lbu` at 0x1008e5cc loads 1 byte from [a0+8] +0x4.
  The `lbu` at 0x1008e5d0 loads 1 byte from [a0+8] +0x7.
  The `sb` at 0x1008e5e4 stores 1 byte to [a0+8] +0x7.
  The `sb` at 0x1008e5e8 stores 1 byte to [a0+8] +0x4.
  The `lbu` at 0x1008e5ec loads 1 byte from [a0+8] +0x6.
  The `lbu` at 0x1008e5f0 loads 1 byte from [a0+8] +0x5.
  The `sb` at 0x1008e5f4 stores 1 byte to [a0+8] +0x6.
  The `sb` at 0x1008e5f8 stores 1 byte to [a0+8] +0x5.
  The `lw` at 0x1008e5fc loads 4 bytes from [a0+8] +0x4.
  The `lbu` at 0x1008e610 loads 1 byte from [a0+8] +0xa.
  The `lbu` at 0x1008e614 loads 1 byte from [a0+8] +0x9.
  The `sb` at 0x1008e618 stores 1 byte to [a0+8] +0xa.
  The `sb` at 0x1008e61c stores 1 byte to [a0+8] +0x9.
  The `lbu` at 0x1008e620 loads 1 byte from [a0+8] +0xb.
  The `lbu` at 0x1008e628 loads 1 byte from [a0+8] +0x8.
  The `sb` at 0x1008e630 stores 1 byte to [a0+8] +0xb.
  The `sb` at 0x1008e638 stores 1 byte to [a0+8] +0x8.
  Calls ProcDbeSwapBuffers..NHC [0x1025b770] via direct with a0=a0 at entry (arg0), a1=[[a0+8]+5]:1, a2=?, a3=[a0+8], a4=[[a0+8]+4] (`j` at 0x1008e63c).
  The `beq` branch at 0x1008e5d4 targets 0x1008e5e4, is taken when at(=[a0+72]) >= 0x2 (unsigned), and falls through when at(=[a0+72]) < 0x2 (unsigned).
  The `beq` branch at 0x1008e600 targets 0x1008e63c, is taken when a4(=[[a0+8]+4]) == 0, and falls through when a4(=[[a0+8]+4]) != 0.
  The `bne` branch at 0x1008e634 targets 0x1008e610, is taken when a2(?) < a4(=[[a0+8]+4]) (unsigned), and falls through when a2(?) >= a4(=[[a0+8]+4]) (unsigned).
  The return at 0x1008e5dc has v0 = 0x10.
- `ProcXineramaCreateWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1008e8c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1008e8c0-0x1008f314 (2644 bytes).
  It occupies 2644 bytes.
  The `lw` at 0x1008e8c4 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x1008e8dc loads 4 bytes from a0 (arg0 at entry) +0x8.
  4 such `lw` accesses load 4 bytes from [a0+8] +0x1c, including `lw` at 0x1008e8f4, `lw` at 0x1008e9c4, `lw` at 0x1008ea00.
  2 such `lw` accesses load 4 bytes from [a0+8] +0x8, including `lw` at 0x1008e988, `lw` at 0x1008ed40.
  3 such `lw` accesses load 4 bytes from sym(XRT_WINDOW) +0x0, including `lw` at 0x1008e9a4, `lw` at 0x1008ec00, `lw` at 0x1008ef78.
  4 such `lhu` accesses load 2 bytes from [a0+8] +0x16, including `lhu` at 0x1008e9b0, `lhu` at 0x1008ec88, `lhu` at 0x1008ed1c.
  The `lw` at 0x1008e9d4 loads 4 bytes from [a0+8] +0x20.
  2 such `lw` accesses load 4 bytes from sym(XRT_PIXMAP) +0x0, including `lw` at 0x1008e9f4, `lw` at 0x1008eaa8.
  23 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1008ea8c, `lw` at 0x1008eb40, `lw` at 0x1008ee54.
  The `lw` at 0x1008eb60 loads 4 bytes from sym(XRT_COLORMAP) +0x0.
  The `sw` at 0x1008ebe4 stores 4 bytes to ret(Xalloc) +0x9c.
  The `sw` at 0x1008ebec stores 4 bytes to ret(Xalloc) +0xa0.
  The `sw` at 0x1008ebfc stores 4 bytes to ret(Xalloc) +0x88.
  The `sb` at 0x1008ec30 stores 1 byte to ret(Xalloc) +0x8c.
  8 such `sb` accesses store 1 byte to ?, including `sb` at 0x1008ec4c, `sb` at 0x1008ec54, `sb` at 0x1008ec58.
  2 such `sb` accesses store 1 byte to ret(Xalloc) +0x84, including `sb` at 0x1008ec80, `sb` at 0x1008f2e8.
  2 such `sw` accesses store 4 bytes to ret(Xalloc) +0x80, including `sw` at 0x1008ec84, `sw` at 0x1008f2ec.
  2 such `sb` accesses store 1 byte to ret(Xalloc) +0xa4, including `sb` at 0x1008ec90, `sb` at 0x1008f2f4.
  2 such `lw` accesses load 4 bytes from [a0+8] +0x4, including `lw` at 0x1008ec94, `lw` at 0x1008f2f8.
  3 such `sw` accesses store 4 bytes to ret(Xalloc) +0x0, including `sw` at 0x1008ec9c, `sw` at 0x1008f048, `sw` at 0x1008f300.
  The `lw` at 0x1008ed2c loads 4 bytes from [a0+8] +0x18.
  The `lw` at 0x1008ed34 loads 4 bytes from sym(WindowTable) +0x0.
  The `lh` at 0x1008ed38 loads 2 bytes from [a0+8] +0xe.
  The `lw` at 0x1008ed3c loads 4 bytes from [sym(WindowTable)] +0x0.
  The `lw` at 0x1008ed44 loads 4 bytes from [[sym(WindowTable)]] +0x4.
  The `lh` at 0x1008ed50 loads 2 bytes from [a0+8] +0xc.
  2 such `sw` accesses store 4 bytes to sym(panoramiXMode) +0x0, including `sw` at 0x1008edd0, `sw` at 0x1008ef68.
  The `lw` at 0x1008ee04 loads 4 bytes from sym(ProcVector) +0x4.
  3 such `sw` accesses store 4 bytes to sym(panoramiXScreen0) +0x0, including `sw` at 0x1008ee30, `sw` at 0x1008ef04, `sw` at 0x1008ef58.
  The `sw` at 0x1008ee5c stores 4 bytes to [a0+8] +0x4.
  The `sw` at 0x1008ee68 stores 4 bytes to [a0+8] +0x8.
  The `lw` at 0x1008ee70 loads 4 bytes from sym(PanoramiXNumVisuals) +0x0.
  The `lw` at 0x1008ee80 loads 4 bytes from sym(PanoramiXVisuals) +0x0.
  The `sw` at 0x1008eec8 stores 4 bytes to [a0+8] +0x20.
  6 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1008eed8, `sw` at 0x1008eef0, `sw` at 0x1008f04c.
  2 such `sw` accesses store 4 bytes to [a0+8] +0x18, including `sw` at 0x1008ef20, `sw` at 0x1008f2c8.
  The `lw` at 0x1008ef2c loads 4 bytes from sym(panoramiXdataPtr) +0x0.
  The `sh` at 0x1008ef44 stores 2 bytes to [a0+8] +0xc.
  The `sh` at 0x1008ef54 stores 2 bytes to [a0+8] +0xe.
  The `sw` at 0x1008f03c stores 4 bytes to ret(Xalloc) +0xc.
  The `sw` at 0x1008f040 stores 4 bytes to ret(Xalloc) +0x4.
  The `sw` at 0x1008f044 stores 4 bytes to ret(Xalloc) +0x8.
  The `lw` at 0x1008f080 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lbu` at 0x1008f26c loads 1 byte from ret(SecurityLookupIDByType) +0xa4.
  The `sh` at 0x1008f274 stores 2 bytes to [a0+8] +0x16.
  The `jal` at 0x1008e9a0 calls SecurityLookupIDByType [0x100d6140] with a0=a0 at entry (arg0), a1=[[a0+8]+8], a2=[sym(XRT_WINDOW)], a3=0x2, a4=0x3f, a5=0x104104105.
  The `jal` at 0x1008e9f0 calls SecurityLookupIDByType [0x100d6140] with a0=a0 at entry (arg0), a1=[[a0+8]+32], a2=[sym(XRT_PIXMAP)], a3=0x1, a5=0x1.
  The `jal` at 0x1008eaa4 calls SecurityLookupIDByType [0x100d6140] with a0=a0 at entry (arg0), a1=?, a2=[sym(XRT_PIXMAP)], a3=0x1.
  The `jal` at 0x1008eb5c calls SecurityLookupIDByType [0x100d6140] with a0=a0 at entry (arg0), a1=?, a2=[sym(XRT_COLORMAP)], a3=0x1.
  The `jal` at 0x1008ebbc calls Xalloc [0x1020aeb0] with a0=0xa8, a1=?, a2=?, a3=?.
  The `jalr` at 0x1008ee08 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1008eeac calls ErrorF [0x10094ec0] with a0=?, a1=?, a2=?, a3=?, a4=([sym(PanoramiXNumVisuals)] << 0x2).
  The `jal` at 0x1008ef80 calls AddResource [0x1010ec30] with a0=?, a1=[sym(XRT_WINDOW)], a2=?, a3=?.
  The `jal` at 0x1008ef94 calls Xfree [0x101fc9c0] with a0=?, a1=sym(panoramiXMode), a2=?, a3=?.
  The `jal` at 0x1008f028 calls Xalloc [0x1020aeb0] with a0=0x10, a1=?, a2=0x9, a3=0xa, a4=0xb.
  The `jal` at 0x1008f07c calls FakeClientID [0x10069920] with a0=[a0], a1=[0x102c5f1c], a2=?, a3=?.
  The `jal` at 0x1008f0d4 calls RebuildTable..ID [0x101c6ee0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1008f100 calls (unknown callee) with a0=?, a1=ret(FakeClientID), a2=?, a3=?.
  The `jal` at 0x1008f21c calls ErrorF [0x10094ec0] with a0=?, a1=ret(FakeClientID), a2=[0x102ca824], a3=?.
  The `jal` at 0x1008f228 calls FatalError [0x10094f20] with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x1008e8e4 targets 0x1008eb8c, is taken when at(=[a0+72]) < 0x8 (unsigned), and falls through when at(=[a0+72]) >= 0x8 (unsigned).
  The `beq` branch at 0x1008e964 targets 0x1008e988, is taken when a0(=[a0+72]-8) == a1(?), and falls through when a0(=[a0+72]-8) != a1(?).
  The `beq` branch at 0x1008e9a8 targets 0x1008ecd8, is taken when v0(=ret(SecurityLookupIDByType)) == 0, and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  The `beq` branch at 0x1008e9b4 targets 0x1008f268, is taken when at(=[[a0+8]+22]:2) == 0, and falls through when at(=[[a0+8]+22]:2) != 0.
  The `beq` branch at 0x1008e9c0 targets 0x1008f240, is taken when a3(=0x2) == at(?), and falls through when a3(=0x2) != at(?).
  The `beq` branch at 0x1008e9cc targets 0x1008f260, is taken when (v1(=[[a0+8]+28]) & 0x1) == 0, and falls through when (v1(=[[a0+8]+28]) & 0x1) != 0.
  The `beq` branch at 0x1008e9d8 targets 0x1008f298, is taken when a1(=[[a0+8]+32]) == 0, and falls through when a1(=[[a0+8]+32]) != 0.
  The `beq` branch at 0x1008e9e0 targets 0x1008ecf0, is taken when a1(=[[a0+8]+32]) == a5(=0x1), and falls through when a1(=[[a0+8]+32]) != a5(=0x1).
  The `beq` branch at 0x1008e9f8 targets 0x1008f2b0, is taken when v0(=ret(SecurityLookupIDByType)) == 0, and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  The `beq` branch at 0x1008ea0c targets 0x1008f28c, is taken when (v1(=[[a0+8]+28]) & 0x4) == 0, and falls through when (v1(=[[a0+8]+28]) & 0x4) != 0.
  The `beq` branch at 0x1008ea90 targets 0x1008ecd0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1008eab0 targets 0x1008f2a0, is taken when v0(=ret(SecurityLookupIDByType)) == 0, and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  The `beq` branch at 0x1008eac0 targets 0x1008eba4, is taken when (v1(=[[a0+8]+28]) & 0x2000) == 0, and falls through when (v1(=[[a0+8]+28]) & 0x2000) != 0.
  The `beq` branch at 0x1008eb44 targets 0x1008ecf8, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x1008eb68 targets 0x1008ebb0, is taken when v0(=ret(SecurityLookupIDByType)) != 0, and falls through when v0(=ret(SecurityLookupIDByType)) == 0.
  The `beq` branch at 0x1008ebc8 targets 0x1008f278, is taken when v0(=ret(Xalloc)) == 0, and falls through when v0(=ret(Xalloc)) != 0.
  The `bne` branch at 0x1008ec04 targets 0x1008f2e4, is taken when a1(=[0x102c5f1c]) < 0x1 (signed), and falls through when a1(=[0x102c5f1c]) >= 0x1 (signed).
  The `beq` branch at 0x1008ec1c targets 0x1008ec34, is taken when (a1(=[0x102c5f1c]) & 0x1) == 0, and falls through when (a1(=[0x102c5f1c]) & 0x1) != 0.
  The `beq` branch at 0x1008ec38 targets 0x1008ec7c, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x1008ec40 targets 0x1008f304, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x1008ec5c targets 0x1008f238, is taken when at(?) == a0(=([0x102c5f1c] + ret(Xalloc))-2), and falls through when at(?) != a0(=([0x102c5f1c] + ret(Xalloc))-2).
  The `bne` branch at 0x1008ec6c targets 0x1008ec54, is taken when v1(?) != a0(=([0x102c5f1c] + ret(Xalloc))-2), and falls through when v1(?) == a0(=([0x102c5f1c] + ret(Xalloc))-2).
  The `bne` branch at 0x1008ec98 targets 0x1008ed1c, is taken when a1(=[0x102c5f1c]) < 0x2 (signed), and falls through when a1(=[0x102c5f1c]) >= 0x2 (signed).
  The `beq` branch at 0x1008ecc8 targets 0x1008f078 and is always taken.
  The `beq` branch at 0x1008ecd0 targets 0x1008eabc and is always taken.
  The `beq` branch at 0x1008ecf0 targets 0x1008ea04 and is always taken.
  The `beq` branch at 0x1008ecfc targets 0x1008ebb0 and is always taken.
  The `beq` branch at 0x1008ed24 targets 0x1008f2c4, is taken when a5(=0x2) == a6(=[[a0+8]+22]:2), and falls through when a5(=0x2) != a6(=[[a0+8]+22]:2).
  The `beq` branch at 0x1008ed64 targets 0x1008f2cc, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x1008edf8 targets 0x1008ee4c and is always taken.
  The `bne` branch at 0x1008ee2c targets 0x1008ef5c, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0.
  The `beq` branch at 0x1008ee44 targets 0x1008ef58, is taken when s1(?) == ra(?), and falls through when s1(?) != ra(?).
  The `bne` branch at 0x1008ee64 targets 0x1008ef24, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x1008ee6c targets 0x1008eeb4, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `blez` branch at 0x1008ee78 targets 0x1008eea8, is taken when at(=[sym(PanoramiXNumVisuals)]) <= 0 (signed), and falls through when at(=[sym(PanoramiXNumVisuals)]) > 0 (signed).
  The `beq` branch at 0x1008ee98 targets 0x1008ef08, is taken when v0(?) == s0(?), and falls through when v0(?) != s0(?).
  The `bne` branch at 0x1008eea0 targets 0x1008ee90, is taken when at(?) != a1(=(([sym(PanoramiXNumVisuals)] << 0x2) + [sym(PanoramiXVisuals)])), and falls through when at(?) == a1(=(([sym(PanoramiXNumVisuals)] << 0x2) + [sym(PanoramiXVisuals)])).
  The `beq` branch at 0x1008eebc targets 0x1008eecc, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x1008eecc targets 0x1008eedc, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1008eee4 targets 0x1008eef4, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0x1008eef8 targets 0x1008ee04, is taken when a7(?) != s1(?), and falls through when a7(?) == s1(?).
  The `beq` branch at 0x1008ef00 targets 0x1008ee00 and is always taken.
  The `beq` branch at 0x1008ef14 targets 0x1008eeac, is taken when at(?) == t2(=-0x1), and falls through when at(?) != t2(=-0x1).
  The `beq` branch at 0x1008ef1c targets 0x1008eeb4 and is always taken.
  The `beq` branch at 0x1008ef50 targets 0x1008ee6c and is always taken.
  The `bne` branch at 0x1008ef64 targets 0x1008ef90, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x1008ef88 targets 0x1008efa0 and is always taken.
  The `beq` branch at 0x1008efe0 targets 0x1008f110, is taken when at(?) == v1(=0x6), and falls through when at(?) != v1(=0x6).
  The `beq` branch at 0x1008efec targets 0x1008f13c, is taken when at(?) == a0(=0x7), and falls through when at(?) != a0(=0x7).
  The `beq` branch at 0x1008eff4 targets 0x1008f180, is taken when at(?) == a1(=0x8), and falls through when at(?) != a1(=0x8).
  The `beq` branch at 0x1008effc targets 0x1008f1ac, is taken when at(?) == a2(=0x9), and falls through when at(?) != a2(=0x9).
  The `beq` branch at 0x1008f004 targets 0x1008f1cc, is taken when at(?) == a3(=0xa), and falls through when at(?) != a3(=0xa).
  The `beq` branch at 0x1008f00c targets 0x1008f1ec, is taken when at(?) == a4(=0xb), and falls through when at(?) != a4(=0xb).
  The `beq` branch at 0x1008f030 targets 0x1008f0e4, is taken when v0(=ret(Xalloc)) == 0, and falls through when v0(=ret(Xalloc)) != 0.
  The `beq` branch at 0x1008f05c targets 0x1008f168, is taken when (s7(=0x40000000) & s3(=ret(FakeClientID))) == 0, and falls through when (s7(=0x40000000) & s3(=ret(FakeClientID))) != 0.
  The `beq` branch at 0x1008f070 targets 0x1008ed04, is taken when s5(?) >= a1(=[0x102c5f1c]) (signed), and falls through when s5(?) < a1(=[0x102c5f1c]) (signed).
  The `beq` branch at 0x1008f0ac targets 0x1008f208, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x1008f0c0 targets 0x1008efd4, is taken when t8(?) < t9(?) (signed), and falls through when t8(?) >= t9(?) (signed).
  The `beq` branch at 0x1008f0cc targets 0x1008efd8, is taken when at(?) >= 0xb (signed), and falls through when at(?) < 0xb (signed).
  The `beq` branch at 0x1008f0dc targets 0x1008efd4 and is always taken.
  The `beq` branch at 0x1008f108 targets 0x1008f068 and is always taken.
  The `beq` branch at 0x1008f134 targets 0x1008f018 and is always taken.
  The `beq` branch at 0x1008f160 targets 0x1008f018 and is always taken.
  The `bne` branch at 0x1008f170 targets 0x1008f064, is taken when s3(=ret(FakeClientID)) < v1(?) (unsigned), and falls through when s3(=ret(FakeClientID)) >= v1(?) (unsigned).
  The `beq` branch at 0x1008f178 targets 0x1008f064 and is always taken.
  The `beq` branch at 0x1008f1a4 targets 0x1008f018 and is always taken.
  The `beq` branch at 0x1008f1c4 targets 0x1008f018 and is always taken.
  The `beq` branch at 0x1008f1e4 targets 0x1008f018 and is always taken.
  The `beq` branch at 0x1008f200 targets 0x1008f018 and is always taken.
  The `beq` branch at 0x1008f230 targets 0x1008f0b4 and is always taken.
  The `beq` branch at 0x1008f238 targets 0x1008ec74 and is always taken.
  The `beq` branch at 0x1008f24c targets 0x1008e9c8, is taken when (v1(=[[a0+8]+28]) & v0(=-0x5a21)) == 0, and falls through when (v1(=[[a0+8]+28]) & v0(=-0x5a21)) != 0.
  The `beq` branch at 0x1008f258 targets 0x1008e978 and is always taken.
  The `beq` branch at 0x1008f260 targets 0x1008ea08 and is always taken.
  The `beq` branch at 0x1008f270 targets 0x1008e9bc and is always taken.
  The `beq` branch at 0x1008f284 targets 0x1008e978 and is always taken.
  The `beq` branch at 0x1008f290 targets 0x1008eabc and is always taken.
  The `beq` branch at 0x1008f298 targets 0x1008ea04 and is always taken.
  The `beq` branch at 0x1008f2a8 targets 0x1008e978 and is always taken.
  The `beq` branch at 0x1008f2bc targets 0x1008e978 and is always taken.
  The `beq` branch at 0x1008f2c4 targets 0x1008ed30 and is always taken.
  The `beq` branch at 0x1008f2dc targets 0x1008ef5c and is always taken.
  The `beq` branch at 0x1008f2fc targets 0x1008ed1c and is always taken.
  The `beq` branch at 0x1008f30c targets 0x1008ec7c and is always taken.
  The return at 0x1008e980 has v0 = one of 0x4, 0x8, 0xb, 0x10.
  The return at 0x1008eb84 has v0 = 0xc.
  The return at 0x1008eb9c has v0 = 0x10.
  The return at 0x1008ece8 has v0 = 0x3.
  The return at 0x1008efcc has v0 = ?.
- `CreateImageBuffers` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10090b70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10090b70-0x10090fe0 (1136 bytes).
  It occupies 1136 bytes.
  The `lw` at 0x10090b70 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `lw` at 0x10090b88 loads 4 bytes from [a0+120] +0x0.
  16 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10090bb0, `lw` at 0x10090bb4, `lw` at 0x10090bc0.
  The `lw` at 0x10090bdc loads 4 bytes from ret(lookupCapabilityByVisualID) +0x8.
  2 such `sw` accesses store 4 bytes to ret(Xalloc) +0x4, including `sw` at 0x10090c58, `sw` at 0x10090d48.
  The `sw` at 0x10090c64 stores 4 bytes to ret(Xalloc) +0x1c.
  2 such `sw` accesses store 4 bytes to ret(Xalloc) +0x0, including `sw` at 0x10090c68, `sw` at 0x10090d50.
  The `lw` at 0x10090c70 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0x10090d44 stores 4 bytes to ret(Xalloc) +0x8.
  The `sw` at 0x10090d54 stores 4 bytes to ret(Xalloc) +0xc.
  16 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10090d58, `sw` at 0x10090d7c, `sw` at 0x10090d88.
  The `lw` at 0x10090fa4 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `sw` at 0x10090fbc stores 4 bytes to ([a0+132] + ([0x102cc3a8] << 0x2)) +0x0.
  The `jal` at 0x10090bc8 calls lookupCapabilityByVisualID [0x1020c970] with a0=?, a1=[0x102ca7e0], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10090bf0 calls DestroyImageBuffers [0x10275970] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a7=0x8.
  The `jal` at 0x10090c10 calls Xalloc [0x1020aeb0] with a0=?, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x10090c6c calls AddResource [0x1010ec30] with a0=[a0+4], a1=[0x102ca7f0], a2=ret(Xalloc), a3=ret(Xalloc)+32, a7=0xb.
  The `jal` at 0x10090d30 calls Xalloc [0x1020aeb0] with a0=0x10, a1=?, a2=?, a3=?, a6=0x6.
  The `jal` at 0x10090df8 calls RebuildTable..ID [0x101c6ee0] with a0=?, a1=?, a2=?, a3=?, a6=0x6.
  The `jal` at 0x10090f18 calls ErrorF [0x10094ec0] with a0=?, a1=?, a2=[0x102ca7ec], a3=a0 at entry (arg0).
  The `jal` at 0x10090f24 calls FatalError [0x10094f20] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10090f4c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10090fcc calls Xfree [0x101fc9c0] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10090b80 targets 0x10090ba0, is taken when v0(=[a0+120]) == 0, and falls through when v0(=[a0+120]) != 0.
  The `beq` branch at 0x10090b98 targets 0x10090bc8 and is always taken.
  The `beq` branch at 0x10090bb8 targets 0x10090bb0, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x10090bd4 targets 0x10090c34, is taken when v0(=ret(lookupCapabilityByVisualID)) == 0, and falls through when v0(=ret(lookupCapabilityByVisualID)) != 0.
  The `bne` branch at 0x10090be4 targets 0x10090c38, is taken when v1(=[ret(lookupCapabilityByVisualID)+8]) < 0x2 (unsigned), and falls through when v1(=[ret(lookupCapabilityByVisualID)+8]) >= 0x2 (unsigned).
  The `bne` branch at 0x10090c20 targets 0x10090c4c, is taken when v0(=ret(Xalloc)) != 0, and falls through when v0(=ret(Xalloc)) == 0.
  The `beq` branch at 0x10090c2c targets 0x10090c44 and is always taken.
  The `beq` branch at 0x10090c74 targets 0x10090fc8, is taken when v0(=ret(AddResource)) == 0, and falls through when v0(=ret(AddResource)) != 0.
  The `blez` branch at 0x10090ca4 targets 0x10090f58, is taken when a4(=a1) <= 0 (signed), and falls through when a4(=a1) > 0 (signed).
  The `beq` branch at 0x10090cd8 targets 0x10090d8c and is always taken.
  The `beq` branch at 0x10090cec targets 0x10090e08, is taken when a7(?) == a6(=0x6), and falls through when a7(?) != a6(=0x6).
  The `beq` branch at 0x10090cf8 targets 0x10090e4c, is taken when a7(?) == t0(=0x7), and falls through when a7(?) != t0(=0x7).
  The `beq` branch at 0x10090d00 targets 0x10090e78, is taken when a7(?) == t1(=0x8), and falls through when a7(?) != t1(=0x8).
  The `beq` branch at 0x10090d08 targets 0x10090ea4, is taken when a7(?) == t2(=0x9), and falls through when a7(?) != t2(=0x9).
  The `beq` branch at 0x10090d10 targets 0x10090ec4, is taken when a7(?) == t3(=0xa), and falls through when a7(?) != t3(=0xa).
  The `beq` branch at 0x10090d18 targets 0x10090ee4, is taken when a7(?) == t8(=0xb), and falls through when a7(?) != t8(=0xb).
  The `beq` branch at 0x10090d38 targets 0x10090f34, is taken when v0(=ret(Xalloc)) == 0, and falls through when v0(=ret(Xalloc)) != 0.
  The `beq` branch at 0x10090d78 targets 0x10090e34, is taken when (s8(=0x40000000) & s4(?)) == 0, and falls through when (s8(=0x40000000) & s4(?)) != 0.
  The `beq` branch at 0x10090d84 targets 0x10090f58, is taken when s1(?) == v1(=a1), and falls through when s1(?) != v1(=a1).
  The `beq` branch at 0x10090dd0 targets 0x10090f04, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x10090de4 targets 0x10090ce0, is taken when t8(?) < t9(?) (signed), and falls through when t8(?) >= t9(?) (signed).
  The `beq` branch at 0x10090df0 targets 0x10090ce4, is taken when a7(?) >= 0xb (signed), and falls through when a7(?) < 0xb (signed).
  The `beq` branch at 0x10090e00 targets 0x10090ce0 and is always taken.
  The `beq` branch at 0x10090e2c targets 0x10090d20 and is always taken.
  The `bne` branch at 0x10090e3c targets 0x10090d80, is taken when s4(?) < t1(?) (unsigned), and falls through when s4(?) >= t1(?) (unsigned).
  The `beq` branch at 0x10090e44 targets 0x10090d80 and is always taken.
  The `beq` branch at 0x10090e70 targets 0x10090d20 and is always taken.
  The `beq` branch at 0x10090e9c targets 0x10090d20 and is always taken.
  The `beq` branch at 0x10090ebc targets 0x10090d20 and is always taken.
  The `beq` branch at 0x10090edc targets 0x10090d20 and is always taken.
  The `beq` branch at 0x10090efc targets 0x10090d20 and is always taken.
  The `beq` branch at 0x10090f2c targets 0x10090dd8 and is always taken.
  The `beq` branch at 0x10090fd8 targets 0x10090c40 and is always taken.
  The return at 0x10090c38 has v0 = 0x8.
  The return at 0x10090c44 has v0 = 0xb.
  The return at 0x10090fc0 has v0 = 0x0.
- `ProcReparentWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100912b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100912b0-0x100913f4 (324 bytes).
  It occupies 324 bytes.
  The `lw` at 0x100912b0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x100912b8 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x10091308 loads 4 bytes from [a0+8] +0x4.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1009133c, `lw` at 0x10091358, `lw` at 0x1009136c.
  The `lw` at 0x10091354 loads 4 bytes from ret(SecurityLookupWindow) +0x10.
  The `lbu` at 0x1009135c loads 1 byte from ret(SecurityLookupWindow) +0x1.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x10091364, `lbu` at 0x100913d8.
  2 such `lh` accesses load 2 bytes from ?, including `lh` at 0x10091394, `lh` at 0x100913a0.
  The `lw` at 0x100913a8 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lbu` at 0x100913d4 loads 1 byte from ret(SecurityLookupWindow) +0x2.
  The `jal` at 0x10091304 calls SecurityLookupWindow [0x1006ce40] with a0=[[a0+8]+4], a1=a0 at entry (arg0), a2=0x2, a3=a3 at entry (arg3).
  The `jal` at 0x10091338 calls SecurityLookupWindow [0x1006ce40] with a0=?, a1=a0 at entry (arg0), a2=0x2, a3=?, a5=0x3.
  The `jal` at 0x1009139c calls ReparentWindow [0x1009bb80] with a0=?, a1=ret(SecurityLookupWindow), a2=?, a3=?, a4=a0 at entry (arg0), a6=[ret(SecurityLookupWindow)+1]:1, a7=0x2.
  The `beq` branch at 0x100912d4 targets 0x100912f4, is taken when v1(=[a0+72]) == a1(=0x4), and falls through when v1(=[a0+72]) != a1(=0x4).
  The `bne` branch at 0x10091310 targets 0x1009132c, is taken when v0(=ret(SecurityLookupWindow)) != 0, and falls through when v0(=ret(SecurityLookupWindow)) == 0.
  The `beq` branch at 0x10091344 targets 0x100913c4, is taken when v0(=ret(SecurityLookupWindow)) == 0, and falls through when v0(=ret(SecurityLookupWindow)) != 0.
  The `bne` branch at 0x10091360 targets 0x100913bc, is taken when a1(?) != a2(=[ret(SecurityLookupWindow)+16]), and falls through when a1(?) == a2(=[ret(SecurityLookupWindow)+16]).
  The `beq` branch at 0x10091374 targets 0x100913d4, is taken when t0(?) == t1(=0x1), and falls through when t0(?) != t1(=0x1).
  The `beq` branch at 0x1009137c targets 0x1009138c, is taken when a7(=0x2) == a5(?), and falls through when a7(=0x2) != a5(?).
  The `beq` branch at 0x10091384 targets 0x100913cc, is taken when a7(=0x2) == a6(=[ret(SecurityLookupWindow)+1]:1), and falls through when a7(=0x2) != a6(=[ret(SecurityLookupWindow)+1]:1).
  The `beq` branch at 0x100913ac targets 0x100913ec, is taken when a5(=[a0+40]) == 0, and falls through when a5(=[a0+40]) != 0.
  The `beq` branch at 0x100913b4 targets 0x100912e8 and is always taken.
  The `beq` branch at 0x100913bc targets 0x100912e8 and is always taken.
  The `beq` branch at 0x100913c4 targets 0x100912e8 and is always taken.
  The `beq` branch at 0x100913cc targets 0x100912e8 and is always taken.
  The `beq` branch at 0x100913dc targets 0x1009137c, is taken when t0(?) == t1(=[ret(SecurityLookupWindow)+2]:1), and falls through when t0(?) != t1(=[ret(SecurityLookupWindow)+2]:1).
  The `beq` branch at 0x100913e4 targets 0x100912e8 and is always taken.
  The `beq` branch at 0x100913ec targets 0x100912ec and is always taken.
  The return at 0x100912e0 has v0 = 0x10.
  The return at 0x100912ec has v0 = one of ?, ret(ReparentWindow).
  The return at 0x10091324 has v0 = 0x3.
- `GetSpriteWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10091530 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10091530-0x10091540 (16 bytes).
  It occupies 16 bytes.
  The `lw` at 0x1009153c loads 4 bytes from abs 0x102c6004 (sprite+28).
  The return at 0x10091538 has v0 = [0x102c6004].
- `FontFileUnregisterBitmapSource` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10095250 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10095250-0x1009545c (524 bytes).
  It occupies 524 bytes.
  18 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10095280, `lw` at 0x100952d8, `lw` at 0x100952f8.
  17 such `sw` accesses store 4 bytes to ?, including `sw` at 0x100952e0, `sw` at 0x10095308, `sw` at 0x10095310.
  2 such `lw` accesses load 4 bytes from sym(__us_rsthread_malloc) +0x0, including `lw` at 0x10095398, `lw` at 0x100953f8.
  The `lw` at 0x100953c8 loads 4 bytes from table(0x102c71c0) +0x0.
  The `sw` at 0x100953fc stores 4 bytes to table(0x102c71c0) +0x0.
  The `jalr` at 0x100953ac calls __libc_lockmalloc with a0=?, a1=?, a2=[0x102c7308]-1, a3=?.
  The `jal` at 0x100953d8 calls realfree..NL [0x1025db70] with a0=entry(0x102c71c0), a1=?, a2=?, a3=?.
  The `jalr` at 0x1009541c calls __libc_unlockmalloc with a0=?, a1=?, a2=[sym(__us_rsthread_malloc)], a3=?.
  The `blez` branch at 0x10095268 targets 0x10095294, is taken when t0(=[0x102c7308]) <= 0 (signed), and falls through when t0(=[0x102c7308]) > 0 (signed).
  The `beq` branch at 0x10095284 targets 0x100952a0, is taken when a1(?) == a0, and falls through when a1(?) != a0.
  The `bne` branch at 0x1009528c targets 0x10095280, is taken when at(?) != v0(=(([0x102c7308] << 0x2) + [0x102c7300])), and falls through when at(?) == v0(=(([0x102c7308] << 0x2) + [0x102c7300])).
  The `beq` branch at 0x100952ac targets 0x1009538c, is taken when a2(=[0x102c7308]-1) == 0, and falls through when a2(=[0x102c7308]-1) != 0.
  The `blez` branch at 0x100952b8 targets 0x10095294, is taken when a0(?) <= 0 (signed), and falls through when a0(?) > 0 (signed).
  The `beq` branch at 0x100952c8 targets 0x100952e4, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x100952dc targets 0x100952d0, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x100952e8 targets 0x10095378, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x100952f0 targets 0x10095438, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x10095340 targets 0x10095380, is taken when a1(?) == v0(=(([0x102c7308]-1 << 0x2) + [0x102c7300])-16), and falls through when a1(?) != v0(=(([0x102c7308]-1 << 0x2) + [0x102c7300])-16).
  The `bne` branch at 0x10095368 targets 0x10095320, is taken when a3(?) != v0(=(([0x102c7308]-1 << 0x2) + [0x102c7300])-16), and falls through when a3(?) == v0(=(([0x102c7308]-1 << 0x2) + [0x102c7300])-16).
  The `beq` branch at 0x10095378 targets 0x10095298 and is always taken.
  The `beq` branch at 0x10095384 targets 0x10095370 and is always taken.
  The `beq` branch at 0x1009538c targets 0x10095428, is taken when s0(=[0x102c7300]) == 0, and falls through when s0(=[0x102c7300]) != 0.
  The `beq` branch at 0x1009539c targets 0x100953bc, is taken when t9(=[sym(__us_rsthread_malloc)]) == 0, and falls through when t9(=[sym(__us_rsthread_malloc)]) != 0.
  The `beq` branch at 0x100953cc targets 0x100953f8, is taken when a0(=entry(0x102c71c0)) == 0, and falls through when a0(=entry(0x102c71c0)) != 0.
  The `beq` branch at 0x1009540c targets 0x10095428, is taken when a2(=[sym(__us_rsthread_malloc)]) == 0, and falls through when a2(=[sym(__us_rsthread_malloc)]) != 0.
  The `beq` branch at 0x10095454 targets 0x10095378 and is always taken.
  The return at 0x10095298 has v0 = one of ?, (([0x102c7308]-1 << 0x2) + [0x102c7300])-16.
  The return at 0x10095430 has v0 = one of (([0x102c7308] << 0x2) + [0x102c7300]), [0x102c7240], ret(__libc_unlockmalloc).
- `XvDestroyWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10095540 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10095540-0x100956a8 (360 bytes).
  It occupies 360 bytes.
  The `lw` at 0x1009554c loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x1009555c loads 4 bytes from [a0+16] +0x1b4.
  The `lw` at 0x1009556c loads 4 bytes from ([[a0+16]+436] + ([0x102caa74] << 0x2)) +0x0.
  The `lw` at 0x10095574 loads 4 bytes from [([[a0+16]+436] + ([0x102caa74] << 0x2))] +0x8.
  The `lw` at 0x10095578 loads 4 bytes from [([[a0+16]+436] + ([0x102caa74] << 0x2))] +0xc.
  The `lw` at 0x10095580 loads 4 bytes from [([[a0+16]+436] + ([0x102caa74] << 0x2))] +0x10.
  2 such `sw` accesses store 4 bytes to [a0+16] +0xb8, including `sw` at 0x10095588, `sw` at 0x10095698.
  6 such `lw` accesses load 4 bytes from ?, including `lw` at 0x100955dc, `lw` at 0x100955e4, `lw` at 0x1009561c.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10095648, `sw` at 0x1009564c, `sw` at 0x10095658.
  The `lw` at 0x10095650 loads 4 bytes from sym(currentTime) +0x0.
  The `lw` at 0x10095654 loads 4 bytes from sym(currentTime) +0x4.
  The `lw` at 0x10095664 loads 4 bytes from [a0+16] +0xb8.
  The `jal` at 0x10095628 calls XvdiSendVideoNotify [0x101a7330] with a0=?, a1=?, a2=0x3, a3=?.
  The `jalr` at 0x10095640 calls (unknown callee) with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x1009567c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `blez` branch at 0x1009558c targets 0x1009567c, is taken when a3(=[[([[a0+16]+436] + ([0x102caa74] << 0x2))]+8]) <= 0 (signed), and falls through when a3(=[[([[a0+16]+436] + ([0x102caa74] << 0x2))]+8]) > 0 (signed).
  The `beq` branch at 0x100955bc targets 0x100955dc and is always taken.
  The `beq` branch at 0x100955d4 targets 0x10095664, is taken when s4(?) == s5(?), and falls through when s4(?) != s5(?).
  The `blez` branch at 0x100955e8 targets 0x100955d0, is taken when a0(?) <= 0 (signed), and falls through when a0(?) > 0 (signed).
  The `beq` branch at 0x100955fc targets 0x1009561c and is always taken.
  The `beq` branch at 0x10095614 targets 0x100955d0, is taken when s0(?) == s1(?), and falls through when s0(?) != s1(?).
  The `bne` branch at 0x10095620 targets 0x10095610, is taken when a1(?) != s2(=a0), and falls through when a1(?) == s2(=a0).
  The `beq` branch at 0x1009565c targets 0x10095610 and is always taken.
  The return at 0x100956a0 has v0 = ret(?).
  The instructions from 0x100955c4 to 0x100955cc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x10095604 to 0x1009560c are not reached by any path from the entry, and their branches are not listed.
- `SGICapValidateDirtyRegion` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10096b90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10096b90-0x10096c0c (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0x10096b9c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x10096bb0 loads 4 bytes from [a0] +0x1b4.
  The `lw` at 0x10096bbc loads 4 bytes from [a0] +0x174.
  The `lw` at 0x10096bc4 loads 4 bytes from ([[a0]+436] + ([0x102cf2c4] << 0x2)) +0x0.
  The `lw` at 0x10096bd8 loads 4 bytes from [([[a0]+436] + ([0x102cf2c4] << 0x2))] +0x38.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10096be4, `lw` at 0x10096bf4.
  The `lw` at 0x10096be8 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `jalr` at 0x10096bd4 calls (unknown callee) with a0=[[([[a0]+436] + ([0x102cf2c4] << 0x2))]+56], a1=a0+4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10096bf0 calls (unknown callee) with a0=[a0+16], a1=[a0+16], a2=?, a3=?.
  The return at 0x10096c04 has v0 = ret(?).
- `dbcDelayedSwapBufferDone` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10098a20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10098a20-0x100995e0 (3008 bytes).
  It occupies 3008 bytes.
  62 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10098a54, `lw` at 0x10098a70, `lw` at 0x10098a84.
  The `lw` at 0x10098abc loads 4 bytes from sym(dbcWindowPrivateIndex) +0x0.
  The `lw` at 0x10098ac0 loads 4 bytes from ret(SecurityLookupIDByType) +0x84.
  2 such `lb` accesses load 1 byte from ([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2)) +0x3, including `lb` at 0x10098acc, `lb` at 0x100990f4.
  4 such `lb` accesses load 1 byte from ([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2)) +0x2, including `lb` at 0x10098adc, `lb` at 0x100992b4, `lb` at 0x10099414.
  2 such `sb` accesses store 1 byte to ([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2)) +0x2, including `sb` at 0x10098ae8, `sb` at 0x100990f0.
  The `lw` at 0x10098af0 loads 4 bytes from sym(globalSerialNumber) +0x0.
  2 such `sw` accesses store 4 bytes to sym(globalSerialNumber) +0x0, including `sw` at 0x10098b10, `sw` at 0x10098c28.
  4 such `lw` accesses load 4 bytes from sym(WindowTable) +0x0, including `lw` at 0x10098b30, `lw` at 0x10098e80, `lw` at 0x100990a4.
  2 such `lw` accesses load 4 bytes from [sym(clients)] +0x0, including `lw` at 0x10098b34, `lw` at 0x10098e8c.
  2 such `lw` accesses load 4 bytes from [[sym(clients)]] +0x30, including `lw` at 0x10098b40, `lw` at 0x10098e98.
  16 such `lw` accesses load 4 bytes from [sym(WindowTable)] +0x0, including `lw` at 0x10098b4c, `lw` at 0x10098b58, `lw` at 0x10098c60.
  8 such `lw` accesses load 4 bytes from [[sym(WindowTable)]] +0x4, including `lw` at 0x10098b50, `lw` at 0x10098c64, `lw` at 0x10098c98.
  2 such `sw` accesses store 4 bytes to [[sym(clients)]] +0x30, including `sw` at 0x10098b54, `sw` at 0x10098eac.
  2 such `sw` accesses store 4 bytes to [[sym(clients)]] +0x2c, including `sw` at 0x10098b5c, `sw` at 0x10098eb4.
  2 such `lw` accesses load 4 bytes from ret(SecurityLookupIDByType) +0x7c, including `lw` at 0x10098b70, `lw` at 0x10098c5c.
  33 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10098b94, `sw` at 0x10098bb4, `sw` at 0x10098bd4.
  The `lw` at 0x10098c2c loads 4 bytes from ret(SecurityLookupIDByType) +0x4.
  5 such `lw` accesses load 4 bytes from sym(clients) +0x0, including `lw` at 0x10098c38, `lw` at 0x10098e48, `lw` at 0x10098f80.
  The `sw` at 0x10098c48 stores 4 bytes to ret(SecurityLookupIDByType) +0x14.
  2 such `lw` accesses load 4 bytes from [[sym(clients)]] +0x38, including `lw` at 0x10098ea0, `lw` at 0x10099188.
  2 such `lw` accesses load 4 bytes from sym(__us_rsthread_malloc) +0x0, including `lw` at 0x10098ef0, `lw` at 0x10098f40.
  The `lw` at 0x10098f18 loads 4 bytes from table(0x102c71c0) +0x0.
  The `sw` at 0x10098f44 stores 4 bytes to table(0x102c71c0) +0x0.
  The `lw` at 0x10098fd4 loads 4 bytes from [0x102c60fc] +0x8.
  2 such `sw` accesses store 4 bytes to [[sym(clients)]] +0x34, including `sw` at 0x10099194, `sw` at 0x100991a8.
  2 such `sw` accesses store 4 bytes to [[sym(clients)]] +0x38, including `sw` at 0x1009919c, `sw` at 0x100991b0.
  The `lw` at 0x100991d8 loads 4 bytes from table(0x102c61a0) +0x0.
  The `lw` at 0x100991ec loads 4 bytes from entry(0x102c61a0) +0xc.
  The `sw` at 0x100991fc stores 4 bytes to entry(0x102c61a0) +0xc.
  The `lb` at 0x100992b8 loads 1 byte from ([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2)) +0x1.
  4 such `sb` accesses store 1 byte to ([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2)) +0x1, including `sb` at 0x100992cc, `sb` at 0x10099424, `sb` at 0x10099480.
  3 such `lw` accesses load 4 bytes from ret(SecurityLookupIDByType) +0x10, including `lw` at 0x100992e0, `lw` at 0x100993c4, `lw` at 0x10099438.
  The `lw` at 0x100992e4 loads 4 bytes from [ret(SecurityLookupIDByType)+16] +0xe4.
  The `sb` at 0x10099314 stores 1 byte to ?.
  The `lw` at 0x1009931c loads 4 bytes from sym(GrabInProgress) +0x0.
  The `lw` at 0x10099350 loads 4 bytes from table(0x102c67a8) +0x0.
  2 such `lw` accesses load 4 bytes from table(0x102c6788) +0x0, including `lw` at 0x1009935c, `lw` at 0x1009936c.
  The `lw` at 0x10099360 loads 4 bytes from table(0x102c66f0) +0x0.
  The `sw` at 0x10099368 stores 4 bytes to table(0x102c66f0) +0x0.
  The `lw` at 0x10099370 loads 4 bytes from table(0x102c66b0) +0x0.
  The `lw` at 0x10099374 loads 4 bytes from table(0x102c66d0) +0x0.
  The `sw` at 0x10099380 stores 4 bytes to table(0x102c66b0) +0x0.
  The `sw` at 0x1009938c stores 4 bytes to table(0x102c66d0) +0x0.
  The `lw` at 0x10099390 loads 4 bytes from table(0x102c6710) +0x0.
  The `sw` at 0x1009939c stores 4 bytes to table(0x102c6710) +0x0.
  The `lw` at 0x100993c8 loads 4 bytes from [ret(SecurityLookupIDByType)+16] +0x74.
  The `lw` at 0x100993cc loads 4 bytes from [[ret(SecurityLookupIDByType)+16]+116] +0x108.
  The `sb` at 0x10099420 stores 1 byte to ([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2)) +0x0.
  The `lbu` at 0x10099440 loads 1 byte from ret(SecurityLookupIDByType) +0x2.
  The `lw` at 0x1009946c loads 4 bytes from entry(0x102c61a0) +0x8.
  The `sw` at 0x10099474 stores 4 bytes to [entry(0x102c61a0)+8] +0x420.
  The `lw` at 0x10099494 loads 4 bytes from ret(GetScratchGC) +0x44.
  The `lw` at 0x10099498 loads 4 bytes from [ret(GetScratchGC)+68] +0x0.
  The `lw` at 0x100994a8 loads 4 bytes from ret(GetScratchGC) +0x3c.
  2 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x100994c0, `lhu` at 0x100994c4.
  The `lh` at 0x100994f0 loads 2 bytes from ?.
  The `lw` at 0x100995a0 loads 4 bytes from table(0x102c67e8) +0x0.
  The `lw` at 0x100995a4 loads 4 bytes from table(0x102c67c8) +0x0.
  The `sw` at 0x100995b0 stores 4 bytes to table(0x102c67e8) +0x0.
  The `sw` at 0x100995bc stores 4 bytes to table(0x102c67c8) +0x0.
  The `lw` at 0x100995c0 loads 4 bytes from table(0x102c6808) +0x0.
  The `sw` at 0x100995cc stores 4 bytes to table(0x102c6808) +0x0.
  The `jal` at 0x10098aa8 calls SecurityLookupIDByType [0x100d6140] with a0=0x0, a1=a0 at entry (arg0), a2=0xffffffffc0000001, a3=0x0.
  The `jalr` at 0x10098de4 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10098ee4 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10098f00 calls __libc_lockmalloc with a0=?, a1=?, a2=[0x102c7240], a3=?.
  The `jal` at 0x10098f24 calls realfree..NL [0x1025db70] with a0=entry(0x102c71c0), a1=?, a2=[0x102c7240], a3=?, a5=entry(0x102c71c0).
  The `jalr` at 0x10098f60 calls __libc_unlockmalloc with a0=sym(__us_rsthread_malloc), a1=?, a2=[0x102c7240], a3=[sym(__us_rsthread_malloc)].
  The `jalr` at 0x10098fdc calls (unknown callee) with a0=?, a1=sp-160, a2=[0x102c60fc], a3=?, a6=[sym(clients)].
  The `jal` at 0x10099178 calls FatalError [0x10094f20] with a0=0x1028f428, a1=?, a2=?, a3=?.
  The `jalr` at 0x100992f8 calls (unknown callee) with a0=ret(SecurityLookupIDByType), a1=0x0, a2=0x0, a3=0x0, a4=0x0, a5=0x0, a7=0x2.
  The `jalr` at 0x100993e0 calls (unknown callee) with a0=ret(SecurityLookupIDByType), a1=[([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+3]:1, a2=?, a3=?, a4=-0x1, a5=0x1, a7=0x2.
  The `jal` at 0x1009943c calls GetScratchGC [0x1026a500] with a0=[ret(SecurityLookupIDByType)+2]:1, a1=[ret(SecurityLookupIDByType)+16], a2=?, a3=[([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+2]:1, a4=[([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+2]:1, a5=0x1, a7=0x2.
  The `jalr` at 0x100994a4 calls (unknown callee) with a0=ret(GetScratchGC), a1=[ret(GetScratchGC)+60], a2=?, a3=?.
  The `jalr` at 0x100994e0 calls (unknown callee) with a0=?, a1=?, a2=?, a3=0x0, a4=0x0, a7=0x0.
  The `jal` at 0x10099528 calls FreeGC [0x1010a5b0] with a0=?, a1=0x0, a2=?, a3=?.
  The `beq` branch at 0x10098a40 targets 0x10098c18, is taken when at(=[0x102ca8c8]) == 0, and falls through when at(=[0x102ca8c8]) != 0.
  The `blez` branch at 0x10098a5c targets 0x10098a84, is taken when a2(?) <= 0 (signed), and falls through when a2(?) > 0 (signed).
  The `beq` branch at 0x10098a74 targets 0x10098a98, is taken when a2(?) == a1(=a0), and falls through when a2(?) != a1(=a0).
  The `bne` branch at 0x10098a7c targets 0x10098a70, is taken when v0(?) != a0(?), and falls through when v0(?) == a0(?).
  The `bne` branch at 0x10098a88 targets 0x10098a54, is taken when s1(?) != 0, and falls through when s1(?) == 0.
  The `beq` branch at 0x10098a90 targets 0x10098c18 and is always taken.
  The `beq` branch at 0x10098ab0 targets 0x10098b88, is taken when v0(=ret(SecurityLookupIDByType)) == 0, and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  The `beq` branch at 0x10098ad4 targets 0x10098b88, is taken when a3(=[([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+3]:1) == a4(=-0x1), and falls through when a3(=[([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+3]:1) != a4(=-0x1).
  The `beq` branch at 0x10098ae0 targets 0x100990e8, is taken when a1(=[([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+2]:1) == 0, and falls through when a1(=[([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+2]:1) != 0.
  The `beq` branch at 0x10098b00 targets 0x10098c28, is taken when a3(=0x10000000) >= a1(=[sym(globalSerialNumber)]+1) (unsigned), and falls through when a3(=0x10000000) < a1(=[sym(globalSerialNumber)]+1) (unsigned).
  The `beq` branch at 0x10098b0c targets 0x10098c2c and is always taken.
  The `blez` branch at 0x10098b14 targets 0x10098b70, is taken when t2(=[0x102c5d70]) <= 0 (signed), and falls through when t2(=[0x102c5d70]) > 0 (signed).
  The `beq` branch at 0x10098b2c targets 0x10098b64, is taken when (t2(=[0x102c5d70]) & 0x1) == 0, and falls through when (t2(=[0x102c5d70]) & 0x1) != 0.
  The `beq` branch at 0x10098b38 targets 0x10098b60, is taken when a5(=[[sym(clients)]]) == 0, and falls through when a5(=[[sym(clients)]]) != 0.
  The `bne` branch at 0x10098b44 targets 0x10099188, is taken when t2(=[[[sym(clients)]]+48]) != a7(=[ret(SecurityLookupIDByType)+4]), and falls through when t2(=[[[sym(clients)]]+48]) == a7(=[ret(SecurityLookupIDByType)+4]).
  The `bnel` branch at 0x10098b68 targets 0x10098c80, is taken when t9(?) != 0, and falls through when t9(?) == 0; its branch-likely delay slot `lw a5,0(a6)` at 0x10098b6c runs only when taken and is annulled on fall-through.
  The `bltz` branch at 0x10098b78 targets 0x100990f4, is taken when ra(=([ret(SecurityLookupIDByType)+124] << 0x14)) < 0 (signed), and falls through when ra(=([ret(SecurityLookupIDByType)+124] << 0x14)) >= 0 (signed).
  The `bne` branch at 0x10098b80 targets 0x10098de4, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x10098b90 targets 0x10098ce8, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x10098b9c targets 0x10098bf0, is taken when s0(?) >= a0(?) (unsigned), and falls through when s0(?) < a0(?) (unsigned).
  The `beq` branch at 0x10098bc8 targets 0x10098bf0, is taken when a0(?) >= a2(?) (unsigned), and falls through when a0(?) < a2(?) (unsigned).
  The `bne` branch at 0x10098be8 targets 0x10098bb0, is taken when a0(?) < a4(?) (unsigned), and falls through when a0(?) >= a4(?) (unsigned).
  The `bne` branch at 0x10098c50 targets 0x10098b14, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x10098c58 targets 0x10098b74 and is always taken.
  The `beq` branch at 0x10098c74 targets 0x10098b70, is taken when a6(?) == t1(=([sym(clients)] + ([0x102c5d70] << 0x2))), and falls through when a6(?) != t1(=([sym(clients)] + ([0x102c5d70] << 0x2))).
  The `beq` branch at 0x10098c80 targets 0x10098ca8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x10098c8c targets 0x10098cd4, is taken when t8(?) != a7(=[ret(SecurityLookupIDByType)+4]), and falls through when t8(?) == a7(=[ret(SecurityLookupIDByType)+4]).
  The `beq` branch at 0x10098cac targets 0x10098c74, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x10098cb8 targets 0x10098c60, is taken when at(?) == a7(=[ret(SecurityLookupIDByType)+4]), and falls through when at(?) != a7(=[ret(SecurityLookupIDByType)+4]).
  The `bne` branch at 0x10098cc0 targets 0x10098c74, is taken when t2(?) != a7(=[ret(SecurityLookupIDByType)+4]), and falls through when t2(?) == a7(=[ret(SecurityLookupIDByType)+4]).
  The `beq` branch at 0x10098ccc targets 0x10098c74 and is always taken.
  The `bne` branch at 0x10098cd4 targets 0x10098ca8, is taken when t2(?) != a7(=[ret(SecurityLookupIDByType)+4]), and falls through when t2(?) == a7(=[ret(SecurityLookupIDByType)+4]).
  The `beq` branch at 0x10098ce0 targets 0x10098ca8 and is always taken.
  The `beq` branch at 0x10098cec targets 0x100991b4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10098cf4 targets 0x10099200, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x10098d14 targets 0x100991c8, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x10098d30 targets 0x10099170, is taken when a0(?) >= 0x100 (signed), and falls through when a0(?) < 0x100 (signed).
  The `beq` branch at 0x10098d54 targets 0x10099170, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10098d68 targets 0x1009920c, is taken when v0(?) == a3(=0x6), and falls through when v0(?) != a3(=0x6).
  The `beq` branch at 0x10098d74 targets 0x10099238, is taken when v0(?) == v1(=0x7), and falls through when v0(?) != v1(=0x7).
  The `beq` branch at 0x10098d80 targets 0x10099264, is taken when v0(?) == a1(=0x8), and falls through when v0(?) != a1(=0x8).
  The `beq` branch at 0x10098d8c targets 0x10099290, is taken when v0(?) == a2(=0x9), and falls through when v0(?) != a2(=0x9).
  The `beq` branch at 0x10098d94 targets 0x100993a0, is taken when v0(?) == a3(=0xa), and falls through when v0(?) != a3(=0xa).
  The `beq` branch at 0x10098d9c targets 0x100993f4, is taken when v0(?) == a4(=0xb), and falls through when v0(?) != a4(=0xb).
  The `beq` branch at 0x10098dc8 targets 0x10099128, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x10098ddc targets 0x100995d0 and is always taken.
  The `beq` branch at 0x10098dec targets 0x10098b88 and is always taken.
  The `beq` branch at 0x10098e04 targets 0x1009907c, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x10098e18 targets 0x10098df4, is taken when s1(?) != t8(?), and falls through when s1(?) == t8(?).
  The `beq` branch at 0x10098e40 targets 0x10098ec0, is taken when (at(=0xffffffff80000000) & s1(?)) == 0, and falls through when (at(=0xffffffff80000000) & s1(?)) != 0.
  The `beq` branch at 0x10098e64 targets 0x10098ec0, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `blez` branch at 0x10098e74 targets 0x10098ec0, is taken when t2(=[0x102c5d70]) <= 0 (signed), and falls through when t2(=[0x102c5d70]) > 0 (signed).
  The `beq` branch at 0x10098e84 targets 0x10098eb8, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x10098e90 targets 0x10098eb8, is taken when v0(=[[sym(clients)]]) == 0, and falls through when v0(=[[sym(clients)]]) != 0.
  The `bne` branch at 0x10098e9c targets 0x100991a0, is taken when t2(=[[[sym(clients)]]+48]) != a5(?), and falls through when t2(=[[[sym(clients)]]+48]) == a5(?).
  The `bnel` branch at 0x10098eb8 targets 0x1009900c, is taken when t1(?) != 0, and falls through when t1(?) == 0; its branch-likely delay slot `lw v0,0(a2)` at 0x10098ebc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x10098ec0 targets 0x10098ef0, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x10098ef4 targets 0x10098f0c, is taken when at(=[sym(__us_rsthread_malloc)]) == 0, and falls through when at(=[sym(__us_rsthread_malloc)]) != 0.
  The `beq` branch at 0x10098f1c targets 0x10098f40, is taken when a5(=entry(0x102c71c0)) == 0, and falls through when a5(=entry(0x102c71c0)) != 0.
  The `beq` branch at 0x10098f54 targets 0x10098f68, is taken when a3(=[sym(__us_rsthread_malloc)]) == 0, and falls through when a3(=[sym(__us_rsthread_malloc)]) != 0.
  The `beq` branch at 0x10098f90 targets 0x10098fa0, is taken when a7(?) == t0(?), and falls through when a7(?) != t0(?).
  The `beq` branch at 0x10098fa0 targets 0x10098fe4, is taken when a2(=[0x102c60fc]) == 0, and falls through when a2(=[0x102c60fc]) != 0.
  The `beq` branch at 0x10098fb4 targets 0x10098fe4, is taken when t1(?) >= v0(?) (unsigned), and falls through when t1(?) < v0(?) (unsigned).
  The `beq` branch at 0x10098fcc targets 0x10098fe4, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x10098fe4 targets 0x10098df8 and is always taken.
  The `beq` branch at 0x10099000 targets 0x10098ec0, is taken when a2(?) == a7(=([sym(clients)] + ([0x102c5d70] << 0x2))), and falls through when a2(?) != a7(=([sym(clients)] + ([0x102c5d70] << 0x2))).
  The `beq` branch at 0x1009900c targets 0x10099034, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x10099018 targets 0x10099054, is taken when t2(?) != a5(?), and falls through when t2(?) == a5(?).
  The `beq` branch at 0x10099038 targets 0x10099000, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x10099044 targets 0x10099068, is taken when t9(?) != a5(?), and falls through when t9(?) == a5(?).
  The `beq` branch at 0x1009904c targets 0x10098ff0 and is always taken.
  The `bne` branch at 0x10099054 targets 0x10099034, is taken when a6(?) != a5(?), and falls through when a6(?) == a5(?).
  The `beq` branch at 0x10099060 targets 0x10099034 and is always taken.
  The `bne` branch at 0x10099068 targets 0x10099000, is taken when a6(?) != a5(?), and falls through when a6(?) == a5(?).
  The `beq` branch at 0x10099074 targets 0x10099000 and is always taken.
  The `beq` branch at 0x10099090 targets 0x100990c0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x1009909c targets 0x100990c0, is taken when a1(?) != a3(?), and falls through when a1(?) == a3(?).
  The `beq` branch at 0x100990c0 targets 0x1009916c, is taken when a2(=one of 0x0, 0x1) == 0, and falls through when a2(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x100990ec targets 0x10098aec and is always taken.
  The `beq` branch at 0x100990f8 targets 0x10099114, is taken when a1(=[([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+3]:1) == 0, and falls through when a1(=[([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+3]:1) != 0.
  The `beq` branch at 0x10099100 targets 0x100992b4, is taken when a1(=[([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+3]:1) == a5(=0x1), and falls through when a1(=[([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+3]:1) != a5(=0x1).
  The `beq` branch at 0x10099108 targets 0x100993c4, is taken when a1(=[([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+3]:1) == a7(=0x2), and falls through when a1(=[([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+3]:1) != a7(=0x2).
  The `beq` branch at 0x10099110 targets 0x10099414, is taken when a1(=[([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+3]:1) == t0(=0x3), and falls through when a1(=[([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+3]:1) != t0(=0x3).
  The `bne` branch at 0x10099118 targets 0x10098b88, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x10099120 targets 0x10098b80 and is always taken.
  The `beq` branch at 0x1009913c targets 0x1009916c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x10099148 targets 0x1009916c, is taken when a1(?) != a2(?), and falls through when a1(?) == a2(?).
  The `beq` branch at 0x10099180 targets 0x100990c8 and is always taken.
  The `bne` branch at 0x1009918c targets 0x10098b60, is taken when a3(=[[[sym(clients)]]+56]) != a7(=[ret(SecurityLookupIDByType)+4]), and falls through when a3(=[[[sym(clients)]]+56]) == a7(=[ret(SecurityLookupIDByType)+4]).
  The `beq` branch at 0x10099198 targets 0x10098b60 and is always taken.
  The `bne` branch at 0x100991a0 targets 0x10098eb8, is taken when a6(=[[[sym(clients)]]+56]) != a5(?), and falls through when a6(=[[[sym(clients)]]+56]) == a5(?).
  The `beq` branch at 0x100991ac targets 0x10098eb8 and is always taken.
  The `beq` branch at 0x100991b4 targets 0x10099460, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x100991c0 targets 0x10098d0c and is always taken.
  The `beq` branch at 0x100991e4 targets 0x10099318, is taken when a0(=entry(0x102c61a0)) == 0, and falls through when a0(=entry(0x102c61a0)) != 0.
  The `beq` branch at 0x100991f0 targets 0x1009946c, is taken when a2(=[entry(0x102c61a0)+12]) == a5(=0x1), and falls through when a2(=[entry(0x102c61a0)+12]) != a5(=0x1).
  The `beq` branch at 0x100991f8 targets 0x10098d1c and is always taken.
  The `beq` branch at 0x10099204 targets 0x10098d0c and is always taken.
  The `beq` branch at 0x10099230 targets 0x10098da8 and is always taken.
  The `beq` branch at 0x1009925c targets 0x10098da8 and is always taken.
  The `beq` branch at 0x10099288 targets 0x10098da8 and is always taken.
  The `beq` branch at 0x100992ac targets 0x10098da8 and is always taken.
  The `beq` branch at 0x100992bc targets 0x10099478, is taken when a3(=[([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+2]:1) == 0, and falls through when a3(=[([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+2]:1) != 0.
  The `beq` branch at 0x10099310 targets 0x10099114 and is always taken.
  The `beq` branch at 0x10099320 targets 0x1009953c, is taken when a6(=[sym(GrabInProgress)]) == 0, and falls through when a6(=[sym(GrabInProgress)]) != 0.
  The `beq` branch at 0x10099348 targets 0x10099360, is taken when a2(?) == a6(=[sym(GrabInProgress)]), and falls through when a2(?) != a6(=[sym(GrabInProgress)]).
  The `beq` branch at 0x10099358 targets 0x100995a0, is taken when (a1(=entry(0x102c67a8)) & a0(?)) == 0, and falls through when (a1(=entry(0x102c67a8)) & a0(?)) != 0.
  The `beq` branch at 0x10099388 targets 0x10098d1c, is taken when (a3(=entry(0x102c6788)) & a0(?)) == 0, and falls through when (a3(=entry(0x102c6788)) & a0(?)) != 0.
  The `beq` branch at 0x10099398 targets 0x10098d1c and is always taken.
  The `beq` branch at 0x100993bc targets 0x10098da8 and is always taken.
  The `beq` branch at 0x100993d0 targets 0x10099118, is taken when t9(=[[[ret(SecurityLookupIDByType)+16]+116]+264]) == 0, and falls through when t9(=[[[ret(SecurityLookupIDByType)+16]+116]+264]) != 0.
  The `beq` branch at 0x100993ec targets 0x10099114 and is always taken.
  The `beq` branch at 0x1009940c targets 0x10098da8 and is always taken.
  The `beq` branch at 0x1009941c targets 0x10099568, is taken when a4(=[([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+2]:1) == 0, and falls through when a4(=[([ret(SecurityLookupIDByType)+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+2]:1) != 0.
  The `bne` branch at 0x1009944c targets 0x10099490, is taken when v0(=ret(GetScratchGC)) != 0, and falls through when v0(=ret(GetScratchGC)) == 0.
  The `beq` branch at 0x10099458 targets 0x10099114 and is always taken.
  The `beq` branch at 0x10099464 targets 0x10098d0c and is always taken.
  The `beq` branch at 0x10099470 targets 0x100991f8 and is always taken.
  The `beq` branch at 0x10099488 targets 0x100992d8 and is always taken.
  The `bltz` branch at 0x100994f4 targets 0x10099520, is taken when a7(?) < 0 (signed), and falls through when a7(?) >= 0 (signed).
  The `beq` branch at 0x10099510 targets 0x10099578, is taken when t3(?) == t0(?), and falls through when t3(?) != t0(?).
  The `beq` branch at 0x10099518 targets 0x10099508, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x10099534 targets 0x10099114 and is always taken.
  The `beq` branch at 0x10099560 targets 0x10099360 and is always taken.
  The `beq` branch at 0x10099570 targets 0x10099430 and is always taken.
  The `beq` branch at 0x10099598 targets 0x10099114 and is always taken.
  The `beq` branch at 0x100995b8 targets 0x10098d1c, is taken when (a6(=entry(0x102c6788)) & a0(?)) == 0, and falls through when (a6(=entry(0x102c6788)) & a0(?)) != 0.
  The `beq` branch at 0x100995c8 targets 0x10098d1c and is always taken.
  The `beq` branch at 0x100995d8 targets 0x10098e10 and is always taken.
  The return at 0x10098c10 has v0 = one of 0x0, ?.
  The return at 0x10098c20 has v0 = one of 0x0, ?.
  The return at 0x100990e0 has v0 = one of ?, ret(FatalError).
  The instructions from 0x10098fec to 0x10098fec are not reached by any path from the entry, and their branches are not listed.
- `ProcXineramaDbeSwapBuffers..EIC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100996a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100996a0-0x10099d18 (1656 bytes).
  It occupies 1656 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x100996ac, `lw` at 0x100999fc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x100996c8, `lw` at 0x10099a08.
  7 such `lw` accesses load 4 bytes from [a0+8] +0x4, including `lw` at 0x100996cc, `lw` at 0x1009975c, `lw` at 0x100999a0.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10099758, `sw` at 0x100999bc, `sw` at 0x100999e0.
  25 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10099770, `lw` at 0x10099798, `lw` at 0x100997a0.
  The `lw` at 0x1009979c loads 4 bytes from sym(XRT_WINDOW) +0x0.
  The `lw` at 0x1009982c loads 4 bytes from a0 (arg0 at entry) +0x78.
  2 such `sw` accesses store 4 bytes to sym(panoramiXMode) +0x0, including `sw` at 0x10099974, `sw` at 0x10099c6c.
  The `lw` at 0x10099a6c loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `lw` at 0x10099a70 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `sw` at 0x10099a7c stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `lw` at 0x10099a80 loads 4 bytes from a0 (arg0 at entry) +0x74.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x10099b20, `lbu` at 0x10099b4c.
  The `sb` at 0x10099b50 stores 1 byte to ?.
  The `lbu` at 0x10099bc8 loads 1 byte from [a0+44] +0x0.
  The `lbu` at 0x10099c2c loads 1 byte from ret(SecurityLookupIDByType) +0x0.
  The `sw` at 0x10099ce4 stores 4 bytes to a0 (arg0 at entry) +0x34.
  The `sw` at 0x10099ce8 stores 4 bytes to a0 (arg0 at entry) +0x38.
  The `sw` at 0x10099cec stores 4 bytes to a0 (arg0 at entry) +0x2c.
  The `sw` at 0x10099cf8 stores 4 bytes to a0 (arg0 at entry) +0x30.
  The `jalr` at 0x10099838 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[sym(XRT_WINDOW)], a3=0x2, a7=0x6.
  The `jal` at 0x10099aa0 calls SecurityLookupIDByType [0x100d6140] with a0=a0 at entry (arg0), a1=?, a2=0xffffffffc0000001, a3=0x2.
  The `jalr` at 0x10099ba0 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-28, a2=?, a3=?.
  The `jal` at 0x10099c18 calls SecurityLookupIDByType [0x100d6140] with a0=a0 at entry (arg0), a1=?, a2=0xffffffffc0000001, a3=0x2.
  The `jal` at 0x10099c44 calls XineramaDeliverVisibilityNotify [0x10197300] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10099c60 calls XineramaDeliverExpose [0x100e7410] with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x100996c4 targets 0x10099910, is taken when at(=[a0+72]) < 0x2 (unsigned), and falls through when at(=[a0+72]) >= 0x2 (unsigned).
  The `beq` branch at 0x100996d0 targets 0x1009992c, is taken when v0(=[[a0+8]+4]) == 0, and falls through when v0(=[[a0+8]+4]) != 0.
  The `beq` branch at 0x100996e8 targets 0x10099cc0, is taken when sp(?) == 0, and falls through when sp(?) != 0.
  The `beq` branch at 0x1009970c targets 0x10099954, is taken when v0(=[[a0+8]+4]) == 0, and falls through when v0(=[[a0+8]+4]) != 0.
  The `beq` branch at 0x10099744 targets 0x10099770 and is always taken.
  The `beq` branch at 0x10099754 targets 0x10099c78, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x10099768 targets 0x10099954, is taken when s3(?) >= t9(=[[a0+8]+4]) (unsigned), and falls through when s3(?) < t9(=[[a0+8]+4]) (unsigned).
  The `beq` branch at 0x10099788 targets 0x10099750, is taken when a2(?) >= 0x100 (signed), and falls through when a2(?) < 0x100 (signed).
  The `beq` branch at 0x100997a4 targets 0x10099868, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x100997ac targets 0x10099870, is taken when v0(?) == a7(=0x6), and falls through when v0(?) != a7(=0x6).
  The `beq` branch at 0x100997b4 targets 0x10099890, is taken when v0(?) == t0(=0x7), and falls through when v0(?) != t0(=0x7).
  The `beq` branch at 0x100997bc targets 0x100998b0, is taken when v0(?) == t1(=0x8), and falls through when v0(?) != t1(=0x8).
  The `beq` branch at 0x100997c4 targets 0x100998d0, is taken when v0(?) == t2(=0x9), and falls through when v0(?) != t2(=0x9).
  The `beq` branch at 0x100997cc targets 0x100998e4, is taken when v0(?) == t3(=0xa), and falls through when v0(?) != t3(=0xa).
  The `beq` branch at 0x100997d4 targets 0x100998f8, is taken when v0(?) == t8(=0xb), and falls through when v0(?) != t8(=0xb).
  The `beq` branch at 0x100997e8 targets 0x10099860, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x100997f0 targets 0x10099808 and is always taken.
  The `beq` branch at 0x100997fc targets 0x10099860, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x10099808 targets 0x100997f8, is taken when v1(?) != a1(?), and falls through when v1(?) == a1(?).
  The `bne` branch at 0x10099810 targets 0x100997f8, is taken when a2(=[sym(XRT_WINDOW)]) != a4(?), and falls through when a2(=[sym(XRT_WINDOW)]) == a4(?).
  The `beq` branch at 0x1009981c targets 0x10099750, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x10099824 targets 0x10099750, is taken when s4(=a0) == 0, and falls through when s4(=a0) != 0.
  The `beq` branch at 0x10099830 targets 0x10099750, is taken when t9(=[a0+120]) == 0, and falls through when t9(=[a0+120]) != 0.
  The `beq` branch at 0x10099858 targets 0x10099750 and is always taken.
  The `beq` branch at 0x10099860 targets 0x10099750 and is always taken.
  The `beq` branch at 0x10099868 targets 0x10099750 and is always taken.
  The `beq` branch at 0x10099888 targets 0x100997dc and is always taken.
  The `beq` branch at 0x100998a8 targets 0x100997dc and is always taken.
  The `beq` branch at 0x100998c8 targets 0x100997dc and is always taken.
  The `beq` branch at 0x100998dc targets 0x100997dc and is always taken.
  The `beq` branch at 0x100998f0 targets 0x100997dc and is always taken.
  The `beq` branch at 0x10099908 targets 0x100997dc and is always taken.
  The `blez` branch at 0x10099970 targets 0x10099c40, is taken when a6(=[0x102c5f1c]) <= 0 (signed), and falls through when a6(=[0x102c5f1c]) > 0 (signed).
  The `beq` branch at 0x10099978 targets 0x10099d0c and is always taken.
  The `bne` branch at 0x10099988 targets 0x10099c44, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x10099998 targets 0x10099c44, is taken when s5(?) == t0(?), and falls through when s5(?) != t0(?).
  The `beq` branch at 0x100999a4 targets 0x100999fc, is taken when t1(=[[a0+8]+4]) == 0, and falls through when t1(=[[a0+8]+4]) != 0.
  The `beq` branch at 0x100999cc targets 0x100999fc, is taken when v0(?) >= t2(=[[a0+8]+4]) (unsigned), and falls through when v0(?) < t2(=[[a0+8]+4]) (unsigned).
  The `bne` branch at 0x100999f4 targets 0x100999b0, is taken when v0(?) < t8(=[[a0+8]+4]) (unsigned), and falls through when v0(?) >= t8(=[[a0+8]+4]) (unsigned).
  The `bne` branch at 0x10099a18 targets 0x10099980, is taken when ra(=[a0+72]) < 0x2 (unsigned), and falls through when ra(=[a0+72]) >= 0x2 (unsigned).
  The `beq` branch at 0x10099a30 targets 0x10099bf8, is taken when a0(=[[a0+8]+4]) == 0, and falls through when a0(=[[a0+8]+4]) != 0.
  The `bne` branch at 0x10099a48 targets 0x10099a58, is taken when sp(?) != 0, and falls through when sp(?) == 0.
  The `beq` branch at 0x10099a50 targets 0x10099984 and is always taken.
  The `blez` branch at 0x10099a58 targets 0x10099cb8, is taken when a0(=[[a0+8]+4]) <= 0 (signed), and falls through when a0(=[[a0+8]+4]) > 0 (signed).
  The `beq` branch at 0x10099a78 targets 0x10099bdc, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x10099a84 targets 0x10099bc0, is taken when v1(=[a0+116]) == 0, and falls through when v1(=[a0+116]) != 0.
  The `beq` branch at 0x10099aac targets 0x10099bdc, is taken when v0(=ret(SecurityLookupIDByType)) == 0, and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  The `bltz` branch at 0x10099acc targets 0x10099cdc, is taken when v0(=[0x102ca7c4]) < 0 (signed), and falls through when v0(=[0x102ca7c4]) >= 0 (signed).
  The `beq` branch at 0x10099ae0 targets 0x10099cdc, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x10099af4 targets 0x10099b20, is taken when s2(?) >= a0(?) (signed), and falls through when s2(?) < a0(?) (signed).
  The `beq` branch at 0x10099b10 targets 0x10099bf0, is taken when t1(?) == a6(?), and falls through when t1(?) != a6(?).
  The `bnel` branch at 0x10099b18 targets 0x10099b10, is taken when a4(?) != a7(?), and falls through when a4(?) == a7(?); its branch-likely delay slot `lw t1,16(a4)` at 0x10099b1c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x10099b28 targets 0x10099b48, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x10099b30 targets 0x10099b48, is taken when t2(=0x1) == v0(?), and falls through when t2(=0x1) != v0(?).
  The `beq` branch at 0x10099b38 targets 0x10099b48, is taken when t3(=0x2) == v0(?), and falls through when t3(=0x2) != v0(?).
  The `bne` branch at 0x10099b40 targets 0x10099cfc, is taken when t8(=0x3) != v0(?), and falls through when t8(=0x3) == v0(?).
  The `bne` branch at 0x10099b60 targets 0x10099a68, is taken when a1(?) < a0(?) (signed), and falls through when a1(?) >= a0(?) (signed).
  The `blez` branch at 0x10099b68 targets 0x10099cb8, is taken when a0(?) <= 0 (signed), and falls through when a0(?) > 0 (signed).
  The `bltz` branch at 0x10099b78 targets 0x10099d04, is taken when a0(=[0x102ca7c0]) < 0 (signed), and falls through when a0(=[0x102ca7c0]) >= 0 (signed).
  The `beq` branch at 0x10099ba8 targets 0x10099cb0, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x10099bb0 targets 0x10099984 and is always taken.
  The `bne` branch at 0x10099bc0 targets 0x10099c00, is taken when v0(=[a0+48]) != a4(?), and falls through when v0(=[a0+48]) == a4(?).
  The `bne` branch at 0x10099bcc targets 0x10099bdc, is taken when v1(=[[a0+44]]:1) != 0, and falls through when v1(=[[a0+44]]:1) == 0.
  The `bne` branch at 0x10099bd4 targets 0x10099ab8, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x10099bdc targets 0x10099980 and is always taken.
  The `beq` branch at 0x10099bf0 targets 0x10099980 and is always taken.
  The `beq` branch at 0x10099bf8 targets 0x10099984 and is always taken.
  The `beq` branch at 0x10099c24 targets 0x10099bd4, is taken when v0(=ret(SecurityLookupIDByType)) == 0, and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  The `bne` branch at 0x10099c30 targets 0x10099bd4, is taken when a3(=[ret(SecurityLookupIDByType)]:1) != 0, and falls through when a3(=[ret(SecurityLookupIDByType)]:1) == 0.
  The `beq` branch at 0x10099c38 targets 0x10099ce4 and is always taken.
  The `beq` branch at 0x10099c70 targets 0x10099934 and is always taken.
  The `bgtz` branch at 0x10099cb0 targets 0x10099b74, is taken when a0(?) > 0 (signed), and falls through when a0(?) <= 0 (signed).
  The `beq` branch at 0x10099cb8 targets 0x10099980 and is always taken.
  The `beq` branch at 0x10099cdc targets 0x10099980 and is always taken.
  The `beq` branch at 0x10099cf4 targets 0x10099bd4 and is always taken.
  The `beq` branch at 0x10099cfc targets 0x10099980 and is always taken.
  The `beq` branch at 0x10099d04 targets 0x10099b94 and is always taken.
  The `beq` branch at 0x10099d10 targets 0x100999a4 and is always taken.
  The return at 0x10099924 has v0 = 0x10.
  The return at 0x1009994c has v0 = one of 0x0, ?.
  The return at 0x10099ca8 has v0 = 0x3.
  The return at 0x10099cd4 has v0 = 0xb.
  The instructions from 0x1009974c to 0x1009974c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x10099bb8 to 0x10099bbc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x10099be4 to 0x10099bec are not reached by any path from the entry, and their branches are not listed.
- `ReparentWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1009bb80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1009bb80-0x1009bfc0 (1088 bytes).
  It occupies 1088 bytes.
  The `lhu` at 0x1009bba4 loads 2 bytes from a0 (arg0 at entry) +0x64.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0x1009bbb8, `lw` at 0x1009bc6c.
  The `lw` at 0x1009bbc8 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x1009bc18 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x1009bc24 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0x1009bc28 loads 4 bytes from sym(panoramiXMode) +0x0.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x18, including `lw` at 0x1009bc3c, `lw` at 0x1009bce4.
  The `lw` at 0x1009bc48 loads 4 bytes from sym(panoramiXdataPtr) +0x0.
  The `lw` at 0x1009bc4c loads 4 bytes from [sym(panoramiXdataPtr)] +0x10.
  The `lw` at 0x1009bc58 loads 4 bytes from [sym(panoramiXdataPtr)] +0x14.
  The `lw` at 0x1009bc90 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x1009bc94 loads 4 bytes from [a0+24] +0x24.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1c, including `lw` at 0x1009bca0, `lw` at 0x1009bcc0, `lw` at 0x1009bcd8.
  The `sw` at 0x1009bca4 stores 4 bytes to [a0+24] +0x24.
  The `lw` at 0x1009bca8 loads 4 bytes from [a0+24] +0x28.
  The `lw` at 0x1009bcb4 loads 4 bytes from sym(screenIsSaved) +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x20, including `lw` at 0x1009bcb8, `lw` at 0x1009bcc8, `lw` at 0x1009bcd0.
  The `sw` at 0x1009bcbc stores 4 bytes to [a0+24] +0x28.
  The `sw` at 0x1009bccc stores 4 bytes to [a0+28] +0x20.
  The `sw` at 0x1009bcdc stores 4 bytes to [a0+32] +0x1c.
  The `sw` at 0x1009bce0 stores 4 bytes to a0 (arg0 at entry) +0x18.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x24, including `lw` at 0x1009bcf8, `lw` at 0x1009bd04, `lw` at 0x1009bf88.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x20, including `sw` at 0x1009bcfc, `sw` at 0x1009bfb4.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x1c, including `sw` at 0x1009bd00, `sw` at 0x1009bf98.
  The `sw` at 0x1009bd10 stores 4 bytes to [a1+36] +0x20.
  The `sw` at 0x1009bd14 stores 4 bytes to a1 (arg1 at entry) +0x24.
  The `sh` at 0x1009bd1c stores 2 bytes to a0 (arg0 at entry) +0x62.
  The `sh` at 0x1009bd24 stores 2 bytes to a0 (arg0 at entry) +0x60.
  The `lh` at 0x1009bd28 loads 2 bytes from a1 (arg1 at entry) +0x8.
  The `sh` at 0x1009bd34 stores 2 bytes to a0 (arg0 at entry) +0x8.
  The `lh` at 0x1009bd38 loads 2 bytes from a1 (arg1 at entry) +0xa.
  The `sh` at 0x1009bd48 stores 2 bytes to a0 (arg0 at entry) +0xa.
  The `lw` at 0x1009bd58 loads 4 bytes from [a0+16] +0x1f0.
  The `lw` at 0x1009bd6c loads 4 bytes from [a0+16] +0xbc.
  The `lh` at 0x1009bd70 loads 2 bytes from a0 (arg0 at entry) +0xa.
  The `lh` at 0x1009bd7c loads 2 bytes from a0 (arg0 at entry) +0x8.
  20 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1009bdd4, `lw` at 0x1009bdd8, `lw` at 0x1009bdf0.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0x1009bde4, `sh` at 0x1009be04.
  The `lhu` at 0x1009bdec loads 2 bytes from ?.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1009be24, `sw` at 0x1009be50.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x28, including `sw` at 0x1009bf40, `sw` at 0x1009bfbc.
  The `lw` at 0x1009bf6c loads 4 bytes from a1 (arg1 at entry) +0x10.
  The `lw` at 0x1009bf70 loads 4 bytes from [a1+16] +0x0.
  The `lw` at 0x1009bf80 loads 4 bytes from (sym(savedScreenInfo) + ([[a1+16]] << 0x4)) +0x0.
  2 such `lw` accesses load 4 bytes from [a1+36] +0x1c, including `lw` at 0x1009bf94, `lw` at 0x1009bf9c.
  The `sw` at 0x1009bfa8 stores 4 bytes to [[a1+36]+28] +0x20.
  The `sw` at 0x1009bfac stores 4 bytes to [a1+36] +0x1c.
  The `jal` at 0x1009bbd8 calls TraverseTree [0x101cc0f0] with a0=a0 at entry (arg0), a1=0x10219f20, a2=a1+4, a3=a3 at entry (arg3).
  The `jal` at 0x1009bbe8 calls MakeWindowOptional [0x10135300] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1009bc08 calls UnmapWindow [0x101eef00] with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?, a6=0x15.
  The `jal` at 0x1009bc88 calls DeliverEvents [0x10064f80] with a0=a0 at entry (arg0), a1=sp-112, a2=0x1, a3=a1 at entry (arg1), a5=[a0+4], a6=0x15.
  The `jal` at 0x1009bd44 calls SetWinSize [0x101092a0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[sym(screenIsSaved)], a6=sym(screenIsSaved), a7=[[a0+24]+40].
  The `jal` at 0x1009bd50 calls SetBorderSize [0x10261e30] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x1009bd64 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+24], a2=?, a3=?.
  The `jalr` at 0x1009bd78 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+8]:2, a2=[a0+10]:2, a3=?.
  The `jal` at 0x1009bd94 calls ResizeChildrenWinSize [0x1009cc50] with a0=a0 at entry (arg0), a1=0x0, a2=0x0, a3=0x0, a4=0x0.
  The `jal` at 0x1009bda0 calls CheckWindowOptionalNeed [0x10123eb0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1009bdb4 calls MapWindow [0x10193330] with a0=a0 at entry (arg0), a1=a4 at entry (arg4), a2=?, a3=?.
  The `beq` branch at 0x1009bbe0 targets 0x1009bf14, is taken when v0(=ret(TraverseTree)) == 0, and falls through when v0(=ret(TraverseTree)) != 0.
  The `beq` branch at 0x1009bbf0 targets 0x1009bf44, is taken when v0(=ret(MakeWindowOptional)) == 0, and falls through when v0(=ret(MakeWindowOptional)) != 0.
  The `beq` branch at 0x1009bbf8 targets 0x1009bc14, is taken when s5(?) == 0, and falls through when s5(?) != 0.
  The `beq` branch at 0x1009bc34 targets 0x1009bc64, is taken when a4(=[sym(panoramiXMode)]) == 0, and falls through when a4(=[sym(panoramiXMode)]) != 0.
  The `bne` branch at 0x1009bc44 targets 0x1009bc64, is taken when a1(=[a1+24]) != 0, and falls through when a1(=[a1+24]) == 0.
  The `bne` branch at 0x1009bc9c targets 0x1009bca8, is taken when a5(=[[a0+24]+36]) != s0(=a0), and falls through when a5(=[[a0+24]+36]) == s0(=a0).
  The `bne` branch at 0x1009bcb0 targets 0x1009bcc0, is taken when a7(=[[a0+24]+40]) != s0(=a0), and falls through when a7(=[[a0+24]+40]) == s0(=a0).
  The `beq` branch at 0x1009bcc4 targets 0x1009bcd0, is taken when a0(=[a0+28]) == 0, and falls through when a0(=[a0+28]) != 0.
  The `beq` branch at 0x1009bcd4 targets 0x1009bce0, is taken when a3(=[a0+32]) == 0, and falls through when a3(=[a0+32]) != 0.
  The `bne` branch at 0x1009bce8 targets 0x1009bcf8, is taken when t1(=[a1+24]) != 0, and falls through when t1(=[a1+24]) == 0.
  The `beq` branch at 0x1009bcf0 targets 0x1009bf6c, is taken when a5(=[sym(screenIsSaved)]) == 0, and falls through when a5(=[sym(screenIsSaved)]) != 0.
  The `beq` branch at 0x1009bd08 targets 0x1009bf3c, is taken when a3(=[a1+36]) == 0, and falls through when a3(=[a1+36]) != 0.
  The `beq` branch at 0x1009bd5c targets 0x1009bd6c, is taken when t9(=[[a0+16]+496]) == 0, and falls through when t9(=[[a0+16]+496]) != 0.
  The `beq` branch at 0x1009bda8 targets 0x1009bdbc, is taken when s5(?) == 0, and falls through when s5(?) != 0.
  The `beq` branch at 0x1009bdc0 targets 0x1009be18 and is always taken.
  The `beq` branch at 0x1009bde0 targets 0x1009be08, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x1009bde8 targets 0x1009be90, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x1009be0c targets 0x1009be74, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1009be1c targets 0x1009bdd0, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x1009be2c targets 0x1009be38, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x1009be38 targets 0x1009be64, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x1009be58 targets 0x1009be40, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x1009be64 targets 0x1009bdd4, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x1009be6c targets 0x1009bdd4 and is always taken.
  The `beq` branch at 0x1009be78 targets 0x1009beac, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x1009be80 targets 0x1009beec, is taken when a3(?) == s0(=a0), and falls through when a3(?) != s0(=a0).
  The `beq` branch at 0x1009be88 targets 0x1009be18 and is always taken.
  The `beq` branch at 0x1009bea4 targets 0x1009bdf4 and is always taken.
  The `beq` branch at 0x1009beac targets 0x1009be80, is taken when s0(=a0) == a3(?), and falls through when s0(=a0) != a3(?).
  The `bne` branch at 0x1009bebc targets 0x1009be80, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x1009bec4 targets 0x1009be80, is taken when s0(=a0) == a3(?), and falls through when s0(=a0) != a3(?).
  The `bne` branch at 0x1009bed4 targets 0x1009be80, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `bne` branch at 0x1009bedc targets 0x1009beb4, is taken when s0(=a0) != a3(?), and falls through when s0(=a0) == a3(?).
  The `beq` branch at 0x1009bee4 targets 0x1009be80 and is always taken.
  The `beq` branch at 0x1009bf3c targets 0x1009bd14 and is always taken.
  The `beq` branch at 0x1009bf84 targets 0x1009bcf8, is taken when a2(=[(sym(savedScreenInfo) + ([[a1+16]] << 0x4))]) == 0, and falls through when a2(=[(sym(savedScreenInfo) + ([[a1+16]] << 0x4))]) != 0.
  The `beq` branch at 0x1009bf8c targets 0x1009bcfc, is taken when a0(=[a1+36]) == 0, and falls through when a0(=[a1+36]) != 0.
  The `beq` branch at 0x1009bfa0 targets 0x1009bfb8, is taken when a3(=[[a1+36]+28]) == 0, and falls through when a3(=[[a1+36]+28]) != 0.
  The `beq` branch at 0x1009bfb0 targets 0x1009bd18 and is always taken.
  The `beq` branch at 0x1009bfb8 targets 0x1009bfac and is always taken.
  The return at 0x1009bf0c has v0 = 0x0.
  The return at 0x1009bf34 has v0 = 0x8.
  The return at 0x1009bf64 has v0 = 0xb.
  The instructions from 0x1009bdc8 to 0x1009bdcc are not reached by any path from the entry, and their branches are not listed.
- `FreeOsBuffers` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1009c590 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1009c590-0x1009c670 (224 bytes).
  It occupies 224 bytes.
  The `lw` at 0x1009c5a0 loads 4 bytes from a0 (arg0 at entry) +0x4.
  2 such `lw` accesses load 4 bytes from [a0+4] +0x4, including `lw` at 0x1009c5cc, `lw` at 0x1009c5f4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x1009c5e0, `lw` at 0x1009c5fc.
  The `sw` at 0x1009c5e4 stores 4 bytes to [a0+4] +0x10.
  The `sw` at 0x1009c5e8 stores 4 bytes to [a0+4] +0xc.
  The `sw` at 0x1009c5ec stores 4 bytes to [a0+4] +0x0.
  The `sw` at 0x1009c5f8 stores 4 bytes to [a0+4] +0x8.
  The `lw` at 0x1009c614 loads 4 bytes from [a0+8] +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1c, including `lw` at 0x1009c628, `lw` at 0x1009c638.
  The `sw` at 0x1009c62c stores 4 bytes to [a0+8] +0xc.
  The `sw` at 0x1009c630 stores 4 bytes to [a0+8] +0x0.
  The `lw` at 0x1009c64c loads 4 bytes from [a0+28] +0x4.
  The `jal` at 0x1009c5c8 calls Xfree [0x101fc9c0] with a0=[[a0+4]+4], a1=a1 at entry (arg1), a2=[0x102c7278], a3=a3 at entry (arg3).
  The `jal` at 0x1009c5d4 calls Xfree [0x101fc9c0] with a0=[a0+4], a1=?, a2=?, a3=?.
  The `jal` at 0x1009c610 calls Xfree [0x101fc9c0] with a0=[[a0+8]+8], a1=?, a2=?, a3=?.
  The `jal` at 0x1009c61c calls Xfree [0x101fc9c0] with a0=[a0+8], a1=?, a2=?, a3=?.
  The `jal` at 0x1009c648 calls Xfree [0x101fc9c0] with a0=[[a0+28]+4], a1=?, a2=?, a3=?.
  The `jal` at 0x1009c654 calls Xfree [0x101fc9c0] with a0=[a0+28], a1=?, a2=?, a3=?.
  The `bne` branch at 0x1009c5ac targets 0x1009c5b8, is taken when at(=[0x102c7280]) != a0, and falls through when at(=[0x102c7280]) == a0.
  The `beq` branch at 0x1009c5b8 targets 0x1009c5fc, is taken when s0(=[a0+4]) == 0, and falls through when s0(=[a0+4]) != 0.
  The `beq` branch at 0x1009c5c0 targets 0x1009c5e4, is taken when a2(=[0x102c7278]) == 0, and falls through when a2(=[0x102c7278]) != 0.
  The `beq` branch at 0x1009c5dc targets 0x1009c600 and is always taken.
  The `beq` branch at 0x1009c600 targets 0x1009c638, is taken when s0(=[a0+8]) == 0, and falls through when s0(=[a0+8]) != 0.
  The `beq` branch at 0x1009c608 targets 0x1009c62c, is taken when a0(=[0x102c727c]) == 0, and falls through when a0(=[0x102c727c]) != 0.
  The `beq` branch at 0x1009c624 targets 0x1009c63c and is always taken.
  The `beq` branch at 0x1009c63c targets 0x1009c660, is taken when s0(=[a0+28]) == 0, and falls through when s0(=[a0+28]) != 0.
  The return at 0x1009c668 has v0 = one of ?, ret(Xfree).
- `FreeWindowResources..F` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1009ea90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1009ea90-0x1009eca4 (532 bytes).
  It occupies 532 bytes.
  The `lw` at 0x1009eaa8 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x1009ead8 loads 4 bytes from [0x102c609c] +0x10.
  The `sw` at 0x1009eae4 stores 4 bytes to [0x102c609c] +0x14.
  The `sw` at 0x1009eae8 stores 4 bytes to [0x102c609c] +0xc.
  The `sw` at 0x1009eaec stores 4 bytes to [0x102c609c] +0x10.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1009eafc, `lw` at 0x1009ec5c, `lw` at 0x1009ec74.
  4 such `lw` accesses load 4 bytes from [a0+16] +0x160, including `lw` at 0x1009eb0c, `lw` at 0x1009eb18, `lw` at 0x1009eb24.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x78, including `lw` at 0x1009eb3c, `lw` at 0x1009eb60, `lw` at 0x1009ebc8.
  The `lw` at 0x1009eb48 loads 4 bytes from [a0+120] +0x28.
  2 such `lw` accesses load 4 bytes from [a0+16] +0x15c, including `lw` at 0x1009eb54, `lw` at 0x1009eb78.
  The `lw` at 0x1009eb6c loads 4 bytes from [a0+120] +0x2c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0x1009eb84, `lw` at 0x1009eba0, `lw` at 0x1009ebd0.
  2 such `lw` accesses load 4 bytes from [a0+16] +0xf0, including `lw` at 0x1009eb94, `lw` at 0x1009ec90.
  The `lw` at 0x1009eb9c loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `lw` at 0x1009ebbc loads 4 bytes from [a0+16] +0xb8.
  The `lw` at 0x1009ebe8 loads 4 bytes from [a0+120] +0x4.
  The `sw` at 0x1009ec10 stores 4 bytes to a0 (arg0 at entry) +0x7c.
  The `sw` at 0x1009ec18 stores 4 bytes to a0 (arg0 at entry) +0x78.
  6 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1009ec68, `sw` at 0x1009ec6c, `sw` at 0x1009ec70.
  The `lw` at 0x1009ec98 loads 4 bytes from a0 (arg0 at entry) +0x6c.
  The `jal` at 0x1009eaa4 calls DeleteWindowFromAnySaveSet [0x1014dca0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1009eb04 calls DeleteWindowFromAnyEvents [0x100743e0] with a0=a0 at entry (arg0), a1=0x1, a2=?, a3=[0x102c60a0].
  The `jalr` at 0x1009eb10 calls (unknown callee) with a0=a0+44, a1=?, a2=?, a3=?.
  The `jalr` at 0x1009eb1c calls (unknown callee) with a0=a0+72, a1=?, a2=?, a3=?.
  The `jalr` at 0x1009eb28 calls (unknown callee) with a0=a0+56, a1=?, a2=?, a3=?.
  The `jalr` at 0x1009eb34 calls (unknown callee) with a0=a0+84, a1=?, a2=?, a3=?.
  The `jalr` at 0x1009eb58 calls (unknown callee) with a0=[[a0+120]+40], a1=?, a2=?, a3=[a0+120].
  The `jalr` at 0x1009eb7c calls (unknown callee) with a0=[[a0+120]+44], a1=?, a2=?, a3=[a0+120].
  The `jalr` at 0x1009eb98 calls (unknown callee) with a0=[a0+112], a1=?, a2=[a0+124], a3=?, a5=([a0+124] << 0x2), a7=0x3.
  The `jal` at 0x1009ebb4 calls ShmInfoPropDeleteAll [0x100b6aa0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x1009ebc0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1009ebec calls FreeCursor [0x10205d70] with a0=[[a0+120]+4], a1=0x0, a2=[a0+124], a3=[a0+120].
  The `jal` at 0x1009ec0c calls Xfree [0x101fc9c0] with a0=[a0+120], a1=?, a2=[a0+124], a3=[a0+120].
  Calls ShmInfoDeleteWindow [0x102172c0] via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`j` at 0x1009ec28).
  Calls ShmInfoDeleteWindow [0x102172c0] via direct with a0=a0 at entry (arg0), a1=?, a2=[a0+124], a3=[a0+120] (`j` at 0x1009ec40).
  The `jalr` at 0x1009ec94 calls (unknown callee) with a0=[a0+108], a1=?, a2=[a0+124], a3=?, a7=0x3.
  The `blez` branch at 0x1009eabc targets 0x1009eb00, is taken when a4(=[0x102c60a0]) <= 0 (signed), and falls through when a4(=[0x102c60a0]) > 0 (signed).
  The `beq` branch at 0x1009ead0 targets 0x1009eaf4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x1009eadc targets 0x1009eaf0, is taken when a1(=[[0x102c609c]+16]) != s0(=a0), and falls through when a1(=[[0x102c609c]+16]) == s0(=a0).
  The `bnel` branch at 0x1009eaf8 targets 0x1009ec60, is taken when a4(?) != 0, and falls through when a4(?) == 0; its branch-likely delay slot `lw v0,16(a2)` at 0x1009eafc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x1009eb40 targets 0x1009eb84, is taken when a3(=[a0+120]) == 0, and falls through when a3(=[a0+120]) != 0.
  The `beq` branch at 0x1009eb4c targets 0x1009eb64, is taken when a0(=[[a0+120]+40]) == 0, and falls through when a0(=[[a0+120]+40]) != 0.
  The `beq` branch at 0x1009eb64 targets 0x1009eb84, is taken when a3(=[a0+120]) == 0, and falls through when a3(=[a0+120]) != 0.
  The `beq` branch at 0x1009eb70 targets 0x1009eb84, is taken when a0(=[[a0+120]+44]) == 0, and falls through when a0(=[[a0+120]+44]) != 0.
  The `bltz` branch at 0x1009eb8c targets 0x1009eba8, is taken when a5(=([a0+124] << 0x2)) < 0 (signed), and falls through when a5(=([a0+124] << 0x2)) >= 0 (signed).
  The `beq` branch at 0x1009ebac targets 0x1009ec90, is taken when a6(?) == a7(=0x3), and falls through when a6(?) != a7(=0x3).
  The `beq` branch at 0x1009ebcc targets 0x1009ec30, is taken when a3(=[a0+120]) == 0, and falls through when a3(=[a0+120]) != 0.
  The `bltz` branch at 0x1009ebd8 targets 0x1009ec00, is taken when t0(=([a0+124] << 0x3)) < 0 (signed), and falls through when t0(=([a0+124] << 0x3)) >= 0 (signed).
  The `beq` branch at 0x1009ec54 targets 0x1009eb00, is taken when a2(?) == a0(?), and falls through when a2(?) != a0(?).
  The `bne` branch at 0x1009ec60 targets 0x1009ec74, is taken when v0(?) != s0(=a0), and falls through when v0(?) == s0(=a0).
  The `bne` branch at 0x1009ec78 targets 0x1009ec50, is taken when v1(?) != s0(=a0), and falls through when v1(?) == s0(=a0).
  The `beq` branch at 0x1009ec88 targets 0x1009ec50 and is always taken.
  The `beq` branch at 0x1009ec9c targets 0x1009ebb4 and is always taken.
  The instructions from 0x1009ec48 to 0x1009ec4c are not reached by any path from the entry, and their branches are not listed.
- `WindowsRestructured` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100a39e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100a39e0-0x100a3a0c (44 bytes).
  It occupies 44 bytes.
  The `jal` at 0x100a39f4 calls CheckMotion..IC [0x1023a050] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100a3a04 has v0 = ret(CheckMotion..IC).
- `SProcXineramaChangeWindowAttributes` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100a6690 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100a6690-0x100a6e20 (1936 bytes).
  It occupies 1936 bytes.
  The `lw` at 0x100a6698 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lbu` at 0x100a669c loads 1 byte from [a0+8] +0x3.
  The `lbu` at 0x100a66a0 loads 1 byte from [a0+8] +0x2.
  The `sb` at 0x100a66a4 stores 1 byte to [a0+8] +0x3.
  The `sb` at 0x100a66a8 stores 1 byte to [a0+8] +0x2.
  The `lw` at 0x100a66ac loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lbu` at 0x100a66f4 loads 1 byte from [a0+8] +0x5.
  The `lbu` at 0x100a66f8 loads 1 byte from [a0+8] +0x6.
  The `lbu` at 0x100a66fc loads 1 byte from [a0+8] +0x4.
  The `lbu` at 0x100a6700 loads 1 byte from [a0+8] +0x7.
  The `lbu` at 0x100a6704 loads 1 byte from [a0+8] +0x9.
  The `lbu` at 0x100a6708 loads 1 byte from [a0+8] +0xa.
  The `lbu` at 0x100a670c loads 1 byte from [a0+8] +0x8.
  The `lbu` at 0x100a6710 loads 1 byte from [a0+8] +0xb.
  The `sb` at 0x100a6714 stores 1 byte to [a0+8] +0x8.
  The `sb` at 0x100a6718 stores 1 byte to [a0+8] +0xb.
  The `sb` at 0x100a671c stores 1 byte to [a0+8] +0x9.
  The `lhu` at 0x100a6720 loads 2 bytes from [a0+8] +0x2.
  The `sb` at 0x100a6724 stores 1 byte to [a0+8] +0x4.
  The `sb` at 0x100a6728 stores 1 byte to [a0+8] +0x7.
  The `sb` at 0x100a6730 stores 1 byte to [a0+8] +0x5.
  The `sb` at 0x100a6740 stores 1 byte to [a0+8] +0x6.
  The `sb` at 0x100a6748 stores 1 byte to [a0+8] +0xa.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x29, including `lbu` at 0x100a6764, `lbu` at 0x100a6d04.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x1d, including `lbu` at 0x100a676c, `lbu` at 0x100a6d3c.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x1c, including `lbu` at 0x100a6770, `lbu` at 0x100a6cf8.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x1a, including `lbu` at 0x100a6774, `lbu` at 0x100a6d0c.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x19, including `lbu` at 0x100a6778, `lbu` at 0x100a6cec.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x1b, including `lbu` at 0x100a677c, `lbu` at 0x100a6db0.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x18, including `lbu` at 0x100a6780, `lbu` at 0x100a6da8.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x16, including `lbu` at 0x100a6784, `lbu` at 0x100a6d98.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x15, including `lbu` at 0x100a6788, `lbu` at 0x100a6da0.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x17, including `lbu` at 0x100a678c, `lbu` at 0x100a6d88.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x14, including `lbu` at 0x100a6790, `lbu` at 0x100a6d90.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x12, including `lbu` at 0x100a6794, `lbu` at 0x100a6d78.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x11, including `lbu` at 0x100a6798, `lbu` at 0x100a6d80.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x13, including `lbu` at 0x100a67a0, `lbu` at 0x100a6d68.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x10, including `lbu` at 0x100a67a4, `lbu` at 0x100a6d70.
  2 such `lbu` accesses load 1 byte from [a0+8] +0xe, including `lbu` at 0x100a67ac, `lbu` at 0x100a6d58.
  2 such `lbu` accesses load 1 byte from [a0+8] +0xd, including `lbu` at 0x100a67b4, `lbu` at 0x100a6d60.
  2 such `lbu` accesses load 1 byte from [a0+8] +0xf, including `lbu` at 0x100a67bc, `lbu` at 0x100a6d48.
  2 such `lbu` accesses load 1 byte from [a0+8] +0xc, including `lbu` at 0x100a67c4, `lbu` at 0x100a6d50.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x20, including `lbu` at 0x100a67cc, `lbu` at 0x100a6d34.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x23, including `lbu` at 0x100a67d0, `lbu` at 0x100a6d38.
  2 such `sb` accesses store 1 byte to [a0+8] +0x20, including `sb` at 0x100a67d4, `sb` at 0x100a6d5c.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x1f, including `lbu` at 0x100a67d8, `lbu` at 0x100a6cf0.
  2 such `sb` accesses store 1 byte to [a0+8] +0x23, including `sb` at 0x100a67e0, `sb` at 0x100a6d64.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x1e, including `lbu` at 0x100a67e4, `lbu` at 0x100a6d40.
  89 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x100a67f0, `lbu` at 0x100a684c, `lbu` at 0x100a6850.
  110 such `sb` accesses store 1 byte to ?, including `sb` at 0x100a67f4, `sb` at 0x100a67f8, `sb` at 0x100a67fc.
  The `lw` at 0x100a6c28 loads 4 bytes from sym(ProcXineramaVector) +0x8.
  The `sb` at 0x100a6cfc stores 1 byte to [a0+8] +0x1c.
  The `lbu` at 0x100a6d00 loads 1 byte from [a0+8] +0x2a.
  The `sb` at 0x100a6d08 stores 1 byte to [a0+8] +0x2a.
  The `sb` at 0x100a6d10 stores 1 byte to [a0+8] +0x1a.
  The `lbu` at 0x100a6d14 loads 1 byte from [a0+8] +0x28.
  The `lbu` at 0x100a6d18 loads 1 byte from [a0+8] +0x2b.
  The `lbu` at 0x100a6d1c loads 1 byte from [a0+8] +0x25.
  The `lbu` at 0x100a6d20 loads 1 byte from [a0+8] +0x26.
  The `lbu` at 0x100a6d24 loads 1 byte from [a0+8] +0x24.
  The `lbu` at 0x100a6d28 loads 1 byte from [a0+8] +0x27.
  The `lbu` at 0x100a6d2c loads 1 byte from [a0+8] +0x21.
  The `lbu` at 0x100a6d30 loads 1 byte from [a0+8] +0x22.
  The `sb` at 0x100a6d44 stores 1 byte to [a0+8] +0x1f.
  The `sb` at 0x100a6d4c stores 1 byte to [a0+8] +0x1d.
  The `sb` at 0x100a6d54 stores 1 byte to [a0+8] +0x1e.
  The `sb` at 0x100a6d6c stores 1 byte to [a0+8] +0x21.
  The `sb` at 0x100a6d74 stores 1 byte to [a0+8] +0x22.
  The `sb` at 0x100a6d7c stores 1 byte to [a0+8] +0x24.
  The `sb` at 0x100a6d84 stores 1 byte to [a0+8] +0x27.
  The `sb` at 0x100a6d8c stores 1 byte to [a0+8] +0x25.
  The `sb` at 0x100a6d94 stores 1 byte to [a0+8] +0x26.
  The `sb` at 0x100a6d9c stores 1 byte to [a0+8] +0x28.
  The `sb` at 0x100a6da4 stores 1 byte to [a0+8] +0x29.
  The `sb` at 0x100a6dac stores 1 byte to [a0+8] +0x2b.
  The `sb` at 0x100a6db4 stores 1 byte to [a0+8] +0x18.
  The `sb` at 0x100a6db8 stores 1 byte to [a0+8] +0x16.
  The `sb` at 0x100a6dbc stores 1 byte to [a0+8] +0x15.
  The `sb` at 0x100a6dc0 stores 1 byte to [a0+8] +0x17.
  The `sb` at 0x100a6dc4 stores 1 byte to [a0+8] +0x14.
  The `sb` at 0x100a6dc8 stores 1 byte to [a0+8] +0x12.
  The `sb` at 0x100a6dcc stores 1 byte to [a0+8] +0x11.
  The `sb` at 0x100a6dd0 stores 1 byte to [a0+8] +0x13.
  The `sb` at 0x100a6dd4 stores 1 byte to [a0+8] +0x10.
  The `sb` at 0x100a6dd8 stores 1 byte to [a0+8] +0xe.
  The `sb` at 0x100a6ddc stores 1 byte to [a0+8] +0xd.
  The `sb` at 0x100a6de0 stores 1 byte to [a0+8] +0xf.
  The `sb` at 0x100a6de4 stores 1 byte to [a0+8] +0x1b.
  The `sb` at 0x100a6dec stores 1 byte to [a0+8] +0x19.
  The `sb` at 0x100a6df8 stores 1 byte to [a0+8] +0xc.
  The `jalr` at 0x100a6c34 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=a0 at entry (arg0).
  The `beq` branch at 0x100a66cc targets 0x100a66ec, is taken when v0(=[a0+72]) >= 0x3 (unsigned), and falls through when v0(=[a0+72]) < 0x3 (unsigned).
  The `bne` branch at 0x100a674c targets 0x100a6cdc, is taken when a5(=[[a0+8]+2]:2-3) < 0x8 (unsigned), and falls through when a5(=[[a0+8]+2]:2-3) >= 0x8 (unsigned).
  The `bne` branch at 0x100a6754 targets 0x100a6cec, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0x100a68fc targets 0x100a6c60, is taken when s4(?) < 0x8 (unsigned), and falls through when s4(?) >= 0x8 (unsigned).
  The `beq` branch at 0x100a6a10 targets 0x100a67f0, is taken when s4(?) >= 0x8 (unsigned), and falls through when s4(?) < 0x8 (unsigned).
  The `beq` branch at 0x100a6b74 targets 0x100a6c24, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `bne` branch at 0x100a6b7c targets 0x100a6b88, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x100a6b8c targets 0x100a6dfc, is taken when s6(?) < 0x2 (signed), and falls through when s6(?) >= 0x2 (signed).
  The `beq` branch at 0x100a6be4 targets 0x100a6c54, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x100a6c10 targets 0x100a6bc0, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x100a6c58 targets 0x100a6c20 and is always taken.
  The `beq` branch at 0x100a6cd4 targets 0x100a6a90 and is always taken.
  The `beq` branch at 0x100a6ce4 targets 0x100a6b5c and is always taken.
  The `beq` branch at 0x100a6df4 targets 0x100a6b5c and is always taken.
  The `beq` branch at 0x100a6e18 targets 0x100a6c24 and is always taken.
  The return at 0x100a66e4 has v0 = 0x10.
  The return at 0x100a6c4c has v0 = ret(?).
- `glxMiAllocPbuffer` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100a8120 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100a8120-0x100a86c0 (1440 bytes).
  It occupies 1440 bytes.
  The `lhu` at 0x100a812c loads 2 bytes from a0 (arg0 at entry) +0xc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x84, including `lw` at 0x100a8130, `lw` at 0x100a8384.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x100a8144, `lw` at 0x100a8390.
  2 such `lw` accesses load 4 bytes from sym(glxScreenPrivateIndex) +0x0, including `lw` at 0x100a8148, `lw` at 0x100a8394.
  2 such `lw` accesses load 4 bytes from [a0+16] +0x1b4, including `lw` at 0x100a814c, `lw` at 0x100a8398.
  2 such `lw` accesses load 4 bytes from ([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2)) +0x0, including `lw` at 0x100a8160, `lw` at 0x100a83b4.
  2 such `lw` accesses load 4 bytes from sym(glxWindowPrivateIndex) +0x0, including `lw` at 0x100a8168, `lw` at 0x100a8388.
  2 such `lw` accesses load 4 bytes from [([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))] +0x80, including `lw` at 0x100a816c, `lw` at 0x100a83c0.
  The `lhu` at 0x100a8170 loads 2 bytes from [([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))] +0x3e.
  The `lw` at 0x100a817c loads 4 bytes from [[([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))]+128] +0x0.
  2 such `lw` accesses load 4 bytes from ([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2)) +0x0, including `lw` at 0x100a8180, `lw` at 0x100a83bc.
  The `lw` at 0x100a8184 loads 4 bytes from [[([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))]+128] +0x8.
  The `lh` at 0x100a8194 loads 2 bytes from [([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))] +0x1c.
  The `lhu` at 0x100a81a0 loads 2 bytes from a0 (arg0 at entry) +0xe.
  The `lw` at 0x100a81a4 loads 4 bytes from [[([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))]+128] +0x4.
  6 such `lw` accesses load 4 bytes from [[([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))]+128] +0xc, including `lw` at 0x100a8224, `lw` at 0x100a85ec, `lw` at 0x100a8610.
  7 such `lw` accesses load 4 bytes from ?, including `lw` at 0x100a822c, `lw` at 0x100a8264, `lw` at 0x100a8358.
  2 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x100a8248, `lhu` at 0x100a8250.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0x100a8260, `sh` at 0x100a84a8.
  4 such `lw` accesses load 4 bytes from sym(__us_rsthread_malloc) +0x0, including `lw` at 0x100a828c, `lw` at 0x100a82ac, `lw` at 0x100a8558.
  The `sw` at 0x100a82cc stores 4 bytes to ret(__malloc..ML) +0x8.
  The `sw` at 0x100a82d0 stores 4 bytes to ret(__malloc..ML) +0x0.
  The `sw` at 0x100a82e0 stores 4 bytes to ret(__malloc..ML) +0xc.
  The `lw` at 0x100a82e4 loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `lw` at 0x100a82f4 loads 4 bytes from [[([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))]+128] +0x20.
  4 such `lh` accesses load 2 bytes from ?, including `lh` at 0x100a82f8, `lh` at 0x100a830c, `lh` at 0x100a8324.
  The `lw` at 0x100a8300 loads 4 bytes from [[([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))]+128] +0x24.
  11 such `sw` accesses store 4 bytes to ?, including `sw` at 0x100a8374, `sw` at 0x100a8540, `sw` at 0x100a8594.
  2 such `lw` accesses load 4 bytes from sym(Must_have_memory) +0x0, including `lw` at 0x100a84ac, `lw` at 0x100a85a8.
  2 such `lw` accesses load 4 bytes from [([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))] +0x4, including `lw` at 0x100a8534, `lw` at 0x100a8550.
  The `jalr` at 0x100a8270 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x100a8298 calls __libc_lockmalloc with a0=[sym(__us_rsthread_malloc)], a1=?, a2=?, a3=?.
  The `jal` at 0x100a82a4 calls __malloc..ML [0x101e7680] with a0=0x10, a1=?, a2=?, a3=?.
  The `jalr` at 0x100a82bc calls __libc_unlockmalloc with a0=?, a1=[sym(__us_rsthread_malloc)], a2=?, a3=?.
  The `jalr` at 0x100a8368 calls (unknown callee) with a0=sp-240, a1=0x1, a2=?, a3=?.
  The `jal` at 0x100a84bc calls FatalError [0x10094f20] with a0=0x10291460, a1=?, a2=?, a3=?, a5=[sym(Must_have_memory)].
  The `jalr` at 0x100a8564 calls __libc_lockmalloc with a0=[sym(__us_rsthread_malloc)], a1=?, a2=?, a3=?.
  The `jal` at 0x100a856c calls __malloc..ML [0x101e7680] with a0=0x8, a1=?, a2=?, a3=?.
  The `jalr` at 0x100a8580 calls __libc_unlockmalloc with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100a85bc calls FatalError [0x10094f20] with a0=0x10291460, a1=?, a2=?, a3=?.
  The `bne` branch at 0x100a8198 targets 0x100a8448, is taken when at(=[[[([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))]+128]]) < v0(=[a0+12]:2) (signed), and falls through when at(=[[[([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))]+128]]) >= v0(=[a0+12]:2) (signed).
  The `bne` branch at 0x100a81ac targets 0x100a8448, is taken when t2(=[[[([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))]+128]+4]) < t3(=[a0+14]:2) (signed), and falls through when t2(=[[[([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))]+128]+4]) >= t3(=[a0+14]:2) (signed).
  The `bltz` branch at 0x100a81d0 targets 0x100a8464, is taken when v0(=[[[([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))]+128]+8]-1) < 0 (signed), and falls through when v0(=[[[([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))]+128]+8]-1) >= 0 (signed).
  The `beq` branch at 0x100a8200 targets 0x100a8224 and is always taken.
  The `beq` branch at 0x100a821c targets 0x100a8464, is taken when s2(?) == s6(=[[[([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))]+128]+8]), and falls through when s2(?) != s6(=[[[([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))]+128]+8]).
  The `bne` branch at 0x100a8230 targets 0x100a8210, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `bne` branch at 0x100a8240 targets 0x100a8214, is taken when s8(?) != s3(?), and falls through when s8(?) == s3(?).
  The `beq` branch at 0x100a8268 targets 0x100a8288, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x100a8278 targets 0x100a849c, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `bne` branch at 0x100a8280 targets 0x100a8218, is taken when s4(=one of 0x0, 0x1) != 0, and falls through when s4(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x100a8290 targets 0x100a82a0, is taken when a0(=[sym(__us_rsthread_malloc)]) == 0, and falls through when a0(=[sym(__us_rsthread_malloc)]) != 0.
  The `beq` branch at 0x100a82b0 targets 0x100a82c4, is taken when a1(=[sym(__us_rsthread_malloc)]) == 0, and falls through when a1(=[sym(__us_rsthread_malloc)]) != 0.
  The `beq` branch at 0x100a82c4 targets 0x100a84ac, is taken when s2(=ret(__malloc..ML)) == 0, and falls through when s2(=ret(__malloc..ML)) != 0.
  The `beq` branch at 0x100a82e8 targets 0x100a86b8, is taken when a3(=[a0+52]) == 0, and falls through when a3(=[a0+52]) != 0.
  The `beq` branch at 0x100a83c8 targets 0x100a85c4, is taken when a0(?) >= a6(?) (signed), and falls through when a0(?) < a6(?) (signed).
  The `beq` branch at 0x100a8438 targets 0x100a868c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x100a8440 targets 0x100a84fc and is always taken.
  The `beq` branch at 0x100a84a4 targets 0x100a8280 and is always taken.
  The `beq` branch at 0x100a84b0 targets 0x100a84c4, is taken when a5(=[sym(Must_have_memory)]) == 0, and falls through when a5(=[sym(Must_have_memory)]) != 0.
  The `beq` branch at 0x100a84e0 targets 0x100a844c and is always taken.
  The `beq` branch at 0x100a84f4 targets 0x100a868c, is taken when a1(?) == a2(?), and falls through when a1(?) != a2(?).
  The `beq` branch at 0x100a8528 targets 0x100a84e8, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x100a8530 targets 0x100a8554 and is always taken.
  The `beq` branch at 0x100a8548 targets 0x100a84e8, is taken when s2(?) == s4(?), and falls through when s2(?) != s4(?).
  The `bne` branch at 0x100a8554 targets 0x100a8540, is taken when t8(=[[([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))]+4]) != 0, and falls through when t8(=[[([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))]+4]) == 0.
  The `beq` branch at 0x100a855c targets 0x100a856c, is taken when a0(=[sym(__us_rsthread_malloc)]) == 0, and falls through when a0(=[sym(__us_rsthread_malloc)]) != 0.
  The `beq` branch at 0x100a8578 targets 0x100a858c, is taken when t9(=[sym(__us_rsthread_malloc)]) == 0, and falls through when t9(=[sym(__us_rsthread_malloc)]) != 0.
  The `beq` branch at 0x100a858c targets 0x100a85a8, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x100a85a0 targets 0x100a8544 and is always taken.
  The `beq` branch at 0x100a85ac targets 0x100a85c8, is taken when at(=[sym(Must_have_memory)]) == 0, and falls through when at(=[sym(Must_have_memory)]) != 0.
  The `blez` branch at 0x100a85cc targets 0x100a8654, is taken when s8(?) <= 0 (signed), and falls through when s8(?) > 0 (signed).
  The `beq` branch at 0x100a85e4 targets 0x100a8604, is taken when (s8(?) & 0x3) == 0, and falls through when (s8(?) & 0x3) != 0.
  The `bne` branch at 0x100a85fc targets 0x100a85ec, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x100a8608 targets 0x100a8654, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x100a864c targets 0x100a8610, is taken when v0(?) != a0(?), and falls through when v0(?) == a0(?).
  The `bne` branch at 0x100a86a8 targets 0x100a8434, is taken when t3(?) < t8(?) (signed), and falls through when t3(?) >= t8(?) (signed).
  The `beq` branch at 0x100a86b0 targets 0x100a85c8 and is always taken.
  The `beq` branch at 0x100a86b8 targets 0x100a82f4 and is always taken.
  The return at 0x100a845c has v0 = 0x0.
  The return at 0x100a8494 has v0 = 0x0.
  The return at 0x100a8684 has v0 = 0x1.
  The instructions from 0x100a8208 to 0x100a820c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x100a8538 to 0x100a853c are not reached by any path from the entry, and their branches are not listed.
- `ProcMultibufferDispatch..JKC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100a86c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100a86c0-0x100a8814 (340 bytes).
  It occupies 340 bytes.
  The `lw` at 0x100a86c0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lbu` at 0x100a86c8 loads 1 byte from [a0+8] +0x1.
  The `lw` at 0x100a86f0 loads 4 bytes from table(0x1028e0c0) +0x0.
  The `jal` at 0x100a8720 calls ProcGetBufferVersion..OJC [0x1011db20] with a0=a0 at entry (arg0), a1=entry(0x1028e0c0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100a8738 calls ProcClearImageBufferArea..IKC [0x10135d60] with a0=a0 at entry (arg0), a1=entry(0x1028e0c0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100a8750 calls ProcGetBufferInfo..HKC [0x10063190] with a0=a0 at entry (arg0), a1=entry(0x1028e0c0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100a8768 calls ProcGetBufferAttributes..GKC [0x101763e0] with a0=a0 at entry (arg0), a1=entry(0x1028e0c0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100a8780 calls ProcSetBufferAttributes..FKC [0x100e0c10] with a0=a0 at entry (arg0), a1=entry(0x1028e0c0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100a8798 calls ProcGetMBufferAttributes..EKC [0x102234e0] with a0=a0 at entry (arg0), a1=entry(0x1028e0c0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100a87b0 calls ProcSetMBufferAttributes..DKC [0x10217120] with a0=a0 at entry (arg0), a1=entry(0x1028e0c0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100a87cc calls ProcDisplayImageBuffers..BKC [0x100f1450] with a0=a0 at entry (arg0), a1=entry(0x1028e0c0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100a87e8 calls ProcDestroyImageBuffers..CKC [0x101921a0] with a0=a0 at entry (arg0), a1=entry(0x1028e0c0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100a8800 calls ProcCreateImageBuffers..AKC [0x100aae40] with a0=a0 at entry (arg0), a1=entry(0x1028e0c0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x100a86e8 targets 0x100a86fc, is taken when v1(=[[a0+8]+1]:1) >= 0xb (unsigned), and falls through when v1(=[[a0+8]+1]:1) < 0xb (unsigned).
  The `beq` branch at 0x100a872c targets 0x100a870c and is always taken.
  The `beq` branch at 0x100a8744 targets 0x100a870c and is always taken.
  The `beq` branch at 0x100a875c targets 0x100a870c and is always taken.
  The `beq` branch at 0x100a8774 targets 0x100a870c and is always taken.
  The `beq` branch at 0x100a878c targets 0x100a870c and is always taken.
  The `beq` branch at 0x100a87a4 targets 0x100a870c and is always taken.
  The `beq` branch at 0x100a87f4 targets 0x100a870c and is always taken.
  The `beq` branch at 0x100a880c targets 0x100a870c and is always taken.
  The return at 0x100a8704 has v0 = 0x1.
  The return at 0x100a8714 has v0 = one of ret(ProcGetBufferVersion..OJC), ret(ProcClearImageBufferArea..IKC), ret(ProcGetBufferInfo..HKC), ret(ProcGetBufferAttributes..GKC), ret(ProcSetBufferAttributes..FKC), ret(ProcGetMBufferAttributes..EKC), ret(ProcDestroyImageBuffers..CKC), ret(ProcCreateImageBuffers..AKC).
  The return at 0x100a87c0 has v0 = ret(ProcSetMBufferAttributes..DKC).
  The return at 0x100a87dc has v0 = ret(ProcDisplayImageBuffers..BKC).
  The indirect jump at 0x100a86f4 uses the jump table at 0x1028e0c0 with targets 0x100a871c, 0x100a87fc, 0x100a87e4, 0x100a87c8, 0x100a87ac, 0x100a8794, 0x100a877c, 0x100a8764, 0x100a874c, 0x100a86fc, 0x100a8734.
- `SProcSGIvcStoreGammaColors8..EHG` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100a8820 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100a8820-0x100a88d0 (176 bytes).
  It occupies 176 bytes.
  The `lw` at 0x100a8820 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lbu` at 0x100a8824 loads 1 byte from [a0+8] +0x3.
  The `lbu` at 0x100a8828 loads 1 byte from [a0+8] +0x2.
  The `sb` at 0x100a882c stores 1 byte to [a0+8] +0x3.
  The `sb` at 0x100a8830 stores 1 byte to [a0+8] +0x2.
  The `lw` at 0x100a8834 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lbu` at 0x100a884c loads 1 byte from [a0+8] +0x12.
  The `lbu` at 0x100a8850 loads 1 byte from [a0+8] +0x10.
  The `lbu` at 0x100a8854 loads 1 byte from [a0+8] +0x13.
  The `lbu` at 0x100a8858 loads 1 byte from [a0+8] +0xd.
  The `lbu` at 0x100a885c loads 1 byte from [a0+8] +0xe.
  The `lbu` at 0x100a8860 loads 1 byte from [a0+8] +0xc.
  The `lbu` at 0x100a8864 loads 1 byte from [a0+8] +0xf.
  The `lbu` at 0x100a8868 loads 1 byte from [a0+8] +0x9.
  The `lbu` at 0x100a886c loads 1 byte from [a0+8] +0xa.
  The `lbu` at 0x100a8870 loads 1 byte from [a0+8] +0x8.
  The `lbu` at 0x100a8874 loads 1 byte from [a0+8] +0xb.
  The `lbu` at 0x100a8878 loads 1 byte from [a0+8] +0x5.
  The `lbu` at 0x100a887c loads 1 byte from [a0+8] +0x6.
  The `lbu` at 0x100a8880 loads 1 byte from [a0+8] +0x4.
  The `lbu` at 0x100a8884 loads 1 byte from [a0+8] +0x7.
  The `sb` at 0x100a8888 stores 1 byte to [a0+8] +0x7.
  The `sb` at 0x100a888c stores 1 byte to [a0+8] +0x5.
  The `sb` at 0x100a8890 stores 1 byte to [a0+8] +0x6.
  The `sb` at 0x100a8894 stores 1 byte to [a0+8] +0x8.
  The `sb` at 0x100a8898 stores 1 byte to [a0+8] +0xb.
  The `sb` at 0x100a889c stores 1 byte to [a0+8] +0x9.
  The `sb` at 0x100a88a0 stores 1 byte to [a0+8] +0xa.
  The `sb` at 0x100a88a4 stores 1 byte to [a0+8] +0xc.
  The `sb` at 0x100a88a8 stores 1 byte to [a0+8] +0xf.
  The `sb` at 0x100a88ac stores 1 byte to [a0+8] +0xd.
  The `sb` at 0x100a88b0 stores 1 byte to [a0+8] +0xe.
  The `sb` at 0x100a88b4 stores 1 byte to [a0+8] +0x10.
  The `sb` at 0x100a88b8 stores 1 byte to [a0+8] +0x13.
  The `sb` at 0x100a88bc stores 1 byte to [a0+8] +0x4.
  The `lbu` at 0x100a88c0 loads 1 byte from [a0+8] +0x11.
  The `sb` at 0x100a88c4 stores 1 byte to [a0+8] +0x11.
  The `sb` at 0x100a88cc stores 1 byte to [a0+8] +0x12.
  Calls ProcSGIvcStoreGammaColors8 [0x102087e0] via direct with a0=a0 at entry (arg0), a1=[[a0+8]+17]:1, a2=[a0+8], a3=[[a0+8]+18]:1, a4=[[a0+8]+16]:1, a5=[[a0+8]+19]:1, a6=[[a0+8]+13]:1, a7=[[a0+8]+14]:1 (`j` at 0x100a88c8).
  The `beq` branch at 0x100a883c targets 0x100a884c, is taken when at(=[a0+72]) >= 0x5 (unsigned), and falls through when at(=[a0+72]) < 0x5 (unsigned).
  The return at 0x100a8844 has v0 = 0x10.
- `AccessMapWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100a92d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100a92d0-0x100a93b4 (228 bytes).
  It occupies 228 bytes.
  The `lw` at 0x100a92d0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x100a92d8 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x100a932c loads 4 bytes from [a0+8] +0x4.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x100a934c, `lw` at 0x100a939c.
  The `sw` at 0x100a9358 stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `lw` at 0x100a9388 loads 4 bytes from a0 (arg0 at entry) +0x58.
  The `lbu` at 0x100a938c loads 1 byte from ?.
  The `lw` at 0x100a9390 loads 4 bytes from [a0+88] +0x0.
  The `jal` at 0x100a9328 calls SecurityLookupWindow [0x1006ce40] with a0=[[a0+8]+4], a1=a0 at entry (arg0), a2=0x0, a3=a3 at entry (arg3).
  The `jal` at 0x100a9364 calls CheckWindowAccess [0x1018ed00] with a0=0x1, a1=a0 at entry (arg0), a2=ret(SecurityLookupWindow), a3=0x0.
  The `jalr` at 0x100a93a0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x100a92f4 targets 0x100a9318, is taken when v1(=[a0+72]) == a1(=0x2), and falls through when v1(=[a0+72]) != a1(=0x2).
  The `bne` branch at 0x100a9330 targets 0x100a935c, is taken when v0(=ret(SecurityLookupWindow)) != 0, and falls through when v0(=ret(SecurityLookupWindow)) == 0.
  The `bne` branch at 0x100a936c targets 0x100a937c, is taken when v0(=ret(CheckWindowAccess)) != 0, and falls through when v0(=ret(CheckWindowAccess)) == 0.
  The `beq` branch at 0x100a9374 targets 0x100a9308 and is always taken.
  The `beq` branch at 0x100a93ac targets 0x100a9308 and is always taken.
  The return at 0x100a9300 has v0 = 0x10.
  The return at 0x100a9310 has v0 = one of 0x3, ret(?).
  The return at 0x100a9354 has v0 = 0x3.
- `RecordSanityCheckRegisterClients..IJG` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100aa7c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100aa7c0-0x100aaae8 (808 bytes).
  It occupies 808 bytes.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x10, including `lw` at 0x100aa7c0, `lw` at 0x100aa864.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lw` at 0x100aa7c4, `lw` at 0x100aa860.
  The `lw` at 0x100aa7d4 loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `lbu` at 0x100aa7f8 loads 1 byte from a2 (arg2 at entry) +0x8.
  12 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x18, including `sw` at 0x100aa808, `sw` at 0x100aaa48, `sw` at 0x100aaa58.
  The `lw` at 0x100aa820 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x100aa830 loads 4 bytes from [a0+4] +0x4.
  21 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x100aa8d8, `lbu` at 0x100aa8dc, `lbu` at 0x100aa8e0.
  6 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x100aa948, `lhu` at 0x100aa94c, `lhu` at 0x100aa98c.
  The `jal` at 0x100aa840 calls RecordSanityCheckClientSpecifiers..FJG [0x10178010] with a0=a2+20, a1=[a2+12], a2=?, a3=a3 at entry (arg3), a5=-0x8, a6=a1 at entry (arg1), a7=[a2+12].
  The `bne` branch at 0x100aa7f4 targets 0x100aa814, is taken when at(?) != v0(=([a1+72] << 0x2)-20), and falls through when at(?) == v0(=([a1+72] << 0x2)-20).
  The `beq` branch at 0x100aa800 targets 0x100aa820, is taken when (a1(=[a2+8]:1) & a5(=-0x8)) == 0, and falls through when (a1(=[a2+8]:1) & a5(=-0x8)) != 0.
  The `beq` branch at 0x100aa828 targets 0x100aaa2c, is taken when v0(=[a0+4]) == 0, and falls through when v0(=[a0+4]) != 0.
  The `beq` branch at 0x100aa84c targets 0x100aa85c, is taken when v0(=ret(RecordSanityCheckClientSpecifiers..FJG)) == 0, and falls through when v0(=ret(RecordSanityCheckClientSpecifiers..FJG)) != 0.
  The `beq` branch at 0x100aa878 targets 0x100aaa80, is taken when a0(=[a2+16]) == 0, and falls through when a0(=[a2+16]) != 0.
  The `beq` branch at 0x100aa888 targets 0x100aa8d8 and is always taken.
  The `bne` branch at 0x100aa890 targets 0x100aaa70, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `bne` branch at 0x100aa898 targets 0x100aaa70, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0x100aa8a0 targets 0x100aaa70, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `bne` branch at 0x100aa8a8 targets 0x100aaac0, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x100aa8b0 targets 0x100aa8c0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x100aa8b8 targets 0x100aaacc, is taken when t3(=0x1) != a5(?), and falls through when t3(=0x1) == a5(?).
  The `beq` branch at 0x100aa8c0 targets 0x100aa8d0, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x100aa8c8 targets 0x100aaadc, is taken when t3(=0x1) != a6(?), and falls through when t3(=0x1) == a6(?).
  The `beq` branch at 0x100aa8d0 targets 0x100aaa80, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x100aa8fc targets 0x100aaa88, is taken when a3(?) < a7(?) (signed), and falls through when a3(?) >= a7(?) (signed).
  The `bne` branch at 0x100aa910 targets 0x100aaa98, is taken when a4(?) < a7(?) (signed), and falls through when a4(?) >= a7(?) (signed).
  The `beq` branch at 0x100aa920 targets 0x100aa9fc, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x100aa928 targets 0x100aaa38, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `bne` branch at 0x100aa938 targets 0x100aaa38, is taken when t0(?) < 0x80 (signed), and falls through when t0(?) >= 0x80 (signed).
  The `bne` branch at 0x100aa940 targets 0x100aaa38, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `bne` branch at 0x100aa954 targets 0x100aaaa4, is taken when at(?) < a7(?) (signed), and falls through when at(?) >= a7(?) (signed).
  The `beq` branch at 0x100aa964 targets 0x100aaa0c, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x100aa96c targets 0x100aaa4c, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `bne` branch at 0x100aa97c targets 0x100aaa4c, is taken when t0(?) < 0x80 (signed), and falls through when t0(?) >= 0x80 (signed).
  The `bne` branch at 0x100aa984 targets 0x100aaa4c, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `bne` branch at 0x100aa998 targets 0x100aaab4, is taken when at(?) < a7(?) (signed), and falls through when at(?) >= a7(?) (signed).
  The `beq` branch at 0x100aa9b0 targets 0x100aaa1c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x100aa9b8 targets 0x100aaa5c, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `bne` branch at 0x100aa9c0 targets 0x100aaa60, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `bne` branch at 0x100aa9c8 targets 0x100aaa60, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `bne` branch at 0x100aa9e4 targets 0x100aa890, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `bne` branch at 0x100aa9ec targets 0x100aa890, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x100aa9f4 targets 0x100aa8a8 and is always taken.
  The `bne` branch at 0x100aa9fc targets 0x100aa928, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0x100aaa04 targets 0x100aa94c and is always taken.
  The `bne` branch at 0x100aaa0c targets 0x100aa96c, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0x100aaa14 targets 0x100aa990 and is always taken.
  The `bne` branch at 0x100aaa1c targets 0x100aa9b8, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0x100aaa24 targets 0x100aa9d4 and is always taken.
  The `beq` branch at 0x100aaa30 targets 0x100aa838 and is always taken.
  The `beq` branch at 0x100aaa54 targets 0x100aa80c and is always taken.
  The `beq` branch at 0x100aaa68 targets 0x100aa80c and is always taken.
  The `beq` branch at 0x100aaa78 targets 0x100aa80c and is always taken.
  The `beq` branch at 0x100aaa80 targets 0x100aa80c and is always taken.
  The `beq` branch at 0x100aaa90 targets 0x100aa80c and is always taken.
  The `beq` branch at 0x100aaa9c targets 0x100aa80c and is always taken.
  The `beq` branch at 0x100aaaac targets 0x100aa80c and is always taken.
  The `beq` branch at 0x100aaab8 targets 0x100aa80c and is always taken.
  The `beq` branch at 0x100aaac4 targets 0x100aa80c and is always taken.
  The `beq` branch at 0x100aaad4 targets 0x100aa80c and is always taken.
  The `beq` branch at 0x100aaae0 targets 0x100aa80c and is always taken.
  The return at 0x100aa80c has v0 = one of 0x0, 0x2.
  The return at 0x100aa818 has v0 = 0x10.
  The return at 0x100aa854 has v0 = ret(RecordSanityCheckClientSpecifiers..FJG).
  The return at 0x100aaa44 has v0 = 0x2.
- `ProcCreateImageBuffers..AKC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100aae40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100aae40-0x100ab718 (2264 bytes).
  It occupies 2264 bytes.
  The `lw` at 0x100aae40 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x100aae5c loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lhu` at 0x100aae60 loads 2 bytes from [a0+8] +0x2.
  The `lw` at 0x100aae70 loads 4 bytes from [a0+8] +0x4.
  The `lbu` at 0x100aae8c loads 1 byte from ret(SecurityLookupWindow) +0x1.
  3 such `lbu` accesses load 1 byte from [a0+8] +0x8, including `lbu` at 0x100aae9c, `lbu` at 0x100ab0b8, `lbu` at 0x100ab10c.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x18, including `sw` at 0x100aaec0, `sw` at 0x100aaf2c, `sw` at 0x100ab010.
  35 such `lw` accesses load 4 bytes from ?, including `lw` at 0x100aaf1c, `lw` at 0x100aaf5c, `lw` at 0x100aaf80.
  4 such `lw` accesses load 4 bytes from sym(panoramiXDisabled) +0x0, including `lw` at 0x100aaf74, `lw` at 0x100aaf74, `lw` at 0x100ab660.
  The `lw` at 0x100aaf78 loads 4 bytes from a0 (arg0 at entry) +0x4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x100aaf94, `lw` at 0x100aaf98.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x9, including `lbu` at 0x100aafe4, `lbu` at 0x100ab0b4.
  4 such `lw` accesses load 4 bytes from sym(clients) +0x0, including `lw` at 0x100ab168, `lw` at 0x100ab2b4, `lw` at 0x100ab3d4.
  3 such `lw` accesses load 4 bytes from sym(WindowTable) +0x0, including `lw` at 0x100ab17c, `lw` at 0x100ab2e4, `lw` at 0x100ab4f8.
  10 such `lw` accesses load 4 bytes from [sym(WindowTable)] +0x0, including `lw` at 0x100ab18c, `lw` at 0x100ab194, `lw` at 0x100ab308.
  14 such `sw` accesses store 4 bytes to ?, including `sw` at 0x100ab190, `sw` at 0x100ab1a0, `sw` at 0x100ab290.
  5 such `lw` accesses load 4 bytes from [[sym(WindowTable)]] +0x4, including `lw` at 0x100ab19c, `lw` at 0x100ab30c, `lw` at 0x100ab440.
  The `lw` at 0x100ab2f0 loads 4 bytes from [sym(clients)] +0x0.
  The `lw` at 0x100ab2fc loads 4 bytes from [[sym(clients)]] +0x30.
  The `lw` at 0x100ab304 loads 4 bytes from [[sym(clients)]] +0x38.
  The `sw` at 0x100ab310 stores 4 bytes to [[sym(clients)]] +0x30.
  The `sw` at 0x100ab318 stores 4 bytes to [[sym(clients)]] +0x2c.
  2 such `lw` accesses load 4 bytes from sym(__us_rsthread_malloc) +0x0, including `lw` at 0x100ab350, `lw` at 0x100ab3a0.
  The `lw` at 0x100ab378 loads 4 bytes from table(0x102c71c0) +0x0.
  The `sw` at 0x100ab3a4 stores 4 bytes to table(0x102c71c0) +0x0.
  The `lw` at 0x100ab424 loads 4 bytes from [0x102c60fc] +0x8.
  The `sw` at 0x100ab534 stores 4 bytes to [[sym(clients)]] +0x34.
  The `sw` at 0x100ab53c stores 4 bytes to [[sym(clients)]] +0x38.
  The `lw` at 0x100ab648 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0x100ab658 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x100ab6b0 loads 4 bytes from sym(panoramiXMode) +0x0.
  The `lw` at 0x100ab6c0 loads 4 bytes from sym(panoramiXScreen0) +0x0.
  The `lw` at 0x100ab6dc loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `jal` at 0x100aae7c calls SecurityLookupWindow [0x1006ce40] with a0=[[a0+8]+4], a1=a0 at entry (arg0), a2=0x0, a3=a3 at entry (arg3).
  The `jal` at 0x100aaef4 calls SecurityLookupIDByClass [0x10236190] with a0=0x0, a1=?, a2=-0x1, a3=0x0, a5=[sym(panoramiXDisabled)].
  The `jal` at 0x100ab0d8 calls CreateImageBuffers [0x10090b70] with a0=?, a1=?, a2=[a0+8]+12, a3=[[a0+8]+8]:1, a4=[[a0+8]+9]:1.
  The `jal` at 0x100ab108 calls dbcMakeDoubleBuffered [0x1027abd0] with a0=?, a1=[[a0+8]+8]:1, a2=?, a3=?.
  The `jalr` at 0x100ab344 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100ab360 calls __libc_lockmalloc with a0=?, a1=?, a2=?, a3=[0x102c7240].
  The `jal` at 0x100ab384 calls realfree..NL [0x1025db70] with a0=entry(0x102c71c0), a1=table(0x102c5d40), a2=([0x102c7240] << 0x2), a3=[0x102c7240].
  The `jalr` at 0x100ab3c0 calls __libc_unlockmalloc with a0=?, a1=table(0x102c5d40), a2=([0x102c7240] << 0x2), a3=[0x102c7240], a5=[sym(__us_rsthread_malloc)].
  The `jalr` at 0x100ab42c calls (unknown callee) with a0=?, a1=sp-208, a2=?, a3=[0x102c60fc], a6=[sym(clients)], a7=0x4.
  The `jal` at 0x100ab51c calls FatalError [0x10094f20] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100ab6d4 calls WriteToClient [0x100b3500] with a0=a0 at entry (arg0), a1=0x20, a2=sp-192, a3=?, a4=0x1.
  The `bne` branch at 0x100aae58 targets 0x100aaed8, is taken when at(=[a0+72]) < 0x3 (unsigned), and falls through when at(=[a0+72]) >= 0x3 (unsigned).
  The `beq` branch at 0x100aae68 targets 0x100ab024, is taken when v0(=[[a0+8]+2]:2-3) == 0, and falls through when v0(=[[a0+8]+2]:2-3) != 0.
  The `beq` branch at 0x100aae84 targets 0x100ab0a4, is taken when v0(=ret(SecurityLookupWindow)) == 0, and falls through when v0(=ret(SecurityLookupWindow)) != 0.
  The `beq` branch at 0x100aae94 targets 0x100ab0f4, is taken when a0(=0x2) == v1(=[ret(SecurityLookupWindow)+1]:1), and falls through when a0(=0x2) != v1(=[ret(SecurityLookupWindow)+1]:1).
  The `beq` branch at 0x100aaea0 targets 0x100aafe4, is taken when a3(=[[a0+8]+8]:1) == 0, and falls through when a3(=[[a0+8]+8]:1) != 0.
  The `beq` branch at 0x100aaea8 targets 0x100aafe4, is taken when a3(=[[a0+8]+8]:1) == a1(=0x1), and falls through when a3(=[[a0+8]+8]:1) != a1(=0x1).
  The `beq` branch at 0x100aaeb0 targets 0x100aafe4, is taken when a0(=0x2) == a3(=[[a0+8]+8]:1), and falls through when a0(=0x2) != a3(=[[a0+8]+8]:1).
  The `beq` branch at 0x100aaeb8 targets 0x100aafe4, is taken when a3(=[[a0+8]+8]:1) == a2(=0x3), and falls through when a3(=[[a0+8]+8]:1) != a2(=0x3).
  The `beq` branch at 0x100aaefc targets 0x100aaf6c, is taken when v0(=ret(SecurityLookupIDByClass)) == 0, and falls through when v0(=ret(SecurityLookupIDByClass)) != 0.
  The `bne` branch at 0x100aaf64 targets 0x100aaeec, is taken when a1(?) < a4(?) (unsigned), and falls through when a1(?) >= a4(?) (unsigned).
  The `beq` branch at 0x100aaf70 targets 0x100ab0b4, is taken when s0(?) == s4(?), and falls through when s0(?) != s4(?).
  The `beq` branch at 0x100aaf7c targets 0x100aaf98, is taken when a5(=[sym(panoramiXDisabled)]) == 0, and falls through when a5(=[sym(panoramiXDisabled)]) != 0.
  The `bne` branch at 0x100aaf88 targets 0x100aaf10, is taken when a3(=[a0+4]) != a6(?), and falls through when a3(=[a0+4]) == a6(?).
  The `beq` branch at 0x100aaf90 targets 0x100aaf4c and is always taken.
  The `beq` branch at 0x100aafa4 targets 0x100ab014, is taken when a6(=[a0]) == 0, and falls through when a6(=[a0]) != 0.
  The `bne` branch at 0x100aafb4 targets 0x100aaf84, is taken when a1(?) < t0(=(0x40000000 | [a0+4])) (unsigned), and falls through when a1(?) >= t0(=(0x40000000 | [a0+4])) (unsigned).
  The `bne` branch at 0x100aafd4 targets 0x100aaf88, is taken when t1(?) < a1(?) (unsigned), and falls through when t1(?) >= a1(?) (unsigned).
  The `beq` branch at 0x100aafdc targets 0x100aaf70 and is always taken.
  The `beq` branch at 0x100aafe8 targets 0x100ab038, is taken when a4(=[[a0+8]+9]:1) == 0, and falls through when a4(=[[a0+8]+9]:1) != 0.
  The `beq` branch at 0x100aaff0 targets 0x100ab03c, is taken when a4(=[[a0+8]+9]:1) == t2(=0x1), and falls through when a4(=[[a0+8]+9]:1) != t2(=0x1).
  The `beq` branch at 0x100aaff8 targets 0x100ab03c, is taken when a0(=0x2) == a4(=[[a0+8]+9]:1), and falls through when a0(=0x2) != a4(=[[a0+8]+9]:1).
  The `beq` branch at 0x100ab00c targets 0x100aaf30 and is always taken.
  The `beq` branch at 0x100ab014 targets 0x100aafbc, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x100ab01c targets 0x100aaf88 and is always taken.
  The `beq` branch at 0x100ab054 targets 0x100ab060, is taken when t8(?) >= a0(=0x2) (signed), and falls through when t8(?) < a0(=0x2) (signed).
  The `blez` branch at 0x100ab064 targets 0x100ab0c8, is taken when a1(?) <= 0 (signed), and falls through when a1(?) > 0 (signed).
  The `beq` branch at 0x100ab09c targets 0x100aaf74 and is always taken.
  The `beq` branch at 0x100ab0ac targets 0x100aaf30 and is always taken.
  The `beq` branch at 0x100ab0e0 targets 0x100ab104, is taken when v0(=ret(CreateImageBuffers)) == 0, and falls through when v0(=ret(CreateImageBuffers)) != 0.
  The `beq` branch at 0x100ab0ec targets 0x100aaf30 and is always taken.
  The `beq` branch at 0x100ab0fc targets 0x100aaf30 and is always taken.
  The `beq` branch at 0x100ab118 targets 0x100ab63c, is taken when v0(=ret(dbcMakeDoubleBuffered)) == 0, and falls through when v0(=ret(dbcMakeDoubleBuffered)) != 0.
  The `blez` branch at 0x100ab128 targets 0x100ab620, is taken when ra(?) <= 0 (signed), and falls through when ra(?) > 0 (signed).
  The `beq` branch at 0x100ab158 targets 0x100ab6fc and is always taken.
  The `beq` branch at 0x100ab178 targets 0x100ab1a4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x100ab184 targets 0x100ab1a4, is taken when a5(?) != s3(?), and falls through when a5(?) == s3(?).
  The `beq` branch at 0x100ab1a4 targets 0x100ab514, is taken when a3(=one of 0x0, 0x1) == 0, and falls through when a3(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x100ab1c4 targets 0x100ab620, is taken when t1(?) == s4(?), and falls through when t1(?) != s4(?).
  The `beq` branch at 0x100ab1e8 targets 0x100ab514, is taken when a4(?) >= 0x100 (signed), and falls through when a4(?) < 0x100 (signed).
  The `beq` branch at 0x100ab200 targets 0x100ab514, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x100ab20c targets 0x100ab540, is taken when a1(?) == t8(=0x6), and falls through when a1(?) != t8(=0x6).
  The `beq` branch at 0x100ab214 targets 0x100ab56c, is taken when a1(?) == t9(=0x7), and falls through when a1(?) != t9(=0x7).
  The `beq` branch at 0x100ab21c targets 0x100ab598, is taken when a1(?) == ra(=0x8), and falls through when a1(?) != ra(=0x8).
  The `beq` branch at 0x100ab224 targets 0x100ab5c4, is taken when a1(?) == at(=0x9), and falls through when a1(?) != at(=0x9).
  The `beq` branch at 0x100ab22c targets 0x100ab5e4, is taken when a1(?) == v0(=0xa), and falls through when a1(?) != v0(=0xa).
  The `beq` branch at 0x100ab234 targets 0x100ab604, is taken when a1(?) == v1(=0xb), and falls through when a1(?) != v1(=0xb).
  The `bne` branch at 0x100ab254 targets 0x100ab6f4, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x100ab25c targets 0x100ab4cc and is always taken.
  The `beq` branch at 0x100ab278 targets 0x100ab160, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x100ab288 targets 0x100ab270, is taken when t8(?) != s3(?), and falls through when t8(?) == s3(?).
  The `beq` branch at 0x100ab2a0 targets 0x100ab324, is taken when (s7(=0xffffffff80000000) & s1(?)) == 0, and falls through when (s7(=0xffffffff80000000) & s1(?)) != 0.
  The `beq` branch at 0x100ab2c8 targets 0x100ab324, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `blez` branch at 0x100ab2d8 targets 0x100ab324, is taken when a3(=[0x102c5d70]) <= 0 (signed), and falls through when a3(=[0x102c5d70]) > 0 (signed).
  The `beq` branch at 0x100ab2e8 targets 0x100ab31c, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x100ab2f4 targets 0x100ab31c, is taken when a3(=[[sym(clients)]]) == 0, and falls through when a3(=[[sym(clients)]]) != 0.
  The `bne` branch at 0x100ab300 targets 0x100ab52c, is taken when t3(=[[[sym(clients)]]+48]) != a6(?), and falls through when t3(=[[[sym(clients)]]+48]) == a6(?).
  The `bnel` branch at 0x100ab31c targets 0x100ab45c, is taken when t0(?) != 0, and falls through when t0(?) == 0; its branch-likely delay slot `lw a3,0(a4)` at 0x100ab320 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x100ab324 targets 0x100ab34c, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x100ab354 targets 0x100ab36c, is taken when at(=[sym(__us_rsthread_malloc)]) == 0, and falls through when at(=[sym(__us_rsthread_malloc)]) != 0.
  The `beq` branch at 0x100ab37c targets 0x100ab3a0, is taken when a0(=entry(0x102c71c0)) == 0, and falls through when a0(=entry(0x102c71c0)) != 0.
  The `beq` branch at 0x100ab3b4 targets 0x100ab3c8, is taken when a5(=[sym(__us_rsthread_malloc)]) == 0, and falls through when a5(=[sym(__us_rsthread_malloc)]) != 0.
  The `beq` branch at 0x100ab3e0 targets 0x100ab3ec, is taken when a5(?) == s8(?), and falls through when a5(?) != s8(?).
  The `beq` branch at 0x100ab3f0 targets 0x100ab434, is taken when a3(=[0x102c60fc]) == 0, and falls through when a3(=[0x102c60fc]) != 0.
  The `beq` branch at 0x100ab400 targets 0x100ab434, is taken when a7(?) >= a1(?) (unsigned), and falls through when a7(?) < a1(?) (unsigned).
  The `beq` branch at 0x100ab41c targets 0x100ab434, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x100ab434 targets 0x100ab274 and is always taken.
  The `beq` branch at 0x100ab450 targets 0x100ab324, is taken when a4(?) == a7(=([sym(clients)] + ([0x102c5d70] << 0x2))), and falls through when a4(?) != a7(=([sym(clients)] + ([0x102c5d70] << 0x2))).
  The `beq` branch at 0x100ab45c targets 0x100ab484, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x100ab468 targets 0x100ab4a4, is taken when t8(?) != a6(?), and falls through when t8(?) == a6(?).
  The `beq` branch at 0x100ab488 targets 0x100ab450, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x100ab494 targets 0x100ab4b8, is taken when at(?) != a6(?), and falls through when at(?) == a6(?).
  The `beq` branch at 0x100ab49c targets 0x100ab440 and is always taken.
  The `bne` branch at 0x100ab4a4 targets 0x100ab484, is taken when t0(?) != a6(?), and falls through when t0(?) == a6(?).
  The `beq` branch at 0x100ab4b0 targets 0x100ab484 and is always taken.
  The `bne` branch at 0x100ab4b8 targets 0x100ab450, is taken when t0(?) != a6(?), and falls through when t0(?) == a6(?).
  The `beq` branch at 0x100ab4c4 targets 0x100ab450 and is always taken.
  The `beq` branch at 0x100ab4e0 targets 0x100ab518, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x100ab4ec targets 0x100ab518, is taken when a5(?) != s3(?), and falls through when a5(?) == s3(?).
  The `beq` branch at 0x100ab524 targets 0x100ab1ac and is always taken.
  The `bne` branch at 0x100ab52c targets 0x100ab31c, is taken when a1(=[[[sym(clients)]]+56]) != a6(?), and falls through when a1(=[[[sym(clients)]]+56]) == a6(?).
  The `beq` branch at 0x100ab538 targets 0x100ab31c and is always taken.
  The `beq` branch at 0x100ab564 targets 0x100ab240 and is always taken.
  The `beq` branch at 0x100ab590 targets 0x100ab240 and is always taken.
  The `beq` branch at 0x100ab5bc targets 0x100ab240 and is always taken.
  The `beq` branch at 0x100ab5dc targets 0x100ab240 and is always taken.
  The `beq` branch at 0x100ab5fc targets 0x100ab240 and is always taken.
  The `beq` branch at 0x100ab618 targets 0x100ab240 and is always taken.
  The `beq` branch at 0x100ab634 targets 0x100aaf30 and is always taken.
  The `beq` branch at 0x100ab65c targets 0x100ab6a4, is taken when a2(=[a0+16]) == 0, and falls through when a2(=[a0+16]) != 0.
  The `bne` branch at 0x100ab6a4 targets 0x100ab6cc, is taken when t1(=[sym(panoramiXDisabled)]) != 0, and falls through when t1(=[sym(panoramiXDisabled)]) == 0.
  The `beq` branch at 0x100ab6b4 targets 0x100ab6cc, is taken when t2(=[sym(panoramiXMode)]) == 0, and falls through when t2(=[sym(panoramiXMode)]) != 0.
  The `beq` branch at 0x100ab6c4 targets 0x100ab6dc, is taken when t3(=[sym(panoramiXScreen0)]) == 0, and falls through when t3(=[sym(panoramiXScreen0)]) != 0.
  The `beq` branch at 0x100ab6ec targets 0x100aaf30 and is always taken.
  The `beq` branch at 0x100ab6f4 targets 0x100ab284 and is always taken.
  The `beq` branch at 0x100ab710 targets 0x100ab1d0 and is always taken.
  The return at 0x100aaed0 has v0 = 0x2.
  The return at 0x100aaee4 has v0 = 0x10.
  The return at 0x100aaf44 has v0 = one of 0xe, 0x2, 0x3, ret(CreateImageBuffers), 0x8, ?, [a0+40].
  The return at 0x100ab030 has v0 = 0x10.
  The instructions from 0x100ab264 to 0x100ab26c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x100ab43c to 0x100ab43c are not reached by any path from the entry, and their branches are not listed.
- `PanoramiXSetWindowPntrs..HB` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100aeb00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100aeb00-0x100aec30 (304 bytes).
  It occupies 304 bytes.
  The `lw` at 0x100aeb04 loads 4 bytes from sym(WindowTable) +0x0.
  The `lw` at 0x100aeb08 loads 4 bytes from [sym(WindowTable)] +0x0.
  The `lw` at 0x100aeb5c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x100aeb6c loads 4 bytes from sym(XRT_WINDOW) +0x0.
  The `lw` at 0x100aebb8 loads 4 bytes from ?.
  The `sw` at 0x100aebc4 stores 4 bytes to ?.
  The `jalr` at 0x100aeb2c calls memcpy with a0=0x102c603c, a1=[sym(WindowTable)], a2=([0x102c5f1c] << 0x2), a3=a3 at entry (arg3).
  The `jal` at 0x100aeb68 calls SecurityLookupIDByType [0x100d6140] with a0=0x0, a1=[a0+4], a2=[sym(XRT_WINDOW)], a3=0x0.
  The `jal` at 0x100aebbc calls SecurityLookupIDByType [0x100d6140] with a0=0x0, a1=?, a2=0xffffffffc0000001, a3=0x0.
  The `bne` branch at 0x100aeb18 targets 0x100aeb50, is taken when at(=[[sym(WindowTable)]]) != a0, and falls through when at(=[[sym(WindowTable)]]) == a0.
  The `beq` branch at 0x100aeb74 targets 0x100aec1c, is taken when v0(=ret(SecurityLookupIDByType)) == 0, and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  The `blez` branch at 0x100aeb80 targets 0x100aeb38, is taken when a0(=[0x102c5f1c]) <= 0 (signed), and falls through when a0(=[0x102c5f1c]) > 0 (signed).
  The `beq` branch at 0x100aebc8 targets 0x100aebf8, is taken when v0(=ret(SecurityLookupIDByType)) == 0, and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  The `bne` branch at 0x100aebe0 targets 0x100aebb0, is taken when s0(?) < a3(=[0x102c5f1c]) (signed), and falls through when s0(?) >= a3(=[0x102c5f1c]) (signed).
  The `beq` branch at 0x100aebf0 targets 0x100aeb38 and is always taken.
  The return at 0x100aeb48 has v0 = 0x1.
  The return at 0x100aec14 has v0 = 0x0.
  The return at 0x100aec28 has v0 = 0x0.
- `AccessDestroySubwindows` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100aeea0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100aeea0-0x100aef84 (228 bytes).
  It occupies 228 bytes.
  The `lw` at 0x100aeea0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x100aeea8 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x100aeefc loads 4 bytes from [a0+8] +0x4.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x100aef1c, `lw` at 0x100aef6c.
  The `sw` at 0x100aef28 stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `lw` at 0x100aef58 loads 4 bytes from a0 (arg0 at entry) +0x58.
  The `lbu` at 0x100aef5c loads 1 byte from ?.
  The `lw` at 0x100aef60 loads 4 bytes from [a0+88] +0x0.
  The `jal` at 0x100aeef8 calls SecurityLookupWindow [0x1006ce40] with a0=[[a0+8]+4], a1=a0 at entry (arg0), a2=0x0, a3=a3 at entry (arg3).
  The `jal` at 0x100aef34 calls CheckWindowAccess [0x1018ed00] with a0=0x4, a1=a0 at entry (arg0), a2=ret(SecurityLookupWindow), a3=0x0.
  The `jalr` at 0x100aef70 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x100aeec4 targets 0x100aeee8, is taken when v1(=[a0+72]) == a1(=0x2), and falls through when v1(=[a0+72]) != a1(=0x2).
  The `bne` branch at 0x100aef00 targets 0x100aef2c, is taken when v0(=ret(SecurityLookupWindow)) != 0, and falls through when v0(=ret(SecurityLookupWindow)) == 0.
  The `bne` branch at 0x100aef3c targets 0x100aef50, is taken when v0(=ret(CheckWindowAccess)) != 0, and falls through when v0(=ret(CheckWindowAccess)) == 0.
  The `beq` branch at 0x100aef48 targets 0x100aeed8 and is always taken.
  The `beq` branch at 0x100aef7c targets 0x100aeed8 and is always taken.
  The return at 0x100aeed0 has v0 = 0x10.
  The return at 0x100aeee0 has v0 = one of 0x3, ret(?).
  The return at 0x100aef24 has v0 = 0x3.
- `SProcXineramaReparentWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100b6080 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100b6080-0x100b6144 (196 bytes).
  It occupies 196 bytes.
  The `lw` at 0x100b6080 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lbu` at 0x100b6084 loads 1 byte from [a0+8] +0x3.
  The `lbu` at 0x100b6088 loads 1 byte from [a0+8] +0x2.
  The `sb` at 0x100b608c stores 1 byte to [a0+8] +0x3.
  The `sb` at 0x100b6090 stores 1 byte to [a0+8] +0x2.
  The `lw` at 0x100b6094 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lbu` at 0x100b60c0 loads 1 byte from [a0+8] +0x7.
  The `lbu` at 0x100b60c4 loads 1 byte from [a0+8] +0x4.
  The `lbu` at 0x100b60c8 loads 1 byte from [a0+8] +0x6.
  The `lbu` at 0x100b60cc loads 1 byte from [a0+8] +0x5.
  The `lbu` at 0x100b60d0 loads 1 byte from [a0+8] +0xb.
  The `lbu` at 0x100b60d4 loads 1 byte from [a0+8] +0x8.
  The `lbu` at 0x100b60d8 loads 1 byte from [a0+8] +0xa.
  The `lbu` at 0x100b60dc loads 1 byte from [a0+8] +0x9.
  The `lbu` at 0x100b60e0 loads 1 byte from [a0+8] +0xd.
  The `lbu` at 0x100b60e4 loads 1 byte from [a0+8] +0xc.
  The `lbu` at 0x100b60e8 loads 1 byte from [a0+8] +0xf.
  The `lbu` at 0x100b60f0 loads 1 byte from [a0+8] +0xe.
  The `sb` at 0x100b60f4 stores 1 byte to [a0+8] +0xf.
  The `sb` at 0x100b60f8 stores 1 byte to [a0+8] +0xe.
  The `sb` at 0x100b60fc stores 1 byte to [a0+8] +0xd.
  The `sb` at 0x100b6100 stores 1 byte to [a0+8] +0xc.
  The `sb` at 0x100b6104 stores 1 byte to [a0+8] +0xa.
  The `sb` at 0x100b6108 stores 1 byte to [a0+8] +0x9.
  The `sb` at 0x100b610c stores 1 byte to [a0+8] +0xb.
  The `sb` at 0x100b6110 stores 1 byte to [a0+8] +0x8.
  The `sb` at 0x100b6114 stores 1 byte to [a0+8] +0x6.
  The `sb` at 0x100b6118 stores 1 byte to [a0+8] +0x5.
  The `sb` at 0x100b611c stores 1 byte to [a0+8] +0x7.
  The `sb` at 0x100b6124 stores 1 byte to [a0+8] +0x4.
  The `lw` at 0x100b6128 loads 4 bytes from sym(ProcXineramaVector) +0x1c.
  The `jalr` at 0x100b612c calls (unknown callee) with a0=a0 at entry (arg0), a1=[[a0+8]+9]:1, a2=[[a0+8]+10]:1, a3=[a0+8], a4=[[a0+8]+8]:1, a5=[[a0+8]+11]:1, a6=[[a0+8]+5]:1, a7=[[a0+8]+6]:1.
  The `beq` branch at 0x100b60ac targets 0x100b60c0, is taken when v1(=[a0+72]) == a1(=0x4), and falls through when v1(=[a0+72]) != a1(=0x4).
  The return at 0x100b60b8 has v0 = 0x10.
  The return at 0x100b613c has v0 = ret(?).
- `ProcDestroyWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100b69f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100b69f0-0x100b6a94 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0x100b69f0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x100b69f8 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x100b6a3c loads 4 bytes from [a0+8] +0x4.
  The `lw` at 0x100b6a48 loads 4 bytes from ret(SecurityLookupWindow) +0x18.
  The `lw` at 0x100b6a5c loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0x100b6a78 loads 4 bytes from ?.
  The `jal` at 0x100b6a38 calls SecurityLookupWindow [0x1006ce40] with a0=[[a0+8]+4], a1=a0 at entry (arg0), a2=0x4, a3=a3 at entry (arg3).
  The `jal` at 0x100b6a74 calls FreeResource [0x100bc480] with a0=?, a1=0x0, a2=?, a3=?.
  The `beq` branch at 0x100b6a14 targets 0x100b6a28, is taken when v1(=[a0+72]) == a1(=0x2), and falls through when v1(=[a0+72]) != a1(=0x2).
  The `beq` branch at 0x100b6a40 targets 0x100b6a84, is taken when v0(=ret(SecurityLookupWindow)) == 0, and falls through when v0(=ret(SecurityLookupWindow)) != 0.
  The `bne` branch at 0x100b6a4c targets 0x100b6a68, is taken when a1(=[ret(SecurityLookupWindow)+24]) != 0, and falls through when a1(=[ret(SecurityLookupWindow)+24]) == 0.
  The `beq` branch at 0x100b6a7c targets 0x100b6a54 and is always taken.
  The return at 0x100b6a20 has v0 = 0x10.
  The return at 0x100b6a60 has v0 = [a0+40].
  The return at 0x100b6a8c has v0 = 0x3.
- `ProcRecordRegisterClients..OJG` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100b8390 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100b8390-0x100b8410 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0x100b8390 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x100b8394 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x100b83d4 loads 4 bytes from [a0+8] +0x4.
  The `lw` at 0x100b83ec loads 4 bytes from ?.
  The `sw` at 0x100b83f8 stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `jal` at 0x100b83d0 calls SecurityLookupIDByType [0x100d6140] with a0=0x0, a1=[[a0+8]+4], a2=[0x102cc0b0], a3=0x0.
  Calls RecordRegisterClients..LJG [0x1022acf0] via direct with a0=ret(SecurityLookupIDByType), a1=a0 at entry (arg0), a2=?, a3=? (`j` at 0x100b8408).
  The `beq` branch at 0x100b83a8 targets 0x100b83b8, is taken when at(=[a0+72]) >= 0x5 (unsigned), and falls through when at(=[a0+72]) < 0x5 (unsigned).
  The `bne` branch at 0x100b83d8 targets 0x100b83fc, is taken when v0(=ret(SecurityLookupIDByType)) != 0, and falls through when v0(=ret(SecurityLookupIDByType)) == 0.
  The return at 0x100b83b0 has v0 = 0x10.
  The return at 0x100b83f4 has v0 = [0x102cc0b4].
- `SetupWildMatch..EO` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100b9a70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100b9a70-0x100b9cd8 (616 bytes).
  It occupies 616 bytes.
  The `lw` at 0x100b9a88 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x100b9a94 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lbu` at 0x100b9a9c loads 1 byte from [a1] +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0x100b9acc, `lw` at 0x100b9c1c.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x100b9ad0, `lbu` at 0x100b9aec.
  The `lh` at 0x100b9b38 loads 2 bytes from a1 (arg1 at entry) +0x6.
  3 such `sw` accesses store 4 bytes to a4 (arg4 at entry) +0x0, including `sw` at 0x100b9b3c, `sw` at 0x100b9c28, `sw` at 0x100b9cb0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x100b9b7c, `lw` at 0x100b9c58.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x100b9b9c, `lw` at 0x100b9c74.
  3 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0x100b9bd8, `sw` at 0x100b9ca8, `sw` at 0x100b9ccc.
  3 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x100b9be8, `sw` at 0x100b9c9c, `sw` at 0x100b9cc0.
  The `jalr` at 0x100b9b98 calls strncmp with a0=[a1], a1=?, a2=?, a3=?.
  The `jalr` at 0x100b9c70 calls strcmp with a0=[a1], a1=?, a2=?, a3=?.
  The `beq` branch at 0x100b9ab8 targets 0x100b9c1c, is taken when v0(=[[a1]]:1) == 0, and falls through when v0(=[[a1]]:1) != 0.
  The `beq` branch at 0x100b9ac8 targets 0x100b9adc and is always taken.
  The `beq` branch at 0x100b9ad4 targets 0x100b9b30, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x100b9adc targets 0x100b9b20, is taken when t0(=0x2a) == v0(?), and falls through when t0(=0x2a) != v0(?).
  The `beq` branch at 0x100b9ae4 targets 0x100b9b20, is taken when t1(=0x3f) == v0(?), and falls through when t1(=0x3f) != v0(?).
  The `beq` branch at 0x100b9af0 targets 0x100b9b30, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x100b9af8 targets 0x100b9b08, is taken when t0(=0x2a) == v0(?), and falls through when t0(=0x2a) != v0(?).
  The `bne` branch at 0x100b9b00 targets 0x100b9ad0, is taken when t1(=0x3f) != v0(?), and falls through when t1(=0x3f) == v0(?).
  The `bne` branch at 0x100b9b08 targets 0x100b9ad0, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0x100b9b10 targets 0x100b9ad0 and is always taken.
  The `bne` branch at 0x100b9b20 targets 0x100b9aec, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0x100b9b28 targets 0x100b9aec and is always taken.
  The `beq` branch at 0x100b9b30 targets 0x100b9cac, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x100b9b40 targets 0x100b9cb4, is taken when a0(=[a0+12]) == 0, and falls through when a0(=[a0+12]) != 0.
  The `beq` branch at 0x100b9b48 targets 0x100b9c30, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `blez` branch at 0x100b9b50 targets 0x100b9bb8, is taken when s1(=[a0]) <= 0 (signed), and falls through when s1(=[a0]) > 0 (signed).
  The `beq` branch at 0x100b9b58 targets 0x100b9b74 and is always taken.
  The `beq` branch at 0x100b9b68 targets 0x100b9bc0, is taken when s0(?) >= s1(?) (signed), and falls through when s0(?) < s1(?) (signed).
  The `beq` branch at 0x100b9ba0 targets 0x100b9bbc, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `bgez` branch at 0x100b9ba8 targets 0x100b9b60, is taken when v0(=ret(strncmp)) >= 0 (signed), and falls through when v0(=ret(strncmp)) < 0 (signed).
  The `beq` branch at 0x100b9bb0 targets 0x100b9b64 and is always taken.
  The `beq` branch at 0x100b9c24 targets 0x100b9cb4, is taken when v0(=[a0+12]) == 0, and falls through when v0(=[a0+12]) != 0.
  The `blez` branch at 0x100b9c30 targets 0x100b9c90, is taken when s1(=[a0]) <= 0 (signed), and falls through when s1(=[a0]) > 0 (signed).
  The `beq` branch at 0x100b9c38 targets 0x100b9c4c and is always taken.
  The `beq` branch at 0x100b9c48 targets 0x100b9c90, is taken when s0(?) >= s1(?) (signed), and falls through when s0(?) < s1(?) (signed).
  The `beq` branch at 0x100b9c78 targets 0x100b9cd0, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `bgez` branch at 0x100b9c80 targets 0x100b9c40, is taken when v0(=ret(strcmp)) >= 0 (signed), and falls through when v0(=ret(strcmp)) < 0 (signed).
  The `beq` branch at 0x100b9c88 targets 0x100b9c44 and is always taken.
  The `beq` branch at 0x100b9ca4 targets 0x100b9bf8 and is always taken.
  The `beq` branch at 0x100b9cac targets 0x100b9b40 and is always taken.
  The `beq` branch at 0x100b9cc8 targets 0x100b9bf8 and is always taken.
  The `beq` branch at 0x100b9cd0 targets 0x100b9bf8 and is always taken.
  The return at 0x100b9bf0 has v0 = -0x1.
  The return at 0x100b9c14 has v0 = one of -0x1, ?.
  The instructions from 0x100b9b18 to 0x100b9b1c are not reached by any path from the entry, and their branches are not listed.
- `ProcCirculateWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100b9fb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100b9fb0-0x100ba074 (196 bytes).
  It occupies 196 bytes.
  The `lw` at 0x100b9fb0 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x100b9fbc loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lbu` at 0x100b9ff0 loads 1 byte from [a0+8] +0x1.
  The `sw` at 0x100ba024 stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `lw` at 0x100ba038 loads 4 bytes from [a0+8] +0x4.
  The `lbu` at 0x100ba060 loads 1 byte from ?.
  The `lw` at 0x100ba070 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `jal` at 0x100ba034 calls SecurityLookupWindow [0x1006ce40] with a0=[[a0+8]+4], a1=a0 at entry (arg0), a2=0x2, a3=a3 at entry (arg3), a5=[a0+8], a6=[[a0+8]+1]:1, a7=0x1.
  The `jal` at 0x100ba05c calls CirculateWindow [0x101610f0] with a0=ret(SecurityLookupWindow), a1=?, a2=a0 at entry (arg0), a3=?, a5=0x3.
  The `beq` branch at 0x100b9fcc targets 0x100b9ff0, is taken when v1(=[a0+72]) == a1(=0x2), and falls through when v1(=[a0+72]) != a1(=0x2).
  The `beq` branch at 0x100ba004 targets 0x100ba028, is taken when a6(=[[a0+8]+1]:1) == 0, and falls through when a6(=[[a0+8]+1]:1) != 0.
  The `beq` branch at 0x100ba00c targets 0x100ba028, is taken when a6(=[[a0+8]+1]:1) == a7(=0x1), and falls through when a6(=[[a0+8]+1]:1) != a7(=0x1).
  The `bne` branch at 0x100ba040 targets 0x100ba050, is taken when v0(=ret(SecurityLookupWindow)) != 0, and falls through when v0(=ret(SecurityLookupWindow)) == 0.
  The `beq` branch at 0x100ba048 targets 0x100b9fe4 and is always taken.
  The `beq` branch at 0x100ba06c targets 0x100b9fe0 and is always taken.
  The return at 0x100b9fd8 has v0 = 0x10.
  The return at 0x100b9fe8 has v0 = one of [a0+40], 0x3.
  The return at 0x100ba020 has v0 = 0x2.
- `t1_CopyRegion` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100c0a10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100c0a10-0x100c0cfc (748 bytes).
  It occupies 748 bytes.
  2 such `sw` accesses store 4 bytes to ret(t1_Allocate) +0x1c, including `sw` at 0x100c0a4c, `sw` at 0x100c0cac.
  The `lw` at 0x100c0a50 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lh` at 0x100c0a74 loads 2 bytes from [a0+28] +0x12.
  The `lh` at 0x100c0a78 loads 2 bytes from [a0+28] +0x10.
  The `lw` at 0x100c0a9c loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `sw` at 0x100c0adc stores 4 bytes to ret(t1_Allocate) +0x20.
  18 such `sw` accesses store 4 bytes to ?, including `sw` at 0x100c0b10, `sw` at 0x100c0c04, `sw` at 0x100c0c20.
  19 such `lw` accesses load 4 bytes from ?, including `lw` at 0x100c0b14, `lw` at 0x100c0b34, `lw` at 0x100c0bf8.
  4 such `lh` accesses load 2 bytes from ?, including `lh` at 0x100c0b20, `lh` at 0x100c0b24, `lh` at 0x100c0b38.
  The `lbu` at 0x100c0b3c loads 1 byte from ?.
  The `sb` at 0x100c0b98 stores 1 byte to ret(t1_Allocate) +0x1.
  2 such `sw` accesses store 4 bytes to ret(t1_Allocate) +0x14, including `sw` at 0x100c0b9c, `sw` at 0x100c0bc0.
  The `sh` at 0x100c0ba0 stores 2 bytes to ret(t1_Allocate) +0x12.
  The `sh` at 0x100c0ba4 stores 2 bytes to ret(t1_Allocate) +0x10.
  The `sh` at 0x100c0ba8 stores 2 bytes to ret(t1_Allocate) +0xe.
  The `sh` at 0x100c0bb4 stores 2 bytes to ret(t1_Allocate) +0xc.
  The `lw` at 0x100c0c9c loads 4 bytes from ret(t1_Allocate) +0x1c.
  The `lw` at 0x100c0cf8 loads 4 bytes from [a0+28] +0x14.
  The `jal` at 0x100c0a30 calls t1_Allocate [0x1011d0f0] with a0=0x50, a1=a0 at entry (arg0), a2=0x0, a3=a3 at entry (arg3).
  The `jal` at 0x100c0ad0 calls t1_Dup [0x101565b0] with a0=[a0+32], a1=?, a2=?, a3=?.
  The `jal` at 0x100c0b70 calls t1_Allocate [0x1011d0f0] with a0=0x18, a1=?, a2=?, a3=?.
  The `jal` at 0x100c0cbc calls FatalError [0x10094f20] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x100c0a6c targets 0x100c0a94, is taken when s0(=[a0+28]) == 0, and falls through when s0(=[a0+28]) != 0.
  The `beq` branch at 0x100c0a80 targets 0x100c0a94, is taken when s3(=[[a0+28]+16]:2) >= s2(=[[a0+28]+18]:2) (signed), and falls through when s3(=[[a0+28]+16]:2) < s2(=[[a0+28]+18]:2) (signed).
  The `beq` branch at 0x100c0a8c targets 0x100c0cf0 and is always taken.
  The `beq` branch at 0x100c0aac targets 0x100c0af0, is taken when a0(=[a0+32]) == 0, and falls through when a0(=[a0+32]) != 0.
  The `beq` branch at 0x100c0b18 targets 0x100c0a94, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x100c0b2c targets 0x100c0a94, is taken when s3(?) >= s2(?) (signed), and falls through when s3(?) < s2(?) (signed).
  The `beq` branch at 0x100c0b48 targets 0x100c0cb8, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x100c0b90 targets 0x100c0b9c, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x100c0bb8 targets 0x100c0bc8, is taken when s3(?) == s8(?), and falls through when s3(?) != s8(?).
  The `blez` branch at 0x100c0be0 targets 0x100c0c9c, is taken when v0(?) <= 0 (signed), and falls through when v0(?) > 0 (signed).
  The `beq` branch at 0x100c0be8 targets 0x100c0c08, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x100c0c00 targets 0x100c0bf0, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x100c0c0c targets 0x100c0c9c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x100c0c14 targets 0x100c0ccc, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0x100c0c64 targets 0x100c0cb0, is taken when a0(?) == v0(?), and falls through when a0(?) != v0(?).
  The `bne` branch at 0x100c0c90 targets 0x100c0c40, is taken when a0(?) != v0(?), and falls through when a0(?) == v0(?).
  The `bne` branch at 0x100c0ca0 targets 0x100c0b10, is taken when a5(=[ret(t1_Allocate)+28]) != 0, and falls through when a5(=[ret(t1_Allocate)+28]) == 0.
  The `beq` branch at 0x100c0ca8 targets 0x100c0b14 and is always taken.
  The `beq` branch at 0x100c0cb0 targets 0x100c0c98 and is always taken.
  The `beq` branch at 0x100c0cc4 targets 0x100c0b54 and is always taken.
  The `beq` branch at 0x100c0ce8 targets 0x100c0c9c and is always taken.
  The `beq` branch at 0x100c0cf4 targets 0x100c0b38 and is always taken.
  The return at 0x100c0ae8 has v0 = ret(t1_Allocate).
  The return at 0x100c0b08 has v0 = ret(t1_Allocate).
- `FontFileRegisterBitmapSource` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100c1c50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100c1c50-0x100c1d10 (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0x100c1c7c loads 4 bytes from [0x102c7300] +0x0.
  The `lw` at 0x100c1c8c loads 4 bytes from ?.
  The `sw` at 0x100c1ce4 stores 4 bytes to ?.
  The `jal` at 0x100c1cac calls Xrealloc [0x101b9470] with a0=[0x102c7300], a1=([0x102c7304] << 0x2)+16, a2=[0x102c7304]+4, a3=?, a5=[0x102c7308], a6=[0x102c7300], a7=[0x102c7304].
  The `blez` branch at 0x100c1c68 targets 0x100c1c90, is taken when a5(=[0x102c7308]) <= 0 (signed), and falls through when a5(=[0x102c7308]) > 0 (signed).
  The `beq` branch at 0x100c1c80 targets 0x100c1cf4, is taken when t0(?) == s0(=a0), and falls through when t0(?) != s0(=a0).
  The `bnel` branch at 0x100c1c88 targets 0x100c1c80, is taken when a3(?) != a4(=(([0x102c7308] << 0x2) + [0x102c7300])), and falls through when a3(?) == a4(=(([0x102c7308] << 0x2) + [0x102c7300])); its branch-likely delay slot `lw t0,0(a3)` at 0x100c1c8c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x100c1c90 targets 0x100c1cd0, is taken when a7(=[0x102c7304]) != a5(=[0x102c7308]), and falls through when a7(=[0x102c7304]) == a5(=[0x102c7308]).
  The `beq` branch at 0x100c1cbc targets 0x100c1d00, is taken when v0(=ret(Xrealloc)) == 0, and falls through when v0(=ret(Xrealloc)) != 0.
  The return at 0x100c1cec has v0 = 0x1.
  The return at 0x100c1cf8 has v0 = 0x1.
  The return at 0x100c1d08 has v0 = 0x0.
- `AllocateOutputBuffer` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100c1f40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100c1f40-0x100c1fc0 (128 bytes).
  It occupies 128 bytes.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0x100c1f88, `sw` at 0x100c1f90, `sw` at 0x100c1f94.
  The `jal` at 0x100c1f4c calls Xalloc [0x1020aeb0] with a0=0x14, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100c1f70 calls Xalloc [0x1020aeb0] with a0=0x1000, a1=?, a2=?, a3=?.
  The `jal` at 0x100c1fa8 calls Xfree [0x101fc9c0] with a0=?, a1=?, a2=?, a3=0x1000.
  The `bne` branch at 0x100c1f54 targets 0x100c1f6c, is taken when v0(=ret(Xalloc)) != 0, and falls through when v0(=ret(Xalloc)) == 0.
  The `beq` branch at 0x100c1f84 targets 0x100c1fa4, is taken when v0(=ret(Xalloc)) == 0, and falls through when v0(=ret(Xalloc)) != 0.
  The return at 0x100c1f64 has v0 = 0x0.
  The return at 0x100c1f9c has v0 = ?.
  The return at 0x100c1fb8 has v0 = 0x0.
- `AnyWindowOverlapsMe..L` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100c2610 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100c2610-0x100c28fc (748 bytes).
  It occupies 748 bytes.
  The `lw` at 0x100c2618 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `lw` at 0x100c2638 loads 4 bytes from [a0+32] +0x7c.
  20 such `lw` accesses load 4 bytes from ?, including `lw` at 0x100c2640, `lw` at 0x100c264c, `lw` at 0x100c2720.
  6 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x100c265c, `lhu` at 0x100c2674, `lhu` at 0x100c268c.
  8 such `lh` accesses load 2 bytes from ?, including `lh` at 0x100c2660, `lh` at 0x100c2678, `lh` at 0x100c2690.
  The `lh` at 0x100c26cc loads 2 bytes from a2 (arg2 at entry) +0x0.
  The `lh` at 0x100c26d0 loads 2 bytes from a2 (arg2 at entry) +0x2.
  The `lh` at 0x100c26d8 loads 2 bytes from a2 (arg2 at entry) +0x4.
  The `lh` at 0x100c26e0 loads 2 bytes from a2 (arg2 at entry) +0x6.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x78, including `lw` at 0x100c2708, `lw` at 0x100c2754, `lw` at 0x100c2790.
  3 such `lw` accesses load 4 bytes from [a0+120] +0x28, including `lw` at 0x100c2714, `lw` at 0x100c2760, `lw` at 0x100c279c.
  The `lw` at 0x100c2738 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x100c2740 loads 4 bytes from [a0+16] +0x150.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x60, including `lh` at 0x100c2770, `lh` at 0x100c27c4.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x62, including `lh` at 0x100c2778, `lh` at 0x100c27cc.
  The `jalr` at 0x100c2748 calls (unknown callee) with a0=a2 at entry (arg2), a1=0x1, a2=?, a3=?, a7=[a2+4]:2.
  The `jalr` at 0x100c2784 calls (unknown callee) with a0=ret(?), a1=?, a2=?, a3=?, a5=[a0+120], a6=[[a0+120]+40].
  The `jalr` at 0x100c27ac calls (unknown callee) with a0=?, a1=?, a2=?, a3=?, a5=[a0+120].
  The `jalr` at 0x100c27c8 calls (unknown callee) with a0=?, a1=[a0+96]:2, a2=[a0+98]:2, a3=?.
  The `jalr` at 0x100c27e0 calls (unknown callee) with a0=sp-96, a1=0x1, a2=?, a3=?.
  The `jalr` at 0x100c2818 calls (unknown callee) with a0=ret(?), a1=?, a2=?, a3=?.
  The `jalr` at 0x100c283c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100c2854 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100c286c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100c287c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100c2890 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100c28a0 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x100c262c targets 0x100c28d0, is taken when a1 == s0(=[a0+32]), and falls through when a1 != s0(=[a0+32]).
  The `beq` branch at 0x100c2634 targets 0x100c2650 and is always taken.
  The `beq` branch at 0x100c2644 targets 0x100c28d4, is taken when s1(=a1) == s0(?), and falls through when s1(=a1) != s0(?).
  The `bgez` branch at 0x100c2654 targets 0x100c2640, is taken when at(?) >= 0 (signed), and falls through when at(?) < 0 (signed).
  The `beq` branch at 0x100c26dc targets 0x100c2640, is taken when v1(=[a2]:2) >= a3(?) (signed), and falls through when v1(=[a2]:2) < a3(?) (signed).
  The `beq` branch at 0x100c26f0 targets 0x100c2640, is taken when a1(?) >= a7(=[a2+4]:2) (signed), and falls through when a1(?) < a7(=[a2+4]:2) (signed).
  The `beq` branch at 0x100c26f8 targets 0x100c2640, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x100c2700 targets 0x100c2640, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x100c270c targets 0x100c2720, is taken when a5(=[a0+120]) == 0, and falls through when a5(=[a0+120]) != 0.
  The `bne` branch at 0x100c2718 targets 0x100c2738, is taken when a4(=[[a0+120]+40]) != 0, and falls through when a4(=[[a0+120]+40]) == 0.
  The `beq` branch at 0x100c2724 targets 0x100c28b8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x100c2730 targets 0x100c28b4, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x100c2758 targets 0x100c27d0, is taken when a5(=[a0+120]) == 0, and falls through when a5(=[a0+120]) != 0.
  The `beq` branch at 0x100c2764 targets 0x100c27d0, is taken when a6(=[[a0+120]+40]) == 0, and falls through when a6(=[[a0+120]+40]) != 0.
  The `beq` branch at 0x100c2794 targets 0x100c28ec, is taken when a5(=[a0+120]) == 0, and falls through when a5(=[a0+120]) != 0.
  The `beq` branch at 0x100c27ec targets 0x100c285c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x100c27f8 targets 0x100c2860, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x100c2824 targets 0x100c28f4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x100c28ac targets 0x100c2640, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x100c28ec targets 0x100c27a0 and is always taken.
  The `beq` branch at 0x100c28f4 targets 0x100c2830 and is always taken.
  The return at 0x100c28c8 has v0 = 0x1.
  The return at 0x100c28e4 has v0 = 0x0.
  The instructions from 0x100c263c to 0x100c263c are not reached by any path from the entry, and their branches are not listed.
- `ProcXineramaCreateImageBuffers..KKC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100c2900 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100c2900-0x100c3134 (2100 bytes).
  It occupies 2100 bytes.
  The `lw` at 0x100c2900 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x100c291c loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x100c293c loads 4 bytes from [a0+8] +0x4.
  The `lw` at 0x100c2954 loads 4 bytes from sym(XRT_WINDOW) +0x0.
  The `lbu` at 0x100c2960 loads 1 byte from ret(SecurityLookupIDByType) +0xa4.
  The `lhu` at 0x100c29a0 loads 2 bytes from [a0+8] +0x2.
  10 such `sw` accesses store 4 bytes to ?, including `sw` at 0x100c2a48, `sw` at 0x100c2a5c, `sw` at 0x100c2a78.
  The `sw` at 0x100c2a50 stores 4 bytes to ret(Xalloc) +0x80.
  26 such `lw` accesses load 4 bytes from ?, including `lw` at 0x100c2a54, `lw` at 0x100c2a64, `lw` at 0x100c2a6c.
  The `lw` at 0x100c2a88 loads 4 bytes from a0 (arg0 at entry) +0x0.
  2 such `sw` accesses store 4 bytes to sym(panoramiXMode) +0x0, including `sw` at 0x100c2ae4, `sw` at 0x100c2be8.
  3 such `sw` accesses store 4 bytes to sym(panoramiXScreen0) +0x0, including `sw` at 0x100c2b38, `sw` at 0x100c2bcc, `sw` at 0x100c2bd0.
  The `sw` at 0x100c2b80 stores 4 bytes to [a0+8] +0xc.
  The `sw` at 0x100c2bc4 stores 4 bytes to [a0+8] +0x4.
  3 such `lw` accesses load 4 bytes from table(0x102c71c0) +0x0, including `lw` at 0x100c2c30, `lw` at 0x100c2dc4, `lw` at 0x100c2e08.
  8 such `lw` accesses load 4 bytes from sym(__us_rsthread_malloc) +0x0, including `lw` at 0x100c2c38, `lw` at 0x100c2c50, `lw` at 0x100c2c8c.
  3 such `sw` accesses store 4 bytes to table(0x102c71c0) +0x0, including `sw` at 0x100c2c54, `sw` at 0x100c2d58, `sw` at 0x100c2e3c.
  The `sw` at 0x100c2f18 stores 4 bytes to ret(Xalloc) +0xc.
  The `sw` at 0x100c2f1c stores 4 bytes to ret(Xalloc) +0x8.
  The `sw` at 0x100c2f20 stores 4 bytes to ret(Xalloc) +0x4.
  The `sw` at 0x100c2f24 stores 4 bytes to ret(Xalloc) +0x0.
  The `jal` at 0x100c2950 calls SecurityLookupIDByType [0x100d6140] with a0=a0 at entry (arg0), a1=[[a0+8]+4], a2=[sym(XRT_WINDOW)], a3=0x1.
  The `jal` at 0x100c29b0 calls Xalloc [0x1020aeb0] with a0=([[a0+8]+2]:2 << 0x2)-12, a1=[[a0+8]+2]:2-3, a2=?, a3=0x1, a4=[ret(SecurityLookupIDByType)+164]:1.
  The `jal` at 0x100c2a28 calls Xalloc [0x1020aeb0] with a0=0xa8, a1=?, a2=?, a3=?.
  The `jalr` at 0x100c2a40 calls bzero with a0=ret(Xalloc), a1=0xa8, a2=?, a3=?.
  The `jal` at 0x100c2a84 calls FakeClientID [0x10069920] with a0=[a0], a1=[0x102c5f1c], a2=?, a3=?.
  The `jal` at 0x100c2b20 calls ProcCreateImageBuffers..AKC [0x100aae40] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=0x1.
  The `jal` at 0x100c2bd4 calls XineramaDeliverVisibilityNotify [0x10197300] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100c2bdc calls XineramaDeliverExpose [0x100e7410] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100c2c1c calls __libc_lockmalloc with a0=?, a1=[sym(__us_rsthread_malloc)], a2=?, a3=?.
  The `jal` at 0x100c2c3c calls realfree..NL [0x1025db70] with a0=entry(0x102c71c0), a1=table(0x102c5d40), a2=[0x102c7240], a3=?, a4=[sym(__us_rsthread_malloc)].
  The `jalr` at 0x100c2c70 calls __libc_unlockmalloc with a0=?, a1=table(0x102c5d40), a2=[0x102c7240], a3=?, a4=[sym(__us_rsthread_malloc)].
  The `jal` at 0x100c2ca4 calls Xfree [0x101fc9c0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100c2d38 calls realfree..NL [0x1025db70] with a0=entry(0x102c71c0), a1=table(0x102c5d40), a2=[0x102c7240], a3=([0x102c7240] << 0x2).
  The `jalr` at 0x100c2d74 calls __libc_unlockmalloc with a0=?, a1=table(0x102c5d40), a2=[0x102c7240], a3=([0x102c7240] << 0x2), a5=[sym(__us_rsthread_malloc)].
  The `jalr` at 0x100c2dac calls __libc_lockmalloc with a0=?, a1=[sym(__us_rsthread_malloc)], a2=?, a3=?.
  The `jalr` at 0x100c2dec calls __libc_lockmalloc with a0=?, a1=?, a2=?, a3=?, a4=[sym(__us_rsthread_malloc)].
  The `jal` at 0x100c2e14 calls realfree..NL [0x1025db70] with a0=entry(0x102c71c0), a1=table(0x102c5d40), a2=[0x102c7240], a3=([0x102c7240] << 0x2), a4=[sym(__us_rsthread_malloc)].
  The `jalr` at 0x100c2e58 calls __libc_unlockmalloc with a0=?, a1=table(0x102c5d40), a2=[0x102c7240], a3=([0x102c7240] << 0x2), a4=[sym(__us_rsthread_malloc)].
  The `jal` at 0x100c2f04 calls Xalloc [0x1020aeb0] with a0=0x10, a1=?, a2=?, a3=?.
  The `jal` at 0x100c2f9c calls RebuildTable..ID [0x101c6ee0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100c2fc4 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100c30e0 calls ErrorF [0x10094ec0] with a0=?, a1=?, a2=[0x102ca7f8], a3=?.
  The `jal` at 0x100c30ec calls FatalError [0x10094f20] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x100c2918 targets 0x100c293c, is taken when at(=[a0+72]) >= 0x3 (unsigned), and falls through when at(=[a0+72]) < 0x3 (unsigned).
  The `beq` branch at 0x100c2958 targets 0x100c2988, is taken when v0(=ret(SecurityLookupIDByType)) == 0, and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  The `beq` branch at 0x100c2968 targets 0x100c299c, is taken when a3(=0x1) == a4(=[ret(SecurityLookupIDByType)+164]:1), and falls through when a3(=0x1) != a4(=[ret(SecurityLookupIDByType)+164]:1).
  The `beq` branch at 0x100c29bc targets 0x100c2e6c, is taken when v0(=ret(Xalloc)) == 0, and falls through when v0(=ret(Xalloc)) != 0.
  The `blez` branch at 0x100c29c8 targets 0x100c2ab4, is taken when a3(?) <= 0 (signed), and falls through when a3(?) > 0 (signed).
  The `beq` branch at 0x100c2a00 targets 0x100c2a20 and is always taken.
  The `beq` branch at 0x100c2a18 targets 0x100c2ad0, is taken when s2(?) == s5(?), and falls through when s2(?) != s5(?).
  The `beq` branch at 0x100c2a30 targets 0x100c2cd8, is taken when v0(=ret(Xalloc)) == 0, and falls through when v0(=ret(Xalloc)) != 0.
  The `bne` branch at 0x100c2a74 targets 0x100c2a08, is taken when a1(=[0x102c5f1c]) < 0x2 (signed), and falls through when a1(=[0x102c5f1c]) >= 0x2 (signed).
  The `bne` branch at 0x100c2aa4 targets 0x100c2a80, is taken when s0(?) < a1(=[0x102c5f1c]) (signed), and falls through when s0(?) >= a1(=[0x102c5f1c]) (signed).
  The `beq` branch at 0x100c2aac targets 0x100c2a0c and is always taken.
  The `blez` branch at 0x100c2ae0 targets 0x100c3104, is taken when a1(=[0x102c5f1c]) <= 0 (signed), and falls through when a1(=[0x102c5f1c]) > 0 (signed).
  The `beq` branch at 0x100c2b18 targets 0x100c3118 and is always taken.
  The `bne` branch at 0x100c2b34 targets 0x100c2bd4, is taken when v0(=ret(ProcCreateImageBuffers..AKC)) != 0, and falls through when v0(=ret(ProcCreateImageBuffers..AKC)) == 0.
  The `beq` branch at 0x100c2b48 targets 0x100c2bd0, is taken when s1(?) == t9(?), and falls through when s1(?) != t9(?).
  The `beq` branch at 0x100c2b58 targets 0x100c2bbc, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x100c2b64 targets 0x100c2b84, is taken when (s6(?) & 0x1) == 0, and falls through when (s6(?) & 0x1) != 0.
  The `beq` branch at 0x100c2b84 targets 0x100c2bbc, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x100c2bb4 targets 0x100c2b90, is taken when a1(?) != s5(?), and falls through when a1(?) == s5(?).
  The `bne` branch at 0x100c2bc0 targets 0x100c2b20, is taken when s2(?) != s1(?), and falls through when s2(?) == s1(?).
  The `beq` branch at 0x100c2bc8 targets 0x100c2b20 and is always taken.
  The `beq` branch at 0x100c2bec targets 0x100c2e7c, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `blez` branch at 0x100c2bf4 targets 0x100c2ca4, is taken when s6(?) <= 0 (signed), and falls through when s6(?) > 0 (signed).
  The `beq` branch at 0x100c2c10 targets 0x100c2c84 and is always taken.
  The `beq` branch at 0x100c2c34 targets 0x100c2c54, is taken when a0(=entry(0x102c71c0)) == 0, and falls through when a0(=entry(0x102c71c0)) != 0.
  The `beq` branch at 0x100c2c64 targets 0x100c2c78, is taken when a4(=[sym(__us_rsthread_malloc)]) == 0, and falls through when a4(=[sym(__us_rsthread_malloc)]) != 0.
  The `beq` branch at 0x100c2c7c targets 0x100c2ca0, is taken when s1(?) == s5(?), and falls through when s1(?) != s5(?).
  The `beq` branch at 0x100c2c88 targets 0x100c2c78, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `bne` branch at 0x100c2c90 targets 0x100c2c18, is taken when a1(=[sym(__us_rsthread_malloc)]) != 0, and falls through when a1(=[sym(__us_rsthread_malloc)]) == 0.
  The `beq` branch at 0x100c2c98 targets 0x100c2c28 and is always taken.
  The `beq` branch at 0x100c2cd0 targets 0x100c2934 and is always taken.
  The `blez` branch at 0x100c2cf8 targets 0x100c2dd8, is taken when a4(?) <= 0 (signed), and falls through when a4(?) > 0 (signed).
  The `beq` branch at 0x100c2d30 targets 0x100c2d90 and is always taken.
  The `beq` branch at 0x100c2d68 targets 0x100c2d7c, is taken when a5(=[sym(__us_rsthread_malloc)]) == 0, and falls through when a5(=[sym(__us_rsthread_malloc)]) != 0.
  The `beq` branch at 0x100c2d88 targets 0x100c2dd8, is taken when a7(?) == t0(?), and falls through when a7(?) != t0(?).
  The `beq` branch at 0x100c2d98 targets 0x100c2d7c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x100c2da0 targets 0x100c2db4, is taken when a1(=[sym(__us_rsthread_malloc)]) == 0, and falls through when a1(=[sym(__us_rsthread_malloc)]) != 0.
  The `bne` branch at 0x100c2dc8 targets 0x100c2d38, is taken when a0(=entry(0x102c71c0)) != 0, and falls through when a0(=entry(0x102c71c0)) == 0.
  The `beq` branch at 0x100c2dd0 targets 0x100c2d54 and is always taken.
  The `beq` branch at 0x100c2de0 targets 0x100c2df8, is taken when a4(=[sym(__us_rsthread_malloc)]) == 0, and falls through when a4(=[sym(__us_rsthread_malloc)]) != 0.
  The `beq` branch at 0x100c2e0c targets 0x100c2e34, is taken when a0(=entry(0x102c71c0)) == 0, and falls through when a0(=entry(0x102c71c0)) != 0.
  The `beq` branch at 0x100c2e4c targets 0x100c2e64, is taken when a4(=[sym(__us_rsthread_malloc)]) == 0, and falls through when a4(=[sym(__us_rsthread_malloc)]) != 0.
  The `beq` branch at 0x100c2e64 targets 0x100c2934 and is always taken.
  The `beq` branch at 0x100c2e74 targets 0x100c2934 and is always taken.
  The `blez` branch at 0x100c2e7c targets 0x100c2cb0, is taken when s6(?) <= 0 (signed), and falls through when s6(?) > 0 (signed).
  The `beq` branch at 0x100c2ea8 targets 0x100c3128 and is always taken.
  The `beq` branch at 0x100c2ec0 targets 0x100c2fd4, is taken when a7(?) == t0(=0x6), and falls through when a7(?) != t0(=0x6).
  The `beq` branch at 0x100c2ecc targets 0x100c3000, is taken when a7(?) == t1(=0x7), and falls through when a7(?) != t1(=0x7).
  The `beq` branch at 0x100c2ed4 targets 0x100c3040, is taken when a7(?) == t2(=0x8), and falls through when a7(?) != t2(=0x8).
  The `beq` branch at 0x100c2edc targets 0x100c306c, is taken when a7(?) == t3(=0x9), and falls through when a7(?) != t3(=0x9).
  The `beq` branch at 0x100c2ee4 targets 0x100c308c, is taken when a7(?) == t8(=0xa), and falls through when a7(?) != t8(=0xa).
  The `beq` branch at 0x100c2eec targets 0x100c30ac, is taken when a7(?) == t9(=0xb), and falls through when a7(?) != t9(=0xb).
  The `beq` branch at 0x100c2f0c targets 0x100c2fac, is taken when v0(=ret(Xalloc)) == 0, and falls through when v0(=ret(Xalloc)) != 0.
  The `beq` branch at 0x100c2f3c targets 0x100c302c, is taken when (s7(=0x40000000) & s2(?)) == 0, and falls through when (s7(=0x40000000) & s2(?)) != 0.
  The `beq` branch at 0x100c2f48 targets 0x100c30fc, is taken when s1(?) == s5(?), and falls through when s1(?) != s5(?).
  The `beq` branch at 0x100c2f74 targets 0x100c30cc, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x100c2f88 targets 0x100c2eb0, is taken when t8(?) < t9(?) (signed), and falls through when t8(?) >= t9(?) (signed).
  The `beq` branch at 0x100c2f94 targets 0x100c2eb4, is taken when a7(?) >= 0xb (signed), and falls through when a7(?) < 0xb (signed).
  The `beq` branch at 0x100c2fa4 targets 0x100c2eb0 and is always taken.
  The `beq` branch at 0x100c2fcc targets 0x100c2f48 and is always taken.
  The `beq` branch at 0x100c2ff8 targets 0x100c2ef4 and is always taken.
  The `beq` branch at 0x100c3024 targets 0x100c2ef4 and is always taken.
  The `bne` branch at 0x100c3030 targets 0x100c2f44, is taken when s2(?) < a1(?) (unsigned), and falls through when s2(?) >= a1(?) (unsigned).
  The `beq` branch at 0x100c3038 targets 0x100c2f44 and is always taken.
  The `beq` branch at 0x100c3064 targets 0x100c2ef4 and is always taken.
  The `beq` branch at 0x100c3084 targets 0x100c2ef4 and is always taken.
  The `beq` branch at 0x100c30a4 targets 0x100c2ef4 and is always taken.
  The `beq` branch at 0x100c30c4 targets 0x100c2ef4 and is always taken.
  The `beq` branch at 0x100c30f4 targets 0x100c2f7c and is always taken.
  The `beq` branch at 0x100c30fc targets 0x100c2cb0 and is always taken.
  The `beq` branch at 0x100c3110 targets 0x100c2bd4 and is always taken.
  The `beq` branch at 0x100c3120 targets 0x100c2b54 and is always taken.
  The `beq` branch at 0x100c312c targets 0x100c2f54 and is always taken.
  The return at 0x100c292c has v0 = 0x10.
  The return at 0x100c2934 has v0 = one of ?, 0xb.
  The return at 0x100c2980 has v0 = 0x8.
  The return at 0x100c2994 has v0 = 0x3.
- `glxWrapRealizeWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100c8030 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100c8030-0x100c80c8 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0x100c8050 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x100c8054 loads 4 bytes from sym(glxScreenPrivateIndex) +0x0.
  The `lw` at 0x100c8058 loads 4 bytes from [a0+16] +0x1b4.
  The `lw` at 0x100c805c loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `lw` at 0x100c8064 loads 4 bytes from sym(glxWindowPrivateIndex) +0x0.
  The `lw` at 0x100c806c loads 4 bytes from ([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2)) +0x0.
  The `lw` at 0x100c807c loads 4 bytes from [([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))] +0x48.
  The `lw` at 0x100c8080 loads 4 bytes from ([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2)) +0x0.
  2 such `sw` accesses store 4 bytes to [a0+16] +0xc4, including `sw` at 0x100c808c, `sw` at 0x100c809c.
  The `jalr` at 0x100c8088 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100c80b8 calls glxAddDeepWindow [0x101bff40] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0x100c8098 targets 0x100c80b4, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x100c80c0 targets 0x100c80a0 and is always taken.
  The return at 0x100c80ac has v0 = one of ret(?), ?.
- `RegisterBlockAndWakeupHandlers` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100c9fb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100c9fb0-0x100ca064 (180 bytes).
  It occupies 180 bytes.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0x100ca038, `sw` at 0x100ca03c, `sw` at 0x100ca044.
  The `jal` at 0x100c9ff4 calls Xrealloc [0x101b9470] with a0=[0x102c6120], a1=([0x102c6124] << 0x4)+16, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[0x102c6124], a6=[0x102c6120], a7=a0 at entry (arg0).
  The `bne` branch at 0x100c9fd0 targets 0x100ca024, is taken when a5(=[0x102c6124]) < at(=[0x102c6128]) (signed), and falls through when a5(=[0x102c6124]) >= at(=[0x102c6128]) (signed).
  The `beq` branch at 0x100ca000 targets 0x100ca054, is taken when v0(=ret(Xrealloc)) == 0, and falls through when v0(=ret(Xrealloc)) != 0.
  The return at 0x100ca04c has v0 = 0x1.
  The return at 0x100ca05c has v0 = 0x0.
- `XETSwCreateWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100ca740 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100ca740-0x100cafdc (2204 bytes).
  It occupies 2204 bytes.
  The `lbu` at 0x100ca740 loads 1 byte from a0 (arg0 at entry) +0x10.
  The `lbu` at 0x100ca744 loads 1 byte from a0 (arg0 at entry) +0x11.
  The `sb` at 0x100ca748 stores 1 byte to a0 (arg0 at entry) +0x11.
  The `lbu` at 0x100ca74c loads 1 byte from a0 (arg0 at entry) +0x4.
  The `lbu` at 0x100ca750 loads 1 byte from a0 (arg0 at entry) +0xa.
  The `lbu` at 0x100ca754 loads 1 byte from a0 (arg0 at entry) +0x9.
  The `lbu` at 0x100ca758 loads 1 byte from a0 (arg0 at entry) +0xd.
  The `lbu` at 0x100ca75c loads 1 byte from a0 (arg0 at entry) +0xc.
  The `sb` at 0x100ca760 stores 1 byte to a0 (arg0 at entry) +0x10.
  The `lbu` at 0x100ca764 loads 1 byte from a0 (arg0 at entry) +0x1d.
  The `sb` at 0x100ca768 stores 1 byte to a0 (arg0 at entry) +0xd.
  The `lbu` at 0x100ca76c loads 1 byte from a0 (arg0 at entry) +0x1f.
  The `sb` at 0x100ca770 stores 1 byte to a0 (arg0 at entry) +0xc.
  The `lbu` at 0x100ca774 loads 1 byte from a0 (arg0 at entry) +0x19.
  The `sb` at 0x100ca778 stores 1 byte to a0 (arg0 at entry) +0xa.
  The `lbu` at 0x100ca77c loads 1 byte from a0 (arg0 at entry) +0x1a.
  The `sb` at 0x100ca780 stores 1 byte to a0 (arg0 at entry) +0x9.
  The `lbu` at 0x100ca784 loads 1 byte from a0 (arg0 at entry) +0x18.
  The `lbu` at 0x100ca788 loads 1 byte from a0 (arg0 at entry) +0x8.
  The `lbu` at 0x100ca78c loads 1 byte from a0 (arg0 at entry) +0xb.
  The `sb` at 0x100ca790 stores 1 byte to a0 (arg0 at entry) +0xb.
  The `lbu` at 0x100ca794 loads 1 byte from a0 (arg0 at entry) +0x1b.
  The `lbu` at 0x100ca798 loads 1 byte from a0 (arg0 at entry) +0x6.
  The `lbu` at 0x100ca79c loads 1 byte from a0 (arg0 at entry) +0x5.
  The `sb` at 0x100ca7a0 stores 1 byte to a0 (arg0 at entry) +0x5.
  The `lbu` at 0x100ca7a4 loads 1 byte from a0 (arg0 at entry) +0x14.
  The `lbu` at 0x100ca7a8 loads 1 byte from a0 (arg0 at entry) +0x7.
  The `sb` at 0x100ca7ac stores 1 byte to a0 (arg0 at entry) +0x7.
  The `lbu` at 0x100ca7b0 loads 1 byte from a0 (arg0 at entry) +0x15.
  The `lbu` at 0x100ca7b4 loads 1 byte from a0 (arg0 at entry) +0x13.
  The `sb` at 0x100ca7b8 stores 1 byte to a0 (arg0 at entry) +0x4.
  The `lbu` at 0x100ca7bc loads 1 byte from a0 (arg0 at entry) +0x12.
  The `sb` at 0x100ca7c0 stores 1 byte to a0 (arg0 at entry) +0x13.
  The `sb` at 0x100ca7c4 stores 1 byte to a0 (arg0 at entry) +0x14.
  The `sb` at 0x100ca7c8 stores 1 byte to a0 (arg0 at entry) +0x8.
  The `lbu` at 0x100ca7cc loads 1 byte from a0 (arg0 at entry) +0x16.
  The `sb` at 0x100ca7d0 stores 1 byte to a0 (arg0 at entry) +0x6.
  The `lbu` at 0x100ca7d4 loads 1 byte from a0 (arg0 at entry) +0x17.
  The `sb` at 0x100ca7d8 stores 1 byte to a0 (arg0 at entry) +0x17.
  The `sb` at 0x100ca7dc stores 1 byte to a0 (arg0 at entry) +0x18.
  The `sb` at 0x100ca7e0 stores 1 byte to a0 (arg0 at entry) +0x1b.
  The `sb` at 0x100ca7e4 stores 1 byte to a0 (arg0 at entry) +0x19.
  The `sb` at 0x100ca7e8 stores 1 byte to a0 (arg0 at entry) +0x15.
  The `sb` at 0x100ca7ec stores 1 byte to a0 (arg0 at entry) +0x1a.
  The `lbu` at 0x100ca7f0 loads 1 byte from a0 (arg0 at entry) +0xf.
  The `lbu` at 0x100ca7f4 loads 1 byte from a0 (arg0 at entry) +0xe.
  The `sb` at 0x100ca7f8 stores 1 byte to a0 (arg0 at entry) +0xe.
  The `lbu` at 0x100ca7fc loads 1 byte from a0 (arg0 at entry) +0x1c.
  The `sb` at 0x100ca800 stores 1 byte to a0 (arg0 at entry) +0x1f.
  The `lbu` at 0x100ca804 loads 1 byte from a0 (arg0 at entry) +0x1e.
  The `sb` at 0x100ca808 stores 1 byte to a0 (arg0 at entry) +0xf.
  The `lhu` at 0x100ca810 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sb` at 0x100ca81c stores 1 byte to a0 (arg0 at entry) +0x1e.
  The `sb` at 0x100ca824 stores 1 byte to a0 (arg0 at entry) +0x16.
  The `sb` at 0x100ca82c stores 1 byte to a0 (arg0 at entry) +0x12.
  The `sb` at 0x100ca838 stores 1 byte to a0 (arg0 at entry) +0x1d.
  The `sb` at 0x100ca844 stores 1 byte to a0 (arg0 at entry) +0x1c.
  The `lbu` at 0x100ca860 loads 1 byte from a0 (arg0 at entry) +0x43.
  The `lbu` at 0x100ca864 loads 1 byte from a0 (arg0 at entry) +0x3d.
  The `lbu` at 0x100ca868 loads 1 byte from a0 (arg0 at entry) +0x23.
  The `lbu` at 0x100ca86c loads 1 byte from a0 (arg0 at entry) +0x20.
  The `sb` at 0x100ca870 stores 1 byte to a0 (arg0 at entry) +0x23.
  The `sb` at 0x100ca878 stores 1 byte to a0 (arg0 at entry) +0x20.
  205 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x100ca880, `lbu` at 0x100ca88c, `lbu` at 0x100ca890.
  206 such `sb` accesses store 1 byte to ?, including `sb` at 0x100ca884, `sb` at 0x100ca888, `sb` at 0x100ca894.
  The `lbu` at 0x100cae6c loads 1 byte from a0 (arg0 at entry) +0x2.
  The `lbu` at 0x100cae70 loads 1 byte from a0 (arg0 at entry) +0x3.
  The `sb` at 0x100cae74 stores 1 byte to a0 (arg0 at entry) +0x2.
  The `sb` at 0x100cae7c stores 1 byte to a0 (arg0 at entry) +0x3.
  The `bne` branch at 0x100ca848 targets 0x100cadb4, is taken when t2(=[a0+2]:2-8) < 0x8 (unsigned), and falls through when t2(=[a0+2]:2-8) >= 0x8 (unsigned).
  The `bne` branch at 0x100ca850 targets 0x100cae9c, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0x100ca858 targets 0x100caea0, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0x100ca98c targets 0x100cae90, is taken when a1(?) < 0x8 (unsigned), and falls through when a1(?) >= 0x8 (unsigned).
  The `bne` branch at 0x100caaa0 targets 0x100cae88, is taken when a1(?) < 0x8 (unsigned), and falls through when a1(?) >= 0x8 (unsigned).
  The `beq` branch at 0x100cabb4 targets 0x100ca880, is taken when a1(?) >= 0x8 (unsigned), and falls through when a1(?) < 0x8 (unsigned).
  The `beq` branch at 0x100cadcc targets 0x100cae6c, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x100cadd4 targets 0x100cade0, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0x100cade4 targets 0x100cafb8, is taken when v0(?) < 0x2 (signed), and falls through when v0(?) >= 0x2 (signed).
  The `beq` branch at 0x100cae34 targets 0x100cae80, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x100cae60 targets 0x100cae10, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x100cae80 targets 0x100cae68 and is always taken.
  The `beq` branch at 0x100cae88 targets 0x100cabc8 and is always taken.
  The `beq` branch at 0x100cae94 targets 0x100cabc4 and is always taken.
  The `bne` branch at 0x100cafa8 targets 0x100cadb4, is taken when t2(?) < 0x8 (unsigned), and falls through when t2(?) >= 0x8 (unsigned).
  The `beq` branch at 0x100cafb0 targets 0x100cae9c and is always taken.
  The `beq` branch at 0x100cafd4 targets 0x100cae6c and is always taken.
  The return at 0x100cae78 has v0 = one of 0x1, ?.
- `LbxChangeWindowProperty` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100d3cd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100d3cd0-0x100d3f7c (684 bytes).
  It occupies 684 bytes.
  The `lw` at 0x100d3cd4 loads 4 bytes from a1 (arg1 at entry) +0x78.
  The `lw` at 0x100d3cf4 loads 4 bytes from [a1+120] +0x1c.
  8 such `lw` accesses load 4 bytes from ?, including `lw` at 0x100d3d08, `lw` at 0x100d3d0c, `lw` at 0x100d3d18.
  2 such `lh` accesses load 2 bytes from ?, including `lh` at 0x100d3d2c, `lh` at 0x100d3df8.
  The `lw` at 0x100d3da0 loads 4 bytes from sym(currentTime) +0x4.
  The `lw` at 0x100d3da4 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `sw` at 0x100d3dd8 stores 4 bytes to ?.
  The `lw` at 0x100d3e70 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `jal` at 0x100d3d6c calls ShmInfoPropCreate [0x10149190] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=a6 at entry (arg6), a6=a7 at entry (arg7).
  The `jal` at 0x100d3dc4 calls DeliverEvents [0x10064f80] with a0=a1 at entry (arg1), a1=sp-176, a2=0x1, a3=0x0, a4=[sym(currentTime)+4], a6=[a1+4], a7=0x1c.
  The `jal` at 0x100d3e60 calls LbxStallPropRequest [0x1014a660] with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100d3e90 calls TagDeleteTag [0x101a10a0] with a0=?, a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100d3ecc calls ShmInfoPropPrepend [0x10205710] with a0=?, a1=a6 at entry (arg6), a2=?, a3=0x1.
  The `jal` at 0x100d3f04 calls MakeWindowOptional [0x10135300] with a0=a1 at entry (arg1), a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100d3f48 calls ShmInfoPropReplace [0x101cfaf0] with a0=a0 at entry (arg0), a1=?, a2=a3 at entry (arg3), a3=a4 at entry (arg4), a4=a6 at entry (arg6), a5=a7 at entry (arg7).
  The `jal` at 0x100d3f64 calls ShmInfoPropAppend [0x100be990] with a0=?, a1=a6 at entry (arg6), a2=?, a3=?.
  The `beq` branch at 0x100d3cec targets 0x100d3e18, is taken when v0(=[a1+120]) == 0, and falls through when v0(=[a1+120]) != 0.
  The `beq` branch at 0x100d3cfc targets 0x100d3d24, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x100d3d04 targets 0x100d3d1c and is always taken.
  The `beq` branch at 0x100d3d10 targets 0x100d3d4c, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x100d3d1c targets 0x100d3d0c, is taken when at(?) != s1(=a2), and falls through when at(?) == s1(=a2).
  The `beq` branch at 0x100d3d24 targets 0x100d3d4c, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x100d3d30 targets 0x100d3df4, is taken when v0(?) == a4, and falls through when v0(?) != a4.
  The `beq` branch at 0x100d3d38 targets 0x100d3df4, is taken when a5 == 0, and falls through when a5 != 0.
  The `beq` branch at 0x100d3d50 targets 0x100d3eec, is taken when v0(=[a1+120]) == 0, and falls through when v0(=[a1+120]) != 0.
  The `beq` branch at 0x100d3d7c targets 0x100d3ee4, is taken when v0(=ret(ShmInfoPropCreate)) == 0, and falls through when v0(=ret(ShmInfoPropCreate)) != 0.
  The `beq` branch at 0x100d3d88 targets 0x100d3dcc, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x100d3dd0 targets 0x100d3ddc, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x100d3e00 targets 0x100d3e24, is taken when t1(?) == a3, and falls through when t1(?) != a3.
  The `beq` branch at 0x100d3e08 targets 0x100d3e74, is taken when a5 == 0, and falls through when a5 != 0.
  The `beq` branch at 0x100d3e10 targets 0x100d3de0 and is always taken.
  The `beq` branch at 0x100d3e1c targets 0x100d3cfc and is always taken.
  The `beq` branch at 0x100d3e24 targets 0x100d3e74, is taken when a5 == 0, and falls through when a5 != 0.
  The `beq` branch at 0x100d3e38 targets 0x100d3ea0, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x100d3e54 targets 0x100d3e8c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x100d3e6c targets 0x100d3de0 and is always taken.
  The `beq` branch at 0x100d3e84 targets 0x100d3ea0, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x100d3ea0 targets 0x100d3f30, is taken when a5 == 0, and falls through when a5 != 0.
  The `beq` branch at 0x100d3ea8 targets 0x100d3d88, is taken when t8(=a6) == 0, and falls through when t8(=a6) != 0.
  The `beq` branch at 0x100d3eb0 targets 0x100d3f60, is taken when a5 == v0(=0x2), and falls through when a5 != v0(=0x2).
  The `bne` branch at 0x100d3ebc targets 0x100d3d88, is taken when a5 != a3(=0x1), and falls through when a5 == a3(=0x1).
  The `bne` branch at 0x100d3ed4 targets 0x100d3d88, is taken when v0(=ret(ShmInfoPropPrepend)) != 0, and falls through when v0(=ret(ShmInfoPropPrepend)) == 0.
  The `beq` branch at 0x100d3edc targets 0x100d3de0 and is always taken.
  The `beq` branch at 0x100d3ee4 targets 0x100d3de4 and is always taken.
  The `bne` branch at 0x100d3f1c targets 0x100d3d58, is taken when v0(=ret(MakeWindowOptional)) != 0, and falls through when v0(=ret(MakeWindowOptional)) == 0.
  The `beq` branch at 0x100d3f28 targets 0x100d3de0 and is always taken.
  The `bne` branch at 0x100d3f50 targets 0x100d3d88, is taken when v0(=ret(ShmInfoPropReplace)) != 0, and falls through when v0(=ret(ShmInfoPropReplace)) == 0.
  The `beq` branch at 0x100d3f58 targets 0x100d3de0 and is always taken.
  The `bne` branch at 0x100d3f6c targets 0x100d3d88, is taken when v0(=ret(ShmInfoPropAppend)) != 0, and falls through when v0(=ret(ShmInfoPropAppend)) == 0.
  The `beq` branch at 0x100d3f74 targets 0x100d3de0 and is always taken.
  The return at 0x100d3d44 has v0 = 0x8.
  The return at 0x100d3dec has v0 = one of ?, 0xb.
- `SProcChangeKeyboardMapping` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100d4270 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100d4270-0x100d4878 (1544 bytes).
  It occupies 1544 bytes.
  The `lw` at 0x100d4278 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lbu` at 0x100d427c loads 1 byte from [a0+8] +0x2.
  The `lbu` at 0x100d4280 loads 1 byte from [a0+8] +0x3.
  The `sb` at 0x100d4284 stores 1 byte to [a0+8] +0x2.
  The `sb` at 0x100d4288 stores 1 byte to [a0+8] +0x3.
  The `lw` at 0x100d428c loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lhu` at 0x100d42b8 loads 2 bytes from [a0+8] +0x2.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x20, including `lbu` at 0x100d42e4, `lbu` at 0x100d477c.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x1e, including `lbu` at 0x100d42e8, `lbu` at 0x100d4788.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x1d, including `lbu` at 0x100d42ec, `lbu` at 0x100d478c.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x23, including `lbu` at 0x100d42f0, `lbu` at 0x100d4778.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x1f, including `lbu` at 0x100d42f4, `lbu` at 0x100d4798.
  112 such `sb` accesses store 1 byte to ?, including `sb` at 0x100d4310, `sb` at 0x100d4314, `sb` at 0x100d431c.
  107 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x100d4318, `lbu` at 0x100d4324, `lbu` at 0x100d4328.
  The `lw` at 0x100d46f0 loads 4 bytes from sym(ProcVector) +0x190.
  The `lbu` at 0x100d4748 loads 1 byte from [a0+8] +0x26.
  The `lbu` at 0x100d474c loads 1 byte from [a0+8] +0x25.
  The `sb` at 0x100d4750 stores 1 byte to [a0+8] +0x26.
  The `sb` at 0x100d4754 stores 1 byte to [a0+8] +0x25.
  The `lbu` at 0x100d4758 loads 1 byte from [a0+8] +0x27.
  The `lbu` at 0x100d475c loads 1 byte from [a0+8] +0x24.
  The `sb` at 0x100d4760 stores 1 byte to [a0+8] +0x27.
  The `sb` at 0x100d4764 stores 1 byte to [a0+8] +0x24.
  The `lbu` at 0x100d4768 loads 1 byte from [a0+8] +0x22.
  The `lbu` at 0x100d476c loads 1 byte from [a0+8] +0x21.
  The `sb` at 0x100d4770 stores 1 byte to [a0+8] +0x22.
  The `sb` at 0x100d4774 stores 1 byte to [a0+8] +0x21.
  The `sb` at 0x100d4780 stores 1 byte to [a0+8] +0x23.
  The `sb` at 0x100d4784 stores 1 byte to [a0+8] +0x20.
  The `sb` at 0x100d4790 stores 1 byte to [a0+8] +0x1e.
  The `sb` at 0x100d4794 stores 1 byte to [a0+8] +0x1d.
  The `lbu` at 0x100d479c loads 1 byte from [a0+8] +0x1c.
  The `sb` at 0x100d47a0 stores 1 byte to [a0+8] +0x1f.
  The `sb` at 0x100d47a4 stores 1 byte to [a0+8] +0x1c.
  The `lbu` at 0x100d47a8 loads 1 byte from [a0+8] +0x1a.
  The `lbu` at 0x100d47ac loads 1 byte from [a0+8] +0x19.
  The `sb` at 0x100d47b0 stores 1 byte to [a0+8] +0x1a.
  The `sb` at 0x100d47b4 stores 1 byte to [a0+8] +0x19.
  The `lbu` at 0x100d47b8 loads 1 byte from [a0+8] +0x1b.
  The `lbu` at 0x100d47bc loads 1 byte from [a0+8] +0x18.
  The `sb` at 0x100d47c0 stores 1 byte to [a0+8] +0x1b.
  The `sb` at 0x100d47c4 stores 1 byte to [a0+8] +0x18.
  The `lbu` at 0x100d47c8 loads 1 byte from [a0+8] +0x16.
  The `lbu` at 0x100d47cc loads 1 byte from [a0+8] +0x15.
  The `sb` at 0x100d47d0 stores 1 byte to [a0+8] +0x16.
  The `sb` at 0x100d47d4 stores 1 byte to [a0+8] +0x15.
  The `lbu` at 0x100d47d8 loads 1 byte from [a0+8] +0x17.
  The `lbu` at 0x100d47dc loads 1 byte from [a0+8] +0x14.
  The `sb` at 0x100d47e0 stores 1 byte to [a0+8] +0x17.
  The `sb` at 0x100d47e4 stores 1 byte to [a0+8] +0x14.
  The `lbu` at 0x100d47e8 loads 1 byte from [a0+8] +0x12.
  The `lbu` at 0x100d47ec loads 1 byte from [a0+8] +0x11.
  The `sb` at 0x100d47f0 stores 1 byte to [a0+8] +0x12.
  The `sb` at 0x100d47f4 stores 1 byte to [a0+8] +0x11.
  The `lbu` at 0x100d47f8 loads 1 byte from [a0+8] +0x13.
  The `lbu` at 0x100d47fc loads 1 byte from [a0+8] +0x10.
  The `sb` at 0x100d4800 stores 1 byte to [a0+8] +0x13.
  The `sb` at 0x100d4804 stores 1 byte to [a0+8] +0x10.
  The `lbu` at 0x100d4808 loads 1 byte from [a0+8] +0xe.
  The `lbu` at 0x100d480c loads 1 byte from [a0+8] +0xd.
  The `sb` at 0x100d4810 stores 1 byte to [a0+8] +0xe.
  The `sb` at 0x100d4814 stores 1 byte to [a0+8] +0xd.
  The `lbu` at 0x100d4818 loads 1 byte from [a0+8] +0xf.
  The `lbu` at 0x100d481c loads 1 byte from [a0+8] +0xc.
  The `sb` at 0x100d4820 stores 1 byte to [a0+8] +0xf.
  The `sb` at 0x100d4824 stores 1 byte to [a0+8] +0xc.
  The `lbu` at 0x100d4828 loads 1 byte from [a0+8] +0xa.
  The `lbu` at 0x100d482c loads 1 byte from [a0+8] +0x9.
  The `sb` at 0x100d4830 stores 1 byte to [a0+8] +0xa.
  The `sb` at 0x100d4834 stores 1 byte to [a0+8] +0x9.
  The `lbu` at 0x100d4838 loads 1 byte from [a0+8] +0xb.
  The `lbu` at 0x100d483c loads 1 byte from [a0+8] +0x8.
  The `sb` at 0x100d4844 stores 1 byte to [a0+8] +0xb.
  The `sb` at 0x100d4850 stores 1 byte to [a0+8] +0x8.
  The `jalr` at 0x100d46f8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=a0 at entry (arg0).
  The `bne` branch at 0x100d42b0 targets 0x100d471c, is taken when v0(=[a0+72]) < 0x2 (unsigned), and falls through when v0(=[a0+72]) >= 0x2 (unsigned).
  The `bne` branch at 0x100d42d4 targets 0x100d462c, is taken when v0(=[[a0+8]+2]:2-2) < 0x8 (unsigned), and falls through when v0(=[[a0+8]+2]:2-2) >= 0x8 (unsigned).
  The `bne` branch at 0x100d42dc targets 0x100d4748, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0x100d441c targets 0x100d4734, is taken when a6(?) < 0x8 (unsigned), and falls through when a6(?) >= 0x8 (unsigned).
  The `beq` branch at 0x100d4530 targets 0x100d4310, is taken when a6(?) >= 0x8 (unsigned), and falls through when a6(?) < 0x8 (unsigned).
  The `beq` branch at 0x100d4640 targets 0x100d46ec, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x100d4648 targets 0x100d4654, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0x100d4658 targets 0x100d4854, is taken when s0(?) < 0x2 (signed), and falls through when s0(?) >= 0x2 (signed).
  The `beq` branch at 0x100d46b4 targets 0x100d4714, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x100d46e0 targets 0x100d4690, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x100d4714 targets 0x100d46e8 and is always taken.
  The `beq` branch at 0x100d4740 targets 0x100d453c and is always taken.
  The `beq` branch at 0x100d484c targets 0x100d462c and is always taken.
  The `beq` branch at 0x100d4870 targets 0x100d46ec and is always taken.
  The return at 0x100d470c has v0 = ret(?).
  The return at 0x100d472c has v0 = 0x10.
- `t1_KillRegion` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100d6350 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100d6350-0x100d6468 (280 bytes).
  It occupies 280 bytes.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x2, including `lh` at 0x100d6358, `lh` at 0x100d6448.
  The `lw` at 0x100d6384 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `sh` at 0x100d6390 stores 2 bytes to a0 (arg0 at entry) +0x2.
  The `lbu` at 0x100d63b0 loads 1 byte from ?.
  The `lw` at 0x100d63b8 loads 4 bytes from ?.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x100d63bc, `sb` at 0x100d642c.
  The `lbu` at 0x100d63d0 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `sb` at 0x100d63e4 stores 1 byte to a0 (arg0 at entry) +0x0.
  The `lbu` at 0x100d63f8 loads 1 byte from a0 (arg0 at entry) +0x1.
  The `jal` at 0x100d63c0 calls xiFree [0x100f0a40] with a0=?, a1=?, a2=?, a3=?.
  Calls xiFree [0x100f0a40] via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`j` at 0x100d63f0).
  The `jal` at 0x100d6420 calls FatalError [0x10094f20] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100d643c calls FatalError [0x10094f20] with a0=0x102939e8, a1=a1 at entry (arg1), a2=[a0+2]:2, a3=a3 at entry (arg3).
  The `jal` at 0x100d6458 calls FatalError [0x10094f20] with a0=0x10293698, a1=?, a2=?, a3=?, a4=[a0]:1.
  The `bltz` branch at 0x100d6368 targets 0x100d6430, is taken when a2(=[a0+2]:2) < 0 (signed), and falls through when a2(=[a0+2]:2) >= 0 (signed).
  The `beq` branch at 0x100d6394 targets 0x100d6404, is taken when a2(?) >= 0x2 (signed), and falls through when a2(?) < 0x2 (signed).
  The `beq` branch at 0x100d639c targets 0x100d63f8, is taken when a2(?) == a3(=0x1), and falls through when a2(?) != a3(=0x1).
  The `beq` branch at 0x100d63a4 targets 0x100d63d0, is taken when s0(=[a0+28]) == 0, and falls through when s0(=[a0+28]) != 0.
  The `beq` branch at 0x100d63b4 targets 0x100d641c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x100d63c8 targets 0x100d63b0, is taken when s1(?) != 0, and falls through when s1(?) == 0.
  The `beq` branch at 0x100d63d4 targets 0x100d644c, is taken when a4(=[a0]:1) == 0, and falls through when a4(=[a0]:1) != 0.
  The `bne` branch at 0x100d6400 targets 0x100d63a4, is taken when (a5(=[a0+1]:1) & 0x1) != 0, and falls through when (a5(=[a0+1]:1) & 0x1) == 0.
  The `beq` branch at 0x100d6428 targets 0x100d63c0 and is always taken.
  The `beq` branch at 0x100d6444 targets 0x100d6370 and is always taken.
  The `beq` branch at 0x100d6460 targets 0x100d63e0 and is always taken.
  The return at 0x100d6414 has v0 = ?.
- `CheckDeviceGrabAndHintWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100d7be0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100d7be0-0x100d7d14 (308 bytes).
  It occupies 308 bytes.
  The `lbu` at 0x100d7be4 loads 1 byte from a2 (arg2 at entry) +0x1f.
  The `lw` at 0x100d7be8 loads 4 bytes from sym(inputInfo) +0x10.
  The `lw` at 0x100d7bec loads 4 bytes from sym(inputInfo) +0x4.
  The `lbu` at 0x100d7c18 loads 1 byte from [sym(inputInfo)+4] +0x4c.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x100d7c1c, `lw` at 0x100d7cd0, `lw` at 0x100d7d04.
  The `lbu` at 0x100d7c28 loads 1 byte from ?.
  The `lbu` at 0x100d7c34 loads 1 byte from [sym(inputInfo)+16] +0x4c.
  The `lw` at 0x100d7c3c loads 4 bytes from sym(inputInfo) +0xc.
  The `lbu` at 0x100d7c40 loads 1 byte from [sym(inputInfo)+12] +0x4c.
  The `lw` at 0x100d7c7c loads 4 bytes from a4 (arg4 at entry) +0x4.
  The `ld` at 0x100d7ce4 loads 8 bytes from sym(currentTime) +0x0.
  The `sw` at 0x100d7d10 stores 4 bytes to ?.
  The `jalr` at 0x100d7ce8 calls (unknown callee) with a0=?, a1=sp-80, a2=[sym(currentTime)]:8, a3=0x1, a4=0x20000000, a6=a0 at entry (arg0).
  The `beq` branch at 0x100d7c0c targets 0x100d7cfc, is taken when at(=[sym(inputInfo)+4]) == 0, and falls through when at(=[sym(inputInfo)+4]) != 0.
  The `beq` branch at 0x100d7c14 targets 0x100d7c2c and is always taken.
  The `beq` branch at 0x100d7c20 targets 0x100d7cfc, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x100d7c2c targets 0x100d7c1c, is taken when at(?) != t0(?), and falls through when at(?) == t0(?).
  The `beq` branch at 0x100d7c38 targets 0x100d7c54, is taken when a2(=[[sym(inputInfo)+16]+76]:1) == t0(?), and falls through when a2(=[[sym(inputInfo)+16]+76]:1) != t0(?).
  The `beq` branch at 0x100d7c44 targets 0x100d7c54, is taken when a6(=[[sym(inputInfo)+12]+76]:1) == t0(?), and falls through when a6(=[[sym(inputInfo)+12]+76]:1) != t0(?).
  The `beq` branch at 0x100d7c4c targets 0x100d7c58 and is always taken.
  The `beq` branch at 0x100d7c58 targets 0x100d7d04, is taken when t1(=[0x102c6084]) == a1, and falls through when t1(=[0x102c6084]) != a1.
  The `bne` branch at 0x100d7c60 targets 0x100d7cf4, is taken when t2(=[0x102c5f70]) != a1, and falls through when t2(=[0x102c5f70]) == a1.
  The `bne` branch at 0x100d7c68 targets 0x100d7cf4, is taken when a3 != 0, and falls through when a3 == 0.
  The `beq` branch at 0x100d7c70 targets 0x100d7cf4, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x100d7cfc targets 0x100d7c58 and is always taken.
  The return at 0x100d7cf4 has v0 = one of ?, ret(?).
  The return at 0x100d7d0c has v0 = ?.
- `SProcDisplayImageBuffers..ELC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100d9a90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100d9a90-0x100da080 (1520 bytes).
  It occupies 1520 bytes.
  The `lw` at 0x100d9a98 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lbu` at 0x100d9a9c loads 1 byte from [a0+8] +0x2.
  The `lbu` at 0x100d9aa0 loads 1 byte from [a0+8] +0x3.
  The `sb` at 0x100d9aa4 stores 1 byte to [a0+8] +0x2.
  The `sb` at 0x100d9aa8 stores 1 byte to [a0+8] +0x3.
  The `lw` at 0x100d9aac loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lbu` at 0x100d9ae4 loads 1 byte from [a0+8] +0x7.
  The `lbu` at 0x100d9ae8 loads 1 byte from [a0+8] +0x6.
  The `sb` at 0x100d9aec stores 1 byte to [a0+8] +0x7.
  The `lhu` at 0x100d9af0 loads 2 bytes from [a0+8] +0x2.
  The `lbu` at 0x100d9af4 loads 1 byte from [a0+8] +0x5.
  The `lbu` at 0x100d9af8 loads 1 byte from [a0+8] +0x4.
  The `sb` at 0x100d9b04 stores 1 byte to [a0+8] +0x5.
  The `sb` at 0x100d9b0c stores 1 byte to [a0+8] +0x6.
  The `sb` at 0x100d9b18 stores 1 byte to [a0+8] +0x4.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x20, including `lbu` at 0x100d9b30, `lbu` at 0x100d9f84.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x1e, including `lbu` at 0x100d9b34, `lbu` at 0x100d9f90.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x1d, including `lbu` at 0x100d9b38, `lbu` at 0x100d9f94.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x23, including `lbu` at 0x100d9b3c, `lbu` at 0x100d9f80.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x1f, including `lbu` at 0x100d9b40, `lbu` at 0x100d9fa0.
  112 such `sb` accesses store 1 byte to ?, including `sb` at 0x100d9b50, `sb` at 0x100d9b54, `sb` at 0x100d9b5c.
  107 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x100d9b58, `lbu` at 0x100d9b64, `lbu` at 0x100d9b68.
  The `lbu` at 0x100d9f50 loads 1 byte from [a0+8] +0x26.
  The `lbu` at 0x100d9f54 loads 1 byte from [a0+8] +0x25.
  The `sb` at 0x100d9f58 stores 1 byte to [a0+8] +0x26.
  The `sb` at 0x100d9f5c stores 1 byte to [a0+8] +0x25.
  The `lbu` at 0x100d9f60 loads 1 byte from [a0+8] +0x27.
  The `lbu` at 0x100d9f64 loads 1 byte from [a0+8] +0x24.
  The `sb` at 0x100d9f68 stores 1 byte to [a0+8] +0x27.
  The `sb` at 0x100d9f6c stores 1 byte to [a0+8] +0x24.
  The `lbu` at 0x100d9f70 loads 1 byte from [a0+8] +0x22.
  The `lbu` at 0x100d9f74 loads 1 byte from [a0+8] +0x21.
  The `sb` at 0x100d9f78 stores 1 byte to [a0+8] +0x22.
  The `sb` at 0x100d9f7c stores 1 byte to [a0+8] +0x21.
  The `sb` at 0x100d9f88 stores 1 byte to [a0+8] +0x23.
  The `sb` at 0x100d9f8c stores 1 byte to [a0+8] +0x20.
  The `sb` at 0x100d9f98 stores 1 byte to [a0+8] +0x1e.
  The `sb` at 0x100d9f9c stores 1 byte to [a0+8] +0x1d.
  The `lbu` at 0x100d9fa4 loads 1 byte from [a0+8] +0x1c.
  The `sb` at 0x100d9fa8 stores 1 byte to [a0+8] +0x1f.
  The `sb` at 0x100d9fac stores 1 byte to [a0+8] +0x1c.
  The `lbu` at 0x100d9fb0 loads 1 byte from [a0+8] +0x1a.
  The `lbu` at 0x100d9fb4 loads 1 byte from [a0+8] +0x19.
  The `sb` at 0x100d9fb8 stores 1 byte to [a0+8] +0x1a.
  The `sb` at 0x100d9fbc stores 1 byte to [a0+8] +0x19.
  The `lbu` at 0x100d9fc0 loads 1 byte from [a0+8] +0x1b.
  The `lbu` at 0x100d9fc4 loads 1 byte from [a0+8] +0x18.
  The `sb` at 0x100d9fc8 stores 1 byte to [a0+8] +0x1b.
  The `sb` at 0x100d9fcc stores 1 byte to [a0+8] +0x18.
  The `lbu` at 0x100d9fd0 loads 1 byte from [a0+8] +0x16.
  The `lbu` at 0x100d9fd4 loads 1 byte from [a0+8] +0x15.
  The `sb` at 0x100d9fd8 stores 1 byte to [a0+8] +0x16.
  The `sb` at 0x100d9fdc stores 1 byte to [a0+8] +0x15.
  The `lbu` at 0x100d9fe0 loads 1 byte from [a0+8] +0x17.
  The `lbu` at 0x100d9fe4 loads 1 byte from [a0+8] +0x14.
  The `sb` at 0x100d9fe8 stores 1 byte to [a0+8] +0x17.
  The `sb` at 0x100d9fec stores 1 byte to [a0+8] +0x14.
  The `lbu` at 0x100d9ff0 loads 1 byte from [a0+8] +0x12.
  The `lbu` at 0x100d9ff4 loads 1 byte from [a0+8] +0x11.
  The `sb` at 0x100d9ff8 stores 1 byte to [a0+8] +0x12.
  The `sb` at 0x100d9ffc stores 1 byte to [a0+8] +0x11.
  The `lbu` at 0x100da000 loads 1 byte from [a0+8] +0x13.
  The `lbu` at 0x100da004 loads 1 byte from [a0+8] +0x10.
  The `sb` at 0x100da008 stores 1 byte to [a0+8] +0x13.
  The `sb` at 0x100da00c stores 1 byte to [a0+8] +0x10.
  The `lbu` at 0x100da010 loads 1 byte from [a0+8] +0xe.
  The `lbu` at 0x100da014 loads 1 byte from [a0+8] +0xd.
  The `sb` at 0x100da018 stores 1 byte to [a0+8] +0xe.
  The `sb` at 0x100da01c stores 1 byte to [a0+8] +0xd.
  The `lbu` at 0x100da020 loads 1 byte from [a0+8] +0xf.
  The `lbu` at 0x100da024 loads 1 byte from [a0+8] +0xc.
  The `sb` at 0x100da028 stores 1 byte to [a0+8] +0xf.
  The `sb` at 0x100da02c stores 1 byte to [a0+8] +0xc.
  The `lbu` at 0x100da030 loads 1 byte from [a0+8] +0xa.
  The `lbu` at 0x100da034 loads 1 byte from [a0+8] +0x9.
  The `sb` at 0x100da038 stores 1 byte to [a0+8] +0xa.
  The `sb` at 0x100da03c stores 1 byte to [a0+8] +0x9.
  The `lbu` at 0x100da040 loads 1 byte from [a0+8] +0xb.
  The `lbu` at 0x100da044 loads 1 byte from [a0+8] +0x8.
  The `sb` at 0x100da04c stores 1 byte to [a0+8] +0xb.
  The `sb` at 0x100da058 stores 1 byte to [a0+8] +0x8.
  Calls ProcDisplayImageBuffers..BKC [0x100f1450] via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=a0 at entry (arg0) (`j` at 0x100d9f2c).
  The `beq` branch at 0x100d9ac4 targets 0x100d9ae0, is taken when at(=[a0+72]) >= 0x2 (unsigned), and falls through when at(=[a0+72]) < 0x2 (unsigned).
  The `bne` branch at 0x100d9b1c targets 0x100d9e6c, is taken when v0(=[[a0+8]+2]:2-2) < 0x8 (unsigned), and falls through when v0(=[[a0+8]+2]:2-2) >= 0x8 (unsigned).
  The `bne` branch at 0x100d9b24 targets 0x100d9f50, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0x100d9c5c targets 0x100d9f3c, is taken when a6(?) < 0x8 (unsigned), and falls through when a6(?) >= 0x8 (unsigned).
  The `beq` branch at 0x100d9d70 targets 0x100d9b50, is taken when a6(?) >= 0x8 (unsigned), and falls through when a6(?) < 0x8 (unsigned).
  The `beq` branch at 0x100d9e80 targets 0x100d9f1c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x100d9e88 targets 0x100d9e94, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bne` branch at 0x100d9e98 targets 0x100da05c, is taken when s0(?) < 0x2 (signed), and falls through when s0(?) >= 0x2 (signed).
  The `beq` branch at 0x100d9ee4 targets 0x100d9f34, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x100d9f10 targets 0x100d9ec0, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x100d9f34 targets 0x100d9f18 and is always taken.
  The `beq` branch at 0x100d9f48 targets 0x100d9d7c and is always taken.
  The `beq` branch at 0x100da054 targets 0x100d9e6c and is always taken.
  The `beq` branch at 0x100da078 targets 0x100d9f1c and is always taken.
  The return at 0x100d9ad8 has v0 = 0x10.
- `DestroySubwindows` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100de460 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100de460-0x100de9c8 (1384 bytes).
  It occupies 1384 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x28, including `lw` at 0x100de498, `lw` at 0x100de518.
  4 such `lw` accesses load 4 bytes from sym(clients) +0x0, including `lw` at 0x100de4d4, `lw` at 0x100de608, `lw` at 0x100de730.
  30 such `lw` accesses load 4 bytes from ?, including `lw` at 0x100de4dc, `lw` at 0x100de4ec, `lw` at 0x100de504.
  3 such `lw` accesses load 4 bytes from sym(WindowTable) +0x0, including `lw` at 0x100de4e8, `lw` at 0x100de640, `lw` at 0x100de840.
  10 such `lw` accesses load 4 bytes from [sym(WindowTable)] +0x0, including `lw` at 0x100de4f8, `lw` at 0x100de500, `lw` at 0x100de664.
  14 such `sw` accesses store 4 bytes to ?, including `sw` at 0x100de4fc, `sw` at 0x100de50c, `sw` at 0x100de5f0.
  5 such `lw` accesses load 4 bytes from [[sym(WindowTable)]] +0x4, including `lw` at 0x100de508, `lw` at 0x100de668, `lw` at 0x100de7a4.
  2 such `lw` accesses load 4 bytes from [a0+40] +0x4, including `lw` at 0x100de528, `lw` at 0x100de9c4.
  The `lw` at 0x100de64c loads 4 bytes from [sym(clients)] +0x0.
  The `lw` at 0x100de658 loads 4 bytes from [[sym(clients)]] +0x30.
  The `lw` at 0x100de660 loads 4 bytes from [[sym(clients)]] +0x38.
  The `sw` at 0x100de66c stores 4 bytes to [[sym(clients)]] +0x30.
  The `sw` at 0x100de674 stores 4 bytes to [[sym(clients)]] +0x2c.
  4 such `lw` accesses load 4 bytes from sym(__us_rsthread_malloc) +0x0, including `lw` at 0x100de68c, `lw` at 0x100de6b4, `lw` at 0x100de6e4.
  The `lw` at 0x100de6dc loads 4 bytes from table(0x102c71c0) +0x0.
  The `sw` at 0x100de704 stores 4 bytes to table(0x102c71c0) +0x0.
  The `lw` at 0x100de780 loads 4 bytes from [0x102c60fc] +0x8.
  The `sw` at 0x100de890 stores 4 bytes to [[sym(clients)]] +0x34.
  The `sw` at 0x100de898 stores 4 bytes to [[sym(clients)]] +0x38.
  The `jal` at 0x100de48c calls UnmapSubwindows [0x101b06f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100de6ac calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100de6c4 calls __libc_lockmalloc with a0=?, a1=?, a2=?, a3=[0x102c7240].
  The `jal` at 0x100de6e8 calls realfree..NL [0x1025db70] with a0=entry(0x102c71c0), a1=table(0x102c5d40), a2=([0x102c7240] << 0x2), a3=[0x102c7240], a5=[sym(__us_rsthread_malloc)].
  The `jalr` at 0x100de720 calls __libc_unlockmalloc with a0=?, a1=table(0x102c5d40), a2=([0x102c7240] << 0x2), a3=[0x102c7240], a5=[sym(__us_rsthread_malloc)].
  The `jalr` at 0x100de788 calls (unknown callee) with a0=?, a1=sp-144, a2=?, a3=[0x102c60fc], a5=[sym(clients)], a7=0x4.
  The `jal` at 0x100de878 calls FatalError [0x10094f20] with a0=?, a1=[[a0+40]+4], a2=?, a3=?.
  The `beq` branch at 0x100de49c targets 0x100de89c, is taken when a1(=[a0+40]) == 0, and falls through when a1(=[a0+40]) != 0.
  The `beq` branch at 0x100de4c0 targets 0x100de9b8 and is always taken.
  The `beq` branch at 0x100de4e4 targets 0x100de510, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x100de4f0 targets 0x100de510, is taken when a6(?) != s3(=[[a0+40]+4]), and falls through when a6(?) == s3(=[[a0+40]+4]).
  The `beq` branch at 0x100de510 targets 0x100de870, is taken when a3(=one of 0x0, 0x1) == 0, and falls through when a3(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x100de520 targets 0x100de89c, is taken when a1(=[a0+40]) == 0, and falls through when a1(=[a0+40]) != 0.
  The `beq` branch at 0x100de554 targets 0x100de870, is taken when a4(?) >= 0x100 (signed), and falls through when a4(?) < 0x100 (signed).
  The `beq` branch at 0x100de56c targets 0x100de870, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x100de574 targets 0x100de8cc, is taken when a1(?) == t9(=0x6), and falls through when a1(?) != t9(=0x6).
  The `beq` branch at 0x100de57c targets 0x100de8f8, is taken when a1(?) == ra(=0x7), and falls through when a1(?) != ra(=0x7).
  The `beq` branch at 0x100de584 targets 0x100de924, is taken when a1(?) == at(=0x8), and falls through when a1(?) != at(=0x8).
  The `beq` branch at 0x100de58c targets 0x100de950, is taken when a1(?) == v0(=0x9), and falls through when a1(?) != v0(=0x9).
  The `beq` branch at 0x100de594 targets 0x100de970, is taken when a1(?) == v1(=0xa), and falls through when a1(?) != v1(=0xa).
  The `beq` branch at 0x100de59c targets 0x100de990, is taken when a1(?) == a0(=0xb), and falls through when a1(?) != a0(=0xb).
  The `bne` branch at 0x100de5bc targets 0x100de9b0, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x100de5c4 targets 0x100de828 and is always taken.
  The `beq` branch at 0x100de5d8 targets 0x100de4d0, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x100de5e8 targets 0x100de5d0, is taken when t8(?) != s3(=[[a0+40]+4]), and falls through when t8(?) == s3(=[[a0+40]+4]).
  The `beq` branch at 0x100de600 targets 0x100de688, is taken when (s5(=0xffffffff80000000) & s1(?)) == 0, and falls through when (s5(=0xffffffff80000000) & s1(?)) != 0.
  The `beq` branch at 0x100de624 targets 0x100de688, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `blez` branch at 0x100de634 targets 0x100de688, is taken when a3(=[0x102c5d70]) <= 0 (signed), and falls through when a3(=[0x102c5d70]) > 0 (signed).
  The `beq` branch at 0x100de644 targets 0x100de680, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x100de650 targets 0x100de680, is taken when a3(=[[sym(clients)]]) == 0, and falls through when a3(=[[sym(clients)]]) != 0.
  The `bne` branch at 0x100de65c targets 0x100de888, is taken when t2(=[[[sym(clients)]]+48]) != a5(?), and falls through when t2(=[[[sym(clients)]]+48]) == a5(?).
  The `bnel` branch at 0x100de680 targets 0x100de7ec, is taken when a7(?) != 0, and falls through when a7(?) == 0; its branch-likely delay slot `lw a3,0(a4)` at 0x100de684 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x100de688 targets 0x100de6b8, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x100de6b8 targets 0x100de6d0, is taken when at(=[sym(__us_rsthread_malloc)]) == 0, and falls through when at(=[sym(__us_rsthread_malloc)]) != 0.
  The `beq` branch at 0x100de6e0 targets 0x100de704, is taken when a0(=entry(0x102c71c0)) == 0, and falls through when a0(=entry(0x102c71c0)) != 0.
  The `beq` branch at 0x100de714 targets 0x100de728, is taken when a5(=[sym(__us_rsthread_malloc)]) == 0, and falls through when a5(=[sym(__us_rsthread_malloc)]) != 0.
  The `beq` branch at 0x100de73c targets 0x100de748, is taken when a6(?) == s6(?), and falls through when a6(?) != s6(?).
  The `beq` branch at 0x100de74c targets 0x100de790, is taken when a3(=[0x102c60fc]) == 0, and falls through when a3(=[0x102c60fc]) != 0.
  The `beq` branch at 0x100de75c targets 0x100de790, is taken when a7(?) >= a1(?) (unsigned), and falls through when a7(?) < a1(?) (unsigned).
  The `beq` branch at 0x100de778 targets 0x100de790, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x100de790 targets 0x100de5d4 and is always taken.
  The `beq` branch at 0x100de7b8 targets 0x100de7e0, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x100de7c4 targets 0x100de814, is taken when t3(?) != a5(?), and falls through when t3(?) == a5(?).
  The `beq` branch at 0x100de7e0 targets 0x100de688, is taken when a4(?) == a6(=([sym(clients)] + ([0x102c5d70] << 0x2))), and falls through when a4(?) != a6(=([sym(clients)] + ([0x102c5d70] << 0x2))).
  The `beq` branch at 0x100de7ec targets 0x100de7b4, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x100de7f8 targets 0x100de7a0, is taken when ra(?) == a5(?), and falls through when ra(?) != a5(?).
  The `bne` branch at 0x100de800 targets 0x100de7b4, is taken when a7(?) != a5(?), and falls through when a7(?) == a5(?).
  The `beq` branch at 0x100de80c targets 0x100de7b4 and is always taken.
  The `bne` branch at 0x100de814 targets 0x100de7e0, is taken when a7(?) != a5(?), and falls through when a7(?) == a5(?).
  The `beq` branch at 0x100de820 targets 0x100de7e0 and is always taken.
  The `beq` branch at 0x100de83c targets 0x100de870, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x100de848 targets 0x100de874, is taken when a6(?) != s3(=[[a0+40]+4]), and falls through when a6(?) == s3(=[[a0+40]+4]).
  The `beq` branch at 0x100de880 targets 0x100de518 and is always taken.
  The `bne` branch at 0x100de888 targets 0x100de680, is taken when a1(=[[[sym(clients)]]+56]) != a5(?), and falls through when a1(=[[[sym(clients)]]+56]) == a5(?).
  The `beq` branch at 0x100de894 targets 0x100de680 and is always taken.
  The `beq` branch at 0x100de8f0 targets 0x100de5a4 and is always taken.
  The `beq` branch at 0x100de91c targets 0x100de5a4 and is always taken.
  The `beq` branch at 0x100de948 targets 0x100de5a4 and is always taken.
  The `beq` branch at 0x100de968 targets 0x100de5a4 and is always taken.
  The `beq` branch at 0x100de988 targets 0x100de5a4 and is always taken.
  The `beq` branch at 0x100de9a8 targets 0x100de5a4 and is always taken.
  The `beq` branch at 0x100de9b0 targets 0x100de5e4 and is always taken.
  The `beq` branch at 0x100de9c0 targets 0x100de52c and is always taken.
  The return at 0x100de8c4 has v0 = one of ret(UnmapSubwindows), ?.
  The instructions from 0x100de4c8 to 0x100de4cc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x100de5cc to 0x100de5cc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x100de798 to 0x100de79c are not reached by any path from the entry, and their branches are not listed.
- `ProcXineramaMapWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100e02d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100e02d0-0x100e044c (380 bytes).
  It occupies 380 bytes.
  The `lw` at 0x100e02d0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x100e02d8 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x100e032c loads 4 bytes from [a0+8] +0x4.
  The `lw` at 0x100e0338 loads 4 bytes from sym(XRT_WINDOW) +0x0.
  2 such `lw` accesses load 4 bytes from sym(ProcVector) +0x20, including `lw` at 0x100e0358, `lw` at 0x100e03b4.
  2 such `sw` accesses store 4 bytes to sym(panoramiXMode) +0x0, including `sw` at 0x100e0370, `sw` at 0x100e040c.
  The `lw` at 0x100e0398 loads 4 bytes from ?.
  The `sw` at 0x100e03a4 stores 4 bytes to ?.
  3 such `sw` accesses store 4 bytes to sym(panoramiXScreen0) +0x0, including `sw` at 0x100e03a8, `sw` at 0x100e03dc, `sw` at 0x100e0428.
  The `jal` at 0x100e0334 calls SecurityLookupIDByType [0x100d6140] with a0=a0 at entry (arg0), a1=[[a0+8]+4], a2=[sym(XRT_WINDOW)], a3=0x1.
  The `jalr` at 0x100e03bc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=sym(panoramiXScreen0).
  The `jal` at 0x100e03e8 calls XineramaDeliverVisibilityNotify [0x10197300] with a0=?, a1=?, a2=?, a3=?, a6=sym(panoramiXScreen0).
  The `jal` at 0x100e03f0 calls XineramaDeliverExpose [0x100e7410] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100e042c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[0x102c5f68], a3=sym(ProcVector), a4=[0x102c5f1c], a5=ret(SecurityLookupIDByType), a6=sym(panoramiXScreen0).
  The `beq` branch at 0x100e02f4 targets 0x100e0318, is taken when v1(=[a0+72]) == a1(=0x2), and falls through when v1(=[a0+72]) != a1(=0x2).
  The `beq` branch at 0x100e034c targets 0x100e0410, is taken when a2(=[0x102c5f68]) == 0, and falls through when a2(=[0x102c5f68]) != 0.
  The `beq` branch at 0x100e0354 targets 0x100e042c, is taken when v0(=ret(SecurityLookupIDByType)) == 0, and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  The `blez` branch at 0x100e036c targets 0x100e0440, is taken when a4(=[0x102c5f1c]) <= 0 (signed), and falls through when a4(=[0x102c5f1c]) > 0 (signed).
  The `beq` branch at 0x100e0374 targets 0x100e038c and is always taken.
  The `beq` branch at 0x100e0384 targets 0x100e0424, is taken when a3(?) >= t3(=[0x102c5f1c]) (signed), and falls through when a3(?) < t3(=[0x102c5f1c]) (signed).
  The `bne` branch at 0x100e03a0 targets 0x100e03b0, is taken when a5(?) != a4(?), and falls through when a5(?) == a4(?).
  The `beq` branch at 0x100e03e0 targets 0x100e037c, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x100e0408 targets 0x100e0308 and is always taken.
  The `bne` branch at 0x100e0410 targets 0x100e0360, is taken when v0(=ret(SecurityLookupIDByType)) != 0, and falls through when v0(=ret(SecurityLookupIDByType)) == 0.
  The `beq` branch at 0x100e041c targets 0x100e0308 and is always taken.
  The `beq` branch at 0x100e0424 targets 0x100e03e8 and is always taken.
  The `beq` branch at 0x100e0438 targets 0x100e0308 and is always taken.
  The `beq` branch at 0x100e0444 targets 0x100e03e8 and is always taken.
  The return at 0x100e0300 has v0 = 0x10.
  The return at 0x100e0310 has v0 = one of ?, 0x3, ret(?).
- `DefineInitialRootWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100e0a00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100e0a00-0x100e0c08 (520 bytes).
  It occupies 520 bytes.
  The `lw` at 0x100e0a08 loads 4 bytes from a0 (arg0 at entry) +0x10.
  2 such `lh` accesses load 2 bytes from [a0+16] +0x8, including `lh` at 0x100e0a58, `lh` at 0x100e0a8c.
  2 such `lh` accesses load 2 bytes from [a0+16] +0xa, including `lh` at 0x100e0a6c, `lh` at 0x100e0a94.
  The `lw` at 0x100e0aa0 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `lw` at 0x100e0ab0 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `lw` at 0x100e0ac0 loads 4 bytes from [a0+120] +0x4.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x100e0ad0, `lw` at 0x100e0ad4, `lw` at 0x100e0ae0.
  The `sw` at 0x100e0aec stores 4 bytes to [0x102c5fd8] +0x0.
  The `lw` at 0x100e0af0 loads 4 bytes from [a0+16] +0x118.
  The `lw` at 0x100e0b1c loads 4 bytes from [a0+16] +0x114.
  The `lw` at 0x100e0b2c loads 4 bytes from [a0+16] +0x12c.
  The `lw` at 0x100e0b44 loads 4 bytes from [a0+16] +0x11c.
  The `lw` at 0x100e0b58 loads 4 bytes from sym(panoramiXDisabled) +0x0.
  The `lw` at 0x100e0b80 loads 4 bytes from sym(panoramiXdataPtr) +0x0.
  2 such `lw` accesses load 4 bytes from [sym(panoramiXdataPtr)] +0x10, including `lw` at 0x100e0b84, `lw` at 0x100e0ba0.
  2 such `lw` accesses load 4 bytes from [sym(panoramiXdataPtr)] +0x14, including `lw` at 0x100e0b90, `lw` at 0x100e0bb0.
  2 such `lw` accesses load 4 bytes from [a0+16] +0x154, including `lw` at 0x100e0bd4, `lw` at 0x100e0bec.
  The `jal` at 0x100e0a4c calls LbxChangeWindowProperty [0x100d3cd0] with a0=0x0, a1=a0 at entry (arg0), a2=0x45, a3=0x13, a4=0x20, a5=0x0, a6=0x1, a7=0x1.
  The `jalr` at 0x100e0b10 calls (unknown callee) with a0=[a0+16], a1=[0x102c5fe8], a2=0x102c5fec, a3=0x102c5ffc, a4=0x1, a6=[0x102c5fd8].
  The `jalr` at 0x100e0b24 calls (unknown callee) with a0=[a0+16], a1=?, a2=?, a3=?.
  The `jalr` at 0x100e0b3c calls (unknown callee) with a0=[a0+16], a1=[0x102c6008], a2=[0x102c600c], a3=0x0.
  The `jalr` at 0x100e0b4c calls (unknown callee) with a0=[a0+16], a1=[0x102c5fe8], a2=?, a3=?.
  The `jalr` at 0x100e0be4 calls (unknown callee) with a0=0x102c6024, a1=0x0, a2=0x1, a3=?, a7=[sym(panoramiXDisabled)].
  The `jalr` at 0x100e0bf8 calls (unknown callee) with a0=0x102c6030, a1=0x0, a2=0x1, a3=?.
  The `bltz` branch at 0x100e0aac targets 0x100e0b74, is taken when v1(=([a0+124] << 0x3)) < 0 (signed), and falls through when v1(=([a0+124] << 0x3)) >= 0 (signed).
  The `beq` branch at 0x100e0ab4 targets 0x100e0ac4, is taken when a0(=[a0+120]) == 0, and falls through when a0(=[a0+120]) != 0.
  The `beq` branch at 0x100e0abc targets 0x100e0ae4 and is always taken.
  The `beq` branch at 0x100e0ad8 targets 0x100e0ad0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x100e0b5c targets 0x100e0b7c, is taken when a7(=[sym(panoramiXDisabled)]) == 0, and falls through when a7(=[sym(panoramiXDisabled)]) != 0.
  The `beq` branch at 0x100e0b74 targets 0x100e0ae8 and is always taken.
  The `beq` branch at 0x100e0c00 targets 0x100e0b64 and is always taken.
  The return at 0x100e0b6c has v0 = ret(?).
- `ProcSetBufferAttributes..FKC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100e0c10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100e0c10-0x100e14a0 (2192 bytes).
  It occupies 2192 bytes.
  The `lw` at 0x100e0c10 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x100e0c14 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x100e0c74 loads 4 bytes from [a0+8] +0x4.
  The `lw` at 0x100e0c84 loads 4 bytes from ret(SecurityLookupIDByType) +0x84.
  The `lw` at 0x100e0c90 loads 4 bytes from ([ret(SecurityLookupIDByType)+132] + ([0x102cc3a8] << 0x2)) +0x0.
  The `lw` at 0x100e0c94 loads 4 bytes from [([ret(SecurityLookupIDByType)+132] + ([0x102cc3a8] << 0x2))] +0x4.
  The `lw` at 0x100e0ca0 loads 4 bytes from [([ret(SecurityLookupIDByType)+132] + ([0x102cc3a8] << 0x2))] +0x1c.
  43 such `lw` accesses load 4 bytes from ?, including `lw` at 0x100e0cb4, `lw` at 0x100e0ce0, `lw` at 0x100e0d10.
  The `lw` at 0x100e0ccc loads 4 bytes from [[([ret(SecurityLookupIDByType)+132] + ([0x102cc3a8] << 0x2))]+28] +0x14.
  The `ld` at 0x100e0d18 loads 8 bytes from abs 0x1028e0b0.
  The `ld` at 0x100e0d40 loads 8 bytes from abs 0x1028e0b8.
  The `lhu` at 0x100e0d78 loads 2 bytes from ?.
  18 such `sw` accesses store 4 bytes to ?, including `sw` at 0x100e0de4, `sw` at 0x100e0e88, `sw` at 0x100e0eb4.
  The `lw` at 0x100e0de8 loads 4 bytes from a0 (arg0 at entry) +0x28.
  4 such `lw` accesses load 4 bytes from sym(clients) +0x0, including `lw` at 0x100e0e18, `lw` at 0x100e1020, `lw` at 0x100e1164.
  The `lw` at 0x100e0e60 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0x100e0ed0 stores 4 bytes to ret(Xalloc) +0x8.
  The `lw` at 0x100e0ed8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0x100e0ee8 stores 4 bytes to ret(Xalloc) +0x4.
  The `sw` at 0x100e0f04 stores 4 bytes to ret(Xalloc) +0x0.
  3 such `lw` accesses load 4 bytes from sym(WindowTable) +0x0, including `lw` at 0x100e1050, `lw` at 0x100e1280, `lw` at 0x100e1464.
  The `lw` at 0x100e105c loads 4 bytes from [sym(clients)] +0x0.
  The `lw` at 0x100e1070 loads 4 bytes from [[sym(clients)]] +0x30.
  The `lw` at 0x100e1078 loads 4 bytes from [[sym(clients)]] +0x38.
  10 such `lw` accesses load 4 bytes from [sym(WindowTable)] +0x0, including `lw` at 0x100e107c, `lw` at 0x100e1088, `lw` at 0x100e11e8.
  5 such `lw` accesses load 4 bytes from [[sym(WindowTable)]] +0x4, including `lw` at 0x100e1080, `lw` at 0x100e11e0, `lw` at 0x100e120c.
  The `sw` at 0x100e1084 stores 4 bytes to [[sym(clients)]] +0x30.
  The `sw` at 0x100e108c stores 4 bytes to [[sym(clients)]] +0x2c.
  2 such `lw` accesses load 4 bytes from sym(__us_rsthread_malloc) +0x0, including `lw` at 0x100e10d0, `lw` at 0x100e1128.
  The `lw` at 0x100e10fc loads 4 bytes from table(0x102c71c0) +0x0.
  The `sw` at 0x100e112c stores 4 bytes to table(0x102c71c0) +0x0.
  The `lw` at 0x100e11bc loads 4 bytes from [0x102c60fc] +0x8.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x18, including `sw` at 0x100e12dc, `sw` at 0x100e1360.
  The `sw` at 0x100e130c stores 4 bytes to [[sym(clients)]] +0x34.
  The `sw` at 0x100e1314 stores 4 bytes to [[sym(clients)]] +0x38.
  The `jal` at 0x100e0c70 calls SecurityLookupIDByType [0x100d6140] with a0=0x0, a1=[[a0+8]+4], a2=[0x102ca7ec], a3=0x0.
  The `jal` at 0x100e0ebc calls Xalloc [0x1020aeb0] with a0=0xc, a1=?, a2=?, a3=?.
  The `jal` at 0x100e0ed4 calls FakeClientID [0x10069920] with a0=[a0], a1=?, a2=?, a3=?.
  The `jal` at 0x100e0ef0 calls AddResource [0x1010ec30] with a0=ret(FakeClientID), a1=[0x102ca7f4], a2=?, a3=?.
  The `jalr` at 0x100e10c0 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100e10e0 calls __libc_lockmalloc with a0=?, a1=[0x102c7240], a2=?, a3=?.
  The `jal` at 0x100e1108 calls realfree..NL [0x1025db70] with a0=entry(0x102c71c0), a1=[0x102c7240], a2=entry(0x102c71c0), a3=?.
  The `jalr` at 0x100e1148 calls __libc_unlockmalloc with a0=sym(__us_rsthread_malloc), a1=[0x102c7240], a2=?, a3=[sym(__us_rsthread_malloc)].
  The `jalr` at 0x100e11c4 calls (unknown callee) with a0=?, a1=sp-176, a2=[0x102c60fc], a3=?, a4=0x4, a5=[sym(clients)].
  The `jal` at 0x100e12b4 calls FatalError [0x10094f20] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100e1490 calls Xfree [0x101fc9c0] with a0=ret(Xalloc), a1=?, a2=?, a3=?.
  The `beq` branch at 0x100e0c28 targets 0x100e0c58, is taken when at(=[a0+72]) >= 0x3 (unsigned), and falls through when at(=[a0+72]) < 0x3 (unsigned).
  The `beq` branch at 0x100e0c78 targets 0x100e12c4, is taken when v0(=ret(SecurityLookupIDByType)) == 0, and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  The `blez` branch at 0x100e0c98 targets 0x100e0ce8, is taken when a0(=[[([ret(SecurityLookupIDByType)+132] + ([0x102cc3a8] << 0x2))]+4]) <= 0 (signed), and falls through when a0(=[[([ret(SecurityLookupIDByType)+132] + ([0x102cc3a8] << 0x2))]+4]) > 0 (signed).
  The `beq` branch at 0x100e0cd0 targets 0x100e0cfc, is taken when a4(?) == a1(?), and falls through when a4(?) != a1(?).
  The `bnel` branch at 0x100e0cdc targets 0x100e0cd0, is taken when v0(?) != a2(?), and falls through when v0(?) == a2(?); its branch-likely delay slot `lw a4,20(v0)` at 0x100e0ce0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x100e0cfc targets 0x100e0ce8, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x100e0d88 targets 0x100e12fc, is taken when a5(?) != a6(?), and falls through when a5(?) == a6(?).
  The `beq` branch at 0x100e0da4 targets 0x100e1318, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0x100e0ddc targets 0x100e0dfc and is always taken.
  The `bne` branch at 0x100e0dec targets 0x100e12e0, is taken when t3(=[a0+40]) != 0, and falls through when t3(=[a0+40]) == 0.
  The `beq` branch at 0x100e0df8 targets 0x100e1318, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `bne` branch at 0x100e0e1c targets 0x100e1338, is taken when v0(=0x1) != t9(?), and falls through when v0(=0x1) == t9(?).
  The `bne` branch at 0x100e0e2c targets 0x100e12dc, is taken when (ra(=0xfffffffff9ff7fff) & s7(?)) != 0, and falls through when (ra(=0xfffffffff9ff7fff) & s7(?)) == 0.
  The `beq` branch at 0x100e0e4c targets 0x100e0de4, is taken when at(?) == s2(=a0), and falls through when at(?) != s2(=a0).
  The `beq` branch at 0x100e0e54 targets 0x100e0ebc, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x100e0e5c targets 0x100e0e70 and is always taken.
  The `beq` branch at 0x100e0e68 targets 0x100e0ebc, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `bne` branch at 0x100e0e78 targets 0x100e0e64, is taken when v0(=[a0+4]) != v1(?), and falls through when v0(=[a0+4]) == v1(?).
  The `beq` branch at 0x100e0e80 targets 0x100e0f20, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `beq` branch at 0x100e0e8c targets 0x100e0ebc, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x100e0e98 targets 0x100e0f14, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x100e0ea8 targets 0x100e0ea0, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x100e0eb0 targets 0x100e0de8 and is always taken.
  The `beq` branch at 0x100e0ec4 targets 0x100e1484, is taken when v0(=ret(Xalloc)) == 0, and falls through when v0(=ret(Xalloc)) != 0.
  The `beq` branch at 0x100e0ef8 targets 0x100e148c, is taken when v0(=ret(AddResource)) == 0, and falls through when v0(=ret(AddResource)) != 0.
  The `beq` branch at 0x100e0f0c targets 0x100e0e98 and is always taken.
  The `beq` branch at 0x100e0f18 targets 0x100e0eb0 and is always taken.
  The `beq` branch at 0x100e0f40 targets 0x100e12ac, is taken when a5(?) >= 0x100 (signed), and falls through when a5(?) < 0x100 (signed).
  The `beq` branch at 0x100e0f60 targets 0x100e12ac, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x100e0f6c targets 0x100e1364, is taken when v0(?) == t0(=0x6), and falls through when v0(?) != t0(=0x6).
  The `beq` branch at 0x100e0f74 targets 0x100e1390, is taken when v0(?) == t2(=0x7), and falls through when v0(?) != t2(=0x7).
  The `beq` branch at 0x100e0f7c targets 0x100e13bc, is taken when v0(?) == t3(=0x8), and falls through when v0(?) != t3(=0x8).
  The `beq` branch at 0x100e0f84 targets 0x100e13e8, is taken when v0(?) == t8(=0x9), and falls through when v0(?) != t8(=0x9).
  The `beq` branch at 0x100e0f8c targets 0x100e1408, is taken when v0(?) == t9(=0xa), and falls through when v0(?) != t9(=0xa).
  The `beq` branch at 0x100e0f94 targets 0x100e1428, is taken when v0(?) == ra(=0xb), and falls through when v0(?) != ra(=0xb).
  The `beq` branch at 0x100e0fb8 targets 0x100e1444, is taken when s8(?) == 0, and falls through when s8(?) != 0.
  The `beq` branch at 0x100e0fc0 targets 0x100e0fdc and is always taken.
  The `beq` branch at 0x100e0fd4 targets 0x100e126c, is taken when s8(?) == 0, and falls through when s8(?) != 0.
  The `bne` branch at 0x100e0fe8 targets 0x100e0fc8, is taken when ra(?) != s6(?), and falls through when ra(?) == s6(?).
  The `beq` branch at 0x100e1010 targets 0x100e1098, is taken when (a1(=0xffffffff80000000) & a0(?)) == 0, and falls through when (a1(=0xffffffff80000000) & a0(?)) != 0.
  The `beq` branch at 0x100e1034 targets 0x100e1098, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `blez` branch at 0x100e1044 targets 0x100e1098, is taken when v0(=[0x102c5d70]) <= 0 (signed), and falls through when v0(=[0x102c5d70]) > 0 (signed).
  The `beq` branch at 0x100e1054 targets 0x100e1090, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x100e1068 targets 0x100e1090, is taken when v0(=[[sym(clients)]]) == 0, and falls through when v0(=[[sym(clients)]]) != 0.
  The `bne` branch at 0x100e1074 targets 0x100e1304, is taken when t3(=[[[sym(clients)]]+48]) != a2(?), and falls through when t3(=[[[sym(clients)]]+48]) == a2(?).
  The `bnel` branch at 0x100e1090 targets 0x100e1228, is taken when a7(?) != 0, and falls through when a7(?) == 0; its branch-likely delay slot `lw v0,0(a5)` at 0x100e1094 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x100e1098 targets 0x100e10cc, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x100e10d4 targets 0x100e10f0, is taken when v0(=[sym(__us_rsthread_malloc)]) == 0, and falls through when v0(=[sym(__us_rsthread_malloc)]) != 0.
  The `beq` branch at 0x100e1100 targets 0x100e1128, is taken when a2(=entry(0x102c71c0)) == 0, and falls through when a2(=entry(0x102c71c0)) != 0.
  The `beq` branch at 0x100e113c targets 0x100e1154, is taken when a3(=[sym(__us_rsthread_malloc)]) == 0, and falls through when a3(=[sym(__us_rsthread_malloc)]) != 0.
  The `beq` branch at 0x100e1170 targets 0x100e1180, is taken when a2(?) == a3(?), and falls through when a2(?) != a3(?).
  The `beq` branch at 0x100e1188 targets 0x100e11d0, is taken when a2(=[0x102c60fc]) == 0, and falls through when a2(=[0x102c60fc]) != 0.
  The `beq` branch at 0x100e1198 targets 0x100e11d0, is taken when a4(?) >= v0(?) (unsigned), and falls through when a4(?) < v0(?) (unsigned).
  The `beq` branch at 0x100e11b4 targets 0x100e11d0, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x100e11d0 targets 0x100e0fcc and is always taken.
  The `beq` branch at 0x100e11f4 targets 0x100e121c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x100e1200 targets 0x100e1244, is taken when t3(?) != a2(?), and falls through when t3(?) == a2(?).
  The `beq` branch at 0x100e121c targets 0x100e1098, is taken when a5(?) == a6(=([sym(clients)] + ([0x102c5d70] << 0x2))), and falls through when a5(?) != a6(=([sym(clients)] + ([0x102c5d70] << 0x2))).
  The `beq` branch at 0x100e1228 targets 0x100e11f0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x100e1234 targets 0x100e1258, is taken when ra(?) != a2(?), and falls through when ra(?) == a2(?).
  The `beq` branch at 0x100e123c targets 0x100e11e0 and is always taken.
  The `bne` branch at 0x100e1244 targets 0x100e121c, is taken when a7(?) != a2(?), and falls through when a7(?) == a2(?).
  The `beq` branch at 0x100e1250 targets 0x100e121c and is always taken.
  The `bne` branch at 0x100e1258 targets 0x100e11f0, is taken when a7(?) != a2(?), and falls through when a7(?) == a2(?).
  The `beq` branch at 0x100e1264 targets 0x100e11f0 and is always taken.
  The `beq` branch at 0x100e127c targets 0x100e12a8, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x100e1288 targets 0x100e12a8, is taken when a4(?) != s6(?), and falls through when a4(?) == s6(?).
  The `bne` branch at 0x100e12a8 targets 0x100e0e8c, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x100e12bc targets 0x100e0e8c and is always taken.
  The `beq` branch at 0x100e12f4 targets 0x100e0c40 and is always taken.
  The `beq` branch at 0x100e12fc targets 0x100e0c40 and is always taken.
  The `bne` branch at 0x100e1304 targets 0x100e1090, is taken when a1(=[[[sym(clients)]]+56]) != a2(?), and falls through when a1(=[[[sym(clients)]]+56]) == a2(?).
  The `beq` branch at 0x100e1310 targets 0x100e1090 and is always taken.
  The `beq` branch at 0x100e1330 targets 0x100e0c40 and is always taken.
  The `beq` branch at 0x100e135c targets 0x100e0c40 and is always taken.
  The `beq` branch at 0x100e1388 targets 0x100e0fa0 and is always taken.
  The `beq` branch at 0x100e13b4 targets 0x100e0fa0 and is always taken.
  The `beq` branch at 0x100e13e0 targets 0x100e0fa0 and is always taken.
  The `beq` branch at 0x100e1400 targets 0x100e0fa0 and is always taken.
  The `beq` branch at 0x100e1420 targets 0x100e0fa0 and is always taken.
  The `beq` branch at 0x100e143c targets 0x100e0fa0 and is always taken.
  The `beq` branch at 0x100e1450 targets 0x100e12b0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x100e145c targets 0x100e12ac, is taken when a3(?) != s6(?), and falls through when a3(?) == s6(?).
  The `beq` branch at 0x100e147c targets 0x100e12ac and is always taken.
  The `beq` branch at 0x100e1484 targets 0x100e12e0 and is always taken.
  The `beq` branch at 0x100e1498 targets 0x100e12e0 and is always taken.
  The return at 0x100e0c38 has v0 = 0x10.
  The return at 0x100e0c50 has v0 = one of ?, 0x10, 0x0, 0x2.
  The return at 0x100e0cf4 has v0 = [0x102ca7e8].
  The return at 0x100e12d4 has v0 = [0x102ca7e8].
  The instructions from 0x100e0eb8 to 0x100e0eb8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x100e11d8 to 0x100e11dc are not reached by any path from the entry, and their branches are not listed.
- `LookupWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100e63c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100e63c0-0x100e63ec (44 bytes).
  It occupies 44 bytes.
  The `jal` at 0x100e63d4 calls SecurityLookupWindow [0x1006ce40] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x0, a3=a3 at entry (arg3).
  The return at 0x100e63e4 has v0 = ret(SecurityLookupWindow).
- `RegionOperate..BNC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100e6f00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100e6f00-0x100e7148 (584 bytes).
  It occupies 584 bytes.
  The `lw` at 0x100e6f18 loads 4 bytes from a1 (arg1 at entry) +0x10.
  The `lw` at 0x100e6f44 loads 4 bytes from [a1+16] +0x178.
  The `lw` at 0x100e6f5c loads 4 bytes from a1 (arg1 at entry) +0x18.
  3 such `lw` accesses load 4 bytes from [a1+16] +0x15c, including `lw` at 0x100e6f70, `lw` at 0x100e7004, `lw` at 0x100e7080.
  The `sw` at 0x100e6fdc stores 4 bytes to a0 (arg0 at entry) +0x18.
  5 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x0, including `lw` at 0x100e6fe0, `lw` at 0x100e7074, `lw` at 0x100e7098.
  2 such `lw` accesses load 4 bytes from [a1+16] +0x16c, including `lw` at 0x100e6fec, `lw` at 0x100e70f0.
  The `lw` at 0x100e7010 loads 4 bytes from [a1+16] +0x1f4.
  The `lw` at 0x100e7024 loads 4 bytes from sym(panoramiXDisabled) +0x0.
  The `lw` at 0x100e702c loads 4 bytes from sym(panoramiXScreen0) +0x0.
  The `lw` at 0x100e7034 loads 4 bytes from sym(panoramiXMode) +0x0.
  4 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x100e7094, `sw` at 0x100e710c, `sw` at 0x100e7128.
  The `lw` at 0x100e70a4 loads 4 bytes from [a1+16] +0x168.
  The `lw` at 0x100e70c8 loads 4 bytes from [a1+16] +0x164.
  The `lw` at 0x100e7110 loads 4 bytes from [a1+16] +0x150.
  The `jalr` at 0x100e6f50 calls (unknown callee) with a0=a4 at entry (arg4), a1=a6 at entry (arg6), a2=a7 at entry (arg7), a3=a3 at entry (arg3).
  The `jalr` at 0x100e6f74 calls (unknown callee) with a0=a4 at entry (arg4), a1=?, a2=?, a3=?.
  The `jalr` at 0x100e6ff4 calls (unknown callee) with a0=[a3], a1=a4 at entry (arg4), a2=[a3], a3=a0 at entry (arg0).
  The `jalr` at 0x100e7008 calls (unknown callee) with a0=a4 at entry (arg4), a1=?, a2=?, a3=?.
  The `jalr` at 0x100e7014 calls (unknown callee) with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x100e704c calls SendShapeNotify..GNC [0x101b58a0] with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=?, a3=[sym(panoramiXScreen0)], a4=sym(panoramiXScreen0).
  The `jalr` at 0x100e7084 calls (unknown callee) with a0=[a3], a1=a3 at entry (arg3), a2=?, a3=?.
  The `jalr` at 0x100e70ac calls (unknown callee) with a0=[a3], a1=[a3], a2=a4 at entry (arg4), a3=?.
  The `jalr` at 0x100e70d0 calls (unknown callee) with a0=[a3], a1=[a3], a2=a4 at entry (arg4), a3=a3 at entry (arg3).
  The `jalr` at 0x100e70f8 calls (unknown callee) with a0=?, a1=?, a2=a4 at entry (arg4), a3=?.
  The `jalr` at 0x100e7118 calls (unknown callee) with a0=0x0, a1=0x0, a2=0x4, a3=a0 at entry (arg0).
  The `jalr` at 0x100e7130 calls (unknown callee) with a0=a1 at entry (arg1), a1=[a3], a2=[a3], a3=a0 at entry (arg0).
  The `beq` branch at 0x100e6f2c targets 0x100e6f58, is taken when a4 == 0, and falls through when a4 != 0.
  The `bne` branch at 0x100e6f34 targets 0x100e6f44, is taken when a6 != 0, and falls through when a6 == 0.
  The `beq` branch at 0x100e6f3c targets 0x100e6f5c, is taken when a7 == 0, and falls through when a7 != 0.
  The `bne` branch at 0x100e6f60 targets 0x100e6f98, is taken when v0(=[a1+24]) != 0, and falls through when v0(=[a1+24]) == 0.
  The `beq` branch at 0x100e6f68 targets 0x100e6f80, is taken when s2(=a4) == 0, and falls through when s2(=a4) != 0.
  The `beq` branch at 0x100e6f98 targets 0x100e7070, is taken when s0(=a5) == 0, and falls through when s0(=a5) != 0.
  The `beq` branch at 0x100e6fa4 targets 0x100e7098, is taken when s0(=a5) == v1(=0x1), and falls through when s0(=a5) != v1(=0x1).
  The `beq` branch at 0x100e6fb0 targets 0x100e70bc, is taken when s0(=a5) == a0(=0x2), and falls through when s0(=a5) != a0(=0x2).
  The `beq` branch at 0x100e6fbc targets 0x100e70e0, is taken when s0(=a5) == a1(=0x3), and falls through when s0(=a5) != a1(=0x3).
  The `beq` branch at 0x100e6fc8 targets 0x100e6fe0, is taken when s0(=a5) == a2(=0x4), and falls through when s0(=a5) != a2(=0x4).
  The `beq` branch at 0x100e6fd8 targets 0x100e7060 and is always taken.
  The `beq` branch at 0x100e6fe4 targets 0x100e7110, is taken when a0(=[a3]) == 0, and falls through when a0(=[a3]) != 0.
  The `beq` branch at 0x100e6ffc targets 0x100e7010, is taken when s2(=a4) == 0, and falls through when s2(=a4) != 0.
  The `bne` branch at 0x100e7030 targets 0x100e7048, is taken when v1(=[sym(panoramiXDisabled)]) != 0, and falls through when v1(=[sym(panoramiXDisabled)]) == 0.
  The `beq` branch at 0x100e7038 targets 0x100e704c, is taken when v0(=[sym(panoramiXMode)]) == 0, and falls through when v0(=[sym(panoramiXMode)]) != 0.
  The `beq` branch at 0x100e7040 targets 0x100e7058, is taken when a3(=[sym(panoramiXScreen0)]) == 0, and falls through when a3(=[sym(panoramiXScreen0)]) != 0.
  The `beq` branch at 0x100e7078 targets 0x100e7090, is taken when a0(=[a3]) == 0, and falls through when a0(=[a3]) != 0.
  The `beq` branch at 0x100e7090 targets 0x100e7010 and is always taken.
  The `beq` branch at 0x100e709c targets 0x100e6ffc, is taken when a0(=[a3]) == 0, and falls through when a0(=[a3]) != 0.
  The `beq` branch at 0x100e70b4 targets 0x100e6ffc and is always taken.
  The `beq` branch at 0x100e70c0 targets 0x100e7108, is taken when a0(=[a3]) == 0, and falls through when a0(=[a3]) != 0.
  The `beq` branch at 0x100e70d8 targets 0x100e6ffc and is always taken.
  The `beq` branch at 0x100e70e8 targets 0x100e712c, is taken when a2(=[a3]) == 0, and falls through when a2(=[a3]) != 0.
  The `beq` branch at 0x100e7100 targets 0x100e6ffc and is always taken.
  The `beq` branch at 0x100e7108 targets 0x100e7010 and is always taken.
  The `beq` branch at 0x100e7124 targets 0x100e6ffc and is always taken.
  The `beq` branch at 0x100e7140 targets 0x100e70f0 and is always taken.
  The return at 0x100e6f90 has v0 = 0x0.
  The return at 0x100e7068 has v0 = one of 0x0, 0x2.
- `MultibufferExtensionInit` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100e7150 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100e7150-0x100e7408 (696 bytes).
  It occupies 696 bytes.
  The `lw` at 0x100e7188 loads 4 bytes from sym(XRC_DRAWABLE) +0x0.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0x100e7254, `sw` at 0x100e7374, `sw` at 0x100e73d0.
  The `lw` at 0x100e72a8 loads 4 bytes from ret(AddXineramaExtension) +0x18.
  The `lw` at 0x100e72b8 loads 4 bytes from ret(AddXineramaExtension) +0x10.
  The `sw` at 0x100e72e8 stores 4 bytes to (sym(EventSwapVector) + ([ret(AddXineramaExtension)+16] << 0x2)) +0x0.
  The `sw` at 0x100e72f4 stores 4 bytes to (sym(EventSwapVector) + ([ret(AddXineramaExtension)+16] << 0x2)) +0x4.
  The `jal` at 0x100e7190 calls dbcInit [0x1010a0a0] with a0=?, a1=[sym(XRC_DRAWABLE)], a2=?, a3=?.
  The `jalr` at 0x100e719c calls strlen with a0=sym(nmbxMaxDisplayBuffersString), a1=?, a2=?, a3=?.
  The `jal` at 0x100e71b0 calls MakeAtom [0x10238200] with a0=sym(nmbxMaxDisplayBuffersString), a1=ret(strlen), a2=0x1, a3=?.
  The `jal` at 0x100e7218 calls Xrealloc [0x101b9470] with a0=[0x102c610c], a1=?, a2=?, a3=?.
  The `jal` at 0x100e72a0 calls AddXineramaExtension [0x101f12e0] with a0=0x102989d8, a1=0x2, a2=0x1, a3=0x1019d470, a4=0x1018e260, a5=0x100a86c0, a6=0x10225f00, a7=0x10072430.
  The `jal` at 0x100e7304 calls Xrealloc [0x101b9470] with a0=[0x102c610c], a1=([0x102c6100] << 0x2)+8, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[0x102c6100].
  The `jal` at 0x100e7334 calls Xrealloc [0x101b9470] with a0=[0x102c610c], a1=([0x102c6100] << 0x2)+8, a2=?, a3=[0x102c6100]+1, a4=[0x102c6100].
  The `jal` at 0x100e7390 calls Xrealloc [0x101b9470] with a0=[0x102c610c], a1=?, a2=?, a3=?, a5=0x0.
  The `beq` branch at 0x100e7178 targets 0x100e72f8, is taken when (at(=[0x102c6104]) & v1(=[0x102c6100]+1)) == 0, and falls through when (at(=[0x102c6104]) & v1(=[0x102c6100]+1)) != 0.
  The `beq` branch at 0x100e71cc targets 0x100e7328, is taken when (a0(=[0x102c6104]) & a3(=[0x102c6100]+1)) == 0, and falls through when (a0(=[0x102c6104]) & a3(=[0x102c6100]+1)) != 0.
  The `beq` branch at 0x100e71e0 targets 0x100e7384, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x100e71ec targets 0x100e720c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x100e7224 targets 0x100e73e0, is taken when v0(=ret(Xrealloc)) == 0, and falls through when v0(=ret(Xrealloc)) != 0.
  The `beq` branch at 0x100e7250 targets 0x100e7204, is taken when a4(=[0x102ca7ec]) == 0, and falls through when a4(=[0x102ca7ec]) != 0.
  The `beq` branch at 0x100e7258 targets 0x100e7204, is taken when a0(=[0x102ca7f0]) == 0, and falls through when a0(=[0x102ca7f0]) != 0.
  The `beq` branch at 0x100e7260 targets 0x100e7204, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x100e7314 targets 0x100e73ec, is taken when v0(=ret(Xrealloc)) != 0, and falls through when v0(=ret(Xrealloc)) == 0.
  The `beq` branch at 0x100e7320 targets 0x100e7188 and is always taken.
  The `bne` branch at 0x100e7344 targets 0x100e7358, is taken when v0(=ret(Xrealloc)) != 0, and falls through when v0(=ret(Xrealloc)) == 0.
  The `beq` branch at 0x100e7350 targets 0x100e7378 and is always taken.
  The `beq` branch at 0x100e737c targets 0x100e71d8 and is always taken.
  The `bne` branch at 0x100e73a0 targets 0x100e73b4, is taken when v0(=ret(Xrealloc)) != 0, and falls through when v0(=ret(Xrealloc)) == 0.
  The `beq` branch at 0x100e73ac targets 0x100e73d4 and is always taken.
  The `beq` branch at 0x100e73d8 targets 0x100e71e8 and is always taken.
  The `beq` branch at 0x100e7400 targets 0x100e7184 and is always taken.
  The return at 0x100e71fc has v0 = ?.
  The return at 0x100e7204 has v0 = ret(Xrealloc).
  The return at 0x100e72f0 has v0 = ret(AddXineramaExtension).
  The return at 0x100e73e4 has v0 = ret(Xrealloc).
- `ProcXineramaSetMBufferAttributes..NKC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100e7c50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100e7c50-0x100e7eb8 (616 bytes).
  It occupies 616 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x100e7c54, `lw` at 0x100e7d0c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x100e7c70, `lw` at 0x100e7d18.
  2 such `lw` accesses load 4 bytes from [a0+8] +0x4, including `lw` at 0x100e7c88, `lw` at 0x100e7d20.
  The `lw` at 0x100e7ca0 loads 4 bytes from sym(XRT_WINDOW) +0x0.
  2 such `sw` accesses store 4 bytes to sym(panoramiXMode) +0x0, including `sw` at 0x100e7cbc, `sw` at 0x100e7e90.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x100e7d04, `lw` at 0x100e7e20.
  The `sw` at 0x100e7d08 stores 4 bytes to [a0+8] +0x4.
  The `lw` at 0x100e7d40 loads 4 bytes from ret(SecurityLookupWindow) +0x84.
  The `lw` at 0x100e7d4c loads 4 bytes from ([ret(SecurityLookupWindow)+132] + ([0x102cc3a8] << 0x2)) +0x0.
  2 such `lw` accesses load 4 bytes from [a0+8] +0x8, including `lw` at 0x100e7d64, `lw` at 0x100e7e9c.
  The `lhu` at 0x100e7dcc loads 2 bytes from [a0+8] +0x2.
  The `sw` at 0x100e7e04 stores 4 bytes to [([ret(SecurityLookupWindow)+132] + ([0x102cc3a8] << 0x2))] +0x10.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x18, including `sw` at 0x100e7e44, `sw` at 0x100e7ea8.
  The `jal` at 0x100e7c9c calls SecurityLookupIDByType [0x100d6140] with a0=a0 at entry (arg0), a1=[[a0+8]+4], a2=[sym(XRT_WINDOW)], a3=0x2.
  The `jal` at 0x100e7d24 calls SecurityLookupWindow [0x1006ce40] with a0=[[a0+8]+4], a1=a0 at entry (arg0), a2=0x0, a3=?, a5=0x10.
  The `jal` at 0x100e7e50 calls XineramaDeliverVisibilityNotify [0x10197300] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100e7e64 calls XineramaDeliverExpose [0x100e7410] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x100e7c6c targets 0x100e7c88, is taken when at(=[a0+72]) == v0(=0x3), and falls through when at(=[a0+72]) != v0(=0x3).
  The `beq` branch at 0x100e7cac targets 0x100e7eac, is taken when v0(=ret(SecurityLookupIDByType)) == 0, and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  The `blez` branch at 0x100e7cdc targets 0x100e7e48, is taken when a0(=[0x102c5f1c]) <= 0 (signed), and falls through when a0(=[0x102c5f1c]) > 0 (signed).
  The `beq` branch at 0x100e7ce8 targets 0x100e7d00 and is always taken.
  The `bne` branch at 0x100e7cf4 targets 0x100e7e50, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x100e7cfc targets 0x100e7e50, is taken when s0(?) == s5(=ret(SecurityLookupIDByType)-8), and falls through when s0(?) != s5(=ret(SecurityLookupIDByType)-8).
  The `bne` branch at 0x100e7d14 targets 0x100e7cf0, is taken when s3(=[a0+72]) < 0x3 (unsigned), and falls through when s3(=[a0+72]) >= 0x3 (unsigned).
  The `bne` branch at 0x100e7d2c targets 0x100e7d3c, is taken when v0(=ret(SecurityLookupWindow)) != 0, and falls through when v0(=ret(SecurityLookupWindow)) == 0.
  The `beq` branch at 0x100e7d34 targets 0x100e7cf4 and is always taken.
  The `bne` branch at 0x100e7d50 targets 0x100e7d60, is taken when a0(=[([ret(SecurityLookupWindow)+132] + ([0x102cc3a8] << 0x2))]) != 0, and falls through when a0(=[([ret(SecurityLookupWindow)+132] + ([0x102cc3a8] << 0x2))]) == 0.
  The `beq` branch at 0x100e7d58 targets 0x100e7cf4 and is always taken.
  The `beq` branch at 0x100e7ddc targets 0x100e7dec, is taken when a2(=[[a0+8]+2]:2-3) == a3(?), and falls through when a2(=[[a0+8]+2]:2-3) != a3(?).
  The `beq` branch at 0x100e7de4 targets 0x100e7cf4 and is always taken.
  The `beq` branch at 0x100e7dec targets 0x100e7e94, is taken when a4(=[[a0+8]+8]) == 0, and falls through when a4(=[[a0+8]+8]) != 0.
  The `beq` branch at 0x100e7df4 targets 0x100e7e0c and is always taken.
  The `beq` branch at 0x100e7e00 targets 0x100e7e94, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0x100e7e18 targets 0x100e7e9c, is taken when s1(=0x1) != a7(?), and falls through when s1(=0x1) == a7(?).
  The `beq` branch at 0x100e7e24 targets 0x100e7e00, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x100e7e2c targets 0x100e7e00, is taken when s1(=0x1) == v0(?), and falls through when s1(=0x1) != v0(?).
  The `beq` branch at 0x100e7e34 targets 0x100e7e00, is taken when s6(=0x2) == v0(?), and falls through when s6(=0x2) != v0(?).
  The `beq` branch at 0x100e7e40 targets 0x100e7cf0 and is always taken.
  The `beq` branch at 0x100e7e94 targets 0x100e7cf0 and is always taken.
  The `beq` branch at 0x100e7ea4 targets 0x100e7cf0 and is always taken.
  The `beq` branch at 0x100e7eb0 targets 0x100e7c78 and is always taken.
  The return at 0x100e7c80 has v0 = one of 0x3, 0x10.
  The return at 0x100e7e8c has v0 = ?.
  The instructions from 0x100e7dfc to 0x100e7dfc are not reached by any path from the entry, and their branches are not listed.
- `RegisterAuthorizations` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100ec0d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100ec0d0-0x100ec2a4 (468 bytes).
  It occupies 468 bytes.
  The `lhu` at 0x100ec100 loads 2 bytes from ?.
  The `lw` at 0x100ec108 loads 4 bytes from ?.
  17 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x100ec194, `lbu` at 0x100ec1b8, `lbu` at 0x100ec1c0.
  17 such `sb` accesses store 1 byte to ?, including `sb` at 0x100ec1a0, `sb` at 0x100ec1bc, `sb` at 0x100ec1c4.
  The `sw` at 0x100ec25c stores 4 bytes to ([0x102c7194] + ([0x102c7190]:1 << 0x3)) -0x4.
  The `sw` at 0x100ec264 stores 4 bytes to ([0x102c7194] + ([0x102c7190]:1 << 0x3)) -0x8.
  The `jal` at 0x100ec10c calls Xalloc [0x1020aeb0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100ec15c calls XdmcpReallocARRAYofARRAY8 [0x101f1c20] with a0=?, a1=[0x102c7190]:1+1, a2=?, a3=?.
  The `jal` at 0x100ec270 calls Xfree [0x101fc9c0] with a0=ret(Xalloc), a1=?, a2=?, a3=?.
  The `bne` branch at 0x100ec118 targets 0x100ec14c, is taken when v0(=ret(Xalloc)) != 0, and falls through when v0(=ret(Xalloc)) == 0.
  The `bne` branch at 0x100ec124 targets 0x100ec100, is taken when s0(?) != s2(=0x102cc118), and falls through when s0(?) == s2(=0x102cc118).
  The `beq` branch at 0x100ec164 targets 0x100ec270, is taken when v0(=ret(XdmcpReallocARRAYofARRAY8)) == 0, and falls through when v0(=ret(XdmcpReallocARRAYofARRAY8)) != 0.
  The `blez` branch at 0x100ec16c targets 0x100ec240, is taken when s1(?) <= 0 (signed), and falls through when s1(?) > 0 (signed).
  The `beq` branch at 0x100ec184 targets 0x100ec1a4, is taken when (s1(?) & 0x3) == 0, and falls through when (s1(?) & 0x3) != 0.
  The `bne` branch at 0x100ec19c targets 0x100ec18c, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x100ec1a8 targets 0x100ec240, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x100ec1b0 targets 0x100ec280, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x100ec204 targets 0x100ec268, is taken when a0(?) == v0(?), and falls through when a0(?) != v0(?).
  The `bne` branch at 0x100ec230 targets 0x100ec1e0, is taken when a0(?) != v0(?), and falls through when a0(?) == v0(?).
  The `beq` branch at 0x100ec260 targets 0x100ec120 and is always taken.
  The `beq` branch at 0x100ec268 targets 0x100ec23c and is always taken.
  The `beq` branch at 0x100ec278 targets 0x100ec124 and is always taken.
  The `beq` branch at 0x100ec29c targets 0x100ec240 and is always taken.
  The return at 0x100ec144 has v0 = ?.
- `glxRemoveDeepWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100effd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100effd0-0x100f00b0 (224 bytes).
  It occupies 224 bytes.
  The `lw` at 0x100effd0 loads 4 bytes from a0 (arg0 at entry) +0x84.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x100effd8, `lw` at 0x100f007c.
  The `lw` at 0x100effdc loads 4 bytes from sym(glxScreenPrivateIndex) +0x0.
  The `lw` at 0x100effe4 loads 4 bytes from [a0+16] +0x1b4.
  The `lw` at 0x100efff8 loads 4 bytes from ([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2)) +0x0.
  The `lw` at 0x100efffc loads 4 bytes from sym(glxWindowPrivateIndex) +0x0.
  The `lw` at 0x100f0000 loads 4 bytes from [([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))] +0x78.
  The `lw` at 0x100f0010 loads 4 bytes from ([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2)) +0x0.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0x100f001c, `lw` at 0x100f0038, `lw` at 0x100f003c.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0x100f0048, `sw` at 0x100f005c, `sw` at 0x100f0064.
  The `lw` at 0x100f006c loads 4 bytes from [([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))] +0x1c.
  The `lw` at 0x100f0080 loads 4 bytes from [a0+16] +0x188.
  The `sw` at 0x100f00a4 stores 4 bytes to [([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))] +0x78.
  The `jalr` at 0x100f0070 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=[([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))], a5=([sym(glxScreenPrivateIndex)] << 0x2).
  Calls (unknown callee) via register with a0=?, a1=?, a2=?, a3=? (`jr` at 0x100f0090).
  The `beq` branch at 0x100f000c targets 0x100f0098, is taken when s0(=[[([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))]+120]) == 0, and falls through when s0(=[[([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))]+120]) != 0.
  The `beq` branch at 0x100f0014 targets 0x100f0030, is taken when a2(=[([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))]) == s0(=[[([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))]+120]), and falls through when a2(=[([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))]) != s0(=[[([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))]+120]).
  The `beq` branch at 0x100f0020 targets 0x100f0098, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x100f0028 targets 0x100f001c, is taken when a2(=[([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))]) != s0(?), and falls through when a2(=[([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))]) == s0(?).
  The `beq` branch at 0x100f0030 targets 0x100f0098, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x100f0040 targets 0x100f0050, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x100f0054 targets 0x100f00a4, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x100f00a8 targets 0x100f0064 and is always taken.
  The return at 0x100f009c has v0 = ?.
- `ProcDisplayImageBuffers..BKC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100f1450 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100f1450-0x100f1774 (804 bytes).
  It occupies 804 bytes.
  The `lw` at 0x100f1454 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x100f147c loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lhu` at 0x100f1480 loads 2 bytes from [a0+8] +0x2.
  The `lhu` at 0x100f14ac loads 2 bytes from [a0+8] +0x4.
  8 such `lw` accesses load 4 bytes from ?, including `lw` at 0x100f1518, `lw` at 0x100f1570, `lw` at 0x100f1590.
  The `lw` at 0x100f1530 loads 4 bytes from ret(SecurityLookupIDByType) +0x84.
  The `lw` at 0x100f1544 loads 4 bytes from ([ret(SecurityLookupIDByType)+132] + ([0x102cc3a8] << 0x2)) +0x0.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x100f1548, `sw` at 0x100f159c.
  The `lw` at 0x100f154c loads 4 bytes from [([ret(SecurityLookupIDByType)+132] + ([0x102cc3a8] << 0x2))] +0x4.
  The `lw` at 0x100f1550 loads 4 bytes from [([ret(SecurityLookupIDByType)+132] + ([0x102cc3a8] << 0x2))] +0x18.
  The `lw` at 0x100f1554 loads 4 bytes from [([ret(SecurityLookupIDByType)+132] + ([0x102cc3a8] << 0x2))] +0x14.
  The `lw` at 0x100f1558 loads 4 bytes from [([ret(SecurityLookupIDByType)+132] + ([0x102cc3a8] << 0x2))] +0x1c.
  The `lw` at 0x100f157c loads 4 bytes from [[([ret(SecurityLookupIDByType)+132] + ([0x102cc3a8] << 0x2))]+28] +0x14.
  The `ld` at 0x100f1658 loads 8 bytes from sym(currentTime) +0x0.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x18, including `sw` at 0x100f16ec, `sw` at 0x100f1724, `sw` at 0x100f1754.
  The `jal` at 0x100f1520 calls SecurityLookupIDByType [0x100d6140] with a0=0x0, a1=?, a2=[0x102ca7ec], a3=0x0.
  The `jal` at 0x100f1648 calls UpdateCurrentTime [0x10064a10] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100f16a8 calls QueueDisplayRequest..IMC [0x101eb640] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=[sym(currentTime)]:8.
  The `jal` at 0x100f16c0 calls PerformDisplayRequest..HMC [0x100fbaa0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=[[a0+8]+2]:2-2.
  The `bne` branch at 0x100f1478 targets 0x100f170c, is taken when at(=[a0+72]) < 0x2 (unsigned), and falls through when at(=[a0+72]) >= 0x2 (unsigned).
  The `beq` branch at 0x100f1490 targets 0x100f1734, is taken when v1(=[[a0+8]+2]:2) == a3(=0x2), and falls through when v1(=[[a0+8]+2]:2) != a3(=0x2).
  The `beq` branch at 0x100f14c4 targets 0x100f1724, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x100f14cc targets 0x100f1724, is taken when sp(?) == 0, and falls through when sp(?) != 0.
  The `blez` branch at 0x100f14f0 targets 0x100f1648, is taken when s3(=[[a0+8]+2]:2-2) <= 0 (signed), and falls through when s3(=[[a0+8]+2]:2-2) > 0 (signed).
  The `beq` branch at 0x100f1528 targets 0x100f173c, is taken when v0(=ret(SecurityLookupIDByType)) == 0, and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  The `blez` branch at 0x100f155c targets 0x100f1594, is taken when t2(=[[([ret(SecurityLookupIDByType)+132] + ([0x102cc3a8] << 0x2))]+4]) <= 0 (signed), and falls through when t2(=[[([ret(SecurityLookupIDByType)+132] + ([0x102cc3a8] << 0x2))]+4]) > 0 (signed).
  The `beq` branch at 0x100f1580 targets 0x100f1598, is taken when t2(?) == a7(?), and falls through when t2(?) != a7(?).
  The `bnel` branch at 0x100f158c targets 0x100f1580, is taken when v0(?) != t0(?), and falls through when v0(?) == t0(?); its branch-likely delay slot `lw t2,20(v0)` at 0x100f1590 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x100f1598 targets 0x100f1758, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `blez` branch at 0x100f15a0 targets 0x100f15c0, is taken when s2(?) <= 0 (signed), and falls through when s2(?) > 0 (signed).
  The `beq` branch at 0x100f15b0 targets 0x100f16d8, is taken when t8(?) == a6(=[([ret(SecurityLookupIDByType)+132] + ([0x102cc3a8] << 0x2))]), and falls through when t8(?) != a6(=[([ret(SecurityLookupIDByType)+132] + ([0x102cc3a8] << 0x2))]).
  The `bnel` branch at 0x100f15b8 targets 0x100f15b0, is taken when v0(?) != s0(?), and falls through when v0(?) == s0(?); its branch-likely delay slot `lw t8,0(v0)` at 0x100f15bc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x100f15e8 targets 0x100f15f8, is taken when a3(?) >= t3(=[[([ret(SecurityLookupIDByType)+132] + ([0x102cc3a8] << 0x2))]+24]) (unsigned), and falls through when a3(?) < t3(=[[([ret(SecurityLookupIDByType)+132] + ([0x102cc3a8] << 0x2))]+24]) (unsigned).
  The `bne` branch at 0x100f1618 targets 0x100f1640, is taken when t2(?) < a6(?) (unsigned), and falls through when t2(?) >= a6(?) (unsigned).
  The `bne` branch at 0x100f1620 targets 0x100f1638, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bne` branch at 0x100f1628 targets 0x100f1640, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `beq` branch at 0x100f1630 targets 0x100f1640, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x100f1640 targets 0x100f1510, is taken when s2(?) != s3(=[[a0+8]+2]:2-2), and falls through when s2(?) == s3(=[[a0+8]+2]:2-2).
  The `bne` branch at 0x100f166c targets 0x100f16b4, is taken when a3(?) < v0(?) (unsigned), and falls through when a3(?) >= v0(?) (unsigned).
  The `bne` branch at 0x100f1678 targets 0x100f16a4, is taken when v0(?) < a3(?) (unsigned), and falls through when v0(?) >= a3(?) (unsigned).
  The `bne` branch at 0x100f1690 targets 0x100f16b8, is taken when v0(?) < a3(?) (unsigned), and falls through when v0(?) >= a3(?) (unsigned).
  The `beq` branch at 0x100f169c targets 0x100f16b8, is taken when a3(?) >= v0(?) (unsigned), and falls through when a3(?) < v0(?) (unsigned).
  The `bne` branch at 0x100f16b0 targets 0x100f16c8, is taken when v0(=ret(QueueDisplayRequest..IMC)) != 0, and falls through when v0(=ret(QueueDisplayRequest..IMC)) == 0.
  The `beq` branch at 0x100f16d0 targets 0x100f16f0 and is always taken.
  The `beq` branch at 0x100f172c targets 0x100f16f0 and is always taken.
  The `beq` branch at 0x100f1734 targets 0x100f16f0 and is always taken.
  The `beq` branch at 0x100f1750 targets 0x100f16f0 and is always taken.
  The `beq` branch at 0x100f176c targets 0x100f16f0 and is always taken.
  The return at 0x100f1704 has v0 = one of 0x0, 0x8, 0xb, [0x102ca7e8].
  The return at 0x100f171c has v0 = 0x10.
- `SProcClearImageBufferArea..LLC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100fba10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100fba10-0x100fbaa0 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0x100fba10 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lbu` at 0x100fba14 loads 1 byte from [a0+8] +0x3.
  The `lbu` at 0x100fba18 loads 1 byte from [a0+8] +0x2.
  The `sb` at 0x100fba1c stores 1 byte to [a0+8] +0x3.
  The `sb` at 0x100fba20 stores 1 byte to [a0+8] +0x2.
  The `lw` at 0x100fba24 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lbu` at 0x100fba3c loads 1 byte from [a0+8] +0xe.
  The `lbu` at 0x100fba40 loads 1 byte from [a0+8] +0xf.
  The `lbu` at 0x100fba44 loads 1 byte from [a0+8] +0xc.
  The `lbu` at 0x100fba48 loads 1 byte from [a0+8] +0xd.
  The `lbu` at 0x100fba4c loads 1 byte from [a0+8] +0xa.
  The `lbu` at 0x100fba50 loads 1 byte from [a0+8] +0xb.
  The `lbu` at 0x100fba54 loads 1 byte from [a0+8] +0x8.
  The `lbu` at 0x100fba58 loads 1 byte from [a0+8] +0x9.
  The `lbu` at 0x100fba5c loads 1 byte from [a0+8] +0x5.
  The `lbu` at 0x100fba60 loads 1 byte from [a0+8] +0x6.
  The `lbu` at 0x100fba64 loads 1 byte from [a0+8] +0x4.
  The `lbu` at 0x100fba68 loads 1 byte from [a0+8] +0x7.
  The `sb` at 0x100fba6c stores 1 byte to [a0+8] +0x4.
  The `sb` at 0x100fba70 stores 1 byte to [a0+8] +0x7.
  The `sb` at 0x100fba74 stores 1 byte to [a0+8] +0x5.
  The `sb` at 0x100fba78 stores 1 byte to [a0+8] +0x6.
  The `sb` at 0x100fba7c stores 1 byte to [a0+8] +0x8.
  The `sb` at 0x100fba80 stores 1 byte to [a0+8] +0x9.
  The `sb` at 0x100fba84 stores 1 byte to [a0+8] +0xa.
  The `sb` at 0x100fba88 stores 1 byte to [a0+8] +0xb.
  The `sb` at 0x100fba8c stores 1 byte to [a0+8] +0xc.
  The `sb` at 0x100fba90 stores 1 byte to [a0+8] +0xd.
  The `sb` at 0x100fba94 stores 1 byte to [a0+8] +0xe.
  The `sb` at 0x100fba9c stores 1 byte to [a0+8] +0xf.
  Calls ProcClearImageBufferArea..IKC [0x10135d60] via direct with a0=a0 at entry (arg0), a1=[[a0+8]+3]:1, a2=[a0+8], a3=[[a0+8]+14]:1, a4=[[a0+8]+15]:1, a5=[[a0+8]+12]:1, a6=[[a0+8]+13]:1, a7=[[a0+8]+10]:1 (`j` at 0x100fba98).
  The `beq` branch at 0x100fba2c targets 0x100fba3c, is taken when at(=[a0+72]) == v0(=0x5), and falls through when at(=[a0+72]) != v0(=0x5).
  The return at 0x100fba34 has v0 = 0x10.
- `RemoveXineramaRegion..FAE` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100fe310 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100fe310-0x100fe3dc (204 bytes).
  It occupies 204 bytes.
  The `lw` at 0x100fe318 loads 4 bytes from [0x102ca984] +0x4.
  The `lw` at 0x100fe320 loads 4 bytes from [0x102ca984] +0x8.
  The `lw` at 0x100fe338 loads 4 bytes from [[0x102ca984]+8] +0x4.
  6 such `lw` accesses load 4 bytes from ?, including `lw` at 0x100fe348, `lw` at 0x100fe354, `lw` at 0x100fe364.
  The `sw` at 0x100fe394 stores 4 bytes to ?.
  The `jal` at 0x100fe398 calls Xfree [0x101fc9c0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100fe3a4 calls Xfree [0x101fc9c0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100fe3c4 calls Xfree [0x101fc9c0] with a0=[0x102ca984], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[[0x102ca984]+8], a4=[0x102ca984].
  The `beq` branch at 0x100fe328 targets 0x100fe3bc, is taken when at(=[[0x102ca984]+4]) == a0, and falls through when at(=[[0x102ca984]+4]) != a0.
  The `beq` branch at 0x100fe330 targets 0x100fe37c, is taken when a3(=[[0x102ca984]+8]) == 0, and falls through when a3(=[[0x102ca984]+8]) != 0.
  The `beq` branch at 0x100fe33c targets 0x100fe37c, is taken when v1(=[[[0x102ca984]+8]+4]) == a0, and falls through when v1(=[[[0x102ca984]+8]+4]) != a0.
  The `beq` branch at 0x100fe34c targets 0x100fe37c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x100fe358 targets 0x100fe37c, is taken when a1(?) == a0, and falls through when a1(?) != a0.
  The `beq` branch at 0x100fe368 targets 0x100fe37c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x100fe374 targets 0x100fe344, is taken when a2(?) != a0, and falls through when a2(?) == a0.
  The `bne` branch at 0x100fe37c targets 0x100fe38c, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The return at 0x100fe384 has v0 = 0xe.
  The return at 0x100fe3b4 has v0 = 0x0.
  The return at 0x100fe3d4 has v0 = 0x0.
- `ShmRegisterFbFuncs` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100ff280 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100ff280-0x100ff2a4 (36 bytes).
  It occupies 36 bytes.
  The `lw` at 0x100ff280 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0x100ff2a0 stores 4 bytes to table(0x102caa00) +0x0.
  The return at 0x100ff29c has v0 = 0x102cf350.
- `SendEventToAllWindows` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10100ba0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10100ba0-0x10100ca8 (264 bytes).
  It occupies 264 bytes.
  2 such `lw` accesses load 4 bytes from sym(screenInfo) +0x44, including `lw` at 0x10100bb8, `lw` at 0x10100c64.
  The `lw` at 0x10100bf0 loads 4 bytes from sym(WindowTable) +0x0.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10100c00, `lw` at 0x10100c18, `lw` at 0x10100c40.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x4c, including `lbu` at 0x10100c0c, `lbu` at 0x10100c2c.
  The `jal` at 0x10100c10 calls DeliverEventsToWindow [0x10184890] with a0=?, a1=a2 at entry (arg2), a2=0x1, a3=a1 at entry (arg1), a4=0x0, a5=[a0+76]:1.
  The `jal` at 0x10100c3c calls DeliverEventsToWindow [0x10184890] with a0=?, a1=a2 at entry (arg2), a2=0x1, a3=a1 at entry (arg1), a4=0x0, a5=[a0+76]:1.
  The `jal` at 0x10100c50 calls FindInterestedChildren [0x10275be0] with a0=a0 at entry (arg0), a1=?, a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `blez` branch at 0x10100bd4 targets 0x10100c88, is taken when at(=[sym(screenInfo)+68]) <= 0 (signed), and falls through when at(=[sym(screenInfo)+68]) > 0 (signed).
  The `beq` branch at 0x10100c1c targets 0x10100c64, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x10100c5c targets 0x10100c28, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `bne` branch at 0x10100c70 targets 0x10100bf0, is taken when s6(?) < t9(=[sym(screenInfo)+68]) (signed), and falls through when s6(?) >= t9(=[sym(screenInfo)+68]) (signed).
  The return at 0x10100ca0 has v0 = ?.
- `glxMiFreeDeepWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10106040 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10106040-0x10106408 (968 bytes).
  It occupies 968 bytes.
  2 such `lw` accesses load 4 bytes from sym(glxWindowPrivateIndex) +0x0, including `lw` at 0x10106054, `lw` at 0x10106154.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x84, including `lw` at 0x10106058, `lw` at 0x10106150.
  2 such `lw` accesses load 4 bytes from ([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2)) +0x0, including `lw` at 0x10106064, `lw` at 0x1010618c.
  The `lw` at 0x10106068 loads 4 bytes from [([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))] +0x54.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x10106078, `lw` at 0x10106160.
  The `lw` at 0x10106080 loads 4 bytes from [[([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))]+84] +0xc.
  The `lw` at 0x10106084 loads 4 bytes from [[([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))]+84] +0x8.
  The `lw` at 0x101060a0 loads 4 bytes from [[([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))]+84] +0x4.
  The `lw` at 0x101060a8 loads 4 bytes from [[[([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))]+84]+4] +0x8.
  The `lw` at 0x101060bc loads 4 bytes from [[[[([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))]+84]+4]+8] +0x4.
  4 such `lh` accesses load 2 bytes from ?, including `lh` at 0x10106148, `lh` at 0x10106158, `lh` at 0x1010616c.
  The `lw` at 0x10106164 loads 4 bytes from sym(glxScreenPrivateIndex) +0x0.
  The `lw` at 0x10106168 loads 4 bytes from [a0+16] +0x1b4.
  The `lw` at 0x10106184 loads 4 bytes from ([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2)) +0x0.
  The `lw` at 0x10106190 loads 4 bytes from [([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))] +0x80.
  17 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10106230, `lw` at 0x1010623c, `lw` at 0x1010624c.
  8 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1010627c, `sw` at 0x101062b4, `sw` at 0x101062d4.
  2 such `lw` accesses load 4 bytes from [([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))] +0x4, including `lw` at 0x101062a0, `lw` at 0x10106404.
  2 such `lw` accesses load 4 bytes from [([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))] +0x30, including `lw` at 0x101062c4, `lw` at 0x10106358.
  The `jal` at 0x10106284 calls free [0x1016b9e0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x101062c8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=0x1.
  The `jalr` at 0x1010635c calls (unknown callee) with a0=?, a1=?, a2=?, a3=0x1.
  The `jalr` at 0x101063a0 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x101063ac calls Xfree [0x101fc9c0] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10106074 targets 0x101063d4, is taken when a2(=[[([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))]+84]) == 0, and falls through when a2(=[[([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))]+84]) != 0.
  The `beq` branch at 0x101060b4 targets 0x101063e4, is taken when a7(=[[[[([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))]+84]+4]+8]) == 0, and falls through when a7(=[[[[([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))]+84]+4]+8]) != 0.
  The `blez` branch at 0x101060c0 targets 0x10106380, is taken when a2(=[[[[[([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))]+84]+4]+8]+4]) <= 0 (signed), and falls through when a2(=[[[[[([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))]+84]+4]+8]+4]) > 0 (signed).
  The `beq` branch at 0x10106124 targets 0x10106144 and is always taken.
  The `beq` branch at 0x1010613c targets 0x10106374, is taken when t1(?) == t2(?), and falls through when t1(?) != t2(?).
  The `beq` branch at 0x10106194 targets 0x10106130, is taken when a4(?) >= a5(?) (signed), and falls through when a4(?) < a5(?) (signed).
  The `beq` branch at 0x101061a0 targets 0x10106134, is taken when a3(?) >= a2(?) (signed), and falls through when a3(?) < a2(?) (signed).
  The `beq` branch at 0x101061d0 targets 0x10106200 and is always taken.
  The `beq` branch at 0x101061f8 targets 0x10106130, is taken when a1(?) == a2(?), and falls through when a1(?) != a2(?).
  The `beq` branch at 0x10106204 targets 0x10106224 and is always taken.
  The `beq` branch at 0x1010621c targets 0x101061e0, is taken when a5(?) == a6(?), and falls through when a5(?) != a6(?).
  The `beq` branch at 0x10106254 targets 0x10106210, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x10106264 targets 0x10106400 and is always taken.
  The `beq` branch at 0x10106278 targets 0x10106344, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x10106298 targets 0x10106210, is taken when s0(?) == s5(?), and falls through when s0(?) != s5(?).
  The `beq` branch at 0x101062a4 targets 0x101062d8, is taken when t9(=[[([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))]+4]) == 0, and falls through when t9(=[[([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))]+4]) != 0.
  The `beq` branch at 0x101062b0 targets 0x1010633c, is taken when ra(?) == s6(=0x2), and falls through when ra(?) != s6(=0x2).
  The `beq` branch at 0x101062bc targets 0x1010628c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x101062d0 targets 0x1010628c and is always taken.
  The `beq` branch at 0x101062dc targets 0x10106270, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x101062e8 targets 0x10106270, is taken when v0(?) == s7(=a0), and falls through when v0(?) != s7(=a0).
  The `beq` branch at 0x101062f8 targets 0x10106328, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x10106304 targets 0x10106328, is taken when v1(?) == s7(=a0), and falls through when v1(?) != s7(=a0).
  The `beq` branch at 0x10106314 targets 0x10106328, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `bne` branch at 0x10106320 targets 0x101062f0, is taken when a0(?) != s7(=a0), and falls through when a0(?) == s7(=a0).
  The `beq` branch at 0x10106328 targets 0x10106270, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x10106334 targets 0x10106280 and is always taken.
  The `beq` branch at 0x1010633c targets 0x101062b8 and is always taken.
  The `beq` branch at 0x10106344 targets 0x1010636c, is taken when a2(?) == a3(=0x1), and falls through when a2(?) != a3(=0x1).
  The `beq` branch at 0x10106350 targets 0x10106284, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x10106364 targets 0x10106280 and is always taken.
  The `beq` branch at 0x1010636c targets 0x1010634c and is always taken.
  The `beq` branch at 0x101063ec targets 0x101060c8 and is always taken.
  The `beq` branch at 0x10106400 targets 0x101062a4 and is always taken.
  The return at 0x101063cc has v0 = ret(Xfree).
  The return at 0x101063dc has v0 = ?.
  The instructions from 0x1010612c to 0x1010612c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x101061d8 to 0x101061dc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1010620c to 0x1010620c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1010626c to 0x1010626c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x101063f4 to 0x101063fc are not reached by any path from the entry, and their branches are not listed.
- `ProcUnmapWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10108cb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10108cb0-0x10108d3c (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0x10108cb0 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x10108ce4 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x10108cf4 loads 4 bytes from [a0+8] +0x4.
  The `lw` at 0x10108d30 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `jal` at 0x10108cf0 calls SecurityLookupWindow [0x1006ce40] with a0=[[a0+8]+4], a1=a0 at entry (arg0), a2=0x1, a3=a3 at entry (arg3).
  The `jal` at 0x10108d1c calls UnmapWindow [0x101eef00] with a0=ret(SecurityLookupWindow), a1=0x0, a2=?, a3=?, a4=0x3.
  The `beq` branch at 0x10108ccc targets 0x10108ce0, is taken when v1(=[a0+72]) == a0(=0x2), and falls through when v1(=[a0+72]) != a0(=0x2).
  The `bne` branch at 0x10108cfc targets 0x10108d14, is taken when v0(=ret(SecurityLookupWindow)) != 0, and falls through when v0(=ret(SecurityLookupWindow)) == 0.
  The return at 0x10108cd8 has v0 = 0x10.
  The return at 0x10108d0c has v0 = 0x3.
  The return at 0x10108d34 has v0 = [a0+40].
- `dbcSwapBuffers` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1010bea0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1010bea0-0x1010c168 (712 bytes).
  It occupies 712 bytes.
  The `lw` at 0x1010bebc loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lw` at 0x1010bed0 loads 4 bytes from [a2] +0x10.
  The `lw` at 0x1010bee8 loads 4 bytes from [[a2]+16] +0x74.
  The `lw` at 0x1010bf10 loads 4 bytes from sym(dbcWindowPrivateIndex) +0x0.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1010bf30, `lw` at 0x1010bf34, `lw` at 0x1010bf44.
  The `lbu` at 0x1010bf3c loads 1 byte from ?.
  The `sb` at 0x1010bf40 stores 1 byte to ?.
  The `sw` at 0x1010bf5c stores 4 bytes to ?.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x1010bf68, `lw` at 0x1010bfc0.
  The `sw` at 0x1010bf74 stores 4 bytes to ret(Xalloc) +0x0.
  The `sw` at 0x1010bf90 stores 4 bytes to ret(Xalloc) +0x8.
  The `sw` at 0x1010bf94 stores 4 bytes to ret(Xalloc) +0x4.
  The `sw` at 0x1010bf9c stores 4 bytes to ret(Xalloc) +0x14.
  2 such `sw` accesses store 4 bytes to ret(Xalloc) +0xc, including `sw` at 0x1010bfa8, `sw` at 0x1010bfb4.
  The `sw` at 0x1010bfb0 stores 4 bytes to [0x102ca8cc] +0x10.
  The `sw` at 0x1010bfbc stores 4 bytes to ret(Xalloc) +0x10.
  The `lw` at 0x1010bfc4 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0x1010bfd0 loads 4 bytes from [a0+12] +0x0.
  The `lw` at 0x1010bfd8 loads 4 bytes from table(0x102c61a0) +0x0.
  The `sw` at 0x1010c004 stores 4 bytes to entry(0x102c61a0) +0xc.
  The `lw` at 0x1010c04c loads 4 bytes from sym(GrabInProgress) +0x0.
  The `lw` at 0x1010c064 loads 4 bytes from table(0x102c66d0) +0x0.
  2 such `lw` accesses load 4 bytes from table(0x102c66f0) +0x0, including `lw` at 0x1010c078, `lw` at 0x1010c078.
  The `lw` at 0x1010c07c loads 4 bytes from table(0x102c6710) +0x0.
  2 such `lw` accesses load 4 bytes from table(0x102c6788) +0x0, including `lw` at 0x1010c080, `lw` at 0x1010c0f8.
  The `lw` at 0x1010c090 loads 4 bytes from table(0x102c66b0) +0x0.
  4 such `sw` accesses store 4 bytes to table(0x102c6788) +0x0, including `sw` at 0x1010c09c, `sw` at 0x1010c0e8, `sw` at 0x1010c114.
  The `sw` at 0x1010c0a4 stores 4 bytes to table(0x102c66d0) +0x0.
  The `sw` at 0x1010c0ac stores 4 bytes to table(0x102c6710) +0x0.
  The `sw` at 0x1010c0b4 stores 4 bytes to table(0x102c66f0) +0x0.
  The `sw` at 0x1010c0bc stores 4 bytes to table(0x102c66b0) +0x0.
  The `lw` at 0x1010c0ec loads 4 bytes from table(0x102c6808) +0x0.
  The `lw` at 0x1010c0f0 loads 4 bytes from table(0x102c67c8) +0x0.
  The `lw` at 0x1010c108 loads 4 bytes from table(0x102c67e8) +0x0.
  The `sw` at 0x1010c11c stores 4 bytes to table(0x102c6808) +0x0.
  The `sw` at 0x1010c120 stores 4 bytes to table(0x102c67c8) +0x0.
  The `sw` at 0x1010c128 stores 4 bytes to table(0x102c67e8) +0x0.
  The `jal` at 0x1010bef0 calls Xalloc [0x1020aeb0] with a0=(a1 << 0x2)+24, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1010bf64 calls FakeClientID [0x10069920] with a0=[a0], a1=?, a2=?, a3=?.
  The `jal` at 0x1010bf7c calls AddResource [0x1010ec30] with a0=ret(FakeClientID), a1=[0x102ca8c4], a2=ret(Xalloc), a3=?.
  The `jalr` at 0x1010c014 calls (unknown callee) with a0=a2 at entry (arg2), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x1010c130 calls Xfree [0x101fc9c0] with a0=ret(Xalloc), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1010befc targets 0x1010c0c0, is taken when v0(=ret(Xalloc)) == 0, and falls through when v0(=ret(Xalloc)) != 0.
  The `blez` branch at 0x1010bf04 targets 0x1010bf64, is taken when s1(=a1) <= 0 (signed), and falls through when s1(=a1) > 0 (signed).
  The `bne` branch at 0x1010bf58 targets 0x1010bf30, is taken when a3(?) != t1(=(a1 + a3)), and falls through when a3(?) == t1(=(a1 + a3)).
  The `beq` branch at 0x1010bf84 targets 0x1010c12c, is taken when v0(=ret(AddResource)) == 0, and falls through when v0(=ret(AddResource)) != 0.
  The `bne` branch at 0x1010bf98 targets 0x1010bfac, is taken when a0(=[0x102ca8c8]) != 0, and falls through when a0(=[0x102ca8c8]) == 0.
  The `beq` branch at 0x1010bfa4 targets 0x1010bfb8 and is always taken.
  The `beq` branch at 0x1010bff4 targets 0x1010c03c, is taken when v0(=entry(0x102c61a0)) == 0, and falls through when v0(=entry(0x102c61a0)) != 0.
  The `beq` branch at 0x1010c068 targets 0x1010c078, is taken when ra(=[sym(GrabInProgress)]) == 0, and falls through when ra(=[sym(GrabInProgress)]) != 0.
  The `beq` branch at 0x1010c074 targets 0x1010c0ec, is taken when (a2(?) & a3(=entry(0x102c66d0))) == 0, and falls through when (a2(?) & a3(=entry(0x102c66d0))) != 0.
  The `beq` branch at 0x1010c094 targets 0x1010c0e4, is taken when (a2(?) & a1(=entry(0x102c6710))) == 0, and falls through when (a2(?) & a1(=entry(0x102c6710))) != 0.
  The `beq` branch at 0x1010c0b8 targets 0x1010c008 and is always taken.
  The `beq` branch at 0x1010c0e4 targets 0x1010c0a0 and is always taken.
  The `beq` branch at 0x1010c10c targets 0x1010c15c, is taken when (a2(?) & a1(=entry(0x102c6808))) == 0, and falls through when (a2(?) & a1(=entry(0x102c6808))) != 0.
  The `beq` branch at 0x1010c124 targets 0x1010c008 and is always taken.
  The `beq` branch at 0x1010c160 targets 0x1010c118 and is always taken.
  The return at 0x1010c034 has v0 = 0x0.
  The return at 0x1010c0dc has v0 = 0xb.
  The return at 0x1010c154 has v0 = 0xb.
- `XkbApplyLedMapChanges` in `usr/gfx/arch/GENERIC/Xsgi` at 0x101123b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x101123b0-0x10112844 (1172 bytes).
  It occupies 1172 bytes.
  The `lw` at 0x101123f8 loads 4 bytes from a0 (arg0 at entry) +0x90.
  The `lw` at 0x10112404 loads 4 bytes from [a0+144] +0x158.
  The `lhu` at 0x10112418 loads 2 bytes from a3 (arg3 at entry) +0xa.
  The `lhu` at 0x10112420 loads 2 bytes from a3 (arg3 at entry) +0xc.
  The `lhu` at 0x10112428 loads 2 bytes from a3 (arg3 at entry) +0xe.
  2 such `lhu` accesses load 2 bytes from a1 (arg1 at entry) +0x2, including `lhu` at 0x1011242c, `lhu` at 0x101126e0.
  2 such `lhu` accesses load 2 bytes from a1 (arg1 at entry) +0x4, including `lhu` at 0x10112434, `lhu` at 0x101126e8.
  2 such `lhu` accesses load 2 bytes from a1 (arg1 at entry) +0x0, including `lhu` at 0x10112444, `lhu` at 0x10112468.
  8 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1011245c, `lw` at 0x101124d4, `lw` at 0x101124dc.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10112464, `sw` at 0x10112704, `sw` at 0x10112728.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x2c, including `lw` at 0x1011247c, `lw` at 0x10112514, `lw` at 0x10112670.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x30, including `lw` at 0x10112480, `lw` at 0x10112540, `lw` at 0x10112688.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x34, including `lw` at 0x10112484, `lw` at 0x10112554, `lw` at 0x1011269c.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x38, including `lw` at 0x10112488, `lw` at 0x10112568, `lw` at 0x101126b0.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x3c, including `lw` at 0x1011248c, `lw` at 0x1011257c, `lw` at 0x101126c4.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x1c, including `lw` at 0x10112490, `lw` at 0x10112500, `lw` at 0x101126f4.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x40, including `lw` at 0x10112498, `lw` at 0x10112594.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x1c, including `sw` at 0x101124a0, `sw` at 0x10112508.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x40, including `sw` at 0x101124a8, `sw` at 0x1011259c.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x3c, including `sw` at 0x101124b0, `sw` at 0x10112584.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x38, including `sw` at 0x101124b8, `sw` at 0x10112570.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x34, including `sw` at 0x101124c0, `sw` at 0x1011255c.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x30, including `sw` at 0x101124c8, `sw` at 0x10112548.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x2c, including `sw` at 0x101124d0, `sw` at 0x10112534.
  The `lw` at 0x101124e0 loads 4 bytes from a1 (arg1 at entry) +0x24.
  8 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1011250c, `lbu` at 0x10112510, `lbu` at 0x101125a4.
  2 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x101125a0, `lhu` at 0x101126d4.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x101125b0, `sb` at 0x1011261c.
  6 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x44, including `sw` at 0x1011267c, `sw` at 0x10112680, `sw` at 0x10112698.
  4 such `sh` accesses store 2 bytes to ?, including `sh` at 0x101126dc, `sh` at 0x101126e4, `sh` at 0x101126ec.
  The `lw` at 0x101126f0 loads 4 bytes from a1 (arg1 at entry) +0x20.
  The `lw` at 0x10112710 loads 4 bytes from a1 (arg1 at entry) +0x18.
  2 such `lw` accesses load 4 bytes from sym(inputInfo) +0xc, including `lw` at 0x10112798, `lw` at 0x10112800.
  The `jal` at 0x10112724 calls XkbUpdateLedAutoState [0x1013e4b0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?, a6=[a1+44], a7=[a1+48].
  The `jal` at 0x1011275c calls XkbFlushLedEvents [0x1012d350] with a0=a0 at entry (arg0), a1=?, a2=a1 at entry (arg1), a3=?.
  The `jal` at 0x101127ec calls XkbFlushLedEvents [0x1012d350] with a0=a0 at entry (arg0), a1=?, a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `beq` branch at 0x101123f0 targets 0x10112764, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0x101123fc targets 0x10112798, is taken when a0(=[a0+144]) == 0, and falls through when a0(=[a0+144]) != 0.
  The `beq` branch at 0x10112408 targets 0x10112794, is taken when at(=[[a0+144]+344]) == 0, and falls through when at(=[[a0+144]+344]) != 0.
  The `beq` branch at 0x10112410 targets 0x101127a4, is taken when a3 == 0, and falls through when a3 != 0.
  The `beq` branch at 0x10112424 targets 0x1011243c, is taken when (v1(=[a3+10]:2) & 0x1c) == 0, and falls through when (v1(=[a3+10]:2) & 0x1c) != 0.
  The `bne` branch at 0x10112430 targets 0x101127d8, is taken when a0(=[a1+2]:2) != a1(=[a3+12]:2), and falls through when a0(=[a1+2]:2) == a1(=[a3+12]:2).
  The `bne` branch at 0x10112438 targets 0x101127d8, is taken when a0(=[a1+4]:2) != a2(=[a3+14]:2), and falls through when a0(=[a1+4]:2) == a2(=[a3+14]:2).
  The `bne` branch at 0x10112440 targets 0x1011246c, is taken when s5(=a0) != a3(?), and falls through when s5(=a0) == a3(?).
  The `beq` branch at 0x1011244c targets 0x10112470, is taken when (a0(=[a1]:2) & 0x1) == 0, and falls through when (a0(=[a1]:2) & 0x1) != 0.
  The `beq` branch at 0x10112454 targets 0x10112814, is taken when s7(=a4) == 0, and falls through when s7(=a4) != 0.
  The `beq` branch at 0x10112474 targets 0x101127fc, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x101124f0 targets 0x1011262c and is always taken.
  The `beq` branch at 0x1011252c targets 0x10112538, is taken when (t0(?) & 0x1) == 0, and falls through when (t0(?) & 0x1) != 0.
  The `beq` branch at 0x10112538 targets 0x1011254c, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x1011254c targets 0x10112560, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x10112560 targets 0x10112574, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x10112574 targets 0x10112588, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x1011258c targets 0x101125a0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x101125b4 targets 0x10112620, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x101125d4 targets 0x101125ec, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x101125ec targets 0x10112604, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x10112610 targets 0x101125d0, is taken when a7(?) != s1(=0x10), and falls through when a7(?) == s1(=0x10).
  The `beq` branch at 0x10112624 targets 0x10112670, is taken when s2(?) == a2(=0x20), and falls through when s2(?) != a2(=0x20).
  The `beq` branch at 0x10112634 targets 0x10112620, is taken when (s4(=a2) & t8(?)) == 0, and falls through when (s4(=a2) & t8(?)) != 0.
  The `bne` branch at 0x10112640 targets 0x10112500, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `bne` branch at 0x10112650 targets 0x10112500, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bne` branch at 0x10112658 targets 0x10112500, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `bne` branch at 0x10112660 targets 0x10112500, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x10112668 targets 0x10112624 and is always taken.
  The `beq` branch at 0x10112678 targets 0x10112688, is taken when a6(=[a1+44]) == 0, and falls through when a6(=[a1+44]) != 0.
  The `beq` branch at 0x1011268c targets 0x1011269c, is taken when a7(=[a1+48]) == 0, and falls through when a7(=[a1+48]) != 0.
  The `beq` branch at 0x101126a0 targets 0x101126b0, is taken when t0(=[a1+52]) == 0, and falls through when t0(=[a1+52]) != 0.
  The `beq` branch at 0x101126b4 targets 0x101126c4, is taken when t1(=[a1+56]) == 0, and falls through when t1(=[a1+56]) != 0.
  The `beq` branch at 0x101126c8 targets 0x101126d4, is taken when t2(=[a1+60]) == 0, and falls through when t2(=[a1+60]) != 0.
  The `beq` branch at 0x10112730 targets 0x101127bc, is taken when s7(?) == a1(=sp-224), and falls through when s7(?) != a1(=sp-224).
  The `bne` branch at 0x10112738 targets 0x10112764, is taken when s6(?) != sp(=sp-256), and falls through when s6(?) == sp(=sp-256).
  The `beq` branch at 0x10112740 targets 0x10112768, is taken when s6(?) == 0, and falls through when s6(?) != 0.
  The `bne` branch at 0x1011279c targets 0x10112418, is taken when s6(=a3) != 0, and falls through when s6(=a3) == 0.
  The `beq` branch at 0x101127b4 targets 0x1011243c and is always taken.
  The `beq` branch at 0x101127bc targets 0x10112804, is taken when s6(?) == sp(=sp-256), and falls through when s6(?) != sp(=sp-256).
  The `beq` branch at 0x101127c4 targets 0x10112768, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `beq` branch at 0x101127d0 targets 0x1011274c and is always taken.
  The `beq` branch at 0x101127f4 targets 0x10112440 and is always taken.
  The `beq` branch at 0x101127fc targets 0x1011247c and is always taken.
  The `beq` branch at 0x10112804 targets 0x10112740, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `beq` branch at 0x1011280c targets 0x1011274c and is always taken.
  The `beq` branch at 0x1011283c targets 0x1011245c and is always taken.
  The return at 0x1011278c has v0 = one of ret(XkbUpdateLedAutoState), ?.
  The instructions from 0x101124f8 to 0x101124fc are not reached by any path from the entry, and their branches are not listed.
- `XkbSendMapNotify` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10114270 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10114270-0x10114774 (1284 bytes).
  It occupies 1284 bytes.
  The `lhu` at 0x10114284 loads 2 bytes from a1 (arg1 at entry) +0xa.
  The `lw` at 0x1011428c loads 4 bytes from a0 (arg0 at entry) +0x90.
  The `lw` at 0x10114294 loads 4 bytes from [a0+144] +0x158.
  2 such `lw` accesses load 4 bytes from [[a0+144]+344] +0x24, including `lw` at 0x1011429c, `lw` at 0x101142bc.
  The `lbu` at 0x101142a4 loads 1 byte from [[[a0+144]+344]+36] +0x8.
  The `sb` at 0x101142b0 stores 1 byte to a1 (arg1 at entry) +0xc.
  The `lbu` at 0x101142d4 loads 1 byte from [[[a0+144]+344]+36] +0x9.
  The `sb` at 0x101142e0 stores 1 byte to a1 (arg1 at entry) +0xd.
  2 such `lw` accesses load 4 bytes from sym(clients) +0x0, including `lw` at 0x10114340, `lw` at 0x1011459c.
  26 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10114348, `lw` at 0x10114354, `lw` at 0x10114360.
  2 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x10114364, `lhu` at 0x10114368.
  The `sw` at 0x10114390 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `sh` at 0x1011439c stores 2 bytes to a1 (arg1 at entry) +0xa.
  The `sh` at 0x101143a0 stores 2 bytes to a1 (arg1 at entry) +0x2.
  The `sb` at 0x101143d4 stores 1 byte to a1 (arg1 at entry) +0x6.
  The `sb` at 0x101143d8 stores 1 byte to a1 (arg1 at entry) +0x5.
  The `sb` at 0x101143dc stores 1 byte to a1 (arg1 at entry) +0xa.
  The `sb` at 0x101143e4 stores 1 byte to a1 (arg1 at entry) +0x7.
  The `sb` at 0x101143e8 stores 1 byte to a1 (arg1 at entry) +0x4.
  The `sb` at 0x101143ec stores 1 byte to a1 (arg1 at entry) +0x3.
  The `sb` at 0x101143f0 stores 1 byte to a1 (arg1 at entry) +0x2.
  The `sb` at 0x101143fc stores 1 byte to a1 (arg1 at entry) +0xb.
  The `lw` at 0x10114420 loads 4 bytes from [0x102c727c] +0x0.
  6 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10114434, `sw` at 0x101144a4, `sw` at 0x101145fc.
  The `lw` at 0x1011447c loads 4 bytes from abs 0x10291a20 (padlength..10).
  2 such `lw` accesses load 4 bytes from [0x102c7268] +0x8, including `lw` at 0x101144c8, `lw` at 0x101146dc.
  The `lw` at 0x1011452c loads 4 bytes from table(0x102c6750) +0x0.
  2 such `sw` accesses store 4 bytes to table(0x102c6750) +0x0, including `sw` at 0x10114540, `sw` at 0x101145d4.
  The `sb` at 0x10114578 stores 1 byte to a1 (arg1 at entry) +0x1.
  The `sb` at 0x10114588 stores 1 byte to a1 (arg1 at entry) +0x0.
  The `lbu` at 0x1011458c loads 1 byte from a0 (arg0 at entry) +0x4c.
  The `sb` at 0x10114598 stores 1 byte to a1 (arg1 at entry) +0x8.
  The `lbu` at 0x10114660 loads 1 byte from a1 (arg1 at entry) +0x0.
  The `lw` at 0x10114678 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `jalr` at 0x101144d8 calls (unknown callee) with a0=?, a1=sp-168, a2=[0x102c7268], a3=?.
  The `jalr` at 0x10114560 calls (unknown callee) with a0=?, a1=?, a2=a1 at entry (arg1), a3=0x20.
  The `jalr` at 0x10114594 calls times with a0=sp-184, a1=?, a2=?, a3=?, a4=[0x102c5d70].
  The `jalr` at 0x101145e0 calls memmove with a0=?, a1=a1 at entry (arg1), a2=0x20, a3=0x1, a6=table(0x102c5d40), a7=entry(0x102c6750).
  The `jal` at 0x10114608 calls AllocateOutputBuffer [0x100c1f40] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x101146ec calls (unknown callee) with a0=?, a1=sp-168, a2=[0x102c7268], a3=?.
  The `jal` at 0x10114704 calls sgiCheckCloneBuffer..NM [0x1011fef0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10114728 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10114740 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10114748 calls _XSERVTransFreeConnInfo [0x100d3a20] with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x101142dc targets 0x10114448, is taken when a4(=[0x102c5d70]) < 0x2 (signed), and falls through when a4(=[0x102c5d70]) >= 0x2 (signed).
  The `beq` branch at 0x10114304 targets 0x10114340 and is always taken.
  The `beq` branch at 0x10114310 targets 0x10114468, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0x10114338 targets 0x10114438, is taken when s1(?) >= a4(=[0x102c5d70]) (signed), and falls through when s1(?) < a4(=[0x102c5d70]) (signed).
  The `beq` branch at 0x1011434c targets 0x10114330, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x10114358 targets 0x10114330, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x1011436c targets 0x10114330, is taken when a7(?) == s5(=0x102cc150), and falls through when a7(?) != s5(=0x102cc150).
  The `beq` branch at 0x10114378 targets 0x10114330, is taken when (a6(?) & 0x8000) == 0, and falls through when (a6(?) & 0x8000) != 0.
  The `beq` branch at 0x10114380 targets 0x10114330, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x10114388 targets 0x10114570, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x101143cc targets 0x10114404, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x1011440c targets 0x10114310, is taken when s8(?) != 0, and falls through when s8(?) == 0.
  The `beq` branch at 0x10114418 targets 0x10114600, is taken when s8(=[0x102c727c]) == 0, and falls through when s8(=[0x102c727c]) != 0.
  The `bne` branch at 0x10114428 targets 0x10114310, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x10114430 targets 0x10114310 and is always taken.
  The `beq` branch at 0x10114478 targets 0x101144ec, is taken when ra(=[0x102c7268]) == 0, and falls through when ra(=[0x102c7268]) != 0.
  The `beq` branch at 0x1011449c targets 0x10114658, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x101144b0 targets 0x101144ec, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x101144bc targets 0x101144ec, is taken when a2(=[0x102c7268]) == 0, and falls through when a2(=[0x102c7268]) != 0.
  The `beq` branch at 0x10114530 targets 0x101145bc, is taken when t3(?) >= t9(=table(0x20)) (signed), and falls through when t3(?) < t9(=table(0x20)) (signed).
  The `beq` branch at 0x1011454c targets 0x1011462c, is taken when t9(=[0x102c6750]:8) == 0, and falls through when t9(=[0x102c6750]:8) != 0.
  The `beq` branch at 0x10114568 targets 0x10114318 and is always taken.
  The `beq` branch at 0x101145b4 targets 0x10114390 and is always taken.
  The `beq` branch at 0x101145f8 targets 0x10114318 and is always taken.
  The `beq` branch at 0x1011461c targets 0x10114704, is taken when v0(=ret(AllocateOutputBuffer)) == 0, and falls through when v0(=ret(AllocateOutputBuffer)) != 0.
  The `beq` branch at 0x10114624 targets 0x10114428 and is always taken.
  The `bne` branch at 0x1011462c targets 0x10114554, is taken when a2(=[0x102c6758]:8) != 0, and falls through when a2(=[0x102c6758]:8) == 0.
  The `bne` branch at 0x10114638 targets 0x10114554, is taken when a6(=[0x102c6760]:8) != 0, and falls through when a6(=[0x102c6760]:8) == 0.
  The `bne` branch at 0x10114644 targets 0x10114554, is taken when a7(=[0x102c6768]:8) != 0, and falls through when a7(=[0x102c6768]:8) == 0.
  The `beq` branch at 0x10114650 targets 0x10114554 and is always taken.
  The `bne` branch at 0x10114658 targets 0x101144ec, is taken when a4(?) != t0(=0x2), and falls through when a4(?) == t0(=0x2).
  The `bne` branch at 0x10114668 targets 0x101144ec, is taken when t1(=0x1) != t3(=[a1]:1), and falls through when t1(=0x1) == t3(=[a1]:1).
  The `beq` branch at 0x10114674 targets 0x101146ac, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x101146c4 targets 0x101144ec, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x101146d0 targets 0x101144ec, is taken when a2(=[0x102c7268]) == 0, and falls through when a2(=[0x102c7268]) != 0.
  The `beq` branch at 0x101146fc targets 0x101144ec and is always taken.
  The `beq` branch at 0x10114718 targets 0x10114760, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x1011476c targets 0x10114624 and is always taken.
  The return at 0x10114460 has v0 = ?.
  The instructions from 0x1011430c to 0x1011430c are not reached by any path from the entry, and their branches are not listed.
- `FontFileRegisterLazyFontFileFunctions` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10114f40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10114f40-0x10114f9c (92 bytes).
  It occupies 92 bytes.
  The `jal` at 0x10114f4c calls BitmapRegisterFontFileFunctions [0x10178730] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10114f60 calls FontFileRegisterRenderer [0x10131b90] with a0=0x102ccb20, a1=?, a2=?, a3=?.
  The `jal` at 0x10114f6c calls FontFileRegisterRenderer [0x10131b90] with a0=0x102cc6f0, a1=?, a2=?, a3=?.
  The `jal` at 0x10114f78 calls FontFileRegisterRenderer [0x10131b90] with a0=0x102cc710, a1=?, a2=?, a3=?.
  Calls FontFileRegisterRenderer [0x10131b90] via direct with a0=0x102cc730, a1=?, a2=?, a3=? (`j` at 0x10114f94).
- `DbeWindowPrivDelete..GJC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x101161a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x101161a0-0x10116398 (504 bytes).
  It occupies 504 bytes.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x101161b0, `lw` at 0x10116248, `lw` at 0x1011629c.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x18, including `lw` at 0x101161d8, `lw` at 0x101162ec, `lw` at 0x10116328.
  The `lw` at 0x101161dc loads 4 bytes from [a0+24] +0x0.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x101161f4, `lw` at 0x10116210, `lw` at 0x1011628c.
  The `sw` at 0x10116240 stores 4 bytes to ([a0+24] + ([a0+16] << 0x2)) -0x4.
  The `lw` at 0x10116244 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `sw` at 0x1011625c stores 4 bytes to a0 (arg0 at entry) +0x10.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x10116278, `lw` at 0x10116334.
  The `lw` at 0x1011627c loads 4 bytes from [a0] +0x10.
  The `lw` at 0x10116280 loads 4 bytes from [[a0]+16] +0x1b4.
  The `lw` at 0x10116288 loads 4 bytes from ([[[a0]+16]+436] + ([0x102ca7c0] << 0x2)) +0x0.
  The `lw` at 0x1011633c loads 4 bytes from [a0] +0x84.
  The `sw` at 0x10116350 stores 4 bytes to ([[a0]+132] + ([0x102ca7c4] << 0x2)) +0x0.
  The `ldl` at 0x10116368 loads 8 bytes from [a0+24] +0x0.
  The `ldr` at 0x10116370 loads 8 bytes from [a0+24] +0x7.
  The `sdl` at 0x10116374 stores 8 bytes to a0 (arg0 at entry) +0x1c.
  The `sdr` at 0x10116378 stores 8 bytes to a0 (arg0 at entry) +0x23.
  The `sw` at 0x10116388 stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `sw` at 0x10116394 stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `jalr` at 0x10116294 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a4=([0x102ca7c0] << 0x2).
  The `jalr` at 0x101162e4 calls memmove with a0=?, a1=?, a2=?, a3=[a0+16]-1, a4=[a0+16], a6=[a0+24].
  The `jal` at 0x1011634c calls Xfree [0x101fc9c0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=([[a0]+132] + ([0x102ca7c4] << 0x2)), a5=([0x102ca7c4] << 0x2).
  The `jal` at 0x1011637c calls Xfree [0x101fc9c0] with a0=[a0+24], a1=[a0+24], a2=?, a3=?, a4=[a0+16]-1, a5=a0+28, a7=[a0+24].
  The `blez` branch at 0x101161d0 targets 0x10116314, is taken when a4(=[a0+16]) <= 0 (signed), and falls through when a4(=[a0+16]) > 0 (signed).
  The `beq` branch at 0x101161e4 targets 0x101162c4, is taken when v0(=[[a0+24]]) == a1, and falls through when v0(=[[a0+24]]) != a1.
  The `beq` branch at 0x101161ec targets 0x10116204 and is always taken.
  The `beq` branch at 0x101161f8 targets 0x1011622c, is taken when v1(?) == s1(=a1), and falls through when v1(?) != s1(=a1).
  The `beq` branch at 0x10116208 targets 0x1011622c, is taken when a5(?) >= a4(=[a0+16]) (signed), and falls through when a5(?) < a4(=[a0+16]) (signed).
  The `beq` branch at 0x10116214 targets 0x1011622c, is taken when a7(?) == s1(=a1), and falls through when a7(?) != s1(=a1).
  The `bne` branch at 0x10116224 targets 0x101161f4, is taken when a5(?) < a4(=[a0+16]) (signed), and falls through when a5(?) >= a4(=[a0+16]) (signed).
  The `beq` branch at 0x1011622c targets 0x101162f8, is taken when a5(?) == a4(=[a0+16]), and falls through when a5(?) != a4(=[a0+16]).
  The `bne` branch at 0x10116234 targets 0x101162cc, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bne` branch at 0x10116258 targets 0x10116264, is taken when t2(=[a0+20]) < 0x3 (signed), and falls through when t2(=[a0+20]) >= 0x3 (signed).
  The `beq` branch at 0x10116260 targets 0x1011635c, is taken when a4(=[a0+16]-1) == a0(=0x2), and falls through when a4(=[a0+16]-1) != a0(=0x2).
  The `bltz` branch at 0x10116270 targets 0x1011628c, is taken when a0(=[0x102ca7c0]) < 0 (signed), and falls through when a0(=[0x102ca7c0]) >= 0 (signed).
  The `beq` branch at 0x101162a0 targets 0x10116334, is taken when a4(=[a0+16]) == 0, and falls through when a4(=[a0+16]) != 0.
  The `bne` branch at 0x101162c4 targets 0x1011623c, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x101162f0 targets 0x10116238 and is always taken.
  The `beq` branch at 0x10116314 targets 0x101162fc, is taken when a4(=[a0+16]) == 0, and falls through when a4(=[a0+16]) != 0.
  The `bne` branch at 0x1011631c targets 0x1011632c, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x10116324 targets 0x101162cc and is always taken.
  The `beq` branch at 0x1011632c targets 0x10116238 and is always taken.
  The `beq` branch at 0x10116354 targets 0x101162ac and is always taken.
  The `beq` branch at 0x10116390 targets 0x10116264 and is always taken.
  The return at 0x101162bc has v0 = 0x0.
  The return at 0x1011630c has v0 = 0x2.
- `AccessUnmapWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10119f30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10119f30-0x1011a014 (228 bytes).
  It occupies 228 bytes.
  The `lw` at 0x10119f30 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x10119f38 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x10119f8c loads 4 bytes from [a0+8] +0x4.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10119fac, `lw` at 0x10119ffc.
  The `sw` at 0x10119fb8 stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `lw` at 0x10119fe8 loads 4 bytes from a0 (arg0 at entry) +0x58.
  The `lbu` at 0x10119fec loads 1 byte from ?.
  The `lw` at 0x10119ff0 loads 4 bytes from [a0+88] +0x0.
  The `jal` at 0x10119f88 calls SecurityLookupWindow [0x1006ce40] with a0=[[a0+8]+4], a1=a0 at entry (arg0), a2=0x0, a3=a3 at entry (arg3).
  The `jal` at 0x10119fc4 calls CheckWindowAccess [0x1018ed00] with a0=0x1, a1=a0 at entry (arg0), a2=ret(SecurityLookupWindow), a3=0x0.
  The `jalr` at 0x1011a000 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10119f54 targets 0x10119f78, is taken when v1(=[a0+72]) == a1(=0x2), and falls through when v1(=[a0+72]) != a1(=0x2).
  The `bne` branch at 0x10119f90 targets 0x10119fbc, is taken when v0(=ret(SecurityLookupWindow)) != 0, and falls through when v0(=ret(SecurityLookupWindow)) == 0.
  The `bne` branch at 0x10119fcc targets 0x10119fdc, is taken when v0(=ret(CheckWindowAccess)) != 0, and falls through when v0(=ret(CheckWindowAccess)) == 0.
  The `beq` branch at 0x10119fd4 targets 0x10119f68 and is always taken.
  The `beq` branch at 0x1011a00c targets 0x10119f68 and is always taken.
  The return at 0x10119f60 has v0 = 0x10.
  The return at 0x10119f70 has v0 = one of 0x3, ret(?).
  The return at 0x10119fb4 has v0 = 0x3.
- `MultibufferExpose` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1011d7a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1011d7a0-0x1011d8dc (316 bytes).
  It occupies 316 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1011d7c8, `lw` at 0x1011d814.
  2 such `lw` accesses load 4 bytes from [a1+8] +0x4, including `lw` at 0x1011d7d4, `lw` at 0x1011d82c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x14, including `lw` at 0x1011d7e4, `lw` at 0x1011d864.
  The `lw` at 0x1011d7f4 loads 4 bytes from ret(SecurityLookupIDByType) +0x10.
  The `lh` at 0x1011d7f8 loads 2 bytes from ret(SecurityLookupIDByType) +0x8.
  The `lw` at 0x1011d7fc loads 4 bytes from [ret(SecurityLookupIDByType)+16] +0x178.
  The `lh` at 0x1011d800 loads 2 bytes from ret(SecurityLookupIDByType) +0xa.
  The `sb` at 0x1011d860 stores 1 byte to ?.
  The `sw` at 0x1011d868 stores 4 bytes to ?.
  6 such `lh` accesses load 2 bytes from ?, including `lh` at 0x1011d86c, `lh` at 0x1011d874, `lh` at 0x1011d87c.
  5 such `sh` accesses store 2 bytes to ?, including `sh` at 0x1011d870, `sh` at 0x1011d878, `sh` at 0x1011d888.
  The `jal` at 0x1011d7ec calls SecurityLookupIDByType [0x100d6140] with a0=0x0, a1=[a0+20], a2=[0x102ca7ec], a3=0x0, a4=[a1+8].
  The `jalr` at 0x1011d80c calls (unknown callee) with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x1011d8b8 calls DeliverEventsToMultibuffer..JMC [0x10126550] with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x8000, a7=0xc.
  The `beq` branch at 0x1011d7c0 targets 0x1011d8c0, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x1011d7cc targets 0x1011d7e0, is taken when a4(=[a1+8]) == 0, and falls through when a4(=[a1+8]) != 0.
  The `beq` branch at 0x1011d7d8 targets 0x1011d8c0, is taken when v0(=[[a1+8]+4]) == 0, and falls through when v0(=[[a1+8]+4]) != 0.
  The `beq` branch at 0x1011d820 targets 0x1011d830, is taken when a4(=[a1+8]) == 0, and falls through when a4(=[a1+8]) != 0.
  The `beq` branch at 0x1011d84c targets 0x1011d8c0, is taken when sp(?) == 0, and falls through when sp(?) != 0.
  The `blez` branch at 0x1011d854 targets 0x1011d8b0, is taken when a2(?) <= 0 (signed), and falls through when a2(?) > 0 (signed).
  The `bne` branch at 0x1011d8a8 targets 0x1011d860, is taken when a5(?) != a6(?), and falls through when a5(?) == a6(?).
  The return at 0x1011d8d4 has v0 = one of ?, [[a1+8]+4], ret(?), ret(DeliverEventsToMultibuffer..JMC).
- `ProcGetBufferVersion..OJC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1011db20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1011db20-0x1011dbb0 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0x1011db20 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x1011db44 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0x1011db54 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x1011dba4 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `jal` at 0x1011db94 calls WriteToClient [0x100b3500] with a0=a0 at entry (arg0), a1=0x20, a2=sp-48, a3=0x1.
  The `beq` branch at 0x1011db2c targets 0x1011db3c, is taken when a3(=0x1) == at(=[a0+72]), and falls through when a3(=0x1) != at(=[a0+72]).
  The `beq` branch at 0x1011db64 targets 0x1011db88, is taken when v1(=[a0+16]) == 0, and falls through when v1(=[a0+16]) != 0.
  The return at 0x1011db34 has v0 = 0x10.
  The return at 0x1011dba8 has v0 = [a0+40].
- `sgiCheckCloneBuffer..NM` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1011fef0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1011fef0-0x1011ffa4 (180 bytes).
  It occupies 180 bytes.
  The `lw` at 0x1011fef8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x14, including `lw` at 0x1011fefc, `lw` at 0x1011ff68.
  The `lw` at 0x1011ff14 loads 4 bytes from [a0+4] +0x18.
  2 such `lw` accesses load 4 bytes from [a0+4] +0x4, including `lw` at 0x1011ff20, `lw` at 0x1011ff60.
  The `lw` at 0x1011ff24 loads 4 bytes from [a0+4] +0xc.
  The `lw` at 0x1011ff28 loads 4 bytes from [a0+4] +0x8.
  The `lw` at 0x1011ff58 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `lw` at 0x1011ff5c loads 4 bytes from [a0+44] +0x4.
  The `sw` at 0x1011ff80 stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `jal` at 0x1011ff38 calls sgiCloneBuffer..MM [0x1021f840] with a0=a0 at entry (arg0), a1=?, a2=0x0, a3=[[a0+4]+4].
  The `jalr` at 0x1011ff64 calls (unknown callee) with a0=[a0+20], a1=[[a0+4]+4], a2=?, a3=?.
  The `jal` at 0x1011ff94 calls Xfree [0x101fc9c0] with a0=[a0+4], a1=?, a2=?, a3=?.
  The `beq` branch at 0x1011ff04 targets 0x1011ff48, is taken when s1(=[a0+4]) == 0, and falls through when s1(=[a0+4]) != 0.
  The `beq` branch at 0x1011ff0c targets 0x1011ff48, is taken when at(=[a0+20]) == 0, and falls through when at(=[a0+20]) != 0.
  The `beq` branch at 0x1011ff18 targets 0x1011ff48, is taken when v0(=[[a0+4]+24]) == 0, and falls through when v0(=[[a0+4]+24]) != 0.
  The `beq` branch at 0x1011ff40 targets 0x1011ff58, is taken when v0(=ret(sgiCloneBuffer..MM)) == 0, and falls through when v0(=ret(sgiCloneBuffer..MM)) != 0.
  The `bne` branch at 0x1011ff70 targets 0x1011ff94, is taken when ra(=[0x102c7288]) != 0, and falls through when ra(=[0x102c7288]) == 0.
  The `beq` branch at 0x1011ff9c targets 0x1011ff80 and is always taken.
  The return at 0x1011ff50 has v0 = one of ?, [[a0+4]+24], ret(sgiCloneBuffer..MM).
  The return at 0x1011ff8c has v0 = one of ret(?), ret(Xfree).
- `SGetWindowAttributesReply` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10120430 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10120430-0x1012056c (316 bytes).
  It occupies 316 bytes.
  The `lbu` at 0x10120430 loads 1 byte from a2 (arg2 at entry) +0xd.
  The `lbu` at 0x10120434 loads 1 byte from a2 (arg2 at entry) +0xc.
  The `lbu` at 0x10120438 loads 1 byte from a2 (arg2 at entry) +0x13.
  The `lbu` at 0x1012043c loads 1 byte from a2 (arg2 at entry) +0x10.
  The `lbu` at 0x10120440 loads 1 byte from a2 (arg2 at entry) +0x12.
  The `lbu` at 0x10120444 loads 1 byte from a2 (arg2 at entry) +0x2.
  The `lbu` at 0x10120448 loads 1 byte from a2 (arg2 at entry) +0x3.
  The `sb` at 0x1012044c stores 1 byte to a2 (arg2 at entry) +0x2.
  The `lbu` at 0x10120450 loads 1 byte from a2 (arg2 at entry) +0x11.
  The `sb` at 0x10120454 stores 1 byte to a2 (arg2 at entry) +0x11.
  The `lbu` at 0x10120458 loads 1 byte from a2 (arg2 at entry) +0x24.
  The `sb` at 0x1012045c stores 1 byte to a2 (arg2 at entry) +0x13.
  The `lbu` at 0x10120460 loads 1 byte from a2 (arg2 at entry) +0x27.
  The `sb` at 0x10120464 stores 1 byte to a2 (arg2 at entry) +0x10.
  The `lbu` at 0x10120468 loads 1 byte from a2 (arg2 at entry) +0x21.
  The `sb` at 0x1012046c stores 1 byte to a2 (arg2 at entry) +0xd.
  The `lbu` at 0x10120470 loads 1 byte from a2 (arg2 at entry) +0x22.
  The `sb` at 0x10120474 stores 1 byte to a2 (arg2 at entry) +0xc.
  The `lbu` at 0x10120478 loads 1 byte from a2 (arg2 at entry) +0x20.
  The `lbu` at 0x1012047c loads 1 byte from a2 (arg2 at entry) +0x9.
  The `lbu` at 0x10120480 loads 1 byte from a2 (arg2 at entry) +0xa.
  The `sb` at 0x10120484 stores 1 byte to a2 (arg2 at entry) +0xa.
  The `lbu` at 0x10120488 loads 1 byte from a2 (arg2 at entry) +0x23.
  The `lbu` at 0x1012048c loads 1 byte from a2 (arg2 at entry) +0x5.
  The `lbu` at 0x10120490 loads 1 byte from a2 (arg2 at entry) +0x6.
  The `sb` at 0x10120494 stores 1 byte to a2 (arg2 at entry) +0x6.
  The `lbu` at 0x10120498 loads 1 byte from a2 (arg2 at entry) +0x1f.
  The `lbu` at 0x1012049c loads 1 byte from a2 (arg2 at entry) +0x8.
  The `lbu` at 0x101204a8 loads 1 byte from a2 (arg2 at entry) +0xb.
  The `sb` at 0x101204ac stores 1 byte to a2 (arg2 at entry) +0x8.
  The `lbu` at 0x101204b0 loads 1 byte from a2 (arg2 at entry) +0x1c.
  The `sb` at 0x101204b4 stores 1 byte to a2 (arg2 at entry) +0x1c.
  The `sb` at 0x101204b8 stores 1 byte to a2 (arg2 at entry) +0x9.
  The `lbu` at 0x101204bc loads 1 byte from a2 (arg2 at entry) +0x1d.
  The `sb` at 0x101204c0 stores 1 byte to a2 (arg2 at entry) +0xb.
  The `lbu` at 0x101204c4 loads 1 byte from a2 (arg2 at entry) +0x1e.
  The `sb` at 0x101204c8 stores 1 byte to a2 (arg2 at entry) +0x1e.
  The `sb` at 0x101204cc stores 1 byte to a2 (arg2 at entry) +0x20.
  The `sb` at 0x101204d0 stores 1 byte to a2 (arg2 at entry) +0x23.
  The `sb` at 0x101204d4 stores 1 byte to a2 (arg2 at entry) +0x21.
  The `sb` at 0x101204d8 stores 1 byte to a2 (arg2 at entry) +0x22.
  The `sb` at 0x101204dc stores 1 byte to a2 (arg2 at entry) +0x24.
  The `sb` at 0x101204e0 stores 1 byte to a2 (arg2 at entry) +0x27.
  The `sb` at 0x101204e4 stores 1 byte to a2 (arg2 at entry) +0x3.
  The `lbu` at 0x101204e8 loads 1 byte from a2 (arg2 at entry) +0x17.
  The `lbu` at 0x101204ec loads 1 byte from a2 (arg2 at entry) +0x7.
  The `lbu` at 0x101204f0 loads 1 byte from a2 (arg2 at entry) +0x4.
  The `sb` at 0x101204f4 stores 1 byte to a2 (arg2 at entry) +0x4.
  The `lbu` at 0x101204f8 loads 1 byte from a2 (arg2 at entry) +0x14.
  The `sb` at 0x101204fc stores 1 byte to a2 (arg2 at entry) +0x7.
  The `lbu` at 0x10120500 loads 1 byte from a2 (arg2 at entry) +0x16.
  The `sb` at 0x10120504 stores 1 byte to a2 (arg2 at entry) +0x5.
  The `lbu` at 0x10120508 loads 1 byte from a2 (arg2 at entry) +0x15.
  The `sb` at 0x1012050c stores 1 byte to a2 (arg2 at entry) +0x15.
  The `lbu` at 0x10120510 loads 1 byte from a2 (arg2 at entry) +0x28.
  The `sb` at 0x10120514 stores 1 byte to a2 (arg2 at entry) +0x17.
  The `lbu` at 0x10120518 loads 1 byte from a2 (arg2 at entry) +0x29.
  The `sb` at 0x1012051c stores 1 byte to a2 (arg2 at entry) +0x14.
  The `lbu` at 0x10120520 loads 1 byte from a2 (arg2 at entry) +0x25.
  The `sb` at 0x10120524 stores 1 byte to a2 (arg2 at entry) +0x12.
  The `lbu` at 0x10120528 loads 1 byte from a2 (arg2 at entry) +0x26.
  The `sb` at 0x1012052c stores 1 byte to a2 (arg2 at entry) +0x25.
  The `sb` at 0x10120530 stores 1 byte to a2 (arg2 at entry) +0x26.
  The `sb` at 0x10120538 stores 1 byte to a2 (arg2 at entry) +0x16.
  The `sb` at 0x10120540 stores 1 byte to a2 (arg2 at entry) +0x1d.
  The `sb` at 0x1012054c stores 1 byte to a2 (arg2 at entry) +0x28.
  The `sb` at 0x10120550 stores 1 byte to a2 (arg2 at entry) +0x1f.
  The `sb` at 0x10120558 stores 1 byte to a2 (arg2 at entry) +0x29.
  The `jal` at 0x10120554 calls WriteToClient [0x100b3500] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a2+41]:1, a4=[a2+37]:1, a5=[a2+38]:1, a6=[a2+36]:1, a7=[a2+39]:1.
  The return at 0x10120564 has v0 = ret(WriteToClient).
- `CheckWindowOptionalNeed` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10123eb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10123eb0-0x10124014 (356 bytes).
  It occupies 356 bytes.
  The `lw` at 0x10123eb0 loads 4 bytes from a0 (arg0 at entry) +0x18.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0x10123ec4, `lw` at 0x10123fd8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x78, including `lw` at 0x10123ecc, `lw` at 0x10123fdc.
  The `lw` at 0x10123ed8 loads 4 bytes from [a0+120] +0xc.
  6 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10123ee0, `lw` at 0x10123f54, `lw` at 0x10123f58.
  The `lw` at 0x10123ee8 loads 4 bytes from [a0+120] +0x10.
  The `lw` at 0x10123ef4 loads 4 bytes from [a0+120] +0x14.
  The `lw` at 0x10123ef8 loads 4 bytes from [a0+120] +0x1c.
  The `lw` at 0x10123efc loads 4 bytes from [a0+120] +0x20.
  The `lw` at 0x10123f08 loads 4 bytes from [a0+120] +0x18.
  The `lw` at 0x10123f24 loads 4 bytes from [a0+120] +0x24.
  The `lw` at 0x10123f30 loads 4 bytes from [a0+120] +0x28.
  The `lw` at 0x10123f3c loads 4 bytes from [a0+120] +0x2c.
  The `lw` at 0x10123f48 loads 4 bytes from [a0+120] +0x30.
  The `lw` at 0x10123f68 loads 4 bytes from [a0+120] +0x0.
  The `lw` at 0x10123f74 loads 4 bytes from [a0+120] +0x4.
  The `lw` at 0x10123f8c loads 4 bytes from [a0+24] +0x7c.
  The `lw` at 0x10123fa0 loads 4 bytes from [a0+120] +0x8.
  The `sw` at 0x10123ff4 stores 4 bytes to a0 (arg0 at entry) +0x7c.
  The `sw` at 0x10124008 stores 4 bytes to a0 (arg0 at entry) +0x78.
  The `jal` at 0x10123fcc calls FreeCursor [0x10205d70] with a0=[[a0+120]+4], a1=0x0, a2=a0 at entry (arg0), a3=[[a0+120]+4], a4=[a0+24], a5=[a0+124], a7=[[a0+120]+44].
  The `jal` at 0x10123ff0 calls Xfree [0x101fc9c0] with a0=[a0+120], a1=([a0+124] | 0x10000000), a2=a0 at entry (arg0), a3=?, a5=[a0+124].
  The `beq` branch at 0x10123eb8 targets 0x1012400c, is taken when a4(=[a0+24]) == 0, and falls through when a4(=[a0+24]) != 0.
  The `bne` branch at 0x10123ee4 targets 0x1012400c, is taken when at(?) != v0(=[[a0+120]+12]), and falls through when at(?) == v0(=[[a0+120]+12]).
  The `bne` branch at 0x10123eec targets 0x1012400c, is taken when a3(=[[a0+120]+16]) != 0, and falls through when a3(=[[a0+120]+16]) == 0.
  The `bne` branch at 0x10123f04 targets 0x1012400c, is taken when a1(=[[a0+120]+20]) != 0, and falls through when a1(=[[a0+120]+20]) == 0.
  The `bne` branch at 0x10123f0c targets 0x1012400c, is taken when a3(=[[a0+120]+24]) != 0, and falls through when a3(=[[a0+120]+24]) == 0.
  The `bne` branch at 0x10123f14 targets 0x1012400c, is taken when a6(=[[a0+120]+28]) != 0, and falls through when a6(=[[a0+120]+28]) == 0.
  The `bne` branch at 0x10123f1c targets 0x1012400c, is taken when t0(=[[a0+120]+32]) != a7(=-0x1), and falls through when t0(=[[a0+120]+32]) == a7(=-0x1).
  The `bne` branch at 0x10123f28 targets 0x1012400c, is taken when a3(=[[a0+120]+36]) != 0, and falls through when a3(=[[a0+120]+36]) == 0.
  The `bne` branch at 0x10123f34 targets 0x1012400c, is taken when a6(=[[a0+120]+40]) != 0, and falls through when a6(=[[a0+120]+40]) == 0.
  The `bne` branch at 0x10123f40 targets 0x1012400c, is taken when a7(=[[a0+120]+44]) != 0, and falls through when a7(=[[a0+120]+44]) == 0.
  The `bne` branch at 0x10123f4c targets 0x1012400c, is taken when t0(=[[a0+120]+48]) != 0, and falls through when t0(=[[a0+120]+48]) == 0.
  The `beq` branch at 0x10123f5c targets 0x10123f54, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x10123f6c targets 0x1012400c, is taken when t1(?) != t2(=[[a0+120]]), and falls through when t1(?) == t2(=[[a0+120]]).
  The `beq` branch at 0x10123f78 targets 0x10123f9c, is taken when a3(=[[a0+120]+4]) == 0, and falls through when a3(=[[a0+120]+4]) != 0.
  The `bne` branch at 0x10123f84 targets 0x1012400c, is taken when t3(?) != a3(=[[a0+120]+4]), and falls through when t3(?) == a3(=[[a0+120]+4]).
  The `bltz` branch at 0x10123f94 targets 0x1012400c, is taken when t8(=([[a0+24]+124] << 0x3)) < 0 (signed), and falls through when t8(=([[a0+24]+124] << 0x3)) >= 0 (signed).
  The `bne` branch at 0x10123fa4 targets 0x1012400c, is taken when t9(?) != at(=[[a0+120]+8]), and falls through when t9(?) == at(=[[a0+120]+8]).
  The `beq` branch at 0x10123fac targets 0x1012400c, is taken when a0(=[a0+120]) == 0, and falls through when a0(=[a0+120]) != 0.
  The `bltz` branch at 0x10123fb8 targets 0x10123fe0, is taken when v0(=([a0+124] << 0x3)) < 0 (signed), and falls through when v0(=([a0+124] << 0x3)) >= 0 (signed).
  The return at 0x10124004 has v0 = ret(Xfree).
  The return at 0x1012400c has v0 = one of ?, [[a0+120]+12], ([a0+124] << 0x3).
- `ProcXineramaSGICapRegisterInterest..GPD` in `usr/gfx/arch/GENERIC/Xsgi` at 0x101248f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x101248f0-0x1012559c (3244 bytes).
  It occupies 3244 bytes.
  The `lw` at 0x101248f0 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x101248f4 loads 4 bytes from a0 (arg0 at entry) +0x8.
  2 such `lh` accesses load 2 bytes from [a0+8] +0x8, including `lh` at 0x10124928, `lh` at 0x1012493c.
  2 such `lh` accesses load 2 bytes from [a0+8] +0xa, including `lh` at 0x10124930, `lh` at 0x1012494c.
  The `lhu` at 0x10124938 loads 2 bytes from [a0+8] +0xc.
  The `lhu` at 0x10124948 loads 2 bytes from [a0+8] +0xe.
  The `lw` at 0x1012495c loads 4 bytes from [a0+8] +0x10.
  67 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10124984, `lw` at 0x10124a6c, `lw` at 0x10124ac4.
  The `lw` at 0x10124990 loads 4 bytes from sym(XRC_DRAWABLE) +0x0.
  10 such `lh` accesses load 2 bytes from ?, including `lh` at 0x1012499c, `lh` at 0x101249c4, `lh` at 0x10124ce0.
  2 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x101249a8, `lhu` at 0x101249d4.
  The `sw` at 0x10124a48 stores 4 bytes to ret(Xalloc) +0x80.
  The `lw` at 0x10124a4c loads 4 bytes from sym(screenInfo) +0x48.
  The `lw` at 0x10124a54 loads 4 bytes from [sym(screenInfo)+72] +0x154.
  13 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10124ad0, `sw` at 0x10124c60, `sw` at 0x10124f84.
  The `lw` at 0x10124ad4 loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `lw` at 0x10124ae4 loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `lw` at 0x10124bb0 loads 4 bytes from a0 (arg0 at entry) +0x78.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x10124be4, `lbu` at 0x10124bf4.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x18, including `sw` at 0x10124c78, `sw` at 0x10125598.
  2 such `lw` accesses load 4 bytes from sym(panoramiXdataPtr) +0x0, including `lw` at 0x10124cd4, `lw` at 0x10124ecc.
  The `lw` at 0x10124df0 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0x10124e98 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x10124f70, `lw` at 0x10124fa0, `lw` at 0x10125228.
  The `lw` at 0x10124f78 loads 4 bytes from sym(panoramiXDisabled) +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0x10124f90, `lw` at 0x10125230.
  6 such `lw` accesses load 4 bytes from sym(__us_rsthread_malloc) +0x0, including `lw` at 0x10124ff4, `lw` at 0x10125014, `lw` at 0x10125480.
  8 such `sh` accesses store 2 bytes to ?, including `sh` at 0x1012504c, `sh` at 0x10125054, `sh` at 0x1012505c.
  The `lw` at 0x101250ec loads 4 bytes from sym(RT_SGICapInterest) +0x0.
  The `sw` at 0x10125198 stores 4 bytes to ret(Xalloc) +0xc.
  The `sw` at 0x1012519c stores 4 bytes to ret(Xalloc) +0x8.
  The `sw` at 0x101251a0 stores 4 bytes to ret(Xalloc) +0x4.
  The `sw` at 0x101251a4 stores 4 bytes to ret(Xalloc) +0x0.
  The `lw` at 0x10125424 loads 4 bytes from sym(Must_have_memory) +0x0.
  2 such `lw` accesses load 4 bytes from table(0x102c71c0) +0x0, including `lw` at 0x101254a8, `lw` at 0x10125528.
  2 such `sw` accesses store 4 bytes to table(0x102c71c0) +0x0, including `sw` at 0x101254d8, `sw` at 0x10125558.
  The `jal` at 0x10124960 calls AddXineramaRegion..EAE [0x1016bf00] with a0=[[a0+8]+16], a1=?, a2=[[a0+8]+14]:2, a3=([[a0+8]+8]:2 + [[a0+8]+12]:2), a4=[[a0+8]+12]:2, a5=[[a0+8]+10]:2, a6=[[a0+8]+8]:2.
  The `jal` at 0x1012498c calls SecurityLookupIDByClass [0x10236190] with a0=a0 at entry (arg0), a1=?, a2=[sym(XRC_DRAWABLE)], a3=0x2.
  The `jal` at 0x10124a0c calls Xalloc [0x1020aeb0] with a0=0xa8, a1=?, a2=?, a3=?.
  The `jalr` at 0x10124a60 calls (unknown callee) with a0=sp-200, a1=sp-208, a2=0x1, a3=?.
  The `jalr` at 0x10124a78 calls (unknown callee) with a0=sp-184, a1=0x0, a2=0x1, a3=?.
  The `jalr` at 0x10124bc8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x0.
  The `jalr` at 0x10124c30 calls (unknown callee) with a0=table(0x102c5e50), a1=sp-200, a2=?, a3=?.
  The `jalr` at 0x10124ca4 calls (unknown callee) with a0=sp-184, a1=sp-200, a2=table(0x102c5e50), a3=?.
  The `jal` at 0x10124dbc calls AddResource [0x1010ec30] with a0=?, a1=[0x102ca980], a2=?, a3=?.
  The `jalr` at 0x10124dd0 calls (unknown callee) with a0=sp-200, a1=?, a2=?, a3=?.
  The `jalr` at 0x10124de0 calls (unknown callee) with a0=sp-184, a1=?, a2=?, a3=?.
  The `jal` at 0x10124f6c calls FakeClientID [0x10069920] with a0=[a0], a1=?, a2=?, a3=?.
  The `jal` at 0x10124fdc calls SecurityLookupIDByClass [0x10236190] with a0=0x0, a1=ret(FakeClientID), a2=-0x1, a3=0x0, a6=[a0].
  The `jalr` at 0x10125000 calls __libc_lockmalloc with a0=?, a1=?, a2=?, a3=?, a7=[sym(__us_rsthread_malloc)].
  The `jal` at 0x10125008 calls __malloc..ML [0x101e7680] with a0=0x2c, a1=?, a2=?, a3=?.
  The `jalr` at 0x10125024 calls __libc_unlockmalloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x101250a0 calls (unknown callee) with a0=?, a1=0x1, a2=?, a3=?.
  The `jal` at 0x10125170 calls Xalloc [0x1020aeb0] with a0=0x10, a1=?, a2=?, a3=?.
  The `jalr` at 0x101251d4 calls (unknown callee) with a0=sp-200, a1=sp-200, a2=sp-184, a3=?.
  The `jalr` at 0x101251e4 calls (unknown callee) with a0=sp-200, a1=?, a2=?, a3=?.
  The `jal` at 0x10125330 calls RebuildTable..ID [0x101c6ee0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x101253cc calls ErrorF [0x10094ec0] with a0=?, a1=?, a2=[sym(RT_SGICapInterest)], a3=?, a6=[sym(RT_SGICapInterest)].
  The `jal` at 0x101253d8 calls FatalError [0x10094f20] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x101253fc calls Xfree [0x101fc9c0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10125438 calls FatalError [0x10094f20] with a0=0x10291460, a1=?, a2=?, a3=?.
  The `jalr` at 0x10125464 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10125490 calls __libc_lockmalloc with a0=?, a1=?, a2=[sym(__us_rsthread_malloc)], a3=?, a6=sym(__us_rsthread_malloc).
  The `jal` at 0x101254b4 calls realfree..NL [0x1025db70] with a0=entry(0x102c71c0), a1=table(0x102c5d40), a2=[0x102c7240], a3=([0x102c7240] << 0x2), a5=sym(__us_rsthread_malloc).
  The `jalr` at 0x101254f4 calls __libc_unlockmalloc with a0=?, a1=table(0x102c5d40), a2=[0x102c7240], a3=([0x102c7240] << 0x2), a5=[sym(__us_rsthread_malloc)].
  The `jalr` at 0x10125510 calls __libc_lockmalloc with a0=?, a1=?, a2=[0x102c7240], a3=?, a6=[sym(__us_rsthread_malloc)].
  The `jal` at 0x10125534 calls realfree..NL [0x1025db70] with a0=entry(0x102c71c0), a1=table(0x102c5d40), a2=[0x102c7240], a3=([0x102c7240] << 0x2), a5=sym(__us_rsthread_malloc).
  The `jalr` at 0x10125574 calls __libc_unlockmalloc with a0=?, a1=table(0x102c5d40), a2=[0x102c7240], a3=([0x102c7240] << 0x2), a5=[sym(__us_rsthread_malloc)].
  The `beq` branch at 0x10124904 targets 0x10124924, is taken when at(=[a0+72]) == v0(=0x5), and falls through when at(=[a0+72]) != v0(=0x5).
  The `beq` branch at 0x1012496c targets 0x101249fc, is taken when v0(=ret(AddXineramaRegion..EAE)) == a1(=0xb), and falls through when v0(=ret(AddXineramaRegion..EAE)) != a1(=0xb).
  The `beq` branch at 0x10124994 targets 0x10124a2c, is taken when v0(=ret(SecurityLookupIDByClass)) == 0, and falls through when v0(=ret(SecurityLookupIDByClass)) != 0.
  The `bltz` branch at 0x101249a0 targets 0x101249ec, is taken when a1(?) < 0 (signed), and falls through when a1(?) >= 0 (signed).
  The `bne` branch at 0x101249b8 targets 0x101249f0, is taken when a2(=[0x102c5f60]) < a3(?) (signed), and falls through when a2(=[0x102c5f60]) >= a3(?) (signed).
  The `bltz` branch at 0x101249c8 targets 0x101249f0, is taken when a1(?) < 0 (signed), and falls through when a1(?) >= 0 (signed).
  The `beq` branch at 0x101249e4 targets 0x10124a08, is taken when a2(=[0x102c5f64]) >= a3(?) (signed), and falls through when a2(=[0x102c5f64]) < a3(?) (signed).
  The `bne` branch at 0x10124a14 targets 0x10124a3c, is taken when v0(=ret(Xalloc)) != 0, and falls through when v0(=ret(Xalloc)) == 0.
  The `blez` branch at 0x10124a84 targets 0x10124dac, is taken when ra(=[0x102c5f1c]) <= 0 (signed), and falls through when ra(=[0x102c5f1c]) > 0 (signed).
  The `bne` branch at 0x10124ad8 targets 0x10124aec, is taken when v1(=[a0+48]) != a1(?), and falls through when v1(=[a0+48]) == a1(?).
  The `beq` branch at 0x10124ae8 targets 0x10124e90, is taken when a3(=[a0+116]) == 0, and falls through when a3(=[a0+116]) != 0.
  The `beq` branch at 0x10124af8 targets 0x10124c70, is taken when a3(?) >= 0x100 (signed), and falls through when a3(?) < 0x100 (signed).
  The `beq` branch at 0x10124b14 targets 0x10124c70, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x10124b20 targets 0x10124df4, is taken when a3(?) == t2(=0x6), and falls through when a3(?) != t2(=0x6).
  The `beq` branch at 0x10124b28 targets 0x10124e1c, is taken when a3(?) == t3(=0x7), and falls through when a3(?) != t3(=0x7).
  The `beq` branch at 0x10124b30 targets 0x10124e44, is taken when a3(?) == t8(=0x8), and falls through when a3(?) != t8(=0x8).
  The `beq` branch at 0x10124b38 targets 0x10124e70, is taken when a3(?) == a5(=0x9), and falls through when a3(?) != a5(=0x9).
  The `beq` branch at 0x10124b40 targets 0x10124e9c, is taken when a3(?) == a6(=0xa), and falls through when a3(?) != a6(=0xa).
  The `beq` branch at 0x10124b4c targets 0x10125200, is taken when a3(?) == t9(=0xb), and falls through when a3(?) != t9(=0xb).
  The `beq` branch at 0x10124b68 targets 0x10124c70, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x10124b70 targets 0x10124b88 and is always taken.
  The `beq` branch at 0x10124b7c targets 0x10124c70, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x10124b8c targets 0x10124b78, is taken when a6(?) != a1(?), and falls through when a6(?) == a1(?).
  The `beql` branch at 0x10124b94 targets 0x10124b7c, is taken when a4(?) == 0, and falls through when a4(?) != 0; its branch-likely delay slot `lw a3,0(a3)` at 0x10124b98 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x10124ba0 targets 0x10124bdc, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x10124ba8 targets 0x10124bdc, is taken when t0(=a0) == 0, and falls through when t0(=a0) != 0.
  The `beq` branch at 0x10124bb4 targets 0x10124bdc, is taken when t9(=[a0+120]) == 0, and falls through when t9(=[a0+120]) != 0.
  The `beq` branch at 0x10124bdc targets 0x10124c64, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x10124bec targets 0x101253f0, is taken when ra(=0x2) == at(?), and falls through when ra(=0x2) != at(?).
  The `bne` branch at 0x10124c00 targets 0x101253ac, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x10124c40 targets 0x10124eb8, is taken when v0(=ret(?)) == ra(=0x1), and falls through when v0(=ret(?)) != ra(=0x1).
  The `bne` branch at 0x10124c48 targets 0x10124c7c, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0.
  The `beq` branch at 0x10124c5c targets 0x10124d6c and is always taken.
  The `beq` branch at 0x10124c74 targets 0x10124918 and is always taken.
  The `beq` branch at 0x10124cb4 targets 0x1012521c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x10124d70 targets 0x10124f64, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x10124da4 targets 0x10124ac4, is taken when t9(?) < ra(=[0x102c5f1c]) (signed), and falls through when t9(?) >= ra(=[0x102c5f1c]) (signed).
  The `beq` branch at 0x10124dc4 targets 0x101253f8, is taken when v0(=ret(AddResource)) == 0, and falls through when v0(=ret(AddResource)) != 0.
  The `beq` branch at 0x10124dec targets 0x10124918 and is always taken.
  The `beq` branch at 0x10124e14 targets 0x10124b58 and is always taken.
  The `beq` branch at 0x10124e3c targets 0x10124b58 and is always taken.
  The `beq` branch at 0x10124e68 targets 0x10124b58 and is always taken.
  The `beq` branch at 0x10124e88 targets 0x10124b58 and is always taken.
  The `beq` branch at 0x10124e94 targets 0x10124bf4 and is always taken.
  The `beq` branch at 0x10124eb0 targets 0x10124b58 and is always taken.
  The `beq` branch at 0x10124f80 targets 0x10125224, is taken when a2(=[sym(panoramiXDisabled)]) == 0, and falls through when a2(=[sym(panoramiXDisabled)]) != 0.
  The `bne` branch at 0x10124f98 targets 0x10124fe8, is taken when a3(=[a0+4]) != a4(?), and falls through when a3(=[a0+4]) == a4(?).
  The `bne` branch at 0x10124fc0 targets 0x10124fd0, is taken when v0(=ret(FakeClientID)) < a4(?) (unsigned), and falls through when v0(=ret(FakeClientID)) >= a4(?) (unsigned).
  The `beq` branch at 0x10124fc8 targets 0x10124fec and is always taken.
  The `beq` branch at 0x10124fe4 targets 0x10124fc8, is taken when v0(=ret(SecurityLookupIDByClass)) == 0, and falls through when v0(=ret(SecurityLookupIDByClass)) != 0.
  The `beq` branch at 0x10124fec targets 0x10125584, is taken when a1(=one of 0x0, 0x1) == 0, and falls through when a1(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x10124ff8 targets 0x10125008, is taken when a7(=[sym(__us_rsthread_malloc)]) == 0, and falls through when a7(=[sym(__us_rsthread_malloc)]) != 0.
  The `beq` branch at 0x10125018 targets 0x1012502c, is taken when t0(=[sym(__us_rsthread_malloc)]) == 0, and falls through when t0(=[sym(__us_rsthread_malloc)]) != 0.
  The `beq` branch at 0x10125030 targets 0x10125424, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x101250f0 targets 0x101253b4, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x10125108 targets 0x10125118, is taken when t1(?) < t2(?) (signed), and falls through when t1(?) >= t2(?) (signed).
  The `bne` branch at 0x10125114 targets 0x10125330, is taken when a7(?) < 0xb (signed), and falls through when a7(?) >= 0xb (signed).
  The `beq` branch at 0x1012511c targets 0x10125280, is taken when a7(?) == t8(=0x6), and falls through when a7(?) != t8(=0x6).
  The `beq` branch at 0x10125124 targets 0x101252d8, is taken when a7(?) == t9(=0x7), and falls through when a7(?) != t9(=0x7).
  The `beq` branch at 0x10125130 targets 0x10125304, is taken when a7(?) == ra(=0x8), and falls through when a7(?) != ra(=0x8).
  The `beq` branch at 0x1012513c targets 0x10125344, is taken when a7(?) == at(=0x9), and falls through when a7(?) != at(=0x9).
  The `beq` branch at 0x10125144 targets 0x10125368, is taken when a7(?) == v0(=0xa), and falls through when a7(?) != v0(=0xa).
  The `beq` branch at 0x10125150 targets 0x10125388, is taken when a7(?) == v1(=0xb), and falls through when a7(?) != v1(=0xb).
  The `beq` branch at 0x10125178 targets 0x10125448, is taken when v0(=ret(Xalloc)) == 0, and falls through when v0(=ret(Xalloc)) != 0.
  The `beq` branch at 0x101251bc targets 0x101252b0, is taken when (a4(=0x40000000) & a5(?)) == 0, and falls through when (a4(=0x40000000) & a5(?)) != 0.
  The `bne` branch at 0x101251f0 targets 0x10124d74, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0.
  The `beq` branch at 0x101251f8 targets 0x10124db0 and is always taken.
  The `beq` branch at 0x10125214 targets 0x10124b58 and is always taken.
  The `beq` branch at 0x1012521c targets 0x10124cc0 and is always taken.
  The `beq` branch at 0x1012522c targets 0x1012540c, is taken when a3(=[a0]) == 0, and falls through when a3(=[a0]) != 0.
  The `bne` branch at 0x10125240 targets 0x10124f88, is taken when v0(=ret(FakeClientID)) < a2(=(0x40000000 | [a0+4])) (unsigned), and falls through when v0(=ret(FakeClientID)) >= a2(=(0x40000000 | [a0+4])) (unsigned).
  The `bne` branch at 0x10125270 targets 0x10124f8c, is taken when a4(?) < v0(=ret(FakeClientID)) (unsigned), and falls through when a4(?) >= v0(=ret(FakeClientID)) (unsigned).
  The `beq` branch at 0x10125278 targets 0x10124ff4 and is always taken.
  The `beq` branch at 0x101252a8 targets 0x10125158 and is always taken.
  The `bne` branch at 0x101252c0 targets 0x101251c4, is taken when a6(?) < a7(?) (unsigned), and falls through when a6(?) >= a7(?) (unsigned).
  The `beq` branch at 0x101252d0 targets 0x101251c4 and is always taken.
  The `beq` branch at 0x101252fc targets 0x10125158 and is always taken.
  The `beq` branch at 0x10125328 targets 0x10125158 and is always taken.
  The `beq` branch at 0x1012533c targets 0x10125118 and is always taken.
  The `beq` branch at 0x10125360 targets 0x10125158 and is always taken.
  The `beq` branch at 0x10125380 targets 0x10125158 and is always taken.
  The `beq` branch at 0x101253a4 targets 0x10125158 and is always taken.
  The `beq` branch at 0x101253ac targets 0x10124918 and is always taken.
  The `beq` branch at 0x101253e8 targets 0x101250f8 and is always taken.
  The `beq` branch at 0x101253f0 targets 0x10124918 and is always taken.
  The `beq` branch at 0x10125404 targets 0x10124918 and is always taken.
  The `beq` branch at 0x10125414 targets 0x10125248, is taken when v0(=ret(FakeClientID)) >= t1(=([a0+4] | 0x20)) (unsigned), and falls through when v0(=ret(FakeClientID)) < t1(=([a0+4] | 0x20)) (unsigned).
  The `beq` branch at 0x1012541c targets 0x10124f8c and is always taken.
  The `beq` branch at 0x10125428 targets 0x10125440, is taken when t2(=[sym(Must_have_memory)]) == 0, and falls through when t2(=[sym(Must_have_memory)]) != 0.
  The `beq` branch at 0x10125440 targets 0x10124918 and is always taken.
  The `beq` branch at 0x10125474 targets 0x10125500, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10125484 targets 0x10125498, is taken when a2(=[sym(__us_rsthread_malloc)]) == 0, and falls through when a2(=[sym(__us_rsthread_malloc)]) != 0.
  The `beq` branch at 0x101254ac targets 0x101254d0, is taken when a0(=entry(0x102c71c0)) == 0, and falls through when a0(=entry(0x102c71c0)) != 0.
  The `beq` branch at 0x101254e8 targets 0x101254fc, is taken when a5(=[sym(__us_rsthread_malloc)]) == 0, and falls through when a5(=[sym(__us_rsthread_malloc)]) != 0.
  The `beq` branch at 0x10125504 targets 0x1012551c, is taken when a6(=[sym(__us_rsthread_malloc)]) == 0, and falls through when a6(=[sym(__us_rsthread_malloc)]) != 0.
  The `beq` branch at 0x1012552c targets 0x10125550, is taken when a0(=entry(0x102c71c0)) == 0, and falls through when a0(=entry(0x102c71c0)) != 0.
  The `beq` branch at 0x10125568 targets 0x1012557c, is taken when a5(=[sym(__us_rsthread_malloc)]) == 0, and falls through when a5(=[sym(__us_rsthread_malloc)]) != 0.
  The `beq` branch at 0x1012557c targets 0x10124918 and is always taken.
  The `beq` branch at 0x10125594 targets 0x10124918 and is always taken.
  The return at 0x10124910 has v0 = 0x10.
  The return at 0x1012491c has v0 = one of 0x9, [a0+40], 0x8, 0xb, 0xe.
  The return at 0x101249f4 has v0 = 0x8.
  The return at 0x10124a00 has v0 = 0xb.
  The return at 0x10124a24 has v0 = 0xb.
  The return at 0x10124a34 has v0 = 0x9.
- `DeliverEventsToMultibuffer..JMC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10126550 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10126550-0x10126a54 (1284 bytes).
  It occupies 1284 bytes.
  The `lw` at 0x10126550 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x10126554 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x1012658c loads 4 bytes from a0 (arg0 at entry) +0x14.
  2 such `lw` accesses load 4 bytes from sym(clients) +0x0, including `lw` at 0x101265a0, `lw` at 0x10126664.
  17 such `lw` accesses load 4 bytes from ?, including `lw` at 0x101265c8, `lw` at 0x10126650, `lw` at 0x1012665c.
  The `lw` at 0x101265d0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lbu` at 0x1012661c loads 1 byte from table(0x102cc360) +0x0.
  2 such `lw` accesses load 4 bytes from sym(serverClient) +0x0, including `lw` at 0x10126680, `lw` at 0x10126688.
  2 such `lw` accesses load 4 bytes from abs 0x102d20e0 (redirectedEvents), including `lw` at 0x101266dc, `lw` at 0x1012685c.
  The `lbu` at 0x1012675c loads 1 byte from a1 (arg1 at entry) +0x0.
  The `lbu` at 0x10126768 loads 1 byte from a1 (arg1 at entry) +0x1f.
  2 such `lw` accesses load 4 bytes from sym(inputInfo) +0x10, including `lw` at 0x10126770, `lw` at 0x101269cc.
  The `lw` at 0x10126774 loads 4 bytes from sym(inputInfo) +0x4.
  The `lbu` at 0x101267a4 loads 1 byte from [sym(inputInfo)+4] +0x4c.
  The `lbu` at 0x101267b4 loads 1 byte from ?.
  The `lbu` at 0x101267c4 loads 1 byte from [sym(inputInfo)+16] +0x4c.
  The `lw` at 0x101267d0 loads 4 bytes from sym(inputInfo) +0xc.
  The `lbu` at 0x101267d4 loads 1 byte from [sym(inputInfo)+12] +0x4c.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xc, including `lw` at 0x10126800, `lw` at 0x10126958, `lw` at 0x101269e4.
  4 such `sb` accesses store 1 byte to a1 (arg1 at entry) +0x1, including `sb` at 0x1012680c, `sb` at 0x101269f8, `sb` at 0x10126a38.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0x10126874, `sh` at 0x101268b8.
  The `lw` at 0x101268a8 loads 4 bytes from [0x102c5f80] +0x1c.
  The `sw` at 0x101268b0 stores 4 bytes to [0x102c5f80] +0x1c.
  2 such `lw` accesses load 4 bytes from abs 0x94, including `lw` at 0x10126948, `lw` at 0x10126a10.
  2 such `lw` accesses load 4 bytes from [0x94] +0x8, including `lw` at 0x1012694c, `lw` at 0x10126a14.
  The `lw` at 0x101269d8 loads 4 bytes from [sym(inputInfo)+16] +0x94.
  The `lw` at 0x101269dc loads 4 bytes from [[sym(inputInfo)+16]+148] +0x8.
  The `lw` at 0x101269e8 loads 4 bytes from [[[sym(inputInfo)+16]+148]+8] +0x4.
  The `jal` at 0x101265c4 calls TryClientEvents [0x10136730] with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0], a4=a3 at entry (arg3), a5=0x0.
  The `jal` at 0x10126638 calls WriteEventsToClient [0x10180840] with a0=?, a1=a2 at entry (arg2), a2=a1 at entry (arg1), a3=?, a4=table(0x102cc0d0), a6=0xb.
  The `beq` branch at 0x10126580 targets 0x101268bc, is taken when (a3 & at(=([a0+4] | [a0]))) == 0, and falls through when (a3 & at(=([a0+4] | [a0]))) != 0.
  The `beq` branch at 0x101265cc targets 0x101268d8, is taken when v0(=ret(TryClientEvents)) == 0, and falls through when v0(=ret(TryClientEvents)) != 0.
  The `blez` branch at 0x101265d4 targets 0x10126970, is taken when v0(=ret(TryClientEvents)) <= 0 (signed), and falls through when v0(=ret(TryClientEvents)) > 0 (signed).
  The `beq` branch at 0x101265dc targets 0x10126990, is taken when s2(=[a0+8]) == 0, and falls through when s2(=[a0+8]) != 0.
  The `beq` branch at 0x10126614 targets 0x1012665c and is always taken.
  The `beq` branch at 0x10126624 targets 0x10126634, is taken when (t8(=entry(0x102cc360)) & a3(?)) == 0, and falls through when (t8(=entry(0x102cc360)) & a3(?)) != 0.
  The `beq` branch at 0x10126654 targets 0x10126714, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x10126684 targets 0x101266a0, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x1012668c targets 0x101266a0, is taken when a7(=[sym(serverClient)]) == a0(?), and falls through when a7(=[sym(serverClient)]) != a0(?).
  The `beq` branch at 0x10126698 targets 0x1012674c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x101266a0 targets 0x10126650, is taken when v0(=[0x102c5f78]) == 0, and falls through when v0(=[0x102c5f78]) != 0.
  The `beq` branch at 0x101266a8 targets 0x10126650, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x101266b0 targets 0x10126650, is taken when t0(=[sym(serverClient)]) == a0(?), and falls through when t0(=[sym(serverClient)]) != a0(?).
  The `bne` branch at 0x101266bc targets 0x10126650, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `blez` branch at 0x101266c8 targets 0x101266f0, is taken when t3(=[0x102c5f74]) <= 0 (signed), and falls through when t3(=[0x102c5f74]) > 0 (signed).
  The `beq` branch at 0x101266e0 targets 0x10126928, is taken when a7(?) == s3(=a1), and falls through when a7(?) != s3(=a1).
  The `bnel` branch at 0x101266e8 targets 0x101266e0, is taken when v0(?) != t1(=table(0x102d0bb0)), and falls through when v0(?) == t1(=table(0x102d0bb0)); its branch-likely delay slot `lw a7,5424(v0)` at 0x101266ec runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x101266f0 targets 0x10126704, is taken when s6(=a3) == 0, and falls through when s6(=a3) != 0.
  The `beq` branch at 0x101266f8 targets 0x10126704, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x10126704 targets 0x1012675c, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x1012670c targets 0x10126654 and is always taken.
  The `beq` branch at 0x10126718 targets 0x101268fc, is taken when s8(?) == 0, and falls through when s8(?) != 0.
  The `beq` branch at 0x1012674c targets 0x10126758, is taken when s6(=a3) == 0, and falls through when s6(=a3) != 0.
  The `beq` branch at 0x10126754 targets 0x101266a0, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x10126778 targets 0x10126998, is taken when t9(=[0x102c6080]) == a2(=0x1), and falls through when t9(=[0x102c6080]) != a2(=0x1).
  The `beq` branch at 0x10126788 targets 0x101269c4, is taken when v1(=0x6) == a1(=[a1]:1), and falls through when v1(=0x6) != a1(=[a1]:1).
  The `bne` branch at 0x10126790 targets 0x10126814, is taken when t3(=[0x102c6084]) != a1(=[a1]:1), and falls through when t3(=[0x102c6084]) == a1(=[a1]:1).
  The `beq` branch at 0x10126798 targets 0x101269fc, is taken when v0(=[sym(inputInfo)+4]) == 0, and falls through when v0(=[sym(inputInfo)+4]) != 0.
  The `beq` branch at 0x101267a0 targets 0x101267b8 and is always taken.
  The `beq` branch at 0x101267ac targets 0x101269fc, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x101267b8 targets 0x101267a8, is taken when a5(?) != a4(?), and falls through when a5(?) == a4(?).
  The `beq` branch at 0x101267cc targets 0x10126938, is taken when a6(=[[sym(inputInfo)+16]+76]:1) == a4(?), and falls through when a6(=[[sym(inputInfo)+16]+76]:1) != a4(?).
  The `beq` branch at 0x101267d8 targets 0x10126938, is taken when at(=[[sym(inputInfo)+12]+76]:1) == a4(?), and falls through when at(=[[sym(inputInfo)+12]+76]:1) != a4(?).
  The `bne` branch at 0x101267e0 targets 0x10126810, is taken when t3(=[0x102c6084]) != a1(=[a1]:1), and falls through when t3(=[0x102c6084]) == a1(=[a1]:1).
  The `beq` branch at 0x101267e8 targets 0x10126a34, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `bne` branch at 0x101267f8 targets 0x10126958, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x10126804 targets 0x10126968, is taken when a5(=[a1+12]) == 0, and falls through when a5(=[a1+12]) != 0.
  The `beq` branch at 0x10126834 targets 0x1012661c, is taken when a6(=0xb) == a7(?), and falls through when a6(=0xb) != a7(?).
  The `beq` branch at 0x10126840 targets 0x1012661c, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x1012684c targets 0x10126884 and is always taken.
  The `beq` branch at 0x10126860 targets 0x101268a0, is taken when a7(?) == t0(?), and falls through when a7(?) != t0(?).
  The `bnel` branch at 0x10126868 targets 0x10126860, is taken when v0(?) != t1(=table(0x102d0bb0)), and falls through when v0(?) == t1(=table(0x102d0bb0)); its branch-likely delay slot `lw t0,5424(v0)` at 0x1012686c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x1012687c targets 0x1012661c, is taken when a7(?) == s1(=(a1 + (a2 << 0x5))), and falls through when a7(?) != s1(=(a1 + (a2 << 0x5))).
  The `beq` branch at 0x10126884 targets 0x10126870, is taken when t2(=[0x102c5f78]) == 0, and falls through when t2(=[0x102c5f78]) != 0.
  The `bgtz` branch at 0x1012688c targets 0x1012685c, is taken when t3(=[0x102c5f74]) > 0 (signed), and falls through when t3(=[0x102c5f74]) <= 0 (signed).
  The `beq` branch at 0x10126894 targets 0x10126874 and is always taken.
  The `beq` branch at 0x101268a0 targets 0x10126870, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x101268b4 targets 0x10126878 and is always taken.
  The `beq` branch at 0x101268d8 targets 0x101268f8, is taken when s2(=[a0+8]) == 0, and falls through when s2(=[a0+8]) != 0.
  The `beq` branch at 0x101268f0 targets 0x101265f4 and is always taken.
  The `bne` branch at 0x10126928 targets 0x1012675c, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x10126930 targets 0x101266f0 and is always taken.
  The `bne` branch at 0x10126938 targets 0x10126810, is taken when t3(=[0x102c6084]) != a1(=[a1]:1), and falls through when t3(=[0x102c6084]) == a1(=[a1]:1).
  The `beq` branch at 0x10126940 targets 0x10126a34, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x10126950 targets 0x10126800, is taken when a4(=[[0x94]+8]) == 0, and falls through when a4(=[[0x94]+8]) != 0.
  The `bne` branch at 0x10126960 targets 0x1012680c, is taken when a5(?) != a6(=[a1+12]), and falls through when a5(?) == a6(=[a1+12]).
  The `beq` branch at 0x10126968 targets 0x10126650 and is always taken.
  The `beq` branch at 0x10126970 targets 0x10126a28, is taken when s2(=[a0+8]) == 0, and falls through when s2(=[a0+8]) != 0.
  The `beq` branch at 0x10126988 targets 0x101265f4 and is always taken.
  The `beq` branch at 0x10126990 targets 0x10126720 and is always taken.
  The `bne` branch at 0x1012699c targets 0x10126780, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x101269a4 targets 0x10126780, is taken when t3(=0xc) == a1(=[a1]:1), and falls through when t3(=0xc) != a1(=[a1]:1).
  The `beq` branch at 0x101269ac targets 0x10126784, is taken when t9(=0x16) == a1(=[a1]:1), and falls through when t9(=0x16) != a1(=[a1]:1).
  The `beq` branch at 0x101269bc targets 0x10126650 and is always taken.
  The `beq` branch at 0x101269d0 targets 0x10126a4c, is taken when (t2(?) & 0x80) == 0, and falls through when (t2(?) & 0x80) != 0.
  The `beq` branch at 0x101269e0 targets 0x10126a3c, is taken when a4(=[[[sym(inputInfo)+16]+148]+8]) == 0, and falls through when a4(=[[[sym(inputInfo)+16]+148]+8]) != 0.
  The `beq` branch at 0x101269ec targets 0x10126644, is taken when a5(=[[[[sym(inputInfo)+16]+148]+8]+4]) == a3(=[a1+12]), and falls through when a5(=[[[[sym(inputInfo)+16]+148]+8]+4]) != a3(=[a1+12]).
  The `beq` branch at 0x101269f4 targets 0x10126810 and is always taken.
  The `bne` branch at 0x101269fc targets 0x10126810, is taken when t3(=[0x102c6084]) != a1(=[a1]:1), and falls through when t3(=[0x102c6084]) == a1(=[a1]:1).
  The `beq` branch at 0x10126a08 targets 0x10126a34, is taken when (a6(=[0x102cac7c]) & t2(?)) == 0, and falls through when (a6(=[0x102cac7c]) & t2(?)) != 0.
  The `beq` branch at 0x10126a18 targets 0x10126800, is taken when a4(=[[0x94]+8]) == 0, and falls through when a4(=[[0x94]+8]) != 0.
  The `beq` branch at 0x10126a20 targets 0x1012695c and is always taken.
  The `beq` branch at 0x10126a2c targets 0x101268fc and is always taken.
  The `beq` branch at 0x10126a34 targets 0x10126810 and is always taken.
  The `bne` branch at 0x10126a3c targets 0x101269f4, is taken when a3(=[a1+12]) != 0, and falls through when a3(=[a1+12]) == 0.
  The `beq` branch at 0x10126a44 targets 0x10126650 and is always taken.
  The `beq` branch at 0x10126a4c targets 0x10126810 and is always taken.
  The return at 0x10126744 has v0 = one of ?, 0x1.
  The return at 0x101268d0 has v0 = 0x0.
  The return at 0x10126920 has v0 = one of ?, 0x0, -0x1.
  The instructions from 0x10126854 to 0x10126858 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1012689c to 0x1012689c are not reached by any path from the entry, and their branches are not listed.
- `ProcSGISetStereoBuffer..PLD` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1012b3f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1012b3f0-0x1012b4ec (252 bytes).
  It occupies 252 bytes.
  The `lw` at 0x1012b3f0 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x1012b3fc loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x1012b410 loads 4 bytes from [a0+8] +0x4.
  The `lw` at 0x1012b414 loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `lw` at 0x1012b420 loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `lw` at 0x1012b430 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `lbu` at 0x1012b460 loads 1 byte from ?.
  6 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1012b478, `lw` at 0x1012b488, `lw` at 0x1012b4b0.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x18, including `sw` at 0x1012b484, `sw` at 0x1012b49c, `sw` at 0x1012b4bc.
  The `lw` at 0x1012b4e8 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `jal` at 0x1012b448 calls SecurityLookupIDByClass [0x10236190] with a0=a0 at entry (arg0), a1=[[a0+8]+4], a2=0x40000000, a3=0x0.
  The `jalr` at 0x1012b4d4 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1012b400 targets 0x1012b410, is taken when at(=[a0+72]) == v0(=0x3), and falls through when at(=[a0+72]) != v0(=0x3).
  The `bne` branch at 0x1012b418 targets 0x1012b434, is taken when v1(=[a0+48]) != a1(=[[a0+8]+4]), and falls through when v1(=[a0+48]) == a1(=[[a0+8]+4]).
  The `bne` branch at 0x1012b424 targets 0x1012b438, is taken when a2(=[a0+116]) != 0, and falls through when a2(=[a0+116]) == 0.
  The `beq` branch at 0x1012b42c targets 0x1012b460 and is always taken.
  The `beq` branch at 0x1012b458 targets 0x1012b4a8, is taken when v0(=ret(SecurityLookupIDByClass)) == 0, and falls through when v0(=ret(SecurityLookupIDByClass)) != 0.
  The `beq` branch at 0x1012b46c targets 0x1012b488, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bltz` branch at 0x1012b48c targets 0x1012b49c, is taken when a2(?) < 0 (signed), and falls through when a2(?) >= 0 (signed).
  The `bne` branch at 0x1012b494 targets 0x1012b4c0, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x1012b4e4 targets 0x1012b408 and is always taken.
  The return at 0x1012b408 has v0 = one of 0x10, [a0+40].
  The return at 0x1012b480 has v0 = 0x9.
  The return at 0x1012b4a0 has v0 = 0x2.
  The return at 0x1012b4b8 has v0 = 0x9.
- `Type1RegisterFontFileFunctions` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1012c080 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1012c080-0x1012c180 (256 bytes).
  It occupies 256 bytes.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1012c0dc, `lw` at 0x1012c0e0, `lw` at 0x1012c0e8.
  The `sw` at 0x1012c138 stores 4 bytes to ?.
  The `sw` at 0x1012c140 stores 4 bytes to (ret(Xrealloc) + ([0x102c7318]+1 << 0x2)) -0x4.
  The `jal` at 0x1012c094 calls Type1InitStdProps [0x10264750] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1012c0e4 calls strcmp with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1012c11c calls Xrealloc [0x101b9470] with a0=[0x102c731c], a1=([0x102c7318] << 0x2)+4, a2=?, a3=?.
  The `blez` branch at 0x1012c0c0 targets 0x1012c10c, is taken when v0(=[0x102c7318]) <= 0 (signed), and falls through when v0(=[0x102c7318]) > 0 (signed).
  The `beq` branch at 0x1012c0ec targets 0x1012c148, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `bne` branch at 0x1012c104 targets 0x1012c0d0, is taken when s1(?) < v0(=[0x102c7318]) (signed), and falls through when s1(?) >= v0(=[0x102c7318]) (signed).
  The `beq` branch at 0x1012c124 targets 0x1012c148, is taken when v0(=ret(Xrealloc)) == 0, and falls through when v0(=ret(Xrealloc)) != 0.
  The `bne` branch at 0x1012c154 targets 0x1012c0b8, is taken when s5(?) != a3(=0x2), and falls through when s5(?) == a3(=0x2).
  The return at 0x1012c178 has v0 = ?.
- `XkbSendMap..MCF` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1012d490 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1012d490-0x1012ddf0 (2400 bytes).
  It occupies 2400 bytes.
  The `lw` at 0x1012d4a8 loads 4 bytes from a2 (arg2 at entry) +0x4.
  2 such `lbu` accesses load 1 byte from a2 (arg2 at entry) +0xf, including `lbu` at 0x1012d500, `lbu` at 0x1012d584.
  The `lbu` at 0x1012d508 loads 1 byte from a2 (arg2 at entry) +0xe.
  6 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x14, including `lw` at 0x1012d50c, `lw` at 0x1012d6a8, `lw` at 0x1012d7ec.
  The `lw` at 0x1012d518 loads 4 bytes from [a1+20] +0x4.
  59 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1012d530, `lbu` at 0x1012d538, `lbu` at 0x1012d56c.
  61 such `sb` accesses store 1 byte to ?, including `sb` at 0x1012d534, `sb` at 0x1012d53c, `sb` at 0x1012d560.
  12 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x1012d540, `lhu` at 0x1012d5a4, `lhu` at 0x1012d630.
  6 such `sh` accesses store 2 bytes to ?, including `sh` at 0x1012d544, `sh` at 0x1012d5a8, `sh` at 0x1012d634.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x1012d548, `lw` at 0x1012d5c8, `lw` at 0x1012d638.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1012d5bc, `lw` at 0x1012d604, `lw` at 0x1012d610.
  2 such `lbu` accesses load 1 byte from a2 (arg2 at entry) +0x14, including `lbu` at 0x1012d698, `lbu` at 0x1012d780.
  The `lbu` at 0x1012d6a0 loads 1 byte from a2 (arg2 at entry) +0x11.
  3 such `lw` accesses load 4 bytes from [a1+20] +0x10, including `lw` at 0x1012d6ac, `lw` at 0x1012d850, `lw` at 0x1012d910.
  The `lw` at 0x1012d7f8 loads 4 bytes from [a1+20] +0xc.
  3 such `lbu` accesses load 1 byte from a2 (arg2 at entry) +0x18, including `lbu` at 0x1012d830, `lbu` at 0x1012d874, `lbu` at 0x1012d950.
  2 such `lbu` accesses load 1 byte from a2 (arg2 at entry) +0x15, including `lbu` at 0x1012d884, `lbu` at 0x1012d8d0.
  7 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x10, including `lw` at 0x1012d888, `lw` at 0x1012d8d4, `lw` at 0x1012d97c.
  2 such `lw` accesses load 4 bytes from [a1+16] +0xc, including `lw` at 0x1012d88c, `lw` at 0x1012d8d8.
  The `lw` at 0x1012d92c loads 4 bytes from [a1+16] +0x4.
  The `lbu` at 0x1012d968 loads 1 byte from a2 (arg2 at entry) +0x1b.
  3 such `lbu` accesses load 1 byte from a2 (arg2 at entry) +0x19, including `lbu` at 0x1012d96c, `lbu` at 0x1012d99c, `lbu` at 0x1012d9dc.
  3 such `lbu` accesses load 1 byte from a2 (arg2 at entry) +0x1a, including `lbu` at 0x1012d970, `lbu` at 0x1012d9bc, `lbu` at 0x1012d9fc.
  The `lw` at 0x1012d980 loads 4 bytes from [a1+16] +0x8.
  3 such `lhu` accesses load 2 bytes from a2 (arg2 at entry) +0x26, including `lhu` at 0x1012da10, `lhu` at 0x1012da30, `lhu` at 0x1012da58.
  The `lbu` at 0x1012da9c loads 1 byte from a2 (arg2 at entry) +0x1e.
  3 such `lbu` accesses load 1 byte from a2 (arg2 at entry) +0x1c, including `lbu` at 0x1012daa0, `lbu` at 0x1012dadc, `lbu` at 0x1012db14.
  3 such `lbu` accesses load 1 byte from a2 (arg2 at entry) +0x1d, including `lbu` at 0x1012dab0, `lbu` at 0x1012daf4, `lbu` at 0x1012db2c.
  The `lw` at 0x1012dab8 loads 4 bytes from [a1+16] +0x10.
  The `lbu` at 0x1012db58 loads 1 byte from a2 (arg2 at entry) +0x21.
  3 such `lbu` accesses load 1 byte from a2 (arg2 at entry) +0x1f, including `lbu` at 0x1012db5c, `lbu` at 0x1012db8c, `lbu` at 0x1012dbc4.
  3 such `lbu` accesses load 1 byte from a2 (arg2 at entry) +0x20, including `lbu` at 0x1012db6c, `lbu` at 0x1012dba4, `lbu` at 0x1012dbdc.
  The `lw` at 0x1012db74 loads 4 bytes from [a1+20] +0x14.
  The `lbu` at 0x1012dc08 loads 1 byte from a2 (arg2 at entry) +0x24.
  3 such `lbu` accesses load 1 byte from a2 (arg2 at entry) +0x22, including `lbu` at 0x1012dc0c, `lbu` at 0x1012dc3c, `lbu` at 0x1012dc74.
  3 such `lbu` accesses load 1 byte from a2 (arg2 at entry) +0x23, including `lbu` at 0x1012dc14, `lbu` at 0x1012dc54, `lbu` at 0x1012dc8c.
  The `lw` at 0x1012dc24 loads 4 bytes from [a1+16] +0x24.
  The `lbu` at 0x1012dcb8 loads 1 byte from a2 (arg2 at entry) +0x3.
  The `lbu` at 0x1012dcbc loads 1 byte from a2 (arg2 at entry) +0x2.
  The `lbu` at 0x1012dcc0 loads 1 byte from a2 (arg2 at entry) +0x7.
  The `lbu` at 0x1012dcc4 loads 1 byte from a2 (arg2 at entry) +0x4.
  The `lbu` at 0x1012dcc8 loads 1 byte from a2 (arg2 at entry) +0x6.
  The `lbu` at 0x1012dccc loads 1 byte from a2 (arg2 at entry) +0x5.
  The `lbu` at 0x1012dcd0 loads 1 byte from a2 (arg2 at entry) +0xd.
  The `lbu` at 0x1012dcd4 loads 1 byte from a2 (arg2 at entry) +0xc.
  The `lbu` at 0x1012dcd8 loads 1 byte from a2 (arg2 at entry) +0x13.
  The `lbu` at 0x1012dcdc loads 1 byte from a2 (arg2 at entry) +0x12.
  The `lbu` at 0x1012dce0 loads 1 byte from a2 (arg2 at entry) +0x17.
  The `lbu` at 0x1012dce4 loads 1 byte from a2 (arg2 at entry) +0x16.
  The `sb` at 0x1012dce8 stores 1 byte to a2 (arg2 at entry) +0x17.
  The `sb` at 0x1012dcec stores 1 byte to a2 (arg2 at entry) +0x16.
  The `sb` at 0x1012dcf0 stores 1 byte to a2 (arg2 at entry) +0x13.
  The `sb` at 0x1012dcf4 stores 1 byte to a2 (arg2 at entry) +0x12.
  The `sb` at 0x1012dcf8 stores 1 byte to a2 (arg2 at entry) +0xd.
  The `sb` at 0x1012dcfc stores 1 byte to a2 (arg2 at entry) +0xc.
  The `sb` at 0x1012dd00 stores 1 byte to a2 (arg2 at entry) +0x6.
  The `sb` at 0x1012dd04 stores 1 byte to a2 (arg2 at entry) +0x5.
  The `sb` at 0x1012dd08 stores 1 byte to a2 (arg2 at entry) +0x7.
  The `sb` at 0x1012dd0c stores 1 byte to a2 (arg2 at entry) +0x4.
  The `sb` at 0x1012dd10 stores 1 byte to a2 (arg2 at entry) +0x3.
  The `sb` at 0x1012dd14 stores 1 byte to a2 (arg2 at entry) +0x2.
  The `lw` at 0x1012dd4c loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `jalr` at 0x1012d804 calls memcpy with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1012d948 calls memcpy with a0=?, a1=?, a2=?, a3=?, a7=[a2+24]:1.
  The `jal` at 0x1012dd30 calls WriteToClient [0x100b3500] with a0=a0 at entry (arg0), a1=0x28, a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x1012dd44 calls WriteToClient [0x100b3500] with a0=a0 at entry (arg0), a1=([a2+4] << 0x2)-8, a2=?, a3=?.
  The `jal` at 0x1012dd84 calls ErrorF [0x10094ec0] with a0=0x1029b4c8, a1=([a2+4] << 0x2)-8, a2=?, a3=?, a7=[a2+35]:1.
  The `beq` branch at 0x1012d4f8 targets 0x1012dd94, is taken when sp(?) == 0, and falls through when sp(?) != 0.
  The `blez` branch at 0x1012d504 targets 0x1012d698, is taken when t9(=[a2+15]:1) <= 0 (signed), and falls through when t9(=[a2+15]:1) > 0 (signed).
  The `beq` branch at 0x1012d520 targets 0x1012d594 and is always taken.
  The `beq` branch at 0x1012d558 targets 0x1012d568, is taken when t3(=[a0+16]) == 0, and falls through when t3(=[a0+16]) != 0.
  The `bne` branch at 0x1012d574 targets 0x1012d530, is taken when a7(?) < t9(?) (unsigned), and falls through when a7(?) >= t9(?) (unsigned).
  The `beq` branch at 0x1012d58c targets 0x1012d694, is taken when a0(?) >= at(=[a2+15]:1) (unsigned), and falls through when a0(?) < at(=[a2+15]:1) (unsigned).
  The `beq` branch at 0x1012d5d8 targets 0x1012d5e8, is taken when a7(=[a0+16]) == 0, and falls through when a7(=[a0+16]) != 0.
  The `blez` branch at 0x1012d5f0 targets 0x1012d584, is taken when t8(?) <= 0 (signed), and falls through when t8(?) > 0 (signed).
  The `beq` branch at 0x1012d600 targets 0x1012d66c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x1012d648 targets 0x1012d658, is taken when t3(=[a0+16]) == 0, and falls through when t3(=[a0+16]) != 0.
  The `bne` branch at 0x1012d664 targets 0x1012d610, is taken when a6(?) < t1(?) (unsigned), and falls through when a6(?) >= t1(?) (unsigned).
  The `beq` branch at 0x1012d67c targets 0x1012d584, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x1012d684 targets 0x1012d530, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x1012d68c targets 0x1012d57c and is always taken.
  The `blez` branch at 0x1012d69c targets 0x1012d830, is taken when v1(=[a2+20]:1) <= 0 (signed), and falls through when v1(=[a2+20]:1) > 0 (signed).
  The `beq` branch at 0x1012d6b4 targets 0x1012d794 and is always taken.
  The `blez` branch at 0x1012d6dc targets 0x1012d768, is taken when a6(?) <= 0 (signed), and falls through when a6(?) > 0 (signed).
  The `bne` branch at 0x1012d6e4 targets 0x1012ddcc, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x1012d730 targets 0x1012d828, is taken when a1(?) == v0(?), and falls through when a1(?) != v0(?).
  The `bne` branch at 0x1012d758 targets 0x1012d710, is taken when a3(?) != v0(?), and falls through when a3(?) == v0(?).
  The `beq` branch at 0x1012d76c targets 0x1012d778, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x1012d78c targets 0x1012d830, is taken when s4(?) >= t9(=[a2+20]:1) (unsigned), and falls through when s4(?) < t9(=[a2+20]:1) (unsigned).
  The `beq` branch at 0x1012d7e0 targets 0x1012d780, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x1012d814 targets 0x1012d6c0, is taken when a2(=[a0+16]) != 0, and falls through when a2(=[a0+16]) == 0.
  The `beq` branch at 0x1012d820 targets 0x1012d780 and is always taken.
  The `beq` branch at 0x1012d828 targets 0x1012d760 and is always taken.
  The `blez` branch at 0x1012d834 targets 0x1012d968, is taken when a4(=[a2+24]:1) <= 0 (signed), and falls through when a4(=[a2+24]:1) > 0 (signed).
  The `beq` branch at 0x1012d83c targets 0x1012d884 and is always taken.
  The `beq` branch at 0x1012d87c targets 0x1012d8b8, is taken when a6(?) >= a7(=[a2+24]:1) (unsigned), and falls through when a6(?) < a7(=[a2+24]:1) (unsigned).
  The `bne` branch at 0x1012d8a8 targets 0x1012d850, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `beq` branch at 0x1012d8b0 targets 0x1012d874 and is always taken.
  The `beq` branch at 0x1012d8c8 targets 0x1012d964, is taken when a7(=[a2+24]:1) == 0, and falls through when a7(=[a2+24]:1) != 0.
  The `beq` branch at 0x1012d8e4 targets 0x1012d8fc and is always taken.
  The `beq` branch at 0x1012d8f4 targets 0x1012d964, is taken when a6(?) >= a7(=[a2+24]:1) (unsigned), and falls through when a6(?) < a7(=[a2+24]:1) (unsigned).
  The `beq` branch at 0x1012d904 targets 0x1012d8ec, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x1012d95c targets 0x1012d8d0, is taken when s3(?) < a7(=[a2+24]:1) (unsigned), and falls through when s3(?) >= a7(=[a2+24]:1) (unsigned).
  The `blez` branch at 0x1012d974 targets 0x1012da10, is taken when a5(=[a2+27]:1) <= 0 (signed), and falls through when a5(=[a2+27]:1) > 0 (signed).
  The `beq` branch at 0x1012d988 targets 0x1012da10, is taken when a7(=[a2+26]:1) == 0, and falls through when a7(=[a2+26]:1) != 0.
  The `beq` branch at 0x1012d994 targets 0x1012d9c0, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x1012d9c8 targets 0x1012da10, is taken when a5(?) >= a7(=[a2+26]:1) (unsigned), and falls through when a5(?) < a7(=[a2+26]:1) (unsigned).
  The `beq` branch at 0x1012d9d4 targets 0x1012da00, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x1012da08 targets 0x1012d990, is taken when a5(?) < a7(=[a2+26]:1) (unsigned), and falls through when a5(?) >= a7(=[a2+26]:1) (unsigned).
  The `beq` branch at 0x1012da14 targets 0x1012da9c, is taken when a0(=[a2+38]:2) == 0, and falls through when a0(=[a2+38]:2) != 0.
  The `beq` branch at 0x1012da38 targets 0x1012da58, is taken when (t0(?) & a1(=[a2+38]:2)) == 0, and falls through when (t0(?) & a1(=[a2+38]:2)) != 0.
  The `beq` branch at 0x1012da64 targets 0x1012da84, is taken when (t0(?) & t1(=[a2+38]:2)) == 0, and falls through when (t0(?) & t1(=[a2+38]:2)) != 0.
  The `bne` branch at 0x1012da88 targets 0x1012da30, is taken when a5(?) != a0(=0x10), and falls through when a5(?) == a0(=0x10).
  The `blez` branch at 0x1012daac targets 0x1012db58, is taken when t9(=[a2+30]:1) <= 0 (signed), and falls through when t9(=[a2+30]:1) > 0 (signed).
  The `beq` branch at 0x1012dabc targets 0x1012db40, is taken when a7(=[a2+29]:1) == 0, and falls through when a7(=[a2+29]:1) != 0.
  The `beq` branch at 0x1012dad4 targets 0x1012daf8, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x1012db00 targets 0x1012db40, is taken when a5(?) >= a7(=[a2+29]:1) (unsigned), and falls through when a5(?) < a7(=[a2+29]:1) (unsigned).
  The `beq` branch at 0x1012db0c targets 0x1012db30, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `bne` branch at 0x1012db38 targets 0x1012dad0, is taken when a5(?) < a7(=[a2+29]:1) (unsigned), and falls through when a5(?) >= a7(=[a2+29]:1) (unsigned).
  The `blez` branch at 0x1012db68 targets 0x1012dc08, is taken when ra(=[a2+33]:1) <= 0 (signed), and falls through when ra(=[a2+33]:1) > 0 (signed).
  The `beq` branch at 0x1012db78 targets 0x1012dbf0, is taken when a7(=[a2+32]:1) == 0, and falls through when a7(=[a2+32]:1) != 0.
  The `beq` branch at 0x1012db84 targets 0x1012dba8, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x1012dbb0 targets 0x1012dbf0, is taken when a5(?) >= a7(=[a2+32]:1) (unsigned), and falls through when a5(?) < a7(=[a2+32]:1) (unsigned).
  The `beq` branch at 0x1012dbbc targets 0x1012dbe0, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `bne` branch at 0x1012dbe8 targets 0x1012db80, is taken when a5(?) < a7(=[a2+32]:1) (unsigned), and falls through when a5(?) >= a7(=[a2+32]:1) (unsigned).
  The `blez` branch at 0x1012dc18 targets 0x1012dca0, is taken when ra(=[a2+36]:1) <= 0 (signed), and falls through when ra(=[a2+36]:1) > 0 (signed).
  The `beq` branch at 0x1012dc28 targets 0x1012dca0, is taken when a7(=[a2+35]:1) == 0, and falls through when a7(=[a2+35]:1) != 0.
  The `beq` branch at 0x1012dc34 targets 0x1012dc58, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x1012dc60 targets 0x1012dca0, is taken when a5(?) >= a7(=[a2+35]:1) (unsigned), and falls through when a5(?) < a7(=[a2+35]:1) (unsigned).
  The `beq` branch at 0x1012dc6c targets 0x1012dc90, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x1012dc98 targets 0x1012dc30, is taken when a5(?) < a7(=[a2+35]:1) (unsigned), and falls through when a5(?) >= a7(=[a2+35]:1) (unsigned).
  The `bne` branch at 0x1012dca4 targets 0x1012dd7c, is taken when a2(?) != s7(=([a2+4] << 0x2)-8), and falls through when a2(?) == s7(=([a2+4] << 0x2)-8).
  The `beq` branch at 0x1012dcb0 targets 0x1012dd1c, is taken when v0(=[a0+16]) == 0, and falls through when v0(=[a0+16]) != 0.
  The `beq` branch at 0x1012dd8c targets 0x1012dcb0 and is always taken.
  The `beq` branch at 0x1012dde8 targets 0x1012d768 and is always taken.
  The return at 0x1012dd74 has v0 = [a0+40].
  The return at 0x1012ddc4 has v0 = 0xb.
  The instructions from 0x1012d528 to 0x1012d52c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1012d6bc to 0x1012d6bc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1012d844 to 0x1012d84c are not reached by any path from the entry, and their branches are not listed.
- `FontFileRegisterRenderer` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10131b90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10131b90-0x10131ca8 (280 bytes).
  It occupies 280 bytes.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10131bd8, `lw` at 0x10131be4.
  The `lw` at 0x10131bdc loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0x10131c44 stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `sw` at 0x10131c54 stores 4 bytes to (ret(Xrealloc) + ([0x102c7318]+1 << 0x2)) -0x4.
  The `jalr` at 0x10131be0 calls strcmp with a0=?, a1=[a0], a2=?, a3=?.
  The `jal` at 0x10131c18 calls Xrealloc [0x101b9470] with a0=[0x102c731c], a1=([0x102c7318] << 0x2)+4, a2=?, a3=?.
  The `blez` branch at 0x10131bc4 targets 0x10131c04, is taken when v0(=[0x102c7318]) <= 0 (signed), and falls through when v0(=[0x102c7318]) > 0 (signed).
  The `beq` branch at 0x10131be8 targets 0x10131c84, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `bne` branch at 0x10131bfc targets 0x10131bd0, is taken when s1(?) < v0(=[0x102c7318]) (signed), and falls through when s1(?) >= v0(=[0x102c7318]) (signed).
  The `beq` branch at 0x10131c2c targets 0x10131c64, is taken when v0(=ret(Xrealloc)) == 0, and falls through when v0(=ret(Xrealloc)) != 0.
  The return at 0x10131c5c has v0 = 0x1.
  The return at 0x10131c7c has v0 = 0x0.
  The return at 0x10131ca0 has v0 = 0x1.
- `sgiCapPaintWindowBorder..BBE` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10134a10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10134a10-0x10134b18 (264 bytes).
  It occupies 264 bytes.
  The `lw` at 0x10134a24 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x10134a34 loads 4 bytes from [a0+16] +0x1b4.
  2 such `lw` accesses load 4 bytes from ([[a0+16]+436] + ([0x102cf2c4] << 0x2)) +0x0, including `lw` at 0x10134a40, `lw` at 0x10134a4c.
  The `lw` at 0x10134a44 loads 4 bytes from [([[a0+16]+436] + ([0x102cf2c4] << 0x2))] +0x18.
  2 such `sw` accesses store 4 bytes to [a0+16] +0xdc, including `sw` at 0x10134a48, `sw` at 0x10134ac8.
  The `lw` at 0x10134a54 loads 4 bytes from [([[a0+16]+436] + ([0x102cf2c4] << 0x2))] +0x28.
  The `lw` at 0x10134a6c loads 4 bytes from [([[a0+16]+436] + ([0x102cf2c4] << 0x2))] +0x2c.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10134a80, `lw` at 0x10134a8c, `lw` at 0x10134af4.
  2 such `lw` accesses load 4 bytes from [a0+16] +0xdc, including `lw` at 0x10134a98, `lw` at 0x10134b14.
  The `lw` at 0x10134ad8 loads 4 bytes from [a0+16] +0x17c.
  The `lw` at 0x10134af0 loads 4 bytes from [a0+16] +0x168.
  The `jalr` at 0x10134aa8 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0x10134ae0 calls (unknown callee) with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x10134afc calls (unknown callee) with a0=?, a1=?, a2=a1 at entry (arg1), a3=?.
  The `beq` branch at 0x10134a68 targets 0x10134a9c, is taken when at(=[[([[a0+16]+436] + ([0x102cf2c4] << 0x2))]+40]) == 0, and falls through when at(=[[([[a0+16]+436] + ([0x102cf2c4] << 0x2))]+40]) != 0.
  The `beq` branch at 0x10134a70 targets 0x10134a9c, is taken when s0(=[[([[a0+16]+436] + ([0x102cf2c4] << 0x2))]+44]) == 0, and falls through when s0(=[[([[a0+16]+436] + ([0x102cf2c4] << 0x2))]+44]) != 0.
  The `beq` branch at 0x10134a84 targets 0x10134ad8, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x10134a90 targets 0x10134a80, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x10134ae8 targets 0x10134b04, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `bne` branch at 0x10134b08 targets 0x10134a80, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x10134b10 targets 0x10134a9c and is always taken.
  The return at 0x10134ad0 has v0 = ret(?).
- `MakeWindowOptional` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10135300 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10135300-0x10135414 (276 bytes).
  It occupies 276 bytes.
  The `lw` at 0x10135300 loads 4 bytes from a0 (arg0 at entry) +0x78.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0x10135358, `lw` at 0x101353bc.
  The `sw` at 0x1013535c stores 4 bytes to ret(Xalloc) +0x10.
  The `sw` at 0x10135360 stores 4 bytes to ret(Xalloc) +0x14.
  The `sw` at 0x10135364 stores 4 bytes to ret(Xalloc) +0x18.
  The `sw` at 0x10135368 stores 4 bytes to ret(Xalloc) +0x1c.
  The `sw` at 0x1013536c stores 4 bytes to ret(Xalloc) +0x20.
  The `sw` at 0x10135370 stores 4 bytes to ret(Xalloc) +0x24.
  The `sw` at 0x10135378 stores 4 bytes to ret(Xalloc) +0x28.
  The `sw` at 0x10135380 stores 4 bytes to ret(Xalloc) +0x2c.
  The `sw` at 0x10135388 stores 4 bytes to ret(Xalloc) +0x30.
  7 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10135390, `lw` at 0x101353a0, `lw` at 0x101353a4.
  The `sw` at 0x10135394 stores 4 bytes to ret(Xalloc) +0xc.
  The `sw` at 0x101353b8 stores 4 bytes to ret(Xalloc) +0x0.
  2 such `sw` accesses store 4 bytes to ret(Xalloc) +0x4, including `sw` at 0x101353d0, `sw` at 0x10135400.
  The `sw` at 0x101353dc stores 4 bytes to ?.
  The `sw` at 0x101353ec stores 4 bytes to ret(Xalloc) +0x8.
  The `sw` at 0x101353f8 stores 4 bytes to a0 (arg0 at entry) +0x78.
  The `jal` at 0x10135334 calls Xalloc [0x1020aeb0] with a0=0x34, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10135318 targets 0x1013532c, is taken when v1(=[a0+120]) == 0, and falls through when v1(=[a0+120]) != 0.
  The `beq` branch at 0x10135340 targets 0x10135404, is taken when v0(=ret(Xalloc)) == 0, and falls through when v0(=ret(Xalloc)) != 0.
  The `beq` branch at 0x101353a8 targets 0x101353a0, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bltz` branch at 0x101353c4 targets 0x101353fc, is taken when a3(=([a0+124] << 0x3)) < 0 (signed), and falls through when a3(=([a0+124] << 0x3)) >= 0 (signed).
  The `beq` branch at 0x101353fc targets 0x101353e0 and is always taken.
  The return at 0x10135324 has v0 = 0x1.
  The return at 0x101353f4 has v0 = 0x1.
  The return at 0x1013540c has v0 = 0x0.
- `ProcClearImageBufferArea..IKC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10135d60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10135d60-0x10136204 (1188 bytes).
  It occupies 1188 bytes.
  The `lw` at 0x10135d60 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x10135d64 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x10135da4 loads 4 bytes from [a0+8] +0x4.
  The `lw` at 0x10135dac loads 4 bytes from ret(SecurityLookupIDByType) +0x84.
  The `lw` at 0x10135db8 loads 4 bytes from ([ret(SecurityLookupIDByType)+132] + ([0x102cc3a8] << 0x2)) +0x0.
  The `lw` at 0x10135dbc loads 4 bytes from [([ret(SecurityLookupIDByType)+132] + ([0x102cc3a8] << 0x2))] +0x4.
  The `lw` at 0x10135dc8 loads 4 bytes from [([ret(SecurityLookupIDByType)+132] + ([0x102cc3a8] << 0x2))] +0x1c.
  31 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10135ddc, `lw` at 0x10135df0, `lw` at 0x10135ed0.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x10135e20, `lbu` at 0x10136088.
  The `sw` at 0x10135e4c stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `lw` at 0x10135e50 loads 4 bytes from ret(SecurityLookupIDByType) +0x10.
  The `lhu` at 0x10135e54 loads 2 bytes from ret(SecurityLookupIDByType) +0xe.
  The `lhu` at 0x10135e5c loads 2 bytes from ret(SecurityLookupIDByType) +0xc.
  3 such `lh` accesses load 2 bytes from ?, including `lh` at 0x10135e60, `lh` at 0x10135e68, `lh` at 0x10136044.
  2 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x10135e70, `lhu` at 0x10135e84.
  The `lw` at 0x10135e94 loads 4 bytes from ret(SecurityLookupIDByType) +0x7c.
  The `lbu` at 0x10135eb4 loads 1 byte from ret(SecurityLookupIDByType) +0x2.
  The `lw` at 0x10135ee4 loads 4 bytes from sym(dbcWindowPrivateIndex) +0x0.
  3 such `lb` accesses load 1 byte from ?, including `lb` at 0x10135f30, `lb` at 0x10135f34, `lb` at 0x10136138.
  The `lw` at 0x10135f40 loads 4 bytes from sym(globalSerialNumber) +0x0.
  The `sb` at 0x10135f54 stores 1 byte to ?.
  2 such `sw` accesses store 4 bytes to sym(globalSerialNumber) +0x0, including `sw` at 0x10135f60, `sw` at 0x10135f64.
  The `lw` at 0x10135f78 loads 4 bytes from sym(clients) +0x0.
  12 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10135f84, `sw` at 0x1013601c, `sw` at 0x10136028.
  The `lw` at 0x10135fb8 loads 4 bytes from sym(WindowTable) +0x0.
  The `lw` at 0x10135fbc loads 4 bytes from [sym(clients)] +0x0.
  The `lw` at 0x10135fc8 loads 4 bytes from [[sym(clients)]] +0x30.
  6 such `lw` accesses load 4 bytes from [sym(WindowTable)] +0x0, including `lw` at 0x10135fd4, `lw` at 0x10135fe0, `lw` at 0x10136168.
  3 such `lw` accesses load 4 bytes from [[sym(WindowTable)]] +0x4, including `lw` at 0x10135fd8, `lw` at 0x10136160, `lw` at 0x10136194.
  The `sw` at 0x10135fdc stores 4 bytes to [[sym(clients)]] +0x30.
  The `sw` at 0x10135fe4 stores 4 bytes to [[sym(clients)]] +0x2c.
  The `lw` at 0x101361ec loads 4 bytes from [[sym(clients)]] +0x38.
  The `sw` at 0x101361f8 stores 4 bytes to [[sym(clients)]] +0x34.
  The `sw` at 0x10136200 stores 4 bytes to [[sym(clients)]] +0x38.
  The `jal` at 0x10135da0 calls SecurityLookupIDByType [0x100d6140] with a0=0x0, a1=[[a0+8]+4], a2=[0x102ca7ec], a3=0x0.
  The `jal` at 0x10135eb0 calls GetScratchGC [0x1026a500] with a0=[ret(SecurityLookupIDByType)+2]:1, a1=[ret(SecurityLookupIDByType)+16], a2=?, a3=?, a5=[ret(SecurityLookupIDByType)+12]:2, a6=[ret(SecurityLookupIDByType)+14]:2, a7=[ret(SecurityLookupIDByType)+16].
  The `jal` at 0x10135ec0 calls SetupBackgroundPainter..PJC [0x101b40e0] with a0=?, a1=ret(GetScratchGC), a2=?, a3=?.
  The `jalr` at 0x1013600c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10136034 calls (unknown callee) with a0=?, a1=?, a2=0x1, a3=sp-96.
  The `jal` at 0x1013607c calls FreeGC [0x1010a5b0] with a0=?, a1=0x0, a2=?, a3=?.
  The `jalr` at 0x101360c8 calls (unknown callee) with a0=sp-80, a1=sp-88, a2=0x1, a3=?.
  The `jal` at 0x101360d4 calls MultibufferExpose [0x1011d7a0] with a0=?, a1=sp-80, a2=?, a3=?.
  The `jalr` at 0x101360e4 calls (unknown callee) with a0=sp-80, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10135d74 targets 0x10135d88, is taken when at(=[a0+72]) == v0(=0x5), and falls through when at(=[a0+72]) != v0(=0x5).
  The `blez` branch at 0x10135dc0 targets 0x10135e04, is taken when t0(=[[([ret(SecurityLookupIDByType)+132] + ([0x102cc3a8] << 0x2))]+4]) <= 0 (signed), and falls through when t0(=[[([ret(SecurityLookupIDByType)+132] + ([0x102cc3a8] << 0x2))]+4]) > 0 (signed).
  The `beq` branch at 0x10135df4 targets 0x10135e18, is taken when t2(?) == a5(?), and falls through when t2(?) != a5(?).
  The `bne` branch at 0x10135e00 targets 0x10135df0, is taken when a1(?) != a6(?), and falls through when a1(?) == a6(?).
  The `beq` branch at 0x10135e18 targets 0x10135e04, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10135e28 targets 0x10135e50, is taken when a2(=0x1) == a1(?), and falls through when a2(=0x1) != a1(?).
  The `beq` branch at 0x10135e30 targets 0x10135e50, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10135e74 targets 0x10136150, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x10135e88 targets 0x10136158, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x10135e9c targets 0x10136084, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `blez` branch at 0x10135ef0 targets 0x10135f30, is taken when t0(?) <= 0 (signed), and falls through when t0(?) > 0 (signed).
  The `beq` branch at 0x10135f1c targets 0x10136120, is taken when t8(?) == a5(?), and falls through when t8(?) != a5(?).
  The `bnel` branch at 0x10135f28 targets 0x10135f1c, is taken when a6(?) != a7(?), and falls through when a6(?) == a7(?); its branch-likely delay slot `lw t8,20(a6)` at 0x10135f2c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x10135f38 targets 0x10135ff8, is taken when t9(?) == a5(?), and falls through when t9(?) != a5(?).
  The `beq` branch at 0x10135f50 targets 0x10135f64, is taken when ra(=0x10000000) >= t0(=[sym(globalSerialNumber)]+1) (unsigned), and falls through when ra(=0x10000000) < t0(=[sym(globalSerialNumber)]+1) (unsigned).
  The `beq` branch at 0x10135f5c targets 0x10135f68 and is always taken.
  The `beq` branch at 0x10135f90 targets 0x10135ff8, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `blez` branch at 0x10135f98 targets 0x10135ffc, is taken when a5(=[0x102c5d70]) <= 0 (signed), and falls through when a5(=[0x102c5d70]) > 0 (signed).
  The `beq` branch at 0x10135fb4 targets 0x10135fec, is taken when (a5(=[0x102c5d70]) & 0x1) == 0, and falls through when (a5(=[0x102c5d70]) & 0x1) != 0.
  The `beq` branch at 0x10135fc0 targets 0x10135fe8, is taken when a5(=[[sym(clients)]]) == 0, and falls through when a5(=[[sym(clients)]]) != 0.
  The `bne` branch at 0x10135fcc targets 0x101361ec, is taken when t3(=[[[sym(clients)]]+48]) != a7(?), and falls through when t3(=[[[sym(clients)]]+48]) == a7(?).
  The `bnel` branch at 0x10135ff0 targets 0x1013617c, is taken when ra(?) != 0, and falls through when ra(?) == 0; its branch-likely delay slot `lw a5,0(a6)` at 0x10135ff4 runs only when taken and is annulled on fall-through.
  The `bltz` branch at 0x10136048 targets 0x10136074, is taken when a6(?) < 0 (signed), and falls through when a6(?) >= 0 (signed).
  The `beq` branch at 0x10136064 targets 0x10136100, is taken when a1(?) == v0(?), and falls through when a1(?) != v0(?).
  The `beq` branch at 0x1013606c targets 0x1013605c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x1013608c targets 0x101360ec, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x10136118 targets 0x10136084 and is always taken.
  The `beq` branch at 0x10136120 targets 0x10135f30, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x10136130 targets 0x10135f30, is taken when v1(?) == a0(?), and falls through when v1(?) != a0(?).
  The `beq` branch at 0x10136148 targets 0x10135f34 and is always taken.
  The `beq` branch at 0x10136150 targets 0x10135e7c and is always taken.
  The `beq` branch at 0x10136158 targets 0x10135e90 and is always taken.
  The `beq` branch at 0x10136170 targets 0x10135ff8, is taken when a6(?) == t0(=(([0x102c5d70] << 0x2) + [sym(clients)])), and falls through when a6(?) != t0(=(([0x102c5d70] << 0x2) + [sym(clients)])).
  The `beq` branch at 0x1013617c targets 0x101361a4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x10136188 targets 0x101361c4, is taken when t9(?) != a7(?), and falls through when t9(?) == a7(?).
  The `beq` branch at 0x101361a8 targets 0x10136170, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x101361b4 targets 0x101361d8, is taken when v0(?) != a7(?), and falls through when v0(?) == a7(?).
  The `beq` branch at 0x101361bc targets 0x10136160 and is always taken.
  The `bne` branch at 0x101361c4 targets 0x101361a4, is taken when t1(?) != a7(?), and falls through when t1(?) == a7(?).
  The `beq` branch at 0x101361d0 targets 0x101361a4 and is always taken.
  The `bne` branch at 0x101361d8 targets 0x10136170, is taken when t1(?) != a7(?), and falls through when t1(?) == a7(?).
  The `beq` branch at 0x101361e4 targets 0x10136170 and is always taken.
  The `bne` branch at 0x101361f0 targets 0x10135fe8, is taken when v1(=[[[sym(clients)]]+56]) != a7(?), and falls through when v1(=[[[sym(clients)]]+56]) == a7(?).
  The `beq` branch at 0x101361fc targets 0x10135fe8 and is always taken.
  The return at 0x10135d80 has v0 = 0x10.
  The return at 0x10135e10 has v0 = [0x102ca7e8].
  The return at 0x10135e48 has v0 = 0x2.
  The return at 0x101360f8 has v0 = 0x0.
- `SProcCreateImageBuffers..DLC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10137b40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10137b40-0x10138288 (1864 bytes).
  It occupies 1864 bytes.
  The `lw` at 0x10137b48 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lbu` at 0x10137b4c loads 1 byte from [a0+8] +0x3.
  The `lbu` at 0x10137b50 loads 1 byte from [a0+8] +0x2.
  The `sb` at 0x10137b54 stores 1 byte to [a0+8] +0x3.
  The `sb` at 0x10137b58 stores 1 byte to [a0+8] +0x2.
  The `lw` at 0x10137b5c loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lbu` at 0x10137b70 loads 1 byte from [a0+8] +0x7.
  The `lbu` at 0x10137b90 loads 1 byte from [a0+8] +0x4.
  The `sb` at 0x10137b94 stores 1 byte to [a0+8] +0x4.
  The `lbu` at 0x10137b9c loads 1 byte from [a0+8] +0x6.
  The `lhu` at 0x10137ba0 loads 2 bytes from [a0+8] +0x2.
  The `lbu` at 0x10137ba4 loads 1 byte from [a0+8] +0x5.
  The `sb` at 0x10137ba8 stores 1 byte to [a0+8] +0x6.
  The `sb` at 0x10137bb4 stores 1 byte to [a0+8] +0x7.
  The `sb` at 0x10137bc8 stores 1 byte to [a0+8] +0x5.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x29, including `lbu` at 0x10137be8, `lbu` at 0x1013815c.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x1d, including `lbu` at 0x10137bec, `lbu` at 0x101381bc.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x1c, including `lbu` at 0x10137bf0, `lbu` at 0x101381cc.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x1a, including `lbu` at 0x10137bf4, `lbu` at 0x101381d8.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x19, including `lbu` at 0x10137bf8, `lbu` at 0x101381dc.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x1b, including `lbu` at 0x10137c00, `lbu` at 0x101381e8.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x18, including `lbu` at 0x10137c04, `lbu` at 0x101381ec.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x16, including `lbu` at 0x10137c08, `lbu` at 0x101381f8.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x15, including `lbu` at 0x10137c0c, `lbu` at 0x101381fc.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x17, including `lbu` at 0x10137c10, `lbu` at 0x10138208.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x14, including `lbu` at 0x10137c14, `lbu` at 0x1013820c.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x12, including `lbu` at 0x10137c18, `lbu` at 0x10138218.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x11, including `lbu` at 0x10137c1c, `lbu` at 0x1013821c.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x13, including `lbu` at 0x10137c24, `lbu` at 0x10138228.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x10, including `lbu` at 0x10137c28, `lbu` at 0x1013822c.
  2 such `lbu` accesses load 1 byte from [a0+8] +0xe, including `lbu` at 0x10137c30, `lbu` at 0x10138238.
  2 such `lbu` accesses load 1 byte from [a0+8] +0xd, including `lbu` at 0x10137c38, `lbu` at 0x1013823c.
  2 such `lbu` accesses load 1 byte from [a0+8] +0xf, including `lbu` at 0x10137c40, `lbu` at 0x10138248.
  2 such `lbu` accesses load 1 byte from [a0+8] +0xc, including `lbu` at 0x10137c48, `lbu` at 0x1013824c.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x20, including `lbu` at 0x10137c50, `lbu` at 0x101381ac.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x23, including `lbu` at 0x10137c54, `lbu` at 0x101381a8.
  2 such `sb` accesses store 1 byte to [a0+8] +0x20, including `sb` at 0x10137c58, `sb` at 0x101381b4.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x1f, including `lbu` at 0x10137c5c, `lbu` at 0x101381c8.
  2 such `sb` accesses store 1 byte to [a0+8] +0x23, including `sb` at 0x10137c64, `sb` at 0x101381b0.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x1e, including `lbu` at 0x10137c68, `lbu` at 0x101381b8.
  89 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x10137c80, `lbu` at 0x10137cdc, `lbu` at 0x10137ce0.
  110 such `sb` accesses store 1 byte to ?, including `sb` at 0x10137c84, `sb` at 0x10137c88, `sb` at 0x10137c8c.
  The `lbu` at 0x10138158 loads 1 byte from [a0+8] +0x2a.
  The `sb` at 0x10138160 stores 1 byte to [a0+8] +0x2a.
  The `sb` at 0x10138164 stores 1 byte to [a0+8] +0x29.
  The `lbu` at 0x10138168 loads 1 byte from [a0+8] +0x2b.
  The `lbu` at 0x1013816c loads 1 byte from [a0+8] +0x28.
  The `sb` at 0x10138170 stores 1 byte to [a0+8] +0x2b.
  The `sb` at 0x10138174 stores 1 byte to [a0+8] +0x28.
  The `lbu` at 0x10138178 loads 1 byte from [a0+8] +0x26.
  The `lbu` at 0x1013817c loads 1 byte from [a0+8] +0x25.
  The `sb` at 0x10138180 stores 1 byte to [a0+8] +0x26.
  The `sb` at 0x10138184 stores 1 byte to [a0+8] +0x25.
  The `lbu` at 0x10138188 loads 1 byte from [a0+8] +0x27.
  The `lbu` at 0x1013818c loads 1 byte from [a0+8] +0x24.
  The `sb` at 0x10138190 stores 1 byte to [a0+8] +0x27.
  The `sb` at 0x10138194 stores 1 byte to [a0+8] +0x24.
  The `lbu` at 0x10138198 loads 1 byte from [a0+8] +0x22.
  The `lbu` at 0x1013819c loads 1 byte from [a0+8] +0x21.
  The `sb` at 0x101381a0 stores 1 byte to [a0+8] +0x22.
  The `sb` at 0x101381a4 stores 1 byte to [a0+8] +0x21.
  The `sb` at 0x101381c0 stores 1 byte to [a0+8] +0x1e.
  The `sb` at 0x101381c4 stores 1 byte to [a0+8] +0x1d.
  The `sb` at 0x101381d0 stores 1 byte to [a0+8] +0x1f.
  The `sb` at 0x101381d4 stores 1 byte to [a0+8] +0x1c.
  The `sb` at 0x101381e0 stores 1 byte to [a0+8] +0x1a.
  The `sb` at 0x101381e4 stores 1 byte to [a0+8] +0x19.
  The `sb` at 0x101381f0 stores 1 byte to [a0+8] +0x1b.
  The `sb` at 0x101381f4 stores 1 byte to [a0+8] +0x18.
  The `sb` at 0x10138200 stores 1 byte to [a0+8] +0x16.
  The `sb` at 0x10138204 stores 1 byte to [a0+8] +0x15.
  The `sb` at 0x10138210 stores 1 byte to [a0+8] +0x17.
  The `sb` at 0x10138214 stores 1 byte to [a0+8] +0x14.
  The `sb` at 0x10138220 stores 1 byte to [a0+8] +0x12.
  The `sb` at 0x10138224 stores 1 byte to [a0+8] +0x11.
  The `sb` at 0x10138230 stores 1 byte to [a0+8] +0x13.
  The `sb` at 0x10138234 stores 1 byte to [a0+8] +0x10.
  The `sb` at 0x10138240 stores 1 byte to [a0+8] +0xe.
  The `sb` at 0x10138244 stores 1 byte to [a0+8] +0xd.
  The `sb` at 0x10138254 stores 1 byte to [a0+8] +0xf.
  The `sb` at 0x10138260 stores 1 byte to [a0+8] +0xc.
  Calls ProcCreateImageBuffers..AKC [0x100aae40] via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=a0 at entry (arg0) (`j` at 0x101380c8).
  The `beq` branch at 0x10137b74 targets 0x10137b90, is taken when at(=[a0+72]) >= 0x3 (unsigned), and falls through when at(=[a0+72]) < 0x3 (unsigned).
  The `bne` branch at 0x10137bcc targets 0x10137ff0, is taken when a5(=[[a0+8]+2]:2-3) < 0x8 (unsigned), and falls through when a5(=[[a0+8]+2]:2-3) >= 0x8 (unsigned).
  The `bne` branch at 0x10137bd4 targets 0x10138158, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0x10137d8c targets 0x101380dc, is taken when s4(?) < 0x8 (unsigned), and falls through when s4(?) >= 0x8 (unsigned).
  The `beq` branch at 0x10137ea0 targets 0x10137c80, is taken when s4(?) >= 0x8 (unsigned), and falls through when s4(?) < 0x8 (unsigned).
  The `beq` branch at 0x10138008 targets 0x101380b4, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `bne` branch at 0x10138010 targets 0x1013801c, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x10138024 targets 0x10138264, is taken when s6(?) < 0x2 (signed), and falls through when s6(?) >= 0x2 (signed).
  The `beq` branch at 0x10138074 targets 0x101380d0, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x101380a0 targets 0x10138050, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x101380d4 targets 0x101380b0 and is always taken.
  The `beq` branch at 0x10138150 targets 0x10137f20 and is always taken.
  The `beq` branch at 0x1013825c targets 0x10137ff0 and is always taken.
  The `beq` branch at 0x10138280 targets 0x101380b4 and is always taken.
  The return at 0x10137b88 has v0 = 0x10.
- `ProcSGIvcStoreGammaColors16` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10138290 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10138290-0x101383b0 (288 bytes).
  It occupies 288 bytes.
  The `lw` at 0x10138290 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x10138294 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x101382b0 loads 4 bytes from sym(vcScreenPrivateIndex) +0x0.
  The `lw` at 0x101382bc loads 4 bytes from sym(screenInfo) +0x44.
  The `lw` at 0x101382c0 loads 4 bytes from [a0+8] +0x4.
  The `lw` at 0x101382c4 loads 4 bytes from [a0+8] +0x8.
  The `lw` at 0x101382c8 loads 4 bytes from [a0+8] +0xc.
  The `lw` at 0x101382fc loads 4 bytes from (sym(screenInfo) + ([[a0+8]+4] << 0x2)) +0x48.
  The `lw` at 0x10138300 loads 4 bytes from [(sym(screenInfo) + ([[a0+8]+4] << 0x2))+72] +0x1b4.
  The `lw` at 0x10138308 loads 4 bytes from ([[(sym(screenInfo) + ([[a0+8]+4] << 0x2))+72]+436] + ([sym(vcScreenPrivateIndex)] << 0x2)) +0x0.
  The `lw` at 0x10138314 loads 4 bytes from [([[(sym(screenInfo) + ([[a0+8]+4] << 0x2))+72]+436] + ([sym(vcScreenPrivateIndex)] << 0x2))] +0x20.
  The `lw` at 0x10138318 loads 4 bytes from [([[(sym(screenInfo) + ([[a0+8]+4] << 0x2))+72]+436] + ([sym(vcScreenPrivateIndex)] << 0x2))] +0x24.
  The `lw` at 0x1013831c loads 4 bytes from [a0+8] +0x10.
  The `lw` at 0x10138334 loads 4 bytes from ?.
  The `lw` at 0x1013834c loads 4 bytes from [([[(sym(screenInfo) + ([[a0+8]+4] << 0x2))+72]+436] + ([sym(vcScreenPrivateIndex)] << 0x2))] +0x7c.
  The `jalr` at 0x1013835c calls (unknown callee) with a0=[(sym(screenInfo) + ([[a0+8]+4] << 0x2))+72], a1=[[a0+8]+16], a2=[[a0+8]+8], a3=[[a0+8]+12], a4=[a0+8]+20, a7=[a0+8].
  The `bne` branch at 0x101382b4 targets 0x10138374, is taken when a1(=[a0+72]) < 0x5 (unsigned), and falls through when a1(=[a0+72]) >= 0x5 (unsigned).
  The `beq` branch at 0x101382d8 targets 0x10138380, is taken when t0(=[[a0+8]+4]) >= t3(=[sym(screenInfo)+68]) (unsigned), and falls through when t0(=[[a0+8]+4]) < t3(=[sym(screenInfo)+68]) (unsigned).
  The `bne` branch at 0x101382f8 targets 0x10138388, is taken when a4(=([a0+72] << 0x2)-20) != a5(?), and falls through when a4(=([a0+72] << 0x2)-20) == a5(?).
  The `beq` branch at 0x1013830c targets 0x101383a0, is taken when t0(=[([[(sym(screenInfo) + ([[a0+8]+4] << 0x2))+72]+436] + ([sym(vcScreenPrivateIndex)] << 0x2))]) == 0, and falls through when t0(=[([[(sym(screenInfo) + ([[a0+8]+4] << 0x2))+72]+436] + ([sym(vcScreenPrivateIndex)] << 0x2))]) != 0.
  The `beq` branch at 0x1013832c targets 0x10138390, is taken when a2(=[[a0+8]+8]) >= t3(=[[([[(sym(screenInfo) + ([[a0+8]+4] << 0x2))+72]+436] + ([sym(vcScreenPrivateIndex)] << 0x2))]+32]) (signed), and falls through when a2(=[[a0+8]+8]) < t3(=[[([[(sym(screenInfo) + ([[a0+8]+4] << 0x2))+72]+436] + ([sym(vcScreenPrivateIndex)] << 0x2))]+32]) (signed).
  The `bne` branch at 0x1013833c targets 0x10138398, is taken when t8(?) < a3(=[[a0+8]+12]) (unsigned), and falls through when t8(?) >= a3(=[[a0+8]+12]) (unsigned).
  The `beq` branch at 0x10138344 targets 0x101383a8, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x10138350 targets 0x1013836c, is taken when t9(=[[([[(sym(screenInfo) + ([[a0+8]+4] << 0x2))+72]+436] + ([sym(vcScreenPrivateIndex)] << 0x2))]+124]) == 0, and falls through when t9(=[[([[(sym(screenInfo) + ([[a0+8]+4] << 0x2))+72]+436] + ([sym(vcScreenPrivateIndex)] << 0x2))]+124]) != 0.
  The `beq` branch at 0x10138388 targets 0x10138378 and is always taken.
  The `beq` branch at 0x10138390 targets 0x10138378 and is always taken.
  The `beq` branch at 0x10138398 targets 0x10138378 and is always taken.
  The `beq` branch at 0x101383a0 targets 0x10138378 and is always taken.
  The `beq` branch at 0x101383a8 targets 0x10138378 and is always taken.
  The return at 0x1013836c has v0 = 0x0.
  The return at 0x10138378 has v0 = one of 0x0, 0x2, 0x10.
  The return at 0x10138380 has v0 = 0x2.
- `glxUpdateDeepWindowList` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1013af40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1013af40-0x1013b070 (304 bytes).
  It occupies 304 bytes.
  The `lw` at 0x1013af48 loads 4 bytes from a0 (arg0 at entry) +0x154.
  The `lw` at 0x1013af54 loads 4 bytes from sym(glxScreenPrivateIndex) +0x0.
  The `lw` at 0x1013af5c loads 4 bytes from a0 (arg0 at entry) +0x1b4.
  The `lw` at 0x1013af80 loads 4 bytes from ([a0+436] + ([sym(glxScreenPrivateIndex)] << 0x2)) +0x0.
  The `lw` at 0x1013af84 loads 4 bytes from [([a0+436] + ([sym(glxScreenPrivateIndex)] << 0x2))] +0x78.
  The `lw` at 0x1013afb0 loads 4 bytes from [([a0+436] + ([sym(glxScreenPrivateIndex)] << 0x2))] +0x20.
  7 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1013afb8, `lw` at 0x1013afc0, `lw` at 0x1013afd0.
  The `lw` at 0x1013afbc loads 4 bytes from a0 (arg0 at entry) +0x158.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x16c, including `lw` at 0x1013afe0, `lw` at 0x1013b014.
  The `lw` at 0x1013b04c loads 4 bytes from a0 (arg0 at entry) +0x160.
  The `jalr` at 0x1013af7c calls (unknown callee) with a0=sp-64, a1=0x0, a2=0x0, a3=a3 at entry (arg3).
  The `jalr` at 0x1013afb4 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1013afc8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1013aff4 calls (unknown callee) with a0=sp-64, a1=?, a2=?, a3=?.
  The `jalr` at 0x1013b024 calls (unknown callee) with a0=sp-64, a1=?, a2=?, a3=?.
  The `jalr` at 0x1013b058 calls (unknown callee) with a0=sp-64, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1013af88 targets 0x1013b04c, is taken when s0(=[[([a0+436] + ([sym(glxScreenPrivateIndex)] << 0x2))]+120]) == 0, and falls through when s0(=[[([a0+436] + ([sym(glxScreenPrivateIndex)] << 0x2))]+120]) != 0.
  The `beq` branch at 0x1013af90 targets 0x1013afe0 and is always taken.
  The `bne` branch at 0x1013af9c targets 0x1013afd0, is taken when a0(=one of 0x0, 0x1) != 0, and falls through when a0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x1013afd4 targets 0x1013b04c, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x1013b000 targets 0x1013afb0, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0x1013b00c targets 0x1013afb0, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x1013b030 targets 0x1013af98, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0x1013b03c targets 0x1013af98, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x1013b044 targets 0x1013af9c and is always taken.
  The return at 0x1013b068 has v0 = ret(?).
- `glxMiAllocDeepWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10141570 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10141570-0x101418ec (892 bytes).
  It occupies 892 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x10141570, `lw` at 0x10141714.
  2 such `lw` accesses load 4 bytes from [a0+16] +0x1b4, including `lw` at 0x1014157c, `lw` at 0x1014171c.
  2 such `lw` accesses load 4 bytes from sym(glxScreenPrivateIndex) +0x0, including `lw` at 0x10141594, `lw` at 0x10141718.
  2 such `lw` accesses load 4 bytes from sym(glxWindowPrivateIndex) +0x0, including `lw` at 0x10141598, `lw` at 0x10141708.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x84, including `lw` at 0x1014159c, `lw` at 0x10141704.
  2 such `lw` accesses load 4 bytes from ([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2)) +0x0, including `lw` at 0x101415b0, `lw` at 0x10141738.
  2 such `lw` accesses load 4 bytes from ([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2)) +0x0, including `lw` at 0x101415b4, `lw` at 0x10141740.
  The `lhu` at 0x101415b8 loads 2 bytes from [([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))] +0x36.
  The `lh` at 0x101415bc loads 2 bytes from [([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))] +0x1c.
  The `lhu` at 0x101415c0 loads 2 bytes from [([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))] +0x3e.
  2 such `lw` accesses load 4 bytes from [([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))] +0x80, including `lw` at 0x101415dc, `lw` at 0x10141744.
  The `sw` at 0x10141640 stores 4 bytes to ret(Xalloc) +0x0.
  6 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10141650, `sw` at 0x10141654, `sw` at 0x10141658.
  The `lw` at 0x1014165c loads 4 bytes from ret(PixelRegionToBrickRegion..OMD) +0x8.
  The `lw` at 0x10141668 loads 4 bytes from [ret(PixelRegionToBrickRegion..OMD)+8] +0x4.
  The `lw` at 0x101416d0 loads 4 bytes from sym(Must_have_memory) +0x0.
  4 such `lh` accesses load 2 bytes from ?, including `lh` at 0x101416fc, `lh` at 0x1014170c, `lh` at 0x10141720.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x101417bc, `lw` at 0x101417cc, `lw` at 0x101417dc.
  2 such `lw` accesses load 4 bytes from [([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))] +0x4, including `lw` at 0x101417e4, `lw` at 0x10141800.
  2 such `lw` accesses load 4 bytes from sym(__us_rsthread_malloc) +0x0, including `lw` at 0x10141808, `lw` at 0x10141824.
  The `sw` at 0x10141844 stores 4 bytes to ret(__malloc..ML) +0x0.
  The `sw` at 0x1014184c stores 4 bytes to ret(__malloc..ML) +0x4.
  The `sw` at 0x101418d0 stores 4 bytes to [([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))] +0x54.
  The `jal` at 0x10141600 calls Xalloc [0x1020aeb0] with a0=0x10, a1=?, a2=[[([[a0+16]+436] + ([sym(glxScreenPrivateIndex)] << 0x2))]+54]:2, a3=[([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))], a4=([sym(glxWindowPrivateIndex)] << 0x2), a5=0x102d0000.
  The `jal` at 0x1014163c calls PixelRegionToBrickRegion..OMD [0x10275cf0] with a0=?, a1=?, a2=a0+44, a3=?, a7=ret(Xalloc).
  The `jal` at 0x101416dc calls FatalError [0x10094f20] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10141814 calls __libc_lockmalloc with a0=?, a1=?, a2=?, a3=[sym(__us_rsthread_malloc)].
  The `jal` at 0x1014181c calls __malloc..ML [0x101e7680] with a0=0x8, a1=?, a2=?, a3=?.
  The `jalr` at 0x10141834 calls __libc_unlockmalloc with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0x101415f0 targets 0x101418c4, is taken when at(?) <= 0 (signed), and falls through when at(?) > 0 (signed).
  The `bne` branch at 0x10141608 targets 0x10141628, is taken when v0(=ret(Xalloc)) != 0, and falls through when v0(=ret(Xalloc)) == 0.
  The `beq` branch at 0x10141660 targets 0x101418d4, is taken when a0(=[ret(PixelRegionToBrickRegion..OMD)+8]) == 0, and falls through when a0(=[ret(PixelRegionToBrickRegion..OMD)+8]) != 0.
  The `blez` branch at 0x1014166c targets 0x101418a0, is taken when a3(=[[ret(PixelRegionToBrickRegion..OMD)+8]+4]) <= 0 (signed), and falls through when a3(=[[ret(PixelRegionToBrickRegion..OMD)+8]+4]) > 0 (signed).
  The `beq` branch at 0x101416c8 targets 0x101416f8 and is always taken.
  The `beq` branch at 0x101416d4 targets 0x101416e4, is taken when ra(=[sym(Must_have_memory)]) == 0, and falls through when ra(=[sym(Must_have_memory)]) != 0.
  The `beq` branch at 0x101416f0 targets 0x10141880, is taken when at(?) == v0(?), and falls through when at(?) != v0(?).
  The `beq` branch at 0x1014174c targets 0x101416e4, is taken when a6(?) >= a4(?) (signed), and falls through when a6(?) < a4(?) (signed).
  The `beq` branch at 0x1014178c targets 0x10141858, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x10141794 targets 0x101417b4 and is always taken.
  The `beq` branch at 0x101417ac targets 0x10141858, is taken when v0(?) == v1(?), and falls through when v0(?) != v1(?).
  The `bltz` branch at 0x101417d8 targets 0x101417a0, is taken when a0(?) < 0 (signed), and falls through when a0(?) >= 0 (signed).
  The `beq` branch at 0x101417e0 targets 0x10141804 and is always taken.
  The `beq` branch at 0x101417f8 targets 0x101417a0, is taken when s1(?) == s4(?), and falls through when s1(?) != s4(?).
  The `bne` branch at 0x10141804 targets 0x101417f0, is taken when t8(=[[([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))]+4]) != 0, and falls through when t8(=[[([a0+132] + ([sym(glxWindowPrivateIndex)] << 0x2))]+4]) == 0.
  The `beq` branch at 0x1014180c targets 0x1014181c, is taken when a3(=[sym(__us_rsthread_malloc)]) == 0, and falls through when a3(=[sym(__us_rsthread_malloc)]) != 0.
  The `beq` branch at 0x10141828 targets 0x1014183c, is taken when t9(=[sym(__us_rsthread_malloc)]) == 0, and falls through when t9(=[sym(__us_rsthread_malloc)]) != 0.
  The `beq` branch at 0x1014183c targets 0x101416d0, is taken when s6(=ret(__malloc..ML)) == 0, and falls through when s6(=ret(__malloc..ML)) != 0.
  The `beq` branch at 0x10141850 targets 0x101417f4 and is always taken.
  The `bne` branch at 0x10141870 targets 0x10141788, is taken when at(?) != v0(?), and falls through when at(?) == v0(?).
  The `beq` branch at 0x10141878 targets 0x101416e8 and is always taken.
  The `beq` branch at 0x101418cc targets 0x10141618 and is always taken.
  The `beq` branch at 0x101418e4 targets 0x10141674 and is always taken.
  The return at 0x10141620 has v0 = one of 0x0, 0x1.
  The return at 0x101418bc has v0 = 0x1.
  The instructions from 0x1014179c to 0x1014179c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x101417e8 to 0x101417ec are not reached by any path from the entry, and their branches are not listed.
- `TellGainedMap` in `usr/gfx/arch/GENERIC/Xsgi` at 0x101439c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x101439c0-0x10143a98 (216 bytes).
  It occupies 216 bytes.
  The `lw` at 0x101439d4 loads 4 bytes from sym(panoramiXMode) +0x0.
  The `lw` at 0x101439ec loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x101439f0 loads 4 bytes from [a0+16] +0x0.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10143a08, `lw` at 0x10143a0c, `lw` at 0x10143a18.
  The `lbu` at 0x10143a30 loads 1 byte from a0 (arg0 at entry) +0x1.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0x10143a38, `lw` at 0x10143a6c.
  The `lw` at 0x10143a3c loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `lw` at 0x10143a4c loads 4 bytes from [a0+120] +0x8.
  The `lw` at 0x10143a64 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `jal` at 0x10143a88 calls DeliverEvents [0x10064f80] with a0=a0 at entry (arg0), a1=sp-48, a2=0x1, a3=0x0, a4=[a1], a5=a1 at entry (arg1), a6=[a0+4], a7=0x20.
  The `beq` branch at 0x101439e4 targets 0x10143a30, is taken when at(=[sym(panoramiXMode)]) == 0, and falls through when at(=[sym(panoramiXMode)]) != 0.
  The `beq` branch at 0x101439f4 targets 0x10143a30, is taken when v1(=[[a0+16]]) == 0, and falls through when v1(=[[a0+16]]) != 0.
  The `beq` branch at 0x10143a10 targets 0x10143a08, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10143a1c targets 0x10143a58, is taken when a3(?) == a4(=[a1]), and falls through when a3(?) != a4(=[a1]).
  The `beq` branch at 0x10143a34 targets 0x10143a50, is taken when a1(=[a0+1]:1) == a2(=0x2), and falls through when a1(=[a0+1]:1) != a2(=0x2).
  The `beq` branch at 0x10143a40 targets 0x10143a08, is taken when a1(=[a0+120]) == 0, and falls through when a1(=[a0+120]) != 0.
  The `beq` branch at 0x10143a48 targets 0x10143a1c and is always taken.
  The `bne` branch at 0x10143a50 targets 0x10143a24, is taken when a4(=[a1]) != 0, and falls through when a4(=[a1]) == 0.
  The `beq` branch at 0x10143a90 targets 0x10143a20 and is always taken.
  The return at 0x10143a00 has v0 = 0x0.
  The return at 0x10143a28 has v0 = 0x1.
- `ProcDestroySubwindows` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10146900 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10146900-0x10146988 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0x10146900 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x10146934 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x10146944 loads 4 bytes from [a0+8] +0x4.
  The `lw` at 0x1014697c loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `jal` at 0x10146940 calls SecurityLookupWindow [0x1006ce40] with a0=[[a0+8]+4], a1=a0 at entry (arg0), a2=0x4, a3=a3 at entry (arg3).
  The `jal` at 0x10146968 calls DestroySubwindows [0x100de460] with a0=ret(SecurityLookupWindow), a1=a0 at entry (arg0), a2=?, a3=?, a4=0x3.
  The `beq` branch at 0x1014691c targets 0x10146930, is taken when v1(=[a0+72]) == a0(=0x2), and falls through when v1(=[a0+72]) != a0(=0x2).
  The `bne` branch at 0x1014694c targets 0x10146964, is taken when v0(=ret(SecurityLookupWindow)) != 0, and falls through when v0(=ret(SecurityLookupWindow)) == 0.
  The return at 0x10146928 has v0 = 0x10.
  The return at 0x1014695c has v0 = 0x3.
  The return at 0x10146980 has v0 = [a0+40].
- `AccessDestroyWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1014b560 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1014b560-0x1014b644 (228 bytes).
  It occupies 228 bytes.
  The `lw` at 0x1014b560 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x1014b568 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x1014b5bc loads 4 bytes from [a0+8] +0x4.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1014b5dc, `lw` at 0x1014b62c.
  The `sw` at 0x1014b5e8 stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `lw` at 0x1014b618 loads 4 bytes from a0 (arg0 at entry) +0x58.
  The `lbu` at 0x1014b61c loads 1 byte from ?.
  The `lw` at 0x1014b620 loads 4 bytes from [a0+88] +0x0.
  The `jal` at 0x1014b5b8 calls SecurityLookupWindow [0x1006ce40] with a0=[[a0+8]+4], a1=a0 at entry (arg0), a2=0x0, a3=a3 at entry (arg3).
  The `jal` at 0x1014b5f4 calls CheckWindowAccess [0x1018ed00] with a0=0x4, a1=a0 at entry (arg0), a2=ret(SecurityLookupWindow), a3=0x0.
  The `jalr` at 0x1014b630 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1014b584 targets 0x1014b5a8, is taken when v1(=[a0+72]) == a1(=0x2), and falls through when v1(=[a0+72]) != a1(=0x2).
  The `bne` branch at 0x1014b5c0 targets 0x1014b5ec, is taken when v0(=ret(SecurityLookupWindow)) != 0, and falls through when v0(=ret(SecurityLookupWindow)) == 0.
  The `bne` branch at 0x1014b5fc targets 0x1014b610, is taken when v0(=ret(CheckWindowAccess)) != 0, and falls through when v0(=ret(CheckWindowAccess)) == 0.
  The `beq` branch at 0x1014b608 targets 0x1014b598 and is always taken.
  The `beq` branch at 0x1014b63c targets 0x1014b598 and is always taken.
  The return at 0x1014b590 has v0 = 0x10.
  The return at 0x1014b5a0 has v0 = one of 0x3, ret(?).
  The return at 0x1014b5e4 has v0 = 0x3.
- `XkbModMaskText` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1014cc80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1014cc80-0x1014ce2c (428 bytes).
  It occupies 428 bytes.
  The `sb` at 0x1014cd04 stores 1 byte to ?.
  The `lw` at 0x1014cd18 loads 4 bytes from ?.
  The `lw` at 0x1014cde8 loads 4 bytes from abs 0x10292a18.
  The `lw` at 0x1014ce04 loads 4 bytes from abs 0x10292a10.
  The `lbu` at 0x1014ce10 loads 1 byte from abs 0x10292a14.
  The `jalr` at 0x1014cd14 calls strcpy with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1014cd20 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1014cd5c calls strlen with a0=sp-144, a1=?, a2=?, a3=?.
  The `jalr` at 0x1014cdb8 calls strcpy with a0=?, a1=sp-144, a2=?, a3=?, a4=0x102c5d40, a5=0x200.
  The `beq` branch at 0x1014cca8 targets 0x1014cdd8, is taken when v0(?) == at(=0xff), and falls through when v0(?) != at(=0xff).
  The `beq` branch at 0x1014ccbc targets 0x1014cdf4, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x1014ccf4 targets 0x1014cd2c, is taken when (s1(?) & s4(=a0)) == 0, and falls through when (s1(?) & s4(=a0)) != 0.
  The `beq` branch at 0x1014ccfc targets 0x1014cd10, is taken when s0(?) == s8(=sp-144), and falls through when s0(?) != s8(=sp-144).
  The `bne` branch at 0x1014cd38 targets 0x1014ccf0, is taken when s3(?) != s5(=0x8), and falls through when s3(?) == s5(=0x8).
  The `beq` branch at 0x1014cd7c targets 0x1014cdb0, is taken when a0(=ret(strlen)+1) >= 0x200 (unsigned), and falls through when a0(=ret(strlen)+1) < 0x200 (unsigned).
  The `bne` branch at 0x1014cd8c targets 0x1014cd9c, is taken when a0(=ret(strlen)+1) < a2(?) (unsigned), and falls through when a0(=ret(strlen)+1) >= a2(?) (unsigned).
  The `beq` branch at 0x1014cdec targets 0x1014cd50 and is always taken.
  The `beq` branch at 0x1014ce24 targets 0x1014cd50 and is always taken.
  The return at 0x1014cdd0 has v0 = ?.
- `DeleteWindowFromAnySaveSet` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1014dca0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1014dca0-0x1014df08 (616 bytes).
  It occupies 616 bytes.
  2 such `lw` accesses load 4 bytes from sym(clients) +0x0, including `lw` at 0x1014dcf4, `lw` at 0x1014de5c.
  24 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1014dd00, `lw` at 0x1014dd1c, `lw` at 0x1014dd7c.
  20 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1014dd84, `sw` at 0x1014dda8, `sw` at 0x1014ddb0.
  The `jal` at 0x1014de2c calls Xrealloc [0x101b9470] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1014dea4 calls Xfree [0x101fc9c0] with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0x1014dce8 targets 0x1014deb4, is taken when v1(=[0x102c5d70]) <= 0 (signed), and falls through when v1(=[0x102c5d70]) > 0 (signed).
  The `beq` branch at 0x1014dcf0 targets 0x1014de60 and is always taken.
  The `beq` branch at 0x1014dd04 targets 0x1014dd38, is taken when a1(?) == s4(=a0), and falls through when a1(?) != s4(=a0).
  The `beq` branch at 0x1014dd14 targets 0x1014dd38, is taken when at(?) >= s0(?) (signed), and falls through when at(?) < s0(?) (signed).
  The `beq` branch at 0x1014dd20 targets 0x1014dd38, is taken when a3(?) == s4(=a0), and falls through when a3(?) != s4(=a0).
  The `bne` branch at 0x1014dd30 targets 0x1014dd00, is taken when at(?) < s0(?) (signed), and falls through when at(?) >= s0(?) (signed).
  The `beq` branch at 0x1014dd40 targets 0x1014de4c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x1014dd58 targets 0x1014de1c, is taken when v0(?) < 0x2 (signed), and falls through when v0(?) >= 0x2 (signed).
  The `beq` branch at 0x1014dd6c targets 0x1014dd88, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x1014dd80 targets 0x1014dd74, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x1014dd88 targets 0x1014de18, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x1014dd90 targets 0x1014dee4, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x1014dde0 targets 0x1014de98, is taken when a1(?) == v0(?), and falls through when a1(?) != v0(?).
  The `bne` branch at 0x1014de08 targets 0x1014ddc0, is taken when a3(?) != v0(?), and falls through when a3(?) == v0(?).
  The `beq` branch at 0x1014de1c targets 0x1014dea4, is taken when s0(?) == s6(=0x1), and falls through when s0(?) != s6(=0x1).
  The `beq` branch at 0x1014de34 targets 0x1014de44, is taken when v0(=ret(Xrealloc)) == 0, and falls through when v0(=ret(Xrealloc)) != 0.
  The `beq` branch at 0x1014de54 targets 0x1014deb4, is taken when s3(?) >= v1(=[0x102c5d70]) (signed), and falls through when s3(?) < v1(=[0x102c5d70]) (signed).
  The `beq` branch at 0x1014de68 targets 0x1014de4c, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x1014de74 targets 0x1014de4c, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `blez` branch at 0x1014de7c targets 0x1014dd3c, is taken when s0(?) <= 0 (signed), and falls through when s0(?) > 0 (signed).
  The `beq` branch at 0x1014de88 targets 0x1014dd38, is taken when t8(?) == s4(=a0), and falls through when t8(?) != s4(=a0).
  The `beq` branch at 0x1014de90 targets 0x1014dd10 and is always taken.
  The `beq` branch at 0x1014de9c targets 0x1014de10 and is always taken.
  The `beq` branch at 0x1014deac targets 0x1014de40 and is always taken.
  The `beq` branch at 0x1014df00 targets 0x1014de18 and is always taken.
  The return at 0x1014dedc has v0 = ?.
  The instructions from 0x1014dcf8 to 0x1014dcfc are not reached by any path from the entry, and their branches are not listed.
- `ProcXineramaConfigureWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x101552e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x101552e0-0x10155738 (1112 bytes).
  It occupies 1112 bytes.
  The `lw` at 0x101552e0 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x101552f8 loads 4 bytes from a0 (arg0 at entry) +0x8.
  3 such `lhu` accesses load 2 bytes from [a0+8] +0x8, including `lhu` at 0x10155310, `lhu` at 0x10155404, `lhu` at 0x101554f8.
  2 such `lw` accesses load 4 bytes from [a0+8] +0x4, including `lw` at 0x101553a0, `lw` at 0x101553e4.
  2 such `lw` accesses load 4 bytes from sym(XRT_WINDOW) +0x0, including `lw` at 0x101553bc, `lw` at 0x101554b0.
  7 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10155488, `lw` at 0x101554cc, `lw` at 0x1015552c.
  The `lw` at 0x101554e4 loads 4 bytes from sym(WindowTable) +0x0.
  The `lw` at 0x101554e8 loads 4 bytes from [sym(WindowTable)] +0x0.
  The `lw` at 0x10155504 loads 4 bytes from [a0+8] +0xc.
  2 such `sw` accesses store 4 bytes to sym(panoramiXMode) +0x0, including `sw` at 0x10155578, `sw` at 0x101556ac.
  The `sw` at 0x101555cc stores 4 bytes to [a0+8] +0x4.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0x101555d4, `sw` at 0x101555f4, `sw` at 0x10155610.
  The `lw` at 0x101555dc loads 4 bytes from sym(panoramiXdataPtr) +0x0.
  3 such `sw` accesses store 4 bytes to sym(panoramiXScreen0) +0x0, including `sw` at 0x10155628, `sw` at 0x1015567c, `sw` at 0x1015570c.
  2 such `lw` accesses load 4 bytes from sym(ProcVector) +0x30, including `lw` at 0x10155638, `lw` at 0x101556c0.
  The `jal` at 0x101553b8 calls SecurityLookupIDByType [0x100d6140] with a0=a0 at entry (arg0), a1=[[a0+8]+4], a2=[sym(XRT_WINDOW)], a3=0x2, a6=0x3f, a7=0x104104105.
  The `jal` at 0x101553e8 calls SecurityLookupIDByType [0x100d6140] with a0=a0 at entry (arg0), a1=[[a0+8]+4], a2=0xffffffffc0000001, a3=0x2.
  The `jal` at 0x101554ac calls SecurityLookupIDByType [0x100d6140] with a0=a0 at entry (arg0), a1=?, a2=[sym(XRT_WINDOW)], a3=0x1, a4=ret(SecurityLookupIDByType).
  The `jalr` at 0x10155644 calls (unknown callee) with a0=a0 at entry (arg0), a1=[sym(panoramiXdataPtr)], a2=?, a3=?.
  The `jal` at 0x10155688 calls XineramaDeliverVisibilityNotify [0x10197300] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10155690 calls XineramaDeliverExpose [0x100e7410] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x101556c8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=[0x102c5f68], a4=ret(SecurityLookupIDByType).
  The `bne` branch at 0x10155300 targets 0x1015553c, is taken when a1(=[a0+72]) < 0x3 (unsigned), and falls through when a1(=[a0+72]) >= 0x3 (unsigned).
  The `beq` branch at 0x10155380 targets 0x101553a0, is taken when a0(=[a0+72]-3) == a2(?), and falls through when a0(=[a0+72]-3) != a2(?).
  The `beq` branch at 0x101553c4 targets 0x101556dc, is taken when a3(=[0x102c5f68]) == 0, and falls through when a3(=[0x102c5f68]) != 0.
  The `beq` branch at 0x101553d0 targets 0x101556bc, is taken when a4(=ret(SecurityLookupIDByType)) == 0, and falls through when a4(=ret(SecurityLookupIDByType)) != 0.
  The `beq` branch at 0x101553fc targets 0x101556f8, is taken when v0(=ret(SecurityLookupIDByType)) == 0, and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  The `beq` branch at 0x1015541c targets 0x10155700, is taken when (t0(=[[a0+8]+8]:2) & 0x20) == 0, and falls through when (t0(=[[a0+8]+8]:2) & 0x20) != 0.
  The `beq` branch at 0x1015548c targets 0x101556b0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x101554bc targets 0x10155710, is taken when v0(=ret(SecurityLookupIDByType)) == 0, and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  The `beq` branch at 0x101554e0 targets 0x10155550, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x101554f0 targets 0x10155550, is taken when a6(=[[sym(WindowTable)]]) != a1(?), and falls through when a6(=[[sym(WindowTable)]]) == a1(?).
  The `beq` branch at 0x10155508 targets 0x10155728, is taken when (a5(=[[a0+8]+8]:2) & 0x1) == 0, and falls through when (a5(=[[a0+8]+8]:2) & 0x1) != 0.
  The `beq` branch at 0x1015551c targets 0x10155730, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10155534 targets 0x10155550 and is always taken.
  The `blez` branch at 0x10155574 targets 0x1015571c, is taken when t2(=[0x102c5f1c]) <= 0 (signed), and falls through when t2(=[0x102c5f1c]) > 0 (signed).
  The `beq` branch at 0x101555a0 targets 0x101555b4 and is always taken.
  The `beq` branch at 0x101555b0 targets 0x10155708, is taken when a6(?) >= at(=[0x102c5f1c]) (signed), and falls through when a6(?) < at(=[0x102c5f1c]) (signed).
  The `beq` branch at 0x101555c8 targets 0x101555d8, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bltz` branch at 0x101555d8 targets 0x101555f8, is taken when t0(?) < 0 (signed), and falls through when t0(?) >= 0 (signed).
  The `bltz` branch at 0x101555f8 targets 0x10155614, is taken when t1(?) < 0 (signed), and falls through when t1(?) >= 0 (signed).
  The `bne` branch at 0x10155620 targets 0x10155634, is taken when ra(?) != a4(?), and falls through when ra(?) == a4(?).
  The `beq` branch at 0x10155680 targets 0x101555a8, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x101556a8 targets 0x10155390 and is always taken.
  The `beq` branch at 0x101556b4 targets 0x101554cc and is always taken.
  The `beq` branch at 0x101556d4 targets 0x10155390 and is always taken.
  The `bne` branch at 0x101556e0 targets 0x101553d8, is taken when ra(=ret(SecurityLookupIDByType)) != 0, and falls through when ra(=ret(SecurityLookupIDByType)) == 0.
  The `beq` branch at 0x101556f0 targets 0x10155390 and is always taken.
  The `beq` branch at 0x101556f8 targets 0x10155390 and is always taken.
  The `beq` branch at 0x10155700 targets 0x101554cc and is always taken.
  The `beq` branch at 0x10155708 targets 0x10155688 and is always taken.
  The `beq` branch at 0x10155714 targets 0x10155390 and is always taken.
  The `beq` branch at 0x10155720 targets 0x10155688 and is always taken.
  The `beq` branch at 0x10155728 targets 0x10155514 and is always taken.
  The `beq` branch at 0x10155730 targets 0x10155550 and is always taken.
  The return at 0x10155398 has v0 = one of 0x10, ?, ret(?), 0x3.
  The return at 0x10155548 has v0 = 0x10.
- `RegisterKeyboardDevice` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1015a4c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1015a4c0-0x1015a578 (184 bytes).
  It occupies 184 bytes.
  The `sw` at 0x1015a4ec stores 4 bytes to sym(inputInfo) +0xc.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x4, including `sw` at 0x1015a4f0, `sw` at 0x1015a534.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x8, including `sw` at 0x1015a4f4, `sw` at 0x1015a52c.
  The `lw` at 0x1015a4f8 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `sw` at 0x1015a508 stores 4 bytes to a0 (arg0 at entry) +0x88.
  The `sw` at 0x1015a514 stores 4 bytes to a0 (arg0 at entry) +0x8c.
  The `sw` at 0x1015a560 stores 4 bytes to a0 (arg0 at entry) +0x48.
  The `jalr` at 0x1015a548 calls strlen with a0=0x1028f578, a1=0x10191ca0, a2=0x102d0000, a3=0x1026c3e0, a4=[a0+72], a5=0x100bb0d0.
  The `jal` at 0x1015a554 calls Xalloc [0x1020aeb0] with a0=ret(strlen)+1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1015a568 calls strcpy with a0=ret(Xalloc), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1015a4e8 targets 0x1015a528, is taken when v0(=[0x102c5d44]) == 0, and falls through when v0(=[0x102c5d44]) != 0.
  The `beq` branch at 0x1015a510 targets 0x1015a538, is taken when a4(=[a0+72]) == 0, and falls through when a4(=[a0+72]) != 0.
  The `beq` branch at 0x1015a530 targets 0x1015a4f8 and is always taken.
  The `beq` branch at 0x1015a570 targets 0x1015a518 and is always taken.
  The return at 0x1015a520 has v0 = one of [0x102c5d44], ret(strcpy).
- `SProcConfigureWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1015ace0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1015ace0-0x1015b460 (1920 bytes).
  It occupies 1920 bytes.
  The `lw` at 0x1015ace8 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lbu` at 0x1015acec loads 1 byte from [a0+8] +0x3.
  The `lbu` at 0x1015acf0 loads 1 byte from [a0+8] +0x2.
  The `sb` at 0x1015acf4 stores 1 byte to [a0+8] +0x3.
  The `sb` at 0x1015acf8 stores 1 byte to [a0+8] +0x2.
  The `lw` at 0x1015acfc loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lbu` at 0x1015ad44 loads 1 byte from [a0+8] +0x4.
  The `lbu` at 0x1015ad48 loads 1 byte from [a0+8] +0x7.
  The `lbu` at 0x1015ad4c loads 1 byte from [a0+8] +0x8.
  The `lbu` at 0x1015ad50 loads 1 byte from [a0+8] +0x9.
  The `lbu` at 0x1015ad54 loads 1 byte from [a0+8] +0x5.
  The `lbu` at 0x1015ad58 loads 1 byte from [a0+8] +0x6.
  The `sb` at 0x1015ad5c stores 1 byte to [a0+8] +0x5.
  The `lhu` at 0x1015ad60 loads 2 bytes from [a0+8] +0x2.
  The `sb` at 0x1015ad64 stores 1 byte to [a0+8] +0x6.
  The `sb` at 0x1015ad68 stores 1 byte to [a0+8] +0x8.
  The `sb` at 0x1015ad70 stores 1 byte to [a0+8] +0x4.
  The `sb` at 0x1015ad80 stores 1 byte to [a0+8] +0x7.
  The `sb` at 0x1015ad88 stores 1 byte to [a0+8] +0x9.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x29, including `lbu` at 0x1015ada4, `lbu` at 0x1015b344.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x1d, including `lbu` at 0x1015adac, `lbu` at 0x1015b37c.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x1c, including `lbu` at 0x1015adb0, `lbu` at 0x1015b338.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x1a, including `lbu` at 0x1015adb4, `lbu` at 0x1015b34c.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x19, including `lbu` at 0x1015adb8, `lbu` at 0x1015b32c.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x1b, including `lbu` at 0x1015adbc, `lbu` at 0x1015b3f0.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x18, including `lbu` at 0x1015adc0, `lbu` at 0x1015b3e8.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x16, including `lbu` at 0x1015adc4, `lbu` at 0x1015b3d8.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x15, including `lbu` at 0x1015adc8, `lbu` at 0x1015b3e0.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x17, including `lbu` at 0x1015adcc, `lbu` at 0x1015b3c8.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x14, including `lbu` at 0x1015add0, `lbu` at 0x1015b3d0.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x12, including `lbu` at 0x1015add4, `lbu` at 0x1015b3b8.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x11, including `lbu` at 0x1015add8, `lbu` at 0x1015b3c0.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x13, including `lbu` at 0x1015ade0, `lbu` at 0x1015b3a8.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x10, including `lbu` at 0x1015ade4, `lbu` at 0x1015b3b0.
  2 such `lbu` accesses load 1 byte from [a0+8] +0xe, including `lbu` at 0x1015adec, `lbu` at 0x1015b398.
  2 such `lbu` accesses load 1 byte from [a0+8] +0xd, including `lbu` at 0x1015adf4, `lbu` at 0x1015b3a0.
  2 such `lbu` accesses load 1 byte from [a0+8] +0xf, including `lbu` at 0x1015adfc, `lbu` at 0x1015b388.
  2 such `lbu` accesses load 1 byte from [a0+8] +0xc, including `lbu` at 0x1015ae04, `lbu` at 0x1015b390.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x20, including `lbu` at 0x1015ae0c, `lbu` at 0x1015b374.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x23, including `lbu` at 0x1015ae10, `lbu` at 0x1015b378.
  2 such `sb` accesses store 1 byte to [a0+8] +0x20, including `sb` at 0x1015ae14, `sb` at 0x1015b39c.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x1f, including `lbu` at 0x1015ae18, `lbu` at 0x1015b330.
  2 such `sb` accesses store 1 byte to [a0+8] +0x23, including `sb` at 0x1015ae20, `sb` at 0x1015b3a4.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x1e, including `lbu` at 0x1015ae24, `lbu` at 0x1015b380.
  89 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1015ae30, `lbu` at 0x1015ae8c, `lbu` at 0x1015ae90.
  110 such `sb` accesses store 1 byte to ?, including `sb` at 0x1015ae34, `sb` at 0x1015ae38, `sb` at 0x1015ae3c.
  The `lw` at 0x1015b268 loads 4 bytes from sym(ProcVector) +0x30.
  The `sb` at 0x1015b33c stores 1 byte to [a0+8] +0x1c.
  The `lbu` at 0x1015b340 loads 1 byte from [a0+8] +0x2a.
  The `sb` at 0x1015b348 stores 1 byte to [a0+8] +0x2a.
  The `sb` at 0x1015b350 stores 1 byte to [a0+8] +0x1a.
  The `lbu` at 0x1015b354 loads 1 byte from [a0+8] +0x28.
  The `lbu` at 0x1015b358 loads 1 byte from [a0+8] +0x2b.
  The `lbu` at 0x1015b35c loads 1 byte from [a0+8] +0x25.
  The `lbu` at 0x1015b360 loads 1 byte from [a0+8] +0x26.
  The `lbu` at 0x1015b364 loads 1 byte from [a0+8] +0x24.
  The `lbu` at 0x1015b368 loads 1 byte from [a0+8] +0x27.
  The `lbu` at 0x1015b36c loads 1 byte from [a0+8] +0x21.
  The `lbu` at 0x1015b370 loads 1 byte from [a0+8] +0x22.
  The `sb` at 0x1015b384 stores 1 byte to [a0+8] +0x1f.
  The `sb` at 0x1015b38c stores 1 byte to [a0+8] +0x1d.
  The `sb` at 0x1015b394 stores 1 byte to [a0+8] +0x1e.
  The `sb` at 0x1015b3ac stores 1 byte to [a0+8] +0x21.
  The `sb` at 0x1015b3b4 stores 1 byte to [a0+8] +0x22.
  The `sb` at 0x1015b3bc stores 1 byte to [a0+8] +0x24.
  The `sb` at 0x1015b3c4 stores 1 byte to [a0+8] +0x27.
  The `sb` at 0x1015b3cc stores 1 byte to [a0+8] +0x25.
  The `sb` at 0x1015b3d4 stores 1 byte to [a0+8] +0x26.
  The `sb` at 0x1015b3dc stores 1 byte to [a0+8] +0x28.
  The `sb` at 0x1015b3e4 stores 1 byte to [a0+8] +0x29.
  The `sb` at 0x1015b3ec stores 1 byte to [a0+8] +0x2b.
  The `sb` at 0x1015b3f4 stores 1 byte to [a0+8] +0x18.
  The `sb` at 0x1015b3f8 stores 1 byte to [a0+8] +0x16.
  The `sb` at 0x1015b3fc stores 1 byte to [a0+8] +0x15.
  The `sb` at 0x1015b400 stores 1 byte to [a0+8] +0x17.
  The `sb` at 0x1015b404 stores 1 byte to [a0+8] +0x14.
  The `sb` at 0x1015b408 stores 1 byte to [a0+8] +0x12.
  The `sb` at 0x1015b40c stores 1 byte to [a0+8] +0x11.
  The `sb` at 0x1015b410 stores 1 byte to [a0+8] +0x13.
  The `sb` at 0x1015b414 stores 1 byte to [a0+8] +0x10.
  The `sb` at 0x1015b418 stores 1 byte to [a0+8] +0xe.
  The `sb` at 0x1015b41c stores 1 byte to [a0+8] +0xd.
  The `sb` at 0x1015b420 stores 1 byte to [a0+8] +0xf.
  The `sb` at 0x1015b424 stores 1 byte to [a0+8] +0x1b.
  The `sb` at 0x1015b42c stores 1 byte to [a0+8] +0x19.
  The `sb` at 0x1015b438 stores 1 byte to [a0+8] +0xc.
  The `jalr` at 0x1015b274 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=a0 at entry (arg0).
  The `beq` branch at 0x1015ad1c targets 0x1015ad3c, is taken when v0(=[a0+72]) >= 0x3 (unsigned), and falls through when v0(=[a0+72]) < 0x3 (unsigned).
  The `bne` branch at 0x1015ad8c targets 0x1015b31c, is taken when a5(=[[a0+8]+2]:2-3) < 0x8 (unsigned), and falls through when a5(=[[a0+8]+2]:2-3) >= 0x8 (unsigned).
  The `bne` branch at 0x1015ad94 targets 0x1015b32c, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0x1015af3c targets 0x1015b2a0, is taken when s4(?) < 0x8 (unsigned), and falls through when s4(?) >= 0x8 (unsigned).
  The `beq` branch at 0x1015b050 targets 0x1015ae30, is taken when s4(?) >= 0x8 (unsigned), and falls through when s4(?) < 0x8 (unsigned).
  The `beq` branch at 0x1015b1b4 targets 0x1015b264, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `bne` branch at 0x1015b1bc targets 0x1015b1c8, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x1015b1cc targets 0x1015b43c, is taken when s6(?) < 0x2 (signed), and falls through when s6(?) >= 0x2 (signed).
  The `beq` branch at 0x1015b224 targets 0x1015b294, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x1015b250 targets 0x1015b200, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x1015b298 targets 0x1015b260 and is always taken.
  The `beq` branch at 0x1015b314 targets 0x1015b0d0 and is always taken.
  The `beq` branch at 0x1015b324 targets 0x1015b19c and is always taken.
  The `beq` branch at 0x1015b434 targets 0x1015b19c and is always taken.
  The `beq` branch at 0x1015b458 targets 0x1015b264 and is always taken.
  The return at 0x1015ad34 has v0 = 0x10.
  The return at 0x1015b28c has v0 = ret(?).
- `dbcSetDrawBuffer` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1015c520 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1015c520-0x1015c964 (1092 bytes).
  It occupies 1092 bytes.
  The `lw` at 0x1015c534 loads 4 bytes from sym(rrmWindowPrivateIndex) +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x84, including `lw` at 0x1015c538, `lw` at 0x1015c5a8.
  The `lw` at 0x1015c544 loads 4 bytes from ([a0+132] + ([sym(rrmWindowPrivateIndex)] << 0x2)) +0x0.
  The `lbu` at 0x1015c55c loads 1 byte from [([a0+132] + ([sym(rrmWindowPrivateIndex)] << 0x2))] +0x4.
  The `lw` at 0x1015c574 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x1015c578 loads 4 bytes from sym(rrmScreenPrivateIndex) +0x0.
  The `lw` at 0x1015c57c loads 4 bytes from [a0+16] +0x1b4.
  The `lw` at 0x1015c588 loads 4 bytes from ([[a0+16]+436] + ([sym(rrmScreenPrivateIndex)] << 0x2)) +0x0.
  The `lw` at 0x1015c58c loads 4 bytes from [([[a0+16]+436] + ([sym(rrmScreenPrivateIndex)] << 0x2))] +0x20.
  The `lw` at 0x1015c5b8 loads 4 bytes from sym(dbcWindowPrivateIndex) +0x0.
  The `lw` at 0x1015c5c0 loads 4 bytes from ([a0+132] + ([0x102cc3a8] << 0x2)) +0x0.
  The `lw` at 0x1015c5d0 loads 4 bytes from [([a0+132] + ([0x102cc3a8] << 0x2))] +0x4.
  The `lw` at 0x1015c5dc loads 4 bytes from [([a0+132] + ([0x102cc3a8] << 0x2))] +0x1c.
  The `lw` at 0x1015c5fc loads 4 bytes from [[([a0+132] + ([0x102cc3a8] << 0x2))]+28] +0x14.
  18 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1015c610, `lw` at 0x1015c670, `lw` at 0x1015c6d8.
  3 such `lb` accesses load 1 byte from ([a0+132] + ([sym(dbcWindowPrivateIndex)] << 0x2)) +0x2, including `lb` at 0x1015c614, `lb` at 0x1015c794, `lb` at 0x1015c7d8.
  2 such `lb` accesses load 1 byte from ([a0+132] + ([sym(dbcWindowPrivateIndex)] << 0x2)) +0x1, including `lb` at 0x1015c618, `lb` at 0x1015c7ac.
  2 such `lw` accesses load 4 bytes from sym(globalSerialNumber) +0x0, including `lw` at 0x1015c628, `lw` at 0x1015c800.
  2 such `sb` accesses store 1 byte to ([a0+132] + ([sym(dbcWindowPrivateIndex)] << 0x2)) +0x1, including `sb` at 0x1015c63c, `sb` at 0x1015c804.
  4 such `sw` accesses store 4 bytes to sym(globalSerialNumber) +0x0, including `sw` at 0x1015c648, `sw` at 0x1015c64c, `sw` at 0x1015c834.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0x1015c650, `lw` at 0x1015c7d0, `lw` at 0x1015c820.
  2 such `lw` accesses load 4 bytes from sym(clients) +0x0, including `lw` at 0x1015c65c, `lw` at 0x1015c840.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14, including `sw` at 0x1015c66c, `sw` at 0x1015c84c.
  2 such `lw` accesses load 4 bytes from sym(WindowTable) +0x0, including `lw` at 0x1015c69c, `lw` at 0x1015c868.
  2 such `lw` accesses load 4 bytes from [sym(clients)] +0x0, including `lw` at 0x1015c6a0, `lw` at 0x1015c874.
  2 such `lw` accesses load 4 bytes from [[sym(clients)]] +0x30, including `lw` at 0x1015c6ac, `lw` at 0x1015c880.
  2 such `lw` accesses load 4 bytes from [[sym(clients)]] +0x38, including `lw` at 0x1015c6b4, `lw` at 0x1015c94c.
  12 such `lw` accesses load 4 bytes from [sym(WindowTable)] +0x0, including `lw` at 0x1015c6b8, `lw` at 0x1015c6c4, `lw` at 0x1015c6f8.
  6 such `lw` accesses load 4 bytes from [[sym(WindowTable)]] +0x4, including `lw` at 0x1015c6bc, `lw` at 0x1015c6f0, `lw` at 0x1015c724.
  2 such `sw` accesses store 4 bytes to [[sym(clients)]] +0x30, including `sw` at 0x1015c6c0, `sw` at 0x1015c894.
  2 such `sw` accesses store 4 bytes to [[sym(clients)]] +0x2c, including `sw` at 0x1015c6c8, `sw` at 0x1015c89c.
  16 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1015c6f4, `sw` at 0x1015c6fc, `sw` at 0x1015c728.
  The `lw` at 0x1015c788 loads 4 bytes from [([a0+132] + ([0x102cc3a8] << 0x2))] +0x8.
  2 such `sw` accesses store 4 bytes to [[sym(clients)]] +0x34, including `sw` at 0x1015c940, `sw` at 0x1015c958.
  2 such `sw` accesses store 4 bytes to [[sym(clients)]] +0x38, including `sw` at 0x1015c948, `sw` at 0x1015c960.
  The `jalr` at 0x1015c598 calls (unknown callee) with a0=a0 at entry (arg0), a1=0x8, a2=0x1, a3=a3 at entry (arg3), a4=[a0+132], a5=[([a0+132] + ([sym(rrmWindowPrivateIndex)] << 0x2))], a6=[0x102cc3a8].
  The `beq` branch at 0x1015c554 targets 0x1015c5ac, is taken when a5(=[([a0+132] + ([sym(rrmWindowPrivateIndex)] << 0x2))]) == 0, and falls through when a5(=[([a0+132] + ([sym(rrmWindowPrivateIndex)] << 0x2))]) != 0.
  The `beq` branch at 0x1015c564 targets 0x1015c5b0, is taken when (a7(=[[([a0+132] + ([sym(rrmWindowPrivateIndex)] << 0x2))]+4]:1) & 0x8) == 0, and falls through when (a7(=[[([a0+132] + ([sym(rrmWindowPrivateIndex)] << 0x2))]+4]:1) & 0x8) != 0.
  The `beq` branch at 0x1015c5c8 targets 0x1015c7ac, is taken when a6(=[([a0+132] + ([0x102cc3a8] << 0x2))]) == 0, and falls through when a6(=[([a0+132] + ([0x102cc3a8] << 0x2))]) != 0.
  The `blez` branch at 0x1015c5d4 targets 0x1015c614, is taken when a0(=[[([a0+132] + ([0x102cc3a8] << 0x2))]+4]) <= 0 (signed), and falls through when a0(=[[([a0+132] + ([0x102cc3a8] << 0x2))]+4]) > 0 (signed).
  The `beq` branch at 0x1015c600 targets 0x1015c77c, is taken when a7(?) == s0(=a1), and falls through when a7(?) != s0(=a1).
  The `bnel` branch at 0x1015c60c targets 0x1015c600, is taken when a2(?) != a1(?), and falls through when a2(?) == a1(?); its branch-likely delay slot `lw a7,20(a2)` at 0x1015c610 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x1015c61c targets 0x1015c6e0, is taken when t0(=[([a0+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+1]:1) == a0(?), and falls through when t0(=[([a0+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+1]:1) != a0(?).
  The `beq` branch at 0x1015c638 targets 0x1015c64c, is taken when t1(=0x10000000) >= a4(=[sym(globalSerialNumber)]+1) (unsigned), and falls through when t1(=0x10000000) < a4(=[sym(globalSerialNumber)]+1) (unsigned).
  The `beq` branch at 0x1015c644 targets 0x1015c650 and is always taken.
  The `beq` branch at 0x1015c674 targets 0x1015c6e0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `blez` branch at 0x1015c680 targets 0x1015c6dc, is taken when a0(=[0x102c5d70]) <= 0 (signed), and falls through when a0(=[0x102c5d70]) > 0 (signed).
  The `beq` branch at 0x1015c698 targets 0x1015c6d0, is taken when (a0(=[0x102c5d70]) & 0x1) == 0, and falls through when (a0(=[0x102c5d70]) & 0x1) != 0.
  The `beq` branch at 0x1015c6a4 targets 0x1015c6cc, is taken when a0(=[[sym(clients)]]) == 0, and falls through when a0(=[[sym(clients)]]) != 0.
  The `bne` branch at 0x1015c6b0 targets 0x1015c938, is taken when a7(=[[[sym(clients)]]+48]) != a2(=[a0+4]), and falls through when a7(=[[[sym(clients)]]+48]) == a2(=[a0+4]).
  The `bnel` branch at 0x1015c6d4 targets 0x1015c70c, is taken when t2(?) != 0, and falls through when t2(?) == 0; its branch-likely delay slot `lw a0,0(a1)` at 0x1015c6d8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x1015c700 targets 0x1015c6dc, is taken when a1(?) == a4(=([sym(clients)] + ([0x102c5d70] << 0x2))), and falls through when a1(?) != a4(=([sym(clients)] + ([0x102c5d70] << 0x2))).
  The `beq` branch at 0x1015c70c targets 0x1015c734, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x1015c718 targets 0x1015c754, is taken when t9(?) != a2(=[a0+4]), and falls through when t9(?) == a2(=[a0+4]).
  The `beq` branch at 0x1015c738 targets 0x1015c700, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x1015c744 targets 0x1015c768, is taken when v1(?) != a2(=[a0+4]), and falls through when v1(?) == a2(=[a0+4]).
  The `beq` branch at 0x1015c74c targets 0x1015c6f0 and is always taken.
  The `bne` branch at 0x1015c754 targets 0x1015c734, is taken when a6(?) != a2(=[a0+4]), and falls through when a6(?) == a2(=[a0+4]).
  The `beq` branch at 0x1015c760 targets 0x1015c734 and is always taken.
  The `bne` branch at 0x1015c768 targets 0x1015c700, is taken when a6(?) != a2(=[a0+4]), and falls through when a6(?) == a2(=[a0+4]).
  The `beq` branch at 0x1015c774 targets 0x1015c700 and is always taken.
  The `beq` branch at 0x1015c77c targets 0x1015c614, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x1015c78c targets 0x1015c614, is taken when a0(=[[([a0+132] + ([0x102cc3a8] << 0x2))]+8]) == a1(?), and falls through when a0(=[[([a0+132] + ([0x102cc3a8] << 0x2))]+8]) != a1(?).
  The `beq` branch at 0x1015c7a4 targets 0x1015c618 and is always taken.
  The `bne` branch at 0x1015c7b8 targets 0x1015c7d0, is taken when a2 != 0, and falls through when a2 == 0.
  The `beq` branch at 0x1015c7c0 targets 0x1015c6e0, is taken when a1(=[([a0+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+1]:1) == a0(=-0x1), and falls through when a1(=[([a0+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+1]:1) != a0(=-0x1).
  The `beq` branch at 0x1015c7c8 targets 0x1015c800 and is always taken.
  The `bne` branch at 0x1015c7d4 targets 0x1015c7e8, is taken when a3(=[a0+4]) != s0(=a1), and falls through when a3(=[a0+4]) == s0(=a1).
  The `beq` branch at 0x1015c7e0 targets 0x1015c7f4 and is always taken.
  The `beq` branch at 0x1015c7f4 targets 0x1015c6e0, is taken when a1(=[([a0+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+1]:1) == a0(?), and falls through when a1(=[([a0+132] + ([sym(dbcWindowPrivateIndex)] << 0x2))+1]:1) != a0(?).
  The `beq` branch at 0x1015c824 targets 0x1015c838, is taken when a3(=0x10000000) >= a4(=[sym(globalSerialNumber)]+1) (unsigned), and falls through when a3(=0x10000000) < a4(=[sym(globalSerialNumber)]+1) (unsigned).
  The `beq` branch at 0x1015c830 targets 0x1015c83c and is always taken.
  The `beq` branch at 0x1015c858 targets 0x1015c6dc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `blez` branch at 0x1015c860 targets 0x1015c6dc, is taken when a0(=[0x102c5d70]) <= 0 (signed), and falls through when a0(=[0x102c5d70]) > 0 (signed).
  The `beq` branch at 0x1015c86c targets 0x1015c8a0, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x1015c878 targets 0x1015c8a0, is taken when a0(=[[sym(clients)]]) == 0, and falls through when a0(=[[sym(clients)]]) != 0.
  The `bne` branch at 0x1015c884 targets 0x1015c94c, is taken when t3(=[[[sym(clients)]]+48]) != a6(=[a0+4]), and falls through when t3(=[[[sym(clients)]]+48]) == a6(=[a0+4]).
  The `bnel` branch at 0x1015c8a0 targets 0x1015c8fc, is taken when t0(?) != 0, and falls through when t0(?) == 0; its branch-likely delay slot `lw a0,0(a2)` at 0x1015c8a4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x1015c8a8 targets 0x1015c6e0 and is always taken.
  The `beq` branch at 0x1015c8c8 targets 0x1015c8f0, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x1015c8d4 targets 0x1015c924, is taken when v1(?) != a6(=[a0+4]), and falls through when v1(?) == a6(=[a0+4]).
  The `beq` branch at 0x1015c8f0 targets 0x1015c8a8, is taken when a2(?) == a4(=([sym(clients)] + ([0x102c5d70] << 0x2))), and falls through when a2(?) != a4(=([sym(clients)] + ([0x102c5d70] << 0x2))).
  The `beq` branch at 0x1015c8fc targets 0x1015c8c4, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x1015c908 targets 0x1015c8b0, is taken when a7(?) == a6(=[a0+4]), and falls through when a7(?) != a6(=[a0+4]).
  The `bne` branch at 0x1015c910 targets 0x1015c8c4, is taken when a1(?) != a6(=[a0+4]), and falls through when a1(?) == a6(=[a0+4]).
  The `beq` branch at 0x1015c91c targets 0x1015c8c4 and is always taken.
  The `bne` branch at 0x1015c924 targets 0x1015c8f0, is taken when a1(?) != a6(=[a0+4]), and falls through when a1(?) == a6(=[a0+4]).
  The `beq` branch at 0x1015c930 targets 0x1015c8f0 and is always taken.
  The `bne` branch at 0x1015c938 targets 0x1015c6cc, is taken when a7(=[[[sym(clients)]]+56]) != a2(=[a0+4]), and falls through when a7(=[[[sym(clients)]]+56]) == a2(=[a0+4]).
  The `beq` branch at 0x1015c944 targets 0x1015c6cc and is always taken.
  The `bne` branch at 0x1015c950 targets 0x1015c8a0, is taken when t2(=[[[sym(clients)]]+56]) != a6(=[a0+4]), and falls through when t2(=[[[sym(clients)]]+56]) == a6(=[a0+4]).
  The `beq` branch at 0x1015c95c targets 0x1015c8a0 and is always taken.
  The return at 0x1015c6e8 has v0 = ?.
- `ProcDbeDeallocateBackBufferName..MHC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1015c970 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1015c970-0x1015cab0 (320 bytes).
  It occupies 320 bytes.
  The `lw` at 0x1015c970 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x1015c974 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x1015c9bc loads 4 bytes from [a0+8] +0x4.
  9 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1015c9e4, `lw` at 0x1015c9f4, `lw` at 0x1015ca10.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x18, including `sw` at 0x1015ca60, `sw` at 0x1015ca7c.
  The `jal` at 0x1015c9b8 calls SecurityLookupIDByType [0x100d6140] with a0=a0 at entry (arg0), a1=[[a0+8]+4], a2=[0x102ca7cc], a3=0x4.
  The `jal` at 0x1015c9e0 calls SecurityLookupIDByType [0x100d6140] with a0=a0 at entry (arg0), a1=?, a2=[0x102ca7c8], a3=0x4.
  The `jal` at 0x1015ca90 calls FreeResource [0x100bc480] with a0=?, a1=0x0, a2=?, a3=?.
  The `beq` branch at 0x1015c988 targets 0x1015c9a0, is taken when at(=[a0+72]) == v0(=0x2), and falls through when at(=[a0+72]) != v0(=0x2).
  The `beq` branch at 0x1015c9c4 targets 0x1015ca64, is taken when v0(=ret(SecurityLookupIDByType)) == 0, and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  The `beq` branch at 0x1015c9e8 targets 0x1015ca64, is taken when v0(=ret(SecurityLookupIDByType)) == 0, and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  The `blez` branch at 0x1015ca00 targets 0x1015ca80, is taken when a7(?) <= 0 (signed), and falls through when a7(?) > 0 (signed).
  The `beq` branch at 0x1015ca28 targets 0x1015ca50, is taken when a6(?) == a0(?), and falls through when a6(?) != a0(?).
  The `beq` branch at 0x1015ca30 targets 0x1015ca50, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x1015ca40 targets 0x1015ca50, is taken when t0(?) == a0(?), and falls through when t0(?) != a0(?).
  The `bne` branch at 0x1015ca48 targets 0x1015ca20, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bne` branch at 0x1015ca50 targets 0x1015ca90, is taken when a3(?) != a7(?), and falls through when a3(?) == a7(?).
  The `beq` branch at 0x1015ca5c targets 0x1015c998 and is always taken.
  The `beq` branch at 0x1015ca80 targets 0x1015caa4, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x1015ca9c targets 0x1015c998 and is always taken.
  The `beq` branch at 0x1015caa8 targets 0x1015ca58 and is always taken.
  The return at 0x1015c990 has v0 = 0x10.
  The return at 0x1015c998 has v0 = one of [0x102ca7d8], 0x0.
  The return at 0x1015ca78 has v0 = [0x102ca7d8].
- `CirculateWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x101610f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x101610f0-0x101613dc (748 bytes).
  It occupies 748 bytes.
  The `lw` at 0x10161100 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x10161114 loads 4 bytes from sym(screenIsSaved) +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x24, including `lw` at 0x10161120, `lw` at 0x10161258.
  7 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10161150, `lw` at 0x10161160, `lw` at 0x101611a0.
  The `lw` at 0x10161184 loads 4 bytes from a0 (arg0 at entry) +0x28.
  12 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x101611d4, `lhu` at 0x101611e4, `lhu` at 0x101611f4.
  8 such `lh` accesses load 2 bytes from ?, including `lh` at 0x101611d8, `lh` at 0x101611e8, `lh` at 0x101611f8.
  The `lw` at 0x10161240 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x10161244 loads 4 bytes from [a0+16] +0x0.
  The `lw` at 0x10161254 loads 4 bytes from (sym(savedScreenInfo) + ([[a0+16]] << 0x4)) +0x0.
  The `lw` at 0x1016126c loads 4 bytes from [a0+36] +0x1c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0x10161284, `lw` at 0x10161290.
  The `lw` at 0x101612a4 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `lw` at 0x101612ac loads 4 bytes from a0 (arg0 at entry) +0x68.
  The `lw` at 0x101612b0 loads 4 bytes from [a0+120] +0x10.
  The `jal` at 0x10161228 calls IOverlapAnyWindow..M [0x101d2290] with a0=?, a1=sp-96, a2=?, a3=?.
  The `jal` at 0x101612dc calls MaybeDeliverEventsToClient [0x101b1c50] with a0=a0 at entry (arg0), a1=sp-88, a2=0x1, a3=0x100000, a4=a2 at entry (arg2), a5=0x1b.
  The `jal` at 0x10161304 calls DeliverEvents [0x10064f80] with a0=?, a1=sp-88, a2=0x1, a3=0x0, a7=0x1a.
  The `jal` at 0x1016131c calls ReflectStackChange..O [0x10278200] with a0=?, a1=?, a2=0x1, a3=?.
  The `jal` at 0x10161398 calls AnyWindowOverlapsMe..L [0x100c2610] with a0=?, a1=?, a2=sp-96, a3=?.
  The `bne` branch at 0x10161110 targets 0x1016111c, is taken when at(=[a0+24]) != 0, and falls through when at(=[a0+24]) == 0.
  The `beq` branch at 0x10161118 targets 0x10161240, is taken when v0(=[sym(screenIsSaved)]) == 0, and falls through when v0(=[sym(screenIsSaved)]) != 0.
  The `beq` branch at 0x1016112c targets 0x10161184, is taken when a0(=a1) == 0, and falls through when a0(=a1) != 0.
  The `beq` branch at 0x1016113c targets 0x1016116c, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bltz` branch at 0x10161158 targets 0x101611d4, is taken when a1(?) < 0 (signed), and falls through when a1(?) >= 0 (signed).
  The `bne` branch at 0x10161164 targets 0x10161150, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x1016118c targets 0x101611bc, is taken when s1(?) == s0(?), and falls through when s1(?) != s0(?).
  The `bltz` branch at 0x101611a8 targets 0x10161340, is taken when a2(?) < 0 (signed), and falls through when a2(?) >= 0 (signed).
  The `bne` branch at 0x101611b4 targets 0x101611a0, is taken when s1(?) != s0(?), and falls through when s1(?) == s0(?).
  The `bne` branch at 0x10161230 targets 0x1016127c, is taken when v0(=ret(IOverlapAnyWindow..M)) != 0, and falls through when v0(=ret(IOverlapAnyWindow..M)) == 0.
  The `beq` branch at 0x10161238 targets 0x1016113c and is always taken.
  The `beq` branch at 0x1016125c targets 0x1016111c, is taken when t9(=[(sym(savedScreenInfo) + ([[a0+16]] << 0x4))]) == 0, and falls through when t9(=[(sym(savedScreenInfo) + ([[a0+16]] << 0x4))]) != 0.
  The `beq` branch at 0x10161264 targets 0x10161124, is taken when v0(=[a0+36]) == 0, and falls through when v0(=[a0+36]) != 0.
  The `beq` branch at 0x10161270 targets 0x10161128 and is always taken.
  The `beq` branch at 0x10161298 targets 0x101613b8, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x101612a8 targets 0x101613c0, is taken when a0(=[a0+120]) == 0, and falls through when a0(=[a0+120]) != 0.
  The `bgez` branch at 0x101612bc targets 0x101612f0, is taken when a4(=(([[a0+120]+16] | [a0+104]) << 0x2b)) >= 0 (signed), and falls through when a4(=(([[a0+120]+16] | [a0+104]) << 0x2b)) < 0 (signed).
  The `beq` branch at 0x101612e8 targets 0x101613b0, is taken when v0(=ret(MaybeDeliverEventsToClient)) == a6(=0x1), and falls through when v0(=ret(MaybeDeliverEventsToClient)) != a6(=0x1).
  The `beq` branch at 0x10161310 targets 0x101613d4, is taken when t0(=a1) == 0, and falls through when t0(=a1) != 0.
  The `bne` branch at 0x101613a0 targets 0x1016127c, is taken when v0(=ret(AnyWindowOverlapsMe..L)) != 0, and falls through when v0(=ret(AnyWindowOverlapsMe..L)) == 0.
  The `beq` branch at 0x101613a8 targets 0x1016118c and is always taken.
  The `beq` branch at 0x101613b0 targets 0x1016116c and is always taken.
  The `beq` branch at 0x101613b8 targets 0x101612a4 and is always taken.
  The `bltz` branch at 0x101613c4 targets 0x101612c8, is taken when a1(=([a0+104] << 0x2b)) < 0 (signed), and falls through when a1(=([a0+104] << 0x2b)) >= 0 (signed).
  The `beq` branch at 0x101613cc targets 0x101612f0 and is always taken.
  The `beq` branch at 0x101613d4 targets 0x10161318 and is always taken.
  The return at 0x1016117c has v0 = 0x0.
  The return at 0x101611cc has v0 = 0x0.
  The return at 0x10161338 has v0 = 0x0.
  The instructions from 0x10161278 to 0x10161278 are not reached by any path from the entry, and their branches are not listed.
- `ProcXineramaUnmapWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10161ef0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10161ef0-0x10162040 (336 bytes).
  It occupies 336 bytes.
  The `lw` at 0x10161ef0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x10161ef8 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x10161f4c loads 4 bytes from [a0+8] +0x4.
  The `lw` at 0x10161f58 loads 4 bytes from sym(XRT_WINDOW) +0x0.
  2 such `sw` accesses store 4 bytes to sym(panoramiXMode) +0x0, including `sw` at 0x10161f80, `sw` at 0x1016201c.
  The `lw` at 0x10161fb0 loads 4 bytes from ?.
  The `sw` at 0x10161fbc stores 4 bytes to ?.
  3 such `sw` accesses store 4 bytes to sym(panoramiXScreen0) +0x0, including `sw` at 0x10161fc0, `sw` at 0x10161fec, `sw` at 0x10162030.
  The `lw` at 0x10161fc8 loads 4 bytes from sym(ProcVector) +0x28.
  The `jal` at 0x10161f54 calls SecurityLookupIDByType [0x100d6140] with a0=a0 at entry (arg0), a1=[[a0+8]+4], a2=[sym(XRT_WINDOW)], a3=0x1.
  The `jalr` at 0x10161fcc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a7=sym(panoramiXScreen0).
  The `jal` at 0x10161ff8 calls XineramaDeliverVisibilityNotify [0x10197300] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10162000 calls XineramaDeliverExpose [0x100e7410] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10161f14 targets 0x10161f38, is taken when v1(=[a0+72]) == a1(=0x2), and falls through when v1(=[a0+72]) != a1(=0x2).
  The `beq` branch at 0x10161f6c targets 0x10162020, is taken when v0(=ret(SecurityLookupIDByType)) == 0, and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  The `blez` branch at 0x10161f7c targets 0x10162034, is taken when a5(=[0x102c5f1c]) <= 0 (signed), and falls through when a5(=[0x102c5f1c]) > 0 (signed).
  The `beq` branch at 0x10161f88 targets 0x10161fa0 and is always taken.
  The `beq` branch at 0x10161f98 targets 0x1016202c, is taken when a4(?) >= a2(=[0x102c5f1c]) (signed), and falls through when a4(?) < a2(=[0x102c5f1c]) (signed).
  The `bne` branch at 0x10161fb8 targets 0x10161fc4, is taken when a6(?) != a5(?), and falls through when a6(?) == a5(?).
  The `beq` branch at 0x10161ff0 targets 0x10161f90, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x10162018 targets 0x10161f28 and is always taken.
  The `beq` branch at 0x10162024 targets 0x10161f2c and is always taken.
  The `beq` branch at 0x1016202c targets 0x10161ff8 and is always taken.
  The `beq` branch at 0x10162038 targets 0x10161ff8 and is always taken.
  The return at 0x10161f20 has v0 = 0x10.
  The return at 0x10161f30 has v0 = one of ?, 0x3.
- `CIDRegisterFontFileFunctions` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10162530 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10162530-0x10162608 (216 bytes).
  It occupies 216 bytes.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10162568, `lw` at 0x10162574.
  The `sw` at 0x101625ec stores 4 bytes to (ret(Xrealloc) + ([0x102c7318]+1 << 0x2)) -0x4.
  The `jal` at 0x10162540 calls Type1InitStdProps [0x10264750] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10162570 calls strcmp with a0=?, a1=[0x102cd308], a2=?, a3=?.
  The `jal` at 0x101625ac calls Xrealloc [0x101b9470] with a0=[0x102c731c], a1=([0x102c7318] << 0x2)+4, a2=?, a3=?.
  The `blez` branch at 0x10162554 targets 0x10162598, is taken when v0(=[0x102c7318]) <= 0 (signed), and falls through when v0(=[0x102c7318]) > 0 (signed).
  The `beq` branch at 0x10162578 targets 0x101625f4, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `bne` branch at 0x10162590 targets 0x10162560, is taken when s1(?) < v0(=[0x102c7318]) (signed), and falls through when s1(?) >= v0(=[0x102c7318]) (signed).
  The `beq` branch at 0x101625b4 targets 0x101625f4, is taken when v0(=ret(Xrealloc)) == 0, and falls through when v0(=ret(Xrealloc)) != 0.
  The return at 0x101625e8 has v0 = ret(Xrealloc).
  The return at 0x10162600 has v0 = one of ret(strcmp), ret(Xrealloc).
  The instructions from 0x101625f0 to 0x101625f0 are not reached by any path from the entry, and their branches are not listed.
