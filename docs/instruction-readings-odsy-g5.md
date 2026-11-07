# Instruction readings from hostfacts

Each entry below summarises what the local mechanical analyser reports for one routine in the named binary: selected stores and loads, calls, conditional branches and returns, each with its instruction address. These are software observations only and do not establish board behaviour. The selection is not a full listing of any routine, and entries carry the grade Inferred.

- `glXSelectEventSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd820d58 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd820d58-0xd820e90 (312 bytes).
  It occupies 312 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd820d94, `lw` at 0xd820e40.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd820d9c, `lw` at 0xd820db4, `lw` at 0xd820de0.
  The `lw` at 0xd820da0 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd820db8 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd820dc8, `sw` at 0xd820de4.
  The `sh` at 0xd820df0 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd820df4, `sb` at 0xd820e24.
  The `lw` at 0xd820df8 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd820e0c stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd820e10 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd820e1c stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd820e20 stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xd820e30 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd820e34 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd820e3c stores 4 bytes to [a0+108] +0x14.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd820e48, `lw` at 0xd820e60.
  The `lw` at 0xd820e4c loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xd820d80 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd820da8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd820dd4 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd820e54 calls (unknown callee) with a0=a0 at entry (arg0), a1=0x10, a2=?, a3=?.
  The `jalr` at 0xd820e70 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd820d8c targets 0xd820e7c, is taken when v0(=ret(__glXSetupForCommand)) == 0, and falls through when v0(=ret(__glXSetupForCommand)) != 0.
  The `beql` branch at 0xd820d98 targets 0xd820db8, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd820d9c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd820dc4 targets 0xd820de8, is taken when t6(=[a0+112]) >= t7(=[a0+108]+24) (unsigned), and falls through when t6(=[a0+112]) < t7(=[a0+108]+24) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd820dc8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd820e44 targets 0xd820e64, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd820e48 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd820e68 targets 0xd820e80, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd820e6c runs only when taken and is annulled on fall-through.
  The return at 0xd820e88 has v0 = one of [a0+124], ?.
- `glXDestroyGLXPbufferSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8213d0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8213d0-0xd821548 (376 bytes).
  It occupies 376 bytes.
  The `lw` at 0xd821438 loads 4 bytes from ret(__glXAddDrawableInterest) +0x14.
  The `sw` at 0xd821444 stores 4 bytes to ret(__glXAddDrawableInterest) +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd821458, `lw` at 0xd8214f8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd821464, `lw` at 0xd82147c, `lw` at 0xd8214a8.
  The `lw` at 0xd821468 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd821480 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd821490, `sw` at 0xd8214ac.
  The `sh` at 0xd8214b8 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8214bc, `sb` at 0xd8214ec.
  The `lw` at 0xd8214c0 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8214d4 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8214d8 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd8214e4 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd8214e8 stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xd8214f4 stores 4 bytes to [a0+108] +0xc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd821500, `lw` at 0xd821518.
  The `lw` at 0xd821504 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xd8213f4 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd821410 calls __glXAddDrawableInterest with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xd821428 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd821450 calls __glXFreeDrawablePrivate with a0=ret(__glXAddDrawableInterest), a1=ret(__glXAddDrawableInterest), a2=?, a3=?.
  The `jalr` at 0xd821470 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd82149c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd82150c calls (unknown callee) with a0=a0 at entry (arg0), a1=0x10, a2=?, a3=?.
  The `jalr` at 0xd821528 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd821400 targets 0xd821534, is taken when v0(=ret(__glXSetupForCommand)) == 0, and falls through when v0(=ret(__glXSetupForCommand)) != 0.
  The `bne` branch at 0xd82143c targets 0xd821448, is taken when t6(=[ret(__glXAddDrawableInterest)+20]) != 0, and falls through when t6(=[ret(__glXAddDrawableInterest)+20]) == 0.
  The `beql` branch at 0xd821460 targets 0xd821480, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd821464 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd82148c targets 0xd8214b0, is taken when t7(=[a0+112]) >= t8(=[a0+108]+16) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+16) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd821490 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8214fc targets 0xd82151c, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd821500 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd821520 targets 0xd821538, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd821524 runs only when taken and is annulled on fall-through.
  The return at 0xd821540 has v0 = one of [a0+124], ?.
- `glXCreateGLXPbufferSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd823b00 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd823b00-0xd823e34 (820 bytes).
  It occupies 820 bytes.
  The `lw` at 0xd823b54 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `sw` at 0xd823bb8 stores 4 bytes to ret(__glXAddDrawableInterest) +0x2c.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd823bc0, `lw` at 0xd823bd0, `lw` at 0xd823be8.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd823bc4, `lw` at 0xd823bd4, `lw` at 0xd823be4.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd823bf0, `lw` at 0xd823c18, `lw` at 0xd823c64.
  The `lw` at 0xd823bfc loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd823c20 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd823c6c stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd823c78 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd823c7c, `sb` at 0xd823cb0.
  The `lw` at 0xd823c80 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd823c94 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd823c98 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd823ca8 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd823cac stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd823cb4 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `sw` at 0xd823cc0 stores 4 bytes to [a0+108] +0xc.
  The `lw` at 0xd823cc4 loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `sw` at 0xd823cd0 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd823cd8 stores 4 bytes to [a0+108] +0x14.
  The `sw` at 0xd823ce0 stores 4 bytes to [a0+108] +0x18.
  The `sw` at 0xd823cec stores 4 bytes to [a0+108] +0x1c.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd823d04, `sw` at 0xd823d1c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd823d44, `lw` at 0xd823d5c, `lw` at 0xd823dd4.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd823d48, `lw` at 0xd823dd8.
  The `sw` at 0xd823dac stores 4 bytes to ret(__glXAddDrawableInterest) +0x0.
  The `jalr` at 0xd823b30 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd823b5c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd823b74 calls __glXAddDrawableInterest with a0=ret(?), a1=?, a2=?, a3=?.
  The `jalr` at 0xd823b9c calls __glXPostError with a0=a0 at entry (arg0), a1=0xb, a2=0x10, a3=0x0.
  The `jalr` at 0xd823c04 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd823c4c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd823d2c calls _XReply with a0=a0 at entry (arg0), a1=sp-40, a2=0x0, a3=0x0.
  The `jalr` at 0xd823d50 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd823d6c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd823d88 calls __glXPostHiddenError with a0=a0 at entry (arg0), a1=sp-40, a2=0x11, a3=0x0.
  The `jalr` at 0xd823d9c calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd823db8 calls __glXFreeDrawablePrivate with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd823de0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd823dfc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd823e10 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `bne` branch at 0xd823b40 targets 0xd823b50, is taken when v0(=ret(__glXSetupForCommand)) != 0, and falls through when v0(=ret(__glXSetupForCommand)) == 0.
  The `beq` branch at 0xd823b48 targets 0xd823e20 and is always taken.
  The `bne` branch at 0xd823b84 targets 0xd823bb0, is taken when v0(=ret(__glXAddDrawableInterest)) != 0, and falls through when v0(=ret(__glXAddDrawableInterest)) == 0.
  The `beq` branch at 0xd823ba8 targets 0xd823e20 and is always taken.
  The `beql` branch at 0xd823bbc targets 0xd823bec, is taken when a1(?) == 0, and falls through when a1(?) != 0; its branch-likely delay slot `lw v0,1232(s0)` at 0xd823bc0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd823bcc targets 0xd823bec, is taken when t7(?) == 0, and falls through when t7(?) != 0; its branch-likely delay slot `lw v0,1232(s0)` at 0xd823bd0 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd823be0 targets 0xd823bd8, is taken when t8(?) != 0, and falls through when t8(?) == 0; its branch-likely delay slot `lw t8,8(v0)` at 0xd823be4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd823bec targets 0xd823c1c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd823bf0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd823c34 targets 0xd823c6c, is taken when t1(=[a0+112]) >= t2(?) (unsigned), and falls through when t1(=[a0+112]) < t2(?) (unsigned); its branch-likely delay slot `lw t0,124(sp)` at 0xd823c38 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd823ce8 targets 0xd823d20, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0xd823cf0 targets 0xd823d20, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0xd823d18 targets 0xd823cf8, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0xd823d34 targets 0xd823dcc, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xd823d40 targets 0xd823d60, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd823d44 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd823d64 targets 0xd823d78, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd823dc4 targets 0xd823e20 and is always taken.
  The `beql` branch at 0xd823dd0 targets 0xd823df0, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd823dd4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd823df4 targets 0xd823e08, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The return at 0xd823e2c has v0 = one of 0x0, ret(?).
- `glXGetVideoSyncSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd823e34 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd823e34-0xd823ecc (152 bytes).
  It occupies 152 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014, including `lw` at 0xd823e54, `lw` at 0xd823e88.
  The `lw` at 0xd823e58 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd823e64 loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lw` at 0xd823e6c loads 4 bytes from [[0x1014]+276] +0xcc.
  The `lw` at 0xd823e8c loads 4 bytes from [0x1014] +0x108.
  The `lw` at 0xd823e9c loads 4 bytes from ([0x1014] + ([[0x1014]+264] << 0x2)) +0x4.
  The `sw` at 0xd823eb8 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `jalr` at 0xd823ea0 calls ioctl with a0=[([0x1014] + ([[0x1014]+264] << 0x2))+4], a1=0x3fe, a2=sp-12, a3=0x1000.
  The `beq` branch at 0xd823e5c targets 0xd823e70, is taken when v1(=[[0x1014]+276]) == 0, and falls through when v1(=[[0x1014]+276]) != 0.
  The `bnel` branch at 0xd823e68 targets 0xd823e7c, is taken when t7(=[[[0x1014]+276]+196]) != 0, and falls through when t7(=[[[0x1014]+276]+196]) == 0; its branch-likely delay slot `lw t8,204(v1)` at 0xd823e6c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd823e70 targets 0xd823ebc and is always taken.
  The return at 0xd823ec4 has v0 = one of 0x0, 0x5.
  The instructions from 0xd823e78 to 0xd823e78 are not reached by any path from the entry, and their branches are not listed.
- `glXWaitVideoSyncSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd824750 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd824750-0xd824818 (200 bytes).
  It occupies 200 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014, including `lw` at 0xd824774, `lw` at 0xd8247d0.
  The `lw` at 0xd82477c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd824788 loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lw` at 0xd8247b0 loads 4 bytes from [[0x1014]+276] +0xcc.
  The `lw` at 0xd8247dc loads 4 bytes from [0x1014] +0x108.
  The `lw` at 0xd8247f0 loads 4 bytes from ([0x1014] + ([[0x1014]+264] << 0x2)) +0x4.
  The `sw` at 0xd824804 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jalr` at 0xd8247ec calls ioctl with a0=[([0x1014] + ([[0x1014]+264] << 0x2))+4], a1=0x3ff, a2=sp-20, a3=a0 at entry (arg0).
  The `beq` branch at 0xd824780 targets 0xd824794, is taken when v1(=[[0x1014]+276]) == 0, and falls through when v1(=[[0x1014]+276]) != 0.
  The `bne` branch at 0xd82478c targets 0xd82479c, is taken when t7(=[[[0x1014]+276]+196]) != 0, and falls through when t7(=[[[0x1014]+276]+196]) == 0.
  The `beq` branch at 0xd824794 targets 0xd824808 and is always taken.
  The `blez` branch at 0xd82479c targets 0xd8247b4, is taken when a3(=a0) <= 0 (signed), and falls through when a3(=a0) > 0 (signed).
  The `bltz` branch at 0xd8247a4 targets 0xd8247b4, is taken when t8(=a1) < 0 (signed), and falls through when t8(=a1) >= 0 (signed).
  The `bnel` branch at 0xd8247ac targets 0xd8247c0, is taken when at(?) != 0, and falls through when at(?) == 0; its branch-likely delay slot `lw t9,204(v1)` at 0xd8247b0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8247b4 targets 0xd824808 and is always taken.
  The return at 0xd824810 has v0 = one of 0x0, 0x5, 0x6.
  The instructions from 0xd8247bc to 0xd8247bc are not reached by any path from the entry, and their branches are not listed.
- `glXDestroyGLXVideoSourceSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd824818 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd824818-0xd824988 (368 bytes).
  It occupies 368 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd824894, `lw` at 0xd824938.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8248a0, `lw` at 0xd8248b8, `lw` at 0xd8248e4.
  The `lw` at 0xd8248a4 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd8248bc loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd8248cc, `sw` at 0xd8248e8.
  The `sh` at 0xd8248f4 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8248f8, `sb` at 0xd82492c.
  The `lw` at 0xd8248fc loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd824910 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd824914 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd824920 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd824924 stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xd824928 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xd824934 stores 4 bytes to [a0+108] +0xc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd824940, `lw` at 0xd824958.
  The `lw` at 0xd824944 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xd82483c calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd824860 calls __glXAddDrawableInterest with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xd824878 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd82488c calls __glXFreeDrawablePrivate with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8248ac calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8248d8 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd82494c calls (unknown callee) with a0=a0 at entry (arg0), a1=0x10, a2=?, a3=?.
  The `jalr` at 0xd824968 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd824848 targets 0xd824974, is taken when v0(=ret(__glXSetupForCommand)) == 0, and falls through when v0(=ret(__glXSetupForCommand)) != 0.
  The `beql` branch at 0xd824854 targets 0xd824978, is taken when a0(=a1) == 0, and falls through when a0(=a1) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd824858 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd82489c targets 0xd8248bc, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd8248a0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8248c8 targets 0xd8248ec, is taken when t6(=[a0+112]) >= t7(=[a0+108]+16) (unsigned), and falls through when t6(=[a0+112]) < t7(=[a0+108]+16) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd8248cc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd82493c targets 0xd82495c, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd824940 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd824960 targets 0xd824978, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd824964 runs only when taken and is annulled on fall-through.
  The return at 0xd824980 has v0 = one of ret(__glXSetupForCommand), [a0+124], ?.
- `glXCreateGLXVideoSourceSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd824988 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd824988-0xd824d30 (936 bytes).
  It occupies 936 bytes.
  The `lw` at 0xd824a10 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `sw` at 0xd824a4c stores 4 bytes to ret(__glXAddDrawableInterest) +0xc.
  The `sw` at 0xd824a50 stores 4 bytes to ret(__glXAddDrawableInterest) +0x10.
  The `sb` at 0xd824a60 stores 1 byte to ret(__glXAddDrawableInterest) +0x20.
  The `sw` at 0xd824a64 stores 4 bytes to ret(__glXAddDrawableInterest) +0x2c.
  The `sw` at 0xd824a68 stores 4 bytes to ret(__glXAddDrawableInterest) +0x30.
  The `sw` at 0xd824a6c stores 4 bytes to ret(__glXAddDrawableInterest) +0x8.
  The `sw` at 0xd824ab4 stores 4 bytes to ret(__glXCreateVideoSourcePrivate) +0x0.
  3 such `lw` accesses load 4 bytes from abs 0xd846784, including `lw` at 0xd824ab8, `lw` at 0xd824b1c, `lw` at 0xd824b70.
  The `sw` at 0xd824b0c stores 4 bytes to ret(__glXCreateVideoSourcePrivate) +0x4.
  The `sw` at 0xd824b18 stores 4 bytes to ret(__glXCreateVideoSourcePrivate) +0x8.
  The `sw` at 0xd824b6c stores 4 bytes to ret(__glXCreateVideoSourcePrivate) +0xc.
  The `sw` at 0xd824bc0 stores 4 bytes to ret(__glXCreateVideoSourcePrivate) +0x10.
  The `sw` at 0xd824bdc stores 4 bytes to ret(__glXCreateVideoSourcePrivate) +0x14.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd824be0, `lw` at 0xd824cc8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd824be8, `lw` at 0xd824c08, `lw` at 0xd824c3c.
  The `lw` at 0xd824bf0 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd824c0c loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd824c1c, `sw` at 0xd824c40.
  The `sh` at 0xd824c4c stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd824c50, `sb` at 0xd824c84.
  The `lw` at 0xd824c54 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd824c68 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd824c6c stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd824c78 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd824c7c stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xd824c80 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xd824c8c stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd824c94 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd824c9c stores 4 bytes to [a0+108] +0x14.
  The `lw` at 0xd824ca0 loads 4 bytes from ret(__glXCreateVideoSourcePrivate) +0x4.
  The `sw` at 0xd824ca4 stores 4 bytes to [a0+108] +0x18.
  The `lw` at 0xd824ca8 loads 4 bytes from ret(__glXCreateVideoSourcePrivate) +0x8.
  The `sw` at 0xd824cac stores 4 bytes to [a0+108] +0x1c.
  The `lw` at 0xd824cb0 loads 4 bytes from ret(__glXCreateVideoSourcePrivate) +0xc.
  The `sw` at 0xd824cb4 stores 4 bytes to [a0+108] +0x20.
  The `lw` at 0xd824cb8 loads 4 bytes from ret(__glXCreateVideoSourcePrivate) +0x10.
  The `sw` at 0xd824cbc stores 4 bytes to [a0+108] +0x24.
  The `lw` at 0xd824cc0 loads 4 bytes from ret(__glXCreateVideoSourcePrivate) +0x14.
  The `sw` at 0xd824cc4 stores 4 bytes to [a0+108] +0x28.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd824cd0, `lw` at 0xd824ce8.
  The `lw` at 0xd824cd4 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xd8249b8 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8249f8 calls __glXInitializeVideoLibrary with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd824a18 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd824a30 calls __glXAddDrawableInterest with a0=ret(?), a1=?, a2=?, a3=?.
  The `jalr` at 0xd824a78 calls __glXCreateVideoSourcePrivate with a0=ret(__glXAddDrawableInterest)+44, a1=?, a2=?, a3=?.
  The `jalr` at 0xd824a94 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd824ad0 calls (unknown callee) with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=?, a3=0x4.
  The `jalr` at 0xd824aec calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd824b30 calls (unknown callee) with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=?, a3=0x6.
  The `jalr` at 0xd824b4c calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd824b88 calls (unknown callee) with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=?, a3=0x7.
  The `jalr` at 0xd824ba4 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd824bcc calls videoPackingToInternalFormat [0xd824d30] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd824bf8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd824c2c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd824cdc calls (unknown callee) with a0=a0 at entry (arg0), a1=0x10, a2=?, a3=?.
  The `jalr` at 0xd824cf8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd824d0c calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `bne` branch at 0xd8249c4 targets 0xd8249d4, is taken when v0(=ret(__glXSetupForCommand)) != 0, and falls through when v0(=ret(__glXSetupForCommand)) == 0.
  The `beq` branch at 0xd8249cc targets 0xd824d1c and is always taken.
  The `beq` branch at 0xd8249dc targets 0xd8249f4, is taken when v0(?) == at(=0x2), and falls through when v0(?) != at(=0x2).
  The `beq` branch at 0xd8249e4 targets 0xd8249f4, is taken when v0(?) == at(=0x5), and falls through when v0(?) != at(=0x5).
  The `beq` branch at 0xd8249ec targets 0xd824d1c and is always taken.
  The `bne` branch at 0xd824a00 targets 0xd824a10, is taken when v0(=ret(__glXInitializeVideoLibrary)) != 0, and falls through when v0(=ret(__glXInitializeVideoLibrary)) == 0.
  The `beq` branch at 0xd824a08 targets 0xd824d1c and is always taken.
  The `bne` branch at 0xd824a3c targets 0xd824a4c, is taken when v0(=ret(__glXAddDrawableInterest)) != 0, and falls through when v0(=ret(__glXAddDrawableInterest)) == 0.
  The `beq` branch at 0xd824a44 targets 0xd824d1c and is always taken.
  The `bne` branch at 0xd824a84 targets 0xd824aa8, is taken when v0(=ret(__glXCreateVideoSourcePrivate)) != 0, and falls through when v0(=ret(__glXCreateVideoSourcePrivate)) == 0.
  The `beq` branch at 0xd824aa0 targets 0xd824d1c and is always taken.
  The `bgez` branch at 0xd824adc targets 0xd824b00, is taken when v0(=ret(?)) >= 0 (signed), and falls through when v0(=ret(?)) < 0 (signed).
  The `beq` branch at 0xd824af8 targets 0xd824d1c and is always taken.
  The `bgez` branch at 0xd824b3c targets 0xd824b60, is taken when v0(=ret(?)) >= 0 (signed), and falls through when v0(=ret(?)) < 0 (signed).
  The `beq` branch at 0xd824b58 targets 0xd824d1c and is always taken.
  The `bgez` branch at 0xd824b94 targets 0xd824bb8, is taken when v0(=ret(?)) >= 0 (signed), and falls through when v0(=ret(?)) < 0 (signed).
  The `beq` branch at 0xd824bb0 targets 0xd824d1c and is always taken.
  The `beql` branch at 0xd824be4 targets 0xd824c0c, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd824be8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd824c18 targets 0xd824c44, is taken when t1(=[a0+112]) >= t2(=[a0+108]+44) (unsigned), and falls through when t1(=[a0+112]) < t2(=[a0+108]+44) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd824c1c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd824ccc targets 0xd824cec, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd824cd0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd824cf0 targets 0xd824d04, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The return at 0xd824d28 has v0 = one of 0x0, ?.
