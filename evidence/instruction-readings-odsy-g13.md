# Instruction readings from hostfacts

Each entry reports selected non-stack accesses, calls with argument slots, conditional branches and return values from the exact binary build named in its header. Every claim cites its instruction address. These are software observations, graded Inferred; they do not establish hardware behaviour.



- `__glx_IsList` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81ab30 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81ab30-0xd81aca4 (372 bytes).
  It occupies 372 bytes.
  The `lw` at 0xd81ab40 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81ab58 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81ab60 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81ab64 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81ab80, `lw` at 0xd81ac38.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81ab8c, `lw` at 0xd81aba4, `lw` at 0xd81abd0.
  The `lw` at 0xd81ab90 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd81aba8 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81abb8, `sw` at 0xd81abd4.
  The `sh` at 0xd81abdc stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81abe0, `sb` at 0xd81ac0c.
  The `lw` at 0xd81abe4 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81abf8 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81abfc stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd81ac00 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd81ac04 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81ac10 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81ac1c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd81ac28 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81ac48, `lw` at 0xd81ac68.
  The `lw` at 0xd81ac50 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81ab78 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd81ab98 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81abc4 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81ac30 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd81ac58 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81ac7c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd81ab68 targets 0xd81ac90, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81ab6c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81ab88 targets 0xd81aba8, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81ab8c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81abb4 targets 0xd81abd8, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81abb8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81ac44 targets 0xd81ac6c, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81ac48 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81ac70 targets 0xd81ac90, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81ac74 runs only when taken and is annulled on fall-through.
  The return at 0xd81ac9c has v0 = one of 0x0, ?.
- `__glx_GetTexEnvfv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81aca4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81aca4-0xd81ae44 (416 bytes).
  It occupies 416 bytes.
  The `lw` at 0xd81acb4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81acd4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81acd8 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81acdc loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81acfc, `lw` at 0xd81adf4.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81ad08, `lw` at 0xd81ad20, `lw` at 0xd81ad4c.
  The `lw` at 0xd81ad0c loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd81ad24 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81ad34, `sw` at 0xd81ad50.
  The `sh` at 0xd81ad58 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81ad5c, `sb` at 0xd81ad88.
  The `lw` at 0xd81ad60 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81ad74 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81ad78 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd81ad7c loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd81ad80 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81ad8c loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81ad98 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd81ada4 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd81adac stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `swc1` at 0xd81add8 stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81adfc, `lw` at 0xd81ae14.
  The `lw` at 0xd81ae00 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81acf4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81ad14 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81ad40 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81adb4 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd81ade8 calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd81ae08 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81ae24 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd81ace0 targets 0xd81ae34, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81ace4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81ad04 targets 0xd81ad24, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81ad08 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81ad30 targets 0xd81ad54, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81ad34 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd81adc8 targets 0xd81addc, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd81add4 targets 0xd81adf4 and is always taken.
  The `beql` branch at 0xd81adf8 targets 0xd81ae18, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81adfc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81ae1c targets 0xd81ae34, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81ae20 runs only when taken and is annulled on fall-through.
  The return at 0xd81ae3c has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).
- `__glx_GetPixelMapusv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81ae44 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81ae44-0xd81affc (440 bytes).
  It occupies 440 bytes.
  The `lw` at 0xd81ae54 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81ae70 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81ae74 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81ae78 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81ae98, `lw` at 0xd81afac.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81aea4, `lw` at 0xd81aebc, `lw` at 0xd81aee8.
  The `lw` at 0xd81aea8 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd81aec0 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81aed0, `sw` at 0xd81aeec.
  The `sh` at 0xd81aef4 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81aef8, `sb` at 0xd81af24.
  The `lw` at 0xd81aefc loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81af10 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81af14 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd81af18 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd81af1c stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81af28 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81af34 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd81af40 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sh` at 0xd81af70 stores 2 bytes to a1 (arg1 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81afb4, `lw` at 0xd81afcc.
  The `lw` at 0xd81afb8 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81ae90 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[[0x1014]+276]+4], a3=a3 at entry (arg3).
  The `jalr` at 0xd81aeb0 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81aedc calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81af48 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd81af80 calls _XRead with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xd81afa0 calls _XEatData with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81afc0 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81afdc calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd81ae7c targets 0xd81afec, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81ae80 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81aea0 targets 0xd81aec0, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81aea4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81aecc targets 0xd81aef0, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81aed0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd81af5c targets 0xd81af74, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd81af6c targets 0xd81afac and is always taken.
  The `beq` branch at 0xd81af8c targets 0xd81afac, is taken when (s1(?) & 0x3) == 0, and falls through when (s1(?) & 0x3) != 0.
  The `beql` branch at 0xd81afb0 targets 0xd81afd0, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81afb4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81afd4 targets 0xd81afec, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81afd8 runs only when taken and is annulled on fall-through.
  The return at 0xd81aff4 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).
- `__glx_GetPixelMapuiv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81affc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81affc-0xd81b190 (404 bytes).
  It occupies 404 bytes.
  The `lw` at 0xd81b00c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81b028 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81b02c loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81b030 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81b050, `lw` at 0xd81b140.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81b05c, `lw` at 0xd81b074, `lw` at 0xd81b0a0.
  The `lw` at 0xd81b060 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd81b078 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81b088, `sw` at 0xd81b0a4.
  The `sh` at 0xd81b0ac stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81b0b0, `sb` at 0xd81b0dc.
  The `lw` at 0xd81b0b4 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81b0c8 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81b0cc stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd81b0d0 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd81b0d4 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81b0e0 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81b0ec stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd81b0f8 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd81b124 stores 4 bytes to a1 (arg1 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81b148, `lw` at 0xd81b160.
  The `lw` at 0xd81b14c loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81b048 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[[0x1014]+276]+4], a3=a3 at entry (arg3).
  The `jalr` at 0xd81b068 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81b094 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81b100 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd81b134 calls _XRead with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xd81b154 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81b170 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd81b034 targets 0xd81b180, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81b038 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81b058 targets 0xd81b078, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81b05c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81b084 targets 0xd81b0a8, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81b088 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd81b114 targets 0xd81b128, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd81b120 targets 0xd81b140 and is always taken.
  The `beql` branch at 0xd81b144 targets 0xd81b164, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81b148 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81b168 targets 0xd81b180, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81b16c runs only when taken and is annulled on fall-through.
  The return at 0xd81b188 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).
- `__glx_GetPixelMapfv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81b190 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81b190-0xd81b324 (404 bytes).
  It occupies 404 bytes.
  The `lw` at 0xd81b1a0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81b1bc loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81b1c0 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81b1c4 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81b1e4, `lw` at 0xd81b2d4.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81b1f0, `lw` at 0xd81b208, `lw` at 0xd81b234.
  The `lw` at 0xd81b1f4 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd81b20c loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81b21c, `sw` at 0xd81b238.
  The `sh` at 0xd81b240 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81b244, `sb` at 0xd81b270.
  The `lw` at 0xd81b248 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81b25c stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81b260 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd81b264 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd81b268 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81b274 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81b280 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd81b28c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `swc1` at 0xd81b2b8 stores 4 bytes to a1 (arg1 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81b2dc, `lw` at 0xd81b2f4.
  The `lw` at 0xd81b2e0 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81b1dc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[[0x1014]+276]+4], a3=a3 at entry (arg3).
  The `jalr` at 0xd81b1fc calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81b228 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81b294 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd81b2c8 calls _XRead with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xd81b2e8 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81b304 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd81b1c8 targets 0xd81b314, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81b1cc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81b1ec targets 0xd81b20c, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81b1f0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81b218 targets 0xd81b23c, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81b21c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd81b2a8 targets 0xd81b2bc, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd81b2b4 targets 0xd81b2d4 and is always taken.
  The `beql` branch at 0xd81b2d8 targets 0xd81b2f8, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81b2dc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81b2fc targets 0xd81b314, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81b300 runs only when taken and is annulled on fall-through.
  The return at 0xd81b31c has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).
- `__glx_GetMaterialiv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81b324 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81b324-0xd81b4c4 (416 bytes).
  It occupies 416 bytes.
  The `lw` at 0xd81b334 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81b354 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81b358 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81b35c loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81b37c, `lw` at 0xd81b474.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81b388, `lw` at 0xd81b3a0, `lw` at 0xd81b3cc.
  The `lw` at 0xd81b38c loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd81b3a4 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81b3b4, `sw` at 0xd81b3d0.
  The `sh` at 0xd81b3d8 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81b3dc, `sb` at 0xd81b408.
  The `lw` at 0xd81b3e0 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81b3f4 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81b3f8 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd81b3fc loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd81b400 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81b40c loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81b418 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd81b424 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd81b42c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd81b458 stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81b47c, `lw` at 0xd81b494.
  The `lw` at 0xd81b480 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81b374 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81b394 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81b3c0 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81b434 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd81b468 calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd81b488 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81b4a4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd81b360 targets 0xd81b4b4, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81b364 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81b384 targets 0xd81b3a4, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81b388 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81b3b0 targets 0xd81b3d4, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81b3b4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd81b448 targets 0xd81b45c, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd81b454 targets 0xd81b474 and is always taken.
  The `beql` branch at 0xd81b478 targets 0xd81b498, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81b47c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81b49c targets 0xd81b4b4, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81b4a0 runs only when taken and is annulled on fall-through.
  The return at 0xd81b4bc has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).
- `__glx_GetMaterialfv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81b4c4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81b4c4-0xd81b664 (416 bytes).
  It occupies 416 bytes.
  The `lw` at 0xd81b4d4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81b4f4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81b4f8 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81b4fc loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81b51c, `lw` at 0xd81b614.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81b528, `lw` at 0xd81b540, `lw` at 0xd81b56c.
  The `lw` at 0xd81b52c loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd81b544 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81b554, `sw` at 0xd81b570.
  The `sh` at 0xd81b578 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81b57c, `sb` at 0xd81b5a8.
  The `lw` at 0xd81b580 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81b594 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81b598 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd81b59c loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd81b5a0 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81b5ac loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81b5b8 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd81b5c4 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd81b5cc stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `swc1` at 0xd81b5f8 stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81b61c, `lw` at 0xd81b634.
  The `lw` at 0xd81b620 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81b514 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81b534 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81b560 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81b5d4 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd81b608 calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd81b628 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81b644 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd81b500 targets 0xd81b654, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81b504 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81b524 targets 0xd81b544, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81b528 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81b550 targets 0xd81b574, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81b554 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd81b5e8 targets 0xd81b5fc, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd81b5f4 targets 0xd81b614 and is always taken.
  The `beql` branch at 0xd81b618 targets 0xd81b638, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81b61c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81b63c targets 0xd81b654, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81b640 runs only when taken and is annulled on fall-through.
  The return at 0xd81b65c has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).
- `__glx_GetMapiv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81b664 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81b664-0xd81b804 (416 bytes).
  It occupies 416 bytes.
  The `lw` at 0xd81b674 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81b694 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81b698 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81b69c loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81b6bc, `lw` at 0xd81b7b4.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81b6c8, `lw` at 0xd81b6e0, `lw` at 0xd81b70c.
  The `lw` at 0xd81b6cc loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd81b6e4 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81b6f4, `sw` at 0xd81b710.
  The `sh` at 0xd81b718 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81b71c, `sb` at 0xd81b748.
  The `lw` at 0xd81b720 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81b734 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81b738 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd81b73c loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd81b740 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81b74c loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81b758 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd81b764 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd81b76c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd81b798 stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81b7bc, `lw` at 0xd81b7d4.
  The `lw` at 0xd81b7c0 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81b6b4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81b6d4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81b700 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81b774 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd81b7a8 calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd81b7c8 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81b7e4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd81b6a0 targets 0xd81b7f4, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81b6a4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81b6c4 targets 0xd81b6e4, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81b6c8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81b6f0 targets 0xd81b714, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81b6f4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd81b788 targets 0xd81b79c, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd81b794 targets 0xd81b7b4 and is always taken.
  The `beql` branch at 0xd81b7b8 targets 0xd81b7d8, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81b7bc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81b7dc targets 0xd81b7f4, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81b7e0 runs only when taken and is annulled on fall-through.
  The return at 0xd81b7fc has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).
- `__glx_GetTexEnviv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81b804 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81b804-0xd81b9a4 (416 bytes).
  It occupies 416 bytes.
  The `lw` at 0xd81b814 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81b834 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81b838 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81b83c loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81b85c, `lw` at 0xd81b954.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81b868, `lw` at 0xd81b880, `lw` at 0xd81b8ac.
  The `lw` at 0xd81b86c loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd81b884 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81b894, `sw` at 0xd81b8b0.
  The `sh` at 0xd81b8b8 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81b8bc, `sb` at 0xd81b8e8.
  The `lw` at 0xd81b8c0 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81b8d4 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81b8d8 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd81b8dc loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd81b8e0 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81b8ec loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81b8f8 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd81b904 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd81b90c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd81b938 stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81b95c, `lw` at 0xd81b974.
  The `lw` at 0xd81b960 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81b854 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81b874 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81b8a0 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81b914 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd81b948 calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd81b968 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81b984 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd81b840 targets 0xd81b994, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81b844 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81b864 targets 0xd81b884, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81b868 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81b890 targets 0xd81b8b4, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81b894 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd81b928 targets 0xd81b93c, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd81b934 targets 0xd81b954 and is always taken.
  The `beql` branch at 0xd81b958 targets 0xd81b978, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81b95c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81b97c targets 0xd81b994, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81b980 runs only when taken and is annulled on fall-through.
  The return at 0xd81b99c has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).
- `__glx_GetTexLevelParameteriv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81b9a4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81b9a4-0xd81bb50 (428 bytes).
  It occupies 428 bytes.
  The `lw` at 0xd81b9b4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81b9d8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81b9dc loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81b9e0 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81ba00, `lw` at 0xd81bb00.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81ba0c, `lw` at 0xd81ba24, `lw` at 0xd81ba50.
  The `lw` at 0xd81ba10 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd81ba28 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81ba38, `sw` at 0xd81ba54.
  The `sh` at 0xd81ba5c stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81ba60, `sb` at 0xd81ba8c.
  The `lw` at 0xd81ba64 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81ba78 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81ba7c stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd81ba80 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd81ba84 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81ba90 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81ba9c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd81baa8 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd81bab0 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd81bab8 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x10.
  The `sw` at 0xd81bae4 stores 4 bytes to a3 (arg3 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81bb08, `lw` at 0xd81bb20.
  The `lw` at 0xd81bb0c loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81b9f8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd81ba18 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81ba44 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81bac0 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd81baf4 calls _XRead with a0=[[[0x1014]+276]+216], a1=a3 at entry (arg3), a2=?, a3=?.
  The `jalr` at 0xd81bb14 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81bb30 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd81b9e4 targets 0xd81bb3c, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  The `beql` branch at 0xd81ba08 targets 0xd81ba28, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81ba0c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81ba34 targets 0xd81ba58, is taken when t8(=[[[[0x1014]+276]+216]+112]) >= t0(=[[[[0x1014]+276]+216]+108]+20) (unsigned), and falls through when t8(=[[[[0x1014]+276]+216]+112]) < t0(=[[[[0x1014]+276]+216]+108]+20) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81ba38 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd81bad4 targets 0xd81bae8, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd81bae0 targets 0xd81bb00 and is always taken.
  The `beql` branch at 0xd81bb04 targets 0xd81bb24, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81bb08 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81bb28 targets 0xd81bb40, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81bb2c runs only when taken and is annulled on fall-through.
  The return at 0xd81bb48 has v0 = one of [[[[0x1014]+276]+216]+124], ?.
- `__glx_GetTexLevelParameterfv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81bb50 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81bb50-0xd81bcfc (428 bytes).
  It occupies 428 bytes.
  The `lw` at 0xd81bb60 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81bb84 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81bb88 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81bb8c loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81bbac, `lw` at 0xd81bcac.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81bbb8, `lw` at 0xd81bbd0, `lw` at 0xd81bbfc.
  The `lw` at 0xd81bbbc loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd81bbd4 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81bbe4, `sw` at 0xd81bc00.
  The `sh` at 0xd81bc08 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81bc0c, `sb` at 0xd81bc38.
  The `lw` at 0xd81bc10 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81bc24 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81bc28 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd81bc2c loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd81bc30 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81bc3c loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81bc48 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd81bc54 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd81bc5c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd81bc64 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x10.
  The `swc1` at 0xd81bc90 stores 4 bytes to a3 (arg3 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81bcb4, `lw` at 0xd81bccc.
  The `lw` at 0xd81bcb8 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81bba4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd81bbc4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81bbf0 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81bc6c calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd81bca0 calls _XRead with a0=[[[0x1014]+276]+216], a1=a3 at entry (arg3), a2=?, a3=?.
  The `jalr` at 0xd81bcc0 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81bcdc calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd81bb90 targets 0xd81bce8, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  The `beql` branch at 0xd81bbb4 targets 0xd81bbd4, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81bbb8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81bbe0 targets 0xd81bc04, is taken when t8(=[[[[0x1014]+276]+216]+112]) >= t0(=[[[[0x1014]+276]+216]+108]+20) (unsigned), and falls through when t8(=[[[[0x1014]+276]+216]+112]) < t0(=[[[[0x1014]+276]+216]+108]+20) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81bbe4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd81bc80 targets 0xd81bc94, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd81bc8c targets 0xd81bcac and is always taken.
  The `beql` branch at 0xd81bcb0 targets 0xd81bcd0, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81bcb4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81bcd4 targets 0xd81bcec, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81bcd8 runs only when taken and is annulled on fall-through.
  The return at 0xd81bcf4 has v0 = one of [[[[0x1014]+276]+216]+124], ?.
- `__glx_GetTexParameteriv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81bcfc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81bcfc-0xd81be9c (416 bytes).
  It occupies 416 bytes.
  The `lw` at 0xd81bd0c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81bd2c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81bd30 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81bd34 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81bd54, `lw` at 0xd81be4c.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81bd60, `lw` at 0xd81bd78, `lw` at 0xd81bda4.
  The `lw` at 0xd81bd64 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd81bd7c loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81bd8c, `sw` at 0xd81bda8.
  The `sh` at 0xd81bdb0 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81bdb4, `sb` at 0xd81bde0.
  The `lw` at 0xd81bdb8 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81bdcc stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81bdd0 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd81bdd4 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd81bdd8 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81bde4 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81bdf0 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd81bdfc stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd81be04 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd81be30 stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81be54, `lw` at 0xd81be6c.
  The `lw` at 0xd81be58 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81bd4c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81bd6c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81bd98 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81be0c calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd81be40 calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd81be60 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81be7c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd81bd38 targets 0xd81be8c, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81bd3c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81bd5c targets 0xd81bd7c, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81bd60 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81bd88 targets 0xd81bdac, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81bd8c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd81be20 targets 0xd81be34, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd81be2c targets 0xd81be4c and is always taken.
  The `beql` branch at 0xd81be50 targets 0xd81be70, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81be54 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81be74 targets 0xd81be8c, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81be78 runs only when taken and is annulled on fall-through.
  The return at 0xd81be94 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).
- `__glx_GetTexParameterfv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81be9c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81be9c-0xd81c03c (416 bytes).
  It occupies 416 bytes.
  The `lw` at 0xd81beac loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81becc loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81bed0 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81bed4 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81bef4, `lw` at 0xd81bfec.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81bf00, `lw` at 0xd81bf18, `lw` at 0xd81bf44.
  The `lw` at 0xd81bf04 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd81bf1c loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81bf2c, `sw` at 0xd81bf48.
  The `sh` at 0xd81bf50 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81bf54, `sb` at 0xd81bf80.
  The `lw` at 0xd81bf58 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81bf6c stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81bf70 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd81bf74 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd81bf78 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81bf84 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81bf90 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd81bf9c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd81bfa4 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `swc1` at 0xd81bfd0 stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81bff4, `lw` at 0xd81c00c.
  The `lw` at 0xd81bff8 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81beec calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81bf0c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81bf38 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81bfac calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd81bfe0 calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd81c000 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81c01c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd81bed8 targets 0xd81c02c, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81bedc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81befc targets 0xd81bf1c, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81bf00 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81bf28 targets 0xd81bf4c, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81bf2c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd81bfc0 targets 0xd81bfd4, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd81bfcc targets 0xd81bfec and is always taken.
  The `beql` branch at 0xd81bff0 targets 0xd81c010, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81bff4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81c014 targets 0xd81c02c, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81c018 runs only when taken and is annulled on fall-through.
  The return at 0xd81c034 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).
- `__glx_GetTexGeniv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81c03c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81c03c-0xd81c1dc (416 bytes).
  It occupies 416 bytes.
  The `lw` at 0xd81c04c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81c06c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81c070 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81c074 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81c094, `lw` at 0xd81c18c.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81c0a0, `lw` at 0xd81c0b8, `lw` at 0xd81c0e4.
  The `lw` at 0xd81c0a4 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd81c0bc loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81c0cc, `sw` at 0xd81c0e8.
  The `sh` at 0xd81c0f0 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81c0f4, `sb` at 0xd81c120.
  The `lw` at 0xd81c0f8 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81c10c stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81c110 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd81c114 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd81c118 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81c124 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81c130 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd81c13c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd81c144 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd81c170 stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81c194, `lw` at 0xd81c1ac.
  The `lw` at 0xd81c198 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81c08c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81c0ac calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81c0d8 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81c14c calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd81c180 calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd81c1a0 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81c1bc calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd81c078 targets 0xd81c1cc, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81c07c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81c09c targets 0xd81c0bc, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81c0a0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81c0c8 targets 0xd81c0ec, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81c0cc runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd81c160 targets 0xd81c174, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd81c16c targets 0xd81c18c and is always taken.
  The `beql` branch at 0xd81c190 targets 0xd81c1b0, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81c194 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81c1b4 targets 0xd81c1cc, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81c1b8 runs only when taken and is annulled on fall-through.
  The return at 0xd81c1d4 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).
- `__glx_GetTexGenfv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81c1dc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81c1dc-0xd81c37c (416 bytes).
  It occupies 416 bytes.
  The `lw` at 0xd81c1ec loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81c20c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81c210 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81c214 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81c234, `lw` at 0xd81c32c.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81c240, `lw` at 0xd81c258, `lw` at 0xd81c284.
  The `lw` at 0xd81c244 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd81c25c loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81c26c, `sw` at 0xd81c288.
  The `sh` at 0xd81c290 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81c294, `sb` at 0xd81c2c0.
  The `lw` at 0xd81c298 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81c2ac stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81c2b0 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd81c2b4 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd81c2b8 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81c2c4 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81c2d0 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd81c2dc stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd81c2e4 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `swc1` at 0xd81c310 stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81c334, `lw` at 0xd81c34c.
  The `lw` at 0xd81c338 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81c22c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81c24c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81c278 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81c2ec calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd81c320 calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd81c340 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81c35c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd81c218 targets 0xd81c36c, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81c21c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81c23c targets 0xd81c25c, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81c240 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81c268 targets 0xd81c28c, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81c26c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd81c300 targets 0xd81c314, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd81c30c targets 0xd81c32c and is always taken.
  The `beql` branch at 0xd81c330 targets 0xd81c350, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81c334 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81c354 targets 0xd81c36c, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81c358 runs only when taken and is annulled on fall-through.
  The return at 0xd81c374 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).
- `__glx_GetTexGendv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81c37c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81c37c-0xd81c52c (432 bytes).
  It occupies 432 bytes.
  The `lw` at 0xd81c38c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81c3ac loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81c3b0 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81c3b4 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81c3d4, `lw` at 0xd81c4dc.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81c3e0, `lw` at 0xd81c3f8, `lw` at 0xd81c424.
  The `lw` at 0xd81c3e4 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd81c3fc loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81c40c, `sw` at 0xd81c428.
  The `sh` at 0xd81c430 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81c434, `sb` at 0xd81c460.
  The `lw` at 0xd81c438 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81c44c stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81c450 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd81c454 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd81c458 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81c464 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81c470 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd81c47c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd81c484 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81c4e4, `lw` at 0xd81c4fc.
  The `lw` at 0xd81c4e8 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81c3cc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81c3ec calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81c418 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81c48c calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd81c4b4 calls memcpy with a0=a2 at entry (arg2), a1=sp-36, a2=0x8, a3=?.
  The `jalr` at 0xd81c4d0 calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd81c4f0 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81c50c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd81c3b8 targets 0xd81c51c, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81c3bc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81c3dc targets 0xd81c3fc, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81c3e0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81c408 targets 0xd81c42c, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81c40c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd81c4a0 targets 0xd81c4c4, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd81c4bc targets 0xd81c4dc and is always taken.
  The `beql` branch at 0xd81c4e0 targets 0xd81c500, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81c4e4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81c504 targets 0xd81c51c, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81c508 runs only when taken and is annulled on fall-through.
  The return at 0xd81c524 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).
- `__glx_SamplePatternSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81c52c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81c52c-0xd81c5a0 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd81c538 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81c548 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81c554 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81c558 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81c55c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81c560 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd81c564 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81c56c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81c584 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd81c574 targets 0xd81c594, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81c578 runs only when taken and is annulled on fall-through.
  The return at 0xd81c598 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_EvalCoord2d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81c5a0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81c5a0-0xd81c664 (196 bytes).
  It occupies 196 bytes.
  The `lw` at 0xd81c5b0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81c5c8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81c5d4 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81c5e0 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81c5e4 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd81c620 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81c634 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81c5f4 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81c614 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=sp+8, a2=0x8, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81c644 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=?, a3=[[[0x1014]+276]+4]+20.
  The `beq` branch at 0xd81c630 targets 0xd81c650, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+20) (unsigned).
  The return at 0xd81c65c has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_EvalCoord1f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81c664 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81c664-0xd81c6d4 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xd81c670 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81c680 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81c68c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81c690 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81c694 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `swc1` at 0xd81c698 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd81c69c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81c6a4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81c6b8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd81c6ac targets 0xd81c6c8, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81c6b0 runs only when taken and is annulled on fall-through.
  The return at 0xd81c6cc has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_EvalCoord1dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81c6d4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81c6d4-0xd81c770 (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xd81c6e4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81c6f4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81c700 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81c70c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81c710 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd81c72c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81c740 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81c720 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x8, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81c750 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=?, a3=[[[0x1014]+276]+4]+12.
  The `beq` branch at 0xd81c73c targets 0xd81c75c, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+12) (unsigned).
  The return at 0xd81c768 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_EvalCoord1d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81c770 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81c770-0xd81c810 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xd81c780 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81c794 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81c7a0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81c7ac stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81c7b0 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd81c7cc loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81c7e0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81c7c0 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81c7f0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=?, a3=[[[0x1014]+276]+4]+12.
  The `beq` branch at 0xd81c7dc targets 0xd81c7fc, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+12) (unsigned).
  The return at 0xd81c808 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_MapGrid2f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81c810 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81c810-0xd81c8a8 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xd81c81c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81c830 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81c83c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81c844 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd81c848 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sw` at 0xd81c84c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd81c850 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `swc1` at 0xd81c854 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `sw` at 0xd81c858 stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `swc1` at 0xd81c864 stores 4 bytes to [[[0x1014]+276]+4] +0x14.
  The `swc1` at 0xd81c86c stores 4 bytes to [[[0x1014]+276]+4] +0x18.
  The `lw` at 0xd81c870 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81c874 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81c88c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+28, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd81c87c targets 0xd81c89c, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+28) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+28) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81c880 runs only when taken and is annulled on fall-through.
  The return at 0xd81c8a0 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_MapGrid2d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81c8a8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81c8a8-0xd81c9b4 (268 bytes).
  It occupies 268 bytes.
  The `lw` at 0xd81c8b8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81c8d8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81c8e4 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81c8f0 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81c8f4 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81c968 stores 4 bytes to [[[0x1014]+276]+4] +0x24.
  The `sw` at 0xd81c970 stores 4 bytes to [[[0x1014]+276]+4] +0x28.
  The `lw` at 0xd81c974 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81c978 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81c900 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=sp+8, a2=0x8, a3=a3 at entry (arg3).
  The `jalr` at 0xd81c91c calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=sp+16, a2=0x8, a3=?.
  The `jalr` at 0xd81c938 calls memcpy with a0=[[[0x1014]+276]+4]+20, a1=sp+32, a2=0x8, a3=?.
  The `jalr` at 0xd81c954 calls memcpy with a0=[[[0x1014]+276]+4]+28, a1=sp+40, a2=0x8, a3=?.
  The `jalr` at 0xd81c994 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+44, a2=?, a3=?.
  The `beql` branch at 0xd81c980 targets 0xd81c9a4, is taken when t1(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+44) (unsigned), and falls through when t1(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+44) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd81c984 runs only when taken and is annulled on fall-through.
  The return at 0xd81c9ac has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_MapGrid1f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81c9b4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81c9b4-0xd81ca38 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xd81c9c0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81c9d4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81c9e0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81c9e8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd81c9ec stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sw` at 0xd81c9f0 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd81c9f4 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `swc1` at 0xd81c9f8 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd81c9fc loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81ca04 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81ca1c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd81ca0c targets 0xd81ca2c, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81ca10 runs only when taken and is annulled on fall-through.
  The return at 0xd81ca30 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_EvalCoord2dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81ca38 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81ca38-0xd81caf4 (188 bytes).
  It occupies 188 bytes.
  The `lw` at 0xd81ca48 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81ca5c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81ca68 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81ca70 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81ca74 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd81cab0 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81cac4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81ca84 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x8, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81caa4 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a0+8, a2=0x8, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81cad4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=?, a3=[[[0x1014]+276]+4]+20.
  The `beq` branch at 0xd81cac0 targets 0xd81cae0, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+20) (unsigned).
  The return at 0xd81caec has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_AlphaFunc` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81caf4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81caf4-0xd81cb70 (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xd81cb00 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81cb10 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81cb1c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81cb24 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd81cb28 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sw` at 0xd81cb2c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd81cb30 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd81cb34 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81cb3c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81cb54 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd81cb44 targets 0xd81cb64, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81cb48 runs only when taken and is annulled on fall-through.
  The return at 0xd81cb68 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_EvalPoint2` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81cb70 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81cb70-0xd81cbec (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xd81cb7c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81cb8c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81cb98 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81cb9c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81cba0 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81cba4 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd81cba8 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd81cbac loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81cbb4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81cbd0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[[0x1014]+276]+4]+12, a3=[[0x1014]+276].
  The `beql` branch at 0xd81cbbc targets 0xd81cbe0, is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81cbc0 runs only when taken and is annulled on fall-through.
  The return at 0xd81cbe4 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_EvalMesh2` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81cbec (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81cbec-0xd81cc84 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xd81cbfc loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81cc10 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81cc1c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81cc20 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81cc24 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81cc28 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd81cc2c stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd81cc30 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `sw` at 0xd81cc34 stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `sw` at 0xd81cc40 stores 4 bytes to [[[0x1014]+276]+4] +0x14.
  The `lw` at 0xd81cc44 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81cc48 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81cc64 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+24, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd81cc50 targets 0xd81cc74, is taken when t0(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+24) (unsigned), and falls through when t0(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+24) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd81cc54 runs only when taken and is annulled on fall-through.
  The return at 0xd81cc7c has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_EvalPoint1` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81cc84 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81cc84-0xd81ccf8 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd81cc90 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81cca0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81ccac loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81ccb0 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81ccb4 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81ccb8 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd81ccbc loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81ccc4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81ccdc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd81cccc targets 0xd81ccec, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81ccd0 runs only when taken and is annulled on fall-through.
  The return at 0xd81ccf0 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_EvalMesh1` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81ccf8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81ccf8-0xd81cd80 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd81cd08 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81cd18 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81cd24 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81cd28 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81cd2c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81cd30 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd81cd34 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd81cd38 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd81cd3c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81cd44 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81cd60 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4]+16.
  The `beql` branch at 0xd81cd4c targets 0xd81cd70, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81cd50 runs only when taken and is annulled on fall-through.
  The return at 0xd81cd78 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_EvalCoord2fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81cd80 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81cd80-0xd81ce00 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xd81cd8c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81cd9c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81cda8 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81cdac stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81cdb0 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lwc1` at 0xd81cdb4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xd81cdbc stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lwc1` at 0xd81cdc0 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xd81cdc4 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd81cdc8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81cdcc stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81cde4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd81cdd4 targets 0xd81cdf4, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81cdd8 runs only when taken and is annulled on fall-through.
  The return at 0xd81cdf8 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_EvalCoord2f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81ce00 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81ce00-0xd81ce74 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd81ce0c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81ce1c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81ce28 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81ce2c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81ce30 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `swc1` at 0xd81ce34 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd81ce38 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd81ce3c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81ce44 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81ce58 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd81ce4c targets 0xd81ce68, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81ce50 runs only when taken and is annulled on fall-through.
  The return at 0xd81ce6c has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_MapGrid1d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81ce74 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81ce74-0xd81cf48 (212 bytes).
  It occupies 212 bytes.
  The `lw` at 0xd81ce84 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81cea0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81ceac loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81ceb8 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81cebc stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81cf04 stores 4 bytes to [[[0x1014]+276]+4] +0x14.
  The `lw` at 0xd81cf08 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81cf0c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81cecc calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=sp+8, a2=0x8, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81ceec calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=sp+16, a2=0x8, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81cf28 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+24, a2=?, a3=[[[0x1014]+276]+4]+24.
  The `beql` branch at 0xd81cf14 targets 0xd81cf38, is taken when t0(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+24) (unsigned), and falls through when t0(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+24) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81cf18 runs only when taken and is annulled on fall-through.
  The return at 0xd81cf40 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_ClearStencil` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81cf48 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81cf48-0xd81cfbc (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd81cf54 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81cf64 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81cf70 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81cf74 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81cf78 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81cf7c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd81cf80 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81cf88 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81cfa0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd81cf90 targets 0xd81cfb0, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81cf94 runs only when taken and is annulled on fall-through.
  The return at 0xd81cfb4 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_ClearColor` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81cfbc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81cfbc-0xd81d048 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xd81cfcc loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81cfe0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81cfec loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81cff0 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81cff4 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `swc1` at 0xd81cff8 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd81cffc stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `swc1` at 0xd81d008 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `swc1` at 0xd81d010 stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `lw` at 0xd81d014 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81d018 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81d02c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd81d020 targets 0xd81d03c, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+20) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81d024 runs only when taken and is annulled on fall-through.
  The return at 0xd81d040 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_ClearIndex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81d048 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81d048-0xd81d0b8 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xd81d054 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81d064 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81d070 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81d074 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81d078 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `swc1` at 0xd81d07c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd81d080 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81d088 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81d09c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd81d090 targets 0xd81d0ac, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81d094 runs only when taken and is annulled on fall-through.
  The return at 0xd81d0b0 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_ClearAccum` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81d0b8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81d0b8-0xd81d144 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xd81d0c8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81d0dc loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81d0e8 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81d0ec stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81d0f0 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `swc1` at 0xd81d0f4 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd81d0f8 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `swc1` at 0xd81d104 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `swc1` at 0xd81d10c stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `lw` at 0xd81d110 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81d114 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81d128 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd81d11c targets 0xd81d138, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+20) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81d120 runs only when taken and is annulled on fall-through.
  The return at 0xd81d13c has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Clear` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81d144 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81d144-0xd81d1b8 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd81d150 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81d160 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81d16c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81d170 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81d174 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81d178 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd81d17c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81d184 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81d19c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd81d18c targets 0xd81d1ac, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81d190 runs only when taken and is annulled on fall-through.
  The return at 0xd81d1b0 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_DrawBuffer` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81d1b8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81d1b8-0xd81d22c (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd81d1c4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81d1d4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81d1e0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81d1e4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81d1e8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81d1ec stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd81d1f0 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81d1f8 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81d210 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd81d200 targets 0xd81d220, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81d204 runs only when taken and is annulled on fall-through.
  The return at 0xd81d224 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_PushName` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81d22c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81d22c-0xd81d2a0 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd81d238 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81d248 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81d254 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81d258 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81d25c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81d260 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd81d264 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81d26c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81d284 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd81d274 targets 0xd81d294, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81d278 runs only when taken and is annulled on fall-through.
  The return at 0xd81d298 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_ClearDepth` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81d2a0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81d2a0-0xd81d340 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xd81d2b0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81d2c4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81d2d0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81d2dc stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81d2e0 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd81d2fc loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81d310 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81d2f0 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81d320 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=?, a3=[[[0x1014]+276]+4]+12.
  The `beq` branch at 0xd81d30c targets 0xd81d32c, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+12) (unsigned).
  The return at 0xd81d338 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_PushAttrib` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81d340 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81d340-0xd81d3b4 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd81d34c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81d35c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81d368 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81d36c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81d370 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81d374 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd81d378 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81d380 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81d398 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd81d388 targets 0xd81d3a8, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81d38c runs only when taken and is annulled on fall-through.
  The return at 0xd81d3ac has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_PopAttrib` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81d3b4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81d3b4-0xd81d420 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xd81d3c0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81d3d0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81d3dc loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81d3e0 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81d3e4 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd81d3e8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81d3f0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81d404 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd81d3f8 targets 0xd81d414, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+4) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+4) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81d3fc runs only when taken and is annulled on fall-through.
  The return at 0xd81d418 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Accum` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81d420 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81d420-0xd81d49c (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xd81d42c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81d43c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81d448 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81d450 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd81d454 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sw` at 0xd81d458 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd81d45c stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd81d460 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81d468 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81d480 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd81d470 targets 0xd81d490, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81d474 runs only when taken and is annulled on fall-through.
  The return at 0xd81d494 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_IndexMask` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81d49c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81d49c-0xd81d510 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd81d4a8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81d4b8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81d4c4 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81d4c8 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81d4cc stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81d4d0 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd81d4d4 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81d4dc stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81d4f4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd81d4e4 targets 0xd81d504, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81d4e8 runs only when taken and is annulled on fall-through.
  The return at 0xd81d508 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_DepthMask` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81d510 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81d510-0xd81d588 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xd81d520 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81d530 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81d53c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81d540 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81d544 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sb` at 0xd81d548 stores 1 byte to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd81d54c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81d554 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81d56c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd81d55c targets 0xd81d57c, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81d560 runs only when taken and is annulled on fall-through.
  The return at 0xd81d580 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_ColorMask` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81d588 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81d588-0xd81d628 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xd81d598 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81d5bc loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81d5c8 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81d5cc stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81d5d0 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sb` at 0xd81d5d4 stores 1 byte to [[[0x1014]+276]+4] +0x4.
  The `sb` at 0xd81d5d8 stores 1 byte to [[[0x1014]+276]+4] +0x5.
  The `sb` at 0xd81d5dc stores 1 byte to [[[0x1014]+276]+4] +0x6.
  The `sb` at 0xd81d5e0 stores 1 byte to [[[0x1014]+276]+4] +0x7.
  The `lw` at 0xd81d5e4 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81d5ec stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81d608 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd81d5f4 targets 0xd81d618, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd81d5f8 runs only when taken and is annulled on fall-through.
  The return at 0xd81d620 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_StencilMask` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81d628 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81d628-0xd81d69c (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd81d634 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81d644 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81d650 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81d654 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81d658 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81d65c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd81d660 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81d668 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81d680 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd81d670 targets 0xd81d690, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81d674 runs only when taken and is annulled on fall-through.
  The return at 0xd81d694 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_BlendFunc` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81d69c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81d69c-0xd81d718 (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xd81d6a8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81d6b8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81d6c4 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81d6c8 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81d6cc stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81d6d0 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd81d6d4 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd81d6d8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81d6e0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81d6fc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[[0x1014]+276]+4]+12, a3=[[0x1014]+276].
  The `beql` branch at 0xd81d6e8 targets 0xd81d70c, is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81d6ec runs only when taken and is annulled on fall-through.
  The return at 0xd81d710 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Scaled` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81d718 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81d718-0xd81d7f8 (224 bytes).
  It occupies 224 bytes.
  The `lw` at 0xd81d728 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81d740 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81d74c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81d758 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81d75c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd81d7b8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81d7bc stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81d76c calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=[[0x1014]+276].
  The `jalr` at 0xd81d788 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=sp+8, a2=0x8, a3=?.
  The `jalr` at 0xd81d7a4 calls memcpy with a0=[[[0x1014]+276]+4]+20, a1=sp+16, a2=0x8, a3=?.
  The `jalr` at 0xd81d7d8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+28, a2=?, a3=[[0x1014]+276].
  The `beql` branch at 0xd81d7c4 targets 0xd81d7e8, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+28) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+28) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81d7c8 runs only when taken and is annulled on fall-through.
  The return at 0xd81d7f0 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_Rotatef` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81d7f8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81d7f8-0xd81d884 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xd81d808 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81d81c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81d828 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81d82c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81d830 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `swc1` at 0xd81d834 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd81d838 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `swc1` at 0xd81d844 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `swc1` at 0xd81d84c stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `lw` at 0xd81d850 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81d854 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81d868 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd81d85c targets 0xd81d878, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+20) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81d860 runs only when taken and is annulled on fall-through.
  The return at 0xd81d87c has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Rotated` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81d884 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81d884-0xd81d978 (244 bytes).
  It occupies 244 bytes.
  The `lw` at 0xd81d894 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81d8b0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81d8bc loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81d8c8 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81d8cc stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd81d934 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81d948 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81d8d8 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=a3 at entry (arg3).
  The `jalr` at 0xd81d8f4 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=sp+8, a2=0x8, a3=?.
  The `jalr` at 0xd81d910 calls memcpy with a0=[[[0x1014]+276]+4]+20, a1=sp+16, a2=0x8, a3=?.
  The `jalr` at 0xd81d92c calls memcpy with a0=[[[0x1014]+276]+4]+28, a1=sp+24, a2=0x8, a3=?.
  The `jalr` at 0xd81d958 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+36, a2=?, a3=?.
  The `beq` branch at 0xd81d944 targets 0xd81d964, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+36) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+36) (unsigned).
  The return at 0xd81d970 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_PushMatrix` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81d978 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81d978-0xd81d9e4 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xd81d984 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81d994 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81d9a0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81d9a4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81d9a8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd81d9ac loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81d9b4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81d9c8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd81d9bc targets 0xd81d9d8, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+4) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+4) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81d9c0 runs only when taken and is annulled on fall-through.
  The return at 0xd81d9dc has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_PopMatrix` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81d9e4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81d9e4-0xd81da50 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xd81d9f0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81da00 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81da0c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81da10 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81da14 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd81da18 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81da20 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81da34 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd81da28 targets 0xd81da44, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+4) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+4) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81da2c runs only when taken and is annulled on fall-through.
  The return at 0xd81da48 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Ortho` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81da50 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81da50-0xd81db7c (300 bytes).
  It occupies 300 bytes.
  The `lw` at 0xd81da60 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81da7c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81da88 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81da94 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81da98 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd81db38 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81db4c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81daa4 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=a3 at entry (arg3).
  The `jalr` at 0xd81dac0 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=sp+8, a2=0x8, a3=?.
  The `jalr` at 0xd81dadc calls memcpy with a0=[[[0x1014]+276]+4]+20, a1=sp+16, a2=0x8, a3=?.
  The `jalr` at 0xd81daf8 calls memcpy with a0=[[[0x1014]+276]+4]+28, a1=sp+24, a2=0x8, a3=?.
  The `jalr` at 0xd81db14 calls memcpy with a0=[[[0x1014]+276]+4]+36, a1=sp+32, a2=0x8, a3=?.
  The `jalr` at 0xd81db30 calls memcpy with a0=[[[0x1014]+276]+4]+44, a1=sp+40, a2=0x8, a3=?.
  The `jalr` at 0xd81db5c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+52, a2=?, a3=?.
  The `beq` branch at 0xd81db48 targets 0xd81db68, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+52) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+52) (unsigned).
  The return at 0xd81db74 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_MultMatrixd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81db7c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81db7c-0xd81dc18 (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xd81db8c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81db9c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81dba8 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81dbb4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81dbb8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd81dbd4 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81dbe8 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81dbc8 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x80, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81dbf8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+132, a2=?, a3=[[[0x1014]+276]+4]+132.
  The `beq` branch at 0xd81dbe4 targets 0xd81dc04, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+132) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+132) (unsigned).
  The return at 0xd81dc10 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_Scalef` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81dc18 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81dc18-0xd81dc98 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xd81dc28 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81dc38 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81dc44 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81dc48 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81dc4c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `swc1` at 0xd81dc50 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd81dc54 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `swc1` at 0xd81dc60 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd81dc64 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81dc68 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81dc7c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd81dc70 targets 0xd81dc8c, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81dc74 runs only when taken and is annulled on fall-through.
  The return at 0xd81dc90 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_SampleMaskSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81dc98 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81dc98-0xd81dd14 (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xd81dca8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81dcb8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81dcc4 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81dcc8 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81dccc stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `swc1` at 0xd81dcd0 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sb` at 0xd81dcd4 stores 1 byte to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd81dcd8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81dce0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81dcf8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[[0x1014]+276]+4]+12, a3=a3 at entry (arg3).
  The `beql` branch at 0xd81dce8 targets 0xd81dd08, is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81dcec runs only when taken and is annulled on fall-through.
  The return at 0xd81dd0c has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_PolygonOffsetEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81dd14 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81dd14-0xd81dd88 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd81dd20 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81dd30 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81dd3c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81dd40 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81dd44 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `swc1` at 0xd81dd48 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd81dd4c stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd81dd50 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81dd58 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81dd6c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd81dd60 targets 0xd81dd7c, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81dd64 runs only when taken and is annulled on fall-through.
  The return at 0xd81dd80 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_BlendEquationEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81dd88 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81dd88-0xd81ddfc (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd81dd94 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81dda4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81ddb0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81ddb4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81ddb8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81ddbc stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd81ddc0 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81ddc8 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81dde0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd81ddd0 targets 0xd81ddf0, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81ddd4 runs only when taken and is annulled on fall-through.
  The return at 0xd81ddf4 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_BlendColorEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81ddfc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81ddfc-0xd81de88 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xd81de0c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81de20 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81de2c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81de30 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81de34 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `swc1` at 0xd81de38 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd81de3c stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `swc1` at 0xd81de48 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `swc1` at 0xd81de50 stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `lw` at 0xd81de54 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81de58 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81de6c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd81de60 targets 0xd81de7c, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+20) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81de64 runs only when taken and is annulled on fall-through.
  The return at 0xd81de80 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Viewport` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81de88 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81de88-0xd81df18 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd81de98 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81deac loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81deb8 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81debc stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81dec0 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81dec4 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd81dec8 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd81decc stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `sw` at 0xd81ded0 stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `lw` at 0xd81ded4 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81dedc stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81def8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd81dee4 targets 0xd81df08, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+20) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd81dee8 runs only when taken and is annulled on fall-through.
  The return at 0xd81df10 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Translatef` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81df18 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81df18-0xd81df98 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xd81df28 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81df38 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81df44 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81df48 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81df4c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `swc1` at 0xd81df50 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd81df54 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `swc1` at 0xd81df60 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd81df64 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81df68 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81df7c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd81df70 targets 0xd81df8c, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81df74 runs only when taken and is annulled on fall-through.
  The return at 0xd81df90 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Translated` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81df98 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81df98-0xd81e078 (224 bytes).
  It occupies 224 bytes.
  The `lw` at 0xd81dfa8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81dfc0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81dfcc loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81dfd8 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81dfdc stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd81e038 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81e03c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81dfec calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=[[0x1014]+276].
  The `jalr` at 0xd81e008 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=sp+8, a2=0x8, a3=?.
  The `jalr` at 0xd81e024 calls memcpy with a0=[[[0x1014]+276]+4]+20, a1=sp+16, a2=0x8, a3=?.
  The `jalr` at 0xd81e058 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+28, a2=?, a3=[[0x1014]+276].
  The `beql` branch at 0xd81e044 targets 0xd81e068, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+28) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+28) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81e048 runs only when taken and is annulled on fall-through.
  The return at 0xd81e070 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_MultMatrixf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81e078 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81e078-0xd81e114 (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xd81e088 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81e098 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81e0a4 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81e0b0 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81e0b4 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd81e0d0 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81e0e4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81e0c4 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x40, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81e0f4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+68, a2=?, a3=[[[0x1014]+276]+4]+68.
  The `beq` branch at 0xd81e0e0 targets 0xd81e100, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+68) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+68) (unsigned).
  The return at 0xd81e10c has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_PixelTransferi` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81e114 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81e114-0xd81e190 (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xd81e120 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81e130 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81e13c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81e140 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81e144 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81e148 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd81e14c stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd81e150 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81e158 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81e174 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[[0x1014]+276]+4]+12, a3=[[0x1014]+276].
  The `beql` branch at 0xd81e160 targets 0xd81e184, is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81e164 runs only when taken and is annulled on fall-through.
  The return at 0xd81e188 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_PixelTransferf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81e190 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81e190-0xd81e20c (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xd81e19c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81e1ac loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81e1b8 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81e1c0 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd81e1c4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sw` at 0xd81e1c8 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd81e1cc stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd81e1d0 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81e1d8 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81e1f0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd81e1e0 targets 0xd81e200, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81e1e4 runs only when taken and is annulled on fall-through.
  The return at 0xd81e204 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_PixelZoom` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81e20c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81e20c-0xd81e280 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd81e218 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81e228 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81e234 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81e238 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81e23c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `swc1` at 0xd81e240 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd81e244 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd81e248 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81e250 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81e264 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd81e258 targets 0xd81e274, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81e25c runs only when taken and is annulled on fall-through.
  The return at 0xd81e278 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_DepthFunc` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81e280 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81e280-0xd81e2f4 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd81e28c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81e29c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81e2a8 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81e2ac stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81e2b0 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81e2b4 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd81e2b8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81e2c0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81e2d8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd81e2c8 targets 0xd81e2e8, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81e2cc runs only when taken and is annulled on fall-through.
  The return at 0xd81e2ec has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_StencilOp` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81e2f4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81e2f4-0xd81e37c (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd81e304 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81e314 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81e320 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81e324 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81e328 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81e32c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd81e330 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd81e334 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd81e338 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81e340 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81e35c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4]+16.
  The `beql` branch at 0xd81e348 targets 0xd81e36c, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81e34c runs only when taken and is annulled on fall-through.
  The return at 0xd81e374 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_StencilFunc` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81e37c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81e37c-0xd81e404 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd81e38c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81e39c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81e3a8 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81e3ac stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81e3b0 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81e3b4 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd81e3b8 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd81e3bc stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd81e3c0 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81e3c8 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81e3e4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4]+16.
  The `beql` branch at 0xd81e3d0 targets 0xd81e3f4, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81e3d4 runs only when taken and is annulled on fall-through.
  The return at 0xd81e3fc has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_LogicOp` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81e404 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81e404-0xd81e478 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd81e410 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81e420 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81e42c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81e430 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81e434 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81e438 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd81e43c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81e444 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81e45c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd81e44c targets 0xd81e46c, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81e450 runs only when taken and is annulled on fall-through.
  The return at 0xd81e470 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_ReadBuffer` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81e478 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81e478-0xd81e4ec (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd81e484 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81e494 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81e4a0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81e4a4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81e4a8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81e4ac stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd81e4b0 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81e4b8 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81e4d0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd81e4c0 targets 0xd81e4e0, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81e4c4 runs only when taken and is annulled on fall-through.
  The return at 0xd81e4e4 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_MatrixMode` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81e4ec (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81e4ec-0xd81e560 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd81e4f8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81e508 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81e514 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81e518 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81e51c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81e520 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd81e524 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81e52c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81e544 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd81e534 targets 0xd81e554, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81e538 runs only when taken and is annulled on fall-through.
  The return at 0xd81e558 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_LoadIdentity` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81e698 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81e698-0xd81e704 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xd81e6a4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81e6b4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81e6c0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81e6c4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81e6c8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd81e6cc loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81e6d4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81e6e8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd81e6dc targets 0xd81e6f8, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+4) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+4) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81e6e0 runs only when taken and is annulled on fall-through.
  The return at 0xd81e6fc has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Frustum` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81e704 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81e704-0xd81e830 (300 bytes).
  It occupies 300 bytes.
  The `lw` at 0xd81e714 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81e730 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81e73c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81e748 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81e74c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd81e7ec loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81e800 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81e758 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=a3 at entry (arg3).
  The `jalr` at 0xd81e774 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=sp+8, a2=0x8, a3=?.
  The `jalr` at 0xd81e790 calls memcpy with a0=[[[0x1014]+276]+4]+20, a1=sp+16, a2=0x8, a3=?.
  The `jalr` at 0xd81e7ac calls memcpy with a0=[[[0x1014]+276]+4]+28, a1=sp+24, a2=0x8, a3=?.
  The `jalr` at 0xd81e7c8 calls memcpy with a0=[[[0x1014]+276]+4]+36, a1=sp+32, a2=0x8, a3=?.
  The `jalr` at 0xd81e7e4 calls memcpy with a0=[[[0x1014]+276]+4]+44, a1=sp+40, a2=0x8, a3=?.
  The `jalr` at 0xd81e810 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+52, a2=?, a3=?.
  The `beq` branch at 0xd81e7fc targets 0xd81e81c, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+52) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+52) (unsigned).
  The return at 0xd81e828 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_DepthRange` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81e830 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81e830-0xd81e8f4 (196 bytes).
  It occupies 196 bytes.
  The `lw` at 0xd81e840 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81e858 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81e864 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81e870 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81e874 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd81e8b0 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81e8c4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81e884 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81e8a4 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=sp+8, a2=0x8, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81e8d4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=?, a3=[[[0x1014]+276]+4]+20.
  The `beq` branch at 0xd81e8c0 targets 0xd81e8e0, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+20) (unsigned).
  The return at 0xd81e8ec has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_CopyPixels` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81e8f4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81e8f4-0xd81e98c (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xd81e904 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81e918 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81e924 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81e928 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81e92c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81e930 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd81e934 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd81e938 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `sw` at 0xd81e93c stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `sw` at 0xd81e948 stores 4 bytes to [[[0x1014]+276]+4] +0x14.
  The `lw` at 0xd81e94c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81e950 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81e96c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+24, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd81e958 targets 0xd81e97c, is taken when t0(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+24) (unsigned), and falls through when t0(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+24) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd81e95c runs only when taken and is annulled on fall-through.
  The return at 0xd81e984 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Indexdv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81e98c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81e98c-0xd81ea28 (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xd81e99c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81e9ac loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81e9b8 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81e9c4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81e9c8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd81e9e4 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81e9f8 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81e9d8 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x8, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81ea08 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=?, a3=[[[0x1014]+276]+4]+12.
  The `beq` branch at 0xd81e9f4 targets 0xd81ea14, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+12) (unsigned).
  The return at 0xd81ea20 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glXEvalComputeK` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81ea28 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81ea28-0xd81ea8c (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0xd81ea50 loads 4 bytes from (a0-3472 << 0x2) +0xd8416c0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd81ea58).
  The `beql` branch at 0xd81ea3c targets 0xd81ea84, is taken when t6(=a0-3472) >= 0x29 (unsigned), and falls through when t6(=a0-3472) < 0x29 (unsigned); its branch-likely delay slot `or v0,zero,zero` at 0xd81ea40 runs only when taken and is annulled on fall-through.
  The return at 0xd81ea84 has v0 = 0x0.
  The instructions from 0xd81ea60 to 0xd81ea80 are not reached by any path from the entry, and their branches are not listed.
- `__glXFillMap2d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81ea8c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81ea8c-0xd81ebcc (320 bytes).
  It occupies 320 bytes.
  The `jalr` at 0xd81eb08 calls memcpy with a0=?, a1=?, a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0xd81eb64 calls memcpy with a0=?, a1=?, a2=(a0 << 0x3), a3=?.
  The `bne` branch at 0xd81ead4 targets 0xd81eb18, is taken when t6(?) != a0, and falls through when t6(?) == a0.
  The `bnel` branch at 0xd81eae8 targets 0xd81eb1c, is taken when a3 != t7(?), and falls through when a3 == t7(?); its branch-likely delay slot `lw t9,68(sp)` at 0xd81eaec runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd81eb10 targets 0xd81eb9c and is always taken.
  The `blezl` branch at 0xd81eb24 targets 0xd81eba0, is taken when t9(=a1) <= 0 (signed), and falls through when t9(=a1) > 0 (signed); its branch-likely delay slot `lw ra,60(sp)` at 0xd81eb28 runs only when taken and is annulled on fall-through.
  The `blez` branch at 0xd81eb44 targets 0xd81eb80, is taken when s5(=a2) <= 0 (signed), and falls through when s5(=a2) > 0 (signed).
  The `bne` branch at 0xd81eb78 targets 0xd81eb58, is taken when s0(?) != s5(=a2), and falls through when s0(?) == s5(=a2).
  The `bne` branch at 0xd81eb8c targets 0xd81eb44, is taken when s6(?) != t2(=a1), and falls through when s6(?) == t2(=a1).
  The return at 0xd81ebc4 has v0 = ?.
- `__glXFillMap2f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81ebcc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81ebcc-0xd81ed38 (364 bytes).
  It occupies 364 bytes.
  5 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xd81ec98, `lwc1` at 0xd81ecc0, `lwc1` at 0xd81ecd0.
  5 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xd81ecac, `swc1` at 0xd81eccc, `swc1` at 0xd81ecd8.
  The `jalr` at 0xd81ec38 calls memcpy with a0=?, a1=?, a2=?, a3=a3 at entry (arg3).
  The `bne` branch at 0xd81ec08 targets 0xd81ec48, is taken when s5(?) != a0, and falls through when s5(?) == a0.
  The `bne` branch at 0xd81ec18 targets 0xd81ec48, is taken when a3 != t6(?), and falls through when a3 == t6(?).
  The `beq` branch at 0xd81ec40 targets 0xd81ed14 and is always taken.
  The `blez` branch at 0xd81ec48 targets 0xd81ed14, is taken when s4(=a1) <= 0 (signed), and falls through when s4(=a1) > 0 (signed).
  The `blez` branch at 0xd81ec68 targets 0xd81ed00, is taken when s3(=a2) <= 0 (signed), and falls through when s3(=a2) > 0 (signed).
  The `blez` branch at 0xd81ec78 targets 0xd81ecf0, is taken when s0(=a0) <= 0 (signed), and falls through when s0(=a0) > 0 (signed).
  The `beq` branch at 0xd81ec84 targets 0xd81ecb4, is taken when (s0(=a0) & 0x3) == 0, and falls through when (s0(=a0) & 0x3) != 0.
  The `bne` branch at 0xd81eca8 targets 0xd81ec98, is taken when a1(?) != a0(?), and falls through when a1(?) == a0(?).
  The `beq` branch at 0xd81ecb0 targets 0xd81ecf0, is taken when a0(?) == s0(=a0), and falls through when a0(?) != s0(=a0).
  The `bne` branch at 0xd81ece8 targets 0xd81ecc0, is taken when a0(?) != s0(=a0), and falls through when a0(?) == s0(=a0).
  The `bne` branch at 0xd81ecf8 targets 0xd81ec78, is taken when t0(?) != s3(=a2), and falls through when t0(?) == s3(=a2).
  The `bne` branch at 0xd81ed04 targets 0xd81ec68, is taken when t3(?) != s4(=a1), and falls through when t3(?) == s4(=a1).
  The return at 0xd81ed30 has v0 = one of ret(memcpy), ?.
- `__glXFillMap1d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81ed38 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81ed38-0xd81ee0c (212 bytes).
  It occupies 212 bytes.
  The `jalr` at 0xd81ed94 calls memcpy with a0=?, a1=a3 at entry (arg3), a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0xd81edc8 calls memcpy with a0=?, a1=?, a2=(a0 << 0x3), a3=?.
  The `bne` branch at 0xd81ed74 targets 0xd81eda4, is taken when a2 != a0, and falls through when a2 == a0.
  The `beq` branch at 0xd81ed9c targets 0xd81ede8 and is always taken.
  The `blez` branch at 0xd81eda4 targets 0xd81ede8, is taken when s5(=a1) <= 0 (signed), and falls through when s5(=a1) > 0 (signed).
  The `bne` branch at 0xd81eddc targets 0xd81edbc, is taken when s0(?) != s5(=a1), and falls through when s0(?) == s5(=a1).
  The return at 0xd81ee04 has v0 = one of ret(memcpy), ?.
- `__glXFillMap1f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81ee0c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81ee0c-0xd81ef28 (284 bytes).
  It occupies 284 bytes.
  5 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xd81eea0, `lwc1` at 0xd81eec8, `lwc1` at 0xd81eed8.
  5 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xd81eeb4, `swc1` at 0xd81eed4, `swc1` at 0xd81eee0.
  The `jalr` at 0xd81ee5c calls memcpy with a0=?, a1=a3 at entry (arg3), a2=?, a3=a3 at entry (arg3).
  The `bne` branch at 0xd81ee3c targets 0xd81ee6c, is taken when a2 != a0, and falls through when a2 == a0.
  The `beq` branch at 0xd81ee64 targets 0xd81ef0c and is always taken.
  The `blez` branch at 0xd81ee6c targets 0xd81ef0c, is taken when s3(=a1) <= 0 (signed), and falls through when s3(=a1) > 0 (signed).
  The `blez` branch at 0xd81ee80 targets 0xd81eef8, is taken when s0(=a0) <= 0 (signed), and falls through when s0(=a0) > 0 (signed).
  The `beq` branch at 0xd81ee8c targets 0xd81eebc, is taken when (s0(=a0) & 0x3) == 0, and falls through when (s0(=a0) & 0x3) != 0.
  The `bne` branch at 0xd81eeb0 targets 0xd81eea0, is taken when a1(?) != a0(?), and falls through when a1(?) == a0(?).
  The `beq` branch at 0xd81eeb8 targets 0xd81eef8, is taken when a0(?) == s0(=a0), and falls through when a0(?) != s0(=a0).
  The `bne` branch at 0xd81eef0 targets 0xd81eec8, is taken when a0(?) != s0(=a0), and falls through when a0(?) == s0(=a0).
  The `bne` branch at 0xd81ef00 targets 0xd81ee80, is taken when t0(?) != s3(=a1), and falls through when t0(?) == s3(=a1).
  The return at 0xd81ef20 has v0 = one of ret(memcpy), ?.
- `__glx_DispatchNop` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81ef28 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81ef28-0xd81ef38 (16 bytes).
  It occupies 16 bytes.
  The return at 0xd81ef28 has v0 = 0x0.
  The instructions from 0xd81ef30 to 0xd81ef34 are not reached by any path from the entry, and their branches are not listed.
- `__glXErrorString` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81ef38 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81ef38-0xd81f210 (728 bytes).
  It occupies 728 bytes.
  The `lw` at 0xd81ef5c loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lw` at 0xd81ef90 loads 4 bytes from abs 0xd845874.
  The `lw` at 0xd81efb4 loads 4 bytes from table(0xd84587c) +0x0.
  The `jalr` at 0xd81ef8c calls sprintf with a0=sp-256, a1=0xd84186c, a2=[0xd845874], a3=?.
  The `jalr` at 0xd81efcc calls XGetErrorDatabaseText with a0=a0 at entry (arg0), a1=0xd841874, a2=sp-256, a3=entry(0xd84587c).
  The `bltz` branch at 0xd81ef68 targets 0xd81efe0, is taken when s0(?) < 0 (signed), and falls through when s0(?) >= 0 (signed).
  The `beq` branch at 0xd81ef70 targets 0xd81efe0, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xd81efd8 targets 0xd81efe0 and is always taken.
  The return at 0xd81efec has v0 = one of 0x0, a3.
  The instructions from 0xd81eff4 to 0xd81f20c are not reached by any path from the entry, and their branches are not listed.
- `__glXFlushRenderBuffer` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81eff4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81eff4-0xd81f164 (368 bytes).
  It occupies 368 bytes.
  The `lw` at 0xd81f014 loads 4 bytes from a0 (arg0 at entry) +0xd8.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0xd81f020, `lw` at 0xd81f024, `lw` at 0xd81f03c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x4, including `sw` at 0xd81f02c, `sw` at 0xd81f14c.
  2 such `lw` accesses load 4 bytes from [a0+216] +0x4d0, including `lw` at 0xd81f040, `lw` at 0xd81f108.
  4 such `lw` accesses load 4 bytes from [a0+216] +0x6c, including `lw` at 0xd81f048, `lw` at 0xd81f068, `lw` at 0xd81f09c.
  The `lw` at 0xd81f050 loads 4 bytes from [[a0+216]+1232] +0x0.
  The `lw` at 0xd81f06c loads 4 bytes from [a0+216] +0x70.
  2 such `sw` accesses store 4 bytes to [a0+216] +0x64, including `sw` at 0xd81f07c, `sw` at 0xd81f0a0.
  2 such `sh` accesses store 2 bytes to [[a0+216]+108] +0x2, including `sh` at 0xd81f0ac, `sh` at 0xd81f0ec.
  2 such `sb` accesses store 1 byte to [[a0+216]+108] +0x0, including `sb` at 0xd81f0b0, `sb` at 0xd81f0dc.
  The `lw` at 0xd81f0b4 loads 4 bytes from [a0+216] +0x60.
  The `sw` at 0xd81f0c8 stores 4 bytes to [a0+216] +0x6c.
  The `sw` at 0xd81f0cc stores 4 bytes to [a0+216] +0x60.
  The `lw` at 0xd81f0d0 loads 4 bytes from a0 (arg0 at entry) +0x110.
  The `lhu` at 0xd81f0d4 loads 2 bytes from [[a0+216]+108] +0x2.
  The `sb` at 0xd81f0d8 stores 1 byte to [[a0+216]+108] +0x1.
  The `lw` at 0xd81f0e0 loads 4 bytes from a0 (arg0 at entry) +0x3c.
  The `sw` at 0xd81f0f0 stores 4 bytes to [[a0+216]+108] +0x4.
  2 such `lw` accesses load 4 bytes from [a0+216] +0x7c, including `lw` at 0xd81f114, `lw` at 0xd81f12c.
  The `lw` at 0xd81f118 loads 4 bytes from [[a0+216]+1232] +0x4.
  The `jalr` at 0xd81f058 calls (unknown callee) with a0=[a0+216], a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0xd81f08c calls _XFlush with a0=[a0+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81f100 calls _XSend with a0=[a0+216], a1=[a0], a2=?, a3=0x1.
  The `jalr` at 0xd81f120 calls (unknown callee) with a0=[a0+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81f13c calls (unknown callee) with a0=[a0+216], a1=?, a2=?, a3=?.
  The `bnel` branch at 0xd81f01c targets 0xd81f034, is taken when s0(=[a0+216]) != 0, and falls through when s0(=[a0+216]) == 0; its branch-likely delay slot `lw t6,0(s1)` at 0xd81f020 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd81f028 targets 0xd81f150 and is always taken.
  The `beql` branch at 0xd81f038 targets 0xd81f14c, is taken when a2(?) == 0, and falls through when a2(?) != 0; its branch-likely delay slot `lw v0,0(s1)` at 0xd81f03c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81f044 targets 0xd81f06c, is taken when v0(=[[a0+216]+1232]) == 0, and falls through when v0(=[[a0+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81f048 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81f078 targets 0xd81f0a4, is taken when t7(=[[a0+216]+112]) >= t8(=[[a0+216]+108]+8) (unsigned), and falls through when t7(=[[a0+216]+112]) < t8(=[[a0+216]+108]+8) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81f07c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81f110 targets 0xd81f130, is taken when v0(=[[a0+216]+1232]) == 0, and falls through when v0(=[[a0+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81f114 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81f134 targets 0xd81f14c, is taken when v0(=[[a0+216]+124]) == 0, and falls through when v0(=[[a0+216]+124]) != 0; its branch-likely delay slot `lw v0,0(s1)` at 0xd81f138 runs only when taken and is annulled on fall-through.
  The return at 0xd81f15c has v0 = [a0].
  The instructions from 0xd81f030 to 0xd81f030 are not reached by any path from the entry, and their branches are not listed.
- `__glXFreeDisplayPrivate` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81f164 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81f164-0xd81f210 (172 bytes).
  It occupies 172 bytes.
  The `lw` at 0xd81f180 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0xd81f19c loads 4 bytes from [a0+12] +0x18.
  2 such `lw` accesses load 4 bytes from [a0+12] +0x1c, including `lw` at 0xd81f1a4, `lw` at 0xd81f1c4.
  The `sw` at 0xd81f1c0 stores 4 bytes to [a0+12] +0x18.
  The `sw` at 0xd81f1e8 stores 4 bytes to [a0+12] +0x1c.
  The `jalr` at 0xd81f18c calls FreeScreenConfigs [0xd81f210] with a0=[a0+12], a1=[a0+12], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd81f1b0 calls free with a0=[[a0+12]+24], a1=[a0+12], a2=?, a3=?.
  The `jalr` at 0xd81f1d8 calls free with a0=[[a0+12]+28], a1=[a0+12], a2=?, a3=?.
  The `jalr` at 0xd81f1f4 calls free with a0=[a0+12], a1=[a0+12], a2=?, a3=?.
  The `beql` branch at 0xd81f1a0 targets 0xd81f1c8, is taken when a0(=[[a0+12]+24]) == 0, and falls through when a0(=[[a0+12]+24]) != 0; its branch-likely delay slot `lw a0,28(a1)` at 0xd81f1a4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd81f1c8 targets 0xd81f1ec, is taken when a0(=[[a0+12]+28]) == 0, and falls through when a0(=[[a0+12]+28]) != 0.
  The return at 0xd81f208 has v0 = 0x0.
- `FreeScreenConfigs` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81f210 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81f210-0xd81f314 (260 bytes).
  It occupies 260 bytes.
  The `lw` at 0xd81f238 loads 4 bytes from a0 (arg0 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x20, including `lw` at 0xd81f23c, `lw` at 0xd81f2e4.
  The `lw` at 0xd81f244 loads 4 bytes from [a0] +0x88.
  7 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd81f254, `lw` at 0xd81f25c, `lw` at 0xd81f274.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd81f270, `sw` at 0xd81f290, `sw` at 0xd81f2b0.
  The `jalr` at 0xd81f264 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd81f284 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd81f2a4 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd81f2c4 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd81f2f0 calls XFree with a0=[a0+32], a1=[a0+32], a2=?, a3=?.
  The `blez` branch at 0xd81f24c targets 0xd81f2e8, is taken when s2(=[[a0]+136]) <= 0 (signed), and falls through when s2(=[[a0]+136]) > 0 (signed).
  The `beql` branch at 0xd81f258 targets 0xd81f278, is taken when a0(?) == 0, and falls through when a0(?) != 0; its branch-likely delay slot `lw a0,12(s0)` at 0xd81f25c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81f278 targets 0xd81f298, is taken when a0(?) == 0, and falls through when a0(?) != 0; its branch-likely delay slot `lw a0,20(s0)` at 0xd81f27c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81f298 targets 0xd81f2b8, is taken when a0(?) == 0, and falls through when a0(?) != 0; its branch-likely delay slot `lw a0,24(s0)` at 0xd81f29c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81f2b8 targets 0xd81f2d8, is taken when a0(?) == 0, and falls through when a0(?) != 0; its branch-likely delay slot `addiu s1,s1,1` at 0xd81f2bc runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd81f2d8 targets 0xd81f254, is taken when s1(?) != s2(=[[a0]+136]), and falls through when s1(?) == s2(=[[a0]+136]).
  The return at 0xd81f30c has v0 = ret(XFree).
- `__glXWireToEvent` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81f314 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81f314-0xd820af0 (6108 bytes).
  It occupies 6108 bytes.
  The `lw` at 0xd81f354 loads 4 bytes from ret(__glXFindDisplay) +0x8.
  3 such `lbu` accesses load 1 byte from a2 (arg2 at entry) +0x0, including `lbu` at 0xd81f35c, `lbu` at 0xd81f3c4, `lbu` at 0xd81f454.
  The `lw` at 0xd81f370 loads 4 bytes from abs 0xd845874.
  The `lw` at 0xd81f384 loads 4 bytes from [ret(__glXFindDisplay)+8] +0x8.
  The `lhu` at 0xd81f398 loads 2 bytes from a2 (arg2 at entry) +0x4.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0xd81f3a4, `sw` at 0xd81f450.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x4, including `sw` at 0xd81f3c0, `sw` at 0xd81f468.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0xc, including `sw` at 0xd81f3c8, `sw` at 0xd81f470.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x8, including `sw` at 0xd81f3d8, `sw` at 0xd81f458.
  The `lw` at 0xd81f3dc loads 4 bytes from a2 (arg2 at entry) +0x4.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x10, including `sw` at 0xd81f3e0, `sw` at 0xd81f434.
  The `lhu` at 0xd81f3e4 loads 2 bytes from a2 (arg2 at entry) +0x8.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x14, including `sw` at 0xd81f3e8, `sw` at 0xd81f43c.
  The `lhu` at 0xd81f3ec loads 2 bytes from a2 (arg2 at entry) +0xa.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x18, including `sw` at 0xd81f3f0, `sw` at 0xd81f478.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lw` at 0xd81f3f4, `lw` at 0xd81f474.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x1c, including `sw` at 0xd81f3f8, `sw` at 0xd81f480.
  2 such `lhu` accesses load 2 bytes from a2 (arg2 at entry) +0x10, including `lhu` at 0xd81f3fc, `lhu` at 0xd81f47c.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x20, including `sw` at 0xd81f400, `sw` at 0xd81f488.
  2 such `lhu` accesses load 2 bytes from a2 (arg2 at entry) +0x12, including `lhu` at 0xd81f404, `lhu` at 0xd81f484.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x24, including `sw` at 0xd81f408, `sw` at 0xd81f490.
  2 such `lhu` accesses load 2 bytes from a2 (arg2 at entry) +0x14, including `lhu` at 0xd81f40c, `lhu` at 0xd81f48c.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x28, including `sw` at 0xd81f410, `sw` at 0xd81f498.
  2 such `lhu` accesses load 2 bytes from a2 (arg2 at entry) +0x16, including `lhu` at 0xd81f414, `lhu` at 0xd81f494.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x2c, including `sw` at 0xd81f418, `sw` at 0xd81f4a0.
  2 such `lhu` accesses load 2 bytes from a2 (arg2 at entry) +0x18, including `lhu` at 0xd81f41c, `lhu` at 0xd81f49c.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x30, including `sw` at 0xd81f424, `sw` at 0xd81f4ac.
  The `lhu` at 0xd81f438 loads 2 bytes from a2 (arg2 at entry) +0x6.
  The `lw` at 0xd81f46c loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lhu` at 0xd81f4a4 loads 2 bytes from a2 (arg2 at entry) +0x1a.
  The `jalr` at 0xd81f344 calls __glXFindDisplay with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd81f36c calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xd845874], a2=?, a3=?.
  The `jalr` at 0xd81f3b4 calls _XSetLastRequestRead with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd81f444 calls _XSetLastRequestRead with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=?, a3=?.
  The `beq` branch at 0xd81f34c targets 0xd81f360, is taken when v0(=ret(__glXFindDisplay)) == 0, and falls through when v0(=ret(__glXFindDisplay)) != 0.
  The `bnel` branch at 0xd81f358 targets 0xd81f384, is taken when a0(=[ret(__glXFindDisplay)+8]) != 0, and falls through when a0(=[ret(__glXFindDisplay)+8]) == 0; its branch-likely delay slot `lbu a2,0(s1)` at 0xd81f35c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd81f378 targets 0xd81f4b0 and is always taken.
  The `beql` branch at 0xd81f394 targets 0xd81f42c, is taken when v1(?) == 0, and falls through when v1(?) != 0; its branch-likely delay slot `lhu t9,4(s1)` at 0xd81f398 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd81f39c targets 0xd81f4b0, is taken when v1(?) != at(=0x10), and falls through when v1(?) == at(=0x10).
  The `beq` branch at 0xd81f420 targets 0xd81f4b0 and is always taken.
  The `beq` branch at 0xd81f4a8 targets 0xd81f4b0 and is always taken.
  The return at 0xd81f4c0 has v0 = one of 0x0, 0x1.
  The instructions from 0xd81f380 to 0xd81f380 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd81f428 to 0xd81f428 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd81f4c8 to 0xd820aec are not reached by any path from the entry, and their branches are not listed.
- `__glXCloseDisplay` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81f4c8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81f4c8-0xd81f608 (320 bytes).
  It occupies 320 bytes.
  The `lw` at 0xd81f500 loads 4 bytes from sym(__glx_contextList) +0x0.
  The `lw` at 0xd81f524 loads 4 bytes from [sym(__glx_contextList)] +0x108.
  The `lw` at 0xd81f530 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81f534 loads 4 bytes from [0x1014] +0x114.
  8 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd81f53c, `lw` at 0xd81f558, `lw` at 0xd81f568.
  The `sw` at 0xd81f540 stores 4 bytes to [0x1014] +0x114.
  The `lw` at 0xd81f544 loads 4 bytes from abs 0x1048.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd81f564, `sw` at 0xd81f56c, `sw` at 0xd81f578.
  The `lw` at 0xd81f5dc loads 4 bytes from sym(__glXExtensionInfo) +0x0.
  The `jalr` at 0xd81f598 calls __glXFreeContext with a0=?, a1=0x0, a2=?, a3=?.
  The `jalr` at 0xd81f5c0 calls __glXCleanUpDrawablePrivates with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd81f5d8 calls XextRemoveDisplay with a0=[sym(__glXExtensionInfo)], a1=a0 at entry (arg0), a2=?, a3=?.
  The `beq` branch at 0xd81f50c targets 0xd81f5b8, is taken when a2(=[sym(__glx_contextList)]) == 0, and falls through when a2(=[sym(__glx_contextList)]) != 0.
  The `bnel` branch at 0xd81f528 targets 0xd81f5ac, is taken when s5(=a0) != t6(?), and falls through when s5(=a0) == t6(?); its branch-likely delay slot `addiu s0,a2,296` at 0xd81f52c runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd81f538 targets 0xd81f588, is taken when a2(?) != t7(=[[0x1014]+276]), and falls through when a2(?) == t7(=[[0x1014]+276]); its branch-likely delay slot `lw t4,296(a2)` at 0xd81f53c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd81f550 targets 0xd81f584, is taken when t8(=[0x1048]) != 0, and falls through when t8(=[0x1048]) == 0.
  The `bne` branch at 0xd81f574 targets 0xd81f558, is taken when t1(?) != t3(=sym(__glx_dispatch)+1884), and falls through when t1(?) == t3(=sym(__glx_dispatch)+1884).
  The `beq` branch at 0xd81f5a0 targets 0xd81f5ac and is always taken.
  The `bnel` branch at 0xd81f5b0 targets 0xd81f528, is taken when a2(?) != 0, and falls through when a2(?) == 0; its branch-likely delay slot `lw t6,264(a2)` at 0xd81f5b4 runs only when taken and is annulled on fall-through.
  The return at 0xd81f600 has v0 = ret(XextRemoveDisplay).
  The instructions from 0xd81f5a8 to 0xd81f5a8 are not reached by any path from the entry, and their branches are not listed.
- `glXGetCurrentDrawable` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81f608 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81f608-0xd81f644 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xd81f628 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81f634 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81f638 loads 4 bytes from [[0x1014]+276] +0xe0.
  The `jalr` at 0xd81f620 calls __glXInitThread with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd81f63c has v0 = [[[0x1014]+276]+224].
- `glXGetCurrentContext` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81f644 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81f644-0xd81f694 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0xd81f668 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81f674 loads 4 bytes from [0x1014] +0x114.
  The `jalr` at 0xd81f65c calls __glXInitThread with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xd81f67c targets 0xd81f68c, is taken when v1(=[[0x1014]+276]) != t7(=0xd846640), and falls through when v1(=[[0x1014]+276]) == t7(=0xd846640).
  The `beq` branch at 0xd81f684 targets 0xd81f68c and is always taken.
  The return at 0xd81f68c has v0 = one of [[0x1014]+276], 0x0.
- `__glXUseXFont` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81f694 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81f694-0xd8202b8 (3108 bytes).
  It occupies 3108 bytes.
  The `lw` at 0xd81f6e0 loads 4 bytes from a0 (arg0 at entry) +0xd8.
  The `lw` at 0xd81f714 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `lw` at 0xd81f730 loads 4 bytes from a0 (arg0 at entry) +0x14.
  19 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd81f744, `lw` at 0xd81f748, `lw` at 0xd81f764.
  The `lh` at 0xd81f76c loads 2 bytes from ret(XQueryFont) +0x2c.
  The `lh` at 0xd81f770 loads 2 bytes from ret(XQueryFont) +0x3a.
  The `lh` at 0xd81f774 loads 2 bytes from ret(XQueryFont) +0x40.
  The `lh` at 0xd81f778 loads 2 bytes from ret(XQueryFont) +0x3e.
  The `lw` at 0xd81f788 loads 4 bytes from ret(XQueryFont) +0x14.
  The `lw` at 0xd81f78c loads 4 bytes from ret(XQueryFont) +0x18.
  The `lw` at 0xd81f7a0 loads 4 bytes from ret(XQueryFont) +0xc.
  The `lw` at 0xd81f7a4 loads 4 bytes from ret(XQueryFont) +0x10.
  18 such `lh` accesses load 2 bytes from ?, including `lh` at 0xd81fa1c, `lh` at 0xd81fa20, `lh` at 0xd81fa24.
  The `sw` at 0xd81fc4c stores 4 bytes to ?.
  The `lw` at 0xd81fd04 loads 4 bytes from ret(XGetImage) +0x8.
  The `lw` at 0xd81fd18 loads 4 bytes from ret(XGetImage) +0x14.
  5 such `lw` accesses load 4 bytes from ret(XGetImage) +0x28, including `lw` at 0xd81fef0, `lw` at 0xd81ff28, `lw` at 0xd81ff50.
  5 such `lw` accesses load 4 bytes from ret(XGetImage) +0x10, including `lw` at 0xd81fef4, `lw` at 0xd81ff2c, `lw` at 0xd81ff54.
  6 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xd81ff10, `lbu` at 0xd81ff48, `lbu` at 0xd81ff6c.
  6 such `sb` accesses store 1 byte to ?, including `sb` at 0xd81ff1c, `sb` at 0xd81ff4c, `sb` at 0xd81ff70.
  2 such `lw` accesses load 4 bytes from ret(XGetImage) +0x48, including `lw` at 0xd820014, `lw` at 0xd820070.
  The `lw` at 0xd820104 loads 4 bytes from ret(XGetImage) +0x44.
  The `jalr` at 0xd81f6fc calls glGetIntegerv with a0=0xb33, a1=sp-184, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd81f72c calls __glXPostError with a0=?, a1=?, a2=0xc, a3=[a0+20].
  The `jalr` at 0xd81f760 calls XQueryFont with a0=?, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xd81f864 calls XCreatePixmap with a0=?, a1=?, a2=?, a3=([ret(XQueryFont)+62]:2 + [ret(XQueryFont)+64]:2).
  The `jalr` at 0xd81f890 calls XCreateGC with a0=?, a1=ret(XCreatePixmap), a2=0x400c, a3=sp-112.
  The `jalr` at 0xd81f8d4 calls XFillRectangle with a0=?, a1=?, a2=ret(XCreateGC), a3=0x0.
  The `jalr` at 0xd81f8f0 calls XSetForeground with a0=?, a1=?, a2=0x1, a3=?.
  The `jalr` at 0xd81f908 calls glGetIntegerv with a0=0xcf0, a1=sp-156, a2=?, a3=?.
  The `jalr` at 0xd81f920 calls glGetIntegerv with a0=0xcf1, a1=sp-160, a2=?, a3=?.
  The `jalr` at 0xd81f938 calls glGetIntegerv with a0=0xcf2, a1=sp-164, a2=?, a3=?.
  The `jalr` at 0xd81f950 calls glGetIntegerv with a0=0xcf3, a1=sp-168, a2=?, a3=?.
  The `jalr` at 0xd81f968 calls glGetIntegerv with a0=0xcf4, a1=sp-172, a2=?, a3=?.
  The `jalr` at 0xd81f980 calls glGetIntegerv with a0=0xcf5, a1=sp-176, a2=?, a3=?.
  The `jalr` at 0xd81f998 calls glPixelStorei with a0=0xcf0, a1=0x0, a2=?, a3=?.
  The `jalr` at 0xd81f9b0 calls glPixelStorei with a0=0xcf2, a1=0x0, a2=?, a3=?.
  The `jalr` at 0xd81f9c8 calls glPixelStorei with a0=0xcf3, a1=0x0, a2=?, a3=?.
  The `jalr` at 0xd81f9e0 calls glPixelStorei with a0=0xcf4, a1=0x0, a2=?, a3=?.
  The `jalr` at 0xd81f9f8 calls glPixelStorei with a0=0xcf5, a1=0x1, a2=?, a3=?.
  The `jalr` at 0xd81fb04 calls glNewList with a0=?, a1=0x1300, a2=?, a3=?.
  The `jalr` at 0xd81fb14 calls glEndList with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd81fbd4 calls glNewList with a0=?, a1=0x1300, a2=?, a3=?.
  The `jalr` at 0xd81fc14 calls glBitmap with a0=0x0, a1=0x0, a2=?, a3=?.
  The `jalr` at 0xd81fc24 calls glEndList with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd81fc94 calls XDrawString16 with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd81fcfc calls XGetImage with a0=?, a1=?, a2=0x0, a3=0x0.
  The `jalr` at 0xd81fd3c calls glPixelStorei with a0=0xcf1, a1=0x0, a2=?, a3=?.
  The `jalr` at 0xd81fd5c calls glPixelStorei with a0=0xcf1, a1=0x1, a2=?, a3=?.
  The `jalr` at 0xd81fdb8 calls glNewList with a0=?, a1=0x1300, a2=?, a3=?.
  The `jalr` at 0xd81fe88 calls memset with a0=?, a1=0x0, a2=?, a3=?.
  The `jalr` at 0xd820020 calls (unknown callee) with a0=ret(XGetImage), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8200cc calls glBitmap with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8200dc calls glEndList with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd82010c calls (unknown callee) with a0=ret(XGetImage), a1=?, a2=?, a3=?.
  The `jalr` at 0xd820130 calls XSetForeground with a0=?, a1=?, a2=0x0, a3=?.
  The `jalr` at 0xd820160 calls XFillRectangle with a0=?, a1=?, a2=?, a3=0x0.
  The `jalr` at 0xd82017c calls XSetForeground with a0=?, a1=?, a2=0x1, a3=?.
  The `jalr` at 0xd8201b4 calls XFreeFontInfo with a0=0x0, a1=?, a2=0x1, a3=?.
  The `jalr` at 0xd8201cc calls XFreeGC with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8201e4 calls XFreePixmap with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8201fc calls glPixelStorei with a0=0xcf0, a1=?, a2=?, a3=?.
  The `jalr` at 0xd820214 calls glPixelStorei with a0=0xcf1, a1=?, a2=?, a3=?.
  The `jalr` at 0xd82022c calls glPixelStorei with a0=0xcf2, a1=?, a2=?, a3=?.
  The `jalr` at 0xd820244 calls glPixelStorei with a0=0xcf3, a1=?, a2=?, a3=?.
  The `jalr` at 0xd82025c calls glPixelStorei with a0=0xcf4, a1=?, a2=?, a3=?.
  The `jalr` at 0xd820274 calls glPixelStorei with a0=0xcf5, a1=?, a2=?, a3=?.
  The `beql` branch at 0xd81f70c targets 0xd81f740, is taken when t7(?) == 0, and falls through when t7(?) != 0; its branch-likely delay slot `lw a0,2260(s8)` at 0xd81f710 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd81f734 targets 0xd820280 and is always taken.
  The `bgez` branch at 0xd81f7b4 targets 0xd81f7c0, is taken when v1(?) >= 0 (signed), and falls through when v1(?) < 0 (signed).
  The `bne` branch at 0xd81f7ec targets 0xd81f828, is taken when t3(?) < at(=0x8000) (signed), and falls through when t3(?) >= at(=0x8000) (signed).
  The `bne` branch at 0xd81f804 targets 0xd81f810, is taken when t4(?) != 0, and falls through when t4(?) == 0.
  The `bne` branch at 0xd81f814 targets 0xd81f828, is taken when t4(?) != at(=-0x1), and falls through when t4(?) == at(=-0x1).
  The `bne` branch at 0xd81f81c targets 0xd81f828 and is always taken.
  The `bne` branch at 0xd81fa10 targets 0xd81fa54, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `bgez` branch at 0xd81fa3c targets 0xd81fa48, is taken when s5(?) >= 0 (signed), and falls through when s5(?) < 0 (signed).
  The `beq` branch at 0xd81fa60 targets 0xd8201a8, is taken when t8(=a3) == 0, and falls through when t8(=a3) != 0.
  The `bne` branch at 0xd81fa7c targets 0xd81faa0, is taken when t2(?) != at(=0x1), and falls through when t2(?) == at(=0x1).
  The `bne` branch at 0xd81fa8c targets 0xd81fae0, is taken when a1(?) < v1(?) (unsigned), and falls through when a1(?) >= v1(?) (unsigned).
  The `beq` branch at 0xd81fa98 targets 0xd81fae0 and is always taken.
  The `bne` branch at 0xd81faac targets 0xd81fae0, is taken when a0(?) < v1(?) (unsigned), and falls through when a0(?) >= v1(?) (unsigned).
  The `bne` branch at 0xd81fabc targets 0xd81fae0, is taken when t5(?) < a0(?) (unsigned), and falls through when t5(?) >= a0(?) (unsigned).
  The `bne` branch at 0xd81fad0 targets 0xd81fae0, is taken when a0(?) < t4(?) (unsigned), and falls through when a0(?) >= t4(?) (unsigned).
  The `beq` branch at 0xd81fae0 targets 0xd81fb24, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xd81fb1c targets 0xd81fcb0 and is always taken.
  The `beql` branch at 0xd81fb2c targets 0xd81fc38, is taken when a2(?) == 0, and falls through when a2(?) != 0; its branch-likely delay slot `lw t8,180(s8)` at 0xd81fb30 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd81fb3c targets 0xd81fb54, is taken when t3(?) != at(=0x1), and falls through when t3(?) == at(=0x1); its branch-likely delay slot `lw t6,2428(s8)` at 0xd81fb40 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd81fb48 targets 0xd81fb7c and is always taken.
  The `beq` branch at 0xd81fba8 targets 0xd81fbb8, is taken when s6(?) == 0, and falls through when s6(?) != 0.
  The `bne` branch at 0xd81fbb0 targets 0xd81fc34, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0xd81fbec targets 0xd81fc20, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xd81fc2c targets 0xd81fcb0 and is always taken.
  The `beq` branch at 0xd81fcc0 targets 0xd81fcd8, is taken when s0(?) >= t9(?) (signed), and falls through when s0(?) < t9(?) (signed).
  The `bnel` branch at 0xd81fcd0 targets 0xd82018c, is taken when t8(?) != at(=0x1), and falls through when t8(?) == at(=0x1); its branch-likely delay slot `lw t5,2316(s8)` at 0xd81fcd4 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd81fd10 targets 0xd81fd50, is taken when t4(=[ret(XGetImage)+8]) != 0, and falls through when t4(=[ret(XGetImage)+8]) == 0; its branch-likely delay slot `sw zero,2236(s8)` at 0xd81fd14 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd81fd24 targets 0xd81fd50, is taken when t7(=[ret(XGetImage)+20]) != at(=0x1), and falls through when t7(=[ret(XGetImage)+20]) == at(=0x1); its branch-likely delay slot `sw zero,2236(s8)` at 0xd81fd28 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd81fd44 targets 0xd81fd68 and is always taken.
  The `beq` branch at 0xd81fd80 targets 0xd820104, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beql` branch at 0xd81fdcc targets 0xd81fe74, is taken when a2(?) == 0, and falls through when a2(?) != 0; its branch-likely delay slot `lw t8,2320(s8)` at 0xd81fdd0 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd81fddc targets 0xd81fdfc, is taken when t7(?) != at(=0x1), and falls through when t7(?) == at(=0x1); its branch-likely delay slot `lw t3,128(s8)` at 0xd81fde0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd81fdf0 targets 0xd81fe2c and is always taken.
  The `bgez` branch at 0xd81fe5c targets 0xd81fe68, is taken when s5(?) >= 0 (signed), and falls through when s5(?) < 0 (signed).
  The `beql` branch at 0xd81fe98 targets 0xd81ffe0, is taken when t2(?) == 0, and falls through when t2(?) != 0; its branch-likely delay slot `lw t8,2248(s8)` at 0xd81fe9c runs only when taken and is annulled on fall-through.
  The `blezl` branch at 0xd81fea4 targets 0xd820088, is taken when t3(?) <= 0 (signed), and falls through when t3(?) > 0 (signed); its branch-likely delay slot `lw v0,2308(s8)` at 0xd81fea8 runs only when taken and is annulled on fall-through.
  The `blez` branch at 0xd81feac targets 0xd81ffc4, is taken when s5(?) <= 0 (signed), and falls through when s5(?) > 0 (signed).
  The `beql` branch at 0xd81fee8 targets 0xd81ff28, is taken when (s5(?) & 0x3) == 0, and falls through when (s5(?) & 0x3) != 0; its branch-likely delay slot `addu v0,a2,s0` at 0xd81feec runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd81ff18 targets 0xd81fef0, is taken when a0(?) != s0(?), and falls through when a0(?) == s0(?).
  The `beq` branch at 0xd81ff20 targets 0xd81ffc4, is taken when s0(?) == s5(?), and falls through when s0(?) != s5(?).
  The `bne` branch at 0xd81ffbc targets 0xd81ff28, is taken when s0(?) != s5(?), and falls through when s0(?) == s5(?).
  The `bne` branch at 0xd81ffcc targets 0xd81feac, is taken when s4(?) != t3(?), and falls through when s4(?) == t3(?).
  The `beq` branch at 0xd81ffd4 targets 0xd820088 and is always taken.
  The `blezl` branch at 0xd81ffe0 targets 0xd820088, is taken when t8(?) <= 0 (signed), and falls through when t8(?) > 0 (signed); its branch-likely delay slot `lw v0,2308(s8)` at 0xd81ffe4 runs only when taken and is annulled on fall-through.
  The `blez` branch at 0xd81ffe8 targets 0xd820074, is taken when s6(?) <= 0 (signed), and falls through when s6(?) > 0 (signed).
  The `beq` branch at 0xd820028 targets 0xd820068, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `bgez` branch at 0xd820044 targets 0xd820054, is taken when s0(?) >= 0 (signed), and falls through when s0(?) < 0 (signed).
  The `bnel` branch at 0xd82006c targets 0xd820018, is taken when s0(?) != s6(?), and falls through when s0(?) == s6(?); its branch-likely delay slot `lw t9,72(s2)` at 0xd820070 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd82007c targets 0xd81ffe8, is taken when s4(?) != t6(?), and falls through when s4(?) == t6(?).
  The `bgez` branch at 0xd8200fc targets 0xd81fd98, is taken when t7(?) >= 0 (signed), and falls through when t7(?) < 0 (signed).
  The `blezl` branch at 0xd82011c targets 0xd82018c, is taken when t2(?) <= 0 (signed), and falls through when t2(?) > 0 (signed); its branch-likely delay slot `lw t5,2316(s8)` at 0xd820120 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd82019c targets 0xd81fa70, is taken when t7(?) != 0, and falls through when t7(?) == 0.
  The return at 0xd8202b0 has v0 = one of ret(__glXPostError), ret(glPixelStorei).
  The instructions from 0xd81f73c to 0xd81f73c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd81f824 to 0xd81f824 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd81fb50 to 0xd81fb50 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd81fd4c to 0xd81fd4c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd81fdf8 to 0xd81fdf8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd81ffdc to 0xd81ffdc are not reached by any path from the entry, and their branches are not listed.
- `__glXGetReadDrawablePrivate` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8202bc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8202bc-0xd8202e4 (40 bytes).
  It occupies 40 bytes.
  The `lw` at 0xd8202bc loads 4 bytes from a0 (arg0 at entry) +0x4c.
  The `lw` at 0xd8202c4 loads 4 bytes from [a0+76] +0xe8.
  The `beq` branch at 0xd8202c8 targets 0xd8202dc, is taken when v0(=[[a0+76]+232]) == 0, and falls through when v0(=[[a0+76]+232]) != 0.
  The return at 0xd8202d4 has v0 = [[a0+76]+232]+44.
  The return at 0xd8202dc has v0 = 0x0.
- `__glXGetDrawablePrivate` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8202e4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8202e4-0xd82030c (40 bytes).
  It occupies 40 bytes.
  The `lw` at 0xd8202e4 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  The `lw` at 0xd8202ec loads 4 bytes from [a0+76] +0xe4.
  The `beq` branch at 0xd8202f0 targets 0xd820304, is taken when v0(=[[a0+76]+228]) == 0, and falls through when v0(=[[a0+76]+228]) != 0.
  The return at 0xd8202fc has v0 = [[a0+76]+228]+44.
  The return at 0xd820304 has v0 = 0x0.
- `__glXCleanUpDrawablePrivates` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82030c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82030c-0xd820384 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xd82032c loads 4 bytes from abs 0xd846560.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd820340, `lw` at 0xd820344.
  The `sw` at 0xd820350 stores 4 bytes to ?.
  The `jalr` at 0xd82035c calls __glXFreeDrawablePrivate with a0=?, a1=?, a2=?, a3=?.
  The `beql` branch at 0xd820338 targets 0xd820374, is taken when a1(=[0xd846560]) == 0, and falls through when a1(=[0xd846560]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd82033c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd820348 targets 0xd820368, is taken when s1(=a0) != t6(?), and falls through when s1(=a0) == t6(?).
  The `bne` branch at 0xd820368 targets 0xd820340, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The return at 0xd82037c has v0 = ?.
- `__glXRemoveDrawableInterest` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd820384 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd820384-0xd8203c8 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0xd82039c loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `sw` at 0xd8203a4 stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `jalr` at 0xd8203ac calls __glXFreeDrawablePrivate with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd8203c0 has v0 = ret(__glXFreeDrawablePrivate).
- `__glXSpecialDestroyCallback` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8203c8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8203c8-0xd820434 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xd8203e8 loads 4 bytes from abs 0xd846560.
  The `lw` at 0xd8203f4 loads 4 bytes from [0xd846560] +0x0.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd8203fc, `lw` at 0xd820420.
  The `sw` at 0xd820400 stores 4 bytes to ?.
  The `jalr` at 0xd820408 calls __glXFreeDrawablePrivate with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd8203ec targets 0xd820428, is taken when a0(=[0xd846560]) == 0, and falls through when a0(=[0xd846560]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd8203f0 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8203f8 targets 0xd82041c, is taken when a1 != t6(?), and falls through when a1 == t6(?); its branch-likely delay slot `lw a0,40(a0)` at 0xd8203fc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd820410 targets 0xd820424 and is always taken.
  The `bnel` branch at 0xd82041c targets 0xd8203f8, is taken when a0(?) != 0, and falls through when a0(?) == 0; its branch-likely delay slot `lw t6,0(a0)` at 0xd820420 runs only when taken and is annulled on fall-through.
  The return at 0xd82042c has v0 = ?.
  The instructions from 0xd820418 to 0xd820418 are not reached by any path from the entry, and their branches are not listed.
- `__glXFreeDrawablePrivate` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd820434 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd820434-0xd8204f0 (188 bytes).
  It occupies 188 bytes.
  The `lw` at 0xd82044c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xd82045c loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `lw` at 0xd820470 loads 4 bytes from abs 0xd846560.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd820488, `lw` at 0xd82049c, `lw` at 0xd8204a8.
  The `sw` at 0xd8204a4 stores 4 bytes to ?.
  The `sw` at 0xd8204ac stores 4 bytes to abs 0xd846560.
  The `jalr` at 0xd8204bc calls (unknown callee) with a0=?, a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8204d4 calls free with a0=?, a1=?, a2=?, a3=?.
  The `bnel` branch at 0xd820454 targets 0xd8204e4, is taken when t6(=[a0]) != 0, and falls through when t6(=[a0]) == 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd820458 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd820460 targets 0xd8204e4, is taken when t7(=[a0+20]) != 0, and falls through when t7(=[a0+20]) == 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd820464 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd820474 targets 0xd820494, is taken when a1(=[0xd846560]) == 0, and falls through when a1(=[0xd846560]) != 0.
  The `beq` branch at 0xd82047c targets 0xd820494, is taken when a1(?) == a0, and falls through when a1(?) != a0.
  The `bne` branch at 0xd82048c targets 0xd82047c, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0xd820494 targets 0xd8204a8, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xd8204a0 targets 0xd8204b0 and is always taken.
  The `beq` branch at 0xd8204b4 targets 0xd8204cc, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The return at 0xd8204e8 has v0 = one of 0x0, ret(free).
- `__glXBufRealloc` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8204f0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8204f0-0xd82054c (92 bytes).
  It occupies 92 bytes.
  The `jalr` at 0xd82050c calls __glXBufFree with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd820530 calls __glXBufMalloc with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `bne` branch at 0xd82051c targets 0xd82052c, is taken when a0(=a1) != 0, and falls through when a0(=a1) == 0.
  The `beq` branch at 0xd820524 targets 0xd82053c and is always taken.
  The return at 0xd820544 has v0 = one of 0x0, ret(__glXBufMalloc).
- `__glXGetXPrivates` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82054c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82054c-0xd820564 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0xd82054c loads 4 bytes from a0 (arg0 at entry) +0x4c.
  The `lw` at 0xd820550 loads 4 bytes from [a0+76] +0xd8.
  The `sw` at 0xd820554 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lw` at 0xd820558 loads 4 bytes from [a0+76] +0xe0.
  The `sw` at 0xd820560 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The return at 0xd82055c has v0 = [a0+76].
- `__glXPostHiddenError` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd820564 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd820564-0xd8205d0 (108 bytes).
  It occupies 108 bytes.
  The `lbu` at 0xd820584 loads 1 byte from a1 (arg1 at entry) +0x0.
  The `lbu` at 0xd820594 loads 1 byte from a1 (arg1 at entry) +0x1.
  The `jalr` at 0xd8205b4 calls __glXPostError with a0=a0 at entry (arg0), a1=[a1+1]:1, a2=?, a3=a3 at entry (arg3).
  The `bnel` branch at 0xd82058c targets 0xd8205c4, is taken when t7(=[a1]:1) != 0, and falls through when t7(=[a1]:1) == 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd820590 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82059c targets 0xd8205b0, is taken when a1(=[a1+1]:1) == at(=0xa), and falls through when a1(=[a1+1]:1) != at(=0xa).
  The `bnel` branch at 0xd8205a8 targets 0xd8205c4, is taken when v0(=[a1+1]:1) != at(=0xb), and falls through when v0(=[a1+1]:1) == at(=0xb); its branch-likely delay slot `lw ra,28(sp)` at 0xd8205ac runs only when taken and is annulled on fall-through.
  The return at 0xd8205c8 has v0 = one of ?, [a1+1]:1, ret(__glXPostError).
- `__glXPostError` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8205d0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8205d0-0xd820674 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0xd820618 loads 4 bytes from sym(_XErrorFunction) +0x0.
  The `jalr` at 0xd8205f8 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd820644 calls _XDefaultError with a0=a0 at entry (arg0), a1=sp-20, a2=?, a3=?.
  The `jalr` at 0xd820658 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-20, a2=?, a3=?.
  The `bne` branch at 0xd820634 targets 0xd820654, is taken when v1(=[sym(_XErrorFunction)]) != 0, and falls through when v1(=[sym(_XErrorFunction)]) == 0.
  The `beq` branch at 0xd82064c targets 0xd820664 and is always taken.
  The return at 0xd82066c has v0 = one of ret(_XDefaultError), ret(?).
- `__glXError` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd820674 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd820674-0xd820680 (12 bytes).
  It occupies 12 bytes.
  The return at 0xd820678 has v0 = ?.
- `__glXFreeHWContext` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd820680 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd820680-0xd820700 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xd82069c loads 4 bytes from a0 (arg0 at entry) +0x4c.
  2 such `lw` accesses load 4 bytes from [a0+76] +0xcc, including `lw` at 0xd8206b8, `lw` at 0xd8206e0.
  The `lw` at 0xd8206cc loads 4 bytes from [a0+76] +0x24.
  The `lw` at 0xd8206d0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8206dc loads 4 bytes from [0x1014] +0x0.
  The `sw` at 0xd8206ec stores 4 bytes to [0x1014] +0x0.
  The `jalr` at 0xd8206a0 calls __glXHWAttach with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8206c8 calls Ioctl [0xd8113d4] with a0=[[a0+76]+36], a1=0x3e9, a2=sp-4, a3=?.
  The `bnel` branch at 0xd8206e4 targets 0xd8206f4, is taken when t8(=[[0x1014]]) != t0(=[[a0+76]+204]), and falls through when t8(=[[0x1014]]) == t0(=[[a0+76]+204]); its branch-likely delay slot `lw ra,28(sp)` at 0xd8206e8 runs only when taken and is annulled on fall-through.
  The return at 0xd8206f8 has v0 = [0x1014].
- `__glXUnbindHWContextFromThread` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd820700 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd820700-0xd82077c (124 bytes).
  It occupies 124 bytes.
  3 such `lw` accesses load 4 bytes from abs 0x1014, including `lw` at 0xd82071c, `lw` at 0xd820758, `lw` at 0xd820764.
  The `lw` at 0xd820720 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  The `lw` at 0xd820728 loads 4 bytes from [0x1014] +0x0.
  The `lw` at 0xd82073c loads 4 bytes from [a0+76] +0x24.
  2 such `sw` accesses store 4 bytes to [0x1014] +0x0, including `sw` at 0xd820760, `sw` at 0xd820768.
  The `jalr` at 0xd820744 calls Ioctl [0xd8113d4] with a0=[[a0+76]+36], a1=0x3ea, a2=sp-8, a3=a3 at entry (arg3).
  The `beql` branch at 0xd82072c targets 0xd820770, is taken when t7(=[[0x1014]]) == 0, and falls through when t7(=[[0x1014]]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd820730 runs only when taken and is annulled on fall-through.
  The `bgez` branch at 0xd820750 targets 0xd820764, is taken when v0(=ret(Ioctl)) >= 0 (signed), and falls through when v0(=ret(Ioctl)) < 0 (signed).
  The `beq` branch at 0xd82075c targets 0xd82076c and is always taken.
  The return at 0xd820774 has v0 = one of [a0+76], ret(Ioctl).
- `__glXGetPipeAddress` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82077c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82077c-0xd820784 (8 bytes).
  It occupies 8 bytes.
  The return at 0xd82077c has v0 = 0x4000.
- `__glXPixmapBackdoor` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd820784 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd820784-0xd8207b4 (48 bytes).
  It occupies 48 bytes.
  The `sw` at 0xd820794 stores 4 bytes to abs 0xd846564.
  The `sw` at 0xd82079c stores 4 bytes to abs 0xd846568.
  The `sw` at 0xd8207a4 stores 4 bytes to abs 0xd84656c.
  The `sw` at 0xd8207b0 stores 4 bytes to abs 0xd846570.
  The return at 0xd8207ac has v0 = ?.
- `__glXSendLargeCommand` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8207b4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8207b4-0xd820af0 (828 bytes).
  It occupies 828 bytes.
  The `lw` at 0xd8207f0 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xd8207f8 loads 4 bytes from a0 (arg0 at entry) +0xd8.
  2 such `lw` accesses load 4 bytes from [a0+216] +0x4d0, including `lw` at 0xd820854, `lw` at 0xd820a84.
  11 such `lw` accesses load 4 bytes from [a0+216] +0x6c, including `lw` at 0xd82085c, `lw` at 0xd820874, `lw` at 0xd8208a0.
  The `lw` at 0xd820860 loads 4 bytes from [[a0+216]+1232] +0x0.
  4 such `lw` accesses load 4 bytes from [a0+216] +0x70, including `lw` at 0xd820878, `lw` at 0xd820910, `lw` at 0xd820988.
  4 such `sw` accesses store 4 bytes to [a0+216] +0x64, including `sw` at 0xd820888, `sw` at 0xd8208a4, `sw` at 0xd820998.
  4 such `sh` accesses store 2 bytes to [[a0+216]+108] +0x2, including `sh` at 0xd8208b0, `sh` at 0xd8208f4, `sh` at 0xd8209bc.
  4 such `sb` accesses store 1 byte to [[a0+216]+108] +0x0, including `sb` at 0xd8208b4, `sb` at 0xd8208e0, `sb` at 0xd8209c0.
  2 such `lw` accesses load 4 bytes from [a0+216] +0x60, including `lw` at 0xd8208bc, `lw` at 0xd8209c8.
  2 such `sw` accesses store 4 bytes to [a0+216] +0x60, including `sw` at 0xd8208cc, `sw` at 0xd8209d8.
  4 such `sw` accesses store 4 bytes to [a0+216] +0x6c, including `sw` at 0xd8208d0, `sw` at 0xd820950, `sw` at 0xd8209dc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x110, including `lw` at 0xd8208d4, `lw` at 0xd8209e0.
  2 such `lhu` accesses load 2 bytes from [[a0+216]+108] +0x2, including `lhu` at 0xd8208d8, `lhu` at 0xd8209e4.
  2 such `sb` accesses store 1 byte to [[a0+216]+108] +0x1, including `sb` at 0xd8208dc, `sb` at 0xd8209e8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x3c, including `lw` at 0xd8208e4, `lw` at 0xd8209f0.
  2 such `sh` accesses store 2 bytes to [[a0+216]+108] +0x8, including `sh` at 0xd8208f8, `sh` at 0xd820a00.
  2 such `sw` accesses store 4 bytes to [[a0+216]+108] +0x4, including `sw` at 0xd8208fc, `sw` at 0xd820a04.
  2 such `sw` accesses store 4 bytes to [[a0+216]+108] +0xc, including `sw` at 0xd820904, `sw` at 0xd820a0c.
  2 such `sh` accesses store 2 bytes to [[a0+216]+108] +0xa, including `sh` at 0xd820908, `sh` at 0xd820a14.
  2 such `lw` accesses load 4 bytes from [a0+216] +0x7c, including `lw` at 0xd820a8c, `lw` at 0xd820aa4.
  The `lw` at 0xd820a90 loads 4 bytes from [[a0+216]+1232] +0x4.
  The `jalr` at 0xd820868 calls (unknown callee) with a0=[a0+216], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd820894 calls _XFlush with a0=[a0+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd820930 calls memcpy with a0=[[a0+216]+108], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xd820960 calls _XSend with a0=[a0+216], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xd8209a4 calls _XFlush with a0=[a0+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd820a3c calls memcpy with a0=[[a0+216]+108], a1=?, a2=?, a3=?.
  The `jalr` at 0xd820a6c calls _XSend with a0=[a0+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd820a98 calls (unknown callee) with a0=[a0+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd820ab4 calls (unknown callee) with a0=[a0+216], a1=?, a2=?, a3=?.
  The `bne` branch at 0xd820820 targets 0xd82082c, is taken when s8(=[a0+16]-16) != 0, and falls through when s8(=[a0+16]-16) == 0.
  The `bne` branch at 0xd820830 targets 0xd820844, is taken when s8(=[a0+16]-16) != at(=-0x1), and falls through when s8(=[a0+16]-16) == at(=-0x1).
  The `bne` branch at 0xd820838 targets 0xd820844, is taken when s4(?) != at(=0xffffffff80000000), and falls through when s4(?) == at(=0xffffffff80000000).
  The `beq` branch at 0xd820848 targets 0xd820854, is taken when t6(?) == 0, and falls through when t6(?) != 0.
  The `beql` branch at 0xd820858 targets 0xd820878, is taken when v0(=[[a0+216]+1232]) == 0, and falls through when v0(=[[a0+216]+1232]) != 0; its branch-likely delay slot `lw a0,108(s1)` at 0xd82085c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd820884 targets 0xd8208a8, is taken when t8(=[[a0+216]+112]) >= t0(=[[a0+216]+108]+16) (unsigned), and falls through when t8(=[[a0+216]+112]) < t0(=[[a0+216]+108]+16) (unsigned); its branch-likely delay slot `sw a0,100(s1)` at 0xd820888 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd82091c targets 0xd820954, is taken when t3(=[[a0+216]+112]) < t4(=([[a0+216]+108] + a2)) (unsigned), and falls through when t3(=[[a0+216]+112]) >= t4(=([[a0+216]+108] + a2)) (unsigned).
  The `beq` branch at 0xd82094c targets 0xd82096c and is always taken.
  The `blez` branch at 0xd82096c targets 0xd820a84, is taken when s4(?) <= 0 (signed), and falls through when s4(?) > 0 (signed).
  The `beq` branch at 0xd820978 targets 0xd820984, is taken when s8(=[a0+16]-16) >= s4(?) (signed), and falls through when s8(=[a0+16]-16) < s4(?) (signed).
  The `beql` branch at 0xd820994 targets 0xd8209b8, is taken when t9(=[[a0+216]+112]) >= t8(=[[a0+216]+108]+16) (unsigned), and falls through when t9(=[[a0+216]+112]) < t8(=[[a0+216]+108]+16) (unsigned); its branch-likely delay slot `sw a0,100(s1)` at 0xd820998 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd820a28 targets 0xd820a60, is taken when t1(=[[a0+216]+112]) < t2(?) (unsigned), and falls through when t1(=[[a0+216]+112]) >= t2(?) (unsigned).
  The `beq` branch at 0xd820a58 targets 0xd820a78 and is always taken.
  The `bgtz` branch at 0xd820a7c targets 0xd820974, is taken when s4(?) > 0 (signed), and falls through when s4(?) <= 0 (signed).
  The `beql` branch at 0xd820a88 targets 0xd820aa8, is taken when v0(=[[a0+216]+1232]) == 0, and falls through when v0(=[[a0+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s1)` at 0xd820a8c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd820aac targets 0xd820ac4, is taken when v0(=[[a0+216]+124]) == 0, and falls through when v0(=[[a0+216]+124]) != 0; its branch-likely delay slot `lw ra,60(sp)` at 0xd820ab0 runs only when taken and is annulled on fall-through.
  The return at 0xd820ae8 has v0 = one of [[a0+216]+124], ret(?).
- `BytesPerElement` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd820af0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd820af0-0xd820be4 (244 bytes).
  It occupies 244 bytes.
  The `lw` at 0xd820b38 loads 4 bytes from (a0-33634 << 0x2) +0xd841f3c.
  The `lw` at 0xd820b6c loads 4 bytes from (a0-32818 << 0x2) +0xd841f58.
  The `lw` at 0xd820bb4 loads 4 bytes from (a0-5120 << 0x2) +0xd841f6c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd820b40).
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd820b74).
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd820bbc).
  The `bne` branch at 0xd820b00 targets 0xd820b7c, is taken when a0 < 0x1a01 (unsigned), and falls through when a0 >= 0x1a01 (unsigned).
  The `bne` branch at 0xd820b10 targets 0xd820b48, is taken when a0 < at(=0x8037) (unsigned), and falls through when a0 >= at(=0x8037) (unsigned).
  The `beq` branch at 0xd820b24 targets 0xd820bdc, is taken when t6(=a0-33634) >= 0x7 (unsigned), and falls through when t6(=a0-33634) < 0x7 (unsigned).
  The `beq` branch at 0xd820b58 targets 0xd820bdc, is taken when t7(=a0-32818) >= 0x5 (unsigned), and falls through when t7(=a0-32818) < 0x5 (unsigned).
  The `bne` branch at 0xd820b80 targets 0xd820b9c, is taken when a0 < 0x1407 (unsigned), and falls through when a0 >= 0x1407 (unsigned).
  The `beq` branch at 0xd820b8c targets 0xd820bdc, is taken when a0 == at(=0x1a00), and falls through when a0 != at(=0x1a00).
  The `beq` branch at 0xd820b94 targets 0xd820bdc and is always taken.
  The `beq` branch at 0xd820ba0 targets 0xd820bdc, is taken when t8(=a0-5120) >= 0x7 (unsigned), and falls through when t8(=a0-5120) < 0x7 (unsigned).
  The return at 0xd820bdc has v0 = 0x0.
  The instructions from 0xd820bc4 to 0xd820bd8 are not reached by any path from the entry, and their branches are not listed.
- `ElementsPerGroup` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd820be4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd820be4-0xd822c34 (8272 bytes).
  It occupies 8272 bytes.
  The `lw` at 0xd820c20 loads 4 bytes from (a1-33634 << 0x2) +0xd841ee0.
  The `lw` at 0xd820c54 loads 4 bytes from (a1-32818 << 0x2) +0xd841efc.
  The `lw` at 0xd820ccc loads 4 bytes from (a0-6400 << 0x2) +0xd841f10.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd820c28).
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd820c5c).
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd820cd4).
  The `bne` branch at 0xd820bf8 targets 0xd820c30, is taken when a1 < at(=0x8037) (unsigned), and falls through when a1 >= at(=0x8037) (unsigned).
  The `beql` branch at 0xd820c0c targets 0xd820c70, is taken when t6(=a1-33634) >= 0x7 (unsigned), and falls through when t6(=a1-33634) < 0x7 (unsigned); its branch-likely delay slot `ori at,zero,0x8001` at 0xd820c10 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd820c40 targets 0xd820c70, is taken when t7(=a1-32818) >= 0x5 (unsigned), and falls through when t7(=a1-32818) < 0x5 (unsigned); its branch-likely delay slot `ori at,zero,0x8001` at 0xd820c44 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd820c74 targets 0xd820c94, is taken when a0 < at(=0x8001) (unsigned), and falls through when a0 >= at(=0x8001) (unsigned).
  The `beq` branch at 0xd820c7c targets 0xd820cdc, is taken when a0 == at(=0x80e0), and falls through when a0 != at(=0x80e0).
  The `beq` branch at 0xd820c84 targets 0xd820cec, is taken when a0 == at(=0x80e1), and falls through when a0 != at(=0x80e1).
  The `beq` branch at 0xd820c8c targets 0xd820d00 and is always taken.
  The `bne` branch at 0xd820c98 targets 0xd820cb4, is taken when a0 < 0x190b (unsigned), and falls through when a0 >= 0x190b (unsigned).
  The `beq` branch at 0xd820ca4 targets 0xd820cec, is taken when a0 == at(=0x8000), and falls through when a0 != at(=0x8000).
  The `beq` branch at 0xd820cac targets 0xd820d00 and is always taken.
  The `beql` branch at 0xd820cb8 targets 0xd820d00, is taken when t8(=a0-6400) >= 0xb (unsigned), and falls through when t8(=a0-6400) < 0xb (unsigned); its branch-likely delay slot `or v0,zero,zero` at 0xd820cbc runs only when taken and is annulled on fall-through.
  The return at 0xd820cdc has v0 = 0x3.
  The return at 0xd820cec has v0 = 0x4.
  The return at 0xd820d00 has v0 = 0x0.
  The instructions from 0xd820c64 to 0xd820c6c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd820ce4 to 0xd820ce8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd820cf4 to 0xd820cfc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd820d08 to 0xd822c30 are not reached by any path from the entry, and their branches are not listed.
- `glXGetSelectedEventSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd820d08 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd820d08-0xd820d58 (80 bytes).
  It occupies 80 bytes.
  The `sw` at 0xd820d44 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jalr` at 0xd820d2c calls __glXGetDrawableAttributes with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-28, a3=0x1.
  The `beq` branch at 0xd820d34 targets 0xd820d48, is taken when v0(=ret(__glXGetDrawableAttributes)) == 0, and falls through when v0(=ret(__glXGetDrawableAttributes)) != 0.
  The return at 0xd820d50 has v0 = ret(__glXGetDrawableAttributes).
- `glXQueryGLXPbufferSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd820e90 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd820e90-0xd820f84 (244 bytes).
  It occupies 244 bytes.
  The `lw` at 0xd820efc loads 4 bytes from (a2-32780 << 0x2) +0xd841d38.
  The `jalr` at 0xd820ebc calls __glXGetDrawableAttributes with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-28, a3=0x1.
  Calls (unknown callee) via register with a0=?, a1=?, a2=?, a3=? (`jr` at 0xd820f04).
  The `bne` branch at 0xd820ec4 targets 0xd820ed4, is taken when v0(=ret(__glXGetDrawableAttributes)) != 0, and falls through when v0(=ret(__glXGetDrawableAttributes)) == 0.
  The `beq` branch at 0xd820ecc targets 0xd820f70 and is always taken.
  The `beql` branch at 0xd820ee8 targets 0xd820f70, is taken when t7(=a2-32780) >= 0x14 (unsigned), and falls through when t7(=a2-32780) < 0x14 (unsigned); its branch-likely delay slot `addiu v0,zero,2` at 0xd820eec runs only when taken and is annulled on fall-through.
  The return at 0xd820f7c has v0 = one of 0x1, 0x2.
  The instructions from 0xd820f0c to 0xd820f6c are not reached by any path from the entry, and their branches are not listed.
- `__glXImageSize` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd821548 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd821548-0xd82167c (308 bytes).
  It occupies 308 bytes.
  The `jalr` at 0xd8215a4 calls ElementsPerGroup [0xd820be4] with a0=?, a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8215fc calls BytesPerElement [0xd820af0] with a0=?, a1=ret(ElementsPerGroup), a2=?, a3=?.
  The `blez` branch at 0xd82156c targets 0xd82158c, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `blez` branch at 0xd821574 targets 0xd82158c, is taken when a1 <= 0 (signed), and falls through when a1 > 0 (signed).
  The `blez` branch at 0xd82157c targets 0xd82158c, is taken when a2 <= 0 (signed), and falls through when a2 > 0 (signed).
  The `bgtz` branch at 0xd821584 targets 0xd821594, is taken when a3 > 0 (signed), and falls through when a3 <= 0 (signed).
  The `beq` branch at 0xd82158c targets 0xd82166c and is always taken.
  The `bne` branch at 0xd8215bc targets 0xd8215f0, is taken when a0(?) != at(=0x1a00), and falls through when a0(?) == at(=0x1a00).
  The `beq` branch at 0xd8215c8 targets 0xd8215d8, is taken when v1(?) == at(=0x1900), and falls through when v1(?) != at(=0x1900).
  The `bne` branch at 0xd8215d0 targets 0xd8215e8, is taken when v1(?) != at(=0x1901), and falls through when v1(?) == at(=0x1901).
  The `beq` branch at 0xd8215e0 targets 0xd821620 and is always taken.
  The `beq` branch at 0xd8215e8 targets 0xd821620 and is always taken.
  The return at 0xd821674 has v0 = one of 0x0, ?.
- `__glx_PixelStoref` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82167c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82167c-0xd822488 (3596 bytes).
  It occupies 3596 bytes.
  The `lw` at 0xd821688 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd821698 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8216a4 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd821774 loads 4 bytes from (a0-3312 << 0x2) +0xd841f90.
  8 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xb0, including `lw` at 0xd8218e8, `lw` at 0xd821a70, `lw` at 0xd821c94.
  8 such `sw` accesses store 4 bytes to [[0x1014]+276] +0xb0, including `sw` at 0xd8218fc, `sw` at 0xd821a84, `sw` at 0xd821cb4.
  The `sw` at 0xd821904 stores 4 bytes to [[0x1014]+276] +0x54.
  The `sw` at 0xd821a8c stores 4 bytes to [[0x1014]+276] +0x64.
  The `sw` at 0xd821c9c stores 4 bytes to [[0x1014]+276] +0x70.
  The `sw` at 0xd821d44 stores 4 bytes to [[0x1014]+276] +0x74.
  The `sw` at 0xd821ee4 stores 4 bytes to [[0x1014]+276] +0x80.
  The `sw` at 0xd822068 stores 4 bytes to [[0x1014]+276] +0x90.
  The `sw` at 0xd822278 stores 4 bytes to [[0x1014]+276] +0x9c.
  The `sw` at 0xd822328 stores 4 bytes to [[0x1014]+276] +0xa0.
  The `lw` at 0xd822348 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd822370, `lw` at 0xd822434.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd82237c, `lw` at 0xd8223ac, `lw` at 0xd8223ec.
  The `lw` at 0xd82238c loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd8223b0 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd8223c0, `sw` at 0xd8223f0.
  The `sh` at 0xd8223f8 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd8223fc, `sb` at 0xd822424.
  The `lw` at 0xd822400 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd822414 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd822418 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd82241c loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd822420 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd822428 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `swc1` at 0xd82242c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd822430 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd82243c, `lw` at 0xd82245c.
  The `lw` at 0xd822444 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[[[0x1014]+276]+216], a3=[[0x1014]+276] (`jr` at 0xd82177c).
  The `jalr` at 0xd82235c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[[0x1014]+276]+216], a3=[[0x1014]+276].
  The `jalr` at 0xd822394 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=[[[0x1014]+276]+216], a3=[[0x1014]+276].
  The `jalr` at 0xd8223d4 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=[[[0x1014]+276]+216], a3=[[0x1014]+276].
  The `jalr` at 0xd82244c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=[[[0x1014]+276]+216], a3=[[0x1014]+276].
  The `jalr` at 0xd82246c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=[[[0x1014]+276]+216], a3=?.
  The `beql` branch at 0xd8216ac targets 0xd82247c, is taken when a2(=[[[0x1014]+276]+216]) == 0, and falls through when a2(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd8216b0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8216b4 targets 0xd8216f4, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xd8216c0 targets 0xd821cb8, is taken when a0 == at(=0x842c), and falls through when a0 != at(=0x842c).
  The `beq` branch at 0xd8216cc targets 0xd822294, is taken when a0 == at(=0x842d), and falls through when a0 != at(=0x842d).
  The `beq` branch at 0xd8216d8 targets 0xd821c00, is taken when a0 == at(=0x85a0), and falls through when a0 != at(=0x85a0).
  The `beq` branch at 0xd8216e4 targets 0xd8221dc, is taken when a0 == at(=0x85a1), and falls through when a0 != at(=0x85a1).
  The `beq` branch at 0xd8216ec targets 0xd822344 and is always taken.
  The `bnel` branch at 0xd8216f8 targets 0xd821720, is taken when a0 < v0(=0x806d) (unsigned), and falls through when a0 >= v0(=0x806d) (unsigned); its branch-likely delay slot `ori v0,zero,0x806c` at 0xd8216fc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd821700 targets 0xd821fac, is taken when a0 == v0(=0x806d), and falls through when a0 != v0(=0x806d).
  The `beql` branch at 0xd82170c targets 0xd821e28, is taken when a0 == at(=0x806e), and falls through when a0 != at(=0x806e); its branch-likely delay slot `lui at,0x3fe0` at 0xd821710 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd821714 targets 0xd822344 and is always taken.
  The `bnel` branch at 0xd821724 targets 0xd821740, is taken when a0 < v0(=0x806c) (unsigned), and falls through when a0 >= v0(=0x806c) (unsigned); its branch-likely delay slot `sltiu at,a0,3334` at 0xd821728 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82172c targets 0xd821848, is taken when a0 == v0(=0x806c), and falls through when a0 != v0(=0x806c).
  The `beq` branch at 0xd821734 targets 0xd822344 and is always taken.
  The `bne` branch at 0xd821740 targets 0xd82175c, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beql` branch at 0xd82174c targets 0xd8219d0, is taken when a0 == at(=0x806b), and falls through when a0 != at(=0x806b); its branch-likely delay slot `lui at,0x3fe0` at 0xd821750 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd821754 targets 0xd822344 and is always taken.
  The `beq` branch at 0xd821760 targets 0xd822344, is taken when t7(=a0-3312) >= 0x16 (unsigned), and falls through when t7(=a0-3312) < 0x16 (unsigned).
  The `beql` branch at 0xd82187c targets 0xd8218d0, is taken when (v0(?) & 0x78) == 0, and falls through when (v0(?) & 0x78) != 0; its branch-likely delay slot `mfc1 v0,$f6` at 0xd821880 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8218ac targets 0xd8218c4, is taken when (v0(?) & 0x78) != 0, and falls through when (v0(?) & 0x78) == 0.
  The `beq` branch at 0xd8218bc targets 0xd8218dc and is always taken.
  The `beq` branch at 0xd8218c4 targets 0xd8218dc and is always taken.
  The `bltz` branch at 0xd8218d4 targets 0xd8218c4, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `bgez` branch at 0xd8218e0 targets 0xd821900, is taken when v0(?) >= 0 (signed), and falls through when v0(?) < 0 (signed).
  The `bnel` branch at 0xd8218f0 targets 0xd82247c, is taken when t2(=[[[0x1014]+276]+176]) != 0, and falls through when t2(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd8218f4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8218f8 targets 0xd822478 and is always taken.
  The `beq` branch at 0xd821900 targets 0xd822478 and is always taken.
  The `beql` branch at 0xd821a04 targets 0xd821a58, is taken when (v0(?) & 0x78) == 0, and falls through when (v0(?) & 0x78) != 0; its branch-likely delay slot `mfc1 v0,$f10` at 0xd821a08 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd821a34 targets 0xd821a4c, is taken when (v0(?) & 0x78) != 0, and falls through when (v0(?) & 0x78) == 0.
  The `beq` branch at 0xd821a44 targets 0xd821a64 and is always taken.
  The `beq` branch at 0xd821a4c targets 0xd821a64 and is always taken.
  The `bltz` branch at 0xd821a5c targets 0xd821a4c, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `bgez` branch at 0xd821a68 targets 0xd821a88, is taken when v0(?) >= 0 (signed), and falls through when v0(?) < 0 (signed).
  The `bnel` branch at 0xd821a74 targets 0xd82247c, is taken when t8(=[[[0x1014]+276]+176]) != 0, and falls through when t8(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd821a78 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd821a80 targets 0xd822478 and is always taken.
  The `beq` branch at 0xd821a88 targets 0xd822478 and is always taken.
  The `beql` branch at 0xd821c1c targets 0xd821c6c, is taken when (v0(?) & 0x78) == 0, and falls through when (v0(?) & 0x78) != 0; its branch-likely delay slot `mfc1 v0,$f8` at 0xd821c20 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd821c48 targets 0xd821c60, is taken when (v0(?) & 0x78) != 0, and falls through when (v0(?) & 0x78) == 0.
  The `beq` branch at 0xd821c58 targets 0xd821c78 and is always taken.
  The `beq` branch at 0xd821c60 targets 0xd821c78 and is always taken.
  The `bltz` branch at 0xd821c70 targets 0xd821c60, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `beq` branch at 0xd821c80 targets 0xd821c98, is taken when v0(?) == at(=0x85a2), and falls through when v0(?) != at(=0x85a2).
  The `beq` branch at 0xd821c88 targets 0xd821c98, is taken when v0(?) == at(=0x85a3), and falls through when v0(?) != at(=0x85a3).
  The `bnel` branch at 0xd821c90 targets 0xd821ca4, is taken when v0(?) != at(=0x85a4), and falls through when v0(?) == at(=0x85a4); its branch-likely delay slot `lw t9,176(a3)` at 0xd821c94 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd821c98 targets 0xd822478 and is always taken.
  The `bnel` branch at 0xd821ca8 targets 0xd82247c, is taken when t9(=[[[0x1014]+276]+176]) != 0, and falls through when t9(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd821cac runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd821cb0 targets 0xd822478 and is always taken.
  The `beql` branch at 0xd821cd4 targets 0xd821d24, is taken when (v0(?) & 0x78) == 0, and falls through when (v0(?) & 0x78) != 0; its branch-likely delay slot `mfc1 v0,$f10` at 0xd821cd8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd821d00 targets 0xd821d18, is taken when (v0(?) & 0x78) != 0, and falls through when (v0(?) & 0x78) == 0.
  The `beq` branch at 0xd821d10 targets 0xd821d30 and is always taken.
  The `beq` branch at 0xd821d18 targets 0xd821d30 and is always taken.
  The `bltz` branch at 0xd821d28 targets 0xd821d18, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `bnel` branch at 0xd821d38 targets 0xd821d4c, is taken when v0(?) != at(=0x8430), and falls through when v0(?) == at(=0x8430); its branch-likely delay slot `lw t2,176(a3)` at 0xd821d3c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd821d40 targets 0xd822478 and is always taken.
  The `bnel` branch at 0xd821d50 targets 0xd82247c, is taken when t2(=[[[0x1014]+276]+176]) != 0, and falls through when t2(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd821d54 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd821d58 targets 0xd822478 and is always taken.
  The `beql` branch at 0xd821e5c targets 0xd821eb0, is taken when (v0(?) & 0x78) == 0, and falls through when (v0(?) & 0x78) != 0; its branch-likely delay slot `mfc1 v0,$f18` at 0xd821e60 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd821e8c targets 0xd821ea4, is taken when (v0(?) & 0x78) != 0, and falls through when (v0(?) & 0x78) == 0.
  The `beq` branch at 0xd821e9c targets 0xd821ebc and is always taken.
  The `beq` branch at 0xd821ea4 targets 0xd821ebc and is always taken.
  The `bltz` branch at 0xd821eb4 targets 0xd821ea4, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `bgez` branch at 0xd821ec0 targets 0xd821ee0, is taken when v0(?) >= 0 (signed), and falls through when v0(?) < 0 (signed).
  The `bnel` branch at 0xd821ecc targets 0xd82247c, is taken when t8(=[[[0x1014]+276]+176]) != 0, and falls through when t8(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd821ed0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd821ed8 targets 0xd822478 and is always taken.
  The `beq` branch at 0xd821ee0 targets 0xd822478 and is always taken.
  The `beql` branch at 0xd821fe0 targets 0xd822034, is taken when (v0(?) & 0x78) == 0, and falls through when (v0(?) & 0x78) != 0; its branch-likely delay slot `mfc1 v0,$f6` at 0xd821fe4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd822010 targets 0xd822028, is taken when (v0(?) & 0x78) != 0, and falls through when (v0(?) & 0x78) == 0.
  The `beq` branch at 0xd822020 targets 0xd822040 and is always taken.
  The `beq` branch at 0xd822028 targets 0xd822040 and is always taken.
  The `bltz` branch at 0xd822038 targets 0xd822028, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `bgez` branch at 0xd822044 targets 0xd822064, is taken when v0(?) >= 0 (signed), and falls through when v0(?) < 0 (signed).
  The `bnel` branch at 0xd822054 targets 0xd82247c, is taken when t4(=[[[0x1014]+276]+176]) != 0, and falls through when t4(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd822058 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82205c targets 0xd822478 and is always taken.
  The `beq` branch at 0xd822064 targets 0xd822478 and is always taken.
  The `beql` branch at 0xd8221f8 targets 0xd822248, is taken when (v0(?) & 0x78) == 0, and falls through when (v0(?) & 0x78) != 0; its branch-likely delay slot `mfc1 v0,$f4` at 0xd8221fc runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd822224 targets 0xd82223c, is taken when (v0(?) & 0x78) != 0, and falls through when (v0(?) & 0x78) == 0.
  The `beq` branch at 0xd822234 targets 0xd822254 and is always taken.
  The `beq` branch at 0xd82223c targets 0xd822254 and is always taken.
  The `bltz` branch at 0xd82224c targets 0xd82223c, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `beq` branch at 0xd82225c targets 0xd822274, is taken when v0(?) == at(=0x85a2), and falls through when v0(?) != at(=0x85a2).
  The `beq` branch at 0xd822264 targets 0xd822274, is taken when v0(?) == at(=0x85a3), and falls through when v0(?) != at(=0x85a3).
  The `bnel` branch at 0xd82226c targets 0xd822280, is taken when v0(?) != at(=0x85a4), and falls through when v0(?) == at(=0x85a4); its branch-likely delay slot `lw t5,176(a3)` at 0xd822270 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd822274 targets 0xd822478 and is always taken.
  The `bnel` branch at 0xd822284 targets 0xd82247c, is taken when t5(=[[[0x1014]+276]+176]) != 0, and falls through when t5(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd822288 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82228c targets 0xd822478 and is always taken.
  The `beql` branch at 0xd8222b0 targets 0xd822300, is taken when (v0(?) & 0x78) == 0, and falls through when (v0(?) & 0x78) != 0; its branch-likely delay slot `mfc1 v0,$f6` at 0xd8222b4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8222dc targets 0xd8222f4, is taken when (v0(?) & 0x78) != 0, and falls through when (v0(?) & 0x78) == 0.
  The `beq` branch at 0xd8222ec targets 0xd82230c and is always taken.
  The `beq` branch at 0xd8222f4 targets 0xd82230c and is always taken.
  The `bltz` branch at 0xd822304 targets 0xd8222f4, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `beq` branch at 0xd822314 targets 0xd822324, is taken when v0(?) == at(=0x842e), and falls through when v0(?) != at(=0x842e).
  The `bnel` branch at 0xd82231c targets 0xd822330, is taken when v0(?) != at(=0x842f), and falls through when v0(?) == at(=0x842f); its branch-likely delay slot `lw t8,176(a3)` at 0xd822320 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd822324 targets 0xd822478 and is always taken.
  The `bnel` branch at 0xd822330 targets 0xd82247c, is taken when t8(=[[[0x1014]+276]+176]) != 0, and falls through when t8(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd822334 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82233c targets 0xd822478 and is always taken.
  The `beq` branch at 0xd822344 targets 0xd822478, is taken when a2(=[[[0x1014]+276]+216]) == 0, and falls through when a2(=[[[0x1014]+276]+216]) != 0.
  The `beql` branch at 0xd822378 targets 0xd8223b0, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw a0,108(a2)` at 0xd82237c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8223bc targets 0xd8223f4, is taken when t0(=[[[[0x1014]+276]+216]+112]) >= t1(=[[[[0x1014]+276]+216]+108]+12) (unsigned), and falls through when t0(=[[[[0x1014]+276]+216]+112]) < t1(=[[[[0x1014]+276]+216]+108]+12) (unsigned); its branch-likely delay slot `sw a0,100(a2)` at 0xd8223c0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd822438 targets 0xd822460, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(a2)` at 0xd82243c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd822464 targets 0xd82247c, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd822468 runs only when taken and is annulled on fall-through.
  The return at 0xd822480 has v0 = one of ?, [[[[0x1014]+276]+216]+124].
  The instructions from 0xd82171c to 0xd82171c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd82173c to 0xd82173c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd821784 to 0xd821844 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8218cc to 0xd8218cc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd821908 to 0xd8219cc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd821a54 to 0xd821a54 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd821a90 to 0xd821bfc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd821c68 to 0xd821c68 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd821ca0 to 0xd821ca0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd821d20 to 0xd821d20 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd821d48 to 0xd821d48 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd821d60 to 0xd821e24 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd821eac to 0xd821eac are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd821ee8 to 0xd821fa8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd822030 to 0xd822030 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd82206c to 0xd8221d8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd822244 to 0xd822244 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd82227c to 0xd82227c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8222fc to 0xd8222fc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd82232c to 0xd82232c are not reached by any path from the entry, and their branches are not listed.
- `__glXEmptyImage3D4D` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd822488 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd822488-0xd822898 (1040 bytes).
  It occupies 1040 bytes.
  The `lw` at 0xd8224cc loads 4 bytes from a0 (arg0 at entry) +0x5c.
  The `lw` at 0xd8224d0 loads 4 bytes from a0 (arg0 at entry) +0x50.
  The `lw` at 0xd8224d4 loads 4 bytes from a0 (arg0 at entry) +0x54.
  The `lw` at 0xd8224d8 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `lw` at 0xd8224dc loads 4 bytes from a0 (arg0 at entry) +0x6c.
  The `lw` at 0xd8224e0 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `lw` at 0xd8224e8 loads 4 bytes from a0 (arg0 at entry) +0x64.
  The `lw` at 0xd8224f8 loads 4 bytes from a0 (arg0 at entry) +0x94.
  The `lw` at 0xd822504 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `jalr` at 0xd822534 calls ElementsPerGroup [0xd820be4] with a0=?, a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd822580 calls BytesPerElement [0xd820af0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8226b8 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8226fc calls PackSubsampledImage [0xd83bd8c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd822790 calls memcpy with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8227ec calls memcpy with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd82285c calls XFree with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xd822508 targets 0xd822518, is taken when t9(=[a0+112]) == at(=0x85a3), and falls through when t9(=[a0+112]) != at(=0x85a3).
  The `bne` branch at 0xd822514 targets 0xd822524, is taken when t9(=[a0+112]) != at(=0x85a4), and falls through when t9(=[a0+112]) == at(=0x85a4).
  The `beq` branch at 0xd82251c targets 0xd822544 and is always taken.
  The `blez` branch at 0xd822544 targets 0xd822554, is taken when s1(=[a0+80]) <= 0 (signed), and falls through when s1(=[a0+80]) > 0 (signed).
  The `beq` branch at 0xd82254c targets 0xd822554 and is always taken.
  The `blez` branch at 0xd822554 targets 0xd822564, is taken when s2(=[a0+84]) <= 0 (signed), and falls through when s2(=[a0+84]) > 0 (signed).
  The `beq` branch at 0xd82255c targets 0xd822564 and is always taken.
  The `blez` branch at 0xd822564 targets 0xd822574, is taken when s4(=[a0+132]) <= 0 (signed), and falls through when s4(=[a0+132]) > 0 (signed).
  The `beq` branch at 0xd82256c targets 0xd822574 and is always taken.
  The `bne` branch at 0xd8225c0 targets 0xd8225cc, is taken when s5(=[a0+108]) != 0, and falls through when s5(=[a0+108]) == 0.
  The `bne` branch at 0xd8225d0 targets 0xd8225e4, is taken when s5(=[a0+108]) != at(=-0x1), and falls through when s5(=[a0+108]) == at(=-0x1).
  The `bne` branch at 0xd8225d8 targets 0xd8225e4, is taken when a0(?) != at(=0xffffffff80000000), and falls through when a0(?) == at(=0xffffffff80000000).
  The `beq` branch at 0xd8225e4 targets 0xd8225f0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bgez` branch at 0xd8225fc targets 0xd822610, is taken when a0(?) >= 0 (signed), and falls through when a0(?) < 0 (signed).
  The `beq` branch at 0xd822604 targets 0xd822610, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0xd822610 targets 0xd822620, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0xd822694 targets 0xd822710, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0xd8226c4 targets 0xd822710, is taken when v0(=ret(malloc)) == 0, and falls through when v0(=ret(malloc)) != 0.
  The `blez` branch at 0xd82271c targets 0xd822840, is taken when t7(?) <= 0 (signed), and falls through when t7(?) > 0 (signed).
  The `blez` branch at 0xd822728 targets 0xd82281c, is taken when v1(=a3) <= 0 (signed), and falls through when v1(=a3) > 0 (signed).
  The `bne` branch at 0xd822730 targets 0xd8227a8, is taken when s4(?) != s5(?), and falls through when s4(?) == s5(?).
  The `bnel` branch at 0xd82274c targets 0xd8227ac, is taken when (t8(?) & 0x3) != 0, and falls through when (t8(?) & 0x3) == 0; its branch-likely delay slot `or s0,s6,zero` at 0xd822750 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8227a0 targets 0xd82280c and is always taken.
  The `blez` branch at 0xd8227ac targets 0xd82280c, is taken when s7(=a2) <= 0 (signed), and falls through when s7(=a2) > 0 (signed).
  The `bne` branch at 0xd822800 targets 0xd8227e0, is taken when s1(?) != s7(=a2), and falls through when s1(?) == s7(=a2).
  The `bne` branch at 0xd822814 targets 0xd822730, is taken when s8(?) != v1(=a3), and falls through when s8(?) == v1(=a3).
  The `bne` branch at 0xd822838 targets 0xd822724, is taken when t4(?) != t3(?), and falls through when t4(?) == t3(?).
  The `beql` branch at 0xd822844 targets 0xd82286c, is taken when t7(?) == 0, and falls through when t7(?) != 0; its branch-likely delay slot `lw ra,76(sp)` at 0xd822848 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd822850 targets 0xd822868, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The return at 0xd822890 has v0 = ?.
- `__glXEmptyImage` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd822898 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd822898-0xd822c34 (924 bytes).
  It occupies 924 bytes.
  The `lw` at 0xd8228d4 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `lw` at 0xd8228d8 loads 4 bytes from a0 (arg0 at entry) +0x50.
  The `lw` at 0xd8228dc loads 4 bytes from a0 (arg0 at entry) +0x6c.
  The `lw` at 0xd8228e4 loads 4 bytes from a0 (arg0 at entry) +0x5c.
  The `lw` at 0xd8228f4 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `jalr` at 0xd822920 calls EmptyBitmap [0xd822c34] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd822960 calls ElementsPerGroup [0xd820be4] with a0=a3 at entry (arg3), a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd822994 calls BytesPerElement [0xd820af0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd822a64 calls malloc with a0=?, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xd822ab8 calls PackSubsampledImage [0xd83bd8c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1.
  The `jalr` at 0xd822b54 calls memcpy with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd822bc4 calls memcpy with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd822c00 calls XFree with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0xd822900 targets 0xd822930, is taken when s3(?) != at(=0x1a00), and falls through when s3(?) == at(=0x1a00).
  The `beq` branch at 0xd822928 targets 0xd822c0c and is always taken.
  The `beq` branch at 0xd822938 targets 0xd822948, is taken when t2(=[a0+112]) == at(=0x85a3), and falls through when t2(=[a0+112]) != at(=0x85a3).
  The `bne` branch at 0xd822940 targets 0xd822950, is taken when t2(=[a0+112]) != at(=0x85a4), and falls through when t2(=[a0+112]) == at(=0x85a4).
  The `beq` branch at 0xd822948 targets 0xd822974 and is always taken.
  The `blez` branch at 0xd822974 targets 0xd822984, is taken when s2(=[a0+80]) <= 0 (signed), and falls through when s2(=[a0+80]) > 0 (signed).
  The `beq` branch at 0xd82297c targets 0xd822984 and is always taken.
  The `bne` branch at 0xd8229d4 targets 0xd8229e0, is taken when s4(=[a0+108]) != 0, and falls through when s4(=[a0+108]) == 0.
  The `bne` branch at 0xd8229e4 targets 0xd8229f8, is taken when s4(=[a0+108]) != at(=-0x1), and falls through when s4(=[a0+108]) == at(=-0x1).
  The `bne` branch at 0xd8229ec targets 0xd8229f8, is taken when a0(?) != at(=0xffffffff80000000), and falls through when a0(?) == at(=0xffffffff80000000).
  The `beql` branch at 0xd8229f8 targets 0xd822a08, is taken when a1(?) == 0, and falls through when a1(?) != 0; its branch-likely delay slot `lw a1,148(sp)` at 0xd8229fc runs only when taken and is annulled on fall-through.
  The `bgez` branch at 0xd822a14 targets 0xd822a28, is taken when v0(?) >= 0 (signed), and falls through when v0(?) < 0 (signed).
  The `beq` branch at 0xd822a1c targets 0xd822a28, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0xd822a28 targets 0xd822a38, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beql` branch at 0xd822a38 targets 0xd822ad8, is taken when t4(?) == 0, and falls through when t4(?) != 0; its branch-likely delay slot `lw t9,148(sp)` at 0xd822a3c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd822a78 targets 0xd822ad4, is taken when v0(=ret(malloc)) == 0, and falls through when v0(=ret(malloc)) != 0.
  The `bne` branch at 0xd822adc targets 0xd822b64, is taken when s5(?) != s4(?), and falls through when s5(?) == s4(?).
  The `bnel` branch at 0xd822af4 targets 0xd822b68, is taken when (t2(?) & 0x3) != 0, and falls through when (t2(?) & 0x3) == 0; its branch-likely delay slot `lw t6,128(sp)` at 0xd822af8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd822b5c targets 0xd822be0 and is always taken.
  The `blezl` branch at 0xd822b90 targets 0xd822be4, is taken when s6(=a2) <= 0 (signed), and falls through when s6(=a2) > 0 (signed); its branch-likely delay slot `lw t5,124(sp)` at 0xd822b94 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd822bd8 targets 0xd822bb8, is taken when s1(?) != s6(=a2), and falls through when s1(?) == s6(=a2).
  The `beql` branch at 0xd822be8 targets 0xd822c10, is taken when t5(?) == 0, and falls through when t5(?) != 0; its branch-likely delay slot `lw ra,68(sp)` at 0xd822bec runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd822bf0 targets 0xd822c10, is taken when t6(?) == 0, and falls through when t6(?) != 0; its branch-likely delay slot `lw ra,68(sp)` at 0xd822bf4 runs only when taken and is annulled on fall-through.
  The return at 0xd822c2c has v0 = ?.
- `EmptyBitmap` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd822c34 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd822c34-0xd8238b8 (3204 bytes).
  It occupies 3204 bytes.
  The `lw` at 0xd822c64 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `lw` at 0xd822c68 loads 4 bytes from a0 (arg0 at entry) +0x50.
  The `lw` at 0xd822c6c loads 4 bytes from a0 (arg0 at entry) +0x6c.
  The `lw` at 0xd822c74 loads 4 bytes from a0 (arg0 at entry) +0x5c.
  The `lbu` at 0xd822c84 loads 1 byte from a0 (arg0 at entry) +0x4d.
  8 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xd822da0, `lbu` at 0xd822dc8, `lbu` at 0xd822dec.
  5 such `lbu` accesses load 1 byte from table(0xd841de0) +0x0, including `lbu` at 0xd822dc4, `lbu` at 0xd822ddc, `lbu` at 0xd822e4c.
  10 such `sb` accesses store 1 byte to ?, including `sb` at 0xd822dd4, `sb` at 0xd822de8, `sb` at 0xd822dfc.
  The `jalr` at 0xd822c94 calls ElementsPerGroup [0xd820be4] with a0=a3 at entry (arg3), a1=0x1a00, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `blez` branch at 0xd822ca4 targets 0xd822cb4, is taken when s0(=[a0+80]) <= 0 (signed), and falls through when s0(=[a0+80]) > 0 (signed).
  The `beq` branch at 0xd822cac targets 0xd822cb8 and is always taken.
  The `bne` branch at 0xd822ce0 targets 0xd822cec, is taken when s1(=[a0+108]) != 0, and falls through when s1(=[a0+108]) == 0.
  The `bne` branch at 0xd822cf0 targets 0xd822d04, is taken when s1(=[a0+108]) != at(=-0x1), and falls through when s1(=[a0+108]) == at(=-0x1).
  The `bne` branch at 0xd822cf8 targets 0xd822d04, is taken when v1(?) != at(=0xffffffff80000000), and falls through when v1(?) == at(=0xffffffff80000000).
  The `beq` branch at 0xd822d08 targets 0xd822d14, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bgez` branch at 0xd822d28 targets 0xd822d3c, is taken when v1(?) >= 0 (signed), and falls through when v1(?) < 0 (signed).
  The `beq` branch at 0xd822d30 targets 0xd822d3c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xd822d3c targets 0xd822d4c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xd822d44 targets 0xd822d4c and is always taken.
  The `blez` branch at 0xd822d78 targets 0xd822ef0, is taken when s3(=a2) <= 0 (signed), and falls through when s3(=a2) > 0 (signed).
  The `beq` branch at 0xd822d98 targets 0xd822e14, is taken when t5(?) == 0, and falls through when t5(?) != 0.
  The `beq` branch at 0xd822db8 targets 0xd822dec, is taken when t3(=[a0+77]:1) == 0, and falls through when t3(=[a0+77]:1) != 0.
  The `beq` branch at 0xd822de4 targets 0xd822e08 and is always taken.
  The `bne` branch at 0xd822e18 targets 0xd822e6c, is taken when a3(?) < 0x8 (signed), and falls through when a3(?) >= 0x8 (signed).
  The `beq` branch at 0xd822e40 targets 0xd822e58, is taken when t3(=[a0+77]:1) == 0, and falls through when t3(=[a0+77]:1) != 0.
  The `beq` branch at 0xd822e50 targets 0xd822e5c and is always taken.
  The `beq` branch at 0xd822e64 targets 0xd822e20, is taken when a3(?) >= 0x8 (signed), and falls through when a3(?) < 0x8 (signed).
  The `beq` branch at 0xd822e6c targets 0xd822ee4, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0xd822e84 targets 0xd822ec8, is taken when t3(=[a0+77]:1) == 0, and falls through when t3(=[a0+77]:1) != 0.
  The `beq` branch at 0xd822ec0 targets 0xd822ee4 and is always taken.
  The `bne` branch at 0xd822ee4 targets 0xd822d90, is taken when ra(?) != s3(=a2), and falls through when ra(?) == s3(=a2).
  The return at 0xd822f04 has v0 = ret(ElementsPerGroup).
  The instructions from 0xd822f0c to 0xd8238b4 are not reached by any path from the entry, and their branches are not listed.
- `__glXFillImage3D4D` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd822f0c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd822f0c-0xd823468 (1372 bytes).
  It occupies 1372 bytes.
  The `lw` at 0xd822f50 loads 4 bytes from a0 (arg0 at entry) +0x8c.
  The `lw` at 0xd822f54 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `lw` at 0xd822f58 loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `lw` at 0xd822f5c loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `lw` at 0xd822f60 loads 4 bytes from a0 (arg0 at entry) +0x98.
  The `lw` at 0xd822f68 loads 4 bytes from a0 (arg0 at entry) +0x88.
  The `lw` at 0xd822f78 loads 4 bytes from a0 (arg0 at entry) +0x90.
  The `lw` at 0xd822f84 loads 4 bytes from a0 (arg0 at entry) +0x94.
  The `lbu` at 0xd822f8c loads 1 byte from a0 (arg0 at entry) +0x78.
  The `lw` at 0xd822f94 loads 4 bytes from a0 (arg0 at entry) +0x9c.
  5 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xd8231e4, `lbu` at 0xd823210, `lbu` at 0xd823220.
  9 such `sb` accesses store 1 byte to ?, including `sb` at 0xd8231f8, `sb` at 0xd82321c, `sb` at 0xd82322c.
  8 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd823418, `sw` at 0xd82341c, `sw` at 0xd823420.
  The `jalr` at 0xd822fc8 calls ElementsPerGroup [0xd820be4] with a0=?, a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd823020 calls BytesPerElement [0xd820af0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd82313c calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd823304 calls memcpy with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd823330 calls memcpy with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8233d8 calls UnpackSubsampledImage [0xd83b750] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8233ec calls XFree with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xd822f98 targets 0xd822fac, is taken when t4(=[a0+156]) == at(=0x85a3), and falls through when t4(=[a0+156]) != at(=0x85a3).
  The `bne` branch at 0xd822fa4 targets 0xd822fb4, is taken when t4(=[a0+156]) != at(=0x85a4), and falls through when t4(=[a0+156]) == at(=0x85a4).
  The `beq` branch at 0xd822fac targets 0xd822fdc and is always taken.
  The `blezl` branch at 0xd822fdc targets 0xd822ff0, is taken when s0(=[a0+124]) <= 0 (signed), and falls through when s0(=[a0+124]) > 0 (signed); its branch-likely delay slot `lw s2,244(sp)` at 0xd822fe0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd822fe4 targets 0xd822ff0 and is always taken.
  The `blez` branch at 0xd822ff0 targets 0xd823000, is taken when s1(=[a0+128]) <= 0 (signed), and falls through when s1(=[a0+128]) > 0 (signed).
  The `beq` branch at 0xd822ff8 targets 0xd823000 and is always taken.
  The `blez` branch at 0xd823000 targets 0xd823010, is taken when s4(=[a0+132]) <= 0 (signed), and falls through when s4(=[a0+132]) > 0 (signed).
  The `beq` branch at 0xd823008 targets 0xd823010 and is always taken.
  The `bne` branch at 0xd823040 targets 0xd82304c, is taken when v0(=ret(BytesPerElement)) != at(=0x1), and falls through when v0(=ret(BytesPerElement)) == at(=0x1).
  The `bne` branch at 0xd823064 targets 0xd823070, is taken when s8(=[a0+152]) != 0, and falls through when s8(=[a0+152]) == 0.
  The `bne` branch at 0xd823074 targets 0xd823088, is taken when s8(=[a0+152]) != at(=-0x1), and falls through when s8(=[a0+152]) == at(=-0x1).
  The `bne` branch at 0xd82307c targets 0xd823088, is taken when v0(?) != at(=0xffffffff80000000), and falls through when v0(?) == at(=0xffffffff80000000).
  The `beq` branch at 0xd823088 targets 0xd823094, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0xd823104 targets 0xd82314c, is taken when t5(?) == 0, and falls through when t5(?) != 0.
  The `beq` branch at 0xd823158 targets 0xd823170, is taken when t6(?) == 0, and falls through when t6(?) != 0.
  The `beq` branch at 0xd823160 targets 0xd823170, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0xd823168 targets 0xd823170 and is always taken.
  The `beql` branch at 0xd823180 targets 0xd8232b4, is taken when t9(?) == 0, and falls through when t9(?) != 0; its branch-likely delay slot `lw t6,256(sp)` at 0xd823184 runs only when taken and is annulled on fall-through.
  The `blezl` branch at 0xd823190 targets 0xd823398, is taken when t4(?) <= 0 (signed), and falls through when t4(?) > 0 (signed); its branch-likely delay slot `lw t3,200(sp)` at 0xd823194 runs only when taken and is annulled on fall-through.
  The `blez` branch at 0xd8231a4 targets 0xd823284, is taken when t7(=a3) <= 0 (signed), and falls through when t7(=a3) > 0 (signed).
  The `blez` branch at 0xd8231b0 targets 0xd823260, is taken when s7(=a2) <= 0 (signed), and falls through when s7(=a2) > 0 (signed).
  The `blez` branch at 0xd8231bc targets 0xd823254, is taken when s8(?) <= 0 (signed), and falls through when s8(?) > 0 (signed).
  The `blez` branch at 0xd8231c4 targets 0xd823244, is taken when s0(=ret(BytesPerElement)) <= 0 (signed), and falls through when s0(=ret(BytesPerElement)) > 0 (signed).
  The `beq` branch at 0xd8231d0 targets 0xd823204, is taken when (s0(=ret(BytesPerElement)) & 0x3) == 0, and falls through when (s0(=ret(BytesPerElement)) & 0x3) != 0.
  The `bne` branch at 0xd8231f4 targets 0xd8231e4, is taken when a1(?) != a0(?), and falls through when a1(?) == a0(?).
  The `beq` branch at 0xd823200 targets 0xd823244, is taken when t5(=ret(BytesPerElement)+1) == a0(?), and falls through when t5(=ret(BytesPerElement)+1) != a0(?).
  The `bne` branch at 0xd82323c targets 0xd823210, is taken when t3(=ret(BytesPerElement)+1) != a0(?), and falls through when t3(=ret(BytesPerElement)+1) == a0(?).
  The `bne` branch at 0xd82324c targets 0xd8231c4, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `bne` branch at 0xd823258 targets 0xd8231b8, is taken when s3(?) != s7(=a2), and falls through when s3(?) == s7(=a2).
  The `bne` branch at 0xd82327c targets 0xd8231ac, is taken when t7(?) != t6(=a3), and falls through when t7(?) == t6(=a3).
  The `bne` branch at 0xd8232a0 targets 0xd823198, is taken when t8(?) != t7(?), and falls through when t8(?) == t7(?).
  The `beq` branch at 0xd8232a8 targets 0xd823398 and is always taken.
  The `blezl` branch at 0xd8232b8 targets 0xd823398, is taken when t6(?) <= 0 (signed), and falls through when t6(?) > 0 (signed); its branch-likely delay slot `lw t3,200(sp)` at 0xd8232bc runs only when taken and is annulled on fall-through.
  The `blez` branch at 0xd8232cc targets 0xd823370, is taken when t5(=a3) <= 0 (signed), and falls through when t5(=a3) > 0 (signed).
  The `bne` branch at 0xd8232e4 targets 0xd823318, is taken when s6(?) != s5(?), and falls through when s6(?) == s5(?).
  The `beq` branch at 0xd823310 targets 0xd82334c and is always taken.
  The `blez` branch at 0xd823318 targets 0xd82334c, is taken when s7(=a2) <= 0 (signed), and falls through when s7(=a2) > 0 (signed).
  The `bne` branch at 0xd823344 targets 0xd823324, is taken when s3(?) != s7(=a2), and falls through when s3(?) == s7(=a2).
  The `bne` branch at 0xd823368 targets 0xd8232e4, is taken when t6(?) != t3(=a3), and falls through when t6(?) == t3(=a3).
  The `bne` branch at 0xd82338c targets 0xd8232c0, is taken when t7(?) != t6(?), and falls through when t7(?) == t6(?).
  The `beql` branch at 0xd82339c targets 0xd8233fc, is taken when t3(?) == 0, and falls through when t3(?) != 0; its branch-likely delay slot `lw v0,276(sp)` at 0xd8233a0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8233a4 targets 0xd8233f8, is taken when t5(?) == 0, and falls through when t5(?) != 0.
  The `beql` branch at 0xd823400 targets 0xd82343c, is taken when v0(?) == 0, and falls through when v0(?) != 0; its branch-likely delay slot `lw ra,76(sp)` at 0xd823404 runs only when taken and is annulled on fall-through.
  The return at 0xd823460 has v0 = ?.
  The instructions from 0xd822fec to 0xd822fec are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8232b0 to 0xd8232b0 are not reached by any path from the entry, and their branches are not listed.
- `__glXFillImage` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd823468 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd823468-0xd8238b8 (1104 bytes).
  It occupies 1104 bytes.
  The `lw` at 0xd823498 loads 4 bytes from a0 (arg0 at entry) +0x88.
  The `lw` at 0xd82349c loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `lw` at 0xd8234a0 loads 4 bytes from a0 (arg0 at entry) +0x98.
  The `lw` at 0xd8234a4 loads 4 bytes from a0 (arg0 at entry) +0x8c.
  The `lbu` at 0xd8234ac loads 1 byte from a0 (arg0 at entry) +0x78.
  The `lw` at 0xd8234bc loads 4 bytes from a0 (arg0 at entry) +0x9c.
  5 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xd8236f0, `lbu` at 0xd82371c, `lbu` at 0xd82372c.
  9 such `sb` accesses store 1 byte to ?, including `sb` at 0xd823704, `sb` at 0xd823728, `sb` at 0xd823738.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd823890, `sw` at 0xd823894, `sw` at 0xd823898.
  The `jalr` at 0xd8234e4 calls FillBitmap [0xd8238b8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd82352c calls ElementsPerGroup [0xd820be4] with a0=a3 at entry (arg3), a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd823568 calls BytesPerElement [0xd820af0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd823650 calls malloc with a0=?, a1=?, a2=ret(BytesPerElement), a3=?.
  The `jalr` at 0xd8237a0 calls memcpy with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8237e4 calls memcpy with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd823850 calls UnpackSubsampledImage [0xd83b750] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1.
  The `jalr` at 0xd823864 calls XFree with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0xd8234c4 targets 0xd8234f4, is taken when t7(?) != at(=0x1a00), and falls through when t7(?) == at(=0x1a00).
  The `beq` branch at 0xd8234ec targets 0xd823870 and is always taken.
  The `beq` branch at 0xd8234fc targets 0xd82350c, is taken when t7(=[a0+156]) == at(=0x85a3), and falls through when t7(=[a0+156]) != at(=0x85a3).
  The `bne` branch at 0xd823504 targets 0xd823514, is taken when t7(=[a0+156]) != at(=0x85a4), and falls through when t7(=[a0+156]) == at(=0x85a4).
  The `beq` branch at 0xd82350c targets 0xd823544 and is always taken.
  The `blez` branch at 0xd823544 targets 0xd823554, is taken when s1(=[a0+124]) <= 0 (signed), and falls through when s1(=[a0+124]) > 0 (signed).
  The `beq` branch at 0xd82354c targets 0xd823558 and is always taken.
  The `bne` branch at 0xd823594 targets 0xd8235a0, is taken when v0(=ret(BytesPerElement)) != at(=0x1), and falls through when v0(=ret(BytesPerElement)) == at(=0x1).
  The `bne` branch at 0xd8235bc targets 0xd8235c8, is taken when t1(=[a0+152]) != 0, and falls through when t1(=[a0+152]) == 0.
  The `bne` branch at 0xd8235cc targets 0xd8235e0, is taken when t1(=[a0+152]) != at(=-0x1), and falls through when t1(=[a0+152]) == at(=-0x1).
  The `bne` branch at 0xd8235d4 targets 0xd8235e0, is taken when v0(?) != at(=0xffffffff80000000), and falls through when v0(?) == at(=0xffffffff80000000).
  The `beq` branch at 0xd8235e0 targets 0xd8235ec, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beql` branch at 0xd823610 targets 0xd823680, is taken when t9(?) == 0, and falls through when t9(?) != 0; its branch-likely delay slot `lw t6,136(sp)` at 0xd823614 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd823688 targets 0xd8236a4, is taken when t6(?) == 0, and falls through when t6(?) != 0.
  The `beq` branch at 0xd823694 targets 0xd8236a4, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0xd82369c targets 0xd8236a4 and is always taken.
  The `beq` branch at 0xd8236b4 targets 0xd823774, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `blez` branch at 0xd8236bc targets 0xd82380c, is taken when s2(=a2) <= 0 (signed), and falls through when s2(=a2) > 0 (signed).
  The `blez` branch at 0xd8236c8 targets 0xd823760, is taken when t5(?) <= 0 (signed), and falls through when t5(?) > 0 (signed).
  The `blez` branch at 0xd8236d0 targets 0xd823750, is taken when a2(=ret(BytesPerElement)) <= 0 (signed), and falls through when a2(=ret(BytesPerElement)) > 0 (signed).
  The `beq` branch at 0xd8236dc targets 0xd823710, is taken when (a2(=ret(BytesPerElement)) & 0x3) == 0, and falls through when (a2(=ret(BytesPerElement)) & 0x3) != 0.
  The `bne` branch at 0xd823700 targets 0xd8236f0, is taken when a1(?) != a0(?), and falls through when a1(?) == a0(?).
  The `beq` branch at 0xd82370c targets 0xd823750, is taken when t8(=ret(BytesPerElement)+1) == a0(?), and falls through when t8(=ret(BytesPerElement)+1) != a0(?).
  The `bne` branch at 0xd823748 targets 0xd82371c, is taken when t6(=ret(BytesPerElement)+1) != a0(?), and falls through when t6(=ret(BytesPerElement)+1) == a0(?).
  The `bne` branch at 0xd823758 targets 0xd8236d0, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `bne` branch at 0xd823764 targets 0xd8236c4, is taken when t2(?) != s2(=a2), and falls through when t2(?) == s2(=a2).
  The `beq` branch at 0xd82376c targets 0xd823810 and is always taken.
  The `bne` branch at 0xd82377c targets 0xd8237b0, is taken when t4(?) != v1(?), and falls through when t4(?) == v1(?).
  The `beq` branch at 0xd8237a8 targets 0xd82380c and is always taken.
  The `blezl` branch at 0xd8237c0 targets 0xd823810, is taken when s2(=a2) <= 0 (signed), and falls through when s2(=a2) > 0 (signed); its branch-likely delay slot `lw t7,136(sp)` at 0xd8237c4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd823804 targets 0xd8237cc, is taken when t2(?) != s2(=a2), and falls through when t2(?) == s2(=a2).
  The `beql` branch at 0xd823814 targets 0xd823874, is taken when t7(?) == 0, and falls through when t7(?) != 0; its branch-likely delay slot `lw v0,188(sp)` at 0xd823818 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82381c targets 0xd823870, is taken when t6(?) == 0, and falls through when t6(?) != 0.
  The `beql` branch at 0xd823874 targets 0xd8238a4, is taken when v0(?) == 0, and falls through when v0(?) != 0; its branch-likely delay slot `lw ra,52(sp)` at 0xd823878 runs only when taken and is annulled on fall-through.
  The return at 0xd8238b0 has v0 = ?.
- `FillBitmap` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8238b8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8238b8-0xd8240f8 (2112 bytes).
  It occupies 2112 bytes.
  The `lw` at 0xd8238dc loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `lw` at 0xd8238e4 loads 4 bytes from a0 (arg0 at entry) +0x98.
  The `lw` at 0xd8238e8 loads 4 bytes from a0 (arg0 at entry) +0x8c.
  The `lw` at 0xd8238ec loads 4 bytes from a0 (arg0 at entry) +0x88.
  The `lbu` at 0xd8238f4 loads 1 byte from a0 (arg0 at entry) +0x79.
  7 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xd8239fc, `lbu` at 0xd823a00, `lbu` at 0xd823a34.
  4 such `lbu` accesses load 1 byte from table(0xd841de0) +0x0, including `lbu` at 0xd823a0c, `lbu` at 0xd823a14, `lbu` at 0xd823a94.
  5 such `sb` accesses store 1 byte to ?, including `sb` at 0xd823a5c, `sb` at 0xd823aa4, `sb` at 0xd823abc.
  The `jalr` at 0xd823920 calls ElementsPerGroup [0xd820be4] with a0=a3 at entry (arg3), a1=0x1a00, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `blez` branch at 0xd8238f0 targets 0xd823900, is taken when v0(=[a0+124]) <= 0 (signed), and falls through when v0(=[a0+124]) > 0 (signed).
  The `beq` branch at 0xd8238f8 targets 0xd823904 and is always taken.
  The `bne` branch at 0xd823958 targets 0xd823964, is taken when t0(=[a0+152]) != 0, and falls through when t0(=[a0+152]) == 0.
  The `bne` branch at 0xd823968 targets 0xd82397c, is taken when t0(=[a0+152]) != at(=-0x1), and falls through when t0(=[a0+152]) == at(=-0x1).
  The `bne` branch at 0xd823970 targets 0xd82397c, is taken when v1(?) != at(=0xffffffff80000000), and falls through when v1(?) == at(=0xffffffff80000000).
  The `beq` branch at 0xd823980 targets 0xd82398c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `blez` branch at 0xd8239b0 targets 0xd823aec, is taken when s1(=a2) <= 0 (signed), and falls through when s1(=a2) > 0 (signed).
  The `bne` branch at 0xd8239ec targets 0xd823a68, is taken when t5(?) < 0x8 (signed), and falls through when t5(?) >= 0x8 (signed).
  The `beq` branch at 0xd8239f4 targets 0xd823a34, is taken when t2(=[a0+121]:1) == 0, and falls through when t2(=[a0+121]:1) != 0.
  The `beq` branch at 0xd823a2c targets 0xd823a58 and is always taken.
  The `beq` branch at 0xd823a60 targets 0xd8239f4, is taken when a2(?) >= 0x8 (signed), and falls through when a2(?) < 0x8 (signed).
  The `beq` branch at 0xd823a68 targets 0xd823ae0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0xd823a80 targets 0xd823ac0, is taken when t2(=[a0+121]:1) == 0, and falls through when t2(=[a0+121]:1) != 0.
  The `beq` branch at 0xd823ab8 targets 0xd823adc and is always taken.
  The `bne` branch at 0xd823ae0 targets 0xd8239e0, is taken when t4(?) != s1(=a2), and falls through when t4(?) == s1(=a2).
  The return at 0xd823af8 has v0 = ret(ElementsPerGroup).
  The instructions from 0xd823b00 to 0xd8240f4 are not reached by any path from the entry, and their branches are not listed.
- `__glXEndDispatchOverride` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd823ecc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd823ecc-0xd823f80 (180 bytes).
  It occupies 180 bytes.
  The `lw` at 0xd823ee8 loads 4 bytes from abs 0x1048.
  The `lw` at 0xd823ef4 loads 4 bytes from abs 0x1014.
  The `sw` at 0xd823ef8 stores 4 bytes to abs 0x1048.
  The `lw` at 0xd823f04 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd823f08 loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lw` at 0xd823f14 loads 4 bytes from [[0x1014]+276] +0xc8.
  The `lw` at 0xd823f18 loads 4 bytes from [[[0x1014]+276]+200] +0x94.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd823f44, `lw` at 0xd823f54, `lw` at 0xd823f5c.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd823f50, `sw` at 0xd823f58, `sw` at 0xd823f64.
  The `jalr` at 0xd823f1c calls (unknown callee) with a0=[[[0x1014]+276]+200], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd823f2c calls __glXDispatchExec with a0=?, a1=?, a2=?, a3=?.
  The `beql` branch at 0xd823eec targets 0xd823f74, is taken when t6(=[0x1048]) == 0, and falls through when t6(=[0x1048]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd823ef0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd823efc targets 0xd823f28, is taken when v0(=[0x1014]) == 0, and falls through when v0(=[0x1014]) != 0.
  The `beq` branch at 0xd823f0c targets 0xd823f28, is taken when t7(=[[[0x1014]+276]+196]) == 0, and falls through when t7(=[[[0x1014]+276]+196]) != 0.
  The `bne` branch at 0xd823f60 targets 0xd823f44, is taken when t2(?) != t3(=ret(__glXDispatchExec)+1884), and falls through when t2(?) == t3(=ret(__glXDispatchExec)+1884).
  The return at 0xd823f78 has v0 = one of ?, ret(__glXDispatchExec).
- `__glXBeginDispatchOverride` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd823f80 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd823f80-0xd824030 (176 bytes).
  It occupies 176 bytes.
  The `lw` at 0xd823f9c loads 4 bytes from abs 0x1048.
  The `lw` at 0xd823fac loads 4 bytes from abs 0x1014.
  The `sw` at 0xd823fb0 stores 4 bytes to abs 0x1048.
  The `lw` at 0xd823fbc loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd823fc0 loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lw` at 0xd823fcc loads 4 bytes from [[0x1014]+276] +0xc8.
  The `lw` at 0xd823fd4 loads 4 bytes from [[[0x1014]+276]+200] +0x90.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd823ff4, `lw` at 0xd824004, `lw` at 0xd82400c.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd824000, `sw` at 0xd824008, `sw` at 0xd824014.
  The `jalr` at 0xd823fd8 calls (unknown callee) with a0=[[[0x1014]+276]+200], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bnel` branch at 0xd823fa4 targets 0xd824024, is taken when t6(=[0x1048]) != 0, and falls through when t6(=[0x1048]) == 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd823fa8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd823fb4 targets 0xd823fec, is taken when v0(=[0x1014]) == 0, and falls through when v0(=[0x1014]) != 0; its branch-likely delay slot `addiu t8,zero,4176` at 0xd823fb8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd823fc4 targets 0xd823fec, is taken when t7(=[[[0x1014]+276]+196]) == 0, and falls through when t7(=[[[0x1014]+276]+196]) != 0; its branch-likely delay slot `addiu t8,zero,4176` at 0xd823fc8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd824010 targets 0xd823ff4, is taken when t2(?) != t3(=a0+1884), and falls through when t2(?) == t3(=a0+1884).
  The return at 0xd824028 has v0 = ?.
- `__glXDispatchExec` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd824030 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd824030-0xd8240bc (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xd82403c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd824050 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd824054 loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lw` at 0xd82405c loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd824060 loads 4 bytes from [[0x1014]+276] +0xc8.
  The `lw` at 0xd824064 loads 4 bytes from [[[0x1014]+276]+200] +0x8c.
  The `lbu` at 0xd824084 loads 1 byte from [[0x1014]+276] +0x124.
  The `jalr` at 0xd824068 calls (unknown callee) with a0=[[[0x1014]+276]+200], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd824048 targets 0xd8240a8, is taken when v1(=[0x1014]) == 0, and falls through when v1(=[0x1014]) != 0.
  The `beql` branch at 0xd824058 targets 0xd82407c, is taken when t6(=[[[0x1014]+276]+196]) == 0, and falls through when t6(=[[[0x1014]+276]+196]) != 0; its branch-likely delay slot `lw t7,216(v0)` at 0xd82405c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd824070 targets 0xd8240ac and is always taken.
  The `beq` branch at 0xd82407c targets 0xd8240a0, is taken when t7(=[[[0x1014]+276]+216]) == 0, and falls through when t7(=[[[0x1014]+276]+216]) != 0.
  The `beq` branch at 0xd824088 targets 0xd824098, is taken when t8(=[[[0x1014]+276]+292]:1) == 0, and falls through when t8(=[[[0x1014]+276]+292]:1) != 0.
  The `beq` branch at 0xd824090 targets 0xd8240ac and is always taken.
  The `beq` branch at 0xd824098 targets 0xd8240ac and is always taken.
  The `beq` branch at 0xd8240a0 targets 0xd8240ac and is always taken.
  The return at 0xd8240b4 has v0 = one of ret(?), sym(__glx_dispatch), sym(__glx_interopDispatch), sym(__glx_nopDispatch).
  The instructions from 0xd824078 to 0xd824078 are not reached by any path from the entry, and their branches are not listed.
- `glXGetCurrentReadDrawableSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8240bc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8240bc-0xd8240f8 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xd8240dc loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8240e8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8240ec loads 4 bytes from [[0x1014]+276] +0xdc.
  The `jalr` at 0xd8240d4 calls __glXInitThread with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd8240f0 has v0 = [[[0x1014]+276]+220].
- `__glXRestoreCurrent` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8240f8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8240f8-0xd824394 (668 bytes).
  It occupies 668 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014, including `lw` at 0xd824128, `lw` at 0xd824280.
  2 such `sw` accesses store 4 bytes to [0x1014] +0x114, including `sw` at 0xd824138, `sw` at 0xd824288.
  The `lw` at 0xd82413c loads 4 bytes from a1 (arg1 at entry) +0xc4.
  The `lw` at 0xd824148 loads 4 bytes from a1 (arg1 at entry) +0x3c.
  The `lw` at 0xd82414c loads 4 bytes from a1 (arg1 at entry) +0xc8.
  The `lw` at 0xd824150 loads 4 bytes from [a1+200] +0x64.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xe4, including `lw` at 0xd82415c, `lw` at 0xd8241e4.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xe8, including `lw` at 0xd824160, `lw` at 0xd8241f4.
  The `lw` at 0xd824190 loads 4 bytes from [a1+200] +0x60.
  The `lw` at 0xd8241c0 loads 4 bytes from a1 (arg1 at entry) +0xdc.
  The `lw` at 0xd8241c4 loads 4 bytes from a1 (arg1 at entry) +0xe0.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xd8, including `lw` at 0xd8241d8, `lw` at 0xd82423c.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x3c, including `sw` at 0xd824228, `sw` at 0xd824268.
  The `sw` at 0xd82428c stores 4 bytes to a1 (arg1 at entry) +0xd8.
  The `sw` at 0xd824290 stores 4 bytes to a1 (arg1 at entry) +0xe0.
  The `sw` at 0xd824294 stores 4 bytes to a1 (arg1 at entry) +0xdc.
  The `sw` at 0xd824298 stores 4 bytes to a1 (arg1 at entry) +0xe4.
  The `sw` at 0xd82429c stores 4 bytes to a1 (arg1 at entry) +0xe8.
  The `sw` at 0xd8242a0 stores 4 bytes to a1 (arg1 at entry) +0xd0.
  The `sw` at 0xd8242a4 stores 4 bytes to a1 (arg1 at entry) +0xd4.
  The `lw` at 0xd8242a8 loads 4 bytes from abs 0x1048.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd8242c0, `lw` at 0xd8242d0, `lw` at 0xd8242d8.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd8242cc, `sw` at 0xd8242d4, `sw` at 0xd8242e0.
  The `sw` at 0xd824300 stores 4 bytes to a0 (arg0 at entry) +0xd8.
  The `sw` at 0xd824308 stores 4 bytes to a0 (arg0 at entry) +0xdc.
  The `sw` at 0xd824310 stores 4 bytes to a0 (arg0 at entry) +0xe0.
  The `sw` at 0xd824318 stores 4 bytes to a0 (arg0 at entry) +0xe8.
  The `sw` at 0xd824320 stores 4 bytes to a0 (arg0 at entry) +0xe4.
  The `sw` at 0xd824328 stores 4 bytes to a0 (arg0 at entry) +0xd4.
  The `sw` at 0xd824330 stores 4 bytes to a0 (arg0 at entry) +0xd0.
  The `jalr` at 0xd82416c calls (unknown callee) with a0=[a1+200], a1=[a1+228]+44, a2=[a1+232]+44, a3=a3 at entry (arg3).
  The `jalr` at 0xd824194 calls (unknown callee) with a0=[a1+200], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd824208 calls __glXSendMakeCurrentRead [0xd824394] with a0=[a1+216], a1=a1 at entry (arg1), a2=[a1+60], a3=sp-40.
  The `jalr` at 0xd824248 calls __glXSendMakeCurrent [0xd810ad4] with a0=[a1+216], a1=a1 at entry (arg1), a2=[a1+60], a3=sp-40.
  The `jalr` at 0xd824348 calls __glXRemoveDrawableInterest with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `jalr` at 0xd824374 calls __glXRemoveDrawableInterest with a0=a3 at entry (arg3), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd824134 targets 0xd8242ec, is taken when a1 == t7(=0xd846640), and falls through when a1 != t7(=0xd846640).
  The `beql` branch at 0xd824144 targets 0xd8241b8, is taken when t8(=[a1+196]) == 0, and falls through when t8(=[a1+196]) != 0; its branch-likely delay slot `lw a2,60(s0)` at 0xd824148 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd824154 targets 0xd82418c, is taken when v0(=[[a1+200]+100]) == 0, and falls through when v0(=[[a1+200]+100]) != 0.
  The `bne` branch at 0xd824178 targets 0xd8241ac, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0.
  The `beq` branch at 0xd824184 targets 0xd824274 and is always taken.
  The `bne` branch at 0xd8241a0 targets 0xd8241ac, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0.
  The `beq` branch at 0xd8241ac targets 0xd824274 and is always taken.
  The `bne` branch at 0xd8241b8 targets 0xd824274, is taken when a2(=[a1+60]) != 0, and falls through when a2(=[a1+60]) == 0.
  The `beq` branch at 0xd8241d0 targets 0xd824238, is taken when v1(=[a1+220]) == v0(=[a1+224]), and falls through when v1(=[a1+220]) != v0(=[a1+224]).
  The `beq` branch at 0xd824214 targets 0xd82422c, is taken when v0(=ret(__glXSendMakeCurrentRead)) == 0, and falls through when v0(=ret(__glXSendMakeCurrentRead)) != 0.
  The `beq` branch at 0xd824224 targets 0xd824274 and is always taken.
  The `beq` branch at 0xd824230 targets 0xd824274 and is always taken.
  The `bne` branch at 0xd824254 targets 0xd82426c, is taken when v0(=ret(__glXSendMakeCurrent)) != 0, and falls through when v0(=ret(__glXSendMakeCurrent)) == 0.
  The `beq` branch at 0xd824264 targets 0xd824274 and is always taken.
  The `beql` branch at 0xd824274 targets 0xd8242f0, is taken when t0(?) == 0, and falls through when t0(?) != 0; its branch-likely delay slot `lw t7,112(sp)` at 0xd824278 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8242ac targets 0xd8242f0, is taken when t9(=[0x1048]) != 0, and falls through when t9(=[0x1048]) == 0; its branch-likely delay slot `lw t7,112(sp)` at 0xd8242b0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8242dc targets 0xd8242c0, is taken when t3(?) != t6(=sym(__glx_nopDispatch)+1884), and falls through when t3(?) == t6(=sym(__glx_nopDispatch)+1884).
  The `beql` branch at 0xd8242f0 targets 0xd824338, is taken when t7(=a0) == 0, and falls through when t7(=a0) != 0; its branch-likely delay slot `lw t5,120(sp)` at 0xd8242f4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8242f8 targets 0xd824338, is taken when t7(=a0) == s0(=a1), and falls through when t7(=a0) != s0(=a1); its branch-likely delay slot `lw t5,120(sp)` at 0xd8242fc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd824338 targets 0xd824358, is taken when t5(=a2) == 0, and falls through when t5(=a2) != 0; its branch-likely delay slot `lw t7,124(sp)` at 0xd82433c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd82435c targets 0xd824384, is taken when t7(=a3) == t8(=a2), and falls through when t7(=a3) != t8(=a2); its branch-likely delay slot `lw ra,52(sp)` at 0xd824360 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd824364 targets 0xd824384, is taken when t7(=a3) == 0, and falls through when t7(=a3) != 0; its branch-likely delay slot `lw ra,52(sp)` at 0xd824368 runs only when taken and is annulled on fall-through.
  The return at 0xd82438c has v0 = one of ?, ret(__glXRemoveDrawableInterest).
  The instructions from 0xd8241b4 to 0xd8241b4 are not reached by any path from the entry, and their branches are not listed.
- `videoPackingToInternalFormat` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd824d30 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd824d30-0xd825264 (1332 bytes).
  It occupies 1332 bytes.
  The `lw` at 0xd824d98 loads 4 bytes from (a0-1 << 0x2) +0xd841c6c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd824da0).
  The `bne` branch at 0xd824d40 targets 0xd824d60, is taken when a0 < 0x1001 (signed), and falls through when a0 >= 0x1001 (signed).
  The `beq` branch at 0xd824d48 targets 0xd824dd8, is taken when a0 == at(=0x1001), and falls through when a0 != at(=0x1001).
  The `beq` branch at 0xd824d50 targets 0xd824de0, is taken when a0 == at(=0x1002), and falls through when a0 != at(=0x1002).
  The `beq` branch at 0xd824d58 targets 0xd824dec and is always taken.
  The `bne` branch at 0xd824d64 targets 0xd824d80, is taken when a0 < 0x19 (signed), and falls through when a0 >= 0x19 (signed).
  The `beq` branch at 0xd824d70 targets 0xd824dd0, is taken when a0 == at(=0x1000), and falls through when a0 != at(=0x1000).
  The `beq` branch at 0xd824d78 targets 0xd824dec and is always taken.
  The `beql` branch at 0xd824d84 targets 0xd824dec, is taken when t6(=a0-1) >= 0x18 (unsigned), and falls through when t6(=a0-1) < 0x18 (unsigned); its branch-likely delay slot `or v0,zero,zero` at 0xd824d88 runs only when taken and is annulled on fall-through.
  The return at 0xd824dd0 has v0 = 0x8050.
  The return at 0xd824dd8 has v0 = 0x8056.
  The return at 0xd824de0 has v0 = 0x8058.
  The return at 0xd824dec has v0 = 0x0.
  The instructions from 0xd824da8 to 0xd824dcc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd824de8 to 0xd824de8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd824df4 to 0xd825260 are not reached by any path from the entry, and their branches are not listed.
- `__glXCreateVideoSourcePrivate` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd824df4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd824df4-0xd824e5c (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xd824e0c loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `sw` at 0xd824e40 stores 4 bytes to a0 (arg0 at entry) +0x1c.
  The `sw` at 0xd824e44 stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `jalr` at 0xd824e28 calls calloc with a0=0x1, a1=0x18, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `bnel` branch at 0xd824e14 targets 0xd824e4c, is taken when v1(=[a0+28]) != 0, and falls through when v1(=[a0+28]) == 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd824e18 runs only when taken and is annulled on fall-through.
  The return at 0xd824e54 has v0 = one of [a0+28], ret(calloc).
- `__glXDestroyVideoSourcePrivate` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd824e5c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd824e5c-0xd824eb8 (92 bytes).
  It occupies 92 bytes.
  The `lw` at 0xd824e74 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x1c, including `sw` at 0xd824e80, `sw` at 0xd824ea0.
  The `sw` at 0xd824ea4 stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `jalr` at 0xd824e90 calls free with a0=[a0+28], a1=a0 at entry (arg0), a2=[a0+28], a3=a3 at entry (arg3).
  The `beql` branch at 0xd824e7c targets 0xd824ea4, is taken when a2(=[a0+28]) == 0, and falls through when a2(=[a0+28]) != 0; its branch-likely delay slot `sw zero,28(a1)` at 0xd824e80 runs only when taken and is annulled on fall-through.
  The return at 0xd824eb0 has v0 = one of ?, ret(free).
- `__glXInitializeVideoLibrary` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd824eb8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd824eb8-0xd824f58 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xd824ed4 loads 4 bytes from abs 0xd846780.
  The `sw` at 0xd824f0c stores 4 bytes to abs 0xd846780.
  The `sw` at 0xd824f38 stores 4 bytes to abs 0xd846784.
  The `jalr` at 0xd824ef0 calls dlopen with a0=0xd841c50, a1=0x2, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd824f20 calls dlsym with a0=ret(dlopen), a1=0xd841c5c, a2=?, a3=?.
  The `bnel` branch at 0xd824edc targets 0xd824f48, is taken when t6(=[0xd846780]) != 0, and falls through when t6(=[0xd846780]) == 0; its branch-likely delay slot `addiu v0,zero,1` at 0xd824ee0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd824f08 targets 0xd824f18, is taken when v0(=ret(dlopen)) != 0, and falls through when v0(=ret(dlopen)) == 0.
  The `beq` branch at 0xd824f10 targets 0xd824f48 and is always taken.
  The `bne` branch at 0xd824f34 targets 0xd824f44, is taken when v0(=ret(dlsym)) != 0, and falls through when v0(=ret(dlsym)) == 0.
  The `beq` branch at 0xd824f3c targets 0xd824f48 and is always taken.
  The return at 0xd824f50 has v0 = one of 0x0, 0x1.
- `__glXBufFree` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82512c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82512c-0xd825174 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xd825150 loads 4 bytes from a0 (arg0 at entry) -0x8.
  The `jalr` at 0xd825158 calls munmap with a0=a0-8, a1=[a0-8]+8, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xd825144 targets 0xd825164, is taken when a0 == 0, and falls through when a0 != 0.
  The return at 0xd82516c has v0 = one of ?, ret(munmap).
- `glXQueryContextInfoEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd825174 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd825174-0xd825264 (240 bytes).
  It occupies 240 bytes.
  The `lw` at 0xd82518c loads 4 bytes from a1 (arg1 at entry) +0xc4.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x2c, including `lw` at 0xd825198, `lw` at 0xd82521c.
  The `lw` at 0xd825204 loads 4 bytes from a1 (arg1 at entry) +0x38.
  The `lw` at 0xd825210 loads 4 bytes from a1 (arg1 at entry) +0x18.
  5 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0xd825218, `sw` at 0xd825224, `sw` at 0xd825230.
  The `lw` at 0xd825228 loads 4 bytes from a1 (arg1 at entry) +0x20.
  The `lw` at 0xd825234 loads 4 bytes from a1 (arg1 at entry) +0x30.
  The `jalr` at 0xd8251b4 calls __glXQueryContextInfo [0xd825264] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bnel` branch at 0xd825190 targets 0xd8251dc, is taken when t6(=[a1+196]) != 0, and falls through when t6(=[a1+196]) == 0; its branch-likely delay slot `ori at,zero,0x800a` at 0xd825194 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd82519c targets 0xd8251dc, is taken when t7(=[a1+44]) != 0, and falls through when t7(=[a1+44]) == 0; its branch-likely delay slot `ori at,zero,0x800a` at 0xd8251a0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8251c8 targets 0xd8251d8, is taken when v0(=ret(__glXQueryContextInfo)) == 0, and falls through when v0(=ret(__glXQueryContextInfo)) != 0.
  The `beq` branch at 0xd8251d0 targets 0xd825258 and is always taken.
  The `beq` branch at 0xd8251dc targets 0xd825210, is taken when a2 == at(=0x800a), and falls through when a2 != at(=0x800a).
  The `beq` branch at 0xd8251e8 targets 0xd82521c, is taken when a2 == at(=0x800b), and falls through when a2 != at(=0x800b).
  The `beq` branch at 0xd8251f0 targets 0xd825228, is taken when a2 == at(=0x800c), and falls through when a2 != at(=0x800c).
  The `beq` branch at 0xd8251f8 targets 0xd825234, is taken when a2 == at(=0x8013), and falls through when a2 != at(=0x8013).
  The `beql` branch at 0xd825200 targets 0xd825244, is taken when a2 == at(=0x8030), and falls through when a2 != at(=0x8030); its branch-likely delay slot `lw t2,56(a1)` at 0xd825204 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd825208 targets 0xd825254 and is always taken.
  The `beq` branch at 0xd825214 targets 0xd825254 and is always taken.
  The `beq` branch at 0xd825220 targets 0xd825254 and is always taken.
  The `beq` branch at 0xd82522c targets 0xd825254 and is always taken.
  The `beq` branch at 0xd825238 targets 0xd825254 and is always taken.
  The `beq` branch at 0xd825244 targets 0xd825254 and is always taken.
  The return at 0xd82525c has v0 = one of ret(__glXQueryContextInfo), 0x0, 0x2.
  The instructions from 0xd825240 to 0xd825240 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd82524c to 0xd825250 are not reached by any path from the entry, and their branches are not listed.
- `__glXQueryContextInfo` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd825264 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd825264-0xd8259cc (1896 bytes).
  It occupies 1896 bytes.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8252bc, `lw` at 0xd825384, `lw` at 0xd8253d4.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8252c4, `lw` at 0xd8252dc, `lw` at 0xd825308.
  The `lw` at 0xd8252c8 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd8252e0 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd8252f0, `sw` at 0xd82530c.
  The `sh` at 0xd825318 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd82531c, `sb` at 0xd82534c.
  The `lw` at 0xd825320 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd825334 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd825338 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd825344 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd825348 stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd825350 loads 4 bytes from a1 (arg1 at entry) +0x14.
  The `sw` at 0xd82535c stores 4 bytes to [a0+108] +0xc.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd82538c, `lw` at 0xd8253a4, `lw` at 0xd8253dc.
  4 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd825390, `lw` at 0xd8253e0, `lw` at 0xd82544c.
  The `lw` at 0xd8254bc loads 4 bytes from ret(malloc) +0x0.
  4 such `lw` accesses load 4 bytes from ret(malloc) +0x4, including `lw` at 0xd8254e8, `lw` at 0xd8254f4, `lw` at 0xd825504.
  3 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x18, including `sw` at 0xd825500, `sw` at 0xd825584, `sw` at 0xd8255f0.
  3 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x2c, including `sw` at 0xd825510, `sw` at 0xd825594, `sw` at 0xd825600.
  3 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x20, including `sw` at 0xd825520, `sw` at 0xd8255a4, `sw` at 0xd825610.
  3 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x30, including `sw` at 0xd82552c, `sw` at 0xd8255b0, `sw` at 0xd82561c.
  11 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd825544, `lw` at 0xd825554, `lw` at 0xd82555c.
  The `jalr` at 0xd8252a0 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8252d0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8252fc calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd82536c calls _XReply with a0=a0 at entry (arg0), a1=sp-40, a2=0x0, a3=0x0.
  The `jalr` at 0xd825398 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8253b4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8253e8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd825404 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd825424 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd825454 calls (unknown callee) with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd825470 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd825490 calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd825630 calls free with a0=ret(malloc), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd825650 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd82566c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0xd825288 targets 0xd825298, is taken when a1 != 0, and falls through when a1 == 0.
  The `beq` branch at 0xd825290 targets 0xd82567c and is always taken.
  The `bne` branch at 0xd8252ac targets 0xd8252bc, is taken when v0(=ret(__glXSetupForCommand)) != 0, and falls through when v0(=ret(__glXSetupForCommand)) == 0.
  The `beq` branch at 0xd8252b4 targets 0xd82567c and is always taken.
  The `beql` branch at 0xd8252c0 targets 0xd8252e0, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s1)` at 0xd8252c4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8252ec targets 0xd825310, is taken when t6(=[a0+112]) >= t7(=[a0+108]+16) (unsigned), and falls through when t6(=[a0+112]) < t7(=[a0+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s1)` at 0xd8252f0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd82537c targets 0xd8253c8, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beql` branch at 0xd825388 targets 0xd8253a8, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s1)` at 0xd82538c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8253ac targets 0xd8253c0, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd8253c0 targets 0xd82567c and is always taken.
  The `bne` branch at 0xd8253cc targets 0xd825418, is taken when v1(?) < 0x4 (signed), and falls through when v1(?) >= 0x4 (signed).
  The `beql` branch at 0xd8253d8 targets 0xd8253f8, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s1)` at 0xd8253dc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8253fc targets 0xd825410, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd825410 targets 0xd82567c and is always taken.
  The `bne` branch at 0xd825438 targets 0xd825484, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beql` branch at 0xd825444 targets 0xd825464, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s1)` at 0xd825448 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd825468 targets 0xd82547c, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd82547c targets 0xd82567c and is always taken.
  The `blez` branch at 0xd8254a8 targets 0xd825628, is taken when a3(?) <= 0 (signed), and falls through when a3(?) > 0 (signed).
  The `beql` branch at 0xd8254b4 targets 0xd825538, is taken when (a3(?) & 0x1) == 0, and falls through when (a3(?) & 0x1) != 0; its branch-likely delay slot `ori a2,zero,0x800a` at 0xd8254b8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8254c8 targets 0xd8254f4, is taken when v0(=[ret(malloc)]) == a2(=0x800a), and falls through when v0(=[ret(malloc)]) != a2(=0x800a).
  The `beq` branch at 0xd8254d4 targets 0xd825504, is taken when v0(=[ret(malloc)]) == t1(=0x800b), and falls through when v0(=[ret(malloc)]) != t1(=0x800b).
  The `beq` branch at 0xd8254dc targets 0xd825514, is taken when v0(=[ret(malloc)]) == t2(=0x800c), and falls through when v0(=[ret(malloc)]) != t2(=0x800c).
  The `beql` branch at 0xd8254e4 targets 0xd825528, is taken when v0(=[ret(malloc)]) == t0(=0x8013), and falls through when v0(=[ret(malloc)]) != t0(=0x8013); its branch-likely delay slot `lw t8,0(v1)` at 0xd8254e8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8254ec targets 0xd825530 and is always taken.
  The `beq` branch at 0xd8254fc targets 0xd825530 and is always taken.
  The `beq` branch at 0xd82550c targets 0xd825530 and is always taken.
  The `beq` branch at 0xd82551c targets 0xd825530 and is always taken.
  The `beq` branch at 0xd825530 targets 0xd825628, is taken when a0(=0x1) == a3(?), and falls through when a0(=0x1) != a3(?).
  The `beql` branch at 0xd825550 targets 0xd82557c, is taken when v0(?) == a2(=0x800a), and falls through when v0(?) != a2(=0x800a); its branch-likely delay slot `lw t3,0(v1)` at 0xd825554 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd825558 targets 0xd82558c, is taken when v0(?) == t1(=0x800b), and falls through when v0(?) != t1(=0x800b); its branch-likely delay slot `lw t4,0(v1)` at 0xd82555c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd825560 targets 0xd82559c, is taken when v0(?) == t2(=0x800c), and falls through when v0(?) != t2(=0x800c); its branch-likely delay slot `lw t9,0(v1)` at 0xd825564 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd825568 targets 0xd8255ac, is taken when v0(?) == t0(=0x8013), and falls through when v0(?) != t0(=0x8013); its branch-likely delay slot `lw t5,0(v1)` at 0xd82556c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd825570 targets 0xd8255b4 and is always taken.
  The `beq` branch at 0xd825580 targets 0xd8255b4 and is always taken.
  The `beq` branch at 0xd825590 targets 0xd8255b4 and is always taken.
  The `beq` branch at 0xd8255a0 targets 0xd8255b4 and is always taken.
  The `beql` branch at 0xd8255bc targets 0xd8255e8, is taken when v0(?) == a2(=0x800a), and falls through when v0(?) != a2(=0x800a); its branch-likely delay slot `lw t6,0(v1)` at 0xd8255c0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8255c4 targets 0xd8255f8, is taken when v0(?) == t1(=0x800b), and falls through when v0(?) != t1(=0x800b); its branch-likely delay slot `lw t7,0(v1)` at 0xd8255c8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8255cc targets 0xd825608, is taken when v0(?) == t2(=0x800c), and falls through when v0(?) != t2(=0x800c); its branch-likely delay slot `lw t8,0(v1)` at 0xd8255d0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8255d4 targets 0xd825618, is taken when v0(?) == t0(=0x8013), and falls through when v0(?) != t0(=0x8013); its branch-likely delay slot `lw t3,0(v1)` at 0xd8255d8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8255dc targets 0xd825620 and is always taken.
  The `beq` branch at 0xd8255ec targets 0xd825620 and is always taken.
  The `beq` branch at 0xd8255fc targets 0xd825620 and is always taken.
  The `beq` branch at 0xd82560c targets 0xd825620 and is always taken.
  The `bnel` branch at 0xd825620 targets 0xd825548, is taken when a0(?) != a3(?), and falls through when a0(?) == a3(?); its branch-likely delay slot `lw v0,0(v1)` at 0xd825624 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd825640 targets 0xd825660, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s1)` at 0xd825644 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd825664 targets 0xd82567c, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `or v0,zero,zero` at 0xd825668 runs only when taken and is annulled on fall-through.
  The return at 0xd825688 has v0 = one of 0x0, 0x5.
  The instructions from 0xd825524 to 0xd825524 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd825578 to 0xd825578 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd825588 to 0xd825588 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd825598 to 0xd825598 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8255a8 to 0xd8255a8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8255e4 to 0xd8255e4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8255f4 to 0xd8255f4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd825604 to 0xd825604 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd825614 to 0xd825614 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd825690 to 0xd8259c8 are not reached by any path from the entry, and their branches are not listed.
- `glXGetCurrentDisplayEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd825690 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd825690-0xd8256c4 (52 bytes).
  It occupies 52 bytes.
  The `jalr` at 0xd8256a8 calls glXGetCurrentDisplay with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd8256bc has v0 = ret(glXGetCurrentDisplay).
- `glXQueryServerString` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8256c4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8256c4-0xd825824 (352 bytes).
  It occupies 352 bytes.
  The `lw` at 0xd825718 loads 4 bytes from a0 (arg0 at entry) +0x88.
  The `lw` at 0xd825724 loads 4 bytes from ret(__glXInitialize) +0x20.
  The `lw` at 0xd825740 loads 4 bytes from ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0x4.
  2 such `lw` accesses load 4 bytes from ret(__glXInitialize) +0x18, including `lw` at 0xd825774, `lw` at 0xd8257a4.
  3 such `lw` accesses load 4 bytes from ret(__glXInitialize) +0x4, including `lw` at 0xd825784, `lw` at 0xd8257b8, `lw` at 0xd8257ec.
  The `sw` at 0xd82579c stores 4 bytes to ret(__glXInitialize) +0x18.
  2 such `lw` accesses load 4 bytes from ret(__glXInitialize) +0x1c, including `lw` at 0xd8257a8, `lw` at 0xd8257d8.
  The `sw` at 0xd8257d0 stores 4 bytes to ret(__glXInitialize) +0x1c.
  The `lw` at 0xd8257dc loads 4 bytes from ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0x14.
  The `sw` at 0xd825808 stores 4 bytes to ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0x14.
  The `jalr` at 0xd8256e8 calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd82578c calls __glXQueryServerString with a0=a0 at entry (arg0), a1=[ret(__glXInitialize)+4], a2=a1 at entry (arg1), a3=0x1.
  The `jalr` at 0xd8257c0 calls __glXQueryServerString with a0=a0 at entry (arg0), a1=[ret(__glXInitialize)+4], a2=a1 at entry (arg1), a3=0x2.
  The `jalr` at 0xd8257f4 calls __glXQueryServerString with a0=a0 at entry (arg0), a1=[ret(__glXInitialize)+4], a2=a1 at entry (arg1), a3=0x3.
  The `bne` branch at 0xd825700 targets 0xd825710, is taken when v0(=ret(__glXInitialize)) != 0, and falls through when v0(=ret(__glXInitialize)) == 0.
  The `beq` branch at 0xd825708 targets 0xd825814 and is always taken.
  The `bltz` branch at 0xd825710 targets 0xd825728, is taken when a2(=a1) < 0 (signed), and falls through when a2(=a1) >= 0 (signed).
  The `bnel` branch at 0xd825720 targets 0xd825734, is taken when a2(=a1) < t6(=[a0+136]) (signed), and falls through when a2(=a1) >= t6(=[a0+136]) (signed); its branch-likely delay slot `lw t7,32(v0)` at 0xd825724 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd825728 targets 0xd825814 and is always taken.
  The `bne` branch at 0xd825744 targets 0xd825754, is taken when v1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+4]) != 0, and falls through when v1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+4]) == 0.
  The `beq` branch at 0xd82574c targets 0xd825814 and is always taken.
  The `beq` branch at 0xd825754 targets 0xd825774, is taken when a3(=a2) == at(=0x1), and falls through when a3(=a2) != at(=0x1).
  The `beq` branch at 0xd82575c targets 0xd8257a8, is taken when a3(=a2) == at(=0x2), and falls through when a3(=a2) != at(=0x2).
  The `beq` branch at 0xd825764 targets 0xd8257dc, is taken when a3(=a2) == at(=0x3), and falls through when a3(=a2) != at(=0x3).
  The `beq` branch at 0xd82576c targets 0xd825814 and is always taken.
  The `bne` branch at 0xd825778 targets 0xd8257a0, is taken when t9(=[ret(__glXInitialize)+24]) != 0, and falls through when t9(=[ret(__glXInitialize)+24]) == 0.
  The `beq` branch at 0xd8257a0 targets 0xd825814 and is always taken.
  The `bne` branch at 0xd8257ac targets 0xd8257d4, is taken when t2(=[ret(__glXInitialize)+28]) != 0, and falls through when t2(=[ret(__glXInitialize)+28]) == 0.
  The `beq` branch at 0xd8257d4 targets 0xd825814 and is always taken.
  The `bne` branch at 0xd8257e0 targets 0xd82580c, is taken when v1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+20]) != 0, and falls through when v1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+20]) == 0.
  The `beq` branch at 0xd82580c targets 0xd825814 and is always taken.
  The return at 0xd82581c has v0 = one of 0x0, [ret(__glXInitialize)+24], [ret(__glXInitialize)+28], ?.
  The instructions from 0xd825730 to 0xd825730 are not reached by any path from the entry, and their branches are not listed.
- `glXGetClientString` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd825824 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd825824-0xd825884 (96 bytes).
  It occupies 96 bytes.
  The `beq` branch at 0xd825834 targets 0xd825858, is taken when a1 == at(=0x1), and falls through when a1 != at(=0x1).
  The `beq` branch at 0xd825840 targets 0xd825864, is taken when a1 == at(=0x2), and falls through when a1 != at(=0x2).
  The `beq` branch at 0xd825848 targets 0xd825870, is taken when a1 == at(=0x3), and falls through when a1 != at(=0x3).
  The `beq` branch at 0xd825850 targets 0xd82587c and is always taken.
  The return at 0xd82585c has v0 = 0xd840b48.
  The return at 0xd825868 has v0 = 0xd840b4c.
  The return at 0xd825874 has v0 = 0xd840b5c.
  The return at 0xd82587c has v0 = 0x0.
- `glXQueryExtensionsString` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd825884 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd825884-0xd825980 (252 bytes).
  It occupies 252 bytes.
  The `lw` at 0xd8258cc loads 4 bytes from a0 (arg0 at entry) +0x88.
  The `lw` at 0xd8258d8 loads 4 bytes from ret(__glXInitialize) +0x20.
  The `lw` at 0xd8258f0 loads 4 bytes from ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0x4.
  The `lw` at 0xd8258f8 loads 4 bytes from ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0x18.
  The `lw` at 0xd825910 loads 4 bytes from ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0x14.
  The `lw` at 0xd825924 loads 4 bytes from ret(__glXInitialize) +0x4.
  The `sw` at 0xd825940 stores 4 bytes to ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0x14.
  The `sw` at 0xd825968 stores 4 bytes to ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0x18.
  The `jalr` at 0xd8258a4 calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd82592c calls __glXQueryServerString with a0=a0 at entry (arg0), a1=[ret(__glXInitialize)+4], a2=a1 at entry (arg1), a3=0x3.
  The `jalr` at 0xd825954 calls combine_strings [0xd826114] with a0=0xd840b5c, a1=?, a2=?, a3=?.
  The `bne` branch at 0xd8258b4 targets 0xd8258c4, is taken when v0(=ret(__glXInitialize)) != 0, and falls through when v0(=ret(__glXInitialize)) == 0.
  The `beq` branch at 0xd8258bc targets 0xd825970 and is always taken.
  The `bltz` branch at 0xd8258c4 targets 0xd8258dc, is taken when a2(=a1) < 0 (signed), and falls through when a2(=a1) >= 0 (signed).
  The `bnel` branch at 0xd8258d4 targets 0xd8258e8, is taken when a2(=a1) < t7(=[a0+136]) (signed), and falls through when a2(=a1) >= t7(=[a0+136]) (signed); its branch-likely delay slot `lw t8,32(v0)` at 0xd8258d8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8258dc targets 0xd825970 and is always taken.
  The `bnel` branch at 0xd8258f4 targets 0xd825908, is taken when a0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+4]) != 0, and falls through when a0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+4]) == 0; its branch-likely delay slot `lw a0,24(v1)` at 0xd8258f8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8258fc targets 0xd825970 and is always taken.
  The `bnel` branch at 0xd825908 targets 0xd825970, is taken when a0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+24]) != 0, and falls through when a0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+24]) == 0; its branch-likely delay slot `or v0,a0,zero` at 0xd82590c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd825918 targets 0xd825944, is taken when a1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+20]) != 0, and falls through when a1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+20]) == 0.
  The return at 0xd825978 has v0 = one of 0x0, [([ret(__glXInitialize)+32] + (a1 << 0x5))+24], ret(combine_strings).
  The instructions from 0xd8258e4 to 0xd8258e4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd825904 to 0xd825904 are not reached by any path from the entry, and their branches are not listed.
- `glXGetContextIDEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd825980 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd825980-0xd825988 (8 bytes).
  It occupies 8 bytes.
  The `lw` at 0xd825984 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The return at 0xd825980 has v0 = [a0+20].
- `glXChooseFBConfigSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd825988 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd825988-0xd8259cc (68 bytes).
  It occupies 68 bytes.
  The `jalr` at 0xd8259b0 calls glXChooseFBConfigWithFltSGIX with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x0.
  The return at 0xd8259c4 has v0 = ret(glXChooseFBConfigWithFltSGIX).
- `orderFBConfigs` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8259cc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8259cc-0xd825f88 (1468 bytes).
  It occupies 1468 bytes.
  The `lw` at 0xd8259fc loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xd825a00 loads 4 bytes from a1 (arg1 at entry) +0x1c.
  The `lw` at 0xd825a3c loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `lw` at 0xd825a54 loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `lw` at 0xd825a6c loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `lw` at 0xd825a80 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `lw` at 0xd825a94 loads 4 bytes from a1 (arg1 at entry) +0x78.
  The `lw` at 0xd825aac loads 4 bytes from a1 (arg1 at entry) +0x74.
  The `lw` at 0xd825ac4 loads 4 bytes from a1 (arg1 at entry) +0x70.
  The `lw` at 0xd825adc loads 4 bytes from a1 (arg1 at entry) +0x7c.
  The `lw` at 0xd825b28 loads 4 bytes from a0 (arg0 at entry) +0x6c.
  The `lw` at 0xd825b2c loads 4 bytes from a1 (arg1 at entry) +0x6c.
  The `lbu` at 0xd825b68 loads 1 byte from a0 (arg0 at entry) +0x4e.
  The `lbu` at 0xd825b6c loads 1 byte from a1 (arg1 at entry) +0x4e.
  The `lw` at 0xd825ba8 loads 4 bytes from a0 (arg0 at entry) +0x98.
  The `lw` at 0xd825bac loads 4 bytes from a1 (arg1 at entry) +0x98.
  The `lw` at 0xd825be8 loads 4 bytes from a0 (arg0 at entry) +0x94.
  The `lw` at 0xd825bec loads 4 bytes from a1 (arg1 at entry) +0x94.
  The `lw` at 0xd825c28 loads 4 bytes from a0 (arg0 at entry) +0x90.
  The `lw` at 0xd825c2c loads 4 bytes from a1 (arg1 at entry) +0x90.
  The `lbu` at 0xd825c64 loads 1 byte from a0 (arg0 at entry) +0xa0.
  The `lbu` at 0xd825c74 loads 1 byte from a1 (arg1 at entry) +0xa0.
  The `ldc1` at 0xd825ca0 loads 8 bytes from a1 (arg1 at entry) +0xd8.
  The `ldc1` at 0xd825ca4 loads 8 bytes from a0 (arg0 at entry) +0xd8.
  The `ldc1` at 0xd825cc8 loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `ldc1` at 0xd825ccc loads 8 bytes from a1 (arg1 at entry) +0xd0.
  The `ldc1` at 0xd825ce8 loads 8 bytes from a1 (arg1 at entry) +0xc8.
  The `ldc1` at 0xd825cec loads 8 bytes from a0 (arg0 at entry) +0xc8.
  The `ldc1` at 0xd825d08 loads 8 bytes from a0 (arg0 at entry) +0xc0.
  The `ldc1` at 0xd825d0c loads 8 bytes from a1 (arg1 at entry) +0xc0.
  The `ldc1` at 0xd825d28 loads 8 bytes from a1 (arg1 at entry) +0xb8.
  The `ldc1` at 0xd825d2c loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `ldc1` at 0xd825d44 loads 8 bytes from a0 (arg0 at entry) +0xb0.
  The `ldc1` at 0xd825d48 loads 8 bytes from a1 (arg1 at entry) +0xb0.
  The `ldc1` at 0xd825d54 loads 8 bytes from a1 (arg1 at entry) +0xa8.
  The `ldc1` at 0xd825d64 loads 8 bytes from a0 (arg0 at entry) +0xa8.
  The `ldc1` at 0xd825d7c loads 8 bytes from a0 (arg0 at entry) +0xe0.
  The `ldc1` at 0xd825d80 loads 8 bytes from a1 (arg1 at entry) +0xe0.
  The `lw` at 0xd825df0 loads 4 bytes from a0 (arg0 at entry) +0x64.
  The `lw` at 0xd825df4 loads 4 bytes from a1 (arg1 at entry) +0x64.
  The `lw` at 0xd825e30 loads 4 bytes from a0 (arg0 at entry) +0x68.
  The `lw` at 0xd825e34 loads 4 bytes from a1 (arg1 at entry) +0x68.
  The `lw` at 0xd825e74 loads 4 bytes from a0 (arg0 at entry) +0x5c.
  The `lw` at 0xd825e88 loads 4 bytes from a0 (arg0 at entry) +0x58.
  The `lw` at 0xd825e9c loads 4 bytes from a0 (arg0 at entry) +0x54.
  The `lw` at 0xd825ea4 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `lw` at 0xd825ec4 loads 4 bytes from a1 (arg1 at entry) +0x5c.
  The `lw` at 0xd825ed8 loads 4 bytes from a1 (arg1 at entry) +0x58.
  The `lw` at 0xd825ee0 loads 4 bytes from a1 (arg1 at entry) +0x54.
  The `lw` at 0xd825ef4 loads 4 bytes from a1 (arg1 at entry) +0x60.
  The `lw` at 0xd825f50 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xd825f54 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `jalr` at 0xd825a08 calls orderSmaller [0xd825fc0] with a0=[a0+28], a1=[a1+28], a2=a2 at entry (arg2), a3=a2 at entry (arg2).
  The `jalr` at 0xd825af4 calls orderLarger1 [0xd835ea8] with a0=?, a1=?, a2=?, a3=a2 at entry (arg2).
  The `jalr` at 0xd825b34 calls orderSmaller [0xd825fc0] with a0=[a0+108], a1=[a1+108], a2=?, a3=a2 at entry (arg2).
  The `jalr` at 0xd825b74 calls orderSmaller [0xd825fc0] with a0=[a0+78]:1, a1=[a1+78]:1, a2=?, a3=a2 at entry (arg2).
  The `jalr` at 0xd825bb4 calls orderSmaller [0xd825fc0] with a0=[a0+152], a1=[a1+152], a2=?, a3=a2 at entry (arg2).
  The `jalr` at 0xd825bf4 calls orderSmaller [0xd825fc0] with a0=[a0+148], a1=[a1+148], a2=?, a3=a2 at entry (arg2).
  The `jalr` at 0xd825c34 calls orderSmaller [0xd825fc0] with a0=[a0+144], a1=[a1+144], a2=?, a3=a2 at entry (arg2).
  The `jalr` at 0xd825dfc calls orderLarger1 [0xd835ea8] with a0=[a0+100], a1=[a1+100], a2=?, a3=a2 at entry (arg2).
  The `jalr` at 0xd825e3c calls orderSmaller [0xd825fc0] with a0=[a0+104], a1=[a1+104], a2=?, a3=a2 at entry (arg2).
  The `jalr` at 0xd825f1c calls orderLarger1 [0xd835ea8] with a0=?, a1=?, a2=?, a3=a2 at entry (arg2).
  The `jalr` at 0xd825f5c calls orderSmaller [0xd825fc0] with a0=[a0], a1=[a1], a2=?, a3=a2 at entry (arg2).
  The `bne` branch at 0xd8259f0 targets 0xd825a24, is taken when (a2 & 0x100) != 0, and falls through when (a2 & 0x100) == 0.
  The `beq` branch at 0xd825a14 targets 0xd825a24, is taken when v0(=ret(orderSmaller)) == 0, and falls through when v0(=ret(orderSmaller)) != 0.
  The `beq` branch at 0xd825a1c targets 0xd825f7c and is always taken.
  The `beq` branch at 0xd825a28 targets 0xd825a38, is taken when (a3(=a2) & 0x4) == 0, and falls through when (a3(=a2) & 0x4) != 0.
  The `beq` branch at 0xd825a30 targets 0xd825a40 and is always taken.
  The `beq` branch at 0xd825a40 targets 0xd825a50, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xd825a48 targets 0xd825a58 and is always taken.
  The `beq` branch at 0xd825a58 targets 0xd825a68, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xd825a60 targets 0xd825a70 and is always taken.
  The `beq` branch at 0xd825a70 targets 0xd825a80, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0xd825a78 targets 0xd825a84 and is always taken.
  The `beq` branch at 0xd825a84 targets 0xd825a94, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0xd825a8c targets 0xd825a98 and is always taken.
  The `beq` branch at 0xd825a98 targets 0xd825aa8, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xd825aa0 targets 0xd825ab0 and is always taken.
  The `beq` branch at 0xd825ab0 targets 0xd825ac0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xd825ab8 targets 0xd825ac8 and is always taken.
  The `beq` branch at 0xd825ac8 targets 0xd825ad8, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0xd825ad0 targets 0xd825ae0 and is always taken.
  The `beq` branch at 0xd825b08 targets 0xd825b18, is taken when v0(=ret(orderLarger1)) == 0, and falls through when v0(=ret(orderLarger1)) != 0.
  The `beq` branch at 0xd825b10 targets 0xd825f7c and is always taken.
  The `bnel` branch at 0xd825b1c targets 0xd825b5c, is taken when (a3(=a2) & 0x200) != 0, and falls through when (a3(=a2) & 0x200) == 0; its branch-likely delay slot `andi t6,a3,0x400` at 0xd825b20 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd825b48 targets 0xd825b58, is taken when v0(=ret(orderSmaller)) == 0, and falls through when v0(=ret(orderSmaller)) != 0.
  The `beq` branch at 0xd825b50 targets 0xd825f7c and is always taken.
  The `bnel` branch at 0xd825b5c targets 0xd825b9c, is taken when t6(?) != 0, and falls through when t6(?) == 0; its branch-likely delay slot `andi t7,a3,0x800` at 0xd825b60 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd825b88 targets 0xd825b98, is taken when v0(=ret(orderSmaller)) == 0, and falls through when v0(=ret(orderSmaller)) != 0.
  The `beq` branch at 0xd825b90 targets 0xd825f7c and is always taken.
  The `bnel` branch at 0xd825b9c targets 0xd825bdc, is taken when t7(?) != 0, and falls through when t7(?) == 0; its branch-likely delay slot `andi t8,a3,0x8000` at 0xd825ba0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd825bc8 targets 0xd825bd8, is taken when v0(=ret(orderSmaller)) == 0, and falls through when v0(=ret(orderSmaller)) != 0.
  The `beq` branch at 0xd825bd0 targets 0xd825f7c and is always taken.
  The `bnel` branch at 0xd825bdc targets 0xd825c1c, is taken when t8(?) != 0, and falls through when t8(?) == 0; its branch-likely delay slot `sll t9,a3,0xf` at 0xd825be0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd825c08 targets 0xd825c18, is taken when v0(=ret(orderSmaller)) == 0, and falls through when v0(=ret(orderSmaller)) != 0.
  The `beq` branch at 0xd825c10 targets 0xd825f7c and is always taken.
  The `bltzl` branch at 0xd825c1c targets 0xd825c5c, is taken when t9(=(a2 << 0xf)) < 0 (signed), and falls through when t9(=(a2 << 0xf)) >= 0 (signed); its branch-likely delay slot `sll t6,a3,0xe` at 0xd825c20 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd825c48 targets 0xd825c58, is taken when v0(=ret(orderSmaller)) == 0, and falls through when v0(=ret(orderSmaller)) != 0.
  The `beq` branch at 0xd825c50 targets 0xd825f7c and is always taken.
  The `bltzl` branch at 0xd825c5c targets 0xd825de4, is taken when t6(=(a2 << 0xe)) < 0 (signed), and falls through when t6(=(a2 << 0xe)) >= 0 (signed); its branch-likely delay slot `andi t9,a3,0x1000` at 0xd825c60 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd825c6c targets 0xd825de4, is taken when v0(=0x1) != t7(=[a0+160]:1), and falls through when v0(=0x1) == t7(=[a0+160]:1); its branch-likely delay slot `andi t9,a3,0x1000` at 0xd825c70 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd825c80 targets 0xd825de0, is taken when v0(=0x1) != t8(=[a1+160]:1), and falls through when v0(=0x1) == t8(=[a1+160]:1).
  The `bgez` branch at 0xd825c88 targets 0xd825ca0, is taken when t9(=(a2 << 0x7)) >= 0 (signed), and falls through when t9(=(a2 << 0x7)) < 0 (signed).
  The `beq` branch at 0xd825c98 targets 0xd825cb8 and is always taken.
  The `bgez` branch at 0xd825cb8 targets 0xd825cc8, is taken when t6(=(a2 << 0xa)) >= 0 (signed), and falls through when t6(=(a2 << 0xa)) < 0 (signed).
  The `beq` branch at 0xd825cc0 targets 0xd825cd8 and is always taken.
  The `bgez` branch at 0xd825cd8 targets 0xd825ce8, is taken when t7(=(a2 << 0xb)) >= 0 (signed), and falls through when t7(=(a2 << 0xb)) < 0 (signed).
  The `beq` branch at 0xd825ce0 targets 0xd825cf8 and is always taken.
  The `bgez` branch at 0xd825cf8 targets 0xd825d08, is taken when t8(=(a2 << 0x8)) >= 0 (signed), and falls through when t8(=(a2 << 0x8)) < 0 (signed).
  The `beq` branch at 0xd825d00 targets 0xd825d18 and is always taken.
  The `beq` branch at 0xd825d18 targets 0xd825d28, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0xd825d20 targets 0xd825d34 and is always taken.
  The `bgez` branch at 0xd825d34 targets 0xd825d44, is taken when t6(=(a2 << 0xc)) >= 0 (signed), and falls through when t6(=(a2 << 0xc)) < 0 (signed).
  The `beq` branch at 0xd825d3c targets 0xd825d50 and is always taken.
  The `bgezl` branch at 0xd825d50 targets 0xd825d64, is taken when t7(=(a2 << 0xd)) >= 0 (signed), and falls through when t7(=(a2 << 0xd)) < 0 (signed); its branch-likely delay slot `ldc1 $f4,168(t1)` at 0xd825d54 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd825d58 targets 0xd825d6c and is always taken.
  The `bgez` branch at 0xd825d6c targets 0xd825d7c, is taken when t8(=(a2 << 0x6)) >= 0 (signed), and falls through when t8(=(a2 << 0x6)) < 0 (signed).
  The `beq` branch at 0xd825d74 targets 0xd825d88 and is always taken.
  The `bc1tl` branch at 0xd825db8 targets 0xd825de4, is taken when f12 == f2 (c.eq.d at 0xd825db0), and falls through when not (f12 == f2 (c.eq.d at 0xd825db0)); its branch-likely delay slot `andi t9,a3,0x1000` at 0xd825dbc runs only when taken and is annulled on fall-through.
  The `bc1f` branch at 0xd825dc8 targets 0xd825dd8, is taken when not (f2 < f12 (c.lt.d at 0xd825dc0)), and falls through when f2 < f12 (c.lt.d at 0xd825dc0).
  The `beq` branch at 0xd825dd0 targets 0xd825f78 and is always taken.
  The `beq` branch at 0xd825dd8 targets 0xd825f78 and is always taken.
  The `bnel` branch at 0xd825de4 targets 0xd825e24, is taken when t9(?) != 0, and falls through when t9(?) == 0; its branch-likely delay slot `andi t6,a3,0x2000` at 0xd825de8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd825e10 targets 0xd825e20, is taken when v0(=ret(orderLarger1)) == 0, and falls through when v0(=ret(orderLarger1)) != 0.
  The `beq` branch at 0xd825e18 targets 0xd825f7c and is always taken.
  The `bnel` branch at 0xd825e24 targets 0xd825e64, is taken when t6(?) != 0, and falls through when t6(?) == 0; its branch-likely delay slot `andi a0,a3,0x40` at 0xd825e28 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd825e50 targets 0xd825e60, is taken when v0(=ret(orderSmaller)) == 0, and falls through when v0(=ret(orderSmaller)) != 0.
  The `beq` branch at 0xd825e58 targets 0xd825f7c and is always taken.
  The `beq` branch at 0xd825e64 targets 0xd825e74, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0xd825e6c targets 0xd825e78 and is always taken.
  The `beq` branch at 0xd825e78 targets 0xd825e88, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xd825e80 targets 0xd825e8c and is always taken.
  The `beq` branch at 0xd825e8c targets 0xd825e9c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xd825e94 targets 0xd825ea0 and is always taken.
  The `beql` branch at 0xd825ea0 targets 0xd825eb4, is taken when a1(?) == 0, and falls through when a1(?) != 0; its branch-likely delay slot `lw t3,96(t0)` at 0xd825ea4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd825ea8 targets 0xd825eb4 and is always taken.
  The `beq` branch at 0xd825eb4 targets 0xd825ec4, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0xd825ebc targets 0xd825ec8 and is always taken.
  The `beq` branch at 0xd825ec8 targets 0xd825ed8, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xd825ed0 targets 0xd825edc and is always taken.
  The `beql` branch at 0xd825edc targets 0xd825ef0, is taken when v0(?) == 0, and falls through when v0(?) != 0; its branch-likely delay slot `lw v1,84(t1)` at 0xd825ee0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd825ee4 targets 0xd825ef0 and is always taken.
  The `beql` branch at 0xd825ef0 targets 0xd825f04, is taken when a1(?) == 0, and falls through when a1(?) != 0; its branch-likely delay slot `lw v0,96(t1)` at 0xd825ef4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd825ef8 targets 0xd825f04 and is always taken.
  The `beq` branch at 0xd825f30 targets 0xd825f40, is taken when v0(=ret(orderLarger1)) == 0, and falls through when v0(=ret(orderLarger1)) != 0.
  The `beq` branch at 0xd825f38 targets 0xd825f7c and is always taken.
  The `bnel` branch at 0xd825f44 targets 0xd825f78, is taken when (a3(=a2) & 0x4000) != 0, and falls through when (a3(=a2) & 0x4000) == 0; its branch-likely delay slot `or v0,zero,zero` at 0xd825f48 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd825f64 targets 0xd825f74, is taken when v0(=ret(orderSmaller)) == 0, and falls through when v0(=ret(orderSmaller)) != 0.
  The `beq` branch at 0xd825f6c targets 0xd825f7c and is always taken.
  The return at 0xd825f80 has v0 = one of ret(orderSmaller), ret(orderLarger1), -0x1, 0x0, 0x1.
  The instructions from 0xd825d60 to 0xd825d60 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd825eb0 to 0xd825eb0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd825eec to 0xd825eec are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd825f00 to 0xd825f00 are not reached by any path from the entry, and their branches are not listed.
- `orderLarger` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd825f88 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd825f88-0xd825fc0 (56 bytes).
  It occupies 56 bytes.
  The `bne` branch at 0xd825f88 targets 0xd825f98, is taken when a0 != a1, and falls through when a0 == a1.
  The `bne` branch at 0xd825f98 targets 0xd825fa8, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0xd825fa8 targets 0xd825fb8, is taken when a1 != 0, and falls through when a1 == 0.
  The return at 0xd825f90 has v0 = 0x0.
  The return at 0xd825fa0 has v0 = -0x1.
  The return at 0xd825fb0 has v0 = 0x1.
  The return at 0xd825fb8 has v0 = ?.
- `orderSmaller` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd825fc0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd825fc0-0xd826114 (340 bytes).
  It occupies 340 bytes.
  The return at 0xd825fc0 has v0 = ?.
  The instructions from 0xd825fc8 to 0xd826110 are not reached by any path from the entry, and their branches are not listed.
- `glXGetFBConfigAttribSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd825fc8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd825fc8-0xd826010 (72 bytes).
  It occupies 72 bytes.
  The `jalr` at 0xd825ff4 calls glXGetFBConfigAttrib with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xd825fe0 targets 0xd825ff0, is taken when a2 != at(=0x800b), and falls through when a2 == at(=0x800b).
  The `beq` branch at 0xd825fe8 targets 0xd826000 and is always taken.
  The return at 0xd826008 has v0 = one of 0x2, ret(glXGetFBConfigAttrib).
- `glXFreeContextEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd826010 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd826010-0xd826048 (56 bytes).
  It occupies 56 bytes.
  The `jalr` at 0xd82602c calls DestroyContext [0xd8267a0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd826040 has v0 = ret(DestroyContext).
- `glXImportContextEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd826048 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd826048-0xd826114 (204 bytes).
  It occupies 204 bytes.
  The `jalr` at 0xd82607c calls __glXIsDirect with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8260c0 calls CreateContext [0xd80f618] with a0=a0 at entry (arg0), a1=0x0, a2=0x0, a3=0x0.
  The `jalr` at 0xd8260e4 calls __glXQueryContextInfo [0xd825264] with a0=a0 at entry (arg0), a1=ret(CreateContext), a2=?, a3=?.
  The `bne` branch at 0xd826060 targets 0xd826070, is taken when a1 != 0, and falls through when a1 == 0.
  The `beq` branch at 0xd826068 targets 0xd826104 and is always taken.
  The `beq` branch at 0xd826084 targets 0xd826094, is taken when v0(=ret(__glXIsDirect)) == 0, and falls through when v0(=ret(__glXIsDirect)) != 0.
  The `beq` branch at 0xd82608c targets 0xd826104 and is always taken.
  The `beq` branch at 0xd8260cc targets 0xd826100, is taken when v0(=ret(CreateContext)) == 0, and falls through when v0(=ret(CreateContext)) != 0.
  The `beq` branch at 0xd8260f0 targets 0xd826100, is taken when v0(=ret(__glXQueryContextInfo)) == 0, and falls through when v0(=ret(__glXQueryContextInfo)) != 0.
  The `beq` branch at 0xd8260f8 targets 0xd826104 and is always taken.
  The return at 0xd82610c has v0 = one of 0x0, ret(CreateContext).
- `combine_strings` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd826114 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd826114-0xd8267a0 (1676 bytes).
  It occupies 1676 bytes.
  The `sb` at 0xd8261fc stores 1 byte to ret(malloc) +0x0.
  The `jalr` at 0xd826154 calls strlen with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd826170 calls strlen with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xd82618c calls malloc with a0=ret(strlen)+2, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8261a4 calls strdup with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8261c4 calls malloc with a0=ret(strlen)+2, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8261dc calls strdup with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd826210 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd826230 calls free with a0=ret(strdup), a1=?, a2=?, a3=?.
  The `jalr` at 0xd826254 calls strtok with a0=ret(strdup), a1=0xd840d98, a2=?, a3=?.
  The `jalr` at 0xd826284 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8262a8 calls strcspn with a0=?, a1=0xd840d9c, a2=?, a3=?.
  The `jalr` at 0xd8262c0 calls strlen with a0=ret(strtok), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8262dc calls strncmp with a0=ret(strtok), a1=?, a2=ret(strcspn), a3=?.
  The `jalr` at 0xd8262f8 calls strcat with a0=?, a1=ret(strtok), a2=?, a3=?.
  The `jalr` at 0xd826310 calls strcat with a0=ret(strcat), a1=0xd840da0, a2=?, a3=?.
  The `jalr` at 0xd826340 calls strtok with a0=0x0, a1=0xd840da4, a2=?, a3=?.
  The `jalr` at 0xd82635c calls free with a0=ret(strdup), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd82617c targets 0xd8261bc, is taken when v0(=ret(strlen)) >= s1(=ret(strlen)) (signed), and falls through when v0(=ret(strlen)) < s1(=ret(strlen)) (signed).
  The `beq` branch at 0xd8261b4 targets 0xd8261f0 and is always taken.
  The `beq` branch at 0xd8261f0 targets 0xd826200, is taken when s4(=ret(malloc)) == 0, and falls through when s4(=ret(malloc)) != 0.
  The `bnel` branch at 0xd8261f8 targets 0xd826248, is taken when v0(=ret(strdup)) != 0, and falls through when v0(=ret(strdup)) == 0; its branch-likely delay slot `sb zero,0(s4)` at 0xd8261fc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd826200 targets 0xd826220, is taken when s4(=ret(malloc)) == 0, and falls through when s4(=ret(malloc)) != 0; its branch-likely delay slot `lw t6,68(sp)` at 0xd826204 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd826220 targets 0xd82623c, is taken when t6(=ret(strdup)) == 0, and falls through when t6(=ret(strdup)) != 0.
  The `beq` branch at 0xd82623c targets 0xd82636c and is always taken.
  The `beq` branch at 0xd826260 targets 0xd826354, is taken when v0(=ret(strtok)) == 0, and falls through when v0(=ret(strtok)) != 0.
  The `beq` branch at 0xd826294 targets 0xd826334, is taken when s7(?) >= s3(?) (unsigned), and falls through when s7(?) < s3(?) (unsigned).
  The `bne` branch at 0xd8262c8 targets 0xd826320, is taken when v0(=ret(strlen)) != s0(=ret(strcspn)), and falls through when v0(=ret(strlen)) == s0(=ret(strcspn)).
  The `bne` branch at 0xd8262e4 targets 0xd826320, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The `bne` branch at 0xd82632c targets 0xd82629c, is taken when s1(?) < s3(?) (unsigned), and falls through when s1(?) >= s3(?) (unsigned).
  The `bne` branch at 0xd82634c targets 0xd826278, is taken when v0(=ret(strtok)) != 0, and falls through when v0(=ret(strtok)) == 0.
  The return at 0xd826390 has v0 = one of 0x0, ?.
  The instructions from 0xd826244 to 0xd826244 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd826398 to 0xd82679c are not reached by any path from the entry, and their branches are not listed.
- `glXWaitX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd826398 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd826398-0xd826508 (368 bytes).
  It occupies 368 bytes.
  The `lw` at 0xd8263bc loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8263c4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8263c8 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd8263d4 loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lw` at 0xd826400 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd826410, `lw` at 0xd8264b8.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd826420, `lw` at 0xd826440, `lw` at 0xd826474.
  The `lw` at 0xd826428 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd826444 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd826454, `sw` at 0xd826478.
  The `sh` at 0xd826484 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd826488, `sb` at 0xd8264ac.
  The `lw` at 0xd82648c loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd82649c stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd8264a0 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd8264a4 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd8264a8 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd8264b0 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd8264b4 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd8264c0, `lw` at 0xd8264d8.
  The `lw` at 0xd8264c4 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd8263b4 calls __glXInitThread with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8263ec calls XSync with a0=[[[0x1014]+276]+216], a1=0x0, a2=[[0x1014]+276], a3=?.
  The `jalr` at 0xd826408 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[0x1014]+276], a3=?.
  The `jalr` at 0xd826430 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=[[0x1014]+276], a3=?.
  The `jalr` at 0xd826464 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=[[0x1014]+276], a3=?.
  The `jalr` at 0xd8264cc calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=0x9, a2=[[0x1014]+276], a3=?.
  The `jalr` at 0xd8264e8 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd8263cc targets 0xd8264f8, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd8263d0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8263d8 targets 0xd8263fc, is taken when t7(=[[[0x1014]+276]+196]) == 0, and falls through when t7(=[[[0x1014]+276]+196]) != 0.
  The `beq` branch at 0xd8263f4 targets 0xd8264f4 and is always taken.
  The `beql` branch at 0xd82641c targets 0xd826444, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd826420 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd826450 targets 0xd82647c, is taken when t8(=[[[[0x1014]+276]+216]+112]) >= t0(=[[[[0x1014]+276]+216]+108]+8) (unsigned), and falls through when t8(=[[[[0x1014]+276]+216]+112]) < t0(=[[[[0x1014]+276]+216]+108]+8) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd826454 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8264bc targets 0xd8264dc, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8264c0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8264e0 targets 0xd8264f8, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd8264e4 runs only when taken and is annulled on fall-through.
  The return at 0xd826500 has v0 = one of ret(__glXInitThread), [[[[0x1014]+276]+216]+124], ?.
- `glXWaitGL` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd826508 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd826508-0xd826670 (360 bytes).
  It occupies 360 bytes.
  The `lw` at 0xd82652c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd826534 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd826538 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd826544 loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lw` at 0xd826568 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd826578, `lw` at 0xd826620.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd826588, `lw` at 0xd8265a8, `lw` at 0xd8265dc.
  The `lw` at 0xd826590 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd8265ac loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd8265bc, `sw` at 0xd8265e0.
  The `sh` at 0xd8265ec stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd8265f0, `sb` at 0xd826614.
  The `lw` at 0xd8265f4 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd826604 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd826608 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd82660c loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd826610 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd826618 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd82661c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd826628, `lw` at 0xd826640.
  The `lw` at 0xd82662c loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd826524 calls __glXInitThread with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd826554 calls glFinish with a0=?, a1=?, a2=[[0x1014]+276], a3=?.
  The `jalr` at 0xd826570 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[0x1014]+276], a3=?.
  The `jalr` at 0xd826598 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=[[0x1014]+276], a3=?.
  The `jalr` at 0xd8265cc calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=[[0x1014]+276], a3=?.
  The `jalr` at 0xd826634 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=0x8, a2=[[0x1014]+276], a3=?.
  The `jalr` at 0xd826650 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd82653c targets 0xd826660, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd826540 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd826548 targets 0xd826564, is taken when t7(=[[[0x1014]+276]+196]) == 0, and falls through when t7(=[[[0x1014]+276]+196]) != 0.
  The `beq` branch at 0xd82655c targets 0xd82665c and is always taken.
  The `beql` branch at 0xd826584 targets 0xd8265ac, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd826588 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8265b8 targets 0xd8265e4, is taken when t8(=[[[[0x1014]+276]+216]+112]) >= t0(=[[[[0x1014]+276]+216]+108]+8) (unsigned), and falls through when t8(=[[[[0x1014]+276]+216]+112]) < t0(=[[[[0x1014]+276]+216]+108]+8) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd8265bc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd826624 targets 0xd826644, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd826628 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd826648 targets 0xd826660, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd82664c runs only when taken and is annulled on fall-through.
  The return at 0xd826668 has v0 = one of ret(__glXInitThread), [[[[0x1014]+276]+216]+124], ?.
- `glXQueryExtension` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd826670 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd826670-0xd8266f4 (132 bytes).
  It occupies 132 bytes.
  The `sw` at 0xd8266c8 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `sw` at 0xd8266d4 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jalr` at 0xd8266a8 calls XQueryExtension with a0=a0 at entry (arg0), a1=0xd840d94, a2=sp-4, a3=sp-12.
  The `beq` branch at 0xd8266b8 targets 0xd8266e0, is taken when v0(=ret(XQueryExtension)) == 0, and falls through when v0(=ret(XQueryExtension)) != 0.
  The `beq` branch at 0xd8266c0 targets 0xd8266cc, is taken when v1(=a1) == 0, and falls through when v1(=a1) != 0.
  The `beq` branch at 0xd8266cc targets 0xd8266d8, is taken when a0(=a2) == 0, and falls through when a0(=a2) != 0.
  The `beq` branch at 0xd8266d8 targets 0xd8266e4 and is always taken.
  The return at 0xd8266ec has v0 = one of 0x0, 0x1.
- `glXQueryVersion` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8266f4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8266f4-0xd826768 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd82673c loads 4 bytes from ret(__glXInitialize) +0x10.
  The `sw` at 0xd826740 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lw` at 0xd82674c loads 4 bytes from ret(__glXInitialize) +0x14.
  The `sw` at 0xd826750 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jalr` at 0xd826714 calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xd826724 targets 0xd826734, is taken when v0(=ret(__glXInitialize)) != 0, and falls through when v0(=ret(__glXInitialize)) == 0.
  The `beq` branch at 0xd82672c targets 0xd826758 and is always taken.
  The `beq` branch at 0xd826734 targets 0xd826744, is taken when v1(=a1) == 0, and falls through when v1(=a1) != 0.
  The `beql` branch at 0xd826744 targets 0xd826758, is taken when a0(=a2) == 0, and falls through when a0(=a2) != 0; its branch-likely delay slot `addiu v0,zero,1` at 0xd826748 runs only when taken and is annulled on fall-through.
  The return at 0xd826760 has v0 = one of 0x0, 0x1.
- `glXDestroyContext` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd826768 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd826768-0xd8267a0 (56 bytes).
  It occupies 56 bytes.
  The `jalr` at 0xd826784 calls DestroyContext [0xd8267a0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd826798 has v0 = ret(DestroyContext).
- `__glXFreeContext` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd826904 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd826904-0xd826ae4 (480 bytes).
  It occupies 480 bytes.
  The `lw` at 0xd82692c loads 4 bytes from sym(__glx_contextList) +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc4, including `lw` at 0xd826934, `lw` at 0xd82695c.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd826940, `lw` at 0xd826950, `lw` at 0xd826a40.
  The `sw` at 0xd826948 stores 4 bytes to ?.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xf8, including `lw` at 0xd826964, `lw` at 0xd82697c.
  The `lw` at 0xd826968 loads 4 bytes from a0 (arg0 at entry) +0xc8.
  The `lw` at 0xd82696c loads 4 bytes from [a0+200] +0x58.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xfc, including `lw` at 0xd826984, `lw` at 0xd826998.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x100, including `lw` at 0xd8269a0, `lw` at 0xd8269b4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x104, including `lw` at 0xd8269bc, `lw` at 0xd8269d0.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xbc, including `lw` at 0xd8269d8, `lw` at 0xd8269ec, `lw` at 0xd826a0c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc0, including `lw` at 0xd8269f0, `lw` at 0xd826a10.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb8, including `lw` at 0xd8269fc, `lw` at 0xd826a24, `lw` at 0xd826a5c.
  The `sw` at 0xd826a94 stores 4 bytes to a0 (arg0 at entry) +0xbc.
  The `lw` at 0xd826a98 loads 4 bytes from a0 (arg0 at entry) +0xb4.
  The `lw` at 0xd826aac loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xd826970 calls (unknown callee) with a0=[a0+200], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd82698c calls XFree with a0=[a0+248], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8269a8 calls XFree with a0=[a0+252], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8269c4 calls XFree with a0=[a0+256], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8269e0 calls XFree with a0=[a0+260], a1=?, a2=?, a3=?.
  The `jalr` at 0xd826a04 calls __glx_PopClientAttrib with a0=?, a1=[a0+188], a2=?, a3=?.
  The `jalr` at 0xd826a54 calls free with a0=?, a1=[a0+188], a2=?, a3=?.
  The `jalr` at 0xd826a88 calls free with a0=[a0+188], a1=[a0+188], a2=?, a3=?.
  The `jalr` at 0xd826aa0 calls XFree with a0=[a0+180], a1=?, a2=?, a3=?.
  The `jalr` at 0xd826ab4 calls XFree with a0=[a0], a1=?, a2=?, a3=?.
  The `jalr` at 0xd826ac8 calls XFree with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd826920 targets 0xd82695c, is taken when a1 == 0, and falls through when a1 != 0.
  The `beql` branch at 0xd826930 targets 0xd826960, is taken when v0(=[sym(__glx_contextList)]) == 0, and falls through when v0(=[sym(__glx_contextList)]) != 0; its branch-likely delay slot `lw t7,196(s0)` at 0xd826934 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd826938 targets 0xd826950, is taken when v0(?) != s0(=a0), and falls through when v0(?) == s0(=a0); its branch-likely delay slot `addiu v1,v0,296` at 0xd82693c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd826944 targets 0xd82695c and is always taken.
  The `bne` branch at 0xd826954 targets 0xd826938, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beql` branch at 0xd826960 targets 0xd826980, is taken when t7(=[a0+196]) == 0, and falls through when t7(=[a0+196]) != 0; its branch-likely delay slot `lw a0,248(s0)` at 0xd826964 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd826980 targets 0xd82699c, is taken when a0(=[a0+248]) == 0, and falls through when a0(=[a0+248]) != 0; its branch-likely delay slot `lw a0,252(s0)` at 0xd826984 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd82699c targets 0xd8269b8, is taken when a0(=[a0+252]) == 0, and falls through when a0(=[a0+252]) != 0; its branch-likely delay slot `lw a0,256(s0)` at 0xd8269a0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8269b8 targets 0xd8269d4, is taken when a0(=[a0+256]) == 0, and falls through when a0(=[a0+256]) != 0; its branch-likely delay slot `lw a0,260(s0)` at 0xd8269bc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8269d4 targets 0xd8269f0, is taken when a0(=[a0+260]) == 0, and falls through when a0(=[a0+260]) != 0; its branch-likely delay slot `lw a1,188(s0)` at 0xd8269d8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8269f8 targets 0xd826a28, is taken when a1(=[a0+188]) >= t8(=[a0+192]) (unsigned), and falls through when a1(=[a0+188]) < t8(=[a0+192]) (unsigned); its branch-likely delay slot `lw t1,184(s0)` at 0xd8269fc runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd826a1c targets 0xd826a00, is taken when a1(=[a0+188]) < t0(=[a0+192]) (unsigned), and falls through when a1(=[a0+188]) >= t0(=[a0+192]) (unsigned).
  The `beq` branch at 0xd826a38 targets 0xd826a80, is taken when a1(=[a0+188]) >= t3(=([a0+188] + ([a0+184] << 0x2))) (unsigned), and falls through when a1(=[a0+188]) < t3(=([a0+188] + ([a0+184] << 0x2))) (unsigned).
  The `beq` branch at 0xd826a44 targets 0xd826a80, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0xd826a78 targets 0xd826a40, is taken when v0(?) < t6(=([a0+188] + ([a0+184] << 0x2))) (unsigned), and falls through when v0(?) >= t6(=([a0+188] + ([a0+184] << 0x2))) (unsigned).
  The return at 0xd826adc has v0 = ret(XFree).
  The instructions from 0xd82694c to 0xd82694c are not reached by any path from the entry, and their branches are not listed.
- `glXUseXFont` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd826ae4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd826ae4-0xd826c7c (408 bytes).
  It occupies 408 bytes.
  The `lw` at 0xd826b1c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd826b24 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd826b28 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd826b34 loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lw` at 0xd826b6c loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd826b78, `lw` at 0xd826c2c.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd826b84, `lw` at 0xd826b9c, `lw` at 0xd826bc8.
  The `lw` at 0xd826b88 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd826ba0 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd826bb0, `sw` at 0xd826bcc.
  The `sh` at 0xd826bd8 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd826bdc, `sb` at 0xd826c00.
  The `lw` at 0xd826be0 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd826bf0 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd826bf4 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd826bf8 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd826bfc stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd826c04 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd826c08 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd826c10 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd826c18 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd826c20 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x10.
  The `sw` at 0xd826c28 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x14.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd826c34, `lw` at 0xd826c4c.
  The `lw` at 0xd826c38 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd826b14 calls __glXInitThread with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd826b54 calls __glXUseXFont with a0=[[0x1014]+276], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `jalr` at 0xd826b70 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0xd826b90 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd826bbc calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd826c40 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=0xc, a2=?, a3=?.
  The `jalr` at 0xd826c5c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd826b2c targets 0xd826c6c, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,44(sp)` at 0xd826b30 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd826b40 targets 0xd826b64, is taken when t7(=[[[0x1014]+276]+196]) == 0, and falls through when t7(=[[[0x1014]+276]+196]) != 0.
  The `beq` branch at 0xd826b5c targets 0xd826c68 and is always taken.
  The `beql` branch at 0xd826b80 targets 0xd826ba0, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd826b84 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd826bac targets 0xd826bd0, is taken when t0(=[[[[0x1014]+276]+216]+112]) >= t1(=[[[[0x1014]+276]+216]+108]+24) (unsigned), and falls through when t0(=[[[[0x1014]+276]+216]+112]) < t1(=[[[[0x1014]+276]+216]+108]+24) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd826bb0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd826c30 targets 0xd826c50, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd826c34 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd826c54 targets 0xd826c6c, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,44(sp)` at 0xd826c58 runs only when taken and is annulled on fall-through.
  The return at 0xd826c74 has v0 = one of ret(__glXInitThread), [[[[0x1014]+276]+216]+124], ?.
- `IndexScore` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd826c7c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd826c7c-0xd82b1a8 (17708 bytes).
  It occupies 17708 bytes.
  The return at 0xd826c7c has v0 = ?.
  The instructions from 0xd826c84 to 0xd82b1a4 are not reached by any path from the entry, and their branches are not listed.
- `glXGetConfig` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd826c84 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd826c84-0xd827024 (928 bytes).
  It occupies 928 bytes.
  The `lw` at 0xd826cd0 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0xd826ce0 loads 4 bytes from a0 (arg0 at entry) +0x88.
  The `lw` at 0xd826cec loads 4 bytes from ret(__glXInitialize) +0x20.
  The `lw` at 0xd826d08 loads 4 bytes from ([ret(__glXInitialize)+32] + ([a1+8] << 0x5)) +0x4.
  The `lw` at 0xd826d10 loads 4 bytes from ([ret(__glXInitialize)+32] + ([a1+8] << 0x5)) +0x8.
  4 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0xd826d20, `sw` at 0xd826ee0, `sw` at 0xd826ef0.
  The `lw` at 0xd826d40 loads 4 bytes from a1 (arg1 at entry) +0x4.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd826d44, `lw` at 0xd826d6c, `lw` at 0xd826d90.
  The `lw` at 0xd826db4 loads 4 bytes from (a2-1 << 0x2) +0xd840dcc.
  The `jalr` at 0xd826cac calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  Calls (unknown callee) via register with a0=[a1+4], a1=([ret(__glXInitialize)+32] + ([a1+8] << 0x5)), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd826dbc).
  The `bne` branch at 0xd826cc0 targets 0xd826cd0, is taken when v0(=ret(__glXInitialize)) != 0, and falls through when v0(=ret(__glXInitialize)) == 0.
  The `beq` branch at 0xd826cc8 targets 0xd827014 and is always taken.
  The `bltz` branch at 0xd826cd8 targets 0xd826cf0, is taken when a0(=[a1+8]) < 0 (signed), and falls through when a0(=[a1+8]) >= 0 (signed).
  The `bnel` branch at 0xd826ce8 targets 0xd826cfc, is taken when a0(=[a1+8]) < t7(=[a0+136]) (signed), and falls through when a0(=[a1+8]) >= t7(=[a0+136]) (signed); its branch-likely delay slot `lw t8,32(v0)` at 0xd826cec runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd826cf0 targets 0xd827014 and is always taken.
  The `bnel` branch at 0xd826d0c targets 0xd826d30, is taken when v1(=[([ret(__glXInitialize)+32] + ([a1+8] << 0x5))+4]) != 0, and falls through when v1(=[([ret(__glXInitialize)+32] + ([a1+8] << 0x5))+4]) == 0; its branch-likely delay slot `lw v0,8(a1)` at 0xd826d10 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd826d14 targets 0xd826d24, is taken when a2 != at(=0x1), and falls through when a2 == at(=0x1).
  The `beq` branch at 0xd826d1c targets 0xd827014 and is always taken.
  The `beq` branch at 0xd826d24 targets 0xd827014 and is always taken.
  The `bltz` branch at 0xd826d38 targets 0xd827000, is taken when v0(=[([ret(__glXInitialize)+32] + ([a1+8] << 0x5))+8]-1) < 0 (signed), and falls through when v0(=[([ret(__glXInitialize)+32] + ([a1+8] << 0x5))+8]-1) >= 0 (signed).
  The `bne` branch at 0xd826d4c targets 0xd826ff8, is taken when a0(=[a1+4]) != t1(?), and falls through when a0(=[a1+4]) == t1(?).
  The `bnel` branch at 0xd826d60 targets 0xd826d7c, is taken when a2 < v0(=0x186a1) (signed), and falls through when a2 >= v0(=0x186a1) (signed); its branch-likely delay slot `slti at,a2,41` at 0xd826d64 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd826d68 targets 0xd826ee8, is taken when a2 == v0(=0x186a1), and falls through when a2 != v0(=0x186a1); its branch-likely delay slot `lw t3,116(v1)` at 0xd826d6c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd826d70 targets 0xd827014 and is always taken.
  The `bne` branch at 0xd826d7c targets 0xd826d9c, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beql` branch at 0xd826d8c targets 0xd826ed8, is taken when a2 == at(=0x186a0), and falls through when a2 != at(=0x186a0); its branch-likely delay slot `lw t2,112(v1)` at 0xd826d90 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd826d94 targets 0xd827014 and is always taken.
  The `beq` branch at 0xd826da0 targets 0xd826ff0, is taken when t2(=a2-1) >= 0x28 (unsigned), and falls through when t2(=a2-1) < 0x28 (unsigned).
  The `beq` branch at 0xd826edc targets 0xd827014 and is always taken.
  The `beq` branch at 0xd826eec targets 0xd827014 and is always taken.
  The `beq` branch at 0xd826ff0 targets 0xd827014 and is always taken.
  The `bgez` branch at 0xd826ff8 targets 0xd826d44, is taken when v0(?) >= 0 (signed), and falls through when v0(?) < 0 (signed).
  The `bne` branch at 0xd827000 targets 0xd827014, is taken when a2 != at(=0x1), and falls through when a2 == at(=0x1).
  The `beq` branch at 0xd82700c targets 0xd827014 and is always taken.
  The return at 0xd82701c has v0 = one of 0x3, 0x1, 0x0, 0x4, 0x2.
  The instructions from 0xd826cf8 to 0xd826cf8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd826d2c to 0xd826d2c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd826d78 to 0xd826d78 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd826dc4 to 0xd826ed4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd826ee4 to 0xd826ee4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd826ef4 to 0xd826fec are not reached by any path from the entry, and their branches are not listed.
- `glXDestroyGLXPixmap` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd827024 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd827024-0xd82713c (280 bytes).
  It occupies 280 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd82705c, `lw` at 0xd8270ec.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd827064, `lw` at 0xd82707c, `lw` at 0xd8270a8.
  The `lw` at 0xd827068 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd827080 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd827090, `sw` at 0xd8270ac.
  The `sh` at 0xd8270b8 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8270bc, `sb` at 0xd8270e0.
  The `lw` at 0xd8270c0 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8270d0 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8270d4 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd8270dc stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd8270e8 stores 4 bytes to [a0+108] +0x4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8270f4, `lw` at 0xd82710c.
  The `lw` at 0xd8270f8 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xd827048 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd827070 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd82709c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd827100 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xf, a2=?, a3=?.
  The `jalr` at 0xd82711c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd827054 targets 0xd827128, is taken when v0(=ret(__glXSetupForCommand)) == 0, and falls through when v0(=ret(__glXSetupForCommand)) != 0.
  The `beql` branch at 0xd827060 targets 0xd827080, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd827064 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd82708c targets 0xd8270b0, is taken when t6(=[a0+112]) >= t7(=[a0+108]+8) (unsigned), and falls through when t6(=[a0+112]) < t7(=[a0+108]+8) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd827090 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8270f0 targets 0xd827110, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8270f4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd827114 targets 0xd82712c, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd827118 runs only when taken and is annulled on fall-through.
  The return at 0xd827134 has v0 = one of [a0+124], ?.
- `glXCreateGLXPixmap` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82713c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82713c-0xd82729c (352 bytes).
  It occupies 352 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd827180, `lw` at 0xd827248.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd827188, `lw` at 0xd8271a0, `lw` at 0xd8271cc.
  The `lw` at 0xd82718c loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd8271a4 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd8271d4 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd8271e0 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8271e4, `sb` at 0xd82720c.
  The `lw` at 0xd8271e8 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8271fc stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd827200 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd827208 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd827210 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `sw` at 0xd827214 stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd827218 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `sw` at 0xd82721c stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xd827224 stores 4 bytes to [a0+108] +0xc.
  The `lw` at 0xd82722c loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `sw` at 0xd827244 stores 4 bytes to [a0+108] +0x10.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd827250, `lw` at 0xd827268.
  The `lw` at 0xd827254 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xd827164 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd827194 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?.
  The `jalr` at 0xd8271c0 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd827230 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd, a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0xd82725c calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?.
  The `jalr` at 0xd827278 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0xd827170 targets 0xd827180, is taken when v0(=ret(__glXSetupForCommand)) != 0, and falls through when v0(=ret(__glXSetupForCommand)) == 0.
  The `beq` branch at 0xd827178 targets 0xd827288 and is always taken.
  The `beql` branch at 0xd827184 targets 0xd8271a4, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,108(s0)` at 0xd827188 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8271b0 targets 0xd8271d4, is taken when t6(=[a0+112]) >= t7(=[a0+108]+20) (unsigned), and falls through when t6(=[a0+112]) < t7(=[a0+108]+20) (unsigned); its branch-likely delay slot `lw a2,52(sp)` at 0xd8271b4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd82724c targets 0xd82726c, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd827250 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd827270 targets 0xd827288, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw v0,40(sp)` at 0xd827274 runs only when taken and is annulled on fall-through.
  The return at 0xd827294 has v0 = one of 0x0, ret(?).
- `glXIsDirect` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82729c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82729c-0xd8272e8 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xd8272c8 loads 4 bytes from a1 (arg1 at entry) +0x14.
  The `jalr` at 0xd8272cc calls __glXIsDirect with a0=a0 at entry (arg0), a1=[a1+20], a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `bne` branch at 0xd8272b4 targets 0xd8272c4, is taken when a1 != 0, and falls through when a1 == 0.
  The `beq` branch at 0xd8272bc targets 0xd8272d8 and is always taken.
  The return at 0xd8272e0 has v0 = one of 0x0, ret(__glXIsDirect).
- `__glXIsDirect` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8272e8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8272e8-0xd827438 (336 bytes).
  It occupies 336 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd827328, `lw` at 0xd8273e0.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd82733c, `lw` at 0xd827354, `lw` at 0xd827380.
  The `lw` at 0xd827340 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd827358 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd827368, `sw` at 0xd827384.
  The `sh` at 0xd827390 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd827394, `sb` at 0xd8273c0.
  The `lw` at 0xd827398 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8273ac stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8273b0 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd8273b8 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd8273d0 stores 4 bytes to [a0+108] +0x4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8273ec, `lw` at 0xd827404.
  The `lw` at 0xd8273f0 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xd82730c calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd827348 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd827374 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8273d8 calls _XReply with a0=a0 at entry (arg0), a1=sp-36, a2=0x0, a3=0x0.
  The `jalr` at 0xd8273f8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd827414 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd827318 targets 0xd82732c, is taken when v0(=ret(__glXSetupForCommand)) == 0, and falls through when v0(=ret(__glXSetupForCommand)) != 0.
  The `bnel` branch at 0xd827324 targets 0xd827338, is taken when t6(=a1) != 0, and falls through when t6(=a1) == 0; its branch-likely delay slot `lw v1,1232(s0)` at 0xd827328 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82732c targets 0xd827424 and is always taken.
  The `beql` branch at 0xd827338 targets 0xd827358, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd82733c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd827364 targets 0xd827388, is taken when t7(=[a0+112]) >= t8(=[a0+108]+8) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+8) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd827368 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8273e8 targets 0xd827408, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8273ec runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd82740c targets 0xd827424, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lbu v0,52(sp)` at 0xd827410 runs only when taken and is annulled on fall-through.
  The return at 0xd827430 has v0 = one of 0x0, ?.
  The instructions from 0xd827334 to 0xd827334 are not reached by any path from the entry, and their branches are not listed.
- `glXCopyContext` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd827438 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd827438-0xd827654 (540 bytes).
  It occupies 540 bytes.
  The `lw` at 0xd827448 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd827464 loads 4 bytes from [0x1014] +0x114.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x14, including `lw` at 0xd8274b4, `lw` at 0xd8274d8, `lw` at 0xd8275f4.
  The `lw` at 0xd8274c4 loads 4 bytes from a1 (arg1 at entry) +0xc4.
  The `lw` at 0xd8274f0 loads 4 bytes from a2 (arg2 at entry) +0xc4.
  The `lw` at 0xd8274fc loads 4 bytes from a2 (arg2 at entry) +0xc8.
  The `lw` at 0xd827500 loads 4 bytes from a1 (arg1 at entry) +0xc8.
  The `lw` at 0xd827508 loads 4 bytes from [a2+200] +0x78.
  The `lw` at 0xd827528 loads 4 bytes from [[0x1014]+276] +0x3c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd82752c, `lw` at 0xd827608.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd827534, `lw` at 0xd827560, `lw` at 0xd8275a0.
  The `lw` at 0xd827540 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd827564 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd827574, `sw` at 0xd8275a4.
  The `sh` at 0xd8275b0 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8275b4, `sb` at 0xd8275e0.
  The `lw` at 0xd8275b8 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8275cc stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8275d0 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd8275d8 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd8275e4 loads 4 bytes from a1 (arg1 at entry) +0x14.
  The `sw` at 0xd8275ec stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xd8275f8 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xd827600 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd827604 stores 4 bytes to [a0+108] +0xc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd827610, `lw` at 0xd82762c.
  The `lw` at 0xd827618 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xd82746c calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8274b0 calls __glXPostError with a0=a0 at entry (arg0), a1=0x2, a2=0xa, a3=[a2+20].
  The `jalr` at 0xd8274d4 calls __glXPostError with a0=a0 at entry (arg0), a1=0xa, a2=0xa, a3=[a2+20].
  The `jalr` at 0xd82750c calls (unknown callee) with a0=[a2+200], a1=[a1+200], a2=a3 at entry (arg3), a3=a1 at entry (arg1).
  The `jalr` at 0xd827544 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=a1 at entry (arg1).
  The `jalr` at 0xd827584 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=a1 at entry (arg1).
  The `jalr` at 0xd82761c calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+108], a2=0xa, a3=a1 at entry (arg1).
  The `jalr` at 0xd827638 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd827488 targets 0xd827644, is taken when v0(=ret(__glXSetupForCommand)) == 0, and falls through when v0(=ret(__glXSetupForCommand)) != 0.
  The `beq` branch at 0xd827490 targets 0xd827644, is taken when a3(=a1) == 0, and falls through when a3(=a1) != 0.
  The `beq` branch at 0xd82749c targets 0xd8274c0, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0xd8274b8 targets 0xd827644 and is always taken.
  The `bnel` branch at 0xd8274c0 targets 0xd8274e8, is taken when t0(=a2) != v1(=[[0x1014]+276]), and falls through when t0(=a2) == v1(=[[0x1014]+276]); its branch-likely delay slot `lw t9,196(a3)` at 0xd8274c4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8274dc targets 0xd827644 and is always taken.
  The `beq` branch at 0xd8274e8 targets 0xd82751c, is taken when t9(=[a1+196]) == 0, and falls through when t9(=[a1+196]) != 0.
  The `beq` branch at 0xd8274f4 targets 0xd82751c, is taken when t2(=[a2+196]) == 0, and falls through when t2(=[a2+196]) != 0.
  The `beq` branch at 0xd827514 targets 0xd827644 and is always taken.
  The `bne` branch at 0xd82751c targets 0xd82752c, is taken when a3(=a1) != v1(=[[0x1014]+276]), and falls through when a3(=a1) == v1(=[[0x1014]+276]).
  The `beq` branch at 0xd827524 targets 0xd82752c and is always taken.
  The `beql` branch at 0xd827530 targets 0xd827564, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(a0)` at 0xd827534 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd827570 targets 0xd8275a8, is taken when t3(=[a0+112]) >= t4(=[a0+108]+20) (unsigned), and falls through when t3(=[a0+112]) < t4(=[a0+108]+20) (unsigned); its branch-likely delay slot `sw v1,100(a0)` at 0xd827574 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8275e8 targets 0xd8275f8, is taken when t0(=a2) == 0, and falls through when t0(=a2) != 0.
  The `beq` branch at 0xd8275f0 targets 0xd8275f8 and is always taken.
  The `beql` branch at 0xd82760c targets 0xd827630, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(a0)` at 0xd827610 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd827630 targets 0xd827648, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd827634 runs only when taken and is annulled on fall-through.
  The return at 0xd82764c has v0 = one of [a0+124], ?.
  The instructions from 0xd8274e4 to 0xd8274e4 are not reached by any path from the entry, and their branches are not listed.
- `__glXConvolutionParameterivEXT_size` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8277c0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8277c0-0xd8277f4 (52 bytes).
  It occupies 52 bytes.
  The `jalr` at 0xd8277d8 calls __glXConvolutionParameterfvEXT_size with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd8277ec has v0 = ret(__glXConvolutionParameterfvEXT_size).
- `__glXConvolutionParameterfvEXT_size` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8277f4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8277f4-0xd827848 (84 bytes).
  It occupies 84 bytes.
  The `beq` branch at 0xd8277f8 targets 0xd827838, is taken when a0 == at(=0x8013), and falls through when a0 != at(=0x8013).
  The `beq` branch at 0xd827800 targets 0xd827828, is taken when a0 == at(=0x8014), and falls through when a0 != at(=0x8014).
  The `beq` branch at 0xd827808 targets 0xd827820, is taken when a0 == at(=0x8015), and falls through when a0 != at(=0x8015).
  The `beq` branch at 0xd827810 targets 0xd827830, is taken when a0 == at(=0x8154), and falls through when a0 != at(=0x8154).
  The `beq` branch at 0xd827818 targets 0xd827840 and is always taken.
  The return at 0xd827820 has v0 = 0x4.
  The return at 0xd827828 has v0 = 0x4.
  The return at 0xd827830 has v0 = 0x4.
  The return at 0xd827838 has v0 = 0x1.
  The return at 0xd827840 has v0 = 0x0.
- `__glXMaterialiv_size` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd827848 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd827848-0xd82787c (52 bytes).
  It occupies 52 bytes.
  The `jalr` at 0xd827860 calls __glXMaterialfv_size with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd827874 has v0 = ret(__glXMaterialfv_size).
- `__glXMaterialfv_size` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82787c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82787c-0xd827900 (132 bytes).
  It occupies 132 bytes.
  The `beq` branch at 0xd827880 targets 0xd8278d0, is taken when a0 == at(=0x1200), and falls through when a0 != at(=0x1200).
  The `beq` branch at 0xd827888 targets 0xd8278d8, is taken when a0 == at(=0x1201), and falls through when a0 != at(=0x1201).
  The `beq` branch at 0xd827890 targets 0xd8278e0, is taken when a0 == at(=0x1202), and falls through when a0 != at(=0x1202).
  The `beq` branch at 0xd827898 targets 0xd8278c8, is taken when a0 == at(=0x1600), and falls through when a0 != at(=0x1600).
  The `beq` branch at 0xd8278a0 targets 0xd8278c0, is taken when a0 == at(=0x1601), and falls through when a0 != at(=0x1601).
  The `beq` branch at 0xd8278a8 targets 0xd8278e8, is taken when a0 == at(=0x1602), and falls through when a0 != at(=0x1602).
  The `beq` branch at 0xd8278b0 targets 0xd8278f0, is taken when a0 == at(=0x1603), and falls through when a0 != at(=0x1603).
  The `beq` branch at 0xd8278b8 targets 0xd8278f8 and is always taken.
  The return at 0xd8278c0 has v0 = 0x1.
  The return at 0xd8278c8 has v0 = 0x4.
  The return at 0xd8278d0 has v0 = 0x4.
  The return at 0xd8278d8 has v0 = 0x4.
  The return at 0xd8278e0 has v0 = 0x4.
  The return at 0xd8278e8 has v0 = 0x4.
  The return at 0xd8278f0 has v0 = 0x3.
  The return at 0xd8278f8 has v0 = 0x0.
- `__glXLightModeliv_size` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd827900 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd827900-0xd827934 (52 bytes).
  It occupies 52 bytes.
  The `jalr` at 0xd827918 calls __glXLightModelfv_size with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd82792c has v0 = ret(__glXLightModelfv_size).
- `__glXLightModelfv_size` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd827934 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd827934-0xd827988 (84 bytes).
  It occupies 84 bytes.
  The `beq` branch at 0xd827938 targets 0xd827968, is taken when a0 == at(=0xb51), and falls through when a0 != at(=0xb51).
  The `beq` branch at 0xd827940 targets 0xd827970, is taken when a0 == at(=0xb52), and falls through when a0 != at(=0xb52).
  The `beq` branch at 0xd827948 targets 0xd827960, is taken when a0 == at(=0xb53), and falls through when a0 != at(=0xb53).
  The `beq` branch at 0xd827950 targets 0xd827978, is taken when a0 == at(=0x81f8), and falls through when a0 != at(=0x81f8).
  The `beq` branch at 0xd827958 targets 0xd827980 and is always taken.
  The return at 0xd827960 has v0 = 0x4.
  The return at 0xd827968 has v0 = 0x1.
  The return at 0xd827970 has v0 = 0x1.
  The return at 0xd827978 has v0 = 0x1.
  The return at 0xd827980 has v0 = 0x0.
- `__glXLightiv_size` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd827988 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd827988-0xd8279bc (52 bytes).
  It occupies 52 bytes.
  The `jalr` at 0xd8279a0 calls __glXLightfv_size with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd8279b4 has v0 = ret(__glXLightfv_size).
- `__glXColorTableParameterfvSGI_size` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8279bc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8279bc-0xd8279e0 (36 bytes).
  It occupies 36 bytes.
  The `beq` branch at 0xd8279c0 targets 0xd8279d0, is taken when a0 == at(=0x80d6), and falls through when a0 != at(=0x80d6).
  The `bne` branch at 0xd8279c8 targets 0xd8279d8, is taken when a0 != at(=0x80d7), and falls through when a0 == at(=0x80d7).
  The return at 0xd8279d0 has v0 = 0x4.
  The return at 0xd8279d8 has v0 = 0x0.
- `__glXBufCalloc` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8279e0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8279e0-0xd827a58 (120 bytes).
  It occupies 120 bytes.
  The `jalr` at 0xd827a20 calls __glXBufMalloc with a0=?, a1=a1 at entry (arg1), a2=?, a3=a0 at entry (arg0).
  The `jalr` at 0xd827a3c calls memset with a0=ret(__glXBufMalloc), a1=0x0, a2=?, a3=?.
  The `beq` branch at 0xd8279f8 targets 0xd827a08, is taken when a0 == 0, and falls through when a0 != 0.
  The `bne` branch at 0xd827a00 targets 0xd827a10, is taken when a1 != 0, and falls through when a1 == 0.
  The `beq` branch at 0xd827a08 targets 0xd827a48 and is always taken.
  The return at 0xd827a50 has v0 = one of 0x0, ret(memset).
- `__glXBufMalloc` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd827a58 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd827a58-0xd827b20 (200 bytes).
  It occupies 200 bytes.
  The `sw` at 0xd827b08 stores 4 bytes to ret(mmap) +0x0.
  The `jalr` at 0xd827a8c calls open with a0=0xd841554, a1=0x2, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd827ac0 calls mmap with a0=0x0, a1=a0+8, a2=0x3, a3=0x2.
  The `jalr` at 0xd827ad8 calls close with a0=ret(open), a1=?, a2=?, a3=?.
  The `bne` branch at 0xd827a70 targets 0xd827a80, is taken when a0 != 0, and falls through when a0 == 0.
  The `beq` branch at 0xd827a78 targets 0xd827b10 and is always taken.
  The `beq` branch at 0xd827a98 targets 0xd827aec, is taken when v0(=ret(open)) == at(=-0x1), and falls through when v0(=ret(open)) != at(=-0x1).
  The `beq` branch at 0xd827ae4 targets 0xd827af4 and is always taken.
  The `beq` branch at 0xd827aec targets 0xd827b10 and is always taken.
  The `bne` branch at 0xd827af8 targets 0xd827b08, is taken when v1(=ret(mmap)) != at(=-0x1), and falls through when v1(=ret(mmap)) == at(=-0x1).
  The `beq` branch at 0xd827b00 targets 0xd827b10 and is always taken.
  The return at 0xd827b18 has v0 = one of 0x0, ret(mmap)+8.
- `__glXFatal` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd827b20 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd827b20-0xd827bbc (156 bytes).
  It occupies 156 bytes.
  The `jalr` at 0xd827b58 calls fprintf with a0=sym(__iob)+32, a1=0xd841544, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd827b74 calls vfprintf with a0=sym(__iob)+32, a1=a1 at entry (arg1), a2=sp+8, a3=?.
  The `jalr` at 0xd827b90 calls fprintf with a0=sym(__iob)+32, a1=0xd841550, a2=?, a3=?.
  The `jalr` at 0xd827ba0 calls abort with a0=?, a1=?, a2=?, a3=?.
  The return at 0xd827bb4 has v0 = ret(abort).
- `__glXWarning` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd827bbc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd827bbc-0xd827c48 (140 bytes).
  It occupies 140 bytes.
  The `jalr` at 0xd827bf4 calls fprintf with a0=sym(__iob)+32, a1=0xd841530, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd827c10 calls vfprintf with a0=sym(__iob)+32, a1=a1 at entry (arg1), a2=sp+8, a3=?.
  The `jalr` at 0xd827c2c calls fprintf with a0=sym(__iob)+32, a1=0xd841540, a2=?, a3=?.
  The return at 0xd827c40 has v0 = ret(fprintf).
- `__glXRealloc` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd827c48 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd827c48-0xd827ca8 (96 bytes).
  It occupies 96 bytes.
  The `jalr` at 0xd827c6c calls __glXFree with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a1 at entry (arg1).
  The `jalr` at 0xd827c8c calls realloc with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=a1 at entry (arg1).
  The `bne` branch at 0xd827c60 targets 0xd827c80, is taken when a2 != 0, and falls through when a2 == 0.
  The `beq` branch at 0xd827c78 targets 0xd827c98 and is always taken.
  The return at 0xd827ca0 has v0 = one of 0x0, ret(realloc).
- `__glXFree` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd827ca8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd827ca8-0xd827cec (68 bytes).
  It occupies 68 bytes.
  The `jalr` at 0xd827cd0 calls free with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd827cc4 targets 0xd827cdc, is taken when a1 == 0, and falls through when a1 != 0.
  The return at 0xd827ce4 has v0 = one of ?, ret(free).
- `__glXColorTableParameterivSGI_size` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd827cec (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd827cec-0xd827d20 (52 bytes).
  It occupies 52 bytes.
  The `jalr` at 0xd827d04 calls __glXColorTableParameterfvSGI_size with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd827d18 has v0 = ret(__glXColorTableParameterfvSGI_size).
- `__glXLightfv_size` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd827d20 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd827d20-0xd827db0 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd827d48 loads 4 bytes from (a0-4608 << 0x2) +0xd8414e0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd827d50).
  The `beq` branch at 0xd827d34 targets 0xd827da8, is taken when t6(=a0-4608) >= 0xa (unsigned), and falls through when t6(=a0-4608) < 0xa (unsigned).
  The return at 0xd827da8 has v0 = 0x0.
  The instructions from 0xd827d58 to 0xd827da4 are not reached by any path from the entry, and their branches are not listed.
- `__glXTexGendv_size` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd827db0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd827db0-0xd827dec (60 bytes).
  It occupies 60 bytes.
  The `beq` branch at 0xd827db4 targets 0xd827dd4, is taken when a0 == at(=0x2500), and falls through when a0 != at(=0x2500).
  The `beq` branch at 0xd827dbc targets 0xd827ddc, is taken when a0 == at(=0x2501), and falls through when a0 != at(=0x2501).
  The `beq` branch at 0xd827dc4 targets 0xd827ddc, is taken when a0 == at(=0x2502), and falls through when a0 != at(=0x2502).
  The `beq` branch at 0xd827dcc targets 0xd827de4 and is always taken.
  The return at 0xd827dd4 has v0 = 0x1.
  The return at 0xd827ddc has v0 = 0x4.
  The return at 0xd827de4 has v0 = 0x0.
- `__glXCallLists_size` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd827dec (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd827dec-0xd827ea0 (180 bytes).
  It occupies 180 bytes.
  The `lw` at 0xd827e20 loads 4 bytes from (a1-5120 << 0x2) +0xd841338.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd827e28).
  The `bgez` branch at 0xd827df8 targets 0xd827e08, is taken when a0 >= 0 (signed), and falls through when a0 < 0 (signed).
  The `beq` branch at 0xd827e0c targets 0xd827e80, is taken when t6(=a1-5120) >= 0xa (unsigned), and falls through when t6(=a1-5120) < 0xa (unsigned).
  The return at 0xd827e00 has v0 = 0x0.
  The return at 0xd827e80 has v0 = 0x0.
  The instructions from 0xd827e30 to 0xd827e7c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd827e88 to 0xd827e9c are not reached by any path from the entry, and their branches are not listed.
- `__glXFogfv_size` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd827ea0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd827ea0-0xd827ed4 (52 bytes).
  It occupies 52 bytes.
  The `jalr` at 0xd827eb8 calls __glXFogiv_size with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd827ecc has v0 = ret(__glXFogiv_size).
- `__glXFogiv_size` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd827ed4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd827ed4-0xd827f44 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xd827efc loads 4 bytes from (a0-2913 << 0x2) +0xd841320.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd827f04).
  The `beq` branch at 0xd827ee8 targets 0xd827f3c, is taken when t6(=a0-2913) >= 0x6 (unsigned), and falls through when t6(=a0-2913) < 0x6 (unsigned).
  The return at 0xd827f3c has v0 = 0x0.
  The instructions from 0xd827f0c to 0xd827f38 are not reached by any path from the entry, and their branches are not listed.
- `glXGetFBConfigFromVisualSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd827f44 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd827f44-0xd82806c (296 bytes).
  It occupies 296 bytes.
  The `lw` at 0xd827f80 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0xd827f90 loads 4 bytes from a0 (arg0 at entry) +0x88.
  The `lw` at 0xd827f9c loads 4 bytes from ret(__glXInitialize) +0x20.
  The `lw` at 0xd827fb4 loads 4 bytes from ([ret(__glXInitialize)+32] + ([a1+8] << 0x5)) +0xc.
  The `lw` at 0xd827fb8 loads 4 bytes from ([ret(__glXInitialize)+32] + ([a1+8] << 0x5)) +0x10.
  The `lw` at 0xd827fcc loads 4 bytes from a1 (arg1 at entry) +0x4.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd827fd4, `lw` at 0xd82801c, `lw` at 0xd82802c.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd828028, `sw` at 0xd828030, `sw` at 0xd82803c.
  The `jalr` at 0xd827f64 calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd827ff0 calls malloc with a0=0xe8, a1=[a1+4], a2=[([ret(__glXInitialize)+32] + ([a1+8] << 0x5))+12], a3=a1 at entry (arg1).
  The `bne` branch at 0xd827f70 targets 0xd827f80, is taken when v0(=ret(__glXInitialize)) != 0, and falls through when v0(=ret(__glXInitialize)) == 0.
  The `beq` branch at 0xd827f78 targets 0xd82805c and is always taken.
  The `bltz` branch at 0xd827f88 targets 0xd827fa0, is taken when a1(=[a1+8]) < 0 (signed), and falls through when a1(=[a1+8]) >= 0 (signed).
  The `bnel` branch at 0xd827f98 targets 0xd827fac, is taken when a1(=[a1+8]) < t7(=[a0+136]) (signed), and falls through when a1(=[a1+8]) >= t7(=[a0+136]) (signed); its branch-likely delay slot `lw t8,32(v0)` at 0xd827f9c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd827fa0 targets 0xd82805c and is always taken.
  The `beql` branch at 0xd827fbc targets 0xd82805c, is taken when a2(=[([ret(__glXInitialize)+32] + ([a1+8] << 0x5))+12]) == 0, and falls through when a2(=[([ret(__glXInitialize)+32] + ([a1+8] << 0x5))+12]) != 0; its branch-likely delay slot `or v0,zero,zero` at 0xd827fc0 runs only when taken and is annulled on fall-through.
  The `blez` branch at 0xd827fc4 targets 0xd828058, is taken when a0(=[([ret(__glXInitialize)+32] + ([a1+8] << 0x5))+16]) <= 0 (signed), and falls through when a0(=[([ret(__glXInitialize)+32] + ([a1+8] << 0x5))+16]) > 0 (signed).
  The `bne` branch at 0xd827fdc targets 0xd828050, is taken when a1(=[a1+4]) != t0(?), and falls through when a1(=[a1+4]) == t0(?).
  The `bne` branch at 0xd828000 targets 0xd828010, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0xd828008 targets 0xd82805c and is always taken.
  The `bne` branch at 0xd828038 targets 0xd82801c, is taken when t3(?) != t5(?), and falls through when t3(?) == t5(?).
  The `beq` branch at 0xd828048 targets 0xd82805c and is always taken.
  The `bne` branch at 0xd828050 targets 0xd827fd4, is taken when v0(?) != a0(=[([ret(__glXInitialize)+32] + ([a1+8] << 0x5))+16]), and falls through when v0(?) == a0(=[([ret(__glXInitialize)+32] + ([a1+8] << 0x5))+16]).
  The return at 0xd828064 has v0 = one of 0x0, ret(malloc).
  The instructions from 0xd827fa8 to 0xd827fa8 are not reached by any path from the entry, and their branches are not listed.
- `glXGetVisualFromFBConfigSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82806c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82806c-0xd8280a0 (52 bytes).
  It occupies 52 bytes.
  The `jalr` at 0xd828084 calls glXGetVisualFromFBConfig with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd828098 has v0 = ret(glXGetVisualFromFBConfig).
- `glXCreateContextWithConfigSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8280a0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8280a0-0xd82810c (108 bytes).
  It occupies 108 bytes.
  The `jalr` at 0xd8280f0 calls CreateContext [0xd80f618] with a0=a0 at entry (arg0), a1=0x0, a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The return at 0xd828104 has v0 = ret(CreateContext).
- `__glXTexGenfv_size` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82810c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82810c-0xd828140 (52 bytes).
  It occupies 52 bytes.
  The `jalr` at 0xd828124 calls __glXTexGendv_size with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd828138 has v0 = ret(__glXTexGendv_size).
- `__glXTexImage2D_size` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd828140 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd828140-0xd828334 (500 bytes).
  It occupies 500 bytes.
  The `lw` at 0xd828184 loads 4 bytes from (a0-6400 << 0x2) +0xd841468.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd82818c).
  The `bgez` branch at 0xd82814c targets 0xd82815c, is taken when a2 >= 0 (signed), and falls through when a2 < 0 (signed).
  The `bgez` branch at 0xd82815c targets 0xd82816c, is taken when a3 >= 0 (signed), and falls through when a3 < 0 (signed).
  The `beq` branch at 0xd828170 targets 0xd828200, is taken when t6(=a0-6400) >= 0xb (unsigned), and falls through when t6(=a0-6400) < 0xb (unsigned).
  The return at 0xd828154 has v0 = 0x0.
  The return at 0xd828164 has v0 = 0x0.
  The return at 0xd828200 has v0 = 0x0.
  The instructions from 0xd828194 to 0xd8281fc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd828208 to 0xd828330 are not reached by any path from the entry, and their branches are not listed.
- `__glXTexImage1D_size` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd828334 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd828334-0xd828500 (460 bytes).
  It occupies 460 bytes.
  The `lw` at 0xd828368 loads 4 bytes from (a0-6400 << 0x2) +0xd8413f0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd828370).
  The `bgez` branch at 0xd828340 targets 0xd828350, is taken when a2 >= 0 (signed), and falls through when a2 < 0 (signed).
  The `beq` branch at 0xd828354 targets 0xd8283e4, is taken when t6(=a0-6400) >= 0xb (unsigned), and falls through when t6(=a0-6400) < 0xb (unsigned).
  The return at 0xd828348 has v0 = 0x0.
  The return at 0xd8283e4 has v0 = 0x0.
  The instructions from 0xd828378 to 0xd8283e0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8283ec to 0xd8284fc are not reached by any path from the entry, and their branches are not listed.
- `__glXTexEnviv_size` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd828500 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd828500-0xd828534 (52 bytes).
  It occupies 52 bytes.
  The `jalr` at 0xd828518 calls __glXTexEnvfv_size with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd82852c has v0 = ret(__glXTexEnvfv_size).
- `__glXTexEnvfv_size` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd828534 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd828534-0xd828568 (52 bytes).
  It occupies 52 bytes.
  The `beq` branch at 0xd828538 targets 0xd828550, is taken when a0 == at(=0x2200), and falls through when a0 != at(=0x2200).
  The `beq` branch at 0xd828540 targets 0xd828558, is taken when a0 == at(=0x2201), and falls through when a0 != at(=0x2201).
  The `beq` branch at 0xd828548 targets 0xd828560 and is always taken.
  The return at 0xd828550 has v0 = 0x1.
  The return at 0xd828558 has v0 = 0x4.
  The return at 0xd828560 has v0 = 0x0.
- `__glXTexParameteriv_size` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd828568 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd828568-0xd82859c (52 bytes).
  It occupies 52 bytes.
  The `jalr` at 0xd828580 calls __glXTexParameterfv_size with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd828594 has v0 = ret(__glXTexParameterfv_size).
- `__glXTexParameterfv_size` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82859c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82859c-0xd8286e8 (332 bytes).
  It occupies 332 bytes.
  The `lw` at 0xd828624 loads 4 bytes from (a0-33137 << 0x2) +0xd841360.
  The `lw` at 0xd828664 loads 4 bytes from (a0-33060 << 0x2) +0xd841388.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd82862c).
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd82866c).
  The `bne` branch at 0xd8285b0 targets 0xd828690, is taken when a0 < at(=0x8073) (unsigned), and falls through when a0 >= at(=0x8073) (unsigned).
  The `bne` branch at 0xd8285bc targets 0xd828634, is taken when a0 < at(=0x813e) (unsigned), and falls through when a0 >= at(=0x813e) (unsigned).
  The `bnel` branch at 0xd8285c8 targets 0xd8285e4, is taken when a0 < v0(=0x819b) (unsigned), and falls through when a0 >= v0(=0x819b) (unsigned); its branch-likely delay slot `ori at,zero,0x817b` at 0xd8285cc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8285d0 targets 0xd8286c4, is taken when a0 == v0(=0x819b), and falls through when a0 != v0(=0x819b).
  The `beq` branch at 0xd8285d8 targets 0xd8286e0 and is always taken.
  The `bne` branch at 0xd8285e8 targets 0xd828600, is taken when a0 < at(=0x817b) (unsigned), and falls through when a0 >= at(=0x817b) (unsigned).
  The `beq` branch at 0xd8285f0 targets 0xd8286c4, is taken when a0 == at(=0x819a), and falls through when a0 != at(=0x819a).
  The `beq` branch at 0xd8285f8 targets 0xd8286e0 and is always taken.
  The `beql` branch at 0xd828610 targets 0xd8286e0, is taken when t6(=a0-33137) >= 0xa (unsigned), and falls through when t6(=a0-33137) < 0xa (unsigned); its branch-likely delay slot `or v0,zero,zero` at 0xd828614 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd82863c targets 0xd828674, is taken when a0 < at(=0x809c) (unsigned), and falls through when a0 >= at(=0x809c) (unsigned).
  The `beql` branch at 0xd828650 targets 0xd8286e0, is taken when t7(=a0-33060) >= 0x1a (unsigned), and falls through when t7(=a0-33060) < 0x1a (unsigned); its branch-likely delay slot `or v0,zero,zero` at 0xd828654 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd828678 targets 0xd8286c4, is taken when a0 == at(=0x809a), and falls through when a0 != at(=0x809a).
  The `beq` branch at 0xd828680 targets 0xd8286c4, is taken when a0 == at(=0x809b), and falls through when a0 != at(=0x809b).
  The `beq` branch at 0xd828688 targets 0xd8286e0 and is always taken.
  The `beq` branch at 0xd828694 targets 0xd8286d4, is taken when a0 == at(=0x1004), and falls through when a0 != at(=0x1004).
  The `beq` branch at 0xd82869c targets 0xd8286c4, is taken when a0 == at(=0x2800), and falls through when a0 != at(=0x2800).
  The `beq` branch at 0xd8286a4 targets 0xd8286c4, is taken when a0 == at(=0x2801), and falls through when a0 != at(=0x2801).
  The `beq` branch at 0xd8286ac targets 0xd8286c4, is taken when a0 == at(=0x2802), and falls through when a0 != at(=0x2802).
  The `beq` branch at 0xd8286b4 targets 0xd8286c4, is taken when a0 == at(=0x2803), and falls through when a0 != at(=0x2803).
  The `bnel` branch at 0xd8286bc targets 0xd8286e0, is taken when a0 != at(=0x8072), and falls through when a0 == at(=0x8072); its branch-likely delay slot `or v0,zero,zero` at 0xd8286c0 runs only when taken and is annulled on fall-through.
  The return at 0xd8286c4 has v0 = 0x1.
  The return at 0xd8286d4 has v0 = 0x4.
  The return at 0xd8286e0 has v0 = 0x0.
  The instructions from 0xd8285e0 to 0xd8285e0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8286cc to 0xd8286d0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8286dc to 0xd8286dc are not reached by any path from the entry, and their branches are not listed.
- `__glXTexGeniv_size` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8286e8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8286e8-0xd82871c (52 bytes).
  It occupies 52 bytes.
  The `jalr` at 0xd828700 calls __glXTexGendv_size with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd828714 has v0 = ret(__glXTexGendv_size).
- `__glx_PixelStorei` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82871c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82871c-0xd828c68 (1356 bytes).
  It occupies 1356 bytes.
  The `lw` at 0xd82872c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82873c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd828748 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd828808 loads 4 bytes from (a0-3312 << 0x2) +0xd841fe8.
  8 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xb0, including `lw` at 0xd828848, `lw` at 0xd828898, `lw` at 0xd828954.
  8 such `sw` accesses store 4 bytes to [[0x1014]+276] +0xb0, including `sw` at 0xd82885c, `sw` at 0xd8288ac, `sw` at 0xd828974.
  The `sw` at 0xd828864 stores 4 bytes to [[0x1014]+276] +0x54.
  The `sw` at 0xd8288b4 stores 4 bytes to [[0x1014]+276] +0x64.
  The `sw` at 0xd82895c stores 4 bytes to [[0x1014]+276] +0x70.
  The `sw` at 0xd828988 stores 4 bytes to [[0x1014]+276] +0x74.
  The `sw` at 0xd8289f0 stores 4 bytes to [[0x1014]+276] +0x80.
  The `sw` at 0xd828a68 stores 4 bytes to [[0x1014]+276] +0x90.
  The `sw` at 0xd828ae8 stores 4 bytes to [[0x1014]+276] +0x9c.
  The `sw` at 0xd828b1c stores 4 bytes to [[0x1014]+276] +0xa0.
  The `lw` at 0xd828b3c loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd828b60, `lw` at 0xd828c10.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd828b68, `lw` at 0xd828b90, `lw` at 0xd828bc8.
  The `lw` at 0xd828b74 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd828b94 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd828ba4, `sw` at 0xd828bcc.
  The `sh` at 0xd828bd4 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd828bd8, `sb` at 0xd828c00.
  The `lw` at 0xd828bdc loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd828bf0 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd828bf4 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd828bf8 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd828bfc stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd828c04 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd828c08 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd828c0c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd828c18, `lw` at 0xd828c38.
  The `lw` at 0xd828c20 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a1 at entry (arg1), a3=[[[0x1014]+276]+216] (`jr` at 0xd828810).
  The `jalr` at 0xd828b4c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a1 at entry (arg1), a3=[[[0x1014]+276]+216].
  The `jalr` at 0xd828b7c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=a1 at entry (arg1), a3=[[[0x1014]+276]+216].
  The `jalr` at 0xd828bb4 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=a1 at entry (arg1), a3=[[[0x1014]+276]+216].
  The `jalr` at 0xd828c28 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=a1 at entry (arg1), a3=[[[0x1014]+276]+216].
  The `jalr` at 0xd828c48 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[0x1014]+276]+216].
  The `beql` branch at 0xd828750 targets 0xd828c58, is taken when a3(=[[[0x1014]+276]+216]) == 0, and falls through when a3(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd828754 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd828758 targets 0xd82878c, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xd828764 targets 0xd828978, is taken when a0 == at(=0x842c), and falls through when a0 != at(=0x842c).
  The `beq` branch at 0xd82876c targets 0xd828b04, is taken when a0 == at(=0x842d), and falls through when a0 != at(=0x842d).
  The `beq` branch at 0xd828774 targets 0xd82893c, is taken when a0 == at(=0x85a0), and falls through when a0 != at(=0x85a0).
  The `beql` branch at 0xd82877c targets 0xd828acc, is taken when a0 == at(=0x85a1), and falls through when a0 != at(=0x85a1); its branch-likely delay slot `ori at,zero,0x85a2` at 0xd828780 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd828784 targets 0xd828b38 and is always taken.
  The `bnel` branch at 0xd828790 targets 0xd8287b4, is taken when a0 < v0(=0x806d) (unsigned), and falls through when a0 >= v0(=0x806d) (unsigned); its branch-likely delay slot `ori v0,zero,0x806c` at 0xd828794 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd828798 targets 0xd828a44, is taken when a0 == v0(=0x806d), and falls through when a0 != v0(=0x806d).
  The `beq` branch at 0xd8287a0 targets 0xd8289cc, is taken when a0 == at(=0x806e), and falls through when a0 != at(=0x806e).
  The `beq` branch at 0xd8287a8 targets 0xd828b38 and is always taken.
  The `bnel` branch at 0xd8287b8 targets 0xd8287d4, is taken when a0 < v0(=0x806c) (unsigned), and falls through when a0 >= v0(=0x806c) (unsigned); its branch-likely delay slot `sltiu at,a0,3334` at 0xd8287bc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8287c0 targets 0xd828840, is taken when a0 == v0(=0x806c), and falls through when a0 != v0(=0x806c).
  The `beq` branch at 0xd8287c8 targets 0xd828b38 and is always taken.
  The `bne` branch at 0xd8287d4 targets 0xd8287f0, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xd8287e0 targets 0xd828890, is taken when a0 == at(=0x806b), and falls through when a0 != at(=0x806b).
  The `beq` branch at 0xd8287e8 targets 0xd828b38 and is always taken.
  The `beq` branch at 0xd8287f4 targets 0xd828b38, is taken when t7(=a0-3312) >= 0x16 (unsigned), and falls through when t7(=a0-3312) < 0x16 (unsigned).
  The `bgez` branch at 0xd828840 targets 0xd828860, is taken when a2(=a1) >= 0 (signed), and falls through when a2(=a1) < 0 (signed).
  The `bnel` branch at 0xd828850 targets 0xd828c58, is taken when t0(=[[[0x1014]+276]+176]) != 0, and falls through when t0(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd828854 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd828858 targets 0xd828c54 and is always taken.
  The `beq` branch at 0xd828860 targets 0xd828c54 and is always taken.
  The `bgez` branch at 0xd828890 targets 0xd8288b0, is taken when a2(=a1) >= 0 (signed), and falls through when a2(=a1) < 0 (signed).
  The `bnel` branch at 0xd8288a0 targets 0xd828c58, is taken when t4(=[[[0x1014]+276]+176]) != 0, and falls through when t4(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd8288a4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8288a8 targets 0xd828c54 and is always taken.
  The `beq` branch at 0xd8288b0 targets 0xd828c54 and is always taken.
  The `beq` branch at 0xd828940 targets 0xd828958, is taken when a2(=a1) == at(=0x85a2), and falls through when a2(=a1) != at(=0x85a2).
  The `beq` branch at 0xd828948 targets 0xd828958, is taken when a2(=a1) == at(=0x85a3), and falls through when a2(=a1) != at(=0x85a3).
  The `bnel` branch at 0xd828950 targets 0xd828964, is taken when a2(=a1) != at(=0x85a4), and falls through when a2(=a1) == at(=0x85a4); its branch-likely delay slot `lw t2,176(s0)` at 0xd828954 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd828958 targets 0xd828c54 and is always taken.
  The `bnel` branch at 0xd828968 targets 0xd828c58, is taken when t2(=[[[0x1014]+276]+176]) != 0, and falls through when t2(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd82896c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd828970 targets 0xd828c54 and is always taken.
  The `bnel` branch at 0xd82897c targets 0xd828990, is taken when a2(=a1) != at(=0x8430), and falls through when a2(=a1) == at(=0x8430); its branch-likely delay slot `lw t4,176(s0)` at 0xd828980 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd828984 targets 0xd828c54 and is always taken.
  The `bnel` branch at 0xd828994 targets 0xd828c58, is taken when t4(=[[[0x1014]+276]+176]) != 0, and falls through when t4(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd828998 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82899c targets 0xd828c54 and is always taken.
  The `bgez` branch at 0xd8289cc targets 0xd8289ec, is taken when a2(=a1) >= 0 (signed), and falls through when a2(=a1) < 0 (signed).
  The `bnel` branch at 0xd8289d8 targets 0xd828c58, is taken when t8(=[[[0x1014]+276]+176]) != 0, and falls through when t8(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd8289dc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8289e4 targets 0xd828c54 and is always taken.
  The `beq` branch at 0xd8289ec targets 0xd828c54 and is always taken.
  The `bgez` branch at 0xd828a44 targets 0xd828a64, is taken when a2(=a1) >= 0 (signed), and falls through when a2(=a1) < 0 (signed).
  The `bnel` branch at 0xd828a54 targets 0xd828c58, is taken when t4(=[[[0x1014]+276]+176]) != 0, and falls through when t4(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd828a58 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd828a5c targets 0xd828c54 and is always taken.
  The `beq` branch at 0xd828a64 targets 0xd828c54 and is always taken.
  The `beq` branch at 0xd828acc targets 0xd828ae4, is taken when a2(=a1) == at(=0x85a2), and falls through when a2(=a1) != at(=0x85a2).
  The `beq` branch at 0xd828ad4 targets 0xd828ae4, is taken when a2(=a1) == at(=0x85a3), and falls through when a2(=a1) != at(=0x85a3).
  The `bnel` branch at 0xd828adc targets 0xd828af0, is taken when a2(=a1) != at(=0x85a4), and falls through when a2(=a1) == at(=0x85a4); its branch-likely delay slot `lw t0,176(s0)` at 0xd828ae0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd828ae4 targets 0xd828c54 and is always taken.
  The `bnel` branch at 0xd828af4 targets 0xd828c58, is taken when t0(=[[[0x1014]+276]+176]) != 0, and falls through when t0(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd828af8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd828afc targets 0xd828c54 and is always taken.
  The `beq` branch at 0xd828b08 targets 0xd828b18, is taken when a2(=a1) == at(=0x842e), and falls through when a2(=a1) != at(=0x842e).
  The `bnel` branch at 0xd828b10 targets 0xd828b24, is taken when a2(=a1) != at(=0x842f), and falls through when a2(=a1) == at(=0x842f); its branch-likely delay slot `lw t2,176(s0)` at 0xd828b14 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd828b18 targets 0xd828c54 and is always taken.
  The `bnel` branch at 0xd828b28 targets 0xd828c58, is taken when t2(=[[[0x1014]+276]+176]) != 0, and falls through when t2(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd828b2c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd828b30 targets 0xd828c54 and is always taken.
  The `beq` branch at 0xd828b38 targets 0xd828c54, is taken when a3(=[[[0x1014]+276]+216]) == 0, and falls through when a3(=[[[0x1014]+276]+216]) != 0.
  The `beql` branch at 0xd828b64 targets 0xd828b94, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw a0,108(a3)` at 0xd828b68 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd828ba0 targets 0xd828bd0, is taken when t4(=[[[[0x1014]+276]+216]+112]) >= t5(=[[[[0x1014]+276]+216]+108]+12) (unsigned), and falls through when t4(=[[[[0x1014]+276]+216]+112]) < t5(=[[[[0x1014]+276]+216]+108]+12) (unsigned); its branch-likely delay slot `sw a0,100(a3)` at 0xd828ba4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd828c14 targets 0xd828c3c, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(a3)` at 0xd828c18 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd828c40 targets 0xd828c58, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd828c44 runs only when taken and is annulled on fall-through.
  The return at 0xd828c60 has v0 = one of ?, 0x806c, 0x806d, [[[[0x1014]+276]+216]+124].
  The instructions from 0xd8287b0 to 0xd8287b0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8287d0 to 0xd8287d0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd828818 to 0xd82883c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd828868 to 0xd82888c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8288b8 to 0xd828938 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd828960 to 0xd828960 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd82898c to 0xd82898c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8289a4 to 0xd8289c8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8289f4 to 0xd828a40 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd828a6c to 0xd828ac8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd828aec to 0xd828aec are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd828b20 to 0xd828b20 are not reached by any path from the entry, and their branches are not listed.
- `__glx_Color4d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd828c70 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd828c70-0xd828d64 (244 bytes).
  It occupies 244 bytes.
  The `lw` at 0xd828c80 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd828c9c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd828ca8 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd828cb4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd828cb8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd828d20 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd828d34 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd828cc4 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=a3 at entry (arg3).
  The `jalr` at 0xd828ce0 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=sp+8, a2=0x8, a3=?.
  The `jalr` at 0xd828cfc calls memcpy with a0=[[[0x1014]+276]+4]+20, a1=sp+16, a2=0x8, a3=?.
  The `jalr` at 0xd828d18 calls memcpy with a0=[[[0x1014]+276]+4]+28, a1=sp+24, a2=0x8, a3=?.
  The `jalr` at 0xd828d44 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+36, a2=?, a3=?.
  The `beq` branch at 0xd828d30 targets 0xd828d50, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+36) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+36) (unsigned).
  The return at 0xd828d5c has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_Color4bv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd828d64 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd828d64-0xd828df4 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd828d70 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd828d80 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd828d8c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd828d90 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd828d94 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lb` at 0xd828d98 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `sb` at 0xd828da0 stores 1 byte to [[[0x1014]+276]+4] +0x4.
  The `lb` at 0xd828da4 loads 1 byte from a0 (arg0 at entry) +0x1.
  The `sb` at 0xd828da8 stores 1 byte to [[[0x1014]+276]+4] +0x5.
  The `lb` at 0xd828dac loads 1 byte from a0 (arg0 at entry) +0x2.
  The `sb` at 0xd828db0 stores 1 byte to [[[0x1014]+276]+4] +0x6.
  The `lb` at 0xd828db4 loads 1 byte from a0 (arg0 at entry) +0x3.
  The `sb` at 0xd828db8 stores 1 byte to [[[0x1014]+276]+4] +0x7.
  The `lw` at 0xd828dbc loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd828dc0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd828dd8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd828dc8 targets 0xd828de8, is taken when t3(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t3(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd828dcc runs only when taken and is annulled on fall-through.
  The return at 0xd828dec has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Color4b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd828df4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd828df4-0xd828eb4 (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0xd828e04 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd828e28 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd828e34 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd828e58 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd828e5c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sb` at 0xd828e60 stores 1 byte to [[[0x1014]+276]+4] +0x4.
  The `sb` at 0xd828e64 stores 1 byte to [[[0x1014]+276]+4] +0x5.
  The `sb` at 0xd828e68 stores 1 byte to [[[0x1014]+276]+4] +0x6.
  The `sb` at 0xd828e6c stores 1 byte to [[[0x1014]+276]+4] +0x7.
  The `lw` at 0xd828e70 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd828e78 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd828e94 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=?, a3=?.
  The `beql` branch at 0xd828e80 targets 0xd828ea4, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd828e84 runs only when taken and is annulled on fall-through.
  The return at 0xd828eac has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Color3usv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd828eb4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd828eb4-0xd828f3c (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd828ec0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd828ed0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd828edc loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd828ee0 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd828ee4 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lhu` at 0xd828ee8 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xd828ef0 stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `lhu` at 0xd828ef4 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xd828ef8 stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `lhu` at 0xd828efc loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xd828f00 stores 2 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd828f04 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd828f08 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd828f20 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd828f10 targets 0xd828f30, is taken when t2(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd828f14 runs only when taken and is annulled on fall-through.
  The return at 0xd828f34 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Color3us` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd828f3c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd828f3c-0xd828fd0 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0xd828f4c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd828f68 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd828f74 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd828f78 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd828f7c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd828f80 stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `sh` at 0xd828f84 stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `sh` at 0xd828f88 stores 2 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd828f8c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd828f94 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd828fb0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4]+12.
  The `beql` branch at 0xd828f9c targets 0xd828fc0, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd828fa0 runs only when taken and is annulled on fall-through.
  The return at 0xd828fc8 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Color3uiv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd828fd0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd828fd0-0xd829058 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd828fdc loads 4 bytes from abs 0x1014.
  The `lw` at 0xd828fec loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd828ff8 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd828ffc stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd829000 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd829004 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xd82900c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd829010 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xd829014 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd829018 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xd82901c stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd829020 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd829024 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd82903c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd82902c targets 0xd82904c, is taken when t2(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd829030 runs only when taken and is annulled on fall-through.
  The return at 0xd829050 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Color4dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd829058 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd829058-0xd829154 (252 bytes).
  It occupies 252 bytes.
  The `lw` at 0xd829068 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd829080 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82908c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd829094 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd829098 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd829110 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd829124 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8290a8 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x8, a3=a3 at entry (arg3).
  The `jalr` at 0xd8290c8 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a0+8, a2=0x8, a3=?.
  The `jalr` at 0xd8290e8 calls memcpy with a0=[[[0x1014]+276]+4]+20, a1=a0+16, a2=0x8, a3=?.
  The `jalr` at 0xd829108 calls memcpy with a0=[[[0x1014]+276]+4]+28, a1=a0+24, a2=0x8, a3=?.
  The `jalr` at 0xd829134 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+36, a2=?, a3=?.
  The `beq` branch at 0xd829120 targets 0xd829140, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+36) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+36) (unsigned).
  The return at 0xd82914c has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_Color4ub` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd829154 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd829154-0xd8291f4 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xd829164 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd829188 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd829194 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd829198 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd82919c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sb` at 0xd8291a0 stores 1 byte to [[[0x1014]+276]+4] +0x4.
  The `sb` at 0xd8291a4 stores 1 byte to [[[0x1014]+276]+4] +0x5.
  The `sb` at 0xd8291a8 stores 1 byte to [[[0x1014]+276]+4] +0x6.
  The `sb` at 0xd8291ac stores 1 byte to [[[0x1014]+276]+4] +0x7.
  The `lw` at 0xd8291b0 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8291b8 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8291d4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd8291c0 targets 0xd8291e4, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd8291c4 runs only when taken and is annulled on fall-through.
  The return at 0xd8291ec has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Color4sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8291f4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8291f4-0xd829284 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd829200 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd829210 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82921c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd829220 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd829224 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lh` at 0xd829228 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xd829230 stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `lh` at 0xd829234 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xd829238 stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `lh` at 0xd82923c loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xd829240 stores 2 bytes to [[[0x1014]+276]+4] +0x8.
  The `lh` at 0xd829244 loads 2 bytes from a0 (arg0 at entry) +0x6.
  The `sh` at 0xd829248 stores 2 bytes to [[[0x1014]+276]+4] +0xa.
  The `lw` at 0xd82924c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd829250 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd829268 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd829258 targets 0xd829278, is taken when t3(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t3(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd82925c runs only when taken and is annulled on fall-through.
  The return at 0xd82927c has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Color4s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd829284 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd829284-0xd829344 (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0xd829294 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8292b8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8292c4 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8292e8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd8292ec stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8292f0 stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `sh` at 0xd8292f4 stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `sh` at 0xd8292f8 stores 2 bytes to [[[0x1014]+276]+4] +0x8.
  The `sh` at 0xd8292fc stores 2 bytes to [[[0x1014]+276]+4] +0xa.
  The `lw` at 0xd829300 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd829308 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd829324 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=?, a3=?.
  The `beql` branch at 0xd829310 targets 0xd829334, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd829314 runs only when taken and is annulled on fall-through.
  The return at 0xd82933c has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Color4iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd829344 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd829344-0xd8293d4 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd829350 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd829360 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82936c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd829370 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd829374 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd829378 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xd829380 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd829384 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xd829388 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd82938c loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xd829390 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd829394 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0xd829398 stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `lw` at 0xd82939c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8293a0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8293b8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd8293a8 targets 0xd8293c8, is taken when t3(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t3(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+20) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd8293ac runs only when taken and is annulled on fall-through.
  The return at 0xd8293cc has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Color4i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8293d4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8293d4-0xd829464 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd8293e4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8293f8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd829404 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd829408 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd82940c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd829410 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd829414 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd829418 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `sw` at 0xd82941c stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `lw` at 0xd829420 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd829428 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd829444 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd829430 targets 0xd829454, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+20) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd829434 runs only when taken and is annulled on fall-through.
  The return at 0xd82945c has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Color4fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd829464 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd829464-0xd8294f4 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd829470 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd829480 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82948c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd829490 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd829494 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lwc1` at 0xd829498 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xd8294a0 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lwc1` at 0xd8294a4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xd8294a8 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lwc1` at 0xd8294ac loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `swc1` at 0xd8294b0 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lwc1` at 0xd8294b4 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `swc1` at 0xd8294b8 stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `lw` at 0xd8294bc loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8294c0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8294d8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd8294c8 targets 0xd8294e8, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+20) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd8294cc runs only when taken and is annulled on fall-through.
  The return at 0xd8294ec has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Color4f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8294f4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8294f4-0xd829580 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xd829504 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd829518 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd829524 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd829528 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd82952c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `swc1` at 0xd829530 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd829534 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `swc1` at 0xd829540 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `swc1` at 0xd829548 stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `lw` at 0xd82954c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd829550 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd829564 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd829558 targets 0xd829574, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+20) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd82955c runs only when taken and is annulled on fall-through.
  The return at 0xd829578 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Color3ui` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd829580 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd829580-0xd829608 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd829590 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8295a0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8295ac loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8295b0 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8295b4 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd8295b8 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd8295bc stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd8295c0 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd8295c4 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8295cc stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8295e8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4]+16.
  The `beql` branch at 0xd8295d4 targets 0xd8295f8, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd8295d8 runs only when taken and is annulled on fall-through.
  The return at 0xd829600 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Color3dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd829608 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd829608-0xd8296e8 (224 bytes).
  It occupies 224 bytes.
  The `lw` at 0xd829618 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82962c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd829638 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd829640 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd829644 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd8296a8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8296ac stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd829654 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x8, a3=[[0x1014]+276].
  The `jalr` at 0xd829674 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a0+8, a2=0x8, a3=?.
  The `jalr` at 0xd829694 calls memcpy with a0=[[[0x1014]+276]+4]+20, a1=a0+16, a2=0x8, a3=?.
  The `jalr` at 0xd8296c8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+28, a2=?, a3=[[0x1014]+276].
  The `beql` branch at 0xd8296b4 targets 0xd8296d8, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+28) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+28) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd8296b8 runs only when taken and is annulled on fall-through.
  The return at 0xd8296e0 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_Color3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8296e8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8296e8-0xd8297c8 (224 bytes).
  It occupies 224 bytes.
  The `lw` at 0xd8296f8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd829710 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82971c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd829728 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd82972c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd829788 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82978c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd82973c calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=[[0x1014]+276].
  The `jalr` at 0xd829758 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=sp+8, a2=0x8, a3=?.
  The `jalr` at 0xd829774 calls memcpy with a0=[[[0x1014]+276]+4]+20, a1=sp+16, a2=0x8, a3=?.
  The `jalr` at 0xd8297a8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+28, a2=?, a3=[[0x1014]+276].
  The `beql` branch at 0xd829794 targets 0xd8297b8, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+28) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+28) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd829798 runs only when taken and is annulled on fall-through.
  The return at 0xd8297c0 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_Color3bv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8297c8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8297c8-0xd829850 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd8297d4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8297e4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8297f0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8297f4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8297f8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lb` at 0xd8297fc loads 1 byte from a0 (arg0 at entry) +0x0.
  The `sb` at 0xd829804 stores 1 byte to [[[0x1014]+276]+4] +0x4.
  The `lb` at 0xd829808 loads 1 byte from a0 (arg0 at entry) +0x1.
  The `sb` at 0xd82980c stores 1 byte to [[[0x1014]+276]+4] +0x5.
  The `lb` at 0xd829810 loads 1 byte from a0 (arg0 at entry) +0x2.
  The `sb` at 0xd829814 stores 1 byte to [[[0x1014]+276]+4] +0x6.
  The `lw` at 0xd829818 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82981c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd829834 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd829824 targets 0xd829844, is taken when t2(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd829828 runs only when taken and is annulled on fall-through.
  The return at 0xd829848 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Color3b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd829850 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd829850-0xd8298fc (172 bytes).
  It occupies 172 bytes.
  The `lw` at 0xd829860 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82987c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd829888 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8298a4 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd8298a8 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sb` at 0xd8298ac stores 1 byte to [[[0x1014]+276]+4] +0x4.
  The `sb` at 0xd8298b0 stores 1 byte to [[[0x1014]+276]+4] +0x5.
  The `sb` at 0xd8298b4 stores 1 byte to [[[0x1014]+276]+4] +0x6.
  The `lw` at 0xd8298b8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8298c0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8298dc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=?, a3=[[[0x1014]+276]+4]+8.
  The `beql` branch at 0xd8298c8 targets 0xd8298ec, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd8298cc runs only when taken and is annulled on fall-through.
  The return at 0xd8298f4 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Begin` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8298fc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8298fc-0xd829970 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd829908 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd829918 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd829924 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd829928 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd82992c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd829930 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd829934 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82993c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd829954 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd829944 targets 0xd829964, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd829948 runs only when taken and is annulled on fall-through.
  The return at 0xd829968 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_ListBase` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd829970 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd829970-0xd8299e4 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd82997c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82998c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd829998 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd82999c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8299a0 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd8299a4 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd8299a8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8299b0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8299c8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd8299b8 targets 0xd8299d8, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd8299bc runs only when taken and is annulled on fall-through.
  The return at 0xd8299dc has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_CallList` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8299e4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8299e4-0xd829a58 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd8299f0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd829a00 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd829a0c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd829a10 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd829a14 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd829a18 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd829a1c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd829a24 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd829a3c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd829a2c targets 0xd829a4c, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd829a30 runs only when taken and is annulled on fall-through.
  The return at 0xd829a50 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Color3f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd829a58 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd829a58-0xd829ad8 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xd829a68 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd829a78 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd829a84 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd829a88 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd829a8c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `swc1` at 0xd829a90 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd829a94 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `swc1` at 0xd829aa0 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd829aa4 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd829aa8 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd829abc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd829ab0 targets 0xd829acc, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd829ab4 runs only when taken and is annulled on fall-through.
  The return at 0xd829ad0 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Color3ubv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd829ad8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd829ad8-0xd829b60 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd829ae4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd829af4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd829b00 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd829b04 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd829b08 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lbu` at 0xd829b0c loads 1 byte from a0 (arg0 at entry) +0x0.
  The `sb` at 0xd829b14 stores 1 byte to [[[0x1014]+276]+4] +0x4.
  The `lbu` at 0xd829b18 loads 1 byte from a0 (arg0 at entry) +0x1.
  The `sb` at 0xd829b1c stores 1 byte to [[[0x1014]+276]+4] +0x5.
  The `lbu` at 0xd829b20 loads 1 byte from a0 (arg0 at entry) +0x2.
  The `sb` at 0xd829b24 stores 1 byte to [[[0x1014]+276]+4] +0x6.
  The `lw` at 0xd829b28 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd829b2c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd829b44 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd829b34 targets 0xd829b54, is taken when t2(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd829b38 runs only when taken and is annulled on fall-through.
  The return at 0xd829b58 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Color3ub` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd829b60 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd829b60-0xd829bf4 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0xd829b70 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd829b8c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd829b98 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd829b9c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd829ba0 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sb` at 0xd829ba4 stores 1 byte to [[[0x1014]+276]+4] +0x4.
  The `sb` at 0xd829ba8 stores 1 byte to [[[0x1014]+276]+4] +0x5.
  The `sb` at 0xd829bac stores 1 byte to [[[0x1014]+276]+4] +0x6.
  The `lw` at 0xd829bb0 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd829bb8 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd829bd4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4]+8.
  The `beql` branch at 0xd829bc0 targets 0xd829be4, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd829bc4 runs only when taken and is annulled on fall-through.
  The return at 0xd829bec has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Color3sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd829bf4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd829bf4-0xd829c7c (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd829c00 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd829c10 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd829c1c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd829c20 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd829c24 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lh` at 0xd829c28 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xd829c30 stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `lh` at 0xd829c34 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xd829c38 stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `lh` at 0xd829c3c loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xd829c40 stores 2 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd829c44 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd829c48 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd829c60 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd829c50 targets 0xd829c70, is taken when t2(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd829c54 runs only when taken and is annulled on fall-through.
  The return at 0xd829c74 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Color3s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd829c7c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd829c7c-0xd829d28 (172 bytes).
  It occupies 172 bytes.
  The `lw` at 0xd829c8c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd829ca8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd829cb4 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd829cd0 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd829cd4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd829cd8 stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `sh` at 0xd829cdc stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `sh` at 0xd829ce0 stores 2 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd829ce4 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd829cec stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd829d08 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=?, a3=[[[0x1014]+276]+4]+12.
  The `beql` branch at 0xd829cf4 targets 0xd829d18, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd829cf8 runs only when taken and is annulled on fall-through.
  The return at 0xd829d20 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Color3iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd829d28 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd829d28-0xd829db0 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd829d34 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd829d44 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd829d50 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd829d54 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd829d58 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd829d5c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xd829d64 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd829d68 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xd829d6c stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd829d70 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xd829d74 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd829d78 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd829d7c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd829d94 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd829d84 targets 0xd829da4, is taken when t2(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd829d88 runs only when taken and is annulled on fall-through.
  The return at 0xd829da8 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Color3i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd829db0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd829db0-0xd829e38 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd829dc0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd829dd0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd829ddc loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd829de0 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd829de4 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd829de8 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd829dec stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd829df0 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd829df4 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd829dfc stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd829e18 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4]+16.
  The `beql` branch at 0xd829e04 targets 0xd829e28, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd829e08 runs only when taken and is annulled on fall-through.
  The return at 0xd829e30 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Color3fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd829e38 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd829e38-0xd829ec0 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd829e44 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd829e54 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd829e60 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd829e64 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd829e68 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lwc1` at 0xd829e6c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xd829e74 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lwc1` at 0xd829e78 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xd829e7c stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lwc1` at 0xd829e80 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `swc1` at 0xd829e84 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd829e88 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd829e8c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd829ea4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd829e94 targets 0xd829eb4, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd829e98 runs only when taken and is annulled on fall-through.
  The return at 0xd829eb8 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Color4ubv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd829ec0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd829ec0-0xd829f50 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd829ecc loads 4 bytes from abs 0x1014.
  The `lw` at 0xd829edc loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd829ee8 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd829eec stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd829ef0 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lbu` at 0xd829ef4 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `sb` at 0xd829efc stores 1 byte to [[[0x1014]+276]+4] +0x4.
  The `lbu` at 0xd829f00 loads 1 byte from a0 (arg0 at entry) +0x1.
  The `sb` at 0xd829f04 stores 1 byte to [[[0x1014]+276]+4] +0x5.
  The `lbu` at 0xd829f08 loads 1 byte from a0 (arg0 at entry) +0x2.
  The `sb` at 0xd829f0c stores 1 byte to [[[0x1014]+276]+4] +0x6.
  The `lbu` at 0xd829f10 loads 1 byte from a0 (arg0 at entry) +0x3.
  The `sb` at 0xd829f14 stores 1 byte to [[[0x1014]+276]+4] +0x7.
  The `lw` at 0xd829f18 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd829f1c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd829f34 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd829f24 targets 0xd829f44, is taken when t3(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t3(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd829f28 runs only when taken and is annulled on fall-through.
  The return at 0xd829f48 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Normal3s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd829f50 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd829f50-0xd829ffc (172 bytes).
  It occupies 172 bytes.
  The `lw` at 0xd829f60 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd829f7c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd829f88 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd829fa4 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd829fa8 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd829fac stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `sh` at 0xd829fb0 stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `sh` at 0xd829fb4 stores 2 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd829fb8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd829fc0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd829fdc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=?, a3=[[[0x1014]+276]+4]+12.
  The `beql` branch at 0xd829fc8 targets 0xd829fec, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd829fcc runs only when taken and is annulled on fall-through.
  The return at 0xd829ff4 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Normal3iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd829ffc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd829ffc-0xd82a084 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd82a008 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82a018 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82a024 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd82a028 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd82a02c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd82a030 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xd82a038 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd82a03c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xd82a040 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd82a044 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xd82a048 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd82a04c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82a050 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd82a068 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd82a058 targets 0xd82a078, is taken when t2(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd82a05c runs only when taken and is annulled on fall-through.
  The return at 0xd82a07c has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Normal3i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82a084 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82a084-0xd82a10c (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd82a094 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82a0a4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82a0b0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd82a0b4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd82a0b8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd82a0bc stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd82a0c0 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd82a0c4 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd82a0c8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82a0d0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd82a0ec calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4]+16.
  The `beql` branch at 0xd82a0d8 targets 0xd82a0fc, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd82a0dc runs only when taken and is annulled on fall-through.
  The return at 0xd82a104 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Normal3fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82a10c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82a10c-0xd82a194 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd82a118 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82a128 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82a134 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd82a138 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd82a13c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lwc1` at 0xd82a140 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xd82a148 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lwc1` at 0xd82a14c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xd82a150 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lwc1` at 0xd82a154 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `swc1` at 0xd82a158 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd82a15c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82a160 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd82a178 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd82a168 targets 0xd82a188, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd82a16c runs only when taken and is annulled on fall-through.
  The return at 0xd82a18c has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Normal3f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82a194 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82a194-0xd82a214 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xd82a1a4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82a1b4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82a1c0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd82a1c4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd82a1c8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `swc1` at 0xd82a1cc stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd82a1d0 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `swc1` at 0xd82a1dc stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd82a1e0 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82a1e4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd82a1f8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd82a1ec targets 0xd82a208, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd82a1f0 runs only when taken and is annulled on fall-through.
  The return at 0xd82a20c has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Normal3dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82a214 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82a214-0xd82a2f4 (224 bytes).
  It occupies 224 bytes.
  The `lw` at 0xd82a224 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82a238 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82a244 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd82a24c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd82a250 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd82a2b4 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82a2b8 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd82a260 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x8, a3=[[0x1014]+276].
  The `jalr` at 0xd82a280 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a0+8, a2=0x8, a3=?.
  The `jalr` at 0xd82a2a0 calls memcpy with a0=[[[0x1014]+276]+4]+20, a1=a0+16, a2=0x8, a3=?.
  The `jalr` at 0xd82a2d4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+28, a2=?, a3=[[0x1014]+276].
  The `beql` branch at 0xd82a2c0 targets 0xd82a2e4, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+28) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+28) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd82a2c4 runs only when taken and is annulled on fall-through.
  The return at 0xd82a2ec has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_Normal3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82a2f4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82a2f4-0xd82a3d4 (224 bytes).
  It occupies 224 bytes.
  The `lw` at 0xd82a304 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82a31c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82a328 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd82a334 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd82a338 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd82a394 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82a398 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd82a348 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=[[0x1014]+276].
  The `jalr` at 0xd82a364 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=sp+8, a2=0x8, a3=?.
  The `jalr` at 0xd82a380 calls memcpy with a0=[[[0x1014]+276]+4]+20, a1=sp+16, a2=0x8, a3=?.
  The `jalr` at 0xd82a3b4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+28, a2=?, a3=[[0x1014]+276].
  The `beql` branch at 0xd82a3a0 targets 0xd82a3c4, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+28) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+28) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd82a3a4 runs only when taken and is annulled on fall-through.
  The return at 0xd82a3cc has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_Normal3sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82a3d4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82a3d4-0xd82a45c (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd82a3e0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82a3f0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82a3fc loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd82a400 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd82a404 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lh` at 0xd82a408 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xd82a410 stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `lh` at 0xd82a414 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xd82a418 stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `lh` at 0xd82a41c loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xd82a420 stores 2 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd82a424 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82a428 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd82a440 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd82a430 targets 0xd82a450, is taken when t2(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd82a434 runs only when taken and is annulled on fall-through.
  The return at 0xd82a454 has v0 = one of ?, ret(__glXFlushRenderBuffer).
## Skipped routines

Skipped routines from the first 250 targets: `odsy_usb_comp_update_tiles` in
`builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` (already documented for this
binary/member: kernel/driver-functions.md); `usb_comp_update_tiles` in
`builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` (already documented for this
binary/member: kernel/driver-functions.md); `odsy_usb_comp_readwrite_register` in
`builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` (already documented for this
binary/member: kernel/driver-functions.md); `usb_comp_readwrite_register` in
`builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` (already documented for this
binary/member: kernel/driver-functions.md); `odsy_usb_comp_update_tiles` in
`usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` (already documented for this binary/member: docs/driver-
functions.md); `usb_comp_update_tiles` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` (already
documented for this binary/member: kernel/driver-functions.md); `odsy_usb_comp_readwrite_register` in
`usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` (already documented for this binary/member: docs/driver-
functions.md); `usb_comp_readwrite_register` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` (already
documented for this binary/member: kernel/driver-functions.md); `dma_mapinit` in
`usr/cpu/sysgen/IP30boot/kernel.o` (already documented for this binary/member: docs/instruction-readings-
odsy-g12.md); `hub_dma_init` in `usr/cpu/sysgen/IP35boot/kernel.o` (already documented for this binary/member:
evidence/instruction-readings-odsy-g12.md); `hub_dmatrans_addr` in `usr/cpu/sysgen/IP35boot/kernel.o` (already
documented for this binary/member: evidence/instruction-readings-odsy-g12.md); `hub_dmatrans_list` in
`usr/cpu/sysgen/IP35boot/kernel.o` (already documented for this binary/member: docs/instruction-readings-
odsy-g12.md); `hub_dmamap_drain` in `usr/cpu/sysgen/IP35boot/kernel.o` (already documented for this
binary/member: evidence/instruction-readings-odsy-g12.md); `hub_dmaaddr_drain` in
`usr/cpu/sysgen/IP35boot/kernel.o` (already documented for this binary/member: docs/instruction-readings-
odsy-g12.md); `hub_dmalist_drain` in `usr/cpu/sysgen/IP35boot/kernel.o` (already documented for this
binary/member: evidence/instruction-readings-odsy-g12.md); `dma_geth` in `usr/cpu/sysgen/IP35boot/kernel.o`
(already documented for this binary/member: evidence/instruction-readings-odsy-g12.md); `dmamap_init` in
`usr/cpu/sysgen/IP35boot/kernel.o` (already documented for this binary/member: docs/instruction-readings-
odsy-g12.md); `sampleBuffersScore` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` (already documented
for this binary/member: evidence/instruction-readings-odsy-g12.md).