- `glXSwapIntervalSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd824f58 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd824f58-0xd82512c (468 bytes).
  It occupies 468 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014, including `lw` at 0xd824f7c, `lw` at 0xd824fc8.
  The `lw` at 0xd824f84 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd824f9c loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lw` at 0xd824fb0 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd824fb4 loads 4 bytes from [[0x1014]+276] +0xcc.
  The `lw` at 0xd824fd4 loads 4 bytes from [0x1014] +0x108.
  The `lw` at 0xd824fe4 loads 4 bytes from ([0x1014] + ([[0x1014]+264] << 0x2)) +0x4.
  The `lw` at 0xd82500c loads 4 bytes from [[0x1014]+276] +0x3c.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd825020, `lw` at 0xd8250c4.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd82502c, `lw` at 0xd825044, `lw` at 0xd825070.
  The `lw` at 0xd825030 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd825048 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd825058, `sw` at 0xd825074.
  The `sh` at 0xd825080 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd825084, `sb` at 0xd8250b0.
  The `lw` at 0xd825088 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd82509c stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd8250a0 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `sb` at 0xd8250a8 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `sw` at 0xd8250ac stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd8250b8 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd8250c0 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd8250cc, `lw` at 0xd8250e4.
  The `lw` at 0xd8250d0 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd824fe0 calls ioctl with a0=[([0x1014] + ([[0x1014]+264] << 0x2))+4], a1=0x3ee, a2=sp-32, a3=0x1000.
  The `jalr` at 0xd825014 calls __glXSetupForCommand with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1000.
  The `jalr` at 0xd825038 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd825064 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8250d8 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=0x10, a2=?, a3=?.
  The `jalr` at 0xd8250f4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd825108 calls XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `bne` branch at 0xd824f88 targets 0xd824f98, is taken when v1(=[[0x1014]+276]) != 0, and falls through when v1(=[[0x1014]+276]) == 0.
  The `beq` branch at 0xd824f90 targets 0xd825118 and is always taken.
  The `bgtzl` branch at 0xd824f98 targets 0xd824fac, is taken when t7(=a0) > 0 (signed), and falls through when t7(=a0) <= 0 (signed); its branch-likely delay slot `lw t8,196(v1)` at 0xd824f9c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd824fa0 targets 0xd825118 and is always taken.
  The `beql` branch at 0xd824fac targets 0xd824ff8, is taken when t8(=[[[0x1014]+276]+196]) == 0, and falls through when t8(=[[[0x1014]+276]+196]) != 0; its branch-likely delay slot `lw s0,216(v1)` at 0xd824fb0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd824fec targets 0xd825118 and is always taken.
  The `bne` branch at 0xd824ff8 targets 0xd825008, is taken when s0(=[[[0x1014]+276]+216]) != 0, and falls through when s0(=[[[0x1014]+276]+216]) == 0.
  The `beq` branch at 0xd825000 targets 0xd825118 and is always taken.
  The `beql` branch at 0xd825028 targets 0xd825048, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd82502c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd825054 targets 0xd825078, is taken when t5(=[[[[0x1014]+276]+216]+112]) >= t6(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t5(=[[[[0x1014]+276]+216]+112]) < t6(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd825058 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8250c8 targets 0xd8250e8, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8250cc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8250ec targets 0xd825100, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  The return at 0xd825124 has v0 = one of 0x0, 0x5, 0x6.
  The instructions from 0xd824fa8 to 0xd824fa8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd824ff4 to 0xd824ff4 are not reached by any path from the entry, and their branches are not listed.
- `glXCreateGLXPixmapWithConfigSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd827654 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd827654-0xd8277c0 (364 bytes).
  It occupies 364 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd827698, `lw` at 0xd82776c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8276a0, `lw` at 0xd8276b8, `lw` at 0xd8276e4.
  The `lw` at 0xd8276a4 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd8276bc loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd8276ec stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd8276f8 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8276fc, `sb` at 0xd82772c.
  The `lw` at 0xd827700 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd827714 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd827718 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd827724 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd827728 stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd827730 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `sw` at 0xd827738 stores 4 bytes to [a0+108] +0xc.
  The `lw` at 0xd82773c loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `sw` at 0xd827740 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd827748 stores 4 bytes to [a0+108] +0x14.
  The `lw` at 0xd827750 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `sw` at 0xd827768 stores 4 bytes to [a0+108] +0x18.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd827774, `lw` at 0xd82778c.
  The `lw` at 0xd827778 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xd82767c calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8276ac calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?.
  The `jalr` at 0xd8276d8 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd827754 calls (unknown callee) with a0=a0 at entry (arg0), a1=0x10, a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0xd827780 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?.
  The `jalr` at 0xd82779c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0xd827688 targets 0xd827698, is taken when v0(=ret(__glXSetupForCommand)) != 0, and falls through when v0(=ret(__glXSetupForCommand)) == 0.
  The `beq` branch at 0xd827690 targets 0xd8277ac and is always taken.
  The `beql` branch at 0xd82769c targets 0xd8276bc, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,108(s0)` at 0xd8276a0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8276c8 targets 0xd8276ec, is taken when t6(=[a0+112]) >= t7(=[a0+108]+28) (unsigned), and falls through when t6(=[a0+112]) < t7(=[a0+108]+28) (unsigned); its branch-likely delay slot `lw a2,60(sp)` at 0xd8276cc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd827770 targets 0xd827790, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd827774 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd827794 targets 0xd8277ac, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw v0,44(sp)` at 0xd827798 runs only when taken and is annulled on fall-through.
  The return at 0xd8277b8 has v0 = one of 0x0, ret(?).
- `glXJoinSwapGroupSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd839878 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd839878-0xd8399a4 (300 bytes).
  It occupies 300 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8398ac, `lw` at 0xd839954.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8398b8, `lw` at 0xd8398d0, `lw` at 0xd8398fc.
  The `lw` at 0xd8398bc loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd8398d4 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd8398e4, `sw` at 0xd839900.
  The `sh` at 0xd83990c stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd839910, `sb` at 0xd839940.
  The `lw` at 0xd839914 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd839928 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd83992c stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd839938 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd83993c stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xd839948 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd839950 stores 4 bytes to [a0+108] +0x10.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd83995c, `lw` at 0xd839974.
  The `lw` at 0xd839960 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xd8398a0 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8398c4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8398f0 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd839968 calls (unknown callee) with a0=a0 at entry (arg0), a1=0x10, a2=?, a3=?.
  The `jalr` at 0xd839984 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beql` branch at 0xd8398b4 targets 0xd8398d4, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd8398b8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8398e0 targets 0xd839904, is taken when t6(=[a0+112]) >= t7(=[a0+108]+20) (unsigned), and falls through when t6(=[a0+112]) < t7(=[a0+108]+20) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd8398e4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd839958 targets 0xd839978, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83995c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83997c targets 0xd839994, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd839980 runs only when taken and is annulled on fall-through.
  The return at 0xd83999c has v0 = one of [a0+124], ret(?).
- `glXBindSwapBarrierSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8399a4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8399a4-0xd839ad0 (300 bytes).
  It occupies 300 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8399d8, `lw` at 0xd839a80.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8399e4, `lw` at 0xd8399fc, `lw` at 0xd839a28.
  The `lw` at 0xd8399e8 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd839a00 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd839a10, `sw` at 0xd839a2c.
  The `sh` at 0xd839a38 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd839a3c, `sb` at 0xd839a6c.
  The `lw` at 0xd839a40 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd839a54 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd839a58 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd839a64 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd839a68 stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xd839a74 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd839a7c stores 4 bytes to [a0+108] +0x10.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd839a88, `lw` at 0xd839aa0.
  The `lw` at 0xd839a8c loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xd8399cc calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8399f0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd839a1c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd839a94 calls (unknown callee) with a0=a0 at entry (arg0), a1=0x10, a2=?, a3=?.
  The `jalr` at 0xd839ab0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beql` branch at 0xd8399e0 targets 0xd839a00, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd8399e4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd839a0c targets 0xd839a30, is taken when t6(=[a0+112]) >= t7(=[a0+108]+20) (unsigned), and falls through when t6(=[a0+112]) < t7(=[a0+108]+20) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd839a10 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd839a84 targets 0xd839aa4, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd839a88 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd839aa8 targets 0xd839ac0, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd839aac runs only when taken and is annulled on fall-through.
  The return at 0xd839ac8 has v0 = one of [a0+124], ret(?).
- `glXQueryMaxSwapBarriersSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd839ad0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd839ad0-0xd839c70 (416 bytes).
  It occupies 416 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd839b04, `lw` at 0xd839bcc, `lw` at 0xd839c10.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd839b10, `lw` at 0xd839b28, `lw` at 0xd839b54.
  The `lw` at 0xd839b14 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd839b2c loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd839b3c, `sw` at 0xd839b58.
  The `sh` at 0xd839b64 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd839b68, `sb` at 0xd839b9c.
  The `lw` at 0xd839b6c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd839b80 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd839b84 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd839b94 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd839b98 stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xd839bac stores 4 bytes to [a0+108] +0xc.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd839bd4, `lw` at 0xd839bec, `lw` at 0xd839c18.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd839bd8, `lw` at 0xd839c1c.
  The `sw` at 0xd839c58 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jalr` at 0xd839af8 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd839b1c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd839b48 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd839bbc calls _XReply with a0=a0 at entry (arg0), a1=sp-40, a2=0x0, a3=0x0.
  The `jalr` at 0xd839be0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd839bfc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd839c24 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd839c40 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beql` branch at 0xd839b0c targets 0xd839b2c, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd839b10 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd839b38 targets 0xd839b5c, is taken when t6(=[a0+112]) >= t7(=[a0+108]+16) (unsigned), and falls through when t6(=[a0+112]) < t7(=[a0+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd839b3c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd839bc4 targets 0xd839c10, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xd839bd0 targets 0xd839bf0, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd839bd4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd839bf4 targets 0xd839c08, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd839c08 targets 0xd839c5c and is always taken.
  The `beql` branch at 0xd839c14 targets 0xd839c34, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd839c18 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd839c38 targets 0xd839c50, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw t8,56(sp)` at 0xd839c3c runs only when taken and is annulled on fall-through.
  The return at 0xd839c68 has v0 = one of 0x0, 0x1.
- `glXQueryHyperpipeNetworkSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83a484 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83a484-0xd83a758 (724 bytes).
  It occupies 724 bytes.
  5 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0xd83a4bc, `sw` at 0xd83a5cc, `sw` at 0xd83a5e0.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83a4c0, `lw` at 0xd83a584, `lw` at 0xd83a604.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83a4c8, `lw` at 0xd83a4e0, `lw` at 0xd83a50c.
  The `lw` at 0xd83a4cc loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd83a4e4 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd83a4f4, `sw` at 0xd83a510.
  The `sh` at 0xd83a51c stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83a520, `sb` at 0xd83a554.
  The `lw` at 0xd83a524 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83a538 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd83a53c stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd83a54c stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd83a550 stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd83a558 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `sw` at 0xd83a564 stores 4 bytes to [a0+108] +0xc.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd83a58c, `lw` at 0xd83a5a4, `lw` at 0xd83a610.
  4 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd83a590, `lw` at 0xd83a614, `lw` at 0xd83a6ac.
  The `jalr` at 0xd83a4a8 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83a4d4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83a500 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83a574 calls _XReply with a0=a0 at entry (arg0), a1=sp-44, a2=0x0, a3=0x0.
  The `jalr` at 0xd83a598 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83a5b4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83a5fc calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83a61c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83a638 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83a670 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd83a694 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83a6b4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83a6d0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83a6f8 calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd83a718 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83a734 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beql` branch at 0xd83a4c4 targets 0xd83a4e4, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd83a4c8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83a4f0 targets 0xd83a514, is taken when t7(=[a0+112]) >= t8(=[a0+108]+16) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd83a4f4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd83a57c targets 0xd83a5d0, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xd83a588 targets 0xd83a5a8, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83a58c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83a5ac targets 0xd83a5c4, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw t0,100(sp)` at 0xd83a5b0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83a5c8 targets 0xd83a744 and is always taken.
  The `blez` branch at 0xd83a5dc targets 0xd83a5f0, is taken when t1(?) <= 0 (signed), and falls through when t1(?) > 0 (signed).
  The `bne` branch at 0xd83a5e8 targets 0xd83a654, is taken when t1(?) < 0x21 (signed), and falls through when t1(?) >= 0x21 (signed).
  The `beql` branch at 0xd83a60c targets 0xd83a62c, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83a610 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83a630 targets 0xd83a648, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw t2,100(sp)` at 0xd83a634 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83a64c targets 0xd83a744 and is always taken.
  The `bne` branch at 0xd83a680 targets 0xd83a6ec, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beql` branch at 0xd83a6a4 targets 0xd83a6c4, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83a6a8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83a6c8 targets 0xd83a6e0, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw t3,100(sp)` at 0xd83a6cc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83a6e4 targets 0xd83a744 and is always taken.
  The `beql` branch at 0xd83a708 targets 0xd83a728, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83a70c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83a72c targets 0xd83a744, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw v0,92(sp)` at 0xd83a730 runs only when taken and is annulled on fall-through.
  The return at 0xd83a750 has v0 = one of 0x0, ?.
- `glXHyperpipeConfigSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83a758 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83a758-0xd83aa40 (744 bytes).
  It occupies 744 bytes.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83a7e0, `lw` at 0xd83a944, `lw` at 0xd83a99c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83a7e8, `lw` at 0xd83a80c, `lw` at 0xd83a844.
  The `lw` at 0xd83a7f0 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd83a810 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd83a820, `sw` at 0xd83a848.
  The `sh` at 0xd83a854 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83a858, `sb` at 0xd83a88c.
  The `lw` at 0xd83a85c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83a870 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd83a874 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd83a884 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd83a888 stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd83a890 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `sw` at 0xd83a894 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd83a89c stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd83a8ac stores 4 bytes to [a0+108] +0x14.
  5 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xd83a8c8, `lbu` at 0xd83a8f0, `lbu` at 0xd83a900.
  5 such `sb` accesses store 1 byte to ?, including `sb` at 0xd83a8dc, `sb` at 0xd83a8fc, `sb` at 0xd83a908.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd83a94c, `lw` at 0xd83a964, `lw` at 0xd83a9b0.
  3 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd83a950, `lw` at 0xd83a9b4, `lw` at 0xd83a9f8.
  The `sw` at 0xd83a990 stores 4 bytes to ?.
  The `jalr` at 0xd83a784 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83a7f8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83a830 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+108].
  The `jalr` at 0xd83a930 calls _XReply with a0=a0 at entry (arg0), a1=sp-44, a2=0x0, a3=0x0.
  The `jalr` at 0xd83a958 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83a974 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83a9bc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83a9d8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83aa00 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83aa1c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `blez` branch at 0xd83a798 targets 0xd83a7b0, is taken when t1(=a2) <= 0 (signed), and falls through when t1(=a2) > 0 (signed).
  The `beq` branch at 0xd83a7a0 targets 0xd83a7b0, is taken when t6(=a3) == 0, and falls through when t6(=a3) != 0.
  The `bne` branch at 0xd83a7a8 targets 0xd83a7b8, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xd83a7b0 targets 0xd83aa2c and is always taken.
  The `bgez` branch at 0xd83a7b8 targets 0xd83a7c8, is taken when t7(=a1) >= 0 (signed), and falls through when t7(=a1) < 0 (signed).
  The `beq` branch at 0xd83a7c0 targets 0xd83aa2c and is always taken.
  The `beql` branch at 0xd83a7e4 targets 0xd83a810, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw a3,108(s0)` at 0xd83a7e8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83a81c targets 0xd83a84c, is taken when t8(=[a0+112]) >= t2(?) (unsigned), and falls through when t8(=[a0+112]) < t2(?) (unsigned); its branch-likely delay slot `sw a3,100(s0)` at 0xd83a820 runs only when taken and is annulled on fall-through.
  The `blez` branch at 0xd83a8b0 targets 0xd83a920, is taken when t0(?) <= 0 (signed), and falls through when t0(?) > 0 (signed).
  The `beq` branch at 0xd83a8c0 targets 0xd83a8e8, is taken when (a3(?) & 0x3) == 0, and falls through when (a3(?) & 0x3) != 0.
  The `bne` branch at 0xd83a8d8 targets 0xd83a8c8, is taken when a1(?) != a0(?), and falls through when a1(?) == a0(?).
  The `beq` branch at 0xd83a8e0 targets 0xd83a920, is taken when a0(?) == t0(?), and falls through when a0(?) != t0(?).
  The `bne` branch at 0xd83a918 targets 0xd83a8f0, is taken when a0(?) != a1(?), and falls through when a0(?) == a1(?).
  The `bne` branch at 0xd83a93c targets 0xd83a988, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xd83a948 targets 0xd83a968, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83a94c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83a96c targets 0xd83a980, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd83a980 targets 0xd83aa2c and is always taken.
  The `bnel` branch at 0xd83a998 targets 0xd83a9ac, is taken when t1(=a2) != t4(?), and falls through when t1(=a2) == t4(?); its branch-likely delay slot `lw v0,1232(s0)` at 0xd83a99c runs only when taken and is annulled on fall-through.
  The `bgezl` branch at 0xd83a9a0 targets 0xd83a9f0, is taken when t3(?) >= 0 (signed), and falls through when t3(?) < 0 (signed); its branch-likely delay slot `lw v0,1232(s0)` at 0xd83a9a4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83a9ac targets 0xd83a9cc, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83a9b0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83a9d0 targets 0xd83a9e4, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd83a9e4 targets 0xd83aa2c and is always taken.
  The `beql` branch at 0xd83a9f0 targets 0xd83aa10, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83a9f4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83aa14 targets 0xd83aa2c, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `or v0,zero,zero` at 0xd83aa18 runs only when taken and is annulled on fall-through.
  The return at 0xd83aa38 has v0 = one of 0x0, 0x5b.
  The instructions from 0xd83a9ec to 0xd83a9ec are not reached by any path from the entry, and their branches are not listed.
- `glXDestroyHyperpipeConfigSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83aa40 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83aa40-0xd83abe0 (416 bytes).
  It occupies 416 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83aa70, `lw` at 0xd83ab40, `lw` at 0xd83ab8c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83aa7c, `lw` at 0xd83aa94, `lw` at 0xd83aac0.
  The `lw` at 0xd83aa80 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd83aa98 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd83aaa8, `sw` at 0xd83aac4.
  The `sh` at 0xd83aad0 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83aad4, `sb` at 0xd83ab08.
  The `lw` at 0xd83aad8 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83aaec stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd83aaf0 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd83ab00 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd83ab04 stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd83ab0c loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `sw` at 0xd83ab18 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd83ab28 stores 4 bytes to [a0+108] +0x10.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd83ab48, `lw` at 0xd83ab60, `lw` at 0xd83ab94.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd83ab4c, `lw` at 0xd83ab98.
  The `jalr` at 0xd83aa64 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83aa88 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83aab4 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83ab30 calls _XReply with a0=a0 at entry (arg0), a1=sp-40, a2=0x0, a3=0x0.
  The `jalr` at 0xd83ab54 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83ab70 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83aba0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83abbc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beql` branch at 0xd83aa78 targets 0xd83aa98, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd83aa7c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83aaa4 targets 0xd83aac8, is taken when t6(=[a0+112]) >= t7(=[a0+108]+32) (unsigned), and falls through when t6(=[a0+112]) < t7(=[a0+108]+32) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd83aaa8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd83ab38 targets 0xd83ab84, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xd83ab44 targets 0xd83ab64, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83ab48 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83ab68 targets 0xd83ab7c, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd83ab7c targets 0xd83abcc and is always taken.
  The `beql` branch at 0xd83ab90 targets 0xd83abb0, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83ab94 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83abb4 targets 0xd83abcc, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw v0,40(sp)` at 0xd83abb8 runs only when taken and is annulled on fall-through.
  The return at 0xd83abd8 has v0 = one of 0x5c, ?.
- `glXQueryHyperpipeConfigSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83abe0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83abe0-0xd83ae9c (700 bytes).
  It occupies 700 bytes.
  5 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0xd83ac1c, `sw` at 0xd83acf0, `sw` at 0xd83ad48.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83ac20, `lw` at 0xd83acf4, `lw` at 0xd83ad50.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83ac28, `lw` at 0xd83ac40, `lw` at 0xd83ac6c.
  The `lw` at 0xd83ac2c loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd83ac44 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd83ac54, `sw` at 0xd83ac70.
  The `sh` at 0xd83ac7c stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83ac80, `sb` at 0xd83acb4.
  The `lw` at 0xd83ac84 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83ac98 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd83ac9c stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd83acac stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd83acb0 stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd83acb8 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `sw` at 0xd83acc4 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd83acd4 stores 4 bytes to [a0+108] +0x10.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd83acfc, `lw` at 0xd83ad14, `lw` at 0xd83ad58.
  4 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd83ad00, `lw` at 0xd83ad5c, `lw` at 0xd83adf8.
  The `jalr` at 0xd83ac08 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83ac34 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83ac60 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83acdc calls _XReply with a0=a0 at entry (arg0), a1=sp-44, a2=0x0, a3=0x0.
  The `jalr` at 0xd83ad08 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83ad24 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83ad64 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83ad80 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83adb4 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd83add8 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83ae00 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83ae1c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83ae3c calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd83ae5c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83ae78 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beql` branch at 0xd83ac24 targets 0xd83ac44, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd83ac28 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83ac50 targets 0xd83ac74, is taken when t7(=[a0+112]) >= t8(=[a0+108]+32) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+32) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd83ac54 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd83ace4 targets 0xd83ad38, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xd83acf8 targets 0xd83ad18, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83acfc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83ad1c targets 0xd83ad30, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd83ad30 targets 0xd83ae88 and is always taken.
  The `bgtz` branch at 0xd83ad44 targets 0xd83ad94, is taken when t2(?) > 0 (signed), and falls through when t2(?) <= 0 (signed).
  The `beql` branch at 0xd83ad54 targets 0xd83ad74, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83ad58 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83ad78 targets 0xd83ad8c, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd83ad8c targets 0xd83ae88 and is always taken.
  The `bne` branch at 0xd83adc4 targets 0xd83ae30, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beql` branch at 0xd83adf0 targets 0xd83ae10, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83adf4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83ae14 targets 0xd83ae28, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd83ae28 targets 0xd83ae88 and is always taken.
  The `beql` branch at 0xd83ae4c targets 0xd83ae6c, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83ae50 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83ae70 targets 0xd83ae88, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw v0,92(sp)` at 0xd83ae74 runs only when taken and is annulled on fall-through.
  The return at 0xd83ae94 has v0 = one of 0x0, ?.
- `__glOdylc_Normal3b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9d6a50 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9d6a50-0xd9d6b60 (272 bytes).
  It occupies 272 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xd9d6a78, `lw` at 0xd9d6b3c.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xd9d6a7c, `lw` at 0xd9d6af0.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xd9d6a80, `lw` at 0xd9d6ad8.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xd9d6ae0, `sw` at 0xd9d6b40.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xd9d6aec, `sw` at 0xd9d6b44.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd9d6b14, `sw` at 0xd9d6b24, `sw` at 0xd9d6b30.
  The `sw` at 0xd9d6b4c stores 4 bytes to abs 0x1034.
  The `jalr` at 0xd9d6ab8 calls __glSPDlistSpace [0xda0f8cc] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1028].
  The `bne` branch at 0xd9d6a84 targets 0xd9d6a9c, is taken when t6(=[0x1034]) != 0, and falls through when t6(=[0x1034]) == 0.
  The `beql` branch at 0xd9d6a90 targets 0xd9d6aa0, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `addiu t8,t0,4` at 0xd9d6a94 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd9d6aa4 targets 0xd9d6b08, is taken when a3(=[0x1028]) >= t8(=one of 0x4, 0x5) (signed), and falls through when a3(=[0x1028]) < t8(=one of 0x4, 0x5) (signed); its branch-likely delay slot `sll t5,t0,0x2` at 0xd9d6aa8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd9d6ad0 targets 0xd9d6af0, is taken when v0(=ret(__glSPDlistSpace)) != 0, and falls through when v0(=ret(__glSPDlistSpace)) == 0.
  The `beq` branch at 0xd9d6ae8 targets 0xd9d6b50 and is always taken.
  The `beql` branch at 0xd9d6af8 targets 0xd9d6b08, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `sll t5,t0,0x2` at 0xd9d6afc runs only when taken and is annulled on fall-through.
  The return at 0xd9d6b58 has v0 = one of ret(__glSPDlistSpace), ?.
- `__glOdylc_Normal3s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9d72f4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9d72f4-0xd9d7404 (272 bytes).
  It occupies 272 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xd9d731c, `lw` at 0xd9d73e0.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xd9d7320, `lw` at 0xd9d7394.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xd9d7324, `lw` at 0xd9d737c.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xd9d7384, `sw` at 0xd9d73e4.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xd9d7390, `sw` at 0xd9d73e8.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd9d73b8, `sw` at 0xd9d73c8, `sw` at 0xd9d73d4.
  The `sw` at 0xd9d73f0 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xd9d735c calls __glSPDlistSpace [0xda0f8cc] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1028].
  The `bne` branch at 0xd9d7328 targets 0xd9d7340, is taken when t6(=[0x1034]) != 0, and falls through when t6(=[0x1034]) == 0.
  The `beql` branch at 0xd9d7334 targets 0xd9d7344, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `addiu t8,t0,4` at 0xd9d7338 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd9d7348 targets 0xd9d73ac, is taken when a3(=[0x1028]) >= t8(=one of 0x4, 0x5) (signed), and falls through when a3(=[0x1028]) < t8(=one of 0x4, 0x5) (signed); its branch-likely delay slot `sll t5,t0,0x2` at 0xd9d734c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd9d7374 targets 0xd9d7394, is taken when v0(=ret(__glSPDlistSpace)) != 0, and falls through when v0(=ret(__glSPDlistSpace)) == 0.
  The `beq` branch at 0xd9d738c targets 0xd9d73f4 and is always taken.
  The `beql` branch at 0xd9d739c targets 0xd9d73ac, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `sll t5,t0,0x2` at 0xd9d73a0 runs only when taken and is annulled on fall-through.
  The return at 0xd9d73fc has v0 = one of ret(__glSPDlistSpace), ?.
- `__glOdylc_TexCoord1d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9de5b0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9de5b0-0xd9de6ac (252 bytes).
  It occupies 252 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xd9de5cc, `lw` at 0xd9de67c.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xd9de5d0, `lw` at 0xd9de64c.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xd9de5d4, `lw` at 0xd9de634.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xd9de63c, `sw` at 0xd9de694.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xd9de648, `sw` at 0xd9de698.
  The `sw` at 0xd9de674 stores 4 bytes to ([0x1030] + (one of 0x0, 0x1 << 0x2)) +0x0.
  The `swc1` at 0xd9de678 stores 4 bytes to ([0x1030] + (one of 0x0, 0x1 << 0x2)) +0x4.
  The `sw` at 0xd9de690 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xd9de610 calls __glSPDlistSpace [0xda0f8cc] with a0=0x0, a1=one of 0x0, 0x1, a2=0x1028, a3=a3 at entry (arg3).
  The `bne` branch at 0xd9de5d8 targets 0xd9de5f0, is taken when t6(=[0x1034]) != 0, and falls through when t6(=[0x1034]) == 0.
  The `beql` branch at 0xd9de5e4 targets 0xd9de5f4, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `addiu t8,a1,2` at 0xd9de5e8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd9de5f8 targets 0xd9de664, is taken when a0(=[0x1028]) >= t8(=one of 0x2, 0x3) (signed), and falls through when a0(=[0x1028]) < t8(=one of 0x2, 0x3) (signed); its branch-likely delay slot `cvt.s.d $f4,$f12` at 0xd9de5fc runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd9de62c targets 0xd9de64c, is taken when v0(=ret(__glSPDlistSpace)) != 0, and falls through when v0(=ret(__glSPDlistSpace)) == 0.
  The `beq` branch at 0xd9de644 targets 0xd9de69c and is always taken.
  The `beql` branch at 0xd9de654 targets 0xd9de664, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `cvt.s.d $f4,$f12` at 0xd9de658 runs only when taken and is annulled on fall-through.
  The return at 0xd9de6a4 has v0 = one of ret(__glSPDlistSpace), ?.
- `__glOdylc_TexCoord2d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9ded88 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9ded88-0xd9dee94 (268 bytes).
  It occupies 268 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xd9deda4, `lw` at 0xd9dee64.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xd9deda8, `lw` at 0xd9dee2c.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xd9dedac, `lw` at 0xd9dee14.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xd9dee1c, `sw` at 0xd9dee7c.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xd9dee28, `sw` at 0xd9dee80.
  The `sw` at 0xd9dee58 stores 4 bytes to ([0x1030] + (one of 0x0, 0x1 << 0x2)) +0x0.
  The `swc1` at 0xd9dee5c stores 4 bytes to ([0x1030] + (one of 0x0, 0x1 << 0x2)) +0x4.
  The `swc1` at 0xd9dee60 stores 4 bytes to ([0x1030] + (one of 0x0, 0x1 << 0x2)) +0x8.
  The `sw` at 0xd9dee78 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xd9dedec calls __glSPDlistSpace [0xda0f8cc] with a0=0x0, a1=one of 0x0, 0x1, a2=0x1028, a3=a3 at entry (arg3).
  The `bne` branch at 0xd9dedb0 targets 0xd9dedc8, is taken when t6(=[0x1034]) != 0, and falls through when t6(=[0x1034]) == 0.
  The `beql` branch at 0xd9dedbc targets 0xd9dedcc, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `addiu t8,a1,3` at 0xd9dedc0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd9dedd0 targets 0xd9dee44, is taken when a0(=[0x1028]) >= t8(=one of 0x3, 0x4) (signed), and falls through when a0(=[0x1028]) < t8(=one of 0x3, 0x4) (signed); its branch-likely delay slot `cvt.s.d $f4,$f12` at 0xd9dedd4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd9dee0c targets 0xd9dee2c, is taken when v0(=ret(__glSPDlistSpace)) != 0, and falls through when v0(=ret(__glSPDlistSpace)) == 0.
  The `beq` branch at 0xd9dee24 targets 0xd9dee84 and is always taken.
  The `beql` branch at 0xd9dee34 targets 0xd9dee44, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `cvt.s.d $f4,$f12` at 0xd9dee38 runs only when taken and is annulled on fall-through.
  The return at 0xd9dee8c has v0 = one of ret(__glSPDlistSpace), ?.
- `__glOdylc_TexCoord2i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9df1b0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9df1b0-0xd9df2b4 (260 bytes).
  It occupies 260 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xd9df1d4, `lw` at 0xd9df290.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xd9df1d8, `lw` at 0xd9df24c.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xd9df1dc, `lw` at 0xd9df234.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xd9df23c, `sw` at 0xd9df294.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xd9df248, `sw` at 0xd9df298.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd9df270, `sw` at 0xd9df280, `sw` at 0xd9df28c.
  The `sw` at 0xd9df2a0 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xd9df214 calls __glSPDlistSpace [0xda0f8cc] with a0=0x0, a1=a1 at entry (arg1), a2=[0x1028], a3=one of 0x0, 0x1.
  The `bne` branch at 0xd9df1e0 targets 0xd9df1f8, is taken when t6(=[0x1034]) != 0, and falls through when t6(=[0x1034]) == 0.
  The `beql` branch at 0xd9df1ec targets 0xd9df1fc, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `addiu t8,a3,3` at 0xd9df1f0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd9df200 targets 0xd9df264, is taken when a2(=[0x1028]) >= t8(=one of 0x3, 0x4) (signed), and falls through when a2(=[0x1028]) < t8(=one of 0x3, 0x4) (signed); its branch-likely delay slot `sll t4,a3,0x2` at 0xd9df204 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd9df22c targets 0xd9df24c, is taken when v0(=ret(__glSPDlistSpace)) != 0, and falls through when v0(=ret(__glSPDlistSpace)) == 0.
  The `beq` branch at 0xd9df244 targets 0xd9df2a4 and is always taken.
  The `beql` branch at 0xd9df254 targets 0xd9df264, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `sll t4,a3,0x2` at 0xd9df258 runs only when taken and is annulled on fall-through.
  The return at 0xd9df2ac has v0 = one of ret(__glSPDlistSpace), ?.
- `__glOdylc_TexCoord3i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9dfa24 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9dfa24-0xd9dfb34 (272 bytes).
  It occupies 272 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xd9dfa4c, `lw` at 0xd9dfb10.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xd9dfa50, `lw` at 0xd9dfac4.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xd9dfa54, `lw` at 0xd9dfaac.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xd9dfab4, `sw` at 0xd9dfb14.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xd9dfac0, `sw` at 0xd9dfb18.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd9dfae8, `sw` at 0xd9dfaf8, `sw` at 0xd9dfb04.
  The `sw` at 0xd9dfb20 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xd9dfa8c calls __glSPDlistSpace [0xda0f8cc] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1028].
  The `bne` branch at 0xd9dfa58 targets 0xd9dfa70, is taken when t6(=[0x1034]) != 0, and falls through when t6(=[0x1034]) == 0.
  The `beql` branch at 0xd9dfa64 targets 0xd9dfa74, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `addiu t8,t0,4` at 0xd9dfa68 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd9dfa78 targets 0xd9dfadc, is taken when a3(=[0x1028]) >= t8(=one of 0x4, 0x5) (signed), and falls through when a3(=[0x1028]) < t8(=one of 0x4, 0x5) (signed); its branch-likely delay slot `sll t5,t0,0x2` at 0xd9dfa7c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd9dfaa4 targets 0xd9dfac4, is taken when v0(=ret(__glSPDlistSpace)) != 0, and falls through when v0(=ret(__glSPDlistSpace)) == 0.
  The `beq` branch at 0xd9dfabc targets 0xd9dfb24 and is always taken.
  The `beql` branch at 0xd9dfacc targets 0xd9dfadc, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `sll t5,t0,0x2` at 0xd9dfad0 runs only when taken and is annulled on fall-through.
  The return at 0xd9dfb2c has v0 = one of ret(__glSPDlistSpace), ?.
- `__glOdylc_TexCoord4i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9e02fc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9e02fc-0xd9e0418 (284 bytes).
  It occupies 284 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xd9e0328, `lw` at 0xd9e03f4.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xd9e032c, `lw` at 0xd9e03a0.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xd9e0330, `lw` at 0xd9e0388.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xd9e0390, `sw` at 0xd9e03f8.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xd9e039c, `sw` at 0xd9e03fc.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd9e03c4, `sw` at 0xd9e03d4, `sw` at 0xd9e03e0.
  The `sw` at 0xd9e0404 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xd9e0368 calls __glSPDlistSpace [0xda0f8cc] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xd9e0334 targets 0xd9e034c, is taken when t6(=[0x1034]) != 0, and falls through when t6(=[0x1034]) == 0.
  The `beql` branch at 0xd9e0340 targets 0xd9e0350, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `addiu t8,t1,5` at 0xd9e0344 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd9e0354 targets 0xd9e03b8, is taken when t0(=[0x1028]) >= t8(=one of 0x5, 0x6) (signed), and falls through when t0(=[0x1028]) < t8(=one of 0x5, 0x6) (signed); its branch-likely delay slot `sll t6,t1,0x2` at 0xd9e0358 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd9e0380 targets 0xd9e03a0, is taken when v0(=ret(__glSPDlistSpace)) != 0, and falls through when v0(=ret(__glSPDlistSpace)) == 0.
  The `beq` branch at 0xd9e0398 targets 0xd9e0408 and is always taken.
  The `beql` branch at 0xd9e03a8 targets 0xd9e03b8, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `sll t6,t1,0x2` at 0xd9e03ac runs only when taken and is annulled on fall-through.
  The return at 0xd9e0410 has v0 = one of ret(__glSPDlistSpace), ?.
- `DownsampleTextureThruHW` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9e335c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9e335c-0xd9e3f9c (3136 bytes).
  It occupies 3136 bytes.
  The `lw` at 0xd9e336c loads 4 bytes from abs 0x1010.
  4 such `lw` accesses load 4 bytes from [0x1010] +0x7fb0, including `lw` at 0xd9e3388, `lw` at 0xd9e37e4, `lw` at 0xd9e38dc.
  4 such `lw` accesses load 4 bytes from [0x1010] +0x7fb4, including `lw` at 0xd9e3398, `lw` at 0xd9e37fc, `lw` at 0xd9e38ec.
  4 such `lw` accesses load 4 bytes from [0x1010] +0x7fb8, including `lw` at 0xd9e33a8, `lw` at 0xd9e3880, `lw` at 0xd9e38fc.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7fe0, including `lw` at 0xd9e33b8, `lw` at 0xd9e3938.
  24 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd9e33d4, `lw` at 0xd9e33e4, `lw` at 0xd9e345c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0xd9e33e0, `lw` at 0xd9e33ec, `lw` at 0xd9e33f4.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c00, including `lw` at 0xd9e3408, `lw` at 0xd9e3420.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7c00, including `sw` at 0xd9e341c, `sw` at 0xd9e3430.
  10 such `lw` accesses load 4 bytes from [0x1010] +0x16960, including `lw` at 0xd9e3438, `lw` at 0xd9e37a0, `lw` at 0xd9e3920.
  9 such `sw` accesses store 4 bytes to [0x1010] +0x16960, including `sw` at 0xd9e3448, `sw` at 0xd9e37b0, `sw` at 0xd9e3930.
  9 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xd9e3450, `sw` at 0xd9e37b8, `sw` at 0xd9e3934.
  9 such `lw` accesses load 4 bytes from [0x1010] +0x2e24, including `lw` at 0xd9e3454, `lw` at 0xd9e37bc, `lw` at 0xd9e393c.
  9 such `sw` accesses store 4 bytes to [0x1010] +0x2e24, including `sw` at 0xd9e3458, `sw` at 0xd9e37c8, `sw` at 0xd9e3950.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7cc4, including `lw` at 0xd9e3548, `lw` at 0xd9e358c.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x7cc4, including `sw` at 0xd9e3564, `sw` at 0xd9e35c0, `sw` at 0xd9e35c4.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7cc8, including `lw` at 0xd9e35c8, `lw` at 0xd9e3628.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x7cc8, including `sw` at 0xd9e35f0, `sw` at 0xd9e3620, `sw` at 0xd9e3644.
  7 such `lw` accesses load 4 bytes from [0x1010] +0x7cd4, including `lw` at 0xd9e35f4, `lw` at 0xd9e3624, `lw` at 0xd9e3668.
  7 such `sw` accesses store 4 bytes to [0x1010] +0x7cd4, including `sw` at 0xd9e3618, `sw` at 0xd9e3640, `sw` at 0xd9e3684.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7ccc, including `lw` at 0xd9e3648, `lw` at 0xd9e3694.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x7ccc, including `sw` at 0xd9e3664, `sw` at 0xd9e368c, `sw` at 0xd9e36a8.
  The `lw` at 0xd9e36ac loads 4 bytes from [0x1010] +0x7cd0.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7cd0, including `sw` at 0xd9e36b4, `sw` at 0xd9e36c0.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7cdc, including `lw` at 0xd9e36d8, `lw` at 0xd9e3708.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7cdc, including `sw` at 0xd9e36fc, `sw` at 0xd9e3728.
  The `lw` at 0xd9e37e0 loads 4 bytes from (a0 + (a1 << 0x2)) +0x514.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7fb0, including `sw` at 0xd9e3800, `sw` at 0xd9e3e98.
  5 such `sw` accesses store 4 bytes to [0x1010] +0x7fb4, including `sw` at 0xd9e3828, `sw` at 0xd9e384c, `sw` at 0xd9e386c.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7fb8, including `sw` at 0xd9e3894, `sw` at 0xd9e3eb8.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x9830, including `lw` at 0xd9e3898, `lw` at 0xd9e3ebc.
  6 such `sw` accesses store 4 bytes to [0x1010] +0x9830, including `sw` at 0xd9e38b8, `sw` at 0xd9e390c, `sw` at 0xd9e3e70.
  33 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xd9e38bc, `sw` at 0xd9e38c8, `sw` at 0xd9e38d0.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7fe0, including `sw` at 0xd9e394c, `sw` at 0xd9e3f48.
  The `lw` at 0xd9e397c loads 4 bytes from [0x1010] +0x96a0.
  The `sw` at 0xd9e398c stores 4 bytes to [0x1010] +0x96a0.
  6 such `lw` accesses load 4 bytes from [0x1010] +0x96a4, including `lw` at 0xd9e39dc, `lw` at 0xd9e3a10, `lw` at 0xd9e3a34.
  6 such `sw` accesses store 4 bytes to [0x1010] +0x96a4, including `sw` at 0xd9e3a0c, `sw` at 0xd9e3a30, `sw` at 0xd9e3a54.
  The `lw` at 0xd9e3acc loads 4 bytes from (a0 + (a2 << 0x2)) +0x514.
  The `lw` at 0xd9e3ad0 loads 4 bytes from [0x1010] +0x969c.
  The `sw` at 0xd9e3aec stores 4 bytes to [0x1010] +0x969c.
  The `lw` at 0xd9e3c50 loads 4 bytes from [0x1010] +0x7c24.
  4 such `sw` accesses store 4 bytes to [0x1010] +0x7c24, including `sw` at 0xd9e3c54, `sw` at 0xd9e3ca0, `sw` at 0xd9e3cbc.
  The `lw` at 0xd9e3c60 loads 4 bytes from [0x1010] +0x7c20.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x7c20, including `sw` at 0xd9e3c6c, `sw` at 0xd9e3c90, `sw` at 0xd9e3f60.
  14 such `swc1` accesses store 4 bytes to abs 0x10000, including `swc1` at 0xd9e3d70, `swc1` at 0xd9e3d74, `swc1` at 0xd9e3d78.
  The `lw` at 0xd9e3e64 loads 4 bytes from [0x1010] +0x96f4.
  The `jalr` at 0xd9e3534 calls __glOdysseyImageLogBase2 [0xd9d1eb0] with a0=?, a1=?, a2=?, a3=[0x1010].
  The `jalr` at 0xd9e3578 calls __glOdysseyImageLogBase2 [0xd9d1eb0] with a0=?, a1=?, a2=?, a3=[0x1010].
  The `jalr` at 0xd9e3754 calls ChooseSuitableBuzzTexModeBaseFmt [0xd9e1dc8] with a0=?, a1=?, a2=?, a3=[0x1010].
  The `jalr` at 0xd9e39b4 calls GetImageFmtEnumFromBuzzTexFormat [0xd9e1d08] with a0=?, a1=[0x1010]+32768, a2=?, a3=[0x1010].
  The `jalr` at 0xd9e39c8 calls __glOdysseyImageCalcFieldFormat [0xd98f304] with a0=ret(GetImageFmtEnumFromBuzzTexFormat), a1=?, a2=?, a3=?.
  The `jalr` at 0xd9e3d10 calls __glOdysseyValidateHardware [0xd96ae20] with a0=[0x1010], a1=[0x1010]+32768, a2=?, a3=[0x1010].
  The `bnel` branch at 0xd9e33dc targets 0xd9e33f8, is taken when v1(=0x2) != t7(?), and falls through when v1(=0x2) == t7(?); its branch-likely delay slot `lw t6,12(t8)` at 0xd9e33e0 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd9e33e8 targets 0xd9e33f8, is taken when v1(=0x2) != t9(?), and falls through when v1(=0x2) == t9(?); its branch-likely delay slot `lw t6,12(t8)` at 0xd9e33ec runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd9e3400 targets 0xd9e3420, is taken when a1(=0xde0) != t6(=[a0+12]), and falls through when a1(=0xde0) == t6(=[a0+12]).
  The `beq` branch at 0xd9e3418 targets 0xd9e3434 and is always taken.
  The `beq` branch at 0xd9e3460 targets 0xd9e3484, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0xd9e3468 targets 0xd9e3490, is taken when a0(?) == at(=0x1), and falls through when a0(?) != at(=0x1).
  The `beq` branch at 0xd9e3474 targets 0xd9e3498, is taken when a0(?) == at(=0x8), and falls through when a0(?) != at(=0x8).
  The `beq` branch at 0xd9e347c targets 0xd9e34a4 and is always taken.
  The `beq` branch at 0xd9e3488 targets 0xd9e34a4 and is always taken.
  The `beq` branch at 0xd9e3490 targets 0xd9e34a4 and is always taken.
  The `beq` branch at 0xd9e3498 targets 0xd9e34a4 and is always taken.
  The `beq` branch at 0xd9e34c0 targets 0xd9e34d0, is taken when a1(=0xde0) == t7(=[a0+12]), and falls through when a1(=0xde0) != t7(=[a0+12]).
  The `beq` branch at 0xd9e34c8 targets 0xd9e34d4 and is always taken.
  The `beq` branch at 0xd9e34d4 targets 0xd9e34ec, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xd9e34e4 targets 0xd9e34f0 and is always taken.
  The `beq` branch at 0xd9e34f0 targets 0xd9e3504, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0xd9e34fc targets 0xd9e3508 and is always taken.
  The `beq` branch at 0xd9e35ec targets 0xd9e3624, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0xd9e361c targets 0xd9e3648 and is always taken.
  The `beq` branch at 0xd9e3660 targets 0xd9e3690, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0xd9e3688 targets 0xd9e36ac and is always taken.
  The `bne` branch at 0xd9e36bc targets 0xd9e36cc, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0xd9e36c4 targets 0xd9e3700, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0xd9e36f8 targets 0xd9e372c and is always taken.
  The `beq` branch at 0xd9e38a4 targets 0xd9e38d8, is taken when t6(=[[0x1010]+38960]) == 0, and falls through when t6(=[[0x1010]+38960]) != 0.
  The `beq` branch at 0xd9e3b24 targets 0xd9e3b9c, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bgez` branch at 0xd9e3b50 targets 0xd9e3b6c, is taken when t7(?) >= 0 (signed), and falls through when t7(?) < 0 (signed).
  The `beq` branch at 0xd9e3b94 targets 0xd9e3bd8 and is always taken.
  The `beq` branch at 0xd9e3bd8 targets 0xd9e3c30, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bgez` branch at 0xd9e3bf0 targets 0xd9e3c08, is taken when t6(?) >= 0 (signed), and falls through when t6(?) < 0 (signed).
  The `beq` branch at 0xd9e3c28 targets 0xd9e3c50 and is always taken.
  The `beql` branch at 0xd9e3ce4 targets 0xd9e3d54, is taken when t8(=[[0x1010]+92512]) == 0, and falls through when t8(=[[0x1010]+92512]) != 0; its branch-likely delay slot `lui t9,0x1` at 0xd9e3ce8 runs only when taken and is annulled on fall-through.
  The `bgez` branch at 0xd9e3d94 targets 0xd9e3da8, is taken when t8(?) >= 0 (signed), and falls through when t8(?) < 0 (signed).
  The `bgez` branch at 0xd9e3dbc targets 0xd9e3dd0, is taken when t9(?) >= 0 (signed), and falls through when t9(?) < 0 (signed).
  The `bgez` branch at 0xd9e3dec targets 0xd9e3e00, is taken when t8(?) >= 0 (signed), and falls through when t8(?) < 0 (signed).
  The `bgez` branch at 0xd9e3e1c targets 0xd9e3e30, is taken when t7(?) >= 0 (signed), and falls through when t7(?) < 0 (signed).
  The `beql` branch at 0xd9e3e68 targets 0xd9e3e88, is taken when t9(=[[0x1010]+38644]) == 0, and falls through when t9(=[[0x1010]+38644]) != 0; its branch-likely delay slot `addiu at,a3,32767` at 0xd9e3e6c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd9e3ec0 targets 0xd9e3ee0, is taken when t6(=[[0x1010]+38960]) == 0, and falls through when t6(=[[0x1010]+38960]) != 0; its branch-likely delay slot `sw t7,0(v1)` at 0xd9e3ec4 runs only when taken and is annulled on fall-through.
  The return at 0xd9e3f94 has v0 = 0x10443.
  The instructions from 0xd9e34a0 to 0xd9e34a0 are not reached by any path from the entry, and their branches are not listed.
- `__glOdysseyTextureDeactivate` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9e4b04 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9e4b04-0xd9e4bfc (248 bytes).
  It occupies 248 bytes.
  The `lw` at 0xd9e4b34 loads 4 bytes from a0 (arg0 at entry) +0x16420.
  The `lw` at 0xd9e4b38 loads 4 bytes from a0 (arg0 at entry) +0x16424.
  The `lw` at 0xd9e4b3c loads 4 bytes from a1 (arg1 at entry) +0x4fc.
  The `sw` at 0xd9e4b58 stores 4 bytes to a0 (arg0 at entry) +0x16418.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd9e4b7c, `sw` at 0xd9e4bc4, `sw` at 0xd9e4bc8.
  The `lw` at 0xd9e4b80 loads 4 bytes from a0 (arg0 at entry) +0x1641c.
  The `lw` at 0xd9e4b94 loads 4 bytes from [a0+91164] +0x4fc.
  The `lw` at 0xd9e4b98 loads 4 bytes from a0 (arg0 at entry) +0x16428.
  The `lw` at 0xd9e4b9c loads 4 bytes from a0 (arg0 at entry) +0x1642c.
  The `sw` at 0xd9e4be4 stores 4 bytes to a0 (arg0 at entry) +0x1641c.
  The `jalr` at 0xd9e4b40 calls __glOdysseyClosePMObjReference [0xd9d9410] with a0=a0 at entry (arg0), a1=[a1+1276], a2=[a0+91168], a3=[a0+91172].
  The `jalr` at 0xd9e4ba0 calls __glOdysseyClosePMObjReference [0xd9d9410] with a0=a0 at entry (arg0), a1=[[a0+91164]+1276], a2=[a0+91176], a3=[a0+91180].
  The `bne` branch at 0xd9e4b78 targets 0xd9e4b6c, is taken when v1(?) < 0x10 (signed), and falls through when v1(?) >= 0x10 (signed).
  The `beql` branch at 0xd9e4b88 targets 0xd9e4bec, is taken when t1(=[a0+91164]) == 0, and falls through when t1(=[a0+91164]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd9e4b8c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd9e4bd4 targets 0xd9e4bc0, is taken when v1(?) != a1(=0x10), and falls through when v1(?) == a1(=0x10).
  The return at 0xd9e4bf4 has v0 = one of ?, 0xffffffffbaadcade.
- `RGBSendFc` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fb0c8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9fb0c8-0xd9fb154 (140 bytes).
  It occupies 140 bytes.
  The `lbu` at 0xd9fb0c8 loads 1 byte from a0 (arg0 at entry) +0xb8.
  3 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xd9fb0f8, `sw` at 0xd9fb100, `sw` at 0xd9fb12c.
  The `lwc1` at 0xd9fb104 loads 4 bytes from a0 (arg0 at entry) +0x90.
  8 such `swc1` accesses store 4 bytes to abs 0x10000, including `swc1` at 0xd9fb110, `swc1` at 0xd9fb118, `swc1` at 0xd9fb120.
  The `lwc1` at 0xd9fb114 loads 4 bytes from a0 (arg0 at entry) +0x94.
  The `lwc1` at 0xd9fb11c loads 4 bytes from a0 (arg0 at entry) +0x98.
  The `lwc1` at 0xd9fb124 loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `lwc1` at 0xd9fb130 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lwc1` at 0xd9fb138 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `lwc1` at 0xd9fb140 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lwc1` at 0xd9fb148 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `beq` branch at 0xd9fb0d4 targets 0xd9fb0e4, is taken when t6(=[a0+184]:1) == 0, and falls through when t6(=[a0+184]:1) != 0.
  The `beq` branch at 0xd9fb0dc targets 0xd9fb0e8 and is always taken.
  The return at 0xd9fb14c has v0 = one of 0xf, 0x10.
- `RGBSendClippedBmFmTN` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fc2b4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9fc2b4-0xd9fc5a0 (748 bytes).
  It occupies 748 bytes.
  The `lbu` at 0xd9fc2c0 loads 1 byte from a0 (arg0 at entry) +0xb8.
  The `lw` at 0xd9fc2c4 loads 4 bytes from abs 0x1010.
  20 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xd9fc2ec, `sw` at 0xd9fc310, `sw` at 0xd9fc32c.
  The `lw` at 0xd9fc2f0 loads 4 bytes from [0x1010] +0x588.
  75 such `swc1` accesses store 4 bytes to abs 0x10000, including `swc1` at 0xd9fc314, `swc1` at 0xd9fc318, `swc1` at 0xd9fc320.
  The `lwc1` at 0xd9fc330 loads 4 bytes from a0 (arg0 at entry) +0x170.
  The `lwc1` at 0xd9fc340 loads 4 bytes from a0 (arg0 at entry) +0x174.
  The `lwc1` at 0xd9fc350 loads 4 bytes from a0 (arg0 at entry) +0x178.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9c, including `lwc1` at 0xd9fc374, `lwc1` at 0xd9fc470.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x90, including `lwc1` at 0xd9fc388, `lwc1` at 0xd9fc484.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x94, including `lwc1` at 0xd9fc398, `lwc1` at 0xd9fc494.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x98, including `lwc1` at 0xd9fc3a8, `lwc1` at 0xd9fc4a4.
  The `lwc1` at 0xd9fc3cc loads 4 bytes from a0 (arg0 at entry) +0x180.
  The `lwc1` at 0xd9fc3d4 loads 4 bytes from a0 (arg0 at entry) +0x184.
  The `lwc1` at 0xd9fc3dc loads 4 bytes from a0 (arg0 at entry) +0x188.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xac, including `lwc1` at 0xd9fc3f8, `lwc1` at 0xd9fc4f0.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xa0, including `lwc1` at 0xd9fc404, `lwc1` at 0xd9fc504.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xa4, including `lwc1` at 0xd9fc40c, `lwc1` at 0xd9fc50c.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xa8, including `lwc1` at 0xd9fc414, `lwc1` at 0xd9fc514.
  The `lwc1` at 0xd9fc52c loads 4 bytes from a0 (arg0 at entry) +0xc0.
  The `lwc1` at 0xd9fc53c loads 4 bytes from a0 (arg0 at entry) +0xc4.
  The `lwc1` at 0xd9fc54c loads 4 bytes from a0 (arg0 at entry) +0xc8.
  The `lwc1` at 0xd9fc558 loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `lwc1` at 0xd9fc560 loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `lwc1` at 0xd9fc568 loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `lwc1` at 0xd9fc570 loads 4 bytes from a0 (arg0 at entry) +0x3c.
  The `lwc1` at 0xd9fc57c loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lwc1` at 0xd9fc584 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `lwc1` at 0xd9fc58c loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lwc1` at 0xd9fc594 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `beq` branch at 0xd9fc2cc targets 0xd9fc2dc, is taken when t6(=[a0+184]:1) == 0, and falls through when t6(=[a0+184]:1) != 0.
  The `beq` branch at 0xd9fc2d4 targets 0xd9fc2e0 and is always taken.
  The `bne` branch at 0xd9fc2fc targets 0xd9fc424, is taken when t1(=[[0x1010]+1416]) != at(=0x81fa), and falls through when t1(=[[0x1010]+1416]) == at(=0x81fa).
  The `beq` branch at 0xd9fc41c targets 0xd9fc520 and is always taken.
  The return at 0xd9fc598 has v0 = [0x1010].
- `CISendFc` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fde00 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9fde00-0xd9fde74 (116 bytes).
  It occupies 116 bytes.
  The `lbu` at 0xd9fde00 loads 1 byte from a0 (arg0 at entry) +0xb8.
  3 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xd9fde30, `sw` at 0xd9fde38, `sw` at 0xd9fde4c.
  The `lwc1` at 0xd9fde3c loads 4 bytes from a0 (arg0 at entry) +0x90.
  5 such `swc1` accesses store 4 bytes to abs 0x10000, including `swc1` at 0xd9fde48, `swc1` at 0xd9fde54, `swc1` at 0xd9fde5c.
  The `lwc1` at 0xd9fde50 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lwc1` at 0xd9fde58 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `lwc1` at 0xd9fde60 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lwc1` at 0xd9fde68 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `beq` branch at 0xd9fde0c targets 0xd9fde1c, is taken when t6(=[a0+184]:1) == 0, and falls through when t6(=[a0+184]:1) != 0.
  The `beq` branch at 0xd9fde14 targets 0xd9fde20 and is always taken.
  The return at 0xd9fde6c has v0 = one of 0xf, 0x10.
- `CISendClippedBmFmN` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fe38c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9fe38c-0xd9fe504 (376 bytes).
  It occupies 376 bytes.
  The `lbu` at 0xd9fe398 loads 1 byte from a0 (arg0 at entry) +0xb8.
  11 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xd9fe3c8, `sw` at 0xd9fe3d0, `sw` at 0xd9fe3f0.
  The `lwc1` at 0xd9fe3d4 loads 4 bytes from a0 (arg0 at entry) +0x90.
  39 such `swc1` accesses store 4 bytes to abs 0x10000, including `swc1` at 0xd9fe3e0, `swc1` at 0xd9fe3e4, `swc1` at 0xd9fe3e8.
  The `lwc1` at 0xd9fe448 loads 4 bytes from a0 (arg0 at entry) +0xa0.
  The `lwc1` at 0xd9fe4bc loads 4 bytes from a0 (arg0 at entry) +0xc0.
  The `lwc1` at 0xd9fe4cc loads 4 bytes from a0 (arg0 at entry) +0xc4.
  The `lwc1` at 0xd9fe4d4 loads 4 bytes from a0 (arg0 at entry) +0xc8.
  The `lwc1` at 0xd9fe4e0 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lwc1` at 0xd9fe4e8 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `lwc1` at 0xd9fe4f0 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lwc1` at 0xd9fe4f8 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `beq` branch at 0xd9fe3a4 targets 0xd9fe3b4, is taken when t6(=[a0+184]:1) == 0, and falls through when t6(=[a0+184]:1) != 0.
  The `beq` branch at 0xd9fe3ac targets 0xd9fe3b8 and is always taken.
  The return at 0xd9fe4fc has v0 = one of 0xf, 0x10.
- `__glOdysseyQueryHyperpipeRect` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda09064 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda09064-0xda090e8 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xda0908c loads 4 bytes from a0 (arg0 at entry) +0x21ef0.
  The `jalr` at 0xda090bc calls __glOdysseyIoctl [0xd9eb890] with a0=a0 at entry (arg0), a1=0x6f640016, a2=sp-40, a3=a3 at entry (arg3).
  The `beq` branch at 0xda090c4 targets 0xda090d4, is taken when v0(=ret(__glOdysseyIoctl)) == 0, and falls through when v0(=ret(__glOdysseyIoctl)) != 0.
  The `beq` branch at 0xda090cc targets 0xda090d8 and is always taken.
  The return at 0xda090e0 has v0 = one of 0x0, 0x1.
- `__glOdysseyQueryHyperpipeLimit` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda090e8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda090e8-0xda0916c (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xda09110 loads 4 bytes from a0 (arg0 at entry) +0x21ef0.
  The `jalr` at 0xda09140 calls __glOdysseyIoctl [0xd9eb890] with a0=a0 at entry (arg0), a1=0x6f640018, a2=sp-40, a3=a3 at entry (arg3).
  The `beq` branch at 0xda09148 targets 0xda09158, is taken when v0(=ret(__glOdysseyIoctl)) == 0, and falls through when v0(=ret(__glOdysseyIoctl)) != 0.
  The `beq` branch at 0xda09150 targets 0xda0915c and is always taken.
  The return at 0xda09164 has v0 = one of 0x0, 0x1.
- `__glOdysseyHyperpipeRect` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda0916c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda0916c-0xda091f0 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xda09194 loads 4 bytes from a0 (arg0 at entry) +0x21ef0.
  The `jalr` at 0xda091c4 calls __glOdysseyIoctl [0xd9eb890] with a0=a0 at entry (arg0), a1=0x6f640018, a2=sp-40, a3=a3 at entry (arg3).
  The `beq` branch at 0xda091cc targets 0xda091dc, is taken when v0(=ret(__glOdysseyIoctl)) == 0, and falls through when v0(=ret(__glOdysseyIoctl)) != 0.
  The `beq` branch at 0xda091d4 targets 0xda091e0 and is always taken.
  The return at 0xda091e8 has v0 = one of 0x0, 0x1.
- `__glOdysseyHyperpipeStereo` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda091f0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda091f0-0xda09278 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xda09218 loads 4 bytes from a0 (arg0 at entry) +0x21ef0.
  The `lw` at 0xda09228 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `jalr` at 0xda0924c calls __glOdysseyIoctl [0xd9eb890] with a0=a0 at entry (arg0), a1=0x6f640018, a2=sp-40, a3=a3 at entry (arg3).
  The `beq` branch at 0xda09254 targets 0xda09264, is taken when v0(=ret(__glOdysseyIoctl)) == 0, and falls through when v0(=ret(__glOdysseyIoctl)) != 0.
  The `beq` branch at 0xda0925c targets 0xda09268 and is always taken.
  The return at 0xda09270 has v0 = one of 0x0, 0x1.
- `__glOdysseyHyperpipePixelAverage` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda09278 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda09278-0xda09330 (184 bytes).
  It occupies 184 bytes.
  The `lw` at 0xda092c8 loads 4 bytes from a0 (arg0 at entry) +0x21ef0.
  The `lw` at 0xda092d8 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `jalr` at 0xda092b0 calls fprintf with a0=sym(__iob)+32, a1=0xdaf0000, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda09304 calls __glOdysseyIoctl [0xd9eb890] with a0=a0 at entry (arg0), a1=0x6f640018, a2=sp-40, a3=?.
  The `beq` branch at 0xda0930c targets 0xda0931c, is taken when v0(=ret(__glOdysseyIoctl)) == 0, and falls through when v0(=ret(__glOdysseyIoctl)) != 0.
  The `beq` branch at 0xda09314 targets 0xda09320 and is always taken.
  The return at 0xda09328 has v0 = one of 0x0, 0x1.
- `__glOdysseyQueryHyperpipeStereo` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda09330 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda09330-0xda093b4 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xda09358 loads 4 bytes from a0 (arg0 at entry) +0x21ef0.
  The `jalr` at 0xda09388 calls __glOdysseyIoctl [0xd9eb890] with a0=a0 at entry (arg0), a1=0x6f640016, a2=sp-40, a3=a3 at entry (arg3).
  The `beq` branch at 0xda09390 targets 0xda093a0, is taken when v0(=ret(__glOdysseyIoctl)) == 0, and falls through when v0(=ret(__glOdysseyIoctl)) != 0.
  The `beq` branch at 0xda09398 targets 0xda093a4 and is always taken.
  The return at 0xda093ac has v0 = one of 0x0, 0x1.
- `__glOdysseyQueryHyperpipePixelAverage` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda093b4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda093b4-0xda09438 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xda093dc loads 4 bytes from a0 (arg0 at entry) +0x21ef0.
  The `jalr` at 0xda0940c calls __glOdysseyIoctl [0xd9eb890] with a0=a0 at entry (arg0), a1=0x6f640016, a2=sp-40, a3=a3 at entry (arg3).
  The `beq` branch at 0xda09414 targets 0xda09424, is taken when v0(=ret(__glOdysseyIoctl)) == 0, and falls through when v0(=ret(__glOdysseyIoctl)) != 0.
  The `beq` branch at 0xda0941c targets 0xda09428 and is always taken.
  The return at 0xda09430 has v0 = one of 0x0, 0x1.
- `__glOdyim_Vertex2d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad7a80 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad7a80-0xdad7aa4 (36 bytes).
  It occupies 36 bytes.
  The `sw` at 0xdad7a94 stores 4 bytes to abs 0x10000.
  2 such `swc1` accesses store 4 bytes to abs 0x10000, including `swc1` at 0xdad7a98, `swc1` at 0xdad7aa0.
  The return at 0xdad7a9c has v0 = 0x10000.
- `__glOdyim_Vertex3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad7c80 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad7c80-0xdad7cb0 (48 bytes).
  It occupies 48 bytes.
  The `sw` at 0xdad7c9c stores 4 bytes to abs 0x10000.
  3 such `swc1` accesses store 4 bytes to abs 0x10000, including `swc1` at 0xdad7ca0, `swc1` at 0xdad7ca4, `swc1` at 0xdad7cac.
  The return at 0xdad7ca8 has v0 = 0x10000.
- `__glOdyim_Vertex3i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad7d80 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad7d80-0xdad7db8 (56 bytes).
  It occupies 56 bytes.
  4 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xdad7da4, `sw` at 0xdad7da8, `sw` at 0xdad7dac.
  The return at 0xdad7db0 has v0 = 0x10000.
- `__glOdyim_Vertex4i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad8040 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad8040-0xdad8084 (68 bytes).
  It occupies 68 bytes.
  5 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xdad806c, `sw` at 0xdad8070, `sw` at 0xdad8074.
  The return at 0xdad807c has v0 = 0x10000.
- `__glOdyim_TexCoord3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaddb40 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaddb40-0xdaddb70 (48 bytes).
  It occupies 48 bytes.
  The `sw` at 0xdaddb58 stores 4 bytes to abs 0x10000.
  3 such `swc1` accesses store 4 bytes to abs 0x10000, including `swc1` at 0xdaddb60, `swc1` at 0xdaddb64, `swc1` at 0xdaddb6c.
  The return at 0xdaddb68 has v0 = 0x10000.
- `__glOdyim_ScratchColor3b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdade240 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdade240-0xdade268 (40 bytes).
  It occupies 40 bytes.
  2 such `sdc1` accesses store 8 bytes to abs 0x10000, including `sdc1` at 0xdade25c, `sdc1` at 0xdade264.
  The return at 0xdade260 has v0 = 0x10000.
- `__glOdyim_Color3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdade300 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdade300-0xdade330 (48 bytes).
  It occupies 48 bytes.
  The `sw` at 0xdade318 stores 4 bytes to abs 0x10000.
  3 such `swc1` accesses store 4 bytes to abs 0x10000, including `swc1` at 0xdade320, `swc1` at 0xdade324, `swc1` at 0xdade32c.
  The return at 0xdade328 has v0 = 0x10000.
- `__glOdyim_ScratchColor3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdade340 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdade340-0xdade370 (48 bytes).
  It occupies 48 bytes.
  The `sw` at 0xdade358 stores 4 bytes to abs 0x10000.
  3 such `swc1` accesses store 4 bytes to abs 0x10000, including `swc1` at 0xdade360, `swc1` at 0xdade364, `swc1` at 0xdade36c.
  The return at 0xdade368 has v0 = 0x10000.
- `__glOdyim_ScratchColor3i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdade540 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdade540-0xdade568 (40 bytes).
  It occupies 40 bytes.
  2 such `sdc1` accesses store 8 bytes to abs 0x10000, including `sdc1` at 0xdade55c, `sdc1` at 0xdade564.
  The return at 0xdade560 has v0 = 0x10000.
- `__glOdyim_ScratchColor3s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdade640 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdade640-0xdade668 (40 bytes).
  It occupies 40 bytes.
  2 such `sdc1` accesses store 8 bytes to abs 0x10000, including `sdc1` at 0xdade65c, `sdc1` at 0xdade664.
  The return at 0xdade660 has v0 = 0x10000.
- `__glOdyim_ScratchColor3ui` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdade840 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdade840-0xdade868 (40 bytes).
  It occupies 40 bytes.
  2 such `sdc1` accesses store 8 bytes to abs 0x10000, including `sdc1` at 0xdade85c, `sdc1` at 0xdade864.
  The return at 0xdade860 has v0 = 0x10000.
- `__glOdyim_ScratchColor3us` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdade940 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdade940-0xdade968 (40 bytes).
  It occupies 40 bytes.
  2 such `sdc1` accesses store 8 bytes to abs 0x10000, including `sdc1` at 0xdade95c, `sdc1` at 0xdade964.
  The return at 0xdade960 has v0 = 0x10000.
- `__glOdyim_ScratchColor4b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdadea40 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdadea40-0xdadea6c (44 bytes).
  It occupies 44 bytes.
  The `sdc1` at 0xdadea58 stores 8 bytes to abs 0x10000.
  3 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xdadea5c, `sw` at 0xdadea60, `sw` at 0xdadea68.
  The return at 0xdadea64 has v0 = 0x10000.
- `__glOdyim_ScratchColor4dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdadec00 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdadec00-0xdadec44 (68 bytes).
  It occupies 68 bytes.
  The `ldc1` at 0xdadec00 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ldc1` at 0xdadec0c loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ldc1` at 0xdadec14 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ldc1` at 0xdadec1c loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `sw` at 0xdadec24 stores 4 bytes to abs 0x10000.
  4 such `swc1` accesses store 4 bytes to abs 0x10000, including `swc1` at 0xdadec2c, `swc1` at 0xdadec34, `swc1` at 0xdadec38.
  The return at 0xdadec3c has v0 = 0x10000.
- `__glOdyim_ScratchColor4i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdadedc0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdadedc0-0xdadedec (44 bytes).
  It occupies 44 bytes.
  The `sdc1` at 0xdadedd8 stores 8 bytes to abs 0x10000.
  3 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xdadeddc, `sw` at 0xdadede0, `sw` at 0xdadede8.
  The return at 0xdadede4 has v0 = 0x10000.
- `__glOdyim_ScratchColor4s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdadeec0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdadeec0-0xdadeeec (44 bytes).
  It occupies 44 bytes.
  The `sdc1` at 0xdadeed8 stores 8 bytes to abs 0x10000.
  3 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xdadeedc, `sw` at 0xdadeee0, `sw` at 0xdadeee8.
  The return at 0xdadeee4 has v0 = 0x10000.
- `__glOdyim_ScratchColor4ub` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdadefc0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdadefc0-0xdadefec (44 bytes).
  It occupies 44 bytes.
  The `sdc1` at 0xdadefd8 stores 8 bytes to abs 0x10000.
  3 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xdadefdc, `sw` at 0xdadefe0, `sw` at 0xdadefe8.
  The return at 0xdadefe4 has v0 = 0x10000.
- `__glOdyim_ScratchColor4ui` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdadf0c0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdadf0c0-0xdadf0ec (44 bytes).
  It occupies 44 bytes.
  The `sdc1` at 0xdadf0d8 stores 8 bytes to abs 0x10000.
  3 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xdadf0dc, `sw` at 0xdadf0e0, `sw` at 0xdadf0e8.
  The return at 0xdadf0e4 has v0 = 0x10000.
- `__glOdyim_ScratchColor4us` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdadf1c0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdadf1c0-0xdadf1ec (44 bytes).
  It occupies 44 bytes.
  The `sdc1` at 0xdadf1d8 stores 8 bytes to abs 0x10000.
  3 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xdadf1dc, `sw` at 0xdadf1e0, `sw` at 0xdadf1e8.
  The return at 0xdadf1e4 has v0 = 0x10000.
- `__glOdyim_ScratchIndexd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdadf2c0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdadf2c0-0xdadf2dc (28 bytes).
  It occupies 28 bytes.
  The `sdc1` at 0xdadf2d8 stores 8 bytes to abs 0x10000.
  The return at 0xdadf2d4 has v0 = 0x10000.
- `__glXOpenGraphicsDevice` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd80e4e4 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd80e4e4-0xd80e670 (396 bytes).
  It occupies 396 bytes.
  7 such `lw` accesses load 4 bytes from abs 0x1014, including `lw` at 0xd80e50c, `lw` at 0xd80e550, `lw` at 0xd80e58c.
  The `lw` at 0xd80e518 loads 4 bytes from ([0x1014] + (a0 << 0x2)) +0x4.
  2 such `lw` accesses load 4 bytes from [0x1014] +0x104, including `lw` at 0xd80e590, `lw` at 0xd80e64c.
  The `sw` at 0xd80e5d8 stores 4 bytes to ([0x1014] + (a0 << 0x2)) +0x4.
  The `sw` at 0xd80e640 stores 4 bytes to [0x1014] +0x104.
  The `jalr` at 0xd80e544 calls __glXFatal with a0=0x0, a1=0xd842808, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd80e560 calls open with a0=0xd842828, a1=0x802, a2=?, a3=?.
  The `jalr` at 0xd80e57c calls fcntl with a0=ret(open), a1=0x2, a2=0x5, a3=?.
  The `jalr` at 0xd80e5ac calls __glXFatal with a0=0x0, a1=0xd842808, a2=?, a3=[0x1014], a4=[[0x1014]+260].
  The `jalr` at 0xd80e5e8 calls __glXFatal with a0=0x0, a1=0xd842838, a2=?, a3=?.
  The `jalr` at 0xd80e600 calls __glXFatal with a0=0x0, a1=0xd842858, a2=?, a3=?.
  The `jalr` at 0xd80e61c calls ioctl with a0=ret(open), a1=0x65, a2=0x0, a3=[0x1014], a4=[[0x1014]+260].
  The `jalr` at 0xd80e660 calls __glXFatal with a0=0x0, a1=0xd842868, a2=?, a3=?, a5=ret(ioctl).
  The `beq` branch at 0xd80e504 targets 0xd80e538, is taken when a0 >= 0x41 (signed), and falls through when a0 < 0x41 (signed).
  The `bltz` branch at 0xd80e520 targets 0xd80e554, is taken when v1(=[([0x1014] + (a0 << 0x2))+4]) < 0 (signed), and falls through when v1(=[([0x1014] + (a0 << 0x2))+4]) >= 0 (signed).
  The `beq` branch at 0xd80e54c targets 0xd80e510 and is always taken.
  The `bltz` branch at 0xd80e568 targets 0xd80e5dc, is taken when v0(=ret(open)) < 0 (signed), and falls through when v0(=ret(open)) >= 0 (signed).
  The `bltz` branch at 0xd80e584 targets 0xd80e5f8, is taken when v0(=ret(fcntl)) < 0 (signed), and falls through when v0(=ret(fcntl)) >= 0 (signed).
  The `bltz` branch at 0xd80e594 targets 0xd80e610, is taken when a4(=[[0x1014]+260]) < 0 (signed), and falls through when a4(=[[0x1014]+260]) >= 0 (signed).
  The `beq` branch at 0xd80e59c targets 0xd80e5b8, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0xd80e5f0 targets 0xd80e574 and is always taken.
  The `beq` branch at 0xd80e608 targets 0xd80e590 and is always taken.
  The `blez` branch at 0xd80e624 targets 0xd80e650, is taken when v0(=ret(ioctl)) <= 0 (signed), and falls through when v0(=ret(ioctl)) > 0 (signed).
  The `beq` branch at 0xd80e648 targets 0xd80e598 and is always taken.
  The `beq` branch at 0xd80e668 targets 0xd80e62c and is always taken.
  The return at 0xd80e530 has v0 = ?.
  The return at 0xd80e5d4 has v0 = one of ?, ret(__glXFatal).
- `glXSelectEventSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd823d98 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd823d98-0xd823eb4 (284 bytes).
  It occupies 284 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd823dd8, `lw` at 0xd823e60.
  The `lw` at 0xd823de4 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd823df0, `lw` at 0xd823e28, `lw` at 0xd823eb0.
  The `lw` at 0xd823df4 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd823e10 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd823e18 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd823e20, `sb` at 0xd823e54.
  The `lw` at 0xd823e24 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd823e30 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd823e38 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd823e3c stores 4 bytes to [a0+108] +0x14.
  The `sw` at 0xd823e44 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd823e48 stores 4 bytes to [a0+108] +0xc.
  The `sb` at 0xd823e4c stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd823e5c stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd823e6c loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xd823e78 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `jalr` at 0xd823dc4 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd823de8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+1232].
  The `jalr` at 0xd823e70 calls (unknown callee) with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=0x801f, a3=a1 at entry (arg1), a4=[a0+1232], a5=0x10, a7=[a0+96]+1.
  The `jalr` at 0xd823e84 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd823ea4 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd823dd0 targets 0xd823e90, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xd823ddc targets 0xd823df0, is taken when a4(=[a0+1232]) == 0, and falls through when a4(=[a0+1232]) != 0.
  The `bne` branch at 0xd823e00 targets 0xd823ea0, is taken when v0(=[a0+112]) < v1(=[a0+108]+24) (unsigned), and falls through when v0(=[a0+112]) >= v1(=[a0+108]+24) (unsigned).
  The `beq` branch at 0xd823e64 targets 0xd823e78, is taken when a4(=[a0+1232]) == 0, and falls through when a4(=[a0+1232]) != 0.
  The `beq` branch at 0xd823e7c targets 0xd823e90, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd823eac targets 0xd823e04 and is always taken.
  The return at 0xd823e98 has v0 = one of ret(__glXSetupForCommand), ?, ret(?).
- `__glXGetDrawableAttributes` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd823fec (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd823fec-0xd8243fc (1040 bytes).
  It occupies 1040 bytes.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd824038, `lw` at 0xd824104, `lw` at 0xd8241e4.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x0, including `lw` at 0xd82404c, `lw` at 0xd824154.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd824058, `lw` at 0xd824090, `lw` at 0xd824160.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0xd82405c, `lw` at 0xd824164.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd824078, `sw` at 0xd82417c.
  2 such `sh` accesses store 2 bytes to [a0+108] +0x2, including `sh` at 0xd824080, `sh` at 0xd824184.
  4 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd824088, `sb` at 0xd8240d4, `sb` at 0xd82418c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x60, including `lw` at 0xd82408c, `lw` at 0xd824190.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x60, including `sw` at 0xd824098, `sw` at 0xd82419c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x6c, including `sw` at 0xd8240a0, `sw` at 0xd8241a4.
  The `sw` at 0xd8240a4 stores 4 bytes to [a0+108] +0xc.
  2 such `sw` accesses store 4 bytes to [a0+108] +0x4, including `sw` at 0xd8240bc, `sw` at 0xd8241bc.
  2 such `sb` accesses store 1 byte to [a0+108] +0x1, including `sb` at 0xd8240c8, `sb` at 0xd8241b0.
  5 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd824114, `lw` at 0xd8241f0, `lw` at 0xd824248.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd824120, `lw` at 0xd8241fc, `lw` at 0xd824254.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x18, including `sw` at 0xd824298, `sw` at 0xd824324.
  The `sw` at 0xd82429c stores 4 bytes to a2 (arg2 at entry) +0x14.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x10, including `sw` at 0xd8242a0, `sw` at 0xd8242d0.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0xc, including `sw` at 0xd8242a4, `sw` at 0xd82432c.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `sw` at 0xd8242a8, `sw` at 0xd824334.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `sw` at 0xd8242ac, `sw` at 0xd82431c.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0xd8242b0, `sw` at 0xd82434c.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd8242e8, `lw` at 0xd824300.
  The `lw` at 0xd82430c loads 4 bytes from table(0xd844788) +0x0.
  The `sb` at 0xd82433c stores 1 byte to a2 (arg2 at entry) +0x15.
  The `sb` at 0xd824344 stores 1 byte to a2 (arg2 at entry) +0x14.
  The `jalr` at 0xd824020 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd824050 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd8240d0 calls _XReply with a0=a0 at entry (arg0), a1=sp-144, a2=0x0, a3=0x0, a5=0x11, a6=0x1000a, a7=a1 at entry (arg1).
  The `jalr` at 0xd8240f4 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd824118 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd82412c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd824158 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd8241c4 calls _XReply with a0=a0 at entry (arg0), a1=sp-112, a2=0x0, a3=0x0.
  The `jalr` at 0xd8241f4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd824208 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd82422c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd82424c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd824260 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd824290 calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd824360 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?, a7=-0x800c.
  The `jalr` at 0xd824374 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd824380 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8243b0 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8243d0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd8243e4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd82402c targets 0xd8243a4, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xd82403c targets 0xd82414c, is taken when v0(=a3) == 0, and falls through when v0(=a3) != 0.
  The `beq` branch at 0xd824044 targets 0xd824058, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `bne` branch at 0xd824068 targets 0xd82422c, is taken when v1(=[a0+112]) < a0(=[a0+108]+16) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+16) (unsigned).
  The `beq` branch at 0xd8240d8 targets 0xd82423c, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0xd8240e8 targets 0xd8241e4, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0xd8240fc targets 0xd824284, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0xd82410c targets 0xd824120, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd824124 targets 0xd824138, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd82414c targets 0xd824160, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `bne` branch at 0xd824170 targets 0xd8243ac, is taken when t9(=[a0+112]) < ra(=[a0+108]+8) (unsigned), and falls through when t9(=[a0+112]) >= ra(=[a0+108]+8) (unsigned).
  The `beq` branch at 0xd8241cc targets 0xd8243c0, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `bne` branch at 0xd8241dc targets 0xd8240f0, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0xd8241e8 targets 0xd8241fc, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd824200 targets 0xd824210, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd824234 targets 0xd824070 and is always taken.
  The `beq` branch at 0xd824240 targets 0xd824254, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd824258 targets 0xd82426c, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `blez` branch at 0xd8242c0 targets 0xd824350, is taken when s0(?) <= 0 (signed), and falls through when s0(?) > 0 (signed).
  The `beq` branch at 0xd8242c8 targets 0xd8243f4 and is always taken.
  The `beq` branch at 0xd8242dc targets 0xd824350, is taken when s0(?) == a6(?), and falls through when s0(?) != a6(?).
  The `beq` branch at 0xd824304 targets 0xd8242dc, is taken when t2(=table(-0x800c)) >= 0x1a (unsigned), and falls through when t2(=table(-0x800c)) < 0x1a (unsigned).
  The `beq` branch at 0xd824318 targets 0xd8242dc and is always taken.
  The `beq` branch at 0xd824320 targets 0xd8242dc and is always taken.
  The `beq` branch at 0xd824328 targets 0xd8242dc and is always taken.
  The `beq` branch at 0xd824330 targets 0xd8242dc and is always taken.
  The `beq` branch at 0xd824338 targets 0xd8242dc and is always taken.
  The `beq` branch at 0xd824340 targets 0xd8242dc and is always taken.
  The `beq` branch at 0xd824348 targets 0xd8242dc and is always taken.
  The `beq` branch at 0xd824354 targets 0xd824368, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd82436c targets 0xd82437c, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd8243a4 targets 0xd824138 and is always taken.
  The `beq` branch at 0xd8243b8 targets 0xd824174 and is always taken.
  The `beq` branch at 0xd8243c4 targets 0xd8243d8, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd8243dc targets 0xd8243ec, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd8243ec targets 0xd824138 and is always taken.
  The `beq` branch at 0xd8243f4 targets 0xd8242e8 and is always taken.
  The return at 0xd824144 has v0 = 0x0.
  The return at 0xd824224 has v0 = 0x0.
  The return at 0xd82427c has v0 = 0x0.
  The return at 0xd82439c has v0 = 0x1.
  The indirect jump at 0xd824310 uses the jump table at 0xd844788 with targets 0xd824348, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd824318, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd824340, 0xd824338, 0xd824330, 0xd824328, 0xd8242d0, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd824320.
  The indirect jump at 0xd824310 uses the jump table at 0xd844788 with targets 0xd824348, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd824318, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd824340, 0xd824338, 0xd824330, 0xd824328, 0xd8242d0, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd824320.
  The indirect jump at 0xd824310 uses the jump table at 0xd844788 with targets 0xd824348, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd824318, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd824340, 0xd824338, 0xd824330, 0xd824328, 0xd8242d0, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd824320.
  The indirect jump at 0xd824310 uses the jump table at 0xd844788 with targets 0xd824348, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd824318, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd824340, 0xd824338, 0xd824330, 0xd824328, 0xd8242d0, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd824320.
  The indirect jump at 0xd824310 uses the jump table at 0xd844788 with targets 0xd824348, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd824318, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd824340, 0xd824338, 0xd824330, 0xd824328, 0xd8242d0, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd824320.
- `glXDestroyGLXPbufferSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8243fc (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8243fc-0xd824544 (328 bytes).
  It occupies 328 bytes.
  The `lw` at 0xd82445c loads 4 bytes from ret(__glXAddDrawableInterest) +0x14.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd824470, `lw` at 0xd8244e4.
  The `lw` at 0xd82447c loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd824488, `lw` at 0xd8244b8, `lw` at 0xd824538.
  The `lw` at 0xd82448c loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd8244a0 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd8244a8 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8244b0, `sb` at 0xd8244e0.
  The `lw` at 0xd8244b4 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8244c0 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8244c8 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8244d0 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd8244d8 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd8244dc stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd8244f0 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xd8244fc loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `sw` at 0xd824540 stores 4 bytes to ret(__glXAddDrawableInterest) +0x0.
  The `jalr` at 0xd824428 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd824444 calls __glXAddDrawableInterest with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xd824454 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd824468 calls __glXFreeDrawablePrivate with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd824480 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8244f4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x10008, a4=0x10, a6=[a0+96]+1, a7=[a0+108]+16.
  The `jalr` at 0xd824508 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd82452c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=[a0+108]+16, a3=?.
  The `beq` branch at 0xd824434 targets 0xd824510, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xd824460 targets 0xd82453c, is taken when v1(=[ret(__glXAddDrawableInterest)+20]) == 0, and falls through when v1(=[ret(__glXAddDrawableInterest)+20]) != 0.
  The `beq` branch at 0xd824474 targets 0xd824488, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `bne` branch at 0xd824498 targets 0xd824528, is taken when a1(=[a0+112]) < a2(=[a0+108]+16) (unsigned), and falls through when a1(=[a0+112]) >= a2(=[a0+108]+16) (unsigned).
  The `beq` branch at 0xd8244e8 targets 0xd8244fc, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xd824500 targets 0xd824510, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd824534 targets 0xd82449c and is always taken.
  The `beq` branch at 0xd82453c targets 0xd824464 and is always taken.
  The return at 0xd824520 has v0 = one of ?, ret(?).
- `glXCreateGLXPbufferSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd824c48 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd824c48-0xd824f64 (796 bytes).
  It occupies 796 bytes.
  The `lw` at 0xd824c98 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `sw` at 0xd824cc4 stores 4 bytes to ret(__glXAddDrawableInterest) +0x2c.
  The `lw` at 0xd824cd0 loads 4 bytes from a4 (arg4 at entry) +0x0.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd824ce4, `lw` at 0xd824cf4, `lw` at 0xd824d04.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd824d14, `lw` at 0xd824e28, `lw` at 0xd824f3c.
  The `lw` at 0xd824d20 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd824d2c, `lw` at 0xd824d70, `lw` at 0xd824ec4.
  The `lw` at 0xd824d38 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd824d54 stores 4 bytes to a0 (arg0 at entry) +0x64.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd824d5c, `sb` at 0xd824da8.
  The `sh` at 0xd824d68 stores 2 bytes to [a0+108] +0x2.
  The `lw` at 0xd824d6c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd824d7c stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd824d88 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sb` at 0xd824d90 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd824da0 stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd824dac loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `sw` at 0xd824db0 stores 4 bytes to [a0+108] +0xc.
  The `lw` at 0xd824db4 loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `sw` at 0xd824db8 stores 4 bytes to [a0+108] +0x1c.
  The `sw` at 0xd824dbc stores 4 bytes to [a0+108] +0x14.
  The `sw` at 0xd824dc4 stores 4 bytes to [a0+108] +0x18.
  The `sw` at 0xd824dcc stores 4 bytes to [a0+108] +0x10.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd824df0, `sw` at 0xd824e04, `sw` at 0xd824f24.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd824e34, `lw` at 0xd824ed0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd824e40, `lw` at 0xd824edc.
  The `jalr` at 0xd824c80 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd824c9c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd824cac calls __glXAddDrawableInterest with a0=ret(?), a1=?, a2=?, a3=?.
  The `jalr` at 0xd824d24 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+1232].
  The `jalr` at 0xd824e1c calls _XReply with a0=a0 at entry (arg0), a1=sp-144, a2=0x0, a3=0x0, a4=[a0+108].
  The `jalr` at 0xd824e38 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+1232].
  The `jalr` at 0xd824e4c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd824e58 calls __glXRemoveDrawableInterest with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd824eb0 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+108].
  The `jalr` at 0xd824ed4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+1232].
  The `jalr` at 0xd824ee8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd824f00 calls __glXPostHiddenError with a0=a0 at entry (arg0), a1=sp-144, a2=0x11, a3=0x0.
  The `jalr` at 0xd824f0c calls __glXRemoveDrawableInterest with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd824f20 calls __glXFreeDrawablePrivate with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd824f50 calls __glXPostError with a0=a0 at entry (arg0), a1=0xb, a2=0x10, a3=0x0.
  The `beq` branch at 0xd824c90 targets 0xd824e84, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xd824cb4 targets 0xd824f40, is taken when v0(=ret(__glXAddDrawableInterest)) == 0, and falls through when v0(=ret(__glXAddDrawableInterest)) != 0.
  The `beq` branch at 0xd824cc8 targets 0xd824e7c, is taken when s0(=a4) == 0, and falls through when s0(=a4) != 0.
  The `beq` branch at 0xd824cd8 targets 0xd824f38, is taken when a0(=[a4]) == 0, and falls through when a0(=[a4]) != 0.
  The `beq` branch at 0xd824cec targets 0xd824d14, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0xd824cfc targets 0xd824d14, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0xd824d0c targets 0xd824ce4, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0xd824d18 targets 0xd824d2c, is taken when a4(=[a0+1232]) == 0, and falls through when a4(=[a0+1232]) != 0.
  The `bne` branch at 0xd824d48 targets 0xd824ea4, is taken when a5(=[a0+112]) < a6(?) (unsigned), and falls through when a5(=[a0+112]) >= a6(?) (unsigned).
  The `beq` branch at 0xd824dc8 targets 0xd824e08, is taken when s0(=a4) == 0, and falls through when s0(=a4) != 0.
  The `blez` branch at 0xd824dd4 targets 0xd824e08, is taken when t0(?) <= 0 (signed), and falls through when t0(?) > 0 (signed).
  The `bgtz` branch at 0xd824e00 targets 0xd824de8, is taken when a2(?) > 0 (signed), and falls through when a2(?) <= 0 (signed).
  The `beq` branch at 0xd824e24 targets 0xd824ec8, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0xd824e2c targets 0xd824e40, is taken when a4(=[a0+1232]) == 0, and falls through when a4(=[a0+1232]) != 0.
  The `beq` branch at 0xd824e44 targets 0xd824e54, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd824e7c targets 0xd824d14 and is always taken.
  The `beq` branch at 0xd824ec0 targets 0xd824d50 and is always taken.
  The `beq` branch at 0xd824ec8 targets 0xd824edc, is taken when a4(=[a0+1232]) == 0, and falls through when a4(=[a0+1232]) != 0.
  The `beq` branch at 0xd824ee0 targets 0xd824ef0, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd824f30 targets 0xd824e6c and is always taken.
  The `beq` branch at 0xd824f38 targets 0xd824d18 and is always taken.
  The `beq` branch at 0xd824f5c targets 0xd824e68 and is always taken.
  The return at 0xd824e74 has v0 = one of ?, 0x0.
  The return at 0xd824e9c has v0 = 0x0.
- `glXGetVideoSyncSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd824f64 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd824f64-0xd824ff0 (140 bytes).
  It occupies 140 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014, including `lw` at 0xd824f64, `lw` at 0xd824f9c.
  The `lw` at 0xd824f68 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd824f88 loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lw` at 0xd824f94 loads 4 bytes from [[0x1014]+276] +0xcc.
  The `lw` at 0xd824fa0 loads 4 bytes from [0x1014] +0x108.
  The `lw` at 0xd824fc0 loads 4 bytes from ([0x1014] + ([[0x1014]+264] << 0x2)) +0x4.
  The `sw` at 0xd824fe0 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `jalr` at 0xd824fbc calls ioctl with a0=[([0x1014] + ([[0x1014]+264] << 0x2))+4], a1=0x3fe, a2=sp-32, a3=a3 at entry (arg3), a4=[[0x1014]+276], a5=[[[0x1014]+276]+196].
  The `beq` branch at 0xd824f80 targets 0xd824fe4, is taken when a4(=[[0x1014]+276]) == 0, and falls through when a4(=[[0x1014]+276]) != 0.
  The `beq` branch at 0xd824f8c targets 0xd824fe4, is taken when a5(=[[[0x1014]+276]+196]) == 0, and falls through when a5(=[[[0x1014]+276]+196]) != 0.
  The return at 0xd824fdc has v0 = 0x0.
  The return at 0xd824fe8 has v0 = 0x5.
- `glXWaitVideoSyncSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd824ff0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd824ff0-0xd8250b8 (200 bytes).
  It occupies 200 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014, including `lw` at 0xd824ff0, `lw` at 0xd825070.
  The `lw` at 0xd825000 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd825020 loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lw` at 0xd825060 loads 4 bytes from [[0x1014]+276] +0xcc.
  The `lw` at 0xd825074 loads 4 bytes from [0x1014] +0x108.
  The `lw` at 0xd825094 loads 4 bytes from ([0x1014] + ([[0x1014]+264] << 0x2)) +0x4.
  The `sw` at 0xd8250b4 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jalr` at 0xd825090 calls ioctl with a0=[([0x1014] + ([[0x1014]+264] << 0x2))+4], a1=0x3ff, a2=sp-48, a3=a3 at entry (arg3), a4=a0 at entry (arg0), a5=a1 at entry (arg1), a6=[[0x1014]+276], a7=[[[0x1014]+276]+196].
  The `beq` branch at 0xd825018 targets 0xd825050, is taken when a6(=[[0x1014]+276]) == 0, and falls through when a6(=[[0x1014]+276]) != 0.
  The `beq` branch at 0xd825024 targets 0xd825050, is taken when a7(=[[[0x1014]+276]+196]) == 0, and falls through when a7(=[[[0x1014]+276]+196]) != 0.
  The `blez` branch at 0xd82502c targets 0xd825044, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `bltz` branch at 0xd825034 targets 0xd825044, is taken when a1 < 0 (signed), and falls through when a1 >= 0 (signed).
  The `bne` branch at 0xd82503c targets 0xd825060, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The return at 0xd825048 has v0 = 0x6.
  The return at 0xd825058 has v0 = 0x5.
  The return at 0xd8250b0 has v0 = 0x0.
- `glXDestroyGLXVideoSourceSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8250b8 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8250b8-0xd8251f8 (320 bytes).
  It occupies 320 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd825128, `lw` at 0xd8251a4.
  The `lw` at 0xd825134 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd825140, `lw` at 0xd825174, `lw` at 0xd8251f4.
  The `lw` at 0xd825144 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd82515c stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd825164 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd82516c, `sb` at 0xd8251a0.
  The `lw` at 0xd825170 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd82517c stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd825184 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd825188 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd825190 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xd825198 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd82519c stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd8251b0 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xd8251bc loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `jalr` at 0xd8250e4 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd825104 calls __glXAddDrawableInterest with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xd825114 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd825120 calls __glXFreeDrawablePrivate with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd825138 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8251b4 calls (unknown callee) with a0=a0 at entry (arg0), a1=0x10003, a2=0x10, a3=?, a4=[a0+96]+1, a5=[a0+108]+16, a6=0x4.
  The `jalr` at 0xd8251c8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8251e8 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8250f0 targets 0xd8251d4, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xd8250f8 targets 0xd8251d0, is taken when s1(=a1) == 0, and falls through when s1(=a1) != 0.
  The `beq` branch at 0xd82512c targets 0xd825140, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `bne` branch at 0xd825150 targets 0xd8251e8, is taken when v0(=[a0+112]) < v1(=[a0+108]+16) (unsigned), and falls through when v0(=[a0+112]) >= v1(=[a0+108]+16) (unsigned).
  The `beq` branch at 0xd8251a8 targets 0xd8251bc, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xd8251c0 targets 0xd8251d4, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd8251f0 targets 0xd825158 and is always taken.
  The return at 0xd8251e0 has v0 = one of ret(__glXSetupForCommand), ?.
- `glXCreateGLXVideoSourceSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8252cc (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8252cc-0xd82561c (848 bytes).
  It occupies 848 bytes.
  The `lw` at 0xd82536c loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `sw` at 0xd82539c stores 4 bytes to ret(__glXAddDrawableInterest) +0x30.
  The `sw` at 0xd8253a4 stores 4 bytes to ret(__glXAddDrawableInterest) +0x2c.
  The `sw` at 0xd8253a8 stores 4 bytes to ret(__glXAddDrawableInterest) +0x8.
  The `sw` at 0xd8253b0 stores 4 bytes to ret(__glXAddDrawableInterest) +0x10.
  The `sb` at 0xd8253b8 stores 1 byte to ret(__glXAddDrawableInterest) +0x20.
  The `sw` at 0xd8253c4 stores 4 bytes to ret(__glXAddDrawableInterest) +0xc.
  The `sw` at 0xd8253f0 stores 4 bytes to ret(__glXCreateVideoSourcePrivate) +0x0.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd825414, `sw` at 0xd825428, `sw` at 0xd825454.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd825488, `lw` at 0xd825548.
  The `lw` at 0xd825494 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8254a4, `lw` at 0xd8254e8, `lw` at 0xd8255c0.
  The `lw` at 0xd8254a8 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd8254d0 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd8254d8 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8254e0, `sb` at 0xd82551c.
  The `lw` at 0xd8254e4 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8254f0 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8254f8 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8254fc stores 4 bytes to [a0+108] +0x14.
  The `sw` at 0xd825500 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd825504 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd82550c stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xd825514 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd825518 stores 1 byte to [a0+108] +0x1.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd825520, `lw` at 0xd825528, `lw` at 0xd825530.
  The `sw` at 0xd825524 stores 4 bytes to [a0+108] +0x18.
  The `sw` at 0xd82552c stores 4 bytes to [a0+108] +0x1c.
  The `sw` at 0xd825534 stores 4 bytes to [a0+108] +0x20.
  The `sw` at 0xd82553c stores 4 bytes to [a0+108] +0x24.
  The `sw` at 0xd825544 stores 4 bytes to [a0+108] +0x28.
  The `lw` at 0xd825554 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xd825568 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `jalr` at 0xd825300 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd825358 calls __glXInitializeVideoLibrary with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd825370 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd825380 calls __glXAddDrawableInterest with a0=ret(?), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8253c0 calls __glXCreateVideoSourcePrivate with a0=ret(__glXAddDrawableInterest)+44, a1=0x3, a2=?, a3=?.
  The `jalr` at 0xd8253ec calls (unknown callee) with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=a5 at entry (arg5), a3=0x4, a4=sp-192, a5=ret(__glXCreateVideoSourcePrivate).
  The `jalr` at 0xd825424 calls (unknown callee) with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=a5 at entry (arg5), a3=0x6, a4=sp-192.
  The `jalr` at 0xd825450 calls (unknown callee) with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=a5 at entry (arg5), a3=0x7, a4=sp-192.
  The `bgezall` at 0xd825474 calls videoPackingToInternalFormat [0xd8251f8] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd825498 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?, a4=a0 at entry (arg0).
  The `jalr` at 0xd82555c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=[a0+108].
  The `jalr` at 0xd825574 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd825580 calls __glXRemoveDrawableInterest with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8255b0 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+108], a5=[a0+108]+44.
  The `jalr` at 0xd8255cc calls __glXRemoveDrawableInterest with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8255e0 calls __glXRemoveDrawableInterest with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8255f8 calls __glXRemoveDrawableInterest with a0=?, a1=?, a2=a5 at entry (arg5), a3=?.
  The `jalr` at 0xd82560c calls __glXRemoveDrawableInterest with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xd82530c targets 0xd825590, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xd825318 targets 0xd825354, is taken when s0(=a4) == v0(=0x2), and falls through when s0(=a4) != v0(=0x2).
  The `beq` branch at 0xd825324 targets 0xd825358, is taken when s0(=a4) == v1(=0x5), and falls through when s0(=a4) != v1(=0x5).
  The `beq` branch at 0xd825360 targets 0xd825598, is taken when v0(=ret(__glXInitializeVideoLibrary)) == 0, and falls through when v0(=ret(__glXInitializeVideoLibrary)) != 0.
  The `beq` branch at 0xd825388 targets 0xd8255a4, is taken when v0(=ret(__glXAddDrawableInterest)) == 0, and falls through when v0(=ret(__glXAddDrawableInterest)) != 0.
  The `beq` branch at 0xd8253c8 targets 0xd8255c4, is taken when v0(=ret(__glXCreateVideoSourcePrivate)) == 0, and falls through when v0(=ret(__glXCreateVideoSourcePrivate)) != 0.
  The `bltz` branch at 0xd8253f4 targets 0xd8255dc, is taken when v0(=ret(?)) < 0 (signed), and falls through when v0(=ret(?)) >= 0 (signed).
  The `bltz` branch at 0xd82542c targets 0xd8255f0, is taken when v0(=ret(?)) < 0 (signed), and falls through when v0(=ret(?)) >= 0 (signed).
  The `bltz` branch at 0xd825458 targets 0xd825608, is taken when v0(=ret(?)) < 0 (signed), and falls through when v0(=ret(?)) >= 0 (signed).
  The `beq` branch at 0xd82548c targets 0xd8254a4, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `bne` branch at 0xd8254b4 targets 0xd8255b0, is taken when a4(=[a0+112]) < a5(=[a0+108]+44) (unsigned), and falls through when a4(=[a0+112]) >= a5(=[a0+108]+44) (unsigned).
  The `beq` branch at 0xd82554c targets 0xd825564, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd82556c targets 0xd82557c, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd825588 targets 0xd825344 and is always taken.
  The `beq` branch at 0xd825590 targets 0xd825344 and is always taken.
  The `beq` branch at 0xd82559c targets 0xd825344 and is always taken.
  The `beq` branch at 0xd8255a8 targets 0xd825344 and is always taken.
  The `beq` branch at 0xd8255bc targets 0xd8254bc and is always taken.
  The `beq` branch at 0xd8255d4 targets 0xd825344 and is always taken.
  The `beq` branch at 0xd8255e8 targets 0xd825344 and is always taken.
  The `beq` branch at 0xd825600 targets 0xd825344 and is always taken.
  The `beq` branch at 0xd825614 targets 0xd825344 and is always taken.
  The return at 0xd82533c has v0 = 0x0.
  The return at 0xd82534c has v0 = one of ?, 0x0.
- `glXSwapIntervalSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd825758 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd825758-0xd825910 (440 bytes).
  It occupies 440 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014, including `lw` at 0xd825758, `lw` at 0xd82579c.
  The `lw` at 0xd82575c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd825784 loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lw` at 0xd825790 loads 4 bytes from [[0x1014]+276] +0xcc.
  The `lw` at 0xd8257a0 loads 4 bytes from [0x1014] +0x108.
  The `lw` at 0xd8257c0 loads 4 bytes from ([0x1014] + ([[0x1014]+264] << 0x2)) +0x4.
  The `lw` at 0xd8257d8 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd825804 loads 4 bytes from [[0x1014]+276] +0x3c.
  10 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd825814, `lw` at 0xd825820, `lw` at 0xd825830.
  6 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd825854, `sw` at 0xd825874, `sw` at 0xd82587c.
  The `sh` at 0xd82585c stores 2 bytes to ?.
  3 such `sb` accesses store 1 byte to ?, including `sb` at 0xd825864, `sb` at 0xd825890, `sb` at 0xd825894.
  The `jalr` at 0xd8257bc calls ioctl with a0=[([0x1014] + ([[0x1014]+264] << 0x2))+4], a1=0x3ee, a2=sp-64, a3=a3 at entry (arg3), a5=a0 at entry (arg0).
  The `jalr` at 0xd825808 calls __glXSetupForCommand with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[[[0x1014]+276]+216], a4=[[[0x1014]+276]+60], a5=a0 at entry (arg0).
  The `jalr` at 0xd825824 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8258a8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?, a4=a0 at entry (arg0), a6=0x10000, a7=0x10.
  The `jalr` at 0xd8258c0 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8258cc calls XFlush with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8258f4 calls _XFlush with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xd825774 targets 0xd8258e8, is taken when v0(=[[0x1014]+276]) == 0, and falls through when v0(=[[0x1014]+276]) != 0.
  The `blez` branch at 0xd82577c targets 0xd825908, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0xd825788 targets 0xd8257d8, is taken when v1(=[[[0x1014]+276]+196]) == 0, and falls through when v1(=[[[0x1014]+276]+196]) != 0.
  The `bne` branch at 0xd8257e0 targets 0xd8257f8, is taken when a3(=[[[0x1014]+276]+216]) != 0, and falls through when a3(=[[[0x1014]+276]+216]) == 0.
  The `beq` branch at 0xd825818 targets 0xd82582c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0xd825840 targets 0xd8258f0, is taken when a5(?) < a6(?) (unsigned), and falls through when a5(?) >= a6(?) (unsigned).
  The `beq` branch at 0xd82589c targets 0xd8258b4, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0xd8258b8 targets 0xd8258c8, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0xd8258e8 targets 0xd8258dc and is always taken.
  The `beq` branch at 0xd825900 targets 0xd825844 and is always taken.
  The `beq` branch at 0xd825908 targets 0xd8258dc and is always taken.
  The return at 0xd8257d0 has v0 = 0x0.
  The return at 0xd8257f0 has v0 = 0x5.
  The return at 0xd8258e0 has v0 = one of 0x0, 0x5, 0x6.
- `glXCreateGLXPixmapWithConfigSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd838c8c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd838c8c-0xd838ddc (336 bytes).
  It occupies 336 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd838ccc, `lw` at 0xd838d74.
  The `lw` at 0xd838cd8 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd838ce4, `lw` at 0xd838d20, `lw` at 0xd838dc4.
  The `lw` at 0xd838ce8 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd838d08 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd838d10 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd838d18, `sb` at 0xd838d44.
  The `lw` at 0xd838d1c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd838d28 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd838d34 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd838d3c stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd838d40 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd838d48 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `sw` at 0xd838d4c stores 4 bytes to [a0+108] +0xc.
  The `lw` at 0xd838d50 loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `sw` at 0xd838d54 stores 4 bytes to [a0+108] +0x14.
  The `sw` at 0xd838d58 stores 4 bytes to [a0+108] +0x10.
  The `lw` at 0xd838d5c loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `sw` at 0xd838d70 stores 4 bytes to [a0+108] +0x18.
  The `lw` at 0xd838d80 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xd838d8c loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `jalr` at 0xd838cb8 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd838cdc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xd838d64 calls (unknown callee) with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=[a1+72], a3=[a1+36], a4=0x10006, a5=0x10, a7=[a0+96]+1.
  The `jalr` at 0xd838d84 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xd838d98 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd838db8 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd838cc4 targets 0xd838dc8, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xd838cd0 targets 0xd838ce4, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `bne` branch at 0xd838cf4 targets 0xd838db8, is taken when v1(=[a0+112]) < a0(=[a0+108]+28) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+28) (unsigned).
  The `beq` branch at 0xd838d78 targets 0xd838d8c, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `beq` branch at 0xd838d90 targets 0xd838da4, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd838dc0 targets 0xd838cfc and is always taken.
  The return at 0xd838db0 has v0 = ret(?).
  The return at 0xd838dd4 has v0 = 0x0.
- `glXJoinSwapGroupSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83c008 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd83c008-0xd83c110 (264 bytes).
  It occupies 264 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83c040, `lw` at 0xd83c0c0.
  The `lw` at 0xd83c04c loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83c058, `lw` at 0xd83c090, `lw` at 0xd83c10c.
  The `lw` at 0xd83c05c loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd83c078 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd83c080 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83c088, `sb` at 0xd83c0bc.
  The `lw` at 0xd83c08c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83c098 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83c0a0 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd83c0a4 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd83c0ac stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd83c0b4 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd83c0b8 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd83c0cc loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xd83c0d8 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `jalr` at 0xd83c038 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83c050 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xd83c0d0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=0x1000b, a4=0x10, a5=[a0+1232], a6=[a0+96]+1, a7=[a0+108]+20.
  The `jalr` at 0xd83c0e4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83c100 calls _XFlush with a0=a0 at entry (arg0), a1=[a0+108]+20, a2=?, a3=?.
  The `beq` branch at 0xd83c044 targets 0xd83c058, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `bne` branch at 0xd83c068 targets 0xd83c100, is taken when v1(=[a0+112]) < a1(=[a0+108]+20) (unsigned), and falls through when v1(=[a0+112]) >= a1(=[a0+108]+20) (unsigned).
  The `beq` branch at 0xd83c0c4 targets 0xd83c0d8, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `beq` branch at 0xd83c0dc targets 0xd83c0ec, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83c108 targets 0xd83c070 and is always taken.
  The return at 0xd83c0f8 has v0 = one of ?, ret(?).
- `glXBindSwapBarrierSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83c110 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd83c110-0xd83c218 (264 bytes).
  It occupies 264 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83c148, `lw` at 0xd83c1c4.
  The `lw` at 0xd83c154 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83c160, `lw` at 0xd83c194, `lw` at 0xd83c214.
  The `lw` at 0xd83c164 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd83c17c stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd83c184 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83c18c, `sb` at 0xd83c1c0.
  The `lw` at 0xd83c190 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83c19c stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83c1a4 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd83c1a8 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd83c1b0 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd83c1b8 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd83c1bc stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd83c1d0 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xd83c1dc loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `jalr` at 0xd83c140 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83c158 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xd83c1d4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=0x1000c, a4=0x10, a5=[a0+1232], a6=[a0+96]+1, a7=[a0+108]+20.
  The `jalr` at 0xd83c1e8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83c208 calls _XFlush with a0=a0 at entry (arg0), a1=[a0+108]+20, a2=?, a3=?, a5=ret(__glXSetupForCommand).
  The `beq` branch at 0xd83c14c targets 0xd83c160, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `bne` branch at 0xd83c170 targets 0xd83c204, is taken when v1(=[a0+112]) < a1(=[a0+108]+20) (unsigned), and falls through when v1(=[a0+112]) >= a1(=[a0+108]+20) (unsigned).
  The `beq` branch at 0xd83c1c8 targets 0xd83c1dc, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `beq` branch at 0xd83c1e0 targets 0xd83c1f0, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83c210 targets 0xd83c174 and is always taken.
  The return at 0xd83c1fc has v0 = one of ?, ret(?).
- `glXQueryMaxSwapBarriersSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83c218 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd83c218-0xd83c38c (372 bytes).
  It occupies 372 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83c250, `lw` at 0xd83c2e8.
  The `lw` at 0xd83c25c loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83c268, `lw` at 0xd83c29c, `lw` at 0xd83c344.
  The `lw` at 0xd83c26c loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd83c284 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd83c28c stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83c294, `sb` at 0xd83c2e0.
  The `lw` at 0xd83c298 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83c2a4 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83c2ac stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd83c2b0 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd83c2c8 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd83c2d4 stores 1 byte to [a0+108] +0x1.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd83c2f4, `lw` at 0xd83c350.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd83c300, `lw` at 0xd83c35c.
  The `sw` at 0xd83c320 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jalr` at 0xd83c248 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83c260 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xd83c2dc calls _XReply with a0=a0 at entry (arg0), a1=sp-80, a2=0x0, a3=0x0, a5=[a0+108], a6=0x11, a7=0x1000d.
  The `jalr` at 0xd83c2f8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xd83c30c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83c338 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+108].
  The `jalr` at 0xd83c354 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xd83c368 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd83c254 targets 0xd83c268, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `bne` branch at 0xd83c278 targets 0xd83c338, is taken when v1(=[a0+112]) < a0(=[a0+108]+16) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+16) (unsigned).
  The `beq` branch at 0xd83c2e4 targets 0xd83c348, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0xd83c2ec targets 0xd83c300, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `beq` branch at 0xd83c304 targets 0xd83c314, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83c340 targets 0xd83c280 and is always taken.
  The `beq` branch at 0xd83c348 targets 0xd83c35c, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `beq` branch at 0xd83c360 targets 0xd83c374, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The return at 0xd83c330 has v0 = 0x1.
  The return at 0xd83c384 has v0 = 0x0.
- `glXQueryHyperpipeNetworkSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83cc58 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd83cc58-0xd83cecc (628 bytes).
  It occupies 628 bytes.
  5 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0xd83cc8c, `sw` at 0xd83cd38, `sw` at 0xd83cd84.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83cc90, `lw` at 0xd83cd58, `lw` at 0xd83cde0.
  The `lw` at 0xd83cc9c loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83cca8, `lw` at 0xd83cce0, `lw` at 0xd83ce7c.
  The `lw` at 0xd83ccac loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd83ccc8 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd83ccd0 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83ccd8, `sb` at 0xd83cd0c.
  The `lw` at 0xd83ccdc loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83cce8 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83ccf4 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd83ccfc stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd83cd04 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd83cd18 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `sw` at 0xd83cd24 stores 4 bytes to [a0+108] +0xc.
  4 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd83cd64, `lw` at 0xd83cdec, `lw` at 0xd83ce34.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd83cd70, `lw` at 0xd83cdf8, `lw` at 0xd83ce40.
  The `jalr` at 0xd83cc84 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83cca0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83cd20 calls _XReply with a0=a0 at entry (arg0), a1=sp-96, a2=0x0, a3=0x0, a4=[a0+132], a5=0x1000e, a6=0x11.
  The `jalr` at 0xd83cd50 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83cd68 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83cd7c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83cdbc calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd83cdd8 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83cdf0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83ce04 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83ce20 calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd83ce38 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83ce4c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83ce70 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83ce90 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83cea4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd83cc94 targets 0xd83cca8, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `bne` branch at 0xd83ccb8 targets 0xd83ce70, is taken when v1(=[a0+112]) < a0(=[a0+108]+16) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+16) (unsigned).
  The `beq` branch at 0xd83cd28 targets 0xd83ce80, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `blez` branch at 0xd83cd34 targets 0xd83cd48, is taken when a0(?) <= 0 (signed), and falls through when a0(?) > 0 (signed).
  The `bne` branch at 0xd83cd40 targets 0xd83cda4, is taken when a0(?) < 0x21 (signed), and falls through when a0(?) >= 0x21 (signed).
  The `beq` branch at 0xd83cd5c targets 0xd83cd70, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd83cd74 targets 0xd83cd84, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `bne` branch at 0xd83cdc8 targets 0xd83ce18, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0xd83cde4 targets 0xd83cdf8, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd83cdfc targets 0xd83ce0c, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83ce10 targets 0xd83cd8c and is always taken.
  The `beq` branch at 0xd83ce2c targets 0xd83ce40, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd83ce44 targets 0xd83ce58, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83ce78 targets 0xd83ccc0 and is always taken.
  The `beq` branch at 0xd83ce84 targets 0xd83ce98, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd83ce9c targets 0xd83ceac, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The return at 0xd83cd9c has v0 = 0x0.
  The return at 0xd83ce68 has v0 = ?.
  The return at 0xd83cec4 has v0 = 0x0.
- `glXHyperpipeConfigSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83cecc (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd83cecc-0xd83d18c (704 bytes).
  It occupies 704 bytes.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83cf30, `lw` at 0xd83d07c, `lw` at 0xd83d0e8.
  The `lw` at 0xd83cf3c loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83cf5c, `lw` at 0xd83cfa0, `lw` at 0xd83d140.
  The `lw` at 0xd83cf68 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd83cf84 stores 4 bytes to a0 (arg0 at entry) +0x64.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83cf8c, `sb` at 0xd83cfd0.
  The `sh` at 0xd83cf98 stores 2 bytes to [a0+108] +0x2.
  The `lw` at 0xd83cf9c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83cfac stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83cfbc stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd83cfc4 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd83cfcc stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd83cfd4 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `sw` at 0xd83cfd8 stores 4 bytes to [a0+108] +0x14.
  The `sw` at 0xd83cfe0 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd83cfec stores 4 bytes to [a0+108] +0xc.
  The `lbu` at 0xd83d000 loads 1 byte from a3 (arg3 at entry) +0x0.
  The `sb` at 0xd83d00c stores 1 byte to [a0+108] +0x20.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xd83d01c, `lbu` at 0xd83d02c.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0xd83d024, `sb` at 0xd83d038.
  The `sw` at 0xd83d064 stores 4 bytes to a4 (arg4 at entry) +0x0.
  3 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd83d088, `lw` at 0xd83d0f4, `lw` at 0xd83d150.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd83d094, `lw` at 0xd83d100, `lw` at 0xd83d15c.
  The `jalr` at 0xd83cf08 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83cf40 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d050 calls _XReply with a0=a0 at entry (arg0), a1=sp-112, a2=0x0, a3=0x0.
  The `jalr` at 0xd83d08c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d0a0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d0f8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d10c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d134 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d154 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d168 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `blez` branch at 0xd83cf10 targets 0xd83d0c8, is taken when s2(=a2) <= 0 (signed), and falls through when s2(=a2) > 0 (signed).
  The `beq` branch at 0xd83cf18 targets 0xd83d0c8, is taken when s3(=a3) == 0, and falls through when s3(=a3) != 0.
  The `beq` branch at 0xd83cf20 targets 0xd83d0c8, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bltz` branch at 0xd83cf28 targets 0xd83d17c, is taken when v1(=a1) < 0 (signed), and falls through when v1(=a1) >= 0 (signed).
  The `beq` branch at 0xd83cf34 targets 0xd83cf4c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `bne` branch at 0xd83cf78 targets 0xd83d134, is taken when a1(=[a0+112]) < a2(?) (unsigned), and falls through when a1(=[a0+112]) >= a2(?) (unsigned).
  The `blez` branch at 0xd83cfe8 targets 0xd83d03c, is taken when s0(?) <= 0 (signed), and falls through when s0(?) > 0 (signed).
  The `beq` branch at 0xd83cff4 targets 0xd83d010, is taken when (s0(?) & 0x1) == 0, and falls through when (s0(?) & 0x1) != 0.
  The `beq` branch at 0xd83d014 targets 0xd83d03c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0xd83d034 targets 0xd83d01c, is taken when v0(?) != s0(?), and falls through when v0(?) == s0(?).
  The `beq` branch at 0xd83d058 targets 0xd83d144, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `bne` branch at 0xd83d06c targets 0xd83d0e8, is taken when s2(=a2) != t1(?), and falls through when s2(=a2) == t1(?).
  The `bltz` branch at 0xd83d074 targets 0xd83d0e8, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `beq` branch at 0xd83d080 targets 0xd83d094, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xd83d098 targets 0xd83d0a8, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83d0ec targets 0xd83d100, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xd83d104 targets 0xd83d114, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83d13c targets 0xd83cf80 and is always taken.
  The `beq` branch at 0xd83d148 targets 0xd83d15c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xd83d160 targets 0xd83d170, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83d174 targets 0xd83d0d4 and is always taken.
  The `beq` branch at 0xd83d184 targets 0xd83d0d4 and is always taken.
  The return at 0xd83d0c0 has v0 = 0x0.
  The return at 0xd83d0e0 has v0 = 0x5b.
  The return at 0xd83d12c has v0 = 0x5b.
- `glXDestroyHyperpipeConfigSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83d18c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd83d18c-0xd83d300 (372 bytes).
  It occupies 372 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83d1c0, `lw` at 0xd83d25c.
  The `lw` at 0xd83d1cc loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83d1d8, `lw` at 0xd83d20c, `lw` at 0xd83d2b8.
  The `lw` at 0xd83d1dc loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd83d1f4 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd83d1fc stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83d204, `sb` at 0xd83d234.
  The `lw` at 0xd83d208 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83d214 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83d220 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd83d228 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd83d230 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd83d23c loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `sw` at 0xd83d248 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd83d254 stores 4 bytes to [a0+108] +0xc.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd83d26c, `lw` at 0xd83d2c4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd83d278, `lw` at 0xd83d2d0.
  The `jalr` at 0xd83d1b8 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83d1d0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+1232].
  The `jalr` at 0xd83d250 calls _XReply with a0=a0 at entry (arg0), a1=sp-80, a2=0x0, a3=0x0, a4=[a0+132], a5=[a0+108], a6=0x10011, a7=0x11.
  The `jalr` at 0xd83d270 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+1232].
  The `jalr` at 0xd83d284 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d2ac calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+108].
  The `jalr` at 0xd83d2c8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+1232].
  The `jalr` at 0xd83d2dc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd83d1c4 targets 0xd83d1d8, is taken when a4(=[a0+1232]) == 0, and falls through when a4(=[a0+1232]) != 0.
  The `bne` branch at 0xd83d1e8 targets 0xd83d2a8, is taken when v1(=[a0+112]) < a0(=[a0+108]+32) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+32) (unsigned).
  The `beq` branch at 0xd83d258 targets 0xd83d2bc, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0xd83d264 targets 0xd83d278, is taken when a4(=[a0+1232]) == 0, and falls through when a4(=[a0+1232]) != 0.
  The `beq` branch at 0xd83d27c targets 0xd83d290, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83d2b4 targets 0xd83d1ec and is always taken.
  The `beq` branch at 0xd83d2bc targets 0xd83d2d0, is taken when a4(=[a0+1232]) == 0, and falls through when a4(=[a0+1232]) != 0.
  The `beq` branch at 0xd83d2d4 targets 0xd83d2e8, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The return at 0xd83d2a0 has v0 = ?.
  The return at 0xd83d2f8 has v0 = 0x5c.
- `glXQueryHyperpipeConfigSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83d300 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd83d300-0xd83d568 (616 bytes).
  It occupies 616 bytes.
  5 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0xd83d338, `sw` at 0xd83d3f0, `sw` at 0xd83d3f4.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83d33c, `lw` at 0xd83d3f8, `lw` at 0xd83d47c.
  The `lw` at 0xd83d348 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83d354, `lw` at 0xd83d390, `lw` at 0xd83d52c.
  The `lw` at 0xd83d358 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd83d378 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd83d380 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83d388, `sb` at 0xd83d3b8.
  The `lw` at 0xd83d38c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83d398 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83d3a4 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd83d3ac stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd83d3b4 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd83d3c0 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `sw` at 0xd83d3cc stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd83d3d8 stores 4 bytes to [a0+108] +0xc.
  4 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd83d404, `lw` at 0xd83d488, `lw` at 0xd83d4e8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd83d410, `lw` at 0xd83d494, `lw` at 0xd83d4f4.
  The `jalr` at 0xd83d330 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83d34c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83d3d4 calls _XReply with a0=a0 at entry (arg0), a1=sp-96, a2=0x0, a3=0x0, a4=[a0+132], a5=a1 at entry (arg1), a6=0x1000f, a7=0x11.
  The `jalr` at 0xd83d408 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83d41c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d458 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d470 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d48c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83d4a0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d4d4 calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd83d4ec calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83d500 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d520 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d544 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83d558 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd83d340 targets 0xd83d354, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `bne` branch at 0xd83d364 targets 0xd83d520, is taken when v1(=[a0+112]) < a0(=[a0+108]+32) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+32) (unsigned).
  The `beq` branch at 0xd83d3dc targets 0xd83d530, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `bgtz` branch at 0xd83d3ec targets 0xd83d440, is taken when t9(?) > 0 (signed), and falls through when t9(?) <= 0 (signed).
  The `beq` branch at 0xd83d3fc targets 0xd83d410, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd83d414 targets 0xd83d428, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `bne` branch at 0xd83d460 targets 0xd83d4c4, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0xd83d480 targets 0xd83d494, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd83d498 targets 0xd83d4ac, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83d4e0 targets 0xd83d4f4, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd83d4f8 targets 0xd83d50c, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83d528 targets 0xd83d36c and is always taken.
  The `beq` branch at 0xd83d538 targets 0xd83d54c, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd83d550 targets 0xd83d560, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83d560 targets 0xd83d50c and is always taken.
  The return at 0xd83d438 has v0 = 0x0.
  The return at 0xd83d4bc has v0 = 0x0.
  The return at 0xd83d518 has v0 = one of ?, 0x0.
- `__glOdyim_Clear` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9644d0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xd9644d0-0xd964a94 (1476 bytes).
  It occupies 1476 bytes.
  The `lw` at 0xd9644d8 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9644dc loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9644ec loads 4 bytes from [0x1010] +0x16964.
  The `sb` at 0xd964544 stores 1 byte to [0x1010] +0x16975.
  The `lw` at 0xd964548 loads 4 bytes from [0x1010] +0x2e40.
  5 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xd964554, `sw` at 0xd964684, `sw` at 0xd96478c.
  The `lw` at 0xd964588 loads 4 bytes from [0x1010] +0xc84.
  The `lbu` at 0xd9645a4 loads 1 byte from [0x1010] +0xc98.
  The `lw` at 0xd9645b0 loads 4 bytes from [0x1010] +0x7b24.
  The `lbu` at 0xd9645cc loads 1 byte from ?.
  4 such `lw` accesses load 4 bytes from [0x1010] +0x7c20, including `lw` at 0xd9645d8, `lw` at 0xd964650, `lw` at 0xd964940.
  8 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd9645dc, `lw` at 0xd9645f0, `lw` at 0xd964600.
  4 such `lw` accesses load 4 bytes from [0x1010] +0x7c24, including `lw` at 0xd9645ec, `lw` at 0xd964658, `lw` at 0xd96495c.
  The `sw` at 0xd9645fc stores 4 bytes to [0x1010] +0x7c20.
  The `sw` at 0xd964604 stores 4 bytes to [0x1010] +0x7c24.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd96461c, `sw` at 0xd964678, `sw` at 0xd964784.
  7 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xd964624, `sw` at 0xd964630, `sw` at 0xd964638.
  The `lw` at 0xd964660 loads 4 bytes from [0x1010] +0x7b70.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7bfc, including `lw` at 0xd96469c, `lw` at 0xd964794.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c5c, including `lw` at 0xd9646a0, `lw` at 0xd9646e0.
  The `lbu` at 0xd9646b4 loads 1 byte from [0x1010] +0xc94.
  The `lwc1` at 0xd9646c0 loads 4 bytes from [0x1010] +0x744.
  The `lwc1` at 0xd9646c8 loads 4 bytes from [0x1010] +0x748.
  The `lwc1` at 0xd9646d0 loads 4 bytes from [0x1010] +0x74c.
  The `lwc1` at 0xd9646d8 loads 4 bytes from [0x1010] +0x750.
  2 such `lbu` accesses load 1 byte from [0x1010] +0xc99, including `lbu` at 0xd9646e4, `lbu` at 0xd964a58.
  The `lbu` at 0xd964700 loads 1 byte from [0x1010] +0x664.
  2 such `lbu` accesses load 1 byte from [0x1010] +0xc9a, including `lbu` at 0xd964710, `lbu` at 0xd964a80.
  The `lh` at 0xd964728 loads 2 bytes from [0x1010] +0x68a.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x7c5c, including `sw` at 0xd964778, `sw` at 0xd964828, `sw` at 0xd96492c.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7bfc, including `sw` at 0xd9647a0, `sw` at 0xd964830.
  The `ldc1` at 0xd9647b8 loads 8 bytes from [0x1010] +0x668.
  The `lw` at 0xd9647c4 loads 4 bytes from [0x1010] +0xce4.
  The `lbu` at 0xd9647d0 loads 1 byte from [0x1010] +0x7b74.
  2 such `lw` accesses load 4 bytes from [0x1010] +0xe78, including `lw` at 0xd9647ec, `lw` at 0xd9649e4.
  2 such `lw` accesses load 4 bytes from [0x1010] +0xe74, including `lw` at 0xd9647f8, `lw` at 0xd9649ec.
  2 such `lh` accesses load 2 bytes from [0x1010] +0x684, including `lh` at 0xd964804, `lh` at 0xd9649f4.
  The `lw` at 0xd964898 loads 4 bytes from [0x1010] +0x760.
  The `lwc1` at 0xd9648d4 loads 4 bytes from [0x1010] +0x754.
  The `lbu` at 0xd9649b8 loads 1 byte from [0x1010] +0xc97.
  The `jalr` at 0xd964520 calls __glSetError [0xda34dc0] with a0=0x502, a1=[0x1018], a2=0x10000, a3=a3 at entry (arg3).
  The `jalr` at 0xd96454c calls (unknown callee) with a0=[0x1010], a1=[0x1018], a2=0x10000, a3=a3 at entry (arg3).
  The `jalr` at 0xd964570 calls __glSetError [0xda34dc0] with a0=0x501, a1=?, a2=-0x4701, a3=a0 at entry (arg0).
  The `jalr` at 0xd9645b4 calls (unknown callee) with a0=[0x1010]+31416, a1=?, a2=-0x4701, a3=a0 at entry (arg0), a4=[[0x1010]+3204], a5=0x1c00, a7=[[0x1010]+3224]:1.
  The `jalr` at 0xd9647bc calls __glOdysseyWindowToNormalizedEyeZ [0xd9e4890] with a0=0xfffffffffffbffff, a1=?, a2=?, a3=?, a4=0xff000, a5=0xfffffffffff00fff, a6=[[0x1010]+3226]:1.
  The `bgezall` at 0xd964810 calls __glOdysseyClear [0xd964aa0] with a0=[0x1010], a1=sp-128, a2=?, a3=[[0x1010]+1668]:2, a4=0x0, a5=0x0, a6=[[0x1010]+3700], a7=[[0x1010]+3704].
  The `jalr` at 0xd964988 calls __glOdysseyIoctl [0xd9d9360] with a0=[0x1010], a1=0x6f64000d, a2=sp-144, a3=?.
  The `jalr` at 0xd9649dc calls __glOdysseySetDrawbuf [0xd9d9fb0] with a0=[0x1010], a1=0x0, a2=0x0, a3=one of 0x0, 0x1.
  The `bgezall` at 0xd964a28 calls __glOdysseyClear [0xd964aa0] with a0=[0x1010], a1=sp-128, a2=?, a3=[[0x1010]+1668]:2, a4=0x0, a5=0x0, a6=[[0x1010]+3700], a7=[[0x1010]+3704]; fp f15=0x41fffff800000000.
  The `jalr` at 0xd964a44 calls __glOdysseySetDrawbuf [0xd9d9fb0] with a0=[0x1010], a1=?, a2=?, a3=0x0, a4=0x0.
  The `beq` branch at 0xd964504 targets 0xd964688, is taken when at(=[[0x1010]+92516]) == 0, and falls through when at(=[[0x1010]+92516]) != 0.
  The `beq` branch at 0xd96450c targets 0xd964540, is taken when a1(=[0x1018]) == 0, and falls through when a1(=[0x1018]) != 0.
  The `beq` branch at 0xd964518 targets 0xd96453c, is taken when a1(=[0x1018]) == v0(=0x2), and falls through when a1(=[0x1018]) != v0(=0x2).
  The `beq` branch at 0xd964564 targets 0xd964580, is taken when (a1(=a0) & a2(=-0x4701)) == 0, and falls through when (a1(=a0) & a2(=-0x4701)) != 0.
  The `beq` branch at 0xd964578 targets 0xd96452c and is always taken.
  The `beq` branch at 0xd964580 targets 0xd96452c, is taken when a3(=a0) == 0, and falls through when a3(=a0) != 0.
  The `bne` branch at 0xd964590 targets 0xd964528, is taken when a4(=[[0x1010]+3204]) != a5(=0x1c00), and falls through when a4(=[[0x1010]+3204]) == a5(=0x1c00).
  The `beq` branch at 0xd96459c targets 0xd9645cc, is taken when (a6(=a0) & 0x200) == 0, and falls through when (a6(=a0) & 0x200) != 0.
  The `beq` branch at 0xd9645a8 targets 0xd9645cc, is taken when a7(=[[0x1010]+3224]:1) == 0, and falls through when a7(=[[0x1010]+3224]:1) != 0.
  The `beq` branch at 0xd9645c4 targets 0xd964528, is taken when (t0(=a0) & 0x4500) == 0, and falls through when (t0(=a0) & 0x4500) != 0.
  The `bne` branch at 0xd9645d0 targets 0xd964528, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bne` branch at 0xd9645e0 targets 0xd9645fc, is taken when t2(=[[0x1010]+31776]) != a1(?), and falls through when t2(=[[0x1010]+31776]) == a1(?).
  The `beq` branch at 0xd9645f4 targets 0xd964698, is taken when a2(?) == a3(=[[0x1010]+31780]), and falls through when a2(?) != a3(=[[0x1010]+31780]).
  The `beq` branch at 0xd96460c targets 0xd964644, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bgez` branch at 0xd964668 targets 0xd964930, is taken when t2(=([[0x1010]+31600] << 0x2b)) >= 0 (signed), and falls through when t2(=([[0x1010]+31600] << 0x2b)) < 0 (signed).
  The `beq` branch at 0xd964680 targets 0xd964698 and is always taken.
  The `bne` branch at 0xd964688 targets 0xd964518, is taken when a1(=[0x1018]) != 0, and falls through when a1(=[0x1018]) == 0.
  The `beq` branch at 0xd964690 targets 0xd96455c and is always taken.
  The `beq` branch at 0xd9646ac targets 0xd9648ec, is taken when (a7(=a0) & 0x4000) == 0, and falls through when (a7(=a0) & 0x4000) != 0.
  The `beq` branch at 0xd9646b8 targets 0xd9648d4, is taken when t0(=[[0x1010]+3220]:1) == 0, and falls through when t0(=[[0x1010]+3220]:1) != 0.
  The `beq` branch at 0xd9646e8 targets 0xd964710, is taken when a3(=[[0x1010]+3225]:1) == 0, and falls through when a3(=[[0x1010]+3225]:1) != 0.
  The `beq` branch at 0xd9646f8 targets 0xd964710, is taken when (t1(=a0) & 0x100) == 0, and falls through when (t1(=a0) & 0x100) != 0.
  The `beq` branch at 0xd964704 targets 0xd964710, is taken when t2(=[[0x1010]+1636]:1) == 0, and falls through when t2(=[[0x1010]+1636]:1) != 0.
  The `beq` branch at 0xd964714 targets 0xd964854, is taken when a6(=[[0x1010]+3226]:1) == 0, and falls through when a6(=[[0x1010]+3226]:1) != 0.
  The `beq` branch at 0xd964720 targets 0xd964854, is taken when (t3(=a0) & 0x400) == 0, and falls through when (t3(=a0) & 0x400) != 0.
  The `beq` branch at 0xd96472c targets 0xd96485c, is taken when a3(=[[0x1010]+3225]:1) == 0, and falls through when a3(=[[0x1010]+3225]:1) != 0.
  The `beq` branch at 0xd9647c8 targets 0xd964868, is taken when a6(=[[0x1010]+3300]) == 0, and falls through when a6(=[[0x1010]+3300]) != 0.
  The `beq` branch at 0xd9647d4 targets 0xd964898, is taken when a7(=[[0x1010]+31604]:1) == 0, and falls through when a7(=[[0x1010]+31604]:1) != 0.
  The `beq` branch at 0xd964854 targets 0xd96472c and is always taken.
  The `beq` branch at 0xd964860 targets 0xd964740 and is always taken.
  The `beq` branch at 0xd96486c targets 0xd9647d0, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0xd96487c targets 0xd964a58, is taken when (t9(=a0) & 0x100) == 0, and falls through when (t9(=a0) & 0x100) != 0.
  The `beq` branch at 0xd964888 targets 0xd964a80, is taken when (ra(=a0) & 0x400) == 0, and falls through when (ra(=a0) & 0x400) != 0.
  The `beq` branch at 0xd964890 targets 0xd9647d0 and is always taken.
  The `beq` branch at 0xd9648a0 targets 0xd964998, is taken when a1(=[[0x1010]+1888]) == at(=0x406), and falls through when a1(=[[0x1010]+1888]) != at(=0x406).
  The `beq` branch at 0xd9648a8 targets 0xd964a6c, is taken when a1(=[[0x1010]+1888]) == v0(=0x407), and falls through when a1(=[[0x1010]+1888]) != v0(=0x407).
  The `beq` branch at 0xd9648b4 targets 0xd9649b0, is taken when a1(=[[0x1010]+1888]) == v1(=0x408), and falls through when a1(=[[0x1010]+1888]) != v1(=0x408).
  The `beq` branch at 0xd9648cc targets 0xd9647ec and is always taken.
  The `beq` branch at 0xd9648e4 targets 0xd9646e0 and is always taken.
  The `beq` branch at 0xd964928 targets 0xd9646e4 and is always taken.
  The `beq` branch at 0xd964990 targets 0xd964670 and is always taken.
  The `beq` branch at 0xd9649a8 targets 0xd9649c8 and is always taken.
  The `beq` branch at 0xd964a50 targets 0xd9647ec and is always taken.
  The `bne` branch at 0xd964a5c targets 0xd9647d0, is taken when t1(=[[0x1010]+3225]:1) != 0, and falls through when t1(=[[0x1010]+3225]:1) == 0.
  The `beq` branch at 0xd964a64 targets 0xd964884 and is always taken.
  The `beq` branch at 0xd964a78 targets 0xd9649c8 and is always taken.
  The `bne` branch at 0xd964a84 targets 0xd9647d0, is taken when t3(=[[0x1010]+3226]:1) != 0, and falls through when t3(=[[0x1010]+3226]:1) == 0.
  The `beq` branch at 0xd964a8c targets 0xd964890 and is always taken.
  The return at 0xd964534 has v0 = one of ?, ret(__glSetError).
  The return at 0xd96484c has v0 = ret(__glOdysseyClear).
- `ApplyMaterialF` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd983680 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xd983680-0xd983de4 (1892 bytes).
  It occupies 1892 bytes.
  The `lw` at 0xd983688 loads 4 bytes from abs 0x1010.
  7 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xd983698, `lwc1` at 0xd9836d0, `lwc1` at 0xd983904.
  The `lw` at 0xd9836fc loads 4 bytes from a0 (arg0 at entry) +0x18.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x18, including `sw` at 0xd98371c, `sw` at 0xd98375c.
  6 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xd983720, `lwc1` at 0xd9839a8, `lwc1` at 0xd983b08.
  6 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xd983760, `lwc1` at 0xd9839e8, `lwc1` at 0xd983b84.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1c, including `lw` at 0xd98378c, `lw` at 0xd983968.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x1c, including `sw` at 0xd9837a0, `sw` at 0xd983974, `sw` at 0xd983de0.
  The `lw` at 0xd9837ac loads 4 bytes from [0x1010] +0x9830.
  The `sw` at 0xd9837b8 stores 4 bytes to [0x1010] +0x9830.
  38 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xd9837c0, `sw` at 0xd9837c8, `sw` at 0xd9837d0.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c70, including `lw` at 0xd9837e0, `lw` at 0xd98386c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c74, including `lw` at 0xd9837e8, `lw` at 0xd983874.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c78, including `lw` at 0xd9837f0, `lw` at 0xd98387c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c7c, including `lw` at 0xd9837f8, `lw` at 0xd983884.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c80, including `lw` at 0xd983800, `lw` at 0xd98388c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c84, including `lw` at 0xd983808, `lw` at 0xd983894.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c88, including `lw` at 0xd983810, `lw` at 0xd98389c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c8c, including `lw` at 0xd983818, `lw` at 0xd9838a4.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c90, including `lw` at 0xd983820, `lw` at 0xd9838ac.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c94, including `lw` at 0xd983828, `lw` at 0xd9838b4.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c98, including `lw` at 0xd983830, `lw` at 0xd9838bc.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c9c, including `lw` at 0xd983838, `lw` at 0xd9838c4.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7ca0, including `lw` at 0xd983840, `lw` at 0xd9838cc.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7ca4, including `lw` at 0xd983848, `lw` at 0xd9838d4.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7ca8, including `lw` at 0xd983850, `lw` at 0xd9838dc.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7cac, including `lw` at 0xd983858, `lw` at 0xd9838e4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0xd983984, `lw` at 0xd983aa4.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x8, including `sw` at 0xd9839a4, `sw` at 0xd9839e4, `sw` at 0xd983ac4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0xd983a10, `lw` at 0xd983bac.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xc, including `sw` at 0xd983a28, `sw` at 0xd983a68, `sw` at 0xd983bc4.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lwc1` at 0xd983a2c, `lwc1` at 0xd983c08.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0xd983aec, `lw` at 0xd983c54.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x0, including `sw` at 0xd983b04, `sw` at 0xd983b80, `sw` at 0xd983c74.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xd983bec, `lw` at 0xd983ce4.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x4, including `sw` at 0xd983c04, `sw` at 0xd983cfc.
  The `lw` at 0xd983d0c loads 4 bytes from a0 (arg0 at entry) +0x10.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x10, including `sw` at 0xd983d2c, `sw` at 0xd983d6c.
  The `lw` at 0xd983d9c loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `sw` at 0xd983db4 stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `bne` branch at 0xd983684 targets 0xd9836b8, is taken when a1 < 0x1600 (unsigned), and falls through when a1 >= 0x1600 (unsigned).
  The `beq` branch at 0xd983690 targets 0xd9838f0, is taken when a1 >= 0x1601 (unsigned), and falls through when a1 < 0x1601 (unsigned).
  The `bc1f` branch at 0xd9836a8 targets 0xd9836f0, is taken when not (f4(=0x3ff0000000000000) <= f0 (c.le.d at 0xd9836a4)), and falls through when f4(=0x3ff0000000000000) <= f0 (c.le.d at 0xd9836a4).
  The `beq` branch at 0xd9836b0 targets 0xd9836f4 and is always taken.
  The `bne` branch at 0xd9836bc targets 0xd983924, is taken when a1 < 0x1201 (unsigned), and falls through when a1 >= 0x1201 (unsigned).
  The `beq` branch at 0xd9836c8 targets 0xd983a6c, is taken when a1 >= 0x1202 (unsigned), and falls through when a1 < 0x1202 (unsigned).
  The `bc1f` branch at 0xd9836e0 targets 0xd983978, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `beq` branch at 0xd9836e8 targets 0xd98397c and is always taken.
  The `bc1f` branch at 0xd98372c targets 0xd98373c, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `beq` branch at 0xd983734 targets 0xd983740 and is always taken.
  The `bc1f` branch at 0xd98376c targets 0xd98377c, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `beq` branch at 0xd983774 targets 0xd983780 and is always taken.
  The `beq` branch at 0xd9837b0 targets 0xd983864, is taken when t2(=[[0x1010]+38960]) == 0, and falls through when t2(=[[0x1010]+38960]) != 0.
  The `bne` branch at 0xd9838f0 targets 0xd98394c, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0xd9838fc targets 0xd9837a4, is taken when a1 >= 0x1603 (unsigned), and falls through when a1 < 0x1603 (unsigned).
  The `bc1f` branch at 0xd983914 targets 0xd983a94, is taken when FP condition code 4 is false, and falls through when FP condition code 4 is true.
  The `beq` branch at 0xd98391c targets 0xd983a9c and is always taken.
  The `bne` branch at 0xd983924 targets 0xd9837a4, is taken when a1 != a6(=0x1200), and falls through when a1 == a6(=0x1200).
  The `bc1f` branch at 0xd98393c targets 0xd983c48, is taken when FP condition code 5 is false, and falls through when FP condition code 5 is true.
  The `beq` branch at 0xd983944 targets 0xd983c4c and is always taken.
  The `bne` branch at 0xd98394c targets 0xd9837a4, is taken when a1 != a7(=0x1601), and falls through when a1 == a7(=0x1601).
  The `bc1f` branch at 0xd983964 targets 0xd983db8, is taken when FP condition code 6 is false, and falls through when FP condition code 6 is true.
  The `beq` branch at 0xd983970 targets 0xd9837a4 and is always taken.
  The `bc1f` branch at 0xd9839b4 targets 0xd9839c4, is taken when FP condition code 7 is false, and falls through when FP condition code 7 is true.
  The `beq` branch at 0xd9839bc targets 0xd9839c8 and is always taken.
  The `bc1f` branch at 0xd9839f4 targets 0xd983a04, is taken when not (f4(=0x3ff0000000000000) <= f7 (c.le.d at 0xd9839f0)), and falls through when f4(=0x3ff0000000000000) <= f7 (c.le.d at 0xd9839f0).
  The `beq` branch at 0xd9839fc targets 0xd983a08 and is always taken.
  The `bc1f` branch at 0xd983a38 targets 0xd983a48, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `beq` branch at 0xd983a40 targets 0xd983a4c and is always taken.
  The `beq` branch at 0xd983a64 targets 0xd9837a4 and is always taken.
  The `bne` branch at 0xd983a6c targets 0xd9837a4, is taken when a1 != t2(=0x1202), and falls through when a1 == t2(=0x1202).
  The `bc1f` branch at 0xd983a84 targets 0xd983d00, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `beq` branch at 0xd983a8c targets 0xd983d04 and is always taken.
  The `bc1t` branch at 0xd983ad4 targets 0xd983ae4, is taken when FP condition code 3 is true, and falls through when FP condition code 3 is false.
  The `bc1f` branch at 0xd983b14 targets 0xd983b24, is taken when FP condition code 4 is false, and falls through when FP condition code 4 is true.
  The `beq` branch at 0xd983b1c targets 0xd983b28 and is always taken.
  The `bc1f` branch at 0xd983b54 targets 0xd983b64, is taken when FP condition code 5 is false, and falls through when FP condition code 5 is true.
  The `beq` branch at 0xd983b5c targets 0xd983b68 and is always taken.
  The `bc1f` branch at 0xd983b90 targets 0xd983ba0, is taken when FP condition code 6 is false, and falls through when FP condition code 6 is true.
  The `beq` branch at 0xd983b98 targets 0xd983ba4 and is always taken.
  The `bc1t` branch at 0xd983bd4 targets 0xd983be4, is taken when FP condition code 7 is true, and falls through when FP condition code 7 is false.
  The `bc1f` branch at 0xd983c14 targets 0xd983c24, is taken when not (f4(=0x3ff0000000000000) <= f7 (c.le.d at 0xd983c10)), and falls through when f4(=0x3ff0000000000000) <= f7 (c.le.d at 0xd983c10).
  The `beq` branch at 0xd983c1c targets 0xd983c28 and is always taken.
  The `beq` branch at 0xd983c40 targets 0xd9837a4 and is always taken.
  The `bc1f` branch at 0xd983c84 targets 0xd983c94, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `beq` branch at 0xd983c8c targets 0xd983c98 and is always taken.
  The `bc1f` branch at 0xd983cc4 targets 0xd983cd4, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `beq` branch at 0xd983ccc targets 0xd983cd8 and is always taken.
  The `beq` branch at 0xd983cf8 targets 0xd9837a4 and is always taken.
  The `bc1f` branch at 0xd983d3c targets 0xd983d4c, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `beq` branch at 0xd983d44 targets 0xd983d50 and is always taken.
  The `bc1f` branch at 0xd983d7c targets 0xd983d8c, is taken when FP condition code 4 is false, and falls through when FP condition code 4 is true.
  The `beq` branch at 0xd983d84 targets 0xd983d90 and is always taken.
  The `beq` branch at 0xd983db0 targets 0xd9837a4 and is always taken.
  The `beq` branch at 0xd983ddc targets 0xd9837a4 and is always taken.
  The return at 0xd98385c has v0 = [[0x1010]+31900].
  The return at 0xd9838e8 has v0 = [[0x1010]+31860].
- `ApplyMaterialI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd983df0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xd983df0-0xd98470c (2332 bytes).
  It occupies 2332 bytes.
  The `lw` at 0xd983df8 loads 4 bytes from abs 0x1010.
  7 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lw` at 0xd983e08, `lw` at 0xd983e58, `lw` at 0xd9840c8.
  20 such `lwc1` accesses load 4 bytes from [0x1010] +0xdf0, including `lwc1` at 0xd983e20, `lwc1` at 0xd983e70, `lwc1` at 0xd983ed4.
  The `lw` at 0xd983ea8 loads 4 bytes from a0 (arg0 at entry) +0x18.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x18, including `sw` at 0xd983ec0, `sw` at 0xd983f14.
  6 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0xd983ec4, `lw` at 0xd9841b0, `lw` at 0xd98437c.
  6 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lw` at 0xd983f18, `lw` at 0xd984204, `lw` at 0xd984420.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1c, including `lw` at 0xd983f58, `lw` at 0xd984170.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x1c, including `sw` at 0xd983f6c, `sw` at 0xd98417c, `sw` at 0xd984708.
  The `lw` at 0xd983f78 loads 4 bytes from [0x1010] +0x9830.
  The `sw` at 0xd983f84 stores 4 bytes to [0x1010] +0x9830.
  38 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xd983f8c, `sw` at 0xd983f94, `sw` at 0xd983f9c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c70, including `lw` at 0xd983fac, `lw` at 0xd984034.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c74, including `lw` at 0xd983fb4, `lw` at 0xd98403c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c78, including `lw` at 0xd983fbc, `lw` at 0xd984044.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c7c, including `lw` at 0xd983fc4, `lw` at 0xd98404c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c80, including `lw` at 0xd983fcc, `lw` at 0xd984054.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c84, including `lw` at 0xd983fd4, `lw` at 0xd98405c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c88, including `lw` at 0xd983fdc, `lw` at 0xd984064.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c8c, including `lw` at 0xd983fe4, `lw` at 0xd98406c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c90, including `lw` at 0xd983fec, `lw` at 0xd984074.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c94, including `lw` at 0xd983ff4, `lw` at 0xd98407c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c98, including `lw` at 0xd983ffc, `lw` at 0xd984084.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c9c, including `lw` at 0xd984004, `lw` at 0xd98408c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7ca0, including `lw` at 0xd98400c, `lw` at 0xd984094.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7ca4, including `lw` at 0xd984014, `lw` at 0xd98409c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7ca8, including `lw` at 0xd98401c, `lw` at 0xd9840a4.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7cac, including `lw` at 0xd984024, `lw` at 0xd9840ac.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0xd984194, `lw` at 0xd984304.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x8, including `sw` at 0xd9841ac, `sw` at 0xd984200, `sw` at 0xd984324.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0xd984244, `lw` at 0xd98445c.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xc, including `sw` at 0xd984258, `sw` at 0xd9842ac, `sw` at 0xd984474.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lw` at 0xd98425c, `lw` at 0xd9844cc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0xd984360, `lw` at 0xd984534.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x0, including `sw` at 0xd984378, `sw` at 0xd98441c, `sw` at 0xd98454c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xd9844b0, `lw` at 0xd9845e4.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x4, including `sw` at 0xd9844c8, `sw` at 0xd9845fc.
  The `lw` at 0xd984614 loads 4 bytes from a0 (arg0 at entry) +0x10.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x10, including `sw` at 0xd98462c, `sw` at 0xd984680.
  The `lw` at 0xd9846c4 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `sw` at 0xd9846dc stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `bne` branch at 0xd983df4 targets 0xd983e44, is taken when a1 < 0x1600 (unsigned), and falls through when a1 >= 0x1600 (unsigned).
  The `beq` branch at 0xd983e00 targets 0xd9840b8, is taken when a1 >= 0x1601 (unsigned), and falls through when a1 < 0x1601 (unsigned).
  The `bc1f` branch at 0xd983e34 targets 0xd983e94, is taken when not (f5(=0x3ff0000000000000) <= f0 (c.le.d at 0xd983e30)), and falls through when f5(=0x3ff0000000000000) <= f0 (c.le.d at 0xd983e30).
  The `beq` branch at 0xd983e3c targets 0xd983e98 and is always taken.
  The `bne` branch at 0xd983e48 targets 0xd984104, is taken when a1 < 0x1201 (unsigned), and falls through when a1 >= 0x1201 (unsigned).
  The `beq` branch at 0xd983e50 targets 0xd9842b0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bc1f` branch at 0xd983e84 targets 0xd984180, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `beq` branch at 0xd983e8c targets 0xd984184 and is always taken.
  The `bc1f` branch at 0xd983ee4 targets 0xd983ef4, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `beq` branch at 0xd983eec targets 0xd983ef8 and is always taken.
  The `bc1f` branch at 0xd983f38 targets 0xd983f48, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `beq` branch at 0xd983f40 targets 0xd983f4c and is always taken.
  The `beq` branch at 0xd983f7c targets 0xd984030, is taken when t3(=[[0x1010]+38960]) == 0, and falls through when t3(=[[0x1010]+38960]) != 0.
  The `bne` branch at 0xd9840b8 targets 0xd98414c, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0xd9840c0 targets 0xd983f70, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bc1f` branch at 0xd9840f4 targets 0xd9842f4, is taken when FP condition code 4 is false, and falls through when FP condition code 4 is true.
  The `beq` branch at 0xd9840fc targets 0xd9842fc and is always taken.
  The `bne` branch at 0xd984108 targets 0xd983f70, is taken when a1 != a7(=0x1200), and falls through when a1 == a7(=0x1200).
  The `bc1f` branch at 0xd98413c targets 0xd984520, is taken when FP condition code 5 is false, and falls through when FP condition code 5 is true.
  The `beq` branch at 0xd984144 targets 0xd984524 and is always taken.
  The `bne` branch at 0xd984150 targets 0xd983f70, is taken when a1 != t1(=0x1601), and falls through when a1 == t1(=0x1601).
  The `bc1f` branch at 0xd98416c targets 0xd9846e0, is taken when FP condition code 6 is false, and falls through when FP condition code 6 is true.
  The `beq` branch at 0xd984178 targets 0xd983f70 and is always taken.
  The `bc1f` branch at 0xd9841d0 targets 0xd9841e0, is taken when FP condition code 7 is false, and falls through when FP condition code 7 is true.
  The `beq` branch at 0xd9841d8 targets 0xd9841e4 and is always taken.
  The `bc1f` branch at 0xd984224 targets 0xd984234, is taken when not (f5(=0x3ff0000000000000) <= f9 (c.le.d at 0xd984220)), and falls through when f5(=0x3ff0000000000000) <= f9 (c.le.d at 0xd984220).
  The `beq` branch at 0xd98422c targets 0xd984238 and is always taken.
  The `bc1f` branch at 0xd98427c targets 0xd98428c, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `beq` branch at 0xd984284 targets 0xd984290 and is always taken.
  The `beq` branch at 0xd9842a8 targets 0xd983f70 and is always taken.
  The `bne` branch at 0xd9842b0 targets 0xd983f70, is taken when a1 != t2(=0x1202), and falls through when a1 == t2(=0x1202).
  The `bc1f` branch at 0xd9842e4 targets 0xd984600, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `beq` branch at 0xd9842ec targets 0xd984604 and is always taken.
  The `bc1t` branch at 0xd984348 targets 0xd984358, is taken when FP condition code 3 is true, and falls through when FP condition code 3 is false.
  The `bc1f` branch at 0xd98439c targets 0xd9843ac, is taken when FP condition code 4 is false, and falls through when FP condition code 4 is true.
  The `beq` branch at 0xd9843a4 targets 0xd9843b0 and is always taken.
  The `bc1f` branch at 0xd9843f0 targets 0xd984400, is taken when FP condition code 5 is false, and falls through when FP condition code 5 is true.
  The `beq` branch at 0xd9843f8 targets 0xd984404 and is always taken.
  The `bc1f` branch at 0xd984440 targets 0xd984450, is taken when FP condition code 6 is false, and falls through when FP condition code 6 is true.
  The `beq` branch at 0xd984448 targets 0xd984454 and is always taken.
  The `bc1t` branch at 0xd984498 targets 0xd9844a8, is taken when FP condition code 7 is true, and falls through when FP condition code 7 is false.
  The `bc1f` branch at 0xd9844ec targets 0xd9844fc, is taken when not (f5(=0x3ff0000000000000) <= f9 (c.le.d at 0xd9844e8)), and falls through when f5(=0x3ff0000000000000) <= f9 (c.le.d at 0xd9844e8).
  The `beq` branch at 0xd9844f4 targets 0xd984500 and is always taken.
  The `beq` branch at 0xd984518 targets 0xd983f70 and is always taken.
  The `bc1f` branch at 0xd984570 targets 0xd984580, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `beq` branch at 0xd984578 targets 0xd984584 and is always taken.
  The `bc1f` branch at 0xd9845c4 targets 0xd9845d4, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `beq` branch at 0xd9845cc targets 0xd9845d8 and is always taken.
  The `beq` branch at 0xd9845f8 targets 0xd983f70 and is always taken.
  The `bc1f` branch at 0xd984650 targets 0xd984660, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `beq` branch at 0xd984658 targets 0xd984664 and is always taken.
  The `bc1f` branch at 0xd9846a4 targets 0xd9846b4, is taken when FP condition code 4 is false, and falls through when FP condition code 4 is true.
  The `beq` branch at 0xd9846ac targets 0xd9846b8 and is always taken.
  The `beq` branch at 0xd9846d8 targets 0xd983f70 and is always taken.
  The `beq` branch at 0xd984704 targets 0xd983f70 and is always taken.
  The return at 0xd984028 has v0 = [[0x1010]+31904].
  The return at 0xd9840b0 has v0 = [[0x1010]+31864].
- `AddConvolutionBorders` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd99e4b0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xd99e4b0-0xd9a0b38 (9864 bytes).
  It occupies 9864 bytes.
  The `lw` at 0xd99e4cc loads 4 bytes from abs 0x1010.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x2fc, including `lw` at 0xd99e4d4, `lw` at 0xd99e784, `lw` at 0xd99f168.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7bfc, including `lw` at 0xd99e4d8, `lw` at 0xd99ed14.
  The `lwc1` at 0xd99e4dc loads 4 bytes from [[0x1010]+764] +0x3c.
  The `lwc1` at 0xd99e4e0 loads 4 bytes from [[0x1010]+764] +0x38.
  The `lwc1` at 0xd99e4e4 loads 4 bytes from [[0x1010]+764] +0x34.
  The `lwc1` at 0xd99e4e8 loads 4 bytes from [[0x1010]+764] +0x30.
  The `lw` at 0xd99e4f8 loads 4 bytes from a1 (arg1 at entry) +0x10.
  2 such `lw` accesses load 4 bytes from [[0x1010]+764] +0x44, including `lw` at 0xd99e504, `lw` at 0xd99f180.
  2 such `lw` accesses load 4 bytes from [[0x1010]+764] +0x40, including `lw` at 0xd99e50c, `lw` at 0xd99f16c.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7bfc, including `sw` at 0xd99e518, `sw` at 0xd99ed20.
  13 such `lw` accesses load 4 bytes from [0x1010] +0x16960, including `lw` at 0xd99e520, `lw` at 0xd99e618, `lw` at 0xd99e638.
  13 such `sw` accesses store 4 bytes to [0x1010] +0x16960, including `sw` at 0xd99e534, `sw` at 0xd99e624, `sw` at 0xd99e64c.
  13 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xd99e540, `sw` at 0xd99e630, `sw` at 0xd99e668.
  63 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x14, including `lw` at 0xd99e54c, `lw` at 0xd99e560, `lw` at 0xd99e56c.
  56 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xd99e55c, `swc1` at 0xd99e568, `swc1` at 0xd99e574.
  4 such `lw` accesses load 4 bytes from [0x1010] +0x7cd4, including `lw` at 0xd99e604, `lw` at 0xd99e9d4, `lw` at 0xd99ee78.
  4 such `sw` accesses store 4 bytes to [0x1010] +0x7cd4, including `sw` at 0xd99e614, `sw` at 0xd99e9e4, `sw` at 0xd99ee88.
  5 such `lw` accesses load 4 bytes from [0x1010] +0x96a4, including `lw` at 0xd99e644, `lw` at 0xd99ea08, `lw` at 0xd99ecf0.
  5 such `sw` accesses store 4 bytes to [0x1010] +0x96a4, including `sw` at 0xd99e65c, `sw` at 0xd99ea24, `sw` at 0xd99ed08.
  28 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lw` at 0xd99e670, `lw` at 0xd99e7cc, `lw` at 0xd99e864.
  28 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0xd99e678, `lw` at 0xd99e7d4, `lw` at 0xd99e86c.
  28 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lw` at 0xd99e680, `lw` at 0xd99e7dc, `lw` at 0xd99e874.
  28 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lw` at 0xd99e688, `lw` at 0xd99e7e4, `lw` at 0xd99e87c.
  28 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x10, including `lw` at 0xd99e690, `lw` at 0xd99e7ec, `lw` at 0xd99e884.
  28 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x14, including `lw` at 0xd99e698, `lw` at 0xd99e7f4, `lw` at 0xd99e88c.
  28 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x18, including `lw` at 0xd99e6a0, `lw` at 0xd99e7fc, `lw` at 0xd99e894.
  28 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x1c, including `lw` at 0xd99e6a8, `lw` at 0xd99e804, `lw` at 0xd99e89c.
  28 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x20, including `lw` at 0xd99e6b0, `lw` at 0xd99e80c, `lw` at 0xd99e8a4.
  24 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x44, including `lw` at 0xd99e6fc, `lw` at 0xd99e848, `lw` at 0xd99ea48.
  The `lw` at 0xd99e788 loads 4 bytes from [[0x1010]+764] +0x0.
  The `lw` at 0xd99e7a0 loads 4 bytes from [0x1010] +0x11bd4.
  18 such `lbu` accesses load 1 byte from a2 (arg2 at entry) +0x20, including `lbu` at 0xd99e8cc, `lbu` at 0xd99eb94, `lbu` at 0xd99ef50.
  18 such `lbu` accesses load 1 byte from a2 (arg2 at entry) +0x23, including `lbu` at 0xd99e91c, `lbu` at 0xd99ec30, `lbu` at 0xd99eff4.
  The `lw` at 0xd99ea50 loads 4 bytes from [a1+68] +0xc.
  2 such `lbu` accesses load 1 byte from [0x1010] +0x11bd0, including `lbu` at 0xd99ea88, `lbu` at 0xd99ee00.
  12 such `lbu` accesses load 1 byte from a2 (arg2 at entry) +0x21, including `lbu` at 0xd99ebec, `lbu` at 0xd99efb0, `lbu` at 0xd99f614.
  11 such `lbu` accesses load 1 byte from a2 (arg2 at entry) +0x22, including `lbu` at 0xd99ec7c, `lbu` at 0xd99f044, `lbu` at 0xd99f500.
  The `lw` at 0xd99ed38 loads 4 bytes from [0x1010] +0x7c34.
  The `sw` at 0xd99ed48 stores 4 bytes to [0x1010] +0x7c34.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7c40, including `sw` at 0xd99ed60, `sw` at 0xd99f0a8.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x9830, including `lw` at 0xd99ed64, `lw` at 0xd99f0ac.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x9830, including `sw` at 0xd99ed74, `sw` at 0xd99f0cc.
  12 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xd99ed7c, `sw` at 0xd99ed84, `sw` at 0xd99ed8c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7c40, including `lw` at 0xd99eda0, `lw` at 0xd99f0f0.
  The `lw` at 0xd99eda8 loads 4 bytes from [0x1010] +0x7c3c.
  The `lw` at 0xd99edb0 loads 4 bytes from [0x1010] +0x7c38.
  The `sw` at 0xd99eddc stores 4 bytes to [0x1010] +0x7c3c.
  The `sw` at 0xd99ede4 stores 4 bytes to [0x1010] +0x7c38.
  The `sw` at 0xd99f238 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `sw` at 0xd99f240 stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `sw` at 0xd99f248 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0xd99f250 stores 4 bytes to a0 (arg0 at entry) +0xc.
  The `sw` at 0xd99f258 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0xd99f260 stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `sw` at 0xd99f268 stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `sw` at 0xd99f270 stores 4 bytes to a0 (arg0 at entry) +0x1c.
  The `sw` at 0xd99f278 stores 4 bytes to a0 (arg0 at entry) +0x20.
  The `sb` at 0xd99f400 stores 1 byte to a2 (arg2 at entry) +0x23.
  The `sb` at 0xd99f408 stores 1 byte to a2 (arg2 at entry) +0x22.
  The `jalr` at 0xd99e5fc calls __glOdysseyProgramTexFilter [0xd9b6820] with a0=?, a1=a1 at entry (arg1), a2=?, a3=[[[0x1010]+764]+64], a4=[[[0x1010]+764]+68].
  The `bgezall` at 0xd99e664 calls LoadTextureFilter [0xd99cb60] with a0=a1 at entry (arg1), a1=[a1+16]-1, a2=?, a3=?.
  The `jalr` at 0xd99e6f8 calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0, a5=[a2+24], a6=[a2+20], a7=[a2+16].
  The `jalr` at 0xd99e76c calls __glOdysseyProgramTexFilter [0xd9b6820] with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0xd99e77c calls LoadTextureFilter [0xd99cb60] with a0=a1 at entry (arg1), a1=[a1+16]-1, a2=?, a3=?.
  The `jalr` at 0xd99e844 calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0, a5=[a2+4], a7=[a2].
  The `jalr` at 0xd99e8f0 calls floorf with a0=[a2+32]:1, a1=?, a2=?, a3=?, a4=sp-432.
  The `jalr` at 0xd99e908 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99e938 calls floorf with a0=?, a1=[a2+35]:1, a2=?, a3=?.
  The `jalr` at 0xd99e950 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99e9cc calls __glOdysseyProgramTexFilter [0xd9b6820] with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0xd99ea2c calls LoadTextureFilter [0xd99cb60] with a0=a1 at entry (arg1), a1=[a1+16]-1, a2=?, a3=?.
  The `jalr` at 0xd99ea44 calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0.
  The `jalr` at 0xd99eb00 calls __glOdysseyProgramTexFilter [0xd9b6820] with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0xd99eb10 calls LoadTextureFilter [0xd99cb60] with a0=a1 at entry (arg1), a1=[a1+16]-1, a2=?, a3=?.
  The `jalr` at 0xd99ebc0 calls floorf with a0=[a2], a1=[a2+32]:1, a2=?, a3=?.
  The `jalr` at 0xd99ebd8 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99ec08 calls floorf with a0=?, a1=?, a2=[a2+33]:1, a3=?.
  The `jalr` at 0xd99ec1c calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99ec4c calls floorf with a0=?, a1=?, a2=?, a3=[a2+35]:1.
  The `jalr` at 0xd99ec68 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99ec98 calls floorf with a0=a3 at entry (arg3), a1=?, a2=?, a3=?, a4=[a2+34]:1.
  The `jalr` at 0xd99ecb0 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99ece0 calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a3 at entry (arg3), a1=a4 at entry (arg4), a2=sp-432, a3=0x0.
  The `jalr` at 0xd99ee70 calls __glOdysseyProgramTexFilter [0xd9b6820] with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0xd99eed0 calls LoadTextureFilter [0xd99cb60] with a0=a1 at entry (arg1), a1=[a1+16]-1, a2=[[0x1010]+38564], a3=((0x40000 | [[0x1010]+31956]) | 0x4000), a4=[[0x1010]+31956].
  The `jalr` at 0xd99ef84 calls floorf with a0=?, a1=sp-432, a2=?, a3=?, a4=sp-432, a6=[a2+32], a7=[a2+28].
  The `jalr` at 0xd99ef9c calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99efd0 calls ceilf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99efe4 calls ceilf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f014 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f030 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f064 calls ceilf with a0=[a2+34]:1, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f07c calls ceilf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f09c calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a3 at entry (arg3), a1=a4 at entry (arg4), a2=sp-432, a3=0x0.
  The `jalr` at 0xd99f160 calls __glOdysseyProgramTexFilter [0xd9b6820] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f198 calls ceilf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f1c4 calls ceilf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f1e8 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f200 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f32c calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a3 at entry (arg3), a1=a4 at entry (arg4), a2=sp-432, a3=0x0, a4=sp-432.
  The `jalr` at 0xd99f484 calls floorf with a0=?, a1=[[0x1010]+72660], a2=[a2+32]:1, a3=[a2+32]:1, a4=sp-432, a5=[a2+32].
  The `jalr` at 0xd99f4a4 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f4b8 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f4cc calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f4e8 calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0.
  The `jalr` at 0xd99f58c calls floorf with a0=[a2+32], a1=[a2+28], a2=[a2+24], a3=[a2+20], a4=sp-432, a5=[a2+16].
  The `jalr` at 0xd99f5b0 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f5cc calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f5e4 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f604 calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0.
  The `jalr` at 0xd99f6ac calls floorf with a0=[a2+16], a1=[a2+12], a2=[a2+8], a3=[a2+4], a4=sp-432, a5=[a2].
  The `jalr` at 0xd99f6d4 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f6ec calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f708 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f724 calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0.
  The `jalr` at 0xd99f7d0 calls floorf with a0=?, a1=?, a2=[a2+33]:1, a3=?, a4=sp-432, a7=[a2+34]:1.
  The `jalr` at 0xd99f7fc calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f81c calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f83c calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f85c calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0.
  The `jalr` at 0xd99f8ec calls floorf with a0=[a2+32], a1=[a2+28], a2=[a2+24], a3=[a2+20], a4=sp-432, a5=[a2+16].
  The `jalr` at 0xd99f904 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f928 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f938 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99f958 calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0.
  The `jalr` at 0xd99f9ec calls floorf with a0=[a2+16], a1=[a2+12], a2=[a2+8], a3=[a2+4], a4=sp-432, a5=[a2].
  The `jalr` at 0xd99fa08 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99fa3c calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99fa4c calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99fa6c calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0.
  The `jalr` at 0xd99fb04 calls floorf with a0=?, a1=?, a2=?, a3=?, a4=sp-432, a7=[a2+35]:1.
  The `jalr` at 0xd99fb28 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99fb38 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99fb54 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99fb70 calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0.
  The `jalr` at 0xd99fc0c calls floorf with a0=[a2+34]:1, a1=[a2+32], a2=[a2+28], a3=[a2+24], a4=sp-432, a5=[a2+20].
  The `jalr` at 0xd99fc28 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99fc40 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99fc58 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99fc80 calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0.
  The `jalr` at 0xd99fd1c calls floorf with a0=[a2+28], a1=[a2+24], a2=[a2+20], a3=[a2+16], a4=sp-432, a5=[a2+12]; fp f13=0x3f800000.
  The `jalr` at 0xd99fd38 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99fd54 calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0.
  The `jalr` at 0xd99fe00 calls floorf with a0=[a2+8], a1=[a2+4], a2=[a2+32]:1, a3=[a2], a4=sp-432; fp f14=0xffffffffbf800000, f15=[a2+4].
  The `jalr` at 0xd99fe24 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99fe44 calls floorf with a0=?, a1=?, a2=?, a3=?, a4=[a2+35]:1.
  The `jalr` at 0xd99fe5c calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99fe7c calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0.
  The `jalr` at 0xd99ff28 calls floorf with a0=?, a1=?, a2=[a2+33]:1, a3=?, a4=sp-432, a5=[a2+35]:1.
  The `jalr` at 0xd99ff4c calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99ff68 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99ff7c calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd99ffa0 calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0.
  The `jalr` at 0xd9a004c calls floorf with a0=[a2+34]:1, a1=[a2+32], a2=[a2+33]:1, a3=[a2+28], a4=sp-432, a5=[a2+24], a7=[a2+20].
  The `jalr` at 0xd9a007c calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a009c calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a00b4 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a00d8 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a00f0 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a0110 calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0.
  The `jalr` at 0xd9a01a4 calls floorf with a0=[a2+24], a1=[a2+20], a2=[a2+16], a3=[a2+12], a4=sp-432, a5=[a2+8]; fp f13=[a2+4], f14=[a2+8], f15=0x3f800000.
  The `jalr` at 0xd9a01cc calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a01dc calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a01fc calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0.
  The `jalr` at 0xd9a0298 calls floorf with a0=[a2+8], a1=[a2+4], a2=[a2], a3=?, a4=sp-432; fp f15=0xffffffffbf800000, f16=[a2+4].
  The `jalr` at 0xd9a02bc calls floorf with a0=?, a1=?, a2=?, a3=[a2+32]:1.
  The `jalr` at 0xd9a02d4 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a0304 calls floorf with a0=?, a1=?, a2=?, a3=?, a4=[a2+35]:1.
  The `jalr` at 0xd9a0314 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a0334 calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0.
  The `jalr` at 0xd9a03cc calls floorf with a0=?, a1=?, a2=?, a3=?, a4=sp-432, a5=[a2+35]:1; fp f13=[a2], f14=[a2+8], f15=[a2+12], f16=0x3f800000.
  The `jalr` at 0xd9a03f4 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a0404 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a0428 calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0.
  The `jalr` at 0xd9a04cc calls floorf with a0=[a2+34]:1, a1=[a2+32], a2=[a2+28], a3=[a2+24], a4=sp-432, a5=[a2+20].
  The `jalr` at 0xd9a0500 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a0510 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a0538 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a0550 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a0570 calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0.
  The `jalr` at 0xd9a0614 calls __glOdysseyProgramTexFilter [0xd9b6820] with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0xd9a0674 calls LoadTextureFilter [0xd99cb60] with a0=a1 at entry (arg1), a1=[a1+16]-1, a2=?, a3=?.
  The `jalr` at 0xd9a06ec calls floorf with a0=[a2+28], a1=[a2+24], a2=[a2+20], a3=[a2+16], a4=sp-432, a5=[a2+12].
  The `jalr` at 0xd9a0718 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a0738 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a0758 calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0.
  The `jalr` at 0xd9a07c4 calls floorf with a0=[a2+16], a1=[a2+12], a2=[a2+8], a3=[a2+4], a4=sp-432, a5=[a2].
  The `jalr` at 0xd9a07f8 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a081c calls floorf with a0=?, a1=?, a2=?, a3=?, a6=[a2+32]:1.
  The `jalr` at 0xd9a0834 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a0860 calls floorf with a0=?, a1=?, a2=?, a3=?, a7=[a2+35]:1.
  The `jalr` at 0xd9a0888 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a08a8 calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0.
  The `jalr` at 0xd9a0918 calls floorf with a0=[a2], a1=?, a2=?, a3=?, a4=sp-432.
  The `jalr` at 0xd9a0950 calls floorf with a0=?, a1=[a2+32]:1, a2=?, a3=?.
  The `jalr` at 0xd9a0980 calls floorf with a0=?, a1=?, a2=[a2+33]:1, a3=?.
  The `jalr` at 0xd9a09a4 calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0.
  The `jalr` at 0xd9a0a14 calls floorf with a0=?, a1=?, a2=?, a3=[a2+34]:1, a4=sp-432, a5=[a2+32].
  The `jalr` at 0xd9a0a44 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a0a60 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a0a74 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a0a9c calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a0acc calls floorf with a0=[a2+33]:1, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9a0af0 calls __glOdysseyImageMovePixelsTexture [0xd9bbff0] with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0.
  The `beq` branch at 0xd99e798 targets 0xd99f400, is taken when t1(=[[[0x1010]+764]]) == t2(=0x8010), and falls through when t1(=[[[0x1010]+764]]) != t2(=0x8010).
  The `beq` branch at 0xd99e7a8 targets 0xd99e858, is taken when a1(=[[0x1010]+72660]) == t2(=0x8150), and falls through when a1(=[[0x1010]+72660]) != t2(=0x8150).
  The `beq` branch at 0xd99e7b4 targets 0xd99f40c, is taken when a1(=[[0x1010]+72660]) == t3(=0x8152), and falls through when a1(=[[0x1010]+72660]) != t3(=0x8152).
  The `beq` branch at 0xd99e7bc targets 0xd9a059c, is taken when a1(=[[0x1010]+72660]) == t8(=0x8151), and falls through when a1(=[[0x1010]+72660]) != t8(=0x8151).
  The `beq` branch at 0xd99e7c4 targets 0xd99fc94, is taken when a1(=[[0x1010]+72660]) == t9(=0x8153), and falls through when a1(=[[0x1010]+72660]) != t9(=0x8153).
  The `beq` branch at 0xd99e850 targets 0xd99ea4c and is always taken.
  The `beq` branch at 0xd99e8d8 targets 0xd99e91c, is taken when a0(=[a2+32]:1) == 0, and falls through when a0(=[a2+32]:1) != 0.
  The `beq` branch at 0xd99e920 targets 0xd99e960, is taken when a1(=[a2+35]:1) == 0, and falls through when a1(=[a2+35]:1) != 0.
  The `beq` branch at 0xd99ea58 targets 0xd99ea98, is taken when a1(=[[a1+68]+12]) == v0(=0x1403), and falls through when a1(=[[a1+68]+12]) != v0(=0x1403).
  The `beq` branch at 0xd99ea64 targets 0xd99ea98, is taken when a1(=[[a1+68]+12]) == a2(=0x1402), and falls through when a1(=[[a1+68]+12]) != a2(=0x1402).
  The `beq` branch at 0xd99ea70 targets 0xd99ea98, is taken when a1(=[[a1+68]+12]) == a3(=0x1405), and falls through when a1(=[[a1+68]+12]) != a3(=0x1405).
  The `beq` branch at 0xd99ea7c targets 0xd99ea94, is taken when a1(=[[a1+68]+12]) == a4(=0x1404), and falls through when a1(=[[a1+68]+12]) != a4(=0x1404).
  The `beq` branch at 0xd99ea8c targets 0xd99ea98 and is always taken.
  The `beq` branch at 0xd99eb1c targets 0xd99f388, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0xd99eba8 targets 0xd99ebec, is taken when a1(=[a2+32]:1) == 0, and falls through when a1(=[a2+32]:1) != 0.
  The `beq` branch at 0xd99ebf0 targets 0xd99ec30, is taken when a2(=[a2+33]:1) == 0, and falls through when a2(=[a2+33]:1) != 0.
  The `beq` branch at 0xd99ec34 targets 0xd99ec7c, is taken when a3(=[a2+35]:1) == 0, and falls through when a3(=[a2+35]:1) != 0.
  The `beq` branch at 0xd99ec80 targets 0xd99ecc4, is taken when a4(=[a2+34]:1) == 0, and falls through when a4(=[a2+34]:1) != 0.
  The `beq` branch at 0xd99ed68 targets 0xd99ed98, is taken when a5(=[[0x1010]+38960]) == 0, and falls through when a5(=[[0x1010]+38960]) != 0.
  The `beq` branch at 0xd99eedc targets 0xd99f2b4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xd99ef64 targets 0xd99efb0, is taken when at(=[a2+32]:1) == 0, and falls through when at(=[a2+32]:1) != 0.
  The `beq` branch at 0xd99efb4 targets 0xd99eff4, is taken when v0(=[a2+33]:1) == 0, and falls through when v0(=[a2+33]:1) != 0.
  The `beq` branch at 0xd99eff8 targets 0xd99f044, is taken when v1(=[a2+35]:1) == 0, and falls through when v1(=[a2+35]:1) != 0.
  The `beq` branch at 0xd99f048 targets 0xd99f090, is taken when a0(=[a2+34]:1) == 0, and falls through when a0(=[a2+34]:1) != 0.
  The `beq` branch at 0xd99f0c0 targets 0xd99f0ec, is taken when a2(=[[0x1010]+38960]) == 0, and falls through when a2(=[[0x1010]+38960]) != 0.
  The `beq` branch at 0xd99f380 targets 0xd99f0a4 and is always taken.
  The `beq` branch at 0xd99f3f8 targets 0xd99ecc0 and is always taken.
  The `beq` branch at 0xd99f404 targets 0xd99e7a0 and is always taken.
  The `beq` branch at 0xd99f410 targets 0xd9a0584, is taken when a3(=[a2+32]:1) == 0, and falls through when a3(=[a2+32]:1) != 0.
  The `beq` branch at 0xd99f41c targets 0xd9a0b20, is taken when a4(=[a2+35]:1) == 0, and falls through when a4(=[a2+35]:1) != 0.
  The `beq` branch at 0xd99f4f8 targets 0xd9a0594, is taken when a2(=[a2+32]:1) == 0, and falls through when a2(=[a2+32]:1) != 0.
  The `beq` branch at 0xd99f504 targets 0xd9a0b28, is taken when v1(=[a2+34]:1) == 0, and falls through when v1(=[a2+34]:1) != 0.
  The `beq` branch at 0xd99f618 targets 0xd9a0b04, is taken when a2(=[a2+33]:1) == 0, and falls through when a2(=[a2+33]:1) != 0.
  The `beq` branch at 0xd99f624 targets 0xd9a0b30, is taken when t9(=[a2+35]:1) == 0, and falls through when t9(=[a2+35]:1) != 0.
  The `beq` branch at 0xd99f738 targets 0xd99f864, is taken when a2(=[a2+33]:1) == 0, and falls through when a2(=[a2+33]:1) != 0.
  The `beq` branch at 0xd99f744 targets 0xd99f864, is taken when a7(=[a2+34]:1) == 0, and falls through when a7(=[a2+34]:1) != 0.
  The `beq` branch at 0xd99f868 targets 0xd99f960, is taken when v1(=[a2+32]:1) == 0, and falls through when v1(=[a2+32]:1) != 0.
  The `beq` branch at 0xd99f910 targets 0xd99f948, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0xd99f964 targets 0xd99fa74, is taken when t9(=[a2+33]:1) == 0, and falls through when t9(=[a2+33]:1) != 0.
  The `beq` branch at 0xd99fa24 targets 0xd99fa5c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xd99fa78 targets 0xd99fb78, is taken when a7(=[a2+35]:1) == 0, and falls through when a7(=[a2+35]:1) != 0.
  The `beq` branch at 0xd99fb10 targets 0xd99fb4c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xd99fb7c targets 0xd99fc8c, is taken when a0(=[a2+34]:1) == 0, and falls through when a0(=[a2+34]:1) != 0.
  The `beq` branch at 0xd99fc1c targets 0xd99fc54, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0xd99fc8c targets 0xd99e860 and is always taken.
  The `beq` branch at 0xd99fc98 targets 0xd9a0b0c, is taken when at(=[a2+32]:1) == 0, and falls through when at(=[a2+32]:1) != 0.
  The `beq` branch at 0xd99fca4 targets 0xd9a0b10, is taken when v0(=[a2+35]:1) == 0, and falls through when v0(=[a2+35]:1) != 0.
  The `beq` branch at 0xd99fd60 targets 0xd9a0b18, is taken when a2(=[a2+32]:1) == 0, and falls through when a2(=[a2+32]:1) != 0.
  The `beq` branch at 0xd99fd6c targets 0xd99fe84, is taken when t3(=[a2+34]:1) == 0, and falls through when t3(=[a2+34]:1) != 0.
  The `beq` branch at 0xd99fe3c targets 0xd99fe6c, is taken when a4(=[a2+35]:1) == 0, and falls through when a4(=[a2+35]:1) != 0.
  The `beq` branch at 0xd99fe88 targets 0xd9a0118, is taken when a2(=[a2+33]:1) == 0, and falls through when a2(=[a2+33]:1) != 0.
  The `beq` branch at 0xd99fe94 targets 0xd99ffac, is taken when a5(=[a2+35]:1) == 0, and falls through when a5(=[a2+35]:1) != 0.
  The `beq` branch at 0xd99ff5c targets 0xd99ff94, is taken when v1(=[a2+32]:1) == 0, and falls through when v1(=[a2+32]:1) != 0.
  The `beq` branch at 0xd99ffac targets 0xd9a0118, is taken when a2(=[a2+33]:1) == 0, and falls through when a2(=[a2+33]:1) != 0.
  The `beq` branch at 0xd99ffb8 targets 0xd9a0118, is taken when a0(=[a2+34]:1) == 0, and falls through when a0(=[a2+34]:1) != 0.
  The `beq` branch at 0xd9a0094 targets 0xd9a00c8, is taken when t9(=[a2+32]:1) == 0, and falls through when t9(=[a2+32]:1) != 0.
  The `beq` branch at 0xd9a00cc targets 0xd9a0104, is taken when ra(=[a2+35]:1) == 0, and falls through when ra(=[a2+35]:1) != 0.
  The `beq` branch at 0xd9a011c targets 0xd9a0204, is taken when at(=[a2+32]:1) == 0, and falls through when at(=[a2+32]:1) != 0.
  The `beq` branch at 0xd9a01b4 targets 0xd9a01f0, is taken when t2(=[a2+35]:1) == 0, and falls through when t2(=[a2+35]:1) != 0.
  The `beq` branch at 0xd9a0208 targets 0xd9a033c, is taken when t3(=[a2+33]:1) == 0, and falls through when t3(=[a2+33]:1) != 0.
  The `beq` branch at 0xd9a02b0 targets 0xd9a02e8, is taken when a3(=[a2+32]:1) == 0, and falls through when a3(=[a2+32]:1) != 0.
  The `beq` branch at 0xd9a02ec targets 0xd9a0328, is taken when a4(=[a2+35]:1) == 0, and falls through when a4(=[a2+35]:1) != 0.
  The `beq` branch at 0xd9a0340 targets 0xd9a0430, is taken when a5(=[a2+35]:1) == 0, and falls through when a5(=[a2+35]:1) != 0.
  The `beq` branch at 0xd9a03dc targets 0xd9a041c, is taken when v1(=[a2+32]:1) == 0, and falls through when v1(=[a2+32]:1) != 0.
  The `beq` branch at 0xd9a0434 targets 0xd9a057c, is taken when a0(=[a2+34]:1) == 0, and falls through when a0(=[a2+34]:1) != 0.
  The `beq` branch at 0xd9a04e4 targets 0xd9a0528, is taken when t9(=[a2+32]:1) == 0, and falls through when t9(=[a2+32]:1) != 0.
  The `beq` branch at 0xd9a052c targets 0xd9a0564, is taken when ra(=[a2+35]:1) == 0, and falls through when ra(=[a2+35]:1) != 0.
  The `beq` branch at 0xd9a057c targets 0xd99e860 and is always taken.
  The `bne` branch at 0xd9a058c targets 0xd99f500, is taken when a2(=[a2+32]:1) != 0, and falls through when a2(=[a2+32]:1) == 0.
  The `beq` branch at 0xd9a0594 targets 0xd99f614 and is always taken.
  The `beq` branch at 0xd9a0680 targets 0xd9a0760, is taken when v0(=[a2+32]:1) == 0, and falls through when v0(=[a2+32]:1) != 0.
  The `beq` branch at 0xd9a0710 targets 0xd9a0728, is taken when t3(=[a2+35]:1) == 0, and falls through when t3(=[a2+35]:1) != 0.
  The `beq` branch at 0xd9a072c targets 0xd9a074c, is taken when t8(=[a2+34]:1) == 0, and falls through when t8(=[a2+34]:1) != 0.
  The `beq` branch at 0xd9a0764 targets 0xd9a08b0, is taken when t9(=[a2+33]:1) == 0, and falls through when t9(=[a2+33]:1) != 0.
  The `beq` branch at 0xd9a0810 targets 0xd9a0848, is taken when a6(=[a2+32]:1) == 0, and falls through when a6(=[a2+32]:1) != 0.
  The `beq` branch at 0xd9a084c targets 0xd9a0870, is taken when a7(=[a2+35]:1) == 0, and falls through when a7(=[a2+35]:1) != 0.
  The `beq` branch at 0xd9a0874 targets 0xd9a089c, is taken when t0(=[a2+34]:1) == 0, and falls through when t0(=[a2+34]:1) != 0.
  The `beq` branch at 0xd9a08b4 targets 0xd9a09ac, is taken when t1(=[a2+35]:1) == 0, and falls through when t1(=[a2+35]:1) != 0.
  The `beq` branch at 0xd9a093c targets 0xd9a0968, is taken when a1(=[a2+32]:1) == 0, and falls through when a1(=[a2+32]:1) != 0.
  The `beq` branch at 0xd9a096c targets 0xd9a0998, is taken when a2(=[a2+33]:1) == 0, and falls through when a2(=[a2+33]:1) != 0.
  The `beq` branch at 0xd9a09b0 targets 0xd9a0af8, is taken when a3(=[a2+34]:1) == 0, and falls through when a3(=[a2+34]:1) != 0.
  The `beq` branch at 0xd9a0a58 targets 0xd9a0a84, is taken when v0(=[a2+35]:1) == 0, and falls through when v0(=[a2+35]:1) != 0.
  The `beq` branch at 0xd9a0a88 targets 0xd9a0ab4, is taken when v1(=[a2+32]:1) == 0, and falls through when v1(=[a2+32]:1) != 0.
  The `beq` branch at 0xd9a0ab8 targets 0xd9a0ae4, is taken when a0(=[a2+33]:1) == 0, and falls through when a0(=[a2+33]:1) != 0.
  The `beq` branch at 0xd9a0afc targets 0xd99e860 and is always taken.
  The `beq` branch at 0xd9a0b04 targets 0xd99f738 and is always taken.
  The `bne` branch at 0xd9a0b10 targets 0xd99fd68, is taken when a2(=[a2+32]:1) != 0, and falls through when a2(=[a2+32]:1) == 0.
  The `beq` branch at 0xd9a0b18 targets 0xd99fe88 and is always taken.
  The `beq` branch at 0xd9a0b20 targets 0xd9a058c and is always taken.
  The `beq` branch at 0xd9a0b28 targets 0xd99f614 and is always taken.
  The `beq` branch at 0xd9a0b30 targets 0xd99f738 and is always taken.
  The return at 0xd99f2ac has v0 = ?.
- `__glOdylc_TexCoord2i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9cd110 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xd9cd110-0xd9cd234 (292 bytes).
  It occupies 292 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xd9cd110, `lw` at 0xd9cd218.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xd9cd11c, `lw` at 0xd9cd1c0.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xd9cd12c, `lw` at 0xd9cd180.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd9cd1ac, `sw` at 0xd9cd1b0, `sw` at 0xd9cd1b4.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xd9cd1bc, `sw` at 0xd9cd210.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xd9cd1c8, `sw` at 0xd9cd224.
  The `sw` at 0xd9cd1d8 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xd9cd160 calls __glSPDlistSpace [0xd9fb4b0] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[0x1028].
  The `beq` branch at 0xd9cd138 targets 0xd9cd1e4, is taken when at(=[0x1034]) == 0, and falls through when at(=[0x1034]) != 0.
  The `beq` branch at 0xd9cd144 targets 0xd9cd1dc, is taken when a4(=[0x1028]) >= 0x3 (signed), and falls through when a4(=[0x1028]) < 0x3 (signed).
  The `beq` branch at 0xd9cd178 targets 0xd9cd20c, is taken when v0(=ret(__glSPDlistSpace)) == 0, and falls through when v0(=ret(__glSPDlistSpace)) != 0.
  The `beq` branch at 0xd9cd1dc targets 0xd9cd190 and is always taken.
  The `beq` branch at 0xd9cd1f4 targets 0xd9cd18c, is taken when a4(=[0x1028]) >= a7(?) (signed), and falls through when a4(=[0x1028]) < a7(?) (signed).
  The `beq` branch at 0xd9cd204 targets 0xd9cd15c and is always taken.
  The return at 0xd9cd1d4 has v0 = one of ?, 0x12b480.
  The return at 0xd9cd22c has v0 = ret(__glSPDlistSpace).
- `__glOdyim_Vertex2d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace5c0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdace5c0-0xdace5e4 (36 bytes).
  It occupies 36 bytes.
  The `sw` at 0xdace5d4 stores 4 bytes to abs 0x10000.
  2 such `swc1` accesses store 4 bytes to abs 0x10000, including `swc1` at 0xdace5d8, `swc1` at 0xdace5e0.
  The return at 0xdace5dc has v0 = 0x10000.
- `__glOdyim_Vertex3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace7c0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdace7c0-0xdace7ec (44 bytes).
  It occupies 44 bytes.
  The `sw` at 0xdace7d8 stores 4 bytes to abs 0x10000.
  3 such `swc1` accesses store 4 bytes to abs 0x10000, including `swc1` at 0xdace7dc, `swc1` at 0xdace7e0, `swc1` at 0xdace7e8.
  The return at 0xdace7e4 has v0 = 0x10000.
- `__glOdyim_ScratchColor3b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4140 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdad4140-0xdad4160 (32 bytes).
  It occupies 32 bytes.
  4 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xdad414c, `sw` at 0xdad4150, `sw` at 0xdad4154.
  The return at 0xdad4158 has v0 = 0x10000.
- `__glOdyim_ScratchColor3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4240 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdad4240-0xdad426c (44 bytes).
  It occupies 44 bytes.
  The `sw` at 0xdad4258 stores 4 bytes to abs 0x10000.
  3 such `swc1` accesses store 4 bytes to abs 0x10000, including `swc1` at 0xdad425c, `swc1` at 0xdad4260, `swc1` at 0xdad4268.
  The return at 0xdad4264 has v0 = 0x10000.
- `__glOdyim_ScratchColor3i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4440 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdad4440-0xdad4460 (32 bytes).
  It occupies 32 bytes.
  4 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xdad444c, `sw` at 0xdad4450, `sw` at 0xdad4454.
  The return at 0xdad4458 has v0 = 0x10000.
- `__glOdyim_ScratchColor3s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4540 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdad4540-0xdad4560 (32 bytes).
  It occupies 32 bytes.
  4 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xdad454c, `sw` at 0xdad4550, `sw` at 0xdad4554.
  The return at 0xdad4558 has v0 = 0x10000.
- `__glOdyim_ScratchColor3ui` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4740 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdad4740-0xdad4760 (32 bytes).
  It occupies 32 bytes.
  4 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xdad474c, `sw` at 0xdad4750, `sw` at 0xdad4754.
  The return at 0xdad4758 has v0 = 0x10000.
- `__glOdyim_ScratchColor3us` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4840 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdad4840-0xdad4860 (32 bytes).
  It occupies 32 bytes.
  4 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xdad484c, `sw` at 0xdad4850, `sw` at 0xdad4854.
  The return at 0xdad4858 has v0 = 0x10000.
- `__glOdyim_ScratchColor4b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4940 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdad4940-0xdad4964 (36 bytes).
  It occupies 36 bytes.
  5 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xdad494c, `sw` at 0xdad4950, `sw` at 0xdad4954.
  The return at 0xdad495c has v0 = 0x10000.
- `__glOdyim_ScratchColor4dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4b00 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdad4b00-0xdad4b44 (68 bytes).
  It occupies 68 bytes.
  The `ldc1` at 0xdad4b00 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ldc1` at 0xdad4b0c loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ldc1` at 0xdad4b14 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ldc1` at 0xdad4b1c loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `sw` at 0xdad4b24 stores 4 bytes to abs 0x10000.
  4 such `swc1` accesses store 4 bytes to abs 0x10000, including `swc1` at 0xdad4b2c, `swc1` at 0xdad4b34, `swc1` at 0xdad4b38.
  The return at 0xdad4b3c has v0 = 0x10000.
- `__glOdyim_ScratchColor4i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4cc0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdad4cc0-0xdad4ce4 (36 bytes).
  It occupies 36 bytes.
  5 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xdad4ccc, `sw` at 0xdad4cd0, `sw` at 0xdad4cd4.
  The return at 0xdad4cdc has v0 = 0x10000.
- `__glOdyim_ScratchColor4s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4dc0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdad4dc0-0xdad4de4 (36 bytes).
  It occupies 36 bytes.
  5 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xdad4dcc, `sw` at 0xdad4dd0, `sw` at 0xdad4dd4.
  The return at 0xdad4ddc has v0 = 0x10000.
- `__glOdyim_ScratchColor4ub` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4ec0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdad4ec0-0xdad4ee4 (36 bytes).
  It occupies 36 bytes.
  5 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xdad4ecc, `sw` at 0xdad4ed0, `sw` at 0xdad4ed4.
  The return at 0xdad4edc has v0 = 0x10000.
- `__glOdyim_ScratchColor4ui` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4fc0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdad4fc0-0xdad4fe4 (36 bytes).
  It occupies 36 bytes.
  5 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xdad4fcc, `sw` at 0xdad4fd0, `sw` at 0xdad4fd4.
  The return at 0xdad4fdc has v0 = 0x10000.
- `__glOdyim_ScratchColor4us` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad50c0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdad50c0-0xdad50e4 (36 bytes).
  It occupies 36 bytes.
  5 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xdad50cc, `sw` at 0xdad50d0, `sw` at 0xdad50d4.
  The return at 0xdad50dc has v0 = 0x10000.
